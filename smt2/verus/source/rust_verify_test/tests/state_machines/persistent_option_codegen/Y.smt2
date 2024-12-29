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

;; MODULE 'module Y'

;; Fuel
(declare-const fuel%vstd!std_specs.option.impl&%0.is_Some. FuelId)
(declare-const fuel%vstd!std_specs.option.impl&%0.get_Some_0. FuelId)
(declare-const fuel%vstd!std_specs.option.is_some. FuelId)
(declare-const fuel%vstd!std_specs.option.is_none. FuelId)
(declare-const fuel%vstd!std_specs.option.spec_unwrap. FuelId)
(declare-const fuel%vstd!state_machine_internal.opt_ge. FuelId)
(declare-const fuel%vstd!state_machine_internal.opt_add. FuelId)
(declare-const fuel%vstd!state_machine_internal.opt_agree. FuelId)
(declare-const fuel%vstd!tokens.option_value_eq_option_token. FuelId)
(declare-const fuel%vstd!tokens.option_value_le_option_token. FuelId)
(declare-const fuel%test_crate!Y.impl&%0.arrow_0. FuelId)
(declare-const fuel%test_crate!Y.impl&%0.arrow_dummy_to_use_type_params_0. FuelId)
(declare-const fuel%test_crate!Y.impl&%1.is_tr1. FuelId)
(declare-const fuel%test_crate!Y.impl&%1.is_tr2. FuelId)
(declare-const fuel%test_crate!Y.impl&%1.is_tr3. FuelId)
(declare-const fuel%test_crate!Y.impl&%1.is_dummy_to_use_type_params. FuelId)
(declare-const fuel%test_crate!Y.impl&%1.get_dummy_to_use_type_params_0. FuelId)
(declare-const fuel%test_crate!Y.impl&%2.arrow_0. FuelId)
(declare-const fuel%test_crate!Y.impl&%2.arrow_dummy_to_use_type_params_0. FuelId)
(declare-const fuel%test_crate!Y.impl&%3.is_initialize. FuelId)
(declare-const fuel%test_crate!Y.impl&%3.is_dummy_to_use_type_params. FuelId)
(declare-const fuel%test_crate!Y.impl&%3.get_dummy_to_use_type_params_0. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.initialize. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.initialize_enabled. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr1. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr1_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr1_enabled. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr2. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr2_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr2_enabled. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr3. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr3_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr3_enabled. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.next_by. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.next. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.next_strong_by. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.next_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.init_by. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.init. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.invariant. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.the_inv. FuelId)
(declare-const fuel%vstd!array.group_array_axioms. FuelId)
(declare-const fuel%vstd!map.group_map_axioms. FuelId)
(declare-const fuel%vstd!multiset.group_multiset_axioms. FuelId)
(declare-const fuel%vstd!raw_ptr.group_raw_ptr_axioms. FuelId)
(declare-const fuel%vstd!seq.group_seq_axioms. FuelId)
(declare-const fuel%vstd!seq_lib.group_seq_lib_default. FuelId)
(declare-const fuel%vstd!set.group_set_axioms. FuelId)
(declare-const fuel%vstd!set_lib.group_set_lib_axioms. FuelId)
(declare-const fuel%vstd!slice.group_slice_axioms. FuelId)
(declare-const fuel%vstd!string.group_string_axioms. FuelId)
(declare-const fuel%vstd!std_specs.bits.group_bits_axioms. FuelId)
(declare-const fuel%vstd!std_specs.control_flow.group_control_flow_axioms. FuelId)
(declare-const fuel%vstd!std_specs.range.group_range_axioms. FuelId)
(declare-const fuel%vstd!std_specs.vec.group_vec_axioms. FuelId)
(declare-const fuel%vstd!group_vstd_default. FuelId)
(assert
 (distinct fuel%vstd!std_specs.option.impl&%0.is_Some. fuel%vstd!std_specs.option.impl&%0.get_Some_0.
  fuel%vstd!std_specs.option.is_some. fuel%vstd!std_specs.option.is_none. fuel%vstd!std_specs.option.spec_unwrap.
  fuel%vstd!state_machine_internal.opt_ge. fuel%vstd!state_machine_internal.opt_add.
  fuel%vstd!state_machine_internal.opt_agree. fuel%vstd!tokens.option_value_eq_option_token.
  fuel%vstd!tokens.option_value_le_option_token. fuel%test_crate!Y.impl&%0.arrow_0.
  fuel%test_crate!Y.impl&%0.arrow_dummy_to_use_type_params_0. fuel%test_crate!Y.impl&%1.is_tr1.
  fuel%test_crate!Y.impl&%1.is_tr2. fuel%test_crate!Y.impl&%1.is_tr3. fuel%test_crate!Y.impl&%1.is_dummy_to_use_type_params.
  fuel%test_crate!Y.impl&%1.get_dummy_to_use_type_params_0. fuel%test_crate!Y.impl&%2.arrow_0.
  fuel%test_crate!Y.impl&%2.arrow_dummy_to_use_type_params_0. fuel%test_crate!Y.impl&%3.is_initialize.
  fuel%test_crate!Y.impl&%3.is_dummy_to_use_type_params. fuel%test_crate!Y.impl&%3.get_dummy_to_use_type_params_0.
  fuel%test_crate!Y.impl&%15.initialize. fuel%test_crate!Y.impl&%15.initialize_enabled.
  fuel%test_crate!Y.impl&%15.tr1. fuel%test_crate!Y.impl&%15.tr1_strong. fuel%test_crate!Y.impl&%15.tr1_enabled.
  fuel%test_crate!Y.impl&%15.tr2. fuel%test_crate!Y.impl&%15.tr2_strong. fuel%test_crate!Y.impl&%15.tr2_enabled.
  fuel%test_crate!Y.impl&%15.tr3. fuel%test_crate!Y.impl&%15.tr3_strong. fuel%test_crate!Y.impl&%15.tr3_enabled.
  fuel%test_crate!Y.impl&%15.next_by. fuel%test_crate!Y.impl&%15.next. fuel%test_crate!Y.impl&%15.next_strong_by.
  fuel%test_crate!Y.impl&%15.next_strong. fuel%test_crate!Y.impl&%15.init_by. fuel%test_crate!Y.impl&%15.init.
  fuel%test_crate!Y.impl&%15.invariant. fuel%test_crate!Y.impl&%15.the_inv. fuel%vstd!array.group_array_axioms.
  fuel%vstd!map.group_map_axioms. fuel%vstd!multiset.group_multiset_axioms. fuel%vstd!raw_ptr.group_raw_ptr_axioms.
  fuel%vstd!seq.group_seq_axioms. fuel%vstd!seq_lib.group_seq_lib_default. fuel%vstd!set.group_set_axioms.
  fuel%vstd!set_lib.group_set_lib_axioms. fuel%vstd!slice.group_slice_axioms. fuel%vstd!string.group_string_axioms.
  fuel%vstd!std_specs.bits.group_bits_axioms. fuel%vstd!std_specs.control_flow.group_control_flow_axioms.
  fuel%vstd!std_specs.range.group_range_axioms. fuel%vstd!std_specs.vec.group_vec_axioms.
  fuel%vstd!group_vstd_default.
))
(assert
 (fuel_bool_default fuel%vstd!group_vstd_default.)
)
(assert
 (=>
  (fuel_bool_default fuel%vstd!group_vstd_default.)
  (and
   (fuel_bool_default fuel%vstd!seq.group_seq_axioms.)
   (fuel_bool_default fuel%vstd!seq_lib.group_seq_lib_default.)
   (fuel_bool_default fuel%vstd!map.group_map_axioms.)
   (fuel_bool_default fuel%vstd!set.group_set_axioms.)
   (fuel_bool_default fuel%vstd!set_lib.group_set_lib_axioms.)
   (fuel_bool_default fuel%vstd!std_specs.bits.group_bits_axioms.)
   (fuel_bool_default fuel%vstd!std_specs.control_flow.group_control_flow_axioms.)
   (fuel_bool_default fuel%vstd!std_specs.vec.group_vec_axioms.)
   (fuel_bool_default fuel%vstd!slice.group_slice_axioms.)
   (fuel_bool_default fuel%vstd!array.group_array_axioms.)
   (fuel_bool_default fuel%vstd!multiset.group_multiset_axioms.)
   (fuel_bool_default fuel%vstd!string.group_string_axioms.)
   (fuel_bool_default fuel%vstd!std_specs.range.group_range_axioms.)
   (fuel_bool_default fuel%vstd!raw_ptr.group_raw_ptr_axioms.)
)))

