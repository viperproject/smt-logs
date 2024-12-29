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

;; MODULE 'root module'

;; Fuel
(declare-const fuel%vstd!std_specs.option.impl&%0.is_Some. FuelId)
(declare-const fuel%vstd!std_specs.option.impl&%0.arrow_0. FuelId)
(declare-const fuel%vstd!map.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd!map.axiom_map_index_decreases_finite. FuelId)
(declare-const fuel%vstd!map.axiom_map_index_decreases_infinite. FuelId)
(declare-const fuel%vstd!map.axiom_map_insert_domain. FuelId)
(declare-const fuel%vstd!map.axiom_map_insert_same. FuelId)
(declare-const fuel%vstd!map.axiom_map_insert_different. FuelId)
(declare-const fuel%vstd!map.axiom_map_ext_equal. FuelId)
(declare-const fuel%vstd!map.axiom_map_ext_equal_deep. FuelId)
(declare-const fuel%vstd!set.axiom_set_insert_same. FuelId)
(declare-const fuel%vstd!set.axiom_set_insert_different. FuelId)
(declare-const fuel%vstd!set.axiom_set_ext_equal. FuelId)
(declare-const fuel%vstd!set.axiom_set_ext_equal_deep. FuelId)
(declare-const fuel%vstd!set.axiom_set_insert_finite. FuelId)
(declare-const fuel%vstd!state_machine_internal.impl&%3.update_at_index. FuelId)
(declare-const fuel%test_crate!X.impl&%4.tr. FuelId)
(declare-const fuel%test_crate!X.impl&%4.tr_strong. FuelId)
(declare-const fuel%test_crate!X.impl&%4.tr_enabled. FuelId)
(declare-const fuel%test_crate!X.impl&%4.invariant. FuelId)
(declare-const fuel%test_crate!impl&%0.arrow_Bar_0. FuelId)
(declare-const fuel%test_crate!impl&%0.arrow_Qax_0. FuelId)
(declare-const fuel%test_crate!impl&%0.arrow_Duck_0. FuelId)
(declare-const fuel%test_crate!tr_weak. FuelId)
(declare-const fuel%test_crate!tr_strong. FuelId)
(declare-const fuel%test_crate!tr_enabled. FuelId)
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
 (distinct fuel%vstd!std_specs.option.impl&%0.is_Some. fuel%vstd!std_specs.option.impl&%0.arrow_0.
  fuel%vstd!map.impl&%0.spec_index. fuel%vstd!map.axiom_map_index_decreases_finite.
  fuel%vstd!map.axiom_map_index_decreases_infinite. fuel%vstd!map.axiom_map_insert_domain.
  fuel%vstd!map.axiom_map_insert_same. fuel%vstd!map.axiom_map_insert_different. fuel%vstd!map.axiom_map_ext_equal.
  fuel%vstd!map.axiom_map_ext_equal_deep. fuel%vstd!set.axiom_set_insert_same. fuel%vstd!set.axiom_set_insert_different.
  fuel%vstd!set.axiom_set_ext_equal. fuel%vstd!set.axiom_set_ext_equal_deep. fuel%vstd!set.axiom_set_insert_finite.
  fuel%vstd!state_machine_internal.impl&%3.update_at_index. fuel%test_crate!X.impl&%4.tr.
  fuel%test_crate!X.impl&%4.tr_strong. fuel%test_crate!X.impl&%4.tr_enabled. fuel%test_crate!X.impl&%4.invariant.
  fuel%test_crate!impl&%0.arrow_Bar_0. fuel%test_crate!impl&%0.arrow_Qax_0. fuel%test_crate!impl&%0.arrow_Duck_0.
  fuel%test_crate!tr_weak. fuel%test_crate!tr_strong. fuel%test_crate!tr_enabled. fuel%vstd!array.group_array_axioms.
  fuel%vstd!map.group_map_axioms. fuel%vstd!multiset.group_multiset_axioms. fuel%vstd!raw_ptr.group_raw_ptr_axioms.
  fuel%vstd!seq.group_seq_axioms. fuel%vstd!seq_lib.group_seq_lib_default. fuel%vstd!set.group_set_axioms.
  fuel%vstd!set_lib.group_set_lib_axioms. fuel%vstd!slice.group_slice_axioms. fuel%vstd!string.group_string_axioms.
  fuel%vstd!std_specs.bits.group_bits_axioms. fuel%vstd!std_specs.control_flow.group_control_flow_axioms.
  fuel%vstd!std_specs.range.group_range_axioms. fuel%vstd!std_specs.vec.group_vec_axioms.
  fuel%vstd!group_vstd_default.
))
(assert
 (=>
  (fuel_bool_default fuel%vstd!map.group_map_axioms.)
  (and
   (fuel_bool_default fuel%vstd!map.axiom_map_index_decreases_finite.)
   (fuel_bool_default fuel%vstd!map.axiom_map_index_decreases_infinite.)
   (fuel_bool_default fuel%vstd!map.axiom_map_insert_domain.)
   (fuel_bool_default fuel%vstd!map.axiom_map_insert_same.)
   (fuel_bool_default fuel%vstd!map.axiom_map_insert_different.)
   (fuel_bool_default fuel%vstd!map.axiom_map_ext_equal.)
   (fuel_bool_default fuel%vstd!map.axiom_map_ext_equal_deep.)
)))
(assert
 (=>
  (fuel_bool_default fuel%vstd!set.group_set_axioms.)
  (and
   (fuel_bool_default fuel%vstd!set.axiom_set_insert_same.)
   (fuel_bool_default fuel%vstd!set.axiom_set_insert_different.)
   (fuel_bool_default fuel%vstd!set.axiom_set_ext_equal.)
   (fuel_bool_default fuel%vstd!set.axiom_set_ext_equal_deep.)
   (fuel_bool_default fuel%vstd!set.axiom_set_insert_finite.)
)))
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
(declare-sort vstd!map.Map<int./int.>. 0)
(declare-datatypes ((core!option.Option. 0) (test_crate!X.State. 0) (test_crate!Foo.
   0
  ) (tuple%0. 0) (tuple%2. 0)
 ) (((core!option.Option./None) (core!option.Option./Some (core!option.Option./Some/?0
     Poly
   ))
  ) ((test_crate!X.State./State (test_crate!X.State./State/?m vstd!map.Map<int./int.>.)
    (test_crate!X.State./State/?a Int) (test_crate!X.State./State/?b Int)
   )
  ) ((test_crate!Foo./Bar (test_crate!Foo./Bar/?0 Int)) (test_crate!Foo./Qax (test_crate!Foo./Qax/?0
     Int
    )
   ) (test_crate!Foo./Duck (test_crate!Foo./Duck/?0 Int))
  ) ((tuple%0./tuple%0)) ((tuple%2./tuple%2 (tuple%2./tuple%2/?0 Poly) (tuple%2./tuple%2/?1
     Poly
)))))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun test_crate!X.State./State/m (test_crate!X.State.) vstd!map.Map<int./int.>.)
(declare-fun test_crate!X.State./State/a (test_crate!X.State.) Int)
(declare-fun test_crate!X.State./State/b (test_crate!X.State.) Int)
(declare-fun test_crate!Foo./Bar/0 (test_crate!Foo.) Int)
(declare-fun test_crate!Foo./Qax/0 (test_crate!Foo.) Int)
(declare-fun test_crate!Foo./Duck/0 (test_crate!Foo.) Int)
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-fun TYPE%vstd!map.Map. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd!set.Set. (Dcr Type) Type)
(declare-const TYPE%test_crate!X.State. Type)
(declare-const TYPE%test_crate!Foo. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%2. (Dcr Type Dcr Type) Type)
(declare-fun Poly%vstd!map.Map<int./int.>. (vstd!map.Map<int./int.>.) Poly)
(declare-fun %Poly%vstd!map.Map<int./int.>. (Poly) vstd!map.Map<int./int.>.)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
(declare-fun Poly%test_crate!X.State. (test_crate!X.State.) Poly)
(declare-fun %Poly%test_crate!X.State. (Poly) test_crate!X.State.)
(declare-fun Poly%test_crate!Foo. (test_crate!Foo.) Poly)
(declare-fun %Poly%test_crate!Foo. (Poly) test_crate!Foo.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%2. (tuple%2.) Poly)
(declare-fun %Poly%tuple%2. (Poly) tuple%2.)
(assert
 (forall ((x vstd!map.Map<int./int.>.)) (!
   (= x (%Poly%vstd!map.Map<int./int.>. (Poly%vstd!map.Map<int./int.>. x)))
   :pattern ((Poly%vstd!map.Map<int./int.>. x))
   :qid internal_vstd__map__Map<int./int.>_box_axiom_definition
   :skolemid skolem_internal_vstd__map__Map<int./int.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!map.Map. $ INT $ INT))
    (= x (Poly%vstd!map.Map<int./int.>. (%Poly%vstd!map.Map<int./int.>. x)))
   )
   :pattern ((has_type x (TYPE%vstd!map.Map. $ INT $ INT)))
   :qid internal_vstd__map__Map<int./int.>_unbox_axiom_definition
   :skolemid skolem_internal_vstd__map__Map<int./int.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!map.Map<int./int.>.)) (!
   (has_type (Poly%vstd!map.Map<int./int.>. x) (TYPE%vstd!map.Map. $ INT $ INT))
   :pattern ((has_type (Poly%vstd!map.Map<int./int.>. x) (TYPE%vstd!map.Map. $ INT $ INT)))
   :qid internal_vstd__map__Map<int./int.>_has_type_always_definition
   :skolemid skolem_internal_vstd__map__Map<int./int.>_has_type_always_definition
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
   (= (test_crate!X.State./State/m x) (test_crate!X.State./State/?m x))
   :pattern ((test_crate!X.State./State/m x))
   :qid internal_test_crate!X.State./State/m_accessor_definition
   :skolemid skolem_internal_test_crate!X.State./State/m_accessor_definition
)))
(assert
 (forall ((x test_crate!X.State.)) (!
   (= (test_crate!X.State./State/a x) (test_crate!X.State./State/?a x))
   :pattern ((test_crate!X.State./State/a x))
   :qid internal_test_crate!X.State./State/a_accessor_definition
   :skolemid skolem_internal_test_crate!X.State./State/a_accessor_definition
)))
(assert
 (forall ((x test_crate!X.State.)) (!
   (= (test_crate!X.State./State/b x) (test_crate!X.State./State/?b x))
   :pattern ((test_crate!X.State./State/b x))
   :qid internal_test_crate!X.State./State/b_accessor_definition
   :skolemid skolem_internal_test_crate!X.State./State/b_accessor_definition
)))
(assert
 (forall ((x test_crate!X.State.)) (!
   (has_type (Poly%test_crate!X.State. x) TYPE%test_crate!X.State.)
   :pattern ((has_type (Poly%test_crate!X.State. x) TYPE%test_crate!X.State.))
   :qid internal_test_crate__X__State_has_type_always_definition
   :skolemid skolem_internal_test_crate__X__State_has_type_always_definition
)))
(assert
 (forall ((x test_crate!Foo.)) (!
   (= x (%Poly%test_crate!Foo. (Poly%test_crate!Foo. x)))
   :pattern ((Poly%test_crate!Foo. x))
   :qid internal_test_crate__Foo_box_axiom_definition
   :skolemid skolem_internal_test_crate__Foo_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Foo.)
    (= x (Poly%test_crate!Foo. (%Poly%test_crate!Foo. x)))
   )
   :pattern ((has_type x TYPE%test_crate!Foo.))
   :qid internal_test_crate__Foo_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__Foo_unbox_axiom_definition
)))
(assert
 (forall ((x test_crate!Foo.)) (!
   (= (test_crate!Foo./Bar/0 x) (test_crate!Foo./Bar/?0 x))
   :pattern ((test_crate!Foo./Bar/0 x))
   :qid internal_test_crate!Foo./Bar/0_accessor_definition
   :skolemid skolem_internal_test_crate!Foo./Bar/0_accessor_definition
)))
(assert
 (forall ((x test_crate!Foo.)) (!
   (= (test_crate!Foo./Qax/0 x) (test_crate!Foo./Qax/?0 x))
   :pattern ((test_crate!Foo./Qax/0 x))
   :qid internal_test_crate!Foo./Qax/0_accessor_definition
   :skolemid skolem_internal_test_crate!Foo./Qax/0_accessor_definition
)))
(assert
 (forall ((x test_crate!Foo.)) (!
   (= (test_crate!Foo./Duck/0 x) (test_crate!Foo./Duck/?0 x))
   :pattern ((test_crate!Foo./Duck/0 x))
   :qid internal_test_crate!Foo./Duck/0_accessor_definition
   :skolemid skolem_internal_test_crate!Foo./Duck/0_accessor_definition
)))
(assert
 (forall ((x test_crate!Foo.)) (!
   (has_type (Poly%test_crate!Foo. x) TYPE%test_crate!Foo.)
   :pattern ((has_type (Poly%test_crate!Foo. x) TYPE%test_crate!Foo.))
   :qid internal_test_crate__Foo_has_type_always_definition
   :skolemid skolem_internal_test_crate__Foo_has_type_always_definition
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
 (forall ((x tuple%2.)) (!
   (= x (%Poly%tuple%2. (Poly%tuple%2. x)))
   :pattern ((Poly%tuple%2. x))
   :qid internal_crate__tuple__2_box_axiom_definition
   :skolemid skolem_internal_crate__tuple__2_box_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%tuple%2. T%0&. T%0& T%1&. T%1&))
    (= x (Poly%tuple%2. (%Poly%tuple%2. x)))
   )
   :pattern ((has_type x (TYPE%tuple%2. T%0&. T%0& T%1&. T%1&)))
   :qid internal_crate__tuple__2_unbox_axiom_definition
   :skolemid skolem_internal_crate__tuple__2_unbox_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (_0! Poly) (_1! Poly)) (!
   (=>
    (and
     (has_type _0! T%0&)
     (has_type _1! T%1&)
    )
    (has_type (Poly%tuple%2. (tuple%2./tuple%2 _0! _1!)) (TYPE%tuple%2. T%0&. T%0& T%1&.
      T%1&
   )))
   :pattern ((has_type (Poly%tuple%2. (tuple%2./tuple%2 _0! _1!)) (TYPE%tuple%2. T%0&.
      T%0& T%1&. T%1&
   )))
   :qid internal_tuple__2./tuple__2_constructor_definition
   :skolemid skolem_internal_tuple__2./tuple__2_constructor_definition
)))
(assert
 (forall ((x tuple%2.)) (!
   (= (tuple%2./tuple%2/0 x) (tuple%2./tuple%2/?0 x))
   :pattern ((tuple%2./tuple%2/0 x))
   :qid internal_tuple__2./tuple__2/0_accessor_definition
   :skolemid skolem_internal_tuple__2./tuple__2/0_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%tuple%2. T%0&. T%0& T%1&. T%1&))
    (has_type (tuple%2./tuple%2/0 (%Poly%tuple%2. x)) T%0&)
   )
   :pattern ((tuple%2./tuple%2/0 (%Poly%tuple%2. x)) (has_type x (TYPE%tuple%2. T%0&. T%0&
      T%1&. T%1&
   )))
   :qid internal_tuple__2./tuple__2/0_invariant_definition
   :skolemid skolem_internal_tuple__2./tuple__2/0_invariant_definition
)))
(assert
 (forall ((x tuple%2.)) (!
   (= (tuple%2./tuple%2/1 x) (tuple%2./tuple%2/?1 x))
   :pattern ((tuple%2./tuple%2/1 x))
   :qid internal_tuple__2./tuple__2/1_accessor_definition
   :skolemid skolem_internal_tuple__2./tuple__2/1_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%tuple%2. T%0&. T%0& T%1&. T%1&))
    (has_type (tuple%2./tuple%2/1 (%Poly%tuple%2. x)) T%1&)
   )
   :pattern ((tuple%2./tuple%2/1 (%Poly%tuple%2. x)) (has_type x (TYPE%tuple%2. T%0&. T%0&
      T%1&. T%1&
   )))
   :qid internal_tuple__2./tuple__2/1_invariant_definition
   :skolemid skolem_internal_tuple__2./tuple__2/1_invariant_definition
)))
(assert
 (forall ((x tuple%2.)) (!
   (=>
    (is-tuple%2./tuple%2 x)
    (height_lt (height (tuple%2./tuple%2/0 x)) (height (Poly%tuple%2. x)))
   )
   :pattern ((height (tuple%2./tuple%2/0 x)))
   :qid prelude_datatype_height_tuple%2./tuple%2/0
   :skolemid skolem_prelude_datatype_height_tuple%2./tuple%2/0
)))
(assert
 (forall ((x tuple%2.)) (!
   (=>
    (is-tuple%2./tuple%2 x)
    (height_lt (height (tuple%2./tuple%2/1 x)) (height (Poly%tuple%2. x)))
   )
   :pattern ((height (tuple%2./tuple%2/1 x)))
   :qid prelude_datatype_height_tuple%2./tuple%2/1
   :skolemid skolem_prelude_datatype_height_tuple%2./tuple%2/1
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (deep Bool) (x Poly) (y Poly))
  (!
   (=>
    (and
     (has_type x (TYPE%tuple%2. T%0&. T%0& T%1&. T%1&))
     (has_type y (TYPE%tuple%2. T%0&. T%0& T%1&. T%1&))
     (ext_eq deep T%0& (tuple%2./tuple%2/0 (%Poly%tuple%2. x)) (tuple%2./tuple%2/0 (%Poly%tuple%2.
        y
     )))
     (ext_eq deep T%1& (tuple%2./tuple%2/1 (%Poly%tuple%2. x)) (tuple%2./tuple%2/1 (%Poly%tuple%2.
        y
    ))))
    (ext_eq deep (TYPE%tuple%2. T%0&. T%0& T%1&. T%1&) x y)
   )
   :pattern ((ext_eq deep (TYPE%tuple%2. T%0&. T%0& T%1&. T%1&) x y))
   :qid internal_tuple__2./tuple__2_ext_equal_definition
   :skolemid skolem_internal_tuple__2./tuple__2_ext_equal_definition
)))

