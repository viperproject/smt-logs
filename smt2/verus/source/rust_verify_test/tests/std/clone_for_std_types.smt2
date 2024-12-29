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
(declare-const fuel%vstd!std_specs.vec.vec_clone_trigger. FuelId)
(declare-const fuel%vstd!std_specs.vec.vec_clone_deep_view_proof. FuelId)
(declare-const fuel%vstd!std_specs.vec.axiom_vec_index_decreases. FuelId)
(declare-const fuel%vstd!array.array_view. FuelId)
(declare-const fuel%vstd!array.impl&%0.view. FuelId)
(declare-const fuel%vstd!array.impl&%1.deep_view. FuelId)
(declare-const fuel%vstd!array.impl&%2.spec_index. FuelId)
(declare-const fuel%vstd!array.lemma_array_index. FuelId)
(declare-const fuel%vstd!array.array_len_matches_n. FuelId)
(declare-const fuel%vstd!raw_ptr.impl&%4.view. FuelId)
(declare-const fuel%vstd!raw_ptr.ptrs_mut_eq. FuelId)
(declare-const fuel%vstd!seq.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_index_decreases. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_empty. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_new_len. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_new_index. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_push_len. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_push_index_same. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_push_index_different. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_ext_equal. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_ext_equal_deep. FuelId)
(declare-const fuel%vstd!slice.impl&%1.deep_view. FuelId)
(declare-const fuel%vstd!slice.impl&%2.spec_index. FuelId)
(declare-const fuel%vstd!slice.axiom_spec_len. FuelId)
(declare-const fuel%vstd!view.impl&%0.view. FuelId)
(declare-const fuel%vstd!view.impl&%1.deep_view. FuelId)
(declare-const fuel%vstd!view.impl&%2.view. FuelId)
(declare-const fuel%vstd!view.impl&%3.deep_view. FuelId)
(declare-const fuel%vstd!view.impl&%4.view. FuelId)
(declare-const fuel%vstd!view.impl&%5.deep_view. FuelId)
(declare-const fuel%vstd!view.impl&%6.view. FuelId)
(declare-const fuel%vstd!view.impl&%7.deep_view. FuelId)
(declare-const fuel%vstd!view.impl&%9.deep_view. FuelId)
(declare-const fuel%vstd!view.impl&%10.view. FuelId)
(declare-const fuel%vstd!view.impl&%11.deep_view. FuelId)
(declare-const fuel%vstd!view.impl&%12.view. FuelId)
(declare-const fuel%vstd!view.impl&%13.deep_view. FuelId)
(declare-const fuel%vstd!view.impl&%14.view. FuelId)
(declare-const fuel%vstd!view.impl&%15.deep_view. FuelId)
(declare-const fuel%vstd!view.impl&%20.view. FuelId)
(declare-const fuel%vstd!view.impl&%21.deep_view. FuelId)
(declare-const fuel%vstd!view.impl&%24.view. FuelId)
(declare-const fuel%vstd!view.impl&%25.deep_view. FuelId)
(declare-const fuel%vstd!view.impl&%38.view. FuelId)
(declare-const fuel%vstd!view.impl&%39.deep_view. FuelId)
(declare-const fuel%vstd!view.impl&%40.view. FuelId)
(declare-const fuel%vstd!view.impl&%41.deep_view. FuelId)
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
  fuel%vstd!std_specs.vec.vec_clone_trigger. fuel%vstd!std_specs.vec.vec_clone_deep_view_proof.
  fuel%vstd!std_specs.vec.axiom_vec_index_decreases. fuel%vstd!array.array_view. fuel%vstd!array.impl&%0.view.
  fuel%vstd!array.impl&%1.deep_view. fuel%vstd!array.impl&%2.spec_index. fuel%vstd!array.lemma_array_index.
  fuel%vstd!array.array_len_matches_n. fuel%vstd!raw_ptr.impl&%4.view. fuel%vstd!raw_ptr.ptrs_mut_eq.
  fuel%vstd!seq.impl&%0.spec_index. fuel%vstd!seq.axiom_seq_index_decreases. fuel%vstd!seq.axiom_seq_empty.
  fuel%vstd!seq.axiom_seq_new_len. fuel%vstd!seq.axiom_seq_new_index. fuel%vstd!seq.axiom_seq_push_len.
  fuel%vstd!seq.axiom_seq_push_index_same. fuel%vstd!seq.axiom_seq_push_index_different.
  fuel%vstd!seq.axiom_seq_ext_equal. fuel%vstd!seq.axiom_seq_ext_equal_deep. fuel%vstd!slice.impl&%1.deep_view.
  fuel%vstd!slice.impl&%2.spec_index. fuel%vstd!slice.axiom_spec_len. fuel%vstd!view.impl&%0.view.
  fuel%vstd!view.impl&%1.deep_view. fuel%vstd!view.impl&%2.view. fuel%vstd!view.impl&%3.deep_view.
  fuel%vstd!view.impl&%4.view. fuel%vstd!view.impl&%5.deep_view. fuel%vstd!view.impl&%6.view.
  fuel%vstd!view.impl&%7.deep_view. fuel%vstd!view.impl&%9.deep_view. fuel%vstd!view.impl&%10.view.
  fuel%vstd!view.impl&%11.deep_view. fuel%vstd!view.impl&%12.view. fuel%vstd!view.impl&%13.deep_view.
  fuel%vstd!view.impl&%14.view. fuel%vstd!view.impl&%15.deep_view. fuel%vstd!view.impl&%20.view.
  fuel%vstd!view.impl&%21.deep_view. fuel%vstd!view.impl&%24.view. fuel%vstd!view.impl&%25.deep_view.
  fuel%vstd!view.impl&%38.view. fuel%vstd!view.impl&%39.deep_view. fuel%vstd!view.impl&%40.view.
  fuel%vstd!view.impl&%41.deep_view. fuel%vstd!array.group_array_axioms. fuel%vstd!map.group_map_axioms.
  fuel%vstd!multiset.group_multiset_axioms. fuel%vstd!raw_ptr.group_raw_ptr_axioms.
  fuel%vstd!seq.group_seq_axioms. fuel%vstd!seq_lib.group_seq_lib_default. fuel%vstd!set.group_set_axioms.
  fuel%vstd!set_lib.group_set_lib_axioms. fuel%vstd!slice.group_slice_axioms. fuel%vstd!string.group_string_axioms.
  fuel%vstd!std_specs.bits.group_bits_axioms. fuel%vstd!std_specs.control_flow.group_control_flow_axioms.
  fuel%vstd!std_specs.range.group_range_axioms. fuel%vstd!std_specs.vec.group_vec_axioms.
  fuel%vstd!group_vstd_default.
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
   (fuel_bool_default fuel%vstd!seq.axiom_seq_empty.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_new_len.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_new_index.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_push_len.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_push_index_same.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_push_index_different.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_ext_equal.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_ext_equal_deep.)
)))
(assert
 (=>
  (fuel_bool_default fuel%vstd!slice.group_slice_axioms.)
  (fuel_bool_default fuel%vstd!slice.axiom_spec_len.)
))
(assert
 (=>
  (fuel_bool_default fuel%vstd!std_specs.vec.group_vec_axioms.)
  (and
   (fuel_bool_default fuel%vstd!std_specs.vec.axiom_spec_len.)
   (fuel_bool_default fuel%vstd!std_specs.vec.axiom_vec_index_decreases.)
   (fuel_bool_default fuel%vstd!std_specs.vec.vec_clone_deep_view_proof.)
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
(declare-fun proj%%vstd!view.DeepView./V (Dcr Type) Dcr)
(declare-fun proj%vstd!view.DeepView./V (Dcr Type) Type)

;; Datatypes
(declare-sort alloc!vec.Vec<bool./allocator_global%.>. 0)
(declare-sort alloc!vec.Vec<u8./allocator_global%.>. 0)
(declare-sort alloc!vec.Vec<char./allocator_global%.>. 0)
(declare-sort alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.
 0
)
(declare-sort alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.
 0
)
(declare-sort alloc!vec.Vec<test_crate!X./allocator_global%.>. 0)
(declare-sort alloc!vec.Vec<$%0<test_crate!Y.>./allocator_global%.>. 0)
(declare-sort vstd!raw_ptr.DynMetadata. 0)
(declare-sort vstd!raw_ptr.Provenance. 0)
(declare-sort vstd!seq.Seq<bool.>. 0)
(declare-sort vstd!seq.Seq<u8.>. 0)
(declare-sort vstd!seq.Seq<char.>. 0)
(declare-sort vstd!seq.Seq<alloc!vec.Vec<u8./allocator_global%.>.>. 0)
(declare-sort vstd!seq.Seq<alloc!vec.Vec<char./allocator_global%.>.>. 0)
(declare-sort vstd!seq.Seq<vstd!seq.Seq<u8.>.>. 0)
(declare-sort vstd!seq.Seq<vstd!seq.Seq<char.>.>. 0)
(declare-sort vstd!seq.Seq<$%0<test_crate!Y.>.>. 0)
(declare-sort slice%<alloc!vec.Vec<u8./allocator_global%.>.>. 0)
(declare-sort allocator_global%. 0)
(declare-datatypes ((vstd!raw_ptr.Metadata. 0) (vstd!raw_ptr.PtrData. 0) (test_crate!Y.
   0
  ) (test_crate!X. 0) (tuple%0. 0) (tuple%1. 0)
 ) (((vstd!raw_ptr.Metadata./Thin) (vstd!raw_ptr.Metadata./Length (vstd!raw_ptr.Metadata./Length/?0
     Int
    )
   ) (vstd!raw_ptr.Metadata./Dyn (vstd!raw_ptr.Metadata./Dyn/?0 vstd!raw_ptr.DynMetadata.))
  ) ((vstd!raw_ptr.PtrData./PtrData (vstd!raw_ptr.PtrData./PtrData/?addr Int) (vstd!raw_ptr.PtrData./PtrData/?provenance
     vstd!raw_ptr.Provenance.
    ) (vstd!raw_ptr.PtrData./PtrData/?metadata vstd!raw_ptr.Metadata.)
   )
  ) ((test_crate!Y./Y)) ((test_crate!X./X (test_crate!X./X/?i Int))) ((tuple%0./tuple%0))
  ((tuple%1./tuple%1 (tuple%1./tuple%1/?0 Poly)))
))
(declare-fun vstd!raw_ptr.Metadata./Length/0 (vstd!raw_ptr.Metadata.) Int)
(declare-fun vstd!raw_ptr.Metadata./Dyn/0 (vstd!raw_ptr.Metadata.) vstd!raw_ptr.DynMetadata.)
(declare-fun vstd!raw_ptr.PtrData./PtrData/addr (vstd!raw_ptr.PtrData.) Int)
(declare-fun vstd!raw_ptr.PtrData./PtrData/provenance (vstd!raw_ptr.PtrData.) vstd!raw_ptr.Provenance.)
(declare-fun vstd!raw_ptr.PtrData./PtrData/metadata (vstd!raw_ptr.PtrData.) vstd!raw_ptr.Metadata.)
(declare-fun test_crate!X./X/i (test_crate!X.) Int)
(declare-fun tuple%1./tuple%1/0 (tuple%1.) Poly)
(declare-fun TYPE%fun%1. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%alloc!vec.Vec. (Dcr Type Dcr Type) Type)
(declare-const TYPE%vstd!raw_ptr.Provenance. Type)
(declare-const TYPE%vstd!raw_ptr.Metadata. Type)
(declare-const TYPE%vstd!raw_ptr.DynMetadata. Type)
(declare-const TYPE%vstd!raw_ptr.PtrData. Type)
(declare-fun TYPE%vstd!seq.Seq. (Dcr Type) Type)
(declare-const TYPE%test_crate!Y. Type)
(declare-const TYPE%test_crate!X. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%1. (Dcr Type) Type)
(declare-fun FNDEF%core!clone.Clone.clone. (Dcr Type) Type)
(declare-fun Poly%fun%1. (%%Function%%) Poly)
(declare-fun %Poly%fun%1. (Poly) %%Function%%)
(declare-fun Poly%array%. (%%Function%%) Poly)
(declare-fun %Poly%array%. (Poly) %%Function%%)
(declare-fun Poly%alloc!vec.Vec<bool./allocator_global%.>. (alloc!vec.Vec<bool./allocator_global%.>.)
 Poly
)
(declare-fun %Poly%alloc!vec.Vec<bool./allocator_global%.>. (Poly) alloc!vec.Vec<bool./allocator_global%.>.)
(declare-fun Poly%alloc!vec.Vec<u8./allocator_global%.>. (alloc!vec.Vec<u8./allocator_global%.>.)
 Poly
)
(declare-fun %Poly%alloc!vec.Vec<u8./allocator_global%.>. (Poly) alloc!vec.Vec<u8./allocator_global%.>.)
(declare-fun Poly%alloc!vec.Vec<char./allocator_global%.>. (alloc!vec.Vec<char./allocator_global%.>.)
 Poly
)
(declare-fun %Poly%alloc!vec.Vec<char./allocator_global%.>. (Poly) alloc!vec.Vec<char./allocator_global%.>.)
(declare-fun Poly%alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.
 (alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.) Poly
)
(declare-fun %Poly%alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.
 (Poly) alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.
)
(declare-fun Poly%alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.
 (alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.) Poly
)
(declare-fun %Poly%alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.
 (Poly) alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.
)
(declare-fun Poly%alloc!vec.Vec<test_crate!X./allocator_global%.>. (alloc!vec.Vec<test_crate!X./allocator_global%.>.)
 Poly
)
(declare-fun %Poly%alloc!vec.Vec<test_crate!X./allocator_global%.>. (Poly) alloc!vec.Vec<test_crate!X./allocator_global%.>.)
(declare-fun Poly%alloc!vec.Vec<$%0<test_crate!Y.>./allocator_global%.>. (alloc!vec.Vec<$%0<test_crate!Y.>./allocator_global%.>.)
 Poly
)
(declare-fun %Poly%alloc!vec.Vec<$%0<test_crate!Y.>./allocator_global%.>. (Poly) alloc!vec.Vec<$%0<test_crate!Y.>./allocator_global%.>.)
(declare-fun Poly%vstd!raw_ptr.DynMetadata. (vstd!raw_ptr.DynMetadata.) Poly)
(declare-fun %Poly%vstd!raw_ptr.DynMetadata. (Poly) vstd!raw_ptr.DynMetadata.)
(declare-fun Poly%vstd!raw_ptr.Provenance. (vstd!raw_ptr.Provenance.) Poly)
(declare-fun %Poly%vstd!raw_ptr.Provenance. (Poly) vstd!raw_ptr.Provenance.)
(declare-fun Poly%vstd!seq.Seq<bool.>. (vstd!seq.Seq<bool.>.) Poly)
(declare-fun %Poly%vstd!seq.Seq<bool.>. (Poly) vstd!seq.Seq<bool.>.)
(declare-fun Poly%vstd!seq.Seq<u8.>. (vstd!seq.Seq<u8.>.) Poly)
(declare-fun %Poly%vstd!seq.Seq<u8.>. (Poly) vstd!seq.Seq<u8.>.)
(declare-fun Poly%vstd!seq.Seq<char.>. (vstd!seq.Seq<char.>.) Poly)
(declare-fun %Poly%vstd!seq.Seq<char.>. (Poly) vstd!seq.Seq<char.>.)
(declare-fun Poly%vstd!seq.Seq<alloc!vec.Vec<u8./allocator_global%.>.>. (vstd!seq.Seq<alloc!vec.Vec<u8./allocator_global%.>.>.)
 Poly
)
(declare-fun %Poly%vstd!seq.Seq<alloc!vec.Vec<u8./allocator_global%.>.>. (Poly) vstd!seq.Seq<alloc!vec.Vec<u8./allocator_global%.>.>.)
(declare-fun Poly%vstd!seq.Seq<alloc!vec.Vec<char./allocator_global%.>.>. (vstd!seq.Seq<alloc!vec.Vec<char./allocator_global%.>.>.)
 Poly
)
(declare-fun %Poly%vstd!seq.Seq<alloc!vec.Vec<char./allocator_global%.>.>. (Poly)
 vstd!seq.Seq<alloc!vec.Vec<char./allocator_global%.>.>.
)
(declare-fun Poly%vstd!seq.Seq<vstd!seq.Seq<u8.>.>. (vstd!seq.Seq<vstd!seq.Seq<u8.>.>.)
 Poly
)
(declare-fun %Poly%vstd!seq.Seq<vstd!seq.Seq<u8.>.>. (Poly) vstd!seq.Seq<vstd!seq.Seq<u8.>.>.)
(declare-fun Poly%vstd!seq.Seq<vstd!seq.Seq<char.>.>. (vstd!seq.Seq<vstd!seq.Seq<char.>.>.)
 Poly
)
(declare-fun %Poly%vstd!seq.Seq<vstd!seq.Seq<char.>.>. (Poly) vstd!seq.Seq<vstd!seq.Seq<char.>.>.)
(declare-fun Poly%vstd!seq.Seq<$%0<test_crate!Y.>.>. (vstd!seq.Seq<$%0<test_crate!Y.>.>.)
 Poly
)
(declare-fun %Poly%vstd!seq.Seq<$%0<test_crate!Y.>.>. (Poly) vstd!seq.Seq<$%0<test_crate!Y.>.>.)
(declare-fun Poly%slice%<alloc!vec.Vec<u8./allocator_global%.>.>. (slice%<alloc!vec.Vec<u8./allocator_global%.>.>.)
 Poly
)
(declare-fun %Poly%slice%<alloc!vec.Vec<u8./allocator_global%.>.>. (Poly) slice%<alloc!vec.Vec<u8./allocator_global%.>.>.)
(declare-fun Poly%allocator_global%. (allocator_global%.) Poly)
(declare-fun %Poly%allocator_global%. (Poly) allocator_global%.)
(declare-fun Poly%vstd!raw_ptr.Metadata. (vstd!raw_ptr.Metadata.) Poly)
(declare-fun %Poly%vstd!raw_ptr.Metadata. (Poly) vstd!raw_ptr.Metadata.)
(declare-fun Poly%vstd!raw_ptr.PtrData. (vstd!raw_ptr.PtrData.) Poly)
(declare-fun %Poly%vstd!raw_ptr.PtrData. (Poly) vstd!raw_ptr.PtrData.)
(declare-fun Poly%test_crate!Y. (test_crate!Y.) Poly)
(declare-fun %Poly%test_crate!Y. (Poly) test_crate!Y.)
(declare-fun Poly%test_crate!X. (test_crate!X.) Poly)
(declare-fun %Poly%test_crate!X. (Poly) test_crate!X.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%1. (tuple%1.) Poly)
(declare-fun %Poly%tuple%1. (Poly) tuple%1.)
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
 (forall ((x alloc!vec.Vec<u8./allocator_global%.>.)) (!
   (= x (%Poly%alloc!vec.Vec<u8./allocator_global%.>. (Poly%alloc!vec.Vec<u8./allocator_global%.>.
      x
   )))
   :pattern ((Poly%alloc!vec.Vec<u8./allocator_global%.>. x))
   :qid internal_alloc__vec__Vec<u8./allocator_global__.>_box_axiom_definition
   :skolemid skolem_internal_alloc__vec__Vec<u8./allocator_global__.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL))
    (= x (Poly%alloc!vec.Vec<u8./allocator_global%.>. (%Poly%alloc!vec.Vec<u8./allocator_global%.>.
       x
   ))))
   :pattern ((has_type x (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)))
   :qid internal_alloc__vec__Vec<u8./allocator_global__.>_unbox_axiom_definition
   :skolemid skolem_internal_alloc__vec__Vec<u8./allocator_global__.>_unbox_axiom_definition
)))
(assert
 (forall ((x alloc!vec.Vec<u8./allocator_global%.>.)) (!
   (has_type (Poly%alloc!vec.Vec<u8./allocator_global%.>. x) (TYPE%alloc!vec.Vec. $ (UINT
      8
     ) $ ALLOCATOR_GLOBAL
   ))
   :pattern ((has_type (Poly%alloc!vec.Vec<u8./allocator_global%.>. x) (TYPE%alloc!vec.Vec.
      $ (UINT 8) $ ALLOCATOR_GLOBAL
   )))
   :qid internal_alloc__vec__Vec<u8./allocator_global__.>_has_type_always_definition
   :skolemid skolem_internal_alloc__vec__Vec<u8./allocator_global__.>_has_type_always_definition
)))
(assert
 (forall ((x alloc!vec.Vec<char./allocator_global%.>.)) (!
   (= x (%Poly%alloc!vec.Vec<char./allocator_global%.>. (Poly%alloc!vec.Vec<char./allocator_global%.>.
      x
   )))
   :pattern ((Poly%alloc!vec.Vec<char./allocator_global%.>. x))
   :qid internal_alloc__vec__Vec<char./allocator_global__.>_box_axiom_definition
   :skolemid skolem_internal_alloc__vec__Vec<char./allocator_global__.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%alloc!vec.Vec. $ CHAR $ ALLOCATOR_GLOBAL))
    (= x (Poly%alloc!vec.Vec<char./allocator_global%.>. (%Poly%alloc!vec.Vec<char./allocator_global%.>.
       x
   ))))
   :pattern ((has_type x (TYPE%alloc!vec.Vec. $ CHAR $ ALLOCATOR_GLOBAL)))
   :qid internal_alloc__vec__Vec<char./allocator_global__.>_unbox_axiom_definition
   :skolemid skolem_internal_alloc__vec__Vec<char./allocator_global__.>_unbox_axiom_definition
)))
(assert
 (forall ((x alloc!vec.Vec<char./allocator_global%.>.)) (!
   (has_type (Poly%alloc!vec.Vec<char./allocator_global%.>. x) (TYPE%alloc!vec.Vec. $
     CHAR $ ALLOCATOR_GLOBAL
   ))
   :pattern ((has_type (Poly%alloc!vec.Vec<char./allocator_global%.>. x) (TYPE%alloc!vec.Vec.
      $ CHAR $ ALLOCATOR_GLOBAL
   )))
   :qid internal_alloc__vec__Vec<char./allocator_global__.>_has_type_always_definition
   :skolemid skolem_internal_alloc__vec__Vec<char./allocator_global__.>_has_type_always_definition
)))
(assert
 (forall ((x alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.))
  (!
   (= x (%Poly%alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.
     (Poly%alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>. x)
   ))
   :pattern ((Poly%alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.
     x
   ))
   :qid internal_alloc__vec__Vec<alloc!vec.Vec<u8./allocator_global__.>./allocator_global__.>_box_axiom_definition
   :skolemid skolem_internal_alloc__vec__Vec<alloc!vec.Vec<u8./allocator_global__.>./allocator_global__.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%alloc!vec.Vec. $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)
      $ ALLOCATOR_GLOBAL
    ))
    (= x (Poly%alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.
      (%Poly%alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>. x)
   )))
   :pattern ((has_type x (TYPE%alloc!vec.Vec. $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)
      $ ALLOCATOR_GLOBAL
   )))
   :qid internal_alloc__vec__Vec<alloc!vec.Vec<u8./allocator_global__.>./allocator_global__.>_unbox_axiom_definition
   :skolemid skolem_internal_alloc__vec__Vec<alloc!vec.Vec<u8./allocator_global__.>./allocator_global__.>_unbox_axiom_definition
)))
(assert
 (forall ((x alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.))
  (!
   (has_type (Poly%alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.
     x
    ) (TYPE%alloc!vec.Vec. $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) $ ALLOCATOR_GLOBAL)
   )
   :pattern ((has_type (Poly%alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.
      x
     ) (TYPE%alloc!vec.Vec. $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) $ ALLOCATOR_GLOBAL)
   ))
   :qid internal_alloc__vec__Vec<alloc!vec.Vec<u8./allocator_global__.>./allocator_global__.>_has_type_always_definition
   :skolemid skolem_internal_alloc__vec__Vec<alloc!vec.Vec<u8./allocator_global__.>./allocator_global__.>_has_type_always_definition
)))
(assert
 (forall ((x alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.))
  (!
   (= x (%Poly%alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.
     (Poly%alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.
      x
   )))
   :pattern ((Poly%alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.
     x
   ))
   :qid internal_alloc__vec__Vec<alloc!vec.Vec<char./allocator_global__.>./allocator_global__.>_box_axiom_definition
   :skolemid skolem_internal_alloc__vec__Vec<alloc!vec.Vec<char./allocator_global__.>./allocator_global__.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%alloc!vec.Vec. $ (TYPE%alloc!vec.Vec. $ CHAR $ ALLOCATOR_GLOBAL)
      $ ALLOCATOR_GLOBAL
    ))
    (= x (Poly%alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.
      (%Poly%alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.
       x
   ))))
   :pattern ((has_type x (TYPE%alloc!vec.Vec. $ (TYPE%alloc!vec.Vec. $ CHAR $ ALLOCATOR_GLOBAL)
      $ ALLOCATOR_GLOBAL
   )))
   :qid internal_alloc__vec__Vec<alloc!vec.Vec<char./allocator_global__.>./allocator_global__.>_unbox_axiom_definition
   :skolemid skolem_internal_alloc__vec__Vec<alloc!vec.Vec<char./allocator_global__.>./allocator_global__.>_unbox_axiom_definition
)))
(assert
 (forall ((x alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.))
  (!
   (has_type (Poly%alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.
     x
    ) (TYPE%alloc!vec.Vec. $ (TYPE%alloc!vec.Vec. $ CHAR $ ALLOCATOR_GLOBAL) $ ALLOCATOR_GLOBAL)
   )
   :pattern ((has_type (Poly%alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.
      x
     ) (TYPE%alloc!vec.Vec. $ (TYPE%alloc!vec.Vec. $ CHAR $ ALLOCATOR_GLOBAL) $ ALLOCATOR_GLOBAL)
   ))
   :qid internal_alloc__vec__Vec<alloc!vec.Vec<char./allocator_global__.>./allocator_global__.>_has_type_always_definition
   :skolemid skolem_internal_alloc__vec__Vec<alloc!vec.Vec<char./allocator_global__.>./allocator_global__.>_has_type_always_definition
)))
(assert
 (forall ((x alloc!vec.Vec<test_crate!X./allocator_global%.>.)) (!
   (= x (%Poly%alloc!vec.Vec<test_crate!X./allocator_global%.>. (Poly%alloc!vec.Vec<test_crate!X./allocator_global%.>.
      x
   )))
   :pattern ((Poly%alloc!vec.Vec<test_crate!X./allocator_global%.>. x))
   :qid internal_alloc__vec__Vec<test_crate!X./allocator_global__.>_box_axiom_definition
   :skolemid skolem_internal_alloc__vec__Vec<test_crate!X./allocator_global__.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%alloc!vec.Vec. $ TYPE%test_crate!X. $ ALLOCATOR_GLOBAL))
    (= x (Poly%alloc!vec.Vec<test_crate!X./allocator_global%.>. (%Poly%alloc!vec.Vec<test_crate!X./allocator_global%.>.
       x
   ))))
   :pattern ((has_type x (TYPE%alloc!vec.Vec. $ TYPE%test_crate!X. $ ALLOCATOR_GLOBAL)))
   :qid internal_alloc__vec__Vec<test_crate!X./allocator_global__.>_unbox_axiom_definition
   :skolemid skolem_internal_alloc__vec__Vec<test_crate!X./allocator_global__.>_unbox_axiom_definition
)))
(assert
 (forall ((x alloc!vec.Vec<test_crate!X./allocator_global%.>.)) (!
   (has_type (Poly%alloc!vec.Vec<test_crate!X./allocator_global%.>. x) (TYPE%alloc!vec.Vec.
     $ TYPE%test_crate!X. $ ALLOCATOR_GLOBAL
   ))
   :pattern ((has_type (Poly%alloc!vec.Vec<test_crate!X./allocator_global%.>. x) (TYPE%alloc!vec.Vec.
      $ TYPE%test_crate!X. $ ALLOCATOR_GLOBAL
   )))
   :qid internal_alloc__vec__Vec<test_crate!X./allocator_global__.>_has_type_always_definition
   :skolemid skolem_internal_alloc__vec__Vec<test_crate!X./allocator_global__.>_has_type_always_definition
)))
(assert
 (forall ((x alloc!vec.Vec<$%0<test_crate!Y.>./allocator_global%.>.)) (!
   (= x (%Poly%alloc!vec.Vec<$%0<test_crate!Y.>./allocator_global%.>. (Poly%alloc!vec.Vec<$%0<test_crate!Y.>./allocator_global%.>.
      x
   )))
   :pattern ((Poly%alloc!vec.Vec<$%0<test_crate!Y.>./allocator_global%.>. x))
   :qid internal_alloc__vec__Vec<$__0<test_crate!Y.>./allocator_global__.>_box_axiom_definition
   :skolemid skolem_internal_alloc__vec__Vec<$__0<test_crate!Y.>./allocator_global__.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%alloc!vec.Vec. (REF $) TYPE%test_crate!Y. $ ALLOCATOR_GLOBAL))
    (= x (Poly%alloc!vec.Vec<$%0<test_crate!Y.>./allocator_global%.>. (%Poly%alloc!vec.Vec<$%0<test_crate!Y.>./allocator_global%.>.
       x
   ))))
   :pattern ((has_type x (TYPE%alloc!vec.Vec. (REF $) TYPE%test_crate!Y. $ ALLOCATOR_GLOBAL)))
   :qid internal_alloc__vec__Vec<$__0<test_crate!Y.>./allocator_global__.>_unbox_axiom_definition
   :skolemid skolem_internal_alloc__vec__Vec<$__0<test_crate!Y.>./allocator_global__.>_unbox_axiom_definition
)))
(assert
 (forall ((x alloc!vec.Vec<$%0<test_crate!Y.>./allocator_global%.>.)) (!
   (has_type (Poly%alloc!vec.Vec<$%0<test_crate!Y.>./allocator_global%.>. x) (TYPE%alloc!vec.Vec.
     (REF $) TYPE%test_crate!Y. $ ALLOCATOR_GLOBAL
   ))
   :pattern ((has_type (Poly%alloc!vec.Vec<$%0<test_crate!Y.>./allocator_global%.>. x)
     (TYPE%alloc!vec.Vec. (REF $) TYPE%test_crate!Y. $ ALLOCATOR_GLOBAL)
   ))
   :qid internal_alloc__vec__Vec<$__0<test_crate!Y.>./allocator_global__.>_has_type_always_definition
   :skolemid skolem_internal_alloc__vec__Vec<$__0<test_crate!Y.>./allocator_global__.>_has_type_always_definition
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
 (forall ((x vstd!seq.Seq<u8.>.)) (!
   (= x (%Poly%vstd!seq.Seq<u8.>. (Poly%vstd!seq.Seq<u8.>. x)))
   :pattern ((Poly%vstd!seq.Seq<u8.>. x))
   :qid internal_vstd__seq__Seq<u8.>_box_axiom_definition
   :skolemid skolem_internal_vstd__seq__Seq<u8.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!seq.Seq. $ (UINT 8)))
    (= x (Poly%vstd!seq.Seq<u8.>. (%Poly%vstd!seq.Seq<u8.>. x)))
   )
   :pattern ((has_type x (TYPE%vstd!seq.Seq. $ (UINT 8))))
   :qid internal_vstd__seq__Seq<u8.>_unbox_axiom_definition
   :skolemid skolem_internal_vstd__seq__Seq<u8.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!seq.Seq<u8.>.)) (!
   (has_type (Poly%vstd!seq.Seq<u8.>. x) (TYPE%vstd!seq.Seq. $ (UINT 8)))
   :pattern ((has_type (Poly%vstd!seq.Seq<u8.>. x) (TYPE%vstd!seq.Seq. $ (UINT 8))))
   :qid internal_vstd__seq__Seq<u8.>_has_type_always_definition
   :skolemid skolem_internal_vstd__seq__Seq<u8.>_has_type_always_definition
)))
(assert
 (forall ((x vstd!seq.Seq<char.>.)) (!
   (= x (%Poly%vstd!seq.Seq<char.>. (Poly%vstd!seq.Seq<char.>. x)))
   :pattern ((Poly%vstd!seq.Seq<char.>. x))
   :qid internal_vstd__seq__Seq<char.>_box_axiom_definition
   :skolemid skolem_internal_vstd__seq__Seq<char.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!seq.Seq. $ CHAR))
    (= x (Poly%vstd!seq.Seq<char.>. (%Poly%vstd!seq.Seq<char.>. x)))
   )
   :pattern ((has_type x (TYPE%vstd!seq.Seq. $ CHAR)))
   :qid internal_vstd__seq__Seq<char.>_unbox_axiom_definition
   :skolemid skolem_internal_vstd__seq__Seq<char.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!seq.Seq<char.>.)) (!
   (has_type (Poly%vstd!seq.Seq<char.>. x) (TYPE%vstd!seq.Seq. $ CHAR))
   :pattern ((has_type (Poly%vstd!seq.Seq<char.>. x) (TYPE%vstd!seq.Seq. $ CHAR)))
   :qid internal_vstd__seq__Seq<char.>_has_type_always_definition
   :skolemid skolem_internal_vstd__seq__Seq<char.>_has_type_always_definition
)))
(assert
 (forall ((x vstd!seq.Seq<alloc!vec.Vec<u8./allocator_global%.>.>.)) (!
   (= x (%Poly%vstd!seq.Seq<alloc!vec.Vec<u8./allocator_global%.>.>. (Poly%vstd!seq.Seq<alloc!vec.Vec<u8./allocator_global%.>.>.
      x
   )))
   :pattern ((Poly%vstd!seq.Seq<alloc!vec.Vec<u8./allocator_global%.>.>. x))
   :qid internal_vstd__seq__Seq<alloc!vec.Vec<u8./allocator_global__.>.>_box_axiom_definition
   :skolemid skolem_internal_vstd__seq__Seq<alloc!vec.Vec<u8./allocator_global__.>.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!seq.Seq. $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)))
    (= x (Poly%vstd!seq.Seq<alloc!vec.Vec<u8./allocator_global%.>.>. (%Poly%vstd!seq.Seq<alloc!vec.Vec<u8./allocator_global%.>.>.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd!seq.Seq. $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL))))
   :qid internal_vstd__seq__Seq<alloc!vec.Vec<u8./allocator_global__.>.>_unbox_axiom_definition
   :skolemid skolem_internal_vstd__seq__Seq<alloc!vec.Vec<u8./allocator_global__.>.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!seq.Seq<alloc!vec.Vec<u8./allocator_global%.>.>.)) (!
   (has_type (Poly%vstd!seq.Seq<alloc!vec.Vec<u8./allocator_global%.>.>. x) (TYPE%vstd!seq.Seq.
     $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)
   ))
   :pattern ((has_type (Poly%vstd!seq.Seq<alloc!vec.Vec<u8./allocator_global%.>.>. x)
     (TYPE%vstd!seq.Seq. $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL))
   ))
   :qid internal_vstd__seq__Seq<alloc!vec.Vec<u8./allocator_global__.>.>_has_type_always_definition
   :skolemid skolem_internal_vstd__seq__Seq<alloc!vec.Vec<u8./allocator_global__.>.>_has_type_always_definition
)))
(assert
 (forall ((x vstd!seq.Seq<alloc!vec.Vec<char./allocator_global%.>.>.)) (!
   (= x (%Poly%vstd!seq.Seq<alloc!vec.Vec<char./allocator_global%.>.>. (Poly%vstd!seq.Seq<alloc!vec.Vec<char./allocator_global%.>.>.
      x
   )))
   :pattern ((Poly%vstd!seq.Seq<alloc!vec.Vec<char./allocator_global%.>.>. x))
   :qid internal_vstd__seq__Seq<alloc!vec.Vec<char./allocator_global__.>.>_box_axiom_definition
   :skolemid skolem_internal_vstd__seq__Seq<alloc!vec.Vec<char./allocator_global__.>.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!seq.Seq. $ (TYPE%alloc!vec.Vec. $ CHAR $ ALLOCATOR_GLOBAL)))
    (= x (Poly%vstd!seq.Seq<alloc!vec.Vec<char./allocator_global%.>.>. (%Poly%vstd!seq.Seq<alloc!vec.Vec<char./allocator_global%.>.>.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd!seq.Seq. $ (TYPE%alloc!vec.Vec. $ CHAR $ ALLOCATOR_GLOBAL))))
   :qid internal_vstd__seq__Seq<alloc!vec.Vec<char./allocator_global__.>.>_unbox_axiom_definition
   :skolemid skolem_internal_vstd__seq__Seq<alloc!vec.Vec<char./allocator_global__.>.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!seq.Seq<alloc!vec.Vec<char./allocator_global%.>.>.)) (!
   (has_type (Poly%vstd!seq.Seq<alloc!vec.Vec<char./allocator_global%.>.>. x) (TYPE%vstd!seq.Seq.
     $ (TYPE%alloc!vec.Vec. $ CHAR $ ALLOCATOR_GLOBAL)
   ))
   :pattern ((has_type (Poly%vstd!seq.Seq<alloc!vec.Vec<char./allocator_global%.>.>. x)
     (TYPE%vstd!seq.Seq. $ (TYPE%alloc!vec.Vec. $ CHAR $ ALLOCATOR_GLOBAL))
   ))
   :qid internal_vstd__seq__Seq<alloc!vec.Vec<char./allocator_global__.>.>_has_type_always_definition
   :skolemid skolem_internal_vstd__seq__Seq<alloc!vec.Vec<char./allocator_global__.>.>_has_type_always_definition
)))
(assert
 (forall ((x vstd!seq.Seq<vstd!seq.Seq<u8.>.>.)) (!
   (= x (%Poly%vstd!seq.Seq<vstd!seq.Seq<u8.>.>. (Poly%vstd!seq.Seq<vstd!seq.Seq<u8.>.>.
      x
   )))
   :pattern ((Poly%vstd!seq.Seq<vstd!seq.Seq<u8.>.>. x))
   :qid internal_vstd__seq__Seq<vstd!seq.Seq<u8.>.>_box_axiom_definition
   :skolemid skolem_internal_vstd__seq__Seq<vstd!seq.Seq<u8.>.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!seq.Seq. $ (TYPE%vstd!seq.Seq. $ (UINT 8))))
    (= x (Poly%vstd!seq.Seq<vstd!seq.Seq<u8.>.>. (%Poly%vstd!seq.Seq<vstd!seq.Seq<u8.>.>.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd!seq.Seq. $ (TYPE%vstd!seq.Seq. $ (UINT 8)))))
   :qid internal_vstd__seq__Seq<vstd!seq.Seq<u8.>.>_unbox_axiom_definition
   :skolemid skolem_internal_vstd__seq__Seq<vstd!seq.Seq<u8.>.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!seq.Seq<vstd!seq.Seq<u8.>.>.)) (!
   (has_type (Poly%vstd!seq.Seq<vstd!seq.Seq<u8.>.>. x) (TYPE%vstd!seq.Seq. $ (TYPE%vstd!seq.Seq.
      $ (UINT 8)
   )))
   :pattern ((has_type (Poly%vstd!seq.Seq<vstd!seq.Seq<u8.>.>. x) (TYPE%vstd!seq.Seq. $
      (TYPE%vstd!seq.Seq. $ (UINT 8))
   )))
   :qid internal_vstd__seq__Seq<vstd!seq.Seq<u8.>.>_has_type_always_definition
   :skolemid skolem_internal_vstd__seq__Seq<vstd!seq.Seq<u8.>.>_has_type_always_definition
)))
(assert
 (forall ((x vstd!seq.Seq<vstd!seq.Seq<char.>.>.)) (!
   (= x (%Poly%vstd!seq.Seq<vstd!seq.Seq<char.>.>. (Poly%vstd!seq.Seq<vstd!seq.Seq<char.>.>.
      x
   )))
   :pattern ((Poly%vstd!seq.Seq<vstd!seq.Seq<char.>.>. x))
   :qid internal_vstd__seq__Seq<vstd!seq.Seq<char.>.>_box_axiom_definition
   :skolemid skolem_internal_vstd__seq__Seq<vstd!seq.Seq<char.>.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!seq.Seq. $ (TYPE%vstd!seq.Seq. $ CHAR)))
    (= x (Poly%vstd!seq.Seq<vstd!seq.Seq<char.>.>. (%Poly%vstd!seq.Seq<vstd!seq.Seq<char.>.>.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd!seq.Seq. $ (TYPE%vstd!seq.Seq. $ CHAR))))
   :qid internal_vstd__seq__Seq<vstd!seq.Seq<char.>.>_unbox_axiom_definition
   :skolemid skolem_internal_vstd__seq__Seq<vstd!seq.Seq<char.>.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!seq.Seq<vstd!seq.Seq<char.>.>.)) (!
   (has_type (Poly%vstd!seq.Seq<vstd!seq.Seq<char.>.>. x) (TYPE%vstd!seq.Seq. $ (TYPE%vstd!seq.Seq.
      $ CHAR
   )))
   :pattern ((has_type (Poly%vstd!seq.Seq<vstd!seq.Seq<char.>.>. x) (TYPE%vstd!seq.Seq.
      $ (TYPE%vstd!seq.Seq. $ CHAR)
   )))
   :qid internal_vstd__seq__Seq<vstd!seq.Seq<char.>.>_has_type_always_definition
   :skolemid skolem_internal_vstd__seq__Seq<vstd!seq.Seq<char.>.>_has_type_always_definition
)))
(assert
 (forall ((x vstd!seq.Seq<$%0<test_crate!Y.>.>.)) (!
   (= x (%Poly%vstd!seq.Seq<$%0<test_crate!Y.>.>. (Poly%vstd!seq.Seq<$%0<test_crate!Y.>.>.
      x
   )))
   :pattern ((Poly%vstd!seq.Seq<$%0<test_crate!Y.>.>. x))
   :qid internal_vstd__seq__Seq<$__0<test_crate!Y.>.>_box_axiom_definition
   :skolemid skolem_internal_vstd__seq__Seq<$__0<test_crate!Y.>.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!seq.Seq. (REF $) TYPE%test_crate!Y.))
    (= x (Poly%vstd!seq.Seq<$%0<test_crate!Y.>.>. (%Poly%vstd!seq.Seq<$%0<test_crate!Y.>.>.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd!seq.Seq. (REF $) TYPE%test_crate!Y.)))
   :qid internal_vstd__seq__Seq<$__0<test_crate!Y.>.>_unbox_axiom_definition
   :skolemid skolem_internal_vstd__seq__Seq<$__0<test_crate!Y.>.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!seq.Seq<$%0<test_crate!Y.>.>.)) (!
   (has_type (Poly%vstd!seq.Seq<$%0<test_crate!Y.>.>. x) (TYPE%vstd!seq.Seq. (REF $) TYPE%test_crate!Y.))
   :pattern ((has_type (Poly%vstd!seq.Seq<$%0<test_crate!Y.>.>. x) (TYPE%vstd!seq.Seq.
      (REF $) TYPE%test_crate!Y.
   )))
   :qid internal_vstd__seq__Seq<$__0<test_crate!Y.>.>_has_type_always_definition
   :skolemid skolem_internal_vstd__seq__Seq<$__0<test_crate!Y.>.>_has_type_always_definition
)))
(assert
 (forall ((x slice%<alloc!vec.Vec<u8./allocator_global%.>.>.)) (!
   (= x (%Poly%slice%<alloc!vec.Vec<u8./allocator_global%.>.>. (Poly%slice%<alloc!vec.Vec<u8./allocator_global%.>.>.
      x
   )))
   :pattern ((Poly%slice%<alloc!vec.Vec<u8./allocator_global%.>.>. x))
   :qid internal_crate__slice__<alloc!vec.Vec<u8./allocator_global__.>.>_box_axiom_definition
   :skolemid skolem_internal_crate__slice__<alloc!vec.Vec<u8./allocator_global__.>.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (SLICE $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)))
    (= x (Poly%slice%<alloc!vec.Vec<u8./allocator_global%.>.>. (%Poly%slice%<alloc!vec.Vec<u8./allocator_global%.>.>.
       x
   ))))
   :pattern ((has_type x (SLICE $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL))))
   :qid internal_crate__slice__<alloc!vec.Vec<u8./allocator_global__.>.>_unbox_axiom_definition
   :skolemid skolem_internal_crate__slice__<alloc!vec.Vec<u8./allocator_global__.>.>_unbox_axiom_definition
)))
(assert
 (forall ((x slice%<alloc!vec.Vec<u8./allocator_global%.>.>.)) (!
   (has_type (Poly%slice%<alloc!vec.Vec<u8./allocator_global%.>.>. x) (SLICE $ (TYPE%alloc!vec.Vec.
      $ (UINT 8) $ ALLOCATOR_GLOBAL
   )))
   :pattern ((has_type (Poly%slice%<alloc!vec.Vec<u8./allocator_global%.>.>. x) (SLICE
      $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)
   )))
   :qid internal_crate__slice__<alloc!vec.Vec<u8./allocator_global__.>.>_has_type_always_definition
   :skolemid skolem_internal_crate__slice__<alloc!vec.Vec<u8./allocator_global__.>.>_has_type_always_definition
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
 (forall ((x test_crate!Y.)) (!
   (= x (%Poly%test_crate!Y. (Poly%test_crate!Y. x)))
   :pattern ((Poly%test_crate!Y. x))
   :qid internal_test_crate__Y_box_axiom_definition
   :skolemid skolem_internal_test_crate__Y_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.)
    (= x (Poly%test_crate!Y. (%Poly%test_crate!Y. x)))
   )
   :pattern ((has_type x TYPE%test_crate!Y.))
   :qid internal_test_crate__Y_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__Y_unbox_axiom_definition
)))
(assert
 (forall ((x test_crate!Y.)) (!
   (has_type (Poly%test_crate!Y. x) TYPE%test_crate!Y.)
   :pattern ((has_type (Poly%test_crate!Y. x) TYPE%test_crate!Y.))
   :qid internal_test_crate__Y_has_type_always_definition
   :skolemid skolem_internal_test_crate__Y_has_type_always_definition
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
 (forall ((_i! Int)) (!
   (=>
    (uInv 64 _i!)
    (has_type (Poly%test_crate!X. (test_crate!X./X _i!)) TYPE%test_crate!X.)
   )
   :pattern ((has_type (Poly%test_crate!X. (test_crate!X./X _i!)) TYPE%test_crate!X.))
   :qid internal_test_crate!X./X_constructor_definition
   :skolemid skolem_internal_test_crate!X./X_constructor_definition
)))
(assert
 (forall ((x test_crate!X.)) (!
   (= (test_crate!X./X/i x) (test_crate!X./X/?i x))
   :pattern ((test_crate!X./X/i x))
   :qid internal_test_crate!X./X/i_accessor_definition
   :skolemid skolem_internal_test_crate!X./X/i_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!X.)
    (uInv 64 (test_crate!X./X/i (%Poly%test_crate!X. x)))
   )
   :pattern ((test_crate!X./X/i (%Poly%test_crate!X. x)) (has_type x TYPE%test_crate!X.))
   :qid internal_test_crate!X./X/i_invariant_definition
   :skolemid skolem_internal_test_crate!X./X/i_invariant_definition
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
(declare-fun tr_bound%vstd!slice.SliceAdditionalSpecFns. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%vstd!view.View. (Dcr Type) Bool)
(declare-fun tr_bound%vstd!view.DeepView. (Dcr Type) Bool)
(declare-fun tr_bound%core!clone.Clone. (Dcr Type) Bool)
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
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%vstd!slice.SliceAdditionalSpecFns. Self%&. Self%& T&. T&)
    (and
     (tr_bound%vstd!view.View. Self%&. Self%&)
     (and
      (= $ (proj%%vstd!view.View./V Self%&. Self%&))
      (= (TYPE%vstd!seq.Seq. T&. T&) (proj%vstd!view.View./V Self%&. Self%&))
   )))
   :pattern ((tr_bound%vstd!slice.SliceAdditionalSpecFns. Self%&. Self%& T&. T&))
   :qid internal_vstd__slice__SliceAdditionalSpecFns_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__slice__SliceAdditionalSpecFns_trait_type_bounds_definition
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
   :pattern ((tr_bound%vstd!view.DeepView. Self%&. Self%&))
   :qid internal_vstd__view__DeepView_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__view__DeepView_trait_type_bounds_definition
)))
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
 (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type)) (!
   (= (proj%%vstd!view.DeepView./V $ (ARRAY T&. T& N&. N&)) $)
   :pattern ((proj%%vstd!view.DeepView./V $ (ARRAY T&. T& N&. N&)))
   :qid internal_proj____vstd!view.DeepView./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd!view.DeepView./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type)) (!
   (= (proj%vstd!view.DeepView./V $ (ARRAY T&. T& N&. N&)) (TYPE%vstd!seq.Seq. (proj%%vstd!view.DeepView./V
      T&. T&
     ) (proj%vstd!view.DeepView./V T&. T&)
   ))
   :pattern ((proj%vstd!view.DeepView./V $ (ARRAY T&. T& N&. N&)))
   :qid internal_proj__vstd!view.DeepView./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd!view.DeepView./V_assoc_type_impl_false_definition
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
 (forall ((T&. Dcr) (T& Type)) (!
   (= (proj%%vstd!view.DeepView./V $ (SLICE T&. T&)) $)
   :pattern ((proj%%vstd!view.DeepView./V $ (SLICE T&. T&)))
   :qid internal_proj____vstd!view.DeepView./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd!view.DeepView./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (= (proj%vstd!view.DeepView./V $ (SLICE T&. T&)) (TYPE%vstd!seq.Seq. (proj%%vstd!view.DeepView./V
      T&. T&
     ) (proj%vstd!view.DeepView./V T&. T&)
   ))
   :pattern ((proj%vstd!view.DeepView./V $ (SLICE T&. T&)))
   :qid internal_proj__vstd!view.DeepView./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd!view.DeepView./V_assoc_type_impl_false_definition
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
   (= (proj%%vstd!view.DeepView./V (REF A&.) A&) (proj%%vstd!view.DeepView./V A&. A&))
   :pattern ((proj%%vstd!view.DeepView./V (REF A&.) A&))
   :qid internal_proj____vstd!view.DeepView./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd!view.DeepView./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%vstd!view.DeepView./V (REF A&.) A&) (proj%vstd!view.DeepView./V A&. A&))
   :pattern ((proj%vstd!view.DeepView./V (REF A&.) A&))
   :qid internal_proj__vstd!view.DeepView./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd!view.DeepView./V_assoc_type_impl_false_definition
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
   (= (proj%%vstd!view.DeepView./V (BOX $ ALLOCATOR_GLOBAL A&.) A&) (proj%%vstd!view.DeepView./V
     A&. A&
   ))
   :pattern ((proj%%vstd!view.DeepView./V (BOX $ ALLOCATOR_GLOBAL A&.) A&))
   :qid internal_proj____vstd!view.DeepView./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd!view.DeepView./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%vstd!view.DeepView./V (BOX $ ALLOCATOR_GLOBAL A&.) A&) (proj%vstd!view.DeepView./V
     A&. A&
   ))
   :pattern ((proj%vstd!view.DeepView./V (BOX $ ALLOCATOR_GLOBAL A&.) A&))
   :qid internal_proj__vstd!view.DeepView./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd!view.DeepView./V_assoc_type_impl_false_definition
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
   (= (proj%%vstd!view.DeepView./V (RC $ ALLOCATOR_GLOBAL A&.) A&) (proj%%vstd!view.DeepView./V
     A&. A&
   ))
   :pattern ((proj%%vstd!view.DeepView./V (RC $ ALLOCATOR_GLOBAL A&.) A&))
   :qid internal_proj____vstd!view.DeepView./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd!view.DeepView./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%vstd!view.DeepView./V (RC $ ALLOCATOR_GLOBAL A&.) A&) (proj%vstd!view.DeepView./V
     A&. A&
   ))
   :pattern ((proj%vstd!view.DeepView./V (RC $ ALLOCATOR_GLOBAL A&.) A&))
   :qid internal_proj__vstd!view.DeepView./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd!view.DeepView./V_assoc_type_impl_false_definition
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
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%%vstd!view.DeepView./V (ARC $ ALLOCATOR_GLOBAL A&.) A&) (proj%%vstd!view.DeepView./V
     A&. A&
   ))
   :pattern ((proj%%vstd!view.DeepView./V (ARC $ ALLOCATOR_GLOBAL A&.) A&))
   :qid internal_proj____vstd!view.DeepView./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd!view.DeepView./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%vstd!view.DeepView./V (ARC $ ALLOCATOR_GLOBAL A&.) A&) (proj%vstd!view.DeepView./V
     A&. A&
   ))
   :pattern ((proj%vstd!view.DeepView./V (ARC $ ALLOCATOR_GLOBAL A&.) A&))
   :qid internal_proj__vstd!view.DeepView./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd!view.DeepView./V_assoc_type_impl_false_definition
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
 (forall ((T&. Dcr) (T& Type) (A&. Dcr) (A& Type)) (!
   (= (proj%%vstd!view.DeepView./V $ (TYPE%alloc!vec.Vec. T&. T& A&. A&)) $)
   :pattern ((proj%%vstd!view.DeepView./V $ (TYPE%alloc!vec.Vec. T&. T& A&. A&)))
   :qid internal_proj____vstd!view.DeepView./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd!view.DeepView./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (A&. Dcr) (A& Type)) (!
   (= (proj%vstd!view.DeepView./V $ (TYPE%alloc!vec.Vec. T&. T& A&. A&)) (TYPE%vstd!seq.Seq.
     (proj%%vstd!view.DeepView./V T&. T&) (proj%vstd!view.DeepView./V T&. T&)
   ))
   :pattern ((proj%vstd!view.DeepView./V $ (TYPE%alloc!vec.Vec. T&. T& A&. A&)))
   :qid internal_proj__vstd!view.DeepView./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd!view.DeepView./V_assoc_type_impl_false_definition
)))
(assert
 (= (proj%%vstd!view.View./V $ TYPE%tuple%0.) $)
)
(assert
 (= (proj%vstd!view.View./V $ TYPE%tuple%0.) TYPE%tuple%0.)
)
(assert
 (= (proj%%vstd!view.DeepView./V $ TYPE%tuple%0.) $)
)
(assert
 (= (proj%vstd!view.DeepView./V $ TYPE%tuple%0.) TYPE%tuple%0.)
)
(assert
 (= (proj%%vstd!view.View./V $ BOOL) $)
)
(assert
 (= (proj%vstd!view.View./V $ BOOL) BOOL)
)
(assert
 (= (proj%%vstd!view.DeepView./V $ BOOL) $)
)
(assert
 (= (proj%vstd!view.DeepView./V $ BOOL) BOOL)
)
(assert
 (= (proj%%vstd!view.View./V $ (UINT 8)) $)
)
(assert
 (= (proj%vstd!view.View./V $ (UINT 8)) (UINT 8))
)
(assert
 (= (proj%%vstd!view.DeepView./V $ (UINT 8)) $)
)
(assert
 (= (proj%vstd!view.DeepView./V $ (UINT 8)) (UINT 8))
)
(assert
 (= (proj%%vstd!view.View./V $ (UINT 64)) $)
)
(assert
 (= (proj%vstd!view.View./V $ (UINT 64)) (UINT 64))
)
(assert
 (= (proj%%vstd!view.DeepView./V $ (UINT 64)) $)
)
(assert
 (= (proj%vstd!view.DeepView./V $ (UINT 64)) (UINT 64))
)
(assert
 (= (proj%%vstd!view.View./V $ (UINT SZ)) $)
)
(assert
 (= (proj%vstd!view.View./V $ (UINT SZ)) (UINT SZ))
)
(assert
 (= (proj%%vstd!view.DeepView./V $ (UINT SZ)) $)
)
(assert
 (= (proj%vstd!view.DeepView./V $ (UINT SZ)) (UINT SZ))
)
(assert
 (= (proj%%vstd!view.View./V $ CHAR) $)
)
(assert
 (= (proj%vstd!view.View./V $ CHAR) CHAR)
)
(assert
 (= (proj%%vstd!view.DeepView./V $ CHAR) $)
)
(assert
 (= (proj%vstd!view.DeepView./V $ CHAR) CHAR)
)
(assert
 (forall ((A0&. Dcr) (A0& Type)) (!
   (= (proj%%vstd!view.View./V $ (TYPE%tuple%1. A0&. A0&)) $)
   :pattern ((proj%%vstd!view.View./V $ (TYPE%tuple%1. A0&. A0&)))
   :qid internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((A0&. Dcr) (A0& Type)) (!
   (= (proj%vstd!view.View./V $ (TYPE%tuple%1. A0&. A0&)) (TYPE%tuple%1. (proj%%vstd!view.View./V
      A0&. A0&
     ) (proj%vstd!view.View./V A0&. A0&)
   ))
   :pattern ((proj%vstd!view.View./V $ (TYPE%tuple%1. A0&. A0&)))
   :qid internal_proj__vstd!view.View./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd!view.View./V_assoc_type_impl_false_definition
)))
(assert
 (forall ((A0&. Dcr) (A0& Type)) (!
   (= (proj%%vstd!view.DeepView./V $ (TYPE%tuple%1. A0&. A0&)) $)
   :pattern ((proj%%vstd!view.DeepView./V $ (TYPE%tuple%1. A0&. A0&)))
   :qid internal_proj____vstd!view.DeepView./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd!view.DeepView./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((A0&. Dcr) (A0& Type)) (!
   (= (proj%vstd!view.DeepView./V $ (TYPE%tuple%1. A0&. A0&)) (TYPE%tuple%1. (proj%%vstd!view.DeepView./V
      A0&. A0&
     ) (proj%vstd!view.DeepView./V A0&. A0&)
   ))
   :pattern ((proj%vstd!view.DeepView./V $ (TYPE%tuple%1. A0&. A0&)))
   :qid internal_proj__vstd!view.DeepView./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd!view.DeepView./V_assoc_type_impl_false_definition
)))

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

;; Function-Decl vstd::slice::SliceAdditionalSpecFns::spec_index
(declare-fun vstd!slice.SliceAdditionalSpecFns.spec_index.? (Dcr Type Dcr Type Poly
  Poly
 ) Poly
)
(declare-fun vstd!slice.SliceAdditionalSpecFns.spec_index%default%.? (Dcr Type Dcr
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

;; Function-Decl vstd::seq::Seq::empty
(declare-fun vstd!seq.Seq.empty.? (Dcr Type) Poly)

;; Function-Decl vstd::seq::Seq::push
(declare-fun vstd!seq.Seq.push.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::seq::Seq::index
(declare-fun vstd!seq.Seq.index.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::std_specs::vec::vec_clone_trigger
(declare-fun vstd!std_specs.vec.vec_clone_trigger.? (Dcr Type Dcr Type Poly Poly)
 Bool
)

;; Function-Decl vstd::view::DeepView::deep_view
(declare-fun vstd!view.DeepView.deep_view.? (Dcr Type Poly) Poly)
(declare-fun vstd!view.DeepView.deep_view%default%.? (Dcr Type Poly) Poly)

;; Function-Decl vstd::seq::Seq::new
(declare-fun vstd!seq.Seq.new.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::seq::impl&%0::spec_index
(declare-fun vstd!seq.impl&%0.spec_index.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::array::array_view
(declare-fun vstd!array.array_view.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl vstd::raw_ptr::view_reverse_for_eq
(declare-fun vstd!raw_ptr.view_reverse_for_eq.? (Dcr Type Poly) Poly)

;; Function-Decl vstd::slice::spec_slice_len
(declare-fun vstd!slice.spec_slice_len.? (Dcr Type Poly) Int)

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

;; Function-Specs vstd::slice::SliceAdditionalSpecFns::spec_index
(declare-fun req%vstd!slice.SliceAdditionalSpecFns.spec_index. (Dcr Type Dcr Type Poly
  Poly
 ) Bool
)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly) (i! Poly)) (
   !
   (= (req%vstd!slice.SliceAdditionalSpecFns.spec_index. Self%&. Self%& T&. T& self! i!)
    (=>
     %%global_location_label%%1
     (and
      (<= 0 (%I i!))
      (< (%I i!) (vstd!seq.Seq.len.? T&. T& (vstd!view.View.view.? Self%&. Self%& self!)))
   )))
   :pattern ((req%vstd!slice.SliceAdditionalSpecFns.spec_index. Self%&. Self%& T&. T&
     self! i!
   ))
   :qid internal_req__vstd!slice.SliceAdditionalSpecFns.spec_index._definition
   :skolemid skolem_internal_req__vstd!slice.SliceAdditionalSpecFns.spec_index._definition
)))

;; Function-Axioms vstd::slice::SliceAdditionalSpecFns::spec_index
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly) (i! Poly)) (
   !
   (=>
    (and
     (has_type self! Self%&)
     (has_type i! INT)
    )
    (has_type (vstd!slice.SliceAdditionalSpecFns.spec_index.? Self%&. Self%& T&. T& self!
      i!
     ) T&
   ))
   :pattern ((vstd!slice.SliceAdditionalSpecFns.spec_index.? Self%&. Self%& T&. T& self!
     i!
   ))
   :qid internal_vstd!slice.SliceAdditionalSpecFns.spec_index.?_pre_post_definition
   :skolemid skolem_internal_vstd!slice.SliceAdditionalSpecFns.spec_index.?_pre_post_definition
)))

;; Function-Specs vstd::std_specs::vec::VecAdditionalSpecFns::spec_index
(declare-fun req%vstd!std_specs.vec.VecAdditionalSpecFns.spec_index. (Dcr Type Dcr
  Type Poly Poly
 ) Bool
)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly) (i! Poly)) (
   !
   (= (req%vstd!std_specs.vec.VecAdditionalSpecFns.spec_index. Self%&. Self%& T&. T& self!
     i!
    ) (=>
     %%global_location_label%%2
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

;; Function-Specs core::clone::impls::impl&%6::clone
(declare-fun ens%core!clone.impls.impl&%6.clone. (Poly Poly) Bool)
(assert
 (forall ((x! Poly) (res! Poly)) (!
   (= (ens%core!clone.impls.impl&%6.clone. x! res!) (and
     (ens%core!clone.Clone.clone. $ (UINT 8) x! res!)
     (= res! x!)
   ))
   :pattern ((ens%core!clone.impls.impl&%6.clone. x! res!))
   :qid internal_ens__core!clone.impls.impl&__6.clone._definition
   :skolemid skolem_internal_ens__core!clone.impls.impl&__6.clone._definition
)))
(assert
 (forall ((tmp%%$ Poly) (res$ Poly)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%1. (REF $) (UINT 8)))
     (has_type res$ (UINT 8))
    )
    (=>
     (closure_ens (FNDEF%core!clone.Clone.clone. $ (UINT 8)) $ (TYPE%tuple%1. (REF $) (UINT
        8
       )
      ) (F fndef_singleton) tmp%%$ res$
     )
     (let
      ((x$ (%I (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$)))))
      (= (%I res$) x$)
   )))
   :pattern ((closure_ens (FNDEF%core!clone.Clone.clone. $ (UINT 8)) $ (TYPE%tuple%1. (
       REF $
      ) (UINT 8)
     ) (F fndef_singleton) tmp%%$ res$
   ))
   :qid user_core__clone__impls__impl&%6__clone_1
   :skolemid skolem_user_core__clone__impls__impl&%6__clone_1
)))

