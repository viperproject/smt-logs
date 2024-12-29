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

;; MODULE 'module vstd::std_specs::bits'
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/std_specs/bits.rs:364:5: 364:11 (#0)

;; query spun off because: bitvector

;; Fuel
(declare-const fuel%vstd.std_specs.bits.u8_trailing_zeros. FuelId)
(declare-const fuel%vstd.std_specs.bits.u8_leading_zeros. FuelId)
(declare-const fuel%vstd.std_specs.bits.u8_trailing_ones. FuelId)
(declare-const fuel%vstd.std_specs.bits.u8_leading_ones. FuelId)
(declare-const fuel%vstd.std_specs.bits.axiom_u8_trailing_zeros. FuelId)
(declare-const fuel%vstd.std_specs.bits.axiom_u8_trailing_ones. FuelId)
(declare-const fuel%vstd.std_specs.bits.axiom_u8_leading_zeros. FuelId)
(declare-const fuel%vstd.std_specs.bits.axiom_u8_leading_ones. FuelId)
(declare-const fuel%vstd.std_specs.bits.u16_trailing_zeros. FuelId)
(declare-const fuel%vstd.std_specs.bits.u16_leading_zeros. FuelId)
(declare-const fuel%vstd.std_specs.bits.u16_trailing_ones. FuelId)
(declare-const fuel%vstd.std_specs.bits.u16_leading_ones. FuelId)
(declare-const fuel%vstd.std_specs.bits.axiom_u16_trailing_zeros. FuelId)
(declare-const fuel%vstd.std_specs.bits.axiom_u16_trailing_ones. FuelId)
(declare-const fuel%vstd.std_specs.bits.axiom_u16_leading_zeros. FuelId)
(declare-const fuel%vstd.std_specs.bits.axiom_u16_leading_ones. FuelId)
(declare-const fuel%vstd.std_specs.bits.u32_trailing_zeros. FuelId)
(declare-const fuel%vstd.std_specs.bits.u32_leading_zeros. FuelId)
(declare-const fuel%vstd.std_specs.bits.u32_trailing_ones. FuelId)
(declare-const fuel%vstd.std_specs.bits.u32_leading_ones. FuelId)
(declare-const fuel%vstd.std_specs.bits.axiom_u32_trailing_zeros. FuelId)
(declare-const fuel%vstd.std_specs.bits.axiom_u32_trailing_ones. FuelId)
(declare-const fuel%vstd.std_specs.bits.axiom_u32_leading_zeros. FuelId)
(declare-const fuel%vstd.std_specs.bits.axiom_u32_leading_ones. FuelId)
(declare-const fuel%vstd.std_specs.bits.u64_trailing_zeros. FuelId)
(declare-const fuel%vstd.std_specs.bits.u64_leading_zeros. FuelId)
(declare-const fuel%vstd.std_specs.bits.u64_trailing_ones. FuelId)
(declare-const fuel%vstd.std_specs.bits.u64_leading_ones. FuelId)
(declare-const fuel%vstd.std_specs.bits.axiom_u64_trailing_zeros. FuelId)
(declare-const fuel%vstd.std_specs.bits.axiom_u64_trailing_ones. FuelId)
(declare-const fuel%vstd.std_specs.bits.axiom_u64_leading_zeros. FuelId)
(declare-const fuel%vstd.std_specs.bits.axiom_u64_leading_ones. FuelId)
(assert
 (distinct fuel%vstd.std_specs.bits.u8_trailing_zeros. fuel%vstd.std_specs.bits.u8_leading_zeros.
  fuel%vstd.std_specs.bits.u8_trailing_ones. fuel%vstd.std_specs.bits.u8_leading_ones.
  fuel%vstd.std_specs.bits.axiom_u8_trailing_zeros. fuel%vstd.std_specs.bits.axiom_u8_trailing_ones.
  fuel%vstd.std_specs.bits.axiom_u8_leading_zeros. fuel%vstd.std_specs.bits.axiom_u8_leading_ones.
  fuel%vstd.std_specs.bits.u16_trailing_zeros. fuel%vstd.std_specs.bits.u16_leading_zeros.
  fuel%vstd.std_specs.bits.u16_trailing_ones. fuel%vstd.std_specs.bits.u16_leading_ones.
  fuel%vstd.std_specs.bits.axiom_u16_trailing_zeros. fuel%vstd.std_specs.bits.axiom_u16_trailing_ones.
  fuel%vstd.std_specs.bits.axiom_u16_leading_zeros. fuel%vstd.std_specs.bits.axiom_u16_leading_ones.
  fuel%vstd.std_specs.bits.u32_trailing_zeros. fuel%vstd.std_specs.bits.u32_leading_zeros.
  fuel%vstd.std_specs.bits.u32_trailing_ones. fuel%vstd.std_specs.bits.u32_leading_ones.
  fuel%vstd.std_specs.bits.axiom_u32_trailing_zeros. fuel%vstd.std_specs.bits.axiom_u32_trailing_ones.
  fuel%vstd.std_specs.bits.axiom_u32_leading_zeros. fuel%vstd.std_specs.bits.axiom_u32_leading_ones.
  fuel%vstd.std_specs.bits.u64_trailing_zeros. fuel%vstd.std_specs.bits.u64_leading_zeros.
  fuel%vstd.std_specs.bits.u64_trailing_ones. fuel%vstd.std_specs.bits.u64_leading_ones.
  fuel%vstd.std_specs.bits.axiom_u64_trailing_zeros. fuel%vstd.std_specs.bits.axiom_u64_trailing_ones.
  fuel%vstd.std_specs.bits.axiom_u64_leading_zeros. fuel%vstd.std_specs.bits.axiom_u64_leading_ones.
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

;; Function-Decl crate::vstd::std_specs::bits::u8_trailing_zeros
(declare-fun vstd.std_specs.bits.u8_trailing_zeros.? (Poly) Int)
(declare-fun vstd.std_specs.bits.rec%u8_trailing_zeros.? (Poly Fuel) Int)

;; Function-Decl crate::vstd::std_specs::bits::u8_trailing_ones
(declare-fun vstd.std_specs.bits.u8_trailing_ones.? (Poly) Int)

;; Function-Decl crate::vstd::std_specs::bits::u8_leading_zeros
(declare-fun vstd.std_specs.bits.u8_leading_zeros.? (Poly) Int)
(declare-fun vstd.std_specs.bits.rec%u8_leading_zeros.? (Poly Fuel) Int)

;; Function-Decl crate::vstd::std_specs::bits::u8_leading_ones
(declare-fun vstd.std_specs.bits.u8_leading_ones.? (Poly) Int)

;; Function-Decl crate::vstd::std_specs::bits::u16_trailing_zeros
(declare-fun vstd.std_specs.bits.u16_trailing_zeros.? (Poly) Int)
(declare-fun vstd.std_specs.bits.rec%u16_trailing_zeros.? (Poly Fuel) Int)

;; Function-Decl crate::vstd::std_specs::bits::u16_trailing_ones
(declare-fun vstd.std_specs.bits.u16_trailing_ones.? (Poly) Int)

;; Function-Decl crate::vstd::std_specs::bits::u16_leading_zeros
(declare-fun vstd.std_specs.bits.u16_leading_zeros.? (Poly) Int)
(declare-fun vstd.std_specs.bits.rec%u16_leading_zeros.? (Poly Fuel) Int)

;; Function-Decl crate::vstd::std_specs::bits::u16_leading_ones
(declare-fun vstd.std_specs.bits.u16_leading_ones.? (Poly) Int)

;; Function-Decl crate::vstd::std_specs::bits::u32_trailing_zeros
(declare-fun vstd.std_specs.bits.u32_trailing_zeros.? (Poly) Int)
(declare-fun vstd.std_specs.bits.rec%u32_trailing_zeros.? (Poly Fuel) Int)

;; Function-Decl crate::vstd::std_specs::bits::u32_trailing_ones
(declare-fun vstd.std_specs.bits.u32_trailing_ones.? (Poly) Int)

;; Function-Decl crate::vstd::std_specs::bits::u32_leading_zeros
(declare-fun vstd.std_specs.bits.u32_leading_zeros.? (Poly) Int)
(declare-fun vstd.std_specs.bits.rec%u32_leading_zeros.? (Poly Fuel) Int)

;; Function-Decl crate::vstd::std_specs::bits::u32_leading_ones
(declare-fun vstd.std_specs.bits.u32_leading_ones.? (Poly) Int)

;; Function-Decl crate::vstd::std_specs::bits::u64_trailing_zeros
(declare-fun vstd.std_specs.bits.u64_trailing_zeros.? (Poly) Int)
(declare-fun vstd.std_specs.bits.rec%u64_trailing_zeros.? (Poly Fuel) Int)

;; Function-Decl crate::vstd::std_specs::bits::u64_trailing_ones
(declare-fun vstd.std_specs.bits.u64_trailing_ones.? (Poly) Int)

;; Function-Decl crate::vstd::std_specs::bits::u64_leading_zeros
(declare-fun vstd.std_specs.bits.u64_leading_zeros.? (Poly) Int)
(declare-fun vstd.std_specs.bits.rec%u64_leading_zeros.? (Poly Fuel) Int)

;; Function-Decl crate::vstd::std_specs::bits::u64_leading_ones
(declare-fun vstd.std_specs.bits.u64_leading_ones.? (Poly) Int)

;; Function-Axioms crate::vstd::std_specs::bits::u8_trailing_zeros
(assert
 (fuel_bool_default fuel%vstd.std_specs.bits.u8_trailing_zeros.)
)
(declare-const fuel_nat%vstd.std_specs.bits.u8_trailing_zeros. Fuel)
(assert
 (forall ((i! Poly) (fuel% Fuel)) (!
   (= (vstd.std_specs.bits.rec%u8_trailing_zeros.? i! fuel%) (vstd.std_specs.bits.rec%u8_trailing_zeros.?
     i! zero
   ))
   :pattern ((vstd.std_specs.bits.rec%u8_trailing_zeros.? i! fuel%))
   :qid internal_vstd.std_specs.bits.u8_trailing_zeros._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u8_trailing_zeros._fuel_to_zero_definition
)))
(assert
 (forall ((i! Poly) (fuel% Fuel)) (!
   (=>
    (has_type i! (UINT 8))
    (= (vstd.std_specs.bits.rec%u8_trailing_zeros.? i! (succ fuel%)) (ite
      (= (%I i!) 0)
      8
      (ite
       (not (= (uClip 8 (bitand (I (%I i!)) (I 1))) 0))
       0
       (uClip 32 (Add 1 (vstd.std_specs.bits.rec%u8_trailing_zeros.? (I (uClip 8 (EucDiv (%I i!)
             2
           ))
          ) fuel%
   )))))))
   :pattern ((vstd.std_specs.bits.rec%u8_trailing_zeros.? i! (succ fuel%)))
   :qid internal_vstd.std_specs.bits.u8_trailing_zeros._fuel_to_body_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u8_trailing_zeros._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.bits.u8_trailing_zeros.)
  (forall ((i! Poly)) (!
    (=>
     (has_type i! (UINT 8))
     (= (vstd.std_specs.bits.u8_trailing_zeros.? i!) (vstd.std_specs.bits.rec%u8_trailing_zeros.?
       i! (succ fuel_nat%vstd.std_specs.bits.u8_trailing_zeros.)
    )))
    :pattern ((vstd.std_specs.bits.u8_trailing_zeros.? i!))
    :qid internal_vstd.std_specs.bits.u8_trailing_zeros.?_definition
    :skolemid skolem_internal_vstd.std_specs.bits.u8_trailing_zeros.?_definition
))))
(assert
 (forall ((i! Poly)) (!
   (=>
    (has_type i! (UINT 8))
    (uInv 32 (vstd.std_specs.bits.u8_trailing_zeros.? i!))
   )
   :pattern ((vstd.std_specs.bits.u8_trailing_zeros.? i!))
   :qid internal_vstd.std_specs.bits.u8_trailing_zeros.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u8_trailing_zeros.?_pre_post_definition
)))

;; Function-Specs core::num::impl&%6::trailing_zeros
(declare-fun ens%core!num.impl&%6.trailing_zeros. (Int Int) Bool)
(assert
 (forall ((i! Int) (r! Int)) (!
   (= (ens%core!num.impl&%6.trailing_zeros. i! r!) (and
     (uInv 32 r!)
     (= r! (vstd.std_specs.bits.u8_trailing_zeros.? (I i!)))
   ))
   :pattern ((ens%core!num.impl&%6.trailing_zeros. i! r!))
   :qid internal_ens__core!num.impl&__6.trailing_zeros._definition
   :skolemid skolem_internal_ens__core!num.impl&__6.trailing_zeros._definition
)))

;; Function-Axioms crate::vstd::std_specs::bits::u8_trailing_ones
(assert
 (fuel_bool_default fuel%vstd.std_specs.bits.u8_trailing_ones.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.bits.u8_trailing_ones.)
  (forall ((i! Poly)) (!
    (= (vstd.std_specs.bits.u8_trailing_ones.? i!) (vstd.std_specs.bits.u8_trailing_zeros.?
      (I (uClip 8 (bitnot (I (%I i!)))))
    ))
    :pattern ((vstd.std_specs.bits.u8_trailing_ones.? i!))
    :qid internal_vstd.std_specs.bits.u8_trailing_ones.?_definition
    :skolemid skolem_internal_vstd.std_specs.bits.u8_trailing_ones.?_definition
))))
(assert
 (forall ((i! Poly)) (!
   (=>
    (has_type i! (UINT 8))
    (uInv 32 (vstd.std_specs.bits.u8_trailing_ones.? i!))
   )
   :pattern ((vstd.std_specs.bits.u8_trailing_ones.? i!))
   :qid internal_vstd.std_specs.bits.u8_trailing_ones.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u8_trailing_ones.?_pre_post_definition
)))

;; Function-Specs core::num::impl&%6::trailing_ones
(declare-fun ens%core!num.impl&%6.trailing_ones. (Int Int) Bool)
(assert
 (forall ((i! Int) (r! Int)) (!
   (= (ens%core!num.impl&%6.trailing_ones. i! r!) (and
     (uInv 32 r!)
     (= r! (vstd.std_specs.bits.u8_trailing_ones.? (I i!)))
   ))
   :pattern ((ens%core!num.impl&%6.trailing_ones. i! r!))
   :qid internal_ens__core!num.impl&__6.trailing_ones._definition
   :skolemid skolem_internal_ens__core!num.impl&__6.trailing_ones._definition
)))

;; Function-Axioms crate::vstd::std_specs::bits::u8_leading_zeros
(assert
 (fuel_bool_default fuel%vstd.std_specs.bits.u8_leading_zeros.)
)
(declare-const fuel_nat%vstd.std_specs.bits.u8_leading_zeros. Fuel)
(assert
 (forall ((i! Poly) (fuel% Fuel)) (!
   (= (vstd.std_specs.bits.rec%u8_leading_zeros.? i! fuel%) (vstd.std_specs.bits.rec%u8_leading_zeros.?
     i! zero
   ))
   :pattern ((vstd.std_specs.bits.rec%u8_leading_zeros.? i! fuel%))
   :qid internal_vstd.std_specs.bits.u8_leading_zeros._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u8_leading_zeros._fuel_to_zero_definition
)))
(assert
 (forall ((i! Poly) (fuel% Fuel)) (!
   (=>
    (has_type i! (UINT 8))
    (= (vstd.std_specs.bits.rec%u8_leading_zeros.? i! (succ fuel%)) (ite
      (= (%I i!) 0)
      8
      (uClip 32 (Sub (vstd.std_specs.bits.rec%u8_leading_zeros.? (I (uClip 8 (EucDiv (%I i!)
            2
          ))
         ) fuel%
        ) 1
   )))))
   :pattern ((vstd.std_specs.bits.rec%u8_leading_zeros.? i! (succ fuel%)))
   :qid internal_vstd.std_specs.bits.u8_leading_zeros._fuel_to_body_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u8_leading_zeros._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.bits.u8_leading_zeros.)
  (forall ((i! Poly)) (!
    (=>
     (has_type i! (UINT 8))
     (= (vstd.std_specs.bits.u8_leading_zeros.? i!) (vstd.std_specs.bits.rec%u8_leading_zeros.?
       i! (succ fuel_nat%vstd.std_specs.bits.u8_leading_zeros.)
    )))
    :pattern ((vstd.std_specs.bits.u8_leading_zeros.? i!))
    :qid internal_vstd.std_specs.bits.u8_leading_zeros.?_definition
    :skolemid skolem_internal_vstd.std_specs.bits.u8_leading_zeros.?_definition
))))
(assert
 (forall ((i! Poly)) (!
   (=>
    (has_type i! (UINT 8))
    (uInv 32 (vstd.std_specs.bits.u8_leading_zeros.? i!))
   )
   :pattern ((vstd.std_specs.bits.u8_leading_zeros.? i!))
   :qid internal_vstd.std_specs.bits.u8_leading_zeros.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u8_leading_zeros.?_pre_post_definition
)))

;; Function-Specs core::num::impl&%6::leading_zeros
(declare-fun ens%core!num.impl&%6.leading_zeros. (Int Int) Bool)
(assert
 (forall ((i! Int) (r! Int)) (!
   (= (ens%core!num.impl&%6.leading_zeros. i! r!) (and
     (uInv 32 r!)
     (= r! (vstd.std_specs.bits.u8_leading_zeros.? (I i!)))
   ))
   :pattern ((ens%core!num.impl&%6.leading_zeros. i! r!))
   :qid internal_ens__core!num.impl&__6.leading_zeros._definition
   :skolemid skolem_internal_ens__core!num.impl&__6.leading_zeros._definition
)))

;; Function-Axioms crate::vstd::std_specs::bits::u8_leading_ones
(assert
 (fuel_bool_default fuel%vstd.std_specs.bits.u8_leading_ones.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.bits.u8_leading_ones.)
  (forall ((i! Poly)) (!
    (= (vstd.std_specs.bits.u8_leading_ones.? i!) (vstd.std_specs.bits.u8_leading_zeros.?
      (I (uClip 8 (bitnot (I (%I i!)))))
    ))
    :pattern ((vstd.std_specs.bits.u8_leading_ones.? i!))
    :qid internal_vstd.std_specs.bits.u8_leading_ones.?_definition
    :skolemid skolem_internal_vstd.std_specs.bits.u8_leading_ones.?_definition
))))
(assert
 (forall ((i! Poly)) (!
   (=>
    (has_type i! (UINT 8))
    (uInv 32 (vstd.std_specs.bits.u8_leading_ones.? i!))
   )
   :pattern ((vstd.std_specs.bits.u8_leading_ones.? i!))
   :qid internal_vstd.std_specs.bits.u8_leading_ones.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u8_leading_ones.?_pre_post_definition
)))

;; Function-Specs core::num::impl&%6::leading_ones
(declare-fun ens%core!num.impl&%6.leading_ones. (Int Int) Bool)
(assert
 (forall ((i! Int) (r! Int)) (!
   (= (ens%core!num.impl&%6.leading_ones. i! r!) (and
     (uInv 32 r!)
     (= r! (vstd.std_specs.bits.u8_leading_ones.? (I i!)))
   ))
   :pattern ((ens%core!num.impl&%6.leading_ones. i! r!))
   :qid internal_ens__core!num.impl&__6.leading_ones._definition
   :skolemid skolem_internal_ens__core!num.impl&__6.leading_ones._definition
)))

;; Function-Axioms crate::vstd::std_specs::bits::u16_trailing_zeros
(assert
 (fuel_bool_default fuel%vstd.std_specs.bits.u16_trailing_zeros.)
)
(declare-const fuel_nat%vstd.std_specs.bits.u16_trailing_zeros. Fuel)
(assert
 (forall ((i! Poly) (fuel% Fuel)) (!
   (= (vstd.std_specs.bits.rec%u16_trailing_zeros.? i! fuel%) (vstd.std_specs.bits.rec%u16_trailing_zeros.?
     i! zero
   ))
   :pattern ((vstd.std_specs.bits.rec%u16_trailing_zeros.? i! fuel%))
   :qid internal_vstd.std_specs.bits.u16_trailing_zeros._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u16_trailing_zeros._fuel_to_zero_definition
)))
(assert
 (forall ((i! Poly) (fuel% Fuel)) (!
   (=>
    (has_type i! (UINT 16))
    (= (vstd.std_specs.bits.rec%u16_trailing_zeros.? i! (succ fuel%)) (ite
      (= (%I i!) 0)
      16
      (ite
       (not (= (uClip 16 (bitand (I (%I i!)) (I 1))) 0))
       0
       (uClip 32 (Add 1 (vstd.std_specs.bits.rec%u16_trailing_zeros.? (I (uClip 16 (EucDiv (%I
              i!
             ) 2
           ))
          ) fuel%
   )))))))
   :pattern ((vstd.std_specs.bits.rec%u16_trailing_zeros.? i! (succ fuel%)))
   :qid internal_vstd.std_specs.bits.u16_trailing_zeros._fuel_to_body_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u16_trailing_zeros._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.bits.u16_trailing_zeros.)
  (forall ((i! Poly)) (!
    (=>
     (has_type i! (UINT 16))
     (= (vstd.std_specs.bits.u16_trailing_zeros.? i!) (vstd.std_specs.bits.rec%u16_trailing_zeros.?
       i! (succ fuel_nat%vstd.std_specs.bits.u16_trailing_zeros.)
    )))
    :pattern ((vstd.std_specs.bits.u16_trailing_zeros.? i!))
    :qid internal_vstd.std_specs.bits.u16_trailing_zeros.?_definition
    :skolemid skolem_internal_vstd.std_specs.bits.u16_trailing_zeros.?_definition
))))
(assert
 (forall ((i! Poly)) (!
   (=>
    (has_type i! (UINT 16))
    (uInv 32 (vstd.std_specs.bits.u16_trailing_zeros.? i!))
   )
   :pattern ((vstd.std_specs.bits.u16_trailing_zeros.? i!))
   :qid internal_vstd.std_specs.bits.u16_trailing_zeros.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u16_trailing_zeros.?_pre_post_definition
)))

;; Function-Specs core::num::impl&%7::trailing_zeros
(declare-fun ens%core!num.impl&%7.trailing_zeros. (Int Int) Bool)
(assert
 (forall ((i! Int) (r! Int)) (!
   (= (ens%core!num.impl&%7.trailing_zeros. i! r!) (and
     (uInv 32 r!)
     (= r! (vstd.std_specs.bits.u16_trailing_zeros.? (I i!)))
   ))
   :pattern ((ens%core!num.impl&%7.trailing_zeros. i! r!))
   :qid internal_ens__core!num.impl&__7.trailing_zeros._definition
   :skolemid skolem_internal_ens__core!num.impl&__7.trailing_zeros._definition
)))

;; Function-Axioms crate::vstd::std_specs::bits::u16_trailing_ones
(assert
 (fuel_bool_default fuel%vstd.std_specs.bits.u16_trailing_ones.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.bits.u16_trailing_ones.)
  (forall ((i! Poly)) (!
    (= (vstd.std_specs.bits.u16_trailing_ones.? i!) (vstd.std_specs.bits.u16_trailing_zeros.?
      (I (uClip 16 (bitnot (I (%I i!)))))
    ))
    :pattern ((vstd.std_specs.bits.u16_trailing_ones.? i!))
    :qid internal_vstd.std_specs.bits.u16_trailing_ones.?_definition
    :skolemid skolem_internal_vstd.std_specs.bits.u16_trailing_ones.?_definition
))))
(assert
 (forall ((i! Poly)) (!
   (=>
    (has_type i! (UINT 16))
    (uInv 32 (vstd.std_specs.bits.u16_trailing_ones.? i!))
   )
   :pattern ((vstd.std_specs.bits.u16_trailing_ones.? i!))
   :qid internal_vstd.std_specs.bits.u16_trailing_ones.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u16_trailing_ones.?_pre_post_definition
)))

