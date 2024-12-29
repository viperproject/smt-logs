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
(declare-const fuel%vstd!std_specs.option.impl&%0.is_None. FuelId)
(declare-const fuel%vstd!map.impl&%0.new. FuelId)
(declare-const fuel%vstd!map.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd!map.axiom_map_index_decreases_finite. FuelId)
(declare-const fuel%vstd!map.axiom_map_index_decreases_infinite. FuelId)
(declare-const fuel%vstd!map.axiom_map_empty. FuelId)
(declare-const fuel%vstd!map.axiom_map_insert_domain. FuelId)
(declare-const fuel%vstd!map.axiom_map_insert_same. FuelId)
(declare-const fuel%vstd!map.axiom_map_insert_different. FuelId)
(declare-const fuel%vstd!map.axiom_map_ext_equal. FuelId)
(declare-const fuel%vstd!map.axiom_map_ext_equal_deep. FuelId)
(declare-const fuel%vstd!map_lib.impl&%0.submap_of. FuelId)
(declare-const fuel%vstd!map_lib.impl&%0.union_prefer_right. FuelId)
(declare-const fuel%vstd!map_lib.impl&%0.remove_keys. FuelId)
(declare-const fuel%vstd!multiset.impl&%0.subset_of. FuelId)
(declare-const fuel%vstd!multiset.axiom_multiset_singleton. FuelId)
(declare-const fuel%vstd!multiset.axiom_multiset_singleton_different. FuelId)
(declare-const fuel%vstd!multiset.axiom_multiset_add. FuelId)
(declare-const fuel%vstd!multiset.axiom_multiset_sub. FuelId)
(declare-const fuel%vstd!multiset.axiom_multiset_ext_equal. FuelId)
(declare-const fuel%vstd!multiset.axiom_multiset_ext_equal_deep. FuelId)
(declare-const fuel%vstd!set.impl&%0.disjoint. FuelId)
(declare-const fuel%vstd!set.axiom_set_empty. FuelId)
(declare-const fuel%vstd!set.axiom_set_new. FuelId)
(declare-const fuel%vstd!set.axiom_set_insert_same. FuelId)
(declare-const fuel%vstd!set.axiom_set_insert_different. FuelId)
(declare-const fuel%vstd!set.axiom_set_ext_equal. FuelId)
(declare-const fuel%vstd!set.axiom_set_ext_equal_deep. FuelId)
(declare-const fuel%vstd!set.axiom_mk_map_domain. FuelId)
(declare-const fuel%vstd!set.axiom_mk_map_index. FuelId)
(declare-const fuel%vstd!set.axiom_set_empty_finite. FuelId)
(declare-const fuel%vstd!set.axiom_set_insert_finite. FuelId)
(declare-const fuel%vstd!state_machine_internal.opt_is_none. FuelId)
(declare-const fuel%vstd!state_machine_internal.opt_ge. FuelId)
(declare-const fuel%vstd!state_machine_internal.opt_add. FuelId)
(declare-const fuel%vstd!state_machine_internal.opt_sub. FuelId)
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
 (distinct fuel%vstd!std_specs.option.impl&%0.is_Some. fuel%vstd!std_specs.option.impl&%0.is_None.
  fuel%vstd!map.impl&%0.new. fuel%vstd!map.impl&%0.spec_index. fuel%vstd!map.axiom_map_index_decreases_finite.
  fuel%vstd!map.axiom_map_index_decreases_infinite. fuel%vstd!map.axiom_map_empty.
  fuel%vstd!map.axiom_map_insert_domain. fuel%vstd!map.axiom_map_insert_same. fuel%vstd!map.axiom_map_insert_different.
  fuel%vstd!map.axiom_map_ext_equal. fuel%vstd!map.axiom_map_ext_equal_deep. fuel%vstd!map_lib.impl&%0.submap_of.
  fuel%vstd!map_lib.impl&%0.union_prefer_right. fuel%vstd!map_lib.impl&%0.remove_keys.
  fuel%vstd!multiset.impl&%0.subset_of. fuel%vstd!multiset.axiom_multiset_singleton.
  fuel%vstd!multiset.axiom_multiset_singleton_different. fuel%vstd!multiset.axiom_multiset_add.
  fuel%vstd!multiset.axiom_multiset_sub. fuel%vstd!multiset.axiom_multiset_ext_equal.
  fuel%vstd!multiset.axiom_multiset_ext_equal_deep. fuel%vstd!set.impl&%0.disjoint.
  fuel%vstd!set.axiom_set_empty. fuel%vstd!set.axiom_set_new. fuel%vstd!set.axiom_set_insert_same.
  fuel%vstd!set.axiom_set_insert_different. fuel%vstd!set.axiom_set_ext_equal. fuel%vstd!set.axiom_set_ext_equal_deep.
  fuel%vstd!set.axiom_mk_map_domain. fuel%vstd!set.axiom_mk_map_index. fuel%vstd!set.axiom_set_empty_finite.
  fuel%vstd!set.axiom_set_insert_finite. fuel%vstd!state_machine_internal.opt_is_none.
  fuel%vstd!state_machine_internal.opt_ge. fuel%vstd!state_machine_internal.opt_add.
  fuel%vstd!state_machine_internal.opt_sub. fuel%test_crate!Y.impl&%15.tr1. fuel%test_crate!Y.impl&%15.tr1_strong.
  fuel%test_crate!Y.impl&%15.tr2. fuel%test_crate!Y.impl&%15.tr2_strong. fuel%test_crate!Y.impl&%15.tr3.
  fuel%test_crate!Y.impl&%15.tr3_strong. fuel%test_crate!Y.impl&%15.tr4. fuel%test_crate!Y.impl&%15.tr4_strong.
  fuel%test_crate!impl&%0.arrow_Bar_0. fuel%test_crate!impl&%0.arrow_Qax_0. fuel%test_crate!impl&%0.arrow_Duck_0.
  fuel%test_crate!rel_tr1. fuel%test_crate!rel_tr1_strong. fuel%test_crate!rel_tr2.
  fuel%test_crate!rel_tr2_strong. fuel%test_crate!rel_tr3. fuel%test_crate!rel_tr3_strong.
  fuel%test_crate!rel_tr4. fuel%test_crate!rel_tr4_strong. fuel%vstd!array.group_array_axioms.
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
   (fuel_bool_default fuel%vstd!map.axiom_map_empty.)
   (fuel_bool_default fuel%vstd!map.axiom_map_insert_domain.)
   (fuel_bool_default fuel%vstd!map.axiom_map_insert_same.)
   (fuel_bool_default fuel%vstd!map.axiom_map_insert_different.)
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
   (fuel_bool_default fuel%vstd!set.axiom_set_empty.)
   (fuel_bool_default fuel%vstd!set.axiom_set_new.)
   (fuel_bool_default fuel%vstd!set.axiom_set_insert_same.)
   (fuel_bool_default fuel%vstd!set.axiom_set_insert_different.)
   (fuel_bool_default fuel%vstd!set.axiom_set_ext_equal.)
   (fuel_bool_default fuel%vstd!set.axiom_set_ext_equal_deep.)
   (fuel_bool_default fuel%vstd!set.axiom_mk_map_domain.)
   (fuel_bool_default fuel%vstd!set.axiom_mk_map_index.)
   (fuel_bool_default fuel%vstd!set.axiom_set_empty_finite.)
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
(declare-fun TYPE%fun%1. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-fun TYPE%vstd!map.Map. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd!multiset.Multiset. (Dcr Type) Type)
(declare-fun TYPE%vstd!set.Set. (Dcr Type) Type)
(declare-const TYPE%test_crate!Y.State. Type)
(declare-const TYPE%test_crate!Foo. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%fun%1. (%%Function%%) Poly)
(declare-fun %Poly%fun%1. (Poly) %%Function%%)
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

;; Function-Decl vstd::std_specs::option::OptionAdditionalFns::is_Some
(declare-fun vstd!std_specs.option.OptionAdditionalFns.is_Some.? (Dcr Type Dcr Type
  Poly
 ) Poly
)
(declare-fun vstd!std_specs.option.OptionAdditionalFns.is_Some%default%.? (Dcr Type
  Dcr Type Poly
 ) Poly
)

;; Function-Decl vstd::std_specs::option::OptionAdditionalFns::is_None
(declare-fun vstd!std_specs.option.OptionAdditionalFns.is_None.? (Dcr Type Dcr Type
  Poly
 ) Poly
)
(declare-fun vstd!std_specs.option.OptionAdditionalFns.is_None%default%.? (Dcr Type
  Dcr Type Poly
 ) Poly
)

;; Function-Decl vstd::map::impl&%0::empty
(declare-fun vstd!map.impl&%0.empty.? (Dcr Type Dcr Type) Poly)

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

;; Function-Decl vstd::set::impl&%0::empty
(declare-fun vstd!set.impl&%0.empty.? (Dcr Type) Poly)

;; Function-Decl vstd::set::impl&%0::insert
(declare-fun vstd!set.impl&%0.insert.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::multiset::impl&%0::count
(declare-fun vstd!multiset.impl&%0.count.? (Dcr Type Poly Poly) Int)

;; Function-Decl vstd::multiset::impl&%0::singleton
(declare-fun vstd!multiset.impl&%0.singleton.? (Dcr Type Poly) Poly)

;; Function-Decl vstd::multiset::impl&%0::add
(declare-fun vstd!multiset.impl&%0.add.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::multiset::impl&%0::sub
(declare-fun vstd!multiset.impl&%0.sub.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::set::impl&%0::new
(declare-fun vstd!set.impl&%0.new.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl vstd::set::impl&%0::mk_map
(declare-fun vstd!set.impl&%0.mk_map.? (Dcr Type Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::state_machine_internal::opt_ge
(declare-fun vstd!state_machine_internal.opt_ge.? (Dcr Type Poly Poly) Bool)

;; Function-Decl vstd::state_machine_internal::opt_sub
(declare-fun vstd!state_machine_internal.opt_sub.? (Dcr Type Poly Poly) core!option.Option.)

;; Function-Decl vstd::state_machine_internal::opt_is_none
(declare-fun vstd!state_machine_internal.opt_is_none.? (Dcr Type Poly) Bool)

;; Function-Decl vstd::state_machine_internal::opt_add
(declare-fun vstd!state_machine_internal.opt_add.? (Dcr Type Poly Poly) core!option.Option.)

;; Function-Decl vstd::map_lib::impl&%0::submap_of
(declare-fun vstd!map_lib.impl&%0.submap_of.? (Dcr Type Dcr Type Poly Poly) Bool)

;; Function-Decl vstd::map::impl&%0::new
(declare-fun vstd!map.impl&%0.new.? (Dcr Type Dcr Type Dcr Type Dcr Type Poly Poly)
 Poly
)

;; Function-Decl vstd::map_lib::impl&%0::remove_keys
(declare-fun vstd!map_lib.impl&%0.remove_keys.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::set::impl&%0::disjoint
(declare-fun vstd!set.impl&%0.disjoint.? (Dcr Type Poly Poly) Bool)

;; Function-Decl vstd::map_lib::impl&%0::union_prefer_right
(declare-fun vstd!map_lib.impl&%0.union_prefer_right.? (Dcr Type Dcr Type Poly Poly)
 Poly
)

;; Function-Decl vstd::multiset::impl&%0::subset_of
(declare-fun vstd!multiset.impl&%0.subset_of.? (Dcr Type Poly Poly) Bool)

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

;; Function-Axioms vstd::map::impl&%0::empty
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type)) (!
   (has_type (vstd!map.impl&%0.empty.? K&. K& V&. V&) (TYPE%vstd!map.Map. K&. K& V&. V&))
   :pattern ((vstd!map.impl&%0.empty.? K&. K& V&. V&))
   :qid internal_vstd!map.impl&__0.empty.?_pre_post_definition
   :skolemid skolem_internal_vstd!map.impl&__0.empty.?_pre_post_definition
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

;; Function-Axioms vstd::set::impl&%0::empty
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (has_type (vstd!set.impl&%0.empty.? A&. A&) (TYPE%vstd!set.Set. A&. A&))
   :pattern ((vstd!set.impl&%0.empty.? A&. A&))
   :qid internal_vstd!set.impl&__0.empty.?_pre_post_definition
   :skolemid skolem_internal_vstd!set.impl&__0.empty.?_pre_post_definition
)))

;; Broadcast vstd::map::axiom_map_empty
(assert
 (=>
  (fuel_bool fuel%vstd!map.axiom_map_empty.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type)) (!
    (= (vstd!map.impl&%0.dom.? K&. K& V&. V& (vstd!map.impl&%0.empty.? K&. K& V&. V&))
     (vstd!set.impl&%0.empty.? K&. K&)
    )
    :pattern ((vstd!map.impl&%0.dom.? K&. K& V&. V& (vstd!map.impl&%0.empty.? K&. K& V&.
       V&
    )))
    :qid user_vstd__map__axiom_map_empty_2
    :skolemid skolem_user_vstd__map__axiom_map_empty_2
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
    :qid user_vstd__map__axiom_map_insert_domain_3
    :skolemid skolem_user_vstd__map__axiom_map_insert_domain_3
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
    :qid user_vstd__map__axiom_map_insert_same_4
    :skolemid skolem_user_vstd__map__axiom_map_insert_same_4
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
    :qid user_vstd__map__axiom_map_insert_different_5
    :skolemid skolem_user_vstd__map__axiom_map_insert_different_5
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
         :qid user_vstd__map__axiom_map_ext_equal_6
         :skolemid skolem_user_vstd__map__axiom_map_ext_equal_6
    )))))
    :pattern ((ext_eq false (TYPE%vstd!map.Map. K&. K& V&. V&) m1! m2!))
    :qid user_vstd__map__axiom_map_ext_equal_7
    :skolemid skolem_user_vstd__map__axiom_map_ext_equal_7
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
         :qid user_vstd__map__axiom_map_ext_equal_deep_8
         :skolemid skolem_user_vstd__map__axiom_map_ext_equal_deep_8
    )))))
    :pattern ((ext_eq true (TYPE%vstd!map.Map. K&. K& V&. V&) m1! m2!))
    :qid user_vstd__map__axiom_map_ext_equal_deep_9
    :skolemid skolem_user_vstd__map__axiom_map_ext_equal_deep_9
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
    :qid user_vstd__multiset__axiom_multiset_singleton_10
    :skolemid skolem_user_vstd__multiset__axiom_multiset_singleton_10
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
    :qid user_vstd__multiset__axiom_multiset_singleton_different_11
    :skolemid skolem_user_vstd__multiset__axiom_multiset_singleton_different_11
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
    :qid user_vstd__multiset__axiom_multiset_add_12
    :skolemid skolem_user_vstd__multiset__axiom_multiset_add_12
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
    :qid user_vstd__multiset__axiom_multiset_sub_13
    :skolemid skolem_user_vstd__multiset__axiom_multiset_sub_13
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
        :qid user_vstd__multiset__axiom_multiset_ext_equal_14
        :skolemid skolem_user_vstd__multiset__axiom_multiset_ext_equal_14
    ))))
    :pattern ((ext_eq false (TYPE%vstd!multiset.Multiset. V&. V&) m1! m2!))
    :qid user_vstd__multiset__axiom_multiset_ext_equal_15
    :skolemid skolem_user_vstd__multiset__axiom_multiset_ext_equal_15
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
    :qid user_vstd__multiset__axiom_multiset_ext_equal_deep_16
    :skolemid skolem_user_vstd__multiset__axiom_multiset_ext_equal_deep_16
))))

