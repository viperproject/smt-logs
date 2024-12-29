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

;; MODULE 'module Y::show'

;; Fuel
(declare-const fuel%vstd!std_specs.option.impl&%0.is_Some. FuelId)
(declare-const fuel%vstd!std_specs.option.impl&%0.get_Some_0. FuelId)
(declare-const fuel%vstd!map.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd!map.axiom_map_index_decreases_finite. FuelId)
(declare-const fuel%vstd!map.axiom_map_index_decreases_infinite. FuelId)
(declare-const fuel%vstd!map.axiom_map_remove_domain. FuelId)
(declare-const fuel%vstd!map.axiom_map_remove_different. FuelId)
(declare-const fuel%vstd!map.axiom_map_ext_equal. FuelId)
(declare-const fuel%vstd!map.axiom_map_ext_equal_deep. FuelId)
(declare-const fuel%vstd!set.axiom_set_insert_same. FuelId)
(declare-const fuel%vstd!set.axiom_set_insert_different. FuelId)
(declare-const fuel%vstd!set.axiom_set_remove_same. FuelId)
(declare-const fuel%vstd!set.axiom_set_remove_insert. FuelId)
(declare-const fuel%vstd!set.axiom_set_remove_different. FuelId)
(declare-const fuel%vstd!set.axiom_set_ext_equal. FuelId)
(declare-const fuel%vstd!set.axiom_set_ext_equal_deep. FuelId)
(declare-const fuel%vstd!set.axiom_set_insert_finite. FuelId)
(declare-const fuel%vstd!set.axiom_set_remove_finite. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.initialize. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.tr1. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.tr2. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.tr3. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.tr4. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.tr5. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.tr6. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.tr7. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.tr8. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.tr9. FuelId)
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
  fuel%vstd!map.impl&%0.spec_index. fuel%vstd!map.axiom_map_index_decreases_finite.
  fuel%vstd!map.axiom_map_index_decreases_infinite. fuel%vstd!map.axiom_map_remove_domain.
  fuel%vstd!map.axiom_map_remove_different. fuel%vstd!map.axiom_map_ext_equal. fuel%vstd!map.axiom_map_ext_equal_deep.
  fuel%vstd!set.axiom_set_insert_same. fuel%vstd!set.axiom_set_insert_different. fuel%vstd!set.axiom_set_remove_same.
  fuel%vstd!set.axiom_set_remove_insert. fuel%vstd!set.axiom_set_remove_different.
  fuel%vstd!set.axiom_set_ext_equal. fuel%vstd!set.axiom_set_ext_equal_deep. fuel%vstd!set.axiom_set_insert_finite.
  fuel%vstd!set.axiom_set_remove_finite. fuel%test_crate!Y.impl&%13.initialize. fuel%test_crate!Y.impl&%13.tr1.
  fuel%test_crate!Y.impl&%13.tr2. fuel%test_crate!Y.impl&%13.tr3. fuel%test_crate!Y.impl&%13.tr4.
  fuel%test_crate!Y.impl&%13.tr5. fuel%test_crate!Y.impl&%13.tr6. fuel%test_crate!Y.impl&%13.tr7.
  fuel%test_crate!Y.impl&%13.tr8. fuel%test_crate!Y.impl&%13.tr9. fuel%vstd!array.group_array_axioms.
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
   (fuel_bool_default fuel%vstd!map.axiom_map_remove_domain.)
   (fuel_bool_default fuel%vstd!map.axiom_map_remove_different.)
   (fuel_bool_default fuel%vstd!map.axiom_map_ext_equal.)
   (fuel_bool_default fuel%vstd!map.axiom_map_ext_equal_deep.)
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
(declare-sort vstd!map.Map<int./test_crate!Goo.>. 0)
(declare-sort vstd!set.Set<int.>. 0)
(declare-datatypes ((core!option.Option. 0) (test_crate!Y.State. 0) (test_crate!Goo.
   0
  ) (tuple%0. 0) (tuple%2. 0)
 ) (((core!option.Option./None) (core!option.Option./Some (core!option.Option./Some/?0
     Poly
   ))
  ) ((test_crate!Y.State./State (test_crate!Y.State./State/?m vstd!map.Map<int./test_crate!Goo.>.)
    (test_crate!Y.State./State/?storage_m vstd!map.Map<int./test_crate!Goo.>.) (test_crate!Y.State./State/?opt
     core!option.Option.
    ) (test_crate!Y.State./State/?storage_opt core!option.Option.)
   )
  ) ((test_crate!Goo./Bar) (test_crate!Goo./Qux (test_crate!Goo./Qux/?0 Int)) (test_crate!Goo./Tal
    (test_crate!Goo./Tal/?0 Int) (test_crate!Goo./Tal/?1 Int)
   )
  ) ((tuple%0./tuple%0)) ((tuple%2./tuple%2 (tuple%2./tuple%2/?0 Poly) (tuple%2./tuple%2/?1
     Poly
)))))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun test_crate!Y.State./State/m (test_crate!Y.State.) vstd!map.Map<int./test_crate!Goo.>.)
(declare-fun test_crate!Y.State./State/storage_m (test_crate!Y.State.) vstd!map.Map<int./test_crate!Goo.>.)
(declare-fun test_crate!Y.State./State/opt (test_crate!Y.State.) core!option.Option.)
(declare-fun test_crate!Y.State./State/storage_opt (test_crate!Y.State.) core!option.Option.)
(declare-fun test_crate!Goo./Qux/0 (test_crate!Goo.) Int)
(declare-fun test_crate!Goo./Tal/0 (test_crate!Goo.) Int)
(declare-fun test_crate!Goo./Tal/1 (test_crate!Goo.) Int)
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-fun TYPE%vstd!map.Map. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd!set.Set. (Dcr Type) Type)
(declare-const TYPE%test_crate!Y.State. Type)
(declare-const TYPE%test_crate!Goo. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%2. (Dcr Type Dcr Type) Type)
(declare-fun Poly%vstd!map.Map<int./test_crate!Goo.>. (vstd!map.Map<int./test_crate!Goo.>.)
 Poly
)
(declare-fun %Poly%vstd!map.Map<int./test_crate!Goo.>. (Poly) vstd!map.Map<int./test_crate!Goo.>.)
(declare-fun Poly%vstd!set.Set<int.>. (vstd!set.Set<int.>.) Poly)
(declare-fun %Poly%vstd!set.Set<int.>. (Poly) vstd!set.Set<int.>.)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
(declare-fun Poly%test_crate!Y.State. (test_crate!Y.State.) Poly)
(declare-fun %Poly%test_crate!Y.State. (Poly) test_crate!Y.State.)
(declare-fun Poly%test_crate!Goo. (test_crate!Goo.) Poly)
(declare-fun %Poly%test_crate!Goo. (Poly) test_crate!Goo.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%2. (tuple%2.) Poly)
(declare-fun %Poly%tuple%2. (Poly) tuple%2.)
(assert
 (forall ((x vstd!map.Map<int./test_crate!Goo.>.)) (!
   (= x (%Poly%vstd!map.Map<int./test_crate!Goo.>. (Poly%vstd!map.Map<int./test_crate!Goo.>.
      x
   )))
   :pattern ((Poly%vstd!map.Map<int./test_crate!Goo.>. x))
   :qid internal_vstd__map__Map<int./test_crate!Goo.>_box_axiom_definition
   :skolemid skolem_internal_vstd__map__Map<int./test_crate!Goo.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!map.Map. $ INT $ TYPE%test_crate!Goo.))
    (= x (Poly%vstd!map.Map<int./test_crate!Goo.>. (%Poly%vstd!map.Map<int./test_crate!Goo.>.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd!map.Map. $ INT $ TYPE%test_crate!Goo.)))
   :qid internal_vstd__map__Map<int./test_crate!Goo.>_unbox_axiom_definition
   :skolemid skolem_internal_vstd__map__Map<int./test_crate!Goo.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!map.Map<int./test_crate!Goo.>.)) (!
   (has_type (Poly%vstd!map.Map<int./test_crate!Goo.>. x) (TYPE%vstd!map.Map. $ INT $
     TYPE%test_crate!Goo.
   ))
   :pattern ((has_type (Poly%vstd!map.Map<int./test_crate!Goo.>. x) (TYPE%vstd!map.Map.
      $ INT $ TYPE%test_crate!Goo.
   )))
   :qid internal_vstd__map__Map<int./test_crate!Goo.>_has_type_always_definition
   :skolemid skolem_internal_vstd__map__Map<int./test_crate!Goo.>_has_type_always_definition
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
 (forall ((_m! vstd!map.Map<int./test_crate!Goo.>.) (_storage_m! vstd!map.Map<int./test_crate!Goo.>.)
   (_opt! core!option.Option.) (_storage_opt! core!option.Option.)
  ) (!
   (=>
    (and
     (has_type (Poly%core!option.Option. _opt!) (TYPE%core!option.Option. $ TYPE%test_crate!Goo.))
     (has_type (Poly%core!option.Option. _storage_opt!) (TYPE%core!option.Option. $ TYPE%test_crate!Goo.))
    )
    (has_type (Poly%test_crate!Y.State. (test_crate!Y.State./State _m! _storage_m! _opt!
       _storage_opt!
      )
     ) TYPE%test_crate!Y.State.
   ))
   :pattern ((has_type (Poly%test_crate!Y.State. (test_crate!Y.State./State _m! _storage_m!
       _opt! _storage_opt!
      )
     ) TYPE%test_crate!Y.State.
   ))
   :qid internal_test_crate!Y.State./State_constructor_definition
   :skolemid skolem_internal_test_crate!Y.State./State_constructor_definition
)))
(assert
 (forall ((x test_crate!Y.State.)) (!
   (= (test_crate!Y.State./State/m x) (test_crate!Y.State./State/?m x))
   :pattern ((test_crate!Y.State./State/m x))
   :qid internal_test_crate!Y.State./State/m_accessor_definition
   :skolemid skolem_internal_test_crate!Y.State./State/m_accessor_definition
)))
(assert
 (forall ((x test_crate!Y.State.)) (!
   (= (test_crate!Y.State./State/storage_m x) (test_crate!Y.State./State/?storage_m x))
   :pattern ((test_crate!Y.State./State/storage_m x))
   :qid internal_test_crate!Y.State./State/storage_m_accessor_definition
   :skolemid skolem_internal_test_crate!Y.State./State/storage_m_accessor_definition
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
     ) (TYPE%core!option.Option. $ TYPE%test_crate!Goo.)
   ))
   :pattern ((test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. x)) (has_type x
     TYPE%test_crate!Y.State.
   ))
   :qid internal_test_crate!Y.State./State/opt_invariant_definition
   :skolemid skolem_internal_test_crate!Y.State./State/opt_invariant_definition
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
     ) (TYPE%core!option.Option. $ TYPE%test_crate!Goo.)
   ))
   :pattern ((test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. x)) (has_type
     x TYPE%test_crate!Y.State.
   ))
   :qid internal_test_crate!Y.State./State/storage_opt_invariant_definition
   :skolemid skolem_internal_test_crate!Y.State./State/storage_opt_invariant_definition
)))
(assert
 (forall ((x test_crate!Goo.)) (!
   (= x (%Poly%test_crate!Goo. (Poly%test_crate!Goo. x)))
   :pattern ((Poly%test_crate!Goo. x))
   :qid internal_test_crate__Goo_box_axiom_definition
   :skolemid skolem_internal_test_crate__Goo_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Goo.)
    (= x (Poly%test_crate!Goo. (%Poly%test_crate!Goo. x)))
   )
   :pattern ((has_type x TYPE%test_crate!Goo.))
   :qid internal_test_crate__Goo_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__Goo_unbox_axiom_definition
)))
(assert
 (has_type (Poly%test_crate!Goo. test_crate!Goo./Bar) TYPE%test_crate!Goo.)
)
(assert
 (forall ((_0! Int)) (!
   (=>
    (uInv 64 _0!)
    (has_type (Poly%test_crate!Goo. (test_crate!Goo./Qux _0!)) TYPE%test_crate!Goo.)
   )
   :pattern ((has_type (Poly%test_crate!Goo. (test_crate!Goo./Qux _0!)) TYPE%test_crate!Goo.))
   :qid internal_test_crate!Goo./Qux_constructor_definition
   :skolemid skolem_internal_test_crate!Goo./Qux_constructor_definition
)))
(assert
 (forall ((x test_crate!Goo.)) (!
   (= (test_crate!Goo./Qux/0 x) (test_crate!Goo./Qux/?0 x))
   :pattern ((test_crate!Goo./Qux/0 x))
   :qid internal_test_crate!Goo./Qux/0_accessor_definition
   :skolemid skolem_internal_test_crate!Goo./Qux/0_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Goo.)
    (uInv 64 (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. x)))
   )
   :pattern ((test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. x)) (has_type x TYPE%test_crate!Goo.))
   :qid internal_test_crate!Goo./Qux/0_invariant_definition
   :skolemid skolem_internal_test_crate!Goo./Qux/0_invariant_definition
)))
(assert
 (forall ((_0! Int) (_1! Int)) (!
   (=>
    (and
     (uInv 64 _0!)
     (uInv 64 _1!)
    )
    (has_type (Poly%test_crate!Goo. (test_crate!Goo./Tal _0! _1!)) TYPE%test_crate!Goo.)
   )
   :pattern ((has_type (Poly%test_crate!Goo. (test_crate!Goo./Tal _0! _1!)) TYPE%test_crate!Goo.))
   :qid internal_test_crate!Goo./Tal_constructor_definition
   :skolemid skolem_internal_test_crate!Goo./Tal_constructor_definition
)))
(assert
 (forall ((x test_crate!Goo.)) (!
   (= (test_crate!Goo./Tal/0 x) (test_crate!Goo./Tal/?0 x))
   :pattern ((test_crate!Goo./Tal/0 x))
   :qid internal_test_crate!Goo./Tal/0_accessor_definition
   :skolemid skolem_internal_test_crate!Goo./Tal/0_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Goo.)
    (uInv 64 (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. x)))
   )
   :pattern ((test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. x)) (has_type x TYPE%test_crate!Goo.))
   :qid internal_test_crate!Goo./Tal/0_invariant_definition
   :skolemid skolem_internal_test_crate!Goo./Tal/0_invariant_definition
)))
(assert
 (forall ((x test_crate!Goo.)) (!
   (= (test_crate!Goo./Tal/1 x) (test_crate!Goo./Tal/?1 x))
   :pattern ((test_crate!Goo./Tal/1 x))
   :qid internal_test_crate!Goo./Tal/1_accessor_definition
   :skolemid skolem_internal_test_crate!Goo./Tal/1_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Goo.)
    (uInv 64 (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. x)))
   )
   :pattern ((test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. x)) (has_type x TYPE%test_crate!Goo.))
   :qid internal_test_crate!Goo./Tal/1_invariant_definition
   :skolemid skolem_internal_test_crate!Goo./Tal/1_invariant_definition
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

