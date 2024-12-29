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
(declare-const fuel%vstd!std_specs.vec.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd!std_specs.vec.axiom_spec_len. FuelId)
(declare-const fuel%vstd!std_specs.vec.axiom_vec_index_decreases. FuelId)
(declare-const fuel%vstd!array.array_view. FuelId)
(declare-const fuel%vstd!array.impl&%0.view. FuelId)
(declare-const fuel%vstd!array.impl&%2.spec_index. FuelId)
(declare-const fuel%vstd!array.lemma_array_index. FuelId)
(declare-const fuel%vstd!array.array_len_matches_n. FuelId)
(declare-const fuel%vstd!pervasive.trigger. FuelId)
(declare-const fuel%vstd!raw_ptr.impl&%4.view. FuelId)
(declare-const fuel%vstd!raw_ptr.ptrs_mut_eq. FuelId)
(declare-const fuel%vstd!seq.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_index_decreases. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_subrange_decreases. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_empty. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_new_len. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_new_index. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_push_len. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_push_index_same. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_push_index_different. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_ext_equal. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_ext_equal_deep. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_subrange_len. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_subrange_index. FuelId)
(declare-const fuel%vstd!seq_lib.impl&%0.drop_last. FuelId)
(declare-const fuel%vstd!view.impl&%0.view. FuelId)
(declare-const fuel%vstd!view.impl&%2.view. FuelId)
(declare-const fuel%vstd!view.impl&%4.view. FuelId)
(declare-const fuel%vstd!view.impl&%6.view. FuelId)
(declare-const fuel%vstd!view.impl&%10.view. FuelId)
(declare-const fuel%vstd!view.impl&%12.view. FuelId)
(declare-const fuel%vstd!view.impl&%24.view. FuelId)
(declare-const fuel%test_crate!f. FuelId)
(declare-const fuel%test_crate!vs. FuelId)
(declare-const fuel%test_crate!sbad. FuelId)
(declare-const fuel%test_crate!vbad. FuelId)
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
 (distinct fuel%vstd!std_specs.vec.impl&%0.spec_index. fuel%vstd!std_specs.vec.axiom_spec_len.
  fuel%vstd!std_specs.vec.axiom_vec_index_decreases. fuel%vstd!array.array_view. fuel%vstd!array.impl&%0.view.
  fuel%vstd!array.impl&%2.spec_index. fuel%vstd!array.lemma_array_index. fuel%vstd!array.array_len_matches_n.
  fuel%vstd!pervasive.trigger. fuel%vstd!raw_ptr.impl&%4.view. fuel%vstd!raw_ptr.ptrs_mut_eq.
  fuel%vstd!seq.impl&%0.spec_index. fuel%vstd!seq.axiom_seq_index_decreases. fuel%vstd!seq.axiom_seq_subrange_decreases.
  fuel%vstd!seq.axiom_seq_empty. fuel%vstd!seq.axiom_seq_new_len. fuel%vstd!seq.axiom_seq_new_index.
  fuel%vstd!seq.axiom_seq_push_len. fuel%vstd!seq.axiom_seq_push_index_same. fuel%vstd!seq.axiom_seq_push_index_different.
  fuel%vstd!seq.axiom_seq_ext_equal. fuel%vstd!seq.axiom_seq_ext_equal_deep. fuel%vstd!seq.axiom_seq_subrange_len.
  fuel%vstd!seq.axiom_seq_subrange_index. fuel%vstd!seq_lib.impl&%0.drop_last. fuel%vstd!view.impl&%0.view.
  fuel%vstd!view.impl&%2.view. fuel%vstd!view.impl&%4.view. fuel%vstd!view.impl&%6.view.
  fuel%vstd!view.impl&%10.view. fuel%vstd!view.impl&%12.view. fuel%vstd!view.impl&%24.view.
  fuel%test_crate!f. fuel%test_crate!vs. fuel%test_crate!sbad. fuel%test_crate!vbad.
  fuel%vstd!array.group_array_axioms. fuel%vstd!map.group_map_axioms. fuel%vstd!multiset.group_multiset_axioms.
  fuel%vstd!raw_ptr.group_raw_ptr_axioms. fuel%vstd!seq.group_seq_axioms. fuel%vstd!seq_lib.group_seq_lib_default.
  fuel%vstd!set.group_set_axioms. fuel%vstd!set_lib.group_set_lib_axioms. fuel%vstd!slice.group_slice_axioms.
  fuel%vstd!string.group_string_axioms. fuel%vstd!std_specs.bits.group_bits_axioms.
  fuel%vstd!std_specs.control_flow.group_control_flow_axioms. fuel%vstd!std_specs.range.group_range_axioms.
  fuel%vstd!std_specs.vec.group_vec_axioms. fuel%vstd!group_vstd_default.
))
(assert
 (=>
  (fuel_bool_default fuel%vstd!array.group_array_axioms.)
  (and
   (fuel_bool_default fuel%vstd!array.array_len_matches_n.)
   (fuel_bool_default fuel%vstd!array.lemma_array_index.)
)))
(assert
 (=>
  (fuel_bool_default fuel%vstd!raw_ptr.group_raw_ptr_axioms.)
  (fuel_bool_default fuel%vstd!raw_ptr.ptrs_mut_eq.)
))
(assert
 (=>
  (fuel_bool_default fuel%vstd!seq.group_seq_axioms.)
  (and
   (fuel_bool_default fuel%vstd!seq.axiom_seq_index_decreases.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_subrange_decreases.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_empty.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_new_len.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_new_index.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_push_len.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_push_index_same.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_push_index_different.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_ext_equal.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_ext_equal_deep.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_subrange_len.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_subrange_index.)
)))
(assert
 (=>
  (fuel_bool_default fuel%vstd!std_specs.vec.group_vec_axioms.)
  (and
   (fuel_bool_default fuel%vstd!std_specs.vec.axiom_spec_len.)
   (fuel_bool_default fuel%vstd!std_specs.vec.axiom_vec_index_decreases.)
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

;; Associated-Type-Decls
(declare-fun proj%%vstd!view.View./V (Dcr Type) Dcr)
(declare-fun proj%vstd!view.View./V (Dcr Type) Type)

;; Datatypes
(declare-sort alloc!vec.Vec<bool./allocator_global%.>. 0)
(declare-sort alloc!vec.Vec<$%2<allocator_global%./test_crate!V.>./allocator_global%.>.
 0
)
(declare-sort vstd!raw_ptr.DynMetadata. 0)
(declare-sort vstd!raw_ptr.Provenance. 0)
(declare-sort vstd!seq.Seq<bool.>. 0)
(declare-sort vstd!seq.Seq<test_crate!X.>. 0)
(declare-sort vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>. 0)
(declare-sort allocator_global%. 0)
(declare-datatypes ((vstd!raw_ptr.Metadata. 0) (vstd!raw_ptr.PtrData. 0) (test_crate!S.
   0
  ) (test_crate!V. 0) (test_crate!X. 0) (tuple%0. 0)
 ) (((vstd!raw_ptr.Metadata./Thin) (vstd!raw_ptr.Metadata./Length (vstd!raw_ptr.Metadata./Length/?0
     Int
    )
   ) (vstd!raw_ptr.Metadata./Dyn (vstd!raw_ptr.Metadata./Dyn/?0 vstd!raw_ptr.DynMetadata.))
  ) ((vstd!raw_ptr.PtrData./PtrData (vstd!raw_ptr.PtrData./PtrData/?addr Int) (vstd!raw_ptr.PtrData./PtrData/?provenance
     vstd!raw_ptr.Provenance.
    ) (vstd!raw_ptr.PtrData./PtrData/?metadata vstd!raw_ptr.Metadata.)
   )
  ) ((test_crate!S./S (test_crate!S./S/?s vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>.)))
  ((test_crate!V./V (test_crate!V./V/?v alloc!vec.Vec<$%2<allocator_global%./test_crate!V.>./allocator_global%.>.)))
  ((test_crate!X./X (test_crate!X./X/?y vstd!seq.Seq<test_crate!X.>.))) ((tuple%0./tuple%0))
))
(declare-fun vstd!raw_ptr.Metadata./Length/0 (vstd!raw_ptr.Metadata.) Int)
(declare-fun vstd!raw_ptr.Metadata./Dyn/0 (vstd!raw_ptr.Metadata.) vstd!raw_ptr.DynMetadata.)
(declare-fun vstd!raw_ptr.PtrData./PtrData/addr (vstd!raw_ptr.PtrData.) Int)
(declare-fun vstd!raw_ptr.PtrData./PtrData/provenance (vstd!raw_ptr.PtrData.) vstd!raw_ptr.Provenance.)
(declare-fun vstd!raw_ptr.PtrData./PtrData/metadata (vstd!raw_ptr.PtrData.) vstd!raw_ptr.Metadata.)
(declare-fun test_crate!S./S/s (test_crate!S.) vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>.)
(declare-fun test_crate!V./V/v (test_crate!V.) alloc!vec.Vec<$%2<allocator_global%./test_crate!V.>./allocator_global%.>.)
(declare-fun test_crate!X./X/y (test_crate!X.) vstd!seq.Seq<test_crate!X.>.)
(declare-fun TYPE%fun%1. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%alloc!vec.Vec. (Dcr Type Dcr Type) Type)
(declare-const TYPE%vstd!raw_ptr.Provenance. Type)
(declare-const TYPE%vstd!raw_ptr.Metadata. Type)
(declare-const TYPE%vstd!raw_ptr.DynMetadata. Type)
(declare-const TYPE%vstd!raw_ptr.PtrData. Type)
(declare-fun TYPE%vstd!seq.Seq. (Dcr Type) Type)
(declare-const TYPE%test_crate!S. Type)
(declare-const TYPE%test_crate!V. Type)
(declare-const TYPE%test_crate!X. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%fun%1. (%%Function%%) Poly)
(declare-fun %Poly%fun%1. (Poly) %%Function%%)
(declare-fun Poly%array%. (%%Function%%) Poly)
(declare-fun %Poly%array%. (Poly) %%Function%%)
(declare-fun Poly%alloc!vec.Vec<bool./allocator_global%.>. (alloc!vec.Vec<bool./allocator_global%.>.)
 Poly
)
(declare-fun %Poly%alloc!vec.Vec<bool./allocator_global%.>. (Poly) alloc!vec.Vec<bool./allocator_global%.>.)
(declare-fun Poly%alloc!vec.Vec<$%2<allocator_global%./test_crate!V.>./allocator_global%.>.
 (alloc!vec.Vec<$%2<allocator_global%./test_crate!V.>./allocator_global%.>.) Poly
)
(declare-fun %Poly%alloc!vec.Vec<$%2<allocator_global%./test_crate!V.>./allocator_global%.>.
 (Poly) alloc!vec.Vec<$%2<allocator_global%./test_crate!V.>./allocator_global%.>.
)
(declare-fun Poly%vstd!raw_ptr.DynMetadata. (vstd!raw_ptr.DynMetadata.) Poly)
(declare-fun %Poly%vstd!raw_ptr.DynMetadata. (Poly) vstd!raw_ptr.DynMetadata.)
(declare-fun Poly%vstd!raw_ptr.Provenance. (vstd!raw_ptr.Provenance.) Poly)
(declare-fun %Poly%vstd!raw_ptr.Provenance. (Poly) vstd!raw_ptr.Provenance.)
(declare-fun Poly%vstd!seq.Seq<bool.>. (vstd!seq.Seq<bool.>.) Poly)
(declare-fun %Poly%vstd!seq.Seq<bool.>. (Poly) vstd!seq.Seq<bool.>.)
(declare-fun Poly%vstd!seq.Seq<test_crate!X.>. (vstd!seq.Seq<test_crate!X.>.) Poly)
(declare-fun %Poly%vstd!seq.Seq<test_crate!X.>. (Poly) vstd!seq.Seq<test_crate!X.>.)
(declare-fun Poly%vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>. (vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>.)
 Poly
)
(declare-fun %Poly%vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>. (Poly) vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>.)
(declare-fun Poly%allocator_global%. (allocator_global%.) Poly)
(declare-fun %Poly%allocator_global%. (Poly) allocator_global%.)
(declare-fun Poly%vstd!raw_ptr.Metadata. (vstd!raw_ptr.Metadata.) Poly)
(declare-fun %Poly%vstd!raw_ptr.Metadata. (Poly) vstd!raw_ptr.Metadata.)
(declare-fun Poly%vstd!raw_ptr.PtrData. (vstd!raw_ptr.PtrData.) Poly)
(declare-fun %Poly%vstd!raw_ptr.PtrData. (Poly) vstd!raw_ptr.PtrData.)
(declare-fun Poly%test_crate!S. (test_crate!S.) Poly)
(declare-fun %Poly%test_crate!S. (Poly) test_crate!S.)
(declare-fun Poly%test_crate!V. (test_crate!V.) Poly)
(declare-fun %Poly%test_crate!V. (Poly) test_crate!V.)
(declare-fun Poly%test_crate!X. (test_crate!X.) Poly)
(declare-fun %Poly%test_crate!X. (Poly) test_crate!X.)
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
 (forall ((x alloc!vec.Vec<bool./allocator_global%.>.)) (!
   (= x (%Poly%alloc!vec.Vec<bool./allocator_global%.>. (Poly%alloc!vec.Vec<bool./allocator_global%.>.
      x
   )))
   :pattern ((Poly%alloc!vec.Vec<bool./allocator_global%.>. x))
   :qid internal_alloc__vec__Vec<bool./allocator_global__.>_box_axiom_definition
   :skolemid skolem_internal_alloc__vec__Vec<bool./allocator_global__.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%alloc!vec.Vec. $ BOOL $ ALLOCATOR_GLOBAL))
    (= x (Poly%alloc!vec.Vec<bool./allocator_global%.>. (%Poly%alloc!vec.Vec<bool./allocator_global%.>.
       x
   ))))
   :pattern ((has_type x (TYPE%alloc!vec.Vec. $ BOOL $ ALLOCATOR_GLOBAL)))
   :qid internal_alloc__vec__Vec<bool./allocator_global__.>_unbox_axiom_definition
   :skolemid skolem_internal_alloc__vec__Vec<bool./allocator_global__.>_unbox_axiom_definition
)))
(assert
 (forall ((x alloc!vec.Vec<bool./allocator_global%.>.)) (!
   (has_type (Poly%alloc!vec.Vec<bool./allocator_global%.>. x) (TYPE%alloc!vec.Vec. $
     BOOL $ ALLOCATOR_GLOBAL
   ))
   :pattern ((has_type (Poly%alloc!vec.Vec<bool./allocator_global%.>. x) (TYPE%alloc!vec.Vec.
      $ BOOL $ ALLOCATOR_GLOBAL
   )))
   :qid internal_alloc__vec__Vec<bool./allocator_global__.>_has_type_always_definition
   :skolemid skolem_internal_alloc__vec__Vec<bool./allocator_global__.>_has_type_always_definition
)))
(assert
 (forall ((x alloc!vec.Vec<$%2<allocator_global%./test_crate!V.>./allocator_global%.>.))
  (!
   (= x (%Poly%alloc!vec.Vec<$%2<allocator_global%./test_crate!V.>./allocator_global%.>.
     (Poly%alloc!vec.Vec<$%2<allocator_global%./test_crate!V.>./allocator_global%.>. x)
   ))
   :pattern ((Poly%alloc!vec.Vec<$%2<allocator_global%./test_crate!V.>./allocator_global%.>.
     x
   ))
   :qid internal_alloc__vec__Vec<$__2<allocator_global__./test_crate!V.>./allocator_global__.>_box_axiom_definition
   :skolemid skolem_internal_alloc__vec__Vec<$__2<allocator_global__./test_crate!V.>./allocator_global__.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%alloc!vec.Vec. (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!V. $ ALLOCATOR_GLOBAL))
    (= x (Poly%alloc!vec.Vec<$%2<allocator_global%./test_crate!V.>./allocator_global%.>.
      (%Poly%alloc!vec.Vec<$%2<allocator_global%./test_crate!V.>./allocator_global%.>. x)
   )))
   :pattern ((has_type x (TYPE%alloc!vec.Vec. (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!V.
      $ ALLOCATOR_GLOBAL
   )))
   :qid internal_alloc__vec__Vec<$__2<allocator_global__./test_crate!V.>./allocator_global__.>_unbox_axiom_definition
   :skolemid skolem_internal_alloc__vec__Vec<$__2<allocator_global__./test_crate!V.>./allocator_global__.>_unbox_axiom_definition
)))
(assert
 (forall ((x alloc!vec.Vec<$%2<allocator_global%./test_crate!V.>./allocator_global%.>.))
  (!
   (has_type (Poly%alloc!vec.Vec<$%2<allocator_global%./test_crate!V.>./allocator_global%.>.
     x
    ) (TYPE%alloc!vec.Vec. (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!V. $ ALLOCATOR_GLOBAL)
   )
   :pattern ((has_type (Poly%alloc!vec.Vec<$%2<allocator_global%./test_crate!V.>./allocator_global%.>.
      x
     ) (TYPE%alloc!vec.Vec. (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!V. $ ALLOCATOR_GLOBAL)
   ))
   :qid internal_alloc__vec__Vec<$__2<allocator_global__./test_crate!V.>./allocator_global__.>_has_type_always_definition
   :skolemid skolem_internal_alloc__vec__Vec<$__2<allocator_global__./test_crate!V.>./allocator_global__.>_has_type_always_definition
)))
(assert
 (forall ((x vstd!raw_ptr.DynMetadata.)) (!
   (= x (%Poly%vstd!raw_ptr.DynMetadata. (Poly%vstd!raw_ptr.DynMetadata. x)))
   :pattern ((Poly%vstd!raw_ptr.DynMetadata. x))
   :qid internal_vstd__raw_ptr__DynMetadata_box_axiom_definition
   :skolemid skolem_internal_vstd__raw_ptr__DynMetadata_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd!raw_ptr.DynMetadata.)
    (= x (Poly%vstd!raw_ptr.DynMetadata. (%Poly%vstd!raw_ptr.DynMetadata. x)))
   )
   :pattern ((has_type x TYPE%vstd!raw_ptr.DynMetadata.))
   :qid internal_vstd__raw_ptr__DynMetadata_unbox_axiom_definition
   :skolemid skolem_internal_vstd__raw_ptr__DynMetadata_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!raw_ptr.DynMetadata.)) (!
   (has_type (Poly%vstd!raw_ptr.DynMetadata. x) TYPE%vstd!raw_ptr.DynMetadata.)
   :pattern ((has_type (Poly%vstd!raw_ptr.DynMetadata. x) TYPE%vstd!raw_ptr.DynMetadata.))
   :qid internal_vstd__raw_ptr__DynMetadata_has_type_always_definition
   :skolemid skolem_internal_vstd__raw_ptr__DynMetadata_has_type_always_definition
)))
(assert
 (forall ((x vstd!raw_ptr.Provenance.)) (!
   (= x (%Poly%vstd!raw_ptr.Provenance. (Poly%vstd!raw_ptr.Provenance. x)))
   :pattern ((Poly%vstd!raw_ptr.Provenance. x))
   :qid internal_vstd__raw_ptr__Provenance_box_axiom_definition
   :skolemid skolem_internal_vstd__raw_ptr__Provenance_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd!raw_ptr.Provenance.)
    (= x (Poly%vstd!raw_ptr.Provenance. (%Poly%vstd!raw_ptr.Provenance. x)))
   )
   :pattern ((has_type x TYPE%vstd!raw_ptr.Provenance.))
   :qid internal_vstd__raw_ptr__Provenance_unbox_axiom_definition
   :skolemid skolem_internal_vstd__raw_ptr__Provenance_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!raw_ptr.Provenance.)) (!
   (has_type (Poly%vstd!raw_ptr.Provenance. x) TYPE%vstd!raw_ptr.Provenance.)
   :pattern ((has_type (Poly%vstd!raw_ptr.Provenance. x) TYPE%vstd!raw_ptr.Provenance.))
   :qid internal_vstd__raw_ptr__Provenance_has_type_always_definition
   :skolemid skolem_internal_vstd__raw_ptr__Provenance_has_type_always_definition
)))
(assert
 (forall ((x vstd!seq.Seq<bool.>.)) (!
   (= x (%Poly%vstd!seq.Seq<bool.>. (Poly%vstd!seq.Seq<bool.>. x)))
   :pattern ((Poly%vstd!seq.Seq<bool.>. x))
   :qid internal_vstd__seq__Seq<bool.>_box_axiom_definition
   :skolemid skolem_internal_vstd__seq__Seq<bool.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!seq.Seq. $ BOOL))
    (= x (Poly%vstd!seq.Seq<bool.>. (%Poly%vstd!seq.Seq<bool.>. x)))
   )
   :pattern ((has_type x (TYPE%vstd!seq.Seq. $ BOOL)))
   :qid internal_vstd__seq__Seq<bool.>_unbox_axiom_definition
   :skolemid skolem_internal_vstd__seq__Seq<bool.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!seq.Seq<bool.>.)) (!
   (has_type (Poly%vstd!seq.Seq<bool.>. x) (TYPE%vstd!seq.Seq. $ BOOL))
   :pattern ((has_type (Poly%vstd!seq.Seq<bool.>. x) (TYPE%vstd!seq.Seq. $ BOOL)))
   :qid internal_vstd__seq__Seq<bool.>_has_type_always_definition
   :skolemid skolem_internal_vstd__seq__Seq<bool.>_has_type_always_definition
)))
(assert
 (forall ((x vstd!seq.Seq<test_crate!X.>.)) (!
   (= x (%Poly%vstd!seq.Seq<test_crate!X.>. (Poly%vstd!seq.Seq<test_crate!X.>. x)))
   :pattern ((Poly%vstd!seq.Seq<test_crate!X.>. x))
   :qid internal_vstd__seq__Seq<test_crate!X.>_box_axiom_definition
   :skolemid skolem_internal_vstd__seq__Seq<test_crate!X.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!seq.Seq. $ TYPE%test_crate!X.))
    (= x (Poly%vstd!seq.Seq<test_crate!X.>. (%Poly%vstd!seq.Seq<test_crate!X.>. x)))
   )
   :pattern ((has_type x (TYPE%vstd!seq.Seq. $ TYPE%test_crate!X.)))
   :qid internal_vstd__seq__Seq<test_crate!X.>_unbox_axiom_definition
   :skolemid skolem_internal_vstd__seq__Seq<test_crate!X.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!seq.Seq<test_crate!X.>.)) (!
   (has_type (Poly%vstd!seq.Seq<test_crate!X.>. x) (TYPE%vstd!seq.Seq. $ TYPE%test_crate!X.))
   :pattern ((has_type (Poly%vstd!seq.Seq<test_crate!X.>. x) (TYPE%vstd!seq.Seq. $ TYPE%test_crate!X.)))
   :qid internal_vstd__seq__Seq<test_crate!X.>_has_type_always_definition
   :skolemid skolem_internal_vstd__seq__Seq<test_crate!X.>_has_type_always_definition
)))
(assert
 (forall ((x vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>.)) (!
   (= x (%Poly%vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>. (Poly%vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>.
      x
   )))
   :pattern ((Poly%vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>. x))
   :qid internal_vstd__seq__Seq<$__2<allocator_global__./test_crate!S.>.>_box_axiom_definition
   :skolemid skolem_internal_vstd__seq__Seq<$__2<allocator_global__./test_crate!S.>.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!seq.Seq. (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!S.))
    (= x (Poly%vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>. (%Poly%vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd!seq.Seq. (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!S.)))
   :qid internal_vstd__seq__Seq<$__2<allocator_global__./test_crate!S.>.>_unbox_axiom_definition
   :skolemid skolem_internal_vstd__seq__Seq<$__2<allocator_global__./test_crate!S.>.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>.)) (!
   (has_type (Poly%vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>. x) (TYPE%vstd!seq.Seq.
     (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!S.
   ))
   :pattern ((has_type (Poly%vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>. x)
     (TYPE%vstd!seq.Seq. (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!S.)
   ))
   :qid internal_vstd__seq__Seq<$__2<allocator_global__./test_crate!S.>.>_has_type_always_definition
   :skolemid skolem_internal_vstd__seq__Seq<$__2<allocator_global__./test_crate!S.>.>_has_type_always_definition
)))
(assert
 (forall ((x allocator_global%.)) (!
   (= x (%Poly%allocator_global%. (Poly%allocator_global%. x)))
   :pattern ((Poly%allocator_global%. x))
   :qid internal_crate__allocator_global___box_axiom_definition
   :skolemid skolem_internal_crate__allocator_global___box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x ALLOCATOR_GLOBAL)
    (= x (Poly%allocator_global%. (%Poly%allocator_global%. x)))
   )
   :pattern ((has_type x ALLOCATOR_GLOBAL))
   :qid internal_crate__allocator_global___unbox_axiom_definition
   :skolemid skolem_internal_crate__allocator_global___unbox_axiom_definition
)))
(assert
 (forall ((x allocator_global%.)) (!
   (has_type (Poly%allocator_global%. x) ALLOCATOR_GLOBAL)
   :pattern ((has_type (Poly%allocator_global%. x) ALLOCATOR_GLOBAL))
   :qid internal_crate__allocator_global___has_type_always_definition
   :skolemid skolem_internal_crate__allocator_global___has_type_always_definition
)))
(assert
 (forall ((x vstd!raw_ptr.Metadata.)) (!
   (= x (%Poly%vstd!raw_ptr.Metadata. (Poly%vstd!raw_ptr.Metadata. x)))
   :pattern ((Poly%vstd!raw_ptr.Metadata. x))
   :qid internal_vstd__raw_ptr__Metadata_box_axiom_definition
   :skolemid skolem_internal_vstd__raw_ptr__Metadata_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd!raw_ptr.Metadata.)
    (= x (Poly%vstd!raw_ptr.Metadata. (%Poly%vstd!raw_ptr.Metadata. x)))
   )
   :pattern ((has_type x TYPE%vstd!raw_ptr.Metadata.))
   :qid internal_vstd__raw_ptr__Metadata_unbox_axiom_definition
   :skolemid skolem_internal_vstd__raw_ptr__Metadata_unbox_axiom_definition
)))
(assert
 (has_type (Poly%vstd!raw_ptr.Metadata. vstd!raw_ptr.Metadata./Thin) TYPE%vstd!raw_ptr.Metadata.)
)
(assert
 (forall ((_0! Int)) (!
   (=>
    (uInv SZ _0!)
    (has_type (Poly%vstd!raw_ptr.Metadata. (vstd!raw_ptr.Metadata./Length _0!)) TYPE%vstd!raw_ptr.Metadata.)
   )
   :pattern ((has_type (Poly%vstd!raw_ptr.Metadata. (vstd!raw_ptr.Metadata./Length _0!))
     TYPE%vstd!raw_ptr.Metadata.
   ))
   :qid internal_vstd!raw_ptr.Metadata./Length_constructor_definition
   :skolemid skolem_internal_vstd!raw_ptr.Metadata./Length_constructor_definition
)))
(assert
 (forall ((x vstd!raw_ptr.Metadata.)) (!
   (= (vstd!raw_ptr.Metadata./Length/0 x) (vstd!raw_ptr.Metadata./Length/?0 x))
   :pattern ((vstd!raw_ptr.Metadata./Length/0 x))
   :qid internal_vstd!raw_ptr.Metadata./Length/0_accessor_definition
   :skolemid skolem_internal_vstd!raw_ptr.Metadata./Length/0_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd!raw_ptr.Metadata.)
    (uInv SZ (vstd!raw_ptr.Metadata./Length/0 (%Poly%vstd!raw_ptr.Metadata. x)))
   )
   :pattern ((vstd!raw_ptr.Metadata./Length/0 (%Poly%vstd!raw_ptr.Metadata. x)) (has_type
     x TYPE%vstd!raw_ptr.Metadata.
   ))
   :qid internal_vstd!raw_ptr.Metadata./Length/0_invariant_definition
   :skolemid skolem_internal_vstd!raw_ptr.Metadata./Length/0_invariant_definition
)))
(assert
 (forall ((_0! vstd!raw_ptr.DynMetadata.)) (!
   (has_type (Poly%vstd!raw_ptr.Metadata. (vstd!raw_ptr.Metadata./Dyn _0!)) TYPE%vstd!raw_ptr.Metadata.)
   :pattern ((has_type (Poly%vstd!raw_ptr.Metadata. (vstd!raw_ptr.Metadata./Dyn _0!))
     TYPE%vstd!raw_ptr.Metadata.
   ))
   :qid internal_vstd!raw_ptr.Metadata./Dyn_constructor_definition
   :skolemid skolem_internal_vstd!raw_ptr.Metadata./Dyn_constructor_definition
)))
(assert
 (forall ((x vstd!raw_ptr.Metadata.)) (!
   (= (vstd!raw_ptr.Metadata./Dyn/0 x) (vstd!raw_ptr.Metadata./Dyn/?0 x))
   :pattern ((vstd!raw_ptr.Metadata./Dyn/0 x))
   :qid internal_vstd!raw_ptr.Metadata./Dyn/0_accessor_definition
   :skolemid skolem_internal_vstd!raw_ptr.Metadata./Dyn/0_accessor_definition
)))
(assert
 (forall ((x vstd!raw_ptr.PtrData.)) (!
   (= x (%Poly%vstd!raw_ptr.PtrData. (Poly%vstd!raw_ptr.PtrData. x)))
   :pattern ((Poly%vstd!raw_ptr.PtrData. x))
   :qid internal_vstd__raw_ptr__PtrData_box_axiom_definition
   :skolemid skolem_internal_vstd__raw_ptr__PtrData_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd!raw_ptr.PtrData.)
    (= x (Poly%vstd!raw_ptr.PtrData. (%Poly%vstd!raw_ptr.PtrData. x)))
   )
   :pattern ((has_type x TYPE%vstd!raw_ptr.PtrData.))
   :qid internal_vstd__raw_ptr__PtrData_unbox_axiom_definition
   :skolemid skolem_internal_vstd__raw_ptr__PtrData_unbox_axiom_definition
)))
(assert
 (forall ((_addr! Int) (_provenance! vstd!raw_ptr.Provenance.) (_metadata! vstd!raw_ptr.Metadata.))
  (!
   (=>
    (and
     (uInv SZ _addr!)
     (has_type (Poly%vstd!raw_ptr.Metadata. _metadata!) TYPE%vstd!raw_ptr.Metadata.)
    )
    (has_type (Poly%vstd!raw_ptr.PtrData. (vstd!raw_ptr.PtrData./PtrData _addr! _provenance!
       _metadata!
      )
     ) TYPE%vstd!raw_ptr.PtrData.
   ))
   :pattern ((has_type (Poly%vstd!raw_ptr.PtrData. (vstd!raw_ptr.PtrData./PtrData _addr!
       _provenance! _metadata!
      )
     ) TYPE%vstd!raw_ptr.PtrData.
   ))
   :qid internal_vstd!raw_ptr.PtrData./PtrData_constructor_definition
   :skolemid skolem_internal_vstd!raw_ptr.PtrData./PtrData_constructor_definition
)))
(assert
 (forall ((x vstd!raw_ptr.PtrData.)) (!
   (= (vstd!raw_ptr.PtrData./PtrData/addr x) (vstd!raw_ptr.PtrData./PtrData/?addr x))
   :pattern ((vstd!raw_ptr.PtrData./PtrData/addr x))
   :qid internal_vstd!raw_ptr.PtrData./PtrData/addr_accessor_definition
   :skolemid skolem_internal_vstd!raw_ptr.PtrData./PtrData/addr_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd!raw_ptr.PtrData.)
    (uInv SZ (vstd!raw_ptr.PtrData./PtrData/addr (%Poly%vstd!raw_ptr.PtrData. x)))
   )
   :pattern ((vstd!raw_ptr.PtrData./PtrData/addr (%Poly%vstd!raw_ptr.PtrData. x)) (has_type
     x TYPE%vstd!raw_ptr.PtrData.
   ))
   :qid internal_vstd!raw_ptr.PtrData./PtrData/addr_invariant_definition
   :skolemid skolem_internal_vstd!raw_ptr.PtrData./PtrData/addr_invariant_definition
)))
(assert
 (forall ((x vstd!raw_ptr.PtrData.)) (!
   (= (vstd!raw_ptr.PtrData./PtrData/provenance x) (vstd!raw_ptr.PtrData./PtrData/?provenance
     x
   ))
   :pattern ((vstd!raw_ptr.PtrData./PtrData/provenance x))
   :qid internal_vstd!raw_ptr.PtrData./PtrData/provenance_accessor_definition
   :skolemid skolem_internal_vstd!raw_ptr.PtrData./PtrData/provenance_accessor_definition
)))
(assert
 (forall ((x vstd!raw_ptr.PtrData.)) (!
   (= (vstd!raw_ptr.PtrData./PtrData/metadata x) (vstd!raw_ptr.PtrData./PtrData/?metadata
     x
   ))
   :pattern ((vstd!raw_ptr.PtrData./PtrData/metadata x))
   :qid internal_vstd!raw_ptr.PtrData./PtrData/metadata_accessor_definition
   :skolemid skolem_internal_vstd!raw_ptr.PtrData./PtrData/metadata_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd!raw_ptr.PtrData.)
    (has_type (Poly%vstd!raw_ptr.Metadata. (vstd!raw_ptr.PtrData./PtrData/metadata (%Poly%vstd!raw_ptr.PtrData.
        x
      ))
     ) TYPE%vstd!raw_ptr.Metadata.
   ))
   :pattern ((vstd!raw_ptr.PtrData./PtrData/metadata (%Poly%vstd!raw_ptr.PtrData. x))
    (has_type x TYPE%vstd!raw_ptr.PtrData.)
   )
   :qid internal_vstd!raw_ptr.PtrData./PtrData/metadata_invariant_definition
   :skolemid skolem_internal_vstd!raw_ptr.PtrData./PtrData/metadata_invariant_definition
)))
(assert
 (forall ((x test_crate!S.)) (!
   (= x (%Poly%test_crate!S. (Poly%test_crate!S. x)))
   :pattern ((Poly%test_crate!S. x))
   :qid internal_test_crate__S_box_axiom_definition
   :skolemid skolem_internal_test_crate__S_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!S.)
    (= x (Poly%test_crate!S. (%Poly%test_crate!S. x)))
   )
   :pattern ((has_type x TYPE%test_crate!S.))
   :qid internal_test_crate__S_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__S_unbox_axiom_definition
)))
(assert
 (forall ((x test_crate!S.)) (!
   (= (test_crate!S./S/s x) (test_crate!S./S/?s x))
   :pattern ((test_crate!S./S/s x))
   :qid internal_test_crate!S./S/s_accessor_definition
   :skolemid skolem_internal_test_crate!S./S/s_accessor_definition
)))
(assert
 (forall ((x test_crate!S.)) (!
   (has_type (Poly%test_crate!S. x) TYPE%test_crate!S.)
   :pattern ((has_type (Poly%test_crate!S. x) TYPE%test_crate!S.))
   :qid internal_test_crate__S_has_type_always_definition
   :skolemid skolem_internal_test_crate__S_has_type_always_definition
)))
(assert
 (forall ((x test_crate!S.)) (!
   (=>
    (is-test_crate!S./S x)
    (height_lt (height (Poly%vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>. (test_crate!S./S/s
        x
      ))
     ) (height (Poly%test_crate!S. x))
   ))
   :pattern ((height (Poly%vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>. (test_crate!S./S/s
       x
   ))))
   :qid prelude_datatype_height_test_crate!S./S/s
   :skolemid skolem_prelude_datatype_height_test_crate!S./S/s
)))
(assert
 (forall ((x test_crate!V.)) (!
   (= x (%Poly%test_crate!V. (Poly%test_crate!V. x)))
   :pattern ((Poly%test_crate!V. x))
   :qid internal_test_crate__V_box_axiom_definition
   :skolemid skolem_internal_test_crate__V_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!V.)
    (= x (Poly%test_crate!V. (%Poly%test_crate!V. x)))
   )
   :pattern ((has_type x TYPE%test_crate!V.))
   :qid internal_test_crate__V_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__V_unbox_axiom_definition
)))
(assert
 (forall ((x test_crate!V.)) (!
   (= (test_crate!V./V/v x) (test_crate!V./V/?v x))
   :pattern ((test_crate!V./V/v x))
   :qid internal_test_crate!V./V/v_accessor_definition
   :skolemid skolem_internal_test_crate!V./V/v_accessor_definition
)))
(assert
 (forall ((x test_crate!V.)) (!
   (has_type (Poly%test_crate!V. x) TYPE%test_crate!V.)
   :pattern ((has_type (Poly%test_crate!V. x) TYPE%test_crate!V.))
   :qid internal_test_crate__V_has_type_always_definition
   :skolemid skolem_internal_test_crate__V_has_type_always_definition
)))
(assert
 (forall ((x test_crate!V.)) (!
   (=>
    (is-test_crate!V./V x)
    (height_lt (height (Poly%alloc!vec.Vec<$%2<allocator_global%./test_crate!V.>./allocator_global%.>.
       (test_crate!V./V/v x)
      )
     ) (height (Poly%test_crate!V. x))
   ))
   :pattern ((height (Poly%alloc!vec.Vec<$%2<allocator_global%./test_crate!V.>./allocator_global%.>.
      (test_crate!V./V/v x)
   )))
   :qid prelude_datatype_height_test_crate!V./V/v
   :skolemid skolem_prelude_datatype_height_test_crate!V./V/v
)))
(assert
 (forall ((x test_crate!X.)) (!
   (= x (%Poly%test_crate!X. (Poly%test_crate!X. x)))
   :pattern ((Poly%test_crate!X. x))
   :qid internal_test_crate__X_box_axiom_definition
   :skolemid skolem_internal_test_crate__X_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!X.)
    (= x (Poly%test_crate!X. (%Poly%test_crate!X. x)))
   )
   :pattern ((has_type x TYPE%test_crate!X.))
   :qid internal_test_crate__X_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__X_unbox_axiom_definition
)))
(assert
 (forall ((x test_crate!X.)) (!
   (= (test_crate!X./X/y x) (test_crate!X./X/?y x))
   :pattern ((test_crate!X./X/y x))
   :qid internal_test_crate!X./X/y_accessor_definition
   :skolemid skolem_internal_test_crate!X./X/y_accessor_definition
)))
(assert
 (forall ((x test_crate!X.)) (!
   (has_type (Poly%test_crate!X. x) TYPE%test_crate!X.)
   :pattern ((has_type (Poly%test_crate!X. x) TYPE%test_crate!X.))
   :qid internal_test_crate__X_has_type_always_definition
   :skolemid skolem_internal_test_crate__X_has_type_always_definition
)))
(assert
 (forall ((x test_crate!X.)) (!
   (=>
    (is-test_crate!X./X x)
    (height_lt (height (Poly%vstd!seq.Seq<test_crate!X.>. (test_crate!X./X/y x))) (height
      (Poly%test_crate!X. x)
   )))
   :pattern ((height (Poly%vstd!seq.Seq<test_crate!X.>. (test_crate!X./X/y x))))
   :qid prelude_datatype_height_test_crate!X./X/y
   :skolemid skolem_prelude_datatype_height_test_crate!X./X/y
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
(declare-fun tr_bound%vstd!array.ArrayAdditionalSpecFns. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%vstd!view.View. (Dcr Type) Bool)
(declare-fun tr_bound%core!alloc.Allocator. (Dcr Type) Bool)
(declare-fun tr_bound%vstd!std_specs.vec.VecAdditionalSpecFns. (Dcr Type Dcr Type)
 Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%vstd!array.ArrayAdditionalSpecFns. Self%&. Self%& T&. T&)
    (and
     (tr_bound%vstd!view.View. Self%&. Self%&)
     (and
      (= $ (proj%%vstd!view.View./V Self%&. Self%&))
      (= (TYPE%vstd!seq.Seq. T&. T&) (proj%vstd!view.View./V Self%&. Self%&))
   )))
   :pattern ((tr_bound%vstd!array.ArrayAdditionalSpecFns. Self%&. Self%& T&. T&))
   :qid internal_vstd__array__ArrayAdditionalSpecFns_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__array__ArrayAdditionalSpecFns_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%vstd!view.View. Self%&. Self%&))
   :qid internal_vstd__view__View_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__view__View_trait_type_bounds_definition
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
   (=>
    (tr_bound%vstd!std_specs.vec.VecAdditionalSpecFns. Self%&. Self%& T&. T&)
    (and
     (tr_bound%vstd!view.View. Self%&. Self%&)
     (and
      (= $ (proj%%vstd!view.View./V Self%&. Self%&))
      (= (TYPE%vstd!seq.Seq. T&. T&) (proj%vstd!view.View./V Self%&. Self%&))
   )))
   :pattern ((tr_bound%vstd!std_specs.vec.VecAdditionalSpecFns. Self%&. Self%& T&. T&))
   :qid internal_vstd__std_specs__vec__VecAdditionalSpecFns_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__std_specs__vec__VecAdditionalSpecFns_trait_type_bounds_definition
)))

