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
(declare-const fuel%vstd!hash_map.axiom_hash_map_with_view_spec_len. FuelId)
(declare-const fuel%vstd!map.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd!map.impl&%0.len. FuelId)
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
(declare-const fuel%vstd!map_lib.impl&%0.contains_key. FuelId)
(declare-const fuel%vstd!raw_ptr.impl&%4.view. FuelId)
(declare-const fuel%vstd!raw_ptr.ptrs_mut_eq. FuelId)
(declare-const fuel%vstd!seq.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_index_decreases. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_ext_equal. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_ext_equal_deep. FuelId)
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
(declare-const fuel%vstd!set.axiom_set_empty_len. FuelId)
(declare-const fuel%vstd!set.axiom_set_insert_len. FuelId)
(declare-const fuel%vstd!set.axiom_set_remove_len. FuelId)
(declare-const fuel%vstd!set.axiom_set_contains_len. FuelId)
(declare-const fuel%vstd!view.impl&%0.view. FuelId)
(declare-const fuel%vstd!view.impl&%2.view. FuelId)
(declare-const fuel%vstd!view.impl&%4.view. FuelId)
(declare-const fuel%vstd!view.impl&%6.view. FuelId)
(declare-const fuel%vstd!view.impl&%10.view. FuelId)
(declare-const fuel%vstd!view.impl&%12.view. FuelId)
(declare-const fuel%vstd!view.impl&%16.view. FuelId)
(declare-const fuel%vstd!view.impl&%18.view. FuelId)
(declare-const fuel%vstd!view.impl&%24.view. FuelId)
(declare-const fuel%vstd!view.impl&%30.view. FuelId)
(declare-const fuel%vstd!view.impl&%42.view. FuelId)
(declare-const fuel%test_crate!impl&%4.view. FuelId)
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
 (distinct fuel%vstd!hash_map.axiom_hash_map_with_view_spec_len. fuel%vstd!map.impl&%0.spec_index.
  fuel%vstd!map.impl&%0.len. fuel%vstd!map.axiom_map_index_decreases_finite. fuel%vstd!map.axiom_map_index_decreases_infinite.
  fuel%vstd!map.axiom_map_empty. fuel%vstd!map.axiom_map_insert_domain. fuel%vstd!map.axiom_map_insert_same.
  fuel%vstd!map.axiom_map_insert_different. fuel%vstd!map.axiom_map_remove_domain.
  fuel%vstd!map.axiom_map_remove_different. fuel%vstd!map.axiom_map_ext_equal. fuel%vstd!map.axiom_map_ext_equal_deep.
  fuel%vstd!map_lib.impl&%0.contains_key. fuel%vstd!raw_ptr.impl&%4.view. fuel%vstd!raw_ptr.ptrs_mut_eq.
  fuel%vstd!seq.impl&%0.spec_index. fuel%vstd!seq.axiom_seq_index_decreases. fuel%vstd!seq.axiom_seq_ext_equal.
  fuel%vstd!seq.axiom_seq_ext_equal_deep. fuel%vstd!set.axiom_set_empty. fuel%vstd!set.axiom_set_insert_same.
  fuel%vstd!set.axiom_set_insert_different. fuel%vstd!set.axiom_set_remove_same. fuel%vstd!set.axiom_set_remove_insert.
  fuel%vstd!set.axiom_set_remove_different. fuel%vstd!set.axiom_set_ext_equal. fuel%vstd!set.axiom_set_ext_equal_deep.
  fuel%vstd!set.axiom_set_empty_finite. fuel%vstd!set.axiom_set_insert_finite. fuel%vstd!set.axiom_set_remove_finite.
  fuel%vstd!set.axiom_set_empty_len. fuel%vstd!set.axiom_set_insert_len. fuel%vstd!set.axiom_set_remove_len.
  fuel%vstd!set.axiom_set_contains_len. fuel%vstd!view.impl&%0.view. fuel%vstd!view.impl&%2.view.
  fuel%vstd!view.impl&%4.view. fuel%vstd!view.impl&%6.view. fuel%vstd!view.impl&%10.view.
  fuel%vstd!view.impl&%12.view. fuel%vstd!view.impl&%16.view. fuel%vstd!view.impl&%18.view.
  fuel%vstd!view.impl&%24.view. fuel%vstd!view.impl&%30.view. fuel%vstd!view.impl&%42.view.
  fuel%test_crate!impl&%4.view. fuel%vstd!array.group_array_axioms. fuel%vstd!map.group_map_axioms.
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
  (fuel_bool_default fuel%vstd!raw_ptr.group_raw_ptr_axioms.)
  (fuel_bool_default fuel%vstd!raw_ptr.ptrs_mut_eq.)
))
(assert
 (=>
  (fuel_bool_default fuel%vstd!seq.group_seq_axioms.)
  (and
   (fuel_bool_default fuel%vstd!seq.axiom_seq_index_decreases.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_ext_equal.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_ext_equal_deep.)
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
   (fuel_bool_default fuel%vstd!set.axiom_set_empty_len.)
   (fuel_bool_default fuel%vstd!set.axiom_set_insert_len.)
   (fuel_bool_default fuel%vstd!set.axiom_set_remove_len.)
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

;; Associated-Type-Decls
(declare-fun proj%%vstd!view.View./V (Dcr Type) Dcr)
(declare-fun proj%vstd!view.View./V (Dcr Type) Type)

;; Datatypes
(declare-sort vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>. 0)
(declare-sort vstd!map.Map<tuple%2<test_crate!MyStruct./int.>./u32.>. 0)
(declare-sort vstd!raw_ptr.DynMetadata. 0)
(declare-sort vstd!raw_ptr.Provenance. 0)
(declare-sort allocator_global%. 0)
(declare-datatypes ((core!option.Option. 0) (vstd!raw_ptr.Metadata. 0) (vstd!raw_ptr.PtrData.
   0
  ) (test_crate!MyStruct. 0) (tuple%0. 0) (tuple%2. 0)
 ) (((core!option.Option./None) (core!option.Option./Some (core!option.Option./Some/?0
     Poly
   ))
  ) ((vstd!raw_ptr.Metadata./Thin) (vstd!raw_ptr.Metadata./Length (vstd!raw_ptr.Metadata./Length/?0
     Int
    )
   ) (vstd!raw_ptr.Metadata./Dyn (vstd!raw_ptr.Metadata./Dyn/?0 vstd!raw_ptr.DynMetadata.))
  ) ((vstd!raw_ptr.PtrData./PtrData (vstd!raw_ptr.PtrData./PtrData/?addr Int) (vstd!raw_ptr.PtrData./PtrData/?provenance
     vstd!raw_ptr.Provenance.
    ) (vstd!raw_ptr.PtrData./PtrData/?metadata vstd!raw_ptr.Metadata.)
   )
  ) ((test_crate!MyStruct./MyStruct (test_crate!MyStruct./MyStruct/?i Int) (test_crate!MyStruct./MyStruct/?j
     Int
   ))
  ) ((tuple%0./tuple%0)) ((tuple%2./tuple%2 (tuple%2./tuple%2/?0 Poly) (tuple%2./tuple%2/?1
     Poly
)))))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun vstd!raw_ptr.Metadata./Length/0 (vstd!raw_ptr.Metadata.) Int)
(declare-fun vstd!raw_ptr.Metadata./Dyn/0 (vstd!raw_ptr.Metadata.) vstd!raw_ptr.DynMetadata.)
(declare-fun vstd!raw_ptr.PtrData./PtrData/addr (vstd!raw_ptr.PtrData.) Int)
(declare-fun vstd!raw_ptr.PtrData./PtrData/provenance (vstd!raw_ptr.PtrData.) vstd!raw_ptr.Provenance.)
(declare-fun vstd!raw_ptr.PtrData./PtrData/metadata (vstd!raw_ptr.PtrData.) vstd!raw_ptr.Metadata.)
(declare-fun test_crate!MyStruct./MyStruct/i (test_crate!MyStruct.) Int)
(declare-fun test_crate!MyStruct./MyStruct/j (test_crate!MyStruct.) Int)
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-fun TYPE%vstd!hash_map.HashMapWithView. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd!map.Map. (Dcr Type Dcr Type) Type)
(declare-const TYPE%vstd!raw_ptr.Provenance. Type)
(declare-const TYPE%vstd!raw_ptr.Metadata. Type)
(declare-const TYPE%vstd!raw_ptr.DynMetadata. Type)
(declare-const TYPE%vstd!raw_ptr.PtrData. Type)
(declare-fun TYPE%vstd!seq.Seq. (Dcr Type) Type)
(declare-fun TYPE%vstd!set.Set. (Dcr Type) Type)
(declare-const TYPE%test_crate!MyStruct. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%2. (Dcr Type Dcr Type) Type)
(declare-fun Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>. (vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>.)
 Poly
)
(declare-fun %Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>. (Poly)
 vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>.
)
(declare-fun Poly%vstd!map.Map<tuple%2<test_crate!MyStruct./int.>./u32.>. (vstd!map.Map<tuple%2<test_crate!MyStruct./int.>./u32.>.)
 Poly
)
(declare-fun %Poly%vstd!map.Map<tuple%2<test_crate!MyStruct./int.>./u32.>. (Poly)
 vstd!map.Map<tuple%2<test_crate!MyStruct./int.>./u32.>.
)
(declare-fun Poly%vstd!raw_ptr.DynMetadata. (vstd!raw_ptr.DynMetadata.) Poly)
(declare-fun %Poly%vstd!raw_ptr.DynMetadata. (Poly) vstd!raw_ptr.DynMetadata.)
(declare-fun Poly%vstd!raw_ptr.Provenance. (vstd!raw_ptr.Provenance.) Poly)
(declare-fun %Poly%vstd!raw_ptr.Provenance. (Poly) vstd!raw_ptr.Provenance.)
(declare-fun Poly%allocator_global%. (allocator_global%.) Poly)
(declare-fun %Poly%allocator_global%. (Poly) allocator_global%.)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
(declare-fun Poly%vstd!raw_ptr.Metadata. (vstd!raw_ptr.Metadata.) Poly)
(declare-fun %Poly%vstd!raw_ptr.Metadata. (Poly) vstd!raw_ptr.Metadata.)
(declare-fun Poly%vstd!raw_ptr.PtrData. (vstd!raw_ptr.PtrData.) Poly)
(declare-fun %Poly%vstd!raw_ptr.PtrData. (Poly) vstd!raw_ptr.PtrData.)
(declare-fun Poly%test_crate!MyStruct. (test_crate!MyStruct.) Poly)
(declare-fun %Poly%test_crate!MyStruct. (Poly) test_crate!MyStruct.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%2. (tuple%2.) Poly)
(declare-fun %Poly%tuple%2. (Poly) tuple%2.)
(assert
 (forall ((x vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>.)) (!
   (= x (%Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>. (Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>.
      x
   )))
   :pattern ((Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>. x))
   :qid internal_vstd__hash_map__HashMapWithView<test_crate!MyStruct./u32.>_box_axiom_definition
   :skolemid skolem_internal_vstd__hash_map__HashMapWithView<test_crate!MyStruct./u32.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!hash_map.HashMapWithView. $ TYPE%test_crate!MyStruct. $ (UINT
       32
    )))
    (= x (Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>. (%Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd!hash_map.HashMapWithView. $ TYPE%test_crate!MyStruct.
      $ (UINT 32)
   )))
   :qid internal_vstd__hash_map__HashMapWithView<test_crate!MyStruct./u32.>_unbox_axiom_definition
   :skolemid skolem_internal_vstd__hash_map__HashMapWithView<test_crate!MyStruct./u32.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>.)) (!
   (has_type (Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>. x) (TYPE%vstd!hash_map.HashMapWithView.
     $ TYPE%test_crate!MyStruct. $ (UINT 32)
   ))
   :pattern ((has_type (Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>.
      x
     ) (TYPE%vstd!hash_map.HashMapWithView. $ TYPE%test_crate!MyStruct. $ (UINT 32))
   ))
   :qid internal_vstd__hash_map__HashMapWithView<test_crate!MyStruct./u32.>_has_type_always_definition
   :skolemid skolem_internal_vstd__hash_map__HashMapWithView<test_crate!MyStruct./u32.>_has_type_always_definition
)))
(assert
 (forall ((x vstd!map.Map<tuple%2<test_crate!MyStruct./int.>./u32.>.)) (!
   (= x (%Poly%vstd!map.Map<tuple%2<test_crate!MyStruct./int.>./u32.>. (Poly%vstd!map.Map<tuple%2<test_crate!MyStruct./int.>./u32.>.
      x
   )))
   :pattern ((Poly%vstd!map.Map<tuple%2<test_crate!MyStruct./int.>./u32.>. x))
   :qid internal_vstd__map__Map<tuple__2<test_crate!MyStruct./int.>./u32.>_box_axiom_definition
   :skolemid skolem_internal_vstd__map__Map<tuple__2<test_crate!MyStruct./int.>./u32.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!map.Map. $ (TYPE%tuple%2. $ TYPE%test_crate!MyStruct. $ INT)
      $ (UINT 32)
    ))
    (= x (Poly%vstd!map.Map<tuple%2<test_crate!MyStruct./int.>./u32.>. (%Poly%vstd!map.Map<tuple%2<test_crate!MyStruct./int.>./u32.>.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd!map.Map. $ (TYPE%tuple%2. $ TYPE%test_crate!MyStruct.
       $ INT
      ) $ (UINT 32)
   )))
   :qid internal_vstd__map__Map<tuple__2<test_crate!MyStruct./int.>./u32.>_unbox_axiom_definition
   :skolemid skolem_internal_vstd__map__Map<tuple__2<test_crate!MyStruct./int.>./u32.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!map.Map<tuple%2<test_crate!MyStruct./int.>./u32.>.)) (!
   (has_type (Poly%vstd!map.Map<tuple%2<test_crate!MyStruct./int.>./u32.>. x) (TYPE%vstd!map.Map.
     $ (TYPE%tuple%2. $ TYPE%test_crate!MyStruct. $ INT) $ (UINT 32)
   ))
   :pattern ((has_type (Poly%vstd!map.Map<tuple%2<test_crate!MyStruct./int.>./u32.>. x)
     (TYPE%vstd!map.Map. $ (TYPE%tuple%2. $ TYPE%test_crate!MyStruct. $ INT) $ (UINT 32))
   ))
   :qid internal_vstd__map__Map<tuple__2<test_crate!MyStruct./int.>./u32.>_has_type_always_definition
   :skolemid skolem_internal_vstd__map__Map<tuple__2<test_crate!MyStruct./int.>./u32.>_has_type_always_definition
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
 (forall ((x test_crate!MyStruct.)) (!
   (= x (%Poly%test_crate!MyStruct. (Poly%test_crate!MyStruct. x)))
   :pattern ((Poly%test_crate!MyStruct. x))
   :qid internal_test_crate__MyStruct_box_axiom_definition
   :skolemid skolem_internal_test_crate__MyStruct_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!MyStruct.)
    (= x (Poly%test_crate!MyStruct. (%Poly%test_crate!MyStruct. x)))
   )
   :pattern ((has_type x TYPE%test_crate!MyStruct.))
   :qid internal_test_crate__MyStruct_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__MyStruct_unbox_axiom_definition
)))
(assert
 (forall ((_i! Int) (_j! Int)) (!
   (=>
    (and
     (uInv 16 _i!)
     (iInv 32 _j!)
    )
    (has_type (Poly%test_crate!MyStruct. (test_crate!MyStruct./MyStruct _i! _j!)) TYPE%test_crate!MyStruct.)
   )
   :pattern ((has_type (Poly%test_crate!MyStruct. (test_crate!MyStruct./MyStruct _i! _j!))
     TYPE%test_crate!MyStruct.
   ))
   :qid internal_test_crate!MyStruct./MyStruct_constructor_definition
   :skolemid skolem_internal_test_crate!MyStruct./MyStruct_constructor_definition
)))
(assert
 (forall ((x test_crate!MyStruct.)) (!
   (= (test_crate!MyStruct./MyStruct/i x) (test_crate!MyStruct./MyStruct/?i x))
   :pattern ((test_crate!MyStruct./MyStruct/i x))
   :qid internal_test_crate!MyStruct./MyStruct/i_accessor_definition
   :skolemid skolem_internal_test_crate!MyStruct./MyStruct/i_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!MyStruct.)
    (uInv 16 (test_crate!MyStruct./MyStruct/i (%Poly%test_crate!MyStruct. x)))
   )
   :pattern ((test_crate!MyStruct./MyStruct/i (%Poly%test_crate!MyStruct. x)) (has_type
     x TYPE%test_crate!MyStruct.
   ))
   :qid internal_test_crate!MyStruct./MyStruct/i_invariant_definition
   :skolemid skolem_internal_test_crate!MyStruct./MyStruct/i_invariant_definition
)))
(assert
 (forall ((x test_crate!MyStruct.)) (!
   (= (test_crate!MyStruct./MyStruct/j x) (test_crate!MyStruct./MyStruct/?j x))
   :pattern ((test_crate!MyStruct./MyStruct/j x))
   :qid internal_test_crate!MyStruct./MyStruct/j_accessor_definition
   :skolemid skolem_internal_test_crate!MyStruct./MyStruct/j_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!MyStruct.)
    (iInv 32 (test_crate!MyStruct./MyStruct/j (%Poly%test_crate!MyStruct. x)))
   )
   :pattern ((test_crate!MyStruct./MyStruct/j (%Poly%test_crate!MyStruct. x)) (has_type
     x TYPE%test_crate!MyStruct.
   ))
   :qid internal_test_crate!MyStruct./MyStruct/j_invariant_definition
   :skolemid skolem_internal_test_crate!MyStruct./MyStruct/j_invariant_definition
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
(declare-fun tr_bound%vstd!view.View. (Dcr Type) Bool)
(declare-fun tr_bound%core!cmp.PartialEq. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%core!cmp.Eq. (Dcr Type) Bool)
(declare-fun tr_bound%core!hash.Hash. (Dcr Type) Bool)
(declare-fun tr_bound%core!hash.Hasher. (Dcr Type) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%vstd!view.View. Self%&. Self%&))
   :qid internal_vstd__view__View_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__view__View_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Rhs&. Dcr) (Rhs& Type)) (!
   true
   :pattern ((tr_bound%core!cmp.PartialEq. Self%&. Self%& Rhs&. Rhs&))
   :qid internal_core__cmp__PartialEq_trait_type_bounds_definition
   :skolemid skolem_internal_core__cmp__PartialEq_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   (=>
    (tr_bound%core!cmp.Eq. Self%&. Self%&)
    (tr_bound%core!cmp.PartialEq. Self%&. Self%& Self%&. Self%&)
   )
   :pattern ((tr_bound%core!cmp.Eq. Self%&. Self%&))
   :qid internal_core__cmp__Eq_trait_type_bounds_definition
   :skolemid skolem_internal_core__cmp__Eq_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%core!hash.Hash. Self%&. Self%&))
   :qid internal_core__hash__Hash_trait_type_bounds_definition
   :skolemid skolem_internal_core__hash__Hash_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%core!hash.Hasher. Self%&. Self%&))
   :qid internal_core__hash__Hasher_trait_type_bounds_definition
   :skolemid skolem_internal_core__hash__Hasher_trait_type_bounds_definition
)))

