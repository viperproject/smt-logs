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

;; MODULE 'module vstd::bits'
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/bits.rs:48:17: 48:23 (#1094)

;; query spun off because: bitvector

;; Fuel
(declare-const fuel%vstd.arithmetic.div_mod.lemma_div_denominator. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mod_multiples_vanish. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_mod_breakdown. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_is_associative. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_is_commutative. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_inequality. FuelId)
(declare-const fuel%vstd.arithmetic.power.pow. FuelId)
(declare-const fuel%vstd.arithmetic.power2.pow2. FuelId)
(declare-const fuel%vstd.arithmetic.power2.lemma_pow2_pos. FuelId)
(declare-const fuel%vstd.arithmetic.power2.lemma_pow2_unfold. FuelId)
(declare-const fuel%vstd.arithmetic.power2.lemma_pow2_adds. FuelId)
(declare-const fuel%vstd.arithmetic.power2.lemma_pow2_strictly_increases. FuelId)
(declare-const fuel%vstd.bits.lemma_u64_shr_is_div. FuelId)
(declare-const fuel%vstd.bits.lemma_u32_shr_is_div. FuelId)
(declare-const fuel%vstd.bits.lemma_u16_shr_is_div. FuelId)
(declare-const fuel%vstd.bits.lemma_u8_shr_is_div. FuelId)
(declare-const fuel%vstd.bits.lemma_u64_pow2_no_overflow. FuelId)
(declare-const fuel%vstd.bits.lemma_u32_pow2_no_overflow. FuelId)
(declare-const fuel%vstd.bits.lemma_u16_pow2_no_overflow. FuelId)
(declare-const fuel%vstd.bits.lemma_u8_pow2_no_overflow. FuelId)
(declare-const fuel%vstd.bits.lemma_u64_shl_is_mul. FuelId)
(declare-const fuel%vstd.bits.lemma_u32_shl_is_mul. FuelId)
(declare-const fuel%vstd.bits.lemma_u16_shl_is_mul. FuelId)
(declare-const fuel%vstd.bits.lemma_u8_shl_is_mul. FuelId)
(declare-const fuel%vstd.bits.low_bits_mask. FuelId)
(declare-const fuel%vstd.bits.lemma_low_bits_mask_unfold. FuelId)
(declare-const fuel%vstd.bits.lemma_low_bits_mask_is_odd. FuelId)
(declare-const fuel%vstd.bits.lemma_low_bits_mask_div2. FuelId)
(declare-const fuel%vstd.bits.lemma_u64_low_bits_mask_is_mod. FuelId)
(declare-const fuel%vstd.bits.lemma_u32_low_bits_mask_is_mod. FuelId)
(declare-const fuel%vstd.bits.lemma_u16_low_bits_mask_is_mod. FuelId)
(declare-const fuel%vstd.bits.lemma_u8_low_bits_mask_is_mod. FuelId)
(assert
 (distinct fuel%vstd.arithmetic.div_mod.lemma_div_denominator. fuel%vstd.arithmetic.div_mod.lemma_mod_multiples_vanish.
  fuel%vstd.arithmetic.div_mod.lemma_mod_breakdown. fuel%vstd.arithmetic.mul.lemma_mul_is_associative.
  fuel%vstd.arithmetic.mul.lemma_mul_is_commutative. fuel%vstd.arithmetic.mul.lemma_mul_inequality.
  fuel%vstd.arithmetic.power.pow. fuel%vstd.arithmetic.power2.pow2. fuel%vstd.arithmetic.power2.lemma_pow2_pos.
  fuel%vstd.arithmetic.power2.lemma_pow2_unfold. fuel%vstd.arithmetic.power2.lemma_pow2_adds.
  fuel%vstd.arithmetic.power2.lemma_pow2_strictly_increases. fuel%vstd.bits.lemma_u64_shr_is_div.
  fuel%vstd.bits.lemma_u32_shr_is_div. fuel%vstd.bits.lemma_u16_shr_is_div. fuel%vstd.bits.lemma_u8_shr_is_div.
  fuel%vstd.bits.lemma_u64_pow2_no_overflow. fuel%vstd.bits.lemma_u32_pow2_no_overflow.
  fuel%vstd.bits.lemma_u16_pow2_no_overflow. fuel%vstd.bits.lemma_u8_pow2_no_overflow.
  fuel%vstd.bits.lemma_u64_shl_is_mul. fuel%vstd.bits.lemma_u32_shl_is_mul. fuel%vstd.bits.lemma_u16_shl_is_mul.
  fuel%vstd.bits.lemma_u8_shl_is_mul. fuel%vstd.bits.low_bits_mask. fuel%vstd.bits.lemma_low_bits_mask_unfold.
  fuel%vstd.bits.lemma_low_bits_mask_is_odd. fuel%vstd.bits.lemma_low_bits_mask_div2.
  fuel%vstd.bits.lemma_u64_low_bits_mask_is_mod. fuel%vstd.bits.lemma_u32_low_bits_mask_is_mod.
  fuel%vstd.bits.lemma_u16_low_bits_mask_is_mod. fuel%vstd.bits.lemma_u8_low_bits_mask_is_mod.
))

;; Datatypes
(declare-datatypes ((tuple%0. 0)) (((tuple%0./tuple%0))))
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
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

;; Function-Decl crate::vstd::arithmetic::power::pow
(declare-fun vstd.arithmetic.power.pow.? (Poly Poly) Int)
(declare-fun vstd.arithmetic.power.rec%pow.? (Poly Poly Fuel) Int)

;; Function-Decl crate::vstd::arithmetic::power2::pow2
(declare-fun vstd.arithmetic.power2.pow2.? (Poly) Int)

;; Function-Decl crate::vstd::bits::low_bits_mask
(declare-fun vstd.bits.low_bits_mask.? (Poly) Int)

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

;; Function-Axioms crate::vstd::arithmetic::power2::pow2
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power2.pow2.)
  (forall ((e! Poly)) (!
    (=>
     (has_type e! NAT)
     (= (vstd.arithmetic.power2.pow2.? e!) (nClip (vstd.arithmetic.power.pow.? (I 2) e!)))
    )
    :pattern ((vstd.arithmetic.power2.pow2.? e!))
    :qid internal_vstd.arithmetic.power2.pow2.?_definition
    :skolemid skolem_internal_vstd.arithmetic.power2.pow2.?_definition
))))
(assert
 (forall ((e! Poly)) (!
   (=>
    (has_type e! NAT)
    (<= 0 (vstd.arithmetic.power2.pow2.? e!))
   )
   :pattern ((vstd.arithmetic.power2.pow2.? e!))
   :qid internal_vstd.arithmetic.power2.pow2.?_pre_post_definition
   :skolemid skolem_internal_vstd.arithmetic.power2.pow2.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::bits::low_bits_mask
(assert
 (fuel_bool_default fuel%vstd.bits.low_bits_mask.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.bits.low_bits_mask.)
  (forall ((n! Poly)) (!
    (= (vstd.bits.low_bits_mask.? n!) (nClip (Sub (vstd.arithmetic.power2.pow2.? n!) 1)))
    :pattern ((vstd.bits.low_bits_mask.? n!))
    :qid internal_vstd.bits.low_bits_mask.?_definition
    :skolemid skolem_internal_vstd.bits.low_bits_mask.?_definition
))))
(assert
 (forall ((n! Poly)) (!
   (=>
    (has_type n! NAT)
    (<= 0 (vstd.bits.low_bits_mask.? n!))
   )
   :pattern ((vstd.bits.low_bits_mask.? n!))
   :qid internal_vstd.bits.low_bits_mask.?_pre_post_definition
   :skolemid skolem_internal_vstd.bits.low_bits_mask.?_pre_post_definition
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
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_is_commutative_0
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_is_commutative_0
))))

;; Function-Specs crate::vstd::arithmetic::mul::lemma_mul_inequality
(declare-fun req%vstd.arithmetic.mul.lemma_mul_inequality. (Int Int Int) Bool)
(declare-const %%global_location_label%%0 Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (req%vstd.arithmetic.mul.lemma_mul_inequality. x! y! z!) (and
     (=>
      %%global_location_label%%0
      (<= x! y!)
     )
     (=>
      %%global_location_label%%1
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
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_inequality_1
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_inequality_1
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
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_is_associative_2
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_is_associative_2
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_mod_multiples_vanish
(declare-fun req%vstd.arithmetic.div_mod.lemma_mod_multiples_vanish. (Int Int Int)
 Bool
)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((a! Int) (b! Int) (m! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_mod_multiples_vanish. a! b! m!) (=>
     %%global_location_label%%2
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
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_multiples_vanish_3
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_multiples_vanish_3
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_div_denominator
(declare-fun req%vstd.arithmetic.div_mod.lemma_div_denominator. (Int Int Int) Bool)
(declare-const %%global_location_label%%3 Bool)
(declare-const %%global_location_label%%4 Bool)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((x! Int) (c! Int) (d! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_div_denominator. x! c! d!) (and
     (=>
      %%global_location_label%%3
      (<= 0 x!)
     )
     (=>
      %%global_location_label%%4
      (< 0 c!)
     )
     (=>
      %%global_location_label%%5
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
    :qid user_crate__vstd__arithmetic__div_mod__lemma_div_denominator_4
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_denominator_4
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_mod_breakdown
(declare-fun req%vstd.arithmetic.div_mod.lemma_mod_breakdown. (Int Int Int) Bool)
(declare-const %%global_location_label%%6 Bool)
(declare-const %%global_location_label%%7 Bool)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_mod_breakdown. x! y! z!) (and
     (=>
      %%global_location_label%%6
      (<= 0 x!)
     )
     (=>
      %%global_location_label%%7
      (< 0 y!)
     )
     (=>
      %%global_location_label%%8
      (< 0 z!)
   )))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_mod_breakdown. x! y! z!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_mod_breakdown._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_mod_breakdown._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_mod_breakdown. (Int Int Int) Bool)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_mod_breakdown. x! y! z!) (and
     (> (Mul y! z!) 0)
     (= (EucMod x! (Mul y! z!)) (Add (Mul y! (EucMod (EucDiv x! y!) z!)) (EucMod x! y!)))
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_mod_breakdown. x! y! z!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_mod_breakdown._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_mod_breakdown._definition
)))

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
    :qid user_crate__vstd__arithmetic__div_mod__lemma_mod_breakdown_5
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_mod_breakdown_5
))))