;; Datatypes
(declare-sort vstd!state_machine_internal.SyncSendIfSyncSend<tuple%0.>. 0)
(declare-datatypes ((core!option.Option. 0) (vstd!tokens.InstanceId. 0) (test_crate!Y.State.
   0
  ) (test_crate!Y.Step. 0) (test_crate!Y.Config. 0) (test_crate!Y.Instance. 0) (test_crate!Y.c.
   0
  ) (test_crate!Y.d. 0) (tuple%0. 0) (tuple%1. 0) (tuple%3. 0)
 ) (((core!option.Option./None) (core!option.Option./Some (core!option.Option./Some/?0
     Poly
   ))
  ) ((vstd!tokens.InstanceId./InstanceId (vstd!tokens.InstanceId./InstanceId/?0 Int)))
  ((test_crate!Y.State./State (test_crate!Y.State./State/?c core!option.Option.) (test_crate!Y.State./State/?d
     core!option.Option.
   ))
  ) ((test_crate!Y.Step./tr1) (test_crate!Y.Step./tr2) (test_crate!Y.Step./tr3) (test_crate!Y.Step./dummy_to_use_type_params
    (test_crate!Y.Step./dummy_to_use_type_params/?0 test_crate!Y.State.)
   )
  ) ((test_crate!Y.Config./initialize) (test_crate!Y.Config./dummy_to_use_type_params
    (test_crate!Y.Config./dummy_to_use_type_params/?0 test_crate!Y.State.)
   )
  ) ((test_crate!Y.Instance./Instance (test_crate!Y.Instance./Instance/?send_sync vstd!state_machine_internal.SyncSendIfSyncSend<tuple%0.>.)
    (test_crate!Y.Instance./Instance/?state core!option.Option.) (test_crate!Y.Instance./Instance/?location
     Int
   ))
  ) ((test_crate!Y.c./c (test_crate!Y.c./c/?dummy_instance test_crate!Y.Instance.)))
  ((test_crate!Y.d./d (test_crate!Y.d./d/?dummy_instance test_crate!Y.Instance.)))
  ((tuple%0./tuple%0)) ((tuple%1./tuple%1 (tuple%1./tuple%1/?0 Poly))) ((tuple%3./tuple%3
    (tuple%3./tuple%3/?0 Poly) (tuple%3./tuple%3/?1 Poly) (tuple%3./tuple%3/?2 Poly)
))))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun vstd!tokens.InstanceId./InstanceId/0 (vstd!tokens.InstanceId.) Int)
(declare-fun test_crate!Y.State./State/c (test_crate!Y.State.) core!option.Option.)
(declare-fun test_crate!Y.State./State/d (test_crate!Y.State.) core!option.Option.)
(declare-fun test_crate!Y.Step./dummy_to_use_type_params/0 (test_crate!Y.Step.) test_crate!Y.State.)
(declare-fun test_crate!Y.Config./dummy_to_use_type_params/0 (test_crate!Y.Config.)
 test_crate!Y.State.
)
(declare-fun test_crate!Y.Instance./Instance/send_sync (test_crate!Y.Instance.) vstd!state_machine_internal.SyncSendIfSyncSend<tuple%0.>.)
(declare-fun test_crate!Y.Instance./Instance/state (test_crate!Y.Instance.) core!option.Option.)
(declare-fun test_crate!Y.Instance./Instance/location (test_crate!Y.Instance.) Int)
(declare-fun test_crate!Y.c./c/dummy_instance (test_crate!Y.c.) test_crate!Y.Instance.)
(declare-fun test_crate!Y.d./d/dummy_instance (test_crate!Y.d.) test_crate!Y.Instance.)
(declare-fun tuple%1./tuple%1/0 (tuple%1.) Poly)
(declare-fun tuple%3./tuple%3/0 (tuple%3.) Poly)
(declare-fun tuple%3./tuple%3/1 (tuple%3.) Poly)
(declare-fun tuple%3./tuple%3/2 (tuple%3.) Poly)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-fun TYPE%vstd!state_machine_internal.SyncSendIfSyncSend. (Dcr Type) Type)
(declare-const TYPE%vstd!tokens.InstanceId. Type)
(declare-const TYPE%test_crate!Y.State. Type)
(declare-const TYPE%test_crate!Y.Step. Type)
(declare-const TYPE%test_crate!Y.Config. Type)
(declare-const TYPE%test_crate!Y.Instance. Type)
(declare-const TYPE%test_crate!Y.c. Type)
(declare-const TYPE%test_crate!Y.d. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%1. (Dcr Type) Type)
(declare-fun TYPE%tuple%3. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun FNDEF%core!clone.Clone.clone. (Dcr Type) Type)
(declare-fun Poly%vstd!state_machine_internal.SyncSendIfSyncSend<tuple%0.>. (vstd!state_machine_internal.SyncSendIfSyncSend<tuple%0.>.)
 Poly
)
(declare-fun %Poly%vstd!state_machine_internal.SyncSendIfSyncSend<tuple%0.>. (Poly)
 vstd!state_machine_internal.SyncSendIfSyncSend<tuple%0.>.
)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
(declare-fun Poly%vstd!tokens.InstanceId. (vstd!tokens.InstanceId.) Poly)
(declare-fun %Poly%vstd!tokens.InstanceId. (Poly) vstd!tokens.InstanceId.)
(declare-fun Poly%test_crate!Y.State. (test_crate!Y.State.) Poly)
(declare-fun %Poly%test_crate!Y.State. (Poly) test_crate!Y.State.)
(declare-fun Poly%test_crate!Y.Step. (test_crate!Y.Step.) Poly)
(declare-fun %Poly%test_crate!Y.Step. (Poly) test_crate!Y.Step.)
(declare-fun Poly%test_crate!Y.Config. (test_crate!Y.Config.) Poly)
(declare-fun %Poly%test_crate!Y.Config. (Poly) test_crate!Y.Config.)
(declare-fun Poly%test_crate!Y.Instance. (test_crate!Y.Instance.) Poly)
(declare-fun %Poly%test_crate!Y.Instance. (Poly) test_crate!Y.Instance.)
(declare-fun Poly%test_crate!Y.c. (test_crate!Y.c.) Poly)
(declare-fun %Poly%test_crate!Y.c. (Poly) test_crate!Y.c.)
(declare-fun Poly%test_crate!Y.d. (test_crate!Y.d.) Poly)
(declare-fun %Poly%test_crate!Y.d. (Poly) test_crate!Y.d.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%1. (tuple%1.) Poly)
(declare-fun %Poly%tuple%1. (Poly) tuple%1.)
(declare-fun Poly%tuple%3. (tuple%3.) Poly)
(declare-fun %Poly%tuple%3. (Poly) tuple%3.)
(assert
 (forall ((x vstd!state_machine_internal.SyncSendIfSyncSend<tuple%0.>.)) (!
   (= x (%Poly%vstd!state_machine_internal.SyncSendIfSyncSend<tuple%0.>. (Poly%vstd!state_machine_internal.SyncSendIfSyncSend<tuple%0.>.
      x
   )))
   :pattern ((Poly%vstd!state_machine_internal.SyncSendIfSyncSend<tuple%0.>. x))
   :qid internal_vstd__state_machine_internal__SyncSendIfSyncSend<tuple__0.>_box_axiom_definition
   :skolemid skolem_internal_vstd__state_machine_internal__SyncSendIfSyncSend<tuple__0.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!state_machine_internal.SyncSendIfSyncSend. $ TYPE%tuple%0.))
    (= x (Poly%vstd!state_machine_internal.SyncSendIfSyncSend<tuple%0.>. (%Poly%vstd!state_machine_internal.SyncSendIfSyncSend<tuple%0.>.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd!state_machine_internal.SyncSendIfSyncSend. $ TYPE%tuple%0.)))
   :qid internal_vstd__state_machine_internal__SyncSendIfSyncSend<tuple__0.>_unbox_axiom_definition
   :skolemid skolem_internal_vstd__state_machine_internal__SyncSendIfSyncSend<tuple__0.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!state_machine_internal.SyncSendIfSyncSend<tuple%0.>.)) (!
   (has_type (Poly%vstd!state_machine_internal.SyncSendIfSyncSend<tuple%0.>. x) (TYPE%vstd!state_machine_internal.SyncSendIfSyncSend.
     $ TYPE%tuple%0.
   ))
   :pattern ((has_type (Poly%vstd!state_machine_internal.SyncSendIfSyncSend<tuple%0.>.
      x
     ) (TYPE%vstd!state_machine_internal.SyncSendIfSyncSend. $ TYPE%tuple%0.)
   ))
   :qid internal_vstd__state_machine_internal__SyncSendIfSyncSend<tuple__0.>_has_type_always_definition
   :skolemid skolem_internal_vstd__state_machine_internal__SyncSendIfSyncSend<tuple__0.>_has_type_always_definition
)))
(assert
 (forall ((x core!option.Option.)) (!
   (= x (%Poly%core!option.Option. (Poly%core!option.Option. x)))
   :pattern ((Poly%core!option.Option. x))
   :qid internal_core__option__Option_box_axiom_definition
   :skolemid skolem_internal_core__option__Option_box_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!option.Option. V&. V&))
    (= x (Poly%core!option.Option. (%Poly%core!option.Option. x)))
   )
   :pattern ((has_type x (TYPE%core!option.Option. V&. V&)))
   :qid internal_core__option__Option_unbox_axiom_definition
   :skolemid skolem_internal_core__option__Option_unbox_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type)) (!
   (has_type (Poly%core!option.Option. core!option.Option./None) (TYPE%core!option.Option.
     V&. V&
   ))
   :pattern ((has_type (Poly%core!option.Option. core!option.Option./None) (TYPE%core!option.Option.
      V&. V&
   )))
   :qid internal_core!option.Option./None_constructor_definition
   :skolemid skolem_internal_core!option.Option./None_constructor_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (_0! Poly)) (!
   (=>
    (has_type _0! V&)
    (has_type (Poly%core!option.Option. (core!option.Option./Some _0!)) (TYPE%core!option.Option.
      V&. V&
   )))
   :pattern ((has_type (Poly%core!option.Option. (core!option.Option./Some _0!)) (TYPE%core!option.Option.
      V&. V&
   )))
   :qid internal_core!option.Option./Some_constructor_definition
   :skolemid skolem_internal_core!option.Option./Some_constructor_definition
)))
(assert
 (forall ((x core!option.Option.)) (!
   (= (core!option.Option./Some/0 x) (core!option.Option./Some/?0 x))
   :pattern ((core!option.Option./Some/0 x))
   :qid internal_core!option.Option./Some/0_accessor_definition
   :skolemid skolem_internal_core!option.Option./Some/0_accessor_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!option.Option. V&. V&))
    (has_type (core!option.Option./Some/0 (%Poly%core!option.Option. x)) V&)
   )
   :pattern ((core!option.Option./Some/0 (%Poly%core!option.Option. x)) (has_type x (TYPE%core!option.Option.
      V&. V&
   )))
   :qid internal_core!option.Option./Some/0_invariant_definition
   :skolemid skolem_internal_core!option.Option./Some/0_invariant_definition
)))
(assert
 (forall ((x core!option.Option.)) (!
   (=>
    (is-core!option.Option./Some x)
    (height_lt (height (core!option.Option./Some/0 x)) (height (Poly%core!option.Option.
       x
   ))))
   :pattern ((height (core!option.Option./Some/0 x)))
   :qid prelude_datatype_height_core!option.Option./Some/0
   :skolemid skolem_prelude_datatype_height_core!option.Option./Some/0
)))
(assert
 (forall ((V&. Dcr) (V& Type) (deep Bool) (x Poly) (y Poly)) (!
   (=>
    (and
     (has_type x (TYPE%core!option.Option. V&. V&))
     (has_type y (TYPE%core!option.Option. V&. V&))
     (is-core!option.Option./None (%Poly%core!option.Option. x))
     (is-core!option.Option./None (%Poly%core!option.Option. y))
    )
    (ext_eq deep (TYPE%core!option.Option. V&. V&) x y)
   )
   :pattern ((ext_eq deep (TYPE%core!option.Option. V&. V&) x y))
   :qid internal_core!option.Option./None_ext_equal_definition
   :skolemid skolem_internal_core!option.Option./None_ext_equal_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (deep Bool) (x Poly) (y Poly)) (!
   (=>
    (and
     (has_type x (TYPE%core!option.Option. V&. V&))
     (has_type y (TYPE%core!option.Option. V&. V&))
     (is-core!option.Option./Some (%Poly%core!option.Option. x))
     (is-core!option.Option./Some (%Poly%core!option.Option. y))
     (ext_eq deep V& (core!option.Option./Some/0 (%Poly%core!option.Option. x)) (core!option.Option./Some/0
       (%Poly%core!option.Option. y)
    )))
    (ext_eq deep (TYPE%core!option.Option. V&. V&) x y)
   )
   :pattern ((ext_eq deep (TYPE%core!option.Option. V&. V&) x y))
   :qid internal_core!option.Option./Some_ext_equal_definition
   :skolemid skolem_internal_core!option.Option./Some_ext_equal_definition
)))
(assert
 (forall ((x vstd!tokens.InstanceId.)) (!
   (= x (%Poly%vstd!tokens.InstanceId. (Poly%vstd!tokens.InstanceId. x)))
   :pattern ((Poly%vstd!tokens.InstanceId. x))
   :qid internal_vstd__tokens__InstanceId_box_axiom_definition
   :skolemid skolem_internal_vstd__tokens__InstanceId_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd!tokens.InstanceId.)
    (= x (Poly%vstd!tokens.InstanceId. (%Poly%vstd!tokens.InstanceId. x)))
   )
   :pattern ((has_type x TYPE%vstd!tokens.InstanceId.))
   :qid internal_vstd__tokens__InstanceId_unbox_axiom_definition
   :skolemid skolem_internal_vstd__tokens__InstanceId_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!tokens.InstanceId.)) (!
   (= (vstd!tokens.InstanceId./InstanceId/0 x) (vstd!tokens.InstanceId./InstanceId/?0
     x
   ))
   :pattern ((vstd!tokens.InstanceId./InstanceId/0 x))
   :qid internal_vstd!tokens.InstanceId./InstanceId/0_accessor_definition
   :skolemid skolem_internal_vstd!tokens.InstanceId./InstanceId/0_accessor_definition
)))
(assert
 (forall ((x vstd!tokens.InstanceId.)) (!
   (has_type (Poly%vstd!tokens.InstanceId. x) TYPE%vstd!tokens.InstanceId.)
   :pattern ((has_type (Poly%vstd!tokens.InstanceId. x) TYPE%vstd!tokens.InstanceId.))
   :qid internal_vstd__tokens__InstanceId_has_type_always_definition
   :skolemid skolem_internal_vstd__tokens__InstanceId_has_type_always_definition
)))
(assert
 (forall ((x test_crate!Y.State.)) (!
   (= x (%Poly%test_crate!Y.State. (Poly%test_crate!Y.State. x)))
   :pattern ((Poly%test_crate!Y.State. x))
   :qid internal_test_crate__Y__State_box_axiom_definition
   :skolemid skolem_internal_test_crate__Y__State_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.State.)
    (= x (Poly%test_crate!Y.State. (%Poly%test_crate!Y.State. x)))
   )
   :pattern ((has_type x TYPE%test_crate!Y.State.))
   :qid internal_test_crate__Y__State_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__Y__State_unbox_axiom_definition
)))
(assert
 (forall ((_c! core!option.Option.) (_d! core!option.Option.)) (!
   (=>
    (and
     (has_type (Poly%core!option.Option. _c!) (TYPE%core!option.Option. $ INT))
     (has_type (Poly%core!option.Option. _d!) (TYPE%core!option.Option. $ INT))
    )
    (has_type (Poly%test_crate!Y.State. (test_crate!Y.State./State _c! _d!)) TYPE%test_crate!Y.State.)
   )
   :pattern ((has_type (Poly%test_crate!Y.State. (test_crate!Y.State./State _c! _d!))
     TYPE%test_crate!Y.State.
   ))
   :qid internal_test_crate!Y.State./State_constructor_definition
   :skolemid skolem_internal_test_crate!Y.State./State_constructor_definition
)))
(assert
 (forall ((x test_crate!Y.State.)) (!
   (= (test_crate!Y.State./State/c x) (test_crate!Y.State./State/?c x))
   :pattern ((test_crate!Y.State./State/c x))
   :qid internal_test_crate!Y.State./State/c_accessor_definition
   :skolemid skolem_internal_test_crate!Y.State./State/c_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.State.)
    (has_type (Poly%core!option.Option. (test_crate!Y.State./State/c (%Poly%test_crate!Y.State.
        x
      ))
     ) (TYPE%core!option.Option. $ INT)
   ))
   :pattern ((test_crate!Y.State./State/c (%Poly%test_crate!Y.State. x)) (has_type x TYPE%test_crate!Y.State.))
   :qid internal_test_crate!Y.State./State/c_invariant_definition
   :skolemid skolem_internal_test_crate!Y.State./State/c_invariant_definition
)))
(assert
 (forall ((x test_crate!Y.State.)) (!
   (= (test_crate!Y.State./State/d x) (test_crate!Y.State./State/?d x))
   :pattern ((test_crate!Y.State./State/d x))
   :qid internal_test_crate!Y.State./State/d_accessor_definition
   :skolemid skolem_internal_test_crate!Y.State./State/d_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.State.)
    (has_type (Poly%core!option.Option. (test_crate!Y.State./State/d (%Poly%test_crate!Y.State.
        x
      ))
     ) (TYPE%core!option.Option. $ INT)
   ))
   :pattern ((test_crate!Y.State./State/d (%Poly%test_crate!Y.State. x)) (has_type x TYPE%test_crate!Y.State.))
   :qid internal_test_crate!Y.State./State/d_invariant_definition
   :skolemid skolem_internal_test_crate!Y.State./State/d_invariant_definition
)))
(assert
 (forall ((x test_crate!Y.Step.)) (!
   (= x (%Poly%test_crate!Y.Step. (Poly%test_crate!Y.Step. x)))
   :pattern ((Poly%test_crate!Y.Step. x))
   :qid internal_test_crate__Y__Step_box_axiom_definition
   :skolemid skolem_internal_test_crate__Y__Step_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.Step.)
    (= x (Poly%test_crate!Y.Step. (%Poly%test_crate!Y.Step. x)))
   )
   :pattern ((has_type x TYPE%test_crate!Y.Step.))
   :qid internal_test_crate__Y__Step_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__Y__Step_unbox_axiom_definition
)))
(assert
 (has_type (Poly%test_crate!Y.Step. test_crate!Y.Step./tr1) TYPE%test_crate!Y.Step.)
)
(assert
 (has_type (Poly%test_crate!Y.Step. test_crate!Y.Step./tr2) TYPE%test_crate!Y.Step.)
)
(assert
 (has_type (Poly%test_crate!Y.Step. test_crate!Y.Step./tr3) TYPE%test_crate!Y.Step.)
)
(assert
 (forall ((_0! test_crate!Y.State.)) (!
   (=>
    (has_type (Poly%test_crate!Y.State. _0!) TYPE%test_crate!Y.State.)
    (has_type (Poly%test_crate!Y.Step. (test_crate!Y.Step./dummy_to_use_type_params _0!))
     TYPE%test_crate!Y.Step.
   ))
   :pattern ((has_type (Poly%test_crate!Y.Step. (test_crate!Y.Step./dummy_to_use_type_params
       _0!
      )
     ) TYPE%test_crate!Y.Step.
   ))
   :qid internal_test_crate!Y.Step./dummy_to_use_type_params_constructor_definition
   :skolemid skolem_internal_test_crate!Y.Step./dummy_to_use_type_params_constructor_definition
)))
(assert
 (forall ((x test_crate!Y.Step.)) (!
   (= (test_crate!Y.Step./dummy_to_use_type_params/0 x) (test_crate!Y.Step./dummy_to_use_type_params/?0
     x
   ))
   :pattern ((test_crate!Y.Step./dummy_to_use_type_params/0 x))
   :qid internal_test_crate!Y.Step./dummy_to_use_type_params/0_accessor_definition
   :skolemid skolem_internal_test_crate!Y.Step./dummy_to_use_type_params/0_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.Step.)
    (has_type (Poly%test_crate!Y.State. (test_crate!Y.Step./dummy_to_use_type_params/0 (
        %Poly%test_crate!Y.Step. x
      ))
     ) TYPE%test_crate!Y.State.
   ))
   :pattern ((test_crate!Y.Step./dummy_to_use_type_params/0 (%Poly%test_crate!Y.Step. x))
    (has_type x TYPE%test_crate!Y.Step.)
   )
   :qid internal_test_crate!Y.Step./dummy_to_use_type_params/0_invariant_definition
   :skolemid skolem_internal_test_crate!Y.Step./dummy_to_use_type_params/0_invariant_definition
)))
(assert
 (forall ((x test_crate!Y.Config.)) (!
   (= x (%Poly%test_crate!Y.Config. (Poly%test_crate!Y.Config. x)))
   :pattern ((Poly%test_crate!Y.Config. x))
   :qid internal_test_crate__Y__Config_box_axiom_definition
   :skolemid skolem_internal_test_crate__Y__Config_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.Config.)
    (= x (Poly%test_crate!Y.Config. (%Poly%test_crate!Y.Config. x)))
   )
   :pattern ((has_type x TYPE%test_crate!Y.Config.))
   :qid internal_test_crate__Y__Config_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__Y__Config_unbox_axiom_definition
)))
(assert
 (has_type (Poly%test_crate!Y.Config. test_crate!Y.Config./initialize) TYPE%test_crate!Y.Config.)
)
(assert
 (forall ((_0! test_crate!Y.State.)) (!
   (=>
    (has_type (Poly%test_crate!Y.State. _0!) TYPE%test_crate!Y.State.)
    (has_type (Poly%test_crate!Y.Config. (test_crate!Y.Config./dummy_to_use_type_params
       _0!
      )
     ) TYPE%test_crate!Y.Config.
   ))
   :pattern ((has_type (Poly%test_crate!Y.Config. (test_crate!Y.Config./dummy_to_use_type_params
       _0!
      )
     ) TYPE%test_crate!Y.Config.
   ))
   :qid internal_test_crate!Y.Config./dummy_to_use_type_params_constructor_definition
   :skolemid skolem_internal_test_crate!Y.Config./dummy_to_use_type_params_constructor_definition
)))
(assert
 (forall ((x test_crate!Y.Config.)) (!
   (= (test_crate!Y.Config./dummy_to_use_type_params/0 x) (test_crate!Y.Config./dummy_to_use_type_params/?0
     x
   ))
   :pattern ((test_crate!Y.Config./dummy_to_use_type_params/0 x))
   :qid internal_test_crate!Y.Config./dummy_to_use_type_params/0_accessor_definition
   :skolemid skolem_internal_test_crate!Y.Config./dummy_to_use_type_params/0_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.Config.)
    (has_type (Poly%test_crate!Y.State. (test_crate!Y.Config./dummy_to_use_type_params/0
       (%Poly%test_crate!Y.Config. x)
      )
     ) TYPE%test_crate!Y.State.
   ))
   :pattern ((test_crate!Y.Config./dummy_to_use_type_params/0 (%Poly%test_crate!Y.Config.
      x
     )
    ) (has_type x TYPE%test_crate!Y.Config.)
   )
   :qid internal_test_crate!Y.Config./dummy_to_use_type_params/0_invariant_definition
   :skolemid skolem_internal_test_crate!Y.Config./dummy_to_use_type_params/0_invariant_definition
)))
(assert
 (forall ((x test_crate!Y.Instance.)) (!
   (= x (%Poly%test_crate!Y.Instance. (Poly%test_crate!Y.Instance. x)))
   :pattern ((Poly%test_crate!Y.Instance. x))
   :qid internal_test_crate__Y__Instance_box_axiom_definition
   :skolemid skolem_internal_test_crate__Y__Instance_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.Instance.)
    (= x (Poly%test_crate!Y.Instance. (%Poly%test_crate!Y.Instance. x)))
   )
   :pattern ((has_type x TYPE%test_crate!Y.Instance.))
   :qid internal_test_crate__Y__Instance_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__Y__Instance_unbox_axiom_definition
)))
(assert
 (forall ((_send_sync! vstd!state_machine_internal.SyncSendIfSyncSend<tuple%0.>.) (_state!
    core!option.Option.
   ) (_location! Int)
  ) (!
   (=>
    (has_type (Poly%core!option.Option. _state!) (TYPE%core!option.Option. (GHOST $) TYPE%test_crate!Y.State.))
    (has_type (Poly%test_crate!Y.Instance. (test_crate!Y.Instance./Instance _send_sync!
       _state! _location!
      )
     ) TYPE%test_crate!Y.Instance.
   ))
   :pattern ((has_type (Poly%test_crate!Y.Instance. (test_crate!Y.Instance./Instance _send_sync!
       _state! _location!
      )
     ) TYPE%test_crate!Y.Instance.
   ))
   :qid internal_test_crate!Y.Instance./Instance_constructor_definition
   :skolemid skolem_internal_test_crate!Y.Instance./Instance_constructor_definition
)))
(assert
 (forall ((x test_crate!Y.Instance.)) (!
   (= (test_crate!Y.Instance./Instance/send_sync x) (test_crate!Y.Instance./Instance/?send_sync
     x
   ))
   :pattern ((test_crate!Y.Instance./Instance/send_sync x))
   :qid internal_test_crate!Y.Instance./Instance/send_sync_accessor_definition
   :skolemid skolem_internal_test_crate!Y.Instance./Instance/send_sync_accessor_definition
)))
(assert
 (forall ((x test_crate!Y.Instance.)) (!
   (= (test_crate!Y.Instance./Instance/state x) (test_crate!Y.Instance./Instance/?state
     x
   ))
   :pattern ((test_crate!Y.Instance./Instance/state x))
   :qid internal_test_crate!Y.Instance./Instance/state_accessor_definition
   :skolemid skolem_internal_test_crate!Y.Instance./Instance/state_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.Instance.)
    (has_type (Poly%core!option.Option. (test_crate!Y.Instance./Instance/state (%Poly%test_crate!Y.Instance.
        x
      ))
     ) (TYPE%core!option.Option. (GHOST $) TYPE%test_crate!Y.State.)
   ))
   :pattern ((test_crate!Y.Instance./Instance/state (%Poly%test_crate!Y.Instance. x))
    (has_type x TYPE%test_crate!Y.Instance.)
   )
   :qid internal_test_crate!Y.Instance./Instance/state_invariant_definition
   :skolemid skolem_internal_test_crate!Y.Instance./Instance/state_invariant_definition
)))
(assert
 (forall ((x test_crate!Y.Instance.)) (!
   (= (test_crate!Y.Instance./Instance/location x) (test_crate!Y.Instance./Instance/?location
     x
   ))
   :pattern ((test_crate!Y.Instance./Instance/location x))
   :qid internal_test_crate!Y.Instance./Instance/location_accessor_definition
   :skolemid skolem_internal_test_crate!Y.Instance./Instance/location_accessor_definition
)))
(assert
 (forall ((x test_crate!Y.c.)) (!
   (= x (%Poly%test_crate!Y.c. (Poly%test_crate!Y.c. x)))
   :pattern ((Poly%test_crate!Y.c. x))
   :qid internal_test_crate__Y__c_box_axiom_definition
   :skolemid skolem_internal_test_crate__Y__c_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.c.)
    (= x (Poly%test_crate!Y.c. (%Poly%test_crate!Y.c. x)))
   )
   :pattern ((has_type x TYPE%test_crate!Y.c.))
   :qid internal_test_crate__Y__c_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__Y__c_unbox_axiom_definition
)))
(assert
 (forall ((_dummy_instance! test_crate!Y.Instance.)) (!
   (=>
    (has_type (Poly%test_crate!Y.Instance. _dummy_instance!) TYPE%test_crate!Y.Instance.)
    (has_type (Poly%test_crate!Y.c. (test_crate!Y.c./c _dummy_instance!)) TYPE%test_crate!Y.c.)
   )
   :pattern ((has_type (Poly%test_crate!Y.c. (test_crate!Y.c./c _dummy_instance!)) TYPE%test_crate!Y.c.))
   :qid internal_test_crate!Y.c./c_constructor_definition
   :skolemid skolem_internal_test_crate!Y.c./c_constructor_definition
)))
(assert
 (forall ((x test_crate!Y.c.)) (!
   (= (test_crate!Y.c./c/dummy_instance x) (test_crate!Y.c./c/?dummy_instance x))
   :pattern ((test_crate!Y.c./c/dummy_instance x))
   :qid internal_test_crate!Y.c./c/dummy_instance_accessor_definition
   :skolemid skolem_internal_test_crate!Y.c./c/dummy_instance_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.c.)
    (has_type (Poly%test_crate!Y.Instance. (test_crate!Y.c./c/dummy_instance (%Poly%test_crate!Y.c.
        x
      ))
     ) TYPE%test_crate!Y.Instance.
   ))
   :pattern ((test_crate!Y.c./c/dummy_instance (%Poly%test_crate!Y.c. x)) (has_type x
     TYPE%test_crate!Y.c.
   ))
   :qid internal_test_crate!Y.c./c/dummy_instance_invariant_definition
   :skolemid skolem_internal_test_crate!Y.c./c/dummy_instance_invariant_definition
)))
(assert
 (forall ((x test_crate!Y.d.)) (!
   (= x (%Poly%test_crate!Y.d. (Poly%test_crate!Y.d. x)))
   :pattern ((Poly%test_crate!Y.d. x))
   :qid internal_test_crate__Y__d_box_axiom_definition
   :skolemid skolem_internal_test_crate__Y__d_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.d.)
    (= x (Poly%test_crate!Y.d. (%Poly%test_crate!Y.d. x)))
   )
   :pattern ((has_type x TYPE%test_crate!Y.d.))
   :qid internal_test_crate__Y__d_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__Y__d_unbox_axiom_definition
)))
(assert
 (forall ((_dummy_instance! test_crate!Y.Instance.)) (!
   (=>
    (has_type (Poly%test_crate!Y.Instance. _dummy_instance!) TYPE%test_crate!Y.Instance.)
    (has_type (Poly%test_crate!Y.d. (test_crate!Y.d./d _dummy_instance!)) TYPE%test_crate!Y.d.)
   )
   :pattern ((has_type (Poly%test_crate!Y.d. (test_crate!Y.d./d _dummy_instance!)) TYPE%test_crate!Y.d.))
   :qid internal_test_crate!Y.d./d_constructor_definition
   :skolemid skolem_internal_test_crate!Y.d./d_constructor_definition
)))
(assert
 (forall ((x test_crate!Y.d.)) (!
   (= (test_crate!Y.d./d/dummy_instance x) (test_crate!Y.d./d/?dummy_instance x))
   :pattern ((test_crate!Y.d./d/dummy_instance x))
   :qid internal_test_crate!Y.d./d/dummy_instance_accessor_definition
   :skolemid skolem_internal_test_crate!Y.d./d/dummy_instance_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.d.)
    (has_type (Poly%test_crate!Y.Instance. (test_crate!Y.d./d/dummy_instance (%Poly%test_crate!Y.d.
        x
      ))
     ) TYPE%test_crate!Y.Instance.
   ))
   :pattern ((test_crate!Y.d./d/dummy_instance (%Poly%test_crate!Y.d. x)) (has_type x
     TYPE%test_crate!Y.d.
   ))
   :qid internal_test_crate!Y.d./d/dummy_instance_invariant_definition
   :skolemid skolem_internal_test_crate!Y.d./d/dummy_instance_invariant_definition
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
(assert
 (forall ((x tuple%1.)) (!
   (= x (%Poly%tuple%1. (Poly%tuple%1. x)))
   :pattern ((Poly%tuple%1. x))
   :qid internal_crate__tuple__1_box_axiom_definition
   :skolemid skolem_internal_crate__tuple__1_box_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%tuple%1. T%0&. T%0&))
    (= x (Poly%tuple%1. (%Poly%tuple%1. x)))
   )
   :pattern ((has_type x (TYPE%tuple%1. T%0&. T%0&)))
   :qid internal_crate__tuple__1_unbox_axiom_definition
   :skolemid skolem_internal_crate__tuple__1_unbox_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (_0! Poly)) (!
   (=>
    (has_type _0! T%0&)
    (has_type (Poly%tuple%1. (tuple%1./tuple%1 _0!)) (TYPE%tuple%1. T%0&. T%0&))
   )
   :pattern ((has_type (Poly%tuple%1. (tuple%1./tuple%1 _0!)) (TYPE%tuple%1. T%0&. T%0&)))
   :qid internal_tuple__1./tuple__1_constructor_definition
   :skolemid skolem_internal_tuple__1./tuple__1_constructor_definition
)))
(assert
 (forall ((x tuple%1.)) (!
   (= (tuple%1./tuple%1/0 x) (tuple%1./tuple%1/?0 x))
   :pattern ((tuple%1./tuple%1/0 x))
   :qid internal_tuple__1./tuple__1/0_accessor_definition
   :skolemid skolem_internal_tuple__1./tuple__1/0_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%tuple%1. T%0&. T%0&))
    (has_type (tuple%1./tuple%1/0 (%Poly%tuple%1. x)) T%0&)
   )
   :pattern ((tuple%1./tuple%1/0 (%Poly%tuple%1. x)) (has_type x (TYPE%tuple%1. T%0&. T%0&)))
   :qid internal_tuple__1./tuple__1/0_invariant_definition
   :skolemid skolem_internal_tuple__1./tuple__1/0_invariant_definition
)))
(assert
 (forall ((x tuple%1.)) (!
   (=>
    (is-tuple%1./tuple%1 x)
    (height_lt (height (tuple%1./tuple%1/0 x)) (height (Poly%tuple%1. x)))
   )
   :pattern ((height (tuple%1./tuple%1/0 x)))
   :qid prelude_datatype_height_tuple%1./tuple%1/0
   :skolemid skolem_prelude_datatype_height_tuple%1./tuple%1/0
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (deep Bool) (x Poly) (y Poly)) (!
   (=>
    (and
     (has_type x (TYPE%tuple%1. T%0&. T%0&))
     (has_type y (TYPE%tuple%1. T%0&. T%0&))
     (ext_eq deep T%0& (tuple%1./tuple%1/0 (%Poly%tuple%1. x)) (tuple%1./tuple%1/0 (%Poly%tuple%1.
        y
    ))))
    (ext_eq deep (TYPE%tuple%1. T%0&. T%0&) x y)
   )
   :pattern ((ext_eq deep (TYPE%tuple%1. T%0&. T%0&) x y))
   :qid internal_tuple__1./tuple__1_ext_equal_definition
   :skolemid skolem_internal_tuple__1./tuple__1_ext_equal_definition
)))
(assert
 (forall ((x tuple%3.)) (!
   (= x (%Poly%tuple%3. (Poly%tuple%3. x)))
   :pattern ((Poly%tuple%3. x))
   :qid internal_crate__tuple__3_box_axiom_definition
   :skolemid skolem_internal_crate__tuple__3_box_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (x
    Poly
   )
  ) (!
   (=>
    (has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
    (= x (Poly%tuple%3. (%Poly%tuple%3. x)))
   )
   :pattern ((has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&)))
   :qid internal_crate__tuple__3_unbox_axiom_definition
   :skolemid skolem_internal_crate__tuple__3_unbox_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (_0!
    Poly
   ) (_1! Poly) (_2! Poly)
  ) (!
   (=>
    (and
     (has_type _0! T%0&)
     (has_type _1! T%1&)
     (has_type _2! T%2&)
    )
    (has_type (Poly%tuple%3. (tuple%3./tuple%3 _0! _1! _2!)) (TYPE%tuple%3. T%0&. T%0&
      T%1&. T%1& T%2&. T%2&
   )))
   :pattern ((has_type (Poly%tuple%3. (tuple%3./tuple%3 _0! _1! _2!)) (TYPE%tuple%3. T%0&.
      T%0& T%1&. T%1& T%2&. T%2&
   )))
   :qid internal_tuple__3./tuple__3_constructor_definition
   :skolemid skolem_internal_tuple__3./tuple__3_constructor_definition
)))
(assert
 (forall ((x tuple%3.)) (!
   (= (tuple%3./tuple%3/0 x) (tuple%3./tuple%3/?0 x))
   :pattern ((tuple%3./tuple%3/0 x))
   :qid internal_tuple__3./tuple__3/0_accessor_definition
   :skolemid skolem_internal_tuple__3./tuple__3/0_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (x
    Poly
   )
  ) (!
   (=>
    (has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
    (has_type (tuple%3./tuple%3/0 (%Poly%tuple%3. x)) T%0&)
   )
   :pattern ((tuple%3./tuple%3/0 (%Poly%tuple%3. x)) (has_type x (TYPE%tuple%3. T%0&. T%0&
      T%1&. T%1& T%2&. T%2&
   )))
   :qid internal_tuple__3./tuple__3/0_invariant_definition
   :skolemid skolem_internal_tuple__3./tuple__3/0_invariant_definition
)))
(assert
 (forall ((x tuple%3.)) (!
   (= (tuple%3./tuple%3/1 x) (tuple%3./tuple%3/?1 x))
   :pattern ((tuple%3./tuple%3/1 x))
   :qid internal_tuple__3./tuple__3/1_accessor_definition
   :skolemid skolem_internal_tuple__3./tuple__3/1_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (x
    Poly
   )
  ) (!
   (=>
    (has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
    (has_type (tuple%3./tuple%3/1 (%Poly%tuple%3. x)) T%1&)
   )
   :pattern ((tuple%3./tuple%3/1 (%Poly%tuple%3. x)) (has_type x (TYPE%tuple%3. T%0&. T%0&
      T%1&. T%1& T%2&. T%2&
   )))
   :qid internal_tuple__3./tuple__3/1_invariant_definition
   :skolemid skolem_internal_tuple__3./tuple__3/1_invariant_definition
)))
(assert
 (forall ((x tuple%3.)) (!
   (= (tuple%3./tuple%3/2 x) (tuple%3./tuple%3/?2 x))
   :pattern ((tuple%3./tuple%3/2 x))
   :qid internal_tuple__3./tuple__3/2_accessor_definition
   :skolemid skolem_internal_tuple__3./tuple__3/2_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (x
    Poly
   )
  ) (!
   (=>
    (has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
    (has_type (tuple%3./tuple%3/2 (%Poly%tuple%3. x)) T%2&)
   )
   :pattern ((tuple%3./tuple%3/2 (%Poly%tuple%3. x)) (has_type x (TYPE%tuple%3. T%0&. T%0&
      T%1&. T%1& T%2&. T%2&
   )))
   :qid internal_tuple__3./tuple__3/2_invariant_definition
   :skolemid skolem_internal_tuple__3./tuple__3/2_invariant_definition
)))
(assert
 (forall ((x tuple%3.)) (!
   (=>
    (is-tuple%3./tuple%3 x)
    (height_lt (height (tuple%3./tuple%3/0 x)) (height (Poly%tuple%3. x)))
   )
   :pattern ((height (tuple%3./tuple%3/0 x)))
   :qid prelude_datatype_height_tuple%3./tuple%3/0
   :skolemid skolem_prelude_datatype_height_tuple%3./tuple%3/0
)))
(assert
 (forall ((x tuple%3.)) (!
   (=>
    (is-tuple%3./tuple%3 x)
    (height_lt (height (tuple%3./tuple%3/1 x)) (height (Poly%tuple%3. x)))
   )
   :pattern ((height (tuple%3./tuple%3/1 x)))
   :qid prelude_datatype_height_tuple%3./tuple%3/1
   :skolemid skolem_prelude_datatype_height_tuple%3./tuple%3/1
)))
(assert
 (forall ((x tuple%3.)) (!
   (=>
    (is-tuple%3./tuple%3 x)
    (height_lt (height (tuple%3./tuple%3/2 x)) (height (Poly%tuple%3. x)))
   )
   :pattern ((height (tuple%3./tuple%3/2 x)))
   :qid prelude_datatype_height_tuple%3./tuple%3/2
   :skolemid skolem_prelude_datatype_height_tuple%3./tuple%3/2
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (deep
    Bool
   ) (x Poly) (y Poly)
  ) (!
   (=>
    (and
     (has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
     (has_type y (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
     (ext_eq deep T%0& (tuple%3./tuple%3/0 (%Poly%tuple%3. x)) (tuple%3./tuple%3/0 (%Poly%tuple%3.
        y
     )))
     (ext_eq deep T%1& (tuple%3./tuple%3/1 (%Poly%tuple%3. x)) (tuple%3./tuple%3/1 (%Poly%tuple%3.
        y
     )))
     (ext_eq deep T%2& (tuple%3./tuple%3/2 (%Poly%tuple%3. x)) (tuple%3./tuple%3/2 (%Poly%tuple%3.
        y
    ))))
    (ext_eq deep (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&) x y)
   )
   :pattern ((ext_eq deep (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&) x y))
   :qid internal_tuple__3./tuple__3_ext_equal_definition
   :skolemid skolem_internal_tuple__3./tuple__3_ext_equal_definition
)))

;; Traits
(declare-fun tr_bound%core!clone.Clone. (Dcr Type) Bool)
(declare-fun tr_bound%core!alloc.Allocator. (Dcr Type) Bool)
(declare-fun tr_bound%vstd!std_specs.option.OptionAdditionalFns. (Dcr Type Dcr Type)
 Bool
)
(declare-fun tr_bound%vstd!tokens.ValueToken. (Dcr Type Dcr Type) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%core!clone.Clone. Self%&. Self%&))
   :qid internal_core__clone__Clone_trait_type_bounds_definition
   :skolemid skolem_internal_core__clone__Clone_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%core!alloc.Allocator. Self%&. Self%&))
   :qid internal_core__alloc__Allocator_trait_type_bounds_definition
   :skolemid skolem_internal_core__alloc__Allocator_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type)) (!
   true
   :pattern ((tr_bound%vstd!std_specs.option.OptionAdditionalFns. Self%&. Self%& T&. T&))
   :qid internal_vstd__std_specs__option__OptionAdditionalFns_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__std_specs__option__OptionAdditionalFns_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type)) (!
   true
   :pattern ((tr_bound%vstd!tokens.ValueToken. Self%&. Self%& Value&. Value&))
   :qid internal_vstd__tokens__ValueToken_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__tokens__ValueToken_trait_type_bounds_definition
)))

