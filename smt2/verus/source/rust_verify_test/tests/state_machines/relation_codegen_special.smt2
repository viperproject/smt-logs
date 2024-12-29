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
(declare-const fuel%vstd!std_specs.option.impl&%0.is_None. FuelId)
(declare-const fuel%vstd!map.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd!map.axiom_map_index_decreases_finite. FuelId)
(declare-const fuel%vstd!map.axiom_map_index_decreases_infinite. FuelId)
(declare-const fuel%vstd!map.axiom_map_insert_domain. FuelId)
(declare-const fuel%vstd!map.axiom_map_insert_same. FuelId)
(declare-const fuel%vstd!map.axiom_map_insert_different. FuelId)
(declare-const fuel%vstd!map.axiom_map_remove_domain. FuelId)
(declare-const fuel%vstd!map.axiom_map_remove_different. FuelId)
(declare-const fuel%vstd!map.axiom_map_ext_equal. FuelId)
(declare-const fuel%vstd!map.axiom_map_ext_equal_deep. FuelId)
(declare-const fuel%vstd!map_lib.impl&%0.contains_pair. FuelId)
(declare-const fuel%vstd!multiset.impl&%0.insert. FuelId)
(declare-const fuel%vstd!multiset.impl&%0.remove. FuelId)
(declare-const fuel%vstd!multiset.axiom_multiset_singleton. FuelId)
(declare-const fuel%vstd!multiset.axiom_multiset_singleton_different. FuelId)
(declare-const fuel%vstd!multiset.axiom_multiset_add. FuelId)
(declare-const fuel%vstd!multiset.axiom_multiset_sub. FuelId)
(declare-const fuel%vstd!multiset.axiom_multiset_ext_equal. FuelId)
(declare-const fuel%vstd!multiset.axiom_multiset_ext_equal_deep. FuelId)
(declare-const fuel%vstd!set.axiom_set_insert_same. FuelId)
(declare-const fuel%vstd!set.axiom_set_insert_different. FuelId)
(declare-const fuel%vstd!set.axiom_set_remove_same. FuelId)
(declare-const fuel%vstd!set.axiom_set_remove_insert. FuelId)
(declare-const fuel%vstd!set.axiom_set_remove_different. FuelId)
(declare-const fuel%vstd!set.axiom_set_ext_equal. FuelId)
(declare-const fuel%vstd!set.axiom_set_ext_equal_deep. FuelId)
(declare-const fuel%vstd!set.axiom_set_insert_finite. FuelId)
(declare-const fuel%vstd!set.axiom_set_remove_finite. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr1. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr1_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr2. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr2_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr3. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr3_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr4. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr4_strong. FuelId)
(declare-const fuel%test_crate!impl&%0.arrow_Bar_0. FuelId)
(declare-const fuel%test_crate!impl&%0.arrow_Qax_0. FuelId)
(declare-const fuel%test_crate!impl&%0.arrow_Duck_0. FuelId)
(declare-const fuel%test_crate!rel_tr1. FuelId)
(declare-const fuel%test_crate!rel_tr1_strong. FuelId)
(declare-const fuel%test_crate!rel_tr2. FuelId)
(declare-const fuel%test_crate!rel_tr2_strong. FuelId)
(declare-const fuel%test_crate!rel_tr3. FuelId)
(declare-const fuel%test_crate!rel_tr3_strong. FuelId)
(declare-const fuel%test_crate!rel_tr4. FuelId)
(declare-const fuel%test_crate!rel_tr4_strong. FuelId)
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
 (distinct fuel%vstd!std_specs.option.impl&%0.is_None. fuel%vstd!map.impl&%0.spec_index.
  fuel%vstd!map.axiom_map_index_decreases_finite. fuel%vstd!map.axiom_map_index_decreases_infinite.
  fuel%vstd!map.axiom_map_insert_domain. fuel%vstd!map.axiom_map_insert_same. fuel%vstd!map.axiom_map_insert_different.
  fuel%vstd!map.axiom_map_remove_domain. fuel%vstd!map.axiom_map_remove_different.
  fuel%vstd!map.axiom_map_ext_equal. fuel%vstd!map.axiom_map_ext_equal_deep. fuel%vstd!map_lib.impl&%0.contains_pair.
  fuel%vstd!multiset.impl&%0.insert. fuel%vstd!multiset.impl&%0.remove. fuel%vstd!multiset.axiom_multiset_singleton.
  fuel%vstd!multiset.axiom_multiset_singleton_different. fuel%vstd!multiset.axiom_multiset_add.
  fuel%vstd!multiset.axiom_multiset_sub. fuel%vstd!multiset.axiom_multiset_ext_equal.
  fuel%vstd!multiset.axiom_multiset_ext_equal_deep. fuel%vstd!set.axiom_set_insert_same.
  fuel%vstd!set.axiom_set_insert_different. fuel%vstd!set.axiom_set_remove_same. fuel%vstd!set.axiom_set_remove_insert.
  fuel%vstd!set.axiom_set_remove_different. fuel%vstd!set.axiom_set_ext_equal. fuel%vstd!set.axiom_set_ext_equal_deep.
  fuel%vstd!set.axiom_set_insert_finite. fuel%vstd!set.axiom_set_remove_finite. fuel%test_crate!Y.impl&%15.tr1.
  fuel%test_crate!Y.impl&%15.tr1_strong. fuel%test_crate!Y.impl&%15.tr2. fuel%test_crate!Y.impl&%15.tr2_strong.
  fuel%test_crate!Y.impl&%15.tr3. fuel%test_crate!Y.impl&%15.tr3_strong. fuel%test_crate!Y.impl&%15.tr4.
  fuel%test_crate!Y.impl&%15.tr4_strong. fuel%test_crate!impl&%0.arrow_Bar_0. fuel%test_crate!impl&%0.arrow_Qax_0.
  fuel%test_crate!impl&%0.arrow_Duck_0. fuel%test_crate!rel_tr1. fuel%test_crate!rel_tr1_strong.
  fuel%test_crate!rel_tr2. fuel%test_crate!rel_tr2_strong. fuel%test_crate!rel_tr3.
  fuel%test_crate!rel_tr3_strong. fuel%test_crate!rel_tr4. fuel%test_crate!rel_tr4_strong.
  fuel%vstd!array.group_array_axioms. fuel%vstd!map.group_map_axioms. fuel%vstd!multiset.group_multiset_axioms.
  fuel%vstd!raw_ptr.group_raw_ptr_axioms. fuel%vstd!seq.group_seq_axioms. fuel%vstd!seq_lib.group_seq_lib_default.
  fuel%vstd!set.group_set_axioms. fuel%vstd!set_lib.group_set_lib_axioms. fuel%vstd!slice.group_slice_axioms.
  fuel%vstd!string.group_string_axioms. fuel%vstd!std_specs.bits.group_bits_axioms.
  fuel%vstd!std_specs.control_flow.group_control_flow_axioms. fuel%vstd!std_specs.range.group_range_axioms.
  fuel%vstd!std_specs.vec.group_vec_axioms. fuel%vstd!group_vstd_default.
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
   (fuel_bool_default fuel%vstd!map.axiom_map_remove_domain.)
   (fuel_bool_default fuel%vstd!map.axiom_map_remove_different.)
   (fuel_bool_default fuel%vstd!map.axiom_map_ext_equal.)
   (fuel_bool_default fuel%vstd!map.axiom_map_ext_equal_deep.)
)))
(assert
 (=>
  (fuel_bool_default fuel%vstd!multiset.group_multiset_axioms.)
  (and
   (fuel_bool_default fuel%vstd!multiset.axiom_multiset_singleton.)
   (fuel_bool_default fuel%vstd!multiset.axiom_multiset_singleton_different.)
   (fuel_bool_default fuel%vstd!multiset.axiom_multiset_add.)
   (fuel_bool_default fuel%vstd!multiset.axiom_multiset_sub.)
   (fuel_bool_default fuel%vstd!multiset.axiom_multiset_ext_equal.)
   (fuel_bool_default fuel%vstd!multiset.axiom_multiset_ext_equal_deep.)
)))
(assert
 (=>
  (fuel_bool_default fuel%vstd!set.group_set_axioms.)
  (and
   (fuel_bool_default fuel%vstd!set.axiom_set_insert_same.)
   (fuel_bool_default fuel%vstd!set.axiom_set_insert_different.)
   (fuel_bool_default fuel%vstd!set.axiom_set_remove_same.)
   (fuel_bool_default fuel%vstd!set.axiom_set_remove_insert.)
   (fuel_bool_default fuel%vstd!set.axiom_set_remove_different.)
   (fuel_bool_default fuel%vstd!set.axiom_set_ext_equal.)
   (fuel_bool_default fuel%vstd!set.axiom_set_ext_equal_deep.)
   (fuel_bool_default fuel%vstd!set.axiom_set_insert_finite.)
   (fuel_bool_default fuel%vstd!set.axiom_set_remove_finite.)
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
(declare-sort vstd!multiset.Multiset<int.>. 0)
(declare-sort vstd!set.Set<int.>. 0)
(declare-datatypes ((core!option.Option. 0) (test_crate!Y.State. 0) (test_crate!Foo.
   0
  ) (tuple%0. 0)
 ) (((core!option.Option./None) (core!option.Option./Some (core!option.Option./Some/?0
     Poly
   ))
  ) ((test_crate!Y.State./State (test_crate!Y.State./State/?opt core!option.Option.)
    (test_crate!Y.State./State/?map vstd!map.Map<int./int.>.) (test_crate!Y.State./State/?mset
     vstd!multiset.Multiset<int.>.
    ) (test_crate!Y.State./State/?storage_opt core!option.Option.) (test_crate!Y.State./State/?storage_map
     vstd!map.Map<int./int.>.
   ))
  ) ((test_crate!Foo./Bar (test_crate!Foo./Bar/?0 Int)) (test_crate!Foo./Qax (test_crate!Foo./Qax/?0
     Int
    )
   ) (test_crate!Foo./Duck (test_crate!Foo./Duck/?0 Int))
  ) ((tuple%0./tuple%0))
))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun test_crate!Y.State./State/opt (test_crate!Y.State.) core!option.Option.)
(declare-fun test_crate!Y.State./State/map (test_crate!Y.State.) vstd!map.Map<int./int.>.)
(declare-fun test_crate!Y.State./State/mset (test_crate!Y.State.) vstd!multiset.Multiset<int.>.)
(declare-fun test_crate!Y.State./State/storage_opt (test_crate!Y.State.) core!option.Option.)
(declare-fun test_crate!Y.State./State/storage_map (test_crate!Y.State.) vstd!map.Map<int./int.>.)
(declare-fun test_crate!Foo./Bar/0 (test_crate!Foo.) Int)
(declare-fun test_crate!Foo./Qax/0 (test_crate!Foo.) Int)
(declare-fun test_crate!Foo./Duck/0 (test_crate!Foo.) Int)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-fun TYPE%vstd!map.Map. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd!multiset.Multiset. (Dcr Type) Type)
(declare-fun TYPE%vstd!set.Set. (Dcr Type) Type)
(declare-const TYPE%test_crate!Y.State. Type)
(declare-const TYPE%test_crate!Foo. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%vstd!map.Map<int./int.>. (vstd!map.Map<int./int.>.) Poly)
(declare-fun %Poly%vstd!map.Map<int./int.>. (Poly) vstd!map.Map<int./int.>.)
(declare-fun Poly%vstd!multiset.Multiset<int.>. (vstd!multiset.Multiset<int.>.) Poly)
(declare-fun %Poly%vstd!multiset.Multiset<int.>. (Poly) vstd!multiset.Multiset<int.>.)
(declare-fun Poly%vstd!set.Set<int.>. (vstd!set.Set<int.>.) Poly)
(declare-fun %Poly%vstd!set.Set<int.>. (Poly) vstd!set.Set<int.>.)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
(declare-fun Poly%test_crate!Y.State. (test_crate!Y.State.) Poly)
(declare-fun %Poly%test_crate!Y.State. (Poly) test_crate!Y.State.)
(declare-fun Poly%test_crate!Foo. (test_crate!Foo.) Poly)
(declare-fun %Poly%test_crate!Foo. (Poly) test_crate!Foo.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
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
 (forall ((x vstd!multiset.Multiset<int.>.)) (!
   (= x (%Poly%vstd!multiset.Multiset<int.>. (Poly%vstd!multiset.Multiset<int.>. x)))
   :pattern ((Poly%vstd!multiset.Multiset<int.>. x))
   :qid internal_vstd__multiset__Multiset<int.>_box_axiom_definition
   :skolemid skolem_internal_vstd__multiset__Multiset<int.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!multiset.Multiset. $ INT))
    (= x (Poly%vstd!multiset.Multiset<int.>. (%Poly%vstd!multiset.Multiset<int.>. x)))
   )
   :pattern ((has_type x (TYPE%vstd!multiset.Multiset. $ INT)))
   :qid internal_vstd__multiset__Multiset<int.>_unbox_axiom_definition
   :skolemid skolem_internal_vstd__multiset__Multiset<int.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!multiset.Multiset<int.>.)) (!
   (has_type (Poly%vstd!multiset.Multiset<int.>. x) (TYPE%vstd!multiset.Multiset. $ INT))
   :pattern ((has_type (Poly%vstd!multiset.Multiset<int.>. x) (TYPE%vstd!multiset.Multiset.
      $ INT
   )))
   :qid internal_vstd__multiset__Multiset<int.>_has_type_always_definition
   :skolemid skolem_internal_vstd__multiset__Multiset<int.>_has_type_always_definition
)))
(assert
 (forall ((x vstd!set.Set<int.>.)) (!
   (= x (%Poly%vstd!set.Set<int.>. (Poly%vstd!set.Set<int.>. x)))
   :pattern ((Poly%vstd!set.Set<int.>. x))
   :qid internal_vstd__set__Set<int.>_box_axiom_definition
   :skolemid skolem_internal_vstd__set__Set<int.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!set.Set. $ INT))
    (= x (Poly%vstd!set.Set<int.>. (%Poly%vstd!set.Set<int.>. x)))
   )
   :pattern ((has_type x (TYPE%vstd!set.Set. $ INT)))
   :qid internal_vstd__set__Set<int.>_unbox_axiom_definition
   :skolemid skolem_internal_vstd__set__Set<int.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!set.Set<int.>.)) (!
   (has_type (Poly%vstd!set.Set<int.>. x) (TYPE%vstd!set.Set. $ INT))
   :pattern ((has_type (Poly%vstd!set.Set<int.>. x) (TYPE%vstd!set.Set. $ INT)))
   :qid internal_vstd__set__Set<int.>_has_type_always_definition
   :skolemid skolem_internal_vstd__set__Set<int.>_has_type_always_definition
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
 (forall ((_opt! core!option.Option.) (_map! vstd!map.Map<int./int.>.) (_mset! vstd!multiset.Multiset<int.>.)
   (_storage_opt! core!option.Option.) (_storage_map! vstd!map.Map<int./int.>.)
  ) (!
   (=>
    (and
     (has_type (Poly%core!option.Option. _opt!) (TYPE%core!option.Option. $ INT))
     (has_type (Poly%core!option.Option. _storage_opt!) (TYPE%core!option.Option. $ INT))
    )
    (has_type (Poly%test_crate!Y.State. (test_crate!Y.State./State _opt! _map! _mset! _storage_opt!
       _storage_map!
      )
     ) TYPE%test_crate!Y.State.
   ))
   :pattern ((has_type (Poly%test_crate!Y.State. (test_crate!Y.State./State _opt! _map!
       _mset! _storage_opt! _storage_map!
      )
     ) TYPE%test_crate!Y.State.
   ))
   :qid internal_test_crate!Y.State./State_constructor_definition
   :skolemid skolem_internal_test_crate!Y.State./State_constructor_definition
)))
(assert
 (forall ((x test_crate!Y.State.)) (!
   (= (test_crate!Y.State./State/opt x) (test_crate!Y.State./State/?opt x))
   :pattern ((test_crate!Y.State./State/opt x))
   :qid internal_test_crate!Y.State./State/opt_accessor_definition
   :skolemid skolem_internal_test_crate!Y.State./State/opt_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.State.)
    (has_type (Poly%core!option.Option. (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State.
        x
      ))
     ) (TYPE%core!option.Option. $ INT)
   ))
   :pattern ((test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. x)) (has_type x
     TYPE%test_crate!Y.State.
   ))
   :qid internal_test_crate!Y.State./State/opt_invariant_definition
   :skolemid skolem_internal_test_crate!Y.State./State/opt_invariant_definition
)))
(assert
 (forall ((x test_crate!Y.State.)) (!
   (= (test_crate!Y.State./State/map x) (test_crate!Y.State./State/?map x))
   :pattern ((test_crate!Y.State./State/map x))
   :qid internal_test_crate!Y.State./State/map_accessor_definition
   :skolemid skolem_internal_test_crate!Y.State./State/map_accessor_definition
)))
(assert
 (forall ((x test_crate!Y.State.)) (!
   (= (test_crate!Y.State./State/mset x) (test_crate!Y.State./State/?mset x))
   :pattern ((test_crate!Y.State./State/mset x))
   :qid internal_test_crate!Y.State./State/mset_accessor_definition
   :skolemid skolem_internal_test_crate!Y.State./State/mset_accessor_definition
)))
(assert
 (forall ((x test_crate!Y.State.)) (!
   (= (test_crate!Y.State./State/storage_opt x) (test_crate!Y.State./State/?storage_opt
     x
   ))
   :pattern ((test_crate!Y.State./State/storage_opt x))
   :qid internal_test_crate!Y.State./State/storage_opt_accessor_definition
   :skolemid skolem_internal_test_crate!Y.State./State/storage_opt_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.State.)
    (has_type (Poly%core!option.Option. (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State.
        x
      ))
     ) (TYPE%core!option.Option. $ INT)
   ))
   :pattern ((test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. x)) (has_type
     x TYPE%test_crate!Y.State.
   ))
   :qid internal_test_crate!Y.State./State/storage_opt_invariant_definition
   :skolemid skolem_internal_test_crate!Y.State./State/storage_opt_invariant_definition
)))
(assert
 (forall ((x test_crate!Y.State.)) (!
   (= (test_crate!Y.State./State/storage_map x) (test_crate!Y.State./State/?storage_map
     x
   ))
   :pattern ((test_crate!Y.State./State/storage_map x))
   :qid internal_test_crate!Y.State./State/storage_map_accessor_definition
   :skolemid skolem_internal_test_crate!Y.State./State/storage_map_accessor_definition
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

;; Function-Decl vstd::std_specs::option::OptionAdditionalFns::is_None
(declare-fun vstd!std_specs.option.OptionAdditionalFns.is_None.? (Dcr Type Dcr Type
  Poly
 ) Poly
)
(declare-fun vstd!std_specs.option.OptionAdditionalFns.is_None%default%.? (Dcr Type
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

;; Function-Decl vstd::map::impl&%0::remove
(declare-fun vstd!map.impl&%0.remove.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::set::impl&%0::finite
(declare-fun vstd!set.impl&%0.finite.? (Dcr Type Poly) Bool)

;; Function-Decl vstd::map::impl&%0::spec_index
(declare-fun vstd!map.impl&%0.spec_index.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::set::impl&%0::insert
(declare-fun vstd!set.impl&%0.insert.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::set::impl&%0::remove
(declare-fun vstd!set.impl&%0.remove.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::multiset::impl&%0::count
(declare-fun vstd!multiset.impl&%0.count.? (Dcr Type Poly Poly) Int)

;; Function-Decl vstd::multiset::impl&%0::singleton
(declare-fun vstd!multiset.impl&%0.singleton.? (Dcr Type Poly) Poly)

;; Function-Decl vstd::multiset::impl&%0::add
(declare-fun vstd!multiset.impl&%0.add.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::multiset::impl&%0::sub
(declare-fun vstd!multiset.impl&%0.sub.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::map_lib::impl&%0::contains_pair
(declare-fun vstd!map_lib.impl&%0.contains_pair.? (Dcr Type Dcr Type Poly Poly Poly)
 Bool
)

;; Function-Decl vstd::multiset::impl&%0::remove
(declare-fun vstd!multiset.impl&%0.remove.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::multiset::impl&%0::insert
(declare-fun vstd!multiset.impl&%0.insert.? (Dcr Type Poly Poly) Poly)

;; Function-Decl test_crate::Y::State::tr1
(declare-fun test_crate!Y.impl&%15.tr1.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr2
(declare-fun test_crate!Y.impl&%15.tr2.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr3
(declare-fun test_crate!Y.impl&%15.tr3.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr4
(declare-fun test_crate!Y.impl&%15.tr4.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr1_strong
(declare-fun test_crate!Y.impl&%15.tr1_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr2_strong
(declare-fun test_crate!Y.impl&%15.tr2_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr3_strong
(declare-fun test_crate!Y.impl&%15.tr3_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr4_strong
(declare-fun test_crate!Y.impl&%15.tr4_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Foo::arrow_Bar_0
(declare-fun test_crate!impl&%0.arrow_Bar_0.? (Poly) Int)

;; Function-Decl test_crate::Foo::arrow_Qax_0
(declare-fun test_crate!impl&%0.arrow_Qax_0.? (Poly) Int)

;; Function-Decl test_crate::Foo::arrow_Duck_0
(declare-fun test_crate!impl&%0.arrow_Duck_0.? (Poly) Int)

;; Function-Decl test_crate::rel_tr1
(declare-fun test_crate!rel_tr1.? (Poly Poly) Bool)

;; Function-Decl test_crate::rel_tr1_strong
(declare-fun test_crate!rel_tr1_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::rel_tr2
(declare-fun test_crate!rel_tr2.? (Poly Poly) Bool)

;; Function-Decl test_crate::rel_tr2_strong
(declare-fun test_crate!rel_tr2_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::rel_tr3
(declare-fun test_crate!rel_tr3.? (Poly Poly) Bool)

;; Function-Decl test_crate::rel_tr3_strong
(declare-fun test_crate!rel_tr3_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::rel_tr4
(declare-fun test_crate!rel_tr4.? (Poly Poly) Bool)

;; Function-Decl test_crate::rel_tr4_strong
(declare-fun test_crate!rel_tr4_strong.? (Poly Poly) Bool)

;; Function-Axioms vstd::std_specs::option::OptionAdditionalFns::is_None
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd!std_specs.option.OptionAdditionalFns.is_None.? Self%&. Self%& T&. T&
      self!
     ) BOOL
   ))
   :pattern ((vstd!std_specs.option.OptionAdditionalFns.is_None.? Self%&. Self%& T&. T&
     self!
   ))
   :qid internal_vstd!std_specs.option.OptionAdditionalFns.is_None.?_pre_post_definition
   :skolemid skolem_internal_vstd!std_specs.option.OptionAdditionalFns.is_None.?_pre_post_definition
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

;; Function-Axioms vstd::map::impl&%0::remove
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd!map.Map. K&. K& V&. V&))
     (has_type key! K&)
    )
    (has_type (vstd!map.impl&%0.remove.? K&. K& V&. V& self! key!) (TYPE%vstd!map.Map.
      K&. K& V&. V&
   )))
   :pattern ((vstd!map.impl&%0.remove.? K&. K& V&. V& self! key!))
   :qid internal_vstd!map.impl&__0.remove.?_pre_post_definition
   :skolemid skolem_internal_vstd!map.impl&__0.remove.?_pre_post_definition
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

;; Function-Axioms vstd::set::impl&%0::remove
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (a! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd!set.Set. A&. A&))
     (has_type a! A&)
    )
    (has_type (vstd!set.impl&%0.remove.? A&. A& self! a!) (TYPE%vstd!set.Set. A&. A&))
   )
   :pattern ((vstd!set.impl&%0.remove.? A&. A& self! a!))
   :qid internal_vstd!set.impl&__0.remove.?_pre_post_definition
   :skolemid skolem_internal_vstd!set.impl&__0.remove.?_pre_post_definition
)))

;; Broadcast vstd::map::axiom_map_remove_domain
(assert
 (=>
  (fuel_bool fuel%vstd!map.axiom_map_remove_domain.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (key! Poly)) (!
    (=>
     (and
      (has_type m! (TYPE%vstd!map.Map. K&. K& V&. V&))
      (has_type key! K&)
     )
     (= (vstd!map.impl&%0.dom.? K&. K& V&. V& (vstd!map.impl&%0.remove.? K&. K& V&. V& m!
        key!
       )
      ) (vstd!set.impl&%0.remove.? K&. K& (vstd!map.impl&%0.dom.? K&. K& V&. V& m!) key!)
    ))
    :pattern ((vstd!map.impl&%0.dom.? K&. K& V&. V& (vstd!map.impl&%0.remove.? K&. K& V&.
       V& m! key!
    )))
    :qid user_vstd__map__axiom_map_remove_domain_5
    :skolemid skolem_user_vstd__map__axiom_map_remove_domain_5
))))

;; Broadcast vstd::map::axiom_map_remove_different
(assert
 (=>
  (fuel_bool fuel%vstd!map.axiom_map_remove_different.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (key1! Poly) (key2! Poly))
   (!
    (=>
     (and
      (has_type m! (TYPE%vstd!map.Map. K&. K& V&. V&))
      (has_type key1! K&)
      (has_type key2! K&)
     )
     (=>
      (and
       (vstd!set.impl&%0.contains.? K&. K& (vstd!map.impl&%0.dom.? K&. K& V&. V& m!) key1!)
       (not (= key1! key2!))
      )
      (= (vstd!map.impl&%0.index.? K&. K& V&. V& (vstd!map.impl&%0.remove.? K&. K& V&. V&
         m! key2!
        ) key1!
       ) (vstd!map.impl&%0.index.? K&. K& V&. V& m! key1!)
    )))
    :pattern ((vstd!map.impl&%0.index.? K&. K& V&. V& (vstd!map.impl&%0.remove.? K&. K&
       V&. V& m! key2!
      ) key1!
    ))
    :qid user_vstd__map__axiom_map_remove_different_6
    :skolemid skolem_user_vstd__map__axiom_map_remove_different_6
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
         :qid user_vstd__map__axiom_map_ext_equal_7
         :skolemid skolem_user_vstd__map__axiom_map_ext_equal_7
    )))))
    :pattern ((ext_eq false (TYPE%vstd!map.Map. K&. K& V&. V&) m1! m2!))
    :qid user_vstd__map__axiom_map_ext_equal_8
    :skolemid skolem_user_vstd__map__axiom_map_ext_equal_8
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
         :qid user_vstd__map__axiom_map_ext_equal_deep_9
         :skolemid skolem_user_vstd__map__axiom_map_ext_equal_deep_9
    )))))
    :pattern ((ext_eq true (TYPE%vstd!map.Map. K&. K& V&. V&) m1! m2!))
    :qid user_vstd__map__axiom_map_ext_equal_deep_10
    :skolemid skolem_user_vstd__map__axiom_map_ext_equal_deep_10
))))

