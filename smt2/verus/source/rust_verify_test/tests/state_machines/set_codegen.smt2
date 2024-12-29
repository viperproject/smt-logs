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
(declare-const fuel%vstd!set.impl&%0.subset_of. FuelId)
(declare-const fuel%vstd!set.impl&%0.spec_le. FuelId)
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
(declare-const fuel%test_crate!Y.impl&%10.tr_add. FuelId)
(declare-const fuel%test_crate!Y.impl&%10.tr_add_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%10.tr_have. FuelId)
(declare-const fuel%test_crate!Y.impl&%10.tr_have_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%10.tr_remove. FuelId)
(declare-const fuel%test_crate!Y.impl&%10.tr_remove_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%10.tr_add_gen. FuelId)
(declare-const fuel%test_crate!Y.impl&%10.tr_add_gen_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%10.tr_have_gen. FuelId)
(declare-const fuel%test_crate!Y.impl&%10.tr_have_gen_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%10.tr_remove_gen. FuelId)
(declare-const fuel%test_crate!Y.impl&%10.tr_remove_gen_strong. FuelId)
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
(declare-const fuel%test_crate!rel_tr5. FuelId)
(declare-const fuel%test_crate!rel_tr5_strong. FuelId)
(declare-const fuel%test_crate!rel_tr6. FuelId)
(declare-const fuel%test_crate!rel_tr6_strong. FuelId)
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
 (distinct fuel%vstd!set.impl&%0.subset_of. fuel%vstd!set.impl&%0.spec_le. fuel%vstd!set.impl&%0.disjoint.
  fuel%vstd!set.axiom_set_empty. fuel%vstd!set.axiom_set_insert_same. fuel%vstd!set.axiom_set_insert_different.
  fuel%vstd!set.axiom_set_remove_same. fuel%vstd!set.axiom_set_remove_insert. fuel%vstd!set.axiom_set_remove_different.
  fuel%vstd!set.axiom_set_union. fuel%vstd!set.axiom_set_difference. fuel%vstd!set.axiom_set_ext_equal.
  fuel%vstd!set.axiom_set_ext_equal_deep. fuel%test_crate!Y.impl&%10.tr_add. fuel%test_crate!Y.impl&%10.tr_add_strong.
  fuel%test_crate!Y.impl&%10.tr_have. fuel%test_crate!Y.impl&%10.tr_have_strong. fuel%test_crate!Y.impl&%10.tr_remove.
  fuel%test_crate!Y.impl&%10.tr_remove_strong. fuel%test_crate!Y.impl&%10.tr_add_gen.
  fuel%test_crate!Y.impl&%10.tr_add_gen_strong. fuel%test_crate!Y.impl&%10.tr_have_gen.
  fuel%test_crate!Y.impl&%10.tr_have_gen_strong. fuel%test_crate!Y.impl&%10.tr_remove_gen.
  fuel%test_crate!Y.impl&%10.tr_remove_gen_strong. fuel%test_crate!impl&%0.arrow_Bar_0.
  fuel%test_crate!impl&%0.arrow_Qax_0. fuel%test_crate!impl&%0.arrow_Duck_0. fuel%test_crate!rel_tr1.
  fuel%test_crate!rel_tr1_strong. fuel%test_crate!rel_tr2. fuel%test_crate!rel_tr2_strong.
  fuel%test_crate!rel_tr3. fuel%test_crate!rel_tr3_strong. fuel%test_crate!rel_tr4.
  fuel%test_crate!rel_tr4_strong. fuel%test_crate!rel_tr5. fuel%test_crate!rel_tr5_strong.
  fuel%test_crate!rel_tr6. fuel%test_crate!rel_tr6_strong. fuel%vstd!array.group_array_axioms.
  fuel%vstd!map.group_map_axioms. fuel%vstd!multiset.group_multiset_axioms. fuel%vstd!raw_ptr.group_raw_ptr_axioms.
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
(declare-sort test_crate!Y.Instance. 0)
(declare-sort test_crate!Y.b. 0)
(declare-sort vstd!set.Set<int.>. 0)
(declare-sort vstd!tokens.SetToken<int./test_crate!Y.b.>. 0)
(declare-datatypes ((vstd!tokens.InstanceId. 0) (test_crate!Y.State. 0) (test_crate!Foo.
   0
  ) (tuple%0. 0) (tuple%2. 0)
 ) (((vstd!tokens.InstanceId./InstanceId (vstd!tokens.InstanceId./InstanceId/?0 Int)))
  ((test_crate!Y.State./State (test_crate!Y.State./State/?b vstd!set.Set<int.>.)))
  ((test_crate!Foo./Bar (test_crate!Foo./Bar/?0 Int)) (test_crate!Foo./Qax (test_crate!Foo./Qax/?0
     Int
    )
   ) (test_crate!Foo./Duck (test_crate!Foo./Duck/?0 Int))
  ) ((tuple%0./tuple%0)) ((tuple%2./tuple%2 (tuple%2./tuple%2/?0 Poly) (tuple%2./tuple%2/?1
     Poly
)))))
(declare-fun vstd!tokens.InstanceId./InstanceId/0 (vstd!tokens.InstanceId.) Int)
(declare-fun test_crate!Y.State./State/b (test_crate!Y.State.) vstd!set.Set<int.>.)
(declare-fun test_crate!Foo./Bar/0 (test_crate!Foo.) Int)
(declare-fun test_crate!Foo./Qax/0 (test_crate!Foo.) Int)
(declare-fun test_crate!Foo./Duck/0 (test_crate!Foo.) Int)
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-fun TYPE%vstd!set.Set. (Dcr Type) Type)
(declare-const TYPE%vstd!tokens.InstanceId. Type)
(declare-fun TYPE%vstd!tokens.SetToken. (Dcr Type Dcr Type) Type)
(declare-const TYPE%test_crate!Y.State. Type)
(declare-const TYPE%test_crate!Y.Instance. Type)
(declare-const TYPE%test_crate!Y.b. Type)
(declare-const TYPE%test_crate!Foo. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%2. (Dcr Type Dcr Type) Type)
(declare-fun Poly%test_crate!Y.Instance. (test_crate!Y.Instance.) Poly)
(declare-fun %Poly%test_crate!Y.Instance. (Poly) test_crate!Y.Instance.)
(declare-fun Poly%test_crate!Y.b. (test_crate!Y.b.) Poly)
(declare-fun %Poly%test_crate!Y.b. (Poly) test_crate!Y.b.)
(declare-fun Poly%vstd!set.Set<int.>. (vstd!set.Set<int.>.) Poly)
(declare-fun %Poly%vstd!set.Set<int.>. (Poly) vstd!set.Set<int.>.)
(declare-fun Poly%vstd!tokens.SetToken<int./test_crate!Y.b.>. (vstd!tokens.SetToken<int./test_crate!Y.b.>.)
 Poly
)
(declare-fun %Poly%vstd!tokens.SetToken<int./test_crate!Y.b.>. (Poly) vstd!tokens.SetToken<int./test_crate!Y.b.>.)
(declare-fun Poly%vstd!tokens.InstanceId. (vstd!tokens.InstanceId.) Poly)
(declare-fun %Poly%vstd!tokens.InstanceId. (Poly) vstd!tokens.InstanceId.)
(declare-fun Poly%test_crate!Y.State. (test_crate!Y.State.) Poly)
(declare-fun %Poly%test_crate!Y.State. (Poly) test_crate!Y.State.)
(declare-fun Poly%test_crate!Foo. (test_crate!Foo.) Poly)
(declare-fun %Poly%test_crate!Foo. (Poly) test_crate!Foo.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%2. (tuple%2.) Poly)
(declare-fun %Poly%tuple%2. (Poly) tuple%2.)
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
 (forall ((x test_crate!Y.Instance.)) (!
   (has_type (Poly%test_crate!Y.Instance. x) TYPE%test_crate!Y.Instance.)
   :pattern ((has_type (Poly%test_crate!Y.Instance. x) TYPE%test_crate!Y.Instance.))
   :qid internal_test_crate__Y__Instance_has_type_always_definition
   :skolemid skolem_internal_test_crate__Y__Instance_has_type_always_definition
)))
(assert
 (forall ((x test_crate!Y.b.)) (!
   (= x (%Poly%test_crate!Y.b. (Poly%test_crate!Y.b. x)))
   :pattern ((Poly%test_crate!Y.b. x))
   :qid internal_test_crate__Y__b_box_axiom_definition
   :skolemid skolem_internal_test_crate__Y__b_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.b.)
    (= x (Poly%test_crate!Y.b. (%Poly%test_crate!Y.b. x)))
   )
   :pattern ((has_type x TYPE%test_crate!Y.b.))
   :qid internal_test_crate__Y__b_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__Y__b_unbox_axiom_definition
)))
(assert
 (forall ((x test_crate!Y.b.)) (!
   (has_type (Poly%test_crate!Y.b. x) TYPE%test_crate!Y.b.)
   :pattern ((has_type (Poly%test_crate!Y.b. x) TYPE%test_crate!Y.b.))
   :qid internal_test_crate__Y__b_has_type_always_definition
   :skolemid skolem_internal_test_crate__Y__b_has_type_always_definition
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
 (forall ((x vstd!tokens.SetToken<int./test_crate!Y.b.>.)) (!
   (= x (%Poly%vstd!tokens.SetToken<int./test_crate!Y.b.>. (Poly%vstd!tokens.SetToken<int./test_crate!Y.b.>.
      x
   )))
   :pattern ((Poly%vstd!tokens.SetToken<int./test_crate!Y.b.>. x))
   :qid internal_vstd__tokens__SetToken<int./test_crate!Y.b.>_box_axiom_definition
   :skolemid skolem_internal_vstd__tokens__SetToken<int./test_crate!Y.b.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!tokens.SetToken. $ INT $ TYPE%test_crate!Y.b.))
    (= x (Poly%vstd!tokens.SetToken<int./test_crate!Y.b.>. (%Poly%vstd!tokens.SetToken<int./test_crate!Y.b.>.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd!tokens.SetToken. $ INT $ TYPE%test_crate!Y.b.)))
   :qid internal_vstd__tokens__SetToken<int./test_crate!Y.b.>_unbox_axiom_definition
   :skolemid skolem_internal_vstd__tokens__SetToken<int./test_crate!Y.b.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!tokens.SetToken<int./test_crate!Y.b.>.)) (!
   (has_type (Poly%vstd!tokens.SetToken<int./test_crate!Y.b.>. x) (TYPE%vstd!tokens.SetToken.
     $ INT $ TYPE%test_crate!Y.b.
   ))
   :pattern ((has_type (Poly%vstd!tokens.SetToken<int./test_crate!Y.b.>. x) (TYPE%vstd!tokens.SetToken.
      $ INT $ TYPE%test_crate!Y.b.
   )))
   :qid internal_vstd__tokens__SetToken<int./test_crate!Y.b.>_has_type_always_definition
   :skolemid skolem_internal_vstd__tokens__SetToken<int./test_crate!Y.b.>_has_type_always_definition
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
(declare-fun tr_bound%vstd!tokens.ElementToken. (Dcr Type Dcr Type) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Element&. Dcr) (Element& Type)) (!
   true
   :pattern ((tr_bound%vstd!tokens.ElementToken. Self%&. Self%& Element&. Element&))
   :qid internal_vstd__tokens__ElementToken_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__tokens__ElementToken_trait_type_bounds_definition
)))

