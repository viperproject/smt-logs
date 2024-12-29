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

;; MODULE 'module vstd::pcm_lib'

;; Fuel
(declare-const fuel%vstd.array.array_view. FuelId)
(declare-const fuel%vstd.array.impl&%0.view. FuelId)
(declare-const fuel%vstd.array.impl&%2.spec_index. FuelId)
(declare-const fuel%vstd.array.lemma_array_index. FuelId)
(declare-const fuel%vstd.array.array_len_matches_n. FuelId)
(declare-const fuel%vstd.map.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd.map.axiom_map_index_decreases_finite. FuelId)
(declare-const fuel%vstd.map.axiom_map_index_decreases_infinite. FuelId)
(declare-const fuel%vstd.map.axiom_map_empty. FuelId)
(declare-const fuel%vstd.map.axiom_map_insert_domain. FuelId)
(declare-const fuel%vstd.map.axiom_map_insert_same. FuelId)
(declare-const fuel%vstd.map.axiom_map_insert_different. FuelId)
(declare-const fuel%vstd.map.axiom_map_remove_domain. FuelId)
(declare-const fuel%vstd.map.axiom_map_remove_different. FuelId)
(declare-const fuel%vstd.map.axiom_map_ext_equal. FuelId)
(declare-const fuel%vstd.map.axiom_map_ext_equal_deep. FuelId)
(declare-const fuel%vstd.pcm.frame_preserving_update. FuelId)
(declare-const fuel%vstd.pcm_lib.combine_values. FuelId)
(declare-const fuel%vstd.seq.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd.seq.impl&%0.skip. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_index_decreases. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_subrange_decreases. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_new_len. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_new_index. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_ext_equal. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_ext_equal_deep. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_subrange_len. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_subrange_index. FuelId)
(declare-const fuel%vstd.set.axiom_set_empty. FuelId)
(declare-const fuel%vstd.set.axiom_set_insert_same. FuelId)
(declare-const fuel%vstd.set.axiom_set_insert_different. FuelId)
(declare-const fuel%vstd.set.axiom_set_remove_same. FuelId)
(declare-const fuel%vstd.set.axiom_set_remove_insert. FuelId)
(declare-const fuel%vstd.set.axiom_set_remove_different. FuelId)
(declare-const fuel%vstd.set.axiom_set_ext_equal. FuelId)
(declare-const fuel%vstd.set.axiom_set_ext_equal_deep. FuelId)
(declare-const fuel%vstd.set.axiom_set_empty_finite. FuelId)
(declare-const fuel%vstd.set.axiom_set_insert_finite. FuelId)
(declare-const fuel%vstd.set.axiom_set_remove_finite. FuelId)
(declare-const fuel%vstd.view.impl&%0.view. FuelId)
(declare-const fuel%vstd.view.impl&%2.view. FuelId)
(declare-const fuel%vstd.view.impl&%4.view. FuelId)
(declare-const fuel%vstd.view.impl&%16.view. FuelId)
(declare-const fuel%vstd.view.impl&%34.view. FuelId)
(declare-const fuel%vstd.array.group_array_axioms. FuelId)
(declare-const fuel%vstd.map.group_map_axioms. FuelId)
(declare-const fuel%vstd.multiset.group_multiset_axioms. FuelId)
(declare-const fuel%vstd.raw_ptr.group_raw_ptr_axioms. FuelId)
(declare-const fuel%vstd.seq.group_seq_axioms. FuelId)
(declare-const fuel%vstd.seq_lib.group_seq_lib_default. FuelId)
(declare-const fuel%vstd.set.group_set_axioms. FuelId)
(declare-const fuel%vstd.set_lib.group_set_lib_axioms. FuelId)
(declare-const fuel%vstd.slice.group_slice_axioms. FuelId)
(declare-const fuel%vstd.string.group_string_axioms. FuelId)
(declare-const fuel%vstd.std_specs.bits.group_bits_axioms. FuelId)
(declare-const fuel%vstd.std_specs.control_flow.group_control_flow_axioms. FuelId)
(declare-const fuel%vstd.std_specs.range.group_range_axioms. FuelId)
(declare-const fuel%vstd.group_vstd_default. FuelId)
(assert
 (distinct fuel%vstd.array.array_view. fuel%vstd.array.impl&%0.view. fuel%vstd.array.impl&%2.spec_index.
  fuel%vstd.array.lemma_array_index. fuel%vstd.array.array_len_matches_n. fuel%vstd.map.impl&%0.spec_index.
  fuel%vstd.map.axiom_map_index_decreases_finite. fuel%vstd.map.axiom_map_index_decreases_infinite.
  fuel%vstd.map.axiom_map_empty. fuel%vstd.map.axiom_map_insert_domain. fuel%vstd.map.axiom_map_insert_same.
  fuel%vstd.map.axiom_map_insert_different. fuel%vstd.map.axiom_map_remove_domain.
  fuel%vstd.map.axiom_map_remove_different. fuel%vstd.map.axiom_map_ext_equal. fuel%vstd.map.axiom_map_ext_equal_deep.
  fuel%vstd.pcm.frame_preserving_update. fuel%vstd.pcm_lib.combine_values. fuel%vstd.seq.impl&%0.spec_index.
  fuel%vstd.seq.impl&%0.skip. fuel%vstd.seq.axiom_seq_index_decreases. fuel%vstd.seq.axiom_seq_subrange_decreases.
  fuel%vstd.seq.axiom_seq_new_len. fuel%vstd.seq.axiom_seq_new_index. fuel%vstd.seq.axiom_seq_ext_equal.
  fuel%vstd.seq.axiom_seq_ext_equal_deep. fuel%vstd.seq.axiom_seq_subrange_len. fuel%vstd.seq.axiom_seq_subrange_index.
  fuel%vstd.set.axiom_set_empty. fuel%vstd.set.axiom_set_insert_same. fuel%vstd.set.axiom_set_insert_different.
  fuel%vstd.set.axiom_set_remove_same. fuel%vstd.set.axiom_set_remove_insert. fuel%vstd.set.axiom_set_remove_different.
  fuel%vstd.set.axiom_set_ext_equal. fuel%vstd.set.axiom_set_ext_equal_deep. fuel%vstd.set.axiom_set_empty_finite.
  fuel%vstd.set.axiom_set_insert_finite. fuel%vstd.set.axiom_set_remove_finite. fuel%vstd.view.impl&%0.view.
  fuel%vstd.view.impl&%2.view. fuel%vstd.view.impl&%4.view. fuel%vstd.view.impl&%16.view.
  fuel%vstd.view.impl&%34.view. fuel%vstd.array.group_array_axioms. fuel%vstd.map.group_map_axioms.
  fuel%vstd.multiset.group_multiset_axioms. fuel%vstd.raw_ptr.group_raw_ptr_axioms.
  fuel%vstd.seq.group_seq_axioms. fuel%vstd.seq_lib.group_seq_lib_default. fuel%vstd.set.group_set_axioms.
  fuel%vstd.set_lib.group_set_lib_axioms. fuel%vstd.slice.group_slice_axioms. fuel%vstd.string.group_string_axioms.
  fuel%vstd.std_specs.bits.group_bits_axioms. fuel%vstd.std_specs.control_flow.group_control_flow_axioms.
  fuel%vstd.std_specs.range.group_range_axioms. fuel%vstd.group_vstd_default.
))
(assert
 (=>
  (fuel_bool_default fuel%vstd.array.group_array_axioms.)
  (and
   (fuel_bool_default fuel%vstd.array.array_len_matches_n.)
   (fuel_bool_default fuel%vstd.array.lemma_array_index.)
)))
(assert
 (=>
  (fuel_bool_default fuel%vstd.map.group_map_axioms.)
  (and
   (fuel_bool_default fuel%vstd.map.axiom_map_index_decreases_finite.)
   (fuel_bool_default fuel%vstd.map.axiom_map_index_decreases_infinite.)
   (fuel_bool_default fuel%vstd.map.axiom_map_empty.)
   (fuel_bool_default fuel%vstd.map.axiom_map_insert_domain.)
   (fuel_bool_default fuel%vstd.map.axiom_map_insert_same.)
   (fuel_bool_default fuel%vstd.map.axiom_map_insert_different.)
   (fuel_bool_default fuel%vstd.map.axiom_map_remove_domain.)
   (fuel_bool_default fuel%vstd.map.axiom_map_remove_different.)
   (fuel_bool_default fuel%vstd.map.axiom_map_ext_equal.)
   (fuel_bool_default fuel%vstd.map.axiom_map_ext_equal_deep.)
)))
(assert
 (=>
  (fuel_bool_default fuel%vstd.seq.group_seq_axioms.)
  (and
   (fuel_bool_default fuel%vstd.seq.axiom_seq_index_decreases.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_subrange_decreases.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_new_len.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_new_index.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_ext_equal.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_ext_equal_deep.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_subrange_len.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_subrange_index.)
)))
(assert
 (=>
  (fuel_bool_default fuel%vstd.set.group_set_axioms.)
  (and
   (fuel_bool_default fuel%vstd.set.axiom_set_empty.)
   (fuel_bool_default fuel%vstd.set.axiom_set_insert_same.)
   (fuel_bool_default fuel%vstd.set.axiom_set_insert_different.)
   (fuel_bool_default fuel%vstd.set.axiom_set_remove_same.)
   (fuel_bool_default fuel%vstd.set.axiom_set_remove_insert.)
   (fuel_bool_default fuel%vstd.set.axiom_set_remove_different.)
   (fuel_bool_default fuel%vstd.set.axiom_set_ext_equal.)
   (fuel_bool_default fuel%vstd.set.axiom_set_ext_equal_deep.)
   (fuel_bool_default fuel%vstd.set.axiom_set_empty_finite.)
   (fuel_bool_default fuel%vstd.set.axiom_set_insert_finite.)
   (fuel_bool_default fuel%vstd.set.axiom_set_remove_finite.)
)))
(assert
 (=>
  (fuel_bool_default fuel%vstd.group_vstd_default.)
  (and
   (fuel_bool_default fuel%vstd.seq.group_seq_axioms.)
   (fuel_bool_default fuel%vstd.seq_lib.group_seq_lib_default.)
   (fuel_bool_default fuel%vstd.map.group_map_axioms.)
   (fuel_bool_default fuel%vstd.set.group_set_axioms.)
   (fuel_bool_default fuel%vstd.set_lib.group_set_lib_axioms.)
   (fuel_bool_default fuel%vstd.std_specs.bits.group_bits_axioms.)
   (fuel_bool_default fuel%vstd.std_specs.control_flow.group_control_flow_axioms.)
   (fuel_bool_default fuel%vstd.slice.group_slice_axioms.)
   (fuel_bool_default fuel%vstd.array.group_array_axioms.)
   (fuel_bool_default fuel%vstd.multiset.group_multiset_axioms.)
   (fuel_bool_default fuel%vstd.string.group_string_axioms.)
   (fuel_bool_default fuel%vstd.std_specs.range.group_range_axioms.)
   (fuel_bool_default fuel%vstd.raw_ptr.group_raw_ptr_axioms.)
)))
(assert
 (fuel_bool_default fuel%vstd.group_vstd_default.)
)

;; Associated-Type-Decls
(declare-fun proj%%vstd.view.View./V (Dcr Type) Dcr)
(declare-fun proj%vstd.view.View./V (Dcr Type) Type)

;; Datatypes
(declare-sort vstd.set.Set<int.>. 0)
(declare-datatypes ((tuple%0. 0) (tuple%2. 0)) (((tuple%0./tuple%0)) ((tuple%2./tuple%2
    (tuple%2./tuple%2/?0 Poly) (tuple%2./tuple%2/?1 Poly)
))))
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-fun TYPE%fun%1. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.map.Map. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.pcm.Resource. (Dcr Type) Type)
(declare-fun TYPE%vstd.seq.Seq. (Dcr Type) Type)
(declare-fun TYPE%vstd.set.Set. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%2. (Dcr Type Dcr Type) Type)
(declare-fun Poly%fun%1. (%%Function%%) Poly)
(declare-fun %Poly%fun%1. (Poly) %%Function%%)
(declare-fun Poly%array%. (%%Function%%) Poly)
(declare-fun %Poly%array%. (Poly) %%Function%%)
(declare-fun Poly%vstd.set.Set<int.>. (vstd.set.Set<int.>.) Poly)
(declare-fun %Poly%vstd.set.Set<int.>. (Poly) vstd.set.Set<int.>.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%2. (tuple%2.) Poly)
(declare-fun %Poly%tuple%2. (Poly) tuple%2.)
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
 (forall ((x %%Function%%)) (!
   (= x (%Poly%array%. (Poly%array%. x)))
   :pattern ((Poly%array%. x))
   :qid internal_crate__array___box_axiom_definition
   :skolemid skolem_internal_crate__array___box_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type) (x Poly)) (!
   (=>
    (has_type x (ARRAY T&. T& N&. N&))
    (= x (Poly%array%. (%Poly%array%. x)))
   )
   :pattern ((has_type x (ARRAY T&. T& N&. N&)))
   :qid internal_crate__array___unbox_axiom_definition
   :skolemid skolem_internal_crate__array___unbox_axiom_definition
)))
(assert
 (forall ((x vstd.set.Set<int.>.)) (!
   (= x (%Poly%vstd.set.Set<int.>. (Poly%vstd.set.Set<int.>. x)))
   :pattern ((Poly%vstd.set.Set<int.>. x))
   :qid internal_crate__vstd__set__Set<int.>_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__set__Set<int.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.set.Set. $ INT))
    (= x (Poly%vstd.set.Set<int.>. (%Poly%vstd.set.Set<int.>. x)))
   )
   :pattern ((has_type x (TYPE%vstd.set.Set. $ INT)))
   :qid internal_crate__vstd__set__Set<int.>_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__set__Set<int.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.set.Set<int.>.)) (!
   (has_type (Poly%vstd.set.Set<int.>. x) (TYPE%vstd.set.Set. $ INT))
   :pattern ((has_type (Poly%vstd.set.Set<int.>. x) (TYPE%vstd.set.Set. $ INT)))
   :qid internal_crate__vstd__set__Set<int.>_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__set__Set<int.>_has_type_always_definition
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
(declare-fun array_new (Dcr Type Int %%Function%%) Poly)
(declare-fun array_index (Dcr Type Dcr Type %%Function%% Poly) Poly)
(assert
 (forall ((Tdcr Dcr) (T Type) (N Int) (Fn %%Function%%)) (!
   (= (array_new Tdcr T N Fn) (Poly%array%. Fn))
   :pattern ((array_new Tdcr T N Fn))
   :qid prelude_array_new
   :skolemid skolem_prelude_array_new
)))
(declare-fun %%apply%%1 (%%Function%% Int) Poly)
(assert
 (forall ((Tdcr Dcr) (T Type) (N Int) (Fn %%Function%%)) (!
   (=>
    (forall ((i Int)) (!
      (=>
       (and
        (<= 0 i)
        (< i N)
       )
       (has_type (%%apply%%1 Fn i) T)
      )
      :pattern ((has_type (%%apply%%1 Fn i) T))
      :qid prelude_has_type_array_elts
      :skolemid skolem_prelude_has_type_array_elts
    ))
    (has_type (array_new Tdcr T N Fn) (ARRAY Tdcr T $ (CONST_INT N)))
   )
   :pattern ((array_new Tdcr T N Fn))
   :qid prelude_has_type_array_new
   :skolemid skolem_prelude_has_type_array_new
)))
(assert
 (forall ((Tdcr Dcr) (T Type) (Ndcr Dcr) (N Type) (Fn %%Function%%) (i Poly)) (!
   (=>
    (and
     (has_type (Poly%array%. Fn) (ARRAY Tdcr T Ndcr N))
     (has_type i INT)
    )
    (has_type (array_index Tdcr T $ N Fn i) T)
   )
   :pattern ((array_index Tdcr T $ N Fn i) (has_type (Poly%array%. Fn) (ARRAY Tdcr T Ndcr
      N
   )))
   :qid prelude_has_type_array_index
   :skolemid skolem_prelude_has_type_array_index
)))
(assert
 (forall ((Tdcr Dcr) (T Type) (N Int) (Fn %%Function%%) (i Int)) (!
   (= (array_index Tdcr T $ (CONST_INT N) Fn (I i)) (%%apply%%1 Fn i))
   :pattern ((array_new Tdcr T N Fn) (%%apply%%1 Fn i))
   :qid prelude_array_index_trigger
   :skolemid skolem_prelude_array_index_trigger
)))

;; Traits
(declare-fun tr_bound%vstd.array.ArrayAdditionalSpecFns. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%vstd.pcm.PCM. (Dcr Type) Bool)
(declare-fun tr_bound%vstd.view.View. (Dcr Type) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%vstd.array.ArrayAdditionalSpecFns. Self%&. Self%& T&. T&)
    (and
     (tr_bound%vstd.view.View. Self%&. Self%&)
     (and
      (= $ (proj%%vstd.view.View./V Self%&. Self%&))
      (= (TYPE%vstd.seq.Seq. T&. T&) (proj%vstd.view.View./V Self%&. Self%&))
   )))
   :pattern ((tr_bound%vstd.array.ArrayAdditionalSpecFns. Self%&. Self%& T&. T&))
   :qid internal_crate__vstd__array__ArrayAdditionalSpecFns_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__array__ArrayAdditionalSpecFns_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%vstd.pcm.PCM. Self%&. Self%&))
   :qid internal_crate__vstd__pcm__PCM_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__pcm__PCM_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%vstd.view.View. Self%&. Self%&))
   :qid internal_crate__vstd__view__View_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__view__View_trait_type_bounds_definition
)))

;; Associated-Type-Impls
(assert
 (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type)) (!
   (= (proj%%vstd.view.View./V $ (ARRAY T&. T& N&. N&)) $)
   :pattern ((proj%%vstd.view.View./V $ (ARRAY T&. T& N&. N&)))
   :qid internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type)) (!
   (= (proj%vstd.view.View./V $ (ARRAY T&. T& N&. N&)) (TYPE%vstd.seq.Seq. T&. T&))
   :pattern ((proj%vstd.view.View./V $ (ARRAY T&. T& N&. N&)))
   :qid internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%%vstd.view.View./V (REF A&.) A&) (proj%%vstd.view.View./V A&. A&))
   :pattern ((proj%%vstd.view.View./V (REF A&.) A&))
   :qid internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%vstd.view.View./V (REF A&.) A&) (proj%vstd.view.View./V A&. A&))
   :pattern ((proj%vstd.view.View./V (REF A&.) A&))
   :qid internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
)))
(assert
 (= (proj%%vstd.view.View./V $ TYPE%tuple%0.) $)
)
(assert
 (= (proj%vstd.view.View./V $ TYPE%tuple%0.) TYPE%tuple%0.)
)
(assert
 (= (proj%%vstd.view.View./V $ BOOL) $)
)
(assert
 (= (proj%vstd.view.View./V $ BOOL) BOOL)
)
(assert
 (= (proj%%vstd.view.View./V $ (UINT SZ)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (UINT SZ)) (UINT SZ))
)
(assert
 (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type)) (!
   (= (proj%%vstd.view.View./V $ (TYPE%tuple%2. A0&. A0& A1&. A1&)) $)
   :pattern ((proj%%vstd.view.View./V $ (TYPE%tuple%2. A0&. A0& A1&. A1&)))
   :qid internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type)) (!
   (= (proj%vstd.view.View./V $ (TYPE%tuple%2. A0&. A0& A1&. A1&)) (TYPE%tuple%2. (proj%%vstd.view.View./V
      A0&. A0&
     ) (proj%vstd.view.View./V A0&. A0&) (proj%%vstd.view.View./V A1&. A1&) (proj%vstd.view.View./V
      A1&. A1&
   )))
   :pattern ((proj%vstd.view.View./V $ (TYPE%tuple%2. A0&. A0& A1&. A1&)))
   :qid internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
)))

;; Function-Decl crate::vstd::view::View::view
(declare-fun vstd.view.View.view.? (Dcr Type Poly) Poly)
(declare-fun vstd.view.View.view%default%.? (Dcr Type Poly) Poly)

;; Function-Decl vstd::seq::Seq::len
(declare-fun vstd!seq.Seq.len.? (Dcr Type Poly) Int)

;; Function-Decl crate::vstd::array::ArrayAdditionalSpecFns::spec_index
(declare-fun vstd.array.ArrayAdditionalSpecFns.spec_index.? (Dcr Type Dcr Type Poly
  Poly
 ) Poly
)
(declare-fun vstd.array.ArrayAdditionalSpecFns.spec_index%default%.? (Dcr Type Dcr
  Type Poly Poly
 ) Poly
)

;; Function-Decl crate::vstd::set::Set::finite
(declare-fun vstd.set.impl&%0.finite.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::set::Set::contains
(declare-fun vstd.set.impl&%0.contains.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::set::Set::empty
(declare-fun vstd.set.impl&%0.empty.? (Dcr Type) Poly)

;; Function-Decl crate::vstd::set::Set::insert
(declare-fun vstd.set.impl&%0.insert.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::set::Set::remove
(declare-fun vstd.set.impl&%0.remove.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::map::Map::dom
(declare-fun vstd.map.impl&%0.dom.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::map::Map::index
(declare-fun vstd.map.impl&%0.index.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::map::Map::spec_index
(declare-fun vstd.map.impl&%0.spec_index.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::map::Map::empty
(declare-fun vstd.map.impl&%0.empty.? (Dcr Type Dcr Type) Poly)

;; Function-Decl crate::vstd::map::Map::insert
(declare-fun vstd.map.impl&%0.insert.? (Dcr Type Dcr Type Poly Poly Poly) Poly)

;; Function-Decl crate::vstd::map::Map::remove
(declare-fun vstd.map.impl&%0.remove.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::seq::Seq::new
(declare-fun vstd!seq.Seq.new.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::array::array_view
(declare-fun vstd.array.array_view.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl vstd::seq::Seq::index
(declare-fun vstd!seq.Seq.index.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::seq::Seq::spec_index
(declare-fun vstd.seq.impl&%0.spec_index.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::seq::Seq::subrange
(declare-fun vstd!seq.Seq.subrange.? (Dcr Type Poly Poly Poly) Poly)

;; Function-Decl crate::vstd::pcm::PCM::valid
(declare-fun vstd.pcm.PCM.valid.? (Dcr Type Poly) Poly)
(declare-fun vstd.pcm.PCM.valid%default%.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::pcm::PCM::op
(declare-fun vstd.pcm.PCM.op.? (Dcr Type Poly Poly) Poly)
(declare-fun vstd.pcm.PCM.op%default%.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::pcm::PCM::unit
(declare-fun vstd.pcm.PCM.unit.? (Dcr Type) Poly)
(declare-fun vstd.pcm.PCM.unit%default%.? (Dcr Type) Poly)

;; Function-Decl crate::vstd::pcm::Resource::value
(declare-fun vstd.pcm.impl&%0.value.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::pcm::Resource::loc
(declare-fun vstd.pcm.impl&%0.loc.? (Dcr Type Poly) Int)

;; Function-Decl crate::vstd::pcm::frame_preserving_update
(declare-fun vstd.pcm.frame_preserving_update.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::seq::Seq::skip
(declare-fun vstd.seq.impl&%0.skip.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::pcm_lib::combine_values
(declare-fun vstd.pcm_lib.combine_values.? (Dcr Type Poly) Poly)
(declare-fun vstd.pcm_lib.rec%combine_values.? (Dcr Type Poly Fuel) Poly)

;; Function-Axioms crate::vstd::view::View::view
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.view.View.view.? Self%&. Self%& self!) (proj%vstd.view.View./V Self%&.
      Self%&
   )))
   :pattern ((vstd.view.View.view.? Self%&. Self%& self!))
   :qid internal_vstd.view.View.view.?_pre_post_definition
   :skolemid skolem_internal_vstd.view.View.view.?_pre_post_definition
)))

;; Function-Axioms vstd::seq::Seq::len
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
    (<= 0 (vstd!seq.Seq.len.? A&. A& self!))
   )
   :pattern ((vstd!seq.Seq.len.? A&. A& self!))
   :qid internal_vstd!seq.Seq.len.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.len.?_pre_post_definition
)))

;; Function-Specs crate::vstd::array::ArrayAdditionalSpecFns::spec_index
(declare-fun req%vstd.array.ArrayAdditionalSpecFns.spec_index. (Dcr Type Dcr Type Poly
  Poly
 ) Bool
)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly) (i! Poly)) (
   !
   (= (req%vstd.array.ArrayAdditionalSpecFns.spec_index. Self%&. Self%& T&. T& self! i!)
    (=>
     %%global_location_label%%0
     (and
      (<= 0 (%I i!))
      (< (%I i!) (vstd!seq.Seq.len.? T&. T& (vstd.view.View.view.? Self%&. Self%& self!)))
   )))
   :pattern ((req%vstd.array.ArrayAdditionalSpecFns.spec_index. Self%&. Self%& T&. T&
     self! i!
   ))
   :qid internal_req__vstd.array.ArrayAdditionalSpecFns.spec_index._definition
   :skolemid skolem_internal_req__vstd.array.ArrayAdditionalSpecFns.spec_index._definition
)))

;; Function-Axioms crate::vstd::array::ArrayAdditionalSpecFns::spec_index
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly) (i! Poly)) (
   !
   (=>
    (and
     (has_type self! Self%&)
     (has_type i! INT)
    )
    (has_type (vstd.array.ArrayAdditionalSpecFns.spec_index.? Self%&. Self%& T&. T& self!
      i!
     ) T&
   ))
   :pattern ((vstd.array.ArrayAdditionalSpecFns.spec_index.? Self%&. Self%& T&. T& self!
     i!
   ))
   :qid internal_vstd.array.ArrayAdditionalSpecFns.spec_index.?_pre_post_definition
   :skolemid skolem_internal_vstd.array.ArrayAdditionalSpecFns.spec_index.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::set::Set::empty
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (has_type (vstd.set.impl&%0.empty.? A&. A&) (TYPE%vstd.set.Set. A&. A&))
   :pattern ((vstd.set.impl&%0.empty.? A&. A&))
   :qid internal_vstd.set.impl&__0.empty.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.empty.?_pre_post_definition
)))

;; Broadcast crate::vstd::set::axiom_set_empty
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_empty.)
  (forall ((A&. Dcr) (A& Type) (a! Poly)) (!
    (=>
     (has_type a! A&)
     (not (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.empty.? A&. A&) a!))
    )
    :pattern ((vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.empty.? A&. A&) a!))
    :qid user_crate__vstd__set__axiom_set_empty_0
    :skolemid skolem_user_crate__vstd__set__axiom_set_empty_0
))))

;; Function-Axioms crate::vstd::set::Set::insert
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (a! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type a! A&)
    )
    (has_type (vstd.set.impl&%0.insert.? A&. A& self! a!) (TYPE%vstd.set.Set. A&. A&))
   )
   :pattern ((vstd.set.impl&%0.insert.? A&. A& self! a!))
   :qid internal_vstd.set.impl&__0.insert.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.insert.?_pre_post_definition
)))

;; Broadcast crate::vstd::set::axiom_set_insert_same
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_insert_same.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.insert.? A&. A& s! a!) a!)
    )
    :pattern ((vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.insert.? A&. A& s! a!)
      a!
    ))
    :qid user_crate__vstd__set__axiom_set_insert_same_1
    :skolemid skolem_user_crate__vstd__set__axiom_set_insert_same_1
))))

;; Broadcast crate::vstd::set::axiom_set_insert_different
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_insert_different.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a1! Poly) (a2! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a1! A&)
      (has_type a2! A&)
     )
     (=>
      (not (= a1! a2!))
      (= (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.insert.? A&. A& s! a2!) a1!)
       (vstd.set.impl&%0.contains.? A&. A& s! a1!)
    )))
    :pattern ((vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.insert.? A&. A& s! a2!)
      a1!
    ))
    :qid user_crate__vstd__set__axiom_set_insert_different_2
    :skolemid skolem_user_crate__vstd__set__axiom_set_insert_different_2
))))

;; Function-Axioms crate::vstd::set::Set::remove
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (a! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type a! A&)
    )
    (has_type (vstd.set.impl&%0.remove.? A&. A& self! a!) (TYPE%vstd.set.Set. A&. A&))
   )
   :pattern ((vstd.set.impl&%0.remove.? A&. A& self! a!))
   :qid internal_vstd.set.impl&__0.remove.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.remove.?_pre_post_definition
)))