;; Function-Axioms vstd::multiset::impl&%0::count
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (value! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd!multiset.Multiset. V&. V&))
     (has_type value! V&)
    )
    (<= 0 (vstd!multiset.impl&%0.count.? V&. V& self! value!))
   )
   :pattern ((vstd!multiset.impl&%0.count.? V&. V& self! value!))
   :qid internal_vstd!multiset.impl&__0.count.?_pre_post_definition
   :skolemid skolem_internal_vstd!multiset.impl&__0.count.?_pre_post_definition
)))

;; Function-Axioms vstd::multiset::impl&%0::singleton
(assert
 (forall ((V&. Dcr) (V& Type) (v! Poly)) (!
   (=>
    (has_type v! V&)
    (has_type (vstd!multiset.impl&%0.singleton.? V&. V& v!) (TYPE%vstd!multiset.Multiset.
      V&. V&
   )))
   :pattern ((vstd!multiset.impl&%0.singleton.? V&. V& v!))
   :qid internal_vstd!multiset.impl&__0.singleton.?_pre_post_definition
   :skolemid skolem_internal_vstd!multiset.impl&__0.singleton.?_pre_post_definition
)))

;; Function-Axioms vstd::multiset::impl&%0::add
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd!multiset.Multiset. V&. V&))
     (has_type m2! (TYPE%vstd!multiset.Multiset. V&. V&))
    )
    (has_type (vstd!multiset.impl&%0.add.? V&. V& self! m2!) (TYPE%vstd!multiset.Multiset.
      V&. V&
   )))
   :pattern ((vstd!multiset.impl&%0.add.? V&. V& self! m2!))
   :qid internal_vstd!multiset.impl&__0.add.?_pre_post_definition
   :skolemid skolem_internal_vstd!multiset.impl&__0.add.?_pre_post_definition
)))