;; Function-Axioms vstd::set::impl&%0::new
(assert
 (forall ((A&. Dcr) (A& Type) (F&. Dcr) (F& Type) (f! Poly)) (!
   (=>
    (has_type f! F&)
    (has_type (vstd!set.impl&%0.new.? A&. A& F&. F& f!) (TYPE%vstd!set.Set. A&. A&))
   )
   :pattern ((vstd!set.impl&%0.new.? A&. A& F&. F& f!))
   :qid internal_vstd!set.impl&__0.new.?_pre_post_definition
   :skolemid skolem_internal_vstd!set.impl&__0.new.?_pre_post_definition
)))

;; Function-Axioms vstd::set::impl&%0::mk_map
(assert
 (forall ((A&. Dcr) (A& Type) (V&. Dcr) (V& Type) (F&. Dcr) (F& Type) (self! Poly) (
    f! Poly
   )
  ) (!
   (=>
    (and
     (has_type self! (TYPE%vstd!set.Set. A&. A&))
     (has_type f! F&)
    )
    (has_type (vstd!set.impl&%0.mk_map.? A&. A& V&. V& F&. F& self! f!) (TYPE%vstd!map.Map.
      A&. A& V&. V&
   )))
   :pattern ((vstd!set.impl&%0.mk_map.? A&. A& V&. V& F&. F& self! f!))
   :qid internal_vstd!set.impl&__0.mk_map.?_pre_post_definition
   :skolemid skolem_internal_vstd!set.impl&__0.mk_map.?_pre_post_definition
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
    :qid user_vstd__set__axiom_set_empty_17
    :skolemid skolem_user_vstd__set__axiom_set_empty_17
))))

