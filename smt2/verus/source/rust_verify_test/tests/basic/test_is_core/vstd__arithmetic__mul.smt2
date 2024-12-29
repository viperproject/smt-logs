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

;; MODULE 'module vstd::arithmetic::mul'

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
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_is_mul_recursive. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_basics_1. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_basics_2. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_basics_3. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_basics_4. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_nonzero. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_by_zero_is_zero. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_is_associative. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_is_commutative. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_ordering. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_inequality. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_strict_inequality. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_upper_bound. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_strict_upper_bound. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_left_inequality. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_equality_converse. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_inequality_converse. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_strict_inequality_converse. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_add. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_add_other_way. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_sub. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_sub_other_way. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_strictly_positive. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_strictly_increases. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_increases. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_nonnegative. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_unary_negation. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_cancels_negatives. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.
 FuelId
)
(declare-const fuel%vstd.arithmetic.mul.group_mul_basics. FuelId)
(declare-const fuel%vstd.arithmetic.mul.group_mul_is_distributive. FuelId)
(declare-const fuel%vstd.arithmetic.mul.group_mul_is_commutative_and_distributive.
 FuelId
)
(declare-const fuel%vstd.arithmetic.mul.group_mul_properties. FuelId)
(assert
 (distinct fuel%vstd.arithmetic.internals.general_internals.is_le. fuel%vstd.arithmetic.internals.mul_internals.mul_pos.
  fuel%vstd.arithmetic.internals.mul_internals.mul_recursive. fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_commutes.
  fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_plus. fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_minus.
  fuel%vstd.arithmetic.internals.mul_internals.mul_auto. fuel%vstd.arithmetic.mul.lemma_mul_is_mul_recursive.
  fuel%vstd.arithmetic.mul.lemma_mul_basics_1. fuel%vstd.arithmetic.mul.lemma_mul_basics_2.
  fuel%vstd.arithmetic.mul.lemma_mul_basics_3. fuel%vstd.arithmetic.mul.lemma_mul_basics_4.
  fuel%vstd.arithmetic.mul.lemma_mul_nonzero. fuel%vstd.arithmetic.mul.lemma_mul_by_zero_is_zero.
  fuel%vstd.arithmetic.mul.lemma_mul_is_associative. fuel%vstd.arithmetic.mul.lemma_mul_is_commutative.
  fuel%vstd.arithmetic.mul.lemma_mul_ordering. fuel%vstd.arithmetic.mul.lemma_mul_inequality.
  fuel%vstd.arithmetic.mul.lemma_mul_strict_inequality. fuel%vstd.arithmetic.mul.lemma_mul_upper_bound.
  fuel%vstd.arithmetic.mul.lemma_mul_strict_upper_bound. fuel%vstd.arithmetic.mul.lemma_mul_left_inequality.
  fuel%vstd.arithmetic.mul.lemma_mul_equality_converse. fuel%vstd.arithmetic.mul.lemma_mul_inequality_converse.
  fuel%vstd.arithmetic.mul.lemma_mul_strict_inequality_converse. fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_add.
  fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_add_other_way. fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_sub.
  fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_sub_other_way. fuel%vstd.arithmetic.mul.lemma_mul_strictly_positive.
  fuel%vstd.arithmetic.mul.lemma_mul_strictly_increases. fuel%vstd.arithmetic.mul.lemma_mul_increases.
  fuel%vstd.arithmetic.mul.lemma_mul_nonnegative. fuel%vstd.arithmetic.mul.lemma_mul_unary_negation.
  fuel%vstd.arithmetic.mul.lemma_mul_cancels_negatives. fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.
  fuel%vstd.arithmetic.mul.group_mul_basics. fuel%vstd.arithmetic.mul.group_mul_is_distributive.
  fuel%vstd.arithmetic.mul.group_mul_is_commutative_and_distributive. fuel%vstd.arithmetic.mul.group_mul_properties.
))
(assert
 (=>
  (fuel_bool_default fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.)
  (and
   (fuel_bool_default fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_commutes.)
   (fuel_bool_default fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_plus.)
   (fuel_bool_default fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_minus.)
)))
(assert
 (=>
  (fuel_bool_default fuel%vstd.arithmetic.mul.group_mul_basics.)
  (and
   (fuel_bool_default fuel%vstd.arithmetic.mul.lemma_mul_basics_1.)
   (fuel_bool_default fuel%vstd.arithmetic.mul.lemma_mul_basics_2.)
   (fuel_bool_default fuel%vstd.arithmetic.mul.lemma_mul_basics_3.)
   (fuel_bool_default fuel%vstd.arithmetic.mul.lemma_mul_basics_4.)
)))
(assert
 (=>
  (fuel_bool_default fuel%vstd.arithmetic.mul.group_mul_is_distributive.)
  (and
   (fuel_bool_default fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_add.)
   (fuel_bool_default fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_add_other_way.)
   (fuel_bool_default fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_sub.)
   (fuel_bool_default fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_sub_other_way.)
)))
(assert
 (=>
  (fuel_bool_default fuel%vstd.arithmetic.mul.group_mul_is_commutative_and_distributive.)
  (and
   (fuel_bool_default fuel%vstd.arithmetic.mul.lemma_mul_is_commutative.)
   (fuel_bool_default fuel%vstd.arithmetic.mul.group_mul_is_distributive.)
)))
(assert
 (=>
  (fuel_bool_default fuel%vstd.arithmetic.mul.group_mul_properties.)
  (and
   (fuel_bool_default fuel%vstd.arithmetic.mul.group_mul_basics.)
   (fuel_bool_default fuel%vstd.arithmetic.mul.lemma_mul_strict_inequality.)
   (fuel_bool_default fuel%vstd.arithmetic.mul.lemma_mul_inequality.)
   (fuel_bool_default fuel%vstd.arithmetic.mul.group_mul_is_commutative_and_distributive.)
   (fuel_bool_default fuel%vstd.arithmetic.mul.lemma_mul_is_associative.)
   (fuel_bool_default fuel%vstd.arithmetic.mul.lemma_mul_ordering.)
   (fuel_bool_default fuel%vstd.arithmetic.mul.lemma_mul_nonzero.)
   (fuel_bool_default fuel%vstd.arithmetic.mul.lemma_mul_nonnegative.)
   (fuel_bool_default fuel%vstd.arithmetic.mul.lemma_mul_strictly_increases.)
   (fuel_bool_default fuel%vstd.arithmetic.mul.lemma_mul_increases.)
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

;; Function-Specs crate::vstd::arithmetic::internals::mul_internals_nonlinear::lemma_mul_strictly_positive
(declare-fun ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_strictly_positive.
 (Int Int) Bool
)
(assert
 (forall ((x! Int) (y! Int)) (!
   (= (ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_strictly_positive.
     x! y!
    ) (=>
     (and
      (< 0 x!)
      (< 0 y!)
     )
     (< 0 (Mul x! y!))
   ))
   :pattern ((ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_strictly_positive.
     x! y!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_strictly_positive._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_strictly_positive._definition
)))

;; Function-Specs crate::vstd::arithmetic::internals::mul_internals_nonlinear::lemma_mul_nonzero
(declare-fun ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_nonzero.
 (Int Int) Bool
)
(assert
 (forall ((x! Int) (y! Int)) (!
   (= (ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_nonzero. x! y!)
    (= (not (= (Mul x! y!) 0)) (and
      (not (= x! 0))
      (not (= y! 0))
   )))
   :pattern ((ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_nonzero.
     x! y!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_nonzero._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_nonzero._definition
)))

;; Function-Specs crate::vstd::arithmetic::internals::mul_internals_nonlinear::lemma_mul_is_associative
(declare-fun ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_is_associative.
 (Int Int Int) Bool
)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_is_associative.
     x! y! z!
    ) (= (Mul x! (Mul y! z!)) (Mul (Mul x! y!) z!))
   )
   :pattern ((ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_is_associative.
     x! y! z!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_is_associative._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_is_associative._definition
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

;; Function-Specs crate::vstd::arithmetic::internals::mul_internals_nonlinear::lemma_mul_ordering
(declare-fun req%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_ordering.
 (Int Int) Bool
)
(declare-const %%global_location_label%%1 Bool)
(declare-const %%global_location_label%%2 Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((x! Int) (y! Int)) (!
   (= (req%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_ordering. x! y!)
    (and
     (=>
      %%global_location_label%%1
      (not (= x! 0))
     )
     (=>
      %%global_location_label%%2
      (not (= y! 0))
     )
     (=>
      %%global_location_label%%3
      (<= 0 (Mul x! y!))
   )))
   :pattern ((req%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_ordering.
     x! y!
   ))
   :qid internal_req__vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_ordering._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_ordering._definition
)))
(declare-fun ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_ordering.
 (Int Int) Bool
)
(assert
 (forall ((x! Int) (y! Int)) (!
   (= (ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_ordering. x! y!)
    (and
     (>= (Mul x! y!) x!)
     (>= (Mul x! y!) y!)
   ))
   :pattern ((ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_ordering.
     x! y!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_ordering._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_ordering._definition
)))

;; Function-Specs crate::vstd::arithmetic::internals::mul_internals_nonlinear::lemma_mul_strict_inequality
(declare-fun req%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_strict_inequality.
 (Int Int Int) Bool
)
(declare-const %%global_location_label%%4 Bool)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (req%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_strict_inequality.
     x! y! z!
    ) (and
     (=>
      %%global_location_label%%4
      (< x! y!)
     )
     (=>
      %%global_location_label%%5
      (> z! 0)
   )))
   :pattern ((req%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_strict_inequality.
     x! y! z!
   ))
   :qid internal_req__vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_strict_inequality._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_strict_inequality._definition
)))
(declare-fun ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_strict_inequality.
 (Int Int Int) Bool
)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_strict_inequality.
     x! y! z!
    ) (< (Mul x! z!) (Mul y! z!))
   )
   :pattern ((ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_strict_inequality.
     x! y! z!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_strict_inequality._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_strict_inequality._definition
)))

;; Function-Specs crate::vstd::arithmetic::mul::lemma_mul_is_commutative
(declare-fun ens%vstd.arithmetic.mul.lemma_mul_is_commutative. (Int Int) Bool)
(assert
 (forall ((x! Int) (y! Int)) (!
   (= (ens%vstd.arithmetic.mul.lemma_mul_is_commutative. x! y!) (= (Mul x! y!) (Mul y!
      x!
   )))
   :pattern ((ens%vstd.arithmetic.mul.lemma_mul_is_commutative. x! y!))
   :qid internal_ens__vstd.arithmetic.mul.lemma_mul_is_commutative._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.mul.lemma_mul_is_commutative._definition
)))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_is_commutative
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:134:1: 134:64 (#0)
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

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_is_commutative
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_commutative.)
  (forall ((x! Int) (y! Int)) (!
    (= (Mul x! y!) (Mul y! x!))
    :pattern ((Mul x! y!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_is_commutative_3
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_is_commutative_3
))))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_is_distributive_add
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:271:1: 271:77 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const z! Int)
 (assert
  fuel_defaults
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_is_distributive_add.
     x! y! z!
    )
    (=>
     %%location_label%%0
     (= (Mul x! (Add y! z!)) (Add (Mul x! y!) (Mul x! z!)))
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_is_distributive_add
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_add.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (= (Mul x! (Add y! z!)) (Add (Mul x! y!) (Mul x! z!)))
    :pattern ((Mul x! (Add y! z!)))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_is_distributive_add_4
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_is_distributive_add_4
))))