;; Associated-Type-Impls
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type)) (!
   (= (proj%%vstd!view.View./V $ (TYPE%vstd!hash_map.HashMapWithView. Key&. Key& Value&.
      Value&
     )
    ) $
   )
   :pattern ((proj%%vstd!view.View./V $ (TYPE%vstd!hash_map.HashMapWithView. Key&. Key&
      Value&. Value&
   )))
   :qid internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type)) (!
   (= (proj%vstd!view.View./V $ (TYPE%vstd!hash_map.HashMapWithView. Key&. Key& Value&.
      Value&
     )
    ) (TYPE%vstd!map.Map. (proj%%vstd!view.View./V Key&. Key&) (proj%vstd!view.View./V
      Key&. Key&
     ) Value&. Value&
   ))
   :pattern ((proj%vstd!view.View./V $ (TYPE%vstd!hash_map.HashMapWithView. Key&. Key&
      Value&. Value&
   )))
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
 (= (proj%%vstd!view.View./V $ (UINT 16)) $)
)
(assert
 (= (proj%vstd!view.View./V $ (UINT 16)) (UINT 16))
)
(assert
 (= (proj%%vstd!view.View./V $ (UINT 32)) $)
)
(assert
 (= (proj%vstd!view.View./V $ (UINT 32)) (UINT 32))
)
(assert
 (= (proj%%vstd!view.View./V $ (UINT SZ)) $)
)
(assert
 (= (proj%vstd!view.View./V $ (UINT SZ)) (UINT SZ))
)
(assert
 (= (proj%%vstd!view.View./V $ (SINT 32)) $)
)
(assert
 (= (proj%vstd!view.View./V $ (SINT 32)) (SINT 32))
)
(assert
 (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type)) (!
   (= (proj%%vstd!view.View./V $ (TYPE%tuple%2. A0&. A0& A1&. A1&)) $)
   :pattern ((proj%%vstd!view.View./V $ (TYPE%tuple%2. A0&. A0& A1&. A1&)))
   :qid internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type)) (!
   (= (proj%vstd!view.View./V $ (TYPE%tuple%2. A0&. A0& A1&. A1&)) (TYPE%tuple%2. (proj%%vstd!view.View./V
      A0&. A0&
     ) (proj%vstd!view.View./V A0&. A0&) (proj%%vstd!view.View./V A1&. A1&) (proj%vstd!view.View./V
      A1&. A1&
   )))
   :pattern ((proj%vstd!view.View./V $ (TYPE%tuple%2. A0&. A0& A1&. A1&)))
   :qid internal_proj__vstd!view.View./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd!view.View./V_assoc_type_impl_false_definition
)))
(assert
 (= (proj%%vstd!view.View./V $ TYPE%test_crate!MyStruct.) $)
)
(assert
 (= (proj%vstd!view.View./V $ TYPE%test_crate!MyStruct.) (TYPE%tuple%2. $ TYPE%test_crate!MyStruct.
   $ INT
)))