;; Function-Specs core::clone::impls::impl&%9::clone
(declare-fun ens%core!clone.impls.impl&%9.clone. (Poly Poly) Bool)
(assert
 (forall ((x! Poly) (res! Poly)) (!
   (= (ens%core!clone.impls.impl&%9.clone. x! res!) (and
     (ens%core!clone.Clone.clone. $ (UINT 64) x! res!)
     (= res! x!)
   ))
   :pattern ((ens%core!clone.impls.impl&%9.clone. x! res!))
   :qid internal_ens__core!clone.impls.impl&__9.clone._definition
   :skolemid skolem_internal_ens__core!clone.impls.impl&__9.clone._definition
)))
(assert
 (forall ((tmp%%$ Poly) (res$ Poly)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%1. (REF $) (UINT 64)))
     (has_type res$ (UINT 64))
    )
    (=>
     (closure_ens (FNDEF%core!clone.Clone.clone. $ (UINT 64)) $ (TYPE%tuple%1. (REF $) (
        UINT 64
       )
      ) (F fndef_singleton) tmp%%$ res$
     )
     (let
      ((x$ (%I (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$)))))
      (= (%I res$) x$)
   )))
   :pattern ((closure_ens (FNDEF%core!clone.Clone.clone. $ (UINT 64)) $ (TYPE%tuple%1.
      (REF $) (UINT 64)
     ) (F fndef_singleton) tmp%%$ res$
   ))
   :qid user_core__clone__impls__impl&%9__clone_2
   :skolemid skolem_user_core__clone__impls__impl&%9__clone_2
)))