;; Function-Specs core::num::impl&%7::trailing_ones
(declare-fun ens%core!num.impl&%7.trailing_ones. (Int Int) Bool)
(assert
 (forall ((i! Int) (r! Int)) (!
   (= (ens%core!num.impl&%7.trailing_ones. i! r!) (and
     (uInv 32 r!)
     (= r! (vstd.std_specs.bits.u16_trailing_ones.? (I i!)))
   ))
   :pattern ((ens%core!num.impl&%7.trailing_ones. i! r!))
   :qid internal_ens__core!num.impl&__7.trailing_ones._definition
   :skolemid skolem_internal_ens__core!num.impl&__7.trailing_ones._definition
)))

;; Function-Axioms crate::vstd::std_specs::bits::u16_leading_zeros
(assert
 (fuel_bool_default fuel%vstd.std_specs.bits.u16_leading_zeros.)
)
(declare-const fuel_nat%vstd.std_specs.bits.u16_leading_zeros. Fuel)
(assert
 (forall ((i! Poly) (fuel% Fuel)) (!
   (= (vstd.std_specs.bits.rec%u16_leading_zeros.? i! fuel%) (vstd.std_specs.bits.rec%u16_leading_zeros.?
     i! zero
   ))
   :pattern ((vstd.std_specs.bits.rec%u16_leading_zeros.? i! fuel%))
   :qid internal_vstd.std_specs.bits.u16_leading_zeros._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u16_leading_zeros._fuel_to_zero_definition
)))
(assert
 (forall ((i! Poly) (fuel% Fuel)) (!
   (=>
    (has_type i! (UINT 16))
    (= (vstd.std_specs.bits.rec%u16_leading_zeros.? i! (succ fuel%)) (ite
      (= (%I i!) 0)
      16
      (uClip 32 (Sub (vstd.std_specs.bits.rec%u16_leading_zeros.? (I (uClip 16 (EucDiv (%I i!)
            2
          ))
         ) fuel%
        ) 1
   )))))
   :pattern ((vstd.std_specs.bits.rec%u16_leading_zeros.? i! (succ fuel%)))
   :qid internal_vstd.std_specs.bits.u16_leading_zeros._fuel_to_body_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u16_leading_zeros._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.bits.u16_leading_zeros.)
  (forall ((i! Poly)) (!
    (=>
     (has_type i! (UINT 16))
     (= (vstd.std_specs.bits.u16_leading_zeros.? i!) (vstd.std_specs.bits.rec%u16_leading_zeros.?
       i! (succ fuel_nat%vstd.std_specs.bits.u16_leading_zeros.)
    )))
    :pattern ((vstd.std_specs.bits.u16_leading_zeros.? i!))
    :qid internal_vstd.std_specs.bits.u16_leading_zeros.?_definition
    :skolemid skolem_internal_vstd.std_specs.bits.u16_leading_zeros.?_definition
))))
(assert
 (forall ((i! Poly)) (!
   (=>
    (has_type i! (UINT 16))
    (uInv 32 (vstd.std_specs.bits.u16_leading_zeros.? i!))
   )
   :pattern ((vstd.std_specs.bits.u16_leading_zeros.? i!))
   :qid internal_vstd.std_specs.bits.u16_leading_zeros.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u16_leading_zeros.?_pre_post_definition
)))