;; Traits
(declare-fun tr_bound%vstd!std_specs.option.OptionAdditionalFns. (Dcr Type Dcr Type)
 Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type)) (!
   true
   :pattern ((tr_bound%vstd!std_specs.option.OptionAdditionalFns. Self%&. Self%& T&. T&))
   :qid internal_vstd__std_specs__option__OptionAdditionalFns_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__std_specs__option__OptionAdditionalFns_trait_type_bounds_definition
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

;; Function-Decl vstd::std_specs::option::OptionAdditionalFns::arrow_0
(declare-fun vstd!std_specs.option.OptionAdditionalFns.arrow_0.? (Dcr Type Dcr Type
  Poly
 ) Poly
)
(declare-fun vstd!std_specs.option.OptionAdditionalFns.arrow_0%default%.? (Dcr Type
  Dcr Type Poly
 ) Poly
)

;; Function-Decl vstd::map::impl&%0::dom
(declare-fun vstd!map.impl&%0.dom.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl vstd::set::impl&%0::contains
(declare-fun vstd!set.impl&%0.contains.? (Dcr Type Poly Poly) Bool)

;; Function-Decl vstd::map::impl&%0::index
(declare-fun vstd!map.impl&%0.index.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::map::impl&%0::insert
(declare-fun vstd!map.impl&%0.insert.? (Dcr Type Dcr Type Poly Poly Poly) Poly)

;; Function-Decl vstd::set::impl&%0::finite
(declare-fun vstd!set.impl&%0.finite.? (Dcr Type Poly) Bool)

;; Function-Decl vstd::map::impl&%0::spec_index
(declare-fun vstd!map.impl&%0.spec_index.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::set::impl&%0::insert
(declare-fun vstd!set.impl&%0.insert.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::state_machine_internal::impl&%3::update_at_index
(declare-fun vstd!state_machine_internal.impl&%3.update_at_index.? (Dcr Type Dcr Type
  Poly Poly Poly
 ) Poly
)

;; Function-Decl test_crate::X::State::tr
(declare-fun test_crate!X.impl&%4.tr.? (Poly Poly Poly Poly Poly Poly Poly) Bool)

;; Function-Decl test_crate::X::State::tr_strong
(declare-fun test_crate!X.impl&%4.tr_strong.? (Poly Poly Poly Poly Poly Poly Poly)
 Bool
)

;; Function-Decl test_crate::X::State::tr_enabled
(declare-fun test_crate!X.impl&%4.tr_enabled.? (Poly Poly Poly Poly Poly Poly) Bool)

;; Function-Decl test_crate::X::State::invariant
(declare-fun test_crate!X.impl&%4.invariant.? (Poly) Bool)

;; Function-Decl test_crate::Foo::arrow_Bar_0
(declare-fun test_crate!impl&%0.arrow_Bar_0.? (Poly) Int)

;; Function-Decl test_crate::Foo::arrow_Qax_0
(declare-fun test_crate!impl&%0.arrow_Qax_0.? (Poly) Int)

;; Function-Decl test_crate::Foo::arrow_Duck_0
(declare-fun test_crate!impl&%0.arrow_Duck_0.? (Poly) Int)

;; Function-Decl test_crate::tr_weak
(declare-fun test_crate!tr_weak.? (Poly Poly Poly Poly Poly Poly Poly) Bool)

;; Function-Decl test_crate::tr_strong
(declare-fun test_crate!tr_strong.? (Poly Poly Poly Poly Poly Poly Poly) Bool)

;; Function-Decl test_crate::tr_enabled
(declare-fun test_crate!tr_enabled.? (Poly Poly Poly Poly Poly Poly) Bool)

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

;; Function-Axioms vstd::std_specs::option::OptionAdditionalFns::arrow_0
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd!std_specs.option.OptionAdditionalFns.arrow_0.? Self%&. Self%& T&. T&
      self!
     ) T&
   ))
   :pattern ((vstd!std_specs.option.OptionAdditionalFns.arrow_0.? Self%&. Self%& T&. T&
     self!
   ))
   :qid internal_vstd!std_specs.option.OptionAdditionalFns.arrow_0.?_pre_post_definition
   :skolemid skolem_internal_vstd!std_specs.option.OptionAdditionalFns.arrow_0.?_pre_post_definition
)))

