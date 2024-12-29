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
(declare-const fuel%vstd!std_specs.range.impl&%6.spec_is_lt. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%6.spec_forward_checked. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%6.spec_forward_checked_int. FuelId)
(declare-const fuel%vstd!std_specs.range.axiom_spec_range_next_u64. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%8.spec_is_lt. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%8.spec_forward_checked. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%8.spec_forward_checked_int. FuelId)
(declare-const fuel%vstd!std_specs.range.axiom_spec_range_next_usize. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%11.spec_is_lt. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%11.spec_forward_checked. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%11.spec_forward_checked_int. FuelId)
(declare-const fuel%vstd!std_specs.range.axiom_spec_range_next_i32. FuelId)
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
 (distinct fuel%vstd!std_specs.range.impl&%6.spec_is_lt. fuel%vstd!std_specs.range.impl&%6.spec_forward_checked.
  fuel%vstd!std_specs.range.impl&%6.spec_forward_checked_int. fuel%vstd!std_specs.range.axiom_spec_range_next_u64.
  fuel%vstd!std_specs.range.impl&%8.spec_is_lt. fuel%vstd!std_specs.range.impl&%8.spec_forward_checked.
  fuel%vstd!std_specs.range.impl&%8.spec_forward_checked_int. fuel%vstd!std_specs.range.axiom_spec_range_next_usize.
  fuel%vstd!std_specs.range.impl&%11.spec_is_lt. fuel%vstd!std_specs.range.impl&%11.spec_forward_checked.
  fuel%vstd!std_specs.range.impl&%11.spec_forward_checked_int. fuel%vstd!std_specs.range.axiom_spec_range_next_i32.
  fuel%vstd!array.group_array_axioms. fuel%vstd!map.group_map_axioms. fuel%vstd!multiset.group_multiset_axioms.
  fuel%vstd!raw_ptr.group_raw_ptr_axioms. fuel%vstd!seq.group_seq_axioms. fuel%vstd!seq_lib.group_seq_lib_default.
  fuel%vstd!set.group_set_axioms. fuel%vstd!set_lib.group_set_lib_axioms. fuel%vstd!slice.group_slice_axioms.
  fuel%vstd!string.group_string_axioms. fuel%vstd!std_specs.bits.group_bits_axioms.
  fuel%vstd!std_specs.control_flow.group_control_flow_axioms. fuel%vstd!std_specs.range.group_range_axioms.
  fuel%vstd!std_specs.vec.group_vec_axioms. fuel%vstd!group_vstd_default.
))
(assert
 (=>
  (fuel_bool_default fuel%vstd!std_specs.range.group_range_axioms.)
  (and
   (fuel_bool_default fuel%vstd!std_specs.range.axiom_spec_range_next_u64.)
   (fuel_bool_default fuel%vstd!std_specs.range.axiom_spec_range_next_usize.)
   (fuel_bool_default fuel%vstd!std_specs.range.axiom_spec_range_next_i32.)
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
(declare-datatypes ((core!option.Option. 0) (core!ops.range.Range. 0) (tuple%0. 0)
  (tuple%2. 0)
 ) (((core!option.Option./None) (core!option.Option./Some (core!option.Option./Some/?0
     Poly
   ))
  ) ((core!ops.range.Range./Range (core!ops.range.Range./Range/?start Poly) (core!ops.range.Range./Range/?end
     Poly
   ))
  ) ((tuple%0./tuple%0)) ((tuple%2./tuple%2 (tuple%2./tuple%2/?0 Poly) (tuple%2./tuple%2/?1
     Poly
)))))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun core!ops.range.Range./Range/start (core!ops.range.Range.) Poly)
(declare-fun core!ops.range.Range./Range/end (core!ops.range.Range.) Poly)
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-fun TYPE%core!ops.range.Range. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%2. (Dcr Type Dcr Type) Type)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
(declare-fun Poly%core!ops.range.Range. (core!ops.range.Range.) Poly)
(declare-fun %Poly%core!ops.range.Range. (Poly) core!ops.range.Range.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%2. (tuple%2.) Poly)
(declare-fun %Poly%tuple%2. (Poly) tuple%2.)
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
 (forall ((x core!ops.range.Range.)) (!
   (= x (%Poly%core!ops.range.Range. (Poly%core!ops.range.Range. x)))
   :pattern ((Poly%core!ops.range.Range. x))
   :qid internal_core__ops__range__Range_box_axiom_definition
   :skolemid skolem_internal_core__ops__range__Range_box_axiom_definition
)))
(assert
 (forall ((Idx&. Dcr) (Idx& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!ops.range.Range. Idx&. Idx&))
    (= x (Poly%core!ops.range.Range. (%Poly%core!ops.range.Range. x)))
   )
   :pattern ((has_type x (TYPE%core!ops.range.Range. Idx&. Idx&)))
   :qid internal_core__ops__range__Range_unbox_axiom_definition
   :skolemid skolem_internal_core__ops__range__Range_unbox_axiom_definition
)))
(assert
 (forall ((Idx&. Dcr) (Idx& Type) (_start! Poly) (_end! Poly)) (!
   (=>
    (and
     (has_type _start! Idx&)
     (has_type _end! Idx&)
    )
    (has_type (Poly%core!ops.range.Range. (core!ops.range.Range./Range _start! _end!))
     (TYPE%core!ops.range.Range. Idx&. Idx&)
   ))
   :pattern ((has_type (Poly%core!ops.range.Range. (core!ops.range.Range./Range _start!
       _end!
      )
     ) (TYPE%core!ops.range.Range. Idx&. Idx&)
   ))
   :qid internal_core!ops.range.Range./Range_constructor_definition
   :skolemid skolem_internal_core!ops.range.Range./Range_constructor_definition
)))
(assert
 (forall ((x core!ops.range.Range.)) (!
   (= (core!ops.range.Range./Range/start x) (core!ops.range.Range./Range/?start x))
   :pattern ((core!ops.range.Range./Range/start x))
   :qid internal_core!ops.range.Range./Range/start_accessor_definition
   :skolemid skolem_internal_core!ops.range.Range./Range/start_accessor_definition
)))
(assert
 (forall ((Idx&. Dcr) (Idx& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!ops.range.Range. Idx&. Idx&))
    (has_type (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. x)) Idx&)
   )
   :pattern ((core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. x)) (has_type
     x (TYPE%core!ops.range.Range. Idx&. Idx&)
   ))
   :qid internal_core!ops.range.Range./Range/start_invariant_definition
   :skolemid skolem_internal_core!ops.range.Range./Range/start_invariant_definition
)))
(assert
 (forall ((x core!ops.range.Range.)) (!
   (= (core!ops.range.Range./Range/end x) (core!ops.range.Range./Range/?end x))
   :pattern ((core!ops.range.Range./Range/end x))
   :qid internal_core!ops.range.Range./Range/end_accessor_definition
   :skolemid skolem_internal_core!ops.range.Range./Range/end_accessor_definition
)))
(assert
 (forall ((Idx&. Dcr) (Idx& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!ops.range.Range. Idx&. Idx&))
    (has_type (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. x)) Idx&)
   )
   :pattern ((core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. x)) (has_type
     x (TYPE%core!ops.range.Range. Idx&. Idx&)
   ))
   :qid internal_core!ops.range.Range./Range/end_invariant_definition
   :skolemid skolem_internal_core!ops.range.Range./Range/end_invariant_definition
)))
(assert
 (forall ((x core!ops.range.Range.)) (!
   (=>
    (is-core!ops.range.Range./Range x)
    (height_lt (height (core!ops.range.Range./Range/start x)) (height (Poly%core!ops.range.Range.
       x
   ))))
   :pattern ((height (core!ops.range.Range./Range/start x)))
   :qid prelude_datatype_height_core!ops.range.Range./Range/start
   :skolemid skolem_prelude_datatype_height_core!ops.range.Range./Range/start
)))
(assert
 (forall ((x core!ops.range.Range.)) (!
   (=>
    (is-core!ops.range.Range./Range x)
    (height_lt (height (core!ops.range.Range./Range/end x)) (height (Poly%core!ops.range.Range.
       x
   ))))
   :pattern ((height (core!ops.range.Range./Range/end x)))
   :qid prelude_datatype_height_core!ops.range.Range./Range/end
   :skolemid skolem_prelude_datatype_height_core!ops.range.Range./Range/end
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
(declare-fun tr_bound%core!clone.Clone. (Dcr Type) Bool)
(declare-fun tr_bound%core!alloc.Allocator. (Dcr Type) Bool)
(declare-fun tr_bound%core!cmp.PartialEq. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%core!cmp.PartialOrd. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%core!iter.traits.iterator.Iterator. (Dcr Type) Bool)
(declare-fun tr_bound%core!iter.range.Step. (Dcr Type) Bool)
(declare-fun tr_bound%vstd!std_specs.range.StepSpec. (Dcr Type) Bool)
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
 (forall ((Self%&. Dcr) (Self%& Type) (Rhs&. Dcr) (Rhs& Type)) (!
   true
   :pattern ((tr_bound%core!cmp.PartialEq. Self%&. Self%& Rhs&. Rhs&))
   :qid internal_core__cmp__PartialEq_trait_type_bounds_definition
   :skolemid skolem_internal_core__cmp__PartialEq_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Rhs&. Dcr) (Rhs& Type)) (!
   (=>
    (tr_bound%core!cmp.PartialOrd. Self%&. Self%& Rhs&. Rhs&)
    (tr_bound%core!cmp.PartialEq. Self%&. Self%& Rhs&. Rhs&)
   )
   :pattern ((tr_bound%core!cmp.PartialOrd. Self%&. Self%& Rhs&. Rhs&))
   :qid internal_core__cmp__PartialOrd_trait_type_bounds_definition
   :skolemid skolem_internal_core__cmp__PartialOrd_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%core!iter.traits.iterator.Iterator. Self%&. Self%&))
   :qid internal_core__iter__traits__iterator__Iterator_trait_type_bounds_definition
   :skolemid skolem_internal_core__iter__traits__iterator__Iterator_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   (=>
    (tr_bound%core!iter.range.Step. Self%&. Self%&)
    (and
     (tr_bound%core!clone.Clone. Self%&. Self%&)
     (tr_bound%core!cmp.PartialOrd. Self%&. Self%& Self%&. Self%&)
   ))
   :pattern ((tr_bound%core!iter.range.Step. Self%&. Self%&))
   :qid internal_core__iter__range__Step_trait_type_bounds_definition
   :skolemid skolem_internal_core__iter__range__Step_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%vstd!std_specs.range.StepSpec. Self%&. Self%&))
   :qid internal_vstd__std_specs__range__StepSpec_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__std_specs__range__StepSpec_trait_type_bounds_definition
)))

