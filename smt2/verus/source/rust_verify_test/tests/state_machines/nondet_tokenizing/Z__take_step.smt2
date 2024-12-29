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

;; MODULE 'module Z::take_step'

;; Fuel
(declare-const fuel%test_crate!Z.impl&%13.initialize. FuelId)
(declare-const fuel%test_crate!Z.impl&%13.initialize_enabled. FuelId)
(declare-const fuel%test_crate!Z.impl&%13.tr1_strong. FuelId)
(declare-const fuel%test_crate!Z.impl&%13.tr1_enabled. FuelId)
(declare-const fuel%test_crate!Z.impl&%13.tr2_strong. FuelId)
(declare-const fuel%test_crate!Z.impl&%13.tr2_enabled. FuelId)
(declare-const fuel%test_crate!Z.impl&%13.tr3_strong. FuelId)
(declare-const fuel%test_crate!Z.impl&%13.tr3_enabled. FuelId)
(declare-const fuel%test_crate!Z.impl&%13.invariant. FuelId)
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
 (distinct fuel%test_crate!Z.impl&%13.initialize. fuel%test_crate!Z.impl&%13.initialize_enabled.
  fuel%test_crate!Z.impl&%13.tr1_strong. fuel%test_crate!Z.impl&%13.tr1_enabled. fuel%test_crate!Z.impl&%13.tr2_strong.
  fuel%test_crate!Z.impl&%13.tr2_enabled. fuel%test_crate!Z.impl&%13.tr3_strong. fuel%test_crate!Z.impl&%13.tr3_enabled.
  fuel%test_crate!Z.impl&%13.invariant. fuel%vstd!array.group_array_axioms. fuel%vstd!map.group_map_axioms.
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
(declare-datatypes ((test_crate!Z.State. 0)) (((test_crate!Z.State./State (test_crate!Z.State./State/?v1
     Int
    ) (test_crate!Z.State./State/?v2 Int) (test_crate!Z.State./State/?nt Int) (test_crate!Z.State./State/?c
     Int
)))))
(declare-fun test_crate!Z.State./State/v1 (test_crate!Z.State.) Int)
(declare-fun test_crate!Z.State./State/v2 (test_crate!Z.State.) Int)
(declare-fun test_crate!Z.State./State/nt (test_crate!Z.State.) Int)
(declare-fun test_crate!Z.State./State/c (test_crate!Z.State.) Int)
(declare-const TYPE%test_crate!Z.State. Type)
(declare-fun Poly%test_crate!Z.State. (test_crate!Z.State.) Poly)
(declare-fun %Poly%test_crate!Z.State. (Poly) test_crate!Z.State.)
(assert
 (forall ((x test_crate!Z.State.)) (!
   (= x (%Poly%test_crate!Z.State. (Poly%test_crate!Z.State. x)))
   :pattern ((Poly%test_crate!Z.State. x))
   :qid internal_test_crate__Z__State_box_axiom_definition
   :skolemid skolem_internal_test_crate__Z__State_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Z.State.)
    (= x (Poly%test_crate!Z.State. (%Poly%test_crate!Z.State. x)))
   )
   :pattern ((has_type x TYPE%test_crate!Z.State.))
   :qid internal_test_crate__Z__State_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__Z__State_unbox_axiom_definition
)))
(assert
 (forall ((x test_crate!Z.State.)) (!
   (= (test_crate!Z.State./State/v1 x) (test_crate!Z.State./State/?v1 x))
   :pattern ((test_crate!Z.State./State/v1 x))
   :qid internal_test_crate!Z.State./State/v1_accessor_definition
   :skolemid skolem_internal_test_crate!Z.State./State/v1_accessor_definition
)))
(assert
 (forall ((x test_crate!Z.State.)) (!
   (= (test_crate!Z.State./State/v2 x) (test_crate!Z.State./State/?v2 x))
   :pattern ((test_crate!Z.State./State/v2 x))
   :qid internal_test_crate!Z.State./State/v2_accessor_definition
   :skolemid skolem_internal_test_crate!Z.State./State/v2_accessor_definition
)))
(assert
 (forall ((x test_crate!Z.State.)) (!
   (= (test_crate!Z.State./State/nt x) (test_crate!Z.State./State/?nt x))
   :pattern ((test_crate!Z.State./State/nt x))
   :qid internal_test_crate!Z.State./State/nt_accessor_definition
   :skolemid skolem_internal_test_crate!Z.State./State/nt_accessor_definition
)))
(assert
 (forall ((x test_crate!Z.State.)) (!
   (= (test_crate!Z.State./State/c x) (test_crate!Z.State./State/?c x))
   :pattern ((test_crate!Z.State./State/c x))
   :qid internal_test_crate!Z.State./State/c_accessor_definition
   :skolemid skolem_internal_test_crate!Z.State./State/c_accessor_definition
)))
(assert
 (forall ((x test_crate!Z.State.)) (!
   (has_type (Poly%test_crate!Z.State. x) TYPE%test_crate!Z.State.)
   :pattern ((has_type (Poly%test_crate!Z.State. x) TYPE%test_crate!Z.State.))
   :qid internal_test_crate__Z__State_has_type_always_definition
   :skolemid skolem_internal_test_crate__Z__State_has_type_always_definition
)))

