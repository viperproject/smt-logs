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

;; MODULE 'module vstd::arithmetic::internals::mul_internals'

;; Fuel
(declare-const fuel%vstd.arithmetic.internals.general_internals.is_le. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mul_internals.mul_pos. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mul_internals.mul_recursive. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_commutes. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_plus.
 FuelId
)
(declare-const fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_minus.
 FuelId
)
(declare-const fuel%vstd.arithmetic.internals.mul_internals.mul_auto. FuelId)
(declare-const fuel%vstd.math.add. FuelId)
(declare-const fuel%vstd.math.sub. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.
 FuelId
)
(assert
 (distinct fuel%vstd.arithmetic.internals.general_internals.is_le. fuel%vstd.arithmetic.internals.mul_internals.mul_pos.
  fuel%vstd.arithmetic.internals.mul_internals.mul_recursive. fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_commutes.
  fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_plus. fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_minus.
  fuel%vstd.arithmetic.internals.mul_internals.mul_auto. fuel%vstd.math.add. fuel%vstd.math.sub.
  fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.
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

;; Function-Decl crate::vstd::arithmetic::internals::general_internals::is_le
(declare-fun vstd.arithmetic.internals.general_internals.is_le.? (Poly Poly) Bool)

;; Function-Decl crate::vstd::arithmetic::internals::mul_internals::mul_pos
(declare-fun vstd.arithmetic.internals.mul_internals.mul_pos.? (Poly Poly) Int)
(declare-fun vstd.arithmetic.internals.mul_internals.rec%mul_pos.? (Poly Poly Fuel)
 Int
)

;; Function-Decl crate::vstd::arithmetic::internals::mul_internals::mul_recursive
(declare-fun vstd.arithmetic.internals.mul_internals.mul_recursive.? (Poly Poly) Int)

;; Function-Decl crate::vstd::arithmetic::internals::mul_internals::mul_auto
(declare-fun vstd.arithmetic.internals.mul_internals.mul_auto.? (Poly) Bool)

;; Function-Decl crate::vstd::math::add
(declare-fun vstd.math.add.? (Poly Poly) Int)

;; Function-Decl crate::vstd::math::sub
(declare-fun vstd.math.sub.? (Poly Poly) Int)

;; Function-Axioms crate::vstd::arithmetic::internals::general_internals::is_le
(assert
 (fuel_bool_default fuel%vstd.arithmetic.internals.general_internals.is_le.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.general_internals.is_le.)
  (forall ((x! Poly) (y! Poly)) (!
    (= (vstd.arithmetic.internals.general_internals.is_le.? x! y!) (<= (%I x!) (%I y!)))
    :pattern ((vstd.arithmetic.internals.general_internals.is_le.? x! y!))
    :qid internal_vstd.arithmetic.internals.general_internals.is_le.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.general_internals.is_le.?_definition
))))

;; Function-Specs crate::vstd::arithmetic::internals::mul_internals::mul_pos
(declare-fun req%vstd.arithmetic.internals.mul_internals.mul_pos. (Poly Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((x! Poly) (y! Poly)) (!
   (= (req%vstd.arithmetic.internals.mul_internals.mul_pos. x! y!) (=>
     %%global_location_label%%0
     (>= (%I x!) 0)
   ))
   :pattern ((req%vstd.arithmetic.internals.mul_internals.mul_pos. x! y!))
   :qid internal_req__vstd.arithmetic.internals.mul_internals.mul_pos._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mul_internals.mul_pos._definition
)))

;; Spec-Termination crate::vstd::arithmetic::internals::mul_internals::mul_pos
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/internals/mul_internals.rs:30:1: 30:48 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Poly)
 (declare-const y! Poly)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Poly)
 (declare-const tmp%3 Int)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type x! INT)
 )
 (assert
  (has_type y! INT)
 )
 (declare-const %%switch_label%%0 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= decrease%init0 (%I x!))
    (or
     (and
      (=>
       (<= (%I x!) 0)
       (=>
        (= tmp%3 0)
        %%switch_label%%0
      ))
      (=>
       (not (<= (%I x!) 0))
       (=>
        (= tmp%2 (I (Sub (%I x!) 1)))
        (and
         (=>
          %%location_label%%0
          (check_decrease_int (let
            ((x!$0 (%I tmp%2)) (y!$1 (%I y!)))
            x!$0
           ) decrease%init0 false
         ))
         (=>
          (= tmp%1 (vstd.arithmetic.internals.mul_internals.mul_pos.? (I (Sub (%I x!) 1)) y!))
          (=>
           (= tmp%3 (Add (%I y!) tmp%1))
           %%switch_label%%0
     ))))))
     (not %%switch_label%%0)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Axioms crate::vstd::arithmetic::internals::mul_internals::mul_pos
(declare-const fuel_nat%vstd.arithmetic.internals.mul_internals.mul_pos. Fuel)
(assert
 (forall ((x! Poly) (y! Poly) (fuel% Fuel)) (!
   (= (vstd.arithmetic.internals.mul_internals.rec%mul_pos.? x! y! fuel%) (vstd.arithmetic.internals.mul_internals.rec%mul_pos.?
     x! y! zero
   ))
   :pattern ((vstd.arithmetic.internals.mul_internals.rec%mul_pos.? x! y! fuel%))
   :qid internal_vstd.arithmetic.internals.mul_internals.mul_pos._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.arithmetic.internals.mul_internals.mul_pos._fuel_to_zero_definition
)))
(assert
 (forall ((x! Poly) (y! Poly) (fuel% Fuel)) (!
   (=>
    (and
     (has_type x! INT)
     (has_type y! INT)
    )
    (= (vstd.arithmetic.internals.mul_internals.rec%mul_pos.? x! y! (succ fuel%)) (ite
      (<= (%I x!) 0)
      0
      (Add (%I y!) (vstd.arithmetic.internals.mul_internals.rec%mul_pos.? (I (Sub (%I x!) 1))
        y! fuel%
   )))))
   :pattern ((vstd.arithmetic.internals.mul_internals.rec%mul_pos.? x! y! (succ fuel%)))
   :qid internal_vstd.arithmetic.internals.mul_internals.mul_pos._fuel_to_body_definition
   :skolemid skolem_internal_vstd.arithmetic.internals.mul_internals.mul_pos._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.mul_pos.)
  (forall ((x! Poly) (y! Poly)) (!
    (=>
     (and
      (has_type x! INT)
      (has_type y! INT)
     )
     (= (vstd.arithmetic.internals.mul_internals.mul_pos.? x! y!) (vstd.arithmetic.internals.mul_internals.rec%mul_pos.?
       x! y! (succ fuel_nat%vstd.arithmetic.internals.mul_internals.mul_pos.)
    )))
    :pattern ((vstd.arithmetic.internals.mul_internals.mul_pos.? x! y!))
    :qid internal_vstd.arithmetic.internals.mul_internals.mul_pos.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.mul_internals.mul_pos.?_definition
))))

;; Function-Axioms crate::vstd::arithmetic::internals::mul_internals::mul_recursive
(assert
 (fuel_bool_default fuel%vstd.arithmetic.internals.mul_internals.mul_recursive.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.mul_recursive.)
  (forall ((x! Poly) (y! Poly)) (!
    (= (vstd.arithmetic.internals.mul_internals.mul_recursive.? x! y!) (ite
      (>= (%I x!) 0)
      (vstd.arithmetic.internals.mul_internals.mul_pos.? x! y!)
      (Mul (Sub 0 1) (vstd.arithmetic.internals.mul_internals.mul_pos.? (I (Mul (Sub 0 1) (
           %I x!
         ))
        ) y!
    ))))
    :pattern ((vstd.arithmetic.internals.mul_internals.mul_recursive.? x! y!))
    :qid internal_vstd.arithmetic.internals.mul_internals.mul_recursive.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.mul_internals.mul_recursive.?_definition
))))