;; Function-Axioms vstd::multiset::impl&%0::sub
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd!multiset.Multiset. V&. V&))
     (has_type m2! (TYPE%vstd!multiset.Multiset. V&. V&))
    )
    (has_type (vstd!multiset.impl&%0.sub.? V&. V& self! m2!) (TYPE%vstd!multiset.Multiset.
      V&. V&
   )))
   :pattern ((vstd!multiset.impl&%0.sub.? V&. V& self! m2!))
   :qid internal_vstd!multiset.impl&__0.sub.?_pre_post_definition
   :skolemid skolem_internal_vstd!multiset.impl&__0.sub.?_pre_post_definition
)))

;; Broadcast vstd::multiset::axiom_multiset_singleton
(assert
 (=>
  (fuel_bool fuel%vstd!multiset.axiom_multiset_singleton.)
  (forall ((V&. Dcr) (V& Type) (v! Poly)) (!
    (=>
     (has_type v! V&)
     (= (vstd!multiset.impl&%0.count.? V&. V& (vstd!multiset.impl&%0.singleton.? V&. V& v!)
       v!
      ) 1
    ))
    :pattern ((vstd!multiset.impl&%0.singleton.? V&. V& v!))
    :qid user_vstd__multiset__axiom_multiset_singleton_11
    :skolemid skolem_user_vstd__multiset__axiom_multiset_singleton_11
))))

;; Broadcast vstd::multiset::axiom_multiset_singleton_different
(assert
 (=>
  (fuel_bool fuel%vstd!multiset.axiom_multiset_singleton_different.)
  (forall ((V&. Dcr) (V& Type) (v! Poly) (w! Poly)) (!
    (=>
     (and
      (has_type v! V&)
      (has_type w! V&)
     )
     (=>
      (not (= v! w!))
      (= (vstd!multiset.impl&%0.count.? V&. V& (vstd!multiset.impl&%0.singleton.? V&. V& v!)
        w!
       ) 0
    )))
    :pattern ((vstd!multiset.impl&%0.count.? V&. V& (vstd!multiset.impl&%0.singleton.? V&.
       V& v!
      ) w!
    ))
    :qid user_vstd__multiset__axiom_multiset_singleton_different_12
    :skolemid skolem_user_vstd__multiset__axiom_multiset_singleton_different_12
))))

;; Broadcast vstd::multiset::axiom_multiset_add
(assert
 (=>
  (fuel_bool fuel%vstd!multiset.axiom_multiset_add.)
  (forall ((V&. Dcr) (V& Type) (m1! Poly) (m2! Poly) (v! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd!multiset.Multiset. V&. V&))
      (has_type m2! (TYPE%vstd!multiset.Multiset. V&. V&))
      (has_type v! V&)
     )
     (= (vstd!multiset.impl&%0.count.? V&. V& (vstd!multiset.impl&%0.add.? V&. V& m1! m2!)
       v!
      ) (nClip (Add (vstd!multiset.impl&%0.count.? V&. V& m1! v!) (vstd!multiset.impl&%0.count.?
         V&. V& m2! v!
    )))))
    :pattern ((vstd!multiset.impl&%0.count.? V&. V& (vstd!multiset.impl&%0.add.? V&. V&
       m1! m2!
      ) v!
    ))
    :qid user_vstd__multiset__axiom_multiset_add_13
    :skolemid skolem_user_vstd__multiset__axiom_multiset_add_13
))))

;; Broadcast vstd::multiset::axiom_multiset_sub
(assert
 (=>
  (fuel_bool fuel%vstd!multiset.axiom_multiset_sub.)
  (forall ((V&. Dcr) (V& Type) (m1! Poly) (m2! Poly) (v! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd!multiset.Multiset. V&. V&))
      (has_type m2! (TYPE%vstd!multiset.Multiset. V&. V&))
      (has_type v! V&)
     )
     (= (vstd!multiset.impl&%0.count.? V&. V& (vstd!multiset.impl&%0.sub.? V&. V& m1! m2!)
       v!
      ) (ite
       (>= (vstd!multiset.impl&%0.count.? V&. V& m1! v!) (vstd!multiset.impl&%0.count.? V&.
         V& m2! v!
       ))
       (Sub (vstd!multiset.impl&%0.count.? V&. V& m1! v!) (vstd!multiset.impl&%0.count.? V&.
         V& m2! v!
       ))
       0
    )))
    :pattern ((vstd!multiset.impl&%0.count.? V&. V& (vstd!multiset.impl&%0.sub.? V&. V&
       m1! m2!
      ) v!
    ))
    :qid user_vstd__multiset__axiom_multiset_sub_14
    :skolemid skolem_user_vstd__multiset__axiom_multiset_sub_14
))))

;; Broadcast vstd::multiset::axiom_multiset_ext_equal
(assert
 (=>
  (fuel_bool fuel%vstd!multiset.axiom_multiset_ext_equal.)
  (forall ((V&. Dcr) (V& Type) (m1! Poly) (m2! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd!multiset.Multiset. V&. V&))
      (has_type m2! (TYPE%vstd!multiset.Multiset. V&. V&))
     )
     (= (ext_eq false (TYPE%vstd!multiset.Multiset. V&. V&) m1! m2!) (forall ((v$ Poly))
       (!
        (=>
         (has_type v$ V&)
         (= (vstd!multiset.impl&%0.count.? V&. V& m1! v$) (vstd!multiset.impl&%0.count.? V&.
           V& m2! v$
        )))
        :pattern ((vstd!multiset.impl&%0.count.? V&. V& m1! v$))
        :pattern ((vstd!multiset.impl&%0.count.? V&. V& m2! v$))
        :qid user_vstd__multiset__axiom_multiset_ext_equal_15
        :skolemid skolem_user_vstd__multiset__axiom_multiset_ext_equal_15
    ))))
    :pattern ((ext_eq false (TYPE%vstd!multiset.Multiset. V&. V&) m1! m2!))
    :qid user_vstd__multiset__axiom_multiset_ext_equal_16
    :skolemid skolem_user_vstd__multiset__axiom_multiset_ext_equal_16
))))

