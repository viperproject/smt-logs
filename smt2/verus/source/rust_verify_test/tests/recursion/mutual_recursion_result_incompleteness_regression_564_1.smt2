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
(declare-const fuel%vstd!seq.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_index_decreases. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_empty. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_push_len. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_push_index_same. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_push_index_different. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_ext_equal. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_ext_equal_deep. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_add_len. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_add_index1. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_add_index2. FuelId)
(declare-const fuel%test_crate!NUM_LAYERS. FuelId)
(declare-const fuel%test_crate!NUM_ENTRIES. FuelId)
(declare-const fuel%test_crate!impl&%0.arrow_Directory_0. FuelId)
(declare-const fuel%test_crate!impl&%0.arrow_Page_0. FuelId)
(declare-const fuel%test_crate!impl&%1.fn_one. FuelId)
(declare-const fuel%test_crate!impl&%1.fn_two. FuelId)
(declare-const fuel%test_crate!impl&%1.fn_three. FuelId)
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
 (distinct fuel%vstd!seq.impl&%0.spec_index. fuel%vstd!seq.axiom_seq_index_decreases.
  fuel%vstd!seq.axiom_seq_empty. fuel%vstd!seq.axiom_seq_push_len. fuel%vstd!seq.axiom_seq_push_index_same.
  fuel%vstd!seq.axiom_seq_push_index_different. fuel%vstd!seq.axiom_seq_ext_equal.
  fuel%vstd!seq.axiom_seq_ext_equal_deep. fuel%vstd!seq.axiom_seq_add_len. fuel%vstd!seq.axiom_seq_add_index1.
  fuel%vstd!seq.axiom_seq_add_index2. fuel%test_crate!NUM_LAYERS. fuel%test_crate!NUM_ENTRIES.
  fuel%test_crate!impl&%0.arrow_Directory_0. fuel%test_crate!impl&%0.arrow_Page_0.
  fuel%test_crate!impl&%1.fn_one. fuel%test_crate!impl&%1.fn_two. fuel%test_crate!impl&%1.fn_three.
  fuel%vstd!array.group_array_axioms. fuel%vstd!map.group_map_axioms. fuel%vstd!multiset.group_multiset_axioms.
  fuel%vstd!raw_ptr.group_raw_ptr_axioms. fuel%vstd!seq.group_seq_axioms. fuel%vstd!seq_lib.group_seq_lib_default.
  fuel%vstd!set.group_set_axioms. fuel%vstd!set_lib.group_set_lib_axioms. fuel%vstd!slice.group_slice_axioms.
  fuel%vstd!string.group_string_axioms. fuel%vstd!std_specs.bits.group_bits_axioms.
  fuel%vstd!std_specs.control_flow.group_control_flow_axioms. fuel%vstd!std_specs.range.group_range_axioms.
  fuel%vstd!std_specs.vec.group_vec_axioms. fuel%vstd!group_vstd_default.
))
(assert
 (=>
  (fuel_bool_default fuel%vstd!seq.group_seq_axioms.)
  (and
   (fuel_bool_default fuel%vstd!seq.axiom_seq_index_decreases.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_empty.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_push_len.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_push_index_same.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_push_index_different.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_ext_equal.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_ext_equal_deep.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_add_len.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_add_index1.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_add_index2.)
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
(declare-sort test_crate!Data. 0)
(declare-sort vstd!seq.Seq<test_crate!Entry.>. 0)
(declare-datatypes ((test_crate!Entry. 0) (test_crate!Directory. 0) (tuple%0. 0))
 (((test_crate!Entry./Directory (test_crate!Entry./Directory/?0 test_crate!Directory.))
   (test_crate!Entry./Page (test_crate!Entry./Page/?0 Int))
  ) ((test_crate!Directory./Directory (test_crate!Directory./Directory/?entries vstd!seq.Seq<test_crate!Entry.>.)))
  ((tuple%0./tuple%0))
))
(declare-fun test_crate!Entry./Directory/0 (test_crate!Entry.) test_crate!Directory.)
(declare-fun test_crate!Entry./Page/0 (test_crate!Entry.) Int)
(declare-fun test_crate!Directory./Directory/entries (test_crate!Directory.) vstd!seq.Seq<test_crate!Entry.>.)
(declare-fun TYPE%vstd!seq.Seq. (Dcr Type) Type)
(declare-const TYPE%test_crate!Entry. Type)
(declare-const TYPE%test_crate!Directory. Type)
(declare-const TYPE%test_crate!Data. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%test_crate!Data. (test_crate!Data.) Poly)
(declare-fun %Poly%test_crate!Data. (Poly) test_crate!Data.)
(declare-fun Poly%vstd!seq.Seq<test_crate!Entry.>. (vstd!seq.Seq<test_crate!Entry.>.)
 Poly
)
(declare-fun %Poly%vstd!seq.Seq<test_crate!Entry.>. (Poly) vstd!seq.Seq<test_crate!Entry.>.)
(declare-fun Poly%test_crate!Entry. (test_crate!Entry.) Poly)
(declare-fun %Poly%test_crate!Entry. (Poly) test_crate!Entry.)
(declare-fun Poly%test_crate!Directory. (test_crate!Directory.) Poly)
(declare-fun %Poly%test_crate!Directory. (Poly) test_crate!Directory.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(assert
 (forall ((x test_crate!Data.)) (!
   (= x (%Poly%test_crate!Data. (Poly%test_crate!Data. x)))
   :pattern ((Poly%test_crate!Data. x))
   :qid internal_test_crate__Data_box_axiom_definition
   :skolemid skolem_internal_test_crate__Data_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Data.)
    (= x (Poly%test_crate!Data. (%Poly%test_crate!Data. x)))
   )
   :pattern ((has_type x TYPE%test_crate!Data.))
   :qid internal_test_crate__Data_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__Data_unbox_axiom_definition
)))
(assert
 (forall ((x test_crate!Data.)) (!
   (has_type (Poly%test_crate!Data. x) TYPE%test_crate!Data.)
   :pattern ((has_type (Poly%test_crate!Data. x) TYPE%test_crate!Data.))
   :qid internal_test_crate__Data_has_type_always_definition
   :skolemid skolem_internal_test_crate__Data_has_type_always_definition
)))
(assert
 (forall ((x vstd!seq.Seq<test_crate!Entry.>.)) (!
   (= x (%Poly%vstd!seq.Seq<test_crate!Entry.>. (Poly%vstd!seq.Seq<test_crate!Entry.>.
      x
   )))
   :pattern ((Poly%vstd!seq.Seq<test_crate!Entry.>. x))
   :qid internal_vstd__seq__Seq<test_crate!Entry.>_box_axiom_definition
   :skolemid skolem_internal_vstd__seq__Seq<test_crate!Entry.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!seq.Seq. $ TYPE%test_crate!Entry.))
    (= x (Poly%vstd!seq.Seq<test_crate!Entry.>. (%Poly%vstd!seq.Seq<test_crate!Entry.>.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd!seq.Seq. $ TYPE%test_crate!Entry.)))
   :qid internal_vstd__seq__Seq<test_crate!Entry.>_unbox_axiom_definition
   :skolemid skolem_internal_vstd__seq__Seq<test_crate!Entry.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!seq.Seq<test_crate!Entry.>.)) (!
   (has_type (Poly%vstd!seq.Seq<test_crate!Entry.>. x) (TYPE%vstd!seq.Seq. $ TYPE%test_crate!Entry.))
   :pattern ((has_type (Poly%vstd!seq.Seq<test_crate!Entry.>. x) (TYPE%vstd!seq.Seq. $
      TYPE%test_crate!Entry.
   )))
   :qid internal_vstd__seq__Seq<test_crate!Entry.>_has_type_always_definition
   :skolemid skolem_internal_vstd__seq__Seq<test_crate!Entry.>_has_type_always_definition
)))
(assert
 (forall ((x test_crate!Entry.)) (!
   (= x (%Poly%test_crate!Entry. (Poly%test_crate!Entry. x)))
   :pattern ((Poly%test_crate!Entry. x))
   :qid internal_test_crate__Entry_box_axiom_definition
   :skolemid skolem_internal_test_crate__Entry_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Entry.)
    (= x (Poly%test_crate!Entry. (%Poly%test_crate!Entry. x)))
   )
   :pattern ((has_type x TYPE%test_crate!Entry.))
   :qid internal_test_crate__Entry_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__Entry_unbox_axiom_definition
)))
(assert
 (forall ((_0! test_crate!Directory.)) (!
   (has_type (Poly%test_crate!Entry. (test_crate!Entry./Directory _0!)) TYPE%test_crate!Entry.)
   :pattern ((has_type (Poly%test_crate!Entry. (test_crate!Entry./Directory _0!)) TYPE%test_crate!Entry.))
   :qid internal_test_crate!Entry./Directory_constructor_definition
   :skolemid skolem_internal_test_crate!Entry./Directory_constructor_definition
)))
(assert
 (forall ((x test_crate!Entry.)) (!
   (= (test_crate!Entry./Directory/0 x) (test_crate!Entry./Directory/?0 x))
   :pattern ((test_crate!Entry./Directory/0 x))
   :qid internal_test_crate!Entry./Directory/0_accessor_definition
   :skolemid skolem_internal_test_crate!Entry./Directory/0_accessor_definition
)))
(assert
 (forall ((_0! Int)) (!
   (=>
    (<= 0 _0!)
    (has_type (Poly%test_crate!Entry. (test_crate!Entry./Page _0!)) TYPE%test_crate!Entry.)
   )
   :pattern ((has_type (Poly%test_crate!Entry. (test_crate!Entry./Page _0!)) TYPE%test_crate!Entry.))
   :qid internal_test_crate!Entry./Page_constructor_definition
   :skolemid skolem_internal_test_crate!Entry./Page_constructor_definition
)))
(assert
 (forall ((x test_crate!Entry.)) (!
   (= (test_crate!Entry./Page/0 x) (test_crate!Entry./Page/?0 x))
   :pattern ((test_crate!Entry./Page/0 x))
   :qid internal_test_crate!Entry./Page/0_accessor_definition
   :skolemid skolem_internal_test_crate!Entry./Page/0_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Entry.)
    (<= 0 (test_crate!Entry./Page/0 (%Poly%test_crate!Entry. x)))
   )
   :pattern ((test_crate!Entry./Page/0 (%Poly%test_crate!Entry. x)) (has_type x TYPE%test_crate!Entry.))
   :qid internal_test_crate!Entry./Page/0_invariant_definition
   :skolemid skolem_internal_test_crate!Entry./Page/0_invariant_definition
)))
(assert
 (forall ((x test_crate!Entry.)) (!
   (=>
    (is-test_crate!Entry./Directory x)
    (height_lt (height (Poly%test_crate!Directory. (test_crate!Entry./Directory/0 x)))
     (height (Poly%test_crate!Entry. x))
   ))
   :pattern ((height (Poly%test_crate!Directory. (test_crate!Entry./Directory/0 x))))
   :qid prelude_datatype_height_test_crate!Entry./Directory/0
   :skolemid skolem_prelude_datatype_height_test_crate!Entry./Directory/0
)))
(assert
 (forall ((x test_crate!Directory.)) (!
   (= x (%Poly%test_crate!Directory. (Poly%test_crate!Directory. x)))
   :pattern ((Poly%test_crate!Directory. x))
   :qid internal_test_crate__Directory_box_axiom_definition
   :skolemid skolem_internal_test_crate__Directory_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Directory.)
    (= x (Poly%test_crate!Directory. (%Poly%test_crate!Directory. x)))
   )
   :pattern ((has_type x TYPE%test_crate!Directory.))
   :qid internal_test_crate__Directory_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__Directory_unbox_axiom_definition
)))
(assert
 (forall ((x test_crate!Directory.)) (!
   (= (test_crate!Directory./Directory/entries x) (test_crate!Directory./Directory/?entries
     x
   ))
   :pattern ((test_crate!Directory./Directory/entries x))
   :qid internal_test_crate!Directory./Directory/entries_accessor_definition
   :skolemid skolem_internal_test_crate!Directory./Directory/entries_accessor_definition
)))
(assert
 (forall ((x test_crate!Directory.)) (!
   (has_type (Poly%test_crate!Directory. x) TYPE%test_crate!Directory.)
   :pattern ((has_type (Poly%test_crate!Directory. x) TYPE%test_crate!Directory.))
   :qid internal_test_crate__Directory_has_type_always_definition
   :skolemid skolem_internal_test_crate__Directory_has_type_always_definition
)))
(assert
 (forall ((x test_crate!Directory.)) (!
   (=>
    (is-test_crate!Directory./Directory x)
    (height_lt (height (Poly%vstd!seq.Seq<test_crate!Entry.>. (test_crate!Directory./Directory/entries
        x
      ))
     ) (height (Poly%test_crate!Directory. x))
   ))
   :pattern ((height (Poly%vstd!seq.Seq<test_crate!Entry.>. (test_crate!Directory./Directory/entries
       x
   ))))
   :qid prelude_datatype_height_test_crate!Directory./Directory/entries
   :skolemid skolem_prelude_datatype_height_test_crate!Directory./Directory/entries
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

;; Function-Decl vstd::pervasive::arbitrary
(declare-fun vstd!pervasive.arbitrary.? (Dcr Type) Poly)

;; Function-Decl vstd::seq::Seq::empty
(declare-fun vstd!seq.Seq.empty.? (Dcr Type) Poly)

;; Function-Decl vstd::seq::Seq::len
(declare-fun vstd!seq.Seq.len.? (Dcr Type Poly) Int)

;; Function-Decl vstd::seq::Seq::index
(declare-fun vstd!seq.Seq.index.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::seq::Seq::push
(declare-fun vstd!seq.Seq.push.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::seq::Seq::add
(declare-fun vstd!seq.Seq.add.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::seq::impl&%0::spec_index
(declare-fun vstd!seq.impl&%0.spec_index.? (Dcr Type Poly Poly) Poly)

;; Function-Decl test_crate::NUM_LAYERS
(declare-fun test_crate!NUM_LAYERS.? () Int)

;; Function-Decl test_crate::NUM_ENTRIES
(declare-fun test_crate!NUM_ENTRIES.? () Int)

;; Function-Decl test_crate::Entry::arrow_Directory_0
(declare-fun test_crate!impl&%0.arrow_Directory_0.? (Poly) test_crate!Directory.)

;; Function-Decl test_crate::Entry::arrow_Page_0
(declare-fun test_crate!impl&%0.arrow_Page_0.? (Poly) Int)

;; Function-Decl test_crate::Data::fn_two
(declare-fun test_crate!impl&%1.fn_two.? (Poly Poly Poly) test_crate!Entry.)
(declare-fun test_crate!impl&%1.rec%fn_two.? (Poly Poly Poly Fuel) test_crate!Entry.)

;; Function-Decl test_crate::Data::fn_three
(declare-fun test_crate!impl&%1.fn_three.? (Poly Poly Poly) vstd!seq.Seq<test_crate!Entry.>.)
(declare-fun test_crate!impl&%1.rec%fn_three.? (Poly Poly Poly Fuel) vstd!seq.Seq<test_crate!Entry.>.)

;; Function-Decl test_crate::Data::fn_one
(declare-fun test_crate!impl&%1.fn_one.? (Poly Poly) test_crate!Directory.)
(declare-fun test_crate!impl&%1.rec%fn_one.? (Poly Poly Fuel) test_crate!Directory.)

;; Function-Axioms vstd::pervasive::arbitrary
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (has_type (vstd!pervasive.arbitrary.? A&. A&) A&)
   :pattern ((vstd!pervasive.arbitrary.? A&. A&))
   :qid internal_vstd!pervasive.arbitrary.?_pre_post_definition
   :skolemid skolem_internal_vstd!pervasive.arbitrary.?_pre_post_definition
)))

;; Function-Axioms vstd::seq::Seq::empty
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (has_type (vstd!seq.Seq.empty.? A&. A&) (TYPE%vstd!seq.Seq. A&. A&))
   :pattern ((vstd!seq.Seq.empty.? A&. A&))
   :qid internal_vstd!seq.Seq.empty.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.empty.?_pre_post_definition
)))

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