;; Broadcast crate::vstd::set::axiom_set_remove_same
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_remove_same.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (not (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s! a!) a!))
    )
    :pattern ((vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s! a!)
      a!
    ))
    :qid user_crate__vstd__set__axiom_set_remove_same_3
    :skolemid skolem_user_crate__vstd__set__axiom_set_remove_same_3
))))

;; Broadcast crate::vstd::set::axiom_set_remove_insert
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_remove_insert.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (=>
      (vstd.set.impl&%0.contains.? A&. A& s! a!)
      (= (vstd.set.impl&%0.insert.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s! a!) a!)
       s!
    )))
    :pattern ((vstd.set.impl&%0.remove.? A&. A& s! a!))
    :qid user_crate__vstd__set__axiom_set_remove_insert_4
    :skolemid skolem_user_crate__vstd__set__axiom_set_remove_insert_4
))))

;; Broadcast crate::vstd::set::axiom_set_remove_different
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_remove_different.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a1! Poly) (a2! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a1! A&)
      (has_type a2! A&)
     )
     (=>
      (not (= a1! a2!))
      (= (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s! a2!) a1!)
       (vstd.set.impl&%0.contains.? A&. A& s! a1!)
    )))
    :pattern ((vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s! a2!)
      a1!
    ))
    :qid user_crate__vstd__set__axiom_set_remove_different_5
    :skolemid skolem_user_crate__vstd__set__axiom_set_remove_different_5
))))

;; Broadcast crate::vstd::set::axiom_set_ext_equal
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_ext_equal.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd.set.Set. A&. A&))
      (has_type s2! (TYPE%vstd.set.Set. A&. A&))
     )
     (= (ext_eq false (TYPE%vstd.set.Set. A&. A&) s1! s2!) (forall ((a$ Poly)) (!
        (=>
         (has_type a$ A&)
         (= (vstd.set.impl&%0.contains.? A&. A& s1! a$) (vstd.set.impl&%0.contains.? A&. A&
           s2! a$
        )))
        :pattern ((vstd.set.impl&%0.contains.? A&. A& s1! a$))
        :pattern ((vstd.set.impl&%0.contains.? A&. A& s2! a$))
        :qid user_crate__vstd__set__axiom_set_ext_equal_6
        :skolemid skolem_user_crate__vstd__set__axiom_set_ext_equal_6
    ))))
    :pattern ((ext_eq false (TYPE%vstd.set.Set. A&. A&) s1! s2!))
    :qid user_crate__vstd__set__axiom_set_ext_equal_7
    :skolemid skolem_user_crate__vstd__set__axiom_set_ext_equal_7
))))

;; Broadcast crate::vstd::set::axiom_set_ext_equal_deep
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_ext_equal_deep.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd.set.Set. A&. A&))
      (has_type s2! (TYPE%vstd.set.Set. A&. A&))
     )
     (= (ext_eq true (TYPE%vstd.set.Set. A&. A&) s1! s2!) (ext_eq false (TYPE%vstd.set.Set.
        A&. A&
       ) s1! s2!
    )))
    :pattern ((ext_eq true (TYPE%vstd.set.Set. A&. A&) s1! s2!))
    :qid user_crate__vstd__set__axiom_set_ext_equal_deep_8
    :skolemid skolem_user_crate__vstd__set__axiom_set_ext_equal_deep_8
))))

;; Function-Axioms crate::vstd::map::Map::dom
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
    (has_type (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) (TYPE%vstd.set.Set. K&. K&))
   )
   :pattern ((vstd.map.impl&%0.dom.? K&. K& V&. V& self!))
   :qid internal_vstd.map.impl&__0.dom.?_pre_post_definition
   :skolemid skolem_internal_vstd.map.impl&__0.dom.?_pre_post_definition
)))

;; Function-Specs crate::vstd::map::Map::index
(declare-fun req%vstd.map.impl&%0.index. (Dcr Type Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (= (req%vstd.map.impl&%0.index. K&. K& V&. V& self! key!) (=>
     %%global_location_label%%1
     (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) key!)
   ))
   :pattern ((req%vstd.map.impl&%0.index. K&. K& V&. V& self! key!))
   :qid internal_req__vstd.map.impl&__0.index._definition
   :skolemid skolem_internal_req__vstd.map.impl&__0.index._definition
)))

;; Function-Axioms crate::vstd::map::Map::index
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (has_type key! K&)
    )
    (has_type (vstd.map.impl&%0.index.? K&. K& V&. V& self! key!) V&)
   )
   :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& self! key!))
   :qid internal_vstd.map.impl&__0.index.?_pre_post_definition
   :skolemid skolem_internal_vstd.map.impl&__0.index.?_pre_post_definition
)))

;; Function-Specs crate::vstd::map::Map::spec_index
(declare-fun req%vstd.map.impl&%0.spec_index. (Dcr Type Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (= (req%vstd.map.impl&%0.spec_index. K&. K& V&. V& self! key!) (=>
     %%global_location_label%%2
     (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) key!)
   ))
   :pattern ((req%vstd.map.impl&%0.spec_index. K&. K& V&. V& self! key!))
   :qid internal_req__vstd.map.impl&__0.spec_index._definition
   :skolemid skolem_internal_req__vstd.map.impl&__0.spec_index._definition
)))

;; Function-Axioms crate::vstd::map::Map::spec_index
(assert
 (fuel_bool_default fuel%vstd.map.impl&%0.spec_index.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.map.impl&%0.spec_index.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
    (= (vstd.map.impl&%0.spec_index.? K&. K& V&. V& self! key!) (vstd.map.impl&%0.index.?
      K&. K& V&. V& self! key!
    ))
    :pattern ((vstd.map.impl&%0.spec_index.? K&. K& V&. V& self! key!))
    :qid internal_vstd.map.impl&__0.spec_index.?_definition
    :skolemid skolem_internal_vstd.map.impl&__0.spec_index.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (has_type key! K&)
    )
    (has_type (vstd.map.impl&%0.spec_index.? K&. K& V&. V& self! key!) V&)
   )
   :pattern ((vstd.map.impl&%0.spec_index.? K&. K& V&. V& self! key!))
   :qid internal_vstd.map.impl&__0.spec_index.?_pre_post_definition
   :skolemid skolem_internal_vstd.map.impl&__0.spec_index.?_pre_post_definition
)))

;; Broadcast crate::vstd::set::axiom_set_empty_finite
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_empty_finite.)
  (forall ((A&. Dcr) (A& Type)) (!
    (vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.empty.? A&. A&))
    :pattern ((vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.empty.? A&. A&)))
    :qid user_crate__vstd__set__axiom_set_empty_finite_9
    :skolemid skolem_user_crate__vstd__set__axiom_set_empty_finite_9
))))

;; Broadcast crate::vstd::set::axiom_set_insert_finite
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_insert_finite.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (=>
      (vstd.set.impl&%0.finite.? A&. A& s!)
      (vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.insert.? A&. A& s! a!))
    ))
    :pattern ((vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.insert.? A&. A& s! a!)))
    :qid user_crate__vstd__set__axiom_set_insert_finite_10
    :skolemid skolem_user_crate__vstd__set__axiom_set_insert_finite_10
))))

;; Broadcast crate::vstd::set::axiom_set_remove_finite
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_remove_finite.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (=>
      (vstd.set.impl&%0.finite.? A&. A& s!)
      (vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s! a!))
    ))
    :pattern ((vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s! a!)))
    :qid user_crate__vstd__set__axiom_set_remove_finite_11
    :skolemid skolem_user_crate__vstd__set__axiom_set_remove_finite_11
))))

;; Broadcast crate::vstd::map::axiom_map_index_decreases_finite
(assert
 (=>
  (fuel_bool fuel%vstd.map.axiom_map_index_decreases_finite.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (key! Poly)) (!
    (=>
     (and
      (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
      (has_type key! K&)
     )
     (=>
      (and
       (vstd.set.impl&%0.finite.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!))
       (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!) key!)
      )
      (height_lt (height (vstd.map.impl&%0.index.? K&. K& V&. V& m! key!)) (height m!))
    ))
    :pattern ((height (vstd.map.impl&%0.index.? K&. K& V&. V& m! key!)))
    :qid user_crate__vstd__map__axiom_map_index_decreases_finite_12
    :skolemid skolem_user_crate__vstd__map__axiom_map_index_decreases_finite_12
))))

;; Broadcast crate::vstd::map::axiom_map_index_decreases_infinite
(assert
 (=>
  (fuel_bool fuel%vstd.map.axiom_map_index_decreases_infinite.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (key! Poly)) (!
    (=>
     (and
      (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
      (has_type key! K&)
     )
     (=>
      (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!) key!)
      (height_lt (height (vstd.map.impl&%0.index.? K&. K& V&. V& m! key!)) (height (fun_from_recursive_field
         m!
    )))))
    :pattern ((height (vstd.map.impl&%0.index.? K&. K& V&. V& m! key!)))
    :qid user_crate__vstd__map__axiom_map_index_decreases_infinite_13
    :skolemid skolem_user_crate__vstd__map__axiom_map_index_decreases_infinite_13
))))

;; Function-Axioms crate::vstd::map::Map::empty
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type)) (!
   (has_type (vstd.map.impl&%0.empty.? K&. K& V&. V&) (TYPE%vstd.map.Map. K&. K& V&. V&))
   :pattern ((vstd.map.impl&%0.empty.? K&. K& V&. V&))
   :qid internal_vstd.map.impl&__0.empty.?_pre_post_definition
   :skolemid skolem_internal_vstd.map.impl&__0.empty.?_pre_post_definition
)))

;; Broadcast crate::vstd::map::axiom_map_empty
(assert
 (=>
  (fuel_bool fuel%vstd.map.axiom_map_empty.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type)) (!
    (= (vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map.impl&%0.empty.? K&. K& V&. V&))
     (vstd.set.impl&%0.empty.? K&. K&)
    )
    :pattern ((vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map.impl&%0.empty.? K&. K& V&.
       V&
    )))
    :qid user_crate__vstd__map__axiom_map_empty_14
    :skolemid skolem_user_crate__vstd__map__axiom_map_empty_14
))))

;; Function-Axioms crate::vstd::map::Map::insert
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly) (value! Poly))
  (!
   (=>
    (and
     (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (has_type key! K&)
     (has_type value! V&)
    )
    (has_type (vstd.map.impl&%0.insert.? K&. K& V&. V& self! key! value!) (TYPE%vstd.map.Map.
      K&. K& V&. V&
   )))
   :pattern ((vstd.map.impl&%0.insert.? K&. K& V&. V& self! key! value!))
   :qid internal_vstd.map.impl&__0.insert.?_pre_post_definition
   :skolemid skolem_internal_vstd.map.impl&__0.insert.?_pre_post_definition
)))

;; Broadcast crate::vstd::map::axiom_map_insert_domain
(assert
 (=>
  (fuel_bool fuel%vstd.map.axiom_map_insert_domain.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (key! Poly) (value! Poly))
   (!
    (=>
     (and
      (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
      (has_type key! K&)
      (has_type value! V&)
     )
     (= (vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map.impl&%0.insert.? K&. K& V&. V& m!
        key! value!
       )
      ) (vstd.set.impl&%0.insert.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!) key!)
    ))
    :pattern ((vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map.impl&%0.insert.? K&. K& V&.
       V& m! key! value!
    )))
    :qid user_crate__vstd__map__axiom_map_insert_domain_15
    :skolemid skolem_user_crate__vstd__map__axiom_map_insert_domain_15
))))

;; Broadcast crate::vstd::map::axiom_map_insert_same
(assert
 (=>
  (fuel_bool fuel%vstd.map.axiom_map_insert_same.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (key! Poly) (value! Poly))
   (!
    (=>
     (and
      (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
      (has_type key! K&)
      (has_type value! V&)
     )
     (= (vstd.map.impl&%0.index.? K&. K& V&. V& (vstd.map.impl&%0.insert.? K&. K& V&. V&
        m! key! value!
       ) key!
      ) value!
    ))
    :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& (vstd.map.impl&%0.insert.? K&. K&
       V&. V& m! key! value!
      ) key!
    ))
    :qid user_crate__vstd__map__axiom_map_insert_same_16
    :skolemid skolem_user_crate__vstd__map__axiom_map_insert_same_16
))))

;; Broadcast crate::vstd::map::axiom_map_insert_different
(assert
 (=>
  (fuel_bool fuel%vstd.map.axiom_map_insert_different.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (key1! Poly) (key2! Poly)
    (value! Poly)
   ) (!
    (=>
     (and
      (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
      (has_type key1! K&)
      (has_type key2! K&)
      (has_type value! V&)
     )
     (=>
      (and
       (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!) key1!)
       (not (= key1! key2!))
      )
      (= (vstd.map.impl&%0.index.? K&. K& V&. V& (vstd.map.impl&%0.insert.? K&. K& V&. V&
         m! key2! value!
        ) key1!
       ) (vstd.map.impl&%0.index.? K&. K& V&. V& m! key1!)
    )))
    :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& (vstd.map.impl&%0.insert.? K&. K&
       V&. V& m! key2! value!
      ) key1!
    ))
    :qid user_crate__vstd__map__axiom_map_insert_different_17
    :skolemid skolem_user_crate__vstd__map__axiom_map_insert_different_17
))))

;; Function-Axioms crate::vstd::map::Map::remove
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (has_type key! K&)
    )
    (has_type (vstd.map.impl&%0.remove.? K&. K& V&. V& self! key!) (TYPE%vstd.map.Map.
      K&. K& V&. V&
   )))
   :pattern ((vstd.map.impl&%0.remove.? K&. K& V&. V& self! key!))
   :qid internal_vstd.map.impl&__0.remove.?_pre_post_definition
   :skolemid skolem_internal_vstd.map.impl&__0.remove.?_pre_post_definition
)))

;; Broadcast crate::vstd::map::axiom_map_remove_domain
(assert
 (=>
  (fuel_bool fuel%vstd.map.axiom_map_remove_domain.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (key! Poly)) (!
    (=>
     (and
      (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
      (has_type key! K&)
     )
     (= (vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map.impl&%0.remove.? K&. K& V&. V& m!
        key!
       )
      ) (vstd.set.impl&%0.remove.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!) key!)
    ))
    :pattern ((vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map.impl&%0.remove.? K&. K& V&.
       V& m! key!
    )))
    :qid user_crate__vstd__map__axiom_map_remove_domain_18
    :skolemid skolem_user_crate__vstd__map__axiom_map_remove_domain_18
))))

;; Broadcast crate::vstd::map::axiom_map_remove_different
(assert
 (=>
  (fuel_bool fuel%vstd.map.axiom_map_remove_different.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (key1! Poly) (key2! Poly))
   (!
    (=>
     (and
      (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
      (has_type key1! K&)
      (has_type key2! K&)
     )
     (=>
      (and
       (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!) key1!)
       (not (= key1! key2!))
      )
      (= (vstd.map.impl&%0.index.? K&. K& V&. V& (vstd.map.impl&%0.remove.? K&. K& V&. V&
         m! key2!
        ) key1!
       ) (vstd.map.impl&%0.index.? K&. K& V&. V& m! key1!)
    )))
    :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& (vstd.map.impl&%0.remove.? K&. K&
       V&. V& m! key2!
      ) key1!
    ))
    :qid user_crate__vstd__map__axiom_map_remove_different_19
    :skolemid skolem_user_crate__vstd__map__axiom_map_remove_different_19
))))

;; Broadcast crate::vstd::map::axiom_map_ext_equal
(assert
 (=>
  (fuel_bool fuel%vstd.map.axiom_map_ext_equal.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m1! Poly) (m2! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd.map.Map. K&. K& V&. V&))
      (has_type m2! (TYPE%vstd.map.Map. K&. K& V&. V&))
     )
     (= (ext_eq false (TYPE%vstd.map.Map. K&. K& V&. V&) m1! m2!) (and
       (ext_eq false (TYPE%vstd.set.Set. K&. K&) (vstd.map.impl&%0.dom.? K&. K& V&. V& m1!)
        (vstd.map.impl&%0.dom.? K&. K& V&. V& m2!)
       )
       (forall ((k$ Poly)) (!
         (=>
          (has_type k$ K&)
          (=>
           (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m1!) k$)
           (= (vstd.map.impl&%0.index.? K&. K& V&. V& m1! k$) (vstd.map.impl&%0.index.? K&. K&
             V&. V& m2! k$
         ))))
         :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& m1! k$))
         :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& m2! k$))
         :qid user_crate__vstd__map__axiom_map_ext_equal_20
         :skolemid skolem_user_crate__vstd__map__axiom_map_ext_equal_20
    )))))
    :pattern ((ext_eq false (TYPE%vstd.map.Map. K&. K& V&. V&) m1! m2!))
    :qid user_crate__vstd__map__axiom_map_ext_equal_21
    :skolemid skolem_user_crate__vstd__map__axiom_map_ext_equal_21
))))

;; Broadcast crate::vstd::map::axiom_map_ext_equal_deep
(assert
 (=>
  (fuel_bool fuel%vstd.map.axiom_map_ext_equal_deep.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m1! Poly) (m2! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd.map.Map. K&. K& V&. V&))
      (has_type m2! (TYPE%vstd.map.Map. K&. K& V&. V&))
     )
     (= (ext_eq true (TYPE%vstd.map.Map. K&. K& V&. V&) m1! m2!) (and
       (ext_eq true (TYPE%vstd.set.Set. K&. K&) (vstd.map.impl&%0.dom.? K&. K& V&. V& m1!)
        (vstd.map.impl&%0.dom.? K&. K& V&. V& m2!)
       )
       (forall ((k$ Poly)) (!
         (=>
          (has_type k$ K&)
          (=>
           (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m1!) k$)
           (ext_eq true V& (vstd.map.impl&%0.index.? K&. K& V&. V& m1! k$) (vstd.map.impl&%0.index.?
             K&. K& V&. V& m2! k$
         ))))
         :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& m1! k$))
         :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& m2! k$))
         :qid user_crate__vstd__map__axiom_map_ext_equal_deep_22
         :skolemid skolem_user_crate__vstd__map__axiom_map_ext_equal_deep_22
    )))))
    :pattern ((ext_eq true (TYPE%vstd.map.Map. K&. K& V&. V&) m1! m2!))
    :qid user_crate__vstd__map__axiom_map_ext_equal_deep_23
    :skolemid skolem_user_crate__vstd__map__axiom_map_ext_equal_deep_23
))))

;; Function-Axioms vstd::seq::Seq::new
(assert
 (forall ((A&. Dcr) (A& Type) (impl%1&. Dcr) (impl%1& Type) (len! Poly) (f! Poly))
  (!
   (=>
    (and
     (has_type len! NAT)
     (has_type f! impl%1&)
    )
    (has_type (vstd!seq.Seq.new.? A&. A& impl%1&. impl%1& len! f!) (TYPE%vstd.seq.Seq.
      A&. A&
   )))
   :pattern ((vstd!seq.Seq.new.? A&. A& impl%1&. impl%1& len! f!))
   :qid internal_vstd!seq.Seq.new.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.new.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::array::array_view
(assert
 (fuel_bool_default fuel%vstd.array.array_view.)
)
(declare-fun %%lambda%%0 (Dcr Type Dcr Type %%Function%%) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Dcr) (%%hole%%3 Type) (%%hole%%4
    %%Function%%
   ) (i$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4) i$)
    (array_index %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 i$)
   )
   :pattern ((%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4)
     i$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.array.array_view.)
  (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type) (a! Poly)) (!
    (= (vstd.array.array_view.? T&. T& N&. N& a!) (vstd!seq.Seq.new.? T&. T& $ (TYPE%fun%1.
       $ INT T&. T&
      ) (I (const_int N&)) (Poly%fun%1. (mk_fun (%%lambda%%0 T&. T& N&. N& (%Poly%array%. a!))))
    ))
    :pattern ((vstd.array.array_view.? T&. T& N&. N& a!))
    :qid internal_vstd.array.array_view.?_definition
    :skolemid skolem_internal_vstd.array.array_view.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type) (a! Poly)) (!
   (=>
    (has_type a! (ARRAY T&. T& N&. N&))
    (has_type (vstd.array.array_view.? T&. T& N&. N& a!) (TYPE%vstd.seq.Seq. T&. T&))
   )
   :pattern ((vstd.array.array_view.? T&. T& N&. N& a!))
   :qid internal_vstd.array.array_view.?_pre_post_definition
   :skolemid skolem_internal_vstd.array.array_view.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::array::impl&%0::view
(assert
 (fuel_bool_default fuel%vstd.array.impl&%0.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.array.impl&%0.view.)
  (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type) (self! Poly)) (!
    (=>
     (uInv SZ (const_int N&))
     (= (vstd.view.View.view.? $ (ARRAY T&. T& N&. N&) self!) (vstd.array.array_view.? T&.
       T& N&. N& self!
    )))
    :pattern ((vstd.view.View.view.? $ (ARRAY T&. T& N&. N&) self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Specs vstd::seq::Seq::index
(declare-fun req%vstd!seq.Seq.index. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
   (= (req%vstd!seq.Seq.index. A&. A& self! i!) (=>
     %%global_location_label%%3
     (and
      (<= 0 (%I i!))
      (< (%I i!) (vstd!seq.Seq.len.? A&. A& self!))
   )))
   :pattern ((req%vstd!seq.Seq.index. A&. A& self! i!))
   :qid internal_req__vstd!seq.Seq.index._definition
   :skolemid skolem_internal_req__vstd!seq.Seq.index._definition
)))

;; Function-Axioms vstd::seq::Seq::index
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type i! INT)
    )
    (has_type (vstd!seq.Seq.index.? A&. A& self! i!) A&)
   )
   :pattern ((vstd!seq.Seq.index.? A&. A& self! i!))
   :qid internal_vstd!seq.Seq.index.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.index.?_pre_post_definition
)))

;; Function-Specs crate::vstd::seq::Seq::spec_index
(declare-fun req%vstd.seq.impl&%0.spec_index. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
   (= (req%vstd.seq.impl&%0.spec_index. A&. A& self! i!) (=>
     %%global_location_label%%4
     (and
      (<= 0 (%I i!))
      (< (%I i!) (vstd!seq.Seq.len.? A&. A& self!))
   )))
   :pattern ((req%vstd.seq.impl&%0.spec_index. A&. A& self! i!))
   :qid internal_req__vstd.seq.impl&__0.spec_index._definition
   :skolemid skolem_internal_req__vstd.seq.impl&__0.spec_index._definition
)))

;; Function-Axioms crate::vstd::seq::Seq::spec_index
(assert
 (fuel_bool_default fuel%vstd.seq.impl&%0.spec_index.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.seq.impl&%0.spec_index.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
    (= (vstd.seq.impl&%0.spec_index.? A&. A& self! i!) (vstd!seq.Seq.index.? A&. A& self!
      i!
    ))
    :pattern ((vstd.seq.impl&%0.spec_index.? A&. A& self! i!))
    :qid internal_vstd.seq.impl&__0.spec_index.?_definition
    :skolemid skolem_internal_vstd.seq.impl&__0.spec_index.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type i! INT)
    )
    (has_type (vstd.seq.impl&%0.spec_index.? A&. A& self! i!) A&)
   )
   :pattern ((vstd.seq.impl&%0.spec_index.? A&. A& self! i!))
   :qid internal_vstd.seq.impl&__0.spec_index.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq.impl&__0.spec_index.?_pre_post_definition
)))

;; Broadcast crate::vstd::seq::axiom_seq_index_decreases
(assert
 (=>
  (fuel_bool fuel%vstd.seq.axiom_seq_index_decreases.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (i! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type i! INT)
     )
     (=>
      (and
       (<= 0 (%I i!))
       (< (%I i!) (vstd!seq.Seq.len.? A&. A& s!))
      )
      (height_lt (height (vstd!seq.Seq.index.? A&. A& s! i!)) (height s!))
    ))
    :pattern ((height (vstd!seq.Seq.index.? A&. A& s! i!)))
    :qid user_crate__vstd__seq__axiom_seq_index_decreases_24
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_index_decreases_24
))))

;; Function-Specs vstd::seq::Seq::subrange
(declare-fun req%vstd!seq.Seq.subrange. (Dcr Type Poly Poly Poly) Bool)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (start_inclusive! Poly) (end_exclusive! Poly))
  (!
   (= (req%vstd!seq.Seq.subrange. A&. A& self! start_inclusive! end_exclusive!) (=>
     %%global_location_label%%5
     (and
      (and
       (<= 0 (%I start_inclusive!))
       (<= (%I start_inclusive!) (%I end_exclusive!))
      )
      (<= (%I end_exclusive!) (vstd!seq.Seq.len.? A&. A& self!))
   )))
   :pattern ((req%vstd!seq.Seq.subrange. A&. A& self! start_inclusive! end_exclusive!))
   :qid internal_req__vstd!seq.Seq.subrange._definition
   :skolemid skolem_internal_req__vstd!seq.Seq.subrange._definition
)))

;; Function-Axioms vstd::seq::Seq::subrange
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (start_inclusive! Poly) (end_exclusive! Poly))
  (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type start_inclusive! INT)
     (has_type end_exclusive! INT)
    )
    (has_type (vstd!seq.Seq.subrange.? A&. A& self! start_inclusive! end_exclusive!) (
      TYPE%vstd.seq.Seq. A&. A&
   )))
   :pattern ((vstd!seq.Seq.subrange.? A&. A& self! start_inclusive! end_exclusive!))
   :qid internal_vstd!seq.Seq.subrange.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.subrange.?_pre_post_definition
)))

;; Broadcast crate::vstd::seq::axiom_seq_subrange_len
(assert
 (=>
  (fuel_bool fuel%vstd.seq.axiom_seq_subrange_len.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (j! Poly) (k! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type j! INT)
      (has_type k! INT)
     )
     (=>
      (and
       (and
        (<= 0 (%I j!))
        (<= (%I j!) (%I k!))
       )
       (<= (%I k!) (vstd!seq.Seq.len.? A&. A& s!))
      )
      (= (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s! j! k!)) (Sub (%I k!)
        (%I j!)
    ))))
    :pattern ((vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s! j! k!)))
    :qid user_crate__vstd__seq__axiom_seq_subrange_len_25
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_subrange_len_25
))))

;; Broadcast crate::vstd::seq::axiom_seq_subrange_index
(assert
 (=>
  (fuel_bool fuel%vstd.seq.axiom_seq_subrange_index.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (j! Poly) (k! Poly) (i! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type j! INT)
      (has_type k! INT)
      (has_type i! INT)
     )
     (=>
      (and
       (and
        (and
         (<= 0 (%I j!))
         (<= (%I j!) (%I k!))
        )
        (<= (%I k!) (vstd!seq.Seq.len.? A&. A& s!))
       )
       (and
        (<= 0 (%I i!))
        (< (%I i!) (Sub (%I k!) (%I j!)))
      ))
      (= (vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s! j! k!) i!) (vstd!seq.Seq.index.?
        A&. A& s! (I (Add (%I i!) (%I j!)))
    ))))
    :pattern ((vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s! j! k!) i!))
    :qid user_crate__vstd__seq__axiom_seq_subrange_index_26
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_subrange_index_26
))))

;; Broadcast crate::vstd::seq::axiom_seq_subrange_decreases
(assert
 (=>
  (fuel_bool fuel%vstd.seq.axiom_seq_subrange_decreases.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (i! Poly) (j! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type i! INT)
      (has_type j! INT)
     )
     (=>
      (and
       (and
        (and
         (<= 0 (%I i!))
         (<= (%I i!) (%I j!))
        )
        (<= (%I j!) (vstd!seq.Seq.len.? A&. A& s!))
       )
       (< (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s! i! j!)) (vstd!seq.Seq.len.?
         A&. A& s!
      )))
      (height_lt (height (vstd!seq.Seq.subrange.? A&. A& s! i! j!)) (height s!))
    ))
    :pattern ((height (vstd!seq.Seq.subrange.? A&. A& s! i! j!)))
    :qid user_crate__vstd__seq__axiom_seq_subrange_decreases_27
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_subrange_decreases_27
))))

;; Broadcast crate::vstd::seq::axiom_seq_new_len
(assert
 (=>
  (fuel_bool fuel%vstd.seq.axiom_seq_new_len.)
  (forall ((A&. Dcr) (A& Type) (len! Poly) (f! Poly)) (!
    (=>
     (and
      (has_type len! NAT)
      (has_type f! (TYPE%fun%1. $ INT A&. A&))
     )
     (= (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.new.? A&. A& $ (TYPE%fun%1. $ INT A&. A&)
        len! f!
       )
      ) (%I len!)
    ))
    :pattern ((vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.new.? A&. A& $ (TYPE%fun%1. $ INT
        A&. A&
       ) len! f!
    )))
    :qid user_crate__vstd__seq__axiom_seq_new_len_28
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_new_len_28
))))

