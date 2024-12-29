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
(declare-const fuel%vstd!std_specs.core.iter_into_iter_spec. FuelId)
(declare-const fuel%vstd!std_specs.option.is_none. FuelId)
(declare-const fuel%vstd!std_specs.option.spec_unwrap_or. FuelId)
(declare-const fuel%vstd!std_specs.vec.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd!std_specs.vec.axiom_spec_len. FuelId)
(declare-const fuel%vstd!std_specs.vec.axiom_vec_index_decreases. FuelId)
(declare-const fuel%vstd!raw_ptr.impl&%4.view. FuelId)
(declare-const fuel%vstd!raw_ptr.ptrs_mut_eq. FuelId)
(declare-const fuel%vstd!seq.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_index_decreases. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_subrange_decreases. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_ext_equal. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_ext_equal_deep. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_subrange_len. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_subrange_index. FuelId)
(declare-const fuel%vstd!view.impl&%0.view. FuelId)
(declare-const fuel%vstd!view.impl&%2.view. FuelId)
(declare-const fuel%vstd!view.impl&%4.view. FuelId)
(declare-const fuel%vstd!view.impl&%6.view. FuelId)
(declare-const fuel%vstd!view.impl&%10.view. FuelId)
(declare-const fuel%vstd!view.impl&%12.view. FuelId)
(declare-const fuel%vstd!view.impl&%14.view. FuelId)
(declare-const fuel%vstd!view.impl&%24.view. FuelId)
(declare-const fuel%test_crate!impl&%1.ghost_iter. FuelId)
(declare-const fuel%test_crate!impl&%2.exec_invariant. FuelId)
(declare-const fuel%test_crate!impl&%2.ghost_invariant. FuelId)
(declare-const fuel%test_crate!impl&%2.ghost_ensures. FuelId)
(declare-const fuel%test_crate!impl&%2.ghost_decrease. FuelId)
(declare-const fuel%test_crate!impl&%2.ghost_peek_next. FuelId)
(declare-const fuel%test_crate!impl&%2.ghost_advance. FuelId)
(declare-const fuel%test_crate!impl&%3.view. FuelId)
(declare-const fuel%test_crate!vec_iter_copy_spec. FuelId)
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
 (distinct fuel%vstd!std_specs.core.iter_into_iter_spec. fuel%vstd!std_specs.option.is_none.
  fuel%vstd!std_specs.option.spec_unwrap_or. fuel%vstd!std_specs.vec.impl&%0.spec_index.
  fuel%vstd!std_specs.vec.axiom_spec_len. fuel%vstd!std_specs.vec.axiom_vec_index_decreases.
  fuel%vstd!raw_ptr.impl&%4.view. fuel%vstd!raw_ptr.ptrs_mut_eq. fuel%vstd!seq.impl&%0.spec_index.
  fuel%vstd!seq.axiom_seq_index_decreases. fuel%vstd!seq.axiom_seq_subrange_decreases.
  fuel%vstd!seq.axiom_seq_ext_equal. fuel%vstd!seq.axiom_seq_ext_equal_deep. fuel%vstd!seq.axiom_seq_subrange_len.
  fuel%vstd!seq.axiom_seq_subrange_index. fuel%vstd!view.impl&%0.view. fuel%vstd!view.impl&%2.view.
  fuel%vstd!view.impl&%4.view. fuel%vstd!view.impl&%6.view. fuel%vstd!view.impl&%10.view.
  fuel%vstd!view.impl&%12.view. fuel%vstd!view.impl&%14.view. fuel%vstd!view.impl&%24.view.
  fuel%test_crate!impl&%1.ghost_iter. fuel%test_crate!impl&%2.exec_invariant. fuel%test_crate!impl&%2.ghost_invariant.
  fuel%test_crate!impl&%2.ghost_ensures. fuel%test_crate!impl&%2.ghost_decrease. fuel%test_crate!impl&%2.ghost_peek_next.
  fuel%test_crate!impl&%2.ghost_advance. fuel%test_crate!impl&%3.view. fuel%test_crate!vec_iter_copy_spec.
  fuel%vstd!array.group_array_axioms. fuel%vstd!map.group_map_axioms. fuel%vstd!multiset.group_multiset_axioms.
  fuel%vstd!raw_ptr.group_raw_ptr_axioms. fuel%vstd!seq.group_seq_axioms. fuel%vstd!seq_lib.group_seq_lib_default.
  fuel%vstd!set.group_set_axioms. fuel%vstd!set_lib.group_set_lib_axioms. fuel%vstd!slice.group_slice_axioms.
  fuel%vstd!string.group_string_axioms. fuel%vstd!std_specs.bits.group_bits_axioms.
  fuel%vstd!std_specs.control_flow.group_control_flow_axioms. fuel%vstd!std_specs.range.group_range_axioms.
  fuel%vstd!std_specs.vec.group_vec_axioms. fuel%vstd!group_vstd_default.
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
   (fuel_bool_default fuel%vstd!seq.axiom_seq_subrange_decreases.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_ext_equal.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_ext_equal_deep.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_subrange_len.)
   (fuel_bool_default fuel%vstd!seq.axiom_seq_subrange_index.)
)))
(assert
 (=>
  (fuel_bool_default fuel%vstd!std_specs.vec.group_vec_axioms.)
  (and
   (fuel_bool_default fuel%vstd!std_specs.vec.axiom_spec_len.)
   (fuel_bool_default fuel%vstd!std_specs.vec.axiom_vec_index_decreases.)
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
(declare-fun proj%%vstd!pervasive.ForLoopGhostIterator./ExecIter (Dcr Type) Dcr)
(declare-fun proj%vstd!pervasive.ForLoopGhostIterator./ExecIter (Dcr Type) Type)
(declare-fun proj%%vstd!pervasive.ForLoopGhostIterator./Item (Dcr Type) Dcr)
(declare-fun proj%vstd!pervasive.ForLoopGhostIterator./Item (Dcr Type) Type)
(declare-fun proj%%vstd!pervasive.ForLoopGhostIterator./Decrease (Dcr Type) Dcr)
(declare-fun proj%vstd!pervasive.ForLoopGhostIterator./Decrease (Dcr Type) Type)
(declare-fun proj%%vstd!pervasive.ForLoopGhostIteratorNew./GhostIter (Dcr Type) Dcr)
(declare-fun proj%vstd!pervasive.ForLoopGhostIteratorNew./GhostIter (Dcr Type) Type)
(declare-fun proj%%vstd!view.View./V (Dcr Type) Dcr)
(declare-fun proj%vstd!view.View./V (Dcr Type) Type)

;; Datatypes
(declare-sort alloc!vec.Vec<u8./allocator_global%.>. 0)
(declare-sort vstd!raw_ptr.DynMetadata. 0)
(declare-sort vstd!raw_ptr.Provenance. 0)
(declare-sort allocator_global%. 0)
(declare-datatypes ((core!option.Option. 0) (core!marker.PhantomData. 0) (vstd!raw_ptr.Metadata.
   0
  ) (vstd!raw_ptr.PtrData. 0) (test_crate!VecIterCopy. 0) (test_crate!VecGhostIterCopy.
   0
  ) (tuple%0. 0)
 ) (((core!option.Option./None) (core!option.Option./Some (core!option.Option./Some/?0
     Poly
   ))
  ) ((core!marker.PhantomData./PhantomData)) ((vstd!raw_ptr.Metadata./Thin) (vstd!raw_ptr.Metadata./Length
    (vstd!raw_ptr.Metadata./Length/?0 Int)
   ) (vstd!raw_ptr.Metadata./Dyn (vstd!raw_ptr.Metadata./Dyn/?0 vstd!raw_ptr.DynMetadata.))
  ) ((vstd!raw_ptr.PtrData./PtrData (vstd!raw_ptr.PtrData./PtrData/?addr Int) (vstd!raw_ptr.PtrData./PtrData/?provenance
     vstd!raw_ptr.Provenance.
    ) (vstd!raw_ptr.PtrData./PtrData/?metadata vstd!raw_ptr.Metadata.)
   )
  ) ((test_crate!VecIterCopy./VecIterCopy (test_crate!VecIterCopy./VecIterCopy/?vec Poly)
    (test_crate!VecIterCopy./VecIterCopy/?cur Int)
   )
  ) ((test_crate!VecGhostIterCopy./VecGhostIterCopy (test_crate!VecGhostIterCopy./VecGhostIterCopy/?seq
     Poly
    ) (test_crate!VecGhostIterCopy./VecGhostIterCopy/?cur Int) (test_crate!VecGhostIterCopy./VecGhostIterCopy/?phantom
     core!marker.PhantomData.
   ))
  ) ((tuple%0./tuple%0))
))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun vstd!raw_ptr.Metadata./Length/0 (vstd!raw_ptr.Metadata.) Int)
(declare-fun vstd!raw_ptr.Metadata./Dyn/0 (vstd!raw_ptr.Metadata.) vstd!raw_ptr.DynMetadata.)
(declare-fun vstd!raw_ptr.PtrData./PtrData/addr (vstd!raw_ptr.PtrData.) Int)
(declare-fun vstd!raw_ptr.PtrData./PtrData/provenance (vstd!raw_ptr.PtrData.) vstd!raw_ptr.Provenance.)
(declare-fun vstd!raw_ptr.PtrData./PtrData/metadata (vstd!raw_ptr.PtrData.) vstd!raw_ptr.Metadata.)
(declare-fun test_crate!VecIterCopy./VecIterCopy/vec (test_crate!VecIterCopy.) Poly)
(declare-fun test_crate!VecIterCopy./VecIterCopy/cur (test_crate!VecIterCopy.) Int)
(declare-fun test_crate!VecGhostIterCopy./VecGhostIterCopy/seq (test_crate!VecGhostIterCopy.)
 Poly
)
(declare-fun test_crate!VecGhostIterCopy./VecGhostIterCopy/cur (test_crate!VecGhostIterCopy.)
 Int
)
(declare-fun test_crate!VecGhostIterCopy./VecGhostIterCopy/phantom (test_crate!VecGhostIterCopy.)
 core!marker.PhantomData.
)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-fun TYPE%core!marker.PhantomData. (Dcr Type) Type)
(declare-fun TYPE%alloc!vec.Vec. (Dcr Type Dcr Type) Type)
(declare-const TYPE%vstd!raw_ptr.Provenance. Type)
(declare-const TYPE%vstd!raw_ptr.Metadata. Type)
(declare-const TYPE%vstd!raw_ptr.DynMetadata. Type)
(declare-const TYPE%vstd!raw_ptr.PtrData. Type)
(declare-fun TYPE%vstd!seq.Seq. (Dcr Type) Type)
(declare-fun TYPE%test_crate!VecIterCopy. (Dcr Type) Type)
(declare-fun TYPE%test_crate!VecGhostIterCopy. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%alloc!vec.Vec<u8./allocator_global%.>. (alloc!vec.Vec<u8./allocator_global%.>.)
 Poly
)
(declare-fun %Poly%alloc!vec.Vec<u8./allocator_global%.>. (Poly) alloc!vec.Vec<u8./allocator_global%.>.)
(declare-fun Poly%vstd!raw_ptr.DynMetadata. (vstd!raw_ptr.DynMetadata.) Poly)
(declare-fun %Poly%vstd!raw_ptr.DynMetadata. (Poly) vstd!raw_ptr.DynMetadata.)
(declare-fun Poly%vstd!raw_ptr.Provenance. (vstd!raw_ptr.Provenance.) Poly)
(declare-fun %Poly%vstd!raw_ptr.Provenance. (Poly) vstd!raw_ptr.Provenance.)
(declare-fun Poly%allocator_global%. (allocator_global%.) Poly)
(declare-fun %Poly%allocator_global%. (Poly) allocator_global%.)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
(declare-fun Poly%core!marker.PhantomData. (core!marker.PhantomData.) Poly)
(declare-fun %Poly%core!marker.PhantomData. (Poly) core!marker.PhantomData.)
(declare-fun Poly%vstd!raw_ptr.Metadata. (vstd!raw_ptr.Metadata.) Poly)
(declare-fun %Poly%vstd!raw_ptr.Metadata. (Poly) vstd!raw_ptr.Metadata.)
(declare-fun Poly%vstd!raw_ptr.PtrData. (vstd!raw_ptr.PtrData.) Poly)
(declare-fun %Poly%vstd!raw_ptr.PtrData. (Poly) vstd!raw_ptr.PtrData.)
(declare-fun Poly%test_crate!VecIterCopy. (test_crate!VecIterCopy.) Poly)
(declare-fun %Poly%test_crate!VecIterCopy. (Poly) test_crate!VecIterCopy.)
(declare-fun Poly%test_crate!VecGhostIterCopy. (test_crate!VecGhostIterCopy.) Poly)
(declare-fun %Poly%test_crate!VecGhostIterCopy. (Poly) test_crate!VecGhostIterCopy.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(assert
 (forall ((x alloc!vec.Vec<u8./allocator_global%.>.)) (!
   (= x (%Poly%alloc!vec.Vec<u8./allocator_global%.>. (Poly%alloc!vec.Vec<u8./allocator_global%.>.
      x
   )))
   :pattern ((Poly%alloc!vec.Vec<u8./allocator_global%.>. x))
   :qid internal_alloc__vec__Vec<u8./allocator_global__.>_box_axiom_definition
   :skolemid skolem_internal_alloc__vec__Vec<u8./allocator_global__.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL))
    (= x (Poly%alloc!vec.Vec<u8./allocator_global%.>. (%Poly%alloc!vec.Vec<u8./allocator_global%.>.
       x
   ))))
   :pattern ((has_type x (TYPE%alloc!vec.Vec. $ (UINT 8) $ ALLOCATOR_GLOBAL)))
   :qid internal_alloc__vec__Vec<u8./allocator_global__.>_unbox_axiom_definition
   :skolemid skolem_internal_alloc__vec__Vec<u8./allocator_global__.>_unbox_axiom_definition
)))
(assert
 (forall ((x alloc!vec.Vec<u8./allocator_global%.>.)) (!
   (has_type (Poly%alloc!vec.Vec<u8./allocator_global%.>. x) (TYPE%alloc!vec.Vec. $ (UINT
      8
     ) $ ALLOCATOR_GLOBAL
   ))
   :pattern ((has_type (Poly%alloc!vec.Vec<u8./allocator_global%.>. x) (TYPE%alloc!vec.Vec.
      $ (UINT 8) $ ALLOCATOR_GLOBAL
   )))
   :qid internal_alloc__vec__Vec<u8./allocator_global__.>_has_type_always_definition
   :skolemid skolem_internal_alloc__vec__Vec<u8./allocator_global__.>_has_type_always_definition
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
 (forall ((x core!marker.PhantomData.)) (!
   (= x (%Poly%core!marker.PhantomData. (Poly%core!marker.PhantomData. x)))
   :pattern ((Poly%core!marker.PhantomData. x))
   :qid internal_core__marker__PhantomData_box_axiom_definition
   :skolemid skolem_internal_core__marker__PhantomData_box_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!marker.PhantomData. V&. V&))
    (= x (Poly%core!marker.PhantomData. (%Poly%core!marker.PhantomData. x)))
   )
   :pattern ((has_type x (TYPE%core!marker.PhantomData. V&. V&)))
   :qid internal_core__marker__PhantomData_unbox_axiom_definition
   :skolemid skolem_internal_core__marker__PhantomData_unbox_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (x core!marker.PhantomData.)) (!
   (has_type (Poly%core!marker.PhantomData. x) (TYPE%core!marker.PhantomData. V&. V&))
   :pattern ((has_type (Poly%core!marker.PhantomData. x) (TYPE%core!marker.PhantomData.
      V&. V&
   )))
   :qid internal_core__marker__PhantomData_has_type_always_definition
   :skolemid skolem_internal_core__marker__PhantomData_has_type_always_definition
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
 (forall ((x test_crate!VecIterCopy.)) (!
   (= x (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy. x)))
   :pattern ((Poly%test_crate!VecIterCopy. x))
   :qid internal_test_crate__VecIterCopy_box_axiom_definition
   :skolemid skolem_internal_test_crate__VecIterCopy_box_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%test_crate!VecIterCopy. T&. T&))
    (= x (Poly%test_crate!VecIterCopy. (%Poly%test_crate!VecIterCopy. x)))
   )
   :pattern ((has_type x (TYPE%test_crate!VecIterCopy. T&. T&)))
   :qid internal_test_crate__VecIterCopy_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__VecIterCopy_unbox_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (_vec! Poly) (_cur! Int)) (!
   (=>
    (and
     (has_type _vec! (TYPE%alloc!vec.Vec. T&. T& $ ALLOCATOR_GLOBAL))
     (uInv SZ _cur!)
    )
    (has_type (Poly%test_crate!VecIterCopy. (test_crate!VecIterCopy./VecIterCopy _vec! _cur!))
     (TYPE%test_crate!VecIterCopy. T&. T&)
   ))
   :pattern ((has_type (Poly%test_crate!VecIterCopy. (test_crate!VecIterCopy./VecIterCopy
       _vec! _cur!
      )
     ) (TYPE%test_crate!VecIterCopy. T&. T&)
   ))
   :qid internal_test_crate!VecIterCopy./VecIterCopy_constructor_definition
   :skolemid skolem_internal_test_crate!VecIterCopy./VecIterCopy_constructor_definition
)))
(assert
 (forall ((x test_crate!VecIterCopy.)) (!
   (= (test_crate!VecIterCopy./VecIterCopy/vec x) (test_crate!VecIterCopy./VecIterCopy/?vec
     x
   ))
   :pattern ((test_crate!VecIterCopy./VecIterCopy/vec x))
   :qid internal_test_crate!VecIterCopy./VecIterCopy/vec_accessor_definition
   :skolemid skolem_internal_test_crate!VecIterCopy./VecIterCopy/vec_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%test_crate!VecIterCopy. T&. T&))
    (has_type (test_crate!VecIterCopy./VecIterCopy/vec (%Poly%test_crate!VecIterCopy. x))
     (TYPE%alloc!vec.Vec. T&. T& $ ALLOCATOR_GLOBAL)
   ))
   :pattern ((test_crate!VecIterCopy./VecIterCopy/vec (%Poly%test_crate!VecIterCopy. x))
    (has_type x (TYPE%test_crate!VecIterCopy. T&. T&))
   )
   :qid internal_test_crate!VecIterCopy./VecIterCopy/vec_invariant_definition
   :skolemid skolem_internal_test_crate!VecIterCopy./VecIterCopy/vec_invariant_definition
)))
(assert
 (forall ((x test_crate!VecIterCopy.)) (!
   (= (test_crate!VecIterCopy./VecIterCopy/cur x) (test_crate!VecIterCopy./VecIterCopy/?cur
     x
   ))
   :pattern ((test_crate!VecIterCopy./VecIterCopy/cur x))
   :qid internal_test_crate!VecIterCopy./VecIterCopy/cur_accessor_definition
   :skolemid skolem_internal_test_crate!VecIterCopy./VecIterCopy/cur_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%test_crate!VecIterCopy. T&. T&))
    (uInv SZ (test_crate!VecIterCopy./VecIterCopy/cur (%Poly%test_crate!VecIterCopy. x)))
   )
   :pattern ((test_crate!VecIterCopy./VecIterCopy/cur (%Poly%test_crate!VecIterCopy. x))
    (has_type x (TYPE%test_crate!VecIterCopy. T&. T&))
   )
   :qid internal_test_crate!VecIterCopy./VecIterCopy/cur_invariant_definition
   :skolemid skolem_internal_test_crate!VecIterCopy./VecIterCopy/cur_invariant_definition
)))
(assert
 (forall ((x test_crate!VecIterCopy.)) (!
   (=>
    (is-test_crate!VecIterCopy./VecIterCopy x)
    (height_lt (height (test_crate!VecIterCopy./VecIterCopy/vec x)) (height (Poly%test_crate!VecIterCopy.
       x
   ))))
   :pattern ((height (test_crate!VecIterCopy./VecIterCopy/vec x)))
   :qid prelude_datatype_height_test_crate!VecIterCopy./VecIterCopy/vec
   :skolemid skolem_prelude_datatype_height_test_crate!VecIterCopy./VecIterCopy/vec
)))
(assert
 (forall ((x test_crate!VecGhostIterCopy.)) (!
   (= x (%Poly%test_crate!VecGhostIterCopy. (Poly%test_crate!VecGhostIterCopy. x)))
   :pattern ((Poly%test_crate!VecGhostIterCopy. x))
   :qid internal_test_crate__VecGhostIterCopy_box_axiom_definition
   :skolemid skolem_internal_test_crate__VecGhostIterCopy_box_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%test_crate!VecGhostIterCopy. T&. T&))
    (= x (Poly%test_crate!VecGhostIterCopy. (%Poly%test_crate!VecGhostIterCopy. x)))
   )
   :pattern ((has_type x (TYPE%test_crate!VecGhostIterCopy. T&. T&)))
   :qid internal_test_crate__VecGhostIterCopy_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__VecGhostIterCopy_unbox_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (_seq! Poly) (_cur! Int) (_phantom! core!marker.PhantomData.))
  (!
   (=>
    (has_type _seq! (TYPE%vstd!seq.Seq. T&. T&))
    (has_type (Poly%test_crate!VecGhostIterCopy. (test_crate!VecGhostIterCopy./VecGhostIterCopy
       _seq! _cur! _phantom!
      )
     ) (TYPE%test_crate!VecGhostIterCopy. T&. T&)
   ))
   :pattern ((has_type (Poly%test_crate!VecGhostIterCopy. (test_crate!VecGhostIterCopy./VecGhostIterCopy
       _seq! _cur! _phantom!
      )
     ) (TYPE%test_crate!VecGhostIterCopy. T&. T&)
   ))
   :qid internal_test_crate!VecGhostIterCopy./VecGhostIterCopy_constructor_definition
   :skolemid skolem_internal_test_crate!VecGhostIterCopy./VecGhostIterCopy_constructor_definition
)))
(assert
 (forall ((x test_crate!VecGhostIterCopy.)) (!
   (= (test_crate!VecGhostIterCopy./VecGhostIterCopy/seq x) (test_crate!VecGhostIterCopy./VecGhostIterCopy/?seq
     x
   ))
   :pattern ((test_crate!VecGhostIterCopy./VecGhostIterCopy/seq x))
   :qid internal_test_crate!VecGhostIterCopy./VecGhostIterCopy/seq_accessor_definition
   :skolemid skolem_internal_test_crate!VecGhostIterCopy./VecGhostIterCopy/seq_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%test_crate!VecGhostIterCopy. T&. T&))
    (has_type (test_crate!VecGhostIterCopy./VecGhostIterCopy/seq (%Poly%test_crate!VecGhostIterCopy.
       x
      )
     ) (TYPE%vstd!seq.Seq. T&. T&)
   ))
   :pattern ((test_crate!VecGhostIterCopy./VecGhostIterCopy/seq (%Poly%test_crate!VecGhostIterCopy.
      x
     )
    ) (has_type x (TYPE%test_crate!VecGhostIterCopy. T&. T&))
   )
   :qid internal_test_crate!VecGhostIterCopy./VecGhostIterCopy/seq_invariant_definition
   :skolemid skolem_internal_test_crate!VecGhostIterCopy./VecGhostIterCopy/seq_invariant_definition
)))
(assert
 (forall ((x test_crate!VecGhostIterCopy.)) (!
   (= (test_crate!VecGhostIterCopy./VecGhostIterCopy/cur x) (test_crate!VecGhostIterCopy./VecGhostIterCopy/?cur
     x
   ))
   :pattern ((test_crate!VecGhostIterCopy./VecGhostIterCopy/cur x))
   :qid internal_test_crate!VecGhostIterCopy./VecGhostIterCopy/cur_accessor_definition
   :skolemid skolem_internal_test_crate!VecGhostIterCopy./VecGhostIterCopy/cur_accessor_definition
)))
(assert
 (forall ((x test_crate!VecGhostIterCopy.)) (!
   (= (test_crate!VecGhostIterCopy./VecGhostIterCopy/phantom x) (test_crate!VecGhostIterCopy./VecGhostIterCopy/?phantom
     x
   ))
   :pattern ((test_crate!VecGhostIterCopy./VecGhostIterCopy/phantom x))
   :qid internal_test_crate!VecGhostIterCopy./VecGhostIterCopy/phantom_accessor_definition
   :skolemid skolem_internal_test_crate!VecGhostIterCopy./VecGhostIterCopy/phantom_accessor_definition
)))
(assert
 (forall ((x test_crate!VecGhostIterCopy.)) (!
   (=>
    (is-test_crate!VecGhostIterCopy./VecGhostIterCopy x)
    (height_lt (height (test_crate!VecGhostIterCopy./VecGhostIterCopy/seq x)) (height (
       Poly%test_crate!VecGhostIterCopy. x
   ))))
   :pattern ((height (test_crate!VecGhostIterCopy./VecGhostIterCopy/seq x)))
   :qid prelude_datatype_height_test_crate!VecGhostIterCopy./VecGhostIterCopy/seq
   :skolemid skolem_prelude_datatype_height_test_crate!VecGhostIterCopy./VecGhostIterCopy/seq
)))
(assert
 (forall ((x test_crate!VecGhostIterCopy.)) (!
   (=>
    (is-test_crate!VecGhostIterCopy./VecGhostIterCopy x)
    (height_lt (height (Poly%core!marker.PhantomData. (test_crate!VecGhostIterCopy./VecGhostIterCopy/phantom
        x
      ))
     ) (height (Poly%test_crate!VecGhostIterCopy. x))
   ))
   :pattern ((height (Poly%core!marker.PhantomData. (test_crate!VecGhostIterCopy./VecGhostIterCopy/phantom
       x
   ))))
   :qid prelude_datatype_height_test_crate!VecGhostIterCopy./VecGhostIterCopy/phantom
   :skolemid skolem_prelude_datatype_height_test_crate!VecGhostIterCopy./VecGhostIterCopy/phantom
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
(declare-fun tr_bound%vstd!pervasive.ForLoopGhostIterator. (Dcr Type) Bool)
(declare-fun tr_bound%vstd!pervasive.ForLoopGhostIteratorNew. (Dcr Type) Bool)
(declare-fun tr_bound%vstd!view.View. (Dcr Type) Bool)
(declare-fun tr_bound%core!alloc.Allocator. (Dcr Type) Bool)
(declare-fun tr_bound%core!iter.traits.iterator.Iterator. (Dcr Type) Bool)
(declare-fun tr_bound%vstd!std_specs.vec.VecAdditionalSpecFns. (Dcr Type Dcr Type)
 Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%vstd!pervasive.ForLoopGhostIterator. Self%&. Self%&))
   :qid internal_vstd__pervasive__ForLoopGhostIterator_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__pervasive__ForLoopGhostIterator_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%vstd!pervasive.ForLoopGhostIteratorNew. Self%&. Self%&))
   :qid internal_vstd__pervasive__ForLoopGhostIteratorNew_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__pervasive__ForLoopGhostIteratorNew_trait_type_bounds_definition
)))
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
   :pattern ((tr_bound%core!alloc.Allocator. Self%&. Self%&))
   :qid internal_core__alloc__Allocator_trait_type_bounds_definition
   :skolemid skolem_internal_core__alloc__Allocator_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%core!iter.traits.iterator.Iterator. Self%&. Self%&))
   :qid internal_core__iter__traits__iterator__Iterator_trait_type_bounds_definition
   :skolemid skolem_internal_core__iter__traits__iterator__Iterator_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%vstd!std_specs.vec.VecAdditionalSpecFns. Self%&. Self%& T&. T&)
    (and
     (tr_bound%vstd!view.View. Self%&. Self%&)
     (and
      (= $ (proj%%vstd!view.View./V Self%&. Self%&))
      (= (TYPE%vstd!seq.Seq. T&. T&) (proj%vstd!view.View./V Self%&. Self%&))
   )))
   :pattern ((tr_bound%vstd!std_specs.vec.VecAdditionalSpecFns. Self%&. Self%& T&. T&))
   :qid internal_vstd__std_specs__vec__VecAdditionalSpecFns_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__std_specs__vec__VecAdditionalSpecFns_trait_type_bounds_definition
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
 (forall ((T&. Dcr) (T& Type) (A&. Dcr) (A& Type)) (!
   (= (proj%%vstd!view.View./V $ (TYPE%alloc!vec.Vec. T&. T& A&. A&)) $)
   :pattern ((proj%%vstd!view.View./V $ (TYPE%alloc!vec.Vec. T&. T& A&. A&)))
   :qid internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (A&. Dcr) (A& Type)) (!
   (= (proj%vstd!view.View./V $ (TYPE%alloc!vec.Vec. T&. T& A&. A&)) (TYPE%vstd!seq.Seq.
     T&. T&
   ))
   :pattern ((proj%vstd!view.View./V $ (TYPE%alloc!vec.Vec. T&. T& A&. A&)))
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
 (= (proj%%vstd!view.View./V $ (UINT SZ)) $)
)
(assert
 (= (proj%vstd!view.View./V $ (UINT SZ)) (UINT SZ))
)
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (= (proj%%vstd!pervasive.ForLoopGhostIteratorNew./GhostIter $ (TYPE%test_crate!VecIterCopy.
      T&. T&
     )
    ) $
   )
   :pattern ((proj%%vstd!pervasive.ForLoopGhostIteratorNew./GhostIter $ (TYPE%test_crate!VecIterCopy.
      T&. T&
   )))
   :qid internal_proj____vstd!pervasive.ForLoopGhostIteratorNew./GhostIter_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd!pervasive.ForLoopGhostIteratorNew./GhostIter_assoc_type_impl_true_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (= (proj%vstd!pervasive.ForLoopGhostIteratorNew./GhostIter $ (TYPE%test_crate!VecIterCopy.
      T&. T&
     )
    ) (TYPE%test_crate!VecGhostIterCopy. T&. T&)
   )
   :pattern ((proj%vstd!pervasive.ForLoopGhostIteratorNew./GhostIter $ (TYPE%test_crate!VecIterCopy.
      T&. T&
   )))
   :qid internal_proj__vstd!pervasive.ForLoopGhostIteratorNew./GhostIter_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd!pervasive.ForLoopGhostIteratorNew./GhostIter_assoc_type_impl_false_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (= (proj%%vstd!pervasive.ForLoopGhostIterator./ExecIter $ (TYPE%test_crate!VecGhostIterCopy.
      T&. T&
     )
    ) $
   )
   :pattern ((proj%%vstd!pervasive.ForLoopGhostIterator./ExecIter $ (TYPE%test_crate!VecGhostIterCopy.
      T&. T&
   )))
   :qid internal_proj____vstd!pervasive.ForLoopGhostIterator./ExecIter_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd!pervasive.ForLoopGhostIterator./ExecIter_assoc_type_impl_true_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (= (proj%vstd!pervasive.ForLoopGhostIterator./ExecIter $ (TYPE%test_crate!VecGhostIterCopy.
      T&. T&
     )
    ) (TYPE%test_crate!VecIterCopy. T&. T&)
   )
   :pattern ((proj%vstd!pervasive.ForLoopGhostIterator./ExecIter $ (TYPE%test_crate!VecGhostIterCopy.
      T&. T&
   )))
   :qid internal_proj__vstd!pervasive.ForLoopGhostIterator./ExecIter_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd!pervasive.ForLoopGhostIterator./ExecIter_assoc_type_impl_false_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (= (proj%%vstd!pervasive.ForLoopGhostIterator./Item $ (TYPE%test_crate!VecGhostIterCopy.
      T&. T&
     )
    ) T&.
   )
   :pattern ((proj%%vstd!pervasive.ForLoopGhostIterator./Item $ (TYPE%test_crate!VecGhostIterCopy.
      T&. T&
   )))
   :qid internal_proj____vstd!pervasive.ForLoopGhostIterator./Item_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd!pervasive.ForLoopGhostIterator./Item_assoc_type_impl_true_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (= (proj%vstd!pervasive.ForLoopGhostIterator./Item $ (TYPE%test_crate!VecGhostIterCopy.
      T&. T&
     )
    ) T&
   )
   :pattern ((proj%vstd!pervasive.ForLoopGhostIterator./Item $ (TYPE%test_crate!VecGhostIterCopy.
      T&. T&
   )))
   :qid internal_proj__vstd!pervasive.ForLoopGhostIterator./Item_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd!pervasive.ForLoopGhostIterator./Item_assoc_type_impl_false_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (= (proj%%vstd!pervasive.ForLoopGhostIterator./Decrease $ (TYPE%test_crate!VecGhostIterCopy.
      T&. T&
     )
    ) $
   )
   :pattern ((proj%%vstd!pervasive.ForLoopGhostIterator./Decrease $ (TYPE%test_crate!VecGhostIterCopy.
      T&. T&
   )))
   :qid internal_proj____vstd!pervasive.ForLoopGhostIterator./Decrease_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd!pervasive.ForLoopGhostIterator./Decrease_assoc_type_impl_true_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (= (proj%vstd!pervasive.ForLoopGhostIterator./Decrease $ (TYPE%test_crate!VecGhostIterCopy.
      T&. T&
     )
    ) INT
   )
   :pattern ((proj%vstd!pervasive.ForLoopGhostIterator./Decrease $ (TYPE%test_crate!VecGhostIterCopy.
      T&. T&
   )))
   :qid internal_proj__vstd!pervasive.ForLoopGhostIterator./Decrease_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd!pervasive.ForLoopGhostIterator./Decrease_assoc_type_impl_false_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (= (proj%%vstd!view.View./V $ (TYPE%test_crate!VecGhostIterCopy. T&. T&)) $)
   :pattern ((proj%%vstd!view.View./V $ (TYPE%test_crate!VecGhostIterCopy. T&. T&)))
   :qid internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd!view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (= (proj%vstd!view.View./V $ (TYPE%test_crate!VecGhostIterCopy. T&. T&)) (TYPE%vstd!seq.Seq.
     T&. T&
   ))
   :pattern ((proj%vstd!view.View./V $ (TYPE%test_crate!VecGhostIterCopy. T&. T&)))
   :qid internal_proj__vstd!view.View./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd!view.View./V_assoc_type_impl_false_definition
)))