;; Function-Decl vstd::tokens::ElementToken::instance_id
(declare-fun vstd!tokens.ElementToken.instance_id.? (Dcr Type Dcr Type Poly) Poly)
(declare-fun vstd!tokens.ElementToken.instance_id%default%.? (Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl vstd::tokens::ElementToken::element
(declare-fun vstd!tokens.ElementToken.element.? (Dcr Type Dcr Type Poly) Poly)
(declare-fun vstd!tokens.ElementToken.element%default%.? (Dcr Type Dcr Type Poly)
 Poly
)

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

;; Function-Decl vstd::tokens::impl&%1::instance_id
(declare-fun vstd!tokens.impl&%1.instance_id.? (Dcr Type Dcr Type Poly) vstd!tokens.InstanceId.)

;; Function-Decl vstd::tokens::impl&%1::set
(declare-fun vstd!tokens.impl&%1.set.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl test_crate::Y::State::tr_add
(declare-fun test_crate!Y.impl&%10.tr_add.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr_have
(declare-fun test_crate!Y.impl&%10.tr_have.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr_remove
(declare-fun test_crate!Y.impl&%10.tr_remove.? (Poly Poly) Bool)

;; Function-Decl vstd::set::impl&%0::disjoint
(declare-fun vstd!set.impl&%0.disjoint.? (Dcr Type Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr_add_gen
(declare-fun test_crate!Y.impl&%10.tr_add_gen.? (Poly Poly) Bool)

;; Function-Decl vstd::set::impl&%0::subset_of
(declare-fun vstd!set.impl&%0.subset_of.? (Dcr Type Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr_have_gen
(declare-fun test_crate!Y.impl&%10.tr_have_gen.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr_remove_gen
(declare-fun test_crate!Y.impl&%10.tr_remove_gen.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr_have_strong
(declare-fun test_crate!Y.impl&%10.tr_have_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr_remove_strong
(declare-fun test_crate!Y.impl&%10.tr_remove_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr_have_gen_strong
(declare-fun test_crate!Y.impl&%10.tr_have_gen_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr_remove_gen_strong
(declare-fun test_crate!Y.impl&%10.tr_remove_gen_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::Instance::id
(declare-fun test_crate!Y.impl&%7.id.? (Poly) vstd!tokens.InstanceId.)

;; Function-Decl vstd::set::impl&%0::spec_le
(declare-fun vstd!set.impl&%0.spec_le.? (Dcr Type Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr_add_strong
(declare-fun test_crate!Y.impl&%10.tr_add_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr_add_gen_strong
(declare-fun test_crate!Y.impl&%10.tr_add_gen_strong.? (Poly Poly) Bool)

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

;; Function-Decl test_crate::rel_tr5
(declare-fun test_crate!rel_tr5.? (Poly Poly) Bool)

;; Function-Decl test_crate::rel_tr5_strong
(declare-fun test_crate!rel_tr5_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::rel_tr6
(declare-fun test_crate!rel_tr6.? (Poly Poly) Bool)

;; Function-Decl test_crate::rel_tr6_strong
(declare-fun test_crate!rel_tr6_strong.? (Poly Poly) Bool)

;; Function-Axioms vstd::tokens::ElementToken::instance_id
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Element&. Dcr) (Element& Type) (self! Poly))
  (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd!tokens.ElementToken.instance_id.? Self%&. Self%& Element&. Element&
      self!
     ) TYPE%vstd!tokens.InstanceId.
   ))
   :pattern ((vstd!tokens.ElementToken.instance_id.? Self%&. Self%& Element&. Element&
     self!
   ))
   :qid internal_vstd!tokens.ElementToken.instance_id.?_pre_post_definition
   :skolemid skolem_internal_vstd!tokens.ElementToken.instance_id.?_pre_post_definition
)))

;; Function-Axioms vstd::tokens::ElementToken::element
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Element&. Dcr) (Element& Type) (self! Poly))
  (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd!tokens.ElementToken.element.? Self%&. Self%& Element&. Element& self!)
     Element&
   ))
   :pattern ((vstd!tokens.ElementToken.element.? Self%&. Self%& Element&. Element& self!))
   :qid internal_vstd!tokens.ElementToken.element.?_pre_post_definition
   :skolemid skolem_internal_vstd!tokens.ElementToken.element.?_pre_post_definition
)))

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

;; Function-Axioms vstd::tokens::impl&%1::set
(assert
 (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd!tokens.SetToken. Element&. Element& Token&. Token&))
    (has_type (vstd!tokens.impl&%1.set.? Element&. Element& Token&. Token& self!) (TYPE%vstd!set.Set.
      Element&. Element&
   )))
   :pattern ((vstd!tokens.impl&%1.set.? Element&. Element& Token&. Token& self!))
   :qid internal_vstd!tokens.impl&__1.set.?_pre_post_definition
   :skolemid skolem_internal_vstd!tokens.impl&__1.set.?_pre_post_definition
)))

;; Function-Axioms test_crate::Y::State::tr_add
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%10.tr_add.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%10.tr_add.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%10.tr_add.? pre! post!) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_b$ (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. pre!))))
       (let
        ((tmp_assert$1 (and
           tmp_assert$
           (not (vstd!set.impl&%0.contains.? $ INT (Poly%vstd!set.Set<int.>. update_tmp_b$) (I
              5
        ))))))
        (let
         ((update_tmp_b$1 (%Poly%vstd!set.Set<int.>. (vstd!set.impl&%0.insert.? $ INT (Poly%vstd!set.Set<int.>.
              update_tmp_b$
             ) (I 5)
         ))))
         (=>
          tmp_assert$1
          (= (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. post!)) update_tmp_b$1)
    ))))))
    :pattern ((test_crate!Y.impl&%10.tr_add.? pre! post!))
    :qid internal_test_crate!Y.impl&__10.tr_add.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__10.tr_add.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr_have
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%10.tr_have.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%10.tr_have.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%10.tr_have.? pre! post!) (let
      ((update_tmp_b$ (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. pre!))))
      (and
       (vstd!set.impl&%0.contains.? $ INT (Poly%vstd!set.Set<int.>. update_tmp_b$) (I 5))
       (= (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. post!)) update_tmp_b$)
    )))
    :pattern ((test_crate!Y.impl&%10.tr_have.? pre! post!))
    :qid internal_test_crate!Y.impl&__10.tr_have.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__10.tr_have.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr_remove
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%10.tr_remove.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%10.tr_remove.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%10.tr_remove.? pre! post!) (let
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
    :pattern ((test_crate!Y.impl&%10.tr_remove.? pre! post!))
    :qid internal_test_crate!Y.impl&__10.tr_remove.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__10.tr_remove.?_definition
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

;; Function-Axioms test_crate::Y::State::tr_add_gen
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%10.tr_add_gen.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%10.tr_add_gen.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%10.tr_add_gen.? pre! post!) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_b$ (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. pre!))))
       (let
        ((tmp_assert$1 (and
           tmp_assert$
           (vstd!set.impl&%0.disjoint.? $ INT (Poly%vstd!set.Set<int.>. update_tmp_b$) (vstd!set.impl&%0.insert.?
             $ INT (vstd!set.impl&%0.empty.? $ INT) (I 6)
        )))))
        (let
         ((update_tmp_b$1 (%Poly%vstd!set.Set<int.>. (vstd!set.impl&%0.union.? $ INT (Poly%vstd!set.Set<int.>.
              update_tmp_b$
             ) (vstd!set.impl&%0.insert.? $ INT (vstd!set.impl&%0.empty.? $ INT) (I 6))
         ))))
         (=>
          tmp_assert$1
          (= (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. post!)) update_tmp_b$1)
    ))))))
    :pattern ((test_crate!Y.impl&%10.tr_add_gen.? pre! post!))
    :qid internal_test_crate!Y.impl&__10.tr_add_gen.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__10.tr_add_gen.?_definition
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

