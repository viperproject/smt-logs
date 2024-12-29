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

;; MODULE 'module vstd::arithmetic::div_mod'

;; Fuel
(declare-const fuel%vstd.arithmetic.internals.general_internals.is_le. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mod_internals_nonlinear.modulus. FuelId)
(declare-const fuel%vstd.arithmetic.internals.div_internals.div_pos. FuelId)
(declare-const fuel%vstd.arithmetic.internals.div_internals.div_recursive. FuelId)
(declare-const fuel%vstd.arithmetic.internals.div_internals.div_auto_plus. FuelId)
(declare-const fuel%vstd.arithmetic.internals.div_internals.div_auto_minus. FuelId)
(declare-const fuel%vstd.arithmetic.internals.div_internals.div_auto. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mod_internals.mod_recursive. FuelId)
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
(declare-const fuel%vstd.arithmetic.internals.mul_internals.mul_auto. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_div_is_div_recursive. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_div_basics_1. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_div_basics_2. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_div_basics_3. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_div_basics_4. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_div_basics_5. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_small_div_converse. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_div_is_ordered_by_denominator. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_div_is_strictly_smaller. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_dividing_sums. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_div_pos_is_pos. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_div_plus_one. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_div_minus_one. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_basic_div. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_div_is_ordered. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_div_decreases. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_div_nonincreasing. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_breakdown. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_remainder_upper. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_remainder_lower. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_remainder. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_div_denominator. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mul_hoist_inequality. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_indistinguishable_quotients. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_div_multiples_vanish_quotient. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_round_down. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_div_multiples_vanish_fancy. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_div_multiples_vanish. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_div_by_multiple. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_div_by_multiple_is_strongly_ordered.
 FuelId
)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_multiply_divide_le. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_multiply_divide_lt. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_hoist_over_denominator. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_part_bound1. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mod_is_mod_recursive. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mod_self_0. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mod_twice. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mod_division_less_than_divisor.
 FuelId
)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mod_decreases. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mod_is_zero. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mod_multiples_basic. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mod_add_multiples_vanish. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mod_sub_multiples_vanish. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mod_multiples_vanish. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mod_subtraction. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_add_mod_noop. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_add_mod_noop_right. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_sub_mod_noop. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_sub_mod_noop_right. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mod_adds. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_mod.
 FuelId
)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_div.
 FuelId
)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mod_pos_bound. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mod_bound. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mul_mod_noop_left. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mul_mod_noop_right. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mul_mod_noop_general. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mul_mod_noop. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mod_equivalence. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.is_mod_equivalent. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mod_mul_equivalent. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mod_ordering. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mod_mod. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_part_bound2. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mod_breakdown. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_basics_1. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_basics_2. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_basics_3. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_basics_4. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_is_associative. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_is_commutative. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_inequality. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_equality_converse. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_add. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_add_other_way. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_sub. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_sub_other_way. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_strictly_positive. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_strictly_increases. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_increases. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_nonnegative. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_unary_negation. FuelId)
(declare-const fuel%vstd.math.add. FuelId)
(declare-const fuel%vstd.math.sub. FuelId)
(declare-const fuel%vstd.math.div. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.
 FuelId
)
(declare-const fuel%vstd.arithmetic.div_mod.group_div_basics. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.group_mod_basics. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.group_mod_properties. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.group_fundamental_div_mod_converse. FuelId)
(declare-const fuel%vstd.arithmetic.mul.group_mul_basics. FuelId)
(declare-const fuel%vstd.arithmetic.mul.group_mul_is_distributive. FuelId)
(assert
 (distinct fuel%vstd.arithmetic.internals.general_internals.is_le. fuel%vstd.arithmetic.internals.mod_internals_nonlinear.modulus.
  fuel%vstd.arithmetic.internals.div_internals.div_pos. fuel%vstd.arithmetic.internals.div_internals.div_recursive.
  fuel%vstd.arithmetic.internals.div_internals.div_auto_plus. fuel%vstd.arithmetic.internals.div_internals.div_auto_minus.
  fuel%vstd.arithmetic.internals.div_internals.div_auto. fuel%vstd.arithmetic.internals.mod_internals.mod_recursive.
  fuel%vstd.arithmetic.internals.mod_internals.mod_auto_plus. fuel%vstd.arithmetic.internals.mod_internals.mod_auto_minus.
  fuel%vstd.arithmetic.internals.mod_internals.mod_auto. fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_commutes.
  fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_plus. fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_minus.
  fuel%vstd.arithmetic.internals.mul_internals.mul_auto. fuel%vstd.arithmetic.div_mod.lemma_div_is_div_recursive.
  fuel%vstd.arithmetic.div_mod.lemma_div_basics_1. fuel%vstd.arithmetic.div_mod.lemma_div_basics_2.
  fuel%vstd.arithmetic.div_mod.lemma_div_basics_3. fuel%vstd.arithmetic.div_mod.lemma_div_basics_4.
  fuel%vstd.arithmetic.div_mod.lemma_div_basics_5. fuel%vstd.arithmetic.div_mod.lemma_small_div_converse.
  fuel%vstd.arithmetic.div_mod.lemma_div_is_ordered_by_denominator. fuel%vstd.arithmetic.div_mod.lemma_div_is_strictly_smaller.
  fuel%vstd.arithmetic.div_mod.lemma_dividing_sums. fuel%vstd.arithmetic.div_mod.lemma_div_pos_is_pos.
  fuel%vstd.arithmetic.div_mod.lemma_div_plus_one. fuel%vstd.arithmetic.div_mod.lemma_div_minus_one.
  fuel%vstd.arithmetic.div_mod.lemma_basic_div. fuel%vstd.arithmetic.div_mod.lemma_div_is_ordered.
  fuel%vstd.arithmetic.div_mod.lemma_div_decreases. fuel%vstd.arithmetic.div_mod.lemma_div_nonincreasing.
  fuel%vstd.arithmetic.div_mod.lemma_breakdown. fuel%vstd.arithmetic.div_mod.lemma_remainder_upper.
  fuel%vstd.arithmetic.div_mod.lemma_remainder_lower. fuel%vstd.arithmetic.div_mod.lemma_remainder.
  fuel%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. fuel%vstd.arithmetic.div_mod.lemma_div_denominator.
  fuel%vstd.arithmetic.div_mod.lemma_mul_hoist_inequality. fuel%vstd.arithmetic.div_mod.lemma_indistinguishable_quotients.
  fuel%vstd.arithmetic.div_mod.lemma_div_multiples_vanish_quotient. fuel%vstd.arithmetic.div_mod.lemma_round_down.
  fuel%vstd.arithmetic.div_mod.lemma_div_multiples_vanish_fancy. fuel%vstd.arithmetic.div_mod.lemma_div_multiples_vanish.
  fuel%vstd.arithmetic.div_mod.lemma_div_by_multiple. fuel%vstd.arithmetic.div_mod.lemma_div_by_multiple_is_strongly_ordered.
  fuel%vstd.arithmetic.div_mod.lemma_multiply_divide_le. fuel%vstd.arithmetic.div_mod.lemma_multiply_divide_lt.
  fuel%vstd.arithmetic.div_mod.lemma_hoist_over_denominator. fuel%vstd.arithmetic.div_mod.lemma_part_bound1.
  fuel%vstd.arithmetic.div_mod.lemma_mod_is_mod_recursive. fuel%vstd.arithmetic.div_mod.lemma_mod_self_0.
  fuel%vstd.arithmetic.div_mod.lemma_mod_twice. fuel%vstd.arithmetic.div_mod.lemma_mod_division_less_than_divisor.
  fuel%vstd.arithmetic.div_mod.lemma_mod_decreases. fuel%vstd.arithmetic.div_mod.lemma_mod_is_zero.
  fuel%vstd.arithmetic.div_mod.lemma_mod_multiples_basic. fuel%vstd.arithmetic.div_mod.lemma_mod_add_multiples_vanish.
  fuel%vstd.arithmetic.div_mod.lemma_mod_sub_multiples_vanish. fuel%vstd.arithmetic.div_mod.lemma_mod_multiples_vanish.
  fuel%vstd.arithmetic.div_mod.lemma_mod_subtraction. fuel%vstd.arithmetic.div_mod.lemma_add_mod_noop.
  fuel%vstd.arithmetic.div_mod.lemma_add_mod_noop_right. fuel%vstd.arithmetic.div_mod.lemma_sub_mod_noop.
  fuel%vstd.arithmetic.div_mod.lemma_sub_mod_noop_right. fuel%vstd.arithmetic.div_mod.lemma_mod_adds.
  fuel%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_mod. fuel%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_div.
  fuel%vstd.arithmetic.div_mod.lemma_mod_pos_bound. fuel%vstd.arithmetic.div_mod.lemma_mod_bound.
  fuel%vstd.arithmetic.div_mod.lemma_mul_mod_noop_left. fuel%vstd.arithmetic.div_mod.lemma_mul_mod_noop_right.
  fuel%vstd.arithmetic.div_mod.lemma_mul_mod_noop_general. fuel%vstd.arithmetic.div_mod.lemma_mul_mod_noop.
  fuel%vstd.arithmetic.div_mod.lemma_mod_equivalence. fuel%vstd.arithmetic.div_mod.is_mod_equivalent.
  fuel%vstd.arithmetic.div_mod.lemma_mod_mul_equivalent. fuel%vstd.arithmetic.div_mod.lemma_mod_ordering.
  fuel%vstd.arithmetic.div_mod.lemma_mod_mod. fuel%vstd.arithmetic.div_mod.lemma_part_bound2.
  fuel%vstd.arithmetic.div_mod.lemma_mod_breakdown. fuel%vstd.arithmetic.mul.lemma_mul_basics_1.
  fuel%vstd.arithmetic.mul.lemma_mul_basics_2. fuel%vstd.arithmetic.mul.lemma_mul_basics_3.
  fuel%vstd.arithmetic.mul.lemma_mul_basics_4. fuel%vstd.arithmetic.mul.lemma_mul_is_associative.
  fuel%vstd.arithmetic.mul.lemma_mul_is_commutative. fuel%vstd.arithmetic.mul.lemma_mul_inequality.
  fuel%vstd.arithmetic.mul.lemma_mul_equality_converse. fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_add.
  fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_add_other_way. fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_sub.
  fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_sub_other_way. fuel%vstd.arithmetic.mul.lemma_mul_strictly_positive.
  fuel%vstd.arithmetic.mul.lemma_mul_strictly_increases. fuel%vstd.arithmetic.mul.lemma_mul_increases.
  fuel%vstd.arithmetic.mul.lemma_mul_nonnegative. fuel%vstd.arithmetic.mul.lemma_mul_unary_negation.
  fuel%vstd.math.add. fuel%vstd.math.sub. fuel%vstd.math.div. fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.
  fuel%vstd.arithmetic.div_mod.group_div_basics. fuel%vstd.arithmetic.div_mod.group_mod_basics.
  fuel%vstd.arithmetic.div_mod.group_mod_properties. fuel%vstd.arithmetic.div_mod.group_fundamental_div_mod_converse.
  fuel%vstd.arithmetic.mul.group_mul_basics. fuel%vstd.arithmetic.mul.group_mul_is_distributive.
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
  (fuel_bool_default fuel%vstd.arithmetic.div_mod.group_div_basics.)
  (and
   (fuel_bool_default fuel%vstd.arithmetic.div_mod.lemma_div_basics_1.)
   (fuel_bool_default fuel%vstd.arithmetic.div_mod.lemma_div_basics_2.)
   (fuel_bool_default fuel%vstd.arithmetic.div_mod.lemma_div_basics_3.)
   (fuel_bool_default fuel%vstd.arithmetic.div_mod.lemma_div_basics_4.)
   (fuel_bool_default fuel%vstd.arithmetic.div_mod.lemma_div_basics_5.)
)))
(assert
 (=>
  (fuel_bool_default fuel%vstd.arithmetic.div_mod.group_mod_basics.)
  (and
   (fuel_bool_default fuel%vstd.arithmetic.div_mod.lemma_mod_self_0.)
   (fuel_bool_default fuel%vstd.arithmetic.div_mod.lemma_mod_twice.)
)))
(assert
 (=>
  (fuel_bool_default fuel%vstd.arithmetic.div_mod.group_mod_properties.)
  (and
   (fuel_bool_default fuel%vstd.arithmetic.div_mod.group_mod_basics.)
   (fuel_bool_default fuel%vstd.arithmetic.div_mod.lemma_mod_division_less_than_divisor.)
)))
(assert
 (=>
  (fuel_bool_default fuel%vstd.arithmetic.div_mod.group_fundamental_div_mod_converse.)
  (and
   (fuel_bool_default fuel%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_mod.)
   (fuel_bool_default fuel%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_div.)
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

;; Function-Decl crate::vstd::arithmetic::internals::mod_internals_nonlinear::modulus
(declare-fun vstd.arithmetic.internals.mod_internals_nonlinear.modulus.? (Poly Poly)
 Int
)

;; Function-Decl crate::vstd::arithmetic::internals::div_internals::div_pos
(declare-fun vstd.arithmetic.internals.div_internals.div_pos.? (Poly Poly) Int)
(declare-fun vstd.arithmetic.internals.div_internals.rec%div_pos.? (Poly Poly Fuel)
 Int
)

;; Function-Decl crate::vstd::arithmetic::internals::div_internals::div_recursive
(declare-fun vstd.arithmetic.internals.div_internals.div_recursive.? (Poly Poly) Int)

;; Function-Decl crate::vstd::arithmetic::internals::div_internals::div_auto_plus
(declare-fun vstd.arithmetic.internals.div_internals.div_auto_plus.? (Poly) Bool)

;; Function-Decl crate::vstd::arithmetic::internals::div_internals::div_auto_minus
(declare-fun vstd.arithmetic.internals.div_internals.div_auto_minus.? (Poly) Bool)

;; Function-Decl crate::vstd::arithmetic::internals::mod_internals::mod_auto_plus
(declare-fun vstd.arithmetic.internals.mod_internals.mod_auto_plus.? (Poly) Bool)

;; Function-Decl crate::vstd::arithmetic::internals::mod_internals::mod_auto_minus
(declare-fun vstd.arithmetic.internals.mod_internals.mod_auto_minus.? (Poly) Bool)

;; Function-Decl crate::vstd::arithmetic::internals::mod_internals::mod_auto
(declare-fun vstd.arithmetic.internals.mod_internals.mod_auto.? (Poly) Bool)

;; Function-Decl crate::vstd::arithmetic::internals::div_internals::div_auto
(declare-fun vstd.arithmetic.internals.div_internals.div_auto.? (Poly) Bool)

;; Function-Decl crate::vstd::arithmetic::internals::mod_internals::mod_recursive
(declare-fun vstd.arithmetic.internals.mod_internals.mod_recursive.? (Poly Poly) Int)
(declare-fun vstd.arithmetic.internals.mod_internals.rec%mod_recursive.? (Poly Poly
  Fuel
 ) Int
)

;; Function-Decl crate::vstd::arithmetic::internals::mul_internals::mul_auto
(declare-fun vstd.arithmetic.internals.mul_internals.mul_auto.? (Poly) Bool)

;; Function-Decl crate::vstd::arithmetic::div_mod::is_mod_equivalent
(declare-fun vstd.arithmetic.div_mod.is_mod_equivalent.? (Poly Poly Poly) Bool)

;; Function-Decl crate::vstd::math::add
(declare-fun vstd.math.add.? (Poly Poly) Int)

;; Function-Decl crate::vstd::math::sub
(declare-fun vstd.math.sub.? (Poly Poly) Int)

;; Function-Decl crate::vstd::math::div
(declare-fun vstd.math.div.? (Poly Poly) Int)

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

;; Function-Axioms crate::vstd::arithmetic::internals::mod_internals_nonlinear::modulus
(assert
 (fuel_bool_default fuel%vstd.arithmetic.internals.mod_internals_nonlinear.modulus.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.mod_internals_nonlinear.modulus.)
  (forall ((x! Poly) (y! Poly)) (!
    (= (vstd.arithmetic.internals.mod_internals_nonlinear.modulus.? x! y!) (EucMod (%I x!)
      (%I y!)
    ))
    :pattern ((vstd.arithmetic.internals.mod_internals_nonlinear.modulus.? x! y!))
    :qid internal_vstd.arithmetic.internals.mod_internals_nonlinear.modulus.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.mod_internals_nonlinear.modulus.?_definition
))))

;; Function-Specs crate::vstd::arithmetic::internals::div_internals::div_pos
(declare-fun req%vstd.arithmetic.internals.div_internals.div_pos. (Poly Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((x! Poly) (d! Poly)) (!
   (= (req%vstd.arithmetic.internals.div_internals.div_pos. x! d!) (and
     (=>
      %%global_location_label%%0
      (> (%I d!) 0)
     )
     (=>
      %%global_location_label%%1
      (> (%I d!) 0)
   )))
   :pattern ((req%vstd.arithmetic.internals.div_internals.div_pos. x! d!))
   :qid internal_req__vstd.arithmetic.internals.div_internals.div_pos._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.div_internals.div_pos._definition
)))

;; Function-Axioms crate::vstd::arithmetic::internals::div_internals::div_pos
(declare-const fuel_nat%vstd.arithmetic.internals.div_internals.div_pos. Fuel)
(assert
 (forall ((x! Poly) (d! Poly) (fuel% Fuel)) (!
   (= (vstd.arithmetic.internals.div_internals.rec%div_pos.? x! d! fuel%) (vstd.arithmetic.internals.div_internals.rec%div_pos.?
     x! d! zero
   ))
   :pattern ((vstd.arithmetic.internals.div_internals.rec%div_pos.? x! d! fuel%))
   :qid internal_vstd.arithmetic.internals.div_internals.div_pos._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.arithmetic.internals.div_internals.div_pos._fuel_to_zero_definition
)))
(assert
 (forall ((x! Poly) (d! Poly) (fuel% Fuel)) (!
   (=>
    (and
     (has_type x! INT)
     (has_type d! INT)
     (> (%I d!) 0)
    )
    (= (vstd.arithmetic.internals.div_internals.rec%div_pos.? x! d! (succ fuel%)) (ite
      (< (%I x!) 0)
      (Add (Sub 0 1) (vstd.arithmetic.internals.div_internals.rec%div_pos.? (I (Add (%I x!)
          (%I d!)
         )
        ) d! fuel%
      ))
      (ite
       (< (%I x!) (%I d!))
       0
       (Add 1 (vstd.arithmetic.internals.div_internals.rec%div_pos.? (I (Sub (%I x!) (%I d!)))
         d! fuel%
   ))))))
   :pattern ((vstd.arithmetic.internals.div_internals.rec%div_pos.? x! d! (succ fuel%)))
   :qid internal_vstd.arithmetic.internals.div_internals.div_pos._fuel_to_body_definition
   :skolemid skolem_internal_vstd.arithmetic.internals.div_internals.div_pos._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.div_internals.div_pos.)
  (forall ((x! Poly) (d! Poly)) (!
    (=>
     (and
      (has_type x! INT)
      (has_type d! INT)
      (> (%I d!) 0)
     )
     (= (vstd.arithmetic.internals.div_internals.div_pos.? x! d!) (vstd.arithmetic.internals.div_internals.rec%div_pos.?
       x! d! (succ fuel_nat%vstd.arithmetic.internals.div_internals.div_pos.)
    )))
    :pattern ((vstd.arithmetic.internals.div_internals.div_pos.? x! d!))
    :qid internal_vstd.arithmetic.internals.div_internals.div_pos.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.div_internals.div_pos.?_definition
))))

;; Function-Specs crate::vstd::arithmetic::internals::div_internals::div_recursive
(declare-fun req%vstd.arithmetic.internals.div_internals.div_recursive. (Poly Poly)
 Bool
)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((x! Poly) (d! Poly)) (!
   (= (req%vstd.arithmetic.internals.div_internals.div_recursive. x! d!) (=>
     %%global_location_label%%2
     (not (= (%I d!) 0))
   ))
   :pattern ((req%vstd.arithmetic.internals.div_internals.div_recursive. x! d!))
   :qid internal_req__vstd.arithmetic.internals.div_internals.div_recursive._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.div_internals.div_recursive._definition
)))

;; Function-Axioms crate::vstd::arithmetic::internals::div_internals::div_recursive
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.div_internals.div_recursive.)
  (forall ((x! Poly) (d! Poly)) (!
    (= (vstd.arithmetic.internals.div_internals.div_recursive.? x! d!) (ite
      (> (%I d!) 0)
      (vstd.arithmetic.internals.div_internals.div_pos.? x! d!)
      (Mul (Sub 0 1) (vstd.arithmetic.internals.div_internals.div_pos.? x! (I (Mul (Sub 0 1)
          (%I d!)
    ))))))
    :pattern ((vstd.arithmetic.internals.div_internals.div_recursive.? x! d!))
    :qid internal_vstd.arithmetic.internals.div_internals.div_recursive.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.div_internals.div_recursive.?_definition
))))

;; Function-Axioms crate::vstd::arithmetic::internals::div_internals::div_auto_plus
(assert
 (fuel_bool_default fuel%vstd.arithmetic.internals.div_internals.div_auto_plus.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.div_internals.div_auto_plus.)
  (forall ((n! Poly)) (!
    (= (vstd.arithmetic.internals.div_internals.div_auto_plus.? n!) (forall ((x$ Int) (y$
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
          (= (EucDiv (Add x$ y$) (%I n!)) (Add (EucDiv x$ (%I n!)) (EucDiv y$ (%I n!))))
         )
         (and
          (and
           (<= (%I n!) z$)
           (< z$ (Add (%I n!) (%I n!)))
          )
          (= (EucDiv (Add x$ y$) (%I n!)) (Add (Add (EucDiv x$ (%I n!)) (EucDiv y$ (%I n!)))
            1
       )))))
       :pattern ((EucDiv (Add x$ y$) (%I n!)))
       :qid user_crate__vstd__arithmetic__internals__div_internals__div_auto_plus_0
       :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__div_auto_plus_0
    )))
    :pattern ((vstd.arithmetic.internals.div_internals.div_auto_plus.? n!))
    :qid internal_vstd.arithmetic.internals.div_internals.div_auto_plus.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.div_internals.div_auto_plus.?_definition
))))

;; Function-Axioms crate::vstd::arithmetic::internals::div_internals::div_auto_minus
(assert
 (fuel_bool_default fuel%vstd.arithmetic.internals.div_internals.div_auto_minus.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.div_internals.div_auto_minus.)
  (forall ((n! Poly)) (!
    (= (vstd.arithmetic.internals.div_internals.div_auto_minus.? n!) (forall ((x$ Int) (
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
          (= (EucDiv (Sub x$ y$) (%I n!)) (Sub (EucDiv x$ (%I n!)) (EucDiv y$ (%I n!))))
         )
         (and
          (and
           (<= (Sub 0 (%I n!)) z$)
           (< z$ 0)
          )
          (= (EucDiv (Sub x$ y$) (%I n!)) (Sub (Sub (EucDiv x$ (%I n!)) (EucDiv y$ (%I n!)))
            1
       )))))
       :pattern ((EucDiv (Sub x$ y$) (%I n!)))
       :qid user_crate__vstd__arithmetic__internals__div_internals__div_auto_minus_1
       :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__div_auto_minus_1
    )))
    :pattern ((vstd.arithmetic.internals.div_internals.div_auto_minus.? n!))
    :qid internal_vstd.arithmetic.internals.div_internals.div_auto_minus.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.div_internals.div_auto_minus.?_definition
))))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::mod_auto_plus
(declare-fun req%vstd.arithmetic.internals.mod_internals.mod_auto_plus. (Poly) Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((n! Poly)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.mod_auto_plus. n!) (=>
     %%global_location_label%%3
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
       :qid user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_plus_2
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_plus_2
    )))
    :pattern ((vstd.arithmetic.internals.mod_internals.mod_auto_plus.? n!))
    :qid internal_vstd.arithmetic.internals.mod_internals.mod_auto_plus.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.mod_internals.mod_auto_plus.?_definition
))))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::mod_auto_minus
(declare-fun req%vstd.arithmetic.internals.mod_internals.mod_auto_minus. (Poly) Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((n! Poly)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.mod_auto_minus. n!) (=>
     %%global_location_label%%4
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
       :qid user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_minus_3
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_minus_3
    )))
    :pattern ((vstd.arithmetic.internals.mod_internals.mod_auto_minus.? n!))
    :qid internal_vstd.arithmetic.internals.mod_internals.mod_auto_minus.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.mod_internals.mod_auto_minus.?_definition
))))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::mod_auto
(declare-fun req%vstd.arithmetic.internals.mod_internals.mod_auto. (Poly) Bool)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((n! Poly)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.mod_auto. n!) (=>
     %%global_location_label%%5
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
           :qid user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_4
           :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_4
        )))
        (forall ((x$ Int)) (!
          (= (and
            (<= 0 x$)
            (< x$ (%I n!))
           ) (= (EucMod x$ (%I n!)) x$)
          )
          :pattern ((EucMod x$ (%I n!)))
          :qid user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_5
          :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_5
       )))
       (vstd.arithmetic.internals.mod_internals.mod_auto_plus.? n!)
      )
      (vstd.arithmetic.internals.mod_internals.mod_auto_minus.? n!)
    ))
    :pattern ((vstd.arithmetic.internals.mod_internals.mod_auto.? n!))
    :qid internal_vstd.arithmetic.internals.mod_internals.mod_auto.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.mod_internals.mod_auto.?_definition
))))

;; Function-Specs crate::vstd::arithmetic::internals::div_internals::div_auto
(declare-fun req%vstd.arithmetic.internals.div_internals.div_auto. (Poly) Bool)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((n! Poly)) (!
   (= (req%vstd.arithmetic.internals.div_internals.div_auto. n!) (=>
     %%global_location_label%%6
     (> (%I n!) 0)
   ))
   :pattern ((req%vstd.arithmetic.internals.div_internals.div_auto. n!))
   :qid internal_req__vstd.arithmetic.internals.div_internals.div_auto._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.div_internals.div_auto._definition
)))

;; Function-Axioms crate::vstd::arithmetic::internals::div_internals::div_auto
(assert
 (fuel_bool_default fuel%vstd.arithmetic.internals.div_internals.div_auto.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.div_internals.div_auto.)
  (forall ((n! Poly)) (!
    (= (vstd.arithmetic.internals.div_internals.div_auto.? n!) (and
      (and
       (and
        (and
         (vstd.arithmetic.internals.mod_internals.mod_auto.? n!)
         (let
          ((tmp%%$ (Sub 0 (EucDiv (Sub 0 (%I n!)) (%I n!)))))
          (and
           (= (EucDiv (%I n!) (%I n!)) tmp%%$)
           (= tmp%%$ 1)
        )))
        (forall ((x$ Int)) (!
          (= (and
            (<= 0 x$)
            (< x$ (%I n!))
           ) (= (EucDiv x$ (%I n!)) 0)
          )
          :pattern ((EucDiv x$ (%I n!)))
          :qid user_crate__vstd__arithmetic__internals__div_internals__div_auto_6
          :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__div_auto_6
       )))
       (vstd.arithmetic.internals.div_internals.div_auto_plus.? n!)
      )
      (vstd.arithmetic.internals.div_internals.div_auto_minus.? n!)
    ))
    :pattern ((vstd.arithmetic.internals.div_internals.div_auto.? n!))
    :qid internal_vstd.arithmetic.internals.div_internals.div_auto.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.div_internals.div_auto.?_definition
))))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::mod_recursive
(declare-fun req%vstd.arithmetic.internals.mod_internals.mod_recursive. (Poly Poly)
 Bool
)
(declare-const %%global_location_label%%7 Bool)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((x! Poly) (d! Poly)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.mod_recursive. x! d!) (and
     (=>
      %%global_location_label%%7
      (> (%I d!) 0)
     )
     (=>
      %%global_location_label%%8
      (> (%I d!) 0)
   )))
   :pattern ((req%vstd.arithmetic.internals.mod_internals.mod_recursive. x! d!))
   :qid internal_req__vstd.arithmetic.internals.mod_internals.mod_recursive._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals.mod_recursive._definition
)))

;; Function-Axioms crate::vstd::arithmetic::internals::mod_internals::mod_recursive
(declare-const fuel_nat%vstd.arithmetic.internals.mod_internals.mod_recursive. Fuel)
(assert
 (forall ((x! Poly) (d! Poly) (fuel% Fuel)) (!
   (= (vstd.arithmetic.internals.mod_internals.rec%mod_recursive.? x! d! fuel%) (vstd.arithmetic.internals.mod_internals.rec%mod_recursive.?
     x! d! zero
   ))
   :pattern ((vstd.arithmetic.internals.mod_internals.rec%mod_recursive.? x! d! fuel%))
   :qid internal_vstd.arithmetic.internals.mod_internals.mod_recursive._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.arithmetic.internals.mod_internals.mod_recursive._fuel_to_zero_definition
)))
(assert
 (forall ((x! Poly) (d! Poly) (fuel% Fuel)) (!
   (=>
    (and
     (has_type x! INT)
     (has_type d! INT)
     (> (%I d!) 0)
    )
    (= (vstd.arithmetic.internals.mod_internals.rec%mod_recursive.? x! d! (succ fuel%))
     (ite
      (< (%I x!) 0)
      (vstd.arithmetic.internals.mod_internals.rec%mod_recursive.? (I (Add (%I d!) (%I x!)))
       d! fuel%
      )
      (ite
       (< (%I x!) (%I d!))
       (%I x!)
       (vstd.arithmetic.internals.mod_internals.rec%mod_recursive.? (I (Sub (%I x!) (%I d!)))
        d! fuel%
   )))))
   :pattern ((vstd.arithmetic.internals.mod_internals.rec%mod_recursive.? x! d! (succ fuel%)))
   :qid internal_vstd.arithmetic.internals.mod_internals.mod_recursive._fuel_to_body_definition
   :skolemid skolem_internal_vstd.arithmetic.internals.mod_internals.mod_recursive._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.mod_internals.mod_recursive.)
  (forall ((x! Poly) (d! Poly)) (!
    (=>
     (and
      (has_type x! INT)
      (has_type d! INT)
      (> (%I d!) 0)
     )
     (= (vstd.arithmetic.internals.mod_internals.mod_recursive.? x! d!) (vstd.arithmetic.internals.mod_internals.rec%mod_recursive.?
       x! d! (succ fuel_nat%vstd.arithmetic.internals.mod_internals.mod_recursive.)
    )))
    :pattern ((vstd.arithmetic.internals.mod_internals.mod_recursive.? x! d!))
    :qid internal_vstd.arithmetic.internals.mod_internals.mod_recursive.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.mod_internals.mod_recursive.?_definition
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
         :qid user_crate__vstd__arithmetic__internals__mul_internals__mul_auto_7
         :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__mul_auto_7
       ))
       (forall ((x$ Int) (y$ Int) (z$ Int)) (!
         (= (Mul (Add x$ y$) z$) (Add (Mul x$ z$) (Mul y$ z$)))
         :pattern ((Mul (Add x$ y$) z$))
         :qid user_crate__vstd__arithmetic__internals__mul_internals__mul_auto_8
         :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__mul_auto_8
      )))
      (forall ((x$ Int) (y$ Int) (z$ Int)) (!
        (= (Mul (Sub x$ y$) z$) (Sub (Mul x$ z$) (Mul y$ z$)))
        :pattern ((Mul (Sub x$ y$) z$))
        :qid user_crate__vstd__arithmetic__internals__mul_internals__mul_auto_9
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__mul_auto_9
    ))))
    :pattern ((vstd.arithmetic.internals.mul_internals.mul_auto.? no%param))
    :qid internal_vstd.arithmetic.internals.mul_internals.mul_auto.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.mul_internals.mul_auto.?_definition
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::is_mod_equivalent
(declare-fun req%vstd.arithmetic.div_mod.is_mod_equivalent. (Poly Poly Poly) Bool)
(declare-const %%global_location_label%%9 Bool)
(assert
 (forall ((x! Poly) (y! Poly) (m! Poly)) (!
   (= (req%vstd.arithmetic.div_mod.is_mod_equivalent. x! y! m!) (=>
     %%global_location_label%%9
     (> (%I m!) 0)
   ))
   :pattern ((req%vstd.arithmetic.div_mod.is_mod_equivalent. x! y! m!))
   :qid internal_req__vstd.arithmetic.div_mod.is_mod_equivalent._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.is_mod_equivalent._definition
)))

;; Function-Axioms crate::vstd::arithmetic::div_mod::is_mod_equivalent
(assert
 (fuel_bool_default fuel%vstd.arithmetic.div_mod.is_mod_equivalent.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.is_mod_equivalent.)
  (forall ((x! Poly) (y! Poly) (m! Poly)) (!
    (= (vstd.arithmetic.div_mod.is_mod_equivalent.? x! y! m!) (= (= (EucMod (%I x!) (%I m!))
       (EucMod (%I y!) (%I m!))
      ) (= (EucMod (Sub (%I x!) (%I y!)) (%I m!)) 0)
    ))
    :pattern ((vstd.arithmetic.div_mod.is_mod_equivalent.? x! y! m!))
    :qid internal_vstd.arithmetic.div_mod.is_mod_equivalent.?_definition
    :skolemid skolem_internal_vstd.arithmetic.div_mod.is_mod_equivalent.?_definition
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

;; Function-Axioms crate::vstd::math::div
(assert
 (fuel_bool_default fuel%vstd.math.div.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.math.div.)
  (forall ((x! Poly) (y! Poly)) (!
    (= (vstd.math.div.? x! y!) (EucDiv (%I x!) (%I y!)))
    :pattern ((vstd.math.div.? x! y!))
    :qid internal_vstd.math.div.?_definition
    :skolemid skolem_internal_vstd.math.div.?_definition
))))

;; Function-Specs crate::vstd::arithmetic::internals::div_internals_nonlinear::lemma_div_of0
(declare-fun req%vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_of0.
 (Int) Bool
)
(declare-const %%global_location_label%%10 Bool)
(assert
 (forall ((d! Int)) (!
   (= (req%vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_of0. d!) (=>
     %%global_location_label%%10
     (not (= d! 0))
   ))
   :pattern ((req%vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_of0. d!))
   :qid internal_req__vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_of0._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_of0._definition
)))
(declare-fun ens%vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_of0.
 (Int) Bool
)
(assert
 (forall ((d! Int)) (!
   (= (ens%vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_of0. d!) (= (EucDiv
      0 d!
     ) 0
   ))
   :pattern ((ens%vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_of0. d!))
   :qid internal_ens__vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_of0._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_of0._definition
)))

;; Function-Specs crate::vstd::arithmetic::internals::div_internals_nonlinear::lemma_div_by_self
(declare-fun req%vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_by_self.
 (Int) Bool
)
(declare-const %%global_location_label%%11 Bool)
(assert
 (forall ((d! Int)) (!
   (= (req%vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_by_self. d!) (
     =>
     %%global_location_label%%11
     (not (= d! 0))
   ))
   :pattern ((req%vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_by_self.
     d!
   ))
   :qid internal_req__vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_by_self._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_by_self._definition
)))
(declare-fun ens%vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_by_self.
 (Int) Bool
)
(assert
 (forall ((d! Int)) (!
   (= (ens%vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_by_self. d!) (
     = (EucDiv d! d!) 1
   ))
   :pattern ((ens%vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_by_self.
     d!
   ))
   :qid internal_ens__vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_by_self._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_by_self._definition
)))

;; Function-Specs crate::vstd::arithmetic::internals::div_internals_nonlinear::lemma_small_div
(declare-fun ens%vstd.arithmetic.internals.div_internals_nonlinear.lemma_small_div.
 (Int) Bool
)
(assert
 (forall ((no%param Int)) (!
   (= (ens%vstd.arithmetic.internals.div_internals_nonlinear.lemma_small_div. no%param)
    (forall ((x$ Int) (d$ Int)) (!
      (=>
       (and
        (and
         (<= 0 x$)
         (< x$ d$)
        )
        (> d$ 0)
       )
       (= (EucDiv x$ d$) 0)
      )
      :pattern ((EucDiv x$ d$))
      :qid user_crate__vstd__arithmetic__internals__div_internals_nonlinear__lemma_small_div_10
      :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals_nonlinear__lemma_small_div_10
   )))
   :pattern ((ens%vstd.arithmetic.internals.div_internals_nonlinear.lemma_small_div. no%param))
   :qid internal_ens__vstd.arithmetic.internals.div_internals_nonlinear.lemma_small_div._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.div_internals_nonlinear.lemma_small_div._definition
)))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals_nonlinear::lemma_fundamental_div_mod
(declare-fun req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
 (Int Int) Bool
)
(declare-const %%global_location_label%%12 Bool)
(assert
 (forall ((x! Int) (d! Int)) (!
   (= (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
     x! d!
    ) (=>
     %%global_location_label%%12
     (not (= d! 0))
   ))
   :pattern ((req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
     x! d!
   ))
   :qid internal_req__vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod._definition
)))
(declare-fun ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
 (Int Int) Bool
)
(assert
 (forall ((x! Int) (d! Int)) (!
   (= (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
     x! d!
    ) (= x! (Add (Mul d! (EucDiv x! d!)) (EucMod x! d!)))
   )
   :pattern ((ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
     x! d!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod._definition
)))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals_nonlinear::lemma_small_mod
(declare-fun req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_small_mod.
 (Int Int) Bool
)
(declare-const %%global_location_label%%13 Bool)
(declare-const %%global_location_label%%14 Bool)
(assert
 (forall ((x! Int) (m! Int)) (!
   (= (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_small_mod. x! m!)
    (and
     (=>
      %%global_location_label%%13
      (< x! m!)
     )
     (=>
      %%global_location_label%%14
      (< 0 m!)
   )))
   :pattern ((req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_small_mod. x!
     m!
   ))
   :qid internal_req__vstd.arithmetic.internals.mod_internals_nonlinear.lemma_small_mod._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals_nonlinear.lemma_small_mod._definition
)))
(declare-fun ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_small_mod.
 (Int Int) Bool
)
(assert
 (forall ((x! Int) (m! Int)) (!
   (= (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_small_mod. x! m!)
    (= (vstd.arithmetic.internals.mod_internals_nonlinear.modulus.? (I x!) (I m!)) x!)
   )
   :pattern ((ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_small_mod. x!
     m!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mod_internals_nonlinear.lemma_small_mod._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mod_internals_nonlinear.lemma_small_mod._definition
)))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals_nonlinear::lemma_mod_range
(declare-fun req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_mod_range.
 (Int Int) Bool
)
(declare-const %%global_location_label%%15 Bool)
(assert
 (forall ((x! Int) (m! Int)) (!
   (= (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_mod_range. x! m!)
    (=>
     %%global_location_label%%15
     (> m! 0)
   ))
   :pattern ((req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_mod_range. x!
     m!
   ))
   :qid internal_req__vstd.arithmetic.internals.mod_internals_nonlinear.lemma_mod_range._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals_nonlinear.lemma_mod_range._definition
)))
(declare-fun ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_mod_range.
 (Int Int) Bool
)
(assert
 (forall ((x! Int) (m! Int)) (!
   (= (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_mod_range. x! m!)
    (let
     ((tmp%%$ (vstd.arithmetic.internals.mod_internals_nonlinear.modulus.? (I x!) (I m!))))
     (and
      (<= 0 tmp%%$)
      (< tmp%%$ m!)
   )))
   :pattern ((ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_mod_range. x!
     m!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mod_internals_nonlinear.lemma_mod_range._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mod_internals_nonlinear.lemma_mod_range._definition
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

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_is_commutative
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_commutative.)
  (forall ((x! Int) (y! Int)) (!
    (= (Mul x! y!) (Mul y! x!))
    :pattern ((Mul x! y!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_is_commutative_11
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_is_commutative_11
))))

;; Function-Specs crate::vstd::arithmetic::mul::lemma_mul_is_distributive_add
(declare-fun ens%vstd.arithmetic.mul.lemma_mul_is_distributive_add. (Int Int Int)
 Bool
)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (ens%vstd.arithmetic.mul.lemma_mul_is_distributive_add. x! y! z!) (= (Mul x! (Add
       y! z!
      )
     ) (Add (Mul x! y!) (Mul x! z!))
   ))
   :pattern ((ens%vstd.arithmetic.mul.lemma_mul_is_distributive_add. x! y! z!))
   :qid internal_ens__vstd.arithmetic.mul.lemma_mul_is_distributive_add._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.mul.lemma_mul_is_distributive_add._definition
)))

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_is_distributive_add
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_add.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (= (Mul x! (Add y! z!)) (Add (Mul x! y!) (Mul x! z!)))
    :pattern ((Mul x! (Add y! z!)))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_is_distributive_add_12
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_is_distributive_add_12
))))

;; Broadcast crate::vstd::arithmetic::internals::mul_internals::lemma_mul_commutes
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_commutes.)
  (forall ((x! Int) (y! Int)) (!
    (= (Mul x! y!) (Mul y! x!))
    :pattern ((Mul x! y!))
    :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_commutes_13
    :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_commutes_13
))))