;; Broadcast crate::vstd::seq::axiom_seq_new_index
(assert
 (=>
  (fuel_bool fuel%vstd.seq.axiom_seq_new_index.)
  (forall ((A&. Dcr) (A& Type) (len! Poly) (f! Poly) (i! Poly)) (!
    (=>
     (and
      (has_type len! NAT)
      (has_type f! (TYPE%fun%1. $ INT A&. A&))
      (has_type i! INT)
     )
     (=>
      (and
       (<= 0 (%I i!))
       (< (%I i!) (%I len!))
      )
      (= (vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.new.? A&. A& $ (TYPE%fun%1. $ INT A&. A&)
         len! f!
        ) i!
       ) (%%apply%%0 (%Poly%fun%1. f!) i!)
    )))
    :pattern ((vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.new.? A&. A& $ (TYPE%fun%1. $ INT
        A&. A&
       ) len! f!
      ) i!
    ))
    :qid user_crate__vstd__seq__axiom_seq_new_index_29
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_new_index_29
))))

;; Broadcast crate::vstd::seq::axiom_seq_ext_equal
(assert
 (=>
  (fuel_bool fuel%vstd.seq.axiom_seq_ext_equal.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type s2! (TYPE%vstd.seq.Seq. A&. A&))
     )
     (= (ext_eq false (TYPE%vstd.seq.Seq. A&. A&) s1! s2!) (and
       (= (vstd!seq.Seq.len.? A&. A& s1!) (vstd!seq.Seq.len.? A&. A& s2!))
       (forall ((i$ Poly)) (!
         (=>
          (has_type i$ INT)
          (=>
           (and
            (<= 0 (%I i$))
            (< (%I i$) (vstd!seq.Seq.len.? A&. A& s1!))
           )
           (= (vstd!seq.Seq.index.? A&. A& s1! i$) (vstd!seq.Seq.index.? A&. A& s2! i$))
         ))
         :pattern ((vstd!seq.Seq.index.? A&. A& s1! i$))
         :pattern ((vstd!seq.Seq.index.? A&. A& s2! i$))
         :qid user_crate__vstd__seq__axiom_seq_ext_equal_30
         :skolemid skolem_user_crate__vstd__seq__axiom_seq_ext_equal_30
    )))))
    :pattern ((ext_eq false (TYPE%vstd.seq.Seq. A&. A&) s1! s2!))
    :qid user_crate__vstd__seq__axiom_seq_ext_equal_31
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_ext_equal_31
))))

;; Broadcast crate::vstd::seq::axiom_seq_ext_equal_deep
(assert
 (=>
  (fuel_bool fuel%vstd.seq.axiom_seq_ext_equal_deep.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type s2! (TYPE%vstd.seq.Seq. A&. A&))
     )
     (= (ext_eq true (TYPE%vstd.seq.Seq. A&. A&) s1! s2!) (and
       (= (vstd!seq.Seq.len.? A&. A& s1!) (vstd!seq.Seq.len.? A&. A& s2!))
       (forall ((i$ Poly)) (!
         (=>
          (has_type i$ INT)
          (=>
           (and
            (<= 0 (%I i$))
            (< (%I i$) (vstd!seq.Seq.len.? A&. A& s1!))
           )
           (ext_eq true A& (vstd!seq.Seq.index.? A&. A& s1! i$) (vstd!seq.Seq.index.? A&. A& s2!
             i$
         ))))
         :pattern ((vstd!seq.Seq.index.? A&. A& s1! i$))
         :pattern ((vstd!seq.Seq.index.? A&. A& s2! i$))
         :qid user_crate__vstd__seq__axiom_seq_ext_equal_deep_32
         :skolemid skolem_user_crate__vstd__seq__axiom_seq_ext_equal_deep_32
    )))))
    :pattern ((ext_eq true (TYPE%vstd.seq.Seq. A&. A&) s1! s2!))
    :qid user_crate__vstd__seq__axiom_seq_ext_equal_deep_33
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_ext_equal_deep_33
))))

;; Function-Specs crate::vstd::map::Map::tracked_empty
(declare-fun ens%vstd.map.impl&%0.tracked_empty. (Dcr Type Dcr Type Poly) Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (out_v! Poly)) (!
   (= (ens%vstd.map.impl&%0.tracked_empty. K&. K& V&. V& out_v!) (and
     (has_type out_v! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (= out_v! (vstd.map.impl&%0.empty.? K&. K& V&. V&))
   ))
   :pattern ((ens%vstd.map.impl&%0.tracked_empty. K&. K& V&. V& out_v!))
   :qid internal_ens__vstd.map.impl&__0.tracked_empty._definition
   :skolemid skolem_internal_ens__vstd.map.impl&__0.tracked_empty._definition
)))

;; Function-Specs crate::vstd::map::Map::tracked_insert
(declare-fun ens%vstd.map.impl&%0.tracked_insert. (Dcr Type Dcr Type Poly Poly Poly
  Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (pre%self! Poly) (self! Poly) (key!
    Poly
   ) (value! Poly)
  ) (!
   (= (ens%vstd.map.impl&%0.tracked_insert. K&. K& V&. V& pre%self! self! key! value!)
    (and
     (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (= self! (vstd.map.impl&%0.insert.? K&. K& V&. V& pre%self! key! value!))
   ))
   :pattern ((ens%vstd.map.impl&%0.tracked_insert. K&. K& V&. V& pre%self! self! key!
     value!
   ))
   :qid internal_ens__vstd.map.impl&__0.tracked_insert._definition
   :skolemid skolem_internal_ens__vstd.map.impl&__0.tracked_insert._definition
)))

;; Function-Specs crate::vstd::map::Map::tracked_remove
(declare-fun req%vstd.map.impl&%0.tracked_remove. (Dcr Type Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (pre%self! Poly) (key! Poly)) (!
   (= (req%vstd.map.impl&%0.tracked_remove. K&. K& V&. V& pre%self! key!) (=>
     %%global_location_label%%6
     (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& pre%self!)
      key!
   )))
   :pattern ((req%vstd.map.impl&%0.tracked_remove. K&. K& V&. V& pre%self! key!))
   :qid internal_req__vstd.map.impl&__0.tracked_remove._definition
   :skolemid skolem_internal_req__vstd.map.impl&__0.tracked_remove._definition
)))
(declare-fun ens%vstd.map.impl&%0.tracked_remove. (Dcr Type Dcr Type Poly Poly Poly
  Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (pre%self! Poly) (self! Poly) (key!
    Poly
   ) (v! Poly)
  ) (!
   (= (ens%vstd.map.impl&%0.tracked_remove. K&. K& V&. V& pre%self! self! key! v!) (and
     (has_type v! V&)
     (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (= self! (vstd.map.impl&%0.remove.? K&. K& V&. V& pre%self! key!))
     (= v! (vstd.map.impl&%0.index.? K&. K& V&. V& pre%self! key!))
   ))
   :pattern ((ens%vstd.map.impl&%0.tracked_remove. K&. K& V&. V& pre%self! self! key!
     v!
   ))
   :qid internal_ens__vstd.map.impl&__0.tracked_remove._definition
   :skolemid skolem_internal_ens__vstd.map.impl&__0.tracked_remove._definition
)))

;; Function-Specs crate::vstd::modes::tracked_swap
(declare-fun ens%vstd.modes.tracked_swap. (Dcr Type Poly Poly Poly Poly) Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (pre%a! Poly) (a! Poly) (pre%b! Poly) (b! Poly)) (!
   (= (ens%vstd.modes.tracked_swap. V&. V& pre%a! a! pre%b! b!) (and
     (has_type a! V&)
     (has_type b! V&)
     (= a! pre%b!)
     (= b! pre%a!)
   ))
   :pattern ((ens%vstd.modes.tracked_swap. V&. V& pre%a! a! pre%b! b!))
   :qid internal_ens__vstd.modes.tracked_swap._definition
   :skolemid skolem_internal_ens__vstd.modes.tracked_swap._definition
)))

;; Function-Axioms crate::vstd::pcm::PCM::valid
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.pcm.PCM.valid.? Self%&. Self%& self!) BOOL)
   )
   :pattern ((vstd.pcm.PCM.valid.? Self%&. Self%& self!))
   :qid internal_vstd.pcm.PCM.valid.?_pre_post_definition
   :skolemid skolem_internal_vstd.pcm.PCM.valid.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::pcm::PCM::op
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (other! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type other! Self%&)
    )
    (has_type (vstd.pcm.PCM.op.? Self%&. Self%& self! other!) Self%&)
   )
   :pattern ((vstd.pcm.PCM.op.? Self%&. Self%& self! other!))
   :qid internal_vstd.pcm.PCM.op.?_pre_post_definition
   :skolemid skolem_internal_vstd.pcm.PCM.op.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::pcm::PCM::unit
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   (has_type (vstd.pcm.PCM.unit.? Self%&. Self%&) Self%&)
   :pattern ((vstd.pcm.PCM.unit.? Self%&. Self%&))
   :qid internal_vstd.pcm.PCM.unit.?_pre_post_definition
   :skolemid skolem_internal_vstd.pcm.PCM.unit.?_pre_post_definition
)))

;; Function-Specs crate::vstd::pcm::PCM::closed_under_incl
(declare-fun req%vstd.pcm.PCM.closed_under_incl. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%7 Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (a! Poly) (b! Poly)) (!
   (= (req%vstd.pcm.PCM.closed_under_incl. Self%&. Self%& a! b!) (=>
     %%global_location_label%%7
     (%B (vstd.pcm.PCM.valid.? Self%&. Self%& (vstd.pcm.PCM.op.? Self%&. Self%& a! b!)))
   ))
   :pattern ((req%vstd.pcm.PCM.closed_under_incl. Self%&. Self%& a! b!))
   :qid internal_req__vstd.pcm.PCM.closed_under_incl._definition
   :skolemid skolem_internal_req__vstd.pcm.PCM.closed_under_incl._definition
)))
(declare-fun ens%vstd.pcm.PCM.closed_under_incl. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (a! Poly) (b! Poly)) (!
   (= (ens%vstd.pcm.PCM.closed_under_incl. Self%&. Self%& a! b!) (%B (vstd.pcm.PCM.valid.?
      Self%&. Self%& a!
   )))
   :pattern ((ens%vstd.pcm.PCM.closed_under_incl. Self%&. Self%& a! b!))
   :qid internal_ens__vstd.pcm.PCM.closed_under_incl._definition
   :skolemid skolem_internal_ens__vstd.pcm.PCM.closed_under_incl._definition
)))

;; Function-Specs crate::vstd::pcm::PCM::commutative
(declare-fun ens%vstd.pcm.PCM.commutative. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (a! Poly) (b! Poly)) (!
   (= (ens%vstd.pcm.PCM.commutative. Self%&. Self%& a! b!) (= (vstd.pcm.PCM.op.? Self%&.
      Self%& a! b!
     ) (vstd.pcm.PCM.op.? Self%&. Self%& b! a!)
   ))
   :pattern ((ens%vstd.pcm.PCM.commutative. Self%&. Self%& a! b!))
   :qid internal_ens__vstd.pcm.PCM.commutative._definition
   :skolemid skolem_internal_ens__vstd.pcm.PCM.commutative._definition
)))

;; Function-Specs crate::vstd::pcm::PCM::associative
(declare-fun ens%vstd.pcm.PCM.associative. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (a! Poly) (b! Poly) (c! Poly)) (!
   (= (ens%vstd.pcm.PCM.associative. Self%&. Self%& a! b! c!) (= (vstd.pcm.PCM.op.? Self%&.
      Self%& a! (vstd.pcm.PCM.op.? Self%&. Self%& b! c!)
     ) (vstd.pcm.PCM.op.? Self%&. Self%& (vstd.pcm.PCM.op.? Self%&. Self%& a! b!) c!)
   ))
   :pattern ((ens%vstd.pcm.PCM.associative. Self%&. Self%& a! b! c!))
   :qid internal_ens__vstd.pcm.PCM.associative._definition
   :skolemid skolem_internal_ens__vstd.pcm.PCM.associative._definition
)))

;; Function-Specs crate::vstd::pcm::PCM::op_unit
(declare-fun ens%vstd.pcm.PCM.op_unit. (Dcr Type Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (a! Poly)) (!
   (= (ens%vstd.pcm.PCM.op_unit. Self%&. Self%& a!) (= (vstd.pcm.PCM.op.? Self%&. Self%&
      a! (vstd.pcm.PCM.unit.? Self%&. Self%&)
     ) a!
   ))
   :pattern ((ens%vstd.pcm.PCM.op_unit. Self%&. Self%& a!))
   :qid internal_ens__vstd.pcm.PCM.op_unit._definition
   :skolemid skolem_internal_ens__vstd.pcm.PCM.op_unit._definition
)))

;; Function-Specs crate::vstd::pcm::PCM::unit_valid
(declare-fun ens%vstd.pcm.PCM.unit_valid. (Dcr Type) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   (= (ens%vstd.pcm.PCM.unit_valid. Self%&. Self%&) (%B (vstd.pcm.PCM.valid.? Self%&. Self%&
      (vstd.pcm.PCM.unit.? Self%&. Self%&)
   )))
   :pattern ((ens%vstd.pcm.PCM.unit_valid. Self%&. Self%&))
   :qid internal_ens__vstd.pcm.PCM.unit_valid._definition
   :skolemid skolem_internal_ens__vstd.pcm.PCM.unit_valid._definition
)))

;; Function-Axioms crate::vstd::pcm::Resource::value
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.pcm.Resource. P&. P&))
    (has_type (vstd.pcm.impl&%0.value.? P&. P& self!) P&)
   )
   :pattern ((vstd.pcm.impl&%0.value.? P&. P& self!))
   :qid internal_vstd.pcm.impl&__0.value.?_pre_post_definition
   :skolemid skolem_internal_vstd.pcm.impl&__0.value.?_pre_post_definition
)))

;; Function-Specs crate::vstd::pcm::Resource::join
(declare-fun req%vstd.pcm.impl&%0.join. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly) (other! Poly)) (!
   (= (req%vstd.pcm.impl&%0.join. P&. P& self! other!) (=>
     %%global_location_label%%8
     (= (vstd.pcm.impl&%0.loc.? P&. P& self!) (vstd.pcm.impl&%0.loc.? P&. P& other!))
   ))
   :pattern ((req%vstd.pcm.impl&%0.join. P&. P& self! other!))
   :qid internal_req__vstd.pcm.impl&__0.join._definition
   :skolemid skolem_internal_req__vstd.pcm.impl&__0.join._definition
)))
(declare-fun ens%vstd.pcm.impl&%0.join. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly) (other! Poly) (out! Poly)) (!
   (= (ens%vstd.pcm.impl&%0.join. P&. P& self! other! out!) (and
     (has_type out! (TYPE%vstd.pcm.Resource. P&. P&))
     (= (vstd.pcm.impl&%0.loc.? P&. P& out!) (vstd.pcm.impl&%0.loc.? P&. P& self!))
     (= (vstd.pcm.impl&%0.value.? P&. P& out!) (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.?
        P&. P& self!
       ) (vstd.pcm.impl&%0.value.? P&. P& other!)
   ))))
   :pattern ((ens%vstd.pcm.impl&%0.join. P&. P& self! other! out!))
   :qid internal_ens__vstd.pcm.impl&__0.join._definition
   :skolemid skolem_internal_ens__vstd.pcm.impl&__0.join._definition
)))

;; Function-Specs crate::vstd::pcm::Resource::split
(declare-fun req%vstd.pcm.impl&%0.split. (Dcr Type Poly Poly Poly) Bool)
(declare-const %%global_location_label%%9 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly) (left! Poly) (right! Poly)) (!
   (= (req%vstd.pcm.impl&%0.split. P&. P& self! left! right!) (=>
     %%global_location_label%%9
     (= (vstd.pcm.impl&%0.value.? P&. P& self!) (vstd.pcm.PCM.op.? P&. P& left! right!))
   ))
   :pattern ((req%vstd.pcm.impl&%0.split. P&. P& self! left! right!))
   :qid internal_req__vstd.pcm.impl&__0.split._definition
   :skolemid skolem_internal_req__vstd.pcm.impl&__0.split._definition
)))
(declare-fun ens%vstd.pcm.impl&%0.split. (Dcr Type Poly Poly Poly tuple%2.) Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly) (left! Poly) (right! Poly) (out! tuple%2.))
  (!
   (= (ens%vstd.pcm.impl&%0.split. P&. P& self! left! right! out!) (and
     (has_type (Poly%tuple%2. out!) (TYPE%tuple%2. $ (TYPE%vstd.pcm.Resource. P&. P&) $
       (TYPE%vstd.pcm.Resource. P&. P&)
     ))
     (= (vstd.pcm.impl&%0.loc.? P&. P& (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. out!))))
      (vstd.pcm.impl&%0.loc.? P&. P& self!)
     )
     (= (vstd.pcm.impl&%0.loc.? P&. P& (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. out!))))
      (vstd.pcm.impl&%0.loc.? P&. P& self!)
     )
     (= (vstd.pcm.impl&%0.value.? P&. P& (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2.
          out!
       )))
      ) left!
     )
     (= (vstd.pcm.impl&%0.value.? P&. P& (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2.
          out!
       )))
      ) right!
   )))
   :pattern ((ens%vstd.pcm.impl&%0.split. P&. P& self! left! right! out!))
   :qid internal_ens__vstd.pcm.impl&__0.split._definition
   :skolemid skolem_internal_ens__vstd.pcm.impl&__0.split._definition
)))

;; Function-Specs crate::vstd::pcm::Resource::create_unit
(declare-fun ens%vstd.pcm.impl&%0.create_unit. (Dcr Type Int Poly) Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (loc! Int) (out! Poly)) (!
   (= (ens%vstd.pcm.impl&%0.create_unit. P&. P& loc! out!) (and
     (has_type out! (TYPE%vstd.pcm.Resource. P&. P&))
     (= (vstd.pcm.impl&%0.value.? P&. P& out!) (vstd.pcm.PCM.unit.? P&. P&))
     (= (vstd.pcm.impl&%0.loc.? P&. P& out!) loc!)
   ))
   :pattern ((ens%vstd.pcm.impl&%0.create_unit. P&. P& loc! out!))
   :qid internal_ens__vstd.pcm.impl&__0.create_unit._definition
   :skolemid skolem_internal_ens__vstd.pcm.impl&__0.create_unit._definition
)))

;; Function-Specs crate::vstd::pcm::Resource::validate
(declare-fun ens%vstd.pcm.impl&%0.validate. (Dcr Type Poly) Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly)) (!
   (= (ens%vstd.pcm.impl&%0.validate. P&. P& self!) (%B (vstd.pcm.PCM.valid.? P&. P& (vstd.pcm.impl&%0.value.?
       P&. P& self!
   ))))
   :pattern ((ens%vstd.pcm.impl&%0.validate. P&. P& self!))
   :qid internal_ens__vstd.pcm.impl&__0.validate._definition
   :skolemid skolem_internal_ens__vstd.pcm.impl&__0.validate._definition
)))

;; Function-Axioms crate::vstd::pcm::frame_preserving_update
(assert
 (fuel_bool_default fuel%vstd.pcm.frame_preserving_update.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.pcm.frame_preserving_update.)
  (forall ((P&. Dcr) (P& Type) (a! Poly) (b! Poly)) (!
    (= (vstd.pcm.frame_preserving_update.? P&. P& a! b!) (forall ((c$ Poly)) (!
       (=>
        (has_type c$ P&)
        (=>
         (%B (vstd.pcm.PCM.valid.? P&. P& (vstd.pcm.PCM.op.? P&. P& a! c$)))
         (%B (vstd.pcm.PCM.valid.? P&. P& (vstd.pcm.PCM.op.? P&. P& b! c$)))
       ))
       :pattern ((vstd.pcm.PCM.op.? P&. P& a! c$) (vstd.pcm.PCM.op.? P&. P& b! c$))
       :qid user_crate__vstd__pcm__frame_preserving_update_34
       :skolemid skolem_user_crate__vstd__pcm__frame_preserving_update_34
    )))
    :pattern ((vstd.pcm.frame_preserving_update.? P&. P& a! b!))
    :qid internal_vstd.pcm.frame_preserving_update.?_definition
    :skolemid skolem_internal_vstd.pcm.frame_preserving_update.?_definition
))))

;; Function-Specs crate::vstd::pcm::Resource::update
(declare-fun req%vstd.pcm.impl&%0.update. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%10 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly) (new_value! Poly)) (!
   (= (req%vstd.pcm.impl&%0.update. P&. P& self! new_value!) (=>
     %%global_location_label%%10
     (vstd.pcm.frame_preserving_update.? P&. P& (vstd.pcm.impl&%0.value.? P&. P& self!)
      new_value!
   )))
   :pattern ((req%vstd.pcm.impl&%0.update. P&. P& self! new_value!))
   :qid internal_req__vstd.pcm.impl&__0.update._definition
   :skolemid skolem_internal_req__vstd.pcm.impl&__0.update._definition
)))
(declare-fun ens%vstd.pcm.impl&%0.update. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly) (new_value! Poly) (out! Poly)) (!
   (= (ens%vstd.pcm.impl&%0.update. P&. P& self! new_value! out!) (and
     (has_type out! (TYPE%vstd.pcm.Resource. P&. P&))
     (= (vstd.pcm.impl&%0.loc.? P&. P& out!) (vstd.pcm.impl&%0.loc.? P&. P& self!))
     (= (vstd.pcm.impl&%0.value.? P&. P& out!) new_value!)
   ))
   :pattern ((ens%vstd.pcm.impl&%0.update. P&. P& self! new_value! out!))
   :qid internal_ens__vstd.pcm.impl&__0.update._definition
   :skolemid skolem_internal_ens__vstd.pcm.impl&__0.update._definition
)))

;; Function-Specs crate::vstd::pcm::Resource::validate_2
(declare-fun req%vstd.pcm.impl&%0.validate_2. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%11 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (pre%self! Poly) (other! Poly)) (!
   (= (req%vstd.pcm.impl&%0.validate_2. P&. P& pre%self! other!) (=>
     %%global_location_label%%11
     (= (vstd.pcm.impl&%0.loc.? P&. P& pre%self!) (vstd.pcm.impl&%0.loc.? P&. P& other!))
   ))
   :pattern ((req%vstd.pcm.impl&%0.validate_2. P&. P& pre%self! other!))
   :qid internal_req__vstd.pcm.impl&__0.validate_2._definition
   :skolemid skolem_internal_req__vstd.pcm.impl&__0.validate_2._definition
)))
(declare-fun ens%vstd.pcm.impl&%0.validate_2. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (pre%self! Poly) (self! Poly) (other! Poly)) (!
   (= (ens%vstd.pcm.impl&%0.validate_2. P&. P& pre%self! self! other!) (and
     (has_type self! (TYPE%vstd.pcm.Resource. P&. P&))
     (= self! pre%self!)
     (%B (vstd.pcm.PCM.valid.? P&. P& (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.?
         P&. P& self!
        ) (vstd.pcm.impl&%0.value.? P&. P& other!)
   )))))
   :pattern ((ens%vstd.pcm.impl&%0.validate_2. P&. P& pre%self! self! other!))
   :qid internal_ens__vstd.pcm.impl&__0.validate_2._definition
   :skolemid skolem_internal_ens__vstd.pcm.impl&__0.validate_2._definition
)))

;; Function-Specs crate::vstd::pcm::Resource::update_with_shared
(declare-fun req%vstd.pcm.impl&%0.update_with_shared. (Dcr Type Poly Poly Poly) Bool)
(declare-const %%global_location_label%%12 Bool)
(declare-const %%global_location_label%%13 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly) (other! Poly) (new_value! Poly)) (!
   (= (req%vstd.pcm.impl&%0.update_with_shared. P&. P& self! other! new_value!) (and
     (=>
      %%global_location_label%%12
      (= (vstd.pcm.impl&%0.loc.? P&. P& self!) (vstd.pcm.impl&%0.loc.? P&. P& other!))
     )
     (=>
      %%global_location_label%%13
      (vstd.pcm.frame_preserving_update.? P&. P& (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.?
         P&. P& self!
        ) (vstd.pcm.impl&%0.value.? P&. P& other!)
       ) (vstd.pcm.PCM.op.? P&. P& new_value! (vstd.pcm.impl&%0.value.? P&. P& other!))
   ))))
   :pattern ((req%vstd.pcm.impl&%0.update_with_shared. P&. P& self! other! new_value!))
   :qid internal_req__vstd.pcm.impl&__0.update_with_shared._definition
   :skolemid skolem_internal_req__vstd.pcm.impl&__0.update_with_shared._definition
)))
(declare-fun ens%vstd.pcm.impl&%0.update_with_shared. (Dcr Type Poly Poly Poly Poly)
 Bool
)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly) (other! Poly) (new_value! Poly) (out! Poly))
  (!
   (= (ens%vstd.pcm.impl&%0.update_with_shared. P&. P& self! other! new_value! out!)
    (and
     (has_type out! (TYPE%vstd.pcm.Resource. P&. P&))
     (= (vstd.pcm.impl&%0.loc.? P&. P& out!) (vstd.pcm.impl&%0.loc.? P&. P& self!))
     (= (vstd.pcm.impl&%0.value.? P&. P& out!) new_value!)
   ))
   :pattern ((ens%vstd.pcm.impl&%0.update_with_shared. P&. P& self! other! new_value!
     out!
   ))
   :qid internal_ens__vstd.pcm.impl&__0.update_with_shared._definition
   :skolemid skolem_internal_ens__vstd.pcm.impl&__0.update_with_shared._definition
)))

;; Function-Axioms crate::vstd::array::impl&%2::spec_index
(assert
 (fuel_bool_default fuel%vstd.array.impl&%2.spec_index.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.array.impl&%2.spec_index.)
  (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type) (self! Poly) (i! Poly)) (!
    (=>
     (uInv SZ (const_int N&))
     (= (vstd.array.ArrayAdditionalSpecFns.spec_index.? $ (ARRAY T&. T& N&. N&) T&. T& self!
       i!
      ) (vstd!seq.Seq.index.? T&. T& (vstd.view.View.view.? $ (ARRAY T&. T& N&. N&) self!)
       i!
    )))
    :pattern ((vstd.array.ArrayAdditionalSpecFns.spec_index.? $ (ARRAY T&. T& N&. N&) T&.
      T& self! i!
    ))
    :qid internal_vstd.array.ArrayAdditionalSpecFns.spec_index.?_definition
    :skolemid skolem_internal_vstd.array.ArrayAdditionalSpecFns.spec_index.?_definition
))))

;; Function-Axioms crate::vstd::seq::Seq::skip
(assert
 (fuel_bool_default fuel%vstd.seq.impl&%0.skip.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.seq.impl&%0.skip.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (n! Poly)) (!
    (= (vstd.seq.impl&%0.skip.? A&. A& self! n!) (vstd!seq.Seq.subrange.? A&. A& self!
      n! (I (vstd!seq.Seq.len.? A&. A& self!))
    ))
    :pattern ((vstd.seq.impl&%0.skip.? A&. A& self! n!))
    :qid internal_vstd.seq.impl&__0.skip.?_definition
    :skolemid skolem_internal_vstd.seq.impl&__0.skip.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (n! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type n! INT)
    )
    (has_type (vstd.seq.impl&%0.skip.? A&. A& self! n!) (TYPE%vstd.seq.Seq. A&. A&))
   )
   :pattern ((vstd.seq.impl&%0.skip.? A&. A& self! n!))
   :qid internal_vstd.seq.impl&__0.skip.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq.impl&__0.skip.?_pre_post_definition
)))

;; Broadcast crate::vstd::array::array_len_matches_n
(assert
 (=>
  (fuel_bool fuel%vstd.array.array_len_matches_n.)
  (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type) (ar! Poly)) (!
    (=>
     (has_type ar! (ARRAY T&. T& N&. N&))
     (=>
      (uInv SZ (const_int N&))
      (= (vstd!seq.Seq.len.? T&. T& (vstd.view.View.view.? $ (ARRAY T&. T& N&. N&) ar!))
       (const_int N&)
    )))
    :pattern ((vstd!seq.Seq.len.? T&. T& (vstd.view.View.view.? $ (ARRAY T&. T& N&. N&)
       ar!
    )))
    :qid user_crate__vstd__array__array_len_matches_n_35
    :skolemid skolem_user_crate__vstd__array__array_len_matches_n_35
))))