;; Associated-Type-Impls
(assert
 (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type)) (!
   (= (proj%%vstd!view.View./V $ (ARRAY T&. T& N&. N&)) $)
   :pattern ((proj%%vstd!view.View./V $ (ARRAY T&. T& N&. N&)))
   :qid internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type)) (!
   (= (proj%vstd!view.View./V $ (ARRAY T&. T& N&. N&)) (TYPE%vstd!seq.Seq. T&. T&))
   :pattern ((proj%vstd!view.View./V $ (ARRAY T&. T& N&. N&)))
   :qid internal_proj__vstd!view.View./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd!view.View./V_assoc_type_impl_false_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (= (proj%%vstd!view.View./V $ (PTR T&. T&)) $)
   :pattern ((proj%%vstd!view.View./V $ (PTR T&. T&)))
   :qid internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (= (proj%vstd!view.View./V $ (PTR T&. T&)) TYPE%vstd!raw_ptr.PtrData.)
   :pattern ((proj%vstd!view.View./V $ (PTR T&. T&)))
   :qid internal_proj__vstd!view.View./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd!view.View./V_assoc_type_impl_false_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (= (proj%%vstd!view.View./V (CONST_PTR $) (PTR T&. T&)) $)
   :pattern ((proj%%vstd!view.View./V (CONST_PTR $) (PTR T&. T&)))
   :qid internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (= (proj%vstd!view.View./V (CONST_PTR $) (PTR T&. T&)) TYPE%vstd!raw_ptr.PtrData.)
   :pattern ((proj%vstd!view.View./V (CONST_PTR $) (PTR T&. T&)))
   :qid internal_proj__vstd!view.View./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd!view.View./V_assoc_type_impl_false_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (= (proj%%vstd!view.View./V $ (SLICE T&. T&)) $)
   :pattern ((proj%%vstd!view.View./V $ (SLICE T&. T&)))
   :qid internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (= (proj%vstd!view.View./V $ (SLICE T&. T&)) (TYPE%vstd!seq.Seq. T&. T&))
   :pattern ((proj%vstd!view.View./V $ (SLICE T&. T&)))
   :qid internal_proj__vstd!view.View./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd!view.View./V_assoc_type_impl_false_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%%vstd!view.View./V (REF A&.) A&) (proj%%vstd!view.View./V A&. A&))
   :pattern ((proj%%vstd!view.View./V (REF A&.) A&))
   :qid internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%vstd!view.View./V (REF A&.) A&) (proj%vstd!view.View./V A&. A&))
   :pattern ((proj%vstd!view.View./V (REF A&.) A&))
   :qid internal_proj__vstd!view.View./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd!view.View./V_assoc_type_impl_false_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%%vstd!view.View./V (BOX $ ALLOCATOR_GLOBAL A&.) A&) (proj%%vstd!view.View./V
     A&. A&
   ))
   :pattern ((proj%%vstd!view.View./V (BOX $ ALLOCATOR_GLOBAL A&.) A&))
   :qid internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%vstd!view.View./V (BOX $ ALLOCATOR_GLOBAL A&.) A&) (proj%vstd!view.View./V
     A&. A&
   ))
   :pattern ((proj%vstd!view.View./V (BOX $ ALLOCATOR_GLOBAL A&.) A&))
   :qid internal_proj__vstd!view.View./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd!view.View./V_assoc_type_impl_false_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%%vstd!view.View./V (RC $ ALLOCATOR_GLOBAL A&.) A&) (proj%%vstd!view.View./V
     A&. A&
   ))
   :pattern ((proj%%vstd!view.View./V (RC $ ALLOCATOR_GLOBAL A&.) A&))
   :qid internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%vstd!view.View./V (RC $ ALLOCATOR_GLOBAL A&.) A&) (proj%vstd!view.View./V
     A&. A&
   ))
   :pattern ((proj%vstd!view.View./V (RC $ ALLOCATOR_GLOBAL A&.) A&))
   :qid internal_proj__vstd!view.View./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd!view.View./V_assoc_type_impl_false_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%%vstd!view.View./V (ARC $ ALLOCATOR_GLOBAL A&.) A&) (proj%%vstd!view.View./V
     A&. A&
   ))
   :pattern ((proj%%vstd!view.View./V (ARC $ ALLOCATOR_GLOBAL A&.) A&))
   :qid internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%vstd!view.View./V (ARC $ ALLOCATOR_GLOBAL A&.) A&) (proj%vstd!view.View./V
     A&. A&
   ))
   :pattern ((proj%vstd!view.View./V (ARC $ ALLOCATOR_GLOBAL A&.) A&))
   :qid internal_proj__vstd!view.View./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd!view.View./V_assoc_type_impl_false_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (A&. Dcr) (A& Type)) (!
   (= (proj%%vstd!view.View./V $ (TYPE%alloc!vec.Vec. T&. T& A&. A&)) $)
   :pattern ((proj%%vstd!view.View./V $ (TYPE%alloc!vec.Vec. T&. T& A&. A&)))
   :qid internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (A&. Dcr) (A& Type)) (!
   (= (proj%vstd!view.View./V $ (TYPE%alloc!vec.Vec. T&. T& A&. A&)) (TYPE%vstd!seq.Seq.
     T&. T&
   ))
   :pattern ((proj%vstd!view.View./V $ (TYPE%alloc!vec.Vec. T&. T& A&. A&)))
   :qid internal_proj__vstd!view.View./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd!view.View./V_assoc_type_impl_false_definition
)))
(assert
 (= (proj%%vstd!view.View./V $ TYPE%tuple%0.) $)
)
(assert
 (= (proj%vstd!view.View./V $ TYPE%tuple%0.) TYPE%tuple%0.)
)
(assert
 (= (proj%%vstd!view.View./V $ BOOL) $)
)
(assert
 (= (proj%vstd!view.View./V $ BOOL) BOOL)
)
(assert
 (= (proj%%vstd!view.View./V $ (UINT SZ)) $)
)
(assert
 (= (proj%vstd!view.View./V $ (UINT SZ)) (UINT SZ))
)

