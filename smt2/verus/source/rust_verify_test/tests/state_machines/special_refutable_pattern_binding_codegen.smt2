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
(declare-const fuel%vstd!std_specs.option.impl&%0.get_Some_0. FuelId)
(declare-const fuel%vstd!std_specs.option.is_some. FuelId)
(declare-const fuel%vstd!std_specs.option.is_none. FuelId)
(declare-const fuel%vstd!std_specs.option.spec_unwrap. FuelId)
(declare-const fuel%vstd!map.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd!map.axiom_map_index_decreases_finite. FuelId)
(declare-const fuel%vstd!map.axiom_map_index_decreases_infinite. FuelId)
(declare-const fuel%vstd!map.axiom_map_empty. FuelId)
(declare-const fuel%vstd!map.axiom_map_insert_domain. FuelId)
(declare-const fuel%vstd!map.axiom_map_insert_same. FuelId)
(declare-const fuel%vstd!map.axiom_map_insert_different. FuelId)
(declare-const fuel%vstd!map.axiom_map_remove_domain. FuelId)
(declare-const fuel%vstd!map.axiom_map_remove_different. FuelId)
(declare-const fuel%vstd!map.axiom_map_ext_equal. FuelId)
(declare-const fuel%vstd!map.axiom_map_ext_equal_deep. FuelId)
(declare-const fuel%vstd!set.axiom_set_empty. FuelId)
(declare-const fuel%vstd!set.axiom_set_insert_same. FuelId)
(declare-const fuel%vstd!set.axiom_set_insert_different. FuelId)
(declare-const fuel%vstd!set.axiom_set_remove_same. FuelId)
(declare-const fuel%vstd!set.axiom_set_remove_insert. FuelId)
(declare-const fuel%vstd!set.axiom_set_remove_different. FuelId)
(declare-const fuel%vstd!set.axiom_set_ext_equal. FuelId)
(declare-const fuel%vstd!set.axiom_set_ext_equal_deep. FuelId)
(declare-const fuel%vstd!set.axiom_set_empty_finite. FuelId)
(declare-const fuel%vstd!set.axiom_set_insert_finite. FuelId)
(declare-const fuel%vstd!set.axiom_set_remove_finite. FuelId)
(declare-const fuel%vstd!tokens.impl&%0.dom. FuelId)
(declare-const fuel%vstd!tokens.option_value_eq_option_token. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.tr1. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.tr1_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.tr2. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.tr2_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.tr3. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.tr3_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.tr4. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.tr4_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.tr5. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.tr5_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.tr6. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.tr6_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.tr7. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.tr7_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.tr8. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.tr8_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.tr9. FuelId)
(declare-const fuel%test_crate!Y.impl&%13.tr9_strong. FuelId)
(declare-const fuel%test_crate!impl&%0.arrow_Bar_0. FuelId)
(declare-const fuel%test_crate!impl&%0.arrow_Qax_0. FuelId)
(declare-const fuel%test_crate!impl&%0.arrow_Duck_0. FuelId)
(declare-const fuel%test_crate!impl&%1.arrow_1. FuelId)
(declare-const fuel%test_crate!impl&%1.arrow_Qux_0. FuelId)
(declare-const fuel%test_crate!impl&%1.arrow_Tal_0. FuelId)
(declare-const fuel%test_crate!impl&%1.arrow_Tal_1. FuelId)
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
(declare-const fuel%test_crate!rel_tr7. FuelId)
(declare-const fuel%test_crate!rel_tr7_strong. FuelId)
(declare-const fuel%test_crate!rel_tr8. FuelId)
(declare-const fuel%test_crate!rel_tr8_strong. FuelId)
(declare-const fuel%test_crate!rel_tr9. FuelId)
(declare-const fuel%test_crate!rel_tr9_strong. FuelId)
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
  fuel%vstd!std_specs.option.is_some. fuel%vstd!std_specs.option.is_none. fuel%vstd!std_specs.option.spec_unwrap.
  fuel%vstd!map.impl&%0.spec_index. fuel%vstd!map.axiom_map_index_decreases_finite.
  fuel%vstd!map.axiom_map_index_decreases_infinite. fuel%vstd!map.axiom_map_empty.
  fuel%vstd!map.axiom_map_insert_domain. fuel%vstd!map.axiom_map_insert_same. fuel%vstd!map.axiom_map_insert_different.
  fuel%vstd!map.axiom_map_remove_domain. fuel%vstd!map.axiom_map_remove_different.
  fuel%vstd!map.axiom_map_ext_equal. fuel%vstd!map.axiom_map_ext_equal_deep. fuel%vstd!set.axiom_set_empty.
  fuel%vstd!set.axiom_set_insert_same. fuel%vstd!set.axiom_set_insert_different. fuel%vstd!set.axiom_set_remove_same.
  fuel%vstd!set.axiom_set_remove_insert. fuel%vstd!set.axiom_set_remove_different.
  fuel%vstd!set.axiom_set_ext_equal. fuel%vstd!set.axiom_set_ext_equal_deep. fuel%vstd!set.axiom_set_empty_finite.
  fuel%vstd!set.axiom_set_insert_finite. fuel%vstd!set.axiom_set_remove_finite. fuel%vstd!tokens.impl&%0.dom.
  fuel%vstd!tokens.option_value_eq_option_token. fuel%test_crate!Y.impl&%13.tr1. fuel%test_crate!Y.impl&%13.tr1_strong.
  fuel%test_crate!Y.impl&%13.tr2. fuel%test_crate!Y.impl&%13.tr2_strong. fuel%test_crate!Y.impl&%13.tr3.
  fuel%test_crate!Y.impl&%13.tr3_strong. fuel%test_crate!Y.impl&%13.tr4. fuel%test_crate!Y.impl&%13.tr4_strong.
  fuel%test_crate!Y.impl&%13.tr5. fuel%test_crate!Y.impl&%13.tr5_strong. fuel%test_crate!Y.impl&%13.tr6.
  fuel%test_crate!Y.impl&%13.tr6_strong. fuel%test_crate!Y.impl&%13.tr7. fuel%test_crate!Y.impl&%13.tr7_strong.
  fuel%test_crate!Y.impl&%13.tr8. fuel%test_crate!Y.impl&%13.tr8_strong. fuel%test_crate!Y.impl&%13.tr9.
  fuel%test_crate!Y.impl&%13.tr9_strong. fuel%test_crate!impl&%0.arrow_Bar_0. fuel%test_crate!impl&%0.arrow_Qax_0.
  fuel%test_crate!impl&%0.arrow_Duck_0. fuel%test_crate!impl&%1.arrow_1. fuel%test_crate!impl&%1.arrow_Qux_0.
  fuel%test_crate!impl&%1.arrow_Tal_0. fuel%test_crate!impl&%1.arrow_Tal_1. fuel%test_crate!rel_tr1.
  fuel%test_crate!rel_tr1_strong. fuel%test_crate!rel_tr2. fuel%test_crate!rel_tr2_strong.
  fuel%test_crate!rel_tr3. fuel%test_crate!rel_tr3_strong. fuel%test_crate!rel_tr4.
  fuel%test_crate!rel_tr4_strong. fuel%test_crate!rel_tr5. fuel%test_crate!rel_tr5_strong.
  fuel%test_crate!rel_tr6. fuel%test_crate!rel_tr6_strong. fuel%test_crate!rel_tr7.
  fuel%test_crate!rel_tr7_strong. fuel%test_crate!rel_tr8. fuel%test_crate!rel_tr8_strong.
  fuel%test_crate!rel_tr9. fuel%test_crate!rel_tr9_strong. fuel%vstd!array.group_array_axioms.
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
   (fuel_bool_default fuel%vstd!map.axiom_map_remove_domain.)
   (fuel_bool_default fuel%vstd!map.axiom_map_remove_different.)
   (fuel_bool_default fuel%vstd!map.axiom_map_ext_equal.)
   (fuel_bool_default fuel%vstd!map.axiom_map_ext_equal_deep.)
)))
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
   (fuel_bool_default fuel%vstd!set.axiom_set_ext_equal.)
   (fuel_bool_default fuel%vstd!set.axiom_set_ext_equal_deep.)
   (fuel_bool_default fuel%vstd!set.axiom_set_empty_finite.)
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
(declare-sort test_crate!Y.Instance. 0)
(declare-sort test_crate!Y.m. 0)
(declare-sort test_crate!Y.opt. 0)
(declare-sort vstd!map.Map<int./test_crate!Goo.>. 0)
(declare-sort vstd!set.Set<int.>. 0)
(declare-sort vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>. 0)
(declare-datatypes ((core!option.Option. 0) (vstd!tokens.InstanceId. 0) (test_crate!Y.State.
   0
  ) (test_crate!Foo. 0) (test_crate!Goo. 0) (tuple%0. 0) (tuple%2. 0) (tuple%3. 0)
 ) (((core!option.Option./None) (core!option.Option./Some (core!option.Option./Some/?0
     Poly
   ))
  ) ((vstd!tokens.InstanceId./InstanceId (vstd!tokens.InstanceId./InstanceId/?0 Int)))
  ((test_crate!Y.State./State (test_crate!Y.State./State/?m vstd!map.Map<int./test_crate!Goo.>.)
    (test_crate!Y.State./State/?storage_m vstd!map.Map<int./test_crate!Goo.>.) (test_crate!Y.State./State/?opt
     core!option.Option.
    ) (test_crate!Y.State./State/?storage_opt core!option.Option.)
   )
  ) ((test_crate!Foo./Bar (test_crate!Foo./Bar/?0 Int)) (test_crate!Foo./Qax (test_crate!Foo./Qax/?0
     Int
    )
   ) (test_crate!Foo./Duck (test_crate!Foo./Duck/?0 Int))
  ) ((test_crate!Goo./Bar) (test_crate!Goo./Qux (test_crate!Goo./Qux/?0 Int)) (test_crate!Goo./Tal
    (test_crate!Goo./Tal/?0 Int) (test_crate!Goo./Tal/?1 Int)
   )
  ) ((tuple%0./tuple%0)) ((tuple%2./tuple%2 (tuple%2./tuple%2/?0 Poly) (tuple%2./tuple%2/?1
     Poly
   ))
  ) ((tuple%3./tuple%3 (tuple%3./tuple%3/?0 Poly) (tuple%3./tuple%3/?1 Poly) (tuple%3./tuple%3/?2
     Poly
)))))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun vstd!tokens.InstanceId./InstanceId/0 (vstd!tokens.InstanceId.) Int)
(declare-fun test_crate!Y.State./State/m (test_crate!Y.State.) vstd!map.Map<int./test_crate!Goo.>.)
(declare-fun test_crate!Y.State./State/storage_m (test_crate!Y.State.) vstd!map.Map<int./test_crate!Goo.>.)
(declare-fun test_crate!Y.State./State/opt (test_crate!Y.State.) core!option.Option.)
(declare-fun test_crate!Y.State./State/storage_opt (test_crate!Y.State.) core!option.Option.)
(declare-fun test_crate!Foo./Bar/0 (test_crate!Foo.) Int)
(declare-fun test_crate!Foo./Qax/0 (test_crate!Foo.) Int)
(declare-fun test_crate!Foo./Duck/0 (test_crate!Foo.) Int)
(declare-fun test_crate!Goo./Qux/0 (test_crate!Goo.) Int)
(declare-fun test_crate!Goo./Tal/0 (test_crate!Goo.) Int)
(declare-fun test_crate!Goo./Tal/1 (test_crate!Goo.) Int)
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-fun tuple%3./tuple%3/0 (tuple%3.) Poly)
(declare-fun tuple%3./tuple%3/1 (tuple%3.) Poly)
(declare-fun tuple%3./tuple%3/2 (tuple%3.) Poly)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-fun TYPE%vstd!map.Map. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd!set.Set. (Dcr Type) Type)
(declare-const TYPE%vstd!tokens.InstanceId. Type)
(declare-fun TYPE%vstd!tokens.MapToken. (Dcr Type Dcr Type Dcr Type) Type)
(declare-const TYPE%test_crate!Y.State. Type)
(declare-const TYPE%test_crate!Y.Instance. Type)
(declare-const TYPE%test_crate!Y.m. Type)
(declare-const TYPE%test_crate!Y.opt. Type)
(declare-const TYPE%test_crate!Foo. Type)
(declare-const TYPE%test_crate!Goo. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%2. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%tuple%3. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun Poly%test_crate!Y.Instance. (test_crate!Y.Instance.) Poly)
(declare-fun %Poly%test_crate!Y.Instance. (Poly) test_crate!Y.Instance.)
(declare-fun Poly%test_crate!Y.m. (test_crate!Y.m.) Poly)
(declare-fun %Poly%test_crate!Y.m. (Poly) test_crate!Y.m.)
(declare-fun Poly%test_crate!Y.opt. (test_crate!Y.opt.) Poly)
(declare-fun %Poly%test_crate!Y.opt. (Poly) test_crate!Y.opt.)
(declare-fun Poly%vstd!map.Map<int./test_crate!Goo.>. (vstd!map.Map<int./test_crate!Goo.>.)
 Poly
)
(declare-fun %Poly%vstd!map.Map<int./test_crate!Goo.>. (Poly) vstd!map.Map<int./test_crate!Goo.>.)
(declare-fun Poly%vstd!set.Set<int.>. (vstd!set.Set<int.>.) Poly)
(declare-fun %Poly%vstd!set.Set<int.>. (Poly) vstd!set.Set<int.>.)
(declare-fun Poly%vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>. (vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>.)
 Poly
)
(declare-fun %Poly%vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>. (Poly)
 vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>.
)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
(declare-fun Poly%vstd!tokens.InstanceId. (vstd!tokens.InstanceId.) Poly)
(declare-fun %Poly%vstd!tokens.InstanceId. (Poly) vstd!tokens.InstanceId.)
(declare-fun Poly%test_crate!Y.State. (test_crate!Y.State.) Poly)
(declare-fun %Poly%test_crate!Y.State. (Poly) test_crate!Y.State.)
(declare-fun Poly%test_crate!Foo. (test_crate!Foo.) Poly)
(declare-fun %Poly%test_crate!Foo. (Poly) test_crate!Foo.)
(declare-fun Poly%test_crate!Goo. (test_crate!Goo.) Poly)
(declare-fun %Poly%test_crate!Goo. (Poly) test_crate!Goo.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%2. (tuple%2.) Poly)
(declare-fun %Poly%tuple%2. (Poly) tuple%2.)
(declare-fun Poly%tuple%3. (tuple%3.) Poly)
(declare-fun %Poly%tuple%3. (Poly) tuple%3.)
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
 (forall ((x test_crate!Y.m.)) (!
   (= x (%Poly%test_crate!Y.m. (Poly%test_crate!Y.m. x)))
   :pattern ((Poly%test_crate!Y.m. x))
   :qid internal_test_crate__Y__m_box_axiom_definition
   :skolemid skolem_internal_test_crate__Y__m_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.m.)
    (= x (Poly%test_crate!Y.m. (%Poly%test_crate!Y.m. x)))
   )
   :pattern ((has_type x TYPE%test_crate!Y.m.))
   :qid internal_test_crate__Y__m_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__Y__m_unbox_axiom_definition
)))
(assert
 (forall ((x test_crate!Y.m.)) (!
   (has_type (Poly%test_crate!Y.m. x) TYPE%test_crate!Y.m.)
   :pattern ((has_type (Poly%test_crate!Y.m. x) TYPE%test_crate!Y.m.))
   :qid internal_test_crate__Y__m_has_type_always_definition
   :skolemid skolem_internal_test_crate__Y__m_has_type_always_definition
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
 (forall ((x test_crate!Y.opt.)) (!
   (has_type (Poly%test_crate!Y.opt. x) TYPE%test_crate!Y.opt.)
   :pattern ((has_type (Poly%test_crate!Y.opt. x) TYPE%test_crate!Y.opt.))
   :qid internal_test_crate__Y__opt_has_type_always_definition
   :skolemid skolem_internal_test_crate__Y__opt_has_type_always_definition
)))
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
 (forall ((x vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>.)) (!
   (= x (%Poly%vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>. (Poly%vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>.
      x
   )))
   :pattern ((Poly%vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>. x))
   :qid internal_vstd__tokens__MapToken<int./test_crate!Goo./test_crate!Y.m.>_box_axiom_definition
   :skolemid skolem_internal_vstd__tokens__MapToken<int./test_crate!Goo./test_crate!Y.m.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!tokens.MapToken. $ INT $ TYPE%test_crate!Goo. $ TYPE%test_crate!Y.m.))
    (= x (Poly%vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>. (%Poly%vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd!tokens.MapToken. $ INT $ TYPE%test_crate!Goo. $ TYPE%test_crate!Y.m.)))
   :qid internal_vstd__tokens__MapToken<int./test_crate!Goo./test_crate!Y.m.>_unbox_axiom_definition
   :skolemid skolem_internal_vstd__tokens__MapToken<int./test_crate!Goo./test_crate!Y.m.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>.)) (!
   (has_type (Poly%vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>. x) (TYPE%vstd!tokens.MapToken.
     $ INT $ TYPE%test_crate!Goo. $ TYPE%test_crate!Y.m.
   ))
   :pattern ((has_type (Poly%vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>.
      x
     ) (TYPE%vstd!tokens.MapToken. $ INT $ TYPE%test_crate!Goo. $ TYPE%test_crate!Y.m.)
   ))
   :qid internal_vstd__tokens__MapToken<int./test_crate!Goo./test_crate!Y.m.>_has_type_always_definition
   :skolemid skolem_internal_vstd__tokens__MapToken<int./test_crate!Goo./test_crate!Y.m.>_has_type_always_definition
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
(assert
 (forall ((x tuple%3.)) (!
   (= x (%Poly%tuple%3. (Poly%tuple%3. x)))
   :pattern ((Poly%tuple%3. x))
   :qid internal_crate__tuple__3_box_axiom_definition
   :skolemid skolem_internal_crate__tuple__3_box_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (x
    Poly
   )
  ) (!
   (=>
    (has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
    (= x (Poly%tuple%3. (%Poly%tuple%3. x)))
   )
   :pattern ((has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&)))
   :qid internal_crate__tuple__3_unbox_axiom_definition
   :skolemid skolem_internal_crate__tuple__3_unbox_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (_0!
    Poly
   ) (_1! Poly) (_2! Poly)
  ) (!
   (=>
    (and
     (has_type _0! T%0&)
     (has_type _1! T%1&)
     (has_type _2! T%2&)
    )
    (has_type (Poly%tuple%3. (tuple%3./tuple%3 _0! _1! _2!)) (TYPE%tuple%3. T%0&. T%0&
      T%1&. T%1& T%2&. T%2&
   )))
   :pattern ((has_type (Poly%tuple%3. (tuple%3./tuple%3 _0! _1! _2!)) (TYPE%tuple%3. T%0&.
      T%0& T%1&. T%1& T%2&. T%2&
   )))
   :qid internal_tuple__3./tuple__3_constructor_definition
   :skolemid skolem_internal_tuple__3./tuple__3_constructor_definition
)))
(assert
 (forall ((x tuple%3.)) (!
   (= (tuple%3./tuple%3/0 x) (tuple%3./tuple%3/?0 x))
   :pattern ((tuple%3./tuple%3/0 x))
   :qid internal_tuple__3./tuple__3/0_accessor_definition
   :skolemid skolem_internal_tuple__3./tuple__3/0_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (x
    Poly
   )
  ) (!
   (=>
    (has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
    (has_type (tuple%3./tuple%3/0 (%Poly%tuple%3. x)) T%0&)
   )
   :pattern ((tuple%3./tuple%3/0 (%Poly%tuple%3. x)) (has_type x (TYPE%tuple%3. T%0&. T%0&
      T%1&. T%1& T%2&. T%2&
   )))
   :qid internal_tuple__3./tuple__3/0_invariant_definition
   :skolemid skolem_internal_tuple__3./tuple__3/0_invariant_definition
)))
(assert
 (forall ((x tuple%3.)) (!
   (= (tuple%3./tuple%3/1 x) (tuple%3./tuple%3/?1 x))
   :pattern ((tuple%3./tuple%3/1 x))
   :qid internal_tuple__3./tuple__3/1_accessor_definition
   :skolemid skolem_internal_tuple__3./tuple__3/1_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (x
    Poly
   )
  ) (!
   (=>
    (has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
    (has_type (tuple%3./tuple%3/1 (%Poly%tuple%3. x)) T%1&)
   )
   :pattern ((tuple%3./tuple%3/1 (%Poly%tuple%3. x)) (has_type x (TYPE%tuple%3. T%0&. T%0&
      T%1&. T%1& T%2&. T%2&
   )))
   :qid internal_tuple__3./tuple__3/1_invariant_definition
   :skolemid skolem_internal_tuple__3./tuple__3/1_invariant_definition
)))
(assert
 (forall ((x tuple%3.)) (!
   (= (tuple%3./tuple%3/2 x) (tuple%3./tuple%3/?2 x))
   :pattern ((tuple%3./tuple%3/2 x))
   :qid internal_tuple__3./tuple__3/2_accessor_definition
   :skolemid skolem_internal_tuple__3./tuple__3/2_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (x
    Poly
   )
  ) (!
   (=>
    (has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
    (has_type (tuple%3./tuple%3/2 (%Poly%tuple%3. x)) T%2&)
   )
   :pattern ((tuple%3./tuple%3/2 (%Poly%tuple%3. x)) (has_type x (TYPE%tuple%3. T%0&. T%0&
      T%1&. T%1& T%2&. T%2&
   )))
   :qid internal_tuple__3./tuple__3/2_invariant_definition
   :skolemid skolem_internal_tuple__3./tuple__3/2_invariant_definition
)))
(assert
 (forall ((x tuple%3.)) (!
   (=>
    (is-tuple%3./tuple%3 x)
    (height_lt (height (tuple%3./tuple%3/0 x)) (height (Poly%tuple%3. x)))
   )
   :pattern ((height (tuple%3./tuple%3/0 x)))
   :qid prelude_datatype_height_tuple%3./tuple%3/0
   :skolemid skolem_prelude_datatype_height_tuple%3./tuple%3/0
)))
(assert
 (forall ((x tuple%3.)) (!
   (=>
    (is-tuple%3./tuple%3 x)
    (height_lt (height (tuple%3./tuple%3/1 x)) (height (Poly%tuple%3. x)))
   )
   :pattern ((height (tuple%3./tuple%3/1 x)))
   :qid prelude_datatype_height_tuple%3./tuple%3/1
   :skolemid skolem_prelude_datatype_height_tuple%3./tuple%3/1
)))
(assert
 (forall ((x tuple%3.)) (!
   (=>
    (is-tuple%3./tuple%3 x)
    (height_lt (height (tuple%3./tuple%3/2 x)) (height (Poly%tuple%3. x)))
   )
   :pattern ((height (tuple%3./tuple%3/2 x)))
   :qid prelude_datatype_height_tuple%3./tuple%3/2
   :skolemid skolem_prelude_datatype_height_tuple%3./tuple%3/2
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (deep
    Bool
   ) (x Poly) (y Poly)
  ) (!
   (=>
    (and
     (has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
     (has_type y (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
     (ext_eq deep T%0& (tuple%3./tuple%3/0 (%Poly%tuple%3. x)) (tuple%3./tuple%3/0 (%Poly%tuple%3.
        y
     )))
     (ext_eq deep T%1& (tuple%3./tuple%3/1 (%Poly%tuple%3. x)) (tuple%3./tuple%3/1 (%Poly%tuple%3.
        y
     )))
     (ext_eq deep T%2& (tuple%3./tuple%3/2 (%Poly%tuple%3. x)) (tuple%3./tuple%3/2 (%Poly%tuple%3.
        y
    ))))
    (ext_eq deep (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&) x y)
   )
   :pattern ((ext_eq deep (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&) x y))
   :qid internal_tuple__3./tuple__3_ext_equal_definition
   :skolemid skolem_internal_tuple__3./tuple__3_ext_equal_definition
)))

;; Traits
(declare-fun tr_bound%vstd!std_specs.option.OptionAdditionalFns. (Dcr Type Dcr Type)
 Bool
)
(declare-fun tr_bound%vstd!tokens.ValueToken. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%vstd!tokens.KeyValueToken. (Dcr Type Dcr Type Dcr Type) Bool)
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
 (forall ((Self%&. Dcr) (Self%& Type) (Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type))
  (!
   true
   :pattern ((tr_bound%vstd!tokens.KeyValueToken. Self%&. Self%& Key&. Key& Value&. Value&))
   :qid internal_vstd__tokens__KeyValueToken_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__tokens__KeyValueToken_trait_type_bounds_definition
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

;; Function-Decl vstd::std_specs::option::is_some
(declare-fun vstd!std_specs.option.is_some.? (Dcr Type Poly) Bool)

;; Function-Decl vstd::std_specs::option::is_none
(declare-fun vstd!std_specs.option.is_none.? (Dcr Type Poly) Bool)

;; Function-Decl vstd::std_specs::option::spec_unwrap
(declare-fun vstd!std_specs.option.spec_unwrap.? (Dcr Type Poly) Poly)

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

;; Function-Decl vstd::map::impl&%0::remove
(declare-fun vstd!map.impl&%0.remove.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::set::impl&%0::finite
(declare-fun vstd!set.impl&%0.finite.? (Dcr Type Poly) Bool)

;; Function-Decl vstd::map::impl&%0::spec_index
(declare-fun vstd!map.impl&%0.spec_index.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::set::impl&%0::empty
(declare-fun vstd!set.impl&%0.empty.? (Dcr Type) Poly)

;; Function-Decl vstd::set::impl&%0::insert
(declare-fun vstd!set.impl&%0.insert.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::set::impl&%0::remove
(declare-fun vstd!set.impl&%0.remove.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::pervasive::arbitrary
(declare-fun vstd!pervasive.arbitrary.? (Dcr Type) Poly)

;; Function-Decl vstd::tokens::impl&%0::instance_id
(declare-fun vstd!tokens.impl&%0.instance_id.? (Dcr Type Dcr Type Dcr Type Poly) vstd!tokens.InstanceId.)

;; Function-Decl vstd::tokens::impl&%0::map
(declare-fun vstd!tokens.impl&%0.map.? (Dcr Type Dcr Type Dcr Type Poly) Poly)

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

;; Function-Decl test_crate::Y::Instance::id
(declare-fun test_crate!Y.impl&%10.id.? (Poly) vstd!tokens.InstanceId.)

;; Function-Decl vstd::tokens::impl&%0::dom
(declare-fun vstd!tokens.impl&%0.dom.? (Dcr Type Dcr Type Dcr Type Poly) Poly)

;; Function-Decl vstd::tokens::option_value_eq_option_token
(declare-fun vstd!tokens.option_value_eq_option_token.? (Dcr Type Dcr Type Poly Poly
  Poly
 ) Bool
)

;; Function-Decl test_crate::Y::State::tr1_strong
(declare-fun test_crate!Y.impl&%13.tr1_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr2_strong
(declare-fun test_crate!Y.impl&%13.tr2_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr3_strong
(declare-fun test_crate!Y.impl&%13.tr3_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr4_strong
(declare-fun test_crate!Y.impl&%13.tr4_strong.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr5_strong
(declare-fun test_crate!Y.impl&%13.tr5_strong.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr6_strong
(declare-fun test_crate!Y.impl&%13.tr6_strong.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr7_strong
(declare-fun test_crate!Y.impl&%13.tr7_strong.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr8_strong
(declare-fun test_crate!Y.impl&%13.tr8_strong.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr9_strong
(declare-fun test_crate!Y.impl&%13.tr9_strong.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::Foo::arrow_Bar_0
(declare-fun test_crate!impl&%0.arrow_Bar_0.? (Poly) Int)

;; Function-Decl test_crate::Foo::arrow_Qax_0
(declare-fun test_crate!impl&%0.arrow_Qax_0.? (Poly) Int)

;; Function-Decl test_crate::Foo::arrow_Duck_0
(declare-fun test_crate!impl&%0.arrow_Duck_0.? (Poly) Int)

;; Function-Decl test_crate::Goo::arrow_1
(declare-fun test_crate!impl&%1.arrow_1.? (Poly) Int)

;; Function-Decl test_crate::Goo::arrow_Qux_0
(declare-fun test_crate!impl&%1.arrow_Qux_0.? (Poly) Int)

;; Function-Decl test_crate::Goo::arrow_Tal_0
(declare-fun test_crate!impl&%1.arrow_Tal_0.? (Poly) Int)

;; Function-Decl test_crate::Goo::arrow_Tal_1
(declare-fun test_crate!impl&%1.arrow_Tal_1.? (Poly) Int)

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
(declare-fun test_crate!rel_tr4.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::rel_tr4_strong
(declare-fun test_crate!rel_tr4_strong.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::rel_tr5
(declare-fun test_crate!rel_tr5.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::rel_tr5_strong
(declare-fun test_crate!rel_tr5_strong.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::rel_tr6
(declare-fun test_crate!rel_tr6.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::rel_tr6_strong
(declare-fun test_crate!rel_tr6_strong.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::rel_tr7
(declare-fun test_crate!rel_tr7.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::rel_tr7_strong
(declare-fun test_crate!rel_tr7_strong.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::rel_tr8
(declare-fun test_crate!rel_tr8.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::rel_tr8_strong
(declare-fun test_crate!rel_tr8_strong.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::rel_tr9
(declare-fun test_crate!rel_tr9.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::rel_tr9_strong
(declare-fun test_crate!rel_tr9_strong.? (Poly Poly Poly) Bool)

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
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
   (= (req%vstd!std_specs.option.spec_unwrap. T&. T& option!) (=>
     %%global_location_label%%0
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
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (= (req%vstd!map.impl&%0.index. K&. K& V&. V& self! key!) (=>
     %%global_location_label%%1
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

;; Function-Specs vstd::map::impl&%0::tracked_empty
(declare-fun ens%vstd!map.impl&%0.tracked_empty. (Dcr Type Dcr Type Poly) Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (out_v! Poly)) (!
   (= (ens%vstd!map.impl&%0.tracked_empty. K&. K& V&. V& out_v!) (and
     (has_type out_v! (TYPE%vstd!map.Map. K&. K& V&. V&))
     (= out_v! (vstd!map.impl&%0.empty.? K&. K& V&. V&))
   ))
   :pattern ((ens%vstd!map.impl&%0.tracked_empty. K&. K& V&. V& out_v!))
   :qid internal_ens__vstd!map.impl&__0.tracked_empty._definition
   :skolemid skolem_internal_ens__vstd!map.impl&__0.tracked_empty._definition
)))

;; Function-Specs vstd::map::impl&%0::tracked_insert
(declare-fun ens%vstd!map.impl&%0.tracked_insert. (Dcr Type Dcr Type Poly Poly Poly
  Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (pre%self! Poly) (self! Poly) (key!
    Poly
   ) (value! Poly)
  ) (!
   (= (ens%vstd!map.impl&%0.tracked_insert. K&. K& V&. V& pre%self! self! key! value!)
    (and
     (has_type self! (TYPE%vstd!map.Map. K&. K& V&. V&))
     (= self! (vstd!map.impl&%0.insert.? K&. K& V&. V& pre%self! key! value!))
   ))
   :pattern ((ens%vstd!map.impl&%0.tracked_insert. K&. K& V&. V& pre%self! self! key!
     value!
   ))
   :qid internal_ens__vstd!map.impl&__0.tracked_insert._definition
   :skolemid skolem_internal_ens__vstd!map.impl&__0.tracked_insert._definition
)))

;; Function-Specs vstd::map::impl&%0::spec_index
(declare-fun req%vstd!map.impl&%0.spec_index. (Dcr Type Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (= (req%vstd!map.impl&%0.spec_index. K&. K& V&. V& self! key!) (=>
     %%global_location_label%%2
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
    :qid user_vstd__map__axiom_map_remove_domain_6
    :skolemid skolem_user_vstd__map__axiom_map_remove_domain_6
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
    :qid user_vstd__map__axiom_map_remove_different_7
    :skolemid skolem_user_vstd__map__axiom_map_remove_different_7
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
         :qid user_vstd__map__axiom_map_ext_equal_8
         :skolemid skolem_user_vstd__map__axiom_map_ext_equal_8
    )))))
    :pattern ((ext_eq false (TYPE%vstd!map.Map. K&. K& V&. V&) m1! m2!))
    :qid user_vstd__map__axiom_map_ext_equal_9
    :skolemid skolem_user_vstd__map__axiom_map_ext_equal_9
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
         :qid user_vstd__map__axiom_map_ext_equal_deep_10
         :skolemid skolem_user_vstd__map__axiom_map_ext_equal_deep_10
    )))))
    :pattern ((ext_eq true (TYPE%vstd!map.Map. K&. K& V&. V&) m1! m2!))
    :qid user_vstd__map__axiom_map_ext_equal_deep_11
    :skolemid skolem_user_vstd__map__axiom_map_ext_equal_deep_11
))))

;; Function-Axioms vstd::pervasive::arbitrary
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (has_type (vstd!pervasive.arbitrary.? A&. A&) A&)
   :pattern ((vstd!pervasive.arbitrary.? A&. A&))
   :qid internal_vstd!pervasive.arbitrary.?_pre_post_definition
   :skolemid skolem_internal_vstd!pervasive.arbitrary.?_pre_post_definition
)))

;; Function-Specs vstd::pervasive::proof_from_false
(declare-fun req%vstd!pervasive.proof_from_false. (Dcr Type) Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (req%vstd!pervasive.proof_from_false. A&. A&) (=>
     %%global_location_label%%3
     false
   ))
   :pattern ((req%vstd!pervasive.proof_from_false. A&. A&))
   :qid internal_req__vstd!pervasive.proof_from_false._definition
   :skolemid skolem_internal_req__vstd!pervasive.proof_from_false._definition
)))
(declare-fun ens%vstd!pervasive.proof_from_false. (Dcr Type Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (%return! Poly)) (!
   (= (ens%vstd!pervasive.proof_from_false. A&. A& %return!) (has_type %return! A&))
   :pattern ((ens%vstd!pervasive.proof_from_false. A&. A& %return!))
   :qid internal_ens__vstd!pervasive.proof_from_false._definition
   :skolemid skolem_internal_ens__vstd!pervasive.proof_from_false._definition
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
    :qid user_vstd__set__axiom_set_empty_12
    :skolemid skolem_user_vstd__set__axiom_set_empty_12
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
    :qid user_vstd__set__axiom_set_insert_same_13
    :skolemid skolem_user_vstd__set__axiom_set_insert_same_13
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
    :qid user_vstd__set__axiom_set_insert_different_14
    :skolemid skolem_user_vstd__set__axiom_set_insert_different_14
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
    :qid user_vstd__set__axiom_set_remove_same_15
    :skolemid skolem_user_vstd__set__axiom_set_remove_same_15
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
    :qid user_vstd__set__axiom_set_remove_insert_16
    :skolemid skolem_user_vstd__set__axiom_set_remove_insert_16
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
    :qid user_vstd__set__axiom_set_remove_different_17
    :skolemid skolem_user_vstd__set__axiom_set_remove_different_17
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
        :qid user_vstd__set__axiom_set_ext_equal_18
        :skolemid skolem_user_vstd__set__axiom_set_ext_equal_18
    ))))
    :pattern ((ext_eq false (TYPE%vstd!set.Set. A&. A&) s1! s2!))
    :qid user_vstd__set__axiom_set_ext_equal_19
    :skolemid skolem_user_vstd__set__axiom_set_ext_equal_19
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
    :qid user_vstd__set__axiom_set_ext_equal_deep_20
    :skolemid skolem_user_vstd__set__axiom_set_ext_equal_deep_20
))))

;; Broadcast vstd::set::axiom_set_empty_finite
(assert
 (=>
  (fuel_bool fuel%vstd!set.axiom_set_empty_finite.)
  (forall ((A&. Dcr) (A& Type)) (!
    (vstd!set.impl&%0.finite.? A&. A& (vstd!set.impl&%0.empty.? A&. A&))
    :pattern ((vstd!set.impl&%0.finite.? A&. A& (vstd!set.impl&%0.empty.? A&. A&)))
    :qid user_vstd__set__axiom_set_empty_finite_21
    :skolemid skolem_user_vstd__set__axiom_set_empty_finite_21
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
    :qid user_vstd__set__axiom_set_insert_finite_22
    :skolemid skolem_user_vstd__set__axiom_set_insert_finite_22
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
    :qid user_vstd__set__axiom_set_remove_finite_23
    :skolemid skolem_user_vstd__set__axiom_set_remove_finite_23
))))

;; Function-Axioms vstd::tokens::impl&%0::map
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type)
   (self! Poly)
  ) (!
   (=>
    (has_type self! (TYPE%vstd!tokens.MapToken. Key&. Key& Value&. Value& Token&. Token&))
    (has_type (vstd!tokens.impl&%0.map.? Key&. Key& Value&. Value& Token&. Token& self!)
     (TYPE%vstd!map.Map. Key&. Key& Value&. Value&)
   ))
   :pattern ((vstd!tokens.impl&%0.map.? Key&. Key& Value&. Value& Token&. Token& self!))
   :qid internal_vstd!tokens.impl&__0.map.?_pre_post_definition
   :skolemid skolem_internal_vstd!tokens.impl&__0.map.?_pre_post_definition
)))

;; Function-Specs vstd::tokens::impl&%0::remove
(declare-fun req%vstd!tokens.impl&%0.remove. (Dcr Type Dcr Type Dcr Type Poly Poly)
 Bool
)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type)
   (pre%self! Poly) (key! Poly)
  ) (!
   (= (req%vstd!tokens.impl&%0.remove. Key&. Key& Value&. Value& Token&. Token& pre%self!
     key!
    ) (=>
     %%global_location_label%%4
     (vstd!set.impl&%0.contains.? Key&. Key& (vstd!map.impl&%0.dom.? Key&. Key& Value&.
       Value& (vstd!tokens.impl&%0.map.? Key&. Key& Value&. Value& Token&. Token& pre%self!)
      ) key!
   )))
   :pattern ((req%vstd!tokens.impl&%0.remove. Key&. Key& Value&. Value& Token&. Token&
     pre%self! key!
   ))
   :qid internal_req__vstd!tokens.impl&__0.remove._definition
   :skolemid skolem_internal_req__vstd!tokens.impl&__0.remove._definition
)))
(declare-fun ens%vstd!tokens.impl&%0.remove. (Dcr Type Dcr Type Dcr Type Poly Poly
  Poly Poly
 ) Bool
)
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type)
   (pre%self! Poly) (self! Poly) (key! Poly) (token! Poly)
  ) (!
   (= (ens%vstd!tokens.impl&%0.remove. Key&. Key& Value&. Value& Token&. Token& pre%self!
     self! key! token!
    ) (and
     (has_type token! Token&)
     (has_type self! (TYPE%vstd!tokens.MapToken. Key&. Key& Value&. Value& Token&. Token&))
     (= (vstd!tokens.impl&%0.instance_id.? Key&. Key& Value&. Value& Token&. Token& self!)
      (vstd!tokens.impl&%0.instance_id.? Key&. Key& Value&. Value& Token&. Token& pre%self!)
     )
     (= (vstd!tokens.impl&%0.map.? Key&. Key& Value&. Value& Token&. Token& self!) (vstd!map.impl&%0.remove.?
       Key&. Key& Value&. Value& (vstd!tokens.impl&%0.map.? Key&. Key& Value&. Value& Token&.
        Token& pre%self!
       ) key!
     ))
     (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.KeyValueToken.instance_id.? Token&. Token&
        Key&. Key& Value&. Value& token!
       )
      ) (vstd!tokens.impl&%0.instance_id.? Key&. Key& Value&. Value& Token&. Token& self!)
     )
     (= (vstd!tokens.KeyValueToken.key.? Token&. Token& Key&. Key& Value&. Value& token!)
      key!
     )
     (= (vstd!tokens.KeyValueToken.value.? Token&. Token& Key&. Key& Value&. Value& token!)
      (vstd!map.impl&%0.index.? Key&. Key& Value&. Value& (vstd!tokens.impl&%0.map.? Key&.
        Key& Value&. Value& Token&. Token& pre%self!
       ) key!
   ))))
   :pattern ((ens%vstd!tokens.impl&%0.remove. Key&. Key& Value&. Value& Token&. Token&
     pre%self! self! key! token!
   ))
   :qid internal_ens__vstd!tokens.impl&__0.remove._definition
   :skolemid skolem_internal_ens__vstd!tokens.impl&__0.remove._definition
)))

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

