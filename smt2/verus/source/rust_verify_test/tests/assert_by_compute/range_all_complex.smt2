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
 (= SZ 64)
)
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
(declare-const fuel%vstd!std_specs.bits.axiom_u64_leading_zeros. FuelId)
(declare-const fuel%vstd!compute.range_all_spec_rec. FuelId)
(declare-const fuel%vstd!compute.impl&%0.all_spec. FuelId)
(declare-const fuel%vstd!compute.all_spec_implies. FuelId)
(declare-const fuel%test_crate!VERUS_layout_of_usize. FuelId)
(declare-const fuel%test_crate!BIN_HUGE. FuelId)
(declare-const fuel%test_crate!valid_bin_idx. FuelId)
(declare-const fuel%test_crate!pow2. FuelId)
(declare-const fuel%test_crate!smallest_bin_fitting_size. FuelId)
(declare-const fuel%test_crate!property_bounds_for_smallest_bitting_size. FuelId)
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
 (distinct fuel%vstd!std_specs.bits.axiom_u64_leading_zeros. fuel%vstd!compute.range_all_spec_rec.
  fuel%vstd!compute.impl&%0.all_spec. fuel%vstd!compute.all_spec_implies. fuel%test_crate!VERUS_layout_of_usize.
  fuel%test_crate!BIN_HUGE. fuel%test_crate!valid_bin_idx. fuel%test_crate!pow2. fuel%test_crate!smallest_bin_fitting_size.
  fuel%test_crate!property_bounds_for_smallest_bitting_size. fuel%vstd!array.group_array_axioms.
  fuel%vstd!map.group_map_axioms. fuel%vstd!multiset.group_multiset_axioms. fuel%vstd!raw_ptr.group_raw_ptr_axioms.
  fuel%vstd!seq.group_seq_axioms. fuel%vstd!seq_lib.group_seq_lib_default. fuel%vstd!set.group_set_axioms.
  fuel%vstd!set_lib.group_set_lib_axioms. fuel%vstd!slice.group_slice_axioms. fuel%vstd!string.group_string_axioms.
  fuel%vstd!std_specs.bits.group_bits_axioms. fuel%vstd!std_specs.control_flow.group_control_flow_axioms.
  fuel%vstd!std_specs.range.group_range_axioms. fuel%vstd!std_specs.vec.group_vec_axioms.
  fuel%vstd!group_vstd_default.
))
(assert
 (=>
  (fuel_bool_default fuel%vstd!std_specs.bits.group_bits_axioms.)
  (fuel_bool_default fuel%vstd!std_specs.bits.axiom_u64_leading_zeros.)
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
   (fuel_bool_default fuel%vstd!compute.all_spec_implies.)
)))

