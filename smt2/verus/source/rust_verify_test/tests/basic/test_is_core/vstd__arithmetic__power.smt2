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

;; MODULE 'module vstd::arithmetic::power'

;; Fuel
(declare-const fuel%vstd.arithmetic.internals.general_internals.is_le. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_commutes. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_plus.
 FuelId
)
(declare-const fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_minus.
 FuelId
)
(declare-const fuel%vstd.arithmetic.internals.mul_internals.mul_auto. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_div_by_multiple. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mod_self_0. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mod_twice. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mod_division_less_than_divisor.
 FuelId
)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mod_multiples_basic. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mul_mod_noop_general. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_basics_1. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_basics_2. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_basics_3. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_basics_4. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_is_associative. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_is_commutative. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_inequality. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_left_inequality. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_add. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_add_other_way. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_sub. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_sub_other_way. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_strictly_increases. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_increases. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_nonnegative. FuelId)
(declare-const fuel%vstd.arithmetic.power.pow. FuelId)
(declare-const fuel%vstd.arithmetic.power.lemma_pow0. FuelId)
(declare-const fuel%vstd.arithmetic.power.lemma_pow1. FuelId)
(declare-const fuel%vstd.arithmetic.power.lemma0_pow. FuelId)
(declare-const fuel%vstd.arithmetic.power.lemma1_pow. FuelId)
(declare-const fuel%vstd.arithmetic.power.lemma_square_is_pow2. FuelId)
(declare-const fuel%vstd.arithmetic.power.lemma_pow_positive. FuelId)
(declare-const fuel%vstd.arithmetic.power.lemma_pow_adds. FuelId)
(declare-const fuel%vstd.arithmetic.power.lemma_pow_sub_add_cancel. FuelId)
(declare-const fuel%vstd.arithmetic.power.lemma_pow_subtracts. FuelId)
(declare-const fuel%vstd.arithmetic.power.lemma_pow_multiplies. FuelId)
(declare-const fuel%vstd.arithmetic.power.lemma_pow_distributes. FuelId)
(declare-const fuel%vstd.arithmetic.power.lemma_pow_strictly_increases. FuelId)
(declare-const fuel%vstd.arithmetic.power.lemma_pow_increases. FuelId)
(declare-const fuel%vstd.arithmetic.power.lemma_pow_strictly_increases_converse. FuelId)
(declare-const fuel%vstd.arithmetic.power.lemma_pow_increases_converse. FuelId)
(declare-const fuel%vstd.arithmetic.power.lemma_pull_out_pows. FuelId)
(declare-const fuel%vstd.arithmetic.power.lemma_pow_mod. FuelId)
(declare-const fuel%vstd.arithmetic.power.lemma_pow_mod_noop. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.
 FuelId
)
(declare-const fuel%vstd.arithmetic.div_mod.group_mod_basics. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.group_mod_properties. FuelId)
(declare-const fuel%vstd.arithmetic.mul.group_mul_basics. FuelId)
(declare-const fuel%vstd.arithmetic.mul.group_mul_is_distributive. FuelId)
(declare-const fuel%vstd.arithmetic.power.group_pow_properties. FuelId)
(assert
 (distinct fuel%vstd.arithmetic.internals.general_internals.is_le. fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_commutes.
  fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_plus. fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_minus.
  fuel%vstd.arithmetic.internals.mul_internals.mul_auto. fuel%vstd.arithmetic.div_mod.lemma_fundamental_div_mod.
  fuel%vstd.arithmetic.div_mod.lemma_div_by_multiple. fuel%vstd.arithmetic.div_mod.lemma_mod_self_0.
  fuel%vstd.arithmetic.div_mod.lemma_mod_twice. fuel%vstd.arithmetic.div_mod.lemma_mod_division_less_than_divisor.
  fuel%vstd.arithmetic.div_mod.lemma_mod_multiples_basic. fuel%vstd.arithmetic.div_mod.lemma_mul_mod_noop_general.
  fuel%vstd.arithmetic.mul.lemma_mul_basics_1. fuel%vstd.arithmetic.mul.lemma_mul_basics_2.
  fuel%vstd.arithmetic.mul.lemma_mul_basics_3. fuel%vstd.arithmetic.mul.lemma_mul_basics_4.
  fuel%vstd.arithmetic.mul.lemma_mul_is_associative. fuel%vstd.arithmetic.mul.lemma_mul_is_commutative.
  fuel%vstd.arithmetic.mul.lemma_mul_inequality. fuel%vstd.arithmetic.mul.lemma_mul_left_inequality.
  fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_add. fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_add_other_way.
  fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_sub. fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_sub_other_way.
  fuel%vstd.arithmetic.mul.lemma_mul_strictly_increases. fuel%vstd.arithmetic.mul.lemma_mul_increases.
  fuel%vstd.arithmetic.mul.lemma_mul_nonnegative. fuel%vstd.arithmetic.power.pow. fuel%vstd.arithmetic.power.lemma_pow0.
  fuel%vstd.arithmetic.power.lemma_pow1. fuel%vstd.arithmetic.power.lemma0_pow. fuel%vstd.arithmetic.power.lemma1_pow.
  fuel%vstd.arithmetic.power.lemma_square_is_pow2. fuel%vstd.arithmetic.power.lemma_pow_positive.
  fuel%vstd.arithmetic.power.lemma_pow_adds. fuel%vstd.arithmetic.power.lemma_pow_sub_add_cancel.
  fuel%vstd.arithmetic.power.lemma_pow_subtracts. fuel%vstd.arithmetic.power.lemma_pow_multiplies.
  fuel%vstd.arithmetic.power.lemma_pow_distributes. fuel%vstd.arithmetic.power.lemma_pow_strictly_increases.
  fuel%vstd.arithmetic.power.lemma_pow_increases. fuel%vstd.arithmetic.power.lemma_pow_strictly_increases_converse.
  fuel%vstd.arithmetic.power.lemma_pow_increases_converse. fuel%vstd.arithmetic.power.lemma_pull_out_pows.
  fuel%vstd.arithmetic.power.lemma_pow_mod. fuel%vstd.arithmetic.power.lemma_pow_mod_noop.
  fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal. fuel%vstd.arithmetic.div_mod.group_mod_basics.
  fuel%vstd.arithmetic.div_mod.group_mod_properties. fuel%vstd.arithmetic.mul.group_mul_basics.
  fuel%vstd.arithmetic.mul.group_mul_is_distributive. fuel%vstd.arithmetic.power.group_pow_properties.
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
  (fuel_bool_default fuel%vstd.arithmetic.power.group_pow_properties.)
  (and
   (fuel_bool_default fuel%vstd.arithmetic.power.lemma_pow0.)
   (fuel_bool_default fuel%vstd.arithmetic.power.lemma_pow1.)
   (fuel_bool_default fuel%vstd.arithmetic.power.lemma_pow_distributes.)
   (fuel_bool_default fuel%vstd.arithmetic.power.lemma_pow_adds.)
   (fuel_bool_default fuel%vstd.arithmetic.power.lemma_pow_sub_add_cancel.)
   (fuel_bool_default fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.)
   (fuel_bool_default fuel%vstd.arithmetic.mul.lemma_mul_increases.)
   (fuel_bool_default fuel%vstd.arithmetic.mul.lemma_mul_strictly_increases.)
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

;; Function-Decl crate::vstd::arithmetic::internals::mul_internals::mul_auto
(declare-fun vstd.arithmetic.internals.mul_internals.mul_auto.? (Poly) Bool)

;; Function-Decl crate::vstd::arithmetic::power::pow
(declare-fun vstd.arithmetic.power.pow.? (Poly Poly) Int)
(declare-fun vstd.arithmetic.power.rec%pow.? (Poly Poly Fuel) Int)

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

;; Spec-Termination crate::vstd::arithmetic::power::pow
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power.rs:42:1: 42:44 (#0)
(get-info :all-statistics)
(push)
 (declare-const b! Poly)
 (declare-const e! Poly)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Poly)
 (declare-const tmp%3 Int)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type b! INT)
 )
 (assert
  (has_type e! NAT)
 )
 (declare-const %%switch_label%%0 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= decrease%init0 (%I e!))
    (or
     (and
      (=>
       (= (%I e!) 0)
       (=>
        (= tmp%3 1)
        %%switch_label%%0
      ))
      (=>
       (not (= (%I e!) 0))
       (=>
        (= tmp%2 (I (nClip (Sub (%I e!) 1))))
        (and
         (=>
          %%location_label%%0
          (check_decrease_int (let
            ((b!$0 (%I b!)) (e!$1 (%I tmp%2)))
            e!$1
           ) decrease%init0 false
         ))
         (=>
          (= tmp%1 (vstd.arithmetic.power.pow.? b! (I (nClip (Sub (%I e!) 1)))))
          (=>
           (= tmp%3 (Mul (%I b!) tmp%1))
           %%switch_label%%0
     ))))))
     (not %%switch_label%%0)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Axioms crate::vstd::arithmetic::power::pow
(assert
 (fuel_bool_default fuel%vstd.arithmetic.power.pow.)
)
(declare-const fuel_nat%vstd.arithmetic.power.pow. Fuel)
(assert
 (forall ((b! Poly) (e! Poly) (fuel% Fuel)) (!
   (= (vstd.arithmetic.power.rec%pow.? b! e! fuel%) (vstd.arithmetic.power.rec%pow.? b!
     e! zero
   ))
   :pattern ((vstd.arithmetic.power.rec%pow.? b! e! fuel%))
   :qid internal_vstd.arithmetic.power.pow._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.arithmetic.power.pow._fuel_to_zero_definition
)))
(assert
 (forall ((b! Poly) (e! Poly) (fuel% Fuel)) (!
   (=>
    (and
     (has_type b! INT)
     (has_type e! NAT)
    )
    (= (vstd.arithmetic.power.rec%pow.? b! e! (succ fuel%)) (ite
      (= (%I e!) 0)
      1
      (Mul (%I b!) (vstd.arithmetic.power.rec%pow.? b! (I (nClip (Sub (%I e!) 1))) fuel%))
   )))
   :pattern ((vstd.arithmetic.power.rec%pow.? b! e! (succ fuel%)))
   :qid internal_vstd.arithmetic.power.pow._fuel_to_body_definition
   :skolemid skolem_internal_vstd.arithmetic.power.pow._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power.pow.)
  (forall ((b! Poly) (e! Poly)) (!
    (=>
     (and
      (has_type b! INT)
      (has_type e! NAT)
     )
     (= (vstd.arithmetic.power.pow.? b! e!) (vstd.arithmetic.power.rec%pow.? b! e! (succ
        fuel_nat%vstd.arithmetic.power.pow.
    ))))
    :pattern ((vstd.arithmetic.power.pow.? b! e!))
    :qid internal_vstd.arithmetic.power.pow.?_definition
    :skolemid skolem_internal_vstd.arithmetic.power.pow.?_definition
))))

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
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_is_commutative_3
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_is_commutative_3
))))

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
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((x! Int) (f! %%Function%%)) (!
   (= (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. x! f!) (
     =>
     %%global_location_label%%0
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
(declare-const %%global_location_label%%1 Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (req%vstd.arithmetic.mul.lemma_mul_inequality. x! y! z!) (and
     (=>
      %%global_location_label%%1
      (<= x! y!)
     )
     (=>
      %%global_location_label%%2
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
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_inequality_13
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_inequality_13
))))

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
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_is_associative_18
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_is_associative_18
))))

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
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_self_0_19
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_self_0_19
))))

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
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_twice_20
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_twice_20
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
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_division_less_than_divisor_21
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_division_less_than_divisor_21
))))