;; Function-Decl vstd::std_specs::option::OptionAdditionalFns::get_Some_0
(declare-fun vstd!std_specs.option.OptionAdditionalFns.get_Some_0.? (Dcr Type Dcr Type
  Poly
 ) Poly
)
(declare-fun vstd!std_specs.option.OptionAdditionalFns.get_Some_0%default%.? (Dcr Type
  Dcr Type Poly
 ) Poly
)

;; Function-Decl vstd::map::impl&%0::dom
(declare-fun vstd!map.impl&%0.dom.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl vstd::set::impl&%0::contains
(declare-fun vstd!set.impl&%0.contains.? (Dcr Type Poly Poly) Bool)

;; Function-Decl vstd::map::impl&%0::index
(declare-fun vstd!map.impl&%0.index.? (Dcr Type Dcr Type Poly Poly) Poly)

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

;; Function-Decl vstd::pervasive::arbitrary
(declare-fun vstd!pervasive.arbitrary.? (Dcr Type) Poly)

;; Function-Decl test_crate::Y::State::tr1
(declare-fun test_crate!Y.impl&%13.tr1.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr2
(declare-fun test_crate!Y.impl&%13.tr2.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr3
(declare-fun test_crate!Y.impl&%13.tr3.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr4
(declare-fun test_crate!Y.impl&%13.tr4.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr5
(declare-fun test_crate!Y.impl&%13.tr5.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr6
(declare-fun test_crate!Y.impl&%13.tr6.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr7
(declare-fun test_crate!Y.impl&%13.tr7.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr8
(declare-fun test_crate!Y.impl&%13.tr8.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr9
(declare-fun test_crate!Y.impl&%13.tr9.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::next
(declare-fun test_crate!Y.impl&%13.next.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::initialize
(declare-fun test_crate!Y.impl&%13.initialize.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::init
(declare-fun test_crate!Y.impl&%13.init.? (Poly) Bool)

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
    :qid user_vstd__map__axiom_map_remove_domain_2
    :skolemid skolem_user_vstd__map__axiom_map_remove_domain_2
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
    :qid user_vstd__map__axiom_map_remove_different_3
    :skolemid skolem_user_vstd__map__axiom_map_remove_different_3
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
         :qid user_vstd__map__axiom_map_ext_equal_4
         :skolemid skolem_user_vstd__map__axiom_map_ext_equal_4
    )))))
    :pattern ((ext_eq false (TYPE%vstd!map.Map. K&. K& V&. V&) m1! m2!))
    :qid user_vstd__map__axiom_map_ext_equal_5
    :skolemid skolem_user_vstd__map__axiom_map_ext_equal_5
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
         :qid user_vstd__map__axiom_map_ext_equal_deep_6
         :skolemid skolem_user_vstd__map__axiom_map_ext_equal_deep_6
    )))))
    :pattern ((ext_eq true (TYPE%vstd!map.Map. K&. K& V&. V&) m1! m2!))
    :qid user_vstd__map__axiom_map_ext_equal_deep_7
    :skolemid skolem_user_vstd__map__axiom_map_ext_equal_deep_7
))))