;; Function-Decl vstd::std_specs::range::StepSpec::spec_is_lt
(declare-fun vstd!std_specs.range.StepSpec.spec_is_lt.? (Dcr Type Poly Poly) Poly)
(declare-fun vstd!std_specs.range.StepSpec.spec_is_lt%default%.? (Dcr Type Poly Poly)
 Poly
)

;; Function-Decl vstd::std_specs::range::StepSpec::spec_forward_checked
(declare-fun vstd!std_specs.range.StepSpec.spec_forward_checked.? (Dcr Type Poly Poly)
 Poly
)
(declare-fun vstd!std_specs.range.StepSpec.spec_forward_checked%default%.? (Dcr Type
  Poly Poly
 ) Poly
)

;; Function-Decl vstd::std_specs::range::StepSpec::spec_forward_checked_int
(declare-fun vstd!std_specs.range.StepSpec.spec_forward_checked_int.? (Dcr Type Poly
  Poly
 ) Poly
)
(declare-fun vstd!std_specs.range.StepSpec.spec_forward_checked_int%default%.? (Dcr
  Type Poly Poly
 ) Poly
)

;; Function-Decl vstd::std_specs::range::spec_range_next
(declare-fun vstd!std_specs.range.spec_range_next.? (Dcr Type Poly) tuple%2.)

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