;; Function-Specs core::clone::impls::impl&%5::clone
(declare-fun ens%core!clone.impls.impl&%5.clone. (Poly Poly) Bool)
(assert
 (forall ((x! Poly) (res! Poly)) (!
   (= (ens%core!clone.impls.impl&%5.clone. x! res!) (and
     (ens%core!clone.Clone.clone. $ (UINT SZ) x! res!)
     (= res! x!)
   ))
   :pattern ((ens%core!clone.impls.impl&%5.clone. x! res!))
   :qid internal_ens__core!clone.impls.impl&__5.clone._definition
   :skolemid skolem_internal_ens__core!clone.impls.impl&__5.clone._definition
)))
(assert
 (forall ((tmp%%$ Poly) (res$ Poly)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%1. (REF $) (UINT SZ)))
     (has_type res$ (UINT SZ))
    )
    (=>
     (closure_ens (FNDEF%core!clone.Clone.clone. $ (UINT SZ)) $ (TYPE%tuple%1. (REF $) (
        UINT SZ
       )
      ) (F fndef_singleton) tmp%%$ res$
     )
     (let
      ((x$ (%I (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$)))))
      (= (%I res$) x$)
   )))
   :pattern ((closure_ens (FNDEF%core!clone.Clone.clone. $ (UINT SZ)) $ (TYPE%tuple%1.
      (REF $) (UINT SZ)
     ) (F fndef_singleton) tmp%%$ res$
   ))
   :qid user_core__clone__impls__impl&%5__clone_3
   :skolemid skolem_user_core__clone__impls__impl&%5__clone_3
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
   :qid user_core__clone__impls__impl&%21__clone_4
   :skolemid skolem_user_core__clone__impls__impl&%21__clone_4
)))