;; Function-Decl vstd::view::View::view
(declare-fun vstd!view.View.view.? (Dcr Type Poly) Poly)
(declare-fun vstd!view.View.view%default%.? (Dcr Type Poly) Poly)

;; Function-Decl vstd::seq::Seq::len
(declare-fun vstd!seq.Seq.len.? (Dcr Type Poly) Int)

;; Function-Decl vstd::std_specs::vec::VecAdditionalSpecFns::spec_index
(declare-fun vstd!std_specs.vec.VecAdditionalSpecFns.spec_index.? (Dcr Type Dcr Type
  Poly Poly
 ) Poly
)
(declare-fun vstd!std_specs.vec.VecAdditionalSpecFns.spec_index%default%.? (Dcr Type
  Dcr Type Poly Poly
 ) Poly
)

;; Function-Decl vstd::std_specs::option::is_none
(declare-fun vstd!std_specs.option.is_none.? (Dcr Type Poly) Bool)

;; Function-Decl vstd::std_specs::option::spec_unwrap_or
(declare-fun vstd!std_specs.option.spec_unwrap_or.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::seq::Seq::index
(declare-fun vstd!seq.Seq.index.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::std_specs::vec::spec_vec_len
(declare-fun vstd!std_specs.vec.spec_vec_len.? (Dcr Type Dcr Type Poly) Int)

;; Function-Decl vstd::pervasive::ForLoopGhostIterator::exec_invariant
(declare-fun vstd!pervasive.ForLoopGhostIterator.exec_invariant.? (Dcr Type Poly Poly)
 Poly
)
(declare-fun vstd!pervasive.ForLoopGhostIterator.exec_invariant%default%.? (Dcr Type
  Poly Poly
 ) Poly
)

;; Function-Decl vstd::pervasive::ForLoopGhostIterator::ghost_invariant
(declare-fun vstd!pervasive.ForLoopGhostIterator.ghost_invariant.? (Dcr Type Poly Poly)
 Poly
)
(declare-fun vstd!pervasive.ForLoopGhostIterator.ghost_invariant%default%.? (Dcr Type
  Poly Poly
 ) Poly
)

;; Function-Decl vstd::pervasive::ForLoopGhostIterator::ghost_ensures
(declare-fun vstd!pervasive.ForLoopGhostIterator.ghost_ensures.? (Dcr Type Poly) Poly)
(declare-fun vstd!pervasive.ForLoopGhostIterator.ghost_ensures%default%.? (Dcr Type
  Poly
 ) Poly
)

;; Function-Decl vstd::pervasive::ForLoopGhostIterator::ghost_decrease
(declare-fun vstd!pervasive.ForLoopGhostIterator.ghost_decrease.? (Dcr Type Poly)
 Poly
)
(declare-fun vstd!pervasive.ForLoopGhostIterator.ghost_decrease%default%.? (Dcr Type
  Poly
 ) Poly
)

;; Function-Decl vstd::pervasive::ForLoopGhostIterator::ghost_peek_next
(declare-fun vstd!pervasive.ForLoopGhostIterator.ghost_peek_next.? (Dcr Type Poly)
 Poly
)
(declare-fun vstd!pervasive.ForLoopGhostIterator.ghost_peek_next%default%.? (Dcr Type
  Poly
 ) Poly
)

;; Function-Decl vstd::pervasive::ForLoopGhostIterator::ghost_advance
(declare-fun vstd!pervasive.ForLoopGhostIterator.ghost_advance.? (Dcr Type Poly Poly)
 Poly
)
(declare-fun vstd!pervasive.ForLoopGhostIterator.ghost_advance%default%.? (Dcr Type
  Poly Poly
 ) Poly
)

;; Function-Decl vstd::pervasive::ForLoopGhostIteratorNew::ghost_iter
(declare-fun vstd!pervasive.ForLoopGhostIteratorNew.ghost_iter.? (Dcr Type Poly) Poly)
(declare-fun vstd!pervasive.ForLoopGhostIteratorNew.ghost_iter%default%.? (Dcr Type
  Poly
 ) Poly
)

;; Function-Decl vstd::pervasive::arbitrary
(declare-fun vstd!pervasive.arbitrary.? (Dcr Type) Poly)

;; Function-Decl vstd::raw_ptr::view_reverse_for_eq
(declare-fun vstd!raw_ptr.view_reverse_for_eq.? (Dcr Type Poly) Poly)

;; Function-Decl vstd::seq::Seq::subrange
(declare-fun vstd!seq.Seq.subrange.? (Dcr Type Poly Poly Poly) Poly)

;; Function-Decl vstd::seq::impl&%0::spec_index
(declare-fun vstd!seq.impl&%0.spec_index.? (Dcr Type Poly Poly) Poly)

;; Function-Decl test_crate::spec_phantom_data
(declare-fun test_crate!spec_phantom_data.? (Dcr Type) core!marker.PhantomData.)

;; Function-Decl vstd::std_specs::core::iter_into_iter_spec
(declare-fun vstd!std_specs.core.iter_into_iter_spec.? (Dcr Type Poly) Poly)

;; Function-Decl test_crate::vec_iter_copy_spec
(declare-fun test_crate!vec_iter_copy_spec.? (Dcr Type Poly) test_crate!VecIterCopy.)

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

;; Function-Specs vstd::std_specs::vec::VecAdditionalSpecFns::spec_index
(declare-fun req%vstd!std_specs.vec.VecAdditionalSpecFns.spec_index. (Dcr Type Dcr
  Type Poly Poly
 ) Bool
)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly) (i! Poly)) (
   !
   (= (req%vstd!std_specs.vec.VecAdditionalSpecFns.spec_index. Self%&. Self%& T&. T& self!
     i!
    ) (=>
     %%global_location_label%%0
     (and
      (<= 0 (%I i!))
      (< (%I i!) (vstd!seq.Seq.len.? T&. T& (vstd!view.View.view.? Self%&. Self%& self!)))
   )))
   :pattern ((req%vstd!std_specs.vec.VecAdditionalSpecFns.spec_index. Self%&. Self%& T&.
     T& self! i!
   ))
   :qid internal_req__vstd!std_specs.vec.VecAdditionalSpecFns.spec_index._definition
   :skolemid skolem_internal_req__vstd!std_specs.vec.VecAdditionalSpecFns.spec_index._definition
)))