;; Function-Axioms vstd::std_specs::range::StepSpec::spec_is_lt
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (other! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type other! Self%&)
    )
    (has_type (vstd!std_specs.range.StepSpec.spec_is_lt.? Self%&. Self%& self! other!)
     BOOL
   ))
   :pattern ((vstd!std_specs.range.StepSpec.spec_is_lt.? Self%&. Self%& self! other!))
   :qid internal_vstd!std_specs.range.StepSpec.spec_is_lt.?_pre_post_definition
   :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_is_lt.?_pre_post_definition
)))

;; Function-Axioms vstd::std_specs::range::StepSpec::spec_forward_checked
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (count! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type count! (UINT SZ))
    )
    (has_type (vstd!std_specs.range.StepSpec.spec_forward_checked.? Self%&. Self%& self!
      count!
     ) (TYPE%core!option.Option. Self%&. Self%&)
   ))
   :pattern ((vstd!std_specs.range.StepSpec.spec_forward_checked.? Self%&. Self%& self!
     count!
   ))
   :qid internal_vstd!std_specs.range.StepSpec.spec_forward_checked.?_pre_post_definition
   :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_forward_checked.?_pre_post_definition
)))

;; Function-Axioms vstd::std_specs::range::StepSpec::spec_forward_checked_int
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (count! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type count! INT)
    )
    (has_type (vstd!std_specs.range.StepSpec.spec_forward_checked_int.? Self%&. Self%&
      self! count!
     ) (TYPE%core!option.Option. Self%&. Self%&)
   ))
   :pattern ((vstd!std_specs.range.StepSpec.spec_forward_checked_int.? Self%&. Self%&
     self! count!
   ))
   :qid internal_vstd!std_specs.range.StepSpec.spec_forward_checked_int.?_pre_post_definition
   :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_forward_checked_int.?_pre_post_definition
)))

;; Function-Axioms vstd::std_specs::range::spec_range_next
(assert
 (forall ((A&. Dcr) (A& Type) (a! Poly)) (!
   (=>
    (has_type a! (TYPE%core!ops.range.Range. A&. A&))
    (has_type (Poly%tuple%2. (vstd!std_specs.range.spec_range_next.? A&. A& a!)) (TYPE%tuple%2.
      $ (TYPE%core!ops.range.Range. A&. A&) $ (TYPE%core!option.Option. A&. A&)
   )))
   :pattern ((vstd!std_specs.range.spec_range_next.? A&. A& a!))
   :qid internal_vstd!std_specs.range.spec_range_next.?_pre_post_definition
   :skolemid skolem_internal_vstd!std_specs.range.spec_range_next.?_pre_post_definition
)))

;; Function-Specs core::iter::range::impl&%6::next
(declare-fun ens%core!iter.range.impl&%6.next. (Dcr Type core!ops.range.Range. core!ops.range.Range.
  core!option.Option.
 ) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (pre%range! core!ops.range.Range.) (range! core!ops.range.Range.)
   (r! core!option.Option.)
  ) (!
   (= (ens%core!iter.range.impl&%6.next. A&. A& pre%range! range! r!) (and
     (has_type (Poly%core!option.Option. r!) (TYPE%core!option.Option. A&. A&))
     (has_type (Poly%core!ops.range.Range. range!) (TYPE%core!ops.range.Range. A&. A&))
     (= (tuple%2./tuple%2 (Poly%core!ops.range.Range. range!) (Poly%core!option.Option. r!))
      (vstd!std_specs.range.spec_range_next.? A&. A& (Poly%core!ops.range.Range. pre%range!))
   )))
   :pattern ((ens%core!iter.range.impl&%6.next. A&. A& pre%range! range! r!))
   :qid internal_ens__core!iter.range.impl&__6.next._definition
   :skolemid skolem_internal_ens__core!iter.range.impl&__6.next._definition
)))

;; Function-Axioms vstd::std_specs::range::impl&%6::spec_is_lt
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%6.spec_is_lt.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%6.spec_is_lt.)
  (forall ((self! Poly) (other! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_is_lt.? $ (UINT 64) self! other!) (B (< (%I self!)
       (%I other!)
    )))
    :pattern ((vstd!std_specs.range.StepSpec.spec_is_lt.? $ (UINT 64) self! other!))
    :qid internal_vstd!std_specs.range.StepSpec.spec_is_lt.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_is_lt.?_definition
))))