;; Function-Axioms vstd::tokens::impl&%0::dom
(assert
 (fuel_bool_default fuel%vstd!tokens.impl&%0.dom.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!tokens.impl&%0.dom.)
  (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type)
    (self! Poly)
   ) (!
    (= (vstd!tokens.impl&%0.dom.? Key&. Key& Value&. Value& Token&. Token& self!) (vstd!map.impl&%0.dom.?
      Key&. Key& Value&. Value& (vstd!tokens.impl&%0.map.? Key&. Key& Value&. Value& Token&.
       Token& self!
    )))
    :pattern ((vstd!tokens.impl&%0.dom.? Key&. Key& Value&. Value& Token&. Token& self!))
    :qid internal_vstd!tokens.impl&__0.dom.?_definition
    :skolemid skolem_internal_vstd!tokens.impl&__0.dom.?_definition
))))
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type)
   (self! Poly)
  ) (!
   (=>
    (has_type self! (TYPE%vstd!tokens.MapToken. Key&. Key& Value&. Value& Token&. Token&))
    (has_type (vstd!tokens.impl&%0.dom.? Key&. Key& Value&. Value& Token&. Token& self!)
     (TYPE%vstd!set.Set. Key&. Key&)
   ))
   :pattern ((vstd!tokens.impl&%0.dom.? Key&. Key& Value&. Value& Token&. Token& self!))
   :qid internal_vstd!tokens.impl&__0.dom.?_pre_post_definition
   :skolemid skolem_internal_vstd!tokens.impl&__0.dom.?_pre_post_definition
)))