;; Function-Decl vstd::view::View::view
(declare-fun vstd!view.View.view.? (Dcr Type Poly) Poly)
(declare-fun vstd!view.View.view%default%.? (Dcr Type Poly) Poly)

;; Function-Decl vstd::seq::Seq::len
(declare-fun vstd!seq.Seq.len.? (Dcr Type Poly) Int)

;; Function-Decl vstd::array::ArrayAdditionalSpecFns::spec_index
(declare-fun vstd!array.ArrayAdditionalSpecFns.spec_index.? (Dcr Type Dcr Type Poly
  Poly
 ) Poly
)
(declare-fun vstd!array.ArrayAdditionalSpecFns.spec_index%default%.? (Dcr Type Dcr
  Type Poly Poly
 ) Poly
)

;; Function-Decl vstd::std_specs::vec::VecAdditionalSpecFns::spec_index
(declare-fun vstd!std_specs.vec.VecAdditionalSpecFns.spec_index.? (Dcr Type Dcr Type
  Poly Poly
 ) Poly
)
(declare-fun vstd!std_specs.vec.VecAdditionalSpecFns.spec_index%default%.? (Dcr Type
  Dcr Type Poly Poly
 ) Poly
)

;; Function-Decl vstd::std_specs::vec::spec_vec_len
(declare-fun vstd!std_specs.vec.spec_vec_len.? (Dcr Type Dcr Type Poly) Int)

