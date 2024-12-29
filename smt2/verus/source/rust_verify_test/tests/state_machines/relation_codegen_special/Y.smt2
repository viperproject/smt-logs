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

;; MODULE 'module Y'

;; Fuel
(declare-const fuel%vstd!std_specs.option.impl&%0.is_Some. FuelId)
(declare-const fuel%vstd!std_specs.option.impl&%0.get_Some_0. FuelId)
(declare-const fuel%vstd!std_specs.option.impl&%0.is_None. FuelId)
(declare-const fuel%vstd!std_specs.option.is_some. FuelId)
(declare-const fuel%vstd!std_specs.option.is_none. FuelId)
(declare-const fuel%vstd!std_specs.option.spec_unwrap. FuelId)
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
(declare-const fuel%test_crate!Y.impl&%0.arrow_0. FuelId)
(declare-const fuel%test_crate!Y.impl&%0.arrow_dummy_to_use_type_params_0. FuelId)
(declare-const fuel%test_crate!Y.impl&%1.is_tr1. FuelId)
(declare-const fuel%test_crate!Y.impl&%1.is_tr2. FuelId)
(declare-const fuel%test_crate!Y.impl&%1.is_tr3. FuelId)
(declare-const fuel%test_crate!Y.impl&%1.is_tr4. FuelId)
(declare-const fuel%test_crate!Y.impl&%1.is_dummy_to_use_type_params. FuelId)
(declare-const fuel%test_crate!Y.impl&%1.get_dummy_to_use_type_params_0. FuelId)
(declare-const fuel%test_crate!Y.impl&%2.arrow_0. FuelId)
(declare-const fuel%test_crate!Y.impl&%2.arrow_dummy_to_use_type_params_0. FuelId)
(declare-const fuel%test_crate!Y.impl&%3.is_dummy_to_use_type_params. FuelId)
(declare-const fuel%test_crate!Y.impl&%3.get_dummy_to_use_type_params_0. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr1. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr1_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr1_enabled. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr2. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr2_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr2_enabled. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr3. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr3_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr3_enabled. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr4. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr4_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.tr4_enabled. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.next_by. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.next. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.next_strong_by. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.next_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.init_by. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.init. FuelId)
(declare-const fuel%test_crate!Y.impl&%15.invariant. FuelId)
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
  fuel%vstd!std_specs.option.impl&%0.is_None. fuel%vstd!std_specs.option.is_some. fuel%vstd!std_specs.option.is_none.
  fuel%vstd!std_specs.option.spec_unwrap. fuel%vstd!map.impl&%0.spec_index. fuel%vstd!map.axiom_map_index_decreases_finite.
  fuel%vstd!map.axiom_map_index_decreases_infinite. fuel%vstd!map.axiom_map_insert_domain.
  fuel%vstd!map.axiom_map_insert_same. fuel%vstd!map.axiom_map_insert_different. fuel%vstd!map.axiom_map_remove_domain.
  fuel%vstd!map.axiom_map_remove_different. fuel%vstd!map.axiom_map_ext_equal. fuel%vstd!map.axiom_map_ext_equal_deep.
  fuel%vstd!map_lib.impl&%0.contains_pair. fuel%vstd!multiset.impl&%0.insert. fuel%vstd!multiset.impl&%0.remove.
  fuel%vstd!multiset.axiom_multiset_singleton. fuel%vstd!multiset.axiom_multiset_singleton_different.
  fuel%vstd!multiset.axiom_multiset_add. fuel%vstd!multiset.axiom_multiset_sub. fuel%vstd!multiset.axiom_multiset_ext_equal.
  fuel%vstd!multiset.axiom_multiset_ext_equal_deep. fuel%vstd!set.axiom_set_insert_same.
  fuel%vstd!set.axiom_set_insert_different. fuel%vstd!set.axiom_set_remove_same. fuel%vstd!set.axiom_set_remove_insert.
  fuel%vstd!set.axiom_set_remove_different. fuel%vstd!set.axiom_set_ext_equal. fuel%vstd!set.axiom_set_ext_equal_deep.
  fuel%vstd!set.axiom_set_insert_finite. fuel%vstd!set.axiom_set_remove_finite. fuel%test_crate!Y.impl&%0.arrow_0.
  fuel%test_crate!Y.impl&%0.arrow_dummy_to_use_type_params_0. fuel%test_crate!Y.impl&%1.is_tr1.
  fuel%test_crate!Y.impl&%1.is_tr2. fuel%test_crate!Y.impl&%1.is_tr3. fuel%test_crate!Y.impl&%1.is_tr4.
  fuel%test_crate!Y.impl&%1.is_dummy_to_use_type_params. fuel%test_crate!Y.impl&%1.get_dummy_to_use_type_params_0.
  fuel%test_crate!Y.impl&%2.arrow_0. fuel%test_crate!Y.impl&%2.arrow_dummy_to_use_type_params_0.
  fuel%test_crate!Y.impl&%3.is_dummy_to_use_type_params. fuel%test_crate!Y.impl&%3.get_dummy_to_use_type_params_0.
  fuel%test_crate!Y.impl&%15.tr1. fuel%test_crate!Y.impl&%15.tr1_strong. fuel%test_crate!Y.impl&%15.tr1_enabled.
  fuel%test_crate!Y.impl&%15.tr2. fuel%test_crate!Y.impl&%15.tr2_strong. fuel%test_crate!Y.impl&%15.tr2_enabled.
  fuel%test_crate!Y.impl&%15.tr3. fuel%test_crate!Y.impl&%15.tr3_strong. fuel%test_crate!Y.impl&%15.tr3_enabled.
  fuel%test_crate!Y.impl&%15.tr4. fuel%test_crate!Y.impl&%15.tr4_strong. fuel%test_crate!Y.impl&%15.tr4_enabled.
  fuel%test_crate!Y.impl&%15.next_by. fuel%test_crate!Y.impl&%15.next. fuel%test_crate!Y.impl&%15.next_strong_by.
  fuel%test_crate!Y.impl&%15.next_strong. fuel%test_crate!Y.impl&%15.init_by. fuel%test_crate!Y.impl&%15.init.
  fuel%test_crate!Y.impl&%15.invariant. fuel%vstd!array.group_array_axioms. fuel%vstd!map.group_map_axioms.
  fuel%vstd!multiset.group_multiset_axioms. fuel%vstd!raw_ptr.group_raw_ptr_axioms.
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
(declare-sort vstd!state_machine_internal.NoCopy. 0)
(declare-sort vstd!state_machine_internal.SyncSendIfSyncSend<tuple%2<int./int.>.>.
 0
)
(declare-datatypes ((core!option.Option. 0) (vstd!tokens.InstanceId. 0) (test_crate!Y.State.
   0
  ) (test_crate!Y.Step. 0) (test_crate!Y.Config. 0) (test_crate!Y.Instance. 0) (test_crate!Y.opt.
   0
  ) (test_crate!Y.map. 0) (test_crate!Y.mset. 0) (tuple%0. 0) (tuple%1. 0) (tuple%2.
   0
  ) (tuple%5. 0)
 ) (((core!option.Option./None) (core!option.Option./Some (core!option.Option./Some/?0
     Poly
   ))
  ) ((vstd!tokens.InstanceId./InstanceId (vstd!tokens.InstanceId./InstanceId/?0 Int)))
  ((test_crate!Y.State./State (test_crate!Y.State./State/?opt core!option.Option.) (test_crate!Y.State./State/?map
     vstd!map.Map<int./int.>.
    ) (test_crate!Y.State./State/?mset vstd!multiset.Multiset<int.>.) (test_crate!Y.State./State/?storage_opt
     core!option.Option.
    ) (test_crate!Y.State./State/?storage_map vstd!map.Map<int./int.>.)
   )
  ) ((test_crate!Y.Step./tr1) (test_crate!Y.Step./tr2) (test_crate!Y.Step./tr3) (test_crate!Y.Step./tr4)
   (test_crate!Y.Step./dummy_to_use_type_params (test_crate!Y.Step./dummy_to_use_type_params/?0
     test_crate!Y.State.
   ))
  ) ((test_crate!Y.Config./dummy_to_use_type_params (test_crate!Y.Config./dummy_to_use_type_params/?0
     test_crate!Y.State.
   ))
  ) ((test_crate!Y.Instance./Instance (test_crate!Y.Instance./Instance/?send_sync vstd!state_machine_internal.SyncSendIfSyncSend<tuple%2<int./int.>.>.)
    (test_crate!Y.Instance./Instance/?state core!option.Option.) (test_crate!Y.Instance./Instance/?location
     Int
   ))
  ) ((test_crate!Y.opt./opt (test_crate!Y.opt./opt/?dummy_instance test_crate!Y.Instance.)
    (test_crate!Y.opt./opt/?no_copy vstd!state_machine_internal.NoCopy.)
   )
  ) ((test_crate!Y.map./map (test_crate!Y.map./map/?dummy_instance test_crate!Y.Instance.)
    (test_crate!Y.map./map/?no_copy vstd!state_machine_internal.NoCopy.)
   )
  ) ((test_crate!Y.mset./mset (test_crate!Y.mset./mset/?dummy_instance test_crate!Y.Instance.)
    (test_crate!Y.mset./mset/?no_copy vstd!state_machine_internal.NoCopy.)
   )
  ) ((tuple%0./tuple%0)) ((tuple%1./tuple%1 (tuple%1./tuple%1/?0 Poly))) ((tuple%2./tuple%2
    (tuple%2./tuple%2/?0 Poly) (tuple%2./tuple%2/?1 Poly)
   )
  ) ((tuple%5./tuple%5 (tuple%5./tuple%5/?0 Poly) (tuple%5./tuple%5/?1 Poly) (tuple%5./tuple%5/?2
     Poly
    ) (tuple%5./tuple%5/?3 Poly) (tuple%5./tuple%5/?4 Poly)
))))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun vstd!tokens.InstanceId./InstanceId/0 (vstd!tokens.InstanceId.) Int)
(declare-fun test_crate!Y.State./State/opt (test_crate!Y.State.) core!option.Option.)
(declare-fun test_crate!Y.State./State/map (test_crate!Y.State.) vstd!map.Map<int./int.>.)
(declare-fun test_crate!Y.State./State/mset (test_crate!Y.State.) vstd!multiset.Multiset<int.>.)
(declare-fun test_crate!Y.State./State/storage_opt (test_crate!Y.State.) core!option.Option.)
(declare-fun test_crate!Y.State./State/storage_map (test_crate!Y.State.) vstd!map.Map<int./int.>.)
(declare-fun test_crate!Y.Step./dummy_to_use_type_params/0 (test_crate!Y.Step.) test_crate!Y.State.)
(declare-fun test_crate!Y.Config./dummy_to_use_type_params/0 (test_crate!Y.Config.)
 test_crate!Y.State.
)
(declare-fun test_crate!Y.Instance./Instance/send_sync (test_crate!Y.Instance.) vstd!state_machine_internal.SyncSendIfSyncSend<tuple%2<int./int.>.>.)
(declare-fun test_crate!Y.Instance./Instance/state (test_crate!Y.Instance.) core!option.Option.)
(declare-fun test_crate!Y.Instance./Instance/location (test_crate!Y.Instance.) Int)
(declare-fun test_crate!Y.opt./opt/dummy_instance (test_crate!Y.opt.) test_crate!Y.Instance.)
(declare-fun test_crate!Y.opt./opt/no_copy (test_crate!Y.opt.) vstd!state_machine_internal.NoCopy.)
(declare-fun test_crate!Y.map./map/dummy_instance (test_crate!Y.map.) test_crate!Y.Instance.)
(declare-fun test_crate!Y.map./map/no_copy (test_crate!Y.map.) vstd!state_machine_internal.NoCopy.)
(declare-fun test_crate!Y.mset./mset/dummy_instance (test_crate!Y.mset.) test_crate!Y.Instance.)
(declare-fun test_crate!Y.mset./mset/no_copy (test_crate!Y.mset.) vstd!state_machine_internal.NoCopy.)
(declare-fun tuple%1./tuple%1/0 (tuple%1.) Poly)
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-fun tuple%5./tuple%5/0 (tuple%5.) Poly)
(declare-fun tuple%5./tuple%5/1 (tuple%5.) Poly)
(declare-fun tuple%5./tuple%5/2 (tuple%5.) Poly)
(declare-fun tuple%5./tuple%5/3 (tuple%5.) Poly)
(declare-fun tuple%5./tuple%5/4 (tuple%5.) Poly)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-fun TYPE%vstd!map.Map. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd!multiset.Multiset. (Dcr Type) Type)
(declare-fun TYPE%vstd!set.Set. (Dcr Type) Type)
(declare-fun TYPE%vstd!state_machine_internal.SyncSendIfSyncSend. (Dcr Type) Type)
(declare-const TYPE%vstd!state_machine_internal.NoCopy. Type)
(declare-const TYPE%vstd!tokens.InstanceId. Type)
(declare-const TYPE%test_crate!Y.State. Type)
(declare-const TYPE%test_crate!Y.Step. Type)
(declare-const TYPE%test_crate!Y.Config. Type)
(declare-const TYPE%test_crate!Y.Instance. Type)
(declare-const TYPE%test_crate!Y.opt. Type)
(declare-const TYPE%test_crate!Y.map. Type)
(declare-const TYPE%test_crate!Y.mset. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%1. (Dcr Type) Type)
(declare-fun TYPE%tuple%2. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%tuple%5. (Dcr Type Dcr Type Dcr Type Dcr Type Dcr Type) Type)
(declare-fun FNDEF%core!clone.Clone.clone. (Dcr Type) Type)
(declare-fun Poly%vstd!map.Map<int./int.>. (vstd!map.Map<int./int.>.) Poly)
(declare-fun %Poly%vstd!map.Map<int./int.>. (Poly) vstd!map.Map<int./int.>.)
(declare-fun Poly%vstd!multiset.Multiset<int.>. (vstd!multiset.Multiset<int.>.) Poly)
(declare-fun %Poly%vstd!multiset.Multiset<int.>. (Poly) vstd!multiset.Multiset<int.>.)
(declare-fun Poly%vstd!set.Set<int.>. (vstd!set.Set<int.>.) Poly)
(declare-fun %Poly%vstd!set.Set<int.>. (Poly) vstd!set.Set<int.>.)
(declare-fun Poly%vstd!state_machine_internal.NoCopy. (vstd!state_machine_internal.NoCopy.)
 Poly
)
(declare-fun %Poly%vstd!state_machine_internal.NoCopy. (Poly) vstd!state_machine_internal.NoCopy.)
(declare-fun Poly%vstd!state_machine_internal.SyncSendIfSyncSend<tuple%2<int./int.>.>.
 (vstd!state_machine_internal.SyncSendIfSyncSend<tuple%2<int./int.>.>.) Poly
)
(declare-fun %Poly%vstd!state_machine_internal.SyncSendIfSyncSend<tuple%2<int./int.>.>.
 (Poly) vstd!state_machine_internal.SyncSendIfSyncSend<tuple%2<int./int.>.>.
)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
(declare-fun Poly%vstd!tokens.InstanceId. (vstd!tokens.InstanceId.) Poly)
(declare-fun %Poly%vstd!tokens.InstanceId. (Poly) vstd!tokens.InstanceId.)
(declare-fun Poly%test_crate!Y.State. (test_crate!Y.State.) Poly)
(declare-fun %Poly%test_crate!Y.State. (Poly) test_crate!Y.State.)
(declare-fun Poly%test_crate!Y.Step. (test_crate!Y.Step.) Poly)
(declare-fun %Poly%test_crate!Y.Step. (Poly) test_crate!Y.Step.)
(declare-fun Poly%test_crate!Y.Config. (test_crate!Y.Config.) Poly)
(declare-fun %Poly%test_crate!Y.Config. (Poly) test_crate!Y.Config.)
(declare-fun Poly%test_crate!Y.Instance. (test_crate!Y.Instance.) Poly)
(declare-fun %Poly%test_crate!Y.Instance. (Poly) test_crate!Y.Instance.)
(declare-fun Poly%test_crate!Y.opt. (test_crate!Y.opt.) Poly)
(declare-fun %Poly%test_crate!Y.opt. (Poly) test_crate!Y.opt.)
(declare-fun Poly%test_crate!Y.map. (test_crate!Y.map.) Poly)
(declare-fun %Poly%test_crate!Y.map. (Poly) test_crate!Y.map.)
(declare-fun Poly%test_crate!Y.mset. (test_crate!Y.mset.) Poly)
(declare-fun %Poly%test_crate!Y.mset. (Poly) test_crate!Y.mset.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%1. (tuple%1.) Poly)
(declare-fun %Poly%tuple%1. (Poly) tuple%1.)
(declare-fun Poly%tuple%2. (tuple%2.) Poly)
(declare-fun %Poly%tuple%2. (Poly) tuple%2.)
(declare-fun Poly%tuple%5. (tuple%5.) Poly)
(declare-fun %Poly%tuple%5. (Poly) tuple%5.)
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
 (forall ((x vstd!state_machine_internal.NoCopy.)) (!
   (= x (%Poly%vstd!state_machine_internal.NoCopy. (Poly%vstd!state_machine_internal.NoCopy.
      x
   )))
   :pattern ((Poly%vstd!state_machine_internal.NoCopy. x))
   :qid internal_vstd__state_machine_internal__NoCopy_box_axiom_definition
   :skolemid skolem_internal_vstd__state_machine_internal__NoCopy_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd!state_machine_internal.NoCopy.)
    (= x (Poly%vstd!state_machine_internal.NoCopy. (%Poly%vstd!state_machine_internal.NoCopy.
       x
   ))))
   :pattern ((has_type x TYPE%vstd!state_machine_internal.NoCopy.))
   :qid internal_vstd__state_machine_internal__NoCopy_unbox_axiom_definition
   :skolemid skolem_internal_vstd__state_machine_internal__NoCopy_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!state_machine_internal.NoCopy.)) (!
   (has_type (Poly%vstd!state_machine_internal.NoCopy. x) TYPE%vstd!state_machine_internal.NoCopy.)
   :pattern ((has_type (Poly%vstd!state_machine_internal.NoCopy. x) TYPE%vstd!state_machine_internal.NoCopy.))
   :qid internal_vstd__state_machine_internal__NoCopy_has_type_always_definition
   :skolemid skolem_internal_vstd__state_machine_internal__NoCopy_has_type_always_definition
)))
(assert
 (forall ((x vstd!state_machine_internal.SyncSendIfSyncSend<tuple%2<int./int.>.>.))
  (!
   (= x (%Poly%vstd!state_machine_internal.SyncSendIfSyncSend<tuple%2<int./int.>.>. (Poly%vstd!state_machine_internal.SyncSendIfSyncSend<tuple%2<int./int.>.>.
      x
   )))
   :pattern ((Poly%vstd!state_machine_internal.SyncSendIfSyncSend<tuple%2<int./int.>.>.
     x
   ))
   :qid internal_vstd__state_machine_internal__SyncSendIfSyncSend<tuple__2<int./int.>.>_box_axiom_definition
   :skolemid skolem_internal_vstd__state_machine_internal__SyncSendIfSyncSend<tuple__2<int./int.>.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!state_machine_internal.SyncSendIfSyncSend. $ (TYPE%tuple%2. $
       INT $ INT
    )))
    (= x (Poly%vstd!state_machine_internal.SyncSendIfSyncSend<tuple%2<int./int.>.>. (%Poly%vstd!state_machine_internal.SyncSendIfSyncSend<tuple%2<int./int.>.>.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd!state_machine_internal.SyncSendIfSyncSend. $ (TYPE%tuple%2.
       $ INT $ INT
   ))))
   :qid internal_vstd__state_machine_internal__SyncSendIfSyncSend<tuple__2<int./int.>.>_unbox_axiom_definition
   :skolemid skolem_internal_vstd__state_machine_internal__SyncSendIfSyncSend<tuple__2<int./int.>.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!state_machine_internal.SyncSendIfSyncSend<tuple%2<int./int.>.>.))
  (!
   (has_type (Poly%vstd!state_machine_internal.SyncSendIfSyncSend<tuple%2<int./int.>.>.
     x
    ) (TYPE%vstd!state_machine_internal.SyncSendIfSyncSend. $ (TYPE%tuple%2. $ INT $ INT))
   )
   :pattern ((has_type (Poly%vstd!state_machine_internal.SyncSendIfSyncSend<tuple%2<int./int.>.>.
      x
     ) (TYPE%vstd!state_machine_internal.SyncSendIfSyncSend. $ (TYPE%tuple%2. $ INT $ INT))
   ))
   :qid internal_vstd__state_machine_internal__SyncSendIfSyncSend<tuple__2<int./int.>.>_has_type_always_definition
   :skolemid skolem_internal_vstd__state_machine_internal__SyncSendIfSyncSend<tuple__2<int./int.>.>_has_type_always_definition
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
 (forall ((x test_crate!Y.Step.)) (!
   (= x (%Poly%test_crate!Y.Step. (Poly%test_crate!Y.Step. x)))
   :pattern ((Poly%test_crate!Y.Step. x))
   :qid internal_test_crate__Y__Step_box_axiom_definition
   :skolemid skolem_internal_test_crate__Y__Step_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.Step.)
    (= x (Poly%test_crate!Y.Step. (%Poly%test_crate!Y.Step. x)))
   )
   :pattern ((has_type x TYPE%test_crate!Y.Step.))
   :qid internal_test_crate__Y__Step_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__Y__Step_unbox_axiom_definition
)))
(assert
 (has_type (Poly%test_crate!Y.Step. test_crate!Y.Step./tr1) TYPE%test_crate!Y.Step.)
)
(assert
 (has_type (Poly%test_crate!Y.Step. test_crate!Y.Step./tr2) TYPE%test_crate!Y.Step.)
)
(assert
 (has_type (Poly%test_crate!Y.Step. test_crate!Y.Step./tr3) TYPE%test_crate!Y.Step.)
)
(assert
 (has_type (Poly%test_crate!Y.Step. test_crate!Y.Step./tr4) TYPE%test_crate!Y.Step.)
)
(assert
 (forall ((_0! test_crate!Y.State.)) (!
   (=>
    (has_type (Poly%test_crate!Y.State. _0!) TYPE%test_crate!Y.State.)
    (has_type (Poly%test_crate!Y.Step. (test_crate!Y.Step./dummy_to_use_type_params _0!))
     TYPE%test_crate!Y.Step.
   ))
   :pattern ((has_type (Poly%test_crate!Y.Step. (test_crate!Y.Step./dummy_to_use_type_params
       _0!
      )
     ) TYPE%test_crate!Y.Step.
   ))
   :qid internal_test_crate!Y.Step./dummy_to_use_type_params_constructor_definition
   :skolemid skolem_internal_test_crate!Y.Step./dummy_to_use_type_params_constructor_definition
)))
(assert
 (forall ((x test_crate!Y.Step.)) (!
   (= (test_crate!Y.Step./dummy_to_use_type_params/0 x) (test_crate!Y.Step./dummy_to_use_type_params/?0
     x
   ))
   :pattern ((test_crate!Y.Step./dummy_to_use_type_params/0 x))
   :qid internal_test_crate!Y.Step./dummy_to_use_type_params/0_accessor_definition
   :skolemid skolem_internal_test_crate!Y.Step./dummy_to_use_type_params/0_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.Step.)
    (has_type (Poly%test_crate!Y.State. (test_crate!Y.Step./dummy_to_use_type_params/0 (
        %Poly%test_crate!Y.Step. x
      ))
     ) TYPE%test_crate!Y.State.
   ))
   :pattern ((test_crate!Y.Step./dummy_to_use_type_params/0 (%Poly%test_crate!Y.Step. x))
    (has_type x TYPE%test_crate!Y.Step.)
   )
   :qid internal_test_crate!Y.Step./dummy_to_use_type_params/0_invariant_definition
   :skolemid skolem_internal_test_crate!Y.Step./dummy_to_use_type_params/0_invariant_definition
)))
(assert
 (forall ((x test_crate!Y.Config.)) (!
   (= x (%Poly%test_crate!Y.Config. (Poly%test_crate!Y.Config. x)))
   :pattern ((Poly%test_crate!Y.Config. x))
   :qid internal_test_crate__Y__Config_box_axiom_definition
   :skolemid skolem_internal_test_crate__Y__Config_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.Config.)
    (= x (Poly%test_crate!Y.Config. (%Poly%test_crate!Y.Config. x)))
   )
   :pattern ((has_type x TYPE%test_crate!Y.Config.))
   :qid internal_test_crate__Y__Config_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__Y__Config_unbox_axiom_definition
)))
(assert
 (forall ((_0! test_crate!Y.State.)) (!
   (=>
    (has_type (Poly%test_crate!Y.State. _0!) TYPE%test_crate!Y.State.)
    (has_type (Poly%test_crate!Y.Config. (test_crate!Y.Config./dummy_to_use_type_params
       _0!
      )
     ) TYPE%test_crate!Y.Config.
   ))
   :pattern ((has_type (Poly%test_crate!Y.Config. (test_crate!Y.Config./dummy_to_use_type_params
       _0!
      )
     ) TYPE%test_crate!Y.Config.
   ))
   :qid internal_test_crate!Y.Config./dummy_to_use_type_params_constructor_definition
   :skolemid skolem_internal_test_crate!Y.Config./dummy_to_use_type_params_constructor_definition
)))
(assert
 (forall ((x test_crate!Y.Config.)) (!
   (= (test_crate!Y.Config./dummy_to_use_type_params/0 x) (test_crate!Y.Config./dummy_to_use_type_params/?0
     x
   ))
   :pattern ((test_crate!Y.Config./dummy_to_use_type_params/0 x))
   :qid internal_test_crate!Y.Config./dummy_to_use_type_params/0_accessor_definition
   :skolemid skolem_internal_test_crate!Y.Config./dummy_to_use_type_params/0_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.Config.)
    (has_type (Poly%test_crate!Y.State. (test_crate!Y.Config./dummy_to_use_type_params/0
       (%Poly%test_crate!Y.Config. x)
      )
     ) TYPE%test_crate!Y.State.
   ))
   :pattern ((test_crate!Y.Config./dummy_to_use_type_params/0 (%Poly%test_crate!Y.Config.
      x
     )
    ) (has_type x TYPE%test_crate!Y.Config.)
   )
   :qid internal_test_crate!Y.Config./dummy_to_use_type_params/0_invariant_definition
   :skolemid skolem_internal_test_crate!Y.Config./dummy_to_use_type_params/0_invariant_definition
)))
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
 (forall ((_send_sync! vstd!state_machine_internal.SyncSendIfSyncSend<tuple%2<int./int.>.>.)
   (_state! core!option.Option.) (_location! Int)
  ) (!
   (=>
    (has_type (Poly%core!option.Option. _state!) (TYPE%core!option.Option. (GHOST $) TYPE%test_crate!Y.State.))
    (has_type (Poly%test_crate!Y.Instance. (test_crate!Y.Instance./Instance _send_sync!
       _state! _location!
      )
     ) TYPE%test_crate!Y.Instance.
   ))
   :pattern ((has_type (Poly%test_crate!Y.Instance. (test_crate!Y.Instance./Instance _send_sync!
       _state! _location!
      )
     ) TYPE%test_crate!Y.Instance.
   ))
   :qid internal_test_crate!Y.Instance./Instance_constructor_definition
   :skolemid skolem_internal_test_crate!Y.Instance./Instance_constructor_definition
)))
(assert
 (forall ((x test_crate!Y.Instance.)) (!
   (= (test_crate!Y.Instance./Instance/send_sync x) (test_crate!Y.Instance./Instance/?send_sync
     x
   ))
   :pattern ((test_crate!Y.Instance./Instance/send_sync x))
   :qid internal_test_crate!Y.Instance./Instance/send_sync_accessor_definition
   :skolemid skolem_internal_test_crate!Y.Instance./Instance/send_sync_accessor_definition
)))
(assert
 (forall ((x test_crate!Y.Instance.)) (!
   (= (test_crate!Y.Instance./Instance/state x) (test_crate!Y.Instance./Instance/?state
     x
   ))
   :pattern ((test_crate!Y.Instance./Instance/state x))
   :qid internal_test_crate!Y.Instance./Instance/state_accessor_definition
   :skolemid skolem_internal_test_crate!Y.Instance./Instance/state_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.Instance.)
    (has_type (Poly%core!option.Option. (test_crate!Y.Instance./Instance/state (%Poly%test_crate!Y.Instance.
        x
      ))
     ) (TYPE%core!option.Option. (GHOST $) TYPE%test_crate!Y.State.)
   ))
   :pattern ((test_crate!Y.Instance./Instance/state (%Poly%test_crate!Y.Instance. x))
    (has_type x TYPE%test_crate!Y.Instance.)
   )
   :qid internal_test_crate!Y.Instance./Instance/state_invariant_definition
   :skolemid skolem_internal_test_crate!Y.Instance./Instance/state_invariant_definition
)))
(assert
 (forall ((x test_crate!Y.Instance.)) (!
   (= (test_crate!Y.Instance./Instance/location x) (test_crate!Y.Instance./Instance/?location
     x
   ))
   :pattern ((test_crate!Y.Instance./Instance/location x))
   :qid internal_test_crate!Y.Instance./Instance/location_accessor_definition
   :skolemid skolem_internal_test_crate!Y.Instance./Instance/location_accessor_definition
)))
(assert
 (forall ((x test_crate!Y.opt.)) (!
   (= x (%Poly%test_crate!Y.opt. (Poly%test_crate!Y.opt. x)))
   :pattern ((Poly%test_crate!Y.opt. x))
   :qid internal_test_crate__Y__opt_box_axiom_definition
   :skolemid skolem_internal_test_crate__Y__opt_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.opt.)
    (= x (Poly%test_crate!Y.opt. (%Poly%test_crate!Y.opt. x)))
   )
   :pattern ((has_type x TYPE%test_crate!Y.opt.))
   :qid internal_test_crate__Y__opt_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__Y__opt_unbox_axiom_definition
)))
(assert
 (forall ((_dummy_instance! test_crate!Y.Instance.) (_no_copy! vstd!state_machine_internal.NoCopy.))
  (!
   (=>
    (has_type (Poly%test_crate!Y.Instance. _dummy_instance!) TYPE%test_crate!Y.Instance.)
    (has_type (Poly%test_crate!Y.opt. (test_crate!Y.opt./opt _dummy_instance! _no_copy!))
     TYPE%test_crate!Y.opt.
   ))
   :pattern ((has_type (Poly%test_crate!Y.opt. (test_crate!Y.opt./opt _dummy_instance! _no_copy!))
     TYPE%test_crate!Y.opt.
   ))
   :qid internal_test_crate!Y.opt./opt_constructor_definition
   :skolemid skolem_internal_test_crate!Y.opt./opt_constructor_definition
)))
(assert
 (forall ((x test_crate!Y.opt.)) (!
   (= (test_crate!Y.opt./opt/dummy_instance x) (test_crate!Y.opt./opt/?dummy_instance
     x
   ))
   :pattern ((test_crate!Y.opt./opt/dummy_instance x))
   :qid internal_test_crate!Y.opt./opt/dummy_instance_accessor_definition
   :skolemid skolem_internal_test_crate!Y.opt./opt/dummy_instance_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.opt.)
    (has_type (Poly%test_crate!Y.Instance. (test_crate!Y.opt./opt/dummy_instance (%Poly%test_crate!Y.opt.
        x
      ))
     ) TYPE%test_crate!Y.Instance.
   ))
   :pattern ((test_crate!Y.opt./opt/dummy_instance (%Poly%test_crate!Y.opt. x)) (has_type
     x TYPE%test_crate!Y.opt.
   ))
   :qid internal_test_crate!Y.opt./opt/dummy_instance_invariant_definition
   :skolemid skolem_internal_test_crate!Y.opt./opt/dummy_instance_invariant_definition
)))
(assert
 (forall ((x test_crate!Y.opt.)) (!
   (= (test_crate!Y.opt./opt/no_copy x) (test_crate!Y.opt./opt/?no_copy x))
   :pattern ((test_crate!Y.opt./opt/no_copy x))
   :qid internal_test_crate!Y.opt./opt/no_copy_accessor_definition
   :skolemid skolem_internal_test_crate!Y.opt./opt/no_copy_accessor_definition
)))
(assert
 (forall ((x test_crate!Y.map.)) (!
   (= x (%Poly%test_crate!Y.map. (Poly%test_crate!Y.map. x)))
   :pattern ((Poly%test_crate!Y.map. x))
   :qid internal_test_crate__Y__map_box_axiom_definition
   :skolemid skolem_internal_test_crate__Y__map_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.map.)
    (= x (Poly%test_crate!Y.map. (%Poly%test_crate!Y.map. x)))
   )
   :pattern ((has_type x TYPE%test_crate!Y.map.))
   :qid internal_test_crate__Y__map_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__Y__map_unbox_axiom_definition
)))
(assert
 (forall ((_dummy_instance! test_crate!Y.Instance.) (_no_copy! vstd!state_machine_internal.NoCopy.))
  (!
   (=>
    (has_type (Poly%test_crate!Y.Instance. _dummy_instance!) TYPE%test_crate!Y.Instance.)
    (has_type (Poly%test_crate!Y.map. (test_crate!Y.map./map _dummy_instance! _no_copy!))
     TYPE%test_crate!Y.map.
   ))
   :pattern ((has_type (Poly%test_crate!Y.map. (test_crate!Y.map./map _dummy_instance! _no_copy!))
     TYPE%test_crate!Y.map.
   ))
   :qid internal_test_crate!Y.map./map_constructor_definition
   :skolemid skolem_internal_test_crate!Y.map./map_constructor_definition
)))
(assert
 (forall ((x test_crate!Y.map.)) (!
   (= (test_crate!Y.map./map/dummy_instance x) (test_crate!Y.map./map/?dummy_instance
     x
   ))
   :pattern ((test_crate!Y.map./map/dummy_instance x))
   :qid internal_test_crate!Y.map./map/dummy_instance_accessor_definition
   :skolemid skolem_internal_test_crate!Y.map./map/dummy_instance_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.map.)
    (has_type (Poly%test_crate!Y.Instance. (test_crate!Y.map./map/dummy_instance (%Poly%test_crate!Y.map.
        x
      ))
     ) TYPE%test_crate!Y.Instance.
   ))
   :pattern ((test_crate!Y.map./map/dummy_instance (%Poly%test_crate!Y.map. x)) (has_type
     x TYPE%test_crate!Y.map.
   ))
   :qid internal_test_crate!Y.map./map/dummy_instance_invariant_definition
   :skolemid skolem_internal_test_crate!Y.map./map/dummy_instance_invariant_definition
)))
(assert
 (forall ((x test_crate!Y.map.)) (!
   (= (test_crate!Y.map./map/no_copy x) (test_crate!Y.map./map/?no_copy x))
   :pattern ((test_crate!Y.map./map/no_copy x))
   :qid internal_test_crate!Y.map./map/no_copy_accessor_definition
   :skolemid skolem_internal_test_crate!Y.map./map/no_copy_accessor_definition
)))
(assert
 (forall ((x test_crate!Y.mset.)) (!
   (= x (%Poly%test_crate!Y.mset. (Poly%test_crate!Y.mset. x)))
   :pattern ((Poly%test_crate!Y.mset. x))
   :qid internal_test_crate__Y__mset_box_axiom_definition
   :skolemid skolem_internal_test_crate__Y__mset_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.mset.)
    (= x (Poly%test_crate!Y.mset. (%Poly%test_crate!Y.mset. x)))
   )
   :pattern ((has_type x TYPE%test_crate!Y.mset.))
   :qid internal_test_crate__Y__mset_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__Y__mset_unbox_axiom_definition
)))
(assert
 (forall ((_dummy_instance! test_crate!Y.Instance.) (_no_copy! vstd!state_machine_internal.NoCopy.))
  (!
   (=>
    (has_type (Poly%test_crate!Y.Instance. _dummy_instance!) TYPE%test_crate!Y.Instance.)
    (has_type (Poly%test_crate!Y.mset. (test_crate!Y.mset./mset _dummy_instance! _no_copy!))
     TYPE%test_crate!Y.mset.
   ))
   :pattern ((has_type (Poly%test_crate!Y.mset. (test_crate!Y.mset./mset _dummy_instance!
       _no_copy!
      )
     ) TYPE%test_crate!Y.mset.
   ))
   :qid internal_test_crate!Y.mset./mset_constructor_definition
   :skolemid skolem_internal_test_crate!Y.mset./mset_constructor_definition
)))
(assert
 (forall ((x test_crate!Y.mset.)) (!
   (= (test_crate!Y.mset./mset/dummy_instance x) (test_crate!Y.mset./mset/?dummy_instance
     x
   ))
   :pattern ((test_crate!Y.mset./mset/dummy_instance x))
   :qid internal_test_crate!Y.mset./mset/dummy_instance_accessor_definition
   :skolemid skolem_internal_test_crate!Y.mset./mset/dummy_instance_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.mset.)
    (has_type (Poly%test_crate!Y.Instance. (test_crate!Y.mset./mset/dummy_instance (%Poly%test_crate!Y.mset.
        x
      ))
     ) TYPE%test_crate!Y.Instance.
   ))
   :pattern ((test_crate!Y.mset./mset/dummy_instance (%Poly%test_crate!Y.mset. x)) (has_type
     x TYPE%test_crate!Y.mset.
   ))
   :qid internal_test_crate!Y.mset./mset/dummy_instance_invariant_definition
   :skolemid skolem_internal_test_crate!Y.mset./mset/dummy_instance_invariant_definition
)))
(assert
 (forall ((x test_crate!Y.mset.)) (!
   (= (test_crate!Y.mset./mset/no_copy x) (test_crate!Y.mset./mset/?no_copy x))
   :pattern ((test_crate!Y.mset./mset/no_copy x))
   :qid internal_test_crate!Y.mset./mset/no_copy_accessor_definition
   :skolemid skolem_internal_test_crate!Y.mset./mset/no_copy_accessor_definition
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
(assert
 (forall ((x tuple%5.)) (!
   (= x (%Poly%tuple%5. (Poly%tuple%5. x)))
   :pattern ((Poly%tuple%5. x))
   :qid internal_crate__tuple__5_box_axiom_definition
   :skolemid skolem_internal_crate__tuple__5_box_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%5. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&))
    (= x (Poly%tuple%5. (%Poly%tuple%5. x)))
   )
   :pattern ((has_type x (TYPE%tuple%5. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&.
      T%4&
   )))
   :qid internal_crate__tuple__5_unbox_axiom_definition
   :skolemid skolem_internal_crate__tuple__5_unbox_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (_0! Poly) (_1! Poly) (_2! Poly) (_3! Poly)
   (_4! Poly)
  ) (!
   (=>
    (and
     (has_type _0! T%0&)
     (has_type _1! T%1&)
     (has_type _2! T%2&)
     (has_type _3! T%3&)
     (has_type _4! T%4&)
    )
    (has_type (Poly%tuple%5. (tuple%5./tuple%5 _0! _1! _2! _3! _4!)) (TYPE%tuple%5. T%0&.
      T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&
   )))
   :pattern ((has_type (Poly%tuple%5. (tuple%5./tuple%5 _0! _1! _2! _3! _4!)) (TYPE%tuple%5.
      T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&
   )))
   :qid internal_tuple__5./tuple__5_constructor_definition
   :skolemid skolem_internal_tuple__5./tuple__5_constructor_definition
)))
(assert
 (forall ((x tuple%5.)) (!
   (= (tuple%5./tuple%5/0 x) (tuple%5./tuple%5/?0 x))
   :pattern ((tuple%5./tuple%5/0 x))
   :qid internal_tuple__5./tuple__5/0_accessor_definition
   :skolemid skolem_internal_tuple__5./tuple__5/0_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%5. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&))
    (has_type (tuple%5./tuple%5/0 (%Poly%tuple%5. x)) T%0&)
   )
   :pattern ((tuple%5./tuple%5/0 (%Poly%tuple%5. x)) (has_type x (TYPE%tuple%5. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&
   )))
   :qid internal_tuple__5./tuple__5/0_invariant_definition
   :skolemid skolem_internal_tuple__5./tuple__5/0_invariant_definition
)))
(assert
 (forall ((x tuple%5.)) (!
   (= (tuple%5./tuple%5/1 x) (tuple%5./tuple%5/?1 x))
   :pattern ((tuple%5./tuple%5/1 x))
   :qid internal_tuple__5./tuple__5/1_accessor_definition
   :skolemid skolem_internal_tuple__5./tuple__5/1_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%5. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&))
    (has_type (tuple%5./tuple%5/1 (%Poly%tuple%5. x)) T%1&)
   )
   :pattern ((tuple%5./tuple%5/1 (%Poly%tuple%5. x)) (has_type x (TYPE%tuple%5. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&
   )))
   :qid internal_tuple__5./tuple__5/1_invariant_definition
   :skolemid skolem_internal_tuple__5./tuple__5/1_invariant_definition
)))
(assert
 (forall ((x tuple%5.)) (!
   (= (tuple%5./tuple%5/2 x) (tuple%5./tuple%5/?2 x))
   :pattern ((tuple%5./tuple%5/2 x))
   :qid internal_tuple__5./tuple__5/2_accessor_definition
   :skolemid skolem_internal_tuple__5./tuple__5/2_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%5. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&))
    (has_type (tuple%5./tuple%5/2 (%Poly%tuple%5. x)) T%2&)
   )
   :pattern ((tuple%5./tuple%5/2 (%Poly%tuple%5. x)) (has_type x (TYPE%tuple%5. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&
   )))
   :qid internal_tuple__5./tuple__5/2_invariant_definition
   :skolemid skolem_internal_tuple__5./tuple__5/2_invariant_definition
)))
(assert
 (forall ((x tuple%5.)) (!
   (= (tuple%5./tuple%5/3 x) (tuple%5./tuple%5/?3 x))
   :pattern ((tuple%5./tuple%5/3 x))
   :qid internal_tuple__5./tuple__5/3_accessor_definition
   :skolemid skolem_internal_tuple__5./tuple__5/3_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%5. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&))
    (has_type (tuple%5./tuple%5/3 (%Poly%tuple%5. x)) T%3&)
   )
   :pattern ((tuple%5./tuple%5/3 (%Poly%tuple%5. x)) (has_type x (TYPE%tuple%5. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&
   )))
   :qid internal_tuple__5./tuple__5/3_invariant_definition
   :skolemid skolem_internal_tuple__5./tuple__5/3_invariant_definition
)))
(assert
 (forall ((x tuple%5.)) (!
   (= (tuple%5./tuple%5/4 x) (tuple%5./tuple%5/?4 x))
   :pattern ((tuple%5./tuple%5/4 x))
   :qid internal_tuple__5./tuple__5/4_accessor_definition
   :skolemid skolem_internal_tuple__5./tuple__5/4_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%5. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&))
    (has_type (tuple%5./tuple%5/4 (%Poly%tuple%5. x)) T%4&)
   )
   :pattern ((tuple%5./tuple%5/4 (%Poly%tuple%5. x)) (has_type x (TYPE%tuple%5. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&
   )))
   :qid internal_tuple__5./tuple__5/4_invariant_definition
   :skolemid skolem_internal_tuple__5./tuple__5/4_invariant_definition
)))
(assert
 (forall ((x tuple%5.)) (!
   (=>
    (is-tuple%5./tuple%5 x)
    (height_lt (height (tuple%5./tuple%5/0 x)) (height (Poly%tuple%5. x)))
   )
   :pattern ((height (tuple%5./tuple%5/0 x)))
   :qid prelude_datatype_height_tuple%5./tuple%5/0
   :skolemid skolem_prelude_datatype_height_tuple%5./tuple%5/0
)))
(assert
 (forall ((x tuple%5.)) (!
   (=>
    (is-tuple%5./tuple%5 x)
    (height_lt (height (tuple%5./tuple%5/1 x)) (height (Poly%tuple%5. x)))
   )
   :pattern ((height (tuple%5./tuple%5/1 x)))
   :qid prelude_datatype_height_tuple%5./tuple%5/1
   :skolemid skolem_prelude_datatype_height_tuple%5./tuple%5/1
)))
(assert
 (forall ((x tuple%5.)) (!
   (=>
    (is-tuple%5./tuple%5 x)
    (height_lt (height (tuple%5./tuple%5/2 x)) (height (Poly%tuple%5. x)))
   )
   :pattern ((height (tuple%5./tuple%5/2 x)))
   :qid prelude_datatype_height_tuple%5./tuple%5/2
   :skolemid skolem_prelude_datatype_height_tuple%5./tuple%5/2
)))
(assert
 (forall ((x tuple%5.)) (!
   (=>
    (is-tuple%5./tuple%5 x)
    (height_lt (height (tuple%5./tuple%5/3 x)) (height (Poly%tuple%5. x)))
   )
   :pattern ((height (tuple%5./tuple%5/3 x)))
   :qid prelude_datatype_height_tuple%5./tuple%5/3
   :skolemid skolem_prelude_datatype_height_tuple%5./tuple%5/3
)))
(assert
 (forall ((x tuple%5.)) (!
   (=>
    (is-tuple%5./tuple%5 x)
    (height_lt (height (tuple%5./tuple%5/4 x)) (height (Poly%tuple%5. x)))
   )
   :pattern ((height (tuple%5./tuple%5/4 x)))
   :qid prelude_datatype_height_tuple%5./tuple%5/4
   :skolemid skolem_prelude_datatype_height_tuple%5./tuple%5/4
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (deep Bool) (x Poly) (y Poly)
  ) (!
   (=>
    (and
     (has_type x (TYPE%tuple%5. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&))
     (has_type y (TYPE%tuple%5. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&))
     (ext_eq deep T%0& (tuple%5./tuple%5/0 (%Poly%tuple%5. x)) (tuple%5./tuple%5/0 (%Poly%tuple%5.
        y
     )))
     (ext_eq deep T%1& (tuple%5./tuple%5/1 (%Poly%tuple%5. x)) (tuple%5./tuple%5/1 (%Poly%tuple%5.
        y
     )))
     (ext_eq deep T%2& (tuple%5./tuple%5/2 (%Poly%tuple%5. x)) (tuple%5./tuple%5/2 (%Poly%tuple%5.
        y
     )))
     (ext_eq deep T%3& (tuple%5./tuple%5/3 (%Poly%tuple%5. x)) (tuple%5./tuple%5/3 (%Poly%tuple%5.
        y
     )))
     (ext_eq deep T%4& (tuple%5./tuple%5/4 (%Poly%tuple%5. x)) (tuple%5./tuple%5/4 (%Poly%tuple%5.
        y
    ))))
    (ext_eq deep (TYPE%tuple%5. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&)
     x y
   ))
   :pattern ((ext_eq deep (TYPE%tuple%5. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&.
      T%4&
     ) x y
   ))
   :qid internal_tuple__5./tuple__5_ext_equal_definition
   :skolemid skolem_internal_tuple__5./tuple__5_ext_equal_definition
)))