;; Function-Decl test_crate::Z::State::initialize
(declare-fun test_crate!Z.impl&%13.initialize.? (Poly) Bool)

;; Function-Decl test_crate::Z::State::initialize_enabled
(declare-fun test_crate!Z.impl&%13.initialize_enabled.? (Poly) Bool)

;; Function-Decl test_crate::Z::State::invariant
(declare-fun test_crate!Z.impl&%13.invariant.? (Poly) Bool)

;; Function-Decl test_crate::Z::State::tr1_enabled
(declare-fun test_crate!Z.impl&%13.tr1_enabled.? (Poly) Bool)

;; Function-Decl test_crate::Z::State::tr1_strong
(declare-fun test_crate!Z.impl&%13.tr1_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Z::State::tr2_enabled
(declare-fun test_crate!Z.impl&%13.tr2_enabled.? (Poly) Bool)

;; Function-Decl test_crate::Z::State::tr2_strong
(declare-fun test_crate!Z.impl&%13.tr2_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::Z::State::tr3_enabled
(declare-fun test_crate!Z.impl&%13.tr3_enabled.? (Poly) Bool)

;; Function-Decl test_crate::Z::State::tr3_strong
(declare-fun test_crate!Z.impl&%13.tr3_strong.? (Poly Poly) Bool)

;; Function-Axioms test_crate::Z::State::initialize
(assert
 (fuel_bool_default fuel%test_crate!Z.impl&%13.initialize.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Z.impl&%13.initialize.)
  (forall ((post! Poly)) (!
    (= (test_crate!Z.impl&%13.initialize.? post!) (let
      ((update_tmp_v1$ 0))
      (let
       ((update_tmp_v2$ 1))
       (let
        ((update_tmp_nt$ 2))
        (let
         ((update_tmp_c$ 3))
         (and
          (= (test_crate!Z.State./State/c (%Poly%test_crate!Z.State. post!)) update_tmp_c$)
          (and
           (= (test_crate!Z.State./State/nt (%Poly%test_crate!Z.State. post!)) update_tmp_nt$)
           (and
            (= (test_crate!Z.State./State/v2 (%Poly%test_crate!Z.State. post!)) update_tmp_v2$)
            (= (test_crate!Z.State./State/v1 (%Poly%test_crate!Z.State. post!)) update_tmp_v1$)
    ))))))))
    :pattern ((test_crate!Z.impl&%13.initialize.? post!))
    :qid internal_test_crate!Z.impl&__13.initialize.?_definition
    :skolemid skolem_internal_test_crate!Z.impl&__13.initialize.?_definition
))))

;; Function-Axioms test_crate::Z::State::initialize_enabled
(assert
 (fuel_bool_default fuel%test_crate!Z.impl&%13.initialize_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Z.impl&%13.initialize_enabled.)
  (forall ((no%param Poly)) (!
    (= (test_crate!Z.impl&%13.initialize_enabled.? no%param) true)
    :pattern ((test_crate!Z.impl&%13.initialize_enabled.? no%param))
    :qid internal_test_crate!Z.impl&__13.initialize_enabled.?_definition
    :skolemid skolem_internal_test_crate!Z.impl&__13.initialize_enabled.?_definition
))))

;; Function-Axioms test_crate::Z::State::invariant
(assert
 (fuel_bool_default fuel%test_crate!Z.impl&%13.invariant.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Z.impl&%13.invariant.)
  (forall ((self! Poly)) (!
    (= (test_crate!Z.impl&%13.invariant.? self!) true)
    :pattern ((test_crate!Z.impl&%13.invariant.? self!))
    :qid internal_test_crate!Z.impl&__13.invariant.?_definition
    :skolemid skolem_internal_test_crate!Z.impl&__13.invariant.?_definition
))))