;; Function-Decl vstd::seq::Seq::index
(declare-fun vstd!seq.Seq.index.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::seq::Seq::new
(declare-fun vstd!seq.Seq.new.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::array::array_view
(declare-fun vstd!array.array_view.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl vstd::seq::impl&%0::spec_index
(declare-fun vstd!seq.impl&%0.spec_index.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::pervasive::arbitrary
(declare-fun vstd!pervasive.arbitrary.? (Dcr Type) Poly)

;; Function-Decl vstd::raw_ptr::view_reverse_for_eq
(declare-fun vstd!raw_ptr.view_reverse_for_eq.? (Dcr Type Poly) Poly)

;; Function-Decl vstd::seq::Seq::empty
(declare-fun vstd!seq.Seq.empty.? (Dcr Type) Poly)

;; Function-Decl vstd::seq::Seq::push
(declare-fun vstd!seq.Seq.push.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::seq::Seq::subrange
(declare-fun vstd!seq.Seq.subrange.? (Dcr Type Poly Poly Poly) Poly)

;; Function-Decl vstd::pervasive::trigger
(declare-fun vstd!pervasive.trigger.? (Dcr Type Poly) Bool)

;; Function-Decl vstd::seq_lib::impl&%0::drop_last
(declare-fun vstd!seq_lib.impl&%0.drop_last.? (Dcr Type Poly) Poly)

;; Function-Decl test_crate::f
(declare-fun test_crate!f.? (Poly) Int)
(declare-fun test_crate!rec%f.? (Poly Fuel) Int)

;; Function-Decl test_crate::vs
(declare-fun test_crate!vs.? (Poly) test_crate!S.)
(declare-fun test_crate!rec%vs.? (Poly Fuel) test_crate!S.)

;; Function-Decl test_crate::sbad
(declare-fun test_crate!sbad.? (Poly) vstd!seq.Seq<bool.>.)
(declare-fun test_crate!rec%sbad.? (Poly Fuel) vstd!seq.Seq<bool.>.)

;; Function-Decl test_crate::vbad
(declare-fun test_crate!vbad.? (Poly) alloc!vec.Vec<bool./allocator_global%.>.)
(declare-fun test_crate!rec%vbad.? (Poly Fuel) alloc!vec.Vec<bool./allocator_global%.>.)

;; Function-Axioms vstd::view::View::view
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd!view.View.view.? Self%&. Self%& self!) (proj%vstd!view.View./V Self%&.
      Self%&
   )))
   :pattern ((vstd!view.View.view.? Self%&. Self%& self!))
   :qid internal_vstd!view.View.view.?_pre_post_definition
   :skolemid skolem_internal_vstd!view.View.view.?_pre_post_definition
)))

;; Function-Axioms vstd::seq::Seq::len
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd!seq.Seq. A&. A&))
    (<= 0 (vstd!seq.Seq.len.? A&. A& self!))
   )
   :pattern ((vstd!seq.Seq.len.? A&. A& self!))
   :qid internal_vstd!seq.Seq.len.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.len.?_pre_post_definition
)))

;; Function-Specs vstd::array::ArrayAdditionalSpecFns::spec_index
(declare-fun req%vstd!array.ArrayAdditionalSpecFns.spec_index. (Dcr Type Dcr Type Poly
  Poly
 ) Bool
)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly) (i! Poly)) (
   !
   (= (req%vstd!array.ArrayAdditionalSpecFns.spec_index. Self%&. Self%& T&. T& self! i!)
    (=>
     %%global_location_label%%0
     (and
      (<= 0 (%I i!))
      (< (%I i!) (vstd!seq.Seq.len.? T&. T& (vstd!view.View.view.? Self%&. Self%& self!)))
   )))
   :pattern ((req%vstd!array.ArrayAdditionalSpecFns.spec_index. Self%&. Self%& T&. T&
     self! i!
   ))
   :qid internal_req__vstd!array.ArrayAdditionalSpecFns.spec_index._definition
   :skolemid skolem_internal_req__vstd!array.ArrayAdditionalSpecFns.spec_index._definition
)))

;; Function-Axioms vstd::array::ArrayAdditionalSpecFns::spec_index
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly) (i! Poly)) (
   !
   (=>
    (and
     (has_type self! Self%&)
     (has_type i! INT)
    )
    (has_type (vstd!array.ArrayAdditionalSpecFns.spec_index.? Self%&. Self%& T&. T& self!
      i!
     ) T&
   ))
   :pattern ((vstd!array.ArrayAdditionalSpecFns.spec_index.? Self%&. Self%& T&. T& self!
     i!
   ))
   :qid internal_vstd!array.ArrayAdditionalSpecFns.spec_index.?_pre_post_definition
   :skolemid skolem_internal_vstd!array.ArrayAdditionalSpecFns.spec_index.?_pre_post_definition
)))

;; Function-Specs vstd::std_specs::vec::VecAdditionalSpecFns::spec_index
(declare-fun req%vstd!std_specs.vec.VecAdditionalSpecFns.spec_index. (Dcr Type Dcr
  Type Poly Poly
 ) Bool
)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly) (i! Poly)) (
   !
   (= (req%vstd!std_specs.vec.VecAdditionalSpecFns.spec_index. Self%&. Self%& T&. T& self!
     i!
    ) (=>
     %%global_location_label%%1
     (and
      (<= 0 (%I i!))
      (< (%I i!) (vstd!seq.Seq.len.? T&. T& (vstd!view.View.view.? Self%&. Self%& self!)))
   )))
   :pattern ((req%vstd!std_specs.vec.VecAdditionalSpecFns.spec_index. Self%&. Self%& T&.
     T& self! i!
   ))
   :qid internal_req__vstd!std_specs.vec.VecAdditionalSpecFns.spec_index._definition
   :skolemid skolem_internal_req__vstd!std_specs.vec.VecAdditionalSpecFns.spec_index._definition
)))

;; Function-Axioms vstd::std_specs::vec::VecAdditionalSpecFns::spec_index
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly) (i! Poly)) (
   !
   (=>
    (and
     (has_type self! Self%&)
     (has_type i! INT)
    )
    (has_type (vstd!std_specs.vec.VecAdditionalSpecFns.spec_index.? Self%&. Self%& T&.
      T& self! i!
     ) T&
   ))
   :pattern ((vstd!std_specs.vec.VecAdditionalSpecFns.spec_index.? Self%&. Self%& T&.
     T& self! i!
   ))
   :qid internal_vstd!std_specs.vec.VecAdditionalSpecFns.spec_index.?_pre_post_definition
   :skolemid skolem_internal_vstd!std_specs.vec.VecAdditionalSpecFns.spec_index.?_pre_post_definition
)))

;; Function-Axioms vstd::std_specs::vec::spec_vec_len
(assert
 (forall ((T&. Dcr) (T& Type) (A&. Dcr) (A& Type) (v! Poly)) (!
   (=>
    (has_type v! (TYPE%alloc!vec.Vec. T&. T& A&. A&))
    (uInv SZ (vstd!std_specs.vec.spec_vec_len.? T&. T& A&. A& v!))
   )
   :pattern ((vstd!std_specs.vec.spec_vec_len.? T&. T& A&. A& v!))
   :qid internal_vstd!std_specs.vec.spec_vec_len.?_pre_post_definition
   :skolemid skolem_internal_vstd!std_specs.vec.spec_vec_len.?_pre_post_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!alloc.Allocator. $ ALLOCATOR_GLOBAL)
)

;; Broadcast vstd::std_specs::vec::axiom_spec_len
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.vec.axiom_spec_len.)
  (forall ((A&. Dcr) (A& Type) (v! Poly)) (!
    (=>
     (has_type v! (TYPE%alloc!vec.Vec. A&. A& $ ALLOCATOR_GLOBAL))
     (= (vstd!std_specs.vec.spec_vec_len.? A&. A& $ ALLOCATOR_GLOBAL v!) (vstd!seq.Seq.len.?
       A&. A& (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. A&. A& $ ALLOCATOR_GLOBAL) v!)
    )))
    :pattern ((vstd!std_specs.vec.spec_vec_len.? A&. A& $ ALLOCATOR_GLOBAL v!))
    :qid user_vstd__std_specs__vec__axiom_spec_len_0
    :skolemid skolem_user_vstd__std_specs__vec__axiom_spec_len_0
))))

;; Function-Specs vstd::seq::Seq::index
(declare-fun req%vstd!seq.Seq.index. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
   (= (req%vstd!seq.Seq.index. A&. A& self! i!) (=>
     %%global_location_label%%2
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
     (has_type self! (TYPE%vstd!seq.Seq. A&. A&))
     (has_type i! INT)
    )
    (has_type (vstd!seq.Seq.index.? A&. A& self! i!) A&)
   )
   :pattern ((vstd!seq.Seq.index.? A&. A& self! i!))
   :qid internal_vstd!seq.Seq.index.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.index.?_pre_post_definition
)))

;; Function-Axioms vstd::std_specs::vec::impl&%0::spec_index
(assert
 (fuel_bool_default fuel%vstd!std_specs.vec.impl&%0.spec_index.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.vec.impl&%0.spec_index.)
  (forall ((T&. Dcr) (T& Type) (A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
    (=>
     (tr_bound%core!alloc.Allocator. A&. A&)
     (= (vstd!std_specs.vec.VecAdditionalSpecFns.spec_index.? $ (TYPE%alloc!vec.Vec. T&.
        T& A&. A&
       ) T&. T& self! i!
      ) (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. T&. T&
         A&. A&
        ) self!
       ) i!
    )))
    :pattern ((vstd!std_specs.vec.VecAdditionalSpecFns.spec_index.? $ (TYPE%alloc!vec.Vec.
       T&. T& A&. A&
      ) T&. T& self! i!
    ))
    :qid internal_vstd!std_specs.vec.VecAdditionalSpecFns.spec_index.?_definition
    :skolemid skolem_internal_vstd!std_specs.vec.VecAdditionalSpecFns.spec_index.?_definition
))))

