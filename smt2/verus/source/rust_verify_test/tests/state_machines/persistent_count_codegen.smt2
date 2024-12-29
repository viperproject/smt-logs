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
(declare-const fuel%vstd!state_machine_internal.nat_max. FuelId)
(declare-const fuel%test_crate!Y.impl&%11.tr_add. FuelId)
(declare-const fuel%test_crate!Y.impl&%11.tr_add_strong. FuelId)
(declare-const fuel%test_crate!Y.impl&%11.tr_have. FuelId)
(declare-const fuel%test_crate!Y.impl&%11.tr_have_strong. FuelId)
(declare-const fuel%test_crate!impl&%0.arrow_Bar_0. FuelId)
(declare-const fuel%test_crate!impl&%0.arrow_Qax_0. FuelId)
(declare-const fuel%test_crate!impl&%0.arrow_Duck_0. FuelId)
(declare-const fuel%test_crate!rel_tr1. FuelId)
(declare-const fuel%test_crate!rel_tr1_strong. FuelId)
(declare-const fuel%test_crate!rel_tr2. FuelId)
(declare-const fuel%test_crate!rel_tr2_strong. FuelId)
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
 (distinct fuel%vstd!state_machine_internal.nat_max. fuel%test_crate!Y.impl&%11.tr_add.
  fuel%test_crate!Y.impl&%11.tr_add_strong. fuel%test_crate!Y.impl&%11.tr_have. fuel%test_crate!Y.impl&%11.tr_have_strong.
  fuel%test_crate!impl&%0.arrow_Bar_0. fuel%test_crate!impl&%0.arrow_Qax_0. fuel%test_crate!impl&%0.arrow_Duck_0.
  fuel%test_crate!rel_tr1. fuel%test_crate!rel_tr1_strong. fuel%test_crate!rel_tr2.
  fuel%test_crate!rel_tr2_strong. fuel%vstd!array.group_array_axioms. fuel%vstd!map.group_map_axioms.
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
(declare-sort test_crate!Y.Instance. 0)
(declare-sort test_crate!Y.c. 0)
(declare-datatypes ((vstd!tokens.InstanceId. 0) (test_crate!Y.State. 0) (test_crate!Foo.
   0
  ) (tuple%0. 0) (tuple%2. 0)
 ) (((vstd!tokens.InstanceId./InstanceId (vstd!tokens.InstanceId./InstanceId/?0 Int)))
  ((test_crate!Y.State./State (test_crate!Y.State./State/?c Int))) ((test_crate!Foo./Bar
    (test_crate!Foo./Bar/?0 Int)
   ) (test_crate!Foo./Qax (test_crate!Foo./Qax/?0 Int)) (test_crate!Foo./Duck (test_crate!Foo./Duck/?0
     Int
   ))
  ) ((tuple%0./tuple%0)) ((tuple%2./tuple%2 (tuple%2./tuple%2/?0 Poly) (tuple%2./tuple%2/?1
     Poly
)))))
(declare-fun vstd!tokens.InstanceId./InstanceId/0 (vstd!tokens.InstanceId.) Int)
(declare-fun test_crate!Y.State./State/c (test_crate!Y.State.) Int)
(declare-fun test_crate!Foo./Bar/0 (test_crate!Foo.) Int)
(declare-fun test_crate!Foo./Qax/0 (test_crate!Foo.) Int)
(declare-fun test_crate!Foo./Duck/0 (test_crate!Foo.) Int)
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-const TYPE%vstd!tokens.InstanceId. Type)
(declare-const TYPE%test_crate!Y.State. Type)
(declare-const TYPE%test_crate!Y.Instance. Type)
(declare-const TYPE%test_crate!Y.c. Type)
(declare-const TYPE%test_crate!Foo. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%2. (Dcr Type Dcr Type) Type)
(declare-fun Poly%test_crate!Y.Instance. (test_crate!Y.Instance.) Poly)
(declare-fun %Poly%test_crate!Y.Instance. (Poly) test_crate!Y.Instance.)
(declare-fun Poly%test_crate!Y.c. (test_crate!Y.c.) Poly)
(declare-fun %Poly%test_crate!Y.c. (Poly) test_crate!Y.c.)
(declare-fun Poly%vstd!tokens.InstanceId. (vstd!tokens.InstanceId.) Poly)
(declare-fun %Poly%vstd!tokens.InstanceId. (Poly) vstd!tokens.InstanceId.)
(declare-fun Poly%test_crate!Y.State. (test_crate!Y.State.) Poly)
(declare-fun %Poly%test_crate!Y.State. (Poly) test_crate!Y.State.)
(declare-fun Poly%test_crate!Foo. (test_crate!Foo.) Poly)
(declare-fun %Poly%test_crate!Foo. (Poly) test_crate!Foo.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%2. (tuple%2.) Poly)
(declare-fun %Poly%tuple%2. (Poly) tuple%2.)
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
 (forall ((x test_crate!Y.c.)) (!
   (= x (%Poly%test_crate!Y.c. (Poly%test_crate!Y.c. x)))
   :pattern ((Poly%test_crate!Y.c. x))
   :qid internal_test_crate__Y__c_box_axiom_definition
   :skolemid skolem_internal_test_crate__Y__c_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.c.)
    (= x (Poly%test_crate!Y.c. (%Poly%test_crate!Y.c. x)))
   )
   :pattern ((has_type x TYPE%test_crate!Y.c.))
   :qid internal_test_crate__Y__c_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__Y__c_unbox_axiom_definition
)))
(assert
 (forall ((x test_crate!Y.c.)) (!
   (has_type (Poly%test_crate!Y.c. x) TYPE%test_crate!Y.c.)
   :pattern ((has_type (Poly%test_crate!Y.c. x) TYPE%test_crate!Y.c.))
   :qid internal_test_crate__Y__c_has_type_always_definition
   :skolemid skolem_internal_test_crate__Y__c_has_type_always_definition
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
 (forall ((_c! Int)) (!
   (=>
    (<= 0 _c!)
    (has_type (Poly%test_crate!Y.State. (test_crate!Y.State./State _c!)) TYPE%test_crate!Y.State.)
   )
   :pattern ((has_type (Poly%test_crate!Y.State. (test_crate!Y.State./State _c!)) TYPE%test_crate!Y.State.))
   :qid internal_test_crate!Y.State./State_constructor_definition
   :skolemid skolem_internal_test_crate!Y.State./State_constructor_definition
)))
(assert
 (forall ((x test_crate!Y.State.)) (!
   (= (test_crate!Y.State./State/c x) (test_crate!Y.State./State/?c x))
   :pattern ((test_crate!Y.State./State/c x))
   :qid internal_test_crate!Y.State./State/c_accessor_definition
   :skolemid skolem_internal_test_crate!Y.State./State/c_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.State.)
    (<= 0 (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. x)))
   )
   :pattern ((test_crate!Y.State./State/c (%Poly%test_crate!Y.State. x)) (has_type x TYPE%test_crate!Y.State.))
   :qid internal_test_crate!Y.State./State/c_invariant_definition
   :skolemid skolem_internal_test_crate!Y.State./State/c_invariant_definition
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
(declare-fun tr_bound%vstd!tokens.MonotonicCountToken. (Dcr Type) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%vstd!tokens.MonotonicCountToken. Self%&. Self%&))
   :qid internal_vstd__tokens__MonotonicCountToken_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__tokens__MonotonicCountToken_trait_type_bounds_definition
)))

