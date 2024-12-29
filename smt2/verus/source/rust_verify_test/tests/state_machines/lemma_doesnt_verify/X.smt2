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

;; MODULE 'module X'

;; Fuel
(declare-const fuel%vstd!std_specs.option.impl&%0.is_Some. FuelId)
(declare-const fuel%vstd!std_specs.option.impl&%0.get_Some_0. FuelId)
(declare-const fuel%vstd!std_specs.option.is_some. FuelId)
(declare-const fuel%vstd!std_specs.option.is_none. FuelId)
(declare-const fuel%vstd!std_specs.option.spec_unwrap. FuelId)
(declare-const fuel%test_crate!X.impl&%0.arrow_tr_0. FuelId)
(declare-const fuel%test_crate!X.impl&%0.arrow_dummy_to_use_type_params_0. FuelId)
(declare-const fuel%test_crate!X.impl&%1.is_tr. FuelId)
(declare-const fuel%test_crate!X.impl&%1.get_tr_0. FuelId)
(declare-const fuel%test_crate!X.impl&%1.is_dummy_to_use_type_params. FuelId)
(declare-const fuel%test_crate!X.impl&%1.get_dummy_to_use_type_params_0. FuelId)
(declare-const fuel%test_crate!X.impl&%2.arrow_0. FuelId)
(declare-const fuel%test_crate!X.impl&%2.arrow_dummy_to_use_type_params_0. FuelId)
(declare-const fuel%test_crate!X.impl&%3.is_dummy_to_use_type_params. FuelId)
(declare-const fuel%test_crate!X.impl&%3.get_dummy_to_use_type_params_0. FuelId)
(declare-const fuel%test_crate!X.impl&%10.tr. FuelId)
(declare-const fuel%test_crate!X.impl&%10.tr_strong. FuelId)
(declare-const fuel%test_crate!X.impl&%10.tr_enabled. FuelId)
(declare-const fuel%test_crate!X.impl&%10.next_by. FuelId)
(declare-const fuel%test_crate!X.impl&%10.next. FuelId)
(declare-const fuel%test_crate!X.impl&%10.next_strong_by. FuelId)
(declare-const fuel%test_crate!X.impl&%10.next_strong. FuelId)
(declare-const fuel%test_crate!X.impl&%10.init_by. FuelId)
(declare-const fuel%test_crate!X.impl&%10.init. FuelId)
(declare-const fuel%test_crate!X.impl&%10.invariant. FuelId)
(declare-const fuel%test_crate!X.impl&%10.the_inv. FuelId)
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
  fuel%test_crate!X.impl&%0.arrow_tr_0. fuel%test_crate!X.impl&%0.arrow_dummy_to_use_type_params_0.
  fuel%test_crate!X.impl&%1.is_tr. fuel%test_crate!X.impl&%1.get_tr_0. fuel%test_crate!X.impl&%1.is_dummy_to_use_type_params.
  fuel%test_crate!X.impl&%1.get_dummy_to_use_type_params_0. fuel%test_crate!X.impl&%2.arrow_0.
  fuel%test_crate!X.impl&%2.arrow_dummy_to_use_type_params_0. fuel%test_crate!X.impl&%3.is_dummy_to_use_type_params.
  fuel%test_crate!X.impl&%3.get_dummy_to_use_type_params_0. fuel%test_crate!X.impl&%10.tr.
  fuel%test_crate!X.impl&%10.tr_strong. fuel%test_crate!X.impl&%10.tr_enabled. fuel%test_crate!X.impl&%10.next_by.
  fuel%test_crate!X.impl&%10.next. fuel%test_crate!X.impl&%10.next_strong_by. fuel%test_crate!X.impl&%10.next_strong.
  fuel%test_crate!X.impl&%10.init_by. fuel%test_crate!X.impl&%10.init. fuel%test_crate!X.impl&%10.invariant.
  fuel%test_crate!X.impl&%10.the_inv. fuel%vstd!array.group_array_axioms. fuel%vstd!map.group_map_axioms.
  fuel%vstd!multiset.group_multiset_axioms. fuel%vstd!raw_ptr.group_raw_ptr_axioms.
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
(declare-sort vstd!state_machine_internal.NoCopy. 0)
(declare-sort vstd!state_machine_internal.SyncSendIfSyncSend<tuple%0.>. 0)
(declare-datatypes ((core!option.Option. 0) (vstd!tokens.InstanceId. 0) (test_crate!X.State.
   0
  ) (test_crate!X.Step. 0) (test_crate!X.Config. 0) (test_crate!X.Instance. 0) (test_crate!X.t.
   0
  ) (tuple%0. 0) (tuple%1. 0)
 ) (((core!option.Option./None) (core!option.Option./Some (core!option.Option./Some/?0
     Poly
   ))
  ) ((vstd!tokens.InstanceId./InstanceId (vstd!tokens.InstanceId./InstanceId/?0 Int)))
  ((test_crate!X.State./State (test_crate!X.State./State/?t Int))) ((test_crate!X.Step./tr
    (test_crate!X.Step./tr/?0 Int)
   ) (test_crate!X.Step./dummy_to_use_type_params (test_crate!X.Step./dummy_to_use_type_params/?0
     test_crate!X.State.
   ))
  ) ((test_crate!X.Config./dummy_to_use_type_params (test_crate!X.Config./dummy_to_use_type_params/?0
     test_crate!X.State.
   ))
  ) ((test_crate!X.Instance./Instance (test_crate!X.Instance./Instance/?send_sync vstd!state_machine_internal.SyncSendIfSyncSend<tuple%0.>.)
    (test_crate!X.Instance./Instance/?state core!option.Option.) (test_crate!X.Instance./Instance/?location
     Int
   ))
  ) ((test_crate!X.t./t (test_crate!X.t./t/?dummy_instance test_crate!X.Instance.) (test_crate!X.t./t/?no_copy
     vstd!state_machine_internal.NoCopy.
   ))
  ) ((tuple%0./tuple%0)) ((tuple%1./tuple%1 (tuple%1./tuple%1/?0 Poly)))
))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun vstd!tokens.InstanceId./InstanceId/0 (vstd!tokens.InstanceId.) Int)
(declare-fun test_crate!X.State./State/t (test_crate!X.State.) Int)
(declare-fun test_crate!X.Step./tr/0 (test_crate!X.Step.) Int)
(declare-fun test_crate!X.Step./dummy_to_use_type_params/0 (test_crate!X.Step.) test_crate!X.State.)
(declare-fun test_crate!X.Config./dummy_to_use_type_params/0 (test_crate!X.Config.)
 test_crate!X.State.
)
(declare-fun test_crate!X.Instance./Instance/send_sync (test_crate!X.Instance.) vstd!state_machine_internal.SyncSendIfSyncSend<tuple%0.>.)
(declare-fun test_crate!X.Instance./Instance/state (test_crate!X.Instance.) core!option.Option.)
(declare-fun test_crate!X.Instance./Instance/location (test_crate!X.Instance.) Int)
(declare-fun test_crate!X.t./t/dummy_instance (test_crate!X.t.) test_crate!X.Instance.)
(declare-fun test_crate!X.t./t/no_copy (test_crate!X.t.) vstd!state_machine_internal.NoCopy.)
(declare-fun tuple%1./tuple%1/0 (tuple%1.) Poly)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-fun TYPE%vstd!state_machine_internal.SyncSendIfSyncSend. (Dcr Type) Type)
(declare-const TYPE%vstd!state_machine_internal.NoCopy. Type)
(declare-const TYPE%vstd!tokens.InstanceId. Type)
(declare-const TYPE%test_crate!X.State. Type)
(declare-const TYPE%test_crate!X.Step. Type)
(declare-const TYPE%test_crate!X.Config. Type)
(declare-const TYPE%test_crate!X.Instance. Type)
(declare-const TYPE%test_crate!X.t. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%1. (Dcr Type) Type)
(declare-fun FNDEF%core!clone.Clone.clone. (Dcr Type) Type)
(declare-fun Poly%vstd!state_machine_internal.NoCopy. (vstd!state_machine_internal.NoCopy.)
 Poly
)
(declare-fun %Poly%vstd!state_machine_internal.NoCopy. (Poly) vstd!state_machine_internal.NoCopy.)
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
(declare-fun Poly%test_crate!X.State. (test_crate!X.State.) Poly)
(declare-fun %Poly%test_crate!X.State. (Poly) test_crate!X.State.)
(declare-fun Poly%test_crate!X.Step. (test_crate!X.Step.) Poly)
(declare-fun %Poly%test_crate!X.Step. (Poly) test_crate!X.Step.)
(declare-fun Poly%test_crate!X.Config. (test_crate!X.Config.) Poly)
(declare-fun %Poly%test_crate!X.Config. (Poly) test_crate!X.Config.)
(declare-fun Poly%test_crate!X.Instance. (test_crate!X.Instance.) Poly)
(declare-fun %Poly%test_crate!X.Instance. (Poly) test_crate!X.Instance.)
(declare-fun Poly%test_crate!X.t. (test_crate!X.t.) Poly)
(declare-fun %Poly%test_crate!X.t. (Poly) test_crate!X.t.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%1. (tuple%1.) Poly)
(declare-fun %Poly%tuple%1. (Poly) tuple%1.)
(assert
 (forall ((x vstd!state_machine_internal.NoCopy.)) (!
   (= x (%Poly%vstd!state_machine_internal.NoCopy. (Poly%vstd!state_machine_internal.NoCopy.
      x
   )))
   :pattern ((Poly%vstd!state_machine_internal.NoCopy. x))
   :qid internal_vstd__state_machine_internal__NoCopy_box_axiom_definition
   :skolemid skolem_internal_vstd__state_machine_internal__NoCopy_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd!state_machine_internal.NoCopy.)
    (= x (Poly%vstd!state_machine_internal.NoCopy. (%Poly%vstd!state_machine_internal.NoCopy.
       x
   ))))
   :pattern ((has_type x TYPE%vstd!state_machine_internal.NoCopy.))
   :qid internal_vstd__state_machine_internal__NoCopy_unbox_axiom_definition
   :skolemid skolem_internal_vstd__state_machine_internal__NoCopy_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!state_machine_internal.NoCopy.)) (!
   (has_type (Poly%vstd!state_machine_internal.NoCopy. x) TYPE%vstd!state_machine_internal.NoCopy.)
   :pattern ((has_type (Poly%vstd!state_machine_internal.NoCopy. x) TYPE%vstd!state_machine_internal.NoCopy.))
   :qid internal_vstd__state_machine_internal__NoCopy_has_type_always_definition
   :skolemid skolem_internal_vstd__state_machine_internal__NoCopy_has_type_always_definition
)))
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
 (forall ((x test_crate!X.State.)) (!
   (= x (%Poly%test_crate!X.State. (Poly%test_crate!X.State. x)))
   :pattern ((Poly%test_crate!X.State. x))
   :qid internal_test_crate__X__State_box_axiom_definition
   :skolemid skolem_internal_test_crate__X__State_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!X.State.)
    (= x (Poly%test_crate!X.State. (%Poly%test_crate!X.State. x)))
   )
   :pattern ((has_type x TYPE%test_crate!X.State.))
   :qid internal_test_crate__X__State_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__X__State_unbox_axiom_definition
)))
(assert
 (forall ((x test_crate!X.State.)) (!
   (= (test_crate!X.State./State/t x) (test_crate!X.State./State/?t x))
   :pattern ((test_crate!X.State./State/t x))
   :qid internal_test_crate!X.State./State/t_accessor_definition
   :skolemid skolem_internal_test_crate!X.State./State/t_accessor_definition
)))
(assert
 (forall ((x test_crate!X.State.)) (!
   (has_type (Poly%test_crate!X.State. x) TYPE%test_crate!X.State.)
   :pattern ((has_type (Poly%test_crate!X.State. x) TYPE%test_crate!X.State.))
   :qid internal_test_crate__X__State_has_type_always_definition
   :skolemid skolem_internal_test_crate__X__State_has_type_always_definition
)))
(assert
 (forall ((x test_crate!X.Step.)) (!
   (= x (%Poly%test_crate!X.Step. (Poly%test_crate!X.Step. x)))
   :pattern ((Poly%test_crate!X.Step. x))
   :qid internal_test_crate__X__Step_box_axiom_definition
   :skolemid skolem_internal_test_crate__X__Step_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!X.Step.)
    (= x (Poly%test_crate!X.Step. (%Poly%test_crate!X.Step. x)))
   )
   :pattern ((has_type x TYPE%test_crate!X.Step.))
   :qid internal_test_crate__X__Step_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__X__Step_unbox_axiom_definition
)))
(assert
 (forall ((x test_crate!X.Step.)) (!
   (= (test_crate!X.Step./tr/0 x) (test_crate!X.Step./tr/?0 x))
   :pattern ((test_crate!X.Step./tr/0 x))
   :qid internal_test_crate!X.Step./tr/0_accessor_definition
   :skolemid skolem_internal_test_crate!X.Step./tr/0_accessor_definition
)))
(assert
 (forall ((x test_crate!X.Step.)) (!
   (= (test_crate!X.Step./dummy_to_use_type_params/0 x) (test_crate!X.Step./dummy_to_use_type_params/?0
     x
   ))
   :pattern ((test_crate!X.Step./dummy_to_use_type_params/0 x))
   :qid internal_test_crate!X.Step./dummy_to_use_type_params/0_accessor_definition
   :skolemid skolem_internal_test_crate!X.Step./dummy_to_use_type_params/0_accessor_definition
)))
(assert
 (forall ((x test_crate!X.Step.)) (!
   (has_type (Poly%test_crate!X.Step. x) TYPE%test_crate!X.Step.)
   :pattern ((has_type (Poly%test_crate!X.Step. x) TYPE%test_crate!X.Step.))
   :qid internal_test_crate__X__Step_has_type_always_definition
   :skolemid skolem_internal_test_crate__X__Step_has_type_always_definition
)))
(assert
 (forall ((x test_crate!X.Config.)) (!
   (= x (%Poly%test_crate!X.Config. (Poly%test_crate!X.Config. x)))
   :pattern ((Poly%test_crate!X.Config. x))
   :qid internal_test_crate__X__Config_box_axiom_definition
   :skolemid skolem_internal_test_crate__X__Config_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!X.Config.)
    (= x (Poly%test_crate!X.Config. (%Poly%test_crate!X.Config. x)))
   )
   :pattern ((has_type x TYPE%test_crate!X.Config.))
   :qid internal_test_crate__X__Config_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__X__Config_unbox_axiom_definition
)))
(assert
 (forall ((x test_crate!X.Config.)) (!
   (= (test_crate!X.Config./dummy_to_use_type_params/0 x) (test_crate!X.Config./dummy_to_use_type_params/?0
     x
   ))
   :pattern ((test_crate!X.Config./dummy_to_use_type_params/0 x))
   :qid internal_test_crate!X.Config./dummy_to_use_type_params/0_accessor_definition
   :skolemid skolem_internal_test_crate!X.Config./dummy_to_use_type_params/0_accessor_definition
)))
(assert
 (forall ((x test_crate!X.Config.)) (!
   (has_type (Poly%test_crate!X.Config. x) TYPE%test_crate!X.Config.)
   :pattern ((has_type (Poly%test_crate!X.Config. x) TYPE%test_crate!X.Config.))
   :qid internal_test_crate__X__Config_has_type_always_definition
   :skolemid skolem_internal_test_crate__X__Config_has_type_always_definition
)))
(assert
 (forall ((x test_crate!X.Instance.)) (!
   (= x (%Poly%test_crate!X.Instance. (Poly%test_crate!X.Instance. x)))
   :pattern ((Poly%test_crate!X.Instance. x))
   :qid internal_test_crate__X__Instance_box_axiom_definition
   :skolemid skolem_internal_test_crate__X__Instance_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!X.Instance.)
    (= x (Poly%test_crate!X.Instance. (%Poly%test_crate!X.Instance. x)))
   )
   :pattern ((has_type x TYPE%test_crate!X.Instance.))
   :qid internal_test_crate__X__Instance_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__X__Instance_unbox_axiom_definition
)))
(assert
 (forall ((_send_sync! vstd!state_machine_internal.SyncSendIfSyncSend<tuple%0.>.) (_state!
    core!option.Option.
   ) (_location! Int)
  ) (!
   (=>
    (has_type (Poly%core!option.Option. _state!) (TYPE%core!option.Option. (GHOST $) TYPE%test_crate!X.State.))
    (has_type (Poly%test_crate!X.Instance. (test_crate!X.Instance./Instance _send_sync!
       _state! _location!
      )
     ) TYPE%test_crate!X.Instance.
   ))
   :pattern ((has_type (Poly%test_crate!X.Instance. (test_crate!X.Instance./Instance _send_sync!
       _state! _location!
      )
     ) TYPE%test_crate!X.Instance.
   ))
   :qid internal_test_crate!X.Instance./Instance_constructor_definition
   :skolemid skolem_internal_test_crate!X.Instance./Instance_constructor_definition
)))
(assert
 (forall ((x test_crate!X.Instance.)) (!
   (= (test_crate!X.Instance./Instance/send_sync x) (test_crate!X.Instance./Instance/?send_sync
     x
   ))
   :pattern ((test_crate!X.Instance./Instance/send_sync x))
   :qid internal_test_crate!X.Instance./Instance/send_sync_accessor_definition
   :skolemid skolem_internal_test_crate!X.Instance./Instance/send_sync_accessor_definition
)))
(assert
 (forall ((x test_crate!X.Instance.)) (!
   (= (test_crate!X.Instance./Instance/state x) (test_crate!X.Instance./Instance/?state
     x
   ))
   :pattern ((test_crate!X.Instance./Instance/state x))
   :qid internal_test_crate!X.Instance./Instance/state_accessor_definition
   :skolemid skolem_internal_test_crate!X.Instance./Instance/state_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!X.Instance.)
    (has_type (Poly%core!option.Option. (test_crate!X.Instance./Instance/state (%Poly%test_crate!X.Instance.
        x
      ))
     ) (TYPE%core!option.Option. (GHOST $) TYPE%test_crate!X.State.)
   ))
   :pattern ((test_crate!X.Instance./Instance/state (%Poly%test_crate!X.Instance. x))
    (has_type x TYPE%test_crate!X.Instance.)
   )
   :qid internal_test_crate!X.Instance./Instance/state_invariant_definition
   :skolemid skolem_internal_test_crate!X.Instance./Instance/state_invariant_definition
)))
(assert
 (forall ((x test_crate!X.Instance.)) (!
   (= (test_crate!X.Instance./Instance/location x) (test_crate!X.Instance./Instance/?location
     x
   ))
   :pattern ((test_crate!X.Instance./Instance/location x))
   :qid internal_test_crate!X.Instance./Instance/location_accessor_definition
   :skolemid skolem_internal_test_crate!X.Instance./Instance/location_accessor_definition
)))
(assert
 (forall ((x test_crate!X.t.)) (!
   (= x (%Poly%test_crate!X.t. (Poly%test_crate!X.t. x)))
   :pattern ((Poly%test_crate!X.t. x))
   :qid internal_test_crate__X__t_box_axiom_definition
   :skolemid skolem_internal_test_crate__X__t_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!X.t.)
    (= x (Poly%test_crate!X.t. (%Poly%test_crate!X.t. x)))
   )
   :pattern ((has_type x TYPE%test_crate!X.t.))
   :qid internal_test_crate__X__t_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__X__t_unbox_axiom_definition
)))
(assert
 (forall ((_dummy_instance! test_crate!X.Instance.) (_no_copy! vstd!state_machine_internal.NoCopy.))
  (!
   (=>
    (has_type (Poly%test_crate!X.Instance. _dummy_instance!) TYPE%test_crate!X.Instance.)
    (has_type (Poly%test_crate!X.t. (test_crate!X.t./t _dummy_instance! _no_copy!)) TYPE%test_crate!X.t.)
   )
   :pattern ((has_type (Poly%test_crate!X.t. (test_crate!X.t./t _dummy_instance! _no_copy!))
     TYPE%test_crate!X.t.
   ))
   :qid internal_test_crate!X.t./t_constructor_definition
   :skolemid skolem_internal_test_crate!X.t./t_constructor_definition
)))
(assert
 (forall ((x test_crate!X.t.)) (!
   (= (test_crate!X.t./t/dummy_instance x) (test_crate!X.t./t/?dummy_instance x))
   :pattern ((test_crate!X.t./t/dummy_instance x))
   :qid internal_test_crate!X.t./t/dummy_instance_accessor_definition
   :skolemid skolem_internal_test_crate!X.t./t/dummy_instance_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!X.t.)
    (has_type (Poly%test_crate!X.Instance. (test_crate!X.t./t/dummy_instance (%Poly%test_crate!X.t.
        x
      ))
     ) TYPE%test_crate!X.Instance.
   ))
   :pattern ((test_crate!X.t./t/dummy_instance (%Poly%test_crate!X.t. x)) (has_type x
     TYPE%test_crate!X.t.
   ))
   :qid internal_test_crate!X.t./t/dummy_instance_invariant_definition
   :skolemid skolem_internal_test_crate!X.t./t/dummy_instance_invariant_definition
)))
(assert
 (forall ((x test_crate!X.t.)) (!
   (= (test_crate!X.t./t/no_copy x) (test_crate!X.t./t/?no_copy x))
   :pattern ((test_crate!X.t./t/no_copy x))
   :qid internal_test_crate!X.t./t/no_copy_accessor_definition
   :skolemid skolem_internal_test_crate!X.t./t/no_copy_accessor_definition
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

;; Traits
(declare-fun tr_bound%core!clone.Clone. (Dcr Type) Bool)
(declare-fun tr_bound%core!alloc.Allocator. (Dcr Type) Bool)
(declare-fun tr_bound%vstd!std_specs.option.OptionAdditionalFns. (Dcr Type Dcr Type)
 Bool
)
(declare-fun tr_bound%vstd!tokens.ValueToken. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%vstd!tokens.UniqueValueToken. (Dcr Type Dcr Type) Bool)
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
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type)) (!
   (=>
    (tr_bound%vstd!tokens.UniqueValueToken. Self%&. Self%& Value&. Value&)
    (tr_bound%vstd!tokens.ValueToken. Self%&. Self%& Value&. Value&)
   )
   :pattern ((tr_bound%vstd!tokens.UniqueValueToken. Self%&. Self%& Value&. Value&))
   :qid internal_vstd__tokens__UniqueValueToken_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__tokens__UniqueValueToken_trait_type_bounds_definition
)))