;; Function-Axioms vstd::pervasive::arbitrary
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (has_type (vstd!pervasive.arbitrary.? A&. A&) A&)
   :pattern ((vstd!pervasive.arbitrary.? A&. A&))
   :qid internal_vstd!pervasive.arbitrary.?_pre_post_definition
   :skolemid skolem_internal_vstd!pervasive.arbitrary.?_pre_post_definition
)))

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
    :qid user_vstd__set__axiom_set_insert_same_8
    :skolemid skolem_user_vstd__set__axiom_set_insert_same_8
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
    :qid user_vstd__set__axiom_set_insert_different_9
    :skolemid skolem_user_vstd__set__axiom_set_insert_different_9
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
    :qid user_vstd__set__axiom_set_remove_same_10
    :skolemid skolem_user_vstd__set__axiom_set_remove_same_10
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
    :qid user_vstd__set__axiom_set_remove_insert_11
    :skolemid skolem_user_vstd__set__axiom_set_remove_insert_11
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
    :qid user_vstd__set__axiom_set_remove_different_12
    :skolemid skolem_user_vstd__set__axiom_set_remove_different_12
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
        :qid user_vstd__set__axiom_set_ext_equal_13
        :skolemid skolem_user_vstd__set__axiom_set_ext_equal_13
    ))))
    :pattern ((ext_eq false (TYPE%vstd!set.Set. A&. A&) s1! s2!))
    :qid user_vstd__set__axiom_set_ext_equal_14
    :skolemid skolem_user_vstd__set__axiom_set_ext_equal_14
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
    :qid user_vstd__set__axiom_set_ext_equal_deep_15
    :skolemid skolem_user_vstd__set__axiom_set_ext_equal_deep_15
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
    :qid user_vstd__set__axiom_set_insert_finite_16
    :skolemid skolem_user_vstd__set__axiom_set_insert_finite_16
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
    :qid user_vstd__set__axiom_set_remove_finite_17
    :skolemid skolem_user_vstd__set__axiom_set_remove_finite_17
))))

