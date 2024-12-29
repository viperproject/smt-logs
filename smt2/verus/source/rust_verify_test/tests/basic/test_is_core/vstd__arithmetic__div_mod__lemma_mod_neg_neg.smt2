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

;; MODULE 'module vstd::arithmetic::div_mod, function crate::vstd::arithmetic::div_mod::lemma_mod_neg_neg'

;; Fuel
(declare-const fuel%vstd.arithmetic.internals.mod_internals.mod_auto_plus. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mod_internals.mod_auto_minus. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mod_internals.mod_auto. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_commutes. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_plus.
 FuelId
)
(declare-const fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_minus.
 FuelId
)
(declare-const fuel%vstd.math.add. FuelId)
(declare-const fuel%vstd.math.sub. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.
 FuelId
)
(assert
 (distinct fuel%vstd.arithmetic.internals.mod_internals.mod_auto_plus. fuel%vstd.arithmetic.internals.mod_internals.mod_auto_minus.
  fuel%vstd.arithmetic.internals.mod_internals.mod_auto. fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_commutes.
  fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_plus. fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_minus.
  fuel%vstd.math.add. fuel%vstd.math.sub. fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.
))
(assert
 (=>
  (fuel_bool_default fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.)
  (and
   (fuel_bool_default fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_commutes.)
   (fuel_bool_default fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_plus.)
   (fuel_bool_default fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_minus.)
)))

;; Datatypes
(declare-datatypes ((tuple%0. 0)) (((tuple%0./tuple%0))))
(declare-fun TYPE%fun%1. (Dcr Type Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%fun%1. (%%Function%%) Poly)
(declare-fun %Poly%fun%1. (Poly) %%Function%%)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(assert
 (forall ((x %%Function%%)) (!
   (= x (%Poly%fun%1. (Poly%fun%1. x)))
   :pattern ((Poly%fun%1. x))
   :qid internal_crate__fun__1_box_axiom_definition
   :skolemid skolem_internal_crate__fun__1_box_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%fun%1. T%0&. T%0& T%1&. T%1&))
    (= x (Poly%fun%1. (%Poly%fun%1. x)))
   )
   :pattern ((has_type x (TYPE%fun%1. T%0&. T%0& T%1&. T%1&)))
   :qid internal_crate__fun__1_unbox_axiom_definition
   :skolemid skolem_internal_crate__fun__1_unbox_axiom_definition
)))
(declare-fun %%apply%%0 (%%Function%% Poly) Poly)
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (x %%Function%%)) (!
   (=>
    (forall ((T%0 Poly)) (!
      (=>
       (has_type T%0 T%0&)
       (has_type (%%apply%%0 x T%0) T%1&)
      )
      :pattern ((has_type (%%apply%%0 x T%0) T%1&))
      :qid internal_crate__fun__1_constructor_inner_definition
      :skolemid skolem_internal_crate__fun__1_constructor_inner_definition
    ))
    (has_type (Poly%fun%1. (mk_fun x)) (TYPE%fun%1. T%0&. T%0& T%1&. T%1&))
   )
   :pattern ((has_type (Poly%fun%1. (mk_fun x)) (TYPE%fun%1. T%0&. T%0& T%1&. T%1&)))
   :qid internal_crate__fun__1_constructor_definition
   :skolemid skolem_internal_crate__fun__1_constructor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%0 Poly) (x %%Function%%))
  (!
   (=>
    (and
     (has_type (Poly%fun%1. x) (TYPE%fun%1. T%0&. T%0& T%1&. T%1&))
     (has_type T%0 T%0&)
    )
    (has_type (%%apply%%0 x T%0) T%1&)
   )
   :pattern ((%%apply%%0 x T%0) (has_type (Poly%fun%1. x) (TYPE%fun%1. T%0&. T%0& T%1&.
      T%1&
   )))
   :qid internal_crate__fun__1_apply_definition
   :skolemid skolem_internal_crate__fun__1_apply_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%0 Poly) (x %%Function%%))
  (!
   (=>
    (and
     (has_type (Poly%fun%1. x) (TYPE%fun%1. T%0&. T%0& T%1&. T%1&))
     (has_type T%0 T%0&)
    )
    (height_lt (height (%%apply%%0 x T%0)) (height (fun_from_recursive_field (Poly%fun%1.
        (mk_fun x)
   )))))
   :pattern ((height (%%apply%%0 x T%0)) (has_type (Poly%fun%1. x) (TYPE%fun%1. T%0&. T%0&
      T%1&. T%1&
   )))
   :qid internal_crate__fun__1_height_apply_definition
   :skolemid skolem_internal_crate__fun__1_height_apply_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (deep Bool) (x Poly) (y Poly))
  (!
   (=>
    (and
     (has_type x (TYPE%fun%1. T%0&. T%0& T%1&. T%1&))
     (has_type y (TYPE%fun%1. T%0&. T%0& T%1&. T%1&))
     (forall ((T%0 Poly)) (!
       (=>
        (has_type T%0 T%0&)
        (ext_eq deep T%1& (%%apply%%0 (%Poly%fun%1. x) T%0) (%%apply%%0 (%Poly%fun%1. y) T%0))
       )
       :pattern ((ext_eq deep T%1& (%%apply%%0 (%Poly%fun%1. x) T%0) (%%apply%%0 (%Poly%fun%1.
           y
          ) T%0
       )))
       :qid internal_crate__fun__1_inner_ext_equal_definition
       :skolemid skolem_internal_crate__fun__1_inner_ext_equal_definition
    )))
    (ext_eq deep (TYPE%fun%1. T%0&. T%0& T%1&. T%1&) x y)
   )
   :pattern ((ext_eq deep (TYPE%fun%1. T%0&. T%0& T%1&. T%1&) x y))
   :qid internal_crate__fun__1_ext_equal_definition
   :skolemid skolem_internal_crate__fun__1_ext_equal_definition
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

;; Function-Decl crate::vstd::arithmetic::internals::mod_internals::mod_auto_plus
(declare-fun vstd.arithmetic.internals.mod_internals.mod_auto_plus.? (Poly) Bool)

;; Function-Decl crate::vstd::arithmetic::internals::mod_internals::mod_auto_minus
(declare-fun vstd.arithmetic.internals.mod_internals.mod_auto_minus.? (Poly) Bool)

;; Function-Decl crate::vstd::arithmetic::internals::mod_internals::mod_auto
(declare-fun vstd.arithmetic.internals.mod_internals.mod_auto.? (Poly) Bool)

;; Function-Decl crate::vstd::math::add
(declare-fun vstd.math.add.? (Poly Poly) Int)

;; Function-Decl crate::vstd::math::sub
(declare-fun vstd.math.sub.? (Poly Poly) Int)

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::mod_auto_plus
(declare-fun req%vstd.arithmetic.internals.mod_internals.mod_auto_plus. (Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((n! Poly)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.mod_auto_plus. n!) (=>
     %%global_location_label%%0
     (> (%I n!) 0)
   ))
   :pattern ((req%vstd.arithmetic.internals.mod_internals.mod_auto_plus. n!))
   :qid internal_req__vstd.arithmetic.internals.mod_internals.mod_auto_plus._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals.mod_auto_plus._definition
)))