;; Function-Specs crate::vstd::arithmetic::mul::lemma_mul_increases
(declare-fun req%vstd.arithmetic.mul.lemma_mul_increases. (Int Int) Bool)
(declare-const %%global_location_label%%3 Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((x! Int) (y! Int)) (!
   (= (req%vstd.arithmetic.mul.lemma_mul_increases. x! y!) (and
     (=>
      %%global_location_label%%3
      (< 0 x!)
     )
     (=>
      %%global_location_label%%4
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
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_increases_22
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_increases_22
))))

;; Function-Specs crate::vstd::arithmetic::mul::lemma_mul_nonnegative
(declare-fun req%vstd.arithmetic.mul.lemma_mul_nonnegative. (Int Int) Bool)
(declare-const %%global_location_label%%5 Bool)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((x! Int) (y! Int)) (!
   (= (req%vstd.arithmetic.mul.lemma_mul_nonnegative. x! y!) (and
     (=>
      %%global_location_label%%5
      (<= 0 x!)
     )
     (=>
      %%global_location_label%%6
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
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_nonnegative_23
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_nonnegative_23
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_fundamental_div_mod
(declare-fun req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. (Int Int) Bool)
(declare-const %%global_location_label%%7 Bool)
(assert
 (forall ((x! Int) (d! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. x! d!) (=>
     %%global_location_label%%7
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
    :qid user_crate__vstd__arithmetic__div_mod__lemma_fundamental_div_mod_24
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_fundamental_div_mod_24
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_div_by_multiple
(declare-fun req%vstd.arithmetic.div_mod.lemma_div_by_multiple. (Int Int) Bool)
(declare-const %%global_location_label%%8 Bool)
(declare-const %%global_location_label%%9 Bool)
(assert
 (forall ((b! Int) (d! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_div_by_multiple. b! d!) (and
     (=>
      %%global_location_label%%8
      (<= 0 b!)
     )
     (=>
      %%global_location_label%%9
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
    :qid user_crate__vstd__arithmetic__div_mod__lemma_div_by_multiple_25
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_by_multiple_25
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_mod_multiples_basic
(declare-fun req%vstd.arithmetic.div_mod.lemma_mod_multiples_basic. (Int Int) Bool)
(declare-const %%global_location_label%%10 Bool)
(assert
 (forall ((x! Int) (m! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_mod_multiples_basic. x! m!) (=>
     %%global_location_label%%10
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
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_multiples_basic_26
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_multiples_basic_26
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_mul_mod_noop_general
(declare-fun req%vstd.arithmetic.div_mod.lemma_mul_mod_noop_general. (Int Int Int)
 Bool
)
(declare-const %%global_location_label%%11 Bool)
(assert
 (forall ((x! Int) (y! Int) (m! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_mul_mod_noop_general. x! y! m!) (=>
     %%global_location_label%%11
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
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mul_mod_noop_general_27
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mul_mod_noop_general_27
))))

;; Function-Specs crate::vstd::arithmetic::mul::lemma_mul_strictly_increases
(declare-fun req%vstd.arithmetic.mul.lemma_mul_strictly_increases. (Int Int) Bool)
(declare-const %%global_location_label%%12 Bool)
(declare-const %%global_location_label%%13 Bool)
(assert
 (forall ((x! Int) (y! Int)) (!
   (= (req%vstd.arithmetic.mul.lemma_mul_strictly_increases. x! y!) (and
     (=>
      %%global_location_label%%12
      (< 1 x!)
     )
     (=>
      %%global_location_label%%13
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
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_strictly_increases_28
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_strictly_increases_28
))))

;; Function-Specs crate::vstd::arithmetic::power::lemma_pow0
(declare-fun ens%vstd.arithmetic.power.lemma_pow0. (Int) Bool)
(assert
 (forall ((b! Int)) (!
   (= (ens%vstd.arithmetic.power.lemma_pow0. b!) (= (vstd.arithmetic.power.pow.? (I b!)
      (I 0)
     ) 1
   ))
   :pattern ((ens%vstd.arithmetic.power.lemma_pow0. b!))
   :qid internal_ens__vstd.arithmetic.power.lemma_pow0._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power.lemma_pow0._definition
)))

;; Function-Def crate::vstd::arithmetic::power::lemma_pow0
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power.rs:53:1: 53:42 (#0)
(get-info :all-statistics)
(push)
 (declare-const b! Int)
 (assert
  fuel_defaults
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.power.pow.)
    (=>
     %%location_label%%0
     (= (vstd.arithmetic.power.pow.? (I b!) (I 0)) 1)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::power::lemma_pow0
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power.lemma_pow0.)
  (forall ((b! Poly)) (!
    (=>
     (has_type b! INT)
     (= (vstd.arithmetic.power.pow.? b! (I 0)) 1)
    )
    :pattern ((vstd.arithmetic.power.pow.? b! (I 0)))
    :qid user_crate__vstd__arithmetic__power__lemma_pow0_29
    :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow0_29
))))

;; Function-Specs crate::vstd::arithmetic::power::lemma_pow_positive
(declare-fun req%vstd.arithmetic.power.lemma_pow_positive. (Int Int) Bool)
(declare-const %%global_location_label%%14 Bool)
(assert
 (forall ((b! Int) (e! Int)) (!
   (= (req%vstd.arithmetic.power.lemma_pow_positive. b! e!) (=>
     %%global_location_label%%14
     (> b! 0)
   ))
   :pattern ((req%vstd.arithmetic.power.lemma_pow_positive. b! e!))
   :qid internal_req__vstd.arithmetic.power.lemma_pow_positive._definition
   :skolemid skolem_internal_req__vstd.arithmetic.power.lemma_pow_positive._definition
)))
(declare-fun ens%vstd.arithmetic.power.lemma_pow_positive. (Int Int) Bool)
(assert
 (forall ((b! Int) (e! Int)) (!
   (= (ens%vstd.arithmetic.power.lemma_pow_positive. b! e!) (< 0 (vstd.arithmetic.power.pow.?
      (I b!) (I e!)
   )))
   :pattern ((ens%vstd.arithmetic.power.lemma_pow_positive. b! e!))
   :qid internal_ens__vstd.arithmetic.power.lemma_pow_positive._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power.lemma_pow_positive._definition
)))

;; Function-Def crate::vstd::arithmetic::power::lemma_pow_positive
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power.rs:130:1: 130:58 (#0)
(get-info :all-statistics)
(push)
 (declare-const b! Int)
 (declare-const e! Int)
 (declare-const tmp%1 %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 e!)
 )
 (assert
  (> b! 0)
 )
 (declare-fun %%lambda%%0 (Int Poly Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Poly) (%%hole%%2 Int) (u$ Poly)) (!
    (= (%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2) u$) (B (=>
       (<= %%hole%%0 (%I u$))
       (< %%hole%%2 (vstd.arithmetic.power.pow.? %%hole%%1 (I (nClip (%I u$)))))
    )))
    :pattern ((%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2) u$))
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.power.pow.)
    (=>
     (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_increases.)
     (=>
      (fuel_bool fuel%vstd.arithmetic.power.lemma_pow0.)
      (=>
       (= tmp%1 (mk_fun (%%lambda%%0 0 (I b!) 0)))
       (and
        (=>
         %%location_label%%0
         (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. e! tmp%1)
        )
        (=>
         (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. e! tmp%1)
         (=>
          %%location_label%%1
          (< 0 (vstd.arithmetic.power.pow.? (I b!) (I e!)))
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::power::lemma_pow_positive
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power.lemma_pow_positive.)
  (forall ((b! Poly) (e! Poly)) (!
    (=>
     (and
      (has_type b! INT)
      (has_type e! NAT)
     )
     (=>
      (> (%I b!) 0)
      (< 0 (vstd.arithmetic.power.pow.? b! e!))
    ))
    :pattern ((vstd.arithmetic.power.pow.? b! e!))
    :qid user_crate__vstd__arithmetic__power__lemma_pow_positive_30
    :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_positive_30
))))

;; Function-Specs crate::vstd::arithmetic::mul::lemma_mul_left_inequality
(declare-fun req%vstd.arithmetic.mul.lemma_mul_left_inequality. (Int Int Int) Bool)
(declare-const %%global_location_label%%15 Bool)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (req%vstd.arithmetic.mul.lemma_mul_left_inequality. x! y! z!) (=>
     %%global_location_label%%15
     (< 0 x!)
   ))
   :pattern ((req%vstd.arithmetic.mul.lemma_mul_left_inequality. x! y! z!))
   :qid internal_req__vstd.arithmetic.mul.lemma_mul_left_inequality._definition
   :skolemid skolem_internal_req__vstd.arithmetic.mul.lemma_mul_left_inequality._definition
)))
(declare-fun ens%vstd.arithmetic.mul.lemma_mul_left_inequality. (Int Int Int) Bool)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (ens%vstd.arithmetic.mul.lemma_mul_left_inequality. x! y! z!) (and
     (=>
      (<= y! z!)
      (<= (Mul x! y!) (Mul x! z!))
     )
     (=>
      (< y! z!)
      (< (Mul x! y!) (Mul x! z!))
   )))
   :pattern ((ens%vstd.arithmetic.mul.lemma_mul_left_inequality. x! y! z!))
   :qid internal_ens__vstd.arithmetic.mul.lemma_mul_left_inequality._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.mul.lemma_mul_left_inequality._definition
)))

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
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_left_inequality_31
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_left_inequality_31
))))

;; Function-Specs crate::vstd::arithmetic::power::lemma_mul_basics_auto
(declare-fun ens%vstd.arithmetic.power.lemma_mul_basics_auto. (Int) Bool)
(assert
 (forall ((no%param Int)) (!
   (= (ens%vstd.arithmetic.power.lemma_mul_basics_auto. no%param) (and
     (forall ((x$ Int)) (!
       (= (Mul 0 x$) 0)
       :pattern ((Mul 0 x$))
       :qid user_crate__vstd__arithmetic__power__lemma_mul_basics_auto_32
       :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_mul_basics_auto_32
     ))
     (forall ((x$ Int)) (!
       (= (Mul x$ 0) 0)
       :pattern ((Mul x$ 0))
       :qid user_crate__vstd__arithmetic__power__lemma_mul_basics_auto_33
       :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_mul_basics_auto_33
     ))
     (forall ((x$ Int)) (!
       (= (Mul x$ 1) x$)
       :pattern ((Mul x$ 1))
       :qid user_crate__vstd__arithmetic__power__lemma_mul_basics_auto_34
       :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_mul_basics_auto_34
     ))
     (forall ((x$ Int)) (!
       (= (Mul 1 x$) x$)
       :pattern ((Mul 1 x$))
       :qid user_crate__vstd__arithmetic__power__lemma_mul_basics_auto_35
       :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_mul_basics_auto_35
   ))))
   :pattern ((ens%vstd.arithmetic.power.lemma_mul_basics_auto. no%param))
   :qid internal_ens__vstd.arithmetic.power.lemma_mul_basics_auto._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power.lemma_mul_basics_auto._definition
)))

;; Function-Def crate::vstd::arithmetic::power::lemma_mul_basics_auto
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power.rs:61:7: 61:33 (#0)
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
        :qid user_crate__vstd__arithmetic__power__lemma_mul_basics_auto_36
        :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_mul_basics_auto_36
     )))
     (and
      (=>
       %%location_label%%1
       (forall ((x$ Int)) (!
         (= (Mul x$ 0) 0)
         :pattern ((Mul x$ 0))
         :qid user_crate__vstd__arithmetic__power__lemma_mul_basics_auto_37
         :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_mul_basics_auto_37
      )))
      (and
       (=>
        %%location_label%%2
        (forall ((x$ Int)) (!
          (= (Mul x$ 1) x$)
          :pattern ((Mul x$ 1))
          :qid user_crate__vstd__arithmetic__power__lemma_mul_basics_auto_38
          :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_mul_basics_auto_38
       )))
       (=>
        %%location_label%%3
        (forall ((x$ Int)) (!
          (= (Mul 1 x$) x$)
          :pattern ((Mul 1 x$))
          :qid user_crate__vstd__arithmetic__power__lemma_mul_basics_auto_39
          :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_mul_basics_auto_39
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::power::lemma_pow1
(declare-fun ens%vstd.arithmetic.power.lemma_pow1. (Int) Bool)
(assert
 (forall ((b! Int)) (!
   (= (ens%vstd.arithmetic.power.lemma_pow1. b!) (= (vstd.arithmetic.power.pow.? (I b!)
      (I 1)
     ) b!
   ))
   :pattern ((ens%vstd.arithmetic.power.lemma_pow1. b!))
   :qid internal_ens__vstd.arithmetic.power.lemma_pow1._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power.lemma_pow1._definition
)))

;; Function-Def crate::vstd::arithmetic::power::lemma_pow1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power.rs:73:1: 73:42 (#0)
(get-info :all-statistics)
(push)
 (declare-const b! Int)
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
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 (assert
  (not (and
    (and
     (=>
      (fuel_bool fuel%vstd.arithmetic.power.pow.)
      (=>
       %%location_label%%0
       (= (vstd.arithmetic.power.pow.? (I b!) (I 1)) (Mul b! (vstd.arithmetic.power.pow.? (
           I b!
          ) (I 0)
     )))))
     (=>
      (= (vstd.arithmetic.power.pow.? (I b!) (I 1)) (Mul b! (vstd.arithmetic.power.pow.? (
          I b!
         ) (I 0)
      )))
      (and
       (=>
        (ens%vstd.arithmetic.power.lemma_pow0. b!)
        (=>
         %%location_label%%1
         (= (Mul b! (vstd.arithmetic.power.pow.? (I b!) (I 0))) (Mul b! 1))
       ))
       (=>
        (= (Mul b! (vstd.arithmetic.power.pow.? (I b!) (I 0))) (Mul b! 1))
        (and
         (=>
          (ens%vstd.arithmetic.power.lemma_mul_basics_auto. 0)
          (=>
           %%location_label%%2
           (= (Mul b! 1) b!)
         ))
         (=>
          (= (Mul b! 1) b!)
          (=>
           %%location_label%%3
           (= (vstd.arithmetic.power.pow.? (I b!) (I 1)) b!)
    )))))))
    (=>
     (= (vstd.arithmetic.power.pow.? (I b!) (I 1)) b!)
     (=>
      %%location_label%%4
      (= (vstd.arithmetic.power.pow.? (I b!) (I 1)) b!)
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::power::lemma_pow1
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power.lemma_pow1.)
  (forall ((b! Poly)) (!
    (=>
     (has_type b! INT)
     (= (vstd.arithmetic.power.pow.? b! (I 1)) (%I b!))
    )
    :pattern ((vstd.arithmetic.power.pow.? b! (I 1)))
    :qid user_crate__vstd__arithmetic__power__lemma_pow1_40
    :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow1_40
))))

;; Function-Specs crate::vstd::arithmetic::power::lemma0_pow
(declare-fun req%vstd.arithmetic.power.lemma0_pow. (Int) Bool)
(declare-const %%global_location_label%%16 Bool)
(assert
 (forall ((e! Int)) (!
   (= (req%vstd.arithmetic.power.lemma0_pow. e!) (=>
     %%global_location_label%%16
     (> e! 0)
   ))
   :pattern ((req%vstd.arithmetic.power.lemma0_pow. e!))
   :qid internal_req__vstd.arithmetic.power.lemma0_pow._definition
   :skolemid skolem_internal_req__vstd.arithmetic.power.lemma0_pow._definition
)))
(declare-fun ens%vstd.arithmetic.power.lemma0_pow. (Int) Bool)
(assert
 (forall ((e! Int)) (!
   (= (ens%vstd.arithmetic.power.lemma0_pow. e!) (= (vstd.arithmetic.power.pow.? (I 0)
      (I e!)
     ) 0
   ))
   :pattern ((ens%vstd.arithmetic.power.lemma0_pow. e!))
   :qid internal_ens__vstd.arithmetic.power.lemma0_pow._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power.lemma0_pow._definition
)))

;; Function-Def crate::vstd::arithmetic::power::lemma0_pow
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power.rs:93:1: 93:42 (#0)
(get-info :all-statistics)
(push)
 (declare-const e! Int)
 (declare-const tmp%1 Int)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 e!)
 )
 (assert
  (> e! 0)
 )
 (declare-const %%switch_label%%0 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (= decrease%init0 e!)
    (=>
     (fuel_bool fuel%vstd.arithmetic.power.pow.)
     (=>
      (ens%vstd.arithmetic.power.lemma_mul_basics_auto. 0)
      (or
       (and
        (=>
         (not (= e! 1))
         (=>
          (= tmp%1 (nClip (Sub e! 1)))
          (and
           (=>
            %%location_label%%0
            (check_decrease_int (let
              ((e!$0 tmp%1))
              e!$0
             ) decrease%init0 false
           ))
           (and
            (=>
             %%location_label%%1
             (req%vstd.arithmetic.power.lemma0_pow. tmp%1)
            )
            (=>
             (ens%vstd.arithmetic.power.lemma0_pow. tmp%1)
             %%switch_label%%0
        )))))
        (=>
         (not (not (= e! 1)))
         %%switch_label%%0
       ))
       (and
        (not %%switch_label%%0)
        (=>
         %%location_label%%2
         (= (vstd.arithmetic.power.pow.? (I 0) (I e!)) 0)
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::power::lemma0_pow
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power.lemma0_pow.)
  (forall ((e! Poly)) (!
    (=>
     (has_type e! NAT)
     (=>
      (> (%I e!) 0)
      (= (vstd.arithmetic.power.pow.? (I 0) e!) 0)
    ))
    :pattern ((vstd.arithmetic.power.pow.? (I 0) e!))
    :qid user_crate__vstd__arithmetic__power__lemma0_pow_45
    :skolemid skolem_user_crate__vstd__arithmetic__power__lemma0_pow_45
))))

;; Function-Specs crate::vstd::arithmetic::power::lemma1_pow
(declare-fun ens%vstd.arithmetic.power.lemma1_pow. (Int) Bool)
(assert
 (forall ((e! Int)) (!
   (= (ens%vstd.arithmetic.power.lemma1_pow. e!) (= (vstd.arithmetic.power.pow.? (I 1)
      (I e!)
     ) 1
   ))
   :pattern ((ens%vstd.arithmetic.power.lemma1_pow. e!))
   :qid internal_ens__vstd.arithmetic.power.lemma1_pow._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power.lemma1_pow._definition
)))

;; Function-Def crate::vstd::arithmetic::power::lemma1_pow
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power.rs:108:1: 108:42 (#0)
(get-info :all-statistics)
(push)
 (declare-const e! Int)
 (declare-const tmp%1 Int)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 e!)
 )
 (declare-const %%switch_label%%0 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= decrease%init0 e!)
    (=>
     (fuel_bool fuel%vstd.arithmetic.power.pow.)
     (=>
      (ens%vstd.arithmetic.power.lemma_mul_basics_auto. 0)
      (or
       (and
        (=>
         (not (= e! 0))
         (=>
          (= tmp%1 (nClip (Sub e! 1)))
          (and
           (=>
            %%location_label%%0
            (check_decrease_int (let
              ((e!$0 tmp%1))
              e!$0
             ) decrease%init0 false
           ))
           (=>
            (ens%vstd.arithmetic.power.lemma1_pow. tmp%1)
            %%switch_label%%0
        ))))
        (=>
         (not (not (= e! 0)))
         %%switch_label%%0
       ))
       (and
        (not %%switch_label%%0)
        (=>
         %%location_label%%1
         (= (vstd.arithmetic.power.pow.? (I 1) (I e!)) 1)
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::power::lemma1_pow
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power.lemma1_pow.)
  (forall ((e! Poly)) (!
    (=>
     (has_type e! NAT)
     (= (vstd.arithmetic.power.pow.? (I 1) e!) 1)
    )
    :pattern ((vstd.arithmetic.power.pow.? (I 1) e!))
    :qid user_crate__vstd__arithmetic__power__lemma1_pow_46
    :skolemid skolem_user_crate__vstd__arithmetic__power__lemma1_pow_46
))))

;; Function-Def crate::vstd::arithmetic::power::lemma_square_is_pow2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power.rs:121:1: 121:52 (#0)
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
    (fuel_bool fuel%vstd.arithmetic.power.pow.)
    (=>
     (exists ((fuel% Fuel)) (= fuel_nat%vstd.arithmetic.power.pow. (succ (succ fuel%))))
     (=>
      %%location_label%%0
      (= (vstd.arithmetic.power.pow.? (I x!) (I 2)) (Mul x! x!))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::power::lemma_square_is_pow2
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power.lemma_square_is_pow2.)
  (forall ((x! Poly)) (!
    (=>
     (has_type x! INT)
     (= (vstd.arithmetic.power.pow.? x! (I 2)) (Mul (%I x!) (%I x!)))
    )
    :pattern ((vstd.arithmetic.power.pow.? x! (I 2)))
    :qid user_crate__vstd__arithmetic__power__lemma_square_is_pow2_47
    :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_square_is_pow2_47
))))

;; Function-Specs crate::vstd::arithmetic::power::lemma_mul_is_associative_auto
(declare-fun ens%vstd.arithmetic.power.lemma_mul_is_associative_auto. (Int) Bool)
(assert
 (forall ((no%param Int)) (!
   (= (ens%vstd.arithmetic.power.lemma_mul_is_associative_auto. no%param) (forall ((x$ Int)
      (y$ Int) (z$ Int)
     ) (!
      (= (Mul x$ (Mul y$ z$)) (Mul (Mul x$ y$) z$))
      :pattern ((Mul x$ (Mul y$ z$)))
      :pattern ((Mul (Mul x$ y$) z$))
      :qid user_crate__vstd__arithmetic__power__lemma_mul_is_associative_auto_48
      :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_mul_is_associative_auto_48
   )))
   :pattern ((ens%vstd.arithmetic.power.lemma_mul_is_associative_auto. no%param))
   :qid internal_ens__vstd.arithmetic.power.lemma_mul_is_associative_auto._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power.lemma_mul_is_associative_auto._definition
)))

;; Function-Def crate::vstd::arithmetic::power::lemma_mul_is_associative_auto
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power.rs:145:7: 145:41 (#0)
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
       :qid user_crate__vstd__arithmetic__power__lemma_mul_is_associative_auto_49
       :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_mul_is_associative_auto_49
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::power::lemma_pow_adds
(declare-fun ens%vstd.arithmetic.power.lemma_pow_adds. (Int Int Int) Bool)
(assert
 (forall ((b! Int) (e1! Int) (e2! Int)) (!
   (= (ens%vstd.arithmetic.power.lemma_pow_adds. b! e1! e2!) (= (vstd.arithmetic.power.pow.?
      (I b!) (I (nClip (Add e1! e2!)))
     ) (Mul (vstd.arithmetic.power.pow.? (I b!) (I e1!)) (vstd.arithmetic.power.pow.? (I
        b!
       ) (I e2!)
   ))))
   :pattern ((ens%vstd.arithmetic.power.lemma_pow_adds. b! e1! e2!))
   :qid internal_ens__vstd.arithmetic.power.lemma_pow_adds._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power.lemma_pow_adds._definition
)))

;; Function-Def crate::vstd::arithmetic::power::lemma_pow_adds
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power.rs:159:1: 159:64 (#0)
(get-info :all-statistics)
(push)
 (declare-const b! Int)
 (declare-const e1! Int)
 (declare-const e2! Int)
 (declare-const tmp%1 Int)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 e1!)
 )
 (assert
  (<= 0 e2!)
 )
 (declare-const %%switch_label%%0 Bool)
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
 ;; could not prove termination
 (declare-const %%location_label%%5 Bool)
 ;; assertion failed
 (declare-const %%location_label%%6 Bool)
 ;; assertion failed
 (declare-const %%location_label%%7 Bool)
 ;; assertion failed
 (declare-const %%location_label%%8 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%9 Bool)
 (assert
  (not (=>
    (= decrease%init0 e1!)
    (or
     (and
      (=>
       (= e1! 0)
       (and
        (and
         (=>
          (ens%vstd.arithmetic.power.lemma_pow0. b!)
          (=>
           %%location_label%%0
           (= (Mul (vstd.arithmetic.power.pow.? (I b!) (I e1!)) (vstd.arithmetic.power.pow.? (I
               b!
              ) (I e2!)
             )
            ) (Mul 1 (vstd.arithmetic.power.pow.? (I b!) (I e2!)))
         )))
         (=>
          (= (Mul (vstd.arithmetic.power.pow.? (I b!) (I e1!)) (vstd.arithmetic.power.pow.? (I
              b!
             ) (I e2!)
            )
           ) (Mul 1 (vstd.arithmetic.power.pow.? (I b!) (I e2!)))
          )
          (and
           (=>
            (ens%vstd.arithmetic.power.lemma_mul_basics_auto. 0)
            (=>
             %%location_label%%1
             (= (Mul 1 (vstd.arithmetic.power.pow.? (I b!) (I e2!))) (vstd.arithmetic.power.pow.?
               (I b!) (I (nClip (Add 0 e2!)))
           ))))
           (=>
            (= (Mul 1 (vstd.arithmetic.power.pow.? (I b!) (I e2!))) (vstd.arithmetic.power.pow.?
              (I b!) (I (nClip (Add 0 e2!)))
            ))
            (=>
             %%location_label%%2
             (= (Mul (vstd.arithmetic.power.pow.? (I b!) (I e1!)) (vstd.arithmetic.power.pow.? (I
                 b!
                ) (I e2!)
               )
              ) (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Add 0 e2!))))
        ))))))
        (=>
         (= (Mul (vstd.arithmetic.power.pow.? (I b!) (I e1!)) (vstd.arithmetic.power.pow.? (I
             b!
            ) (I e2!)
           )
          ) (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Add 0 e2!))))
         )
         %%switch_label%%0
      )))
      (=>
       (not (= e1! 0))
       (and
        (and
         (=>
          (fuel_bool fuel%vstd.arithmetic.power.pow.)
          (=>
           %%location_label%%3
           (= (Mul (vstd.arithmetic.power.pow.? (I b!) (I e1!)) (vstd.arithmetic.power.pow.? (I
               b!
              ) (I e2!)
             )
            ) (Mul (Mul b! (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e1! 1))))) (vstd.arithmetic.power.pow.?
              (I b!) (I e2!)
         )))))
         (=>
          (= (Mul (vstd.arithmetic.power.pow.? (I b!) (I e1!)) (vstd.arithmetic.power.pow.? (I
              b!
             ) (I e2!)
            )
           ) (Mul (Mul b! (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e1! 1))))) (vstd.arithmetic.power.pow.?
             (I b!) (I e2!)
          )))
          (and
           (=>
            (ens%vstd.arithmetic.power.lemma_mul_is_associative_auto. 0)
            (=>
             %%location_label%%4
             (= (Mul (Mul b! (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e1! 1))))) (vstd.arithmetic.power.pow.?
                (I b!) (I e2!)
               )
              ) (Mul b! (Mul (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e1! 1)))) (vstd.arithmetic.power.pow.?
                 (I b!) (I e2!)
           ))))))
           (=>
            (= (Mul (Mul b! (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e1! 1))))) (vstd.arithmetic.power.pow.?
               (I b!) (I e2!)
              )
             ) (Mul b! (Mul (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e1! 1)))) (vstd.arithmetic.power.pow.?
                (I b!) (I e2!)
            ))))
            (and
             (=>
              (= tmp%1 (nClip (Sub e1! 1)))
              (and
               (=>
                %%location_label%%5
                (check_decrease_int (let
                  ((b!$0 b!) (e1!$1 tmp%1) (e2!$2 e2!))
                  e1!$1
                 ) decrease%init0 false
               ))
               (=>
                (ens%vstd.arithmetic.power.lemma_pow_adds. b! tmp%1 e2!)
                (=>
                 %%location_label%%6
                 (= (Mul b! (Mul (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e1! 1)))) (vstd.arithmetic.power.pow.?
                     (I b!) (I e2!)
                   ))
                  ) (Mul b! (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Add (Sub e1! 1) e2!)))))
             )))))
             (=>
              (= (Mul b! (Mul (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e1! 1)))) (vstd.arithmetic.power.pow.?
                  (I b!) (I e2!)
                ))
               ) (Mul b! (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Add (Sub e1! 1) e2!)))))
              )
              (and
               (=>
                (fuel_bool fuel%vstd.arithmetic.power.pow.)
                (=>
                 %%location_label%%7
                 (= (Mul b! (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Add (Sub e1! 1) e2!)))))
                  (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Add e1! e2!))))
               )))
               (=>
                (= (Mul b! (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Add (Sub e1! 1) e2!)))))
                 (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Add e1! e2!))))
                )
                (=>
                 %%location_label%%8
                 (= (Mul (vstd.arithmetic.power.pow.? (I b!) (I e1!)) (vstd.arithmetic.power.pow.? (I
                     b!
                    ) (I e2!)
                   )
                  ) (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Add e1! e2!))))
        ))))))))))
        (=>
         (= (Mul (vstd.arithmetic.power.pow.? (I b!) (I e1!)) (vstd.arithmetic.power.pow.? (I
             b!
            ) (I e2!)
           )
          ) (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Add e1! e2!))))
         )
         %%switch_label%%0
     ))))
     (and
      (not %%switch_label%%0)
      (=>
       %%location_label%%9
       (= (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Add e1! e2!)))) (Mul (vstd.arithmetic.power.pow.?
          (I b!) (I e1!)
         ) (vstd.arithmetic.power.pow.? (I b!) (I e2!))
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::power::lemma_pow_adds
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power.lemma_pow_adds.)
  (forall ((b! Poly) (e1! Int) (e2! Int)) (!
    (=>
     (and
      (has_type b! INT)
      (<= 0 e1!)
      (<= 0 e2!)
     )
     (= (vstd.arithmetic.power.pow.? b! (I (nClip (Add e1! e2!)))) (Mul (vstd.arithmetic.power.pow.?
        b! (I e1!)
       ) (vstd.arithmetic.power.pow.? b! (I e2!))
    )))
    :pattern ((vstd.arithmetic.power.pow.? b! (I (nClip (Add e1! e2!)))))
    :qid user_crate__vstd__arithmetic__power__lemma_pow_adds_50
    :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_adds_50
))))

