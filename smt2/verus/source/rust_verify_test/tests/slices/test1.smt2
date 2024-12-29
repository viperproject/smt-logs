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
(declare-const fuel%vstd!std_specs.vec.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd!std_specs.vec.axiom_spec_len. FuelId)
(declare-const fuel%vstd!std_specs.vec.axiom_vec_index_decreases. FuelId)
(declare-const fuel%vstd!raw_ptr.impl&%4.view. FuelId)
(declare-const fuel%vstd!raw_ptr.ptrs_mut_eq. FuelId)
(declare-const fuel%vstd!seq.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_index_decreases. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_ext_equal. FuelId)
(declare-const fuel%vstd!seq.axiom_seq_ext_equal_deep. FuelId)
(declare-const fuel%vstd!slice.impl&%2.spec_index. FuelId)
(declare-const fuel%vstd!view.impl&%0.view. FuelId)
(declare-const fuel%vstd!view.impl&%2.view. FuelId)
(declare-const fuel%vstd!view.impl&%4.view. FuelId)
(declare-const fuel%vstd!view.impl&%6.view. FuelId)
(declare-const fuel%vstd!view.impl&%10.view. FuelId)
(declare-const fuel%vstd!view.impl&%12.view. FuelId)
(declare-const fuel%vstd!view.impl&%20.view. FuelId)
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
(declare-const fuel%vstd!std_specs.range.group_range_axioms. FuelId)
(declare-const fuel%vstd!std_specs.vec.group_vec_axioms. FuelId)
(declare-const fuel%vstd!group_vstd_default. FuelId)
(assert
 (distinct fuel%vstd!std_specs.vec.impl&%0.spec_index. fuel%vstd!std_specs.vec.axiom_spec_len.
  fuel%vstd!std_specs.vec.axiom_vec_index_decreases. fuel%vstd!raw_ptr.impl&%4.view.
  fuel%vstd!raw_ptr.ptrs_mut_eq. fuel%vstd!seq.impl&%0.spec_index. fuel%vstd!seq.axiom_seq_index_decreases.
  fuel%vstd!seq.axiom_seq_ext_equal. fuel%vstd!seq.axiom_seq_ext_equal_deep. fuel%vstd!slice.impl&%2.spec_index.
  fuel%vstd!view.impl&%0.view. fuel%vstd!view.impl&%2.view. fuel%vstd!view.impl&%4.view.
  fuel%vstd!view.impl&%6.view. fuel%vstd!view.impl&%10.view. fuel%vstd!view.impl&%12.view.
  fuel%vstd!view.impl&%20.view. fuel%vstd!view.impl&%24.view. fuel%vstd!array.group_array_axioms.
  fuel%vstd!map.group_map_axioms. fuel%vstd!multiset.group_multiset_axioms. fuel%vstd!raw_ptr.group_raw_ptr_axioms.
  fuel%vstd!seq.group_seq_axioms. fuel%vstd!seq_lib.group_seq_lib_default. fuel%vstd!set.group_set_axioms.
  fuel%vstd!set_lib.group_set_lib_axioms. fuel%vstd!slice.group_slice_axioms. fuel%vstd!string.group_string_axioms.
  fuel%vstd!std_specs.bits.group_bits_axioms. fuel%vstd!std_specs.control_flow.group_control_flow_axioms.
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
(declare-fun proj%%vstd!view.View./V (Dcr Type) Dcr)
(declare-fun proj%vstd!view.View./V (Dcr Type) Type)

;; Datatypes
(declare-sort alloc!vec.Vec<u64./allocator_global%.>. 0)
(declare-sort vstd!raw_ptr.DynMetadata. 0)
(declare-sort vstd!raw_ptr.Provenance. 0)
(declare-sort vstd!seq.Seq<u64.>. 0)
(declare-sort slice%<u64.>. 0)
(declare-sort allocator_global%. 0)
(declare-datatypes ((vstd!raw_ptr.Metadata. 0) (vstd!raw_ptr.PtrData. 0) (tuple%0. 0))
 (((vstd!raw_ptr.Metadata./Thin) (vstd!raw_ptr.Metadata./Length (vstd!raw_ptr.Metadata./Length/?0
     Int
    )
   ) (vstd!raw_ptr.Metadata./Dyn (vstd!raw_ptr.Metadata./Dyn/?0 vstd!raw_ptr.DynMetadata.))
  ) ((vstd!raw_ptr.PtrData./PtrData (vstd!raw_ptr.PtrData./PtrData/?addr Int) (vstd!raw_ptr.PtrData./PtrData/?provenance
     vstd!raw_ptr.Provenance.
    ) (vstd!raw_ptr.PtrData./PtrData/?metadata vstd!raw_ptr.Metadata.)
   )
  ) ((tuple%0./tuple%0))
))
(declare-fun vstd!raw_ptr.Metadata./Length/0 (vstd!raw_ptr.Metadata.) Int)
(declare-fun vstd!raw_ptr.Metadata./Dyn/0 (vstd!raw_ptr.Metadata.) vstd!raw_ptr.DynMetadata.)
(declare-fun vstd!raw_ptr.PtrData./PtrData/addr (vstd!raw_ptr.PtrData.) Int)
(declare-fun vstd!raw_ptr.PtrData./PtrData/provenance (vstd!raw_ptr.PtrData.) vstd!raw_ptr.Provenance.)
(declare-fun vstd!raw_ptr.PtrData./PtrData/metadata (vstd!raw_ptr.PtrData.) vstd!raw_ptr.Metadata.)
(declare-fun TYPE%alloc!vec.Vec. (Dcr Type Dcr Type) Type)
(declare-const TYPE%vstd!raw_ptr.Provenance. Type)
(declare-const TYPE%vstd!raw_ptr.Metadata. Type)
(declare-const TYPE%vstd!raw_ptr.DynMetadata. Type)
(declare-const TYPE%vstd!raw_ptr.PtrData. Type)
(declare-fun TYPE%vstd!seq.Seq. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%alloc!vec.Vec<u64./allocator_global%.>. (alloc!vec.Vec<u64./allocator_global%.>.)
 Poly
)
(declare-fun %Poly%alloc!vec.Vec<u64./allocator_global%.>. (Poly) alloc!vec.Vec<u64./allocator_global%.>.)
(declare-fun Poly%vstd!raw_ptr.DynMetadata. (vstd!raw_ptr.DynMetadata.) Poly)
(declare-fun %Poly%vstd!raw_ptr.DynMetadata. (Poly) vstd!raw_ptr.DynMetadata.)
(declare-fun Poly%vstd!raw_ptr.Provenance. (vstd!raw_ptr.Provenance.) Poly)
(declare-fun %Poly%vstd!raw_ptr.Provenance. (Poly) vstd!raw_ptr.Provenance.)
(declare-fun Poly%vstd!seq.Seq<u64.>. (vstd!seq.Seq<u64.>.) Poly)
(declare-fun %Poly%vstd!seq.Seq<u64.>. (Poly) vstd!seq.Seq<u64.>.)
(declare-fun Poly%slice%<u64.>. (slice%<u64.>.) Poly)
(declare-fun %Poly%slice%<u64.>. (Poly) slice%<u64.>.)
(declare-fun Poly%allocator_global%. (allocator_global%.) Poly)
(declare-fun %Poly%allocator_global%. (Poly) allocator_global%.)
(declare-fun Poly%vstd!raw_ptr.Metadata. (vstd!raw_ptr.Metadata.) Poly)
(declare-fun %Poly%vstd!raw_ptr.Metadata. (Poly) vstd!raw_ptr.Metadata.)
(declare-fun Poly%vstd!raw_ptr.PtrData. (vstd!raw_ptr.PtrData.) Poly)
(declare-fun %Poly%vstd!raw_ptr.PtrData. (Poly) vstd!raw_ptr.PtrData.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(assert
 (forall ((x alloc!vec.Vec<u64./allocator_global%.>.)) (!
   (= x (%Poly%alloc!vec.Vec<u64./allocator_global%.>. (Poly%alloc!vec.Vec<u64./allocator_global%.>.
      x
   )))
   :pattern ((Poly%alloc!vec.Vec<u64./allocator_global%.>. x))
   :qid internal_alloc__vec__Vec<u64./allocator_global__.>_box_axiom_definition
   :skolemid skolem_internal_alloc__vec__Vec<u64./allocator_global__.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%alloc!vec.Vec. $ (UINT 64) $ ALLOCATOR_GLOBAL))
    (= x (Poly%alloc!vec.Vec<u64./allocator_global%.>. (%Poly%alloc!vec.Vec<u64./allocator_global%.>.
       x
   ))))
   :pattern ((has_type x (TYPE%alloc!vec.Vec. $ (UINT 64) $ ALLOCATOR_GLOBAL)))
   :qid internal_alloc__vec__Vec<u64./allocator_global__.>_unbox_axiom_definition
   :skolemid skolem_internal_alloc__vec__Vec<u64./allocator_global__.>_unbox_axiom_definition
)))
(assert
 (forall ((x alloc!vec.Vec<u64./allocator_global%.>.)) (!
   (has_type (Poly%alloc!vec.Vec<u64./allocator_global%.>. x) (TYPE%alloc!vec.Vec. $ (
      UINT 64
     ) $ ALLOCATOR_GLOBAL
   ))
   :pattern ((has_type (Poly%alloc!vec.Vec<u64./allocator_global%.>. x) (TYPE%alloc!vec.Vec.
      $ (UINT 64) $ ALLOCATOR_GLOBAL
   )))
   :qid internal_alloc__vec__Vec<u64./allocator_global__.>_has_type_always_definition
   :skolemid skolem_internal_alloc__vec__Vec<u64./allocator_global__.>_has_type_always_definition
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
 (forall ((x vstd!seq.Seq<u64.>.)) (!
   (= x (%Poly%vstd!seq.Seq<u64.>. (Poly%vstd!seq.Seq<u64.>. x)))
   :pattern ((Poly%vstd!seq.Seq<u64.>. x))
   :qid internal_vstd__seq__Seq<u64.>_box_axiom_definition
   :skolemid skolem_internal_vstd__seq__Seq<u64.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!seq.Seq. $ (UINT 64)))
    (= x (Poly%vstd!seq.Seq<u64.>. (%Poly%vstd!seq.Seq<u64.>. x)))
   )
   :pattern ((has_type x (TYPE%vstd!seq.Seq. $ (UINT 64))))
   :qid internal_vstd__seq__Seq<u64.>_unbox_axiom_definition
   :skolemid skolem_internal_vstd__seq__Seq<u64.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!seq.Seq<u64.>.)) (!
   (has_type (Poly%vstd!seq.Seq<u64.>. x) (TYPE%vstd!seq.Seq. $ (UINT 64)))
   :pattern ((has_type (Poly%vstd!seq.Seq<u64.>. x) (TYPE%vstd!seq.Seq. $ (UINT 64))))
   :qid internal_vstd__seq__Seq<u64.>_has_type_always_definition
   :skolemid skolem_internal_vstd__seq__Seq<u64.>_has_type_always_definition
)))
(assert
 (forall ((x slice%<u64.>.)) (!
   (= x (%Poly%slice%<u64.>. (Poly%slice%<u64.>. x)))
   :pattern ((Poly%slice%<u64.>. x))
   :qid internal_crate__slice__<u64.>_box_axiom_definition
   :skolemid skolem_internal_crate__slice__<u64.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (SLICE $ (UINT 64)))
    (= x (Poly%slice%<u64.>. (%Poly%slice%<u64.>. x)))
   )
   :pattern ((has_type x (SLICE $ (UINT 64))))
   :qid internal_crate__slice__<u64.>_unbox_axiom_definition
   :skolemid skolem_internal_crate__slice__<u64.>_unbox_axiom_definition
)))
(assert
 (forall ((x slice%<u64.>.)) (!
   (has_type (Poly%slice%<u64.>. x) (SLICE $ (UINT 64)))
   :pattern ((has_type (Poly%slice%<u64.>. x) (SLICE $ (UINT 64))))
   :qid internal_crate__slice__<u64.>_has_type_always_definition
   :skolemid skolem_internal_crate__slice__<u64.>_has_type_always_definition
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
(declare-fun tr_bound%vstd!slice.SliceAdditionalSpecFns. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%vstd!view.View. (Dcr Type) Bool)
(declare-fun tr_bound%core!alloc.Allocator. (Dcr Type) Bool)
(declare-fun tr_bound%vstd!std_specs.vec.VecAdditionalSpecFns. (Dcr Type Dcr Type)
 Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%vstd!slice.SliceAdditionalSpecFns. Self%&. Self%& T&. T&)
    (and
     (tr_bound%vstd!view.View. Self%&. Self%&)
     (and
      (= $ (proj%%vstd!view.View./V Self%&. Self%&))
      (= (TYPE%vstd!seq.Seq. T&. T&) (proj%vstd!view.View./V Self%&. Self%&))
   )))
   :pattern ((tr_bound%vstd!slice.SliceAdditionalSpecFns. Self%&. Self%& T&. T&))
   :qid internal_vstd__slice__SliceAdditionalSpecFns_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__slice__SliceAdditionalSpecFns_trait_type_bounds_definition
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
 (= (proj%%vstd!view.View./V $ (UINT 64)) $)
)
(assert
 (= (proj%vstd!view.View./V $ (UINT 64)) (UINT 64))
)
(assert
 (= (proj%%vstd!view.View./V $ (UINT SZ)) $)
)
(assert
 (= (proj%vstd!view.View./V $ (UINT SZ)) (UINT SZ))
)

;; Function-Decl vstd::view::View::view
(declare-fun vstd!view.View.view.? (Dcr Type Poly) Poly)
(declare-fun vstd!view.View.view%default%.? (Dcr Type Poly) Poly)

;; Function-Decl vstd::seq::Seq::len
(declare-fun vstd!seq.Seq.len.? (Dcr Type Poly) Int)

;; Function-Decl vstd::slice::SliceAdditionalSpecFns::spec_index
(declare-fun vstd!slice.SliceAdditionalSpecFns.spec_index.? (Dcr Type Dcr Type Poly
  Poly
 ) Poly
)
(declare-fun vstd!slice.SliceAdditionalSpecFns.spec_index%default%.? (Dcr Type Dcr
  Type Poly Poly
 ) Poly
)

;; Function-Decl vstd::std_specs::vec::VecAdditionalSpecFns::spec_index
(declare-fun vstd!std_specs.vec.VecAdditionalSpecFns.spec_index.? (Dcr Type Dcr Type
  Poly Poly
 ) Poly
)
(declare-fun vstd!std_specs.vec.VecAdditionalSpecFns.spec_index%default%.? (Dcr Type
  Dcr Type Poly Poly
 ) Poly
)

;; Function-Decl vstd::std_specs::vec::spec_vec_len
(declare-fun vstd!std_specs.vec.spec_vec_len.? (Dcr Type Dcr Type Poly) Int)

;; Function-Decl vstd::seq::Seq::index
(declare-fun vstd!seq.Seq.index.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::raw_ptr::view_reverse_for_eq
(declare-fun vstd!raw_ptr.view_reverse_for_eq.? (Dcr Type Poly) Poly)

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

;; Function-Specs vstd::slice::SliceAdditionalSpecFns::spec_index
(declare-fun req%vstd!slice.SliceAdditionalSpecFns.spec_index. (Dcr Type Dcr Type Poly
  Poly
 ) Bool
)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly) (i! Poly)) (
   !
   (= (req%vstd!slice.SliceAdditionalSpecFns.spec_index. Self%&. Self%& T&. T& self! i!)
    (=>
     %%global_location_label%%0
     (and
      (<= 0 (%I i!))
      (< (%I i!) (vstd!seq.Seq.len.? T&. T& (vstd!view.View.view.? Self%&. Self%& self!)))
   )))
   :pattern ((req%vstd!slice.SliceAdditionalSpecFns.spec_index. Self%&. Self%& T&. T&
     self! i!
   ))
   :qid internal_req__vstd!slice.SliceAdditionalSpecFns.spec_index._definition
   :skolemid skolem_internal_req__vstd!slice.SliceAdditionalSpecFns.spec_index._definition
)))

