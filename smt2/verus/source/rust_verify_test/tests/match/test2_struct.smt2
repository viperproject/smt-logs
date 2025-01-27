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

;; MODULE 'root module'

;; Fuel
(declare-const fuel%impl&%0.arrow_hd. FuelId)
(declare-const fuel%impl&%0.arrow_tl. FuelId)
(declare-const fuel%impl&%0.arrow_Cons_hd. FuelId)
(declare-const fuel%impl&%0.arrow_Cons_tl. FuelId)
(declare-const fuel%len. FuelId)
(assert
 (distinct fuel%impl&%0.arrow_hd. fuel%impl&%0.arrow_tl. fuel%impl&%0.arrow_Cons_hd.
  fuel%impl&%0.arrow_Cons_tl. fuel%len.
))

;; Datatypes
(declare-sort allocator_global%. 0)
(declare-datatypes ((List. 0) (tuple%0. 0)) (((List./Nil) (List./Cons (List./Cons/?hd
     Poly
    ) (List./Cons/?tl List.)
   )
  ) ((tuple%0./tuple%0))
))
(declare-fun List./Cons/hd (List.) Poly)
(declare-fun List./Cons/tl (List.) List.)
(declare-fun TYPE%List. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%allocator_global%. (allocator_global%.) Poly)
(declare-fun %Poly%allocator_global%. (Poly) allocator_global%.)
(declare-fun Poly%List. (List.) Poly)
(declare-fun %Poly%List. (Poly) List.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
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
 (forall ((x List.)) (!
   (= x (%Poly%List. (Poly%List. x)))
   :pattern ((Poly%List. x))
   :qid internal_crate__List_box_axiom_definition
   :skolemid skolem_internal_crate__List_box_axiom_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%List. A&. A&))
    (= x (Poly%List. (%Poly%List. x)))
   )
   :pattern ((has_type x (TYPE%List. A&. A&)))
   :qid internal_crate__List_unbox_axiom_definition
   :skolemid skolem_internal_crate__List_unbox_axiom_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (has_type (Poly%List. List./Nil) (TYPE%List. A&. A&))
   :pattern ((has_type (Poly%List. List./Nil) (TYPE%List. A&. A&)))
   :qid internal_List./Nil_constructor_definition
   :skolemid skolem_internal_List./Nil_constructor_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (_hd! Poly) (_tl! List.)) (!
   (=>
    (and
     (has_type _hd! A&)
     (has_type (Poly%List. _tl!) (TYPE%List. A&. A&))
    )
    (has_type (Poly%List. (List./Cons _hd! _tl!)) (TYPE%List. A&. A&))
   )
   :pattern ((has_type (Poly%List. (List./Cons _hd! _tl!)) (TYPE%List. A&. A&)))
   :qid internal_List./Cons_constructor_definition
   :skolemid skolem_internal_List./Cons_constructor_definition
)))
(assert
 (forall ((x List.)) (!
   (= (List./Cons/hd x) (List./Cons/?hd x))
   :pattern ((List./Cons/hd x))
   :qid internal_List./Cons/hd_accessor_definition
   :skolemid skolem_internal_List./Cons/hd_accessor_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%List. A&. A&))
    (has_type (List./Cons/hd (%Poly%List. x)) A&)
   )
   :pattern ((List./Cons/hd (%Poly%List. x)) (has_type x (TYPE%List. A&. A&)))
   :qid internal_List./Cons/hd_invariant_definition
   :skolemid skolem_internal_List./Cons/hd_invariant_definition
)))
(assert
 (forall ((x List.)) (!
   (= (List./Cons/tl x) (List./Cons/?tl x))
   :pattern ((List./Cons/tl x))
   :qid internal_List./Cons/tl_accessor_definition
   :skolemid skolem_internal_List./Cons/tl_accessor_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%List. A&. A&))
    (has_type (Poly%List. (List./Cons/tl (%Poly%List. x))) (TYPE%List. A&. A&))
   )
   :pattern ((List./Cons/tl (%Poly%List. x)) (has_type x (TYPE%List. A&. A&)))
   :qid internal_List./Cons/tl_invariant_definition
   :skolemid skolem_internal_List./Cons/tl_invariant_definition
)))
(assert
 (forall ((x List.)) (!
   (=>
    (is-List./Cons x)
    (height_lt (height (List./Cons/hd x)) (height (Poly%List. x)))
   )
   :pattern ((height (List./Cons/hd x)))
   :qid prelude_datatype_height_List./Cons/hd
   :skolemid skolem_prelude_datatype_height_List./Cons/hd
)))
(assert
 (forall ((x List.)) (!
   (=>
    (is-List./Cons x)
    (height_lt (height (Poly%List. (List./Cons/tl x))) (height (Poly%List. x)))
   )
   :pattern ((height (Poly%List. (List./Cons/tl x))))
   :qid prelude_datatype_height_List./Cons/tl
   :skolemid skolem_prelude_datatype_height_List./Cons/tl
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

;; Function-Decl crate::List::arrow_hd
(declare-fun impl&%0.arrow_hd.? (Dcr Type Poly) Poly)

;; Function-Decl crate::List::arrow_tl
(declare-fun impl&%0.arrow_tl.? (Dcr Type Poly) List.)

;; Function-Decl crate::List::arrow_Cons_hd
(declare-fun impl&%0.arrow_Cons_hd.? (Dcr Type Poly) Poly)

;; Function-Decl crate::List::arrow_Cons_tl
(declare-fun impl&%0.arrow_Cons_tl.? (Dcr Type Poly) List.)

;; Function-Decl crate::len
(declare-fun len.? (Dcr Type Poly) Int)
(declare-fun rec%len.? (Dcr Type Poly Fuel) Int)

;; Function-Axioms crate::List::arrow_hd
(assert
 (fuel_bool_default fuel%impl&%0.arrow_hd.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%0.arrow_hd.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (= (impl&%0.arrow_hd.? A&. A& self!) (List./Cons/hd (%Poly%List. self!)))
    :pattern ((impl&%0.arrow_hd.? A&. A& self!))
    :qid internal_impl&__0.arrow_hd.?_definition
    :skolemid skolem_internal_impl&__0.arrow_hd.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%List. A&. A&))
    (has_type (impl&%0.arrow_hd.? A&. A& self!) A&)
   )
   :pattern ((impl&%0.arrow_hd.? A&. A& self!))
   :qid internal_impl&__0.arrow_hd.?_pre_post_definition
   :skolemid skolem_internal_impl&__0.arrow_hd.?_pre_post_definition
)))