;; Datatypes
(declare-datatypes ((core!ops.range.Range. 0) (tuple%0. 0)) (((core!ops.range.Range./Range
    (core!ops.range.Range./Range/?start Poly) (core!ops.range.Range./Range/?end Poly)
   )
  ) ((tuple%0./tuple%0))
))
(declare-fun core!ops.range.Range./Range/start (core!ops.range.Range.) Poly)
(declare-fun core!ops.range.Range./Range/end (core!ops.range.Range.) Poly)
(declare-fun TYPE%fun%1. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%core!ops.range.Range. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%fun%1. (%%Function%%) Poly)
(declare-fun %Poly%fun%1. (Poly) %%Function%%)
(declare-fun Poly%core!ops.range.Range. (core!ops.range.Range.) Poly)
(declare-fun %Poly%core!ops.range.Range. (Poly) core!ops.range.Range.)
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
 (forall ((x core!ops.range.Range.)) (!
   (= x (%Poly%core!ops.range.Range. (Poly%core!ops.range.Range. x)))
   :pattern ((Poly%core!ops.range.Range. x))
   :qid internal_core__ops__range__Range_box_axiom_definition
   :skolemid skolem_internal_core__ops__range__Range_box_axiom_definition
)))
(assert
 (forall ((Idx&. Dcr) (Idx& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!ops.range.Range. Idx&. Idx&))
    (= x (Poly%core!ops.range.Range. (%Poly%core!ops.range.Range. x)))
   )
   :pattern ((has_type x (TYPE%core!ops.range.Range. Idx&. Idx&)))
   :qid internal_core__ops__range__Range_unbox_axiom_definition
   :skolemid skolem_internal_core__ops__range__Range_unbox_axiom_definition
)))
(assert
 (forall ((Idx&. Dcr) (Idx& Type) (_start! Poly) (_end! Poly)) (!
   (=>
    (and
     (has_type _start! Idx&)
     (has_type _end! Idx&)
    )
    (has_type (Poly%core!ops.range.Range. (core!ops.range.Range./Range _start! _end!))
     (TYPE%core!ops.range.Range. Idx&. Idx&)
   ))
   :pattern ((has_type (Poly%core!ops.range.Range. (core!ops.range.Range./Range _start!
       _end!
      )
     ) (TYPE%core!ops.range.Range. Idx&. Idx&)
   ))
   :qid internal_core!ops.range.Range./Range_constructor_definition
   :skolemid skolem_internal_core!ops.range.Range./Range_constructor_definition
)))
(assert
 (forall ((x core!ops.range.Range.)) (!
   (= (core!ops.range.Range./Range/start x) (core!ops.range.Range./Range/?start x))
   :pattern ((core!ops.range.Range./Range/start x))
   :qid internal_core!ops.range.Range./Range/start_accessor_definition
   :skolemid skolem_internal_core!ops.range.Range./Range/start_accessor_definition
)))
(assert
 (forall ((Idx&. Dcr) (Idx& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!ops.range.Range. Idx&. Idx&))
    (has_type (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. x)) Idx&)
   )
   :pattern ((core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. x)) (has_type
     x (TYPE%core!ops.range.Range. Idx&. Idx&)
   ))
   :qid internal_core!ops.range.Range./Range/start_invariant_definition
   :skolemid skolem_internal_core!ops.range.Range./Range/start_invariant_definition
)))
(assert
 (forall ((x core!ops.range.Range.)) (!
   (= (core!ops.range.Range./Range/end x) (core!ops.range.Range./Range/?end x))
   :pattern ((core!ops.range.Range./Range/end x))
   :qid internal_core!ops.range.Range./Range/end_accessor_definition
   :skolemid skolem_internal_core!ops.range.Range./Range/end_accessor_definition
)))
(assert
 (forall ((Idx&. Dcr) (Idx& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!ops.range.Range. Idx&. Idx&))
    (has_type (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. x)) Idx&)
   )
   :pattern ((core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. x)) (has_type
     x (TYPE%core!ops.range.Range. Idx&. Idx&)
   ))
   :qid internal_core!ops.range.Range./Range/end_invariant_definition
   :skolemid skolem_internal_core!ops.range.Range./Range/end_invariant_definition
)))
(assert
 (forall ((x core!ops.range.Range.)) (!
   (=>
    (is-core!ops.range.Range./Range x)
    (height_lt (height (core!ops.range.Range./Range/start x)) (height (Poly%core!ops.range.Range.
       x
   ))))
   :pattern ((height (core!ops.range.Range./Range/start x)))
   :qid prelude_datatype_height_core!ops.range.Range./Range/start
   :skolemid skolem_prelude_datatype_height_core!ops.range.Range./Range/start
)))
(assert
 (forall ((x core!ops.range.Range.)) (!
   (=>
    (is-core!ops.range.Range./Range x)
    (height_lt (height (core!ops.range.Range./Range/end x)) (height (Poly%core!ops.range.Range.
       x
   ))))
   :pattern ((height (core!ops.range.Range./Range/end x)))
   :qid prelude_datatype_height_core!ops.range.Range./Range/end
   :skolemid skolem_prelude_datatype_height_core!ops.range.Range./Range/end
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

;; Traits
(declare-fun tr_bound%vstd!compute.RangeAll. (Dcr Type) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%vstd!compute.RangeAll. Self%&. Self%&))
   :qid internal_vstd__compute__RangeAll_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__compute__RangeAll_trait_type_bounds_definition
)))