;; Function-Axioms crate::vstd::arithmetic::internals::mod_internals::mod_auto_plus
(assert
 (fuel_bool_default fuel%vstd.arithmetic.internals.mod_internals.mod_auto_plus.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.mod_internals.mod_auto_plus.)
  (forall ((n! Poly)) (!
    (= (vstd.arithmetic.internals.mod_internals.mod_auto_plus.? n!) (forall ((x$ Int) (y$
        Int
       )
      ) (!
       (let
        ((z$ (Add (EucMod x$ (%I n!)) (EucMod y$ (%I n!)))))
        (or
         (and
          (and
           (<= 0 z$)
           (< z$ (%I n!))
          )
          (= (EucMod (Add x$ y$) (%I n!)) z$)
         )
         (and
          (and
           (<= (%I n!) z$)
           (< z$ (Add (%I n!) (%I n!)))
          )
          (= (EucMod (Add x$ y$) (%I n!)) (Sub z$ (%I n!)))
       )))
       :pattern ((EucMod (Add x$ y$) (%I n!)))
       :qid user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_plus_0
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_plus_0
    )))
    :pattern ((vstd.arithmetic.internals.mod_internals.mod_auto_plus.? n!))
    :qid internal_vstd.arithmetic.internals.mod_internals.mod_auto_plus.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.mod_internals.mod_auto_plus.?_definition
))))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::mod_auto_minus
(declare-fun req%vstd.arithmetic.internals.mod_internals.mod_auto_minus. (Poly) Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((n! Poly)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.mod_auto_minus. n!) (=>
     %%global_location_label%%1
     (> (%I n!) 0)
   ))
   :pattern ((req%vstd.arithmetic.internals.mod_internals.mod_auto_minus. n!))
   :qid internal_req__vstd.arithmetic.internals.mod_internals.mod_auto_minus._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals.mod_auto_minus._definition
)))

