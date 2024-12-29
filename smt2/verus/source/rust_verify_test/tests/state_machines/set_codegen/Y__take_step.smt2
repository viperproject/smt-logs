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

;; MODULE 'module Y::take_step'

;; Fuel
(declare-const fuel%vstd!set.impl&%0.subset_of. FuelId)
(declare-const fuel%vstd!set.impl&%0.disjoint. FuelId)
(declare-const fuel%vstd!set.axiom_set_empty. FuelId)
(declare-const fuel%vstd!set.axiom_set_insert_same. FuelId)
(declare-const fuel%vstd!set.axiom_set_insert_different. FuelId)
(declare-const fuel%vstd!set.axiom_set_remove_same. FuelId)
(declare-const fuel%vstd!set.axiom_set_remove_insert. FuelId)
(declare-const fuel%vstd!set.axiom_set_remove_different. FuelId)
(declare-const fuel%vstd!set.axiom_set_union. FuelId)
(declare-const fuel%vstd!set.axiom_set_difference. FuelId)
(declare-const fuel%vstd!set.axiom_set_ext_equal. FuelId)
(declare-const fuel%vstd!set.axiom_set_ext_equal_deep. FuelId)
(declare-const fuel%test_crate!Y.impl&%10.initialize. FuelId)
(declare-const fuel%test_crate!Y.impl&%10.initialize_enabled. FuelId)
(declare-const fuel%test_crate!Y.impl&%10.tr_add_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%10.tr_add_enabled. FuelId)
(declare-const fuel%test_crate!Y.impl&%10.tr_have_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%10.tr_have_enabled. FuelId)
(declare-const fuel%test_crate!Y.impl&%10.tr_remove_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%10.tr_remove_enabled. FuelId)
(declare-const fuel%test_crate!Y.impl&%10.tr_add_gen_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%10.tr_add_gen_enabled. FuelId)
(declare-const fuel%test_crate!Y.impl&%10.tr_have_gen_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%10.tr_have_gen_enabled. FuelId)
(declare-const fuel%test_crate!Y.impl&%10.tr_remove_gen_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%10.tr_remove_gen_enabled. FuelId)
(declare-const fuel%test_crate!Y.impl&%10.invariant. FuelId)
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
 (distinct fuel%vstd!set.impl&%0.subset_of. fuel%vstd!set.impl&%0.disjoint. fuel%vstd!set.axiom_set_empty.
  fuel%vstd!set.axiom_set_insert_same. fuel%vstd!set.axiom_set_insert_different. fuel%vstd!set.axiom_set_remove_same.
  fuel%vstd!set.axiom_set_remove_insert. fuel%vstd!set.axiom_set_remove_different.
  fuel%vstd!set.axiom_set_union. fuel%vstd!set.axiom_set_difference. fuel%vstd!set.axiom_set_ext_equal.
  fuel%vstd!set.axiom_set_ext_equal_deep. fuel%test_crate!Y.impl&%10.initialize. fuel%test_crate!Y.impl&%10.initialize_enabled.
  fuel%test_crate!Y.impl&%10.tr_add_strong. fuel%test_crate!Y.impl&%10.tr_add_enabled.
  fuel%test_crate!Y.impl&%10.tr_have_strong. fuel%test_crate!Y.impl&%10.tr_have_enabled.
  fuel%test_crate!Y.impl&%10.tr_remove_strong. fuel%test_crate!Y.impl&%10.tr_remove_enabled.
  fuel%test_crate!Y.impl&%10.tr_add_gen_strong. fuel%test_crate!Y.impl&%10.tr_add_gen_enabled.
  fuel%test_crate!Y.impl&%10.tr_have_gen_strong. fuel%test_crate!Y.impl&%10.tr_have_gen_enabled.
  fuel%test_crate!Y.impl&%10.tr_remove_gen_strong. fuel%test_crate!Y.impl&%10.tr_remove_gen_enabled.
  fuel%test_crate!Y.impl&%10.invariant. fuel%vstd!array.group_array_axioms. fuel%vstd!map.group_map_axioms.
  fuel%vstd!multiset.group_multiset_axioms. fuel%vstd!raw_ptr.group_raw_ptr_axioms.
  fuel%vstd!seq.group_seq_axioms. fuel%vstd!seq_lib.group_seq_lib_default. fuel%vstd!set.group_set_axioms.
  fuel%vstd!set_lib.group_set_lib_axioms. fuel%vstd!slice.group_slice_axioms. fuel%vstd!string.group_string_axioms.
  fuel%vstd!std_specs.bits.group_bits_axioms. fuel%vstd!std_specs.control_flow.group_control_flow_axioms.
  fuel%vstd!std_specs.range.group_range_axioms. fuel%vstd!std_specs.vec.group_vec_axioms.
  fuel%vstd!group_vstd_default.
))
(assert
 (=>
  (fuel_bool_default fuel%vstd!set.group_set_axioms.)
  (and
   (fuel_bool_default fuel%vstd!set.axiom_set_empty.)
   (fuel_bool_default fuel%vstd!set.axiom_set_insert_same.)
   (fuel_bool_default fuel%vstd!set.axiom_set_insert_different.)
   (fuel_bool_default fuel%vstd!set.axiom_set_remove_same.)
   (fuel_bool_default fuel%vstd!set.axiom_set_remove_insert.)
   (fuel_bool_default fuel%vstd!set.axiom_set_remove_different.)
   (fuel_bool_default fuel%vstd!set.axiom_set_union.)
   (fuel_bool_default fuel%vstd!set.axiom_set_difference.)
   (fuel_bool_default fuel%vstd!set.axiom_set_ext_equal.)
   (fuel_bool_default fuel%vstd!set.axiom_set_ext_equal_deep.)
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
(declare-sort vstd!set.Set<int.>. 0)
(declare-datatypes ((test_crate!Y.State. 0) (tuple%0. 0)) (((test_crate!Y.State./State
    (test_crate!Y.State./State/?b vstd!set.Set<int.>.)
   )
  ) ((tuple%0./tuple%0))
))
(declare-fun test_crate!Y.State./State/b (test_crate!Y.State.) vstd!set.Set<int.>.)
(declare-fun TYPE%vstd!set.Set. (Dcr Type) Type)
(declare-const TYPE%test_crate!Y.State. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%vstd!set.Set<int.>. (vstd!set.Set<int.>.) Poly)
(declare-fun %Poly%vstd!set.Set<int.>. (Poly) vstd!set.Set<int.>.)
(declare-fun Poly%test_crate!Y.State. (test_crate!Y.State.) Poly)
(declare-fun %Poly%test_crate!Y.State. (Poly) test_crate!Y.State.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
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
 (forall ((x test_crate!Y.State.)) (!
   (= (test_crate!Y.State./State/b x) (test_crate!Y.State./State/?b x))
   :pattern ((test_crate!Y.State./State/b x))
   :qid internal_test_crate!Y.State./State/b_accessor_definition
   :skolemid skolem_internal_test_crate!Y.State./State/b_accessor_definition
)))
(assert
 (forall ((x test_crate!Y.State.)) (!
   (has_type (Poly%test_crate!Y.State. x) TYPE%test_crate!Y.State.)
   :pattern ((has_type (Poly%test_crate!Y.State. x) TYPE%test_crate!Y.State.))
   :qid internal_test_crate__Y__State_has_type_always_definition
   :skolemid skolem_internal_test_crate__Y__State_has_type_always_definition
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

;; Function-Decl vstd::set::impl&%0::contains
(declare-fun vstd!set.impl&%0.contains.? (Dcr Type Poly Poly) Bool)

;; Function-Decl vstd::set::impl&%0::empty
(declare-fun vstd!set.impl&%0.empty.? (Dcr Type) Poly)

;; Function-Decl vstd::set::impl&%0::insert
(declare-fun vstd!set.impl&%0.insert.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::set::impl&%0::remove
(declare-fun vstd!set.impl&%0.remove.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::set::impl&%0::union
(declare-fun vstd!set.impl&%0.union.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::set::impl&%0::difference
(declare-fun vstd!set.impl&%0.difference.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::set::impl&%0::disjoint
(declare-fun vstd!set.impl&%0.disjoint.? (Dcr Type Poly Poly) Bool)

;; Function-Decl vstd::set::impl&%0::subset_of
(declare-fun vstd!set.impl&%0.subset_of.? (Dcr Type Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::initialize
(declare-fun test_crate!Y.impl&%10.initialize.? (Poly) Bool)

;; Function-Decl test_crate::Y::State::initialize_enabled
(declare-fun test_crate!Y.impl&%10.initialize_enabled.? (Poly) Bool)

;; Function-Decl test_crate::Y::State::invariant
(declare-fun test_crate!Y.impl&%10.invariant.? (Poly) Bool)

;; Function-Decl test_crate::Y::State::tr_have_enabled
(declare-fun test_crate!Y.impl&%10.tr_have_enabled.? (Poly) Bool)

;; Function-Decl test_crate::Y::State::tr_have_strong
(declare-fun test_crate!Y.impl&%10.tr_have_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr_remove_enabled
(declare-fun test_crate!Y.impl&%10.tr_remove_enabled.? (Poly) Bool)

;; Function-Decl test_crate::Y::State::tr_remove_strong
(declare-fun test_crate!Y.impl&%10.tr_remove_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr_have_gen_enabled
(declare-fun test_crate!Y.impl&%10.tr_have_gen_enabled.? (Poly) Bool)

;; Function-Decl test_crate::Y::State::tr_have_gen_strong
(declare-fun test_crate!Y.impl&%10.tr_have_gen_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr_remove_gen_enabled
(declare-fun test_crate!Y.impl&%10.tr_remove_gen_enabled.? (Poly) Bool)

;; Function-Decl test_crate::Y::State::tr_remove_gen_strong
(declare-fun test_crate!Y.impl&%10.tr_remove_gen_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr_add_strong
(declare-fun test_crate!Y.impl&%10.tr_add_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr_add_enabled
(declare-fun test_crate!Y.impl&%10.tr_add_enabled.? (Poly) Bool)

;; Function-Decl test_crate::Y::State::tr_add_gen_strong
(declare-fun test_crate!Y.impl&%10.tr_add_gen_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr_add_gen_enabled
(declare-fun test_crate!Y.impl&%10.tr_add_gen_enabled.? (Poly) Bool)

;; Function-Axioms vstd::set::impl&%0::empty
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (has_type (vstd!set.impl&%0.empty.? A&. A&) (TYPE%vstd!set.Set. A&. A&))
   :pattern ((vstd!set.impl&%0.empty.? A&. A&))
   :qid internal_vstd!set.impl&__0.empty.?_pre_post_definition
   :skolemid skolem_internal_vstd!set.impl&__0.empty.?_pre_post_definition
)))

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

;; Function-Axioms vstd::set::impl&%0::union
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd!set.Set. A&. A&))
     (has_type s2! (TYPE%vstd!set.Set. A&. A&))
    )
    (has_type (vstd!set.impl&%0.union.? A&. A& self! s2!) (TYPE%vstd!set.Set. A&. A&))
   )
   :pattern ((vstd!set.impl&%0.union.? A&. A& self! s2!))
   :qid internal_vstd!set.impl&__0.union.?_pre_post_definition
   :skolemid skolem_internal_vstd!set.impl&__0.union.?_pre_post_definition
)))

;; Function-Axioms vstd::set::impl&%0::difference
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd!set.Set. A&. A&))
     (has_type s2! (TYPE%vstd!set.Set. A&. A&))
    )
    (has_type (vstd!set.impl&%0.difference.? A&. A& self! s2!) (TYPE%vstd!set.Set. A&.
      A&
   )))
   :pattern ((vstd!set.impl&%0.difference.? A&. A& self! s2!))
   :qid internal_vstd!set.impl&__0.difference.?_pre_post_definition
   :skolemid skolem_internal_vstd!set.impl&__0.difference.?_pre_post_definition
)))

;; Broadcast vstd::set::axiom_set_empty
(assert
 (=>
  (fuel_bool fuel%vstd!set.axiom_set_empty.)
  (forall ((A&. Dcr) (A& Type) (a! Poly)) (!
    (=>
     (has_type a! A&)
     (not (vstd!set.impl&%0.contains.? A&. A& (vstd!set.impl&%0.empty.? A&. A&) a!))
    )
    :pattern ((vstd!set.impl&%0.contains.? A&. A& (vstd!set.impl&%0.empty.? A&. A&) a!))
    :qid user_vstd__set__axiom_set_empty_0
    :skolemid skolem_user_vstd__set__axiom_set_empty_0
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
    :qid user_vstd__set__axiom_set_insert_same_1
    :skolemid skolem_user_vstd__set__axiom_set_insert_same_1
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
    :qid user_vstd__set__axiom_set_insert_different_2
    :skolemid skolem_user_vstd__set__axiom_set_insert_different_2
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
    :qid user_vstd__set__axiom_set_remove_same_3
    :skolemid skolem_user_vstd__set__axiom_set_remove_same_3
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
    :qid user_vstd__set__axiom_set_remove_insert_4
    :skolemid skolem_user_vstd__set__axiom_set_remove_insert_4
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
    :qid user_vstd__set__axiom_set_remove_different_5
    :skolemid skolem_user_vstd__set__axiom_set_remove_different_5
))))

;; Broadcast vstd::set::axiom_set_union
(assert
 (=>
  (fuel_bool fuel%vstd!set.axiom_set_union.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd!set.Set. A&. A&))
      (has_type s2! (TYPE%vstd!set.Set. A&. A&))
      (has_type a! A&)
     )
     (= (vstd!set.impl&%0.contains.? A&. A& (vstd!set.impl&%0.union.? A&. A& s1! s2!) a!)
      (or
       (vstd!set.impl&%0.contains.? A&. A& s1! a!)
       (vstd!set.impl&%0.contains.? A&. A& s2! a!)
    )))
    :pattern ((vstd!set.impl&%0.contains.? A&. A& (vstd!set.impl&%0.union.? A&. A& s1! s2!)
      a!
    ))
    :qid user_vstd__set__axiom_set_union_6
    :skolemid skolem_user_vstd__set__axiom_set_union_6
))))