;; Function-Axioms vstd::tokens::option_value_eq_option_token
(assert
 (fuel_bool_default fuel%vstd!tokens.option_value_eq_option_token.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!tokens.option_value_eq_option_token.)
  (forall ((Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type) (opt_value! Poly)
    (opt_token! Poly) (instance_id! Poly)
   ) (!
    (= (vstd!tokens.option_value_eq_option_token.? Value&. Value& Token&. Token& opt_value!
      opt_token! instance_id!
     ) (ite
      (is-core!option.Option./Some (%Poly%core!option.Option. opt_value!))
      (let
       ((val$ (core!option.Option./Some/0 (%Poly%core!option.Option. opt_value!))))
       (and
        (and
         (is-core!option.Option./Some (%Poly%core!option.Option. opt_token!))
         (= (vstd!tokens.ValueToken.value.? Token&. Token& Value&. Value& (core!option.Option./Some/0
            (%Poly%core!option.Option. opt_token!)
           )
          ) val$
        ))
        (= (vstd!tokens.ValueToken.instance_id.? Token&. Token& Value&. Value& (core!option.Option./Some/0
           (%Poly%core!option.Option. opt_token!)
          )
         ) instance_id!
      )))
      (is-core!option.Option./None (%Poly%core!option.Option. opt_token!))
    ))
    :pattern ((vstd!tokens.option_value_eq_option_token.? Value&. Value& Token&. Token&
      opt_value! opt_token! instance_id!
    ))
    :qid internal_vstd!tokens.option_value_eq_option_token.?_definition
    :skolemid skolem_internal_vstd!tokens.option_value_eq_option_token.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr1_strong
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%13.tr1_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%13.tr1_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%13.tr1_strong.? pre! post!) (let
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
           (and
            (and
             (is-core!option.Option./Some update_tmp_storage_opt$)
             (let
              ((tmp%%$ (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                   (Poly%core!option.Option. update_tmp_storage_opt$)
              )))))
              (is-test_crate!Goo./Bar tmp%%$)
            ))
            (let
             ((update_tmp_storage_opt$1 core!option.Option./None))
             (and
              (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) update_tmp_storage_opt$1)
              (and
               (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) update_tmp_opt$1)
               (and
                (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) update_tmp_storage_m$)
                (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) update_tmp_m$)
    ))))))))))))
    :pattern ((test_crate!Y.impl&%13.tr1_strong.? pre! post!))
    :qid internal_test_crate!Y.impl&__13.tr1_strong.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__13.tr1_strong.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr2_strong
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%13.tr2_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%13.tr2_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%13.tr2_strong.? pre! post!) (let
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
             (and
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
              ))))
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
                 (and
                  (= i1$ j1$)
                  (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) update_tmp_storage_opt$1)
               )))
               (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) update_tmp_opt$1)
           ))))
           (and
            (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) update_tmp_storage_m$)
            (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) update_tmp_m$)
    ))))))))
    :pattern ((test_crate!Y.impl&%13.tr2_strong.? pre! post!))
    :qid internal_test_crate!Y.impl&__13.tr2_strong.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__13.tr2_strong.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr3_strong
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%13.tr3_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%13.tr3_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%13.tr3_strong.? pre! post!) (let
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
               (and
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
                )))))
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
                     (and
                      (= i1$ j1$)
                      (and
                       (= i2$ j2$)
                       (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) update_tmp_storage_opt$1)
                 ))))))
                 (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) update_tmp_opt$1)
           ))))))
           (and
            (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) update_tmp_storage_m$)
            (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) update_tmp_m$)
    ))))))))
    :pattern ((test_crate!Y.impl&%13.tr3_strong.? pre! post!))
    :qid internal_test_crate!Y.impl&__13.tr3_strong.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__13.tr3_strong.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr4_strong
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%13.tr4_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%13.tr4_strong.)
  (forall ((pre! Poly) (post! Poly) (key! Poly)) (!
    (= (test_crate!Y.impl&%13.tr4_strong.? pre! post! key!) (let
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
           (and
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
            ))
            (let
             ((update_tmp_storage_m$1 (%Poly%vstd!map.Map<int./test_crate!Goo.>. (vstd!map.impl&%0.remove.?
                 $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>. update_tmp_storage_m$)
                 key!
             ))))
             (and
              (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) update_tmp_storage_m$1)
              (and
               (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) update_tmp_m$1)
               (and
                (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) update_tmp_storage_opt$)
                (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) update_tmp_opt$)
    ))))))))))))
    :pattern ((test_crate!Y.impl&%13.tr4_strong.? pre! post! key!))
    :qid internal_test_crate!Y.impl&__13.tr4_strong.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__13.tr4_strong.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr5_strong
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%13.tr5_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%13.tr5_strong.)
  (forall ((pre! Poly) (post! Poly) (key! Poly)) (!
    (= (test_crate!Y.impl&%13.tr5_strong.? pre! post! key!) (let
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
             (and
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
              ))))
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
                 (and
                  (= i1$ j1$)
                  (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) update_tmp_storage_m$1)
               )))
               (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) update_tmp_m$1)
           ))))
           (and
            (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) update_tmp_storage_opt$)
            (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) update_tmp_opt$)
    ))))))))
    :pattern ((test_crate!Y.impl&%13.tr5_strong.? pre! post! key!))
    :qid internal_test_crate!Y.impl&__13.tr5_strong.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__13.tr5_strong.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr6_strong
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%13.tr6_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%13.tr6_strong.)
  (forall ((pre! Poly) (post! Poly) (key! Poly)) (!
    (= (test_crate!Y.impl&%13.tr6_strong.? pre! post! key!) (let
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
               (and
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
                )))))
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
                     (and
                      (= i1$ j1$)
                      (and
                       (= i2$ j2$)
                       (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) update_tmp_storage_m$1)
                 ))))))
                 (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) update_tmp_m$1)
           ))))))
           (and
            (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) update_tmp_storage_opt$)
            (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) update_tmp_opt$)
    ))))))))
    :pattern ((test_crate!Y.impl&%13.tr6_strong.? pre! post! key!))
    :qid internal_test_crate!Y.impl&__13.tr6_strong.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__13.tr6_strong.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr7_strong
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%13.tr7_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%13.tr7_strong.)
  (forall ((pre! Poly) (post! Poly) (key! Poly)) (!
    (= (test_crate!Y.impl&%13.tr7_strong.? pre! post! key!) (let
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
    :pattern ((test_crate!Y.impl&%13.tr7_strong.? pre! post! key!))
    :qid internal_test_crate!Y.impl&__13.tr7_strong.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__13.tr7_strong.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr8_strong
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%13.tr8_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%13.tr8_strong.)
  (forall ((pre! Poly) (post! Poly) (key! Poly)) (!
    (= (test_crate!Y.impl&%13.tr8_strong.? pre! post! key!) (let
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
    :pattern ((test_crate!Y.impl&%13.tr8_strong.? pre! post! key!))
    :qid internal_test_crate!Y.impl&__13.tr8_strong.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__13.tr8_strong.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr9_strong
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%13.tr9_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%13.tr9_strong.)
  (forall ((pre! Poly) (post! Poly) (key! Poly)) (!
    (= (test_crate!Y.impl&%13.tr9_strong.? pre! post! key!) (let
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
    :pattern ((test_crate!Y.impl&%13.tr9_strong.? pre! post! key!))
    :qid internal_test_crate!Y.impl&__13.tr9_strong.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__13.tr9_strong.?_definition
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

;; Function-Axioms test_crate::Goo::arrow_1
(assert
 (fuel_bool_default fuel%test_crate!impl&%1.arrow_1.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%1.arrow_1.)
  (forall ((self! Poly)) (!
    (= (test_crate!impl&%1.arrow_1.? self!) (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo.
       self!
    )))
    :pattern ((test_crate!impl&%1.arrow_1.? self!))
    :qid internal_test_crate!impl&__1.arrow_1.?_definition
    :skolemid skolem_internal_test_crate!impl&__1.arrow_1.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%test_crate!Goo.)
    (uInv 64 (test_crate!impl&%1.arrow_1.? self!))
   )
   :pattern ((test_crate!impl&%1.arrow_1.? self!))
   :qid internal_test_crate!impl&__1.arrow_1.?_pre_post_definition
   :skolemid skolem_internal_test_crate!impl&__1.arrow_1.?_pre_post_definition
)))

;; Function-Axioms test_crate::Goo::arrow_Qux_0
(assert
 (fuel_bool_default fuel%test_crate!impl&%1.arrow_Qux_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%1.arrow_Qux_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!impl&%1.arrow_Qux_0.? self!) (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo.
       self!
    )))
    :pattern ((test_crate!impl&%1.arrow_Qux_0.? self!))
    :qid internal_test_crate!impl&__1.arrow_Qux_0.?_definition
    :skolemid skolem_internal_test_crate!impl&__1.arrow_Qux_0.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%test_crate!Goo.)
    (uInv 64 (test_crate!impl&%1.arrow_Qux_0.? self!))
   )
   :pattern ((test_crate!impl&%1.arrow_Qux_0.? self!))
   :qid internal_test_crate!impl&__1.arrow_Qux_0.?_pre_post_definition
   :skolemid skolem_internal_test_crate!impl&__1.arrow_Qux_0.?_pre_post_definition
)))

;; Function-Axioms test_crate::Goo::arrow_Tal_0
(assert
 (fuel_bool_default fuel%test_crate!impl&%1.arrow_Tal_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%1.arrow_Tal_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!impl&%1.arrow_Tal_0.? self!) (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo.
       self!
    )))
    :pattern ((test_crate!impl&%1.arrow_Tal_0.? self!))
    :qid internal_test_crate!impl&__1.arrow_Tal_0.?_definition
    :skolemid skolem_internal_test_crate!impl&__1.arrow_Tal_0.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%test_crate!Goo.)
    (uInv 64 (test_crate!impl&%1.arrow_Tal_0.? self!))
   )
   :pattern ((test_crate!impl&%1.arrow_Tal_0.? self!))
   :qid internal_test_crate!impl&__1.arrow_Tal_0.?_pre_post_definition
   :skolemid skolem_internal_test_crate!impl&__1.arrow_Tal_0.?_pre_post_definition
)))

;; Function-Axioms test_crate::Goo::arrow_Tal_1
(assert
 (fuel_bool_default fuel%test_crate!impl&%1.arrow_Tal_1.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%1.arrow_Tal_1.)
  (forall ((self! Poly)) (!
    (= (test_crate!impl&%1.arrow_Tal_1.? self!) (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo.
       self!
    )))
    :pattern ((test_crate!impl&%1.arrow_Tal_1.? self!))
    :qid internal_test_crate!impl&__1.arrow_Tal_1.?_definition
    :skolemid skolem_internal_test_crate!impl&__1.arrow_Tal_1.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%test_crate!Goo.)
    (uInv 64 (test_crate!impl&%1.arrow_Tal_1.? self!))
   )
   :pattern ((test_crate!impl&%1.arrow_Tal_1.? self!))
   :qid internal_test_crate!impl&__1.arrow_Tal_1.?_pre_post_definition
   :skolemid skolem_internal_test_crate!impl&__1.arrow_Tal_1.?_pre_post_definition
)))

;; Function-Axioms test_crate::rel_tr1
(assert
 (fuel_bool_default fuel%test_crate!rel_tr1.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!rel_tr1.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!rel_tr1.? pre! post!) (let
      ((tmp%%$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
      (and
       (and
        (is-core!option.Option./Some tmp%%$)
        (is-test_crate!Goo./Bar (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
            (Poly%core!option.Option. tmp%%$)
       )))))
       (let
        ((tmp%%$1 (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. pre!))))
        (=>
         (and
          (is-core!option.Option./Some tmp%%$1)
          (is-test_crate!Goo./Bar (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
              (Poly%core!option.Option. tmp%%$1)
         )))))
         (and
          (and
           (and
            (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) core!option.Option./None)
            (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) core!option.Option./None)
           )
           (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/m
             (%Poly%test_crate!Y.State. pre!)
          )))
          (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/storage_m
            (%Poly%test_crate!Y.State. pre!)
    ))))))))
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
    (= (test_crate!rel_tr1_strong.? pre! post!) (let
      ((tmp%%$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
      (and
       (and
        (is-core!option.Option./Some tmp%%$)
        (is-test_crate!Goo./Bar (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
            (Poly%core!option.Option. tmp%%$)
       )))))
       (let
        ((tmp%%$1 (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. pre!))))
        (and
         (and
          (is-core!option.Option./Some tmp%%$1)
          (is-test_crate!Goo./Bar (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
              (Poly%core!option.Option. tmp%%$1)
         )))))
         (and
          (and
           (and
            (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) core!option.Option./None)
            (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) core!option.Option./None)
           )
           (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/m
             (%Poly%test_crate!Y.State. pre!)
          )))
          (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/storage_m
            (%Poly%test_crate!Y.State. pre!)
    ))))))))
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
    (= (test_crate!rel_tr2.? pre! post!) (let
      ((tmp%%$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
      (and
       (and
        (is-core!option.Option./Some tmp%%$)
        (is-test_crate!Goo./Qux (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
            (Poly%core!option.Option. tmp%%$)
       )))))
       (let
        ((i1$ (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
              (Poly%core!option.Option. tmp%%$)
        ))))))
        (let
         ((tmp%%$1 (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. pre!))))
         (=>
          (and
           (is-core!option.Option./Some tmp%%$1)
           (is-test_crate!Goo./Qux (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
               (Poly%core!option.Option. tmp%%$1)
          )))))
          (let
           ((j1$ (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                 (Poly%core!option.Option. tmp%%$1)
           ))))))
           (=>
            (= i1$ j1$)
            (and
             (and
              (and
               (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) core!option.Option./None)
               (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) core!option.Option./None)
              )
              (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/m
                (%Poly%test_crate!Y.State. pre!)
             )))
             (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/storage_m
               (%Poly%test_crate!Y.State. pre!)
    )))))))))))
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
    (= (test_crate!rel_tr2_strong.? pre! post!) (let
      ((tmp%%$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
      (and
       (and
        (is-core!option.Option./Some tmp%%$)
        (is-test_crate!Goo./Qux (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
            (Poly%core!option.Option. tmp%%$)
       )))))
       (let
        ((i1$ (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
              (Poly%core!option.Option. tmp%%$)
        ))))))
        (let
         ((tmp%%$1 (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. pre!))))
         (and
          (and
           (is-core!option.Option./Some tmp%%$1)
           (is-test_crate!Goo./Qux (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
               (Poly%core!option.Option. tmp%%$1)
          )))))
          (let
           ((j1$ (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                 (Poly%core!option.Option. tmp%%$1)
           ))))))
           (and
            (and
             (and
              (and
               (= i1$ j1$)
               (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) core!option.Option./None)
              )
              (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) core!option.Option./None)
             )
             (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/m
               (%Poly%test_crate!Y.State. pre!)
            )))
            (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/storage_m
              (%Poly%test_crate!Y.State. pre!)
    ))))))))))
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
    (= (test_crate!rel_tr3.? pre! post!) (let
      ((tmp%%$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
      (and
       (and
        (is-core!option.Option./Some tmp%%$)
        (is-test_crate!Goo./Tal (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
            (Poly%core!option.Option. tmp%%$)
       )))))
       (let
        ((i1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
              (Poly%core!option.Option. tmp%%$)
        ))))))
        (let
         ((i2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
               (Poly%core!option.Option. tmp%%$)
         ))))))
         (let
          ((tmp%%$1 (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. pre!))))
          (=>
           (and
            (is-core!option.Option./Some tmp%%$1)
            (is-test_crate!Goo./Tal (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                (Poly%core!option.Option. tmp%%$1)
           )))))
           (let
            ((j1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                  (Poly%core!option.Option. tmp%%$1)
            ))))))
            (let
             ((j2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                   (Poly%core!option.Option. tmp%%$1)
             ))))))
             (=>
              (and
               (= i1$ j1$)
               (= i2$ j2$)
              )
              (and
               (and
                (and
                 (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) core!option.Option./None)
                 (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) core!option.Option./None)
                )
                (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/m
                  (%Poly%test_crate!Y.State. pre!)
               )))
               (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/storage_m
                 (%Poly%test_crate!Y.State. pre!)
    )))))))))))))
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
    (= (test_crate!rel_tr3_strong.? pre! post!) (let
      ((tmp%%$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
      (and
       (and
        (is-core!option.Option./Some tmp%%$)
        (is-test_crate!Goo./Tal (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
            (Poly%core!option.Option. tmp%%$)
       )))))
       (let
        ((i1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
              (Poly%core!option.Option. tmp%%$)
        ))))))
        (let
         ((i2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
               (Poly%core!option.Option. tmp%%$)
         ))))))
         (let
          ((tmp%%$1 (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. pre!))))
          (and
           (and
            (is-core!option.Option./Some tmp%%$1)
            (is-test_crate!Goo./Tal (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                (Poly%core!option.Option. tmp%%$1)
           )))))
           (let
            ((j1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                  (Poly%core!option.Option. tmp%%$1)
            ))))))
            (let
             ((j2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
                   (Poly%core!option.Option. tmp%%$1)
             ))))))
             (and
              (and
               (and
                (and
                 (and
                  (= i1$ j1$)
                  (= i2$ j2$)
                 )
                 (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) core!option.Option./None)
                )
                (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) core!option.Option./None)
               )
               (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/m
                 (%Poly%test_crate!Y.State. pre!)
              )))
              (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/storage_m
                (%Poly%test_crate!Y.State. pre!)
    ))))))))))))
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
  (forall ((pre! Poly) (post! Poly) (key! Poly)) (!
    (= (test_crate!rel_tr4.? pre! post! key!) (and
      (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
        (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/m (%Poly%test_crate!Y.State.
           pre!
        )))
       ) key!
      )
      (let
       ((tmp%%$ (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
           (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/m (%Poly%test_crate!Y.State.
              pre!
            ))
           ) key!
       ))))
       (and
        (is-test_crate!Goo./Bar tmp%%$)
        (=>
         (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
           (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State.
              pre!
           )))
          ) key!
         )
         (let
          ((tmp%%$1 (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
              (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State.
                 pre!
               ))
              ) key!
          ))))
          (=>
           (is-test_crate!Goo./Bar tmp%%$1)
           (and
            (and
             (and
              (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/opt
                (%Poly%test_crate!Y.State. pre!)
              ))
              (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/storage_opt
                (%Poly%test_crate!Y.State. pre!)
             )))
             (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!map.Map<int./test_crate!Goo.>.
               (vstd!map.impl&%0.remove.? $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>.
                 (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. pre!))
                ) key!
            ))))
            (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!map.Map<int./test_crate!Goo.>.
              (vstd!map.impl&%0.remove.? $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>.
                (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. pre!))
               ) key!
    )))))))))))
    :pattern ((test_crate!rel_tr4.? pre! post! key!))
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
  (forall ((pre! Poly) (post! Poly) (key! Poly)) (!
    (= (test_crate!rel_tr4_strong.? pre! post! key!) (and
      (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
        (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/m (%Poly%test_crate!Y.State.
           pre!
        )))
       ) key!
      )
      (let
       ((tmp%%$ (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
           (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/m (%Poly%test_crate!Y.State.
              pre!
            ))
           ) key!
       ))))
       (and
        (is-test_crate!Goo./Bar tmp%%$)
        (and
         (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
           (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State.
              pre!
           )))
          ) key!
         )
         (let
          ((tmp%%$1 (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
              (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State.
                 pre!
               ))
              ) key!
          ))))
          (and
           (is-test_crate!Goo./Bar tmp%%$1)
           (and
            (and
             (and
              (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/opt
                (%Poly%test_crate!Y.State. pre!)
              ))
              (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/storage_opt
                (%Poly%test_crate!Y.State. pre!)
             )))
             (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!map.Map<int./test_crate!Goo.>.
               (vstd!map.impl&%0.remove.? $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>.
                 (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. pre!))
                ) key!
            ))))
            (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!map.Map<int./test_crate!Goo.>.
              (vstd!map.impl&%0.remove.? $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>.
                (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. pre!))
               ) key!
    )))))))))))
    :pattern ((test_crate!rel_tr4_strong.? pre! post! key!))
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
  (forall ((pre! Poly) (post! Poly) (key! Poly)) (!
    (= (test_crate!rel_tr5.? pre! post! key!) (and
      (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
        (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/m (%Poly%test_crate!Y.State.
           pre!
        )))
       ) key!
      )
      (let
       ((tmp%%$ (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
           (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/m (%Poly%test_crate!Y.State.
              pre!
            ))
           ) key!
       ))))
       (and
        (is-test_crate!Goo./Qux tmp%%$)
        (let
         ((i1$ (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
         (=>
          (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
            (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State.
               pre!
            )))
           ) key!
          )
          (let
           ((tmp%%$1 (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
               (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State.
                  pre!
                ))
               ) key!
           ))))
           (=>
            (is-test_crate!Goo./Qux tmp%%$1)
            (let
             ((j1$ (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$1)))))
             (=>
              (= i1$ j1$)
              (and
               (and
                (and
                 (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/opt
                   (%Poly%test_crate!Y.State. pre!)
                 ))
                 (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/storage_opt
                   (%Poly%test_crate!Y.State. pre!)
                )))
                (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!map.Map<int./test_crate!Goo.>.
                  (vstd!map.impl&%0.remove.? $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>.
                    (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. pre!))
                   ) key!
               ))))
               (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!map.Map<int./test_crate!Goo.>.
                 (vstd!map.impl&%0.remove.? $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>.
                   (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. pre!))
                  ) key!
    ))))))))))))))
    :pattern ((test_crate!rel_tr5.? pre! post! key!))
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
  (forall ((pre! Poly) (post! Poly) (key! Poly)) (!
    (= (test_crate!rel_tr5_strong.? pre! post! key!) (and
      (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
        (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/m (%Poly%test_crate!Y.State.
           pre!
        )))
       ) key!
      )
      (let
       ((tmp%%$ (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
           (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/m (%Poly%test_crate!Y.State.
              pre!
            ))
           ) key!
       ))))
       (and
        (is-test_crate!Goo./Qux tmp%%$)
        (let
         ((i1$ (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
         (and
          (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
            (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State.
               pre!
            )))
           ) key!
          )
          (let
           ((tmp%%$1 (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
               (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State.
                  pre!
                ))
               ) key!
           ))))
           (and
            (is-test_crate!Goo./Qux tmp%%$1)
            (let
             ((j1$ (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$1)))))
             (and
              (and
               (and
                (and
                 (= i1$ j1$)
                 (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/opt
                   (%Poly%test_crate!Y.State. pre!)
                )))
                (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/storage_opt
                  (%Poly%test_crate!Y.State. pre!)
               )))
               (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!map.Map<int./test_crate!Goo.>.
                 (vstd!map.impl&%0.remove.? $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>.
                   (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. pre!))
                  ) key!
              ))))
              (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!map.Map<int./test_crate!Goo.>.
                (vstd!map.impl&%0.remove.? $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>.
                  (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. pre!))
                 ) key!
    )))))))))))))
    :pattern ((test_crate!rel_tr5_strong.? pre! post! key!))
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
  (forall ((pre! Poly) (post! Poly) (key! Poly)) (!
    (= (test_crate!rel_tr6.? pre! post! key!) (and
      (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
        (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/m (%Poly%test_crate!Y.State.
           pre!
        )))
       ) key!
      )
      (let
       ((tmp%%$ (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
           (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/m (%Poly%test_crate!Y.State.
              pre!
            ))
           ) key!
       ))))
       (and
        (is-test_crate!Goo./Tal tmp%%$)
        (let
         ((i1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
         (let
          ((i2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
          (=>
           (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
             (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State.
                pre!
             )))
            ) key!
           )
           (let
            ((tmp%%$1 (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
                (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State.
                   pre!
                 ))
                ) key!
            ))))
            (=>
             (is-test_crate!Goo./Tal tmp%%$1)
             (let
              ((j1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$1)))))
              (let
               ((j2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$1)))))
               (=>
                (and
                 (= i1$ j1$)
                 (= i2$ j2$)
                )
                (and
                 (and
                  (and
                   (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/opt
                     (%Poly%test_crate!Y.State. pre!)
                   ))
                   (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/storage_opt
                     (%Poly%test_crate!Y.State. pre!)
                  )))
                  (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!map.Map<int./test_crate!Goo.>.
                    (vstd!map.impl&%0.remove.? $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>.
                      (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. pre!))
                     ) key!
                 ))))
                 (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!map.Map<int./test_crate!Goo.>.
                   (vstd!map.impl&%0.remove.? $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>.
                     (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. pre!))
                    ) key!
    ))))))))))))))))
    :pattern ((test_crate!rel_tr6.? pre! post! key!))
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
  (forall ((pre! Poly) (post! Poly) (key! Poly)) (!
    (= (test_crate!rel_tr6_strong.? pre! post! key!) (and
      (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
        (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/m (%Poly%test_crate!Y.State.
           pre!
        )))
       ) key!
      )
      (let
       ((tmp%%$ (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
           (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/m (%Poly%test_crate!Y.State.
              pre!
            ))
           ) key!
       ))))
       (and
        (is-test_crate!Goo./Tal tmp%%$)
        (let
         ((i1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
         (let
          ((i2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
          (and
           (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
             (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State.
                pre!
             )))
            ) key!
           )
           (let
            ((tmp%%$1 (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
                (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State.
                   pre!
                 ))
                ) key!
            ))))
            (and
             (is-test_crate!Goo./Tal tmp%%$1)
             (let
              ((j1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$1)))))
              (let
               ((j2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$1)))))
               (and
                (and
                 (and
                  (and
                   (and
                    (= i1$ j1$)
                    (= i2$ j2$)
                   )
                   (= (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/opt
                     (%Poly%test_crate!Y.State. pre!)
                  )))
                  (= (test_crate!Y.State./State/storage_opt (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/storage_opt
                    (%Poly%test_crate!Y.State. pre!)
                 )))
                 (= (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!map.Map<int./test_crate!Goo.>.
                   (vstd!map.impl&%0.remove.? $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>.
                     (test_crate!Y.State./State/m (%Poly%test_crate!Y.State. pre!))
                    ) key!
                ))))
                (= (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. post!)) (%Poly%vstd!map.Map<int./test_crate!Goo.>.
                  (vstd!map.impl&%0.remove.? $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>.
                    (test_crate!Y.State./State/storage_m (%Poly%test_crate!Y.State. pre!))
                   ) key!
    )))))))))))))))
    :pattern ((test_crate!rel_tr6_strong.? pre! post! key!))
    :qid internal_test_crate!rel_tr6_strong.?_definition
    :skolemid skolem_internal_test_crate!rel_tr6_strong.?_definition
))))

