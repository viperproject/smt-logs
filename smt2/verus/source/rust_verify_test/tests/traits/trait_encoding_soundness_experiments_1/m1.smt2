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

;; MODULE 'module m1'

;; Fuel
(declare-const fuel%m1.impl&%0.k. FuelId)
(declare-const fuel%m1.impl&%1.k. FuelId)
(declare-const fuel%m1.Q.e. FuelId)
(declare-const fuel%m1.p_prop_1. FuelId)
(declare-const fuel%m1.p_prop_2. FuelId)
(assert
 (distinct fuel%m1.impl&%0.k. fuel%m1.impl&%1.k. fuel%m1.Q.e. fuel%m1.p_prop_1. fuel%m1.p_prop_2.)
)

;; Datatypes
(declare-datatypes ((m1.S. 0) (m1.QQ. 0) (tuple%0. 0)) (((m1.S./S (m1.S./S/?v Int)))
  ((m1.QQ./QQ)) ((tuple%0./tuple%0))
))
(declare-fun m1.S./S/v (m1.S.) Int)
(declare-const TYPE%m1.S. Type)
(declare-const TYPE%m1.QQ. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%m1.S. (m1.S.) Poly)
(declare-fun %Poly%m1.S. (Poly) m1.S.)
(declare-fun Poly%m1.QQ. (m1.QQ.) Poly)
(declare-fun %Poly%m1.QQ. (Poly) m1.QQ.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(assert
 (forall ((x m1.S.)) (!
   (= x (%Poly%m1.S. (Poly%m1.S. x)))
   :pattern ((Poly%m1.S. x))
   :qid internal_crate__m1__S_box_axiom_definition
   :skolemid skolem_internal_crate__m1__S_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%m1.S.)
    (= x (Poly%m1.S. (%Poly%m1.S. x)))
   )
   :pattern ((has_type x TYPE%m1.S.))
   :qid internal_crate__m1__S_unbox_axiom_definition
   :skolemid skolem_internal_crate__m1__S_unbox_axiom_definition
)))
(assert
 (forall ((x m1.S.)) (!
   (= (m1.S./S/v x) (m1.S./S/?v x))
   :pattern ((m1.S./S/v x))
   :qid internal_m1.S./S/v_accessor_definition
   :skolemid skolem_internal_m1.S./S/v_accessor_definition
)))
(assert
 (forall ((x m1.S.)) (!
   (has_type (Poly%m1.S. x) TYPE%m1.S.)
   :pattern ((has_type (Poly%m1.S. x) TYPE%m1.S.))
   :qid internal_crate__m1__S_has_type_always_definition
   :skolemid skolem_internal_crate__m1__S_has_type_always_definition
)))
(assert
 (forall ((x m1.QQ.)) (!
   (= x (%Poly%m1.QQ. (Poly%m1.QQ. x)))
   :pattern ((Poly%m1.QQ. x))
   :qid internal_crate__m1__QQ_box_axiom_definition
   :skolemid skolem_internal_crate__m1__QQ_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%m1.QQ.)
    (= x (Poly%m1.QQ. (%Poly%m1.QQ. x)))
   )
   :pattern ((has_type x TYPE%m1.QQ.))
   :qid internal_crate__m1__QQ_unbox_axiom_definition
   :skolemid skolem_internal_crate__m1__QQ_unbox_axiom_definition
)))
(assert
 (forall ((x m1.QQ.)) (!
   (has_type (Poly%m1.QQ. x) TYPE%m1.QQ.)
   :pattern ((has_type (Poly%m1.QQ. x) TYPE%m1.QQ.))
   :qid internal_crate__m1__QQ_has_type_always_definition
   :skolemid skolem_internal_crate__m1__QQ_has_type_always_definition
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

;; Traits
(declare-fun tr_bound%m1.P. (Dcr Type) Bool)
(declare-fun tr_bound%m1.Q. (Dcr Type Dcr Type) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%m1.P. Self%&. Self%&))
   :qid internal_crate__m1__P_trait_type_bounds_definition
   :skolemid skolem_internal_crate__m1__P_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (TP&. Dcr) (TP& Type)) (!
   (=>
    (tr_bound%m1.Q. Self%&. Self%& TP&. TP&)
    (tr_bound%m1.P. TP&. TP&)
   )
   :pattern ((tr_bound%m1.Q. Self%&. Self%& TP&. TP&))
   :qid internal_crate__m1__Q_trait_type_bounds_definition
   :skolemid skolem_internal_crate__m1__Q_trait_type_bounds_definition
)))