;; Broadcast vstd::set::axiom_set_difference
(assert
 (=>
  (fuel_bool fuel%vstd!set.axiom_set_difference.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd!set.Set. A&. A&))
      (has_type s2! (TYPE%vstd!set.Set. A&. A&))
      (has_type a! A&)
     )
     (= (vstd!set.impl&%0.contains.? A&. A& (vstd!set.impl&%0.difference.? A&. A& s1! s2!)
       a!
      ) (and
       (vstd!set.impl&%0.contains.? A&. A& s1! a!)
       (not (vstd!set.impl&%0.contains.? A&. A& s2! a!))
    )))
    :pattern ((vstd!set.impl&%0.contains.? A&. A& (vstd!set.impl&%0.difference.? A&. A&
       s1! s2!
      ) a!
    ))
    :qid user_vstd__set__axiom_set_difference_7
    :skolemid skolem_user_vstd__set__axiom_set_difference_7
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
        :qid user_vstd__set__axiom_set_ext_equal_8
        :skolemid skolem_user_vstd__set__axiom_set_ext_equal_8
    ))))
    :pattern ((ext_eq false (TYPE%vstd!set.Set. A&. A&) s1! s2!))
    :qid user_vstd__set__axiom_set_ext_equal_9
    :skolemid skolem_user_vstd__set__axiom_set_ext_equal_9
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
    :qid user_vstd__set__axiom_set_ext_equal_deep_10
    :skolemid skolem_user_vstd__set__axiom_set_ext_equal_deep_10
))))