;; Function-Axioms crate::vstd::arithmetic::internals::mod_internals::mod_auto_minus
(assert
 (fuel_bool_default fuel%vstd.arithmetic.internals.mod_internals.mod_auto_minus.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.mod_internals.mod_auto_minus.)
  (forall ((n! Poly)) (!
    (= (vstd.arithmetic.internals.mod_internals.mod_auto_minus.? n!) (forall ((x$ Int) (
        y$ Int
       )
      ) (!
       (let
        ((z$ (Sub (EucMod x$ (%I n!)) (EucMod y$ (%I n!)))))
        (or
         (and
          (and
           (<= 0 z$)
           (< z$ (%I n!))
          )
          (= (EucMod (Sub x$ y$) (%I n!)) z$)
         )
         (and
          (and
           (<= (Sub 0 (%I n!)) z$)
           (< z$ 0)
          )
          (= (EucMod (Sub x$ y$) (%I n!)) (Add z$ (%I n!)))
       )))
       :pattern ((EucMod (Sub x$ y$) (%I n!)))
       :qid user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_minus_1
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_minus_1
    )))
    :pattern ((vstd.arithmetic.internals.mod_internals.mod_auto_minus.? n!))
    :qid internal_vstd.arithmetic.internals.mod_internals.mod_auto_minus.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.mod_internals.mod_auto_minus.?_definition
))))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::mod_auto
(declare-fun req%vstd.arithmetic.internals.mod_internals.mod_auto. (Poly) Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((n! Poly)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.mod_auto. n!) (=>
     %%global_location_label%%2
     (> (%I n!) 0)
   ))
   :pattern ((req%vstd.arithmetic.internals.mod_internals.mod_auto. n!))
   :qid internal_req__vstd.arithmetic.internals.mod_internals.mod_auto._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals.mod_auto._definition
)))

;; Function-Axioms crate::vstd::arithmetic::internals::mod_internals::mod_auto
(assert
 (fuel_bool_default fuel%vstd.arithmetic.internals.mod_internals.mod_auto.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.mod_internals.mod_auto.)
  (forall ((n! Poly)) (!
    (= (vstd.arithmetic.internals.mod_internals.mod_auto.? n!) (and
      (and
       (and
        (and
         (and
          (= (EucMod (%I n!) (%I n!)) 0)
          (= (EucMod (Sub 0 (%I n!)) (%I n!)) 0)
         )
         (forall ((x$ Int)) (!
           (= (EucMod (EucMod x$ (%I n!)) (%I n!)) (EucMod x$ (%I n!)))
           :pattern ((EucMod (EucMod x$ (%I n!)) (%I n!)))
           :qid user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_2
           :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_2
        )))
        (forall ((x$ Int)) (!
          (= (and
            (<= 0 x$)
            (< x$ (%I n!))
           ) (= (EucMod x$ (%I n!)) x$)
          )
          :pattern ((EucMod x$ (%I n!)))
          :qid user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_3
          :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_3
       )))
       (vstd.arithmetic.internals.mod_internals.mod_auto_plus.? n!)
      )
      (vstd.arithmetic.internals.mod_internals.mod_auto_minus.? n!)
    ))
    :pattern ((vstd.arithmetic.internals.mod_internals.mod_auto.? n!))
    :qid internal_vstd.arithmetic.internals.mod_internals.mod_auto.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.mod_internals.mod_auto.?_definition
))))

;; Function-Axioms crate::vstd::math::add
(assert
 (fuel_bool_default fuel%vstd.math.add.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.math.add.)
  (forall ((x! Poly) (y! Poly)) (!
    (= (vstd.math.add.? x! y!) (Add (%I x!) (%I y!)))
    :pattern ((vstd.math.add.? x! y!))
    :qid internal_vstd.math.add.?_definition
    :skolemid skolem_internal_vstd.math.add.?_definition
))))

;; Function-Axioms crate::vstd::math::sub
(assert
 (fuel_bool_default fuel%vstd.math.sub.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.math.sub.)
  (forall ((x! Poly) (y! Poly)) (!
    (= (vstd.math.sub.? x! y!) (Sub (%I x!) (%I y!)))
    :pattern ((vstd.math.sub.? x! y!))
    :qid internal_vstd.math.sub.?_definition
    :skolemid skolem_internal_vstd.math.sub.?_definition
))))