;; Function-Axioms test_crate::rel_tr7
(assert
 (fuel_bool_default fuel%test_crate!rel_tr7.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!rel_tr7.)
  (forall ((pre! Poly) (post! Poly) (key! Poly)) (!
    (= (test_crate!rel_tr7.? pre! post! key!) (let
      ((tmp%%$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
      (and
       (and
        (is-core!option.Option./Some tmp%%$)
        (is-test_crate!Goo./Bar (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
            (Poly%core!option.Option. tmp%%$)
       )))))
       (and
        (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
          (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/m (%Poly%test_crate!Y.State.
             pre!
          )))
         ) key!
        )
        (let
         ((tmp%%$1 (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
             (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/m (%Poly%test_crate!Y.State.
                pre!
              ))
             ) key!
         ))))
         (and
          (is-test_crate!Goo./Bar tmp%%$1)
          (= post! pre!)
    ))))))
    :pattern ((test_crate!rel_tr7.? pre! post! key!))
    :qid internal_test_crate!rel_tr7.?_definition
    :skolemid skolem_internal_test_crate!rel_tr7.?_definition
))))

;; Function-Axioms test_crate::rel_tr7_strong
(assert
 (fuel_bool_default fuel%test_crate!rel_tr7_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!rel_tr7_strong.)
  (forall ((pre! Poly) (post! Poly) (key! Poly)) (!
    (= (test_crate!rel_tr7_strong.? pre! post! key!) (test_crate!rel_tr7.? pre! post! key!))
    :pattern ((test_crate!rel_tr7_strong.? pre! post! key!))
    :qid internal_test_crate!rel_tr7_strong.?_definition
    :skolemid skolem_internal_test_crate!rel_tr7_strong.?_definition
))))

;; Function-Axioms test_crate::rel_tr8
(assert
 (fuel_bool_default fuel%test_crate!rel_tr8.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!rel_tr8.)
  (forall ((pre! Poly) (post! Poly) (key! Poly)) (!
    (= (test_crate!rel_tr8.? pre! post! key!) (let
      ((tmp%%$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
      (and
       (and
        (is-core!option.Option./Some tmp%%$)
        (is-test_crate!Goo./Qux (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
            (Poly%core!option.Option. tmp%%$)
       )))))
       (let
        ((i1$ (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
              (Poly%core!option.Option. tmp%%$)
        ))))))
        (and
         (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
           (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/m (%Poly%test_crate!Y.State.
              pre!
           )))
          ) key!
         )
         (let
          ((tmp%%$1 (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
              (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/m (%Poly%test_crate!Y.State.
                 pre!
               ))
              ) key!
          ))))
          (and
           (is-test_crate!Goo./Qux tmp%%$1)
           (let
            ((j1$ (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$1)))))
            (and
             (= i1$ j1$)
             (= post! pre!)
    )))))))))
    :pattern ((test_crate!rel_tr8.? pre! post! key!))
    :qid internal_test_crate!rel_tr8.?_definition
    :skolemid skolem_internal_test_crate!rel_tr8.?_definition
))))

;; Function-Axioms test_crate::rel_tr8_strong
(assert
 (fuel_bool_default fuel%test_crate!rel_tr8_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!rel_tr8_strong.)
  (forall ((pre! Poly) (post! Poly) (key! Poly)) (!
    (= (test_crate!rel_tr8_strong.? pre! post! key!) (test_crate!rel_tr8.? pre! post! key!))
    :pattern ((test_crate!rel_tr8_strong.? pre! post! key!))
    :qid internal_test_crate!rel_tr8_strong.?_definition
    :skolemid skolem_internal_test_crate!rel_tr8_strong.?_definition
))))

;; Function-Axioms test_crate::rel_tr9
(assert
 (fuel_bool_default fuel%test_crate!rel_tr9.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!rel_tr9.)
  (forall ((pre! Poly) (post! Poly) (key! Poly)) (!
    (= (test_crate!rel_tr9.? pre! post! key!) (let
      ((tmp%%$ (test_crate!Y.State./State/opt (%Poly%test_crate!Y.State. pre!))))
      (and
       (and
        (is-core!option.Option./Some tmp%%$)
        (is-test_crate!Goo./Tal (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
            (Poly%core!option.Option. tmp%%$)
       )))))
       (let
        ((i1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
              (Poly%core!option.Option. tmp%%$)
        ))))))
        (let
         ((i2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (core!option.Option./Some/0 (%Poly%core!option.Option.
               (Poly%core!option.Option. tmp%%$)
         ))))))
         (and
          (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
            (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/m (%Poly%test_crate!Y.State.
               pre!
            )))
           ) key!
          )
          (let
           ((tmp%%$1 (%Poly%test_crate!Goo. (vstd!map.impl&%0.index.? $ INT $ TYPE%test_crate!Goo.
               (Poly%vstd!map.Map<int./test_crate!Goo.>. (test_crate!Y.State./State/m (%Poly%test_crate!Y.State.
                  pre!
                ))
               ) key!
           ))))
           (and
            (is-test_crate!Goo./Tal tmp%%$1)
            (let
             ((j1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$1)))))
             (let
              ((j2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$1)))))
              (and
               (and
                (= i1$ j1$)
                (= i2$ j2$)
               )
               (= post! pre!)
    )))))))))))
    :pattern ((test_crate!rel_tr9.? pre! post! key!))
    :qid internal_test_crate!rel_tr9.?_definition
    :skolemid skolem_internal_test_crate!rel_tr9.?_definition
))))

;; Function-Axioms test_crate::rel_tr9_strong
(assert
 (fuel_bool_default fuel%test_crate!rel_tr9_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!rel_tr9_strong.)
  (forall ((pre! Poly) (post! Poly) (key! Poly)) (!
    (= (test_crate!rel_tr9_strong.? pre! post! key!) (test_crate!rel_tr9.? pre! post! key!))
    :pattern ((test_crate!rel_tr9_strong.? pre! post! key!))
    :qid internal_test_crate!rel_tr9_strong.?_definition
    :skolemid skolem_internal_test_crate!rel_tr9_strong.?_definition
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
 (tr_bound%vstd!tokens.KeyValueToken. $ TYPE%test_crate!Y.m. $ INT $ TYPE%test_crate!Goo.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!tokens.ValueToken. $ TYPE%test_crate!Y.opt. $ TYPE%test_crate!Goo.)
)

;; Function-Specs test_crate::Y::Instance::initialize
(declare-fun req%test_crate!Y.impl&%10.initialize. (vstd!map.Map<int./test_crate!Goo.>.
  core!option.Option. vstd!map.Map<int./test_crate!Goo.>. core!option.Option.
 ) Bool
)
(declare-const %%global_location_label%%5 Bool)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((m! vstd!map.Map<int./test_crate!Goo.>.) (opt! core!option.Option.) (param_token_storage_m!
    vstd!map.Map<int./test_crate!Goo.>.
   ) (param_token_storage_opt! core!option.Option.)
  ) (!
   (= (req%test_crate!Y.impl&%10.initialize. m! opt! param_token_storage_m! param_token_storage_opt!)
    (and
     (=>
      %%global_location_label%%5
      (= param_token_storage_m! m!)
     )
     (=>
      %%global_location_label%%6
      (= param_token_storage_opt! opt!)
   )))
   :pattern ((req%test_crate!Y.impl&%10.initialize. m! opt! param_token_storage_m! param_token_storage_opt!))
   :qid internal_req__test_crate!Y.impl&__10.initialize._definition
   :skolemid skolem_internal_req__test_crate!Y.impl&__10.initialize._definition
)))
(declare-fun ens%test_crate!Y.impl&%10.initialize. (vstd!map.Map<int./test_crate!Goo.>.
  core!option.Option. vstd!map.Map<int./test_crate!Goo.>. core!option.Option. tuple%3.
 ) Bool
)
(assert
 (forall ((m! vstd!map.Map<int./test_crate!Goo.>.) (opt! core!option.Option.) (param_token_storage_m!
    vstd!map.Map<int./test_crate!Goo.>.
   ) (param_token_storage_opt! core!option.Option.) (tmp_tuple! tuple%3.)
  ) (!
   (= (ens%test_crate!Y.impl&%10.initialize. m! opt! param_token_storage_m! param_token_storage_opt!
     tmp_tuple!
    ) (and
     (has_type (Poly%tuple%3. tmp_tuple!) (TYPE%tuple%3. (TRACKED $) TYPE%test_crate!Y.Instance.
       (TRACKED $) (TYPE%vstd!tokens.MapToken. $ INT $ TYPE%test_crate!Goo. $ TYPE%test_crate!Y.m.)
       (TRACKED $) (TYPE%core!option.Option. $ TYPE%test_crate!Y.opt.)
     ))
     (let
      ((instance$ (%Poly%test_crate!Y.Instance. (tuple%3./tuple%3/0 (%Poly%tuple%3. (Poly%tuple%3.
            tmp_tuple!
      ))))))
      (let
       ((param_token_m$ (%Poly%vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>.
          (tuple%3./tuple%3/1 (%Poly%tuple%3. (Poly%tuple%3. tmp_tuple!)))
       )))
       (let
        ((param_token_opt$ (%Poly%core!option.Option. (tuple%3./tuple%3/2 (%Poly%tuple%3. (Poly%tuple%3.
              tmp_tuple!
        ))))))
        (let
         ((instance$1 instance$))
         (let
          ((param_token_m$1 param_token_m$))
          (let
           ((param_token_opt$1 param_token_opt$))
           (and
            (and
             (= m! (%Poly%vstd!map.Map<int./test_crate!Goo.>. (vstd!tokens.impl&%0.map.? $ INT $
                TYPE%test_crate!Goo. $ TYPE%test_crate!Y.m. (Poly%vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>.
                 param_token_m$1
             ))))
             (= (vstd!tokens.impl&%0.instance_id.? $ INT $ TYPE%test_crate!Goo. $ TYPE%test_crate!Y.m.
               (Poly%vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>. param_token_m$1)
              ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. instance$1))
            ))
            (vstd!tokens.option_value_eq_option_token.? $ TYPE%test_crate!Goo. $ TYPE%test_crate!Y.opt.
             (Poly%core!option.Option. opt!) (Poly%core!option.Option. param_token_opt$1) (Poly%vstd!tokens.InstanceId.
              (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. instance$1))
   )))))))))))
   :pattern ((ens%test_crate!Y.impl&%10.initialize. m! opt! param_token_storage_m! param_token_storage_opt!
     tmp_tuple!
   ))
   :qid internal_ens__test_crate!Y.impl&__10.initialize._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__10.initialize._definition
)))

;; Function-Specs test_crate::Y::Instance::tr1
(declare-fun req%test_crate!Y.impl&%10.tr1. (test_crate!Y.Instance. test_crate!Y.opt.)
 Bool
)
(declare-const %%global_location_label%%7 Bool)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((self! test_crate!Y.Instance.) (param_token_0_opt! test_crate!Y.opt.)) (!
   (= (req%test_crate!Y.impl&%10.tr1. self! param_token_0_opt!) (and
     (=>
      %%global_location_label%%7
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt.
         $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. param_token_0_opt!)
        )
       ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. self!))
     ))
     (=>
      %%global_location_label%%8
      (let
       ((tmp%%$ (%Poly%test_crate!Goo. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt.
           $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. param_token_0_opt!)
       ))))
       (is-test_crate!Goo./Bar tmp%%$)
   ))))
   :pattern ((req%test_crate!Y.impl&%10.tr1. self! param_token_0_opt!))
   :qid internal_req__test_crate!Y.impl&__10.tr1._definition
   :skolemid skolem_internal_req__test_crate!Y.impl&__10.tr1._definition
)))
(declare-fun ens%test_crate!Y.impl&%10.tr1. (test_crate!Y.Instance. test_crate!Y.opt.
  test_crate!Goo.
 ) Bool
)
(assert
 (forall ((self! test_crate!Y.Instance.) (param_token_0_opt! test_crate!Y.opt.) (param_token_1_storage_opt!
    test_crate!Goo.
   )
  ) (!
   (= (ens%test_crate!Y.impl&%10.tr1. self! param_token_0_opt! param_token_1_storage_opt!)
    (and
     (has_type (Poly%test_crate!Goo. param_token_1_storage_opt!) TYPE%test_crate!Goo.)
     (is-test_crate!Goo./Bar param_token_1_storage_opt!)
   ))
   :pattern ((ens%test_crate!Y.impl&%10.tr1. self! param_token_0_opt! param_token_1_storage_opt!))
   :qid internal_ens__test_crate!Y.impl&__10.tr1._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__10.tr1._definition
)))

;; Function-Specs test_crate::Y::Instance::tr2
(declare-fun req%test_crate!Y.impl&%10.tr2. (test_crate!Y.Instance. test_crate!Y.opt.)
 Bool
)
(declare-const %%global_location_label%%9 Bool)
(declare-const %%global_location_label%%10 Bool)
(assert
 (forall ((self! test_crate!Y.Instance.) (param_token_0_opt! test_crate!Y.opt.)) (!
   (= (req%test_crate!Y.impl&%10.tr2. self! param_token_0_opt!) (and
     (=>
      %%global_location_label%%9
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt.
         $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. param_token_0_opt!)
        )
       ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. self!))
     ))
     (=>
      %%global_location_label%%10
      (let
       ((tmp%%$ (%Poly%test_crate!Goo. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt.
           $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. param_token_0_opt!)
       ))))
       (and
        (is-test_crate!Goo./Qux tmp%%$)
        (let
         ((i1$ (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
         true
   ))))))
   :pattern ((req%test_crate!Y.impl&%10.tr2. self! param_token_0_opt!))
   :qid internal_req__test_crate!Y.impl&__10.tr2._definition
   :skolemid skolem_internal_req__test_crate!Y.impl&__10.tr2._definition
)))
(declare-fun ens%test_crate!Y.impl&%10.tr2. (test_crate!Y.Instance. test_crate!Y.opt.
  test_crate!Goo.
 ) Bool
)
(assert
 (forall ((self! test_crate!Y.Instance.) (param_token_0_opt! test_crate!Y.opt.) (param_token_1_storage_opt!
    test_crate!Goo.
   )
  ) (!
   (= (ens%test_crate!Y.impl&%10.tr2. self! param_token_0_opt! param_token_1_storage_opt!)
    (and
     (has_type (Poly%test_crate!Goo. param_token_1_storage_opt!) TYPE%test_crate!Goo.)
     (let
      ((i1$ (let
         ((tmp%%$ (%Poly%test_crate!Goo. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt.
             $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. param_token_0_opt!)
         ))))
         (ite
          (is-test_crate!Goo./Qux tmp%%$)
          (let
           ((i1$1 (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
           i1$1
          )
          (%I (vstd!pervasive.arbitrary.? $ (UINT 64)))
      ))))
      (and
       (is-test_crate!Goo./Qux param_token_1_storage_opt!)
       (let
        ((j1$ (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. param_token_1_storage_opt!)))))
        true
     )))
     (let
      ((i1$ (let
         ((tmp%%$ (%Poly%test_crate!Goo. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt.
             $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. param_token_0_opt!)
         ))))
         (ite
          (is-test_crate!Goo./Qux tmp%%$)
          (let
           ((i1$1 (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
           i1$1
          )
          (%I (vstd!pervasive.arbitrary.? $ (UINT 64)))
      ))))
      (let
       ((j1$ (ite
          (is-test_crate!Goo./Qux param_token_1_storage_opt!)
          (let
           ((j1$1 (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. param_token_1_storage_opt!)))))
           j1$1
          )
          (%I (vstd!pervasive.arbitrary.? $ (UINT 64)))
       )))
       (= i1$ j1$)
   ))))
   :pattern ((ens%test_crate!Y.impl&%10.tr2. self! param_token_0_opt! param_token_1_storage_opt!))
   :qid internal_ens__test_crate!Y.impl&__10.tr2._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__10.tr2._definition
)))