;; Function-Axioms vstd::seq::Seq::push
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (a! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd!seq.Seq. A&. A&))
     (has_type a! A&)
    )
    (has_type (vstd!seq.Seq.push.? A&. A& self! a!) (TYPE%vstd!seq.Seq. A&. A&))
   )
   :pattern ((vstd!seq.Seq.push.? A&. A& self! a!))
   :qid internal_vstd!seq.Seq.push.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.push.?_pre_post_definition
)))

;; Function-Axioms vstd::seq::Seq::add
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (rhs! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd!seq.Seq. A&. A&))
     (has_type rhs! (TYPE%vstd!seq.Seq. A&. A&))
    )
    (has_type (vstd!seq.Seq.add.? A&. A& self! rhs!) (TYPE%vstd!seq.Seq. A&. A&))
   )
   :pattern ((vstd!seq.Seq.add.? A&. A& self! rhs!))
   :qid internal_vstd!seq.Seq.add.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.add.?_pre_post_definition
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
    :qid user_vstd__seq__axiom_seq_index_decreases_0
    :skolemid skolem_user_vstd__seq__axiom_seq_index_decreases_0
))))

;; Broadcast vstd::seq::axiom_seq_empty
(assert
 (=>
  (fuel_bool fuel%vstd!seq.axiom_seq_empty.)
  (forall ((A&. Dcr) (A& Type)) (!
    (= (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.empty.? A&. A&)) 0)
    :pattern ((vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.empty.? A&. A&)))
    :qid user_vstd__seq__axiom_seq_empty_1
    :skolemid skolem_user_vstd__seq__axiom_seq_empty_1
))))