;; Broadcast vstd::set::axiom_set_new
(assert
 (=>
  (fuel_bool fuel%vstd!set.axiom_set_new.)
  (forall ((A&. Dcr) (A& Type) (f! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type f! (TYPE%fun%1. A&. A& $ BOOL))
      (has_type a! A&)
     )
     (= (vstd!set.impl&%0.contains.? A&. A& (vstd!set.impl&%0.new.? A&. A& $ (TYPE%fun%1.
         A&. A& $ BOOL
        ) f!
       ) a!
      ) (%B (%%apply%%0 (%Poly%fun%1. f!) a!))
    ))
    :pattern ((vstd!set.impl&%0.contains.? A&. A& (vstd!set.impl&%0.new.? A&. A& $ (TYPE%fun%1.
        A&. A& $ BOOL
       ) f!
      ) a!
    ))
    :qid user_vstd__set__axiom_set_new_18
    :skolemid skolem_user_vstd__set__axiom_set_new_18
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
    :qid user_vstd__set__axiom_set_insert_same_19
    :skolemid skolem_user_vstd__set__axiom_set_insert_same_19
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
    :qid user_vstd__set__axiom_set_insert_different_20
    :skolemid skolem_user_vstd__set__axiom_set_insert_different_20
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
        :qid user_vstd__set__axiom_set_ext_equal_21
        :skolemid skolem_user_vstd__set__axiom_set_ext_equal_21
    ))))
    :pattern ((ext_eq false (TYPE%vstd!set.Set. A&. A&) s1! s2!))
    :qid user_vstd__set__axiom_set_ext_equal_22
    :skolemid skolem_user_vstd__set__axiom_set_ext_equal_22
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
    :qid user_vstd__set__axiom_set_ext_equal_deep_23
    :skolemid skolem_user_vstd__set__axiom_set_ext_equal_deep_23
))))

;; Broadcast vstd::set::axiom_mk_map_domain
(assert
 (=>
  (fuel_bool fuel%vstd!set.axiom_mk_map_domain.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (s! Poly) (f! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd!set.Set. K&. K&))
      (has_type f! (TYPE%fun%1. K&. K& V&. V&))
     )
     (= (vstd!map.impl&%0.dom.? K&. K& V&. V& (vstd!set.impl&%0.mk_map.? K&. K& V&. V& $
        (TYPE%fun%1. K&. K& V&. V&) s! f!
       )
      ) s!
    ))
    :pattern ((vstd!map.impl&%0.dom.? K&. K& V&. V& (vstd!set.impl&%0.mk_map.? K&. K& V&.
       V& $ (TYPE%fun%1. K&. K& V&. V&) s! f!
    )))
    :qid user_vstd__set__axiom_mk_map_domain_24
    :skolemid skolem_user_vstd__set__axiom_mk_map_domain_24
))))

;; Broadcast vstd::set::axiom_mk_map_index
(assert
 (=>
  (fuel_bool fuel%vstd!set.axiom_mk_map_index.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (s! Poly) (f! Poly) (key! Poly))
   (!
    (=>
     (and
      (has_type s! (TYPE%vstd!set.Set. K&. K&))
      (has_type f! (TYPE%fun%1. K&. K& V&. V&))
      (has_type key! K&)
     )
     (=>
      (vstd!set.impl&%0.contains.? K&. K& s! key!)
      (= (vstd!map.impl&%0.index.? K&. K& V&. V& (vstd!set.impl&%0.mk_map.? K&. K& V&. V&
         $ (TYPE%fun%1. K&. K& V&. V&) s! f!
        ) key!
       ) (%%apply%%0 (%Poly%fun%1. f!) key!)
    )))
    :pattern ((vstd!map.impl&%0.index.? K&. K& V&. V& (vstd!set.impl&%0.mk_map.? K&. K&
       V&. V& $ (TYPE%fun%1. K&. K& V&. V&) s! f!
      ) key!
    ))
    :qid user_vstd__set__axiom_mk_map_index_25
    :skolemid skolem_user_vstd__set__axiom_mk_map_index_25
))))

;; Broadcast vstd::set::axiom_set_empty_finite
(assert
 (=>
  (fuel_bool fuel%vstd!set.axiom_set_empty_finite.)
  (forall ((A&. Dcr) (A& Type)) (!
    (vstd!set.impl&%0.finite.? A&. A& (vstd!set.impl&%0.empty.? A&. A&))
    :pattern ((vstd!set.impl&%0.finite.? A&. A& (vstd!set.impl&%0.empty.? A&. A&)))
    :qid user_vstd__set__axiom_set_empty_finite_26
    :skolemid skolem_user_vstd__set__axiom_set_empty_finite_26
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
    :qid user_vstd__set__axiom_set_insert_finite_27
    :skolemid skolem_user_vstd__set__axiom_set_insert_finite_27
))))

;; Function-Axioms vstd::state_machine_internal::opt_ge
(assert
 (fuel_bool_default fuel%vstd!state_machine_internal.opt_ge.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!state_machine_internal.opt_ge.)
  (forall ((V&. Dcr) (V& Type) (a! Poly) (b! Poly)) (!
    (= (vstd!state_machine_internal.opt_ge.? V&. V& a! b!) (=>
      (is-core!option.Option./Some (%Poly%core!option.Option. b!))
      (= a! b!)
    ))
    :pattern ((vstd!state_machine_internal.opt_ge.? V&. V& a! b!))
    :qid internal_vstd!state_machine_internal.opt_ge.?_definition
    :skolemid skolem_internal_vstd!state_machine_internal.opt_ge.?_definition
))))

;; Function-Axioms vstd::state_machine_internal::opt_sub
(assert
 (fuel_bool_default fuel%vstd!state_machine_internal.opt_sub.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!state_machine_internal.opt_sub.)
  (forall ((V&. Dcr) (V& Type) (a! Poly) (b! Poly)) (!
    (= (vstd!state_machine_internal.opt_sub.? V&. V& a! b!) (ite
      (is-core!option.Option./Some (%Poly%core!option.Option. b!))
      core!option.Option./None
      (%Poly%core!option.Option. a!)
    ))
    :pattern ((vstd!state_machine_internal.opt_sub.? V&. V& a! b!))
    :qid internal_vstd!state_machine_internal.opt_sub.?_definition
    :skolemid skolem_internal_vstd!state_machine_internal.opt_sub.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type) (a! Poly) (b! Poly)) (!
   (=>
    (and
     (has_type a! (TYPE%core!option.Option. V&. V&))
     (has_type b! (TYPE%core!option.Option. V&. V&))
    )
    (has_type (Poly%core!option.Option. (vstd!state_machine_internal.opt_sub.? V&. V& a!
       b!
      )
     ) (TYPE%core!option.Option. V&. V&)
   ))
   :pattern ((vstd!state_machine_internal.opt_sub.? V&. V& a! b!))
   :qid internal_vstd!state_machine_internal.opt_sub.?_pre_post_definition
   :skolemid skolem_internal_vstd!state_machine_internal.opt_sub.?_pre_post_definition
)))

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

;; Function-Axioms vstd::state_machine_internal::opt_is_none
(assert
 (fuel_bool_default fuel%vstd!state_machine_internal.opt_is_none.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!state_machine_internal.opt_is_none.)
  (forall ((V&. Dcr) (V& Type) (a! Poly)) (!
    (= (vstd!state_machine_internal.opt_is_none.? V&. V& a!) (is-core!option.Option./None
      (%Poly%core!option.Option. a!)
    ))
    :pattern ((vstd!state_machine_internal.opt_is_none.? V&. V& a!))
    :qid internal_vstd!state_machine_internal.opt_is_none.?_definition
    :skolemid skolem_internal_vstd!state_machine_internal.opt_is_none.?_definition
))))

