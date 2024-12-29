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
(declare-const fuel%vstd!std_specs.hash.axiom_bool_obeys_hash_table_key_model. FuelId)
(declare-const fuel%vstd!std_specs.hash.axiom_u8_obeys_hash_table_key_model. FuelId)
(declare-const fuel%vstd!std_specs.hash.axiom_u32_obeys_hash_table_key_model. FuelId)
(declare-const fuel%vstd!std_specs.hash.axiom_box_bool_obeys_hash_table_key_model.
 FuelId
)
(declare-const fuel%vstd!std_specs.hash.axiom_box_integer_type_obeys_hash_table_key_model.
 FuelId
)
(declare-const fuel%vstd!std_specs.hash.axiom_random_state_builds_valid_hashers. FuelId)
(declare-const fuel%vstd!std_specs.hash.axiom_spec_hash_set_len. FuelId)
(declare-const fuel%vstd!std_specs.hash.axiom_set_contains_deref_key. FuelId)
(declare-const fuel%vstd!std_specs.hash.axiom_set_contains_box. FuelId)
(declare-const fuel%vstd!std_specs.hash.axiom_set_deref_key_to_value. FuelId)
(declare-const fuel%vstd!std_specs.hash.axiom_set_box_key_to_value. FuelId)
(declare-const fuel%vstd!std_specs.hash.axiom_set_deref_key_removed. FuelId)
(declare-const fuel%vstd!std_specs.hash.axiom_set_box_key_removed. FuelId)
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
(declare-const fuel%vstd!view.impl&%14.view. FuelId)
(declare-const fuel%vstd!view.impl&%18.view. FuelId)
(declare-const fuel%vstd!view.impl&%24.view. FuelId)
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
(declare-const fuel%vstd!std_specs.hash.group_hash_axioms. FuelId)
(declare-const fuel%vstd!std_specs.range.group_range_axioms. FuelId)
(declare-const fuel%vstd!std_specs.vec.group_vec_axioms. FuelId)
(declare-const fuel%vstd!group_vstd_default. FuelId)
(assert
 (distinct fuel%vstd!std_specs.hash.axiom_bool_obeys_hash_table_key_model. fuel%vstd!std_specs.hash.axiom_u8_obeys_hash_table_key_model.
  fuel%vstd!std_specs.hash.axiom_u32_obeys_hash_table_key_model. fuel%vstd!std_specs.hash.axiom_box_bool_obeys_hash_table_key_model.
  fuel%vstd!std_specs.hash.axiom_box_integer_type_obeys_hash_table_key_model. fuel%vstd!std_specs.hash.axiom_random_state_builds_valid_hashers.
  fuel%vstd!std_specs.hash.axiom_spec_hash_set_len. fuel%vstd!std_specs.hash.axiom_set_contains_deref_key.
  fuel%vstd!std_specs.hash.axiom_set_contains_box. fuel%vstd!std_specs.hash.axiom_set_deref_key_to_value.
  fuel%vstd!std_specs.hash.axiom_set_box_key_to_value. fuel%vstd!std_specs.hash.axiom_set_deref_key_removed.
  fuel%vstd!std_specs.hash.axiom_set_box_key_removed. fuel%vstd!raw_ptr.impl&%4.view.
  fuel%vstd!raw_ptr.ptrs_mut_eq. fuel%vstd!seq.impl&%0.spec_index. fuel%vstd!seq.axiom_seq_index_decreases.
  fuel%vstd!seq.axiom_seq_ext_equal. fuel%vstd!seq.axiom_seq_ext_equal_deep. fuel%vstd!set.axiom_set_empty.
  fuel%vstd!set.axiom_set_insert_same. fuel%vstd!set.axiom_set_insert_different. fuel%vstd!set.axiom_set_remove_same.
  fuel%vstd!set.axiom_set_remove_insert. fuel%vstd!set.axiom_set_remove_different.
  fuel%vstd!set.axiom_set_ext_equal. fuel%vstd!set.axiom_set_ext_equal_deep. fuel%vstd!set.axiom_set_empty_finite.
  fuel%vstd!set.axiom_set_insert_finite. fuel%vstd!set.axiom_set_remove_finite. fuel%vstd!set.axiom_set_empty_len.
  fuel%vstd!set.axiom_set_insert_len. fuel%vstd!set.axiom_set_remove_len. fuel%vstd!set.axiom_set_contains_len.
  fuel%vstd!view.impl&%0.view. fuel%vstd!view.impl&%2.view. fuel%vstd!view.impl&%4.view.
  fuel%vstd!view.impl&%6.view. fuel%vstd!view.impl&%10.view. fuel%vstd!view.impl&%12.view.
  fuel%vstd!view.impl&%14.view. fuel%vstd!view.impl&%18.view. fuel%vstd!view.impl&%24.view.
  fuel%vstd!array.group_array_axioms. fuel%vstd!map.group_map_axioms. fuel%vstd!multiset.group_multiset_axioms.
  fuel%vstd!raw_ptr.group_raw_ptr_axioms. fuel%vstd!seq.group_seq_axioms. fuel%vstd!seq_lib.group_seq_lib_default.
  fuel%vstd!set.group_set_axioms. fuel%vstd!set_lib.group_set_lib_axioms. fuel%vstd!slice.group_slice_axioms.
  fuel%vstd!string.group_string_axioms. fuel%vstd!std_specs.bits.group_bits_axioms.
  fuel%vstd!std_specs.control_flow.group_control_flow_axioms. fuel%vstd!std_specs.hash.group_hash_axioms.
  fuel%vstd!std_specs.range.group_range_axioms. fuel%vstd!std_specs.vec.group_vec_axioms.
  fuel%vstd!group_vstd_default.
))
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
 (=>
  (fuel_bool_default fuel%vstd!std_specs.hash.group_hash_axioms.)
  (and
   (fuel_bool_default fuel%vstd!std_specs.hash.axiom_bool_obeys_hash_table_key_model.)
   (fuel_bool_default fuel%vstd!std_specs.hash.axiom_u8_obeys_hash_table_key_model.)
   (fuel_bool_default fuel%vstd!std_specs.hash.axiom_u32_obeys_hash_table_key_model.)
   (fuel_bool_default fuel%vstd!std_specs.hash.axiom_box_bool_obeys_hash_table_key_model.)
   (fuel_bool_default fuel%vstd!std_specs.hash.axiom_box_integer_type_obeys_hash_table_key_model.)
   (fuel_bool_default fuel%vstd!std_specs.hash.axiom_random_state_builds_valid_hashers.)
   (fuel_bool_default fuel%vstd!std_specs.hash.axiom_set_box_key_removed.)
   (fuel_bool_default fuel%vstd!std_specs.hash.axiom_set_contains_deref_key.)
   (fuel_bool_default fuel%vstd!std_specs.hash.axiom_set_contains_box.)
   (fuel_bool_default fuel%vstd!std_specs.hash.axiom_set_deref_key_removed.)
   (fuel_bool_default fuel%vstd!std_specs.hash.axiom_set_deref_key_to_value.)
   (fuel_bool_default fuel%vstd!std_specs.hash.axiom_set_box_key_to_value.)
   (fuel_bool_default fuel%vstd!std_specs.hash.axiom_spec_hash_set_len.)
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
(declare-fun proj%%core!hash.BuildHasher./Hasher (Dcr Type) Dcr)
(declare-fun proj%core!hash.BuildHasher./Hasher (Dcr Type) Type)

;; Datatypes
(declare-sort std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>.
 0
)
(declare-sort std!hash.random.DefaultHasher. 0)
(declare-sort std!hash.random.RandomState. 0)
(declare-sort vstd!raw_ptr.DynMetadata. 0)
(declare-sort vstd!raw_ptr.Provenance. 0)
(declare-sort vstd!seq.Seq<u8.>. 0)
(declare-sort vstd!seq.Seq<vstd!seq.Seq<u8.>.>. 0)
(declare-sort vstd!set.Set<u32.>. 0)
(declare-sort allocator_global%. 0)
(declare-datatypes ((core!option.Option. 0) (vstd!raw_ptr.Metadata. 0) (vstd!raw_ptr.PtrData.
   0
  ) (tuple%0. 0)
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
  ) ((tuple%0./tuple%0))
))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun vstd!raw_ptr.Metadata./Length/0 (vstd!raw_ptr.Metadata.) Int)
(declare-fun vstd!raw_ptr.Metadata./Dyn/0 (vstd!raw_ptr.Metadata.) vstd!raw_ptr.DynMetadata.)
(declare-fun vstd!raw_ptr.PtrData./PtrData/addr (vstd!raw_ptr.PtrData.) Int)
(declare-fun vstd!raw_ptr.PtrData./PtrData/provenance (vstd!raw_ptr.PtrData.) vstd!raw_ptr.Provenance.)
(declare-fun vstd!raw_ptr.PtrData./PtrData/metadata (vstd!raw_ptr.PtrData.) vstd!raw_ptr.Metadata.)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-const TYPE%std!hash.random.DefaultHasher. Type)
(declare-const TYPE%std!hash.random.RandomState. Type)
(declare-fun TYPE%std!collections.hash.set.HashSet. (Dcr Type Dcr Type) Type)
(declare-const TYPE%vstd!raw_ptr.Provenance. Type)
(declare-const TYPE%vstd!raw_ptr.Metadata. Type)
(declare-const TYPE%vstd!raw_ptr.DynMetadata. Type)
(declare-const TYPE%vstd!raw_ptr.PtrData. Type)
(declare-fun TYPE%vstd!seq.Seq. (Dcr Type) Type)
(declare-fun TYPE%vstd!set.Set. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>.
 (std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>.) Poly
)
(declare-fun %Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>.
 (Poly) std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>.
)
(declare-fun Poly%std!hash.random.DefaultHasher. (std!hash.random.DefaultHasher.)
 Poly
)
(declare-fun %Poly%std!hash.random.DefaultHasher. (Poly) std!hash.random.DefaultHasher.)
(declare-fun Poly%std!hash.random.RandomState. (std!hash.random.RandomState.) Poly)
(declare-fun %Poly%std!hash.random.RandomState. (Poly) std!hash.random.RandomState.)
(declare-fun Poly%vstd!raw_ptr.DynMetadata. (vstd!raw_ptr.DynMetadata.) Poly)
(declare-fun %Poly%vstd!raw_ptr.DynMetadata. (Poly) vstd!raw_ptr.DynMetadata.)
(declare-fun Poly%vstd!raw_ptr.Provenance. (vstd!raw_ptr.Provenance.) Poly)
(declare-fun %Poly%vstd!raw_ptr.Provenance. (Poly) vstd!raw_ptr.Provenance.)
(declare-fun Poly%vstd!seq.Seq<u8.>. (vstd!seq.Seq<u8.>.) Poly)
(declare-fun %Poly%vstd!seq.Seq<u8.>. (Poly) vstd!seq.Seq<u8.>.)
(declare-fun Poly%vstd!seq.Seq<vstd!seq.Seq<u8.>.>. (vstd!seq.Seq<vstd!seq.Seq<u8.>.>.)
 Poly
)
(declare-fun %Poly%vstd!seq.Seq<vstd!seq.Seq<u8.>.>. (Poly) vstd!seq.Seq<vstd!seq.Seq<u8.>.>.)
(declare-fun Poly%vstd!set.Set<u32.>. (vstd!set.Set<u32.>.) Poly)
(declare-fun %Poly%vstd!set.Set<u32.>. (Poly) vstd!set.Set<u32.>.)
(declare-fun Poly%allocator_global%. (allocator_global%.) Poly)
(declare-fun %Poly%allocator_global%. (Poly) allocator_global%.)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
(declare-fun Poly%vstd!raw_ptr.Metadata. (vstd!raw_ptr.Metadata.) Poly)
(declare-fun %Poly%vstd!raw_ptr.Metadata. (Poly) vstd!raw_ptr.Metadata.)
(declare-fun Poly%vstd!raw_ptr.PtrData. (vstd!raw_ptr.PtrData.) Poly)
(declare-fun %Poly%vstd!raw_ptr.PtrData. (Poly) vstd!raw_ptr.PtrData.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(assert
 (forall ((x std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>.))
  (!
   (= x (%Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>. (Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>.
      x
   )))
   :pattern ((Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>.
     x
   ))
   :qid internal_std__collections__hash__set__HashSet<u32./std!hash.random.RandomState.>_box_axiom_definition
   :skolemid skolem_internal_std__collections__hash__set__HashSet<u32./std!hash.random.RandomState.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%std!collections.hash.set.HashSet. $ (UINT 32) $ TYPE%std!hash.random.RandomState.))
    (= x (Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>. (%Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>.
       x
   ))))
   :pattern ((has_type x (TYPE%std!collections.hash.set.HashSet. $ (UINT 32) $ TYPE%std!hash.random.RandomState.)))
   :qid internal_std__collections__hash__set__HashSet<u32./std!hash.random.RandomState.>_unbox_axiom_definition
   :skolemid skolem_internal_std__collections__hash__set__HashSet<u32./std!hash.random.RandomState.>_unbox_axiom_definition
)))
(assert
 (forall ((x std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>.))
  (!
   (has_type (Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>.
     x
    ) (TYPE%std!collections.hash.set.HashSet. $ (UINT 32) $ TYPE%std!hash.random.RandomState.)
   )
   :pattern ((has_type (Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>.
      x
     ) (TYPE%std!collections.hash.set.HashSet. $ (UINT 32) $ TYPE%std!hash.random.RandomState.)
   ))
   :qid internal_std__collections__hash__set__HashSet<u32./std!hash.random.RandomState.>_has_type_always_definition
   :skolemid skolem_internal_std__collections__hash__set__HashSet<u32./std!hash.random.RandomState.>_has_type_always_definition
)))
(assert
 (forall ((x std!hash.random.DefaultHasher.)) (!
   (= x (%Poly%std!hash.random.DefaultHasher. (Poly%std!hash.random.DefaultHasher. x)))
   :pattern ((Poly%std!hash.random.DefaultHasher. x))
   :qid internal_std__hash__random__DefaultHasher_box_axiom_definition
   :skolemid skolem_internal_std__hash__random__DefaultHasher_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%std!hash.random.DefaultHasher.)
    (= x (Poly%std!hash.random.DefaultHasher. (%Poly%std!hash.random.DefaultHasher. x)))
   )
   :pattern ((has_type x TYPE%std!hash.random.DefaultHasher.))
   :qid internal_std__hash__random__DefaultHasher_unbox_axiom_definition
   :skolemid skolem_internal_std__hash__random__DefaultHasher_unbox_axiom_definition
)))
(assert
 (forall ((x std!hash.random.DefaultHasher.)) (!
   (has_type (Poly%std!hash.random.DefaultHasher. x) TYPE%std!hash.random.DefaultHasher.)
   :pattern ((has_type (Poly%std!hash.random.DefaultHasher. x) TYPE%std!hash.random.DefaultHasher.))
   :qid internal_std__hash__random__DefaultHasher_has_type_always_definition
   :skolemid skolem_internal_std__hash__random__DefaultHasher_has_type_always_definition
)))
(assert
 (forall ((x std!hash.random.RandomState.)) (!
   (= x (%Poly%std!hash.random.RandomState. (Poly%std!hash.random.RandomState. x)))
   :pattern ((Poly%std!hash.random.RandomState. x))
   :qid internal_std__hash__random__RandomState_box_axiom_definition
   :skolemid skolem_internal_std__hash__random__RandomState_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%std!hash.random.RandomState.)
    (= x (Poly%std!hash.random.RandomState. (%Poly%std!hash.random.RandomState. x)))
   )
   :pattern ((has_type x TYPE%std!hash.random.RandomState.))
   :qid internal_std__hash__random__RandomState_unbox_axiom_definition
   :skolemid skolem_internal_std__hash__random__RandomState_unbox_axiom_definition
)))
(assert
 (forall ((x std!hash.random.RandomState.)) (!
   (has_type (Poly%std!hash.random.RandomState. x) TYPE%std!hash.random.RandomState.)
   :pattern ((has_type (Poly%std!hash.random.RandomState. x) TYPE%std!hash.random.RandomState.))
   :qid internal_std__hash__random__RandomState_has_type_always_definition
   :skolemid skolem_internal_std__hash__random__RandomState_has_type_always_definition
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
 (forall ((x vstd!set.Set<u32.>.)) (!
   (= x (%Poly%vstd!set.Set<u32.>. (Poly%vstd!set.Set<u32.>. x)))
   :pattern ((Poly%vstd!set.Set<u32.>. x))
   :qid internal_vstd__set__Set<u32.>_box_axiom_definition
   :skolemid skolem_internal_vstd__set__Set<u32.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!set.Set. $ (UINT 32)))
    (= x (Poly%vstd!set.Set<u32.>. (%Poly%vstd!set.Set<u32.>. x)))
   )
   :pattern ((has_type x (TYPE%vstd!set.Set. $ (UINT 32))))
   :qid internal_vstd__set__Set<u32.>_unbox_axiom_definition
   :skolemid skolem_internal_vstd__set__Set<u32.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!set.Set<u32.>.)) (!
   (has_type (Poly%vstd!set.Set<u32.>. x) (TYPE%vstd!set.Set. $ (UINT 32)))
   :pattern ((has_type (Poly%vstd!set.Set<u32.>. x) (TYPE%vstd!set.Set. $ (UINT 32))))
   :qid internal_vstd__set__Set<u32.>_has_type_always_definition
   :skolemid skolem_internal_vstd__set__Set<u32.>_has_type_always_definition
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
(declare-fun tr_bound%vstd!view.View. (Dcr Type) Bool)
(declare-fun tr_bound%builtin!Integer. (Dcr Type) Bool)
(declare-fun tr_bound%core!cmp.PartialEq. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%core!cmp.Eq. (Dcr Type) Bool)
(declare-fun tr_bound%core!hash.Hash. (Dcr Type) Bool)
(declare-fun tr_bound%core!borrow.Borrow. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%core!hash.Hasher. (Dcr Type) Bool)
(declare-fun tr_bound%core!hash.BuildHasher. (Dcr Type) Bool)
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
   :pattern ((tr_bound%builtin!Integer. Self%&. Self%&))
   :qid internal_builtin__Integer_trait_type_bounds_definition
   :skolemid skolem_internal_builtin__Integer_trait_type_bounds_definition
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
 (forall ((Self%&. Dcr) (Self%& Type) (Borrowed&. Dcr) (Borrowed& Type)) (!
   true
   :pattern ((tr_bound%core!borrow.Borrow. Self%&. Self%& Borrowed&. Borrowed&))
   :qid internal_core__borrow__Borrow_trait_type_bounds_definition
   :skolemid skolem_internal_core__borrow__Borrow_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%core!hash.Hasher. Self%&. Self%&))
   :qid internal_core__hash__Hasher_trait_type_bounds_definition
   :skolemid skolem_internal_core__hash__Hasher_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   (=>
    (tr_bound%core!hash.BuildHasher. Self%&. Self%&)
    (tr_bound%core!hash.Hasher. (proj%%core!hash.BuildHasher./Hasher Self%&. Self%&) (
      proj%core!hash.BuildHasher./Hasher Self%&. Self%&
   )))
   :pattern ((tr_bound%core!hash.BuildHasher. Self%&. Self%&))
   :qid internal_core__hash__BuildHasher_trait_type_bounds_definition
   :skolemid skolem_internal_core__hash__BuildHasher_trait_type_bounds_definition
)))