;; Function-Axioms vstd::map::impl&%0::dom
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd!map.Map. K&. K& V&. V&))
    (has_type (vstd!map.impl&%0.dom.? K&. K& V&. V& self!) (TYPE%vstd!set.Set. K&. K&))
   )
   :pattern ((vstd!map.impl&%0.dom.? K&. K& V&. V& self!))
   :qid internal_vstd!map.impl&__0.dom.?_pre_post_definition
   :skolemid skolem_internal_vstd!map.impl&__0.dom.?_pre_post_definition
)))

;; Function-Specs vstd::map::impl&%0::index
(declare-fun req%vstd!map.impl&%0.index. (Dcr Type Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (= (req%vstd!map.impl&%0.index. K&. K& V&. V& self! key!) (=>
     %%global_location_label%%0
     (vstd!set.impl&%0.contains.? K&. K& (vstd!map.impl&%0.dom.? K&. K& V&. V& self!) key!)
   ))
   :pattern ((req%vstd!map.impl&%0.index. K&. K& V&. V& self! key!))
   :qid internal_req__vstd!map.impl&__0.index._definition
   :skolemid skolem_internal_req__vstd!map.impl&__0.index._definition
)))

;; Function-Axioms vstd::map::impl&%0::index
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd!map.Map. K&. K& V&. V&))
     (has_type key! K&)
    )
    (has_type (vstd!map.impl&%0.index.? K&. K& V&. V& self! key!) V&)
   )
   :pattern ((vstd!map.impl&%0.index.? K&. K& V&. V& self! key!))
   :qid internal_vstd!map.impl&__0.index.?_pre_post_definition
   :skolemid skolem_internal_vstd!map.impl&__0.index.?_pre_post_definition
)))

;; Function-Axioms vstd::map::impl&%0::insert
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly) (value! Poly))
  (!
   (=>
    (and
     (has_type self! (TYPE%vstd!map.Map. K&. K& V&. V&))
     (has_type key! K&)
     (has_type value! V&)
    )
    (has_type (vstd!map.impl&%0.insert.? K&. K& V&. V& self! key! value!) (TYPE%vstd!map.Map.
      K&. K& V&. V&
   )))
   :pattern ((vstd!map.impl&%0.insert.? K&. K& V&. V& self! key! value!))
   :qid internal_vstd!map.impl&__0.insert.?_pre_post_definition
   :skolemid skolem_internal_vstd!map.impl&__0.insert.?_pre_post_definition
)))

;; Function-Specs vstd::map::impl&%0::spec_index
(declare-fun req%vstd!map.impl&%0.spec_index. (Dcr Type Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (= (req%vstd!map.impl&%0.spec_index. K&. K& V&. V& self! key!) (=>
     %%global_location_label%%1
     (vstd!set.impl&%0.contains.? K&. K& (vstd!map.impl&%0.dom.? K&. K& V&. V& self!) key!)
   ))
   :pattern ((req%vstd!map.impl&%0.spec_index. K&. K& V&. V& self! key!))
   :qid internal_req__vstd!map.impl&__0.spec_index._definition
   :skolemid skolem_internal_req__vstd!map.impl&__0.spec_index._definition
)))

;; Function-Axioms vstd::map::impl&%0::spec_index
(assert
 (fuel_bool_default fuel%vstd!map.impl&%0.spec_index.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!map.impl&%0.spec_index.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
    (= (vstd!map.impl&%0.spec_index.? K&. K& V&. V& self! key!) (vstd!map.impl&%0.index.?
      K&. K& V&. V& self! key!
    ))
    :pattern ((vstd!map.impl&%0.spec_index.? K&. K& V&. V& self! key!))
    :qid internal_vstd!map.impl&__0.spec_index.?_definition
    :skolemid skolem_internal_vstd!map.impl&__0.spec_index.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd!map.Map. K&. K& V&. V&))
     (has_type key! K&)
    )
    (has_type (vstd!map.impl&%0.spec_index.? K&. K& V&. V& self! key!) V&)
   )
   :pattern ((vstd!map.impl&%0.spec_index.? K&. K& V&. V& self! key!))
   :qid internal_vstd!map.impl&__0.spec_index.?_pre_post_definition
   :skolemid skolem_internal_vstd!map.impl&__0.spec_index.?_pre_post_definition
)))

;; Broadcast vstd::map::axiom_map_index_decreases_finite
(assert
 (=>
  (fuel_bool fuel%vstd!map.axiom_map_index_decreases_finite.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (key! Poly)) (!
    (=>
     (and
      (has_type m! (TYPE%vstd!map.Map. K&. K& V&. V&))
      (has_type key! K&)
     )
     (=>
      (and
       (vstd!set.impl&%0.finite.? K&. K& (vstd!map.impl&%0.dom.? K&. K& V&. V& m!))
       (vstd!set.impl&%0.contains.? K&. K& (vstd!map.impl&%0.dom.? K&. K& V&. V& m!) key!)
      )
      (height_lt (height (vstd!map.impl&%0.index.? K&. K& V&. V& m! key!)) (height m!))
    ))
    :pattern ((height (vstd!map.impl&%0.index.? K&. K& V&. V& m! key!)))
    :qid user_vstd__map__axiom_map_index_decreases_finite_0
    :skolemid skolem_user_vstd__map__axiom_map_index_decreases_finite_0
))))

