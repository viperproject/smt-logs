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
(declare-const fuel%vstd!set.axiom_set_empty. FuelId)
(declare-const fuel%vstd!set.axiom_set_insert_same. FuelId)
(declare-const fuel%vstd!set.axiom_set_insert_different. FuelId)
(declare-const fuel%vstd!set.axiom_set_ext_equal. FuelId)
(declare-const fuel%vstd!set.axiom_set_ext_equal_deep. FuelId)
(declare-const fuel%vstd!set.axiom_set_empty_finite. FuelId)
(declare-const fuel%vstd!set.axiom_set_insert_finite. FuelId)
(declare-const fuel%vstd!set.axiom_set_empty_len. FuelId)
(declare-const fuel%vstd!set.axiom_set_insert_len. FuelId)
(declare-const fuel%vstd!set.axiom_set_contains_len. FuelId)
(declare-const fuel%test_crate!impl&%15.arrow_Text_0. FuelId)
(declare-const fuel%test_crate!impl&%15.arrow_Graphics_0. FuelId)
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
 (distinct fuel%vstd!set.impl&%0.subset_of. fuel%vstd!set.axiom_set_empty. fuel%vstd!set.axiom_set_insert_same.
  fuel%vstd!set.axiom_set_insert_different. fuel%vstd!set.axiom_set_ext_equal. fuel%vstd!set.axiom_set_ext_equal_deep.
  fuel%vstd!set.axiom_set_empty_finite. fuel%vstd!set.axiom_set_insert_finite. fuel%vstd!set.axiom_set_empty_len.
  fuel%vstd!set.axiom_set_insert_len. fuel%vstd!set.axiom_set_contains_len. fuel%test_crate!impl&%15.arrow_Text_0.
  fuel%test_crate!impl&%15.arrow_Graphics_0. fuel%vstd!array.group_array_axioms. fuel%vstd!map.group_map_axioms.
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
   (fuel_bool_default fuel%vstd!set.axiom_set_ext_equal.)
   (fuel_bool_default fuel%vstd!set.axiom_set_ext_equal_deep.)
   (fuel_bool_default fuel%vstd!set.axiom_set_empty_finite.)
   (fuel_bool_default fuel%vstd!set.axiom_set_insert_finite.)
   (fuel_bool_default fuel%vstd!set.axiom_set_empty_len.)
   (fuel_bool_default fuel%vstd!set.axiom_set_insert_len.)
   (fuel_bool_default fuel%vstd!set.axiom_set_contains_len.)
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
(declare-sort vstd!set.Set<test_crate!HAlign.>. 0)
(declare-datatypes ((test_crate!HAlign. 0) (test_crate!VAlign. 0) (test_crate!TextAlign.
   0
  ) (test_crate!GraphicsAlign. 0) (test_crate!PageElement. 0) (tuple%0. 0)
 ) (((test_crate!HAlign./Left) (test_crate!HAlign./Center) (test_crate!HAlign./Right))
  ((test_crate!VAlign./Top) (test_crate!VAlign./Middle) (test_crate!VAlign./Bottom))
  ((test_crate!TextAlign./TextAlign (test_crate!TextAlign./TextAlign/?hAlign test_crate!HAlign.)
    (test_crate!TextAlign./TextAlign/?vAlign test_crate!VAlign.)
   )
  ) ((test_crate!GraphicsAlign./Square) (test_crate!GraphicsAlign./Round)) ((test_crate!PageElement./Text
    (test_crate!PageElement./Text/?0 test_crate!TextAlign.)
   ) (test_crate!PageElement./Graphics (test_crate!PageElement./Graphics/?0 test_crate!GraphicsAlign.))
  ) ((tuple%0./tuple%0))
))
(declare-fun test_crate!TextAlign./TextAlign/hAlign (test_crate!TextAlign.) test_crate!HAlign.)
(declare-fun test_crate!TextAlign./TextAlign/vAlign (test_crate!TextAlign.) test_crate!VAlign.)
(declare-fun test_crate!PageElement./Text/0 (test_crate!PageElement.) test_crate!TextAlign.)
(declare-fun test_crate!PageElement./Graphics/0 (test_crate!PageElement.) test_crate!GraphicsAlign.)
(declare-fun TYPE%vstd!set.Set. (Dcr Type) Type)
(declare-const TYPE%test_crate!HAlign. Type)
(declare-const TYPE%test_crate!VAlign. Type)
(declare-const TYPE%test_crate!TextAlign. Type)
(declare-const TYPE%test_crate!GraphicsAlign. Type)
(declare-const TYPE%test_crate!PageElement. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%vstd!set.Set<test_crate!HAlign.>. (vstd!set.Set<test_crate!HAlign.>.)
 Poly
)
(declare-fun %Poly%vstd!set.Set<test_crate!HAlign.>. (Poly) vstd!set.Set<test_crate!HAlign.>.)
(declare-fun Poly%test_crate!HAlign. (test_crate!HAlign.) Poly)
(declare-fun %Poly%test_crate!HAlign. (Poly) test_crate!HAlign.)
(declare-fun Poly%test_crate!VAlign. (test_crate!VAlign.) Poly)
(declare-fun %Poly%test_crate!VAlign. (Poly) test_crate!VAlign.)
(declare-fun Poly%test_crate!TextAlign. (test_crate!TextAlign.) Poly)
(declare-fun %Poly%test_crate!TextAlign. (Poly) test_crate!TextAlign.)
(declare-fun Poly%test_crate!GraphicsAlign. (test_crate!GraphicsAlign.) Poly)
(declare-fun %Poly%test_crate!GraphicsAlign. (Poly) test_crate!GraphicsAlign.)
(declare-fun Poly%test_crate!PageElement. (test_crate!PageElement.) Poly)
(declare-fun %Poly%test_crate!PageElement. (Poly) test_crate!PageElement.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(assert
 (forall ((x vstd!set.Set<test_crate!HAlign.>.)) (!
   (= x (%Poly%vstd!set.Set<test_crate!HAlign.>. (Poly%vstd!set.Set<test_crate!HAlign.>.
      x
   )))
   :pattern ((Poly%vstd!set.Set<test_crate!HAlign.>. x))
   :qid internal_vstd__set__Set<test_crate!HAlign.>_box_axiom_definition
   :skolemid skolem_internal_vstd__set__Set<test_crate!HAlign.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!set.Set. $ TYPE%test_crate!HAlign.))
    (= x (Poly%vstd!set.Set<test_crate!HAlign.>. (%Poly%vstd!set.Set<test_crate!HAlign.>.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd!set.Set. $ TYPE%test_crate!HAlign.)))
   :qid internal_vstd__set__Set<test_crate!HAlign.>_unbox_axiom_definition
   :skolemid skolem_internal_vstd__set__Set<test_crate!HAlign.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!set.Set<test_crate!HAlign.>.)) (!
   (has_type (Poly%vstd!set.Set<test_crate!HAlign.>. x) (TYPE%vstd!set.Set. $ TYPE%test_crate!HAlign.))
   :pattern ((has_type (Poly%vstd!set.Set<test_crate!HAlign.>. x) (TYPE%vstd!set.Set. $
      TYPE%test_crate!HAlign.
   )))
   :qid internal_vstd__set__Set<test_crate!HAlign.>_has_type_always_definition
   :skolemid skolem_internal_vstd__set__Set<test_crate!HAlign.>_has_type_always_definition
)))
(assert
 (forall ((x test_crate!HAlign.)) (!
   (= x (%Poly%test_crate!HAlign. (Poly%test_crate!HAlign. x)))
   :pattern ((Poly%test_crate!HAlign. x))
   :qid internal_test_crate__HAlign_box_axiom_definition
   :skolemid skolem_internal_test_crate__HAlign_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!HAlign.)
    (= x (Poly%test_crate!HAlign. (%Poly%test_crate!HAlign. x)))
   )
   :pattern ((has_type x TYPE%test_crate!HAlign.))
   :qid internal_test_crate__HAlign_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__HAlign_unbox_axiom_definition
)))
(assert
 (forall ((x test_crate!HAlign.)) (!
   (has_type (Poly%test_crate!HAlign. x) TYPE%test_crate!HAlign.)
   :pattern ((has_type (Poly%test_crate!HAlign. x) TYPE%test_crate!HAlign.))
   :qid internal_test_crate__HAlign_has_type_always_definition
   :skolemid skolem_internal_test_crate__HAlign_has_type_always_definition
)))
(assert
 (forall ((x test_crate!VAlign.)) (!
   (= x (%Poly%test_crate!VAlign. (Poly%test_crate!VAlign. x)))
   :pattern ((Poly%test_crate!VAlign. x))
   :qid internal_test_crate__VAlign_box_axiom_definition
   :skolemid skolem_internal_test_crate__VAlign_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!VAlign.)
    (= x (Poly%test_crate!VAlign. (%Poly%test_crate!VAlign. x)))
   )
   :pattern ((has_type x TYPE%test_crate!VAlign.))
   :qid internal_test_crate__VAlign_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__VAlign_unbox_axiom_definition
)))
(assert
 (forall ((x test_crate!VAlign.)) (!
   (has_type (Poly%test_crate!VAlign. x) TYPE%test_crate!VAlign.)
   :pattern ((has_type (Poly%test_crate!VAlign. x) TYPE%test_crate!VAlign.))
   :qid internal_test_crate__VAlign_has_type_always_definition
   :skolemid skolem_internal_test_crate__VAlign_has_type_always_definition
)))
(assert
 (forall ((x test_crate!TextAlign.)) (!
   (= x (%Poly%test_crate!TextAlign. (Poly%test_crate!TextAlign. x)))
   :pattern ((Poly%test_crate!TextAlign. x))
   :qid internal_test_crate__TextAlign_box_axiom_definition
   :skolemid skolem_internal_test_crate__TextAlign_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!TextAlign.)
    (= x (Poly%test_crate!TextAlign. (%Poly%test_crate!TextAlign. x)))
   )
   :pattern ((has_type x TYPE%test_crate!TextAlign.))
   :qid internal_test_crate__TextAlign_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__TextAlign_unbox_axiom_definition
)))
(assert
 (forall ((x test_crate!TextAlign.)) (!
   (= (test_crate!TextAlign./TextAlign/hAlign x) (test_crate!TextAlign./TextAlign/?hAlign
     x
   ))
   :pattern ((test_crate!TextAlign./TextAlign/hAlign x))
   :qid internal_test_crate!TextAlign./TextAlign/hAlign_accessor_definition
   :skolemid skolem_internal_test_crate!TextAlign./TextAlign/hAlign_accessor_definition
)))
(assert
 (forall ((x test_crate!TextAlign.)) (!
   (= (test_crate!TextAlign./TextAlign/vAlign x) (test_crate!TextAlign./TextAlign/?vAlign
     x
   ))
   :pattern ((test_crate!TextAlign./TextAlign/vAlign x))
   :qid internal_test_crate!TextAlign./TextAlign/vAlign_accessor_definition
   :skolemid skolem_internal_test_crate!TextAlign./TextAlign/vAlign_accessor_definition
)))
(assert
 (forall ((x test_crate!TextAlign.)) (!
   (has_type (Poly%test_crate!TextAlign. x) TYPE%test_crate!TextAlign.)
   :pattern ((has_type (Poly%test_crate!TextAlign. x) TYPE%test_crate!TextAlign.))
   :qid internal_test_crate__TextAlign_has_type_always_definition
   :skolemid skolem_internal_test_crate__TextAlign_has_type_always_definition
)))
(assert
 (forall ((x test_crate!GraphicsAlign.)) (!
   (= x (%Poly%test_crate!GraphicsAlign. (Poly%test_crate!GraphicsAlign. x)))
   :pattern ((Poly%test_crate!GraphicsAlign. x))
   :qid internal_test_crate__GraphicsAlign_box_axiom_definition
   :skolemid skolem_internal_test_crate__GraphicsAlign_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!GraphicsAlign.)
    (= x (Poly%test_crate!GraphicsAlign. (%Poly%test_crate!GraphicsAlign. x)))
   )
   :pattern ((has_type x TYPE%test_crate!GraphicsAlign.))
   :qid internal_test_crate__GraphicsAlign_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__GraphicsAlign_unbox_axiom_definition
)))
(assert
 (forall ((x test_crate!GraphicsAlign.)) (!
   (has_type (Poly%test_crate!GraphicsAlign. x) TYPE%test_crate!GraphicsAlign.)
   :pattern ((has_type (Poly%test_crate!GraphicsAlign. x) TYPE%test_crate!GraphicsAlign.))
   :qid internal_test_crate__GraphicsAlign_has_type_always_definition
   :skolemid skolem_internal_test_crate__GraphicsAlign_has_type_always_definition
)))
(assert
 (forall ((x test_crate!PageElement.)) (!
   (= x (%Poly%test_crate!PageElement. (Poly%test_crate!PageElement. x)))
   :pattern ((Poly%test_crate!PageElement. x))
   :qid internal_test_crate__PageElement_box_axiom_definition
   :skolemid skolem_internal_test_crate__PageElement_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!PageElement.)
    (= x (Poly%test_crate!PageElement. (%Poly%test_crate!PageElement. x)))
   )
   :pattern ((has_type x TYPE%test_crate!PageElement.))
   :qid internal_test_crate__PageElement_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__PageElement_unbox_axiom_definition
)))
(assert
 (forall ((x test_crate!PageElement.)) (!
   (= (test_crate!PageElement./Text/0 x) (test_crate!PageElement./Text/?0 x))
   :pattern ((test_crate!PageElement./Text/0 x))
   :qid internal_test_crate!PageElement./Text/0_accessor_definition
   :skolemid skolem_internal_test_crate!PageElement./Text/0_accessor_definition
)))
(assert
 (forall ((x test_crate!PageElement.)) (!
   (= (test_crate!PageElement./Graphics/0 x) (test_crate!PageElement./Graphics/?0 x))
   :pattern ((test_crate!PageElement./Graphics/0 x))
   :qid internal_test_crate!PageElement./Graphics/0_accessor_definition
   :skolemid skolem_internal_test_crate!PageElement./Graphics/0_accessor_definition
)))
(assert
 (forall ((x test_crate!PageElement.)) (!
   (has_type (Poly%test_crate!PageElement. x) TYPE%test_crate!PageElement.)
   :pattern ((has_type (Poly%test_crate!PageElement. x) TYPE%test_crate!PageElement.))
   :qid internal_test_crate__PageElement_has_type_always_definition
   :skolemid skolem_internal_test_crate__PageElement_has_type_always_definition
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

;; Function-Decl vstd::set::impl&%0::empty
(declare-fun vstd!set.impl&%0.empty.? (Dcr Type) Poly)

;; Function-Decl vstd::set::impl&%0::contains
(declare-fun vstd!set.impl&%0.contains.? (Dcr Type Poly Poly) Bool)

;; Function-Decl vstd::set::impl&%0::insert
(declare-fun vstd!set.impl&%0.insert.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::set::impl&%0::finite
(declare-fun vstd!set.impl&%0.finite.? (Dcr Type Poly) Bool)

;; Function-Decl vstd::set::impl&%0::len
(declare-fun vstd!set.impl&%0.len.? (Dcr Type Poly) Int)

;; Function-Decl vstd::set::impl&%0::subset_of
(declare-fun vstd!set.impl&%0.subset_of.? (Dcr Type Poly Poly) Bool)

;; Function-Decl test_crate::PageElement::arrow_Text_0
(declare-fun test_crate!impl&%15.arrow_Text_0.? (Poly) test_crate!TextAlign.)

;; Function-Decl test_crate::PageElement::arrow_Graphics_0
(declare-fun test_crate!impl&%15.arrow_Graphics_0.? (Poly) test_crate!GraphicsAlign.)

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

;; Function-Axioms vstd::set::impl&%0::len
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd!set.Set. A&. A&))
    (<= 0 (vstd!set.impl&%0.len.? A&. A& self!))
   )
   :pattern ((vstd!set.impl&%0.len.? A&. A& self!))
   :qid internal_vstd!set.impl&__0.len.?_pre_post_definition
   :skolemid skolem_internal_vstd!set.impl&__0.len.?_pre_post_definition
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
        :qid user_vstd__set__axiom_set_ext_equal_3
        :skolemid skolem_user_vstd__set__axiom_set_ext_equal_3
    ))))
    :pattern ((ext_eq false (TYPE%vstd!set.Set. A&. A&) s1! s2!))
    :qid user_vstd__set__axiom_set_ext_equal_4
    :skolemid skolem_user_vstd__set__axiom_set_ext_equal_4
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
    :qid user_vstd__set__axiom_set_ext_equal_deep_5
    :skolemid skolem_user_vstd__set__axiom_set_ext_equal_deep_5
))))