;; Function-Axioms test_crate::Y::State::tr_have_gen
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%10.tr_have_gen.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%10.tr_have_gen.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%10.tr_have_gen.? pre! post!) (let
      ((update_tmp_b$ (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. pre!))))
      (and
       (vstd!set.impl&%0.subset_of.? $ INT (vstd!set.impl&%0.insert.? $ INT (vstd!set.impl&%0.empty.?
          $ INT
         ) (I 6)
        ) (Poly%vstd!set.Set<int.>. update_tmp_b$)
       )
       (= (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. post!)) update_tmp_b$)
    )))
    :pattern ((test_crate!Y.impl&%10.tr_have_gen.? pre! post!))
    :qid internal_test_crate!Y.impl&__10.tr_have_gen.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__10.tr_have_gen.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr_remove_gen
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%10.tr_remove_gen.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%10.tr_remove_gen.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%10.tr_remove_gen.? pre! post!) (let
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
    :pattern ((test_crate!Y.impl&%10.tr_remove_gen.? pre! post!))
    :qid internal_test_crate!Y.impl&__10.tr_remove_gen.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__10.tr_remove_gen.?_definition
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

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!tokens.ElementToken. $ TYPE%test_crate!Y.b. $ INT)
)

;; Function-Specs test_crate::Y::Instance::initialize
(declare-fun ens%test_crate!Y.impl&%7.initialize. (Int tuple%2.) Bool)
(assert
 (forall ((no%param Int) (tmp_tuple! tuple%2.)) (!
   (= (ens%test_crate!Y.impl&%7.initialize. no%param tmp_tuple!) (and
     (has_type (Poly%tuple%2. tmp_tuple!) (TYPE%tuple%2. (TRACKED $) TYPE%test_crate!Y.Instance.
       (TRACKED $) (TYPE%vstd!tokens.SetToken. $ INT $ TYPE%test_crate!Y.b.)
     ))
     (let
      ((instance$ (%Poly%test_crate!Y.Instance. (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2.
            tmp_tuple!
      ))))))
      (let
       ((param_token_b$ (%Poly%vstd!tokens.SetToken<int./test_crate!Y.b.>. (tuple%2./tuple%2/1
           (%Poly%tuple%2. (Poly%tuple%2. tmp_tuple!))
       ))))
       (let
        ((instance$1 instance$))
        (let
         ((param_token_b$1 param_token_b$))
         (and
          (= (vstd!set.impl&%0.insert.? $ INT (vstd!set.impl&%0.empty.? $ INT) (I 19)) (vstd!tokens.impl&%1.set.?
            $ INT $ TYPE%test_crate!Y.b. (Poly%vstd!tokens.SetToken<int./test_crate!Y.b.>. param_token_b$1)
          ))
          (= (vstd!tokens.impl&%1.instance_id.? $ INT $ TYPE%test_crate!Y.b. (Poly%vstd!tokens.SetToken<int./test_crate!Y.b.>.
             param_token_b$1
            )
           ) (test_crate!Y.impl&%7.id.? (Poly%test_crate!Y.Instance. instance$1))
   ))))))))
   :pattern ((ens%test_crate!Y.impl&%7.initialize. no%param tmp_tuple!))
   :qid internal_ens__test_crate!Y.impl&__7.initialize._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__7.initialize._definition
)))