;; Function-Specs crate::vstd::arithmetic::power::lemma_pow_sub_add_cancel
(declare-fun req%vstd.arithmetic.power.lemma_pow_sub_add_cancel. (Int Int Int) Bool)
(declare-const %%global_location_label%%17 Bool)
(assert
 (forall ((b! Int) (e1! Int) (e2! Int)) (!
   (= (req%vstd.arithmetic.power.lemma_pow_sub_add_cancel. b! e1! e2!) (=>
     %%global_location_label%%17
     (>= e1! e2!)
   ))
   :pattern ((req%vstd.arithmetic.power.lemma_pow_sub_add_cancel. b! e1! e2!))
   :qid internal_req__vstd.arithmetic.power.lemma_pow_sub_add_cancel._definition
   :skolemid skolem_internal_req__vstd.arithmetic.power.lemma_pow_sub_add_cancel._definition
)))
(declare-fun ens%vstd.arithmetic.power.lemma_pow_sub_add_cancel. (Int Int Int) Bool)
(assert
 (forall ((b! Int) (e1! Int) (e2! Int)) (!
   (= (ens%vstd.arithmetic.power.lemma_pow_sub_add_cancel. b! e1! e2!) (= (Mul (vstd.arithmetic.power.pow.?
       (I b!) (I (nClip (Sub e1! e2!)))
      ) (vstd.arithmetic.power.pow.? (I b!) (I e2!))
     ) (vstd.arithmetic.power.pow.? (I b!) (I e1!))
   ))
   :pattern ((ens%vstd.arithmetic.power.lemma_pow_sub_add_cancel. b! e1! e2!))
   :qid internal_ens__vstd.arithmetic.power.lemma_pow_sub_add_cancel._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power.lemma_pow_sub_add_cancel._definition
)))

;; Function-Def crate::vstd::arithmetic::power::lemma_pow_sub_add_cancel
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power.rs:198:1: 198:74 (#0)
(get-info :all-statistics)
(push)
 (declare-const b! Int)
 (declare-const e1! Int)
 (declare-const e2! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 e1!)
 )
 (assert
  (<= 0 e2!)
 )
 (assert
  (>= e1! e2!)
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%1 (nClip (Sub e1! e2!)))
    (=>
     (ens%vstd.arithmetic.power.lemma_pow_adds. b! tmp%1 e2!)
     (=>
      %%location_label%%0
      (= (Mul (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e1! e2!)))) (vstd.arithmetic.power.pow.?
         (I b!) (I e2!)
        )
       ) (vstd.arithmetic.power.pow.? (I b!) (I e1!))
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::power::lemma_pow_sub_add_cancel
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power.lemma_pow_sub_add_cancel.)
  (forall ((b! Poly) (e1! Int) (e2! Int)) (!
    (=>
     (and
      (has_type b! INT)
      (<= 0 e1!)
      (<= 0 e2!)
     )
     (=>
      (>= e1! e2!)
      (= (Mul (vstd.arithmetic.power.pow.? b! (I (nClip (Sub e1! e2!)))) (vstd.arithmetic.power.pow.?
         b! (I e2!)
        )
       ) (vstd.arithmetic.power.pow.? b! (I e1!))
    )))
    :pattern ((vstd.arithmetic.power.pow.? b! (I (nClip (Sub e1! e2!)))))
    :qid user_crate__vstd__arithmetic__power__lemma_pow_sub_add_cancel_59
    :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_sub_add_cancel_59
))))