;; Broadcast crate::vstd::array::lemma_array_index
(assert
 (=>
  (fuel_bool fuel%vstd.array.lemma_array_index.)
  (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type) (a! Poly) (i! Poly)) (!
    (=>
     (and
      (has_type a! (ARRAY T&. T& N&. N&))
      (has_type i! INT)
     )
     (=>
      (and
       (uInv SZ (const_int N&))
       (and
        (<= 0 (%I i!))
        (< (%I i!) (const_int N&))
      ))
      (= (vstd!seq.Seq.index.? T&. T& (vstd.view.View.view.? $ (ARRAY T&. T& N&. N&) a!)
        i!
       ) (vstd!seq.Seq.index.? T&. T& (vstd.array.array_view.? T&. T& N&. N& a!) i!)
    )))
    :pattern ((array_index T&. T& N&. N& (%Poly%array%. a!) i!))
    :qid user_crate__vstd__array__lemma_array_index_36
    :skolemid skolem_user_crate__vstd__array__lemma_array_index_36
))))

;; Spec-Termination crate::vstd::pcm_lib::combine_values
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/pcm_lib.rs:13:1: 13:61 (#0)
(get-info :all-statistics)
(push)
 (declare-const P&. Dcr)
 (declare-const P& Type)
 (declare-const values! Poly)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Poly)
 (declare-const tmp%3 Poly)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type values! (TYPE%vstd.seq.Seq. P&. P&))
 )
 (declare-const %%switch_label%%0 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= decrease%init0 (vstd!seq.Seq.len.? P&. P& values!))
    (or
     (and
      (=>
       (= (vstd!seq.Seq.len.? P&. P& values!) 0)
       (=>
        (= tmp%3 (vstd.pcm.PCM.unit.? P&. P&))
        %%switch_label%%0
      ))
      (=>
       (not (= (vstd!seq.Seq.len.? P&. P& values!) 0))
       (=>
        (= tmp%2 (vstd!seq.Seq.subrange.? P&. P& values! (I 1) (I (vstd!seq.Seq.len.? P&. P&
            values!
        ))))
        (and
         (=>
          %%location_label%%0
          (check_decrease_int (let
            ((values!$0 tmp%2))
            (vstd!seq.Seq.len.? P&. P& values!$0)
           ) decrease%init0 false
         ))
         (=>
          (has_type tmp%1 P&)
          (=>
           (= tmp%1 (vstd.pcm_lib.combine_values.? P&. P& (vstd!seq.Seq.subrange.? P&. P& values!
              (I 1) (I (vstd!seq.Seq.len.? P&. P& values!))
           )))
           (=>
            (= tmp%3 (vstd.pcm.PCM.op.? P&. P& (vstd!seq.Seq.index.? P&. P& values! (I 0)) tmp%1))
            %%switch_label%%0
     )))))))
     (not %%switch_label%%0)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Axioms crate::vstd::pcm_lib::combine_values
(assert
 (fuel_bool_default fuel%vstd.pcm_lib.combine_values.)
)
(declare-const fuel_nat%vstd.pcm_lib.combine_values. Fuel)
(assert
 (forall ((P&. Dcr) (P& Type) (values! Poly) (fuel% Fuel)) (!
   (= (vstd.pcm_lib.rec%combine_values.? P&. P& values! fuel%) (vstd.pcm_lib.rec%combine_values.?
     P&. P& values! zero
   ))
   :pattern ((vstd.pcm_lib.rec%combine_values.? P&. P& values! fuel%))
   :qid internal_vstd.pcm_lib.combine_values._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.pcm_lib.combine_values._fuel_to_zero_definition
)))
(assert
 (forall ((P&. Dcr) (P& Type) (values! Poly) (fuel% Fuel)) (!
   (=>
    (and
     (tr_bound%vstd.pcm.PCM. P&. P&)
     (has_type values! (TYPE%vstd.seq.Seq. P&. P&))
    )
    (= (vstd.pcm_lib.rec%combine_values.? P&. P& values! (succ fuel%)) (ite
      (= (vstd!seq.Seq.len.? P&. P& values!) 0)
      (vstd.pcm.PCM.unit.? P&. P&)
      (vstd.pcm.PCM.op.? P&. P& (vstd!seq.Seq.index.? P&. P& values! (I 0)) (vstd.pcm_lib.rec%combine_values.?
        P&. P& (vstd!seq.Seq.subrange.? P&. P& values! (I 1) (I (vstd!seq.Seq.len.? P&. P& values!)))
        fuel%
   )))))
   :pattern ((vstd.pcm_lib.rec%combine_values.? P&. P& values! (succ fuel%)))
   :qid internal_vstd.pcm_lib.combine_values._fuel_to_body_definition
   :skolemid skolem_internal_vstd.pcm_lib.combine_values._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.pcm_lib.combine_values.)
  (forall ((P&. Dcr) (P& Type) (values! Poly)) (!
    (=>
     (and
      (tr_bound%vstd.pcm.PCM. P&. P&)
      (has_type values! (TYPE%vstd.seq.Seq. P&. P&))
     )
     (= (vstd.pcm_lib.combine_values.? P&. P& values!) (vstd.pcm_lib.rec%combine_values.?
       P&. P& values! (succ fuel_nat%vstd.pcm_lib.combine_values.)
    )))
    :pattern ((vstd.pcm_lib.combine_values.? P&. P& values!))
    :qid internal_vstd.pcm_lib.combine_values.?_definition
    :skolemid skolem_internal_vstd.pcm_lib.combine_values.?_definition
))))
(assert
 (forall ((P&. Dcr) (P& Type) (values! Poly)) (!
   (=>
    (has_type values! (TYPE%vstd.seq.Seq. P&. P&))
    (has_type (vstd.pcm_lib.combine_values.? P&. P& values!) P&)
   )
   :pattern ((vstd.pcm_lib.combine_values.? P&. P& values!))
   :qid internal_vstd.pcm_lib.combine_values.?_pre_post_definition
   :skolemid skolem_internal_vstd.pcm_lib.combine_values.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::view::impl&%0::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%0.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%0.view.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (=>
     (tr_bound%vstd.view.View. A&. A&)
     (= (vstd.view.View.view.? (REF A&.) A& self!) (vstd.view.View.view.? A&. A& self!))
    )
    :pattern ((vstd.view.View.view.? (REF A&.) A& self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%2::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%2.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%2.view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.View.view.? $ TYPE%tuple%0. self!) self!)
    :pattern ((vstd.view.View.view.? $ TYPE%tuple%0. self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%4::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%4.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%4.view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.View.view.? $ BOOL self!) self!)
    :pattern ((vstd.view.View.view.? $ BOOL self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%16::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%16.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%16.view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.View.view.? $ (UINT SZ) self!) self!)
    :pattern ((vstd.view.View.view.? $ (UINT SZ) self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%34::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%34.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%34.view.)
  (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type) (self! Poly)) (!
    (=>
     (and
      (tr_bound%vstd.view.View. A0&. A0&)
      (tr_bound%vstd.view.View. A1&. A1&)
     )
     (= (vstd.view.View.view.? $ (TYPE%tuple%2. A0&. A0& A1&. A1&) self!) (Poly%tuple%2.
       (tuple%2./tuple%2 (vstd.view.View.view.? A0&. A0& (tuple%2./tuple%2/0 (%Poly%tuple%2.
           self!
         ))
        ) (vstd.view.View.view.? A1&. A1& (tuple%2./tuple%2/1 (%Poly%tuple%2. self!)))
    ))))
    :pattern ((vstd.view.View.view.? $ (TYPE%tuple%2. A0&. A0& A1&. A1&) self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type)) (!
   (=>
    (uInv SZ (const_int N&))
    (tr_bound%vstd.view.View. $ (ARRAY T&. T& N&. N&))
   )
   :pattern ((tr_bound%vstd.view.View. $ (ARRAY T&. T& N&. N&)))
   :qid internal_crate__vstd__array__impl&__0_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__array__impl&__0_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type)) (!
   (=>
    (uInv SZ (const_int N&))
    (tr_bound%vstd.array.ArrayAdditionalSpecFns. $ (ARRAY T&. T& N&. N&) T&. T&)
   )
   :pattern ((tr_bound%vstd.array.ArrayAdditionalSpecFns. $ (ARRAY T&. T& N&. N&) T&.
     T&
   ))
   :qid internal_crate__vstd__array__impl&__2_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__array__impl&__2_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (=>
    (tr_bound%vstd.view.View. A&. A&)
    (tr_bound%vstd.view.View. (REF A&.) A&)
   )
   :pattern ((tr_bound%vstd.view.View. (REF A&.) A&))
   :qid internal_crate__vstd__view__impl&__0_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__view__impl&__0_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type)) (!
   (=>
    (and
     (tr_bound%vstd.view.View. A0&. A0&)
     (tr_bound%vstd.view.View. A1&. A1&)
    )
    (tr_bound%vstd.view.View. $ (TYPE%tuple%2. A0&. A0& A1&. A1&))
   )
   :pattern ((tr_bound%vstd.view.View. $ (TYPE%tuple%2. A0&. A0& A1&. A1&)))
   :qid internal_crate__vstd__view__impl&__34_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__view__impl&__34_trait_impl_definition
)))

;; Function-Specs crate::vstd::pcm_lib::lemma_pcm_properties
(declare-fun ens%vstd.pcm_lib.lemma_pcm_properties. (Dcr Type) Bool)
(assert
 (forall ((P&. Dcr) (P& Type)) (!
   (= (ens%vstd.pcm_lib.lemma_pcm_properties. P&. P&) (and
     (forall ((a$ Poly) (b$ Poly)) (!
       (=>
        (and
         (has_type a$ P&)
         (has_type b$ P&)
        )
        (=>
         (%B (vstd.pcm.PCM.valid.? P&. P& (vstd.pcm.PCM.op.? P&. P& a$ b$)))
         (%B (vstd.pcm.PCM.valid.? P&. P& a$))
       ))
       :pattern ((vstd.pcm.PCM.op.? P&. P& a$ b$))
       :qid user_crate__vstd__pcm_lib__lemma_pcm_properties_37
       :skolemid skolem_user_crate__vstd__pcm_lib__lemma_pcm_properties_37
     ))
     (forall ((a$ Poly) (b$ Poly)) (!
       (=>
        (and
         (has_type a$ P&)
         (has_type b$ P&)
        )
        (= (vstd.pcm.PCM.op.? P&. P& a$ b$) (vstd.pcm.PCM.op.? P&. P& b$ a$))
       )
       :pattern ((vstd.pcm.PCM.op.? P&. P& a$ b$))
       :qid user_crate__vstd__pcm_lib__lemma_pcm_properties_38
       :skolemid skolem_user_crate__vstd__pcm_lib__lemma_pcm_properties_38
     ))
     (forall ((a$ Poly)) (!
       (=>
        (has_type a$ P&)
        (= (vstd.pcm.PCM.op.? P&. P& a$ (vstd.pcm.PCM.unit.? P&. P&)) a$)
       )
       :pattern ((vstd.pcm.PCM.op.? P&. P& a$ (vstd.pcm.PCM.unit.? P&. P&)))
       :qid user_crate__vstd__pcm_lib__lemma_pcm_properties_39
       :skolemid skolem_user_crate__vstd__pcm_lib__lemma_pcm_properties_39
     ))
     (%B (vstd.pcm.PCM.valid.? P&. P& (vstd.pcm.PCM.unit.? P&. P&)))
   ))
   :pattern ((ens%vstd.pcm_lib.lemma_pcm_properties. P&. P&))
   :qid internal_ens__vstd.pcm_lib.lemma_pcm_properties._definition
   :skolemid skolem_internal_ens__vstd.pcm_lib.lemma_pcm_properties._definition
)))

;; Function-Def crate::vstd::pcm_lib::lemma_pcm_properties
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/pcm_lib.rs:27:1: 27:44 (#0)
(get-info :all-statistics)
(push)
 (declare-const P&. Dcr)
 (declare-const P& Type)
 (declare-const a@ Poly)
 (declare-const b@ Poly)
 (declare-const a$1@ Poly)
 (declare-const b$1@ Poly)
 (declare-const a$2@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (tr_bound%vstd.pcm.PCM. P&. P&)
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
 ;; postcondition not satisfied
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
     (has_type a@ P&)
     (=>
      (has_type b@ P&)
      (=>
       (%B (vstd.pcm.PCM.valid.? P&. P& (vstd.pcm.PCM.op.? P&. P& a@ b@)))
       (and
        (=>
         %%location_label%%0
         (req%vstd.pcm.PCM.closed_under_incl. P&. P& a@ b@)
        )
        (=>
         (ens%vstd.pcm.PCM.closed_under_incl. P&. P& a@ b@)
         (=>
          %%location_label%%1
          (%B (vstd.pcm.PCM.valid.? P&. P& a@))
    ))))))
    (=>
     (forall ((a$ Poly) (b$ Poly)) (!
       (=>
        (and
         (has_type a$ P&)
         (has_type b$ P&)
        )
        (=>
         (%B (vstd.pcm.PCM.valid.? P&. P& (vstd.pcm.PCM.op.? P&. P& a$ b$)))
         (%B (vstd.pcm.PCM.valid.? P&. P& a$))
       ))
       :pattern ((vstd.pcm.PCM.op.? P&. P& a$ b$))
       :qid user_crate__vstd__pcm_lib__lemma_pcm_properties_43
       :skolemid skolem_user_crate__vstd__pcm_lib__lemma_pcm_properties_43
     ))
     (and
      (=>
       (has_type a$1@ P&)
       (=>
        (has_type b$1@ P&)
        (=>
         (ens%vstd.pcm.PCM.commutative. P&. P& a$1@ b$1@)
         (=>
          %%location_label%%2
          (= (vstd.pcm.PCM.op.? P&. P& a$1@ b$1@) (vstd.pcm.PCM.op.? P&. P& b$1@ a$1@))
      ))))
      (=>
       (forall ((a$ Poly) (b$ Poly)) (!
         (=>
          (and
           (has_type a$ P&)
           (has_type b$ P&)
          )
          (= (vstd.pcm.PCM.op.? P&. P& a$ b$) (vstd.pcm.PCM.op.? P&. P& b$ a$))
         )
         :pattern ((vstd.pcm.PCM.op.? P&. P& a$ b$))
         :qid user_crate__vstd__pcm_lib__lemma_pcm_properties_44
         :skolemid skolem_user_crate__vstd__pcm_lib__lemma_pcm_properties_44
       ))
       (and
        (=>
         (has_type a$2@ P&)
         (=>
          (ens%vstd.pcm.PCM.op_unit. P&. P& a$2@)
          (=>
           %%location_label%%3
           (= (vstd.pcm.PCM.op.? P&. P& a$2@ (vstd.pcm.PCM.unit.? P&. P&)) a$2@)
        )))
        (=>
         (forall ((a$ Poly)) (!
           (=>
            (has_type a$ P&)
            (= (vstd.pcm.PCM.op.? P&. P& a$ (vstd.pcm.PCM.unit.? P&. P&)) a$)
           )
           :pattern ((vstd.pcm.PCM.op.? P&. P& a$ (vstd.pcm.PCM.unit.? P&. P&)))
           :qid user_crate__vstd__pcm_lib__lemma_pcm_properties_45
           :skolemid skolem_user_crate__vstd__pcm_lib__lemma_pcm_properties_45
         ))
         (and
          (=>
           (ens%vstd.pcm.PCM.unit_valid. P&. P&)
           (=>
            %%location_label%%4
            (%B (vstd.pcm.PCM.valid.? P&. P& (vstd.pcm.PCM.unit.? P&. P&)))
          ))
          (=>
           (%B (vstd.pcm.PCM.valid.? P&. P& (vstd.pcm.PCM.unit.? P&. P&)))
           (and
            (=>
             %%location_label%%5
             (forall ((a$ Poly) (b$ Poly)) (!
               (=>
                (and
                 (has_type a$ P&)
                 (has_type b$ P&)
                )
                (=>
                 (%B (vstd.pcm.PCM.valid.? P&. P& (vstd.pcm.PCM.op.? P&. P& a$ b$)))
                 (%B (vstd.pcm.PCM.valid.? P&. P& a$))
               ))
               :pattern ((vstd.pcm.PCM.op.? P&. P& a$ b$))
               :qid user_crate__vstd__pcm_lib__lemma_pcm_properties_40
               :skolemid skolem_user_crate__vstd__pcm_lib__lemma_pcm_properties_40
            )))
            (and
             (=>
              %%location_label%%6
              (forall ((a$ Poly) (b$ Poly)) (!
                (=>
                 (and
                  (has_type a$ P&)
                  (has_type b$ P&)
                 )
                 (= (vstd.pcm.PCM.op.? P&. P& a$ b$) (vstd.pcm.PCM.op.? P&. P& b$ a$))
                )
                :pattern ((vstd.pcm.PCM.op.? P&. P& a$ b$))
                :qid user_crate__vstd__pcm_lib__lemma_pcm_properties_41
                :skolemid skolem_user_crate__vstd__pcm_lib__lemma_pcm_properties_41
             )))
             (and
              (=>
               %%location_label%%7
               (forall ((a$ Poly)) (!
                 (=>
                  (has_type a$ P&)
                  (= (vstd.pcm.PCM.op.? P&. P& a$ (vstd.pcm.PCM.unit.? P&. P&)) a$)
                 )
                 :pattern ((vstd.pcm.PCM.op.? P&. P& a$ (vstd.pcm.PCM.unit.? P&. P&)))
                 :qid user_crate__vstd__pcm_lib__lemma_pcm_properties_42
                 :skolemid skolem_user_crate__vstd__pcm_lib__lemma_pcm_properties_42
              )))
              (=>
               %%location_label%%8
               (%B (vstd.pcm.PCM.valid.? P&. P& (vstd.pcm.PCM.unit.? P&. P&)))
 ))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::pcm_lib::copy_duplicable_part
(declare-fun req%vstd.pcm_lib.copy_duplicable_part. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%14 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (r! Poly) (new_value! Poly)) (!
   (= (req%vstd.pcm_lib.copy_duplicable_part. P&. P& r! new_value!) (=>
     %%global_location_label%%14
     (= (vstd.pcm.impl&%0.value.? P&. P& r!) (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.?
        P&. P& r!
       ) new_value!
   ))))
   :pattern ((req%vstd.pcm_lib.copy_duplicable_part. P&. P& r! new_value!))
   :qid internal_req__vstd.pcm_lib.copy_duplicable_part._definition
   :skolemid skolem_internal_req__vstd.pcm_lib.copy_duplicable_part._definition
)))
(declare-fun ens%vstd.pcm_lib.copy_duplicable_part. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (r! Poly) (new_value! Poly) (out! Poly)) (!
   (= (ens%vstd.pcm_lib.copy_duplicable_part. P&. P& r! new_value! out!) (and
     (has_type out! (TYPE%vstd.pcm.Resource. P&. P&))
     (= (vstd.pcm.impl&%0.loc.? P&. P& out!) (vstd.pcm.impl&%0.loc.? P&. P& r!))
     (= (vstd.pcm.impl&%0.value.? P&. P& out!) new_value!)
   ))
   :pattern ((ens%vstd.pcm_lib.copy_duplicable_part. P&. P& r! new_value! out!))
   :qid internal_ens__vstd.pcm_lib.copy_duplicable_part._definition
   :skolemid skolem_internal_ens__vstd.pcm_lib.copy_duplicable_part._definition
)))

;; Function-Def crate::vstd::pcm_lib::copy_duplicable_part
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/pcm_lib.rs:52:1: 53:16 (#0)
(get-info :all-statistics)
(push)
 (declare-const P&. Dcr)
 (declare-const P& Type)
 (declare-const out! Poly)
 (declare-const r! Poly)
 (declare-const new_value! Poly)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Poly)
 (declare-const u@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type r! (TYPE%vstd.pcm.Resource. P&. P&))
 )
 (assert
  (has_type new_value! P&)
 )
 (assert
  (tr_bound%vstd.pcm.PCM. P&. P&)
 )
 (assert
  (= (vstd.pcm.impl&%0.value.? P&. P& r!) (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.?
     P&. P& r!
    ) new_value!
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (ens%vstd.pcm_lib.lemma_pcm_properties. P&. P&)
    (=>
     (= tmp%1 (vstd.pcm.impl&%0.loc.? P&. P& r!))
     (=>
      (ens%vstd.pcm.impl&%0.create_unit. P&. P& tmp%1 u@)
      (and
       (=>
        %%location_label%%0
        (req%vstd.pcm.impl&%0.update_with_shared. P&. P& u@ r! new_value!)
       )
       (=>
        (ens%vstd.pcm.impl&%0.update_with_shared. P&. P& u@ r! new_value! tmp%2)
        (=>
         (= out! tmp%2)
         (and
          (=>
           %%location_label%%1
           (= (vstd.pcm.impl&%0.loc.? P&. P& out!) (vstd.pcm.impl&%0.loc.? P&. P& r!))
          )
          (=>
           %%location_label%%2
           (= (vstd.pcm.impl&%0.value.? P&. P& out!) new_value!)
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::pcm_lib::duplicate
(declare-fun req%vstd.pcm_lib.duplicate. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%15 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (r! Poly)) (!
   (= (req%vstd.pcm_lib.duplicate. P&. P& r!) (=>
     %%global_location_label%%15
     (= (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.? P&. P& r!) (vstd.pcm.impl&%0.value.?
        P&. P& r!
       )
      ) (vstd.pcm.impl&%0.value.? P&. P& r!)
   )))
   :pattern ((req%vstd.pcm_lib.duplicate. P&. P& r!))
   :qid internal_req__vstd.pcm_lib.duplicate._definition
   :skolemid skolem_internal_req__vstd.pcm_lib.duplicate._definition
)))
(declare-fun ens%vstd.pcm_lib.duplicate. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (r! Poly) (other! Poly)) (!
   (= (ens%vstd.pcm_lib.duplicate. P&. P& r! other!) (and
     (has_type other! (TYPE%vstd.pcm.Resource. P&. P&))
     (= (vstd.pcm.impl&%0.loc.? P&. P& other!) (vstd.pcm.impl&%0.loc.? P&. P& r!))
     (= (vstd.pcm.impl&%0.value.? P&. P& other!) (vstd.pcm.impl&%0.value.? P&. P& r!))
   ))
   :pattern ((ens%vstd.pcm_lib.duplicate. P&. P& r! other!))
   :qid internal_ens__vstd.pcm_lib.duplicate._definition
   :skolemid skolem_internal_ens__vstd.pcm_lib.duplicate._definition
)))

;; Function-Def crate::vstd::pcm_lib::duplicate
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/pcm_lib.rs:68:1: 68:87 (#0)
(get-info :all-statistics)
(push)
 (declare-const P&. Dcr)
 (declare-const P& Type)
 (declare-const other! Poly)
 (declare-const r! Poly)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type r! (TYPE%vstd.pcm.Resource. P&. P&))
 )
 (assert
  (tr_bound%vstd.pcm.PCM. P&. P&)
 )
 (assert
  (= (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.? P&. P& r!) (vstd.pcm.impl&%0.value.?
     P&. P& r!
    )
   ) (vstd.pcm.impl&%0.value.? P&. P& r!)
 ))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (= tmp%2 (vstd.pcm.impl&%0.value.? P&. P& r!))
    (and
     (=>
      %%location_label%%0
      (req%vstd.pcm_lib.copy_duplicable_part. P&. P& r! tmp%2)
     )
     (=>
      (ens%vstd.pcm_lib.copy_duplicable_part. P&. P& r! tmp%2 tmp%1)
      (=>
       (= other! tmp%1)
       (and
        (=>
         %%location_label%%1
         (= (vstd.pcm.impl&%0.loc.? P&. P& other!) (vstd.pcm.impl&%0.loc.? P&. P& r!))
        )
        (=>
         %%location_label%%2
         (= (vstd.pcm.impl&%0.value.? P&. P& other!) (vstd.pcm.impl&%0.value.? P&. P& r!))
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::pcm_lib::incorporate
(declare-fun req%vstd.pcm_lib.incorporate. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%16 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (pre%r1! Poly) (r2! Poly)) (!
   (= (req%vstd.pcm_lib.incorporate. P&. P& pre%r1! r2!) (=>
     %%global_location_label%%16
     (= (vstd.pcm.impl&%0.loc.? P&. P& pre%r1!) (vstd.pcm.impl&%0.loc.? P&. P& r2!))
   ))
   :pattern ((req%vstd.pcm_lib.incorporate. P&. P& pre%r1! r2!))
   :qid internal_req__vstd.pcm_lib.incorporate._definition
   :skolemid skolem_internal_req__vstd.pcm_lib.incorporate._definition
)))
(declare-fun ens%vstd.pcm_lib.incorporate. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (pre%r1! Poly) (r1! Poly) (r2! Poly)) (!
   (= (ens%vstd.pcm_lib.incorporate. P&. P& pre%r1! r1! r2!) (and
     (has_type r1! (TYPE%vstd.pcm.Resource. P&. P&))
     (= (vstd.pcm.impl&%0.loc.? P&. P& r1!) (vstd.pcm.impl&%0.loc.? P&. P& pre%r1!))
     (= (vstd.pcm.impl&%0.value.? P&. P& r1!) (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.?
        P&. P& pre%r1!
       ) (vstd.pcm.impl&%0.value.? P&. P& r2!)
   ))))
   :pattern ((ens%vstd.pcm_lib.incorporate. P&. P& pre%r1! r1! r2!))
   :qid internal_ens__vstd.pcm_lib.incorporate._definition
   :skolemid skolem_internal_ens__vstd.pcm_lib.incorporate._definition
)))

;; Function-Def crate::vstd::pcm_lib::incorporate
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/pcm_lib.rs:79:1: 79:88 (#0)
(get-info :all-statistics)
(push)
 (declare-const P&. Dcr)
 (declare-const P& Type)
 (declare-const r1!@0 Poly)
 (declare-const r2! Poly)
 (declare-const tmp%1 Int)
 (declare-const r3@0 Poly)
 (declare-const r4@0 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type r1!@0 (TYPE%vstd.pcm.Resource. P&. P&))
 )
 (assert
  (has_type r2! (TYPE%vstd.pcm.Resource. P&. P&))
 )
 (assert
  (tr_bound%vstd.pcm.PCM. P&. P&)
 )
 (assert
  (= (vstd.pcm.impl&%0.loc.? P&. P& r1!@0) (vstd.pcm.impl&%0.loc.? P&. P& r2!))
 )
 (declare-const r1!@1 Poly)
 (declare-const r3@1 Poly)
 (declare-const r1!@2 Poly)
 (declare-const r4@1 Poly)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (= tmp%1 (vstd.pcm.impl&%0.loc.? P&. P& r1!@0))
    (=>
     (ens%vstd.pcm.impl&%0.create_unit. P&. P& tmp%1 r3@0)
     (=>
      (has_type r1!@1 (TYPE%vstd.pcm.Resource. P&. P&))
      (=>
       (has_type r3@1 (TYPE%vstd.pcm.Resource. P&. P&))
       (=>
        (ens%vstd.modes.tracked_swap. $ (TYPE%vstd.pcm.Resource. P&. P&) r1!@0 r1!@1 r3@0
         r3@1
        )
        (and
         (=>
          %%location_label%%0
          (req%vstd.pcm.impl&%0.join. P&. P& r3@1 r2!)
         )
         (=>
          (ens%vstd.pcm.impl&%0.join. P&. P& r3@1 r2! r4@0)
          (=>
           (has_type r1!@2 (TYPE%vstd.pcm.Resource. P&. P&))
           (=>
            (has_type r4@1 (TYPE%vstd.pcm.Resource. P&. P&))
            (=>
             (ens%vstd.modes.tracked_swap. $ (TYPE%vstd.pcm.Resource. P&. P&) r1!@1 r1!@2 r4@0
              r4@1
             )
             (and
              (=>
               %%location_label%%1
               (= (vstd.pcm.impl&%0.loc.? P&. P& r1!@2) (vstd.pcm.impl&%0.loc.? P&. P& r1!@0))
              )
              (=>
               %%location_label%%2
               (= (vstd.pcm.impl&%0.value.? P&. P& r1!@2) (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.?
                  P&. P& r1!@0
                 ) (vstd.pcm.impl&%0.value.? P&. P& r2!)
 ))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::pcm_lib::split_mut
(declare-fun req%vstd.pcm_lib.split_mut. (Dcr Type Poly Poly Poly) Bool)
(declare-const %%global_location_label%%17 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (pre%r! Poly) (left! Poly) (right! Poly)) (!
   (= (req%vstd.pcm_lib.split_mut. P&. P& pre%r! left! right!) (=>
     %%global_location_label%%17
     (= (vstd.pcm.impl&%0.value.? P&. P& pre%r!) (vstd.pcm.PCM.op.? P&. P& left! right!))
   ))
   :pattern ((req%vstd.pcm_lib.split_mut. P&. P& pre%r! left! right!))
   :qid internal_req__vstd.pcm_lib.split_mut._definition
   :skolemid skolem_internal_req__vstd.pcm_lib.split_mut._definition
)))
(declare-fun ens%vstd.pcm_lib.split_mut. (Dcr Type Poly Poly Poly Poly Poly) Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (pre%r! Poly) (r! Poly) (left! Poly) (right! Poly) (other!
    Poly
   )
  ) (!
   (= (ens%vstd.pcm_lib.split_mut. P&. P& pre%r! r! left! right! other!) (and
     (has_type other! (TYPE%vstd.pcm.Resource. P&. P&))
     (has_type r! (TYPE%vstd.pcm.Resource. P&. P&))
     (let
      ((tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& other!)))
      (and
       (= (vstd.pcm.impl&%0.loc.? P&. P& r!) tmp%%$)
       (= tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& pre%r!))
     ))
     (= (vstd.pcm.impl&%0.value.? P&. P& r!) left!)
     (= (vstd.pcm.impl&%0.value.? P&. P& other!) right!)
   ))
   :pattern ((ens%vstd.pcm_lib.split_mut. P&. P& pre%r! r! left! right! other!))
   :qid internal_ens__vstd.pcm_lib.split_mut._definition
   :skolemid skolem_internal_ens__vstd.pcm_lib.split_mut._definition
)))

;; Function-Def crate::vstd::pcm_lib::split_mut
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/pcm_lib.rs:95:1: 96:16 (#0)
(get-info :all-statistics)
(push)
 (declare-const P&. Dcr)
 (declare-const P& Type)
 (declare-const other! Poly)
 (declare-const r!@0 Poly)
 (declare-const left! Poly)
 (declare-const right! Poly)
 (declare-const tmp%1 Int)
 (declare-const r3@0 Poly)
 (declare-const tmp%%@ tuple%2.)
 (declare-const r1@0 Poly)
 (declare-const r2@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type r!@0 (TYPE%vstd.pcm.Resource. P&. P&))
 )
 (assert
  (has_type left! P&)
 )
 (assert
  (has_type right! P&)
 )
 (assert
  (tr_bound%vstd.pcm.PCM. P&. P&)
 )
 (assert
  (= (vstd.pcm.impl&%0.value.? P&. P& r!@0) (vstd.pcm.PCM.op.? P&. P& left! right!))
 )
 (declare-const r!@1 Poly)
 (declare-const r3@1 Poly)
 (declare-const r!@2 Poly)
 (declare-const r1@1 Poly)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (= tmp%1 (vstd.pcm.impl&%0.loc.? P&. P& r!@0))
    (=>
     (ens%vstd.pcm.impl&%0.create_unit. P&. P& tmp%1 r3@0)
     (=>
      (has_type r!@1 (TYPE%vstd.pcm.Resource. P&. P&))
      (=>
       (has_type r3@1 (TYPE%vstd.pcm.Resource. P&. P&))
       (=>
        (ens%vstd.modes.tracked_swap. $ (TYPE%vstd.pcm.Resource. P&. P&) r!@0 r!@1 r3@0 r3@1)
        (and
         (=>
          %%location_label%%0
          (req%vstd.pcm.impl&%0.split. P&. P& r3@1 left! right!)
         )
         (=>
          (ens%vstd.pcm.impl&%0.split. P&. P& r3@1 left! right! tmp%%@)
          (=>
           (= r1@0 (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%@))))
           (=>
            (= r2@ (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%@))))
            (=>
             (has_type r!@2 (TYPE%vstd.pcm.Resource. P&. P&))
             (=>
              (has_type r1@1 (TYPE%vstd.pcm.Resource. P&. P&))
              (=>
               (ens%vstd.modes.tracked_swap. $ (TYPE%vstd.pcm.Resource. P&. P&) r!@1 r!@2 r1@0 r1@1)
               (=>
                (= other! r2@)
                (and
                 (=>
                  %%location_label%%1
                  (let
                   ((tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& other!)))
                   (and
                    (= (vstd.pcm.impl&%0.loc.? P&. P& r!@2) tmp%%$)
                    (= tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& r!@0))
                 )))
                 (and
                  (=>
                   %%location_label%%2
                   (= (vstd.pcm.impl&%0.value.? P&. P& r!@2) left!)
                  )
                  (=>
                   %%location_label%%3
                   (= (vstd.pcm.impl&%0.value.? P&. P& other!) right!)
 ))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::pcm_lib::extract
(declare-fun ens%vstd.pcm_lib.extract. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (pre%r! Poly) (r! Poly) (other! Poly)) (!
   (= (ens%vstd.pcm_lib.extract. P&. P& pre%r! r! other!) (and
     (has_type other! (TYPE%vstd.pcm.Resource. P&. P&))
     (has_type r! (TYPE%vstd.pcm.Resource. P&. P&))
     (let
      ((tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& r!)))
      (and
       (= (vstd.pcm.impl&%0.loc.? P&. P& other!) tmp%%$)
       (= tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& pre%r!))
     ))
     (= (vstd.pcm.impl&%0.value.? P&. P& r!) (vstd.pcm.PCM.unit.? P&. P&))
     (= (vstd.pcm.impl&%0.value.? P&. P& other!) (vstd.pcm.impl&%0.value.? P&. P& pre%r!))
   ))
   :pattern ((ens%vstd.pcm_lib.extract. P&. P& pre%r! r! other!))
   :qid internal_ens__vstd.pcm_lib.extract._definition
   :skolemid skolem_internal_ens__vstd.pcm_lib.extract._definition
)))

;; Function-Def crate::vstd::pcm_lib::extract
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/pcm_lib.rs:114:1: 114:89 (#0)
(get-info :all-statistics)
(push)
 (declare-const P&. Dcr)
 (declare-const P& Type)
 (declare-const other! Poly)
 (declare-const r!@0 Poly)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Poly)
 (declare-const tmp%3 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type r!@0 (TYPE%vstd.pcm.Resource. P&. P&))
 )
 (assert
  (tr_bound%vstd.pcm.PCM. P&. P&)
 )
 (declare-const r!@1 Poly)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (ens%vstd.pcm_lib.lemma_pcm_properties. P&. P&)
    (=>
     (= tmp%2 (vstd.pcm.PCM.unit.? P&. P&))
     (=>
      (= tmp%3 (vstd.pcm.impl&%0.value.? P&. P& r!@0))
      (and
       (=>
        %%location_label%%0
        (req%vstd.pcm_lib.split_mut. P&. P& r!@0 tmp%2 tmp%3)
       )
       (=>
        (has_type r!@1 (TYPE%vstd.pcm.Resource. P&. P&))
        (=>
         (ens%vstd.pcm_lib.split_mut. P&. P& r!@0 r!@1 tmp%2 tmp%3 tmp%1)
         (=>
          (= other! tmp%1)
          (and
           (=>
            %%location_label%%1
            (let
             ((tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& r!@1)))
             (and
              (= (vstd.pcm.impl&%0.loc.? P&. P& other!) tmp%%$)
              (= tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& r!@0))
           )))
           (and
            (=>
             %%location_label%%2
             (= (vstd.pcm.impl&%0.value.? P&. P& r!@1) (vstd.pcm.PCM.unit.? P&. P&))
            )
            (=>
             %%location_label%%3
             (= (vstd.pcm.impl&%0.value.? P&. P& other!) (vstd.pcm.impl&%0.value.? P&. P& r!@0))
 ))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::pcm_lib::update_mut
(declare-fun req%vstd.pcm_lib.update_mut. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%18 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (pre%r! Poly) (new_value! Poly)) (!
   (= (req%vstd.pcm_lib.update_mut. P&. P& pre%r! new_value!) (=>
     %%global_location_label%%18
     (vstd.pcm.frame_preserving_update.? P&. P& (vstd.pcm.impl&%0.value.? P&. P& pre%r!)
      new_value!
   )))
   :pattern ((req%vstd.pcm_lib.update_mut. P&. P& pre%r! new_value!))
   :qid internal_req__vstd.pcm_lib.update_mut._definition
   :skolemid skolem_internal_req__vstd.pcm_lib.update_mut._definition
)))
(declare-fun ens%vstd.pcm_lib.update_mut. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (pre%r! Poly) (r! Poly) (new_value! Poly)) (!
   (= (ens%vstd.pcm_lib.update_mut. P&. P& pre%r! r! new_value!) (and
     (has_type r! (TYPE%vstd.pcm.Resource. P&. P&))
     (= (vstd.pcm.impl&%0.loc.? P&. P& r!) (vstd.pcm.impl&%0.loc.? P&. P& pre%r!))
     (= (vstd.pcm.impl&%0.value.? P&. P& r!) new_value!)
   ))
   :pattern ((ens%vstd.pcm_lib.update_mut. P&. P& pre%r! r! new_value!))
   :qid internal_ens__vstd.pcm_lib.update_mut._definition
   :skolemid skolem_internal_ens__vstd.pcm_lib.update_mut._definition
)))

;; Function-Def crate::vstd::pcm_lib::update_mut
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/pcm_lib.rs:127:1: 127:75 (#0)
(get-info :all-statistics)
(push)
 (declare-const P&. Dcr)
 (declare-const P& Type)
 (declare-const r!@0 Poly)
 (declare-const new_value! Poly)
 (declare-const tmp%1 Int)
 (declare-const r3@0 Poly)
 (declare-const r4@0 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type r!@0 (TYPE%vstd.pcm.Resource. P&. P&))
 )
 (assert
  (has_type new_value! P&)
 )
 (assert
  (tr_bound%vstd.pcm.PCM. P&. P&)
 )
 (assert
  (vstd.pcm.frame_preserving_update.? P&. P& (vstd.pcm.impl&%0.value.? P&. P& r!@0)
   new_value!
 ))
 (declare-const r!@1 Poly)
 (declare-const r3@1 Poly)
 (declare-const r!@2 Poly)
 (declare-const r4@1 Poly)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (= tmp%1 (vstd.pcm.impl&%0.loc.? P&. P& r!@0))
    (=>
     (ens%vstd.pcm.impl&%0.create_unit. P&. P& tmp%1 r3@0)
     (=>
      (has_type r!@1 (TYPE%vstd.pcm.Resource. P&. P&))
      (=>
       (has_type r3@1 (TYPE%vstd.pcm.Resource. P&. P&))
       (=>
        (ens%vstd.modes.tracked_swap. $ (TYPE%vstd.pcm.Resource. P&. P&) r!@0 r!@1 r3@0 r3@1)
        (and
         (=>
          %%location_label%%0
          (req%vstd.pcm.impl&%0.update. P&. P& r3@1 new_value!)
         )
         (=>
          (ens%vstd.pcm.impl&%0.update. P&. P& r3@1 new_value! r4@0)
          (=>
           (has_type r!@2 (TYPE%vstd.pcm.Resource. P&. P&))
           (=>
            (has_type r4@1 (TYPE%vstd.pcm.Resource. P&. P&))
            (=>
             (ens%vstd.modes.tracked_swap. $ (TYPE%vstd.pcm.Resource. P&. P&) r!@1 r!@2 r4@0 r4@1)
             (and
              (=>
               %%location_label%%1
               (= (vstd.pcm.impl&%0.loc.? P&. P& r!@2) (vstd.pcm.impl&%0.loc.? P&. P& r!@0))
              )
              (=>
               %%location_label%%2
               (= (vstd.pcm.impl&%0.value.? P&. P& r!@2) new_value!)
 ))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::pcm_lib::redistribute
(declare-fun req%vstd.pcm_lib.redistribute. (Dcr Type Poly Poly Poly Poly) Bool)
(declare-const %%global_location_label%%19 Bool)
(declare-const %%global_location_label%%20 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (pre%r1! Poly) (pre%r2! Poly) (v1! Poly) (v2! Poly))
  (!
   (= (req%vstd.pcm_lib.redistribute. P&. P& pre%r1! pre%r2! v1! v2!) (and
     (=>
      %%global_location_label%%19
      (= (vstd.pcm.impl&%0.loc.? P&. P& pre%r1!) (vstd.pcm.impl&%0.loc.? P&. P& pre%r2!))
     )
     (=>
      %%global_location_label%%20
      (= (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.? P&. P& pre%r1!) (vstd.pcm.impl&%0.value.?
         P&. P& pre%r2!
        )
       ) (vstd.pcm.PCM.op.? P&. P& v1! v2!)
   ))))
   :pattern ((req%vstd.pcm_lib.redistribute. P&. P& pre%r1! pre%r2! v1! v2!))
   :qid internal_req__vstd.pcm_lib.redistribute._definition
   :skolemid skolem_internal_req__vstd.pcm_lib.redistribute._definition
)))
(declare-fun ens%vstd.pcm_lib.redistribute. (Dcr Type Poly Poly Poly Poly Poly Poly)
 Bool
)
(assert
 (forall ((P&. Dcr) (P& Type) (pre%r1! Poly) (r1! Poly) (pre%r2! Poly) (r2! Poly) (v1!
    Poly
   ) (v2! Poly)
  ) (!
   (= (ens%vstd.pcm_lib.redistribute. P&. P& pre%r1! r1! pre%r2! r2! v1! v2!) (and
     (has_type r1! (TYPE%vstd.pcm.Resource. P&. P&))
     (has_type r2! (TYPE%vstd.pcm.Resource. P&. P&))
     (let
      ((tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& r2!)))
      (and
       (= (vstd.pcm.impl&%0.loc.? P&. P& r1!) tmp%%$)
       (= tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& pre%r1!))
     ))
     (= (vstd.pcm.impl&%0.value.? P&. P& r1!) v1!)
     (= (vstd.pcm.impl&%0.value.? P&. P& r2!) v2!)
   ))
   :pattern ((ens%vstd.pcm_lib.redistribute. P&. P& pre%r1! r1! pre%r2! r2! v1! v2!))
   :qid internal_ens__vstd.pcm_lib.redistribute._definition
   :skolemid skolem_internal_ens__vstd.pcm_lib.redistribute._definition
)))

;; Function-Def crate::vstd::pcm_lib::redistribute
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/pcm_lib.rs:143:1: 148:2 (#0)
(get-info :all-statistics)
(push)
 (declare-const P&. Dcr)
 (declare-const P& Type)
 (declare-const r1!@0 Poly)
 (declare-const r2!@0 Poly)
 (declare-const v1! Poly)
 (declare-const v2! Poly)
 (declare-const r2_extracted@ Poly)
 (declare-const r2_new@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type r1!@0 (TYPE%vstd.pcm.Resource. P&. P&))
 )
 (assert
  (has_type r2!@0 (TYPE%vstd.pcm.Resource. P&. P&))
 )
 (assert
  (has_type v1! P&)
 )
 (assert
  (has_type v2! P&)
 )
 (assert
  (tr_bound%vstd.pcm.PCM. P&. P&)
 )
 (assert
  (= (vstd.pcm.impl&%0.loc.? P&. P& r1!@0) (vstd.pcm.impl&%0.loc.? P&. P& r2!@0))
 )
 (assert
  (= (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.? P&. P& r1!@0) (vstd.pcm.impl&%0.value.?
     P&. P& r2!@0
    )
   ) (vstd.pcm.PCM.op.? P&. P& v1! v2!)
 ))
 (declare-const r2!@1 Poly)
 (declare-const r1!@1 Poly)
 (declare-const r1!@2 Poly)
 (declare-const r2!@2 Poly)
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
  (not (=>
    (ens%vstd.pcm_lib.lemma_pcm_properties. P&. P&)
    (=>
     (has_type r2!@1 (TYPE%vstd.pcm.Resource. P&. P&))
     (=>
      (ens%vstd.pcm_lib.extract. P&. P& r2!@0 r2!@1 r2_extracted@)
      (and
       (=>
        %%location_label%%0
        (req%vstd.pcm_lib.incorporate. P&. P& r1!@0 r2_extracted@)
       )
       (=>
        (has_type r1!@1 (TYPE%vstd.pcm.Resource. P&. P&))
        (=>
         (ens%vstd.pcm_lib.incorporate. P&. P& r1!@0 r1!@1 r2_extracted@)
         (and
          (=>
           %%location_label%%1
           (req%vstd.pcm_lib.split_mut. P&. P& r1!@1 v1! v2!)
          )
          (=>
           (has_type r1!@2 (TYPE%vstd.pcm.Resource. P&. P&))
           (=>
            (ens%vstd.pcm_lib.split_mut. P&. P& r1!@1 r1!@2 v1! v2! r2_new@)
            (and
             (=>
              %%location_label%%2
              (req%vstd.pcm_lib.incorporate. P&. P& r2!@1 r2_new@)
             )
             (=>
              (has_type r2!@2 (TYPE%vstd.pcm.Resource. P&. P&))
              (=>
               (ens%vstd.pcm_lib.incorporate. P&. P& r2!@1 r2!@2 r2_new@)
               (and
                (=>
                 %%location_label%%3
                 (let
                  ((tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& r2!@2)))
                  (and
                   (= (vstd.pcm.impl&%0.loc.? P&. P& r1!@2) tmp%%$)
                   (= tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& r1!@0))
                )))
                (and
                 (=>
                  %%location_label%%4
                  (= (vstd.pcm.impl&%0.value.? P&. P& r1!@2) v1!)
                 )
                 (=>
                  %%location_label%%5
                  (= (vstd.pcm.impl&%0.value.? P&. P& r2!@2) v2!)
 )))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::pcm_lib::update_and_redistribute
(declare-fun req%vstd.pcm_lib.update_and_redistribute. (Dcr Type Poly Poly Poly Poly)
 Bool
)
(declare-const %%global_location_label%%21 Bool)
(declare-const %%global_location_label%%22 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (pre%r1! Poly) (pre%r2! Poly) (v1! Poly) (v2! Poly))
  (!
   (= (req%vstd.pcm_lib.update_and_redistribute. P&. P& pre%r1! pre%r2! v1! v2!) (and
     (=>
      %%global_location_label%%21
      (= (vstd.pcm.impl&%0.loc.? P&. P& pre%r1!) (vstd.pcm.impl&%0.loc.? P&. P& pre%r2!))
     )
     (=>
      %%global_location_label%%22
      (vstd.pcm.frame_preserving_update.? P&. P& (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.?
         P&. P& pre%r1!
        ) (vstd.pcm.impl&%0.value.? P&. P& pre%r2!)
       ) (vstd.pcm.PCM.op.? P&. P& v1! v2!)
   ))))
   :pattern ((req%vstd.pcm_lib.update_and_redistribute. P&. P& pre%r1! pre%r2! v1! v2!))
   :qid internal_req__vstd.pcm_lib.update_and_redistribute._definition
   :skolemid skolem_internal_req__vstd.pcm_lib.update_and_redistribute._definition
)))
(declare-fun ens%vstd.pcm_lib.update_and_redistribute. (Dcr Type Poly Poly Poly Poly
  Poly Poly
 ) Bool
)
(assert
 (forall ((P&. Dcr) (P& Type) (pre%r1! Poly) (r1! Poly) (pre%r2! Poly) (r2! Poly) (v1!
    Poly
   ) (v2! Poly)
  ) (!
   (= (ens%vstd.pcm_lib.update_and_redistribute. P&. P& pre%r1! r1! pre%r2! r2! v1! v2!)
    (and
     (has_type r1! (TYPE%vstd.pcm.Resource. P&. P&))
     (has_type r2! (TYPE%vstd.pcm.Resource. P&. P&))
     (let
      ((tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& r2!)))
      (and
       (= (vstd.pcm.impl&%0.loc.? P&. P& r1!) tmp%%$)
       (= tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& pre%r1!))
     ))
     (= (vstd.pcm.impl&%0.value.? P&. P& r1!) v1!)
     (= (vstd.pcm.impl&%0.value.? P&. P& r2!) v2!)
   ))
   :pattern ((ens%vstd.pcm_lib.update_and_redistribute. P&. P& pre%r1! r1! pre%r2! r2!
     v1! v2!
   ))
   :qid internal_ens__vstd.pcm_lib.update_and_redistribute._definition
   :skolemid skolem_internal_ens__vstd.pcm_lib.update_and_redistribute._definition
)))

;; Function-Def crate::vstd::pcm_lib::update_and_redistribute
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/pcm_lib.rs:169:1: 174:2 (#0)
(get-info :all-statistics)
(push)
 (declare-const P&. Dcr)
 (declare-const P& Type)
 (declare-const r1!@0 Poly)
 (declare-const r2!@0 Poly)
 (declare-const v1! Poly)
 (declare-const v2! Poly)
 (declare-const tmp%1 Poly)
 (declare-const r2_extracted@ Poly)
 (declare-const r2_new@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type r1!@0 (TYPE%vstd.pcm.Resource. P&. P&))
 )
 (assert
  (has_type r2!@0 (TYPE%vstd.pcm.Resource. P&. P&))
 )
 (assert
  (has_type v1! P&)
 )
 (assert
  (has_type v2! P&)
 )
 (assert
  (tr_bound%vstd.pcm.PCM. P&. P&)
 )
 (assert
  (= (vstd.pcm.impl&%0.loc.? P&. P& r1!@0) (vstd.pcm.impl&%0.loc.? P&. P& r2!@0))
 )
 (assert
  (vstd.pcm.frame_preserving_update.? P&. P& (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.?
     P&. P& r1!@0
    ) (vstd.pcm.impl&%0.value.? P&. P& r2!@0)
   ) (vstd.pcm.PCM.op.? P&. P& v1! v2!)
 ))
 (declare-const r2!@1 Poly)
 (declare-const r1!@1 Poly)
 (declare-const r1!@2 Poly)
 (declare-const r1!@3 Poly)
 (declare-const r2!@2 Poly)
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
 ;; postcondition not satisfied
 (declare-const %%location_label%%5 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%6 Bool)
 (assert
  (not (=>
    (ens%vstd.pcm_lib.lemma_pcm_properties. P&. P&)
    (=>
     (has_type r2!@1 (TYPE%vstd.pcm.Resource. P&. P&))
     (=>
      (ens%vstd.pcm_lib.extract. P&. P& r2!@0 r2!@1 r2_extracted@)
      (and
       (=>
        %%location_label%%0
        (req%vstd.pcm_lib.incorporate. P&. P& r1!@0 r2_extracted@)
       )
       (=>
        (has_type r1!@1 (TYPE%vstd.pcm.Resource. P&. P&))
        (=>
         (ens%vstd.pcm_lib.incorporate. P&. P& r1!@0 r1!@1 r2_extracted@)
         (=>
          (= tmp%1 (vstd.pcm.PCM.op.? P&. P& v1! v2!))
          (and
           (=>
            %%location_label%%1
            (req%vstd.pcm_lib.update_mut. P&. P& r1!@1 tmp%1)
           )
           (=>
            (has_type r1!@2 (TYPE%vstd.pcm.Resource. P&. P&))
            (=>
             (ens%vstd.pcm_lib.update_mut. P&. P& r1!@1 r1!@2 tmp%1)
             (and
              (=>
               %%location_label%%2
               (req%vstd.pcm_lib.split_mut. P&. P& r1!@2 v1! v2!)
              )
              (=>
               (has_type r1!@3 (TYPE%vstd.pcm.Resource. P&. P&))
               (=>
                (ens%vstd.pcm_lib.split_mut. P&. P& r1!@2 r1!@3 v1! v2! r2_new@)
                (and
                 (=>
                  %%location_label%%3
                  (req%vstd.pcm_lib.incorporate. P&. P& r2!@1 r2_new@)
                 )
                 (=>
                  (has_type r2!@2 (TYPE%vstd.pcm.Resource. P&. P&))
                  (=>
                   (ens%vstd.pcm_lib.incorporate. P&. P& r2!@1 r2!@2 r2_new@)
                   (and
                    (=>
                     %%location_label%%4
                     (let
                      ((tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& r2!@2)))
                      (and
                       (= (vstd.pcm.impl&%0.loc.? P&. P& r1!@3) tmp%%$)
                       (= tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& r1!@0))
                    )))
                    (and
                     (=>
                      %%location_label%%5
                      (= (vstd.pcm.impl&%0.value.? P&. P& r1!@3) v1!)
                     )
                     (=>
                      %%location_label%%6
                      (= (vstd.pcm.impl&%0.value.? P&. P& r2!@2) v2!)
 )))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::pcm_lib::validate_3
(declare-fun req%vstd.pcm_lib.validate_3. (Dcr Type Poly Poly Poly) Bool)
(declare-const %%global_location_label%%23 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (pre%r1! Poly) (pre%r2! Poly) (r3! Poly)) (!
   (= (req%vstd.pcm_lib.validate_3. P&. P& pre%r1! pre%r2! r3!) (=>
     %%global_location_label%%23
     (let
      ((tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& pre%r2!)))
      (and
       (= (vstd.pcm.impl&%0.loc.? P&. P& pre%r1!) tmp%%$)
       (= tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& r3!))
   ))))
   :pattern ((req%vstd.pcm_lib.validate_3. P&. P& pre%r1! pre%r2! r3!))
   :qid internal_req__vstd.pcm_lib.validate_3._definition
   :skolemid skolem_internal_req__vstd.pcm_lib.validate_3._definition
)))
(declare-fun ens%vstd.pcm_lib.validate_3. (Dcr Type Poly Poly Poly Poly Poly) Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (pre%r1! Poly) (r1! Poly) (pre%r2! Poly) (r2! Poly) (r3!
    Poly
   )
  ) (!
   (= (ens%vstd.pcm_lib.validate_3. P&. P& pre%r1! r1! pre%r2! r2! r3!) (and
     (has_type r1! (TYPE%vstd.pcm.Resource. P&. P&))
     (has_type r2! (TYPE%vstd.pcm.Resource. P&. P&))
     (let
      ((tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& r2!)))
      (and
       (= (vstd.pcm.impl&%0.loc.? P&. P& r1!) tmp%%$)
       (= tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& r3!))
     ))
     (= (vstd.pcm.impl&%0.value.? P&. P& r1!) (vstd.pcm.impl&%0.value.? P&. P& pre%r1!))
     (= (vstd.pcm.impl&%0.value.? P&. P& r2!) (vstd.pcm.impl&%0.value.? P&. P& pre%r2!))
     (%B (vstd.pcm.PCM.valid.? P&. P& (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.?
         P&. P& r1!
        ) (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.? P&. P& r2!) (vstd.pcm.impl&%0.value.?
          P&. P& r3!
   )))))))
   :pattern ((ens%vstd.pcm_lib.validate_3. P&. P& pre%r1! r1! pre%r2! r2! r3!))
   :qid internal_ens__vstd.pcm_lib.validate_3._definition
   :skolemid skolem_internal_ens__vstd.pcm_lib.validate_3._definition
)))

;; Function-Def crate::vstd::pcm_lib::validate_3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/pcm_lib.rs:195:1: 199:2 (#0)
(get-info :all-statistics)
(push)
 (declare-const P&. Dcr)
 (declare-const P& Type)
 (declare-const r1!@0 Poly)
 (declare-const r2!@0 Poly)
 (declare-const r3! Poly)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Poly)
 (declare-const tmp%3 Poly)
 (declare-const tmp%4 Poly)
 (declare-const tmp%5 Poly)
 (declare-const r2_extracted@0 Poly)
 (declare-const r2_split@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type r1!@0 (TYPE%vstd.pcm.Resource. P&. P&))
 )
 (assert
  (has_type r2!@0 (TYPE%vstd.pcm.Resource. P&. P&))
 )
 (assert
  (has_type r3! (TYPE%vstd.pcm.Resource. P&. P&))
 )
 (assert
  (tr_bound%vstd.pcm.PCM. P&. P&)
 )
 (assert
  (let
   ((tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& r2!@0)))
   (and
    (= (vstd.pcm.impl&%0.loc.? P&. P& r1!@0) tmp%%$)
    (= tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& r3!))
 )))
 (declare-const r2!@1 Poly)
 (declare-const r1!@1 Poly)
 (declare-const r1!@2 Poly)
 (declare-const r1!@3 Poly)
 (declare-const r2!@2 Poly)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (ens%vstd.pcm_lib.lemma_pcm_properties. P&. P&)
    (=>
     (= tmp%1 (vstd.pcm.impl&%0.value.? P&. P& r1!@0))
     (=>
      (= tmp%2 (vstd.pcm.impl&%0.value.? P&. P& r2!@0))
      (=>
       (= tmp%3 (vstd.pcm.impl&%0.value.? P&. P& r3!))
       (=>
        (ens%vstd.pcm.PCM.associative. P&. P& tmp%1 tmp%2 tmp%3)
        (=>
         (has_type r2!@1 (TYPE%vstd.pcm.Resource. P&. P&))
         (=>
          (ens%vstd.pcm_lib.extract. P&. P& r2!@0 r2!@1 r2_extracted@0)
          (and
           (=>
            %%location_label%%0
            (req%vstd.pcm_lib.incorporate. P&. P& r1!@0 r2_extracted@0)
           )
           (=>
            (has_type r1!@1 (TYPE%vstd.pcm.Resource. P&. P&))
            (=>
             (ens%vstd.pcm_lib.incorporate. P&. P& r1!@0 r1!@1 r2_extracted@0)
             (=>
              (ens%vstd.pcm.impl&%0.validate. P&. P& r1!@1)
              (and
               (=>
                %%location_label%%1
                (req%vstd.pcm.impl&%0.validate_2. P&. P& r1!@1 r3!)
               )
               (=>
                (has_type r1!@2 (TYPE%vstd.pcm.Resource. P&. P&))
                (=>
                 (ens%vstd.pcm.impl&%0.validate_2. P&. P& r1!@1 r1!@2 r3!)
                 (=>
                  (= tmp%4 (vstd.pcm.impl&%0.value.? P&. P& r1!@0))
                  (=>
                   (= tmp%5 (vstd.pcm.impl&%0.value.? P&. P& r2!@0))
                   (and
                    (=>
                     %%location_label%%2
                     (req%vstd.pcm_lib.split_mut. P&. P& r1!@2 tmp%4 tmp%5)
                    )
                    (=>
                     (has_type r1!@3 (TYPE%vstd.pcm.Resource. P&. P&))
                     (=>
                      (ens%vstd.pcm_lib.split_mut. P&. P& r1!@2 r1!@3 tmp%4 tmp%5 r2_split@)
                      (=>
                       %%location_label%%3
                       (req%vstd.pcm_lib.incorporate. P&. P& r2!@1 r2_split@)
 ))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::pcm_lib::aggregate_resources_from_map_starting_at_offset
(declare-fun req%vstd.pcm_lib.aggregate_resources_from_map_starting_at_offset. (Dcr
  Type Poly Int Poly Int
 ) Bool
)
(declare-const %%global_location_label%%24 Bool)
(declare-const %%global_location_label%%25 Bool)
(declare-const %%global_location_label%%26 Bool)
(declare-const %%global_location_label%%27 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (pre%m! Poly) (id! Int) (values! Poly) (offset! Int))
  (!
   (= (req%vstd.pcm_lib.aggregate_resources_from_map_starting_at_offset. P&. P& pre%m!
     id! values! offset!
    ) (and
     (=>
      %%global_location_label%%24
      (and
       (<= 0 offset!)
       (< offset! (vstd!seq.Seq.len.? P&. P& values!))
     ))
     (=>
      %%global_location_label%%25
      (forall ((i$ Poly)) (!
        (=>
         (has_type i$ INT)
         (=>
          (and
           (<= 0 (%I i$))
           (< (%I i$) offset!)
          )
          (not (vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
              P&. P&
             ) pre%m!
            ) i$
        ))))
        :pattern ((vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
            P&. P&
           ) pre%m!
          ) i$
        ))
        :qid user_crate__vstd__pcm_lib__aggregate_resources_from_map_starting_at_offset_47
        :skolemid skolem_user_crate__vstd__pcm_lib__aggregate_resources_from_map_starting_at_offset_47
     )))
     (=>
      %%global_location_label%%26
      (forall ((i$ Poly)) (!
        (=>
         (has_type i$ INT)
         (=>
          (and
           (<= offset! (%I i$))
           (< (%I i$) (vstd!seq.Seq.len.? P&. P& values!))
          )
          (vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
             P&. P&
            ) pre%m!
           ) i$
        )))
        :pattern ((vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
            P&. P&
           ) pre%m!
          ) i$
        ))
        :qid user_crate__vstd__pcm_lib__aggregate_resources_from_map_starting_at_offset_48
        :skolemid skolem_user_crate__vstd__pcm_lib__aggregate_resources_from_map_starting_at_offset_48
     )))
     (=>
      %%global_location_label%%27
      (forall ((i$ Poly)) (!
        (=>
         (has_type i$ INT)
         (=>
          (and
           (<= offset! (%I i$))
           (< (%I i$) (vstd!seq.Seq.len.? P&. P& values!))
          )
          (and
           (= (vstd.pcm.impl&%0.loc.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
               P&. P&
              ) pre%m! i$
             )
            ) id!
           )
           (= (vstd.pcm.impl&%0.value.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
               P&. P&
              ) pre%m! i$
             )
            ) (vstd!seq.Seq.index.? P&. P& values! i$)
        ))))
        :pattern ((vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) pre%m!
          i$
        ))
        :qid user_crate__vstd__pcm_lib__aggregate_resources_from_map_starting_at_offset_49
        :skolemid skolem_user_crate__vstd__pcm_lib__aggregate_resources_from_map_starting_at_offset_49
   )))))
   :pattern ((req%vstd.pcm_lib.aggregate_resources_from_map_starting_at_offset. P&. P&
     pre%m! id! values! offset!
   ))
   :qid internal_req__vstd.pcm_lib.aggregate_resources_from_map_starting_at_offset._definition
   :skolemid skolem_internal_req__vstd.pcm_lib.aggregate_resources_from_map_starting_at_offset._definition
)))
(declare-fun ens%vstd.pcm_lib.aggregate_resources_from_map_starting_at_offset. (Dcr
  Type Poly Poly Int Poly Int Poly
 ) Bool
)
(assert
 (forall ((P&. Dcr) (P& Type) (pre%m! Poly) (m! Poly) (id! Int) (values! Poly) (offset!
    Int
   ) (all! Poly)
  ) (!
   (= (ens%vstd.pcm_lib.aggregate_resources_from_map_starting_at_offset. P&. P& pre%m!
     m! id! values! offset! all!
    ) (and
     (has_type all! (TYPE%vstd.pcm.Resource. P&. P&))
     (has_type m! (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
     (forall ((i$ Poly)) (!
       (=>
        (has_type i$ INT)
        (=>
         (and
          (<= 0 (%I i$))
          (< (%I i$) (vstd!seq.Seq.len.? P&. P& values!))
         )
         (not (vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
             P&. P&
            ) m!
           ) i$
       ))))
       :pattern ((vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
           P&. P&
          ) m!
         ) i$
       ))
       :qid user_crate__vstd__pcm_lib__aggregate_resources_from_map_starting_at_offset_50
       :skolemid skolem_user_crate__vstd__pcm_lib__aggregate_resources_from_map_starting_at_offset_50
     ))
     (= (vstd.pcm.impl&%0.loc.? P&. P& all!) id!)
     (= (vstd.pcm.impl&%0.value.? P&. P& all!) (vstd.pcm_lib.combine_values.? P&. P& (vstd!seq.Seq.subrange.?
        P&. P& values! (I offset!) (I (vstd!seq.Seq.len.? P&. P& values!))
   )))))
   :pattern ((ens%vstd.pcm_lib.aggregate_resources_from_map_starting_at_offset. P&. P&
     pre%m! m! id! values! offset! all!
   ))
   :qid internal_ens__vstd.pcm_lib.aggregate_resources_from_map_starting_at_offset._definition
   :skolemid skolem_internal_ens__vstd.pcm_lib.aggregate_resources_from_map_starting_at_offset._definition
)))

;; Function-Def crate::vstd::pcm_lib::aggregate_resources_from_map_starting_at_offset
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/pcm_lib.rs:221:7: 226:31 (#0)
(get-info :all-statistics)
(push)
 (declare-const P&. Dcr)
 (declare-const P& Type)
 (declare-const all! Poly)
 (declare-const m!@0 Poly)
 (declare-const id! Int)
 (declare-const values! Poly)
 (declare-const offset! Int)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const i@ Poly)
 (declare-const tmp%5 Bool)
 (declare-const tmp%6 Bool)
 (declare-const tmp%7 Int)
 (declare-const tmp%8 Bool)
 (declare-const tmp%9 Bool)
 (declare-const tmp%10 Poly)
 (declare-const most@ Poly)
 (declare-const tmp%11 Poly)
 (declare-const p@ Poly)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m!@0 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
 )
 (assert
  (has_type values! (TYPE%vstd.seq.Seq. P&. P&))
 )
 (assert
  (tr_bound%vstd.pcm.PCM. P&. P&)
 )
 (assert
  (and
   (<= 0 offset!)
   (< offset! (vstd!seq.Seq.len.? P&. P& values!))
 ))
 (assert
  (forall ((i$ Poly)) (!
    (=>
     (has_type i$ INT)
     (=>
      (and
       (<= 0 (%I i$))
       (< (%I i$) offset!)
      )
      (not (vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
          P&. P&
         ) m!@0
        ) i$
    ))))
    :pattern ((vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
        P&. P&
       ) m!@0
      ) i$
    ))
    :qid user_crate__vstd__pcm_lib__aggregate_resources_from_map_starting_at_offset_55
    :skolemid skolem_user_crate__vstd__pcm_lib__aggregate_resources_from_map_starting_at_offset_55
 )))
 (assert
  (forall ((i$ Poly)) (!
    (=>
     (has_type i$ INT)
     (=>
      (and
       (<= offset! (%I i$))
       (< (%I i$) (vstd!seq.Seq.len.? P&. P& values!))
      )
      (vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
         P&. P&
        ) m!@0
       ) i$
    )))
    :pattern ((vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
        P&. P&
       ) m!@0
      ) i$
    ))
    :qid user_crate__vstd__pcm_lib__aggregate_resources_from_map_starting_at_offset_56
    :skolemid skolem_user_crate__vstd__pcm_lib__aggregate_resources_from_map_starting_at_offset_56
 )))
 (assert
  (forall ((i$ Poly)) (!
    (=>
     (has_type i$ INT)
     (=>
      (and
       (<= offset! (%I i$))
       (< (%I i$) (vstd!seq.Seq.len.? P&. P& values!))
      )
      (and
       (= (vstd.pcm.impl&%0.loc.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
           P&. P&
          ) m!@0 i$
         )
        ) id!
       )
       (= (vstd.pcm.impl&%0.value.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
           P&. P&
          ) m!@0 i$
         )
        ) (vstd!seq.Seq.index.? P&. P& values! i$)
    ))))
    :pattern ((vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m!@0 i$))
    :qid user_crate__vstd__pcm_lib__aggregate_resources_from_map_starting_at_offset_57
    :skolemid skolem_user_crate__vstd__pcm_lib__aggregate_resources_from_map_starting_at_offset_57
 )))
 (declare-const m!@1 Poly)
 (declare-const m!@2 Poly)
 (declare-const %%switch_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
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
 ;; assertion failed
 (declare-const %%location_label%%9 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%10 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%11 Bool)
 ;; assertion failed
 (declare-const %%location_label%%12 Bool)
 ;; assertion failed
 (declare-const %%location_label%%13 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%14 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%15 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%16 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%17 Bool)
 (assert
  (not (=>
    (= decrease%init0 (Sub (vstd!seq.Seq.len.? P&. P& values!) offset!))
    (=>
     (= tmp%1 (vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
         P&. P&
        ) m!@0
       ) (I offset!)
     ))
     (and
      (=>
       %%location_label%%0
       tmp%1
      )
      (=>
       tmp%1
       (=>
        (= tmp%2 (and
          (= (vstd.pcm.impl&%0.loc.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
              P&. P&
             ) m!@0 (I offset!)
            )
           ) id!
          )
          (= (vstd.pcm.impl&%0.value.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
              P&. P&
             ) m!@0 (I offset!)
            )
           ) (vstd!seq.Seq.index.? P&. P& values! (I offset!))
        )))
        (and
         (=>
          %%location_label%%1
          tmp%2
         )
         (=>
          tmp%2
          (and
           (=>
            %%location_label%%2
            (req%vstd.map.impl&%0.tracked_remove. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m!@0
             (I offset!)
           ))
           (=>
            (has_type m!@1 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
            (=>
             (ens%vstd.map.impl&%0.tracked_remove. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m!@0
              m!@1 (I offset!) p@
             )
             (or
              (and
               (=>
                (= offset! (Sub (vstd!seq.Seq.len.? P&. P& values!) 1))
                (and
                 (=>
                  (ens%vstd.pcm_lib.lemma_pcm_properties. P&. P&)
                  (=>
                   (fuel_bool fuel%vstd.pcm_lib.combine_values.)
                   (=>
                    (exists ((fuel% Fuel)) (= fuel_nat%vstd.pcm_lib.combine_values. (succ fuel%)))
                    (=>
                     %%location_label%%3
                     (= (vstd.pcm_lib.combine_values.? P&. P& (vstd!seq.Seq.subrange.? P&. P& values! (I offset!)
                        (I (vstd!seq.Seq.len.? P&. P& values!))
                       )
                      ) (vstd!seq.Seq.index.? P&. P& values! (I offset!))
                 )))))
                 (=>
                  (= (vstd.pcm_lib.combine_values.? P&. P& (vstd!seq.Seq.subrange.? P&. P& values! (I offset!)
                     (I (vstd!seq.Seq.len.? P&. P& values!))
                    )
                   ) (vstd!seq.Seq.index.? P&. P& values! (I offset!))
                  )
                  (=>
                   (= tmp%11 p@)
                   (=>
                    (= m!@2 m!@1)
                    %%switch_label%%0
               )))))
               (=>
                (not (= offset! (Sub (vstd!seq.Seq.len.? P&. P& values!) 1)))
                (and
                 (=>
                  (= tmp%3 (ext_eq false P& (vstd!seq.Seq.index.? P&. P& values! (I offset!)) (vstd!seq.Seq.index.?
                     P&. P& (vstd!seq.Seq.subrange.? P&. P& values! (I offset!) (I (vstd!seq.Seq.len.? P&.
                        P& values!
                      ))
                     ) (I 0)
                  )))
                  (and
                   (=>
                    %%location_label%%4
                    tmp%3
                   )
                   (=>
                    tmp%3
                    (=>
                     (= tmp%4 (ext_eq false (TYPE%vstd.seq.Seq. P&. P&) (vstd!seq.Seq.subrange.? P&. P& values!
                        (I (Add offset! 1)) (I (vstd!seq.Seq.len.? P&. P& values!))
                       ) (vstd!seq.Seq.subrange.? P&. P& (vstd!seq.Seq.subrange.? P&. P& values! (I offset!)
                         (I (vstd!seq.Seq.len.? P&. P& values!))
                        ) (I 1) (I (vstd!seq.Seq.len.? P&. P& (vstd!seq.Seq.subrange.? P&. P& values! (I offset!)
                           (I (vstd!seq.Seq.len.? P&. P& values!))
                     ))))))
                     (and
                      (=>
                       %%location_label%%5
                       tmp%4
                      )
                      (=>
                       tmp%4
                       (=>
                        %%location_label%%6
                        (= (vstd.pcm_lib.combine_values.? P&. P& (vstd!seq.Seq.subrange.? P&. P& values! (I offset!)
                           (I (vstd!seq.Seq.len.? P&. P& values!))
                          )
                         ) (vstd.pcm.PCM.op.? P&. P& (vstd!seq.Seq.index.? P&. P& values! (I offset!)) (vstd.pcm_lib.combine_values.?
                           P&. P& (vstd!seq.Seq.subrange.? P&. P& values! (I (Add offset! 1)) (I (vstd!seq.Seq.len.?
                              P&. P& values!
                 )))))))))))))
                 (=>
                  (= (vstd.pcm_lib.combine_values.? P&. P& (vstd!seq.Seq.subrange.? P&. P& values! (I offset!)
                     (I (vstd!seq.Seq.len.? P&. P& values!))
                    )
                   ) (vstd.pcm.PCM.op.? P&. P& (vstd!seq.Seq.index.? P&. P& values! (I offset!)) (vstd.pcm_lib.combine_values.?
                     P&. P& (vstd!seq.Seq.subrange.? P&. P& values! (I (Add offset! 1)) (I (vstd!seq.Seq.len.?
                        P&. P& values!
                  ))))))
                  (and
                   (=>
                    (has_type i@ INT)
                    (=>
                     (and
                      (<= (Add offset! 1) (%I i@))
                      (< (%I i@) (vstd!seq.Seq.len.? P&. P& values!))
                     )
                     (=>
                      (= tmp%5 (vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
                          P&. P&
                         ) m!@1
                        ) i@
                      ))
                      (and
                       (=>
                        %%location_label%%7
                        tmp%5
                       )
                       (=>
                        tmp%5
                        (=>
                         (= tmp%6 (and
                           (= (vstd.pcm.impl&%0.loc.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
                               P&. P&
                              ) m!@1 i@
                             )
                            ) id!
                           )
                           (= (vstd.pcm.impl&%0.value.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
                               P&. P&
                              ) m!@1 i@
                             )
                            ) (vstd!seq.Seq.index.? P&. P& values! i@)
                         )))
                         (and
                          (=>
                           %%location_label%%8
                           tmp%6
                          )
                          (=>
                           tmp%6
                           (=>
                            %%location_label%%9
                            (and
                             (and
                              (vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
                                 P&. P&
                                ) m!@1
                               ) i@
                              )
                              (= (vstd.pcm.impl&%0.loc.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
                                  P&. P&
                                 ) m!@1 i@
                                )
                               ) id!
                             ))
                             (= (vstd.pcm.impl&%0.value.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
                                 P&. P&
                                ) m!@1 i@
                               )
                              ) (vstd!seq.Seq.index.? P&. P& values! i@)
                   )))))))))))
                   (=>
                    (forall ((i$ Poly)) (!
                      (=>
                       (has_type i$ INT)
                       (=>
                        (and
                         (<= (Add offset! 1) (%I i$))
                         (< (%I i$) (vstd!seq.Seq.len.? P&. P& values!))
                        )
                        (and
                         (and
                          (vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
                             P&. P&
                            ) m!@1
                           ) i$
                          )
                          (= (vstd.pcm.impl&%0.loc.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
                              P&. P&
                             ) m!@1 i$
                            )
                           ) id!
                         ))
                         (= (vstd.pcm.impl&%0.value.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
                             P&. P&
                            ) m!@1 i$
                           )
                          ) (vstd!seq.Seq.index.? P&. P& values! i$)
                      ))))
                      :pattern ((vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
                          P&. P&
                         ) m!@1
                        ) i$
                      ))
                      :qid user_crate__vstd__pcm_lib__aggregate_resources_from_map_starting_at_offset_54
                      :skolemid skolem_user_crate__vstd__pcm_lib__aggregate_resources_from_map_starting_at_offset_54
                    ))
                    (=>
                     (= tmp%7 (Add offset! 1))
                     (and
                      (=>
                       %%location_label%%10
                       (check_decrease_int (let
                         ((m!$0 m!@1) (id!$1 id!) (values!$2 values!) (offset!$3 tmp%7))
                         (Sub (vstd!seq.Seq.len.? P&. P& values!$2) offset!$3)
                        ) decrease%init0 false
                      ))
                      (and
                       (=>
                        %%location_label%%11
                        (req%vstd.pcm_lib.aggregate_resources_from_map_starting_at_offset. P&. P& m!@1 id!
                         values! tmp%7
                       ))
                       (=>
                        (has_type m!@2 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
                        (=>
                         (ens%vstd.pcm_lib.aggregate_resources_from_map_starting_at_offset. P&. P& m!@1 m!@2
                          id! values! tmp%7 most@
                         )
                         (=>
                          (= tmp%8 (= (vstd.pcm.impl&%0.loc.? P&. P& most@) id!))
                          (and
                           (=>
                            %%location_label%%12
                            tmp%8
                           )
                           (=>
                            tmp%8
                            (=>
                             (= tmp%9 (= (vstd.pcm.impl&%0.value.? P&. P& most@) (vstd.pcm_lib.combine_values.? P&.
                                P& (vstd!seq.Seq.subrange.? P&. P& values! (I (Add offset! 1)) (I (vstd!seq.Seq.len.?
                                   P&. P& values!
                             ))))))
                             (and
                              (=>
                               %%location_label%%13
                               tmp%9
                              )
                              (=>
                               tmp%9
                               (and
                                (=>
                                 %%location_label%%14
                                 (req%vstd.pcm.impl&%0.join. P&. P& p@ most@)
                                )
                                (=>
                                 (ens%vstd.pcm.impl&%0.join. P&. P& p@ most@ tmp%10)
                                 (=>
                                  (= tmp%11 tmp%10)
                                  %%switch_label%%0
              ))))))))))))))))))))
              (and
               (not %%switch_label%%0)
               (=>
                (= all! tmp%11)
                (and
                 (=>
                  %%location_label%%15
                  (forall ((i$ Poly)) (!
                    (=>
                     (has_type i$ INT)
                     (=>
                      (and
                       (<= 0 (%I i$))
                       (< (%I i$) (vstd!seq.Seq.len.? P&. P& values!))
                      )
                      (not (vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
                          P&. P&
                         ) m!@2
                        ) i$
                    ))))
                    :pattern ((vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
                        P&. P&
                       ) m!@2
                      ) i$
                    ))
                    :qid user_crate__vstd__pcm_lib__aggregate_resources_from_map_starting_at_offset_51
                    :skolemid skolem_user_crate__vstd__pcm_lib__aggregate_resources_from_map_starting_at_offset_51
                 )))
                 (and
                  (=>
                   %%location_label%%16
                   (= (vstd.pcm.impl&%0.loc.? P&. P& all!) id!)
                  )
                  (=>
                   %%location_label%%17
                   (= (vstd.pcm.impl&%0.value.? P&. P& all!) (vstd.pcm_lib.combine_values.? P&. P& (vstd!seq.Seq.subrange.?
                      P&. P& values! (I offset!) (I (vstd!seq.Seq.len.? P&. P& values!))
 )))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::pcm_lib::store_resources_into_map_starting_at_offset
(declare-fun req%vstd.pcm_lib.store_resources_into_map_starting_at_offset. (Dcr Type
  Poly Int Poly Int Poly
 ) Bool
)
(declare-const %%global_location_label%%28 Bool)
(declare-const %%global_location_label%%29 Bool)
(declare-const %%global_location_label%%30 Bool)
(declare-const %%global_location_label%%31 Bool)
(declare-const %%global_location_label%%32 Bool)
(declare-const %%global_location_label%%33 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (pre%m! Poly) (id! Int) (values! Poly) (offset! Int) (
    p! Poly
   )
  ) (!
   (= (req%vstd.pcm_lib.store_resources_into_map_starting_at_offset. P&. P& pre%m! id!
     values! offset! p!
    ) (and
     (=>
      %%global_location_label%%28
      (and
       (<= 0 offset!)
       (<= offset! (vstd!seq.Seq.len.? P&. P& values!))
     ))
     (=>
      %%global_location_label%%29
      (forall ((i$ Poly)) (!
        (=>
         (has_type i$ INT)
         (=>
          (and
           (<= 0 (%I i$))
           (< (%I i$) offset!)
          )
          (vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
             P&. P&
            ) pre%m!
           ) i$
        )))
        :pattern ((vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
            P&. P&
           ) pre%m!
          ) i$
        ))
        :qid user_crate__vstd__pcm_lib__store_resources_into_map_starting_at_offset_58
        :skolemid skolem_user_crate__vstd__pcm_lib__store_resources_into_map_starting_at_offset_58
     )))
     (=>
      %%global_location_label%%30
      (forall ((i$ Poly)) (!
        (=>
         (has_type i$ INT)
         (=>
          (and
           (<= 0 (%I i$))
           (< (%I i$) offset!)
          )
          (and
           (= (vstd.pcm.impl&%0.loc.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
               P&. P&
              ) pre%m! i$
             )
            ) id!
           )
           (= (vstd.pcm.impl&%0.value.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
               P&. P&
              ) pre%m! i$
             )
            ) (vstd!seq.Seq.index.? P&. P& values! i$)
        ))))
        :pattern ((vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) pre%m!
          i$
        ))
        :qid user_crate__vstd__pcm_lib__store_resources_into_map_starting_at_offset_59
        :skolemid skolem_user_crate__vstd__pcm_lib__store_resources_into_map_starting_at_offset_59
     )))
     (=>
      %%global_location_label%%31
      (forall ((i$ Poly)) (!
        (=>
         (has_type i$ INT)
         (=>
          (and
           (<= offset! (%I i$))
           (< (%I i$) (vstd!seq.Seq.len.? P&. P& values!))
          )
          (not (vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
              P&. P&
             ) pre%m!
            ) i$
        ))))
        :pattern ((vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
            P&. P&
           ) pre%m!
          ) i$
        ))
        :qid user_crate__vstd__pcm_lib__store_resources_into_map_starting_at_offset_60
        :skolemid skolem_user_crate__vstd__pcm_lib__store_resources_into_map_starting_at_offset_60
     )))
     (=>
      %%global_location_label%%32
      (= (vstd.pcm.impl&%0.loc.? P&. P& p!) id!)
     )
     (=>
      %%global_location_label%%33
      (= (vstd.pcm.impl&%0.value.? P&. P& p!) (vstd.pcm_lib.combine_values.? P&. P& (vstd!seq.Seq.subrange.?
         P&. P& values! (I offset!) (I (vstd!seq.Seq.len.? P&. P& values!))
   ))))))
   :pattern ((req%vstd.pcm_lib.store_resources_into_map_starting_at_offset. P&. P& pre%m!
     id! values! offset! p!
   ))
   :qid internal_req__vstd.pcm_lib.store_resources_into_map_starting_at_offset._definition
   :skolemid skolem_internal_req__vstd.pcm_lib.store_resources_into_map_starting_at_offset._definition
)))
(declare-fun ens%vstd.pcm_lib.store_resources_into_map_starting_at_offset. (Dcr Type
  Poly Poly Int Poly Int Poly
 ) Bool
)
(assert
 (forall ((P&. Dcr) (P& Type) (pre%m! Poly) (m! Poly) (id! Int) (values! Poly) (offset!
    Int
   ) (p! Poly)
  ) (!
   (= (ens%vstd.pcm_lib.store_resources_into_map_starting_at_offset. P&. P& pre%m! m!
     id! values! offset! p!
    ) (and
     (has_type m! (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
     (forall ((i$ Poly)) (!
       (=>
        (has_type i$ INT)
        (=>
         (and
          (<= 0 (%I i$))
          (< (%I i$) (vstd!seq.Seq.len.? P&. P& values!))
         )
         (vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
            P&. P&
           ) m!
          ) i$
       )))
       :pattern ((vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
           P&. P&
          ) m!
         ) i$
       ))
       :qid user_crate__vstd__pcm_lib__store_resources_into_map_starting_at_offset_61
       :skolemid skolem_user_crate__vstd__pcm_lib__store_resources_into_map_starting_at_offset_61
     ))
     (forall ((i$ Poly)) (!
       (=>
        (has_type i$ INT)
        (=>
         (and
          (<= 0 (%I i$))
          (< (%I i$) (vstd!seq.Seq.len.? P&. P& values!))
         )
         (and
          (= (vstd.pcm.impl&%0.loc.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
              P&. P&
             ) m! i$
            )
           ) id!
          )
          (= (vstd.pcm.impl&%0.value.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
              P&. P&
             ) m! i$
            )
           ) (vstd!seq.Seq.index.? P&. P& values! i$)
       ))))
       :pattern ((vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m! i$))
       :qid user_crate__vstd__pcm_lib__store_resources_into_map_starting_at_offset_62
       :skolemid skolem_user_crate__vstd__pcm_lib__store_resources_into_map_starting_at_offset_62
   ))))
   :pattern ((ens%vstd.pcm_lib.store_resources_into_map_starting_at_offset. P&. P& pre%m!
     m! id! values! offset! p!
   ))
   :qid internal_ens__vstd.pcm_lib.store_resources_into_map_starting_at_offset._definition
   :skolemid skolem_internal_ens__vstd.pcm_lib.store_resources_into_map_starting_at_offset._definition
)))