;; Function-Specs test_crate::Y::Instance::tr_have
(declare-fun req%test_crate!Y.impl&%7.tr_have. (test_crate!Y.Instance. test_crate!Y.b.)
 Bool
)
(declare-const %%global_location_label%%0 Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((self! test_crate!Y.Instance.) (param_token_0_b! test_crate!Y.b.)) (!
   (= (req%test_crate!Y.impl&%7.tr_have. self! param_token_0_b!) (and
     (=>
      %%global_location_label%%0
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ElementToken.instance_id.? $ TYPE%test_crate!Y.b.
         $ INT (Poly%test_crate!Y.b. param_token_0_b!)
        )
       ) (test_crate!Y.impl&%7.id.? (Poly%test_crate!Y.Instance. self!))
     ))
     (=>
      %%global_location_label%%1
      (= (%I (vstd!tokens.ElementToken.element.? $ TYPE%test_crate!Y.b. $ INT (Poly%test_crate!Y.b.
          param_token_0_b!
        ))
       ) 5
   ))))
   :pattern ((req%test_crate!Y.impl&%7.tr_have. self! param_token_0_b!))
   :qid internal_req__test_crate!Y.impl&__7.tr_have._definition
   :skolemid skolem_internal_req__test_crate!Y.impl&__7.tr_have._definition
)))

;; Function-Specs test_crate::Y::Instance::tr_remove
(declare-fun req%test_crate!Y.impl&%7.tr_remove. (test_crate!Y.Instance. test_crate!Y.b.)
 Bool
)
(declare-const %%global_location_label%%2 Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((self! test_crate!Y.Instance.) (param_token_0_b! test_crate!Y.b.)) (!
   (= (req%test_crate!Y.impl&%7.tr_remove. self! param_token_0_b!) (and
     (=>
      %%global_location_label%%2
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ElementToken.instance_id.? $ TYPE%test_crate!Y.b.
         $ INT (Poly%test_crate!Y.b. param_token_0_b!)
        )
       ) (test_crate!Y.impl&%7.id.? (Poly%test_crate!Y.Instance. self!))
     ))
     (=>
      %%global_location_label%%3
      (= (%I (vstd!tokens.ElementToken.element.? $ TYPE%test_crate!Y.b. $ INT (Poly%test_crate!Y.b.
          param_token_0_b!
        ))
       ) 5
   ))))
   :pattern ((req%test_crate!Y.impl&%7.tr_remove. self! param_token_0_b!))
   :qid internal_req__test_crate!Y.impl&__7.tr_remove._definition
   :skolemid skolem_internal_req__test_crate!Y.impl&__7.tr_remove._definition
)))