;; Function-Decl vstd::view::View::view
(declare-fun vstd!view.View.view.? (Dcr Type Poly) Poly)
(declare-fun vstd!view.View.view%default%.? (Dcr Type Poly) Poly)

;; Function-Decl vstd::std_specs::hash::obeys_key_model
(declare-fun vstd!std_specs.hash.obeys_key_model.? (Dcr Type) Bool)

;; Function-Decl vstd::map::impl&%0::empty
(declare-fun vstd!map.impl&%0.empty.? (Dcr Type Dcr Type) Poly)

;; Function-Decl vstd::hash_map::impl&%1::spec_len
(declare-fun vstd!hash_map.impl&%1.spec_len.? (Dcr Type Dcr Type Poly) Int)

;; Function-Decl vstd::set::impl&%0::len
(declare-fun vstd!set.impl&%0.len.? (Dcr Type Poly) Int)

;; Function-Decl vstd::map::impl&%0::dom
(declare-fun vstd!map.impl&%0.dom.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl vstd::map::impl&%0::len
(declare-fun vstd!map.impl&%0.len.? (Dcr Type Dcr Type Poly) Int)

;; Function-Decl vstd::map::impl&%0::insert
(declare-fun vstd!map.impl&%0.insert.? (Dcr Type Dcr Type Poly Poly Poly) Poly)

;; Function-Decl vstd::map::impl&%0::remove
(declare-fun vstd!map.impl&%0.remove.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::set::impl&%0::contains
(declare-fun vstd!set.impl&%0.contains.? (Dcr Type Poly Poly) Bool)

;; Function-Decl vstd::map_lib::impl&%0::contains_key
(declare-fun vstd!map_lib.impl&%0.contains_key.? (Dcr Type Dcr Type Poly Poly) Bool)

;; Function-Decl vstd::map::impl&%0::index
(declare-fun vstd!map.impl&%0.index.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::map::impl&%0::spec_index
(declare-fun vstd!map.impl&%0.spec_index.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::set::impl&%0::finite
(declare-fun vstd!set.impl&%0.finite.? (Dcr Type Poly) Bool)

;; Function-Decl vstd::set::impl&%0::empty
(declare-fun vstd!set.impl&%0.empty.? (Dcr Type) Poly)

;; Function-Decl vstd::set::impl&%0::insert
(declare-fun vstd!set.impl&%0.insert.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::set::impl&%0::remove
(declare-fun vstd!set.impl&%0.remove.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::raw_ptr::view_reverse_for_eq
(declare-fun vstd!raw_ptr.view_reverse_for_eq.? (Dcr Type Poly) Poly)

;; Function-Decl vstd::seq::Seq::len
(declare-fun vstd!seq.Seq.len.? (Dcr Type Poly) Int)

;; Function-Decl vstd::seq::Seq::index
(declare-fun vstd!seq.Seq.index.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::seq::impl&%0::spec_index
(declare-fun vstd!seq.impl&%0.spec_index.? (Dcr Type Poly Poly) Poly)

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

;; Function-Axioms vstd::map::impl&%0::empty
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type)) (!
   (has_type (vstd!map.impl&%0.empty.? K&. K& V&. V&) (TYPE%vstd!map.Map. K&. K& V&. V&))
   :pattern ((vstd!map.impl&%0.empty.? K&. K& V&. V&))
   :qid internal_vstd!map.impl&__0.empty.?_pre_post_definition
   :skolemid skolem_internal_vstd!map.impl&__0.empty.?_pre_post_definition
)))

;; Function-Specs vstd::hash_map::impl&%1::new
(declare-fun req%vstd!hash_map.impl&%1.new. (Dcr Type Dcr Type) Bool)
(declare-const %%global_location_label%%0 Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type)) (!
   (= (req%vstd!hash_map.impl&%1.new. Key&. Key& Value&. Value&) (and
     (=>
      %%global_location_label%%0
      (vstd!std_specs.hash.obeys_key_model.? Key&. Key&)
     )
     (=>
      %%global_location_label%%1
      (forall ((k1$ Poly) (k2$ Poly)) (!
        (=>
         (and
          (has_type k1$ Key&)
          (has_type k2$ Key&)
         )
         (=>
          (= (vstd!view.View.view.? Key&. Key& k1$) (vstd!view.View.view.? Key&. Key& k2$))
          (= k1$ k2$)
        ))
        :pattern ((vstd!view.View.view.? Key&. Key& k1$) (vstd!view.View.view.? Key&. Key&
          k2$
        ))
        :qid user_vstd__hash_map__impl&%1__new_0
        :skolemid skolem_user_vstd__hash_map__impl&%1__new_0
   )))))
   :pattern ((req%vstd!hash_map.impl&%1.new. Key&. Key& Value&. Value&))
   :qid internal_req__vstd!hash_map.impl&__1.new._definition
   :skolemid skolem_internal_req__vstd!hash_map.impl&__1.new._definition
)))
(declare-fun ens%vstd!hash_map.impl&%1.new. (Dcr Type Dcr Type Poly) Bool)
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (result! Poly)) (!
   (= (ens%vstd!hash_map.impl&%1.new. Key&. Key& Value&. Value& result!) (and
     (has_type result! (TYPE%vstd!hash_map.HashMapWithView. Key&. Key& Value&. Value&))
     (= (vstd!view.View.view.? $ (TYPE%vstd!hash_map.HashMapWithView. Key&. Key& Value&.
        Value&
       ) result!
      ) (vstd!map.impl&%0.empty.? (proj%%vstd!view.View./V Key&. Key&) (proj%vstd!view.View./V
        Key&. Key&
       ) Value&. Value&
   ))))
   :pattern ((ens%vstd!hash_map.impl&%1.new. Key&. Key& Value&. Value& result!))
   :qid internal_ens__vstd!hash_map.impl&__1.new._definition
   :skolemid skolem_internal_ens__vstd!hash_map.impl&__1.new._definition
)))

;; Function-Axioms vstd::hash_map::impl&%1::spec_len
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd!hash_map.HashMapWithView. Key&. Key& Value&. Value&))
    (uInv SZ (vstd!hash_map.impl&%1.spec_len.? Key&. Key& Value&. Value& self!))
   )
   :pattern ((vstd!hash_map.impl&%1.spec_len.? Key&. Key& Value&. Value& self!))
   :qid internal_vstd!hash_map.impl&__1.spec_len.?_pre_post_definition
   :skolemid skolem_internal_vstd!hash_map.impl&__1.spec_len.?_pre_post_definition
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