;; Associated-Type-Impls
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
 (= (proj%%vstd!view.View./V $ (UINT 8)) $)
)
(assert
 (= (proj%vstd!view.View./V $ (UINT 8)) (UINT 8))
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
 (= (proj%%vstd!view.View./V $ TYPE%std!hash.random.DefaultHasher.) $)
)
(assert
 (= (proj%vstd!view.View./V $ TYPE%std!hash.random.DefaultHasher.) (TYPE%vstd!seq.Seq.
   $ (TYPE%vstd!seq.Seq. $ (UINT 8))
)))
(assert
 (forall ((Key&. Dcr) (Key& Type) (S&. Dcr) (S& Type)) (!
   (= (proj%%vstd!view.View./V $ (TYPE%std!collections.hash.set.HashSet. Key&. Key& S&.
      S&
     )
    ) $
   )
   :pattern ((proj%%vstd!view.View./V $ (TYPE%std!collections.hash.set.HashSet. Key&. Key&
      S&. S&
   )))
   :qid internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((Key&. Dcr) (Key& Type) (S&. Dcr) (S& Type)) (!
   (= (proj%vstd!view.View./V $ (TYPE%std!collections.hash.set.HashSet. Key&. Key& S&.
      S&
     )
    ) (TYPE%vstd!set.Set. Key&. Key&)
   )
   :pattern ((proj%vstd!view.View./V $ (TYPE%std!collections.hash.set.HashSet. Key&. Key&
      S&. S&
   )))
   :qid internal_proj__vstd!view.View./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd!view.View./V_assoc_type_impl_false_definition
)))
(assert
 (= (proj%%core!hash.BuildHasher./Hasher $ TYPE%std!hash.random.RandomState.) $)
)
(assert
 (= (proj%core!hash.BuildHasher./Hasher $ TYPE%std!hash.random.RandomState.) TYPE%std!hash.random.DefaultHasher.)
)

;; Function-Decl vstd::view::View::view
(declare-fun vstd!view.View.view.? (Dcr Type Poly) Poly)
(declare-fun vstd!view.View.view%default%.? (Dcr Type Poly) Poly)

;; Function-Decl vstd::std_specs::hash::obeys_key_model
(declare-fun vstd!std_specs.hash.obeys_key_model.? (Dcr Type) Bool)

;; Function-Decl vstd::std_specs::hash::builds_valid_hashers
(declare-fun vstd!std_specs.hash.builds_valid_hashers.? (Dcr Type) Bool)

;; Function-Decl vstd::std_specs::hash::spec_hash_set_len
(declare-fun vstd!std_specs.hash.spec_hash_set_len.? (Dcr Type Dcr Type Poly) Int)

;; Function-Decl vstd::set::impl&%0::len
(declare-fun vstd!set.impl&%0.len.? (Dcr Type Poly) Int)

;; Function-Decl vstd::set::impl&%0::empty
(declare-fun vstd!set.impl&%0.empty.? (Dcr Type) Poly)

;; Function-Decl vstd::set::impl&%0::insert
(declare-fun vstd!set.impl&%0.insert.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::set::impl&%0::contains
(declare-fun vstd!set.impl&%0.contains.? (Dcr Type Poly Poly) Bool)

;; Function-Decl vstd::std_specs::hash::set_contains_borrowed_key
(declare-fun vstd!std_specs.hash.set_contains_borrowed_key.? (Dcr Type Dcr Type Poly
  Poly
 ) Bool
)

;; Function-Decl vstd::std_specs::hash::sets_borrowed_key_to_key
(declare-fun vstd!std_specs.hash.sets_borrowed_key_to_key.? (Dcr Type Dcr Type Poly
  Poly Poly
 ) Bool
)

;; Function-Decl vstd::std_specs::hash::sets_differ_by_borrowed_key
(declare-fun vstd!std_specs.hash.sets_differ_by_borrowed_key.? (Dcr Type Dcr Type Poly
  Poly Poly
 ) Bool
)

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

;; Function-Decl vstd::set::impl&%0::finite
(declare-fun vstd!set.impl&%0.finite.? (Dcr Type Poly) Bool)

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

;; Broadcast vstd::std_specs::hash::axiom_bool_obeys_hash_table_key_model
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.hash.axiom_bool_obeys_hash_table_key_model.)
  (vstd!std_specs.hash.obeys_key_model.? $ BOOL)
))