;; Function-Axioms crate::vstd::arithmetic::internals::mul_internals::mul_auto
(assert
 (fuel_bool_default fuel%vstd.arithmetic.internals.mul_internals.mul_auto.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.mul_auto.)
  (forall ((no%param Poly)) (!
    (= (vstd.arithmetic.internals.mul_internals.mul_auto.? no%param) (and
      (and
       (forall ((x$ Int) (y$ Int)) (!
         (= (Mul x$ y$) (Mul y$ x$))
         :pattern ((Mul x$ y$))
         :qid user_crate__vstd__arithmetic__internals__mul_internals__mul_auto_0
         :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__mul_auto_0
       ))
       (forall ((x$ Int) (y$ Int) (z$ Int)) (!
         (= (Mul (Add x$ y$) z$) (Add (Mul x$ z$) (Mul y$ z$)))
         :pattern ((Mul (Add x$ y$) z$))
         :qid user_crate__vstd__arithmetic__internals__mul_internals__mul_auto_1
         :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__mul_auto_1
      )))
      (forall ((x$ Int) (y$ Int) (z$ Int)) (!
        (= (Mul (Sub x$ y$) z$) (Sub (Mul x$ z$) (Mul y$ z$)))
        :pattern ((Mul (Sub x$ y$) z$))
        :qid user_crate__vstd__arithmetic__internals__mul_internals__mul_auto_2
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__mul_auto_2
    ))))
    :pattern ((vstd.arithmetic.internals.mul_internals.mul_auto.? no%param))
    :qid internal_vstd.arithmetic.internals.mul_internals.mul_auto.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.mul_internals.mul_auto.?_definition
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

;; Function-Specs crate::vstd::arithmetic::internals::general_internals::lemma_induction_helper
(declare-fun req%vstd.arithmetic.internals.general_internals.lemma_induction_helper.
 (Int %%Function%% Int) Bool
)
(declare-const %%global_location_label%%1 Bool)
(declare-const %%global_location_label%%2 Bool)
(declare-const %%global_location_label%%3 Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((n! Int) (f! %%Function%%) (x! Int)) (!
   (= (req%vstd.arithmetic.internals.general_internals.lemma_induction_helper. n! f! x!)
    (and
     (=>
      %%global_location_label%%1
      (> n! 0)
     )
     (=>
      %%global_location_label%%2
      (forall ((i$ Poly)) (!
        (=>
         (has_type i$ INT)
         (=>
          (and
           (<= 0 (%I i$))
           (< (%I i$) n!)
          )
          (%B (%%apply%%0 f! i$))
        ))
        :pattern ((%%apply%%0 f! i$))
        :qid user_crate__vstd__arithmetic__internals__general_internals__lemma_induction_helper_3
        :skolemid skolem_user_crate__vstd__arithmetic__internals__general_internals__lemma_induction_helper_3
     )))
     (=>
      %%global_location_label%%3
      (forall ((i$ Poly)) (!
        (=>
         (has_type i$ INT)
         (=>
          (and
           (>= (%I i$) 0)
           (%B (%%apply%%0 f! i$))
          )
          (%B (%%apply%%0 f! (I (vstd.math.add.? i$ (I n!)))))
        ))
        :pattern ((%%apply%%0 f! i$) (%%apply%%0 f! (I (vstd.math.add.? i$ (I n!)))))
        :qid user_crate__vstd__arithmetic__internals__general_internals__lemma_induction_helper_4
        :skolemid skolem_user_crate__vstd__arithmetic__internals__general_internals__lemma_induction_helper_4
     )))
     (=>
      %%global_location_label%%4
      (forall ((i$ Poly)) (!
        (=>
         (has_type i$ INT)
         (=>
          (and
           (< (%I i$) n!)
           (%B (%%apply%%0 f! i$))
          )
          (%B (%%apply%%0 f! (I (vstd.math.sub.? i$ (I n!)))))
        ))
        :pattern ((%%apply%%0 f! i$) (%%apply%%0 f! (I (vstd.math.sub.? i$ (I n!)))))
        :qid user_crate__vstd__arithmetic__internals__general_internals__lemma_induction_helper_5
        :skolemid skolem_user_crate__vstd__arithmetic__internals__general_internals__lemma_induction_helper_5
   )))))
   :pattern ((req%vstd.arithmetic.internals.general_internals.lemma_induction_helper.
     n! f! x!
   ))
   :qid internal_req__vstd.arithmetic.internals.general_internals.lemma_induction_helper._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.general_internals.lemma_induction_helper._definition
)))
(declare-fun ens%vstd.arithmetic.internals.general_internals.lemma_induction_helper.
 (Int %%Function%% Int) Bool
)
(assert
 (forall ((n! Int) (f! %%Function%%) (x! Int)) (!
   (= (ens%vstd.arithmetic.internals.general_internals.lemma_induction_helper. n! f! x!)
    (%B (%%apply%%0 f! (I x!)))
   )
   :pattern ((ens%vstd.arithmetic.internals.general_internals.lemma_induction_helper.
     n! f! x!
   ))
   :qid internal_ens__vstd.arithmetic.internals.general_internals.lemma_induction_helper._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.general_internals.lemma_induction_helper._definition
)))

;; Function-Specs crate::vstd::arithmetic::internals::mul_internals_nonlinear::lemma_mul_is_distributive_add
(declare-fun ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_is_distributive_add.
 (Int Int Int) Bool
)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_is_distributive_add.
     x! y! z!
    ) (= (Mul x! (Add y! z!)) (Add (Mul x! y!) (Mul x! z!)))
   )
   :pattern ((ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_is_distributive_add.
     x! y! z!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_is_distributive_add._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_is_distributive_add._definition
)))