;; Traits
(declare-fun tr_bound%core!clone.Clone. (Dcr Type) Bool)
(declare-fun tr_bound%core!alloc.Allocator. (Dcr Type) Bool)
(declare-fun tr_bound%vstd!std_specs.option.OptionAdditionalFns. (Dcr Type Dcr Type)
 Bool
)
(declare-fun tr_bound%vstd!tokens.ValueToken. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%vstd!tokens.UniqueValueToken. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%vstd!tokens.KeyValueToken. (Dcr Type Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%vstd!tokens.UniqueKeyValueToken. (Dcr Type Dcr Type Dcr Type)
 Bool
)
(declare-fun tr_bound%vstd!tokens.ElementToken. (Dcr Type Dcr Type) Bool)
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
   true
   :pattern ((tr_bound%vstd!std_specs.option.OptionAdditionalFns. Self%&. Self%& T&. T&))
   :qid internal_vstd__std_specs__option__OptionAdditionalFns_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__std_specs__option__OptionAdditionalFns_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type)) (!
   true
   :pattern ((tr_bound%vstd!tokens.ValueToken. Self%&. Self%& Value&. Value&))
   :qid internal_vstd__tokens__ValueToken_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__tokens__ValueToken_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type)) (!
   (=>
    (tr_bound%vstd!tokens.UniqueValueToken. Self%&. Self%& Value&. Value&)
    (tr_bound%vstd!tokens.ValueToken. Self%&. Self%& Value&. Value&)
   )
   :pattern ((tr_bound%vstd!tokens.UniqueValueToken. Self%&. Self%& Value&. Value&))
   :qid internal_vstd__tokens__UniqueValueToken_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__tokens__UniqueValueToken_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type))
  (!
   true
   :pattern ((tr_bound%vstd!tokens.KeyValueToken. Self%&. Self%& Key&. Key& Value&. Value&))
   :qid internal_vstd__tokens__KeyValueToken_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__tokens__KeyValueToken_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type))
  (!
   (=>
    (tr_bound%vstd!tokens.UniqueKeyValueToken. Self%&. Self%& Key&. Key& Value&. Value&)
    (tr_bound%vstd!tokens.KeyValueToken. Self%&. Self%& Key&. Key& Value&. Value&)
   )
   :pattern ((tr_bound%vstd!tokens.UniqueKeyValueToken. Self%&. Self%& Key&. Key& Value&.
     Value&
   ))
   :qid internal_vstd__tokens__UniqueKeyValueToken_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__tokens__UniqueKeyValueToken_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Element&. Dcr) (Element& Type)) (!
   true
   :pattern ((tr_bound%vstd!tokens.ElementToken. Self%&. Self%& Element&. Element&))
   :qid internal_vstd__tokens__ElementToken_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__tokens__ElementToken_trait_type_bounds_definition
)))

