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
(declare-const fuel%vstd!std_specs.range.impl&%3.spec_steps_between. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%3.spec_forward_checked. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%3.spec_forward_checked_int. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%3.spec_backward_checked. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%3.spec_backward_checked_int. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%7.spec_steps_between. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%7.spec_forward_checked. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%7.spec_forward_checked_int. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%7.spec_backward_checked. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%7.spec_backward_checked_int. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%8.spec_steps_between. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%8.spec_forward_checked. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%8.spec_forward_checked_int. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%8.spec_backward_checked. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%8.spec_backward_checked_int. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%9.spec_steps_between. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%9.spec_forward_checked. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%9.spec_forward_checked_int. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%9.spec_backward_checked. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%9.spec_backward_checked_int. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%13.spec_steps_between. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%13.spec_forward_checked. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%13.spec_forward_checked_int. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%13.spec_backward_checked. FuelId)
(declare-const fuel%vstd!std_specs.range.impl&%13.spec_backward_checked_int. FuelId)
(declare-const fuel%test_crate!and_then. FuelId)
(declare-const fuel%test_crate!checked_add_usize. FuelId)
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
 (distinct fuel%vstd!std_specs.range.impl&%3.spec_steps_between. fuel%vstd!std_specs.range.impl&%3.spec_forward_checked.
  fuel%vstd!std_specs.range.impl&%3.spec_forward_checked_int. fuel%vstd!std_specs.range.impl&%3.spec_backward_checked.
  fuel%vstd!std_specs.range.impl&%3.spec_backward_checked_int. fuel%vstd!std_specs.range.impl&%7.spec_steps_between.
  fuel%vstd!std_specs.range.impl&%7.spec_forward_checked. fuel%vstd!std_specs.range.impl&%7.spec_forward_checked_int.
  fuel%vstd!std_specs.range.impl&%7.spec_backward_checked. fuel%vstd!std_specs.range.impl&%7.spec_backward_checked_int.
  fuel%vstd!std_specs.range.impl&%8.spec_steps_between. fuel%vstd!std_specs.range.impl&%8.spec_forward_checked.
  fuel%vstd!std_specs.range.impl&%8.spec_forward_checked_int. fuel%vstd!std_specs.range.impl&%8.spec_backward_checked.
  fuel%vstd!std_specs.range.impl&%8.spec_backward_checked_int. fuel%vstd!std_specs.range.impl&%9.spec_steps_between.
  fuel%vstd!std_specs.range.impl&%9.spec_forward_checked. fuel%vstd!std_specs.range.impl&%9.spec_forward_checked_int.
  fuel%vstd!std_specs.range.impl&%9.spec_backward_checked. fuel%vstd!std_specs.range.impl&%9.spec_backward_checked_int.
  fuel%vstd!std_specs.range.impl&%13.spec_steps_between. fuel%vstd!std_specs.range.impl&%13.spec_forward_checked.
  fuel%vstd!std_specs.range.impl&%13.spec_forward_checked_int. fuel%vstd!std_specs.range.impl&%13.spec_backward_checked.
  fuel%vstd!std_specs.range.impl&%13.spec_backward_checked_int. fuel%test_crate!and_then.
  fuel%test_crate!checked_add_usize. fuel%vstd!array.group_array_axioms. fuel%vstd!map.group_map_axioms.
  fuel%vstd!multiset.group_multiset_axioms. fuel%vstd!raw_ptr.group_raw_ptr_axioms.
  fuel%vstd!seq.group_seq_axioms. fuel%vstd!seq_lib.group_seq_lib_default. fuel%vstd!set.group_set_axioms.
  fuel%vstd!set_lib.group_set_lib_axioms. fuel%vstd!slice.group_slice_axioms. fuel%vstd!string.group_string_axioms.
  fuel%vstd!std_specs.bits.group_bits_axioms. fuel%vstd!std_specs.control_flow.group_control_flow_axioms.
  fuel%vstd!std_specs.range.group_range_axioms. fuel%vstd!std_specs.vec.group_vec_axioms.
  fuel%vstd!group_vstd_default.
))
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
(declare-datatypes ((core!option.Option. 0) (tuple%0. 0)) (((core!option.Option./None)
   (core!option.Option./Some (core!option.Option./Some/?0 Poly))
  ) ((tuple%0./tuple%0))
))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun TYPE%fun%1. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%fun%1. (%%Function%%) Poly)
(declare-fun %Poly%fun%1. (Poly) %%Function%%)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
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
(declare-fun tr_bound%vstd!std_specs.range.StepSpec. (Dcr Type) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%vstd!std_specs.range.StepSpec. Self%&. Self%&))
   :qid internal_vstd__std_specs__range__StepSpec_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__std_specs__range__StepSpec_trait_type_bounds_definition
)))

;; Function-Decl vstd::std_specs::range::StepSpec::spec_steps_between
(declare-fun vstd!std_specs.range.StepSpec.spec_steps_between.? (Dcr Type Poly Poly)
 Poly
)
(declare-fun vstd!std_specs.range.StepSpec.spec_steps_between%default%.? (Dcr Type
  Poly Poly
 ) Poly
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

;; Function-Decl vstd::std_specs::range::StepSpec::spec_backward_checked
(declare-fun vstd!std_specs.range.StepSpec.spec_backward_checked.? (Dcr Type Poly Poly)
 Poly
)
(declare-fun vstd!std_specs.range.StepSpec.spec_backward_checked%default%.? (Dcr Type
  Poly Poly
 ) Poly
)

;; Function-Decl vstd::std_specs::range::StepSpec::spec_backward_checked_int
(declare-fun vstd!std_specs.range.StepSpec.spec_backward_checked_int.? (Dcr Type Poly
  Poly
 ) Poly
)
(declare-fun vstd!std_specs.range.StepSpec.spec_backward_checked_int%default%.? (Dcr
  Type Poly Poly
 ) Poly
)

;; Function-Decl test_crate::and_then
(declare-fun test_crate!and_then.? (Dcr Type Dcr Type Poly Poly) core!option.Option.)

;; Function-Decl test_crate::checked_add_usize
(declare-fun test_crate!checked_add_usize.? (Poly Poly) core!option.Option.)

;; Function-Axioms vstd::std_specs::range::StepSpec::spec_steps_between
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (end! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type end! Self%&)
    )
    (has_type (vstd!std_specs.range.StepSpec.spec_steps_between.? Self%&. Self%& self!
      end!
     ) (TYPE%core!option.Option. $ (UINT SZ))
   ))
   :pattern ((vstd!std_specs.range.StepSpec.spec_steps_between.? Self%&. Self%& self!
     end!
   ))
   :qid internal_vstd!std_specs.range.StepSpec.spec_steps_between.?_pre_post_definition
   :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_steps_between.?_pre_post_definition
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

;; Function-Axioms vstd::std_specs::range::StepSpec::spec_backward_checked
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (count! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type count! (UINT SZ))
    )
    (has_type (vstd!std_specs.range.StepSpec.spec_backward_checked.? Self%&. Self%& self!
      count!
     ) (TYPE%core!option.Option. Self%&. Self%&)
   ))
   :pattern ((vstd!std_specs.range.StepSpec.spec_backward_checked.? Self%&. Self%& self!
     count!
   ))
   :qid internal_vstd!std_specs.range.StepSpec.spec_backward_checked.?_pre_post_definition
   :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_backward_checked.?_pre_post_definition
)))

;; Function-Axioms vstd::std_specs::range::StepSpec::spec_backward_checked_int
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (count! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type count! INT)
    )
    (has_type (vstd!std_specs.range.StepSpec.spec_backward_checked_int.? Self%&. Self%&
      self! count!
     ) (TYPE%core!option.Option. Self%&. Self%&)
   ))
   :pattern ((vstd!std_specs.range.StepSpec.spec_backward_checked_int.? Self%&. Self%&
     self! count!
   ))
   :qid internal_vstd!std_specs.range.StepSpec.spec_backward_checked_int.?_pre_post_definition
   :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_backward_checked_int.?_pre_post_definition
)))

;; Function-Axioms vstd::std_specs::range::impl&%3::spec_steps_between
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%3.spec_steps_between.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%3.spec_steps_between.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_steps_between.? $ (UINT 8) self! end!) (Poly%core!option.Option.
      (let
       ((n$ (Sub (%I end!) (%I self!))))
       (ite
        (and
         (<= 0 n$)
         (<= n$ (- (uHi SZ) 1))
        )
        (core!option.Option./Some (I (uClip SZ n$)))
        core!option.Option./None
    ))))
    :pattern ((vstd!std_specs.range.StepSpec.spec_steps_between.? $ (UINT 8) self! end!))
    :qid internal_vstd!std_specs.range.StepSpec.spec_steps_between.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_steps_between.?_definition
))))