;; Broadcast vstd::seq::axiom_seq_push_len
(assert
 (=>
  (fuel_bool fuel%vstd!seq.axiom_seq_push_len.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd!seq.Seq. A&. A&))
      (has_type a! A&)
     )
     (= (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.push.? A&. A& s! a!)) (nClip (Add (vstd!seq.Seq.len.?
         A&. A& s!
        ) 1
    ))))
    :pattern ((vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.push.? A&. A& s! a!)))
    :qid user_vstd__seq__axiom_seq_push_len_2
    :skolemid skolem_user_vstd__seq__axiom_seq_push_len_2
))))

;; Broadcast vstd::seq::axiom_seq_push_index_same
(assert
 (=>
  (fuel_bool fuel%vstd!seq.axiom_seq_push_index_same.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly) (i! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd!seq.Seq. A&. A&))
      (has_type a! A&)
      (has_type i! INT)
     )
     (=>
      (= (%I i!) (vstd!seq.Seq.len.? A&. A& s!))
      (= (vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.push.? A&. A& s! a!) i!) a!)
    ))
    :pattern ((vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.push.? A&. A& s! a!) i!))
    :qid user_vstd__seq__axiom_seq_push_index_same_3
    :skolemid skolem_user_vstd__seq__axiom_seq_push_index_same_3
))))