;; Broadcast vstd::set::axiom_set_empty_finite
(assert
 (=>
  (fuel_bool fuel%vstd!set.axiom_set_empty_finite.)
  (forall ((A&. Dcr) (A& Type)) (!
    (vstd!set.impl&%0.finite.? A&. A& (vstd!set.impl&%0.empty.? A&. A&))
    :pattern ((vstd!set.impl&%0.finite.? A&. A& (vstd!set.impl&%0.empty.? A&. A&)))
    :qid user_vstd__set__axiom_set_empty_finite_6
    :skolemid skolem_user_vstd__set__axiom_set_empty_finite_6
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
    :qid user_vstd__set__axiom_set_insert_finite_7
    :skolemid skolem_user_vstd__set__axiom_set_insert_finite_7
))))

;; Broadcast vstd::set::axiom_set_empty_len
(assert
 (=>
  (fuel_bool fuel%vstd!set.axiom_set_empty_len.)
  (forall ((A&. Dcr) (A& Type)) (!
    (= (vstd!set.impl&%0.len.? A&. A& (vstd!set.impl&%0.empty.? A&. A&)) 0)
    :pattern ((vstd!set.impl&%0.len.? A&. A& (vstd!set.impl&%0.empty.? A&. A&)))
    :qid user_vstd__set__axiom_set_empty_len_8
    :skolemid skolem_user_vstd__set__axiom_set_empty_len_8
))))