;; Function-Decl vstd::std_specs::option::OptionAdditionalFns::is_Some
(declare-fun vstd!std_specs.option.OptionAdditionalFns.is_Some.? (Dcr Type Dcr Type
  Poly
 ) Poly
)
(declare-fun vstd!std_specs.option.OptionAdditionalFns.is_Some%default%.? (Dcr Type
  Dcr Type Poly
 ) Poly
)

;; Function-Decl vstd::std_specs::option::OptionAdditionalFns::get_Some_0
(declare-fun vstd!std_specs.option.OptionAdditionalFns.get_Some_0.? (Dcr Type Dcr Type
  Poly
 ) Poly
)
(declare-fun vstd!std_specs.option.OptionAdditionalFns.get_Some_0%default%.? (Dcr Type
  Dcr Type Poly
 ) Poly
)

;; Function-Decl vstd::std_specs::option::is_some
(declare-fun vstd!std_specs.option.is_some.? (Dcr Type Poly) Bool)

;; Function-Decl vstd::std_specs::option::is_none
(declare-fun vstd!std_specs.option.is_none.? (Dcr Type Poly) Bool)

;; Function-Decl vstd::std_specs::option::spec_unwrap
(declare-fun vstd!std_specs.option.spec_unwrap.? (Dcr Type Poly) Poly)