;; Function-Specs crate::vstd::arithmetic::power2::lemma_pow2_pos
(declare-fun ens%vstd.arithmetic.power2.lemma_pow2_pos. (Int) Bool)
(assert
 (forall ((e! Int)) (!
   (= (ens%vstd.arithmetic.power2.lemma_pow2_pos. e!) (> (vstd.arithmetic.power2.pow2.?
      (I e!)
     ) 0
   ))
   :pattern ((ens%vstd.arithmetic.power2.lemma_pow2_pos. e!))
   :qid internal_ens__vstd.arithmetic.power2.lemma_pow2_pos._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power2.lemma_pow2_pos._definition
)))

;; Broadcast crate::vstd::arithmetic::power2::lemma_pow2_pos
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power2.lemma_pow2_pos.)
  (forall ((e! Poly)) (!
    (=>
     (has_type e! NAT)
     (> (vstd.arithmetic.power2.pow2.? e!) 0)
    )
    :pattern ((vstd.arithmetic.power2.pow2.? e!))
    :qid user_crate__vstd__arithmetic__power2__lemma_pow2_pos_6
    :skolemid skolem_user_crate__vstd__arithmetic__power2__lemma_pow2_pos_6
))))

;; Function-Specs crate::vstd::arithmetic::power2::lemma_pow2_unfold
(declare-fun req%vstd.arithmetic.power2.lemma_pow2_unfold. (Int) Bool)
(declare-const %%global_location_label%%9 Bool)
(assert
 (forall ((e! Int)) (!
   (= (req%vstd.arithmetic.power2.lemma_pow2_unfold. e!) (=>
     %%global_location_label%%9
     (> e! 0)
   ))
   :pattern ((req%vstd.arithmetic.power2.lemma_pow2_unfold. e!))
   :qid internal_req__vstd.arithmetic.power2.lemma_pow2_unfold._definition
   :skolemid skolem_internal_req__vstd.arithmetic.power2.lemma_pow2_unfold._definition
)))
(declare-fun ens%vstd.arithmetic.power2.lemma_pow2_unfold. (Int) Bool)
(assert
 (forall ((e! Int)) (!
   (= (ens%vstd.arithmetic.power2.lemma_pow2_unfold. e!) (= (vstd.arithmetic.power2.pow2.?
      (I e!)
     ) (nClip (Mul 2 (vstd.arithmetic.power2.pow2.? (I (nClip (Sub e! 1))))))
   ))
   :pattern ((ens%vstd.arithmetic.power2.lemma_pow2_unfold. e!))
   :qid internal_ens__vstd.arithmetic.power2.lemma_pow2_unfold._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power2.lemma_pow2_unfold._definition
)))