;; Function-Decl vstd::tokens::MonotonicCountToken::instance_id
(declare-fun vstd!tokens.MonotonicCountToken.instance_id.? (Dcr Type Poly) Poly)
(declare-fun vstd!tokens.MonotonicCountToken.instance_id%default%.? (Dcr Type Poly)
 Poly
)

;; Function-Decl vstd::tokens::MonotonicCountToken::count
(declare-fun vstd!tokens.MonotonicCountToken.count.? (Dcr Type Poly) Poly)
(declare-fun vstd!tokens.MonotonicCountToken.count%default%.? (Dcr Type Poly) Poly)

;; Function-Decl vstd::state_machine_internal::nat_max
(declare-fun vstd!state_machine_internal.nat_max.? (Poly Poly) Int)

;; Function-Decl test_crate::Y::State::tr_add
(declare-fun test_crate!Y.impl&%11.tr_add.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr_have
(declare-fun test_crate!Y.impl&%11.tr_have.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr_add_strong
(declare-fun test_crate!Y.impl&%11.tr_add_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::State::tr_have_strong
(declare-fun test_crate!Y.impl&%11.tr_have_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::Instance::id
(declare-fun test_crate!Y.impl&%8.id.? (Poly) vstd!tokens.InstanceId.)

;; Function-Decl test_crate::Foo::arrow_Bar_0
(declare-fun test_crate!impl&%0.arrow_Bar_0.? (Poly) Int)

;; Function-Decl test_crate::Foo::arrow_Qax_0
(declare-fun test_crate!impl&%0.arrow_Qax_0.? (Poly) Int)

;; Function-Decl test_crate::Foo::arrow_Duck_0
(declare-fun test_crate!impl&%0.arrow_Duck_0.? (Poly) Int)

;; Function-Decl test_crate::rel_tr1
(declare-fun test_crate!rel_tr1.? (Poly Poly) Bool)

;; Function-Decl test_crate::rel_tr1_strong
(declare-fun test_crate!rel_tr1_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::rel_tr2
(declare-fun test_crate!rel_tr2.? (Poly Poly) Bool)

;; Function-Decl test_crate::rel_tr2_strong
(declare-fun test_crate!rel_tr2_strong.? (Poly Poly) Bool)

;; Function-Axioms vstd::tokens::MonotonicCountToken::instance_id
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd!tokens.MonotonicCountToken.instance_id.? Self%&. Self%& self!) TYPE%vstd!tokens.InstanceId.)
   )
   :pattern ((vstd!tokens.MonotonicCountToken.instance_id.? Self%&. Self%& self!))
   :qid internal_vstd!tokens.MonotonicCountToken.instance_id.?_pre_post_definition
   :skolemid skolem_internal_vstd!tokens.MonotonicCountToken.instance_id.?_pre_post_definition
)))