;; Function-Decl vstd::std_specs::bits::u64_leading_zeros
(declare-fun vstd!std_specs.bits.u64_leading_zeros.? (Poly) Int)

;; Function-Decl vstd::compute::RangeAll::all_spec
(declare-fun vstd!compute.RangeAll.all_spec.? (Dcr Type Poly Poly) Poly)
(declare-fun vstd!compute.RangeAll.all_spec%default%.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::compute::range_all_spec_rec
(declare-fun vstd!compute.range_all_spec_rec.? (Poly Poly) Bool)
(declare-fun vstd!compute.rec%range_all_spec_rec.? (Poly Poly Fuel) Bool)

;; Function-Decl vstd::layout::size_of
(declare-fun vstd!layout.size_of.? (Dcr Type) Int)

;; Function-Decl test_crate::BIN_HUGE
(declare-fun test_crate!BIN_HUGE.? () Int)

;; Function-Decl test_crate::valid_bin_idx
(declare-fun test_crate!valid_bin_idx.? (Poly) Bool)

;; Function-Decl test_crate::pow2
(declare-fun test_crate!pow2.? (Poly) Int)
(declare-fun test_crate!rec%pow2.? (Poly Fuel) Int)

;; Function-Decl test_crate::smallest_bin_fitting_size
(declare-fun test_crate!smallest_bin_fitting_size.? (Poly) Int)

;; Function-Decl test_crate::property_bounds_for_smallest_bitting_size
(declare-fun test_crate!property_bounds_for_smallest_bitting_size.? (Poly) Bool)

;; Broadcast vstd::std_specs::bits::axiom_u64_leading_zeros
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.bits.axiom_u64_leading_zeros.)
  (forall ((i! Poly)) (!
    (=>
     (has_type i! (UINT 64))
     (and
      (and
       (and
        (and
         (let
          ((tmp%%$ (vstd!std_specs.bits.u64_leading_zeros.? i!)))
          (and
           (<= 0 tmp%%$)
           (<= tmp%%$ 64)
         ))
         (= (= (%I i!) 0) (= (vstd!std_specs.bits.u64_leading_zeros.? i!) 64))
        )
        (=>
         (let
          ((tmp%%$ (vstd!std_specs.bits.u64_leading_zeros.? i!)))
          (and
           (<= 0 tmp%%$)
           (< tmp%%$ 64)
         ))
         (not (= (uClip 64 (bitand (I (uClip 64 (bitshr (I (%I i!)) (I (uClip 64 (Sub 63 (uClip 64 (vstd!std_specs.bits.u64_leading_zeros.?
                     i!
              )))))))
             ) (I 1)
            )
           ) 0
       ))))
       (= (uClip 64 (bitshr (I (%I i!)) (I (uClip 64 (Sub 64 (uClip 64 (vstd!std_specs.bits.u64_leading_zeros.?
               i!
         ))))))
        ) 0
      ))
      (forall ((j$ Poly)) (!
        (=>
         (has_type j$ (UINT 64))
         (=>
          (and
           (<= (Sub 64 (vstd!std_specs.bits.u64_leading_zeros.? i!)) (%I j$))
           (< (%I j$) 64)
          )
          (= (uClip 64 (bitand (I (uClip 64 (bitshr (I (%I i!)) (I (%I j$))))) (I 1))) 0)
        ))
        :pattern ((uClip 64 (bitshr (I (%I i!)) (I (%I j$)))))
        :qid user_vstd__std_specs__bits__axiom_u64_leading_zeros_0
        :skolemid skolem_user_vstd__std_specs__bits__axiom_u64_leading_zeros_0
    ))))
    :pattern ((vstd!std_specs.bits.u64_leading_zeros.? i!))
    :qid user_vstd__std_specs__bits__axiom_u64_leading_zeros_1
    :skolemid skolem_user_vstd__std_specs__bits__axiom_u64_leading_zeros_1
))))