;; Broadcast crate::vstd::arithmetic::power2::lemma_pow2_unfold
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power2.lemma_pow2_unfold.)
  (forall ((e! Poly)) (!
    (=>
     (has_type e! NAT)
     (=>
      (> (%I e!) 0)
      (= (vstd.arithmetic.power2.pow2.? e!) (nClip (Mul 2 (vstd.arithmetic.power2.pow2.? (I
           (nClip (Sub (%I e!) 1))
    )))))))
    :pattern ((vstd.arithmetic.power2.pow2.? e!))
    :qid user_crate__vstd__arithmetic__power2__lemma_pow2_unfold_7
    :skolemid skolem_user_crate__vstd__arithmetic__power2__lemma_pow2_unfold_7
))))

;; Function-Specs crate::vstd::arithmetic::power2::lemma_pow2_adds
(declare-fun ens%vstd.arithmetic.power2.lemma_pow2_adds. (Int Int) Bool)
(assert
 (forall ((e1! Int) (e2! Int)) (!
   (= (ens%vstd.arithmetic.power2.lemma_pow2_adds. e1! e2!) (= (vstd.arithmetic.power2.pow2.?
      (I (nClip (Add e1! e2!)))
     ) (nClip (Mul (vstd.arithmetic.power2.pow2.? (I e1!)) (vstd.arithmetic.power2.pow2.?
        (I e2!)
   )))))
   :pattern ((ens%vstd.arithmetic.power2.lemma_pow2_adds. e1! e2!))
   :qid internal_ens__vstd.arithmetic.power2.lemma_pow2_adds._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power2.lemma_pow2_adds._definition
)))