;; Broadcast vstd::std_specs::hash::axiom_u8_obeys_hash_table_key_model
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.hash.axiom_u8_obeys_hash_table_key_model.)
  (vstd!std_specs.hash.obeys_key_model.? $ (UINT 8))
))

;; Broadcast vstd::std_specs::hash::axiom_u32_obeys_hash_table_key_model
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.hash.axiom_u32_obeys_hash_table_key_model.)
  (vstd!std_specs.hash.obeys_key_model.? $ (UINT 32))
))

;; Broadcast vstd::std_specs::hash::axiom_box_bool_obeys_hash_table_key_model
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.hash.axiom_box_bool_obeys_hash_table_key_model.)
  (vstd!std_specs.hash.obeys_key_model.? (BOX $ ALLOCATOR_GLOBAL $) BOOL)
))

;; Broadcast vstd::std_specs::hash::axiom_box_integer_type_obeys_hash_table_key_model
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.hash.axiom_box_integer_type_obeys_hash_table_key_model.)
  (forall ((Key&. Dcr) (Key& Type)) (!
    (=>
     (and
      (tr_bound%builtin!Integer. Key&. Key&)
      (vstd!std_specs.hash.obeys_key_model.? Key&. Key&)
     )
     (vstd!std_specs.hash.obeys_key_model.? (BOX $ ALLOCATOR_GLOBAL Key&.) Key&)
    )
    :pattern ((vstd!std_specs.hash.obeys_key_model.? (BOX $ ALLOCATOR_GLOBAL Key&.) Key&))
    :qid user_vstd__std_specs__hash__axiom_box_integer_type_obeys_hash_table_key_model_4
    :skolemid skolem_user_vstd__std_specs__hash__axiom_box_integer_type_obeys_hash_table_key_model_4
))))