;; Function-Decl vstd::tokens::ValueToken::instance_id
(declare-fun vstd!tokens.ValueToken.instance_id.? (Dcr Type Dcr Type Poly) Poly)
(declare-fun vstd!tokens.ValueToken.instance_id%default%.? (Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl vstd::tokens::ValueToken::value
(declare-fun vstd!tokens.ValueToken.value.? (Dcr Type Dcr Type Poly) Poly)
(declare-fun vstd!tokens.ValueToken.value%default%.? (Dcr Type Dcr Type Poly) Poly)

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

;; Function-Decl test_crate::X::State::tr
(declare-fun test_crate!X.impl&%10.tr.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::X::State::next_by
(declare-fun test_crate!X.impl&%10.next_by.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::X::State::next
(declare-fun test_crate!X.impl&%10.next.? (Poly Poly) Bool)

;; Function-Decl test_crate::X::Instance::id
(declare-fun test_crate!X.impl&%7.id.? (Poly) vstd!tokens.InstanceId.)

;; Function-Decl test_crate::X::State::the_inv
(declare-fun test_crate!X.impl&%10.the_inv.? (Poly) Bool)

;; Function-Decl test_crate::X::Step::arrow_tr_0
(declare-fun test_crate!X.impl&%0.arrow_tr_0.? (Poly) Int)

;; Function-Decl test_crate::X::Step::arrow_dummy_to_use_type_params_0
(declare-fun test_crate!X.impl&%0.arrow_dummy_to_use_type_params_0.? (Poly) test_crate!X.State.)

;; Function-Decl test_crate::X::Step::is_tr
(declare-fun test_crate!X.impl&%1.is_tr.? (Poly) Bool)

;; Function-Decl test_crate::X::Step::get_tr_0
(declare-fun test_crate!X.impl&%1.get_tr_0.? (Poly) Int)

;; Function-Decl test_crate::X::Step::is_dummy_to_use_type_params
(declare-fun test_crate!X.impl&%1.is_dummy_to_use_type_params.? (Poly) Bool)

;; Function-Decl test_crate::X::Step::get_dummy_to_use_type_params_0
(declare-fun test_crate!X.impl&%1.get_dummy_to_use_type_params_0.? (Poly) test_crate!X.State.)

;; Function-Decl test_crate::X::Config::arrow_0
(declare-fun test_crate!X.impl&%2.arrow_0.? (Poly) test_crate!X.State.)

;; Function-Decl test_crate::X::Config::arrow_dummy_to_use_type_params_0
(declare-fun test_crate!X.impl&%2.arrow_dummy_to_use_type_params_0.? (Poly) test_crate!X.State.)

;; Function-Decl test_crate::X::Config::is_dummy_to_use_type_params
(declare-fun test_crate!X.impl&%3.is_dummy_to_use_type_params.? (Poly) Bool)

;; Function-Decl test_crate::X::Config::get_dummy_to_use_type_params_0
(declare-fun test_crate!X.impl&%3.get_dummy_to_use_type_params_0.? (Poly) test_crate!X.State.)

;; Function-Decl test_crate::X::State::tr_strong
(declare-fun test_crate!X.impl&%10.tr_strong.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::X::State::tr_enabled
(declare-fun test_crate!X.impl&%10.tr_enabled.? (Poly Poly) Bool)

;; Function-Decl test_crate::X::State::next_strong_by
(declare-fun test_crate!X.impl&%10.next_strong_by.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::X::State::next_strong
(declare-fun test_crate!X.impl&%10.next_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::X::State::init_by
(declare-fun test_crate!X.impl&%10.init_by.? (Poly Poly) Bool)

;; Function-Decl test_crate::X::State::init
(declare-fun test_crate!X.impl&%10.init.? (Poly) Bool)

;; Function-Decl test_crate::X::State::invariant
(declare-fun test_crate!X.impl&%10.invariant.? (Poly) Bool)

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
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type) (self! Poly) (other!
    Poly
   )
  ) (!
   (= (req%vstd!tokens.ValueToken.agree. Self%&. Self%& Value&. Value& self! other!)
    (=>
     %%global_location_label%%0
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

;; Function-Specs vstd::tokens::UniqueValueToken::unique
(declare-fun ens%vstd!tokens.UniqueValueToken.unique. (Dcr Type Dcr Type Poly Poly
  Poly
 ) Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type) (pre%self! Poly) (
    self! Poly
   ) (other! Poly)
  ) (!
   (= (ens%vstd!tokens.UniqueValueToken.unique. Self%&. Self%& Value&. Value& pre%self!
     self! other!
    ) (and
     (has_type self! Self%&)
     (not (= (vstd!tokens.ValueToken.instance_id.? Self%&. Self%& Value&. Value& self!)
       (vstd!tokens.ValueToken.instance_id.? Self%&. Self%& Value&. Value& other!)
     ))
     (= self! pre%self!)
   ))
   :pattern ((ens%vstd!tokens.UniqueValueToken.unique. Self%&. Self%& Value&. Value& pre%self!
     self! other!
   ))
   :qid internal_ens__vstd!tokens.UniqueValueToken.unique._definition
   :skolemid skolem_internal_ens__vstd!tokens.UniqueValueToken.unique._definition
)))

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
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
   (= (req%vstd!std_specs.option.spec_unwrap. T&. T& option!) (=>
     %%global_location_label%%1
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

;; Function-Axioms test_crate::X::State::tr
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%10.tr.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%10.tr.)
  (forall ((pre! Poly) (post! Poly) (x! Poly)) (!
    (= (test_crate!X.impl&%10.tr.? pre! post! x!) (let
      ((update_tmp_t$ (%I x!)))
      (= (test_crate!X.State./State/t (%Poly%test_crate!X.State. post!)) update_tmp_t$)
    ))
    :pattern ((test_crate!X.impl&%10.tr.? pre! post! x!))
    :qid internal_test_crate!X.impl&__10.tr.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__10.tr.?_definition
))))

;; Function-Axioms test_crate::X::State::next_by
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%10.next_by.)
  (forall ((pre! Poly) (post! Poly) (step! Poly)) (!
    (= (test_crate!X.impl&%10.next_by.? pre! post! step!) (and
      (is-test_crate!X.Step./tr (%Poly%test_crate!X.Step. step!))
      (let
       ((x$ (test_crate!X.Step./tr/0 (%Poly%test_crate!X.Step. step!))))
       (test_crate!X.impl&%10.tr.? pre! post! (I x$))
    )))
    :pattern ((test_crate!X.impl&%10.next_by.? pre! post! step!))
    :qid internal_test_crate!X.impl&__10.next_by.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__10.next_by.?_definition
))))

;; Function-Axioms test_crate::X::State::next
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%10.next.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!X.impl&%10.next.? pre! post!) (exists ((step$ Poly)) (!
       (and
        (has_type step$ TYPE%test_crate!X.Step.)
        (test_crate!X.impl&%10.next_by.? pre! post! step$)
       )
       :pattern ((test_crate!X.impl&%10.next_by.? pre! post! step$))
       :qid user_test_crate__X__State__next_7
       :skolemid skolem_user_test_crate__X__State__next_7
    )))
    :pattern ((test_crate!X.impl&%10.next.? pre! post!))
    :qid internal_test_crate!X.impl&__10.next.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__10.next.?_definition
))))