;; Function-Axioms vstd::std_specs::range::impl&%3::spec_forward_checked_int
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%3.spec_forward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%3.spec_forward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT 8) self! count!)
     (Poly%core!option.Option. (ite
       (<= (Add (%I self!) (%I count!)) 255)
       (core!option.Option./Some (I (uClip 8 (Add (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd!std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT 8) self!
      count!
    ))
    :qid internal_vstd!std_specs.range.StepSpec.spec_forward_checked_int.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_forward_checked_int.?_definition
))))

;; Function-Axioms vstd::std_specs::range::impl&%3::spec_forward_checked
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%3.spec_forward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%3.spec_forward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_forward_checked.? $ (UINT 8) self! count!)
     (vstd!std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT 8) self! count!)
    )
    :pattern ((vstd!std_specs.range.StepSpec.spec_forward_checked.? $ (UINT 8) self! count!))
    :qid internal_vstd!std_specs.range.StepSpec.spec_forward_checked.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_forward_checked.?_definition
))))

;; Function-Axioms vstd::std_specs::range::impl&%3::spec_backward_checked_int
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%3.spec_backward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%3.spec_backward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_backward_checked_int.? $ (UINT 8) self! count!)
     (Poly%core!option.Option. (ite
       (>= (Sub (%I self!) (%I count!)) 0)
       (core!option.Option./Some (I (uClip 8 (Sub (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd!std_specs.range.StepSpec.spec_backward_checked_int.? $ (UINT 8) self!
      count!
    ))
    :qid internal_vstd!std_specs.range.StepSpec.spec_backward_checked_int.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_backward_checked_int.?_definition
))))

;; Function-Axioms vstd::std_specs::range::impl&%3::spec_backward_checked
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%3.spec_backward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%3.spec_backward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_backward_checked.? $ (UINT 8) self! count!)
     (vstd!std_specs.range.StepSpec.spec_backward_checked_int.? $ (UINT 8) self! count!)
    )
    :pattern ((vstd!std_specs.range.StepSpec.spec_backward_checked.? $ (UINT 8) self! count!))
    :qid internal_vstd!std_specs.range.StepSpec.spec_backward_checked.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_backward_checked.?_definition
))))

;; Function-Axioms vstd::std_specs::range::impl&%7::spec_steps_between
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%7.spec_steps_between.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%7.spec_steps_between.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_steps_between.? $ (UINT 128) self! end!) (Poly%core!option.Option.
      (let
       ((n$ (Sub (%I end!) (%I self!))))
       (ite
        (and
         (<= 0 n$)
         (<= n$ (- (uHi SZ) 1))
        )
        (core!option.Option./Some (I (uClip SZ n$)))
        core!option.Option./None
    ))))
    :pattern ((vstd!std_specs.range.StepSpec.spec_steps_between.? $ (UINT 128) self! end!))
    :qid internal_vstd!std_specs.range.StepSpec.spec_steps_between.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_steps_between.?_definition
))))

;; Function-Axioms vstd::std_specs::range::impl&%7::spec_forward_checked_int
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%7.spec_forward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%7.spec_forward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT 128) self! count!)
     (Poly%core!option.Option. (ite
       (<= (Add (%I self!) (%I count!)) 340282366920938463463374607431768211455)
       (core!option.Option./Some (I (uClip 128 (Add (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd!std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT 128) self!
      count!
    ))
    :qid internal_vstd!std_specs.range.StepSpec.spec_forward_checked_int.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_forward_checked_int.?_definition
))))

;; Function-Axioms vstd::std_specs::range::impl&%7::spec_forward_checked
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%7.spec_forward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%7.spec_forward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_forward_checked.? $ (UINT 128) self! count!)
     (vstd!std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT 128) self! count!)
    )
    :pattern ((vstd!std_specs.range.StepSpec.spec_forward_checked.? $ (UINT 128) self!
      count!
    ))
    :qid internal_vstd!std_specs.range.StepSpec.spec_forward_checked.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_forward_checked.?_definition
))))

;; Function-Axioms vstd::std_specs::range::impl&%7::spec_backward_checked_int
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%7.spec_backward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%7.spec_backward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_backward_checked_int.? $ (UINT 128) self! count!)
     (Poly%core!option.Option. (ite
       (>= (Sub (%I self!) (%I count!)) 0)
       (core!option.Option./Some (I (uClip 128 (Sub (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd!std_specs.range.StepSpec.spec_backward_checked_int.? $ (UINT 128) self!
      count!
    ))
    :qid internal_vstd!std_specs.range.StepSpec.spec_backward_checked_int.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_backward_checked_int.?_definition
))))

;; Function-Axioms vstd::std_specs::range::impl&%7::spec_backward_checked
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%7.spec_backward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%7.spec_backward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_backward_checked.? $ (UINT 128) self! count!)
     (vstd!std_specs.range.StepSpec.spec_backward_checked_int.? $ (UINT 128) self! count!)
    )
    :pattern ((vstd!std_specs.range.StepSpec.spec_backward_checked.? $ (UINT 128) self!
      count!
    ))
    :qid internal_vstd!std_specs.range.StepSpec.spec_backward_checked.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_backward_checked.?_definition
))))

;; Function-Axioms vstd::std_specs::range::impl&%8::spec_steps_between
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%8.spec_steps_between.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%8.spec_steps_between.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_steps_between.? $ (UINT SZ) self! end!) (Poly%core!option.Option.
      (let
       ((n$ (Sub (%I end!) (%I self!))))
       (ite
        (and
         (<= 0 n$)
         (<= n$ (- (uHi SZ) 1))
        )
        (core!option.Option./Some (I (uClip SZ n$)))
        core!option.Option./None
    ))))
    :pattern ((vstd!std_specs.range.StepSpec.spec_steps_between.? $ (UINT SZ) self! end!))
    :qid internal_vstd!std_specs.range.StepSpec.spec_steps_between.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_steps_between.?_definition
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

;; Function-Axioms vstd::std_specs::range::impl&%8::spec_backward_checked_int
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%8.spec_backward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%8.spec_backward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_backward_checked_int.? $ (UINT SZ) self! count!)
     (Poly%core!option.Option. (ite
       (>= (Sub (%I self!) (%I count!)) 0)
       (core!option.Option./Some (I (uClip SZ (Sub (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd!std_specs.range.StepSpec.spec_backward_checked_int.? $ (UINT SZ) self!
      count!
    ))
    :qid internal_vstd!std_specs.range.StepSpec.spec_backward_checked_int.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_backward_checked_int.?_definition
))))

;; Function-Axioms vstd::std_specs::range::impl&%8::spec_backward_checked
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%8.spec_backward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%8.spec_backward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_backward_checked.? $ (UINT SZ) self! count!)
     (vstd!std_specs.range.StepSpec.spec_backward_checked_int.? $ (UINT SZ) self! count!)
    )
    :pattern ((vstd!std_specs.range.StepSpec.spec_backward_checked.? $ (UINT SZ) self!
      count!
    ))
    :qid internal_vstd!std_specs.range.StepSpec.spec_backward_checked.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_backward_checked.?_definition
))))

;; Function-Axioms vstd::std_specs::range::impl&%9::spec_steps_between
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%9.spec_steps_between.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%9.spec_steps_between.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_steps_between.? $ (SINT 8) self! end!) (Poly%core!option.Option.
      (let
       ((n$ (Sub (%I end!) (%I self!))))
       (ite
        (and
         (<= 0 n$)
         (<= n$ (- (uHi SZ) 1))
        )
        (core!option.Option./Some (I (uClip SZ n$)))
        core!option.Option./None
    ))))
    :pattern ((vstd!std_specs.range.StepSpec.spec_steps_between.? $ (SINT 8) self! end!))
    :qid internal_vstd!std_specs.range.StepSpec.spec_steps_between.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_steps_between.?_definition
))))

;; Function-Axioms vstd::std_specs::range::impl&%9::spec_forward_checked_int
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%9.spec_forward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%9.spec_forward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_forward_checked_int.? $ (SINT 8) self! count!)
     (Poly%core!option.Option. (ite
       (<= (Add (%I self!) (%I count!)) 127)
       (core!option.Option./Some (I (iClip 8 (Add (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd!std_specs.range.StepSpec.spec_forward_checked_int.? $ (SINT 8) self!
      count!
    ))
    :qid internal_vstd!std_specs.range.StepSpec.spec_forward_checked_int.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_forward_checked_int.?_definition
))))

;; Function-Axioms vstd::std_specs::range::impl&%9::spec_forward_checked
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%9.spec_forward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%9.spec_forward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_forward_checked.? $ (SINT 8) self! count!)
     (vstd!std_specs.range.StepSpec.spec_forward_checked_int.? $ (SINT 8) self! count!)
    )
    :pattern ((vstd!std_specs.range.StepSpec.spec_forward_checked.? $ (SINT 8) self! count!))
    :qid internal_vstd!std_specs.range.StepSpec.spec_forward_checked.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_forward_checked.?_definition
))))