;; Function-Axioms vstd::set::impl&%0::disjoint
(assert
 (fuel_bool_default fuel%vstd!set.impl&%0.disjoint.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!set.impl&%0.disjoint.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
    (= (vstd!set.impl&%0.disjoint.? A&. A& self! s2!) (forall ((a$ Poly)) (!
       (=>
        (has_type a$ A&)
        (=>
         (vstd!set.impl&%0.contains.? A&. A& self! a$)
         (not (vstd!set.impl&%0.contains.? A&. A& s2! a$))
       ))
       :pattern ((vstd!set.impl&%0.contains.? A&. A& self! a$))
       :pattern ((vstd!set.impl&%0.contains.? A&. A& s2! a$))
       :qid user_vstd__set__impl&%0__disjoint_11
       :skolemid skolem_user_vstd__set__impl&%0__disjoint_11
    )))
    :pattern ((vstd!set.impl&%0.disjoint.? A&. A& self! s2!))
    :qid internal_vstd!set.impl&__0.disjoint.?_definition
    :skolemid skolem_internal_vstd!set.impl&__0.disjoint.?_definition
))))

;; Function-Axioms vstd::set::impl&%0::subset_of
(assert
 (fuel_bool_default fuel%vstd!set.impl&%0.subset_of.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!set.impl&%0.subset_of.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
    (= (vstd!set.impl&%0.subset_of.? A&. A& self! s2!) (forall ((a$ Poly)) (!
       (=>
        (has_type a$ A&)
        (=>
         (vstd!set.impl&%0.contains.? A&. A& self! a$)
         (vstd!set.impl&%0.contains.? A&. A& s2! a$)
       ))
       :pattern ((vstd!set.impl&%0.contains.? A&. A& self! a$))
       :pattern ((vstd!set.impl&%0.contains.? A&. A& s2! a$))
       :qid user_vstd__set__impl&%0__subset_of_12
       :skolemid skolem_user_vstd__set__impl&%0__subset_of_12
    )))
    :pattern ((vstd!set.impl&%0.subset_of.? A&. A& self! s2!))
    :qid internal_vstd!set.impl&__0.subset_of.?_definition
    :skolemid skolem_internal_vstd!set.impl&__0.subset_of.?_definition
))))