;; Broadcast vstd::map::axiom_map_index_decreases_infinite
(assert
 (=>
  (fuel_bool fuel%vstd!map.axiom_map_index_decreases_infinite.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (key! Poly)) (!
    (=>
     (and
      (has_type m! (TYPE%vstd!map.Map. K&. K& V&. V&))
      (has_type key! K&)
     )
     (=>
      (vstd!set.impl&%0.contains.? K&. K& (vstd!map.impl&%0.dom.? K&. K& V&. V& m!) key!)
      (height_lt (height (vstd!map.impl&%0.index.? K&. K& V&. V& m! key!)) (height (fun_from_recursive_field
         m!
    )))))
    :pattern ((height (vstd!map.impl&%0.index.? K&. K& V&. V& m! key!)))
    :qid user_vstd__map__axiom_map_index_decreases_infinite_1
    :skolemid skolem_user_vstd__map__axiom_map_index_decreases_infinite_1
))))

;; Function-Axioms vstd::set::impl&%0::insert
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (a! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd!set.Set. A&. A&))
     (has_type a! A&)
    )
    (has_type (vstd!set.impl&%0.insert.? A&. A& self! a!) (TYPE%vstd!set.Set. A&. A&))
   )
   :pattern ((vstd!set.impl&%0.insert.? A&. A& self! a!))
   :qid internal_vstd!set.impl&__0.insert.?_pre_post_definition
   :skolemid skolem_internal_vstd!set.impl&__0.insert.?_pre_post_definition
)))

;; Broadcast vstd::map::axiom_map_insert_domain
(assert
 (=>
  (fuel_bool fuel%vstd!map.axiom_map_insert_domain.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (key! Poly) (value! Poly))
   (!
    (=>
     (and
      (has_type m! (TYPE%vstd!map.Map. K&. K& V&. V&))
      (has_type key! K&)
      (has_type value! V&)
     )
     (= (vstd!map.impl&%0.dom.? K&. K& V&. V& (vstd!map.impl&%0.insert.? K&. K& V&. V& m!
        key! value!
       )
      ) (vstd!set.impl&%0.insert.? K&. K& (vstd!map.impl&%0.dom.? K&. K& V&. V& m!) key!)
    ))
    :pattern ((vstd!map.impl&%0.dom.? K&. K& V&. V& (vstd!map.impl&%0.insert.? K&. K& V&.
       V& m! key! value!
    )))
    :qid user_vstd__map__axiom_map_insert_domain_2
    :skolemid skolem_user_vstd__map__axiom_map_insert_domain_2
))))

;; Broadcast vstd::map::axiom_map_insert_same
(assert
 (=>
  (fuel_bool fuel%vstd!map.axiom_map_insert_same.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (key! Poly) (value! Poly))
   (!
    (=>
     (and
      (has_type m! (TYPE%vstd!map.Map. K&. K& V&. V&))
      (has_type key! K&)
      (has_type value! V&)
     )
     (= (vstd!map.impl&%0.index.? K&. K& V&. V& (vstd!map.impl&%0.insert.? K&. K& V&. V&
        m! key! value!
       ) key!
      ) value!
    ))
    :pattern ((vstd!map.impl&%0.index.? K&. K& V&. V& (vstd!map.impl&%0.insert.? K&. K&
       V&. V& m! key! value!
      ) key!
    ))
    :qid user_vstd__map__axiom_map_insert_same_3
    :skolemid skolem_user_vstd__map__axiom_map_insert_same_3
))))

;; Broadcast vstd::map::axiom_map_insert_different
(assert
 (=>
  (fuel_bool fuel%vstd!map.axiom_map_insert_different.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (key1! Poly) (key2! Poly)
    (value! Poly)
   ) (!
    (=>
     (and
      (has_type m! (TYPE%vstd!map.Map. K&. K& V&. V&))
      (has_type key1! K&)
      (has_type key2! K&)
      (has_type value! V&)
     )
     (=>
      (and
       (vstd!set.impl&%0.contains.? K&. K& (vstd!map.impl&%0.dom.? K&. K& V&. V& m!) key1!)
       (not (= key1! key2!))
      )
      (= (vstd!map.impl&%0.index.? K&. K& V&. V& (vstd!map.impl&%0.insert.? K&. K& V&. V&
         m! key2! value!
        ) key1!
       ) (vstd!map.impl&%0.index.? K&. K& V&. V& m! key1!)
    )))
    :pattern ((vstd!map.impl&%0.index.? K&. K& V&. V& (vstd!map.impl&%0.insert.? K&. K&
       V&. V& m! key2! value!
      ) key1!
    ))
    :qid user_vstd__map__axiom_map_insert_different_4
    :skolemid skolem_user_vstd__map__axiom_map_insert_different_4
))))

;; Broadcast vstd::map::axiom_map_ext_equal
(assert
 (=>
  (fuel_bool fuel%vstd!map.axiom_map_ext_equal.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m1! Poly) (m2! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd!map.Map. K&. K& V&. V&))
      (has_type m2! (TYPE%vstd!map.Map. K&. K& V&. V&))
     )
     (= (ext_eq false (TYPE%vstd!map.Map. K&. K& V&. V&) m1! m2!) (and
       (ext_eq false (TYPE%vstd!set.Set. K&. K&) (vstd!map.impl&%0.dom.? K&. K& V&. V& m1!)
        (vstd!map.impl&%0.dom.? K&. K& V&. V& m2!)
       )
       (forall ((k$ Poly)) (!
         (=>
          (has_type k$ K&)
          (=>
           (vstd!set.impl&%0.contains.? K&. K& (vstd!map.impl&%0.dom.? K&. K& V&. V& m1!) k$)
           (= (vstd!map.impl&%0.index.? K&. K& V&. V& m1! k$) (vstd!map.impl&%0.index.? K&. K&
             V&. V& m2! k$
         ))))
         :pattern ((vstd!map.impl&%0.index.? K&. K& V&. V& m1! k$))
         :pattern ((vstd!map.impl&%0.index.? K&. K& V&. V& m2! k$))
         :qid user_vstd__map__axiom_map_ext_equal_5
         :skolemid skolem_user_vstd__map__axiom_map_ext_equal_5
    )))))
    :pattern ((ext_eq false (TYPE%vstd!map.Map. K&. K& V&. V&) m1! m2!))
    :qid user_vstd__map__axiom_map_ext_equal_6
    :skolemid skolem_user_vstd__map__axiom_map_ext_equal_6
))))

;; Broadcast vstd::map::axiom_map_ext_equal_deep
(assert
 (=>
  (fuel_bool fuel%vstd!map.axiom_map_ext_equal_deep.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m1! Poly) (m2! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd!map.Map. K&. K& V&. V&))
      (has_type m2! (TYPE%vstd!map.Map. K&. K& V&. V&))
     )
     (= (ext_eq true (TYPE%vstd!map.Map. K&. K& V&. V&) m1! m2!) (and
       (ext_eq true (TYPE%vstd!set.Set. K&. K&) (vstd!map.impl&%0.dom.? K&. K& V&. V& m1!)
        (vstd!map.impl&%0.dom.? K&. K& V&. V& m2!)
       )
       (forall ((k$ Poly)) (!
         (=>
          (has_type k$ K&)
          (=>
           (vstd!set.impl&%0.contains.? K&. K& (vstd!map.impl&%0.dom.? K&. K& V&. V& m1!) k$)
           (ext_eq true V& (vstd!map.impl&%0.index.? K&. K& V&. V& m1! k$) (vstd!map.impl&%0.index.?
             K&. K& V&. V& m2! k$
         ))))
         :pattern ((vstd!map.impl&%0.index.? K&. K& V&. V& m1! k$))
         :pattern ((vstd!map.impl&%0.index.? K&. K& V&. V& m2! k$))
         :qid user_vstd__map__axiom_map_ext_equal_deep_7
         :skolemid skolem_user_vstd__map__axiom_map_ext_equal_deep_7
    )))))
    :pattern ((ext_eq true (TYPE%vstd!map.Map. K&. K& V&. V&) m1! m2!))
    :qid user_vstd__map__axiom_map_ext_equal_deep_8
    :skolemid skolem_user_vstd__map__axiom_map_ext_equal_deep_8
))))

;; Broadcast vstd::set::axiom_set_insert_same
(assert
 (=>
  (fuel_bool fuel%vstd!set.axiom_set_insert_same.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd!set.Set. A&. A&))
      (has_type a! A&)
     )
     (vstd!set.impl&%0.contains.? A&. A& (vstd!set.impl&%0.insert.? A&. A& s! a!) a!)
    )
    :pattern ((vstd!set.impl&%0.contains.? A&. A& (vstd!set.impl&%0.insert.? A&. A& s! a!)
      a!
    ))
    :qid user_vstd__set__axiom_set_insert_same_9
    :skolemid skolem_user_vstd__set__axiom_set_insert_same_9
))))

;; Broadcast vstd::set::axiom_set_insert_different
(assert
 (=>
  (fuel_bool fuel%vstd!set.axiom_set_insert_different.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a1! Poly) (a2! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd!set.Set. A&. A&))
      (has_type a1! A&)
      (has_type a2! A&)
     )
     (=>
      (not (= a1! a2!))
      (= (vstd!set.impl&%0.contains.? A&. A& (vstd!set.impl&%0.insert.? A&. A& s! a2!) a1!)
       (vstd!set.impl&%0.contains.? A&. A& s! a1!)
    )))
    :pattern ((vstd!set.impl&%0.contains.? A&. A& (vstd!set.impl&%0.insert.? A&. A& s! a2!)
      a1!
    ))
    :qid user_vstd__set__axiom_set_insert_different_10
    :skolemid skolem_user_vstd__set__axiom_set_insert_different_10
))))