;; Broadcast vstd::set::axiom_set_insert_len
(assert
 (=>
  (fuel_bool fuel%vstd!set.axiom_set_insert_len.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd!set.Set. A&. A&))
      (has_type a! A&)
     )
     (=>
      (vstd!set.impl&%0.finite.? A&. A& s!)
      (= (vstd!set.impl&%0.len.? A&. A& (vstd!set.impl&%0.insert.? A&. A& s! a!)) (Add (vstd!set.impl&%0.len.?
         A&. A& s!
        ) (ite
         (vstd!set.impl&%0.contains.? A&. A& s! a!)
         0
         1
    )))))
    :pattern ((vstd!set.impl&%0.len.? A&. A& (vstd!set.impl&%0.insert.? A&. A& s! a!)))
    :qid user_vstd__set__axiom_set_insert_len_9
    :skolemid skolem_user_vstd__set__axiom_set_insert_len_9
))))

;; Broadcast vstd::set::axiom_set_contains_len
(assert
 (=>
  (fuel_bool fuel%vstd!set.axiom_set_contains_len.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd!set.Set. A&. A&))
      (has_type a! A&)
     )
     (=>
      (and
       (vstd!set.impl&%0.finite.? A&. A& s!)
       (vstd!set.impl&%0.contains.? A&. A& s! a!)
      )
      (not (= (vstd!set.impl&%0.len.? A&. A& s!) 0))
    ))
    :pattern ((vstd!set.impl&%0.contains.? A&. A& s! a!) (vstd!set.impl&%0.len.? A&. A&
      s!
    ))
    :qid user_vstd__set__axiom_set_contains_len_10
    :skolemid skolem_user_vstd__set__axiom_set_contains_len_10
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
       :qid user_vstd__set__impl&%0__subset_of_11
       :skolemid skolem_user_vstd__set__impl&%0__subset_of_11
    )))
    :pattern ((vstd!set.impl&%0.subset_of.? A&. A& self! s2!))
    :qid internal_vstd!set.impl&__0.subset_of.?_definition
    :skolemid skolem_internal_vstd!set.impl&__0.subset_of.?_definition
))))