;; Function-Axioms vstd::slice::SliceAdditionalSpecFns::spec_index
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly) (i! Poly)) (
   !
   (=>
    (and
     (has_type self! Self%&)
     (has_type i! INT)
    )
    (has_type (vstd!slice.SliceAdditionalSpecFns.spec_index.? Self%&. Self%& T&. T& self!
      i!
     ) T&
   ))
   :pattern ((vstd!slice.SliceAdditionalSpecFns.spec_index.? Self%&. Self%& T&. T& self!
     i!
   ))
   :qid internal_vstd!slice.SliceAdditionalSpecFns.spec_index.?_pre_post_definition
   :skolemid skolem_internal_vstd!slice.SliceAdditionalSpecFns.spec_index.?_pre_post_definition
)))

;; Function-Specs vstd::std_specs::vec::VecAdditionalSpecFns::spec_index
(declare-fun req%vstd!std_specs.vec.VecAdditionalSpecFns.spec_index. (Dcr Type Dcr
  Type Poly Poly
 ) Bool
)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly) (i! Poly)) (
   !
   (= (req%vstd!std_specs.vec.VecAdditionalSpecFns.spec_index. Self%&. Self%& T&. T& self!
     i!
    ) (=>
     %%global_location_label%%1
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

;; Function-Specs alloc::vec::impl&%1::as_slice
(declare-fun ens%alloc!vec.impl&%1.as_slice. (Dcr Type Dcr Type Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (A&. Dcr) (A& Type) (vec! Poly) (slice! Poly)) (!
   (= (ens%alloc!vec.impl&%1.as_slice. T&. T& A&. A& vec! slice!) (and
     (has_type slice! (SLICE T&. T&))
     (= (vstd!view.View.view.? $ (SLICE T&. T&) slice!) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
        T&. T& A&. A&
       ) vec!
   ))))
   :pattern ((ens%alloc!vec.impl&%1.as_slice. T&. T& A&. A& vec! slice!))
   :qid internal_ens__alloc!vec.impl&__1.as_slice._definition
   :skolemid skolem_internal_ens__alloc!vec.impl&__1.as_slice._definition
)))