;; Broadcast vstd::set::axiom_set_ext_equal
(assert
 (=>
  (fuel_bool fuel%vstd!set.axiom_set_ext_equal.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd!set.Set. A&. A&))
      (has_type s2! (TYPE%vstd!set.Set. A&. A&))
     )
     (= (ext_eq false (TYPE%vstd!set.Set. A&. A&) s1! s2!) (forall ((a$ Poly)) (!
        (=>
         (has_type a$ A&)
         (= (vstd!set.impl&%0.contains.? A&. A& s1! a$) (vstd!set.impl&%0.contains.? A&. A&
           s2! a$
        )))
        :pattern ((vstd!set.impl&%0.contains.? A&. A& s1! a$))
        :pattern ((vstd!set.impl&%0.contains.? A&. A& s2! a$))
        :qid user_vstd__set__axiom_set_ext_equal_11
        :skolemid skolem_user_vstd__set__axiom_set_ext_equal_11
    ))))
    :pattern ((ext_eq false (TYPE%vstd!set.Set. A&. A&) s1! s2!))
    :qid user_vstd__set__axiom_set_ext_equal_12
    :skolemid skolem_user_vstd__set__axiom_set_ext_equal_12
))))

;; Broadcast vstd::set::axiom_set_ext_equal_deep
(assert
 (=>
  (fuel_bool fuel%vstd!set.axiom_set_ext_equal_deep.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd!set.Set. A&. A&))
      (has_type s2! (TYPE%vstd!set.Set. A&. A&))
     )
     (= (ext_eq true (TYPE%vstd!set.Set. A&. A&) s1! s2!) (ext_eq false (TYPE%vstd!set.Set.
        A&. A&
       ) s1! s2!
    )))
    :pattern ((ext_eq true (TYPE%vstd!set.Set. A&. A&) s1! s2!))
    :qid user_vstd__set__axiom_set_ext_equal_deep_13
    :skolemid skolem_user_vstd__set__axiom_set_ext_equal_deep_13
))))

;; Broadcast vstd::set::axiom_set_insert_finite
(assert
 (=>
  (fuel_bool fuel%vstd!set.axiom_set_insert_finite.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd!set.Set. A&. A&))
      (has_type a! A&)
     )
     (=>
      (vstd!set.impl&%0.finite.? A&. A& s!)
      (vstd!set.impl&%0.finite.? A&. A& (vstd!set.impl&%0.insert.? A&. A& s! a!))
    ))
    :pattern ((vstd!set.impl&%0.finite.? A&. A& (vstd!set.impl&%0.insert.? A&. A& s! a!)))
    :qid user_vstd__set__axiom_set_insert_finite_14
    :skolemid skolem_user_vstd__set__axiom_set_insert_finite_14
))))

;; Function-Axioms vstd::state_machine_internal::impl&%3::update_at_index
(assert
 (fuel_bool_default fuel%vstd!state_machine_internal.impl&%3.update_at_index.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!state_machine_internal.impl&%3.update_at_index.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (k! Poly) (v! Poly))
   (!
    (= (vstd!state_machine_internal.impl&%3.update_at_index.? K&. K& V&. V& self! k! v!)
     (vstd!map.impl&%0.insert.? K&. K& V&. V& self! k! v!)
    )
    :pattern ((vstd!state_machine_internal.impl&%3.update_at_index.? K&. K& V&. V& self!
      k! v!
    ))
    :qid internal_vstd!state_machine_internal.impl&__3.update_at_index.?_definition
    :skolemid skolem_internal_vstd!state_machine_internal.impl&__3.update_at_index.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (k! Poly) (v! Poly))
  (!
   (=>
    (and
     (has_type self! (TYPE%vstd!map.Map. K&. K& V&. V&))
     (has_type k! K&)
     (has_type v! V&)
    )
    (has_type (vstd!state_machine_internal.impl&%3.update_at_index.? K&. K& V&. V& self!
      k! v!
     ) (TYPE%vstd!map.Map. K&. K& V&. V&)
   ))
   :pattern ((vstd!state_machine_internal.impl&%3.update_at_index.? K&. K& V&. V& self!
     k! v!
   ))
   :qid internal_vstd!state_machine_internal.impl&__3.update_at_index.?_pre_post_definition
   :skolemid skolem_internal_vstd!state_machine_internal.impl&__3.update_at_index.?_pre_post_definition
)))

;; Function-Axioms test_crate::X::State::tr
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%4.tr.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.tr.)
  (forall ((pre! Poly) (post! Poly) (x! Poly) (y! Poly) (z! Poly) (w! Poly) (v! Poly))
   (!
    (= (test_crate!X.impl&%4.tr.? pre! post! x! y! z! w! v!) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_m$ (test_crate!X.State./State/m (%Poly%test_crate!X.State. pre!))))
       (let
        ((update_tmp_a$ (test_crate!X.State./State/a (%Poly%test_crate!X.State. pre!))))
        (let
         ((update_tmp_b$ (test_crate!X.State./State/b (%Poly%test_crate!X.State. pre!))))
         (and
          (ite
           (is-core!option.Option./Some (%Poly%core!option.Option. x!))
           (let
            ((x1$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. x!)))))
            (and
             (=>
              tmp_assert$
              (%B w!)
             )
             (let
              ((update_tmp_m$1 (%Poly%vstd!map.Map<int./int.>. (vstd!map.impl&%0.insert.? $ INT $ INT
                  (Poly%vstd!map.Map<int./int.>. update_tmp_m$) (I 0) (I x1$)
              ))))
              (=>
               tmp_assert$
               (= (test_crate!X.State./State/a (%Poly%test_crate!X.State. post!)) update_tmp_a$)
           ))))
           (let
            ((tmp_assert$1 (and
               tmp_assert$
               (%B y!)
            )))
            (let
             ((update_tmp_a$1 99))
             (=>
              tmp_assert$1
              (= (test_crate!X.State./State/a (%Poly%test_crate!X.State. post!)) update_tmp_a$1)
          ))))
          (let
           ((tmp%%$ (ite
              (is-core!option.Option./Some (%Poly%core!option.Option. x!))
              (let
               ((x1$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. x!)))))
               (let
                ((update_tmp_m$2 (%Poly%vstd!map.Map<int./int.>. (vstd!map.impl&%0.insert.? $ INT $ INT
                    (Poly%vstd!map.Map<int./int.>. update_tmp_m$) (I 0) (I x1$)
                ))))
                (tuple%2./tuple%2 (Poly%vstd!map.Map<int./int.>. update_tmp_m$2) (B tmp_assert$))
              ))
              (let
               ((tmp_assert$2 (and
                  tmp_assert$
                  (%B y!)
               )))
               (let
                ((update_tmp_a$2 99))
                (tuple%2./tuple%2 (Poly%vstd!map.Map<int./int.>. update_tmp_m$) (B tmp_assert$2))
           )))))
           (let
            ((update_tmp_m$3 (%Poly%vstd!map.Map<int./int.>. (tuple%2./tuple%2/0 (%Poly%tuple%2. (
                  Poly%tuple%2. tmp%%$
            ))))))
            (let
             ((tmp_assert$3 (%B (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
             (let
              ((tmp_assert$4 (and
                 tmp_assert$3
                 (%B z!)
              )))
              (ite
               (is-core!option.Option./Some (%Poly%core!option.Option. v!))
               (let
                ((v1$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. v!)))))
                (let
                 ((update_tmp_b$1 v1$))
                 (and
                  (=>
                   tmp_assert$4
                   (= (test_crate!X.State./State/b (%Poly%test_crate!X.State. post!)) update_tmp_b$1)
                  )
                  (=>
                   tmp_assert$4
                   (= (test_crate!X.State./State/m (%Poly%test_crate!X.State. post!)) update_tmp_m$3)
               ))))
               (let
                ((update_tmp_m$4 (%Poly%vstd!map.Map<int./int.>. (vstd!map.impl&%0.insert.? $ INT $ INT
                    (Poly%vstd!map.Map<int./int.>. update_tmp_m$3) (I 1) (I 11)
                ))))
                (and
                 (=>
                  tmp_assert$4
                  (= (test_crate!X.State./State/m (%Poly%test_crate!X.State. post!)) update_tmp_m$4)
                 )
                 (=>
                  tmp_assert$4
                  (= (test_crate!X.State./State/b (%Poly%test_crate!X.State. post!)) update_tmp_b$)
    ))))))))))))))
    :pattern ((test_crate!X.impl&%4.tr.? pre! post! x! y! z! w! v!))
    :qid internal_test_crate!X.impl&__4.tr.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.tr.?_definition
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

;; Function-Axioms vstd::std_specs::option::impl&%0::arrow_0
(assert
 (fuel_bool_default fuel%vstd!std_specs.option.impl&%0.arrow_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.option.impl&%0.arrow_0.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd!std_specs.option.OptionAdditionalFns.arrow_0.? $ (TYPE%core!option.Option.
       T&. T&
      ) T&. T& self!
     ) (core!option.Option./Some/0 (%Poly%core!option.Option. self!))
    )
    :pattern ((vstd!std_specs.option.OptionAdditionalFns.arrow_0.? $ (TYPE%core!option.Option.
       T&. T&
      ) T&. T& self!
    ))
    :qid internal_vstd!std_specs.option.OptionAdditionalFns.arrow_0.?_definition
    :skolemid skolem_internal_vstd!std_specs.option.OptionAdditionalFns.arrow_0.?_definition
))))