;; Function-Specs crate::vstd::arithmetic::internals::mul_internals::lemma_mul_induction
(declare-fun req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction. (%%Function%%)
 Bool
)
(declare-const %%global_location_label%%16 Bool)
(declare-const %%global_location_label%%17 Bool)
(declare-const %%global_location_label%%18 Bool)
(assert
 (forall ((f! %%Function%%)) (!
   (= (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction. f!) (and
     (=>
      %%global_location_label%%16
      (%B (%%apply%%0 f! (I 0)))
     )
     (=>
      %%global_location_label%%17
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
        :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_14
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_14
     )))
     (=>
      %%global_location_label%%18
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
        :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_15
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_15
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
      :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_16
      :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_induction_16
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
    :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_distributes_plus_17
    :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_distributes_plus_17
))))

;; Broadcast crate::vstd::arithmetic::internals::mul_internals::lemma_mul_distributes_minus
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_minus.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (= (Mul (Sub x! y!) z!) (Sub (Mul x! z!) (Mul y! z!)))
    :pattern ((Mul (Sub x! y!) z!))
    :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_distributes_minus_18
    :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_distributes_minus_18
))))

;; Function-Specs crate::vstd::arithmetic::mul::lemma_mul_is_distributive_add_other_way
(declare-fun ens%vstd.arithmetic.mul.lemma_mul_is_distributive_add_other_way. (Int
  Int Int
 ) Bool
)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (ens%vstd.arithmetic.mul.lemma_mul_is_distributive_add_other_way. x! y! z!) (= (
      Mul (Add y! z!) x!
     ) (Add (Mul y! x!) (Mul z! x!))
   ))
   :pattern ((ens%vstd.arithmetic.mul.lemma_mul_is_distributive_add_other_way. x! y! z!))
   :qid internal_ens__vstd.arithmetic.mul.lemma_mul_is_distributive_add_other_way._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.mul.lemma_mul_is_distributive_add_other_way._definition
)))

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_is_distributive_add_other_way
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_add_other_way.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (= (Mul (Add y! z!) x!) (Add (Mul y! x!) (Mul z! x!)))
    :pattern ((Mul (Add y! z!) x!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_is_distributive_add_other_way_19
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_is_distributive_add_other_way_19
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

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_is_distributive_sub
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_sub.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (= (Mul x! (Sub y! z!)) (Sub (Mul x! y!) (Mul x! z!)))
    :pattern ((Mul x! (Sub y! z!)))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_is_distributive_sub_20
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_is_distributive_sub_20
))))

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_is_distributive_sub_other_way
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_sub_other_way.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (= (Mul (Sub y! z!) x!) (Sub (Mul y! x!) (Mul z! x!)))
    :pattern ((Mul (Sub y! z!) x!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_is_distributive_sub_other_way_21
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_is_distributive_sub_other_way_21
))))