;; Broadcast vstd::multiset::axiom_multiset_ext_equal_deep
(assert
 (=>
  (fuel_bool fuel%vstd!multiset.axiom_multiset_ext_equal_deep.)
  (forall ((V&. Dcr) (V& Type) (m1! Poly) (m2! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd!multiset.Multiset. V&. V&))
      (has_type m2! (TYPE%vstd!multiset.Multiset. V&. V&))
     )
     (= (ext_eq true (TYPE%vstd!multiset.Multiset. V&. V&) m1! m2!) (ext_eq false (TYPE%vstd!multiset.Multiset.
        V&. V&
       ) m1! m2!
    )))
    :pattern ((ext_eq true (TYPE%vstd!multiset.Multiset. V&. V&) m1! m2!))
    :qid user_vstd__multiset__axiom_multiset_ext_equal_deep_17
    :skolemid skolem_user_vstd__multiset__axiom_multiset_ext_equal_deep_17
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
    :qid user_vstd__set__axiom_set_insert_same_18
    :skolemid skolem_user_vstd__set__axiom_set_insert_same_18
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
    :qid user_vstd__set__axiom_set_insert_different_19
    :skolemid skolem_user_vstd__set__axiom_set_insert_different_19
))))

;; Broadcast vstd::set::axiom_set_remove_same
(assert
 (=>
  (fuel_bool fuel%vstd!set.axiom_set_remove_same.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd!set.Set. A&. A&))
      (has_type a! A&)
     )
     (not (vstd!set.impl&%0.contains.? A&. A& (vstd!set.impl&%0.remove.? A&. A& s! a!) a!))
    )
    :pattern ((vstd!set.impl&%0.contains.? A&. A& (vstd!set.impl&%0.remove.? A&. A& s! a!)
      a!
    ))
    :qid user_vstd__set__axiom_set_remove_same_20
    :skolemid skolem_user_vstd__set__axiom_set_remove_same_20
))))

;; Broadcast vstd::set::axiom_set_remove_insert
(assert
 (=>
  (fuel_bool fuel%vstd!set.axiom_set_remove_insert.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd!set.Set. A&. A&))
      (has_type a! A&)
     )
     (=>
      (vstd!set.impl&%0.contains.? A&. A& s! a!)
      (= (vstd!set.impl&%0.insert.? A&. A& (vstd!set.impl&%0.remove.? A&. A& s! a!) a!)
       s!
    )))
    :pattern ((vstd!set.impl&%0.remove.? A&. A& s! a!))
    :qid user_vstd__set__axiom_set_remove_insert_21
    :skolemid skolem_user_vstd__set__axiom_set_remove_insert_21
))))

;; Broadcast vstd::set::axiom_set_remove_different
(assert
 (=>
  (fuel_bool fuel%vstd!set.axiom_set_remove_different.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a1! Poly) (a2! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd!set.Set. A&. A&))
      (has_type a1! A&)
      (has_type a2! A&)
     )
     (=>
      (not (= a1! a2!))
      (= (vstd!set.impl&%0.contains.? A&. A& (vstd!set.impl&%0.remove.? A&. A& s! a2!) a1!)
       (vstd!set.impl&%0.contains.? A&. A& s! a1!)
    )))
    :pattern ((vstd!set.impl&%0.contains.? A&. A& (vstd!set.impl&%0.remove.? A&. A& s! a2!)
      a1!
    ))
    :qid user_vstd__set__axiom_set_remove_different_22
    :skolemid skolem_user_vstd__set__axiom_set_remove_different_22
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
        :qid user_vstd__set__axiom_set_ext_equal_23
        :skolemid skolem_user_vstd__set__axiom_set_ext_equal_23
    ))))
    :pattern ((ext_eq false (TYPE%vstd!set.Set. A&. A&) s1! s2!))
    :qid user_vstd__set__axiom_set_ext_equal_24
    :skolemid skolem_user_vstd__set__axiom_set_ext_equal_24
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
    :qid user_vstd__set__axiom_set_ext_equal_deep_25
    :skolemid skolem_user_vstd__set__axiom_set_ext_equal_deep_25
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
    :qid user_vstd__set__axiom_set_insert_finite_26
    :skolemid skolem_user_vstd__set__axiom_set_insert_finite_26
))))

;; Broadcast vstd::set::axiom_set_remove_finite
(assert
 (=>
  (fuel_bool fuel%vstd!set.axiom_set_remove_finite.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd!set.Set. A&. A&))
      (has_type a! A&)
     )
     (=>
      (vstd!set.impl&%0.finite.? A&. A& s!)
      (vstd!set.impl&%0.finite.? A&. A& (vstd!set.impl&%0.remove.? A&. A& s! a!))
    ))
    :pattern ((vstd!set.impl&%0.finite.? A&. A& (vstd!set.impl&%0.remove.? A&. A& s! a!)))
    :qid user_vstd__set__axiom_set_remove_finite_27
    :skolemid skolem_user_vstd__set__axiom_set_remove_finite_27
))))

;; Function-Axioms vstd::std_specs::option::impl&%0::is_None
(assert
 (fuel_bool_default fuel%vstd!std_specs.option.impl&%0.is_None.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.option.impl&%0.is_None.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd!std_specs.option.OptionAdditionalFns.is_None.? $ (TYPE%core!option.Option.
       T&. T&
      ) T&. T& self!
     ) (B (is-core!option.Option./None (%Poly%core!option.Option. self!)))
    )
    :pattern ((vstd!std_specs.option.OptionAdditionalFns.is_None.? $ (TYPE%core!option.Option.
       T&. T&
      ) T&. T& self!
    ))
    :qid internal_vstd!std_specs.option.OptionAdditionalFns.is_None.?_definition
    :skolemid skolem_internal_vstd!std_specs.option.OptionAdditionalFns.is_None.?_definition
))))

;; Function-Axioms vstd::map_lib::impl&%0::contains_pair
(assert
 (fuel_bool_default fuel%vstd!map_lib.impl&%0.contains_pair.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!map_lib.impl&%0.contains_pair.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (k! Poly) (v! Poly))
   (!
    (= (vstd!map_lib.impl&%0.contains_pair.? K&. K& V&. V& self! k! v!) (and
      (vstd!set.impl&%0.contains.? K&. K& (vstd!map.impl&%0.dom.? K&. K& V&. V& self!) k!)
      (= (vstd!map.impl&%0.index.? K&. K& V&. V& self! k!) v!)
    ))
    :pattern ((vstd!map_lib.impl&%0.contains_pair.? K&. K& V&. V& self! k! v!))
    :qid internal_vstd!map_lib.impl&__0.contains_pair.?_definition
    :skolemid skolem_internal_vstd!map_lib.impl&__0.contains_pair.?_definition
))))

;; Function-Axioms vstd::multiset::impl&%0::remove
(assert
 (fuel_bool_default fuel%vstd!multiset.impl&%0.remove.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!multiset.impl&%0.remove.)
  (forall ((V&. Dcr) (V& Type) (self! Poly) (v! Poly)) (!
    (= (vstd!multiset.impl&%0.remove.? V&. V& self! v!) (vstd!multiset.impl&%0.sub.? V&.
      V& self! (vstd!multiset.impl&%0.singleton.? V&. V& v!)
    ))
    :pattern ((vstd!multiset.impl&%0.remove.? V&. V& self! v!))
    :qid internal_vstd!multiset.impl&__0.remove.?_definition
    :skolemid skolem_internal_vstd!multiset.impl&__0.remove.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (v! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd!multiset.Multiset. V&. V&))
     (has_type v! V&)
    )
    (has_type (vstd!multiset.impl&%0.remove.? V&. V& self! v!) (TYPE%vstd!multiset.Multiset.
      V&. V&
   )))
   :pattern ((vstd!multiset.impl&%0.remove.? V&. V& self! v!))
   :qid internal_vstd!multiset.impl&__0.remove.?_pre_post_definition
   :skolemid skolem_internal_vstd!multiset.impl&__0.remove.?_pre_post_definition
)))