;; Function-Axioms crate::List::arrow_tl
(assert
 (fuel_bool_default fuel%impl&%0.arrow_tl.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%0.arrow_tl.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (= (impl&%0.arrow_tl.? A&. A& self!) (List./Cons/tl (%Poly%List. self!)))
    :pattern ((impl&%0.arrow_tl.? A&. A& self!))
    :qid internal_impl&__0.arrow_tl.?_definition
    :skolemid skolem_internal_impl&__0.arrow_tl.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%List. A&. A&))
    (has_type (Poly%List. (impl&%0.arrow_tl.? A&. A& self!)) (TYPE%List. A&. A&))
   )
   :pattern ((impl&%0.arrow_tl.? A&. A& self!))
   :qid internal_impl&__0.arrow_tl.?_pre_post_definition
   :skolemid skolem_internal_impl&__0.arrow_tl.?_pre_post_definition
)))

;; Function-Axioms crate::List::arrow_Cons_hd
(assert
 (fuel_bool_default fuel%impl&%0.arrow_Cons_hd.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%0.arrow_Cons_hd.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (= (impl&%0.arrow_Cons_hd.? A&. A& self!) (List./Cons/hd (%Poly%List. self!)))
    :pattern ((impl&%0.arrow_Cons_hd.? A&. A& self!))
    :qid internal_impl&__0.arrow_Cons_hd.?_definition
    :skolemid skolem_internal_impl&__0.arrow_Cons_hd.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%List. A&. A&))
    (has_type (impl&%0.arrow_Cons_hd.? A&. A& self!) A&)
   )
   :pattern ((impl&%0.arrow_Cons_hd.? A&. A& self!))
   :qid internal_impl&__0.arrow_Cons_hd.?_pre_post_definition
   :skolemid skolem_internal_impl&__0.arrow_Cons_hd.?_pre_post_definition
)))

;; Function-Axioms crate::List::arrow_Cons_tl
(assert
 (fuel_bool_default fuel%impl&%0.arrow_Cons_tl.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%0.arrow_Cons_tl.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (= (impl&%0.arrow_Cons_tl.? A&. A& self!) (List./Cons/tl (%Poly%List. self!)))
    :pattern ((impl&%0.arrow_Cons_tl.? A&. A& self!))
    :qid internal_impl&__0.arrow_Cons_tl.?_definition
    :skolemid skolem_internal_impl&__0.arrow_Cons_tl.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%List. A&. A&))
    (has_type (Poly%List. (impl&%0.arrow_Cons_tl.? A&. A& self!)) (TYPE%List. A&. A&))
   )
   :pattern ((impl&%0.arrow_Cons_tl.? A&. A& self!))
   :qid internal_impl&__0.arrow_Cons_tl.?_pre_post_definition
   :skolemid skolem_internal_impl&__0.arrow_Cons_tl.?_pre_post_definition
)))