;; Function-Specs crate::vstd::arithmetic::internals::mul_internals::lemma_mul_induction_auto
(declare-fun req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto.
 (Int %%Function%%) Bool
)
(declare-const %%global_location_label%%19 Bool)
(assert
 (forall ((x! Int) (f! %%Function%%)) (!
   (= (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. x! f!) (
     =>
     %%global_location_label%%19
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

;; Function-Specs crate::vstd::arithmetic::mul::lemma_mul_inequality
(declare-fun req%vstd.arithmetic.mul.lemma_mul_inequality. (Int Int Int) Bool)
(declare-const %%global_location_label%%20 Bool)
(declare-const %%global_location_label%%21 Bool)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (req%vstd.arithmetic.mul.lemma_mul_inequality. x! y! z!) (and
     (=>
      %%global_location_label%%20
      (<= x! y!)
     )
     (=>
      %%global_location_label%%21
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
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_inequality_24
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_inequality_24
))))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::lemma_div_add_denominator
(declare-fun req%vstd.arithmetic.internals.mod_internals.lemma_div_add_denominator.
 (Int Int) Bool
)
(declare-const %%global_location_label%%22 Bool)
(assert
 (forall ((n! Int) (x! Int)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.lemma_div_add_denominator. n! x!)
    (=>
     %%global_location_label%%22
     (> n! 0)
   ))
   :pattern ((req%vstd.arithmetic.internals.mod_internals.lemma_div_add_denominator. n!
     x!
   ))
   :qid internal_req__vstd.arithmetic.internals.mod_internals.lemma_div_add_denominator._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals.lemma_div_add_denominator._definition
)))
(declare-fun ens%vstd.arithmetic.internals.mod_internals.lemma_div_add_denominator.
 (Int Int) Bool
)
(assert
 (forall ((n! Int) (x! Int)) (!
   (= (ens%vstd.arithmetic.internals.mod_internals.lemma_div_add_denominator. n! x!)
    (= (EucDiv (Add x! n!) n!) (Add (EucDiv x! n!) 1))
   )
   :pattern ((ens%vstd.arithmetic.internals.mod_internals.lemma_div_add_denominator. n!
     x!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mod_internals.lemma_div_add_denominator._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mod_internals.lemma_div_add_denominator._definition
)))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::lemma_mod_auto
(declare-fun req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. (Int) Bool)
(declare-const %%global_location_label%%23 Bool)
(assert
 (forall ((n! Int)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. n!) (=>
     %%global_location_label%%23
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

;; Function-Specs crate::vstd::arithmetic::internals::div_internals::lemma_div_basics
(declare-fun req%vstd.arithmetic.internals.div_internals.lemma_div_basics. (Int) Bool)
(declare-const %%global_location_label%%24 Bool)
(assert
 (forall ((n! Int)) (!
   (= (req%vstd.arithmetic.internals.div_internals.lemma_div_basics. n!) (=>
     %%global_location_label%%24
     (> n! 0)
   ))
   :pattern ((req%vstd.arithmetic.internals.div_internals.lemma_div_basics. n!))
   :qid internal_req__vstd.arithmetic.internals.div_internals.lemma_div_basics._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.div_internals.lemma_div_basics._definition
)))
(declare-fun ens%vstd.arithmetic.internals.div_internals.lemma_div_basics. (Int) Bool)
(assert
 (forall ((n! Int)) (!
   (= (ens%vstd.arithmetic.internals.div_internals.lemma_div_basics. n!) (and
     (and
      (= (EucDiv n! n!) 1)
      (= (Sub 0 (EucDiv (Sub 0 n!) n!)) 1)
     )
     (forall ((x$ Int)) (!
       (= (and
         (<= 0 x$)
         (< x$ n!)
        ) (= (EucDiv x$ n!) 0)
       )
       :pattern ((EucDiv x$ n!))
       :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_basics_25
       :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_basics_25
     ))
     (forall ((x$ Int)) (!
       (= (EucDiv (Add x$ n!) n!) (Add (EucDiv x$ n!) 1))
       :pattern ((EucDiv (Add x$ n!) n!))
       :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_basics_26
       :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_basics_26
     ))
     (forall ((x$ Int)) (!
       (= (EucDiv (Sub x$ n!) n!) (Sub (EucDiv x$ n!) 1))
       :pattern ((EucDiv (Sub x$ n!) n!))
       :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_basics_27
       :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_basics_27
   ))))
   :pattern ((ens%vstd.arithmetic.internals.div_internals.lemma_div_basics. n!))
   :qid internal_ens__vstd.arithmetic.internals.div_internals.lemma_div_basics._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.div_internals.lemma_div_basics._definition
)))

;; Function-Specs crate::vstd::arithmetic::internals::div_internals::lemma_div_auto
(declare-fun req%vstd.arithmetic.internals.div_internals.lemma_div_auto. (Int) Bool)
(declare-const %%global_location_label%%25 Bool)
(assert
 (forall ((n! Int)) (!
   (= (req%vstd.arithmetic.internals.div_internals.lemma_div_auto. n!) (=>
     %%global_location_label%%25
     (> n! 0)
   ))
   :pattern ((req%vstd.arithmetic.internals.div_internals.lemma_div_auto. n!))
   :qid internal_req__vstd.arithmetic.internals.div_internals.lemma_div_auto._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.div_internals.lemma_div_auto._definition
)))
(declare-fun ens%vstd.arithmetic.internals.div_internals.lemma_div_auto. (Int) Bool)
(assert
 (forall ((n! Int)) (!
   (= (ens%vstd.arithmetic.internals.div_internals.lemma_div_auto. n!) (vstd.arithmetic.internals.div_internals.div_auto.?
     (I n!)
   ))
   :pattern ((ens%vstd.arithmetic.internals.div_internals.lemma_div_auto. n!))
   :qid internal_ens__vstd.arithmetic.internals.div_internals.lemma_div_auto._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.div_internals.lemma_div_auto._definition
)))

;; Function-Specs crate::vstd::arithmetic::internals::div_internals::lemma_div_induction_auto
(declare-fun req%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto.
 (Int Int %%Function%%) Bool
)
(declare-const %%global_location_label%%26 Bool)
(declare-const %%global_location_label%%27 Bool)
(assert
 (forall ((n! Int) (x! Int) (f! %%Function%%)) (!
   (= (req%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. n! x! f!)
    (and
     (=>
      %%global_location_label%%26
      (> n! 0)
     )
     (=>
      %%global_location_label%%27
      (=>
       (vstd.arithmetic.internals.div_internals.div_auto.? (I n!))
       (and
        (and
         (forall ((i$ Poly)) (!
           (=>
            (has_type i$ INT)
            (=>
             (and
              (vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$)
              (< (%I i$) n!)
             )
             (%B (%%apply%%0 f! i$))
           ))
           :pattern ((vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$))
           :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_28
           :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_28
         ))
         (forall ((i$ Poly)) (!
           (=>
            (has_type i$ INT)
            (=>
             (and
              (vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$)
              (%B (%%apply%%0 f! i$))
             )
             (%B (%%apply%%0 f! (I (Add (%I i$) n!))))
           ))
           :pattern ((vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$))
           :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_29
           :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_29
        )))
        (forall ((i$ Int)) (!
          (=>
           (and
            (vstd.arithmetic.internals.general_internals.is_le.? (I (Add i$ 1)) (I n!))
            (%B (%%apply%%0 f! (I i$)))
           )
           (%B (%%apply%%0 f! (I (Sub i$ n!))))
          )
          :pattern ((vstd.arithmetic.internals.general_internals.is_le.? (I (Add i$ 1)) (I n!)))
          :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_30
          :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_30
   )))))))
   :pattern ((req%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. n!
     x! f!
   ))
   :qid internal_req__vstd.arithmetic.internals.div_internals.lemma_div_induction_auto._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.div_internals.lemma_div_induction_auto._definition
)))
(declare-fun ens%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto.
 (Int Int %%Function%%) Bool
)
(assert
 (forall ((n! Int) (x! Int) (f! %%Function%%)) (!
   (= (ens%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. n! x! f!)
    (and
     (vstd.arithmetic.internals.div_internals.div_auto.? (I n!))
     (%B (%%apply%%0 f! (I x!)))
   ))
   :pattern ((ens%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. n!
     x! f!
   ))
   :qid internal_ens__vstd.arithmetic.internals.div_internals.lemma_div_induction_auto._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.div_internals.lemma_div_induction_auto._definition
)))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_div_is_div_recursive
(declare-fun req%vstd.arithmetic.div_mod.lemma_div_is_div_recursive. (Int Int) Bool)
(declare-const %%global_location_label%%28 Bool)
(assert
 (forall ((x! Int) (d! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_div_is_div_recursive. x! d!) (=>
     %%global_location_label%%28
     (< 0 d!)
   ))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_div_is_div_recursive. x! d!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_div_is_div_recursive._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_div_is_div_recursive._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_div_is_div_recursive. (Int Int) Bool)
(assert
 (forall ((x! Int) (d! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_div_is_div_recursive. x! d!) (= (vstd.arithmetic.internals.div_internals.div_recursive.?
      (I x!) (I d!)
     ) (EucDiv x! d!)
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_div_is_div_recursive. x! d!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_div_is_div_recursive._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_div_is_div_recursive._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_div_is_div_recursive
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:55:1: 55:66 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const d! Int)
 (declare-const tmp%1 %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 d!)
 )
 (declare-fun %%lambda%%0 (Poly Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Poly) (%%hole%%1 Int) (u$ Poly)) (!
    (= (%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1) u$) (B (= (vstd.arithmetic.internals.div_internals.div_recursive.?
        u$ %%hole%%0
       ) (EucDiv (%I u$) %%hole%%1)
    )))
    :pattern ((%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1) u$))
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.internals.div_internals.div_recursive.)
    (=>
     (fuel_bool fuel%vstd.arithmetic.internals.div_internals.div_pos.)
     (=>
      (= tmp%1 (mk_fun (%%lambda%%0 (I d!) d!)))
      (and
       (=>
        %%location_label%%0
        (req%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. d! x! tmp%1)
       )
       (=>
        (ens%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. d! x! tmp%1)
        (=>
         %%location_label%%1
         (= (vstd.arithmetic.internals.div_internals.div_recursive.? (I x!) (I d!)) (EucDiv
           x! d!
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_div_is_div_recursive
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_is_div_recursive.)
  (forall ((x! Int) (d! Int)) (!
    (=>
     (< 0 d!)
     (= (vstd.arithmetic.internals.div_internals.div_recursive.? (I x!) (I d!)) (EucDiv
       x! d!
    )))
    :pattern ((EucDiv x! d!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_div_is_div_recursive_31
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_is_div_recursive_31
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_div_by_self
(declare-fun req%vstd.arithmetic.div_mod.lemma_div_by_self. (Int) Bool)
(declare-const %%global_location_label%%29 Bool)
(assert
 (forall ((d! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_div_by_self. d!) (=>
     %%global_location_label%%29
     (not (= d! 0))
   ))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_div_by_self. d!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_div_by_self._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_div_by_self._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_div_by_self. (Int) Bool)
(assert
 (forall ((d! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_div_by_self. d!) (= (EucDiv d! d!) 1))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_div_by_self. d!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_div_by_self._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_div_by_self._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_div_by_self
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:68:1: 68:39 (#0)
(get-info :all-statistics)
(push)
 (declare-const d! Int)
 (assert
  fuel_defaults
 )
 (assert
  (not (= d! 0))
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_by_self. d!)
    )
    (=>
     (ens%vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_by_self. d!)
     (=>
      %%location_label%%1
      (= (EucDiv d! d!) 1)
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_div_of0
(declare-fun req%vstd.arithmetic.div_mod.lemma_div_of0. (Int) Bool)
(declare-const %%global_location_label%%30 Bool)
(assert
 (forall ((d! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_div_of0. d!) (=>
     %%global_location_label%%30
     (not (= d! 0))
   ))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_div_of0. d!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_div_of0._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_div_of0._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_div_of0. (Int) Bool)
(assert
 (forall ((d! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_div_of0. d!) (= (EucDiv 0 d!) 0))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_div_of0. d!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_div_of0._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_div_of0._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_div_of0
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:78:1: 78:35 (#0)
(get-info :all-statistics)
(push)
 (declare-const d! Int)
 (assert
  fuel_defaults
 )
 (assert
  (not (= d! 0))
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_of0. d!)
    )
    (=>
     (ens%vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_of0. d!)
     (=>
      %%location_label%%1
      (= (EucDiv 0 d!) 0)
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_div_basics
(declare-fun ens%vstd.arithmetic.div_mod.lemma_div_basics. (Int) Bool)
(assert
 (forall ((x! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_div_basics. x!) (and
     (=>
      (not (= x! 0))
      (= (EucDiv 0 x!) 0)
     )
     (= (EucDiv x! 1) x!)
     (=>
      (not (= x! 0))
      (= (EucDiv x! x!) 1)
   )))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_div_basics. x!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_div_basics._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_div_basics._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_div_basics
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:90:1: 90:38 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (assert
  fuel_defaults
 )
 (declare-const %%switch_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 (assert
  (not (or
    (and
     (=>
      (not (= x! 0))
      (and
       (=>
        %%location_label%%0
        (req%vstd.arithmetic.div_mod.lemma_div_by_self. x!)
       )
       (=>
        (ens%vstd.arithmetic.div_mod.lemma_div_by_self. x!)
        (and
         (=>
          %%location_label%%1
          (req%vstd.arithmetic.div_mod.lemma_div_of0. x!)
         )
         (=>
          (ens%vstd.arithmetic.div_mod.lemma_div_of0. x!)
          %%switch_label%%0
     )))))
     (=>
      (not (not (= x! 0)))
      %%switch_label%%0
    ))
    (and
     (not %%switch_label%%0)
     (and
      (=>
       %%location_label%%2
       (=>
        (not (= x! 0))
        (= (EucDiv 0 x!) 0)
      ))
      (and
       (=>
        %%location_label%%3
        (= (EucDiv x! 1) x!)
       )
       (=>
        %%location_label%%4
        (=>
         (not (= x! 0))
         (= (EucDiv x! x!) 1)
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_div_basics_1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:102:1: 102:50 (#0)
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
    (ens%vstd.arithmetic.div_mod.lemma_div_basics. x!)
    (=>
     %%location_label%%0
     (=>
      (not (= x! 0))
      (= (EucDiv 0 x!) 0)
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_div_basics_1
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_basics_1.)
  (forall ((x! Int)) (!
    (=>
     (not (= x! 0))
     (= (EucDiv 0 x!) 0)
    )
    :pattern ((EucDiv 0 x!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_div_basics_1_32
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_basics_1_32
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_div_basics_2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:109:1: 109:50 (#0)
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
    (ens%vstd.arithmetic.div_mod.lemma_div_basics. x!)
    (=>
     %%location_label%%0
     (= (EucDiv x! 1) x!)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_div_basics_2
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_basics_2.)
  (forall ((x! Int)) (!
    (= (EucDiv x! 1) x!)
    :pattern ((EucDiv x! 1))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_div_basics_2_33
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_basics_2_33
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_div_basics_3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:116:1: 116:50 (#0)
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
    (ens%vstd.arithmetic.div_mod.lemma_div_basics. x!)
    (=>
     %%location_label%%0
     (=>
      (not (= x! 0))
      (= (EucDiv x! x!) 1)
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_div_basics_3
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_basics_3.)
  (forall ((x! Int)) (!
    (=>
     (not (= x! 0))
     (= (EucDiv x! x!) 1)
    )
    :pattern ((EucDiv x! x!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_div_basics_3_34
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_basics_3_34
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_div_basics_4
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:123:1: 123:58 (#0)
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
    (=>
     (and
      (>= x! 0)
      (> y! 0)
     )
     (>= (EucDiv x! y!) 0)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_div_basics_4
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_basics_4.)
  (forall ((x! Int) (y! Int)) (!
    (=>
     (and
      (>= x! 0)
      (> y! 0)
     )
     (>= (EucDiv x! y!) 0)
    )
    :pattern ((EucDiv x! y!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_div_basics_4_35
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_basics_4_35
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_div_pos_is_pos
(declare-fun req%vstd.arithmetic.div_mod.lemma_div_pos_is_pos. (Int Int) Bool)
(declare-const %%global_location_label%%31 Bool)
(declare-const %%global_location_label%%32 Bool)
(assert
 (forall ((x! Int) (d! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_div_pos_is_pos. x! d!) (and
     (=>
      %%global_location_label%%31
      (<= 0 x!)
     )
     (=>
      %%global_location_label%%32
      (< 0 d!)
   )))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_div_pos_is_pos. x! d!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_div_pos_is_pos._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_div_pos_is_pos._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_div_pos_is_pos. (Int Int) Bool)
(assert
 (forall ((x! Int) (d! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_div_pos_is_pos. x! d!) (<= 0 (EucDiv x! d!)))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_div_pos_is_pos. x! d!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_div_pos_is_pos._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_div_pos_is_pos._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_div_pos_is_pos
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:248:1: 248:60 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const d! Int)
 (declare-const tmp%1 Bool)
 (declare-const i@ Poly)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 %%Function%%)
 (declare-const f@ %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 x!)
 )
 (assert
  (< 0 d!)
 )
 (declare-fun %%lambda%%1 (Int Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Int) (u$ Poly)) (!
    (= (%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1 %%hole%%2) u$) (B (=>
       (<= %%hole%%0 (%I u$))
       (>= (EucDiv (%I u$) %%hole%%1) %%hole%%2)
    )))
    :pattern ((%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1 %%hole%%2) u$))
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%5 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.div_internals.lemma_div_auto. d!)
    )
    (=>
     (ens%vstd.arithmetic.internals.div_internals.lemma_div_auto. d!)
     (=>
      (= tmp%1 (vstd.arithmetic.internals.div_internals.div_auto.? (I d!)))
      (and
       (=>
        %%location_label%%1
        tmp%1
       )
       (=>
        tmp%1
        (=>
         (= f@ (mk_fun (%%lambda%%1 0 d! 0)))
         (and
          (=>
           (has_type i@ INT)
           (=>
            (and
             (vstd.arithmetic.internals.general_internals.is_le.? (I 0) i@)
             (%B (%%apply%%0 f@ i@))
            )
            (=>
             (= tmp%2 (>= (EucDiv (%I i@) d!) 0))
             (and
              (=>
               %%location_label%%2
               tmp%2
              )
              (=>
               tmp%2
               (=>
                %%location_label%%3
                (%B (%%apply%%0 f@ (I (Add (%I i@) d!))))
          ))))))
          (=>
           (forall ((i$ Poly)) (!
             (=>
              (has_type i$ INT)
              (=>
               (and
                (vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$)
                (%B (%%apply%%0 f@ i$))
               )
               (%B (%%apply%%0 f@ (I (Add (%I i$) d!))))
             ))
             :pattern ((vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$))
             :qid user_crate__vstd__arithmetic__div_mod__lemma_div_pos_is_pos_37
             :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_pos_is_pos_37
           ))
           (=>
            (= tmp%3 (mk_fun (%%lambda%%1 0 d! 0)))
            (and
             (=>
              %%location_label%%4
              (req%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. d! x! tmp%3)
             )
             (=>
              (ens%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. d! x! tmp%3)
              (=>
               %%location_label%%5
               (<= 0 (EucDiv x! d!))
 ))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_div_pos_is_pos
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_pos_is_pos.)
  (forall ((x! Int) (d! Int)) (!
    (=>
     (and
      (<= 0 x!)
      (< 0 d!)
     )
     (<= 0 (EucDiv x! d!))
    )
    :pattern ((EucDiv x! d!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_div_pos_is_pos_36
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_pos_is_pos_36
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_div_is_ordered
(declare-fun req%vstd.arithmetic.div_mod.lemma_div_is_ordered. (Int Int Int) Bool)
(declare-const %%global_location_label%%33 Bool)
(declare-const %%global_location_label%%34 Bool)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_div_is_ordered. x! y! z!) (and
     (=>
      %%global_location_label%%33
      (<= x! y!)
     )
     (=>
      %%global_location_label%%34
      (< 0 z!)
   )))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_div_is_ordered. x! y! z!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_div_is_ordered._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_div_is_ordered._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_div_is_ordered. (Int Int Int) Bool)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_div_is_ordered. x! y! z!) (<= (EucDiv x! z!)
     (EucDiv y! z!)
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_div_is_ordered. x! y! z!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_div_is_ordered._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_div_is_ordered._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_div_is_ordered
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:315:1: 315:68 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const z! Int)
 (declare-const i@ Int)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Bool)
 (declare-const tmp%6 Bool)
 (declare-const tmp%7 Bool)
 (declare-const tmp%8 Int)
 (declare-const tmp%9 %%Function%%)
 (declare-const f@ %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (<= x! y!)
 )
 (assert
  (< 0 z!)
 )
 (declare-fun %%lambda%%2 (Int Int Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Int) (%%hole%%3 Int) (xy$ Poly))
   (!
    (= (%%apply%%0 (%%lambda%%2 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) xy$) (B (=>
       (<= (%I xy$) %%hole%%0)
       (<= (EucDiv (Add (%I xy$) %%hole%%1) %%hole%%2) %%hole%%3)
    )))
    :pattern ((%%apply%%0 (%%lambda%%2 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) xy$))
 )))
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; precondition not satisfied
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
 ;; assertion failed
 (declare-const %%location_label%%6 Bool)
 ;; assertion failed
 (declare-const %%location_label%%7 Bool)
 ;; assertion failed
 (declare-const %%location_label%%8 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%9 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%10 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.div_internals.lemma_div_auto. z!)
    )
    (=>
     (ens%vstd.arithmetic.internals.div_internals.lemma_div_auto. z!)
     (=>
      (= f@ (mk_fun (%%lambda%%2 0 y! z! (EucDiv y! z!))))
      (and
       (=>
        (and
         (vstd.arithmetic.internals.general_internals.is_le.? (I (Add i@ 1)) (I z!))
         (%B (%%apply%%0 f@ (I i@)))
        )
        (or
         (and
          (=>
           (<= (Sub i@ z!) 0)
           (=>
            (= tmp%1 (%B (%%apply%%0 f@ (I i@))))
            (and
             (=>
              %%location_label%%1
              tmp%1
             )
             (=>
              tmp%1
              (=>
               (= tmp%2 (=>
                 (<= i@ 0)
                 (<= (EucDiv (Add i@ y!) z!) (EucDiv y! z!))
               ))
               (and
                (=>
                 %%location_label%%2
                 tmp%2
                )
                (=>
                 tmp%2
                 (or
                  (and
                   (=>
                    (> i@ 0)
                    (=>
                     (= tmp%3 (> z! 0))
                     (and
                      (=>
                       %%location_label%%3
                       tmp%3
                      )
                      (=>
                       tmp%3
                       (=>
                        (= tmp%4 (<= i@ z!))
                        (and
                         (=>
                          %%location_label%%4
                          tmp%4
                         )
                         (=>
                          tmp%4
                          (=>
                           (= tmp%5 (<= (EucDiv (Sub (Add i@ y!) z!) z!) (EucDiv y! z!)))
                           (and
                            (=>
                             %%location_label%%5
                             tmp%5
                            )
                            (=>
                             tmp%5
                             %%switch_label%%1
                   ))))))))))
                   (=>
                    (not (> i@ 0))
                    (=>
                     (= tmp%6 (<= (EucDiv (Add i@ y!) z!) (EucDiv y! z!)))
                     (and
                      (=>
                       %%location_label%%6
                       tmp%6
                      )
                      (=>
                       tmp%6
                       %%switch_label%%1
                  )))))
                  (and
                   (not %%switch_label%%1)
                   (=>
                    (= tmp%7 (<= (EucDiv (Add (Sub i@ z!) y!) z!) (EucDiv y! z!)))
                    (and
                     (=>
                      %%location_label%%7
                      tmp%7
                     )
                     (=>
                      tmp%7
                      %%switch_label%%0
          ))))))))))))
          (=>
           (not (<= (Sub i@ z!) 0))
           %%switch_label%%0
         ))
         (and
          (not %%switch_label%%0)
          (=>
           %%location_label%%8
           (%B (%%apply%%0 f@ (I (Sub i@ z!))))
       ))))
       (=>
        (forall ((i$ Int)) (!
          (=>
           (and
            (vstd.arithmetic.internals.general_internals.is_le.? (I (Add i$ 1)) (I z!))
            (%B (%%apply%%0 f@ (I i$)))
           )
           (%B (%%apply%%0 f@ (I (Sub i$ z!))))
          )
          :pattern ((vstd.arithmetic.internals.general_internals.is_le.? (I (Add i$ 1)) (I z!)))
          :qid user_crate__vstd__arithmetic__div_mod__lemma_div_is_ordered_39
          :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_is_ordered_39
        ))
        (=>
         (= tmp%8 (Sub x! y!))
         (=>
          (= tmp%9 (mk_fun (%%lambda%%2 0 y! z! (EucDiv y! z!))))
          (and
           (=>
            %%location_label%%9
            (req%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. z! tmp%8 tmp%9)
           )
           (=>
            (ens%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. z! tmp%8 tmp%9)
            (=>
             %%location_label%%10
             (<= (EucDiv x! z!) (EucDiv y! z!))
 ))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_div_is_ordered
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_is_ordered.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (=>
     (and
      (<= x! y!)
      (< 0 z!)
     )
     (<= (EucDiv x! z!) (EucDiv y! z!))
    )
    :pattern ((EucDiv x! z!) (EucDiv y! z!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_div_is_ordered_38
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_is_ordered_38
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_div_is_ordered_by_denominator
(declare-fun req%vstd.arithmetic.div_mod.lemma_div_is_ordered_by_denominator. (Int
  Int Int
 ) Bool
)
(declare-const %%global_location_label%%35 Bool)
(declare-const %%global_location_label%%36 Bool)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_div_is_ordered_by_denominator. x! y! z!) (and
     (=>
      %%global_location_label%%35
      (<= 0 x!)
     )
     (=>
      %%global_location_label%%36
      (and
       (<= 1 y!)
       (<= y! z!)
   ))))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_div_is_ordered_by_denominator. x! y! z!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_div_is_ordered_by_denominator._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_div_is_ordered_by_denominator._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_div_is_ordered_by_denominator. (Int
  Int Int
 ) Bool
)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_div_is_ordered_by_denominator. x! y! z!) (>=
     (EucDiv x! y!) (EucDiv x! z!)
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_div_is_ordered_by_denominator. x! y! z!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_div_is_ordered_by_denominator._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_div_is_ordered_by_denominator._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_div_is_ordered_by_denominator
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:193:1: 193:83 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const z! Int)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Int)
 (declare-const tmp%3 Int)
 (declare-const tmp%4 Int)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 x!)
 )
 (assert
  (and
   (<= 1 y!)
   (<= y! z!)
 ))
 (declare-const %%switch_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%3 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%5 Bool)
 (assert
  (not (=>
    (= decrease%init0 x!)
    (=>
     (fuel_bool fuel%vstd.arithmetic.internals.div_internals.div_recursive.)
     (=>
      (fuel_bool fuel%vstd.arithmetic.internals.div_internals.div_pos.)
      (=>
       (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_is_div_recursive.)
       (=>
        (= tmp%1 (forall ((u$ Poly) (d$ Poly)) (!
           (=>
            (and
             (has_type u$ INT)
             (has_type d$ INT)
            )
            (=>
             (> (%I d$) 0)
             (= (vstd.arithmetic.internals.div_internals.div_recursive.? u$ d$) (vstd.math.div.?
               u$ d$
           ))))
           :pattern ((vstd.arithmetic.internals.div_internals.div_recursive.? u$ d$))
           :pattern ((vstd.math.div.? u$ d$))
           :qid user_crate__vstd__arithmetic__div_mod__lemma_div_is_ordered_by_denominator_41
           :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_is_ordered_by_denominator_41
        )))
        (and
         (=>
          %%location_label%%0
          tmp%1
         )
         (=>
          tmp%1
          (or
           (and
            (=>
             (< x! z!)
             (and
              (=>
               %%location_label%%1
               (req%vstd.arithmetic.div_mod.lemma_div_is_ordered. 0 x! y!)
              )
              (=>
               (ens%vstd.arithmetic.div_mod.lemma_div_is_ordered. 0 x! y!)
               %%switch_label%%0
            )))
            (=>
             (not (< x! z!))
             (=>
              (= tmp%2 (Sub x! z!))
              (=>
               (= tmp%3 (Sub x! y!))
               (and
                (=>
                 %%location_label%%2
                 (req%vstd.arithmetic.div_mod.lemma_div_is_ordered. tmp%2 tmp%3 y!)
                )
                (=>
                 (ens%vstd.arithmetic.div_mod.lemma_div_is_ordered. tmp%2 tmp%3 y!)
                 (=>
                  (= tmp%4 (Sub x! z!))
                  (and
                   (=>
                    %%location_label%%3
                    (check_decrease_int (let
                      ((x!$0 tmp%4) (y!$1 y!) (z!$2 z!))
                      x!$0
                     ) decrease%init0 false
                   ))
                   (and
                    (=>
                     %%location_label%%4
                     (req%vstd.arithmetic.div_mod.lemma_div_is_ordered_by_denominator. tmp%4 y! z!)
                    )
                    (=>
                     (ens%vstd.arithmetic.div_mod.lemma_div_is_ordered_by_denominator. tmp%4 y! z!)
                     %%switch_label%%0
           ))))))))))
           (and
            (not %%switch_label%%0)
            (=>
             %%location_label%%5
             (>= (EucDiv x! y!) (EucDiv x! z!))
 ))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_div_is_ordered_by_denominator
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_is_ordered_by_denominator.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (=>
     (and
      (<= 0 x!)
      (and
       (<= 1 y!)
       (<= y! z!)
     ))
     (>= (EucDiv x! y!) (EucDiv x! z!))
    )
    :pattern ((EucDiv x! y!) (EucDiv x! z!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_div_is_ordered_by_denominator_40
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_is_ordered_by_denominator_40
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_div_basics_5
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:129:1: 129:58 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const x@ Int)
 (declare-const y@ Int)
 (assert
  fuel_defaults
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     (and
      (>= x@ 0)
      (> y@ 0)
     )
     (and
      (=>
       %%location_label%%0
       (req%vstd.arithmetic.div_mod.lemma_div_pos_is_pos. x@ y@)
      )
      (=>
       (ens%vstd.arithmetic.div_mod.lemma_div_pos_is_pos. x@ y@)
       (and
        (=>
         %%location_label%%1
         (req%vstd.arithmetic.div_mod.lemma_div_is_ordered_by_denominator. x@ 1 y@)
        )
        (=>
         (ens%vstd.arithmetic.div_mod.lemma_div_is_ordered_by_denominator. x@ 1 y@)
         (=>
          %%location_label%%2
          (let
           ((tmp%%$ (EucDiv x@ y@)))
           (and
            (<= 0 tmp%%$)
            (<= tmp%%$ x@)
    ))))))))
    (=>
     (forall ((x$ Int) (y$ Int)) (!
       (=>
        (and
         (>= x$ 0)
         (> y$ 0)
        )
        (let
         ((tmp%%$ (EucDiv x$ y$)))
         (and
          (<= 0 tmp%%$)
          (<= tmp%%$ x$)
       )))
       :pattern ((EucDiv x$ y$))
       :qid user_crate__vstd__arithmetic__div_mod__lemma_div_basics_5_43
       :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_basics_5_43
     ))
     (=>
      %%location_label%%3
      (=>
       (and
        (>= x! 0)
        (> y! 0)
       )
       (<= (EucDiv x! y!) x!)
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_div_basics_5
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_basics_5.)
  (forall ((x! Int) (y! Int)) (!
    (=>
     (and
      (>= x! 0)
      (> y! 0)
     )
     (<= (EucDiv x! y!) x!)
    )
    :pattern ((EucDiv x! y!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_div_basics_5_42
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_basics_5_42
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_div_basics_prove_auto
(declare-fun ens%vstd.arithmetic.div_mod.lemma_div_basics_prove_auto. (Int) Bool)
(assert
 (forall ((no%param Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_div_basics_prove_auto. no%param) (and
     (forall ((x$ Int)) (!
       (=>
        (not (= x$ 0))
        (= (EucDiv 0 x$) 0)
       )
       :pattern ((EucDiv 0 x$))
       :qid user_crate__vstd__arithmetic__div_mod__lemma_div_basics_prove_auto_44
       :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_basics_prove_auto_44
     ))
     (forall ((x$ Int)) (!
       (= (EucDiv x$ 1) x$)
       :pattern ((EucDiv x$ 1))
       :qid user_crate__vstd__arithmetic__div_mod__lemma_div_basics_prove_auto_45
       :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_basics_prove_auto_45
     ))
     (forall ((x$ Int) (y$ Int)) (!
       (=>
        (and
         (>= x$ 0)
         (> y$ 0)
        )
        (>= (EucDiv x$ y$) 0)
       )
       :pattern ((EucDiv x$ y$))
       :qid user_crate__vstd__arithmetic__div_mod__lemma_div_basics_prove_auto_46
       :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_basics_prove_auto_46
     ))
     (forall ((x$ Int) (y$ Int)) (!
       (=>
        (and
         (>= x$ 0)
         (> y$ 0)
        )
        (<= (EucDiv x$ y$) x$)
       )
       :pattern ((EucDiv x$ y$))
       :qid user_crate__vstd__arithmetic__div_mod__lemma_div_basics_prove_auto_47
       :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_basics_prove_auto_47
   ))))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_div_basics_prove_auto. no%param))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_div_basics_prove_auto._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_div_basics_prove_auto._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_div_basics_prove_auto
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:148:7: 148:39 (#0)
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
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.div_mod.group_div_basics.)
    (and
     (=>
      %%location_label%%0
      (forall ((x$ Int)) (!
        (=>
         (not (= x$ 0))
         (= (EucDiv 0 x$) 0)
        )
        :pattern ((EucDiv 0 x$))
        :qid user_crate__vstd__arithmetic__div_mod__lemma_div_basics_prove_auto_48
        :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_basics_prove_auto_48
     )))
     (and
      (=>
       %%location_label%%1
       (forall ((x$ Int)) (!
         (= (EucDiv x$ 1) x$)
         :pattern ((EucDiv x$ 1))
         :qid user_crate__vstd__arithmetic__div_mod__lemma_div_basics_prove_auto_49
         :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_basics_prove_auto_49
      )))
      (and
       (=>
        %%location_label%%2
        (forall ((x$ Int) (y$ Int)) (!
          (=>
           (and
            (>= x$ 0)
            (> y$ 0)
           )
           (>= (EucDiv x$ y$) 0)
          )
          :pattern ((EucDiv x$ y$))
          :qid user_crate__vstd__arithmetic__div_mod__lemma_div_basics_prove_auto_50
          :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_basics_prove_auto_50
       )))
       (=>
        %%location_label%%3
        (forall ((x$ Int) (y$ Int)) (!
          (=>
           (and
            (>= x$ 0)
            (> y$ 0)
           )
           (<= (EucDiv x$ y$) x$)
          )
          :pattern ((EucDiv x$ y$))
          :qid user_crate__vstd__arithmetic__div_mod__lemma_div_basics_prove_auto_51
          :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_basics_prove_auto_51
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_small_div_converse
(declare-fun ens%vstd.arithmetic.div_mod.lemma_small_div_converse. (Int Int) Bool)
(assert
 (forall ((x! Int) (d! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_small_div_converse. x! d!) (=>
     (and
      (and
       (<= 0 x!)
       (< 0 d!)
      )
      (= (EucDiv x! d!) 0)
     )
     (< x! d!)
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_small_div_converse. x! d!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_small_div_converse._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_small_div_converse._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_small_div_converse
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:162:1: 162:64 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const d! Int)
 (declare-const x@ Int)
 (declare-const d@ Int)
 (declare-const tmp%1 %%Function%%)
 (assert
  fuel_defaults
 )
 (declare-fun %%lambda%%3 (Int Bool Int Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Bool) (%%hole%%2 Int) (%%hole%%3 Int) (%%hole%%4
     Int
    ) (u$ Poly)
   ) (!
    (= (%%apply%%0 (%%lambda%%3 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4) u$)
     (B (=>
       (and
        (and
         (<= %%hole%%0 (%I u$))
         %%hole%%1
        )
        (= (EucDiv (%I u$) %%hole%%2) %%hole%%3)
       )
       (< (%I u$) %%hole%%4)
    )))
    :pattern ((%%apply%%0 (%%lambda%%3 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4)
      u$
 )))))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (and
    (=>
     (and
      (and
       (<= 0 x@)
       (< 0 d@)
      )
      (= (EucDiv x@ d@) 0)
     )
     (=>
      (= tmp%1 (mk_fun (%%lambda%%3 0 (< 0 d@) d@ 0 d@)))
      (and
       (=>
        %%location_label%%0
        (req%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. d@ x@ tmp%1)
       )
       (=>
        (ens%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. d@ x@ tmp%1)
        (=>
         %%location_label%%1
         (< x@ d@)
    )))))
    (=>
     (forall ((x$ Int) (d$ Int)) (!
       (=>
        (and
         (and
          (<= 0 x$)
          (< 0 d$)
         )
         (= (EucDiv x$ d$) 0)
        )
        (< x$ d$)
       )
       :pattern ((EucDiv x$ d$))
       :qid user_crate__vstd__arithmetic__div_mod__lemma_small_div_converse_53
       :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_small_div_converse_53
     ))
     (=>
      %%location_label%%2
      (=>
       (and
        (and
         (<= 0 x!)
         (< 0 d!)
        )
        (= (EucDiv x! d!) 0)
       )
       (< x! d!)
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_small_div_converse
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_small_div_converse.)
  (forall ((x! Int) (d! Int)) (!
    (=>
     (and
      (and
       (<= 0 x!)
       (< 0 d!)
      )
      (= (EucDiv x! d!) 0)
     )
     (< x! d!)
    )
    :pattern ((EucDiv x! d!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_small_div_converse_52
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_small_div_converse_52
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_div_non_zero
(declare-fun req%vstd.arithmetic.div_mod.lemma_div_non_zero. (Int Int) Bool)
(declare-const %%global_location_label%%37 Bool)
(assert
 (forall ((x! Int) (d! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_div_non_zero. x! d!) (=>
     %%global_location_label%%37
     (and
      (>= x! d!)
      (> d! 0)
   )))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_div_non_zero. x! d!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_div_non_zero._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_div_non_zero._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_div_non_zero. (Int Int) Bool)
(assert
 (forall ((x! Int) (d! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_div_non_zero. x! d!) (> (EucDiv x! d!) 0))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_div_non_zero. x! d!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_div_non_zero._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_div_non_zero._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_div_non_zero
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:174:1: 174:48 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const d! Int)
 (assert
  fuel_defaults
 )
 (assert
  (and
   (>= x! d!)
   (> d! 0)
 ))
 (declare-const %%switch_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_pos_is_pos.)
    (or
     (and
      (=>
       (= (EucDiv x! d!) 0)
       (=>
        (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_small_div_converse.)
        %%switch_label%%0
      ))
      (=>
       (not (= (EucDiv x! d!) 0))
       %%switch_label%%0
     ))
     (and
      (not %%switch_label%%0)
      (=>
       %%location_label%%0
       (> (EucDiv x! d!) 0)
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_div_is_strictly_smaller
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:219:1: 219:69 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const d! Int)
 (declare-const tmp%1 %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 x!)
 )
 (assert
  (< 1 d!)
 )
 (declare-fun %%lambda%%4 (Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (u$ Poly)) (!
    (= (%%apply%%0 (%%lambda%%4 %%hole%%0 %%hole%%1) u$) (B (=>
       (< %%hole%%0 (%I u$))
       (< (EucDiv (%I u$) %%hole%%1) (%I u$))
    )))
    :pattern ((%%apply%%0 (%%lambda%%4 %%hole%%0 %%hole%%1) u$))
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= tmp%1 (mk_fun (%%lambda%%4 0 d!)))
    (and
     (=>
      %%location_label%%0
      (req%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. d! x! tmp%1)
     )
     (=>
      (ens%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. d! x! tmp%1)
      (=>
       %%location_label%%1
       (< (EucDiv x! d!) x!)
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_div_is_strictly_smaller
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_is_strictly_smaller.)
  (forall ((x! Int) (d! Int)) (!
    (=>
     (and
      (< 0 x!)
      (< 1 d!)
     )
     (< (EucDiv x! d!) x!)
    )
    :pattern ((EucDiv x! d!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_div_is_strictly_smaller_54
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_is_strictly_smaller_54
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_dividing_sums
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:232:1: 232:75 (#0)
(get-info :all-statistics)
(push)
 (declare-const a! Int)
 (declare-const b! Int)
 (declare-const d! Int)
 (declare-const r! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 d!)
 )
 (assert
  (= r! (Sub (Add (EucMod a! d!) (EucMod b! d!)) (EucMod (Add a! b!) d!)))
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (= tmp%1 (Add a! b!))
    (and
     (=>
      %%location_label%%0
      (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
       tmp%1 d!
     ))
     (=>
      (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
       tmp%1 d!
      )
      (and
       (=>
        %%location_label%%1
        (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
         a! d!
       ))
       (=>
        (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
         a! d!
        )
        (and
         (=>
          %%location_label%%2
          (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
           b! d!
         ))
         (=>
          (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
           b! d!
          )
          (=>
           %%location_label%%3
           (= (Sub (Mul d! (EucDiv (Add a! b!) d!)) r!) (Add (Mul d! (EucDiv a! d!)) (Mul d! (EucDiv
               b! d!
 ))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_dividing_sums
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_dividing_sums.)
  (forall ((a! Int) (b! Int) (d! Int) (r! Int)) (!
    (=>
     (and
      (< 0 d!)
      (= r! (Sub (Add (EucMod a! d!) (EucMod b! d!)) (EucMod (Add a! b!) d!)))
     )
     (= (Sub (Mul d! (EucDiv (Add a! b!) d!)) r!) (Add (Mul d! (EucDiv a! d!)) (Mul d! (EucDiv
         b! d!
    )))))
    :pattern ((Sub (Mul d! (EucDiv (Add a! b!) d!)) r!) (Add (Mul d! (EucDiv a! d!)) (Mul
       d! (EucDiv b! d!)
    )))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_dividing_sums_55
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_dividing_sums_55
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_div_plus_one
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:267:1: 267:58 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const d! Int)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 d!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.div_internals.lemma_div_auto. d!)
    )
    (=>
     (ens%vstd.arithmetic.internals.div_internals.lemma_div_auto. d!)
     (=>
      %%location_label%%1
      (= (Add 1 (EucDiv x! d!)) (EucDiv (Add d! x!) d!))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_div_plus_one
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_plus_one.)
  (forall ((x! Int) (d! Int)) (!
    (=>
     (< 0 d!)
     (= (Add 1 (EucDiv x! d!)) (EucDiv (Add d! x!) d!))
    )
    :pattern ((Add 1 (EucDiv x! d!)) (EucDiv (Add d! x!) d!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_div_plus_one_56
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_plus_one_56
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_div_minus_one
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:280:1: 280:59 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const d! Int)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 d!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.div_internals.lemma_div_auto. d!)
    )
    (=>
     (ens%vstd.arithmetic.internals.div_internals.lemma_div_auto. d!)
     (=>
      %%location_label%%1
      (= (Add (Sub 0 1) (EucDiv x! d!)) (EucDiv (Add (Sub 0 d!) x!) d!))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_div_minus_one
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_minus_one.)
  (forall ((x! Int) (d! Int)) (!
    (=>
     (< 0 d!)
     (= (Add (Sub 0 1) (EucDiv x! d!)) (EucDiv (Add (Sub 0 d!) x!) d!))
    )
    :pattern ((Add (Sub 0 1) (EucDiv x! d!)) (EucDiv (Add (Sub 0 d!) x!) d!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_div_minus_one_57
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_minus_one_57
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_basic_div_specific_divisor
(declare-fun req%vstd.arithmetic.div_mod.lemma_basic_div_specific_divisor. (Int) Bool)
(declare-const %%global_location_label%%38 Bool)
(assert
 (forall ((d! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_basic_div_specific_divisor. d!) (=>
     %%global_location_label%%38
     (< 0 d!)
   ))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_basic_div_specific_divisor. d!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_basic_div_specific_divisor._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_basic_div_specific_divisor._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_basic_div_specific_divisor. (Int) Bool)
(assert
 (forall ((d! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_basic_div_specific_divisor. d!) (forall ((x$ Int))
     (!
      (=>
       (and
        (<= 0 x$)
        (< x$ d!)
       )
       (= (EucDiv x$ d!) 0)
      )
      :pattern ((EucDiv x$ d!))
      :qid user_crate__vstd__arithmetic__div_mod__lemma_basic_div_specific_divisor_58
      :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_basic_div_specific_divisor_58
   )))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_basic_div_specific_divisor. d!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_basic_div_specific_divisor._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_basic_div_specific_divisor._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_basic_div_specific_divisor
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:292:1: 292:54 (#0)
(get-info :all-statistics)
(push)
 (declare-const d! Int)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 d!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.div_internals.lemma_div_auto. d!)
    )
    (=>
     (ens%vstd.arithmetic.internals.div_internals.lemma_div_auto. d!)
     (=>
      %%location_label%%1
      (forall ((x$ Int)) (!
        (=>
         (and
          (<= 0 x$)
          (< x$ d!)
         )
         (= (EucDiv x$ d!) 0)
        )
        :pattern ((EucDiv x$ d!))
        :qid user_crate__vstd__arithmetic__div_mod__lemma_basic_div_specific_divisor_59
        :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_basic_div_specific_divisor_59
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_basic_div
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:303:1: 303:55 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const d! Int)
 (assert
  fuel_defaults
 )
 (assert
  (and
   (<= 0 x!)
   (< x! d!)
 ))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.div_mod.lemma_basic_div_specific_divisor. d!)
    )
    (=>
     (ens%vstd.arithmetic.div_mod.lemma_basic_div_specific_divisor. d!)
     (=>
      %%location_label%%1
      (= (EucDiv x! d!) 0)
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_basic_div
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_basic_div.)
  (forall ((x! Int) (d! Int)) (!
    (=>
     (and
      (<= 0 x!)
      (< x! d!)
     )
     (= (EucDiv x! d!) 0)
    )
    :pattern ((EucDiv x! d!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_basic_div_60
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_basic_div_60
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_div_decreases
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:343:1: 343:59 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const d! Int)
 (declare-const tmp%1 %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 x!)
 )
 (assert
  (< 1 d!)
 )
 (declare-fun %%lambda%%5 (Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (u$ Poly)) (!
    (= (%%apply%%0 (%%lambda%%5 %%hole%%0 %%hole%%1) u$) (B (=>
       (< %%hole%%0 (%I u$))
       (< (EucDiv (%I u$) %%hole%%1) (%I u$))
    )))
    :pattern ((%%apply%%0 (%%lambda%%5 %%hole%%0 %%hole%%1) u$))
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= tmp%1 (mk_fun (%%lambda%%5 0 d!)))
    (and
     (=>
      %%location_label%%0
      (req%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. d! x! tmp%1)
     )
     (=>
      (ens%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. d! x! tmp%1)
      (=>
       %%location_label%%1
       (< (EucDiv x! d!) x!)
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_div_decreases
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_decreases.)
  (forall ((x! Int) (d! Int)) (!
    (=>
     (and
      (< 0 x!)
      (< 1 d!)
     )
     (< (EucDiv x! d!) x!)
    )
    :pattern ((EucDiv x! d!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_div_decreases_61
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_decreases_61
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_div_nonincreasing
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:356:1: 356:63 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const d! Int)
 (declare-const tmp%1 %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 x!)
 )
 (assert
  (< 0 d!)
 )
 (declare-fun %%lambda%%6 (Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (u$ Poly)) (!
    (= (%%apply%%0 (%%lambda%%6 %%hole%%0 %%hole%%1) u$) (B (=>
       (<= %%hole%%0 (%I u$))
       (<= (EucDiv (%I u$) %%hole%%1) (%I u$))
    )))
    :pattern ((%%apply%%0 (%%lambda%%6 %%hole%%0 %%hole%%1) u$))
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= tmp%1 (mk_fun (%%lambda%%6 0 d!)))
    (and
     (=>
      %%location_label%%0
      (req%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. d! x! tmp%1)
     )
     (=>
      (ens%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. d! x! tmp%1)
      (=>
       %%location_label%%1
       (<= (EucDiv x! d!) x!)
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_div_nonincreasing
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_nonincreasing.)
  (forall ((x! Int) (d! Int)) (!
    (=>
     (and
      (<= 0 x!)
      (< 0 d!)
     )
     (<= (EucDiv x! d!) x!)
    )
    :pattern ((EucDiv x! d!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_div_nonincreasing_62
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_nonincreasing_62
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_small_mod
(declare-fun req%vstd.arithmetic.div_mod.lemma_small_mod. (Int Int) Bool)
(declare-const %%global_location_label%%39 Bool)
(declare-const %%global_location_label%%40 Bool)
(assert
 (forall ((x! Int) (m! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_small_mod. x! m!) (and
     (=>
      %%global_location_label%%39
      (< x! m!)
     )
     (=>
      %%global_location_label%%40
      (< 0 m!)
   )))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_small_mod. x! m!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_small_mod._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_small_mod._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_small_mod. (Int Int) Bool)
(assert
 (forall ((x! Int) (m! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_small_mod. x! m!) (= (nClip (EucMod x! m!)) x!))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_small_mod. x! m!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_small_mod._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_small_mod._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_small_mod
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:369:1: 369:45 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const m! Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 x!)
 )
 (assert
  (<= 0 m!)
 )
 (assert
  (< x! m!)
 )
 (assert
  (< 0 m!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_small_mod. x! m!)
    )
    (=>
     (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_small_mod. x! m!)
     (=>
      %%location_label%%1
      (= (nClip (EucMod x! m!)) x!)
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_mul_is_distributive_auto
(declare-fun ens%vstd.arithmetic.div_mod.lemma_mul_is_distributive_auto. (Int) Bool)
(assert
 (forall ((no%param Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_mul_is_distributive_auto. no%param) (and
     (forall ((x$ Int) (y$ Int) (z$ Int)) (!
       (= (Mul x$ (Add y$ z$)) (Add (Mul x$ y$) (Mul x$ z$)))
       :pattern ((Mul x$ (Add y$ z$)))
       :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_is_distributive_auto_63
       :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_is_distributive_auto_63
     ))
     (forall ((x$ Int) (y$ Int) (z$ Int)) (!
       (= (Mul (Add y$ z$) x$) (Add (Mul y$ x$) (Mul z$ x$)))
       :pattern ((Mul (Add y$ z$) x$))
       :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_is_distributive_auto_64
       :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_is_distributive_auto_64
     ))
     (forall ((x$ Int) (y$ Int) (z$ Int)) (!
       (= (Mul x$ (Sub y$ z$)) (Sub (Mul x$ y$) (Mul x$ z$)))
       :pattern ((Mul x$ (Sub y$ z$)))
       :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_is_distributive_auto_65
       :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_is_distributive_auto_65
     ))
     (forall ((x$ Int) (y$ Int) (z$ Int)) (!
       (= (Mul (Sub y$ z$) x$) (Sub (Mul y$ x$) (Mul z$ x$)))
       :pattern ((Mul (Sub y$ z$) x$))
       :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_is_distributive_auto_66
       :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_is_distributive_auto_66
   ))))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_mul_is_distributive_auto. no%param))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_mul_is_distributive_auto._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_mul_is_distributive_auto._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mul_is_distributive_auto
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:380:7: 380:42 (#0)
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
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.mul.group_mul_is_distributive.)
    (and
     (=>
      %%location_label%%0
      (forall ((x$ Int) (y$ Int) (z$ Int)) (!
        (= (Mul x$ (Add y$ z$)) (Add (Mul x$ y$) (Mul x$ z$)))
        :pattern ((Mul x$ (Add y$ z$)))
        :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_is_distributive_auto_67
        :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_is_distributive_auto_67
     )))
     (and
      (=>
       %%location_label%%1
       (forall ((x$ Int) (y$ Int) (z$ Int)) (!
         (= (Mul (Add y$ z$) x$) (Add (Mul y$ x$) (Mul z$ x$)))
         :pattern ((Mul (Add y$ z$) x$))
         :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_is_distributive_auto_68
         :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_is_distributive_auto_68
      )))
      (and
       (=>
        %%location_label%%2
        (forall ((x$ Int) (y$ Int) (z$ Int)) (!
          (= (Mul x$ (Sub y$ z$)) (Sub (Mul x$ y$) (Mul x$ z$)))
          :pattern ((Mul x$ (Sub y$ z$)))
          :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_is_distributive_auto_69
          :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_is_distributive_auto_69
       )))
       (=>
        %%location_label%%3
        (forall ((x$ Int) (y$ Int) (z$ Int)) (!
          (= (Mul (Sub y$ z$) x$) (Sub (Mul y$ x$) (Mul z$ x$)))
          :pattern ((Mul (Sub y$ z$) x$))
          :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_is_distributive_auto_70
          :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_is_distributive_auto_70
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_mul_is_commutative_auto
(declare-fun ens%vstd.arithmetic.div_mod.lemma_mul_is_commutative_auto. (Int) Bool)
(assert
 (forall ((no%param Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_mul_is_commutative_auto. no%param) (forall ((x$
       Int
      ) (y$ Int)
     ) (!
      (= (Mul x$ y$) (Mul y$ x$))
      :pattern ((Mul x$ y$))
      :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_is_commutative_auto_71
      :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_is_commutative_auto_71
   )))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_mul_is_commutative_auto. no%param))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_mul_is_commutative_auto._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_mul_is_commutative_auto._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mul_is_commutative_auto
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:392:7: 392:41 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (assert
  fuel_defaults
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_commutative.)
    (=>
     %%location_label%%0
     (forall ((x$ Int) (y$ Int)) (!
       (= (Mul x$ y$) (Mul y$ x$))
       :pattern ((Mul x$ y$))
       :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_is_commutative_auto_72
       :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_is_commutative_auto_72
 ))))))
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
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_basics_1_73
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_basics_1_73
))))

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_basics_2
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_basics_2.)
  (forall ((x! Int)) (!
    (= (Mul x! 0) 0)
    :pattern ((Mul x! 0))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_basics_2_74
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_basics_2_74
))))

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_basics_3
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_basics_3.)
  (forall ((x! Int)) (!
    (= (Mul x! 1) x!)
    :pattern ((Mul x! 1))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_basics_3_75
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_basics_3_75
))))

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_basics_4
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_basics_4.)
  (forall ((x! Int)) (!
    (= (Mul 1 x!) x!)
    :pattern ((Mul 1 x!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_basics_4_76
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_basics_4_76
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_mul_basics_auto
(declare-fun ens%vstd.arithmetic.div_mod.lemma_mul_basics_auto. (Int) Bool)
(assert
 (forall ((no%param Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_mul_basics_auto. no%param) (and
     (forall ((x$ Int)) (!
       (= (Mul 0 x$) 0)
       :pattern ((Mul 0 x$))
       :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_basics_auto_77
       :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_basics_auto_77
     ))
     (forall ((x$ Int)) (!
       (= (Mul x$ 0) 0)
       :pattern ((Mul x$ 0))
       :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_basics_auto_78
       :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_basics_auto_78
     ))
     (forall ((x$ Int)) (!
       (= (Mul x$ 1) x$)
       :pattern ((Mul x$ 1))
       :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_basics_auto_79
       :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_basics_auto_79
     ))
     (forall ((x$ Int)) (!
       (= (Mul 1 x$) x$)
       :pattern ((Mul 1 x$))
       :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_basics_auto_80
       :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_basics_auto_80
   ))))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_mul_basics_auto. no%param))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_mul_basics_auto._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_mul_basics_auto._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mul_basics_auto
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:401:7: 401:33 (#0)
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
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.mul.group_mul_basics.)
    (and
     (=>
      %%location_label%%0
      (forall ((x$ Int)) (!
        (= (Mul 0 x$) 0)
        :pattern ((Mul 0 x$))
        :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_basics_auto_81
        :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_basics_auto_81
     )))
     (and
      (=>
       %%location_label%%1
       (forall ((x$ Int)) (!
         (= (Mul x$ 0) 0)
         :pattern ((Mul x$ 0))
         :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_basics_auto_82
         :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_basics_auto_82
      )))
      (and
       (=>
        %%location_label%%2
        (forall ((x$ Int)) (!
          (= (Mul x$ 1) x$)
          :pattern ((Mul x$ 1))
          :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_basics_auto_83
          :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_basics_auto_83
       )))
       (=>
        %%location_label%%3
        (forall ((x$ Int)) (!
          (= (Mul 1 x$) x$)
          :pattern ((Mul 1 x$))
          :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_basics_auto_84
          :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_basics_auto_84
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::mul::lemma_mul_strictly_positive
(declare-fun ens%vstd.arithmetic.mul.lemma_mul_strictly_positive. (Int Int) Bool)
(assert
 (forall ((x! Int) (y! Int)) (!
   (= (ens%vstd.arithmetic.mul.lemma_mul_strictly_positive. x! y!) (=>
     (and
      (< 0 x!)
      (< 0 y!)
     )
     (< 0 (Mul x! y!))
   ))
   :pattern ((ens%vstd.arithmetic.mul.lemma_mul_strictly_positive. x! y!))
   :qid internal_ens__vstd.arithmetic.mul.lemma_mul_strictly_positive._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.mul.lemma_mul_strictly_positive._definition
)))

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
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_strictly_positive_85
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_strictly_positive_85
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

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_is_associative
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_associative.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (= (Mul x! (Mul y! z!)) (Mul (Mul x! y!) z!))
    :pattern ((Mul x! (Mul y! z!)))
    :pattern ((Mul (Mul x! y!) z!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_is_associative_86
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_is_associative_86
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_mul_is_associative_auto
(declare-fun ens%vstd.arithmetic.div_mod.lemma_mul_is_associative_auto. (Int) Bool)
(assert
 (forall ((no%param Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_mul_is_associative_auto. no%param) (forall ((x$
       Int
      ) (y$ Int) (z$ Int)
     ) (!
      (= (Mul x$ (Mul y$ z$)) (Mul (Mul x$ y$) z$))
      :pattern ((Mul x$ (Mul y$ z$)))
      :pattern ((Mul (Mul x$ y$) z$))
      :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_is_associative_auto_87
      :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_is_associative_auto_87
   )))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_mul_is_associative_auto. no%param))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_mul_is_associative_auto._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_mul_is_associative_auto._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mul_is_associative_auto
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:537:7: 537:41 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (assert
  fuel_defaults
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_associative.)
    (=>
     %%location_label%%0
     (forall ((x$ Int) (y$ Int) (z$ Int)) (!
       (= (Mul x$ (Mul y$ z$)) (Mul (Mul x$ y$) z$))
       :pattern ((Mul x$ (Mul y$ z$)))
       :pattern ((Mul (Mul x$ y$) z$))
       :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_is_associative_auto_88
       :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_is_associative_auto_88
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_part_bound1
(declare-fun req%vstd.arithmetic.div_mod.lemma_part_bound1. (Int Int Int) Bool)
(declare-const %%global_location_label%%41 Bool)
(declare-const %%global_location_label%%42 Bool)
(declare-const %%global_location_label%%43 Bool)
(assert
 (forall ((a! Int) (b! Int) (c! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_part_bound1. a! b! c!) (and
     (=>
      %%global_location_label%%41
      (<= 0 a!)
     )
     (=>
      %%global_location_label%%42
      (< 0 b!)
     )
     (=>
      %%global_location_label%%43
      (< 0 c!)
   )))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_part_bound1. a! b! c!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_part_bound1._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_part_bound1._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_part_bound1. (Int Int Int) Bool)
(assert
 (forall ((a! Int) (b! Int) (c! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_part_bound1. a! b! c!) (and
     (< 0 (Mul b! c!))
     (<= (EucMod (Mul b! (EucDiv a! b!)) (Mul b! c!)) (Mul b! (Sub c! 1)))
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_part_bound1. a! b! c!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_part_bound1._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_part_bound1._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_part_bound1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:945:1: 945:65 (#0)
(get-info :all-statistics)
(push)
 (declare-const a! Int)
 (declare-const b! Int)
 (declare-const c! Int)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Int)
 (declare-const tmp%3 Int)
 (declare-const tmp%4 Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 a!)
 )
 (assert
  (< 0 b!)
 )
 (assert
  (< 0 c!)
 )
 ;; precondition not satisfied
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
  (not (=>
    (= tmp%1 (EucDiv a! b!))
    (=>
     (ens%vstd.arithmetic.mul.lemma_mul_strictly_positive. b! tmp%1)
     (=>
      (ens%vstd.arithmetic.mul.lemma_mul_strictly_positive. b! c!)
      (=>
       (= tmp%2 (Sub c! 1))
       (=>
        (ens%vstd.arithmetic.mul.lemma_mul_strictly_positive. b! tmp%2)
        (and
         (and
          (=>
           (= tmp%3 (Mul b! (EucDiv a! b!)))
           (=>
            (= tmp%4 (Mul b! c!))
            (and
             (=>
              %%location_label%%0
              (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
               tmp%3 tmp%4
             ))
             (=>
              (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
               tmp%3 tmp%4
              )
              (=>
               %%location_label%%1
               (= (EucMod (Mul b! (EucDiv a! b!)) (Mul b! c!)) (Sub (Mul b! (EucDiv a! b!)) (Mul (Mul
                   b! c!
                  ) (EucDiv (Mul b! (EucDiv a! b!)) (Mul b! c!))
          ))))))))
          (=>
           (= (EucMod (Mul b! (EucDiv a! b!)) (Mul b! c!)) (Sub (Mul b! (EucDiv a! b!)) (Mul (Mul
               b! c!
              ) (EucDiv (Mul b! (EucDiv a! b!)) (Mul b! c!))
           )))
           (and
            (=>
             (ens%vstd.arithmetic.div_mod.lemma_mul_is_associative_auto. 0)
             (=>
              %%location_label%%2
              (= (Sub (Mul b! (EucDiv a! b!)) (Mul (Mul b! c!) (EucDiv (Mul b! (EucDiv a! b!)) (Mul
                   b! c!
                )))
               ) (Sub (Mul b! (EucDiv a! b!)) (Mul b! (Mul c! (EucDiv (Mul b! (EucDiv a! b!)) (Mul b!
                    c!
            ))))))))
            (=>
             (= (Sub (Mul b! (EucDiv a! b!)) (Mul (Mul b! c!) (EucDiv (Mul b! (EucDiv a! b!)) (Mul
                  b! c!
               )))
              ) (Sub (Mul b! (EucDiv a! b!)) (Mul b! (Mul c! (EucDiv (Mul b! (EucDiv a! b!)) (Mul b!
                   c!
             ))))))
             (and
              (=>
               (ens%vstd.arithmetic.div_mod.lemma_mul_is_distributive_auto. 0)
               (=>
                %%location_label%%3
                (= (Sub (Mul b! (EucDiv a! b!)) (Mul b! (Mul c! (EucDiv (Mul b! (EucDiv a! b!)) (Mul b!
                      c!
                  ))))
                 ) (Mul b! (Sub (EucDiv a! b!) (Mul c! (EucDiv (Mul b! (EucDiv a! b!)) (Mul b! c!)))))
              )))
              (=>
               (= (Sub (Mul b! (EucDiv a! b!)) (Mul b! (Mul c! (EucDiv (Mul b! (EucDiv a! b!)) (Mul b!
                     c!
                 ))))
                ) (Mul b! (Sub (EucDiv a! b!) (Mul c! (EucDiv (Mul b! (EucDiv a! b!)) (Mul b! c!)))))
               )
               (=>
                %%location_label%%4
                (= (EucMod (Mul b! (EucDiv a! b!)) (Mul b! c!)) (Mul b! (Sub (EucDiv a! b!) (Mul c! (
                     EucDiv (Mul b! (EucDiv a! b!)) (Mul b! c!)
         ))))))))))))
         (=>
          (= (EucMod (Mul b! (EucDiv a! b!)) (Mul b! c!)) (Mul b! (Sub (EucDiv a! b!) (Mul c! (
               EucDiv (Mul b! (EucDiv a! b!)) (Mul b! c!)
          )))))
          (and
           (=>
            (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_commutative.)
            (=>
             (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_inequality.)
             (=>
              %%location_label%%5
              (<= (EucMod (Mul b! (EucDiv a! b!)) (Mul b! c!)) (Mul b! (Sub c! 1)))
           )))
           (=>
            (<= (EucMod (Mul b! (EucDiv a! b!)) (Mul b! c!)) (Mul b! (Sub c! 1)))
            (and
             (=>
              %%location_label%%6
              (< 0 (Mul b! c!))
             )
             (=>
              %%location_label%%7
              (<= (EucMod (Mul b! (EucDiv a! b!)) (Mul b! c!)) (Mul b! (Sub c! 1)))
 )))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_part_bound1
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_part_bound1.)
  (forall ((a! Int) (b! Int) (c! Int)) (!
    (=>
     (and
      (and
       (<= 0 a!)
       (< 0 b!)
      )
      (< 0 c!)
     )
     (and
      (< 0 (Mul b! c!))
      (<= (EucMod (Mul b! (EucDiv a! b!)) (Mul b! c!)) (Mul b! (Sub c! 1)))
    ))
    :pattern ((EucMod (Mul b! (EucDiv a! b!)) (Mul b! c!)))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_part_bound1_89
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_part_bound1_89
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_mod_self_0
(declare-fun req%vstd.arithmetic.div_mod.lemma_mod_self_0. (Int) Bool)
(declare-const %%global_location_label%%44 Bool)
(assert
 (forall ((m! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_mod_self_0. m!) (=>
     %%global_location_label%%44
     (> m! 0)
   ))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_mod_self_0. m!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_mod_self_0._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_mod_self_0._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_mod_self_0. (Int) Bool)
(assert
 (forall ((m! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_mod_self_0. m!) (= (EucMod m! m!) 0))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_mod_self_0. m!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_mod_self_0._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_mod_self_0._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mod_self_0
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1058:1: 1058:48 (#0)
(get-info :all-statistics)
(push)
 (declare-const m! Int)
 (assert
  fuel_defaults
 )
 (assert
  (> m! 0)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
    )
    (=>
     (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
     (=>
      %%location_label%%1
      (= (EucMod m! m!) 0)
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_mod_self_0
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_mod_self_0.)
  (forall ((m! Int)) (!
    (=>
     (> m! 0)
     (= (EucMod m! m!) 0)
    )
    :pattern ((EucMod m! m!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_self_0_95
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_self_0_95
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_mod_twice
(declare-fun req%vstd.arithmetic.div_mod.lemma_mod_twice. (Int Int) Bool)
(declare-const %%global_location_label%%45 Bool)
(assert
 (forall ((x! Int) (m! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_mod_twice. x! m!) (=>
     %%global_location_label%%45
     (> m! 0)
   ))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_mod_twice. x! m!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_mod_twice._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_mod_twice._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_mod_twice. (Int Int) Bool)
(assert
 (forall ((x! Int) (m! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_mod_twice. x! m!) (= (EucMod (EucMod x! m!) m!)
     (EucMod x! m!)
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_mod_twice. x! m!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_mod_twice._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_mod_twice._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mod_twice
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1068:1: 1068:55 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const m! Int)
 (assert
  fuel_defaults
 )
 (assert
  (> m! 0)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
    )
    (=>
     (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
     (=>
      %%location_label%%1
      (= (EucMod (EucMod x! m!) m!) (EucMod x! m!))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_mod_twice
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_mod_twice.)
  (forall ((x! Int) (m! Int)) (!
    (=>
     (> m! 0)
     (= (EucMod (EucMod x! m!) m!) (EucMod x! m!))
    )
    :pattern ((EucMod (EucMod x! m!) m!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_twice_96
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_twice_96
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mod_division_less_than_divisor
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1083:1: 1083:76 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const m! Int)
 (assert
  fuel_defaults
 )
 (assert
  (> m! 0)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
    )
    (=>
     (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
     (=>
      %%location_label%%1
      (let
       ((tmp%%$ (EucMod x! m!)))
       (and
        (<= 0 tmp%%$)
        (< tmp%%$ m!)
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_mod_division_less_than_divisor
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_mod_division_less_than_divisor.)
  (forall ((x! Int) (m! Int)) (!
    (=>
     (> m! 0)
     (let
      ((tmp%%$ (EucMod x! m!)))
      (and
       (<= 0 tmp%%$)
       (< tmp%%$ m!)
    )))
    :pattern ((EucMod x! m!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_division_less_than_divisor_97
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_division_less_than_divisor_97
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_mod_properties_auto
(declare-fun ens%vstd.arithmetic.div_mod.lemma_mod_properties_auto. (Int) Bool)
(assert
 (forall ((no%param Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_mod_properties_auto. no%param) (and
     (forall ((m$ Int)) (!
       (=>
        (> m$ 0)
        (= (EucMod m$ m$) 0)
       )
       :pattern ((EucMod m$ m$))
       :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_properties_auto_98
       :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_properties_auto_98
     ))
     (forall ((x$ Int) (m$ Int)) (!
       (=>
        (> m$ 0)
        (= (EucMod (EucMod x$ m$) m$) (EucMod x$ m$))
       )
       :pattern ((EucMod (EucMod x$ m$) m$))
       :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_properties_auto_99
       :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_properties_auto_99
     ))
     (forall ((x$ Int) (m$ Int)) (!
       (=>
        (> m$ 0)
        (let
         ((tmp%%$ (EucMod x$ m$)))
         (and
          (<= 0 tmp%%$)
          (< tmp%%$ m$)
       )))
       :pattern ((EucMod x$ m$))
       :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_properties_auto_100
       :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_properties_auto_100
   ))))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_mod_properties_auto. no%param))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_mod_properties_auto._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_mod_properties_auto._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mod_properties_auto
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1099:7: 1099:37 (#0)
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
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.div_mod.group_mod_properties.)
    (and
     (=>
      %%location_label%%0
      (forall ((m$ Int)) (!
        (=>
         (> m$ 0)
         (= (EucMod m$ m$) 0)
        )
        :pattern ((EucMod m$ m$))
        :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_properties_auto_101
        :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_properties_auto_101
     )))
     (and
      (=>
       %%location_label%%1
       (forall ((x$ Int) (m$ Int)) (!
         (=>
          (> m$ 0)
          (= (EucMod (EucMod x$ m$) m$) (EucMod x$ m$))
         )
         :pattern ((EucMod (EucMod x$ m$) m$))
         :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_properties_auto_102
         :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_properties_auto_102
      )))
      (=>
       %%location_label%%2
       (forall ((x$ Int) (m$ Int)) (!
         (=>
          (> m$ 0)
          (let
           ((tmp%%$ (EucMod x$ m$)))
           (and
            (<= 0 tmp%%$)
            (< tmp%%$ m$)
         )))
         :pattern ((EucMod x$ m$))
         :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_properties_auto_103
         :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_properties_auto_103
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::mul::lemma_mul_increases
(declare-fun req%vstd.arithmetic.mul.lemma_mul_increases. (Int Int) Bool)
(declare-const %%global_location_label%%46 Bool)
(declare-const %%global_location_label%%47 Bool)
(assert
 (forall ((x! Int) (y! Int)) (!
   (= (req%vstd.arithmetic.mul.lemma_mul_increases. x! y!) (and
     (=>
      %%global_location_label%%46
      (< 0 x!)
     )
     (=>
      %%global_location_label%%47
      (< 0 y!)
   )))
   :pattern ((req%vstd.arithmetic.mul.lemma_mul_increases. x! y!))
   :qid internal_req__vstd.arithmetic.mul.lemma_mul_increases._definition
   :skolemid skolem_internal_req__vstd.arithmetic.mul.lemma_mul_increases._definition
)))
(declare-fun ens%vstd.arithmetic.mul.lemma_mul_increases. (Int Int) Bool)
(assert
 (forall ((x! Int) (y! Int)) (!
   (= (ens%vstd.arithmetic.mul.lemma_mul_increases. x! y!) (<= y! (Mul x! y!)))
   :pattern ((ens%vstd.arithmetic.mul.lemma_mul_increases. x! y!))
   :qid internal_ens__vstd.arithmetic.mul.lemma_mul_increases._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.mul.lemma_mul_increases._definition
)))

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
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_increases_104
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_increases_104
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_part_bound2
(declare-fun req%vstd.arithmetic.div_mod.lemma_part_bound2. (Int Int Int) Bool)
(declare-const %%global_location_label%%48 Bool)
(declare-const %%global_location_label%%49 Bool)
(declare-const %%global_location_label%%50 Bool)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_part_bound2. x! y! z!) (and
     (=>
      %%global_location_label%%48
      (<= 0 x!)
     )
     (=>
      %%global_location_label%%49
      (< 0 y!)
     )
     (=>
      %%global_location_label%%50
      (< 0 z!)
   )))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_part_bound2. x! y! z!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_part_bound2._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_part_bound2._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_part_bound2. (Int Int Int) Bool)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_part_bound2. x! y! z!) (and
     (> (Mul y! z!) 0)
     (< (EucMod (EucMod x! y!) (Mul y! z!)) y!)
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_part_bound2. x! y! z!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_part_bound2._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_part_bound2._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_part_bound2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1656:1: 1656:65 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const z! Int)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Int)
 (declare-const tmp%5 Int)
 (declare-const tmp%6 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 x!)
 )
 (assert
  (< 0 y!)
 )
 (assert
  (< 0 z!)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%5 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%6 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_strictly_positive.)
    (=>
     (ens%vstd.arithmetic.div_mod.lemma_mod_properties_auto. 0)
     (=>
      (= tmp%1 (< (EucMod x! y!) y!))
      (and
       (=>
        %%location_label%%0
        tmp%1
       )
       (=>
        tmp%1
        (=>
         (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_commutative.)
         (=>
          (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_increases.)
          (=>
           (= tmp%2 (<= y! (Mul y! z!)))
           (and
            (=>
             %%location_label%%1
             tmp%2
            )
            (=>
             tmp%2
             (=>
              (= tmp%3 (let
                ((tmp%%$ (EucMod x! y!)))
                (and
                 (<= 0 tmp%%$)
                 (< tmp%%$ (Mul y! z!))
              )))
              (and
               (=>
                %%location_label%%2
                tmp%3
               )
               (=>
                tmp%3
                (=>
                 (ens%vstd.arithmetic.div_mod.lemma_mod_properties_auto. 0)
                 (=>
                  (= tmp%4 (nClip (EucMod x! y!)))
                  (=>
                   (= tmp%5 (nClip (Mul y! z!)))
                   (and
                    (=>
                     %%location_label%%3
                     (req%vstd.arithmetic.div_mod.lemma_small_mod. tmp%4 tmp%5)
                    )
                    (=>
                     (ens%vstd.arithmetic.div_mod.lemma_small_mod. tmp%4 tmp%5)
                     (=>
                      (= tmp%6 (= (EucMod (EucMod x! y!) (Mul y! z!)) (EucMod x! y!)))
                      (and
                       (=>
                        %%location_label%%4
                        tmp%6
                       )
                       (=>
                        tmp%6
                        (and
                         (=>
                          %%location_label%%5
                          (> (Mul y! z!) 0)
                         )
                         (=>
                          %%location_label%%6
                          (< (EucMod (EucMod x! y!) (Mul y! z!)) y!)
 )))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_part_bound2
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_part_bound2.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (=>
     (and
      (and
       (<= 0 x!)
       (< 0 y!)
      )
      (< 0 z!)
     )
     (and
      (> (Mul y! z!) 0)
      (< (EucMod (EucMod x! y!) (Mul y! z!)) y!)
    ))
    :pattern ((EucMod x! y!) (Mul y! z!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_part_bound2_105
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_part_bound2_105
))))

;; Function-Specs crate::vstd::arithmetic::mul::lemma_mul_nonnegative
(declare-fun req%vstd.arithmetic.mul.lemma_mul_nonnegative. (Int Int) Bool)
(declare-const %%global_location_label%%51 Bool)
(declare-const %%global_location_label%%52 Bool)
(assert
 (forall ((x! Int) (y! Int)) (!
   (= (req%vstd.arithmetic.mul.lemma_mul_nonnegative. x! y!) (and
     (=>
      %%global_location_label%%51
      (<= 0 x!)
     )
     (=>
      %%global_location_label%%52
      (<= 0 y!)
   )))
   :pattern ((req%vstd.arithmetic.mul.lemma_mul_nonnegative. x! y!))
   :qid internal_req__vstd.arithmetic.mul.lemma_mul_nonnegative._definition
   :skolemid skolem_internal_req__vstd.arithmetic.mul.lemma_mul_nonnegative._definition
)))
(declare-fun ens%vstd.arithmetic.mul.lemma_mul_nonnegative. (Int Int) Bool)
(assert
 (forall ((x! Int) (y! Int)) (!
   (= (ens%vstd.arithmetic.mul.lemma_mul_nonnegative. x! y!) (<= 0 (Mul x! y!)))
   :pattern ((ens%vstd.arithmetic.mul.lemma_mul_nonnegative. x! y!))
   :qid internal_ens__vstd.arithmetic.mul.lemma_mul_nonnegative._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.mul.lemma_mul_nonnegative._definition
)))

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
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_nonnegative_106
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_nonnegative_106
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_mod_adds
(declare-fun req%vstd.arithmetic.div_mod.lemma_mod_adds. (Int Int Int) Bool)
(declare-const %%global_location_label%%53 Bool)
(assert
 (forall ((a! Int) (b! Int) (d! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_mod_adds. a! b! d!) (=>
     %%global_location_label%%53
     (< 0 d!)
   ))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_mod_adds. a! b! d!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_mod_adds._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_mod_adds._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_mod_adds. (Int Int Int) Bool)
(assert
 (forall ((a! Int) (b! Int) (d! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_mod_adds. a! b! d!) (and
     (= (Add (EucMod a! d!) (EucMod b! d!)) (Add (EucMod (Add a! b!) d!) (Mul d! (EucDiv (
          Add (EucMod a! d!) (EucMod b! d!)
         ) d!
     ))))
     (=>
      (< (Add (EucMod a! d!) (EucMod b! d!)) d!)
      (= (Add (EucMod a! d!) (EucMod b! d!)) (EucMod (Add a! b!) d!))
   )))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_mod_adds. a! b! d!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_mod_adds._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_mod_adds._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mod_adds
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1265:1: 1265:62 (#0)
(get-info :all-statistics)
(push)
 (declare-const a! Int)
 (declare-const b! Int)
 (declare-const d! Int)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 d!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.)
    (and
     (=>
      %%location_label%%0
      (req%vstd.arithmetic.internals.div_internals.lemma_div_auto. d!)
     )
     (=>
      (ens%vstd.arithmetic.internals.div_internals.lemma_div_auto. d!)
      (and
       (=>
        %%location_label%%1
        (= (Add (EucMod a! d!) (EucMod b! d!)) (Add (EucMod (Add a! b!) d!) (Mul d! (EucDiv (
             Add (EucMod a! d!) (EucMod b! d!)
            ) d!
       )))))
       (=>
        %%location_label%%2
        (=>
         (< (Add (EucMod a! d!) (EucMod b! d!)) d!)
         (= (Add (EucMod a! d!) (EucMod b! d!)) (EucMod (Add a! b!) d!))
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_mod_adds
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_mod_adds.)
  (forall ((a! Int) (b! Int) (d! Int)) (!
    (=>
     (< 0 d!)
     (and
      (= (Add (EucMod a! d!) (EucMod b! d!)) (Add (EucMod (Add a! b!) d!) (Mul d! (EucDiv (
           Add (EucMod a! d!) (EucMod b! d!)
          ) d!
      ))))
      (=>
       (< (Add (EucMod a! d!) (EucMod b! d!)) d!)
       (= (Add (EucMod a! d!) (EucMod b! d!)) (EucMod (Add a! b!) d!))
    )))
    :pattern ((EucMod (Add a! b!) d!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_adds_107
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_adds_107
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_fundamental_div_mod_converse_helper_1
(declare-fun req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_1.
 (Int Int Int) Bool
)
(declare-const %%global_location_label%%54 Bool)
(declare-const %%global_location_label%%55 Bool)
(assert
 (forall ((u! Int) (d! Int) (r! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_1. u! d!
     r!
    ) (and
     (=>
      %%global_location_label%%54
      (not (= d! 0))
     )
     (=>
      %%global_location_label%%55
      (and
       (<= 0 r!)
       (< r! d!)
   ))))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_1.
     u! d! r!
   ))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_1._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_1._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_1.
 (Int Int Int) Bool
)
(assert
 (forall ((u! Int) (d! Int) (r! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_1. u! d!
     r!
    ) (= u! (EucDiv (Add (Mul u! d!) r!) d!))
   )
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_1.
     u! d! r!
   ))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_1._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_1._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_fundamental_div_mod_converse_helper_1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1305:7: 1305:77 (#0)
(get-info :all-statistics)
(push)
 (declare-const u! Int)
 (declare-const d! Int)
 (declare-const r! Int)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Int)
 (declare-const tmp%3 Int)
 (declare-const tmp%4 Int)
 (declare-const tmp%5 Bool)
 (declare-const tmp%6 Bool)
 (declare-const tmp%7 Int)
 (declare-const tmp%8 Int)
 (declare-const tmp%9 Int)
 (declare-const tmp%10 Bool)
 (declare-const tmp%11 Bool)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (not (= d! 0))
 )
 (assert
  (and
   (<= 0 r!)
   (< r! d!)
 ))
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; requires not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%6 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%7 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%8 Bool)
 ;; assertion failed
 (declare-const %%location_label%%9 Bool)
 ;; assertion failed
 (declare-const %%location_label%%10 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%11 Bool)
 (assert
  (not (=>
    (= decrease%init0 (ite
      (>= u! 0)
      u!
      (Sub 0 u!)
    ))
    (or
     (and
      (=>
       (< u! 0)
       (=>
        (= tmp%1 (Add u! 1))
        (and
         (=>
          %%location_label%%0
          (check_decrease_int (let
            ((u!$0 tmp%1) (d!$1 d!) (r!$2 r!))
            (ite
             (>= u!$0 0)
             u!$0
             (Sub 0 u!$0)
            )
           ) decrease%init0 false
         ))
         (and
          (=>
           %%location_label%%1
           (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_1. tmp%1 d!
            r!
          ))
          (=>
           (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_1. tmp%1 d!
            r!
           )
           (=>
            (= tmp%2 (Add (Mul u! d!) r!))
            (and
             (=>
              %%location_label%%2
              (req%vstd.arithmetic.internals.mod_internals.lemma_div_add_denominator. d! tmp%2)
             )
             (=>
              (ens%vstd.arithmetic.internals.mod_internals.lemma_div_add_denominator. d! tmp%2)
              (=>
               (= tmp%3 (Add u! 1))
               (=>
                (= tmp%4 (Sub 0 1))
                (=>
                 (ens%vstd.arithmetic.mul.lemma_mul_is_distributive_add_other_way. d! tmp%3 tmp%4)
                 (=>
                  (= tmp%5 (= u! (EucDiv (Add (Mul u! d!) r!) d!)))
                  (and
                   (=>
                    %%location_label%%3
                    tmp%5
                   )
                   (=>
                    tmp%5
                    %%switch_label%%0
      ))))))))))))))
      (=>
       (not (< u! 0))
       (or
        (and
         (=>
          (= u! 0)
          (=>
           (ens%vstd.arithmetic.internals.div_internals_nonlinear.lemma_small_div. 0)
           (and
            (=>
             %%location_label%%4
             true
            )
            (=>
             (=>
              (= u! 0)
              (= (Mul u! d!) 0)
             )
             (=>
              (= tmp%6 (= u! (EucDiv (Add (Mul u! d!) r!) d!)))
              (and
               (=>
                %%location_label%%5
                tmp%6
               )
               (=>
                tmp%6
                %%switch_label%%1
         )))))))
         (=>
          (not (= u! 0))
          (=>
           (= tmp%7 (Sub u! 1))
           (and
            (=>
             %%location_label%%6
             (check_decrease_int (let
               ((u!$0 tmp%7) (d!$1 d!) (r!$2 r!))
               (ite
                (>= u!$0 0)
                u!$0
                (Sub 0 u!$0)
               )
              ) decrease%init0 false
            ))
            (and
             (=>
              %%location_label%%7
              (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_1. tmp%7 d!
               r!
             ))
             (=>
              (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_1. tmp%7 d!
               r!
              )
              (=>
               (= tmp%8 (Add (Mul (Sub u! 1) d!) r!))
               (and
                (=>
                 %%location_label%%8
                 (req%vstd.arithmetic.internals.mod_internals.lemma_div_add_denominator. d! tmp%8)
                )
                (=>
                 (ens%vstd.arithmetic.internals.mod_internals.lemma_div_add_denominator. d! tmp%8)
                 (=>
                  (= tmp%9 (Sub u! 1))
                  (=>
                   (ens%vstd.arithmetic.mul.lemma_mul_is_distributive_add_other_way. d! tmp%9 1)
                   (=>
                    (= tmp%10 (= (Add (Mul u! d!) r!) (Add (Add (Mul (Sub u! 1) d!) r!) d!)))
                    (and
                     (=>
                      %%location_label%%9
                      tmp%10
                     )
                     (=>
                      tmp%10
                      (=>
                       (= tmp%11 (= u! (EucDiv (Add (Mul u! d!) r!) d!)))
                       (and
                        (=>
                         %%location_label%%10
                         tmp%11
                        )
                        (=>
                         tmp%11
                         %%switch_label%%1
        )))))))))))))))))
        (and
         (not %%switch_label%%1)
         %%switch_label%%0
     ))))
     (and
      (not %%switch_label%%0)
      (=>
       %%location_label%%11
       (= u! (EucDiv (Add (Mul u! d!) r!) d!))
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_mod_add_multiples_vanish
(declare-fun req%vstd.arithmetic.div_mod.lemma_mod_add_multiples_vanish. (Int Int)
 Bool
)
(declare-const %%global_location_label%%56 Bool)
(assert
 (forall ((b! Int) (m! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_mod_add_multiples_vanish. b! m!) (=>
     %%global_location_label%%56
     (< 0 m!)
   ))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_mod_add_multiples_vanish. b! m!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_mod_add_multiples_vanish._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_mod_add_multiples_vanish._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_mod_add_multiples_vanish. (Int Int)
 Bool
)
(assert
 (forall ((b! Int) (m! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_mod_add_multiples_vanish. b! m!) (= (EucMod (Add
       m! b!
      ) m!
     ) (EucMod b! m!)
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_mod_add_multiples_vanish. b! m!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_mod_add_multiples_vanish._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_mod_add_multiples_vanish._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mod_add_multiples_vanish
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1152:1: 1152:70 (#0)
(get-info :all-statistics)
(push)
 (declare-const b! Int)
 (declare-const m! Int)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 m!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
    )
    (=>
     (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
     (=>
      %%location_label%%1
      (= (EucMod (Add m! b!) m!) (EucMod b! m!))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_mod_add_multiples_vanish
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_mod_add_multiples_vanish.)
  (forall ((b! Int) (m! Int)) (!
    (=>
     (< 0 m!)
     (= (EucMod (Add m! b!) m!) (EucMod b! m!))
    )
    :pattern ((EucMod b! m!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_add_multiples_vanish_108
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_add_multiples_vanish_108
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_fundamental_div_mod_converse_helper_2
(declare-fun req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_2.
 (Int Int Int) Bool
)
(declare-const %%global_location_label%%57 Bool)
(declare-const %%global_location_label%%58 Bool)
(assert
 (forall ((u! Int) (d! Int) (r! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_2. u! d!
     r!
    ) (and
     (=>
      %%global_location_label%%57
      (not (= d! 0))
     )
     (=>
      %%global_location_label%%58
      (and
       (<= 0 r!)
       (< r! d!)
   ))))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_2.
     u! d! r!
   ))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_2._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_2._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_2.
 (Int Int Int) Bool
)
(assert
 (forall ((u! Int) (d! Int) (r! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_2. u! d!
     r!
    ) (= r! (EucMod (Add (Mul u! d!) r!) d!))
   )
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_2.
     u! d! r!
   ))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_2._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_2._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_fundamental_div_mod_converse_helper_2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1338:7: 1338:77 (#0)
(get-info :all-statistics)
(push)
 (declare-const u! Int)
 (declare-const d! Int)
 (declare-const r! Int)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Int)
 (declare-const tmp%3 Int)
 (declare-const tmp%4 Int)
 (declare-const tmp%5 Bool)
 (declare-const tmp%6 Bool)
 (declare-const tmp%7 Bool)
 (declare-const tmp%8 Int)
 (declare-const tmp%9 Bool)
 (declare-const tmp%10 Int)
 (declare-const tmp%11 Int)
 (declare-const tmp%12 Int)
 (declare-const tmp%13 Bool)
 (declare-const tmp%14 Bool)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (not (= d! 0))
 )
 (assert
  (and
   (<= 0 r!)
   (< r! d!)
 ))
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 (declare-const %%switch_label%%2 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 ;; requires not satisfied
 (declare-const %%location_label%%6 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%7 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%8 Bool)
 ;; assertion failed
 (declare-const %%location_label%%9 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%10 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%11 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%12 Bool)
 ;; assertion failed
 (declare-const %%location_label%%13 Bool)
 ;; assertion failed
 (declare-const %%location_label%%14 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%15 Bool)
 (assert
  (not (=>
    (= decrease%init0 (ite
      (>= u! 0)
      u!
      (Sub 0 u!)
    ))
    (or
     (and
      (=>
       (< u! 0)
       (=>
        (= tmp%1 (Add u! 1))
        (and
         (=>
          %%location_label%%0
          (check_decrease_int (let
            ((u!$0 tmp%1) (d!$1 d!) (r!$2 r!))
            (ite
             (>= u!$0 0)
             u!$0
             (Sub 0 u!$0)
            )
           ) decrease%init0 false
         ))
         (and
          (=>
           %%location_label%%1
           (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_2. tmp%1 d!
            r!
          ))
          (=>
           (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_2. tmp%1 d!
            r!
           )
           (=>
            (= tmp%2 (Add (Mul u! d!) r!))
            (and
             (=>
              %%location_label%%2
              (req%vstd.arithmetic.div_mod.lemma_mod_add_multiples_vanish. tmp%2 d!)
             )
             (=>
              (ens%vstd.arithmetic.div_mod.lemma_mod_add_multiples_vanish. tmp%2 d!)
              (=>
               (= tmp%3 (Add u! 1))
               (=>
                (= tmp%4 (Sub 0 1))
                (=>
                 (ens%vstd.arithmetic.mul.lemma_mul_is_distributive_add_other_way. d! tmp%3 tmp%4)
                 (=>
                  (= tmp%5 (= (Mul u! d!) (Add (Mul (Add u! 1) d!) (Mul (Sub 0 1) d!))))
                  (and
                   (=>
                    %%location_label%%3
                    tmp%5
                   )
                   (=>
                    tmp%5
                    (=>
                     (= tmp%6 (= (Add (Mul u! d!) r!) (Sub (Add (Mul (Add u! 1) d!) r!) d!)))
                     (and
                      (=>
                       %%location_label%%4
                       tmp%6
                      )
                      (=>
                       tmp%6
                       (=>
                        (= tmp%7 (= r! (EucMod (Add (Mul u! d!) r!) d!)))
                        (and
                         (=>
                          %%location_label%%5
                          tmp%7
                         )
                         (=>
                          tmp%7
                          %%switch_label%%0
      ))))))))))))))))))))
      (=>
       (not (< u! 0))
       (or
        (and
         (=>
          (= u! 0)
          (and
           (=>
            %%location_label%%6
            true
           )
           (=>
            (=>
             (= u! 0)
             (= (Mul u! d!) 0)
            )
            (or
             (and
              (=>
               (> d! 0)
               (and
                (=>
                 %%location_label%%7
                 (req%vstd.arithmetic.div_mod.lemma_small_mod. (nClip r!) (nClip d!))
                )
                (=>
                 (ens%vstd.arithmetic.div_mod.lemma_small_mod. (nClip r!) (nClip d!))
                 %%switch_label%%2
              )))
              (=>
               (not (> d! 0))
               (=>
                (= tmp%8 (nClip (Sub 0 d!)))
                (and
                 (=>
                  %%location_label%%8
                  (req%vstd.arithmetic.div_mod.lemma_small_mod. (nClip r!) tmp%8)
                 )
                 (=>
                  (ens%vstd.arithmetic.div_mod.lemma_small_mod. (nClip r!) tmp%8)
                  %%switch_label%%2
             )))))
             (and
              (not %%switch_label%%2)
              (=>
               (= tmp%9 (= r! (EucMod (Add (Mul u! d!) r!) d!)))
               (and
                (=>
                 %%location_label%%9
                 tmp%9
                )
                (=>
                 tmp%9
                 %%switch_label%%1
         ))))))))
         (=>
          (not (= u! 0))
          (=>
           (= tmp%10 (Sub u! 1))
           (and
            (=>
             %%location_label%%10
             (check_decrease_int (let
               ((u!$0 tmp%10) (d!$1 d!) (r!$2 r!))
               (ite
                (>= u!$0 0)
                u!$0
                (Sub 0 u!$0)
               )
              ) decrease%init0 false
            ))
            (and
             (=>
              %%location_label%%11
              (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_2. tmp%10 d!
               r!
             ))
             (=>
              (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_2. tmp%10 d!
               r!
              )
              (=>
               (= tmp%11 (Add (Mul (Sub u! 1) d!) r!))
               (and
                (=>
                 %%location_label%%12
                 (req%vstd.arithmetic.div_mod.lemma_mod_add_multiples_vanish. tmp%11 d!)
                )
                (=>
                 (ens%vstd.arithmetic.div_mod.lemma_mod_add_multiples_vanish. tmp%11 d!)
                 (=>
                  (= tmp%12 (Sub u! 1))
                  (=>
                   (ens%vstd.arithmetic.mul.lemma_mul_is_distributive_add_other_way. d! tmp%12 1)
                   (=>
                    (= tmp%13 (= (Add (Mul u! d!) r!) (Add (Add (Mul (Sub u! 1) d!) r!) d!)))
                    (and
                     (=>
                      %%location_label%%13
                      tmp%13
                     )
                     (=>
                      tmp%13
                      (=>
                       (= tmp%14 (= r! (EucMod (Add (Mul u! d!) r!) d!)))
                       (and
                        (=>
                         %%location_label%%14
                         tmp%14
                        )
                        (=>
                         tmp%14
                         %%switch_label%%1
        )))))))))))))))))
        (and
         (not %%switch_label%%1)
         %%switch_label%%0
     ))))
     (and
      (not %%switch_label%%0)
      (=>
       %%location_label%%15
       (= r! (EucMod (Add (Mul u! d!) r!) d!))
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_fundamental_div_mod_converse_mod
(declare-fun req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_mod. (
  Int Int Int Int
 ) Bool
)
(declare-const %%global_location_label%%59 Bool)
(declare-const %%global_location_label%%60 Bool)
(declare-const %%global_location_label%%61 Bool)
(assert
 (forall ((x! Int) (d! Int) (q! Int) (r! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_mod. x! d! q! r!)
    (and
     (=>
      %%global_location_label%%59
      (not (= d! 0))
     )
     (=>
      %%global_location_label%%60
      (and
       (<= 0 r!)
       (< r! d!)
     ))
     (=>
      %%global_location_label%%61
      (= x! (Add (Mul q! d!) r!))
   )))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_mod. x! d!
     q! r!
   ))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_mod._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_mod._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_mod. (
  Int Int Int Int
 ) Bool
)
(assert
 (forall ((x! Int) (d! Int) (q! Int) (r! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_mod. x! d! q! r!)
    (= r! (EucMod x! d!))
   )
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_mod. x! d!
     q! r!
   ))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_mod._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_mod._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_fundamental_div_mod_converse_mod
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1378:1: 1378:94 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const d! Int)
 (declare-const q! Int)
 (declare-const r! Int)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (not (= d! 0))
 )
 (assert
  (and
   (<= 0 r!)
   (< r! d!)
 ))
 (assert
  (= x! (Add (Mul q! d!) r!))
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_1. q! d! r!)
    )
    (=>
     (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_1. q! d! r!)
     (=>
      (= tmp%1 (= q! (EucDiv (Add (Mul q! d!) r!) d!)))
      (and
       (=>
        %%location_label%%1
        tmp%1
       )
       (=>
        tmp%1
        (and
         (=>
          %%location_label%%2
          (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_2. q! d! r!)
         )
         (=>
          (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_2. q! d! r!)
          (=>
           %%location_label%%3
           (= r! (EucMod x! d!))
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_fundamental_div_mod_converse_mod
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_mod.)
  (forall ((x! Int) (d! Int) (q! Int) (r! Int)) (!
    (=>
     (and
      (and
       (not (= d! 0))
       (and
        (<= 0 r!)
        (< r! d!)
      ))
      (= x! (Add (Mul q! d!) r!))
     )
     (= r! (EucMod x! d!))
    )
    :pattern ((Add (Mul q! d!) r!) (EucMod x! d!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_fundamental_div_mod_converse_mod_109
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_fundamental_div_mod_converse_mod_109
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_fundamental_div_mod_converse_div
(declare-fun req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_div. (
  Int Int Int Int
 ) Bool
)
(declare-const %%global_location_label%%62 Bool)
(declare-const %%global_location_label%%63 Bool)
(declare-const %%global_location_label%%64 Bool)
(assert
 (forall ((x! Int) (d! Int) (q! Int) (r! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_div. x! d! q! r!)
    (and
     (=>
      %%global_location_label%%62
      (not (= d! 0))
     )
     (=>
      %%global_location_label%%63
      (and
       (<= 0 r!)
       (< r! d!)
     ))
     (=>
      %%global_location_label%%64
      (= x! (Add (Mul q! d!) r!))
   )))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_div. x! d!
     q! r!
   ))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_div._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_div._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_div. (
  Int Int Int Int
 ) Bool
)
(assert
 (forall ((x! Int) (d! Int) (q! Int) (r! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_div. x! d! q! r!)
    (= q! (EucDiv x! d!))
   )
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_div. x! d!
     q! r!
   ))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_div._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_div._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_fundamental_div_mod_converse_div
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1394:1: 1394:94 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const d! Int)
 (declare-const q! Int)
 (declare-const r! Int)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (not (= d! 0))
 )
 (assert
  (and
   (<= 0 r!)
   (< r! d!)
 ))
 (assert
  (= x! (Add (Mul q! d!) r!))
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_1. q! d! r!)
    )
    (=>
     (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_1. q! d! r!)
     (=>
      (= tmp%1 (= q! (EucDiv (Add (Mul q! d!) r!) d!)))
      (and
       (=>
        %%location_label%%1
        tmp%1
       )
       (=>
        tmp%1
        (and
         (=>
          %%location_label%%2
          (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_2. q! d! r!)
         )
         (=>
          (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_helper_2. q! d! r!)
          (=>
           %%location_label%%3
           (= q! (EucDiv x! d!))
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_fundamental_div_mod_converse_div
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_div.)
  (forall ((x! Int) (d! Int) (q! Int) (r! Int)) (!
    (=>
     (and
      (and
       (not (= d! 0))
       (and
        (<= 0 r!)
        (< r! d!)
      ))
      (= x! (Add (Mul q! d!) r!))
     )
     (= q! (EucDiv x! d!))
    )
    :pattern ((Add (Mul q! d!) r!) (EucDiv x! d!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_fundamental_div_mod_converse_div_110
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_fundamental_div_mod_converse_div_110
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_fundamental_div_mod_converse
(declare-fun req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse. (Int Int
  Int Int
 ) Bool
)
(declare-const %%global_location_label%%65 Bool)
(declare-const %%global_location_label%%66 Bool)
(declare-const %%global_location_label%%67 Bool)
(assert
 (forall ((x! Int) (d! Int) (q! Int) (r! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse. x! d! q! r!) (
     and
     (=>
      %%global_location_label%%65
      (not (= d! 0))
     )
     (=>
      %%global_location_label%%66
      (and
       (<= 0 r!)
       (< r! d!)
     ))
     (=>
      %%global_location_label%%67
      (= x! (Add (Mul q! d!) r!))
   )))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse. x! d! q!
     r!
   ))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse. (Int Int
  Int Int
 ) Bool
)
(assert
 (forall ((x! Int) (d! Int) (q! Int) (r! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse. x! d! q! r!) (
     and
     (= r! (EucMod x! d!))
     (= q! (EucDiv x! d!))
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse. x! d! q!
     r!
   ))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_fundamental_div_mod_converse
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1410:1: 1410:80 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const d! Int)
 (declare-const q! Int)
 (declare-const r! Int)
 (assert
  fuel_defaults
 )
 (assert
  (not (= d! 0))
 )
 (assert
  (and
   (<= 0 r!)
   (< r! d!)
 ))
 (assert
  (= x! (Add (Mul q! d!) r!))
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_mod. x! d! q! r!)
    )
    (=>
     (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_mod. x! d! q! r!)
     (and
      (=>
       %%location_label%%1
       (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_div. x! d! q! r!)
      )
      (=>
       (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_div. x! d! q! r!)
       (and
        (=>
         %%location_label%%2
         (= r! (EucMod x! d!))
        )
        (=>
         %%location_label%%3
         (= q! (EucDiv x! d!))
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_fundamental_div_mod
(declare-fun req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. (Int Int) Bool)
(declare-const %%global_location_label%%68 Bool)
(assert
 (forall ((x! Int) (d! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. x! d!) (=>
     %%global_location_label%%68
     (not (= d! 0))
   ))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. x! d!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_fundamental_div_mod._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_fundamental_div_mod._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. (Int Int) Bool)
(assert
 (forall ((x! Int) (d! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. x! d!) (= x! (Add (Mul d!
       (EucDiv x! d!)
      ) (EucMod x! d!)
   )))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. x! d!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_fundamental_div_mod._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_fundamental_div_mod._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_fundamental_div_mod
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:525:1: 525:65 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const d! Int)
 (assert
  fuel_defaults
 )
 (assert
  (not (= d! 0))
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (and
    (and
     (=>
      %%location_label%%0
      (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
       x! d!
     ))
     (=>
      (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
       x! d!
      )
      (=>
       %%location_label%%1
       (= x! (Add (Mul d! (EucDiv x! d!)) (EucMod x! d!)))
    )))
    (=>
     (= x! (Add (Mul d! (EucDiv x! d!)) (EucMod x! d!)))
     (=>
      %%location_label%%2
      (= x! (Add (Mul d! (EucDiv x! d!)) (EucMod x! d!)))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_fundamental_div_mod
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_fundamental_div_mod.)
  (forall ((x! Int) (d! Int)) (!
    (=>
     (not (= d! 0))
     (= x! (Add (Mul d! (EucDiv x! d!)) (EucMod x! d!)))
    )
    :pattern ((Add (Mul d! (EucDiv x! d!)) (EucMod x! d!)))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_fundamental_div_mod_111
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_fundamental_div_mod_111
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_mod_multiples_vanish
(declare-fun req%vstd.arithmetic.div_mod.lemma_mod_multiples_vanish. (Int Int Int)
 Bool
)
(declare-const %%global_location_label%%69 Bool)
(assert
 (forall ((a! Int) (b! Int) (m! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_mod_multiples_vanish. a! b! m!) (=>
     %%global_location_label%%69
     (< 0 m!)
   ))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_mod_multiples_vanish. a! b! m!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_mod_multiples_vanish._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_mod_multiples_vanish._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_mod_multiples_vanish. (Int Int Int)
 Bool
)
(assert
 (forall ((a! Int) (b! Int) (m! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_mod_multiples_vanish. a! b! m!) (= (EucMod (Add
       (Mul m! a!) b!
      ) m!
     ) (EucMod b! m!)
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_mod_multiples_vanish. a! b! m!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_mod_multiples_vanish._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_mod_multiples_vanish._definition
)))

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_mod_multiples_vanish
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_mod_multiples_vanish.)
  (forall ((a! Int) (b! Int) (m! Int)) (!
    (=>
     (< 0 m!)
     (= (EucMod (Add (Mul m! a!) b!) m!) (EucMod b! m!))
    )
    :pattern ((EucMod (Add (Mul m! a!) b!) m!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_multiples_vanish_113
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_multiples_vanish_113
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_hoist_over_denominator
(declare-fun req%vstd.arithmetic.div_mod.lemma_hoist_over_denominator. (Int Int Int)
 Bool
)
(declare-const %%global_location_label%%70 Bool)
(assert
 (forall ((x! Int) (j! Int) (d! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_hoist_over_denominator. x! j! d!) (=>
     %%global_location_label%%70
     (< 0 d!)
   ))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_hoist_over_denominator. x! j! d!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_hoist_over_denominator._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_hoist_over_denominator._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_hoist_over_denominator. (Int Int Int)
 Bool
)
(assert
 (forall ((x! Int) (j! Int) (d! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_hoist_over_denominator. x! j! d!) (= (Add (EucDiv
       x! d!
      ) j!
     ) (EucDiv (Add x! (Mul j! d!)) d!)
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_hoist_over_denominator. x! j! d!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_hoist_over_denominator._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_hoist_over_denominator._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_hoist_over_denominator
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:918:1: 918:76 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const j! Int)
 (declare-const d! Int)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Int)
 (declare-const dd@ Int)
 (declare-const q@ Int)
 (declare-const r@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 d!)
 )
 (assert
  (< 0 d!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%6 Bool)
 (assert
  (not (=>
    (= dd@ d!)
    (=>
     (= q@ (EucDiv x! dd@))
     (=>
      (= r@ (EucMod x! dd@))
      (and
       (and
        (=>
         %%location_label%%0
         (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. x! dd@)
        )
        (=>
         (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. x! dd@)
         (=>
          %%location_label%%1
          (= x! (Add (Mul dd@ q@) r@))
       )))
       (=>
        (= x! (Add (Mul dd@ q@) r@))
        (and
         (=>
          (ens%vstd.arithmetic.mul.lemma_mul_is_commutative. j! dd@)
          (=>
           %%location_label%%2
           (= (Mul j! dd@) (Mul dd@ j!))
         ))
         (=>
          (= (Mul j! dd@) (Mul dd@ j!))
          (and
           (=>
            (ens%vstd.arithmetic.mul.lemma_mul_is_distributive_add. dd@ q@ j!)
            (=>
             %%location_label%%3
             (= (Add x! (Mul j! dd@)) (Add (Mul dd@ (Add q@ j!)) r@))
           ))
           (=>
            (= (Add x! (Mul j! dd@)) (Add (Mul dd@ (Add q@ j!)) r@))
            (and
             (=>
              (= tmp%1 (Add x! (Mul j! d!)))
              (=>
               (= tmp%2 (Add q@ j!))
               (and
                (=>
                 %%location_label%%4
                 (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse. tmp%1 dd@ tmp%2 r@)
                )
                (=>
                 (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse. tmp%1 dd@ tmp%2 r@)
                 (=>
                  %%location_label%%5
                  (= (EucDiv (Add x! (Mul j! dd@)) dd@) (Add q@ j!))
             )))))
             (=>
              (= (EucDiv (Add x! (Mul j! dd@)) dd@) (Add q@ j!))
              (=>
               %%location_label%%6
               (= (Add (EucDiv x! d!) j!) (EucDiv (Add x! (Mul j! d!)) d!))
 ))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_hoist_over_denominator
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_hoist_over_denominator.)
  (forall ((x! Int) (j! Int) (d! Int)) (!
    (=>
     (<= 0 d!)
     (=>
      (< 0 d!)
      (= (Add (EucDiv x! d!) j!) (EucDiv (Add x! (Mul j! d!)) d!))
    ))
    :pattern ((Add (EucDiv x! d!) j!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_hoist_over_denominator_114
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_hoist_over_denominator_114
))))

;; Function-Specs crate::vstd::arithmetic::mul::lemma_mul_unary_negation
(declare-fun ens%vstd.arithmetic.mul.lemma_mul_unary_negation. (Int Int) Bool)
(assert
 (forall ((x! Int) (y! Int)) (!
   (= (ens%vstd.arithmetic.mul.lemma_mul_unary_negation. x! y!) (let
     ((tmp%%$ (Sub 0 (Mul x! y!))))
     (and
      (= (Mul (Sub 0 x!) y!) tmp%%$)
      (= tmp%%$ (Mul x! (Sub 0 y!)))
   )))
   :pattern ((ens%vstd.arithmetic.mul.lemma_mul_unary_negation. x! y!))
   :qid internal_ens__vstd.arithmetic.mul.lemma_mul_unary_negation._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.mul.lemma_mul_unary_negation._definition
)))

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
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_unary_negation_119
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_unary_negation_119
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_mod_mod
(declare-fun req%vstd.arithmetic.div_mod.lemma_mod_mod. (Int Int Int) Bool)
(declare-const %%global_location_label%%71 Bool)
(declare-const %%global_location_label%%72 Bool)
(assert
 (forall ((x! Int) (a! Int) (b! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_mod_mod. x! a! b!) (and
     (=>
      %%global_location_label%%71
      (< 0 a!)
     )
     (=>
      %%global_location_label%%72
      (< 0 b!)
   )))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_mod_mod. x! a! b!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_mod_mod._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_mod_mod._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_mod_mod. (Int Int Int) Bool)
(assert
 (forall ((x! Int) (a! Int) (b! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_mod_mod. x! a! b!) (and
     (< 0 (Mul a! b!))
     (= (EucMod (EucMod x! (Mul a! b!)) a!) (EucMod x! a!))
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_mod_mod. x! a! b!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_mod_mod._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_mod_mod._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mod_mod
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1618:1: 1618:61 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const a! Int)
 (declare-const b! Int)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Int)
 (declare-const tmp%3 Int)
 (declare-const tmp%4 Int)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 a!)
 )
 (assert
  (< 0 b!)
 )
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
 ;; assertion failed
 (declare-const %%location_label%%6 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%7 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%8 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%9 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_strictly_positive.)
    (and
     (and
      (=>
       (= tmp%1 (Mul a! b!))
       (and
        (=>
         %%location_label%%0
         (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. x! tmp%1)
        )
        (=>
         (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. x! tmp%1)
         (=>
          %%location_label%%1
          (= x! (Add (Mul (Mul a! b!) (EucDiv x! (Mul a! b!))) (EucMod x! (Mul a! b!))))
      ))))
      (=>
       (= x! (Add (Mul (Mul a! b!) (EucDiv x! (Mul a! b!))) (EucMod x! (Mul a! b!))))
       (and
        (=>
         (ens%vstd.arithmetic.div_mod.lemma_mul_is_associative_auto. 0)
         (=>
          %%location_label%%2
          (= (Add (Mul (Mul a! b!) (EucDiv x! (Mul a! b!))) (EucMod x! (Mul a! b!))) (Add (Mul
             a! (Mul b! (EucDiv x! (Mul a! b!)))
            ) (EucMod x! (Mul a! b!))
        ))))
        (=>
         (= (Add (Mul (Mul a! b!) (EucDiv x! (Mul a! b!))) (EucMod x! (Mul a! b!))) (Add (Mul
            a! (Mul b! (EucDiv x! (Mul a! b!)))
           ) (EucMod x! (Mul a! b!))
         ))
         (and
          (=>
           (= tmp%2 (EucMod x! (Mul a! b!)))
           (and
            (=>
             %%location_label%%3
             (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. tmp%2 a!)
            )
            (=>
             (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. tmp%2 a!)
             (=>
              %%location_label%%4
              (= (Add (Mul a! (Mul b! (EucDiv x! (Mul a! b!)))) (EucMod x! (Mul a! b!))) (Add (Add
                 (Mul a! (Mul b! (EucDiv x! (Mul a! b!)))) (Mul a! (EucDiv (EucMod x! (Mul a! b!)) a!))
                ) (EucMod (EucMod x! (Mul a! b!)) a!)
          ))))))
          (=>
           (= (Add (Mul a! (Mul b! (EucDiv x! (Mul a! b!)))) (EucMod x! (Mul a! b!))) (Add (Add
              (Mul a! (Mul b! (EucDiv x! (Mul a! b!)))) (Mul a! (EucDiv (EucMod x! (Mul a! b!)) a!))
             ) (EucMod (EucMod x! (Mul a! b!)) a!)
           ))
           (and
            (=>
             (ens%vstd.arithmetic.div_mod.lemma_mul_is_distributive_auto. 0)
             (=>
              %%location_label%%5
              (= (Add (Add (Mul a! (Mul b! (EucDiv x! (Mul a! b!)))) (Mul a! (EucDiv (EucMod x! (Mul a!
                     b!
                    )
                   ) a!
                 ))
                ) (EucMod (EucMod x! (Mul a! b!)) a!)
               ) (Add (Mul a! (Add (Mul b! (EucDiv x! (Mul a! b!))) (EucDiv (EucMod x! (Mul a! b!))
                   a!
                 ))
                ) (EucMod (EucMod x! (Mul a! b!)) a!)
            ))))
            (=>
             (= (Add (Add (Mul a! (Mul b! (EucDiv x! (Mul a! b!)))) (Mul a! (EucDiv (EucMod x! (Mul a!
                    b!
                   )
                  ) a!
                ))
               ) (EucMod (EucMod x! (Mul a! b!)) a!)
              ) (Add (Mul a! (Add (Mul b! (EucDiv x! (Mul a! b!))) (EucDiv (EucMod x! (Mul a! b!))
                  a!
                ))
               ) (EucMod (EucMod x! (Mul a! b!)) a!)
             ))
             (=>
              %%location_label%%6
              (= x! (Add (Mul a! (Add (Mul b! (EucDiv x! (Mul a! b!))) (EucDiv (EucMod x! (Mul a! b!))
                   a!
                 ))
                ) (EucMod (EucMod x! (Mul a! b!)) a!)
     )))))))))))
     (=>
      (= x! (Add (Mul a! (Add (Mul b! (EucDiv x! (Mul a! b!))) (EucDiv (EucMod x! (Mul a! b!))
           a!
         ))
        ) (EucMod (EucMod x! (Mul a! b!)) a!)
      ))
      (=>
       (fuel_bool fuel%vstd.arithmetic.div_mod.group_mod_properties.)
       (=>
        (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_commutative.)
        (=>
         (= tmp%3 (Add (Mul b! (EucDiv x! (Mul a! b!))) (EucDiv (EucMod x! (Mul a! b!)) a!)))
         (=>
          (= tmp%4 (EucMod (EucMod x! (Mul a! b!)) a!))
          (and
           (=>
            %%location_label%%7
            (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse. x! a! tmp%3 tmp%4)
           )
           (=>
            (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse. x! a! tmp%3 tmp%4)
            (and
             (=>
              %%location_label%%8
              (< 0 (Mul a! b!))
             )
             (=>
              %%location_label%%9
              (= (EucMod (EucMod x! (Mul a! b!)) a!) (EucMod x! a!))
 )))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_mod_mod
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_mod_mod.)
  (forall ((x! Int) (a! Int) (b! Int)) (!
    (=>
     (and
      (< 0 a!)
      (< 0 b!)
     )
     (and
      (< 0 (Mul a! b!))
      (= (EucMod (EucMod x! (Mul a! b!)) a!) (EucMod x! a!))
    ))
    :pattern ((EucMod (EucMod x! (Mul a! b!)) a!) (EucMod x! a!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_mod_120
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_mod_120
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_add_mod_noop
(declare-fun req%vstd.arithmetic.div_mod.lemma_add_mod_noop. (Int Int Int) Bool)
(declare-const %%global_location_label%%73 Bool)
(assert
 (forall ((x! Int) (y! Int) (m! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_add_mod_noop. x! y! m!) (=>
     %%global_location_label%%73
     (< 0 m!)
   ))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_add_mod_noop. x! y! m!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_add_mod_noop._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_add_mod_noop._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_add_mod_noop. (Int Int Int) Bool)
(assert
 (forall ((x! Int) (y! Int) (m! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_add_mod_noop. x! y! m!) (= (EucMod (Add (EucMod
        x! m!
       ) (EucMod y! m!)
      ) m!
     ) (EucMod (Add x! y!) m!)
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_add_mod_noop. x! y! m!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_add_mod_noop._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_add_mod_noop._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_add_mod_noop
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1213:1: 1213:66 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const m! Int)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 m!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
    )
    (=>
     (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
     (=>
      %%location_label%%1
      (= (EucMod (Add (EucMod x! m!) (EucMod y! m!)) m!) (EucMod (Add x! y!) m!))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_add_mod_noop
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_add_mod_noop.)
  (forall ((x! Int) (y! Int) (m! Int)) (!
    (=>
     (< 0 m!)
     (= (EucMod (Add (EucMod x! m!) (EucMod y! m!)) m!) (EucMod (Add x! y!) m!))
    )
    :pattern ((EucMod (Add x! y!) m!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_add_mod_noop_126
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_add_mod_noop_126
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_mod_basics_auto
(declare-fun ens%vstd.arithmetic.div_mod.lemma_mod_basics_auto. (Int) Bool)
(assert
 (forall ((no%param Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_mod_basics_auto. no%param) (and
     (forall ((m$ Int)) (!
       (=>
        (> m$ 0)
        (= (EucMod m$ m$) 0)
       )
       :pattern ((EucMod m$ m$))
       :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_basics_auto_127
       :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_basics_auto_127
     ))
     (forall ((x$ Int) (m$ Int)) (!
       (=>
        (> m$ 0)
        (= (EucMod (EucMod x$ m$) m$) (EucMod x$ m$))
       )
       :pattern ((EucMod (EucMod x$ m$) m$))
       :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_basics_auto_128
       :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_basics_auto_128
   ))))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_mod_basics_auto. no%param))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_mod_basics_auto._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_mod_basics_auto._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mod_basics_auto
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1048:7: 1048:33 (#0)
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
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_mod_self_0.)
    (=>
     (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_mod_twice.)
     (and
      (=>
       %%location_label%%0
       (forall ((m$ Int)) (!
         (=>
          (> m$ 0)
          (= (EucMod m$ m$) 0)
         )
         :pattern ((EucMod m$ m$))
         :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_basics_auto_129
         :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_basics_auto_129
      )))
      (=>
       %%location_label%%1
       (forall ((x$ Int) (m$ Int)) (!
         (=>
          (> m$ 0)
          (= (EucMod (EucMod x$ m$) m$) (EucMod x$ m$))
         )
         :pattern ((EucMod (EucMod x$ m$) m$))
         :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_basics_auto_130
         :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_basics_auto_130
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_sub_mod_noop
(declare-fun req%vstd.arithmetic.div_mod.lemma_sub_mod_noop. (Int Int Int) Bool)
(declare-const %%global_location_label%%74 Bool)
(assert
 (forall ((x! Int) (y! Int) (m! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_sub_mod_noop. x! y! m!) (=>
     %%global_location_label%%74
     (< 0 m!)
   ))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_sub_mod_noop. x! y! m!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_sub_mod_noop._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_sub_mod_noop._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_sub_mod_noop. (Int Int Int) Bool)
(assert
 (forall ((x! Int) (y! Int) (m! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_sub_mod_noop. x! y! m!) (= (EucMod (Sub (EucMod
        x! m!
       ) (EucMod y! m!)
      ) m!
     ) (EucMod (Sub x! y!) m!)
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_sub_mod_noop. x! y! m!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_sub_mod_noop._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_sub_mod_noop._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_sub_mod_noop
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1239:1: 1239:66 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const m! Int)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 m!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
    )
    (=>
     (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
     (=>
      %%location_label%%1
      (= (EucMod (Sub (EucMod x! m!) (EucMod y! m!)) m!) (EucMod (Sub x! y!) m!))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_sub_mod_noop
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_sub_mod_noop.)
  (forall ((x! Int) (y! Int) (m! Int)) (!
    (=>
     (< 0 m!)
     (= (EucMod (Sub (EucMod x! m!) (EucMod y! m!)) m!) (EucMod (Sub x! y!) m!))
    )
    :pattern ((EucMod (Sub x! y!) m!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_sub_mod_noop_131
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_sub_mod_noop_131
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_mod_is_mod_recursive
(declare-fun req%vstd.arithmetic.div_mod.lemma_mod_is_mod_recursive. (Int Int) Bool)
(declare-const %%global_location_label%%75 Bool)
(assert
 (forall ((x! Int) (m! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_mod_is_mod_recursive. x! m!) (=>
     %%global_location_label%%75
     (> m! 0)
   ))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_mod_is_mod_recursive. x! m!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_mod_is_mod_recursive._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_mod_is_mod_recursive._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_mod_is_mod_recursive. (Int Int) Bool)
(assert
 (forall ((x! Int) (m! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_mod_is_mod_recursive. x! m!) (= (vstd.arithmetic.internals.mod_internals.mod_recursive.?
      (I x!) (I m!)
     ) (EucMod x! m!)
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_mod_is_mod_recursive. x! m!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_mod_is_mod_recursive._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_mod_is_mod_recursive._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mod_is_mod_recursive
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:984:1: 984:66 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const m! Int)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Int)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (> m! 0)
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 ;; assertion failed
 (declare-const %%location_label%%6 Bool)
 ;; assertion failed
 (declare-const %%location_label%%7 Bool)
 ;; assertion failed
 (declare-const %%location_label%%8 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%9 Bool)
 ;; assertion failed
 (declare-const %%location_label%%10 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%11 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%12 Bool)
 ;; assertion failed
 (declare-const %%location_label%%13 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%14 Bool)
 ;; assertion failed
 (declare-const %%location_label%%15 Bool)
 ;; assertion failed
 (declare-const %%location_label%%16 Bool)
 ;; assertion failed
 (declare-const %%location_label%%17 Bool)
 ;; assertion failed
 (declare-const %%location_label%%18 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%19 Bool)
 (assert
  (not (=>
    (= decrease%init0 (ite
      (< x! 0)
      (Add (Sub 0 x!) m!)
      x!
    ))
    (=>
     (fuel_bool fuel%vstd.arithmetic.internals.mod_internals.mod_recursive.)
     (or
      (and
       (=>
        (< x! 0)
        (and
         (and
          (=>
           %%location_label%%0
           (= (vstd.arithmetic.internals.mod_internals.mod_recursive.? (I x!) (I m!)) (vstd.arithmetic.internals.mod_internals.mod_recursive.?
             (I (Add x! m!)) (I m!)
          )))
          (=>
           (= (vstd.arithmetic.internals.mod_internals.mod_recursive.? (I x!) (I m!)) (vstd.arithmetic.internals.mod_internals.mod_recursive.?
             (I (Add x! m!)) (I m!)
           ))
           (and
            (=>
             (= tmp%1 (Add x! m!))
             (and
              (=>
               %%location_label%%1
               (check_decrease_int (let
                 ((x!$0 tmp%1) (m!$1 m!))
                 (ite
                  (< x!$0 0)
                  (Add (Sub 0 x!$0) m!$1)
                  x!$0
                 )
                ) decrease%init0 false
              ))
              (and
               (=>
                %%location_label%%2
                (req%vstd.arithmetic.div_mod.lemma_mod_is_mod_recursive. tmp%1 m!)
               )
               (=>
                (ens%vstd.arithmetic.div_mod.lemma_mod_is_mod_recursive. tmp%1 m!)
                (=>
                 %%location_label%%3
                 (= (vstd.arithmetic.internals.mod_internals.mod_recursive.? (I (Add x! m!)) (I m!))
                  (EucMod (Add x! m!) m!)
            ))))))
            (=>
             (= (vstd.arithmetic.internals.mod_internals.mod_recursive.? (I (Add x! m!)) (I m!))
              (EucMod (Add x! m!) m!)
             )
             (and
              (and
               (=>
                %%location_label%%4
                (req%vstd.arithmetic.div_mod.lemma_add_mod_noop. x! m! m!)
               )
               (=>
                (ens%vstd.arithmetic.div_mod.lemma_add_mod_noop. x! m! m!)
                (=>
                 %%location_label%%5
                 (= (EucMod (Add x! m!) m!) (EucMod (Add (EucMod x! m!) (EucMod m! m!)) m!))
              )))
              (=>
               (= (EucMod (Add x! m!) m!) (EucMod (Add (EucMod x! m!) (EucMod m! m!)) m!))
               (and
                (=>
                 (ens%vstd.arithmetic.div_mod.lemma_mod_basics_auto. 0)
                 (=>
                  %%location_label%%6
                  (= (EucMod (Add (EucMod x! m!) (EucMod m! m!)) m!) (EucMod (EucMod x! m!) m!))
                ))
                (=>
                 (= (EucMod (Add (EucMod x! m!) (EucMod m! m!)) m!) (EucMod (EucMod x! m!) m!))
                 (and
                  (=>
                   (ens%vstd.arithmetic.div_mod.lemma_mod_basics_auto. 0)
                   (=>
                    %%location_label%%7
                    (= (EucMod (EucMod x! m!) m!) (EucMod x! m!))
                  ))
                  (=>
                   (= (EucMod (EucMod x! m!) m!) (EucMod x! m!))
                   (=>
                    %%location_label%%8
                    (= (vstd.arithmetic.internals.mod_internals.mod_recursive.? (I x!) (I m!)) (EucMod
                      x! m!
         )))))))))))))
         (=>
          (= (vstd.arithmetic.internals.mod_internals.mod_recursive.? (I x!) (I m!)) (EucMod
            x! m!
          ))
          %%switch_label%%0
       )))
       (=>
        (not (< x! 0))
        (or
         (and
          (=>
           (< x! m!)
           (and
            (=>
             %%location_label%%9
             (req%vstd.arithmetic.div_mod.lemma_small_mod. (nClip x!) (nClip m!))
            )
            (=>
             (ens%vstd.arithmetic.div_mod.lemma_small_mod. (nClip x!) (nClip m!))
             %%switch_label%%1
          )))
          (=>
           (not (< x! m!))
           (and
            (and
             (=>
              %%location_label%%10
              (= (vstd.arithmetic.internals.mod_internals.mod_recursive.? (I x!) (I m!)) (vstd.arithmetic.internals.mod_internals.mod_recursive.?
                (I (Sub x! m!)) (I m!)
             )))
             (=>
              (= (vstd.arithmetic.internals.mod_internals.mod_recursive.? (I x!) (I m!)) (vstd.arithmetic.internals.mod_internals.mod_recursive.?
                (I (Sub x! m!)) (I m!)
              ))
              (and
               (=>
                (= tmp%2 (Sub x! m!))
                (and
                 (=>
                  %%location_label%%11
                  (check_decrease_int (let
                    ((x!$0 tmp%2) (m!$1 m!))
                    (ite
                     (< x!$0 0)
                     (Add (Sub 0 x!$0) m!$1)
                     x!$0
                    )
                   ) decrease%init0 false
                 ))
                 (and
                  (=>
                   %%location_label%%12
                   (req%vstd.arithmetic.div_mod.lemma_mod_is_mod_recursive. tmp%2 m!)
                  )
                  (=>
                   (ens%vstd.arithmetic.div_mod.lemma_mod_is_mod_recursive. tmp%2 m!)
                   (=>
                    %%location_label%%13
                    (= (vstd.arithmetic.internals.mod_internals.mod_recursive.? (I (Sub x! m!)) (I m!))
                     (EucMod (Sub x! m!) m!)
               ))))))
               (=>
                (= (vstd.arithmetic.internals.mod_internals.mod_recursive.? (I (Sub x! m!)) (I m!))
                 (EucMod (Sub x! m!) m!)
                )
                (and
                 (and
                  (=>
                   %%location_label%%14
                   (req%vstd.arithmetic.div_mod.lemma_sub_mod_noop. x! m! m!)
                  )
                  (=>
                   (ens%vstd.arithmetic.div_mod.lemma_sub_mod_noop. x! m! m!)
                   (=>
                    %%location_label%%15
                    (= (EucMod (Sub x! m!) m!) (EucMod (Sub (EucMod x! m!) (EucMod m! m!)) m!))
                 )))
                 (=>
                  (= (EucMod (Sub x! m!) m!) (EucMod (Sub (EucMod x! m!) (EucMod m! m!)) m!))
                  (and
                   (=>
                    (ens%vstd.arithmetic.div_mod.lemma_mod_basics_auto. 0)
                    (=>
                     %%location_label%%16
                     (= (EucMod (Sub (EucMod x! m!) (EucMod m! m!)) m!) (EucMod (EucMod x! m!) m!))
                   ))
                   (=>
                    (= (EucMod (Sub (EucMod x! m!) (EucMod m! m!)) m!) (EucMod (EucMod x! m!) m!))
                    (and
                     (=>
                      (ens%vstd.arithmetic.div_mod.lemma_mod_basics_auto. 0)
                      (=>
                       %%location_label%%17
                       (= (EucMod (EucMod x! m!) m!) (EucMod x! m!))
                     ))
                     (=>
                      (= (EucMod (EucMod x! m!) m!) (EucMod x! m!))
                      (=>
                       %%location_label%%18
                       (= (vstd.arithmetic.internals.mod_internals.mod_recursive.? (I x!) (I m!)) (EucMod
                         x! m!
            )))))))))))))
            (=>
             (= (vstd.arithmetic.internals.mod_internals.mod_recursive.? (I x!) (I m!)) (EucMod
               x! m!
             ))
             %%switch_label%%1
         ))))
         (and
          (not %%switch_label%%1)
          %%switch_label%%0
      ))))
      (and
       (not %%switch_label%%0)
       (=>
        %%location_label%%19
        (= (vstd.arithmetic.internals.mod_internals.mod_recursive.? (I x!) (I m!)) (EucMod
          x! m!
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_mod_is_mod_recursive
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_mod_is_mod_recursive.)
  (forall ((x! Int) (m! Int)) (!
    (=>
     (> m! 0)
     (= (vstd.arithmetic.internals.mod_internals.mod_recursive.? (I x!) (I m!)) (EucMod
       x! m!
    )))
    :pattern ((EucMod x! m!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_is_mod_recursive_132
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_is_mod_recursive_132
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_mod_is_mod_recursive_auto
(declare-fun ens%vstd.arithmetic.div_mod.lemma_mod_is_mod_recursive_auto. (Int) Bool)
(assert
 (forall ((no%param Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_mod_is_mod_recursive_auto. no%param) (forall
     ((x$ Int) (d$ Int)) (!
      (=>
       (> d$ 0)
       (= (vstd.arithmetic.internals.mod_internals.mod_recursive.? (I x$) (I d$)) (EucMod
         x$ d$
      )))
      :pattern ((EucMod x$ d$))
      :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_is_mod_recursive_auto_145
      :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_is_mod_recursive_auto_145
   )))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_mod_is_mod_recursive_auto. no%param))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_mod_is_mod_recursive_auto._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_mod_is_mod_recursive_auto._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mod_is_mod_recursive_auto
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1039:7: 1039:43 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (assert
  fuel_defaults
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_mod_is_mod_recursive.)
    (=>
     %%location_label%%0
     (forall ((x$ Int) (d$ Int)) (!
       (=>
        (> d$ 0)
        (= (vstd.arithmetic.internals.mod_internals.mod_recursive.? (I x$) (I d$)) (EucMod
          x$ d$
       )))
       :pattern ((EucMod x$ d$))
       :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_is_mod_recursive_auto_146
       :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_is_mod_recursive_auto_146
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::mul::lemma_mul_equality_converse
(declare-fun req%vstd.arithmetic.mul.lemma_mul_equality_converse. (Int Int Int) Bool)
(declare-const %%global_location_label%%76 Bool)
(declare-const %%global_location_label%%77 Bool)
(assert
 (forall ((m! Int) (x! Int) (y! Int)) (!
   (= (req%vstd.arithmetic.mul.lemma_mul_equality_converse. m! x! y!) (and
     (=>
      %%global_location_label%%76
      (not (= m! 0))
     )
     (=>
      %%global_location_label%%77
      (= (Mul m! x!) (Mul m! y!))
   )))
   :pattern ((req%vstd.arithmetic.mul.lemma_mul_equality_converse. m! x! y!))
   :qid internal_req__vstd.arithmetic.mul.lemma_mul_equality_converse._definition
   :skolemid skolem_internal_req__vstd.arithmetic.mul.lemma_mul_equality_converse._definition
)))
(declare-fun ens%vstd.arithmetic.mul.lemma_mul_equality_converse. (Int Int Int) Bool)
(assert
 (forall ((m! Int) (x! Int) (y! Int)) (!
   (= (ens%vstd.arithmetic.mul.lemma_mul_equality_converse. m! x! y!) (= x! y!))
   :pattern ((ens%vstd.arithmetic.mul.lemma_mul_equality_converse. m! x! y!))
   :qid internal_ens__vstd.arithmetic.mul.lemma_mul_equality_converse._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.mul.lemma_mul_equality_converse._definition
)))

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
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_equality_converse_147
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_equality_converse_147
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_div_denominator
(declare-fun req%vstd.arithmetic.div_mod.lemma_div_denominator. (Int Int Int) Bool)
(declare-const %%global_location_label%%78 Bool)
(declare-const %%global_location_label%%79 Bool)
(declare-const %%global_location_label%%80 Bool)
(assert
 (forall ((x! Int) (c! Int) (d! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_div_denominator. x! c! d!) (and
     (=>
      %%global_location_label%%78
      (<= 0 x!)
     )
     (=>
      %%global_location_label%%79
      (< 0 c!)
     )
     (=>
      %%global_location_label%%80
      (< 0 d!)
   )))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_div_denominator. x! c! d!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_div_denominator._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_div_denominator._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_div_denominator. (Int Int Int) Bool)
(assert
 (forall ((x! Int) (c! Int) (d! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_div_denominator. x! c! d!) (and
     (not (= (Mul c! d!) 0))
     (= (EucDiv (EucDiv x! c!) d!) (EucDiv x! (Mul c! d!)))
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_div_denominator. x! c! d!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_div_denominator._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_div_denominator._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_div_denominator
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:550:1: 550:69 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const c! Int)
 (declare-const d! Int)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Int)
 (declare-const tmp%4 Int)
 (declare-const tmp%5 Bool)
 (declare-const tmp%6 Bool)
 (declare-const tmp%7 Bool)
 (declare-const tmp%8 Int)
 (declare-const tmp%9 Bool)
 (declare-const tmp%10 Bool)
 (declare-const tmp%11 Bool)
 (declare-const tmp%12 Int)
 (declare-const tmp%13 Int)
 (declare-const tmp%14 Int)
 (declare-const tmp%15 Int)
 (declare-const tmp%16 Int)
 (declare-const tmp%17 Bool)
 (declare-const tmp%18 Bool)
 (declare-const tmp%19 Int)
 (declare-const tmp%20 Int)
 (declare-const tmp%21 Int)
 (declare-const tmp%22 Bool)
 (declare-const tmp%23 Bool)
 (declare-const tmp%24 Int)
 (declare-const tmp%25 Bool)
 (declare-const tmp%26 Int)
 (declare-const tmp%27 Bool)
 (declare-const tmp%28 Int)
 (declare-const tmp%29 Int)
 (declare-const tmp%30 Bool)
 (declare-const tmp%31 Int)
 (declare-const tmp%32 Bool)
 (declare-const tmp%33 Bool)
 (declare-const tmp%34 Bool)
 (declare-const tmp%35 Int)
 (declare-const tmp%36 Int)
 (declare-const tmp%37 Int)
 (declare-const tmp%38 Bool)
 (declare-const r@ Int)
 (declare-const k@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 x!)
 )
 (assert
  (< 0 c!)
 )
 (assert
  (< 0 d!)
 )
 (declare-const %%switch_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%6 Bool)
 ;; assertion failed
 (declare-const %%location_label%%7 Bool)
 ;; assertion failed
 (declare-const %%location_label%%8 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%9 Bool)
 ;; assertion failed
 (declare-const %%location_label%%10 Bool)
 ;; assertion failed
 (declare-const %%location_label%%11 Bool)
 ;; assertion failed
 (declare-const %%location_label%%12 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%13 Bool)
 ;; assertion failed
 (declare-const %%location_label%%14 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%15 Bool)
 ;; assertion failed
 (declare-const %%location_label%%16 Bool)
 ;; assertion failed
 (declare-const %%location_label%%17 Bool)
 ;; assertion failed
 (declare-const %%location_label%%18 Bool)
 ;; assertion failed
 (declare-const %%location_label%%19 Bool)
 ;; assertion failed
 (declare-const %%location_label%%20 Bool)
 ;; assertion failed
 (declare-const %%location_label%%21 Bool)
 ;; assertion failed
 (declare-const %%location_label%%22 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%23 Bool)
 ;; assertion failed
 (declare-const %%location_label%%24 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%25 Bool)
 ;; assertion failed
 (declare-const %%location_label%%26 Bool)
 ;; assertion failed
 (declare-const %%location_label%%27 Bool)
 ;; assertion failed
 (declare-const %%location_label%%28 Bool)
 ;; assertion failed
 (declare-const %%location_label%%29 Bool)
 ;; assertion failed
 (declare-const %%location_label%%30 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%31 Bool)
 ;; assertion failed
 (declare-const %%location_label%%32 Bool)
 ;; assertion failed
 (declare-const %%location_label%%33 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%34 Bool)
 ;; assertion failed
 (declare-const %%location_label%%35 Bool)
 ;; assertion failed
 (declare-const %%location_label%%36 Bool)
 ;; assertion failed
 (declare-const %%location_label%%37 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%38 Bool)
 ;; assertion failed
 (declare-const %%location_label%%39 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%40 Bool)
 ;; assertion failed
 (declare-const %%location_label%%41 Bool)
 ;; assertion failed
 (declare-const %%location_label%%42 Bool)
 ;; assertion failed
 (declare-const %%location_label%%43 Bool)
 ;; assertion failed
 (declare-const %%location_label%%44 Bool)
 ;; assertion failed
 (declare-const %%location_label%%45 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%46 Bool)
 ;; assertion failed
 (declare-const %%location_label%%47 Bool)
 ;; assertion failed
 (declare-const %%location_label%%48 Bool)
 ;; assertion failed
 (declare-const %%location_label%%49 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%50 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%51 Bool)
 (assert
  (not (=>
    (ens%vstd.arithmetic.mul.lemma_mul_strictly_positive. c! d!)
    (=>
     (= r@ (EucMod x! (Mul c! d!)))
     (and
      (=>
       %%location_label%%0
       (req%vstd.arithmetic.div_mod.lemma_div_pos_is_pos. r@ c!)
      )
      (=>
       (ens%vstd.arithmetic.div_mod.lemma_div_pos_is_pos. r@ c!)
       (or
        (and
         (=>
          (>= (EucDiv r@ c!) d!)
          (and
           (=>
            %%location_label%%1
            (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
             r@ c!
           ))
           (=>
            (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
             r@ c!
            )
            (=>
             (= tmp%1 (EucDiv r@ c!))
             (and
              (=>
               %%location_label%%2
               (req%vstd.arithmetic.mul.lemma_mul_inequality. d! tmp%1 c!)
              )
              (=>
               (ens%vstd.arithmetic.mul.lemma_mul_inequality. d! tmp%1 c!)
               (=>
                (ens%vstd.arithmetic.mul.lemma_mul_is_commutative. d! c!)
                %%switch_label%%0
         )))))))
         (=>
          (not (>= (EucDiv r@ c!) d!))
          %%switch_label%%0
        ))
        (and
         (not %%switch_label%%0)
         (=>
          (= tmp%2 (< (EucDiv r@ c!) d!))
          (and
           (=>
            %%location_label%%3
            tmp%2
           )
           (=>
            tmp%2
            (=>
             (= tmp%3 (EucDiv r@ c!))
             (=>
              (= tmp%4 (EucDiv r@ c!))
              (and
               (=>
                %%location_label%%4
                (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse. tmp%3 d! 0 tmp%4)
               )
               (=>
                (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse. tmp%3 d! 0 tmp%4)
                (=>
                 (= tmp%5 (= (EucMod (EucDiv r@ c!) d!) (EucDiv r@ c!)))
                 (and
                  (=>
                   %%location_label%%5
                   tmp%5
                  )
                  (=>
                   tmp%5
                   (and
                    (=>
                     %%location_label%%6
                     (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. r@ c!)
                    )
                    (=>
                     (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. r@ c!)
                     (=>
                      (= tmp%6 (= (Add (Mul c! (EucDiv r@ c!)) (EucMod r@ c!)) r@))
                      (and
                       (=>
                        %%location_label%%7
                        tmp%6
                       )
                       (=>
                        tmp%6
                        (=>
                         (= tmp%7 (= (Add (Mul c! (EucMod (EucDiv r@ c!) d!)) (EucMod r@ c!)) r@))
                         (and
                          (=>
                           %%location_label%%8
                           tmp%7
                          )
                          (=>
                           tmp%7
                           (=>
                            (= k@ (EucDiv x! (Mul c! d!)))
                            (=>
                             (= tmp%8 (Mul c! d!))
                             (and
                              (=>
                               %%location_label%%9
                               (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. x! tmp%8)
                              )
                              (=>
                               (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. x! tmp%8)
                               (=>
                                (= tmp%9 (= x! (Add (Mul (Mul c! d!) (EucDiv x! (Mul c! d!))) (EucMod x! (Mul c! d!)))))
                                (and
                                 (=>
                                  %%location_label%%10
                                  tmp%9
                                 )
                                 (=>
                                  tmp%9
                                  (=>
                                   (= tmp%10 (= r@ (Sub x! (Mul (Mul c! d!) (EucDiv x! (Mul c! d!))))))
                                   (and
                                    (=>
                                     %%location_label%%11
                                     tmp%10
                                    )
                                    (=>
                                     tmp%10
                                     (=>
                                      (= tmp%11 (= r@ (Sub x! (Mul (Mul c! d!) k@))))
                                      (and
                                       (=>
                                        %%location_label%%12
                                        tmp%11
                                       )
                                       (=>
                                        tmp%11
                                        (and
                                         (and
                                          (=>
                                           (= tmp%12 (Sub 0 k@))
                                           (=>
                                            (= tmp%13 (EucDiv x! c!))
                                            (and
                                             (=>
                                              %%location_label%%13
                                              (req%vstd.arithmetic.div_mod.lemma_mod_multiples_vanish. tmp%12 tmp%13 d!)
                                             )
                                             (=>
                                              (ens%vstd.arithmetic.div_mod.lemma_mod_multiples_vanish. tmp%12 tmp%13 d!)
                                              (=>
                                               (ens%vstd.arithmetic.div_mod.lemma_mul_is_commutative_auto. 0)
                                               (=>
                                                %%location_label%%14
                                                (= (Add (Mul c! (EucMod (EucDiv x! c!) d!)) (EucMod x! c!)) (Add (Mul c! (EucMod (Add
                                                     (EucDiv x! c!) (Mul (Sub 0 k@) d!)
                                                    ) d!
                                                   )
                                                  ) (EucMod x! c!)
                                          ))))))))
                                          (=>
                                           (= (Add (Mul c! (EucMod (EucDiv x! c!) d!)) (EucMod x! c!)) (Add (Mul c! (EucMod (Add
                                                (EucDiv x! c!) (Mul (Sub 0 k@) d!)
                                               ) d!
                                              )
                                             ) (EucMod x! c!)
                                           ))
                                           (and
                                            (=>
                                             (= tmp%14 (Mul (Sub 0 k@) d!))
                                             (and
                                              (=>
                                               %%location_label%%15
                                               (req%vstd.arithmetic.div_mod.lemma_hoist_over_denominator. x! tmp%14 (nClip c!))
                                              )
                                              (=>
                                               (ens%vstd.arithmetic.div_mod.lemma_hoist_over_denominator. x! tmp%14 (nClip c!))
                                               (=>
                                                %%location_label%%16
                                                (= (Add (Mul c! (EucMod (Add (EucDiv x! c!) (Mul (Sub 0 k@) d!)) d!)) (EucMod x! c!))
                                                 (Add (Mul c! (EucMod (EucDiv (Add x! (Mul (Mul (Sub 0 k@) d!) c!)) c!) d!)) (EucMod
                                                   x! c!
                                            )))))))
                                            (=>
                                             (= (Add (Mul c! (EucMod (Add (EucDiv x! c!) (Mul (Sub 0 k@) d!)) d!)) (EucMod x! c!))
                                              (Add (Mul c! (EucMod (EucDiv (Add x! (Mul (Mul (Sub 0 k@) d!) c!)) c!) d!)) (EucMod
                                                x! c!
                                             )))
                                             (and
                                              (=>
                                               (= tmp%15 (Sub 0 k@))
                                               (=>
                                                (ens%vstd.arithmetic.mul.lemma_mul_is_associative. tmp%15 d! c!)
                                                (=>
                                                 %%location_label%%17
                                                 (= (Add (Mul c! (EucMod (EucDiv (Add x! (Mul (Mul (Sub 0 k@) d!) c!)) c!) d!)) (EucMod
                                                    x! c!
                                                   )
                                                  ) (Add (Mul c! (EucMod (EucDiv (Add x! (Mul (Sub 0 k@) (Mul d! c!))) c!) d!)) (EucMod
                                                    x! c!
                                              ))))))
                                              (=>
                                               (= (Add (Mul c! (EucMod (EucDiv (Add x! (Mul (Mul (Sub 0 k@) d!) c!)) c!) d!)) (EucMod
                                                  x! c!
                                                 )
                                                ) (Add (Mul c! (EucMod (EucDiv (Add x! (Mul (Sub 0 k@) (Mul d! c!))) c!) d!)) (EucMod
                                                  x! c!
                                               )))
                                               (and
                                                (=>
                                                 (= tmp%16 (Mul d! c!))
                                                 (=>
                                                  (ens%vstd.arithmetic.mul.lemma_mul_unary_negation. k@ tmp%16)
                                                  (=>
                                                   %%location_label%%18
                                                   (= (Add (Mul c! (EucMod (EucDiv (Add x! (Mul (Sub 0 k@) (Mul d! c!))) c!) d!)) (EucMod
                                                      x! c!
                                                     )
                                                    ) (Add (Mul c! (EucMod (EucDiv (Add x! (Sub 0 (Mul k@ (Mul d! c!)))) c!) d!)) (EucMod
                                                      x! c!
                                                ))))))
                                                (=>
                                                 (= (Add (Mul c! (EucMod (EucDiv (Add x! (Mul (Sub 0 k@) (Mul d! c!))) c!) d!)) (EucMod
                                                    x! c!
                                                   )
                                                  ) (Add (Mul c! (EucMod (EucDiv (Add x! (Sub 0 (Mul k@ (Mul d! c!)))) c!) d!)) (EucMod
                                                    x! c!
                                                 )))
                                                 (and
                                                  (=>
                                                   (ens%vstd.arithmetic.mul.lemma_mul_is_associative. k@ d! c!)
                                                   (=>
                                                    %%location_label%%19
                                                    (= (Add (Mul c! (EucMod (EucDiv (Add x! (Sub 0 (Mul k@ (Mul d! c!)))) c!) d!)) (EucMod
                                                       x! c!
                                                      )
                                                     ) (Add (Mul c! (EucMod (EucDiv (Add x! (Sub 0 (Mul (Mul k@ d!) c!))) c!) d!)) (EucMod
                                                       x! c!
                                                  )))))
                                                  (=>
                                                   (= (Add (Mul c! (EucMod (EucDiv (Add x! (Sub 0 (Mul k@ (Mul d! c!)))) c!) d!)) (EucMod
                                                      x! c!
                                                     )
                                                    ) (Add (Mul c! (EucMod (EucDiv (Add x! (Sub 0 (Mul (Mul k@ d!) c!))) c!) d!)) (EucMod
                                                      x! c!
                                                   )))
                                                   (and
                                                    (=>
                                                     %%location_label%%20
                                                     (= (Add (Mul c! (EucMod (EucDiv (Add x! (Sub 0 (Mul (Mul k@ d!) c!))) c!) d!)) (EucMod
                                                        x! c!
                                                       )
                                                      ) (Add (Mul c! (EucMod (EucDiv (Sub x! (Mul (Mul k@ d!) c!)) c!) d!)) (EucMod x! c!))
                                                    ))
                                                    (=>
                                                     (= (Add (Mul c! (EucMod (EucDiv (Add x! (Sub 0 (Mul (Mul k@ d!) c!))) c!) d!)) (EucMod
                                                        x! c!
                                                       )
                                                      ) (Add (Mul c! (EucMod (EucDiv (Sub x! (Mul (Mul k@ d!) c!)) c!) d!)) (EucMod x! c!))
                                                     )
                                                     (and
                                                      (=>
                                                       (ens%vstd.arithmetic.div_mod.lemma_mul_is_associative_auto. 0)
                                                       (=>
                                                        (ens%vstd.arithmetic.div_mod.lemma_mul_is_commutative_auto. 0)
                                                        (=>
                                                         %%location_label%%21
                                                         (= (Add (Mul c! (EucMod (EucDiv (Sub x! (Mul (Mul k@ d!) c!)) c!) d!)) (EucMod x! c!))
                                                          (Add (Mul c! (EucMod (EucDiv r@ c!) d!)) (EucMod x! c!))
                                                      ))))
                                                      (=>
                                                       (= (Add (Mul c! (EucMod (EucDiv (Sub x! (Mul (Mul k@ d!) c!)) c!) d!)) (EucMod x! c!))
                                                        (Add (Mul c! (EucMod (EucDiv r@ c!) d!)) (EucMod x! c!))
                                                       )
                                                       (and
                                                        (=>
                                                         %%location_label%%22
                                                         (= (Add (Mul c! (EucMod (EucDiv r@ c!) d!)) (EucMod x! c!)) (Add (Mul c! (EucDiv r@ c!))
                                                           (EucMod x! c!)
                                                        )))
                                                        (=>
                                                         (= (Add (Mul c! (EucMod (EucDiv r@ c!) d!)) (EucMod x! c!)) (Add (Mul c! (EucDiv r@ c!))
                                                           (EucMod x! c!)
                                                         ))
                                                         (and
                                                          (and
                                                           (=>
                                                            %%location_label%%23
                                                            (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. r@ c!)
                                                           )
                                                           (=>
                                                            (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. r@ c!)
                                                            (=>
                                                             (= tmp%17 (= r@ (Add (Mul c! (EucDiv r@ c!)) (EucMod r@ c!))))
                                                             (and
                                                              (=>
                                                               %%location_label%%24
                                                               tmp%17
                                                              )
                                                              (=>
                                                               tmp%17
                                                               (and
                                                                (=>
                                                                 %%location_label%%25
                                                                 (req%vstd.arithmetic.div_mod.lemma_mod_mod. x! c! d!)
                                                                )
                                                                (=>
                                                                 (ens%vstd.arithmetic.div_mod.lemma_mod_mod. x! c! d!)
                                                                 (=>
                                                                  (= tmp%18 (= (EucMod r@ c!) (EucMod x! c!)))
                                                                  (and
                                                                   (=>
                                                                    %%location_label%%26
                                                                    tmp%18
                                                                   )
                                                                   (=>
                                                                    tmp%18
                                                                    (=>
                                                                     %%location_label%%27
                                                                     (= (Add (Mul c! (EucDiv r@ c!)) (EucMod x! c!)) r@)
                                                          )))))))))))
                                                          (=>
                                                           (= (Add (Mul c! (EucDiv r@ c!)) (EucMod x! c!)) r@)
                                                           (and
                                                            (=>
                                                             (ens%vstd.arithmetic.div_mod.lemma_mod_properties_auto. 0)
                                                             (=>
                                                              (ens%vstd.arithmetic.div_mod.lemma_mod_is_mod_recursive_auto. 0)
                                                              (=>
                                                               %%location_label%%28
                                                               (= r@ (EucMod r@ (Mul c! d!)))
                                                            )))
                                                            (=>
                                                             (= r@ (EucMod r@ (Mul c! d!)))
                                                             (and
                                                              (=>
                                                               %%location_label%%29
                                                               (= (EucMod r@ (Mul c! d!)) (EucMod (Sub x! (Mul (Mul c! d!) k@)) (Mul c! d!)))
                                                              )
                                                              (=>
                                                               (= (EucMod r@ (Mul c! d!)) (EucMod (Sub x! (Mul (Mul c! d!) k@)) (Mul c! d!)))
                                                               (and
                                                                (=>
                                                                 (= tmp%19 (Mul c! d!))
                                                                 (=>
                                                                  (ens%vstd.arithmetic.mul.lemma_mul_unary_negation. tmp%19 k@)
                                                                  (=>
                                                                   %%location_label%%30
                                                                   (= (EucMod (Sub x! (Mul (Mul c! d!) k@)) (Mul c! d!)) (EucMod (Add x! (Mul (Mul c! d!)
                                                                       (Sub 0 k@)
                                                                      )
                                                                     ) (Mul c! d!)
                                                                )))))
                                                                (=>
                                                                 (= (EucMod (Sub x! (Mul (Mul c! d!) k@)) (Mul c! d!)) (EucMod (Add x! (Mul (Mul c! d!)
                                                                     (Sub 0 k@)
                                                                    )
                                                                   ) (Mul c! d!)
                                                                 ))
                                                                 (and
                                                                  (=>
                                                                   (= tmp%20 (Sub 0 k@))
                                                                   (=>
                                                                    (= tmp%21 (Mul c! d!))
                                                                    (and
                                                                     (=>
                                                                      %%location_label%%31
                                                                      (req%vstd.arithmetic.div_mod.lemma_mod_multiples_vanish. tmp%20 x! tmp%21)
                                                                     )
                                                                     (=>
                                                                      (ens%vstd.arithmetic.div_mod.lemma_mod_multiples_vanish. tmp%20 x! tmp%21)
                                                                      (=>
                                                                       %%location_label%%32
                                                                       (= (EucMod (Add x! (Mul (Mul c! d!) (Sub 0 k@))) (Mul c! d!)) (EucMod x! (Mul c! d!)))
                                                                  )))))
                                                                  (=>
                                                                   (= (EucMod (Add x! (Mul (Mul c! d!) (Sub 0 k@))) (Mul c! d!)) (EucMod x! (Mul c! d!)))
                                                                   (=>
                                                                    %%location_label%%33
                                                                    (= (Add (Mul c! (EucMod (EucDiv x! c!) d!)) (EucMod x! c!)) (EucMod x! (Mul c! d!)))
                                         )))))))))))))))))))))))))))
                                         (=>
                                          (= (Add (Mul c! (EucMod (EucDiv x! c!) d!)) (EucMod x! c!)) (EucMod x! (Mul c! d!)))
                                          (and
                                           (and
                                            (=>
                                             %%location_label%%34
                                             (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. x! c!)
                                            )
                                            (=>
                                             (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. x! c!)
                                             (=>
                                              %%location_label%%35
                                              (=>
                                               (= (Sub (Add (Mul c! (EucDiv x! c!)) (EucMod x! c!)) r@) (Sub (Mul c! (EucDiv x! c!))
                                                 (Mul c! (EucMod (EucDiv x! c!) d!))
                                               ))
                                               (= (Sub x! r@) (Sub (Mul c! (EucDiv x! c!)) (Mul c! (EucMod (EucDiv x! c!) d!))))
                                           ))))
                                           (=>
                                            (=>
                                             (= (Sub (Add (Mul c! (EucDiv x! c!)) (EucMod x! c!)) r@) (Sub (Mul c! (EucDiv x! c!))
                                               (Mul c! (EucMod (EucDiv x! c!) d!))
                                             ))
                                             (= (Sub x! r@) (Sub (Mul c! (EucDiv x! c!)) (Mul c! (EucMod (EucDiv x! c!) d!))))
                                            )
                                            (=>
                                             (= tmp%22 (= (Sub (Add (Mul c! (EucDiv x! c!)) (EucMod x! c!)) r@) (Sub (Mul c! (EucDiv
                                                  x! c!
                                                 )
                                                ) (Mul c! (EucMod (EucDiv x! c!) d!))
                                             )))
                                             (and
                                              (=>
                                               %%location_label%%36
                                               tmp%22
                                              )
                                              (=>
                                               tmp%22
                                               (=>
                                                (= tmp%23 (= (Sub x! r@) (Sub (Mul c! (EucDiv x! c!)) (Mul c! (EucMod (EucDiv x! c!) d!)))))
                                                (and
                                                 (=>
                                                  %%location_label%%37
                                                  tmp%23
                                                 )
                                                 (=>
                                                  tmp%23
                                                  (and
                                                   (=>
                                                    (= tmp%24 (EucDiv x! c!))
                                                    (and
                                                     (=>
                                                      %%location_label%%38
                                                      (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. tmp%24 d!)
                                                     )
                                                     (=>
                                                      (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. tmp%24 d!)
                                                      (=>
                                                       (= tmp%25 (= (Mul d! (EucDiv (EucDiv x! c!) d!)) (Sub (EucDiv x! c!) (EucMod (EucDiv x!
                                                            c!
                                                           ) d!
                                                       ))))
                                                       (and
                                                        (=>
                                                         %%location_label%%39
                                                         tmp%25
                                                        )
                                                        (=>
                                                         tmp%25
                                                         (=>
                                                          (= tmp%26 (Mul c! d!))
                                                          (and
                                                           (=>
                                                            %%location_label%%40
                                                            (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. x! tmp%26)
                                                           )
                                                           (=>
                                                            (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. x! tmp%26)
                                                            (=>
                                                             (= tmp%27 (= x! (Add (Mul (Mul c! d!) (EucDiv x! (Mul c! d!))) (EucMod x! (Mul c! d!)))))
                                                             (and
                                                              (=>
                                                               %%location_label%%41
                                                               tmp%27
                                                              )
                                                              (=>
                                                               tmp%27
                                                               (=>
                                                                (= tmp%28 (EucDiv x! c!))
                                                                (=>
                                                                 (= tmp%29 (EucMod (EucDiv x! c!) d!))
                                                                 (=>
                                                                  (ens%vstd.arithmetic.mul.lemma_mul_is_distributive_sub. c! tmp%28 tmp%29)
                                                                  (=>
                                                                   (= tmp%30 (= (Mul c! (Mul d! (EucDiv (EucDiv x! c!) d!))) (Sub (Mul c! (EucDiv x! c!))
                                                                      (Mul c! (EucMod (EucDiv x! c!) d!))
                                                                   )))
                                                                   (and
                                                                    (=>
                                                                     %%location_label%%42
                                                                     tmp%30
                                                                    )
                                                                    (=>
                                                                     tmp%30
                                                                     (=>
                                                                      (= tmp%31 (EucDiv (EucDiv x! c!) d!))
                                                                      (=>
                                                                       (ens%vstd.arithmetic.mul.lemma_mul_is_associative. c! d! tmp%31)
                                                                       (=>
                                                                        (= tmp%32 (= (Mul (Mul c! d!) (EucDiv (EucDiv x! c!) d!)) (Sub (Mul c! (EucDiv x! c!))
                                                                           (Mul c! (EucMod (EucDiv x! c!) d!))
                                                                        )))
                                                                        (and
                                                                         (=>
                                                                          %%location_label%%43
                                                                          tmp%32
                                                                         )
                                                                         (=>
                                                                          tmp%32
                                                                          (=>
                                                                           (= tmp%33 (= (Mul (Mul c! d!) (EucDiv (EucDiv x! c!) d!)) (Sub x! r@)))
                                                                           (and
                                                                            (=>
                                                                             %%location_label%%44
                                                                             tmp%33
                                                                            )
                                                                            (=>
                                                                             tmp%33
                                                                             (=>
                                                                              (= tmp%34 (= (Mul (Mul c! d!) (EucDiv (EucDiv x! c!) d!)) (Mul (Mul c! d!) (EucDiv x!
                                                                                  (Mul c! d!)
                                                                              ))))
                                                                              (and
                                                                               (=>
                                                                                %%location_label%%45
                                                                                tmp%34
                                                                               )
                                                                               (=>
                                                                                tmp%34
                                                                                (=>
                                                                                 (= tmp%35 (Mul c! d!))
                                                                                 (=>
                                                                                  (= tmp%36 (EucDiv (EucDiv x! c!) d!))
                                                                                  (=>
                                                                                   (= tmp%37 (EucDiv x! (Mul c! d!)))
                                                                                   (and
                                                                                    (=>
                                                                                     %%location_label%%46
                                                                                     (req%vstd.arithmetic.mul.lemma_mul_equality_converse. tmp%35 tmp%36 tmp%37)
                                                                                    )
                                                                                    (=>
                                                                                     (ens%vstd.arithmetic.mul.lemma_mul_equality_converse. tmp%35 tmp%36 tmp%37)
                                                                                     (=>
                                                                                      %%location_label%%47
                                                                                      (= (EucDiv (EucDiv x! c!) d!) (EucDiv x! (Mul c! d!)))
                                                   )))))))))))))))))))))))))))))))))))
                                                   (=>
                                                    (= (EucDiv (EucDiv x! c!) d!) (EucDiv x! (Mul c! d!)))
                                                    (and
                                                     (=>
                                                      (= tmp%38 (< 0 (Mul c! d!)))
                                                      (and
                                                       (=>
                                                        %%location_label%%48
                                                        tmp%38
                                                       )
                                                       (=>
                                                        tmp%38
                                                        (=>
                                                         %%location_label%%49
                                                         (not (= (Mul c! d!) 0))
                                                     ))))
                                                     (=>
                                                      (not (= (Mul c! d!) 0))
                                                      (and
                                                       (=>
                                                        %%location_label%%50
                                                        (not (= (Mul c! d!) 0))
                                                       )
                                                       (=>
                                                        %%location_label%%51
                                                        (= (EucDiv (EucDiv x! c!) d!) (EucDiv x! (Mul c! d!)))
 )))))))))))))))))))))))))))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_div_denominator
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_denominator.)
  (forall ((x! Int) (c! Int) (d! Int)) (!
    (=>
     (and
      (and
       (<= 0 x!)
       (< 0 c!)
      )
      (< 0 d!)
     )
     (and
      (not (= (Mul c! d!) 0))
      (= (EucDiv (EucDiv x! c!) d!) (EucDiv x! (Mul c! d!)))
    ))
    :pattern ((EucDiv (EucDiv x! c!) d!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_div_denominator_148
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_denominator_148
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

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_div_multiples_vanish_fancy
(declare-fun req%vstd.arithmetic.div_mod.lemma_div_multiples_vanish_fancy. (Int Int
  Int
 ) Bool
)
(declare-const %%global_location_label%%81 Bool)
(declare-const %%global_location_label%%82 Bool)
(assert
 (forall ((x! Int) (b! Int) (d! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_div_multiples_vanish_fancy. x! b! d!) (and
     (=>
      %%global_location_label%%81
      (< 0 d!)
     )
     (=>
      %%global_location_label%%82
      (and
       (<= 0 b!)
       (< b! d!)
   ))))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_div_multiples_vanish_fancy. x! b! d!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_div_multiples_vanish_fancy._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_div_multiples_vanish_fancy._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_div_multiples_vanish_fancy. (Int Int
  Int
 ) Bool
)
(assert
 (forall ((x! Int) (b! Int) (d! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_div_multiples_vanish_fancy. x! b! d!) (= (EucDiv
      (Add (Mul d! x!) b!) d!
     ) x!
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_div_multiples_vanish_fancy. x! b! d!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_div_multiples_vanish_fancy._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_div_multiples_vanish_fancy._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_div_multiples_vanish_fancy
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:782:1: 782:80 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const b! Int)
 (declare-const d! Int)
 (declare-const i@ Poly)
 (declare-const i$1@ Poly)
 (declare-const tmp%1 Bool)
 (declare-const f@ %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 d!)
 )
 (assert
  (and
   (<= 0 b!)
   (< b! d!)
 ))
 (declare-fun %%lambda%%7 (Int Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Int) (u$ Poly)) (!
    (= (%%apply%%0 (%%lambda%%7 %%hole%%0 %%hole%%1 %%hole%%2) u$) (B (= (EucDiv (Add (Mul
          %%hole%%0 (%I u$)
         ) %%hole%%1
        ) %%hole%%2
       ) (%I u$)
    )))
    :pattern ((%%apply%%0 (%%lambda%%7 %%hole%%0 %%hole%%1 %%hole%%2) u$))
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 ;; assertion failed
 (declare-const %%location_label%%6 Bool)
 ;; assertion failed
 (declare-const %%location_label%%7 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%8 Bool)
 ;; assertion failed
 (declare-const %%location_label%%9 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%10 Bool)
 ;; assertion failed
 (declare-const %%location_label%%11 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%12 Bool)
 (assert
  (not (=>
    (= f@ (mk_fun (%%lambda%%7 d! b! d!)))
    (and
     (and
      (=>
       %%location_label%%0
       (req%vstd.arithmetic.internals.div_internals.lemma_div_auto. d!)
      )
      (=>
       (ens%vstd.arithmetic.internals.div_internals.lemma_div_auto. d!)
       (=>
        %%location_label%%1
        (%B (%%apply%%0 f@ (I 0)))
     )))
     (=>
      (%B (%%apply%%0 f@ (I 0)))
      (and
       (=>
        (has_type i@ INT)
        (=>
         (and
          (>= (%I i@) 0)
          (%B (%%apply%%0 f@ i@))
         )
         (and
          (and
           (=>
            (ens%vstd.arithmetic.mul.lemma_mul_is_distributive_add. d! (%I i@) 1)
            (=>
             (ens%vstd.arithmetic.mul.lemma_mul_basics. d!)
             (=>
              %%location_label%%2
              (= (Mul d! (Add (%I i@) 1)) (Add (Mul d! (%I i@)) d!))
           )))
           (=>
            (= (Mul d! (Add (%I i@) 1)) (Add (Mul d! (%I i@)) d!))
            (=>
             %%location_label%%3
             (= (Add (Mul d! (Add (%I i@) 1)) b!) (Add (Add (Mul d! (%I i@)) b!) d!))
          )))
          (=>
           (= (Add (Mul d! (Add (%I i@) 1)) b!) (Add (Add (Mul d! (%I i@)) b!) d!))
           (and
            (=>
             %%location_label%%4
             (req%vstd.arithmetic.internals.div_internals.lemma_div_basics. d!)
            )
            (=>
             (ens%vstd.arithmetic.internals.div_internals.lemma_div_basics. d!)
             (=>
              %%location_label%%5
              (%B (%%apply%%0 f@ (I (vstd.math.add.? i@ (I 1)))))
       )))))))
       (=>
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
          :qid user_crate__vstd__arithmetic__div_mod__lemma_div_multiples_vanish_fancy_170
          :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_multiples_vanish_fancy_170
        ))
        (and
         (=>
          (has_type i$1@ INT)
          (=>
           (and
            (<= (%I i$1@) 0)
            (%B (%%apply%%0 f@ i$1@))
           )
           (and
            (and
             (=>
              (ens%vstd.arithmetic.mul.lemma_mul_is_distributive_sub. d! (%I i$1@) 1)
              (=>
               (ens%vstd.arithmetic.mul.lemma_mul_basics. d!)
               (=>
                %%location_label%%6
                (= (Mul d! (Sub (%I i$1@) 1)) (Sub (Mul d! (%I i$1@)) d!))
             )))
             (=>
              (= (Mul d! (Sub (%I i$1@) 1)) (Sub (Mul d! (%I i$1@)) d!))
              (=>
               %%location_label%%7
               (= (Add (Mul d! (Sub (%I i$1@) 1)) b!) (Sub (Add (Mul d! (%I i$1@)) b!) d!))
            )))
            (=>
             (= (Add (Mul d! (Sub (%I i$1@) 1)) b!) (Sub (Add (Mul d! (%I i$1@)) b!) d!))
             (and
              (=>
               %%location_label%%8
               (req%vstd.arithmetic.internals.div_internals.lemma_div_basics. d!)
              )
              (=>
               (ens%vstd.arithmetic.internals.div_internals.lemma_div_basics. d!)
               (=>
                %%location_label%%9
                (%B (%%apply%%0 f@ (I (vstd.math.sub.? i$1@ (I 1)))))
         )))))))
         (=>
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
            :qid user_crate__vstd__arithmetic__div_mod__lemma_div_multiples_vanish_fancy_173
            :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_multiples_vanish_fancy_173
          ))
          (=>
           (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.)
           (and
            (=>
             %%location_label%%10
             (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction. f@)
            )
            (=>
             (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction. f@)
             (=>
              (= tmp%1 (%B (%%apply%%0 f@ (I x!))))
              (and
               (=>
                %%location_label%%11
                tmp%1
               )
               (=>
                tmp%1
                (=>
                 %%location_label%%12
                 (= (EucDiv (Add (Mul d! x!) b!) d!) x!)
 ))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_div_multiples_vanish_fancy
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_multiples_vanish_fancy.)
  (forall ((x! Int) (b! Int) (d! Int)) (!
    (=>
     (and
      (< 0 d!)
      (and
       (<= 0 b!)
       (< b! d!)
     ))
     (= (EucDiv (Add (Mul d! x!) b!) d!) x!)
    )
    :pattern ((EucDiv (Add (Mul d! x!) b!) d!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_div_multiples_vanish_fancy_166
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_multiples_vanish_fancy_166
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_div_multiples_vanish
(declare-fun req%vstd.arithmetic.div_mod.lemma_div_multiples_vanish. (Int Int) Bool)
(declare-const %%global_location_label%%83 Bool)
(assert
 (forall ((x! Int) (d! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_div_multiples_vanish. x! d!) (=>
     %%global_location_label%%83
     (< 0 d!)
   ))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_div_multiples_vanish. x! d!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_div_multiples_vanish._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_div_multiples_vanish._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_div_multiples_vanish. (Int Int) Bool)
(assert
 (forall ((x! Int) (d! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_div_multiples_vanish. x! d!) (= (EucDiv (Mul d!
       x!
      ) d!
     ) x!
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_div_multiples_vanish. x! d!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_div_multiples_vanish._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_div_multiples_vanish._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_div_multiples_vanish
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:821:1: 821:66 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const d! Int)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 d!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.div_mod.lemma_div_multiples_vanish_fancy. x! 0 d!)
    )
    (=>
     (ens%vstd.arithmetic.div_mod.lemma_div_multiples_vanish_fancy. x! 0 d!)
     (=>
      %%location_label%%1
      (= (EucDiv (Mul d! x!) d!) x!)
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_div_multiples_vanish
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_multiples_vanish.)
  (forall ((x! Int) (d! Int)) (!
    (=>
     (< 0 d!)
     (= (EucDiv (Mul d! x!) d!) x!)
    )
    :pattern ((EucDiv (Mul d! x!) d!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_div_multiples_vanish_174
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_multiples_vanish_174
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_div_by_multiple
(declare-fun req%vstd.arithmetic.div_mod.lemma_div_by_multiple. (Int Int) Bool)
(declare-const %%global_location_label%%84 Bool)
(declare-const %%global_location_label%%85 Bool)
(assert
 (forall ((b! Int) (d! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_div_by_multiple. b! d!) (and
     (=>
      %%global_location_label%%84
      (<= 0 b!)
     )
     (=>
      %%global_location_label%%85
      (< 0 d!)
   )))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_div_by_multiple. b! d!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_div_by_multiple._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_div_by_multiple._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_div_by_multiple. (Int Int) Bool)
(assert
 (forall ((b! Int) (d! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_div_by_multiple. b! d!) (= (EucDiv (Mul b! d!)
      d!
     ) b!
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_div_by_multiple. b! d!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_div_by_multiple._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_div_by_multiple._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_div_by_multiple
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:834:1: 834:61 (#0)
(get-info :all-statistics)
(push)
 (declare-const b! Int)
 (declare-const d! Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 b!)
 )
 (assert
  (< 0 d!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.div_mod.lemma_div_multiples_vanish. b! d!)
    )
    (=>
     (ens%vstd.arithmetic.div_mod.lemma_div_multiples_vanish. b! d!)
     (=>
      (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.)
      (=>
       %%location_label%%1
       (= (EucDiv (Mul b! d!) d!) b!)
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_div_by_multiple
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_by_multiple.)
  (forall ((b! Int) (d! Int)) (!
    (=>
     (and
      (<= 0 b!)
      (< 0 d!)
     )
     (= (EucDiv (Mul b! d!) d!) b!)
    )
    :pattern ((EucDiv (Mul b! d!) d!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_div_by_multiple_175
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_by_multiple_175
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_truncate_middle
(declare-fun req%vstd.arithmetic.div_mod.lemma_truncate_middle. (Int Int Int) Bool)
(declare-const %%global_location_label%%86 Bool)
(declare-const %%global_location_label%%87 Bool)
(declare-const %%global_location_label%%88 Bool)
(assert
 (forall ((x! Int) (b! Int) (c! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_truncate_middle. x! b! c!) (and
     (=>
      %%global_location_label%%86
      (<= 0 x!)
     )
     (=>
      %%global_location_label%%87
      (< 0 b!)
     )
     (=>
      %%global_location_label%%88
      (< 0 c!)
   )))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_truncate_middle. x! b! c!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_truncate_middle._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_truncate_middle._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_truncate_middle. (Int Int Int) Bool)
(assert
 (forall ((x! Int) (b! Int) (c! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_truncate_middle. x! b! c!) (and
     (< 0 (Mul b! c!))
     (= (EucMod (Mul b! x!) (Mul b! c!)) (Mul b! (EucMod x! c!)))
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_truncate_middle. x! b! c!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_truncate_middle._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_truncate_middle._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_truncate_middle
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:705:1: 705:59 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const b! Int)
 (declare-const c! Int)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Int)
 (declare-const tmp%3 Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 x!)
 )
 (assert
  (< 0 b!)
 )
 (assert
  (< 0 c!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 ;; assertion failed
 (declare-const %%location_label%%6 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%7 Bool)
 ;; assertion failed
 (declare-const %%location_label%%8 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%9 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%10 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_strictly_positive.)
    (=>
     (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_nonnegative.)
     (and
      (and
       (=>
        (= tmp%1 (Mul b! x!))
        (=>
         (= tmp%2 (Mul b! c!))
         (and
          (=>
           %%location_label%%0
           (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
            tmp%1 tmp%2
          ))
          (=>
           (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
            tmp%1 tmp%2
           )
           (=>
            %%location_label%%1
            (= (Mul b! x!) (Add (Mul (Mul b! c!) (EucDiv (Mul b! x!) (Mul b! c!))) (EucMod (Mul b!
                x!
               ) (Mul b! c!)
       ))))))))
       (=>
        (= (Mul b! x!) (Add (Mul (Mul b! c!) (EucDiv (Mul b! x!) (Mul b! c!))) (EucMod (Mul b!
            x!
           ) (Mul b! c!)
        )))
        (and
         (=>
          (= tmp%3 (Mul b! x!))
          (and
           (=>
            %%location_label%%2
            (req%vstd.arithmetic.div_mod.lemma_div_denominator. tmp%3 b! c!)
           )
           (=>
            (ens%vstd.arithmetic.div_mod.lemma_div_denominator. tmp%3 b! c!)
            (=>
             %%location_label%%3
             (= (Add (Mul (Mul b! c!) (EucDiv (Mul b! x!) (Mul b! c!))) (EucMod (Mul b! x!) (Mul b!
                 c!
               ))
              ) (Add (Mul (Mul b! c!) (EucDiv (EucDiv (Mul b! x!) b!) c!)) (EucMod (Mul b! x!) (Mul
                 b! c!
         ))))))))
         (=>
          (= (Add (Mul (Mul b! c!) (EucDiv (Mul b! x!) (Mul b! c!))) (EucMod (Mul b! x!) (Mul b!
              c!
            ))
           ) (Add (Mul (Mul b! c!) (EucDiv (EucDiv (Mul b! x!) b!) c!)) (EucMod (Mul b! x!) (Mul
              b! c!
          ))))
          (and
           (=>
            (ens%vstd.arithmetic.div_mod.lemma_mul_is_commutative_auto. 0)
            (and
             (=>
              %%location_label%%4
              (req%vstd.arithmetic.div_mod.lemma_div_by_multiple. x! b!)
             )
             (=>
              (ens%vstd.arithmetic.div_mod.lemma_div_by_multiple. x! b!)
              (=>
               %%location_label%%5
               (= (Add (Mul (Mul b! c!) (EucDiv (EucDiv (Mul b! x!) b!) c!)) (EucMod (Mul b! x!) (Mul
                   b! c!
                 ))
                ) (Add (Mul (Mul b! c!) (EucDiv x! c!)) (EucMod (Mul b! x!) (Mul b! c!)))
           )))))
           (=>
            (= (Add (Mul (Mul b! c!) (EucDiv (EucDiv (Mul b! x!) b!) c!)) (EucMod (Mul b! x!) (Mul
                b! c!
              ))
             ) (Add (Mul (Mul b! c!) (EucDiv x! c!)) (EucMod (Mul b! x!) (Mul b! c!)))
            )
            (=>
             %%location_label%%6
             (= (Mul b! x!) (Add (Mul (Mul b! c!) (EucDiv x! c!)) (EucMod (Mul b! x!) (Mul b! c!))))
      )))))))
      (=>
       (= (Mul b! x!) (Add (Mul (Mul b! c!) (EucDiv x! c!)) (EucMod (Mul b! x!) (Mul b! c!))))
       (and
        (and
         (=>
          %%location_label%%7
          (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
           x! c!
         ))
         (=>
          (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
           x! c!
          )
          (=>
           (ens%vstd.arithmetic.div_mod.lemma_mul_is_distributive_auto. 0)
           (=>
            (ens%vstd.arithmetic.div_mod.lemma_mul_is_associative_auto. 0)
            (=>
             %%location_label%%8
             (= (Mul b! x!) (Add (Mul (Mul b! c!) (EucDiv x! c!)) (Mul b! (EucMod x! c!))))
        )))))
        (=>
         (= (Mul b! x!) (Add (Mul (Mul b! c!) (EucDiv x! c!)) (Mul b! (EucMod x! c!))))
         (and
          (=>
           %%location_label%%9
           (< 0 (Mul b! c!))
          )
          (=>
           %%location_label%%10
           (= (EucMod (Mul b! x!) (Mul b! c!)) (Mul b! (EucMod x! c!)))
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_breakdown
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:416:1: 416:63 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const z! Int)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Int)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Int)
 (declare-const tmp%5 Int)
 (declare-const tmp%6 Int)
 (declare-const tmp%7 Bool)
 (declare-const tmp%8 Int)
 (declare-const tmp%9 Int)
 (declare-const tmp%10 Bool)
 (declare-const tmp%11 Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 x!)
 )
 (assert
  (< 0 y!)
 )
 (assert
  (< 0 z!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 ;; assertion failed
 (declare-const %%location_label%%6 Bool)
 ;; assertion failed
 (declare-const %%location_label%%7 Bool)
 ;; assertion failed
 (declare-const %%location_label%%8 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%9 Bool)
 ;; assertion failed
 (declare-const %%location_label%%10 Bool)
 ;; assertion failed
 (declare-const %%location_label%%11 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%12 Bool)
 ;; assertion failed
 (declare-const %%location_label%%13 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%14 Bool)
 ;; assertion failed
 (declare-const %%location_label%%15 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%16 Bool)
 ;; assertion failed
 (declare-const %%location_label%%17 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%18 Bool)
 ;; assertion failed
 (declare-const %%location_label%%19 Bool)
 ;; assertion failed
 (declare-const %%location_label%%20 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%21 Bool)
 ;; assertion failed
 (declare-const %%location_label%%22 Bool)
 ;; assertion failed
 (declare-const %%location_label%%23 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%24 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%25 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_strictly_positive.)
    (and
     (=>
      %%location_label%%0
      (req%vstd.arithmetic.div_mod.lemma_div_pos_is_pos. x! y!)
     )
     (=>
      (ens%vstd.arithmetic.div_mod.lemma_div_pos_is_pos. x! y!)
      (and
       (and
        (and
         (=>
          %%location_label%%1
          (req%vstd.arithmetic.div_mod.lemma_part_bound1. x! y! z!)
         )
         (=>
          (ens%vstd.arithmetic.div_mod.lemma_part_bound1. x! y! z!)
          (=>
           %%location_label%%2
           (<= (Add (EucMod (Mul y! (EucDiv x! y!)) (Mul y! z!)) (EucMod (EucMod x! y!) (Mul y!
               z!
             ))
            ) (Add (Mul y! (Sub z! 1)) (EucMod (EucMod x! y!) (Mul y! z!)))
        ))))
        (=>
         (<= (Add (EucMod (Mul y! (EucDiv x! y!)) (Mul y! z!)) (EucMod (EucMod x! y!) (Mul y!
             z!
           ))
          ) (Add (Mul y! (Sub z! 1)) (EucMod (EucMod x! y!) (Mul y! z!)))
         )
         (and
          (and
           (=>
            %%location_label%%3
            (req%vstd.arithmetic.div_mod.lemma_part_bound2. x! y! z!)
           )
           (=>
            (ens%vstd.arithmetic.div_mod.lemma_part_bound2. x! y! z!)
            (=>
             %%location_label%%4
             (< (Add (Mul y! (Sub z! 1)) (EucMod (EucMod x! y!) (Mul y! z!))) (Add (Mul y! (Sub z!
                 1
                )
               ) y!
          )))))
          (=>
           (< (Add (Mul y! (Sub z! 1)) (EucMod (EucMod x! y!) (Mul y! z!))) (Add (Mul y! (Sub z!
               1
              )
             ) y!
           ))
           (and
            (=>
             (ens%vstd.arithmetic.div_mod.lemma_mul_basics_auto. 0)
             (=>
              %%location_label%%5
              (= (Add (Mul y! (Sub z! 1)) y!) (Add (Mul y! (Sub z! 1)) (Mul y! 1)))
            ))
            (=>
             (= (Add (Mul y! (Sub z! 1)) y!) (Add (Mul y! (Sub z! 1)) (Mul y! 1)))
             (and
              (=>
               (ens%vstd.arithmetic.div_mod.lemma_mul_is_distributive_auto. 0)
               (=>
                %%location_label%%6
                (= (Add (Mul y! (Sub z! 1)) (Mul y! 1)) (Mul y! (Add (Sub z! 1) 1)))
              ))
              (=>
               (= (Add (Mul y! (Sub z! 1)) (Mul y! 1)) (Mul y! (Add (Sub z! 1) 1)))
               (and
                (=>
                 %%location_label%%7
                 (= (Mul y! (Add (Sub z! 1) 1)) (Mul y! z!))
                )
                (=>
                 (= (Mul y! (Add (Sub z! 1) 1)) (Mul y! z!))
                 (=>
                  %%location_label%%8
                  (< (Add (EucMod (Mul y! (EucDiv x! y!)) (Mul y! z!)) (EucMod (EucMod x! y!) (Mul y! z!)))
                   (Mul y! z!)
       ))))))))))))
       (=>
        (< (Add (EucMod (Mul y! (EucDiv x! y!)) (Mul y! z!)) (EucMod (EucMod x! y!) (Mul y! z!)))
         (Mul y! z!)
        )
        (and
         (and
          (and
           (=>
            %%location_label%%9
            (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
             x! y!
           ))
           (=>
            (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
             x! y!
            )
            (=>
             %%location_label%%10
             (= (EucMod x! (Mul y! z!)) (EucMod (Add (Mul y! (EucDiv x! y!)) (EucMod x! y!)) (Mul
                y! z!
          ))))))
          (=>
           (= (EucMod x! (Mul y! z!)) (EucMod (Add (Mul y! (EucDiv x! y!)) (EucMod x! y!)) (Mul
              y! z!
           )))
           (and
            (=>
             (ens%vstd.arithmetic.div_mod.lemma_mod_properties_auto. 0)
             (=>
              (= tmp%1 (<= 0 (EucMod x! y!)))
              (and
               (=>
                %%location_label%%11
                tmp%1
               )
               (=>
                tmp%1
                (=>
                 (= tmp%2 (EucDiv x! y!))
                 (and
                  (=>
                   %%location_label%%12
                   (req%vstd.arithmetic.mul.lemma_mul_nonnegative. y! tmp%2)
                  )
                  (=>
                   (ens%vstd.arithmetic.mul.lemma_mul_nonnegative. y! tmp%2)
                   (=>
                    (= tmp%3 (< (Add (EucMod (Mul y! (EucDiv x! y!)) (Mul y! z!)) (EucMod (EucMod x! y!)
                        (Mul y! z!)
                       )
                      ) (Mul y! z!)
                    ))
                    (and
                     (=>
                      %%location_label%%13
                      tmp%3
                     )
                     (=>
                      tmp%3
                      (=>
                       (= tmp%4 (Mul y! (EucDiv x! y!)))
                       (=>
                        (= tmp%5 (EucMod x! y!))
                        (=>
                         (= tmp%6 (Mul y! z!))
                         (and
                          (=>
                           %%location_label%%14
                           (req%vstd.arithmetic.div_mod.lemma_mod_adds. tmp%4 tmp%5 tmp%6)
                          )
                          (=>
                           (ens%vstd.arithmetic.div_mod.lemma_mod_adds. tmp%4 tmp%5 tmp%6)
                           (=>
                            %%location_label%%15
                            (= (EucMod (Add (Mul y! (EucDiv x! y!)) (EucMod x! y!)) (Mul y! z!)) (Add (EucMod (Mul
                                y! (EucDiv x! y!)
                               ) (Mul y! z!)
                              ) (EucMod (EucMod x! y!) (Mul y! z!))
            ))))))))))))))))))
            (=>
             (= (EucMod (Add (Mul y! (EucDiv x! y!)) (EucMod x! y!)) (Mul y! z!)) (Add (EucMod (Mul
                 y! (EucDiv x! y!)
                ) (Mul y! z!)
               ) (EucMod (EucMod x! y!) (Mul y! z!))
             ))
             (and
              (=>
               (ens%vstd.arithmetic.div_mod.lemma_mod_properties_auto. 0)
               (and
                (=>
                 %%location_label%%16
                 (req%vstd.arithmetic.mul.lemma_mul_increases. z! y!)
                )
                (=>
                 (ens%vstd.arithmetic.mul.lemma_mul_increases. z! y!)
                 (=>
                  (ens%vstd.arithmetic.div_mod.lemma_mul_is_commutative_auto. 0)
                  (=>
                   (= tmp%7 (and
                     (< (EucMod x! y!) y!)
                     (<= y! (Mul y! z!))
                   ))
                   (and
                    (=>
                     %%location_label%%17
                     tmp%7
                    )
                    (=>
                     tmp%7
                     (=>
                      (= tmp%8 (nClip (EucMod x! y!)))
                      (=>
                       (= tmp%9 (nClip (Mul y! z!)))
                       (and
                        (=>
                         %%location_label%%18
                         (req%vstd.arithmetic.div_mod.lemma_small_mod. tmp%8 tmp%9)
                        )
                        (=>
                         (ens%vstd.arithmetic.div_mod.lemma_small_mod. tmp%8 tmp%9)
                         (=>
                          (= tmp%10 (= (EucMod (EucMod x! y!) (Mul y! z!)) (EucMod x! y!)))
                          (and
                           (=>
                            %%location_label%%19
                            tmp%10
                           )
                           (=>
                            tmp%10
                            (=>
                             %%location_label%%20
                             (= (Add (EucMod (Mul y! (EucDiv x! y!)) (Mul y! z!)) (EucMod (EucMod x! y!) (Mul y! z!)))
                              (Add (EucMod (Mul y! (EucDiv x! y!)) (Mul y! z!)) (EucMod x! y!))
              ))))))))))))))))
              (=>
               (= (Add (EucMod (Mul y! (EucDiv x! y!)) (Mul y! z!)) (EucMod (EucMod x! y!) (Mul y! z!)))
                (Add (EucMod (Mul y! (EucDiv x! y!)) (Mul y! z!)) (EucMod x! y!))
               )
               (and
                (=>
                 (= tmp%11 (EucDiv x! y!))
                 (and
                  (=>
                   %%location_label%%21
                   (req%vstd.arithmetic.div_mod.lemma_truncate_middle. tmp%11 y! z!)
                  )
                  (=>
                   (ens%vstd.arithmetic.div_mod.lemma_truncate_middle. tmp%11 y! z!)
                   (=>
                    %%location_label%%22
                    (= (Add (EucMod (Mul y! (EucDiv x! y!)) (Mul y! z!)) (EucMod x! y!)) (Add (Mul y! (EucMod
                        (EucDiv x! y!) z!
                       )
                      ) (EucMod x! y!)
                ))))))
                (=>
                 (= (Add (EucMod (Mul y! (EucDiv x! y!)) (Mul y! z!)) (EucMod x! y!)) (Add (Mul y! (EucMod
                     (EucDiv x! y!) z!
                    )
                   ) (EucMod x! y!)
                 ))
                 (=>
                  %%location_label%%23
                  (= (EucMod x! (Mul y! z!)) (Add (Mul y! (EucMod (EucDiv x! y!) z!)) (EucMod x! y!)))
         )))))))))
         (=>
          (= (EucMod x! (Mul y! z!)) (Add (Mul y! (EucMod (EucDiv x! y!) z!)) (EucMod x! y!)))
          (and
           (=>
            %%location_label%%24
            (< 0 (Mul y! z!))
           )
           (=>
            %%location_label%%25
            (= (EucMod x! (Mul y! z!)) (Add (Mul y! (EucMod (EucDiv x! y!) z!)) (EucMod x! y!)))
 )))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_breakdown
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_breakdown.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (=>
     (and
      (and
       (<= 0 x!)
       (< 0 y!)
      )
      (< 0 z!)
     )
     (and
      (< 0 (Mul y! z!))
      (= (EucMod x! (Mul y! z!)) (Add (Mul y! (EucMod (EucDiv x! y!) z!)) (EucMod x! y!)))
    ))
    :pattern ((Mul y! z!) (EucMod x! (Mul y! z!)) (Add (Mul y! (EucMod (EucDiv x! y!) z!))
      (EucMod x! y!)
    ))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_breakdown_181
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_breakdown_181
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_remainder_upper
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:478:1: 478:61 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const d! Int)
 (declare-const tmp%1 %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 x!)
 )
 (assert
  (< 0 d!)
 )
 (declare-fun %%lambda%%8 (Int Int Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Int) (%%hole%%3 Int) (u$ Poly))
   (!
    (= (%%apply%%0 (%%lambda%%8 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) u$) (B (=>
       (<= %%hole%%0 (%I u$))
       (< (Sub (%I u$) %%hole%%1) (Mul (EucDiv (%I u$) %%hole%%2) %%hole%%3))
    )))
    :pattern ((%%apply%%0 (%%lambda%%8 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) u$))
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.)
    (=>
     (= tmp%1 (mk_fun (%%lambda%%8 0 d! d! d!)))
     (and
      (=>
       %%location_label%%0
       (req%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. d! x! tmp%1)
      )
      (=>
       (ens%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. d! x! tmp%1)
       (=>
        %%location_label%%1
        (< (Sub x! d!) (Mul (EucDiv x! d!) d!))
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_remainder_upper
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_remainder_upper.)
  (forall ((x! Int) (d! Int)) (!
    (=>
     (and
      (<= 0 x!)
      (< 0 d!)
     )
     (< (Sub x! d!) (Mul (EucDiv x! d!) d!))
    )
    :pattern ((Sub x! d!) (Mul (EucDiv x! d!) d!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_remainder_upper_193
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_remainder_upper_193
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_remainder_lower
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:494:1: 494:61 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const d! Int)
 (declare-const tmp%1 %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 x!)
 )
 (assert
  (< 0 d!)
 )
 (declare-fun %%lambda%%9 (Int Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Int) (u$ Poly)) (!
    (= (%%apply%%0 (%%lambda%%9 %%hole%%0 %%hole%%1 %%hole%%2) u$) (B (=>
       (<= %%hole%%0 (%I u$))
       (>= (%I u$) (Mul (EucDiv (%I u$) %%hole%%1) %%hole%%2))
    )))
    :pattern ((%%apply%%0 (%%lambda%%9 %%hole%%0 %%hole%%1 %%hole%%2) u$))
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.)
    (=>
     (= tmp%1 (mk_fun (%%lambda%%9 0 d! d!)))
     (and
      (=>
       %%location_label%%0
       (req%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. d! x! tmp%1)
      )
      (=>
       (ens%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. d! x! tmp%1)
       (=>
        %%location_label%%1
        (>= x! (Mul (EucDiv x! d!) d!))
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_remainder_lower
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_remainder_lower.)
  (forall ((x! Int) (d! Int)) (!
    (=>
     (and
      (<= 0 x!)
      (< 0 d!)
     )
     (>= x! (Mul (EucDiv x! d!) d!))
    )
    :pattern ((Mul (EucDiv x! d!) d!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_remainder_lower_194
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_remainder_lower_194
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_remainder
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:510:1: 510:55 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const d! Int)
 (declare-const tmp%1 %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 x!)
 )
 (assert
  (< 0 d!)
 )
 (declare-fun %%lambda%%10 (Int Int Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Int) (%%hole%%3 Int) (u$ Poly))
   (!
    (= (%%apply%%0 (%%lambda%%10 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) u$) (B (let
       ((tmp%%$ (Sub (%I u$) (Mul (EucDiv (%I u$) %%hole%%0) %%hole%%1))))
       (and
        (<= %%hole%%2 tmp%%$)
        (< tmp%%$ %%hole%%3)
    ))))
    :pattern ((%%apply%%0 (%%lambda%%10 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) u$))
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.)
    (=>
     (= tmp%1 (mk_fun (%%lambda%%10 d! d! 0 d!)))
     (and
      (=>
       %%location_label%%0
       (req%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. d! x! tmp%1)
      )
      (=>
       (ens%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. d! x! tmp%1)
       (=>
        %%location_label%%1
        (let
         ((tmp%%$ (Sub x! (Mul (EucDiv x! d!) d!))))
         (and
          (<= 0 tmp%%$)
          (< tmp%%$ d!)
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_remainder
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_remainder.)
  (forall ((x! Int) (d! Int)) (!
    (=>
     (and
      (<= 0 x!)
      (< 0 d!)
     )
     (let
      ((tmp%%$ (Sub x! (Mul (EucDiv x! d!) d!))))
      (and
       (<= 0 tmp%%$)
       (< tmp%%$ d!)
    )))
    :pattern ((Sub x! (Mul (EucDiv x! d!) d!)))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_remainder_195
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_remainder_195
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mul_hoist_inequality
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:648:1: 648:74 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const z! Int)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Int)
 (declare-const tmp%3 Int)
 (declare-const tmp%4 Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 x!)
 )
 (assert
  (< 0 z!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%5 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%6 Bool)
 ;; assertion failed
 (declare-const %%location_label%%7 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%8 Bool)
 (assert
  (not (and
    (and
     (and
      (=>
       %%location_label%%0
       (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. y! z!)
      )
      (=>
       (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. y! z!)
       (=>
        %%location_label%%1
        (= (EucDiv (Mul x! y!) z!) (EucDiv (Mul x! (Add (Mul z! (EucDiv y! z!)) (EucMod y! z!)))
          z!
     )))))
     (=>
      (= (EucDiv (Mul x! y!) z!) (EucDiv (Mul x! (Add (Mul z! (EucDiv y! z!)) (EucMod y! z!)))
        z!
      ))
      (and
       (=>
        (ens%vstd.arithmetic.div_mod.lemma_mul_is_distributive_auto. 0)
        (=>
         %%location_label%%2
         (= (EucDiv (Mul x! (Add (Mul z! (EucDiv y! z!)) (EucMod y! z!))) z!) (EucDiv (Add (Mul
             x! (Mul z! (EucDiv y! z!))
            ) (Mul x! (EucMod y! z!))
           ) z!
       ))))
       (=>
        (= (EucDiv (Mul x! (Add (Mul z! (EucDiv y! z!)) (EucMod y! z!))) z!) (EucDiv (Add (Mul
            x! (Mul z! (EucDiv y! z!))
           ) (Mul x! (EucMod y! z!))
          ) z!
        ))
        (=>
         %%location_label%%3
         (= (EucDiv (Mul x! y!) z!) (EucDiv (Add (Mul x! (Mul z! (EucDiv y! z!))) (Mul x! (EucMod
              y! z!
            ))
           ) z!
    )))))))
    (=>
     (= (EucDiv (Mul x! y!) z!) (EucDiv (Add (Mul x! (Mul z! (EucDiv y! z!))) (Mul x! (EucMod
          y! z!
        ))
       ) z!
     ))
     (and
      (=>
       (ens%vstd.arithmetic.div_mod.lemma_mod_properties_auto. 0)
       (=>
        (= tmp%1 (EucMod y! z!))
        (and
         (=>
          %%location_label%%4
          (req%vstd.arithmetic.mul.lemma_mul_nonnegative. x! tmp%1)
         )
         (=>
          (ens%vstd.arithmetic.mul.lemma_mul_nonnegative. x! tmp%1)
          (=>
           (= tmp%2 (Mul x! (Mul z! (EucDiv y! z!))))
           (=>
            (= tmp%3 (Add (Mul x! (Mul z! (EucDiv y! z!))) (Mul x! (EucMod y! z!))))
            (and
             (=>
              %%location_label%%5
              (req%vstd.arithmetic.div_mod.lemma_div_is_ordered. tmp%2 tmp%3 z!)
             )
             (=>
              (ens%vstd.arithmetic.div_mod.lemma_div_is_ordered. tmp%2 tmp%3 z!)
              (=>
               (ens%vstd.arithmetic.div_mod.lemma_mul_is_associative_auto. 0)
               (=>
                (ens%vstd.arithmetic.div_mod.lemma_mul_is_commutative_auto. 0)
                (=>
                 (= tmp%4 (Mul x! (EucDiv y! z!)))
                 (and
                  (=>
                   %%location_label%%6
                   (req%vstd.arithmetic.div_mod.lemma_div_multiples_vanish. tmp%4 z!)
                  )
                  (=>
                   (ens%vstd.arithmetic.div_mod.lemma_div_multiples_vanish. tmp%4 z!)
                   (=>
                    %%location_label%%7
                    (>= (EucDiv (Add (Mul x! (Mul z! (EucDiv y! z!))) (Mul x! (EucMod y! z!))) z!) (Mul
                      x! (EucDiv y! z!)
      ))))))))))))))))
      (=>
       (>= (EucDiv (Add (Mul x! (Mul z! (EucDiv y! z!))) (Mul x! (EucMod y! z!))) z!) (Mul
         x! (EucDiv y! z!)
       ))
       (=>
        %%location_label%%8
        (<= (Mul x! (EucDiv y! z!)) (EucDiv (Mul x! y!) z!))
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_mul_hoist_inequality
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_mul_hoist_inequality.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (=>
     (and
      (<= 0 x!)
      (< 0 z!)
     )
     (<= (Mul x! (EucDiv y! z!)) (EucDiv (Mul x! y!) z!))
    )
    :pattern ((Mul x! (EucDiv y! z!)) (EucDiv (Mul x! y!) z!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_hoist_inequality_196
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_hoist_inequality_196
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_indistinguishable_quotients
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:683:1: 683:81 (#0)
(get-info :all-statistics)
(push)
 (declare-const a! Int)
 (declare-const b! Int)
 (declare-const d! Int)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 d!)
 )
 (assert
  (let
   ((tmp%%$ (Sub a! (EucMod a! d!))))
   (and
    (and
     (<= 0 tmp%%$)
     (<= tmp%%$ b!)
    )
    (< b! (Sub (Add a! d!) (EucMod a! d!)))
 )))
 (declare-fun %%lambda%%11 (Int Int Int Int Int Int Int Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Int) (%%hole%%3 Int) (%%hole%%4
     Int
    ) (%%hole%%5 Int) (%%hole%%6 Int) (%%hole%%7 Int) (%%hole%%8 Int) (ab$ Poly)
   ) (!
    (= (%%apply%%0 (%%lambda%%11 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
       %%hole%%6 %%hole%%7 %%hole%%8
      ) ab$
     ) (B (let
       ((u$ (Add (%I ab$) %%hole%%0)))
       (=>
        (let
         ((tmp%%$ (Sub u$ (EucMod u$ %%hole%%1))))
         (and
          (and
           (<= %%hole%%2 tmp%%$)
           (<= tmp%%$ %%hole%%3)
          )
          (< %%hole%%6 (Sub (Add u$ %%hole%%4) (EucMod u$ %%hole%%5)))
        ))
        (= (EucDiv u$ %%hole%%7) %%hole%%8)
    ))))
    :pattern ((%%apply%%0 (%%lambda%%11 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
       %%hole%%5 %%hole%%6 %%hole%%7 %%hole%%8
      ) ab$
 )))))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= tmp%1 (Sub a! b!))
    (=>
     (= tmp%2 (mk_fun (%%lambda%%11 b! d! 0 b! d! d! b! d! (EucDiv b! d!))))
     (and
      (=>
       %%location_label%%0
       (req%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. d! tmp%1 tmp%2)
      )
      (=>
       (ens%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. d! tmp%1 tmp%2)
       (=>
        %%location_label%%1
        (= (EucDiv a! d!) (EucDiv b! d!))
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_indistinguishable_quotients
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_indistinguishable_quotients.)
  (forall ((a! Int) (b! Int) (d! Int)) (!
    (=>
     (and
      (< 0 d!)
      (let
       ((tmp%%$ (Sub a! (EucMod a! d!))))
       (and
        (and
         (<= 0 tmp%%$)
         (<= tmp%%$ b!)
        )
        (< b! (Sub (Add a! d!) (EucMod a! d!)))
     )))
     (= (EucDiv a! d!) (EucDiv b! d!))
    )
    :pattern ((EucDiv a! d!) (EucDiv b! d!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_indistinguishable_quotients_201
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_indistinguishable_quotients_201
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_div_multiples_vanish_quotient
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:741:1: 741:83 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const a! Int)
 (declare-const d! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 x!)
 )
 (assert
  (<= 0 a!)
 )
 (assert
  (< 0 d!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
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
 ;; postcondition not satisfied
 (declare-const %%location_label%%7 Bool)
 (assert
  (not (=>
    (ens%vstd.arithmetic.mul.lemma_mul_strictly_positive. x! d!)
    (and
     (and
      (and
       (=>
        %%location_label%%0
        (req%vstd.arithmetic.mul.lemma_mul_nonnegative. x! a!)
       )
       (=>
        (ens%vstd.arithmetic.mul.lemma_mul_nonnegative. x! a!)
        (=>
         (= tmp%1 (Mul x! a!))
         (and
          (=>
           %%location_label%%1
           (req%vstd.arithmetic.div_mod.lemma_div_denominator. tmp%1 x! d!)
          )
          (=>
           (ens%vstd.arithmetic.div_mod.lemma_div_denominator. tmp%1 x! d!)
           (=>
            %%location_label%%2
            (= (EucDiv (Mul x! a!) (Mul x! d!)) (EucDiv (EucDiv (Mul x! a!) x!) d!))
      ))))))
      (=>
       (= (EucDiv (Mul x! a!) (Mul x! d!)) (EucDiv (EucDiv (Mul x! a!) x!) d!))
       (and
        (and
         (=>
          %%location_label%%3
          (req%vstd.arithmetic.div_mod.lemma_div_multiples_vanish. a! x!)
         )
         (=>
          (ens%vstd.arithmetic.div_mod.lemma_div_multiples_vanish. a! x!)
          (=>
           %%location_label%%4
           (= (EucDiv (EucDiv (Mul x! a!) x!) d!) (EucDiv a! d!))
        )))
        (=>
         (= (EucDiv (EucDiv (Mul x! a!) x!) d!) (EucDiv a! d!))
         (=>
          %%location_label%%5
          (= (EucDiv (Mul x! a!) (Mul x! d!)) (EucDiv a! d!))
     )))))
     (=>
      (= (EucDiv (Mul x! a!) (Mul x! d!)) (EucDiv a! d!))
      (and
       (=>
        %%location_label%%6
        (< 0 (Mul x! d!))
       )
       (=>
        %%location_label%%7
        (= (EucDiv a! d!) (EucDiv (Mul x! a!) (Mul x! d!)))
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_div_multiples_vanish_quotient
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_multiples_vanish_quotient.)
  (forall ((x! Int) (a! Int) (d! Int)) (!
    (=>
     (and
      (and
       (< 0 x!)
       (<= 0 a!)
      )
      (< 0 d!)
     )
     (and
      (< 0 (Mul x! d!))
      (= (EucDiv a! d!) (EucDiv (Mul x! a!) (Mul x! d!)))
    ))
    :pattern ((EucDiv a! d!) (Mul x! a!) (Mul x! d!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_div_multiples_vanish_quotient_202
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_multiples_vanish_quotient_202
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_round_down
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:767:1: 767:64 (#0)
(get-info :all-statistics)
(push)
 (declare-const a! Int)
 (declare-const r! Int)
 (declare-const d! Int)
 (declare-const tmp%1 %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 d!)
 )
 (assert
  (= (EucMod a! d!) 0)
 )
 (assert
  (and
   (<= 0 r!)
   (< r! d!)
 ))
 (declare-fun %%lambda%%12 (Int Int Int Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Int) (%%hole%%3 Int) (%%hole%%4
     Int
    ) (u$ Poly)
   ) (!
    (= (%%apply%%0 (%%lambda%%12 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4) u$)
     (B (=>
       (= (EucMod (%I u$) %%hole%%0) %%hole%%1)
       (= (%I u$) (Mul %%hole%%4 (EucDiv (Add (%I u$) %%hole%%2) %%hole%%3)))
    )))
    :pattern ((%%apply%%0 (%%lambda%%12 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4)
      u$
 )))))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.)
    (=>
     (= tmp%1 (mk_fun (%%lambda%%12 d! 0 r! d! d!)))
     (and
      (=>
       %%location_label%%0
       (req%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. d! a! tmp%1)
      )
      (=>
       (ens%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. d! a! tmp%1)
       (=>
        %%location_label%%1
        (= a! (Mul d! (EucDiv (Add a! r!) d!)))
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_round_down
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_round_down.)
  (forall ((a! Int) (r! Int) (d! Int)) (!
    (=>
     (and
      (and
       (< 0 d!)
       (= (EucMod a! d!) 0)
      )
      (and
       (<= 0 r!)
       (< r! d!)
     ))
     (= a! (Mul d! (EucDiv (Add a! r!) d!)))
    )
    :pattern ((Mul d! (EucDiv (Add a! r!) d!)))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_round_down_206
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_round_down_206
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_mod_multiples_basic
(declare-fun req%vstd.arithmetic.div_mod.lemma_mod_multiples_basic. (Int Int) Bool)
(declare-const %%global_location_label%%89 Bool)
(assert
 (forall ((x! Int) (m! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_mod_multiples_basic. x! m!) (=>
     %%global_location_label%%89
     (> m! 0)
   ))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_mod_multiples_basic. x! m!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_mod_multiples_basic._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_mod_multiples_basic._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_mod_multiples_basic. (Int Int) Bool)
(assert
 (forall ((x! Int) (m! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_mod_multiples_basic. x! m!) (= (EucMod (Mul x!
       m!
      ) m!
     ) 0
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_mod_multiples_basic. x! m!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_mod_multiples_basic._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_mod_multiples_basic._definition
)))

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_mod_multiples_basic
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_mod_multiples_basic.)
  (forall ((x! Int) (m! Int)) (!
    (=>
     (> m! 0)
     (= (EucMod (Mul x! m!) m!) 0)
    )
    :pattern ((EucMod (Mul x! m!) m!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_multiples_basic_207
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_multiples_basic_207
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_div_by_multiple_is_strongly_ordered
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:850:1: 850:97 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const m! Int)
 (declare-const z! Int)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (< x! y!)
 )
 (assert
  (= y! (Mul m! z!))
 )
 (assert
  (< 0 z!)
 )
 (declare-fun %%lambda%%13 (Int Int Int Int Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Int) (%%hole%%3 Int) (%%hole%%4
     Int
    ) (%%hole%%5 Int) (yx$ Poly)
   ) (!
    (= (%%apply%%0 (%%lambda%%13 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5)
      yx$
     ) (B (let
       ((u$ (Add (%I yx$) %%hole%%0)))
       (=>
        (and
         (< %%hole%%1 u$)
         (= (EucMod u$ %%hole%%2) %%hole%%3)
        )
        (< %%hole%%5 (EucDiv u$ %%hole%%4))
    ))))
    :pattern ((%%apply%%0 (%%lambda%%13 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
       %%hole%%5
      ) yx$
 )))))
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
     (req%vstd.arithmetic.div_mod.lemma_mod_multiples_basic. m! z!)
    )
    (=>
     (ens%vstd.arithmetic.div_mod.lemma_mod_multiples_basic. m! z!)
     (=>
      (= tmp%1 (Sub y! x!))
      (=>
       (= tmp%2 (mk_fun (%%lambda%%13 x! x! z! 0 z! (EucDiv x! z!))))
       (and
        (=>
         %%location_label%%1
         (req%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. z! tmp%1 tmp%2)
        )
        (=>
         (ens%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. z! tmp%1 tmp%2)
         (=>
          %%location_label%%2
          (< (EucDiv x! z!) (EucDiv y! z!))
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_div_by_multiple_is_strongly_ordered
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_by_multiple_is_strongly_ordered.)
  (forall ((x! Int) (y! Int) (m! Int) (z! Int)) (!
    (=>
     (and
      (and
       (< x! y!)
       (= y! (Mul m! z!))
      )
      (< 0 z!)
     )
     (< (EucDiv x! z!) (EucDiv y! z!))
    )
    :pattern ((EucDiv x! z!) (Mul m! z!) (EucDiv y! z!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_div_by_multiple_is_strongly_ordered_208
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_by_multiple_is_strongly_ordered_208
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_multiply_divide_le
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:875:1: 875:72 (#0)
(get-info :all-statistics)
(push)
 (declare-const a! Int)
 (declare-const b! Int)
 (declare-const c! Int)
 (declare-const tmp%1 Int)
 (declare-const f@ %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 b!)
 )
 (assert
  (<= a! (Mul b! c!))
 )
 (declare-fun %%lambda%%14 (Int Int Int Int Int Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Int) (%%hole%%3 Int) (%%hole%%4
     Int
    ) (%%hole%%5 Int) (%%hole%%6 Int) (i$ Poly)
   ) (!
    (= (%%apply%%0 (%%lambda%%14 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
       %%hole%%6
      ) i$
     ) (B (=>
       (and
        (<= %%hole%%0 (%I i$))
        (= (EucMod (Add (%I i$) %%hole%%1) %%hole%%2) %%hole%%3)
       )
       (<= %%hole%%6 (EucDiv (Add (%I i$) %%hole%%4) %%hole%%5))
    )))
    :pattern ((%%apply%%0 (%%lambda%%14 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
       %%hole%%5 %%hole%%6
      ) i$
 )))))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.div_mod.lemma_mod_multiples_basic. c! b!)
    )
    (=>
     (ens%vstd.arithmetic.div_mod.lemma_mod_multiples_basic. c! b!)
     (=>
      (= f@ (mk_fun (%%lambda%%14 0 a! b! 0 a! b! (EucDiv a! b!))))
      (=>
       (= tmp%1 (Sub (Mul b! c!) a!))
       (and
        (=>
         %%location_label%%1
         (req%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. b! tmp%1 f@)
        )
        (=>
         (ens%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. b! tmp%1 f@)
         (and
          (=>
           %%location_label%%2
           (req%vstd.arithmetic.div_mod.lemma_div_multiples_vanish. c! b!)
          )
          (=>
           (ens%vstd.arithmetic.div_mod.lemma_div_multiples_vanish. c! b!)
           (=>
            %%location_label%%3
            (<= (EucDiv a! b!) c!)
 )))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_multiply_divide_le
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_multiply_divide_le.)
  (forall ((a! Int) (b! Int) (c! Int)) (!
    (=>
     (and
      (< 0 b!)
      (<= a! (Mul b! c!))
     )
     (<= (EucDiv a! b!) c!)
    )
    :pattern ((EucDiv a! b!) (Mul b! c!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_multiply_divide_le_209
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_multiply_divide_le_209
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_multiply_divide_lt
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:892:1: 892:72 (#0)
(get-info :all-statistics)
(push)
 (declare-const a! Int)
 (declare-const b! Int)
 (declare-const c! Int)
 (declare-const tmp%1 Int)
 (declare-const f@ %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 b!)
 )
 (assert
  (< a! (Mul b! c!))
 )
 (declare-fun %%lambda%%15 (Int Int Int Int Int Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Int) (%%hole%%3 Int) (%%hole%%4
     Int
    ) (%%hole%%5 Int) (%%hole%%6 Int) (i$ Poly)
   ) (!
    (= (%%apply%%0 (%%lambda%%15 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
       %%hole%%6
      ) i$
     ) (B (=>
       (and
        (< %%hole%%0 (%I i$))
        (= (EucMod (Add (%I i$) %%hole%%1) %%hole%%2) %%hole%%3)
       )
       (< %%hole%%6 (EucDiv (Add (%I i$) %%hole%%4) %%hole%%5))
    )))
    :pattern ((%%apply%%0 (%%lambda%%15 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
       %%hole%%5 %%hole%%6
      ) i$
 )))))
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
 ;; precondition not satisfied
 (declare-const %%location_label%%5 Bool)
 ;; assertion failed
 (declare-const %%location_label%%6 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%7 Bool)
 (assert
  (not (and
    (=>
     (= f@ (mk_fun (%%lambda%%15 0 a! b! 0 a! b! (EucDiv a! b!))))
     (=>
      (= tmp%1 (Sub (Mul b! c!) a!))
      (and
       (=>
        %%location_label%%0
        (req%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. b! tmp%1 f@)
       )
       (=>
        (ens%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. b! tmp%1 f@)
        (=>
         %%location_label%%1
         (=>
          (= (EucMod (Add (Sub (Mul b! c!) a!) a!) b!) 0)
          (< (EucDiv a! b!) (EucDiv (Add (Sub (Mul b! c!) a!) a!) b!))
    ))))))
    (=>
     (=>
      (= (EucMod (Add (Sub (Mul b! c!) a!) a!) b!) 0)
      (< (EucDiv a! b!) (EucDiv (Add (Sub (Mul b! c!) a!) a!) b!))
     )
     (and
      (=>
       (ens%vstd.arithmetic.mul.lemma_mul_is_commutative. b! c!)
       (=>
        %%location_label%%2
        (= (Mul b! c!) (Mul c! b!))
      ))
      (=>
       (= (Mul b! c!) (Mul c! b!))
       (and
        (and
         (=>
          %%location_label%%3
          (req%vstd.arithmetic.div_mod.lemma_mod_multiples_basic. c! b!)
         )
         (=>
          (ens%vstd.arithmetic.div_mod.lemma_mod_multiples_basic. c! b!)
          (=>
           %%location_label%%4
           (= (EucMod (Mul b! c!) b!) 0)
        )))
        (=>
         (= (EucMod (Mul b! c!) b!) 0)
         (and
          (and
           (=>
            %%location_label%%5
            (req%vstd.arithmetic.div_mod.lemma_div_multiples_vanish. c! b!)
           )
           (=>
            (ens%vstd.arithmetic.div_mod.lemma_div_multiples_vanish. c! b!)
            (=>
             %%location_label%%6
             (= (EucDiv (Mul b! c!) b!) c!)
          )))
          (=>
           (= (EucDiv (Mul b! c!) b!) c!)
           (=>
            %%location_label%%7
            (< (EucDiv a! b!) c!)
 )))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_multiply_divide_lt
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_multiply_divide_lt.)
  (forall ((a! Int) (b! Int) (c! Int)) (!
    (=>
     (and
      (< 0 b!)
      (< a! (Mul b! c!))
     )
     (< (EucDiv a! b!) c!)
    )
    :pattern ((EucDiv a! b!) (Mul b! c!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_multiply_divide_lt_210
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_multiply_divide_lt_210
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_mod_decreases
(declare-fun req%vstd.arithmetic.div_mod.lemma_mod_decreases. (Int Int) Bool)
(declare-const %%global_location_label%%90 Bool)
(assert
 (forall ((x! Int) (m! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_mod_decreases. x! m!) (=>
     %%global_location_label%%90
     (< 0 m!)
   ))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_mod_decreases. x! m!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_mod_decreases._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_mod_decreases._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_mod_decreases. (Int Int) Bool)
(assert
 (forall ((x! Int) (m! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_mod_decreases. x! m!) (<= (nClip (EucMod x! m!))
     x!
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_mod_decreases. x! m!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_mod_decreases._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_mod_decreases._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mod_decreases
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1111:1: 1111:59 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const m! Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 x!)
 )
 (assert
  (<= 0 m!)
 )
 (assert
  (< 0 m!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
    )
    (=>
     (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
     (=>
      %%location_label%%1
      (<= (nClip (EucMod x! m!)) x!)
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_mod_decreases
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_mod_decreases.)
  (forall ((x! Int) (m! Int)) (!
    (=>
     (and
      (<= 0 x!)
      (<= 0 m!)
     )
     (=>
      (< 0 m!)
      (<= (nClip (EucMod x! m!)) x!)
    ))
    :pattern ((nClip (EucMod x! m!)))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_decreases_215
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_decreases_215
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mod_is_zero
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1121:1: 1121:57 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const m! Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 x!)
 )
 (assert
  (<= 0 m!)
 )
 (assert
  (and
   (> x! 0)
   (> m! 0)
 ))
 (assert
  (= (nClip (EucMod x! m!)) 0)
 )
 (declare-const %%switch_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (or
    (and
     (=>
      (< x! m!)
      (and
       (=>
        %%location_label%%0
        (req%vstd.arithmetic.div_mod.lemma_small_mod. x! m!)
       )
       (=>
        (ens%vstd.arithmetic.div_mod.lemma_small_mod. x! m!)
        %%switch_label%%0
     )))
     (=>
      (not (< x! m!))
      %%switch_label%%0
    ))
    (and
     (not %%switch_label%%0)
     (=>
      %%location_label%%1
      (>= x! m!)
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_mod_is_zero
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_mod_is_zero.)
  (forall ((x! Int) (m! Int)) (!
    (=>
     (and
      (<= 0 x!)
      (<= 0 m!)
     )
     (=>
      (and
       (and
        (> x! 0)
        (> m! 0)
       )
       (= (nClip (EucMod x! m!)) 0)
      )
      (>= x! m!)
    ))
    :pattern ((nClip (EucMod x! m!)))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_is_zero_216
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_is_zero_216
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mod_sub_multiples_vanish
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1163:1: 1163:70 (#0)
(get-info :all-statistics)
(push)
 (declare-const b! Int)
 (declare-const m! Int)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 m!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
    )
    (=>
     (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
     (=>
      %%location_label%%1
      (= (EucMod (Add (Sub 0 m!) b!) m!) (EucMod b! m!))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_mod_sub_multiples_vanish
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_mod_sub_multiples_vanish.)
  (forall ((b! Int) (m! Int)) (!
    (=>
     (< 0 m!)
     (= (EucMod (Add (Sub 0 m!) b!) m!) (EucMod b! m!))
    )
    :pattern ((EucMod b! m!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_sub_multiples_vanish_217
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_sub_multiples_vanish_217
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mod_subtraction
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1199:1: 1199:69 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const s! Int)
 (declare-const d! Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 x!)
 )
 (assert
  (<= 0 s!)
 )
 (assert
  (<= 0 d!)
 )
 (assert
  (< 0 d!)
 )
 (assert
  (and
   (<= 0 s!)
   (<= s! (nClip (EucMod x! d!)))
 ))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. d!)
    )
    (=>
     (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. d!)
     (=>
      %%location_label%%1
      (= (Sub (nClip (EucMod x! d!)) (nClip (EucMod s! d!))) (EucMod (Sub x! s!) d!))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_mod_subtraction
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_mod_subtraction.)
  (forall ((x! Int) (s! Int) (d! Int)) (!
    (=>
     (and
      (<= 0 x!)
      (<= 0 s!)
      (<= 0 d!)
     )
     (=>
      (and
       (< 0 d!)
       (and
        (<= 0 s!)
        (<= s! (nClip (EucMod x! d!)))
      ))
      (= (Sub (nClip (EucMod x! d!)) (nClip (EucMod s! d!))) (EucMod (Sub x! s!) d!))
    ))
    :pattern ((EucMod (Sub x! s!) d!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_subtraction_218
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_subtraction_218
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_add_mod_noop_right
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1226:1: 1226:72 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const m! Int)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 m!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
    )
    (=>
     (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
     (=>
      %%location_label%%1
      (= (EucMod (Add x! (EucMod y! m!)) m!) (EucMod (Add x! y!) m!))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_add_mod_noop_right
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_add_mod_noop_right.)
  (forall ((x! Int) (y! Int) (m! Int)) (!
    (=>
     (< 0 m!)
     (= (EucMod (Add x! (EucMod y! m!)) m!) (EucMod (Add x! y!) m!))
    )
    :pattern ((EucMod (Add x! y!) m!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_add_mod_noop_right_219
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_add_mod_noop_right_219
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_sub_mod_noop_right
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1252:1: 1252:72 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const m! Int)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 m!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
    )
    (=>
     (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
     (=>
      %%location_label%%1
      (= (EucMod (Sub x! (EucMod y! m!)) m!) (EucMod (Sub x! y!) m!))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_sub_mod_noop_right
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_sub_mod_noop_right.)
  (forall ((x! Int) (y! Int) (m! Int)) (!
    (=>
     (< 0 m!)
     (= (EucMod (Sub x! (EucMod y! m!)) m!) (EucMod (Sub x! y!) m!))
    )
    :pattern ((EucMod (Sub x! y!) m!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_sub_mod_noop_right_220
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_sub_mod_noop_right_220
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_mod_neg_neg
(declare-fun req%vstd.arithmetic.div_mod.lemma_mod_neg_neg. (Int Int) Bool)
(declare-const %%global_location_label%%91 Bool)
(assert
 (forall ((x! Int) (d! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_mod_neg_neg. x! d!) (=>
     %%global_location_label%%91
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

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_fundamental_div_mod_converse_prove_auto
(declare-fun ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_prove_auto.
 (Int) Bool
)
(assert
 (forall ((no%param Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_prove_auto. no%param)
    (and
     (forall ((x$ Int) (d$ Int) (q$ Int) (r$ Int)) (!
       (=>
        (and
         (and
          (not (= d$ 0))
          (and
           (<= 0 r$)
           (< r$ d$)
         ))
         (= x$ (Add (Mul q$ d$) r$))
        )
        (= q$ (EucDiv x$ d$))
       )
       :pattern ((Add (Mul q$ d$) r$) (EucDiv x$ d$))
       :qid user_crate__vstd__arithmetic__div_mod__lemma_fundamental_div_mod_converse_prove_auto_221
       :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_fundamental_div_mod_converse_prove_auto_221
     ))
     (forall ((x$ Int) (d$ Int) (q$ Int) (r$ Int)) (!
       (=>
        (and
         (and
          (not (= d$ 0))
          (and
           (<= 0 r$)
           (< r$ d$)
         ))
         (= x$ (Add (Mul q$ d$) r$))
        )
        (= r$ (EucMod x$ d$))
       )
       :pattern ((Add (Mul q$ d$) r$) (EucMod x$ d$))
       :qid user_crate__vstd__arithmetic__div_mod__lemma_fundamental_div_mod_converse_prove_auto_222
       :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_fundamental_div_mod_converse_prove_auto_222
   ))))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_prove_auto.
     no%param
   ))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_prove_auto._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_fundamental_div_mod_converse_prove_auto._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_fundamental_div_mod_converse_prove_auto
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1432:7: 1432:57 (#0)
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
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.div_mod.group_fundamental_div_mod_converse.)
    (and
     (=>
      %%location_label%%0
      (forall ((x$ Int) (d$ Int) (q$ Int) (r$ Int)) (!
        (=>
         (and
          (and
           (not (= d$ 0))
           (and
            (<= 0 r$)
            (< r$ d$)
          ))
          (= x$ (Add (Mul q$ d$) r$))
         )
         (= q$ (EucDiv x$ d$))
        )
        :pattern ((Add (Mul q$ d$) r$) (EucDiv x$ d$))
        :qid user_crate__vstd__arithmetic__div_mod__lemma_fundamental_div_mod_converse_prove_auto_223
        :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_fundamental_div_mod_converse_prove_auto_223
     )))
     (=>
      %%location_label%%1
      (forall ((x$ Int) (d$ Int) (q$ Int) (r$ Int)) (!
        (=>
         (and
          (and
           (not (= d$ 0))
           (and
            (<= 0 r$)
            (< r$ d$)
          ))
          (= x$ (Add (Mul q$ d$) r$))
         )
         (= r$ (EucMod x$ d$))
        )
        :pattern ((Add (Mul q$ d$) r$) (EucMod x$ d$))
        :qid user_crate__vstd__arithmetic__div_mod__lemma_fundamental_div_mod_converse_prove_auto_224
        :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_fundamental_div_mod_converse_prove_auto_224
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mod_pos_bound
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1446:1: 1446:59 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const m! Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 x!)
 )
 (assert
  (< 0 m!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
    )
    (=>
     (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
     (=>
      %%location_label%%1
      (let
       ((tmp%%$ (EucMod x! m!)))
       (and
        (<= 0 tmp%%$)
        (< tmp%%$ m!)
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_mod_pos_bound
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_mod_pos_bound.)
  (forall ((x! Int) (m! Int)) (!
    (=>
     (and
      (<= 0 x!)
      (< 0 m!)
     )
     (let
      ((tmp%%$ (EucMod x! m!)))
      (and
       (<= 0 tmp%%$)
       (< tmp%%$ m!)
    )))
    :pattern ((EucMod x! m!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_pos_bound_225
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_pos_bound_225
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mod_bound
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1458:1: 1458:55 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const m! Int)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 m!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_mod_range. x! m!)
    )
    (=>
     (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_mod_range. x! m!)
     (=>
      %%location_label%%1
      (let
       ((tmp%%$ (EucMod x! m!)))
       (and
        (<= 0 tmp%%$)
        (< tmp%%$ m!)
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_mod_bound
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_mod_bound.)
  (forall ((x! Int) (m! Int)) (!
    (=>
     (< 0 m!)
     (let
      ((tmp%%$ (EucMod x! m!)))
      (and
       (<= 0 tmp%%$)
       (< tmp%%$ m!)
    )))
    :pattern ((EucMod x! m!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_bound_226
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_bound_226
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_mul_mod_noop_left
(declare-fun req%vstd.arithmetic.div_mod.lemma_mul_mod_noop_left. (Int Int Int) Bool)
(declare-const %%global_location_label%%92 Bool)
(assert
 (forall ((x! Int) (y! Int) (m! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_mul_mod_noop_left. x! y! m!) (=>
     %%global_location_label%%92
     (< 0 m!)
   ))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_mul_mod_noop_left. x! y! m!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_mul_mod_noop_left._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_mul_mod_noop_left._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_mul_mod_noop_left. (Int Int Int) Bool)
(assert
 (forall ((x! Int) (y! Int) (m! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_mul_mod_noop_left. x! y! m!) (= (EucMod (Mul (EucMod
        x! m!
       ) y!
      ) m!
     ) (EucMod (Mul x! y!) m!)
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_mul_mod_noop_left. x! y! m!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_mul_mod_noop_left._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_mul_mod_noop_left._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mul_mod_noop_left
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1469:1: 1469:71 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const m! Int)
 (declare-const tmp%1 %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 m!)
 )
 (declare-fun %%lambda%%16 (Int Int Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Int) (%%hole%%3 Int) (u$ Poly))
   (!
    (= (%%apply%%0 (%%lambda%%16 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) u$) (B (= (EucMod
        (Mul %%hole%%0 (%I u$)) %%hole%%1
       ) (EucMod (Mul %%hole%%2 (%I u$)) %%hole%%3)
    )))
    :pattern ((%%apply%%0 (%%lambda%%16 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) u$))
 )))
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
     (req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
    )
    (=>
     (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
     (=>
      (= tmp%1 (mk_fun (%%lambda%%16 (EucMod x! m!) m! x! m!)))
      (and
       (=>
        %%location_label%%1
        (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. y! tmp%1)
       )
       (=>
        (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. y! tmp%1)
        (=>
         %%location_label%%2
         (= (EucMod (Mul (EucMod x! m!) y!) m!) (EucMod (Mul x! y!) m!))
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_mul_mod_noop_left
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_mul_mod_noop_left.)
  (forall ((x! Int) (y! Int) (m! Int)) (!
    (=>
     (< 0 m!)
     (= (EucMod (Mul (EucMod x! m!) y!) m!) (EucMod (Mul x! y!) m!))
    )
    :pattern ((EucMod (Mul x! y!) m!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_mod_noop_left_227
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_mod_noop_left_227
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_mul_mod_noop_right
(declare-fun req%vstd.arithmetic.div_mod.lemma_mul_mod_noop_right. (Int Int Int) Bool)
(declare-const %%global_location_label%%93 Bool)
(assert
 (forall ((x! Int) (y! Int) (m! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_mul_mod_noop_right. x! y! m!) (=>
     %%global_location_label%%93
     (< 0 m!)
   ))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_mul_mod_noop_right. x! y! m!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_mul_mod_noop_right._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_mul_mod_noop_right._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_mul_mod_noop_right. (Int Int Int) Bool)
(assert
 (forall ((x! Int) (y! Int) (m! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_mul_mod_noop_right. x! y! m!) (= (EucMod (Mul x!
       (EucMod y! m!)
      ) m!
     ) (EucMod (Mul x! y!) m!)
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_mul_mod_noop_right. x! y! m!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_mul_mod_noop_right._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_mul_mod_noop_right._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mul_mod_noop_right
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1481:1: 1481:72 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const m! Int)
 (declare-const tmp%1 %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 m!)
 )
 (declare-fun %%lambda%%17 (Int Int Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Int) (%%hole%%3 Int) (u$ Poly))
   (!
    (= (%%apply%%0 (%%lambda%%17 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) u$) (B (= (EucMod
        (Mul (%I u$) %%hole%%0) %%hole%%1
       ) (EucMod (Mul (%I u$) %%hole%%2) %%hole%%3)
    )))
    :pattern ((%%apply%%0 (%%lambda%%17 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) u$))
 )))
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
     (req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
    )
    (=>
     (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
     (=>
      (= tmp%1 (mk_fun (%%lambda%%17 (EucMod y! m!) m! y! m!)))
      (and
       (=>
        %%location_label%%1
        (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. x! tmp%1)
       )
       (=>
        (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. x! tmp%1)
        (=>
         %%location_label%%2
         (= (EucMod (Mul x! (EucMod y! m!)) m!) (EucMod (Mul x! y!) m!))
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_mul_mod_noop_right
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_mul_mod_noop_right.)
  (forall ((x! Int) (y! Int) (m! Int)) (!
    (=>
     (< 0 m!)
     (= (EucMod (Mul x! (EucMod y! m!)) m!) (EucMod (Mul x! y!) m!))
    )
    :pattern ((EucMod (Mul x! y!) m!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_mod_noop_right_228
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_mod_noop_right_228
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_mul_mod_noop_general
(declare-fun req%vstd.arithmetic.div_mod.lemma_mul_mod_noop_general. (Int Int Int)
 Bool
)
(declare-const %%global_location_label%%94 Bool)
(assert
 (forall ((x! Int) (y! Int) (m! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_mul_mod_noop_general. x! y! m!) (=>
     %%global_location_label%%94
     (< 0 m!)
   ))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_mul_mod_noop_general. x! y! m!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_mul_mod_noop_general._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_mul_mod_noop_general._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_mul_mod_noop_general. (Int Int Int)
 Bool
)
(assert
 (forall ((x! Int) (y! Int) (m! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_mul_mod_noop_general. x! y! m!) (and
     (= (EucMod (Mul (EucMod x! m!) y!) m!) (EucMod (Mul x! y!) m!))
     (= (EucMod (Mul x! (EucMod y! m!)) m!) (EucMod (Mul x! y!) m!))
     (= (EucMod (Mul (EucMod x! m!) (EucMod y! m!)) m!) (EucMod (Mul x! y!) m!))
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_mul_mod_noop_general. x! y! m!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_mul_mod_noop_general._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_mul_mod_noop_general._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mul_mod_noop_general
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1494:1: 1494:74 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const m! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 m!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%5 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.div_mod.lemma_mul_mod_noop_left. x! y! m!)
    )
    (=>
     (ens%vstd.arithmetic.div_mod.lemma_mul_mod_noop_left. x! y! m!)
     (and
      (=>
       %%location_label%%1
       (req%vstd.arithmetic.div_mod.lemma_mul_mod_noop_right. x! y! m!)
      )
      (=>
       (ens%vstd.arithmetic.div_mod.lemma_mul_mod_noop_right. x! y! m!)
       (=>
        (= tmp%1 (EucMod x! m!))
        (and
         (=>
          %%location_label%%2
          (req%vstd.arithmetic.div_mod.lemma_mul_mod_noop_right. tmp%1 y! m!)
         )
         (=>
          (ens%vstd.arithmetic.div_mod.lemma_mul_mod_noop_right. tmp%1 y! m!)
          (and
           (=>
            %%location_label%%3
            (= (EucMod (Mul (EucMod x! m!) y!) m!) (EucMod (Mul x! y!) m!))
           )
           (and
            (=>
             %%location_label%%4
             (= (EucMod (Mul x! (EucMod y! m!)) m!) (EucMod (Mul x! y!) m!))
            )
            (=>
             %%location_label%%5
             (= (EucMod (Mul (EucMod x! m!) (EucMod y! m!)) m!) (EucMod (Mul x! y!) m!))
 ))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_mul_mod_noop_general
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_mul_mod_noop_general.)
  (forall ((x! Int) (y! Int) (m! Int)) (!
    (=>
     (< 0 m!)
     (and
      (and
       (= (EucMod (Mul (EucMod x! m!) y!) m!) (EucMod (Mul x! y!) m!))
       (= (EucMod (Mul x! (EucMod y! m!)) m!) (EucMod (Mul x! y!) m!))
      )
      (= (EucMod (Mul (EucMod x! m!) (EucMod y! m!)) m!) (EucMod (Mul x! y!) m!))
    ))
    :pattern ((EucMod (Mul x! y!) m!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_mod_noop_general_229
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_mod_noop_general_229
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mul_mod_noop
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1510:1: 1510:66 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const m! Int)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 m!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.div_mod.lemma_mul_mod_noop_general. x! y! m!)
    )
    (=>
     (ens%vstd.arithmetic.div_mod.lemma_mul_mod_noop_general. x! y! m!)
     (=>
      %%location_label%%1
      (= (EucMod (Mul (EucMod x! m!) (EucMod y! m!)) m!) (EucMod (Mul x! y!) m!))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_mul_mod_noop
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_mul_mod_noop.)
  (forall ((x! Int) (y! Int) (m! Int)) (!
    (=>
     (< 0 m!)
     (= (EucMod (Mul (EucMod x! m!) (EucMod y! m!)) m!) (EucMod (Mul x! y!) m!))
    )
    :pattern ((EucMod (Mul x! y!) m!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_mod_noop_230
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_mod_noop_230
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_mod_equivalence
(declare-fun req%vstd.arithmetic.div_mod.lemma_mod_equivalence. (Int Int Int) Bool)
(declare-const %%global_location_label%%95 Bool)
(assert
 (forall ((x! Int) (y! Int) (m! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_mod_equivalence. x! y! m!) (=>
     %%global_location_label%%95
     (< 0 m!)
   ))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_mod_equivalence. x! y! m!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_mod_equivalence._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_mod_equivalence._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_mod_equivalence. (Int Int Int) Bool)
(assert
 (forall ((x! Int) (y! Int) (m! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_mod_equivalence. x! y! m!) (= (= (EucMod x! m!)
      (EucMod y! m!)
     ) (= (EucMod (Sub x! y!) m!) 0)
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_mod_equivalence. x! y! m!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_mod_equivalence._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_mod_equivalence._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mod_equivalence
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1526:1: 1526:69 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const m! Int)
 (assert
  fuel_defaults
 )
 (assert
  (< 0 m!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
    )
    (=>
     (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. m!)
     (=>
      %%location_label%%1
      (= (= (EucMod x! m!) (EucMod y! m!)) (= (EucMod (Sub x! y!) m!) 0))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_mod_equivalence
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_mod_equivalence.)
  (forall ((x! Int) (y! Int) (m! Int)) (!
    (=>
     (< 0 m!)
     (= (= (EucMod x! m!) (EucMod y! m!)) (= (EucMod (Sub x! y!) m!) 0))
    )
    :pattern ((EucMod (Sub x! y!) m!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_equivalence_231
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_equivalence_231
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mod_mul_equivalent
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1547:1: 1547:80 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const z! Int)
 (declare-const m! Int)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Int)
 (assert
  fuel_defaults
 )
 (assert
  (> m! 0)
 )
 (assert
  (vstd.arithmetic.div_mod.is_mod_equivalent.? (I x!) (I y!) (I m!))
 )
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
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.div_mod.lemma_mul_mod_noop_left. x! z! m!)
    )
    (=>
     (ens%vstd.arithmetic.div_mod.lemma_mul_mod_noop_left. x! z! m!)
     (and
      (=>
       %%location_label%%1
       (req%vstd.arithmetic.div_mod.lemma_mul_mod_noop_left. y! z! m!)
      )
      (=>
       (ens%vstd.arithmetic.div_mod.lemma_mul_mod_noop_left. y! z! m!)
       (and
        (=>
         %%location_label%%2
         (req%vstd.arithmetic.div_mod.lemma_mod_equivalence. x! y! m!)
        )
        (=>
         (ens%vstd.arithmetic.div_mod.lemma_mod_equivalence. x! y! m!)
         (=>
          (= tmp%1 (Mul x! z!))
          (=>
           (= tmp%2 (Mul y! z!))
           (and
            (=>
             %%location_label%%3
             (req%vstd.arithmetic.div_mod.lemma_mod_equivalence. tmp%1 tmp%2 m!)
            )
            (=>
             (ens%vstd.arithmetic.div_mod.lemma_mod_equivalence. tmp%1 tmp%2 m!)
             (=>
              %%location_label%%4
              (vstd.arithmetic.div_mod.is_mod_equivalent.? (I (Mul x! z!)) (I (Mul y! z!)) (I m!))
 )))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_mod_mul_equivalent
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_mod_mul_equivalent.)
  (forall ((x! Int) (y! Int) (z! Int) (m! Poly)) (!
    (=>
     (has_type m! INT)
     (=>
      (and
       (> (%I m!) 0)
       (vstd.arithmetic.div_mod.is_mod_equivalent.? (I x!) (I y!) m!)
      )
      (vstd.arithmetic.div_mod.is_mod_equivalent.? (I (Mul x! z!)) (I (Mul y! z!)) m!)
    ))
    :pattern ((vstd.arithmetic.div_mod.is_mod_equivalent.? (I (Mul x! z!)) (I (Mul y! z!))
      m!
    ))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_mul_equivalent_232
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_mul_equivalent_232
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_mul_is_distributive_sub_auto
(declare-fun ens%vstd.arithmetic.div_mod.lemma_mul_is_distributive_sub_auto. (Int)
 Bool
)
(assert
 (forall ((no%param Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_mul_is_distributive_sub_auto. no%param) (forall
     ((x$ Int) (y$ Int) (z$ Int)) (!
      (= (Mul x$ (Sub y$ z$)) (Sub (Mul x$ y$) (Mul x$ z$)))
      :pattern ((Mul x$ (Sub y$ z$)))
      :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_is_distributive_sub_auto_233
      :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_is_distributive_sub_auto_233
   )))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_mul_is_distributive_sub_auto. no%param))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_mul_is_distributive_sub_auto._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_mul_is_distributive_sub_auto._definition
)))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mul_is_distributive_sub_auto
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1561:7: 1561:46 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (assert
  fuel_defaults
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_sub.)
    (=>
     %%location_label%%0
     (forall ((x$ Int) (y$ Int) (z$ Int)) (!
       (= (Mul x$ (Sub y$ z$)) (Sub (Mul x$ y$) (Mul x$ z$)))
       :pattern ((Mul x$ (Sub y$ z$)))
       :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_is_distributive_sub_auto_234
       :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_is_distributive_sub_auto_234
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::mul::lemma_mul_strictly_increases
(declare-fun req%vstd.arithmetic.mul.lemma_mul_strictly_increases. (Int Int) Bool)
(declare-const %%global_location_label%%96 Bool)
(declare-const %%global_location_label%%97 Bool)
(assert
 (forall ((x! Int) (y! Int)) (!
   (= (req%vstd.arithmetic.mul.lemma_mul_strictly_increases. x! y!) (and
     (=>
      %%global_location_label%%96
      (< 1 x!)
     )
     (=>
      %%global_location_label%%97
      (< 0 y!)
   )))
   :pattern ((req%vstd.arithmetic.mul.lemma_mul_strictly_increases. x! y!))
   :qid internal_req__vstd.arithmetic.mul.lemma_mul_strictly_increases._definition
   :skolemid skolem_internal_req__vstd.arithmetic.mul.lemma_mul_strictly_increases._definition
)))
(declare-fun ens%vstd.arithmetic.mul.lemma_mul_strictly_increases. (Int Int) Bool)
(assert
 (forall ((x! Int) (y! Int)) (!
   (= (ens%vstd.arithmetic.mul.lemma_mul_strictly_increases. x! y!) (< y! (Mul x! y!)))
   :pattern ((ens%vstd.arithmetic.mul.lemma_mul_strictly_increases. x! y!))
   :qid internal_ens__vstd.arithmetic.mul.lemma_mul_strictly_increases._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.mul.lemma_mul_strictly_increases._definition
)))

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
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_strictly_increases_235
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_strictly_increases_235
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mod_ordering
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1572:1: 1572:66 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const k! Int)
 (declare-const d! Int)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Int)
 (declare-const tmp%3 Int)
 (declare-const tmp%4 Int)
 (assert
  fuel_defaults
 )
 (assert
  (< 1 d!)
 )
 (assert
  (< 0 k!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 ;; assertion failed
 (declare-const %%location_label%%6 Bool)
 ;; assertion failed
 (declare-const %%location_label%%7 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%8 Bool)
 ;; assertion failed
 (declare-const %%location_label%%9 Bool)
 ;; assertion failed
 (declare-const %%location_label%%10 Bool)
 ;; assertion failed
 (declare-const %%location_label%%11 Bool)
 ;; assertion failed
 (declare-const %%location_label%%12 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%13 Bool)
 ;; assertion failed
 (declare-const %%location_label%%14 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%15 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%16 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.mul.lemma_mul_strictly_increases. d! k!)
    )
    (=>
     (ens%vstd.arithmetic.mul.lemma_mul_strictly_increases. d! k!)
     (and
      (and
       (and
        (=>
         %%location_label%%1
         (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. x! d!)
        )
        (=>
         (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. x! d!)
         (=>
          %%location_label%%2
          (= (Add (EucMod x! d!) (Mul d! (EucDiv x! d!))) x!)
       )))
       (=>
        (= (Add (EucMod x! d!) (Mul d! (EucDiv x! d!))) x!)
        (and
         (=>
          (= tmp%1 (Mul d! k!))
          (and
           (=>
            %%location_label%%3
            (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. x! tmp%1)
           )
           (=>
            (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. x! tmp%1)
            (=>
             %%location_label%%4
             (= x! (Add (EucMod x! (Mul d! k!)) (Mul (Mul d! k!) (EucDiv x! (Mul d! k!)))))
         ))))
         (=>
          (= x! (Add (EucMod x! (Mul d! k!)) (Mul (Mul d! k!) (EucDiv x! (Mul d! k!)))))
          (and
           (=>
            (ens%vstd.arithmetic.div_mod.lemma_mul_is_associative_auto. 0)
            (=>
             %%location_label%%5
             (= (Add (EucMod x! (Mul d! k!)) (Mul (Mul d! k!) (EucDiv x! (Mul d! k!)))) (Add (EucMod
                x! (Mul d! k!)
               ) (Mul d! (Mul k! (EucDiv x! (Mul d! k!))))
           ))))
           (=>
            (= (Add (EucMod x! (Mul d! k!)) (Mul (Mul d! k!) (EucDiv x! (Mul d! k!)))) (Add (EucMod
               x! (Mul d! k!)
              ) (Mul d! (Mul k! (EucDiv x! (Mul d! k!))))
            ))
            (=>
             %%location_label%%6
             (= (Add (EucMod x! d!) (Mul d! (EucDiv x! d!))) (Add (EucMod x! (Mul d! k!)) (Mul d!
                (Mul k! (EucDiv x! (Mul d! k!)))
      ))))))))))
      (=>
       (= (Add (EucMod x! d!) (Mul d! (EucDiv x! d!))) (Add (EucMod x! (Mul d! k!)) (Mul d!
          (Mul k! (EucDiv x! (Mul d! k!)))
       )))
       (and
        (and
         (=>
          (ens%vstd.arithmetic.div_mod.lemma_mod_properties_auto. 0)
          (=>
           %%location_label%%7
           (= (EucMod x! d!) (EucMod (EucMod x! d!) d!))
         ))
         (=>
          (= (EucMod x! d!) (EucMod (EucMod x! d!) d!))
          (and
           (=>
            (= tmp%2 (Sub (EucDiv x! d!) (Mul k! (EucDiv x! (Mul d! k!)))))
            (=>
             (= tmp%3 (EucMod x! d!))
             (and
              (=>
               %%location_label%%8
               (req%vstd.arithmetic.div_mod.lemma_mod_multiples_vanish. tmp%2 tmp%3 d!)
              )
              (=>
               (ens%vstd.arithmetic.div_mod.lemma_mod_multiples_vanish. tmp%2 tmp%3 d!)
               (=>
                %%location_label%%9
                (= (EucMod (EucMod x! d!) d!) (EucMod (Add (EucMod x! d!) (Mul d! (Sub (EucDiv x! d!)
                     (Mul k! (EucDiv x! (Mul d! k!)))
                   ))
                  ) d!
           )))))))
           (=>
            (= (EucMod (EucMod x! d!) d!) (EucMod (Add (EucMod x! d!) (Mul d! (Sub (EucDiv x! d!)
                 (Mul k! (EucDiv x! (Mul d! k!)))
               ))
              ) d!
            ))
            (and
             (=>
              (ens%vstd.arithmetic.div_mod.lemma_mul_is_distributive_sub_auto. 0)
              (=>
               %%location_label%%10
               (= (EucMod (Add (EucMod x! d!) (Mul d! (Sub (EucDiv x! d!) (Mul k! (EucDiv x! (Mul d! k!))))))
                 d!
                ) (EucMod (Sub (Add (EucMod x! d!) (Mul d! (EucDiv x! d!))) (Mul d! (Mul k! (EucDiv x!
                     (Mul d! k!)
                  )))
                 ) d!
             ))))
             (=>
              (= (EucMod (Add (EucMod x! d!) (Mul d! (Sub (EucDiv x! d!) (Mul k! (EucDiv x! (Mul d! k!))))))
                d!
               ) (EucMod (Sub (Add (EucMod x! d!) (Mul d! (EucDiv x! d!))) (Mul d! (Mul k! (EucDiv x!
                    (Mul d! k!)
                 )))
                ) d!
              ))
              (and
               (=>
                %%location_label%%11
                (= (EucMod (Sub (Add (EucMod x! d!) (Mul d! (EucDiv x! d!))) (Mul d! (Mul k! (EucDiv x!
                      (Mul d! k!)
                   )))
                  ) d!
                 ) (EucMod (EucMod x! (Mul d! k!)) d!)
               ))
               (=>
                (= (EucMod (Sub (Add (EucMod x! d!) (Mul d! (EucDiv x! d!))) (Mul d! (Mul k! (EucDiv x!
                      (Mul d! k!)
                   )))
                  ) d!
                 ) (EucMod (EucMod x! (Mul d! k!)) d!)
                )
                (=>
                 %%location_label%%12
                 (= (EucMod x! d!) (EucMod (EucMod x! (Mul d! k!)) d!))
        )))))))))
        (=>
         (= (EucMod x! d!) (EucMod (EucMod x! (Mul d! k!)) d!))
         (and
          (=>
           (fuel_bool fuel%vstd.arithmetic.div_mod.group_mod_properties.)
           (=>
            (= tmp%4 (nClip (EucMod x! (Mul d! k!))))
            (and
             (=>
              %%location_label%%13
              (req%vstd.arithmetic.div_mod.lemma_mod_decreases. tmp%4 (nClip d!))
             )
             (=>
              (ens%vstd.arithmetic.div_mod.lemma_mod_decreases. tmp%4 (nClip d!))
              (=>
               %%location_label%%14
               (<= (EucMod (EucMod x! (Mul d! k!)) d!) (EucMod x! (Mul d! k!)))
          )))))
          (=>
           (<= (EucMod (EucMod x! (Mul d! k!)) d!) (EucMod x! (Mul d! k!)))
           (and
            (=>
             %%location_label%%15
             (< 0 (Mul d! k!))
            )
            (=>
             %%location_label%%16
             (<= (EucMod x! d!) (EucMod x! (Mul d! k!)))
 ))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_mod_ordering
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_mod_ordering.)
  (forall ((x! Int) (k! Int) (d! Int)) (!
    (=>
     (and
      (< 1 d!)
      (< 0 k!)
     )
     (and
      (< 0 (Mul d! k!))
      (<= (EucMod x! d!) (EucMod x! (Mul d! k!)))
    ))
    :pattern ((EucMod x! (Mul d! k!)))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_ordering_236
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_ordering_236
))))

;; Function-Def crate::vstd::arithmetic::div_mod::lemma_mod_breakdown
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1680:1: 1680:67 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const z! Int)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Int)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Int)
 (declare-const tmp%6 Int)
 (declare-const tmp%7 Int)
 (declare-const tmp%8 Bool)
 (declare-const tmp%9 Int)
 (declare-const tmp%10 Int)
 (declare-const tmp%11 Bool)
 (declare-const tmp%12 Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 x!)
 )
 (assert
  (< 0 y!)
 )
 (assert
  (< 0 z!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%5 Bool)
 ;; assertion failed
 (declare-const %%location_label%%6 Bool)
 ;; assertion failed
 (declare-const %%location_label%%7 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%8 Bool)
 ;; assertion failed
 (declare-const %%location_label%%9 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%10 Bool)
 ;; assertion failed
 (declare-const %%location_label%%11 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%12 Bool)
 ;; assertion failed
 (declare-const %%location_label%%13 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%14 Bool)
 ;; assertion failed
 (declare-const %%location_label%%15 Bool)
 ;; assertion failed
 (declare-const %%location_label%%16 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%17 Bool)
 ;; assertion failed
 (declare-const %%location_label%%18 Bool)
 ;; assertion failed
 (declare-const %%location_label%%19 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%20 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%21 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_strictly_positive.)
    (and
     (=>
      %%location_label%%0
      (req%vstd.arithmetic.div_mod.lemma_div_pos_is_pos. x! y!)
     )
     (=>
      (ens%vstd.arithmetic.div_mod.lemma_div_pos_is_pos. x! y!)
      (=>
       (= tmp%1 (<= 0 (EucDiv x! y!)))
       (and
        (=>
         %%location_label%%1
         tmp%1
        )
        (=>
         tmp%1
         (and
          (and
           (=>
            %%location_label%%2
            (req%vstd.arithmetic.div_mod.lemma_part_bound1. x! y! z!)
           )
           (=>
            (ens%vstd.arithmetic.div_mod.lemma_part_bound1. x! y! z!)
            (and
             (=>
              %%location_label%%3
              (req%vstd.arithmetic.div_mod.lemma_part_bound2. x! y! z!)
             )
             (=>
              (ens%vstd.arithmetic.div_mod.lemma_part_bound2. x! y! z!)
              (=>
               (ens%vstd.arithmetic.div_mod.lemma_mul_basics_auto. 0)
               (=>
                (ens%vstd.arithmetic.div_mod.lemma_mul_is_distributive_auto. 0)
                (=>
                 %%location_label%%4
                 (< (Add (EucMod (Mul y! (EucDiv x! y!)) (Mul y! z!)) (EucMod (EucMod x! y!) (Mul y! z!)))
                  (Mul y! z!)
          ))))))))
          (=>
           (< (Add (EucMod (Mul y! (EucDiv x! y!)) (Mul y! z!)) (EucMod (EucMod x! y!) (Mul y! z!)))
            (Mul y! z!)
           )
           (and
            (and
             (and
              (=>
               %%location_label%%5
               (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. x! y!)
              )
              (=>
               (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. x! y!)
               (=>
                %%location_label%%6
                (= (EucMod x! (Mul y! z!)) (EucMod (Add (Mul y! (EucDiv x! y!)) (EucMod x! y!)) (Mul
                   y! z!
             ))))))
             (=>
              (= (EucMod x! (Mul y! z!)) (EucMod (Add (Mul y! (EucDiv x! y!)) (EucMod x! y!)) (Mul
                 y! z!
              )))
              (and
               (=>
                (ens%vstd.arithmetic.div_mod.lemma_mod_properties_auto. 0)
                (=>
                 (= tmp%2 (<= 0 (EucMod x! y!)))
                 (and
                  (=>
                   %%location_label%%7
                   tmp%2
                  )
                  (=>
                   tmp%2
                   (=>
                    (= tmp%3 (EucDiv x! y!))
                    (and
                     (=>
                      %%location_label%%8
                      (req%vstd.arithmetic.mul.lemma_mul_nonnegative. y! tmp%3)
                     )
                     (=>
                      (ens%vstd.arithmetic.mul.lemma_mul_nonnegative. y! tmp%3)
                      (=>
                       (= tmp%4 (< (Add (EucMod (Mul y! (EucDiv x! y!)) (Mul y! z!)) (EucMod (EucMod x! y!)
                           (Mul y! z!)
                          )
                         ) (Mul y! z!)
                       ))
                       (and
                        (=>
                         %%location_label%%9
                         tmp%4
                        )
                        (=>
                         tmp%4
                         (=>
                          (= tmp%5 (Mul y! (EucDiv x! y!)))
                          (=>
                           (= tmp%6 (EucMod x! y!))
                           (=>
                            (= tmp%7 (Mul y! z!))
                            (and
                             (=>
                              %%location_label%%10
                              (req%vstd.arithmetic.div_mod.lemma_mod_adds. tmp%5 tmp%6 tmp%7)
                             )
                             (=>
                              (ens%vstd.arithmetic.div_mod.lemma_mod_adds. tmp%5 tmp%6 tmp%7)
                              (=>
                               %%location_label%%11
                               (= (EucMod (Add (Mul y! (EucDiv x! y!)) (EucMod x! y!)) (Mul y! z!)) (Add (EucMod (Mul
                                   y! (EucDiv x! y!)
                                  ) (Mul y! z!)
                                 ) (EucMod (EucMod x! y!) (Mul y! z!))
               ))))))))))))))))))
               (=>
                (= (EucMod (Add (Mul y! (EucDiv x! y!)) (EucMod x! y!)) (Mul y! z!)) (Add (EucMod (Mul
                    y! (EucDiv x! y!)
                   ) (Mul y! z!)
                  ) (EucMod (EucMod x! y!) (Mul y! z!))
                ))
                (and
                 (=>
                  (ens%vstd.arithmetic.div_mod.lemma_mod_properties_auto. 0)
                  (and
                   (=>
                    %%location_label%%12
                    (req%vstd.arithmetic.mul.lemma_mul_increases. z! y!)
                   )
                   (=>
                    (ens%vstd.arithmetic.mul.lemma_mul_increases. z! y!)
                    (=>
                     (ens%vstd.arithmetic.div_mod.lemma_mul_is_commutative_auto. 0)
                     (=>
                      (= tmp%8 (and
                        (< (EucMod x! y!) y!)
                        (<= y! (Mul y! z!))
                      ))
                      (and
                       (=>
                        %%location_label%%13
                        tmp%8
                       )
                       (=>
                        tmp%8
                        (=>
                         (= tmp%9 (nClip (EucMod x! y!)))
                         (=>
                          (= tmp%10 (nClip (Mul y! z!)))
                          (and
                           (=>
                            %%location_label%%14
                            (req%vstd.arithmetic.div_mod.lemma_small_mod. tmp%9 tmp%10)
                           )
                           (=>
                            (ens%vstd.arithmetic.div_mod.lemma_small_mod. tmp%9 tmp%10)
                            (=>
                             (= tmp%11 (= (EucMod (EucMod x! y!) (Mul y! z!)) (EucMod x! y!)))
                             (and
                              (=>
                               %%location_label%%15
                               tmp%11
                              )
                              (=>
                               tmp%11
                               (=>
                                %%location_label%%16
                                (= (Add (EucMod (Mul y! (EucDiv x! y!)) (Mul y! z!)) (EucMod (EucMod x! y!) (Mul y! z!)))
                                 (Add (EucMod (Mul y! (EucDiv x! y!)) (Mul y! z!)) (EucMod x! y!))
                 ))))))))))))))))
                 (=>
                  (= (Add (EucMod (Mul y! (EucDiv x! y!)) (Mul y! z!)) (EucMod (EucMod x! y!) (Mul y! z!)))
                   (Add (EucMod (Mul y! (EucDiv x! y!)) (Mul y! z!)) (EucMod x! y!))
                  )
                  (and
                   (=>
                    (= tmp%12 (EucDiv x! y!))
                    (and
                     (=>
                      %%location_label%%17
                      (req%vstd.arithmetic.div_mod.lemma_truncate_middle. tmp%12 y! z!)
                     )
                     (=>
                      (ens%vstd.arithmetic.div_mod.lemma_truncate_middle. tmp%12 y! z!)
                      (=>
                       %%location_label%%18
                       (= (Add (EucMod (Mul y! (EucDiv x! y!)) (Mul y! z!)) (EucMod x! y!)) (Add (Mul y! (EucMod
                           (EucDiv x! y!) z!
                          )
                         ) (EucMod x! y!)
                   ))))))
                   (=>
                    (= (Add (EucMod (Mul y! (EucDiv x! y!)) (Mul y! z!)) (EucMod x! y!)) (Add (Mul y! (EucMod
                        (EucDiv x! y!) z!
                       )
                      ) (EucMod x! y!)
                    ))
                    (=>
                     %%location_label%%19
                     (= (EucMod x! (Mul y! z!)) (Add (Mul y! (EucMod (EucDiv x! y!) z!)) (EucMod x! y!)))
            )))))))))
            (=>
             (= (EucMod x! (Mul y! z!)) (Add (Mul y! (EucMod (EucDiv x! y!) z!)) (EucMod x! y!)))
             (and
              (=>
               %%location_label%%20
               (> (Mul y! z!) 0)
              )
              (=>
               %%location_label%%21
               (= (EucMod x! (Mul y! z!)) (Add (Mul y! (EucMod (EucDiv x! y!) z!)) (EucMod x! y!)))
 ))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_mod_breakdown
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_mod_breakdown.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (=>
     (and
      (and
       (<= 0 x!)
       (< 0 y!)
      )
      (< 0 z!)
     )
     (and
      (> (Mul y! z!) 0)
      (= (EucMod x! (Mul y! z!)) (Add (Mul y! (EucMod (EucDiv x! y!) z!)) (EucMod x! y!)))
    ))
    :pattern ((EucMod x! (Mul y! z!)))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_breakdown_247
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_breakdown_247
))))