;; Function-Decl vstd::tokens::ValueToken::instance_id
(declare-fun vstd!tokens.ValueToken.instance_id.? (Dcr Type Dcr Type Poly) Poly)
(declare-fun vstd!tokens.ValueToken.instance_id%default%.? (Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl vstd::tokens::ValueToken::value
(declare-fun vstd!tokens.ValueToken.value.? (Dcr Type Dcr Type Poly) Poly)
(declare-fun vstd!tokens.ValueToken.value%default%.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl vstd::tokens::KeyValueToken::instance_id
(declare-fun vstd!tokens.KeyValueToken.instance_id.? (Dcr Type Dcr Type Dcr Type Poly)
 Poly
)
(declare-fun vstd!tokens.KeyValueToken.instance_id%default%.? (Dcr Type Dcr Type Dcr
  Type Poly
 ) Poly
)

;; Function-Decl vstd::tokens::KeyValueToken::key
(declare-fun vstd!tokens.KeyValueToken.key.? (Dcr Type Dcr Type Dcr Type Poly) Poly)
(declare-fun vstd!tokens.KeyValueToken.key%default%.? (Dcr Type Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl vstd::tokens::KeyValueToken::value
(declare-fun vstd!tokens.KeyValueToken.value.? (Dcr Type Dcr Type Dcr Type Poly) Poly)
(declare-fun vstd!tokens.KeyValueToken.value%default%.? (Dcr Type Dcr Type Dcr Type
  Poly
 ) Poly
)

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

;; Function-Decl vstd::std_specs::option::OptionAdditionalFns::is_None
(declare-fun vstd!std_specs.option.OptionAdditionalFns.is_None.? (Dcr Type Dcr Type
  Poly
 ) Poly
)
(declare-fun vstd!std_specs.option.OptionAdditionalFns.is_None%default%.? (Dcr Type
  Dcr Type Poly
 ) Poly
)

;; Function-Decl vstd::std_specs::option::is_some
(declare-fun vstd!std_specs.option.is_some.? (Dcr Type Poly) Bool)

;; Function-Decl vstd::std_specs::option::is_none
(declare-fun vstd!std_specs.option.is_none.? (Dcr Type Poly) Bool)

;; Function-Decl vstd::std_specs::option::spec_unwrap
(declare-fun vstd!std_specs.option.spec_unwrap.? (Dcr Type Poly) Poly)

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

;; Function-Decl test_crate::Y::State::next_by
(declare-fun test_crate!Y.impl&%15.next_by.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::next
(declare-fun test_crate!Y.impl&%15.next.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::Instance::id
(declare-fun test_crate!Y.impl&%12.id.? (Poly) vstd!tokens.InstanceId.)

;; Function-Decl test_crate::Y::Step::arrow_0
(declare-fun test_crate!Y.impl&%0.arrow_0.? (Poly) test_crate!Y.State.)

;; Function-Decl test_crate::Y::Step::arrow_dummy_to_use_type_params_0
(declare-fun test_crate!Y.impl&%0.arrow_dummy_to_use_type_params_0.? (Poly) test_crate!Y.State.)

;; Function-Decl test_crate::Y::Step::is_tr1
(declare-fun test_crate!Y.impl&%1.is_tr1.? (Poly) Bool)

;; Function-Decl test_crate::Y::Step::is_tr2
(declare-fun test_crate!Y.impl&%1.is_tr2.? (Poly) Bool)

;; Function-Decl test_crate::Y::Step::is_tr3
(declare-fun test_crate!Y.impl&%1.is_tr3.? (Poly) Bool)

;; Function-Decl test_crate::Y::Step::is_tr4
(declare-fun test_crate!Y.impl&%1.is_tr4.? (Poly) Bool)

;; Function-Decl test_crate::Y::Step::is_dummy_to_use_type_params
(declare-fun test_crate!Y.impl&%1.is_dummy_to_use_type_params.? (Poly) Bool)

;; Function-Decl test_crate::Y::Step::get_dummy_to_use_type_params_0
(declare-fun test_crate!Y.impl&%1.get_dummy_to_use_type_params_0.? (Poly) test_crate!Y.State.)

;; Function-Decl test_crate::Y::Config::arrow_0
(declare-fun test_crate!Y.impl&%2.arrow_0.? (Poly) test_crate!Y.State.)

;; Function-Decl test_crate::Y::Config::arrow_dummy_to_use_type_params_0
(declare-fun test_crate!Y.impl&%2.arrow_dummy_to_use_type_params_0.? (Poly) test_crate!Y.State.)

;; Function-Decl test_crate::Y::Config::is_dummy_to_use_type_params
(declare-fun test_crate!Y.impl&%3.is_dummy_to_use_type_params.? (Poly) Bool)

;; Function-Decl test_crate::Y::Config::get_dummy_to_use_type_params_0
(declare-fun test_crate!Y.impl&%3.get_dummy_to_use_type_params_0.? (Poly) test_crate!Y.State.)

;; Function-Decl test_crate::Y::State::tr1_strong
(declare-fun test_crate!Y.impl&%15.tr1_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr1_enabled
(declare-fun test_crate!Y.impl&%15.tr1_enabled.? (Poly) Bool)

;; Function-Decl test_crate::Y::State::tr2_strong
(declare-fun test_crate!Y.impl&%15.tr2_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr2_enabled
(declare-fun test_crate!Y.impl&%15.tr2_enabled.? (Poly) Bool)

;; Function-Decl test_crate::Y::State::tr3_strong
(declare-fun test_crate!Y.impl&%15.tr3_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr3_enabled
(declare-fun test_crate!Y.impl&%15.tr3_enabled.? (Poly) Bool)

;; Function-Decl test_crate::Y::State::tr4_strong
(declare-fun test_crate!Y.impl&%15.tr4_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr4_enabled
(declare-fun test_crate!Y.impl&%15.tr4_enabled.? (Poly) Bool)

;; Function-Decl test_crate::Y::State::next_strong_by
(declare-fun test_crate!Y.impl&%15.next_strong_by.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::next_strong
(declare-fun test_crate!Y.impl&%15.next_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::init_by
(declare-fun test_crate!Y.impl&%15.init_by.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::init
(declare-fun test_crate!Y.impl&%15.init.? (Poly) Bool)

;; Function-Decl test_crate::Y::State::invariant
(declare-fun test_crate!Y.impl&%15.invariant.? (Poly) Bool)

;; Function-Axioms vstd::tokens::ValueToken::instance_id
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd!tokens.ValueToken.instance_id.? Self%&. Self%& Value&. Value& self!)
     TYPE%vstd!tokens.InstanceId.
   ))
   :pattern ((vstd!tokens.ValueToken.instance_id.? Self%&. Self%& Value&. Value& self!))
   :qid internal_vstd!tokens.ValueToken.instance_id.?_pre_post_definition
   :skolemid skolem_internal_vstd!tokens.ValueToken.instance_id.?_pre_post_definition
)))

;; Function-Axioms vstd::tokens::ValueToken::value
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd!tokens.ValueToken.value.? Self%&. Self%& Value&. Value& self!) Value&)
   )
   :pattern ((vstd!tokens.ValueToken.value.? Self%&. Self%& Value&. Value& self!))
   :qid internal_vstd!tokens.ValueToken.value.?_pre_post_definition
   :skolemid skolem_internal_vstd!tokens.ValueToken.value.?_pre_post_definition
)))

;; Function-Specs vstd::tokens::ValueToken::agree
(declare-fun req%vstd!tokens.ValueToken.agree. (Dcr Type Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type) (self! Poly) (other!
    Poly
   )
  ) (!
   (= (req%vstd!tokens.ValueToken.agree. Self%&. Self%& Value&. Value& self! other!)
    (=>
     %%global_location_label%%0
     (= (vstd!tokens.ValueToken.instance_id.? Self%&. Self%& Value&. Value& self!) (vstd!tokens.ValueToken.instance_id.?
       Self%&. Self%& Value&. Value& other!
   ))))
   :pattern ((req%vstd!tokens.ValueToken.agree. Self%&. Self%& Value&. Value& self! other!))
   :qid internal_req__vstd!tokens.ValueToken.agree._definition
   :skolemid skolem_internal_req__vstd!tokens.ValueToken.agree._definition
)))
(declare-fun ens%vstd!tokens.ValueToken.agree. (Dcr Type Dcr Type Poly Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type) (self! Poly) (other!
    Poly
   )
  ) (!
   (= (ens%vstd!tokens.ValueToken.agree. Self%&. Self%& Value&. Value& self! other!)
    (= (vstd!tokens.ValueToken.value.? Self%&. Self%& Value&. Value& self!) (vstd!tokens.ValueToken.value.?
      Self%&. Self%& Value&. Value& other!
   )))
   :pattern ((ens%vstd!tokens.ValueToken.agree. Self%&. Self%& Value&. Value& self! other!))
   :qid internal_ens__vstd!tokens.ValueToken.agree._definition
   :skolemid skolem_internal_ens__vstd!tokens.ValueToken.agree._definition
)))