;; Function-Decl crate::m1::P::k
(declare-fun m1.P.k.? (Dcr Type Poly) Poly)
(declare-fun m1.P.k%default%.? (Dcr Type Poly) Poly)

;; Function-Decl crate::m1::Q::e
(declare-fun m1.Q.e.? (Dcr Type Dcr Type Poly) Poly)
(declare-fun m1.Q.e%default%.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Axioms crate::m1::P::k
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (m1.P.k.? Self%&. Self%& self!) INT)
   )
   :pattern ((m1.P.k.? Self%&. Self%& self!))
   :qid internal_m1.P.k.?_pre_post_definition
   :skolemid skolem_internal_m1.P.k.?_pre_post_definition
)))

;; Function-Axioms crate::m1::Q::e
(assert
 (fuel_bool_default fuel%m1.Q.e.)
)
(assert
 (=>
  (fuel_bool fuel%m1.Q.e.)
  (forall ((Self%&. Dcr) (Self%& Type) (TP&. Dcr) (TP& Type) (tp! Poly)) (!
    (= (m1.Q.e%default%.? Self%&. Self%& TP&. TP& tp!) (m1.P.k.? TP&. TP& tp!))
    :pattern ((m1.Q.e%default%.? Self%&. Self%& TP&. TP& tp!))
    :qid internal_m1.Q.e__default__.?_definition
    :skolemid skolem_internal_m1.Q.e__default__.?_definition
))))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (TP&. Dcr) (TP& Type) (tp! Poly)) (!
   (=>
    (has_type tp! TP&)
    (has_type (m1.Q.e.? Self%&. Self%& TP&. TP& tp!) INT)
   )
   :pattern ((m1.Q.e.? Self%&. Self%& TP&. TP& tp!))
   :qid internal_m1.Q.e.?_pre_post_definition
   :skolemid skolem_internal_m1.Q.e.?_pre_post_definition
)))

;; Function-Axioms crate::m1::S::k
(assert
 (fuel_bool_default fuel%m1.impl&%0.k.)
)
(assert
 (=>
  (fuel_bool fuel%m1.impl&%0.k.)
  (forall ((self! Poly)) (!
    (= (m1.P.k.? $ TYPE%m1.S. self!) (I 200))
    :pattern ((m1.P.k.? $ TYPE%m1.S. self!))
    :qid internal_m1.P.k.?_definition
    :skolemid skolem_internal_m1.P.k.?_definition
))))

;; Function-Axioms crate::m1::impl&%2%default%e
(assert
 (forall ((tp! Poly)) (!
   (= (m1.Q.e.? $ TYPE%m1.QQ. $ TYPE%m1.S. tp!) (m1.Q.e%default%.? $ TYPE%m1.QQ. $ TYPE%m1.S.
     tp!
   ))
   :pattern ((m1.Q.e.? $ TYPE%m1.QQ. $ TYPE%m1.S. tp!))
   :qid internal_m1.Q.e.?_definition
   :skolemid skolem_internal_m1.Q.e.?_definition
)))

;; Function-Axioms crate::m1::impl&%1::k
(assert
 (fuel_bool_default fuel%m1.impl&%1.k.)
)
(assert
 (=>
  (fuel_bool fuel%m1.impl&%1.k.)
  (forall ((self! Poly)) (!
    (= (m1.P.k.? (REF $) TYPE%m1.S. self!) (I 300))
    :pattern ((m1.P.k.? (REF $) TYPE%m1.S. self!))
    :qid internal_m1.P.k.?_definition
    :skolemid skolem_internal_m1.P.k.?_definition
))))