;; Function-Specs test_crate::Y::Instance::tr3
(declare-fun req%test_crate!Y.impl&%10.tr3. (test_crate!Y.Instance. test_crate!Y.opt.)
 Bool
)
(declare-const %%global_location_label%%11 Bool)
(declare-const %%global_location_label%%12 Bool)
(assert
 (forall ((self! test_crate!Y.Instance.) (param_token_0_opt! test_crate!Y.opt.)) (!
   (= (req%test_crate!Y.impl&%10.tr3. self! param_token_0_opt!) (and
     (=>
      %%global_location_label%%11
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt.
         $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. param_token_0_opt!)
        )
       ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. self!))
     ))
     (=>
      %%global_location_label%%12
      (let
       ((tmp%%$ (%Poly%test_crate!Goo. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt.
           $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. param_token_0_opt!)
       ))))
       (and
        (is-test_crate!Goo./Tal tmp%%$)
        (let
         ((i1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
         (let
          ((i2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
          true
   )))))))
   :pattern ((req%test_crate!Y.impl&%10.tr3. self! param_token_0_opt!))
   :qid internal_req__test_crate!Y.impl&__10.tr3._definition
   :skolemid skolem_internal_req__test_crate!Y.impl&__10.tr3._definition
)))
(declare-fun ens%test_crate!Y.impl&%10.tr3. (test_crate!Y.Instance. test_crate!Y.opt.
  test_crate!Goo.
 ) Bool
)
(assert
 (forall ((self! test_crate!Y.Instance.) (param_token_0_opt! test_crate!Y.opt.) (param_token_1_storage_opt!
    test_crate!Goo.
   )
  ) (!
   (= (ens%test_crate!Y.impl&%10.tr3. self! param_token_0_opt! param_token_1_storage_opt!)
    (and
     (has_type (Poly%test_crate!Goo. param_token_1_storage_opt!) TYPE%test_crate!Goo.)
     (let
      ((tmp%%$ (let
         ((tmp%%$1 (%Poly%test_crate!Goo. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt.
             $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. param_token_0_opt!)
         ))))
         (ite
          (is-test_crate!Goo./Tal tmp%%$1)
          (let
           ((i1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$1)))))
           (let
            ((i2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$1)))))
            (tuple%2./tuple%2 (I i1$) (I i2$))
          ))
          (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))))
      ))))
      (let
       ((i1$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
       (let
        ((i2$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
        (and
         (is-test_crate!Goo./Tal param_token_1_storage_opt!)
         (let
          ((j1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. param_token_1_storage_opt!)))))
          (let
           ((j2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. param_token_1_storage_opt!)))))
           true
     ))))))
     (let
      ((tmp%%$ (let
         ((tmp%%$1 (%Poly%test_crate!Goo. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt.
             $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. param_token_0_opt!)
         ))))
         (ite
          (is-test_crate!Goo./Tal tmp%%$1)
          (let
           ((i1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$1)))))
           (let
            ((i2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$1)))))
            (tuple%2./tuple%2 (I i1$) (I i2$))
          ))
          (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))))
      ))))
      (let
       ((i1$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
       (let
        ((i2$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
        (let
         ((tmp%%$2 (ite
            (is-test_crate!Goo./Tal param_token_1_storage_opt!)
            (let
             ((j1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. param_token_1_storage_opt!)))))
             (let
              ((j2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. param_token_1_storage_opt!)))))
              (tuple%2./tuple%2 (I j1$) (I j2$))
            ))
            (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))))
         )))
         (let
          ((j1$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$2))))))
          (let
           ((j2$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$2))))))
           (= i1$ j1$)
     ))))))
     (let
      ((tmp%%$ (let
         ((tmp%%$1 (%Poly%test_crate!Goo. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt.
             $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. param_token_0_opt!)
         ))))
         (ite
          (is-test_crate!Goo./Tal tmp%%$1)
          (let
           ((i1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$1)))))
           (let
            ((i2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$1)))))
            (tuple%2./tuple%2 (I i1$) (I i2$))
          ))
          (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))))
      ))))
      (let
       ((i1$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
       (let
        ((i2$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
        (let
         ((tmp%%$2 (ite
            (is-test_crate!Goo./Tal param_token_1_storage_opt!)
            (let
             ((j1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. param_token_1_storage_opt!)))))
             (let
              ((j2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. param_token_1_storage_opt!)))))
              (tuple%2./tuple%2 (I j1$) (I j2$))
            ))
            (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))))
         )))
         (let
          ((j1$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$2))))))
          (let
           ((j2$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$2))))))
           (= i2$ j2$)
   ))))))))
   :pattern ((ens%test_crate!Y.impl&%10.tr3. self! param_token_0_opt! param_token_1_storage_opt!))
   :qid internal_ens__test_crate!Y.impl&__10.tr3._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__10.tr3._definition
)))

;; Function-Specs test_crate::Y::Instance::tr4
(declare-fun req%test_crate!Y.impl&%10.tr4. (test_crate!Y.Instance. Int test_crate!Y.m.)
 Bool
)
(declare-const %%global_location_label%%13 Bool)
(declare-const %%global_location_label%%14 Bool)
(assert
 (forall ((self! test_crate!Y.Instance.) (key! Int) (param_token_0_m! test_crate!Y.m.))
  (!
   (= (req%test_crate!Y.impl&%10.tr4. self! key! param_token_0_m!) (and
     (=>
      %%global_location_label%%13
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.KeyValueToken.instance_id.? $ TYPE%test_crate!Y.m.
         $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. param_token_0_m!)
        )
       ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. self!))
     ))
     (=>
      %%global_location_label%%14
      (and
       (= (%I (vstd!tokens.KeyValueToken.key.? $ TYPE%test_crate!Y.m. $ INT $ TYPE%test_crate!Goo.
          (Poly%test_crate!Y.m. param_token_0_m!)
         )
        ) key!
       )
       (let
        ((tmp%%$ (%Poly%test_crate!Goo. (vstd!tokens.KeyValueToken.value.? $ TYPE%test_crate!Y.m.
            $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. param_token_0_m!)
        ))))
        (is-test_crate!Goo./Bar tmp%%$)
   )))))
   :pattern ((req%test_crate!Y.impl&%10.tr4. self! key! param_token_0_m!))
   :qid internal_req__test_crate!Y.impl&__10.tr4._definition
   :skolemid skolem_internal_req__test_crate!Y.impl&__10.tr4._definition
)))
(declare-fun ens%test_crate!Y.impl&%10.tr4. (test_crate!Y.Instance. Int test_crate!Y.m.
  test_crate!Goo.
 ) Bool
)
(assert
 (forall ((self! test_crate!Y.Instance.) (key! Int) (param_token_0_m! test_crate!Y.m.)
   (param_token_1_storage_m! test_crate!Goo.)
  ) (!
   (= (ens%test_crate!Y.impl&%10.tr4. self! key! param_token_0_m! param_token_1_storage_m!)
    (and
     (has_type (Poly%test_crate!Goo. param_token_1_storage_m!) TYPE%test_crate!Goo.)
     (is-test_crate!Goo./Bar param_token_1_storage_m!)
   ))
   :pattern ((ens%test_crate!Y.impl&%10.tr4. self! key! param_token_0_m! param_token_1_storage_m!))
   :qid internal_ens__test_crate!Y.impl&__10.tr4._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__10.tr4._definition
)))

;; Function-Specs test_crate::Y::Instance::tr5
(declare-fun req%test_crate!Y.impl&%10.tr5. (test_crate!Y.Instance. Int test_crate!Y.m.)
 Bool
)
(declare-const %%global_location_label%%15 Bool)
(declare-const %%global_location_label%%16 Bool)
(assert
 (forall ((self! test_crate!Y.Instance.) (key! Int) (param_token_0_m! test_crate!Y.m.))
  (!
   (= (req%test_crate!Y.impl&%10.tr5. self! key! param_token_0_m!) (and
     (=>
      %%global_location_label%%15
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.KeyValueToken.instance_id.? $ TYPE%test_crate!Y.m.
         $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. param_token_0_m!)
        )
       ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. self!))
     ))
     (=>
      %%global_location_label%%16
      (and
       (= (%I (vstd!tokens.KeyValueToken.key.? $ TYPE%test_crate!Y.m. $ INT $ TYPE%test_crate!Goo.
          (Poly%test_crate!Y.m. param_token_0_m!)
         )
        ) key!
       )
       (let
        ((tmp%%$ (%Poly%test_crate!Goo. (vstd!tokens.KeyValueToken.value.? $ TYPE%test_crate!Y.m.
            $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. param_token_0_m!)
        ))))
        (and
         (is-test_crate!Goo./Qux tmp%%$)
         (let
          ((i1$ (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
          true
   )))))))
   :pattern ((req%test_crate!Y.impl&%10.tr5. self! key! param_token_0_m!))
   :qid internal_req__test_crate!Y.impl&__10.tr5._definition
   :skolemid skolem_internal_req__test_crate!Y.impl&__10.tr5._definition
)))
(declare-fun ens%test_crate!Y.impl&%10.tr5. (test_crate!Y.Instance. Int test_crate!Y.m.
  test_crate!Goo.
 ) Bool
)
(assert
 (forall ((self! test_crate!Y.Instance.) (key! Int) (param_token_0_m! test_crate!Y.m.)
   (param_token_1_storage_m! test_crate!Goo.)
  ) (!
   (= (ens%test_crate!Y.impl&%10.tr5. self! key! param_token_0_m! param_token_1_storage_m!)
    (and
     (has_type (Poly%test_crate!Goo. param_token_1_storage_m!) TYPE%test_crate!Goo.)
     (let
      ((i1$ (let
         ((tmp%%$ (%Poly%test_crate!Goo. (vstd!tokens.KeyValueToken.value.? $ TYPE%test_crate!Y.m.
             $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. param_token_0_m!)
         ))))
         (ite
          (is-test_crate!Goo./Qux tmp%%$)
          (let
           ((i1$1 (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
           i1$1
          )
          (%I (vstd!pervasive.arbitrary.? $ (UINT 64)))
      ))))
      (and
       (is-test_crate!Goo./Qux param_token_1_storage_m!)
       (let
        ((j1$ (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. param_token_1_storage_m!)))))
        true
     )))
     (let
      ((i1$ (let
         ((tmp%%$ (%Poly%test_crate!Goo. (vstd!tokens.KeyValueToken.value.? $ TYPE%test_crate!Y.m.
             $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. param_token_0_m!)
         ))))
         (ite
          (is-test_crate!Goo./Qux tmp%%$)
          (let
           ((i1$1 (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
           i1$1
          )
          (%I (vstd!pervasive.arbitrary.? $ (UINT 64)))
      ))))
      (let
       ((j1$ (ite
          (is-test_crate!Goo./Qux param_token_1_storage_m!)
          (let
           ((j1$1 (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. param_token_1_storage_m!)))))
           j1$1
          )
          (%I (vstd!pervasive.arbitrary.? $ (UINT 64)))
       )))
       (= i1$ j1$)
   ))))
   :pattern ((ens%test_crate!Y.impl&%10.tr5. self! key! param_token_0_m! param_token_1_storage_m!))
   :qid internal_ens__test_crate!Y.impl&__10.tr5._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__10.tr5._definition
)))

;; Function-Specs test_crate::Y::Instance::tr6
(declare-fun req%test_crate!Y.impl&%10.tr6. (test_crate!Y.Instance. Int test_crate!Y.m.)
 Bool
)
(declare-const %%global_location_label%%17 Bool)
(declare-const %%global_location_label%%18 Bool)
(assert
 (forall ((self! test_crate!Y.Instance.) (key! Int) (param_token_0_m! test_crate!Y.m.))
  (!
   (= (req%test_crate!Y.impl&%10.tr6. self! key! param_token_0_m!) (and
     (=>
      %%global_location_label%%17
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.KeyValueToken.instance_id.? $ TYPE%test_crate!Y.m.
         $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. param_token_0_m!)
        )
       ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. self!))
     ))
     (=>
      %%global_location_label%%18
      (and
       (= (%I (vstd!tokens.KeyValueToken.key.? $ TYPE%test_crate!Y.m. $ INT $ TYPE%test_crate!Goo.
          (Poly%test_crate!Y.m. param_token_0_m!)
         )
        ) key!
       )
       (let
        ((tmp%%$ (%Poly%test_crate!Goo. (vstd!tokens.KeyValueToken.value.? $ TYPE%test_crate!Y.m.
            $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. param_token_0_m!)
        ))))
        (and
         (is-test_crate!Goo./Tal tmp%%$)
         (let
          ((i1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
          (let
           ((i2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
           true
   ))))))))
   :pattern ((req%test_crate!Y.impl&%10.tr6. self! key! param_token_0_m!))
   :qid internal_req__test_crate!Y.impl&__10.tr6._definition
   :skolemid skolem_internal_req__test_crate!Y.impl&__10.tr6._definition
)))
(declare-fun ens%test_crate!Y.impl&%10.tr6. (test_crate!Y.Instance. Int test_crate!Y.m.
  test_crate!Goo.
 ) Bool
)
(assert
 (forall ((self! test_crate!Y.Instance.) (key! Int) (param_token_0_m! test_crate!Y.m.)
   (param_token_1_storage_m! test_crate!Goo.)
  ) (!
   (= (ens%test_crate!Y.impl&%10.tr6. self! key! param_token_0_m! param_token_1_storage_m!)
    (and
     (has_type (Poly%test_crate!Goo. param_token_1_storage_m!) TYPE%test_crate!Goo.)
     (let
      ((tmp%%$ (let
         ((tmp%%$1 (%Poly%test_crate!Goo. (vstd!tokens.KeyValueToken.value.? $ TYPE%test_crate!Y.m.
             $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. param_token_0_m!)
         ))))
         (ite
          (is-test_crate!Goo./Tal tmp%%$1)
          (let
           ((i1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$1)))))
           (let
            ((i2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$1)))))
            (tuple%2./tuple%2 (I i1$) (I i2$))
          ))
          (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))))
      ))))
      (let
       ((i1$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
       (let
        ((i2$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
        (and
         (is-test_crate!Goo./Tal param_token_1_storage_m!)
         (let
          ((j1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. param_token_1_storage_m!)))))
          (let
           ((j2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. param_token_1_storage_m!)))))
           true
     ))))))
     (let
      ((tmp%%$ (let
         ((tmp%%$1 (%Poly%test_crate!Goo. (vstd!tokens.KeyValueToken.value.? $ TYPE%test_crate!Y.m.
             $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. param_token_0_m!)
         ))))
         (ite
          (is-test_crate!Goo./Tal tmp%%$1)
          (let
           ((i1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$1)))))
           (let
            ((i2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$1)))))
            (tuple%2./tuple%2 (I i1$) (I i2$))
          ))
          (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))))
      ))))
      (let
       ((i1$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
       (let
        ((i2$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
        (let
         ((tmp%%$2 (ite
            (is-test_crate!Goo./Tal param_token_1_storage_m!)
            (let
             ((j1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. param_token_1_storage_m!)))))
             (let
              ((j2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. param_token_1_storage_m!)))))
              (tuple%2./tuple%2 (I j1$) (I j2$))
            ))
            (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))))
         )))
         (let
          ((j1$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$2))))))
          (let
           ((j2$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$2))))))
           (= i1$ j1$)
     ))))))
     (let
      ((tmp%%$ (let
         ((tmp%%$1 (%Poly%test_crate!Goo. (vstd!tokens.KeyValueToken.value.? $ TYPE%test_crate!Y.m.
             $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. param_token_0_m!)
         ))))
         (ite
          (is-test_crate!Goo./Tal tmp%%$1)
          (let
           ((i1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$1)))))
           (let
            ((i2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$1)))))
            (tuple%2./tuple%2 (I i1$) (I i2$))
          ))
          (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))))
      ))))
      (let
       ((i1$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
       (let
        ((i2$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
        (let
         ((tmp%%$2 (ite
            (is-test_crate!Goo./Tal param_token_1_storage_m!)
            (let
             ((j1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. param_token_1_storage_m!)))))
             (let
              ((j2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. param_token_1_storage_m!)))))
              (tuple%2./tuple%2 (I j1$) (I j2$))
            ))
            (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))))
         )))
         (let
          ((j1$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$2))))))
          (let
           ((j2$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$2))))))
           (= i2$ j2$)
   ))))))))
   :pattern ((ens%test_crate!Y.impl&%10.tr6. self! key! param_token_0_m! param_token_1_storage_m!))
   :qid internal_ens__test_crate!Y.impl&__10.tr6._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__10.tr6._definition
)))

;; Function-Specs test_crate::Y::Instance::tr7
(declare-fun req%test_crate!Y.impl&%10.tr7. (test_crate!Y.Instance. Int test_crate!Y.m.
  test_crate!Y.opt.
 ) Bool
)
(declare-const %%global_location_label%%19 Bool)
(declare-const %%global_location_label%%20 Bool)
(declare-const %%global_location_label%%21 Bool)
(declare-const %%global_location_label%%22 Bool)
(assert
 (forall ((self! test_crate!Y.Instance.) (key! Int) (param_token_1_m! test_crate!Y.m.)
   (param_token_0_opt! test_crate!Y.opt.)
  ) (!
   (= (req%test_crate!Y.impl&%10.tr7. self! key! param_token_1_m! param_token_0_opt!)
    (and
     (=>
      %%global_location_label%%19
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.KeyValueToken.instance_id.? $ TYPE%test_crate!Y.m.
         $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. param_token_1_m!)
        )
       ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. self!))
     ))
     (=>
      %%global_location_label%%20
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt.
         $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. param_token_0_opt!)
        )
       ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. self!))
     ))
     (=>
      %%global_location_label%%21
      (let
       ((tmp%%$ (%Poly%test_crate!Goo. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt.
           $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. param_token_0_opt!)
       ))))
       (is-test_crate!Goo./Bar tmp%%$)
     ))
     (=>
      %%global_location_label%%22
      (and
       (= (%I (vstd!tokens.KeyValueToken.key.? $ TYPE%test_crate!Y.m. $ INT $ TYPE%test_crate!Goo.
          (Poly%test_crate!Y.m. param_token_1_m!)
         )
        ) key!
       )
       (let
        ((tmp%%$ (%Poly%test_crate!Goo. (vstd!tokens.KeyValueToken.value.? $ TYPE%test_crate!Y.m.
            $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. param_token_1_m!)
        ))))
        (is-test_crate!Goo./Bar tmp%%$)
   )))))
   :pattern ((req%test_crate!Y.impl&%10.tr7. self! key! param_token_1_m! param_token_0_opt!))
   :qid internal_req__test_crate!Y.impl&__10.tr7._definition
   :skolemid skolem_internal_req__test_crate!Y.impl&__10.tr7._definition
)))