;; Broadcast vstd::seq::axiom_seq_push_index_different
(assert
 (=>
  (fuel_bool fuel%vstd!seq.axiom_seq_push_index_different.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly) (i! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd!seq.Seq. A&. A&))
      (has_type a! A&)
      (has_type i! INT)
     )
     (=>
      (and
       (<= 0 (%I i!))
       (< (%I i!) (vstd!seq.Seq.len.? A&. A& s!))
      )
      (= (vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.push.? A&. A& s! a!) i!) (vstd!seq.Seq.index.?
        A&. A& s! i!
    ))))
    :pattern ((vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.push.? A&. A& s! a!) i!))
    :qid user_vstd__seq__axiom_seq_push_index_different_4
    :skolemid skolem_user_vstd__seq__axiom_seq_push_index_different_4
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
         :qid user_vstd__seq__axiom_seq_ext_equal_5
         :skolemid skolem_user_vstd__seq__axiom_seq_ext_equal_5
    )))))
    :pattern ((ext_eq false (TYPE%vstd!seq.Seq. A&. A&) s1! s2!))
    :qid user_vstd__seq__axiom_seq_ext_equal_6
    :skolemid skolem_user_vstd__seq__axiom_seq_ext_equal_6
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
         :qid user_vstd__seq__axiom_seq_ext_equal_deep_7
         :skolemid skolem_user_vstd__seq__axiom_seq_ext_equal_deep_7
    )))))
    :pattern ((ext_eq true (TYPE%vstd!seq.Seq. A&. A&) s1! s2!))
    :qid user_vstd__seq__axiom_seq_ext_equal_deep_8
    :skolemid skolem_user_vstd__seq__axiom_seq_ext_equal_deep_8
))))

;; Broadcast vstd::seq::axiom_seq_add_len
(assert
 (=>
  (fuel_bool fuel%vstd!seq.axiom_seq_add_len.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd!seq.Seq. A&. A&))
      (has_type s2! (TYPE%vstd!seq.Seq. A&. A&))
     )
     (= (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.add.? A&. A& s1! s2!)) (nClip (Add (vstd!seq.Seq.len.?
         A&. A& s1!
        ) (vstd!seq.Seq.len.? A&. A& s2!)
    ))))
    :pattern ((vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.add.? A&. A& s1! s2!)))
    :qid user_vstd__seq__axiom_seq_add_len_9
    :skolemid skolem_user_vstd__seq__axiom_seq_add_len_9
))))

;; Broadcast vstd::seq::axiom_seq_add_index1
(assert
 (=>
  (fuel_bool fuel%vstd!seq.axiom_seq_add_index1.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly) (i! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd!seq.Seq. A&. A&))
      (has_type s2! (TYPE%vstd!seq.Seq. A&. A&))
      (has_type i! INT)
     )
     (=>
      (and
       (<= 0 (%I i!))
       (< (%I i!) (vstd!seq.Seq.len.? A&. A& s1!))
      )
      (= (vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.add.? A&. A& s1! s2!) i!) (vstd!seq.Seq.index.?
        A&. A& s1! i!
    ))))
    :pattern ((vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.add.? A&. A& s1! s2!) i!))
    :qid user_vstd__seq__axiom_seq_add_index1_10
    :skolemid skolem_user_vstd__seq__axiom_seq_add_index1_10
))))