;; Function-Axioms vstd::map::impl&%0::len
(assert
 (fuel_bool_default fuel%vstd!map.impl&%0.len.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!map.impl&%0.len.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly)) (!
    (= (vstd!map.impl&%0.len.? K&. K& V&. V& self!) (vstd!set.impl&%0.len.? K&. K& (vstd!map.impl&%0.dom.?
       K&. K& V&. V& self!
    )))
    :pattern ((vstd!map.impl&%0.len.? K&. K& V&. V& self!))
    :qid internal_vstd!map.impl&__0.len.?_definition
    :skolemid skolem_internal_vstd!map.impl&__0.len.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd!map.Map. K&. K& V&. V&))
    (<= 0 (vstd!map.impl&%0.len.? K&. K& V&. V& self!))
   )
   :pattern ((vstd!map.impl&%0.len.? K&. K& V&. V& self!))
   :qid internal_vstd!map.impl&__0.len.?_pre_post_definition
   :skolemid skolem_internal_vstd!map.impl&__0.len.?_pre_post_definition
)))

;; Function-Specs vstd::hash_map::impl&%1::len
(declare-fun ens%vstd!hash_map.impl&%1.len. (Dcr Type Dcr Type Poly Int) Bool)
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (self! Poly) (result! Int))
  (!
   (= (ens%vstd!hash_map.impl&%1.len. Key&. Key& Value&. Value& self! result!) (and
     (uInv SZ result!)
     (= result! (vstd!map.impl&%0.len.? (proj%%vstd!view.View./V Key&. Key&) (proj%vstd!view.View./V
        Key&. Key&
       ) Value&. Value& (vstd!view.View.view.? $ (TYPE%vstd!hash_map.HashMapWithView. Key&.
         Key& Value&. Value&
        ) self!
   )))))
   :pattern ((ens%vstd!hash_map.impl&%1.len. Key&. Key& Value&. Value& self! result!))
   :qid internal_ens__vstd!hash_map.impl&__1.len._definition
   :skolemid skolem_internal_ens__vstd!hash_map.impl&__1.len._definition
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

;; Function-Specs vstd::hash_map::impl&%1::insert
(declare-fun ens%vstd!hash_map.impl&%1.insert. (Dcr Type Dcr Type Poly Poly Poly Poly)
 Bool
)
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (pre%self! Poly) (self!
    Poly
   ) (k! Poly) (v! Poly)
  ) (!
   (= (ens%vstd!hash_map.impl&%1.insert. Key&. Key& Value&. Value& pre%self! self! k!
     v!
    ) (and
     (has_type self! (TYPE%vstd!hash_map.HashMapWithView. Key&. Key& Value&. Value&))
     (= (vstd!view.View.view.? $ (TYPE%vstd!hash_map.HashMapWithView. Key&. Key& Value&.
        Value&
       ) self!
      ) (vstd!map.impl&%0.insert.? (proj%%vstd!view.View./V Key&. Key&) (proj%vstd!view.View./V
        Key&. Key&
       ) Value&. Value& (vstd!view.View.view.? $ (TYPE%vstd!hash_map.HashMapWithView. Key&.
         Key& Value&. Value&
        ) pre%self!
       ) (vstd!view.View.view.? Key&. Key& k!) v!
   ))))
   :pattern ((ens%vstd!hash_map.impl&%1.insert. Key&. Key& Value&. Value& pre%self! self!
     k! v!
   ))
   :qid internal_ens__vstd!hash_map.impl&__1.insert._definition
   :skolemid skolem_internal_ens__vstd!hash_map.impl&__1.insert._definition
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

;; Function-Specs vstd::hash_map::impl&%1::remove
(declare-fun ens%vstd!hash_map.impl&%1.remove. (Dcr Type Dcr Type Poly Poly Poly)
 Bool
)
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (pre%self! Poly) (self!
    Poly
   ) (k! Poly)
  ) (!
   (= (ens%vstd!hash_map.impl&%1.remove. Key&. Key& Value&. Value& pre%self! self! k!)
    (and
     (has_type self! (TYPE%vstd!hash_map.HashMapWithView. Key&. Key& Value&. Value&))
     (= (vstd!view.View.view.? $ (TYPE%vstd!hash_map.HashMapWithView. Key&. Key& Value&.
        Value&
       ) self!
      ) (vstd!map.impl&%0.remove.? (proj%%vstd!view.View./V Key&. Key&) (proj%vstd!view.View./V
        Key&. Key&
       ) Value&. Value& (vstd!view.View.view.? $ (TYPE%vstd!hash_map.HashMapWithView. Key&.
         Key& Value&. Value&
        ) pre%self!
       ) (vstd!view.View.view.? Key&. Key& k!)
   ))))
   :pattern ((ens%vstd!hash_map.impl&%1.remove. Key&. Key& Value&. Value& pre%self! self!
     k!
   ))
   :qid internal_ens__vstd!hash_map.impl&__1.remove._definition
   :skolemid skolem_internal_ens__vstd!hash_map.impl&__1.remove._definition
)))

;; Function-Axioms vstd::map_lib::impl&%0::contains_key
(assert
 (fuel_bool_default fuel%vstd!map_lib.impl&%0.contains_key.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!map_lib.impl&%0.contains_key.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (k! Poly)) (!
    (= (vstd!map_lib.impl&%0.contains_key.? K&. K& V&. V& self! k!) (vstd!set.impl&%0.contains.?
      K&. K& (vstd!map.impl&%0.dom.? K&. K& V&. V& self!) k!
    ))
    :pattern ((vstd!map_lib.impl&%0.contains_key.? K&. K& V&. V& self! k!))
    :qid internal_vstd!map_lib.impl&__0.contains_key.?_definition
    :skolemid skolem_internal_vstd!map_lib.impl&__0.contains_key.?_definition
))))

;; Function-Specs vstd::hash_map::impl&%1::contains_key
(declare-fun ens%vstd!hash_map.impl&%1.contains_key. (Dcr Type Dcr Type Poly Poly Bool)
 Bool
)
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (self! Poly) (k! Poly)
   (result! Bool)
  ) (!
   (= (ens%vstd!hash_map.impl&%1.contains_key. Key&. Key& Value&. Value& self! k! result!)
    (= result! (vstd!set.impl&%0.contains.? (proj%%vstd!view.View./V Key&. Key&) (proj%vstd!view.View./V
       Key&. Key&
      ) (vstd!map.impl&%0.dom.? (proj%%vstd!view.View./V Key&. Key&) (proj%vstd!view.View./V
        Key&. Key&
       ) Value&. Value& (vstd!view.View.view.? $ (TYPE%vstd!hash_map.HashMapWithView. Key&.
         Key& Value&. Value&
        ) self!
       )
      ) (vstd!view.View.view.? Key&. Key& k!)
   )))
   :pattern ((ens%vstd!hash_map.impl&%1.contains_key. Key&. Key& Value&. Value& self!
     k! result!
   ))
   :qid internal_ens__vstd!hash_map.impl&__1.contains_key._definition
   :skolemid skolem_internal_ens__vstd!hash_map.impl&__1.contains_key._definition
)))

;; Function-Specs vstd::map::impl&%0::index
(declare-fun req%vstd!map.impl&%0.index. (Dcr Type Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (= (req%vstd!map.impl&%0.index. K&. K& V&. V& self! key!) (=>
     %%global_location_label%%2
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

;; Function-Specs vstd::map::impl&%0::spec_index
(declare-fun req%vstd!map.impl&%0.spec_index. (Dcr Type Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (= (req%vstd!map.impl&%0.spec_index. K&. K& V&. V& self! key!) (=>
     %%global_location_label%%3
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

;; Function-Specs vstd::hash_map::impl&%1::get
(declare-fun ens%vstd!hash_map.impl&%1.get. (Dcr Type Dcr Type Poly Poly core!option.Option.)
 Bool
)
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (self! Poly) (k! Poly)
   (result! core!option.Option.)
  ) (!
   (= (ens%vstd!hash_map.impl&%1.get. Key&. Key& Value&. Value& self! k! result!) (and
     (has_type (Poly%core!option.Option. result!) (TYPE%core!option.Option. (REF Value&.)
       Value&
     ))
     (ite
      (is-core!option.Option./Some result!)
      (let
       ((v$ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
            result!
       )))))
       (and
        (vstd!set.impl&%0.contains.? (proj%%vstd!view.View./V Key&. Key&) (proj%vstd!view.View./V
          Key&. Key&
         ) (vstd!map.impl&%0.dom.? (proj%%vstd!view.View./V Key&. Key&) (proj%vstd!view.View./V
           Key&. Key&
          ) Value&. Value& (vstd!view.View.view.? $ (TYPE%vstd!hash_map.HashMapWithView. Key&.
            Key& Value&. Value&
           ) self!
          )
         ) (vstd!view.View.view.? Key&. Key& k!)
        )
        (= v$ (vstd!map.impl&%0.index.? (proj%%vstd!view.View./V Key&. Key&) (proj%vstd!view.View./V
           Key&. Key&
          ) Value&. Value& (vstd!view.View.view.? $ (TYPE%vstd!hash_map.HashMapWithView. Key&.
            Key& Value&. Value&
           ) self!
          ) (vstd!view.View.view.? Key&. Key& k!)
      ))))
      (not (vstd!set.impl&%0.contains.? (proj%%vstd!view.View./V Key&. Key&) (proj%vstd!view.View./V
         Key&. Key&
        ) (vstd!map.impl&%0.dom.? (proj%%vstd!view.View./V Key&. Key&) (proj%vstd!view.View./V
          Key&. Key&
         ) Value&. Value& (vstd!view.View.view.? $ (TYPE%vstd!hash_map.HashMapWithView. Key&.
           Key& Value&. Value&
          ) self!
         )
        ) (vstd!view.View.view.? Key&. Key& k!)
   )))))
   :pattern ((ens%vstd!hash_map.impl&%1.get. Key&. Key& Value&. Value& self! k! result!))
   :qid internal_ens__vstd!hash_map.impl&__1.get._definition
   :skolemid skolem_internal_ens__vstd!hash_map.impl&__1.get._definition
)))

;; Function-Specs vstd::hash_map::impl&%1::clear
(declare-fun ens%vstd!hash_map.impl&%1.clear. (Dcr Type Dcr Type Poly Poly) Bool)
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (pre%self! Poly) (self!
    Poly
   )
  ) (!
   (= (ens%vstd!hash_map.impl&%1.clear. Key&. Key& Value&. Value& pre%self! self!) (and
     (has_type self! (TYPE%vstd!hash_map.HashMapWithView. Key&. Key& Value&. Value&))
     (= (vstd!view.View.view.? $ (TYPE%vstd!hash_map.HashMapWithView. Key&. Key& Value&.
        Value&
       ) self!
      ) (vstd!map.impl&%0.empty.? (proj%%vstd!view.View./V Key&. Key&) (proj%vstd!view.View./V
        Key&. Key&
       ) Value&. Value&
   ))))
   :pattern ((ens%vstd!hash_map.impl&%1.clear. Key&. Key& Value&. Value& pre%self! self!))
   :qid internal_ens__vstd!hash_map.impl&__1.clear._definition
   :skolemid skolem_internal_ens__vstd!hash_map.impl&__1.clear._definition
)))