;; Function-Axioms vstd::set::impl&%0::spec_le
(assert
 (fuel_bool_default fuel%vstd!set.impl&%0.spec_le.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!set.impl&%0.spec_le.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
    (= (vstd!set.impl&%0.spec_le.? A&. A& self! s2!) (vstd!set.impl&%0.subset_of.? A&.
      A& self! s2!
    ))
    :pattern ((vstd!set.impl&%0.spec_le.? A&. A& self! s2!))
    :qid internal_vstd!set.impl&__0.spec_le.?_definition
    :skolemid skolem_internal_vstd!set.impl&__0.spec_le.?_definition
))))

;; Function-Specs test_crate::Y::Instance::tr_have_gen
(declare-fun req%test_crate!Y.impl&%7.tr_have_gen. (test_crate!Y.Instance. vstd!tokens.SetToken<int./test_crate!Y.b.>.)
 Bool
)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((self! test_crate!Y.Instance.) (param_token_0_b! vstd!tokens.SetToken<int./test_crate!Y.b.>.))
  (!
   (= (req%test_crate!Y.impl&%7.tr_have_gen. self! param_token_0_b!) (=>
     %%global_location_label%%4
     (and
      (vstd!set.impl&%0.subset_of.? $ INT (vstd!set.impl&%0.insert.? $ INT (vstd!set.impl&%0.empty.?
         $ INT
        ) (I 6)
       ) (vstd!tokens.impl&%1.set.? $ INT $ TYPE%test_crate!Y.b. (Poly%vstd!tokens.SetToken<int./test_crate!Y.b.>.
         param_token_0_b!
      )))
      (= (vstd!tokens.impl&%1.instance_id.? $ INT $ TYPE%test_crate!Y.b. (Poly%vstd!tokens.SetToken<int./test_crate!Y.b.>.
         param_token_0_b!
        )
       ) (test_crate!Y.impl&%7.id.? (Poly%test_crate!Y.Instance. self!))
   ))))
   :pattern ((req%test_crate!Y.impl&%7.tr_have_gen. self! param_token_0_b!))
   :qid internal_req__test_crate!Y.impl&__7.tr_have_gen._definition
   :skolemid skolem_internal_req__test_crate!Y.impl&__7.tr_have_gen._definition
)))

;; Function-Specs test_crate::Y::Instance::tr_remove_gen
(declare-fun req%test_crate!Y.impl&%7.tr_remove_gen. (test_crate!Y.Instance. vstd!tokens.SetToken<int./test_crate!Y.b.>.)
 Bool
)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((self! test_crate!Y.Instance.) (param_token_0_b! vstd!tokens.SetToken<int./test_crate!Y.b.>.))
  (!
   (= (req%test_crate!Y.impl&%7.tr_remove_gen. self! param_token_0_b!) (=>
     %%global_location_label%%5
     (and
      (vstd!set.impl&%0.subset_of.? $ INT (vstd!set.impl&%0.insert.? $ INT (vstd!set.impl&%0.empty.?
         $ INT
        ) (I 6)
       ) (vstd!tokens.impl&%1.set.? $ INT $ TYPE%test_crate!Y.b. (Poly%vstd!tokens.SetToken<int./test_crate!Y.b.>.
         param_token_0_b!
      )))
      (= (vstd!tokens.impl&%1.instance_id.? $ INT $ TYPE%test_crate!Y.b. (Poly%vstd!tokens.SetToken<int./test_crate!Y.b.>.
         param_token_0_b!
        )
       ) (test_crate!Y.impl&%7.id.? (Poly%test_crate!Y.Instance. self!))
   ))))
   :pattern ((req%test_crate!Y.impl&%7.tr_remove_gen. self! param_token_0_b!))
   :qid internal_req__test_crate!Y.impl&__7.tr_remove_gen._definition
   :skolemid skolem_internal_req__test_crate!Y.impl&__7.tr_remove_gen._definition
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
    (= (test_crate!rel_tr1.? pre! post!) (=>
      (not (vstd!set.impl&%0.contains.? $ INT (Poly%vstd!set.Set<int.>. (test_crate!Y.State./State/b
          (%Poly%test_crate!Y.State. pre!)
         )
        ) (I 5)
      ))
      (= (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!set.Set<int.>.
        (vstd!set.impl&%0.insert.? $ INT (Poly%vstd!set.Set<int.>. (test_crate!Y.State./State/b
           (%Poly%test_crate!Y.State. pre!)
          )
         ) (I 5)
    )))))
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
      (not (vstd!set.impl&%0.contains.? $ INT (Poly%vstd!set.Set<int.>. (test_crate!Y.State./State/b
          (%Poly%test_crate!Y.State. pre!)
         )
        ) (I 5)
      ))
      (= (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!set.Set<int.>.
        (vstd!set.impl&%0.insert.? $ INT (Poly%vstd!set.Set<int.>. (test_crate!Y.State./State/b
           (%Poly%test_crate!Y.State. pre!)
          )
         ) (I 5)
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
      (vstd!set.impl&%0.contains.? $ INT (Poly%vstd!set.Set<int.>. (test_crate!Y.State./State/b
         (%Poly%test_crate!Y.State. pre!)
        )
       ) (I 5)
      )
      (= (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. pre!)) (test_crate!Y.State./State/b
        (%Poly%test_crate!Y.State. post!)
    ))))
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
      (vstd!set.impl&%0.contains.? $ INT (Poly%vstd!set.Set<int.>. (test_crate!Y.State./State/b
         (%Poly%test_crate!Y.State. pre!)
        )
       ) (I 5)
      )
      (= (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. pre!)) (test_crate!Y.State./State/b
        (%Poly%test_crate!Y.State. post!)
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
      (vstd!set.impl&%0.contains.? $ INT (Poly%vstd!set.Set<int.>. (test_crate!Y.State./State/b
         (%Poly%test_crate!Y.State. pre!)
        )
       ) (I 5)
      )
      (= (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!set.Set<int.>.
        (vstd!set.impl&%0.remove.? $ INT (Poly%vstd!set.Set<int.>. (test_crate!Y.State./State/b
           (%Poly%test_crate!Y.State. pre!)
          )
         ) (I 5)
    )))))
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
      (vstd!set.impl&%0.contains.? $ INT (Poly%vstd!set.Set<int.>. (test_crate!Y.State./State/b
         (%Poly%test_crate!Y.State. pre!)
        )
       ) (I 5)
      )
      (= (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!set.Set<int.>.
        (vstd!set.impl&%0.remove.? $ INT (Poly%vstd!set.Set<int.>. (test_crate!Y.State./State/b
           (%Poly%test_crate!Y.State. pre!)
          )
         ) (I 5)
    )))))
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
      (not (vstd!set.impl&%0.contains.? $ INT (Poly%vstd!set.Set<int.>. (test_crate!Y.State./State/b
          (%Poly%test_crate!Y.State. pre!)
         )
        ) (I 6)
      ))
      (= (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!set.Set<int.>.
        (vstd!set.impl&%0.union.? $ INT (Poly%vstd!set.Set<int.>. (test_crate!Y.State./State/b
           (%Poly%test_crate!Y.State. pre!)
          )
         ) (vstd!set.impl&%0.insert.? $ INT (vstd!set.impl&%0.empty.? $ INT) (I 6))
    )))))
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
      (not (vstd!set.impl&%0.contains.? $ INT (Poly%vstd!set.Set<int.>. (test_crate!Y.State./State/b
          (%Poly%test_crate!Y.State. pre!)
         )
        ) (I 6)
      ))
      (= (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!set.Set<int.>.
        (vstd!set.impl&%0.union.? $ INT (Poly%vstd!set.Set<int.>. (test_crate!Y.State./State/b
           (%Poly%test_crate!Y.State. pre!)
          )
         ) (vstd!set.impl&%0.insert.? $ INT (vstd!set.impl&%0.empty.? $ INT) (I 6))
    )))))
    :pattern ((test_crate!rel_tr4_strong.? pre! post!))
    :qid internal_test_crate!rel_tr4_strong.?_definition
    :skolemid skolem_internal_test_crate!rel_tr4_strong.?_definition
))))