;; Function-Axioms test_crate::Y::State::initialize
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%10.initialize.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%10.initialize.)
  (forall ((post! Poly)) (!
    (= (test_crate!Y.impl&%10.initialize.? post!) (let
      ((update_tmp_b$ (%Poly%vstd!set.Set<int.>. (vstd!set.impl&%0.insert.? $ INT (vstd!set.impl&%0.empty.?
           $ INT
          ) (I 19)
      ))))
      (= (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. post!)) update_tmp_b$)
    ))
    :pattern ((test_crate!Y.impl&%10.initialize.? post!))
    :qid internal_test_crate!Y.impl&__10.initialize.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__10.initialize.?_definition
))))

;; Function-Axioms test_crate::Y::State::initialize_enabled
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%10.initialize_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%10.initialize_enabled.)
  (forall ((no%param Poly)) (!
    (= (test_crate!Y.impl&%10.initialize_enabled.? no%param) true)
    :pattern ((test_crate!Y.impl&%10.initialize_enabled.? no%param))
    :qid internal_test_crate!Y.impl&__10.initialize_enabled.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__10.initialize_enabled.?_definition
))))

;; Function-Axioms test_crate::Y::State::invariant
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%10.invariant.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%10.invariant.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%10.invariant.? self!) true)
    :pattern ((test_crate!Y.impl&%10.invariant.? self!))
    :qid internal_test_crate!Y.impl&__10.invariant.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__10.invariant.?_definition
))))