;; Function-Specs vstd::hash_map::axiom_hash_map_with_view_spec_len
(declare-fun ens%vstd!hash_map.axiom_hash_map_with_view_spec_len. (Dcr Type Dcr Type
  Poly
 ) Bool
)
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (m! Poly)) (!
   (= (ens%vstd!hash_map.axiom_hash_map_with_view_spec_len. Key&. Key& Value&. Value&
     m!
    ) (= (vstd!hash_map.impl&%1.spec_len.? Key&. Key& Value&. Value& m!) (vstd!map.impl&%0.len.?
      (proj%%vstd!view.View./V Key&. Key&) (proj%vstd!view.View./V Key&. Key&) Value&.
      Value& (vstd!view.View.view.? $ (TYPE%vstd!hash_map.HashMapWithView. Key&. Key& Value&.
        Value&
       ) m!
   ))))
   :pattern ((ens%vstd!hash_map.axiom_hash_map_with_view_spec_len. Key&. Key& Value&.
     Value& m!
   ))
   :qid internal_ens__vstd!hash_map.axiom_hash_map_with_view_spec_len._definition
   :skolemid skolem_internal_ens__vstd!hash_map.axiom_hash_map_with_view_spec_len._definition
)))

;; Broadcast vstd::hash_map::axiom_hash_map_with_view_spec_len
(assert
 (=>
  (fuel_bool fuel%vstd!hash_map.axiom_hash_map_with_view_spec_len.)
  (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (m! Poly)) (!
    (=>
     (has_type m! (TYPE%vstd!hash_map.HashMapWithView. Key&. Key& Value&. Value&))
     (=>
      (and
       (and
        (tr_bound%vstd!view.View. Key&. Key&)
        (tr_bound%core!cmp.Eq. Key&. Key&)
       )
       (tr_bound%core!hash.Hash. Key&. Key&)
      )
      (= (vstd!hash_map.impl&%1.spec_len.? Key&. Key& Value&. Value& m!) (vstd!map.impl&%0.len.?
        (proj%%vstd!view.View./V Key&. Key&) (proj%vstd!view.View./V Key&. Key&) Value&.
        Value& (vstd!view.View.view.? $ (TYPE%vstd!hash_map.HashMapWithView. Key&. Key& Value&.
          Value&
         ) m!
    )))))
    :pattern ((vstd!hash_map.impl&%1.spec_len.? Key&. Key& Value&. Value& m!))
    :qid user_vstd__hash_map__axiom_hash_map_with_view_spec_len_1
    :skolemid skolem_user_vstd__hash_map__axiom_hash_map_with_view_spec_len_1
))))

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
    :qid user_vstd__map__axiom_map_index_decreases_finite_2
    :skolemid skolem_user_vstd__map__axiom_map_index_decreases_finite_2
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
    :qid user_vstd__map__axiom_map_index_decreases_infinite_3
    :skolemid skolem_user_vstd__map__axiom_map_index_decreases_infinite_3
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
    :qid user_vstd__map__axiom_map_empty_4
    :skolemid skolem_user_vstd__map__axiom_map_empty_4
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
    :qid user_vstd__map__axiom_map_insert_domain_5
    :skolemid skolem_user_vstd__map__axiom_map_insert_domain_5
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
    :qid user_vstd__map__axiom_map_insert_same_6
    :skolemid skolem_user_vstd__map__axiom_map_insert_same_6
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
    :qid user_vstd__map__axiom_map_insert_different_7
    :skolemid skolem_user_vstd__map__axiom_map_insert_different_7
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
    :qid user_vstd__map__axiom_map_remove_domain_8
    :skolemid skolem_user_vstd__map__axiom_map_remove_domain_8
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
    :qid user_vstd__map__axiom_map_remove_different_9
    :skolemid skolem_user_vstd__map__axiom_map_remove_different_9
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
         :qid user_vstd__map__axiom_map_ext_equal_10
         :skolemid skolem_user_vstd__map__axiom_map_ext_equal_10
    )))))
    :pattern ((ext_eq false (TYPE%vstd!map.Map. K&. K& V&. V&) m1! m2!))
    :qid user_vstd__map__axiom_map_ext_equal_11
    :skolemid skolem_user_vstd__map__axiom_map_ext_equal_11
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
         :qid user_vstd__map__axiom_map_ext_equal_deep_12
         :skolemid skolem_user_vstd__map__axiom_map_ext_equal_deep_12
    )))))
    :pattern ((ext_eq true (TYPE%vstd!map.Map. K&. K& V&. V&) m1! m2!))
    :qid user_vstd__map__axiom_map_ext_equal_deep_13
    :skolemid skolem_user_vstd__map__axiom_map_ext_equal_deep_13
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
    :qid user_vstd__raw_ptr__ptrs_mut_eq_14
    :skolemid skolem_user_vstd__raw_ptr__ptrs_mut_eq_14
))))

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

;; Function-Specs vstd::seq::Seq::index
(declare-fun req%vstd!seq.Seq.index. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
   (= (req%vstd!seq.Seq.index. A&. A& self! i!) (=>
     %%global_location_label%%4
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

;; Function-Specs vstd::seq::impl&%0::spec_index
(declare-fun req%vstd!seq.impl&%0.spec_index. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
   (= (req%vstd!seq.impl&%0.spec_index. A&. A& self! i!) (=>
     %%global_location_label%%5
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
    :qid user_vstd__seq__axiom_seq_index_decreases_15
    :skolemid skolem_user_vstd__seq__axiom_seq_index_decreases_15
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
         :qid user_vstd__seq__axiom_seq_ext_equal_16
         :skolemid skolem_user_vstd__seq__axiom_seq_ext_equal_16
    )))))
    :pattern ((ext_eq false (TYPE%vstd!seq.Seq. A&. A&) s1! s2!))
    :qid user_vstd__seq__axiom_seq_ext_equal_17
    :skolemid skolem_user_vstd__seq__axiom_seq_ext_equal_17
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
         :qid user_vstd__seq__axiom_seq_ext_equal_deep_18
         :skolemid skolem_user_vstd__seq__axiom_seq_ext_equal_deep_18
    )))))
    :pattern ((ext_eq true (TYPE%vstd!seq.Seq. A&. A&) s1! s2!))
    :qid user_vstd__seq__axiom_seq_ext_equal_deep_19
    :skolemid skolem_user_vstd__seq__axiom_seq_ext_equal_deep_19
))))

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
    :qid user_vstd__set__axiom_set_empty_20
    :skolemid skolem_user_vstd__set__axiom_set_empty_20
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
    :qid user_vstd__set__axiom_set_insert_same_21
    :skolemid skolem_user_vstd__set__axiom_set_insert_same_21
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
    :qid user_vstd__set__axiom_set_insert_different_22
    :skolemid skolem_user_vstd__set__axiom_set_insert_different_22
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
    :qid user_vstd__set__axiom_set_remove_same_23
    :skolemid skolem_user_vstd__set__axiom_set_remove_same_23
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
    :qid user_vstd__set__axiom_set_remove_insert_24
    :skolemid skolem_user_vstd__set__axiom_set_remove_insert_24
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
    :qid user_vstd__set__axiom_set_remove_different_25
    :skolemid skolem_user_vstd__set__axiom_set_remove_different_25
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
        :qid user_vstd__set__axiom_set_ext_equal_26
        :skolemid skolem_user_vstd__set__axiom_set_ext_equal_26
    ))))
    :pattern ((ext_eq false (TYPE%vstd!set.Set. A&. A&) s1! s2!))
    :qid user_vstd__set__axiom_set_ext_equal_27
    :skolemid skolem_user_vstd__set__axiom_set_ext_equal_27
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
    :qid user_vstd__set__axiom_set_ext_equal_deep_28
    :skolemid skolem_user_vstd__set__axiom_set_ext_equal_deep_28
))))