;; Function-Axioms vstd::tokens::MonotonicCountToken::count
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd!tokens.MonotonicCountToken.count.? Self%&. Self%& self!) NAT)
   )
   :pattern ((vstd!tokens.MonotonicCountToken.count.? Self%&. Self%& self!))
   :qid internal_vstd!tokens.MonotonicCountToken.count.?_pre_post_definition
   :skolemid skolem_internal_vstd!tokens.MonotonicCountToken.count.?_pre_post_definition
)))

;; Function-Specs vstd::tokens::MonotonicCountToken::weaken
(declare-fun req%vstd!tokens.MonotonicCountToken.weaken. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (count! Poly)) (!
   (= (req%vstd!tokens.MonotonicCountToken.weaken. Self%&. Self%& self! count!) (=>
     %%global_location_label%%0
     (<= (%I count!) (%I (vstd!tokens.MonotonicCountToken.count.? Self%&. Self%& self!)))
   ))
   :pattern ((req%vstd!tokens.MonotonicCountToken.weaken. Self%&. Self%& self! count!))
   :qid internal_req__vstd!tokens.MonotonicCountToken.weaken._definition
   :skolemid skolem_internal_req__vstd!tokens.MonotonicCountToken.weaken._definition
)))
(declare-fun ens%vstd!tokens.MonotonicCountToken.weaken. (Dcr Type Poly Poly Poly)
 Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (count! Poly) (s! Poly)) (!
   (= (ens%vstd!tokens.MonotonicCountToken.weaken. Self%&. Self%& self! count! s!) (and
     (has_type s! Self%&)
     (= (vstd!tokens.MonotonicCountToken.instance_id.? Self%&. Self%& s!) (vstd!tokens.MonotonicCountToken.instance_id.?
       Self%&. Self%& self!
     ))
     (= (vstd!tokens.MonotonicCountToken.count.? Self%&. Self%& s!) count!)
   ))
   :pattern ((ens%vstd!tokens.MonotonicCountToken.weaken. Self%&. Self%& self! count!
     s!
   ))
   :qid internal_ens__vstd!tokens.MonotonicCountToken.weaken._definition
   :skolemid skolem_internal_ens__vstd!tokens.MonotonicCountToken.weaken._definition
)))