;; Function-Specs test_crate::Y::take_step::initialize
(declare-fun req%test_crate!Y.take_step.initialize. (Int) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((no%param Int)) (!
   (= (req%test_crate!Y.take_step.initialize. no%param) (=>
     %%global_location_label%%0
     (test_crate!Y.impl&%10.initialize_enabled.? (I 0))
   ))
   :pattern ((req%test_crate!Y.take_step.initialize. no%param))
   :qid internal_req__test_crate!Y.take_step.initialize._definition
   :skolemid skolem_internal_req__test_crate!Y.take_step.initialize._definition
)))
(declare-fun ens%test_crate!Y.take_step.initialize. (Int test_crate!Y.State.) Bool)
(assert
 (forall ((no%param Int) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!Y.take_step.initialize. no%param post!) (and
     (test_crate!Y.impl&%10.initialize.? (Poly%test_crate!Y.State. post!))
     (test_crate!Y.impl&%10.invariant.? (Poly%test_crate!Y.State. post!))
   ))
   :pattern ((ens%test_crate!Y.take_step.initialize. no%param post!))
   :qid internal_ens__test_crate!Y.take_step.initialize._definition
   :skolemid skolem_internal_ens__test_crate!Y.take_step.initialize._definition
)))

;; Function-Axioms test_crate::Y::State::tr_have_enabled
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%10.tr_have_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%10.tr_have_enabled.)
  (forall ((pre! Poly)) (!
    (= (test_crate!Y.impl&%10.tr_have_enabled.? pre!) (let
      ((update_tmp_b$ (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. pre!))))
      (vstd!set.impl&%0.contains.? $ INT (Poly%vstd!set.Set<int.>. update_tmp_b$) (I 5))
    ))
    :pattern ((test_crate!Y.impl&%10.tr_have_enabled.? pre!))
    :qid internal_test_crate!Y.impl&__10.tr_have_enabled.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__10.tr_have_enabled.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr_have_strong
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%10.tr_have_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%10.tr_have_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%10.tr_have_strong.? pre! post!) (let
      ((update_tmp_b$ (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. pre!))))
      (and
       (vstd!set.impl&%0.contains.? $ INT (Poly%vstd!set.Set<int.>. update_tmp_b$) (I 5))
       (= (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. post!)) update_tmp_b$)
    )))
    :pattern ((test_crate!Y.impl&%10.tr_have_strong.? pre! post!))
    :qid internal_test_crate!Y.impl&__10.tr_have_strong.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__10.tr_have_strong.?_definition
))))

;; Function-Specs test_crate::Y::take_step::tr_have
(declare-fun req%test_crate!Y.take_step.tr_have. (test_crate!Y.State.) Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((pre! test_crate!Y.State.)) (!
   (= (req%test_crate!Y.take_step.tr_have. pre!) (=>
     %%global_location_label%%1
     (and
      (test_crate!Y.impl&%10.tr_have_enabled.? (Poly%test_crate!Y.State. pre!))
      (test_crate!Y.impl&%10.invariant.? (Poly%test_crate!Y.State. pre!))
   )))
   :pattern ((req%test_crate!Y.take_step.tr_have. pre!))
   :qid internal_req__test_crate!Y.take_step.tr_have._definition
   :skolemid skolem_internal_req__test_crate!Y.take_step.tr_have._definition
)))
(declare-fun ens%test_crate!Y.take_step.tr_have. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!Y.take_step.tr_have. pre! post!) (and
     (test_crate!Y.impl&%10.tr_have_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
     ))
     (test_crate!Y.impl&%10.invariant.? (Poly%test_crate!Y.State. post!))
   ))
   :pattern ((ens%test_crate!Y.take_step.tr_have. pre! post!))
   :qid internal_ens__test_crate!Y.take_step.tr_have._definition
   :skolemid skolem_internal_ens__test_crate!Y.take_step.tr_have._definition
)))