;; Function-Specs core::num::impl&%7::leading_zeros
(declare-fun ens%core!num.impl&%7.leading_zeros. (Int Int) Bool)
(assert
 (forall ((i! Int) (r! Int)) (!
   (= (ens%core!num.impl&%7.leading_zeros. i! r!) (and
     (uInv 32 r!)
     (= r! (vstd.std_specs.bits.u16_leading_zeros.? (I i!)))
   ))
   :pattern ((ens%core!num.impl&%7.leading_zeros. i! r!))
   :qid internal_ens__core!num.impl&__7.leading_zeros._definition
   :skolemid skolem_internal_ens__core!num.impl&__7.leading_zeros._definition
)))

;; Function-Axioms crate::vstd::std_specs::bits::u16_leading_ones
(assert
 (fuel_bool_default fuel%vstd.std_specs.bits.u16_leading_ones.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.bits.u16_leading_ones.)
  (forall ((i! Poly)) (!
    (= (vstd.std_specs.bits.u16_leading_ones.? i!) (vstd.std_specs.bits.u16_leading_zeros.?
      (I (uClip 16 (bitnot (I (%I i!)))))
    ))
    :pattern ((vstd.std_specs.bits.u16_leading_ones.? i!))
    :qid internal_vstd.std_specs.bits.u16_leading_ones.?_definition
    :skolemid skolem_internal_vstd.std_specs.bits.u16_leading_ones.?_definition
))))
(assert
 (forall ((i! Poly)) (!
   (=>
    (has_type i! (UINT 16))
    (uInv 32 (vstd.std_specs.bits.u16_leading_ones.? i!))
   )
   :pattern ((vstd.std_specs.bits.u16_leading_ones.? i!))
   :qid internal_vstd.std_specs.bits.u16_leading_ones.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u16_leading_ones.?_pre_post_definition
)))