;; Function-Axioms vstd::std_specs::range::impl&%9::spec_backward_checked_int
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%9.spec_backward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%9.spec_backward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_backward_checked_int.? $ (SINT 8) self! count!)
     (Poly%core!option.Option. (ite
       (>= (Sub (%I self!) (%I count!)) (- 128))
       (core!option.Option./Some (I (iClip 8 (Sub (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd!std_specs.range.StepSpec.spec_backward_checked_int.? $ (SINT 8) self!
      count!
    ))
    :qid internal_vstd!std_specs.range.StepSpec.spec_backward_checked_int.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_backward_checked_int.?_definition
))))

;; Function-Axioms vstd::std_specs::range::impl&%9::spec_backward_checked
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%9.spec_backward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%9.spec_backward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_backward_checked.? $ (SINT 8) self! count!)
     (vstd!std_specs.range.StepSpec.spec_backward_checked_int.? $ (SINT 8) self! count!)
    )
    :pattern ((vstd!std_specs.range.StepSpec.spec_backward_checked.? $ (SINT 8) self! count!))
    :qid internal_vstd!std_specs.range.StepSpec.spec_backward_checked.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_backward_checked.?_definition
))))

;; Function-Axioms vstd::std_specs::range::impl&%13::spec_steps_between
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%13.spec_steps_between.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%13.spec_steps_between.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_steps_between.? $ (SINT 128) self! end!) (Poly%core!option.Option.
      (let
       ((n$ (Sub (%I end!) (%I self!))))
       (ite
        (and
         (<= 0 n$)
         (<= n$ (- (uHi SZ) 1))
        )
        (core!option.Option./Some (I (uClip SZ n$)))
        core!option.Option./None
    ))))
    :pattern ((vstd!std_specs.range.StepSpec.spec_steps_between.? $ (SINT 128) self! end!))
    :qid internal_vstd!std_specs.range.StepSpec.spec_steps_between.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_steps_between.?_definition
))))

;; Function-Axioms vstd::std_specs::range::impl&%13::spec_forward_checked_int
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%13.spec_forward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%13.spec_forward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_forward_checked_int.? $ (SINT 128) self! count!)
     (Poly%core!option.Option. (ite
       (<= (Add (%I self!) (%I count!)) 170141183460469231731687303715884105727)
       (core!option.Option./Some (I (iClip 128 (Add (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd!std_specs.range.StepSpec.spec_forward_checked_int.? $ (SINT 128) self!
      count!
    ))
    :qid internal_vstd!std_specs.range.StepSpec.spec_forward_checked_int.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_forward_checked_int.?_definition
))))

;; Function-Axioms vstd::std_specs::range::impl&%13::spec_forward_checked
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%13.spec_forward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%13.spec_forward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_forward_checked.? $ (SINT 128) self! count!)
     (vstd!std_specs.range.StepSpec.spec_forward_checked_int.? $ (SINT 128) self! count!)
    )
    :pattern ((vstd!std_specs.range.StepSpec.spec_forward_checked.? $ (SINT 128) self!
      count!
    ))
    :qid internal_vstd!std_specs.range.StepSpec.spec_forward_checked.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_forward_checked.?_definition
))))

;; Function-Axioms vstd::std_specs::range::impl&%13::spec_backward_checked_int
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%13.spec_backward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%13.spec_backward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_backward_checked_int.? $ (SINT 128) self! count!)
     (Poly%core!option.Option. (ite
       (>= (Sub (%I self!) (%I count!)) (- 170141183460469231731687303715884105728))
       (core!option.Option./Some (I (iClip 128 (Sub (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd!std_specs.range.StepSpec.spec_backward_checked_int.? $ (SINT 128) self!
      count!
    ))
    :qid internal_vstd!std_specs.range.StepSpec.spec_backward_checked_int.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_backward_checked_int.?_definition
))))

;; Function-Axioms vstd::std_specs::range::impl&%13::spec_backward_checked
(assert
 (fuel_bool_default fuel%vstd!std_specs.range.impl&%13.spec_backward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.range.impl&%13.spec_backward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd!std_specs.range.StepSpec.spec_backward_checked.? $ (SINT 128) self! count!)
     (vstd!std_specs.range.StepSpec.spec_backward_checked_int.? $ (SINT 128) self! count!)
    )
    :pattern ((vstd!std_specs.range.StepSpec.spec_backward_checked.? $ (SINT 128) self!
      count!
    ))
    :qid internal_vstd!std_specs.range.StepSpec.spec_backward_checked.?_definition
    :skolemid skolem_internal_vstd!std_specs.range.StepSpec.spec_backward_checked.?_definition
))))

;; Function-Axioms test_crate::and_then
(assert
 (fuel_bool_default fuel%test_crate!and_then.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!and_then.)
  (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (o! Poly) (f! Poly)) (!
    (= (test_crate!and_then.? A&. A& B&. B& o! f!) (ite
      (is-core!option.Option./Some (%Poly%core!option.Option. o!))
      (%Poly%core!option.Option. (let
        ((a$ (core!option.Option./Some/0 (%Poly%core!option.Option. o!))))
        (%%apply%%0 (%Poly%fun%1. f!) a$)
      ))
      core!option.Option./None
    ))
    :pattern ((test_crate!and_then.? A&. A& B&. B& o! f!))
    :qid internal_test_crate!and_then.?_definition
    :skolemid skolem_internal_test_crate!and_then.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (o! Poly) (f! Poly)) (!
   (=>
    (and
     (has_type o! (TYPE%core!option.Option. A&. A&))
     (has_type f! (TYPE%fun%1. A&. A& $ (TYPE%core!option.Option. B&. B&)))
    )
    (has_type (Poly%core!option.Option. (test_crate!and_then.? A&. A& B&. B& o! f!)) (
      TYPE%core!option.Option. B&. B&
   )))
   :pattern ((test_crate!and_then.? A&. A& B&. B& o! f!))
   :qid internal_test_crate!and_then.?_pre_post_definition
   :skolemid skolem_internal_test_crate!and_then.?_pre_post_definition
)))

;; Function-Axioms test_crate::checked_add_usize
(assert
 (fuel_bool_default fuel%test_crate!checked_add_usize.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!checked_add_usize.)
  (forall ((a! Poly) (b! Poly)) (!
    (= (test_crate!checked_add_usize.? a! b!) (ite
      (let
       ((tmp%%$ (Add (%I a!) (%I b!))))
       (and
        (<= 0 tmp%%$)
        (<= tmp%%$ (- (uHi SZ) 1))
      ))
      (core!option.Option./Some (I (uClip SZ (Add (%I a!) (%I b!)))))
      core!option.Option./None
    ))
    :pattern ((test_crate!checked_add_usize.? a! b!))
    :qid internal_test_crate!checked_add_usize.?_definition
    :skolemid skolem_internal_test_crate!checked_add_usize.?_definition
))))
(assert
 (forall ((a! Poly) (b! Poly)) (!
   (=>
    (and
     (has_type a! (UINT SZ))
     (has_type b! (UINT SZ))
    )
    (has_type (Poly%core!option.Option. (test_crate!checked_add_usize.? a! b!)) (TYPE%core!option.Option.
      $ (UINT SZ)
   )))
   :pattern ((test_crate!checked_add_usize.? a! b!))
   :qid internal_test_crate!checked_add_usize.?_pre_post_definition
   :skolemid skolem_internal_test_crate!checked_add_usize.?_pre_post_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!std_specs.range.StepSpec. $ (UINT 8))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!std_specs.range.StepSpec. $ (UINT 128))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!std_specs.range.StepSpec. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!std_specs.range.StepSpec. $ (SINT 8))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!std_specs.range.StepSpec. $ (SINT 128))
)