;; Broadcast vstd::set::axiom_set_empty_finite
(assert
 (=>
  (fuel_bool fuel%vstd!set.axiom_set_empty_finite.)
  (forall ((A&. Dcr) (A& Type)) (!
    (vstd!set.impl&%0.finite.? A&. A& (vstd!set.impl&%0.empty.? A&. A&))
    :pattern ((vstd!set.impl&%0.finite.? A&. A& (vstd!set.impl&%0.empty.? A&. A&)))
    :qid user_vstd__set__axiom_set_empty_finite_29
    :skolemid skolem_user_vstd__set__axiom_set_empty_finite_29
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
    :qid user_vstd__set__axiom_set_insert_finite_30
    :skolemid skolem_user_vstd__set__axiom_set_insert_finite_30
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
    :qid user_vstd__set__axiom_set_remove_finite_31
    :skolemid skolem_user_vstd__set__axiom_set_remove_finite_31
))))

;; Broadcast vstd::set::axiom_set_empty_len
(assert
 (=>
  (fuel_bool fuel%vstd!set.axiom_set_empty_len.)
  (forall ((A&. Dcr) (A& Type)) (!
    (= (vstd!set.impl&%0.len.? A&. A& (vstd!set.impl&%0.empty.? A&. A&)) 0)
    :pattern ((vstd!set.impl&%0.len.? A&. A& (vstd!set.impl&%0.empty.? A&. A&)))
    :qid user_vstd__set__axiom_set_empty_len_32
    :skolemid skolem_user_vstd__set__axiom_set_empty_len_32
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
    :qid user_vstd__set__axiom_set_insert_len_33
    :skolemid skolem_user_vstd__set__axiom_set_insert_len_33
))))

;; Broadcast vstd::set::axiom_set_remove_len
(assert
 (=>
  (fuel_bool fuel%vstd!set.axiom_set_remove_len.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd!set.Set. A&. A&))
      (has_type a! A&)
     )
     (=>
      (vstd!set.impl&%0.finite.? A&. A& s!)
      (= (vstd!set.impl&%0.len.? A&. A& s!) (Add (vstd!set.impl&%0.len.? A&. A& (vstd!set.impl&%0.remove.?
          A&. A& s! a!
         )
        ) (ite
         (vstd!set.impl&%0.contains.? A&. A& s! a!)
         1
         0
    )))))
    :pattern ((vstd!set.impl&%0.len.? A&. A& (vstd!set.impl&%0.remove.? A&. A& s! a!)))
    :qid user_vstd__set__axiom_set_remove_len_34
    :skolemid skolem_user_vstd__set__axiom_set_remove_len_34
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
    :qid user_vstd__set__axiom_set_contains_len_35
    :skolemid skolem_user_vstd__set__axiom_set_contains_len_35
))))

;; Function-Specs test_crate::MyStruct::hash
(declare-fun ens%test_crate!impl&%3.hash. (Dcr Type test_crate!MyStruct. Poly Poly)
 Bool
)
(assert
 (forall ((H&. Dcr) (H& Type) (self! test_crate!MyStruct.) (pre%state! Poly) (state!
    Poly
   )
  ) (!
   (= (ens%test_crate!impl&%3.hash. H&. H& self! pre%state! state!) (has_type state! H&))
   :pattern ((ens%test_crate!impl&%3.hash. H&. H& self! pre%state! state!))
   :qid internal_ens__test_crate!impl&__3.hash._definition
   :skolemid skolem_internal_ens__test_crate!impl&__3.hash._definition
)))

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

;; Function-Axioms vstd::view::impl&%16::view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%16.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%16.view.)
  (forall ((self! Poly)) (!
    (= (vstd!view.View.view.? $ (UINT 16) self!) self!)
    :pattern ((vstd!view.View.view.? $ (UINT 16) self!))
    :qid internal_vstd!view.View.view.?_definition
    :skolemid skolem_internal_vstd!view.View.view.?_definition
))))

;; Function-Axioms vstd::view::impl&%18::view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%18.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%18.view.)
  (forall ((self! Poly)) (!
    (= (vstd!view.View.view.? $ (UINT 32) self!) self!)
    :pattern ((vstd!view.View.view.? $ (UINT 32) self!))
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

;; Function-Axioms vstd::view::impl&%30::view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%30.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%30.view.)
  (forall ((self! Poly)) (!
    (= (vstd!view.View.view.? $ (SINT 32) self!) self!)
    :pattern ((vstd!view.View.view.? $ (SINT 32) self!))
    :qid internal_vstd!view.View.view.?_definition
    :skolemid skolem_internal_vstd!view.View.view.?_definition
))))

;; Function-Axioms vstd::view::impl&%42::view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%42.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%42.view.)
  (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type) (self! Poly)) (!
    (=>
     (and
      (tr_bound%vstd!view.View. A0&. A0&)
      (tr_bound%vstd!view.View. A1&. A1&)
     )
     (= (vstd!view.View.view.? $ (TYPE%tuple%2. A0&. A0& A1&. A1&) self!) (Poly%tuple%2.
       (tuple%2./tuple%2 (vstd!view.View.view.? A0&. A0& (tuple%2./tuple%2/0 (%Poly%tuple%2.
           self!
         ))
        ) (vstd!view.View.view.? A1&. A1& (tuple%2./tuple%2/1 (%Poly%tuple%2. self!)))
    ))))
    :pattern ((vstd!view.View.view.? $ (TYPE%tuple%2. A0&. A0& A1&. A1&) self!))
    :qid internal_vstd!view.View.view.?_definition
    :skolemid skolem_internal_vstd!view.View.view.?_definition
))))

;; Function-Axioms test_crate::MyStruct::view
(assert
 (fuel_bool_default fuel%test_crate!impl&%4.view.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%4.view.)
  (forall ((self! Poly)) (!
    (= (vstd!view.View.view.? $ TYPE%test_crate!MyStruct. self!) (Poly%tuple%2. (tuple%2./tuple%2
       self! (I (Add (test_crate!MyStruct./MyStruct/i (%Poly%test_crate!MyStruct. self!))
         (test_crate!MyStruct./MyStruct/j (%Poly%test_crate!MyStruct. self!))
    )))))
    :pattern ((vstd!view.View.view.? $ TYPE%test_crate!MyStruct. self!))
    :qid internal_vstd!view.View.view.?_definition
    :skolemid skolem_internal_vstd!view.View.view.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type)) (!
   (=>
    (and
     (tr_bound%vstd!view.View. Key&. Key&)
     (tr_bound%core!cmp.Eq. Key&. Key&)
     (tr_bound%core!hash.Hash. Key&. Key&)
    )
    (tr_bound%vstd!view.View. $ (TYPE%vstd!hash_map.HashMapWithView. Key&. Key& Value&.
      Value&
   )))
   :pattern ((tr_bound%vstd!view.View. $ (TYPE%vstd!hash_map.HashMapWithView. Key&. Key&
      Value&. Value&
   )))
   :qid internal_vstd__hash_map__impl&__0_trait_impl_definition
   :skolemid skolem_internal_vstd__hash_map__impl&__0_trait_impl_definition
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
 (tr_bound%vstd!view.View. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!view.View. $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!view.View. $ (UINT 16))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!view.View. $ (UINT 32))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!view.View. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!view.View. $ (SINT 32))
)

;; Trait-Impl-Axiom
(assert
 (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type)) (!
   (=>
    (and
     (tr_bound%vstd!view.View. A0&. A0&)
     (tr_bound%vstd!view.View. A1&. A1&)
    )
    (tr_bound%vstd!view.View. $ (TYPE%tuple%2. A0&. A0& A1&. A1&))
   )
   :pattern ((tr_bound%vstd!view.View. $ (TYPE%tuple%2. A0&. A0& A1&. A1&)))
   :qid internal_vstd__view__impl&__42_trait_impl_definition
   :skolemid skolem_internal_vstd__view__impl&__42_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ (UINT 16) $ (UINT 16))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.Eq. $ (UINT 16))
)

