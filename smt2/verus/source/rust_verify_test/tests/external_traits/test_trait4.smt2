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
(assert
 true
)

;; Associated-Type-Decls
(declare-fun proj%%core!iter.traits.iterator.Iterator./Item (Dcr Type) Dcr)
(declare-fun proj%core!iter.traits.iterator.Iterator./Item (Dcr Type) Type)

;; Datatypes
(declare-datatypes ((core!cmp.Ordering. 0) (tuple%0. 0)) (((core!cmp.Ordering./Less)
   (core!cmp.Ordering./Equal) (core!cmp.Ordering./Greater)
  ) ((tuple%0./tuple%0))
))
(declare-const TYPE%core!cmp.Ordering. Type)
(declare-fun TYPE%core!iter.adapters.peekable.Peekable. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%core!cmp.Ordering. (core!cmp.Ordering.) Poly)
(declare-fun %Poly%core!cmp.Ordering. (Poly) core!cmp.Ordering.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(assert
 (forall ((x core!cmp.Ordering.)) (!
   (= x (%Poly%core!cmp.Ordering. (Poly%core!cmp.Ordering. x)))
   :pattern ((Poly%core!cmp.Ordering. x))
   :qid internal_core__cmp__Ordering_box_axiom_definition
   :skolemid skolem_internal_core__cmp__Ordering_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%core!cmp.Ordering.)
    (= x (Poly%core!cmp.Ordering. (%Poly%core!cmp.Ordering. x)))
   )
   :pattern ((has_type x TYPE%core!cmp.Ordering.))
   :qid internal_core__cmp__Ordering_unbox_axiom_definition
   :skolemid skolem_internal_core__cmp__Ordering_unbox_axiom_definition
)))
(assert
 (forall ((x core!cmp.Ordering.)) (!
   (has_type (Poly%core!cmp.Ordering. x) TYPE%core!cmp.Ordering.)
   :pattern ((has_type (Poly%core!cmp.Ordering. x) TYPE%core!cmp.Ordering.))
   :qid internal_core__cmp__Ordering_has_type_always_definition
   :skolemid skolem_internal_core__cmp__Ordering_has_type_always_definition
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
(declare-fun tr_bound%core!iter.traits.collect.IntoIterator. (Dcr Type) Bool)
(declare-fun tr_bound%core!cmp.PartialEq. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%core!cmp.Eq. (Dcr Type) Bool)
(declare-fun tr_bound%core!cmp.PartialOrd. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%core!cmp.Ord. (Dcr Type) Bool)
(declare-fun tr_bound%core!iter.traits.iterator.Iterator. (Dcr Type) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%core!iter.traits.collect.IntoIterator. Self%&. Self%&))
   :qid internal_core__iter__traits__collect__IntoIterator_trait_type_bounds_definition
   :skolemid skolem_internal_core__iter__traits__collect__IntoIterator_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Rhs&. Dcr) (Rhs& Type)) (!
   true
   :pattern ((tr_bound%core!cmp.PartialEq. Self%&. Self%& Rhs&. Rhs&))
   :qid internal_core__cmp__PartialEq_trait_type_bounds_definition
   :skolemid skolem_internal_core__cmp__PartialEq_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   (=>
    (tr_bound%core!cmp.Eq. Self%&. Self%&)
    (tr_bound%core!cmp.PartialEq. Self%&. Self%& Self%&. Self%&)
   )
   :pattern ((tr_bound%core!cmp.Eq. Self%&. Self%&))
   :qid internal_core__cmp__Eq_trait_type_bounds_definition
   :skolemid skolem_internal_core__cmp__Eq_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Rhs&. Dcr) (Rhs& Type)) (!
   (=>
    (tr_bound%core!cmp.PartialOrd. Self%&. Self%& Rhs&. Rhs&)
    (tr_bound%core!cmp.PartialEq. Self%&. Self%& Rhs&. Rhs&)
   )
   :pattern ((tr_bound%core!cmp.PartialOrd. Self%&. Self%& Rhs&. Rhs&))
   :qid internal_core__cmp__PartialOrd_trait_type_bounds_definition
   :skolemid skolem_internal_core__cmp__PartialOrd_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   (=>
    (tr_bound%core!cmp.Ord. Self%&. Self%&)
    (and
     (tr_bound%core!cmp.Eq. Self%&. Self%&)
     (tr_bound%core!cmp.PartialOrd. Self%&. Self%& Self%&. Self%&)
   ))
   :pattern ((tr_bound%core!cmp.Ord. Self%&. Self%&))
   :qid internal_core__cmp__Ord_trait_type_bounds_definition
   :skolemid skolem_internal_core__cmp__Ord_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%core!iter.traits.iterator.Iterator. Self%&. Self%&))
   :qid internal_core__iter__traits__iterator__Iterator_trait_type_bounds_definition
   :skolemid skolem_internal_core__iter__traits__iterator__Iterator_trait_type_bounds_definition
)))