;; Function-Def crate::vstd::arithmetic::internals::mul_internals::lemma_mul_commutes
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/internals/mul_internals.rs:79:1: 79:58 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (assert
  fuel_defaults
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (= (Mul x! y!) (Mul y! x!))
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::internals::mul_internals::lemma_mul_commutes
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_commutes.)
  (forall ((x! Int) (y! Int)) (!
    (= (Mul x! y!) (Mul y! x!))
    :pattern ((Mul x! y!))
    :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_commutes_6
    :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_commutes_6
))))

;; Function-Specs crate::vstd::arithmetic::internals::mul_internals::lemma_mul_successor
(declare-fun ens%vstd.arithmetic.internals.mul_internals.lemma_mul_successor. (Int)
 Bool
)
(assert
 (forall ((no%param Int)) (!
   (= (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_successor. no%param) (and
     (forall ((x$ Int) (y$ Int)) (!
       (= (Mul (Add x$ 1) y$) (Add (Mul x$ y$) y$))
       :pattern ((Mul (Add x$ 1) y$))
       :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_successor_7
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_successor_7
     ))
     (forall ((x$ Int) (y$ Int)) (!
       (= (Mul (Sub x$ 1) y$) (Sub (Mul x$ y$) y$))
       :pattern ((Mul (Sub x$ 1) y$))
       :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_successor_8
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_successor_8
   ))))
   :pattern ((ens%vstd.arithmetic.internals.mul_internals.lemma_mul_successor. no%param))
   :qid internal_ens__vstd.arithmetic.internals.mul_internals.lemma_mul_successor._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mul_internals.lemma_mul_successor._definition
)))