;; Function-Specs core::clone::impls::impl&%22::clone
(declare-fun ens%core!clone.impls.impl&%22.clone. (Poly Poly) Bool)
(assert
 (forall ((c! Poly) (res! Poly)) (!
   (= (ens%core!clone.impls.impl&%22.clone. c! res!) (and
     (ens%core!clone.Clone.clone. $ CHAR c! res!)
     (= res! c!)
   ))
   :pattern ((ens%core!clone.impls.impl&%22.clone. c! res!))
   :qid internal_ens__core!clone.impls.impl&__22.clone._definition
   :skolemid skolem_internal_ens__core!clone.impls.impl&__22.clone._definition
)))
(assert
 (forall ((tmp%%$ Poly) (res$ Poly)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%1. (REF $) CHAR))
     (has_type res$ CHAR)
    )
    (=>
     (closure_ens (FNDEF%core!clone.Clone.clone. $ CHAR) $ (TYPE%tuple%1. (REF $) CHAR)
      (F fndef_singleton) tmp%%$ res$
     )
     (let
      ((c$ (%I (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$)))))
      (= (%I res$) c$)
   )))
   :pattern ((closure_ens (FNDEF%core!clone.Clone.clone. $ CHAR) $ (TYPE%tuple%1. (REF $)
      CHAR
     ) (F fndef_singleton) tmp%%$ res$
   ))
   :qid user_core__clone__impls__impl&%22__clone_5
   :skolemid skolem_user_core__clone__impls__impl&%22__clone_5
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
   :qid user_core__clone__impls__impl&%3__clone_6
   :skolemid skolem_user_core__clone__impls__impl&%3__clone_6
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
   :qid user_builtin__impl&%4__clone_7
   :skolemid skolem_user_builtin__impl&%4__clone_7
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
   :qid user_builtin__impl&%2__clone_8
   :skolemid skolem_user_builtin__impl&%2__clone_8
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
    :qid user_vstd__std_specs__vec__axiom_spec_len_9
    :skolemid skolem_user_vstd__std_specs__vec__axiom_spec_len_9
))))

;; Function-Axioms vstd::seq::Seq::empty
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (has_type (vstd!seq.Seq.empty.? A&. A&) (TYPE%vstd!seq.Seq. A&. A&))
   :pattern ((vstd!seq.Seq.empty.? A&. A&))
   :qid internal_vstd!seq.Seq.empty.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.empty.?_pre_post_definition
)))

;; Function-Specs alloc::vec::impl&%0::new
(declare-fun ens%alloc!vec.impl&%0.new. (Dcr Type Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (v! Poly)) (!
   (= (ens%alloc!vec.impl&%0.new. T&. T& v!) (and
     (has_type v! (TYPE%alloc!vec.Vec. T&. T& $ ALLOCATOR_GLOBAL))
     (= (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. T&. T& $ ALLOCATOR_GLOBAL) v!) (vstd!seq.Seq.empty.?
       T&. T&
   ))))
   :pattern ((ens%alloc!vec.impl&%0.new. T&. T& v!))
   :qid internal_ens__alloc!vec.impl&__0.new._definition
   :skolemid skolem_internal_ens__alloc!vec.impl&__0.new._definition
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

;; Function-Specs alloc::vec::impl&%1::push
(declare-fun ens%alloc!vec.impl&%1.push. (Dcr Type Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (A&. Dcr) (A& Type) (pre%vec! Poly) (vec! Poly) (value!
    Poly
   )
  ) (!
   (= (ens%alloc!vec.impl&%1.push. T&. T& A&. A& pre%vec! vec! value!) (and
     (has_type vec! (TYPE%alloc!vec.Vec. T&. T& A&. A&))
     (= (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. T&. T& A&. A&) vec!) (vstd!seq.Seq.push.?
       T&. T& (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. T&. T& A&. A&) pre%vec!) value!
   ))))
   :pattern ((ens%alloc!vec.impl&%1.push. T&. T& A&. A& pre%vec! vec! value!))
   :qid internal_ens__alloc!vec.impl&__1.push._definition
   :skolemid skolem_internal_ens__alloc!vec.impl&__1.push._definition
)))

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

;; Function-Axioms vstd::std_specs::vec::vec_clone_trigger
(assert
 (fuel_bool_default fuel%vstd!std_specs.vec.vec_clone_trigger.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.vec.vec_clone_trigger.)
  (forall ((T&. Dcr) (T& Type) (A&. Dcr) (A& Type) (v1! Poly) (v2! Poly)) (!
    (= (vstd!std_specs.vec.vec_clone_trigger.? T&. T& A&. A& v1! v2!) true)
    :pattern ((vstd!std_specs.vec.vec_clone_trigger.? T&. T& A&. A& v1! v2!))
    :qid internal_vstd!std_specs.vec.vec_clone_trigger.?_definition
    :skolemid skolem_internal_vstd!std_specs.vec.vec_clone_trigger.?_definition
))))