;; Broadcast vstd::std_specs::hash::axiom_random_state_builds_valid_hashers
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.hash.axiom_random_state_builds_valid_hashers.)
  (vstd!std_specs.hash.builds_valid_hashers.? $ TYPE%std!hash.random.RandomState.)
))

;; Function-Axioms vstd::std_specs::hash::spec_hash_set_len
(assert
 (forall ((Key&. Dcr) (Key& Type) (S&. Dcr) (S& Type) (m! Poly)) (!
   (=>
    (has_type m! (TYPE%std!collections.hash.set.HashSet. Key&. Key& S&. S&))
    (uInv SZ (vstd!std_specs.hash.spec_hash_set_len.? Key&. Key& S&. S& m!))
   )
   :pattern ((vstd!std_specs.hash.spec_hash_set_len.? Key&. Key& S&. S& m!))
   :qid internal_vstd!std_specs.hash.spec_hash_set_len.?_pre_post_definition
   :skolemid skolem_internal_vstd!std_specs.hash.spec_hash_set_len.?_pre_post_definition
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

;; Broadcast vstd::std_specs::hash::axiom_spec_hash_set_len
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.hash.axiom_spec_hash_set_len.)
  (forall ((Key&. Dcr) (Key& Type) (S&. Dcr) (S& Type) (m! Poly)) (!
    (=>
     (has_type m! (TYPE%std!collections.hash.set.HashSet. Key&. Key& S&. S&))
     (=>
      (and
       (vstd!std_specs.hash.obeys_key_model.? Key&. Key&)
       (vstd!std_specs.hash.builds_valid_hashers.? S&. S&)
      )
      (= (vstd!std_specs.hash.spec_hash_set_len.? Key&. Key& S&. S& m!) (vstd!set.impl&%0.len.?
        Key&. Key& (vstd!view.View.view.? $ (TYPE%std!collections.hash.set.HashSet. Key&. Key&
          S&. S&
         ) m!
    )))))
    :pattern ((vstd!std_specs.hash.spec_hash_set_len.? Key&. Key& S&. S& m!))
    :qid user_vstd__std_specs__hash__axiom_spec_hash_set_len_6
    :skolemid skolem_user_vstd__std_specs__hash__axiom_spec_hash_set_len_6
))))

;; Function-Specs std::collections::hash::set::impl&%1::len
(declare-fun ens%std!collections.hash.set.impl&%1.len. (Dcr Type Dcr Type Poly Int)
 Bool
)
(assert
 (forall ((Key&. Dcr) (Key& Type) (S&. Dcr) (S& Type) (m! Poly) (len! Int)) (!
   (= (ens%std!collections.hash.set.impl&%1.len. Key&. Key& S&. S& m! len!) (and
     (uInv SZ len!)
     (= len! (vstd!std_specs.hash.spec_hash_set_len.? Key&. Key& S&. S& m!))
   ))
   :pattern ((ens%std!collections.hash.set.impl&%1.len. Key&. Key& S&. S& m! len!))
   :qid internal_ens__std!collections.hash.set.impl&__1.len._definition
   :skolemid skolem_internal_ens__std!collections.hash.set.impl&__1.len._definition
)))

;; Function-Axioms vstd::set::impl&%0::empty
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (has_type (vstd!set.impl&%0.empty.? A&. A&) (TYPE%vstd!set.Set. A&. A&))
   :pattern ((vstd!set.impl&%0.empty.? A&. A&))
   :qid internal_vstd!set.impl&__0.empty.?_pre_post_definition
   :skolemid skolem_internal_vstd!set.impl&__0.empty.?_pre_post_definition
)))