;; Function-Def crate::vstd::arithmetic::power::lemma_pow_subtracts
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power.rs:211:1: 211:69 (#0)
(get-info :all-statistics)
(push)
 (declare-const b! Int)
 (declare-const e1! Int)
 (declare-const e2! Int)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 e1!)
 )
 (assert
  (<= 0 e2!)
 )
 (assert
  (> b! 0)
 )
 (assert
  (<= e1! e2!)
 )
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
 ;; postcondition not satisfied
 (declare-const %%location_label%%6 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.power.lemma_pow_positive.)
    (and
     (and
      (and
       (=>
        %%location_label%%0
        (req%vstd.arithmetic.power.lemma_pow_sub_add_cancel. b! e2! e1!)
       )
       (=>
        (ens%vstd.arithmetic.power.lemma_pow_sub_add_cancel. b! e2! e1!)
        (=>
         %%location_label%%1
         (= (EucDiv (vstd.arithmetic.power.pow.? (I b!) (I e2!)) (vstd.arithmetic.power.pow.?
            (I b!) (I e1!)
           )
          ) (EucDiv (Mul (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e2! e1!)))) (vstd.arithmetic.power.pow.?
             (I b!) (I e1!)
            )
           ) (vstd.arithmetic.power.pow.? (I b!) (I e1!))
      )))))
      (=>
       (= (EucDiv (vstd.arithmetic.power.pow.? (I b!) (I e2!)) (vstd.arithmetic.power.pow.?
          (I b!) (I e1!)
         )
        ) (EucDiv (Mul (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e2! e1!)))) (vstd.arithmetic.power.pow.?
           (I b!) (I e1!)
          )
         ) (vstd.arithmetic.power.pow.? (I b!) (I e1!))
       ))
       (and
        (=>
         (= tmp%1 (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e2! e1!)))))
         (=>
          (= tmp%2 (vstd.arithmetic.power.pow.? (I b!) (I e1!)))
          (and
           (=>
            %%location_label%%2
            (req%vstd.arithmetic.div_mod.lemma_div_by_multiple. tmp%1 tmp%2)
           )
           (=>
            (ens%vstd.arithmetic.div_mod.lemma_div_by_multiple. tmp%1 tmp%2)
            (=>
             %%location_label%%3
             (= (EucDiv (Mul (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e2! e1!)))) (vstd.arithmetic.power.pow.?
                 (I b!) (I e1!)
                )
               ) (vstd.arithmetic.power.pow.? (I b!) (I e1!))
              ) (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e2! e1!))))
        ))))))
        (=>
         (= (EucDiv (Mul (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e2! e1!)))) (vstd.arithmetic.power.pow.?
             (I b!) (I e1!)
            )
           ) (vstd.arithmetic.power.pow.? (I b!) (I e1!))
          ) (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e2! e1!))))
         )
         (=>
          %%location_label%%4
          (= (EucDiv (vstd.arithmetic.power.pow.? (I b!) (I e2!)) (vstd.arithmetic.power.pow.?
             (I b!) (I e1!)
            )
           ) (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e2! e1!))))
     ))))))
     (=>
      (= (EucDiv (vstd.arithmetic.power.pow.? (I b!) (I e2!)) (vstd.arithmetic.power.pow.?
         (I b!) (I e1!)
        )
       ) (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e2! e1!))))
      )
      (and
       (=>
        %%location_label%%5
        (> (vstd.arithmetic.power.pow.? (I b!) (I e1!)) 0)
       )
       (=>
        %%location_label%%6
        (let
         ((tmp%%$ (EucDiv (vstd.arithmetic.power.pow.? (I b!) (I e2!)) (vstd.arithmetic.power.pow.?
             (I b!) (I e1!)
         ))))
         (and
          (= (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e2! e1!)))) tmp%%$)
          (> tmp%%$ 0)
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::power::lemma_pow_subtracts
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power.lemma_pow_subtracts.)
  (forall ((b! Poly) (e1! Int) (e2! Int)) (!
    (=>
     (and
      (has_type b! INT)
      (<= 0 e1!)
      (<= 0 e2!)
     )
     (=>
      (and
       (> (%I b!) 0)
       (<= e1! e2!)
      )
      (and
       (> (vstd.arithmetic.power.pow.? b! (I e1!)) 0)
       (let
        ((tmp%%$ (EucDiv (vstd.arithmetic.power.pow.? b! (I e2!)) (vstd.arithmetic.power.pow.?
            b! (I e1!)
        ))))
        (and
         (= (vstd.arithmetic.power.pow.? b! (I (nClip (Sub e2! e1!)))) tmp%%$)
         (> tmp%%$ 0)
    )))))
    :pattern ((vstd.arithmetic.power.pow.? b! (I (nClip (Sub e2! e1!)))))
    :qid user_crate__vstd__arithmetic__power__lemma_pow_subtracts_60
    :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_subtracts_60
))))

;; Function-Specs crate::vstd::arithmetic::power::lemma_mul_is_distributive_auto
(declare-fun ens%vstd.arithmetic.power.lemma_mul_is_distributive_auto. (Int) Bool)
(assert
 (forall ((no%param Int)) (!
   (= (ens%vstd.arithmetic.power.lemma_mul_is_distributive_auto. no%param) (and
     (forall ((x$ Int) (y$ Int) (z$ Int)) (!
       (= (Mul x$ (Add y$ z$)) (Add (Mul x$ y$) (Mul x$ z$)))
       :pattern ((Mul x$ (Add y$ z$)))
       :qid user_crate__vstd__arithmetic__power__lemma_mul_is_distributive_auto_64
       :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_mul_is_distributive_auto_64
     ))
     (forall ((x$ Int) (y$ Int) (z$ Int)) (!
       (= (Mul (Add y$ z$) x$) (Add (Mul y$ x$) (Mul z$ x$)))
       :pattern ((Mul (Add y$ z$) x$))
       :qid user_crate__vstd__arithmetic__power__lemma_mul_is_distributive_auto_65
       :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_mul_is_distributive_auto_65
     ))
     (forall ((x$ Int) (y$ Int) (z$ Int)) (!
       (= (Mul x$ (Sub y$ z$)) (Sub (Mul x$ y$) (Mul x$ z$)))
       :pattern ((Mul x$ (Sub y$ z$)))
       :qid user_crate__vstd__arithmetic__power__lemma_mul_is_distributive_auto_66
       :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_mul_is_distributive_auto_66
     ))
     (forall ((x$ Int) (y$ Int) (z$ Int)) (!
       (= (Mul (Sub y$ z$) x$) (Sub (Mul y$ x$) (Mul z$ x$)))
       :pattern ((Mul (Sub y$ z$) x$))
       :qid user_crate__vstd__arithmetic__power__lemma_mul_is_distributive_auto_67
       :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_mul_is_distributive_auto_67
   ))))
   :pattern ((ens%vstd.arithmetic.power.lemma_mul_is_distributive_auto. no%param))
   :qid internal_ens__vstd.arithmetic.power.lemma_mul_is_distributive_auto._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power.lemma_mul_is_distributive_auto._definition
)))

;; Function-Def crate::vstd::arithmetic::power::lemma_mul_is_distributive_auto
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power.rs:234:7: 234:42 (#0)
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
        :qid user_crate__vstd__arithmetic__power__lemma_mul_is_distributive_auto_68
        :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_mul_is_distributive_auto_68
     )))
     (and
      (=>
       %%location_label%%1
       (forall ((x$ Int) (y$ Int) (z$ Int)) (!
         (= (Mul (Add y$ z$) x$) (Add (Mul y$ x$) (Mul z$ x$)))
         :pattern ((Mul (Add y$ z$) x$))
         :qid user_crate__vstd__arithmetic__power__lemma_mul_is_distributive_auto_69
         :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_mul_is_distributive_auto_69
      )))
      (and
       (=>
        %%location_label%%2
        (forall ((x$ Int) (y$ Int) (z$ Int)) (!
          (= (Mul x$ (Sub y$ z$)) (Sub (Mul x$ y$) (Mul x$ z$)))
          :pattern ((Mul x$ (Sub y$ z$)))
          :qid user_crate__vstd__arithmetic__power__lemma_mul_is_distributive_auto_70
          :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_mul_is_distributive_auto_70
       )))
       (=>
        %%location_label%%3
        (forall ((x$ Int) (y$ Int) (z$ Int)) (!
          (= (Mul (Sub y$ z$) x$) (Sub (Mul y$ x$) (Mul z$ x$)))
          :pattern ((Mul (Sub y$ z$) x$))
          :qid user_crate__vstd__arithmetic__power__lemma_mul_is_distributive_auto_71
          :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_mul_is_distributive_auto_71
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::power::lemma_pow_multiplies
(declare-fun ens%vstd.arithmetic.power.lemma_pow_multiplies. (Int Int Int) Bool)
(assert
 (forall ((a! Int) (b! Int) (c! Int)) (!
   (= (ens%vstd.arithmetic.power.lemma_pow_multiplies. a! b! c!) (and
     (<= 0 (nClip (Mul b! c!)))
     (= (vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.? (I a!) (I b!))) (I c!))
      (vstd.arithmetic.power.pow.? (I a!) (I (nClip (Mul b! c!))))
   )))
   :pattern ((ens%vstd.arithmetic.power.lemma_pow_multiplies. a! b! c!))
   :qid internal_ens__vstd.arithmetic.power.lemma_pow_multiplies._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power.lemma_pow_multiplies._definition
)))

;; Function-Def crate::vstd::arithmetic::power::lemma_pow_multiplies
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power.rs:248:1: 248:68 (#0)
(get-info :all-statistics)
(push)
 (declare-const a! Int)
 (declare-const b! Int)
 (declare-const c! Int)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Int)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Int)
 (declare-const tmp%5 Int)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 b!)
 )
 (assert
  (<= 0 c!)
 )
 (declare-const %%switch_label%%0 Bool)
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
 ;; precondition not satisfied
 (declare-const %%location_label%%7 Bool)
 ;; assertion failed
 (declare-const %%location_label%%8 Bool)
 ;; assertion failed
 (declare-const %%location_label%%9 Bool)
 ;; assertion failed
 (declare-const %%location_label%%10 Bool)
 ;; assertion failed
 (declare-const %%location_label%%11 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%12 Bool)
 ;; assertion failed
 (declare-const %%location_label%%13 Bool)
 ;; assertion failed
 (declare-const %%location_label%%14 Bool)
 ;; assertion failed
 (declare-const %%location_label%%15 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%16 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%17 Bool)
 (assert
  (not (=>
    (= decrease%init0 c!)
    (and
     (=>
      %%location_label%%0
      (req%vstd.arithmetic.mul.lemma_mul_nonnegative. b! c!)
     )
     (=>
      (ens%vstd.arithmetic.mul.lemma_mul_nonnegative. b! c!)
      (or
       (and
        (=>
         (= c! 0)
         (=>
          (ens%vstd.arithmetic.power.lemma_mul_basics_auto. 0)
          (and
           (and
            (=>
             (ens%vstd.arithmetic.power.lemma_pow0. a!)
             (=>
              %%location_label%%1
              (= (vstd.arithmetic.power.pow.? (I a!) (I (nClip (Mul b! c!)))) 1)
            ))
            (=>
             (= (vstd.arithmetic.power.pow.? (I a!) (I (nClip (Mul b! c!)))) 1)
             (and
              (=>
               (= tmp%1 (vstd.arithmetic.power.pow.? (I a!) (I b!)))
               (=>
                (ens%vstd.arithmetic.power.lemma_pow0. tmp%1)
                (=>
                 %%location_label%%2
                 (= 1 (vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.? (I a!) (I b!))) (
                    I c!
              ))))))
              (=>
               (= 1 (vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.? (I a!) (I b!))) (
                  I c!
               )))
               (=>
                %%location_label%%3
                (= (vstd.arithmetic.power.pow.? (I a!) (I (nClip (Mul b! c!)))) (vstd.arithmetic.power.pow.?
                  (I (vstd.arithmetic.power.pow.? (I a!) (I b!))) (I c!)
           )))))))
           (=>
            (= (vstd.arithmetic.power.pow.? (I a!) (I (nClip (Mul b! c!)))) (vstd.arithmetic.power.pow.?
              (I (vstd.arithmetic.power.pow.? (I a!) (I b!))) (I c!)
            ))
            %%switch_label%%0
        ))))
        (=>
         (not (= c! 0))
         (and
          (and
           (=>
            (ens%vstd.arithmetic.power.lemma_mul_basics_auto. 0)
            (=>
             %%location_label%%4
             (= (Sub (nClip (Mul b! c!)) b!) (Sub (nClip (Mul b! c!)) (nClip (Mul b! 1))))
           ))
           (=>
            (= (Sub (nClip (Mul b! c!)) b!) (Sub (nClip (Mul b! c!)) (nClip (Mul b! 1))))
            (and
             (=>
              (ens%vstd.arithmetic.power.lemma_mul_is_distributive_auto. 0)
              (=>
               %%location_label%%5
               (= (Sub (nClip (Mul b! c!)) (nClip (Mul b! 1))) (Mul b! (Sub c! 1)))
             ))
             (=>
              (= (Sub (nClip (Mul b! c!)) (nClip (Mul b! 1))) (Mul b! (Sub c! 1)))
              (=>
               %%location_label%%6
               (= (Sub (nClip (Mul b! c!)) b!) (Mul b! (Sub c! 1)))
          )))))
          (=>
           (= (Sub (nClip (Mul b! c!)) b!) (Mul b! (Sub c! 1)))
           (=>
            (= tmp%2 (Sub c! 1))
            (and
             (=>
              %%location_label%%7
              (req%vstd.arithmetic.mul.lemma_mul_nonnegative. b! tmp%2)
             )
             (=>
              (ens%vstd.arithmetic.mul.lemma_mul_nonnegative. b! tmp%2)
              (=>
               (= tmp%3 (<= 0 (Sub (nClip (Mul b! c!)) b!)))
               (and
                (=>
                 %%location_label%%8
                 tmp%3
                )
                (=>
                 tmp%3
                 (and
                  (and
                   (=>
                    %%location_label%%9
                    (= (vstd.arithmetic.power.pow.? (I a!) (I (nClip (Mul b! c!)))) (vstd.arithmetic.power.pow.?
                      (I a!) (I (nClip (Sub (nClip (Add b! (nClip (Mul b! c!)))) b!)))
                   )))
                   (=>
                    (= (vstd.arithmetic.power.pow.? (I a!) (I (nClip (Mul b! c!)))) (vstd.arithmetic.power.pow.?
                      (I a!) (I (nClip (Sub (nClip (Add b! (nClip (Mul b! c!)))) b!)))
                    ))
                    (and
                     (=>
                      (= tmp%4 (nClip (Sub (nClip (Mul b! c!)) b!)))
                      (=>
                       (ens%vstd.arithmetic.power.lemma_pow_adds. a! b! tmp%4)
                       (=>
                        %%location_label%%10
                        (= (vstd.arithmetic.power.pow.? (I a!) (I (nClip (Sub (nClip (Add b! (nClip (Mul b! c!))))
                             b!
                          )))
                         ) (Mul (vstd.arithmetic.power.pow.? (I a!) (I b!)) (vstd.arithmetic.power.pow.? (I a!)
                           (I (nClip (Sub (nClip (Mul b! c!)) b!)))
                     ))))))
                     (=>
                      (= (vstd.arithmetic.power.pow.? (I a!) (I (nClip (Sub (nClip (Add b! (nClip (Mul b! c!))))
                           b!
                        )))
                       ) (Mul (vstd.arithmetic.power.pow.? (I a!) (I b!)) (vstd.arithmetic.power.pow.? (I a!)
                         (I (nClip (Sub (nClip (Mul b! c!)) b!)))
                      )))
                      (and
                       (=>
                        %%location_label%%11
                        (= (Mul (vstd.arithmetic.power.pow.? (I a!) (I b!)) (vstd.arithmetic.power.pow.? (I a!)
                           (I (nClip (Sub (nClip (Mul b! c!)) b!)))
                          )
                         ) (Mul (vstd.arithmetic.power.pow.? (I a!) (I b!)) (vstd.arithmetic.power.pow.? (I a!)
                           (I (nClip (Mul b! (Sub c! 1))))
                       ))))
                       (=>
                        (= (Mul (vstd.arithmetic.power.pow.? (I a!) (I b!)) (vstd.arithmetic.power.pow.? (I a!)
                           (I (nClip (Sub (nClip (Mul b! c!)) b!)))
                          )
                         ) (Mul (vstd.arithmetic.power.pow.? (I a!) (I b!)) (vstd.arithmetic.power.pow.? (I a!)
                           (I (nClip (Mul b! (Sub c! 1))))
                        )))
                        (and
                         (=>
                          (= tmp%5 (nClip (Sub c! 1)))
                          (and
                           (=>
                            %%location_label%%12
                            (check_decrease_int (let
                              ((a!$0 a!) (b!$1 b!) (c!$2 tmp%5))
                              c!$2
                             ) decrease%init0 false
                           ))
                           (=>
                            (ens%vstd.arithmetic.power.lemma_pow_multiplies. a! b! tmp%5)
                            (=>
                             %%location_label%%13
                             (= (Mul (vstd.arithmetic.power.pow.? (I a!) (I b!)) (vstd.arithmetic.power.pow.? (I a!)
                                (I (nClip (Mul b! (Sub c! 1))))
                               )
                              ) (Mul (vstd.arithmetic.power.pow.? (I a!) (I b!)) (vstd.arithmetic.power.pow.? (I (
                                  vstd.arithmetic.power.pow.? (I a!) (I b!)
                                 )
                                ) (I (nClip (Sub c! 1)))
                         )))))))
                         (=>
                          (= (Mul (vstd.arithmetic.power.pow.? (I a!) (I b!)) (vstd.arithmetic.power.pow.? (I a!)
                             (I (nClip (Mul b! (Sub c! 1))))
                            )
                           ) (Mul (vstd.arithmetic.power.pow.? (I a!) (I b!)) (vstd.arithmetic.power.pow.? (I (
                               vstd.arithmetic.power.pow.? (I a!) (I b!)
                              )
                             ) (I (nClip (Sub c! 1)))
                          )))
                          (and
                           (=>
                            (fuel_bool fuel%vstd.arithmetic.power.pow.)
                            (=>
                             %%location_label%%14
                             (= (Mul (vstd.arithmetic.power.pow.? (I a!) (I b!)) (vstd.arithmetic.power.pow.? (I (
                                  vstd.arithmetic.power.pow.? (I a!) (I b!)
                                 )
                                ) (I (nClip (Sub c! 1)))
                               )
                              ) (vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.? (I a!) (I b!))) (I c!))
                           )))
                           (=>
                            (= (Mul (vstd.arithmetic.power.pow.? (I a!) (I b!)) (vstd.arithmetic.power.pow.? (I (
                                 vstd.arithmetic.power.pow.? (I a!) (I b!)
                                )
                               ) (I (nClip (Sub c! 1)))
                              )
                             ) (vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.? (I a!) (I b!))) (I c!))
                            )
                            (=>
                             %%location_label%%15
                             (= (vstd.arithmetic.power.pow.? (I a!) (I (nClip (Mul b! c!)))) (vstd.arithmetic.power.pow.?
                               (I (vstd.arithmetic.power.pow.? (I a!) (I b!))) (I c!)
                  )))))))))))))
                  (=>
                   (= (vstd.arithmetic.power.pow.? (I a!) (I (nClip (Mul b! c!)))) (vstd.arithmetic.power.pow.?
                     (I (vstd.arithmetic.power.pow.? (I a!) (I b!))) (I c!)
                   ))
                   %%switch_label%%0
       ))))))))))))
       (and
        (not %%switch_label%%0)
        (and
         (=>
          %%location_label%%16
          (<= 0 (nClip (Mul b! c!)))
         )
         (=>
          %%location_label%%17
          (= (vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.? (I a!) (I b!))) (I c!))
           (vstd.arithmetic.power.pow.? (I a!) (I (nClip (Mul b! c!))))
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::power::lemma_pow_multiplies
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power.lemma_pow_multiplies.)
  (forall ((a! Poly) (b! Poly) (c! Poly)) (!
    (=>
     (and
      (has_type a! INT)
      (has_type b! NAT)
      (has_type c! NAT)
     )
     (and
      (<= 0 (nClip (Mul (%I b!) (%I c!))))
      (= (vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.? a! b!)) c!) (vstd.arithmetic.power.pow.?
        a! (I (nClip (Mul (%I b!) (%I c!))))
    ))))
    :pattern ((vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.? a! b!)) c!))
    :qid user_crate__vstd__arithmetic__power__lemma_pow_multiplies_72
    :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_multiplies_72
))))