;; Function-Axioms test_crate::Y::State::tr1
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%13.tr1.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%13.tr1.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%13.tr1.? pre! post!) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_m$ (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. pre!))))
       (let
        ((update_tmp_storage_m$ (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State.
            pre!
        ))))
        (let
         ((update_tmp_opt$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
         (let
          ((update_tmp_storage_opt$ (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State.
              pre!
          ))))
          (and
           (and
            (is-core!option.Option./Some update_tmp_opt$)
            (let
             ((tmp%%$ (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                  (Poly%core!option.Option. update_tmp_opt$)
             )))))
             (is-test_crate!Goo./Bar tmp%%$)
           ))
           (let
            ((update_tmp_opt$1 core!option.Option./None))
            (let
             ((tmp_assert$1 (and
                tmp_assert$
                (and
                 (is-core!option.Option./Some update_tmp_storage_opt$)
                 (let
                  ((tmp%%$ (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                       (Poly%core!option.Option. update_tmp_storage_opt$)
                  )))))
                  (is-test_crate!Goo./Bar tmp%%$)
             )))))
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
                  (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) update_tmp_storage_m$)
                 )
                 (=>
                  tmp_assert$1
                  (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) update_tmp_m$)
    ))))))))))))))
    :pattern ((test_crate!Y.impl&%13.tr1.? pre! post!))
    :qid internal_test_crate!Y.impl&__13.tr1.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__13.tr1.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr2
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%13.tr2.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%13.tr2.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%13.tr2.? pre! post!) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_m$ (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. pre!))))
       (let
        ((update_tmp_storage_m$ (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State.
            pre!
        ))))
        (let
         ((update_tmp_opt$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
         (let
          ((update_tmp_storage_opt$ (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State.
              pre!
          ))))
          (and
           (and
            (is-core!option.Option./Some update_tmp_opt$)
            (let
             ((tmp%%$ (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                  (Poly%core!option.Option. update_tmp_opt$)
             )))))
             (and
              (is-test_crate!Goo./Qux tmp%%$)
              (let
               ((i1$ (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
               true
           ))))
           (and
            (let
             ((i1$ (let
                ((tmp%%$ (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                     (Poly%core!option.Option. update_tmp_opt$)
                )))))
                (ite
                 (is-test_crate!Goo./Qux tmp%%$)
                 (let
                  ((i1$2 (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
                  i1$2
                 )
                 (%I (vstd!pervasive.arbitrary.? $ (UINT 64)))
             ))))
             (let
              ((update_tmp_opt$1 core!option.Option./None))
              (let
               ((tmp_assert$1 (and
                  tmp_assert$
                  (and
                   (is-core!option.Option./Some update_tmp_storage_opt$)
                   (let
                    ((tmp%%$ (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                         (Poly%core!option.Option. update_tmp_storage_opt$)
                    )))))
                    (and
                     (is-test_crate!Goo./Qux tmp%%$)
                     (let
                      ((j1$ (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
                      true
               )))))))
               (and
                (let
                 ((j1$ (let
                    ((tmp%%$ (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                         (Poly%core!option.Option. update_tmp_storage_opt$)
                    )))))
                    (ite
                     (is-test_crate!Goo./Qux tmp%%$)
                     (let
                      ((j1$2 (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
                      j1$2
                     )
                     (%I (vstd!pervasive.arbitrary.? $ (UINT 64)))
                 ))))
                 (let
                  ((update_tmp_storage_opt$1 core!option.Option./None))
                  (let
                   ((tmp_assert$2 (and
                      tmp_assert$1
                      (= i1$ j1$)
                   )))
                   (=>
                    tmp_assert$2
                    (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) update_tmp_storage_opt$1)
                ))))
                (let
                 ((tmp_assert$3 (let
                    ((j1$ (let
                       ((tmp%%$ (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                            (Poly%core!option.Option. update_tmp_storage_opt$)
                       )))))
                       (ite
                        (is-test_crate!Goo./Qux tmp%%$)
                        (let
                         ((j1$4 (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
                         j1$4
                        )
                        (%I (vstd!pervasive.arbitrary.? $ (UINT 64)))
                    ))))
                    (let
                     ((update_tmp_storage_opt$2 core!option.Option./None))
                     (let
                      ((tmp_assert$4 (and
                         tmp_assert$1
                         (= i1$ j1$)
                      )))
                      tmp_assert$4
                 )))))
                 (=>
                  tmp_assert$3
                  (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) update_tmp_opt$1)
            ))))))
            (let
             ((tmp_assert$5 (let
                ((i1$ (let
                   ((tmp%%$ (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                        (Poly%core!option.Option. update_tmp_opt$)
                   )))))
                   (ite
                    (is-test_crate!Goo./Qux tmp%%$)
                    (let
                     ((i1$4 (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
                     i1$4
                    )
                    (%I (vstd!pervasive.arbitrary.? $ (UINT 64)))
                ))))
                (let
                 ((update_tmp_opt$2 core!option.Option./None))
                 (let
                  ((tmp_assert$6 (and
                     tmp_assert$
                     (and
                      (is-core!option.Option./Some update_tmp_storage_opt$)
                      (let
                       ((tmp%%$ (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                            (Poly%core!option.Option. update_tmp_storage_opt$)
                       )))))
                       (and
                        (is-test_crate!Goo./Qux tmp%%$)
                        (let
                         ((j1$ (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
                         true
                  )))))))
                  (let
                   ((tmp_assert$7 (let
                      ((j1$ (let
                         ((tmp%%$ (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                              (Poly%core!option.Option. update_tmp_storage_opt$)
                         )))))
                         (ite
                          (is-test_crate!Goo./Qux tmp%%$)
                          (let
                           ((j1$7 (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
                           j1$7
                          )
                          (%I (vstd!pervasive.arbitrary.? $ (UINT 64)))
                      ))))
                      (let
                       ((update_tmp_storage_opt$3 core!option.Option./None))
                       (let
                        ((tmp_assert$8 (and
                           tmp_assert$6
                           (= i1$ j1$)
                        )))
                        tmp_assert$8
                   )))))
                   tmp_assert$7
             ))))))
             (and
              (=>
               tmp_assert$5
               (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) update_tmp_storage_m$)
              )
              (=>
               tmp_assert$5
               (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) update_tmp_m$)
    )))))))))))
    :pattern ((test_crate!Y.impl&%13.tr2.? pre! post!))
    :qid internal_test_crate!Y.impl&__13.tr2.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__13.tr2.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr3
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%13.tr3.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%13.tr3.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%13.tr3.? pre! post!) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_m$ (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. pre!))))
       (let
        ((update_tmp_storage_m$ (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State.
            pre!
        ))))
        (let
         ((update_tmp_opt$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
         (let
          ((update_tmp_storage_opt$ (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State.
              pre!
          ))))
          (and
           (and
            (is-core!option.Option./Some update_tmp_opt$)
            (let
             ((tmp%%$ (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                  (Poly%core!option.Option. update_tmp_opt$)
             )))))
             (and
              (is-test_crate!Goo./Tal tmp%%$)
              (let
               ((i1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
               (let
                ((i2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
                true
           )))))
           (and
            (let
             ((tmp%%$ (let
                ((tmp%%$2 (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                     (Poly%core!option.Option. update_tmp_opt$)
                )))))
                (ite
                 (is-test_crate!Goo./Tal tmp%%$2)
                 (let
                  ((i1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$2)))))
                  (let
                   ((i2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$2)))))
                   (tuple%2./tuple%2 (I i1$) (I i2$))
                 ))
                 (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))))
             ))))
             (let
              ((i1$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
              (let
               ((i2$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
               (let
                ((update_tmp_opt$1 core!option.Option./None))
                (let
                 ((tmp_assert$1 (and
                    tmp_assert$
                    (and
                     (is-core!option.Option./Some update_tmp_storage_opt$)
                     (let
                      ((tmp%%$3 (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                           (Poly%core!option.Option. update_tmp_storage_opt$)
                      )))))
                      (and
                       (is-test_crate!Goo./Tal tmp%%$3)
                       (let
                        ((j1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$3)))))
                        (let
                         ((j2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$3)))))
                         true
                 ))))))))
                 (and
                  (let
                   ((tmp%%$4 (let
                      ((tmp%%$5 (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                           (Poly%core!option.Option. update_tmp_storage_opt$)
                      )))))
                      (ite
                       (is-test_crate!Goo./Tal tmp%%$5)
                       (let
                        ((j1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$5)))))
                        (let
                         ((j2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$5)))))
                         (tuple%2./tuple%2 (I j1$) (I j2$))
                       ))
                       (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))))
                   ))))
                   (let
                    ((j1$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$4))))))
                    (let
                     ((j2$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$4))))))
                     (let
                      ((update_tmp_storage_opt$1 core!option.Option./None))
                      (let
                       ((tmp_assert$2 (and
                          tmp_assert$1
                          (= i1$ j1$)
                       )))
                       (let
                        ((tmp_assert$3 (and
                           tmp_assert$2
                           (= i2$ j2$)
                        )))
                        (=>
                         tmp_assert$3
                         (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) update_tmp_storage_opt$1)
                  )))))))
                  (let
                   ((tmp_assert$4 (let
                      ((tmp%%$6 (let
                         ((tmp%%$7 (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                              (Poly%core!option.Option. update_tmp_storage_opt$)
                         )))))
                         (ite
                          (is-test_crate!Goo./Tal tmp%%$7)
                          (let
                           ((j1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$7)))))
                           (let
                            ((j2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$7)))))
                            (tuple%2./tuple%2 (I j1$) (I j2$))
                          ))
                          (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))))
                      ))))
                      (let
                       ((j1$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$6))))))
                       (let
                        ((j2$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$6))))))
                        (let
                         ((update_tmp_storage_opt$2 core!option.Option./None))
                         (let
                          ((tmp_assert$5 (and
                             tmp_assert$1
                             (= i1$ j1$)
                          )))
                          (let
                           ((tmp_assert$6 (and
                              tmp_assert$5
                              (= i2$ j2$)
                           )))
                           tmp_assert$6
                   ))))))))
                   (=>
                    tmp_assert$4
                    (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) update_tmp_opt$1)
            ))))))))
            (let
             ((tmp_assert$7 (let
                ((tmp%%$ (let
                   ((tmp%%$9 (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                        (Poly%core!option.Option. update_tmp_opt$)
                   )))))
                   (ite
                    (is-test_crate!Goo./Tal tmp%%$9)
                    (let
                     ((i1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$9)))))
                     (let
                      ((i2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$9)))))
                      (tuple%2./tuple%2 (I i1$) (I i2$))
                    ))
                    (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))))
                ))))
                (let
                 ((i1$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
                 (let
                  ((i2$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
                  (let
                   ((update_tmp_opt$2 core!option.Option./None))
                   (let
                    ((tmp_assert$8 (and
                       tmp_assert$
                       (and
                        (is-core!option.Option./Some update_tmp_storage_opt$)
                        (let
                         ((tmp%%$10 (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                              (Poly%core!option.Option. update_tmp_storage_opt$)
                         )))))
                         (and
                          (is-test_crate!Goo./Tal tmp%%$10)
                          (let
                           ((j1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$10)))))
                           (let
                            ((j2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$10)))))
                            true
                    ))))))))
                    (let
                     ((tmp_assert$9 (let
                        ((tmp%%$11 (let
                           ((tmp%%$12 (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                                (Poly%core!option.Option. update_tmp_storage_opt$)
                           )))))
                           (ite
                            (is-test_crate!Goo./Tal tmp%%$12)
                            (let
                             ((j1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$12)))))
                             (let
                              ((j2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$12)))))
                              (tuple%2./tuple%2 (I j1$) (I j2$))
                            ))
                            (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))))
                        ))))
                        (let
                         ((j1$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$11))))))
                         (let
                          ((j2$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$11))))))
                          (let
                           ((update_tmp_storage_opt$3 core!option.Option./None))
                           (let
                            ((tmp_assert$10 (and
                               tmp_assert$8
                               (= i1$ j1$)
                            )))
                            (let
                             ((tmp_assert$11 (and
                                tmp_assert$10
                                (= i2$ j2$)
                             )))
                             tmp_assert$11
                     ))))))))
                     tmp_assert$9
             ))))))))
             (and
              (=>
               tmp_assert$7
               (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) update_tmp_storage_m$)
              )
              (=>
               tmp_assert$7
               (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) update_tmp_m$)
    )))))))))))
    :pattern ((test_crate!Y.impl&%13.tr3.? pre! post!))
    :qid internal_test_crate!Y.impl&__13.tr3.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__13.tr3.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr4
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%13.tr4.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%13.tr4.)
  (forall ((pre! Poly) (post! Poly) (key! Poly)) (!
    (= (test_crate!Y.impl&%13.tr4.? pre! post! key!) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_m$ (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. pre!))))
       (let
        ((update_tmp_storage_m$ (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State.
            pre!
        ))))
        (let
         ((update_tmp_opt$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
         (let
          ((update_tmp_storage_opt$ (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State.
              pre!
          ))))
          (and
           (and
            (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
              (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_m$)
             ) key!
            )
            (let
             ((tmp%%$ (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
                 (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_m$) key!
             ))))
             (is-test_crate!Goo./Bar tmp%%$)
           ))
           (let
            ((update_tmp_m$1 (%Poly%vstd!map.Map<int./test_crate!Goo.>. (vstd!map.impl&%0.remove.?
                $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_m$)
                key!
            ))))
            (let
             ((tmp_assert$1 (and
                tmp_assert$
                (and
                 (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
                   (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_storage_m$)
                  ) key!
                 )
                 (let
                  ((tmp%%$ (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
                      (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_storage_m$) key!
                  ))))
                  (is-test_crate!Goo./Bar tmp%%$)
             )))))
             (let
              ((update_tmp_storage_m$1 (%Poly%vstd!map.Map<int./test_crate!Goo.>. (vstd!map.impl&%0.remove.?
                  $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_storage_m$)
                  key!
              ))))
              (and
               (=>
                tmp_assert$1
                (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) update_tmp_storage_m$1)
               )
               (and
                (=>
                 tmp_assert$1
                 (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) update_tmp_m$1)
                )
                (and
                 (=>
                  tmp_assert$1
                  (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) update_tmp_storage_opt$)
                 )
                 (=>
                  tmp_assert$1
                  (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) update_tmp_opt$)
    ))))))))))))))
    :pattern ((test_crate!Y.impl&%13.tr4.? pre! post! key!))
    :qid internal_test_crate!Y.impl&__13.tr4.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__13.tr4.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr5
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%13.tr5.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%13.tr5.)
  (forall ((pre! Poly) (post! Poly) (key! Poly)) (!
    (= (test_crate!Y.impl&%13.tr5.? pre! post! key!) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_m$ (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. pre!))))
       (let
        ((update_tmp_storage_m$ (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State.
            pre!
        ))))
        (let
         ((update_tmp_opt$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
         (let
          ((update_tmp_storage_opt$ (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State.
              pre!
          ))))
          (and
           (and
            (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
              (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_m$)
             ) key!
            )
            (let
             ((tmp%%$ (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
                 (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_m$) key!
             ))))
             (and
              (is-test_crate!Goo./Qux tmp%%$)
              (let
               ((i1$ (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
               true
           ))))
           (and
            (let
             ((i1$ (let
                ((tmp%%$ (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
                    (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_m$) key!
                ))))
                (ite
                 (is-test_crate!Goo./Qux tmp%%$)
                 (let
                  ((i1$2 (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
                  i1$2
                 )
                 (%I (vstd!pervasive.arbitrary.? $ (UINT 64)))
             ))))
             (let
              ((update_tmp_m$1 (%Poly%vstd!map.Map<int./test_crate!Goo.>. (vstd!map.impl&%0.remove.?
                  $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_m$)
                  key!
              ))))
              (let
               ((tmp_assert$1 (and
                  tmp_assert$
                  (and
                   (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
                     (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_storage_m$)
                    ) key!
                   )
                   (let
                    ((tmp%%$ (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
                        (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_storage_m$) key!
                    ))))
                    (and
                     (is-test_crate!Goo./Qux tmp%%$)
                     (let
                      ((j1$ (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
                      true
               )))))))
               (and
                (let
                 ((j1$ (let
                    ((tmp%%$ (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
                        (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_storage_m$) key!
                    ))))
                    (ite
                     (is-test_crate!Goo./Qux tmp%%$)
                     (let
                      ((j1$2 (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
                      j1$2
                     )
                     (%I (vstd!pervasive.arbitrary.? $ (UINT 64)))
                 ))))
                 (let
                  ((update_tmp_storage_m$1 (%Poly%vstd!map.Map<int./test_crate!Goo.>. (vstd!map.impl&%0.remove.?
                      $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_storage_m$)
                      key!
                  ))))
                  (let
                   ((tmp_assert$2 (and
                      tmp_assert$1
                      (= i1$ j1$)
                   )))
                   (=>
                    tmp_assert$2
                    (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) update_tmp_storage_m$1)
                ))))
                (let
                 ((tmp_assert$3 (let
                    ((j1$ (let
                       ((tmp%%$ (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
                           (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_storage_m$) key!
                       ))))
                       (ite
                        (is-test_crate!Goo./Qux tmp%%$)
                        (let
                         ((j1$4 (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
                         j1$4
                        )
                        (%I (vstd!pervasive.arbitrary.? $ (UINT 64)))
                    ))))
                    (let
                     ((update_tmp_storage_m$2 (%Poly%vstd!map.Map<int./test_crate!Goo.>. (vstd!map.impl&%0.remove.?
                         $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_storage_m$)
                         key!
                     ))))
                     (let
                      ((tmp_assert$4 (and
                         tmp_assert$1
                         (= i1$ j1$)
                      )))
                      tmp_assert$4
                 )))))
                 (=>
                  tmp_assert$3
                  (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) update_tmp_m$1)
            ))))))
            (let
             ((tmp_assert$5 (let
                ((i1$ (let
                   ((tmp%%$ (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
                       (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_m$) key!
                   ))))
                   (ite
                    (is-test_crate!Goo./Qux tmp%%$)
                    (let
                     ((i1$4 (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
                     i1$4
                    )
                    (%I (vstd!pervasive.arbitrary.? $ (UINT 64)))
                ))))
                (let
                 ((update_tmp_m$2 (%Poly%vstd!map.Map<int./test_crate!Goo.>. (vstd!map.impl&%0.remove.?
                     $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_m$)
                     key!
                 ))))
                 (let
                  ((tmp_assert$6 (and
                     tmp_assert$
                     (and
                      (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
                        (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_storage_m$)
                       ) key!
                      )
                      (let
                       ((tmp%%$ (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
                           (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_storage_m$) key!
                       ))))
                       (and
                        (is-test_crate!Goo./Qux tmp%%$)
                        (let
                         ((j1$ (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
                         true
                  )))))))
                  (let
                   ((tmp_assert$7 (let
                      ((j1$ (let
                         ((tmp%%$ (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
                             (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_storage_m$) key!
                         ))))
                         (ite
                          (is-test_crate!Goo./Qux tmp%%$)
                          (let
                           ((j1$7 (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
                           j1$7
                          )
                          (%I (vstd!pervasive.arbitrary.? $ (UINT 64)))
                      ))))
                      (let
                       ((update_tmp_storage_m$3 (%Poly%vstd!map.Map<int./test_crate!Goo.>. (vstd!map.impl&%0.remove.?
                           $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_storage_m$)
                           key!
                       ))))
                       (let
                        ((tmp_assert$8 (and
                           tmp_assert$6
                           (= i1$ j1$)
                        )))
                        tmp_assert$8
                   )))))
                   tmp_assert$7
             ))))))
             (and
              (=>
               tmp_assert$5
               (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) update_tmp_storage_opt$)
              )
              (=>
               tmp_assert$5
               (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) update_tmp_opt$)
    )))))))))))
    :pattern ((test_crate!Y.impl&%13.tr5.? pre! post! key!))
    :qid internal_test_crate!Y.impl&__13.tr5.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__13.tr5.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr6
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%13.tr6.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%13.tr6.)
  (forall ((pre! Poly) (post! Poly) (key! Poly)) (!
    (= (test_crate!Y.impl&%13.tr6.? pre! post! key!) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_m$ (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. pre!))))
       (let
        ((update_tmp_storage_m$ (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State.
            pre!
        ))))
        (let
         ((update_tmp_opt$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
         (let
          ((update_tmp_storage_opt$ (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State.
              pre!
          ))))
          (and
           (and
            (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
              (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_m$)
             ) key!
            )
            (let
             ((tmp%%$ (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
                 (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_m$) key!
             ))))
             (and
              (is-test_crate!Goo./Tal tmp%%$)
              (let
               ((i1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
               (let
                ((i2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
                true
           )))))
           (and
            (let
             ((tmp%%$ (let
                ((tmp%%$2 (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
                    (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_m$) key!
                ))))
                (ite
                 (is-test_crate!Goo./Tal tmp%%$2)
                 (let
                  ((i1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$2)))))
                  (let
                   ((i2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$2)))))
                   (tuple%2./tuple%2 (I i1$) (I i2$))
                 ))
                 (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))))
             ))))
             (let
              ((i1$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
              (let
               ((i2$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
               (let
                ((update_tmp_m$1 (%Poly%vstd!map.Map<int./test_crate!Goo.>. (vstd!map.impl&%0.remove.?
                    $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_m$)
                    key!
                ))))
                (let
                 ((tmp_assert$1 (and
                    tmp_assert$
                    (and
                     (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
                       (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_storage_m$)
                      ) key!
                     )
                     (let
                      ((tmp%%$3 (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
                          (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_storage_m$) key!
                      ))))
                      (and
                       (is-test_crate!Goo./Tal tmp%%$3)
                       (let
                        ((j1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$3)))))
                        (let
                         ((j2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$3)))))
                         true
                 ))))))))
                 (and
                  (let
                   ((tmp%%$4 (let
                      ((tmp%%$5 (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
                          (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_storage_m$) key!
                      ))))
                      (ite
                       (is-test_crate!Goo./Tal tmp%%$5)
                       (let
                        ((j1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$5)))))
                        (let
                         ((j2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$5)))))
                         (tuple%2./tuple%2 (I j1$) (I j2$))
                       ))
                       (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))))
                   ))))
                   (let
                    ((j1$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$4))))))
                    (let
                     ((j2$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$4))))))
                     (let
                      ((update_tmp_storage_m$1 (%Poly%vstd!map.Map<int./test_crate!Goo.>. (vstd!map.impl&%0.remove.?
                          $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_storage_m$)
                          key!
                      ))))
                      (let
                       ((tmp_assert$2 (and
                          tmp_assert$1
                          (= i1$ j1$)
                       )))
                       (let
                        ((tmp_assert$3 (and
                           tmp_assert$2
                           (= i2$ j2$)
                        )))
                        (=>
                         tmp_assert$3
                         (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) update_tmp_storage_m$1)
                  )))))))
                  (let
                   ((tmp_assert$4 (let
                      ((tmp%%$6 (let
                         ((tmp%%$7 (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
                             (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_storage_m$) key!
                         ))))
                         (ite
                          (is-test_crate!Goo./Tal tmp%%$7)
                          (let
                           ((j1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$7)))))
                           (let
                            ((j2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$7)))))
                            (tuple%2./tuple%2 (I j1$) (I j2$))
                          ))
                          (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))))
                      ))))
                      (let
                       ((j1$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$6))))))
                       (let
                        ((j2$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$6))))))
                        (let
                         ((update_tmp_storage_m$2 (%Poly%vstd!map.Map<int./test_crate!Goo.>. (vstd!map.impl&%0.remove.?
                             $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_storage_m$)
                             key!
                         ))))
                         (let
                          ((tmp_assert$5 (and
                             tmp_assert$1
                             (= i1$ j1$)
                          )))
                          (let
                           ((tmp_assert$6 (and
                              tmp_assert$5
                              (= i2$ j2$)
                           )))
                           tmp_assert$6
                   ))))))))
                   (=>
                    tmp_assert$4
                    (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) update_tmp_m$1)
            ))))))))
            (let
             ((tmp_assert$7 (let
                ((tmp%%$ (let
                   ((tmp%%$9 (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
                       (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_m$) key!
                   ))))
                   (ite
                    (is-test_crate!Goo./Tal tmp%%$9)
                    (let
                     ((i1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$9)))))
                     (let
                      ((i2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$9)))))
                      (tuple%2./tuple%2 (I i1$) (I i2$))
                    ))
                    (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))))
                ))))
                (let
                 ((i1$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
                 (let
                  ((i2$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
                  (let
                   ((update_tmp_m$2 (%Poly%vstd!map.Map<int./test_crate!Goo.>. (vstd!map.impl&%0.remove.?
                       $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_m$)
                       key!
                   ))))
                   (let
                    ((tmp_assert$8 (and
                       tmp_assert$
                       (and
                        (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
                          (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_storage_m$)
                         ) key!
                        )
                        (let
                         ((tmp%%$10 (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
                             (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_storage_m$) key!
                         ))))
                         (and
                          (is-test_crate!Goo./Tal tmp%%$10)
                          (let
                           ((j1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$10)))))
                           (let
                            ((j2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$10)))))
                            true
                    ))))))))
                    (let
                     ((tmp_assert$9 (let
                        ((tmp%%$11 (let
                           ((tmp%%$12 (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
                               (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_storage_m$) key!
                           ))))
                           (ite
                            (is-test_crate!Goo./Tal tmp%%$12)
                            (let
                             ((j1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$12)))))
                             (let
                              ((j2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$12)))))
                              (tuple%2./tuple%2 (I j1$) (I j2$))
                            ))
                            (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))))
                        ))))
                        (let
                         ((j1$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$11))))))
                         (let
                          ((j2$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$11))))))
                          (let
                           ((update_tmp_storage_m$3 (%Poly%vstd!map.Map<int./test_crate!Goo.>. (vstd!map.impl&%0.remove.?
                               $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_storage_m$)
                               key!
                           ))))
                           (let
                            ((tmp_assert$10 (and
                               tmp_assert$8
                               (= i1$ j1$)
                            )))
                            (let
                             ((tmp_assert$11 (and
                                tmp_assert$10
                                (= i2$ j2$)
                             )))
                             tmp_assert$11
                     ))))))))
                     tmp_assert$9
             ))))))))
             (and
              (=>
               tmp_assert$7
               (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) update_tmp_storage_opt$)
              )
              (=>
               tmp_assert$7
               (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) update_tmp_opt$)
    )))))))))))
    :pattern ((test_crate!Y.impl&%13.tr6.? pre! post! key!))
    :qid internal_test_crate!Y.impl&__13.tr6.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__13.tr6.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr7
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%13.tr7.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%13.tr7.)
  (forall ((pre! Poly) (post! Poly) (key! Poly)) (!
    (= (test_crate!Y.impl&%13.tr7.? pre! post! key!) (let
      ((update_tmp_m$ (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. pre!))))
      (let
       ((update_tmp_storage_m$ (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State.
           pre!
       ))))
       (let
        ((update_tmp_opt$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
        (let
         ((update_tmp_storage_opt$ (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State.
             pre!
         ))))
         (and
          (and
           (is-core!option.Option./Some update_tmp_opt$)
           (let
            ((tmp%%$ (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                 (Poly%core!option.Option. update_tmp_opt$)
            )))))
            (is-test_crate!Goo./Bar tmp%%$)
          ))
          (and
           (and
            (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
              (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_m$)
             ) key!
            )
            (let
             ((tmp%%$ (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
                 (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_m$) key!
             ))))
             (is-test_crate!Goo./Bar tmp%%$)
           ))
           (and
            (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) update_tmp_storage_opt$)
            (and
             (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) update_tmp_opt$)
             (and
              (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) update_tmp_storage_m$)
              (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) update_tmp_m$)
    ))))))))))
    :pattern ((test_crate!Y.impl&%13.tr7.? pre! post! key!))
    :qid internal_test_crate!Y.impl&__13.tr7.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__13.tr7.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr8
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%13.tr8.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%13.tr8.)
  (forall ((pre! Poly) (post! Poly) (key! Poly)) (!
    (= (test_crate!Y.impl&%13.tr8.? pre! post! key!) (let
      ((update_tmp_m$ (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. pre!))))
      (let
       ((update_tmp_storage_m$ (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State.
           pre!
       ))))
       (let
        ((update_tmp_opt$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
        (let
         ((update_tmp_storage_opt$ (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State.
             pre!
         ))))
         (and
          (and
           (is-core!option.Option./Some update_tmp_opt$)
           (let
            ((tmp%%$ (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                 (Poly%core!option.Option. update_tmp_opt$)
            )))))
            (and
             (is-test_crate!Goo./Qux tmp%%$)
             (let
              ((i1$ (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
              true
          ))))
          (and
           (let
            ((i1$ (let
               ((tmp%%$ (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                    (Poly%core!option.Option. update_tmp_opt$)
               )))))
               (ite
                (is-test_crate!Goo./Qux tmp%%$)
                (let
                 ((i1$2 (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
                 i1$2
                )
                (%I (vstd!pervasive.arbitrary.? $ (UINT 64)))
            ))))
            (and
             (and
              (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
                (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_m$)
               ) key!
              )
              (let
               ((tmp%%$ (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
                   (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_m$) key!
               ))))
               (and
                (is-test_crate!Goo./Qux tmp%%$)
                (let
                 ((j1$ (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
                 true
             ))))
             (let
              ((j1$ (let
                 ((tmp%%$ (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
                     (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_m$) key!
                 ))))
                 (ite
                  (is-test_crate!Goo./Qux tmp%%$)
                  (let
                   ((j1$2 (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
                   j1$2
                  )
                  (%I (vstd!pervasive.arbitrary.? $ (UINT 64)))
              ))))
              (= i1$ j1$)
           )))
           (and
            (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) update_tmp_storage_opt$)
            (and
             (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) update_tmp_opt$)
             (and
              (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) update_tmp_storage_m$)
              (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) update_tmp_m$)
    ))))))))))
    :pattern ((test_crate!Y.impl&%13.tr8.? pre! post! key!))
    :qid internal_test_crate!Y.impl&__13.tr8.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__13.tr8.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr9
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%13.tr9.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%13.tr9.)
  (forall ((pre! Poly) (post! Poly) (key! Poly)) (!
    (= (test_crate!Y.impl&%13.tr9.? pre! post! key!) (let
      ((update_tmp_m$ (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. pre!))))
      (let
       ((update_tmp_storage_m$ (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State.
           pre!
       ))))
       (let
        ((update_tmp_opt$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
        (let
         ((update_tmp_storage_opt$ (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State.
             pre!
         ))))
         (and
          (and
           (is-core!option.Option./Some update_tmp_opt$)
           (let
            ((tmp%%$ (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                 (Poly%core!option.Option. update_tmp_opt$)
            )))))
            (and
             (is-test_crate!Goo./Tal tmp%%$)
             (let
              ((i1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
              (let
               ((i2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
               true
          )))))
          (and
           (let
            ((tmp%%$ (let
               ((tmp%%$2 (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                    (Poly%core!option.Option. update_tmp_opt$)
               )))))
               (ite
                (is-test_crate!Goo./Tal tmp%%$2)
                (let
                 ((i1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$2)))))
                 (let
                  ((i2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$2)))))
                  (tuple%2./tuple%2 (I i1$) (I i2$))
                ))
                (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))))
            ))))
            (let
             ((i1$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
             (let
              ((i2$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
              (and
               (and
                (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
                  (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_m$)
                 ) key!
                )
                (let
                 ((tmp%%$3 (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
                     (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_m$) key!
                 ))))
                 (and
                  (is-test_crate!Goo./Tal tmp%%$3)
                  (let
                   ((j1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$3)))))
                   (let
                    ((j2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$3)))))
                    true
               )))))
               (let
                ((tmp%%$4 (let
                   ((tmp%%$5 (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
                       (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_m$) key!
                   ))))
                   (ite
                    (is-test_crate!Goo./Tal tmp%%$5)
                    (let
                     ((j1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$5)))))
                     (let
                      ((j2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$5)))))
                      (tuple%2./tuple%2 (I j1$) (I j2$))
                    ))
                    (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))))
                ))))
                (let
                 ((j1$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$4))))))
                 (let
                  ((j2$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$4))))))
                  (and
                   (= i1$ j1$)
                   (= i2$ j2$)
           ))))))))
           (and
            (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) update_tmp_storage_opt$)
            (and
             (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) update_tmp_opt$)
             (and
              (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) update_tmp_storage_m$)
              (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) update_tmp_m$)
    ))))))))))
    :pattern ((test_crate!Y.impl&%13.tr9.? pre! post! key!))
    :qid internal_test_crate!Y.impl&__13.tr9.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__13.tr9.?_definition
))))