;; Trait-Impl-Axiom
(assert
 (forall ((U&. Dcr) (U& Type) (T&. Dcr) (T& Type)) (!
   (=>
    (and
     (tr_bound%core!cmp.PartialEq. U&. U& U&. U&)
     (tr_bound%core!cmp.PartialEq. T&. T& T&. T&)
    )
    (tr_bound%core!cmp.PartialEq. $ (TYPE%tuple%2. U&. U& T&. T&) $ (TYPE%tuple%2. U&.
      U& T&. T&
   )))
   :pattern ((tr_bound%core!cmp.PartialEq. $ (TYPE%tuple%2. U&. U& T&. T&) $ (TYPE%tuple%2.
      U&. U& T&. T&
   )))
   :qid internal_core__tuple__impl&__11_trait_impl_definition
   :skolemid skolem_internal_core__tuple__impl&__11_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((U&. Dcr) (U& Type) (T&. Dcr) (T& Type)) (!
   (=>
    (and
     (tr_bound%core!cmp.Eq. U&. U&)
     (tr_bound%core!cmp.Eq. T&. T&)
    )
    (tr_bound%core!cmp.Eq. $ (TYPE%tuple%2. U&. U& T&. T&))
   )
   :pattern ((tr_bound%core!cmp.Eq. $ (TYPE%tuple%2. U&. U& T&. T&)))
   :qid internal_core__tuple__impl&__12_trait_impl_definition
   :skolemid skolem_internal_core__tuple__impl&__12_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ BOOL $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.Eq. $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ (UINT SZ) $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.Eq. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ (UINT 32) $ (UINT 32))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.Eq. $ (UINT 32))
)

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%core!cmp.PartialEq. T&. T& T&. T&)
    (tr_bound%core!cmp.PartialEq. $ (TYPE%core!option.Option. T&. T&) $ (TYPE%core!option.Option.
      T&. T&
   )))
   :pattern ((tr_bound%core!cmp.PartialEq. $ (TYPE%core!option.Option. T&. T&) $ (TYPE%core!option.Option.
      T&. T&
   )))
   :qid internal_core__option__impl&__14_trait_impl_definition
   :skolemid skolem_internal_core__option__impl&__14_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%core!cmp.Eq. T&. T&)
    (tr_bound%core!cmp.Eq. $ (TYPE%core!option.Option. T&. T&))
   )
   :pattern ((tr_bound%core!cmp.Eq. $ (TYPE%core!option.Option. T&. T&)))
   :qid internal_core__option__impl&__45_trait_impl_definition
   :skolemid skolem_internal_core__option__impl&__45_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type)) (!
   (=>
    (tr_bound%core!cmp.PartialEq. A&. A& B&. B&)
    (tr_bound%core!cmp.PartialEq. (REF A&.) A& (REF B&.) B&)
   )
   :pattern ((tr_bound%core!cmp.PartialEq. (REF A&.) A& (REF B&.) B&))
   :qid internal_core__cmp__impls__impl&__9_trait_impl_definition
   :skolemid skolem_internal_core__cmp__impls__impl&__9_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (=>
    (tr_bound%core!cmp.Eq. A&. A&)
    (tr_bound%core!cmp.Eq. (REF A&.) A&)
   )
   :pattern ((tr_bound%core!cmp.Eq. (REF A&.) A&))
   :qid internal_core__cmp__impls__impl&__12_trait_impl_definition
   :skolemid skolem_internal_core__cmp__impls__impl&__12_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ TYPE%tuple%0. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.Eq. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!cmp.PartialEq. $ (PTR T&. T&) $ (PTR T&. T&))
   :pattern ((tr_bound%core!cmp.PartialEq. $ (PTR T&. T&) $ (PTR T&. T&)))
   :qid internal_core__ptr__mut_ptr__impl&__3_trait_impl_definition
   :skolemid skolem_internal_core__ptr__mut_ptr__impl&__3_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!cmp.Eq. $ (PTR T&. T&))
   :pattern ((tr_bound%core!cmp.Eq. $ (PTR T&. T&)))
   :qid internal_core__ptr__mut_ptr__impl&__4_trait_impl_definition
   :skolemid skolem_internal_core__ptr__mut_ptr__impl&__4_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ (SINT 32) $ (SINT 32))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.Eq. $ (SINT 32))
)

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type)) (!
   (=>
    (tr_bound%core!cmp.PartialEq. T&. T& U&. U&)
    (tr_bound%core!cmp.PartialEq. $ (SLICE T&. T&) $ (SLICE U&. U&))
   )
   :pattern ((tr_bound%core!cmp.PartialEq. $ (SLICE T&. T&) $ (SLICE U&. U&)))
   :qid internal_core__slice__cmp__impl&__0_trait_impl_definition
   :skolemid skolem_internal_core__slice__cmp__impl&__0_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%core!cmp.Eq. T&. T&)
    (tr_bound%core!cmp.Eq. $ (SLICE T&. T&))
   )
   :pattern ((tr_bound%core!cmp.Eq. $ (SLICE T&. T&)))
   :qid internal_core__slice__cmp__impl&__1_trait_impl_definition
   :skolemid skolem_internal_core__slice__cmp__impl&__1_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!cmp.PartialEq. (CONST_PTR $) (PTR T&. T&) (CONST_PTR $) (PTR T&. T&))
   :pattern ((tr_bound%core!cmp.PartialEq. (CONST_PTR $) (PTR T&. T&) (CONST_PTR $) (PTR
      T&. T&
   )))
   :qid internal_core__ptr__const_ptr__impl&__3_trait_impl_definition
   :skolemid skolem_internal_core__ptr__const_ptr__impl&__3_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!cmp.Eq. (CONST_PTR $) (PTR T&. T&))
   :pattern ((tr_bound%core!cmp.Eq. (CONST_PTR $) (PTR T&. T&)))
   :qid internal_core__ptr__const_ptr__impl&__4_trait_impl_definition
   :skolemid skolem_internal_core__ptr__const_ptr__impl&__4_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%core!hash.Hash. T&. T&)
    (tr_bound%core!hash.Hash. (REF T&.) T&)
   )
   :pattern ((tr_bound%core!hash.Hash. (REF T&.) T&))
   :qid internal_core__hash__impls__impl&__5_trait_impl_definition
   :skolemid skolem_internal_core__hash__impls__impl&__5_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!hash.Hash. $ (UINT 16))
)

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (B&. Dcr) (B& Type)) (!
   (=>
    (and
     (tr_bound%core!hash.Hash. T&. T&)
     (tr_bound%core!hash.Hash. B&. B&)
    )
    (tr_bound%core!hash.Hash. $ (TYPE%tuple%2. T&. T& B&. B&))
   )
   :pattern ((tr_bound%core!hash.Hash. $ (TYPE%tuple%2. T&. T& B&. B&)))
   :qid internal_core__hash__impls__impl&__23_trait_impl_definition
   :skolemid skolem_internal_core__hash__impls__impl&__23_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!hash.Hash. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%core!hash.Hash. T&. T&)
    (tr_bound%core!hash.Hash. $ (TYPE%core!option.Option. T&. T&))
   )
   :pattern ((tr_bound%core!hash.Hash. $ (TYPE%core!option.Option. T&. T&)))
   :qid internal_core__option__impl&__47_trait_impl_definition
   :skolemid skolem_internal_core__option__impl&__47_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!hash.Hash. $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!hash.Hash. $ (SINT 32))
)

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!hash.Hash. (CONST_PTR $) (PTR T&. T&))
   :pattern ((tr_bound%core!hash.Hash. (CONST_PTR $) (PTR T&. T&)))
   :qid internal_core__hash__impls__impl&__7_trait_impl_definition
   :skolemid skolem_internal_core__hash__impls__impl&__7_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!hash.Hash. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!hash.Hash. $ (UINT 32))
)

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%core!hash.Hash. T&. T&)
    (tr_bound%core!hash.Hash. $ (SLICE T&. T&))
   )
   :pattern ((tr_bound%core!hash.Hash. $ (SLICE T&. T&)))
   :qid internal_core__hash__impls__impl&__4_trait_impl_definition
   :skolemid skolem_internal_core__hash__impls__impl&__4_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!hash.Hash. $ (PTR T&. T&))
   :pattern ((tr_bound%core!hash.Hash. $ (PTR T&. T&)))
   :qid internal_core__hash__impls__impl&__8_trait_impl_definition
   :skolemid skolem_internal_core__hash__impls__impl&__8_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!hash.Hash. $ TYPE%test_crate!MyStruct.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!view.View. $ TYPE%test_crate!MyStruct.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ TYPE%test_crate!MyStruct. $ TYPE%test_crate!MyStruct.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.Eq. $ TYPE%test_crate!MyStruct.)
)