;; Function-Specs crate::vstd::arithmetic::power::lemma_mul_is_commutative_auto
(declare-fun ens%vstd.arithmetic.power.lemma_mul_is_commutative_auto. (Int) Bool)
(assert
 (forall ((no%param Int)) (!
   (= (ens%vstd.arithmetic.power.lemma_mul_is_commutative_auto. no%param) (forall ((x$ Int)
      (y$ Int)
     ) (!
      (= (Mul x$ y$) (Mul y$ x$))
      :pattern ((Mul x$ y$))
      :qid user_crate__vstd__arithmetic__power__lemma_mul_is_commutative_auto_85
      :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_mul_is_commutative_auto_85
   )))
   :pattern ((ens%vstd.arithmetic.power.lemma_mul_is_commutative_auto. no%param))
   :qid internal_ens__vstd.arithmetic.power.lemma_mul_is_commutative_auto._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power.lemma_mul_is_commutative_auto._definition
)))

;; Function-Def crate::vstd::arithmetic::power::lemma_mul_is_commutative_auto
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power.rs:297:7: 297:41 (#0)
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
       :qid user_crate__vstd__arithmetic__power__lemma_mul_is_commutative_auto_86
       :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_mul_is_commutative_auto_86
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::power::lemma_pow_distributes
(declare-fun ens%vstd.arithmetic.power.lemma_pow_distributes. (Int Int Int) Bool)
(assert
 (forall ((a! Int) (b! Int) (e! Int)) (!
   (= (ens%vstd.arithmetic.power.lemma_pow_distributes. a! b! e!) (= (vstd.arithmetic.power.pow.?
      (I (Mul a! b!)) (I e!)
     ) (Mul (vstd.arithmetic.power.pow.? (I a!) (I e!)) (vstd.arithmetic.power.pow.? (I b!)
       (I e!)
   ))))
   :pattern ((ens%vstd.arithmetic.power.lemma_pow_distributes. a! b! e!))
   :qid internal_ens__vstd.arithmetic.power.lemma_pow_distributes._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power.lemma_pow_distributes._definition
)))

;; Function-Def crate::vstd::arithmetic::power::lemma_pow_distributes
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power.rs:307:1: 307:69 (#0)
(get-info :all-statistics)
(push)
 (declare-const a! Int)
 (declare-const b! Int)
 (declare-const e! Int)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Bool)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 e!)
 )
 (declare-const %%switch_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; could not prove termination
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
 ;; postcondition not satisfied
 (declare-const %%location_label%%7 Bool)
 (assert
  (not (=>
    (= decrease%init0 e!)
    (=>
     (fuel_bool fuel%vstd.arithmetic.power.pow.)
     (=>
      (ens%vstd.arithmetic.power.lemma_mul_basics_auto. 0)
      (or
       (and
        (=>
         (>= e! 1)
         (and
          (and
           (=>
            (fuel_bool fuel%vstd.arithmetic.power.pow.)
            (=>
             %%location_label%%0
             (= (vstd.arithmetic.power.pow.? (I (Mul a! b!)) (I e!)) (Mul (Mul a! b!) (vstd.arithmetic.power.pow.?
                (I (Mul a! b!)) (I (nClip (Sub e! 1)))
           )))))
           (=>
            (= (vstd.arithmetic.power.pow.? (I (Mul a! b!)) (I e!)) (Mul (Mul a! b!) (vstd.arithmetic.power.pow.?
               (I (Mul a! b!)) (I (nClip (Sub e! 1)))
            )))
            (and
             (=>
              (= tmp%1 (nClip (Sub e! 1)))
              (and
               (=>
                %%location_label%%1
                (check_decrease_int (let
                  ((a!$0 a!) (b!$1 b!) (e!$2 tmp%1))
                  e!$2
                 ) decrease%init0 false
               ))
               (=>
                (ens%vstd.arithmetic.power.lemma_pow_distributes. a! b! tmp%1)
                (=>
                 %%location_label%%2
                 (= (Mul (Mul a! b!) (vstd.arithmetic.power.pow.? (I (Mul a! b!)) (I (nClip (Sub e! 1)))))
                  (Mul (Mul a! b!) (Mul (vstd.arithmetic.power.pow.? (I a!) (I (nClip (Sub e! 1)))) (
                     vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e! 1)))
             ))))))))
             (=>
              (= (Mul (Mul a! b!) (vstd.arithmetic.power.pow.? (I (Mul a! b!)) (I (nClip (Sub e! 1)))))
               (Mul (Mul a! b!) (Mul (vstd.arithmetic.power.pow.? (I a!) (I (nClip (Sub e! 1)))) (
                  vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e! 1)))
              ))))
              (and
               (=>
                (ens%vstd.arithmetic.power.lemma_mul_is_associative_auto. 0)
                (=>
                 (ens%vstd.arithmetic.power.lemma_mul_is_commutative_auto. 0)
                 (=>
                  (= tmp%2 (= (Mul (Mul (Mul a! b!) (vstd.arithmetic.power.pow.? (I a!) (I (nClip (Sub e! 1)))))
                     (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e! 1))))
                    ) (Mul (Mul (Mul a! (vstd.arithmetic.power.pow.? (I a!) (I (nClip (Sub e! 1))))) b!)
                     (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e! 1))))
                  )))
                  (and
                   (=>
                    %%location_label%%3
                    tmp%2
                   )
                   (=>
                    tmp%2
                    (=>
                     %%location_label%%4
                     (= (Mul (Mul a! b!) (Mul (vstd.arithmetic.power.pow.? (I a!) (I (nClip (Sub e! 1))))
                        (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e! 1))))
                       )
                      ) (Mul (Mul a! (vstd.arithmetic.power.pow.? (I a!) (I (nClip (Sub e! 1))))) (Mul b!
                        (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e! 1))))
               )))))))))
               (=>
                (= (Mul (Mul a! b!) (Mul (vstd.arithmetic.power.pow.? (I a!) (I (nClip (Sub e! 1))))
                   (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e! 1))))
                  )
                 ) (Mul (Mul a! (vstd.arithmetic.power.pow.? (I a!) (I (nClip (Sub e! 1))))) (Mul b!
                   (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e! 1))))
                )))
                (and
                 (=>
                  (fuel_bool fuel%vstd.arithmetic.power.pow.)
                  (=>
                   %%location_label%%5
                   (= (Mul (Mul a! (vstd.arithmetic.power.pow.? (I a!) (I (nClip (Sub e! 1))))) (Mul b!
                      (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e! 1))))
                     )
                    ) (Mul (vstd.arithmetic.power.pow.? (I a!) (I e!)) (vstd.arithmetic.power.pow.? (I b!)
                      (I e!)
                 )))))
                 (=>
                  (= (Mul (Mul a! (vstd.arithmetic.power.pow.? (I a!) (I (nClip (Sub e! 1))))) (Mul b!
                     (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e! 1))))
                    )
                   ) (Mul (vstd.arithmetic.power.pow.? (I a!) (I e!)) (vstd.arithmetic.power.pow.? (I b!)
                     (I e!)
                  )))
                  (=>
                   %%location_label%%6
                   (= (vstd.arithmetic.power.pow.? (I (Mul a! b!)) (I e!)) (Mul (vstd.arithmetic.power.pow.?
                      (I a!) (I e!)
                     ) (vstd.arithmetic.power.pow.? (I b!) (I e!))
          )))))))))))
          (=>
           (= (vstd.arithmetic.power.pow.? (I (Mul a! b!)) (I e!)) (Mul (vstd.arithmetic.power.pow.?
              (I a!) (I e!)
             ) (vstd.arithmetic.power.pow.? (I b!) (I e!))
           ))
           %%switch_label%%0
        )))
        (=>
         (not (>= e! 1))
         %%switch_label%%0
       ))
       (and
        (not %%switch_label%%0)
        (=>
         %%location_label%%7
         (= (vstd.arithmetic.power.pow.? (I (Mul a! b!)) (I e!)) (Mul (vstd.arithmetic.power.pow.?
            (I a!) (I e!)
           ) (vstd.arithmetic.power.pow.? (I b!) (I e!))
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::power::lemma_pow_distributes
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power.lemma_pow_distributes.)
  (forall ((a! Int) (b! Int) (e! Poly)) (!
    (=>
     (has_type e! NAT)
     (= (vstd.arithmetic.power.pow.? (I (Mul a! b!)) e!) (Mul (vstd.arithmetic.power.pow.?
        (I a!) e!
       ) (vstd.arithmetic.power.pow.? (I b!) e!)
    )))
    :pattern ((vstd.arithmetic.power.pow.? (I (Mul a! b!)) e!))
    :qid user_crate__vstd__arithmetic__power__lemma_pow_distributes_87
    :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_distributes_87
))))

;; Function-Specs crate::vstd::arithmetic::power::lemma_pow_properties_prove_pow_auto
(declare-fun ens%vstd.arithmetic.power.lemma_pow_properties_prove_pow_auto. (Int)
 Bool
)
(assert
 (forall ((no%param Int)) (!
   (= (ens%vstd.arithmetic.power.lemma_pow_properties_prove_pow_auto. no%param) (and
     (forall ((x$ Poly)) (!
       (=>
        (has_type x$ INT)
        (= (vstd.arithmetic.power.pow.? x$ (I 0)) 1)
       )
       :pattern ((vstd.arithmetic.power.pow.? x$ (I 0)))
       :qid user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_93
       :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_93
     ))
     (forall ((x$ Poly)) (!
       (=>
        (has_type x$ INT)
        (= (vstd.arithmetic.power.pow.? x$ (I 1)) (%I x$))
       )
       :pattern ((vstd.arithmetic.power.pow.? x$ (I 1)))
       :qid user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_94
       :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_94
     ))
     (forall ((x$ Poly) (y$ Int)) (!
       (=>
        (has_type x$ INT)
        (=>
         (= y$ 0)
         (= (vstd.arithmetic.power.pow.? x$ (I (nClip y$))) 1)
       ))
       :pattern ((vstd.arithmetic.power.pow.? x$ (I (nClip y$))))
       :qid user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_95
       :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_95
     ))
     (forall ((x$ Poly) (y$ Int)) (!
       (=>
        (has_type x$ INT)
        (=>
         (= y$ 1)
         (= (vstd.arithmetic.power.pow.? x$ (I (nClip y$))) (%I x$))
       ))
       :pattern ((vstd.arithmetic.power.pow.? x$ (I (nClip y$))))
       :qid user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_96
       :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_96
     ))
     (forall ((x$ Int) (y$ Int)) (!
       (=>
        (and
         (< 0 x$)
         (< 0 y$)
        )
        (<= x$ (Mul x$ (nClip y$)))
       )
       :pattern ((Mul x$ (nClip y$)))
       :qid user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_97
       :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_97
     ))
     (forall ((x$ Int) (y$ Int)) (!
       (=>
        (and
         (< 0 x$)
         (< 1 y$)
        )
        (< x$ (Mul x$ (nClip y$)))
       )
       :pattern ((Mul x$ (nClip y$)))
       :qid user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_98
       :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_98
     ))
     (forall ((x$ Poly) (y$ Int) (z$ Int)) (!
       (=>
        (and
         (has_type x$ INT)
         (<= 0 y$)
         (<= 0 z$)
        )
        (= (vstd.arithmetic.power.pow.? x$ (I (nClip (Add y$ z$)))) (Mul (vstd.arithmetic.power.pow.?
           x$ (I y$)
          ) (vstd.arithmetic.power.pow.? x$ (I z$))
       )))
       :pattern ((vstd.arithmetic.power.pow.? x$ (I (nClip (Add y$ z$)))))
       :qid user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_99
       :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_99
     ))
     (forall ((x$ Poly) (y$ Int) (z$ Int)) (!
       (=>
        (and
         (has_type x$ INT)
         (<= 0 y$)
         (<= 0 z$)
        )
        (=>
         (>= y$ z$)
         (= (Mul (vstd.arithmetic.power.pow.? x$ (I (nClip (Sub y$ z$)))) (vstd.arithmetic.power.pow.?
            x$ (I z$)
           )
          ) (vstd.arithmetic.power.pow.? x$ (I y$))
       )))
       :pattern ((vstd.arithmetic.power.pow.? x$ (I (nClip (Sub y$ z$)))))
       :qid user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_100
       :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_100
     ))
     (forall ((x$ Int) (y$ Int) (z$ Poly)) (!
       (=>
        (and
         (<= 0 y$)
         (has_type z$ NAT)
        )
        (= (vstd.arithmetic.power.pow.? (I (Mul x$ y$)) z$) (Mul (vstd.arithmetic.power.pow.?
           (I x$) z$
          ) (vstd.arithmetic.power.pow.? (I y$) z$)
       )))
       :pattern ((vstd.arithmetic.power.pow.? (I (Mul x$ y$)) z$))
       :qid user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_101
       :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_101
   ))))
   :pattern ((ens%vstd.arithmetic.power.lemma_pow_properties_prove_pow_auto. no%param))
   :qid internal_ens__vstd.arithmetic.power.lemma_pow_properties_prove_pow_auto._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power.lemma_pow_properties_prove_pow_auto._definition
)))

;; Function-Def crate::vstd::arithmetic::power::lemma_pow_properties_prove_pow_auto
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power.rs:351:7: 351:47 (#0)
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
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.power.pow.)
    (=>
     (fuel_bool fuel%vstd.arithmetic.power.group_pow_properties.)
     (and
      (=>
       %%location_label%%0
       (forall ((x$ Poly)) (!
         (=>
          (has_type x$ INT)
          (= (vstd.arithmetic.power.pow.? x$ (I 0)) 1)
         )
         :pattern ((vstd.arithmetic.power.pow.? x$ (I 0)))
         :qid user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_102
         :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_102
      )))
      (and
       (=>
        %%location_label%%1
        (forall ((x$ Poly)) (!
          (=>
           (has_type x$ INT)
           (= (vstd.arithmetic.power.pow.? x$ (I 1)) (%I x$))
          )
          :pattern ((vstd.arithmetic.power.pow.? x$ (I 1)))
          :qid user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_103
          :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_103
       )))
       (and
        (=>
         %%location_label%%2
         (forall ((x$ Poly) (y$ Int)) (!
           (=>
            (has_type x$ INT)
            (=>
             (= y$ 0)
             (= (vstd.arithmetic.power.pow.? x$ (I (nClip y$))) 1)
           ))
           :pattern ((vstd.arithmetic.power.pow.? x$ (I (nClip y$))))
           :qid user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_104
           :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_104
        )))
        (and
         (=>
          %%location_label%%3
          (forall ((x$ Poly) (y$ Int)) (!
            (=>
             (has_type x$ INT)
             (=>
              (= y$ 1)
              (= (vstd.arithmetic.power.pow.? x$ (I (nClip y$))) (%I x$))
            ))
            :pattern ((vstd.arithmetic.power.pow.? x$ (I (nClip y$))))
            :qid user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_105
            :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_105
         )))
         (and
          (=>
           %%location_label%%4
           (forall ((x$ Int) (y$ Int)) (!
             (=>
              (and
               (< 0 x$)
               (< 0 y$)
              )
              (<= x$ (Mul x$ (nClip y$)))
             )
             :pattern ((Mul x$ (nClip y$)))
             :qid user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_106
             :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_106
          )))
          (and
           (=>
            %%location_label%%5
            (forall ((x$ Int) (y$ Int)) (!
              (=>
               (and
                (< 0 x$)
                (< 1 y$)
               )
               (< x$ (Mul x$ (nClip y$)))
              )
              :pattern ((Mul x$ (nClip y$)))
              :qid user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_107
              :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_107
           )))
           (and
            (=>
             %%location_label%%6
             (forall ((x$ Poly) (y$ Int) (z$ Int)) (!
               (=>
                (and
                 (has_type x$ INT)
                 (<= 0 y$)
                 (<= 0 z$)
                )
                (= (vstd.arithmetic.power.pow.? x$ (I (nClip (Add y$ z$)))) (Mul (vstd.arithmetic.power.pow.?
                   x$ (I y$)
                  ) (vstd.arithmetic.power.pow.? x$ (I z$))
               )))
               :pattern ((vstd.arithmetic.power.pow.? x$ (I (nClip (Add y$ z$)))))
               :qid user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_108
               :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_108
            )))
            (and
             (=>
              %%location_label%%7
              (forall ((x$ Poly) (y$ Int) (z$ Int)) (!
                (=>
                 (and
                  (has_type x$ INT)
                  (<= 0 y$)
                  (<= 0 z$)
                 )
                 (=>
                  (>= y$ z$)
                  (= (Mul (vstd.arithmetic.power.pow.? x$ (I (nClip (Sub y$ z$)))) (vstd.arithmetic.power.pow.?
                     x$ (I z$)
                    )
                   ) (vstd.arithmetic.power.pow.? x$ (I y$))
                )))
                :pattern ((vstd.arithmetic.power.pow.? x$ (I (nClip (Sub y$ z$)))))
                :qid user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_109
                :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_109
             )))
             (=>
              %%location_label%%8
              (forall ((x$ Int) (y$ Int) (z$ Poly)) (!
                (=>
                 (and
                  (<= 0 y$)
                  (has_type z$ NAT)
                 )
                 (= (vstd.arithmetic.power.pow.? (I (Mul x$ y$)) z$) (Mul (vstd.arithmetic.power.pow.?
                    (I x$) z$
                   ) (vstd.arithmetic.power.pow.? (I y$) z$)
                )))
                :pattern ((vstd.arithmetic.power.pow.? (I (Mul x$ y$)) z$))
                :qid user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_110
                :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_properties_prove_pow_auto_110
 )))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::power::lemma_pow_strictly_increases
(declare-fun req%vstd.arithmetic.power.lemma_pow_strictly_increases. (Int Int Int)
 Bool
)
(declare-const %%global_location_label%%18 Bool)
(declare-const %%global_location_label%%19 Bool)
(assert
 (forall ((b! Int) (e1! Int) (e2! Int)) (!
   (= (req%vstd.arithmetic.power.lemma_pow_strictly_increases. b! e1! e2!) (and
     (=>
      %%global_location_label%%18
      (< 1 b!)
     )
     (=>
      %%global_location_label%%19
      (< e1! e2!)
   )))
   :pattern ((req%vstd.arithmetic.power.lemma_pow_strictly_increases. b! e1! e2!))
   :qid internal_req__vstd.arithmetic.power.lemma_pow_strictly_increases._definition
   :skolemid skolem_internal_req__vstd.arithmetic.power.lemma_pow_strictly_increases._definition
)))
(declare-fun ens%vstd.arithmetic.power.lemma_pow_strictly_increases. (Int Int Int)
 Bool
)
(assert
 (forall ((b! Int) (e1! Int) (e2! Int)) (!
   (= (ens%vstd.arithmetic.power.lemma_pow_strictly_increases. b! e1! e2!) (< (vstd.arithmetic.power.pow.?
      (I b!) (I e1!)
     ) (vstd.arithmetic.power.pow.? (I b!) (I e2!))
   ))
   :pattern ((ens%vstd.arithmetic.power.lemma_pow_strictly_increases. b! e1! e2!))
   :qid internal_ens__vstd.arithmetic.power.lemma_pow_strictly_increases._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power.lemma_pow_strictly_increases._definition
)))

;; Function-Def crate::vstd::arithmetic::power::lemma_pow_strictly_increases
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power.rs:373:1: 373:78 (#0)
(get-info :all-statistics)
(push)
 (declare-const b! Int)
 (declare-const e1! Int)
 (declare-const e2! Int)
 (declare-const i@ Poly)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Int)
 (declare-const tmp%3 Int)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Int)
 (declare-const tmp%6 Bool)
 (declare-const tmp%7 Int)
 (declare-const f@ %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 b!)
 )
 (assert
  (<= 0 e1!)
 )
 (assert
  (<= 0 e2!)
 )
 (assert
  (< 1 b!)
 )
 (assert
  (< e1! e2!)
 )
 (declare-fun %%lambda%%1 (Int Int Poly Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Poly) (%%hole%%3 Int) (e$ Poly))
   (!
    (= (%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) e$) (B (=>
       (< %%hole%%0 (%I e$))
       (< %%hole%%3 (vstd.arithmetic.power.pow.? %%hole%%2 (I (nClip (Add %%hole%%1 (%I e$))))))
    )))
    :pattern ((%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) e$))
 )))
 (declare-const %%switch_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
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
 ;; postcondition not satisfied
 (declare-const %%location_label%%14 Bool)
 (assert
  (not (=>
    (= f@ (mk_fun (%%lambda%%1 0 e1! (I b!) (vstd.arithmetic.power.pow.? (I b!) (I e1!)))))
    (and
     (=>
      (has_type i@ INT)
      (=>
       (and
        (vstd.arithmetic.internals.general_internals.is_le.? (I 0) i@)
        (%B (%%apply%%0 f@ i@))
       )
       (and
        (and
         (=>
          (= tmp%1 (nClip (Add e1! (%I i@))))
          (and
           (=>
            %%location_label%%0
            (req%vstd.arithmetic.power.lemma_pow_positive. b! tmp%1)
           )
           (=>
            (ens%vstd.arithmetic.power.lemma_pow_positive. b! tmp%1)
            (=>
             (= tmp%2 (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Add e1! (%I i@))))))
             (and
              (=>
               %%location_label%%1
               (req%vstd.arithmetic.mul.lemma_mul_left_inequality. tmp%2 1 b!)
              )
              (=>
               (ens%vstd.arithmetic.mul.lemma_mul_left_inequality. tmp%2 1 b!)
               (=>
                %%location_label%%2
                (<= (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Add e1! (%I i@))))) (Mul (vstd.arithmetic.power.pow.?
                   (I b!) (I (nClip (Add e1! (%I i@))))
                  ) b!
         )))))))))
         (=>
          (<= (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Add e1! (%I i@))))) (Mul (vstd.arithmetic.power.pow.?
             (I b!) (I (nClip (Add e1! (%I i@))))
            ) b!
          ))
          (and
           (=>
            (ens%vstd.arithmetic.power.lemma_pow1. b!)
            (=>
             %%location_label%%3
             (<= (Mul (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Add e1! (%I i@))))) b!) (Mul
               (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Add e1! (%I i@))))) (vstd.arithmetic.power.pow.?
                (I b!) (I 1)
           )))))
           (=>
            (<= (Mul (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Add e1! (%I i@))))) b!) (Mul
              (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Add e1! (%I i@))))) (vstd.arithmetic.power.pow.?
               (I b!) (I 1)
            )))
            (and
             (=>
              (= tmp%3 (nClip (Add e1! (%I i@))))
              (=>
               (ens%vstd.arithmetic.power.lemma_pow_adds. b! tmp%3 1)
               (=>
                %%location_label%%4
                (<= (Mul (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Add e1! (%I i@))))) (vstd.arithmetic.power.pow.?
                   (I b!) (I 1)
                  )
                 ) (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Add (Add e1! (%I i@)) 1))))
             ))))
             (=>
              (<= (Mul (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Add e1! (%I i@))))) (vstd.arithmetic.power.pow.?
                 (I b!) (I 1)
                )
               ) (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Add (Add e1! (%I i@)) 1))))
              )
              (=>
               %%location_label%%5
               (<= (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Add e1! (%I i@))))) (vstd.arithmetic.power.pow.?
                 (I b!) (I (nClip (Add (Add e1! (%I i@)) 1)))
        )))))))))
        (=>
         (<= (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Add e1! (%I i@))))) (vstd.arithmetic.power.pow.?
           (I b!) (I (nClip (Add (Add e1! (%I i@)) 1)))
         ))
         (=>
          (= tmp%4 (=>
            (< 0 (%I i@))
            (< (vstd.arithmetic.power.pow.? (I b!) (I e1!)) (vstd.arithmetic.power.pow.? (I b!)
              (I (nClip (Add e1! (%I i@))))
          ))))
          (and
           (=>
            %%location_label%%6
            tmp%4
           )
           (=>
            tmp%4
            (or
             (and
              (=>
               (= (%I i@) 0)
               (and
                (=>
                 (fuel_bool fuel%vstd.arithmetic.power.pow.)
                 (and
                  (and
                   (=>
                    (fuel_bool fuel%vstd.arithmetic.power.lemma_pow_positive.)
                    (=>
                     %%location_label%%7
                     (> (vstd.arithmetic.power.pow.? (I b!) (I e1!)) 0)
                   ))
                   (=>
                    (> (vstd.arithmetic.power.pow.? (I b!) (I e1!)) 0)
                    (=>
                     (= tmp%5 (vstd.arithmetic.power.pow.? (I b!) (I e1!)))
                     (and
                      (=>
                       %%location_label%%8
                       (req%vstd.arithmetic.mul.lemma_mul_strictly_increases. b! tmp%5)
                      )
                      (=>
                       (ens%vstd.arithmetic.mul.lemma_mul_strictly_increases. b! tmp%5)
                       (=>
                        %%location_label%%9
                        (< (vstd.arithmetic.power.pow.? (I b!) (I e1!)) (Mul b! (vstd.arithmetic.power.pow.?
                           (I b!) (I e1!)
                  )))))))))
                  (=>
                   (< (vstd.arithmetic.power.pow.? (I b!) (I e1!)) (Mul b! (vstd.arithmetic.power.pow.?
                      (I b!) (I e1!)
                   )))
                   (=>
                    %%location_label%%10
                    (< (vstd.arithmetic.power.pow.? (I b!) (I e1!)) (vstd.arithmetic.power.pow.? (I b!)
                      (I (nClip (Add e1! 1)))
                ))))))
                (=>
                 (< (vstd.arithmetic.power.pow.? (I b!) (I e1!)) (vstd.arithmetic.power.pow.? (I b!)
                   (I (nClip (Add e1! 1)))
                 ))
                 %%switch_label%%0
              )))
              (=>
               (not (= (%I i@) 0))
               %%switch_label%%0
             ))
             (and
              (not %%switch_label%%0)
              (=>
               (= tmp%6 (%B (%%apply%%0 f@ (I (Add (%I i@) 1)))))
               (and
                (=>
                 %%location_label%%11
                 tmp%6
                )
                (=>
                 tmp%6
                 (=>
                  %%location_label%%12
                  (%B (%%apply%%0 f@ (I (Add (%I i@) 1))))
     )))))))))))))
     (=>
      (forall ((i$ Poly)) (!
        (=>
         (has_type i$ INT)
         (=>
          (and
           (vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$)
           (%B (%%apply%%0 f@ i$))
          )
          (%B (%%apply%%0 f@ (I (Add (%I i$) 1))))
        ))
        :pattern ((vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$))
        :qid user_crate__vstd__arithmetic__power__lemma_pow_strictly_increases_119
        :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_strictly_increases_119
      ))
      (=>
       (= tmp%7 (Sub e2! e1!))
       (and
        (=>
         %%location_label%%13
         (req%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. tmp%7 f@)
        )
        (=>
         (ens%vstd.arithmetic.internals.mul_internals.lemma_mul_induction_auto. tmp%7 f@)
         (=>
          %%location_label%%14
          (< (vstd.arithmetic.power.pow.? (I b!) (I e1!)) (vstd.arithmetic.power.pow.? (I b!)
            (I e2!)
 )))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::power::lemma_pow_strictly_increases
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power.lemma_pow_strictly_increases.)
  (forall ((b! Poly) (e1! Poly) (e2! Poly)) (!
    (=>
     (and
      (has_type b! NAT)
      (has_type e1! NAT)
      (has_type e2! NAT)
     )
     (=>
      (and
       (< 1 (%I b!))
       (< (%I e1!) (%I e2!))
      )
      (< (vstd.arithmetic.power.pow.? b! e1!) (vstd.arithmetic.power.pow.? b! e2!))
    ))
    :pattern ((vstd.arithmetic.power.pow.? b! e1!) (vstd.arithmetic.power.pow.? b! e2!))
    :qid user_crate__vstd__arithmetic__power__lemma_pow_strictly_increases_111
    :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_strictly_increases_111
))))

;; Function-Specs crate::vstd::arithmetic::power::lemma_pow_increases
(declare-fun req%vstd.arithmetic.power.lemma_pow_increases. (Int Int Int) Bool)
(declare-const %%global_location_label%%20 Bool)
(declare-const %%global_location_label%%21 Bool)
(assert
 (forall ((b! Int) (e1! Int) (e2! Int)) (!
   (= (req%vstd.arithmetic.power.lemma_pow_increases. b! e1! e2!) (and
     (=>
      %%global_location_label%%20
      (> b! 0)
     )
     (=>
      %%global_location_label%%21
      (<= e1! e2!)
   )))
   :pattern ((req%vstd.arithmetic.power.lemma_pow_increases. b! e1! e2!))
   :qid internal_req__vstd.arithmetic.power.lemma_pow_increases._definition
   :skolemid skolem_internal_req__vstd.arithmetic.power.lemma_pow_increases._definition
)))
(declare-fun ens%vstd.arithmetic.power.lemma_pow_increases. (Int Int Int) Bool)
(assert
 (forall ((b! Int) (e1! Int) (e2! Int)) (!
   (= (ens%vstd.arithmetic.power.lemma_pow_increases. b! e1! e2!) (<= (vstd.arithmetic.power.pow.?
      (I b!) (I e1!)
     ) (vstd.arithmetic.power.pow.? (I b!) (I e2!))
   ))
   :pattern ((ens%vstd.arithmetic.power.lemma_pow_increases. b! e1! e2!))
   :qid internal_ens__vstd.arithmetic.power.lemma_pow_increases._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power.lemma_pow_increases._definition
)))

;; Function-Def crate::vstd::arithmetic::power::lemma_pow_increases
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power.rs:418:1: 418:69 (#0)
(get-info :all-statistics)
(push)
 (declare-const b! Int)
 (declare-const e1! Int)
 (declare-const e2! Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 b!)
 )
 (assert
  (<= 0 e1!)
 )
 (assert
  (<= 0 e2!)
 )
 (assert
  (> b! 0)
 )
 (assert
  (<= e1! e2!)
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (or
    (and
     (=>
      (not (= e1! e2!))
      (or
       (and
        (=>
         (> b! 1)
         (and
          (=>
           %%location_label%%0
           (req%vstd.arithmetic.power.lemma_pow_strictly_increases. b! e1! e2!)
          )
          (=>
           (ens%vstd.arithmetic.power.lemma_pow_strictly_increases. b! e1! e2!)
           %%switch_label%%1
        )))
        (=>
         (not (> b! 1))
         (=>
          (ens%vstd.arithmetic.power.lemma1_pow. e1!)
          (=>
           (ens%vstd.arithmetic.power.lemma1_pow. e2!)
           %%switch_label%%1
       ))))
       (and
        (not %%switch_label%%1)
        %%switch_label%%0
     )))
     (=>
      (not (not (= e1! e2!)))
      %%switch_label%%0
    ))
    (and
     (not %%switch_label%%0)
     (=>
      %%location_label%%1
      (<= (vstd.arithmetic.power.pow.? (I b!) (I e1!)) (vstd.arithmetic.power.pow.? (I b!)
        (I e2!)
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::power::lemma_pow_increases
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power.lemma_pow_increases.)
  (forall ((b! Poly) (e1! Poly) (e2! Poly)) (!
    (=>
     (and
      (has_type b! NAT)
      (has_type e1! NAT)
      (has_type e2! NAT)
     )
     (=>
      (and
       (> (%I b!) 0)
       (<= (%I e1!) (%I e2!))
      )
      (<= (vstd.arithmetic.power.pow.? b! e1!) (vstd.arithmetic.power.pow.? b! e2!))
    ))
    :pattern ((vstd.arithmetic.power.pow.? b! e1!) (vstd.arithmetic.power.pow.? b! e2!))
    :qid user_crate__vstd__arithmetic__power__lemma_pow_increases_120
    :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_increases_120
))))

;; Function-Def crate::vstd::arithmetic::power::lemma_pow_strictly_increases_converse
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power.rs:438:1: 438:87 (#0)
(get-info :all-statistics)
(push)
 (declare-const b! Int)
 (declare-const e1! Int)
 (declare-const e2! Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 b!)
 )
 (assert
  (<= 0 e1!)
 )
 (assert
  (<= 0 e2!)
 )
 (assert
  (> b! 0)
 )
 (assert
  (< (vstd.arithmetic.power.pow.? (I b!) (I e1!)) (vstd.arithmetic.power.pow.? (I b!)
    (I e2!)
 )))
 (declare-const %%switch_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (or
    (and
     (=>
      (>= e1! e2!)
      (and
       (=>
        %%location_label%%0
        (req%vstd.arithmetic.power.lemma_pow_increases. b! e2! e1!)
       )
       (=>
        (ens%vstd.arithmetic.power.lemma_pow_increases. b! e2! e1!)
        (=>
         %%location_label%%1
         false
     ))))
     (=>
      (not (>= e1! e2!))
      %%switch_label%%0
    ))
    (and
     (not %%switch_label%%0)
     (=>
      %%location_label%%2
      (< e1! e2!)
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::power::lemma_pow_strictly_increases_converse
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power.lemma_pow_strictly_increases_converse.)
  (forall ((b! Poly) (e1! Poly) (e2! Poly)) (!
    (=>
     (and
      (has_type b! NAT)
      (has_type e1! NAT)
      (has_type e2! NAT)
     )
     (=>
      (and
       (> (%I b!) 0)
       (< (vstd.arithmetic.power.pow.? b! e1!) (vstd.arithmetic.power.pow.? b! e2!))
      )
      (< (%I e1!) (%I e2!))
    ))
    :pattern ((vstd.arithmetic.power.pow.? b! e1!) (vstd.arithmetic.power.pow.? b! e2!))
    :qid user_crate__vstd__arithmetic__power__lemma_pow_strictly_increases_converse_121
    :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_strictly_increases_converse_121
))))

;; Function-Def crate::vstd::arithmetic::power::lemma_pow_increases_converse
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power.rs:455:1: 455:78 (#0)
(get-info :all-statistics)
(push)
 (declare-const b! Int)
 (declare-const e1! Int)
 (declare-const e2! Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 b!)
 )
 (assert
  (<= 0 e1!)
 )
 (assert
  (<= 0 e2!)
 )
 (assert
  (< 1 b!)
 )
 (assert
  (<= (vstd.arithmetic.power.pow.? (I b!) (I e1!)) (vstd.arithmetic.power.pow.? (I b!)
    (I e2!)
 )))
 (declare-const %%switch_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (or
    (and
     (=>
      (> e1! e2!)
      (and
       (=>
        %%location_label%%0
        (req%vstd.arithmetic.power.lemma_pow_strictly_increases. b! e2! e1!)
       )
       (=>
        (ens%vstd.arithmetic.power.lemma_pow_strictly_increases. b! e2! e1!)
        (=>
         %%location_label%%1
         false
     ))))
     (=>
      (not (> e1! e2!))
      %%switch_label%%0
    ))
    (and
     (not %%switch_label%%0)
     (=>
      %%location_label%%2
      (<= e1! e2!)
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::power::lemma_pow_increases_converse
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power.lemma_pow_increases_converse.)
  (forall ((b! Poly) (e1! Poly) (e2! Poly)) (!
    (=>
     (and
      (has_type b! NAT)
      (has_type e1! NAT)
      (has_type e2! NAT)
     )
     (=>
      (and
       (< 1 (%I b!))
       (<= (vstd.arithmetic.power.pow.? b! e1!) (vstd.arithmetic.power.pow.? b! e2!))
      )
      (<= (%I e1!) (%I e2!))
    ))
    :pattern ((vstd.arithmetic.power.pow.? b! e1!) (vstd.arithmetic.power.pow.? b! e2!))
    :qid user_crate__vstd__arithmetic__power__lemma_pow_increases_converse_122
    :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_increases_converse_122
))))

;; Function-Def crate::vstd::arithmetic::power::lemma_pull_out_pows
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power.rs:470:1: 470:75 (#0)
(get-info :all-statistics)
(push)
 (declare-const b! Int)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const z! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 b!)
 )
 (assert
  (<= 0 x!)
 )
 (assert
  (<= 0 y!)
 )
 (assert
  (<= 0 z!)
 )
 (assert
  (> b! 0)
 )
 ;; precondition not satisfied
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
 ;; postcondition not satisfied
 (declare-const %%location_label%%6 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%7 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%8 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.mul.lemma_mul_nonnegative. x! y!)
    )
    (=>
     (ens%vstd.arithmetic.mul.lemma_mul_nonnegative. x! y!)
     (and
      (=>
       %%location_label%%1
       (req%vstd.arithmetic.mul.lemma_mul_nonnegative. y! z!)
      )
      (=>
       (ens%vstd.arithmetic.mul.lemma_mul_nonnegative. y! z!)
       (and
        (=>
         %%location_label%%2
         (req%vstd.arithmetic.power.lemma_pow_positive. b! x!)
        )
        (=>
         (ens%vstd.arithmetic.power.lemma_pow_positive. b! x!)
         (and
          (and
           (=>
            (ens%vstd.arithmetic.power.lemma_pow_multiplies. b! x! y!)
            (=>
             %%location_label%%3
             (= (vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Mul x!
                    y!
                ))))
               ) (I z!)
              ) (vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.?
                   (I b!) (I x!)
                  )
                 ) (I y!)
                )
               ) (I z!)
           ))))
           (=>
            (= (vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Mul x!
                   y!
               ))))
              ) (I z!)
             ) (vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.?
                  (I b!) (I x!)
                 )
                ) (I y!)
               )
              ) (I z!)
            ))
            (and
             (=>
              (= tmp%1 (vstd.arithmetic.power.pow.? (I b!) (I x!)))
              (=>
               (ens%vstd.arithmetic.power.lemma_pow_multiplies. tmp%1 y! z!)
               (=>
                %%location_label%%4
                (= (vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.?
                      (I b!) (I x!)
                     )
                    ) (I y!)
                   )
                  ) (I z!)
                 ) (vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.? (I b!) (I x!))) (I (
                    nClip (Mul y! z!)
             )))))))
             (=>
              (= (vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.?
                    (I b!) (I x!)
                   )
                  ) (I y!)
                 )
                ) (I z!)
               ) (vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.? (I b!) (I x!))) (I (
                  nClip (Mul y! z!)
              ))))
              (=>
               %%location_label%%5
               (= (vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Mul x!
                      y!
                  ))))
                 ) (I z!)
                ) (vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.? (I b!) (I x!))) (I (
                   nClip (Mul y! z!)
          )))))))))
          (=>
           (= (vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Mul x!
                  y!
              ))))
             ) (I z!)
            ) (vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.? (I b!) (I x!))) (I (
               nClip (Mul y! z!)
           ))))
           (and
            (=>
             %%location_label%%6
             (<= 0 (nClip (Mul x! y!)))
            )
            (and
             (=>
              %%location_label%%7
              (<= 0 (nClip (Mul y! z!)))
             )
             (=>
              %%location_label%%8
              (= (vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Mul x!
                     y!
                 ))))
                ) (I z!)
               ) (vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.? (I b!) (I x!))) (I (
                  nClip (Mul y! z!)
 )))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::power::lemma_pull_out_pows
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power.lemma_pull_out_pows.)
  (forall ((b! Poly) (x! Int) (y! Int) (z! Poly)) (!
    (=>
     (and
      (has_type b! NAT)
      (<= 0 x!)
      (<= 0 y!)
      (has_type z! NAT)
     )
     (=>
      (> (%I b!) 0)
      (and
       (and
        (<= 0 (nClip (Mul x! y!)))
        (<= 0 (nClip (Mul y! (%I z!))))
       )
       (= (vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.? b! (I (nClip (Mul x! y!)))))
         z!
        ) (vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.? b! (I x!))) (I (nClip
           (Mul y! (%I z!))
    )))))))
    :pattern ((vstd.arithmetic.power.pow.? (I (vstd.arithmetic.power.pow.? b! (I (nClip (Mul
           x! y!
       ))))
      ) z!
    ))
    :qid user_crate__vstd__arithmetic__power__lemma_pull_out_pows_123
    :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pull_out_pows_123
))))