;; Function-Def crate::vstd::pcm_lib::store_resources_into_map_starting_at_offset
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/pcm_lib.rs:282:7: 288:2 (#0)
(get-info :all-statistics)
(push)
 (declare-const P&. Dcr)
 (declare-const P& Type)
 (declare-const m!@0 Poly)
 (declare-const id! Int)
 (declare-const values! Poly)
 (declare-const offset! Int)
 (declare-const p! Poly)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Poly)
 (declare-const tmp%4 Poly)
 (declare-const tmp%5 Int)
 (declare-const tmp%%@ tuple%2.)
 (declare-const p_first@ Poly)
 (declare-const p_rest@ Poly)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m!@0 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
 )
 (assert
  (has_type values! (TYPE%vstd.seq.Seq. P&. P&))
 )
 (assert
  (has_type p! (TYPE%vstd.pcm.Resource. P&. P&))
 )
 (assert
  (tr_bound%vstd.pcm.PCM. P&. P&)
 )
 (assert
  (and
   (<= 0 offset!)
   (<= offset! (vstd!seq.Seq.len.? P&. P& values!))
 ))
 (assert
  (forall ((i$ Poly)) (!
    (=>
     (has_type i$ INT)
     (=>
      (and
       (<= 0 (%I i$))
       (< (%I i$) offset!)
      )
      (vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
         P&. P&
        ) m!@0
       ) i$
    )))
    :pattern ((vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
        P&. P&
       ) m!@0
      ) i$
    ))
    :qid user_crate__vstd__pcm_lib__store_resources_into_map_starting_at_offset_66
    :skolemid skolem_user_crate__vstd__pcm_lib__store_resources_into_map_starting_at_offset_66
 )))
 (assert
  (forall ((i$ Poly)) (!
    (=>
     (has_type i$ INT)
     (=>
      (and
       (<= 0 (%I i$))
       (< (%I i$) offset!)
      )
      (and
       (= (vstd.pcm.impl&%0.loc.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
           P&. P&
          ) m!@0 i$
         )
        ) id!
       )
       (= (vstd.pcm.impl&%0.value.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
           P&. P&
          ) m!@0 i$
         )
        ) (vstd!seq.Seq.index.? P&. P& values! i$)
    ))))
    :pattern ((vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m!@0 i$))
    :qid user_crate__vstd__pcm_lib__store_resources_into_map_starting_at_offset_67
    :skolemid skolem_user_crate__vstd__pcm_lib__store_resources_into_map_starting_at_offset_67
 )))
 (assert
  (forall ((i$ Poly)) (!
    (=>
     (has_type i$ INT)
     (=>
      (and
       (<= offset! (%I i$))
       (< (%I i$) (vstd!seq.Seq.len.? P&. P& values!))
      )
      (not (vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
          P&. P&
         ) m!@0
        ) i$
    ))))
    :pattern ((vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
        P&. P&
       ) m!@0
      ) i$
    ))
    :qid user_crate__vstd__pcm_lib__store_resources_into_map_starting_at_offset_68
    :skolemid skolem_user_crate__vstd__pcm_lib__store_resources_into_map_starting_at_offset_68
 )))
 (assert
  (= (vstd.pcm.impl&%0.loc.? P&. P& p!) id!)
 )
 (assert
  (= (vstd.pcm.impl&%0.value.? P&. P& p!) (vstd.pcm_lib.combine_values.? P&. P& (vstd!seq.Seq.subrange.?
     P&. P& values! (I offset!) (I (vstd!seq.Seq.len.? P&. P& values!))
 ))))
 (declare-const m!@1 Poly)
 (declare-const m!@2 Poly)
 (declare-const %%switch_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%4 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%5 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%6 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%7 Bool)
 (assert
  (not (=>
    (= decrease%init0 (Sub (vstd!seq.Seq.len.? P&. P& values!) offset!))
    (or
     (and
      (=>
       (not (= offset! (vstd!seq.Seq.len.? P&. P& values!)))
       (and
        (=>
         (= tmp%1 (ext_eq false P& (vstd!seq.Seq.index.? P&. P& values! (I offset!)) (vstd!seq.Seq.index.?
            P&. P& (vstd!seq.Seq.subrange.? P&. P& values! (I offset!) (I (vstd!seq.Seq.len.? P&.
               P& values!
             ))
            ) (I 0)
         )))
         (and
          (=>
           %%location_label%%0
           tmp%1
          )
          (=>
           tmp%1
           (=>
            (= tmp%2 (ext_eq false (TYPE%vstd.seq.Seq. P&. P&) (vstd!seq.Seq.subrange.? P&. P& values!
               (I (Add offset! 1)) (I (vstd!seq.Seq.len.? P&. P& values!))
              ) (vstd!seq.Seq.subrange.? P&. P& (vstd!seq.Seq.subrange.? P&. P& values! (I offset!)
                (I (vstd!seq.Seq.len.? P&. P& values!))
               ) (I 1) (I (vstd!seq.Seq.len.? P&. P& (vstd!seq.Seq.subrange.? P&. P& values! (I offset!)
                  (I (vstd!seq.Seq.len.? P&. P& values!))
            ))))))
            (and
             (=>
              %%location_label%%1
              tmp%2
             )
             (=>
              tmp%2
              (=>
               %%location_label%%2
               (= (vstd.pcm_lib.combine_values.? P&. P& (vstd!seq.Seq.subrange.? P&. P& values! (I offset!)
                  (I (vstd!seq.Seq.len.? P&. P& values!))
                 )
                ) (vstd.pcm.PCM.op.? P&. P& (vstd!seq.Seq.index.? P&. P& values! (I offset!)) (vstd.pcm_lib.combine_values.?
                  P&. P& (vstd!seq.Seq.subrange.? P&. P& values! (I (Add offset! 1)) (I (vstd!seq.Seq.len.?
                     P&. P& values!
        )))))))))))))
        (=>
         (= (vstd.pcm_lib.combine_values.? P&. P& (vstd!seq.Seq.subrange.? P&. P& values! (I offset!)
            (I (vstd!seq.Seq.len.? P&. P& values!))
           )
          ) (vstd.pcm.PCM.op.? P&. P& (vstd!seq.Seq.index.? P&. P& values! (I offset!)) (vstd.pcm_lib.combine_values.?
            P&. P& (vstd!seq.Seq.subrange.? P&. P& values! (I (Add offset! 1)) (I (vstd!seq.Seq.len.?
               P&. P& values!
         ))))))
         (=>
          (= tmp%3 (vstd!seq.Seq.index.? P&. P& values! (I offset!)))
          (=>
           (= tmp%4 (vstd.pcm_lib.combine_values.? P&. P& (vstd!seq.Seq.subrange.? P&. P& values!
              (I (Add offset! 1)) (I (vstd!seq.Seq.len.? P&. P& values!))
           )))
           (and
            (=>
             %%location_label%%3
             (req%vstd.pcm.impl&%0.split. P&. P& p! tmp%3 tmp%4)
            )
            (=>
             (ens%vstd.pcm.impl&%0.split. P&. P& p! tmp%3 tmp%4 tmp%%@)
             (=>
              (= p_first@ (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%@))))
              (=>
               (= p_rest@ (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%@))))
               (=>
                (has_type m!@1 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
                (=>
                 (ens%vstd.map.impl&%0.tracked_insert. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m!@0
                  m!@1 (I offset!) p_first@
                 )
                 (=>
                  (= tmp%5 (Add offset! 1))
                  (and
                   (=>
                    %%location_label%%4
                    (check_decrease_int (let
                      ((m!$0 m!@1) (id!$1 id!) (values!$2 values!) (offset!$3 tmp%5) (p!$4 p_rest@))
                      (Sub (vstd!seq.Seq.len.? P&. P& values!$2) offset!$3)
                     ) decrease%init0 false
                   ))
                   (and
                    (=>
                     %%location_label%%5
                     (req%vstd.pcm_lib.store_resources_into_map_starting_at_offset. P&. P& m!@1 id! values!
                      tmp%5 p_rest@
                    ))
                    (=>
                     (has_type m!@2 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
                     (=>
                      (ens%vstd.pcm_lib.store_resources_into_map_starting_at_offset. P&. P& m!@1 m!@2 id!
                       values! tmp%5 p_rest@
                      )
                      %%switch_label%%0
      ))))))))))))))))
      (=>
       (not (not (= offset! (vstd!seq.Seq.len.? P&. P& values!))))
       (=>
        (= m!@2 m!@0)
        %%switch_label%%0
     )))
     (and
      (not %%switch_label%%0)
      (and
       (=>
        %%location_label%%6
        (forall ((i$ Poly)) (!
          (=>
           (has_type i$ INT)
           (=>
            (and
             (<= 0 (%I i$))
             (< (%I i$) (vstd!seq.Seq.len.? P&. P& values!))
            )
            (vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
               P&. P&
              ) m!@2
             ) i$
          )))
          :pattern ((vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
              P&. P&
             ) m!@2
            ) i$
          ))
          :qid user_crate__vstd__pcm_lib__store_resources_into_map_starting_at_offset_63
          :skolemid skolem_user_crate__vstd__pcm_lib__store_resources_into_map_starting_at_offset_63
       )))
       (=>
        %%location_label%%7
        (forall ((i$ Poly)) (!
          (=>
           (has_type i$ INT)
           (=>
            (and
             (<= 0 (%I i$))
             (< (%I i$) (vstd!seq.Seq.len.? P&. P& values!))
            )
            (and
             (= (vstd.pcm.impl&%0.loc.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
                 P&. P&
                ) m!@2 i$
               )
              ) id!
             )
             (= (vstd.pcm.impl&%0.value.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
                 P&. P&
                ) m!@2 i$
               )
              ) (vstd!seq.Seq.index.? P&. P& values! i$)
          ))))
          :pattern ((vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m!@2 i$))
          :qid user_crate__vstd__pcm_lib__store_resources_into_map_starting_at_offset_64
          :skolemid skolem_user_crate__vstd__pcm_lib__store_resources_into_map_starting_at_offset_64
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::pcm_lib::validate_multiple
(declare-fun req%vstd.pcm_lib.validate_multiple. (Dcr Type Poly Int Poly) Bool)
(declare-const %%global_location_label%%34 Bool)
(declare-const %%global_location_label%%35 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (pre%m! Poly) (loc! Int) (values! Poly)) (!
   (= (req%vstd.pcm_lib.validate_multiple. P&. P& pre%m! loc! values!) (and
     (=>
      %%global_location_label%%34
      (forall ((i$ Poly)) (!
        (=>
         (has_type i$ INT)
         (=>
          (and
           (<= 0 (%I i$))
           (< (%I i$) (vstd!seq.Seq.len.? P&. P& values!))
          )
          (vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
             P&. P&
            ) pre%m!
           ) i$
        )))
        :pattern ((vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
            P&. P&
           ) pre%m!
          ) i$
        ))
        :qid user_crate__vstd__pcm_lib__validate_multiple_69
        :skolemid skolem_user_crate__vstd__pcm_lib__validate_multiple_69
     )))
     (=>
      %%global_location_label%%35
      (forall ((i$ Poly)) (!
        (=>
         (has_type i$ INT)
         (=>
          (and
           (<= 0 (%I i$))
           (< (%I i$) (vstd!seq.Seq.len.? P&. P& values!))
          )
          (and
           (= (vstd.pcm.impl&%0.loc.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
               P&. P&
              ) pre%m! i$
             )
            ) loc!
           )
           (= (vstd.pcm.impl&%0.value.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
               P&. P&
              ) pre%m! i$
             )
            ) (vstd!seq.Seq.index.? P&. P& values! i$)
        ))))
        :pattern ((vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) pre%m!
          i$
        ))
        :qid user_crate__vstd__pcm_lib__validate_multiple_70
        :skolemid skolem_user_crate__vstd__pcm_lib__validate_multiple_70
   )))))
   :pattern ((req%vstd.pcm_lib.validate_multiple. P&. P& pre%m! loc! values!))
   :qid internal_req__vstd.pcm_lib.validate_multiple._definition
   :skolemid skolem_internal_req__vstd.pcm_lib.validate_multiple._definition
)))
(declare-fun ens%vstd.pcm_lib.validate_multiple. (Dcr Type Poly Poly Int Poly) Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (pre%m! Poly) (m! Poly) (loc! Int) (values! Poly)) (!
   (= (ens%vstd.pcm_lib.validate_multiple. P&. P& pre%m! m! loc! values!) (and
     (has_type m! (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
     (forall ((i$ Poly)) (!
       (=>
        (has_type i$ INT)
        (=>
         (and
          (<= 0 (%I i$))
          (< (%I i$) (vstd!seq.Seq.len.? P&. P& values!))
         )
         (vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
            P&. P&
           ) m!
          ) i$
       )))
       :pattern ((vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
           P&. P&
          ) m!
         ) i$
       ))
       :qid user_crate__vstd__pcm_lib__validate_multiple_71
       :skolemid skolem_user_crate__vstd__pcm_lib__validate_multiple_71
     ))
     (forall ((i$ Poly)) (!
       (=>
        (has_type i$ INT)
        (=>
         (and
          (<= 0 (%I i$))
          (< (%I i$) (vstd!seq.Seq.len.? P&. P& values!))
         )
         (and
          (= (vstd.pcm.impl&%0.loc.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
              P&. P&
             ) m! i$
            )
           ) loc!
          )
          (= (vstd.pcm.impl&%0.value.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
              P&. P&
             ) m! i$
            )
           ) (vstd!seq.Seq.index.? P&. P& values! i$)
       ))))
       :pattern ((vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m! i$))
       :qid user_crate__vstd__pcm_lib__validate_multiple_72
       :skolemid skolem_user_crate__vstd__pcm_lib__validate_multiple_72
     ))
     (%B (vstd.pcm.PCM.valid.? P&. P& (vstd.pcm_lib.combine_values.? P&. P& values!)))
   ))
   :pattern ((ens%vstd.pcm_lib.validate_multiple. P&. P& pre%m! m! loc! values!))
   :qid internal_ens__vstd.pcm_lib.validate_multiple._definition
   :skolemid skolem_internal_ens__vstd.pcm_lib.validate_multiple._definition
)))