;; Function-Specs vstd::seq::Seq::index
(declare-fun req%vstd!seq.Seq.index. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
   (= (req%vstd!seq.Seq.index. A&. A& self! i!) (=>
     %%global_location_label%%2
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

;; Function-Specs vstd::seq::impl&%0::spec_index
(declare-fun req%vstd!seq.impl&%0.spec_index. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
   (= (req%vstd!seq.impl&%0.spec_index. A&. A& self! i!) (=>
     %%global_location_label%%3
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
         :qid user_vstd__seq__axiom_seq_ext_equal_4
         :skolemid skolem_user_vstd__seq__axiom_seq_ext_equal_4
    )))))
    :pattern ((ext_eq false (TYPE%vstd!seq.Seq. A&. A&) s1! s2!))
    :qid user_vstd__seq__axiom_seq_ext_equal_5
    :skolemid skolem_user_vstd__seq__axiom_seq_ext_equal_5
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
         :qid user_vstd__seq__axiom_seq_ext_equal_deep_6
         :skolemid skolem_user_vstd__seq__axiom_seq_ext_equal_deep_6
    )))))
    :pattern ((ext_eq true (TYPE%vstd!seq.Seq. A&. A&) s1! s2!))
    :qid user_vstd__seq__axiom_seq_ext_equal_deep_7
    :skolemid skolem_user_vstd__seq__axiom_seq_ext_equal_deep_7
))))