;; Function-Axioms vstd::state_machine_internal::opt_add
(assert
 (fuel_bool_default fuel%vstd!state_machine_internal.opt_add.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!state_machine_internal.opt_add.)
  (forall ((V&. Dcr) (V& Type) (a! Poly) (b! Poly)) (!
    (= (vstd!state_machine_internal.opt_add.? V&. V& a! b!) (%Poly%core!option.Option.
      (ite
       (is-core!option.Option./Some (%Poly%core!option.Option. b!))
       b!
       a!
    )))
    :pattern ((vstd!state_machine_internal.opt_add.? V&. V& a! b!))
    :qid internal_vstd!state_machine_internal.opt_add.?_definition
    :skolemid skolem_internal_vstd!state_machine_internal.opt_add.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type) (a! Poly) (b! Poly)) (!
   (=>
    (and
     (has_type a! (TYPE%core!option.Option. V&. V&))
     (has_type b! (TYPE%core!option.Option. V&. V&))
    )
    (has_type (Poly%core!option.Option. (vstd!state_machine_internal.opt_add.? V&. V& a!
       b!
      )
     ) (TYPE%core!option.Option. V&. V&)
   ))
   :pattern ((vstd!state_machine_internal.opt_add.? V&. V& a! b!))
   :qid internal_vstd!state_machine_internal.opt_add.?_pre_post_definition
   :skolemid skolem_internal_vstd!state_machine_internal.opt_add.?_pre_post_definition
)))

;; Function-Axioms vstd::map_lib::impl&%0::submap_of
(assert
 (fuel_bool_default fuel%vstd!map_lib.impl&%0.submap_of.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!map_lib.impl&%0.submap_of.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
    (= (vstd!map_lib.impl&%0.submap_of.? K&. K& V&. V& self! m2!) (forall ((k$ Poly)) (
       !
       (=>
        (has_type k$ K&)
        (=>
         (vstd!set.impl&%0.contains.? K&. K& (vstd!map.impl&%0.dom.? K&. K& V&. V& self!) k$)
         (and
          (vstd!set.impl&%0.contains.? K&. K& (vstd!map.impl&%0.dom.? K&. K& V&. V& m2!) k$)
          (= (vstd!map.impl&%0.index.? K&. K& V&. V& self! k$) (vstd!map.impl&%0.index.? K&.
            K& V&. V& m2! k$
       )))))
       :pattern ((vstd!set.impl&%0.contains.? K&. K& (vstd!map.impl&%0.dom.? K&. K& V&. V&
          self!
         ) k$
        ) (vstd!set.impl&%0.contains.? K&. K& (vstd!map.impl&%0.dom.? K&. K& V&. V& m2!) k$)
       )
       :qid user_vstd__map_lib__impl&%0__submap_of_28
       :skolemid skolem_user_vstd__map_lib__impl&%0__submap_of_28
    )))
    :pattern ((vstd!map_lib.impl&%0.submap_of.? K&. K& V&. V& self! m2!))
    :qid internal_vstd!map_lib.impl&__0.submap_of.?_definition
    :skolemid skolem_internal_vstd!map_lib.impl&__0.submap_of.?_definition
))))

;; Function-Axioms vstd::map::impl&%0::new
(assert
 (fuel_bool_default fuel%vstd!map.impl&%0.new.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!map.impl&%0.new.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (impl%2&. Dcr) (impl%2& Type) (impl%3&.
     Dcr
    ) (impl%3& Type) (fk! Poly) (fv! Poly)
   ) (!
    (= (vstd!map.impl&%0.new.? K&. K& V&. V& impl%2&. impl%2& impl%3&. impl%3& fk! fv!)
     (vstd!set.impl&%0.mk_map.? K&. K& V&. V& impl%3&. impl%3& (vstd!set.impl&%0.new.? K&.
       K& impl%2&. impl%2& fk!
      ) fv!
    ))
    :pattern ((vstd!map.impl&%0.new.? K&. K& V&. V& impl%2&. impl%2& impl%3&. impl%3& fk!
      fv!
    ))
    :qid internal_vstd!map.impl&__0.new.?_definition
    :skolemid skolem_internal_vstd!map.impl&__0.new.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (impl%2&. Dcr) (impl%2& Type) (impl%3&.
    Dcr
   ) (impl%3& Type) (fk! Poly) (fv! Poly)
  ) (!
   (=>
    (and
     (has_type fk! impl%2&)
     (has_type fv! impl%3&)
    )
    (has_type (vstd!map.impl&%0.new.? K&. K& V&. V& impl%2&. impl%2& impl%3&. impl%3& fk!
      fv!
     ) (TYPE%vstd!map.Map. K&. K& V&. V&)
   ))
   :pattern ((vstd!map.impl&%0.new.? K&. K& V&. V& impl%2&. impl%2& impl%3&. impl%3& fk!
     fv!
   ))
   :qid internal_vstd!map.impl&__0.new.?_pre_post_definition
   :skolemid skolem_internal_vstd!map.impl&__0.new.?_pre_post_definition
)))

;; Function-Axioms vstd::map_lib::impl&%0::remove_keys
(assert
 (fuel_bool_default fuel%vstd!map_lib.impl&%0.remove_keys.)
)
(declare-fun %%lambda%%0 (Dcr Type Poly Dcr Type Poly) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 Dcr) (%%hole%%4
    Type
   ) (%%hole%%5 Poly) (k$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5)
     k$
    ) (B (and
      (vstd!set.impl&%0.contains.? %%hole%%0 %%hole%%1 %%hole%%2 k$)
      (not (vstd!set.impl&%0.contains.? %%hole%%3 %%hole%%4 %%hole%%5 k$))
   )))
   :pattern ((%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      %%hole%%5
     ) k$
)))))
(declare-fun %%lambda%%1 (Dcr Type Dcr Type Poly) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Dcr) (%%hole%%3 Type) (%%hole%%4
    Poly
   ) (k$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4) k$)
    (vstd!map.impl&%0.index.? %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 k$)
   )
   :pattern ((%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4)
     k$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd!map_lib.impl&%0.remove_keys.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (keys! Poly)) (!
    (= (vstd!map_lib.impl&%0.remove_keys.? K&. K& V&. V& self! keys!) (vstd!map.impl&%0.new.?
      K&. K& V&. V& $ (TYPE%fun%1. K&. K& $ BOOL) $ (TYPE%fun%1. K&. K& V&. V&) (Poly%fun%1.
       (mk_fun (%%lambda%%0 K&. K& (vstd!map.impl&%0.dom.? K&. K& V&. V& self!) K&. K& keys!))
      ) (Poly%fun%1. (mk_fun (%%lambda%%1 K&. K& V&. V& self!)))
    ))
    :pattern ((vstd!map_lib.impl&%0.remove_keys.? K&. K& V&. V& self! keys!))
    :qid internal_vstd!map_lib.impl&__0.remove_keys.?_definition
    :skolemid skolem_internal_vstd!map_lib.impl&__0.remove_keys.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (keys! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd!map.Map. K&. K& V&. V&))
     (has_type keys! (TYPE%vstd!set.Set. K&. K&))
    )
    (has_type (vstd!map_lib.impl&%0.remove_keys.? K&. K& V&. V& self! keys!) (TYPE%vstd!map.Map.
      K&. K& V&. V&
   )))
   :pattern ((vstd!map_lib.impl&%0.remove_keys.? K&. K& V&. V& self! keys!))
   :qid internal_vstd!map_lib.impl&__0.remove_keys.?_pre_post_definition
   :skolemid skolem_internal_vstd!map_lib.impl&__0.remove_keys.?_pre_post_definition
)))

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
       :qid user_vstd__set__impl&%0__disjoint_29
       :skolemid skolem_user_vstd__set__impl&%0__disjoint_29
    )))
    :pattern ((vstd!set.impl&%0.disjoint.? A&. A& self! s2!))
    :qid internal_vstd!set.impl&__0.disjoint.?_definition
    :skolemid skolem_internal_vstd!set.impl&__0.disjoint.?_definition
))))