;; Function-Specs test_crate::Z::take_step::initialize
(declare-fun req%test_crate!Z.take_step.initialize. (Int) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((no%param Int)) (!
   (= (req%test_crate!Z.take_step.initialize. no%param) (=>
     %%global_location_label%%0
     (test_crate!Z.impl&%13.initialize_enabled.? (I 0))
   ))
   :pattern ((req%test_crate!Z.take_step.initialize. no%param))
   :qid internal_req__test_crate!Z.take_step.initialize._definition
   :skolemid skolem_internal_req__test_crate!Z.take_step.initialize._definition
)))
(declare-fun ens%test_crate!Z.take_step.initialize. (Int test_crate!Z.State.) Bool)
(assert
 (forall ((no%param Int) (post! test_crate!Z.State.)) (!
   (= (ens%test_crate!Z.take_step.initialize. no%param post!) (and
     (test_crate!Z.impl&%13.initialize.? (Poly%test_crate!Z.State. post!))
     (test_crate!Z.impl&%13.invariant.? (Poly%test_crate!Z.State. post!))
   ))
   :pattern ((ens%test_crate!Z.take_step.initialize. no%param post!))
   :qid internal_ens__test_crate!Z.take_step.initialize._definition
   :skolemid skolem_internal_ens__test_crate!Z.take_step.initialize._definition
)))

;; Function-Axioms test_crate::Z::State::tr1_enabled
(assert
 (fuel_bool_default fuel%test_crate!Z.impl&%13.tr1_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Z.impl&%13.tr1_enabled.)
  (forall ((pre! Poly)) (!
    (= (test_crate!Z.impl&%13.tr1_enabled.? pre!) true)
    :pattern ((test_crate!Z.impl&%13.tr1_enabled.? pre!))
    :qid internal_test_crate!Z.impl&__13.tr1_enabled.?_definition
    :skolemid skolem_internal_test_crate!Z.impl&__13.tr1_enabled.?_definition
))))

;; Function-Axioms test_crate::Z::State::tr1_strong
(assert
 (fuel_bool_default fuel%test_crate!Z.impl&%13.tr1_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Z.impl&%13.tr1_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Z.impl&%13.tr1_strong.? pre! post!) (let
      ((update_tmp_v2$ (test_crate!Z.State./State/v2 (%Poly%test_crate!Z.State. pre!))))
      (let
       ((update_tmp_c$ (test_crate!Z.State./State/c (%Poly%test_crate!Z.State. pre!))))
       (let
        ((update_tmp_nt$ (Add (test_crate!Z.State./State/nt (%Poly%test_crate!Z.State. pre!))
           1
        )))
        (let
         ((update_tmp_v1$ (Add (test_crate!Z.State./State/v1 (%Poly%test_crate!Z.State. pre!))
            2
         )))
         (and
          (= (test_crate!Z.State./State/v1 (%Poly%test_crate!Z.State. post!)) update_tmp_v1$)
          (and
           (= (test_crate!Z.State./State/nt (%Poly%test_crate!Z.State. post!)) update_tmp_nt$)
           (and
            (= (test_crate!Z.State./State/c (%Poly%test_crate!Z.State. post!)) update_tmp_c$)
            (= (test_crate!Z.State./State/v2 (%Poly%test_crate!Z.State. post!)) update_tmp_v2$)
    ))))))))
    :pattern ((test_crate!Z.impl&%13.tr1_strong.? pre! post!))
    :qid internal_test_crate!Z.impl&__13.tr1_strong.?_definition
    :skolemid skolem_internal_test_crate!Z.impl&__13.tr1_strong.?_definition
))))

;; Function-Specs test_crate::Z::take_step::tr1
(declare-fun req%test_crate!Z.take_step.tr1. (test_crate!Z.State.) Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((pre! test_crate!Z.State.)) (!
   (= (req%test_crate!Z.take_step.tr1. pre!) (=>
     %%global_location_label%%1
     (and
      (test_crate!Z.impl&%13.tr1_enabled.? (Poly%test_crate!Z.State. pre!))
      (test_crate!Z.impl&%13.invariant.? (Poly%test_crate!Z.State. pre!))
   )))
   :pattern ((req%test_crate!Z.take_step.tr1. pre!))
   :qid internal_req__test_crate!Z.take_step.tr1._definition
   :skolemid skolem_internal_req__test_crate!Z.take_step.tr1._definition
)))
(declare-fun ens%test_crate!Z.take_step.tr1. (test_crate!Z.State. test_crate!Z.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Z.State.) (post! test_crate!Z.State.)) (!
   (= (ens%test_crate!Z.take_step.tr1. pre! post!) (and
     (test_crate!Z.impl&%13.tr1_strong.? (Poly%test_crate!Z.State. pre!) (Poly%test_crate!Z.State.
       post!
     ))
     (test_crate!Z.impl&%13.invariant.? (Poly%test_crate!Z.State. post!))
   ))
   :pattern ((ens%test_crate!Z.take_step.tr1. pre! post!))
   :qid internal_ens__test_crate!Z.take_step.tr1._definition
   :skolemid skolem_internal_ens__test_crate!Z.take_step.tr1._definition
)))