;; Function-Axioms vstd::std_specs::range::impl&%6::spec_forward_checked_int
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%6.spec_forward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%6.spec_forward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT 64) self! count!)
     (Poly%core!option.Option. (ite
       (<= (Add (%I self!) (%I count!)) 18446744073709551615)
       (core!option.Option./Some (I (uClip 64 (Add (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd!std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT 64) self!
      count!
    ))
    :qid internal_vstd!std_specs.range.StepSpec.spec_forward_checked_int.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_forward_checked_int.?_definition
))))

;; Function-Axioms vstd::std_specs::range::impl&%6::spec_forward_checked
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%6.spec_forward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%6.spec_forward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_forward_checked.? $ (UINT 64) self! count!)
     (vstd!std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT 64) self! count!)
    )
    :pattern ((vstd!std_specs.range.StepSpec.spec_forward_checked.? $ (UINT 64) self! count!))
    :qid internal_vstd!std_specs.range.StepSpec.spec_forward_checked.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_forward_checked.?_definition
))))

;; Broadcast vstd::std_specs::range::axiom_spec_range_next_u64
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.axiom_spec_range_next_u64.)
  (forall ((range! Poly)) (!
    (=>
     (has_type range! (TYPE%core!ops.range.Range. $ (UINT 64)))
     (and
      (=>
       (%B (vstd!std_specs.range.StepSpec.spec_is_lt.? $ (UINT 64) (core!ops.range.Range./Range/start
          (%Poly%core!ops.range.Range. range!)
         ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       ))
       (let
        ((tmp%%$ (%Poly%core!option.Option. (vstd!std_specs.range.StepSpec.spec_forward_checked.?
            $ (UINT 64) (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. range!))
            (I 1)
        ))))
        (=>
         (is-core!option.Option./Some tmp%%$)
         (let
          ((n$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                tmp%%$
          ))))))
          (= (vstd!std_specs.range.spec_range_next.? $ (UINT 64) range!) (tuple%2./tuple%2 (Poly%core!ops.range.Range.
             (core!ops.range.Range./Range (I n$) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range.
                range!
             )))
            ) (Poly%core!option.Option. (core!option.Option./Some (core!ops.range.Range./Range/start
               (%Poly%core!ops.range.Range. range!)
      )))))))))
      (=>
       (not (%B (vstd!std_specs.range.StepSpec.spec_is_lt.? $ (UINT 64) (core!ops.range.Range./Range/start
           (%Poly%core!ops.range.Range. range!)
          ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       )))
       (= (vstd!std_specs.range.spec_range_next.? $ (UINT 64) range!) (tuple%2./tuple%2 range!
         (Poly%core!option.Option. core!option.Option./None)
    )))))
    :pattern ((vstd!std_specs.range.spec_range_next.? $ (UINT 64) range!))
    :qid user_vstd__std_specs__range__axiom_spec_range_next_u64_0
    :skolemid skolem_user_vstd__std_specs__range__axiom_spec_range_next_u64_0
))))

;; Function-Axioms vstd::std_specs::range::impl&%8::spec_is_lt
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%8.spec_is_lt.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%8.spec_is_lt.)
  (forall ((self! Poly) (other! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_is_lt.? $ (UINT SZ) self! other!) (B (< (%I self!)
       (%I other!)
    )))
    :pattern ((vstd!std_specs.range.StepSpec.spec_is_lt.? $ (UINT SZ) self! other!))
    :qid internal_vstd!std_specs.range.StepSpec.spec_is_lt.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_is_lt.?_definition
))))

;; Function-Axioms vstd::std_specs::range::impl&%8::spec_forward_checked_int
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%8.spec_forward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%8.spec_forward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT SZ) self! count!)
     (Poly%core!option.Option. (ite
       (<= (Add (%I self!) (%I count!)) (- (uHi SZ) 1))
       (core!option.Option./Some (I (uClip SZ (Add (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd!std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT SZ) self!
      count!
    ))
    :qid internal_vstd!std_specs.range.StepSpec.spec_forward_checked_int.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_forward_checked_int.?_definition
))))

;; Function-Axioms vstd::std_specs::range::impl&%8::spec_forward_checked
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%8.spec_forward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%8.spec_forward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_forward_checked.? $ (UINT SZ) self! count!)
     (vstd!std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT SZ) self! count!)
    )
    :pattern ((vstd!std_specs.range.StepSpec.spec_forward_checked.? $ (UINT SZ) self! count!))
    :qid internal_vstd!std_specs.range.StepSpec.spec_forward_checked.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_forward_checked.?_definition
))))

;; Broadcast vstd::std_specs::range::axiom_spec_range_next_usize
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.axiom_spec_range_next_usize.)
  (forall ((range! Poly)) (!
    (=>
     (has_type range! (TYPE%core!ops.range.Range. $ (UINT SZ)))
     (and
      (=>
       (%B (vstd!std_specs.range.StepSpec.spec_is_lt.? $ (UINT SZ) (core!ops.range.Range./Range/start
          (%Poly%core!ops.range.Range. range!)
         ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       ))
       (let
        ((tmp%%$ (%Poly%core!option.Option. (vstd!std_specs.range.StepSpec.spec_forward_checked.?
            $ (UINT SZ) (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. range!))
            (I 1)
        ))))
        (=>
         (is-core!option.Option./Some tmp%%$)
         (let
          ((n$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                tmp%%$
          ))))))
          (= (vstd!std_specs.range.spec_range_next.? $ (UINT SZ) range!) (tuple%2./tuple%2 (Poly%core!ops.range.Range.
             (core!ops.range.Range./Range (I n$) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range.
                range!
             )))
            ) (Poly%core!option.Option. (core!option.Option./Some (core!ops.range.Range./Range/start
               (%Poly%core!ops.range.Range. range!)
      )))))))))
      (=>
       (not (%B (vstd!std_specs.range.StepSpec.spec_is_lt.? $ (UINT SZ) (core!ops.range.Range./Range/start
           (%Poly%core!ops.range.Range. range!)
          ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       )))
       (= (vstd!std_specs.range.spec_range_next.? $ (UINT SZ) range!) (tuple%2./tuple%2 range!
         (Poly%core!option.Option. core!option.Option./None)
    )))))
    :pattern ((vstd!std_specs.range.spec_range_next.? $ (UINT SZ) range!))
    :qid user_vstd__std_specs__range__axiom_spec_range_next_usize_1
    :skolemid skolem_user_vstd__std_specs__range__axiom_spec_range_next_usize_1
))))