;; Function-Specs vstd::tokens::ValueToken::arbitrary
(declare-fun ens%vstd!tokens.ValueToken.arbitrary. (Dcr Type Dcr Type Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type) (%return! Poly))
  (!
   (= (ens%vstd!tokens.ValueToken.arbitrary. Self%&. Self%& Value&. Value& %return!)
    (has_type %return! Self%&)
   )
   :pattern ((ens%vstd!tokens.ValueToken.arbitrary. Self%&. Self%& Value&. Value& %return!))
   :qid internal_ens__vstd!tokens.ValueToken.arbitrary._definition
   :skolemid skolem_internal_ens__vstd!tokens.ValueToken.arbitrary._definition
)))

;; Function-Specs vstd::tokens::UniqueValueToken::unique
(declare-fun ens%vstd!tokens.UniqueValueToken.unique. (Dcr Type Dcr Type Poly Poly
  Poly
 ) Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type) (pre%self! Poly) (
    self! Poly
   ) (other! Poly)
  ) (!
   (= (ens%vstd!tokens.UniqueValueToken.unique. Self%&. Self%& Value&. Value& pre%self!
     self! other!
    ) (and
     (has_type self! Self%&)
     (not (= (vstd!tokens.ValueToken.instance_id.? Self%&. Self%& Value&. Value& self!)
       (vstd!tokens.ValueToken.instance_id.? Self%&. Self%& Value&. Value& other!)
     ))
     (= self! pre%self!)
   ))
   :pattern ((ens%vstd!tokens.UniqueValueToken.unique. Self%&. Self%& Value&. Value& pre%self!
     self! other!
   ))
   :qid internal_ens__vstd!tokens.UniqueValueToken.unique._definition
   :skolemid skolem_internal_ens__vstd!tokens.UniqueValueToken.unique._definition
)))

;; Function-Axioms vstd::tokens::KeyValueToken::instance_id
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type)
   (self! Poly)
  ) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd!tokens.KeyValueToken.instance_id.? Self%&. Self%& Key&. Key& Value&.
      Value& self!
     ) TYPE%vstd!tokens.InstanceId.
   ))
   :pattern ((vstd!tokens.KeyValueToken.instance_id.? Self%&. Self%& Key&. Key& Value&.
     Value& self!
   ))
   :qid internal_vstd!tokens.KeyValueToken.instance_id.?_pre_post_definition
   :skolemid skolem_internal_vstd!tokens.KeyValueToken.instance_id.?_pre_post_definition
)))

;; Function-Axioms vstd::tokens::KeyValueToken::key
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type)
   (self! Poly)
  ) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd!tokens.KeyValueToken.key.? Self%&. Self%& Key&. Key& Value&. Value&
      self!
     ) Key&
   ))
   :pattern ((vstd!tokens.KeyValueToken.key.? Self%&. Self%& Key&. Key& Value&. Value&
     self!
   ))
   :qid internal_vstd!tokens.KeyValueToken.key.?_pre_post_definition
   :skolemid skolem_internal_vstd!tokens.KeyValueToken.key.?_pre_post_definition
)))

;; Function-Axioms vstd::tokens::KeyValueToken::value
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type)
   (self! Poly)
  ) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd!tokens.KeyValueToken.value.? Self%&. Self%& Key&. Key& Value&. Value&
      self!
     ) Value&
   ))
   :pattern ((vstd!tokens.KeyValueToken.value.? Self%&. Self%& Key&. Key& Value&. Value&
     self!
   ))
   :qid internal_vstd!tokens.KeyValueToken.value.?_pre_post_definition
   :skolemid skolem_internal_vstd!tokens.KeyValueToken.value.?_pre_post_definition
)))

;; Function-Specs vstd::tokens::KeyValueToken::agree
(declare-fun req%vstd!tokens.KeyValueToken.agree. (Dcr Type Dcr Type Dcr Type Poly
  Poly
 ) Bool
)
(declare-const %%global_location_label%%1 Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type)
   (self! Poly) (other! Poly)
  ) (!
   (= (req%vstd!tokens.KeyValueToken.agree. Self%&. Self%& Key&. Key& Value&. Value& self!
     other!
    ) (and
     (=>
      %%global_location_label%%1
      (= (vstd!tokens.KeyValueToken.instance_id.? Self%&. Self%& Key&. Key& Value&. Value&
        self!
       ) (vstd!tokens.KeyValueToken.instance_id.? Self%&. Self%& Key&. Key& Value&. Value&
        other!
     )))
     (=>
      %%global_location_label%%2
      (= (vstd!tokens.KeyValueToken.key.? Self%&. Self%& Key&. Key& Value&. Value& self!)
       (vstd!tokens.KeyValueToken.key.? Self%&. Self%& Key&. Key& Value&. Value& other!)
   ))))
   :pattern ((req%vstd!tokens.KeyValueToken.agree. Self%&. Self%& Key&. Key& Value&. Value&
     self! other!
   ))
   :qid internal_req__vstd!tokens.KeyValueToken.agree._definition
   :skolemid skolem_internal_req__vstd!tokens.KeyValueToken.agree._definition
)))
(declare-fun ens%vstd!tokens.KeyValueToken.agree. (Dcr Type Dcr Type Dcr Type Poly
  Poly
 ) Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type)
   (self! Poly) (other! Poly)
  ) (!
   (= (ens%vstd!tokens.KeyValueToken.agree. Self%&. Self%& Key&. Key& Value&. Value& self!
     other!
    ) (= (vstd!tokens.KeyValueToken.value.? Self%&. Self%& Key&. Key& Value&. Value& self!)
     (vstd!tokens.KeyValueToken.value.? Self%&. Self%& Key&. Key& Value&. Value& other!)
   ))
   :pattern ((ens%vstd!tokens.KeyValueToken.agree. Self%&. Self%& Key&. Key& Value&. Value&
     self! other!
   ))
   :qid internal_ens__vstd!tokens.KeyValueToken.agree._definition
   :skolemid skolem_internal_ens__vstd!tokens.KeyValueToken.agree._definition
)))