;; Function-Axioms vstd::state_machine_internal::nat_max
(assert
 (fuel_bool_default fuel%vstd!state_machine_internal.nat_max.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!state_machine_internal.nat_max.)
  (forall ((a! Poly) (b! Poly)) (!
    (= (vstd!state_machine_internal.nat_max.? a! b!) (%I (ite
       (> (%I a!) (%I b!))
       a!
       b!
    )))
    :pattern ((vstd!state_machine_internal.nat_max.? a! b!))
    :qid internal_vstd!state_machine_internal.nat_max.?_definition
    :skolemid skolem_internal_vstd!state_machine_internal.nat_max.?_definition
))))
(assert
 (forall ((a! Poly) (b! Poly)) (!
   (=>
    (and
     (has_type a! NAT)
     (has_type b! NAT)
    )
    (<= 0 (vstd!state_machine_internal.nat_max.? a! b!))
   )
   :pattern ((vstd!state_machine_internal.nat_max.? a! b!))
   :qid internal_vstd!state_machine_internal.nat_max.?_pre_post_definition
   :skolemid skolem_internal_vstd!state_machine_internal.nat_max.?_pre_post_definition
)))

;; Function-Axioms test_crate::Y::State::tr_add
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%11.tr_add.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%11.tr_add.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%11.tr_add.? pre! post!) (let
      ((update_tmp_c$ (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. pre!))))
      (let
       ((update_tmp_c$1 (vstd!state_machine_internal.nat_max.? (I update_tmp_c$) (I 2))))
       (= (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. post!)) update_tmp_c$1)
    )))
    :pattern ((test_crate!Y.impl&%11.tr_add.? pre! post!))
    :qid internal_test_crate!Y.impl&__11.tr_add.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__11.tr_add.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr_have
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%11.tr_have.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%11.tr_have.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%11.tr_have.? pre! post!) (let
      ((update_tmp_c$ (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. pre!))))
      (and
       (>= update_tmp_c$ 2)
       (= (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. post!)) update_tmp_c$)
    )))
    :pattern ((test_crate!Y.impl&%11.tr_have.? pre! post!))
    :qid internal_test_crate!Y.impl&__11.tr_have.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__11.tr_have.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr_add_strong
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%11.tr_add_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%11.tr_add_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%11.tr_add_strong.? pre! post!) (let
      ((update_tmp_c$ (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. pre!))))
      (let
       ((update_tmp_c$1 (vstd!state_machine_internal.nat_max.? (I update_tmp_c$) (I 2))))
       (= (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. post!)) update_tmp_c$1)
    )))
    :pattern ((test_crate!Y.impl&%11.tr_add_strong.? pre! post!))
    :qid internal_test_crate!Y.impl&__11.tr_add_strong.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__11.tr_add_strong.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr_have_strong
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%11.tr_have_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%11.tr_have_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%11.tr_have_strong.? pre! post!) (let
      ((update_tmp_c$ (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. pre!))))
      (and
       (>= update_tmp_c$ 2)
       (= (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. post!)) update_tmp_c$)
    )))
    :pattern ((test_crate!Y.impl&%11.tr_have_strong.? pre! post!))
    :qid internal_test_crate!Y.impl&__11.tr_have_strong.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__11.tr_have_strong.?_definition
))))

;; Function-Specs test_crate::Y::c::clone
(declare-fun ens%test_crate!Y.impl&%4.clone. (test_crate!Y.c. test_crate!Y.c.) Bool)
(assert
 (forall ((self! test_crate!Y.c.) (s! test_crate!Y.c.)) (!
   (= (ens%test_crate!Y.impl&%4.clone. self! s!) (= self! s!))
   :pattern ((ens%test_crate!Y.impl&%4.clone. self! s!))
   :qid internal_ens__test_crate!Y.impl&__4.clone._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__4.clone._definition
)))