;; Function-Specs core::num::impl&%7::leading_ones
(declare-fun ens%core!num.impl&%7.leading_ones. (Int Int) Bool)
(assert
 (forall ((i! Int) (r! Int)) (!
   (= (ens%core!num.impl&%7.leading_ones. i! r!) (and
     (uInv 32 r!)
     (= r! (vstd.std_specs.bits.u16_leading_ones.? (I i!)))
   ))
   :pattern ((ens%core!num.impl&%7.leading_ones. i! r!))
   :qid internal_ens__core!num.impl&__7.leading_ones._definition
   :skolemid skolem_internal_ens__core!num.impl&__7.leading_ones._definition
)))

;; Function-Axioms crate::vstd::std_specs::bits::u32_trailing_zeros
(assert
 (fuel_bool_default fuel%vstd.std_specs.bits.u32_trailing_zeros.)
)
(declare-const fuel_nat%vstd.std_specs.bits.u32_trailing_zeros. Fuel)
(assert
 (forall ((i! Poly) (fuel% Fuel)) (!
   (= (vstd.std_specs.bits.rec%u32_trailing_zeros.? i! fuel%) (vstd.std_specs.bits.rec%u32_trailing_zeros.?
     i! zero
   ))
   :pattern ((vstd.std_specs.bits.rec%u32_trailing_zeros.? i! fuel%))
   :qid internal_vstd.std_specs.bits.u32_trailing_zeros._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u32_trailing_zeros._fuel_to_zero_definition
)))
(assert
 (forall ((i! Poly) (fuel% Fuel)) (!
   (=>
    (has_type i! (UINT 32))
    (= (vstd.std_specs.bits.rec%u32_trailing_zeros.? i! (succ fuel%)) (ite
      (= (%I i!) 0)
      32
      (ite
       (not (= (uClip 32 (bitand (I (%I i!)) (I 1))) 0))
       0
       (uClip 32 (Add 1 (vstd.std_specs.bits.rec%u32_trailing_zeros.? (I (uClip 32 (EucDiv (%I
              i!
             ) 2
           ))
          ) fuel%
   )))))))
   :pattern ((vstd.std_specs.bits.rec%u32_trailing_zeros.? i! (succ fuel%)))
   :qid internal_vstd.std_specs.bits.u32_trailing_zeros._fuel_to_body_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u32_trailing_zeros._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.bits.u32_trailing_zeros.)
  (forall ((i! Poly)) (!
    (=>
     (has_type i! (UINT 32))
     (= (vstd.std_specs.bits.u32_trailing_zeros.? i!) (vstd.std_specs.bits.rec%u32_trailing_zeros.?
       i! (succ fuel_nat%vstd.std_specs.bits.u32_trailing_zeros.)
    )))
    :pattern ((vstd.std_specs.bits.u32_trailing_zeros.? i!))
    :qid internal_vstd.std_specs.bits.u32_trailing_zeros.?_definition
    :skolemid skolem_internal_vstd.std_specs.bits.u32_trailing_zeros.?_definition
))))
(assert
 (forall ((i! Poly)) (!
   (=>
    (has_type i! (UINT 32))
    (uInv 32 (vstd.std_specs.bits.u32_trailing_zeros.? i!))
   )
   :pattern ((vstd.std_specs.bits.u32_trailing_zeros.? i!))
   :qid internal_vstd.std_specs.bits.u32_trailing_zeros.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u32_trailing_zeros.?_pre_post_definition
)))

;; Function-Specs core::num::impl&%8::trailing_zeros
(declare-fun ens%core!num.impl&%8.trailing_zeros. (Int Int) Bool)
(assert
 (forall ((i! Int) (r! Int)) (!
   (= (ens%core!num.impl&%8.trailing_zeros. i! r!) (and
     (uInv 32 r!)
     (= r! (vstd.std_specs.bits.u32_trailing_zeros.? (I i!)))
   ))
   :pattern ((ens%core!num.impl&%8.trailing_zeros. i! r!))
   :qid internal_ens__core!num.impl&__8.trailing_zeros._definition
   :skolemid skolem_internal_ens__core!num.impl&__8.trailing_zeros._definition
)))

;; Function-Axioms crate::vstd::std_specs::bits::u32_trailing_ones
(assert
 (fuel_bool_default fuel%vstd.std_specs.bits.u32_trailing_ones.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.bits.u32_trailing_ones.)
  (forall ((i! Poly)) (!
    (= (vstd.std_specs.bits.u32_trailing_ones.? i!) (vstd.std_specs.bits.u32_trailing_zeros.?
      (I (uClip 32 (bitnot (I (%I i!)))))
    ))
    :pattern ((vstd.std_specs.bits.u32_trailing_ones.? i!))
    :qid internal_vstd.std_specs.bits.u32_trailing_ones.?_definition
    :skolemid skolem_internal_vstd.std_specs.bits.u32_trailing_ones.?_definition
))))
(assert
 (forall ((i! Poly)) (!
   (=>
    (has_type i! (UINT 32))
    (uInv 32 (vstd.std_specs.bits.u32_trailing_ones.? i!))
   )
   :pattern ((vstd.std_specs.bits.u32_trailing_ones.? i!))
   :qid internal_vstd.std_specs.bits.u32_trailing_ones.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u32_trailing_ones.?_pre_post_definition
)))

;; Function-Specs core::num::impl&%8::trailing_ones
(declare-fun ens%core!num.impl&%8.trailing_ones. (Int Int) Bool)
(assert
 (forall ((i! Int) (r! Int)) (!
   (= (ens%core!num.impl&%8.trailing_ones. i! r!) (and
     (uInv 32 r!)
     (= r! (vstd.std_specs.bits.u32_trailing_ones.? (I i!)))
   ))
   :pattern ((ens%core!num.impl&%8.trailing_ones. i! r!))
   :qid internal_ens__core!num.impl&__8.trailing_ones._definition
   :skolemid skolem_internal_ens__core!num.impl&__8.trailing_ones._definition
)))

;; Function-Axioms crate::vstd::std_specs::bits::u32_leading_zeros
(assert
 (fuel_bool_default fuel%vstd.std_specs.bits.u32_leading_zeros.)
)
(declare-const fuel_nat%vstd.std_specs.bits.u32_leading_zeros. Fuel)
(assert
 (forall ((i! Poly) (fuel% Fuel)) (!
   (= (vstd.std_specs.bits.rec%u32_leading_zeros.? i! fuel%) (vstd.std_specs.bits.rec%u32_leading_zeros.?
     i! zero
   ))
   :pattern ((vstd.std_specs.bits.rec%u32_leading_zeros.? i! fuel%))
   :qid internal_vstd.std_specs.bits.u32_leading_zeros._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u32_leading_zeros._fuel_to_zero_definition
)))
(assert
 (forall ((i! Poly) (fuel% Fuel)) (!
   (=>
    (has_type i! (UINT 32))
    (= (vstd.std_specs.bits.rec%u32_leading_zeros.? i! (succ fuel%)) (ite
      (= (%I i!) 0)
      32
      (uClip 32 (Sub (vstd.std_specs.bits.rec%u32_leading_zeros.? (I (uClip 32 (EucDiv (%I i!)
            2
          ))
         ) fuel%
        ) 1
   )))))
   :pattern ((vstd.std_specs.bits.rec%u32_leading_zeros.? i! (succ fuel%)))
   :qid internal_vstd.std_specs.bits.u32_leading_zeros._fuel_to_body_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u32_leading_zeros._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.bits.u32_leading_zeros.)
  (forall ((i! Poly)) (!
    (=>
     (has_type i! (UINT 32))
     (= (vstd.std_specs.bits.u32_leading_zeros.? i!) (vstd.std_specs.bits.rec%u32_leading_zeros.?
       i! (succ fuel_nat%vstd.std_specs.bits.u32_leading_zeros.)
    )))
    :pattern ((vstd.std_specs.bits.u32_leading_zeros.? i!))
    :qid internal_vstd.std_specs.bits.u32_leading_zeros.?_definition
    :skolemid skolem_internal_vstd.std_specs.bits.u32_leading_zeros.?_definition
))))
(assert
 (forall ((i! Poly)) (!
   (=>
    (has_type i! (UINT 32))
    (uInv 32 (vstd.std_specs.bits.u32_leading_zeros.? i!))
   )
   :pattern ((vstd.std_specs.bits.u32_leading_zeros.? i!))
   :qid internal_vstd.std_specs.bits.u32_leading_zeros.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u32_leading_zeros.?_pre_post_definition
)))

;; Function-Specs core::num::impl&%8::leading_zeros
(declare-fun ens%core!num.impl&%8.leading_zeros. (Int Int) Bool)
(assert
 (forall ((i! Int) (r! Int)) (!
   (= (ens%core!num.impl&%8.leading_zeros. i! r!) (and
     (uInv 32 r!)
     (= r! (vstd.std_specs.bits.u32_leading_zeros.? (I i!)))
   ))
   :pattern ((ens%core!num.impl&%8.leading_zeros. i! r!))
   :qid internal_ens__core!num.impl&__8.leading_zeros._definition
   :skolemid skolem_internal_ens__core!num.impl&__8.leading_zeros._definition
)))