;; Function-Specs crate::vstd::arithmetic::power::lemma_pow_division_inequality
(declare-fun req%vstd.arithmetic.power.lemma_pow_division_inequality. (Int Int Int
  Int
 ) Bool
)
(declare-const %%global_location_label%%22 Bool)
(declare-const %%global_location_label%%23 Bool)
(declare-const %%global_location_label%%24 Bool)
(assert
 (forall ((x! Int) (b! Int) (e1! Int) (e2! Int)) (!
   (= (req%vstd.arithmetic.power.lemma_pow_division_inequality. x! b! e1! e2!) (and
     (=>
      %%global_location_label%%22
      (> b! 0)
     )
     (=>
      %%global_location_label%%23
      (<= e2! e1!)
     )
     (=>
      %%global_location_label%%24
      (< x! (vstd.arithmetic.power.pow.? (I b!) (I e1!)))
   )))
   :pattern ((req%vstd.arithmetic.power.lemma_pow_division_inequality. x! b! e1! e2!))
   :qid internal_req__vstd.arithmetic.power.lemma_pow_division_inequality._definition
   :skolemid skolem_internal_req__vstd.arithmetic.power.lemma_pow_division_inequality._definition
)))
(declare-fun ens%vstd.arithmetic.power.lemma_pow_division_inequality. (Int Int Int
  Int
 ) Bool
)
(assert
 (forall ((x! Int) (b! Int) (e1! Int) (e2! Int)) (!
   (= (ens%vstd.arithmetic.power.lemma_pow_division_inequality. x! b! e1! e2!) (and
     (> (vstd.arithmetic.power.pow.? (I b!) (I e2!)) 0)
     (< (EucDiv x! (vstd.arithmetic.power.pow.? (I b!) (I e2!))) (vstd.arithmetic.power.pow.?
       (I b!) (I (nClip (Sub e1! e2!)))
   ))))
   :pattern ((ens%vstd.arithmetic.power.lemma_pow_division_inequality. x! b! e1! e2!))
   :qid internal_ens__vstd.arithmetic.power.lemma_pow_division_inequality._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power.lemma_pow_division_inequality._definition
)))