;; Function-Specs alloc::vec::impl&%11::clone
(declare-fun ens%alloc!vec.impl&%11.clone. (Dcr Type Dcr Type Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (A&. Dcr) (A& Type) (vec! Poly) (res! Poly)) (!
   (= (ens%alloc!vec.impl&%11.clone. T&. T& A&. A& vec! res!) (and
     (ens%core!clone.Clone.clone. $ (TYPE%alloc!vec.Vec. T&. T& A&. A&) vec! res!)
     (= (vstd!std_specs.vec.spec_vec_len.? T&. T& A&. A& res!) (vstd!std_specs.vec.spec_vec_len.?
       T&. T& A&. A& vec!
     ))
     (forall ((i$ Poly)) (!
       (=>
        (has_type i$ INT)
        (=>
         (and
          (<= 0 (%I i$))
          (< (%I i$) (vstd!std_specs.vec.spec_vec_len.? T&. T& A&. A& vec!))
         )
         (closure_ens (FNDEF%core!clone.Clone.clone. T&. T&) $ (TYPE%tuple%1. (REF T&.) T&)
          (F fndef_singleton) (Poly%tuple%1. (tuple%1./tuple%1 (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.?
              $ (TYPE%alloc!vec.Vec. T&. T& A&. A&) vec!
             ) i$
           ))
          ) (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. T&. T&
             A&. A&
            ) res!
           ) i$
       ))))
       :pattern ((vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
           T&. T& A&. A&
          ) vec!
         ) i$
       ))
       :pattern ((tuple%1./tuple%1 (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
            T&. T& A&. A&
           ) vec!
          ) i$
       )))
       :pattern ((vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
           T&. T& A&. A&
          ) res!
         ) i$
       ))
       :pattern ((closure_ens (FNDEF%core!clone.Clone.clone. T&. T&) $ (TYPE%tuple%1. (REF T&.)
          T&
         ) (F fndef_singleton) (Poly%tuple%1. (tuple%1./tuple%1 (vstd!seq.Seq.index.? T&. T&
            (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. T&. T& A&. A&) vec!) i$
          ))
         ) (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. T&. T&
            A&. A&
           ) res!
          ) i$
       )))
       :qid user_alloc__vec__impl&%11__clone_10
       :skolemid skolem_user_alloc__vec__impl&%11__clone_10
     ))
     (vstd!std_specs.vec.vec_clone_trigger.? T&. T& A&. A& vec! res!)
     (=>
      (ext_eq false (TYPE%vstd!seq.Seq. T&. T&) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
         T&. T& A&. A&
        ) vec!
       ) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. T&. T& A&. A&) res!)
      )
      (= (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. T&. T& A&. A&) vec!) (vstd!view.View.view.?
        $ (TYPE%alloc!vec.Vec. T&. T& A&. A&) res!
   )))))
   :pattern ((ens%alloc!vec.impl&%11.clone. T&. T& A&. A& vec! res!))
   :qid internal_ens__alloc!vec.impl&__11.clone._definition
   :skolemid skolem_internal_ens__alloc!vec.impl&__11.clone._definition
)))
(assert
 (forall ((tmp%%$ Poly) (res$ Poly) (T&. Dcr) (T& Type) (A&. Dcr) (A& Type)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%1. (REF $) (TYPE%alloc!vec.Vec. T&. T& A&. A&)))
     (has_type res$ (TYPE%alloc!vec.Vec. T&. T& A&. A&))
    )
    (=>
     (closure_ens (FNDEF%core!clone.Clone.clone. $ (TYPE%alloc!vec.Vec. T&. T& A&. A&))
      $ (TYPE%tuple%1. (REF $) (TYPE%alloc!vec.Vec. T&. T& A&. A&)) (F fndef_singleton)
      tmp%%$ res$
     )
     (let
      ((vec$ (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$))))
      (and
       (and
        (and
         (= (vstd!std_specs.vec.spec_vec_len.? T&. T& A&. A& res$) (vstd!std_specs.vec.spec_vec_len.?
           T&. T& A&. A& vec$
         ))
         (forall ((i$ Poly)) (!
           (=>
            (has_type i$ INT)
            (=>
             (and
              (<= 0 (%I i$))
              (< (%I i$) (vstd!std_specs.vec.spec_vec_len.? T&. T& A&. A& vec$))
             )
             (closure_ens (FNDEF%core!clone.Clone.clone. T&. T&) $ (TYPE%tuple%1. (REF T&.) T&)
              (F fndef_singleton) (Poly%tuple%1. (tuple%1./tuple%1 (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.?
                  $ (TYPE%alloc!vec.Vec. T&. T& A&. A&) vec$
                 ) i$
               ))
              ) (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. T&. T&
                 A&. A&
                ) res$
               ) i$
           ))))
           :pattern ((vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
               T&. T& A&. A&
              ) vec$
             ) i$
           ))
           :pattern ((tuple%1./tuple%1 (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
                T&. T& A&. A&
               ) vec$
              ) i$
           )))
           :pattern ((vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
               T&. T& A&. A&
              ) res$
             ) i$
           ))
           :pattern ((closure_ens (FNDEF%core!clone.Clone.clone. T&. T&) $ (TYPE%tuple%1. (REF T&.)
              T&
             ) (F fndef_singleton) (Poly%tuple%1. (tuple%1./tuple%1 (vstd!seq.Seq.index.? T&. T&
                (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. T&. T& A&. A&) vec$) i$
              ))
             ) (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. T&. T&
                A&. A&
               ) res$
              ) i$
           )))
           :qid user_alloc__vec__impl&%11__clone_11
           :skolemid skolem_user_alloc__vec__impl&%11__clone_11
        )))
        (vstd!std_specs.vec.vec_clone_trigger.? T&. T& A&. A& vec$ res$)
       )
       (=>
        (ext_eq false (TYPE%vstd!seq.Seq. T&. T&) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
           T&. T& A&. A&
          ) vec$
         ) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. T&. T& A&. A&) res$)
        )
        (= (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. T&. T& A&. A&) vec$) (vstd!view.View.view.?
          $ (TYPE%alloc!vec.Vec. T&. T& A&. A&) res$
   )))))))
   :pattern ((closure_ens (FNDEF%core!clone.Clone.clone. $ (TYPE%alloc!vec.Vec. T&. T& A&.
       A&
      )
     ) $ (TYPE%tuple%1. (REF $) (TYPE%alloc!vec.Vec. T&. T& A&. A&)) (F fndef_singleton)
     tmp%%$ res$
   ))
   :qid user_alloc__vec__impl&%11__clone_12
   :skolemid skolem_user_alloc__vec__impl&%11__clone_12
)))

;; Function-Axioms vstd::view::DeepView::deep_view
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd!view.DeepView.deep_view.? Self%&. Self%& self!) (proj%vstd!view.DeepView./V
      Self%&. Self%&
   )))
   :pattern ((vstd!view.DeepView.deep_view.? Self%&. Self%& self!))
   :qid internal_vstd!view.DeepView.deep_view.?_pre_post_definition
   :skolemid skolem_internal_vstd!view.DeepView.deep_view.?_pre_post_definition
)))

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

;; Function-Specs vstd::seq::impl&%0::spec_index
(declare-fun req%vstd!seq.impl&%0.spec_index. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
   (= (req%vstd!seq.impl&%0.spec_index. A&. A& self! i!) (=>
     %%global_location_label%%4
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

;; Function-Axioms vstd::view::impl&%9::deep_view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%9.deep_view.)
)
(declare-fun %%lambda%%0 (Dcr Type Poly Dcr Type) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 Dcr) (%%hole%%4
    Type
   ) (i$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4) i$)
    (vstd!view.DeepView.deep_view.? %%hole%%3 %%hole%%4 (vstd!seq.Seq.index.? %%hole%%0
      %%hole%%1 %%hole%%2 i$
   )))
   :pattern ((%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4)
     i$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%9.deep_view.)
  (forall ((T&. Dcr) (T& Type) (A&. Dcr) (A& Type) (self! Poly)) (!
    (=>
     (and
      (tr_bound%vstd!view.DeepView. T&. T&)
      (tr_bound%core!alloc.Allocator. A&. A&)
     )
     (= (vstd!view.DeepView.deep_view.? $ (TYPE%alloc!vec.Vec. T&. T& A&. A&) self!) (let
       ((v$ (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. T&. T& A&. A&) self!)))
       (vstd!seq.Seq.new.? (proj%%vstd!view.DeepView./V T&. T&) (proj%vstd!view.DeepView./V
         T&. T&
        ) $ (TYPE%fun%1. $ INT (proj%%vstd!view.DeepView./V T&. T&) (proj%vstd!view.DeepView./V
          T&. T&
         )
        ) (I (vstd!seq.Seq.len.? T&. T& v$)) (Poly%fun%1. (mk_fun (%%lambda%%0 T&. T& v$ T&.
           T&
    )))))))
    :pattern ((vstd!view.DeepView.deep_view.? $ (TYPE%alloc!vec.Vec. T&. T& A&. A&) self!))
    :qid internal_vstd!view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd!view.DeepView.deep_view.?_definition
))))

;; Broadcast vstd::std_specs::vec::vec_clone_deep_view_proof
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.vec.vec_clone_deep_view_proof.)
  (forall ((T&. Dcr) (T& Type) (A&. Dcr) (A& Type) (v1! Poly) (v2! Poly)) (!
    (=>
     (and
      (has_type v1! (TYPE%alloc!vec.Vec. T&. T& A&. A&))
      (has_type v2! (TYPE%alloc!vec.Vec. T&. T& A&. A&))
     )
     (=>
      (and
       (and
        (and
         (tr_bound%vstd!view.DeepView. T&. T&)
         (tr_bound%core!alloc.Allocator. A&. A&)
        )
        (vstd!std_specs.vec.vec_clone_trigger.? T&. T& A&. A& v1! v2!)
       )
       (ext_eq false (TYPE%vstd!seq.Seq. (proj%%vstd!view.DeepView./V T&. T&) (proj%vstd!view.DeepView./V
          T&. T&
         )
        ) (vstd!view.DeepView.deep_view.? $ (TYPE%alloc!vec.Vec. T&. T& A&. A&) v1!) (vstd!view.DeepView.deep_view.?
         $ (TYPE%alloc!vec.Vec. T&. T& A&. A&) v2!
      )))
      (= (vstd!view.DeepView.deep_view.? $ (TYPE%alloc!vec.Vec. T&. T& A&. A&) v1!) (vstd!view.DeepView.deep_view.?
        $ (TYPE%alloc!vec.Vec. T&. T& A&. A&) v2!
    ))))
    :pattern ((vstd!std_specs.vec.vec_clone_trigger.? T&. T& A&. A& v1! v2!))
    :qid user_vstd__std_specs__vec__vec_clone_deep_view_proof_13
    :skolemid skolem_user_vstd__std_specs__vec__vec_clone_deep_view_proof_13
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
    :qid user_vstd__std_specs__vec__axiom_vec_index_decreases_14
    :skolemid skolem_user_vstd__std_specs__vec__axiom_vec_index_decreases_14
))))

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
   :qid user_alloc__boxed__impl&%12__clone_15
   :skolemid skolem_user_alloc__boxed__impl&%12__clone_15
)))

;; Function-Axioms vstd::array::array_view
(assert
 (fuel_bool_default fuel%vstd!array.array_view.)
)
(declare-fun %%lambda%%1 (Dcr Type Dcr Type %%Function%%) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Dcr) (%%hole%%3 Type) (%%hole%%4
    %%Function%%
   ) (i$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4) i$)
    (array_index %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 i$)
   )
   :pattern ((%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4)
     i$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd!array.array_view.)
  (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type) (a! Poly)) (!
    (= (vstd!array.array_view.? T&. T& N&. N& a!) (vstd!seq.Seq.new.? T&. T& $ (TYPE%fun%1.
       $ INT T&. T&
      ) (I (const_int N&)) (Poly%fun%1. (mk_fun (%%lambda%%1 T&. T& N&. N& (%Poly%array%. a!))))
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
    :qid user_vstd__array__lemma_array_index_16
    :skolemid skolem_user_vstd__array__lemma_array_index_16
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
    :qid user_vstd__array__array_len_matches_n_17
    :skolemid skolem_user_vstd__array__array_len_matches_n_17
))))

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
    :qid user_vstd__raw_ptr__ptrs_mut_eq_18
    :skolemid skolem_user_vstd__raw_ptr__ptrs_mut_eq_18
))))

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
    :qid user_vstd__seq__axiom_seq_index_decreases_19
    :skolemid skolem_user_vstd__seq__axiom_seq_index_decreases_19
))))

;; Broadcast vstd::seq::axiom_seq_empty
(assert
 (=>
  (fuel_bool fuel%vstd!seq.axiom_seq_empty.)
  (forall ((A&. Dcr) (A& Type)) (!
    (= (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.empty.? A&. A&)) 0)
    :pattern ((vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.empty.? A&. A&)))
    :qid user_vstd__seq__axiom_seq_empty_20
    :skolemid skolem_user_vstd__seq__axiom_seq_empty_20
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
    :qid user_vstd__seq__axiom_seq_new_len_21
    :skolemid skolem_user_vstd__seq__axiom_seq_new_len_21
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
    :qid user_vstd__seq__axiom_seq_new_index_22
    :skolemid skolem_user_vstd__seq__axiom_seq_new_index_22
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
    :qid user_vstd__seq__axiom_seq_push_len_23
    :skolemid skolem_user_vstd__seq__axiom_seq_push_len_23
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
    :qid user_vstd__seq__axiom_seq_push_index_same_24
    :skolemid skolem_user_vstd__seq__axiom_seq_push_index_same_24
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
    :qid user_vstd__seq__axiom_seq_push_index_different_25
    :skolemid skolem_user_vstd__seq__axiom_seq_push_index_different_25
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
         :qid user_vstd__seq__axiom_seq_ext_equal_26
         :skolemid skolem_user_vstd__seq__axiom_seq_ext_equal_26
    )))))
    :pattern ((ext_eq false (TYPE%vstd!seq.Seq. A&. A&) s1! s2!))
    :qid user_vstd__seq__axiom_seq_ext_equal_27
    :skolemid skolem_user_vstd__seq__axiom_seq_ext_equal_27
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
         :qid user_vstd__seq__axiom_seq_ext_equal_deep_28
         :skolemid skolem_user_vstd__seq__axiom_seq_ext_equal_deep_28
    )))))
    :pattern ((ext_eq true (TYPE%vstd!seq.Seq. A&. A&) s1! s2!))
    :qid user_vstd__seq__axiom_seq_ext_equal_deep_29
    :skolemid skolem_user_vstd__seq__axiom_seq_ext_equal_deep_29
))))

;; Function-Axioms vstd::slice::spec_slice_len
(assert
 (forall ((T&. Dcr) (T& Type) (slice! Poly)) (!
   (=>
    (has_type slice! (SLICE T&. T&))
    (uInv SZ (vstd!slice.spec_slice_len.? T&. T& slice!))
   )
   :pattern ((vstd!slice.spec_slice_len.? T&. T& slice!))
   :qid internal_vstd!slice.spec_slice_len.?_pre_post_definition
   :skolemid skolem_internal_vstd!slice.spec_slice_len.?_pre_post_definition
)))

;; Broadcast vstd::slice::axiom_spec_len
(assert
 (=>
  (fuel_bool fuel%vstd!slice.axiom_spec_len.)
  (forall ((T&. Dcr) (T& Type) (slice! Poly)) (!
    (=>
     (has_type slice! (SLICE T&. T&))
     (= (vstd!slice.spec_slice_len.? T&. T& slice!) (vstd!seq.Seq.len.? T&. T& (vstd!view.View.view.?
        $ (SLICE T&. T&) slice!
    ))))
    :pattern ((vstd!slice.spec_slice_len.? T&. T& slice!))
    :qid user_vstd__slice__axiom_spec_len_30
    :skolemid skolem_user_vstd__slice__axiom_spec_len_30
))))

;; Function-Axioms vstd::array::impl&%1::deep_view
(assert
 (fuel_bool_default fuel%vstd!array.impl&%1.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!array.impl&%1.deep_view.)
  (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type) (self! Poly)) (!
    (=>
     (and
      (uInv SZ (const_int N&))
      (tr_bound%vstd!view.DeepView. T&. T&)
     )
     (= (vstd!view.DeepView.deep_view.? $ (ARRAY T&. T& N&. N&) self!) (let
       ((v$ (vstd!view.View.view.? $ (ARRAY T&. T& N&. N&) self!)))
       (vstd!seq.Seq.new.? (proj%%vstd!view.DeepView./V T&. T&) (proj%vstd!view.DeepView./V
         T&. T&
        ) $ (TYPE%fun%1. $ INT (proj%%vstd!view.DeepView./V T&. T&) (proj%vstd!view.DeepView./V
          T&. T&
         )
        ) (I (vstd!seq.Seq.len.? T&. T& v$)) (Poly%fun%1. (mk_fun (%%lambda%%0 T&. T& v$ T&.
           T&
    )))))))
    :pattern ((vstd!view.DeepView.deep_view.? $ (ARRAY T&. T& N&. N&) self!))
    :qid internal_vstd!view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd!view.DeepView.deep_view.?_definition
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

;; Function-Axioms vstd::slice::impl&%1::deep_view
(assert
 (fuel_bool_default fuel%vstd!slice.impl&%1.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!slice.impl&%1.deep_view.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (=>
     (tr_bound%vstd!view.DeepView. T&. T&)
     (= (vstd!view.DeepView.deep_view.? $ (SLICE T&. T&) self!) (let
       ((v$ (vstd!view.View.view.? $ (SLICE T&. T&) self!)))
       (vstd!seq.Seq.new.? (proj%%vstd!view.DeepView./V T&. T&) (proj%vstd!view.DeepView./V
         T&. T&
        ) $ (TYPE%fun%1. $ INT (proj%%vstd!view.DeepView./V T&. T&) (proj%vstd!view.DeepView./V
          T&. T&
         )
        ) (I (vstd!seq.Seq.len.? T&. T& v$)) (Poly%fun%1. (mk_fun (%%lambda%%0 T&. T& v$ T&.
           T&
    )))))))
    :pattern ((vstd!view.DeepView.deep_view.? $ (SLICE T&. T&) self!))
    :qid internal_vstd!view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd!view.DeepView.deep_view.?_definition
))))