;; Function-Specs vstd::set_lib::lemma_len_subset
(declare-fun req%vstd!set_lib.lemma_len_subset. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
   (= (req%vstd!set_lib.lemma_len_subset. A&. A& s1! s2!) (and
     (=>
      %%global_location_label%%0
      (vstd!set.impl&%0.finite.? A&. A& s2!)
     )
     (=>
      %%global_location_label%%1
      (vstd!set.impl&%0.subset_of.? A&. A& s1! s2!)
   )))
   :pattern ((req%vstd!set_lib.lemma_len_subset. A&. A& s1! s2!))
   :qid internal_req__vstd!set_lib.lemma_len_subset._definition
   :skolemid skolem_internal_req__vstd!set_lib.lemma_len_subset._definition
)))
(declare-fun ens%vstd!set_lib.lemma_len_subset. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
   (= (ens%vstd!set_lib.lemma_len_subset. A&. A& s1! s2!) (and
     (<= (vstd!set.impl&%0.len.? A&. A& s1!) (vstd!set.impl&%0.len.? A&. A& s2!))
     (vstd!set.impl&%0.finite.? A&. A& s1!)
   ))
   :pattern ((ens%vstd!set_lib.lemma_len_subset. A&. A& s1! s2!))
   :qid internal_ens__vstd!set_lib.lemma_len_subset._definition
   :skolemid skolem_internal_ens__vstd!set_lib.lemma_len_subset._definition
)))