;; Broadcast crate::vstd::arithmetic::power2::lemma_pow2_adds
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power2.lemma_pow2_adds.)
  (forall ((e1! Int) (e2! Int)) (!
    (=>
     (and
      (<= 0 e1!)
      (<= 0 e2!)
     )
     (= (vstd.arithmetic.power2.pow2.? (I (nClip (Add e1! e2!)))) (nClip (Mul (vstd.arithmetic.power2.pow2.?
         (I e1!)
        ) (vstd.arithmetic.power2.pow2.? (I e2!))
    ))))
    :pattern ((vstd.arithmetic.power2.pow2.? (I (nClip (Add e1! e2!)))))
    :qid user_crate__vstd__arithmetic__power2__lemma_pow2_adds_8
    :skolemid skolem_user_crate__vstd__arithmetic__power2__lemma_pow2_adds_8
))))

;; Function-Specs crate::vstd::arithmetic::power2::lemma_pow2_strictly_increases
(declare-fun req%vstd.arithmetic.power2.lemma_pow2_strictly_increases. (Int Int) Bool)
(declare-const %%global_location_label%%10 Bool)
(assert
 (forall ((e1! Int) (e2! Int)) (!
   (= (req%vstd.arithmetic.power2.lemma_pow2_strictly_increases. e1! e2!) (=>
     %%global_location_label%%10
     (< e1! e2!)
   ))
   :pattern ((req%vstd.arithmetic.power2.lemma_pow2_strictly_increases. e1! e2!))
   :qid internal_req__vstd.arithmetic.power2.lemma_pow2_strictly_increases._definition
   :skolemid skolem_internal_req__vstd.arithmetic.power2.lemma_pow2_strictly_increases._definition
)))
(declare-fun ens%vstd.arithmetic.power2.lemma_pow2_strictly_increases. (Int Int) Bool)
(assert
 (forall ((e1! Int) (e2! Int)) (!
   (= (ens%vstd.arithmetic.power2.lemma_pow2_strictly_increases. e1! e2!) (< (vstd.arithmetic.power2.pow2.?
      (I e1!)
     ) (vstd.arithmetic.power2.pow2.? (I e2!))
   ))
   :pattern ((ens%vstd.arithmetic.power2.lemma_pow2_strictly_increases. e1! e2!))
   :qid internal_ens__vstd.arithmetic.power2.lemma_pow2_strictly_increases._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power2.lemma_pow2_strictly_increases._definition
)))