;; Function-Specs test_crate::Y::Instance::initialize
(declare-fun ens%test_crate!Y.impl&%8.initialize. (Int tuple%2.) Bool)
(assert
 (forall ((no%param Int) (tmp_tuple! tuple%2.)) (!
   (= (ens%test_crate!Y.impl&%8.initialize. no%param tmp_tuple!) (and
     (has_type (Poly%tuple%2. tmp_tuple!) (TYPE%tuple%2. (TRACKED $) TYPE%test_crate!Y.Instance.
       (TRACKED $) TYPE%test_crate!Y.c.
     ))
     (let
      ((instance$ (%Poly%test_crate!Y.Instance. (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2.
            tmp_tuple!
      ))))))
      (let
       ((param_token_c$ (%Poly%test_crate!Y.c. (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2.
             tmp_tuple!
       ))))))
       (let
        ((instance$1 instance$))
        (let
         ((param_token_c$1 param_token_c$))
         (and
          (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.MonotonicCountToken.instance_id.? $ TYPE%test_crate!Y.c.
             (Poly%test_crate!Y.c. param_token_c$1)
            )
           ) (test_crate!Y.impl&%8.id.? (Poly%test_crate!Y.Instance. instance$1))
          )
          (= (%I (vstd!tokens.MonotonicCountToken.count.? $ TYPE%test_crate!Y.c. (Poly%test_crate!Y.c.
              param_token_c$1
            ))
           ) 9
   ))))))))
   :pattern ((ens%test_crate!Y.impl&%8.initialize. no%param tmp_tuple!))
   :qid internal_ens__test_crate!Y.impl&__8.initialize._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__8.initialize._definition
)))

;; Function-Specs test_crate::Y::Instance::tr_add
(declare-fun ens%test_crate!Y.impl&%8.tr_add. (test_crate!Y.Instance. test_crate!Y.c.)
 Bool
)
(assert
 (forall ((self! test_crate!Y.Instance.) (param_token_0_c! test_crate!Y.c.)) (!
   (= (ens%test_crate!Y.impl&%8.tr_add. self! param_token_0_c!) (and
     (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.MonotonicCountToken.instance_id.? $ TYPE%test_crate!Y.c.
        (Poly%test_crate!Y.c. param_token_0_c!)
       )
      ) (test_crate!Y.impl&%8.id.? (Poly%test_crate!Y.Instance. self!))
     )
     (= (%I (vstd!tokens.MonotonicCountToken.count.? $ TYPE%test_crate!Y.c. (Poly%test_crate!Y.c.
         param_token_0_c!
       ))
      ) 2
   )))
   :pattern ((ens%test_crate!Y.impl&%8.tr_add. self! param_token_0_c!))
   :qid internal_ens__test_crate!Y.impl&__8.tr_add._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__8.tr_add._definition
)))

;; Function-Specs test_crate::Y::Instance::tr_have
(declare-fun req%test_crate!Y.impl&%8.tr_have. (test_crate!Y.Instance. test_crate!Y.c.)
 Bool
)
(declare-const %%global_location_label%%1 Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((self! test_crate!Y.Instance.) (param_token_0_c! test_crate!Y.c.)) (!
   (= (req%test_crate!Y.impl&%8.tr_have. self! param_token_0_c!) (and
     (=>
      %%global_location_label%%1
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.MonotonicCountToken.instance_id.? $ TYPE%test_crate!Y.c.
         (Poly%test_crate!Y.c. param_token_0_c!)
        )
       ) (test_crate!Y.impl&%8.id.? (Poly%test_crate!Y.Instance. self!))
     ))
     (=>
      %%global_location_label%%2
      (= (%I (vstd!tokens.MonotonicCountToken.count.? $ TYPE%test_crate!Y.c. (Poly%test_crate!Y.c.
          param_token_0_c!
        ))
       ) 2
   ))))
   :pattern ((req%test_crate!Y.impl&%8.tr_have. self! param_token_0_c!))
   :qid internal_req__test_crate!Y.impl&__8.tr_have._definition
   :skolemid skolem_internal_req__test_crate!Y.impl&__8.tr_have._definition
)))

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