;; Function-Axioms vstd::std_specs::vec::VecAdditionalSpecFns::spec_index
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly) (i! Poly)) (
   !
   (=>
    (and
     (has_type self! Self%&)
     (has_type i! INT)
    )
    (has_type (vstd!std_specs.vec.VecAdditionalSpecFns.spec_index.? Self%&. Self%& T&.
      T& self! i!
     ) T&
   ))
   :pattern ((vstd!std_specs.vec.VecAdditionalSpecFns.spec_index.? Self%&. Self%& T&.
     T& self! i!
   ))
   :qid internal_vstd!std_specs.vec.VecAdditionalSpecFns.spec_index.?_pre_post_definition
   :skolemid skolem_internal_vstd!std_specs.vec.VecAdditionalSpecFns.spec_index.?_pre_post_definition
)))

;; Function-Specs core::iter::traits::collect::impl&%1::into_iter
(declare-fun ens%core!iter.traits.collect.impl&%1.into_iter. (Dcr Type Poly Poly)
 Bool
)
(assert
 (forall ((I&. Dcr) (I& Type) (i! Poly) (r! Poly)) (!
   (= (ens%core!iter.traits.collect.impl&%1.into_iter. I&. I& i! r!) (and
     (has_type r! I&)
     (= r! i!)
   ))
   :pattern ((ens%core!iter.traits.collect.impl&%1.into_iter. I&. I& i! r!))
   :qid internal_ens__core!iter.traits.collect.impl&__1.into_iter._definition
   :skolemid skolem_internal_ens__core!iter.traits.collect.impl&__1.into_iter._definition
)))

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