;; Function-Axioms vstd::multiset::impl&%0::insert
(assert
 (fuel_bool_default fuel%vstd!multiset.impl&%0.insert.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!multiset.impl&%0.insert.)
  (forall ((V&. Dcr) (V& Type) (self! Poly) (v! Poly)) (!
    (= (vstd!multiset.impl&%0.insert.? V&. V& self! v!) (vstd!multiset.impl&%0.add.? V&.
      V& self! (vstd!multiset.impl&%0.singleton.? V&. V& v!)
    ))
    :pattern ((vstd!multiset.impl&%0.insert.? V&. V& self! v!))
    :qid internal_vstd!multiset.impl&__0.insert.?_definition
    :skolemid skolem_internal_vstd!multiset.impl&__0.insert.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (v! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd!multiset.Multiset. V&. V&))
     (has_type v! V&)
    )
    (has_type (vstd!multiset.impl&%0.insert.? V&. V& self! v!) (TYPE%vstd!multiset.Multiset.
      V&. V&
   )))
   :pattern ((vstd!multiset.impl&%0.insert.? V&. V& self! v!))
   :qid internal_vstd!multiset.impl&__0.insert.?_pre_post_definition
   :skolemid skolem_internal_vstd!multiset.impl&__0.insert.?_pre_post_definition
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
       ((update_tmp_opt$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
       (let
        ((update_tmp_map$ (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. pre!))))
        (let
         ((update_tmp_mset$ (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. pre!))))
         (let
          ((update_tmp_storage_opt$ (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State.
              pre!
          ))))
          (let
           ((update_tmp_storage_map$ (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State.
               pre!
           ))))
           (and
            (= update_tmp_opt$ (core!option.Option./Some (I 5)))
            (let
             ((update_tmp_opt$1 core!option.Option./None))
             (let
              ((tmp_assert$1 (and
                 tmp_assert$
                 (is-core!option.Option./None update_tmp_opt$1)
              )))
              (let
               ((update_tmp_opt$2 (core!option.Option./Some (I 8))))
               (and
                (=>
                 tmp_assert$1
                 (vstd!map_lib.impl&%0.contains_pair.? $ INT $ INT (Poly%vstd!map.Map<int./int.>. update_tmp_map$)
                  (I 0) (I 1)
                ))
                (let
                 ((update_tmp_map$1 (%Poly%vstd!map.Map<int./int.>. (vstd!map.impl&%0.remove.? $ INT $
                     INT (Poly%vstd!map.Map<int./int.>. update_tmp_map$) (I 0)
                 ))))
                 (and
                  (=>
                   tmp_assert$1
                   (vstd!map_lib.impl&%0.contains_pair.? $ INT $ INT (Poly%vstd!map.Map<int./int.>. update_tmp_map$1)
                    (I 2) (I 3)
                  ))
                  (let
                   ((tmp_assert$2 (and
                      tmp_assert$1
                      (not (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ INT (Poly%vstd!map.Map<int./int.>.
                          update_tmp_map$1
                         )
                        ) (I 4)
                   )))))
                   (let
                    ((update_tmp_map$2 (%Poly%vstd!map.Map<int./int.>. (vstd!map.impl&%0.insert.? $ INT $
                        INT (Poly%vstd!map.Map<int./int.>. update_tmp_map$1) (I 4) (I 5)
                    ))))
                    (and
                     (=>
                      tmp_assert$2
                      (>= (vstd!multiset.impl&%0.count.? $ INT (Poly%vstd!multiset.Multiset<int.>. update_tmp_mset$)
                        (I 10)
                       ) 1
                     ))
                     (let
                      ((update_tmp_mset$1 (%Poly%vstd!multiset.Multiset<int.>. (vstd!multiset.impl&%0.remove.?
                          $ INT (Poly%vstd!multiset.Multiset<int.>. update_tmp_mset$) (I 10)
                      ))))
                      (and
                       (=>
                        tmp_assert$2
                        (>= (vstd!multiset.impl&%0.count.? $ INT (Poly%vstd!multiset.Multiset<int.>. update_tmp_mset$1)
                          (I 11)
                         ) 1
                       ))
                       (let
                        ((update_tmp_mset$2 (%Poly%vstd!multiset.Multiset<int.>. (vstd!multiset.impl&%0.insert.?
                            $ INT (Poly%vstd!multiset.Multiset<int.>. update_tmp_mset$1) (I 12)
                        ))))
                        (let
                         ((tmp_assert$3 (and
                            tmp_assert$2
                            (= update_tmp_storage_opt$ (core!option.Option./Some (I 13)))
                         )))
                         (let
                          ((update_tmp_storage_opt$1 core!option.Option./None))
                          (let
                           ((tmp_assert$4 (and
                              tmp_assert$3
                              (is-core!option.Option./None update_tmp_storage_opt$1)
                           )))
                           (let
                            ((update_tmp_storage_opt$2 (core!option.Option./Some (I 14))))
                            (let
                             ((tmp_assert$5 (and
                                tmp_assert$4
                                (vstd!map_lib.impl&%0.contains_pair.? $ INT $ INT (Poly%vstd!map.Map<int./int.>. update_tmp_storage_map$)
                                 (I 15) (I 16)
                             ))))
                             (let
                              ((update_tmp_storage_map$1 (%Poly%vstd!map.Map<int./int.>. (vstd!map.impl&%0.remove.?
                                  $ INT $ INT (Poly%vstd!map.Map<int./int.>. update_tmp_storage_map$) (I 15)
                              ))))
                              (let
                               ((tmp_assert$6 (and
                                  tmp_assert$5
                                  (not (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ INT (Poly%vstd!map.Map<int./int.>.
                                      update_tmp_storage_map$1
                                     )
                                    ) (I 17)
                               )))))
                               (let
                                ((update_tmp_storage_map$2 (%Poly%vstd!map.Map<int./int.>. (vstd!map.impl&%0.insert.?
                                    $ INT $ INT (Poly%vstd!map.Map<int./int.>. update_tmp_storage_map$1) (I 17) (I 18)
                                ))))
                                (and
                                 (=>
                                  tmp_assert$6
                                  (= (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State. post!)) update_tmp_storage_map$2)
                                 )
                                 (and
                                  (=>
                                   tmp_assert$6
                                   (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) update_tmp_storage_opt$2)
                                  )
                                  (and
                                   (=>
                                    tmp_assert$6
                                    (= (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. post!)) update_tmp_mset$2)
                                   )
                                   (and
                                    (=>
                                     tmp_assert$6
                                     (= (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. post!)) update_tmp_map$2)
                                    )
                                    (=>
                                     tmp_assert$6
                                     (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) update_tmp_opt$2)
    )))))))))))))))))))))))))))))))))
    :pattern ((test_crate!Y.impl&%15.tr1.? pre! post!))
    :qid internal_test_crate!Y.impl&__15.tr1.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.tr1.?_definition
))))

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
       ((update_tmp_opt$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
       (let
        ((update_tmp_map$ (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. pre!))))
        (let
         ((update_tmp_mset$ (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. pre!))))
         (let
          ((update_tmp_storage_opt$ (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State.
              pre!
          ))))
          (let
           ((update_tmp_storage_map$ (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State.
               pre!
           ))))
           (and
            (= update_tmp_opt$ (core!option.Option./Some (I 7)))
            (let
             ((tmp_assert$1 (and
                tmp_assert$
                (not (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ INT (Poly%vstd!map.Map<int./int.>.
                    update_tmp_map$
                   )
                  ) (I 4)
             )))))
             (let
              ((update_tmp_map$1 (%Poly%vstd!map.Map<int./int.>. (vstd!map.impl&%0.insert.? $ INT $
                  INT (Poly%vstd!map.Map<int./int.>. update_tmp_map$) (I 4) (I 5)
              ))))
              (and
               (=>
                tmp_assert$1
                (= (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. post!)) update_tmp_map$1)
               )
               (and
                (=>
                 tmp_assert$1
                 (= (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State. post!)) update_tmp_storage_map$)
                )
                (and
                 (=>
                  tmp_assert$1
                  (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) update_tmp_storage_opt$)
                 )
                 (and
                  (=>
                   tmp_assert$1
                   (= (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. post!)) update_tmp_mset$)
                  )
                  (=>
                   tmp_assert$1
                   (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) update_tmp_opt$)
    )))))))))))))))
    :pattern ((test_crate!Y.impl&%15.tr2.? pre! post!))
    :qid internal_test_crate!Y.impl&__15.tr2.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.tr2.?_definition
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
      ((tmp_assert$ true))
      (let
       ((update_tmp_opt$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
       (let
        ((update_tmp_map$ (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. pre!))))
        (let
         ((update_tmp_mset$ (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. pre!))))
         (let
          ((update_tmp_storage_opt$ (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State.
              pre!
          ))))
          (let
           ((update_tmp_storage_map$ (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State.
               pre!
           ))))
           (and
            (= update_tmp_opt$ (core!option.Option./Some (I 7)))
            (let
             ((update_tmp_opt$1 core!option.Option./None))
             (let
              ((tmp_assert$1 (and
                 tmp_assert$
                 (= update_tmp_storage_opt$ (core!option.Option./Some (I 12)))
              )))
              (let
               ((update_tmp_storage_opt$1 core!option.Option./None))
               (and
                (=>
                 tmp_assert$1
                 (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) update_tmp_storage_opt$1)
                )
                (and
                 (=>
                  tmp_assert$1
                  (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) update_tmp_opt$1)
                 )
                 (and
                  (=>
                   tmp_assert$1
                   (= (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State. post!)) update_tmp_storage_map$)
                  )
                  (and
                   (=>
                    tmp_assert$1
                    (= (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. post!)) update_tmp_mset$)
                   )
                   (=>
                    tmp_assert$1
                    (= (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. post!)) update_tmp_map$)
    ))))))))))))))))
    :pattern ((test_crate!Y.impl&%15.tr3.? pre! post!))
    :qid internal_test_crate!Y.impl&__15.tr3.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.tr3.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr4
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%15.tr4.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.tr4.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%15.tr4.? pre! post!) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_opt$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
       (let
        ((update_tmp_map$ (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. pre!))))
        (let
         ((update_tmp_mset$ (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. pre!))))
         (let
          ((update_tmp_storage_opt$ (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State.
              pre!
          ))))
          (let
           ((update_tmp_storage_map$ (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State.
               pre!
           ))))
           (let
            ((tmp_assert$1 (and
               tmp_assert$
               (is-core!option.Option./None update_tmp_opt$)
            )))
            (let
             ((update_tmp_opt$1 (core!option.Option./Some (I 7))))
             (let
              ((tmp_assert$2 (and
                 tmp_assert$1
                 (is-core!option.Option./None update_tmp_storage_opt$)
              )))
              (let
               ((update_tmp_storage_opt$1 (core!option.Option./Some (I 12))))
               (and
                (=>
                 tmp_assert$2
                 (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) update_tmp_storage_opt$1)
                )
                (and
                 (=>
                  tmp_assert$2
                  (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) update_tmp_opt$1)
                 )
                 (and
                  (=>
                   tmp_assert$2
                   (= (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State. post!)) update_tmp_storage_map$)
                  )
                  (and
                   (=>
                    tmp_assert$2
                    (= (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. post!)) update_tmp_mset$)
                   )
                   (=>
                    tmp_assert$2
                    (= (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. post!)) update_tmp_map$)
    ))))))))))))))))
    :pattern ((test_crate!Y.impl&%15.tr4.? pre! post!))
    :qid internal_test_crate!Y.impl&__15.tr4.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.tr4.?_definition
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
      ((update_tmp_opt$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
      (let
       ((update_tmp_map$ (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. pre!))))
       (let
        ((update_tmp_mset$ (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. pre!))))
        (let
         ((update_tmp_storage_opt$ (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State.
             pre!
         ))))
         (let
          ((update_tmp_storage_map$ (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State.
              pre!
          ))))
          (and
           (= update_tmp_opt$ (core!option.Option./Some (I 5)))
           (let
            ((update_tmp_opt$1 core!option.Option./None))
            (and
             (is-core!option.Option./None update_tmp_opt$1)
             (let
              ((update_tmp_opt$2 (core!option.Option./Some (I 8))))
              (and
               (vstd!map_lib.impl&%0.contains_pair.? $ INT $ INT (Poly%vstd!map.Map<int./int.>. update_tmp_map$)
                (I 0) (I 1)
               )
               (let
                ((update_tmp_map$1 (%Poly%vstd!map.Map<int./int.>. (vstd!map.impl&%0.remove.? $ INT $
                    INT (Poly%vstd!map.Map<int./int.>. update_tmp_map$) (I 0)
                ))))
                (and
                 (vstd!map_lib.impl&%0.contains_pair.? $ INT $ INT (Poly%vstd!map.Map<int./int.>. update_tmp_map$1)
                  (I 2) (I 3)
                 )
                 (and
                  (not (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ INT (Poly%vstd!map.Map<int./int.>.
                      update_tmp_map$1
                     )
                    ) (I 4)
                  ))
                  (let
                   ((update_tmp_map$2 (%Poly%vstd!map.Map<int./int.>. (vstd!map.impl&%0.insert.? $ INT $
                       INT (Poly%vstd!map.Map<int./int.>. update_tmp_map$1) (I 4) (I 5)
                   ))))
                   (and
                    (>= (vstd!multiset.impl&%0.count.? $ INT (Poly%vstd!multiset.Multiset<int.>. update_tmp_mset$)
                      (I 10)
                     ) 1
                    )
                    (let
                     ((update_tmp_mset$1 (%Poly%vstd!multiset.Multiset<int.>. (vstd!multiset.impl&%0.remove.?
                         $ INT (Poly%vstd!multiset.Multiset<int.>. update_tmp_mset$) (I 10)
                     ))))
                     (and
                      (>= (vstd!multiset.impl&%0.count.? $ INT (Poly%vstd!multiset.Multiset<int.>. update_tmp_mset$1)
                        (I 11)
                       ) 1
                      )
                      (let
                       ((update_tmp_mset$2 (%Poly%vstd!multiset.Multiset<int.>. (vstd!multiset.impl&%0.insert.?
                           $ INT (Poly%vstd!multiset.Multiset<int.>. update_tmp_mset$1) (I 12)
                       ))))
                       (and
                        (= update_tmp_storage_opt$ (core!option.Option./Some (I 13)))
                        (let
                         ((update_tmp_storage_opt$1 core!option.Option./None))
                         (and
                          (is-core!option.Option./None update_tmp_storage_opt$1)
                          (let
                           ((update_tmp_storage_opt$2 (core!option.Option./Some (I 14))))
                           (and
                            (vstd!map_lib.impl&%0.contains_pair.? $ INT $ INT (Poly%vstd!map.Map<int./int.>. update_tmp_storage_map$)
                             (I 15) (I 16)
                            )
                            (let
                             ((update_tmp_storage_map$1 (%Poly%vstd!map.Map<int./int.>. (vstd!map.impl&%0.remove.?
                                 $ INT $ INT (Poly%vstd!map.Map<int./int.>. update_tmp_storage_map$) (I 15)
                             ))))
                             (and
                              (not (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ INT (Poly%vstd!map.Map<int./int.>.
                                  update_tmp_storage_map$1
                                 )
                                ) (I 17)
                              ))
                              (let
                               ((update_tmp_storage_map$2 (%Poly%vstd!map.Map<int./int.>. (vstd!map.impl&%0.insert.?
                                   $ INT $ INT (Poly%vstd!map.Map<int./int.>. update_tmp_storage_map$1) (I 17) (I 18)
                               ))))
                               (and
                                (= (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State. post!)) update_tmp_storage_map$2)
                                (and
                                 (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) update_tmp_storage_opt$2)
                                 (and
                                  (= (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. post!)) update_tmp_mset$2)
                                  (and
                                   (= (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. post!)) update_tmp_map$2)
                                   (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) update_tmp_opt$2)
    )))))))))))))))))))))))))))))))
    :pattern ((test_crate!Y.impl&%15.tr1_strong.? pre! post!))
    :qid internal_test_crate!Y.impl&__15.tr1_strong.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.tr1_strong.?_definition
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
      ((update_tmp_opt$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
      (let
       ((update_tmp_map$ (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. pre!))))
       (let
        ((update_tmp_mset$ (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. pre!))))
        (let
         ((update_tmp_storage_opt$ (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State.
             pre!
         ))))
         (let
          ((update_tmp_storage_map$ (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State.
              pre!
          ))))
          (and
           (= update_tmp_opt$ (core!option.Option./Some (I 7)))
           (and
            (not (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ INT (Poly%vstd!map.Map<int./int.>.
                update_tmp_map$
               )
              ) (I 4)
            ))
            (let
             ((update_tmp_map$1 (%Poly%vstd!map.Map<int./int.>. (vstd!map.impl&%0.insert.? $ INT $
                 INT (Poly%vstd!map.Map<int./int.>. update_tmp_map$) (I 4) (I 5)
             ))))
             (and
              (= (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. post!)) update_tmp_map$1)
              (and
               (= (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State. post!)) update_tmp_storage_map$)
               (and
                (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) update_tmp_storage_opt$)
                (and
                 (= (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. post!)) update_tmp_mset$)
                 (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) update_tmp_opt$)
    )))))))))))))
    :pattern ((test_crate!Y.impl&%15.tr2_strong.? pre! post!))
    :qid internal_test_crate!Y.impl&__15.tr2_strong.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.tr2_strong.?_definition
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
      ((update_tmp_opt$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
      (let
       ((update_tmp_map$ (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. pre!))))
       (let
        ((update_tmp_mset$ (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. pre!))))
        (let
         ((update_tmp_storage_opt$ (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State.
             pre!
         ))))
         (let
          ((update_tmp_storage_map$ (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State.
              pre!
          ))))
          (and
           (= update_tmp_opt$ (core!option.Option./Some (I 7)))
           (let
            ((update_tmp_opt$1 core!option.Option./None))
            (and
             (= update_tmp_storage_opt$ (core!option.Option./Some (I 12)))
             (let
              ((update_tmp_storage_opt$1 core!option.Option./None))
              (and
               (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) update_tmp_storage_opt$1)
               (and
                (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) update_tmp_opt$1)
                (and
                 (= (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State. post!)) update_tmp_storage_map$)
                 (and
                  (= (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. post!)) update_tmp_mset$)
                  (= (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. post!)) update_tmp_map$)
    ))))))))))))))
    :pattern ((test_crate!Y.impl&%15.tr3_strong.? pre! post!))
    :qid internal_test_crate!Y.impl&__15.tr3_strong.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.tr3_strong.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr4_strong
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%15.tr4_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.tr4_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%15.tr4_strong.? pre! post!) (let
      ((update_tmp_opt$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
      (let
       ((update_tmp_map$ (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. pre!))))
       (let
        ((update_tmp_mset$ (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. pre!))))
        (let
         ((update_tmp_storage_opt$ (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State.
             pre!
         ))))
         (let
          ((update_tmp_storage_map$ (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State.
              pre!
          ))))
          (and
           (is-core!option.Option./None update_tmp_opt$)
           (let
            ((update_tmp_opt$1 (core!option.Option./Some (I 7))))
            (and
             (is-core!option.Option./None update_tmp_storage_opt$)
             (let
              ((update_tmp_storage_opt$1 (core!option.Option./Some (I 12))))
              (and
               (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) update_tmp_storage_opt$1)
               (and
                (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) update_tmp_opt$1)
                (and
                 (= (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State. post!)) update_tmp_storage_map$)
                 (and
                  (= (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. post!)) update_tmp_mset$)
                  (= (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. post!)) update_tmp_map$)
    ))))))))))))))
    :pattern ((test_crate!Y.impl&%15.tr4_strong.? pre! post!))
    :qid internal_test_crate!Y.impl&__15.tr4_strong.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.tr4_strong.?_definition
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