;; Function-Decl vstd::tokens::ValueToken::instance_id
(declare-fun vstd!tokens.ValueToken.instance_id.? (Dcr Type Dcr Type Poly) Poly)
(declare-fun vstd!tokens.ValueToken.instance_id%default%.? (Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl vstd::tokens::ValueToken::value
(declare-fun vstd!tokens.ValueToken.value.? (Dcr Type Dcr Type Poly) Poly)
(declare-fun vstd!tokens.ValueToken.value%default%.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl test_crate::Y::State::tr1
(declare-fun test_crate!Y.impl&%15.tr1.? (Poly Poly) Bool)

;; Function-Decl vstd::state_machine_internal::opt_agree
(declare-fun vstd!state_machine_internal.opt_agree.? (Dcr Type Poly Poly) Bool)

;; Function-Decl vstd::state_machine_internal::opt_add
(declare-fun vstd!state_machine_internal.opt_add.? (Dcr Type Poly Poly) core!option.Option.)

;; Function-Decl test_crate::Y::State::tr2
(declare-fun test_crate!Y.impl&%15.tr2.? (Poly Poly) Bool)

;; Function-Decl vstd::state_machine_internal::opt_ge
(declare-fun vstd!state_machine_internal.opt_ge.? (Dcr Type Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr3
(declare-fun test_crate!Y.impl&%15.tr3.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::next_by
(declare-fun test_crate!Y.impl&%15.next_by.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::next
(declare-fun test_crate!Y.impl&%15.next.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::initialize
(declare-fun test_crate!Y.impl&%15.initialize.? (Poly) Bool)

;; Function-Decl test_crate::Y::State::init_by
(declare-fun test_crate!Y.impl&%15.init_by.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::init
(declare-fun test_crate!Y.impl&%15.init.? (Poly) Bool)

;; Function-Decl test_crate::Y::Instance::id
(declare-fun test_crate!Y.impl&%12.id.? (Poly) vstd!tokens.InstanceId.)

;; Function-Decl test_crate::Y::State::the_inv
(declare-fun test_crate!Y.impl&%15.the_inv.? (Poly) Bool)

;; Function-Decl vstd::tokens::option_value_eq_option_token
(declare-fun vstd!tokens.option_value_eq_option_token.? (Dcr Type Dcr Type Poly Poly
  Poly
 ) Bool
)

;; Function-Decl vstd::tokens::option_value_le_option_token
(declare-fun vstd!tokens.option_value_le_option_token.? (Dcr Type Dcr Type Poly Poly
  Poly
 ) Bool
)

;; Function-Decl test_crate::Y::Step::arrow_0
(declare-fun test_crate!Y.impl&%0.arrow_0.? (Poly) test_crate!Y.State.)

;; Function-Decl test_crate::Y::Step::arrow_dummy_to_use_type_params_0
(declare-fun test_crate!Y.impl&%0.arrow_dummy_to_use_type_params_0.? (Poly) test_crate!Y.State.)

;; Function-Decl test_crate::Y::Step::is_tr1
(declare-fun test_crate!Y.impl&%1.is_tr1.? (Poly) Bool)

;; Function-Decl test_crate::Y::Step::is_tr2
(declare-fun test_crate!Y.impl&%1.is_tr2.? (Poly) Bool)

;; Function-Decl test_crate::Y::Step::is_tr3
(declare-fun test_crate!Y.impl&%1.is_tr3.? (Poly) Bool)

;; Function-Decl test_crate::Y::Step::is_dummy_to_use_type_params
(declare-fun test_crate!Y.impl&%1.is_dummy_to_use_type_params.? (Poly) Bool)

;; Function-Decl test_crate::Y::Step::get_dummy_to_use_type_params_0
(declare-fun test_crate!Y.impl&%1.get_dummy_to_use_type_params_0.? (Poly) test_crate!Y.State.)

;; Function-Decl test_crate::Y::Config::arrow_0
(declare-fun test_crate!Y.impl&%2.arrow_0.? (Poly) test_crate!Y.State.)

;; Function-Decl test_crate::Y::Config::arrow_dummy_to_use_type_params_0
(declare-fun test_crate!Y.impl&%2.arrow_dummy_to_use_type_params_0.? (Poly) test_crate!Y.State.)

;; Function-Decl test_crate::Y::Config::is_initialize
(declare-fun test_crate!Y.impl&%3.is_initialize.? (Poly) Bool)

;; Function-Decl test_crate::Y::Config::is_dummy_to_use_type_params
(declare-fun test_crate!Y.impl&%3.is_dummy_to_use_type_params.? (Poly) Bool)

;; Function-Decl test_crate::Y::Config::get_dummy_to_use_type_params_0
(declare-fun test_crate!Y.impl&%3.get_dummy_to_use_type_params_0.? (Poly) test_crate!Y.State.)

;; Function-Decl test_crate::Y::State::initialize_enabled
(declare-fun test_crate!Y.impl&%15.initialize_enabled.? (Poly) Bool)

;; Function-Decl test_crate::Y::State::tr1_strong
(declare-fun test_crate!Y.impl&%15.tr1_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr1_enabled
(declare-fun test_crate!Y.impl&%15.tr1_enabled.? (Poly) Bool)

;; Function-Decl test_crate::Y::State::tr2_strong
(declare-fun test_crate!Y.impl&%15.tr2_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr2_enabled
(declare-fun test_crate!Y.impl&%15.tr2_enabled.? (Poly) Bool)

;; Function-Decl test_crate::Y::State::tr3_strong
(declare-fun test_crate!Y.impl&%15.tr3_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr3_enabled
(declare-fun test_crate!Y.impl&%15.tr3_enabled.? (Poly) Bool)

;; Function-Decl test_crate::Y::State::next_strong_by
(declare-fun test_crate!Y.impl&%15.next_strong_by.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::next_strong
(declare-fun test_crate!Y.impl&%15.next_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::invariant
(declare-fun test_crate!Y.impl&%15.invariant.? (Poly) Bool)

;; Function-Specs core::clone::Clone::clone
(declare-fun ens%core!clone.Clone.clone. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (%return! Poly)) (!
   (= (ens%core!clone.Clone.clone. Self%&. Self%& self! %return!) (has_type %return! Self%&))
   :pattern ((ens%core!clone.Clone.clone. Self%&. Self%& self! %return!))
   :qid internal_ens__core!clone.Clone.clone._definition
   :skolemid skolem_internal_ens__core!clone.Clone.clone._definition
)))
(assert
 (forall ((tmp%%$ Poly) (Self%&. Dcr) (Self%& Type)) (!
   (=>
    (has_type tmp%%$ (TYPE%tuple%1. (REF Self%&.) Self%&))
    (=>
     (let
      ((self$ (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$))))
      true
     )
     (closure_req (FNDEF%core!clone.Clone.clone. Self%&. Self%&) $ (TYPE%tuple%1. (REF Self%&.)
       Self%&
      ) (F fndef_singleton) tmp%%$
   )))
   :pattern ((closure_req (FNDEF%core!clone.Clone.clone. Self%&. Self%&) $ (TYPE%tuple%1.
      (REF Self%&.) Self%&
     ) (F fndef_singleton) tmp%%$
   ))
   :qid user_core__clone__Clone__clone_0
   :skolemid skolem_user_core__clone__Clone__clone_0
)))

;; Function-Specs core::clone::impls::impl&%21::clone
(declare-fun ens%core!clone.impls.impl&%21.clone. (Poly Poly) Bool)
(assert
 (forall ((b! Poly) (res! Poly)) (!
   (= (ens%core!clone.impls.impl&%21.clone. b! res!) (and
     (ens%core!clone.Clone.clone. $ BOOL b! res!)
     (= res! b!)
   ))
   :pattern ((ens%core!clone.impls.impl&%21.clone. b! res!))
   :qid internal_ens__core!clone.impls.impl&__21.clone._definition
   :skolemid skolem_internal_ens__core!clone.impls.impl&__21.clone._definition
)))
(assert
 (forall ((tmp%%$ Poly) (res$ Poly)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%1. (REF $) BOOL))
     (has_type res$ BOOL)
    )
    (=>
     (closure_ens (FNDEF%core!clone.Clone.clone. $ BOOL) $ (TYPE%tuple%1. (REF $) BOOL)
      (F fndef_singleton) tmp%%$ res$
     )
     (let
      ((b$ (%B (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$)))))
      (= (%B res$) b$)
   )))
   :pattern ((closure_ens (FNDEF%core!clone.Clone.clone. $ BOOL) $ (TYPE%tuple%1. (REF $)
      BOOL
     ) (F fndef_singleton) tmp%%$ res$
   ))
   :qid user_core__clone__impls__impl&%21__clone_1
   :skolemid skolem_user_core__clone__impls__impl&%21__clone_1
)))

;; Function-Specs core::clone::impls::impl&%3::clone
(declare-fun ens%core!clone.impls.impl&%3.clone. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (b! Poly) (res! Poly)) (!
   (= (ens%core!clone.impls.impl&%3.clone. T&. T& b! res!) (and
     (ens%core!clone.Clone.clone. (REF T&.) T& b! res!)
     (= res! b!)
   ))
   :pattern ((ens%core!clone.impls.impl&%3.clone. T&. T& b! res!))
   :qid internal_ens__core!clone.impls.impl&__3.clone._definition
   :skolemid skolem_internal_ens__core!clone.impls.impl&__3.clone._definition
)))
(assert
 (forall ((tmp%%$ Poly) (res$ Poly) (T&. Dcr) (T& Type)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%1. (REF (REF T&.)) T&))
     (has_type res$ T&)
    )
    (=>
     (closure_ens (FNDEF%core!clone.Clone.clone. (REF T&.) T&) $ (TYPE%tuple%1. (REF (REF
         T&.
        )
       ) T&
      ) (F fndef_singleton) tmp%%$ res$
     )
     (let
      ((b$ (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$))))
      (= res$ b$)
   )))
   :pattern ((closure_ens (FNDEF%core!clone.Clone.clone. (REF T&.) T&) $ (TYPE%tuple%1.
      (REF (REF T&.)) T&
     ) (F fndef_singleton) tmp%%$ res$
   ))
   :qid user_core__clone__impls__impl&%3__clone_2
   :skolemid skolem_user_core__clone__impls__impl&%3__clone_2
)))

;; Function-Specs builtin::impl&%4::clone
(declare-fun ens%builtin!impl&%4.clone. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (b! Poly) (res! Poly)) (!
   (= (ens%builtin!impl&%4.clone. T&. T& b! res!) (and
     (ens%core!clone.Clone.clone. (TRACKED T&.) T& b! res!)
     (= res! b!)
   ))
   :pattern ((ens%builtin!impl&%4.clone. T&. T& b! res!))
   :qid internal_ens__builtin!impl&__4.clone._definition
   :skolemid skolem_internal_ens__builtin!impl&__4.clone._definition
)))
(assert
 (forall ((tmp%%$ Poly) (res$ Poly) (T&. Dcr) (T& Type)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%1. (REF (TRACKED T&.)) T&))
     (has_type res$ T&)
    )
    (=>
     (closure_ens (FNDEF%core!clone.Clone.clone. (TRACKED T&.) T&) $ (TYPE%tuple%1. (REF
        (TRACKED T&.)
       ) T&
      ) (F fndef_singleton) tmp%%$ res$
     )
     (let
      ((b$ (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$))))
      (= res$ b$)
   )))
   :pattern ((closure_ens (FNDEF%core!clone.Clone.clone. (TRACKED T&.) T&) $ (TYPE%tuple%1.
      (REF (TRACKED T&.)) T&
     ) (F fndef_singleton) tmp%%$ res$
   ))
   :qid user_builtin__impl&%4__clone_3
   :skolemid skolem_user_builtin__impl&%4__clone_3
)))

;; Function-Specs builtin::impl&%2::clone
(declare-fun ens%builtin!impl&%2.clone. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (b! Poly) (res! Poly)) (!
   (= (ens%builtin!impl&%2.clone. T&. T& b! res!) (and
     (ens%core!clone.Clone.clone. (GHOST T&.) T& b! res!)
     (= res! b!)
   ))
   :pattern ((ens%builtin!impl&%2.clone. T&. T& b! res!))
   :qid internal_ens__builtin!impl&__2.clone._definition
   :skolemid skolem_internal_ens__builtin!impl&__2.clone._definition
)))
(assert
 (forall ((tmp%%$ Poly) (res$ Poly) (T&. Dcr) (T& Type)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%1. (REF (GHOST T&.)) T&))
     (has_type res$ T&)
    )
    (=>
     (closure_ens (FNDEF%core!clone.Clone.clone. (GHOST T&.) T&) $ (TYPE%tuple%1. (REF (GHOST
         T&.
        )
       ) T&
      ) (F fndef_singleton) tmp%%$ res$
     )
     (let
      ((b$ (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$))))
      (= res$ b$)
   )))
   :pattern ((closure_ens (FNDEF%core!clone.Clone.clone. (GHOST T&.) T&) $ (TYPE%tuple%1.
      (REF (GHOST T&.)) T&
     ) (F fndef_singleton) tmp%%$ res$
   ))
   :qid user_builtin__impl&%2__clone_4
   :skolemid skolem_user_builtin__impl&%2__clone_4
)))

;; Function-Axioms vstd::std_specs::option::OptionAdditionalFns::is_Some
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd!std_specs.option.OptionAdditionalFns.is_Some.? Self%&. Self%& T&. T&
      self!
     ) BOOL
   ))
   :pattern ((vstd!std_specs.option.OptionAdditionalFns.is_Some.? Self%&. Self%& T&. T&
     self!
   ))
   :qid internal_vstd!std_specs.option.OptionAdditionalFns.is_Some.?_pre_post_definition
   :skolemid skolem_internal_vstd!std_specs.option.OptionAdditionalFns.is_Some.?_pre_post_definition
)))

;; Function-Axioms vstd::std_specs::option::OptionAdditionalFns::get_Some_0
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd!std_specs.option.OptionAdditionalFns.get_Some_0.? Self%&. Self%& T&.
      T& self!
     ) T&
   ))
   :pattern ((vstd!std_specs.option.OptionAdditionalFns.get_Some_0.? Self%&. Self%& T&.
     T& self!
   ))
   :qid internal_vstd!std_specs.option.OptionAdditionalFns.get_Some_0.?_pre_post_definition
   :skolemid skolem_internal_vstd!std_specs.option.OptionAdditionalFns.get_Some_0.?_pre_post_definition
)))

;; Function-Axioms vstd::std_specs::option::is_some
(assert
 (fuel_bool_default fuel%vstd!std_specs.option.is_some.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.option.is_some.)
  (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
    (= (vstd!std_specs.option.is_some.? T&. T& option!) (is-core!option.Option./Some (%Poly%core!option.Option.
       option!
    )))
    :pattern ((vstd!std_specs.option.is_some.? T&. T& option!))
    :qid internal_vstd!std_specs.option.is_some.?_definition
    :skolemid skolem_internal_vstd!std_specs.option.is_some.?_definition
))))

;; Function-Axioms vstd::std_specs::option::is_none
(assert
 (fuel_bool_default fuel%vstd!std_specs.option.is_none.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.option.is_none.)
  (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
    (= (vstd!std_specs.option.is_none.? T&. T& option!) (is-core!option.Option./None (%Poly%core!option.Option.
       option!
    )))
    :pattern ((vstd!std_specs.option.is_none.? T&. T& option!))
    :qid internal_vstd!std_specs.option.is_none.?_definition
    :skolemid skolem_internal_vstd!std_specs.option.is_none.?_definition
))))

;; Function-Axioms vstd::std_specs::option::impl&%0::is_Some
(assert
 (fuel_bool_default fuel%vstd!std_specs.option.impl&%0.is_Some.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.option.impl&%0.is_Some.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd!std_specs.option.OptionAdditionalFns.is_Some.? $ (TYPE%core!option.Option.
       T&. T&
      ) T&. T& self!
     ) (B (is-core!option.Option./Some (%Poly%core!option.Option. self!)))
    )
    :pattern ((vstd!std_specs.option.OptionAdditionalFns.is_Some.? $ (TYPE%core!option.Option.
       T&. T&
      ) T&. T& self!
    ))
    :qid internal_vstd!std_specs.option.OptionAdditionalFns.is_Some.?_definition
    :skolemid skolem_internal_vstd!std_specs.option.OptionAdditionalFns.is_Some.?_definition
))))