;; Broadcast crate::vstd::arithmetic::power2::lemma_pow2_strictly_increases
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power2.lemma_pow2_strictly_increases.)
  (forall ((e1! Poly) (e2! Poly)) (!
    (=>
     (and
      (has_type e1! NAT)
      (has_type e2! NAT)
     )
     (=>
      (< (%I e1!) (%I e2!))
      (< (vstd.arithmetic.power2.pow2.? e1!) (vstd.arithmetic.power2.pow2.? e2!))
    ))
    :pattern ((vstd.arithmetic.power2.pow2.? e1!) (vstd.arithmetic.power2.pow2.? e2!))
    :qid user_crate__vstd__arithmetic__power2__lemma_pow2_strictly_increases_9
    :skolemid skolem_user_crate__vstd__arithmetic__power2__lemma_pow2_strictly_increases_9
))))

;; Function-Specs crate::vstd::arithmetic::power2::lemma2_to64
(declare-fun ens%vstd.arithmetic.power2.lemma2_to64. (Int) Bool)
(assert
 (forall ((no%param Int)) (!
   (= (ens%vstd.arithmetic.power2.lemma2_to64. no%param) (and
     (= (vstd.arithmetic.power2.pow2.? (I 0)) 1)
     (= (vstd.arithmetic.power2.pow2.? (I 1)) 2)
     (= (vstd.arithmetic.power2.pow2.? (I 2)) 4)
     (= (vstd.arithmetic.power2.pow2.? (I 3)) 8)
     (= (vstd.arithmetic.power2.pow2.? (I 4)) 16)
     (= (vstd.arithmetic.power2.pow2.? (I 5)) 32)
     (= (vstd.arithmetic.power2.pow2.? (I 6)) 64)
     (= (vstd.arithmetic.power2.pow2.? (I 7)) 128)
     (= (vstd.arithmetic.power2.pow2.? (I 8)) 256)
     (= (vstd.arithmetic.power2.pow2.? (I 9)) 512)
     (= (vstd.arithmetic.power2.pow2.? (I 10)) 1024)
     (= (vstd.arithmetic.power2.pow2.? (I 11)) 2048)
     (= (vstd.arithmetic.power2.pow2.? (I 12)) 4096)
     (= (vstd.arithmetic.power2.pow2.? (I 13)) 8192)
     (= (vstd.arithmetic.power2.pow2.? (I 14)) 16384)
     (= (vstd.arithmetic.power2.pow2.? (I 15)) 32768)
     (= (vstd.arithmetic.power2.pow2.? (I 16)) 65536)
     (= (vstd.arithmetic.power2.pow2.? (I 17)) 131072)
     (= (vstd.arithmetic.power2.pow2.? (I 18)) 262144)
     (= (vstd.arithmetic.power2.pow2.? (I 19)) 524288)
     (= (vstd.arithmetic.power2.pow2.? (I 20)) 1048576)
     (= (vstd.arithmetic.power2.pow2.? (I 21)) 2097152)
     (= (vstd.arithmetic.power2.pow2.? (I 22)) 4194304)
     (= (vstd.arithmetic.power2.pow2.? (I 23)) 8388608)
     (= (vstd.arithmetic.power2.pow2.? (I 24)) 16777216)
     (= (vstd.arithmetic.power2.pow2.? (I 25)) 33554432)
     (= (vstd.arithmetic.power2.pow2.? (I 26)) 67108864)
     (= (vstd.arithmetic.power2.pow2.? (I 27)) 134217728)
     (= (vstd.arithmetic.power2.pow2.? (I 28)) 268435456)
     (= (vstd.arithmetic.power2.pow2.? (I 29)) 536870912)
     (= (vstd.arithmetic.power2.pow2.? (I 30)) 1073741824)
     (= (vstd.arithmetic.power2.pow2.? (I 31)) 2147483648)
     (= (vstd.arithmetic.power2.pow2.? (I 32)) 4294967296)
     (= (vstd.arithmetic.power2.pow2.? (I 64)) 18446744073709551616)
   ))
   :pattern ((ens%vstd.arithmetic.power2.lemma2_to64. no%param))
   :qid internal_ens__vstd.arithmetic.power2.lemma2_to64._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power2.lemma2_to64._definition
)))

