(set-option :auto_config false)
(set-option :smt.mbqi false)
(set-option :smt.case_split 3)
(set-option :smt.qi.eager_threshold 100.0)
(set-option :smt.delay_units true)
(set-option :smt.arith.solver 2)
(set-option :smt.arith.nl false)
(set-option :pi.enabled false)
(set-option :rewriter.sort_disjunctions false)

;; Prelude

;; AIR prelude
(declare-sort %%Function%% 0)

(declare-sort FuelId 0)
(declare-sort Fuel 0)
(declare-const zero Fuel)
(declare-fun succ (Fuel) Fuel)
(declare-fun fuel_bool (FuelId) Bool)
(declare-fun fuel_bool_default (FuelId) Bool)
(declare-const fuel_defaults Bool)
(assert
 (=>
  fuel_defaults
  (forall ((id FuelId)) (!
    (= (fuel_bool id) (fuel_bool_default id))
    :pattern ((fuel_bool id))
    :qid prelude_fuel_defaults
    :skolemid skolem_prelude_fuel_defaults
))))
(declare-datatypes ((fndef 0)) (((fndef_singleton))))
(declare-sort Poly 0)
(declare-sort Height 0)
(declare-fun I (Int) Poly)
(declare-fun B (Bool) Poly)
(declare-fun F (fndef) Poly)
(declare-fun %I (Poly) Int)
(declare-fun %B (Poly) Bool)
(declare-fun %F (Poly) fndef)
(declare-sort Type 0)
(declare-const BOOL Type)
(declare-const INT Type)
(declare-const NAT Type)
(declare-const CHAR Type)
(declare-fun UINT (Int) Type)
(declare-fun SINT (Int) Type)
(declare-fun CONST_INT (Int) Type)
(declare-sort Dcr 0)
(declare-const $ Dcr)
(declare-fun REF (Dcr) Dcr)
(declare-fun MUT_REF (Dcr) Dcr)
(declare-fun BOX (Dcr Type Dcr) Dcr)
(declare-fun RC (Dcr Type Dcr) Dcr)
(declare-fun ARC (Dcr Type Dcr) Dcr)
(declare-fun GHOST (Dcr) Dcr)
(declare-fun TRACKED (Dcr) Dcr)
(declare-fun NEVER (Dcr) Dcr)
(declare-fun CONST_PTR (Dcr) Dcr)
(declare-fun ARRAY (Dcr Type Dcr Type) Type)
(declare-fun SLICE (Dcr Type) Type)
(declare-const STRSLICE Type)
(declare-const ALLOCATOR_GLOBAL Type)
(declare-fun PTR (Dcr Type) Type)
(declare-fun has_type (Poly Type) Bool)
(declare-fun as_type (Poly Type) Poly)
(declare-fun mk_fun (%%Function%%) %%Function%%)
(declare-fun const_int (Type) Int)
(assert
 (forall ((i Int)) (!
   (= i (const_int (CONST_INT i)))
   :pattern ((CONST_INT i))
   :qid prelude_type_id_const_int
   :skolemid skolem_prelude_type_id_const_int
)))
(assert
 (forall ((b Bool)) (!
   (has_type (B b) BOOL)
   :pattern ((has_type (B b) BOOL))
   :qid prelude_has_type_bool
   :skolemid skolem_prelude_has_type_bool
)))
(assert
 (forall ((x Poly) (t Type)) (!
   (and
    (has_type (as_type x t) t)
    (=>
     (has_type x t)
     (= x (as_type x t))
   ))
   :pattern ((as_type x t))
   :qid prelude_as_type
   :skolemid skolem_prelude_as_type
)))
(assert
 (forall ((x %%Function%%)) (!
   (= (mk_fun x) x)
   :pattern ((mk_fun x))
   :qid prelude_mk_fun
   :skolemid skolem_prelude_mk_fun
)))
(assert
 (forall ((x Bool)) (!
   (= x (%B (B x)))
   :pattern ((B x))
   :qid prelude_unbox_box_bool
   :skolemid skolem_prelude_unbox_box_bool
)))
(assert
 (forall ((x Int)) (!
   (= x (%I (I x)))
   :pattern ((I x))
   :qid prelude_unbox_box_int
   :skolemid skolem_prelude_unbox_box_int
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x BOOL)
    (= x (B (%B x)))
   )
   :pattern ((has_type x BOOL))
   :qid prelude_box_unbox_bool
   :skolemid skolem_prelude_box_unbox_bool
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x INT)
    (= x (I (%I x)))
   )
   :pattern ((has_type x INT))
   :qid prelude_box_unbox_int
   :skolemid skolem_prelude_box_unbox_int
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x NAT)
    (= x (I (%I x)))
   )
   :pattern ((has_type x NAT))
   :qid prelude_box_unbox_nat
   :skolemid skolem_prelude_box_unbox_nat
)))
(assert
 (forall ((bits Int) (x Poly)) (!
   (=>
    (has_type x (UINT bits))
    (= x (I (%I x)))
   )
   :pattern ((has_type x (UINT bits)))
   :qid prelude_box_unbox_uint
   :skolemid skolem_prelude_box_unbox_uint
)))
(assert
 (forall ((bits Int) (x Poly)) (!
   (=>
    (has_type x (SINT bits))
    (= x (I (%I x)))
   )
   :pattern ((has_type x (SINT bits)))
   :qid prelude_box_unbox_sint
   :skolemid skolem_prelude_box_unbox_sint
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x CHAR)
    (= x (I (%I x)))
   )
   :pattern ((has_type x CHAR))
   :qid prelude_box_unbox_char
   :skolemid skolem_prelude_box_unbox_char
)))
(declare-fun ext_eq (Bool Type Poly Poly) Bool)
(assert
 (forall ((deep Bool) (t Type) (x Poly) (y Poly)) (!
   (= (= x y) (ext_eq deep t x y))
   :pattern ((ext_eq deep t x y))
   :qid prelude_ext_eq
   :skolemid skolem_prelude_ext_eq
)))
(declare-const SZ Int)
(assert
 (or
  (= SZ 32)
  (= SZ 64)
))
(declare-fun uHi (Int) Int)
(declare-fun iLo (Int) Int)
(declare-fun iHi (Int) Int)
(assert
 (= (uHi 8) 256)
)
(assert
 (= (uHi 16) 65536)
)
(assert
 (= (uHi 32) 4294967296)
)
(assert
 (= (uHi 64) 18446744073709551616)
)
(assert
 (= (uHi 128) (+ 1 340282366920938463463374607431768211455))
)
(assert
 (= (iLo 8) (- 128))
)
(assert
 (= (iLo 16) (- 32768))
)
(assert
 (= (iLo 32) (- 2147483648))
)
(assert
 (= (iLo 64) (- 9223372036854775808))
)
(assert
 (= (iLo 128) (- 170141183460469231731687303715884105728))
)
(assert
 (= (iHi 8) 128)
)
(assert
 (= (iHi 16) 32768)
)
(assert
 (= (iHi 32) 2147483648)
)
(assert
 (= (iHi 64) 9223372036854775808)
)
(assert
 (= (iHi 128) 170141183460469231731687303715884105728)
)
(declare-fun nClip (Int) Int)
(declare-fun uClip (Int Int) Int)
(declare-fun iClip (Int Int) Int)
(declare-fun charClip (Int) Int)
(assert
 (forall ((i Int)) (!
   (and
    (<= 0 (nClip i))
    (=>
     (<= 0 i)
     (= i (nClip i))
   ))
   :pattern ((nClip i))
   :qid prelude_nat_clip
   :skolemid skolem_prelude_nat_clip
)))
(assert
 (forall ((bits Int) (i Int)) (!
   (and
    (<= 0 (uClip bits i))
    (< (uClip bits i) (uHi bits))
    (=>
     (and
      (<= 0 i)
      (< i (uHi bits))
     )
     (= i (uClip bits i))
   ))
   :pattern ((uClip bits i))
   :qid prelude_u_clip
   :skolemid skolem_prelude_u_clip
)))
(assert
 (forall ((bits Int) (i Int)) (!
   (and
    (<= (iLo bits) (iClip bits i))
    (< (iClip bits i) (iHi bits))
    (=>
     (and
      (<= (iLo bits) i)
      (< i (iHi bits))
     )
     (= i (iClip bits i))
   ))
   :pattern ((iClip bits i))
   :qid prelude_i_clip
   :skolemid skolem_prelude_i_clip
)))
(assert
 (forall ((i Int)) (!
   (and
    (or
     (and
      (<= 0 (charClip i))
      (<= (charClip i) 55295)
     )
     (and
      (<= 57344 (charClip i))
      (<= (charClip i) 1114111)
    ))
    (=>
     (or
      (and
       (<= 0 i)
       (<= i 55295)
      )
      (and
       (<= 57344 i)
       (<= i 1114111)
     ))
     (= i (charClip i))
   ))
   :pattern ((charClip i))
   :qid prelude_char_clip
   :skolemid skolem_prelude_char_clip
)))
(declare-fun uInv (Int Int) Bool)
(declare-fun iInv (Int Int) Bool)
(declare-fun charInv (Int) Bool)
(assert
 (forall ((bits Int) (i Int)) (!
   (= (uInv bits i) (and
     (<= 0 i)
     (< i (uHi bits))
   ))
   :pattern ((uInv bits i))
   :qid prelude_u_inv
   :skolemid skolem_prelude_u_inv
)))
(assert
 (forall ((bits Int) (i Int)) (!
   (= (iInv bits i) (and
     (<= (iLo bits) i)
     (< i (iHi bits))
   ))
   :pattern ((iInv bits i))
   :qid prelude_i_inv
   :skolemid skolem_prelude_i_inv
)))
(assert
 (forall ((i Int)) (!
   (= (charInv i) (or
     (and
      (<= 0 i)
      (<= i 55295)
     )
     (and
      (<= 57344 i)
      (<= i 1114111)
   )))
   :pattern ((charInv i))
   :qid prelude_char_inv
   :skolemid skolem_prelude_char_inv
)))
(assert
 (forall ((x Int)) (!
   (has_type (I x) INT)
   :pattern ((has_type (I x) INT))
   :qid prelude_has_type_int
   :skolemid skolem_prelude_has_type_int
)))
(assert
 (forall ((x Int)) (!
   (=>
    (<= 0 x)
    (has_type (I x) NAT)
   )
   :pattern ((has_type (I x) NAT))
   :qid prelude_has_type_nat
   :skolemid skolem_prelude_has_type_nat
)))
(assert
 (forall ((bits Int) (x Int)) (!
   (=>
    (uInv bits x)
    (has_type (I x) (UINT bits))
   )
   :pattern ((has_type (I x) (UINT bits)))
   :qid prelude_has_type_uint
   :skolemid skolem_prelude_has_type_uint
)))
(assert
 (forall ((bits Int) (x Int)) (!
   (=>
    (iInv bits x)
    (has_type (I x) (SINT bits))
   )
   :pattern ((has_type (I x) (SINT bits)))
   :qid prelude_has_type_sint
   :skolemid skolem_prelude_has_type_sint
)))
(assert
 (forall ((x Int)) (!
   (=>
    (charInv x)
    (has_type (I x) CHAR)
   )
   :pattern ((has_type (I x) CHAR))
   :qid prelude_has_type_char
   :skolemid skolem_prelude_has_type_char
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x NAT)
    (<= 0 (%I x))
   )
   :pattern ((has_type x NAT))
   :qid prelude_unbox_int
   :skolemid skolem_prelude_unbox_int
)))
(assert
 (forall ((bits Int) (x Poly)) (!
   (=>
    (has_type x (UINT bits))
    (uInv bits (%I x))
   )
   :pattern ((has_type x (UINT bits)))
   :qid prelude_unbox_uint
   :skolemid skolem_prelude_unbox_uint
)))
(assert
 (forall ((bits Int) (x Poly)) (!
   (=>
    (has_type x (SINT bits))
    (iInv bits (%I x))
   )
   :pattern ((has_type x (SINT bits)))
   :qid prelude_unbox_sint
   :skolemid skolem_prelude_unbox_sint
)))
(declare-fun Add (Int Int) Int)
(declare-fun Sub (Int Int) Int)
(declare-fun Mul (Int Int) Int)
(declare-fun EucDiv (Int Int) Int)
(declare-fun EucMod (Int Int) Int)
(assert
 (forall ((x Int) (y Int)) (!
   (= (Add x y) (+ x y))
   :pattern ((Add x y))
   :qid prelude_add
   :skolemid skolem_prelude_add
)))
(assert
 (forall ((x Int) (y Int)) (!
   (= (Sub x y) (- x y))
   :pattern ((Sub x y))
   :qid prelude_sub
   :skolemid skolem_prelude_sub
)))
(assert
 (forall ((x Int) (y Int)) (!
   (= (Mul x y) (* x y))
   :pattern ((Mul x y))
   :qid prelude_mul
   :skolemid skolem_prelude_mul
)))
(assert
 (forall ((x Int) (y Int)) (!
   (= (EucDiv x y) (div x y))
   :pattern ((EucDiv x y))
   :qid prelude_eucdiv
   :skolemid skolem_prelude_eucdiv
)))
(assert
 (forall ((x Int) (y Int)) (!
   (= (EucMod x y) (mod x y))
   :pattern ((EucMod x y))
   :qid prelude_eucmod
   :skolemid skolem_prelude_eucmod
)))
(assert
 (forall ((x Int) (y Int)) (!
   (=>
    (and
     (<= 0 x)
     (<= 0 y)
    )
    (<= 0 (Mul x y))
   )
   :pattern ((Mul x y))
   :qid prelude_mul_nats
   :skolemid skolem_prelude_mul_nats
)))
(assert
 (forall ((x Int) (y Int)) (!
   (=>
    (and
     (<= 0 x)
     (< 0 y)
    )
    (and
     (<= 0 (EucDiv x y))
     (<= (EucDiv x y) x)
   ))
   :pattern ((EucDiv x y))
   :qid prelude_div_unsigned_in_bounds
   :skolemid skolem_prelude_div_unsigned_in_bounds
)))
(assert
 (forall ((x Int) (y Int)) (!
   (=>
    (and
     (<= 0 x)
     (< 0 y)
    )
    (and
     (<= 0 (EucMod x y))
     (< (EucMod x y) y)
   ))
   :pattern ((EucMod x y))
   :qid prelude_mod_unsigned_in_bounds
   :skolemid skolem_prelude_mod_unsigned_in_bounds
)))
(declare-fun bitxor (Poly Poly) Int)
(declare-fun bitand (Poly Poly) Int)
(declare-fun bitor (Poly Poly) Int)
(declare-fun bitshr (Poly Poly) Int)
(declare-fun bitshl (Poly Poly) Int)
(declare-fun bitnot (Poly) Int)
(assert
 (forall ((x Poly) (y Poly) (bits Int)) (!
   (=>
    (and
     (uInv bits (%I x))
     (uInv bits (%I y))
    )
    (uInv bits (bitxor x y))
   )
   :pattern ((uClip bits (bitxor x y)))
   :qid prelude_bit_xor_u_inv
   :skolemid skolem_prelude_bit_xor_u_inv
)))
(assert
 (forall ((x Poly) (y Poly) (bits Int)) (!
   (=>
    (and
     (iInv bits (%I x))
     (iInv bits (%I y))
    )
    (iInv bits (bitxor x y))
   )
   :pattern ((iClip bits (bitxor x y)))
   :qid prelude_bit_xor_i_inv
   :skolemid skolem_prelude_bit_xor_i_inv
)))
(assert
 (forall ((x Poly) (y Poly) (bits Int)) (!
   (=>
    (and
     (uInv bits (%I x))
     (uInv bits (%I y))
    )
    (uInv bits (bitor x y))
   )
   :pattern ((uClip bits (bitor x y)))
   :qid prelude_bit_or_u_inv
   :skolemid skolem_prelude_bit_or_u_inv
)))
(assert
 (forall ((x Poly) (y Poly) (bits Int)) (!
   (=>
    (and
     (iInv bits (%I x))
     (iInv bits (%I y))
    )
    (iInv bits (bitor x y))
   )
   :pattern ((iClip bits (bitor x y)))
   :qid prelude_bit_or_i_inv
   :skolemid skolem_prelude_bit_or_i_inv
)))
(assert
 (forall ((x Poly) (y Poly) (bits Int)) (!
   (=>
    (and
     (uInv bits (%I x))
     (uInv bits (%I y))
    )
    (uInv bits (bitand x y))
   )
   :pattern ((uClip bits (bitand x y)))
   :qid prelude_bit_and_u_inv
   :skolemid skolem_prelude_bit_and_u_inv
)))
(assert
 (forall ((x Poly) (y Poly) (bits Int)) (!
   (=>
    (and
     (iInv bits (%I x))
     (iInv bits (%I y))
    )
    (iInv bits (bitand x y))
   )
   :pattern ((iClip bits (bitand x y)))
   :qid prelude_bit_and_i_inv
   :skolemid skolem_prelude_bit_and_i_inv
)))
(assert
 (forall ((x Poly) (y Poly) (bits Int)) (!
   (=>
    (and
     (uInv bits (%I x))
     (<= 0 (%I y))
    )
    (uInv bits (bitshr x y))
   )
   :pattern ((uClip bits (bitshr x y)))
   :qid prelude_bit_shr_u_inv
   :skolemid skolem_prelude_bit_shr_u_inv
)))
(assert
 (forall ((x Poly) (y Poly) (bits Int)) (!
   (=>
    (and
     (iInv bits (%I x))
     (<= 0 (%I y))
    )
    (iInv bits (bitshr x y))
   )
   :pattern ((iClip bits (bitshr x y)))
   :qid prelude_bit_shr_i_inv
   :skolemid skolem_prelude_bit_shr_i_inv
)))
(declare-fun singular_mod (Int Int) Int)
(assert
 (forall ((x Int) (y Int)) (!
   (=>
    (not (= y 0))
    (= (EucMod x y) (singular_mod x y))
   )
   :pattern ((singular_mod x y))
   :qid prelude_singularmod
   :skolemid skolem_prelude_singularmod
)))
(declare-fun closure_req (Type Dcr Type Poly Poly) Bool)
(declare-fun closure_ens (Type Dcr Type Poly Poly Poly) Bool)
(declare-fun height (Poly) Height)
(declare-fun height_lt (Height Height) Bool)
(declare-fun fun_from_recursive_field (Poly) Poly)
(declare-fun check_decrease_int (Int Int Bool) Bool)
(assert
 (forall ((cur Int) (prev Int) (otherwise Bool)) (!
   (= (check_decrease_int cur prev otherwise) (or
     (and
      (<= 0 cur)
      (< cur prev)
     )
     (and
      (= cur prev)
      otherwise
   )))
   :pattern ((check_decrease_int cur prev otherwise))
   :qid prelude_check_decrease_int
   :skolemid skolem_prelude_check_decrease_int
)))
(declare-fun check_decrease_height (Poly Poly Bool) Bool)
(assert
 (forall ((cur Poly) (prev Poly) (otherwise Bool)) (!
   (= (check_decrease_height cur prev otherwise) (or
     (height_lt (height cur) (height prev))
     (and
      (= (height cur) (height prev))
      otherwise
   )))
   :pattern ((check_decrease_height cur prev otherwise))
   :qid prelude_check_decrease_height
   :skolemid skolem_prelude_check_decrease_height
)))
(assert
 (forall ((x Height) (y Height)) (!
   (= (height_lt x y) (and
     ((_ partial-order 0) x y)
     (not (= x y))
   ))
   :pattern ((height_lt x y))
   :qid prelude_height_lt
   :skolemid skolem_prelude_height_lt
)))