;; Function-Specs std::collections::hash::set::impl&%0::new
(declare-fun ens%std!collections.hash.set.impl&%0.new. (Dcr Type Poly) Bool)
(assert
 (forall ((Key&. Dcr) (Key& Type) (m! Poly)) (!
   (= (ens%std!collections.hash.set.impl&%0.new. Key&. Key& m!) (and
     (has_type m! (TYPE%std!collections.hash.set.HashSet. Key&. Key& $ TYPE%std!hash.random.RandomState.))
     (= (vstd!view.View.view.? $ (TYPE%std!collections.hash.set.HashSet. Key&. Key& $ TYPE%std!hash.random.RandomState.)
       m!
      ) (vstd!set.impl&%0.empty.? Key&. Key&)
   )))
   :pattern ((ens%std!collections.hash.set.impl&%0.new. Key&. Key& m!))
   :qid internal_ens__std!collections.hash.set.impl&__0.new._definition
   :skolemid skolem_internal_ens__std!collections.hash.set.impl&__0.new._definition
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

;; Function-Specs std::collections::hash::set::impl&%2::insert
(declare-fun ens%std!collections.hash.set.impl&%2.insert. (Dcr Type Dcr Type Poly Poly
  Poly Bool
 ) Bool
)
(assert
 (forall ((Key&. Dcr) (Key& Type) (S&. Dcr) (S& Type) (pre%m! Poly) (m! Poly) (k! Poly)
   (result! Bool)
  ) (!
   (= (ens%std!collections.hash.set.impl&%2.insert. Key&. Key& S&. S& pre%m! m! k! result!)
    (and
     (has_type m! (TYPE%std!collections.hash.set.HashSet. Key&. Key& S&. S&))
     (=>
      (and
       (vstd!std_specs.hash.obeys_key_model.? Key&. Key&)
       (vstd!std_specs.hash.builds_valid_hashers.? S&. S&)
      )
      (and
       (= (vstd!view.View.view.? $ (TYPE%std!collections.hash.set.HashSet. Key&. Key& S&. S&)
         m!
        ) (vstd!set.impl&%0.insert.? Key&. Key& (vstd!view.View.view.? $ (TYPE%std!collections.hash.set.HashSet.
           Key&. Key& S&. S&
          ) pre%m!
         ) k!
       ))
       (= result! (not (vstd!set.impl&%0.contains.? Key&. Key& (vstd!view.View.view.? $ (TYPE%std!collections.hash.set.HashSet.
            Key&. Key& S&. S&
           ) pre%m!
          ) k!
   )))))))
   :pattern ((ens%std!collections.hash.set.impl&%2.insert. Key&. Key& S&. S& pre%m! m!
     k! result!
   ))
   :qid internal_ens__std!collections.hash.set.impl&__2.insert._definition
   :skolemid skolem_internal_ens__std!collections.hash.set.impl&__2.insert._definition
)))

;; Broadcast vstd::std_specs::hash::axiom_set_contains_deref_key
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.hash.axiom_set_contains_deref_key.)
  (forall ((Q&. Dcr) (Q& Type) (m! Poly) (k! Poly)) (!
    (=>
     (and
      (has_type m! (TYPE%vstd!set.Set. Q&. Q&))
      (has_type k! Q&)
     )
     (= (vstd!std_specs.hash.set_contains_borrowed_key.? Q&. Q& Q&. Q& m! k!) (vstd!set.impl&%0.contains.?
       Q&. Q& m! k!
    )))
    :pattern ((vstd!std_specs.hash.set_contains_borrowed_key.? Q&. Q& Q&. Q& m! k!))
    :qid user_vstd__std_specs__hash__axiom_set_contains_deref_key_7
    :skolemid skolem_user_vstd__std_specs__hash__axiom_set_contains_deref_key_7
))))

;; Broadcast vstd::std_specs::hash::axiom_set_contains_box
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.hash.axiom_set_contains_box.)
  (forall ((Q&. Dcr) (Q& Type) (m! Poly) (k! Poly)) (!
    (=>
     (and
      (has_type m! (TYPE%vstd!set.Set. (BOX $ ALLOCATOR_GLOBAL Q&.) Q&))
      (has_type k! Q&)
     )
     (= (vstd!std_specs.hash.set_contains_borrowed_key.? (BOX $ ALLOCATOR_GLOBAL Q&.) Q&
       Q&. Q& m! k!
      ) (vstd!set.impl&%0.contains.? (BOX $ ALLOCATOR_GLOBAL Q&.) Q& m! k!)
    ))
    :pattern ((vstd!std_specs.hash.set_contains_borrowed_key.? (BOX $ ALLOCATOR_GLOBAL Q&.)
      Q& Q&. Q& m! k!
    ))
    :qid user_vstd__std_specs__hash__axiom_set_contains_box_8
    :skolemid skolem_user_vstd__std_specs__hash__axiom_set_contains_box_8
))))

;; Function-Specs std::collections::hash::set::impl&%2::contains
(declare-fun ens%std!collections.hash.set.impl&%2.contains. (Dcr Type Dcr Type Dcr
  Type Poly Poly Bool
 ) Bool
)
(assert
 (forall ((Key&. Dcr) (Key& Type) (S&. Dcr) (S& Type) (Q&. Dcr) (Q& Type) (m! Poly)
   (k! Poly) (result! Bool)
  ) (!
   (= (ens%std!collections.hash.set.impl&%2.contains. Key&. Key& S&. S& Q&. Q& m! k! result!)
    (=>
     (and
      (vstd!std_specs.hash.obeys_key_model.? Key&. Key&)
      (vstd!std_specs.hash.builds_valid_hashers.? S&. S&)
     )
     (= result! (vstd!std_specs.hash.set_contains_borrowed_key.? Key&. Key& Q&. Q& (vstd!view.View.view.?
        $ (TYPE%std!collections.hash.set.HashSet. Key&. Key& S&. S&) m!
       ) k!
   ))))
   :pattern ((ens%std!collections.hash.set.impl&%2.contains. Key&. Key& S&. S& Q&. Q&
     m! k! result!
   ))
   :qid internal_ens__std!collections.hash.set.impl&__2.contains._definition
   :skolemid skolem_internal_ens__std!collections.hash.set.impl&__2.contains._definition
)))

;; Broadcast vstd::std_specs::hash::axiom_set_deref_key_to_value
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.hash.axiom_set_deref_key_to_value.)
  (forall ((Q&. Dcr) (Q& Type) (m! Poly) (k! Poly) (v! Poly)) (!
    (=>
     (and
      (has_type m! (TYPE%vstd!set.Set. Q&. Q&))
      (has_type k! Q&)
      (has_type v! Q&)
     )
     (= (vstd!std_specs.hash.sets_borrowed_key_to_key.? Q&. Q& Q&. Q& m! k! v!) (and
       (vstd!set.impl&%0.contains.? Q&. Q& m! k!)
       (= k! v!)
    )))
    :pattern ((vstd!std_specs.hash.sets_borrowed_key_to_key.? Q&. Q& Q&. Q& m! k! v!))
    :qid user_vstd__std_specs__hash__axiom_set_deref_key_to_value_9
    :skolemid skolem_user_vstd__std_specs__hash__axiom_set_deref_key_to_value_9
))))

;; Broadcast vstd::std_specs::hash::axiom_set_box_key_to_value
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.hash.axiom_set_box_key_to_value.)
  (forall ((Q&. Dcr) (Q& Type) (m! Poly) (q! Poly) (v! Poly)) (!
    (=>
     (and
      (has_type m! (TYPE%vstd!set.Set. (BOX $ ALLOCATOR_GLOBAL Q&.) Q&))
      (has_type q! Q&)
      (has_type v! Q&)
     )
     (= (vstd!std_specs.hash.sets_borrowed_key_to_key.? (BOX $ ALLOCATOR_GLOBAL Q&.) Q&
       Q&. Q& m! q! v!
      ) (and
       (vstd!set.impl&%0.contains.? (BOX $ ALLOCATOR_GLOBAL Q&.) Q& m! v!)
       (= q! v!)
    )))
    :pattern ((vstd!std_specs.hash.sets_borrowed_key_to_key.? (BOX $ ALLOCATOR_GLOBAL Q&.)
      Q& Q&. Q& m! q! v!
    ))
    :qid user_vstd__std_specs__hash__axiom_set_box_key_to_value_10
    :skolemid skolem_user_vstd__std_specs__hash__axiom_set_box_key_to_value_10
))))