;; Function-Axioms vstd::slice::impl&%2::spec_index
(assert
 (fuel_bool_default fuel%vstd!slice.impl&%2.spec_index.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!slice.impl&%2.spec_index.)
  (forall ((T&. Dcr) (T& Type) (self! Poly) (i! Poly)) (!
    (= (vstd!slice.SliceAdditionalSpecFns.spec_index.? $ (SLICE T&. T&) T&. T& self! i!)
     (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (SLICE T&. T&) self!) i!)
    )
    :pattern ((vstd!slice.SliceAdditionalSpecFns.spec_index.? $ (SLICE T&. T&) T&. T& self!
      i!
    ))
    :qid internal_vstd!slice.SliceAdditionalSpecFns.spec_index.?_definition
    :skolemid skolem_internal_vstd!slice.SliceAdditionalSpecFns.spec_index.?_definition
))))

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

;; Function-Axioms vstd::view::impl&%1::deep_view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%1.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%1.deep_view.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (=>
     (tr_bound%vstd!view.DeepView. A&. A&)
     (= (vstd!view.DeepView.deep_view.? (REF A&.) A& self!) (vstd!view.DeepView.deep_view.?
       A&. A& self!
    )))
    :pattern ((vstd!view.DeepView.deep_view.? (REF A&.) A& self!))
    :qid internal_vstd!view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd!view.DeepView.deep_view.?_definition
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

;; Function-Axioms vstd::view::impl&%3::deep_view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%3.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%3.deep_view.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (=>
     (tr_bound%vstd!view.DeepView. A&. A&)
     (= (vstd!view.DeepView.deep_view.? (BOX $ ALLOCATOR_GLOBAL A&.) A& self!) (vstd!view.DeepView.deep_view.?
       A&. A& self!
    )))
    :pattern ((vstd!view.DeepView.deep_view.? (BOX $ ALLOCATOR_GLOBAL A&.) A& self!))
    :qid internal_vstd!view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd!view.DeepView.deep_view.?_definition
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

;; Function-Axioms vstd::view::impl&%5::deep_view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%5.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%5.deep_view.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (=>
     (tr_bound%vstd!view.DeepView. A&. A&)
     (= (vstd!view.DeepView.deep_view.? (RC $ ALLOCATOR_GLOBAL A&.) A& self!) (vstd!view.DeepView.deep_view.?
       A&. A& self!
    )))
    :pattern ((vstd!view.DeepView.deep_view.? (RC $ ALLOCATOR_GLOBAL A&.) A& self!))
    :qid internal_vstd!view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd!view.DeepView.deep_view.?_definition
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

;; Function-Axioms vstd::view::impl&%7::deep_view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%7.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%7.deep_view.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (=>
     (tr_bound%vstd!view.DeepView. A&. A&)
     (= (vstd!view.DeepView.deep_view.? (ARC $ ALLOCATOR_GLOBAL A&.) A& self!) (vstd!view.DeepView.deep_view.?
       A&. A& self!
    )))
    :pattern ((vstd!view.DeepView.deep_view.? (ARC $ ALLOCATOR_GLOBAL A&.) A& self!))
    :qid internal_vstd!view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd!view.DeepView.deep_view.?_definition
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

;; Function-Axioms vstd::view::impl&%11::deep_view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%11.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%11.deep_view.)
  (forall ((self! Poly)) (!
    (= (vstd!view.DeepView.deep_view.? $ TYPE%tuple%0. self!) self!)
    :pattern ((vstd!view.DeepView.deep_view.? $ TYPE%tuple%0. self!))
    :qid internal_vstd!view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd!view.DeepView.deep_view.?_definition
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

;; Function-Axioms vstd::view::impl&%13::deep_view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%13.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%13.deep_view.)
  (forall ((self! Poly)) (!
    (= (vstd!view.DeepView.deep_view.? $ BOOL self!) self!)
    :pattern ((vstd!view.DeepView.deep_view.? $ BOOL self!))
    :qid internal_vstd!view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd!view.DeepView.deep_view.?_definition
))))

;; Function-Axioms vstd::view::impl&%14::view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%14.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%14.view.)
  (forall ((self! Poly)) (!
    (= (vstd!view.View.view.? $ (UINT 8) self!) self!)
    :pattern ((vstd!view.View.view.? $ (UINT 8) self!))
    :qid internal_vstd!view.View.view.?_definition
    :skolemid skolem_internal_vstd!view.View.view.?_definition
))))

;; Function-Axioms vstd::view::impl&%15::deep_view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%15.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%15.deep_view.)
  (forall ((self! Poly)) (!
    (= (vstd!view.DeepView.deep_view.? $ (UINT 8) self!) self!)
    :pattern ((vstd!view.DeepView.deep_view.? $ (UINT 8) self!))
    :qid internal_vstd!view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd!view.DeepView.deep_view.?_definition
))))

;; Function-Axioms vstd::view::impl&%20::view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%20.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%20.view.)
  (forall ((self! Poly)) (!
    (= (vstd!view.View.view.? $ (UINT 64) self!) self!)
    :pattern ((vstd!view.View.view.? $ (UINT 64) self!))
    :qid internal_vstd!view.View.view.?_definition
    :skolemid skolem_internal_vstd!view.View.view.?_definition
))))

;; Function-Axioms vstd::view::impl&%21::deep_view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%21.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%21.deep_view.)
  (forall ((self! Poly)) (!
    (= (vstd!view.DeepView.deep_view.? $ (UINT 64) self!) self!)
    :pattern ((vstd!view.DeepView.deep_view.? $ (UINT 64) self!))
    :qid internal_vstd!view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd!view.DeepView.deep_view.?_definition
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

;; Function-Axioms vstd::view::impl&%25::deep_view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%25.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%25.deep_view.)
  (forall ((self! Poly)) (!
    (= (vstd!view.DeepView.deep_view.? $ (UINT SZ) self!) self!)
    :pattern ((vstd!view.DeepView.deep_view.? $ (UINT SZ) self!))
    :qid internal_vstd!view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd!view.DeepView.deep_view.?_definition
))))

;; Function-Axioms vstd::view::impl&%38::view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%38.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%38.view.)
  (forall ((self! Poly)) (!
    (= (vstd!view.View.view.? $ CHAR self!) self!)
    :pattern ((vstd!view.View.view.? $ CHAR self!))
    :qid internal_vstd!view.View.view.?_definition
    :skolemid skolem_internal_vstd!view.View.view.?_definition
))))

;; Function-Axioms vstd::view::impl&%39::deep_view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%39.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%39.deep_view.)
  (forall ((self! Poly)) (!
    (= (vstd!view.DeepView.deep_view.? $ CHAR self!) self!)
    :pattern ((vstd!view.DeepView.deep_view.? $ CHAR self!))
    :qid internal_vstd!view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd!view.DeepView.deep_view.?_definition
))))

;; Function-Axioms vstd::view::impl&%40::view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%40.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%40.view.)
  (forall ((A0&. Dcr) (A0& Type) (self! Poly)) (!
    (=>
     (tr_bound%vstd!view.View. A0&. A0&)
     (= (vstd!view.View.view.? $ (TYPE%tuple%1. A0&. A0&) self!) (Poly%tuple%1. (tuple%1./tuple%1
        (vstd!view.View.view.? A0&. A0& (tuple%1./tuple%1/0 (%Poly%tuple%1. self!)))
    ))))
    :pattern ((vstd!view.View.view.? $ (TYPE%tuple%1. A0&. A0&) self!))
    :qid internal_vstd!view.View.view.?_definition
    :skolemid skolem_internal_vstd!view.View.view.?_definition
))))

;; Function-Axioms vstd::view::impl&%41::deep_view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%41.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%41.deep_view.)
  (forall ((A0&. Dcr) (A0& Type) (self! Poly)) (!
    (=>
     (tr_bound%vstd!view.DeepView. A0&. A0&)
     (= (vstd!view.DeepView.deep_view.? $ (TYPE%tuple%1. A0&. A0&) self!) (Poly%tuple%1.
       (tuple%1./tuple%1 (vstd!view.DeepView.deep_view.? A0&. A0& (tuple%1./tuple%1/0 (%Poly%tuple%1.
           self!
    )))))))
    :pattern ((vstd!view.DeepView.deep_view.? $ (TYPE%tuple%1. A0&. A0&) self!))
    :qid internal_vstd!view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd!view.DeepView.deep_view.?_definition
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
    (and
     (uInv SZ (const_int N&))
     (tr_bound%vstd!view.DeepView. T&. T&)
    )
    (tr_bound%vstd!view.DeepView. $ (ARRAY T&. T& N&. N&))
   )
   :pattern ((tr_bound%vstd!view.DeepView. $ (ARRAY T&. T& N&. N&)))
   :qid internal_vstd__array__impl&__1_trait_impl_definition
   :skolemid skolem_internal_vstd__array__impl&__1_trait_impl_definition
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
 (forall ((T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%vstd!view.DeepView. T&. T&)
    (tr_bound%vstd!view.DeepView. $ (SLICE T&. T&))
   )
   :pattern ((tr_bound%vstd!view.DeepView. $ (SLICE T&. T&)))
   :qid internal_vstd__slice__impl&__1_trait_impl_definition
   :skolemid skolem_internal_vstd__slice__impl&__1_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%vstd!slice.SliceAdditionalSpecFns. $ (SLICE T&. T&) T&. T&)
   :pattern ((tr_bound%vstd!slice.SliceAdditionalSpecFns. $ (SLICE T&. T&) T&. T&))
   :qid internal_vstd__slice__impl&__2_trait_impl_definition
   :skolemid skolem_internal_vstd__slice__impl&__2_trait_impl_definition
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
    (tr_bound%vstd!view.DeepView. A&. A&)
    (tr_bound%vstd!view.DeepView. (REF A&.) A&)
   )
   :pattern ((tr_bound%vstd!view.DeepView. (REF A&.) A&))
   :qid internal_vstd__view__impl&__1_trait_impl_definition
   :skolemid skolem_internal_vstd__view__impl&__1_trait_impl_definition
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
    (tr_bound%vstd!view.DeepView. A&. A&)
    (tr_bound%vstd!view.DeepView. (BOX $ ALLOCATOR_GLOBAL A&.) A&)
   )
   :pattern ((tr_bound%vstd!view.DeepView. (BOX $ ALLOCATOR_GLOBAL A&.) A&))
   :qid internal_vstd__view__impl&__3_trait_impl_definition
   :skolemid skolem_internal_vstd__view__impl&__3_trait_impl_definition
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
    (tr_bound%vstd!view.DeepView. A&. A&)
    (tr_bound%vstd!view.DeepView. (RC $ ALLOCATOR_GLOBAL A&.) A&)
   )
   :pattern ((tr_bound%vstd!view.DeepView. (RC $ ALLOCATOR_GLOBAL A&.) A&))
   :qid internal_vstd__view__impl&__5_trait_impl_definition
   :skolemid skolem_internal_vstd__view__impl&__5_trait_impl_definition
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
 (forall ((A&. Dcr) (A& Type)) (!
   (=>
    (tr_bound%vstd!view.DeepView. A&. A&)
    (tr_bound%vstd!view.DeepView. (ARC $ ALLOCATOR_GLOBAL A&.) A&)
   )
   :pattern ((tr_bound%vstd!view.DeepView. (ARC $ ALLOCATOR_GLOBAL A&.) A&))
   :qid internal_vstd__view__impl&__7_trait_impl_definition
   :skolemid skolem_internal_vstd__view__impl&__7_trait_impl_definition
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
 (forall ((T&. Dcr) (T& Type) (A&. Dcr) (A& Type)) (!
   (=>
    (and
     (tr_bound%vstd!view.DeepView. T&. T&)
     (tr_bound%core!alloc.Allocator. A&. A&)
    )
    (tr_bound%vstd!view.DeepView. $ (TYPE%alloc!vec.Vec. T&. T& A&. A&))
   )
   :pattern ((tr_bound%vstd!view.DeepView. $ (TYPE%alloc!vec.Vec. T&. T& A&. A&)))
   :qid internal_vstd__view__impl&__9_trait_impl_definition
   :skolemid skolem_internal_vstd__view__impl&__9_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!view.View. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!view.DeepView. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!view.View. $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!view.DeepView. $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!view.View. $ (UINT 8))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!view.DeepView. $ (UINT 8))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!view.View. $ (UINT 64))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!view.DeepView. $ (UINT 64))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!view.View. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!view.DeepView. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!view.View. $ CHAR)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!view.DeepView. $ CHAR)
)

;; Trait-Impl-Axiom
(assert
 (forall ((A0&. Dcr) (A0& Type)) (!
   (=>
    (tr_bound%vstd!view.View. A0&. A0&)
    (tr_bound%vstd!view.View. $ (TYPE%tuple%1. A0&. A0&))
   )
   :pattern ((tr_bound%vstd!view.View. $ (TYPE%tuple%1. A0&. A0&)))
   :qid internal_vstd__view__impl&__40_trait_impl_definition
   :skolemid skolem_internal_vstd__view__impl&__40_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((A0&. Dcr) (A0& Type)) (!
   (=>
    (tr_bound%vstd!view.DeepView. A0&. A0&)
    (tr_bound%vstd!view.DeepView. $ (TYPE%tuple%1. A0&. A0&))
   )
   :pattern ((tr_bound%vstd!view.DeepView. $ (TYPE%tuple%1. A0&. A0&)))
   :qid internal_vstd__view__impl&__41_trait_impl_definition
   :skolemid skolem_internal_vstd__view__impl&__41_trait_impl_definition
)))

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

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ CHAR)
)

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type)) (!
   (=>
    (and
     (uInv SZ (const_int N&))
     (tr_bound%core!clone.Clone. T&. T&)
    )
    (tr_bound%core!clone.Clone. $ (ARRAY T&. T& N&. N&))
   )
   :pattern ((tr_bound%core!clone.Clone. $ (ARRAY T&. T& N&. N&)))
   :qid internal_core__array__impl&__20_trait_impl_definition
   :skolemid skolem_internal_core__array__impl&__20_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!clone.Clone. (CONST_PTR $) (PTR T&. T&))
   :pattern ((tr_bound%core!clone.Clone. (CONST_PTR $) (PTR T&. T&)))
   :qid internal_core__clone__impls__impl&__1_trait_impl_definition
   :skolemid skolem_internal_core__clone__impls__impl&__1_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ (UINT 8))
)

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
   (tr_bound%core!clone.Clone. $ (PTR T&. T&))
   :pattern ((tr_bound%core!clone.Clone. $ (PTR T&. T&)))
   :qid internal_core__clone__impls__impl&__2_trait_impl_definition
   :skolemid skolem_internal_core__clone__impls__impl&__2_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ (UINT 64))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ ALLOCATOR_GLOBAL)
)

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (A&. Dcr) (A& Type)) (!
   (=>
    (and
     (tr_bound%core!clone.Clone. T&. T&)
     (tr_bound%core!alloc.Allocator. A&. A&)
     (tr_bound%core!clone.Clone. A&. A&)
    )
    (tr_bound%core!clone.Clone. $ (TYPE%alloc!vec.Vec. T&. T& A&. A&))
   )
   :pattern ((tr_bound%core!clone.Clone. $ (TYPE%alloc!vec.Vec. T&. T& A&. A&)))
   :qid internal_alloc__vec__impl&__11_trait_impl_definition
   :skolemid skolem_internal_alloc__vec__impl&__11_trait_impl_definition
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

;; Function-Def test_crate::X::clone
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/std-a9a93a7619503a6c-clone_for_std_types/test.rs:48:5: 48:28 (#0)
(get-info :all-statistics)
(push)
 (declare-const %return! Poly)
 (declare-const self! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! TYPE%test_crate!X.)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ TYPE%test_crate!X.)
)