;; MODULE 'module m4'

;; Fuel
(declare-const fuel%m4.impl&%0.arrow_0. FuelId)
(declare-const fuel%m4.impl&%0.arrow_Cons_0. FuelId)
(assert
 (distinct fuel%m4.impl&%0.arrow_0. fuel%m4.impl&%0.arrow_Cons_0.)
)

;; Datatypes
(declare-sort m1.S<u8./$%2<allocator_global%./m4.Q.>.>. 0)
(declare-sort allocator_global%. 0)
(declare-datatypes ((m4.Q. 0) (tuple%0. 0)) (((m4.Q./Nil) (m4.Q./Cons (m4.Q./Cons/?0 m1.S<u8./$%2<allocator_global%./m4.Q.>.>.)))
  ((tuple%0./tuple%0))
))
(declare-fun m4.Q./Cons/0 (m4.Q.) m1.S<u8./$%2<allocator_global%./m4.Q.>.>.)
(declare-fun TYPE%m1.S. (Dcr Type Dcr Type) Type)
(declare-const TYPE%m4.Q. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%m1.S<u8./$%2<allocator_global%./m4.Q.>.>. (m1.S<u8./$%2<allocator_global%./m4.Q.>.>.)
 Poly
)
(declare-fun %Poly%m1.S<u8./$%2<allocator_global%./m4.Q.>.>. (Poly) m1.S<u8./$%2<allocator_global%./m4.Q.>.>.)
(declare-fun Poly%allocator_global%. (allocator_global%.) Poly)
(declare-fun %Poly%allocator_global%. (Poly) allocator_global%.)
(declare-fun Poly%m4.Q. (m4.Q.) Poly)
(declare-fun %Poly%m4.Q. (Poly) m4.Q.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(assert
 (forall ((x m1.S<u8./$%2<allocator_global%./m4.Q.>.>.)) (!
   (= x (%Poly%m1.S<u8./$%2<allocator_global%./m4.Q.>.>. (Poly%m1.S<u8./$%2<allocator_global%./m4.Q.>.>.
      x
   )))
   :pattern ((Poly%m1.S<u8./$%2<allocator_global%./m4.Q.>.>. x))
   :qid internal_crate__m1__S<u8./$__2<allocator_global__./m4.Q.>.>_box_axiom_definition
   :skolemid skolem_internal_crate__m1__S<u8./$__2<allocator_global__./m4.Q.>.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%m1.S. $ (UINT 8) (BOX $ ALLOCATOR_GLOBAL $) TYPE%m4.Q.))
    (= x (Poly%m1.S<u8./$%2<allocator_global%./m4.Q.>.>. (%Poly%m1.S<u8./$%2<allocator_global%./m4.Q.>.>.
       x
   ))))
   :pattern ((has_type x (TYPE%m1.S. $ (UINT 8) (BOX $ ALLOCATOR_GLOBAL $) TYPE%m4.Q.)))
   :qid internal_crate__m1__S<u8./$__2<allocator_global__./m4.Q.>.>_unbox_axiom_definition
   :skolemid skolem_internal_crate__m1__S<u8./$__2<allocator_global__./m4.Q.>.>_unbox_axiom_definition
)))
(assert
 (forall ((x m1.S<u8./$%2<allocator_global%./m4.Q.>.>.)) (!
   (has_type (Poly%m1.S<u8./$%2<allocator_global%./m4.Q.>.>. x) (TYPE%m1.S. $ (UINT 8)
     (BOX $ ALLOCATOR_GLOBAL $) TYPE%m4.Q.
   ))
   :pattern ((has_type (Poly%m1.S<u8./$%2<allocator_global%./m4.Q.>.>. x) (TYPE%m1.S. $
      (UINT 8) (BOX $ ALLOCATOR_GLOBAL $) TYPE%m4.Q.
   )))
   :qid internal_crate__m1__S<u8./$__2<allocator_global__./m4.Q.>.>_has_type_always_definition
   :skolemid skolem_internal_crate__m1__S<u8./$__2<allocator_global__./m4.Q.>.>_has_type_always_definition
)))
(assert
 (forall ((x allocator_global%.)) (!
   (= x (%Poly%allocator_global%. (Poly%allocator_global%. x)))
   :pattern ((Poly%allocator_global%. x))
   :qid internal_crate__allocator_global___box_axiom_definition
   :skolemid skolem_internal_crate__allocator_global___box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x ALLOCATOR_GLOBAL)
    (= x (Poly%allocator_global%. (%Poly%allocator_global%. x)))
   )
   :pattern ((has_type x ALLOCATOR_GLOBAL))
   :qid internal_crate__allocator_global___unbox_axiom_definition
   :skolemid skolem_internal_crate__allocator_global___unbox_axiom_definition
)))
(assert
 (forall ((x allocator_global%.)) (!
   (has_type (Poly%allocator_global%. x) ALLOCATOR_GLOBAL)
   :pattern ((has_type (Poly%allocator_global%. x) ALLOCATOR_GLOBAL))
   :qid internal_crate__allocator_global___has_type_always_definition
   :skolemid skolem_internal_crate__allocator_global___has_type_always_definition
)))
(assert
 (forall ((x m4.Q.)) (!
   (= x (%Poly%m4.Q. (Poly%m4.Q. x)))
   :pattern ((Poly%m4.Q. x))
   :qid internal_crate__m4__Q_box_axiom_definition
   :skolemid skolem_internal_crate__m4__Q_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%m4.Q.)
    (= x (Poly%m4.Q. (%Poly%m4.Q. x)))
   )
   :pattern ((has_type x TYPE%m4.Q.))
   :qid internal_crate__m4__Q_unbox_axiom_definition
   :skolemid skolem_internal_crate__m4__Q_unbox_axiom_definition
)))
(assert
 (forall ((x m4.Q.)) (!
   (= (m4.Q./Cons/0 x) (m4.Q./Cons/?0 x))
   :pattern ((m4.Q./Cons/0 x))
   :qid internal_m4.Q./Cons/0_accessor_definition
   :skolemid skolem_internal_m4.Q./Cons/0_accessor_definition
)))
(assert
 (forall ((x m4.Q.)) (!
   (has_type (Poly%m4.Q. x) TYPE%m4.Q.)
   :pattern ((has_type (Poly%m4.Q. x) TYPE%m4.Q.))
   :qid internal_crate__m4__Q_has_type_always_definition
   :skolemid skolem_internal_crate__m4__Q_has_type_always_definition
)))
(assert
 (forall ((x m4.Q.)) (!
   (=>
    (is-m4.Q./Cons x)
    (height_lt (height (Poly%m1.S<u8./$%2<allocator_global%./m4.Q.>.>. (m4.Q./Cons/0 x)))
     (height (Poly%m4.Q. x))
   ))
   :pattern ((height (Poly%m1.S<u8./$%2<allocator_global%./m4.Q.>.>. (m4.Q./Cons/0 x))))
   :qid prelude_datatype_height_m4.Q./Cons/0
   :skolemid skolem_prelude_datatype_height_m4.Q./Cons/0
)))
(assert
 (forall ((x tuple%0.)) (!
   (= x (%Poly%tuple%0. (Poly%tuple%0. x)))
   :pattern ((Poly%tuple%0. x))
   :qid internal_crate__tuple__0_box_axiom_definition
   :skolemid skolem_internal_crate__tuple__0_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%tuple%0.)
    (= x (Poly%tuple%0. (%Poly%tuple%0. x)))
   )
   :pattern ((has_type x TYPE%tuple%0.))
   :qid internal_crate__tuple__0_unbox_axiom_definition
   :skolemid skolem_internal_crate__tuple__0_unbox_axiom_definition
)))
(assert
 (forall ((x tuple%0.)) (!
   (has_type (Poly%tuple%0. x) TYPE%tuple%0.)
   :pattern ((has_type (Poly%tuple%0. x) TYPE%tuple%0.))
   :qid internal_crate__tuple__0_has_type_always_definition
   :skolemid skolem_internal_crate__tuple__0_has_type_always_definition
)))