;; Function-Axioms test_crate::rel_tr5
(assert
 (fuel_bool_default fuel%test_crate!rel_tr5.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!rel_tr5.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!rel_tr5.? pre! post!) (and
      (vstd!set.impl&%0.contains.? $ INT (Poly%vstd!set.Set<int.>. (test_crate!Y.State./State/b
         (%Poly%test_crate!Y.State. pre!)
        )
       ) (I 6)
      )
      (= (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. pre!)) (test_crate!Y.State./State/b
        (%Poly%test_crate!Y.State. post!)
    ))))
    :pattern ((test_crate!rel_tr5.? pre! post!))
    :qid internal_test_crate!rel_tr5.?_definition
    :skolemid skolem_internal_test_crate!rel_tr5.?_definition
))))

;; Function-Axioms test_crate::rel_tr5_strong
(assert
 (fuel_bool_default fuel%test_crate!rel_tr5_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!rel_tr5_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!rel_tr5_strong.? pre! post!) (and
      (vstd!set.impl&%0.contains.? $ INT (Poly%vstd!set.Set<int.>. (test_crate!Y.State./State/b
         (%Poly%test_crate!Y.State. pre!)
        )
       ) (I 6)
      )
      (= (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. pre!)) (test_crate!Y.State./State/b
        (%Poly%test_crate!Y.State. post!)
    ))))
    :pattern ((test_crate!rel_tr5_strong.? pre! post!))
    :qid internal_test_crate!rel_tr5_strong.?_definition
    :skolemid skolem_internal_test_crate!rel_tr5_strong.?_definition
))))

;; Function-Axioms test_crate::rel_tr6
(assert
 (fuel_bool_default fuel%test_crate!rel_tr6.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!rel_tr6.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!rel_tr6.? pre! post!) (and
      (vstd!set.impl&%0.contains.? $ INT (Poly%vstd!set.Set<int.>. (test_crate!Y.State./State/b
         (%Poly%test_crate!Y.State. pre!)
        )
       ) (I 6)
      )
      (= (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!set.Set<int.>.
        (vstd!set.impl&%0.difference.? $ INT (Poly%vstd!set.Set<int.>. (test_crate!Y.State./State/b
           (%Poly%test_crate!Y.State. pre!)
          )
         ) (vstd!set.impl&%0.insert.? $ INT (vstd!set.impl&%0.empty.? $ INT) (I 6))
    )))))
    :pattern ((test_crate!rel_tr6.? pre! post!))
    :qid internal_test_crate!rel_tr6.?_definition
    :skolemid skolem_internal_test_crate!rel_tr6.?_definition
))))

;; Function-Axioms test_crate::rel_tr6_strong
(assert
 (fuel_bool_default fuel%test_crate!rel_tr6_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!rel_tr6_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!rel_tr6_strong.? pre! post!) (and
      (vstd!set.impl&%0.contains.? $ INT (Poly%vstd!set.Set<int.>. (test_crate!Y.State./State/b
         (%Poly%test_crate!Y.State. pre!)
        )
       ) (I 6)
      )
      (= (test_crate!Y.State./State/b (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!set.Set<int.>.
        (vstd!set.impl&%0.difference.? $ INT (Poly%vstd!set.Set<int.>. (test_crate!Y.State./State/b
           (%Poly%test_crate!Y.State. pre!)
          )
         ) (vstd!set.impl&%0.insert.? $ INT (vstd!set.impl&%0.empty.? $ INT) (I 6))
    )))))
    :pattern ((test_crate!rel_tr6_strong.? pre! post!))
    :qid internal_test_crate!rel_tr6_strong.?_definition
    :skolemid skolem_internal_test_crate!rel_tr6_strong.?_definition
))))