;; Function-Specs test_crate::Y::show::tr1
(declare-fun req%test_crate!Y.show.tr1. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (req%test_crate!Y.show.tr1. pre! post!) (=>
     %%global_location_label%%2
     (test_crate!Y.impl&%13.tr1.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
   ))))
   :pattern ((req%test_crate!Y.show.tr1. pre! post!))
   :qid internal_req__test_crate!Y.show.tr1._definition
   :skolemid skolem_internal_req__test_crate!Y.show.tr1._definition
)))
(declare-fun ens%test_crate!Y.show.tr1. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!Y.show.tr1. pre! post!) (test_crate!Y.impl&%13.next.? (Poly%test_crate!Y.State.
      pre!
     ) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!Y.show.tr1. pre! post!))
   :qid internal_ens__test_crate!Y.show.tr1._definition
   :skolemid skolem_internal_ens__test_crate!Y.show.tr1._definition
)))

;; Function-Specs test_crate::Y::show::tr2
(declare-fun req%test_crate!Y.show.tr2. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (req%test_crate!Y.show.tr2. pre! post!) (=>
     %%global_location_label%%3
     (test_crate!Y.impl&%13.tr2.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
   ))))
   :pattern ((req%test_crate!Y.show.tr2. pre! post!))
   :qid internal_req__test_crate!Y.show.tr2._definition
   :skolemid skolem_internal_req__test_crate!Y.show.tr2._definition
)))
(declare-fun ens%test_crate!Y.show.tr2. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!Y.show.tr2. pre! post!) (test_crate!Y.impl&%13.next.? (Poly%test_crate!Y.State.
      pre!
     ) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!Y.show.tr2. pre! post!))
   :qid internal_ens__test_crate!Y.show.tr2._definition
   :skolemid skolem_internal_ens__test_crate!Y.show.tr2._definition
)))