;; Broadcast crate::vstd::arithmetic::internals::mul_internals::lemma_mul_commutes
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_commutes.)
  (forall ((x! Int) (y! Int)) (!
    (= (Mul x! y!) (Mul y! x!))
    :pattern ((Mul x! y!))
    :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_commutes_5
    :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_commutes_5
))))

;; Broadcast crate::vstd::arithmetic::internals::mul_internals::lemma_mul_distributes_plus
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_plus.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (= (Mul (Add x! y!) z!) (Add (Mul x! z!) (Mul y! z!)))
    :pattern ((Mul (Add x! y!) z!))
    :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_distributes_plus_6
    :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_distributes_plus_6
))))

;; Broadcast crate::vstd::arithmetic::internals::mul_internals::lemma_mul_distributes_minus
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_minus.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (= (Mul (Sub x! y!) z!) (Sub (Mul x! z!) (Mul y! z!)))
    :pattern ((Mul (Sub x! y!) z!))
    :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_distributes_minus_7
    :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_distributes_minus_7
))))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_is_distributive_add_other_way
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:280:1: 280:87 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const z! Int)
 (assert
  fuel_defaults
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.)
    (=>
     %%location_label%%0
     (= (Mul (Add y! z!) x!) (Add (Mul y! x!) (Mul z! x!)))
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_is_distributive_add_other_way
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_add_other_way.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (= (Mul (Add y! z!) x!) (Add (Mul y! x!) (Mul z! x!)))
    :pattern ((Mul (Add y! z!) x!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_is_distributive_add_other_way_8
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_is_distributive_add_other_way_8
))))