;; Function-Axioms test_crate::Y::State::tr_remove_enabled
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%10.tr_remove_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%10.tr_remove_enabled.)
  (forall ((pre! Poly)) (!
    (= (test_crate!Y.impl&%10.tr_remove_enabled.? pre!) (let
      ((update_tmp_b$ (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. pre!))))
      (vstd!set.impl&%0.contains.? $ INT (Poly%vstd!set.Set<int.>. update_tmp_b$) (I 5))
    ))
    :pattern ((test_crate!Y.impl&%10.tr_remove_enabled.? pre!))
    :qid internal_test_crate!Y.impl&__10.tr_remove_enabled.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__10.tr_remove_enabled.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr_remove_strong
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%10.tr_remove_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%10.tr_remove_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%10.tr_remove_strong.? pre! post!) (let
      ((update_tmp_b$ (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. pre!))))
      (and
       (vstd!set.impl&%0.contains.? $ INT (Poly%vstd!set.Set<int.>. update_tmp_b$) (I 5))
       (let
        ((update_tmp_b$1 (%Poly%vstd!set.Set<int.>. (vstd!set.impl&%0.remove.? $ INT (Poly%vstd!set.Set<int.>.
             update_tmp_b$
            ) (I 5)
        ))))
        (= (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. post!)) update_tmp_b$1)
    ))))
    :pattern ((test_crate!Y.impl&%10.tr_remove_strong.? pre! post!))
    :qid internal_test_crate!Y.impl&__10.tr_remove_strong.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__10.tr_remove_strong.?_definition
))))

;; Function-Specs test_crate::Y::take_step::tr_remove
(declare-fun req%test_crate!Y.take_step.tr_remove. (test_crate!Y.State.) Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((pre! test_crate!Y.State.)) (!
   (= (req%test_crate!Y.take_step.tr_remove. pre!) (=>
     %%global_location_label%%2
     (and
      (test_crate!Y.impl&%10.tr_remove_enabled.? (Poly%test_crate!Y.State. pre!))
      (test_crate!Y.impl&%10.invariant.? (Poly%test_crate!Y.State. pre!))
   )))
   :pattern ((req%test_crate!Y.take_step.tr_remove. pre!))
   :qid internal_req__test_crate!Y.take_step.tr_remove._definition
   :skolemid skolem_internal_req__test_crate!Y.take_step.tr_remove._definition
)))
(declare-fun ens%test_crate!Y.take_step.tr_remove. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!Y.take_step.tr_remove. pre! post!) (and
     (test_crate!Y.impl&%10.tr_remove_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
     ))
     (test_crate!Y.impl&%10.invariant.? (Poly%test_crate!Y.State. post!))
   ))
   :pattern ((ens%test_crate!Y.take_step.tr_remove. pre! post!))
   :qid internal_ens__test_crate!Y.take_step.tr_remove._definition
   :skolemid skolem_internal_ens__test_crate!Y.take_step.tr_remove._definition
)))

;; Function-Axioms test_crate::Y::State::tr_have_gen_enabled
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%10.tr_have_gen_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%10.tr_have_gen_enabled.)
  (forall ((pre! Poly)) (!
    (= (test_crate!Y.impl&%10.tr_have_gen_enabled.? pre!) (let
      ((update_tmp_b$ (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. pre!))))
      (vstd!set.impl&%0.subset_of.? $ INT (vstd!set.impl&%0.insert.? $ INT (vstd!set.impl&%0.empty.?
         $ INT
        ) (I 6)
       ) (Poly%vstd!set.Set<int.>. update_tmp_b$)
    )))
    :pattern ((test_crate!Y.impl&%10.tr_have_gen_enabled.? pre!))
    :qid internal_test_crate!Y.impl&__10.tr_have_gen_enabled.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__10.tr_have_gen_enabled.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr_have_gen_strong
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%10.tr_have_gen_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%10.tr_have_gen_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%10.tr_have_gen_strong.? pre! post!) (let
      ((update_tmp_b$ (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. pre!))))
      (and
       (vstd!set.impl&%0.subset_of.? $ INT (vstd!set.impl&%0.insert.? $ INT (vstd!set.impl&%0.empty.?
          $ INT
         ) (I 6)
        ) (Poly%vstd!set.Set<int.>. update_tmp_b$)
       )
       (= (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. post!)) update_tmp_b$)
    )))
    :pattern ((test_crate!Y.impl&%10.tr_have_gen_strong.? pre! post!))
    :qid internal_test_crate!Y.impl&__10.tr_have_gen_strong.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__10.tr_have_gen_strong.?_definition
))))

;; Function-Specs test_crate::Y::take_step::tr_have_gen
(declare-fun req%test_crate!Y.take_step.tr_have_gen. (test_crate!Y.State.) Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((pre! test_crate!Y.State.)) (!
   (= (req%test_crate!Y.take_step.tr_have_gen. pre!) (=>
     %%global_location_label%%3
     (and
      (test_crate!Y.impl&%10.tr_have_gen_enabled.? (Poly%test_crate!Y.State. pre!))
      (test_crate!Y.impl&%10.invariant.? (Poly%test_crate!Y.State. pre!))
   )))
   :pattern ((req%test_crate!Y.take_step.tr_have_gen. pre!))
   :qid internal_req__test_crate!Y.take_step.tr_have_gen._definition
   :skolemid skolem_internal_req__test_crate!Y.take_step.tr_have_gen._definition
)))
(declare-fun ens%test_crate!Y.take_step.tr_have_gen. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!Y.take_step.tr_have_gen. pre! post!) (and
     (test_crate!Y.impl&%10.tr_have_gen_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
     ))
     (test_crate!Y.impl&%10.invariant.? (Poly%test_crate!Y.State. post!))
   ))
   :pattern ((ens%test_crate!Y.take_step.tr_have_gen. pre! post!))
   :qid internal_ens__test_crate!Y.take_step.tr_have_gen._definition
   :skolemid skolem_internal_ens__test_crate!Y.take_step.tr_have_gen._definition
)))