;; Function-Specs vstd::tokens::KeyValueToken::arbitrary
(declare-fun ens%vstd!tokens.KeyValueToken.arbitrary. (Dcr Type Dcr Type Dcr Type Poly)
 Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type)
   (%return! Poly)
  ) (!
   (= (ens%vstd!tokens.KeyValueToken.arbitrary. Self%&. Self%& Key&. Key& Value&. Value&
     %return!
    ) (has_type %return! Self%&)
   )
   :pattern ((ens%vstd!tokens.KeyValueToken.arbitrary. Self%&. Self%& Key&. Key& Value&.
     Value& %return!
   ))
   :qid internal_ens__vstd!tokens.KeyValueToken.arbitrary._definition
   :skolemid skolem_internal_ens__vstd!tokens.KeyValueToken.arbitrary._definition
)))

;; Function-Specs vstd::tokens::UniqueKeyValueToken::unique
(declare-fun ens%vstd!tokens.UniqueKeyValueToken.unique. (Dcr Type Dcr Type Dcr Type
  Poly Poly Poly
 ) Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type)
   (pre%self! Poly) (self! Poly) (other! Poly)
  ) (!
   (= (ens%vstd!tokens.UniqueKeyValueToken.unique. Self%&. Self%& Key&. Key& Value&. Value&
     pre%self! self! other!
    ) (and
     (has_type self! Self%&)
     (or
      (not (= (vstd!tokens.KeyValueToken.instance_id.? Self%&. Self%& Key&. Key& Value&. Value&
         self!
        ) (vstd!tokens.KeyValueToken.instance_id.? Self%&. Self%& Key&. Key& Value&. Value&
         other!
      )))
      (not (= (vstd!tokens.KeyValueToken.key.? Self%&. Self%& Key&. Key& Value&. Value& self!)
        (vstd!tokens.KeyValueToken.key.? Self%&. Self%& Key&. Key& Value&. Value& other!)
     )))
     (= self! pre%self!)
   ))
   :pattern ((ens%vstd!tokens.UniqueKeyValueToken.unique. Self%&. Self%& Key&. Key& Value&.
     Value& pre%self! self! other!
   ))
   :qid internal_ens__vstd!tokens.UniqueKeyValueToken.unique._definition
   :skolemid skolem_internal_ens__vstd!tokens.UniqueKeyValueToken.unique._definition
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
   :qid user_core__clone__impls__impl&%21__clone_1
   :skolemid skolem_user_core__clone__impls__impl&%21__clone_1
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
   :qid user_core__clone__impls__impl&%3__clone_2
   :skolemid skolem_user_core__clone__impls__impl&%3__clone_2
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
   :qid user_builtin__impl&%4__clone_3
   :skolemid skolem_user_builtin__impl&%4__clone_3
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
   :qid user_builtin__impl&%2__clone_4
   :skolemid skolem_user_builtin__impl&%2__clone_4
)))

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

;; Function-Axioms vstd::std_specs::option::is_some
(assert
 (fuel_bool_default fuel%vstd!std_specs.option.is_some.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.option.is_some.)
  (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
    (= (vstd!std_specs.option.is_some.? T&. T& option!) (is-core!option.Option./Some (%Poly%core!option.Option.
       option!
    )))
    :pattern ((vstd!std_specs.option.is_some.? T&. T& option!))
    :qid internal_vstd!std_specs.option.is_some.?_definition
    :skolemid skolem_internal_vstd!std_specs.option.is_some.?_definition
))))

;; Function-Axioms vstd::std_specs::option::is_none
(assert
 (fuel_bool_default fuel%vstd!std_specs.option.is_none.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.option.is_none.)
  (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
    (= (vstd!std_specs.option.is_none.? T&. T& option!) (is-core!option.Option./None (%Poly%core!option.Option.
       option!
    )))
    :pattern ((vstd!std_specs.option.is_none.? T&. T& option!))
    :qid internal_vstd!std_specs.option.is_none.?_definition
    :skolemid skolem_internal_vstd!std_specs.option.is_none.?_definition
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

;; Function-Specs vstd::std_specs::option::spec_unwrap
(declare-fun req%vstd!std_specs.option.spec_unwrap. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
   (= (req%vstd!std_specs.option.spec_unwrap. T&. T& option!) (=>
     %%global_location_label%%3
     (is-core!option.Option./Some (%Poly%core!option.Option. option!))
   ))
   :pattern ((req%vstd!std_specs.option.spec_unwrap. T&. T& option!))
   :qid internal_req__vstd!std_specs.option.spec_unwrap._definition
   :skolemid skolem_internal_req__vstd!std_specs.option.spec_unwrap._definition
)))

;; Function-Axioms vstd::std_specs::option::spec_unwrap
(assert
 (fuel_bool_default fuel%vstd!std_specs.option.spec_unwrap.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.option.spec_unwrap.)
  (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
    (= (vstd!std_specs.option.spec_unwrap.? T&. T& option!) (core!option.Option./Some/0
      (%Poly%core!option.Option. option!)
    ))
    :pattern ((vstd!std_specs.option.spec_unwrap.? T&. T& option!))
    :qid internal_vstd!std_specs.option.spec_unwrap.?_definition
    :skolemid skolem_internal_vstd!std_specs.option.spec_unwrap.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
   (=>
    (has_type option! (TYPE%core!option.Option. T&. T&))
    (has_type (vstd!std_specs.option.spec_unwrap.? T&. T& option!) T&)
   )
   :pattern ((vstd!std_specs.option.spec_unwrap.? T&. T& option!))
   :qid internal_vstd!std_specs.option.spec_unwrap.?_pre_post_definition
   :skolemid skolem_internal_vstd!std_specs.option.spec_unwrap.?_pre_post_definition
)))

;; Function-Specs core::option::impl&%5::clone
(declare-fun ens%core!option.impl&%5.clone. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (opt! Poly) (res! Poly)) (!
   (= (ens%core!option.impl&%5.clone. T&. T& opt! res!) (and
     (ens%core!clone.Clone.clone. $ (TYPE%core!option.Option. T&. T&) opt! res!)
     (=>
      (is-core!option.Option./None (%Poly%core!option.Option. opt!))
      (is-core!option.Option./None (%Poly%core!option.Option. res!))
     )
     (=>
      (is-core!option.Option./Some (%Poly%core!option.Option. opt!))
      (and
       (is-core!option.Option./Some (%Poly%core!option.Option. res!))
       (closure_ens (FNDEF%core!clone.Clone.clone. T&. T&) $ (TYPE%tuple%1. (REF T&.) T&)
        (F fndef_singleton) (Poly%tuple%1. (tuple%1./tuple%1 (core!option.Option./Some/0 (%Poly%core!option.Option.
            opt!
         )))
        ) (core!option.Option./Some/0 (%Poly%core!option.Option. res!))
   )))))
   :pattern ((ens%core!option.impl&%5.clone. T&. T& opt! res!))
   :qid internal_ens__core!option.impl&__5.clone._definition
   :skolemid skolem_internal_ens__core!option.impl&__5.clone._definition
)))
(assert
 (forall ((tmp%%$ Poly) (res$ Poly) (T&. Dcr) (T& Type)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%1. (REF $) (TYPE%core!option.Option. T&. T&)))
     (has_type res$ (TYPE%core!option.Option. T&. T&))
    )
    (=>
     (closure_ens (FNDEF%core!clone.Clone.clone. $ (TYPE%core!option.Option. T&. T&)) $
      (TYPE%tuple%1. (REF $) (TYPE%core!option.Option. T&. T&)) (F fndef_singleton) tmp%%$
      res$
     )
     (let
      ((opt$ (%Poly%core!option.Option. (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$)))))
      (and
       (=>
        (is-core!option.Option./None opt$)
        (is-core!option.Option./None (%Poly%core!option.Option. res$))
       )
       (=>
        (is-core!option.Option./Some opt$)
        (and
         (is-core!option.Option./Some (%Poly%core!option.Option. res$))
         (closure_ens (FNDEF%core!clone.Clone.clone. T&. T&) $ (TYPE%tuple%1. (REF T&.) T&)
          (F fndef_singleton) (Poly%tuple%1. (tuple%1./tuple%1 (core!option.Option./Some/0 (%Poly%core!option.Option.
              (Poly%core!option.Option. opt$)
           )))
          ) (core!option.Option./Some/0 (%Poly%core!option.Option. res$))
   )))))))
   :pattern ((closure_ens (FNDEF%core!clone.Clone.clone. $ (TYPE%core!option.Option. T&.
       T&
      )
     ) $ (TYPE%tuple%1. (REF $) (TYPE%core!option.Option. T&. T&)) (F fndef_singleton)
     tmp%%$ res$
   ))
   :qid user_core__option__impl&%5__clone_5
   :skolemid skolem_user_core__option__impl&%5__clone_5
)))

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
   :qid user_alloc__boxed__impl&%12__clone_6
   :skolemid skolem_user_alloc__boxed__impl&%12__clone_6
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
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (= (req%vstd!map.impl&%0.index. K&. K& V&. V& self! key!) (=>
     %%global_location_label%%4
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
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (= (req%vstd!map.impl&%0.spec_index. K&. K& V&. V& self! key!) (=>
     %%global_location_label%%5
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
    :qid user_vstd__map__axiom_map_index_decreases_finite_7
    :skolemid skolem_user_vstd__map__axiom_map_index_decreases_finite_7
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
    :qid user_vstd__map__axiom_map_index_decreases_infinite_8
    :skolemid skolem_user_vstd__map__axiom_map_index_decreases_infinite_8
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
    :qid user_vstd__map__axiom_map_insert_domain_9
    :skolemid skolem_user_vstd__map__axiom_map_insert_domain_9
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
    :qid user_vstd__map__axiom_map_insert_same_10
    :skolemid skolem_user_vstd__map__axiom_map_insert_same_10
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
    :qid user_vstd__map__axiom_map_insert_different_11
    :skolemid skolem_user_vstd__map__axiom_map_insert_different_11
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
    :qid user_vstd__map__axiom_map_remove_domain_12
    :skolemid skolem_user_vstd__map__axiom_map_remove_domain_12
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
    :qid user_vstd__map__axiom_map_remove_different_13
    :skolemid skolem_user_vstd__map__axiom_map_remove_different_13
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
         :qid user_vstd__map__axiom_map_ext_equal_14
         :skolemid skolem_user_vstd__map__axiom_map_ext_equal_14
    )))))
    :pattern ((ext_eq false (TYPE%vstd!map.Map. K&. K& V&. V&) m1! m2!))
    :qid user_vstd__map__axiom_map_ext_equal_15
    :skolemid skolem_user_vstd__map__axiom_map_ext_equal_15
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
         :qid user_vstd__map__axiom_map_ext_equal_deep_16
         :skolemid skolem_user_vstd__map__axiom_map_ext_equal_deep_16
    )))))
    :pattern ((ext_eq true (TYPE%vstd!map.Map. K&. K& V&. V&) m1! m2!))
    :qid user_vstd__map__axiom_map_ext_equal_deep_17
    :skolemid skolem_user_vstd__map__axiom_map_ext_equal_deep_17
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
    :qid user_vstd__multiset__axiom_multiset_singleton_18
    :skolemid skolem_user_vstd__multiset__axiom_multiset_singleton_18
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
    :qid user_vstd__multiset__axiom_multiset_singleton_different_19
    :skolemid skolem_user_vstd__multiset__axiom_multiset_singleton_different_19
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
    :qid user_vstd__multiset__axiom_multiset_add_20
    :skolemid skolem_user_vstd__multiset__axiom_multiset_add_20
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
    :qid user_vstd__multiset__axiom_multiset_sub_21
    :skolemid skolem_user_vstd__multiset__axiom_multiset_sub_21
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
        :qid user_vstd__multiset__axiom_multiset_ext_equal_22
        :skolemid skolem_user_vstd__multiset__axiom_multiset_ext_equal_22
    ))))
    :pattern ((ext_eq false (TYPE%vstd!multiset.Multiset. V&. V&) m1! m2!))
    :qid user_vstd__multiset__axiom_multiset_ext_equal_23
    :skolemid skolem_user_vstd__multiset__axiom_multiset_ext_equal_23
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
    :qid user_vstd__multiset__axiom_multiset_ext_equal_deep_24
    :skolemid skolem_user_vstd__multiset__axiom_multiset_ext_equal_deep_24
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
    :qid user_vstd__set__axiom_set_insert_same_25
    :skolemid skolem_user_vstd__set__axiom_set_insert_same_25
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
    :qid user_vstd__set__axiom_set_insert_different_26
    :skolemid skolem_user_vstd__set__axiom_set_insert_different_26
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
    :qid user_vstd__set__axiom_set_remove_same_27
    :skolemid skolem_user_vstd__set__axiom_set_remove_same_27
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
    :qid user_vstd__set__axiom_set_remove_insert_28
    :skolemid skolem_user_vstd__set__axiom_set_remove_insert_28
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
    :qid user_vstd__set__axiom_set_remove_different_29
    :skolemid skolem_user_vstd__set__axiom_set_remove_different_29
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
        :qid user_vstd__set__axiom_set_ext_equal_30
        :skolemid skolem_user_vstd__set__axiom_set_ext_equal_30
    ))))
    :pattern ((ext_eq false (TYPE%vstd!set.Set. A&. A&) s1! s2!))
    :qid user_vstd__set__axiom_set_ext_equal_31
    :skolemid skolem_user_vstd__set__axiom_set_ext_equal_31
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
    :qid user_vstd__set__axiom_set_ext_equal_deep_32
    :skolemid skolem_user_vstd__set__axiom_set_ext_equal_deep_32
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
    :qid user_vstd__set__axiom_set_insert_finite_33
    :skolemid skolem_user_vstd__set__axiom_set_insert_finite_33
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
    :qid user_vstd__set__axiom_set_remove_finite_34
    :skolemid skolem_user_vstd__set__axiom_set_remove_finite_34
))))

;; Function-Specs vstd::state_machine_internal::assert_add_option
(declare-fun req%vstd!state_machine_internal.assert_add_option. (Bool) Bool)
(assert
 (forall ((b! Bool)) (!
   (= (req%vstd!state_machine_internal.assert_add_option. b!) b!)
   :pattern ((req%vstd!state_machine_internal.assert_add_option. b!))
   :qid internal_req__vstd!state_machine_internal.assert_add_option._definition
   :skolemid skolem_internal_req__vstd!state_machine_internal.assert_add_option._definition
)))
(declare-fun ens%vstd!state_machine_internal.assert_add_option. (Bool) Bool)
(assert
 (forall ((b! Bool)) (!
   (= (ens%vstd!state_machine_internal.assert_add_option. b!) b!)
   :pattern ((ens%vstd!state_machine_internal.assert_add_option. b!))
   :qid internal_ens__vstd!state_machine_internal.assert_add_option._definition
   :skolemid skolem_internal_ens__vstd!state_machine_internal.assert_add_option._definition
)))

;; Function-Specs vstd::state_machine_internal::assert_add_map
(declare-fun req%vstd!state_machine_internal.assert_add_map. (Bool) Bool)
(assert
 (forall ((b! Bool)) (!
   (= (req%vstd!state_machine_internal.assert_add_map. b!) b!)
   :pattern ((req%vstd!state_machine_internal.assert_add_map. b!))
   :qid internal_req__vstd!state_machine_internal.assert_add_map._definition
   :skolemid skolem_internal_req__vstd!state_machine_internal.assert_add_map._definition
)))
(declare-fun ens%vstd!state_machine_internal.assert_add_map. (Bool) Bool)
(assert
 (forall ((b! Bool)) (!
   (= (ens%vstd!state_machine_internal.assert_add_map. b!) b!)
   :pattern ((ens%vstd!state_machine_internal.assert_add_map. b!))
   :qid internal_ens__vstd!state_machine_internal.assert_add_map._definition
   :skolemid skolem_internal_ens__vstd!state_machine_internal.assert_add_map._definition
)))

;; Function-Specs vstd::state_machine_internal::assert_withdraw_option
(declare-fun req%vstd!state_machine_internal.assert_withdraw_option. (Bool) Bool)
(assert
 (forall ((b! Bool)) (!
   (= (req%vstd!state_machine_internal.assert_withdraw_option. b!) b!)
   :pattern ((req%vstd!state_machine_internal.assert_withdraw_option. b!))
   :qid internal_req__vstd!state_machine_internal.assert_withdraw_option._definition
   :skolemid skolem_internal_req__vstd!state_machine_internal.assert_withdraw_option._definition
)))
(declare-fun ens%vstd!state_machine_internal.assert_withdraw_option. (Bool) Bool)
(assert
 (forall ((b! Bool)) (!
   (= (ens%vstd!state_machine_internal.assert_withdraw_option. b!) b!)
   :pattern ((ens%vstd!state_machine_internal.assert_withdraw_option. b!))
   :qid internal_ens__vstd!state_machine_internal.assert_withdraw_option._definition
   :skolemid skolem_internal_ens__vstd!state_machine_internal.assert_withdraw_option._definition
)))