;; Function-Specs vstd::slice::slice_index_get
(declare-fun req%vstd!slice.slice_index_get. (Dcr Type Poly Int) Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (slice! Poly) (i! Int)) (!
   (= (req%vstd!slice.slice_index_get. T&. T& slice! i!) (=>
     %%global_location_label%%4
     (and
      (<= 0 i!)
      (< i! (vstd!seq.Seq.len.? T&. T& (vstd!view.View.view.? $ (SLICE T&. T&) slice!)))
   )))
   :pattern ((req%vstd!slice.slice_index_get. T&. T& slice! i!))
   :qid internal_req__vstd!slice.slice_index_get._definition
   :skolemid skolem_internal_req__vstd!slice.slice_index_get._definition
)))
(declare-fun ens%vstd!slice.slice_index_get. (Dcr Type Poly Int Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (slice! Poly) (i! Int) (out! Poly)) (!
   (= (ens%vstd!slice.slice_index_get. T&. T& slice! i! out!) (and
     (has_type out! T&)
     (= out! (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (SLICE T&. T&) slice!)
       (I i!)
   ))))
   :pattern ((ens%vstd!slice.slice_index_get. T&. T& slice! i! out!))
   :qid internal_ens__vstd!slice.slice_index_get._definition
   :skolemid skolem_internal_ens__vstd!slice.slice_index_get._definition
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

;; Function-Axioms vstd::slice::impl&%2::spec_index
(assert
 (fuel_bool_default fuel%vstd!slice.impl&%2.spec_index.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!slice.impl&%2.spec_index.)
  (forall ((T&. Dcr) (T& Type) (self! Poly) (i! Poly)) (!
    (= (vstd!slice.SliceAdditionalSpecFns.spec_index.? $ (SLICE T&. T&) T&. T& self! i!)
     (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (SLICE T&. T&) self!) i!)
    )
    :pattern ((vstd!slice.SliceAdditionalSpecFns.spec_index.? $ (SLICE T&. T&) T&. T& self!
      i!
    ))
    :qid internal_vstd!slice.SliceAdditionalSpecFns.spec_index.?_definition
    :skolemid skolem_internal_vstd!slice.SliceAdditionalSpecFns.spec_index.?_definition
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

;; Function-Axioms vstd::view::impl&%20::view
(assert
 (fuel_bool_default fuel%vstd!view.impl&%20.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!view.impl&%20.view.)
  (forall ((self! Poly)) (!
    (= (vstd!view.View.view.? $ (UINT 64) self!) self!)
    :pattern ((vstd!view.View.view.? $ (UINT 64) self!))
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
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%vstd!slice.SliceAdditionalSpecFns. $ (SLICE T&. T&) T&. T&)
   :pattern ((tr_bound%vstd!slice.SliceAdditionalSpecFns. $ (SLICE T&. T&) T&. T&))
   :qid internal_vstd__slice__impl&__2_trait_impl_definition
   :skolemid skolem_internal_vstd__slice__impl&__2_trait_impl_definition
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
 (tr_bound%vstd!view.View. $ (UINT 64))
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

;; Function-Specs test_crate::foo
(declare-fun req%test_crate!foo. (slice%<u64.>.) Bool)
(declare-const %%global_location_label%%5 Bool)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((x! slice%<u64.>.)) (!
   (= (req%test_crate!foo. x!) (and
     (=>
      %%global_location_label%%5
      (= (vstd!seq.Seq.len.? $ (UINT 64) (vstd!view.View.view.? $ (SLICE $ (UINT 64)) (Poly%slice%<u64.>.
          x!
        ))
       ) 2
     ))
     (=>
      %%global_location_label%%6
      (= (%I (vstd!seq.Seq.index.? $ (UINT 64) (vstd!view.View.view.? $ (SLICE $ (UINT 64))
          (Poly%slice%<u64.>. x!)
         ) (I 0)
        )
       ) 19
   ))))
   :pattern ((req%test_crate!foo. x!))
   :qid internal_req__test_crate!foo._definition
   :skolemid skolem_internal_req__test_crate!foo._definition
)))

;; Function-Def test_crate::foo
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/slices-d39ba5a0d56d1d2b-test1/test.rs:17:1: 17:18 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! slice%<u64.>.)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Bool)
 (declare-const t@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (= (vstd!seq.Seq.len.? $ (UINT 64) (vstd!view.View.view.? $ (SLICE $ (UINT 64)) (Poly%slice%<u64.>.
      x!
    ))
   ) 2
 ))
 (assert
  (= (%I (vstd!seq.Seq.index.? $ (UINT 64) (vstd!view.View.view.? $ (SLICE $ (UINT 64))
      (Poly%slice%<u64.>. x!)
     ) (I 0)
    )
   ) 19
 ))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd!slice.slice_index_get. $ (UINT 64) (Poly%slice%<u64.>. x!) 0)
    )
    (=>
     (ens%vstd!slice.slice_index_get. $ (UINT 64) (Poly%slice%<u64.>. x!) 0 tmp%1)
     (=>
      (= t@ (%I tmp%1))
      (=>
       (= tmp%2 (= t@ 19))
       (=>
        %%location_label%%1
        tmp%2
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::foo_index
(declare-fun req%test_crate!foo_index. (slice%<u64.>.) Bool)
(declare-const %%global_location_label%%7 Bool)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((x! slice%<u64.>.)) (!
   (= (req%test_crate!foo_index. x!) (and
     (=>
      %%global_location_label%%7
      (= (vstd!seq.Seq.len.? $ (UINT 64) (vstd!view.View.view.? $ (SLICE $ (UINT 64)) (Poly%slice%<u64.>.
          x!
        ))
       ) 2
     ))
     (=>
      %%global_location_label%%8
      (= (%I (vstd!seq.Seq.index.? $ (UINT 64) (vstd!view.View.view.? $ (SLICE $ (UINT 64))
          (Poly%slice%<u64.>. x!)
         ) (I 0)
        )
       ) 19
   ))))
   :pattern ((req%test_crate!foo_index. x!))
   :qid internal_req__test_crate!foo_index._definition
   :skolemid skolem_internal_req__test_crate!foo_index._definition
)))

;; Function-Def test_crate::foo_index
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/slices-d39ba5a0d56d1d2b-test1/test.rs:24:1: 24:24 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! slice%<u64.>.)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Bool)
 (declare-const t@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (= (vstd!seq.Seq.len.? $ (UINT 64) (vstd!view.View.view.? $ (SLICE $ (UINT 64)) (Poly%slice%<u64.>.
      x!
    ))
   ) 2
 ))
 (assert
  (= (%I (vstd!seq.Seq.index.? $ (UINT 64) (vstd!view.View.view.? $ (SLICE $ (UINT 64))
      (Poly%slice%<u64.>. x!)
     ) (I 0)
    )
   ) 19
 ))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd!slice.slice_index_get. $ (UINT 64) (Poly%slice%<u64.>. x!) 0)
    )
    (=>
     (ens%vstd!slice.slice_index_get. $ (UINT 64) (Poly%slice%<u64.>. x!) 0 tmp%1)
     (=>
      (= t@ (%I tmp%1))
      (=>
       (= tmp%2 (= t@ 19))
       (=>
        %%location_label%%1
        tmp%2
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::foo2
(declare-fun req%test_crate!foo2. (alloc!vec.Vec<u64./allocator_global%.>.) Bool)
(declare-const %%global_location_label%%9 Bool)
(declare-const %%global_location_label%%10 Bool)
(assert
 (forall ((x! alloc!vec.Vec<u64./allocator_global%.>.)) (!
   (= (req%test_crate!foo2. x!) (and
     (=>
      %%global_location_label%%9
      (= (vstd!seq.Seq.len.? $ (UINT 64) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. $ (UINT
           64
          ) $ ALLOCATOR_GLOBAL
         ) (Poly%alloc!vec.Vec<u64./allocator_global%.>. x!)
        )
       ) 2
     ))
     (=>
      %%global_location_label%%10
      (= (%I (vstd!seq.Seq.index.? $ (UINT 64) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
           $ (UINT 64) $ ALLOCATOR_GLOBAL
          ) (Poly%alloc!vec.Vec<u64./allocator_global%.>. x!)
         ) (I 0)
        )
       ) 19
   ))))
   :pattern ((req%test_crate!foo2. x!))
   :qid internal_req__test_crate!foo2._definition
   :skolemid skolem_internal_req__test_crate!foo2._definition
)))