;; Function-Axioms vstd::std_specs::option::impl&%0::get_Some_0
(assert
 (fuel_bool_default fuel%vstd!std_specs.option.impl&%0.get_Some_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.option.impl&%0.get_Some_0.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd!std_specs.option.OptionAdditionalFns.get_Some_0.? $ (TYPE%core!option.Option.
       T&. T&
      ) T&. T& self!
     ) (core!option.Option./Some/0 (%Poly%core!option.Option. self!))
    )
    :pattern ((vstd!std_specs.option.OptionAdditionalFns.get_Some_0.? $ (TYPE%core!option.Option.
       T&. T&
      ) T&. T& self!
    ))
    :qid internal_vstd!std_specs.option.OptionAdditionalFns.get_Some_0.?_definition
    :skolemid skolem_internal_vstd!std_specs.option.OptionAdditionalFns.get_Some_0.?_definition
))))

;; Function-Specs vstd::std_specs::option::spec_unwrap
(declare-fun req%vstd!std_specs.option.spec_unwrap. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
   (= (req%vstd!std_specs.option.spec_unwrap. T&. T& option!) (=>
     %%global_location_label%%0
     (is-core!option.Option./Some (%Poly%core!option.Option. option!))
   ))
   :pattern ((req%vstd!std_specs.option.spec_unwrap. T&. T& option!))
   :qid internal_req__vstd!std_specs.option.spec_unwrap._definition
   :skolemid skolem_internal_req__vstd!std_specs.option.spec_unwrap._definition
)))

;; Function-Axioms vstd::std_specs::option::spec_unwrap
(assert
 (fuel_bool_default fuel%vstd!std_specs.option.spec_unwrap.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.option.spec_unwrap.)
  (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
    (= (vstd!std_specs.option.spec_unwrap.? T&. T& option!) (core!option.Option./Some/0
      (%Poly%core!option.Option. option!)
    ))
    :pattern ((vstd!std_specs.option.spec_unwrap.? T&. T& option!))
    :qid internal_vstd!std_specs.option.spec_unwrap.?_definition
    :skolemid skolem_internal_vstd!std_specs.option.spec_unwrap.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
   (=>
    (has_type option! (TYPE%core!option.Option. T&. T&))
    (has_type (vstd!std_specs.option.spec_unwrap.? T&. T& option!) T&)
   )
   :pattern ((vstd!std_specs.option.spec_unwrap.? T&. T& option!))
   :qid internal_vstd!std_specs.option.spec_unwrap.?_pre_post_definition
   :skolemid skolem_internal_vstd!std_specs.option.spec_unwrap.?_pre_post_definition
)))

;; Function-Specs core::option::impl&%5::clone
(declare-fun ens%core!option.impl&%5.clone. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (opt! Poly) (res! Poly)) (!
   (= (ens%core!option.impl&%5.clone. T&. T& opt! res!) (and
     (ens%core!clone.Clone.clone. $ (TYPE%core!option.Option. T&. T&) opt! res!)
     (=>
      (is-core!option.Option./None (%Poly%core!option.Option. opt!))
      (is-core!option.Option./None (%Poly%core!option.Option. res!))
     )
     (=>
      (is-core!option.Option./Some (%Poly%core!option.Option. opt!))
      (and
       (is-core!option.Option./Some (%Poly%core!option.Option. res!))
       (closure_ens (FNDEF%core!clone.Clone.clone. T&. T&) $ (TYPE%tuple%1. (REF T&.) T&)
        (F fndef_singleton) (Poly%tuple%1. (tuple%1./tuple%1 (core!option.Option./Some/0 (%Poly%core!option.Option.
            opt!
         )))
        ) (core!option.Option./Some/0 (%Poly%core!option.Option. res!))
   )))))
   :pattern ((ens%core!option.impl&%5.clone. T&. T& opt! res!))
   :qid internal_ens__core!option.impl&__5.clone._definition
   :skolemid skolem_internal_ens__core!option.impl&__5.clone._definition
)))
(assert
 (forall ((tmp%%$ Poly) (res$ Poly) (T&. Dcr) (T& Type)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%1. (REF $) (TYPE%core!option.Option. T&. T&)))
     (has_type res$ (TYPE%core!option.Option. T&. T&))
    )
    (=>
     (closure_ens (FNDEF%core!clone.Clone.clone. $ (TYPE%core!option.Option. T&. T&)) $
      (TYPE%tuple%1. (REF $) (TYPE%core!option.Option. T&. T&)) (F fndef_singleton) tmp%%$
      res$
     )
     (let
      ((opt$ (%Poly%core!option.Option. (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$)))))
      (and
       (=>
        (is-core!option.Option./None opt$)
        (is-core!option.Option./None (%Poly%core!option.Option. res$))
       )
       (=>
        (is-core!option.Option./Some opt$)
        (and
         (is-core!option.Option./Some (%Poly%core!option.Option. res$))
         (closure_ens (FNDEF%core!clone.Clone.clone. T&. T&) $ (TYPE%tuple%1. (REF T&.) T&)
          (F fndef_singleton) (Poly%tuple%1. (tuple%1./tuple%1 (core!option.Option./Some/0 (%Poly%core!option.Option.
              (Poly%core!option.Option. opt$)
           )))
          ) (core!option.Option./Some/0 (%Poly%core!option.Option. res$))
   )))))))
   :pattern ((closure_ens (FNDEF%core!clone.Clone.clone. $ (TYPE%core!option.Option. T&.
       T&
      )
     ) $ (TYPE%tuple%1. (REF $) (TYPE%core!option.Option. T&. T&)) (F fndef_singleton)
     tmp%%$ res$
   ))
   :qid user_core__option__impl&%5__clone_5
   :skolemid skolem_user_core__option__impl&%5__clone_5
)))

;; Function-Specs alloc::boxed::impl&%12::clone
(declare-fun ens%alloc!boxed.impl&%12.clone. (Dcr Type Dcr Type Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (A&. Dcr) (A& Type) (b! Poly) (res! Poly)) (!
   (= (ens%alloc!boxed.impl&%12.clone. T&. T& A&. A& b! res!) (and
     (ens%core!clone.Clone.clone. (BOX A&. A& T&.) T& b! res!)
     (closure_ens (FNDEF%core!clone.Clone.clone. T&. T&) $ (TYPE%tuple%1. (REF T&.) T&)
      (F fndef_singleton) (Poly%tuple%1. (tuple%1./tuple%1 b!)) res!
   )))
   :pattern ((ens%alloc!boxed.impl&%12.clone. T&. T& A&. A& b! res!))
   :qid internal_ens__alloc!boxed.impl&__12.clone._definition
   :skolemid skolem_internal_ens__alloc!boxed.impl&__12.clone._definition
)))
(assert
 (forall ((tmp%%$ Poly) (res$ Poly) (T&. Dcr) (T& Type) (A&. Dcr) (A& Type)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%1. (REF (BOX A&. A& T&.)) T&))
     (has_type res$ T&)
    )
    (=>
     (closure_ens (FNDEF%core!clone.Clone.clone. (BOX A&. A& T&.) T&) $ (TYPE%tuple%1. (
        REF (BOX A&. A& T&.)
       ) T&
      ) (F fndef_singleton) tmp%%$ res$
     )
     (let
      ((b$ (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$))))
      (closure_ens (FNDEF%core!clone.Clone.clone. T&. T&) $ (TYPE%tuple%1. (REF T&.) T&)
       (F fndef_singleton) (Poly%tuple%1. (tuple%1./tuple%1 b$)) res$
   ))))
   :pattern ((closure_ens (FNDEF%core!clone.Clone.clone. (BOX A&. A& T&.) T&) $ (TYPE%tuple%1.
      (REF (BOX A&. A& T&.)) T&
     ) (F fndef_singleton) tmp%%$ res$
   ))
   :qid user_alloc__boxed__impl&%12__clone_6
   :skolemid skolem_user_alloc__boxed__impl&%12__clone_6
)))

;; Function-Specs vstd::state_machine_internal::assert_add_persistent_option
(declare-fun req%vstd!state_machine_internal.assert_add_persistent_option. (Bool)
 Bool
)
(assert
 (forall ((b! Bool)) (!
   (= (req%vstd!state_machine_internal.assert_add_persistent_option. b!) b!)
   :pattern ((req%vstd!state_machine_internal.assert_add_persistent_option. b!))
   :qid internal_req__vstd!state_machine_internal.assert_add_persistent_option._definition
   :skolemid skolem_internal_req__vstd!state_machine_internal.assert_add_persistent_option._definition
)))
(declare-fun ens%vstd!state_machine_internal.assert_add_persistent_option. (Bool)
 Bool
)
(assert
 (forall ((b! Bool)) (!
   (= (ens%vstd!state_machine_internal.assert_add_persistent_option. b!) b!)
   :pattern ((ens%vstd!state_machine_internal.assert_add_persistent_option. b!))
   :qid internal_ens__vstd!state_machine_internal.assert_add_persistent_option._definition
   :skolemid skolem_internal_ens__vstd!state_machine_internal.assert_add_persistent_option._definition
)))

;; Function-Specs vstd::state_machine_internal::assert_general_add_persistent_option
(declare-fun req%vstd!state_machine_internal.assert_general_add_persistent_option.
 (Bool) Bool
)
(assert
 (forall ((b! Bool)) (!
   (= (req%vstd!state_machine_internal.assert_general_add_persistent_option. b!) b!)
   :pattern ((req%vstd!state_machine_internal.assert_general_add_persistent_option. b!))
   :qid internal_req__vstd!state_machine_internal.assert_general_add_persistent_option._definition
   :skolemid skolem_internal_req__vstd!state_machine_internal.assert_general_add_persistent_option._definition
)))
(declare-fun ens%vstd!state_machine_internal.assert_general_add_persistent_option.
 (Bool) Bool
)
(assert
 (forall ((b! Bool)) (!
   (= (ens%vstd!state_machine_internal.assert_general_add_persistent_option. b!) b!)
   :pattern ((ens%vstd!state_machine_internal.assert_general_add_persistent_option. b!))
   :qid internal_ens__vstd!state_machine_internal.assert_general_add_persistent_option._definition
   :skolemid skolem_internal_ens__vstd!state_machine_internal.assert_general_add_persistent_option._definition
)))

;; Function-Axioms vstd::tokens::ValueToken::instance_id
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd!tokens.ValueToken.instance_id.? Self%&. Self%& Value&. Value& self!)
     TYPE%vstd!tokens.InstanceId.
   ))
   :pattern ((vstd!tokens.ValueToken.instance_id.? Self%&. Self%& Value&. Value& self!))
   :qid internal_vstd!tokens.ValueToken.instance_id.?_pre_post_definition
   :skolemid skolem_internal_vstd!tokens.ValueToken.instance_id.?_pre_post_definition
)))

;; Function-Axioms vstd::tokens::ValueToken::value
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd!tokens.ValueToken.value.? Self%&. Self%& Value&. Value& self!) Value&)
   )
   :pattern ((vstd!tokens.ValueToken.value.? Self%&. Self%& Value&. Value& self!))
   :qid internal_vstd!tokens.ValueToken.value.?_pre_post_definition
   :skolemid skolem_internal_vstd!tokens.ValueToken.value.?_pre_post_definition
)))

;; Function-Specs vstd::tokens::ValueToken::agree
(declare-fun req%vstd!tokens.ValueToken.agree. (Dcr Type Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type) (self! Poly) (other!
    Poly
   )
  ) (!
   (= (req%vstd!tokens.ValueToken.agree. Self%&. Self%& Value&. Value& self! other!)
    (=>
     %%global_location_label%%1
     (= (vstd!tokens.ValueToken.instance_id.? Self%&. Self%& Value&. Value& self!) (vstd!tokens.ValueToken.instance_id.?
       Self%&. Self%& Value&. Value& other!
   ))))
   :pattern ((req%vstd!tokens.ValueToken.agree. Self%&. Self%& Value&. Value& self! other!))
   :qid internal_req__vstd!tokens.ValueToken.agree._definition
   :skolemid skolem_internal_req__vstd!tokens.ValueToken.agree._definition
)))
(declare-fun ens%vstd!tokens.ValueToken.agree. (Dcr Type Dcr Type Poly Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type) (self! Poly) (other!
    Poly
   )
  ) (!
   (= (ens%vstd!tokens.ValueToken.agree. Self%&. Self%& Value&. Value& self! other!)
    (= (vstd!tokens.ValueToken.value.? Self%&. Self%& Value&. Value& self!) (vstd!tokens.ValueToken.value.?
      Self%&. Self%& Value&. Value& other!
   )))
   :pattern ((ens%vstd!tokens.ValueToken.agree. Self%&. Self%& Value&. Value& self! other!))
   :qid internal_ens__vstd!tokens.ValueToken.agree._definition
   :skolemid skolem_internal_ens__vstd!tokens.ValueToken.agree._definition
)))

;; Function-Specs vstd::tokens::ValueToken::arbitrary
(declare-fun ens%vstd!tokens.ValueToken.arbitrary. (Dcr Type Dcr Type Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type) (%return! Poly))
  (!
   (= (ens%vstd!tokens.ValueToken.arbitrary. Self%&. Self%& Value&. Value& %return!)
    (has_type %return! Self%&)
   )
   :pattern ((ens%vstd!tokens.ValueToken.arbitrary. Self%&. Self%& Value&. Value& %return!))
   :qid internal_ens__vstd!tokens.ValueToken.arbitrary._definition
   :skolemid skolem_internal_ens__vstd!tokens.ValueToken.arbitrary._definition
)))

;; Function-Axioms test_crate::Y::State::tr1
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%15.tr1.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.tr1.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%15.tr1.? pre! post!) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_c$ (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. pre!))))
       (let
        ((update_tmp_d$ (test_crate!Y.State./State/d (%Poly%test_crate!Y.State. pre!))))
        (and
         (= update_tmp_d$ (core!option.Option./Some (I 7)))
         (let
          ((tmp_assert$1 (and
             tmp_assert$
             (=>
              (is-core!option.Option./Some update_tmp_c$)
              (= (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                   update_tmp_c$
                )))
               ) 3
          )))))
          (let
           ((update_tmp_c$1 (core!option.Option./Some (I 3))))
           (and
            (=>
             tmp_assert$1
             (= (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. post!)) update_tmp_c$1)
            )
            (=>
             tmp_assert$1
             (= (test_crate!Y.State./State/d (%Poly%test_crate!Y.State. post!)) update_tmp_d$)
    )))))))))
    :pattern ((test_crate!Y.impl&%15.tr1.? pre! post!))
    :qid internal_test_crate!Y.impl&__15.tr1.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.tr1.?_definition
))))

;; Function-Axioms vstd::state_machine_internal::opt_agree
(assert
 (fuel_bool_default fuel%vstd!state_machine_internal.opt_agree.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!state_machine_internal.opt_agree.)
  (forall ((V&. Dcr) (V& Type) (a! Poly) (b! Poly)) (!
    (= (vstd!state_machine_internal.opt_agree.? V&. V& a! b!) (=>
      (and
       (is-core!option.Option./Some (%Poly%core!option.Option. a!))
       (is-core!option.Option./Some (%Poly%core!option.Option. b!))
      )
      (= (core!option.Option./Some/0 (%Poly%core!option.Option. a!)) (core!option.Option./Some/0
        (%Poly%core!option.Option. b!)
    ))))
    :pattern ((vstd!state_machine_internal.opt_agree.? V&. V& a! b!))
    :qid internal_vstd!state_machine_internal.opt_agree.?_definition
    :skolemid skolem_internal_vstd!state_machine_internal.opt_agree.?_definition
))))

;; Function-Axioms vstd::state_machine_internal::opt_add
(assert
 (fuel_bool_default fuel%vstd!state_machine_internal.opt_add.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!state_machine_internal.opt_add.)
  (forall ((V&. Dcr) (V& Type) (a! Poly) (b! Poly)) (!
    (= (vstd!state_machine_internal.opt_add.? V&. V& a! b!) (%Poly%core!option.Option.
      (ite
       (is-core!option.Option./Some (%Poly%core!option.Option. b!))
       b!
       a!
    )))
    :pattern ((vstd!state_machine_internal.opt_add.? V&. V& a! b!))
    :qid internal_vstd!state_machine_internal.opt_add.?_definition
    :skolemid skolem_internal_vstd!state_machine_internal.opt_add.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type) (a! Poly) (b! Poly)) (!
   (=>
    (and
     (has_type a! (TYPE%core!option.Option. V&. V&))
     (has_type b! (TYPE%core!option.Option. V&. V&))
    )
    (has_type (Poly%core!option.Option. (vstd!state_machine_internal.opt_add.? V&. V& a!
       b!
      )
     ) (TYPE%core!option.Option. V&. V&)
   ))
   :pattern ((vstd!state_machine_internal.opt_add.? V&. V& a! b!))
   :qid internal_vstd!state_machine_internal.opt_add.?_pre_post_definition
   :skolemid skolem_internal_vstd!state_machine_internal.opt_add.?_pre_post_definition
)))