;; Function-Axioms crate::vstd::std_specs::bits::u32_leading_ones
(assert
 (fuel_bool_default fuel%vstd.std_specs.bits.u32_leading_ones.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.bits.u32_leading_ones.)
  (forall ((i! Poly)) (!
    (= (vstd.std_specs.bits.u32_leading_ones.? i!) (vstd.std_specs.bits.u32_leading_zeros.?
      (I (uClip 32 (bitnot (I (%I i!)))))
    ))
    :pattern ((vstd.std_specs.bits.u32_leading_ones.? i!))
    :qid internal_vstd.std_specs.bits.u32_leading_ones.?_definition
    :skolemid skolem_internal_vstd.std_specs.bits.u32_leading_ones.?_definition
))))
(assert
 (forall ((i! Poly)) (!
   (=>
    (has_type i! (UINT 32))
    (uInv 32 (vstd.std_specs.bits.u32_leading_ones.? i!))
   )
   :pattern ((vstd.std_specs.bits.u32_leading_ones.? i!))
   :qid internal_vstd.std_specs.bits.u32_leading_ones.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u32_leading_ones.?_pre_post_definition
)))

;; Function-Specs core::num::impl&%8::leading_ones
(declare-fun ens%core!num.impl&%8.leading_ones. (Int Int) Bool)
(assert
 (forall ((i! Int) (r! Int)) (!
   (= (ens%core!num.impl&%8.leading_ones. i! r!) (and
     (uInv 32 r!)
     (= r! (vstd.std_specs.bits.u32_leading_ones.? (I i!)))
   ))
   :pattern ((ens%core!num.impl&%8.leading_ones. i! r!))
   :qid internal_ens__core!num.impl&__8.leading_ones._definition
   :skolemid skolem_internal_ens__core!num.impl&__8.leading_ones._definition
)))

;; Function-Axioms crate::vstd::std_specs::bits::u64_trailing_zeros
(assert
 (fuel_bool_default fuel%vstd.std_specs.bits.u64_trailing_zeros.)
)
(declare-const fuel_nat%vstd.std_specs.bits.u64_trailing_zeros. Fuel)
(assert
 (forall ((i! Poly) (fuel% Fuel)) (!
   (= (vstd.std_specs.bits.rec%u64_trailing_zeros.? i! fuel%) (vstd.std_specs.bits.rec%u64_trailing_zeros.?
     i! zero
   ))
   :pattern ((vstd.std_specs.bits.rec%u64_trailing_zeros.? i! fuel%))
   :qid internal_vstd.std_specs.bits.u64_trailing_zeros._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u64_trailing_zeros._fuel_to_zero_definition
)))
(assert
 (forall ((i! Poly) (fuel% Fuel)) (!
   (=>
    (has_type i! (UINT 64))
    (= (vstd.std_specs.bits.rec%u64_trailing_zeros.? i! (succ fuel%)) (ite
      (= (%I i!) 0)
      64
      (ite
       (not (= (uClip 64 (bitand (I (%I i!)) (I 1))) 0))
       0
       (uClip 32 (Add 1 (vstd.std_specs.bits.rec%u64_trailing_zeros.? (I (uClip 64 (EucDiv (%I
              i!
             ) 2
           ))
          ) fuel%
   )))))))
   :pattern ((vstd.std_specs.bits.rec%u64_trailing_zeros.? i! (succ fuel%)))
   :qid internal_vstd.std_specs.bits.u64_trailing_zeros._fuel_to_body_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u64_trailing_zeros._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.bits.u64_trailing_zeros.)
  (forall ((i! Poly)) (!
    (=>
     (has_type i! (UINT 64))
     (= (vstd.std_specs.bits.u64_trailing_zeros.? i!) (vstd.std_specs.bits.rec%u64_trailing_zeros.?
       i! (succ fuel_nat%vstd.std_specs.bits.u64_trailing_zeros.)
    )))
    :pattern ((vstd.std_specs.bits.u64_trailing_zeros.? i!))
    :qid internal_vstd.std_specs.bits.u64_trailing_zeros.?_definition
    :skolemid skolem_internal_vstd.std_specs.bits.u64_trailing_zeros.?_definition
))))
(assert
 (forall ((i! Poly)) (!
   (=>
    (has_type i! (UINT 64))
    (uInv 32 (vstd.std_specs.bits.u64_trailing_zeros.? i!))
   )
   :pattern ((vstd.std_specs.bits.u64_trailing_zeros.? i!))
   :qid internal_vstd.std_specs.bits.u64_trailing_zeros.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u64_trailing_zeros.?_pre_post_definition
)))

;; Function-Specs core::num::impl&%9::trailing_zeros
(declare-fun ens%core!num.impl&%9.trailing_zeros. (Int Int) Bool)
(assert
 (forall ((i! Int) (r! Int)) (!
   (= (ens%core!num.impl&%9.trailing_zeros. i! r!) (and
     (uInv 32 r!)
     (= r! (vstd.std_specs.bits.u64_trailing_zeros.? (I i!)))
   ))
   :pattern ((ens%core!num.impl&%9.trailing_zeros. i! r!))
   :qid internal_ens__core!num.impl&__9.trailing_zeros._definition
   :skolemid skolem_internal_ens__core!num.impl&__9.trailing_zeros._definition
)))

;; Function-Axioms crate::vstd::std_specs::bits::u64_trailing_ones
(assert
 (fuel_bool_default fuel%vstd.std_specs.bits.u64_trailing_ones.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.bits.u64_trailing_ones.)
  (forall ((i! Poly)) (!
    (= (vstd.std_specs.bits.u64_trailing_ones.? i!) (uClip 32 (vstd.std_specs.bits.u64_trailing_zeros.?
       (I (uClip 64 (bitnot (I (%I i!)))))
    )))
    :pattern ((vstd.std_specs.bits.u64_trailing_ones.? i!))
    :qid internal_vstd.std_specs.bits.u64_trailing_ones.?_definition
    :skolemid skolem_internal_vstd.std_specs.bits.u64_trailing_ones.?_definition
))))
(assert
 (forall ((i! Poly)) (!
   (=>
    (has_type i! (UINT 64))
    (uInv 32 (vstd.std_specs.bits.u64_trailing_ones.? i!))
   )
   :pattern ((vstd.std_specs.bits.u64_trailing_ones.? i!))
   :qid internal_vstd.std_specs.bits.u64_trailing_ones.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u64_trailing_ones.?_pre_post_definition
)))

;; Function-Specs core::num::impl&%9::trailing_ones
(declare-fun ens%core!num.impl&%9.trailing_ones. (Int Int) Bool)
(assert
 (forall ((i! Int) (r! Int)) (!
   (= (ens%core!num.impl&%9.trailing_ones. i! r!) (and
     (uInv 32 r!)
     (= r! (vstd.std_specs.bits.u64_trailing_ones.? (I i!)))
   ))
   :pattern ((ens%core!num.impl&%9.trailing_ones. i! r!))
   :qid internal_ens__core!num.impl&__9.trailing_ones._definition
   :skolemid skolem_internal_ens__core!num.impl&__9.trailing_ones._definition
)))

;; Function-Axioms crate::vstd::std_specs::bits::u64_leading_zeros
(declare-const fuel_nat%vstd.std_specs.bits.u64_leading_zeros. Fuel)
(assert
 (forall ((i! Poly) (fuel% Fuel)) (!
   (= (vstd.std_specs.bits.rec%u64_leading_zeros.? i! fuel%) (vstd.std_specs.bits.rec%u64_leading_zeros.?
     i! zero
   ))
   :pattern ((vstd.std_specs.bits.rec%u64_leading_zeros.? i! fuel%))
   :qid internal_vstd.std_specs.bits.u64_leading_zeros._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u64_leading_zeros._fuel_to_zero_definition
)))
(assert
 (forall ((i! Poly) (fuel% Fuel)) (!
   (=>
    (has_type i! (UINT 64))
    (= (vstd.std_specs.bits.rec%u64_leading_zeros.? i! (succ fuel%)) (ite
      (= (%I i!) 0)
      64
      (Sub (vstd.std_specs.bits.rec%u64_leading_zeros.? (I (uClip 64 (EucDiv (%I i!) 2)))
        fuel%
       ) 1
   ))))
   :pattern ((vstd.std_specs.bits.rec%u64_leading_zeros.? i! (succ fuel%)))
   :qid internal_vstd.std_specs.bits.u64_leading_zeros._fuel_to_body_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u64_leading_zeros._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.bits.u64_leading_zeros.)
  (forall ((i! Poly)) (!
    (=>
     (has_type i! (UINT 64))
     (= (vstd.std_specs.bits.u64_leading_zeros.? i!) (vstd.std_specs.bits.rec%u64_leading_zeros.?
       i! (succ fuel_nat%vstd.std_specs.bits.u64_leading_zeros.)
    )))
    :pattern ((vstd.std_specs.bits.u64_leading_zeros.? i!))
    :qid internal_vstd.std_specs.bits.u64_leading_zeros.?_definition
    :skolemid skolem_internal_vstd.std_specs.bits.u64_leading_zeros.?_definition
))))

;; Function-Specs core::num::impl&%9::leading_zeros
(declare-fun ens%core!num.impl&%9.leading_zeros. (Int Int) Bool)
(assert
 (forall ((i! Int) (r! Int)) (!
   (= (ens%core!num.impl&%9.leading_zeros. i! r!) (and
     (uInv 32 r!)
     (= r! (vstd.std_specs.bits.u64_leading_zeros.? (I i!)))
   ))
   :pattern ((ens%core!num.impl&%9.leading_zeros. i! r!))
   :qid internal_ens__core!num.impl&__9.leading_zeros._definition
   :skolemid skolem_internal_ens__core!num.impl&__9.leading_zeros._definition
)))