;; Function-Specs crate::vstd::bits::lemma_u64_shr_is_div
(declare-fun req%vstd.bits.lemma_u64_shr_is_div. (Int Int) Bool)
(declare-const %%global_location_label%%11 Bool)
(assert
 (forall ((x! Int) (shift! Int)) (!
   (= (req%vstd.bits.lemma_u64_shr_is_div. x! shift!) (=>
     %%global_location_label%%11
     (and
      (<= 0 shift!)
      (< shift! 64)
   )))
   :pattern ((req%vstd.bits.lemma_u64_shr_is_div. x! shift!))
   :qid internal_req__vstd.bits.lemma_u64_shr_is_div._definition
   :skolemid skolem_internal_req__vstd.bits.lemma_u64_shr_is_div._definition
)))
(declare-fun ens%vstd.bits.lemma_u64_shr_is_div. (Int Int) Bool)
(assert
 (forall ((x! Int) (shift! Int)) (!
   (= (ens%vstd.bits.lemma_u64_shr_is_div. x! shift!) (= (uClip 64 (bitshr (I x!) (I shift!)))
     (nClip (EucDiv x! (vstd.arithmetic.power2.pow2.? (I shift!))))
   ))
   :pattern ((ens%vstd.bits.lemma_u64_shr_is_div. x! shift!))
   :qid internal_ens__vstd.bits.lemma_u64_shr_is_div._definition
   :skolemid skolem_internal_ens__vstd.bits.lemma_u64_shr_is_div._definition
)))