;; Broadcast vstd::std_specs::vec::axiom_vec_index_decreases
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.vec.axiom_vec_index_decreases.)
  (forall ((A&. Dcr) (A& Type) (v! Poly) (i! Poly)) (!
    (=>
     (and
      (has_type v! (TYPE%alloc!vec.Vec. A&. A& $ ALLOCATOR_GLOBAL))
      (has_type i! INT)
     )
     (=>
      (and
       (<= 0 (%I i!))
       (< (%I i!) (vstd!std_specs.vec.spec_vec_len.? A&. A& $ ALLOCATOR_GLOBAL v!))
      )
      (height_lt (height (vstd!seq.Seq.index.? A&. A& (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
           A&. A& $ ALLOCATOR_GLOBAL
          ) v!
         ) i!
        )
       ) (height v!)
    )))
    :pattern ((height (vstd!seq.Seq.index.? A&. A& (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
         A&. A& $ ALLOCATOR_GLOBAL
        ) v!
       ) i!
    )))
    :qid user_vstd__std_specs__vec__axiom_vec_index_decreases_1
    :skolemid skolem_user_vstd__std_specs__vec__axiom_vec_index_decreases_1
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
    (has_type (vstd!seq.Seq.new.? A&. A& impl%1&. impl%1& len! f!) (TYPE%vstd!seq.Seq.
      A&. A&
   )))
   :pattern ((vstd!seq.Seq.new.? A&. A& impl%1&. impl%1& len! f!))
   :qid internal_vstd!seq.Seq.new.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.new.?_pre_post_definition
)))

;; Function-Axioms vstd::array::array_view
(assert
 (fuel_bool_default fuel%vstd!array.array_view.)
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
  (fuel_bool fuel%vstd!array.array_view.)
  (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type) (a! Poly)) (!
    (= (vstd!array.array_view.? T&. T& N&. N& a!) (vstd!seq.Seq.new.? T&. T& $ (TYPE%fun%1.
       $ INT T&. T&
      ) (I (const_int N&)) (Poly%fun%1. (mk_fun (%%lambda%%0 T&. T& N&. N& (%Poly%array%. a!))))
    ))
    :pattern ((vstd!array.array_view.? T&. T& N&. N& a!))
    :qid internal_vstd!array.array_view.?_definition
    :skolemid skolem_internal_vstd!array.array_view.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type) (a! Poly)) (!
   (=>
    (has_type a! (ARRAY T&. T& N&. N&))
    (has_type (vstd!array.array_view.? T&. T& N&. N& a!) (TYPE%vstd!seq.Seq. T&. T&))
   )
   :pattern ((vstd!array.array_view.? T&. T& N&. N& a!))
   :qid internal_vstd!array.array_view.?_pre_post_definition
   :skolemid skolem_internal_vstd!array.array_view.?_pre_post_definition
)))

;; Function-Axioms vstd::array::impl&%0::view
(assert
 (fuel_bool_default fuel%vstd!array.impl&%0.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!array.impl&%0.view.)
  (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type) (self! Poly)) (!
    (=>
     (uInv SZ (const_int N&))
     (= (vstd!view.View.view.? $ (ARRAY T&. T& N&. N&) self!) (vstd!array.array_view.? T&.
       T& N&. N& self!
    )))
    :pattern ((vstd!view.View.view.? $ (ARRAY T&. T& N&. N&) self!))
    :qid internal_vstd!view.View.view.?_definition
    :skolemid skolem_internal_vstd!view.View.view.?_definition
))))

;; Function-Axioms vstd::array::impl&%2::spec_index
(assert
 (fuel_bool_default fuel%vstd!array.impl&%2.spec_index.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!array.impl&%2.spec_index.)
  (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type) (self! Poly) (i! Poly)) (!
    (=>
     (uInv SZ (const_int N&))
     (= (vstd!array.ArrayAdditionalSpecFns.spec_index.? $ (ARRAY T&. T& N&. N&) T&. T& self!
       i!
      ) (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (ARRAY T&. T& N&. N&) self!)
       i!
    )))
    :pattern ((vstd!array.ArrayAdditionalSpecFns.spec_index.? $ (ARRAY T&. T& N&. N&) T&.
      T& self! i!
    ))
    :qid internal_vstd!array.ArrayAdditionalSpecFns.spec_index.?_definition
    :skolemid skolem_internal_vstd!array.ArrayAdditionalSpecFns.spec_index.?_definition
))))

;; Function-Specs vstd::seq::impl&%0::spec_index
(declare-fun req%vstd!seq.impl&%0.spec_index. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
   (= (req%vstd!seq.impl&%0.spec_index. A&. A& self! i!) (=>
     %%global_location_label%%3
     (and
      (<= 0 (%I i!))
      (< (%I i!) (vstd!seq.Seq.len.? A&. A& self!))
   )))
   :pattern ((req%vstd!seq.impl&%0.spec_index. A&. A& self! i!))
   :qid internal_req__vstd!seq.impl&__0.spec_index._definition
   :skolemid skolem_internal_req__vstd!seq.impl&__0.spec_index._definition
)))

;; Function-Axioms vstd::seq::impl&%0::spec_index
(assert
 (fuel_bool_default fuel%vstd!seq.impl&%0.spec_index.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!seq.impl&%0.spec_index.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
    (= (vstd!seq.impl&%0.spec_index.? A&. A& self! i!) (vstd!seq.Seq.index.? A&. A& self!
      i!
    ))
    :pattern ((vstd!seq.impl&%0.spec_index.? A&. A& self! i!))
    :qid internal_vstd!seq.impl&__0.spec_index.?_definition
    :skolemid skolem_internal_vstd!seq.impl&__0.spec_index.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd!seq.Seq. A&. A&))
     (has_type i! INT)
    )
    (has_type (vstd!seq.impl&%0.spec_index.? A&. A& self! i!) A&)
   )
   :pattern ((vstd!seq.impl&%0.spec_index.? A&. A& self! i!))
   :qid internal_vstd!seq.impl&__0.spec_index.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.impl&__0.spec_index.?_pre_post_definition
)))

;; Broadcast vstd::array::lemma_array_index
(assert
 (=>
  (fuel_bool fuel%vstd!array.lemma_array_index.)
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
      (= (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (ARRAY T&. T& N&. N&) a!)
        i!
       ) (vstd!seq.Seq.index.? T&. T& (vstd!array.array_view.? T&. T& N&. N& a!) i!)
    )))
    :pattern ((array_index T&. T& N&. N& (%Poly%array%. a!) i!))
    :qid user_vstd__array__lemma_array_index_2
    :skolemid skolem_user_vstd__array__lemma_array_index_2
))))

;; Broadcast vstd::array::array_len_matches_n
(assert
 (=>
  (fuel_bool fuel%vstd!array.array_len_matches_n.)
  (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type) (ar! Poly)) (!
    (=>
     (has_type ar! (ARRAY T&. T& N&. N&))
     (=>
      (uInv SZ (const_int N&))
      (= (vstd!seq.Seq.len.? T&. T& (vstd!view.View.view.? $ (ARRAY T&. T& N&. N&) ar!))
       (const_int N&)
    )))
    :pattern ((vstd!seq.Seq.len.? T&. T& (vstd!view.View.view.? $ (ARRAY T&. T& N&. N&)
       ar!
    )))
    :qid user_vstd__array__array_len_matches_n_3
    :skolemid skolem_user_vstd__array__array_len_matches_n_3
))))

;; Function-Axioms vstd::pervasive::arbitrary
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (has_type (vstd!pervasive.arbitrary.? A&. A&) A&)
   :pattern ((vstd!pervasive.arbitrary.? A&. A&))
   :qid internal_vstd!pervasive.arbitrary.?_pre_post_definition
   :skolemid skolem_internal_vstd!pervasive.arbitrary.?_pre_post_definition
)))

;; Function-Axioms vstd::raw_ptr::view_reverse_for_eq
(assert
 (forall ((T&. Dcr) (T& Type) (data! Poly)) (!
   (=>
    (has_type data! TYPE%vstd!raw_ptr.PtrData.)
    (has_type (vstd!raw_ptr.view_reverse_for_eq.? T&. T& data!) (PTR T&. T&))
   )
   :pattern ((vstd!raw_ptr.view_reverse_for_eq.? T&. T& data!))
   :qid internal_vstd!raw_ptr.view_reverse_for_eq.?_pre_post_definition
   :skolemid skolem_internal_vstd!raw_ptr.view_reverse_for_eq.?_pre_post_definition
)))

;; Broadcast vstd::raw_ptr::ptrs_mut_eq
(assert
 (=>
  (fuel_bool fuel%vstd!raw_ptr.ptrs_mut_eq.)
  (forall ((T&. Dcr) (T& Type) (a! Poly)) (!
    (=>
     (has_type a! (PTR T&. T&))
     (= (vstd!raw_ptr.view_reverse_for_eq.? T&. T& (vstd!view.View.view.? $ (PTR T&. T&)
        a!
       )
      ) a!
    ))
    :pattern ((vstd!view.View.view.? $ (PTR T&. T&) a!))
    :qid user_vstd__raw_ptr__ptrs_mut_eq_4
    :skolemid skolem_user_vstd__raw_ptr__ptrs_mut_eq_4
))))

;; Function-Axioms vstd::seq::Seq::empty
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (has_type (vstd!seq.Seq.empty.? A&. A&) (TYPE%vstd!seq.Seq. A&. A&))
   :pattern ((vstd!seq.Seq.empty.? A&. A&))
   :qid internal_vstd!seq.Seq.empty.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.empty.?_pre_post_definition
)))

;; Function-Axioms vstd::seq::Seq::push
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (a! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd!seq.Seq. A&. A&))
     (has_type a! A&)
    )
    (has_type (vstd!seq.Seq.push.? A&. A& self! a!) (TYPE%vstd!seq.Seq. A&. A&))
   )
   :pattern ((vstd!seq.Seq.push.? A&. A& self! a!))
   :qid internal_vstd!seq.Seq.push.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.push.?_pre_post_definition
)))

;; Function-Specs vstd::seq::Seq::subrange
(declare-fun req%vstd!seq.Seq.subrange. (Dcr Type Poly Poly Poly) Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (start_inclusive! Poly) (end_exclusive! Poly))
  (!
   (= (req%vstd!seq.Seq.subrange. A&. A& self! start_inclusive! end_exclusive!) (=>
     %%global_location_label%%4
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
     (has_type self! (TYPE%vstd!seq.Seq. A&. A&))
     (has_type start_inclusive! INT)
     (has_type end_exclusive! INT)
    )
    (has_type (vstd!seq.Seq.subrange.? A&. A& self! start_inclusive! end_exclusive!) (
      TYPE%vstd!seq.Seq. A&. A&
   )))
   :pattern ((vstd!seq.Seq.subrange.? A&. A& self! start_inclusive! end_exclusive!))
   :qid internal_vstd!seq.Seq.subrange.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.subrange.?_pre_post_definition
)))

;; Broadcast vstd::seq::axiom_seq_index_decreases
(assert
 (=>
  (fuel_bool fuel%vstd!seq.axiom_seq_index_decreases.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (i! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd!seq.Seq. A&. A&))
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
    :qid user_vstd__seq__axiom_seq_index_decreases_5
    :skolemid skolem_user_vstd__seq__axiom_seq_index_decreases_5
))))

;; Function-Axioms vstd::pervasive::trigger
(assert
 (fuel_bool_default fuel%vstd!pervasive.trigger.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!pervasive.trigger.)
  (forall ((A&. Dcr) (A& Type) (a! Poly)) (!
    (= (vstd!pervasive.trigger.? A&. A& a!) true)
    :pattern ((vstd!pervasive.trigger.? A&. A& a!))
    :qid internal_vstd!pervasive.trigger.?_definition
    :skolemid skolem_internal_vstd!pervasive.trigger.?_definition
))))

;; Function-Specs vstd::seq::axiom_seq_len_decreases
(declare-fun req%vstd!seq.axiom_seq_len_decreases. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%5 Bool)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
   (= (req%vstd!seq.axiom_seq_len_decreases. A&. A& s1! s2!) (and
     (=>
      %%global_location_label%%5
      (< (vstd!seq.Seq.len.? A&. A& s2!) (vstd!seq.Seq.len.? A&. A& s1!))
     )
     (=>
      %%global_location_label%%6
      (forall ((i2$ Poly)) (!
        (=>
         (has_type i2$ INT)
         (=>
          (and
           (and
            (<= 0 (%I i2$))
            (< (%I i2$) (vstd!seq.Seq.len.? A&. A& s2!))
           )
           (vstd!pervasive.trigger.? A&. A& (vstd!seq.Seq.index.? A&. A& s2! i2$))
          )
          (exists ((i1$ Poly)) (!
            (and
             (has_type i1$ INT)
             (and
              (and
               (<= 0 (%I i1$))
               (< (%I i1$) (vstd!seq.Seq.len.? A&. A& s1!))
              )
              (= (vstd!seq.Seq.index.? A&. A& s1! i1$) (vstd!seq.Seq.index.? A&. A& s2! i2$))
            ))
            :pattern ((vstd!seq.Seq.index.? A&. A& s1! i1$))
            :qid user_vstd__seq__axiom_seq_len_decreases_6
            :skolemid skolem_user_vstd__seq__axiom_seq_len_decreases_6
        ))))
        :pattern ((vstd!pervasive.trigger.? A&. A& (vstd!seq.Seq.index.? A&. A& s2! i2$)))
        :qid user_vstd__seq__axiom_seq_len_decreases_7
        :skolemid skolem_user_vstd__seq__axiom_seq_len_decreases_7
   )))))
   :pattern ((req%vstd!seq.axiom_seq_len_decreases. A&. A& s1! s2!))
   :qid internal_req__vstd!seq.axiom_seq_len_decreases._definition
   :skolemid skolem_internal_req__vstd!seq.axiom_seq_len_decreases._definition
)))
(declare-fun ens%vstd!seq.axiom_seq_len_decreases. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
   (= (ens%vstd!seq.axiom_seq_len_decreases. A&. A& s1! s2!) (height_lt (height s2!) (
      height s1!
   )))
   :pattern ((ens%vstd!seq.axiom_seq_len_decreases. A&. A& s1! s2!))
   :qid internal_ens__vstd!seq.axiom_seq_len_decreases._definition
   :skolemid skolem_internal_ens__vstd!seq.axiom_seq_len_decreases._definition
)))