;; Function-Axioms test_crate::Y::State::tr_remove_gen_enabled
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%10.tr_remove_gen_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%10.tr_remove_gen_enabled.)
  (forall ((pre! Poly)) (!
    (= (test_crate!Y.impl&%10.tr_remove_gen_enabled.? pre!) (let
      ((update_tmp_b$ (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. pre!))))
      (vstd!set.impl&%0.subset_of.? $ INT (vstd!set.impl&%0.insert.? $ INT (vstd!set.impl&%0.empty.?
         $ INT
        ) (I 6)
       ) (Poly%vstd!set.Set<int.>. update_tmp_b$)
    )))
    :pattern ((test_crate!Y.impl&%10.tr_remove_gen_enabled.? pre!))
    :qid internal_test_crate!Y.impl&__10.tr_remove_gen_enabled.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__10.tr_remove_gen_enabled.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr_remove_gen_strong
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%10.tr_remove_gen_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%10.tr_remove_gen_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%10.tr_remove_gen_strong.? pre! post!) (let
      ((update_tmp_b$ (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. pre!))))
      (and
       (vstd!set.impl&%0.subset_of.? $ INT (vstd!set.impl&%0.insert.? $ INT (vstd!set.impl&%0.empty.?
          $ INT
         ) (I 6)
        ) (Poly%vstd!set.Set<int.>. update_tmp_b$)
       )
       (let
        ((update_tmp_b$1 (%Poly%vstd!set.Set<int.>. (vstd!set.impl&%0.difference.? $ INT (Poly%vstd!set.Set<int.>.
             update_tmp_b$
            ) (vstd!set.impl&%0.insert.? $ INT (vstd!set.impl&%0.empty.? $ INT) (I 6))
        ))))
        (= (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. post!)) update_tmp_b$1)
    ))))
    :pattern ((test_crate!Y.impl&%10.tr_remove_gen_strong.? pre! post!))
    :qid internal_test_crate!Y.impl&__10.tr_remove_gen_strong.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__10.tr_remove_gen_strong.?_definition
))))

;; Function-Specs test_crate::Y::take_step::tr_remove_gen
(declare-fun req%test_crate!Y.take_step.tr_remove_gen. (test_crate!Y.State.) Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((pre! test_crate!Y.State.)) (!
   (= (req%test_crate!Y.take_step.tr_remove_gen. pre!) (=>
     %%global_location_label%%4
     (and
      (test_crate!Y.impl&%10.tr_remove_gen_enabled.? (Poly%test_crate!Y.State. pre!))
      (test_crate!Y.impl&%10.invariant.? (Poly%test_crate!Y.State. pre!))
   )))
   :pattern ((req%test_crate!Y.take_step.tr_remove_gen. pre!))
   :qid internal_req__test_crate!Y.take_step.tr_remove_gen._definition
   :skolemid skolem_internal_req__test_crate!Y.take_step.tr_remove_gen._definition
)))
(declare-fun ens%test_crate!Y.take_step.tr_remove_gen. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!Y.take_step.tr_remove_gen. pre! post!) (and
     (test_crate!Y.impl&%10.tr_remove_gen_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
     ))
     (test_crate!Y.impl&%10.invariant.? (Poly%test_crate!Y.State. post!))
   ))
   :pattern ((ens%test_crate!Y.take_step.tr_remove_gen. pre! post!))
   :qid internal_ens__test_crate!Y.take_step.tr_remove_gen._definition
   :skolemid skolem_internal_ens__test_crate!Y.take_step.tr_remove_gen._definition
)))