;; Function-Specs test_crate::Y::Instance::tr8
(declare-fun req%test_crate!Y.impl&%10.tr8. (test_crate!Y.Instance. Int test_crate!Y.m.
  test_crate!Y.opt.
 ) Bool
)
(declare-const %%global_location_label%%23 Bool)
(declare-const %%global_location_label%%24 Bool)
(declare-const %%global_location_label%%25 Bool)
(declare-const %%global_location_label%%26 Bool)
(declare-const %%global_location_label%%27 Bool)
(assert
 (forall ((self! test_crate!Y.Instance.) (key! Int) (param_token_1_m! test_crate!Y.m.)
   (param_token_0_opt! test_crate!Y.opt.)
  ) (!
   (= (req%test_crate!Y.impl&%10.tr8. self! key! param_token_1_m! param_token_0_opt!)
    (and
     (=>
      %%global_location_label%%23
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.KeyValueToken.instance_id.? $ TYPE%test_crate!Y.m.
         $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. param_token_1_m!)
        )
       ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. self!))
     ))
     (=>
      %%global_location_label%%24
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt.
         $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. param_token_0_opt!)
        )
       ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. self!))
     ))
     (=>
      %%global_location_label%%25
      (let
       ((tmp%%$ (%Poly%test_crate!Goo. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt.
           $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. param_token_0_opt!)
       ))))
       (and
        (is-test_crate!Goo./Qux tmp%%$)
        (let
         ((i1$ (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
         true
     ))))
     (=>
      %%global_location_label%%26
      (let
       ((i1$ (let
          ((tmp%%$ (%Poly%test_crate!Goo. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt.
              $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. param_token_0_opt!)
          ))))
          (ite
           (is-test_crate!Goo./Qux tmp%%$)
           (let
            ((i1$1 (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
            i1$1
           )
           (%I (vstd!pervasive.arbitrary.? $ (UINT 64)))
       ))))
       (and
        (= (%I (vstd!tokens.KeyValueToken.key.? $ TYPE%test_crate!Y.m. $ INT $ TYPE%test_crate!Goo.
           (Poly%test_crate!Y.m. param_token_1_m!)
          )
         ) key!
        )
        (let
         ((tmp%%$ (%Poly%test_crate!Goo. (vstd!tokens.KeyValueToken.value.? $ TYPE%test_crate!Y.m.
             $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. param_token_1_m!)
         ))))
         (and
          (is-test_crate!Goo./Qux tmp%%$)
          (let
           ((j1$ (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
           true
     ))))))
     (=>
      %%global_location_label%%27
      (let
       ((i1$ (let
          ((tmp%%$ (%Poly%test_crate!Goo. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt.
              $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. param_token_0_opt!)
          ))))
          (ite
           (is-test_crate!Goo./Qux tmp%%$)
           (let
            ((i1$1 (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
            i1$1
           )
           (%I (vstd!pervasive.arbitrary.? $ (UINT 64)))
       ))))
       (let
        ((j1$ (let
           ((tmp%%$ (%Poly%test_crate!Goo. (vstd!tokens.KeyValueToken.value.? $ TYPE%test_crate!Y.m.
               $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. param_token_1_m!)
           ))))
           (ite
            (is-test_crate!Goo./Qux tmp%%$)
            (let
             ((j1$1 (test_crate!Goo./Qux/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
             j1$1
            )
            (%I (vstd!pervasive.arbitrary.? $ (UINT 64)))
        ))))
        (= i1$ j1$)
   )))))
   :pattern ((req%test_crate!Y.impl&%10.tr8. self! key! param_token_1_m! param_token_0_opt!))
   :qid internal_req__test_crate!Y.impl&__10.tr8._definition
   :skolemid skolem_internal_req__test_crate!Y.impl&__10.tr8._definition
)))

;; Function-Specs test_crate::Y::Instance::tr9
(declare-fun req%test_crate!Y.impl&%10.tr9. (test_crate!Y.Instance. Int test_crate!Y.m.
  test_crate!Y.opt.
 ) Bool
)
(declare-const %%global_location_label%%28 Bool)
(declare-const %%global_location_label%%29 Bool)
(declare-const %%global_location_label%%30 Bool)
(declare-const %%global_location_label%%31 Bool)
(declare-const %%global_location_label%%32 Bool)
(declare-const %%global_location_label%%33 Bool)
(assert
 (forall ((self! test_crate!Y.Instance.) (key! Int) (param_token_1_m! test_crate!Y.m.)
   (param_token_0_opt! test_crate!Y.opt.)
  ) (!
   (= (req%test_crate!Y.impl&%10.tr9. self! key! param_token_1_m! param_token_0_opt!)
    (and
     (=>
      %%global_location_label%%28
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.KeyValueToken.instance_id.? $ TYPE%test_crate!Y.m.
         $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. param_token_1_m!)
        )
       ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. self!))
     ))
     (=>
      %%global_location_label%%29
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt.
         $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. param_token_0_opt!)
        )
       ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. self!))
     ))
     (=>
      %%global_location_label%%30
      (let
       ((tmp%%$ (%Poly%test_crate!Goo. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt.
           $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. param_token_0_opt!)
       ))))
       (and
        (is-test_crate!Goo./Tal tmp%%$)
        (let
         ((i1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
         (let
          ((i2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$)))))
          true
     )))))
     (=>
      %%global_location_label%%31
      (let
       ((tmp%%$ (let
          ((tmp%%$1 (%Poly%test_crate!Goo. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt.
              $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. param_token_0_opt!)
          ))))
          (ite
           (is-test_crate!Goo./Tal tmp%%$1)
           (let
            ((i1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$1)))))
            (let
             ((i2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$1)))))
             (tuple%2./tuple%2 (I i1$) (I i2$))
           ))
           (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))))
       ))))
       (let
        ((i1$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
        (let
         ((i2$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
         (and
          (= (%I (vstd!tokens.KeyValueToken.key.? $ TYPE%test_crate!Y.m. $ INT $ TYPE%test_crate!Goo.
             (Poly%test_crate!Y.m. param_token_1_m!)
            )
           ) key!
          )
          (let
           ((tmp%%$2 (%Poly%test_crate!Goo. (vstd!tokens.KeyValueToken.value.? $ TYPE%test_crate!Y.m.
               $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. param_token_1_m!)
           ))))
           (and
            (is-test_crate!Goo./Tal tmp%%$2)
            (let
             ((j1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$2)))))
             (let
              ((j2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$2)))))
              true
     )))))))))
     (=>
      %%global_location_label%%32
      (let
       ((tmp%%$ (let
          ((tmp%%$1 (%Poly%test_crate!Goo. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt.
              $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. param_token_0_opt!)
          ))))
          (ite
           (is-test_crate!Goo./Tal tmp%%$1)
           (let
            ((i1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$1)))))
            (let
             ((i2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$1)))))
             (tuple%2./tuple%2 (I i1$) (I i2$))
           ))
           (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))))
       ))))
       (let
        ((i1$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
        (let
         ((i2$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
         (let
          ((tmp%%$2 (let
             ((tmp%%$3 (%Poly%test_crate!Goo. (vstd!tokens.KeyValueToken.value.? $ TYPE%test_crate!Y.m.
                 $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. param_token_1_m!)
             ))))
             (ite
              (is-test_crate!Goo./Tal tmp%%$3)
              (let
               ((j1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$3)))))
               (let
                ((j2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$3)))))
                (tuple%2./tuple%2 (I j1$) (I j2$))
              ))
              (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))))
          ))))
          (let
           ((j1$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$2))))))
           (let
            ((j2$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$2))))))
            (= i1$ j1$)
     )))))))
     (=>
      %%global_location_label%%33
      (let
       ((tmp%%$ (let
          ((tmp%%$1 (%Poly%test_crate!Goo. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt.
              $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. param_token_0_opt!)
          ))))
          (ite
           (is-test_crate!Goo./Tal tmp%%$1)
           (let
            ((i1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$1)))))
            (let
             ((i2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$1)))))
             (tuple%2./tuple%2 (I i1$) (I i2$))
           ))
           (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))))
       ))))
       (let
        ((i1$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
        (let
         ((i2$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
         (let
          ((tmp%%$2 (let
             ((tmp%%$3 (%Poly%test_crate!Goo. (vstd!tokens.KeyValueToken.value.? $ TYPE%test_crate!Y.m.
                 $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. param_token_1_m!)
             ))))
             (ite
              (is-test_crate!Goo./Tal tmp%%$3)
              (let
               ((j1$ (test_crate!Goo./Tal/0 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$3)))))
               (let
                ((j2$ (test_crate!Goo./Tal/1 (%Poly%test_crate!Goo. (Poly%test_crate!Goo. tmp%%$3)))))
                (tuple%2./tuple%2 (I j1$) (I j2$))
              ))
              (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))))
          ))))
          (let
           ((j1$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$2))))))
           (let
            ((j2$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$2))))))
            (= i2$ j2$)
   )))))))))
   :pattern ((req%test_crate!Y.impl&%10.tr9. self! key! param_token_1_m! param_token_0_opt!))
   :qid internal_req__test_crate!Y.impl&__10.tr9._definition
   :skolemid skolem_internal_req__test_crate!Y.impl&__10.tr9._definition
)))

;; Function-Specs test_crate::correct_tr
(declare-fun ens%test_crate!correct_tr. (test_crate!Y.State. test_crate!Y.State. Int)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.) (key! Int)) (!
   (= (ens%test_crate!correct_tr. pre! post! key!) (and
     (= (test_crate!rel_tr1.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
      (test_crate!Y.impl&%13.tr1.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
     )))
     (= (test_crate!rel_tr1_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       )
      ) (test_crate!Y.impl&%13.tr1_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
     )))
     (= (test_crate!rel_tr2.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
      (test_crate!Y.impl&%13.tr2.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
     )))
     (= (test_crate!rel_tr2_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       )
      ) (test_crate!Y.impl&%13.tr2_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
     )))
     (= (test_crate!rel_tr3.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
      (test_crate!Y.impl&%13.tr3.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
     )))
     (= (test_crate!rel_tr3_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       )
      ) (test_crate!Y.impl&%13.tr3_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
     )))
     (= (test_crate!rel_tr4.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!)
       (I key!)
      ) (test_crate!Y.impl&%13.tr4.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       ) (I key!)
     ))
     (= (test_crate!rel_tr4_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       ) (I key!)
      ) (test_crate!Y.impl&%13.tr4_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       ) (I key!)
     ))
     (= (test_crate!rel_tr5.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!)
       (I key!)
      ) (test_crate!Y.impl&%13.tr5.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       ) (I key!)
     ))
     (= (test_crate!rel_tr5_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       ) (I key!)
      ) (test_crate!Y.impl&%13.tr5_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       ) (I key!)
     ))
     (= (test_crate!rel_tr6.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!)
       (I key!)
      ) (test_crate!Y.impl&%13.tr6.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       ) (I key!)
     ))
     (= (test_crate!rel_tr6_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       ) (I key!)
      ) (test_crate!Y.impl&%13.tr6_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       ) (I key!)
     ))
     (= (test_crate!rel_tr7.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!)
       (I key!)
      ) (test_crate!Y.impl&%13.tr7.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       ) (I key!)
     ))
     (= (test_crate!rel_tr7_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       ) (I key!)
      ) (test_crate!Y.impl&%13.tr7_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       ) (I key!)
     ))
     (= (test_crate!rel_tr8.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!)
       (I key!)
      ) (test_crate!Y.impl&%13.tr8.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       ) (I key!)
     ))
     (= (test_crate!rel_tr8_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       ) (I key!)
      ) (test_crate!Y.impl&%13.tr8_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       ) (I key!)
     ))
     (= (test_crate!rel_tr9.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!)
       (I key!)
      ) (test_crate!Y.impl&%13.tr9.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       ) (I key!)
     ))
     (= (test_crate!rel_tr9_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       ) (I key!)
      ) (test_crate!Y.impl&%13.tr9_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       ) (I key!)
   ))))
   :pattern ((ens%test_crate!correct_tr. pre! post! key!))
   :qid internal_ens__test_crate!correct_tr._definition
   :skolemid skolem_internal_ens__test_crate!correct_tr._definition
)))