;; Function-Axioms vstd::compute::RangeAll::all_spec
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (p! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type p! (TYPE%fun%1. $ INT $ BOOL))
    )
    (has_type (vstd!compute.RangeAll.all_spec.? Self%&. Self%& self! p!) BOOL)
   )
   :pattern ((vstd!compute.RangeAll.all_spec.? Self%&. Self%& self! p!))
   :qid internal_vstd!compute.RangeAll.all_spec.?_pre_post_definition
   :skolemid skolem_internal_vstd!compute.RangeAll.all_spec.?_pre_post_definition
)))

;; Function-Axioms vstd::compute::range_all_spec_rec
(assert
 (fuel_bool_default fuel%vstd!compute.range_all_spec_rec.)
)
(declare-const fuel_nat%vstd!compute.range_all_spec_rec. Fuel)
(assert
 (forall ((r! Poly) (p! Poly) (fuel% Fuel)) (!
   (= (vstd!compute.rec%range_all_spec_rec.? r! p! fuel%) (vstd!compute.rec%range_all_spec_rec.?
     r! p! zero
   ))
   :pattern ((vstd!compute.rec%range_all_spec_rec.? r! p! fuel%))
   :qid internal_vstd!compute.range_all_spec_rec._fuel_to_zero_definition
   :skolemid skolem_internal_vstd!compute.range_all_spec_rec._fuel_to_zero_definition
)))
(assert
 (forall ((r! Poly) (p! Poly) (fuel% Fuel)) (!
   (=>
    (and
     (has_type r! (TYPE%core!ops.range.Range. $ INT))
     (has_type p! (TYPE%fun%1. $ INT $ BOOL))
    )
    (= (vstd!compute.rec%range_all_spec_rec.? r! p! (succ fuel%)) (=>
      (not (>= (%I (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. r!)))
        (%I (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. r!)))
      ))
      (and
       (%B (%%apply%%0 (%Poly%fun%1. p!) (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range.
           r!
       ))))
       (vstd!compute.rec%range_all_spec_rec.? (Poly%core!ops.range.Range. (core!ops.range.Range./Range
          (I (Add (%I (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. r!))) 1))
          (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. r!))
         )
        ) p! fuel%
   )))))
   :pattern ((vstd!compute.rec%range_all_spec_rec.? r! p! (succ fuel%)))
   :qid internal_vstd!compute.range_all_spec_rec._fuel_to_body_definition
   :skolemid skolem_internal_vstd!compute.range_all_spec_rec._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd!compute.range_all_spec_rec.)
  (forall ((r! Poly) (p! Poly)) (!
    (=>
     (and
      (has_type r! (TYPE%core!ops.range.Range. $ INT))
      (has_type p! (TYPE%fun%1. $ INT $ BOOL))
     )
     (= (vstd!compute.range_all_spec_rec.? r! p!) (vstd!compute.rec%range_all_spec_rec.?
       r! p! (succ fuel_nat%vstd!compute.range_all_spec_rec.)
    )))
    :pattern ((vstd!compute.range_all_spec_rec.? r! p!))
    :qid internal_vstd!compute.range_all_spec_rec.?_definition
    :skolemid skolem_internal_vstd!compute.range_all_spec_rec.?_definition
))))

;; Function-Axioms vstd::compute::impl&%0::all_spec
(assert
 (fuel_bool_default fuel%vstd!compute.impl&%0.all_spec.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!compute.impl&%0.all_spec.)
  (forall ((self! Poly) (p! Poly)) (!
    (= (vstd!compute.RangeAll.all_spec.? $ (TYPE%core!ops.range.Range. $ INT) self! p!)
     (B (vstd!compute.range_all_spec_rec.? self! p!))
    )
    :pattern ((vstd!compute.RangeAll.all_spec.? $ (TYPE%core!ops.range.Range. $ INT) self!
      p!
    ))
    :qid internal_vstd!compute.RangeAll.all_spec.?_definition
    :skolemid skolem_internal_vstd!compute.RangeAll.all_spec.?_definition
))))