;; Function-Axioms vstd::std_specs::option::spec_unwrap_or
(assert
 (fuel_bool_default fuel%vstd!std_specs.option.spec_unwrap_or.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.option.spec_unwrap_or.)
  (forall ((T&. Dcr) (T& Type) (option! Poly) (default! Poly)) (!
    (= (vstd!std_specs.option.spec_unwrap_or.? T&. T& option! default!) (ite
      (is-core!option.Option./Some (%Poly%core!option.Option. option!))
      (let
       ((t$ (core!option.Option./Some/0 (%Poly%core!option.Option. option!))))
       t$
      )
      default!
    ))
    :pattern ((vstd!std_specs.option.spec_unwrap_or.? T&. T& option! default!))
    :qid internal_vstd!std_specs.option.spec_unwrap_or.?_definition
    :skolemid skolem_internal_vstd!std_specs.option.spec_unwrap_or.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (option! Poly) (default! Poly)) (!
   (=>
    (and
     (has_type option! (TYPE%core!option.Option. T&. T&))
     (has_type default! T&)
    )
    (has_type (vstd!std_specs.option.spec_unwrap_or.? T&. T& option! default!) T&)
   )
   :pattern ((vstd!std_specs.option.spec_unwrap_or.? T&. T& option! default!))
   :qid internal_vstd!std_specs.option.spec_unwrap_or.?_pre_post_definition
   :skolemid skolem_internal_vstd!std_specs.option.spec_unwrap_or.?_pre_post_definition
)))

;; Function-Specs vstd::seq::Seq::index
(declare-fun req%vstd!seq.Seq.index. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
   (= (req%vstd!seq.Seq.index. A&. A& self! i!) (=>
     %%global_location_label%%1
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

;; Function-Specs vstd::std_specs::vec::vec_index
(declare-fun req%vstd!std_specs.vec.vec_index. (Dcr Type Dcr Type Poly Int) Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (A&. Dcr) (A& Type) (vec! Poly) (i! Int)) (!
   (= (req%vstd!std_specs.vec.vec_index. T&. T& A&. A& vec! i!) (=>
     %%global_location_label%%2
     (< i! (vstd!seq.Seq.len.? T&. T& (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. T&. T&
         A&. A&
        ) vec!
   )))))
   :pattern ((req%vstd!std_specs.vec.vec_index. T&. T& A&. A& vec! i!))
   :qid internal_req__vstd!std_specs.vec.vec_index._definition
   :skolemid skolem_internal_req__vstd!std_specs.vec.vec_index._definition
)))
(declare-fun ens%vstd!std_specs.vec.vec_index. (Dcr Type Dcr Type Poly Int Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (A&. Dcr) (A& Type) (vec! Poly) (i! Int) (element! Poly))
  (!
   (= (ens%vstd!std_specs.vec.vec_index. T&. T& A&. A& vec! i! element!) (and
     (has_type element! T&)
     (= element! (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
         T&. T& A&. A&
        ) vec!
       ) (I i!)
   ))))
   :pattern ((ens%vstd!std_specs.vec.vec_index. T&. T& A&. A& vec! i! element!))
   :qid internal_ens__vstd!std_specs.vec.vec_index._definition
   :skolemid skolem_internal_ens__vstd!std_specs.vec.vec_index._definition
)))

;; Function-Axioms vstd::std_specs::vec::spec_vec_len
(assert
 (forall ((T&. Dcr) (T& Type) (A&. Dcr) (A& Type) (v! Poly)) (!
   (=>
    (has_type v! (TYPE%alloc!vec.Vec. T&. T& A&. A&))
    (uInv SZ (vstd!std_specs.vec.spec_vec_len.? T&. T& A&. A& v!))
   )
   :pattern ((vstd!std_specs.vec.spec_vec_len.? T&. T& A&. A& v!))
   :qid internal_vstd!std_specs.vec.spec_vec_len.?_pre_post_definition
   :skolemid skolem_internal_vstd!std_specs.vec.spec_vec_len.?_pre_post_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!alloc.Allocator. $ ALLOCATOR_GLOBAL)
)

;; Broadcast vstd::std_specs::vec::axiom_spec_len
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.vec.axiom_spec_len.)
  (forall ((A&. Dcr) (A& Type) (v! Poly)) (!
    (=>
     (has_type v! (TYPE%alloc!vec.Vec. A&. A& $ ALLOCATOR_GLOBAL))
     (= (vstd!std_specs.vec.spec_vec_len.? A&. A& $ ALLOCATOR_GLOBAL v!) (vstd!seq.Seq.len.?
       A&. A& (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. A&. A& $ ALLOCATOR_GLOBAL) v!)
    )))
    :pattern ((vstd!std_specs.vec.spec_vec_len.? A&. A& $ ALLOCATOR_GLOBAL v!))
    :qid user_vstd__std_specs__vec__axiom_spec_len_0
    :skolemid skolem_user_vstd__std_specs__vec__axiom_spec_len_0
))))

;; Function-Specs alloc::vec::impl&%1::len
(declare-fun ens%alloc!vec.impl&%1.len. (Dcr Type Dcr Type Poly Int) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (A&. Dcr) (A& Type) (vec! Poly) (len! Int)) (!
   (= (ens%alloc!vec.impl&%1.len. T&. T& A&. A& vec! len!) (and
     (uInv SZ len!)
     (= len! (vstd!std_specs.vec.spec_vec_len.? T&. T& A&. A& vec!))
   ))
   :pattern ((ens%alloc!vec.impl&%1.len. T&. T& A&. A& vec! len!))
   :qid internal_ens__alloc!vec.impl&__1.len._definition
   :skolemid skolem_internal_ens__alloc!vec.impl&__1.len._definition
)))

;; Function-Axioms vstd::std_specs::vec::impl&%0::spec_index
(assert
 (fuel_bool_default fuel%vstd!std_specs.vec.impl&%0.spec_index.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.vec.impl&%0.spec_index.)
  (forall ((T&. Dcr) (T& Type) (A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
    (=>
     (tr_bound%core!alloc.Allocator. A&. A&)
     (= (vstd!std_specs.vec.VecAdditionalSpecFns.spec_index.? $ (TYPE%alloc!vec.Vec. T&.
        T& A&. A&
       ) T&. T& self! i!
      ) (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. T&. T&
         A&. A&
        ) self!
       ) i!
    )))
    :pattern ((vstd!std_specs.vec.VecAdditionalSpecFns.spec_index.? $ (TYPE%alloc!vec.Vec.
       T&. T& A&. A&
      ) T&. T& self! i!
    ))
    :qid internal_vstd!std_specs.vec.VecAdditionalSpecFns.spec_index.?_definition
    :skolemid skolem_internal_vstd!std_specs.vec.VecAdditionalSpecFns.spec_index.?_definition
))))

;; Broadcast vstd::std_specs::vec::axiom_vec_index_decreases
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.vec.axiom_vec_index_decreases.)
  (forall ((A&. Dcr) (A& Type) (v! Poly) (i! Poly)) (!
    (=>
     (and
      (has_type v! (TYPE%alloc!vec.Vec. A&. A& $ ALLOCATOR_GLOBAL))
      (has_type i! INT)
     )
     (=>
      (and
       (<= 0 (%I i!))
       (< (%I i!) (vstd!std_specs.vec.spec_vec_len.? A&. A& $ ALLOCATOR_GLOBAL v!))
      )
      (height_lt (height (vstd!seq.Seq.index.? A&. A& (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
           A&. A& $ ALLOCATOR_GLOBAL
          ) v!
         ) i!
        )
       ) (height v!)
    )))
    :pattern ((height (vstd!seq.Seq.index.? A&. A& (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
         A&. A& $ ALLOCATOR_GLOBAL
        ) v!
       ) i!
    )))
    :qid user_vstd__std_specs__vec__axiom_vec_index_decreases_1
    :skolemid skolem_user_vstd__std_specs__vec__axiom_vec_index_decreases_1
))))

;; Function-Axioms vstd::pervasive::ForLoopGhostIterator::exec_invariant
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (exec_iter! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type exec_iter! (proj%vstd!pervasive.ForLoopGhostIterator./ExecIter Self%&. Self%&))
    )
    (has_type (vstd!pervasive.ForLoopGhostIterator.exec_invariant.? Self%&. Self%& self!
      exec_iter!
     ) BOOL
   ))
   :pattern ((vstd!pervasive.ForLoopGhostIterator.exec_invariant.? Self%&. Self%& self!
     exec_iter!
   ))
   :qid internal_vstd!pervasive.ForLoopGhostIterator.exec_invariant.?_pre_post_definition
   :skolemid skolem_internal_vstd!pervasive.ForLoopGhostIterator.exec_invariant.?_pre_post_definition
)))

;; Function-Axioms vstd::pervasive::ForLoopGhostIterator::ghost_invariant
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (init! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type init! (TYPE%core!option.Option. (REF Self%&.) Self%&))
    )
    (has_type (vstd!pervasive.ForLoopGhostIterator.ghost_invariant.? Self%&. Self%& self!
      init!
     ) BOOL
   ))
   :pattern ((vstd!pervasive.ForLoopGhostIterator.ghost_invariant.? Self%&. Self%& self!
     init!
   ))
   :qid internal_vstd!pervasive.ForLoopGhostIterator.ghost_invariant.?_pre_post_definition
   :skolemid skolem_internal_vstd!pervasive.ForLoopGhostIterator.ghost_invariant.?_pre_post_definition
)))

;; Function-Axioms vstd::pervasive::ForLoopGhostIterator::ghost_ensures
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd!pervasive.ForLoopGhostIterator.ghost_ensures.? Self%&. Self%& self!)
     BOOL
   ))
   :pattern ((vstd!pervasive.ForLoopGhostIterator.ghost_ensures.? Self%&. Self%& self!))
   :qid internal_vstd!pervasive.ForLoopGhostIterator.ghost_ensures.?_pre_post_definition
   :skolemid skolem_internal_vstd!pervasive.ForLoopGhostIterator.ghost_ensures.?_pre_post_definition
)))

;; Function-Axioms vstd::pervasive::ForLoopGhostIterator::ghost_decrease
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd!pervasive.ForLoopGhostIterator.ghost_decrease.? Self%&. Self%& self!)
     (TYPE%core!option.Option. (proj%%vstd!pervasive.ForLoopGhostIterator./Decrease Self%&.
       Self%&
      ) (proj%vstd!pervasive.ForLoopGhostIterator./Decrease Self%&. Self%&)
   )))
   :pattern ((vstd!pervasive.ForLoopGhostIterator.ghost_decrease.? Self%&. Self%& self!))
   :qid internal_vstd!pervasive.ForLoopGhostIterator.ghost_decrease.?_pre_post_definition
   :skolemid skolem_internal_vstd!pervasive.ForLoopGhostIterator.ghost_decrease.?_pre_post_definition
)))