;; Function-Specs test_crate::X::Instance::clone
(declare-fun ens%test_crate!X.impl&%7.clone. (test_crate!X.Instance. test_crate!X.Instance.)
 Bool
)
(assert
 (forall ((self! test_crate!X.Instance.) (s! test_crate!X.Instance.)) (!
   (= (ens%test_crate!X.impl&%7.clone. self! s!) (and
     (has_type (Poly%test_crate!X.Instance. s!) TYPE%test_crate!X.Instance.)
     (= self! s!)
   ))
   :pattern ((ens%test_crate!X.impl&%7.clone. self! s!))
   :qid internal_ens__test_crate!X.impl&__7.clone._definition
   :skolemid skolem_internal_ens__test_crate!X.impl&__7.clone._definition
)))

;; Function-Axioms test_crate::X::State::the_inv
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%10.the_inv.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%10.the_inv.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%10.the_inv.? self!) (= (test_crate!X.State./State/t (%Poly%test_crate!X.State.
        self!
       )
      ) 5
    ))
    :pattern ((test_crate!X.impl&%10.the_inv.? self!))
    :qid internal_test_crate!X.impl&__10.the_inv.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__10.the_inv.?_definition
))))

;; Function-Specs test_crate::X::State::lemma_msg_the_inv
(declare-fun req%test_crate!X.impl&%10.lemma_msg_the_inv. (test_crate!X.State.) Bool)
(assert
 (forall ((s! test_crate!X.State.)) (!
   (= (req%test_crate!X.impl&%10.lemma_msg_the_inv. s!) (test_crate!X.impl&%10.the_inv.?
     (Poly%test_crate!X.State. s!)
   ))
   :pattern ((req%test_crate!X.impl&%10.lemma_msg_the_inv. s!))
   :qid internal_req__test_crate!X.impl&__10.lemma_msg_the_inv._definition
   :skolemid skolem_internal_req__test_crate!X.impl&__10.lemma_msg_the_inv._definition
)))
(declare-fun ens%test_crate!X.impl&%10.lemma_msg_the_inv. (test_crate!X.State.) Bool)
(assert
 (forall ((s! test_crate!X.State.)) (!
   (= (ens%test_crate!X.impl&%10.lemma_msg_the_inv. s!) (test_crate!X.impl&%10.the_inv.?
     (Poly%test_crate!X.State. s!)
   ))
   :pattern ((ens%test_crate!X.impl&%10.lemma_msg_the_inv. s!))
   :qid internal_ens__test_crate!X.impl&__10.lemma_msg_the_inv._definition
   :skolemid skolem_internal_ens__test_crate!X.impl&__10.lemma_msg_the_inv._definition
)))