;; Function-Axioms test_crate::Y::State::tr_add_strong
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%10.tr_add_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%10.tr_add_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%10.tr_add_strong.? pre! post!) (let
      ((update_tmp_b$ (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. pre!))))
      (and
       (not (vstd!set.impl&%0.contains.? $ INT (Poly%vstd!set.Set<int.>. update_tmp_b$) (I
          5
       )))
       (let
        ((update_tmp_b$1 (%Poly%vstd!set.Set<int.>. (vstd!set.impl&%0.insert.? $ INT (Poly%vstd!set.Set<int.>.
             update_tmp_b$
            ) (I 5)
        ))))
        (= (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. post!)) update_tmp_b$1)
    ))))
    :pattern ((test_crate!Y.impl&%10.tr_add_strong.? pre! post!))
    :qid internal_test_crate!Y.impl&__10.tr_add_strong.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__10.tr_add_strong.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr_add_enabled
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%10.tr_add_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%10.tr_add_enabled.)
  (forall ((pre! Poly)) (!
    (= (test_crate!Y.impl&%10.tr_add_enabled.? pre!) true)
    :pattern ((test_crate!Y.impl&%10.tr_add_enabled.? pre!))
    :qid internal_test_crate!Y.impl&__10.tr_add_enabled.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__10.tr_add_enabled.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr_add_gen_strong
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%10.tr_add_gen_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%10.tr_add_gen_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%10.tr_add_gen_strong.? pre! post!) (let
      ((update_tmp_b$ (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. pre!))))
      (and
       (vstd!set.impl&%0.disjoint.? $ INT (Poly%vstd!set.Set<int.>. update_tmp_b$) (vstd!set.impl&%0.insert.?
         $ INT (vstd!set.impl&%0.empty.? $ INT) (I 6)
       ))
       (let
        ((update_tmp_b$1 (%Poly%vstd!set.Set<int.>. (vstd!set.impl&%0.union.? $ INT (Poly%vstd!set.Set<int.>.
             update_tmp_b$
            ) (vstd!set.impl&%0.insert.? $ INT (vstd!set.impl&%0.empty.? $ INT) (I 6))
        ))))
        (= (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. post!)) update_tmp_b$1)
    ))))
    :pattern ((test_crate!Y.impl&%10.tr_add_gen_strong.? pre! post!))
    :qid internal_test_crate!Y.impl&__10.tr_add_gen_strong.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__10.tr_add_gen_strong.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr_add_gen_enabled
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%10.tr_add_gen_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%10.tr_add_gen_enabled.)
  (forall ((pre! Poly)) (!
    (= (test_crate!Y.impl&%10.tr_add_gen_enabled.? pre!) true)
    :pattern ((test_crate!Y.impl&%10.tr_add_gen_enabled.? pre!))
    :qid internal_test_crate!Y.impl&__10.tr_add_gen_enabled.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__10.tr_add_gen_enabled.?_definition
))))

;; Function-Specs test_crate::Y::take_step::tr_add
(declare-fun req%test_crate!Y.take_step.tr_add. (test_crate!Y.State.) Bool)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((pre! test_crate!Y.State.)) (!
   (= (req%test_crate!Y.take_step.tr_add. pre!) (=>
     %%global_location_label%%5
     (and
      (test_crate!Y.impl&%10.tr_add_enabled.? (Poly%test_crate!Y.State. pre!))
      (test_crate!Y.impl&%10.invariant.? (Poly%test_crate!Y.State. pre!))
   )))
   :pattern ((req%test_crate!Y.take_step.tr_add. pre!))
   :qid internal_req__test_crate!Y.take_step.tr_add._definition
   :skolemid skolem_internal_req__test_crate!Y.take_step.tr_add._definition
)))
(declare-fun ens%test_crate!Y.take_step.tr_add. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!Y.take_step.tr_add. pre! post!) (and
     (test_crate!Y.impl&%10.tr_add_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
     ))
     (test_crate!Y.impl&%10.invariant.? (Poly%test_crate!Y.State. post!))
   ))
   :pattern ((ens%test_crate!Y.take_step.tr_add. pre! post!))
   :qid internal_ens__test_crate!Y.take_step.tr_add._definition
   :skolemid skolem_internal_ens__test_crate!Y.take_step.tr_add._definition
)))

;; Function-Specs test_crate::Y::take_step::tr_add_gen
(declare-fun req%test_crate!Y.take_step.tr_add_gen. (test_crate!Y.State.) Bool)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((pre! test_crate!Y.State.)) (!
   (= (req%test_crate!Y.take_step.tr_add_gen. pre!) (=>
     %%global_location_label%%6
     (and
      (test_crate!Y.impl&%10.tr_add_gen_enabled.? (Poly%test_crate!Y.State. pre!))
      (test_crate!Y.impl&%10.invariant.? (Poly%test_crate!Y.State. pre!))
   )))
   :pattern ((req%test_crate!Y.take_step.tr_add_gen. pre!))
   :qid internal_req__test_crate!Y.take_step.tr_add_gen._definition
   :skolemid skolem_internal_req__test_crate!Y.take_step.tr_add_gen._definition
)))
(declare-fun ens%test_crate!Y.take_step.tr_add_gen. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!Y.take_step.tr_add_gen. pre! post!) (and
     (test_crate!Y.impl&%10.tr_add_gen_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
     ))
     (test_crate!Y.impl&%10.invariant.? (Poly%test_crate!Y.State. post!))
   ))
   :pattern ((ens%test_crate!Y.take_step.tr_add_gen. pre! post!))
   :qid internal_ens__test_crate!Y.take_step.tr_add_gen._definition
   :skolemid skolem_internal_ens__test_crate!Y.take_step.tr_add_gen._definition
)))