;; Broadcast vstd::compute::all_spec_implies
(assert
 (=>
  (fuel_bool fuel%vstd!compute.all_spec_implies.)
  (forall ((r! Poly) (p! Poly)) (!
    (=>
     (and
      (has_type r! (TYPE%core!ops.range.Range. $ INT))
      (has_type p! (TYPE%fun%1. $ INT $ BOOL))
     )
     (=>
      (%B (vstd!compute.RangeAll.all_spec.? $ (TYPE%core!ops.range.Range. $ INT) r! p!))
      (forall ((i$ Poly)) (!
        (=>
         (has_type i$ INT)
         (=>
          (and
           (<= (%I (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. r!))) (%I i$))
           (< (%I i$) (%I (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. r!))))
          )
          (%B (%%apply%%0 (%Poly%fun%1. p!) i$))
        ))
        :pattern ((%%apply%%0 (%Poly%fun%1. p!) i$))
        :qid user_vstd__compute__all_spec_implies_2
        :skolemid skolem_user_vstd__compute__all_spec_implies_2
    ))))
    :pattern ((vstd!compute.RangeAll.all_spec.? $ (TYPE%core!ops.range.Range. $ INT) r!
      p!
    ))
    :qid user_vstd__compute__all_spec_implies_3
    :skolemid skolem_user_vstd__compute__all_spec_implies_3
))))

;; Function-Axioms vstd::layout::size_of
(assert
 (forall ((V&. Dcr) (V& Type)) (!
   (<= 0 (vstd!layout.size_of.? V&. V&))
   :pattern ((vstd!layout.size_of.? V&. V&))
   :qid internal_vstd!layout.size_of.?_pre_post_definition
   :skolemid skolem_internal_vstd!layout.size_of.?_pre_post_definition
)))

;; Broadcast test_crate::VERUS_layout_of_usize
(assert
 (= (vstd!layout.size_of.? $ (UINT SZ)) 8)
)

;; Function-Def test_crate::BIN_HUGE
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/assert_by_compute-161a97ac6c96a80b-range_all_complex/test.rs:21:1: 21:30 (#0)
(get-info :all-statistics)
(push)
 (declare-const %return! Int)
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

;; Function-Axioms test_crate::BIN_HUGE
(assert
 (fuel_bool_default fuel%test_crate!BIN_HUGE.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!BIN_HUGE.)
  (= test_crate!BIN_HUGE.? 73)
))
(assert
 (uInv 64 test_crate!BIN_HUGE.?)
)

;; Function-Axioms test_crate::valid_bin_idx
(assert
 (fuel_bool_default fuel%test_crate!valid_bin_idx.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!valid_bin_idx.)
  (forall ((bin_idx! Poly)) (!
    (= (test_crate!valid_bin_idx.? bin_idx!) (and
      (<= 1 (%I bin_idx!))
      (<= (%I bin_idx!) test_crate!BIN_HUGE.?)
    ))
    :pattern ((test_crate!valid_bin_idx.? bin_idx!))
    :qid internal_test_crate!valid_bin_idx.?_definition
    :skolemid skolem_internal_test_crate!valid_bin_idx.?_definition
))))