;; Function-Specs test_crate::Y::Instance::tr_add
(declare-fun ens%test_crate!Y.impl&%7.tr_add. (test_crate!Y.Instance. test_crate!Y.b.)
 Bool
)
(assert
 (forall ((self! test_crate!Y.Instance.) (param_token_0_b! test_crate!Y.b.)) (!
   (= (ens%test_crate!Y.impl&%7.tr_add. self! param_token_0_b!) (and
     (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ElementToken.instance_id.? $ TYPE%test_crate!Y.b.
        $ INT (Poly%test_crate!Y.b. param_token_0_b!)
       )
      ) (test_crate!Y.impl&%7.id.? (Poly%test_crate!Y.Instance. self!))
     )
     (= (%I (vstd!tokens.ElementToken.element.? $ TYPE%test_crate!Y.b. $ INT (Poly%test_crate!Y.b.
         param_token_0_b!
       ))
      ) 5
   )))
   :pattern ((ens%test_crate!Y.impl&%7.tr_add. self! param_token_0_b!))
   :qid internal_ens__test_crate!Y.impl&__7.tr_add._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__7.tr_add._definition
)))

;; Function-Specs test_crate::Y::Instance::tr_add_gen
(declare-fun ens%test_crate!Y.impl&%7.tr_add_gen. (test_crate!Y.Instance. vstd!tokens.SetToken<int./test_crate!Y.b.>.)
 Bool
)
(assert
 (forall ((self! test_crate!Y.Instance.) (param_token_0_b! vstd!tokens.SetToken<int./test_crate!Y.b.>.))
  (!
   (= (ens%test_crate!Y.impl&%7.tr_add_gen. self! param_token_0_b!) (and
     (= (vstd!set.impl&%0.insert.? $ INT (vstd!set.impl&%0.empty.? $ INT) (I 6)) (vstd!tokens.impl&%1.set.?
       $ INT $ TYPE%test_crate!Y.b. (Poly%vstd!tokens.SetToken<int./test_crate!Y.b.>. param_token_0_b!)
     ))
     (= (vstd!tokens.impl&%1.instance_id.? $ INT $ TYPE%test_crate!Y.b. (Poly%vstd!tokens.SetToken<int./test_crate!Y.b.>.
        param_token_0_b!
       )
      ) (test_crate!Y.impl&%7.id.? (Poly%test_crate!Y.Instance. self!))
   )))
   :pattern ((ens%test_crate!Y.impl&%7.tr_add_gen. self! param_token_0_b!))
   :qid internal_ens__test_crate!Y.impl&__7.tr_add_gen._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__7.tr_add_gen._definition
)))

;; Function-Specs test_crate::correct_tr
(declare-fun ens%test_crate!correct_tr. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!correct_tr. pre! post!) (and
     (= (test_crate!rel_tr1.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
      (test_crate!Y.impl&%10.tr_add.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
     )))
     (= (test_crate!rel_tr1_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       )
      ) (test_crate!Y.impl&%10.tr_add_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
     )))
     (= (test_crate!rel_tr2.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
      (test_crate!Y.impl&%10.tr_have.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
     )))
     (= (test_crate!rel_tr2_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       )
      ) (test_crate!Y.impl&%10.tr_have_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
     )))
     (= (test_crate!rel_tr3.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
      (test_crate!Y.impl&%10.tr_remove.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
     )))
     (= (test_crate!rel_tr3_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       )
      ) (test_crate!Y.impl&%10.tr_remove_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
     )))
     (= (test_crate!rel_tr4.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
      (test_crate!Y.impl&%10.tr_add_gen.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
     )))
     (= (test_crate!rel_tr4_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       )
      ) (test_crate!Y.impl&%10.tr_add_gen_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
     )))
     (= (test_crate!rel_tr5.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
      (test_crate!Y.impl&%10.tr_have_gen.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
     )))
     (= (test_crate!rel_tr5_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       )
      ) (test_crate!Y.impl&%10.tr_have_gen_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
     )))
     (= (test_crate!rel_tr6.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
      (test_crate!Y.impl&%10.tr_remove_gen.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
     )))
     (= (test_crate!rel_tr6_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       )
      ) (test_crate!Y.impl&%10.tr_remove_gen_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
   )))))
   :pattern ((ens%test_crate!correct_tr. pre! post!))
   :qid internal_ens__test_crate!correct_tr._definition
   :skolemid skolem_internal_ens__test_crate!correct_tr._definition
)))