;; Function-Axioms crate::vstd::std_specs::bits::u64_leading_ones
(assert
 (fuel_bool_default fuel%vstd.std_specs.bits.u64_leading_ones.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.bits.u64_leading_ones.)
  (forall ((i! Poly)) (!
    (= (vstd.std_specs.bits.u64_leading_ones.? i!) (uClip 32 (vstd.std_specs.bits.u64_leading_zeros.?
       (I (uClip 64 (bitnot (I (%I i!)))))
    )))
    :pattern ((vstd.std_specs.bits.u64_leading_ones.? i!))
    :qid internal_vstd.std_specs.bits.u64_leading_ones.?_definition
    :skolemid skolem_internal_vstd.std_specs.bits.u64_leading_ones.?_definition
))))
(assert
 (forall ((i! Poly)) (!
   (=>
    (has_type i! (UINT 64))
    (uInv 32 (vstd.std_specs.bits.u64_leading_ones.? i!))
   )
   :pattern ((vstd.std_specs.bits.u64_leading_ones.? i!))
   :qid internal_vstd.std_specs.bits.u64_leading_ones.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.bits.u64_leading_ones.?_pre_post_definition
)))

;; Function-Specs core::num::impl&%9::leading_ones
(declare-fun ens%core!num.impl&%9.leading_ones. (Int Int) Bool)
(assert
 (forall ((i! Int) (r! Int)) (!
   (= (ens%core!num.impl&%9.leading_ones. i! r!) (and
     (uInv 32 r!)
     (= r! (vstd.std_specs.bits.u64_leading_ones.? (I i!)))
   ))
   :pattern ((ens%core!num.impl&%9.leading_ones. i! r!))
   :qid internal_ens__core!num.impl&__9.leading_ones._definition
   :skolemid skolem_internal_ens__core!num.impl&__9.leading_ones._definition
)))

;; Function-Specs crate::vstd::std_specs::bits::axiom_u8_trailing_zeros
(declare-fun ens%vstd.std_specs.bits.axiom_u8_trailing_zeros. (Int) Bool)
(assert
 (forall ((i! Int)) (!
   (= (ens%vstd.std_specs.bits.axiom_u8_trailing_zeros. i!) (and
     (let
      ((tmp%%$ (vstd.std_specs.bits.u8_trailing_zeros.? (I i!))))
      (and
       (<= 0 tmp%%$)
       (<= tmp%%$ 8)
     ))
     (= (= i! 0) (= (vstd.std_specs.bits.u8_trailing_zeros.? (I i!)) 8))
     (=>
      (let
       ((tmp%%$ (vstd.std_specs.bits.u8_trailing_zeros.? (I i!))))
       (and
        (<= 0 tmp%%$)
        (< tmp%%$ 8)
      ))
      (= (uClip 8 (bitand (I (uClip 8 (bitshr (I i!) (I (uClip 8 (vstd.std_specs.bits.u8_trailing_zeros.?
               (I i!)
          )))))
         ) (I 1)
        )
       ) 1
     ))
     (= (uClip 8 (bitshl (I i!) (I (uClip 8 (Sub 8 (uClip 8 (vstd.std_specs.bits.u8_trailing_zeros.?
             (I i!)
       ))))))
      ) 0
     )
     (forall ((j$ Poly)) (!
       (=>
        (has_type j$ (UINT 8))
        (=>
         (and
          (<= 0 (%I j$))
          (< (%I j$) (vstd.std_specs.bits.u8_trailing_zeros.? (I i!)))
         )
         (= (uClip 8 (bitand (I (uClip 8 (bitshr (I i!) (I (%I j$))))) (I 1))) 0)
       ))
       :pattern ((uClip 8 (bitshr (I i!) (I (%I j$)))))
       :qid user_crate__vstd__std_specs__bits__axiom_u8_trailing_zeros_0
       :skolemid skolem_user_crate__vstd__std_specs__bits__axiom_u8_trailing_zeros_0
   ))))
   :pattern ((ens%vstd.std_specs.bits.axiom_u8_trailing_zeros. i!))
   :qid internal_ens__vstd.std_specs.bits.axiom_u8_trailing_zeros._definition
   :skolemid skolem_internal_ens__vstd.std_specs.bits.axiom_u8_trailing_zeros._definition
)))

;; Broadcast crate::vstd::std_specs::bits::axiom_u8_trailing_zeros
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.bits.axiom_u8_trailing_zeros.)
  (forall ((i! Poly)) (!
    (=>
     (has_type i! (UINT 8))
     (and
      (and
       (and
        (and
         (let
          ((tmp%%$ (vstd.std_specs.bits.u8_trailing_zeros.? i!)))
          (and
           (<= 0 tmp%%$)
           (<= tmp%%$ 8)
         ))
         (= (= (%I i!) 0) (= (vstd.std_specs.bits.u8_trailing_zeros.? i!) 8))
        )
        (=>
         (let
          ((tmp%%$ (vstd.std_specs.bits.u8_trailing_zeros.? i!)))
          (and
           (<= 0 tmp%%$)
           (< tmp%%$ 8)
         ))
         (= (uClip 8 (bitand (I (uClip 8 (bitshr (I (%I i!)) (I (uClip 8 (vstd.std_specs.bits.u8_trailing_zeros.?
                  i!
             )))))
            ) (I 1)
           )
          ) 1
       )))
       (= (uClip 8 (bitshl (I (%I i!)) (I (uClip 8 (Sub 8 (uClip 8 (vstd.std_specs.bits.u8_trailing_zeros.?
               i!
         ))))))
        ) 0
      ))
      (forall ((j$ Poly)) (!
        (=>
         (has_type j$ (UINT 8))
         (=>
          (and
           (<= 0 (%I j$))
           (< (%I j$) (vstd.std_specs.bits.u8_trailing_zeros.? i!))
          )
          (= (uClip 8 (bitand (I (uClip 8 (bitshr (I (%I i!)) (I (%I j$))))) (I 1))) 0)
        ))
        :pattern ((uClip 8 (bitshr (I (%I i!)) (I (%I j$)))))
        :qid user_crate__vstd__std_specs__bits__axiom_u8_trailing_zeros_1
        :skolemid skolem_user_crate__vstd__std_specs__bits__axiom_u8_trailing_zeros_1
    ))))
    :pattern ((vstd.std_specs.bits.u8_trailing_zeros.? i!))
    :qid user_crate__vstd__std_specs__bits__axiom_u8_trailing_zeros_2
    :skolemid skolem_user_crate__vstd__std_specs__bits__axiom_u8_trailing_zeros_2
))))

;; Broadcast crate::vstd::std_specs::bits::axiom_u8_trailing_ones
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.bits.axiom_u8_trailing_ones.)
  (forall ((i! Poly)) (!
    (=>
     (has_type i! (UINT 8))
     (and
      (and
       (and
        (and
         (let
          ((tmp%%$ (vstd.std_specs.bits.u8_trailing_ones.? i!)))
          (and
           (<= 0 tmp%%$)
           (<= tmp%%$ 8)
         ))
         (= (= (%I i!) 255) (= (vstd.std_specs.bits.u8_trailing_ones.? i!) 8))
        )
        (=>
         (let
          ((tmp%%$ (vstd.std_specs.bits.u8_trailing_ones.? i!)))
          (and
           (<= 0 tmp%%$)
           (< tmp%%$ 8)
         ))
         (= (uClip 8 (bitand (I (uClip 8 (bitshr (I (%I i!)) (I (uClip 8 (vstd.std_specs.bits.u8_trailing_ones.?
                  i!
             )))))
            ) (I 1)
           )
          ) 0
       )))
       (= (uClip 8 (bitshl (I (uClip 8 (bitnot (I (%I i!))))) (I (uClip 8 (Sub 8 (uClip 8 (vstd.std_specs.bits.u8_trailing_ones.?
               i!
         ))))))
        ) 0
      ))
      (forall ((j$ Poly)) (!
        (=>
         (has_type j$ (UINT 8))
         (=>
          (and
           (<= 0 (%I j$))
           (< (%I j$) (vstd.std_specs.bits.u8_trailing_ones.? i!))
          )
          (= (uClip 8 (bitand (I (uClip 8 (bitshr (I (%I i!)) (I (%I j$))))) (I 1))) 1)
        ))
        :pattern ((uClip 8 (bitshr (I (%I i!)) (I (%I j$)))))
        :qid user_crate__vstd__std_specs__bits__axiom_u8_trailing_ones_5
        :skolemid skolem_user_crate__vstd__std_specs__bits__axiom_u8_trailing_ones_5
    ))))
    :pattern ((vstd.std_specs.bits.u8_trailing_ones.? i!))
    :qid user_crate__vstd__std_specs__bits__axiom_u8_trailing_ones_6
    :skolemid skolem_user_crate__vstd__std_specs__bits__axiom_u8_trailing_ones_6
))))