;; Function-Axioms vstd::pervasive::ForLoopGhostIterator::ghost_peek_next
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd!pervasive.ForLoopGhostIterator.ghost_peek_next.? Self%&. Self%& self!)
     (TYPE%core!option.Option. (proj%%vstd!pervasive.ForLoopGhostIterator./Item Self%&.
       Self%&
      ) (proj%vstd!pervasive.ForLoopGhostIterator./Item Self%&. Self%&)
   )))
   :pattern ((vstd!pervasive.ForLoopGhostIterator.ghost_peek_next.? Self%&. Self%& self!))
   :qid internal_vstd!pervasive.ForLoopGhostIterator.ghost_peek_next.?_pre_post_definition
   :skolemid skolem_internal_vstd!pervasive.ForLoopGhostIterator.ghost_peek_next.?_pre_post_definition
)))

;; Function-Axioms vstd::pervasive::ForLoopGhostIterator::ghost_advance
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (exec_iter! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type exec_iter! (proj%vstd!pervasive.ForLoopGhostIterator./ExecIter Self%&. Self%&))
    )
    (has_type (vstd!pervasive.ForLoopGhostIterator.ghost_advance.? Self%&. Self%& self!
      exec_iter!
     ) Self%&
   ))
   :pattern ((vstd!pervasive.ForLoopGhostIterator.ghost_advance.? Self%&. Self%& self!
     exec_iter!
   ))
   :qid internal_vstd!pervasive.ForLoopGhostIterator.ghost_advance.?_pre_post_definition
   :skolemid skolem_internal_vstd!pervasive.ForLoopGhostIterator.ghost_advance.?_pre_post_definition
)))

;; Function-Axioms vstd::pervasive::ForLoopGhostIteratorNew::ghost_iter
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd!pervasive.ForLoopGhostIteratorNew.ghost_iter.? Self%&. Self%& self!)
     (proj%vstd!pervasive.ForLoopGhostIteratorNew./GhostIter Self%&. Self%&)
   ))
   :pattern ((vstd!pervasive.ForLoopGhostIteratorNew.ghost_iter.? Self%&. Self%& self!))
   :qid internal_vstd!pervasive.ForLoopGhostIteratorNew.ghost_iter.?_pre_post_definition
   :skolemid skolem_internal_vstd!pervasive.ForLoopGhostIteratorNew.ghost_iter.?_pre_post_definition
)))

;; Function-Axioms vstd::pervasive::arbitrary
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (has_type (vstd!pervasive.arbitrary.? A&. A&) A&)
   :pattern ((vstd!pervasive.arbitrary.? A&. A&))
   :qid internal_vstd!pervasive.arbitrary.?_pre_post_definition
   :skolemid skolem_internal_vstd!pervasive.arbitrary.?_pre_post_definition
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
    :qid user_vstd__raw_ptr__ptrs_mut_eq_2
    :skolemid skolem_user_vstd__raw_ptr__ptrs_mut_eq_2
))))

;; Function-Specs vstd::seq::Seq::subrange
(declare-fun req%vstd!seq.Seq.subrange. (Dcr Type Poly Poly Poly) Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (start_inclusive! Poly) (end_exclusive! Poly))
  (!
   (= (req%vstd!seq.Seq.subrange. A&. A& self! start_inclusive! end_exclusive!) (=>
     %%global_location_label%%3
     (and
      (and
       (<= 0 (%I start_inclusive!))
       (<= (%I start_inclusive!) (%I end_exclusive!))
      )
      (<= (%I end_exclusive!) (vstd!seq.Seq.len.? A&. A& self!))
   )))
   :pattern ((req%vstd!seq.Seq.subrange. A&. A& self! start_inclusive! end_exclusive!))
   :qid internal_req__vstd!seq.Seq.subrange._definition
   :skolemid skolem_internal_req__vstd!seq.Seq.subrange._definition
)))

;; Function-Axioms vstd::seq::Seq::subrange
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (start_inclusive! Poly) (end_exclusive! Poly))
  (!
   (=>
    (and
     (has_type self! (TYPE%vstd!seq.Seq. A&. A&))
     (has_type start_inclusive! INT)
     (has_type end_exclusive! INT)
    )
    (has_type (vstd!seq.Seq.subrange.? A&. A& self! start_inclusive! end_exclusive!) (
      TYPE%vstd!seq.Seq. A&. A&
   )))
   :pattern ((vstd!seq.Seq.subrange.? A&. A& self! start_inclusive! end_exclusive!))
   :qid internal_vstd!seq.Seq.subrange.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.subrange.?_pre_post_definition
)))

;; Function-Specs vstd::seq::impl&%0::spec_index
(declare-fun req%vstd!seq.impl&%0.spec_index. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
   (= (req%vstd!seq.impl&%0.spec_index. A&. A& self! i!) (=>
     %%global_location_label%%4
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
    :qid user_vstd__seq__axiom_seq_index_decreases_3
    :skolemid skolem_user_vstd__seq__axiom_seq_index_decreases_3
))))

;; Broadcast vstd::seq::axiom_seq_subrange_decreases
(assert
 (=>
  (fuel_bool fuel%vstd!seq.axiom_seq_subrange_decreases.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (i! Poly) (j! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd!seq.Seq. A&. A&))
      (has_type i! INT)
      (has_type j! INT)
     )
     (=>
      (and
       (and
        (and
         (<= 0 (%I i!))
         (<= (%I i!) (%I j!))
        )
        (<= (%I j!) (vstd!seq.Seq.len.? A&. A& s!))
       )
       (< (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s! i! j!)) (vstd!seq.Seq.len.?
         A&. A& s!
      )))
      (height_lt (height (vstd!seq.Seq.subrange.? A&. A& s! i! j!)) (height s!))
    ))
    :pattern ((height (vstd!seq.Seq.subrange.? A&. A& s! i! j!)))
    :qid user_vstd__seq__axiom_seq_subrange_decreases_4
    :skolemid skolem_user_vstd__seq__axiom_seq_subrange_decreases_4
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

;; Broadcast vstd::seq::axiom_seq_subrange_len
(assert
 (=>
  (fuel_bool fuel%vstd!seq.axiom_seq_subrange_len.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (j! Poly) (k! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd!seq.Seq. A&. A&))
      (has_type j! INT)
      (has_type k! INT)
     )
     (=>
      (and
       (and
        (<= 0 (%I j!))
        (<= (%I j!) (%I k!))
       )
       (<= (%I k!) (vstd!seq.Seq.len.? A&. A& s!))
      )
      (= (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s! j! k!)) (Sub (%I k!)
        (%I j!)
    ))))
    :pattern ((vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s! j! k!)))
    :qid user_vstd__seq__axiom_seq_subrange_len_9
    :skolemid skolem_user_vstd__seq__axiom_seq_subrange_len_9
))))

;; Broadcast vstd::seq::axiom_seq_subrange_index
(assert
 (=>
  (fuel_bool fuel%vstd!seq.axiom_seq_subrange_index.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (j! Poly) (k! Poly) (i! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd!seq.Seq. A&. A&))
      (has_type j! INT)
      (has_type k! INT)
      (has_type i! INT)
     )
     (=>
      (and
       (and
        (and
         (<= 0 (%I j!))
         (<= (%I j!) (%I k!))
        )
        (<= (%I k!) (vstd!seq.Seq.len.? A&. A& s!))
       )
       (and
        (<= 0 (%I i!))
        (< (%I i!) (Sub (%I k!) (%I j!)))
      ))
      (= (vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s! j! k!) i!) (vstd!seq.Seq.index.?
        A&. A& s! (I (Add (%I i!) (%I j!)))
    ))))
    :pattern ((vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s! j! k!) i!))
    :qid user_vstd__seq__axiom_seq_subrange_index_10
    :skolemid skolem_user_vstd__seq__axiom_seq_subrange_index_10
))))

;; Function-Axioms vstd::std_specs::core::iter_into_iter_spec
(assert
 (fuel_bool_default fuel%vstd!std_specs.core.iter_into_iter_spec.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.core.iter_into_iter_spec.)
  (forall ((I&. Dcr) (I& Type) (i! Poly)) (!
    (= (vstd!std_specs.core.iter_into_iter_spec.? I&. I& i!) i!)
    :pattern ((vstd!std_specs.core.iter_into_iter_spec.? I&. I& i!))
    :qid internal_vstd!std_specs.core.iter_into_iter_spec.?_definition
    :skolemid skolem_internal_vstd!std_specs.core.iter_into_iter_spec.?_definition
))))
(assert
 (forall ((I&. Dcr) (I& Type) (i! Poly)) (!
   (=>
    (has_type i! I&)
    (has_type (vstd!std_specs.core.iter_into_iter_spec.? I&. I& i!) I&)
   )
   :pattern ((vstd!std_specs.core.iter_into_iter_spec.? I&. I& i!))
   :qid internal_vstd!std_specs.core.iter_into_iter_spec.?_pre_post_definition
   :skolemid skolem_internal_vstd!std_specs.core.iter_into_iter_spec.?_pre_post_definition
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

;; Function-Axioms test_crate::VecIterCopy::ghost_iter
(assert
 (fuel_bool_default fuel%test_crate!impl&%1.ghost_iter.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%1.ghost_iter.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd!pervasive.ForLoopGhostIteratorNew.ghost_iter.? $ (TYPE%test_crate!VecIterCopy.
       T&. T&
      ) self!
     ) (Poly%test_crate!VecGhostIterCopy. (test_crate!VecGhostIterCopy./VecGhostIterCopy
       (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. T&. T& $ ALLOCATOR_GLOBAL) (test_crate!VecIterCopy./VecIterCopy/vec
         (%Poly%test_crate!VecIterCopy. self!)
        )
       ) (%I (I 0)) (%Poly%core!marker.PhantomData. (Poly%core!marker.PhantomData. (test_crate!spec_phantom_data.?
          (REF T&.) T&
    ))))))
    :pattern ((vstd!pervasive.ForLoopGhostIteratorNew.ghost_iter.? $ (TYPE%test_crate!VecIterCopy.
       T&. T&
      ) self!
    ))
    :qid internal_vstd!pervasive.ForLoopGhostIteratorNew.ghost_iter.?_definition
    :skolemid skolem_internal_vstd!pervasive.ForLoopGhostIteratorNew.ghost_iter.?_definition
))))

;; Function-Axioms test_crate::VecGhostIterCopy::exec_invariant
(assert
 (fuel_bool_default fuel%test_crate!impl&%2.exec_invariant.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%2.exec_invariant.)
  (forall ((T&. Dcr) (T& Type) (self! Poly) (exec_iter! Poly)) (!
    (= (vstd!pervasive.ForLoopGhostIterator.exec_invariant.? $ (TYPE%test_crate!VecGhostIterCopy.
       T&. T&
      ) self! exec_iter!
     ) (B (and
       (= (test_crate!VecGhostIterCopy./VecGhostIterCopy/seq (%Poly%test_crate!VecGhostIterCopy.
          self!
         )
        ) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. T&. T& $ ALLOCATOR_GLOBAL) (test_crate!VecIterCopy./VecIterCopy/vec
          (%Poly%test_crate!VecIterCopy. exec_iter!)
       )))
       (= (test_crate!VecGhostIterCopy./VecGhostIterCopy/cur (%Poly%test_crate!VecGhostIterCopy.
          self!
         )
        ) (test_crate!VecIterCopy./VecIterCopy/cur (%Poly%test_crate!VecIterCopy. exec_iter!))
    ))))
    :pattern ((vstd!pervasive.ForLoopGhostIterator.exec_invariant.? $ (TYPE%test_crate!VecGhostIterCopy.
       T&. T&
      ) self! exec_iter!
    ))
    :qid internal_vstd!pervasive.ForLoopGhostIterator.exec_invariant.?_definition
    :skolemid skolem_internal_vstd!pervasive.ForLoopGhostIterator.exec_invariant.?_definition
))))