;; Function-Specs test_crate::Y::show::tr3
(declare-fun req%test_crate!Y.show.tr3. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (req%test_crate!Y.show.tr3. pre! post!) (=>
     %%global_location_label%%4
     (test_crate!Y.impl&%13.tr3.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
   ))))
   :pattern ((req%test_crate!Y.show.tr3. pre! post!))
   :qid internal_req__test_crate!Y.show.tr3._definition
   :skolemid skolem_internal_req__test_crate!Y.show.tr3._definition
)))
(declare-fun ens%test_crate!Y.show.tr3. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!Y.show.tr3. pre! post!) (test_crate!Y.impl&%13.next.? (Poly%test_crate!Y.State.
      pre!
     ) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!Y.show.tr3. pre! post!))
   :qid internal_ens__test_crate!Y.show.tr3._definition
   :skolemid skolem_internal_ens__test_crate!Y.show.tr3._definition
)))

;; Function-Specs test_crate::Y::show::tr4
(declare-fun req%test_crate!Y.show.tr4. (test_crate!Y.State. test_crate!Y.State. Int)
 Bool
)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.) (key! Int)) (!
   (= (req%test_crate!Y.show.tr4. pre! post! key!) (=>
     %%global_location_label%%5
     (test_crate!Y.impl&%13.tr4.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
      ) (I key!)
   )))
   :pattern ((req%test_crate!Y.show.tr4. pre! post! key!))
   :qid internal_req__test_crate!Y.show.tr4._definition
   :skolemid skolem_internal_req__test_crate!Y.show.tr4._definition
)))
(declare-fun ens%test_crate!Y.show.tr4. (test_crate!Y.State. test_crate!Y.State. Int)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.) (key! Int)) (!
   (= (ens%test_crate!Y.show.tr4. pre! post! key!) (test_crate!Y.impl&%13.next.? (Poly%test_crate!Y.State.
      pre!
     ) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!Y.show.tr4. pre! post! key!))
   :qid internal_ens__test_crate!Y.show.tr4._definition
   :skolemid skolem_internal_ens__test_crate!Y.show.tr4._definition
)))