;; Function-Axioms test_crate::X::State::tr_strong
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%4.tr_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.tr_strong.)
  (forall ((pre! Poly) (post! Poly) (x! Poly) (y! Poly) (z! Poly) (w! Poly) (v! Poly))
   (!
    (= (test_crate!X.impl&%4.tr_strong.? pre! post! x! y! z! w! v!) (let
      ((update_tmp_m$ (test_crate!X.State./State/m (%Poly%test_crate!X.State. pre!))))
      (let
       ((update_tmp_a$ (test_crate!X.State./State/a (%Poly%test_crate!X.State. pre!))))
       (let
        ((update_tmp_b$ (test_crate!X.State./State/b (%Poly%test_crate!X.State. pre!))))
        (and
         (ite
          (is-core!option.Option./Some (%Poly%core!option.Option. x!))
          (let
           ((x1$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. x!)))))
           (and
            (%B w!)
            (let
             ((update_tmp_m$1 (%Poly%vstd!map.Map<int./int.>. (vstd!map.impl&%0.insert.? $ INT $ INT
                 (Poly%vstd!map.Map<int./int.>. update_tmp_m$) (I 0) (I x1$)
             ))))
             (= (test_crate!X.State./State/a (%Poly%test_crate!X.State. post!)) update_tmp_a$)
          )))
          (and
           (%B y!)
           (let
            ((update_tmp_a$1 99))
            (= (test_crate!X.State./State/a (%Poly%test_crate!X.State. post!)) update_tmp_a$1)
         )))
         (let
          ((update_tmp_m$2 (ite
             (is-core!option.Option./Some (%Poly%core!option.Option. x!))
             (let
              ((x1$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. x!)))))
              (let
               ((update_tmp_m$3 (%Poly%vstd!map.Map<int./int.>. (vstd!map.impl&%0.insert.? $ INT $ INT
                   (Poly%vstd!map.Map<int./int.>. update_tmp_m$) (I 0) (I x1$)
               ))))
               update_tmp_m$3
             ))
             (let
              ((update_tmp_a$2 99))
              update_tmp_m$
          ))))
          (and
           (%B z!)
           (ite
            (is-core!option.Option./Some (%Poly%core!option.Option. v!))
            (let
             ((v1$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. v!)))))
             (let
              ((update_tmp_b$1 v1$))
              (and
               (= (test_crate!X.State./State/b (%Poly%test_crate!X.State. post!)) update_tmp_b$1)
               (= (test_crate!X.State./State/m (%Poly%test_crate!X.State. post!)) update_tmp_m$2)
            )))
            (let
             ((update_tmp_m$4 (%Poly%vstd!map.Map<int./int.>. (vstd!map.impl&%0.insert.? $ INT $ INT
                 (Poly%vstd!map.Map<int./int.>. update_tmp_m$2) (I 1) (I 11)
             ))))
             (and
              (= (test_crate!X.State./State/m (%Poly%test_crate!X.State. post!)) update_tmp_m$4)
              (= (test_crate!X.State./State/b (%Poly%test_crate!X.State. post!)) update_tmp_b$)
    ))))))))))
    :pattern ((test_crate!X.impl&%4.tr_strong.? pre! post! x! y! z! w! v!))
    :qid internal_test_crate!X.impl&__4.tr_strong.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.tr_strong.?_definition
))))

;; Function-Axioms test_crate::X::State::tr_enabled
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%4.tr_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.tr_enabled.)
  (forall ((pre! Poly) (x! Poly) (y! Poly) (z! Poly) (w! Poly) (v! Poly)) (!
    (= (test_crate!X.impl&%4.tr_enabled.? pre! x! y! z! w! v!) (let
      ((tmp_assert$ true))
      (=>
       (is-core!option.Option./Some (%Poly%core!option.Option. x!))
       (let
        ((x1$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. x!)))))
        (=>
         tmp_assert$
         (%B w!)
    )))))
    :pattern ((test_crate!X.impl&%4.tr_enabled.? pre! x! y! z! w! v!))
    :qid internal_test_crate!X.impl&__4.tr_enabled.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.tr_enabled.?_definition
))))

;; Function-Axioms test_crate::X::State::invariant
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%4.invariant.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.invariant.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%4.invariant.? self!) true)
    :pattern ((test_crate!X.impl&%4.invariant.? self!))
    :qid internal_test_crate!X.impl&__4.invariant.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.invariant.?_definition
))))

;; Function-Axioms test_crate::Foo::arrow_Bar_0
(assert
 (fuel_bool_default fuel%test_crate!impl&%0.arrow_Bar_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%0.arrow_Bar_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!impl&%0.arrow_Bar_0.? self!) (test_crate!Foo./Bar/0 (%Poly%test_crate!Foo.
       self!
    )))
    :pattern ((test_crate!impl&%0.arrow_Bar_0.? self!))
    :qid internal_test_crate!impl&__0.arrow_Bar_0.?_definition
    :skolemid skolem_internal_test_crate!impl&__0.arrow_Bar_0.?_definition
))))

;; Function-Axioms test_crate::Foo::arrow_Qax_0
(assert
 (fuel_bool_default fuel%test_crate!impl&%0.arrow_Qax_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%0.arrow_Qax_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!impl&%0.arrow_Qax_0.? self!) (test_crate!Foo./Qax/0 (%Poly%test_crate!Foo.
       self!
    )))
    :pattern ((test_crate!impl&%0.arrow_Qax_0.? self!))
    :qid internal_test_crate!impl&__0.arrow_Qax_0.?_definition
    :skolemid skolem_internal_test_crate!impl&__0.arrow_Qax_0.?_definition
))))

;; Function-Axioms test_crate::Foo::arrow_Duck_0
(assert
 (fuel_bool_default fuel%test_crate!impl&%0.arrow_Duck_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%0.arrow_Duck_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!impl&%0.arrow_Duck_0.? self!) (test_crate!Foo./Duck/0 (%Poly%test_crate!Foo.
       self!
    )))
    :pattern ((test_crate!impl&%0.arrow_Duck_0.? self!))
    :qid internal_test_crate!impl&__0.arrow_Duck_0.?_definition
    :skolemid skolem_internal_test_crate!impl&__0.arrow_Duck_0.?_definition
))))

;; Function-Axioms test_crate::tr_weak
(assert
 (fuel_bool_default fuel%test_crate!tr_weak.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!tr_weak.)
  (forall ((pre! Poly) (post! Poly) (x! Poly) (y! Poly) (z! Poly) (w! Poly) (v! Poly))
   (!
    (= (test_crate!tr_weak.? pre! post! x! y! z! w! v!) (and
      (=>
       (is-core!option.Option./Some (%Poly%core!option.Option. x!))
       (%B w!)
      )
      (=>
       (=>
        (not (is-core!option.Option./Some (%Poly%core!option.Option. x!)))
        (%B y!)
       )
       (and
        (and
         (=>
          (is-core!option.Option./Some (%Poly%core!option.Option. x!))
          (= (test_crate!X.State./State/a (%Poly%test_crate!X.State. post!)) (test_crate!X.State./State/a
            (%Poly%test_crate!X.State. pre!)
         )))
         (=>
          (not (is-core!option.Option./Some (%Poly%core!option.Option. x!)))
          (= (test_crate!X.State./State/a (%Poly%test_crate!X.State. post!)) 99)
        ))
        (=>
         (%B z!)
         (and
          (and
           (=>
            (is-core!option.Option./Some (%Poly%core!option.Option. v!))
            (= (test_crate!X.State./State/b (%Poly%test_crate!X.State. post!)) (%I (core!option.Option./Some/0
               (%Poly%core!option.Option. v!)
           ))))
           (=>
            (not (is-core!option.Option./Some (%Poly%core!option.Option. v!)))
            (= (test_crate!X.State./State/b (%Poly%test_crate!X.State. post!)) (test_crate!X.State./State/b
              (%Poly%test_crate!X.State. pre!)
          ))))
          (ite
           (is-core!option.Option./Some (%Poly%core!option.Option. x!))
           (ite
            (is-core!option.Option./Some (%Poly%core!option.Option. v!))
            (ext_eq false (TYPE%vstd!map.Map. $ INT $ INT) (Poly%vstd!map.Map<int./int.>. (test_crate!X.State./State/m
               (%Poly%test_crate!X.State. post!)
              )
             ) (vstd!map.impl&%0.insert.? $ INT $ INT (Poly%vstd!map.Map<int./int.>. (test_crate!X.State./State/m
                (%Poly%test_crate!X.State. pre!)
               )
              ) (I 0) (core!option.Option./Some/0 (%Poly%core!option.Option. x!))
            ))
            (ext_eq false (TYPE%vstd!map.Map. $ INT $ INT) (Poly%vstd!map.Map<int./int.>. (test_crate!X.State./State/m
               (%Poly%test_crate!X.State. post!)
              )
             ) (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT (Poly%vstd!map.Map<int./int.>.
                (test_crate!X.State./State/m (%Poly%test_crate!X.State. pre!))
               ) (I 0) (core!option.Option./Some/0 (%Poly%core!option.Option. x!))
              ) (I 1) (I 11)
           )))
           (ite
            (is-core!option.Option./Some (%Poly%core!option.Option. v!))
            (ext_eq false (TYPE%vstd!map.Map. $ INT $ INT) (Poly%vstd!map.Map<int./int.>. (test_crate!X.State./State/m
               (%Poly%test_crate!X.State. post!)
              )
             ) (Poly%vstd!map.Map<int./int.>. (test_crate!X.State./State/m (%Poly%test_crate!X.State.
                pre!
            ))))
            (ext_eq false (TYPE%vstd!map.Map. $ INT $ INT) (Poly%vstd!map.Map<int./int.>. (test_crate!X.State./State/m
               (%Poly%test_crate!X.State. post!)
              )
             ) (vstd!map.impl&%0.insert.? $ INT $ INT (Poly%vstd!map.Map<int./int.>. (test_crate!X.State./State/m
                (%Poly%test_crate!X.State. pre!)
               )
              ) (I 1) (I 11)
    ))))))))))
    :pattern ((test_crate!tr_weak.? pre! post! x! y! z! w! v!))
    :qid internal_test_crate!tr_weak.?_definition
    :skolemid skolem_internal_test_crate!tr_weak.?_definition
))))