;; Broadcast vstd::seq::axiom_seq_add_index2
(assert
 (=>
  (fuel_bool fuel%vstd!seq.axiom_seq_add_index2.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly) (i! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd!seq.Seq. A&. A&))
      (has_type s2! (TYPE%vstd!seq.Seq. A&. A&))
      (has_type i! INT)
     )
     (=>
      (and
       (<= (vstd!seq.Seq.len.? A&. A& s1!) (%I i!))
       (< (%I i!) (nClip (Add (vstd!seq.Seq.len.? A&. A& s1!) (vstd!seq.Seq.len.? A&. A& s2!))))
      )
      (= (vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.add.? A&. A& s1! s2!) i!) (vstd!seq.Seq.index.?
        A&. A& s2! (I (Sub (%I i!) (vstd!seq.Seq.len.? A&. A& s1!)))
    ))))
    :pattern ((vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.add.? A&. A& s1! s2!) i!))
    :qid user_vstd__seq__axiom_seq_add_index2_11
    :skolemid skolem_user_vstd__seq__axiom_seq_add_index2_11
))))

;; Function-Def test_crate::NUM_LAYERS
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/recursion-323c2b72cefe3aab-mutual_recursion_result_incompleteness_regression_564_1/test.rs:17:1: 17:36 (#0)
(get-info :all-statistics)
(push)
 (declare-const %return! Int)
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

;; Function-Axioms test_crate::NUM_LAYERS
(assert
 (fuel_bool_default fuel%test_crate!NUM_LAYERS.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!NUM_LAYERS.)
  (= test_crate!NUM_LAYERS.? 4)
))
(assert
 (<= 0 test_crate!NUM_LAYERS.?)
)

;; Function-Def test_crate::NUM_ENTRIES
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/recursion-323c2b72cefe3aab-mutual_recursion_result_incompleteness_regression_564_1/test.rs:18:1: 18:38 (#0)
(get-info :all-statistics)
(push)
 (declare-const %return! Int)
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

;; Function-Axioms test_crate::NUM_ENTRIES
(assert
 (fuel_bool_default fuel%test_crate!NUM_ENTRIES.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!NUM_ENTRIES.)
  (= test_crate!NUM_ENTRIES.? 32)
))
(assert
 (<= 0 test_crate!NUM_ENTRIES.?)
)

;; Function-Axioms test_crate::Entry::arrow_Directory_0
(assert
 (fuel_bool_default fuel%test_crate!impl&%0.arrow_Directory_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%0.arrow_Directory_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!impl&%0.arrow_Directory_0.? self!) (test_crate!Entry./Directory/0 (%Poly%test_crate!Entry.
       self!
    )))
    :pattern ((test_crate!impl&%0.arrow_Directory_0.? self!))
    :qid internal_test_crate!impl&__0.arrow_Directory_0.?_definition
    :skolemid skolem_internal_test_crate!impl&__0.arrow_Directory_0.?_definition
))))

;; Function-Axioms test_crate::Entry::arrow_Page_0
(assert
 (fuel_bool_default fuel%test_crate!impl&%0.arrow_Page_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%0.arrow_Page_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!impl&%0.arrow_Page_0.? self!) (test_crate!Entry./Page/0 (%Poly%test_crate!Entry.
       self!
    )))
    :pattern ((test_crate!impl&%0.arrow_Page_0.? self!))
    :qid internal_test_crate!impl&__0.arrow_Page_0.?_definition
    :skolemid skolem_internal_test_crate!impl&__0.arrow_Page_0.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%test_crate!Entry.)
    (<= 0 (test_crate!impl&%0.arrow_Page_0.? self!))
   )
   :pattern ((test_crate!impl&%0.arrow_Page_0.? self!))
   :qid internal_test_crate!impl&__0.arrow_Page_0.?_pre_post_definition
   :skolemid skolem_internal_test_crate!impl&__0.arrow_Page_0.?_pre_post_definition
)))