;; Function-Axioms test_crate::Z::State::tr2_enabled
(assert
 (fuel_bool_default fuel%test_crate!Z.impl&%13.tr2_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Z.impl&%13.tr2_enabled.)
  (forall ((pre! Poly)) (!
    (= (test_crate!Z.impl&%13.tr2_enabled.? pre!) true)
    :pattern ((test_crate!Z.impl&%13.tr2_enabled.? pre!))
    :qid internal_test_crate!Z.impl&__13.tr2_enabled.?_definition
    :skolemid skolem_internal_test_crate!Z.impl&__13.tr2_enabled.?_definition
))))

;; Function-Axioms test_crate::Z::State::tr2_strong
(assert
 (fuel_bool_default fuel%test_crate!Z.impl&%13.tr2_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Z.impl&%13.tr2_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Z.impl&%13.tr2_strong.? pre! post!) (let
      ((update_tmp_v2$ (test_crate!Z.State./State/v2 (%Poly%test_crate!Z.State. pre!))))
      (let
       ((update_tmp_nt$ (test_crate!Z.State./State/nt (%Poly%test_crate!Z.State. pre!))))
       (let
        ((update_tmp_c$ (test_crate!Z.State./State/c (%Poly%test_crate!Z.State. pre!))))
        (and
         (let
          ((x$ (Sub (Add (Add (test_crate!Z.State./State/nt (%Poly%test_crate!Z.State. pre!)) (test_crate!Z.State./State/c
                (%Poly%test_crate!Z.State. pre!)
               )
              ) (test_crate!Z.State./State/v1 (%Poly%test_crate!Z.State. pre!))
             ) (test_crate!Z.State./State/v2 (%Poly%test_crate!Z.State. pre!))
          )))
          (let
           ((update_tmp_v1$ x$))
           (= (test_crate!Z.State./State/v1 (%Poly%test_crate!Z.State. post!)) update_tmp_v1$)
         ))
         (and
          (= (test_crate!Z.State./State/c (%Poly%test_crate!Z.State. post!)) update_tmp_c$)
          (and
           (= (test_crate!Z.State./State/nt (%Poly%test_crate!Z.State. post!)) update_tmp_nt$)
           (= (test_crate!Z.State./State/v2 (%Poly%test_crate!Z.State. post!)) update_tmp_v2$)
    )))))))
    :pattern ((test_crate!Z.impl&%13.tr2_strong.? pre! post!))
    :qid internal_test_crate!Z.impl&__13.tr2_strong.?_definition
    :skolemid skolem_internal_test_crate!Z.impl&__13.tr2_strong.?_definition
))))

;; Function-Specs test_crate::Z::take_step::tr2
(declare-fun req%test_crate!Z.take_step.tr2. (test_crate!Z.State.) Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((pre! test_crate!Z.State.)) (!
   (= (req%test_crate!Z.take_step.tr2. pre!) (=>
     %%global_location_label%%2
     (and
      (test_crate!Z.impl&%13.tr2_enabled.? (Poly%test_crate!Z.State. pre!))
      (test_crate!Z.impl&%13.invariant.? (Poly%test_crate!Z.State. pre!))
   )))
   :pattern ((req%test_crate!Z.take_step.tr2. pre!))
   :qid internal_req__test_crate!Z.take_step.tr2._definition
   :skolemid skolem_internal_req__test_crate!Z.take_step.tr2._definition
)))
(declare-fun ens%test_crate!Z.take_step.tr2. (test_crate!Z.State. test_crate!Z.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Z.State.) (post! test_crate!Z.State.)) (!
   (= (ens%test_crate!Z.take_step.tr2. pre! post!) (and
     (test_crate!Z.impl&%13.tr2_strong.? (Poly%test_crate!Z.State. pre!) (Poly%test_crate!Z.State.
       post!
     ))
     (test_crate!Z.impl&%13.invariant.? (Poly%test_crate!Z.State. post!))
   ))
   :pattern ((ens%test_crate!Z.take_step.tr2. pre! post!))
   :qid internal_ens__test_crate!Z.take_step.tr2._definition
   :skolemid skolem_internal_ens__test_crate!Z.take_step.tr2._definition
)))