;; Broadcast vstd::seq::axiom_seq_subrange_decreases
(assert
 (=>
  (fuel_bool fuel%vstd!seq.axiom_seq_subrange_decreases.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (i! Poly) (j! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd!seq.Seq. A&. A&))
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
    :qid user_vstd__seq__axiom_seq_subrange_decreases_8
    :skolemid skolem_user_vstd__seq__axiom_seq_subrange_decreases_8
))))

;; Broadcast vstd::seq::axiom_seq_empty
(assert
 (=>
  (fuel_bool fuel%vstd!seq.axiom_seq_empty.)
  (forall ((A&. Dcr) (A& Type)) (!
    (= (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.empty.? A&. A&)) 0)
    :pattern ((vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.empty.? A&. A&)))
    :qid user_vstd__seq__axiom_seq_empty_9
    :skolemid skolem_user_vstd__seq__axiom_seq_empty_9
))))

;; Broadcast vstd::seq::axiom_seq_new_len
(assert
 (=>
  (fuel_bool fuel%vstd!seq.axiom_seq_new_len.)
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
    :qid user_vstd__seq__axiom_seq_new_len_10
    :skolemid skolem_user_vstd__seq__axiom_seq_new_len_10
))))

;; Broadcast vstd::seq::axiom_seq_new_index
(assert
 (=>
  (fuel_bool fuel%vstd!seq.axiom_seq_new_index.)
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
    :qid user_vstd__seq__axiom_seq_new_index_11
    :skolemid skolem_user_vstd__seq__axiom_seq_new_index_11
))))

;; Broadcast vstd::seq::axiom_seq_push_len
(assert
 (=>
  (fuel_bool fuel%vstd!seq.axiom_seq_push_len.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd!seq.Seq. A&. A&))
      (has_type a! A&)
     )
     (= (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.push.? A&. A& s! a!)) (nClip (Add (vstd!seq.Seq.len.?
         A&. A& s!
        ) 1
    ))))
    :pattern ((vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.push.? A&. A& s! a!)))
    :qid user_vstd__seq__axiom_seq_push_len_12
    :skolemid skolem_user_vstd__seq__axiom_seq_push_len_12
))))

;; Broadcast vstd::seq::axiom_seq_push_index_same
(assert
 (=>
  (fuel_bool fuel%vstd!seq.axiom_seq_push_index_same.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly) (i! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd!seq.Seq. A&. A&))
      (has_type a! A&)
      (has_type i! INT)
     )
     (=>
      (= (%I i!) (vstd!seq.Seq.len.? A&. A& s!))
      (= (vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.push.? A&. A& s! a!) i!) a!)
    ))
    :pattern ((vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.push.? A&. A& s! a!) i!))
    :qid user_vstd__seq__axiom_seq_push_index_same_13
    :skolemid skolem_user_vstd__seq__axiom_seq_push_index_same_13
))))

;; Broadcast vstd::seq::axiom_seq_push_index_different
(assert
 (=>
  (fuel_bool fuel%vstd!seq.axiom_seq_push_index_different.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly) (i! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd!seq.Seq. A&. A&))
      (has_type a! A&)
      (has_type i! INT)
     )
     (=>
      (and
       (<= 0 (%I i!))
       (< (%I i!) (vstd!seq.Seq.len.? A&. A& s!))
      )
      (= (vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.push.? A&. A& s! a!) i!) (vstd!seq.Seq.index.?
        A&. A& s! i!
    ))))
    :pattern ((vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.push.? A&. A& s! a!) i!))
    :qid user_vstd__seq__axiom_seq_push_index_different_14
    :skolemid skolem_user_vstd__seq__axiom_seq_push_index_different_14
))))

;; Broadcast vstd::seq::axiom_seq_ext_equal
(assert
 (=>
  (fuel_bool fuel%vstd!seq.axiom_seq_ext_equal.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd!seq.Seq. A&. A&))
      (has_type s2! (TYPE%vstd!seq.Seq. A&. A&))
     )
     (= (ext_eq false (TYPE%vstd!seq.Seq. A&. A&) s1! s2!) (and
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
         :qid user_vstd__seq__axiom_seq_ext_equal_15
         :skolemid skolem_user_vstd__seq__axiom_seq_ext_equal_15
    )))))
    :pattern ((ext_eq false (TYPE%vstd!seq.Seq. A&. A&) s1! s2!))
    :qid user_vstd__seq__axiom_seq_ext_equal_16
    :skolemid skolem_user_vstd__seq__axiom_seq_ext_equal_16
))))

;; Broadcast vstd::seq::axiom_seq_ext_equal_deep
(assert
 (=>
  (fuel_bool fuel%vstd!seq.axiom_seq_ext_equal_deep.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd!seq.Seq. A&. A&))
      (has_type s2! (TYPE%vstd!seq.Seq. A&. A&))
     )
     (= (ext_eq true (TYPE%vstd!seq.Seq. A&. A&) s1! s2!) (and
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
         :qid user_vstd__seq__axiom_seq_ext_equal_deep_17
         :skolemid skolem_user_vstd__seq__axiom_seq_ext_equal_deep_17
    )))))
    :pattern ((ext_eq true (TYPE%vstd!seq.Seq. A&. A&) s1! s2!))
    :qid user_vstd__seq__axiom_seq_ext_equal_deep_18
    :skolemid skolem_user_vstd__seq__axiom_seq_ext_equal_deep_18
))))

;; Broadcast vstd::seq::axiom_seq_subrange_len
(assert
 (=>
  (fuel_bool fuel%vstd!seq.axiom_seq_subrange_len.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (j! Poly) (k! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd!seq.Seq. A&. A&))
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
    :qid user_vstd__seq__axiom_seq_subrange_len_19
    :skolemid skolem_user_vstd__seq__axiom_seq_subrange_len_19
))))

;; Broadcast vstd::seq::axiom_seq_subrange_index
(assert
 (=>
  (fuel_bool fuel%vstd!seq.axiom_seq_subrange_index.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (j! Poly) (k! Poly) (i! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd!seq.Seq. A&. A&))
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
    :qid user_vstd__seq__axiom_seq_subrange_index_20
    :skolemid skolem_user_vstd__seq__axiom_seq_subrange_index_20
))))

;; Function-Axioms vstd::raw_ptr::impl&%4::view
(assert
 (fuel_bool_default fuel%vstd!raw_ptr.impl&%4.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!raw_ptr.impl&%4.view.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd!view.View.view.? (CONST_PTR $) (PTR T&. T&) self!) (vstd!view.View.view.?
      $ (PTR T&. T&) self!
    ))
    :pattern ((vstd!view.View.view.? (CONST_PTR $) (PTR T&. T&) self!))
    :qid internal_vstd!view.View.view.?_definition
    :skolemid skolem_internal_vstd!view.View.view.?_definition
))))

;; Function-Specs vstd::seq_lib::impl&%0::drop_last
(declare-fun req%vstd!seq_lib.impl&%0.drop_last. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%7 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (req%vstd!seq_lib.impl&%0.drop_last. A&. A& self!) (=>
     %%global_location_label%%7
     (>= (vstd!seq.Seq.len.? A&. A& self!) 1)
   ))
   :pattern ((req%vstd!seq_lib.impl&%0.drop_last. A&. A& self!))
   :qid internal_req__vstd!seq_lib.impl&__0.drop_last._definition
   :skolemid skolem_internal_req__vstd!seq_lib.impl&__0.drop_last._definition
)))

;; Function-Axioms vstd::seq_lib::impl&%0::drop_last
(assert
 (fuel_bool_default fuel%vstd!seq_lib.impl&%0.drop_last.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!seq_lib.impl&%0.drop_last.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (= (vstd!seq_lib.impl&%0.drop_last.? A&. A& self!) (vstd!seq.Seq.subrange.? A&. A&
      self! (I 0) (I (Sub (vstd!seq.Seq.len.? A&. A& self!) 1))
    ))
    :pattern ((vstd!seq_lib.impl&%0.drop_last.? A&. A& self!))
    :qid internal_vstd!seq_lib.impl&__0.drop_last.?_definition
    :skolemid skolem_internal_vstd!seq_lib.impl&__0.drop_last.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd!seq.Seq. A&. A&))
    (has_type (vstd!seq_lib.impl&%0.drop_last.? A&. A& self!) (TYPE%vstd!seq.Seq. A&. A&))
   )
   :pattern ((vstd!seq_lib.impl&%0.drop_last.? A&. A& self!))
   :qid internal_vstd!seq_lib.impl&__0.drop_last.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq_lib.impl&__0.drop_last.?_pre_post_definition
)))

;; Function-Axioms vstd::view::impl&%0::view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%0.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%0.view.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (=>
     (tr_bound%vstd!view.View. A&. A&)
     (= (vstd!view.View.view.? (REF A&.) A& self!) (vstd!view.View.view.? A&. A& self!))
    )
    :pattern ((vstd!view.View.view.? (REF A&.) A& self!))
    :qid internal_vstd!view.View.view.?_definition
    :skolemid skolem_internal_vstd!view.View.view.?_definition
))))

;; Function-Axioms vstd::view::impl&%2::view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%2.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%2.view.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (=>
     (tr_bound%vstd!view.View. A&. A&)
     (= (vstd!view.View.view.? (BOX $ ALLOCATOR_GLOBAL A&.) A& self!) (vstd!view.View.view.?
       A&. A& self!
    )))
    :pattern ((vstd!view.View.view.? (BOX $ ALLOCATOR_GLOBAL A&.) A& self!))
    :qid internal_vstd!view.View.view.?_definition
    :skolemid skolem_internal_vstd!view.View.view.?_definition
))))

;; Function-Axioms vstd::view::impl&%4::view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%4.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%4.view.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (=>
     (tr_bound%vstd!view.View. A&. A&)
     (= (vstd!view.View.view.? (RC $ ALLOCATOR_GLOBAL A&.) A& self!) (vstd!view.View.view.?
       A&. A& self!
    )))
    :pattern ((vstd!view.View.view.? (RC $ ALLOCATOR_GLOBAL A&.) A& self!))
    :qid internal_vstd!view.View.view.?_definition
    :skolemid skolem_internal_vstd!view.View.view.?_definition
))))

;; Function-Axioms vstd::view::impl&%6::view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%6.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%6.view.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (=>
     (tr_bound%vstd!view.View. A&. A&)
     (= (vstd!view.View.view.? (ARC $ ALLOCATOR_GLOBAL A&.) A& self!) (vstd!view.View.view.?
       A&. A& self!
    )))
    :pattern ((vstd!view.View.view.? (ARC $ ALLOCATOR_GLOBAL A&.) A& self!))
    :qid internal_vstd!view.View.view.?_definition
    :skolemid skolem_internal_vstd!view.View.view.?_definition
))))

;; Function-Axioms vstd::view::impl&%10::view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%10.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%10.view.)
  (forall ((self! Poly)) (!
    (= (vstd!view.View.view.? $ TYPE%tuple%0. self!) self!)
    :pattern ((vstd!view.View.view.? $ TYPE%tuple%0. self!))
    :qid internal_vstd!view.View.view.?_definition
    :skolemid skolem_internal_vstd!view.View.view.?_definition
))))

;; Function-Axioms vstd::view::impl&%12::view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%12.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%12.view.)
  (forall ((self! Poly)) (!
    (= (vstd!view.View.view.? $ BOOL self!) self!)
    :pattern ((vstd!view.View.view.? $ BOOL self!))
    :qid internal_vstd!view.View.view.?_definition
    :skolemid skolem_internal_vstd!view.View.view.?_definition
))))

;; Function-Axioms vstd::view::impl&%24::view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%24.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%24.view.)
  (forall ((self! Poly)) (!
    (= (vstd!view.View.view.? $ (UINT SZ) self!) self!)
    :pattern ((vstd!view.View.view.? $ (UINT SZ) self!))
    :qid internal_vstd!view.View.view.?_definition
    :skolemid skolem_internal_vstd!view.View.view.?_definition
))))