;; Function-Axioms test_crate::rel_tr1
(assert
 (fuel_bool_default fuel%test_crate!rel_tr1.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!rel_tr1.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!rel_tr1.? pre! post!) (= (test_crate!Y.State./State/c (%Poly%test_crate!Y.State.
        post!
       )
      ) (ite
       (<= (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. pre!)) 2)
       2
       (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. pre!))
    )))
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
    (= (test_crate!rel_tr1_strong.? pre! post!) (= (test_crate!Y.State./State/c (%Poly%test_crate!Y.State.
        post!
       )
      ) (ite
       (<= (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. pre!)) 2)
       2
       (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. pre!))
    )))
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
    (= (test_crate!rel_tr2.? pre! post!) (and
      (>= (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. pre!)) 2)
      (= (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/c
        (%Poly%test_crate!Y.State. pre!)
    ))))
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
    (= (test_crate!rel_tr2_strong.? pre! post!) (and
      (>= (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. pre!)) 2)
      (= (test_crate!Y.State./State/c (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/c
        (%Poly%test_crate!Y.State. pre!)
    ))))
    :pattern ((test_crate!rel_tr2_strong.? pre! post!))
    :qid internal_test_crate!rel_tr2_strong.?_definition
    :skolemid skolem_internal_test_crate!rel_tr2_strong.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!tokens.MonotonicCountToken. $ TYPE%test_crate!Y.c.)
)

;; Function-Specs test_crate::correct_tr
(declare-fun ens%test_crate!correct_tr. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!correct_tr. pre! post!) (and
     (= (test_crate!rel_tr1.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
      (test_crate!Y.impl&%11.tr_add.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
     )))
     (= (test_crate!rel_tr1_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       )
      ) (test_crate!Y.impl&%11.tr_add_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
     )))
     (= (test_crate!rel_tr2.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
      (test_crate!Y.impl&%11.tr_have.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
     )))
     (= (test_crate!rel_tr2_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
       )
      ) (test_crate!Y.impl&%11.tr_have_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
   )))))
   :pattern ((ens%test_crate!correct_tr. pre! post!))
   :qid internal_ens__test_crate!correct_tr._definition
   :skolemid skolem_internal_ens__test_crate!correct_tr._definition
)))