;; Function-Def test_crate::correct_tr
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-set_codegen/test.rs:146:7: 146:51 (#0)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!Y.State.)
 (declare-const post! test_crate!Y.State.)
 (assert
  fuel_defaults
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%5 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%6 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%7 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%8 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%9 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%10 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%11 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (= (test_crate!rel_tr1.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
      (test_crate!Y.impl&%10.tr_add.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
    ))))
    (and
     (=>
      %%location_label%%1
      (= (test_crate!rel_tr1_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
         post!
        )
       ) (test_crate!Y.impl&%10.tr_add_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
         post!
     ))))
     (and
      (=>
       %%location_label%%2
       (= (test_crate!rel_tr2.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
        (test_crate!Y.impl&%10.tr_have.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
          post!
      ))))
      (and
       (=>
        %%location_label%%3
        (= (test_crate!rel_tr2_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
           post!
          )
         ) (test_crate!Y.impl&%10.tr_have_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
           post!
       ))))
       (and
        (=>
         %%location_label%%4
         (= (test_crate!rel_tr3.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
          (test_crate!Y.impl&%10.tr_remove.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
            post!
        ))))
        (and
         (=>
          %%location_label%%5
          (= (test_crate!rel_tr3_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
             post!
            )
           ) (test_crate!Y.impl&%10.tr_remove_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
             post!
         ))))
         (and
          (=>
           %%location_label%%6
           (= (test_crate!rel_tr4.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
            (test_crate!Y.impl&%10.tr_add_gen.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
              post!
          ))))
          (and
           (=>
            %%location_label%%7
            (= (test_crate!rel_tr4_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
               post!
              )
             ) (test_crate!Y.impl&%10.tr_add_gen_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
               post!
           ))))
           (and
            (=>
             %%location_label%%8
             (= (test_crate!rel_tr5.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
              (test_crate!Y.impl&%10.tr_have_gen.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
                post!
            ))))
            (and
             (=>
              %%location_label%%9
              (= (test_crate!rel_tr5_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
                 post!
                )
               ) (test_crate!Y.impl&%10.tr_have_gen_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
                 post!
             ))))
             (and
              (=>
               %%location_label%%10
               (= (test_crate!rel_tr6.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
                (test_crate!Y.impl&%10.tr_remove_gen.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
                  post!
              ))))
              (=>
               %%location_label%%11
               (= (test_crate!rel_tr6_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
                  post!
                 )
                ) (test_crate!Y.impl&%10.tr_remove_gen_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
                  post!
 )))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::test_inst1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-set_codegen/test.rs:164:7: 164:22 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Bool)
 (declare-const tmp%6 Bool)
 (declare-const tmp%%@ tuple%2.)
 (declare-const verus_tmp_inst@ test_crate!Y.Instance.)
 (declare-const verus_tmp_token_f@ vstd!tokens.SetToken<int./test_crate!Y.b.>.)
 (declare-const inst@ test_crate!Y.Instance.)
 (declare-const token_f@ vstd!tokens.SetToken<int./test_crate!Y.b.>.)
 (declare-const token1@ test_crate!Y.b.)
 (declare-const token_set@ vstd!tokens.SetToken<int./test_crate!Y.b.>.)
 (assert
  fuel_defaults
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%5 Bool)
 ;; assertion failed
 (declare-const %%location_label%%6 Bool)
 ;; assertion failed
 (declare-const %%location_label%%7 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%8 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%9 Bool)
 (assert
  (not (=>
    (ens%test_crate!Y.impl&%7.initialize. 0 tmp%%@)
    (=>
     (= verus_tmp_inst@ (%Poly%test_crate!Y.Instance. (tuple%2./tuple%2/0 (%Poly%tuple%2.
         (Poly%tuple%2. tmp%%@)
     ))))
     (=>
      (= verus_tmp_token_f@ (%Poly%vstd!tokens.SetToken<int./test_crate!Y.b.>. (tuple%2./tuple%2/1
         (%Poly%tuple%2. (Poly%tuple%2. tmp%%@))
      )))
      (=>
       (= inst@ verus_tmp_inst@)
       (=>
        (= token_f@ verus_tmp_token_f@)
        (=>
         (= tmp%1 (ext_eq false (TYPE%vstd!set.Set. $ INT) (vstd!tokens.impl&%1.set.? $ INT $
            TYPE%test_crate!Y.b. (Poly%vstd!tokens.SetToken<int./test_crate!Y.b.>. token_f@)
           ) (vstd!set.impl&%0.insert.? $ INT (vstd!set.impl&%0.empty.? $ INT) (I 19))
         ))
         (and
          (=>
           %%location_label%%0
           tmp%1
          )
          (=>
           tmp%1
           (=>
            (= tmp%2 (= (vstd!tokens.impl&%1.instance_id.? $ INT $ TYPE%test_crate!Y.b. (Poly%vstd!tokens.SetToken<int./test_crate!Y.b.>.
                token_f@
               )
              ) (test_crate!Y.impl&%7.id.? (Poly%test_crate!Y.Instance. inst@))
            ))
            (and
             (=>
              %%location_label%%1
              tmp%2
             )
             (=>
              tmp%2
              (=>
               (ens%test_crate!Y.impl&%7.tr_add. inst@ token1@)
               (=>
                (= tmp%3 (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ElementToken.instance_id.? $
                    TYPE%test_crate!Y.b. $ INT (Poly%test_crate!Y.b. token1@)
                   )
                  ) (test_crate!Y.impl&%7.id.? (Poly%test_crate!Y.Instance. inst@))
                ))
                (and
                 (=>
                  %%location_label%%2
                  tmp%3
                 )
                 (=>
                  tmp%3
                  (=>
                   (= tmp%4 (= (%I (vstd!tokens.ElementToken.element.? $ TYPE%test_crate!Y.b. $ INT (Poly%test_crate!Y.b.
                        token1@
                      ))
                     ) 5
                   ))
                   (and
                    (=>
                     %%location_label%%3
                     tmp%4
                    )
                    (=>
                     tmp%4
                     (and
                      (=>
                       %%location_label%%4
                       (req%test_crate!Y.impl&%7.tr_have. inst@ token1@)
                      )
                      (and
                       (=>
                        %%location_label%%5
                        (req%test_crate!Y.impl&%7.tr_remove. inst@ token1@)
                       )
                       (=>
                        (ens%test_crate!Y.impl&%7.tr_add_gen. inst@ token_set@)
                        (=>
                         (= tmp%5 (ext_eq false (TYPE%vstd!set.Set. $ INT) (vstd!tokens.impl&%1.set.? $ INT $
                            TYPE%test_crate!Y.b. (Poly%vstd!tokens.SetToken<int./test_crate!Y.b.>. token_set@)
                           ) (vstd!set.impl&%0.insert.? $ INT (vstd!set.impl&%0.empty.? $ INT) (I 6))
                         ))
                         (and
                          (=>
                           %%location_label%%6
                           tmp%5
                          )
                          (=>
                           tmp%5
                           (=>
                            (= tmp%6 (= (vstd!tokens.impl&%1.instance_id.? $ INT $ TYPE%test_crate!Y.b. (Poly%vstd!tokens.SetToken<int./test_crate!Y.b.>.
                                token_set@
                               )
                              ) (test_crate!Y.impl&%7.id.? (Poly%test_crate!Y.Instance. inst@))
                            ))
                            (and
                             (=>
                              %%location_label%%7
                              tmp%6
                             )
                             (=>
                              tmp%6
                              (and
                               (=>
                                %%location_label%%8
                                (req%test_crate!Y.impl&%7.tr_have_gen. inst@ token_set@)
                               )
                               (=>
                                %%location_label%%9
                                (req%test_crate!Y.impl&%7.tr_remove_gen. inst@ token_set@)
 )))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