;; Spec-Termination test_crate::pow2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/assert_by_compute-161a97ac6c96a80b-range_all_complex/test.rs:27:1: 27:37 (#0)
(get-info :all-statistics)
(push)
 (declare-const i! Poly)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Poly)
 (declare-const tmp%3 Int)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type i! INT)
 )
 (declare-const %%switch_label%%0 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= decrease%init0 (%I i!))
    (or
     (and
      (=>
       (<= (%I i!) 0)
       (=>
        (= tmp%3 1)
        %%switch_label%%0
      ))
      (=>
       (not (<= (%I i!) 0))
       (=>
        (= tmp%2 (I (Sub (%I i!) 1)))
        (and
         (=>
          %%location_label%%0
          (check_decrease_int (let
            ((i!$0 (%I tmp%2)))
            i!$0
           ) decrease%init0 false
         ))
         (=>
          (<= 0 tmp%1)
          (=>
           (= tmp%1 (test_crate!pow2.? (I (Sub (%I i!) 1))))
           (=>
            (= tmp%3 (nClip (Mul tmp%1 2)))
            %%switch_label%%0
     )))))))
     (not %%switch_label%%0)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Axioms test_crate::pow2
(assert
 (fuel_bool_default fuel%test_crate!pow2.)
)
(declare-const fuel_nat%test_crate!pow2. Fuel)
(assert
 (forall ((i! Poly) (fuel% Fuel)) (!
   (= (test_crate!rec%pow2.? i! fuel%) (test_crate!rec%pow2.? i! zero))
   :pattern ((test_crate!rec%pow2.? i! fuel%))
   :qid internal_test_crate!pow2._fuel_to_zero_definition
   :skolemid skolem_internal_test_crate!pow2._fuel_to_zero_definition
)))
(assert
 (forall ((i! Poly) (fuel% Fuel)) (!
   (=>
    (has_type i! INT)
    (= (test_crate!rec%pow2.? i! (succ fuel%)) (ite
      (<= (%I i!) 0)
      1
      (nClip (Mul (test_crate!rec%pow2.? (I (Sub (%I i!) 1)) fuel%) 2))
   )))
   :pattern ((test_crate!rec%pow2.? i! (succ fuel%)))
   :qid internal_test_crate!pow2._fuel_to_body_definition
   :skolemid skolem_internal_test_crate!pow2._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%test_crate!pow2.)
  (forall ((i! Poly)) (!
    (=>
     (has_type i! INT)
     (= (test_crate!pow2.? i!) (test_crate!rec%pow2.? i! (succ fuel_nat%test_crate!pow2.)))
    )
    :pattern ((test_crate!pow2.? i!))
    :qid internal_test_crate!pow2.?_definition
    :skolemid skolem_internal_test_crate!pow2.?_definition
))))
(assert
 (forall ((i! Poly)) (!
   (=>
    (has_type i! INT)
    (<= 0 (test_crate!pow2.? i!))
   )
   :pattern ((test_crate!pow2.? i!))
   :qid internal_test_crate!pow2.?_pre_post_definition
   :skolemid skolem_internal_test_crate!pow2.?_pre_post_definition
)))

;; Function-Axioms test_crate::smallest_bin_fitting_size
(assert
 (fuel_bool_default fuel%test_crate!smallest_bin_fitting_size.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!smallest_bin_fitting_size.)
  (forall ((size! Poly)) (!
    (= (test_crate!smallest_bin_fitting_size.? size!) (let
      ((bytes_per_word$ (uClip 32 (EucDiv SZ 8))))
      (let
       ((wsize$ (EucDiv (Sub (Add (%I size!) bytes_per_word$) 1) bytes_per_word$)))
       (ite
        (<= wsize$ 1)
        1
        (ite
         (<= wsize$ 8)
         wsize$
         (ite
          (> wsize$ 524288)
          test_crate!BIN_HUGE.?
          (let
           ((w$ (uClip 64 (Sub wsize$ 1))))
           (let
            ((lz$ (vstd!std_specs.bits.u64_leading_zeros.? (I w$))))
            (let
             ((b$ (uClip 8 (Sub (Sub SZ 1) lz$))))
             (let
              ((shifted$ (uClip 8 (uClip 64 (bitshr (I w$) (I (uClip 64 (Sub b$ 2))))))))
              (let
               ((bin_idx$ (Sub (Add (Mul b$ 4) (uClip 8 (bitand (I shifted$) (I 3)))) 3)))
               bin_idx$
    )))))))))))
    :pattern ((test_crate!smallest_bin_fitting_size.? size!))
    :qid internal_test_crate!smallest_bin_fitting_size.?_definition
    :skolemid skolem_internal_test_crate!smallest_bin_fitting_size.?_definition
))))