;; Function-Axioms test_crate::rel_tr1
(assert
 (fuel_bool_default fuel%test_crate!rel_tr1.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!rel_tr1.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!rel_tr1.? pre! post!) (and
      (and
       (and
        (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!)) (core!option.Option./Some
          (I 5)
        ))
        (vstd!map_lib.impl&%0.contains_pair.? $ INT $ INT (Poly%vstd!map.Map<int./int.>. (test_crate!Y.State./State/map
           (%Poly%test_crate!Y.State. pre!)
          )
         ) (I 0) (I 1)
       ))
       (vstd!map_lib.impl&%0.contains_pair.? $ INT $ INT (vstd!map.impl&%0.remove.? $ INT
         $ INT (Poly%vstd!map.Map<int./int.>. (test_crate!Y.State./State/map (%Poly%test_crate!Y.State.
            pre!
          ))
         ) (I 0)
        ) (I 2) (I 3)
      ))
      (=>
       (not (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map.impl&%0.remove.?
           $ INT $ INT (Poly%vstd!map.Map<int./int.>. (test_crate!Y.State./State/map (%Poly%test_crate!Y.State.
              pre!
            ))
           ) (I 0)
          )
         ) (I 4)
       ))
       (and
        (and
         (>= (vstd!multiset.impl&%0.count.? $ INT (Poly%vstd!multiset.Multiset<int.>. (test_crate!Y.State./State/mset
             (%Poly%test_crate!Y.State. pre!)
            )
           ) (I 10)
          ) 1
         )
         (>= (vstd!multiset.impl&%0.count.? $ INT (vstd!multiset.impl&%0.remove.? $ INT (Poly%vstd!multiset.Multiset<int.>.
             (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. pre!))
            ) (I 10)
           ) (I 11)
          ) 1
        ))
        (=>
         (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. pre!)) (core!option.Option./Some
           (I 13)
         ))
         (=>
          (vstd!map_lib.impl&%0.contains_pair.? $ INT $ INT (Poly%vstd!map.Map<int./int.>. (test_crate!Y.State./State/storage_map
             (%Poly%test_crate!Y.State. pre!)
            )
           ) (I 15) (I 16)
          )
          (=>
           (not (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map.impl&%0.remove.?
               $ INT $ INT (Poly%vstd!map.Map<int./int.>. (test_crate!Y.State./State/storage_map (
                  %Poly%test_crate!Y.State. pre!
                ))
               ) (I 15)
              )
             ) (I 17)
           ))
           (and
            (and
             (and
              (and
               (= (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!map.Map<int./int.>.
                 (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.remove.? $ INT $ INT (Poly%vstd!map.Map<int./int.>.
                    (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State. pre!))
                   ) (I 15)
                  ) (I 17) (I 18)
               )))
               (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) (core!option.Option./Some
                 (I 8)
              )))
              (= (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!map.Map<int./int.>.
                (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.remove.? $ INT $ INT (Poly%vstd!map.Map<int./int.>.
                   (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. pre!))
                  ) (I 0)
                 ) (I 4) (I 5)
             ))))
             (= (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!multiset.Multiset<int.>.
               (vstd!multiset.impl&%0.insert.? $ INT (vstd!multiset.impl&%0.remove.? $ INT (Poly%vstd!multiset.Multiset<int.>.
                  (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. pre!))
                 ) (I 10)
                ) (I 12)
            ))))
            (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) (core!option.Option./Some
              (I 14)
    ))))))))))
    :pattern ((test_crate!rel_tr1.? pre! post!))
    :qid internal_test_crate!rel_tr1.?_definition
    :skolemid skolem_internal_test_crate!rel_tr1.?_definition
))))

;; Function-Axioms test_crate::rel_tr1_strong
(assert
 (fuel_bool_default fuel%test_crate!rel_tr1_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!rel_tr1_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!rel_tr1_strong.? pre! post!) (and
      (and
       (and
        (and
         (and
          (and
           (and
            (and
             (and
              (and
               (and
                (and
                 (and
                  (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!)) (core!option.Option./Some
                    (I 5)
                  ))
                  (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) (core!option.Option./Some
                    (I 8)
                 )))
                 (vstd!map_lib.impl&%0.contains_pair.? $ INT $ INT (Poly%vstd!map.Map<int./int.>. (test_crate!Y.State./State/map
                    (%Poly%test_crate!Y.State. pre!)
                   )
                  ) (I 0) (I 1)
                ))
                (vstd!map_lib.impl&%0.contains_pair.? $ INT $ INT (vstd!map.impl&%0.remove.? $ INT
                  $ INT (Poly%vstd!map.Map<int./int.>. (test_crate!Y.State./State/map (%Poly%test_crate!Y.State.
                     pre!
                   ))
                  ) (I 0)
                 ) (I 2) (I 3)
               ))
               (not (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map.impl&%0.remove.?
                   $ INT $ INT (Poly%vstd!map.Map<int./int.>. (test_crate!Y.State./State/map (%Poly%test_crate!Y.State.
                      pre!
                    ))
                   ) (I 0)
                  )
                 ) (I 4)
              )))
              (= (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!map.Map<int./int.>.
                (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.remove.? $ INT $ INT (Poly%vstd!map.Map<int./int.>.
                   (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. pre!))
                  ) (I 0)
                 ) (I 4) (I 5)
             ))))
             (>= (vstd!multiset.impl&%0.count.? $ INT (Poly%vstd!multiset.Multiset<int.>. (test_crate!Y.State./State/mset
                 (%Poly%test_crate!Y.State. pre!)
                )
               ) (I 10)
              ) 1
            ))
            (>= (vstd!multiset.impl&%0.count.? $ INT (vstd!multiset.impl&%0.remove.? $ INT (Poly%vstd!multiset.Multiset<int.>.
                (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. pre!))
               ) (I 10)
              ) (I 11)
             ) 1
           ))
           (= (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!multiset.Multiset<int.>.
             (vstd!multiset.impl&%0.insert.? $ INT (vstd!multiset.impl&%0.remove.? $ INT (Poly%vstd!multiset.Multiset<int.>.
                (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. pre!))
               ) (I 10)
              ) (I 12)
          ))))
          (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. pre!)) (core!option.Option./Some
            (I 13)
         )))
         (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) (core!option.Option./Some
           (I 14)
        )))
        (vstd!map_lib.impl&%0.contains_pair.? $ INT $ INT (Poly%vstd!map.Map<int./int.>. (test_crate!Y.State./State/storage_map
           (%Poly%test_crate!Y.State. pre!)
          )
         ) (I 15) (I 16)
       ))
       (not (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map.impl&%0.remove.?
           $ INT $ INT (Poly%vstd!map.Map<int./int.>. (test_crate!Y.State./State/storage_map (
              %Poly%test_crate!Y.State. pre!
            ))
           ) (I 15)
          )
         ) (I 17)
      )))
      (= (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!map.Map<int./int.>.
        (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.remove.? $ INT $ INT (Poly%vstd!map.Map<int./int.>.
           (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State. pre!))
          ) (I 15)
         ) (I 17) (I 18)
    )))))
    :pattern ((test_crate!rel_tr1_strong.? pre! post!))
    :qid internal_test_crate!rel_tr1_strong.?_definition
    :skolemid skolem_internal_test_crate!rel_tr1_strong.?_definition
))))

;; Function-Axioms test_crate::rel_tr2
(assert
 (fuel_bool_default fuel%test_crate!rel_tr2.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!rel_tr2.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!rel_tr2.? pre! post!) (and
      (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!)) (core!option.Option./Some
        (I 7)
      ))
      (=>
       (not (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ INT (Poly%vstd!map.Map<int./int.>.
           (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. pre!))
          )
         ) (I 4)
       ))
       (and
        (and
         (and
          (and
           (= (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!map.Map<int./int.>.
             (vstd!map.impl&%0.insert.? $ INT $ INT (Poly%vstd!map.Map<int./int.>. (test_crate!Y.State./State/map
                (%Poly%test_crate!Y.State. pre!)
               )
              ) (I 4) (I 5)
           )))
           (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/opt
             (%Poly%test_crate!Y.State. pre!)
          )))
          (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/storage_opt
            (%Poly%test_crate!Y.State. pre!)
         )))
         (= (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/storage_map
           (%Poly%test_crate!Y.State. pre!)
        )))
        (= (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/mset
          (%Poly%test_crate!Y.State. pre!)
    ))))))
    :pattern ((test_crate!rel_tr2.? pre! post!))
    :qid internal_test_crate!rel_tr2.?_definition
    :skolemid skolem_internal_test_crate!rel_tr2.?_definition
))))