;; Broadcast crate::vstd::bits::lemma_u64_shr_is_div
(assert
 (=>
  (fuel_bool fuel%vstd.bits.lemma_u64_shr_is_div.)
  (forall ((x! Poly) (shift! Poly)) (!
    (=>
     (and
      (has_type x! (UINT 64))
      (has_type shift! (UINT 64))
     )
     (=>
      (and
       (<= 0 (%I shift!))
       (< (%I shift!) 64)
      )
      (= (uClip 64 (bitshr (I (%I x!)) (I (%I shift!)))) (nClip (EucDiv (%I x!) (vstd.arithmetic.power2.pow2.?
          shift!
    ))))))
    :pattern ((uClip 64 (bitshr (I (%I x!)) (I (%I shift!)))))
    :qid user_crate__vstd__bits__lemma_u64_shr_is_div_10
    :skolemid skolem_user_crate__vstd__bits__lemma_u64_shr_is_div_10
))))

;; Function-Specs crate::vstd::bits::lemma_u32_shr_is_div
(declare-fun req%vstd.bits.lemma_u32_shr_is_div. (Int Int) Bool)
(declare-const %%global_location_label%%12 Bool)
(assert
 (forall ((x! Int) (shift! Int)) (!
   (= (req%vstd.bits.lemma_u32_shr_is_div. x! shift!) (=>
     %%global_location_label%%12
     (and
      (<= 0 shift!)
      (< shift! 32)
   )))
   :pattern ((req%vstd.bits.lemma_u32_shr_is_div. x! shift!))
   :qid internal_req__vstd.bits.lemma_u32_shr_is_div._definition
   :skolemid skolem_internal_req__vstd.bits.lemma_u32_shr_is_div._definition
)))
(declare-fun ens%vstd.bits.lemma_u32_shr_is_div. (Int Int) Bool)
(assert
 (forall ((x! Int) (shift! Int)) (!
   (= (ens%vstd.bits.lemma_u32_shr_is_div. x! shift!) (= (uClip 32 (bitshr (I x!) (I shift!)))
     (nClip (EucDiv x! (vstd.arithmetic.power2.pow2.? (I shift!))))
   ))
   :pattern ((ens%vstd.bits.lemma_u32_shr_is_div. x! shift!))
   :qid internal_ens__vstd.bits.lemma_u32_shr_is_div._definition
   :skolemid skolem_internal_ens__vstd.bits.lemma_u32_shr_is_div._definition
)))

;; Broadcast crate::vstd::bits::lemma_u32_shr_is_div
(assert
 (=>
  (fuel_bool fuel%vstd.bits.lemma_u32_shr_is_div.)
  (forall ((x! Poly) (shift! Poly)) (!
    (=>
     (and
      (has_type x! (UINT 32))
      (has_type shift! (UINT 32))
     )
     (=>
      (and
       (<= 0 (%I shift!))
       (< (%I shift!) 32)
      )
      (= (uClip 32 (bitshr (I (%I x!)) (I (%I shift!)))) (nClip (EucDiv (%I x!) (vstd.arithmetic.power2.pow2.?
          shift!
    ))))))
    :pattern ((uClip 32 (bitshr (I (%I x!)) (I (%I shift!)))))
    :qid user_crate__vstd__bits__lemma_u32_shr_is_div_16
    :skolemid skolem_user_crate__vstd__bits__lemma_u32_shr_is_div_16
))))

;; Function-Specs crate::vstd::bits::lemma_u16_shr_is_div
(declare-fun req%vstd.bits.lemma_u16_shr_is_div. (Int Int) Bool)
(declare-const %%global_location_label%%13 Bool)
(assert
 (forall ((x! Int) (shift! Int)) (!
   (= (req%vstd.bits.lemma_u16_shr_is_div. x! shift!) (=>
     %%global_location_label%%13
     (and
      (<= 0 shift!)
      (< shift! 16)
   )))
   :pattern ((req%vstd.bits.lemma_u16_shr_is_div. x! shift!))
   :qid internal_req__vstd.bits.lemma_u16_shr_is_div._definition
   :skolemid skolem_internal_req__vstd.bits.lemma_u16_shr_is_div._definition
)))
(declare-fun ens%vstd.bits.lemma_u16_shr_is_div. (Int Int) Bool)
(assert
 (forall ((x! Int) (shift! Int)) (!
   (= (ens%vstd.bits.lemma_u16_shr_is_div. x! shift!) (= (uClip 16 (bitshr (I x!) (I shift!)))
     (nClip (EucDiv x! (vstd.arithmetic.power2.pow2.? (I shift!))))
   ))
   :pattern ((ens%vstd.bits.lemma_u16_shr_is_div. x! shift!))
   :qid internal_ens__vstd.bits.lemma_u16_shr_is_div._definition
   :skolemid skolem_internal_ens__vstd.bits.lemma_u16_shr_is_div._definition
)))