;; Function-Axioms test_crate::property_bounds_for_smallest_bitting_size
(assert
 (fuel_bool_default fuel%test_crate!property_bounds_for_smallest_bitting_size.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!property_bounds_for_smallest_bitting_size.)
  (forall ((size! Poly)) (!
    (= (test_crate!property_bounds_for_smallest_bitting_size.? size!) (test_crate!valid_bin_idx.?
      (I (test_crate!smallest_bin_fitting_size.? size!))
    ))
    :pattern ((test_crate!property_bounds_for_smallest_bitting_size.? size!))
    :qid internal_test_crate!property_bounds_for_smallest_bitting_size.?_definition
    :skolemid skolem_internal_test_crate!property_bounds_for_smallest_bitting_size.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!compute.RangeAll. $ (TYPE%core!ops.range.Range. $ INT))
)

;; Function-Specs test_crate::bounds_for_smallest_bin_fitting_size_alt
(declare-fun req%test_crate!bounds_for_smallest_bin_fitting_size_alt. (Int) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((size! Int)) (!
   (= (req%test_crate!bounds_for_smallest_bin_fitting_size_alt. size!) (=>
     %%global_location_label%%0
     (and
      (<= 0 size!)
      (<= size! 10)
   )))
   :pattern ((req%test_crate!bounds_for_smallest_bin_fitting_size_alt. size!))
   :qid internal_req__test_crate!bounds_for_smallest_bin_fitting_size_alt._definition
   :skolemid skolem_internal_req__test_crate!bounds_for_smallest_bin_fitting_size_alt._definition
)))
(declare-fun ens%test_crate!bounds_for_smallest_bin_fitting_size_alt. (Int) Bool)
(assert
 (forall ((size! Int)) (!
   (= (ens%test_crate!bounds_for_smallest_bin_fitting_size_alt. size!) (test_crate!valid_bin_idx.?
     (I (test_crate!smallest_bin_fitting_size.? (I size!)))
   ))
   :pattern ((ens%test_crate!bounds_for_smallest_bin_fitting_size_alt. size!))
   :qid internal_ens__test_crate!bounds_for_smallest_bin_fitting_size_alt._definition
   :skolemid skolem_internal_ens__test_crate!bounds_for_smallest_bin_fitting_size_alt._definition
)))

;; Function-Def test_crate::bounds_for_smallest_bin_fitting_size_alt
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/assert_by_compute-161a97ac6c96a80b-range_all_complex/test.rs:62:1: 62:65 (#0)
(get-info :all-statistics)
(push)
 (declare-const size! Int)
 (declare-const tmp%1 Bool)
 (declare-const prop@ %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (and
   (<= 0 size!)
   (<= size! 10)
 ))
 (declare-fun %%lambda%%0 () %%Function%%)
 (assert
  (forall ((v$ Poly)) (!
    (= (%%apply%%0 %%lambda%%0 v$) (B (test_crate!property_bounds_for_smallest_bitting_size.?
       v$
    )))
    :pattern ((%%apply%%0 %%lambda%%0 v$))
 )))
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     true
    )
    (=>
     (%B (let
       ((r$ (core!ops.range.Range./Range (I 0) (I 11))))
       (vstd!compute.RangeAll.all_spec.? $ (TYPE%core!ops.range.Range. $ INT) (Poly%core!ops.range.Range.
         r$
        ) (Poly%fun%1. (mk_fun %%lambda%%0))
     )))
     (=>
      (= prop@ (mk_fun %%lambda%%0))
      (=>
       (= tmp%1 (%B (%%apply%%0 prop@ (I size!))))
       (and
        (=>
         %%location_label%%1
         tmp%1
        )
        (=>
         tmp%1
         (=>
          %%location_label%%2
          (test_crate!valid_bin_idx.? (I (test_crate!smallest_bin_fitting_size.? (I size!))))
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