;; Function-Def crate::vstd::pcm_lib::validate_multiple
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/pcm_lib.rs:337:1: 341:2 (#0)
(get-info :all-statistics)
(push)
 (declare-const P&. Dcr)
 (declare-const P& Type)
 (declare-const m!@0 Poly)
 (declare-const loc! Int)
 (declare-const values! Poly)
 (declare-const tmp%1 Bool)
 (declare-const agg@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m!@0 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
 )
 (assert
  (has_type values! (TYPE%vstd.seq.Seq. P&. P&))
 )
 (assert
  (tr_bound%vstd.pcm.PCM. P&. P&)
 )
 (assert
  (forall ((i$ Poly)) (!
    (=>
     (has_type i$ INT)
     (=>
      (and
       (<= 0 (%I i$))
       (< (%I i$) (vstd!seq.Seq.len.? P&. P& values!))
      )
      (vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
         P&. P&
        ) m!@0
       ) i$
    )))
    :pattern ((vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
        P&. P&
       ) m!@0
      ) i$
    ))
    :qid user_crate__vstd__pcm_lib__validate_multiple_76
    :skolemid skolem_user_crate__vstd__pcm_lib__validate_multiple_76
 )))
 (assert
  (forall ((i$ Poly)) (!
    (=>
     (has_type i$ INT)
     (=>
      (and
       (<= 0 (%I i$))
       (< (%I i$) (vstd!seq.Seq.len.? P&. P& values!))
      )
      (and
       (= (vstd.pcm.impl&%0.loc.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
           P&. P&
          ) m!@0 i$
         )
        ) loc!
       )
       (= (vstd.pcm.impl&%0.value.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
           P&. P&
          ) m!@0 i$
         )
        ) (vstd!seq.Seq.index.? P&. P& values! i$)
    ))))
    :pattern ((vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m!@0 i$))
    :qid user_crate__vstd__pcm_lib__validate_multiple_77
    :skolemid skolem_user_crate__vstd__pcm_lib__validate_multiple_77
 )))
 (declare-const m!@1 Poly)
 (declare-const m!@2 Poly)
 (declare-const %%switch_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%5 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%6 Bool)
 (assert
  (not (or
    (and
     (=>
      (= (vstd!seq.Seq.len.? P&. P& values!) 0)
      (=>
       (ens%vstd.pcm_lib.lemma_pcm_properties. P&. P&)
       (=>
        (= m!@2 m!@0)
        %%switch_label%%0
     )))
     (=>
      (not (= (vstd!seq.Seq.len.? P&. P& values!) 0))
      (and
       (=>
        %%location_label%%0
        (req%vstd.pcm_lib.aggregate_resources_from_map_starting_at_offset. P&. P& m!@0 loc!
         values! 0
       ))
       (=>
        (has_type m!@1 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
        (=>
         (ens%vstd.pcm_lib.aggregate_resources_from_map_starting_at_offset. P&. P& m!@0 m!@1
          loc! values! 0 agg@
         )
         (and
          (=>
           (= tmp%1 (ext_eq false (TYPE%vstd.seq.Seq. P&. P&) values! (vstd!seq.Seq.subrange.?
              P&. P& values! (I 0) (I (vstd!seq.Seq.len.? P&. P& values!))
           )))
           (and
            (=>
             %%location_label%%1
             tmp%1
            )
            (=>
             tmp%1
             (=>
              %%location_label%%2
              (= (vstd.pcm.impl&%0.value.? P&. P& agg@) (vstd.pcm_lib.combine_values.? P&. P& values!))
          ))))
          (=>
           (= (vstd.pcm.impl&%0.value.? P&. P& agg@) (vstd.pcm_lib.combine_values.? P&. P& values!))
           (=>
            (ens%vstd.pcm.impl&%0.validate. P&. P& agg@)
            (and
             (=>
              %%location_label%%3
              (req%vstd.pcm_lib.store_resources_into_map_starting_at_offset. P&. P& m!@1 loc! values!
               0 agg@
             ))
             (=>
              (has_type m!@2 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
              (=>
               (ens%vstd.pcm_lib.store_resources_into_map_starting_at_offset. P&. P& m!@1 m!@2 loc!
                values! 0 agg@
               )
               %%switch_label%%0
    )))))))))))
    (and
     (not %%switch_label%%0)
     (and
      (=>
       %%location_label%%4
       (forall ((i$ Poly)) (!
         (=>
          (has_type i$ INT)
          (=>
           (and
            (<= 0 (%I i$))
            (< (%I i$) (vstd!seq.Seq.len.? P&. P& values!))
           )
           (vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
              P&. P&
             ) m!@2
            ) i$
         )))
         :pattern ((vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ (TYPE%vstd.pcm.Resource.
             P&. P&
            ) m!@2
           ) i$
         ))
         :qid user_crate__vstd__pcm_lib__validate_multiple_73
         :skolemid skolem_user_crate__vstd__pcm_lib__validate_multiple_73
      )))
      (and
       (=>
        %%location_label%%5
        (forall ((i$ Poly)) (!
          (=>
           (has_type i$ INT)
           (=>
            (and
             (<= 0 (%I i$))
             (< (%I i$) (vstd!seq.Seq.len.? P&. P& values!))
            )
            (and
             (= (vstd.pcm.impl&%0.loc.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
                 P&. P&
                ) m!@2 i$
               )
              ) loc!
             )
             (= (vstd.pcm.impl&%0.value.? P&. P& (vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource.
                 P&. P&
                ) m!@2 i$
               )
              ) (vstd!seq.Seq.index.? P&. P& values! i$)
          ))))
          :pattern ((vstd.map.impl&%0.index.? $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m!@2 i$))
          :qid user_crate__vstd__pcm_lib__validate_multiple_74
          :skolemid skolem_user_crate__vstd__pcm_lib__validate_multiple_74
       )))
       (=>
        %%location_label%%6
        (%B (vstd.pcm.PCM.valid.? P&. P& (vstd.pcm_lib.combine_values.? P&. P& values!)))
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::pcm_lib::validate_4
(declare-fun req%vstd.pcm_lib.validate_4. (Dcr Type Poly Poly Poly Poly) Bool)
(declare-const %%global_location_label%%36 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (pre%r1! Poly) (pre%r2! Poly) (pre%r3! Poly) (pre%r4! Poly))
  (!
   (= (req%vstd.pcm_lib.validate_4. P&. P& pre%r1! pre%r2! pre%r3! pre%r4!) (=>
     %%global_location_label%%36
     (let
      ((tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& pre%r2!)))
      (let
       ((tmp%%$1 (vstd.pcm.impl&%0.loc.? P&. P& pre%r3!)))
       (and
        (and
         (= (vstd.pcm.impl&%0.loc.? P&. P& pre%r1!) tmp%%$)
         (= tmp%%$ tmp%%$1)
        )
        (= tmp%%$1 (vstd.pcm.impl&%0.loc.? P&. P& pre%r4!))
   )))))
   :pattern ((req%vstd.pcm_lib.validate_4. P&. P& pre%r1! pre%r2! pre%r3! pre%r4!))
   :qid internal_req__vstd.pcm_lib.validate_4._definition
   :skolemid skolem_internal_req__vstd.pcm_lib.validate_4._definition
)))
(declare-fun ens%vstd.pcm_lib.validate_4. (Dcr Type Poly Poly Poly Poly Poly Poly Poly
  Poly
 ) Bool
)
(assert
 (forall ((P&. Dcr) (P& Type) (pre%r1! Poly) (r1! Poly) (pre%r2! Poly) (r2! Poly) (pre%r3!
    Poly
   ) (r3! Poly) (pre%r4! Poly) (r4! Poly)
  ) (!
   (= (ens%vstd.pcm_lib.validate_4. P&. P& pre%r1! r1! pre%r2! r2! pre%r3! r3! pre%r4!
     r4!
    ) (and
     (has_type r1! (TYPE%vstd.pcm.Resource. P&. P&))
     (has_type r2! (TYPE%vstd.pcm.Resource. P&. P&))
     (has_type r3! (TYPE%vstd.pcm.Resource. P&. P&))
     (has_type r4! (TYPE%vstd.pcm.Resource. P&. P&))
     (let
      ((tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& r2!)))
      (let
       ((tmp%%$1 (vstd.pcm.impl&%0.loc.? P&. P& r3!)))
       (let
        ((tmp%%$2 (vstd.pcm.impl&%0.loc.? P&. P& r4!)))
        (and
         (and
          (and
           (= (vstd.pcm.impl&%0.loc.? P&. P& r1!) tmp%%$)
           (= tmp%%$ tmp%%$1)
          )
          (= tmp%%$1 tmp%%$2)
         )
         (= tmp%%$2 (vstd.pcm.impl&%0.loc.? P&. P& pre%r1!))
     ))))
     (= (vstd.pcm.impl&%0.value.? P&. P& r1!) (vstd.pcm.impl&%0.value.? P&. P& pre%r1!))
     (= (vstd.pcm.impl&%0.value.? P&. P& r2!) (vstd.pcm.impl&%0.value.? P&. P& pre%r2!))
     (= (vstd.pcm.impl&%0.value.? P&. P& r3!) (vstd.pcm.impl&%0.value.? P&. P& pre%r3!))
     (= (vstd.pcm.impl&%0.value.? P&. P& r4!) (vstd.pcm.impl&%0.value.? P&. P& pre%r4!))
     (%B (vstd.pcm.PCM.valid.? P&. P& (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.?
         P&. P& r1!
        ) (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.? P&. P& r2!) (vstd.pcm.PCM.op.?
          P&. P& (vstd.pcm.impl&%0.value.? P&. P& r3!) (vstd.pcm.impl&%0.value.? P&. P& r4!)
   )))))))
   :pattern ((ens%vstd.pcm_lib.validate_4. P&. P& pre%r1! r1! pre%r2! r2! pre%r3! r3!
     pre%r4! r4!
   ))
   :qid internal_ens__vstd.pcm_lib.validate_4._definition
   :skolemid skolem_internal_ens__vstd.pcm_lib.validate_4._definition
)))