;; Function-Def test_crate::step_properties_u8
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/integers-b0e0613f666db427-test_step/test.rs:26:7: 26:62 (#0)
(get-info :all-statistics)
(push)
 (declare-const a! Int)
 (declare-const b! Int)
 (declare-const n! Int)
 (declare-const m! Int)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Bool)
 (declare-const tmp%6 Bool)
 (declare-const tmp%7 Bool)
 (declare-const tmp%8 Bool)
 (declare-const tmp%9 Bool)
 (declare-const tmp%10 Bool)
 (declare-const tmp%11 Bool)
 (declare-const tmp%12 Bool)
 (declare-const tmp%13 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 8 a!)
 )
 (assert
  (uInv 8 b!)
 )
 (assert
  (uInv SZ n!)
 )
 (assert
  (uInv SZ m!)
 )
 (declare-fun %%lambda%%0 (Dcr Type Poly) %%Function%%)
 (assert
  (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (x$ Poly)) (!
    (= (%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2) x$) (vstd!std_specs.range.StepSpec.spec_forward_checked.?
      %%hole%%0 %%hole%%1 x$ %%hole%%2
    ))
    :pattern ((%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2) x$))
 )))
 (declare-fun %%lambda%%1 (Dcr Type Poly) %%Function%%)
 (assert
  (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (x$ Poly)) (!
    (= (%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1 %%hole%%2) x$) (vstd!std_specs.range.StepSpec.spec_backward_checked.?
      %%hole%%0 %%hole%%1 x$ %%hole%%2
    ))
    :pattern ((%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1 %%hole%%2) x$))
 )))
 (declare-fun %%lambda%%2 (Dcr Type Poly) %%Function%%)
 (assert
  (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (x$ Poly)) (!
    (= (%%apply%%0 (%%lambda%%2 %%hole%%0 %%hole%%1 %%hole%%2) x$) (vstd!std_specs.range.StepSpec.spec_backward_checked.?
      %%hole%%0 %%hole%%1 %%hole%%2 x$
    ))
    :pattern ((%%apply%%0 (%%lambda%%2 %%hole%%0 %%hole%%1 %%hole%%2) x$))
 )))
 (declare-fun %%lambda%%3 (Dcr Type Poly core!option.Option. core!option.Option.) %%Function%%)
 (assert
  (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 core!option.Option.)
    (%%hole%%4 core!option.Option.) (x$ Poly)
   ) (!
    (= (%%apply%%0 (%%lambda%%3 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4) x$)
     (Poly%core!option.Option. (let
       ((tmp%%$ %%hole%%4))
       (ite
        (is-core!option.Option./Some tmp%%$)
        (%Poly%core!option.Option. (let
          ((z$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                tmp%%$
          ))))))
          (vstd!std_specs.range.StepSpec.spec_backward_checked.? %%hole%%0 %%hole%%1 %%hole%%2
           (I z$)
        )))
        %%hole%%3
    ))))
    :pattern ((%%apply%%0 (%%lambda%%3 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4)
      x$
 )))))
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
    (= tmp%1 (= (= (%Poly%core!option.Option. (vstd!std_specs.range.StepSpec.spec_steps_between.?
         $ (UINT 8) (I a!) (I b!)
        )
       ) (core!option.Option./Some (I n!))
      ) (= (%Poly%core!option.Option. (vstd!std_specs.range.StepSpec.spec_forward_checked.?
         $ (UINT 8) (I a!) (I n!)
        )
       ) (core!option.Option./Some (I b!))
    )))
    (and
     (=>
      %%location_label%%0
      tmp%1
     )
     (=>
      tmp%1
      (=>
       (= tmp%2 (= (= (%Poly%core!option.Option. (vstd!std_specs.range.StepSpec.spec_steps_between.?
            $ (UINT 8) (I a!) (I b!)
           )
          ) (core!option.Option./Some (I n!))
         ) (= (%Poly%core!option.Option. (vstd!std_specs.range.StepSpec.spec_backward_checked.?
            $ (UINT 8) (I b!) (I n!)
           )
          ) (core!option.Option./Some (I a!))
       )))
       (and
        (=>
         %%location_label%%1
         tmp%2
        )
        (=>
         tmp%2
         (=>
          (= tmp%3 (=>
            (= (%Poly%core!option.Option. (vstd!std_specs.range.StepSpec.spec_steps_between.? $
               (UINT 8) (I a!) (I b!)
              )
             ) (core!option.Option./Some (I n!))
            )
            (<= a! b!)
          ))
          (and
           (=>
            %%location_label%%2
            tmp%3
           )
           (=>
            tmp%3
            (=>
             (= tmp%4 (= (= (%Poly%core!option.Option. (vstd!std_specs.range.StepSpec.spec_steps_between.?
                  $ (UINT 8) (I a!) (I b!)
                 )
                ) core!option.Option./None
               ) (> a! b!)
             ))
             (and
              (=>
               %%location_label%%3
               tmp%4
              )
              (=>
               tmp%4
               (=>
                (= tmp%5 (ext_eq false (TYPE%core!option.Option. $ (UINT 8)) (Poly%core!option.Option.
                   (test_crate!and_then.? $ (UINT 8) $ (UINT 8) (vstd!std_specs.range.StepSpec.spec_forward_checked.?
                     $ (UINT 8) (I a!) (I n!)
                    ) (Poly%fun%1. (mk_fun (%%lambda%%0 $ (UINT 8) (I m!))))
                   )
                  ) (Poly%core!option.Option. (test_crate!and_then.? $ (UINT 8) $ (UINT 8) (vstd!std_specs.range.StepSpec.spec_forward_checked.?
                     $ (UINT 8) (I a!) (I m!)
                    ) (Poly%fun%1. (mk_fun (%%lambda%%0 $ (UINT 8) (I n!))))
                ))))
                (and
                 (=>
                  %%location_label%%4
                  tmp%5
                 )
                 (=>
                  tmp%5
                  (=>
                   (= tmp%6 (=>
                     (<= (Add n! m!) (- (uHi SZ) 1))
                     (ext_eq false (TYPE%core!option.Option. $ (UINT 8)) (Poly%core!option.Option. (test_crate!and_then.?
                        $ (UINT 8) $ (UINT 8) (vstd!std_specs.range.StepSpec.spec_forward_checked.? $ (UINT
                          8
                         ) (I a!) (I n!)
                        ) (Poly%fun%1. (mk_fun (%%lambda%%0 $ (UINT 8) (I m!))))
                       )
                      ) (vstd!std_specs.range.StepSpec.spec_forward_checked.? $ (UINT 8) (I a!) (I (uClip
                         SZ (Add n! m!)
                   ))))))
                   (and
                    (=>
                     %%location_label%%5
                     tmp%6
                    )
                    (=>
                     tmp%6
                     (=>
                      (= tmp%7 (=>
                        (> (Add n! m!) (- (uHi SZ) 1))
                        (ext_eq false (TYPE%core!option.Option. $ (UINT 8)) (Poly%core!option.Option. (test_crate!and_then.?
                           $ (UINT 8) $ (UINT 8) (vstd!std_specs.range.StepSpec.spec_forward_checked.? $ (UINT
                             8
                            ) (I a!) (I n!)
                           ) (Poly%fun%1. (mk_fun (%%lambda%%0 $ (UINT 8) (I m!))))
                          )
                         ) (Poly%core!option.Option. core!option.Option./None)
                      )))
                      (and
                       (=>
                        %%location_label%%6
                        tmp%7
                       )
                       (=>
                        tmp%7
                        (=>
                         (= tmp%8 (ext_eq false (TYPE%core!option.Option. $ (UINT 8)) (Poly%core!option.Option.
                            (test_crate!and_then.? $ (UINT 8) $ (UINT 8) (vstd!std_specs.range.StepSpec.spec_backward_checked.?
                              $ (UINT 8) (I a!) (I n!)
                             ) (Poly%fun%1. (mk_fun (%%lambda%%1 $ (UINT 8) (I m!))))
                            )
                           ) (Poly%core!option.Option. (test_crate!and_then.? $ (UINT SZ) $ (UINT 8) (Poly%core!option.Option.
                              (test_crate!checked_add_usize.? (I n!) (I m!))
                             ) (Poly%fun%1. (mk_fun (%%lambda%%2 $ (UINT 8) (I a!))))
                         ))))
                         (and
                          (=>
                           %%location_label%%7
                           tmp%8
                          )
                          (=>
                           tmp%8
                           (=>
                            (= tmp%9 (ext_eq false (TYPE%core!option.Option. $ (UINT 8)) (Poly%core!option.Option.
                               (test_crate!and_then.? $ (UINT 8) $ (UINT 8) (vstd!std_specs.range.StepSpec.spec_backward_checked.?
                                 $ (UINT 8) (I a!) (I n!)
                                ) (Poly%fun%1. (mk_fun (%%lambda%%1 $ (UINT 8) (I m!))))
                               )
                              ) (Poly%core!option.Option. (test_crate!and_then.? $ (UINT SZ) $ (UINT 8) (Poly%core!option.Option.
                                 (test_crate!checked_add_usize.? (I n!) (I m!))
                                ) (Poly%fun%1. (mk_fun (%%lambda%%3 $ (UINT 8) (I a!) core!option.Option./None (test_crate!checked_add_usize.?
                                    (I n!) (I m!)
                            ))))))))
                            (and
                             (=>
                              %%location_label%%8
                              tmp%9
                             )
                             (=>
                              tmp%9
                              (=>
                               (= tmp%10 (=>
                                 (< a! 255)
                                 (ext_eq false (TYPE%core!option.Option. $ (UINT 8)) (vstd!std_specs.range.StepSpec.spec_forward_checked.?
                                   $ (UINT 8) (I a!) (I 1)
                                  ) (Poly%core!option.Option. (core!option.Option./Some (I (uClip 8 (Add a! 1)))))
                               )))
                               (and
                                (=>
                                 %%location_label%%9
                                 tmp%10
                                )
                                (=>
                                 tmp%10
                                 (=>
                                  (= tmp%11 (=>
                                    (>= a! 255)
                                    (ext_eq false (TYPE%core!option.Option. $ (UINT 8)) (vstd!std_specs.range.StepSpec.spec_forward_checked.?
                                      $ (UINT 8) (I a!) (I 1)
                                     ) (Poly%core!option.Option. core!option.Option./None)
                                  )))
                                  (and
                                   (=>
                                    %%location_label%%10
                                    tmp%11
                                   )
                                   (=>
                                    tmp%11
                                    (=>
                                     (= tmp%12 (=>
                                       (>= a! 1)
                                       (ext_eq false (TYPE%core!option.Option. $ (UINT 8)) (vstd!std_specs.range.StepSpec.spec_backward_checked.?
                                         $ (UINT 8) (I a!) (I 1)
                                        ) (Poly%core!option.Option. (core!option.Option./Some (I (uClip 8 (Sub a! 1)))))
                                     )))
                                     (and
                                      (=>
                                       %%location_label%%11
                                       tmp%12
                                      )
                                      (=>
                                       tmp%12
                                       (=>
                                        (= tmp%13 (=>
                                          (< a! 1)
                                          (ext_eq false (TYPE%core!option.Option. $ (UINT 8)) (vstd!std_specs.range.StepSpec.spec_backward_checked.?
                                            $ (UINT 8) (I a!) (I 1)
                                           ) (Poly%core!option.Option. core!option.Option./None)
                                        )))
                                        (=>
                                         %%location_label%%12
                                         tmp%13
 ))))))))))))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::step_properties_i8
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/integers-b0e0613f666db427-test_step/test.rs:49:7: 49:62 (#0)
(get-info :all-statistics)
(push)
 (declare-const a! Int)
 (declare-const b! Int)
 (declare-const n! Int)
 (declare-const m! Int)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Bool)
 (declare-const tmp%6 Bool)
 (declare-const tmp%7 Bool)
 (declare-const tmp%8 Bool)
 (declare-const tmp%9 Bool)
 (declare-const tmp%10 Bool)
 (declare-const tmp%11 Bool)
 (declare-const tmp%12 Bool)
 (declare-const tmp%13 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (iInv 8 a!)
 )
 (assert
  (iInv 8 b!)
 )
 (assert
  (uInv SZ n!)
 )
 (assert
  (uInv SZ m!)
 )
 (declare-fun %%lambda%%4 (Dcr Type Poly) %%Function%%)
 (assert
  (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (x$ Poly)) (!
    (= (%%apply%%0 (%%lambda%%4 %%hole%%0 %%hole%%1 %%hole%%2) x$) (vstd!std_specs.range.StepSpec.spec_forward_checked.?
      %%hole%%0 %%hole%%1 x$ %%hole%%2
    ))
    :pattern ((%%apply%%0 (%%lambda%%4 %%hole%%0 %%hole%%1 %%hole%%2) x$))
 )))
 (declare-fun %%lambda%%5 (Dcr Type Poly) %%Function%%)
 (assert
  (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (x$ Poly)) (!
    (= (%%apply%%0 (%%lambda%%5 %%hole%%0 %%hole%%1 %%hole%%2) x$) (vstd!std_specs.range.StepSpec.spec_backward_checked.?
      %%hole%%0 %%hole%%1 x$ %%hole%%2
    ))
    :pattern ((%%apply%%0 (%%lambda%%5 %%hole%%0 %%hole%%1 %%hole%%2) x$))
 )))
 (declare-fun %%lambda%%6 (Dcr Type Poly) %%Function%%)
 (assert
  (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (x$ Poly)) (!
    (= (%%apply%%0 (%%lambda%%6 %%hole%%0 %%hole%%1 %%hole%%2) x$) (vstd!std_specs.range.StepSpec.spec_backward_checked.?
      %%hole%%0 %%hole%%1 %%hole%%2 x$
    ))
    :pattern ((%%apply%%0 (%%lambda%%6 %%hole%%0 %%hole%%1 %%hole%%2) x$))
 )))
 (declare-fun %%lambda%%7 (Dcr Type Poly core!option.Option. core!option.Option.) %%Function%%)
 (assert
  (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 core!option.Option.)
    (%%hole%%4 core!option.Option.) (x$ Poly)
   ) (!
    (= (%%apply%%0 (%%lambda%%7 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4) x$)
     (Poly%core!option.Option. (let
       ((tmp%%$ %%hole%%4))
       (ite
        (is-core!option.Option./Some tmp%%$)
        (%Poly%core!option.Option. (let
          ((z$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                tmp%%$
          ))))))
          (vstd!std_specs.range.StepSpec.spec_backward_checked.? %%hole%%0 %%hole%%1 %%hole%%2
           (I z$)
        )))
        %%hole%%3
    ))))
    :pattern ((%%apply%%0 (%%lambda%%7 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4)
      x$
 )))))
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
    (= tmp%1 (= (= (%Poly%core!option.Option. (vstd!std_specs.range.StepSpec.spec_steps_between.?
         $ (SINT 8) (I a!) (I b!)
        )
       ) (core!option.Option./Some (I n!))
      ) (= (%Poly%core!option.Option. (vstd!std_specs.range.StepSpec.spec_forward_checked.?
         $ (SINT 8) (I a!) (I n!)
        )
       ) (core!option.Option./Some (I b!))
    )))
    (and
     (=>
      %%location_label%%0
      tmp%1
     )
     (=>
      tmp%1
      (=>
       (= tmp%2 (= (= (%Poly%core!option.Option. (vstd!std_specs.range.StepSpec.spec_steps_between.?
            $ (SINT 8) (I a!) (I b!)
           )
          ) (core!option.Option./Some (I n!))
         ) (= (%Poly%core!option.Option. (vstd!std_specs.range.StepSpec.spec_backward_checked.?
            $ (SINT 8) (I b!) (I n!)
           )
          ) (core!option.Option./Some (I a!))
       )))
       (and
        (=>
         %%location_label%%1
         tmp%2
        )
        (=>
         tmp%2
         (=>
          (= tmp%3 (=>
            (= (%Poly%core!option.Option. (vstd!std_specs.range.StepSpec.spec_steps_between.? $
               (SINT 8) (I a!) (I b!)
              )
             ) (core!option.Option./Some (I n!))
            )
            (<= a! b!)
          ))
          (and
           (=>
            %%location_label%%2
            tmp%3
           )
           (=>
            tmp%3
            (=>
             (= tmp%4 (= (= (%Poly%core!option.Option. (vstd!std_specs.range.StepSpec.spec_steps_between.?
                  $ (SINT 8) (I a!) (I b!)
                 )
                ) core!option.Option./None
               ) (> a! b!)
             ))
             (and
              (=>
               %%location_label%%3
               tmp%4
              )
              (=>
               tmp%4
               (=>
                (= tmp%5 (ext_eq false (TYPE%core!option.Option. $ (SINT 8)) (Poly%core!option.Option.
                   (test_crate!and_then.? $ (SINT 8) $ (SINT 8) (vstd!std_specs.range.StepSpec.spec_forward_checked.?
                     $ (SINT 8) (I a!) (I n!)
                    ) (Poly%fun%1. (mk_fun (%%lambda%%4 $ (SINT 8) (I m!))))
                   )
                  ) (Poly%core!option.Option. (test_crate!and_then.? $ (SINT 8) $ (SINT 8) (vstd!std_specs.range.StepSpec.spec_forward_checked.?
                     $ (SINT 8) (I a!) (I m!)
                    ) (Poly%fun%1. (mk_fun (%%lambda%%4 $ (SINT 8) (I n!))))
                ))))
                (and
                 (=>
                  %%location_label%%4
                  tmp%5
                 )
                 (=>
                  tmp%5
                  (=>
                   (= tmp%6 (=>
                     (<= (Add n! m!) (- (uHi SZ) 1))
                     (ext_eq false (TYPE%core!option.Option. $ (SINT 8)) (Poly%core!option.Option. (test_crate!and_then.?
                        $ (SINT 8) $ (SINT 8) (vstd!std_specs.range.StepSpec.spec_forward_checked.? $ (SINT
                          8
                         ) (I a!) (I n!)
                        ) (Poly%fun%1. (mk_fun (%%lambda%%4 $ (SINT 8) (I m!))))
                       )
                      ) (vstd!std_specs.range.StepSpec.spec_forward_checked.? $ (SINT 8) (I a!) (I (uClip
                         SZ (Add n! m!)
                   ))))))
                   (and
                    (=>
                     %%location_label%%5
                     tmp%6
                    )
                    (=>
                     tmp%6
                     (=>
                      (= tmp%7 (=>
                        (> (Add n! m!) (- (uHi SZ) 1))
                        (ext_eq false (TYPE%core!option.Option. $ (SINT 8)) (Poly%core!option.Option. (test_crate!and_then.?
                           $ (SINT 8) $ (SINT 8) (vstd!std_specs.range.StepSpec.spec_forward_checked.? $ (SINT
                             8
                            ) (I a!) (I n!)
                           ) (Poly%fun%1. (mk_fun (%%lambda%%4 $ (SINT 8) (I m!))))
                          )
                         ) (Poly%core!option.Option. core!option.Option./None)
                      )))
                      (and
                       (=>
                        %%location_label%%6
                        tmp%7
                       )
                       (=>
                        tmp%7
                        (=>
                         (= tmp%8 (ext_eq false (TYPE%core!option.Option. $ (SINT 8)) (Poly%core!option.Option.
                            (test_crate!and_then.? $ (SINT 8) $ (SINT 8) (vstd!std_specs.range.StepSpec.spec_backward_checked.?
                              $ (SINT 8) (I a!) (I n!)
                             ) (Poly%fun%1. (mk_fun (%%lambda%%5 $ (SINT 8) (I m!))))
                            )
                           ) (Poly%core!option.Option. (test_crate!and_then.? $ (UINT SZ) $ (SINT 8) (Poly%core!option.Option.
                              (test_crate!checked_add_usize.? (I n!) (I m!))
                             ) (Poly%fun%1. (mk_fun (%%lambda%%6 $ (SINT 8) (I a!))))
                         ))))
                         (and
                          (=>
                           %%location_label%%7
                           tmp%8
                          )
                          (=>
                           tmp%8
                           (=>
                            (= tmp%9 (ext_eq false (TYPE%core!option.Option. $ (SINT 8)) (Poly%core!option.Option.
                               (test_crate!and_then.? $ (SINT 8) $ (SINT 8) (vstd!std_specs.range.StepSpec.spec_backward_checked.?
                                 $ (SINT 8) (I a!) (I n!)
                                ) (Poly%fun%1. (mk_fun (%%lambda%%5 $ (SINT 8) (I m!))))
                               )
                              ) (Poly%core!option.Option. (test_crate!and_then.? $ (UINT SZ) $ (SINT 8) (Poly%core!option.Option.
                                 (test_crate!checked_add_usize.? (I n!) (I m!))
                                ) (Poly%fun%1. (mk_fun (%%lambda%%7 $ (SINT 8) (I a!) core!option.Option./None (test_crate!checked_add_usize.?
                                    (I n!) (I m!)
                            ))))))))
                            (and
                             (=>
                              %%location_label%%8
                              tmp%9
                             )
                             (=>
                              tmp%9
                              (=>
                               (= tmp%10 (=>
                                 (< a! 127)
                                 (ext_eq false (TYPE%core!option.Option. $ (SINT 8)) (vstd!std_specs.range.StepSpec.spec_forward_checked.?
                                   $ (SINT 8) (I a!) (I 1)
                                  ) (Poly%core!option.Option. (core!option.Option./Some (I (iClip 8 (Add a! 1)))))
                               )))
                               (and
                                (=>
                                 %%location_label%%9
                                 tmp%10
                                )
                                (=>
                                 tmp%10
                                 (=>
                                  (= tmp%11 (=>
                                    (>= a! 127)
                                    (ext_eq false (TYPE%core!option.Option. $ (SINT 8)) (vstd!std_specs.range.StepSpec.spec_forward_checked.?
                                      $ (SINT 8) (I a!) (I 1)
                                     ) (Poly%core!option.Option. core!option.Option./None)
                                  )))
                                  (and
                                   (=>
                                    %%location_label%%10
                                    tmp%11
                                   )
                                   (=>
                                    tmp%11
                                    (=>
                                     (= tmp%12 (=>
                                       (>= a! (Sub 0 127))
                                       (ext_eq false (TYPE%core!option.Option. $ (SINT 8)) (vstd!std_specs.range.StepSpec.spec_backward_checked.?
                                         $ (SINT 8) (I a!) (I 1)
                                        ) (Poly%core!option.Option. (core!option.Option./Some (I (iClip 8 (Sub a! 1)))))
                                     )))
                                     (and
                                      (=>
                                       %%location_label%%11
                                       tmp%12
                                      )
                                      (=>
                                       tmp%12
                                       (=>
                                        (= tmp%13 (=>
                                          (< a! (Sub 0 127))
                                          (ext_eq false (TYPE%core!option.Option. $ (SINT 8)) (vstd!std_specs.range.StepSpec.spec_backward_checked.?
                                            $ (SINT 8) (I a!) (I 1)
                                           ) (Poly%core!option.Option. core!option.Option./None)
                                        )))
                                        (=>
                                         %%location_label%%12
                                         tmp%13
 ))))))))))))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::step_properties_u128
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/integers-b0e0613f666db427-test_step/test.rs:72:7: 72:68 (#0)
(get-info :all-statistics)
(push)
 (declare-const a! Int)
 (declare-const b! Int)
 (declare-const n! Int)
 (declare-const m! Int)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Bool)
 (declare-const tmp%6 Bool)
 (declare-const tmp%7 Bool)
 (declare-const tmp%8 Bool)
 (declare-const tmp%9 Bool)
 (declare-const tmp%10 Bool)
 (declare-const tmp%11 Bool)
 (declare-const tmp%12 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 128 a!)
 )
 (assert
  (uInv 128 b!)
 )
 (assert
  (uInv SZ n!)
 )
 (assert
  (uInv SZ m!)
 )
 (declare-fun %%lambda%%8 (Dcr Type Poly) %%Function%%)
 (assert
  (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (x$ Poly)) (!
    (= (%%apply%%0 (%%lambda%%8 %%hole%%0 %%hole%%1 %%hole%%2) x$) (vstd!std_specs.range.StepSpec.spec_forward_checked.?
      %%hole%%0 %%hole%%1 x$ %%hole%%2
    ))
    :pattern ((%%apply%%0 (%%lambda%%8 %%hole%%0 %%hole%%1 %%hole%%2) x$))
 )))
 (declare-fun %%lambda%%9 (Dcr Type Poly) %%Function%%)
 (assert
  (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (x$ Poly)) (!
    (= (%%apply%%0 (%%lambda%%9 %%hole%%0 %%hole%%1 %%hole%%2) x$) (vstd!std_specs.range.StepSpec.spec_backward_checked.?
      %%hole%%0 %%hole%%1 x$ %%hole%%2
    ))
    :pattern ((%%apply%%0 (%%lambda%%9 %%hole%%0 %%hole%%1 %%hole%%2) x$))
 )))
 (declare-fun %%lambda%%10 (Dcr Type Poly) %%Function%%)
 (assert
  (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (x$ Poly)) (!
    (= (%%apply%%0 (%%lambda%%10 %%hole%%0 %%hole%%1 %%hole%%2) x$) (vstd!std_specs.range.StepSpec.spec_backward_checked.?
      %%hole%%0 %%hole%%1 %%hole%%2 x$
    ))
    :pattern ((%%apply%%0 (%%lambda%%10 %%hole%%0 %%hole%%1 %%hole%%2) x$))
 )))
 (declare-fun %%lambda%%11 (Dcr Type Poly core!option.Option. core!option.Option.)
  %%Function%%
 )
 (assert
  (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 core!option.Option.)
    (%%hole%%4 core!option.Option.) (x$ Poly)
   ) (!
    (= (%%apply%%0 (%%lambda%%11 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4) x$)
     (Poly%core!option.Option. (let
       ((tmp%%$ %%hole%%4))
       (ite
        (is-core!option.Option./Some tmp%%$)
        (%Poly%core!option.Option. (let
          ((z$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                tmp%%$
          ))))))
          (vstd!std_specs.range.StepSpec.spec_backward_checked.? %%hole%%0 %%hole%%1 %%hole%%2
           (I z$)
        )))
        %%hole%%3
    ))))
    :pattern ((%%apply%%0 (%%lambda%%11 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4)
      x$
 )))))
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
 (assert
  (not (=>
    (= tmp%1 (= (= (%Poly%core!option.Option. (vstd!std_specs.range.StepSpec.spec_steps_between.?
         $ (UINT 128) (I a!) (I b!)
        )
       ) (core!option.Option./Some (I n!))
      ) (= (%Poly%core!option.Option. (vstd!std_specs.range.StepSpec.spec_forward_checked.?
         $ (UINT 128) (I a!) (I n!)
        )
       ) (core!option.Option./Some (I b!))
    )))
    (and
     (=>
      %%location_label%%0
      tmp%1
     )
     (=>
      tmp%1
      (=>
       (= tmp%2 (= (= (%Poly%core!option.Option. (vstd!std_specs.range.StepSpec.spec_steps_between.?
            $ (UINT 128) (I a!) (I b!)
           )
          ) (core!option.Option./Some (I n!))
         ) (= (%Poly%core!option.Option. (vstd!std_specs.range.StepSpec.spec_backward_checked.?
            $ (UINT 128) (I b!) (I n!)
           )
          ) (core!option.Option./Some (I a!))
       )))
       (and
        (=>
         %%location_label%%1
         tmp%2
        )
        (=>
         tmp%2
         (=>
          (= tmp%3 (=>
            (= (%Poly%core!option.Option. (vstd!std_specs.range.StepSpec.spec_steps_between.? $
               (UINT 128) (I a!) (I b!)
              )
             ) (core!option.Option./Some (I n!))
            )
            (<= a! b!)
          ))
          (and
           (=>
            %%location_label%%2
            tmp%3
           )
           (=>
            tmp%3
            (=>
             (= tmp%4 (=>
               (> a! b!)
               (ext_eq false (TYPE%core!option.Option. $ (UINT SZ)) (vstd!std_specs.range.StepSpec.spec_steps_between.?
                 $ (UINT 128) (I a!) (I b!)
                ) (Poly%core!option.Option. core!option.Option./None)
             )))
             (and
              (=>
               %%location_label%%3
               tmp%4
              )
              (=>
               tmp%4
               (=>
                (= tmp%5 (ext_eq false (TYPE%core!option.Option. $ (UINT 128)) (Poly%core!option.Option.
                   (test_crate!and_then.? $ (UINT 128) $ (UINT 128) (vstd!std_specs.range.StepSpec.spec_forward_checked.?
                     $ (UINT 128) (I a!) (I n!)
                    ) (Poly%fun%1. (mk_fun (%%lambda%%8 $ (UINT 128) (I m!))))
                   )
                  ) (Poly%core!option.Option. (test_crate!and_then.? $ (UINT 128) $ (UINT 128) (vstd!std_specs.range.StepSpec.spec_forward_checked.?
                     $ (UINT 128) (I a!) (I m!)
                    ) (Poly%fun%1. (mk_fun (%%lambda%%8 $ (UINT 128) (I n!))))
                ))))
                (and
                 (=>
                  %%location_label%%4
                  tmp%5
                 )
                 (=>
                  tmp%5
                  (=>
                   (= tmp%6 (=>
                     (<= (Add n! m!) (- (uHi SZ) 1))
                     (ext_eq false (TYPE%core!option.Option. $ (UINT 128)) (Poly%core!option.Option. (test_crate!and_then.?
                        $ (UINT 128) $ (UINT 128) (vstd!std_specs.range.StepSpec.spec_forward_checked.? $
                         (UINT 128) (I a!) (I n!)
                        ) (Poly%fun%1. (mk_fun (%%lambda%%8 $ (UINT 128) (I m!))))
                       )
                      ) (vstd!std_specs.range.StepSpec.spec_forward_checked.? $ (UINT 128) (I a!) (I (uClip
                         SZ (Add n! m!)
                   ))))))
                   (and
                    (=>
                     %%location_label%%5
                     tmp%6
                    )
                    (=>
                     tmp%6
                     (=>
                      (= tmp%7 (=>
                        (<= (Add n! m!) (- (uHi SZ) 1))
                        (ext_eq false (TYPE%core!option.Option. $ (UINT 128)) (Poly%core!option.Option. (test_crate!and_then.?
                           $ (UINT 128) $ (UINT 128) (vstd!std_specs.range.StepSpec.spec_backward_checked.? $
                            (UINT 128) (I a!) (I n!)
                           ) (Poly%fun%1. (mk_fun (%%lambda%%9 $ (UINT 128) (I m!))))
                          )
                         ) (Poly%core!option.Option. (test_crate!and_then.? $ (UINT SZ) $ (UINT 128) (Poly%core!option.Option.
                            (test_crate!checked_add_usize.? (I n!) (I m!))
                           ) (Poly%fun%1. (mk_fun (%%lambda%%10 $ (UINT 128) (I a!))))
                      )))))
                      (and
                       (=>
                        %%location_label%%6
                        tmp%7
                       )
                       (=>
                        tmp%7
                        (=>
                         (= tmp%8 (=>
                           (<= (Add n! m!) (- (uHi SZ) 1))
                           (ext_eq false (TYPE%core!option.Option. $ (UINT 128)) (Poly%core!option.Option. (test_crate!and_then.?
                              $ (UINT 128) $ (UINT 128) (vstd!std_specs.range.StepSpec.spec_backward_checked.? $
                               (UINT 128) (I a!) (I n!)
                              ) (Poly%fun%1. (mk_fun (%%lambda%%9 $ (UINT 128) (I m!))))
                             )
                            ) (Poly%core!option.Option. (test_crate!and_then.? $ (UINT SZ) $ (UINT 128) (Poly%core!option.Option.
                               (test_crate!checked_add_usize.? (I n!) (I m!))
                              ) (Poly%fun%1. (mk_fun (%%lambda%%11 $ (UINT 128) (I a!) core!option.Option./None (test_crate!checked_add_usize.?
                                  (I n!) (I m!)
                         )))))))))
                         (and
                          (=>
                           %%location_label%%7
                           tmp%8
                          )
                          (=>
                           tmp%8
                           (=>
                            (= tmp%9 (=>
                              (< a! 340282366920938463463374607431768211455)
                              (ext_eq false (TYPE%core!option.Option. $ (UINT 128)) (vstd!std_specs.range.StepSpec.spec_forward_checked.?
                                $ (UINT 128) (I a!) (I 1)
                               ) (Poly%core!option.Option. (core!option.Option./Some (I (uClip 128 (Add a! 1)))))
                            )))
                            (and
                             (=>
                              %%location_label%%8
                              tmp%9
                             )
                             (=>
                              tmp%9
                              (=>
                               (= tmp%10 (=>
                                 (>= a! 340282366920938463463374607431768211455)
                                 (ext_eq false (TYPE%core!option.Option. $ (UINT 128)) (vstd!std_specs.range.StepSpec.spec_forward_checked.?
                                   $ (UINT 128) (I a!) (I 1)
                                  ) (Poly%core!option.Option. core!option.Option./None)
                               )))
                               (and
                                (=>
                                 %%location_label%%9
                                 tmp%10
                                )
                                (=>
                                 tmp%10
                                 (=>
                                  (= tmp%11 (=>
                                    (>= a! 1)
                                    (ext_eq false (TYPE%core!option.Option. $ (UINT 128)) (vstd!std_specs.range.StepSpec.spec_backward_checked.?
                                      $ (UINT 128) (I a!) (I 1)
                                     ) (Poly%core!option.Option. (core!option.Option./Some (I (uClip 128 (Sub a! 1)))))
                                  )))
                                  (and
                                   (=>
                                    %%location_label%%10
                                    tmp%11
                                   )
                                   (=>
                                    tmp%11
                                    (=>
                                     (= tmp%12 (=>
                                       (< a! 1)
                                       (ext_eq false (TYPE%core!option.Option. $ (UINT 128)) (vstd!std_specs.range.StepSpec.spec_backward_checked.?
                                         $ (UINT 128) (I a!) (I 1)
                                        ) (Poly%core!option.Option. core!option.Option./None)
                                     )))
                                     (=>
                                      %%location_label%%11
                                      tmp%12
 )))))))))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::step_properties_i128
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/integers-b0e0613f666db427-test_step/test.rs:93:7: 93:68 (#0)
(get-info :all-statistics)
(push)
 (declare-const a! Int)
 (declare-const b! Int)
 (declare-const n! Int)
 (declare-const m! Int)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Bool)
 (declare-const tmp%6 Bool)
 (declare-const tmp%7 Bool)
 (declare-const tmp%8 Bool)
 (declare-const tmp%9 Bool)
 (declare-const tmp%10 Bool)
 (declare-const tmp%11 Bool)
 (declare-const tmp%12 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (iInv 128 a!)
 )
 (assert
  (iInv 128 b!)
 )
 (assert
  (uInv SZ n!)
 )
 (assert
  (uInv SZ m!)
 )
 (declare-fun %%lambda%%12 (Dcr Type Poly) %%Function%%)
 (assert
  (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (x$ Poly)) (!
    (= (%%apply%%0 (%%lambda%%12 %%hole%%0 %%hole%%1 %%hole%%2) x$) (vstd!std_specs.range.StepSpec.spec_forward_checked.?
      %%hole%%0 %%hole%%1 x$ %%hole%%2
    ))
    :pattern ((%%apply%%0 (%%lambda%%12 %%hole%%0 %%hole%%1 %%hole%%2) x$))
 )))
 (declare-fun %%lambda%%13 (Dcr Type Poly) %%Function%%)
 (assert
  (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (x$ Poly)) (!
    (= (%%apply%%0 (%%lambda%%13 %%hole%%0 %%hole%%1 %%hole%%2) x$) (vstd!std_specs.range.StepSpec.spec_backward_checked.?
      %%hole%%0 %%hole%%1 x$ %%hole%%2
    ))
    :pattern ((%%apply%%0 (%%lambda%%13 %%hole%%0 %%hole%%1 %%hole%%2) x$))
 )))
 (declare-fun %%lambda%%14 (Dcr Type Poly) %%Function%%)
 (assert
  (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (x$ Poly)) (!
    (= (%%apply%%0 (%%lambda%%14 %%hole%%0 %%hole%%1 %%hole%%2) x$) (vstd!std_specs.range.StepSpec.spec_backward_checked.?
      %%hole%%0 %%hole%%1 %%hole%%2 x$
    ))
    :pattern ((%%apply%%0 (%%lambda%%14 %%hole%%0 %%hole%%1 %%hole%%2) x$))
 )))
 (declare-fun %%lambda%%15 (Dcr Type Poly core!option.Option. core!option.Option.)
  %%Function%%
 )
 (assert
  (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 core!option.Option.)
    (%%hole%%4 core!option.Option.) (x$ Poly)
   ) (!
    (= (%%apply%%0 (%%lambda%%15 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4) x$)
     (Poly%core!option.Option. (let
       ((tmp%%$ %%hole%%4))
       (ite
        (is-core!option.Option./Some tmp%%$)
        (%Poly%core!option.Option. (let
          ((z$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                tmp%%$
          ))))))
          (vstd!std_specs.range.StepSpec.spec_backward_checked.? %%hole%%0 %%hole%%1 %%hole%%2
           (I z$)
        )))
        %%hole%%3
    ))))
    :pattern ((%%apply%%0 (%%lambda%%15 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4)
      x$
 )))))
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
 (assert
  (not (=>
    (= tmp%1 (= (= (%Poly%core!option.Option. (vstd!std_specs.range.StepSpec.spec_steps_between.?
         $ (SINT 128) (I a!) (I b!)
        )
       ) (core!option.Option./Some (I n!))
      ) (= (%Poly%core!option.Option. (vstd!std_specs.range.StepSpec.spec_forward_checked.?
         $ (SINT 128) (I a!) (I n!)
        )
       ) (core!option.Option./Some (I b!))
    )))
    (and
     (=>
      %%location_label%%0
      tmp%1
     )
     (=>
      tmp%1
      (=>
       (= tmp%2 (= (= (%Poly%core!option.Option. (vstd!std_specs.range.StepSpec.spec_steps_between.?
            $ (SINT 128) (I a!) (I b!)
           )
          ) (core!option.Option./Some (I n!))
         ) (= (%Poly%core!option.Option. (vstd!std_specs.range.StepSpec.spec_backward_checked.?
            $ (SINT 128) (I b!) (I n!)
           )
          ) (core!option.Option./Some (I a!))
       )))
       (and
        (=>
         %%location_label%%1
         tmp%2
        )
        (=>
         tmp%2
         (=>
          (= tmp%3 (=>
            (= (%Poly%core!option.Option. (vstd!std_specs.range.StepSpec.spec_steps_between.? $
               (SINT 128) (I a!) (I b!)
              )
             ) (core!option.Option./Some (I n!))
            )
            (<= a! b!)
          ))
          (and
           (=>
            %%location_label%%2
            tmp%3
           )
           (=>
            tmp%3
            (=>
             (= tmp%4 (=>
               (> a! b!)
               (ext_eq false (TYPE%core!option.Option. $ (UINT SZ)) (vstd!std_specs.range.StepSpec.spec_steps_between.?
                 $ (SINT 128) (I a!) (I b!)
                ) (Poly%core!option.Option. core!option.Option./None)
             )))
             (and
              (=>
               %%location_label%%3
               tmp%4
              )
              (=>
               tmp%4
               (=>
                (= tmp%5 (ext_eq false (TYPE%core!option.Option. $ (SINT 128)) (Poly%core!option.Option.
                   (test_crate!and_then.? $ (SINT 128) $ (SINT 128) (vstd!std_specs.range.StepSpec.spec_forward_checked.?
                     $ (SINT 128) (I a!) (I n!)
                    ) (Poly%fun%1. (mk_fun (%%lambda%%12 $ (SINT 128) (I m!))))
                   )
                  ) (Poly%core!option.Option. (test_crate!and_then.? $ (SINT 128) $ (SINT 128) (vstd!std_specs.range.StepSpec.spec_forward_checked.?
                     $ (SINT 128) (I a!) (I m!)
                    ) (Poly%fun%1. (mk_fun (%%lambda%%12 $ (SINT 128) (I n!))))
                ))))
                (and
                 (=>
                  %%location_label%%4
                  tmp%5
                 )
                 (=>
                  tmp%5
                  (=>
                   (= tmp%6 (=>
                     (<= (Add n! m!) (- (uHi SZ) 1))
                     (ext_eq false (TYPE%core!option.Option. $ (SINT 128)) (Poly%core!option.Option. (test_crate!and_then.?
                        $ (SINT 128) $ (SINT 128) (vstd!std_specs.range.StepSpec.spec_forward_checked.? $
                         (SINT 128) (I a!) (I n!)
                        ) (Poly%fun%1. (mk_fun (%%lambda%%12 $ (SINT 128) (I m!))))
                       )
                      ) (vstd!std_specs.range.StepSpec.spec_forward_checked.? $ (SINT 128) (I a!) (I (uClip
                         SZ (Add n! m!)
                   ))))))
                   (and
                    (=>
                     %%location_label%%5
                     tmp%6
                    )
                    (=>
                     tmp%6
                     (=>
                      (= tmp%7 (=>
                        (<= (Add n! m!) (- (uHi SZ) 1))
                        (ext_eq false (TYPE%core!option.Option. $ (SINT 128)) (Poly%core!option.Option. (test_crate!and_then.?
                           $ (SINT 128) $ (SINT 128) (vstd!std_specs.range.StepSpec.spec_backward_checked.? $
                            (SINT 128) (I a!) (I n!)
                           ) (Poly%fun%1. (mk_fun (%%lambda%%13 $ (SINT 128) (I m!))))
                          )
                         ) (Poly%core!option.Option. (test_crate!and_then.? $ (UINT SZ) $ (SINT 128) (Poly%core!option.Option.
                            (test_crate!checked_add_usize.? (I n!) (I m!))
                           ) (Poly%fun%1. (mk_fun (%%lambda%%14 $ (SINT 128) (I a!))))
                      )))))
                      (and
                       (=>
                        %%location_label%%6
                        tmp%7
                       )
                       (=>
                        tmp%7
                        (=>
                         (= tmp%8 (=>
                           (<= (Add n! m!) (- (uHi SZ) 1))
                           (ext_eq false (TYPE%core!option.Option. $ (SINT 128)) (Poly%core!option.Option. (test_crate!and_then.?
                              $ (SINT 128) $ (SINT 128) (vstd!std_specs.range.StepSpec.spec_backward_checked.? $
                               (SINT 128) (I a!) (I n!)
                              ) (Poly%fun%1. (mk_fun (%%lambda%%13 $ (SINT 128) (I m!))))
                             )
                            ) (Poly%core!option.Option. (test_crate!and_then.? $ (UINT SZ) $ (SINT 128) (Poly%core!option.Option.
                               (test_crate!checked_add_usize.? (I n!) (I m!))
                              ) (Poly%fun%1. (mk_fun (%%lambda%%15 $ (SINT 128) (I a!) core!option.Option./None (test_crate!checked_add_usize.?
                                  (I n!) (I m!)
                         )))))))))
                         (and
                          (=>
                           %%location_label%%7
                           tmp%8
                          )
                          (=>
                           tmp%8
                           (=>
                            (= tmp%9 (=>
                              (< a! 170141183460469231731687303715884105727)
                              (ext_eq false (TYPE%core!option.Option. $ (SINT 128)) (vstd!std_specs.range.StepSpec.spec_forward_checked.?
                                $ (SINT 128) (I a!) (I 1)
                               ) (Poly%core!option.Option. (core!option.Option./Some (I (iClip 128 (Add a! 1)))))
                            )))
                            (and
                             (=>
                              %%location_label%%8
                              tmp%9
                             )
                             (=>
                              tmp%9
                              (=>
                               (= tmp%10 (=>
                                 (>= a! 170141183460469231731687303715884105727)
                                 (ext_eq false (TYPE%core!option.Option. $ (SINT 128)) (vstd!std_specs.range.StepSpec.spec_forward_checked.?
                                   $ (SINT 128) (I a!) (I 1)
                                  ) (Poly%core!option.Option. core!option.Option./None)
                               )))
                               (and
                                (=>
                                 %%location_label%%9
                                 tmp%10
                                )
                                (=>
                                 tmp%10
                                 (=>
                                  (= tmp%11 (=>
                                    (>= a! (Sub 0 170141183460469231731687303715884105727))
                                    (ext_eq false (TYPE%core!option.Option. $ (SINT 128)) (vstd!std_specs.range.StepSpec.spec_backward_checked.?
                                      $ (SINT 128) (I a!) (I 1)
                                     ) (Poly%core!option.Option. (core!option.Option./Some (I (iClip 128 (Sub a! 1)))))
                                  )))
                                  (and
                                   (=>
                                    %%location_label%%10
                                    tmp%11
                                   )
                                   (=>
                                    tmp%11
                                    (=>
                                     (= tmp%12 (=>
                                       (< a! (Sub 0 170141183460469231731687303715884105727))
                                       (ext_eq false (TYPE%core!option.Option. $ (SINT 128)) (vstd!std_specs.range.StepSpec.spec_backward_checked.?
                                         $ (SINT 128) (I a!) (I 1)
                                        ) (Poly%core!option.Option. core!option.Option./None)
                                     )))
                                     (=>
                                      %%location_label%%11
                                      tmp%12
 )))))))))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