;; Function-Axioms vstd::map_lib::impl&%0::union_prefer_right
(assert
 (fuel_bool_default fuel%vstd!map_lib.impl&%0.union_prefer_right.)
)
(declare-fun %%lambda%%2 (Dcr Type Poly Dcr Type Poly) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 Dcr) (%%hole%%4
    Type
   ) (%%hole%%5 Poly) (k$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%2 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5)
     k$
    ) (B (or
      (vstd!set.impl&%0.contains.? %%hole%%0 %%hole%%1 %%hole%%2 k$)
      (vstd!set.impl&%0.contains.? %%hole%%3 %%hole%%4 %%hole%%5 k$)
   )))
   :pattern ((%%apply%%0 (%%lambda%%2 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      %%hole%%5
     ) k$
)))))
(declare-fun %%lambda%%3 (Dcr Type Poly Dcr Type Dcr Type Poly Dcr Type Dcr Type Poly)
 %%Function%%
)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 Dcr) (%%hole%%4
    Type
   ) (%%hole%%5 Dcr) (%%hole%%6 Type) (%%hole%%7 Poly) (%%hole%%8 Dcr) (%%hole%%9 Type)
   (%%hole%%10 Dcr) (%%hole%%11 Type) (%%hole%%12 Poly) (k$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%3 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
      %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12
     ) k$
    ) (ite
     (vstd!set.impl&%0.contains.? %%hole%%0 %%hole%%1 %%hole%%2 k$)
     (vstd!map.impl&%0.index.? %%hole%%3 %%hole%%4 %%hole%%5 %%hole%%6 %%hole%%7 k$)
     (vstd!map.impl&%0.index.? %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12 k$)
   ))
   :pattern ((%%apply%%0 (%%lambda%%3 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      %%hole%%5 %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12
     ) k$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd!map_lib.impl&%0.union_prefer_right.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
    (= (vstd!map_lib.impl&%0.union_prefer_right.? K&. K& V&. V& self! m2!) (vstd!map.impl&%0.new.?
      K&. K& V&. V& $ (TYPE%fun%1. K&. K& $ BOOL) $ (TYPE%fun%1. K&. K& V&. V&) (Poly%fun%1.
       (mk_fun (%%lambda%%2 K&. K& (vstd!map.impl&%0.dom.? K&. K& V&. V& self!) K&. K& (vstd!map.impl&%0.dom.?
          K&. K& V&. V& m2!
       )))
      ) (Poly%fun%1. (mk_fun (%%lambda%%3 K&. K& (vstd!map.impl&%0.dom.? K&. K& V&. V& m2!)
         K&. K& V&. V& m2! K&. K& V&. V& self!
    )))))
    :pattern ((vstd!map_lib.impl&%0.union_prefer_right.? K&. K& V&. V& self! m2!))
    :qid internal_vstd!map_lib.impl&__0.union_prefer_right.?_definition
    :skolemid skolem_internal_vstd!map_lib.impl&__0.union_prefer_right.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd!map.Map. K&. K& V&. V&))
     (has_type m2! (TYPE%vstd!map.Map. K&. K& V&. V&))
    )
    (has_type (vstd!map_lib.impl&%0.union_prefer_right.? K&. K& V&. V& self! m2!) (TYPE%vstd!map.Map.
      K&. K& V&. V&
   )))
   :pattern ((vstd!map_lib.impl&%0.union_prefer_right.? K&. K& V&. V& self! m2!))
   :qid internal_vstd!map_lib.impl&__0.union_prefer_right.?_pre_post_definition
   :skolemid skolem_internal_vstd!map_lib.impl&__0.union_prefer_right.?_pre_post_definition
)))