;; Function-Def crate::vstd::arithmetic::power::lemma_pow_division_inequality
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power.rs:495:1: 495:77 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const b! Int)
 (declare-const e1! Int)
 (declare-const e2! Int)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Int)
 (declare-const tmp%3 Int)
 (declare-const tmp%4 Int)
 (declare-const tmp%5 Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 x!)
 )
 (assert
  (<= 0 b!)
 )
 (assert
  (<= 0 e1!)
 )
 (assert
  (<= 0 e2!)
 )
 (assert
  (> b! 0)
 )
 (assert
  (<= e2! e1!)
 )
 (assert
  (< x! (vstd.arithmetic.power.pow.? (I b!) (I e1!)))
 )
 (declare-const %%switch_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.power.lemma_pow_positive.)
    (and
     (or
      (and
       (=>
        (>= (EucDiv x! (vstd.arithmetic.power.pow.? (I b!) (I e2!))) (vstd.arithmetic.power.pow.?
          (I b!) (I (nClip (Sub e1! e2!)))
        ))
        (=>
         (= tmp%1 (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e1! e2!)))))
         (=>
          (= tmp%2 (EucDiv x! (vstd.arithmetic.power.pow.? (I b!) (I e2!))))
          (=>
           (= tmp%3 (vstd.arithmetic.power.pow.? (I b!) (I e2!)))
           (and
            (=>
             %%location_label%%0
             (req%vstd.arithmetic.mul.lemma_mul_inequality. tmp%1 tmp%2 tmp%3)
            )
            (=>
             (ens%vstd.arithmetic.mul.lemma_mul_inequality. tmp%1 tmp%2 tmp%3)
             (=>
              (= tmp%4 (vstd.arithmetic.power.pow.? (I b!) (I e2!)))
              (and
               (=>
                %%location_label%%1
                (req%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. x! tmp%4)
               )
               (=>
                (ens%vstd.arithmetic.div_mod.lemma_fundamental_div_mod. x! tmp%4)
                (=>
                 (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_commutative.)
                 (=>
                  (fuel_bool fuel%vstd.arithmetic.div_mod.group_mod_properties.)
                  (=>
                   (= tmp%5 (nClip (Sub e1! e2!)))
                   (=>
                    (ens%vstd.arithmetic.power.lemma_pow_adds. b! tmp%5 e2!)
                    %%switch_label%%0
       )))))))))))))
       (=>
        (not (>= (EucDiv x! (vstd.arithmetic.power.pow.? (I b!) (I e2!))) (vstd.arithmetic.power.pow.?
           (I b!) (I (nClip (Sub e1! e2!)))
        )))
        %%switch_label%%0
      ))
      (and
       (not %%switch_label%%0)
       (=>
        %%location_label%%2
        (not (>= (EucDiv x! (vstd.arithmetic.power.pow.? (I b!) (I e2!))) (vstd.arithmetic.power.pow.?
           (I b!) (I (nClip (Sub e1! e2!)))
     ))))))
     (=>
      (not (>= (EucDiv x! (vstd.arithmetic.power.pow.? (I b!) (I e2!))) (vstd.arithmetic.power.pow.?
         (I b!) (I (nClip (Sub e1! e2!)))
      )))
      (and
       (=>
        %%location_label%%3
        (> (vstd.arithmetic.power.pow.? (I b!) (I e2!)) 0)
       )
       (=>
        %%location_label%%4
        (< (EucDiv x! (vstd.arithmetic.power.pow.? (I b!) (I e2!))) (vstd.arithmetic.power.pow.?
          (I b!) (I (nClip (Sub e1! e2!)))
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::vstd::arithmetic::power::lemma_pow_mod
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power.rs:524:1: 524:53 (#0)
(get-info :all-statistics)
(push)
 (declare-const b! Int)
 (declare-const e! Int)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 b!)
 )
 (assert
  (<= 0 e!)
 )
 (assert
  (> b! 0)
 )
 (assert
  (> e! 0)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.power.pow.)
    (=>
     (= tmp%1 (= (EucMod (vstd.arithmetic.power.pow.? (I b!) (I e!)) b!) (EucMod (Mul b! (
          vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e! 1)))
         )
        ) b!
     )))
     (and
      (=>
       %%location_label%%0
       tmp%1
      )
      (=>
       tmp%1
       (and
        (=>
         (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_commutative.)
         (=>
          %%location_label%%1
          (= (EucMod (Mul b! (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e! 1))))) b!)
           (EucMod (Mul (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e! 1)))) b!) b!)
        )))
        (=>
         (= (EucMod (Mul b! (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e! 1))))) b!)
          (EucMod (Mul (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e! 1)))) b!) b!)
         )
         (and
          (=>
           (fuel_bool fuel%vstd.arithmetic.power.lemma_pow_positive.)
           (=>
            (= tmp%2 (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e! 1)))))
            (and
             (=>
              %%location_label%%2
              (req%vstd.arithmetic.div_mod.lemma_mod_multiples_basic. tmp%2 b!)
             )
             (=>
              (ens%vstd.arithmetic.div_mod.lemma_mod_multiples_basic. tmp%2 b!)
              (=>
               %%location_label%%3
               (= (EucMod (Mul (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e! 1)))) b!) b!)
                0
          ))))))
          (=>
           (= (EucMod (Mul (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e! 1)))) b!) b!)
            0
           )
           (=>
            %%location_label%%4
            (= (EucMod (vstd.arithmetic.power.pow.? (I b!) (I e!)) b!) 0)
 )))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::power::lemma_pow_mod
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power.lemma_pow_mod.)
  (forall ((b! Poly) (e! Poly)) (!
    (=>
     (and
      (has_type b! NAT)
      (has_type e! NAT)
     )
     (=>
      (and
       (> (%I b!) 0)
       (> (%I e!) 0)
      )
      (= (EucMod (vstd.arithmetic.power.pow.? b! e!) (%I b!)) 0)
    ))
    :pattern ((vstd.arithmetic.power.pow.? b! e!))
    :qid user_crate__vstd__arithmetic__power__lemma_pow_mod_128
    :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_mod_128
))))