;; Function-Specs std::collections::hash::set::impl&%2::get
(declare-fun ens%std!collections.hash.set.impl&%2.get. (Dcr Type Dcr Type Dcr Type
  Poly Poly core!option.Option.
 ) Bool
)
(assert
 (forall ((Key&. Dcr) (Key& Type) (S&. Dcr) (S& Type) (Q&. Dcr) (Q& Type) (m! Poly)
   (k! Poly) (result! core!option.Option.)
  ) (!
   (= (ens%std!collections.hash.set.impl&%2.get. Key&. Key& S&. S& Q&. Q& m! k! result!)
    (and
     (has_type (Poly%core!option.Option. result!) (TYPE%core!option.Option. (REF Key&.)
       Key&
     ))
     (=>
      (and
       (vstd!std_specs.hash.obeys_key_model.? Key&. Key&)
       (vstd!std_specs.hash.builds_valid_hashers.? S&. S&)
      )
      (ite
       (is-core!option.Option./Some result!)
       (let
        ((v$ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
             result!
        )))))
        (vstd!std_specs.hash.sets_borrowed_key_to_key.? Key&. Key& Q&. Q& (vstd!view.View.view.?
          $ (TYPE%std!collections.hash.set.HashSet. Key&. Key& S&. S&) m!
         ) k! v$
       ))
       (not (vstd!std_specs.hash.set_contains_borrowed_key.? Key&. Key& Q&. Q& (vstd!view.View.view.?
          $ (TYPE%std!collections.hash.set.HashSet. Key&. Key& S&. S&) m!
         ) k!
   ))))))
   :pattern ((ens%std!collections.hash.set.impl&%2.get. Key&. Key& S&. S& Q&. Q& m! k!
     result!
   ))
   :qid internal_ens__std!collections.hash.set.impl&__2.get._definition
   :skolemid skolem_internal_ens__std!collections.hash.set.impl&__2.get._definition
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

;; Broadcast vstd::std_specs::hash::axiom_set_deref_key_removed
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.hash.axiom_set_deref_key_removed.)
  (forall ((Q&. Dcr) (Q& Type) (old_m! Poly) (new_m! Poly) (k! Poly)) (!
    (=>
     (and
      (has_type old_m! (TYPE%vstd!set.Set. Q&. Q&))
      (has_type new_m! (TYPE%vstd!set.Set. Q&. Q&))
      (has_type k! Q&)
     )
     (= (vstd!std_specs.hash.sets_differ_by_borrowed_key.? Q&. Q& Q&. Q& old_m! new_m! k!)
      (= new_m! (vstd!set.impl&%0.remove.? Q&. Q& old_m! k!))
    ))
    :pattern ((vstd!std_specs.hash.sets_differ_by_borrowed_key.? Q&. Q& Q&. Q& old_m! new_m!
      k!
    ))
    :qid user_vstd__std_specs__hash__axiom_set_deref_key_removed_11
    :skolemid skolem_user_vstd__std_specs__hash__axiom_set_deref_key_removed_11
))))

;; Broadcast vstd::std_specs::hash::axiom_set_box_key_removed
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.hash.axiom_set_box_key_removed.)
  (forall ((Q&. Dcr) (Q& Type) (old_m! Poly) (new_m! Poly) (q! Poly)) (!
    (=>
     (and
      (has_type old_m! (TYPE%vstd!set.Set. (BOX $ ALLOCATOR_GLOBAL Q&.) Q&))
      (has_type new_m! (TYPE%vstd!set.Set. (BOX $ ALLOCATOR_GLOBAL Q&.) Q&))
      (has_type q! Q&)
     )
     (= (vstd!std_specs.hash.sets_differ_by_borrowed_key.? (BOX $ ALLOCATOR_GLOBAL Q&.)
       Q& Q&. Q& old_m! new_m! q!
      ) (= new_m! (vstd!set.impl&%0.remove.? (BOX $ ALLOCATOR_GLOBAL Q&.) Q& old_m! q!))
    ))
    :pattern ((vstd!std_specs.hash.sets_differ_by_borrowed_key.? (BOX $ ALLOCATOR_GLOBAL
       Q&.
      ) Q& Q&. Q& old_m! new_m! q!
    ))
    :qid user_vstd__std_specs__hash__axiom_set_box_key_removed_12
    :skolemid skolem_user_vstd__std_specs__hash__axiom_set_box_key_removed_12
))))

;; Function-Specs std::collections::hash::set::impl&%2::remove
(declare-fun ens%std!collections.hash.set.impl&%2.remove. (Dcr Type Dcr Type Dcr Type
  Poly Poly Poly Bool
 ) Bool
)
(assert
 (forall ((Key&. Dcr) (Key& Type) (S&. Dcr) (S& Type) (Q&. Dcr) (Q& Type) (pre%m! Poly)
   (m! Poly) (k! Poly) (result! Bool)
  ) (!
   (= (ens%std!collections.hash.set.impl&%2.remove. Key&. Key& S&. S& Q&. Q& pre%m! m!
     k! result!
    ) (and
     (has_type m! (TYPE%std!collections.hash.set.HashSet. Key&. Key& S&. S&))
     (=>
      (and
       (vstd!std_specs.hash.obeys_key_model.? Key&. Key&)
       (vstd!std_specs.hash.builds_valid_hashers.? S&. S&)
      )
      (and
       (vstd!std_specs.hash.sets_differ_by_borrowed_key.? Key&. Key& Q&. Q& (vstd!view.View.view.?
         $ (TYPE%std!collections.hash.set.HashSet. Key&. Key& S&. S&) pre%m!
        ) (vstd!view.View.view.? $ (TYPE%std!collections.hash.set.HashSet. Key&. Key& S&. S&)
         m!
        ) k!
       )
       (= result! (vstd!std_specs.hash.set_contains_borrowed_key.? Key&. Key& Q&. Q& (vstd!view.View.view.?
          $ (TYPE%std!collections.hash.set.HashSet. Key&. Key& S&. S&) pre%m!
         ) k!
   ))))))
   :pattern ((ens%std!collections.hash.set.impl&%2.remove. Key&. Key& S&. S& Q&. Q& pre%m!
     m! k! result!
   ))
   :qid internal_ens__std!collections.hash.set.impl&__2.remove._definition
   :skolemid skolem_internal_ens__std!collections.hash.set.impl&__2.remove._definition
)))