;; Function-Decl crate::m1::S::get0
(declare-fun m1.impl&%0.get0.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::m1::S::get1
(declare-fun m1.impl&%0.get1.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::m4::Q::arrow_0
(declare-fun m4.impl&%0.arrow_0.? (Poly) m1.S<u8./$%2<allocator_global%./m4.Q.>.>.)

;; Function-Decl crate::m4::Q::arrow_Cons_0
(declare-fun m4.impl&%0.arrow_Cons_0.? (Poly) m1.S<u8./$%2<allocator_global%./m4.Q.>.>.)

;; Function-Axioms crate::m1::S::get0
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%m1.S. A&. A& B&. B&))
    (has_type (m1.impl&%0.get0.? A&. A& B&. B& self!) A&)
   )
   :pattern ((m1.impl&%0.get0.? A&. A& B&. B& self!))
   :qid internal_m1.impl&__0.get0.?_pre_post_definition
   :skolemid skolem_internal_m1.impl&__0.get0.?_pre_post_definition
)))

;; Function-Axioms crate::m1::S::get1
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%m1.S. A&. A& B&. B&))
    (has_type (m1.impl&%0.get1.? A&. A& B&. B& self!) B&)
   )
   :pattern ((m1.impl&%0.get1.? A&. A& B&. B& self!))
   :qid internal_m1.impl&__0.get1.?_pre_post_definition
   :skolemid skolem_internal_m1.impl&__0.get1.?_pre_post_definition
)))