;; Broadcast crate::vstd::arithmetic::internals::mul_internals::lemma_mul_commutes
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_commutes.)
  (forall ((x! Int) (y! Int)) (!
    (= (Mul x! y!) (Mul y! x!))
    :pattern ((Mul x! y!))
    :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_commutes_4
    :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_commutes_4
))))

;; Function-Specs crate::vstd::arithmetic::internals::mul_internals::lemma_mul_induction
(declare-fun req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction. (%%Function%%)
 Bool
)
(declare-const %%global_location_label%%3 Bool)
(declare-const %%global_location_label%%4 Bool)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((f! %%Function%%)) (!
   (= (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction. f!) (and
     (=>
      %%global_location_label%%3
      (%B (%%apply%%0 f! (I 0)))
     )
     (=>
      %%global_location_label%%4
      (forall ((i$ Poly)) (!
        (=>
         (has_type i$ INT)
         (=>
          (and
           (>= (%I i$) 0)
           (%B (%%apply%%0 f! i$))
          )
          (%B (%%apply%%0 f! (I (vstd.math.add.? i$ (I 1)))))
        ))
        :pattern ((%%apply%%0 f! i$) (%%apply%%0 f! (I (vstd.math.add.? i$ (I 1)))))
        :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_5
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_5
     )))
     (=>
      %%global_location_label%%5
      (forall ((i$ Poly)) (!
        (=>
         (has_type i$ INT)
         (=>
          (and
           (<= (%I i$) 0)
           (%B (%%apply%%0 f! i$))
          )
          (%B (%%apply%%0 f! (I (vstd.math.sub.? i$ (I 1)))))
        ))
        :pattern ((%%apply%%0 f! i$) (%%apply%%0 f! (I (vstd.math.sub.? i$ (I 1)))))
        :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_6
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_6
   )))))
   :pattern ((req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction. f!))
   :qid internal_req__vstd.arithmetic.internals.mul_internals.lemma_mul_induction._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mul_internals.lemma_mul_induction._definition
)))
(declare-fun ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction. (%%Function%%)
 Bool
)
(assert
 (forall ((f! %%Function%%)) (!
   (= (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction. f!) (forall ((i$
       Poly
      )
     ) (!
      (=>
       (has_type i$ INT)
       (%B (%%apply%%0 f! i$))
      )
      :pattern ((%%apply%%0 f! i$))
      :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_7
      :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_7
   )))
   :pattern ((ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction. f!))
   :qid internal_ens__vstd.arithmetic.internals.mul_internals.lemma_mul_induction._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mul_internals.lemma_mul_induction._definition
)))

;; Broadcast crate::vstd::arithmetic::internals::mul_internals::lemma_mul_distributes_plus
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_plus.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (= (Mul (Add x! y!) z!) (Add (Mul x! z!) (Mul y! z!)))
    :pattern ((Mul (Add x! y!) z!))
    :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_distributes_plus_8
    :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_distributes_plus_8
))))