;; Function-Specs std::collections::hash::set::impl&%1::clear
(declare-fun ens%std!collections.hash.set.impl&%1.clear. (Dcr Type Dcr Type Poly Poly)
 Bool
)
(assert
 (forall ((Key&. Dcr) (Key& Type) (S&. Dcr) (S& Type) (pre%m! Poly) (m! Poly)) (!
   (= (ens%std!collections.hash.set.impl&%1.clear. Key&. Key& S&. S& pre%m! m!) (and
     (has_type m! (TYPE%std!collections.hash.set.HashSet. Key&. Key& S&. S&))
     (= (vstd!view.View.view.? $ (TYPE%std!collections.hash.set.HashSet. Key&. Key& S&. S&)
       m!
      ) (vstd!set.impl&%0.empty.? Key&. Key&)
   )))
   :pattern ((ens%std!collections.hash.set.impl&%1.clear. Key&. Key& S&. S& pre%m! m!))
   :qid internal_ens__std!collections.hash.set.impl&__1.clear._definition
   :skolemid skolem_internal_ens__std!collections.hash.set.impl&__1.clear._definition
)))

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
    :qid user_vstd__raw_ptr__ptrs_mut_eq_13
    :skolemid skolem_user_vstd__raw_ptr__ptrs_mut_eq_13
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
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
   (= (req%vstd!seq.Seq.index. A&. A& self! i!) (=>
     %%global_location_label%%0
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
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
   (= (req%vstd!seq.impl&%0.spec_index. A&. A& self! i!) (=>
     %%global_location_label%%1
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
    :qid user_vstd__seq__axiom_seq_index_decreases_14
    :skolemid skolem_user_vstd__seq__axiom_seq_index_decreases_14
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
         :qid user_vstd__seq__axiom_seq_ext_equal_15
         :skolemid skolem_user_vstd__seq__axiom_seq_ext_equal_15
    )))))
    :pattern ((ext_eq false (TYPE%vstd!seq.Seq. A&. A&) s1! s2!))
    :qid user_vstd__seq__axiom_seq_ext_equal_16
    :skolemid skolem_user_vstd__seq__axiom_seq_ext_equal_16
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
         :qid user_vstd__seq__axiom_seq_ext_equal_deep_17
         :skolemid skolem_user_vstd__seq__axiom_seq_ext_equal_deep_17
    )))))
    :pattern ((ext_eq true (TYPE%vstd!seq.Seq. A&. A&) s1! s2!))
    :qid user_vstd__seq__axiom_seq_ext_equal_deep_18
    :skolemid skolem_user_vstd__seq__axiom_seq_ext_equal_deep_18
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
    :qid user_vstd__set__axiom_set_empty_19
    :skolemid skolem_user_vstd__set__axiom_set_empty_19
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
    :qid user_vstd__set__axiom_set_insert_same_20
    :skolemid skolem_user_vstd__set__axiom_set_insert_same_20
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
    :qid user_vstd__set__axiom_set_insert_different_21
    :skolemid skolem_user_vstd__set__axiom_set_insert_different_21
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
    :qid user_vstd__set__axiom_set_remove_same_22
    :skolemid skolem_user_vstd__set__axiom_set_remove_same_22
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
    :qid user_vstd__set__axiom_set_remove_insert_23
    :skolemid skolem_user_vstd__set__axiom_set_remove_insert_23
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
    :qid user_vstd__set__axiom_set_remove_different_24
    :skolemid skolem_user_vstd__set__axiom_set_remove_different_24
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
        :qid user_vstd__set__axiom_set_ext_equal_25
        :skolemid skolem_user_vstd__set__axiom_set_ext_equal_25
    ))))
    :pattern ((ext_eq false (TYPE%vstd!set.Set. A&. A&) s1! s2!))
    :qid user_vstd__set__axiom_set_ext_equal_26
    :skolemid skolem_user_vstd__set__axiom_set_ext_equal_26
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
    :qid user_vstd__set__axiom_set_ext_equal_deep_27
    :skolemid skolem_user_vstd__set__axiom_set_ext_equal_deep_27
))))

;; Broadcast vstd::set::axiom_set_empty_finite
(assert
 (=>
  (fuel_bool fuel%vstd!set.axiom_set_empty_finite.)
  (forall ((A&. Dcr) (A& Type)) (!
    (vstd!set.impl&%0.finite.? A&. A& (vstd!set.impl&%0.empty.? A&. A&))
    :pattern ((vstd!set.impl&%0.finite.? A&. A& (vstd!set.impl&%0.empty.? A&. A&)))
    :qid user_vstd__set__axiom_set_empty_finite_28
    :skolemid skolem_user_vstd__set__axiom_set_empty_finite_28
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
    :qid user_vstd__set__axiom_set_insert_finite_29
    :skolemid skolem_user_vstd__set__axiom_set_insert_finite_29
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
    :qid user_vstd__set__axiom_set_remove_finite_30
    :skolemid skolem_user_vstd__set__axiom_set_remove_finite_30
))))

;; Broadcast vstd::set::axiom_set_empty_len
(assert
 (=>
  (fuel_bool fuel%vstd!set.axiom_set_empty_len.)
  (forall ((A&. Dcr) (A& Type)) (!
    (= (vstd!set.impl&%0.len.? A&. A& (vstd!set.impl&%0.empty.? A&. A&)) 0)
    :pattern ((vstd!set.impl&%0.len.? A&. A& (vstd!set.impl&%0.empty.? A&. A&)))
    :qid user_vstd__set__axiom_set_empty_len_31
    :skolemid skolem_user_vstd__set__axiom_set_empty_len_31
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
    :qid user_vstd__set__axiom_set_insert_len_32
    :skolemid skolem_user_vstd__set__axiom_set_insert_len_32
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
    :qid user_vstd__set__axiom_set_remove_len_33
    :skolemid skolem_user_vstd__set__axiom_set_remove_len_33
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
    :qid user_vstd__set__axiom_set_contains_len_34
    :skolemid skolem_user_vstd__set__axiom_set_contains_len_34
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
 (tr_bound%vstd!view.View. $ (UINT 8))
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
 (tr_bound%vstd!view.View. $ TYPE%std!hash.random.DefaultHasher.)
)

;; Trait-Impl-Axiom
(assert
 (forall ((Key&. Dcr) (Key& Type) (S&. Dcr) (S& Type)) (!
   (tr_bound%vstd!view.View. $ (TYPE%std!collections.hash.set.HashSet. Key&. Key& S&.
     S&
   ))
   :pattern ((tr_bound%vstd!view.View. $ (TYPE%std!collections.hash.set.HashSet. Key&.
      Key& S&. S&
   )))
   :qid internal_vstd__std_specs__hash__impl&__4_trait_impl_definition
   :skolemid skolem_internal_vstd__std_specs__hash__impl&__4_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (S&. Dcr) (S& Type)) (!
   (=>
    (and
     (tr_bound%core!cmp.Eq. T&. T&)
     (tr_bound%core!hash.Hash. T&. T&)
     (tr_bound%core!hash.BuildHasher. S&. S&)
    )
    (tr_bound%core!cmp.PartialEq. $ (TYPE%std!collections.hash.set.HashSet. T&. T& S&.
      S&
     ) $ (TYPE%std!collections.hash.set.HashSet. T&. T& S&. S&)
   ))
   :pattern ((tr_bound%core!cmp.PartialEq. $ (TYPE%std!collections.hash.set.HashSet. T&.
      T& S&. S&
     ) $ (TYPE%std!collections.hash.set.HashSet. T&. T& S&. S&)
   ))
   :qid internal_std__collections__hash__set__impl&__4_trait_impl_definition
   :skolemid skolem_internal_std__collections__hash__set__impl&__4_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (S&. Dcr) (S& Type)) (!
   (=>
    (and
     (tr_bound%core!cmp.Eq. T&. T&)
     (tr_bound%core!hash.Hash. T&. T&)
     (tr_bound%core!hash.BuildHasher. S&. S&)
    )
    (tr_bound%core!cmp.Eq. $ (TYPE%std!collections.hash.set.HashSet. T&. T& S&. S&))
   )
   :pattern ((tr_bound%core!cmp.Eq. $ (TYPE%std!collections.hash.set.HashSet. T&. T& S&.
      S&
   )))
   :qid internal_std__collections__hash__set__impl&__5_trait_impl_definition
   :skolemid skolem_internal_std__collections__hash__set__impl&__5_trait_impl_definition
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
 (tr_bound%core!cmp.PartialEq. $ (UINT 8) $ (UINT 8))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.Eq. $ (UINT 8))
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
 (tr_bound%core!hash.Hasher. $ TYPE%std!hash.random.DefaultHasher.)
)

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!borrow.Borrow. T&. T& T&. T&)
   :pattern ((tr_bound%core!borrow.Borrow. T&. T& T&. T&))
   :qid internal_core__borrow__impl&__0_trait_impl_definition
   :skolemid skolem_internal_core__borrow__impl&__0_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!borrow.Borrow. (REF T&.) T& T&. T&)
   :pattern ((tr_bound%core!borrow.Borrow. (REF T&.) T& T&. T&))
   :qid internal_core__borrow__impl&__2_trait_impl_definition
   :skolemid skolem_internal_core__borrow__impl&__2_trait_impl_definition
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
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!hash.Hash. (CONST_PTR $) (PTR T&. T&))
   :pattern ((tr_bound%core!hash.Hash. (CONST_PTR $) (PTR T&. T&)))
   :qid internal_core__hash__impls__impl&__7_trait_impl_definition
   :skolemid skolem_internal_core__hash__impls__impl&__7_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!hash.Hash. $ (UINT 8))
)

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
 (tr_bound%core!hash.BuildHasher. $ TYPE%std!hash.random.RandomState.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%builtin!Integer. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%builtin!Integer. $ (UINT 8))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%builtin!Integer. $ (UINT 32))
)