;; Function-Axioms test_crate::tr_strong
(assert
 (fuel_bool_default fuel%test_crate!tr_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!tr_strong.)
  (forall ((pre! Poly) (post! Poly) (x! Poly) (y! Poly) (z! Poly) (w! Poly) (v! Poly))
   (!
    (= (test_crate!tr_strong.? pre! post! x! y! z! w! v!) (and
      (and
       (and
        (and
         (and
          (and
           (and
            (=>
             (is-core!option.Option./Some (%Poly%core!option.Option. x!))
             (%B w!)
            )
            (=>
             (not (is-core!option.Option./Some (%Poly%core!option.Option. x!)))
             (%B y!)
           ))
           (%B z!)
          )
          (=>
           (is-core!option.Option./Some (%Poly%core!option.Option. x!))
           (= (test_crate!X.State./State/a (%Poly%test_crate!X.State. post!)) (test_crate!X.State./State/a
             (%Poly%test_crate!X.State. pre!)
         ))))
         (=>
          (not (is-core!option.Option./Some (%Poly%core!option.Option. x!)))
          (= (test_crate!X.State./State/a (%Poly%test_crate!X.State. post!)) 99)
        ))
        (=>
         (is-core!option.Option./Some (%Poly%core!option.Option. v!))
         (= (test_crate!X.State./State/b (%Poly%test_crate!X.State. post!)) (%I (core!option.Option./Some/0
            (%Poly%core!option.Option. v!)
       )))))
       (=>
        (not (is-core!option.Option./Some (%Poly%core!option.Option. v!)))
        (= (test_crate!X.State./State/b (%Poly%test_crate!X.State. post!)) (test_crate!X.State./State/b
          (%Poly%test_crate!X.State. pre!)
      ))))
      (ite
       (is-core!option.Option./Some (%Poly%core!option.Option. x!))
       (ite
        (is-core!option.Option./Some (%Poly%core!option.Option. v!))
        (ext_eq false (TYPE%vstd!map.Map. $ INT $ INT) (Poly%vstd!map.Map<int./int.>. (test_crate!X.State./State/m
           (%Poly%test_crate!X.State. post!)
          )
         ) (vstd!map.impl&%0.insert.? $ INT $ INT (Poly%vstd!map.Map<int./int.>. (test_crate!X.State./State/m
            (%Poly%test_crate!X.State. pre!)
           )
          ) (I 0) (core!option.Option./Some/0 (%Poly%core!option.Option. x!))
        ))
        (ext_eq false (TYPE%vstd!map.Map. $ INT $ INT) (Poly%vstd!map.Map<int./int.>. (test_crate!X.State./State/m
           (%Poly%test_crate!X.State. post!)
          )
         ) (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT (Poly%vstd!map.Map<int./int.>.
            (test_crate!X.State./State/m (%Poly%test_crate!X.State. pre!))
           ) (I 0) (core!option.Option./Some/0 (%Poly%core!option.Option. x!))
          ) (I 1) (I 11)
       )))
       (ite
        (is-core!option.Option./Some (%Poly%core!option.Option. v!))
        (ext_eq false (TYPE%vstd!map.Map. $ INT $ INT) (Poly%vstd!map.Map<int./int.>. (test_crate!X.State./State/m
           (%Poly%test_crate!X.State. post!)
          )
         ) (Poly%vstd!map.Map<int./int.>. (test_crate!X.State./State/m (%Poly%test_crate!X.State.
            pre!
        ))))
        (ext_eq false (TYPE%vstd!map.Map. $ INT $ INT) (Poly%vstd!map.Map<int./int.>. (test_crate!X.State./State/m
           (%Poly%test_crate!X.State. post!)
          )
         ) (vstd!map.impl&%0.insert.? $ INT $ INT (Poly%vstd!map.Map<int./int.>. (test_crate!X.State./State/m
            (%Poly%test_crate!X.State. pre!)
           )
          ) (I 1) (I 11)
    ))))))
    :pattern ((test_crate!tr_strong.? pre! post! x! y! z! w! v!))
    :qid internal_test_crate!tr_strong.?_definition
    :skolemid skolem_internal_test_crate!tr_strong.?_definition
))))

;; Function-Axioms test_crate::tr_enabled
(assert
 (fuel_bool_default fuel%test_crate!tr_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!tr_enabled.)
  (forall ((pre! Poly) (x! Poly) (y! Poly) (z! Poly) (w! Poly) (v! Poly)) (!
    (= (test_crate!tr_enabled.? pre! x! y! z! w! v!) (=>
      (is-core!option.Option./Some (%Poly%core!option.Option. x!))
      (%B w!)
    ))
    :pattern ((test_crate!tr_enabled.? pre! x! y! z! w! v!))
    :qid internal_test_crate!tr_enabled.?_definition
    :skolemid skolem_internal_test_crate!tr_enabled.?_definition
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

;; Function-Specs test_crate::X::take_step::tr
(declare-fun req%test_crate!X.take_step.tr. (test_crate!X.State. core!option.Option.
  Bool Bool Bool core!option.Option.
 ) Bool
)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((pre! test_crate!X.State.) (x! core!option.Option.) (y! Bool) (z! Bool) (w!
    Bool
   ) (v! core!option.Option.)
  ) (!
   (= (req%test_crate!X.take_step.tr. pre! x! y! z! w! v!) (=>
     %%global_location_label%%2
     (and
      (test_crate!X.impl&%4.tr_enabled.? (Poly%test_crate!X.State. pre!) (Poly%core!option.Option.
        x!
       ) (B y!) (B z!) (B w!) (Poly%core!option.Option. v!)
      )
      (test_crate!X.impl&%4.invariant.? (Poly%test_crate!X.State. pre!))
   )))
   :pattern ((req%test_crate!X.take_step.tr. pre! x! y! z! w! v!))
   :qid internal_req__test_crate!X.take_step.tr._definition
   :skolemid skolem_internal_req__test_crate!X.take_step.tr._definition
)))
(declare-fun ens%test_crate!X.take_step.tr. (test_crate!X.State. core!option.Option.
  Bool Bool Bool core!option.Option. test_crate!X.State.
 ) Bool
)
(assert
 (forall ((pre! test_crate!X.State.) (x! core!option.Option.) (y! Bool) (z! Bool) (w!
    Bool
   ) (v! core!option.Option.) (post! test_crate!X.State.)
  ) (!
   (= (ens%test_crate!X.take_step.tr. pre! x! y! z! w! v! post!) (and
     (test_crate!X.impl&%4.tr_strong.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
       post!
      ) (Poly%core!option.Option. x!) (B y!) (B z!) (B w!) (Poly%core!option.Option. v!)
     )
     (test_crate!X.impl&%4.invariant.? (Poly%test_crate!X.State. post!))
   ))
   :pattern ((ens%test_crate!X.take_step.tr. pre! x! y! z! w! v! post!))
   :qid internal_ens__test_crate!X.take_step.tr._definition
   :skolemid skolem_internal_ens__test_crate!X.take_step.tr._definition
)))

;; Function-Specs test_crate::test
(declare-fun ens%test_crate!test. (test_crate!X.State. test_crate!X.State. core!option.Option.
  Bool Bool Bool core!option.Option.
 ) Bool
)
(assert
 (forall ((pre! test_crate!X.State.) (post! test_crate!X.State.) (x! core!option.Option.)
   (y! Bool) (z! Bool) (w! Bool) (v! core!option.Option.)
  ) (!
   (= (ens%test_crate!test. pre! post! x! y! z! w! v!) (= (test_crate!X.impl&%4.tr.? (Poly%test_crate!X.State.
       pre!
      ) (Poly%test_crate!X.State. post!) (Poly%core!option.Option. x!) (B y!) (B z!) (B
       w!
      ) (Poly%core!option.Option. v!)
     ) (test_crate!tr_weak.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State. post!)
      (Poly%core!option.Option. x!) (B y!) (B z!) (B w!) (Poly%core!option.Option. v!)
   )))
   :pattern ((ens%test_crate!test. pre! post! x! y! z! w! v!))
   :qid internal_ens__test_crate!test._definition
   :skolemid skolem_internal_ens__test_crate!test._definition
)))