;; Spec-Termination crate::len
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/match-4460c9f52e99806e-test2_struct/test.rs:20:6: 20:38 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const list! Poly)
 (declare-const tmp%1 Int)
 (declare-const tl@ List.)
 (declare-const tmp%2 Int)
 (declare-const decrease%init0 List.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type list! (TYPE%List. A&. A&))
 )
 (declare-const %%switch_label%%0 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= decrease%init0 (%Poly%List. list!))
    (or
     (and
      (=>
       (is-List./Nil (%Poly%List. list!))
       (=>
        (= tmp%2 0)
        %%switch_label%%0
      ))
      (=>
       (not (is-List./Nil (%Poly%List. list!)))
       (=>
        (= tl@ (List./Cons/tl (%Poly%List. list!)))
        (and
         (=>
          %%location_label%%0
          (check_decrease_height (Poly%List. (let
             ((list!$0 tl@))
             list!$0
            )
           ) (Poly%List. decrease%init0) false
         ))
         (=>
          (<= 0 tmp%1)
          (=>
           (= tmp%1 (len.? A&. A& (Poly%List. tl@)))
           (=>
            (= tmp%2 (nClip (Add 1 tmp%1)))
            %%switch_label%%0
     )))))))
     (not %%switch_label%%0)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Axioms crate::len
(assert
 (fuel_bool_default fuel%len.)
)
(declare-const fuel_nat%len. Fuel)
(assert
 (forall ((A&. Dcr) (A& Type) (list! Poly) (fuel% Fuel)) (!
   (= (rec%len.? A&. A& list! fuel%) (rec%len.? A&. A& list! zero))
   :pattern ((rec%len.? A&. A& list! fuel%))
   :qid internal_len._fuel_to_zero_definition
   :skolemid skolem_internal_len._fuel_to_zero_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (list! Poly) (fuel% Fuel)) (!
   (=>
    (has_type list! (TYPE%List. A&. A&))
    (= (rec%len.? A&. A& list! (succ fuel%)) (ite
      (is-List./Nil (%Poly%List. list!))
      0
      (let
       ((tl$ (List./Cons/tl (%Poly%List. list!))))
       (nClip (Add 1 (rec%len.? A&. A& (Poly%List. tl$) fuel%)))
   ))))
   :pattern ((rec%len.? A&. A& list! (succ fuel%)))
   :qid internal_len._fuel_to_body_definition
   :skolemid skolem_internal_len._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%len.)
  (forall ((A&. Dcr) (A& Type) (list! Poly)) (!
    (=>
     (has_type list! (TYPE%List. A&. A&))
     (= (len.? A&. A& list!) (rec%len.? A&. A& list! (succ fuel_nat%len.)))
    )
    :pattern ((len.? A&. A& list!))
    :qid internal_len.?_definition
    :skolemid skolem_internal_len.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (list! Poly)) (!
   (=>
    (has_type list! (TYPE%List. A&. A&))
    (<= 0 (len.? A&. A& list!))
   )
   :pattern ((len.? A&. A& list!))
   :qid internal_len.?_pre_post_definition
   :skolemid skolem_internal_len.?_pre_post_definition
)))

;; Function-Specs crate::get_len
(declare-fun req%get_len. (Dcr Type List.) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (list! List.)) (!
   (= (req%get_len. A&. A& list!) (=>
     %%global_location_label%%0
     (<= (len.? A&. A& (Poly%List. list!)) 18446744073709551615)
   ))
   :pattern ((req%get_len. A&. A& list!))
   :qid internal_req__get_len._definition
   :skolemid skolem_internal_req__get_len._definition
)))
(declare-fun ens%get_len. (Dcr Type List. Int) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (list! List.) (r! Int)) (!
   (= (ens%get_len. A&. A& list! r!) (and
     (uInv 64 r!)
     (= r! (len.? A&. A& (Poly%List. list!)))
   ))
   :pattern ((ens%get_len. A&. A& list! r!))
   :qid internal_ens__get_len._definition
   :skolemid skolem_internal_ens__get_len._definition
)))