;; Function-Def test_crate::test_bool
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/std-a9a93a7619503a6c-clone_for_std_types/test.rs:18:1: 18:22 (#0)
(get-info :all-statistics)
(push)
 (declare-const v! Bool)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Bool)
 (declare-const w@ Bool)
 (assert
  fuel_defaults
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (ens%core!clone.impls.impl&%21.clone. (B v!) tmp%1)
    (=>
     (= w@ (%B tmp%1))
     (=>
      (= tmp%2 (= w@ v!))
      (=>
       %%location_label%%0
       tmp%2
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::test_bool_vec
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/std-a9a93a7619503a6c-clone_for_std_types/test.rs:23:1: 23:31 (#0)
(get-info :all-statistics)
(push)
 (declare-const v! alloc!vec.Vec<bool./allocator_global%.>.)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Bool)
 (declare-const w@ alloc!vec.Vec<bool./allocator_global%.>.)
 (assert
  fuel_defaults
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (ens%alloc!vec.impl&%11.clone. $ BOOL $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<bool./allocator_global%.>.
      v!
     ) tmp%1
    )
    (=>
     (= w@ (%Poly%alloc!vec.Vec<bool./allocator_global%.>. tmp%1))
     (=>
      (= tmp%2 (ext_eq false (TYPE%vstd!seq.Seq. $ BOOL) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
          $ BOOL $ ALLOCATOR_GLOBAL
         ) (Poly%alloc!vec.Vec<bool./allocator_global%.>. w@)
        ) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. $ BOOL $ ALLOCATOR_GLOBAL) (Poly%alloc!vec.Vec<bool./allocator_global%.>.
          v!
      ))))
      (=>
       %%location_label%%0
       tmp%2
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::test_char
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/std-a9a93a7619503a6c-clone_for_std_types/test.rs:28:1: 28:22 (#0)
(get-info :all-statistics)
(push)
 (declare-const v! Int)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Bool)
 (declare-const w@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (charInv v!)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (ens%core!clone.impls.impl&%22.clone. (I v!) tmp%1)
    (=>
     (= w@ (%I tmp%1))
     (=>
      (= tmp%2 (= w@ v!))
      (=>
       %%location_label%%0
       tmp%2
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::test_char_vec
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/std-a9a93a7619503a6c-clone_for_std_types/test.rs:33:1: 33:31 (#0)
(get-info :all-statistics)
(push)
 (declare-const v! alloc!vec.Vec<char./allocator_global%.>.)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Bool)
 (declare-const w@ alloc!vec.Vec<char./allocator_global%.>.)
 (assert
  fuel_defaults
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (ens%alloc!vec.impl&%11.clone. $ CHAR $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<char./allocator_global%.>.
      v!
     ) tmp%1
    )
    (=>
     (= w@ (%Poly%alloc!vec.Vec<char./allocator_global%.>. tmp%1))
     (=>
      (= tmp%2 (ext_eq false (TYPE%vstd!seq.Seq. $ CHAR) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
          $ CHAR $ ALLOCATOR_GLOBAL
         ) (Poly%alloc!vec.Vec<char./allocator_global%.>. w@)
        ) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. $ CHAR $ ALLOCATOR_GLOBAL) (Poly%alloc!vec.Vec<char./allocator_global%.>.
          v!
      ))))
      (=>
       %%location_label%%0
       tmp%2
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::test_vec_ref
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/std-a9a93a7619503a6c-clone_for_std_types/test.rs:40:1: 40:28 (#0)
(get-info :all-statistics)
(push)
 (declare-const v! alloc!vec.Vec<$%0<test_crate!Y.>./allocator_global%.>.)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Bool)
 (declare-const w@ alloc!vec.Vec<$%0<test_crate!Y.>./allocator_global%.>.)
 (assert
  fuel_defaults
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (ens%alloc!vec.impl&%11.clone. (REF $) TYPE%test_crate!Y. $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<$%0<test_crate!Y.>./allocator_global%.>.
      v!
     ) tmp%1
    )
    (=>
     (= w@ (%Poly%alloc!vec.Vec<$%0<test_crate!Y.>./allocator_global%.>. tmp%1))
     (=>
      (= tmp%2 (ext_eq false (TYPE%vstd!seq.Seq. (REF $) TYPE%test_crate!Y.) (vstd!view.View.view.?
         $ (TYPE%alloc!vec.Vec. (REF $) TYPE%test_crate!Y. $ ALLOCATOR_GLOBAL) (Poly%alloc!vec.Vec<$%0<test_crate!Y.>./allocator_global%.>.
          w@
         )
        ) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. (REF $) TYPE%test_crate!Y. $ ALLOCATOR_GLOBAL)
         (Poly%alloc!vec.Vec<$%0<test_crate!Y.>./allocator_global%.>. v!)
      )))
      (=>
       %%location_label%%0
       tmp%2
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::test_vec_fail
(declare-fun req%test_crate!test_vec_fail. (alloc!vec.Vec<test_crate!X./allocator_global%.>.)
 Bool
)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((v! alloc!vec.Vec<test_crate!X./allocator_global%.>.)) (!
   (= (req%test_crate!test_vec_fail. v!) (=>
     %%global_location_label%%5
     (>= (vstd!std_specs.vec.spec_vec_len.? $ TYPE%test_crate!X. $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<test_crate!X./allocator_global%.>.
        v!
       )
      ) 1
   )))
   :pattern ((req%test_crate!test_vec_fail. v!))
   :qid internal_req__test_crate!test_vec_fail._definition
   :skolemid skolem_internal_req__test_crate!test_vec_fail._definition
)))

;; Function-Def test_crate::test_vec_fail
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/std-a9a93a7619503a6c-clone_for_std_types/test.rs:51:1: 51:28 (#0)
(get-info :all-statistics)
(push)
 (declare-const v! alloc!vec.Vec<test_crate!X./allocator_global%.>.)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Bool)
 (declare-const w@ alloc!vec.Vec<test_crate!X./allocator_global%.>.)
 (assert
  fuel_defaults
 )
 (assert
  (>= (vstd!std_specs.vec.spec_vec_len.? $ TYPE%test_crate!X. $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<test_crate!X./allocator_global%.>.
     v!
    )
   ) 1
 ))
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (ens%alloc!vec.impl&%11.clone. $ TYPE%test_crate!X. $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<test_crate!X./allocator_global%.>.
      v!
     ) tmp%1
    )
    (=>
     (= w@ (%Poly%alloc!vec.Vec<test_crate!X./allocator_global%.>. tmp%1))
     (=>
      (= tmp%2 (= (vstd!seq.Seq.index.? $ TYPE%test_crate!X. (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
           $ TYPE%test_crate!X. $ ALLOCATOR_GLOBAL
          ) (Poly%alloc!vec.Vec<test_crate!X./allocator_global%.>. v!)
         ) (I 0)
        ) (vstd!seq.Seq.index.? $ TYPE%test_crate!X. (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
           $ TYPE%test_crate!X. $ ALLOCATOR_GLOBAL
          ) (Poly%alloc!vec.Vec<test_crate!X./allocator_global%.>. w@)
         ) (I 0)
      )))
      (=>
       %%location_label%%0
       tmp%2
 ))))))
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

;; Function-Recommends test_crate::test_vec_fail
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/std-a9a93a7619503a6c-clone_for_std_types/test.rs:51:1: 51:28 (#0)
(get-info :all-statistics)
(push)
 (declare-const v! alloc!vec.Vec<test_crate!X./allocator_global%.>.)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Poly)
 (declare-const tmp%3 Poly)
 (declare-const w@ alloc!vec.Vec<test_crate!X./allocator_global%.>.)
 (assert
  fuel_defaults
 )
 ;; recommendation not met
 (declare-const %%location_label%%0 Bool)
 ;; recommendation not met
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (>= (vstd!std_specs.vec.spec_vec_len.? $ TYPE%test_crate!X. $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<test_crate!X./allocator_global%.>.
       v!
      )
     ) 1
    )
    (=>
     (ens%alloc!vec.impl&%11.clone. $ TYPE%test_crate!X. $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<test_crate!X./allocator_global%.>.
       v!
      ) tmp%1
     )
     (=>
      (= w@ (%Poly%alloc!vec.Vec<test_crate!X./allocator_global%.>. tmp%1))
      (and
       (=>
        %%location_label%%0
        (req%vstd!std_specs.vec.VecAdditionalSpecFns.spec_index. $ (TYPE%alloc!vec.Vec. $ TYPE%test_crate!X.
          $ ALLOCATOR_GLOBAL
         ) $ TYPE%test_crate!X. (Poly%alloc!vec.Vec<test_crate!X./allocator_global%.>. v!)
         (I 0)
       ))
       (=>
        (= tmp%2 (vstd!seq.Seq.index.? $ TYPE%test_crate!X. (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
            $ TYPE%test_crate!X. $ ALLOCATOR_GLOBAL
           ) (Poly%alloc!vec.Vec<test_crate!X./allocator_global%.>. v!)
          ) (I 0)
        ))
        (=>
         %%location_label%%1
         (req%vstd!std_specs.vec.VecAdditionalSpecFns.spec_index. $ (TYPE%alloc!vec.Vec. $ TYPE%test_crate!X.
           $ ALLOCATOR_GLOBAL
          ) $ TYPE%test_crate!X. (Poly%alloc!vec.Vec<test_crate!X./allocator_global%.>. w@)
          (I 0)
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::test_vec_deep_view
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/std-a9a93a7619503a6c-clone_for_std_types/test.rs:58:1: 58:24 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Poly)
 (declare-const verus_tmp_g1@ Bool)
 (declare-const tmp%3 Poly)
 (declare-const tmp%4 Poly)
 (declare-const tmp%5 Poly)
 (declare-const tmp%6 Poly)
 (declare-const verus_tmp_g2@ Bool)
 (declare-const tmp%7 Bool)
 (declare-const v1@0 alloc!vec.Vec<u8./allocator_global%.>.)
 (declare-const c1@ alloc!vec.Vec<u8./allocator_global%.>.)
 (declare-const verus_tmp@0 Bool)
 (declare-const g1@0 Bool)
 (declare-const v2@0 alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.)
 (declare-const c2@ alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.)
 (declare-const verus_tmp$1@0 Bool)
 (declare-const g2@0 Bool)
 (assert
  fuel_defaults
 )
 (declare-const v1@1 alloc!vec.Vec<u8./allocator_global%.>.)
 (declare-const v1@2 alloc!vec.Vec<u8./allocator_global%.>.)
 (declare-const verus_tmp@1 Bool)
 (declare-const g1@1 Bool)
 (declare-const v2@1 alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.)
 (declare-const v2@2 alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.)
 (declare-const verus_tmp$1@1 Bool)
 (declare-const g2@1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (ens%alloc!vec.impl&%0.new. $ (UINT 8) tmp%1)
    (=>
     (= v1@0 (%Poly%alloc!vec.Vec<u8./allocator_global%.>. tmp%1))
     (=>
      (ens%alloc!vec.impl&%1.push. $ (UINT 8) $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<u8./allocator_global%.>.
        v1@0
       ) (Poly%alloc!vec.Vec<u8./allocator_global%.>. v1@1) (I 3)
      )
      (=>
       (ens%alloc!vec.impl&%1.push. $ (UINT 8) $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<u8./allocator_global%.>.
         v1@1
        ) (Poly%alloc!vec.Vec<u8./allocator_global%.>. v1@2) (I 4)
       )
       (=>
        (ens%alloc!vec.impl&%11.clone. $ (UINT 8) $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<u8./allocator_global%.>.
          v1@2
         ) tmp%2
        )
        (=>
         (= c1@ (%Poly%alloc!vec.Vec<u8./allocator_global%.>. tmp%2))
         (=>
          (= verus_tmp@1 (= (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)
             (Poly%alloc!vec.Vec<u8./allocator_global%.>. c1@)
            ) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) (Poly%alloc!vec.Vec<u8./allocator_global%.>.
              v1@2
          ))))
          (=>
           (= verus_tmp_g1@ verus_tmp@1)
           (=>
            (= g1@1 verus_tmp_g1@)
            (and
             (=>
              %%location_label%%0
              g1@1
             )
             (=>
              g1@1
              (=>
               (ens%alloc!vec.impl&%0.new. $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)
                tmp%3
               )
               (=>
                (= v2@0 (%Poly%alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.
                  tmp%3
                ))
                (=>
                 (ens%alloc!vec.impl&%11.clone. $ (UINT 8) $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<u8./allocator_global%.>.
                   v1@2
                  ) tmp%4
                 )
                 (=>
                  (ens%alloc!vec.impl&%1.push. $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)
                   $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.
                    v2@0
                   ) (Poly%alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.
                    v2@1
                   ) tmp%4
                  )
                  (=>
                   (ens%alloc!vec.impl&%11.clone. $ (UINT 8) $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<u8./allocator_global%.>.
                     v1@2
                    ) tmp%5
                   )
                   (=>
                    (ens%alloc!vec.impl&%1.push. $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)
                     $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.
                      v2@1
                     ) (Poly%alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.
                      v2@2
                     ) tmp%5
                    )
                    (=>
                     (ens%alloc!vec.impl&%11.clone. $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)
                      $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.
                       v2@2
                      ) tmp%6
                     )
                     (=>
                      (= c2@ (%Poly%alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.
                        tmp%6
                      ))
                      (=>
                       (= verus_tmp$1@1 (= (vstd!view.DeepView.deep_view.? $ (TYPE%alloc!vec.Vec. $ (TYPE%alloc!vec.Vec.
                            $ (UINT 8) $ ALLOCATOR_GLOBAL
                           ) $ ALLOCATOR_GLOBAL
                          ) (Poly%alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.
                           c2@
                          )
                         ) (vstd!view.DeepView.deep_view.? $ (TYPE%alloc!vec.Vec. $ (TYPE%alloc!vec.Vec. $ (UINT
                             8
                            ) $ ALLOCATOR_GLOBAL
                           ) $ ALLOCATOR_GLOBAL
                          ) (Poly%alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.
                           v2@2
                       ))))
                       (=>
                        (= verus_tmp_g2@ verus_tmp$1@1)
                        (=>
                         (= g2@1 verus_tmp_g2@)
                         (and
                          (=>
                           %%location_label%%1
                           g2@1
                          )
                          (=>
                           g2@1
                           (=>
                            (= tmp%7 (ext_eq false (TYPE%vstd!seq.Seq. $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL))
                              (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)
                                $ ALLOCATOR_GLOBAL
                               ) (Poly%alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.
                                c2@
                               )
                              ) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. $ (TYPE%alloc!vec.Vec. $ (UINT 8) $
                                 ALLOCATOR_GLOBAL
                                ) $ ALLOCATOR_GLOBAL
                               ) (Poly%alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.
                                v2@2
                            ))))
                            (=>
                             %%location_label%%2
                             tmp%7
 ))))))))))))))))))))))))))))
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

;; Function-Recommends test_crate::test_vec_deep_view
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/std-a9a93a7619503a6c-clone_for_std_types/test.rs:58:1: 58:24 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Poly)
 (declare-const verus_tmp_g1@ Bool)
 (declare-const tmp%3 Poly)
 (declare-const tmp%4 Poly)
 (declare-const tmp%5 Poly)
 (declare-const tmp%6 Poly)
 (declare-const verus_tmp_g2@ Bool)
 (declare-const v1@0 alloc!vec.Vec<u8./allocator_global%.>.)
 (declare-const c1@ alloc!vec.Vec<u8./allocator_global%.>.)
 (declare-const verus_tmp@0 Bool)
 (declare-const g1@0 Bool)
 (declare-const v2@0 alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.)
 (declare-const c2@ alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.)
 (declare-const verus_tmp$1@0 Bool)
 (declare-const g2@0 Bool)
 (assert
  fuel_defaults
 )
 (declare-const v1@1 alloc!vec.Vec<u8./allocator_global%.>.)
 (declare-const v1@2 alloc!vec.Vec<u8./allocator_global%.>.)
 (declare-const verus_tmp@1 Bool)
 (declare-const g1@1 Bool)
 (declare-const v2@1 alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.)
 (declare-const v2@2 alloc!vec.Vec<alloc!vec.Vec<u8./allocator_global%.>./allocator_global%.>.)
 (declare-const verus_tmp$1@1 Bool)
 (declare-const g2@1 Bool)
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::test_vec_deep_view_char
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/std-a9a93a7619503a6c-clone_for_std_types/test.rs:74:1: 74:29 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Poly)
 (declare-const verus_tmp_g1@ Bool)
 (declare-const tmp%3 Poly)
 (declare-const tmp%4 Poly)
 (declare-const tmp%5 Poly)
 (declare-const tmp%6 Poly)
 (declare-const verus_tmp_g2@ Bool)
 (declare-const tmp%7 Bool)
 (declare-const v1@0 alloc!vec.Vec<char./allocator_global%.>.)
 (declare-const c1@ alloc!vec.Vec<char./allocator_global%.>.)
 (declare-const verus_tmp@0 Bool)
 (declare-const g1@0 Bool)
 (declare-const v2@0 alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.)
 (declare-const c2@ alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.)
 (declare-const verus_tmp$1@0 Bool)
 (declare-const g2@0 Bool)
 (assert
  fuel_defaults
 )
 (declare-const v1@1 alloc!vec.Vec<char./allocator_global%.>.)
 (declare-const v1@2 alloc!vec.Vec<char./allocator_global%.>.)
 (declare-const verus_tmp@1 Bool)
 (declare-const g1@1 Bool)
 (declare-const v2@1 alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.)
 (declare-const v2@2 alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.)
 (declare-const verus_tmp$1@1 Bool)
 (declare-const g2@1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (ens%alloc!vec.impl&%0.new. $ CHAR tmp%1)
    (=>
     (= v1@0 (%Poly%alloc!vec.Vec<char./allocator_global%.>. tmp%1))
     (=>
      (ens%alloc!vec.impl&%1.push. $ CHAR $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<char./allocator_global%.>.
        v1@0
       ) (Poly%alloc!vec.Vec<char./allocator_global%.>. v1@1) (I 97)
      )
      (=>
       (ens%alloc!vec.impl&%1.push. $ CHAR $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<char./allocator_global%.>.
         v1@1
        ) (Poly%alloc!vec.Vec<char./allocator_global%.>. v1@2) (I 98)
       )
       (=>
        (ens%alloc!vec.impl&%11.clone. $ CHAR $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<char./allocator_global%.>.
          v1@2
         ) tmp%2
        )
        (=>
         (= c1@ (%Poly%alloc!vec.Vec<char./allocator_global%.>. tmp%2))
         (=>
          (= verus_tmp@1 (= (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. $ CHAR $ ALLOCATOR_GLOBAL)
             (Poly%alloc!vec.Vec<char./allocator_global%.>. c1@)
            ) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. $ CHAR $ ALLOCATOR_GLOBAL) (Poly%alloc!vec.Vec<char./allocator_global%.>.
              v1@2
          ))))
          (=>
           (= verus_tmp_g1@ verus_tmp@1)
           (=>
            (= g1@1 verus_tmp_g1@)
            (and
             (=>
              %%location_label%%0
              g1@1
             )
             (=>
              g1@1
              (=>
               (ens%alloc!vec.impl&%0.new. $ (TYPE%alloc!vec.Vec. $ CHAR $ ALLOCATOR_GLOBAL) tmp%3)
               (=>
                (= v2@0 (%Poly%alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.
                  tmp%3
                ))
                (=>
                 (ens%alloc!vec.impl&%11.clone. $ CHAR $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<char./allocator_global%.>.
                   v1@2
                  ) tmp%4
                 )
                 (=>
                  (ens%alloc!vec.impl&%1.push. $ (TYPE%alloc!vec.Vec. $ CHAR $ ALLOCATOR_GLOBAL) $ ALLOCATOR_GLOBAL
                   (Poly%alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.
                    v2@0
                   ) (Poly%alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.
                    v2@1
                   ) tmp%4
                  )
                  (=>
                   (ens%alloc!vec.impl&%11.clone. $ CHAR $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<char./allocator_global%.>.
                     v1@2
                    ) tmp%5
                   )
                   (=>
                    (ens%alloc!vec.impl&%1.push. $ (TYPE%alloc!vec.Vec. $ CHAR $ ALLOCATOR_GLOBAL) $ ALLOCATOR_GLOBAL
                     (Poly%alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.
                      v2@1
                     ) (Poly%alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.
                      v2@2
                     ) tmp%5
                    )
                    (=>
                     (ens%alloc!vec.impl&%11.clone. $ (TYPE%alloc!vec.Vec. $ CHAR $ ALLOCATOR_GLOBAL) $
                      ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.
                       v2@2
                      ) tmp%6
                     )
                     (=>
                      (= c2@ (%Poly%alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.
                        tmp%6
                      ))
                      (=>
                       (= verus_tmp$1@1 (= (vstd!view.DeepView.deep_view.? $ (TYPE%alloc!vec.Vec. $ (TYPE%alloc!vec.Vec.
                            $ CHAR $ ALLOCATOR_GLOBAL
                           ) $ ALLOCATOR_GLOBAL
                          ) (Poly%alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.
                           c2@
                          )
                         ) (vstd!view.DeepView.deep_view.? $ (TYPE%alloc!vec.Vec. $ (TYPE%alloc!vec.Vec. $ CHAR
                            $ ALLOCATOR_GLOBAL
                           ) $ ALLOCATOR_GLOBAL
                          ) (Poly%alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.
                           v2@2
                       ))))
                       (=>
                        (= verus_tmp_g2@ verus_tmp$1@1)
                        (=>
                         (= g2@1 verus_tmp_g2@)
                         (and
                          (=>
                           %%location_label%%1
                           g2@1
                          )
                          (=>
                           g2@1
                           (=>
                            (= tmp%7 (ext_eq false (TYPE%vstd!seq.Seq. $ (TYPE%alloc!vec.Vec. $ CHAR $ ALLOCATOR_GLOBAL))
                              (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. $ (TYPE%alloc!vec.Vec. $ CHAR $ ALLOCATOR_GLOBAL)
                                $ ALLOCATOR_GLOBAL
                               ) (Poly%alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.
                                c2@
                               )
                              ) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. $ (TYPE%alloc!vec.Vec. $ CHAR $ ALLOCATOR_GLOBAL)
                                $ ALLOCATOR_GLOBAL
                               ) (Poly%alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.
                                v2@2
                            ))))
                            (=>
                             %%location_label%%2
                             tmp%7
 ))))))))))))))))))))))))))))
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