;; Spec-Termination test_crate::Data::fn_two
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/recursion-323c2b72cefe3aab-mutual_recursion_result_incompleteness_regression_564_1/test.rs:40:5: 40:65 (#0)
(get-info :all-statistics)
(push)
 (declare-const self! Poly)
 (declare-const layer! Poly)
 (declare-const idx! Poly)
 (declare-const tmp%1 test_crate!Directory.)
 (declare-const tmp%2 Poly)
 (declare-const tmp%3 test_crate!Entry.)
 (declare-const decrease%init0 Int)
 (declare-const decrease%init1 Int)
 (declare-const decrease%init2 Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! TYPE%test_crate!Data.)
 )
 (assert
  (has_type layer! NAT)
 )
 (assert
  (has_type idx! NAT)
 )
 (declare-const %%switch_label%%0 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= decrease%init0 (Sub test_crate!NUM_LAYERS.? (%I layer!)))
    (=>
     (= decrease%init1 (Sub test_crate!NUM_ENTRIES.? (%I idx!)))
     (=>
      (= decrease%init2 0)
      (or
       (and
        (=>
         (<= (nClip (Add (%I layer!) 1)) test_crate!NUM_LAYERS.?)
         (=>
          (= tmp%2 (I (nClip (Add (%I layer!) 1))))
          (and
           (=>
            %%location_label%%0
            (check_decrease_int (let
              ((self!$0 (%Poly%test_crate!Data. self!)) (layer!$1 (%I tmp%2)))
              (Sub test_crate!NUM_LAYERS.? layer!$1)
             ) decrease%init0 (check_decrease_int (let
               ((self!$0 (%Poly%test_crate!Data. self!)) (layer!$1 (%I tmp%2)))
               test_crate!NUM_ENTRIES.?
              ) decrease%init1 (check_decrease_int (let
                ((self!$0 (%Poly%test_crate!Data. self!)) (layer!$1 (%I tmp%2)))
                2
               ) decrease%init2 false
           ))))
           (=>
            (= tmp%1 (test_crate!impl&%1.fn_one.? self! (I (nClip (Add (%I layer!) 1)))))
            (=>
             (= tmp%3 (test_crate!Entry./Directory (%Poly%test_crate!Directory. (Poly%test_crate!Directory.
                 tmp%1
             ))))
             %%switch_label%%0
        )))))
        (=>
         (not (<= (nClip (Add (%I layer!) 1)) test_crate!NUM_LAYERS.?))
         (=>
          (= tmp%3 (%Poly%test_crate!Entry. (vstd!pervasive.arbitrary.? $ TYPE%test_crate!Entry.)))
          %%switch_label%%0
       )))
       (not %%switch_label%%0)
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Spec-Termination test_crate::Data::fn_three
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/recursion-323c2b72cefe3aab-mutual_recursion_result_incompleteness_regression_564_1/test.rs:50:5: 50:80 (#0)
(get-info :all-statistics)
(push)
 (declare-const self! Poly)
 (declare-const layer! Poly)
 (declare-const init! Poly)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 vstd!seq.Seq<test_crate!Entry.>.)
 (declare-const tmp%3 Poly)
 (declare-const entry@ test_crate!Entry.)
 (declare-const tmp%4 Poly)
 (declare-const num_entries@ Int)
 (declare-const decrease%init0 Int)
 (declare-const decrease%init1 Int)
 (declare-const decrease%init2 Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! TYPE%test_crate!Data.)
 )
 (assert
  (has_type layer! NAT)
 )
 (assert
  (has_type init! (TYPE%vstd!seq.Seq. $ TYPE%test_crate!Entry.))
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= decrease%init0 (Sub test_crate!NUM_LAYERS.? (%I layer!)))
    (=>
     (= decrease%init1 (Sub test_crate!NUM_ENTRIES.? (vstd!seq.Seq.len.? $ TYPE%test_crate!Entry.
        init!
     )))
     (=>
      (= decrease%init2 1)
      (=>
       (= num_entries@ test_crate!NUM_ENTRIES.?)
       (or
        (=>
         (not (>= (vstd!seq.Seq.len.? $ TYPE%test_crate!Entry. init!) num_entries@))
         %%switch_label%%1
        )
        (and
         (not %%switch_label%%1)
         (or
          (and
           (=>
            (>= (vstd!seq.Seq.len.? $ TYPE%test_crate!Entry. init!) test_crate!NUM_ENTRIES.?)
            (=>
             (= tmp%4 init!)
             %%switch_label%%0
           ))
           (=>
            (not (>= (vstd!seq.Seq.len.? $ TYPE%test_crate!Entry. init!) test_crate!NUM_ENTRIES.?))
            (=>
             (= tmp%1 (I (vstd!seq.Seq.len.? $ TYPE%test_crate!Entry. init!)))
             (and
              (=>
               %%location_label%%0
               (check_decrease_int (let
                 ((self!$0 (%Poly%test_crate!Data. self!)) (layer!$1 (%I layer!)) (idx!$2 (%I tmp%1)))
                 (Sub test_crate!NUM_LAYERS.? layer!$1)
                ) decrease%init0 (check_decrease_int (let
                  ((self!$0 (%Poly%test_crate!Data. self!)) (layer!$1 (%I layer!)) (idx!$2 (%I tmp%1)))
                  (Sub test_crate!NUM_ENTRIES.? idx!$2)
                 ) decrease%init1 (check_decrease_int (let
                   ((self!$0 (%Poly%test_crate!Data. self!)) (layer!$1 (%I layer!)) (idx!$2 (%I tmp%1)))
                   0
                  ) decrease%init2 false
              ))))
              (=>
               (has_type (Poly%test_crate!Entry. entry@) TYPE%test_crate!Entry.)
               (=>
                (= tmp%3 (vstd!seq.Seq.add.? $ TYPE%test_crate!Entry. init! (vstd!seq.Seq.push.? $ TYPE%test_crate!Entry.
                   (vstd!seq.Seq.empty.? $ TYPE%test_crate!Entry.) (Poly%test_crate!Entry. entry@)
                )))
                (and
                 (=>
                  %%location_label%%1
                  (check_decrease_int (let
                    ((self!$0 (%Poly%test_crate!Data. self!)) (layer!$1 (%I layer!)) (init!$2 (%Poly%vstd!seq.Seq<test_crate!Entry.>.
                       tmp%3
                    )))
                    (Sub test_crate!NUM_LAYERS.? layer!$1)
                   ) decrease%init0 (check_decrease_int (let
                     ((self!$0 (%Poly%test_crate!Data. self!)) (layer!$1 (%I layer!)) (init!$2 (%Poly%vstd!seq.Seq<test_crate!Entry.>.
                        tmp%3
                     )))
                     (Sub test_crate!NUM_ENTRIES.? (vstd!seq.Seq.len.? $ TYPE%test_crate!Entry. (Poly%vstd!seq.Seq<test_crate!Entry.>.
                        init!$2
                     )))
                    ) decrease%init1 (check_decrease_int (let
                      ((self!$0 (%Poly%test_crate!Data. self!)) (layer!$1 (%I layer!)) (init!$2 (%Poly%vstd!seq.Seq<test_crate!Entry.>.
                         tmp%3
                      )))
                      1
                     ) decrease%init2 false
                 ))))
                 (=>
                  (= tmp%2 (test_crate!impl&%1.fn_three.? self! layer! (vstd!seq.Seq.add.? $ TYPE%test_crate!Entry.
                     init! (vstd!seq.Seq.push.? $ TYPE%test_crate!Entry. (vstd!seq.Seq.empty.? $ TYPE%test_crate!Entry.)
                      (Poly%test_crate!Entry. entry@)
                  ))))
                  (=>
                   (= tmp%4 (Poly%vstd!seq.Seq<test_crate!Entry.>. tmp%2))
                   %%switch_label%%0
          )))))))))
          (not %%switch_label%%0)
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Spec-Termination test_crate::Data::fn_one
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/recursion-323c2b72cefe3aab-mutual_recursion_result_incompleteness_regression_564_1/test.rs:34:5: 34:59 (#0)
(get-info :all-statistics)
(push)
 (declare-const self! Poly)
 (declare-const layer! Poly)
 (declare-const tmp%1 vstd!seq.Seq<test_crate!Entry.>.)
 (declare-const tmp%2 Poly)
 (declare-const decrease%init0 Int)
 (declare-const decrease%init1 Int)
 (declare-const decrease%init2 Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! TYPE%test_crate!Data.)
 )
 (assert
  (has_type layer! NAT)
 )
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= decrease%init0 (Sub test_crate!NUM_LAYERS.? (%I layer!)))
    (=>
     (= decrease%init1 test_crate!NUM_ENTRIES.?)
     (=>
      (= decrease%init2 2)
      (=>
       (= tmp%2 (vstd!seq.Seq.empty.? $ TYPE%test_crate!Entry.))
       (=>
        %%location_label%%0
        (check_decrease_int (let
          ((self!$0 (%Poly%test_crate!Data. self!)) (layer!$1 (%I layer!)) (init!$2 (%Poly%vstd!seq.Seq<test_crate!Entry.>.
             tmp%2
          )))
          (Sub test_crate!NUM_LAYERS.? layer!$1)
         ) decrease%init0 (check_decrease_int (let
           ((self!$0 (%Poly%test_crate!Data. self!)) (layer!$1 (%I layer!)) (init!$2 (%Poly%vstd!seq.Seq<test_crate!Entry.>.
              tmp%2
           )))
           (Sub test_crate!NUM_ENTRIES.? (vstd!seq.Seq.len.? $ TYPE%test_crate!Entry. (Poly%vstd!seq.Seq<test_crate!Entry.>.
              init!$2
           )))
          ) decrease%init1 (check_decrease_int (let
            ((self!$0 (%Poly%test_crate!Data. self!)) (layer!$1 (%I layer!)) (init!$2 (%Poly%vstd!seq.Seq<test_crate!Entry.>.
               tmp%2
            )))
            1
           ) decrease%init2 false
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Axioms test_crate::Data::fn_two
(assert
 (fuel_bool_default fuel%test_crate!impl&%1.fn_two.)
)
(declare-const fuel_nat%test_crate!impl&%1.fn_two. Fuel)
(assert
 (forall ((self! Poly) (layer! Poly) (idx! Poly) (fuel% Fuel)) (!
   (= (test_crate!impl&%1.rec%fn_two.? self! layer! idx! fuel%) (test_crate!impl&%1.rec%fn_two.?
     self! layer! idx! zero
   ))
   :pattern ((test_crate!impl&%1.rec%fn_two.? self! layer! idx! fuel%))
   :qid internal_test_crate!impl&__1.fn_two._fuel_to_zero_definition
   :skolemid skolem_internal_test_crate!impl&__1.fn_two._fuel_to_zero_definition
)))
(assert
 (forall ((self! Poly) (layer! Poly) (idx! Poly) (fuel% Fuel)) (!
   (=>
    (and
     (has_type self! TYPE%test_crate!Data.)
     (has_type layer! NAT)
     (has_type idx! NAT)
    )
    (= (test_crate!impl&%1.rec%fn_two.? self! layer! idx! (succ fuel%)) (ite
      (<= (nClip (Add (%I layer!) 1)) test_crate!NUM_LAYERS.?)
      (test_crate!Entry./Directory (%Poly%test_crate!Directory. (Poly%test_crate!Directory.
         (test_crate!impl&%1.rec%fn_one.? self! (I (nClip (Add (%I layer!) 1))) fuel%)
      )))
      (%Poly%test_crate!Entry. (vstd!pervasive.arbitrary.? $ TYPE%test_crate!Entry.))
   )))
   :pattern ((test_crate!impl&%1.rec%fn_two.? self! layer! idx! (succ fuel%)))
   :qid internal_test_crate!impl&__1.fn_two._fuel_to_body_definition
   :skolemid skolem_internal_test_crate!impl&__1.fn_two._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%1.fn_two.)
  (forall ((self! Poly) (layer! Poly) (idx! Poly)) (!
    (=>
     (and
      (has_type self! TYPE%test_crate!Data.)
      (has_type layer! NAT)
      (has_type idx! NAT)
     )
     (= (test_crate!impl&%1.fn_two.? self! layer! idx!) (test_crate!impl&%1.rec%fn_two.?
       self! layer! idx! (succ (succ (succ fuel_nat%test_crate!impl&%1.fn_two.)))
    )))
    :pattern ((test_crate!impl&%1.fn_two.? self! layer! idx!))
    :qid internal_test_crate!impl&__1.fn_two.?_definition
    :skolemid skolem_internal_test_crate!impl&__1.fn_two.?_definition
))))
(assert
 (forall ((self! Poly) (layer! Poly) (idx! Poly)) (!
   (=>
    (and
     (has_type self! TYPE%test_crate!Data.)
     (has_type layer! NAT)
     (has_type idx! NAT)
    )
    (has_type (Poly%test_crate!Entry. (test_crate!impl&%1.fn_two.? self! layer! idx!))
     TYPE%test_crate!Entry.
   ))
   :pattern ((test_crate!impl&%1.fn_two.? self! layer! idx!))
   :qid internal_test_crate!impl&__1.fn_two.?_pre_post_definition
   :skolemid skolem_internal_test_crate!impl&__1.fn_two.?_pre_post_definition
)))

;; Function-Axioms test_crate::Data::fn_three
(assert
 (fuel_bool_default fuel%test_crate!impl&%1.fn_three.)
)
(declare-const fuel_nat%test_crate!impl&%1.fn_three. Fuel)
(assert
 (forall ((self! Poly) (layer! Poly) (init! Poly) (fuel% Fuel)) (!
   (= (test_crate!impl&%1.rec%fn_three.? self! layer! init! fuel%) (test_crate!impl&%1.rec%fn_three.?
     self! layer! init! zero
   ))
   :pattern ((test_crate!impl&%1.rec%fn_three.? self! layer! init! fuel%))
   :qid internal_test_crate!impl&__1.fn_three._fuel_to_zero_definition
   :skolemid skolem_internal_test_crate!impl&__1.fn_three._fuel_to_zero_definition
)))
(assert
 (forall ((self! Poly) (layer! Poly) (init! Poly) (fuel% Fuel)) (!
   (=>
    (and
     (has_type self! TYPE%test_crate!Data.)
     (has_type layer! NAT)
     (has_type init! (TYPE%vstd!seq.Seq. $ TYPE%test_crate!Entry.))
    )
    (= (test_crate!impl&%1.rec%fn_three.? self! layer! init! (succ fuel%)) (ite
      (>= (vstd!seq.Seq.len.? $ TYPE%test_crate!Entry. init!) test_crate!NUM_ENTRIES.?)
      (%Poly%vstd!seq.Seq<test_crate!Entry.>. init!)
      (let
       ((entry$ (test_crate!impl&%1.rec%fn_two.? self! layer! (I (vstd!seq.Seq.len.? $ TYPE%test_crate!Entry.
            init!
           )
          ) fuel%
       )))
       (test_crate!impl&%1.rec%fn_three.? self! layer! (vstd!seq.Seq.add.? $ TYPE%test_crate!Entry.
         init! (vstd!seq.Seq.push.? $ TYPE%test_crate!Entry. (vstd!seq.Seq.empty.? $ TYPE%test_crate!Entry.)
          (Poly%test_crate!Entry. entry$)
         )
        ) fuel%
   )))))
   :pattern ((test_crate!impl&%1.rec%fn_three.? self! layer! init! (succ fuel%)))
   :qid internal_test_crate!impl&__1.fn_three._fuel_to_body_definition
   :skolemid skolem_internal_test_crate!impl&__1.fn_three._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%1.fn_three.)
  (forall ((self! Poly) (layer! Poly) (init! Poly)) (!
    (=>
     (and
      (has_type self! TYPE%test_crate!Data.)
      (has_type layer! NAT)
      (has_type init! (TYPE%vstd!seq.Seq. $ TYPE%test_crate!Entry.))
     )
     (= (test_crate!impl&%1.fn_three.? self! layer! init!) (test_crate!impl&%1.rec%fn_three.?
       self! layer! init! (succ fuel_nat%test_crate!impl&%1.fn_three.)
    )))
    :pattern ((test_crate!impl&%1.fn_three.? self! layer! init!))
    :qid internal_test_crate!impl&__1.fn_three.?_definition
    :skolemid skolem_internal_test_crate!impl&__1.fn_three.?_definition
))))

;; Function-Axioms test_crate::Data::fn_one
(assert
 (fuel_bool_default fuel%test_crate!impl&%1.fn_one.)
)
(declare-const fuel_nat%test_crate!impl&%1.fn_one. Fuel)
(assert
 (forall ((self! Poly) (layer! Poly) (fuel% Fuel)) (!
   (= (test_crate!impl&%1.rec%fn_one.? self! layer! fuel%) (test_crate!impl&%1.rec%fn_one.?
     self! layer! zero
   ))
   :pattern ((test_crate!impl&%1.rec%fn_one.? self! layer! fuel%))
   :qid internal_test_crate!impl&__1.fn_one._fuel_to_zero_definition
   :skolemid skolem_internal_test_crate!impl&__1.fn_one._fuel_to_zero_definition
)))
(assert
 (forall ((self! Poly) (layer! Poly) (fuel% Fuel)) (!
   (=>
    (and
     (has_type self! TYPE%test_crate!Data.)
     (has_type layer! NAT)
    )
    (= (test_crate!impl&%1.rec%fn_one.? self! layer! (succ fuel%)) (test_crate!Directory./Directory
      (%Poly%vstd!seq.Seq<test_crate!Entry.>. (Poly%vstd!seq.Seq<test_crate!Entry.>. (test_crate!impl&%1.rec%fn_three.?
         self! layer! (vstd!seq.Seq.empty.? $ TYPE%test_crate!Entry.) fuel%
   ))))))
   :pattern ((test_crate!impl&%1.rec%fn_one.? self! layer! (succ fuel%)))
   :qid internal_test_crate!impl&__1.fn_one._fuel_to_body_definition
   :skolemid skolem_internal_test_crate!impl&__1.fn_one._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%1.fn_one.)
  (forall ((self! Poly) (layer! Poly)) (!
    (=>
     (and
      (has_type self! TYPE%test_crate!Data.)
      (has_type layer! NAT)
     )
     (= (test_crate!impl&%1.fn_one.? self! layer!) (test_crate!impl&%1.rec%fn_one.? self!
       layer! (succ (succ (succ fuel_nat%test_crate!impl&%1.fn_one.)))
    )))
    :pattern ((test_crate!impl&%1.fn_one.? self! layer!))
    :qid internal_test_crate!impl&__1.fn_one.?_definition
    :skolemid skolem_internal_test_crate!impl&__1.fn_one.?_definition
))))