;; Function-Axioms test_crate::X::Step::arrow_tr_0
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%0.arrow_tr_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%0.arrow_tr_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%0.arrow_tr_0.? self!) (test_crate!X.Step./tr/0 (%Poly%test_crate!X.Step.
       self!
    )))
    :pattern ((test_crate!X.impl&%0.arrow_tr_0.? self!))
    :qid internal_test_crate!X.impl&__0.arrow_tr_0.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__0.arrow_tr_0.?_definition
))))

;; Function-Axioms test_crate::X::Step::arrow_dummy_to_use_type_params_0
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%0.arrow_dummy_to_use_type_params_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%0.arrow_dummy_to_use_type_params_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%0.arrow_dummy_to_use_type_params_0.? self!) (test_crate!X.Step./dummy_to_use_type_params/0
      (%Poly%test_crate!X.Step. self!)
    ))
    :pattern ((test_crate!X.impl&%0.arrow_dummy_to_use_type_params_0.? self!))
    :qid internal_test_crate!X.impl&__0.arrow_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__0.arrow_dummy_to_use_type_params_0.?_definition
))))

;; Function-Axioms test_crate::X::Step::is_tr
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%1.is_tr.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%1.is_tr.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%1.is_tr.? self!) (is-test_crate!X.Step./tr (%Poly%test_crate!X.Step.
       self!
    )))
    :pattern ((test_crate!X.impl&%1.is_tr.? self!))
    :qid internal_test_crate!X.impl&__1.is_tr.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__1.is_tr.?_definition
))))