;; Function-Def test_crate::correct_tr
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-persistent_count_codegen/test.rs:78:7: 78:51 (#0)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!Y.State.)
 (declare-const post! test_crate!Y.State.)
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
 (assert
  (not (and
    (=>
     %%location_label%%0
     (= (test_crate!rel_tr1.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
      (test_crate!Y.impl&%11.tr_add.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
        post!
    ))))
    (and
     (=>
      %%location_label%%1
      (= (test_crate!rel_tr1_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
         post!
        )
       ) (test_crate!Y.impl&%11.tr_add_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
         post!
     ))))
     (and
      (=>
       %%location_label%%2
       (= (test_crate!rel_tr2.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
        (test_crate!Y.impl&%11.tr_have.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
          post!
      ))))
      (=>
       %%location_label%%3
       (= (test_crate!rel_tr2_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
          post!
         )
        ) (test_crate!Y.impl&%11.tr_have_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
          post!
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::test_inst
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-persistent_count_codegen/test.rs:87:7: 87:21 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Poly)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const tmp%%@ tuple%2.)
 (declare-const verus_tmp_inst@ test_crate!Y.Instance.)
 (declare-const verus_tmp_t1@ test_crate!Y.c.)
 (declare-const inst@ test_crate!Y.Instance.)
 (declare-const t1@ test_crate!Y.c.)
 (declare-const t2@ test_crate!Y.c.)
 (declare-const t4@ test_crate!Y.c.)
 (declare-const t2_clone@ test_crate!Y.c.)
 (assert
  fuel_defaults
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 (assert
  (not (=>
    (ens%test_crate!Y.impl&%8.initialize. 0 tmp%%@)
    (=>
     (= verus_tmp_inst@ (%Poly%test_crate!Y.Instance. (tuple%2./tuple%2/0 (%Poly%tuple%2.
         (Poly%tuple%2. tmp%%@)
     ))))
     (=>
      (= verus_tmp_t1@ (%Poly%test_crate!Y.c. (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2.
           tmp%%@
      )))))
      (=>
       (= inst@ verus_tmp_inst@)
       (=>
        (= t1@ verus_tmp_t1@)
        (=>
         (= tmp%1 (= (%I (vstd!tokens.MonotonicCountToken.count.? $ TYPE%test_crate!Y.c. (Poly%test_crate!Y.c.
              t1@
            ))
           ) 9
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
             %%location_label%%1
             (req%vstd!tokens.MonotonicCountToken.weaken. $ TYPE%test_crate!Y.c. (Poly%test_crate!Y.c.
               t1@
              ) (I 2)
            ))
            (=>
             (ens%vstd!tokens.MonotonicCountToken.weaken. $ TYPE%test_crate!Y.c. (Poly%test_crate!Y.c.
               t1@
              ) (I 2) tmp%2
             )
             (=>
              (= t2@ (%Poly%test_crate!Y.c. tmp%2))
              (and
               (=>
                %%location_label%%2
                (req%test_crate!Y.impl&%8.tr_have. inst@ t2@)
               )
               (=>
                (ens%test_crate!Y.impl&%8.tr_add. inst@ t4@)
                (=>
                 (= tmp%3 (= (%I (vstd!tokens.MonotonicCountToken.count.? $ TYPE%test_crate!Y.c. (Poly%test_crate!Y.c.
                      t4@
                    ))
                   ) 2
                 ))
                 (and
                  (=>
                   %%location_label%%3
                   tmp%3
                  )
                  (=>
                   tmp%3
                   (=>
                    (ens%test_crate!Y.impl&%4.clone. t2@ t2_clone@)
                    (=>
                     (= tmp%4 (= t2@ t2_clone@))
                     (=>
                      %%location_label%%4
                      tmp%4
 )))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::test_weaken_fail
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-persistent_count_codegen/test.rs:102:7: 102:28 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Poly)
 (declare-const tmp%%@ tuple%2.)
 (declare-const verus_tmp_inst@ test_crate!Y.Instance.)
 (declare-const verus_tmp_t1@ test_crate!Y.c.)
 (declare-const inst@ test_crate!Y.Instance.)
 (declare-const t1@ test_crate!Y.c.)
 (declare-const t2@ test_crate!Y.c.)
 (assert
  fuel_defaults
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (ens%test_crate!Y.impl&%8.initialize. 0 tmp%%@)
    (=>
     (= verus_tmp_inst@ (%Poly%test_crate!Y.Instance. (tuple%2./tuple%2/0 (%Poly%tuple%2.
         (Poly%tuple%2. tmp%%@)
     ))))
     (=>
      (= verus_tmp_t1@ (%Poly%test_crate!Y.c. (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2.
           tmp%%@
      )))))
      (=>
       (= inst@ verus_tmp_inst@)
       (=>
        (= t1@ verus_tmp_t1@)
        (=>
         %%location_label%%0
         (req%vstd!tokens.MonotonicCountToken.weaken. $ TYPE%test_crate!Y.c. (Poly%test_crate!Y.c.
           t1@
          ) (I 800)
 )))))))))
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

;; Function-Recommends test_crate::test_weaken_fail
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-persistent_count_codegen/test.rs:102:7: 102:28 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Poly)
 (declare-const tmp%%@ tuple%2.)
 (declare-const verus_tmp_inst@ test_crate!Y.Instance.)
 (declare-const verus_tmp_t1@ test_crate!Y.c.)
 (declare-const inst@ test_crate!Y.Instance.)
 (declare-const t1@ test_crate!Y.c.)
 (declare-const t2@ test_crate!Y.c.)
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