;; Function-Specs test_crate::Y::show::tr5
(declare-fun req%test_crate!Y.show.tr5. (test_crate!Y.State. test_crate!Y.State. Int)
 Bool
)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.) (key! Int)) (!
   (= (req%test_crate!Y.show.tr5. pre! post! key!) (=>
     %%global_location_label%%6
     (test_crate!Y.impl&%13.tr5.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
      ) (I key!)
   )))
   :pattern ((req%test_crate!Y.show.tr5. pre! post! key!))
   :qid internal_req__test_crate!Y.show.tr5._definition
   :skolemid skolem_internal_req__test_crate!Y.show.tr5._definition
)))
(declare-fun ens%test_crate!Y.show.tr5. (test_crate!Y.State. test_crate!Y.State. Int)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.) (key! Int)) (!
   (= (ens%test_crate!Y.show.tr5. pre! post! key!) (test_crate!Y.impl&%13.next.? (Poly%test_crate!Y.State.
      pre!
     ) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!Y.show.tr5. pre! post! key!))
   :qid internal_ens__test_crate!Y.show.tr5._definition
   :skolemid skolem_internal_ens__test_crate!Y.show.tr5._definition
)))

;; Function-Specs test_crate::Y::show::tr6
(declare-fun req%test_crate!Y.show.tr6. (test_crate!Y.State. test_crate!Y.State. Int)
 Bool
)
(declare-const %%global_location_label%%7 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.) (key! Int)) (!
   (= (req%test_crate!Y.show.tr6. pre! post! key!) (=>
     %%global_location_label%%7
     (test_crate!Y.impl&%13.tr6.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
      ) (I key!)
   )))
   :pattern ((req%test_crate!Y.show.tr6. pre! post! key!))
   :qid internal_req__test_crate!Y.show.tr6._definition
   :skolemid skolem_internal_req__test_crate!Y.show.tr6._definition
)))
(declare-fun ens%test_crate!Y.show.tr6. (test_crate!Y.State. test_crate!Y.State. Int)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.) (key! Int)) (!
   (= (ens%test_crate!Y.show.tr6. pre! post! key!) (test_crate!Y.impl&%13.next.? (Poly%test_crate!Y.State.
      pre!
     ) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!Y.show.tr6. pre! post! key!))
   :qid internal_ens__test_crate!Y.show.tr6._definition
   :skolemid skolem_internal_ens__test_crate!Y.show.tr6._definition
)))