;; Function-Axioms test_crate::X::Step::get_tr_0
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%1.get_tr_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%1.get_tr_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%1.get_tr_0.? self!) (test_crate!X.Step./tr/0 (%Poly%test_crate!X.Step.
       self!
    )))
    :pattern ((test_crate!X.impl&%1.get_tr_0.? self!))
    :qid internal_test_crate!X.impl&__1.get_tr_0.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__1.get_tr_0.?_definition
))))

;; Function-Axioms test_crate::X::Step::is_dummy_to_use_type_params
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%1.is_dummy_to_use_type_params.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%1.is_dummy_to_use_type_params.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%1.is_dummy_to_use_type_params.? self!) (is-test_crate!X.Step./dummy_to_use_type_params
      (%Poly%test_crate!X.Step. self!)
    ))
    :pattern ((test_crate!X.impl&%1.is_dummy_to_use_type_params.? self!))
    :qid internal_test_crate!X.impl&__1.is_dummy_to_use_type_params.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__1.is_dummy_to_use_type_params.?_definition
))))

;; Function-Axioms test_crate::X::Step::get_dummy_to_use_type_params_0
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%1.get_dummy_to_use_type_params_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%1.get_dummy_to_use_type_params_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%1.get_dummy_to_use_type_params_0.? self!) (test_crate!X.Step./dummy_to_use_type_params/0
      (%Poly%test_crate!X.Step. self!)
    ))
    :pattern ((test_crate!X.impl&%1.get_dummy_to_use_type_params_0.? self!))
    :qid internal_test_crate!X.impl&__1.get_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__1.get_dummy_to_use_type_params_0.?_definition
))))