;; Function-Axioms test_crate::VecGhostIterCopy::ghost_invariant
(assert
 (fuel_bool_default fuel%test_crate!impl&%2.ghost_invariant.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%2.ghost_invariant.)
  (forall ((T&. Dcr) (T& Type) (self! Poly) (init! Poly)) (!
    (= (vstd!pervasive.ForLoopGhostIterator.ghost_invariant.? $ (TYPE%test_crate!VecGhostIterCopy.
       T&. T&
      ) self! init!
     ) (B (and
       (let
        ((tmp%%$ (test_crate!VecGhostIterCopy./VecGhostIterCopy/cur (%Poly%test_crate!VecGhostIterCopy.
            self!
        ))))
        (and
         (<= 0 tmp%%$)
         (<= tmp%%$ (vstd!seq.Seq.len.? T&. T& (test_crate!VecGhostIterCopy./VecGhostIterCopy/seq
            (%Poly%test_crate!VecGhostIterCopy. self!)
       )))))
       (=>
        (is-core!option.Option./Some (%Poly%core!option.Option. init!))
        (let
         ((init$ (%Poly%test_crate!VecGhostIterCopy. (core!option.Option./Some/0 (%Poly%core!option.Option.
              init!
         )))))
         (= (test_crate!VecGhostIterCopy./VecGhostIterCopy/seq (%Poly%test_crate!VecGhostIterCopy.
            (Poly%test_crate!VecGhostIterCopy. init$)
           )
          ) (test_crate!VecGhostIterCopy./VecGhostIterCopy/seq (%Poly%test_crate!VecGhostIterCopy.
            self!
    ))))))))
    :pattern ((vstd!pervasive.ForLoopGhostIterator.ghost_invariant.? $ (TYPE%test_crate!VecGhostIterCopy.
       T&. T&
      ) self! init!
    ))
    :qid internal_vstd!pervasive.ForLoopGhostIterator.ghost_invariant.?_definition
    :skolemid skolem_internal_vstd!pervasive.ForLoopGhostIterator.ghost_invariant.?_definition
))))

;; Function-Axioms test_crate::VecGhostIterCopy::ghost_ensures
(assert
 (fuel_bool_default fuel%test_crate!impl&%2.ghost_ensures.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%2.ghost_ensures.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd!pervasive.ForLoopGhostIterator.ghost_ensures.? $ (TYPE%test_crate!VecGhostIterCopy.
       T&. T&
      ) self!
     ) (B (>= (test_crate!VecGhostIterCopy./VecGhostIterCopy/cur (%Poly%test_crate!VecGhostIterCopy.
         self!
        )
       ) (vstd!seq.Seq.len.? T&. T& (test_crate!VecGhostIterCopy./VecGhostIterCopy/seq (%Poly%test_crate!VecGhostIterCopy.
          self!
    ))))))
    :pattern ((vstd!pervasive.ForLoopGhostIterator.ghost_ensures.? $ (TYPE%test_crate!VecGhostIterCopy.
       T&. T&
      ) self!
    ))
    :qid internal_vstd!pervasive.ForLoopGhostIterator.ghost_ensures.?_definition
    :skolemid skolem_internal_vstd!pervasive.ForLoopGhostIterator.ghost_ensures.?_definition
))))

;; Function-Axioms test_crate::VecGhostIterCopy::ghost_decrease
(assert
 (fuel_bool_default fuel%test_crate!impl&%2.ghost_decrease.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%2.ghost_decrease.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd!pervasive.ForLoopGhostIterator.ghost_decrease.? $ (TYPE%test_crate!VecGhostIterCopy.
       T&. T&
      ) self!
     ) (Poly%core!option.Option. (core!option.Option./Some (I (Sub (vstd!seq.Seq.len.? T&.
          T& (test_crate!VecGhostIterCopy./VecGhostIterCopy/seq (%Poly%test_crate!VecGhostIterCopy.
            self!
          ))
         ) (test_crate!VecGhostIterCopy./VecGhostIterCopy/cur (%Poly%test_crate!VecGhostIterCopy.
           self!
    )))))))
    :pattern ((vstd!pervasive.ForLoopGhostIterator.ghost_decrease.? $ (TYPE%test_crate!VecGhostIterCopy.
       T&. T&
      ) self!
    ))
    :qid internal_vstd!pervasive.ForLoopGhostIterator.ghost_decrease.?_definition
    :skolemid skolem_internal_vstd!pervasive.ForLoopGhostIterator.ghost_decrease.?_definition
))))

;; Function-Axioms test_crate::VecGhostIterCopy::ghost_peek_next
(assert
 (fuel_bool_default fuel%test_crate!impl&%2.ghost_peek_next.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%2.ghost_peek_next.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd!pervasive.ForLoopGhostIterator.ghost_peek_next.? $ (TYPE%test_crate!VecGhostIterCopy.
       T&. T&
      ) self!
     ) (Poly%core!option.Option. (ite
       (let
        ((tmp%%$ (test_crate!VecGhostIterCopy./VecGhostIterCopy/cur (%Poly%test_crate!VecGhostIterCopy.
            self!
        ))))
        (and
         (<= 0 tmp%%$)
         (< tmp%%$ (vstd!seq.Seq.len.? T&. T& (test_crate!VecGhostIterCopy./VecGhostIterCopy/seq
            (%Poly%test_crate!VecGhostIterCopy. self!)
       )))))
       (core!option.Option./Some (vstd!seq.Seq.index.? T&. T& (test_crate!VecGhostIterCopy./VecGhostIterCopy/seq
          (%Poly%test_crate!VecGhostIterCopy. self!)
         ) (I (test_crate!VecGhostIterCopy./VecGhostIterCopy/cur (%Poly%test_crate!VecGhostIterCopy.
            self!
       )))))
       core!option.Option./None
    )))
    :pattern ((vstd!pervasive.ForLoopGhostIterator.ghost_peek_next.? $ (TYPE%test_crate!VecGhostIterCopy.
       T&. T&
      ) self!
    ))
    :qid internal_vstd!pervasive.ForLoopGhostIterator.ghost_peek_next.?_definition
    :skolemid skolem_internal_vstd!pervasive.ForLoopGhostIterator.ghost_peek_next.?_definition
))))

;; Function-Axioms test_crate::VecGhostIterCopy::ghost_advance
(assert
 (fuel_bool_default fuel%test_crate!impl&%2.ghost_advance.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%2.ghost_advance.)
  (forall ((T&. Dcr) (T& Type) (self! Poly) (_exec_iter! Poly)) (!
    (= (vstd!pervasive.ForLoopGhostIterator.ghost_advance.? $ (TYPE%test_crate!VecGhostIterCopy.
       T&. T&
      ) self! _exec_iter!
     ) (Poly%test_crate!VecGhostIterCopy. (test_crate!VecGhostIterCopy./VecGhostIterCopy
       (test_crate!VecGhostIterCopy./VecGhostIterCopy/seq (%Poly%test_crate!VecGhostIterCopy.
         self!
        )
       ) (%I (I (Add (test_crate!VecGhostIterCopy./VecGhostIterCopy/cur (%Poly%test_crate!VecGhostIterCopy.
            self!
           )
          ) 1
        ))
       ) (%Poly%core!marker.PhantomData. (Poly%core!marker.PhantomData. (test_crate!VecGhostIterCopy./VecGhostIterCopy/phantom
          (%Poly%test_crate!VecGhostIterCopy. self!)
    ))))))
    :pattern ((vstd!pervasive.ForLoopGhostIterator.ghost_advance.? $ (TYPE%test_crate!VecGhostIterCopy.
       T&. T&
      ) self! _exec_iter!
    ))
    :qid internal_vstd!pervasive.ForLoopGhostIterator.ghost_advance.?_definition
    :skolemid skolem_internal_vstd!pervasive.ForLoopGhostIterator.ghost_advance.?_definition
))))

;; Function-Axioms test_crate::VecGhostIterCopy::view
(assert
 (fuel_bool_default fuel%test_crate!impl&%3.view.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%3.view.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd!view.View.view.? $ (TYPE%test_crate!VecGhostIterCopy. T&. T&) self!) (vstd!seq.Seq.subrange.?
      T&. T& (test_crate!VecGhostIterCopy./VecGhostIterCopy/seq (%Poly%test_crate!VecGhostIterCopy.
        self!
       )
      ) (I 0) (I (test_crate!VecGhostIterCopy./VecGhostIterCopy/cur (%Poly%test_crate!VecGhostIterCopy.
         self!
    )))))
    :pattern ((vstd!view.View.view.? $ (TYPE%test_crate!VecGhostIterCopy. T&. T&) self!))
    :qid internal_vstd!view.View.view.?_definition
    :skolemid skolem_internal_vstd!view.View.view.?_definition
))))

;; Function-Axioms test_crate::vec_iter_copy_spec
(assert
 (fuel_bool_default fuel%test_crate!vec_iter_copy_spec.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!vec_iter_copy_spec.)
  (forall ((T&. Dcr) (T& Type) (vec! Poly)) (!
    (= (test_crate!vec_iter_copy_spec.? T&. T& vec!) (test_crate!VecIterCopy./VecIterCopy
      vec! (%I (I 0))
    ))
    :pattern ((test_crate!vec_iter_copy_spec.? T&. T& vec!))
    :qid internal_test_crate!vec_iter_copy_spec.?_definition
    :skolemid skolem_internal_test_crate!vec_iter_copy_spec.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (vec! Poly)) (!
   (=>
    (has_type vec! (TYPE%alloc!vec.Vec. T&. T& $ ALLOCATOR_GLOBAL))
    (has_type (Poly%test_crate!VecIterCopy. (test_crate!vec_iter_copy_spec.? T&. T& vec!))
     (TYPE%test_crate!VecIterCopy. T&. T&)
   ))
   :pattern ((test_crate!vec_iter_copy_spec.? T&. T& vec!))
   :qid internal_test_crate!vec_iter_copy_spec.?_pre_post_definition
   :skolemid skolem_internal_test_crate!vec_iter_copy_spec.?_pre_post_definition
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
 (forall ((T&. Dcr) (T& Type) (A&. Dcr) (A& Type)) (!
   (=>
    (tr_bound%core!alloc.Allocator. A&. A&)
    (tr_bound%vstd!view.View. $ (TYPE%alloc!vec.Vec. T&. T& A&. A&))
   )
   :pattern ((tr_bound%vstd!view.View. $ (TYPE%alloc!vec.Vec. T&. T& A&. A&)))
   :qid internal_vstd__view__impl&__8_trait_impl_definition
   :skolemid skolem_internal_vstd__view__impl&__8_trait_impl_definition
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
 (tr_bound%vstd!view.View. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (A&. Dcr) (A& Type)) (!
   (=>
    (tr_bound%core!alloc.Allocator. A&. A&)
    (tr_bound%vstd!std_specs.vec.VecAdditionalSpecFns. $ (TYPE%alloc!vec.Vec. T&. T& A&.
      A&
     ) T&. T&
   ))
   :pattern ((tr_bound%vstd!std_specs.vec.VecAdditionalSpecFns. $ (TYPE%alloc!vec.Vec.
      T&. T& A&. A&
     ) T&. T&
   ))
   :qid internal_vstd__std_specs__vec__impl&__0_trait_impl_definition
   :skolemid skolem_internal_vstd__std_specs__vec__impl&__0_trait_impl_definition
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
   (tr_bound%core!iter.traits.iterator.Iterator. $ (TYPE%test_crate!VecIterCopy. T&. T&))
   :pattern ((tr_bound%core!iter.traits.iterator.Iterator. $ (TYPE%test_crate!VecIterCopy.
      T&. T&
   )))
   :qid internal_test_crate__impl&__0_trait_impl_definition
   :skolemid skolem_internal_test_crate__impl&__0_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%vstd!pervasive.ForLoopGhostIteratorNew. $ (TYPE%test_crate!VecIterCopy. T&.
     T&
   ))
   :pattern ((tr_bound%vstd!pervasive.ForLoopGhostIteratorNew. $ (TYPE%test_crate!VecIterCopy.
      T&. T&
   )))
   :qid internal_test_crate__impl&__1_trait_impl_definition
   :skolemid skolem_internal_test_crate__impl&__1_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%vstd!pervasive.ForLoopGhostIterator. $ (TYPE%test_crate!VecGhostIterCopy.
     T&. T&
   ))
   :pattern ((tr_bound%vstd!pervasive.ForLoopGhostIterator. $ (TYPE%test_crate!VecGhostIterCopy.
      T&. T&
   )))
   :qid internal_test_crate__impl&__2_trait_impl_definition
   :skolemid skolem_internal_test_crate__impl&__2_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%vstd!view.View. $ (TYPE%test_crate!VecGhostIterCopy. T&. T&))
   :pattern ((tr_bound%vstd!view.View. $ (TYPE%test_crate!VecGhostIterCopy. T&. T&)))
   :qid internal_test_crate__impl&__3_trait_impl_definition
   :skolemid skolem_internal_test_crate__impl&__3_trait_impl_definition
)))