;; Function-Specs test_crate::Y::show::tr7
(declare-fun req%test_crate!Y.show.tr7. (test_crate!Y.State. test_crate!Y.State. Int)
 Bool
)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.) (key! Int)) (!
   (= (req%test_crate!Y.show.tr7. pre! post! key!) (=>
     %%global_location_label%%8
     (test_crate!Y.impl&%13.tr7.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
      ) (I key!)
   )))
   :pattern ((req%test_crate!Y.show.tr7. pre! post! key!))
   :qid internal_req__test_crate!Y.show.tr7._definition
   :skolemid skolem_internal_req__test_crate!Y.show.tr7._definition
)))
(declare-fun ens%test_crate!Y.show.tr7. (test_crate!Y.State. test_crate!Y.State. Int)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.) (key! Int)) (!
   (= (ens%test_crate!Y.show.tr7. pre! post! key!) (test_crate!Y.impl&%13.next.? (Poly%test_crate!Y.State.
      pre!
     ) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!Y.show.tr7. pre! post! key!))
   :qid internal_ens__test_crate!Y.show.tr7._definition
   :skolemid skolem_internal_ens__test_crate!Y.show.tr7._definition
)))

;; Function-Specs test_crate::Y::show::tr8
(declare-fun req%test_crate!Y.show.tr8. (test_crate!Y.State. test_crate!Y.State. Int)
 Bool
)
(declare-const %%global_location_label%%9 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.) (key! Int)) (!
   (= (req%test_crate!Y.show.tr8. pre! post! key!) (=>
     %%global_location_label%%9
     (test_crate!Y.impl&%13.tr8.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
      ) (I key!)
   )))
   :pattern ((req%test_crate!Y.show.tr8. pre! post! key!))
   :qid internal_req__test_crate!Y.show.tr8._definition
   :skolemid skolem_internal_req__test_crate!Y.show.tr8._definition
)))
(declare-fun ens%test_crate!Y.show.tr8. (test_crate!Y.State. test_crate!Y.State. Int)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.) (key! Int)) (!
   (= (ens%test_crate!Y.show.tr8. pre! post! key!) (test_crate!Y.impl&%13.next.? (Poly%test_crate!Y.State.
      pre!
     ) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!Y.show.tr8. pre! post! key!))
   :qid internal_ens__test_crate!Y.show.tr8._definition
   :skolemid skolem_internal_ens__test_crate!Y.show.tr8._definition
)))

;; Function-Specs test_crate::Y::show::tr9
(declare-fun req%test_crate!Y.show.tr9. (test_crate!Y.State. test_crate!Y.State. Int)
 Bool
)
(declare-const %%global_location_label%%10 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.) (key! Int)) (!
   (= (req%test_crate!Y.show.tr9. pre! post! key!) (=>
     %%global_location_label%%10
     (test_crate!Y.impl&%13.tr9.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
      ) (I key!)
   )))
   :pattern ((req%test_crate!Y.show.tr9. pre! post! key!))
   :qid internal_req__test_crate!Y.show.tr9._definition
   :skolemid skolem_internal_req__test_crate!Y.show.tr9._definition
)))
(declare-fun ens%test_crate!Y.show.tr9. (test_crate!Y.State. test_crate!Y.State. Int)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.) (key! Int)) (!
   (= (ens%test_crate!Y.show.tr9. pre! post! key!) (test_crate!Y.impl&%13.next.? (Poly%test_crate!Y.State.
      pre!
     ) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!Y.show.tr9. pre! post! key!))
   :qid internal_ens__test_crate!Y.show.tr9._definition
   :skolemid skolem_internal_ens__test_crate!Y.show.tr9._definition
)))

;; Function-Axioms test_crate::Y::State::initialize
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%13.initialize.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%13.initialize.)
  (forall ((post! Poly) (m! Poly) (opt! Poly)) (!
    (= (test_crate!Y.impl&%13.initialize.? post! m! opt!) (let
      ((update_tmp_m$ (%Poly%vstd!map.Map<int./test_crate!Goo.>. m!)))
      (let
       ((update_tmp_storage_m$ (%Poly%vstd!map.Map<int./test_crate!Goo.>. m!)))
       (let
        ((update_tmp_opt$ (%Poly%core!option.Option. opt!)))
        (let
         ((update_tmp_storage_opt$ (%Poly%core!option.Option. opt!)))
         (and
          (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) update_tmp_storage_opt$)
          (and
           (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) update_tmp_opt$)
           (and
            (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) update_tmp_storage_m$)
            (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) update_tmp_m$)
    ))))))))
    :pattern ((test_crate!Y.impl&%13.initialize.? post! m! opt!))
    :qid internal_test_crate!Y.impl&__13.initialize.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__13.initialize.?_definition
))))

;; Function-Specs test_crate::Y::show::initialize
(declare-fun req%test_crate!Y.show.initialize. (test_crate!Y.State. vstd!map.Map<int./test_crate!Goo.>.
  core!option.Option.
 ) Bool
)
(declare-const %%global_location_label%%11 Bool)
(assert
 (forall ((post! test_crate!Y.State.) (m! vstd!map.Map<int./test_crate!Goo.>.) (opt!
    core!option.Option.
   )
  ) (!
   (= (req%test_crate!Y.show.initialize. post! m! opt!) (=>
     %%global_location_label%%11
     (test_crate!Y.impl&%13.initialize.? (Poly%test_crate!Y.State. post!) (Poly%vstd!map.Map<int./test_crate!Goo.>.
       m!
      ) (Poly%core!option.Option. opt!)
   )))
   :pattern ((req%test_crate!Y.show.initialize. post! m! opt!))
   :qid internal_req__test_crate!Y.show.initialize._definition
   :skolemid skolem_internal_req__test_crate!Y.show.initialize._definition
)))
(declare-fun ens%test_crate!Y.show.initialize. (test_crate!Y.State. vstd!map.Map<int./test_crate!Goo.>.
  core!option.Option.
 ) Bool
)
(assert
 (forall ((post! test_crate!Y.State.) (m! vstd!map.Map<int./test_crate!Goo.>.) (opt!
    core!option.Option.
   )
  ) (!
   (= (ens%test_crate!Y.show.initialize. post! m! opt!) (test_crate!Y.impl&%13.init.?
     (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!Y.show.initialize. post! m! opt!))
   :qid internal_ens__test_crate!Y.show.initialize._definition
   :skolemid skolem_internal_ens__test_crate!Y.show.initialize._definition
)))

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