;; Function-Def crate::vstd::pcm_lib::validate_4
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/pcm_lib.rs:373:1: 378:2 (#0)
(get-info :all-statistics)
(push)
 (declare-const P&. Dcr)
 (declare-const P& Type)
 (declare-const r1!@0 Poly)
 (declare-const r2!@0 Poly)
 (declare-const r3!@0 Poly)
 (declare-const r4!@0 Poly)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Poly)
 (declare-const tmp%3 Poly)
 (declare-const tmp%4 Poly)
 (declare-const tmp%5 Int)
 (declare-const tmp%6 Poly)
 (declare-const tmp%7 Poly)
 (declare-const tmp%8 Poly)
 (declare-const tmp%9 Poly)
 (declare-const m@0 Poly)
 (declare-const values@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type r1!@0 (TYPE%vstd.pcm.Resource. P&. P&))
 )
 (assert
  (has_type r2!@0 (TYPE%vstd.pcm.Resource. P&. P&))
 )
 (assert
  (has_type r3!@0 (TYPE%vstd.pcm.Resource. P&. P&))
 )
 (assert
  (has_type r4!@0 (TYPE%vstd.pcm.Resource. P&. P&))
 )
 (assert
  (tr_bound%vstd.pcm.PCM. P&. P&)
 )
 (assert
  (let
   ((tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& r2!@0)))
   (let
    ((tmp%%$1 (vstd.pcm.impl&%0.loc.? P&. P& r3!@0)))
    (and
     (and
      (= (vstd.pcm.impl&%0.loc.? P&. P& r1!@0) tmp%%$)
      (= tmp%%$ tmp%%$1)
     )
     (= tmp%%$1 (vstd.pcm.impl&%0.loc.? P&. P& r4!@0))
 ))))
 (declare-fun %%array%%0 (Poly Poly Poly Poly) %%Function%%)
 (assert
  (forall ((%%hole%%0 Poly) (%%hole%%1 Poly) (%%hole%%2 Poly) (%%hole%%3 Poly)) (!
    (let
     ((%%x%% (%%array%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3)))
     (and
      (= (%%apply%%1 %%x%% 0) %%hole%%0)
      (= (%%apply%%1 %%x%% 1) %%hole%%1)
      (= (%%apply%%1 %%x%% 2) %%hole%%2)
      (= (%%apply%%1 %%x%% 3) %%hole%%3)
    ))
    :pattern ((%%array%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3))
    :qid __AIR_ARRAY_QID__
    :skolemid skolem___AIR_ARRAY_QID__
 )))
 (declare-const r1!@1 Poly)
 (declare-const m@1 Poly)
 (declare-const r2!@1 Poly)
 (declare-const m@2 Poly)
 (declare-const r3!@1 Poly)
 (declare-const m@3 Poly)
 (declare-const r4!@1 Poly)
 (declare-const m@4 Poly)
 (declare-const m@5 Poly)
 (declare-const m@6 Poly)
 (declare-const r1!@2 Poly)
 (declare-const m@7 Poly)
 (declare-const r2!@2 Poly)
 (declare-const m@8 Poly)
 (declare-const r3!@2 Poly)
 (declare-const m@9 Poly)
 (declare-const r4!@2 Poly)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%5 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%6 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%7 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%8 Bool)
 ;; precondition not satisfied
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
 ;; postcondition not satisfied
 (declare-const %%location_label%%15 Bool)
 (assert
  (not (=>
    (ens%vstd.pcm_lib.lemma_pcm_properties. P&. P&)
    (=>
     (ens%vstd.map.impl&%0.tracked_empty. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@0)
     (=>
      (= values@ (vstd.view.View.view.? $ (ARRAY P&. P& $ (CONST_INT 4)) (array_new P&. P&
         4 (%%array%%0 (vstd.pcm.impl&%0.value.? P&. P& r1!@0) (vstd.pcm.impl&%0.value.? P&.
           P& r2!@0
          ) (vstd.pcm.impl&%0.value.? P&. P& r3!@0) (vstd.pcm.impl&%0.value.? P&. P& r4!@0)
      ))))
      (=>
       (has_type r1!@1 (TYPE%vstd.pcm.Resource. P&. P&))
       (=>
        (ens%vstd.pcm_lib.extract. P&. P& r1!@0 r1!@1 tmp%1)
        (=>
         (has_type m@1 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
         (=>
          (ens%vstd.map.impl&%0.tracked_insert. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@0
           m@1 (I 0) tmp%1
          )
          (=>
           (has_type r2!@1 (TYPE%vstd.pcm.Resource. P&. P&))
           (=>
            (ens%vstd.pcm_lib.extract. P&. P& r2!@0 r2!@1 tmp%2)
            (=>
             (has_type m@2 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
             (=>
              (ens%vstd.map.impl&%0.tracked_insert. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@1
               m@2 (I 1) tmp%2
              )
              (=>
               (has_type r3!@1 (TYPE%vstd.pcm.Resource. P&. P&))
               (=>
                (ens%vstd.pcm_lib.extract. P&. P& r3!@0 r3!@1 tmp%3)
                (=>
                 (has_type m@3 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
                 (=>
                  (ens%vstd.map.impl&%0.tracked_insert. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@2
                   m@3 (I 2) tmp%3
                  )
                  (=>
                   (has_type r4!@1 (TYPE%vstd.pcm.Resource. P&. P&))
                   (=>
                    (ens%vstd.pcm_lib.extract. P&. P& r4!@0 r4!@1 tmp%4)
                    (=>
                     (has_type m@4 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
                     (=>
                      (ens%vstd.map.impl&%0.tracked_insert. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@3
                       m@4 (I 3) tmp%4
                      )
                      (and
                       (=>
                        (ens%vstd.pcm_lib.lemma_pcm_properties. P&. P&)
                        (=>
                         (fuel_bool fuel%vstd.pcm_lib.combine_values.)
                         (=>
                          (exists ((fuel% Fuel)) (= fuel_nat%vstd.pcm_lib.combine_values. (succ (succ (succ (succ
                                fuel%
                          ))))))
                          (=>
                           %%location_label%%0
                           (= (vstd.pcm_lib.combine_values.? P&. P& values@) (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.?
                              P&. P& r1!@0
                             ) (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.? P&. P& r2!@0) (vstd.pcm.PCM.op.?
                               P&. P& (vstd.pcm.impl&%0.value.? P&. P& r3!@0) (vstd.pcm.impl&%0.value.? P&. P& r4!@0)
                       ))))))))
                       (=>
                        (= (vstd.pcm_lib.combine_values.? P&. P& values@) (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.?
                           P&. P& r1!@0
                          ) (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.? P&. P& r2!@0) (vstd.pcm.PCM.op.?
                            P&. P& (vstd.pcm.impl&%0.value.? P&. P& r3!@0) (vstd.pcm.impl&%0.value.? P&. P& r4!@0)
                        ))))
                        (=>
                         (= tmp%5 (vstd.pcm.impl&%0.loc.? P&. P& r1!@1))
                         (and
                          (=>
                           %%location_label%%1
                           (req%vstd.pcm_lib.validate_multiple. P&. P& m@4 tmp%5 values@)
                          )
                          (=>
                           (has_type m@5 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
                           (=>
                            (ens%vstd.pcm_lib.validate_multiple. P&. P& m@4 m@5 tmp%5 values@)
                            (and
                             (=>
                              %%location_label%%2
                              (req%vstd.map.impl&%0.tracked_remove. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@5
                               (I 0)
                             ))
                             (=>
                              (has_type m@6 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
                              (=>
                               (ens%vstd.map.impl&%0.tracked_remove. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@5
                                m@6 (I 0) tmp%6
                               )
                               (and
                                (=>
                                 %%location_label%%3
                                 (req%vstd.pcm_lib.incorporate. P&. P& r1!@1 tmp%6)
                                )
                                (=>
                                 (has_type r1!@2 (TYPE%vstd.pcm.Resource. P&. P&))
                                 (=>
                                  (ens%vstd.pcm_lib.incorporate. P&. P& r1!@1 r1!@2 tmp%6)
                                  (and
                                   (=>
                                    %%location_label%%4
                                    (req%vstd.map.impl&%0.tracked_remove. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@6
                                     (I 1)
                                   ))
                                   (=>
                                    (has_type m@7 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
                                    (=>
                                     (ens%vstd.map.impl&%0.tracked_remove. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@6
                                      m@7 (I 1) tmp%7
                                     )
                                     (and
                                      (=>
                                       %%location_label%%5
                                       (req%vstd.pcm_lib.incorporate. P&. P& r2!@1 tmp%7)
                                      )
                                      (=>
                                       (has_type r2!@2 (TYPE%vstd.pcm.Resource. P&. P&))
                                       (=>
                                        (ens%vstd.pcm_lib.incorporate. P&. P& r2!@1 r2!@2 tmp%7)
                                        (and
                                         (=>
                                          %%location_label%%6
                                          (req%vstd.map.impl&%0.tracked_remove. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@7
                                           (I 2)
                                         ))
                                         (=>
                                          (has_type m@8 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
                                          (=>
                                           (ens%vstd.map.impl&%0.tracked_remove. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@7
                                            m@8 (I 2) tmp%8
                                           )
                                           (and
                                            (=>
                                             %%location_label%%7
                                             (req%vstd.pcm_lib.incorporate. P&. P& r3!@1 tmp%8)
                                            )
                                            (=>
                                             (has_type r3!@2 (TYPE%vstd.pcm.Resource. P&. P&))
                                             (=>
                                              (ens%vstd.pcm_lib.incorporate. P&. P& r3!@1 r3!@2 tmp%8)
                                              (and
                                               (=>
                                                %%location_label%%8
                                                (req%vstd.map.impl&%0.tracked_remove. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@8
                                                 (I 3)
                                               ))
                                               (=>
                                                (has_type m@9 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
                                                (=>
                                                 (ens%vstd.map.impl&%0.tracked_remove. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@8
                                                  m@9 (I 3) tmp%9
                                                 )
                                                 (and
                                                  (=>
                                                   %%location_label%%9
                                                   (req%vstd.pcm_lib.incorporate. P&. P& r4!@1 tmp%9)
                                                  )
                                                  (=>
                                                   (has_type r4!@2 (TYPE%vstd.pcm.Resource. P&. P&))
                                                   (=>
                                                    (ens%vstd.pcm_lib.incorporate. P&. P& r4!@1 r4!@2 tmp%9)
                                                    (and
                                                     (=>
                                                      %%location_label%%10
                                                      (let
                                                       ((tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& r2!@2)))
                                                       (let
                                                        ((tmp%%$1 (vstd.pcm.impl&%0.loc.? P&. P& r3!@2)))
                                                        (let
                                                         ((tmp%%$2 (vstd.pcm.impl&%0.loc.? P&. P& r4!@2)))
                                                         (and
                                                          (and
                                                           (and
                                                            (= (vstd.pcm.impl&%0.loc.? P&. P& r1!@2) tmp%%$)
                                                            (= tmp%%$ tmp%%$1)
                                                           )
                                                           (= tmp%%$1 tmp%%$2)
                                                          )
                                                          (= tmp%%$2 (vstd.pcm.impl&%0.loc.? P&. P& r1!@0))
                                                     )))))
                                                     (and
                                                      (=>
                                                       %%location_label%%11
                                                       (= (vstd.pcm.impl&%0.value.? P&. P& r1!@2) (vstd.pcm.impl&%0.value.? P&. P& r1!@0))
                                                      )
                                                      (and
                                                       (=>
                                                        %%location_label%%12
                                                        (= (vstd.pcm.impl&%0.value.? P&. P& r2!@2) (vstd.pcm.impl&%0.value.? P&. P& r2!@0))
                                                       )
                                                       (and
                                                        (=>
                                                         %%location_label%%13
                                                         (= (vstd.pcm.impl&%0.value.? P&. P& r3!@2) (vstd.pcm.impl&%0.value.? P&. P& r3!@0))
                                                        )
                                                        (and
                                                         (=>
                                                          %%location_label%%14
                                                          (= (vstd.pcm.impl&%0.value.? P&. P& r4!@2) (vstd.pcm.impl&%0.value.? P&. P& r4!@0))
                                                         )
                                                         (=>
                                                          %%location_label%%15
                                                          (%B (vstd.pcm.PCM.valid.? P&. P& (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.?
                                                              P&. P& r1!@2
                                                             ) (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.? P&. P& r2!@2) (vstd.pcm.PCM.op.?
                                                               P&. P& (vstd.pcm.impl&%0.value.? P&. P& r3!@2) (vstd.pcm.impl&%0.value.? P&. P& r4!@2)
 ))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::pcm_lib::validate_5
(declare-fun req%vstd.pcm_lib.validate_5. (Dcr Type Poly Poly Poly Poly Poly) Bool)
(declare-const %%global_location_label%%37 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (pre%r1! Poly) (pre%r2! Poly) (pre%r3! Poly) (pre%r4! Poly)
   (pre%r5! Poly)
  ) (!
   (= (req%vstd.pcm_lib.validate_5. P&. P& pre%r1! pre%r2! pre%r3! pre%r4! pre%r5!) (
     =>
     %%global_location_label%%37
     (let
      ((tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& pre%r2!)))
      (let
       ((tmp%%$1 (vstd.pcm.impl&%0.loc.? P&. P& pre%r3!)))
       (let
        ((tmp%%$2 (vstd.pcm.impl&%0.loc.? P&. P& pre%r4!)))
        (and
         (and
          (and
           (= (vstd.pcm.impl&%0.loc.? P&. P& pre%r1!) tmp%%$)
           (= tmp%%$ tmp%%$1)
          )
          (= tmp%%$1 tmp%%$2)
         )
         (= tmp%%$2 (vstd.pcm.impl&%0.loc.? P&. P& pre%r5!))
   ))))))
   :pattern ((req%vstd.pcm_lib.validate_5. P&. P& pre%r1! pre%r2! pre%r3! pre%r4! pre%r5!))
   :qid internal_req__vstd.pcm_lib.validate_5._definition
   :skolemid skolem_internal_req__vstd.pcm_lib.validate_5._definition
)))
(declare-fun ens%vstd.pcm_lib.validate_5. (Dcr Type Poly Poly Poly Poly Poly Poly Poly
  Poly Poly Poly
 ) Bool
)
(assert
 (forall ((P&. Dcr) (P& Type) (pre%r1! Poly) (r1! Poly) (pre%r2! Poly) (r2! Poly) (pre%r3!
    Poly
   ) (r3! Poly) (pre%r4! Poly) (r4! Poly) (pre%r5! Poly) (r5! Poly)
  ) (!
   (= (ens%vstd.pcm_lib.validate_5. P&. P& pre%r1! r1! pre%r2! r2! pre%r3! r3! pre%r4!
     r4! pre%r5! r5!
    ) (and
     (has_type r1! (TYPE%vstd.pcm.Resource. P&. P&))
     (has_type r2! (TYPE%vstd.pcm.Resource. P&. P&))
     (has_type r3! (TYPE%vstd.pcm.Resource. P&. P&))
     (has_type r4! (TYPE%vstd.pcm.Resource. P&. P&))
     (has_type r5! (TYPE%vstd.pcm.Resource. P&. P&))
     (let
      ((tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& r2!)))
      (let
       ((tmp%%$1 (vstd.pcm.impl&%0.loc.? P&. P& r3!)))
       (let
        ((tmp%%$2 (vstd.pcm.impl&%0.loc.? P&. P& r4!)))
        (let
         ((tmp%%$3 (vstd.pcm.impl&%0.loc.? P&. P& r5!)))
         (and
          (and
           (and
            (and
             (= (vstd.pcm.impl&%0.loc.? P&. P& r1!) tmp%%$)
             (= tmp%%$ tmp%%$1)
            )
            (= tmp%%$1 tmp%%$2)
           )
           (= tmp%%$2 tmp%%$3)
          )
          (= tmp%%$3 (vstd.pcm.impl&%0.loc.? P&. P& pre%r1!))
     )))))
     (= (vstd.pcm.impl&%0.value.? P&. P& r1!) (vstd.pcm.impl&%0.value.? P&. P& pre%r1!))
     (= (vstd.pcm.impl&%0.value.? P&. P& r2!) (vstd.pcm.impl&%0.value.? P&. P& pre%r2!))
     (= (vstd.pcm.impl&%0.value.? P&. P& r3!) (vstd.pcm.impl&%0.value.? P&. P& pre%r3!))
     (= (vstd.pcm.impl&%0.value.? P&. P& r4!) (vstd.pcm.impl&%0.value.? P&. P& pre%r4!))
     (= (vstd.pcm.impl&%0.value.? P&. P& r5!) (vstd.pcm.impl&%0.value.? P&. P& pre%r5!))
     (%B (vstd.pcm.PCM.valid.? P&. P& (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.?
         P&. P& r1!
        ) (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.? P&. P& r2!) (vstd.pcm.PCM.op.?
          P&. P& (vstd.pcm.impl&%0.value.? P&. P& r3!) (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.?
            P&. P& r4!
           ) (vstd.pcm.impl&%0.value.? P&. P& r5!)
   ))))))))
   :pattern ((ens%vstd.pcm_lib.validate_5. P&. P& pre%r1! r1! pre%r2! r2! pre%r3! r3!
     pre%r4! r4! pre%r5! r5!
   ))
   :qid internal_ens__vstd.pcm_lib.validate_5._definition
   :skolemid skolem_internal_ens__vstd.pcm_lib.validate_5._definition
)))

;; Function-Def crate::vstd::pcm_lib::validate_5
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/pcm_lib.rs:414:1: 420:2 (#0)
(get-info :all-statistics)
(push)
 (declare-const P&. Dcr)
 (declare-const P& Type)
 (declare-const r1!@0 Poly)
 (declare-const r2!@0 Poly)
 (declare-const r3!@0 Poly)
 (declare-const r4!@0 Poly)
 (declare-const r5!@0 Poly)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Poly)
 (declare-const tmp%3 Poly)
 (declare-const tmp%4 Poly)
 (declare-const tmp%5 Poly)
 (declare-const tmp%6 Int)
 (declare-const tmp%7 Poly)
 (declare-const tmp%8 Poly)
 (declare-const tmp%9 Poly)
 (declare-const tmp%10 Poly)
 (declare-const tmp%11 Poly)
 (declare-const m@0 Poly)
 (declare-const values@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type r1!@0 (TYPE%vstd.pcm.Resource. P&. P&))
 )
 (assert
  (has_type r2!@0 (TYPE%vstd.pcm.Resource. P&. P&))
 )
 (assert
  (has_type r3!@0 (TYPE%vstd.pcm.Resource. P&. P&))
 )
 (assert
  (has_type r4!@0 (TYPE%vstd.pcm.Resource. P&. P&))
 )
 (assert
  (has_type r5!@0 (TYPE%vstd.pcm.Resource. P&. P&))
 )
 (assert
  (tr_bound%vstd.pcm.PCM. P&. P&)
 )
 (assert
  (let
   ((tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& r2!@0)))
   (let
    ((tmp%%$1 (vstd.pcm.impl&%0.loc.? P&. P& r3!@0)))
    (let
     ((tmp%%$2 (vstd.pcm.impl&%0.loc.? P&. P& r4!@0)))
     (and
      (and
       (and
        (= (vstd.pcm.impl&%0.loc.? P&. P& r1!@0) tmp%%$)
        (= tmp%%$ tmp%%$1)
       )
       (= tmp%%$1 tmp%%$2)
      )
      (= tmp%%$2 (vstd.pcm.impl&%0.loc.? P&. P& r5!@0))
 )))))
 (declare-fun %%array%%1 (Poly Poly Poly Poly Poly) %%Function%%)
 (assert
  (forall ((%%hole%%0 Poly) (%%hole%%1 Poly) (%%hole%%2 Poly) (%%hole%%3 Poly) (%%hole%%4
     Poly
    )
   ) (!
    (let
     ((%%x%% (%%array%%1 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4)))
     (and
      (= (%%apply%%1 %%x%% 0) %%hole%%0)
      (= (%%apply%%1 %%x%% 1) %%hole%%1)
      (= (%%apply%%1 %%x%% 2) %%hole%%2)
      (= (%%apply%%1 %%x%% 3) %%hole%%3)
      (= (%%apply%%1 %%x%% 4) %%hole%%4)
    ))
    :pattern ((%%array%%1 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4))
    :qid __AIR_ARRAY_QID__
    :skolemid skolem___AIR_ARRAY_QID__
 )))
 (declare-const r1!@1 Poly)
 (declare-const m@1 Poly)
 (declare-const r2!@1 Poly)
 (declare-const m@2 Poly)
 (declare-const r3!@1 Poly)
 (declare-const m@3 Poly)
 (declare-const r4!@1 Poly)
 (declare-const m@4 Poly)
 (declare-const r5!@1 Poly)
 (declare-const m@5 Poly)
 (declare-const m@6 Poly)
 (declare-const m@7 Poly)
 (declare-const r1!@2 Poly)
 (declare-const m@8 Poly)
 (declare-const r2!@2 Poly)
 (declare-const m@9 Poly)
 (declare-const r3!@2 Poly)
 (declare-const m@10 Poly)
 (declare-const r4!@2 Poly)
 (declare-const m@11 Poly)
 (declare-const r5!@2 Poly)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%5 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%6 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%7 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%8 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%9 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%10 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%11 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%12 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%13 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%14 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%15 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%16 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%17 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%18 Bool)
 (assert
  (not (=>
    (ens%vstd.pcm_lib.lemma_pcm_properties. P&. P&)
    (=>
     (ens%vstd.map.impl&%0.tracked_empty. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@0)
     (=>
      (= values@ (vstd.view.View.view.? $ (ARRAY P&. P& $ (CONST_INT 5)) (array_new P&. P&
         5 (%%array%%1 (vstd.pcm.impl&%0.value.? P&. P& r1!@0) (vstd.pcm.impl&%0.value.? P&.
           P& r2!@0
          ) (vstd.pcm.impl&%0.value.? P&. P& r3!@0) (vstd.pcm.impl&%0.value.? P&. P& r4!@0)
          (vstd.pcm.impl&%0.value.? P&. P& r5!@0)
      ))))
      (=>
       (has_type r1!@1 (TYPE%vstd.pcm.Resource. P&. P&))
       (=>
        (ens%vstd.pcm_lib.extract. P&. P& r1!@0 r1!@1 tmp%1)
        (=>
         (has_type m@1 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
         (=>
          (ens%vstd.map.impl&%0.tracked_insert. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@0
           m@1 (I 0) tmp%1
          )
          (=>
           (has_type r2!@1 (TYPE%vstd.pcm.Resource. P&. P&))
           (=>
            (ens%vstd.pcm_lib.extract. P&. P& r2!@0 r2!@1 tmp%2)
            (=>
             (has_type m@2 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
             (=>
              (ens%vstd.map.impl&%0.tracked_insert. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@1
               m@2 (I 1) tmp%2
              )
              (=>
               (has_type r3!@1 (TYPE%vstd.pcm.Resource. P&. P&))
               (=>
                (ens%vstd.pcm_lib.extract. P&. P& r3!@0 r3!@1 tmp%3)
                (=>
                 (has_type m@3 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
                 (=>
                  (ens%vstd.map.impl&%0.tracked_insert. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@2
                   m@3 (I 2) tmp%3
                  )
                  (=>
                   (has_type r4!@1 (TYPE%vstd.pcm.Resource. P&. P&))
                   (=>
                    (ens%vstd.pcm_lib.extract. P&. P& r4!@0 r4!@1 tmp%4)
                    (=>
                     (has_type m@4 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
                     (=>
                      (ens%vstd.map.impl&%0.tracked_insert. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@3
                       m@4 (I 3) tmp%4
                      )
                      (=>
                       (has_type r5!@1 (TYPE%vstd.pcm.Resource. P&. P&))
                       (=>
                        (ens%vstd.pcm_lib.extract. P&. P& r5!@0 r5!@1 tmp%5)
                        (=>
                         (has_type m@5 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
                         (=>
                          (ens%vstd.map.impl&%0.tracked_insert. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@4
                           m@5 (I 4) tmp%5
                          )
                          (and
                           (=>
                            (ens%vstd.pcm_lib.lemma_pcm_properties. P&. P&)
                            (=>
                             (fuel_bool fuel%vstd.pcm_lib.combine_values.)
                             (=>
                              (exists ((fuel% Fuel)) (= fuel_nat%vstd.pcm_lib.combine_values. (succ (succ (succ (succ
                                    (succ fuel%)
                              ))))))
                              (=>
                               %%location_label%%0
                               (= (vstd.pcm_lib.combine_values.? P&. P& values@) (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.?
                                  P&. P& r1!@0
                                 ) (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.? P&. P& r2!@0) (vstd.pcm.PCM.op.?
                                   P&. P& (vstd.pcm.impl&%0.value.? P&. P& r3!@0) (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.?
                                     P&. P& r4!@0
                                    ) (vstd.pcm.impl&%0.value.? P&. P& r5!@0)
                           )))))))))
                           (=>
                            (= (vstd.pcm_lib.combine_values.? P&. P& values@) (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.?
                               P&. P& r1!@0
                              ) (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.? P&. P& r2!@0) (vstd.pcm.PCM.op.?
                                P&. P& (vstd.pcm.impl&%0.value.? P&. P& r3!@0) (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.?
                                  P&. P& r4!@0
                                 ) (vstd.pcm.impl&%0.value.? P&. P& r5!@0)
                            )))))
                            (=>
                             (= tmp%6 (vstd.pcm.impl&%0.loc.? P&. P& r1!@1))
                             (and
                              (=>
                               %%location_label%%1
                               (req%vstd.pcm_lib.validate_multiple. P&. P& m@5 tmp%6 values@)
                              )
                              (=>
                               (has_type m@6 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
                               (=>
                                (ens%vstd.pcm_lib.validate_multiple. P&. P& m@5 m@6 tmp%6 values@)
                                (and
                                 (=>
                                  %%location_label%%2
                                  (req%vstd.map.impl&%0.tracked_remove. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@6
                                   (I 0)
                                 ))
                                 (=>
                                  (has_type m@7 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
                                  (=>
                                   (ens%vstd.map.impl&%0.tracked_remove. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@6
                                    m@7 (I 0) tmp%7
                                   )
                                   (and
                                    (=>
                                     %%location_label%%3
                                     (req%vstd.pcm_lib.incorporate. P&. P& r1!@1 tmp%7)
                                    )
                                    (=>
                                     (has_type r1!@2 (TYPE%vstd.pcm.Resource. P&. P&))
                                     (=>
                                      (ens%vstd.pcm_lib.incorporate. P&. P& r1!@1 r1!@2 tmp%7)
                                      (and
                                       (=>
                                        %%location_label%%4
                                        (req%vstd.map.impl&%0.tracked_remove. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@7
                                         (I 1)
                                       ))
                                       (=>
                                        (has_type m@8 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
                                        (=>
                                         (ens%vstd.map.impl&%0.tracked_remove. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@7
                                          m@8 (I 1) tmp%8
                                         )
                                         (and
                                          (=>
                                           %%location_label%%5
                                           (req%vstd.pcm_lib.incorporate. P&. P& r2!@1 tmp%8)
                                          )
                                          (=>
                                           (has_type r2!@2 (TYPE%vstd.pcm.Resource. P&. P&))
                                           (=>
                                            (ens%vstd.pcm_lib.incorporate. P&. P& r2!@1 r2!@2 tmp%8)
                                            (and
                                             (=>
                                              %%location_label%%6
                                              (req%vstd.map.impl&%0.tracked_remove. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@8
                                               (I 2)
                                             ))
                                             (=>
                                              (has_type m@9 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
                                              (=>
                                               (ens%vstd.map.impl&%0.tracked_remove. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@8
                                                m@9 (I 2) tmp%9
                                               )
                                               (and
                                                (=>
                                                 %%location_label%%7
                                                 (req%vstd.pcm_lib.incorporate. P&. P& r3!@1 tmp%9)
                                                )
                                                (=>
                                                 (has_type r3!@2 (TYPE%vstd.pcm.Resource. P&. P&))
                                                 (=>
                                                  (ens%vstd.pcm_lib.incorporate. P&. P& r3!@1 r3!@2 tmp%9)
                                                  (and
                                                   (=>
                                                    %%location_label%%8
                                                    (req%vstd.map.impl&%0.tracked_remove. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@9
                                                     (I 3)
                                                   ))
                                                   (=>
                                                    (has_type m@10 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
                                                    (=>
                                                     (ens%vstd.map.impl&%0.tracked_remove. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@9
                                                      m@10 (I 3) tmp%10
                                                     )
                                                     (and
                                                      (=>
                                                       %%location_label%%9
                                                       (req%vstd.pcm_lib.incorporate. P&. P& r4!@1 tmp%10)
                                                      )
                                                      (=>
                                                       (has_type r4!@2 (TYPE%vstd.pcm.Resource. P&. P&))
                                                       (=>
                                                        (ens%vstd.pcm_lib.incorporate. P&. P& r4!@1 r4!@2 tmp%10)
                                                        (and
                                                         (=>
                                                          %%location_label%%10
                                                          (req%vstd.map.impl&%0.tracked_remove. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@10
                                                           (I 4)
                                                         ))
                                                         (=>
                                                          (has_type m@11 (TYPE%vstd.map.Map. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&)))
                                                          (=>
                                                           (ens%vstd.map.impl&%0.tracked_remove. $ INT $ (TYPE%vstd.pcm.Resource. P&. P&) m@10
                                                            m@11 (I 4) tmp%11
                                                           )
                                                           (and
                                                            (=>
                                                             %%location_label%%11
                                                             (req%vstd.pcm_lib.incorporate. P&. P& r5!@1 tmp%11)
                                                            )
                                                            (=>
                                                             (has_type r5!@2 (TYPE%vstd.pcm.Resource. P&. P&))
                                                             (=>
                                                              (ens%vstd.pcm_lib.incorporate. P&. P& r5!@1 r5!@2 tmp%11)
                                                              (and
                                                               (=>
                                                                %%location_label%%12
                                                                (let
                                                                 ((tmp%%$ (vstd.pcm.impl&%0.loc.? P&. P& r2!@2)))
                                                                 (let
                                                                  ((tmp%%$1 (vstd.pcm.impl&%0.loc.? P&. P& r3!@2)))
                                                                  (let
                                                                   ((tmp%%$2 (vstd.pcm.impl&%0.loc.? P&. P& r4!@2)))
                                                                   (let
                                                                    ((tmp%%$3 (vstd.pcm.impl&%0.loc.? P&. P& r5!@2)))
                                                                    (and
                                                                     (and
                                                                      (and
                                                                       (and
                                                                        (= (vstd.pcm.impl&%0.loc.? P&. P& r1!@2) tmp%%$)
                                                                        (= tmp%%$ tmp%%$1)
                                                                       )
                                                                       (= tmp%%$1 tmp%%$2)
                                                                      )
                                                                      (= tmp%%$2 tmp%%$3)
                                                                     )
                                                                     (= tmp%%$3 (vstd.pcm.impl&%0.loc.? P&. P& r1!@0))
                                                               ))))))
                                                               (and
                                                                (=>
                                                                 %%location_label%%13
                                                                 (= (vstd.pcm.impl&%0.value.? P&. P& r1!@2) (vstd.pcm.impl&%0.value.? P&. P& r1!@0))
                                                                )
                                                                (and
                                                                 (=>
                                                                  %%location_label%%14
                                                                  (= (vstd.pcm.impl&%0.value.? P&. P& r2!@2) (vstd.pcm.impl&%0.value.? P&. P& r2!@0))
                                                                 )
                                                                 (and
                                                                  (=>
                                                                   %%location_label%%15
                                                                   (= (vstd.pcm.impl&%0.value.? P&. P& r3!@2) (vstd.pcm.impl&%0.value.? P&. P& r3!@0))
                                                                  )
                                                                  (and
                                                                   (=>
                                                                    %%location_label%%16
                                                                    (= (vstd.pcm.impl&%0.value.? P&. P& r4!@2) (vstd.pcm.impl&%0.value.? P&. P& r4!@0))
                                                                   )
                                                                   (and
                                                                    (=>
                                                                     %%location_label%%17
                                                                     (= (vstd.pcm.impl&%0.value.? P&. P& r5!@2) (vstd.pcm.impl&%0.value.? P&. P& r5!@0))
                                                                    )
                                                                    (=>
                                                                     %%location_label%%18
                                                                     (%B (vstd.pcm.PCM.valid.? P&. P& (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.?
                                                                         P&. P& r1!@2
                                                                        ) (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.? P&. P& r2!@2) (vstd.pcm.PCM.op.?
                                                                          P&. P& (vstd.pcm.impl&%0.value.? P&. P& r3!@2) (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.?
                                                                            P&. P& r4!@2
                                                                           ) (vstd.pcm.impl&%0.value.? P&. P& r5!@2)
 ))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