;; Function-Axioms test_crate::rel_tr2_strong
(assert
 (fuel_bool_default fuel%test_crate!rel_tr2_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!rel_tr2_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!rel_tr2_strong.? pre! post!) (and
      (and
       (and
        (and
         (and
          (and
           (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!)) (core!option.Option./Some
             (I 7)
           ))
           (not (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ INT (Poly%vstd!map.Map<int./int.>.
               (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. pre!))
              )
             ) (I 4)
          )))
          (= (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!map.Map<int./int.>.
            (vstd!map.impl&%0.insert.? $ INT $ INT (Poly%vstd!map.Map<int./int.>. (test_crate!Y.State./State/map
               (%Poly%test_crate!Y.State. pre!)
              )
             ) (I 4) (I 5)
         ))))
         (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/opt
           (%Poly%test_crate!Y.State. pre!)
        )))
        (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/storage_opt
          (%Poly%test_crate!Y.State. pre!)
       )))
       (= (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/storage_map
         (%Poly%test_crate!Y.State. pre!)
      )))
      (= (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/mset
        (%Poly%test_crate!Y.State. pre!)
    ))))
    :pattern ((test_crate!rel_tr2_strong.? pre! post!))
    :qid internal_test_crate!rel_tr2_strong.?_definition
    :skolemid skolem_internal_test_crate!rel_tr2_strong.?_definition
))))

;; Function-Axioms test_crate::rel_tr3
(assert
 (fuel_bool_default fuel%test_crate!rel_tr3.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!rel_tr3.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!rel_tr3.? pre! post!) (and
      (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!)) (core!option.Option./Some
        (I 7)
      ))
      (=>
       (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. pre!)) (core!option.Option./Some
         (I 12)
       ))
       (and
        (and
         (and
          (and
           (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) core!option.Option./None)
           (= (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/map
             (%Poly%test_crate!Y.State. pre!)
          )))
          (= (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/storage_map
            (%Poly%test_crate!Y.State. pre!)
         )))
         (= (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/mset
           (%Poly%test_crate!Y.State. pre!)
        )))
        (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) core!option.Option./None)
    ))))
    :pattern ((test_crate!rel_tr3.? pre! post!))
    :qid internal_test_crate!rel_tr3.?_definition
    :skolemid skolem_internal_test_crate!rel_tr3.?_definition
))))

;; Function-Axioms test_crate::rel_tr3_strong
(assert
 (fuel_bool_default fuel%test_crate!rel_tr3_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!rel_tr3_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!rel_tr3_strong.? pre! post!) (and
      (and
       (and
        (and
         (and
          (and
           (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!)) (core!option.Option./Some
             (I 7)
           ))
           (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) core!option.Option./None)
          )
          (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. pre!)) (core!option.Option./Some
            (I 12)
         )))
         (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) core!option.Option./None)
        )
        (= (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/map
          (%Poly%test_crate!Y.State. pre!)
       )))
       (= (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/storage_map
         (%Poly%test_crate!Y.State. pre!)
      )))
      (= (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/mset
        (%Poly%test_crate!Y.State. pre!)
    ))))
    :pattern ((test_crate!rel_tr3_strong.? pre! post!))
    :qid internal_test_crate!rel_tr3_strong.?_definition
    :skolemid skolem_internal_test_crate!rel_tr3_strong.?_definition
))))

;; Function-Axioms test_crate::rel_tr4
(assert
 (fuel_bool_default fuel%test_crate!rel_tr4.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!rel_tr4.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!rel_tr4.? pre! post!) (=>
      (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!)) core!option.Option./None)
      (=>
       (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. pre!)) core!option.Option./None)
       (and
        (and
         (and
          (and
           (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) (core!option.Option./Some
             (I 12)
           ))
           (= (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/map
             (%Poly%test_crate!Y.State. pre!)
          )))
          (= (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/storage_map
            (%Poly%test_crate!Y.State. pre!)
         )))
         (= (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/mset
           (%Poly%test_crate!Y.State. pre!)
        )))
        (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) (core!option.Option./Some
          (I 7)
    ))))))
    :pattern ((test_crate!rel_tr4.? pre! post!))
    :qid internal_test_crate!rel_tr4.?_definition
    :skolemid skolem_internal_test_crate!rel_tr4.?_definition
))))

;; Function-Axioms test_crate::rel_tr4_strong
(assert
 (fuel_bool_default fuel%test_crate!rel_tr4_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!rel_tr4_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!rel_tr4_strong.? pre! post!) (and
      (and
       (and
        (and
         (and
          (and
           (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!)) core!option.Option./None)
           (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) (core!option.Option./Some
             (I 7)
          )))
          (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. pre!)) core!option.Option./None)
         )
         (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) (core!option.Option./Some
           (I 12)
        )))
        (= (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/map
          (%Poly%test_crate!Y.State. pre!)
       )))
       (= (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/storage_map
         (%Poly%test_crate!Y.State. pre!)
      )))
      (= (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/mset
        (%Poly%test_crate!Y.State. pre!)
    ))))
    :pattern ((test_crate!rel_tr4_strong.? pre! post!))
    :qid internal_test_crate!rel_tr4_strong.?_definition
    :skolemid skolem_internal_test_crate!rel_tr4_strong.?_definition
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

;; Function-Specs test_crate::correct_tr1
(declare-fun req%test_crate!correct_tr1. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (req%test_crate!correct_tr1. pre! post!) (=>
     %%global_location_label%%2
     (test_crate!Y.impl&%15.tr1.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
   ))))
   :pattern ((req%test_crate!correct_tr1. pre! post!))
   :qid internal_req__test_crate!correct_tr1._definition
   :skolemid skolem_internal_req__test_crate!correct_tr1._definition
)))
(declare-fun ens%test_crate!correct_tr1. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!correct_tr1. pre! post!) (test_crate!rel_tr1.? (Poly%test_crate!Y.State.
      pre!
     ) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!correct_tr1. pre! post!))
   :qid internal_ens__test_crate!correct_tr1._definition
   :skolemid skolem_internal_ens__test_crate!correct_tr1._definition
)))

;; Function-Def test_crate::correct_tr1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special/test.rs:200:7: 200:52 (#0)
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
  (test_crate!Y.impl&%15.tr1.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
    post!
 )))
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (test_crate!rel_tr1.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::rev_tr1
(declare-fun req%test_crate!rev_tr1. (test_crate!Y.State. test_crate!Y.State.) Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (req%test_crate!rev_tr1. pre! post!) (=>
     %%global_location_label%%3
     (test_crate!rel_tr1.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
   ))
   :pattern ((req%test_crate!rev_tr1. pre! post!))
   :qid internal_req__test_crate!rev_tr1._definition
   :skolemid skolem_internal_req__test_crate!rev_tr1._definition
)))
(declare-fun ens%test_crate!rev_tr1. (test_crate!Y.State. test_crate!Y.State.) Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!rev_tr1. pre! post!) (test_crate!Y.impl&%15.tr1.? (Poly%test_crate!Y.State.
      pre!
     ) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!rev_tr1. pre! post!))
   :qid internal_ens__test_crate!rev_tr1._definition
   :skolemid skolem_internal_ens__test_crate!rev_tr1._definition
)))

;; Function-Def test_crate::rev_tr1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special/test.rs:205:7: 205:48 (#0)
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
  (test_crate!rel_tr1.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (test_crate!Y.impl&%15.tr1.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
      post!
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::correct_tr1_strong
(declare-fun req%test_crate!correct_tr1_strong. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (req%test_crate!correct_tr1_strong. pre! post!) (=>
     %%global_location_label%%4
     (test_crate!Y.impl&%15.tr1_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
   ))))
   :pattern ((req%test_crate!correct_tr1_strong. pre! post!))
   :qid internal_req__test_crate!correct_tr1_strong._definition
   :skolemid skolem_internal_req__test_crate!correct_tr1_strong._definition
)))
(declare-fun ens%test_crate!correct_tr1_strong. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!correct_tr1_strong. pre! post!) (test_crate!rel_tr1_strong.? (Poly%test_crate!Y.State.
      pre!
     ) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!correct_tr1_strong. pre! post!))
   :qid internal_ens__test_crate!correct_tr1_strong._definition
   :skolemid skolem_internal_ens__test_crate!correct_tr1_strong._definition
)))

;; Function-Def test_crate::correct_tr1_strong
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special/test.rs:210:7: 210:59 (#0)
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
  (test_crate!Y.impl&%15.tr1_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
    post!
 )))
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (test_crate!rel_tr1_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
      post!
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::rev_tr1_strong
(declare-fun req%test_crate!rev_tr1_strong. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (req%test_crate!rev_tr1_strong. pre! post!) (=>
     %%global_location_label%%5
     (test_crate!rel_tr1_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
   ))))
   :pattern ((req%test_crate!rev_tr1_strong. pre! post!))
   :qid internal_req__test_crate!rev_tr1_strong._definition
   :skolemid skolem_internal_req__test_crate!rev_tr1_strong._definition
)))
(declare-fun ens%test_crate!rev_tr1_strong. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!rev_tr1_strong. pre! post!) (test_crate!Y.impl&%15.tr1_strong.?
     (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!rev_tr1_strong. pre! post!))
   :qid internal_ens__test_crate!rev_tr1_strong._definition
   :skolemid skolem_internal_ens__test_crate!rev_tr1_strong._definition
)))

;; Function-Def test_crate::rev_tr1_strong
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special/test.rs:215:7: 215:55 (#0)
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
  (test_crate!rel_tr1_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
    post!
 )))
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (test_crate!Y.impl&%15.tr1_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
      post!
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::correct_tr2
(declare-fun req%test_crate!correct_tr2. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (req%test_crate!correct_tr2. pre! post!) (=>
     %%global_location_label%%6
     (test_crate!Y.impl&%15.tr2.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
   ))))
   :pattern ((req%test_crate!correct_tr2. pre! post!))
   :qid internal_req__test_crate!correct_tr2._definition
   :skolemid skolem_internal_req__test_crate!correct_tr2._definition
)))
(declare-fun ens%test_crate!correct_tr2. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!correct_tr2. pre! post!) (test_crate!rel_tr2.? (Poly%test_crate!Y.State.
      pre!
     ) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!correct_tr2. pre! post!))
   :qid internal_ens__test_crate!correct_tr2._definition
   :skolemid skolem_internal_ens__test_crate!correct_tr2._definition
)))

;; Function-Def test_crate::correct_tr2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special/test.rs:220:7: 220:52 (#0)
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
  (test_crate!Y.impl&%15.tr2.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
    post!
 )))
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (test_crate!rel_tr2.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::rev_tr2
(declare-fun req%test_crate!rev_tr2. (test_crate!Y.State. test_crate!Y.State.) Bool)
(declare-const %%global_location_label%%7 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (req%test_crate!rev_tr2. pre! post!) (=>
     %%global_location_label%%7
     (test_crate!rel_tr2.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
   ))
   :pattern ((req%test_crate!rev_tr2. pre! post!))
   :qid internal_req__test_crate!rev_tr2._definition
   :skolemid skolem_internal_req__test_crate!rev_tr2._definition
)))
(declare-fun ens%test_crate!rev_tr2. (test_crate!Y.State. test_crate!Y.State.) Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!rev_tr2. pre! post!) (test_crate!Y.impl&%15.tr2.? (Poly%test_crate!Y.State.
      pre!
     ) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!rev_tr2. pre! post!))
   :qid internal_ens__test_crate!rev_tr2._definition
   :skolemid skolem_internal_ens__test_crate!rev_tr2._definition
)))