;; Function-Def test_crate::test
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-double_scoped_updates_match/test.rs:96:7: 96:104 (#0)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!X.State.)
 (declare-const post! test_crate!X.State.)
 (declare-const x! core!option.Option.)
 (declare-const y! Bool)
 (declare-const z! Bool)
 (declare-const w! Bool)
 (declare-const v! core!option.Option.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%core!option.Option. x!) (TYPE%core!option.Option. $ INT))
 )
 (assert
  (has_type (Poly%core!option.Option. v!) (TYPE%core!option.Option. $ INT))
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (= (test_crate!X.impl&%4.tr.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
       post!
      ) (Poly%core!option.Option. x!) (B y!) (B z!) (B w!) (Poly%core!option.Option. v!)
     ) (test_crate!tr_weak.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State. post!)
      (Poly%core!option.Option. x!) (B y!) (B z!) (B w!) (Poly%core!option.Option. v!)
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::test2
(declare-fun ens%test_crate!test2. (test_crate!X.State. test_crate!X.State. core!option.Option.
  Bool Bool Bool core!option.Option.
 ) Bool
)
(assert
 (forall ((pre! test_crate!X.State.) (post! test_crate!X.State.) (x! core!option.Option.)
   (y! Bool) (z! Bool) (w! Bool) (v! core!option.Option.)
  ) (!
   (= (ens%test_crate!test2. pre! post! x! y! z! w! v!) (= (test_crate!X.impl&%4.tr_strong.?
      (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State. post!) (Poly%core!option.Option.
       x!
      ) (B y!) (B z!) (B w!) (Poly%core!option.Option. v!)
     ) (test_crate!tr_strong.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
       post!
      ) (Poly%core!option.Option. x!) (B y!) (B z!) (B w!) (Poly%core!option.Option. v!)
   )))
   :pattern ((ens%test_crate!test2. pre! post! x! y! z! w! v!))
   :qid internal_ens__test_crate!test2._definition
   :skolemid skolem_internal_ens__test_crate!test2._definition
)))

;; Function-Def test_crate::test2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-double_scoped_updates_match/test.rs:121:7: 121:105 (#0)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!X.State.)
 (declare-const post! test_crate!X.State.)
 (declare-const x! core!option.Option.)
 (declare-const y! Bool)
 (declare-const z! Bool)
 (declare-const w! Bool)
 (declare-const v! core!option.Option.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%core!option.Option. x!) (TYPE%core!option.Option. $ INT))
 )
 (assert
  (has_type (Poly%core!option.Option. v!) (TYPE%core!option.Option. $ INT))
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (or
    (and
     (=>
      (test_crate!X.impl&%4.tr_strong.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
        post!
       ) (Poly%core!option.Option. x!) (B y!) (B z!) (B w!) (Poly%core!option.Option. v!)
      )
      (=>
       (= tmp%1 (test_crate!tr_strong.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
          post!
         ) (Poly%core!option.Option. x!) (B y!) (B z!) (B w!) (Poly%core!option.Option. v!)
       ))
       (and
        (=>
         %%location_label%%0
         tmp%1
        )
        (=>
         tmp%1
         %%switch_label%%1
     ))))
     (=>
      (not (test_crate!X.impl&%4.tr_strong.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
         post!
        ) (Poly%core!option.Option. x!) (B y!) (B z!) (B w!) (Poly%core!option.Option. v!)
      ))
      %%switch_label%%1
    ))
    (and
     (not %%switch_label%%1)
     (or
      (and
       (=>
        (test_crate!tr_strong.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State. post!)
         (Poly%core!option.Option. x!) (B y!) (B z!) (B w!) (Poly%core!option.Option. v!)
        )
        (=>
         (= tmp%2 (test_crate!X.impl&%4.tr_strong.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
            post!
           ) (Poly%core!option.Option. x!) (B y!) (B z!) (B w!) (Poly%core!option.Option. v!)
         ))
         (and
          (=>
           %%location_label%%1
           tmp%2
          )
          (=>
           tmp%2
           %%switch_label%%0
       ))))
       (=>
        (not (test_crate!tr_strong.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
           post!
          ) (Poly%core!option.Option. x!) (B y!) (B z!) (B w!) (Poly%core!option.Option. v!)
        ))
        %%switch_label%%0
      ))
      (and
       (not %%switch_label%%0)
       (=>
        %%location_label%%2
        (= (test_crate!X.impl&%4.tr_strong.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
           post!
          ) (Poly%core!option.Option. x!) (B y!) (B z!) (B w!) (Poly%core!option.Option. v!)
         ) (test_crate!tr_strong.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
           post!
          ) (Poly%core!option.Option. x!) (B y!) (B z!) (B w!) (Poly%core!option.Option. v!)
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::test3
(declare-fun ens%test_crate!test3. (test_crate!X.State. core!option.Option. Bool Bool
  Bool core!option.Option.
 ) Bool
)
(assert
 (forall ((pre! test_crate!X.State.) (x! core!option.Option.) (y! Bool) (z! Bool) (w!
    Bool
   ) (v! core!option.Option.)
  ) (!
   (= (ens%test_crate!test3. pre! x! y! z! w! v!) (= (test_crate!X.impl&%4.tr_enabled.?
      (Poly%test_crate!X.State. pre!) (Poly%core!option.Option. x!) (B y!) (B z!) (B w!)
      (Poly%core!option.Option. v!)
     ) (test_crate!tr_enabled.? (Poly%test_crate!X.State. pre!) (Poly%core!option.Option.
       x!
      ) (B y!) (B z!) (B w!) (Poly%core!option.Option. v!)
   )))
   :pattern ((ens%test_crate!test3. pre! x! y! z! w! v!))
   :qid internal_ens__test_crate!test3._definition
   :skolemid skolem_internal_ens__test_crate!test3._definition
)))

;; Function-Def test_crate::test3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-double_scoped_updates_match/test.rs:137:7: 137:89 (#0)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!X.State.)
 (declare-const x! core!option.Option.)
 (declare-const y! Bool)
 (declare-const z! Bool)
 (declare-const w! Bool)
 (declare-const v! core!option.Option.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%core!option.Option. x!) (TYPE%core!option.Option. $ INT))
 )
 (assert
  (has_type (Poly%core!option.Option. v!) (TYPE%core!option.Option. $ INT))
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (= (test_crate!X.impl&%4.tr_enabled.? (Poly%test_crate!X.State. pre!) (Poly%core!option.Option.
       x!
      ) (B y!) (B z!) (B w!) (Poly%core!option.Option. v!)
     ) (test_crate!tr_enabled.? (Poly%test_crate!X.State. pre!) (Poly%core!option.Option.
       x!
      ) (B y!) (B z!) (B w!) (Poly%core!option.Option. v!)
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::test_take_step
(declare-fun req%test_crate!test_take_step. (test_crate!X.State. core!option.Option.
  Bool Bool Bool core!option.Option.
 ) Bool
)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((pre! test_crate!X.State.) (x! core!option.Option.) (y! Bool) (z! Bool) (w!
    Bool
   ) (v! core!option.Option.)
  ) (!
   (= (req%test_crate!test_take_step. pre! x! y! z! w! v!) (=>
     %%global_location_label%%3
     (=>
      (is-core!option.Option./Some x!)
      w!
   )))
   :pattern ((req%test_crate!test_take_step. pre! x! y! z! w! v!))
   :qid internal_req__test_crate!test_take_step._definition
   :skolemid skolem_internal_req__test_crate!test_take_step._definition
)))

;; Function-Def test_crate::test_take_step
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-double_scoped_updates_match/test.rs:141:7: 141:98 (#0)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!X.State.)
 (declare-const x! core!option.Option.)
 (declare-const y! Bool)
 (declare-const z! Bool)
 (declare-const w! Bool)
 (declare-const v! core!option.Option.)
 (declare-const tmp%1 Bool)
 (declare-const post@ test_crate!X.State.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%core!option.Option. x!) (TYPE%core!option.Option. $ INT))
 )
 (assert
  (has_type (Poly%core!option.Option. v!) (TYPE%core!option.Option. $ INT))
 )
 (assert
  (=>
   (is-core!option.Option./Some x!)
   w!
 ))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%test_crate!X.take_step.tr. pre! x! y! z! w! v!)
    )
    (=>
     (ens%test_crate!X.take_step.tr. pre! x! y! z! w! v! post@)
     (=>
      (= tmp%1 (test_crate!X.impl&%4.tr.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
         post@
        ) (Poly%core!option.Option. x!) (B y!) (B z!) (B w!) (Poly%core!option.Option. v!)
      ))
      (=>
       %%location_label%%1
       tmp%1
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::test_take_step2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-double_scoped_updates_match/test.rs:148:7: 148:99 (#0)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!X.State.)
 (declare-const x! core!option.Option.)
 (declare-const y! Bool)
 (declare-const z! Bool)
 (declare-const w! Bool)
 (declare-const v! core!option.Option.)
 (declare-const post@ test_crate!X.State.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%core!option.Option. x!) (TYPE%core!option.Option. $ INT))
 )
 (assert
  (has_type (Poly%core!option.Option. v!) (TYPE%core!option.Option. $ INT))
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (req%test_crate!X.take_step.tr. pre! x! y! z! w! v!)
 )))
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

;; Function-Recommends test_crate::test_take_step2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-double_scoped_updates_match/test.rs:148:7: 148:99 (#0)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!X.State.)
 (declare-const x! core!option.Option.)
 (declare-const y! Bool)
 (declare-const z! Bool)
 (declare-const w! Bool)
 (declare-const v! core!option.Option.)
 (declare-const post@ test_crate!X.State.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%core!option.Option. x!) (TYPE%core!option.Option. $ INT))
 )
 (assert
  (has_type (Poly%core!option.Option. v!) (TYPE%core!option.Option. $ INT))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