;; Associated-Type-Impls
(assert
 (forall ((I&. Dcr) (I& Type)) (!
   (= (proj%%core!iter.traits.iterator.Iterator./Item $ (TYPE%core!iter.adapters.peekable.Peekable.
      I&. I&
     )
    ) (proj%%core!iter.traits.iterator.Iterator./Item I&. I&)
   )
   :pattern ((proj%%core!iter.traits.iterator.Iterator./Item $ (TYPE%core!iter.adapters.peekable.Peekable.
      I&. I&
   )))
   :qid internal_proj____core!iter.traits.iterator.Iterator./Item_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____core!iter.traits.iterator.Iterator./Item_assoc_type_impl_true_definition
)))
(assert
 (forall ((I&. Dcr) (I& Type)) (!
   (= (proj%core!iter.traits.iterator.Iterator./Item $ (TYPE%core!iter.adapters.peekable.Peekable.
      I&. I&
     )
    ) (proj%core!iter.traits.iterator.Iterator./Item I&. I&)
   )
   :pattern ((proj%core!iter.traits.iterator.Iterator./Item $ (TYPE%core!iter.adapters.peekable.Peekable.
      I&. I&
   )))
   :qid internal_proj__core!iter.traits.iterator.Iterator./Item_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__core!iter.traits.iterator.Iterator./Item_assoc_type_impl_false_definition
)))

;; Function-Specs core::iter::traits::iterator::Iterator::count
(declare-fun ens%core!iter.traits.iterator.Iterator.count. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (%return! Poly)) (!
   (= (ens%core!iter.traits.iterator.Iterator.count. Self%&. Self%& self! %return!) (
     has_type %return! (UINT SZ)
   ))
   :pattern ((ens%core!iter.traits.iterator.Iterator.count. Self%&. Self%& self! %return!))
   :qid internal_ens__core!iter.traits.iterator.Iterator.count._definition
   :skolemid skolem_internal_ens__core!iter.traits.iterator.Iterator.count._definition
)))

;; Function-Specs core::iter::traits::iterator::Iterator::cmp
(declare-fun ens%core!iter.traits.iterator.Iterator.cmp. (Dcr Type Dcr Type Poly Poly
  Poly
 ) Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (I&. Dcr) (I& Type) (self! Poly) (other! Poly)
   (%return! Poly)
  ) (!
   (= (ens%core!iter.traits.iterator.Iterator.cmp. Self%&. Self%& I&. I& self! other!
     %return!
    ) (has_type %return! TYPE%core!cmp.Ordering.)
   )
   :pattern ((ens%core!iter.traits.iterator.Iterator.cmp. Self%&. Self%& I&. I& self!
     other! %return!
   ))
   :qid internal_ens__core!iter.traits.iterator.Iterator.cmp._definition
   :skolemid skolem_internal_ens__core!iter.traits.iterator.Iterator.cmp._definition
)))