;; Function-Def test_crate::foo2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/slices-d39ba5a0d56d1d2b-test1/test.rs:31:1: 31:21 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! alloc!vec.Vec<u64./allocator_global%.>.)
 (declare-const tmp%1 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (= (vstd!seq.Seq.len.? $ (UINT 64) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. $ (UINT
       64
      ) $ ALLOCATOR_GLOBAL
     ) (Poly%alloc!vec.Vec<u64./allocator_global%.>. x!)
    )
   ) 2
 ))
 (assert
  (= (%I (vstd!seq.Seq.index.? $ (UINT 64) (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec.
       $ (UINT 64) $ ALLOCATOR_GLOBAL
      ) (Poly%alloc!vec.Vec<u64./allocator_global%.>. x!)
     ) (I 0)
    )
   ) 19
 ))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (ens%alloc!vec.impl&%1.as_slice. $ (UINT 64) $ ALLOCATOR_GLOBAL (Poly%alloc!vec.Vec<u64./allocator_global%.>.
      x!
     ) tmp%1
    )
    (=>
     %%location_label%%0
     (req%test_crate!foo. (%Poly%slice%<u64.>. tmp%1))
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::foo3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/slices-d39ba5a0d56d1d2b-test1/test.rs:37:1: 37:19 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! slice%<u64.>.)
 (declare-const tmp%1 Poly)
 (declare-const t@ Int)
 (assert
  fuel_defaults
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (req%vstd!slice.slice_index_get. $ (UINT 64) (Poly%slice%<u64.>. x!) 0)
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

;; Function-Recommends test_crate::foo3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/slices-d39ba5a0d56d1d2b-test1/test.rs:37:1: 37:19 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! slice%<u64.>.)
 (declare-const tmp%1 Poly)
 (declare-const t@ Int)
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