;; Function-Def crate::get_len
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/match-4460c9f52e99806e-test2_struct/test.rs:38:5: 56:6 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const r! Int)
 (declare-const list! List.)
 (declare-const tl@ List.)
 (declare-const n@0 Int)
 (declare-const done@0 Bool)
 (declare-const iter@0 List.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%List. list!) (TYPE%List. A&. A&))
 )
 (assert
  (uInv 64 n@0)
 )
 (assert
  (has_type (Poly%List. iter@0) (TYPE%List. A&. A&))
 )
 (declare-const done@1 Bool)
 (declare-const iter@1 List.)
 (declare-const n@1 Int)
 (declare-const %%switch_label%%0 Bool)
 ;; possible arithmetic underflow/overflow
 (declare-const %%location_label%%0 Bool)
 ;; invariant not satisfied at end of loop body
 (declare-const %%location_label%%1 Bool)
 ;; invariant not satisfied at end of loop body
 (declare-const %%location_label%%2 Bool)
 ;; invariant not satisfied at end of loop body
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (<= (len.? A&. A& (Poly%List. list!)) 18446744073709551615)
    (=>
     (= (Add n@0 (len.? A&. A& (Poly%List. iter@0))) (len.? A&. A& (Poly%List. list!)))
     (=>
      (=>
       done@0
       (= (len.? A&. A& (Poly%List. iter@0)) 0)
      )
      (=>
       (not done@0)
       (or
        (and
         (=>
          (is-List./Nil iter@0)
          (=>
           (= done@1 true)
           (=>
            (= n@1 n@0)
            (=>
             (= iter@1 iter@0)
             %%switch_label%%0
         ))))
         (=>
          (not (is-List./Nil iter@0))
          (=>
           (= tl@ (List./Cons/tl (%Poly%List. (Poly%List. iter@0))))
           (=>
            (= iter@1 tl@)
            (=>
             (fuel_bool fuel%len.)
             (=>
              (exists ((fuel% Fuel)) (= fuel_nat%len. (succ fuel%)))
              (and
               (=>
                %%location_label%%0
                (uInv 64 (Add n@0 1))
               )
               (=>
                (= n@1 (uClip 64 (Add n@0 1)))
                (=>
                 (= done@1 done@0)
                 %%switch_label%%0
        )))))))))
        (and
         (not %%switch_label%%0)
         (and
          (=>
           %%location_label%%1
           (<= (len.? A&. A& (Poly%List. list!)) 18446744073709551615)
          )
          (and
           (=>
            %%location_label%%2
            (= (Add n@1 (len.? A&. A& (Poly%List. iter@1))) (len.? A&. A& (Poly%List. list!)))
           )
           (=>
            %%location_label%%3
            (=>
             done@1
             (= (len.? A&. A& (Poly%List. iter@1)) 0)
 ))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::get_len
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/match-4460c9f52e99806e-test2_struct/test.rs:29:1: 29:41 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const r! Int)
 (declare-const list! List.)
 (declare-const tl@ List.)
 (declare-const n@0 Int)
 (declare-const done@0 Bool)
 (declare-const iter@0 List.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%List. list!) (TYPE%List. A&. A&))
 )
 (assert
  (<= (len.? A&. A& (Poly%List. list!)) 18446744073709551615)
 )
 (declare-const done@1 Bool)
 (declare-const iter@1 List.)
 (declare-const n@1 Int)
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%0 Bool)
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%1 Bool)
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (= n@0 0)
    (=>
     (= done@0 false)
     (=>
      (= iter@0 list!)
      (and
       (=>
        %%location_label%%0
        (<= (len.? A&. A& (Poly%List. list!)) 18446744073709551615)
       )
       (and
        (=>
         %%location_label%%1
         (= (Add n@0 (len.? A&. A& (Poly%List. iter@0))) (len.? A&. A& (Poly%List. list!)))
        )
        (and
         (=>
          %%location_label%%2
          (=>
           done@0
           (= (len.? A&. A& (Poly%List. iter@0)) 0)
         ))
         (=>
          (uInv 64 n@1)
          (=>
           (has_type (Poly%List. iter@1) (TYPE%List. A&. A&))
           (=>
            (<= (len.? A&. A& (Poly%List. list!)) 18446744073709551615)
            (=>
             (= (Add n@1 (len.? A&. A& (Poly%List. iter@1))) (len.? A&. A& (Poly%List. list!)))
             (=>
              (=>
               done@1
               (= (len.? A&. A& (Poly%List. iter@1)) 0)
              )
              (=>
               (not (not done@1))
               (=>
                (= r! n@1)
                (=>
                 %%location_label%%3
                 (= r! (len.? A&. A& (Poly%List. list!)))
 ))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