;; Function-Axioms crate::m1::impl&%3%default%e
(assert
 (forall ((tp! Poly)) (!
   (= (m1.Q.e.? $ TYPE%m1.QQ. (REF $) TYPE%m1.S. tp!) (m1.Q.e%default%.? $ TYPE%m1.QQ.
     (REF $) TYPE%m1.S. tp!
   ))
   :pattern ((m1.Q.e.? $ TYPE%m1.QQ. (REF $) TYPE%m1.S. tp!))
   :qid internal_m1.Q.e.?_definition
   :skolemid skolem_internal_m1.Q.e.?_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%m1.P. $ TYPE%m1.S.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%m1.P. (REF $) TYPE%m1.S.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%m1.Q. $ TYPE%m1.QQ. $ TYPE%m1.S.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%m1.Q. $ TYPE%m1.QQ. (REF $) TYPE%m1.S.)
)

;; Function-Specs crate::m1::p_prop_0
(declare-fun ens%m1.p_prop_0. (Dcr Type m1.S.) Bool)
(assert
 (forall ((TQ&. Dcr) (TQ& Type) (s! m1.S.)) (!
   (= (ens%m1.p_prop_0. TQ&. TQ& s!) (= (%I (m1.Q.e.? TQ&. TQ& $ TYPE%m1.S. (Poly%m1.S. s!)))
     200
   ))
   :pattern ((ens%m1.p_prop_0. TQ&. TQ& s!))
   :qid internal_ens__m1.p_prop_0._definition
   :skolemid skolem_internal_ens__m1.p_prop_0._definition
)))

;; Function-Def crate::m1::p_prop_0
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/traits-e45926d1282e7df0-trait_encoding_soundness_experiments_1/test.rs:48:11: 48:38 (#0)
(get-info :all-statistics)
(push)
 (declare-const TQ&. Dcr)
 (declare-const TQ& Type)
 (declare-const s! m1.S.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (tr_bound%m1.Q. TQ&. TQ& $ TYPE%m1.S.)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (= tmp%1 (= (%I (m1.P.k.? $ TYPE%m1.S. (Poly%m1.S. s!))) 200))
    (and
     (=>
      %%location_label%%0
      tmp%1
     )
     (=>
      tmp%1
      (=>
       (= tmp%2 (= (%I (m1.Q.e.? TQ&. TQ& $ TYPE%m1.S. (Poly%m1.S. s!))) 200))
       (and
        (=>
         %%location_label%%1
         tmp%2
        )
        (=>
         tmp%2
         (=>
          %%location_label%%2
          (= (%I (m1.Q.e.? TQ&. TQ& $ TYPE%m1.S. (Poly%m1.S. s!))) 200)
 )))))))))
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

;; Function-Recommends crate::m1::p_prop_0
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/traits-e45926d1282e7df0-trait_encoding_soundness_experiments_1/test.rs:48:11: 48:38 (#0)
(get-info :all-statistics)
(push)
 (declare-const TQ&. Dcr)
 (declare-const TQ& Type)
 (declare-const s! m1.S.)
 (assert
  fuel_defaults
 )
 (assert
  (tr_bound%m1.Q. TQ&. TQ& $ TYPE%m1.S.)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::m1::p_prop_1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/traits-e45926d1282e7df0-trait_encoding_soundness_experiments_1/test.rs:54:5: 54:42 (#0)
(get-info :all-statistics)
(push)
 (declare-const s! m1.S.)
 (assert
  fuel_defaults
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (= (%I (m1.Q.e.? $ TYPE%m1.QQ. $ TYPE%m1.S. (Poly%m1.S. s!))) 200)
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::m1::p_prop_1
(assert
 (=>
  (fuel_bool fuel%m1.p_prop_1.)
  (forall ((s! Poly)) (!
    (=>
     (has_type s! TYPE%m1.S.)
     (= (%I (m1.Q.e.? $ TYPE%m1.QQ. $ TYPE%m1.S. s!)) 200)
    )
    :pattern ((m1.Q.e.? $ TYPE%m1.QQ. $ TYPE%m1.S. s!))
    :qid user_crate__m1__p_prop_1_0
    :skolemid skolem_user_crate__m1__p_prop_1_0
))))

;; Function-Def crate::m1::p_prop_2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/traits-e45926d1282e7df0-trait_encoding_soundness_experiments_1/test.rs:57:5: 57:42 (#0)
(get-info :all-statistics)
(push)
 (declare-const s! m1.S.)
 (assert
  fuel_defaults
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (= (%I (m1.Q.e.? $ TYPE%m1.QQ. (REF $) TYPE%m1.S. (Poly%m1.S. s!))) 300)
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::m1::p_prop_2
(assert
 (=>
  (fuel_bool fuel%m1.p_prop_2.)
  (forall ((s! Poly)) (!
    (=>
     (has_type s! TYPE%m1.S.)
     (= (%I (m1.Q.e.? $ TYPE%m1.QQ. (REF $) TYPE%m1.S. s!)) 300)
    )
    :pattern ((m1.Q.e.? $ TYPE%m1.QQ. (REF $) TYPE%m1.S. s!))
    :qid user_crate__m1__p_prop_2_1
    :skolemid skolem_user_crate__m1__p_prop_2_1
))))