;; Function-Def test_crate::foo3_index
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/slices-d39ba5a0d56d1d2b-test1/test.rs:42:1: 42:25 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! slice%<u64.>.)
 (declare-const tmp%1 Poly)
 (declare-const t@ Int)
 (assert
  fuel_defaults
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (req%vstd!slice.slice_index_get. $ (UINT 64) (Poly%slice%<u64.>. x!) 0)
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

;; Function-Recommends test_crate::foo3_index
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/slices-d39ba5a0d56d1d2b-test1/test.rs:42:1: 42:25 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! slice%<u64.>.)
 (declare-const tmp%1 Poly)
 (declare-const t@ Int)
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

;; Function-Specs test_crate::foo_generic
(declare-fun req%test_crate!foo_generic. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%11 Bool)
(declare-const %%global_location_label%%12 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (x! Poly)) (!
   (= (req%test_crate!foo_generic. T&. T& x!) (and
     (=>
      %%global_location_label%%11
      (= (vstd!seq.Seq.len.? T&. T& (vstd!view.View.view.? $ (SLICE T&. T&) x!)) 2)
     )
     (=>
      %%global_location_label%%12
      (= (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (SLICE T&. T&) x!) (I 0))
       (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (SLICE T&. T&) x!) (I 1))
   ))))
   :pattern ((req%test_crate!foo_generic. T&. T& x!))
   :qid internal_req__test_crate!foo_generic._definition
   :skolemid skolem_internal_req__test_crate!foo_generic._definition
)))