;; Function-Axioms test_crate::Y::State::tr2
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%15.tr2.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.tr2.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%15.tr2.? pre! post!) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_c$ (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. pre!))))
       (let
        ((update_tmp_d$ (test_crate!Y.State./State/d (%Poly%test_crate!Y.State. pre!))))
        (let
         ((tmp_assert$1 (and
            tmp_assert$
            (=>
             (and
              (is-core!option.Option./Some update_tmp_c$)
              (is-core!option.Option./Some (core!option.Option./Some (I 3)))
             )
             (= (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option. update_tmp_c$)))
              (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option. (core!option.Option./Some
                  (I 3)
         )))))))))
         (let
          ((update_tmp_c$1 (ite
             (is-core!option.Option./Some (core!option.Option./Some (I 3)))
             (core!option.Option./Some (I 3))
             update_tmp_c$
          )))
          (and
           (=>
            tmp_assert$1
            (= (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. post!)) update_tmp_c$1)
           )
           (=>
            tmp_assert$1
            (= (test_crate!Y.State./State/d (%Poly%test_crate!Y.State. post!)) update_tmp_d$)
    ))))))))
    :pattern ((test_crate!Y.impl&%15.tr2.? pre! post!))
    :qid internal_test_crate!Y.impl&__15.tr2.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.tr2.?_definition
))))

;; Function-Axioms vstd::state_machine_internal::opt_ge
(assert
 (fuel_bool_default fuel%vstd!state_machine_internal.opt_ge.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!state_machine_internal.opt_ge.)
  (forall ((V&. Dcr) (V& Type) (a! Poly) (b! Poly)) (!
    (= (vstd!state_machine_internal.opt_ge.? V&. V& a! b!) (=>
      (is-core!option.Option./Some (%Poly%core!option.Option. b!))
      (= a! b!)
    ))
    :pattern ((vstd!state_machine_internal.opt_ge.? V&. V& a! b!))
    :qid internal_vstd!state_machine_internal.opt_ge.?_definition
    :skolemid skolem_internal_vstd!state_machine_internal.opt_ge.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr3
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%15.tr3.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.tr3.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%15.tr3.? pre! post!) (let
      ((update_tmp_c$ (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. pre!))))
      (let
       ((update_tmp_d$ (test_crate!Y.State./State/d (%Poly%test_crate!Y.State. pre!))))
       (and
        (=>
         (is-core!option.Option./Some (core!option.Option./Some (I 3)))
         (= update_tmp_c$ (core!option.Option./Some (I 3)))
        )
        (and
         (= (test_crate!Y.State./State/d (%Poly%test_crate!Y.State. post!)) update_tmp_d$)
         (= (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. post!)) update_tmp_c$)
    )))))
    :pattern ((test_crate!Y.impl&%15.tr3.? pre! post!))
    :qid internal_test_crate!Y.impl&__15.tr3.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.tr3.?_definition
))))

;; Function-Axioms test_crate::Y::State::next_by
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.next_by.)
  (forall ((pre! Poly) (post! Poly) (step! Poly)) (!
    (= (test_crate!Y.impl&%15.next_by.? pre! post! step!) (ite
      (is-test_crate!Y.Step./tr1 (%Poly%test_crate!Y.Step. step!))
      (test_crate!Y.impl&%15.tr1.? pre! post!)
      (ite
       (is-test_crate!Y.Step./tr2 (%Poly%test_crate!Y.Step. step!))
       (test_crate!Y.impl&%15.tr2.? pre! post!)
       (and
        (is-test_crate!Y.Step./tr3 (%Poly%test_crate!Y.Step. step!))
        (test_crate!Y.impl&%15.tr3.? pre! post!)
    ))))
    :pattern ((test_crate!Y.impl&%15.next_by.? pre! post! step!))
    :qid internal_test_crate!Y.impl&__15.next_by.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.next_by.?_definition
))))

;; Function-Axioms test_crate::Y::State::next
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.next.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%15.next.? pre! post!) (exists ((step$ Poly)) (!
       (and
        (has_type step$ TYPE%test_crate!Y.Step.)
        (test_crate!Y.impl&%15.next_by.? pre! post! step$)
       )
       :pattern ((test_crate!Y.impl&%15.next_by.? pre! post! step$))
       :qid user_test_crate__Y__State__next_7
       :skolemid skolem_user_test_crate__Y__State__next_7
    )))
    :pattern ((test_crate!Y.impl&%15.next.? pre! post!))
    :qid internal_test_crate!Y.impl&__15.next.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.next.?_definition
))))

;; Function-Axioms test_crate::Y::State::initialize
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%15.initialize.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.initialize.)
  (forall ((post! Poly)) (!
    (= (test_crate!Y.impl&%15.initialize.? post!) (let
      ((update_tmp_c$ core!option.Option./None))
      (let
       ((update_tmp_d$ (core!option.Option./Some (I 7))))
       (and
        (= (test_crate!Y.State./State/d (%Poly%test_crate!Y.State. post!)) update_tmp_d$)
        (= (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. post!)) update_tmp_c$)
    ))))
    :pattern ((test_crate!Y.impl&%15.initialize.? post!))
    :qid internal_test_crate!Y.impl&__15.initialize.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.initialize.?_definition
))))

;; Function-Axioms test_crate::Y::State::init_by
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.init_by.)
  (forall ((post! Poly) (step! Poly)) (!
    (= (test_crate!Y.impl&%15.init_by.? post! step!) (and
      (is-test_crate!Y.Config./initialize (%Poly%test_crate!Y.Config. step!))
      (test_crate!Y.impl&%15.initialize.? post!)
    ))
    :pattern ((test_crate!Y.impl&%15.init_by.? post! step!))
    :qid internal_test_crate!Y.impl&__15.init_by.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.init_by.?_definition
))))

;; Function-Axioms test_crate::Y::State::init
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.init.)
  (forall ((post! Poly)) (!
    (= (test_crate!Y.impl&%15.init.? post!) (exists ((step$ Poly)) (!
       (and
        (has_type step$ TYPE%test_crate!Y.Config.)
        (test_crate!Y.impl&%15.init_by.? post! step$)
       )
       :pattern ((test_crate!Y.impl&%15.init_by.? post! step$))
       :qid user_test_crate__Y__State__init_8
       :skolemid skolem_user_test_crate__Y__State__init_8
    )))
    :pattern ((test_crate!Y.impl&%15.init.? post!))
    :qid internal_test_crate!Y.impl&__15.init.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.init.?_definition
))))

;; Function-Specs test_crate::Y::c::clone
(declare-fun ens%test_crate!Y.impl&%4.clone. (test_crate!Y.c. test_crate!Y.c.) Bool)
(assert
 (forall ((self! test_crate!Y.c.) (s! test_crate!Y.c.)) (!
   (= (ens%test_crate!Y.impl&%4.clone. self! s!) (and
     (has_type (Poly%test_crate!Y.c. s!) TYPE%test_crate!Y.c.)
     (= self! s!)
   ))
   :pattern ((ens%test_crate!Y.impl&%4.clone. self! s!))
   :qid internal_ens__test_crate!Y.impl&__4.clone._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__4.clone._definition
)))

;; Function-Specs test_crate::Y::d::clone
(declare-fun ens%test_crate!Y.impl&%8.clone. (test_crate!Y.d. test_crate!Y.d.) Bool)
(assert
 (forall ((self! test_crate!Y.d.) (s! test_crate!Y.d.)) (!
   (= (ens%test_crate!Y.impl&%8.clone. self! s!) (and
     (has_type (Poly%test_crate!Y.d. s!) TYPE%test_crate!Y.d.)
     (= self! s!)
   ))
   :pattern ((ens%test_crate!Y.impl&%8.clone. self! s!))
   :qid internal_ens__test_crate!Y.impl&__8.clone._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__8.clone._definition
)))

;; Function-Specs test_crate::Y::Instance::clone
(declare-fun ens%test_crate!Y.impl&%12.clone. (test_crate!Y.Instance. test_crate!Y.Instance.)
 Bool
)
(assert
 (forall ((self! test_crate!Y.Instance.) (s! test_crate!Y.Instance.)) (!
   (= (ens%test_crate!Y.impl&%12.clone. self! s!) (and
     (has_type (Poly%test_crate!Y.Instance. s!) TYPE%test_crate!Y.Instance.)
     (= self! s!)
   ))
   :pattern ((ens%test_crate!Y.impl&%12.clone. self! s!))
   :qid internal_ens__test_crate!Y.impl&__12.clone._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__12.clone._definition
)))

;; Function-Axioms test_crate::Y::State::the_inv
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%15.the_inv.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.the_inv.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%15.the_inv.? self!) (and
      (let
       ((tmp%%$ (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. self!))))
       (=>
        (is-core!option.Option./Some tmp%%$)
        (let
         ((x$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
               tmp%%$
         ))))))
         (= x$ 3)
      )))
      (let
       ((tmp%%$ (test_crate!Y.State./State/d (%Poly%test_crate!Y.State. self!))))
       (=>
        (is-core!option.Option./Some tmp%%$)
        (let
         ((x$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
               tmp%%$
         ))))))
         (= x$ 7)
    )))))
    :pattern ((test_crate!Y.impl&%15.the_inv.? self!))
    :qid internal_test_crate!Y.impl&__15.the_inv.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.the_inv.?_definition
))))

;; Function-Specs test_crate::Y::State::lemma_msg_the_inv
(declare-fun req%test_crate!Y.impl&%15.lemma_msg_the_inv. (test_crate!Y.State.) Bool)
(assert
 (forall ((s! test_crate!Y.State.)) (!
   (= (req%test_crate!Y.impl&%15.lemma_msg_the_inv. s!) (test_crate!Y.impl&%15.the_inv.?
     (Poly%test_crate!Y.State. s!)
   ))
   :pattern ((req%test_crate!Y.impl&%15.lemma_msg_the_inv. s!))
   :qid internal_req__test_crate!Y.impl&__15.lemma_msg_the_inv._definition
   :skolemid skolem_internal_req__test_crate!Y.impl&__15.lemma_msg_the_inv._definition
)))
(declare-fun ens%test_crate!Y.impl&%15.lemma_msg_the_inv. (test_crate!Y.State.) Bool)
(assert
 (forall ((s! test_crate!Y.State.)) (!
   (= (ens%test_crate!Y.impl&%15.lemma_msg_the_inv. s!) (test_crate!Y.impl&%15.the_inv.?
     (Poly%test_crate!Y.State. s!)
   ))
   :pattern ((ens%test_crate!Y.impl&%15.lemma_msg_the_inv. s!))
   :qid internal_ens__test_crate!Y.impl&__15.lemma_msg_the_inv._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__15.lemma_msg_the_inv._definition
)))

;; Function-Axioms vstd::tokens::option_value_eq_option_token
(assert
 (fuel_bool_default fuel%vstd!tokens.option_value_eq_option_token.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!tokens.option_value_eq_option_token.)
  (forall ((Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type) (opt_value! Poly)
    (opt_token! Poly) (instance_id! Poly)
   ) (!
    (= (vstd!tokens.option_value_eq_option_token.? Value&. Value& Token&. Token& opt_value!
      opt_token! instance_id!
     ) (ite
      (is-core!option.Option./Some (%Poly%core!option.Option. opt_value!))
      (let
       ((val$ (core!option.Option./Some/0 (%Poly%core!option.Option. opt_value!))))
       (and
        (and
         (is-core!option.Option./Some (%Poly%core!option.Option. opt_token!))
         (= (vstd!tokens.ValueToken.value.? Token&. Token& Value&. Value& (core!option.Option./Some/0
            (%Poly%core!option.Option. opt_token!)
           )
          ) val$
        ))
        (= (vstd!tokens.ValueToken.instance_id.? Token&. Token& Value&. Value& (core!option.Option./Some/0
           (%Poly%core!option.Option. opt_token!)
          )
         ) instance_id!
      )))
      (is-core!option.Option./None (%Poly%core!option.Option. opt_token!))
    ))
    :pattern ((vstd!tokens.option_value_eq_option_token.? Value&. Value& Token&. Token&
      opt_value! opt_token! instance_id!
    ))
    :qid internal_vstd!tokens.option_value_eq_option_token.?_definition
    :skolemid skolem_internal_vstd!tokens.option_value_eq_option_token.?_definition
))))

;; Function-Axioms vstd::tokens::option_value_le_option_token
(assert
 (fuel_bool_default fuel%vstd!tokens.option_value_le_option_token.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!tokens.option_value_le_option_token.)
  (forall ((Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type) (opt_value! Poly)
    (opt_token! Poly) (instance_id! Poly)
   ) (!
    (= (vstd!tokens.option_value_le_option_token.? Value&. Value& Token&. Token& opt_value!
      opt_token! instance_id!
     ) (=>
      (is-core!option.Option./Some (%Poly%core!option.Option. opt_value!))
      (let
       ((val$ (core!option.Option./Some/0 (%Poly%core!option.Option. opt_value!))))
       (and
        (and
         (is-core!option.Option./Some (%Poly%core!option.Option. opt_token!))
         (= (vstd!tokens.ValueToken.value.? Token&. Token& Value&. Value& (core!option.Option./Some/0
            (%Poly%core!option.Option. opt_token!)
           )
          ) val$
        ))
        (= (vstd!tokens.ValueToken.instance_id.? Token&. Token& Value&. Value& (core!option.Option./Some/0
           (%Poly%core!option.Option. opt_token!)
          )
         ) instance_id!
    )))))
    :pattern ((vstd!tokens.option_value_le_option_token.? Value&. Value& Token&. Token&
      opt_value! opt_token! instance_id!
    ))
    :qid internal_vstd!tokens.option_value_le_option_token.?_definition
    :skolemid skolem_internal_vstd!tokens.option_value_le_option_token.?_definition
))))

;; Function-Axioms test_crate::Y::Step::arrow_0
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%0.arrow_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%0.arrow_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%0.arrow_0.? self!) (test_crate!Y.Step./dummy_to_use_type_params/0
      (%Poly%test_crate!Y.Step. self!)
    ))
    :pattern ((test_crate!Y.impl&%0.arrow_0.? self!))
    :qid internal_test_crate!Y.impl&__0.arrow_0.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__0.arrow_0.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%test_crate!Y.Step.)
    (has_type (Poly%test_crate!Y.State. (test_crate!Y.impl&%0.arrow_0.? self!)) TYPE%test_crate!Y.State.)
   )
   :pattern ((test_crate!Y.impl&%0.arrow_0.? self!))
   :qid internal_test_crate!Y.impl&__0.arrow_0.?_pre_post_definition
   :skolemid skolem_internal_test_crate!Y.impl&__0.arrow_0.?_pre_post_definition
)))

;; Function-Axioms test_crate::Y::Step::arrow_dummy_to_use_type_params_0
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%0.arrow_dummy_to_use_type_params_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%0.arrow_dummy_to_use_type_params_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%0.arrow_dummy_to_use_type_params_0.? self!) (test_crate!Y.Step./dummy_to_use_type_params/0
      (%Poly%test_crate!Y.Step. self!)
    ))
    :pattern ((test_crate!Y.impl&%0.arrow_dummy_to_use_type_params_0.? self!))
    :qid internal_test_crate!Y.impl&__0.arrow_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__0.arrow_dummy_to_use_type_params_0.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%test_crate!Y.Step.)
    (has_type (Poly%test_crate!Y.State. (test_crate!Y.impl&%0.arrow_dummy_to_use_type_params_0.?
       self!
      )
     ) TYPE%test_crate!Y.State.
   ))
   :pattern ((test_crate!Y.impl&%0.arrow_dummy_to_use_type_params_0.? self!))
   :qid internal_test_crate!Y.impl&__0.arrow_dummy_to_use_type_params_0.?_pre_post_definition
   :skolemid skolem_internal_test_crate!Y.impl&__0.arrow_dummy_to_use_type_params_0.?_pre_post_definition
)))

;; Function-Axioms test_crate::Y::Step::is_tr1
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%1.is_tr1.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%1.is_tr1.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%1.is_tr1.? self!) (is-test_crate!Y.Step./tr1 (%Poly%test_crate!Y.Step.
       self!
    )))
    :pattern ((test_crate!Y.impl&%1.is_tr1.? self!))
    :qid internal_test_crate!Y.impl&__1.is_tr1.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__1.is_tr1.?_definition
))))

;; Function-Axioms test_crate::Y::Step::is_tr2
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%1.is_tr2.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%1.is_tr2.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%1.is_tr2.? self!) (is-test_crate!Y.Step./tr2 (%Poly%test_crate!Y.Step.
       self!
    )))
    :pattern ((test_crate!Y.impl&%1.is_tr2.? self!))
    :qid internal_test_crate!Y.impl&__1.is_tr2.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__1.is_tr2.?_definition
))))

;; Function-Axioms test_crate::Y::Step::is_tr3
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%1.is_tr3.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%1.is_tr3.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%1.is_tr3.? self!) (is-test_crate!Y.Step./tr3 (%Poly%test_crate!Y.Step.
       self!
    )))
    :pattern ((test_crate!Y.impl&%1.is_tr3.? self!))
    :qid internal_test_crate!Y.impl&__1.is_tr3.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__1.is_tr3.?_definition
))))