;; Broadcast crate::vstd::bits::lemma_u16_shr_is_div
(assert
 (=>
  (fuel_bool fuel%vstd.bits.lemma_u16_shr_is_div.)
  (forall ((x! Poly) (shift! Poly)) (!
    (=>
     (and
      (has_type x! (UINT 16))
      (has_type shift! (UINT 16))
     )
     (=>
      (and
       (<= 0 (%I shift!))
       (< (%I shift!) 16)
      )
      (= (uClip 16 (bitshr (I (%I x!)) (I (%I shift!)))) (nClip (EucDiv (%I x!) (vstd.arithmetic.power2.pow2.?
          shift!
    ))))))
    :pattern ((uClip 16 (bitshr (I (%I x!)) (I (%I shift!)))))
    :qid user_crate__vstd__bits__lemma_u16_shr_is_div_22
    :skolemid skolem_user_crate__vstd__bits__lemma_u16_shr_is_div_22
))))

;; Function-Specs crate::vstd::bits::lemma_u8_shr_is_div
(declare-fun req%vstd.bits.lemma_u8_shr_is_div. (Int Int) Bool)
(declare-const %%global_location_label%%14 Bool)
(assert
 (forall ((x! Int) (shift! Int)) (!
   (= (req%vstd.bits.lemma_u8_shr_is_div. x! shift!) (=>
     %%global_location_label%%14
     (and
      (<= 0 shift!)
      (< shift! 8)
   )))
   :pattern ((req%vstd.bits.lemma_u8_shr_is_div. x! shift!))
   :qid internal_req__vstd.bits.lemma_u8_shr_is_div._definition
   :skolemid skolem_internal_req__vstd.bits.lemma_u8_shr_is_div._definition
)))
(declare-fun ens%vstd.bits.lemma_u8_shr_is_div. (Int Int) Bool)
(assert
 (forall ((x! Int) (shift! Int)) (!
   (= (ens%vstd.bits.lemma_u8_shr_is_div. x! shift!) (= (uClip 8 (bitshr (I x!) (I shift!)))
     (nClip (EucDiv x! (vstd.arithmetic.power2.pow2.? (I shift!))))
   ))
   :pattern ((ens%vstd.bits.lemma_u8_shr_is_div. x! shift!))
   :qid internal_ens__vstd.bits.lemma_u8_shr_is_div._definition
   :skolemid skolem_internal_ens__vstd.bits.lemma_u8_shr_is_div._definition
)))

;; Function-Def crate::vstd::bits::lemma_u8_shr_is_div
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/bits.rs:48:17: 48:23 (#1094)
(set-option :sat.euf true)
(set-option :tactic.default_tactic sat)
(set-option :smt.ematching false)
(set-option :smt.case_split 0)
(get-info :all-statistics)
(declare-const x! (_ BitVec 8))
(assert
 true
)
;; bitvector assertion not satisfied
(declare-const %%location_label%%0 Bool)
(assert
 (not (=>
   %%location_label%%0
   (= (bvlshr x! ((_ zero_extend 7) (_ bv0 1))) x!)
)))
(get-info :version)
(set-option :rlimit 30000000)
(check-sat)
(set-option :rlimit 0)