;; Function-Axioms test_crate::PageElement::arrow_Text_0
(assert
 (fuel_bool_default fuel%test_crate!impl&%15.arrow_Text_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%15.arrow_Text_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!impl&%15.arrow_Text_0.? self!) (test_crate!PageElement./Text/0 (%Poly%test_crate!PageElement.
       self!
    )))
    :pattern ((test_crate!impl&%15.arrow_Text_0.? self!))
    :qid internal_test_crate!impl&__15.arrow_Text_0.?_definition
    :skolemid skolem_internal_test_crate!impl&__15.arrow_Text_0.?_definition
))))

;; Function-Axioms test_crate::PageElement::arrow_Graphics_0
(assert
 (fuel_bool_default fuel%test_crate!impl&%15.arrow_Graphics_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%15.arrow_Graphics_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!impl&%15.arrow_Graphics_0.? self!) (test_crate!PageElement./Graphics/0
      (%Poly%test_crate!PageElement. self!)
    ))
    :pattern ((test_crate!impl&%15.arrow_Graphics_0.? self!))
    :qid internal_test_crate!impl&__15.arrow_Graphics_0.?_definition
    :skolemid skolem_internal_test_crate!impl&__15.arrow_Graphics_0.?_definition
))))

;; Function-Specs test_crate::num_page_elements
(declare-fun ens%test_crate!num_page_elements. (Int) Bool)
(assert
 (forall ((no%param Int)) (!
   (= (ens%test_crate!num_page_elements. no%param) (and
     (exists ((eltSet$ Poly)) (!
       (and
        (has_type eltSet$ (TYPE%vstd!set.Set. $ TYPE%test_crate!HAlign.))
        (= (vstd!set.impl&%0.len.? $ TYPE%test_crate!HAlign. eltSet$) 3)
       )
       :pattern ((vstd!set.impl&%0.len.? $ TYPE%test_crate!HAlign. eltSet$))
       :qid user_test_crate__num_page_elements_12
       :skolemid skolem_user_test_crate__num_page_elements_12
     ))
     (forall ((eltSet$ Poly)) (!
       (=>
        (has_type eltSet$ (TYPE%vstd!set.Set. $ TYPE%test_crate!HAlign.))
        (<= (vstd!set.impl&%0.len.? $ TYPE%test_crate!HAlign. eltSet$) 3)
       )
       :pattern ((vstd!set.impl&%0.len.? $ TYPE%test_crate!HAlign. eltSet$))
       :qid user_test_crate__num_page_elements_13
       :skolemid skolem_user_test_crate__num_page_elements_13
   ))))
   :pattern ((ens%test_crate!num_page_elements. no%param))
   :qid internal_ens__test_crate!num_page_elements._definition
   :skolemid skolem_internal_ens__test_crate!num_page_elements._definition
)))