;; Function-Axioms test_crate::X::Config::arrow_0
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%2.arrow_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%2.arrow_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%2.arrow_0.? self!) (test_crate!X.Config./dummy_to_use_type_params/0
      (%Poly%test_crate!X.Config. self!)
    ))
    :pattern ((test_crate!X.impl&%2.arrow_0.? self!))
    :qid internal_test_crate!X.impl&__2.arrow_0.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__2.arrow_0.?_definition
))))

;; Function-Axioms test_crate::X::Config::arrow_dummy_to_use_type_params_0
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%2.arrow_dummy_to_use_type_params_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%2.arrow_dummy_to_use_type_params_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%2.arrow_dummy_to_use_type_params_0.? self!) (test_crate!X.Config./dummy_to_use_type_params/0
      (%Poly%test_crate!X.Config. self!)
    ))
    :pattern ((test_crate!X.impl&%2.arrow_dummy_to_use_type_params_0.? self!))
    :qid internal_test_crate!X.impl&__2.arrow_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__2.arrow_dummy_to_use_type_params_0.?_definition
))))

;; Function-Axioms test_crate::X::Config::is_dummy_to_use_type_params
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%3.is_dummy_to_use_type_params.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%3.is_dummy_to_use_type_params.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%3.is_dummy_to_use_type_params.? self!) (is-test_crate!X.Config./dummy_to_use_type_params
      (%Poly%test_crate!X.Config. self!)
    ))
    :pattern ((test_crate!X.impl&%3.is_dummy_to_use_type_params.? self!))
    :qid internal_test_crate!X.impl&__3.is_dummy_to_use_type_params.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__3.is_dummy_to_use_type_params.?_definition
))))