;; Function-Axioms crate::m4::Q::arrow_0
(assert
 (fuel_bool_default fuel%m4.impl&%0.arrow_0.)
)
(assert
 (=>
  (fuel_bool fuel%m4.impl&%0.arrow_0.)
  (forall ((self! Poly)) (!
    (= (m4.impl&%0.arrow_0.? self!) (m4.Q./Cons/0 (%Poly%m4.Q. self!)))
    :pattern ((m4.impl&%0.arrow_0.? self!))
    :qid internal_m4.impl&__0.arrow_0.?_definition
    :skolemid skolem_internal_m4.impl&__0.arrow_0.?_definition
))))

;; Function-Axioms crate::m4::Q::arrow_Cons_0
(assert
 (fuel_bool_default fuel%m4.impl&%0.arrow_Cons_0.)
)
(assert
 (=>
  (fuel_bool fuel%m4.impl&%0.arrow_Cons_0.)
  (forall ((self! Poly)) (!
    (= (m4.impl&%0.arrow_Cons_0.? self!) (m4.Q./Cons/0 (%Poly%m4.Q. self!)))
    :pattern ((m4.impl&%0.arrow_Cons_0.? self!))
    :qid internal_m4.impl&__0.arrow_Cons_0.?_definition
    :skolemid skolem_internal_m4.impl&__0.arrow_Cons_0.?_definition
))))