;; Function-Specs crate::vstd::std_specs::bits::axiom_u8_leading_zeros
(declare-fun ens%vstd.std_specs.bits.axiom_u8_leading_zeros. (Int) Bool)
(assert
 (forall ((i! Int)) (!
   (= (ens%vstd.std_specs.bits.axiom_u8_leading_zeros. i!) (and
     (let
      ((tmp%%$ (vstd.std_specs.bits.u8_leading_zeros.? (I i!))))
      (and
       (<= 0 tmp%%$)
       (<= tmp%%$ 8)
     ))
     (= (= i! 0) (= (vstd.std_specs.bits.u8_leading_zeros.? (I i!)) 8))
     (=>
      (let
       ((tmp%%$ (vstd.std_specs.bits.u8_leading_zeros.? (I i!))))
       (and
        (<= 0 tmp%%$)
        (< tmp%%$ 8)
      ))
      (not (= (uClip 8 (bitand (I (uClip 8 (bitshr (I i!) (I (uClip 8 (Sub 7 (uClip 8 (vstd.std_specs.bits.u8_leading_zeros.?
                  (I i!)
           )))))))
          ) (I 1)
         )
        ) 0
     )))
     (= (uClip 8 (bitshr (I i!) (I (uClip 8 (Sub 8 (uClip 8 (vstd.std_specs.bits.u8_leading_zeros.?
             (I i!)
       ))))))
      ) 0
     )
     (forall ((j$ Poly)) (!
       (=>
        (has_type j$ (UINT 8))
        (=>
         (and
          (<= (Sub 8 (vstd.std_specs.bits.u8_leading_zeros.? (I i!))) (%I j$))
          (< (%I j$) 8)
         )
         (= (uClip 8 (bitand (I (uClip 8 (bitshr (I i!) (I (%I j$))))) (I 1))) 0)
       ))
       :pattern ((uClip 8 (bitshr (I i!) (I (%I j$)))))
       :qid user_crate__vstd__std_specs__bits__axiom_u8_leading_zeros_9
       :skolemid skolem_user_crate__vstd__std_specs__bits__axiom_u8_leading_zeros_9
   ))))
   :pattern ((ens%vstd.std_specs.bits.axiom_u8_leading_zeros. i!))
   :qid internal_ens__vstd.std_specs.bits.axiom_u8_leading_zeros._definition
   :skolemid skolem_internal_ens__vstd.std_specs.bits.axiom_u8_leading_zeros._definition
)))

;; Broadcast crate::vstd::std_specs::bits::axiom_u8_leading_zeros
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.bits.axiom_u8_leading_zeros.)
  (forall ((i! Poly)) (!
    (=>
     (has_type i! (UINT 8))
     (and
      (and
       (and
        (and
         (let
          ((tmp%%$ (vstd.std_specs.bits.u8_leading_zeros.? i!)))
          (and
           (<= 0 tmp%%$)
           (<= tmp%%$ 8)
         ))
         (= (= (%I i!) 0) (= (vstd.std_specs.bits.u8_leading_zeros.? i!) 8))
        )
        (=>
         (let
          ((tmp%%$ (vstd.std_specs.bits.u8_leading_zeros.? i!)))
          (and
           (<= 0 tmp%%$)
           (< tmp%%$ 8)
         ))
         (not (= (uClip 8 (bitand (I (uClip 8 (bitshr (I (%I i!)) (I (uClip 8 (Sub 7 (uClip 8 (vstd.std_specs.bits.u8_leading_zeros.?
                     i!
              )))))))
             ) (I 1)
            )
           ) 0
       ))))
       (= (uClip 8 (bitshr (I (%I i!)) (I (uClip 8 (Sub 8 (uClip 8 (vstd.std_specs.bits.u8_leading_zeros.?
               i!
         ))))))
        ) 0
      ))
      (forall ((j$ Poly)) (!
        (=>
         (has_type j$ (UINT 8))
         (=>
          (and
           (<= (Sub 8 (vstd.std_specs.bits.u8_leading_zeros.? i!)) (%I j$))
           (< (%I j$) 8)
          )
          (= (uClip 8 (bitand (I (uClip 8 (bitshr (I (%I i!)) (I (%I j$))))) (I 1))) 0)
        ))
        :pattern ((uClip 8 (bitshr (I (%I i!)) (I (%I j$)))))
        :qid user_crate__vstd__std_specs__bits__axiom_u8_leading_zeros_10
        :skolemid skolem_user_crate__vstd__std_specs__bits__axiom_u8_leading_zeros_10
    ))))
    :pattern ((vstd.std_specs.bits.u8_leading_zeros.? i!))
    :qid user_crate__vstd__std_specs__bits__axiom_u8_leading_zeros_11
    :skolemid skolem_user_crate__vstd__std_specs__bits__axiom_u8_leading_zeros_11
))))

;; Broadcast crate::vstd::std_specs::bits::axiom_u8_leading_ones
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.bits.axiom_u8_leading_ones.)
  (forall ((i! Poly)) (!
    (=>
     (has_type i! (UINT 8))
     (and
      (and
       (and
        (and
         (let
          ((tmp%%$ (vstd.std_specs.bits.u8_leading_ones.? i!)))
          (and
           (<= 0 tmp%%$)
           (<= tmp%%$ 8)
         ))
         (= (= (%I i!) 255) (= (vstd.std_specs.bits.u8_leading_ones.? i!) 8))
        )
        (=>
         (let
          ((tmp%%$ (vstd.std_specs.bits.u8_leading_ones.? i!)))
          (and
           (<= 0 tmp%%$)
           (< tmp%%$ 8)
         ))
         (= (uClip 8 (bitand (I (uClip 8 (bitshr (I (%I i!)) (I (uClip 8 (Sub 7 (uClip 8 (vstd.std_specs.bits.u8_leading_ones.?
                    i!
             )))))))
            ) (I 1)
           )
          ) 0
       )))
       (= (uClip 8 (bitshr (I (uClip 8 (bitnot (I (%I i!))))) (I (uClip 8 (Sub 8 (uClip 8 (vstd.std_specs.bits.u8_leading_ones.?
               i!
         ))))))
        ) 0
      ))
      (forall ((j$ Poly)) (!
        (=>
         (has_type j$ (UINT 8))
         (=>
          (and
           (<= (Sub 8 (vstd.std_specs.bits.u8_leading_ones.? i!)) (%I j$))
           (< (%I j$) 8)
          )
          (= (uClip 8 (bitand (I (uClip 8 (bitshr (I (%I i!)) (I (%I j$))))) (I 1))) 1)
        ))
        :pattern ((uClip 8 (bitshr (I (%I i!)) (I (%I j$)))))
        :qid user_crate__vstd__std_specs__bits__axiom_u8_leading_ones_14
        :skolemid skolem_user_crate__vstd__std_specs__bits__axiom_u8_leading_ones_14
    ))))
    :pattern ((vstd.std_specs.bits.u8_leading_ones.? i!))
    :qid user_crate__vstd__std_specs__bits__axiom_u8_leading_ones_15
    :skolemid skolem_user_crate__vstd__std_specs__bits__axiom_u8_leading_ones_15
))))

;; Function-Specs crate::vstd::std_specs::bits::axiom_u16_trailing_zeros
(declare-fun ens%vstd.std_specs.bits.axiom_u16_trailing_zeros. (Int) Bool)
(assert
 (forall ((i! Int)) (!
   (= (ens%vstd.std_specs.bits.axiom_u16_trailing_zeros. i!) (and
     (let
      ((tmp%%$ (vstd.std_specs.bits.u16_trailing_zeros.? (I i!))))
      (and
       (<= 0 tmp%%$)
       (<= tmp%%$ 16)
     ))
     (= (= i! 0) (= (vstd.std_specs.bits.u16_trailing_zeros.? (I i!)) 16))
     (=>
      (let
       ((tmp%%$ (vstd.std_specs.bits.u16_trailing_zeros.? (I i!))))
       (and
        (<= 0 tmp%%$)
        (< tmp%%$ 16)
      ))
      (= (uClip 16 (bitand (I (uClip 16 (bitshr (I i!) (I (uClip 16 (vstd.std_specs.bits.u16_trailing_zeros.?
               (I i!)
          )))))
         ) (I 1)
        )
       ) 1
     ))
     (= (uClip 16 (bitshl (I i!) (I (uClip 16 (Sub 16 (uClip 16 (vstd.std_specs.bits.u16_trailing_zeros.?
             (I i!)
       ))))))
      ) 0
     )
     (forall ((j$ Poly)) (!
       (=>
        (has_type j$ (UINT 16))
        (=>
         (and
          (<= 0 (%I j$))
          (< (%I j$) (vstd.std_specs.bits.u16_trailing_zeros.? (I i!)))
         )
         (= (uClip 16 (bitand (I (uClip 16 (bitshr (I i!) (I (%I j$))))) (I 1))) 0)
       ))
       :pattern ((uClip 16 (bitshr (I i!) (I (%I j$)))))
       :qid user_crate__vstd__std_specs__bits__axiom_u16_trailing_zeros_18
       :skolemid skolem_user_crate__vstd__std_specs__bits__axiom_u16_trailing_zeros_18
   ))))
   :pattern ((ens%vstd.std_specs.bits.axiom_u16_trailing_zeros. i!))
   :qid internal_ens__vstd.std_specs.bits.axiom_u16_trailing_zeros._definition
   :skolemid skolem_internal_ens__vstd.std_specs.bits.axiom_u16_trailing_zeros._definition
)))