;; Spec-Termination test_crate::f
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/recursion-323c2b72cefe3aab-lemma_decreases_vec_seq_len/test.rs:24:6: 24:33 (#0)
(get-info :all-statistics)
(push)
 (declare-const s! Poly)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Poly)
 (declare-const tmp%3 Int)
 (declare-const tmp%4 Poly)
 (declare-const tmp%5 Int)
 (declare-const tmp%6 Int)
 (declare-const decrease%init0 vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd!seq.Seq. (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!S.))
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= decrease%init0 (%Poly%vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>. s!))
    (or
     (and
      (=>
       (= (vstd!seq.Seq.len.? (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!S. s!) 0)
       (=>
        (= tmp%6 0)
        %%switch_label%%0
      ))
      (=>
       (not (= (vstd!seq.Seq.len.? (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!S. s!) 0))
       (or
        (and
         (=>
          (= (vstd!seq.Seq.len.? (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!S. s!) 1)
          (=>
           (= tmp%2 (Poly%vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>. (test_crate!S./S/s
              (%Poly%test_crate!S. (vstd!seq.Seq.index.? (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!S.
                s! (I 0)
           )))))
           (and
            (=>
             %%location_label%%0
             (check_decrease_height (Poly%vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>.
               (let
                ((s!$0 (%Poly%vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>. tmp%2)))
                s!$0
               )
              ) (Poly%vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>. decrease%init0) false
            ))
            (=>
             (= tmp%1 (test_crate!f.? (Poly%vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>.
                (test_crate!S./S/s (%Poly%test_crate!S. (vstd!seq.Seq.index.? (BOX $ ALLOCATOR_GLOBAL
                    $
                   ) TYPE%test_crate!S. s! (I 0)
             ))))))
             (=>
              (= tmp%5 tmp%1)
              %%switch_label%%1
         )))))
         (=>
          (not (= (vstd!seq.Seq.len.? (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!S. s!) 1))
          (=>
           (= tmp%4 (vstd!seq_lib.impl&%0.drop_last.? (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!S.
             s!
           ))
           (and
            (=>
             %%location_label%%1
             (check_decrease_height (Poly%vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>.
               (let
                ((s!$0 (%Poly%vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>. tmp%4)))
                s!$0
               )
              ) (Poly%vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>. decrease%init0) false
            ))
            (=>
             (= tmp%3 (test_crate!f.? (vstd!seq_lib.impl&%0.drop_last.? (BOX $ ALLOCATOR_GLOBAL $)
                TYPE%test_crate!S. s!
             )))
             (=>
              (= tmp%5 tmp%3)
              %%switch_label%%1
        ))))))
        (and
         (not %%switch_label%%1)
         (=>
          (= tmp%6 tmp%5)
          %%switch_label%%0
     )))))
     (not %%switch_label%%0)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Axioms test_crate::f
(assert
 (fuel_bool_default fuel%test_crate!f.)
)
(declare-const fuel_nat%test_crate!f. Fuel)
(assert
 (forall ((s! Poly) (fuel% Fuel)) (!
   (= (test_crate!rec%f.? s! fuel%) (test_crate!rec%f.? s! zero))
   :pattern ((test_crate!rec%f.? s! fuel%))
   :qid internal_test_crate!f._fuel_to_zero_definition
   :skolemid skolem_internal_test_crate!f._fuel_to_zero_definition
)))
(assert
 (forall ((s! Poly) (fuel% Fuel)) (!
   (=>
    (has_type s! (TYPE%vstd!seq.Seq. (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!S.))
    (= (test_crate!rec%f.? s! (succ fuel%)) (ite
      (= (vstd!seq.Seq.len.? (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!S. s!) 0)
      0
      (ite
       (= (vstd!seq.Seq.len.? (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!S. s!) 1)
       (test_crate!rec%f.? (Poly%vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>. (test_crate!S./S/s
          (%Poly%test_crate!S. (vstd!seq.Seq.index.? (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!S.
            s! (I 0)
         )))
        ) fuel%
       )
       (test_crate!rec%f.? (vstd!seq_lib.impl&%0.drop_last.? (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!S.
         s!
        ) fuel%
   )))))
   :pattern ((test_crate!rec%f.? s! (succ fuel%)))
   :qid internal_test_crate!f._fuel_to_body_definition
   :skolemid skolem_internal_test_crate!f._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%test_crate!f.)
  (forall ((s! Poly)) (!
    (=>
     (has_type s! (TYPE%vstd!seq.Seq. (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!S.))
     (= (test_crate!f.? s!) (test_crate!rec%f.? s! (succ fuel_nat%test_crate!f.)))
    )
    :pattern ((test_crate!f.? s!))
    :qid internal_test_crate!f.?_definition
    :skolemid skolem_internal_test_crate!f.?_definition
))))

;; Spec-Termination test_crate::vs
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/recursion-323c2b72cefe3aab-lemma_decreases_vec_seq_len/test.rs:36:6: 36:22 (#0)
(get-info :all-statistics)
(push)
 (declare-const v! Poly)
 (declare-const i@ Poly)
 (declare-const tmp%1 test_crate!S.)
 (declare-const tmp%2 Poly)
 (declare-const tmp%3 test_crate!S.)
 (declare-const s@ vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>.)
 (declare-const decrease%init0 test_crate!V.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type v! TYPE%test_crate!V.)
 )
 (declare-fun %%lambda%%1 (Int Int Dcr Type Poly test_crate!S.) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Dcr) (%%hole%%3 Type) (%%hole%%4
     Poly
    ) (%%hole%%5 test_crate!S.) (i$ Poly)
   ) (!
    (= (%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5)
      i$
     ) (Poly%test_crate!S. (ite
       (and
        (<= %%hole%%0 (%I i$))
        (< (%I i$) %%hole%%1)
       )
       (test_crate!vs.? (vstd!seq.Seq.index.? %%hole%%2 %%hole%%3 %%hole%%4 i$))
       %%hole%%5
    )))
    :pattern ((%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
       %%hole%%5
      ) i$
 )))))
 (declare-const %%switch_label%%0 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= decrease%init0 (%Poly%test_crate!V. v!))
    (=>
     (has_type i@ INT)
     (or
      (and
       (=>
        (and
         (<= 0 (%I i@))
         (< (%I i@) (vstd!std_specs.vec.spec_vec_len.? (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!V.
           $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<$%2<allocator_global%./test_crate!V.>./allocator_global%.>.
            (test_crate!V./V/v (%Poly%test_crate!V. v!))
        ))))
        (=>
         (= tmp%2 (vstd!seq.Seq.index.? (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!V. (vstd!view.View.view.?
            $ (TYPE%alloc!vec.Vec. (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!V. $ ALLOCATOR_GLOBAL)
            (Poly%alloc!vec.Vec<$%2<allocator_global%./test_crate!V.>./allocator_global%.>. (test_crate!V./V/v
              (%Poly%test_crate!V. v!)
            ))
           ) i@
         ))
         (and
          (=>
           %%location_label%%0
           (check_decrease_height (Poly%test_crate!V. (let
              ((v!$0 (%Poly%test_crate!V. tmp%2)))
              v!$0
             )
            ) (Poly%test_crate!V. decrease%init0) false
          ))
          (=>
           (= tmp%1 (test_crate!vs.? (vstd!seq.Seq.index.? (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!V.
              (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!V.
                $ ALLOCATOR_GLOBAL
               ) (Poly%alloc!vec.Vec<$%2<allocator_global%./test_crate!V.>./allocator_global%.>.
                (test_crate!V./V/v (%Poly%test_crate!V. v!))
               )
              ) i@
           )))
           (=>
            (= tmp%3 tmp%1)
            %%switch_label%%0
       )))))
       (=>
        (not (and
          (<= 0 (%I i@))
          (< (%I i@) (vstd!std_specs.vec.spec_vec_len.? (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!V.
            $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<$%2<allocator_global%./test_crate!V.>./allocator_global%.>.
             (test_crate!V./V/v (%Poly%test_crate!V. v!))
        )))))
        (=>
         (= tmp%3 (%Poly%test_crate!S. (vstd!pervasive.arbitrary.? (BOX $ ALLOCATOR_GLOBAL $)
            TYPE%test_crate!S.
         )))
         %%switch_label%%0
      )))
      (not %%switch_label%%0)
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Axioms test_crate::vs
(assert
 (fuel_bool_default fuel%test_crate!vs.)
)
(declare-const fuel_nat%test_crate!vs. Fuel)
(assert
 (forall ((v! Poly) (fuel% Fuel)) (!
   (= (test_crate!rec%vs.? v! fuel%) (test_crate!rec%vs.? v! zero))
   :pattern ((test_crate!rec%vs.? v! fuel%))
   :qid internal_test_crate!vs._fuel_to_zero_definition
   :skolemid skolem_internal_test_crate!vs._fuel_to_zero_definition
)))
(declare-fun %%lambda%%2 (Int Int Dcr Type Poly Fuel test_crate!S.) %%Function%%)
(assert
 (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Dcr) (%%hole%%3 Type) (%%hole%%4
    Poly
   ) (%%hole%%5 Fuel) (%%hole%%6 test_crate!S.) (i$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%2 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
      %%hole%%6
     ) i$
    ) (Poly%test_crate!S. (ite
      (and
       (<= %%hole%%0 (%I i$))
       (< (%I i$) %%hole%%1)
      )
      (test_crate!rec%vs.? (vstd!seq.Seq.index.? %%hole%%2 %%hole%%3 %%hole%%4 i$) %%hole%%5)
      %%hole%%6
   )))
   :pattern ((%%apply%%0 (%%lambda%%2 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      %%hole%%5 %%hole%%6
     ) i$
)))))
(assert
 (forall ((v! Poly) (fuel% Fuel)) (!
   (=>
    (has_type v! TYPE%test_crate!V.)
    (= (test_crate!rec%vs.? v! (succ fuel%)) (let
      ((s$ (%Poly%vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>. (vstd!seq.Seq.new.?
          (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!S. $ (TYPE%fun%1. $ INT (BOX $ ALLOCATOR_GLOBAL
            $
           ) TYPE%test_crate!S.
          ) (I (vstd!std_specs.vec.spec_vec_len.? (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!V.
            $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<$%2<allocator_global%./test_crate!V.>./allocator_global%.>.
             (test_crate!V./V/v (%Poly%test_crate!V. v!))
           ))
          ) (Poly%fun%1. (mk_fun (%%lambda%%2 0 (vstd!std_specs.vec.spec_vec_len.? (BOX $ ALLOCATOR_GLOBAL
               $
              ) TYPE%test_crate!V. $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<$%2<allocator_global%./test_crate!V.>./allocator_global%.>.
               (test_crate!V./V/v (%Poly%test_crate!V. v!))
              )
             ) (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!V. (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
               (BOX $ ALLOCATOR_GLOBAL $) TYPE%test_crate!V. $ ALLOCATOR_GLOBAL
              ) (Poly%alloc!vec.Vec<$%2<allocator_global%./test_crate!V.>./allocator_global%.>.
               (test_crate!V./V/v (%Poly%test_crate!V. v!))
              )
             ) fuel% (%Poly%test_crate!S. (vstd!pervasive.arbitrary.? (BOX $ ALLOCATOR_GLOBAL $)
               TYPE%test_crate!S.
      )))))))))
      (test_crate!S./S (%Poly%vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>. (Poly%vstd!seq.Seq<$%2<allocator_global%./test_crate!S.>.>.
         s$
   ))))))
   :pattern ((test_crate!rec%vs.? v! (succ fuel%)))
   :qid internal_test_crate!vs._fuel_to_body_definition
   :skolemid skolem_internal_test_crate!vs._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%test_crate!vs.)
  (forall ((v! Poly)) (!
    (=>
     (has_type v! TYPE%test_crate!V.)
     (= (test_crate!vs.? v!) (test_crate!rec%vs.? v! (succ fuel_nat%test_crate!vs.)))
    )
    :pattern ((test_crate!vs.? v!))
    :qid internal_test_crate!vs.?_definition
    :skolemid skolem_internal_test_crate!vs.?_definition
))))

;; Spec-Termination test_crate::sbad
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/recursion-323c2b72cefe3aab-lemma_decreases_vec_seq_len/test.rs:49:6: 49:40 (#0)
(get-info :all-statistics)
(push)
 (declare-const s! Poly)
 (declare-const tmp%1 vstd!seq.Seq<bool.>.)
 (declare-const decrease%init0 vstd!seq.Seq<bool.>.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd!seq.Seq. $ BOOL))
 )
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= decrease%init0 (%Poly%vstd!seq.Seq<bool.>. s!))
    (=>
     %%location_label%%0
     (check_decrease_height (Poly%vstd!seq.Seq<bool.>. (let
        ((s!$0 (%Poly%vstd!seq.Seq<bool.>. s!)))
        s!$0
       )
      ) (Poly%vstd!seq.Seq<bool.>. decrease%init0) false
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

;; Function-Recommends test_crate::sbad
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/recursion-323c2b72cefe3aab-lemma_decreases_vec_seq_len/test.rs:49:6: 49:40 (#0)
(get-info :all-statistics)
(push)
 (declare-const %return! vstd!seq.Seq<bool.>.)
 (declare-const s! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd!seq.Seq. $ BOOL))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Axioms test_crate::sbad
(assert
 (fuel_bool_default fuel%test_crate!sbad.)
)
(declare-const fuel_nat%test_crate!sbad. Fuel)
(assert
 (forall ((s! Poly) (fuel% Fuel)) (!
   (= (test_crate!rec%sbad.? s! fuel%) (test_crate!rec%sbad.? s! zero))
   :pattern ((test_crate!rec%sbad.? s! fuel%))
   :qid internal_test_crate!sbad._fuel_to_zero_definition
   :skolemid skolem_internal_test_crate!sbad._fuel_to_zero_definition
)))
(assert
 (forall ((s! Poly) (fuel% Fuel)) (!
   (=>
    (has_type s! (TYPE%vstd!seq.Seq. $ BOOL))
    (= (test_crate!rec%sbad.? s! (succ fuel%)) (test_crate!rec%sbad.? s! fuel%))
   )
   :pattern ((test_crate!rec%sbad.? s! (succ fuel%)))
   :qid internal_test_crate!sbad._fuel_to_body_definition
   :skolemid skolem_internal_test_crate!sbad._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%test_crate!sbad.)
  (forall ((s! Poly)) (!
    (=>
     (has_type s! (TYPE%vstd!seq.Seq. $ BOOL))
     (= (test_crate!sbad.? s!) (test_crate!rec%sbad.? s! (succ fuel_nat%test_crate!sbad.)))
    )
    :pattern ((test_crate!sbad.? s!))
    :qid internal_test_crate!sbad.?_definition
    :skolemid skolem_internal_test_crate!sbad.?_definition
))))

;; Spec-Termination test_crate::vbad
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/recursion-323c2b72cefe3aab-lemma_decreases_vec_seq_len/test.rs:55:6: 55:40 (#0)
(get-info :all-statistics)
(push)
 (declare-const v! Poly)
 (declare-const tmp%1 alloc!vec.Vec<bool./allocator_global%.>.)
 (declare-const decrease%init0 alloc!vec.Vec<bool./allocator_global%.>.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type v! (TYPE%alloc!vec.Vec. $ BOOL $ ALLOCATOR_GLOBAL))
 )
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= decrease%init0 (%Poly%alloc!vec.Vec<bool./allocator_global%.>. v!))
    (=>
     %%location_label%%0
     (check_decrease_height (Poly%alloc!vec.Vec<bool./allocator_global%.>. (let
        ((v!$0 (%Poly%alloc!vec.Vec<bool./allocator_global%.>. v!)))
        v!$0
       )
      ) (Poly%alloc!vec.Vec<bool./allocator_global%.>. decrease%init0) false
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

;; Function-Recommends test_crate::vbad
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/recursion-323c2b72cefe3aab-lemma_decreases_vec_seq_len/test.rs:55:6: 55:40 (#0)
(get-info :all-statistics)
(push)
 (declare-const %return! alloc!vec.Vec<bool./allocator_global%.>.)
 (declare-const v! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type v! (TYPE%alloc!vec.Vec. $ BOOL $ ALLOCATOR_GLOBAL))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Axioms test_crate::vbad
(assert
 (fuel_bool_default fuel%test_crate!vbad.)
)
(declare-const fuel_nat%test_crate!vbad. Fuel)
(assert
 (forall ((v! Poly) (fuel% Fuel)) (!
   (= (test_crate!rec%vbad.? v! fuel%) (test_crate!rec%vbad.? v! zero))
   :pattern ((test_crate!rec%vbad.? v! fuel%))
   :qid internal_test_crate!vbad._fuel_to_zero_definition
   :skolemid skolem_internal_test_crate!vbad._fuel_to_zero_definition
)))
(assert
 (forall ((v! Poly) (fuel% Fuel)) (!
   (=>
    (has_type v! (TYPE%alloc!vec.Vec. $ BOOL $ ALLOCATOR_GLOBAL))
    (= (test_crate!rec%vbad.? v! (succ fuel%)) (test_crate!rec%vbad.? v! fuel%))
   )
   :pattern ((test_crate!rec%vbad.? v! (succ fuel%)))
   :qid internal_test_crate!vbad._fuel_to_body_definition
   :skolemid skolem_internal_test_crate!vbad._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%test_crate!vbad.)
  (forall ((v! Poly)) (!
    (=>
     (has_type v! (TYPE%alloc!vec.Vec. $ BOOL $ ALLOCATOR_GLOBAL))
     (= (test_crate!vbad.? v!) (test_crate!rec%vbad.? v! (succ fuel_nat%test_crate!vbad.)))
    )
    :pattern ((test_crate!vbad.? v!))
    :qid internal_test_crate!vbad.?_definition
    :skolemid skolem_internal_test_crate!vbad.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type)) (!
   (=>
    (uInv SZ (const_int N&))
    (tr_bound%vstd!view.View. $ (ARRAY T&. T& N&. N&))
   )
   :pattern ((tr_bound%vstd!view.View. $ (ARRAY T&. T& N&. N&)))
   :qid internal_vstd__array__impl&__0_trait_impl_definition
   :skolemid skolem_internal_vstd__array__impl&__0_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type)) (!
   (=>
    (uInv SZ (const_int N&))
    (tr_bound%vstd!array.ArrayAdditionalSpecFns. $ (ARRAY T&. T& N&. N&) T&. T&)
   )
   :pattern ((tr_bound%vstd!array.ArrayAdditionalSpecFns. $ (ARRAY T&. T& N&. N&) T&.
     T&
   ))
   :qid internal_vstd__array__impl&__2_trait_impl_definition
   :skolemid skolem_internal_vstd__array__impl&__2_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%vstd!view.View. $ (PTR T&. T&))
   :pattern ((tr_bound%vstd!view.View. $ (PTR T&. T&)))
   :qid internal_vstd__raw_ptr__impl&__3_trait_impl_definition
   :skolemid skolem_internal_vstd__raw_ptr__impl&__3_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%vstd!view.View. (CONST_PTR $) (PTR T&. T&))
   :pattern ((tr_bound%vstd!view.View. (CONST_PTR $) (PTR T&. T&)))
   :qid internal_vstd__raw_ptr__impl&__4_trait_impl_definition
   :skolemid skolem_internal_vstd__raw_ptr__impl&__4_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%vstd!view.View. $ (SLICE T&. T&))
   :pattern ((tr_bound%vstd!view.View. $ (SLICE T&. T&)))
   :qid internal_vstd__slice__impl&__0_trait_impl_definition
   :skolemid skolem_internal_vstd__slice__impl&__0_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (=>
    (tr_bound%vstd!view.View. A&. A&)
    (tr_bound%vstd!view.View. (REF A&.) A&)
   )
   :pattern ((tr_bound%vstd!view.View. (REF A&.) A&))
   :qid internal_vstd__view__impl&__0_trait_impl_definition
   :skolemid skolem_internal_vstd__view__impl&__0_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (=>
    (tr_bound%vstd!view.View. A&. A&)
    (tr_bound%vstd!view.View. (BOX $ ALLOCATOR_GLOBAL A&.) A&)
   )
   :pattern ((tr_bound%vstd!view.View. (BOX $ ALLOCATOR_GLOBAL A&.) A&))
   :qid internal_vstd__view__impl&__2_trait_impl_definition
   :skolemid skolem_internal_vstd__view__impl&__2_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (=>
    (tr_bound%vstd!view.View. A&. A&)
    (tr_bound%vstd!view.View. (RC $ ALLOCATOR_GLOBAL A&.) A&)
   )
   :pattern ((tr_bound%vstd!view.View. (RC $ ALLOCATOR_GLOBAL A&.) A&))
   :qid internal_vstd__view__impl&__4_trait_impl_definition
   :skolemid skolem_internal_vstd__view__impl&__4_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (=>
    (tr_bound%vstd!view.View. A&. A&)
    (tr_bound%vstd!view.View. (ARC $ ALLOCATOR_GLOBAL A&.) A&)
   )
   :pattern ((tr_bound%vstd!view.View. (ARC $ ALLOCATOR_GLOBAL A&.) A&))
   :qid internal_vstd__view__impl&__6_trait_impl_definition
   :skolemid skolem_internal_vstd__view__impl&__6_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (A&. Dcr) (A& Type)) (!
   (=>
    (tr_bound%core!alloc.Allocator. A&. A&)
    (tr_bound%vstd!view.View. $ (TYPE%alloc!vec.Vec. T&. T& A&. A&))
   )
   :pattern ((tr_bound%vstd!view.View. $ (TYPE%alloc!vec.Vec. T&. T& A&. A&)))
   :qid internal_vstd__view__impl&__8_trait_impl_definition
   :skolemid skolem_internal_vstd__view__impl&__8_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!view.View. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!view.View. $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!view.View. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (A&. Dcr) (A& Type)) (!
   (=>
    (tr_bound%core!alloc.Allocator. A&. A&)
    (tr_bound%vstd!std_specs.vec.VecAdditionalSpecFns. $ (TYPE%alloc!vec.Vec. T&. T& A&.
      A&
     ) T&. T&
   ))
   :pattern ((tr_bound%vstd!std_specs.vec.VecAdditionalSpecFns. $ (TYPE%alloc!vec.Vec.
      T&. T& A&. A&
     ) T&. T&
   ))
   :qid internal_vstd__std_specs__vec__impl&__0_trait_impl_definition
   :skolemid skolem_internal_vstd__std_specs__vec__impl&__0_trait_impl_definition
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

;; Function-Def test_crate::bad
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/recursion-323c2b72cefe3aab-lemma_decreases_vec_seq_len/test.rs:65:7: 65:15 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 vstd!seq.Seq<test_crate!X.>.)
 (declare-const tmp%4 Bool)
 (declare-const x0@ test_crate!X.)
 (declare-const t@ vstd!seq.Seq<test_crate!X.>.)
 (assert
  fuel_defaults
 )
 (declare-fun %%array%%0 (Poly Poly) %%Function%%)
 (assert
  (forall ((%%hole%%0 Poly) (%%hole%%1 Poly)) (!
    (let
     ((%%x%% (%%array%%0 %%hole%%0 %%hole%%1)))
     (and
      (= (%%apply%%1 %%x%% 0) %%hole%%0)
      (= (%%apply%%1 %%x%% 1) %%hole%%1)
    ))
    :pattern ((%%array%%0 %%hole%%0 %%hole%%1))
    :qid __AIR_ARRAY_QID__
    :skolemid skolem___AIR_ARRAY_QID__
 )))
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (= x0@ (test_crate!X./X (%Poly%vstd!seq.Seq<test_crate!X.>. (vstd!seq.Seq.empty.? $ TYPE%test_crate!X.))))
    (=>
     (= t@ (%Poly%vstd!seq.Seq<test_crate!X.>. (vstd!seq.Seq.push.? $ TYPE%test_crate!X.
        (vstd!seq.Seq.empty.? $ TYPE%test_crate!X.) (Poly%test_crate!X. (test_crate!X./X (%Poly%vstd!seq.Seq<test_crate!X.>.
           (vstd!view.View.view.? $ (ARRAY $ TYPE%test_crate!X. $ (CONST_INT 2)) (array_new $
             TYPE%test_crate!X. 2 (%%array%%0 (Poly%test_crate!X. x0@) (Poly%test_crate!X. x0@))
     ))))))))
     (=>
      (= tmp%1 (height_lt (height (vstd!seq.Seq.index.? $ TYPE%test_crate!X. (Poly%vstd!seq.Seq<test_crate!X.>.
           t@
          ) (I 0)
         )
        ) (height (Poly%vstd!seq.Seq<test_crate!X.>. t@))
      ))
      (and
       (=>
        %%location_label%%0
        tmp%1
       )
       (=>
        tmp%1
        (=>
         (= tmp%2 (height_lt (height (Poly%vstd!seq.Seq<test_crate!X.>. (test_crate!X./X/y (%Poly%test_crate!X.
               (vstd!seq.Seq.index.? $ TYPE%test_crate!X. (Poly%vstd!seq.Seq<test_crate!X.>. t@)
                (I 0)
            ))))
           ) (height (vstd!seq.Seq.index.? $ TYPE%test_crate!X. (Poly%vstd!seq.Seq<test_crate!X.>.
              t@
             ) (I 0)
         ))))
         (and
          (=>
           %%location_label%%1
           tmp%2
          )
          (=>
           tmp%2
           (=>
            (= tmp%3 (test_crate!X./X/y (%Poly%test_crate!X. (vstd!seq.Seq.index.? $ TYPE%test_crate!X.
                (Poly%vstd!seq.Seq<test_crate!X.>. t@) (I 0)
            ))))
            (and
             (=>
              %%location_label%%2
              (req%vstd!seq.axiom_seq_len_decreases. $ TYPE%test_crate!X. (Poly%vstd!seq.Seq<test_crate!X.>.
                tmp%3
               ) (Poly%vstd!seq.Seq<test_crate!X.>. t@)
             ))
             (=>
              (ens%vstd!seq.axiom_seq_len_decreases. $ TYPE%test_crate!X. (Poly%vstd!seq.Seq<test_crate!X.>.
                tmp%3
               ) (Poly%vstd!seq.Seq<test_crate!X.>. t@)
              )
              (=>
               (= tmp%4 (height_lt (height (Poly%vstd!seq.Seq<test_crate!X.>. t@)) (height (Poly%vstd!seq.Seq<test_crate!X.>.
                   (test_crate!X./X/y (%Poly%test_crate!X. (vstd!seq.Seq.index.? $ TYPE%test_crate!X. (
                       Poly%vstd!seq.Seq<test_crate!X.>. t@
                      ) (I 0)
               )))))))
               (=>
                %%location_label%%3
                tmp%4
 )))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
 (get-info :reason-unknown)
 (get-model)
 (assert
  (not %%location_label%%2)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Recommends test_crate::bad
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/recursion-323c2b72cefe3aab-lemma_decreases_vec_seq_len/test.rs:65:7: 65:15 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Poly)
 (declare-const tmp%3 Poly)
 (declare-const tmp%4 Poly)
 (declare-const tmp%5 vstd!seq.Seq<test_crate!X.>.)
 (declare-const tmp%6 Poly)
 (declare-const x0@ test_crate!X.)
 (declare-const t@ vstd!seq.Seq<test_crate!X.>.)
 (assert
  fuel_defaults
 )
 (declare-fun %%array%%1 (Poly Poly) %%Function%%)
 (assert
  (forall ((%%hole%%0 Poly) (%%hole%%1 Poly)) (!
    (let
     ((%%x%% (%%array%%1 %%hole%%0 %%hole%%1)))
     (and
      (= (%%apply%%1 %%x%% 0) %%hole%%0)
      (= (%%apply%%1 %%x%% 1) %%hole%%1)
    ))
    :pattern ((%%array%%1 %%hole%%0 %%hole%%1))
    :qid __AIR_ARRAY_QID__
    :skolemid skolem___AIR_ARRAY_QID__
 )))
 ;; recommendation not met
 (declare-const %%location_label%%0 Bool)
 ;; recommendation not met
 (declare-const %%location_label%%1 Bool)
 ;; recommendation not met
 (declare-const %%location_label%%2 Bool)
 ;; recommendation not met
 (declare-const %%location_label%%3 Bool)
 ;; recommendation not met
 (declare-const %%location_label%%4 Bool)
 (assert
  (not (=>
    (= x0@ (test_crate!X./X (%Poly%vstd!seq.Seq<test_crate!X.>. (vstd!seq.Seq.empty.? $ TYPE%test_crate!X.))))
    (=>
     (= t@ (%Poly%vstd!seq.Seq<test_crate!X.>. (vstd!seq.Seq.push.? $ TYPE%test_crate!X.
        (vstd!seq.Seq.empty.? $ TYPE%test_crate!X.) (Poly%test_crate!X. (test_crate!X./X (%Poly%vstd!seq.Seq<test_crate!X.>.
           (vstd!view.View.view.? $ (ARRAY $ TYPE%test_crate!X. $ (CONST_INT 2)) (array_new $
             TYPE%test_crate!X. 2 (%%array%%1 (Poly%test_crate!X. x0@) (Poly%test_crate!X. x0@))
     ))))))))
     (and
      (=>
       %%location_label%%0
       (req%vstd!seq.impl&%0.spec_index. $ TYPE%test_crate!X. (Poly%vstd!seq.Seq<test_crate!X.>.
         t@
        ) (I 0)
      ))
      (=>
       (= tmp%1 (vstd!seq.Seq.index.? $ TYPE%test_crate!X. (Poly%vstd!seq.Seq<test_crate!X.>.
          t@
         ) (I 0)
       ))
       (=>
        (height_lt (height tmp%1) (height (Poly%vstd!seq.Seq<test_crate!X.>. t@)))
        (and
         (=>
          %%location_label%%1
          (req%vstd!seq.impl&%0.spec_index. $ TYPE%test_crate!X. (Poly%vstd!seq.Seq<test_crate!X.>.
            t@
           ) (I 0)
         ))
         (=>
          (= tmp%2 (vstd!seq.Seq.index.? $ TYPE%test_crate!X. (Poly%vstd!seq.Seq<test_crate!X.>.
             t@
            ) (I 0)
          ))
          (and
           (=>
            %%location_label%%2
            (req%vstd!seq.impl&%0.spec_index. $ TYPE%test_crate!X. (Poly%vstd!seq.Seq<test_crate!X.>.
              t@
             ) (I 0)
           ))
           (=>
            (= tmp%3 (vstd!seq.Seq.index.? $ TYPE%test_crate!X. (Poly%vstd!seq.Seq<test_crate!X.>.
               t@
              ) (I 0)
            ))
            (=>
             (height_lt (height (Poly%vstd!seq.Seq<test_crate!X.>. (test_crate!X./X/y (%Poly%test_crate!X.
                  tmp%2
               )))
              ) (height tmp%3)
             )
             (and
              (=>
               %%location_label%%3
               (req%vstd!seq.impl&%0.spec_index. $ TYPE%test_crate!X. (Poly%vstd!seq.Seq<test_crate!X.>.
                 t@
                ) (I 0)
              ))
              (=>
               (= tmp%4 (vstd!seq.Seq.index.? $ TYPE%test_crate!X. (Poly%vstd!seq.Seq<test_crate!X.>.
                  t@
                 ) (I 0)
               ))
               (=>
                (= tmp%5 (test_crate!X./X/y (%Poly%test_crate!X. tmp%4)))
                (=>
                 (ens%vstd!seq.axiom_seq_len_decreases. $ TYPE%test_crate!X. (Poly%vstd!seq.Seq<test_crate!X.>.
                   tmp%5
                  ) (Poly%vstd!seq.Seq<test_crate!X.>. t@)
                 )
                 (=>
                  %%location_label%%4
                  (req%vstd!seq.impl&%0.spec_index. $ TYPE%test_crate!X. (Poly%vstd!seq.Seq<test_crate!X.>.
                    t@
                   ) (I 0)
 ))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