;; Function-Def test_crate::test
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/hash-94588ed97bed1cec-test_hash_set/test.rs:17:1: 17:10 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Bool)
 (declare-const v$1@ Int)
 (declare-const tmp%6 Bool)
 (declare-const tmp%7 Bool)
 (declare-const tmp%8 Bool)
 (declare-const m@0 std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>.)
 (declare-const res@ Bool)
 (declare-const res$1@ Bool)
 (declare-const b@ Bool)
 (declare-const n@ Int)
 (declare-const v@ core!option.Option.)
 (declare-const res$2@ Bool)
 (declare-const res$3@ Bool)
 (declare-const b$1@ Bool)
 (assert
  fuel_defaults
 )
 (declare-const m@1 std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>.)
 (declare-const m@2 std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>.)
 (declare-const m@3 std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>.)
 (declare-const m@4 std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>.)
 (declare-const m@5 std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>.)
 (declare-const m@6 std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>.)
 (declare-const %%switch_label%%0 Bool)
 ;; assertion failed
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
 (assert
  (not (=>
    (fuel_bool fuel%vstd!std_specs.hash.group_hash_axioms.)
    (=>
     (ens%std!collections.hash.set.impl&%0.new. $ (UINT 32) tmp%1)
     (=>
      (= m@0 (%Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>.
        tmp%1
      ))
      (=>
       (= tmp%2 (ext_eq false (TYPE%vstd!set.Set. $ (UINT 32)) (vstd!view.View.view.? $ (TYPE%std!collections.hash.set.HashSet.
           $ (UINT 32) $ TYPE%std!hash.random.RandomState.
          ) (Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>. m@0)
         ) (vstd!set.impl&%0.empty.? $ (UINT 32))
       ))
       (and
        (=>
         %%location_label%%0
         tmp%2
        )
        (=>
         tmp%2
         (=>
          (ens%std!collections.hash.set.impl&%2.insert. $ (UINT 32) $ TYPE%std!hash.random.RandomState.
           (Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>. m@0) (
            Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>. m@1
           ) (I 3) res@
          )
          (and
           (=>
            %%location_label%%1
            res@
           )
           (=>
            res@
            (=>
             (ens%std!collections.hash.set.impl&%2.insert. $ (UINT 32) $ TYPE%std!hash.random.RandomState.
              (Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>. m@1) (
               Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>. m@2
              ) (I 6) tmp%3
             )
             (=>
              (ens%std!collections.hash.set.impl&%2.insert. $ (UINT 32) $ TYPE%std!hash.random.RandomState.
               (Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>. m@2) (
                Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>. m@3
               ) (I 3) res$1@
              )
              (and
               (=>
                %%location_label%%2
                (not res$1@)
               )
               (=>
                (not res$1@)
                (=>
                 (ens%std!collections.hash.set.impl&%2.contains. $ (UINT 32) $ TYPE%std!hash.random.RandomState.
                  $ (UINT 32) (Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>.
                   m@3
                  ) (I 3) b@
                 )
                 (and
                  (=>
                   %%location_label%%3
                   b@
                  )
                  (=>
                   b@
                   (=>
                    (ens%std!collections.hash.set.impl&%1.len. $ (UINT 32) $ TYPE%std!hash.random.RandomState.
                     (Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>. m@3) n@
                    )
                    (=>
                     (= tmp%4 (= n@ 2))
                     (and
                      (=>
                       %%location_label%%4
                       tmp%4
                      )
                      (=>
                       tmp%4
                       (=>
                        (ens%std!collections.hash.set.impl&%2.get. $ (UINT 32) $ TYPE%std!hash.random.RandomState.
                         $ (UINT 32) (Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>.
                          m@3
                         ) (I 6) v@
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
                             (= tmp%5 (= v$1@ 6))
                             (and
                              (=>
                               %%location_label%%5
                               tmp%5
                              )
                              (=>
                               tmp%5
                               %%switch_label%%0
                          )))))
                          (=>
                           (not (is-core!option.Option./Some v@))
                           (=>
                            %%location_label%%6
                            false
                         )))
                         (and
                          (not %%switch_label%%0)
                          (=>
                           (ens%std!collections.hash.set.impl&%2.remove. $ (UINT 32) $ TYPE%std!hash.random.RandomState.
                            $ (UINT 32) (Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>.
                             m@3
                            ) (Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>. m@4)
                            (I 6) res$2@
                           )
                           (and
                            (=>
                             %%location_label%%7
                             res$2@
                            )
                            (=>
                             res$2@
                             (=>
                              (ens%std!collections.hash.set.impl&%2.remove. $ (UINT 32) $ TYPE%std!hash.random.RandomState.
                               $ (UINT 32) (Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>.
                                m@4
                               ) (Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>. m@5)
                               (I 6) res$3@
                              )
                              (and
                               (=>
                                %%location_label%%8
                                (not res$3@)
                               )
                               (=>
                                (not res$3@)
                                (=>
                                 (= tmp%6 (not (vstd!set.impl&%0.contains.? $ (UINT 32) (vstd!view.View.view.? $ (TYPE%std!collections.hash.set.HashSet.
                                      $ (UINT 32) $ TYPE%std!hash.random.RandomState.
                                     ) (Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>. m@5)
                                    ) (I 6)
                                 )))
                                 (and
                                  (=>
                                   %%location_label%%9
                                   tmp%6
                                  )
                                  (=>
                                   tmp%6
                                   (=>
                                    (= tmp%7 (vstd!set.impl&%0.contains.? $ (UINT 32) (vstd!view.View.view.? $ (TYPE%std!collections.hash.set.HashSet.
                                        $ (UINT 32) $ TYPE%std!hash.random.RandomState.
                                       ) (Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>. m@5)
                                      ) (I 3)
                                    ))
                                    (and
                                     (=>
                                      %%location_label%%10
                                      tmp%7
                                     )
                                     (=>
                                      tmp%7
                                      (=>
                                       (ens%std!collections.hash.set.impl&%1.clear. $ (UINT 32) $ TYPE%std!hash.random.RandomState.
                                        (Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>. m@5) (
                                         Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>. m@6
                                       ))
                                       (=>
                                        (= tmp%8 (not (vstd!set.impl&%0.contains.? $ (UINT 32) (vstd!view.View.view.? $ (TYPE%std!collections.hash.set.HashSet.
                                             $ (UINT 32) $ TYPE%std!hash.random.RandomState.
                                            ) (Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>. m@6)
                                           ) (I 3)
                                        )))
                                        (and
                                         (=>
                                          %%location_label%%11
                                          tmp%8
                                         )
                                         (=>
                                          tmp%8
                                          (=>
                                           (ens%std!collections.hash.set.impl&%2.contains. $ (UINT 32) $ TYPE%std!hash.random.RandomState.
                                            $ (UINT 32) (Poly%std!collections.hash.set.HashSet<u32./std!hash.random.RandomState.>.
                                             m@6
                                            ) (I 3) b$1@
                                           )
                                           (=>
                                            %%location_label%%12
                                            (not b$1@)
 )))))))))))))))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