;; Function-Recommends test_crate::test_vec_deep_view_char
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/std-a9a93a7619503a6c-clone_for_std_types/test.rs:74:1: 74:29 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Poly)
 (declare-const verus_tmp_g1@ Bool)
 (declare-const tmp%3 Poly)
 (declare-const tmp%4 Poly)
 (declare-const tmp%5 Poly)
 (declare-const tmp%6 Poly)
 (declare-const verus_tmp_g2@ Bool)
 (declare-const v1@0 alloc!vec.Vec<char./allocator_global%.>.)
 (declare-const c1@ alloc!vec.Vec<char./allocator_global%.>.)
 (declare-const verus_tmp@0 Bool)
 (declare-const g1@0 Bool)
 (declare-const v2@0 alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.)
 (declare-const c2@ alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.)
 (declare-const verus_tmp$1@0 Bool)
 (declare-const g2@0 Bool)
 (assert
  fuel_defaults
 )
 (declare-const v1@1 alloc!vec.Vec<char./allocator_global%.>.)
 (declare-const v1@2 alloc!vec.Vec<char./allocator_global%.>.)
 (declare-const verus_tmp@1 Bool)
 (declare-const g1@1 Bool)
 (declare-const v2@1 alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.)
 (declare-const v2@2 alloc!vec.Vec<alloc!vec.Vec<char./allocator_global%.>./allocator_global%.>.)
 (declare-const verus_tmp$1@1 Bool)
 (declare-const g2@1 Bool)
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::test_slice_deep_view
(declare-fun req%test_crate!test_slice_deep_view. (slice%<alloc!vec.Vec<u8./allocator_global%.>.>.
  slice%<alloc!vec.Vec<u8./allocator_global%.>.>.
 ) Bool
)
(declare-const %%global_location_label%%6 Bool)
(declare-const %%global_location_label%%7 Bool)
(declare-const %%global_location_label%%8 Bool)
(declare-const %%global_location_label%%9 Bool)
(declare-const %%global_location_label%%10 Bool)
(declare-const %%global_location_label%%11 Bool)
(assert
 (forall ((a1! slice%<alloc!vec.Vec<u8./allocator_global%.>.>.) (a2! slice%<alloc!vec.Vec<u8./allocator_global%.>.>.))
  (!
   (= (req%test_crate!test_slice_deep_view. a1! a2!) (and
     (=>
      %%global_location_label%%6
      (= (vstd!slice.spec_slice_len.? $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)
        (Poly%slice%<alloc!vec.Vec<u8./allocator_global%.>.>. a1!)
       ) 1
     ))
     (=>
      %%global_location_label%%7
      (= (vstd!slice.spec_slice_len.? $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)
        (Poly%slice%<alloc!vec.Vec<u8./allocator_global%.>.>. a2!)
       ) 1
     ))
     (=>
      %%global_location_label%%8
      (= (vstd!std_specs.vec.spec_vec_len.? $ (UINT 8) $ ALLOCATOR_GLOBAL (vstd!seq.Seq.index.?
         $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) (vstd!view.View.view.? $ (SLICE
           $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)
          ) (Poly%slice%<alloc!vec.Vec<u8./allocator_global%.>.>. a1!)
         ) (I 0)
        )
       ) 1
     ))
     (=>
      %%global_location_label%%9
      (= (vstd!std_specs.vec.spec_vec_len.? $ (UINT 8) $ ALLOCATOR_GLOBAL (vstd!seq.Seq.index.?
         $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) (vstd!view.View.view.? $ (SLICE
           $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)
          ) (Poly%slice%<alloc!vec.Vec<u8./allocator_global%.>.>. a2!)
         ) (I 0)
        )
       ) 1
     ))
     (=>
      %%global_location_label%%10
      (= (%I (vstd!seq.Seq.index.? $ (UINT 8) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
           $ (UINT 8) $ ALLOCATOR_GLOBAL
          ) (vstd!seq.Seq.index.? $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) (vstd!view.View.view.?
            $ (SLICE $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)) (Poly%slice%<alloc!vec.Vec<u8./allocator_global%.>.>.
             a1!
            )
           ) (I 0)
          )
         ) (I 0)
        )
       ) 10
     ))
     (=>
      %%global_location_label%%11
      (= (%I (vstd!seq.Seq.index.? $ (UINT 8) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
           $ (UINT 8) $ ALLOCATOR_GLOBAL
          ) (vstd!seq.Seq.index.? $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) (vstd!view.View.view.?
            $ (SLICE $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)) (Poly%slice%<alloc!vec.Vec<u8./allocator_global%.>.>.
             a2!
            )
           ) (I 0)
          )
         ) (I 0)
        )
       ) 10
   ))))
   :pattern ((req%test_crate!test_slice_deep_view. a1! a2!))
   :qid internal_req__test_crate!test_slice_deep_view._definition
   :skolemid skolem_internal_req__test_crate!test_slice_deep_view._definition
)))
(declare-fun ens%test_crate!test_slice_deep_view. (slice%<alloc!vec.Vec<u8./allocator_global%.>.>.
  slice%<alloc!vec.Vec<u8./allocator_global%.>.>.
 ) Bool
)
(assert
 (forall ((a1! slice%<alloc!vec.Vec<u8./allocator_global%.>.>.) (a2! slice%<alloc!vec.Vec<u8./allocator_global%.>.>.))
  (!
   (= (ens%test_crate!test_slice_deep_view. a1! a2!) (= (vstd!view.DeepView.deep_view.?
      $ (SLICE $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)) (Poly%slice%<alloc!vec.Vec<u8./allocator_global%.>.>.
       a1!
      )
     ) (vstd!view.DeepView.deep_view.? $ (SLICE $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL))
      (Poly%slice%<alloc!vec.Vec<u8./allocator_global%.>.>. a2!)
   )))
   :pattern ((ens%test_crate!test_slice_deep_view. a1! a2!))
   :qid internal_ens__test_crate!test_slice_deep_view._definition
   :skolemid skolem_internal_ens__test_crate!test_slice_deep_view._definition
)))

;; Function-Def test_crate::test_slice_deep_view
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/std-a9a93a7619503a6c-clone_for_std_types/test.rs:90:1: 90:56 (#0)
(get-info :all-statistics)
(push)
 (declare-const a1! slice%<alloc!vec.Vec<u8./allocator_global%.>.>.)
 (declare-const a2! slice%<alloc!vec.Vec<u8./allocator_global%.>.>.)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (= (vstd!slice.spec_slice_len.? $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)
    (Poly%slice%<alloc!vec.Vec<u8./allocator_global%.>.>. a1!)
   ) 1
 ))
 (assert
  (= (vstd!slice.spec_slice_len.? $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)
    (Poly%slice%<alloc!vec.Vec<u8./allocator_global%.>.>. a2!)
   ) 1
 ))
 (assert
  (= (vstd!std_specs.vec.spec_vec_len.? $ (UINT 8) $ ALLOCATOR_GLOBAL (vstd!seq.Seq.index.?
     $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) (vstd!view.View.view.? $ (SLICE
       $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)
      ) (Poly%slice%<alloc!vec.Vec<u8./allocator_global%.>.>. a1!)
     ) (I 0)
    )
   ) 1
 ))
 (assert
  (= (vstd!std_specs.vec.spec_vec_len.? $ (UINT 8) $ ALLOCATOR_GLOBAL (vstd!seq.Seq.index.?
     $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) (vstd!view.View.view.? $ (SLICE
       $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)
      ) (Poly%slice%<alloc!vec.Vec<u8./allocator_global%.>.>. a2!)
     ) (I 0)
    )
   ) 1
 ))
 (assert
  (= (%I (vstd!seq.Seq.index.? $ (UINT 8) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
       $ (UINT 8) $ ALLOCATOR_GLOBAL
      ) (vstd!seq.Seq.index.? $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) (vstd!view.View.view.?
        $ (SLICE $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)) (Poly%slice%<alloc!vec.Vec<u8./allocator_global%.>.>.
         a1!
        )
       ) (I 0)
      )
     ) (I 0)
    )
   ) 10
 ))
 (assert
  (= (%I (vstd!seq.Seq.index.? $ (UINT 8) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
       $ (UINT 8) $ ALLOCATOR_GLOBAL
      ) (vstd!seq.Seq.index.? $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) (vstd!view.View.view.?
        $ (SLICE $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)) (Poly%slice%<alloc!vec.Vec<u8./allocator_global%.>.>.
         a2!
        )
       ) (I 0)
      )
     ) (I 0)
    )
   ) 10
 ))
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= tmp%1 (ext_eq true (TYPE%vstd!seq.Seq. $ (TYPE%vstd!seq.Seq. $ (UINT 8))) (vstd!view.DeepView.deep_view.?
       $ (SLICE $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)) (Poly%slice%<alloc!vec.Vec<u8./allocator_global%.>.>.
        a1!
       )
      ) (vstd!view.DeepView.deep_view.? $ (SLICE $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL))
       (Poly%slice%<alloc!vec.Vec<u8./allocator_global%.>.>. a2!)
    )))
    (and
     (=>
      %%location_label%%0
      tmp%1
     )
     (=>
      tmp%1
      (=>
       %%location_label%%1
       (= (vstd!view.DeepView.deep_view.? $ (SLICE $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL))
         (Poly%slice%<alloc!vec.Vec<u8./allocator_global%.>.>. a1!)
        ) (vstd!view.DeepView.deep_view.? $ (SLICE $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL))
         (Poly%slice%<alloc!vec.Vec<u8./allocator_global%.>.>. a2!)
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::test_array_deep_view
(declare-fun req%test_crate!test_array_deep_view. (%%Function%% %%Function%%) Bool)
(declare-const %%global_location_label%%12 Bool)
(declare-const %%global_location_label%%13 Bool)
(declare-const %%global_location_label%%14 Bool)
(declare-const %%global_location_label%%15 Bool)
(assert
 (forall ((a1! %%Function%%) (a2! %%Function%%)) (!
   (= (req%test_crate!test_array_deep_view. a1! a2!) (and
     (=>
      %%global_location_label%%12
      (= (vstd!std_specs.vec.spec_vec_len.? $ (UINT 8) $ ALLOCATOR_GLOBAL (vstd!seq.Seq.index.?
         $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) (vstd!view.View.view.? $ (ARRAY
           $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) $ (CONST_INT 1)
          ) (Poly%array%. a1!)
         ) (I 0)
        )
       ) 1
     ))
     (=>
      %%global_location_label%%13
      (= (vstd!std_specs.vec.spec_vec_len.? $ (UINT 8) $ ALLOCATOR_GLOBAL (vstd!seq.Seq.index.?
         $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) (vstd!view.View.view.? $ (ARRAY
           $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) $ (CONST_INT 1)
          ) (Poly%array%. a2!)
         ) (I 0)
        )
       ) 1
     ))
     (=>
      %%global_location_label%%14
      (= (%I (vstd!seq.Seq.index.? $ (UINT 8) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
           $ (UINT 8) $ ALLOCATOR_GLOBAL
          ) (vstd!seq.Seq.index.? $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) (vstd!view.View.view.?
            $ (ARRAY $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) $ (CONST_INT 1)) (
             Poly%array%. a1!
            )
           ) (I 0)
          )
         ) (I 0)
        )
       ) 10
     ))
     (=>
      %%global_location_label%%15
      (= (%I (vstd!seq.Seq.index.? $ (UINT 8) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
           $ (UINT 8) $ ALLOCATOR_GLOBAL
          ) (vstd!seq.Seq.index.? $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) (vstd!view.View.view.?
            $ (ARRAY $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) $ (CONST_INT 1)) (
             Poly%array%. a2!
            )
           ) (I 0)
          )
         ) (I 0)
        )
       ) 10
   ))))
   :pattern ((req%test_crate!test_array_deep_view. a1! a2!))
   :qid internal_req__test_crate!test_array_deep_view._definition
   :skolemid skolem_internal_req__test_crate!test_array_deep_view._definition
)))
(declare-fun ens%test_crate!test_array_deep_view. (%%Function%% %%Function%%) Bool)
(assert
 (forall ((a1! %%Function%%) (a2! %%Function%%)) (!
   (= (ens%test_crate!test_array_deep_view. a1! a2!) (= (vstd!view.DeepView.deep_view.?
      $ (ARRAY $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) $ (CONST_INT 1)) (
       Poly%array%. a1!
      )
     ) (vstd!view.DeepView.deep_view.? $ (ARRAY $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)
       $ (CONST_INT 1)
      ) (Poly%array%. a2!)
   )))
   :pattern ((ens%test_crate!test_array_deep_view. a1! a2!))
   :qid internal_ens__test_crate!test_array_deep_view._definition
   :skolemid skolem_internal_ens__test_crate!test_array_deep_view._definition
)))

;; Function-Def test_crate::test_array_deep_view
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/std-a9a93a7619503a6c-clone_for_std_types/test.rs:104:1: 104:62 (#0)
(get-info :all-statistics)
(push)
 (declare-const a1! %%Function%%)
 (declare-const a2! %%Function%%)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%array%. a1!) (ARRAY $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)
    $ (CONST_INT 1)
 )))
 (assert
  (has_type (Poly%array%. a2!) (ARRAY $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)
    $ (CONST_INT 1)
 )))
 (assert
  (= (vstd!std_specs.vec.spec_vec_len.? $ (UINT 8) $ ALLOCATOR_GLOBAL (vstd!seq.Seq.index.?
     $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) (vstd!view.View.view.? $ (ARRAY
       $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) $ (CONST_INT 1)
      ) (Poly%array%. a1!)
     ) (I 0)
    )
   ) 1
 ))
 (assert
  (= (vstd!std_specs.vec.spec_vec_len.? $ (UINT 8) $ ALLOCATOR_GLOBAL (vstd!seq.Seq.index.?
     $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) (vstd!view.View.view.? $ (ARRAY
       $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) $ (CONST_INT 1)
      ) (Poly%array%. a2!)
     ) (I 0)
    )
   ) 1
 ))
 (assert
  (= (%I (vstd!seq.Seq.index.? $ (UINT 8) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
       $ (UINT 8) $ ALLOCATOR_GLOBAL
      ) (vstd!seq.Seq.index.? $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) (vstd!view.View.view.?
        $ (ARRAY $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) $ (CONST_INT 1)) (
         Poly%array%. a1!
        )
       ) (I 0)
      )
     ) (I 0)
    )
   ) 10
 ))
 (assert
  (= (%I (vstd!seq.Seq.index.? $ (UINT 8) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
       $ (UINT 8) $ ALLOCATOR_GLOBAL
      ) (vstd!seq.Seq.index.? $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) (vstd!view.View.view.?
        $ (ARRAY $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) $ (CONST_INT 1)) (
         Poly%array%. a2!
        )
       ) (I 0)
      )
     ) (I 0)
    )
   ) 10
 ))
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= tmp%1 (ext_eq true (TYPE%vstd!seq.Seq. $ (TYPE%vstd!seq.Seq. $ (UINT 8))) (vstd!view.DeepView.deep_view.?
       $ (ARRAY $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL) $ (CONST_INT 1)) (
        Poly%array%. a1!
       )
      ) (vstd!view.DeepView.deep_view.? $ (ARRAY $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)
        $ (CONST_INT 1)
       ) (Poly%array%. a2!)
    )))
    (and
     (=>
      %%location_label%%0
      tmp%1
     )
     (=>
      tmp%1
      (=>
       %%location_label%%1
       (= (vstd!view.DeepView.deep_view.? $ (ARRAY $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)
          $ (CONST_INT 1)
         ) (Poly%array%. a1!)
        ) (vstd!view.DeepView.deep_view.? $ (ARRAY $ (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)
          $ (CONST_INT 1)
         ) (Poly%array%. a2!)
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