;; Function-Specs crate::vstd::arithmetic::mul::lemma_mul_is_distributive_sub
(declare-fun ens%vstd.arithmetic.mul.lemma_mul_is_distributive_sub. (Int Int Int)
 Bool
)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (ens%vstd.arithmetic.mul.lemma_mul_is_distributive_sub. x! y! z!) (= (Mul x! (Sub
       y! z!
      )
     ) (Sub (Mul x! y!) (Mul x! z!))
   ))
   :pattern ((ens%vstd.arithmetic.mul.lemma_mul_is_distributive_sub. x! y! z!))
   :qid internal_ens__vstd.arithmetic.mul.lemma_mul_is_distributive_sub._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.mul.lemma_mul_is_distributive_sub._definition
)))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_is_distributive_sub
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:290:1: 290:77 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const z! Int)
 (assert
  fuel_defaults
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.)
    (=>
     %%location_label%%0
     (= (Mul x! (Sub y! z!)) (Sub (Mul x! y!) (Mul x! z!)))
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_is_distributive_sub
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_sub.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (= (Mul x! (Sub y! z!)) (Sub (Mul x! y!) (Mul x! z!)))
    :pattern ((Mul x! (Sub y! z!)))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_is_distributive_sub_9
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_is_distributive_sub_9
))))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_is_distributive_sub_other_way
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:301:1: 301:87 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const z! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (ens%vstd.arithmetic.mul.lemma_mul_is_distributive_sub. x! y! z!)
    (=>
     (= tmp%1 (Sub y! z!))
     (=>
      (ens%vstd.arithmetic.mul.lemma_mul_is_commutative. x! tmp%1)
      (=>
       (ens%vstd.arithmetic.mul.lemma_mul_is_commutative. x! y!)
       (=>
        (ens%vstd.arithmetic.mul.lemma_mul_is_commutative. x! z!)
        (=>
         %%location_label%%0
         (= (Mul (Sub y! z!) x!) (Sub (Mul y! x!) (Mul z! x!)))
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_is_distributive_sub_other_way
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_sub_other_way.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (= (Mul (Sub y! z!) x!) (Sub (Mul y! x!) (Mul z! x!)))
    :pattern ((Mul (Sub y! z!) x!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_is_distributive_sub_other_way_10
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_is_distributive_sub_other_way_10
))))

;; Function-Specs crate::vstd::arithmetic::internals::mul_internals::lemma_mul_induction_auto
(declare-fun req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto.
 (Int %%Function%%) Bool
)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((x! Int) (f! %%Function%%)) (!
   (= (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. x! f!) (
     =>
     %%global_location_label%%6
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
          :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_11
          :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_11
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
         :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_12
         :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_auto_12
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

;; Function-Specs crate::vstd::arithmetic::mul::lemma_mul_inequality
(declare-fun req%vstd.arithmetic.mul.lemma_mul_inequality. (Int Int Int) Bool)
(declare-const %%global_location_label%%7 Bool)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (req%vstd.arithmetic.mul.lemma_mul_inequality. x! y! z!) (and
     (=>
      %%global_location_label%%7
      (<= x! y!)
     )
     (=>
      %%global_location_label%%8
      (>= z! 0)
   )))
   :pattern ((req%vstd.arithmetic.mul.lemma_mul_inequality. x! y! z!))
   :qid internal_req__vstd.arithmetic.mul.lemma_mul_inequality._definition
   :skolemid skolem_internal_req__vstd.arithmetic.mul.lemma_mul_inequality._definition
)))
(declare-fun ens%vstd.arithmetic.mul.lemma_mul_inequality. (Int Int Int) Bool)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (ens%vstd.arithmetic.mul.lemma_mul_inequality. x! y! z!) (<= (Mul x! z!) (Mul y!
      z!
   )))
   :pattern ((ens%vstd.arithmetic.mul.lemma_mul_inequality. x! y! z!))
   :qid internal_ens__vstd.arithmetic.mul.lemma_mul_inequality._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.mul.lemma_mul_inequality._definition
)))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_inequality
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:164:1: 164:68 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const z! Int)
 (declare-const tmp%1 %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (<= x! y!)
 )
 (assert
  (>= z! 0)
 )
 (declare-fun %%lambda%%0 (Int Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Int) (u$ Poly)) (!
    (= (%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2) u$) (B (=>
       (>= (%I u$) %%hole%%0)
       (<= (Mul %%hole%%1 (%I u$)) (Mul %%hole%%2 (%I u$)))
    )))
    :pattern ((%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2) u$))
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= tmp%1 (mk_fun (%%lambda%%0 0 x! y!)))
    (and
     (=>
      %%location_label%%0
      (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. z! tmp%1)
     )
     (=>
      (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. z! tmp%1)
      (=>
       %%location_label%%1
       (<= (Mul x! z!) (Mul y! z!))
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_inequality
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_inequality.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (=>
     (and
      (<= x! y!)
      (>= z! 0)
     )
     (<= (Mul x! z!) (Mul y! z!))
    )
    :pattern ((Mul x! z!) (Mul y! z!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_inequality_13
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_inequality_13
))))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_basics_1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:64:1: 64:50 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (assert
  fuel_defaults
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (= (Mul 0 x!) 0)
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_basics_1
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_basics_1.)
  (forall ((x! Int)) (!
    (= (Mul 0 x!) 0)
    :pattern ((Mul 0 x!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_basics_1_14
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_basics_1_14
))))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_basics_2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:72:1: 72:50 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (assert
  fuel_defaults
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (= (Mul x! 0) 0)
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_basics_2
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_basics_2.)
  (forall ((x! Int)) (!
    (= (Mul x! 0) 0)
    :pattern ((Mul x! 0))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_basics_2_15
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_basics_2_15
))))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_basics_3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:80:1: 80:50 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (assert
  fuel_defaults
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (= (Mul x! 1) x!)
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_basics_3
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_basics_3.)
  (forall ((x! Int)) (!
    (= (Mul x! 1) x!)
    :pattern ((Mul x! 1))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_basics_3_16
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_basics_3_16
))))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_basics_4
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:88:1: 88:50 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (assert
  fuel_defaults
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (= (Mul 1 x!) x!)
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_basics_4
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_basics_4.)
  (forall ((x! Int)) (!
    (= (Mul 1 x!) x!)
    :pattern ((Mul 1 x!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_basics_4_17
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_basics_4_17
))))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_strictly_positive
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:358:1: 358:67 (#0)
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
    (ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_strictly_positive.
     x! y!
    )
    (=>
     %%location_label%%0
     (=>
      (and
       (< 0 x!)
       (< 0 y!)
      )
      (< 0 (Mul x! y!))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_strictly_positive
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_strictly_positive.)
  (forall ((x! Int) (y! Int)) (!
    (=>
     (and
      (< 0 x!)
      (< 0 y!)
     )
     (< 0 (Mul x! y!))
    )
    :pattern ((Mul x! y!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_strictly_positive_18
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_strictly_positive_18
))))

;; Function-Specs crate::vstd::arithmetic::mul::lemma_mul_is_associative
(declare-fun ens%vstd.arithmetic.mul.lemma_mul_is_associative. (Int Int Int) Bool)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (ens%vstd.arithmetic.mul.lemma_mul_is_associative. x! y! z!) (= (Mul x! (Mul y! z!))
     (Mul (Mul x! y!) z!)
   ))
   :pattern ((ens%vstd.arithmetic.mul.lemma_mul_is_associative. x! y! z!))
   :qid internal_ens__vstd.arithmetic.mul.lemma_mul_is_associative._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.mul.lemma_mul_is_associative._definition
)))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_is_associative
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:123:1: 123:72 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const z! Int)
 (assert
  fuel_defaults
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_is_associative. x!
     y! z!
    )
    (=>
     %%location_label%%0
     (= (Mul x! (Mul y! z!)) (Mul (Mul x! y!) z!))
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_is_associative
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_associative.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (= (Mul x! (Mul y! z!)) (Mul (Mul x! y!) z!))
    :pattern ((Mul x! (Mul y! z!)))
    :pattern ((Mul (Mul x! y!) z!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_is_associative_19
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_is_associative_19
))))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_increases
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:378:1: 378:59 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const tmp%1 %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 x!)
 )
 (assert
  (< 0 y!)
 )
 (declare-fun %%lambda%%1 (Int Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Int) (u$ Poly)) (!
    (= (%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1 %%hole%%2) u$) (B (=>
       (< %%hole%%0 (%I u$))
       (<= %%hole%%2 (Mul (%I u$) %%hole%%1))
    )))
    :pattern ((%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1 %%hole%%2) u$))
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= tmp%1 (mk_fun (%%lambda%%1 0 y! y!)))
    (and
     (=>
      %%location_label%%0
      (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. x! tmp%1)
     )
     (=>
      (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. x! tmp%1)
      (=>
       %%location_label%%1
       (<= y! (Mul x! y!))
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_increases
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_increases.)
  (forall ((x! Int) (y! Int)) (!
    (=>
     (and
      (< 0 x!)
      (< 0 y!)
     )
     (<= y! (Mul x! y!))
    )
    :pattern ((Mul x! y!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_increases_20
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_increases_20
))))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_nonnegative
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:390:1: 390:61 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const tmp%1 %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 x!)
 )
 (assert
  (<= 0 y!)
 )
 (declare-fun %%lambda%%2 (Int Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Int) (u$ Poly)) (!
    (= (%%apply%%0 (%%lambda%%2 %%hole%%0 %%hole%%1 %%hole%%2) u$) (B (=>
       (<= %%hole%%0 (%I u$))
       (<= %%hole%%2 (Mul (%I u$) %%hole%%1))
    )))
    :pattern ((%%apply%%0 (%%lambda%%2 %%hole%%0 %%hole%%1 %%hole%%2) u$))
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= tmp%1 (mk_fun (%%lambda%%2 0 y! 0)))
    (and
     (=>
      %%location_label%%0
      (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. x! tmp%1)
     )
     (=>
      (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. x! tmp%1)
      (=>
       %%location_label%%1
       (<= 0 (Mul x! y!))
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_nonnegative
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_nonnegative.)
  (forall ((x! Int) (y! Int)) (!
    (=>
     (and
      (<= 0 x!)
      (<= 0 y!)
     )
     (<= 0 (Mul x! y!))
    )
    :pattern ((Mul x! y!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_nonnegative_21
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_nonnegative_21
))))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_unary_negation
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:402:1: 402:64 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const tmp%1 %%Function%%)
 (assert
  fuel_defaults
 )
 (declare-fun %%lambda%%3 (Int Int Int Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Int) (%%hole%%3 Int) (%%hole%%4
     Int
    ) (u$ Poly)
   ) (!
    (= (%%apply%%0 (%%lambda%%3 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4) u$)
     (B (let
       ((tmp%%$ (Sub %%hole%%1 (Mul (%I u$) %%hole%%0))))
       (and
        (= (Mul (Sub %%hole%%2 (%I u$)) %%hole%%3) tmp%%$)
        (= tmp%%$ (Mul (%I u$) %%hole%%4))
    ))))
    :pattern ((%%apply%%0 (%%lambda%%3 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4)
      u$
 )))))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= tmp%1 (mk_fun (%%lambda%%3 y! 0 0 y! (Sub 0 y!))))
    (and
     (=>
      %%location_label%%0
      (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. x! tmp%1)
     )
     (=>
      (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. x! tmp%1)
      (=>
       %%location_label%%1
       (let
        ((tmp%%$ (Sub 0 (Mul x! y!))))
        (and
         (= (Mul (Sub 0 x!) y!) tmp%%$)
         (= tmp%%$ (Mul x! (Sub 0 y!)))
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_unary_negation
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_unary_negation.)
  (forall ((x! Int) (y! Int)) (!
    (let
     ((tmp%%$ (Sub 0 (Mul x! y!))))
     (and
      (= (Mul (Sub 0 x!) y!) tmp%%$)
      (= tmp%%$ (Mul x! (Sub 0 y!)))
    ))
    :pattern ((Mul (Sub 0 x!) y!))
    :pattern ((Mul x! (Sub 0 y!)))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_unary_negation_22
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_unary_negation_22
))))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_equality_converse
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:234:1: 234:75 (#0)
(get-info :all-statistics)
(push)
 (declare-const m! Int)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const tmp%1 %%Function%%)
 (declare-const tmp%2 %%Function%%)
 (declare-const tmp%3 %%Function%%)
 (declare-const tmp%4 %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (not (= m! 0))
 )
 (assert
  (= (Mul m! x!) (Mul m! y!))
 )
 (declare-fun %%lambda%%4 (Int Bool Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Bool) (%%hole%%2 Int) (%%hole%%3 Int) (u$ Poly))
   (!
    (= (%%apply%%0 (%%lambda%%4 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) u$) (B (=>
       (and
        %%hole%%1
        (< %%hole%%0 (%I u$))
       )
       (> (Mul %%hole%%2 (%I u$)) (Mul %%hole%%3 (%I u$)))
    )))
    :pattern ((%%apply%%0 (%%lambda%%4 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) u$))
 )))
 (declare-fun %%lambda%%5 (Int Bool Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Bool) (%%hole%%2 Int) (%%hole%%3 Int) (u$ Poly))
   (!
    (= (%%apply%%0 (%%lambda%%5 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) u$) (B (=>
       (and
        %%hole%%1
        (< %%hole%%0 (%I u$))
       )
       (< (Mul %%hole%%2 (%I u$)) (Mul %%hole%%3 (%I u$)))
    )))
    :pattern ((%%apply%%0 (%%lambda%%5 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) u$))
 )))
 (declare-fun %%lambda%%6 (Int Bool Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Bool) (%%hole%%2 Int) (%%hole%%3 Int) (u$ Poly))
   (!
    (= (%%apply%%0 (%%lambda%%6 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) u$) (B (=>
       (and
        %%hole%%1
        (> %%hole%%0 (%I u$))
       )
       (< (Mul %%hole%%2 (%I u$)) (Mul %%hole%%3 (%I u$)))
    )))
    :pattern ((%%apply%%0 (%%lambda%%6 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) u$))
 )))
 (declare-fun %%lambda%%7 (Int Bool Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Bool) (%%hole%%2 Int) (%%hole%%3 Int) (u$ Poly))
   (!
    (= (%%apply%%0 (%%lambda%%7 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) u$) (B (=>
       (and
        %%hole%%1
        (> %%hole%%0 (%I u$))
       )
       (> (Mul %%hole%%2 (%I u$)) (Mul %%hole%%3 (%I u$)))
    )))
    :pattern ((%%apply%%0 (%%lambda%%7 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) u$))
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 (assert
  (not (=>
    (= tmp%1 (mk_fun (%%lambda%%4 0 (> x! y!) x! y!)))
    (and
     (=>
      %%location_label%%0
      (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. m! tmp%1)
     )
     (=>
      (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. m! tmp%1)
      (=>
       (= tmp%2 (mk_fun (%%lambda%%5 0 (< x! y!) x! y!)))
       (and
        (=>
         %%location_label%%1
         (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. m! tmp%2)
        )
        (=>
         (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. m! tmp%2)
         (=>
          (= tmp%3 (mk_fun (%%lambda%%6 0 (> x! y!) x! y!)))
          (and
           (=>
            %%location_label%%2
            (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. m! tmp%3)
           )
           (=>
            (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. m! tmp%3)
            (=>
             (= tmp%4 (mk_fun (%%lambda%%7 0 (< x! y!) x! y!)))
             (and
              (=>
               %%location_label%%3
               (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. m! tmp%4)
              )
              (=>
               (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. m! tmp%4)
               (=>
                %%location_label%%4
                (= x! y!)
 )))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_equality_converse
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_equality_converse.)
  (forall ((m! Int) (x! Int) (y! Int)) (!
    (=>
     (and
      (not (= m! 0))
      (= (Mul m! x!) (Mul m! y!))
     )
     (= x! y!)
    )
    :pattern ((Mul m! x!) (Mul m! y!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_equality_converse_23
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_equality_converse_23
))))

;; Function-Specs crate::vstd::arithmetic::mul::lemma_mul_basics
(declare-fun ens%vstd.arithmetic.mul.lemma_mul_basics. (Int) Bool)
(assert
 (forall ((x! Int)) (!
   (= (ens%vstd.arithmetic.mul.lemma_mul_basics. x!) (and
     (= (Mul 0 x!) 0)
     (= (Mul x! 0) 0)
     (= (Mul x! 1) x!)
     (= (Mul 1 x!) x!)
   ))
   :pattern ((ens%vstd.arithmetic.mul.lemma_mul_basics. x!))
   :qid internal_ens__vstd.arithmetic.mul.lemma_mul_basics._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.mul.lemma_mul_basics._definition
)))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_basics
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:53:1: 53:38 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (assert
  fuel_defaults
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (= (Mul 0 x!) 0)
    )
    (and
     (=>
      %%location_label%%1
      (= (Mul x! 0) 0)
     )
     (and
      (=>
       %%location_label%%2
       (= (Mul x! 1) x!)
      )
      (=>
       %%location_label%%3
       (= (Mul 1 x!) x!)
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_strictly_increases
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:366:1: 366:68 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const tmp%1 %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (< 1 x!)
 )
 (assert
  (< 0 y!)
 )
 (declare-fun %%lambda%%8 (Int Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Int) (u$ Poly)) (!
    (= (%%apply%%0 (%%lambda%%8 %%hole%%0 %%hole%%1 %%hole%%2) u$) (B (=>
       (< %%hole%%0 (%I u$))
       (< %%hole%%2 (Mul (%I u$) %%hole%%1))
    )))
    :pattern ((%%apply%%0 (%%lambda%%8 %%hole%%0 %%hole%%1 %%hole%%2) u$))
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= tmp%1 (mk_fun (%%lambda%%8 1 y! y!)))
    (and
     (=>
      %%location_label%%0
      (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. x! tmp%1)
     )
     (=>
      (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. x! tmp%1)
      (=>
       %%location_label%%1
       (< y! (Mul x! y!))
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_strictly_increases
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_strictly_increases.)
  (forall ((x! Int) (y! Int)) (!
    (=>
     (and
      (< 1 x!)
      (< 0 y!)
     )
     (< y! (Mul x! y!))
    )
    :pattern ((Mul x! y!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_strictly_increases_24
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_strictly_increases_24
))))

;; Function-Specs crate::vstd::arithmetic::mul::lemma_mul_is_mul_pos
(declare-fun req%vstd.arithmetic.mul.lemma_mul_is_mul_pos. (Int Int) Bool)
(declare-const %%global_location_label%%9 Bool)
(assert
 (forall ((x! Int) (y! Int)) (!
   (= (req%vstd.arithmetic.mul.lemma_mul_is_mul_pos. x! y!) (=>
     %%global_location_label%%9
     (>= x! 0)
   ))
   :pattern ((req%vstd.arithmetic.mul.lemma_mul_is_mul_pos. x! y!))
   :qid internal_req__vstd.arithmetic.mul.lemma_mul_is_mul_pos._definition
   :skolemid skolem_internal_req__vstd.arithmetic.mul.lemma_mul_is_mul_pos._definition
)))
(declare-fun ens%vstd.arithmetic.mul.lemma_mul_is_mul_pos. (Int Int) Bool)
(assert
 (forall ((x! Int) (y! Int)) (!
   (= (ens%vstd.arithmetic.mul.lemma_mul_is_mul_pos. x! y!) (= (Mul x! y!) (vstd.arithmetic.internals.mul_internals.mul_pos.?
      (I x!) (I y!)
   )))
   :pattern ((ens%vstd.arithmetic.mul.lemma_mul_is_mul_pos. x! y!))
   :qid internal_ens__vstd.arithmetic.mul.lemma_mul_is_mul_pos._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.mul.lemma_mul_is_mul_pos._definition
)))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_is_mul_pos
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:43:1: 43:50 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const tmp%1 %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (>= x! 0)
 )
 (declare-fun %%lambda%%9 (Int Int Poly) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Poly) (u$ Poly)) (!
    (= (%%apply%%0 (%%lambda%%9 %%hole%%0 %%hole%%1 %%hole%%2) u$) (B (=>
       (>= (%I u$) %%hole%%0)
       (= (Mul (%I u$) %%hole%%1) (vstd.arithmetic.internals.mul_internals.mul_pos.? u$ %%hole%%2))
    )))
    :pattern ((%%apply%%0 (%%lambda%%9 %%hole%%0 %%hole%%1 %%hole%%2) u$))
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.mul_pos.)
    (=>
     (= tmp%1 (mk_fun (%%lambda%%9 0 y! (I y!))))
     (and
      (=>
       %%location_label%%0
       (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. x! tmp%1)
      )
      (=>
       (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. x! tmp%1)
       (=>
        %%location_label%%1
        (= (Mul x! y!) (vstd.arithmetic.internals.mul_internals.mul_pos.? (I x!) (I y!)))
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_is_mul_recursive
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:25:1: 25:66 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Int)
 (declare-const tmp%4 Int)
 (declare-const tmp%5 Int)
 (declare-const tmp%6 Bool)
 (assert
  fuel_defaults
 )
 (declare-const %%switch_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%6 Bool)
 (assert
  (not (or
    (and
     (=>
      (>= x! 0)
      (and
       (=>
        %%location_label%%0
        (req%vstd.arithmetic.mul.lemma_mul_is_mul_pos. x! y!)
       )
       (=>
        (ens%vstd.arithmetic.mul.lemma_mul_is_mul_pos. x! y!)
        (=>
         (= tmp%1 (= (Mul x! y!) (vstd.arithmetic.internals.mul_internals.mul_pos.? (I x!) (I
             y!
         ))))
         (and
          (=>
           %%location_label%%1
           tmp%1
          )
          (=>
           tmp%1
           (=>
            (= tmp%2 (= (Mul x! y!) (vstd.arithmetic.internals.mul_internals.mul_recursive.? (I x!)
               (I y!)
            )))
            (and
             (=>
              %%location_label%%2
              tmp%2
             )
             (=>
              tmp%2
              %%switch_label%%0
     )))))))))
     (=>
      (not (>= x! 0))
      (=>
       (= tmp%3 (Sub 0 x!))
       (and
        (=>
         %%location_label%%3
         (req%vstd.arithmetic.mul.lemma_mul_is_mul_pos. tmp%3 y!)
        )
        (=>
         (ens%vstd.arithmetic.mul.lemma_mul_is_mul_pos. tmp%3 y!)
         (and
          (=>
           (= tmp%4 (Sub 0 1))
           (=>
            (= tmp%5 (Sub 0 x!))
            (=>
             (ens%vstd.arithmetic.mul.lemma_mul_is_associative. tmp%4 tmp%5 y!)
             (=>
              %%location_label%%4
              (= (Mul x! y!) (Mul (Sub 0 1) (Mul (Sub 0 x!) y!)))
          ))))
          (=>
           (= (Mul x! y!) (Mul (Sub 0 1) (Mul (Sub 0 x!) y!)))
           (=>
            (= tmp%6 (= (Mul x! y!) (vstd.arithmetic.internals.mul_internals.mul_recursive.? (I x!)
               (I y!)
            )))
            (and
             (=>
              %%location_label%%5
              tmp%6
             )
             (=>
              tmp%6
              %%switch_label%%0
    ))))))))))
    (and
     (not %%switch_label%%0)
     (=>
      %%location_label%%6
      (= (Mul x! y!) (vstd.arithmetic.internals.mul_internals.mul_recursive.? (I x!) (I y!)))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_is_mul_recursive
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_mul_recursive.)
  (forall ((x! Int) (y! Int)) (!
    (= (Mul x! y!) (vstd.arithmetic.internals.mul_internals.mul_recursive.? (I x!) (I y!)))
    :pattern ((Mul x! y!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_is_mul_recursive_25
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_is_mul_recursive_25
))))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_nonzero
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:102:1: 102:57 (#0)
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
    (ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_nonzero. x! y!)
    (=>
     %%location_label%%0
     (= (not (= (Mul x! y!) 0)) (and
       (not (= x! 0))
       (not (= y! 0))
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_nonzero
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_nonzero.)
  (forall ((x! Int) (y! Int)) (!
    (= (not (= (Mul x! y!) 0)) (and
      (not (= x! 0))
      (not (= y! 0))
    ))
    :pattern ((Mul x! y!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_nonzero_27
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_nonzero_27
))))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_by_zero_is_zero
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:110:1: 110:57 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const x@ Int)
 (assert
  fuel_defaults
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     (ens%vstd.arithmetic.mul.lemma_mul_basics. x@)
     (=>
      %%location_label%%0
      (and
       (= (Mul x@ 0) 0)
       (= (Mul 0 x@) 0)
    )))
    (=>
     (forall ((x$ Int)) (!
       (and
        (= (Mul x$ 0) 0)
        (= (Mul 0 x$) 0)
       )
       :pattern ((Mul x$ 0))
       :pattern ((Mul 0 x$))
       :qid user_crate__vstd__arithmetic__mul__lemma_mul_by_zero_is_zero_29
       :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_by_zero_is_zero_29
     ))
     (=>
      %%location_label%%1
      (and
       (= (Mul x! 0) 0)
       (= (Mul 0 x!) 0)
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_by_zero_is_zero
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_by_zero_is_zero.)
  (forall ((x! Int)) (!
    (and
     (= (Mul x! 0) 0)
     (= (Mul 0 x!) 0)
    )
    :pattern ((Mul x! 0))
    :pattern ((Mul 0 x!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_by_zero_is_zero_28
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_by_zero_is_zero_28
))))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_ordering
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:143:1: 143:58 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (assert
  fuel_defaults
 )
 (assert
  (not (= x! 0))
 )
 (assert
  (not (= y! 0))
 )
 (assert
  (<= 0 (Mul x! y!))
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_ordering. x! y!)
    )
    (=>
     (ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_ordering. x! y!)
     (=>
      %%location_label%%1
      (and
       (>= (Mul x! y!) x!)
       (>= (Mul x! y!) y!)
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_ordering
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_ordering.)
  (forall ((x! Int) (y! Int)) (!
    (=>
     (and
      (and
       (not (= x! 0))
       (not (= y! 0))
      )
      (<= 0 (Mul x! y!))
     )
     (and
      (>= (Mul x! y!) x!)
      (>= (Mul x! y!) y!)
    ))
    :pattern ((Mul x! y!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_ordering_30
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_ordering_30
))))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_strict_inequality
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:175:1: 175:75 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const z! Int)
 (assert
  fuel_defaults
 )
 (assert
  (< x! y!)
 )
 (assert
  (> z! 0)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_strict_inequality.
      x! y! z!
    ))
    (=>
     (ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_strict_inequality.
      x! y! z!
     )
     (=>
      %%location_label%%1
      (< (Mul x! z!) (Mul y! z!))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_strict_inequality
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_strict_inequality.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (=>
     (and
      (< x! y!)
      (> z! 0)
     )
     (< (Mul x! z!) (Mul y! z!))
    )
    :pattern ((Mul x! z!) (Mul y! z!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_strict_inequality_31
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_strict_inequality_31
))))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_upper_bound
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:188:1: 188:87 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const xbound! Int)
 (declare-const y! Int)
 (declare-const ybound! Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= x! xbound!)
 )
 (assert
  (<= y! ybound!)
 )
 (assert
  (<= 0 x!)
 )
 (assert
  (<= 0 y!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.mul.lemma_mul_inequality. x! xbound! y!)
    )
    (=>
     (ens%vstd.arithmetic.mul.lemma_mul_inequality. x! xbound! y!)
     (and
      (=>
       %%location_label%%1
       (req%vstd.arithmetic.mul.lemma_mul_inequality. y! ybound! xbound!)
      )
      (=>
       (ens%vstd.arithmetic.mul.lemma_mul_inequality. y! ybound! xbound!)
       (=>
        %%location_label%%2
        (<= (Mul x! y!) (Mul xbound! ybound!))
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_upper_bound
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_upper_bound.)
  (forall ((x! Int) (xbound! Int) (y! Int) (ybound! Int)) (!
    (=>
     (and
      (and
       (and
        (<= x! xbound!)
        (<= y! ybound!)
       )
       (<= 0 x!)
      )
      (<= 0 y!)
     )
     (<= (Mul x! y!) (Mul xbound! ybound!))
    )
    :pattern ((Mul x! y!) (Mul xbound! ybound!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_upper_bound_32
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_upper_bound_32
))))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_strict_upper_bound
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:205:1: 205:94 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const xbound! Int)
 (declare-const y! Int)
 (declare-const ybound! Int)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Int)
 (declare-const tmp%3 Int)
 (assert
  fuel_defaults
 )
 (assert
  (< x! xbound!)
 )
 (assert
  (< y! ybound!)
 )
 (assert
  (< 0 x!)
 )
 (assert
  (< 0 y!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (= tmp%1 (Sub xbound! 1))
    (and
     (=>
      %%location_label%%0
      (req%vstd.arithmetic.mul.lemma_mul_inequality. x! tmp%1 y!)
     )
     (=>
      (ens%vstd.arithmetic.mul.lemma_mul_inequality. x! tmp%1 y!)
      (=>
       (= tmp%2 (Sub ybound! 1))
       (=>
        (= tmp%3 (Sub xbound! 1))
        (and
         (=>
          %%location_label%%1
          (req%vstd.arithmetic.mul.lemma_mul_inequality. y! tmp%2 tmp%3)
         )
         (=>
          (ens%vstd.arithmetic.mul.lemma_mul_inequality. y! tmp%2 tmp%3)
          (=>
           %%location_label%%2
           (<= (Mul x! y!) (Mul (Sub xbound! 1) (Sub ybound! 1)))
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_strict_upper_bound
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_strict_upper_bound.)
  (forall ((x! Int) (xbound! Int) (y! Int) (ybound! Int)) (!
    (=>
     (and
      (and
       (and
        (< x! xbound!)
        (< y! ybound!)
       )
       (< 0 x!)
      )
      (< 0 y!)
     )
     (<= (Mul x! y!) (Mul (Sub xbound! 1) (Sub ybound! 1)))
    )
    :pattern ((Mul x! y!) (Mul (Sub xbound! 1) (Sub ybound! 1)))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_strict_upper_bound_33
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_strict_upper_bound_33
))))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_left_inequality
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:221:1: 221:73 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const z! Int)
 (declare-const tmp%1 %%Function%%)
 (declare-const tmp%2 %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 x!)
 )
 (declare-fun %%lambda%%10 (Int Int Int Bool) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Int) (%%hole%%3 Bool) (u$ Poly))
   (!
    (= (%%apply%%0 (%%lambda%%10 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) u$) (B (=>
       (> (%I u$) %%hole%%0)
       (=>
        %%hole%%3
        (<= (Mul (%I u$) %%hole%%1) (Mul (%I u$) %%hole%%2))
    ))))
    :pattern ((%%apply%%0 (%%lambda%%10 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) u$))
 )))
 (declare-fun %%lambda%%11 (Int Int Int Bool) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Int) (%%hole%%3 Bool) (u$ Poly))
   (!
    (= (%%apply%%0 (%%lambda%%11 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) u$) (B (=>
       (> (%I u$) %%hole%%0)
       (=>
        %%hole%%3
        (< (Mul (%I u$) %%hole%%1) (Mul (%I u$) %%hole%%2))
    ))))
    :pattern ((%%apply%%0 (%%lambda%%11 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) u$))
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (= tmp%1 (mk_fun (%%lambda%%10 0 y! z! (<= y! z!))))
    (and
     (=>
      %%location_label%%0
      (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. x! tmp%1)
     )
     (=>
      (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. x! tmp%1)
      (=>
       (= tmp%2 (mk_fun (%%lambda%%11 0 y! z! (< y! z!))))
       (and
        (=>
         %%location_label%%1
         (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. x! tmp%2)
        )
        (=>
         (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. x! tmp%2)
         (and
          (=>
           %%location_label%%2
           (=>
            (<= y! z!)
            (<= (Mul x! y!) (Mul x! z!))
          ))
          (=>
           %%location_label%%3
           (=>
            (< y! z!)
            (< (Mul x! y!) (Mul x! z!))
 )))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_left_inequality
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_left_inequality.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (=>
     (< 0 x!)
     (and
      (=>
       (<= y! z!)
       (<= (Mul x! y!) (Mul x! z!))
      )
      (=>
       (< y! z!)
       (< (Mul x! y!) (Mul x! z!))
    )))
    :pattern ((Mul x! y!) (Mul x! z!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_left_inequality_34
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_left_inequality_34
))))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_inequality_converse
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:248:1: 248:77 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const z! Int)
 (declare-const tmp%1 %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (<= (Mul x! z!) (Mul y! z!))
 )
 (assert
  (> z! 0)
 )
 (declare-fun %%lambda%%12 (Int Int Int Bool) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Int) (%%hole%%3 Bool) (u$ Poly))
   (!
    (= (%%apply%%0 (%%lambda%%12 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) u$) (B (=>
       (and
        (<= (Mul %%hole%%0 (%I u$)) (Mul %%hole%%1 (%I u$)))
        (> (%I u$) %%hole%%2)
       )
       %%hole%%3
    )))
    :pattern ((%%apply%%0 (%%lambda%%12 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) u$))
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= tmp%1 (mk_fun (%%lambda%%12 x! y! 0 (<= x! y!))))
    (and
     (=>
      %%location_label%%0
      (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. z! tmp%1)
     )
     (=>
      (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. z! tmp%1)
      (=>
       %%location_label%%1
       (<= x! y!)
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_inequality_converse
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_inequality_converse.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (=>
     (and
      (<= (Mul x! z!) (Mul y! z!))
      (> z! 0)
     )
     (<= x! y!)
    )
    :pattern ((Mul x! z!) (Mul y! z!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_inequality_converse_35
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_inequality_converse_35
))))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_strict_inequality_converse
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:259:1: 259:84 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const z! Int)
 (declare-const tmp%1 %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (< (Mul x! z!) (Mul y! z!))
 )
 (assert
  (>= z! 0)
 )
 (declare-fun %%lambda%%13 (Int Int Int Bool) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Int) (%%hole%%3 Bool) (u$ Poly))
   (!
    (= (%%apply%%0 (%%lambda%%13 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) u$) (B (=>
       (and
        (< (Mul %%hole%%0 (%I u$)) (Mul %%hole%%1 (%I u$)))
        (>= (%I u$) %%hole%%2)
       )
       %%hole%%3
    )))
    :pattern ((%%apply%%0 (%%lambda%%13 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) u$))
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= tmp%1 (mk_fun (%%lambda%%13 x! y! 0 (< x! y!))))
    (and
     (=>
      %%location_label%%0
      (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. z! tmp%1)
     )
     (=>
      (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. z! tmp%1)
      (=>
       %%location_label%%1
       (< x! y!)
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_strict_inequality_converse
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_strict_inequality_converse.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (=>
     (and
      (< (Mul x! z!) (Mul y! z!))
      (>= z! 0)
     )
     (< x! y!)
    )
    :pattern ((Mul x! z!) (Mul y! z!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_strict_inequality_converse_36
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_strict_inequality_converse_36
))))

;; Function-Specs crate::vstd::arithmetic::mul::lemma_mul_is_distributive
(declare-fun ens%vstd.arithmetic.mul.lemma_mul_is_distributive. (Int Int Int) Bool)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (ens%vstd.arithmetic.mul.lemma_mul_is_distributive. x! y! z!) (and
     (= (Mul x! (Add y! z!)) (Add (Mul x! y!) (Mul x! z!)))
     (= (Mul x! (Sub y! z!)) (Sub (Mul x! y!) (Mul x! z!)))
     (= (Mul (Add y! z!) x!) (Add (Mul y! x!) (Mul z! x!)))
     (= (Mul (Sub y! z!) x!) (Sub (Mul y! x!) (Mul z! x!)))
     (= (Mul x! (Add y! z!)) (Mul (Add y! z!) x!))
     (= (Mul x! (Sub y! z!)) (Mul (Sub y! z!) x!))
     (= (Mul x! y!) (Mul y! x!))
     (= (Mul x! z!) (Mul z! x!))
   ))
   :pattern ((ens%vstd.arithmetic.mul.lemma_mul_is_distributive. x! y! z!))
   :qid internal_ens__vstd.arithmetic.mul.lemma_mul_is_distributive._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.mul.lemma_mul_is_distributive._definition
)))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_is_distributive
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:327:7: 327:59 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const z! Int)
 (assert
  fuel_defaults
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%5 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%6 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%7 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.mul.group_mul_is_commutative_and_distributive.)
    (and
     (=>
      %%location_label%%0
      (= (Mul x! (Add y! z!)) (Add (Mul x! y!) (Mul x! z!)))
     )
     (and
      (=>
       %%location_label%%1
       (= (Mul x! (Sub y! z!)) (Sub (Mul x! y!) (Mul x! z!)))
      )
      (and
       (=>
        %%location_label%%2
        (= (Mul (Add y! z!) x!) (Add (Mul y! x!) (Mul z! x!)))
       )
       (and
        (=>
         %%location_label%%3
         (= (Mul (Sub y! z!) x!) (Sub (Mul y! x!) (Mul z! x!)))
        )
        (and
         (=>
          %%location_label%%4
          (= (Mul x! (Add y! z!)) (Mul (Add y! z!) x!))
         )
         (and
          (=>
           %%location_label%%5
           (= (Mul x! (Sub y! z!)) (Mul (Sub y! z!) x!))
          )
          (and
           (=>
            %%location_label%%6
            (= (Mul x! y!) (Mul y! x!))
           )
           (=>
            %%location_label%%7
            (= (Mul x! z!) (Mul z! x!))
 )))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_cancels_negatives
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:413:1: 413:67 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const tmp%1 %%Function%%)
 (assert
  fuel_defaults
 )
 (declare-fun %%lambda%%14 (Int Int Int Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Int) (%%hole%%3 Int) (%%hole%%4
     Int
    ) (u$ Poly)
   ) (!
    (= (%%apply%%0 (%%lambda%%14 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4) u$)
     (B (let
       ((tmp%%$ (Sub %%hole%%1 (Mul (%I u$) %%hole%%0))))
       (and
        (= (Mul (Sub %%hole%%2 (%I u$)) %%hole%%3) tmp%%$)
        (= tmp%%$ (Mul (%I u$) %%hole%%4))
    ))))
    :pattern ((%%apply%%0 (%%lambda%%14 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4)
      u$
 )))))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= tmp%1 (mk_fun (%%lambda%%14 y! 0 0 y! (Sub 0 y!))))
    (and
     (=>
      %%location_label%%0
      (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. x! tmp%1)
     )
     (=>
      (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. x! tmp%1)
      (=>
       %%location_label%%1
       (= (Mul x! y!) (Mul (Sub 0 x!) (Sub 0 y!)))
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_cancels_negatives
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_cancels_negatives.)
  (forall ((x! Int) (y! Int)) (!
    (= (Mul x! y!) (Mul (Sub 0 x!) (Sub 0 y!)))
    :pattern ((Mul x! y!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_cancels_negatives_37
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_cancels_negatives_37
))))

;; Function-Specs crate::vstd::arithmetic::mul::lemma_mul_properties_prove_mul_properties_auto
(declare-fun ens%vstd.arithmetic.mul.lemma_mul_properties_prove_mul_properties_auto.
 (Int) Bool
)
(assert
 (forall ((no%param Int)) (!
   (= (ens%vstd.arithmetic.mul.lemma_mul_properties_prove_mul_properties_auto. no%param)
    (and
     (forall ((x$ Int) (y$ Int)) (!
       (= (Mul x$ y$) (Mul y$ x$))
       :pattern ((Mul x$ y$))
       :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_38
       :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_38
     ))
     (forall ((x$ Int)) (!
       (let
        ((tmp%%$ (Mul 1 x$)))
        (and
         (= (Mul x$ 1) tmp%%$)
         (= tmp%%$ x$)
       ))
       :pattern ((Mul x$ 1))
       :pattern ((Mul 1 x$))
       :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_39
       :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_39
     ))
     (forall ((x$ Int) (y$ Int) (z$ Int)) (!
       (=>
        (and
         (< x$ y$)
         (> z$ 0)
        )
        (< (Mul x$ z$) (Mul y$ z$))
       )
       :pattern ((Mul x$ z$) (Mul y$ z$))
       :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_40
       :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_40
     ))
     (forall ((x$ Int) (y$ Int) (z$ Int)) (!
       (=>
        (and
         (<= x$ y$)
         (>= z$ 0)
        )
        (<= (Mul x$ z$) (Mul y$ z$))
       )
       :pattern ((Mul x$ z$) (Mul y$ z$))
       :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_41
       :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_41
     ))
     (forall ((x$ Int) (y$ Int) (z$ Int)) (!
       (= (Mul x$ (Add y$ z$)) (Add (Mul x$ y$) (Mul x$ z$)))
       :pattern ((Mul x$ (Add y$ z$)))
       :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_42
       :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_42
     ))
     (forall ((x$ Int) (y$ Int) (z$ Int)) (!
       (= (Mul x$ (Sub y$ z$)) (Sub (Mul x$ y$) (Mul x$ z$)))
       :pattern ((Mul x$ (Sub y$ z$)))
       :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_43
       :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_43
     ))
     (forall ((x$ Int) (y$ Int) (z$ Int)) (!
       (= (Mul (Add y$ z$) x$) (Add (Mul y$ x$) (Mul z$ x$)))
       :pattern ((Mul (Add y$ z$) x$))
       :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_44
       :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_44
     ))
     (forall ((x$ Int) (y$ Int) (z$ Int)) (!
       (= (Mul (Sub y$ z$) x$) (Sub (Mul y$ x$) (Mul z$ x$)))
       :pattern ((Mul (Sub y$ z$) x$))
       :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_45
       :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_45
     ))
     (forall ((x$ Int) (y$ Int) (z$ Int)) (!
       (= (Mul x$ (Mul y$ z$)) (Mul (Mul x$ y$) z$))
       :pattern ((Mul x$ (Mul y$ z$)))
       :pattern ((Mul (Mul x$ y$) z$))
       :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_46
       :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_46
     ))
     (forall ((x$ Int) (y$ Int)) (!
       (= (not (= (Mul x$ y$) 0)) (and
         (not (= x$ 0))
         (not (= y$ 0))
       ))
       :pattern ((Mul x$ y$))
       :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_47
       :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_47
     ))
     (forall ((x$ Int) (y$ Int)) (!
       (=>
        (and
         (<= 0 x$)
         (<= 0 y$)
        )
        (<= 0 (Mul x$ y$))
       )
       :pattern ((Mul x$ y$))
       :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_48
       :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_48
     ))
     (forall ((x$ Int) (y$ Int)) (!
       (=>
        (and
         (and
          (< 0 x$)
          (< 0 y$)
         )
         (<= 0 (Mul x$ y$))
        )
        (and
         (<= x$ (Mul x$ y$))
         (<= y$ (Mul x$ y$))
       ))
       :pattern ((Mul x$ y$))
       :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_49
       :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_49
     ))
     (forall ((x$ Int) (y$ Int)) (!
       (=>
        (and
         (< 1 x$)
         (< 0 y$)
        )
        (< y$ (Mul x$ y$))
       )
       :pattern ((Mul x$ y$))
       :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_50
       :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_50
     ))
     (forall ((x$ Int) (y$ Int)) (!
       (=>
        (and
         (< 0 x$)
         (< 0 y$)
        )
        (<= y$ (Mul x$ y$))
       )
       :pattern ((Mul x$ y$))
       :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_51
       :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_51
     ))
     (forall ((x$ Int) (y$ Int)) (!
       (=>
        (and
         (< 0 x$)
         (< 0 y$)
        )
        (< 0 (Mul x$ y$))
       )
       :pattern ((Mul x$ y$))
       :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_52
       :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_52
   ))))
   :pattern ((ens%vstd.arithmetic.mul.lemma_mul_properties_prove_mul_properties_auto.
     no%param
   ))
   :qid internal_ens__vstd.arithmetic.mul.lemma_mul_properties_prove_mul_properties_auto._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.mul.lemma_mul_properties_prove_mul_properties_auto._definition
)))

;; Function-Def crate::vstd::arithmetic::mul::lemma_mul_properties_prove_mul_properties_auto
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/mul.rs:434:7: 434:58 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (assert
  fuel_defaults
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%5 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%6 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%7 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%8 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%9 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%10 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%11 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%12 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%13 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%14 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.mul.group_mul_properties.)
    (and
     (=>
      %%location_label%%0
      (forall ((x$ Int) (y$ Int)) (!
        (= (Mul x$ y$) (Mul y$ x$))
        :pattern ((Mul x$ y$))
        :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_53
        :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_53
     )))
     (and
      (=>
       %%location_label%%1
       (forall ((x$ Int)) (!
         (let
          ((tmp%%$ (Mul 1 x$)))
          (and
           (= (Mul x$ 1) tmp%%$)
           (= tmp%%$ x$)
         ))
         :pattern ((Mul x$ 1))
         :pattern ((Mul 1 x$))
         :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_54
         :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_54
      )))
      (and
       (=>
        %%location_label%%2
        (forall ((x$ Int) (y$ Int) (z$ Int)) (!
          (=>
           (and
            (< x$ y$)
            (> z$ 0)
           )
           (< (Mul x$ z$) (Mul y$ z$))
          )
          :pattern ((Mul x$ z$) (Mul y$ z$))
          :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_55
          :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_55
       )))
       (and
        (=>
         %%location_label%%3
         (forall ((x$ Int) (y$ Int) (z$ Int)) (!
           (=>
            (and
             (<= x$ y$)
             (>= z$ 0)
            )
            (<= (Mul x$ z$) (Mul y$ z$))
           )
           :pattern ((Mul x$ z$) (Mul y$ z$))
           :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_56
           :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_56
        )))
        (and
         (=>
          %%location_label%%4
          (forall ((x$ Int) (y$ Int) (z$ Int)) (!
            (= (Mul x$ (Add y$ z$)) (Add (Mul x$ y$) (Mul x$ z$)))
            :pattern ((Mul x$ (Add y$ z$)))
            :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_57
            :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_57
         )))
         (and
          (=>
           %%location_label%%5
           (forall ((x$ Int) (y$ Int) (z$ Int)) (!
             (= (Mul x$ (Sub y$ z$)) (Sub (Mul x$ y$) (Mul x$ z$)))
             :pattern ((Mul x$ (Sub y$ z$)))
             :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_58
             :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_58
          )))
          (and
           (=>
            %%location_label%%6
            (forall ((x$ Int) (y$ Int) (z$ Int)) (!
              (= (Mul (Add y$ z$) x$) (Add (Mul y$ x$) (Mul z$ x$)))
              :pattern ((Mul (Add y$ z$) x$))
              :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_59
              :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_59
           )))
           (and
            (=>
             %%location_label%%7
             (forall ((x$ Int) (y$ Int) (z$ Int)) (!
               (= (Mul (Sub y$ z$) x$) (Sub (Mul y$ x$) (Mul z$ x$)))
               :pattern ((Mul (Sub y$ z$) x$))
               :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_60
               :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_60
            )))
            (and
             (=>
              %%location_label%%8
              (forall ((x$ Int) (y$ Int) (z$ Int)) (!
                (= (Mul x$ (Mul y$ z$)) (Mul (Mul x$ y$) z$))
                :pattern ((Mul x$ (Mul y$ z$)))
                :pattern ((Mul (Mul x$ y$) z$))
                :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_61
                :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_61
             )))
             (and
              (=>
               %%location_label%%9
               (forall ((x$ Int) (y$ Int)) (!
                 (= (not (= (Mul x$ y$) 0)) (and
                   (not (= x$ 0))
                   (not (= y$ 0))
                 ))
                 :pattern ((Mul x$ y$))
                 :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_62
                 :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_62
              )))
              (and
               (=>
                %%location_label%%10
                (forall ((x$ Int) (y$ Int)) (!
                  (=>
                   (and
                    (<= 0 x$)
                    (<= 0 y$)
                   )
                   (<= 0 (Mul x$ y$))
                  )
                  :pattern ((Mul x$ y$))
                  :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_63
                  :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_63
               )))
               (and
                (=>
                 %%location_label%%11
                 (forall ((x$ Int) (y$ Int)) (!
                   (=>
                    (and
                     (and
                      (< 0 x$)
                      (< 0 y$)
                     )
                     (<= 0 (Mul x$ y$))
                    )
                    (and
                     (<= x$ (Mul x$ y$))
                     (<= y$ (Mul x$ y$))
                   ))
                   :pattern ((Mul x$ y$))
                   :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_64
                   :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_64
                )))
                (and
                 (=>
                  %%location_label%%12
                  (forall ((x$ Int) (y$ Int)) (!
                    (=>
                     (and
                      (< 1 x$)
                      (< 0 y$)
                     )
                     (< y$ (Mul x$ y$))
                    )
                    :pattern ((Mul x$ y$))
                    :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_65
                    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_65
                 )))
                 (and
                  (=>
                   %%location_label%%13
                   (forall ((x$ Int) (y$ Int)) (!
                     (=>
                      (and
                       (< 0 x$)
                       (< 0 y$)
                      )
                      (<= y$ (Mul x$ y$))
                     )
                     :pattern ((Mul x$ y$))
                     :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_66
                     :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_66
                  )))
                  (=>
                   %%location_label%%14
                   (forall ((x$ Int) (y$ Int)) (!
                     (=>
                      (and
                       (< 0 x$)
                       (< 0 y$)
                      )
                      (< 0 (Mul x$ y$))
                     )
                     :pattern ((Mul x$ y$))
                     :qid user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_67
                     :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_properties_prove_mul_properties_auto_67
 ))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