;; Function-Specs crate::vstd::arithmetic::power::lemma_pow_mod_noop
(declare-fun req%vstd.arithmetic.power.lemma_pow_mod_noop. (Int Int Int) Bool)
(declare-const %%global_location_label%%25 Bool)
(assert
 (forall ((b! Int) (e! Int) (m! Int)) (!
   (= (req%vstd.arithmetic.power.lemma_pow_mod_noop. b! e! m!) (=>
     %%global_location_label%%25
     (> m! 0)
   ))
   :pattern ((req%vstd.arithmetic.power.lemma_pow_mod_noop. b! e! m!))
   :qid internal_req__vstd.arithmetic.power.lemma_pow_mod_noop._definition
   :skolemid skolem_internal_req__vstd.arithmetic.power.lemma_pow_mod_noop._definition
)))
(declare-fun ens%vstd.arithmetic.power.lemma_pow_mod_noop. (Int Int Int) Bool)
(assert
 (forall ((b! Int) (e! Int) (m! Int)) (!
   (= (ens%vstd.arithmetic.power.lemma_pow_mod_noop. b! e! m!) (= (EucMod (vstd.arithmetic.power.pow.?
       (I (EucMod b! m!)) (I e!)
      ) m!
     ) (EucMod (vstd.arithmetic.power.pow.? (I b!) (I e!)) m!)
   ))
   :pattern ((ens%vstd.arithmetic.power.lemma_pow_mod_noop. b! e! m!))
   :qid internal_ens__vstd.arithmetic.power.lemma_pow_mod_noop._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power.lemma_pow_mod_noop._definition
)))

;; Function-Def crate::vstd::arithmetic::power::lemma_pow_mod_noop
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power.rs:562:1: 562:66 (#0)
(get-info :all-statistics)
(push)
 (declare-const b! Int)
 (declare-const e! Int)
 (declare-const m! Int)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Int)
 (declare-const tmp%3 Int)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 e!)
 )
 (assert
  (> m! 0)
 )
 (declare-const %%switch_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; could not prove termination
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
 ;; assertion failed
 (declare-const %%location_label%%9 Bool)
 ;; assertion failed
 (declare-const %%location_label%%10 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%11 Bool)
 (assert
  (not (=>
    (= decrease%init0 e!)
    (=>
     (fuel_bool fuel%vstd.arithmetic.power.pow.)
     (=>
      (fuel_bool fuel%vstd.arithmetic.div_mod.group_mod_properties.)
      (or
       (and
        (=>
         (> e! 0)
         (and
          (and
           (=>
            %%location_label%%0
            (= (EucMod (vstd.arithmetic.power.pow.? (I (EucMod b! m!)) (I e!)) m!) (EucMod (Mul
               (EucMod b! m!) (vstd.arithmetic.power.pow.? (I (EucMod b! m!)) (I (nClip (Sub e! 1))))
              ) m!
           )))
           (=>
            (= (EucMod (vstd.arithmetic.power.pow.? (I (EucMod b! m!)) (I e!)) m!) (EucMod (Mul
               (EucMod b! m!) (vstd.arithmetic.power.pow.? (I (EucMod b! m!)) (I (nClip (Sub e! 1))))
              ) m!
            ))
            (and
             (=>
              (= tmp%1 (vstd.arithmetic.power.pow.? (I (EucMod b! m!)) (I (nClip (Sub e! 1)))))
              (and
               (=>
                %%location_label%%1
                (req%vstd.arithmetic.div_mod.lemma_mul_mod_noop_general. b! tmp%1 m!)
               )
               (=>
                (ens%vstd.arithmetic.div_mod.lemma_mul_mod_noop_general. b! tmp%1 m!)
                (=>
                 %%location_label%%2
                 (= (EucMod (Mul (EucMod b! m!) (vstd.arithmetic.power.pow.? (I (EucMod b! m!)) (I (nClip
                       (Sub e! 1)
                    )))
                   ) m!
                  ) (EucMod (EucMod (Mul (EucMod b! m!) (EucMod (vstd.arithmetic.power.pow.? (I (EucMod b!
                         m!
                        )
                       ) (I (nClip (Sub e! 1)))
                      ) m!
                     )
                    ) m!
                   ) m!
             ))))))
             (=>
              (= (EucMod (Mul (EucMod b! m!) (vstd.arithmetic.power.pow.? (I (EucMod b! m!)) (I (nClip
                    (Sub e! 1)
                 )))
                ) m!
               ) (EucMod (EucMod (Mul (EucMod b! m!) (EucMod (vstd.arithmetic.power.pow.? (I (EucMod b!
                      m!
                     )
                    ) (I (nClip (Sub e! 1)))
                   ) m!
                  )
                 ) m!
                ) m!
              ))
              (and
               (=>
                (= tmp%2 (nClip (Sub e! 1)))
                (and
                 (=>
                  %%location_label%%3
                  (check_decrease_int (let
                    ((b!$0 b!) (e!$1 tmp%2) (m!$2 m!))
                    e!$1
                   ) decrease%init0 false
                 ))
                 (and
                  (=>
                   %%location_label%%4
                   (req%vstd.arithmetic.power.lemma_pow_mod_noop. b! tmp%2 m!)
                  )
                  (=>
                   (ens%vstd.arithmetic.power.lemma_pow_mod_noop. b! tmp%2 m!)
                   (=>
                    %%location_label%%5
                    (= (EucMod (EucMod (Mul (EucMod b! m!) (EucMod (vstd.arithmetic.power.pow.? (I (EucMod b!
                            m!
                           )
                          ) (I (nClip (Sub e! 1)))
                         ) m!
                        )
                       ) m!
                      ) m!
                     ) (EucMod (EucMod (Mul (EucMod b! m!) (EucMod (vstd.arithmetic.power.pow.? (I b!) (I (nClip
                            (Sub e! 1)
                          ))
                         ) m!
                        )
                       ) m!
                      ) m!
               )))))))
               (=>
                (= (EucMod (EucMod (Mul (EucMod b! m!) (EucMod (vstd.arithmetic.power.pow.? (I (EucMod b!
                        m!
                       )
                      ) (I (nClip (Sub e! 1)))
                     ) m!
                    )
                   ) m!
                  ) m!
                 ) (EucMod (EucMod (Mul (EucMod b! m!) (EucMod (vstd.arithmetic.power.pow.? (I b!) (I (nClip
                        (Sub e! 1)
                      ))
                     ) m!
                    )
                   ) m!
                  ) m!
                ))
                (and
                 (=>
                  (= tmp%3 (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e! 1)))))
                  (and
                   (=>
                    %%location_label%%6
                    (req%vstd.arithmetic.div_mod.lemma_mul_mod_noop_general. b! tmp%3 m!)
                   )
                   (=>
                    (ens%vstd.arithmetic.div_mod.lemma_mul_mod_noop_general. b! tmp%3 m!)
                    (=>
                     %%location_label%%7
                     (= (EucMod (EucMod (Mul (EucMod b! m!) (EucMod (vstd.arithmetic.power.pow.? (I b!) (I (nClip
                             (Sub e! 1)
                           ))
                          ) m!
                         )
                        ) m!
                       ) m!
                      ) (EucMod (EucMod (Mul b! (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e! 1)))))
                        m!
                       ) m!
                 ))))))
                 (=>
                  (= (EucMod (EucMod (Mul (EucMod b! m!) (EucMod (vstd.arithmetic.power.pow.? (I b!) (I (nClip
                          (Sub e! 1)
                        ))
                       ) m!
                      )
                     ) m!
                    ) m!
                   ) (EucMod (EucMod (Mul b! (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e! 1)))))
                     m!
                    ) m!
                  ))
                  (and
                   (=>
                    %%location_label%%8
                    (= (EucMod (EucMod (Mul b! (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e! 1)))))
                       m!
                      ) m!
                     ) (EucMod (Mul b! (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e! 1))))) m!)
                   ))
                   (=>
                    (= (EucMod (EucMod (Mul b! (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e! 1)))))
                       m!
                      ) m!
                     ) (EucMod (Mul b! (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e! 1))))) m!)
                    )
                    (and
                     (=>
                      %%location_label%%9
                      (= (EucMod (Mul b! (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e! 1))))) m!)
                       (EucMod (vstd.arithmetic.power.pow.? (I b!) (I e!)) m!)
                     ))
                     (=>
                      (= (EucMod (Mul b! (vstd.arithmetic.power.pow.? (I b!) (I (nClip (Sub e! 1))))) m!)
                       (EucMod (vstd.arithmetic.power.pow.? (I b!) (I e!)) m!)
                      )
                      (=>
                       %%location_label%%10
                       (= (EucMod (vstd.arithmetic.power.pow.? (I (EucMod b! m!)) (I e!)) m!) (EucMod (vstd.arithmetic.power.pow.?
                          (I b!) (I e!)
                         ) m!
          )))))))))))))))
          (=>
           (= (EucMod (vstd.arithmetic.power.pow.? (I (EucMod b! m!)) (I e!)) m!) (EucMod (vstd.arithmetic.power.pow.?
              (I b!) (I e!)
             ) m!
           ))
           %%switch_label%%0
        )))
        (=>
         (not (> e! 0))
         %%switch_label%%0
       ))
       (and
        (not %%switch_label%%0)
        (=>
         %%location_label%%11
         (= (EucMod (vstd.arithmetic.power.pow.? (I (EucMod b! m!)) (I e!)) m!) (EucMod (vstd.arithmetic.power.pow.?
            (I b!) (I e!)
           ) m!
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::power::lemma_pow_mod_noop
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power.lemma_pow_mod_noop.)
  (forall ((b! Int) (e! Poly) (m! Int)) (!
    (=>
     (has_type e! NAT)
     (=>
      (> m! 0)
      (= (EucMod (vstd.arithmetic.power.pow.? (I (EucMod b! m!)) e!) m!) (EucMod (vstd.arithmetic.power.pow.?
         (I b!) e!
        ) m!
    ))))
    :pattern ((vstd.arithmetic.power.pow.? (I (EucMod b! m!)) e!))
    :qid user_crate__vstd__arithmetic__power__lemma_pow_mod_noop_131
    :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_mod_noop_131
))))