;; Function-Def crate::vstd::arithmetic::internals::mul_internals::lemma_mul_successor
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/internals/mul_internals.rs:87:7: 87:31 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const x@ Int)
 (declare-const y@ Int)
 (declare-const x$1@ Int)
 (declare-const y$1@ Int)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Int)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Bool)
 (assert
  fuel_defaults
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%6 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%7 Bool)
 (assert
  (not (and
    (=>
     (ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_is_distributive_add.
      y@ x@ 1
     )
     (=>
      %%location_label%%0
      (= (Mul (Add x@ 1) y@) (Add (Mul x@ y@) y@))
    ))
    (=>
     (forall ((x$ Int) (y$ Int)) (!
       (= (Mul (Add x$ 1) y$) (Add (Mul x$ y$) y$))
       :pattern ((Mul (Add x$ 1) y$))
       :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_successor_11
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_successor_11
     ))
     (and
      (=>
       (= tmp%1 (= (Mul (Sub x$1@ 1) y$1@) (Mul y$1@ (Sub x$1@ 1))))
       (and
        (=>
         %%location_label%%1
         tmp%1
        )
        (=>
         tmp%1
         (=>
          (= tmp%2 (Sub 0 1))
          (=>
           (ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_is_distributive_add.
            y$1@ x$1@ tmp%2
           )
           (=>
            (= tmp%3 (= (Mul y$1@ (Sub x$1@ 1)) (Add (Mul y$1@ x$1@) (Mul y$1@ (Sub 0 1)))))
            (and
             (=>
              %%location_label%%2
              tmp%3
             )
             (=>
              tmp%3
              (=>
               (= tmp%4 (= (Mul (Sub 0 1) y$1@) (Sub 0 y$1@)))
               (and
                (=>
                 %%location_label%%3
                 tmp%4
                )
                (=>
                 tmp%4
                 (=>
                  (= tmp%5 (= (Add (Mul x$1@ y$1@) (Mul (Sub 0 1) y$1@)) (Sub (Mul x$1@ y$1@) y$1@)))
                  (and
                   (=>
                    %%location_label%%4
                    tmp%5
                   )
                   (=>
                    tmp%5
                    (=>
                     %%location_label%%5
                     (= (Mul (Sub x$1@ 1) y$1@) (Sub (Mul x$1@ y$1@) y$1@))
      )))))))))))))))
      (=>
       (forall ((x$ Int) (y$ Int)) (!
         (= (Mul (Sub x$ 1) y$) (Sub (Mul x$ y$) y$))
         :pattern ((Mul (Sub x$ 1) y$))
         :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_successor_12
         :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_successor_12
       ))
       (and
        (=>
         %%location_label%%6
         (forall ((x$ Int) (y$ Int)) (!
           (= (Mul (Add x$ 1) y$) (Add (Mul x$ y$) y$))
           :pattern ((Mul (Add x$ 1) y$))
           :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_successor_9
           :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_successor_9
        )))
        (=>
         %%location_label%%7
         (forall ((x$ Int) (y$ Int)) (!
           (= (Mul (Sub x$ 1) y$) (Sub (Mul x$ y$) y$))
           :pattern ((Mul (Sub x$ 1) y$))
           :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_successor_10
           :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_successor_10
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::internals::mul_internals::lemma_mul_induction
(declare-fun req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction. (%%Function%%)
 Bool
)
(declare-const %%global_location_label%%5 Bool)
(declare-const %%global_location_label%%6 Bool)
(declare-const %%global_location_label%%7 Bool)
(assert
 (forall ((f! %%Function%%)) (!
   (= (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction. f!) (and
     (=>
      %%global_location_label%%5
      (%B (%%apply%%0 f! (I 0)))
     )
     (=>
      %%global_location_label%%6
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
        :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_13
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_13
     )))
     (=>
      %%global_location_label%%7
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
        :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_14
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_14
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
      :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_15
      :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_15
   )))
   :pattern ((ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction. f!))
   :qid internal_ens__vstd.arithmetic.internals.mul_internals.lemma_mul_induction._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mul_internals.lemma_mul_induction._definition
)))

;; Function-Def crate::vstd::arithmetic::internals::mul_internals::lemma_mul_induction
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/internals/mul_internals.rs:67:1: 67:58 (#0)
(get-info :all-statistics)
(push)
 (declare-const f! %%Function%%)
 (declare-const i@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%fun%1. f!) (TYPE%fun%1. $ INT $ BOOL))
 )
 (assert
  (%B (%%apply%%0 f! (I 0)))
 )
 (assert
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
    :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_18
    :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_18
 )))
 (assert
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
    :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_19
    :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_19
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (and
    (=>
     (has_type i@ INT)
     (and
      (=>
       %%location_label%%0
       (req%vstd.arithmetic.internals.general_internals.lemma_induction_helper. 1 f! (%I i@))
      )
      (=>
       (ens%vstd.arithmetic.internals.general_internals.lemma_induction_helper. 1 f! (%I i@))
       (=>
        %%location_label%%1
        (%B (%%apply%%0 f! i@))
    ))))
    (=>
     (forall ((i$ Poly)) (!
       (=>
        (has_type i$ INT)
        (%B (%%apply%%0 f! i$))
       )
       :pattern ((%%apply%%0 f! i$))
       :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_17
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_17
     ))
     (=>
      %%location_label%%2
      (forall ((i$ Poly)) (!
        (=>
         (has_type i$ INT)
         (%B (%%apply%%0 f! i$))
        )
        :pattern ((%%apply%%0 f! i$))
        :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_16
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_16
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::internals::mul_internals::lemma_mul_distributes_plus
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_plus.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (= (Mul (Add x! y!) z!) (Add (Mul x! z!) (Mul y! z!)))
    :pattern ((Mul (Add x! y!) z!))
    :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_distributes_plus_20
    :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_distributes_plus_20
))))

;; Broadcast crate::vstd::arithmetic::internals::mul_internals::lemma_mul_distributes_minus
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_minus.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (= (Mul (Sub x! y!) z!) (Sub (Mul x! z!) (Mul y! z!)))
    :pattern ((Mul (Sub x! y!) z!))
    :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_distributes_minus_21
    :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_distributes_minus_21
))))

;; Function-Specs crate::vstd::arithmetic::internals::mul_internals::lemma_mul_induction_auto
(declare-fun req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto.
 (Int %%Function%%) Bool
)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((x! Int) (f! %%Function%%)) (!
   (= (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. x! f!) (
     =>
     %%global_location_label%%8
     (=>
      (vstd.arithmetic.internals.mul_internals.mul_auto.? (I 0))
      (and
       (and
        (%B (%%apply%%0 f! (I 0)))
        (forall ((i$ Poly)) (!
          (=>
           (has_type i$ INT)
           (=>
            (and
             (vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$)
             (%B (%%apply%%0 f! i$))
            )
            (%B (%%apply%%0 f! (I (Add (%I i$) 1))))
          ))
          :pattern ((vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$))
          :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_22
          :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_22
       )))
       (forall ((i$ Poly)) (!
         (=>
          (has_type i$ INT)
          (=>
           (and
            (vstd.arithmetic.internals.general_internals.is_le.? i$ (I 0))
            (%B (%%apply%%0 f! i$))
           )
           (%B (%%apply%%0 f! (I (Sub (%I i$) 1))))
         ))
         :pattern ((vstd.arithmetic.internals.general_internals.is_le.? i$ (I 0)))
         :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_23
         :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_23
   ))))))
   :pattern ((req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. x!
     f!
   ))
   :qid internal_req__vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto._definition
)))
(declare-fun ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto.
 (Int %%Function%%) Bool
)
(assert
 (forall ((x! Int) (f! %%Function%%)) (!
   (= (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. x! f!) (
     and
     (vstd.arithmetic.internals.mul_internals.mul_auto.? (I 0))
     (%B (%%apply%%0 f! (I x!)))
   ))
   :pattern ((ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. x!
     f!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto._definition
)))

;; Function-Def crate::vstd::arithmetic::internals::mul_internals::lemma_mul_induction_auto
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/internals/mul_internals.rs:184:1: 184:71 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const f! %%Function%%)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%fun%1. f!) (TYPE%fun%1. $ INT $ BOOL))
 )
 (assert
  (=>
   (vstd.arithmetic.internals.mul_internals.mul_auto.? (I 0))
   (and
    (and
     (%B (%%apply%%0 f! (I 0)))
     (forall ((i$ Poly)) (!
       (=>
        (has_type i$ INT)
        (=>
         (and
          (vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$)
          (%B (%%apply%%0 f! i$))
         )
         (%B (%%apply%%0 f! (I (Add (%I i$) 1))))
       ))
       :pattern ((vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$))
       :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_26
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_26
    )))
    (forall ((i$ Poly)) (!
      (=>
       (has_type i$ INT)
       (=>
        (and
         (vstd.arithmetic.internals.general_internals.is_le.? i$ (I 0))
         (%B (%%apply%%0 f! i$))
        )
        (%B (%%apply%%0 f! (I (Sub (%I i$) 1))))
      ))
      :pattern ((vstd.arithmetic.internals.general_internals.is_le.? i$ (I 0)))
      :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_27
      :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_27
 )))))
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.)
    (=>
     (= tmp%1 (forall ((i$ Poly)) (!
        (=>
         (has_type i$ INT)
         (=>
          (and
           (vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$)
           (%B (%%apply%%0 f! i$))
          )
          (%B (%%apply%%0 f! (I (Add (%I i$) 1))))
        ))
        :pattern ((%%apply%%0 f! i$))
        :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_24
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_24
     )))
     (and
      (=>
       %%location_label%%0
       tmp%1
      )
      (=>
       tmp%1
       (=>
        (= tmp%2 (forall ((i$ Poly)) (!
           (=>
            (has_type i$ INT)
            (=>
             (and
              (vstd.arithmetic.internals.general_internals.is_le.? i$ (I 0))
              (%B (%%apply%%0 f! i$))
             )
             (%B (%%apply%%0 f! (I (Sub (%I i$) 1))))
           ))
           :pattern ((%%apply%%0 f! i$))
           :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_25
           :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_25
        )))
        (and
         (=>
          %%location_label%%1
          tmp%2
         )
         (=>
          tmp%2
          (and
           (=>
            %%location_label%%2
            (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction. f!)
           )
           (=>
            (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction. f!)
            (and
             (=>
              %%location_label%%3
              (vstd.arithmetic.internals.mul_internals.mul_auto.? (I 0))
             )
             (=>
              %%location_label%%4
              (%B (%%apply%%0 f! (I x!)))
 )))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::internals::mul_internals::lemma_mul_properties_internal_prove_mul_auto
(declare-fun ens%vstd.arithmetic.internals.mul_internals.lemma_mul_properties_internal_prove_mul_auto.
 (Int) Bool
)
(assert
 (forall ((no%param Int)) (!
   (= (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_properties_internal_prove_mul_auto.
     no%param
    ) (vstd.arithmetic.internals.mul_internals.mul_auto.? (I 0))
   )
   :pattern ((ens%vstd.arithmetic.internals.mul_internals.lemma_mul_properties_internal_prove_mul_auto.
     no%param
   ))
   :qid internal_ens__vstd.arithmetic.internals.mul_internals.lemma_mul_properties_internal_prove_mul_auto._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mul_internals.lemma_mul_properties_internal_prove_mul_auto._definition
)))

;; Function-Def crate::vstd::arithmetic::internals::mul_internals::lemma_mul_properties_internal_prove_mul_auto
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/internals/mul_internals.rs:161:7: 161:56 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.)
    (=>
     (= tmp%1 (vstd.arithmetic.internals.mul_internals.mul_auto.? (I 0)))
     (and
      (=>
       %%location_label%%0
       tmp%1
      )
      (=>
       tmp%1
       (=>
        %%location_label%%1
        (vstd.arithmetic.internals.mul_internals.mul_auto.? (I 0))
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::internals::mul_internals::lemma_mul_induction_auto_forall
(declare-fun req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto_forall.
 (%%Function%%) Bool
)
(declare-const %%global_location_label%%9 Bool)
(assert
 (forall ((f! %%Function%%)) (!
   (= (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto_forall. f!)
    (=>
     %%global_location_label%%9
     (=>
      (vstd.arithmetic.internals.mul_internals.mul_auto.? (I 0))
      (and
       (and
        (%B (%%apply%%0 f! (I 0)))
        (forall ((i$ Poly)) (!
          (=>
           (has_type i$ INT)
           (=>
            (and
             (vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$)
             (%B (%%apply%%0 f! i$))
            )
            (%B (%%apply%%0 f! (I (Add (%I i$) 1))))
          ))
          :pattern ((vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$))
          :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_forall_28
          :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_forall_28
       )))
       (forall ((i$ Poly)) (!
         (=>
          (has_type i$ INT)
          (=>
           (and
            (vstd.arithmetic.internals.general_internals.is_le.? i$ (I 0))
            (%B (%%apply%%0 f! i$))
           )
           (%B (%%apply%%0 f! (I (Sub (%I i$) 1))))
         ))
         :pattern ((vstd.arithmetic.internals.general_internals.is_le.? i$ (I 0)))
         :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_forall_29
         :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_forall_29
   ))))))
   :pattern ((req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto_forall.
     f!
   ))
   :qid internal_req__vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto_forall._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto_forall._definition
)))
(declare-fun ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto_forall.
 (%%Function%%) Bool
)
(assert
 (forall ((f! %%Function%%)) (!
   (= (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto_forall. f!)
    (and
     (vstd.arithmetic.internals.mul_internals.mul_auto.? (I 0))
     (forall ((i$ Poly)) (!
       (=>
        (has_type i$ INT)
        (%B (%%apply%%0 f! i$))
       )
       :pattern ((%%apply%%0 f! i$))
       :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_forall_30
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_forall_30
   ))))
   :pattern ((ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto_forall.
     f!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto_forall._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto_forall._definition
)))

;; Function-Def crate::vstd::arithmetic::internals::mul_internals::lemma_mul_induction_auto_forall
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/internals/mul_internals.rs:216:1: 216:70 (#0)
(get-info :all-statistics)
(push)
 (declare-const f! %%Function%%)
 (declare-const i@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%fun%1. f!) (TYPE%fun%1. $ INT $ BOOL))
 )
 (assert
  (=>
   (vstd.arithmetic.internals.mul_internals.mul_auto.? (I 0))
   (and
    (and
     (%B (%%apply%%0 f! (I 0)))
     (forall ((i$ Poly)) (!
       (=>
        (has_type i$ INT)
        (=>
         (and
          (vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$)
          (%B (%%apply%%0 f! i$))
         )
         (%B (%%apply%%0 f! (I (Add (%I i$) 1))))
       ))
       :pattern ((vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$))
       :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_forall_34
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_forall_34
    )))
    (forall ((i$ Poly)) (!
      (=>
       (has_type i$ INT)
       (=>
        (and
         (vstd.arithmetic.internals.general_internals.is_le.? i$ (I 0))
         (%B (%%apply%%0 f! i$))
        )
        (%B (%%apply%%0 f! (I (Sub (%I i$) 1))))
      ))
      :pattern ((vstd.arithmetic.internals.general_internals.is_le.? i$ (I 0)))
      :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_forall_35
      :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_forall_35
 )))))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%5 Bool)
 (assert
  (not (and
    (and
     (=>
      %%location_label%%0
      (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. 0 f!)
     )
     (=>
      (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. 0 f!)
      (=>
       %%location_label%%1
       (vstd.arithmetic.internals.mul_internals.mul_auto.? (I 0))
    )))
    (=>
     (vstd.arithmetic.internals.mul_internals.mul_auto.? (I 0))
     (and
      (=>
       (has_type i@ INT)
       (and
        (=>
         %%location_label%%2
         (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. (%I i@) f!)
        )
        (=>
         (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. (%I i@) f!)
         (=>
          %%location_label%%3
          (%B (%%apply%%0 f! i@))
      ))))
      (=>
       (forall ((i$ Poly)) (!
         (=>
          (has_type i$ INT)
          (%B (%%apply%%0 f! i$))
         )
         :pattern ((%%apply%%0 f! i$))
         :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_forall_33
         :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_forall_33
       ))
       (and
        (=>
         %%location_label%%4
         (vstd.arithmetic.internals.mul_internals.mul_auto.? (I 0))
        )
        (=>
         %%location_label%%5
         (forall ((i$ Poly)) (!
           (=>
            (has_type i$ INT)
            (%B (%%apply%%0 f! i$))
           )
           :pattern ((%%apply%%0 f! i$))
           :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_forall_31
           :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_forall_31
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