;; Function-Def test_crate::correct_tr
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-special_refutable_pattern_binding_codegen/test.rs:454:7: 454:61 (#0)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!Y.State.)
 (declare-const post! test_crate!Y.State.)
 (declare-const key! Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%test_crate!Y.State. pre!) TYPE%test_crate!Y.State.)
 )
 (assert
  (has_type (Poly%test_crate!Y.State. post!) TYPE%test_crate!Y.State.)
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
 (assert
  (not (and
    (=>
     %%location_label%%0
     (= (test_crate!rel_tr1.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
      (test_crate!Y.impl&%13.tr1.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
    ))))
    (and
     (=>
      %%location_label%%1
      (= (test_crate!rel_tr1_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
         post!
        )
       ) (test_crate!Y.impl&%13.tr1_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
         post!
     ))))
     (and
      (=>
       %%location_label%%2
       (= (test_crate!rel_tr2.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
        (test_crate!Y.impl&%13.tr2.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
          post!
      ))))
      (and
       (=>
        %%location_label%%3
        (= (test_crate!rel_tr2_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
           post!
          )
         ) (test_crate!Y.impl&%13.tr2_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
           post!
       ))))
       (and
        (=>
         %%location_label%%4
         (= (test_crate!rel_tr3.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
          (test_crate!Y.impl&%13.tr3.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
            post!
        ))))
        (and
         (=>
          %%location_label%%5
          (= (test_crate!rel_tr3_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
             post!
            )
           ) (test_crate!Y.impl&%13.tr3_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
             post!
         ))))
         (and
          (=>
           %%location_label%%6
           (= (test_crate!rel_tr4.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!)
             (I key!)
            ) (test_crate!Y.impl&%13.tr4.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
              post!
             ) (I key!)
          )))
          (and
           (=>
            %%location_label%%7
            (= (test_crate!rel_tr4_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
               post!
              ) (I key!)
             ) (test_crate!Y.impl&%13.tr4_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
               post!
              ) (I key!)
           )))
           (and
            (=>
             %%location_label%%8
             (= (test_crate!rel_tr5.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!)
               (I key!)
              ) (test_crate!Y.impl&%13.tr5.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
                post!
               ) (I key!)
            )))
            (and
             (=>
              %%location_label%%9
              (= (test_crate!rel_tr5_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
                 post!
                ) (I key!)
               ) (test_crate!Y.impl&%13.tr5_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
                 post!
                ) (I key!)
             )))
             (and
              (=>
               %%location_label%%10
               (= (test_crate!rel_tr6.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!)
                 (I key!)
                ) (test_crate!Y.impl&%13.tr6.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
                  post!
                 ) (I key!)
              )))
              (and
               (=>
                %%location_label%%11
                (= (test_crate!rel_tr6_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
                   post!
                  ) (I key!)
                 ) (test_crate!Y.impl&%13.tr6_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
                   post!
                  ) (I key!)
               )))
               (and
                (=>
                 %%location_label%%12
                 (= (test_crate!rel_tr7.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!)
                   (I key!)
                  ) (test_crate!Y.impl&%13.tr7.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
                    post!
                   ) (I key!)
                )))
                (and
                 (=>
                  %%location_label%%13
                  (= (test_crate!rel_tr7_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
                     post!
                    ) (I key!)
                   ) (test_crate!Y.impl&%13.tr7_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
                     post!
                    ) (I key!)
                 )))
                 (and
                  (=>
                   %%location_label%%14
                   (= (test_crate!rel_tr8.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!)
                     (I key!)
                    ) (test_crate!Y.impl&%13.tr8.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
                      post!
                     ) (I key!)
                  )))
                  (and
                   (=>
                    %%location_label%%15
                    (= (test_crate!rel_tr8_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
                       post!
                      ) (I key!)
                     ) (test_crate!Y.impl&%13.tr8_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
                       post!
                      ) (I key!)
                   )))
                   (and
                    (=>
                     %%location_label%%16
                     (= (test_crate!rel_tr9.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!)
                       (I key!)
                      ) (test_crate!Y.impl&%13.tr9.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
                        post!
                       ) (I key!)
                    )))
                    (=>
                     %%location_label%%17
                     (= (test_crate!rel_tr9_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
                        post!
                       ) (I key!)
                      ) (test_crate!Y.impl&%13.tr9_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
                        post!
                       ) (I key!)
 ))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::test_inst1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-special_refutable_pattern_binding_codegen/test.rs:477:7: 477:22 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 test_crate!Goo.)
 (declare-const tmp%3 vstd!map.Map<int./test_crate!Goo.>.)
 (declare-const tmp%4 core!option.Option.)
 (declare-const tmp%5 core!option.Option.)
 (declare-const tmp%6 Bool)
 (declare-const tmp%7 Poly)
 (declare-const tmp%8 Poly)
 (declare-const tmp%9 Poly)
 (declare-const tmp%10 Bool)
 (declare-const tmp%11 Bool)
 (declare-const p_m@0 vstd!map.Map<int./test_crate!Goo.>.)
 (declare-const tmp%%@ tuple%3.)
 (declare-const verus_tmp_inst@ test_crate!Y.Instance.)
 (declare-const verus_tmp_m_token@ vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>.)
 (declare-const verus_tmp_opt_token@ core!option.Option.)
 (declare-const inst@ test_crate!Y.Instance.)
 (declare-const m_token@0 vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>.)
 (declare-const opt_token@ core!option.Option.)
 (declare-const kv@ test_crate!Y.m.)
 (declare-const o@ test_crate!Y.opt.)
 (declare-const wi@ test_crate!Goo.)
 (declare-const wi2@ test_crate!Goo.)
 (assert
  fuel_defaults
 )
 (declare-const p_m@1 vstd!map.Map<int./test_crate!Goo.>.)
 (declare-const m_token@1 vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>.)
 (declare-const %%switch_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%5 Bool)
 ;; assertion failed
 (declare-const %%location_label%%6 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%7 Bool)
 ;; assertion failed
 (declare-const %%location_label%%8 Bool)
 (assert
  (not (=>
    (ens%vstd!map.impl&%0.tracked_empty. $ INT $ TYPE%test_crate!Goo. tmp%1)
    (=>
     (= p_m@0 (%Poly%vstd!map.Map<int./test_crate!Goo.>. tmp%1))
     (=>
      (= tmp%2 test_crate!Goo./Bar)
      (=>
       (ens%vstd!map.impl&%0.tracked_insert. $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>.
         p_m@0
        ) (Poly%vstd!map.Map<int./test_crate!Goo.>. p_m@1) (I 1) (Poly%test_crate!Goo. tmp%2)
       )
       (=>
        (= tmp%3 (%Poly%vstd!map.Map<int./test_crate!Goo.>. (vstd!map.impl&%0.insert.? $ INT
           $ TYPE%test_crate!Goo. (vstd!map.impl&%0.empty.? $ INT $ TYPE%test_crate!Goo.) (I
            1
           ) (Poly%test_crate!Goo. test_crate!Goo./Bar)
        )))
        (=>
         (= tmp%4 (core!option.Option./Some (Poly%test_crate!Goo. test_crate!Goo./Bar)))
         (=>
          (= tmp%5 (core!option.Option./Some (Poly%test_crate!Goo. test_crate!Goo./Bar)))
          (and
           (=>
            %%location_label%%0
            (req%test_crate!Y.impl&%10.initialize. tmp%3 tmp%4 p_m@1 tmp%5)
           )
           (=>
            (ens%test_crate!Y.impl&%10.initialize. tmp%3 tmp%4 p_m@1 tmp%5 tmp%%@)
            (=>
             (= verus_tmp_inst@ (%Poly%test_crate!Y.Instance. (tuple%3./tuple%3/0 (%Poly%tuple%3.
                 (Poly%tuple%3. tmp%%@)
             ))))
             (=>
              (= verus_tmp_m_token@ (%Poly%vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>.
                (tuple%3./tuple%3/1 (%Poly%tuple%3. (Poly%tuple%3. tmp%%@)))
              ))
              (=>
               (= verus_tmp_opt_token@ (%Poly%core!option.Option. (tuple%3./tuple%3/2 (%Poly%tuple%3.
                   (Poly%tuple%3. tmp%%@)
               ))))
               (=>
                (= inst@ verus_tmp_inst@)
                (=>
                 (= m_token@0 verus_tmp_m_token@)
                 (=>
                  (= opt_token@ verus_tmp_opt_token@)
                  (=>
                   (= tmp%6 (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
                      (vstd!tokens.impl&%0.map.? $ INT $ TYPE%test_crate!Goo. $ TYPE%test_crate!Y.m. (Poly%vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>.
                        m_token@0
                      ))
                     ) (I 1)
                   ))
                   (and
                    (=>
                     %%location_label%%1
                     tmp%6
                    )
                    (=>
                     tmp%6
                     (and
                      (=>
                       %%location_label%%2
                       (req%vstd!tokens.impl&%0.remove. $ INT $ TYPE%test_crate!Goo. $ TYPE%test_crate!Y.m.
                        (Poly%vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>. m_token@0) (I 1)
                      ))
                      (=>
                       (ens%vstd!tokens.impl&%0.remove. $ INT $ TYPE%test_crate!Goo. $ TYPE%test_crate!Y.m.
                        (Poly%vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>. m_token@0) (Poly%vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>.
                         m_token@1
                        ) (I 1) tmp%7
                       )
                       (=>
                        (= kv@ (%Poly%test_crate!Y.m. tmp%7))
                        (or
                         (and
                          (=>
                           (is-core!option.Option./None opt_token@)
                           (and
                            (=>
                             %%location_label%%3
                             (req%vstd!pervasive.proof_from_false. $ TYPE%test_crate!Y.opt.)
                            )
                            (=>
                             (ens%vstd!pervasive.proof_from_false. $ TYPE%test_crate!Y.opt. tmp%8)
                             (=>
                              (= tmp%9 tmp%8)
                              %%switch_label%%0
                          ))))
                          (=>
                           (not (is-core!option.Option./None opt_token@))
                           (=>
                            (= tmp%9 (Poly%test_crate!Y.opt. (let
                               ((t$ (%Poly%test_crate!Y.opt. (core!option.Option./Some/0 (%Poly%core!option.Option. (
                                     Poly%core!option.Option. opt_token@
                               ))))))
                               t$
                            )))
                            %%switch_label%%0
                         )))
                         (and
                          (not %%switch_label%%0)
                          (=>
                           (= o@ (%Poly%test_crate!Y.opt. tmp%9))
                           (and
                            (=>
                             %%location_label%%4
                             (req%test_crate!Y.impl&%10.tr7. inst@ 1 kv@ o@)
                            )
                            (and
                             (=>
                              %%location_label%%5
                              (req%test_crate!Y.impl&%10.tr1. inst@ o@)
                             )
                             (=>
                              (ens%test_crate!Y.impl&%10.tr1. inst@ o@ wi@)
                              (=>
                               (= tmp%10 (= wi@ test_crate!Goo./Bar))
                               (and
                                (=>
                                 %%location_label%%6
                                 tmp%10
                                )
                                (=>
                                 tmp%10
                                 (and
                                  (=>
                                   %%location_label%%7
                                   (req%test_crate!Y.impl&%10.tr4. inst@ 1 kv@)
                                  )
                                  (=>
                                   (ens%test_crate!Y.impl&%10.tr4. inst@ 1 kv@ wi2@)
                                   (=>
                                    (= tmp%11 (= wi2@ test_crate!Goo./Bar))
                                    (=>
                                     %%location_label%%8
                                     tmp%11
 ))))))))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::test_inst2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-special_refutable_pattern_binding_codegen/test.rs:504:7: 504:22 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 test_crate!Goo.)
 (declare-const tmp%3 vstd!map.Map<int./test_crate!Goo.>.)
 (declare-const tmp%4 core!option.Option.)
 (declare-const tmp%5 core!option.Option.)
 (declare-const tmp%6 Bool)
 (declare-const tmp%7 Poly)
 (declare-const tmp%8 Poly)
 (declare-const tmp%9 Poly)
 (declare-const tmp%10 Bool)
 (declare-const tmp%11 Bool)
 (declare-const p_m@0 vstd!map.Map<int./test_crate!Goo.>.)
 (declare-const tmp%%@ tuple%3.)
 (declare-const verus_tmp_inst@ test_crate!Y.Instance.)
 (declare-const verus_tmp_m_token@ vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>.)
 (declare-const verus_tmp_opt_token@ core!option.Option.)
 (declare-const inst@ test_crate!Y.Instance.)
 (declare-const m_token@0 vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>.)
 (declare-const opt_token@ core!option.Option.)
 (declare-const kv@ test_crate!Y.m.)
 (declare-const o@ test_crate!Y.opt.)
 (declare-const wi@ test_crate!Goo.)
 (declare-const wi2@ test_crate!Goo.)
 (assert
  fuel_defaults
 )
 (declare-const p_m@1 vstd!map.Map<int./test_crate!Goo.>.)
 (declare-const m_token@1 vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>.)
 (declare-const %%switch_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%5 Bool)
 ;; assertion failed
 (declare-const %%location_label%%6 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%7 Bool)
 ;; assertion failed
 (declare-const %%location_label%%8 Bool)
 (assert
  (not (=>
    (ens%vstd!map.impl&%0.tracked_empty. $ INT $ TYPE%test_crate!Goo. tmp%1)
    (=>
     (= p_m@0 (%Poly%vstd!map.Map<int./test_crate!Goo.>. tmp%1))
     (=>
      (= tmp%2 (test_crate!Goo./Qux (%I (I 8))))
      (=>
       (ens%vstd!map.impl&%0.tracked_insert. $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>.
         p_m@0
        ) (Poly%vstd!map.Map<int./test_crate!Goo.>. p_m@1) (I 1) (Poly%test_crate!Goo. tmp%2)
       )
       (=>
        (= tmp%3 (%Poly%vstd!map.Map<int./test_crate!Goo.>. (vstd!map.impl&%0.insert.? $ INT
           $ TYPE%test_crate!Goo. (vstd!map.impl&%0.empty.? $ INT $ TYPE%test_crate!Goo.) (I
            1
           ) (Poly%test_crate!Goo. (test_crate!Goo./Qux (%I (I 8))))
        )))
        (=>
         (= tmp%4 (core!option.Option./Some (Poly%test_crate!Goo. (test_crate!Goo./Qux (%I (I 8))))))
         (=>
          (= tmp%5 (core!option.Option./Some (Poly%test_crate!Goo. (test_crate!Goo./Qux (%I (I 8))))))
          (and
           (=>
            %%location_label%%0
            (req%test_crate!Y.impl&%10.initialize. tmp%3 tmp%4 p_m@1 tmp%5)
           )
           (=>
            (ens%test_crate!Y.impl&%10.initialize. tmp%3 tmp%4 p_m@1 tmp%5 tmp%%@)
            (=>
             (= verus_tmp_inst@ (%Poly%test_crate!Y.Instance. (tuple%3./tuple%3/0 (%Poly%tuple%3.
                 (Poly%tuple%3. tmp%%@)
             ))))
             (=>
              (= verus_tmp_m_token@ (%Poly%vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>.
                (tuple%3./tuple%3/1 (%Poly%tuple%3. (Poly%tuple%3. tmp%%@)))
              ))
              (=>
               (= verus_tmp_opt_token@ (%Poly%core!option.Option. (tuple%3./tuple%3/2 (%Poly%tuple%3.
                   (Poly%tuple%3. tmp%%@)
               ))))
               (=>
                (= inst@ verus_tmp_inst@)
                (=>
                 (= m_token@0 verus_tmp_m_token@)
                 (=>
                  (= opt_token@ verus_tmp_opt_token@)
                  (=>
                   (= tmp%6 (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
                      (vstd!tokens.impl&%0.map.? $ INT $ TYPE%test_crate!Goo. $ TYPE%test_crate!Y.m. (Poly%vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>.
                        m_token@0
                      ))
                     ) (I 1)
                   ))
                   (and
                    (=>
                     %%location_label%%1
                     tmp%6
                    )
                    (=>
                     tmp%6
                     (and
                      (=>
                       %%location_label%%2
                       (req%vstd!tokens.impl&%0.remove. $ INT $ TYPE%test_crate!Goo. $ TYPE%test_crate!Y.m.
                        (Poly%vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>. m_token@0) (I 1)
                      ))
                      (=>
                       (ens%vstd!tokens.impl&%0.remove. $ INT $ TYPE%test_crate!Goo. $ TYPE%test_crate!Y.m.
                        (Poly%vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>. m_token@0) (Poly%vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>.
                         m_token@1
                        ) (I 1) tmp%7
                       )
                       (=>
                        (= kv@ (%Poly%test_crate!Y.m. tmp%7))
                        (or
                         (and
                          (=>
                           (is-core!option.Option./None opt_token@)
                           (and
                            (=>
                             %%location_label%%3
                             (req%vstd!pervasive.proof_from_false. $ TYPE%test_crate!Y.opt.)
                            )
                            (=>
                             (ens%vstd!pervasive.proof_from_false. $ TYPE%test_crate!Y.opt. tmp%8)
                             (=>
                              (= tmp%9 tmp%8)
                              %%switch_label%%0
                          ))))
                          (=>
                           (not (is-core!option.Option./None opt_token@))
                           (=>
                            (= tmp%9 (Poly%test_crate!Y.opt. (let
                               ((t$ (%Poly%test_crate!Y.opt. (core!option.Option./Some/0 (%Poly%core!option.Option. (
                                     Poly%core!option.Option. opt_token@
                               ))))))
                               t$
                            )))
                            %%switch_label%%0
                         )))
                         (and
                          (not %%switch_label%%0)
                          (=>
                           (= o@ (%Poly%test_crate!Y.opt. tmp%9))
                           (and
                            (=>
                             %%location_label%%4
                             (req%test_crate!Y.impl&%10.tr8. inst@ 1 kv@ o@)
                            )
                            (and
                             (=>
                              %%location_label%%5
                              (req%test_crate!Y.impl&%10.tr2. inst@ o@)
                             )
                             (=>
                              (ens%test_crate!Y.impl&%10.tr2. inst@ o@ wi@)
                              (=>
                               (= tmp%10 (= wi@ (test_crate!Goo./Qux (%I (I 8)))))
                               (and
                                (=>
                                 %%location_label%%6
                                 tmp%10
                                )
                                (=>
                                 tmp%10
                                 (and
                                  (=>
                                   %%location_label%%7
                                   (req%test_crate!Y.impl&%10.tr5. inst@ 1 kv@)
                                  )
                                  (=>
                                   (ens%test_crate!Y.impl&%10.tr5. inst@ 1 kv@ wi2@)
                                   (=>
                                    (= tmp%11 (= wi2@ (test_crate!Goo./Qux (%I (I 8)))))
                                    (=>
                                     %%location_label%%8
                                     tmp%11
 ))))))))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::test_inst3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-special_refutable_pattern_binding_codegen/test.rs:531:7: 531:22 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 test_crate!Goo.)
 (declare-const tmp%3 vstd!map.Map<int./test_crate!Goo.>.)
 (declare-const tmp%4 core!option.Option.)
 (declare-const tmp%5 core!option.Option.)
 (declare-const tmp%6 Bool)
 (declare-const tmp%7 Poly)
 (declare-const tmp%8 Poly)
 (declare-const tmp%9 Poly)
 (declare-const tmp%10 Bool)
 (declare-const tmp%11 Bool)
 (declare-const p_m@0 vstd!map.Map<int./test_crate!Goo.>.)
 (declare-const tmp%%@ tuple%3.)
 (declare-const verus_tmp_inst@ test_crate!Y.Instance.)
 (declare-const verus_tmp_m_token@ vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>.)
 (declare-const verus_tmp_opt_token@ core!option.Option.)
 (declare-const inst@ test_crate!Y.Instance.)
 (declare-const m_token@0 vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>.)
 (declare-const opt_token@ core!option.Option.)
 (declare-const kv@ test_crate!Y.m.)
 (declare-const o@ test_crate!Y.opt.)
 (declare-const wi@ test_crate!Goo.)
 (declare-const wi2@ test_crate!Goo.)
 (assert
  fuel_defaults
 )
 (declare-const p_m@1 vstd!map.Map<int./test_crate!Goo.>.)
 (declare-const m_token@1 vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>.)
 (declare-const %%switch_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%5 Bool)
 ;; assertion failed
 (declare-const %%location_label%%6 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%7 Bool)
 ;; assertion failed
 (declare-const %%location_label%%8 Bool)
 (assert
  (not (=>
    (ens%vstd!map.impl&%0.tracked_empty. $ INT $ TYPE%test_crate!Goo. tmp%1)
    (=>
     (= p_m@0 (%Poly%vstd!map.Map<int./test_crate!Goo.>. tmp%1))
     (=>
      (= tmp%2 (test_crate!Goo./Tal (%I (I 8)) (%I (I 9))))
      (=>
       (ens%vstd!map.impl&%0.tracked_insert. $ INT $ TYPE%test_crate!Goo. (Poly%vstd!map.Map<int./test_crate!Goo.>.
         p_m@0
        ) (Poly%vstd!map.Map<int./test_crate!Goo.>. p_m@1) (I 1) (Poly%test_crate!Goo. tmp%2)
       )
       (=>
        (= tmp%3 (%Poly%vstd!map.Map<int./test_crate!Goo.>. (vstd!map.impl&%0.insert.? $ INT
           $ TYPE%test_crate!Goo. (vstd!map.impl&%0.empty.? $ INT $ TYPE%test_crate!Goo.) (I
            1
           ) (Poly%test_crate!Goo. (test_crate!Goo./Tal (%I (I 8)) (%I (I 9))))
        )))
        (=>
         (= tmp%4 (core!option.Option./Some (Poly%test_crate!Goo. (test_crate!Goo./Tal (%I (I 8))
             (%I (I 9))
         ))))
         (=>
          (= tmp%5 (core!option.Option./Some (Poly%test_crate!Goo. (test_crate!Goo./Tal (%I (I 8))
              (%I (I 9))
          ))))
          (and
           (=>
            %%location_label%%0
            (req%test_crate!Y.impl&%10.initialize. tmp%3 tmp%4 p_m@1 tmp%5)
           )
           (=>
            (ens%test_crate!Y.impl&%10.initialize. tmp%3 tmp%4 p_m@1 tmp%5 tmp%%@)
            (=>
             (= verus_tmp_inst@ (%Poly%test_crate!Y.Instance. (tuple%3./tuple%3/0 (%Poly%tuple%3.
                 (Poly%tuple%3. tmp%%@)
             ))))
             (=>
              (= verus_tmp_m_token@ (%Poly%vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>.
                (tuple%3./tuple%3/1 (%Poly%tuple%3. (Poly%tuple%3. tmp%%@)))
              ))
              (=>
               (= verus_tmp_opt_token@ (%Poly%core!option.Option. (tuple%3./tuple%3/2 (%Poly%tuple%3.
                   (Poly%tuple%3. tmp%%@)
               ))))
               (=>
                (= inst@ verus_tmp_inst@)
                (=>
                 (= m_token@0 verus_tmp_m_token@)
                 (=>
                  (= opt_token@ verus_tmp_opt_token@)
                  (=>
                   (= tmp%6 (vstd!set.impl&%0.contains.? $ INT (vstd!map.impl&%0.dom.? $ INT $ TYPE%test_crate!Goo.
                      (vstd!tokens.impl&%0.map.? $ INT $ TYPE%test_crate!Goo. $ TYPE%test_crate!Y.m. (Poly%vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>.
                        m_token@0
                      ))
                     ) (I 1)
                   ))
                   (and
                    (=>
                     %%location_label%%1
                     tmp%6
                    )
                    (=>
                     tmp%6
                     (and
                      (=>
                       %%location_label%%2
                       (req%vstd!tokens.impl&%0.remove. $ INT $ TYPE%test_crate!Goo. $ TYPE%test_crate!Y.m.
                        (Poly%vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>. m_token@0) (I 1)
                      ))
                      (=>
                       (ens%vstd!tokens.impl&%0.remove. $ INT $ TYPE%test_crate!Goo. $ TYPE%test_crate!Y.m.
                        (Poly%vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>. m_token@0) (Poly%vstd!tokens.MapToken<int./test_crate!Goo./test_crate!Y.m.>.
                         m_token@1
                        ) (I 1) tmp%7
                       )
                       (=>
                        (= kv@ (%Poly%test_crate!Y.m. tmp%7))
                        (or
                         (and
                          (=>
                           (is-core!option.Option./None opt_token@)
                           (and
                            (=>
                             %%location_label%%3
                             (req%vstd!pervasive.proof_from_false. $ TYPE%test_crate!Y.opt.)
                            )
                            (=>
                             (ens%vstd!pervasive.proof_from_false. $ TYPE%test_crate!Y.opt. tmp%8)
                             (=>
                              (= tmp%9 tmp%8)
                              %%switch_label%%0
                          ))))
                          (=>
                           (not (is-core!option.Option./None opt_token@))
                           (=>
                            (= tmp%9 (Poly%test_crate!Y.opt. (let
                               ((t$ (%Poly%test_crate!Y.opt. (core!option.Option./Some/0 (%Poly%core!option.Option. (
                                     Poly%core!option.Option. opt_token@
                               ))))))
                               t$
                            )))
                            %%switch_label%%0
                         )))
                         (and
                          (not %%switch_label%%0)
                          (=>
                           (= o@ (%Poly%test_crate!Y.opt. tmp%9))
                           (and
                            (=>
                             %%location_label%%4
                             (req%test_crate!Y.impl&%10.tr9. inst@ 1 kv@ o@)
                            )
                            (and
                             (=>
                              %%location_label%%5
                              (req%test_crate!Y.impl&%10.tr3. inst@ o@)
                             )
                             (=>
                              (ens%test_crate!Y.impl&%10.tr3. inst@ o@ wi@)
                              (=>
                               (= tmp%10 (= wi@ (test_crate!Goo./Tal (%I (I 8)) (%I (I 9)))))
                               (and
                                (=>
                                 %%location_label%%6
                                 tmp%10
                                )
                                (=>
                                 tmp%10
                                 (and
                                  (=>
                                   %%location_label%%7
                                   (req%test_crate!Y.impl&%10.tr6. inst@ 1 kv@)
                                  )
                                  (=>
                                   (ens%test_crate!Y.impl&%10.tr6. inst@ 1 kv@ wi2@)
                                   (=>
                                    (= tmp%11 (= wi2@ (test_crate!Goo./Tal (%I (I 8)) (%I (I 9)))))
                                    (=>
                                     %%location_label%%8
                                     tmp%11
 ))))))))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::test_precondition_remove1
(declare-fun req%test_crate!test_precondition_remove1. (test_crate!Y.Instance. test_crate!Y.opt.)
 Bool
)
(declare-const %%global_location_label%%34 Bool)
(assert
 (forall ((inst! test_crate!Y.Instance.) (t! test_crate!Y.opt.)) (!
   (= (req%test_crate!test_precondition_remove1. inst! t!) (=>
     %%global_location_label%%34
     (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt.
        $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. t!)
       )
      ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
   )))
   :pattern ((req%test_crate!test_precondition_remove1. inst! t!))
   :qid internal_req__test_crate!test_precondition_remove1._definition
   :skolemid skolem_internal_req__test_crate!test_precondition_remove1._definition
)))

;; Function-Def test_crate::test_precondition_remove1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-special_refutable_pattern_binding_codegen/test.rs:558:7: 558:81 (#0)
(get-info :all-statistics)
(push)
 (declare-const inst! test_crate!Y.Instance.)
 (declare-const t! test_crate!Y.opt.)
 (declare-const k@ test_crate!Goo.)
 (assert
  fuel_defaults
 )
 (assert
  (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt.
     $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. t!)
    )
   ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
 ))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (req%test_crate!Y.impl&%10.tr1. inst! t!)
 )))
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

;; Function-Recommends test_crate::test_precondition_remove1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-special_refutable_pattern_binding_codegen/test.rs:558:7: 558:81 (#0)
(get-info :all-statistics)
(push)
 (declare-const inst! test_crate!Y.Instance.)
 (declare-const t! test_crate!Y.opt.)
 (declare-const k@ test_crate!Goo.)
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

;; Function-Specs test_crate::test_precondition_remove2
(declare-fun req%test_crate!test_precondition_remove2. (test_crate!Y.Instance. test_crate!Y.opt.)
 Bool
)
(declare-const %%global_location_label%%35 Bool)
(assert
 (forall ((inst! test_crate!Y.Instance.) (t! test_crate!Y.opt.)) (!
   (= (req%test_crate!test_precondition_remove2. inst! t!) (=>
     %%global_location_label%%35
     (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt.
        $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. t!)
       )
      ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
   )))
   :pattern ((req%test_crate!test_precondition_remove2. inst! t!))
   :qid internal_req__test_crate!test_precondition_remove2._definition
   :skolemid skolem_internal_req__test_crate!test_precondition_remove2._definition
)))

;; Function-Def test_crate::test_precondition_remove2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-special_refutable_pattern_binding_codegen/test.rs:564:7: 564:81 (#0)
(get-info :all-statistics)
(push)
 (declare-const inst! test_crate!Y.Instance.)
 (declare-const t! test_crate!Y.opt.)
 (declare-const k@ test_crate!Goo.)
 (assert
  fuel_defaults
 )
 (assert
  (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt.
     $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. t!)
    )
   ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
 ))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (req%test_crate!Y.impl&%10.tr2. inst! t!)
 )))
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

;; Function-Recommends test_crate::test_precondition_remove2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-special_refutable_pattern_binding_codegen/test.rs:564:7: 564:81 (#0)
(get-info :all-statistics)
(push)
 (declare-const inst! test_crate!Y.Instance.)
 (declare-const t! test_crate!Y.opt.)
 (declare-const k@ test_crate!Goo.)
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

;; Function-Specs test_crate::test_precondition_remove3
(declare-fun req%test_crate!test_precondition_remove3. (test_crate!Y.Instance. test_crate!Y.opt.)
 Bool
)
(declare-const %%global_location_label%%36 Bool)
(assert
 (forall ((inst! test_crate!Y.Instance.) (t! test_crate!Y.opt.)) (!
   (= (req%test_crate!test_precondition_remove3. inst! t!) (=>
     %%global_location_label%%36
     (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt.
        $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. t!)
       )
      ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
   )))
   :pattern ((req%test_crate!test_precondition_remove3. inst! t!))
   :qid internal_req__test_crate!test_precondition_remove3._definition
   :skolemid skolem_internal_req__test_crate!test_precondition_remove3._definition
)))

;; Function-Def test_crate::test_precondition_remove3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-special_refutable_pattern_binding_codegen/test.rs:570:7: 570:81 (#0)
(get-info :all-statistics)
(push)
 (declare-const inst! test_crate!Y.Instance.)
 (declare-const t! test_crate!Y.opt.)
 (declare-const k@ test_crate!Goo.)
 (assert
  fuel_defaults
 )
 (assert
  (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt.
     $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. t!)
    )
   ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
 ))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (req%test_crate!Y.impl&%10.tr3. inst! t!)
 )))
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

;; Function-Recommends test_crate::test_precondition_remove3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-special_refutable_pattern_binding_codegen/test.rs:570:7: 570:81 (#0)
(get-info :all-statistics)
(push)
 (declare-const inst! test_crate!Y.Instance.)
 (declare-const t! test_crate!Y.opt.)
 (declare-const k@ test_crate!Goo.)
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

;; Function-Specs test_crate::test_precondition_map_remove1
(declare-fun req%test_crate!test_precondition_map_remove1. (test_crate!Y.Instance.
  test_crate!Y.m.
 ) Bool
)
(declare-const %%global_location_label%%37 Bool)
(assert
 (forall ((inst! test_crate!Y.Instance.) (t! test_crate!Y.m.)) (!
   (= (req%test_crate!test_precondition_map_remove1. inst! t!) (=>
     %%global_location_label%%37
     (and
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.KeyValueToken.instance_id.? $ TYPE%test_crate!Y.m.
         $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. t!)
        )
       ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
      )
      (= (%I (vstd!tokens.KeyValueToken.key.? $ TYPE%test_crate!Y.m. $ INT $ TYPE%test_crate!Goo.
         (Poly%test_crate!Y.m. t!)
        )
       ) 1
   ))))
   :pattern ((req%test_crate!test_precondition_map_remove1. inst! t!))
   :qid internal_req__test_crate!test_precondition_map_remove1._definition
   :skolemid skolem_internal_req__test_crate!test_precondition_map_remove1._definition
)))

;; Function-Def test_crate::test_precondition_map_remove1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-special_refutable_pattern_binding_codegen/test.rs:576:7: 576:83 (#0)
(get-info :all-statistics)
(push)
 (declare-const inst! test_crate!Y.Instance.)
 (declare-const t! test_crate!Y.m.)
 (declare-const k@ test_crate!Goo.)
 (assert
  fuel_defaults
 )
 (assert
  (and
   (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.KeyValueToken.instance_id.? $ TYPE%test_crate!Y.m.
      $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. t!)
     )
    ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
   )
   (= (%I (vstd!tokens.KeyValueToken.key.? $ TYPE%test_crate!Y.m. $ INT $ TYPE%test_crate!Goo.
      (Poly%test_crate!Y.m. t!)
     )
    ) 1
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (req%test_crate!Y.impl&%10.tr4. inst! 1 t!)
 )))
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

;; Function-Recommends test_crate::test_precondition_map_remove1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-special_refutable_pattern_binding_codegen/test.rs:576:7: 576:83 (#0)
(get-info :all-statistics)
(push)
 (declare-const inst! test_crate!Y.Instance.)
 (declare-const t! test_crate!Y.m.)
 (declare-const k@ test_crate!Goo.)
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

;; Function-Specs test_crate::test_precondition_map_remove2
(declare-fun req%test_crate!test_precondition_map_remove2. (test_crate!Y.Instance.
  test_crate!Y.m.
 ) Bool
)
(declare-const %%global_location_label%%38 Bool)
(assert
 (forall ((inst! test_crate!Y.Instance.) (t! test_crate!Y.m.)) (!
   (= (req%test_crate!test_precondition_map_remove2. inst! t!) (=>
     %%global_location_label%%38
     (and
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.KeyValueToken.instance_id.? $ TYPE%test_crate!Y.m.
         $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. t!)
        )
       ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
      )
      (= (%I (vstd!tokens.KeyValueToken.key.? $ TYPE%test_crate!Y.m. $ INT $ TYPE%test_crate!Goo.
         (Poly%test_crate!Y.m. t!)
        )
       ) 1
   ))))
   :pattern ((req%test_crate!test_precondition_map_remove2. inst! t!))
   :qid internal_req__test_crate!test_precondition_map_remove2._definition
   :skolemid skolem_internal_req__test_crate!test_precondition_map_remove2._definition
)))

;; Function-Def test_crate::test_precondition_map_remove2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-special_refutable_pattern_binding_codegen/test.rs:582:7: 582:83 (#0)
(get-info :all-statistics)
(push)
 (declare-const inst! test_crate!Y.Instance.)
 (declare-const t! test_crate!Y.m.)
 (declare-const k@ test_crate!Goo.)
 (assert
  fuel_defaults
 )
 (assert
  (and
   (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.KeyValueToken.instance_id.? $ TYPE%test_crate!Y.m.
      $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. t!)
     )
    ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
   )
   (= (%I (vstd!tokens.KeyValueToken.key.? $ TYPE%test_crate!Y.m. $ INT $ TYPE%test_crate!Goo.
      (Poly%test_crate!Y.m. t!)
     )
    ) 1
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (req%test_crate!Y.impl&%10.tr5. inst! 1 t!)
 )))
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

;; Function-Recommends test_crate::test_precondition_map_remove2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-special_refutable_pattern_binding_codegen/test.rs:582:7: 582:83 (#0)
(get-info :all-statistics)
(push)
 (declare-const inst! test_crate!Y.Instance.)
 (declare-const t! test_crate!Y.m.)
 (declare-const k@ test_crate!Goo.)
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

;; Function-Specs test_crate::test_precondition_map_remove3
(declare-fun req%test_crate!test_precondition_map_remove3. (test_crate!Y.Instance.
  test_crate!Y.m.
 ) Bool
)
(declare-const %%global_location_label%%39 Bool)
(assert
 (forall ((inst! test_crate!Y.Instance.) (t! test_crate!Y.m.)) (!
   (= (req%test_crate!test_precondition_map_remove3. inst! t!) (=>
     %%global_location_label%%39
     (and
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.KeyValueToken.instance_id.? $ TYPE%test_crate!Y.m.
         $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. t!)
        )
       ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
      )
      (= (%I (vstd!tokens.KeyValueToken.key.? $ TYPE%test_crate!Y.m. $ INT $ TYPE%test_crate!Goo.
         (Poly%test_crate!Y.m. t!)
        )
       ) 1
   ))))
   :pattern ((req%test_crate!test_precondition_map_remove3. inst! t!))
   :qid internal_req__test_crate!test_precondition_map_remove3._definition
   :skolemid skolem_internal_req__test_crate!test_precondition_map_remove3._definition
)))

;; Function-Def test_crate::test_precondition_map_remove3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-special_refutable_pattern_binding_codegen/test.rs:588:7: 588:83 (#0)
(get-info :all-statistics)
(push)
 (declare-const inst! test_crate!Y.Instance.)
 (declare-const t! test_crate!Y.m.)
 (declare-const k@ test_crate!Goo.)
 (assert
  fuel_defaults
 )
 (assert
  (and
   (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.KeyValueToken.instance_id.? $ TYPE%test_crate!Y.m.
      $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. t!)
     )
    ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
   )
   (= (%I (vstd!tokens.KeyValueToken.key.? $ TYPE%test_crate!Y.m. $ INT $ TYPE%test_crate!Goo.
      (Poly%test_crate!Y.m. t!)
     )
    ) 1
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (req%test_crate!Y.impl&%10.tr6. inst! 1 t!)
 )))
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

;; Function-Recommends test_crate::test_precondition_map_remove3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-special_refutable_pattern_binding_codegen/test.rs:588:7: 588:83 (#0)
(get-info :all-statistics)
(push)
 (declare-const inst! test_crate!Y.Instance.)
 (declare-const t! test_crate!Y.m.)
 (declare-const k@ test_crate!Goo.)
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

;; Function-Specs test_crate::test_precondition_have1
(declare-fun req%test_crate!test_precondition_have1. (test_crate!Y.Instance. test_crate!Y.opt.
  test_crate!Y.m.
 ) Bool
)
(declare-const %%global_location_label%%40 Bool)
(assert
 (forall ((inst! test_crate!Y.Instance.) (t! test_crate!Y.opt.) (u! test_crate!Y.m.))
  (!
   (= (req%test_crate!test_precondition_have1. inst! t! u!) (=>
     %%global_location_label%%40
     (and
      (and
       (and
        (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt.
           $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. t!)
          )
         ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
        )
        (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.KeyValueToken.instance_id.? $ TYPE%test_crate!Y.m.
           $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. u!)
          )
         ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
       ))
       (= (%I (vstd!tokens.KeyValueToken.key.? $ TYPE%test_crate!Y.m. $ INT $ TYPE%test_crate!Goo.
          (Poly%test_crate!Y.m. u!)
         )
        ) 1
      ))
      (= (%Poly%test_crate!Goo. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt. $
         TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. t!)
        )
       ) test_crate!Goo./Bar
   ))))
   :pattern ((req%test_crate!test_precondition_have1. inst! t! u!))
   :qid internal_req__test_crate!test_precondition_have1._definition
   :skolemid skolem_internal_req__test_crate!test_precondition_have1._definition
)))

;; Function-Def test_crate::test_precondition_have1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-special_refutable_pattern_binding_codegen/test.rs:594:7: 594:96 (#0)
(get-info :all-statistics)
(push)
 (declare-const inst! test_crate!Y.Instance.)
 (declare-const t! test_crate!Y.opt.)
 (declare-const u! test_crate!Y.m.)
 (declare-const k@ tuple%0.)
 (assert
  fuel_defaults
 )
 (assert
  (and
   (and
    (and
     (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt.
        $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. t!)
       )
      ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
     )
     (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.KeyValueToken.instance_id.? $ TYPE%test_crate!Y.m.
        $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. u!)
       )
      ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
    ))
    (= (%I (vstd!tokens.KeyValueToken.key.? $ TYPE%test_crate!Y.m. $ INT $ TYPE%test_crate!Goo.
       (Poly%test_crate!Y.m. u!)
      )
     ) 1
   ))
   (= (%Poly%test_crate!Goo. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt. $
      TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. t!)
     )
    ) test_crate!Goo./Bar
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (req%test_crate!Y.impl&%10.tr7. inst! 1 u! t!)
 )))
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

;; Function-Recommends test_crate::test_precondition_have1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-special_refutable_pattern_binding_codegen/test.rs:594:7: 594:96 (#0)
(get-info :all-statistics)
(push)
 (declare-const inst! test_crate!Y.Instance.)
 (declare-const t! test_crate!Y.opt.)
 (declare-const u! test_crate!Y.m.)
 (declare-const k@ tuple%0.)
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

;; Function-Specs test_crate::test_precondition_have2
(declare-fun req%test_crate!test_precondition_have2. (test_crate!Y.Instance. test_crate!Y.opt.
  test_crate!Y.m.
 ) Bool
)
(declare-const %%global_location_label%%41 Bool)
(assert
 (forall ((inst! test_crate!Y.Instance.) (t! test_crate!Y.opt.) (u! test_crate!Y.m.))
  (!
   (= (req%test_crate!test_precondition_have2. inst! t! u!) (=>
     %%global_location_label%%41
     (and
      (and
       (and
        (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt.
           $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. t!)
          )
         ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
        )
        (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.KeyValueToken.instance_id.? $ TYPE%test_crate!Y.m.
           $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. u!)
          )
         ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
       ))
       (= (%I (vstd!tokens.KeyValueToken.key.? $ TYPE%test_crate!Y.m. $ INT $ TYPE%test_crate!Goo.
          (Poly%test_crate!Y.m. u!)
         )
        ) 1
      ))
      (= (%Poly%test_crate!Goo. (vstd!tokens.KeyValueToken.value.? $ TYPE%test_crate!Y.m.
         $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. u!)
        )
       ) test_crate!Goo./Bar
   ))))
   :pattern ((req%test_crate!test_precondition_have2. inst! t! u!))
   :qid internal_req__test_crate!test_precondition_have2._definition
   :skolemid skolem_internal_req__test_crate!test_precondition_have2._definition
)))

;; Function-Def test_crate::test_precondition_have2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-special_refutable_pattern_binding_codegen/test.rs:602:7: 602:96 (#0)
(get-info :all-statistics)
(push)
 (declare-const inst! test_crate!Y.Instance.)
 (declare-const t! test_crate!Y.opt.)
 (declare-const u! test_crate!Y.m.)
 (declare-const k@ tuple%0.)
 (assert
  fuel_defaults
 )
 (assert
  (and
   (and
    (and
     (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt.
        $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. t!)
       )
      ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
     )
     (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.KeyValueToken.instance_id.? $ TYPE%test_crate!Y.m.
        $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. u!)
       )
      ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
    ))
    (= (%I (vstd!tokens.KeyValueToken.key.? $ TYPE%test_crate!Y.m. $ INT $ TYPE%test_crate!Goo.
       (Poly%test_crate!Y.m. u!)
      )
     ) 1
   ))
   (= (%Poly%test_crate!Goo. (vstd!tokens.KeyValueToken.value.? $ TYPE%test_crate!Y.m.
      $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. u!)
     )
    ) test_crate!Goo./Bar
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (req%test_crate!Y.impl&%10.tr7. inst! 1 u! t!)
 )))
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

;; Function-Recommends test_crate::test_precondition_have2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-special_refutable_pattern_binding_codegen/test.rs:602:7: 602:96 (#0)
(get-info :all-statistics)
(push)
 (declare-const inst! test_crate!Y.Instance.)
 (declare-const t! test_crate!Y.opt.)
 (declare-const u! test_crate!Y.m.)
 (declare-const k@ tuple%0.)
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

;; Function-Specs test_crate::test_precondition_have3
(declare-fun req%test_crate!test_precondition_have3. (test_crate!Y.Instance. test_crate!Y.opt.
  test_crate!Y.m.
 ) Bool
)
(declare-const %%global_location_label%%42 Bool)
(assert
 (forall ((inst! test_crate!Y.Instance.) (t! test_crate!Y.opt.) (u! test_crate!Y.m.))
  (!
   (= (req%test_crate!test_precondition_have3. inst! t! u!) (=>
     %%global_location_label%%42
     (and
      (and
       (and
        (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt.
           $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. t!)
          )
         ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
        )
        (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.KeyValueToken.instance_id.? $ TYPE%test_crate!Y.m.
           $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. u!)
          )
         ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
       ))
       (= (%I (vstd!tokens.KeyValueToken.key.? $ TYPE%test_crate!Y.m. $ INT $ TYPE%test_crate!Goo.
          (Poly%test_crate!Y.m. u!)
         )
        ) 1
      ))
      (= (vstd!tokens.KeyValueToken.value.? $ TYPE%test_crate!Y.m. $ INT $ TYPE%test_crate!Goo.
        (Poly%test_crate!Y.m. u!)
       ) (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt. $ TYPE%test_crate!Goo.
        (Poly%test_crate!Y.opt. t!)
   )))))
   :pattern ((req%test_crate!test_precondition_have3. inst! t! u!))
   :qid internal_req__test_crate!test_precondition_have3._definition
   :skolemid skolem_internal_req__test_crate!test_precondition_have3._definition
)))

;; Function-Def test_crate::test_precondition_have3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-special_refutable_pattern_binding_codegen/test.rs:610:7: 610:96 (#0)
(get-info :all-statistics)
(push)
 (declare-const inst! test_crate!Y.Instance.)
 (declare-const t! test_crate!Y.opt.)
 (declare-const u! test_crate!Y.m.)
 (declare-const k@ tuple%0.)
 (assert
  fuel_defaults
 )
 (assert
  (and
   (and
    (and
     (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt.
        $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. t!)
       )
      ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
     )
     (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.KeyValueToken.instance_id.? $ TYPE%test_crate!Y.m.
        $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. u!)
       )
      ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
    ))
    (= (%I (vstd!tokens.KeyValueToken.key.? $ TYPE%test_crate!Y.m. $ INT $ TYPE%test_crate!Goo.
       (Poly%test_crate!Y.m. u!)
      )
     ) 1
   ))
   (= (vstd!tokens.KeyValueToken.value.? $ TYPE%test_crate!Y.m. $ INT $ TYPE%test_crate!Goo.
     (Poly%test_crate!Y.m. u!)
    ) (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt. $ TYPE%test_crate!Goo.
     (Poly%test_crate!Y.opt. t!)
 ))))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (req%test_crate!Y.impl&%10.tr8. inst! 1 u! t!)
 )))
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

;; Function-Recommends test_crate::test_precondition_have3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-special_refutable_pattern_binding_codegen/test.rs:610:7: 610:96 (#0)
(get-info :all-statistics)
(push)
 (declare-const inst! test_crate!Y.Instance.)
 (declare-const t! test_crate!Y.opt.)
 (declare-const u! test_crate!Y.m.)
 (declare-const k@ tuple%0.)
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

;; Function-Specs test_crate::test_precondition_have4
(declare-fun req%test_crate!test_precondition_have4. (test_crate!Y.Instance. test_crate!Y.opt.
  test_crate!Y.m.
 ) Bool
)
(declare-const %%global_location_label%%43 Bool)
(assert
 (forall ((inst! test_crate!Y.Instance.) (t! test_crate!Y.opt.) (u! test_crate!Y.m.))
  (!
   (= (req%test_crate!test_precondition_have4. inst! t! u!) (=>
     %%global_location_label%%43
     (and
      (and
       (and
        (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt.
           $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. t!)
          )
         ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
        )
        (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.KeyValueToken.instance_id.? $ TYPE%test_crate!Y.m.
           $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. u!)
          )
         ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
       ))
       (= (%I (vstd!tokens.KeyValueToken.key.? $ TYPE%test_crate!Y.m. $ INT $ TYPE%test_crate!Goo.
          (Poly%test_crate!Y.m. u!)
         )
        ) 1
      ))
      (= (vstd!tokens.KeyValueToken.value.? $ TYPE%test_crate!Y.m. $ INT $ TYPE%test_crate!Goo.
        (Poly%test_crate!Y.m. u!)
       ) (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt. $ TYPE%test_crate!Goo.
        (Poly%test_crate!Y.opt. t!)
   )))))
   :pattern ((req%test_crate!test_precondition_have4. inst! t! u!))
   :qid internal_req__test_crate!test_precondition_have4._definition
   :skolemid skolem_internal_req__test_crate!test_precondition_have4._definition
)))

;; Function-Def test_crate::test_precondition_have4
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-special_refutable_pattern_binding_codegen/test.rs:617:7: 617:96 (#0)
(get-info :all-statistics)
(push)
 (declare-const inst! test_crate!Y.Instance.)
 (declare-const t! test_crate!Y.opt.)
 (declare-const u! test_crate!Y.m.)
 (declare-const k@ tuple%0.)
 (assert
  fuel_defaults
 )
 (assert
  (and
   (and
    (and
     (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt.
        $ TYPE%test_crate!Goo. (Poly%test_crate!Y.opt. t!)
       )
      ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
     )
     (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.KeyValueToken.instance_id.? $ TYPE%test_crate!Y.m.
        $ INT $ TYPE%test_crate!Goo. (Poly%test_crate!Y.m. u!)
       )
      ) (test_crate!Y.impl&%10.id.? (Poly%test_crate!Y.Instance. inst!))
    ))
    (= (%I (vstd!tokens.KeyValueToken.key.? $ TYPE%test_crate!Y.m. $ INT $ TYPE%test_crate!Goo.
       (Poly%test_crate!Y.m. u!)
      )
     ) 1
   ))
   (= (vstd!tokens.KeyValueToken.value.? $ TYPE%test_crate!Y.m. $ INT $ TYPE%test_crate!Goo.
     (Poly%test_crate!Y.m. u!)
    ) (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt. $ TYPE%test_crate!Goo.
     (Poly%test_crate!Y.opt. t!)
 ))))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (req%test_crate!Y.impl&%10.tr9. inst! 1 u! t!)
 )))
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

;; Function-Recommends test_crate::test_precondition_have4
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-special_refutable_pattern_binding_codegen/test.rs:617:7: 617:96 (#0)
(get-info :all-statistics)
(push)
 (declare-const inst! test_crate!Y.Instance.)
 (declare-const t! test_crate!Y.opt.)
 (declare-const u! test_crate!Y.m.)
 (declare-const k@ tuple%0.)
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