;; Function-Def test_crate::test
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/hash-94588ed97bed1cec-test_hash_map_with_view/test.rs:47:1: 47:10 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Bool)
 (declare-const verus_tmp_w@ tuple%2.)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Bool)
 (declare-const tmp%6 Bool)
 (declare-const tmp%7 Bool)
 (declare-const tmp%8 Bool)
 (declare-const tmp%9 Bool)
 (declare-const v$1@ Int)
 (declare-const tmp%10 Bool)
 (declare-const tmp%11 Bool)
 (declare-const m@0 vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>.)
 (declare-const s1@ test_crate!MyStruct.)
 (declare-const s2@ test_crate!MyStruct.)
 (declare-const verus_tmp@0 tuple%2.)
 (declare-const w@0 tuple%2.)
 (declare-const n@ Int)
 (declare-const b@ Bool)
 (declare-const v@ core!option.Option.)
 (declare-const s3@ test_crate!MyStruct.)
 (declare-const b$1@ Bool)
 (assert
  fuel_defaults
 )
 (declare-const m@1 vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>.)
 (declare-const verus_tmp@1 tuple%2.)
 (declare-const w@1 tuple%2.)
 (declare-const m@2 vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>.)
 (declare-const m@3 vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>.)
 (declare-const m@4 vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>.)
 (declare-const %%switch_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 ;; assertion failed
 (declare-const %%location_label%%6 Bool)
 ;; assertion failed
 (declare-const %%location_label%%7 Bool)
 ;; assertion failed
 (declare-const %%location_label%%8 Bool)
 ;; assertion failed
 (declare-const %%location_label%%9 Bool)
 ;; assertion failed
 (declare-const %%location_label%%10 Bool)
 ;; assertion failed
 (declare-const %%location_label%%11 Bool)
 ;; assertion failed
 (declare-const %%location_label%%12 Bool)
 ;; assertion failed
 (declare-const %%location_label%%13 Bool)
 ;; assertion failed
 (declare-const %%location_label%%14 Bool)
 (assert
  (not (=>
    (vstd!std_specs.hash.obeys_key_model.? $ TYPE%test_crate!MyStruct.)
    (and
     (=>
      %%location_label%%0
      (req%vstd!hash_map.impl&%1.new. $ TYPE%test_crate!MyStruct. $ (UINT 32))
     )
     (=>
      (ens%vstd!hash_map.impl&%1.new. $ TYPE%test_crate!MyStruct. $ (UINT 32) tmp%1)
      (=>
       (= m@0 (%Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>. tmp%1))
       (=>
        (= tmp%2 (ext_eq false (TYPE%vstd!map.Map. $ (TYPE%tuple%2. $ TYPE%test_crate!MyStruct.
            $ INT
           ) $ (UINT 32)
          ) (vstd!view.View.view.? $ (TYPE%vstd!hash_map.HashMapWithView. $ TYPE%test_crate!MyStruct.
            $ (UINT 32)
           ) (Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>. m@0)
          ) (vstd!map.impl&%0.empty.? $ (TYPE%tuple%2. $ TYPE%test_crate!MyStruct. $ INT) $
           (UINT 32)
        )))
        (and
         (=>
          %%location_label%%1
          tmp%2
         )
         (=>
          tmp%2
          (=>
           (= s1@ (test_crate!MyStruct./MyStruct (%I (I 3)) (%I (I 7))))
           (=>
            (ens%vstd!hash_map.impl&%1.insert. $ TYPE%test_crate!MyStruct. $ (UINT 32) (Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>.
              m@0
             ) (Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>. m@1) (Poly%test_crate!MyStruct.
              s1@
             ) (I 4)
            )
            (=>
             (= s2@ (test_crate!MyStruct./MyStruct (%I (I 3)) (%I (I 7))))
             (=>
              (= verus_tmp@1 (tuple%2./tuple%2 (Poly%test_crate!MyStruct. (test_crate!MyStruct./MyStruct
                  (%I (I 3)) (%I (I 7))
                 )
                ) (I 10)
              ))
              (=>
               (= verus_tmp_w@ verus_tmp@1)
               (=>
                (= w@1 verus_tmp_w@)
                (=>
                 (= tmp%3 (ext_eq false (TYPE%tuple%2. $ TYPE%test_crate!MyStruct. $ INT) (vstd!view.View.view.?
                    $ TYPE%test_crate!MyStruct. (Poly%test_crate!MyStruct. s1@)
                   ) (Poly%tuple%2. w@1)
                 ))
                 (and
                  (=>
                   %%location_label%%2
                   tmp%3
                  )
                  (=>
                   tmp%3
                   (=>
                    (= tmp%4 (ext_eq false (TYPE%tuple%2. $ TYPE%test_crate!MyStruct. $ INT) (vstd!view.View.view.?
                       $ TYPE%test_crate!MyStruct. (Poly%test_crate!MyStruct. s2@)
                      ) (Poly%tuple%2. w@1)
                    ))
                    (and
                     (=>
                      %%location_label%%3
                      tmp%4
                     )
                     (=>
                      tmp%4
                      (=>
                       (= tmp%5 (= (%I (vstd!map.impl&%0.index.? $ (TYPE%tuple%2. $ TYPE%test_crate!MyStruct.
                            $ INT
                           ) $ (UINT 32) (vstd!view.View.view.? $ (TYPE%vstd!hash_map.HashMapWithView. $ TYPE%test_crate!MyStruct.
                             $ (UINT 32)
                            ) (Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>. m@1)
                           ) (Poly%tuple%2. w@1)
                          )
                         ) 4
                       ))
                       (and
                        (=>
                         %%location_label%%4
                         tmp%5
                        )
                        (=>
                         tmp%5
                         (=>
                          (= tmp%6 (vstd!set.impl&%0.contains.? $ (TYPE%tuple%2. $ TYPE%test_crate!MyStruct. $
                             INT
                            ) (vstd!map.impl&%0.dom.? $ (TYPE%tuple%2. $ TYPE%test_crate!MyStruct. $ INT) $ (UINT
                              32
                             ) (vstd!view.View.view.? $ (TYPE%vstd!hash_map.HashMapWithView. $ TYPE%test_crate!MyStruct.
                               $ (UINT 32)
                              ) (Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>. m@1)
                             )
                            ) (Poly%tuple%2. w@1)
                          ))
                          (and
                           (=>
                            %%location_label%%5
                            tmp%6
                           )
                           (=>
                            tmp%6
                            (=>
                             (= tmp%7 (= (vstd!map.impl&%0.len.? $ (TYPE%tuple%2. $ TYPE%test_crate!MyStruct. $ INT)
                                $ (UINT 32) (vstd!view.View.view.? $ (TYPE%vstd!hash_map.HashMapWithView. $ TYPE%test_crate!MyStruct.
                                  $ (UINT 32)
                                 ) (Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>. m@1)
                                )
                               ) 1
                             ))
                             (and
                              (=>
                               %%location_label%%6
                               tmp%7
                              )
                              (=>
                               tmp%7
                               (and
                                (=>
                                 (ens%vstd!hash_map.axiom_hash_map_with_view_spec_len. $ TYPE%test_crate!MyStruct.
                                  $ (UINT 32) (Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>. m@1)
                                 )
                                 (=>
                                  %%location_label%%7
                                  (= (vstd!hash_map.impl&%1.spec_len.? $ TYPE%test_crate!MyStruct. $ (UINT 32) (Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>.
                                     m@1
                                    )
                                   ) 1
                                )))
                                (=>
                                 (= (vstd!hash_map.impl&%1.spec_len.? $ TYPE%test_crate!MyStruct. $ (UINT 32) (Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>.
                                    m@1
                                   )
                                  ) 1
                                 )
                                 (=>
                                  (ens%vstd!hash_map.impl&%1.len. $ TYPE%test_crate!MyStruct. $ (UINT 32) (Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>.
                                    m@1
                                   ) n@
                                  )
                                  (=>
                                   (= tmp%8 (= n@ 1))
                                   (and
                                    (=>
                                     %%location_label%%8
                                     tmp%8
                                    )
                                    (=>
                                     tmp%8
                                     (=>
                                      (ens%vstd!hash_map.impl&%1.contains_key. $ TYPE%test_crate!MyStruct. $ (UINT 32) (
                                        Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>. m@1
                                       ) (Poly%test_crate!MyStruct. s2@) b@
                                      )
                                      (and
                                       (=>
                                        %%location_label%%9
                                        b@
                                       )
                                       (=>
                                        b@
                                        (=>
                                         (ens%vstd!hash_map.impl&%1.get. $ TYPE%test_crate!MyStruct. $ (UINT 32) (Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>.
                                           m@1
                                          ) (Poly%test_crate!MyStruct. s2@) v@
                                         )
                                         (or
                                          (and
                                           (=>
                                            (is-core!option.Option./Some v@)
                                            (=>
                                             (= v$1@ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                                                  v@
                                             )))))
                                             (=>
                                              (= tmp%9 (= v$1@ 4))
                                              (and
                                               (=>
                                                %%location_label%%10
                                                tmp%9
                                               )
                                               (=>
                                                tmp%9
                                                %%switch_label%%0
                                           )))))
                                           (=>
                                            (not (is-core!option.Option./Some v@))
                                            (=>
                                             %%location_label%%11
                                             false
                                          )))
                                          (and
                                           (not %%switch_label%%0)
                                           (=>
                                            (ens%vstd!hash_map.impl&%1.remove. $ TYPE%test_crate!MyStruct. $ (UINT 32) (Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>.
                                              m@1
                                             ) (Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>. m@2) (Poly%test_crate!MyStruct.
                                              s2@
                                            ))
                                            (=>
                                             (= tmp%10 (not (vstd!set.impl&%0.contains.? $ (TYPE%tuple%2. $ TYPE%test_crate!MyStruct.
                                                 $ INT
                                                ) (vstd!map.impl&%0.dom.? $ (TYPE%tuple%2. $ TYPE%test_crate!MyStruct. $ INT) $ (UINT
                                                  32
                                                 ) (vstd!view.View.view.? $ (TYPE%vstd!hash_map.HashMapWithView. $ TYPE%test_crate!MyStruct.
                                                   $ (UINT 32)
                                                  ) (Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>. m@2)
                                                 )
                                                ) (Poly%tuple%2. w@1)
                                             )))
                                             (and
                                              (=>
                                               %%location_label%%12
                                               tmp%10
                                              )
                                              (=>
                                               tmp%10
                                               (=>
                                                (= s3@ (test_crate!MyStruct./MyStruct (%I (I 3)) (%I (I 7))))
                                                (=>
                                                 (ens%vstd!hash_map.impl&%1.insert. $ TYPE%test_crate!MyStruct. $ (UINT 32) (Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>.
                                                   m@2
                                                  ) (Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>. m@3) (Poly%test_crate!MyStruct.
                                                   s3@
                                                  ) (I 8)
                                                 )
                                                 (=>
                                                  (ens%vstd!hash_map.impl&%1.clear. $ TYPE%test_crate!MyStruct. $ (UINT 32) (Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>.
                                                    m@3
                                                   ) (Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>. m@4)
                                                  )
                                                  (=>
                                                   (= tmp%11 (not (vstd!set.impl&%0.contains.? $ (TYPE%tuple%2. $ TYPE%test_crate!MyStruct.
                                                       $ INT
                                                      ) (vstd!map.impl&%0.dom.? $ (TYPE%tuple%2. $ TYPE%test_crate!MyStruct. $ INT) $ (UINT
                                                        32
                                                       ) (vstd!view.View.view.? $ (TYPE%vstd!hash_map.HashMapWithView. $ TYPE%test_crate!MyStruct.
                                                         $ (UINT 32)
                                                        ) (Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>. m@4)
                                                       )
                                                      ) (Poly%tuple%2. w@1)
                                                   )))
                                                   (and
                                                    (=>
                                                     %%location_label%%13
                                                     tmp%11
                                                    )
                                                    (=>
                                                     tmp%11
                                                     (=>
                                                      (ens%vstd!hash_map.impl&%1.contains_key. $ TYPE%test_crate!MyStruct. $ (UINT 32) (
                                                        Poly%vstd!hash_map.HashMapWithView<test_crate!MyStruct./u32.>. m@4
                                                       ) (Poly%test_crate!MyStruct. s2@) b$1@
                                                      )
                                                      (=>
                                                       %%location_label%%14
                                                       (not b$1@)
 ))))))))))))))))))))))))))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