;; Function-Axioms vstd::std_specs::range::impl&%11::spec_is_lt
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%11.spec_is_lt.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%11.spec_is_lt.)
  (forall ((self! Poly) (other! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_is_lt.? $ (SINT 32) self! other!) (B (< (%I self!)
       (%I other!)
    )))
    :pattern ((vstd!std_specs.range.StepSpec.spec_is_lt.? $ (SINT 32) self! other!))
    :qid internal_vstd!std_specs.range.StepSpec.spec_is_lt.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_is_lt.?_definition
))))

;; Function-Axioms vstd::std_specs::range::impl&%11::spec_forward_checked_int
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%11.spec_forward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%11.spec_forward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_forward_checked_int.? $ (SINT 32) self! count!)
     (Poly%core!option.Option. (ite
       (<= (Add (%I self!) (%I count!)) 2147483647)
       (core!option.Option./Some (I (iClip 32 (Add (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd!std_specs.range.StepSpec.spec_forward_checked_int.? $ (SINT 32) self!
      count!
    ))
    :qid internal_vstd!std_specs.range.StepSpec.spec_forward_checked_int.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_forward_checked_int.?_definition
))))

;; Function-Axioms vstd::std_specs::range::impl&%11::spec_forward_checked
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%11.spec_forward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%11.spec_forward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_forward_checked.? $ (SINT 32) self! count!)
     (vstd!std_specs.range.StepSpec.spec_forward_checked_int.? $ (SINT 32) self! count!)
    )
    :pattern ((vstd!std_specs.range.StepSpec.spec_forward_checked.? $ (SINT 32) self! count!))
    :qid internal_vstd!std_specs.range.StepSpec.spec_forward_checked.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_forward_checked.?_definition
))))