;; Function-Def test_crate::foo_generic
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/slices-d39ba5a0d56d1d2b-test1/test.rs:49:1: 49:27 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const x! Poly)
 (declare-const tmp%1 Bool)
 (declare-const t@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type x! (SLICE T&. T&))
 )
 (assert
  (= (vstd!seq.Seq.len.? T&. T& (vstd!view.View.view.? $ (SLICE T&. T&) x!)) 2)
 )
 (assert
  (= (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (SLICE T&. T&) x!) (I 0))
   (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (SLICE T&. T&) x!) (I 1))
 ))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd!slice.slice_index_get. T&. T& x! 0)
    )
    (=>
     (ens%vstd!slice.slice_index_get. T&. T& x! 0 t@)
     (=>
      (= tmp%1 (= t@ (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (SLICE T&. T&) x!)
         (I 1)
      )))
      (=>
       %%location_label%%1
       tmp%1
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::foo_generic_index
(declare-fun req%test_crate!foo_generic_index. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%13 Bool)
(declare-const %%global_location_label%%14 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (x! Poly)) (!
   (= (req%test_crate!foo_generic_index. T&. T& x!) (and
     (=>
      %%global_location_label%%13
      (= (vstd!seq.Seq.len.? T&. T& (vstd!view.View.view.? $ (SLICE T&. T&) x!)) 2)
     )
     (=>
      %%global_location_label%%14
      (= (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (SLICE T&. T&) x!) (I 0))
       (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (SLICE T&. T&) x!) (I 1))
   ))))
   :pattern ((req%test_crate!foo_generic_index. T&. T& x!))
   :qid internal_req__test_crate!foo_generic_index._definition
   :skolemid skolem_internal_req__test_crate!foo_generic_index._definition
)))

;; Function-Def test_crate::foo_generic_index
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/slices-d39ba5a0d56d1d2b-test1/test.rs:56:1: 56:33 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const x! Poly)
 (declare-const tmp%1 Bool)
 (declare-const t@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type x! (SLICE T&. T&))
 )
 (assert
  (= (vstd!seq.Seq.len.? T&. T& (vstd!view.View.view.? $ (SLICE T&. T&) x!)) 2)
 )
 (assert
  (= (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (SLICE T&. T&) x!) (I 0))
   (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (SLICE T&. T&) x!) (I 1))
 ))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd!slice.slice_index_get. T&. T& x! 0)
    )
    (=>
     (ens%vstd!slice.slice_index_get. T&. T& x! 0 t@)
     (=>
      (= tmp%1 (= t@ (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (SLICE T&. T&) x!)
         (I 1)
      )))
      (=>
       %%location_label%%1
       tmp%1
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::foo_generic2
(declare-fun req%test_crate!foo_generic2. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%15 Bool)
(declare-const %%global_location_label%%16 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (x! Poly)) (!
   (= (req%test_crate!foo_generic2. T&. T& x!) (and
     (=>
      %%global_location_label%%15
      (= (vstd!seq.Seq.len.? T&. T& (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. T&. T& $
          ALLOCATOR_GLOBAL
         ) x!
        )
       ) 2
     ))
     (=>
      %%global_location_label%%16
      (= (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. T&. T&
          $ ALLOCATOR_GLOBAL
         ) x!
        ) (I 0)
       ) (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. T&. T&
          $ ALLOCATOR_GLOBAL
         ) x!
        ) (I 1)
   )))))
   :pattern ((req%test_crate!foo_generic2. T&. T& x!))
   :qid internal_req__test_crate!foo_generic2._definition
   :skolemid skolem_internal_req__test_crate!foo_generic2._definition
)))