;; Function-Specs test_crate::VecIterCopy::next
(declare-fun ens%test_crate!impl&%0.next. (Dcr Type test_crate!VecIterCopy. test_crate!VecIterCopy.
  core!option.Option.
 ) Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (pre%self! test_crate!VecIterCopy.) (self! test_crate!VecIterCopy.)
   (item! core!option.Option.)
  ) (!
   (= (ens%test_crate!impl&%0.next. T&. T& pre%self! self! item!) (and
     (has_type (Poly%core!option.Option. item!) (TYPE%core!option.Option. T&. T&))
     (has_type (Poly%test_crate!VecIterCopy. self!) (TYPE%test_crate!VecIterCopy. T&. T&))
     (= (test_crate!VecIterCopy./VecIterCopy/vec (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy.
         self!
       ))
      ) (test_crate!VecIterCopy./VecIterCopy/vec (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy.
         pre%self!
     ))))
     (=>
      (< (test_crate!VecIterCopy./VecIterCopy/cur (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy.
          pre%self!
        ))
       ) (vstd!std_specs.vec.spec_vec_len.? T&. T& $ ALLOCATOR_GLOBAL (test_crate!VecIterCopy./VecIterCopy/vec
         (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy. self!))
      )))
      (= (test_crate!VecIterCopy./VecIterCopy/cur (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy.
          self!
        ))
       ) (Add (test_crate!VecIterCopy./VecIterCopy/cur (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy.
           pre%self!
         ))
        ) 1
     )))
     (=>
      (< (test_crate!VecIterCopy./VecIterCopy/cur (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy.
          pre%self!
        ))
       ) (vstd!std_specs.vec.spec_vec_len.? T&. T& $ ALLOCATOR_GLOBAL (test_crate!VecIterCopy./VecIterCopy/vec
         (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy. self!))
      )))
      (= item! (core!option.Option./Some (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.?
          $ (TYPE%alloc!vec.Vec. T&. T& $ ALLOCATOR_GLOBAL) (test_crate!VecIterCopy./VecIterCopy/vec
           (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy. self!))
          )
         ) (I (test_crate!VecIterCopy./VecIterCopy/cur (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy.
             pre%self!
     ))))))))
     (=>
      (>= (test_crate!VecIterCopy./VecIterCopy/cur (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy.
          pre%self!
        ))
       ) (vstd!std_specs.vec.spec_vec_len.? T&. T& $ ALLOCATOR_GLOBAL (test_crate!VecIterCopy./VecIterCopy/vec
         (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy. self!))
      )))
      (and
       (is-core!option.Option./None item!)
       (= (test_crate!VecIterCopy./VecIterCopy/cur (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy.
           self!
         ))
        ) (test_crate!VecIterCopy./VecIterCopy/cur (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy.
           pre%self!
   ))))))))
   :pattern ((ens%test_crate!impl&%0.next. T&. T& pre%self! self! item!))
   :qid internal_ens__test_crate!impl&__0.next._definition
   :skolemid skolem_internal_ens__test_crate!impl&__0.next._definition
)))

;; Function-Def test_crate::VecIterCopy::next
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/loops_no_spinoff-c00882ddee9f0402-for_loop_vec_custom_iterator/test.rs:29:5: 29:43 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const item! core!option.Option.)
 (declare-const self!@0 test_crate!VecIterCopy.)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Poly)
 (declare-const tmp%3 Poly)
 (declare-const tmp%4 Int)
 (declare-const tmp%5 Int)
 (declare-const item@ Poly)
 (declare-const tmp%6 core!option.Option.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%test_crate!VecIterCopy. self!@0) (TYPE%test_crate!VecIterCopy. T&.
    T&
 )))
 (declare-const self!@1 test_crate!VecIterCopy.)
 (declare-const %%switch_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; possible arithmetic underflow/overflow
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%5 Bool)
 (assert
  (not (=>
    (= tmp%2 (test_crate!VecIterCopy./VecIterCopy/vec (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy.
        self!@0
    ))))
    (=>
     (ens%alloc!vec.impl&%1.len. T&. T& $ ALLOCATOR_GLOBAL tmp%2 tmp%1)
     (or
      (and
       (=>
        (< (test_crate!VecIterCopy./VecIterCopy/cur (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy.
            self!@0
          ))
         ) tmp%1
        )
        (=>
         (= tmp%3 (test_crate!VecIterCopy./VecIterCopy/vec (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy.
             self!@0
         ))))
         (=>
          (= tmp%4 (test_crate!VecIterCopy./VecIterCopy/cur (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy.
              self!@0
          ))))
          (and
           (=>
            %%location_label%%0
            (req%vstd!std_specs.vec.vec_index. T&. T& $ ALLOCATOR_GLOBAL tmp%3 tmp%4)
           )
           (=>
            (ens%vstd!std_specs.vec.vec_index. T&. T& $ ALLOCATOR_GLOBAL tmp%3 tmp%4 item@)
            (and
             (=>
              %%location_label%%1
              (uInv SZ (Add (test_crate!VecIterCopy./VecIterCopy/cur (%Poly%test_crate!VecIterCopy.
                  (Poly%test_crate!VecIterCopy. self!@0)
                 )
                ) 1
             )))
             (=>
              (= tmp%5 (uClip SZ (Add (test_crate!VecIterCopy./VecIterCopy/cur (%Poly%test_crate!VecIterCopy.
                   (Poly%test_crate!VecIterCopy. self!@0)
                  )
                 ) 1
              )))
              (=>
               (= (test_crate!VecIterCopy./VecIterCopy/cur (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy.
                   self!@1
                 ))
                ) tmp%5
               )
               (=>
                (and
                 (= (test_crate!VecIterCopy./VecIterCopy/vec self!@0) (test_crate!VecIterCopy./VecIterCopy/vec
                   self!@1
                )))
                (=>
                 (= tmp%6 (core!option.Option./Some item@))
                 %%switch_label%%0
       ))))))))))
       (=>
        (not (< (test_crate!VecIterCopy./VecIterCopy/cur (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy.
             self!@0
           ))
          ) tmp%1
        ))
        (=>
         (= tmp%6 core!option.Option./None)
         (=>
          (= self!@1 self!@0)
          %%switch_label%%0
      ))))
      (and
       (not %%switch_label%%0)
       (=>
        (= item! tmp%6)
        (and
         (=>
          %%location_label%%2
          (= (test_crate!VecIterCopy./VecIterCopy/vec (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy.
              self!@1
            ))
           ) (test_crate!VecIterCopy./VecIterCopy/vec (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy.
              self!@0
         )))))
         (and
          (=>
           %%location_label%%3
           (=>
            (< (test_crate!VecIterCopy./VecIterCopy/cur (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy.
                self!@0
              ))
             ) (vstd!std_specs.vec.spec_vec_len.? T&. T& $ ALLOCATOR_GLOBAL (test_crate!VecIterCopy./VecIterCopy/vec
               (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy. self!@1))
            )))
            (= (test_crate!VecIterCopy./VecIterCopy/cur (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy.
                self!@1
              ))
             ) (Add (test_crate!VecIterCopy./VecIterCopy/cur (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy.
                 self!@0
               ))
              ) 1
          ))))
          (and
           (=>
            %%location_label%%4
            (=>
             (< (test_crate!VecIterCopy./VecIterCopy/cur (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy.
                 self!@0
               ))
              ) (vstd!std_specs.vec.spec_vec_len.? T&. T& $ ALLOCATOR_GLOBAL (test_crate!VecIterCopy./VecIterCopy/vec
                (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy. self!@1))
             )))
             (= item! (core!option.Option./Some (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.?
                 $ (TYPE%alloc!vec.Vec. T&. T& $ ALLOCATOR_GLOBAL) (test_crate!VecIterCopy./VecIterCopy/vec
                  (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy. self!@1))
                 )
                ) (I (test_crate!VecIterCopy./VecIterCopy/cur (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy.
                    self!@0
           )))))))))
           (=>
            %%location_label%%5
            (=>
             (>= (test_crate!VecIterCopy./VecIterCopy/cur (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy.
                 self!@0
               ))
              ) (vstd!std_specs.vec.spec_vec_len.? T&. T& $ ALLOCATOR_GLOBAL (test_crate!VecIterCopy./VecIterCopy/vec
                (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy. self!@1))
             )))
             (and
              (is-core!option.Option./None item!)
              (= (test_crate!VecIterCopy./VecIterCopy/cur (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy.
                  self!@1
                ))
               ) (test_crate!VecIterCopy./VecIterCopy/cur (%Poly%test_crate!VecIterCopy. (Poly%test_crate!VecIterCopy.
                  self!@0
 )))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::vec_iter_copy
(declare-fun ens%test_crate!vec_iter_copy. (Dcr Type Poly test_crate!VecIterCopy.)
 Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (vec! Poly) (iter! test_crate!VecIterCopy.)) (!
   (= (ens%test_crate!vec_iter_copy. T&. T& vec! iter!) (and
     (has_type (Poly%test_crate!VecIterCopy. iter!) (TYPE%test_crate!VecIterCopy. T&. T&))
     (= iter! (test_crate!VecIterCopy./VecIterCopy vec! (%I (I 0))))
   ))
   :pattern ((ens%test_crate!vec_iter_copy. T&. T& vec! iter!))
   :qid internal_ens__test_crate!vec_iter_copy._definition
   :skolemid skolem_internal_ens__test_crate!vec_iter_copy._definition
)))

;; Function-Def test_crate::vec_iter_copy
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/loops_no_spinoff-c00882ddee9f0402-for_loop_vec_custom_iterator/test.rs:117:1: 117:74 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const iter! test_crate!VecIterCopy.)
 (declare-const vec! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type vec! (TYPE%alloc!vec.Vec. T&. T& $ ALLOCATOR_GLOBAL))
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= iter! (test_crate!VecIterCopy./VecIterCopy vec! (%I (I 0))))
    (=>
     %%location_label%%0
     (= iter! (test_crate!VecIterCopy./VecIterCopy vec! (%I (I 0))))
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::all_positive
(declare-fun ens%test_crate!all_positive. (alloc!vec.Vec<u8./allocator_global%.>. Bool)
 Bool
)
(assert
 (forall ((v! alloc!vec.Vec<u8./allocator_global%.>.) (b! Bool)) (!
   (= (ens%test_crate!all_positive. v! b!) (= b! (forall ((i$ Poly)) (!
       (=>
        (has_type i$ INT)
        (=>
         (and
          (<= 0 (%I i$))
          (< (%I i$) (vstd!std_specs.vec.spec_vec_len.? $ (UINT 8) $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<u8./allocator_global%.>.
             v!
         ))))
         (> (%I (vstd!seq.Seq.index.? $ (UINT 8) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
              $ (UINT 8) $ ALLOCATOR_GLOBAL
             ) (Poly%alloc!vec.Vec<u8./allocator_global%.>. v!)
            ) i$
           )
          ) 0
       )))
       :pattern ((vstd!seq.Seq.index.? $ (UINT 8) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
           $ (UINT 8) $ ALLOCATOR_GLOBAL
          ) (Poly%alloc!vec.Vec<u8./allocator_global%.>. v!)
         ) i$
       ))
       :qid user_test_crate__all_positive_11
       :skolemid skolem_user_test_crate__all_positive_11
   ))))
   :pattern ((ens%test_crate!all_positive. v! b!))
   :qid internal_ens__test_crate!all_positive._definition
   :skolemid skolem_internal_ens__test_crate!all_positive._definition
)))

