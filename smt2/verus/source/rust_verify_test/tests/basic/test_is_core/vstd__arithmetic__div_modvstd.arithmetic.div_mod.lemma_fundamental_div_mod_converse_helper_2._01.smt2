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
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1359:9: 1359:15 (#0)

;; query spun off because: nonlinear

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
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/div_mod.rs:1359:9: 1359:15 (#0)
(set-option :smt.arith.solver 6)
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
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (=>
     (= u! 0)
     (= (Mul u! d!) 0)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