;; Function-Specs vstd::state_machine_internal::assert_deposit_option
(declare-fun req%vstd!state_machine_internal.assert_deposit_option. (Bool) Bool)
(assert
 (forall ((b! Bool)) (!
   (= (req%vstd!state_machine_internal.assert_deposit_option. b!) b!)
   :pattern ((req%vstd!state_machine_internal.assert_deposit_option. b!))
   :qid internal_req__vstd!state_machine_internal.assert_deposit_option._definition
   :skolemid skolem_internal_req__vstd!state_machine_internal.assert_deposit_option._definition
)))
(declare-fun ens%vstd!state_machine_internal.assert_deposit_option. (Bool) Bool)
(assert
 (forall ((b! Bool)) (!
   (= (ens%vstd!state_machine_internal.assert_deposit_option. b!) b!)
   :pattern ((ens%vstd!state_machine_internal.assert_deposit_option. b!))
   :qid internal_ens__vstd!state_machine_internal.assert_deposit_option._definition
   :skolemid skolem_internal_ens__vstd!state_machine_internal.assert_deposit_option._definition
)))

;; Function-Specs vstd::state_machine_internal::assert_withdraw_map
(declare-fun req%vstd!state_machine_internal.assert_withdraw_map. (Bool) Bool)
(assert
 (forall ((b! Bool)) (!
   (= (req%vstd!state_machine_internal.assert_withdraw_map. b!) b!)
   :pattern ((req%vstd!state_machine_internal.assert_withdraw_map. b!))
   :qid internal_req__vstd!state_machine_internal.assert_withdraw_map._definition
   :skolemid skolem_internal_req__vstd!state_machine_internal.assert_withdraw_map._definition
)))
(declare-fun ens%vstd!state_machine_internal.assert_withdraw_map. (Bool) Bool)
(assert
 (forall ((b! Bool)) (!
   (= (ens%vstd!state_machine_internal.assert_withdraw_map. b!) b!)
   :pattern ((ens%vstd!state_machine_internal.assert_withdraw_map. b!))
   :qid internal_ens__vstd!state_machine_internal.assert_withdraw_map._definition
   :skolemid skolem_internal_ens__vstd!state_machine_internal.assert_withdraw_map._definition
)))

;; Function-Specs vstd::state_machine_internal::assert_deposit_map
(declare-fun req%vstd!state_machine_internal.assert_deposit_map. (Bool) Bool)
(assert
 (forall ((b! Bool)) (!
   (= (req%vstd!state_machine_internal.assert_deposit_map. b!) b!)
   :pattern ((req%vstd!state_machine_internal.assert_deposit_map. b!))
   :qid internal_req__vstd!state_machine_internal.assert_deposit_map._definition
   :skolemid skolem_internal_req__vstd!state_machine_internal.assert_deposit_map._definition
)))
(declare-fun ens%vstd!state_machine_internal.assert_deposit_map. (Bool) Bool)
(assert
 (forall ((b! Bool)) (!
   (= (ens%vstd!state_machine_internal.assert_deposit_map. b!) b!)
   :pattern ((ens%vstd!state_machine_internal.assert_deposit_map. b!))
   :qid internal_ens__vstd!state_machine_internal.assert_deposit_map._definition
   :skolemid skolem_internal_ens__vstd!state_machine_internal.assert_deposit_map._definition
)))

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

;; Function-Specs vstd::tokens::ElementToken::arbitrary
(declare-fun ens%vstd!tokens.ElementToken.arbitrary. (Dcr Type Dcr Type Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Element&. Dcr) (Element& Type) (%return! Poly))
  (!
   (= (ens%vstd!tokens.ElementToken.arbitrary. Self%&. Self%& Element&. Element& %return!)
    (has_type %return! Self%&)
   )
   :pattern ((ens%vstd!tokens.ElementToken.arbitrary. Self%&. Self%& Element&. Element&
     %return!
   ))
   :qid internal_ens__vstd!tokens.ElementToken.arbitrary._definition
   :skolemid skolem_internal_ens__vstd!tokens.ElementToken.arbitrary._definition
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

;; Function-Axioms test_crate::Y::State::next_by
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.next_by.)
  (forall ((pre! Poly) (post! Poly) (step! Poly)) (!
    (= (test_crate!Y.impl&%15.next_by.? pre! post! step!) (ite
      (is-test_crate!Y.Step./tr1 (%Poly%test_crate!Y.Step. step!))
      (test_crate!Y.impl&%15.tr1.? pre! post!)
      (ite
       (is-test_crate!Y.Step./tr2 (%Poly%test_crate!Y.Step. step!))
       (test_crate!Y.impl&%15.tr2.? pre! post!)
       (ite
        (is-test_crate!Y.Step./tr3 (%Poly%test_crate!Y.Step. step!))
        (test_crate!Y.impl&%15.tr3.? pre! post!)
        (and
         (is-test_crate!Y.Step./tr4 (%Poly%test_crate!Y.Step. step!))
         (test_crate!Y.impl&%15.tr4.? pre! post!)
    )))))
    :pattern ((test_crate!Y.impl&%15.next_by.? pre! post! step!))
    :qid internal_test_crate!Y.impl&__15.next_by.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.next_by.?_definition
))))

;; Function-Axioms test_crate::Y::State::next
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.next.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%15.next.? pre! post!) (exists ((step$ Poly)) (!
       (and
        (has_type step$ TYPE%test_crate!Y.Step.)
        (test_crate!Y.impl&%15.next_by.? pre! post! step$)
       )
       :pattern ((test_crate!Y.impl&%15.next_by.? pre! post! step$))
       :qid user_test_crate__Y__State__next_35
       :skolemid skolem_user_test_crate__Y__State__next_35
    )))
    :pattern ((test_crate!Y.impl&%15.next.? pre! post!))
    :qid internal_test_crate!Y.impl&__15.next.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.next.?_definition
))))

;; Function-Specs test_crate::Y::Instance::clone
(declare-fun ens%test_crate!Y.impl&%12.clone. (test_crate!Y.Instance. test_crate!Y.Instance.)
 Bool
)
(assert
 (forall ((self! test_crate!Y.Instance.) (s! test_crate!Y.Instance.)) (!
   (= (ens%test_crate!Y.impl&%12.clone. self! s!) (and
     (has_type (Poly%test_crate!Y.Instance. s!) TYPE%test_crate!Y.Instance.)
     (= self! s!)
   ))
   :pattern ((ens%test_crate!Y.impl&%12.clone. self! s!))
   :qid internal_ens__test_crate!Y.impl&__12.clone._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__12.clone._definition
)))

;; Function-Axioms test_crate::Y::Step::arrow_0
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%0.arrow_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%0.arrow_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%0.arrow_0.? self!) (test_crate!Y.Step./dummy_to_use_type_params/0
      (%Poly%test_crate!Y.Step. self!)
    ))
    :pattern ((test_crate!Y.impl&%0.arrow_0.? self!))
    :qid internal_test_crate!Y.impl&__0.arrow_0.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__0.arrow_0.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%test_crate!Y.Step.)
    (has_type (Poly%test_crate!Y.State. (test_crate!Y.impl&%0.arrow_0.? self!)) TYPE%test_crate!Y.State.)
   )
   :pattern ((test_crate!Y.impl&%0.arrow_0.? self!))
   :qid internal_test_crate!Y.impl&__0.arrow_0.?_pre_post_definition
   :skolemid skolem_internal_test_crate!Y.impl&__0.arrow_0.?_pre_post_definition
)))

;; Function-Axioms test_crate::Y::Step::arrow_dummy_to_use_type_params_0
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%0.arrow_dummy_to_use_type_params_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%0.arrow_dummy_to_use_type_params_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%0.arrow_dummy_to_use_type_params_0.? self!) (test_crate!Y.Step./dummy_to_use_type_params/0
      (%Poly%test_crate!Y.Step. self!)
    ))
    :pattern ((test_crate!Y.impl&%0.arrow_dummy_to_use_type_params_0.? self!))
    :qid internal_test_crate!Y.impl&__0.arrow_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__0.arrow_dummy_to_use_type_params_0.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%test_crate!Y.Step.)
    (has_type (Poly%test_crate!Y.State. (test_crate!Y.impl&%0.arrow_dummy_to_use_type_params_0.?
       self!
      )
     ) TYPE%test_crate!Y.State.
   ))
   :pattern ((test_crate!Y.impl&%0.arrow_dummy_to_use_type_params_0.? self!))
   :qid internal_test_crate!Y.impl&__0.arrow_dummy_to_use_type_params_0.?_pre_post_definition
   :skolemid skolem_internal_test_crate!Y.impl&__0.arrow_dummy_to_use_type_params_0.?_pre_post_definition
)))

;; Function-Axioms test_crate::Y::Step::is_tr1
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%1.is_tr1.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%1.is_tr1.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%1.is_tr1.? self!) (is-test_crate!Y.Step./tr1 (%Poly%test_crate!Y.Step.
       self!
    )))
    :pattern ((test_crate!Y.impl&%1.is_tr1.? self!))
    :qid internal_test_crate!Y.impl&__1.is_tr1.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__1.is_tr1.?_definition
))))

;; Function-Axioms test_crate::Y::Step::is_tr2
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%1.is_tr2.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%1.is_tr2.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%1.is_tr2.? self!) (is-test_crate!Y.Step./tr2 (%Poly%test_crate!Y.Step.
       self!
    )))
    :pattern ((test_crate!Y.impl&%1.is_tr2.? self!))
    :qid internal_test_crate!Y.impl&__1.is_tr2.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__1.is_tr2.?_definition
))))

;; Function-Axioms test_crate::Y::Step::is_tr3
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%1.is_tr3.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%1.is_tr3.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%1.is_tr3.? self!) (is-test_crate!Y.Step./tr3 (%Poly%test_crate!Y.Step.
       self!
    )))
    :pattern ((test_crate!Y.impl&%1.is_tr3.? self!))
    :qid internal_test_crate!Y.impl&__1.is_tr3.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__1.is_tr3.?_definition
))))

;; Function-Axioms test_crate::Y::Step::is_tr4
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%1.is_tr4.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%1.is_tr4.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%1.is_tr4.? self!) (is-test_crate!Y.Step./tr4 (%Poly%test_crate!Y.Step.
       self!
    )))
    :pattern ((test_crate!Y.impl&%1.is_tr4.? self!))
    :qid internal_test_crate!Y.impl&__1.is_tr4.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__1.is_tr4.?_definition
))))

;; Function-Axioms test_crate::Y::Step::is_dummy_to_use_type_params
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%1.is_dummy_to_use_type_params.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%1.is_dummy_to_use_type_params.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%1.is_dummy_to_use_type_params.? self!) (is-test_crate!Y.Step./dummy_to_use_type_params
      (%Poly%test_crate!Y.Step. self!)
    ))
    :pattern ((test_crate!Y.impl&%1.is_dummy_to_use_type_params.? self!))
    :qid internal_test_crate!Y.impl&__1.is_dummy_to_use_type_params.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__1.is_dummy_to_use_type_params.?_definition
))))

;; Function-Axioms test_crate::Y::Step::get_dummy_to_use_type_params_0
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%1.get_dummy_to_use_type_params_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%1.get_dummy_to_use_type_params_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%1.get_dummy_to_use_type_params_0.? self!) (test_crate!Y.Step./dummy_to_use_type_params/0
      (%Poly%test_crate!Y.Step. self!)
    ))
    :pattern ((test_crate!Y.impl&%1.get_dummy_to_use_type_params_0.? self!))
    :qid internal_test_crate!Y.impl&__1.get_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__1.get_dummy_to_use_type_params_0.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%test_crate!Y.Step.)
    (has_type (Poly%test_crate!Y.State. (test_crate!Y.impl&%1.get_dummy_to_use_type_params_0.?
       self!
      )
     ) TYPE%test_crate!Y.State.
   ))
   :pattern ((test_crate!Y.impl&%1.get_dummy_to_use_type_params_0.? self!))
   :qid internal_test_crate!Y.impl&__1.get_dummy_to_use_type_params_0.?_pre_post_definition
   :skolemid skolem_internal_test_crate!Y.impl&__1.get_dummy_to_use_type_params_0.?_pre_post_definition
)))

;; Function-Axioms test_crate::Y::Config::arrow_0
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%2.arrow_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%2.arrow_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%2.arrow_0.? self!) (test_crate!Y.Config./dummy_to_use_type_params/0
      (%Poly%test_crate!Y.Config. self!)
    ))
    :pattern ((test_crate!Y.impl&%2.arrow_0.? self!))
    :qid internal_test_crate!Y.impl&__2.arrow_0.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__2.arrow_0.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%test_crate!Y.Config.)
    (has_type (Poly%test_crate!Y.State. (test_crate!Y.impl&%2.arrow_0.? self!)) TYPE%test_crate!Y.State.)
   )
   :pattern ((test_crate!Y.impl&%2.arrow_0.? self!))
   :qid internal_test_crate!Y.impl&__2.arrow_0.?_pre_post_definition
   :skolemid skolem_internal_test_crate!Y.impl&__2.arrow_0.?_pre_post_definition
)))

;; Function-Axioms test_crate::Y::Config::arrow_dummy_to_use_type_params_0
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%2.arrow_dummy_to_use_type_params_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%2.arrow_dummy_to_use_type_params_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%2.arrow_dummy_to_use_type_params_0.? self!) (test_crate!Y.Config./dummy_to_use_type_params/0
      (%Poly%test_crate!Y.Config. self!)
    ))
    :pattern ((test_crate!Y.impl&%2.arrow_dummy_to_use_type_params_0.? self!))
    :qid internal_test_crate!Y.impl&__2.arrow_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__2.arrow_dummy_to_use_type_params_0.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%test_crate!Y.Config.)
    (has_type (Poly%test_crate!Y.State. (test_crate!Y.impl&%2.arrow_dummy_to_use_type_params_0.?
       self!
      )
     ) TYPE%test_crate!Y.State.
   ))
   :pattern ((test_crate!Y.impl&%2.arrow_dummy_to_use_type_params_0.? self!))
   :qid internal_test_crate!Y.impl&__2.arrow_dummy_to_use_type_params_0.?_pre_post_definition
   :skolemid skolem_internal_test_crate!Y.impl&__2.arrow_dummy_to_use_type_params_0.?_pre_post_definition
)))

;; Function-Axioms test_crate::Y::Config::is_dummy_to_use_type_params
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%3.is_dummy_to_use_type_params.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%3.is_dummy_to_use_type_params.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%3.is_dummy_to_use_type_params.? self!) (is-test_crate!Y.Config./dummy_to_use_type_params
      (%Poly%test_crate!Y.Config. self!)
    ))
    :pattern ((test_crate!Y.impl&%3.is_dummy_to_use_type_params.? self!))
    :qid internal_test_crate!Y.impl&__3.is_dummy_to_use_type_params.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__3.is_dummy_to_use_type_params.?_definition
))))

;; Function-Axioms test_crate::Y::Config::get_dummy_to_use_type_params_0
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%3.get_dummy_to_use_type_params_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%3.get_dummy_to_use_type_params_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%3.get_dummy_to_use_type_params_0.? self!) (test_crate!Y.Config./dummy_to_use_type_params/0
      (%Poly%test_crate!Y.Config. self!)
    ))
    :pattern ((test_crate!Y.impl&%3.get_dummy_to_use_type_params_0.? self!))
    :qid internal_test_crate!Y.impl&__3.get_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__3.get_dummy_to_use_type_params_0.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%test_crate!Y.Config.)
    (has_type (Poly%test_crate!Y.State. (test_crate!Y.impl&%3.get_dummy_to_use_type_params_0.?
       self!
      )
     ) TYPE%test_crate!Y.State.
   ))
   :pattern ((test_crate!Y.impl&%3.get_dummy_to_use_type_params_0.? self!))
   :qid internal_test_crate!Y.impl&__3.get_dummy_to_use_type_params_0.?_pre_post_definition
   :skolemid skolem_internal_test_crate!Y.impl&__3.get_dummy_to_use_type_params_0.?_pre_post_definition
)))

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