;; Broadcast vstd::std_specs::range::axiom_spec_range_next_i32
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.axiom_spec_range_next_i32.)
  (forall ((range! Poly)) (!
    (=>
     (has_type range! (TYPE%core!ops.range.Range. $ (SINT 32)))
     (and
      (=>
       (%B (vstd!std_specs.range.StepSpec.spec_is_lt.? $ (SINT 32) (core!ops.range.Range./Range/start
          (%Poly%core!ops.range.Range. range!)
         ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       ))
       (let
        ((tmp%%$ (%Poly%core!option.Option. (vstd!std_specs.range.StepSpec.spec_forward_checked.?
            $ (SINT 32) (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. range!))
            (I 1)
        ))))
        (=>
         (is-core!option.Option./Some tmp%%$)
         (let
          ((n$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                tmp%%$
          ))))))
          (= (vstd!std_specs.range.spec_range_next.? $ (SINT 32) range!) (tuple%2./tuple%2 (Poly%core!ops.range.Range.
             (core!ops.range.Range./Range (I n$) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range.
                range!
             )))
            ) (Poly%core!option.Option. (core!option.Option./Some (core!ops.range.Range./Range/start
               (%Poly%core!ops.range.Range. range!)
      )))))))))
      (=>
       (not (%B (vstd!std_specs.range.StepSpec.spec_is_lt.? $ (SINT 32) (core!ops.range.Range./Range/start
           (%Poly%core!ops.range.Range. range!)
          ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       )))
       (= (vstd!std_specs.range.spec_range_next.? $ (SINT 32) range!) (tuple%2./tuple%2 range!
         (Poly%core!option.Option. core!option.Option./None)
    )))))
    :pattern ((vstd!std_specs.range.spec_range_next.? $ (SINT 32) range!))
    :qid user_vstd__std_specs__range__axiom_spec_range_next_i32_2
    :skolemid skolem_user_vstd__std_specs__range__axiom_spec_range_next_i32_2
))))

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!std_specs.range.StepSpec. $ (UINT 64))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!std_specs.range.StepSpec. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!std_specs.range.StepSpec. $ (SINT 32))
)

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
 (forall ((Idx&. Dcr) (Idx& Type)) (!
   (=>
    (tr_bound%core!cmp.PartialEq. Idx&. Idx& Idx&. Idx&)
    (tr_bound%core!cmp.PartialEq. $ (TYPE%core!ops.range.Range. Idx&. Idx&) $ (TYPE%core!ops.range.Range.
      Idx&. Idx&
   )))
   :pattern ((tr_bound%core!cmp.PartialEq. $ (TYPE%core!ops.range.Range. Idx&. Idx&) $
     (TYPE%core!ops.range.Range. Idx&. Idx&)
   ))
   :qid internal_core__ops__range__impl&__41_trait_impl_definition
   :skolemid skolem_internal_core__ops__range__impl&__41_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ (UINT 64) $ (UINT 64))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ (SINT 32) $ (SINT 32))
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
 (tr_bound%core!cmp.PartialEq. $ (UINT SZ) $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ BOOL $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ TYPE%tuple%0. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type)) (!
   (=>
    (tr_bound%core!cmp.PartialOrd. A&. A& B&. B&)
    (tr_bound%core!cmp.PartialOrd. (REF A&.) A& (REF B&.) B&)
   )
   :pattern ((tr_bound%core!cmp.PartialOrd. (REF A&.) A& (REF B&.) B&))
   :qid internal_core__cmp__impls__impl&__10_trait_impl_definition
   :skolemid skolem_internal_core__cmp__impls__impl&__10_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((U&. Dcr) (U& Type) (T&. Dcr) (T& Type)) (!
   (=>
    (and
     (tr_bound%core!cmp.PartialOrd. U&. U& U&. U&)
     (tr_bound%core!cmp.PartialOrd. T&. T& T&. T&)
    )
    (tr_bound%core!cmp.PartialOrd. $ (TYPE%tuple%2. U&. U& T&. T&) $ (TYPE%tuple%2. U&.
      U& T&. T&
   )))
   :pattern ((tr_bound%core!cmp.PartialOrd. $ (TYPE%tuple%2. U&. U& T&. T&) $ (TYPE%tuple%2.
      U&. U& T&. T&
   )))
   :qid internal_core__tuple__impl&__15_trait_impl_definition
   :skolemid skolem_internal_core__tuple__impl&__15_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialOrd. $ (SINT 32) $ (SINT 32))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialOrd. $ TYPE%tuple%0. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialOrd. $ BOOL $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%core!cmp.PartialOrd. T&. T& T&. T&)
    (tr_bound%core!cmp.PartialOrd. $ (TYPE%core!option.Option. T&. T&) $ (TYPE%core!option.Option.
      T&. T&
   )))
   :pattern ((tr_bound%core!cmp.PartialOrd. $ (TYPE%core!option.Option. T&. T&) $ (TYPE%core!option.Option.
      T&. T&
   )))
   :qid internal_core__option__impl&__15_trait_impl_definition
   :skolemid skolem_internal_core__option__impl&__15_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialOrd. $ (UINT SZ) $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialOrd. $ (UINT 64) $ (UINT 64))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ (SINT 32))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!iter.range.Step. $ (SINT 32))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ (UINT 64))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!iter.range.Step. $ (UINT 64))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!iter.range.Step. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (=>
    (tr_bound%core!iter.range.Step. A&. A&)
    (tr_bound%core!iter.traits.iterator.Iterator. $ (TYPE%core!ops.range.Range. A&. A&))
   )
   :pattern ((tr_bound%core!iter.traits.iterator.Iterator. $ (TYPE%core!ops.range.Range.
      A&. A&
   )))
   :qid internal_core__iter__range__impl&__6_trait_impl_definition
   :skolemid skolem_internal_core__iter__range__impl&__6_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((Idx&. Dcr) (Idx& Type)) (!
   (=>
    (tr_bound%core!clone.Clone. Idx&. Idx&)
    (tr_bound%core!clone.Clone. $ (TYPE%core!ops.range.Range. Idx&. Idx&))
   )
   :pattern ((tr_bound%core!clone.Clone. $ (TYPE%core!ops.range.Range. Idx&. Idx&)))
   :qid internal_core__ops__range__impl&__38_trait_impl_definition
   :skolemid skolem_internal_core__ops__range__impl&__38_trait_impl_definition
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

;; Function-Def test_crate::test_loop
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/loops_no_spinoff-c00882ddee9f0402-iter_loop/test.rs:16:1: 16:15 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 core!ops.range.Range.)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const x@ Int)
 (declare-const tmp%%@ core!option.Option.)
 (declare-const tmp%5 Bool)
 (declare-const tmp%6 Bool)
 (declare-const n@0 Int)
 (declare-const iter@0 core!ops.range.Range.)
 (assert
  fuel_defaults
 )
 (declare-const iter@1 core!ops.range.Range.)
 (declare-const n@1 Int)
 (declare-const iter@2 core!ops.range.Range.)
 (declare-const n@2 Int)
 (declare-const %%break_label%%break_label%0 Bool)
 (declare-const %%switch_label%%0 Bool)
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%0 Bool)
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%1 Bool)
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 ;; assertion failed
 (declare-const %%location_label%%6 Bool)
 ;; possible arithmetic underflow/overflow
 (declare-const %%location_label%%7 Bool)
 ;; invariant not satisfied at end of loop body
 (declare-const %%location_label%%8 Bool)
 ;; invariant not satisfied at end of loop body
 (declare-const %%location_label%%9 Bool)
 ;; invariant not satisfied at end of loop body
 (declare-const %%location_label%%10 Bool)
 (assert
  (not (=>
    (= n@0 0)
    (=>
     (= tmp%2 (core!ops.range.Range./Range (I 0) (I 10)))
     (=>
      (ens%core!iter.traits.collect.impl&%1.into_iter. $ (TYPE%core!ops.range.Range. $ (SINT
         32
        )
       ) (Poly%core!ops.range.Range. tmp%2) tmp%1
      )
      (=>
       (= iter@0 (%Poly%core!ops.range.Range. tmp%1))
       (and
        (=>
         %%location_label%%0
         (<= (%I (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. (Poly%core!ops.range.Range.
              iter@0
           )))
          ) 10
        ))
        (and
         (=>
          %%location_label%%1
          (= (%I (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. (Poly%core!ops.range.Range.
               iter@0
            )))
           ) 10
         ))
         (and
          (=>
           %%location_label%%2
           (= n@0 (Mul (%I (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. (Poly%core!ops.range.Range.
                 iter@0
              )))
             ) 3
          )))
          (or
           (and
            (not %%break_label%%break_label%0)
            (=>
             (= tmp%5 (= (%I (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. (Poly%core!ops.range.Range.
                   iter@2
                )))
               ) 10
             ))
             (and
              (=>
               %%location_label%%3
               tmp%5
              )
              (=>
               tmp%5
               (=>
                (= tmp%6 (= n@2 30))
                (=>
                 %%location_label%%4
                 tmp%6
           ))))))
           (=>
            (uInv 64 n@1)
            (=>
             (has_type (Poly%core!ops.range.Range. iter@1) (TYPE%core!ops.range.Range. $ (SINT 32)))
             (=>
              (<= (%I (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. (Poly%core!ops.range.Range.
                   iter@1
                )))
               ) 10
              )
              (=>
               (= (%I (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. (Poly%core!ops.range.Range.
                    iter@1
                 )))
                ) 10
               )
               (=>
                (= n@1 (Mul (%I (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. (Poly%core!ops.range.Range.
                      iter@1
                   )))
                  ) 3
                ))
                (=>
                 (has_type (Poly%core!ops.range.Range. iter@2) (TYPE%core!ops.range.Range. $ (SINT 32)))
                 (=>
                  (ens%core!iter.range.impl&%6.next. $ (SINT 32) iter@1 iter@2 tmp%%@)
                  (or
                   (and
                    (=>
                     (is-core!option.Option./Some tmp%%@)
                     (=>
                      (= x@ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                           tmp%%@
                      )))))
                      (=>
                       (= tmp%3 (< x@ 10))
                       (and
                        (=>
                         %%location_label%%5
                         tmp%3
                        )
                        (=>
                         tmp%3
                         (=>
                          (= tmp%4 (= x@ (Sub (%I (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range.
                                (Poly%core!ops.range.Range. iter@2)
                              ))
                             ) 1
                          )))
                          (and
                           (=>
                            %%location_label%%6
                            tmp%4
                           )
                           (=>
                            tmp%4
                            (and
                             (=>
                              %%location_label%%7
                              (uInv 64 (Add n@1 3))
                             )
                             (=>
                              (= n@2 (uClip 64 (Add n@1 3)))
                              %%switch_label%%0
                    ))))))))))
                    (=>
                     (not (is-core!option.Option./Some tmp%%@))
                     (=>
                      (= n@2 n@1)
                      %%break_label%%break_label%0
                   )))
                   (and
                    (not %%switch_label%%0)
                    (and
                     (=>
                      %%location_label%%8
                      (<= (%I (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. (Poly%core!ops.range.Range.
                           iter@2
                        )))
                       ) 10
                     ))
                     (and
                      (=>
                       %%location_label%%9
                       (= (%I (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. (Poly%core!ops.range.Range.
                            iter@2
                         )))
                        ) 10
                      ))
                      (=>
                       %%location_label%%10
                       (= n@2 (Mul (%I (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. (Poly%core!ops.range.Range.
                             iter@2
                          )))
                         ) 3
 ))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::test_loop_fail
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/loops_no_spinoff-c00882ddee9f0402-iter_loop/test.rs:38:1: 38:20 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 core!ops.range.Range.)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const x@ Int)
 (declare-const tmp%%@ core!option.Option.)
 (declare-const tmp%5 Bool)
 (declare-const tmp%6 Bool)
 (declare-const n@0 Int)
 (declare-const iter@0 core!ops.range.Range.)
 (assert
  fuel_defaults
 )
 (declare-const iter@1 core!ops.range.Range.)
 (declare-const n@1 Int)
 (declare-const iter@2 core!ops.range.Range.)
 (declare-const n@2 Int)
 (declare-const %%break_label%%break_label%0 Bool)
 (declare-const %%switch_label%%0 Bool)
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%0 Bool)
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%1 Bool)
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 ;; assertion failed
 (declare-const %%location_label%%6 Bool)
 ;; possible arithmetic underflow/overflow
 (declare-const %%location_label%%7 Bool)
 ;; invariant not satisfied at end of loop body
 (declare-const %%location_label%%8 Bool)
 ;; invariant not satisfied at end of loop body
 (declare-const %%location_label%%9 Bool)
 ;; invariant not satisfied at end of loop body
 (declare-const %%location_label%%10 Bool)
 (assert
  (not (=>
    (= n@0 0)
    (=>
     (= tmp%2 (core!ops.range.Range./Range (I 0) (I 10)))
     (=>
      (ens%core!iter.traits.collect.impl&%1.into_iter. $ (TYPE%core!ops.range.Range. $ (SINT
         32
        )
       ) (Poly%core!ops.range.Range. tmp%2) tmp%1
      )
      (=>
       (= iter@0 (%Poly%core!ops.range.Range. tmp%1))
       (and
        (=>
         %%location_label%%0
         (<= (%I (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. (Poly%core!ops.range.Range.
              iter@0
           )))
          ) 10
        ))
        (and
         (=>
          %%location_label%%1
          (= (%I (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. (Poly%core!ops.range.Range.
               iter@0
            )))
           ) 10
         ))
         (and
          (=>
           %%location_label%%2
           (= n@0 (Mul (%I (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. (Poly%core!ops.range.Range.
                 iter@0
              )))
             ) 3
          )))
          (or
           (and
            (not %%break_label%%break_label%0)
            (=>
             (= tmp%5 (= (%I (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. (Poly%core!ops.range.Range.
                   iter@2
                )))
               ) 10
             ))
             (and
              (=>
               %%location_label%%3
               tmp%5
              )
              (=>
               tmp%5
               (=>
                (= tmp%6 (= n@2 30))
                (=>
                 %%location_label%%4
                 tmp%6
           ))))))
           (=>
            (uInv 64 n@1)
            (=>
             (has_type (Poly%core!ops.range.Range. iter@1) (TYPE%core!ops.range.Range. $ (SINT 32)))
             (=>
              (<= (%I (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. (Poly%core!ops.range.Range.
                   iter@1
                )))
               ) 10
              )
              (=>
               (= (%I (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. (Poly%core!ops.range.Range.
                    iter@1
                 )))
                ) 10
               )
               (=>
                (= n@1 (Mul (%I (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. (Poly%core!ops.range.Range.
                      iter@1
                   )))
                  ) 3
                ))
                (=>
                 (has_type (Poly%core!ops.range.Range. iter@2) (TYPE%core!ops.range.Range. $ (SINT 32)))
                 (=>
                  (ens%core!iter.range.impl&%6.next. $ (SINT 32) iter@1 iter@2 tmp%%@)
                  (or
                   (and
                    (=>
                     (is-core!option.Option./Some tmp%%@)
                     (=>
                      (= x@ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                           tmp%%@
                      )))))
                      (=>
                       (= tmp%3 (< x@ 9))
                       (and
                        (=>
                         %%location_label%%5
                         tmp%3
                        )
                        (=>
                         tmp%3
                         (=>
                          (= tmp%4 (= x@ (Sub (%I (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range.
                                (Poly%core!ops.range.Range. iter@2)
                              ))
                             ) 1
                          )))
                          (and
                           (=>
                            %%location_label%%6
                            tmp%4
                           )
                           (=>
                            tmp%4
                            (and
                             (=>
                              %%location_label%%7
                              (uInv 64 (Add n@1 3))
                             )
                             (=>
                              (= n@2 (uClip 64 (Add n@1 3)))
                              %%switch_label%%0
                    ))))))))))
                    (=>
                     (not (is-core!option.Option./Some tmp%%@))
                     (=>
                      (= n@2 n@1)
                      %%break_label%%break_label%0
                   )))
                   (and
                    (not %%switch_label%%0)
                    (and
                     (=>
                      %%location_label%%8
                      (<= (%I (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. (Poly%core!ops.range.Range.
                           iter@2
                        )))
                       ) 10
                     ))
                     (and
                      (=>
                       %%location_label%%9
                       (= (%I (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. (Poly%core!ops.range.Range.
                            iter@2
                         )))
                        ) 10
                      ))
                      (=>
                       %%location_label%%10
                       (= n@2 (Mul (%I (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. (Poly%core!ops.range.Range.
                             iter@2
                          )))
                         ) 3
 ))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
 (get-info :reason-unknown)
 (get-model)
 (assert
  (not %%location_label%%5)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Recommends test_crate::test_loop_fail
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/loops_no_spinoff-c00882ddee9f0402-iter_loop/test.rs:38:1: 38:20 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 core!ops.range.Range.)
 (declare-const x@ Int)
 (declare-const tmp%%@ core!option.Option.)
 (declare-const n@0 Int)
 (declare-const iter@0 core!ops.range.Range.)
 (assert
  fuel_defaults
 )
 (declare-const iter@1 core!ops.range.Range.)
 (declare-const n@1 Int)
 (declare-const iter@2 core!ops.range.Range.)
 (declare-const n@2 Int)
 (declare-const %%break_label%%break_label%0 Bool)
 (declare-const %%switch_label%%0 Bool)
 (assert
  (not (=>
    (= n@0 0)
    (=>
     (= tmp%2 (core!ops.range.Range./Range (I 0) (I 10)))
     (=>
      (ens%core!iter.traits.collect.impl&%1.into_iter. $ (TYPE%core!ops.range.Range. $ (SINT
         32
        )
       ) (Poly%core!ops.range.Range. tmp%2) tmp%1
      )
      (=>
       (= iter@0 (%Poly%core!ops.range.Range. tmp%1))
       (or
        (not %%break_label%%break_label%0)
        (=>
         (uInv 64 n@1)
         (=>
          (has_type (Poly%core!ops.range.Range. iter@1) (TYPE%core!ops.range.Range. $ (SINT 32)))
          (=>
           (<= (%I (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. (Poly%core!ops.range.Range.
                iter@1
             )))
            ) 10
           )
           (=>
            (= (%I (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. (Poly%core!ops.range.Range.
                 iter@1
              )))
             ) 10
            )
            (=>
             (= n@1 (Mul (%I (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. (Poly%core!ops.range.Range.
                   iter@1
                )))
               ) 3
             ))
             (=>
              (has_type (Poly%core!ops.range.Range. iter@2) (TYPE%core!ops.range.Range. $ (SINT 32)))
              (=>
               (ens%core!iter.range.impl&%6.next. $ (SINT 32) iter@1 iter@2 tmp%%@)
               (or
                (and
                 (=>
                  (is-core!option.Option./Some tmp%%@)
                  (=>
                   (= x@ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                        tmp%%@
                   )))))
                   (=>
                    (< x@ 9)
                    (=>
                     (= x@ (Sub (%I (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. (Poly%core!ops.range.Range.
                           iter@2
                        )))
                       ) 1
                     ))
                     (=>
                      (= n@2 (uClip 64 (Add n@1 3)))
                      %%switch_label%%0
                 )))))
                 (=>
                  (not (is-core!option.Option./Some tmp%%@))
                  (=>
                   (= n@2 n@1)
                   %%break_label%%break_label%0
                )))
                (not %%switch_label%%0)
 )))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