;; Function-Def test_crate::rev_tr2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special/test.rs:225:7: 225:48 (#0)
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
  (test_crate!rel_tr2.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (test_crate!Y.impl&%15.tr2.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
      post!
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::correct_tr2_strong
(declare-fun req%test_crate!correct_tr2_strong. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (req%test_crate!correct_tr2_strong. pre! post!) (=>
     %%global_location_label%%8
     (test_crate!Y.impl&%15.tr2_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
   ))))
   :pattern ((req%test_crate!correct_tr2_strong. pre! post!))
   :qid internal_req__test_crate!correct_tr2_strong._definition
   :skolemid skolem_internal_req__test_crate!correct_tr2_strong._definition
)))
(declare-fun ens%test_crate!correct_tr2_strong. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!correct_tr2_strong. pre! post!) (test_crate!rel_tr2_strong.? (Poly%test_crate!Y.State.
      pre!
     ) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!correct_tr2_strong. pre! post!))
   :qid internal_ens__test_crate!correct_tr2_strong._definition
   :skolemid skolem_internal_ens__test_crate!correct_tr2_strong._definition
)))

;; Function-Def test_crate::correct_tr2_strong
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special/test.rs:230:7: 230:59 (#0)
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
  (test_crate!Y.impl&%15.tr2_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
    post!
 )))
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (test_crate!rel_tr2_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
      post!
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::rev_tr2_strong
(declare-fun req%test_crate!rev_tr2_strong. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(declare-const %%global_location_label%%9 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (req%test_crate!rev_tr2_strong. pre! post!) (=>
     %%global_location_label%%9
     (test_crate!rel_tr2_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
   ))))
   :pattern ((req%test_crate!rev_tr2_strong. pre! post!))
   :qid internal_req__test_crate!rev_tr2_strong._definition
   :skolemid skolem_internal_req__test_crate!rev_tr2_strong._definition
)))
(declare-fun ens%test_crate!rev_tr2_strong. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!rev_tr2_strong. pre! post!) (test_crate!Y.impl&%15.tr2_strong.?
     (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!rev_tr2_strong. pre! post!))
   :qid internal_ens__test_crate!rev_tr2_strong._definition
   :skolemid skolem_internal_ens__test_crate!rev_tr2_strong._definition
)))

;; Function-Def test_crate::rev_tr2_strong
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special/test.rs:235:7: 235:55 (#0)
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
  (test_crate!rel_tr2_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
    post!
 )))
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (test_crate!Y.impl&%15.tr2_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
      post!
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::correct_tr3
(declare-fun req%test_crate!correct_tr3. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(declare-const %%global_location_label%%10 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (req%test_crate!correct_tr3. pre! post!) (=>
     %%global_location_label%%10
     (test_crate!Y.impl&%15.tr3.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
   ))))
   :pattern ((req%test_crate!correct_tr3. pre! post!))
   :qid internal_req__test_crate!correct_tr3._definition
   :skolemid skolem_internal_req__test_crate!correct_tr3._definition
)))
(declare-fun ens%test_crate!correct_tr3. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!correct_tr3. pre! post!) (test_crate!rel_tr3.? (Poly%test_crate!Y.State.
      pre!
     ) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!correct_tr3. pre! post!))
   :qid internal_ens__test_crate!correct_tr3._definition
   :skolemid skolem_internal_ens__test_crate!correct_tr3._definition
)))

;; Function-Def test_crate::correct_tr3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special/test.rs:240:7: 240:52 (#0)
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
  (test_crate!Y.impl&%15.tr3.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
    post!
 )))
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (test_crate!rel_tr3.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::rev_tr3
(declare-fun req%test_crate!rev_tr3. (test_crate!Y.State. test_crate!Y.State.) Bool)
(declare-const %%global_location_label%%11 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (req%test_crate!rev_tr3. pre! post!) (=>
     %%global_location_label%%11
     (test_crate!rel_tr3.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
   ))
   :pattern ((req%test_crate!rev_tr3. pre! post!))
   :qid internal_req__test_crate!rev_tr3._definition
   :skolemid skolem_internal_req__test_crate!rev_tr3._definition
)))
(declare-fun ens%test_crate!rev_tr3. (test_crate!Y.State. test_crate!Y.State.) Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!rev_tr3. pre! post!) (test_crate!Y.impl&%15.tr3.? (Poly%test_crate!Y.State.
      pre!
     ) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!rev_tr3. pre! post!))
   :qid internal_ens__test_crate!rev_tr3._definition
   :skolemid skolem_internal_ens__test_crate!rev_tr3._definition
)))

;; Function-Def test_crate::rev_tr3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special/test.rs:245:7: 245:48 (#0)
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
  (test_crate!rel_tr3.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (test_crate!Y.impl&%15.tr3.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
      post!
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::correct_tr3_strong
(declare-fun req%test_crate!correct_tr3_strong. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(declare-const %%global_location_label%%12 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (req%test_crate!correct_tr3_strong. pre! post!) (=>
     %%global_location_label%%12
     (test_crate!Y.impl&%15.tr3_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
   ))))
   :pattern ((req%test_crate!correct_tr3_strong. pre! post!))
   :qid internal_req__test_crate!correct_tr3_strong._definition
   :skolemid skolem_internal_req__test_crate!correct_tr3_strong._definition
)))
(declare-fun ens%test_crate!correct_tr3_strong. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!correct_tr3_strong. pre! post!) (test_crate!rel_tr3_strong.? (Poly%test_crate!Y.State.
      pre!
     ) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!correct_tr3_strong. pre! post!))
   :qid internal_ens__test_crate!correct_tr3_strong._definition
   :skolemid skolem_internal_ens__test_crate!correct_tr3_strong._definition
)))

;; Function-Def test_crate::correct_tr3_strong
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special/test.rs:250:7: 250:59 (#0)
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
  (test_crate!Y.impl&%15.tr3_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
    post!
 )))
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (test_crate!rel_tr3_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
      post!
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::rev_tr3_strong
(declare-fun req%test_crate!rev_tr3_strong. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(declare-const %%global_location_label%%13 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (req%test_crate!rev_tr3_strong. pre! post!) (=>
     %%global_location_label%%13
     (test_crate!rel_tr3_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
   ))))
   :pattern ((req%test_crate!rev_tr3_strong. pre! post!))
   :qid internal_req__test_crate!rev_tr3_strong._definition
   :skolemid skolem_internal_req__test_crate!rev_tr3_strong._definition
)))
(declare-fun ens%test_crate!rev_tr3_strong. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!rev_tr3_strong. pre! post!) (test_crate!Y.impl&%15.tr3_strong.?
     (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!rev_tr3_strong. pre! post!))
   :qid internal_ens__test_crate!rev_tr3_strong._definition
   :skolemid skolem_internal_ens__test_crate!rev_tr3_strong._definition
)))

;; Function-Def test_crate::rev_tr3_strong
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special/test.rs:255:7: 255:55 (#0)
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
  (test_crate!rel_tr3_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
    post!
 )))
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (test_crate!Y.impl&%15.tr3_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
      post!
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::correct_tr4
(declare-fun req%test_crate!correct_tr4. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(declare-const %%global_location_label%%14 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (req%test_crate!correct_tr4. pre! post!) (=>
     %%global_location_label%%14
     (test_crate!Y.impl&%15.tr4.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
   ))))
   :pattern ((req%test_crate!correct_tr4. pre! post!))
   :qid internal_req__test_crate!correct_tr4._definition
   :skolemid skolem_internal_req__test_crate!correct_tr4._definition
)))
(declare-fun ens%test_crate!correct_tr4. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!correct_tr4. pre! post!) (test_crate!rel_tr4.? (Poly%test_crate!Y.State.
      pre!
     ) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!correct_tr4. pre! post!))
   :qid internal_ens__test_crate!correct_tr4._definition
   :skolemid skolem_internal_ens__test_crate!correct_tr4._definition
)))

;; Function-Def test_crate::correct_tr4
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special/test.rs:260:7: 260:52 (#0)
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
  (test_crate!Y.impl&%15.tr4.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
    post!
 )))
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (test_crate!rel_tr4.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::rev_tr4
(declare-fun req%test_crate!rev_tr4. (test_crate!Y.State. test_crate!Y.State.) Bool)
(declare-const %%global_location_label%%15 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (req%test_crate!rev_tr4. pre! post!) (=>
     %%global_location_label%%15
     (test_crate!rel_tr4.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
   ))
   :pattern ((req%test_crate!rev_tr4. pre! post!))
   :qid internal_req__test_crate!rev_tr4._definition
   :skolemid skolem_internal_req__test_crate!rev_tr4._definition
)))
(declare-fun ens%test_crate!rev_tr4. (test_crate!Y.State. test_crate!Y.State.) Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!rev_tr4. pre! post!) (test_crate!Y.impl&%15.tr4.? (Poly%test_crate!Y.State.
      pre!
     ) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!rev_tr4. pre! post!))
   :qid internal_ens__test_crate!rev_tr4._definition
   :skolemid skolem_internal_ens__test_crate!rev_tr4._definition
)))

;; Function-Def test_crate::rev_tr4
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special/test.rs:265:7: 265:48 (#0)
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
  (test_crate!rel_tr4.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (test_crate!Y.impl&%15.tr4.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
      post!
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::correct_tr4_strong
(declare-fun req%test_crate!correct_tr4_strong. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(declare-const %%global_location_label%%16 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (req%test_crate!correct_tr4_strong. pre! post!) (=>
     %%global_location_label%%16
     (test_crate!Y.impl&%15.tr4_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
   ))))
   :pattern ((req%test_crate!correct_tr4_strong. pre! post!))
   :qid internal_req__test_crate!correct_tr4_strong._definition
   :skolemid skolem_internal_req__test_crate!correct_tr4_strong._definition
)))
(declare-fun ens%test_crate!correct_tr4_strong. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!correct_tr4_strong. pre! post!) (test_crate!rel_tr4_strong.? (Poly%test_crate!Y.State.
      pre!
     ) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!correct_tr4_strong. pre! post!))
   :qid internal_ens__test_crate!correct_tr4_strong._definition
   :skolemid skolem_internal_ens__test_crate!correct_tr4_strong._definition
)))

;; Function-Def test_crate::correct_tr4_strong
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special/test.rs:270:7: 270:59 (#0)
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
  (test_crate!Y.impl&%15.tr4_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
    post!
 )))
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (test_crate!rel_tr4_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
      post!
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::rev_tr4_strong
(declare-fun req%test_crate!rev_tr4_strong. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(declare-const %%global_location_label%%17 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (req%test_crate!rev_tr4_strong. pre! post!) (=>
     %%global_location_label%%17
     (test_crate!rel_tr4_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
   ))))
   :pattern ((req%test_crate!rev_tr4_strong. pre! post!))
   :qid internal_req__test_crate!rev_tr4_strong._definition
   :skolemid skolem_internal_req__test_crate!rev_tr4_strong._definition
)))
(declare-fun ens%test_crate!rev_tr4_strong. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!rev_tr4_strong. pre! post!) (test_crate!Y.impl&%15.tr4_strong.?
     (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!rev_tr4_strong. pre! post!))
   :qid internal_ens__test_crate!rev_tr4_strong._definition
   :skolemid skolem_internal_ens__test_crate!rev_tr4_strong._definition
)))

;; Function-Def test_crate::rev_tr4_strong
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special/test.rs:275:7: 275:55 (#0)
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
  (test_crate!rel_tr4_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
    post!
 )))
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (test_crate!Y.impl&%15.tr4_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
      post!
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