;; Function-Axioms test_crate::Y::State::tr1_enabled
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%15.tr1_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.tr1_enabled.)
  (forall ((pre! Poly)) (!
    (= (test_crate!Y.impl&%15.tr1_enabled.? pre!) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_opt$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
       (let
        ((update_tmp_map$ (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. pre!))))
        (let
         ((update_tmp_mset$ (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. pre!))))
         (and
          (= update_tmp_opt$ (core!option.Option./Some (I 5)))
          (let
           ((update_tmp_opt$1 core!option.Option./None))
           (let
            ((tmp_assert$1 (and
               tmp_assert$
               (is-core!option.Option./None update_tmp_opt$1)
            )))
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
                  (=>
                   tmp_assert$2
                   (>= (vstd!multiset.impl&%0.count.? $ INT (Poly%vstd!multiset.Multiset<int.>. update_tmp_mset$1)
                     (I 11)
                    ) 1
    ))))))))))))))))
    :pattern ((test_crate!Y.impl&%15.tr1_enabled.? pre!))
    :qid internal_test_crate!Y.impl&__15.tr1_enabled.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.tr1_enabled.?_definition
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

;; Function-Axioms test_crate::Y::State::tr2_enabled
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%15.tr2_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.tr2_enabled.)
  (forall ((pre! Poly)) (!
    (= (test_crate!Y.impl&%15.tr2_enabled.? pre!) (let
      ((update_tmp_opt$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
      (= update_tmp_opt$ (core!option.Option./Some (I 7)))
    ))
    :pattern ((test_crate!Y.impl&%15.tr2_enabled.? pre!))
    :qid internal_test_crate!Y.impl&__15.tr2_enabled.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.tr2_enabled.?_definition
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

;; Function-Axioms test_crate::Y::State::tr3_enabled
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%15.tr3_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.tr3_enabled.)
  (forall ((pre! Poly)) (!
    (= (test_crate!Y.impl&%15.tr3_enabled.? pre!) (let
      ((update_tmp_opt$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
      (= update_tmp_opt$ (core!option.Option./Some (I 7)))
    ))
    :pattern ((test_crate!Y.impl&%15.tr3_enabled.? pre!))
    :qid internal_test_crate!Y.impl&__15.tr3_enabled.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.tr3_enabled.?_definition
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

;; Function-Axioms test_crate::Y::State::tr4_enabled
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%15.tr4_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.tr4_enabled.)
  (forall ((pre! Poly)) (!
    (= (test_crate!Y.impl&%15.tr4_enabled.? pre!) true)
    :pattern ((test_crate!Y.impl&%15.tr4_enabled.? pre!))
    :qid internal_test_crate!Y.impl&__15.tr4_enabled.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.tr4_enabled.?_definition
))))

;; Function-Axioms test_crate::Y::State::next_strong_by
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.next_strong_by.)
  (forall ((pre! Poly) (post! Poly) (step! Poly)) (!
    (= (test_crate!Y.impl&%15.next_strong_by.? pre! post! step!) (ite
      (is-test_crate!Y.Step./tr1 (%Poly%test_crate!Y.Step. step!))
      (test_crate!Y.impl&%15.tr1_strong.? pre! post!)
      (ite
       (is-test_crate!Y.Step./tr2 (%Poly%test_crate!Y.Step. step!))
       (test_crate!Y.impl&%15.tr2_strong.? pre! post!)
       (ite
        (is-test_crate!Y.Step./tr3 (%Poly%test_crate!Y.Step. step!))
        (test_crate!Y.impl&%15.tr3_strong.? pre! post!)
        (and
         (is-test_crate!Y.Step./tr4 (%Poly%test_crate!Y.Step. step!))
         (test_crate!Y.impl&%15.tr4_strong.? pre! post!)
    )))))
    :pattern ((test_crate!Y.impl&%15.next_strong_by.? pre! post! step!))
    :qid internal_test_crate!Y.impl&__15.next_strong_by.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.next_strong_by.?_definition
))))

;; Function-Axioms test_crate::Y::State::next_strong
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.next_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%15.next_strong.? pre! post!) (exists ((step$ Poly)) (!
       (and
        (has_type step$ TYPE%test_crate!Y.Step.)
        (test_crate!Y.impl&%15.next_strong_by.? pre! post! step$)
       )
       :pattern ((test_crate!Y.impl&%15.next_strong_by.? pre! post! step$))
       :qid user_test_crate__Y__State__next_strong_36
       :skolemid skolem_user_test_crate__Y__State__next_strong_36
    )))
    :pattern ((test_crate!Y.impl&%15.next_strong.? pre! post!))
    :qid internal_test_crate!Y.impl&__15.next_strong.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.next_strong.?_definition
))))

;; Function-Axioms test_crate::Y::State::init_by
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.init_by.)
  (forall ((post! Poly) (step! Poly)) (!
    (= (test_crate!Y.impl&%15.init_by.? post! step!) false)
    :pattern ((test_crate!Y.impl&%15.init_by.? post! step!))
    :qid internal_test_crate!Y.impl&__15.init_by.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.init_by.?_definition
))))

;; Function-Axioms test_crate::Y::State::init
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.init.)
  (forall ((post! Poly)) (!
    (= (test_crate!Y.impl&%15.init.? post!) (exists ((step$ Poly)) (!
       (and
        (has_type step$ TYPE%test_crate!Y.Config.)
        (test_crate!Y.impl&%15.init_by.? post! step$)
       )
       :pattern ((test_crate!Y.impl&%15.init_by.? post! step$))
       :qid user_test_crate__Y__State__init_37
       :skolemid skolem_user_test_crate__Y__State__init_37
    )))
    :pattern ((test_crate!Y.impl&%15.init.? post!))
    :qid internal_test_crate!Y.impl&__15.init.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.init.?_definition
))))

;; Function-Axioms test_crate::Y::State::invariant
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%15.invariant.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%15.invariant.)
  (forall ((self! Poly)) (!
    (= (test_crate!Y.impl&%15.invariant.? self!) true)
    :pattern ((test_crate!Y.impl&%15.invariant.? self!))
    :qid internal_test_crate!Y.impl&__15.invariant.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__15.invariant.?_definition
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
   (=>
    (tr_bound%core!clone.Clone. T&. T&)
    (tr_bound%core!clone.Clone. $ (TYPE%core!option.Option. T&. T&))
   )
   :pattern ((tr_bound%core!clone.Clone. $ (TYPE%core!option.Option. T&. T&)))
   :qid internal_core__option__impl&__5_trait_impl_definition
   :skolemid skolem_internal_core__option__impl&__5_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!clone.Clone. $ (TYPE%vstd!state_machine_internal.SyncSendIfSyncSend.
     T&. T&
   ))
   :pattern ((tr_bound%core!clone.Clone. $ (TYPE%vstd!state_machine_internal.SyncSendIfSyncSend.
      T&. T&
   )))
   :qid internal_vstd__state_machine_internal__impl&__0_trait_impl_definition
   :skolemid skolem_internal_vstd__state_machine_internal__impl&__0_trait_impl_definition
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

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!tokens.ValueToken. $ TYPE%test_crate!Y.opt. $ INT)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!tokens.UniqueValueToken. $ TYPE%test_crate!Y.opt. $ INT)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!tokens.KeyValueToken. $ TYPE%test_crate!Y.map. $ INT $ INT)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!tokens.UniqueKeyValueToken. $ TYPE%test_crate!Y.map. $ INT $ INT)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!tokens.ElementToken. $ TYPE%test_crate!Y.mset. $ INT)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ TYPE%test_crate!Y.Instance.)
)