;; Function-Axioms vstd::multiset::impl&%0::subset_of
(assert
 (fuel_bool_default fuel%vstd!multiset.impl&%0.subset_of.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!multiset.impl&%0.subset_of.)
  (forall ((V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
    (= (vstd!multiset.impl&%0.subset_of.? V&. V& self! m2!) (forall ((v$ Poly)) (!
       (=>
        (has_type v$ V&)
        (<= (vstd!multiset.impl&%0.count.? V&. V& self! v$) (vstd!multiset.impl&%0.count.?
          V&. V& m2! v$
       )))
       :pattern ((vstd!multiset.impl&%0.count.? V&. V& self! v$))
       :pattern ((vstd!multiset.impl&%0.count.? V&. V& m2! v$))
       :qid user_vstd__multiset__impl&%0__subset_of_30
       :skolemid skolem_user_vstd__multiset__impl&%0__subset_of_30
    )))
    :pattern ((vstd!multiset.impl&%0.subset_of.? V&. V& self! m2!))
    :qid internal_vstd!multiset.impl&__0.subset_of.?_definition
    :skolemid skolem_internal_vstd!multiset.impl&__0.subset_of.?_definition
))))

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
            (=>
             (is-core!option.Option./Some (core!option.Option./Some (I 5)))
             (= update_tmp_opt$ (core!option.Option./Some (I 5)))
            )
            (let
             ((update_tmp_opt$1 (ite
                (is-core!option.Option./Some (core!option.Option./Some (I 5)))
                core!option.Option./None
                update_tmp_opt$
             )))
             (let
              ((tmp_assert$1 (and
                 tmp_assert$
                 (or
                  (is-core!option.Option./None (core!option.Option./Some (I 8)))
                  (is-core!option.Option./None update_tmp_opt$1)
              ))))
              (let
               ((update_tmp_opt$2 (ite
                  (is-core!option.Option./Some (core!option.Option./Some (I 8)))
                  (core!option.Option./Some (I 8))
                  update_tmp_opt$1
               )))
               (and
                (=>
                 tmp_assert$1
                 (vstd!map_lib.impl&%0.submap_of.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT
                   (vstd!map.impl&%0.empty.? $ INT $ INT) (I 0) (I 1)
                  ) (Poly%vstd!map.Map<int./int.>. update_tmp_map$)
                ))
                (let
                 ((update_tmp_map$1 (%Poly%vstd!map.Map<int./int.>. (vstd!map_lib.impl&%0.remove_keys.?
                     $ INT $ INT (Poly%vstd!map.Map<int./int.>. update_tmp_map$) (vstd!map.impl&%0.dom.?
                      $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.? $ INT
                        $ INT
                       ) (I 0) (I 1)
                 ))))))
                 (and
                  (=>
                   tmp_assert$1
                   (vstd!map_lib.impl&%0.submap_of.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT
                     (vstd!map.impl&%0.empty.? $ INT $ INT) (I 2) (I 3)
                    ) (Poly%vstd!map.Map<int./int.>. update_tmp_map$1)
                  ))
                  (let
                   ((tmp_assert$2 (and
                      tmp_assert$1
                      (vstd!set.impl&%0.disjoint.? $ INT (vstd!map.impl&%0.dom.? $ INT $ INT (Poly%vstd!map.Map<int./int.>.
                         update_tmp_map$1
                        )
                       ) (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.?
                          $ INT $ INT
                         ) (I 4) (I 5)
                   ))))))
                   (let
                    ((update_tmp_map$2 (%Poly%vstd!map.Map<int./int.>. (vstd!map_lib.impl&%0.union_prefer_right.?
                        $ INT $ INT (Poly%vstd!map.Map<int./int.>. update_tmp_map$1) (vstd!map.impl&%0.insert.?
                         $ INT $ INT (vstd!map.impl&%0.empty.? $ INT $ INT) (I 4) (I 5)
                    )))))
                    (and
                     (=>
                      tmp_assert$2
                      (vstd!multiset.impl&%0.subset_of.? $ INT (vstd!multiset.impl&%0.singleton.? $ INT (
                         I 10
                        )
                       ) (Poly%vstd!multiset.Multiset<int.>. update_tmp_mset$)
                     ))
                     (let
                      ((update_tmp_mset$1 (%Poly%vstd!multiset.Multiset<int.>. (vstd!multiset.impl&%0.sub.?
                          $ INT (Poly%vstd!multiset.Multiset<int.>. update_tmp_mset$) (vstd!multiset.impl&%0.singleton.?
                           $ INT (I 10)
                      )))))
                      (and
                       (=>
                        tmp_assert$2
                        (vstd!multiset.impl&%0.subset_of.? $ INT (vstd!multiset.impl&%0.singleton.? $ INT (
                           I 11
                          )
                         ) (Poly%vstd!multiset.Multiset<int.>. update_tmp_mset$1)
                       ))
                       (let
                        ((update_tmp_mset$2 (%Poly%vstd!multiset.Multiset<int.>. (vstd!multiset.impl&%0.add.?
                            $ INT (Poly%vstd!multiset.Multiset<int.>. update_tmp_mset$1) (vstd!multiset.impl&%0.singleton.?
                             $ INT (I 12)
                        )))))
                        (let
                         ((tmp_assert$3 (and
                            tmp_assert$2
                            (=>
                             (is-core!option.Option./Some (core!option.Option./Some (I 13)))
                             (= update_tmp_storage_opt$ (core!option.Option./Some (I 13)))
                         ))))
                         (let
                          ((update_tmp_storage_opt$1 (ite
                             (is-core!option.Option./Some (core!option.Option./Some (I 13)))
                             core!option.Option./None
                             update_tmp_storage_opt$
                          )))
                          (let
                           ((tmp_assert$4 (and
                              tmp_assert$3
                              (or
                               (is-core!option.Option./None (core!option.Option./Some (I 14)))
                               (is-core!option.Option./None update_tmp_storage_opt$1)
                           ))))
                           (let
                            ((update_tmp_storage_opt$2 (ite
                               (is-core!option.Option./Some (core!option.Option./Some (I 14)))
                               (core!option.Option./Some (I 14))
                               update_tmp_storage_opt$1
                            )))
                            (let
                             ((tmp_assert$5 (and
                                tmp_assert$4
                                (vstd!map_lib.impl&%0.submap_of.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT
                                  (vstd!map.impl&%0.empty.? $ INT $ INT) (I 15) (I 16)
                                 ) (Poly%vstd!map.Map<int./int.>. update_tmp_storage_map$)
                             ))))
                             (let
                              ((update_tmp_storage_map$1 (%Poly%vstd!map.Map<int./int.>. (vstd!map_lib.impl&%0.remove_keys.?
                                  $ INT $ INT (Poly%vstd!map.Map<int./int.>. update_tmp_storage_map$) (vstd!map.impl&%0.dom.?
                                   $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.? $ INT
                                     $ INT
                                    ) (I 15) (I 16)
                              ))))))
                              (let
                               ((tmp_assert$6 (and
                                  tmp_assert$5
                                  (vstd!set.impl&%0.disjoint.? $ INT (vstd!map.impl&%0.dom.? $ INT $ INT (Poly%vstd!map.Map<int./int.>.
                                     update_tmp_storage_map$1
                                    )
                                   ) (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.?
                                      $ INT $ INT
                                     ) (I 17) (I 18)
                               ))))))
                               (let
                                ((update_tmp_storage_map$2 (%Poly%vstd!map.Map<int./int.>. (vstd!map_lib.impl&%0.union_prefer_right.?
                                    $ INT $ INT (Poly%vstd!map.Map<int./int.>. update_tmp_storage_map$1) (vstd!map.impl&%0.insert.?
                                     $ INT $ INT (vstd!map.impl&%0.empty.? $ INT $ INT) (I 17) (I 18)
                                )))))
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
            (=>
             (is-core!option.Option./Some (core!option.Option./Some (I 7)))
             (= update_tmp_opt$ (core!option.Option./Some (I 7)))
            )
            (let
             ((tmp_assert$1 (and
                tmp_assert$
                (vstd!set.impl&%0.disjoint.? $ INT (vstd!map.impl&%0.dom.? $ INT $ INT (Poly%vstd!map.Map<int./int.>.
                   update_tmp_map$
                  )
                 ) (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.?
                    $ INT $ INT
                   ) (I 4) (I 5)
             ))))))
             (let
              ((update_tmp_map$1 (%Poly%vstd!map.Map<int./int.>. (vstd!map_lib.impl&%0.union_prefer_right.?
                  $ INT $ INT (Poly%vstd!map.Map<int./int.>. update_tmp_map$) (vstd!map.impl&%0.insert.?
                   $ INT $ INT (vstd!map.impl&%0.empty.? $ INT $ INT) (I 4) (I 5)
              )))))
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
            (=>
             (is-core!option.Option./Some (core!option.Option./Some (I 7)))
             (= update_tmp_opt$ (core!option.Option./Some (I 7)))
            )
            (let
             ((update_tmp_opt$1 (ite
                (is-core!option.Option./Some (core!option.Option./Some (I 7)))
                core!option.Option./None
                update_tmp_opt$
             )))
             (let
              ((tmp_assert$1 (and
                 tmp_assert$
                 (=>
                  (is-core!option.Option./Some (core!option.Option./Some (I 12)))
                  (= update_tmp_storage_opt$ (core!option.Option./Some (I 12)))
              ))))
              (let
               ((update_tmp_storage_opt$1 (ite
                  (is-core!option.Option./Some (core!option.Option./Some (I 12)))
                  core!option.Option./None
                  update_tmp_storage_opt$
               )))
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
               (or
                (is-core!option.Option./None (core!option.Option./Some (I 7)))
                (is-core!option.Option./None update_tmp_opt$)
            ))))
            (let
             ((update_tmp_opt$1 (ite
                (is-core!option.Option./Some (core!option.Option./Some (I 7)))
                (core!option.Option./Some (I 7))
                update_tmp_opt$
             )))
             (let
              ((tmp_assert$2 (and
                 tmp_assert$1
                 (or
                  (is-core!option.Option./None (core!option.Option./Some (I 12)))
                  (is-core!option.Option./None update_tmp_storage_opt$)
              ))))
              (let
               ((update_tmp_storage_opt$1 (ite
                  (is-core!option.Option./Some (core!option.Option./Some (I 12)))
                  (core!option.Option./Some (I 12))
                  update_tmp_storage_opt$
               )))
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
           (=>
            (is-core!option.Option./Some (core!option.Option./Some (I 5)))
            (= update_tmp_opt$ (core!option.Option./Some (I 5)))
           )
           (let
            ((update_tmp_opt$1 (ite
               (is-core!option.Option./Some (core!option.Option./Some (I 5)))
               core!option.Option./None
               update_tmp_opt$
            )))
            (and
             (or
              (is-core!option.Option./None (core!option.Option./Some (I 8)))
              (is-core!option.Option./None update_tmp_opt$1)
             )
             (let
              ((update_tmp_opt$2 (ite
                 (is-core!option.Option./Some (core!option.Option./Some (I 8)))
                 (core!option.Option./Some (I 8))
                 update_tmp_opt$1
              )))
              (and
               (vstd!map_lib.impl&%0.submap_of.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT
                 (vstd!map.impl&%0.empty.? $ INT $ INT) (I 0) (I 1)
                ) (Poly%vstd!map.Map<int./int.>. update_tmp_map$)
               )
               (let
                ((update_tmp_map$1 (%Poly%vstd!map.Map<int./int.>. (vstd!map_lib.impl&%0.remove_keys.?
                    $ INT $ INT (Poly%vstd!map.Map<int./int.>. update_tmp_map$) (vstd!map.impl&%0.dom.?
                     $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.? $ INT
                       $ INT
                      ) (I 0) (I 1)
                ))))))
                (and
                 (vstd!map_lib.impl&%0.submap_of.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT
                   (vstd!map.impl&%0.empty.? $ INT $ INT) (I 2) (I 3)
                  ) (Poly%vstd!map.Map<int./int.>. update_tmp_map$1)
                 )
                 (and
                  (vstd!set.impl&%0.disjoint.? $ INT (vstd!map.impl&%0.dom.? $ INT $ INT (Poly%vstd!map.Map<int./int.>.
                     update_tmp_map$1
                    )
                   ) (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.?
                      $ INT $ INT
                     ) (I 4) (I 5)
                  )))
                  (let
                   ((update_tmp_map$2 (%Poly%vstd!map.Map<int./int.>. (vstd!map_lib.impl&%0.union_prefer_right.?
                       $ INT $ INT (Poly%vstd!map.Map<int./int.>. update_tmp_map$1) (vstd!map.impl&%0.insert.?
                        $ INT $ INT (vstd!map.impl&%0.empty.? $ INT $ INT) (I 4) (I 5)
                   )))))
                   (and
                    (vstd!multiset.impl&%0.subset_of.? $ INT (vstd!multiset.impl&%0.singleton.? $ INT (
                       I 10
                      )
                     ) (Poly%vstd!multiset.Multiset<int.>. update_tmp_mset$)
                    )
                    (let
                     ((update_tmp_mset$1 (%Poly%vstd!multiset.Multiset<int.>. (vstd!multiset.impl&%0.sub.?
                         $ INT (Poly%vstd!multiset.Multiset<int.>. update_tmp_mset$) (vstd!multiset.impl&%0.singleton.?
                          $ INT (I 10)
                     )))))
                     (and
                      (vstd!multiset.impl&%0.subset_of.? $ INT (vstd!multiset.impl&%0.singleton.? $ INT (
                         I 11
                        )
                       ) (Poly%vstd!multiset.Multiset<int.>. update_tmp_mset$1)
                      )
                      (let
                       ((update_tmp_mset$2 (%Poly%vstd!multiset.Multiset<int.>. (vstd!multiset.impl&%0.add.?
                           $ INT (Poly%vstd!multiset.Multiset<int.>. update_tmp_mset$1) (vstd!multiset.impl&%0.singleton.?
                            $ INT (I 12)
                       )))))
                       (and
                        (=>
                         (is-core!option.Option./Some (core!option.Option./Some (I 13)))
                         (= update_tmp_storage_opt$ (core!option.Option./Some (I 13)))
                        )
                        (let
                         ((update_tmp_storage_opt$1 (ite
                            (is-core!option.Option./Some (core!option.Option./Some (I 13)))
                            core!option.Option./None
                            update_tmp_storage_opt$
                         )))
                         (and
                          (or
                           (is-core!option.Option./None (core!option.Option./Some (I 14)))
                           (is-core!option.Option./None update_tmp_storage_opt$1)
                          )
                          (let
                           ((update_tmp_storage_opt$2 (ite
                              (is-core!option.Option./Some (core!option.Option./Some (I 14)))
                              (core!option.Option./Some (I 14))
                              update_tmp_storage_opt$1
                           )))
                           (and
                            (vstd!map_lib.impl&%0.submap_of.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT
                              (vstd!map.impl&%0.empty.? $ INT $ INT) (I 15) (I 16)
                             ) (Poly%vstd!map.Map<int./int.>. update_tmp_storage_map$)
                            )
                            (let
                             ((update_tmp_storage_map$1 (%Poly%vstd!map.Map<int./int.>. (vstd!map_lib.impl&%0.remove_keys.?
                                 $ INT $ INT (Poly%vstd!map.Map<int./int.>. update_tmp_storage_map$) (vstd!map.impl&%0.dom.?
                                  $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.? $ INT
                                    $ INT
                                   ) (I 15) (I 16)
                             ))))))
                             (and
                              (vstd!set.impl&%0.disjoint.? $ INT (vstd!map.impl&%0.dom.? $ INT $ INT (Poly%vstd!map.Map<int./int.>.
                                 update_tmp_storage_map$1
                                )
                               ) (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.?
                                  $ INT $ INT
                                 ) (I 17) (I 18)
                              )))
                              (let
                               ((update_tmp_storage_map$2 (%Poly%vstd!map.Map<int./int.>. (vstd!map_lib.impl&%0.union_prefer_right.?
                                   $ INT $ INT (Poly%vstd!map.Map<int./int.>. update_tmp_storage_map$1) (vstd!map.impl&%0.insert.?
                                    $ INT $ INT (vstd!map.impl&%0.empty.? $ INT $ INT) (I 17) (I 18)
                               )))))
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
           (=>
            (is-core!option.Option./Some (core!option.Option./Some (I 7)))
            (= update_tmp_opt$ (core!option.Option./Some (I 7)))
           )
           (and
            (vstd!set.impl&%0.disjoint.? $ INT (vstd!map.impl&%0.dom.? $ INT $ INT (Poly%vstd!map.Map<int./int.>.
               update_tmp_map$
              )
             ) (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.?
                $ INT $ INT
               ) (I 4) (I 5)
            )))
            (let
             ((update_tmp_map$1 (%Poly%vstd!map.Map<int./int.>. (vstd!map_lib.impl&%0.union_prefer_right.?
                 $ INT $ INT (Poly%vstd!map.Map<int./int.>. update_tmp_map$) (vstd!map.impl&%0.insert.?
                  $ INT $ INT (vstd!map.impl&%0.empty.? $ INT $ INT) (I 4) (I 5)
             )))))
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
           (=>
            (is-core!option.Option./Some (core!option.Option./Some (I 7)))
            (= update_tmp_opt$ (core!option.Option./Some (I 7)))
           )
           (let
            ((update_tmp_opt$1 (ite
               (is-core!option.Option./Some (core!option.Option./Some (I 7)))
               core!option.Option./None
               update_tmp_opt$
            )))
            (and
             (=>
              (is-core!option.Option./Some (core!option.Option./Some (I 12)))
              (= update_tmp_storage_opt$ (core!option.Option./Some (I 12)))
             )
             (let
              ((update_tmp_storage_opt$1 (ite
                 (is-core!option.Option./Some (core!option.Option./Some (I 12)))
                 core!option.Option./None
                 update_tmp_storage_opt$
              )))
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
           (or
            (is-core!option.Option./None (core!option.Option./Some (I 7)))
            (is-core!option.Option./None update_tmp_opt$)
           )
           (let
            ((update_tmp_opt$1 (ite
               (is-core!option.Option./Some (core!option.Option./Some (I 7)))
               (core!option.Option./Some (I 7))
               update_tmp_opt$
            )))
            (and
             (or
              (is-core!option.Option./None (core!option.Option./Some (I 12)))
              (is-core!option.Option./None update_tmp_storage_opt$)
             )
             (let
              ((update_tmp_storage_opt$1 (ite
                 (is-core!option.Option./Some (core!option.Option./Some (I 12)))
                 (core!option.Option./Some (I 12))
                 update_tmp_storage_opt$
              )))
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
        (vstd!map_lib.impl&%0.submap_of.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT
          (vstd!map.impl&%0.empty.? $ INT $ INT) (I 0) (I 1)
         ) (Poly%vstd!map.Map<int./int.>. (test_crate!Y.State./State/map (%Poly%test_crate!Y.State.
            pre!
       )))))
       (vstd!map_lib.impl&%0.submap_of.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT
         (vstd!map.impl&%0.empty.? $ INT $ INT) (I 2) (I 3)
        ) (vstd!map_lib.impl&%0.remove_keys.? $ INT $ INT (Poly%vstd!map.Map<int./int.>. (test_crate!Y.State./State/map
           (%Poly%test_crate!Y.State. pre!)
          )
         ) (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.?
            $ INT $ INT
           ) (I 0) (I 1)
      )))))
      (=>
       (vstd!set.impl&%0.disjoint.? $ INT (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map_lib.impl&%0.remove_keys.?
          $ INT $ INT (Poly%vstd!map.Map<int./int.>. (test_crate!Y.State./State/map (%Poly%test_crate!Y.State.
             pre!
           ))
          ) (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.?
             $ INT $ INT
            ) (I 0) (I 1)
         )))
        ) (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.?
           $ INT $ INT
          ) (I 4) (I 5)
       )))
       (and
        (and
         (vstd!multiset.impl&%0.subset_of.? $ INT (vstd!multiset.impl&%0.singleton.? $ INT (
            I 10
           )
          ) (Poly%vstd!multiset.Multiset<int.>. (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State.
             pre!
         ))))
         (vstd!multiset.impl&%0.subset_of.? $ INT (vstd!multiset.impl&%0.singleton.? $ INT (
            I 11
           )
          ) (vstd!multiset.impl&%0.sub.? $ INT (Poly%vstd!multiset.Multiset<int.>. (test_crate!Y.State./State/mset
             (%Poly%test_crate!Y.State. pre!)
            )
           ) (vstd!multiset.impl&%0.singleton.? $ INT (I 10))
        )))
        (=>
         (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. pre!)) (core!option.Option./Some
           (I 13)
         ))
         (=>
          (vstd!map_lib.impl&%0.submap_of.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT
            (vstd!map.impl&%0.empty.? $ INT $ INT) (I 15) (I 16)
           ) (Poly%vstd!map.Map<int./int.>. (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State.
              pre!
          ))))
          (=>
           (vstd!set.impl&%0.disjoint.? $ INT (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map_lib.impl&%0.remove_keys.?
              $ INT $ INT (Poly%vstd!map.Map<int./int.>. (test_crate!Y.State./State/storage_map (
                 %Poly%test_crate!Y.State. pre!
               ))
              ) (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.?
                 $ INT $ INT
                ) (I 15) (I 16)
             )))
            ) (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.?
               $ INT $ INT
              ) (I 17) (I 18)
           )))
           (and
            (and
             (and
              (and
               (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) (core!option.Option./Some
                 (I 8)
               ))
               (= (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!map.Map<int./int.>.
                 (vstd!map_lib.impl&%0.union_prefer_right.? $ INT $ INT (vstd!map_lib.impl&%0.remove_keys.?
                   $ INT $ INT (Poly%vstd!map.Map<int./int.>. (test_crate!Y.State./State/map (%Poly%test_crate!Y.State.
                      pre!
                    ))
                   ) (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.?
                      $ INT $ INT
                     ) (I 0) (I 1)
                   ))
                  ) (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.? $ INT $ INT) (I
                    4
                   ) (I 5)
              )))))
              (= (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!multiset.Multiset<int.>.
                (vstd!multiset.impl&%0.add.? $ INT (vstd!multiset.impl&%0.sub.? $ INT (Poly%vstd!multiset.Multiset<int.>.
                   (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. pre!))
                  ) (vstd!multiset.impl&%0.singleton.? $ INT (I 10))
                 ) (vstd!multiset.impl&%0.singleton.? $ INT (I 12))
             ))))
             (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) (core!option.Option./Some
               (I 14)
            )))
            (= (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!map.Map<int./int.>.
              (vstd!map_lib.impl&%0.union_prefer_right.? $ INT $ INT (vstd!map_lib.impl&%0.remove_keys.?
                $ INT $ INT (Poly%vstd!map.Map<int./int.>. (test_crate!Y.State./State/storage_map (
                   %Poly%test_crate!Y.State. pre!
                 ))
                ) (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.?
                   $ INT $ INT
                  ) (I 15) (I 16)
                ))
               ) (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.? $ INT $ INT) (I
                 17
                ) (I 18)
    ))))))))))))
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
                 (vstd!map_lib.impl&%0.submap_of.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT
                   (vstd!map.impl&%0.empty.? $ INT $ INT) (I 0) (I 1)
                  ) (Poly%vstd!map.Map<int./int.>. (test_crate!Y.State./State/map (%Poly%test_crate!Y.State.
                     pre!
                )))))
                (vstd!map_lib.impl&%0.submap_of.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT
                  (vstd!map.impl&%0.empty.? $ INT $ INT) (I 2) (I 3)
                 ) (vstd!map_lib.impl&%0.remove_keys.? $ INT $ INT (Poly%vstd!map.Map<int./int.>. (test_crate!Y.State./State/map
                    (%Poly%test_crate!Y.State. pre!)
                   )
                  ) (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.?
                     $ INT $ INT
                    ) (I 0) (I 1)
               )))))
               (vstd!set.impl&%0.disjoint.? $ INT (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map_lib.impl&%0.remove_keys.?
                  $ INT $ INT (Poly%vstd!map.Map<int./int.>. (test_crate!Y.State./State/map (%Poly%test_crate!Y.State.
                     pre!
                   ))
                  ) (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.?
                     $ INT $ INT
                    ) (I 0) (I 1)
                 )))
                ) (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.?
                   $ INT $ INT
                  ) (I 4) (I 5)
              ))))
              (= (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!map.Map<int./int.>.
                (vstd!map_lib.impl&%0.union_prefer_right.? $ INT $ INT (vstd!map_lib.impl&%0.remove_keys.?
                  $ INT $ INT (Poly%vstd!map.Map<int./int.>. (test_crate!Y.State./State/map (%Poly%test_crate!Y.State.
                     pre!
                   ))
                  ) (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.?
                     $ INT $ INT
                    ) (I 0) (I 1)
                  ))
                 ) (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.? $ INT $ INT) (I
                   4
                  ) (I 5)
             )))))
             (vstd!multiset.impl&%0.subset_of.? $ INT (vstd!multiset.impl&%0.singleton.? $ INT (
                I 10
               )
              ) (Poly%vstd!multiset.Multiset<int.>. (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State.
                 pre!
            )))))
            (vstd!multiset.impl&%0.subset_of.? $ INT (vstd!multiset.impl&%0.singleton.? $ INT (
               I 11
              )
             ) (vstd!multiset.impl&%0.sub.? $ INT (Poly%vstd!multiset.Multiset<int.>. (test_crate!Y.State./State/mset
                (%Poly%test_crate!Y.State. pre!)
               )
              ) (vstd!multiset.impl&%0.singleton.? $ INT (I 10))
           )))
           (= (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!multiset.Multiset<int.>.
             (vstd!multiset.impl&%0.add.? $ INT (vstd!multiset.impl&%0.sub.? $ INT (Poly%vstd!multiset.Multiset<int.>.
                (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. pre!))
               ) (vstd!multiset.impl&%0.singleton.? $ INT (I 10))
              ) (vstd!multiset.impl&%0.singleton.? $ INT (I 12))
          ))))
          (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. pre!)) (core!option.Option./Some
            (I 13)
         )))
         (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) (core!option.Option./Some
           (I 14)
        )))
        (vstd!map_lib.impl&%0.submap_of.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT
          (vstd!map.impl&%0.empty.? $ INT $ INT) (I 15) (I 16)
         ) (Poly%vstd!map.Map<int./int.>. (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State.
            pre!
       )))))
       (vstd!set.impl&%0.disjoint.? $ INT (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map_lib.impl&%0.remove_keys.?
          $ INT $ INT (Poly%vstd!map.Map<int./int.>. (test_crate!Y.State./State/storage_map (
             %Poly%test_crate!Y.State. pre!
           ))
          ) (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.?
             $ INT $ INT
            ) (I 15) (I 16)
         )))
        ) (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.?
           $ INT $ INT
          ) (I 17) (I 18)
      ))))
      (= (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!map.Map<int./int.>.
        (vstd!map_lib.impl&%0.union_prefer_right.? $ INT $ INT (vstd!map_lib.impl&%0.remove_keys.?
          $ INT $ INT (Poly%vstd!map.Map<int./int.>. (test_crate!Y.State./State/storage_map (
             %Poly%test_crate!Y.State. pre!
           ))
          ) (vstd!map.impl&%0.dom.? $ INT $ INT (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.?
             $ INT $ INT
            ) (I 15) (I 16)
          ))
         ) (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.? $ INT $ INT) (I
           17
          ) (I 18)
    ))))))
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
             (vstd!map_lib.impl&%0.union_prefer_right.? $ INT $ INT (Poly%vstd!map.Map<int./int.>.
               (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. pre!))
              ) (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.? $ INT $ INT) (I
                4
               ) (I 5)
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
            (vstd!map_lib.impl&%0.union_prefer_right.? $ INT $ INT (Poly%vstd!map.Map<int./int.>.
              (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. pre!))
             ) (vstd!map.impl&%0.insert.? $ INT $ INT (vstd!map.impl&%0.empty.? $ INT $ INT) (I
               4
              ) (I 5)
         )))))
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
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special_general/test.rs:219:7: 219:52 (#0)
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
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special_general/test.rs:224:7: 224:48 (#0)
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
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special_general/test.rs:229:7: 229:59 (#0)
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
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special_general/test.rs:234:7: 234:55 (#0)
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
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special_general/test.rs:239:7: 239:52 (#0)
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
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special_general/test.rs:244:7: 244:48 (#0)
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
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special_general/test.rs:249:7: 249:59 (#0)
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
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special_general/test.rs:254:7: 254:55 (#0)
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
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special_general/test.rs:259:7: 259:52 (#0)
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
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special_general/test.rs:264:7: 264:48 (#0)
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
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special_general/test.rs:269:7: 269:59 (#0)
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
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special_general/test.rs:274:7: 274:55 (#0)
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
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special_general/test.rs:279:7: 279:52 (#0)
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
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special_general/test.rs:284:7: 284:48 (#0)
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
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special_general/test.rs:289:7: 289:59 (#0)
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
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special_general/test.rs:294:7: 294:55 (#0)
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