;; Function-Specs crate::m1::lemma_height_s
(declare-fun ens%m1.lemma_height_s. (Dcr Type Dcr Type Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (s! Poly)) (!
   (= (ens%m1.lemma_height_s. A&. A& B&. B& s!) (and
     (height_lt (height (m1.impl&%0.get0.? A&. A& B&. B& s!)) (height s!))
     (height_lt (height (m1.impl&%0.get1.? A&. A& B&. B& s!)) (height s!))
   ))
   :pattern ((ens%m1.lemma_height_s. A&. A& B&. B& s!))
   :qid internal_ens__m1.lemma_height_s._definition
   :skolemid skolem_internal_ens__m1.lemma_height_s._definition
)))

;; Function-Def crate::m4::test
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/recursion-323c2b72cefe3aab-decrease_through_abstract_type/test.rs:71:11: 71:24 (#0)
(get-info :all-statistics)
(push)
 (declare-const q! m4.Q.)
 (declare-const tmp%1 m4.Q.)
 (declare-const s@ m1.S<u8./$%2<allocator_global%./m4.Q.>.>.)
 (declare-const decrease%init0 m4.Q.)
 (assert
  fuel_defaults
 )
 (declare-const %%switch_label%%0 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= decrease%init0 q!)
    (or
     (and
      (=>
       (is-m4.Q./Cons q!)
       (=>
        (= s@ (m4.Q./Cons/0 (%Poly%m4.Q. (Poly%m4.Q. q!))))
        (=>
         (ens%m1.lemma_height_s. $ (UINT 8) (BOX $ ALLOCATOR_GLOBAL $) TYPE%m4.Q. (Poly%m1.S<u8./$%2<allocator_global%./m4.Q.>.>.
           s@
         ))
         (=>
          (= tmp%1 (%Poly%m4.Q. (m1.impl&%0.get1.? $ (UINT 8) (BOX $ ALLOCATOR_GLOBAL $) TYPE%m4.Q.
             (Poly%m1.S<u8./$%2<allocator_global%./m4.Q.>.>. s@)
          )))
          (and
           (=>
            %%location_label%%0
            (check_decrease_height (Poly%m4.Q. (let
               ((q!$0 tmp%1))
               q!$0
              )
             ) (Poly%m4.Q. decrease%init0) false
           ))
           (=>
            %%location_label%%1
            false
      ))))))
      (=>
       (not (is-m4.Q./Cons q!))
       %%switch_label%%0
     ))
     (not %%switch_label%%0)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
 (get-info :reason-unknown)
 (get-model)
 (assert
  (not %%location_label%%1)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Recommends crate::m4::test
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/recursion-323c2b72cefe3aab-decrease_through_abstract_type/test.rs:71:11: 71:24 (#0)
(get-info :all-statistics)
(push)
 (declare-const q! m4.Q.)
 (declare-const tmp%1 m4.Q.)
 (declare-const s@ m1.S<u8./$%2<allocator_global%./m4.Q.>.>.)
 (assert
  fuel_defaults
 )
 (declare-const %%switch_label%%0 Bool)
 (assert
  (not (or
    (=>
     (not (is-m4.Q./Cons q!))
     %%switch_label%%0
    )
    (not %%switch_label%%0)
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