;; Function-Def test_crate::Y::State::tr1_asserts
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special/test.rs:35:1: 94:3 (#42)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!Y.State.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Bool)
 (declare-const tmp%6 Bool)
 (declare-const update_tmp_opt@ core!option.Option.)
 (declare-const update_tmp_map@ vstd!map.Map<int./int.>.)
 (declare-const update_tmp_mset@ vstd!multiset.Multiset<int.>.)
 (declare-const update_tmp_storage_opt@ core!option.Option.)
 (declare-const update_tmp_storage_map@ vstd!map.Map<int./int.>.)
 (declare-const update_tmp_opt$1@ core!option.Option.)
 (declare-const update_tmp_opt$2@ core!option.Option.)
 (declare-const update_tmp_map$1@ vstd!map.Map<int./int.>.)
 (declare-const update_tmp_map$2@ vstd!map.Map<int./int.>.)
 (declare-const update_tmp_mset$1@ vstd!multiset.Multiset<int.>.)
 (declare-const update_tmp_mset$2@ vstd!multiset.Multiset<int.>.)
 (declare-const update_tmp_storage_opt$1@ core!option.Option.)
 (declare-const update_tmp_storage_opt$2@ core!option.Option.)
 (declare-const update_tmp_storage_map$1@ vstd!map.Map<int./int.>.)
 (declare-const update_tmp_storage_map$2@ vstd!map.Map<int./int.>.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%test_crate!Y.State. pre!) TYPE%test_crate!Y.State.)
 )
 ;; unable to prove inherent safety condition: to add a value Some(_), field must be None before the update
 (declare-const %%location_label%%0 Bool)
 ;; unable to prove inherent safety condition: to deposit a value into Some(_), the field must be None before the deposit
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (test_crate!Y.impl&%15.invariant.? (Poly%test_crate!Y.State. pre!))
    (=>
     (= update_tmp_opt@ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. (Poly%test_crate!Y.State.
         pre!
     ))))
     (=>
      (= update_tmp_map@ (test_crate!Y.State./State/map (%Poly%test_crate!Y.State. (Poly%test_crate!Y.State.
          pre!
      ))))
      (=>
       (= update_tmp_mset@ (test_crate!Y.State./State/mset (%Poly%test_crate!Y.State. (Poly%test_crate!Y.State.
           pre!
       ))))
       (=>
        (= update_tmp_storage_opt@ (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State.
           (Poly%test_crate!Y.State. pre!)
        )))
        (=>
         (= update_tmp_storage_map@ (test_crate!Y.State./State/storage_map (%Poly%test_crate!Y.State.
            (Poly%test_crate!Y.State. pre!)
         )))
         (=>
          (= update_tmp_opt@ (core!option.Option./Some (I 5)))
          (=>
           (= update_tmp_opt$1@ core!option.Option./None)
           (=>
            (= tmp%1 (is-core!option.Option./None update_tmp_opt$1@))
            (and
             (=>
              %%location_label%%0
              (req%vstd!state_machine_internal.assert_add_option. tmp%1)
             )
             (=>
              (ens%vstd!state_machine_internal.assert_add_option. tmp%1)
              (=>
               (= update_tmp_opt$2@ (core!option.Option./Some (I 8)))
               (=>
                (vstd!map_lib.impl&%0.contains_pair.? $ INT $ INT (Poly%vstd!map.Map<int./int.>. update_tmp_map@)
                 (I 0) (I 1)
                )
                (=>
                 (= update_tmp_map$1@ (%Poly%vstd!map.Map<int./int.>. (vstd!map.impl&%0.remove.? $ INT
                    $ INT (Poly%vstd!map.Map<int./int.>. update_tmp_map@) (I 0)
                 )))
                 (=>
                  (vstd!map_lib.impl&%0.contains_pair.? $ INT $ INT (Poly%vstd!map.Map<int./int.>. update_tmp_map$1@)
                   (I 2) (I 3)
                  )
                  (=>
                   (not (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ INT (Poly%vstd!map.Map<int./int.>.
                       update_tmp_map$1@
                      )
                     ) (I 4)
                   ))
                   (=>
                    (= update_tmp_map$2@ (%Poly%vstd!map.Map<int./int.>. (vstd!map.impl&%0.insert.? $ INT
                       $ INT (Poly%vstd!map.Map<int./int.>. update_tmp_map$1@) (I 4) (I 5)
                    )))
                    (=>
                     (>= (vstd!multiset.impl&%0.count.? $ INT (Poly%vstd!multiset.Multiset<int.>. update_tmp_mset@)
                       (I 10)
                      ) 1
                     )
                     (=>
                      (= update_tmp_mset$1@ (%Poly%vstd!multiset.Multiset<int.>. (vstd!multiset.impl&%0.remove.?
                         $ INT (Poly%vstd!multiset.Multiset<int.>. update_tmp_mset@) (I 10)
                      )))
                      (=>
                       (>= (vstd!multiset.impl&%0.count.? $ INT (Poly%vstd!multiset.Multiset<int.>. update_tmp_mset$1@)
                         (I 11)
                        ) 1
                       )
                       (=>
                        (= update_tmp_mset$2@ (%Poly%vstd!multiset.Multiset<int.>. (vstd!multiset.impl&%0.insert.?
                           $ INT (Poly%vstd!multiset.Multiset<int.>. update_tmp_mset$1@) (I 12)
                        )))
                        (=>
                         (= update_tmp_storage_opt@ (core!option.Option./Some (I 13)))
                         (=>
                          (= update_tmp_storage_opt$1@ core!option.Option./None)
                          (=>
                           (= tmp%4 (is-core!option.Option./None update_tmp_storage_opt$1@))
                           (=>
                            %%location_label%%1
                            (req%vstd!state_machine_internal.assert_deposit_option. tmp%4)
 )))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::Y::State::tr2_asserts
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special/test.rs:35:1: 94:3 (#42)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!Y.State.)
 (declare-const tmp%1 Bool)
 (declare-const update_tmp_opt@ core!option.Option.)
 (declare-const update_tmp_map@ vstd!map.Map<int./int.>.)
 (declare-const update_tmp_mset@ vstd!multiset.Multiset<int.>.)
 (declare-const update_tmp_storage_opt@ core!option.Option.)
 (declare-const update_tmp_storage_map@ vstd!map.Map<int./int.>.)
 (declare-const update_tmp_map$1@ vstd!map.Map<int./int.>.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%test_crate!Y.State. pre!) TYPE%test_crate!Y.State.)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::Y::State::tr3_asserts
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special/test.rs:35:1: 94:3 (#42)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!Y.State.)
 (declare-const tmp%1 Bool)
 (declare-const update_tmp_opt@ core!option.Option.)
 (declare-const update_tmp_map@ vstd!map.Map<int./int.>.)
 (declare-const update_tmp_mset@ vstd!multiset.Multiset<int.>.)
 (declare-const update_tmp_storage_opt@ core!option.Option.)
 (declare-const update_tmp_storage_map@ vstd!map.Map<int./int.>.)
 (declare-const update_tmp_opt$1@ core!option.Option.)
 (declare-const update_tmp_storage_opt$1@ core!option.Option.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%test_crate!Y.State. pre!) TYPE%test_crate!Y.State.)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::Y::State::tr4_asserts
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_special/test.rs:35:1: 94:3 (#42)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!Y.State.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const update_tmp_opt@ core!option.Option.)
 (declare-const update_tmp_map@ vstd!map.Map<int./int.>.)
 (declare-const update_tmp_mset@ vstd!multiset.Multiset<int.>.)
 (declare-const update_tmp_storage_opt@ core!option.Option.)
 (declare-const update_tmp_storage_map@ vstd!map.Map<int./int.>.)
 (declare-const update_tmp_opt$1@ core!option.Option.)
 (declare-const update_tmp_storage_opt$1@ core!option.Option.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%test_crate!Y.State. pre!) TYPE%test_crate!Y.State.)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::Y::Instance::tr1
(declare-fun req%test_crate!Y.impl&%12.tr1. (test_crate!Y.Instance. test_crate!Y.opt.
  test_crate!Y.map. test_crate!Y.map. test_crate!Y.mset. test_crate!Y.mset. Int Int
 ) Bool
)
(declare-const %%global_location_label%%6 Bool)
(declare-const %%global_location_label%%7 Bool)
(declare-const %%global_location_label%%8 Bool)
(declare-const %%global_location_label%%9 Bool)
(declare-const %%global_location_label%%10 Bool)
(declare-const %%global_location_label%%11 Bool)
(declare-const %%global_location_label%%12 Bool)
(declare-const %%global_location_label%%13 Bool)
(declare-const %%global_location_label%%14 Bool)
(declare-const %%global_location_label%%15 Bool)
(declare-const %%global_location_label%%16 Bool)
(declare-const %%global_location_label%%17 Bool)
(assert
 (forall ((self! test_crate!Y.Instance.) (param_token_0_opt! test_crate!Y.opt.) (param_token_2_map!
    test_crate!Y.map.
   ) (param_token_3_map! test_crate!Y.map.) (param_token_5_mset! test_crate!Y.mset.)
   (param_token_6_mset! test_crate!Y.mset.) (param_token_9_storage_opt! Int) (param_token_11_storage_map!
    Int
   )
  ) (!
   (= (req%test_crate!Y.impl&%12.tr1. self! param_token_0_opt! param_token_2_map! param_token_3_map!
     param_token_5_mset! param_token_6_mset! param_token_9_storage_opt! param_token_11_storage_map!
    ) (and
     (=>
      %%global_location_label%%6
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt.
         $ INT (Poly%test_crate!Y.opt. param_token_0_opt!)
        )
       ) (test_crate!Y.impl&%12.id.? (Poly%test_crate!Y.Instance. self!))
     ))
     (=>
      %%global_location_label%%7
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.KeyValueToken.instance_id.? $ TYPE%test_crate!Y.map.
         $ INT $ INT (Poly%test_crate!Y.map. param_token_2_map!)
        )
       ) (test_crate!Y.impl&%12.id.? (Poly%test_crate!Y.Instance. self!))
     ))
     (=>
      %%global_location_label%%8
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.KeyValueToken.instance_id.? $ TYPE%test_crate!Y.map.
         $ INT $ INT (Poly%test_crate!Y.map. param_token_3_map!)
        )
       ) (test_crate!Y.impl&%12.id.? (Poly%test_crate!Y.Instance. self!))
     ))
     (=>
      %%global_location_label%%9
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ElementToken.instance_id.? $ TYPE%test_crate!Y.mset.
         $ INT (Poly%test_crate!Y.mset. param_token_5_mset!)
        )
       ) (test_crate!Y.impl&%12.id.? (Poly%test_crate!Y.Instance. self!))
     ))
     (=>
      %%global_location_label%%10
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ElementToken.instance_id.? $ TYPE%test_crate!Y.mset.
         $ INT (Poly%test_crate!Y.mset. param_token_6_mset!)
        )
       ) (test_crate!Y.impl&%12.id.? (Poly%test_crate!Y.Instance. self!))
     ))
     (=>
      %%global_location_label%%11
      (= (%I (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt. $ INT (Poly%test_crate!Y.opt.
          param_token_0_opt!
        ))
       ) 5
     ))
     (=>
      %%global_location_label%%12
      (and
       (= (%I (vstd!tokens.KeyValueToken.key.? $ TYPE%test_crate!Y.map. $ INT $ INT (Poly%test_crate!Y.map.
           param_token_2_map!
         ))
        ) 0
       )
       (= (%I (vstd!tokens.KeyValueToken.value.? $ TYPE%test_crate!Y.map. $ INT $ INT (Poly%test_crate!Y.map.
           param_token_2_map!
         ))
        ) 1
     )))
     (=>
      %%global_location_label%%13
      (and
       (= (%I (vstd!tokens.KeyValueToken.key.? $ TYPE%test_crate!Y.map. $ INT $ INT (Poly%test_crate!Y.map.
           param_token_3_map!
         ))
        ) 2
       )
       (= (%I (vstd!tokens.KeyValueToken.value.? $ TYPE%test_crate!Y.map. $ INT $ INT (Poly%test_crate!Y.map.
           param_token_3_map!
         ))
        ) 3
     )))
     (=>
      %%global_location_label%%14
      (= (%I (vstd!tokens.ElementToken.element.? $ TYPE%test_crate!Y.mset. $ INT (Poly%test_crate!Y.mset.
          param_token_5_mset!
        ))
       ) 10
     ))
     (=>
      %%global_location_label%%15
      (= (%I (vstd!tokens.ElementToken.element.? $ TYPE%test_crate!Y.mset. $ INT (Poly%test_crate!Y.mset.
          param_token_6_mset!
        ))
       ) 11
     ))
     (=>
      %%global_location_label%%16
      (= param_token_9_storage_opt! 14)
     )
     (=>
      %%global_location_label%%17
      (= param_token_11_storage_map! 18)
   )))
   :pattern ((req%test_crate!Y.impl&%12.tr1. self! param_token_0_opt! param_token_2_map!
     param_token_3_map! param_token_5_mset! param_token_6_mset! param_token_9_storage_opt!
     param_token_11_storage_map!
   ))
   :qid internal_req__test_crate!Y.impl&__12.tr1._definition
   :skolemid skolem_internal_req__test_crate!Y.impl&__12.tr1._definition
)))
(declare-fun ens%test_crate!Y.impl&%12.tr1. (test_crate!Y.Instance. test_crate!Y.opt.
  test_crate!Y.map. test_crate!Y.map. test_crate!Y.mset. test_crate!Y.mset. Int Int
  tuple%5.
 ) Bool
)
(assert
 (forall ((self! test_crate!Y.Instance.) (param_token_0_opt! test_crate!Y.opt.) (param_token_2_map!
    test_crate!Y.map.
   ) (param_token_3_map! test_crate!Y.map.) (param_token_5_mset! test_crate!Y.mset.)
   (param_token_6_mset! test_crate!Y.mset.) (param_token_9_storage_opt! Int) (param_token_11_storage_map!
    Int
   ) (tmp_tuple! tuple%5.)
  ) (!
   (= (ens%test_crate!Y.impl&%12.tr1. self! param_token_0_opt! param_token_2_map! param_token_3_map!
     param_token_5_mset! param_token_6_mset! param_token_9_storage_opt! param_token_11_storage_map!
     tmp_tuple!
    ) (and
     (has_type (Poly%tuple%5. tmp_tuple!) (TYPE%tuple%5. (TRACKED $) TYPE%test_crate!Y.opt.
       (TRACKED $) TYPE%test_crate!Y.map. (TRACKED $) TYPE%test_crate!Y.mset. (TRACKED $)
       INT (TRACKED $) INT
     ))
     (let
      ((param_token_1_opt$ (%Poly%test_crate!Y.opt. (tuple%5./tuple%5/0 (%Poly%tuple%5. (Poly%tuple%5.
            tmp_tuple!
      ))))))
      (let
       ((param_token_4_map$ (%Poly%test_crate!Y.map. (tuple%5./tuple%5/1 (%Poly%tuple%5. (Poly%tuple%5.
             tmp_tuple!
       ))))))
       (let
        ((param_token_7_mset$ (%Poly%test_crate!Y.mset. (tuple%5./tuple%5/2 (%Poly%tuple%5. (Poly%tuple%5.
              tmp_tuple!
        ))))))
        (let
         ((param_token_8_storage_opt$ (%I (tuple%5./tuple%5/3 (%Poly%tuple%5. (Poly%tuple%5. tmp_tuple!))))))
         (let
          ((param_token_10_storage_map$ (%I (tuple%5./tuple%5/4 (%Poly%tuple%5. (Poly%tuple%5. tmp_tuple!))))))
          (let
           ((param_token_1_opt$1 param_token_1_opt$))
           (let
            ((param_token_4_map$1 param_token_4_map$))
            (let
             ((param_token_7_mset$1 param_token_7_mset$))
             (let
              ((param_token_8_storage_opt$1 param_token_8_storage_opt$))
              (let
               ((param_token_10_storage_map$1 param_token_10_storage_map$))
               (and
                (and
                 (and
                  (and
                   (and
                    (and
                     (and
                      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt.
                         $ INT (Poly%test_crate!Y.opt. param_token_1_opt$1)
                        )
                       ) (test_crate!Y.impl&%12.id.? (Poly%test_crate!Y.Instance. self!))
                      )
                      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.KeyValueToken.instance_id.? $ TYPE%test_crate!Y.map.
                         $ INT $ INT (Poly%test_crate!Y.map. param_token_4_map$1)
                        )
                       ) (test_crate!Y.impl&%12.id.? (Poly%test_crate!Y.Instance. self!))
                     ))
                     (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ElementToken.instance_id.? $ TYPE%test_crate!Y.mset.
                        $ INT (Poly%test_crate!Y.mset. param_token_7_mset$1)
                       )
                      ) (test_crate!Y.impl&%12.id.? (Poly%test_crate!Y.Instance. self!))
                    ))
                    (= (%I (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt. $ INT (Poly%test_crate!Y.opt.
                        param_token_1_opt$1
                      ))
                     ) 8
                   ))
                   (and
                    (= (%I (vstd!tokens.KeyValueToken.key.? $ TYPE%test_crate!Y.map. $ INT $ INT (Poly%test_crate!Y.map.
                        param_token_4_map$1
                      ))
                     ) 4
                    )
                    (= (%I (vstd!tokens.KeyValueToken.value.? $ TYPE%test_crate!Y.map. $ INT $ INT (Poly%test_crate!Y.map.
                        param_token_4_map$1
                      ))
                     ) 5
                  )))
                  (= (%I (vstd!tokens.ElementToken.element.? $ TYPE%test_crate!Y.mset. $ INT (Poly%test_crate!Y.mset.
                      param_token_7_mset$1
                    ))
                   ) 12
                 ))
                 (= param_token_8_storage_opt$1 13)
                )
                (= param_token_10_storage_map$1 16)
   )))))))))))))
   :pattern ((ens%test_crate!Y.impl&%12.tr1. self! param_token_0_opt! param_token_2_map!
     param_token_3_map! param_token_5_mset! param_token_6_mset! param_token_9_storage_opt!
     param_token_11_storage_map! tmp_tuple!
   ))
   :qid internal_ens__test_crate!Y.impl&__12.tr1._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__12.tr1._definition
)))

;; Function-Specs test_crate::Y::Instance::tr2
(declare-fun req%test_crate!Y.impl&%12.tr2. (test_crate!Y.Instance. test_crate!Y.opt.)
 Bool
)
(declare-const %%global_location_label%%18 Bool)
(declare-const %%global_location_label%%19 Bool)
(assert
 (forall ((self! test_crate!Y.Instance.) (param_token_0_opt! test_crate!Y.opt.)) (!
   (= (req%test_crate!Y.impl&%12.tr2. self! param_token_0_opt!) (and
     (=>
      %%global_location_label%%18
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt.
         $ INT (Poly%test_crate!Y.opt. param_token_0_opt!)
        )
       ) (test_crate!Y.impl&%12.id.? (Poly%test_crate!Y.Instance. self!))
     ))
     (=>
      %%global_location_label%%19
      (= (%I (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt. $ INT (Poly%test_crate!Y.opt.
          param_token_0_opt!
        ))
       ) 7
   ))))
   :pattern ((req%test_crate!Y.impl&%12.tr2. self! param_token_0_opt!))
   :qid internal_req__test_crate!Y.impl&__12.tr2._definition
   :skolemid skolem_internal_req__test_crate!Y.impl&__12.tr2._definition
)))
(declare-fun ens%test_crate!Y.impl&%12.tr2. (test_crate!Y.Instance. test_crate!Y.opt.
  test_crate!Y.map.
 ) Bool
)
(assert
 (forall ((self! test_crate!Y.Instance.) (param_token_0_opt! test_crate!Y.opt.) (param_token_1_map!
    test_crate!Y.map.
   )
  ) (!
   (= (ens%test_crate!Y.impl&%12.tr2. self! param_token_0_opt! param_token_1_map!) (and
     (has_type (Poly%test_crate!Y.map. param_token_1_map!) TYPE%test_crate!Y.map.)
     (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.KeyValueToken.instance_id.? $ TYPE%test_crate!Y.map.
        $ INT $ INT (Poly%test_crate!Y.map. param_token_1_map!)
       )
      ) (test_crate!Y.impl&%12.id.? (Poly%test_crate!Y.Instance. self!))
     )
     (and
      (= (%I (vstd!tokens.KeyValueToken.key.? $ TYPE%test_crate!Y.map. $ INT $ INT (Poly%test_crate!Y.map.
          param_token_1_map!
        ))
       ) 4
      )
      (= (%I (vstd!tokens.KeyValueToken.value.? $ TYPE%test_crate!Y.map. $ INT $ INT (Poly%test_crate!Y.map.
          param_token_1_map!
        ))
       ) 5
   ))))
   :pattern ((ens%test_crate!Y.impl&%12.tr2. self! param_token_0_opt! param_token_1_map!))
   :qid internal_ens__test_crate!Y.impl&__12.tr2._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__12.tr2._definition
)))

;; Function-Specs test_crate::Y::Instance::tr3
(declare-fun req%test_crate!Y.impl&%12.tr3. (test_crate!Y.Instance. test_crate!Y.opt.)
 Bool
)
(declare-const %%global_location_label%%20 Bool)
(declare-const %%global_location_label%%21 Bool)
(assert
 (forall ((self! test_crate!Y.Instance.) (param_token_0_opt! test_crate!Y.opt.)) (!
   (= (req%test_crate!Y.impl&%12.tr3. self! param_token_0_opt!) (and
     (=>
      %%global_location_label%%20
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt.
         $ INT (Poly%test_crate!Y.opt. param_token_0_opt!)
        )
       ) (test_crate!Y.impl&%12.id.? (Poly%test_crate!Y.Instance. self!))
     ))
     (=>
      %%global_location_label%%21
      (= (%I (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt. $ INT (Poly%test_crate!Y.opt.
          param_token_0_opt!
        ))
       ) 7
   ))))
   :pattern ((req%test_crate!Y.impl&%12.tr3. self! param_token_0_opt!))
   :qid internal_req__test_crate!Y.impl&__12.tr3._definition
   :skolemid skolem_internal_req__test_crate!Y.impl&__12.tr3._definition
)))
(declare-fun ens%test_crate!Y.impl&%12.tr3. (test_crate!Y.Instance. test_crate!Y.opt.
  Int
 ) Bool
)
(assert
 (forall ((self! test_crate!Y.Instance.) (param_token_0_opt! test_crate!Y.opt.) (param_token_1_storage_opt!
    Int
   )
  ) (!
   (= (ens%test_crate!Y.impl&%12.tr3. self! param_token_0_opt! param_token_1_storage_opt!)
    (= param_token_1_storage_opt! 12)
   )
   :pattern ((ens%test_crate!Y.impl&%12.tr3. self! param_token_0_opt! param_token_1_storage_opt!))
   :qid internal_ens__test_crate!Y.impl&__12.tr3._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__12.tr3._definition
)))

;; Function-Specs test_crate::Y::Instance::tr4
(declare-fun req%test_crate!Y.impl&%12.tr4. (test_crate!Y.Instance. Int) Bool)
(declare-const %%global_location_label%%22 Bool)
(assert
 (forall ((self! test_crate!Y.Instance.) (param_token_1_storage_opt! Int)) (!
   (= (req%test_crate!Y.impl&%12.tr4. self! param_token_1_storage_opt!) (=>
     %%global_location_label%%22
     (= param_token_1_storage_opt! 12)
   ))
   :pattern ((req%test_crate!Y.impl&%12.tr4. self! param_token_1_storage_opt!))
   :qid internal_req__test_crate!Y.impl&__12.tr4._definition
   :skolemid skolem_internal_req__test_crate!Y.impl&__12.tr4._definition
)))
(declare-fun ens%test_crate!Y.impl&%12.tr4. (test_crate!Y.Instance. Int test_crate!Y.opt.)
 Bool
)
(assert
 (forall ((self! test_crate!Y.Instance.) (param_token_1_storage_opt! Int) (param_token_0_opt!
    test_crate!Y.opt.
   )
  ) (!
   (= (ens%test_crate!Y.impl&%12.tr4. self! param_token_1_storage_opt! param_token_0_opt!)
    (and
     (has_type (Poly%test_crate!Y.opt. param_token_0_opt!) TYPE%test_crate!Y.opt.)
     (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt.
        $ INT (Poly%test_crate!Y.opt. param_token_0_opt!)
       )
      ) (test_crate!Y.impl&%12.id.? (Poly%test_crate!Y.Instance. self!))
     )
     (= (%I (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt. $ INT (Poly%test_crate!Y.opt.
         param_token_0_opt!
       ))
      ) 7
   )))
   :pattern ((ens%test_crate!Y.impl&%12.tr4. self! param_token_1_storage_opt! param_token_0_opt!))
   :qid internal_ens__test_crate!Y.impl&__12.tr4._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__12.tr4._definition
)))