;; Function-Axioms test_crate::Z::State::tr3_enabled
(assert
 (fuel_bool_default fuel%test_crate!Z.impl&%13.tr3_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Z.impl&%13.tr3_enabled.)
  (forall ((pre! Poly)) (!
    (= (test_crate!Z.impl&%13.tr3_enabled.? pre!) true)
    :pattern ((test_crate!Z.impl&%13.tr3_enabled.? pre!))
    :qid internal_test_crate!Z.impl&__13.tr3_enabled.?_definition
    :skolemid skolem_internal_test_crate!Z.impl&__13.tr3_enabled.?_definition
))))

;; Function-Axioms test_crate::Z::State::tr3_strong
(assert
 (fuel_bool_default fuel%test_crate!Z.impl&%13.tr3_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Z.impl&%13.tr3_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Z.impl&%13.tr3_strong.? pre! post!) (let
      ((update_tmp_v2$ (test_crate!Z.State./State/v2 (%Poly%test_crate!Z.State. pre!))))
      (let
       ((update_tmp_nt$ (test_crate!Z.State./State/nt (%Poly%test_crate!Z.State. pre!))))
       (let
        ((update_tmp_c$ (test_crate!Z.State./State/c (%Poly%test_crate!Z.State. pre!))))
        (and
         (let
          ((x$ (Sub (Add (Add (test_crate!Z.State./State/nt (%Poly%test_crate!Z.State. pre!)) (test_crate!Z.State./State/c
                (%Poly%test_crate!Z.State. pre!)
               )
              ) (test_crate!Z.State./State/v1 (%Poly%test_crate!Z.State. pre!))
             ) (test_crate!Z.State./State/v2 (%Poly%test_crate!Z.State. pre!))
          )))
          (let
           ((update_tmp_v1$ (Add x$ (Mul 4 (test_crate!Z.State./State/v2 (%Poly%test_crate!Z.State.
                 pre!
           ))))))
           (= (test_crate!Z.State./State/v1 (%Poly%test_crate!Z.State. post!)) update_tmp_v1$)
         ))
         (and
          (= (test_crate!Z.State./State/c (%Poly%test_crate!Z.State. post!)) update_tmp_c$)
          (and
           (= (test_crate!Z.State./State/nt (%Poly%test_crate!Z.State. post!)) update_tmp_nt$)
           (= (test_crate!Z.State./State/v2 (%Poly%test_crate!Z.State. post!)) update_tmp_v2$)
    )))))))
    :pattern ((test_crate!Z.impl&%13.tr3_strong.? pre! post!))
    :qid internal_test_crate!Z.impl&__13.tr3_strong.?_definition
    :skolemid skolem_internal_test_crate!Z.impl&__13.tr3_strong.?_definition
))))

;; Function-Specs test_crate::Z::take_step::tr3
(declare-fun req%test_crate!Z.take_step.tr3. (test_crate!Z.State.) Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((pre! test_crate!Z.State.)) (!
   (= (req%test_crate!Z.take_step.tr3. pre!) (=>
     %%global_location_label%%3
     (and
      (test_crate!Z.impl&%13.tr3_enabled.? (Poly%test_crate!Z.State. pre!))
      (test_crate!Z.impl&%13.invariant.? (Poly%test_crate!Z.State. pre!))
   )))
   :pattern ((req%test_crate!Z.take_step.tr3. pre!))
   :qid internal_req__test_crate!Z.take_step.tr3._definition
   :skolemid skolem_internal_req__test_crate!Z.take_step.tr3._definition
)))
(declare-fun ens%test_crate!Z.take_step.tr3. (test_crate!Z.State. test_crate!Z.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Z.State.) (post! test_crate!Z.State.)) (!
   (= (ens%test_crate!Z.take_step.tr3. pre! post!) (and
     (test_crate!Z.impl&%13.tr3_strong.? (Poly%test_crate!Z.State. pre!) (Poly%test_crate!Z.State.
       post!
     ))
     (test_crate!Z.impl&%13.invariant.? (Poly%test_crate!Z.State. post!))
   ))
   :pattern ((ens%test_crate!Z.take_step.tr3. pre! post!))
   :qid internal_ens__test_crate!Z.take_step.tr3._definition
   :skolemid skolem_internal_ens__test_crate!Z.take_step.tr3._definition
)))