;; Function-Def test_crate::all_positive
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/loops_no_spinoff-c00882ddee9f0402-for_loop_vec_custom_iterator/test.rs:124:1: 124:41 (#0)
(get-info :all-statistics)
(push)
 (declare-const b! Bool)
 (declare-const v! alloc!vec.Vec<u8./allocator_global%.>.)
 (declare-const tmp%1 test_crate!VecIterCopy.)
 (declare-const tmp%2 Poly)
 (declare-const VERUS_loop_val@ Int)
 (declare-const tmp%%$1@ core!option.Option.)
 (declare-const VERUS_loop_next@0 Int)
 (declare-const x@ Int)
 (declare-const tmp%%$2@ tuple%0.)
 (declare-const iter@0 test_crate!VecGhostIterCopy.)
 (declare-const VERUS_exec_iter@0 test_crate!VecIterCopy.)
 (declare-const tmp%%@ test_crate!VecIterCopy.)
 (declare-const VERUS_loop_result@ tuple%0.)
 (declare-const b@0 Bool)
 (assert
  fuel_defaults
 )
 (declare-const iter@1 test_crate!VecGhostIterCopy.)
 (declare-const VERUS_exec_iter@1 test_crate!VecIterCopy.)
 (declare-const VERUS_loop_next@1 Int)
 (declare-const b@1 Bool)
 (declare-const iter@2 test_crate!VecGhostIterCopy.)
 (declare-const VERUS_exec_iter@2 test_crate!VecIterCopy.)
 (declare-const VERUS_loop_next@2 Int)
 (declare-const b@2 Bool)
 (declare-const iter@3 test_crate!VecGhostIterCopy.)
 (declare-const %%break_label%%break_label%0 Bool)
 (declare-const %%switch_label%%0 Bool)
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%0 Bool)
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%1 Bool)
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; invariant not satisfied at end of loop body
 (declare-const %%location_label%%4 Bool)
 ;; invariant not satisfied at end of loop body
 (declare-const %%location_label%%5 Bool)
 ;; invariant not satisfied at end of loop body
 (declare-const %%location_label%%6 Bool)
 (assert
  (not (=>
    (= b@0 true)
    (=>
     (ens%test_crate!vec_iter_copy. $ (UINT 8) (Poly%alloc!vec.Vec<u8./allocator_global%.>.
       v!
      ) tmp%1
     )
     (=>
      (ens%core!iter.traits.collect.impl&%1.into_iter. $ (TYPE%test_crate!VecIterCopy. $
        (UINT 8)
       ) (Poly%test_crate!VecIterCopy. tmp%1) tmp%2
      )
      (=>
       (= tmp%%@ (%Poly%test_crate!VecIterCopy. tmp%2))
       (=>
        (= VERUS_exec_iter@0 tmp%%@)
        (=>
         (= iter@1 (%Poly%test_crate!VecGhostIterCopy. (vstd!pervasive.ForLoopGhostIteratorNew.ghost_iter.?
            $ (TYPE%test_crate!VecIterCopy. $ (UINT 8)) (Poly%test_crate!VecIterCopy. VERUS_exec_iter@0)
         )))
         (and
          (=>
           %%location_label%%0
           (%B (vstd!pervasive.ForLoopGhostIterator.exec_invariant.? $ (TYPE%test_crate!VecGhostIterCopy.
              $ (UINT 8)
             ) (Poly%test_crate!VecGhostIterCopy. iter@1) (Poly%test_crate!VecIterCopy. VERUS_exec_iter@0)
          )))
          (and
           (=>
            %%location_label%%1
            (%B (vstd!pervasive.ForLoopGhostIterator.ghost_invariant.? $ (TYPE%test_crate!VecGhostIterCopy.
               $ (UINT 8)
              ) (Poly%test_crate!VecGhostIterCopy. iter@1) (Poly%core!option.Option. (core!option.Option./Some
                (vstd!pervasive.ForLoopGhostIteratorNew.ghost_iter.? $ (TYPE%test_crate!VecIterCopy.
                  $ (UINT 8)
                 ) (vstd!std_specs.core.iter_into_iter_spec.? $ (TYPE%test_crate!VecIterCopy. $ (UINT
                    8
                   )
                  ) (Poly%test_crate!VecIterCopy. (test_crate!vec_iter_copy_spec.? $ (UINT 8) (Poly%alloc!vec.Vec<u8./allocator_global%.>.
                     v!
           ))))))))))
           (and
            (=>
             %%location_label%%2
             (let
              ((x$ (ite
                 (is-core!option.Option./Some (%Poly%core!option.Option. (vstd!pervasive.ForLoopGhostIterator.ghost_peek_next.?
                    $ (TYPE%test_crate!VecGhostIterCopy. $ (UINT 8)) (Poly%test_crate!VecGhostIterCopy.
                     iter@1
                 ))))
                 (let
                  ((t$$0 (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (vstd!pervasive.ForLoopGhostIterator.ghost_peek_next.?
                        $ (TYPE%test_crate!VecGhostIterCopy. $ (UINT 8)) (Poly%test_crate!VecGhostIterCopy.
                         iter@1
                  )))))))
                  t$$0
                 )
                 (%I (vstd!pervasive.arbitrary.? $ (UINT 8)))
              )))
              (= b@0 (forall ((i$ Poly)) (!
                 (=>
                  (has_type i$ INT)
                  (=>
                   (and
                    (<= 0 (%I i$))
                    (< (%I i$) (test_crate!VecGhostIterCopy./VecGhostIterCopy/cur (%Poly%test_crate!VecGhostIterCopy.
                       (Poly%test_crate!VecGhostIterCopy. iter@1)
                   ))))
                   (> (%I (vstd!seq.Seq.index.? $ (UINT 8) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
                        $ (UINT 8) $ ALLOCATOR_GLOBAL
                       ) (Poly%alloc!vec.Vec<u8./allocator_global%.>. v!)
                      ) i$
                     )
                    ) 0
                 )))
                 :pattern ((vstd!seq.Seq.index.? $ (UINT 8) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
                     $ (UINT 8) $ ALLOCATOR_GLOBAL
                    ) (Poly%alloc!vec.Vec<u8./allocator_global%.>. v!)
                   ) i$
                 ))
                 :qid user_test_crate__all_positive_13
                 :skolemid skolem_user_test_crate__all_positive_13
            )))))
            (or
             (and
              (not %%break_label%%break_label%0)
              (=>
               (= VERUS_loop_result@ tuple%0./tuple%0)
               (=>
                (= b! b@2)
                (=>
                 %%location_label%%3
                 (= b! (forall ((i$ Poly)) (!
                    (=>
                     (has_type i$ INT)
                     (=>
                      (and
                       (<= 0 (%I i$))
                       (< (%I i$) (vstd!std_specs.vec.spec_vec_len.? $ (UINT 8) $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<u8./allocator_global%.>.
                          v!
                      ))))
                      (> (%I (vstd!seq.Seq.index.? $ (UINT 8) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
                           $ (UINT 8) $ ALLOCATOR_GLOBAL
                          ) (Poly%alloc!vec.Vec<u8./allocator_global%.>. v!)
                         ) i$
                        )
                       ) 0
                    )))
                    :pattern ((vstd!seq.Seq.index.? $ (UINT 8) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
                        $ (UINT 8) $ ALLOCATOR_GLOBAL
                       ) (Poly%alloc!vec.Vec<u8./allocator_global%.>. v!)
                      ) i$
                    ))
                    :qid user_test_crate__all_positive_12
                    :skolemid skolem_user_test_crate__all_positive_12
             )))))))
             (=>
              (has_type (Poly%test_crate!VecIterCopy. VERUS_exec_iter@1) (TYPE%test_crate!VecIterCopy.
                $ (UINT 8)
              ))
              (=>
               (has_type (Poly%test_crate!VecGhostIterCopy. iter@2) (TYPE%test_crate!VecGhostIterCopy.
                 $ (UINT 8)
               ))
               (=>
                (%B (vstd!pervasive.ForLoopGhostIterator.exec_invariant.? $ (TYPE%test_crate!VecGhostIterCopy.
                   $ (UINT 8)
                  ) (Poly%test_crate!VecGhostIterCopy. iter@2) (Poly%test_crate!VecIterCopy. VERUS_exec_iter@1)
                ))
                (=>
                 (%B (vstd!pervasive.ForLoopGhostIterator.ghost_invariant.? $ (TYPE%test_crate!VecGhostIterCopy.
                    $ (UINT 8)
                   ) (Poly%test_crate!VecGhostIterCopy. iter@2) (Poly%core!option.Option. (core!option.Option./Some
                     (vstd!pervasive.ForLoopGhostIteratorNew.ghost_iter.? $ (TYPE%test_crate!VecIterCopy.
                       $ (UINT 8)
                      ) (vstd!std_specs.core.iter_into_iter_spec.? $ (TYPE%test_crate!VecIterCopy. $ (UINT
                         8
                        )
                       ) (Poly%test_crate!VecIterCopy. (test_crate!vec_iter_copy_spec.? $ (UINT 8) (Poly%alloc!vec.Vec<u8./allocator_global%.>.
                          v!
                 )))))))))
                 (=>
                  (let
                   ((x$ (ite
                      (is-core!option.Option./Some (%Poly%core!option.Option. (vstd!pervasive.ForLoopGhostIterator.ghost_peek_next.?
                         $ (TYPE%test_crate!VecGhostIterCopy. $ (UINT 8)) (Poly%test_crate!VecGhostIterCopy.
                          iter@2
                      ))))
                      (let
                       ((t$$0 (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (vstd!pervasive.ForLoopGhostIterator.ghost_peek_next.?
                             $ (TYPE%test_crate!VecGhostIterCopy. $ (UINT 8)) (Poly%test_crate!VecGhostIterCopy.
                              iter@2
                       )))))))
                       t$$0
                      )
                      (%I (vstd!pervasive.arbitrary.? $ (UINT 8)))
                   )))
                   (= b@1 (forall ((i$ Poly)) (!
                      (=>
                       (has_type i$ INT)
                       (=>
                        (and
                         (<= 0 (%I i$))
                         (< (%I i$) (test_crate!VecGhostIterCopy./VecGhostIterCopy/cur (%Poly%test_crate!VecGhostIterCopy.
                            (Poly%test_crate!VecGhostIterCopy. iter@2)
                        ))))
                        (> (%I (vstd!seq.Seq.index.? $ (UINT 8) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
                             $ (UINT 8) $ ALLOCATOR_GLOBAL
                            ) (Poly%alloc!vec.Vec<u8./allocator_global%.>. v!)
                           ) i$
                          )
                         ) 0
                      )))
                      :pattern ((vstd!seq.Seq.index.? $ (UINT 8) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
                          $ (UINT 8) $ ALLOCATOR_GLOBAL
                         ) (Poly%alloc!vec.Vec<u8./allocator_global%.>. v!)
                        ) i$
                      ))
                      :qid user_test_crate__all_positive_13
                      :skolemid skolem_user_test_crate__all_positive_13
                  ))))
                  (=>
                   (has_type (Poly%test_crate!VecIterCopy. VERUS_exec_iter@2) (TYPE%test_crate!VecIterCopy.
                     $ (UINT 8)
                   ))
                   (=>
                    (ens%test_crate!impl&%0.next. $ (UINT 8) VERUS_exec_iter@1 VERUS_exec_iter@2 tmp%%$1@)
                    (or
                     (and
                      (=>
                       (is-core!option.Option./Some tmp%%$1@)
                       (=>
                        (= VERUS_loop_val@ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                             tmp%%$1@
                        )))))
                        (=>
                         (= VERUS_loop_next@2 VERUS_loop_val@)
                         %%switch_label%%0
                      )))
                      (=>
                       (not (is-core!option.Option./Some tmp%%$1@))
                       (=>
                        (= VERUS_loop_next@2 VERUS_loop_next@1)
                        (=>
                         (= iter@3 iter@2)
                         (=>
                          (= b@2 b@1)
                          %%break_label%%break_label%0
                     )))))
                     (and
                      (not %%switch_label%%0)
                      (=>
                       (= x@ VERUS_loop_next@2)
                       (=>
                        (= b@2 (and
                          b@1
                          (> x@ 0)
                        ))
                        (=>
                         (= tmp%%$2@ tuple%0./tuple%0)
                         (=>
                          (= iter@3 (%Poly%test_crate!VecGhostIterCopy. (vstd!pervasive.ForLoopGhostIterator.ghost_advance.?
                             $ (TYPE%test_crate!VecGhostIterCopy. $ (UINT 8)) (Poly%test_crate!VecGhostIterCopy.
                              iter@2
                             ) (Poly%test_crate!VecIterCopy. VERUS_exec_iter@2)
                          )))
                          (and
                           (=>
                            %%location_label%%4
                            (%B (vstd!pervasive.ForLoopGhostIterator.exec_invariant.? $ (TYPE%test_crate!VecGhostIterCopy.
                               $ (UINT 8)
                              ) (Poly%test_crate!VecGhostIterCopy. iter@3) (Poly%test_crate!VecIterCopy. VERUS_exec_iter@2)
                           )))
                           (and
                            (=>
                             %%location_label%%5
                             (%B (vstd!pervasive.ForLoopGhostIterator.ghost_invariant.? $ (TYPE%test_crate!VecGhostIterCopy.
                                $ (UINT 8)
                               ) (Poly%test_crate!VecGhostIterCopy. iter@3) (Poly%core!option.Option. (core!option.Option./Some
                                 (vstd!pervasive.ForLoopGhostIteratorNew.ghost_iter.? $ (TYPE%test_crate!VecIterCopy.
                                   $ (UINT 8)
                                  ) (vstd!std_specs.core.iter_into_iter_spec.? $ (TYPE%test_crate!VecIterCopy. $ (UINT
                                     8
                                    )
                                   ) (Poly%test_crate!VecIterCopy. (test_crate!vec_iter_copy_spec.? $ (UINT 8) (Poly%alloc!vec.Vec<u8./allocator_global%.>.
                                      v!
                            ))))))))))
                            (=>
                             %%location_label%%6
                             (let
                              ((x$ (ite
                                 (is-core!option.Option./Some (%Poly%core!option.Option. (vstd!pervasive.ForLoopGhostIterator.ghost_peek_next.?
                                    $ (TYPE%test_crate!VecGhostIterCopy. $ (UINT 8)) (Poly%test_crate!VecGhostIterCopy.
                                     iter@3
                                 ))))
                                 (let
                                  ((t$$0 (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (vstd!pervasive.ForLoopGhostIterator.ghost_peek_next.?
                                        $ (TYPE%test_crate!VecGhostIterCopy. $ (UINT 8)) (Poly%test_crate!VecGhostIterCopy.
                                         iter@3
                                  )))))))
                                  t$$0
                                 )
                                 (%I (vstd!pervasive.arbitrary.? $ (UINT 8)))
                              )))
                              (= b@2 (forall ((i$ Poly)) (!
                                 (=>
                                  (has_type i$ INT)
                                  (=>
                                   (and
                                    (<= 0 (%I i$))
                                    (< (%I i$) (test_crate!VecGhostIterCopy./VecGhostIterCopy/cur (%Poly%test_crate!VecGhostIterCopy.
                                       (Poly%test_crate!VecGhostIterCopy. iter@3)
                                   ))))
                                   (> (%I (vstd!seq.Seq.index.? $ (UINT 8) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
                                        $ (UINT 8) $ ALLOCATOR_GLOBAL
                                       ) (Poly%alloc!vec.Vec<u8./allocator_global%.>. v!)
                                      ) i$
                                     )
                                    ) 0
                                 )))
                                 :pattern ((vstd!seq.Seq.index.? $ (UINT 8) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
                                     $ (UINT 8) $ ALLOCATOR_GLOBAL
                                    ) (Poly%alloc!vec.Vec<u8./allocator_global%.>. v!)
                                   ) i$
                                 ))
                                 :qid user_test_crate__all_positive_13
                                 :skolemid skolem_user_test_crate__all_positive_13
 ))))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