;; Broadcast crate::vstd::std_specs::bits::axiom_u16_trailing_zeros
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.bits.axiom_u16_trailing_zeros.)
  (forall ((i! Poly)) (!
    (=>
     (has_type i! (UINT 16))
     (and
      (and
       (and
        (and
         (let
          ((tmp%%$ (vstd.std_specs.bits.u16_trailing_zeros.? i!)))
          (and
           (<= 0 tmp%%$)
           (<= tmp%%$ 16)
         ))
         (= (= (%I i!) 0) (= (vstd.std_specs.bits.u16_trailing_zeros.? i!) 16))
        )
        (=>
         (let
          ((tmp%%$ (vstd.std_specs.bits.u16_trailing_zeros.? i!)))
          (and
           (<= 0 tmp%%$)
           (< tmp%%$ 16)
         ))
         (= (uClip 16 (bitand (I (uClip 16 (bitshr (I (%I i!)) (I (uClip 16 (vstd.std_specs.bits.u16_trailing_zeros.?
                  i!
             )))))
            ) (I 1)
           )
          ) 1
       )))
       (= (uClip 16 (bitshl (I (%I i!)) (I (uClip 16 (Sub 16 (uClip 16 (vstd.std_specs.bits.u16_trailing_zeros.?
               i!
         ))))))
        ) 0
      ))
      (forall ((j$ Poly)) (!
        (=>
         (has_type j$ (UINT 16))
         (=>
          (and
           (<= 0 (%I j$))
           (< (%I j$) (vstd.std_specs.bits.u16_trailing_zeros.? i!))
          )
          (= (uClip 16 (bitand (I (uClip 16 (bitshr (I (%I i!)) (I (%I j$))))) (I 1))) 0)
        ))
        :pattern ((uClip 16 (bitshr (I (%I i!)) (I (%I j$)))))
        :qid user_crate__vstd__std_specs__bits__axiom_u16_trailing_zeros_19
        :skolemid skolem_user_crate__vstd__std_specs__bits__axiom_u16_trailing_zeros_19
    ))))
    :pattern ((vstd.std_specs.bits.u16_trailing_zeros.? i!))
    :qid user_crate__vstd__std_specs__bits__axiom_u16_trailing_zeros_20
    :skolemid skolem_user_crate__vstd__std_specs__bits__axiom_u16_trailing_zeros_20
))))

;; Broadcast crate::vstd::std_specs::bits::axiom_u16_trailing_ones
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.bits.axiom_u16_trailing_ones.)
  (forall ((i! Poly)) (!
    (=>
     (has_type i! (UINT 16))
     (and
      (and
       (and
        (and
         (let
          ((tmp%%$ (vstd.std_specs.bits.u16_trailing_ones.? i!)))
          (and
           (<= 0 tmp%%$)
           (<= tmp%%$ 16)
         ))
         (= (= (%I i!) 65535) (= (vstd.std_specs.bits.u16_trailing_ones.? i!) 16))
        )
        (=>
         (let
          ((tmp%%$ (vstd.std_specs.bits.u16_trailing_ones.? i!)))
          (and
           (<= 0 tmp%%$)
           (< tmp%%$ 16)
         ))
         (= (uClip 16 (bitand (I (uClip 16 (bitshr (I (%I i!)) (I (uClip 16 (vstd.std_specs.bits.u16_trailing_ones.?
                  i!
             )))))
            ) (I 1)
           )
          ) 0
       )))
       (= (uClip 16 (bitshl (I (uClip 16 (bitnot (I (%I i!))))) (I (uClip 16 (Sub 16 (uClip 16
              (vstd.std_specs.bits.u16_trailing_ones.? i!)
         )))))
        ) 0
      ))
      (forall ((j$ Poly)) (!
        (=>
         (has_type j$ (UINT 16))
         (=>
          (and
           (<= 0 (%I j$))
           (< (%I j$) (vstd.std_specs.bits.u16_trailing_ones.? i!))
          )
          (= (uClip 16 (bitand (I (uClip 16 (bitshr (I (%I i!)) (I (%I j$))))) (I 1))) 1)
        ))
        :pattern ((uClip 16 (bitshr (I (%I i!)) (I (%I j$)))))
        :qid user_crate__vstd__std_specs__bits__axiom_u16_trailing_ones_23
        :skolemid skolem_user_crate__vstd__std_specs__bits__axiom_u16_trailing_ones_23
    ))))
    :pattern ((vstd.std_specs.bits.u16_trailing_ones.? i!))
    :qid user_crate__vstd__std_specs__bits__axiom_u16_trailing_ones_24
    :skolemid skolem_user_crate__vstd__std_specs__bits__axiom_u16_trailing_ones_24
))))

;; Function-Specs crate::vstd::std_specs::bits::axiom_u16_leading_zeros
(declare-fun ens%vstd.std_specs.bits.axiom_u16_leading_zeros. (Int) Bool)
(assert
 (forall ((i! Int)) (!
   (= (ens%vstd.std_specs.bits.axiom_u16_leading_zeros. i!) (and
     (let
      ((tmp%%$ (vstd.std_specs.bits.u16_leading_zeros.? (I i!))))
      (and
       (<= 0 tmp%%$)
       (<= tmp%%$ 16)
     ))
     (= (= i! 0) (= (vstd.std_specs.bits.u16_leading_zeros.? (I i!)) 16))
     (=>
      (let
       ((tmp%%$ (vstd.std_specs.bits.u16_leading_zeros.? (I i!))))
       (and
        (<= 0 tmp%%$)
        (< tmp%%$ 16)
      ))
      (not (= (uClip 16 (bitand (I (uClip 16 (bitshr (I i!) (I (uClip 16 (Sub 15 (uClip 16 (vstd.std_specs.bits.u16_leading_zeros.?
                  (I i!)
           )))))))
          ) (I 1)
         )
        ) 0
     )))
     (= (uClip 16 (bitshr (I i!) (I (uClip 16 (Sub 16 (uClip 16 (vstd.std_specs.bits.u16_leading_zeros.?
             (I i!)
       ))))))
      ) 0
     )
     (forall ((j$ Poly)) (!
       (=>
        (has_type j$ (UINT 16))
        (=>
         (and
          (<= (Sub 16 (vstd.std_specs.bits.u16_leading_zeros.? (I i!))) (%I j$))
          (< (%I j$) 16)
         )
         (= (uClip 16 (bitand (I (uClip 16 (bitshr (I i!) (I (%I j$))))) (I 1))) 0)
       ))
       :pattern ((uClip 16 (bitshr (I i!) (I (%I j$)))))
       :qid user_crate__vstd__std_specs__bits__axiom_u16_leading_zeros_27
       :skolemid skolem_user_crate__vstd__std_specs__bits__axiom_u16_leading_zeros_27
   ))))
   :pattern ((ens%vstd.std_specs.bits.axiom_u16_leading_zeros. i!))
   :qid internal_ens__vstd.std_specs.bits.axiom_u16_leading_zeros._definition
   :skolemid skolem_internal_ens__vstd.std_specs.bits.axiom_u16_leading_zeros._definition
)))

;; Broadcast crate::vstd::std_specs::bits::axiom_u16_leading_zeros
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.bits.axiom_u16_leading_zeros.)
  (forall ((i! Poly)) (!
    (=>
     (has_type i! (UINT 16))
     (and
      (and
       (and
        (and
         (let
          ((tmp%%$ (vstd.std_specs.bits.u16_leading_zeros.? i!)))
          (and
           (<= 0 tmp%%$)
           (<= tmp%%$ 16)
         ))
         (= (= (%I i!) 0) (= (vstd.std_specs.bits.u16_leading_zeros.? i!) 16))
        )
        (=>
         (let
          ((tmp%%$ (vstd.std_specs.bits.u16_leading_zeros.? i!)))
          (and
           (<= 0 tmp%%$)
           (< tmp%%$ 16)
         ))
         (not (= (uClip 16 (bitand (I (uClip 16 (bitshr (I (%I i!)) (I (uClip 16 (Sub 15 (uClip 16 (vstd.std_specs.bits.u16_leading_zeros.?
                     i!
              )))))))
             ) (I 1)
            )
           ) 0
       ))))
       (= (uClip 16 (bitshr (I (%I i!)) (I (uClip 16 (Sub 16 (uClip 16 (vstd.std_specs.bits.u16_leading_zeros.?
               i!
         ))))))
        ) 0
      ))
      (forall ((j$ Poly)) (!
        (=>
         (has_type j$ (UINT 16))
         (=>
          (and
           (<= (Sub 16 (vstd.std_specs.bits.u16_leading_zeros.? i!)) (%I j$))
           (< (%I j$) 16)
          )
          (= (uClip 16 (bitand (I (uClip 16 (bitshr (I (%I i!)) (I (%I j$))))) (I 1))) 0)
        ))
        :pattern ((uClip 16 (bitshr (I (%I i!)) (I (%I j$)))))
        :qid user_crate__vstd__std_specs__bits__axiom_u16_leading_zeros_28
        :skolemid skolem_user_crate__vstd__std_specs__bits__axiom_u16_leading_zeros_28
    ))))
    :pattern ((vstd.std_specs.bits.u16_leading_zeros.? i!))
    :qid user_crate__vstd__std_specs__bits__axiom_u16_leading_zeros_29
    :skolemid skolem_user_crate__vstd__std_specs__bits__axiom_u16_leading_zeros_29
))))

;; Function-Def crate::vstd::std_specs::bits::axiom_u16_leading_ones
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/std_specs/bits.rs:364:5: 364:11 (#0)
(set-option :sat.euf true)
(set-option :tactic.default_tactic sat)
(set-option :smt.ematching false)
(set-option :smt.case_split 0)
(get-info :all-statistics)
(assert
 true
)
;; bitvector assertion not satisfied
(declare-const %%location_label%%0 Bool)
(assert
 (not (=>
   %%location_label%%0
   (= (bvnot (_ bv65535 16)) ((_ zero_extend 15) (_ bv0 1)))
)))
(get-info :version)
(set-option :rlimit 30000000)
(check-sat)
(set-option :rlimit 0)