;; Function-Def test_crate::foo_generic2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/slices-d39ba5a0d56d1d2b-test1/test.rs:63:1: 63:30 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const x! Poly)
 (declare-const tmp%1 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type x! (TYPE%alloc!vec.Vec. T&. T& $ ALLOCATOR_GLOBAL))
 )
 (assert
  (= (vstd!seq.Seq.len.? T&. T& (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. T&. T& $
      ALLOCATOR_GLOBAL
     ) x!
    )
   ) 2
 ))
 (assert
  (= (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. T&. T&
      $ ALLOCATOR_GLOBAL
     ) x!
    ) (I 0)
   ) (vstd!seq.Seq.index.? T&. T& (vstd!view.View.view.? $ (TYPE%alloc!vec.Vec. T&. T&
      $ ALLOCATOR_GLOBAL
     ) x!
    ) (I 1)
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (ens%alloc!vec.impl&%1.as_slice. T&. T& $ ALLOCATOR_GLOBAL x! tmp%1)
    (=>
     %%location_label%%0
     (req%test_crate!foo_generic. T&. T& tmp%1)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::foo_generic3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/slices-d39ba5a0d56d1d2b-test1/test.rs:69:1: 69:28 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const x! Poly)
 (declare-const t@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type x! (SLICE T&. T&))
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (req%vstd!slice.slice_index_get. T&. T& x! 0)
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

;; Function-Recommends test_crate::foo_generic3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/slices-d39ba5a0d56d1d2b-test1/test.rs:69:1: 69:28 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const x! Poly)
 (declare-const t@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type x! (SLICE T&. T&))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::foo_generic3_index
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/slices-d39ba5a0d56d1d2b-test1/test.rs:74:1: 74:34 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const x! Poly)
 (declare-const t@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type x! (SLICE T&. T&))
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (req%vstd!slice.slice_index_get. T&. T& x! 0)
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

;; Function-Recommends test_crate::foo_generic3_index
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/slices-d39ba5a0d56d1d2b-test1/test.rs:74:1: 74:34 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const x! Poly)
 (declare-const t@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type x! (SLICE T&. T&))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::foo_generic4
(declare-fun req%test_crate!foo_generic4. (slice%<u64.>.) Bool)
(declare-const %%global_location_label%%17 Bool)
(declare-const %%global_location_label%%18 Bool)
(declare-const %%global_location_label%%19 Bool)
(assert
 (forall ((x! slice%<u64.>.)) (!
   (= (req%test_crate!foo_generic4. x!) (and
     (=>
      %%global_location_label%%17
      (= (vstd!seq.Seq.len.? $ (UINT 64) (vstd!view.View.view.? $ (SLICE $ (UINT 64)) (Poly%slice%<u64.>.
          x!
        ))
       ) 2
     ))
     (=>
      %%global_location_label%%18
      (= (%I (vstd!seq.Seq.index.? $ (UINT 64) (vstd!view.View.view.? $ (SLICE $ (UINT 64))
          (Poly%slice%<u64.>. x!)
         ) (I 0)
        )
       ) 19
     ))
     (=>
      %%global_location_label%%19
      (= (%I (vstd!seq.Seq.index.? $ (UINT 64) (vstd!view.View.view.? $ (SLICE $ (UINT 64))
          (Poly%slice%<u64.>. x!)
         ) (I 1)
        )
       ) 19
   ))))
   :pattern ((req%test_crate!foo_generic4. x!))
   :qid internal_req__test_crate!foo_generic4._definition
   :skolemid skolem_internal_req__test_crate!foo_generic4._definition
)))

;; Function-Def test_crate::foo_generic4
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/slices-d39ba5a0d56d1d2b-test1/test.rs:79:1: 79:27 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! slice%<u64.>.)
 (assert
  fuel_defaults
 )
 (assert
  (= (vstd!seq.Seq.len.? $ (UINT 64) (vstd!view.View.view.? $ (SLICE $ (UINT 64)) (Poly%slice%<u64.>.
      x!
    ))
   ) 2
 ))
 (assert
  (= (%I (vstd!seq.Seq.index.? $ (UINT 64) (vstd!view.View.view.? $ (SLICE $ (UINT 64))
      (Poly%slice%<u64.>. x!)
     ) (I 0)
    )
   ) 19
 ))
 (assert
  (= (%I (vstd!seq.Seq.index.? $ (UINT 64) (vstd!view.View.view.? $ (SLICE $ (UINT 64))
      (Poly%slice%<u64.>. x!)
     ) (I 1)
    )
   ) 19
 ))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (req%test_crate!foo_generic. $ (UINT 64) (Poly%slice%<u64.>. x!))
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