;; Function-Specs core::iter::traits::iterator::Iterator::peekable
(declare-fun req%core!iter.traits.iterator.Iterator.peekable. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (= (req%core!iter.traits.iterator.Iterator.peekable. Self%&. Self%& self!) (=>
     %%global_location_label%%0
     false
   ))
   :pattern ((req%core!iter.traits.iterator.Iterator.peekable. Self%&. Self%& self!))
   :qid internal_req__core!iter.traits.iterator.Iterator.peekable._definition
   :skolemid skolem_internal_req__core!iter.traits.iterator.Iterator.peekable._definition
)))
(declare-fun ens%core!iter.traits.iterator.Iterator.peekable. (Dcr Type Poly Poly)
 Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (%return! Poly)) (!
   (= (ens%core!iter.traits.iterator.Iterator.peekable. Self%&. Self%& self! %return!)
    (has_type %return! (TYPE%core!iter.adapters.peekable.Peekable. Self%&. Self%&))
   )
   :pattern ((ens%core!iter.traits.iterator.Iterator.peekable. Self%&. Self%& self! %return!))
   :qid internal_ens__core!iter.traits.iterator.Iterator.peekable._definition
   :skolemid skolem_internal_ens__core!iter.traits.iterator.Iterator.peekable._definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ BOOL $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.Eq. $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ (UINT SZ) $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.Eq. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type)) (!
   (=>
    (tr_bound%core!cmp.PartialEq. A&. A& B&. B&)
    (tr_bound%core!cmp.PartialEq. (REF A&.) A& (REF B&.) B&)
   )
   :pattern ((tr_bound%core!cmp.PartialEq. (REF A&.) A& (REF B&.) B&))
   :qid internal_core__cmp__impls__impl&__9_trait_impl_definition
   :skolemid skolem_internal_core__cmp__impls__impl&__9_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (=>
    (tr_bound%core!cmp.Eq. A&. A&)
    (tr_bound%core!cmp.Eq. (REF A&.) A&)
   )
   :pattern ((tr_bound%core!cmp.Eq. (REF A&.) A&))
   :qid internal_core__cmp__impls__impl&__12_trait_impl_definition
   :skolemid skolem_internal_core__cmp__impls__impl&__12_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ TYPE%tuple%0. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.Eq. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ TYPE%core!cmp.Ordering. $ TYPE%core!cmp.Ordering.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.Eq. $ TYPE%core!cmp.Ordering.)
)

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type)) (!
   (=>
    (tr_bound%core!cmp.PartialOrd. A&. A& B&. B&)
    (tr_bound%core!cmp.PartialOrd. (REF A&.) A& (REF B&.) B&)
   )
   :pattern ((tr_bound%core!cmp.PartialOrd. (REF A&.) A& (REF B&.) B&))
   :qid internal_core__cmp__impls__impl&__10_trait_impl_definition
   :skolemid skolem_internal_core__cmp__impls__impl&__10_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialOrd. $ TYPE%core!cmp.Ordering. $ TYPE%core!cmp.Ordering.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialOrd. $ TYPE%tuple%0. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialOrd. $ BOOL $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialOrd. $ (UINT SZ) $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.Ord. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.Ord. $ TYPE%core!cmp.Ordering.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.Ord. $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.Ord. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (=>
    (tr_bound%core!cmp.Ord. A&. A&)
    (tr_bound%core!cmp.Ord. (REF A&.) A&)
   )
   :pattern ((tr_bound%core!cmp.Ord. (REF A&.) A&))
   :qid internal_core__cmp__impls__impl&__11_trait_impl_definition
   :skolemid skolem_internal_core__cmp__impls__impl&__11_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((I&. Dcr) (I& Type)) (!
   (=>
    (tr_bound%core!iter.traits.iterator.Iterator. I&. I&)
    (tr_bound%core!iter.traits.iterator.Iterator. $ (TYPE%core!iter.adapters.peekable.Peekable.
      I&. I&
   )))
   :pattern ((tr_bound%core!iter.traits.iterator.Iterator. $ (TYPE%core!iter.adapters.peekable.Peekable.
      I&. I&
   )))
   :qid internal_core__iter__adapters__peekable__impl&__1_trait_impl_definition
   :skolemid skolem_internal_core__iter__adapters__peekable__impl&__1_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((I&. Dcr) (I& Type)) (!
   (=>
    (tr_bound%core!iter.traits.iterator.Iterator. I&. I&)
    (tr_bound%core!iter.traits.collect.IntoIterator. I&. I&)
   )
   :pattern ((tr_bound%core!iter.traits.collect.IntoIterator. I&. I&))
   :qid internal_core__iter__traits__collect__impl&__1_trait_impl_definition
   :skolemid skolem_internal_core__iter__traits__collect__impl&__1_trait_impl_definition
)))

;; Function-Def crate::test2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/external_traits-cafe10d85d81bb58-test_trait4/test.rs:63:1: 63:28 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const a! Poly)
 (declare-const tmp%1 Poly)
 (declare-const x@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type a! A&)
 )
 (assert
  (tr_bound%core!iter.traits.iterator.Iterator. A&. A&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/external_traits-cafe10d85d81bb58-test_trait4/test.rs:67:1: 67:28 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const a! Poly)
 (declare-const y@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type a! A&)
 )
 (assert
  (tr_bound%core!iter.traits.iterator.Iterator. A&. A&)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (req%core!iter.traits.iterator.Iterator.peekable. A&. A& a!)
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
 (get-info :reason-unknown)
 (get-model)
 (assert
  (not %%location_label%%0)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Recommends crate::test3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/external_traits-cafe10d85d81bb58-test_trait4/test.rs:67:1: 67:28 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const a! Poly)
 (declare-const y@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type a! A&)
 )
 (assert
  (tr_bound%core!iter.traits.iterator.Iterator. A&. A&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