;; Function-Axioms test_crate::Y::Step::is_dummy_to_use_type_params
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%1.is_dummy_to_use_type_params.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%1.is_dummy_to_use_type_params.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%1.is_dummy_to_use_type_params.? self!) (is-test_crate!Y.Step./dummy_to_use_type_params
      (%Poly%test_crate!Y.Step. self!)
    ))
    :pattern ((test_crate!Y.impl&%1.is_dummy_to_use_type_params.? self!))
    :qid internal_test_crate!Y.impl&__1.is_dummy_to_use_type_params.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__1.is_dummy_to_use_type_params.?_definition
))))

;; Function-Axioms test_crate::Y::Step::get_dummy_to_use_type_params_0
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%1.get_dummy_to_use_type_params_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%1.get_dummy_to_use_type_params_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%1.get_dummy_to_use_type_params_0.? self!) (test_crate!Y.Step./dummy_to_use_type_params/0
      (%Poly%test_crate!Y.Step. self!)
    ))
    :pattern ((test_crate!Y.impl&%1.get_dummy_to_use_type_params_0.? self!))
    :qid internal_test_crate!Y.impl&__1.get_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__1.get_dummy_to_use_type_params_0.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%test_crate!Y.Step.)
    (has_type (Poly%test_crate!Y.State. (test_crate!Y.impl&%1.get_dummy_to_use_type_params_0.?
       self!
      )
     ) TYPE%test_crate!Y.State.
   ))
   :pattern ((test_crate!Y.impl&%1.get_dummy_to_use_type_params_0.? self!))
   :qid internal_test_crate!Y.impl&__1.get_dummy_to_use_type_params_0.?_pre_post_definition
   :skolemid skolem_internal_test_crate!Y.impl&__1.get_dummy_to_use_type_params_0.?_pre_post_definition
)))

;; Function-Axioms test_crate::Y::Config::arrow_0
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%2.arrow_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%2.arrow_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%2.arrow_0.? self!) (test_crate!Y.Config./dummy_to_use_type_params/0
      (%Poly%test_crate!Y.Config. self!)
    ))
    :pattern ((test_crate!Y.impl&%2.arrow_0.? self!))
    :qid internal_test_crate!Y.impl&__2.arrow_0.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__2.arrow_0.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%test_crate!Y.Config.)
    (has_type (Poly%test_crate!Y.State. (test_crate!Y.impl&%2.arrow_0.? self!)) TYPE%test_crate!Y.State.)
   )
   :pattern ((test_crate!Y.impl&%2.arrow_0.? self!))
   :qid internal_test_crate!Y.impl&__2.arrow_0.?_pre_post_definition
   :skolemid skolem_internal_test_crate!Y.impl&__2.arrow_0.?_pre_post_definition
)))

;; Function-Axioms test_crate::Y::Config::arrow_dummy_to_use_type_params_0
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%2.arrow_dummy_to_use_type_params_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%2.arrow_dummy_to_use_type_params_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%2.arrow_dummy_to_use_type_params_0.? self!) (test_crate!Y.Config./dummy_to_use_type_params/0
      (%Poly%test_crate!Y.Config. self!)
    ))
    :pattern ((test_crate!Y.impl&%2.arrow_dummy_to_use_type_params_0.? self!))
    :qid internal_test_crate!Y.impl&__2.arrow_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__2.arrow_dummy_to_use_type_params_0.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%test_crate!Y.Config.)
    (has_type (Poly%test_crate!Y.State. (test_crate!Y.impl&%2.arrow_dummy_to_use_type_params_0.?
       self!
      )
     ) TYPE%test_crate!Y.State.
   ))
   :pattern ((test_crate!Y.impl&%2.arrow_dummy_to_use_type_params_0.? self!))
   :qid internal_test_crate!Y.impl&__2.arrow_dummy_to_use_type_params_0.?_pre_post_definition
   :skolemid skolem_internal_test_crate!Y.impl&__2.arrow_dummy_to_use_type_params_0.?_pre_post_definition
)))

;; Function-Axioms test_crate::Y::Config::is_initialize
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%3.is_initialize.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%3.is_initialize.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%3.is_initialize.? self!) (is-test_crate!Y.Config./initialize
      (%Poly%test_crate!Y.Config. self!)
    ))
    :pattern ((test_crate!Y.impl&%3.is_initialize.? self!))
    :qid internal_test_crate!Y.impl&__3.is_initialize.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__3.is_initialize.?_definition
))))

;; Function-Axioms test_crate::Y::Config::is_dummy_to_use_type_params
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%3.is_dummy_to_use_type_params.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%3.is_dummy_to_use_type_params.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%3.is_dummy_to_use_type_params.? self!) (is-test_crate!Y.Config./dummy_to_use_type_params
      (%Poly%test_crate!Y.Config. self!)
    ))
    :pattern ((test_crate!Y.impl&%3.is_dummy_to_use_type_params.? self!))
    :qid internal_test_crate!Y.impl&__3.is_dummy_to_use_type_params.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__3.is_dummy_to_use_type_params.?_definition
))))

;; Function-Axioms test_crate::Y::Config::get_dummy_to_use_type_params_0
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%3.get_dummy_to_use_type_params_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%3.get_dummy_to_use_type_params_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%3.get_dummy_to_use_type_params_0.? self!) (test_crate!Y.Config./dummy_to_use_type_params/0
      (%Poly%test_crate!Y.Config. self!)
    ))
    :pattern ((test_crate!Y.impl&%3.get_dummy_to_use_type_params_0.? self!))
    :qid internal_test_crate!Y.impl&__3.get_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__3.get_dummy_to_use_type_params_0.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%test_crate!Y.Config.)
    (has_type (Poly%test_crate!Y.State. (test_crate!Y.impl&%3.get_dummy_to_use_type_params_0.?
       self!
      )
     ) TYPE%test_crate!Y.State.
   ))
   :pattern ((test_crate!Y.impl&%3.get_dummy_to_use_type_params_0.? self!))
   :qid internal_test_crate!Y.impl&__3.get_dummy_to_use_type_params_0.?_pre_post_definition
   :skolemid skolem_internal_test_crate!Y.impl&__3.get_dummy_to_use_type_params_0.?_pre_post_definition
)))

;; Function-Axioms test_crate::Y::State::initialize_enabled
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%15.initialize_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.initialize_enabled.)
  (forall ((no%param Poly)) (!
    (= (test_crate!Y.impl&%15.initialize_enabled.? no%param) true)
    :pattern ((test_crate!Y.impl&%15.initialize_enabled.? no%param))
    :qid internal_test_crate!Y.impl&__15.initialize_enabled.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.initialize_enabled.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr1_strong
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%15.tr1_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.tr1_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%15.tr1_strong.? pre! post!) (let
      ((update_tmp_c$ (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. pre!))))
      (let
       ((update_tmp_d$ (test_crate!Y.State./State/d (%Poly%test_crate!Y.State. pre!))))
       (and
        (= update_tmp_d$ (core!option.Option./Some (I 7)))
        (and
         (=>
          (is-core!option.Option./Some update_tmp_c$)
          (= (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
               update_tmp_c$
            )))
           ) 3
         ))
         (let
          ((update_tmp_c$1 (core!option.Option./Some (I 3))))
          (and
           (= (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. post!)) update_tmp_c$1)
           (= (test_crate!Y.State./State/d (%Poly%test_crate!Y.State. post!)) update_tmp_d$)
    )))))))
    :pattern ((test_crate!Y.impl&%15.tr1_strong.? pre! post!))
    :qid internal_test_crate!Y.impl&__15.tr1_strong.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.tr1_strong.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr1_enabled
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%15.tr1_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.tr1_enabled.)
  (forall ((pre! Poly)) (!
    (= (test_crate!Y.impl&%15.tr1_enabled.? pre!) (let
      ((update_tmp_d$ (test_crate!Y.State./State/d (%Poly%test_crate!Y.State. pre!))))
      (= update_tmp_d$ (core!option.Option./Some (I 7)))
    ))
    :pattern ((test_crate!Y.impl&%15.tr1_enabled.? pre!))
    :qid internal_test_crate!Y.impl&__15.tr1_enabled.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.tr1_enabled.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr2_strong
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%15.tr2_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.tr2_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%15.tr2_strong.? pre! post!) (let
      ((update_tmp_c$ (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. pre!))))
      (let
       ((update_tmp_d$ (test_crate!Y.State./State/d (%Poly%test_crate!Y.State. pre!))))
       (and
        (=>
         (and
          (is-core!option.Option./Some update_tmp_c$)
          (is-core!option.Option./Some (core!option.Option./Some (I 3)))
         )
         (= (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option. update_tmp_c$)))
          (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option. (core!option.Option./Some
              (I 3)
        ))))))
        (let
         ((update_tmp_c$1 (ite
            (is-core!option.Option./Some (core!option.Option./Some (I 3)))
            (core!option.Option./Some (I 3))
            update_tmp_c$
         )))
         (and
          (= (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. post!)) update_tmp_c$1)
          (= (test_crate!Y.State./State/d (%Poly%test_crate!Y.State. post!)) update_tmp_d$)
    ))))))
    :pattern ((test_crate!Y.impl&%15.tr2_strong.? pre! post!))
    :qid internal_test_crate!Y.impl&__15.tr2_strong.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.tr2_strong.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr2_enabled
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%15.tr2_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.tr2_enabled.)
  (forall ((pre! Poly)) (!
    (= (test_crate!Y.impl&%15.tr2_enabled.? pre!) true)
    :pattern ((test_crate!Y.impl&%15.tr2_enabled.? pre!))
    :qid internal_test_crate!Y.impl&__15.tr2_enabled.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.tr2_enabled.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr3_strong
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%15.tr3_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.tr3_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%15.tr3_strong.? pre! post!) (let
      ((update_tmp_c$ (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. pre!))))
      (let
       ((update_tmp_d$ (test_crate!Y.State./State/d (%Poly%test_crate!Y.State. pre!))))
       (and
        (=>
         (is-core!option.Option./Some (core!option.Option./Some (I 3)))
         (= update_tmp_c$ (core!option.Option./Some (I 3)))
        )
        (and
         (= (test_crate!Y.State./State/d (%Poly%test_crate!Y.State. post!)) update_tmp_d$)
         (= (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. post!)) update_tmp_c$)
    )))))
    :pattern ((test_crate!Y.impl&%15.tr3_strong.? pre! post!))
    :qid internal_test_crate!Y.impl&__15.tr3_strong.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.tr3_strong.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr3_enabled
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%15.tr3_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.tr3_enabled.)
  (forall ((pre! Poly)) (!
    (= (test_crate!Y.impl&%15.tr3_enabled.? pre!) (let
      ((update_tmp_c$ (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. pre!))))
      (=>
       (is-core!option.Option./Some (core!option.Option./Some (I 3)))
       (= update_tmp_c$ (core!option.Option./Some (I 3)))
    )))
    :pattern ((test_crate!Y.impl&%15.tr3_enabled.? pre!))
    :qid internal_test_crate!Y.impl&__15.tr3_enabled.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.tr3_enabled.?_definition
))))

;; Function-Axioms test_crate::Y::State::next_strong_by
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.next_strong_by.)
  (forall ((pre! Poly) (post! Poly) (step! Poly)) (!
    (= (test_crate!Y.impl&%15.next_strong_by.? pre! post! step!) (ite
      (is-test_crate!Y.Step./tr1 (%Poly%test_crate!Y.Step. step!))
      (test_crate!Y.impl&%15.tr1_strong.? pre! post!)
      (ite
       (is-test_crate!Y.Step./tr2 (%Poly%test_crate!Y.Step. step!))
       (test_crate!Y.impl&%15.tr2_strong.? pre! post!)
       (and
        (is-test_crate!Y.Step./tr3 (%Poly%test_crate!Y.Step. step!))
        (test_crate!Y.impl&%15.tr3_strong.? pre! post!)
    ))))
    :pattern ((test_crate!Y.impl&%15.next_strong_by.? pre! post! step!))
    :qid internal_test_crate!Y.impl&__15.next_strong_by.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.next_strong_by.?_definition
))))

;; Function-Axioms test_crate::Y::State::next_strong
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.next_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%15.next_strong.? pre! post!) (exists ((step$ Poly)) (!
       (and
        (has_type step$ TYPE%test_crate!Y.Step.)
        (test_crate!Y.impl&%15.next_strong_by.? pre! post! step$)
       )
       :pattern ((test_crate!Y.impl&%15.next_strong_by.? pre! post! step$))
       :qid user_test_crate__Y__State__next_strong_9
       :skolemid skolem_user_test_crate__Y__State__next_strong_9
    )))
    :pattern ((test_crate!Y.impl&%15.next_strong.? pre! post!))
    :qid internal_test_crate!Y.impl&__15.next_strong.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.next_strong.?_definition
))))

;; Function-Axioms test_crate::Y::State::invariant
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%15.invariant.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.invariant.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%15.invariant.? self!) (test_crate!Y.impl&%15.the_inv.? self!))
    :pattern ((test_crate!Y.impl&%15.invariant.? self!))
    :qid internal_test_crate!Y.impl&__15.invariant.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.invariant.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%vstd!std_specs.option.OptionAdditionalFns. $ (TYPE%core!option.Option. T&.
     T&
    ) T&. T&
   )
   :pattern ((tr_bound%vstd!std_specs.option.OptionAdditionalFns. $ (TYPE%core!option.Option.
      T&. T&
     ) T&. T&
   ))
   :qid internal_vstd__std_specs__option__impl&__0_trait_impl_definition
   :skolemid skolem_internal_vstd__std_specs__option__impl&__0_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (=>
    (tr_bound%core!alloc.Allocator. A&. A&)
    (tr_bound%core!alloc.Allocator. (REF A&.) A&)
   )
   :pattern ((tr_bound%core!alloc.Allocator. (REF A&.) A&))
   :qid internal_core__alloc__impl&__2_trait_impl_definition
   :skolemid skolem_internal_core__alloc__impl&__2_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!clone.Clone. (REF T&.) T&)
   :pattern ((tr_bound%core!clone.Clone. (REF T&.) T&))
   :qid internal_core__clone__impls__impl&__3_trait_impl_definition
   :skolemid skolem_internal_core__clone__impls__impl&__3_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%core!clone.Clone. T&. T&)
    (tr_bound%core!clone.Clone. $ (TYPE%core!option.Option. T&. T&))
   )
   :pattern ((tr_bound%core!clone.Clone. $ (TYPE%core!option.Option. T&. T&)))
   :qid internal_core__option__impl&__5_trait_impl_definition
   :skolemid skolem_internal_core__option__impl&__5_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!clone.Clone. $ (TYPE%vstd!state_machine_internal.SyncSendIfSyncSend.
     T&. T&
   ))
   :pattern ((tr_bound%core!clone.Clone. $ (TYPE%vstd!state_machine_internal.SyncSendIfSyncSend.
      T&. T&
   )))
   :qid internal_vstd__state_machine_internal__impl&__0_trait_impl_definition
   :skolemid skolem_internal_vstd__state_machine_internal__impl&__0_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (tr_bound%core!clone.Clone. (TRACKED A&.) A&)
   :pattern ((tr_bound%core!clone.Clone. (TRACKED A&.) A&))
   :qid internal_builtin__impl&__4_trait_impl_definition
   :skolemid skolem_internal_builtin__impl&__4_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (tr_bound%core!clone.Clone. (GHOST A&.) A&)
   :pattern ((tr_bound%core!clone.Clone. (GHOST A&.) A&))
   :qid internal_builtin__impl&__2_trait_impl_definition
   :skolemid skolem_internal_builtin__impl&__2_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (A&. Dcr) (A& Type)) (!
   (=>
    (and
     (tr_bound%core!clone.Clone. T&. T&)
     (tr_bound%core!alloc.Allocator. A&. A&)
     (tr_bound%core!clone.Clone. A&. A&)
    )
    (tr_bound%core!clone.Clone. (BOX A&. A& T&.) T&)
   )
   :pattern ((tr_bound%core!clone.Clone. (BOX A&. A& T&.) T&))
   :qid internal_alloc__boxed__impl&__12_trait_impl_definition
   :skolemid skolem_internal_alloc__boxed__impl&__12_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ TYPE%test_crate!Y.c.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!tokens.ValueToken. $ TYPE%test_crate!Y.c. $ INT)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ TYPE%test_crate!Y.d.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!tokens.ValueToken. $ TYPE%test_crate!Y.d. $ INT)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ TYPE%test_crate!Y.Instance.)
)