;; Broadcast crate::vstd::arithmetic::internals::mul_internals::lemma_mul_distributes_minus
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_minus.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (= (Mul (Sub x! y!) z!) (Sub (Mul x! z!) (Mul y! z!)))
    :pattern ((Mul (Sub x! y!) z!))
    :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_distributes_minus_9
    :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_distributes_minus_9
))))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::lemma_mod_auto
(declare-fun req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. (Int) Bool)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((n! Int)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. n!) (=>
     %%global_location_label%%6
     (> n! 0)
   ))
   :pattern ((req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. n!))
   :qid internal_req__vstd.arithmetic.internals.mod_internals.lemma_mod_auto._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals.lemma_mod_auto._definition
)))
(declare-fun ens%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. (Int) Bool)
(assert
 (forall ((n! Int)) (!
   (= (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. n!) (vstd.arithmetic.internals.mod_internals.mod_auto.?
     (I n!)
   ))
   :pattern ((ens%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. n!))
   :qid internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_auto._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_auto._definition
)))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_mod_neg_neg
(declare-fun req%vstd.arithmetic.div_mod.lemma_mod_neg_neg. (Int Int) Bool)
(declare-const %%global_location_label%%7 Bool)
(assert
 (forall ((x! Int) (d! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_mod_neg_neg. x! d!) (=>
     %%global_location_label%%7
     (< 0 d!)
   ))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_mod_neg_neg. x! d!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_mod_neg_neg._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_mod_neg_neg._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_mod_neg_neg. (Int Int) Bool)
(assert
 (forall ((x! Int) (d! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_mod_neg_neg. x! d!) (= (EucMod x! d!) (EucMod
      (Mul x! (Sub 1 d!)) d!
   )))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_mod_neg_neg. x! d!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_mod_neg_neg._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_mod_neg_neg._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mod_neg_neg
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1282:1: 1282:47 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const d! Int)
 (declare-const tmp%1 Bool)
 (declare-const f@ %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 d!)
 )
 (declare-fun %%lambda%%0 (Int Int Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Int) (%%hole%%3 Int) (i$ Poly))
   (!
    (= (%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) i$) (B (= (EucMod
        (Sub %%hole%%1 (Mul (%I i$) %%hole%%0)) %%hole%%2
       ) %%hole%%3
    )))
    :pattern ((%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) i$))
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%5 Bool)
 (assert
  (not (and
    (=>
     (= f@ (mk_fun (%%lambda%%0 d! x! d! (EucMod x! d!))))
     (and
      (=>
       (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.)
       (and
        (=>
         %%location_label%%0
         (req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. d!)
        )
        (=>
         (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. d!)
         (=>
          %%location_label%%1
          (and
           (and
            (%B (%%apply%%0 f@ (I 0)))
            (forall ((i$ Poly)) (!
              (=>
               (has_type i$ INT)
               (=>
                (and
                 (>= (%I i$) 0)
                 (%B (%%apply%%0 f@ i$))
                )
                (%B (%%apply%%0 f@ (I (vstd.math.add.? i$ (I 1)))))
              ))
              :pattern ((%%apply%%0 f@ i$) (%%apply%%0 f@ (I (vstd.math.add.? i$ (I 1)))))
              :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_neg_neg_10
              :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_neg_neg_10
           )))
           (forall ((i$ Poly)) (!
             (=>
              (has_type i$ INT)
              (=>
               (and
                (<= (%I i$) 0)
                (%B (%%apply%%0 f@ i$))
               )
               (%B (%%apply%%0 f@ (I (vstd.math.sub.? i$ (I 1)))))
             ))
             :pattern ((%%apply%%0 f@ i$) (%%apply%%0 f@ (I (vstd.math.sub.? i$ (I 1)))))
             :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_neg_neg_11
             :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_neg_neg_11
      )))))))
      (=>
       (and
        (and
         (%B (%%apply%%0 f@ (I 0)))
         (forall ((i$ Poly)) (!
           (=>
            (has_type i$ INT)
            (=>
             (and
              (>= (%I i$) 0)
              (%B (%%apply%%0 f@ i$))
             )
             (%B (%%apply%%0 f@ (I (vstd.math.add.? i$ (I 1)))))
           ))
           :pattern ((%%apply%%0 f@ i$) (%%apply%%0 f@ (I (vstd.math.add.? i$ (I 1)))))
           :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_neg_neg_12
           :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_neg_neg_12
        )))
        (forall ((i$ Poly)) (!
          (=>
           (has_type i$ INT)
           (=>
            (and
             (<= (%I i$) 0)
             (%B (%%apply%%0 f@ i$))
            )
            (%B (%%apply%%0 f@ (I (vstd.math.sub.? i$ (I 1)))))
          ))
          :pattern ((%%apply%%0 f@ i$) (%%apply%%0 f@ (I (vstd.math.sub.? i$ (I 1)))))
          :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_neg_neg_13
          :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_neg_neg_13
       )))
       (and
        (=>
         %%location_label%%2
         (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction. f@)
        )
        (=>
         (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction. f@)
         (=>
          (= tmp%1 (%B (%%apply%%0 f@ (I x!))))
          (and
           (=>
            %%location_label%%3
            tmp%1
           )
           (=>
            tmp%1
            (=>
             %%location_label%%4
             (= (EucMod (Sub x! (Mul x! d!)) d!) (EucMod x! d!))
    )))))))))
    (=>
     (= (EucMod (Sub x! (Mul x! d!)) d!) (EucMod x! d!))
     (=>
      (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.)
      (=>
       %%location_label%%5
       (= (EucMod x! d!) (EucMod (Mul x! (Sub 1 d!)) d!))
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