;; Function-Axioms test_crate::X::Config::get_dummy_to_use_type_params_0
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%3.get_dummy_to_use_type_params_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%3.get_dummy_to_use_type_params_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%3.get_dummy_to_use_type_params_0.? self!) (test_crate!X.Config./dummy_to_use_type_params/0
      (%Poly%test_crate!X.Config. self!)
    ))
    :pattern ((test_crate!X.impl&%3.get_dummy_to_use_type_params_0.? self!))
    :qid internal_test_crate!X.impl&__3.get_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__3.get_dummy_to_use_type_params_0.?_definition
))))

;; Function-Axioms test_crate::X::State::tr_strong
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%10.tr_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%10.tr_strong.)
  (forall ((pre! Poly) (post! Poly) (x! Poly)) (!
    (= (test_crate!X.impl&%10.tr_strong.? pre! post! x!) (let
      ((update_tmp_t$ (%I x!)))
      (= (test_crate!X.State./State/t (%Poly%test_crate!X.State. post!)) update_tmp_t$)
    ))
    :pattern ((test_crate!X.impl&%10.tr_strong.? pre! post! x!))
    :qid internal_test_crate!X.impl&__10.tr_strong.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__10.tr_strong.?_definition
))))

;; Function-Axioms test_crate::X::State::tr_enabled
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%10.tr_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%10.tr_enabled.)
  (forall ((pre! Poly) (x! Poly)) (!
    (= (test_crate!X.impl&%10.tr_enabled.? pre! x!) true)
    :pattern ((test_crate!X.impl&%10.tr_enabled.? pre! x!))
    :qid internal_test_crate!X.impl&__10.tr_enabled.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__10.tr_enabled.?_definition
))))

;; Function-Axioms test_crate::X::State::next_strong_by
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%10.next_strong_by.)
  (forall ((pre! Poly) (post! Poly) (step! Poly)) (!
    (= (test_crate!X.impl&%10.next_strong_by.? pre! post! step!) (and
      (is-test_crate!X.Step./tr (%Poly%test_crate!X.Step. step!))
      (let
       ((x$ (test_crate!X.Step./tr/0 (%Poly%test_crate!X.Step. step!))))
       (test_crate!X.impl&%10.tr_strong.? pre! post! (I x$))
    )))
    :pattern ((test_crate!X.impl&%10.next_strong_by.? pre! post! step!))
    :qid internal_test_crate!X.impl&__10.next_strong_by.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__10.next_strong_by.?_definition
))))

;; Function-Axioms test_crate::X::State::next_strong
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%10.next_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!X.impl&%10.next_strong.? pre! post!) (exists ((step$ Poly)) (!
       (and
        (has_type step$ TYPE%test_crate!X.Step.)
        (test_crate!X.impl&%10.next_strong_by.? pre! post! step$)
       )
       :pattern ((test_crate!X.impl&%10.next_strong_by.? pre! post! step$))
       :qid user_test_crate__X__State__next_strong_8
       :skolemid skolem_user_test_crate__X__State__next_strong_8
    )))
    :pattern ((test_crate!X.impl&%10.next_strong.? pre! post!))
    :qid internal_test_crate!X.impl&__10.next_strong.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__10.next_strong.?_definition
))))

;; Function-Axioms test_crate::X::State::init_by
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%10.init_by.)
  (forall ((post! Poly) (step! Poly)) (!
    (= (test_crate!X.impl&%10.init_by.? post! step!) false)
    :pattern ((test_crate!X.impl&%10.init_by.? post! step!))
    :qid internal_test_crate!X.impl&__10.init_by.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__10.init_by.?_definition
))))