;; Function-Def test_crate::num_page_elements
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/summer_school-9d3e788a530b70ff-e11_pass/test.rs:38:7: 38:29 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Bool)
 (declare-const eltSet@ Poly)
 (declare-const elt@ Poly)
 (declare-const maxSet@ vstd!set.Set<test_crate!HAlign.>.)
 (assert
  fuel_defaults
 )
 (declare-const %%switch_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%5 Bool)
 (assert
  (not (=>
    (= maxSet@ (%Poly%vstd!set.Set<test_crate!HAlign.>. (vstd!set.impl&%0.insert.? $ TYPE%test_crate!HAlign.
       (vstd!set.impl&%0.insert.? $ TYPE%test_crate!HAlign. (vstd!set.impl&%0.insert.? $ TYPE%test_crate!HAlign.
         (vstd!set.impl&%0.empty.? $ TYPE%test_crate!HAlign.) (Poly%test_crate!HAlign. test_crate!HAlign./Left)
        ) (Poly%test_crate!HAlign. test_crate!HAlign./Center)
       ) (Poly%test_crate!HAlign. test_crate!HAlign./Right)
    )))
    (=>
     (= tmp%1 (= (vstd!set.impl&%0.len.? $ TYPE%test_crate!HAlign. (Poly%vstd!set.Set<test_crate!HAlign.>.
         maxSet@
        )
       ) 3
     ))
     (and
      (=>
       %%location_label%%0
       tmp%1
      )
      (=>
       tmp%1
       (and
        (=>
         (has_type eltSet@ (TYPE%vstd!set.Set. $ TYPE%test_crate!HAlign.))
         (and
          (=>
           (has_type elt@ TYPE%test_crate!HAlign.)
           (=>
            (vstd!set.impl&%0.contains.? $ TYPE%test_crate!HAlign. eltSet@ elt@)
            (or
             (and
              (=>
               (is-test_crate!HAlign./Left (%Poly%test_crate!HAlign. elt@))
               %%switch_label%%0
              )
              (=>
               (not (is-test_crate!HAlign./Left (%Poly%test_crate!HAlign. elt@)))
               %%switch_label%%0
             ))
             (and
              (not %%switch_label%%0)
              (=>
               %%location_label%%1
               (vstd!set.impl&%0.contains.? $ TYPE%test_crate!HAlign. (Poly%vstd!set.Set<test_crate!HAlign.>.
                 maxSet@
                ) elt@
          ))))))
          (=>
           (forall ((elt$ Poly)) (!
             (=>
              (has_type elt$ TYPE%test_crate!HAlign.)
              (=>
               (vstd!set.impl&%0.contains.? $ TYPE%test_crate!HAlign. eltSet@ elt$)
               (vstd!set.impl&%0.contains.? $ TYPE%test_crate!HAlign. (Poly%vstd!set.Set<test_crate!HAlign.>.
                 maxSet@
                ) elt$
             )))
             :pattern ((vstd!set.impl&%0.contains.? $ TYPE%test_crate!HAlign. eltSet@ elt$))
             :pattern ((vstd!set.impl&%0.contains.? $ TYPE%test_crate!HAlign. (Poly%vstd!set.Set<test_crate!HAlign.>.
                maxSet@
               ) elt$
             ))
             :qid user_test_crate__num_page_elements_16
             :skolemid skolem_user_test_crate__num_page_elements_16
           ))
           (and
            (=>
             %%location_label%%2
             (req%vstd!set_lib.lemma_len_subset. $ TYPE%test_crate!HAlign. eltSet@ (Poly%vstd!set.Set<test_crate!HAlign.>.
               maxSet@
            )))
            (=>
             (ens%vstd!set_lib.lemma_len_subset. $ TYPE%test_crate!HAlign. eltSet@ (Poly%vstd!set.Set<test_crate!HAlign.>.
               maxSet@
             ))
             (=>
              %%location_label%%3
              (<= (vstd!set.impl&%0.len.? $ TYPE%test_crate!HAlign. eltSet@) 3)
        ))))))
        (=>
         (forall ((eltSet$ Poly)) (!
           (=>
            (has_type eltSet$ (TYPE%vstd!set.Set. $ TYPE%test_crate!HAlign.))
            (<= (vstd!set.impl&%0.len.? $ TYPE%test_crate!HAlign. eltSet$) 3)
           )
           :pattern ((vstd!set.impl&%0.len.? $ TYPE%test_crate!HAlign. eltSet$))
           :qid user_test_crate__num_page_elements_17
           :skolemid skolem_user_test_crate__num_page_elements_17
         ))
         (and
          (=>
           %%location_label%%4
           (exists ((eltSet$ Poly)) (!
             (and
              (has_type eltSet$ (TYPE%vstd!set.Set. $ TYPE%test_crate!HAlign.))
              (= (vstd!set.impl&%0.len.? $ TYPE%test_crate!HAlign. eltSet$) 3)
             )
             :pattern ((vstd!set.impl&%0.len.? $ TYPE%test_crate!HAlign. eltSet$))
             :qid user_test_crate__num_page_elements_14
             :skolemid skolem_user_test_crate__num_page_elements_14
          )))
          (=>
           %%location_label%%5
           (forall ((eltSet$ Poly)) (!
             (=>
              (has_type eltSet$ (TYPE%vstd!set.Set. $ TYPE%test_crate!HAlign.))
              (<= (vstd!set.impl&%0.len.? $ TYPE%test_crate!HAlign. eltSet$) 3)
             )
             :pattern ((vstd!set.impl&%0.len.? $ TYPE%test_crate!HAlign. eltSet$))
             :qid user_test_crate__num_page_elements_15
             :skolemid skolem_user_test_crate__num_page_elements_15
 ))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