;; Function-Specs test_crate::Y::State::initialize_inductive
(declare-fun req%test_crate!Y.impl&%15.initialize_inductive. (test_crate!Y.State.)
 Bool
)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((post! test_crate!Y.State.)) (!
   (= (req%test_crate!Y.impl&%15.initialize_inductive. post!) (=>
     %%global_location_label%%2
     (test_crate!Y.impl&%15.initialize.? (Poly%test_crate!Y.State. post!))
   ))
   :pattern ((req%test_crate!Y.impl&%15.initialize_inductive. post!))
   :qid internal_req__test_crate!Y.impl&__15.initialize_inductive._definition
   :skolemid skolem_internal_req__test_crate!Y.impl&__15.initialize_inductive._definition
)))
(declare-fun ens%test_crate!Y.impl&%15.initialize_inductive. (test_crate!Y.State.)
 Bool
)
(assert
 (forall ((post! test_crate!Y.State.)) (!
   (= (ens%test_crate!Y.impl&%15.initialize_inductive. post!) (test_crate!Y.impl&%15.invariant.?
     (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!Y.impl&%15.initialize_inductive. post!))
   :qid internal_ens__test_crate!Y.impl&__15.initialize_inductive._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__15.initialize_inductive._definition
)))

;; Function-Def test_crate::Y::State::initialize_inductive
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-persistent_option_codegen/test.rs:86:5: 86:40 (#0)
(get-info :all-statistics)
(push)
 (declare-const post! test_crate!Y.State.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%test_crate!Y.State. post!) TYPE%test_crate!Y.State.)
 )
 (assert
  (test_crate!Y.impl&%15.initialize.? (Poly%test_crate!Y.State. post!))
 )
 ;; could not show invariant `the_inv` on the `post` state
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%test_crate!Y.impl&%15.lemma_msg_the_inv. post!)
    )
    (=>
     (ens%test_crate!Y.impl&%15.lemma_msg_the_inv. post!)
     (=>
      %%location_label%%1
      (test_crate!Y.impl&%15.invariant.? (Poly%test_crate!Y.State. post!))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::Y::State::tr1_inductive
(declare-fun req%test_crate!Y.impl&%15.tr1_inductive. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (req%test_crate!Y.impl&%15.tr1_inductive. pre! post!) (=>
     %%global_location_label%%3
     (and
      (test_crate!Y.impl&%15.invariant.? (Poly%test_crate!Y.State. pre!))
      (test_crate!Y.impl&%15.tr1_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
   )))))
   :pattern ((req%test_crate!Y.impl&%15.tr1_inductive. pre! post!))
   :qid internal_req__test_crate!Y.impl&__15.tr1_inductive._definition
   :skolemid skolem_internal_req__test_crate!Y.impl&__15.tr1_inductive._definition
)))
(declare-fun ens%test_crate!Y.impl&%15.tr1_inductive. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!Y.impl&%15.tr1_inductive. pre! post!) (test_crate!Y.impl&%15.invariant.?
     (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!Y.impl&%15.tr1_inductive. pre! post!))
   :qid internal_ens__test_crate!Y.impl&__15.tr1_inductive._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__15.tr1_inductive._definition
)))

;; Function-Def test_crate::Y::State::tr1_inductive
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-persistent_option_codegen/test.rs:89:5: 89:44 (#0)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!Y.State.)
 (declare-const post! test_crate!Y.State.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%test_crate!Y.State. pre!) TYPE%test_crate!Y.State.)
 )
 (assert
  (has_type (Poly%test_crate!Y.State. post!) TYPE%test_crate!Y.State.)
 )
 (assert
  (and
   (test_crate!Y.impl&%15.invariant.? (Poly%test_crate!Y.State. pre!))
   (test_crate!Y.impl&%15.tr1_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
     post!
 ))))
 ;; could not show invariant `the_inv` on the `post` state
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%test_crate!Y.impl&%15.lemma_msg_the_inv. post!)
    )
    (=>
     (ens%test_crate!Y.impl&%15.lemma_msg_the_inv. post!)
     (=>
      %%location_label%%1
      (test_crate!Y.impl&%15.invariant.? (Poly%test_crate!Y.State. post!))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::Y::State::tr1_asserts
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-persistent_option_codegen/test.rs:35:1: 96:3 (#42)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!Y.State.)
 (declare-const tmp%1 Bool)
 (declare-const update_tmp_c@ core!option.Option.)
 (declare-const update_tmp_d@ core!option.Option.)
 (declare-const update_tmp_c$1@ core!option.Option.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%test_crate!Y.State. pre!) TYPE%test_crate!Y.State.)
 )
 ;; unable to prove inherent safety condition: if the previous value is Some(_), then this existing value must agree with the newly provided value
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (test_crate!Y.impl&%15.invariant.? (Poly%test_crate!Y.State. pre!))
    (=>
     (= update_tmp_c@ (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. (Poly%test_crate!Y.State.
         pre!
     ))))
     (=>
      (= update_tmp_d@ (test_crate!Y.State./State/d (%Poly%test_crate!Y.State. (Poly%test_crate!Y.State.
          pre!
      ))))
      (=>
       (= update_tmp_d@ (core!option.Option./Some (I 7)))
       (=>
        (= tmp%1 (=>
          (is-core!option.Option./Some update_tmp_c@)
          (= (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
               update_tmp_c@
            )))
           ) 3
        )))
        (=>
         %%location_label%%0
         (req%vstd!state_machine_internal.assert_add_persistent_option. tmp%1)
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::Y::State::tr2_inductive
(declare-fun req%test_crate!Y.impl&%15.tr2_inductive. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (req%test_crate!Y.impl&%15.tr2_inductive. pre! post!) (=>
     %%global_location_label%%4
     (and
      (test_crate!Y.impl&%15.invariant.? (Poly%test_crate!Y.State. pre!))
      (test_crate!Y.impl&%15.tr2_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
   )))))
   :pattern ((req%test_crate!Y.impl&%15.tr2_inductive. pre! post!))
   :qid internal_req__test_crate!Y.impl&__15.tr2_inductive._definition
   :skolemid skolem_internal_req__test_crate!Y.impl&__15.tr2_inductive._definition
)))
(declare-fun ens%test_crate!Y.impl&%15.tr2_inductive. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!Y.impl&%15.tr2_inductive. pre! post!) (test_crate!Y.impl&%15.invariant.?
     (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!Y.impl&%15.tr2_inductive. pre! post!))
   :qid internal_ens__test_crate!Y.impl&__15.tr2_inductive._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__15.tr2_inductive._definition
)))

;; Function-Def test_crate::Y::State::tr2_inductive
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-persistent_option_codegen/test.rs:92:5: 92:44 (#0)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!Y.State.)
 (declare-const post! test_crate!Y.State.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%test_crate!Y.State. pre!) TYPE%test_crate!Y.State.)
 )
 (assert
  (has_type (Poly%test_crate!Y.State. post!) TYPE%test_crate!Y.State.)
 )
 (assert
  (and
   (test_crate!Y.impl&%15.invariant.? (Poly%test_crate!Y.State. pre!))
   (test_crate!Y.impl&%15.tr2_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
     post!
 ))))
 ;; could not show invariant `the_inv` on the `post` state
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%test_crate!Y.impl&%15.lemma_msg_the_inv. post!)
    )
    (=>
     (ens%test_crate!Y.impl&%15.lemma_msg_the_inv. post!)
     (=>
      %%location_label%%1
      (test_crate!Y.impl&%15.invariant.? (Poly%test_crate!Y.State. post!))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::Y::State::tr2_asserts
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-persistent_option_codegen/test.rs:35:1: 96:3 (#42)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!Y.State.)
 (declare-const tmp%1 Bool)
 (declare-const update_tmp_c@ core!option.Option.)
 (declare-const update_tmp_d@ core!option.Option.)
 (declare-const update_tmp_c$1@ core!option.Option.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%test_crate!Y.State. pre!) TYPE%test_crate!Y.State.)
 )
 ;; unable to prove inherent safety condition: if the previous value and the newly added values are both Some(_), then their values must agree
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (test_crate!Y.impl&%15.invariant.? (Poly%test_crate!Y.State. pre!))
    (=>
     (= update_tmp_c@ (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. (Poly%test_crate!Y.State.
         pre!
     ))))
     (=>
      (= update_tmp_d@ (test_crate!Y.State./State/d (%Poly%test_crate!Y.State. (Poly%test_crate!Y.State.
          pre!
      ))))
      (=>
       (= tmp%1 (=>
         (and
          (is-core!option.Option./Some update_tmp_c@)
          (is-core!option.Option./Some (core!option.Option./Some (I 3)))
         )
         (= (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option. update_tmp_c@)))
          (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option. (core!option.Option./Some
              (I 3)
       )))))))
       (=>
        %%location_label%%0
        (req%vstd!state_machine_internal.assert_general_add_persistent_option. tmp%1)
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::Y::State::tr3_inductive
(declare-fun req%test_crate!Y.impl&%15.tr3_inductive. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (req%test_crate!Y.impl&%15.tr3_inductive. pre! post!) (=>
     %%global_location_label%%5
     (and
      (test_crate!Y.impl&%15.invariant.? (Poly%test_crate!Y.State. pre!))
      (test_crate!Y.impl&%15.tr3_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
   )))))
   :pattern ((req%test_crate!Y.impl&%15.tr3_inductive. pre! post!))
   :qid internal_req__test_crate!Y.impl&__15.tr3_inductive._definition
   :skolemid skolem_internal_req__test_crate!Y.impl&__15.tr3_inductive._definition
)))
(declare-fun ens%test_crate!Y.impl&%15.tr3_inductive. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!Y.impl&%15.tr3_inductive. pre! post!) (test_crate!Y.impl&%15.invariant.?
     (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!Y.impl&%15.tr3_inductive. pre! post!))
   :qid internal_ens__test_crate!Y.impl&__15.tr3_inductive._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__15.tr3_inductive._definition
)))

;; Function-Def test_crate::Y::State::tr3_inductive
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-persistent_option_codegen/test.rs:95:5: 95:44 (#0)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!Y.State.)
 (declare-const post! test_crate!Y.State.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%test_crate!Y.State. pre!) TYPE%test_crate!Y.State.)
 )
 (assert
  (has_type (Poly%test_crate!Y.State. post!) TYPE%test_crate!Y.State.)
 )
 (assert
  (and
   (test_crate!Y.impl&%15.invariant.? (Poly%test_crate!Y.State. pre!))
   (test_crate!Y.impl&%15.tr3_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
     post!
 ))))
 ;; could not show invariant `the_inv` on the `post` state
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%test_crate!Y.impl&%15.lemma_msg_the_inv. post!)
    )
    (=>
     (ens%test_crate!Y.impl&%15.lemma_msg_the_inv. post!)
     (=>
      %%location_label%%1
      (test_crate!Y.impl&%15.invariant.? (Poly%test_crate!Y.State. post!))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::Y::Instance::initialize
(declare-fun ens%test_crate!Y.impl&%12.initialize. (Int tuple%3.) Bool)
(assert
 (forall ((no%param Int) (tmp_tuple! tuple%3.)) (!
   (= (ens%test_crate!Y.impl&%12.initialize. no%param tmp_tuple!) (and
     (has_type (Poly%tuple%3. tmp_tuple!) (TYPE%tuple%3. (TRACKED $) TYPE%test_crate!Y.Instance.
       (TRACKED $) (TYPE%core!option.Option. $ TYPE%test_crate!Y.c.) (TRACKED $) (TYPE%core!option.Option.
        $ TYPE%test_crate!Y.d.
     )))
     (let
      ((instance$ (%Poly%test_crate!Y.Instance. (tuple%3./tuple%3/0 (%Poly%tuple%3. (Poly%tuple%3.
            tmp_tuple!
      ))))))
      (let
       ((param_token_c$ (%Poly%core!option.Option. (tuple%3./tuple%3/1 (%Poly%tuple%3. (Poly%tuple%3.
             tmp_tuple!
       ))))))
       (let
        ((param_token_d$ (%Poly%core!option.Option. (tuple%3./tuple%3/2 (%Poly%tuple%3. (Poly%tuple%3.
              tmp_tuple!
        ))))))
        (let
         ((instance$1 instance$))
         (let
          ((param_token_c$1 param_token_c$))
          (let
           ((param_token_d$1 param_token_d$))
           (and
            (vstd!tokens.option_value_eq_option_token.? $ INT $ TYPE%test_crate!Y.c. (Poly%core!option.Option.
              core!option.Option./None
             ) (Poly%core!option.Option. param_token_c$1) (Poly%vstd!tokens.InstanceId. (test_crate!Y.impl&%12.id.?
               (Poly%test_crate!Y.Instance. instance$1)
            )))
            (vstd!tokens.option_value_eq_option_token.? $ INT $ TYPE%test_crate!Y.d. (Poly%core!option.Option.
              (core!option.Option./Some (I 7))
             ) (Poly%core!option.Option. param_token_d$1) (Poly%vstd!tokens.InstanceId. (test_crate!Y.impl&%12.id.?
               (Poly%test_crate!Y.Instance. instance$1)
   ))))))))))))
   :pattern ((ens%test_crate!Y.impl&%12.initialize. no%param tmp_tuple!))
   :qid internal_ens__test_crate!Y.impl&__12.initialize._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__12.initialize._definition
)))

;; Function-Specs test_crate::Y::Instance::tr1
(declare-fun req%test_crate!Y.impl&%12.tr1. (test_crate!Y.Instance. test_crate!Y.d.)
 Bool
)
(declare-const %%global_location_label%%6 Bool)
(declare-const %%global_location_label%%7 Bool)
(assert
 (forall ((self! test_crate!Y.Instance.) (param_token_0_d! test_crate!Y.d.)) (!
   (= (req%test_crate!Y.impl&%12.tr1. self! param_token_0_d!) (and
     (=>
      %%global_location_label%%6
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.d.
         $ INT (Poly%test_crate!Y.d. param_token_0_d!)
        )
       ) (test_crate!Y.impl&%12.id.? (Poly%test_crate!Y.Instance. self!))
     ))
     (=>
      %%global_location_label%%7
      (= (%I (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.d. $ INT (Poly%test_crate!Y.d.
          param_token_0_d!
        ))
       ) 7
   ))))
   :pattern ((req%test_crate!Y.impl&%12.tr1. self! param_token_0_d!))
   :qid internal_req__test_crate!Y.impl&__12.tr1._definition
   :skolemid skolem_internal_req__test_crate!Y.impl&__12.tr1._definition
)))
(declare-fun ens%test_crate!Y.impl&%12.tr1. (test_crate!Y.Instance. test_crate!Y.d.
  test_crate!Y.c.
 ) Bool
)
(assert
 (forall ((self! test_crate!Y.Instance.) (param_token_0_d! test_crate!Y.d.) (param_token_1_c!
    test_crate!Y.c.
   )
  ) (!
   (= (ens%test_crate!Y.impl&%12.tr1. self! param_token_0_d! param_token_1_c!) (and
     (has_type (Poly%test_crate!Y.c. param_token_1_c!) TYPE%test_crate!Y.c.)
     (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.c.
        $ INT (Poly%test_crate!Y.c. param_token_1_c!)
       )
      ) (test_crate!Y.impl&%12.id.? (Poly%test_crate!Y.Instance. self!))
     )
     (= (%I (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.c. $ INT (Poly%test_crate!Y.c.
         param_token_1_c!
       ))
      ) 3
   )))
   :pattern ((ens%test_crate!Y.impl&%12.tr1. self! param_token_0_d! param_token_1_c!))
   :qid internal_ens__test_crate!Y.impl&__12.tr1._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__12.tr1._definition
)))

;; Function-Specs test_crate::Y::Instance::tr2
(declare-fun ens%test_crate!Y.impl&%12.tr2. (test_crate!Y.Instance. core!option.Option.)
 Bool
)
(assert
 (forall ((self! test_crate!Y.Instance.) (param_token_0_c! core!option.Option.)) (!
   (= (ens%test_crate!Y.impl&%12.tr2. self! param_token_0_c!) (and
     (has_type (Poly%core!option.Option. param_token_0_c!) (TYPE%core!option.Option. $ TYPE%test_crate!Y.c.))
     (vstd!tokens.option_value_eq_option_token.? $ INT $ TYPE%test_crate!Y.c. (Poly%core!option.Option.
       (core!option.Option./Some (I 3))
      ) (Poly%core!option.Option. param_token_0_c!) (Poly%vstd!tokens.InstanceId. (test_crate!Y.impl&%12.id.?
        (Poly%test_crate!Y.Instance. self!)
   )))))
   :pattern ((ens%test_crate!Y.impl&%12.tr2. self! param_token_0_c!))
   :qid internal_ens__test_crate!Y.impl&__12.tr2._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__12.tr2._definition
)))

;; Function-Specs test_crate::Y::Instance::tr3
(declare-fun req%test_crate!Y.impl&%12.tr3. (test_crate!Y.Instance. core!option.Option.)
 Bool
)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((self! test_crate!Y.Instance.) (param_token_0_c! core!option.Option.)) (!
   (= (req%test_crate!Y.impl&%12.tr3. self! param_token_0_c!) (=>
     %%global_location_label%%8
     (vstd!tokens.option_value_le_option_token.? $ INT $ TYPE%test_crate!Y.c. (Poly%core!option.Option.
       (core!option.Option./Some (I 3))
      ) (Poly%core!option.Option. param_token_0_c!) (Poly%vstd!tokens.InstanceId. (test_crate!Y.impl&%12.id.?
        (Poly%test_crate!Y.Instance. self!)
   )))))
   :pattern ((req%test_crate!Y.impl&%12.tr3. self! param_token_0_c!))
   :qid internal_req__test_crate!Y.impl&__12.tr3._definition
   :skolemid skolem_internal_req__test_crate!Y.impl&__12.tr3._definition
)))