;; Function-Axioms test_crate::X::State::init
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%10.init.)
  (forall ((post! Poly)) (!
    (= (test_crate!X.impl&%10.init.? post!) (exists ((step$ Poly)) (!
       (and
        (has_type step$ TYPE%test_crate!X.Config.)
        (test_crate!X.impl&%10.init_by.? post! step$)
       )
       :pattern ((test_crate!X.impl&%10.init_by.? post! step$))
       :qid user_test_crate__X__State__init_9
       :skolemid skolem_user_test_crate__X__State__init_9
    )))
    :pattern ((test_crate!X.impl&%10.init.? post!))
    :qid internal_test_crate!X.impl&__10.init.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__10.init.?_definition
))))

;; Function-Axioms test_crate::X::State::invariant
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%10.invariant.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%10.invariant.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%10.invariant.? self!) (test_crate!X.impl&%10.the_inv.? self!))
    :pattern ((test_crate!X.impl&%10.invariant.? self!))
    :qid internal_test_crate!X.impl&__10.invariant.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__10.invariant.?_definition
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
 (tr_bound%vstd!tokens.ValueToken. $ TYPE%test_crate!X.t. $ INT)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!tokens.UniqueValueToken. $ TYPE%test_crate!X.t. $ INT)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ TYPE%test_crate!X.Instance.)
)

;; Function-Specs test_crate::X::State::lemma_tr1
(declare-fun req%test_crate!X.impl&%10.lemma_tr1. (test_crate!X.State. test_crate!X.State.
  Int
 ) Bool
)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((pre! test_crate!X.State.) (post! test_crate!X.State.) (x! Int)) (!
   (= (req%test_crate!X.impl&%10.lemma_tr1. pre! post! x!) (=>
     %%global_location_label%%2
     (and
      (test_crate!X.impl&%10.invariant.? (Poly%test_crate!X.State. pre!))
      (test_crate!X.impl&%10.tr_strong.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
        post!
       ) (I x!)
   ))))
   :pattern ((req%test_crate!X.impl&%10.lemma_tr1. pre! post! x!))
   :qid internal_req__test_crate!X.impl&__10.lemma_tr1._definition
   :skolemid skolem_internal_req__test_crate!X.impl&__10.lemma_tr1._definition
)))
(declare-fun ens%test_crate!X.impl&%10.lemma_tr1. (test_crate!X.State. test_crate!X.State.
  Int
 ) Bool
)
(assert
 (forall ((pre! test_crate!X.State.) (post! test_crate!X.State.) (x! Int)) (!
   (= (ens%test_crate!X.impl&%10.lemma_tr1. pre! post! x!) (test_crate!X.impl&%10.invariant.?
     (Poly%test_crate!X.State. post!)
   ))
   :pattern ((ens%test_crate!X.impl&%10.lemma_tr1. pre! post! x!))
   :qid internal_ens__test_crate!X.impl&__10.lemma_tr1._definition
   :skolemid skolem_internal_ens__test_crate!X.impl&__10.lemma_tr1._definition
)))

;; Function-Def test_crate::X::State::lemma_tr1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-lemma_doesnt_verify/test.rs:52:5: 52:52 (#0)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!X.State.)
 (declare-const post! test_crate!X.State.)
 (declare-const x! Int)
 (assert
  fuel_defaults
 )
 (assert
  (and
   (test_crate!X.impl&%10.invariant.? (Poly%test_crate!X.State. pre!))
   (test_crate!X.impl&%10.tr_strong.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
     post!
    ) (I x!)
 )))
 ;; could not show invariant `the_inv` on the `post` state
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%test_crate!X.impl&%10.lemma_msg_the_inv. post!)
    )
    (=>
     (ens%test_crate!X.impl&%10.lemma_msg_the_inv. post!)
     (=>
      %%location_label%%1
      (test_crate!X.impl&%10.invariant.? (Poly%test_crate!X.State. post!))
 )))))
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

;; Function-Recommends test_crate::X::State::lemma_tr1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-lemma_doesnt_verify/test.rs:52:5: 52:52 (#0)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!X.State.)
 (declare-const post! test_crate!X.State.)
 (declare-const x! Int)
 (assert
  fuel_defaults
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::X::Instance::tr
(declare-fun req%test_crate!X.impl&%7.tr. (test_crate!X.Instance. Int test_crate!X.t.)
 Bool
)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((self! test_crate!X.Instance.) (x! Int) (pre%param_token_t! test_crate!X.t.))
  (!
   (= (req%test_crate!X.impl&%7.tr. self! x! pre%param_token_t!) (=>
     %%global_location_label%%3
     (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!X.t.
        $ INT (Poly%test_crate!X.t. pre%param_token_t!)
       )
      ) (test_crate!X.impl&%7.id.? (Poly%test_crate!X.Instance. self!))
   )))
   :pattern ((req%test_crate!X.impl&%7.tr. self! x! pre%param_token_t!))
   :qid internal_req__test_crate!X.impl&__7.tr._definition
   :skolemid skolem_internal_req__test_crate!X.impl&__7.tr._definition
)))
(declare-fun ens%test_crate!X.impl&%7.tr. (test_crate!X.Instance. Int test_crate!X.t.
  test_crate!X.t.
 ) Bool
)
(assert
 (forall ((self! test_crate!X.Instance.) (x! Int) (pre%param_token_t! test_crate!X.t.)
   (param_token_t! test_crate!X.t.)
  ) (!
   (= (ens%test_crate!X.impl&%7.tr. self! x! pre%param_token_t! param_token_t!) (and
     (has_type (Poly%test_crate!X.t. param_token_t!) TYPE%test_crate!X.t.)
     (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!X.t.
        $ INT (Poly%test_crate!X.t. param_token_t!)
       )
      ) (test_crate!X.impl&%7.id.? (Poly%test_crate!X.Instance. self!))
     )
     (= (%I (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!X.t. $ INT (Poly%test_crate!X.t.
         param_token_t!
       ))
      ) x!
   )))
   :pattern ((ens%test_crate!X.impl&%7.tr. self! x! pre%param_token_t! param_token_t!))
   :qid internal_ens__test_crate!X.impl&__7.tr._definition
   :skolemid skolem_internal_ens__test_crate!X.impl&__7.tr._definition
)))
