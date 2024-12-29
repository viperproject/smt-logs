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
(declare-const fuel%test_crate!Y.impl&%19.tr1. FuelId)
(declare-const fuel%test_crate!Y.impl&%19.tr1_strong. FuelId)
(declare-const fuel%test_crate!impl&%0.arrow_Bar_0. FuelId)
(declare-const fuel%test_crate!impl&%0.arrow_Qax_0. FuelId)
(declare-const fuel%test_crate!impl&%0.arrow_Duck_0. FuelId)
(declare-const fuel%test_crate!rel_tr1. FuelId)
(declare-const fuel%test_crate!rel_tr1_strong. FuelId)
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
 (distinct fuel%test_crate!Y.impl&%19.tr1. fuel%test_crate!Y.impl&%19.tr1_strong. fuel%test_crate!impl&%0.arrow_Bar_0.
  fuel%test_crate!impl&%0.arrow_Qax_0. fuel%test_crate!impl&%0.arrow_Duck_0. fuel%test_crate!rel_tr1.
  fuel%test_crate!rel_tr1_strong. fuel%vstd!array.group_array_axioms. fuel%vstd!map.group_map_axioms.
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
(declare-sort test_crate!Y.opt1. 0)
(declare-sort test_crate!Y.opt2. 0)
(declare-sort test_crate!Y.opt3. 0)
(declare-sort test_crate!Y.opt4. 0)
(declare-datatypes ((core!option.Option. 0) (vstd!tokens.InstanceId. 0) (test_crate!Y.State.
   0
  ) (test_crate!Foo. 0) (tuple%0. 0) (tuple%2. 0) (tuple%5. 0)
 ) (((core!option.Option./None) (core!option.Option./Some (core!option.Option./Some/?0
     Poly
   ))
  ) ((vstd!tokens.InstanceId./InstanceId (vstd!tokens.InstanceId./InstanceId/?0 Int)))
  ((test_crate!Y.State./State (test_crate!Y.State./State/?opt1 core!option.Option.) (
     test_crate!Y.State./State/?opt2 core!option.Option.
    ) (test_crate!Y.State./State/?opt3 core!option.Option.) (test_crate!Y.State./State/?opt4
     core!option.Option.
   ))
  ) ((test_crate!Foo./Bar (test_crate!Foo./Bar/?0 Int)) (test_crate!Foo./Qax (test_crate!Foo./Qax/?0
     Int
    )
   ) (test_crate!Foo./Duck (test_crate!Foo./Duck/?0 Int))
  ) ((tuple%0./tuple%0)) ((tuple%2./tuple%2 (tuple%2./tuple%2/?0 Poly) (tuple%2./tuple%2/?1
     Poly
   ))
  ) ((tuple%5./tuple%5 (tuple%5./tuple%5/?0 Poly) (tuple%5./tuple%5/?1 Poly) (tuple%5./tuple%5/?2
     Poly
    ) (tuple%5./tuple%5/?3 Poly) (tuple%5./tuple%5/?4 Poly)
))))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun vstd!tokens.InstanceId./InstanceId/0 (vstd!tokens.InstanceId.) Int)
(declare-fun test_crate!Y.State./State/opt1 (test_crate!Y.State.) core!option.Option.)
(declare-fun test_crate!Y.State./State/opt2 (test_crate!Y.State.) core!option.Option.)
(declare-fun test_crate!Y.State./State/opt3 (test_crate!Y.State.) core!option.Option.)
(declare-fun test_crate!Y.State./State/opt4 (test_crate!Y.State.) core!option.Option.)
(declare-fun test_crate!Foo./Bar/0 (test_crate!Foo.) Int)
(declare-fun test_crate!Foo./Qax/0 (test_crate!Foo.) Int)
(declare-fun test_crate!Foo./Duck/0 (test_crate!Foo.) Int)
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-fun tuple%5./tuple%5/0 (tuple%5.) Poly)
(declare-fun tuple%5./tuple%5/1 (tuple%5.) Poly)
(declare-fun tuple%5./tuple%5/2 (tuple%5.) Poly)
(declare-fun tuple%5./tuple%5/3 (tuple%5.) Poly)
(declare-fun tuple%5./tuple%5/4 (tuple%5.) Poly)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-const TYPE%vstd!tokens.InstanceId. Type)
(declare-const TYPE%test_crate!Y.State. Type)
(declare-const TYPE%test_crate!Y.Instance. Type)
(declare-const TYPE%test_crate!Y.opt1. Type)
(declare-const TYPE%test_crate!Y.opt2. Type)
(declare-const TYPE%test_crate!Y.opt3. Type)
(declare-const TYPE%test_crate!Y.opt4. Type)
(declare-const TYPE%test_crate!Foo. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%2. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%tuple%5. (Dcr Type Dcr Type Dcr Type Dcr Type Dcr Type) Type)
(declare-fun Poly%test_crate!Y.Instance. (test_crate!Y.Instance.) Poly)
(declare-fun %Poly%test_crate!Y.Instance. (Poly) test_crate!Y.Instance.)
(declare-fun Poly%test_crate!Y.opt1. (test_crate!Y.opt1.) Poly)
(declare-fun %Poly%test_crate!Y.opt1. (Poly) test_crate!Y.opt1.)
(declare-fun Poly%test_crate!Y.opt2. (test_crate!Y.opt2.) Poly)
(declare-fun %Poly%test_crate!Y.opt2. (Poly) test_crate!Y.opt2.)
(declare-fun Poly%test_crate!Y.opt3. (test_crate!Y.opt3.) Poly)
(declare-fun %Poly%test_crate!Y.opt3. (Poly) test_crate!Y.opt3.)
(declare-fun Poly%test_crate!Y.opt4. (test_crate!Y.opt4.) Poly)
(declare-fun %Poly%test_crate!Y.opt4. (Poly) test_crate!Y.opt4.)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
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
(declare-fun Poly%tuple%5. (tuple%5.) Poly)
(declare-fun %Poly%tuple%5. (Poly) tuple%5.)
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
 (forall ((x test_crate!Y.opt1.)) (!
   (= x (%Poly%test_crate!Y.opt1. (Poly%test_crate!Y.opt1. x)))
   :pattern ((Poly%test_crate!Y.opt1. x))
   :qid internal_test_crate__Y__opt1_box_axiom_definition
   :skolemid skolem_internal_test_crate__Y__opt1_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.opt1.)
    (= x (Poly%test_crate!Y.opt1. (%Poly%test_crate!Y.opt1. x)))
   )
   :pattern ((has_type x TYPE%test_crate!Y.opt1.))
   :qid internal_test_crate__Y__opt1_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__Y__opt1_unbox_axiom_definition
)))
(assert
 (forall ((x test_crate!Y.opt1.)) (!
   (has_type (Poly%test_crate!Y.opt1. x) TYPE%test_crate!Y.opt1.)
   :pattern ((has_type (Poly%test_crate!Y.opt1. x) TYPE%test_crate!Y.opt1.))
   :qid internal_test_crate__Y__opt1_has_type_always_definition
   :skolemid skolem_internal_test_crate__Y__opt1_has_type_always_definition
)))
(assert
 (forall ((x test_crate!Y.opt2.)) (!
   (= x (%Poly%test_crate!Y.opt2. (Poly%test_crate!Y.opt2. x)))
   :pattern ((Poly%test_crate!Y.opt2. x))
   :qid internal_test_crate__Y__opt2_box_axiom_definition
   :skolemid skolem_internal_test_crate__Y__opt2_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.opt2.)
    (= x (Poly%test_crate!Y.opt2. (%Poly%test_crate!Y.opt2. x)))
   )
   :pattern ((has_type x TYPE%test_crate!Y.opt2.))
   :qid internal_test_crate__Y__opt2_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__Y__opt2_unbox_axiom_definition
)))
(assert
 (forall ((x test_crate!Y.opt2.)) (!
   (has_type (Poly%test_crate!Y.opt2. x) TYPE%test_crate!Y.opt2.)
   :pattern ((has_type (Poly%test_crate!Y.opt2. x) TYPE%test_crate!Y.opt2.))
   :qid internal_test_crate__Y__opt2_has_type_always_definition
   :skolemid skolem_internal_test_crate__Y__opt2_has_type_always_definition
)))
(assert
 (forall ((x test_crate!Y.opt3.)) (!
   (= x (%Poly%test_crate!Y.opt3. (Poly%test_crate!Y.opt3. x)))
   :pattern ((Poly%test_crate!Y.opt3. x))
   :qid internal_test_crate__Y__opt3_box_axiom_definition
   :skolemid skolem_internal_test_crate__Y__opt3_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.opt3.)
    (= x (Poly%test_crate!Y.opt3. (%Poly%test_crate!Y.opt3. x)))
   )
   :pattern ((has_type x TYPE%test_crate!Y.opt3.))
   :qid internal_test_crate__Y__opt3_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__Y__opt3_unbox_axiom_definition
)))
(assert
 (forall ((x test_crate!Y.opt3.)) (!
   (has_type (Poly%test_crate!Y.opt3. x) TYPE%test_crate!Y.opt3.)
   :pattern ((has_type (Poly%test_crate!Y.opt3. x) TYPE%test_crate!Y.opt3.))
   :qid internal_test_crate__Y__opt3_has_type_always_definition
   :skolemid skolem_internal_test_crate__Y__opt3_has_type_always_definition
)))
(assert
 (forall ((x test_crate!Y.opt4.)) (!
   (= x (%Poly%test_crate!Y.opt4. (Poly%test_crate!Y.opt4. x)))
   :pattern ((Poly%test_crate!Y.opt4. x))
   :qid internal_test_crate__Y__opt4_box_axiom_definition
   :skolemid skolem_internal_test_crate__Y__opt4_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.opt4.)
    (= x (Poly%test_crate!Y.opt4. (%Poly%test_crate!Y.opt4. x)))
   )
   :pattern ((has_type x TYPE%test_crate!Y.opt4.))
   :qid internal_test_crate__Y__opt4_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__Y__opt4_unbox_axiom_definition
)))
(assert
 (forall ((x test_crate!Y.opt4.)) (!
   (has_type (Poly%test_crate!Y.opt4. x) TYPE%test_crate!Y.opt4.)
   :pattern ((has_type (Poly%test_crate!Y.opt4. x) TYPE%test_crate!Y.opt4.))
   :qid internal_test_crate__Y__opt4_has_type_always_definition
   :skolemid skolem_internal_test_crate__Y__opt4_has_type_always_definition
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
 (forall ((_opt1! core!option.Option.) (_opt2! core!option.Option.) (_opt3! core!option.Option.)
   (_opt4! core!option.Option.)
  ) (!
   (=>
    (and
     (has_type (Poly%core!option.Option. _opt1!) (TYPE%core!option.Option. $ INT))
     (has_type (Poly%core!option.Option. _opt2!) (TYPE%core!option.Option. $ INT))
     (has_type (Poly%core!option.Option. _opt3!) (TYPE%core!option.Option. $ INT))
     (has_type (Poly%core!option.Option. _opt4!) (TYPE%core!option.Option. $ INT))
    )
    (has_type (Poly%test_crate!Y.State. (test_crate!Y.State./State _opt1! _opt2! _opt3!
       _opt4!
      )
     ) TYPE%test_crate!Y.State.
   ))
   :pattern ((has_type (Poly%test_crate!Y.State. (test_crate!Y.State./State _opt1! _opt2!
       _opt3! _opt4!
      )
     ) TYPE%test_crate!Y.State.
   ))
   :qid internal_test_crate!Y.State./State_constructor_definition
   :skolemid skolem_internal_test_crate!Y.State./State_constructor_definition
)))
(assert
 (forall ((x test_crate!Y.State.)) (!
   (= (test_crate!Y.State./State/opt1 x) (test_crate!Y.State./State/?opt1 x))
   :pattern ((test_crate!Y.State./State/opt1 x))
   :qid internal_test_crate!Y.State./State/opt1_accessor_definition
   :skolemid skolem_internal_test_crate!Y.State./State/opt1_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.State.)
    (has_type (Poly%core!option.Option. (test_crate!Y.State./State/opt1 (%Poly%test_crate!Y.State.
        x
      ))
     ) (TYPE%core!option.Option. $ INT)
   ))
   :pattern ((test_crate!Y.State./State/opt1 (%Poly%test_crate!Y.State. x)) (has_type
     x TYPE%test_crate!Y.State.
   ))
   :qid internal_test_crate!Y.State./State/opt1_invariant_definition
   :skolemid skolem_internal_test_crate!Y.State./State/opt1_invariant_definition
)))
(assert
 (forall ((x test_crate!Y.State.)) (!
   (= (test_crate!Y.State./State/opt2 x) (test_crate!Y.State./State/?opt2 x))
   :pattern ((test_crate!Y.State./State/opt2 x))
   :qid internal_test_crate!Y.State./State/opt2_accessor_definition
   :skolemid skolem_internal_test_crate!Y.State./State/opt2_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.State.)
    (has_type (Poly%core!option.Option. (test_crate!Y.State./State/opt2 (%Poly%test_crate!Y.State.
        x
      ))
     ) (TYPE%core!option.Option. $ INT)
   ))
   :pattern ((test_crate!Y.State./State/opt2 (%Poly%test_crate!Y.State. x)) (has_type
     x TYPE%test_crate!Y.State.
   ))
   :qid internal_test_crate!Y.State./State/opt2_invariant_definition
   :skolemid skolem_internal_test_crate!Y.State./State/opt2_invariant_definition
)))
(assert
 (forall ((x test_crate!Y.State.)) (!
   (= (test_crate!Y.State./State/opt3 x) (test_crate!Y.State./State/?opt3 x))
   :pattern ((test_crate!Y.State./State/opt3 x))
   :qid internal_test_crate!Y.State./State/opt3_accessor_definition
   :skolemid skolem_internal_test_crate!Y.State./State/opt3_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.State.)
    (has_type (Poly%core!option.Option. (test_crate!Y.State./State/opt3 (%Poly%test_crate!Y.State.
        x
      ))
     ) (TYPE%core!option.Option. $ INT)
   ))
   :pattern ((test_crate!Y.State./State/opt3 (%Poly%test_crate!Y.State. x)) (has_type
     x TYPE%test_crate!Y.State.
   ))
   :qid internal_test_crate!Y.State./State/opt3_invariant_definition
   :skolemid skolem_internal_test_crate!Y.State./State/opt3_invariant_definition
)))
(assert
 (forall ((x test_crate!Y.State.)) (!
   (= (test_crate!Y.State./State/opt4 x) (test_crate!Y.State./State/?opt4 x))
   :pattern ((test_crate!Y.State./State/opt4 x))
   :qid internal_test_crate!Y.State./State/opt4_accessor_definition
   :skolemid skolem_internal_test_crate!Y.State./State/opt4_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!Y.State.)
    (has_type (Poly%core!option.Option. (test_crate!Y.State./State/opt4 (%Poly%test_crate!Y.State.
        x
      ))
     ) (TYPE%core!option.Option. $ INT)
   ))
   :pattern ((test_crate!Y.State./State/opt4 (%Poly%test_crate!Y.State. x)) (has_type
     x TYPE%test_crate!Y.State.
   ))
   :qid internal_test_crate!Y.State./State/opt4_invariant_definition
   :skolemid skolem_internal_test_crate!Y.State./State/opt4_invariant_definition
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
(assert
 (forall ((x tuple%5.)) (!
   (= x (%Poly%tuple%5. (Poly%tuple%5. x)))
   :pattern ((Poly%tuple%5. x))
   :qid internal_crate__tuple__5_box_axiom_definition
   :skolemid skolem_internal_crate__tuple__5_box_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%5. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&))
    (= x (Poly%tuple%5. (%Poly%tuple%5. x)))
   )
   :pattern ((has_type x (TYPE%tuple%5. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&.
      T%4&
   )))
   :qid internal_crate__tuple__5_unbox_axiom_definition
   :skolemid skolem_internal_crate__tuple__5_unbox_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (_0! Poly) (_1! Poly) (_2! Poly) (_3! Poly)
   (_4! Poly)
  ) (!
   (=>
    (and
     (has_type _0! T%0&)
     (has_type _1! T%1&)
     (has_type _2! T%2&)
     (has_type _3! T%3&)
     (has_type _4! T%4&)
    )
    (has_type (Poly%tuple%5. (tuple%5./tuple%5 _0! _1! _2! _3! _4!)) (TYPE%tuple%5. T%0&.
      T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&
   )))
   :pattern ((has_type (Poly%tuple%5. (tuple%5./tuple%5 _0! _1! _2! _3! _4!)) (TYPE%tuple%5.
      T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&
   )))
   :qid internal_tuple__5./tuple__5_constructor_definition
   :skolemid skolem_internal_tuple__5./tuple__5_constructor_definition
)))
(assert
 (forall ((x tuple%5.)) (!
   (= (tuple%5./tuple%5/0 x) (tuple%5./tuple%5/?0 x))
   :pattern ((tuple%5./tuple%5/0 x))
   :qid internal_tuple__5./tuple__5/0_accessor_definition
   :skolemid skolem_internal_tuple__5./tuple__5/0_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%5. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&))
    (has_type (tuple%5./tuple%5/0 (%Poly%tuple%5. x)) T%0&)
   )
   :pattern ((tuple%5./tuple%5/0 (%Poly%tuple%5. x)) (has_type x (TYPE%tuple%5. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&
   )))
   :qid internal_tuple__5./tuple__5/0_invariant_definition
   :skolemid skolem_internal_tuple__5./tuple__5/0_invariant_definition
)))
(assert
 (forall ((x tuple%5.)) (!
   (= (tuple%5./tuple%5/1 x) (tuple%5./tuple%5/?1 x))
   :pattern ((tuple%5./tuple%5/1 x))
   :qid internal_tuple__5./tuple__5/1_accessor_definition
   :skolemid skolem_internal_tuple__5./tuple__5/1_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%5. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&))
    (has_type (tuple%5./tuple%5/1 (%Poly%tuple%5. x)) T%1&)
   )
   :pattern ((tuple%5./tuple%5/1 (%Poly%tuple%5. x)) (has_type x (TYPE%tuple%5. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&
   )))
   :qid internal_tuple__5./tuple__5/1_invariant_definition
   :skolemid skolem_internal_tuple__5./tuple__5/1_invariant_definition
)))
(assert
 (forall ((x tuple%5.)) (!
   (= (tuple%5./tuple%5/2 x) (tuple%5./tuple%5/?2 x))
   :pattern ((tuple%5./tuple%5/2 x))
   :qid internal_tuple__5./tuple__5/2_accessor_definition
   :skolemid skolem_internal_tuple__5./tuple__5/2_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%5. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&))
    (has_type (tuple%5./tuple%5/2 (%Poly%tuple%5. x)) T%2&)
   )
   :pattern ((tuple%5./tuple%5/2 (%Poly%tuple%5. x)) (has_type x (TYPE%tuple%5. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&
   )))
   :qid internal_tuple__5./tuple__5/2_invariant_definition
   :skolemid skolem_internal_tuple__5./tuple__5/2_invariant_definition
)))
(assert
 (forall ((x tuple%5.)) (!
   (= (tuple%5./tuple%5/3 x) (tuple%5./tuple%5/?3 x))
   :pattern ((tuple%5./tuple%5/3 x))
   :qid internal_tuple__5./tuple__5/3_accessor_definition
   :skolemid skolem_internal_tuple__5./tuple__5/3_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%5. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&))
    (has_type (tuple%5./tuple%5/3 (%Poly%tuple%5. x)) T%3&)
   )
   :pattern ((tuple%5./tuple%5/3 (%Poly%tuple%5. x)) (has_type x (TYPE%tuple%5. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&
   )))
   :qid internal_tuple__5./tuple__5/3_invariant_definition
   :skolemid skolem_internal_tuple__5./tuple__5/3_invariant_definition
)))
(assert
 (forall ((x tuple%5.)) (!
   (= (tuple%5./tuple%5/4 x) (tuple%5./tuple%5/?4 x))
   :pattern ((tuple%5./tuple%5/4 x))
   :qid internal_tuple__5./tuple__5/4_accessor_definition
   :skolemid skolem_internal_tuple__5./tuple__5/4_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%5. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&))
    (has_type (tuple%5./tuple%5/4 (%Poly%tuple%5. x)) T%4&)
   )
   :pattern ((tuple%5./tuple%5/4 (%Poly%tuple%5. x)) (has_type x (TYPE%tuple%5. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&
   )))
   :qid internal_tuple__5./tuple__5/4_invariant_definition
   :skolemid skolem_internal_tuple__5./tuple__5/4_invariant_definition
)))
(assert
 (forall ((x tuple%5.)) (!
   (=>
    (is-tuple%5./tuple%5 x)
    (height_lt (height (tuple%5./tuple%5/0 x)) (height (Poly%tuple%5. x)))
   )
   :pattern ((height (tuple%5./tuple%5/0 x)))
   :qid prelude_datatype_height_tuple%5./tuple%5/0
   :skolemid skolem_prelude_datatype_height_tuple%5./tuple%5/0
)))
(assert
 (forall ((x tuple%5.)) (!
   (=>
    (is-tuple%5./tuple%5 x)
    (height_lt (height (tuple%5./tuple%5/1 x)) (height (Poly%tuple%5. x)))
   )
   :pattern ((height (tuple%5./tuple%5/1 x)))
   :qid prelude_datatype_height_tuple%5./tuple%5/1
   :skolemid skolem_prelude_datatype_height_tuple%5./tuple%5/1
)))
(assert
 (forall ((x tuple%5.)) (!
   (=>
    (is-tuple%5./tuple%5 x)
    (height_lt (height (tuple%5./tuple%5/2 x)) (height (Poly%tuple%5. x)))
   )
   :pattern ((height (tuple%5./tuple%5/2 x)))
   :qid prelude_datatype_height_tuple%5./tuple%5/2
   :skolemid skolem_prelude_datatype_height_tuple%5./tuple%5/2
)))
(assert
 (forall ((x tuple%5.)) (!
   (=>
    (is-tuple%5./tuple%5 x)
    (height_lt (height (tuple%5./tuple%5/3 x)) (height (Poly%tuple%5. x)))
   )
   :pattern ((height (tuple%5./tuple%5/3 x)))
   :qid prelude_datatype_height_tuple%5./tuple%5/3
   :skolemid skolem_prelude_datatype_height_tuple%5./tuple%5/3
)))
(assert
 (forall ((x tuple%5.)) (!
   (=>
    (is-tuple%5./tuple%5 x)
    (height_lt (height (tuple%5./tuple%5/4 x)) (height (Poly%tuple%5. x)))
   )
   :pattern ((height (tuple%5./tuple%5/4 x)))
   :qid prelude_datatype_height_tuple%5./tuple%5/4
   :skolemid skolem_prelude_datatype_height_tuple%5./tuple%5/4
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (deep Bool) (x Poly) (y Poly)
  ) (!
   (=>
    (and
     (has_type x (TYPE%tuple%5. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&))
     (has_type y (TYPE%tuple%5. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&))
     (ext_eq deep T%0& (tuple%5./tuple%5/0 (%Poly%tuple%5. x)) (tuple%5./tuple%5/0 (%Poly%tuple%5.
        y
     )))
     (ext_eq deep T%1& (tuple%5./tuple%5/1 (%Poly%tuple%5. x)) (tuple%5./tuple%5/1 (%Poly%tuple%5.
        y
     )))
     (ext_eq deep T%2& (tuple%5./tuple%5/2 (%Poly%tuple%5. x)) (tuple%5./tuple%5/2 (%Poly%tuple%5.
        y
     )))
     (ext_eq deep T%3& (tuple%5./tuple%5/3 (%Poly%tuple%5. x)) (tuple%5./tuple%5/3 (%Poly%tuple%5.
        y
     )))
     (ext_eq deep T%4& (tuple%5./tuple%5/4 (%Poly%tuple%5. x)) (tuple%5./tuple%5/4 (%Poly%tuple%5.
        y
    ))))
    (ext_eq deep (TYPE%tuple%5. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&)
     x y
   ))
   :pattern ((ext_eq deep (TYPE%tuple%5. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&.
      T%4&
     ) x y
   ))
   :qid internal_tuple__5./tuple__5_ext_equal_definition
   :skolemid skolem_internal_tuple__5./tuple__5_ext_equal_definition
)))

;; Traits
(declare-fun tr_bound%vstd!tokens.ValueToken. (Dcr Type Dcr Type) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type)) (!
   true
   :pattern ((tr_bound%vstd!tokens.ValueToken. Self%&. Self%& Value&. Value&))
   :qid internal_vstd__tokens__ValueToken_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__tokens__ValueToken_trait_type_bounds_definition
)))

;; Function-Decl vstd::tokens::ValueToken::instance_id
(declare-fun vstd!tokens.ValueToken.instance_id.? (Dcr Type Dcr Type Poly) Poly)
(declare-fun vstd!tokens.ValueToken.instance_id%default%.? (Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl vstd::tokens::ValueToken::value
(declare-fun vstd!tokens.ValueToken.value.? (Dcr Type Dcr Type Poly) Poly)
(declare-fun vstd!tokens.ValueToken.value%default%.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl vstd::pervasive::arbitrary
(declare-fun vstd!pervasive.arbitrary.? (Dcr Type) Poly)

;; Function-Decl test_crate::Y::State::tr1
(declare-fun test_crate!Y.impl&%19.tr1.? (Poly Poly) Bool)

;; Function-Decl test_crate::Y::Instance::id
(declare-fun test_crate!Y.impl&%16.id.? (Poly) vstd!tokens.InstanceId.)

;; Function-Decl test_crate::Y::State::tr1_strong
(declare-fun test_crate!Y.impl&%19.tr1_strong.? (Poly Poly) Bool)

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

;; Function-Axioms vstd::tokens::ValueToken::instance_id
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd!tokens.ValueToken.instance_id.? Self%&. Self%& Value&. Value& self!)
     TYPE%vstd!tokens.InstanceId.
   ))
   :pattern ((vstd!tokens.ValueToken.instance_id.? Self%&. Self%& Value&. Value& self!))
   :qid internal_vstd!tokens.ValueToken.instance_id.?_pre_post_definition
   :skolemid skolem_internal_vstd!tokens.ValueToken.instance_id.?_pre_post_definition
)))

;; Function-Axioms vstd::tokens::ValueToken::value
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd!tokens.ValueToken.value.? Self%&. Self%& Value&. Value& self!) Value&)
   )
   :pattern ((vstd!tokens.ValueToken.value.? Self%&. Self%& Value&. Value& self!))
   :qid internal_vstd!tokens.ValueToken.value.?_pre_post_definition
   :skolemid skolem_internal_vstd!tokens.ValueToken.value.?_pre_post_definition
)))

;; Function-Axioms vstd::pervasive::arbitrary
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (has_type (vstd!pervasive.arbitrary.? A&. A&) A&)
   :pattern ((vstd!pervasive.arbitrary.? A&. A&))
   :qid internal_vstd!pervasive.arbitrary.?_pre_post_definition
   :skolemid skolem_internal_vstd!pervasive.arbitrary.?_pre_post_definition
)))

;; Function-Axioms test_crate::Y::State::tr1
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%19.tr1.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%19.tr1.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%19.tr1.? pre! post!) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_opt2$ (test_crate!Y.State./State/opt2 (%Poly%test_crate!Y.State. pre!))))
       (let
        ((update_tmp_opt4$ (test_crate!Y.State./State/opt4 (%Poly%test_crate!Y.State. pre!))))
        (and
         (let
          ((tmp_for_match_0$ (tuple%2./tuple%2 (Poly%core!option.Option. (test_crate!Y.State./State/opt1
               (%Poly%test_crate!Y.State. pre!)
              )
             ) (Poly%core!option.Option. (test_crate!Y.State./State/opt2 (%Poly%test_crate!Y.State.
                pre!
          ))))))
          (and
           (=>
            tmp_assert$
            (and
             (and
              (and
               (is-tuple%2./tuple%2 tmp_for_match_0$)
               (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                   (Poly%tuple%2. tmp_for_match_0$)
              )))))
              (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                  (Poly%tuple%2. tmp_for_match_0$)
             )))))
             (let
              ((x$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                     (Poly%tuple%2. tmp_for_match_0$)
              )))))))
              (let
               ((y$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                      (Poly%tuple%2. tmp_for_match_0$)
               )))))))
               true
           ))))
           (let
            ((tmp%%$ (ite
               (and
                (and
                 (is-tuple%2./tuple%2 tmp_for_match_0$)
                 (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                     (Poly%tuple%2. tmp_for_match_0$)
                )))))
                (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                    (Poly%tuple%2. tmp_for_match_0$)
               )))))
               (let
                ((x$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                       (Poly%tuple%2. tmp_for_match_0$)
                )))))))
                (let
                 ((y$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                        (Poly%tuple%2. tmp_for_match_0$)
                 )))))))
                 (tuple%2./tuple%2 (I x$) (I y$))
               ))
               (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ INT $ INT)))
            )))
            (let
             ((x$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
             (let
              ((y$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
              (let
               ((tmp_for_match_1$ (tuple%2./tuple%2 (Poly%core!option.Option. (test_crate!Y.State./State/opt3
                    (%Poly%test_crate!Y.State. pre!)
                   )
                  ) (Poly%core!option.Option. (test_crate!Y.State./State/opt4 (%Poly%test_crate!Y.State.
                     pre!
               ))))))
               (let
                ((tmp_assert$1 (and
                   tmp_assert$
                   (and
                    (and
                     (and
                      (is-tuple%2./tuple%2 tmp_for_match_1$)
                      (is-core!option.Option./None (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                          (Poly%tuple%2. tmp_for_match_1$)
                     )))))
                     (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                         (Poly%tuple%2. tmp_for_match_1$)
                    )))))
                    (let
                     ((z$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                            (Poly%tuple%2. tmp_for_match_1$)
                     )))))))
                     true
                )))))
                (let
                 ((z$ (ite
                    (and
                     (and
                      (is-tuple%2./tuple%2 tmp_for_match_1$)
                      (is-core!option.Option./None (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                          (Poly%tuple%2. tmp_for_match_1$)
                     )))))
                     (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                         (Poly%tuple%2. tmp_for_match_1$)
                    )))))
                    (let
                     ((z$2 (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                            (Poly%tuple%2. tmp_for_match_1$)
                     )))))))
                     z$2
                    )
                    (%I (vstd!pervasive.arbitrary.? $ INT))
                 )))
                 (let
                  ((tmp_assert$2 (and
                     tmp_assert$1
                     (= y$ z$)
                  )))
                  (let
                   ((update_tmp_opt1$ core!option.Option./None))
                   (let
                    ((update_tmp_opt3$ (core!option.Option./Some (I (Add (Add x$ y$) z$)))))
                    (and
                     (=>
                      tmp_assert$2
                      (= (test_crate!Y.State./State/opt3 (%Poly%test_crate!Y.State. post!)) update_tmp_opt3$)
                     )
                     (=>
                      tmp_assert$2
                      (= (test_crate!Y.State./State/opt1 (%Poly%test_crate!Y.State. post!)) update_tmp_opt1$)
         )))))))))))))
         (let
          ((tmp_assert$3 (let
             ((tmp_for_match_0$ (tuple%2./tuple%2 (Poly%core!option.Option. (test_crate!Y.State./State/opt1
                  (%Poly%test_crate!Y.State. pre!)
                 )
                ) (Poly%core!option.Option. (test_crate!Y.State./State/opt2 (%Poly%test_crate!Y.State.
                   pre!
             ))))))
             (let
              ((tmp_assert$4 (let
                 ((tmp%%$ (ite
                    (and
                     (and
                      (is-tuple%2./tuple%2 tmp_for_match_0$)
                      (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                          (Poly%tuple%2. tmp_for_match_0$)
                     )))))
                     (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                         (Poly%tuple%2. tmp_for_match_0$)
                    )))))
                    (let
                     ((x$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                            (Poly%tuple%2. tmp_for_match_0$)
                     )))))))
                     (let
                      ((y$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                             (Poly%tuple%2. tmp_for_match_0$)
                      )))))))
                      (tuple%2./tuple%2 (I x$) (I y$))
                    ))
                    (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ INT $ INT)))
                 )))
                 (let
                  ((x$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
                  (let
                   ((y$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
                   (let
                    ((tmp_assert$5 (let
                       ((tmp_for_match_1$ (tuple%2./tuple%2 (Poly%core!option.Option. (test_crate!Y.State./State/opt3
                            (%Poly%test_crate!Y.State. pre!)
                           )
                          ) (Poly%core!option.Option. (test_crate!Y.State./State/opt4 (%Poly%test_crate!Y.State.
                             pre!
                       ))))))
                       (let
                        ((tmp_assert$6 (and
                           tmp_assert$
                           (and
                            (and
                             (and
                              (is-tuple%2./tuple%2 tmp_for_match_1$)
                              (is-core!option.Option./None (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                                  (Poly%tuple%2. tmp_for_match_1$)
                             )))))
                             (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                                 (Poly%tuple%2. tmp_for_match_1$)
                            )))))
                            (let
                             ((z$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                                    (Poly%tuple%2. tmp_for_match_1$)
                             )))))))
                             true
                        )))))
                        (let
                         ((tmp_assert$7 (let
                            ((z$ (ite
                               (and
                                (and
                                 (is-tuple%2./tuple%2 tmp_for_match_1$)
                                 (is-core!option.Option./None (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                                     (Poly%tuple%2. tmp_for_match_1$)
                                )))))
                                (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                                    (Poly%tuple%2. tmp_for_match_1$)
                               )))))
                               (let
                                ((z$5 (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                                       (Poly%tuple%2. tmp_for_match_1$)
                                )))))))
                                z$5
                               )
                               (%I (vstd!pervasive.arbitrary.? $ INT))
                            )))
                            (let
                             ((tmp_assert$8 (and
                                tmp_assert$6
                                (= y$ z$)
                             )))
                             (let
                              ((update_tmp_opt1$ core!option.Option./None))
                              (let
                               ((update_tmp_opt3$ (core!option.Option./Some (I (Add (Add x$ y$) z$)))))
                               tmp_assert$8
                         ))))))
                         tmp_assert$7
                    )))))
                    tmp_assert$5
              ))))))
              tmp_assert$4
          ))))
          (and
           (=>
            tmp_assert$3
            (= (test_crate!Y.State./State/opt4 (%Poly%test_crate!Y.State. post!)) update_tmp_opt4$)
           )
           (=>
            tmp_assert$3
            (= (test_crate!Y.State./State/opt2 (%Poly%test_crate!Y.State. post!)) update_tmp_opt2$)
    ))))))))
    :pattern ((test_crate!Y.impl&%19.tr1.? pre! post!))
    :qid internal_test_crate!Y.impl&__19.tr1.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__19.tr1.?_definition
))))

;; Function-Axioms test_crate::Y::State::tr1_strong
(assert
 (fuel_bool_default fuel%test_crate!Y.impl&%19.tr1_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!Y.impl&%19.tr1_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!Y.impl&%19.tr1_strong.? pre! post!) (let
      ((update_tmp_opt2$ (test_crate!Y.State./State/opt2 (%Poly%test_crate!Y.State. pre!))))
      (let
       ((update_tmp_opt4$ (test_crate!Y.State./State/opt4 (%Poly%test_crate!Y.State. pre!))))
       (and
        (let
         ((tmp_for_match_0$ (tuple%2./tuple%2 (Poly%core!option.Option. (test_crate!Y.State./State/opt1
              (%Poly%test_crate!Y.State. pre!)
             )
            ) (Poly%core!option.Option. (test_crate!Y.State./State/opt2 (%Poly%test_crate!Y.State.
               pre!
         ))))))
         (and
          (and
           (and
            (and
             (is-tuple%2./tuple%2 tmp_for_match_0$)
             (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                 (Poly%tuple%2. tmp_for_match_0$)
            )))))
            (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                (Poly%tuple%2. tmp_for_match_0$)
           )))))
           (let
            ((x$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                   (Poly%tuple%2. tmp_for_match_0$)
            )))))))
            (let
             ((y$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                    (Poly%tuple%2. tmp_for_match_0$)
             )))))))
             true
          )))
          (let
           ((tmp%%$ (ite
              (and
               (and
                (is-tuple%2./tuple%2 tmp_for_match_0$)
                (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                    (Poly%tuple%2. tmp_for_match_0$)
               )))))
               (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                   (Poly%tuple%2. tmp_for_match_0$)
              )))))
              (let
               ((x$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                      (Poly%tuple%2. tmp_for_match_0$)
               )))))))
               (let
                ((y$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                       (Poly%tuple%2. tmp_for_match_0$)
                )))))))
                (tuple%2./tuple%2 (I x$) (I y$))
              ))
              (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ INT $ INT)))
           )))
           (let
            ((x$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
            (let
             ((y$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
             (let
              ((tmp_for_match_1$ (tuple%2./tuple%2 (Poly%core!option.Option. (test_crate!Y.State./State/opt3
                   (%Poly%test_crate!Y.State. pre!)
                  )
                 ) (Poly%core!option.Option. (test_crate!Y.State./State/opt4 (%Poly%test_crate!Y.State.
                    pre!
              ))))))
              (and
               (and
                (and
                 (and
                  (is-tuple%2./tuple%2 tmp_for_match_1$)
                  (is-core!option.Option./None (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                      (Poly%tuple%2. tmp_for_match_1$)
                 )))))
                 (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                     (Poly%tuple%2. tmp_for_match_1$)
                )))))
                (let
                 ((z$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                        (Poly%tuple%2. tmp_for_match_1$)
                 )))))))
                 true
               ))
               (let
                ((z$ (ite
                   (and
                    (and
                     (is-tuple%2./tuple%2 tmp_for_match_1$)
                     (is-core!option.Option./None (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                         (Poly%tuple%2. tmp_for_match_1$)
                    )))))
                    (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                        (Poly%tuple%2. tmp_for_match_1$)
                   )))))
                   (let
                    ((z$2 (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                           (Poly%tuple%2. tmp_for_match_1$)
                    )))))))
                    z$2
                   )
                   (%I (vstd!pervasive.arbitrary.? $ INT))
                )))
                (and
                 (= y$ z$)
                 (let
                  ((update_tmp_opt1$ core!option.Option./None))
                  (let
                   ((update_tmp_opt3$ (core!option.Option./Some (I (Add (Add x$ y$) z$)))))
                   (and
                    (= (test_crate!Y.State./State/opt3 (%Poly%test_crate!Y.State. post!)) update_tmp_opt3$)
                    (= (test_crate!Y.State./State/opt1 (%Poly%test_crate!Y.State. post!)) update_tmp_opt1$)
        ))))))))))))
        (and
         (= (test_crate!Y.State./State/opt4 (%Poly%test_crate!Y.State. post!)) update_tmp_opt4$)
         (= (test_crate!Y.State./State/opt2 (%Poly%test_crate!Y.State. post!)) update_tmp_opt2$)
    )))))
    :pattern ((test_crate!Y.impl&%19.tr1_strong.? pre! post!))
    :qid internal_test_crate!Y.impl&__19.tr1_strong.?_definition
    :skolemid skolem_internal_test_crate!Y.impl&__19.tr1_strong.?_definition
))))

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
    (= (test_crate!rel_tr1.? pre! post!) (let
      ((tmp%%$ (tuple%2./tuple%2 (Poly%core!option.Option. (test_crate!Y.State./State/opt1 (
            %Poly%test_crate!Y.State. pre!
          ))
         ) (Poly%core!option.Option. (test_crate!Y.State./State/opt2 (%Poly%test_crate!Y.State.
            pre!
      ))))))
      (and
       (and
        (and
         (is-tuple%2./tuple%2 tmp%%$)
         (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
             (Poly%tuple%2. tmp%%$)
        )))))
        (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
            (Poly%tuple%2. tmp%%$)
       )))))
       (let
        ((x$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
               (Poly%tuple%2. tmp%%$)
        )))))))
        (let
         ((y$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                (Poly%tuple%2. tmp%%$)
         )))))))
         (let
          ((tmp%%$1 (tuple%2./tuple%2 (Poly%core!option.Option. (test_crate!Y.State./State/opt3
               (%Poly%test_crate!Y.State. pre!)
              )
             ) (Poly%core!option.Option. (test_crate!Y.State./State/opt4 (%Poly%test_crate!Y.State.
                pre!
          ))))))
          (=>
           (and
            (and
             (is-tuple%2./tuple%2 tmp%%$1)
             (is-core!option.Option./None (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                 (Poly%tuple%2. tmp%%$1)
            )))))
            (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                (Poly%tuple%2. tmp%%$1)
           )))))
           (let
            ((z$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                   (Poly%tuple%2. tmp%%$1)
            )))))))
            (=>
             (= y$ z$)
             (and
              (and
               (and
                (= (test_crate!Y.State./State/opt1 (%Poly%test_crate!Y.State. post!)) core!option.Option./None)
                (= (test_crate!Y.State./State/opt2 (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/opt2
                  (%Poly%test_crate!Y.State. pre!)
               )))
               (= (test_crate!Y.State./State/opt3 (%Poly%test_crate!Y.State. post!)) (core!option.Option./Some
                 (I (Add (Add x$ y$) z$))
              )))
              (= (test_crate!Y.State./State/opt4 (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/opt4
                (%Poly%test_crate!Y.State. pre!)
    ))))))))))))
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
    (= (test_crate!rel_tr1_strong.? pre! post!) (let
      ((tmp%%$ (tuple%2./tuple%2 (Poly%core!option.Option. (test_crate!Y.State./State/opt1 (
            %Poly%test_crate!Y.State. pre!
          ))
         ) (Poly%core!option.Option. (test_crate!Y.State./State/opt2 (%Poly%test_crate!Y.State.
            pre!
      ))))))
      (and
       (and
        (and
         (is-tuple%2./tuple%2 tmp%%$)
         (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
             (Poly%tuple%2. tmp%%$)
        )))))
        (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
            (Poly%tuple%2. tmp%%$)
       )))))
       (let
        ((x$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
               (Poly%tuple%2. tmp%%$)
        )))))))
        (let
         ((y$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                (Poly%tuple%2. tmp%%$)
         )))))))
         (let
          ((tmp%%$1 (tuple%2./tuple%2 (Poly%core!option.Option. (test_crate!Y.State./State/opt3
               (%Poly%test_crate!Y.State. pre!)
              )
             ) (Poly%core!option.Option. (test_crate!Y.State./State/opt4 (%Poly%test_crate!Y.State.
                pre!
          ))))))
          (and
           (and
            (and
             (is-tuple%2./tuple%2 tmp%%$1)
             (is-core!option.Option./None (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                 (Poly%tuple%2. tmp%%$1)
            )))))
            (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                (Poly%tuple%2. tmp%%$1)
           )))))
           (let
            ((z$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                   (Poly%tuple%2. tmp%%$1)
            )))))))
            (and
             (and
              (and
               (and
                (= y$ z$)
                (= (test_crate!Y.State./State/opt1 (%Poly%test_crate!Y.State. post!)) core!option.Option./None)
               )
               (= (test_crate!Y.State./State/opt2 (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/opt2
                 (%Poly%test_crate!Y.State. pre!)
              )))
              (= (test_crate!Y.State./State/opt3 (%Poly%test_crate!Y.State. post!)) (core!option.Option./Some
                (I (Add (Add x$ y$) z$))
             )))
             (= (test_crate!Y.State./State/opt4 (%Poly%test_crate!Y.State. post!)) (test_crate!Y.State./State/opt4
               (%Poly%test_crate!Y.State. pre!)
    )))))))))))
    :pattern ((test_crate!rel_tr1_strong.? pre! post!))
    :qid internal_test_crate!rel_tr1_strong.?_definition
    :skolemid skolem_internal_test_crate!rel_tr1_strong.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!tokens.ValueToken. $ TYPE%test_crate!Y.opt1. $ (TYPE%core!option.Option.
   $ INT
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!tokens.ValueToken. $ TYPE%test_crate!Y.opt2. $ (TYPE%core!option.Option.
   $ INT
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!tokens.ValueToken. $ TYPE%test_crate!Y.opt3. $ (TYPE%core!option.Option.
   $ INT
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd!tokens.ValueToken. $ TYPE%test_crate!Y.opt4. $ (TYPE%core!option.Option.
   $ INT
)))

;; Function-Specs test_crate::Y::Instance::initialize
(declare-fun ens%test_crate!Y.impl&%16.initialize. (Int tuple%5.) Bool)
(assert
 (forall ((no%param Int) (tmp_tuple! tuple%5.)) (!
   (= (ens%test_crate!Y.impl&%16.initialize. no%param tmp_tuple!) (and
     (has_type (Poly%tuple%5. tmp_tuple!) (TYPE%tuple%5. (TRACKED $) TYPE%test_crate!Y.Instance.
       (TRACKED $) TYPE%test_crate!Y.opt1. (TRACKED $) TYPE%test_crate!Y.opt2. (TRACKED $)
       TYPE%test_crate!Y.opt3. (TRACKED $) TYPE%test_crate!Y.opt4.
     ))
     (let
      ((instance$ (%Poly%test_crate!Y.Instance. (tuple%5./tuple%5/0 (%Poly%tuple%5. (Poly%tuple%5.
            tmp_tuple!
      ))))))
      (let
       ((param_token_opt1$ (%Poly%test_crate!Y.opt1. (tuple%5./tuple%5/1 (%Poly%tuple%5. (Poly%tuple%5.
             tmp_tuple!
       ))))))
       (let
        ((param_token_opt2$ (%Poly%test_crate!Y.opt2. (tuple%5./tuple%5/2 (%Poly%tuple%5. (Poly%tuple%5.
              tmp_tuple!
        ))))))
        (let
         ((param_token_opt3$ (%Poly%test_crate!Y.opt3. (tuple%5./tuple%5/3 (%Poly%tuple%5. (Poly%tuple%5.
               tmp_tuple!
         ))))))
         (let
          ((param_token_opt4$ (%Poly%test_crate!Y.opt4. (tuple%5./tuple%5/4 (%Poly%tuple%5. (Poly%tuple%5.
                tmp_tuple!
          ))))))
          (let
           ((instance$1 instance$))
           (let
            ((param_token_opt1$1 param_token_opt1$))
            (let
             ((param_token_opt2$1 param_token_opt2$))
             (let
              ((param_token_opt3$1 param_token_opt3$))
              (let
               ((param_token_opt4$1 param_token_opt4$))
               (and
                (and
                 (and
                  (and
                   (and
                    (and
                     (and
                      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt1.
                         $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt1. param_token_opt1$1)
                        )
                       ) (test_crate!Y.impl&%16.id.? (Poly%test_crate!Y.Instance. instance$1))
                      )
                      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt2.
                         $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt2. param_token_opt2$1)
                        )
                       ) (test_crate!Y.impl&%16.id.? (Poly%test_crate!Y.Instance. instance$1))
                     ))
                     (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt3.
                        $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt3. param_token_opt3$1)
                       )
                      ) (test_crate!Y.impl&%16.id.? (Poly%test_crate!Y.Instance. instance$1))
                    ))
                    (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt4.
                       $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt4. param_token_opt4$1)
                      )
                     ) (test_crate!Y.impl&%16.id.? (Poly%test_crate!Y.Instance. instance$1))
                   ))
                   (= (%Poly%core!option.Option. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt1.
                      $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt1. param_token_opt1$1)
                     )
                    ) (core!option.Option./Some (I 0))
                  ))
                  (= (%Poly%core!option.Option. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt2.
                     $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt2. param_token_opt2$1)
                    )
                   ) (core!option.Option./Some (I 5))
                 ))
                 (= (%Poly%core!option.Option. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt3.
                    $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt3. param_token_opt3$1)
                   )
                  ) core!option.Option./None
                ))
                (= (%Poly%core!option.Option. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt4.
                   $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt4. param_token_opt4$1)
                  )
                 ) (core!option.Option./Some (I 5))
   ))))))))))))))
   :pattern ((ens%test_crate!Y.impl&%16.initialize. no%param tmp_tuple!))
   :qid internal_ens__test_crate!Y.impl&__16.initialize._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__16.initialize._definition
)))

;; Function-Specs test_crate::Y::Instance::tr1
(declare-fun req%test_crate!Y.impl&%16.tr1. (test_crate!Y.Instance. test_crate!Y.opt1.
  test_crate!Y.opt2. test_crate!Y.opt3. test_crate!Y.opt4.
 ) Bool
)
(declare-const %%global_location_label%%0 Bool)
(declare-const %%global_location_label%%1 Bool)
(declare-const %%global_location_label%%2 Bool)
(declare-const %%global_location_label%%3 Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((self! test_crate!Y.Instance.) (pre%param_token_opt1! test_crate!Y.opt1.)
   (param_token_opt2! test_crate!Y.opt2.) (pre%param_token_opt3! test_crate!Y.opt3.)
   (param_token_opt4! test_crate!Y.opt4.)
  ) (!
   (= (req%test_crate!Y.impl&%16.tr1. self! pre%param_token_opt1! param_token_opt2! pre%param_token_opt3!
     param_token_opt4!
    ) (and
     (=>
      %%global_location_label%%0
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt1.
         $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt1. pre%param_token_opt1!)
        )
       ) (test_crate!Y.impl&%16.id.? (Poly%test_crate!Y.Instance. self!))
     ))
     (=>
      %%global_location_label%%1
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt2.
         $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt2. param_token_opt2!)
        )
       ) (test_crate!Y.impl&%16.id.? (Poly%test_crate!Y.Instance. self!))
     ))
     (=>
      %%global_location_label%%2
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt3.
         $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt3. pre%param_token_opt3!)
        )
       ) (test_crate!Y.impl&%16.id.? (Poly%test_crate!Y.Instance. self!))
     ))
     (=>
      %%global_location_label%%3
      (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt4.
         $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt4. param_token_opt4!)
        )
       ) (test_crate!Y.impl&%16.id.? (Poly%test_crate!Y.Instance. self!))
     ))
     (=>
      %%global_location_label%%4
      (let
       ((tmp_for_match_0$ (tuple%2./tuple%2 (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt1.
           $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt1. pre%param_token_opt1!)
          ) (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt2. $ (TYPE%core!option.Option.
            $ INT
           ) (Poly%test_crate!Y.opt2. param_token_opt2!)
       ))))
       (and
        (and
         (and
          (is-tuple%2./tuple%2 tmp_for_match_0$)
          (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
              (Poly%tuple%2. tmp_for_match_0$)
         )))))
         (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
             (Poly%tuple%2. tmp_for_match_0$)
        )))))
        (let
         ((x$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                (Poly%tuple%2. tmp_for_match_0$)
         )))))))
         (let
          ((y$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                 (Poly%tuple%2. tmp_for_match_0$)
          )))))))
          true
   )))))))
   :pattern ((req%test_crate!Y.impl&%16.tr1. self! pre%param_token_opt1! param_token_opt2!
     pre%param_token_opt3! param_token_opt4!
   ))
   :qid internal_req__test_crate!Y.impl&__16.tr1._definition
   :skolemid skolem_internal_req__test_crate!Y.impl&__16.tr1._definition
)))
(declare-fun ens%test_crate!Y.impl&%16.tr1. (test_crate!Y.Instance. test_crate!Y.opt1.
  test_crate!Y.opt1. test_crate!Y.opt2. test_crate!Y.opt3. test_crate!Y.opt3. test_crate!Y.opt4.
 ) Bool
)
(assert
 (forall ((self! test_crate!Y.Instance.) (pre%param_token_opt1! test_crate!Y.opt1.)
   (param_token_opt1! test_crate!Y.opt1.) (param_token_opt2! test_crate!Y.opt2.) (pre%param_token_opt3!
    test_crate!Y.opt3.
   ) (param_token_opt3! test_crate!Y.opt3.) (param_token_opt4! test_crate!Y.opt4.)
  ) (!
   (= (ens%test_crate!Y.impl&%16.tr1. self! pre%param_token_opt1! param_token_opt1! param_token_opt2!
     pre%param_token_opt3! param_token_opt3! param_token_opt4!
    ) (and
     (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt1.
        $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt1. param_token_opt1!)
       )
      ) (test_crate!Y.impl&%16.id.? (Poly%test_crate!Y.Instance. self!))
     )
     (= (%Poly%vstd!tokens.InstanceId. (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt3.
        $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt3. param_token_opt3!)
       )
      ) (test_crate!Y.impl&%16.id.? (Poly%test_crate!Y.Instance. self!))
     )
     (let
      ((tmp_for_match_0$ (tuple%2./tuple%2 (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt1.
          $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt1. pre%param_token_opt1!)
         ) (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt2. $ (TYPE%core!option.Option.
           $ INT
          ) (Poly%test_crate!Y.opt2. param_token_opt2!)
      ))))
      (let
       ((tmp%%$ (ite
          (and
           (and
            (is-tuple%2./tuple%2 tmp_for_match_0$)
            (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                (Poly%tuple%2. tmp_for_match_0$)
           )))))
           (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
               (Poly%tuple%2. tmp_for_match_0$)
          )))))
          (let
           ((x$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                  (Poly%tuple%2. tmp_for_match_0$)
           )))))))
           (let
            ((y$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                   (Poly%tuple%2. tmp_for_match_0$)
            )))))))
            (tuple%2./tuple%2 (I x$) (I y$))
          ))
          (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ INT $ INT)))
       )))
       (let
        ((x$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
        (let
         ((y$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
         (let
          ((tmp_for_match_1$ (tuple%2./tuple%2 (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt3.
              $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt3. pre%param_token_opt3!)
             ) (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt4. $ (TYPE%core!option.Option.
               $ INT
              ) (Poly%test_crate!Y.opt4. param_token_opt4!)
          ))))
          (and
           (and
            (and
             (is-tuple%2./tuple%2 tmp_for_match_1$)
             (is-core!option.Option./None (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                 (Poly%tuple%2. tmp_for_match_1$)
            )))))
            (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                (Poly%tuple%2. tmp_for_match_1$)
           )))))
           (let
            ((z$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                   (Poly%tuple%2. tmp_for_match_1$)
            )))))))
            true
     )))))))
     (let
      ((tmp_for_match_0$ (tuple%2./tuple%2 (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt1.
          $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt1. pre%param_token_opt1!)
         ) (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt2. $ (TYPE%core!option.Option.
           $ INT
          ) (Poly%test_crate!Y.opt2. param_token_opt2!)
      ))))
      (let
       ((tmp%%$ (ite
          (and
           (and
            (is-tuple%2./tuple%2 tmp_for_match_0$)
            (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                (Poly%tuple%2. tmp_for_match_0$)
           )))))
           (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
               (Poly%tuple%2. tmp_for_match_0$)
          )))))
          (let
           ((x$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                  (Poly%tuple%2. tmp_for_match_0$)
           )))))))
           (let
            ((y$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                   (Poly%tuple%2. tmp_for_match_0$)
            )))))))
            (tuple%2./tuple%2 (I x$) (I y$))
          ))
          (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ INT $ INT)))
       )))
       (let
        ((x$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
        (let
         ((y$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
         (let
          ((tmp_for_match_1$ (tuple%2./tuple%2 (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt3.
              $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt3. pre%param_token_opt3!)
             ) (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt4. $ (TYPE%core!option.Option.
               $ INT
              ) (Poly%test_crate!Y.opt4. param_token_opt4!)
          ))))
          (let
           ((z$ (ite
              (and
               (and
                (is-tuple%2./tuple%2 tmp_for_match_1$)
                (is-core!option.Option./None (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                    (Poly%tuple%2. tmp_for_match_1$)
               )))))
               (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                   (Poly%tuple%2. tmp_for_match_1$)
              )))))
              (let
               ((z$1 (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                      (Poly%tuple%2. tmp_for_match_1$)
               )))))))
               z$1
              )
              (%I (vstd!pervasive.arbitrary.? $ INT))
           )))
           (= y$ z$)
     ))))))
     (= (%Poly%core!option.Option. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt1.
        $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt1. param_token_opt1!)
       )
      ) (let
       ((tmp_for_match_0$ (tuple%2./tuple%2 (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt1.
           $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt1. pre%param_token_opt1!)
          ) (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt2. $ (TYPE%core!option.Option.
            $ INT
           ) (Poly%test_crate!Y.opt2. param_token_opt2!)
       ))))
       (let
        ((tmp%%$ (ite
           (and
            (and
             (is-tuple%2./tuple%2 tmp_for_match_0$)
             (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                 (Poly%tuple%2. tmp_for_match_0$)
            )))))
            (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                (Poly%tuple%2. tmp_for_match_0$)
           )))))
           (let
            ((x$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                   (Poly%tuple%2. tmp_for_match_0$)
            )))))))
            (let
             ((y$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                    (Poly%tuple%2. tmp_for_match_0$)
             )))))))
             (tuple%2./tuple%2 (I x$) (I y$))
           ))
           (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ INT $ INT)))
        )))
        (let
         ((x$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
         (let
          ((y$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
          (let
           ((tmp_for_match_1$ (tuple%2./tuple%2 (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt3.
               $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt3. pre%param_token_opt3!)
              ) (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt4. $ (TYPE%core!option.Option.
                $ INT
               ) (Poly%test_crate!Y.opt4. param_token_opt4!)
           ))))
           (let
            ((z$ (ite
               (and
                (and
                 (is-tuple%2./tuple%2 tmp_for_match_1$)
                 (is-core!option.Option./None (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                     (Poly%tuple%2. tmp_for_match_1$)
                )))))
                (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                    (Poly%tuple%2. tmp_for_match_1$)
               )))))
               (let
                ((z$1 (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                       (Poly%tuple%2. tmp_for_match_1$)
                )))))))
                z$1
               )
               (%I (vstd!pervasive.arbitrary.? $ INT))
            )))
            core!option.Option./None
     )))))))
     (= (%Poly%core!option.Option. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt3.
        $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt3. param_token_opt3!)
       )
      ) (let
       ((tmp_for_match_0$ (tuple%2./tuple%2 (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt1.
           $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt1. pre%param_token_opt1!)
          ) (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt2. $ (TYPE%core!option.Option.
            $ INT
           ) (Poly%test_crate!Y.opt2. param_token_opt2!)
       ))))
       (let
        ((tmp%%$ (ite
           (and
            (and
             (is-tuple%2./tuple%2 tmp_for_match_0$)
             (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                 (Poly%tuple%2. tmp_for_match_0$)
            )))))
            (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                (Poly%tuple%2. tmp_for_match_0$)
           )))))
           (let
            ((x$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                   (Poly%tuple%2. tmp_for_match_0$)
            )))))))
            (let
             ((y$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                    (Poly%tuple%2. tmp_for_match_0$)
             )))))))
             (tuple%2./tuple%2 (I x$) (I y$))
           ))
           (%Poly%tuple%2. (vstd!pervasive.arbitrary.? $ (TYPE%tuple%2. $ INT $ INT)))
        )))
        (let
         ((x$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
         (let
          ((y$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%$))))))
          (let
           ((tmp_for_match_1$ (tuple%2./tuple%2 (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt3.
               $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt3. pre%param_token_opt3!)
              ) (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt4. $ (TYPE%core!option.Option.
                $ INT
               ) (Poly%test_crate!Y.opt4. param_token_opt4!)
           ))))
           (let
            ((z$ (ite
               (and
                (and
                 (is-tuple%2./tuple%2 tmp_for_match_1$)
                 (is-core!option.Option./None (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
                     (Poly%tuple%2. tmp_for_match_1$)
                )))))
                (is-core!option.Option./Some (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                    (Poly%tuple%2. tmp_for_match_1$)
               )))))
               (let
                ((z$1 (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (tuple%2./tuple%2/1 (%Poly%tuple%2.
                       (Poly%tuple%2. tmp_for_match_1$)
                )))))))
                z$1
               )
               (%I (vstd!pervasive.arbitrary.? $ INT))
            )))
            (core!option.Option./Some (I (Add (Add x$ y$) z$)))
   )))))))))
   :pattern ((ens%test_crate!Y.impl&%16.tr1. self! pre%param_token_opt1! param_token_opt1!
     param_token_opt2! pre%param_token_opt3! param_token_opt3! param_token_opt4!
   ))
   :qid internal_ens__test_crate!Y.impl&__16.tr1._definition
   :skolemid skolem_internal_ens__test_crate!Y.impl&__16.tr1._definition
)))

;; Function-Specs test_crate::correct_tr1
(declare-fun req%test_crate!correct_tr1. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (req%test_crate!correct_tr1. pre! post!) (=>
     %%global_location_label%%5
     (test_crate!Y.impl&%19.tr1.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
   ))))
   :pattern ((req%test_crate!correct_tr1. pre! post!))
   :qid internal_req__test_crate!correct_tr1._definition
   :skolemid skolem_internal_req__test_crate!correct_tr1._definition
)))
(declare-fun ens%test_crate!correct_tr1. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!correct_tr1. pre! post!) (test_crate!rel_tr1.? (Poly%test_crate!Y.State.
      pre!
     ) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!correct_tr1. pre! post!))
   :qid internal_ens__test_crate!correct_tr1._definition
   :skolemid skolem_internal_ens__test_crate!correct_tr1._definition
)))

;; Function-Def test_crate::correct_tr1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-assert_require_let_codegen/test.rs:135:7: 135:52 (#0)
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
 (assert
  (test_crate!Y.impl&%19.tr1.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
    post!
 )))
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (test_crate!rel_tr1.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::rev_tr1
(declare-fun req%test_crate!rev_tr1. (test_crate!Y.State. test_crate!Y.State.) Bool)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (req%test_crate!rev_tr1. pre! post!) (=>
     %%global_location_label%%6
     (test_crate!rel_tr1.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
   ))
   :pattern ((req%test_crate!rev_tr1. pre! post!))
   :qid internal_req__test_crate!rev_tr1._definition
   :skolemid skolem_internal_req__test_crate!rev_tr1._definition
)))
(declare-fun ens%test_crate!rev_tr1. (test_crate!Y.State. test_crate!Y.State.) Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!rev_tr1. pre! post!) (test_crate!Y.impl&%19.tr1.? (Poly%test_crate!Y.State.
      pre!
     ) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!rev_tr1. pre! post!))
   :qid internal_ens__test_crate!rev_tr1._definition
   :skolemid skolem_internal_ens__test_crate!rev_tr1._definition
)))

;; Function-Def test_crate::rev_tr1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-assert_require_let_codegen/test.rs:140:7: 140:48 (#0)
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
 (assert
  (test_crate!rel_tr1.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!))
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (test_crate!Y.impl&%19.tr1.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
      post!
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::correct_tr1_strong
(declare-fun req%test_crate!correct_tr1_strong. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(declare-const %%global_location_label%%7 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (req%test_crate!correct_tr1_strong. pre! post!) (=>
     %%global_location_label%%7
     (test_crate!Y.impl&%19.tr1_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
   ))))
   :pattern ((req%test_crate!correct_tr1_strong. pre! post!))
   :qid internal_req__test_crate!correct_tr1_strong._definition
   :skolemid skolem_internal_req__test_crate!correct_tr1_strong._definition
)))
(declare-fun ens%test_crate!correct_tr1_strong. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!correct_tr1_strong. pre! post!) (test_crate!rel_tr1_strong.? (Poly%test_crate!Y.State.
      pre!
     ) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!correct_tr1_strong. pre! post!))
   :qid internal_ens__test_crate!correct_tr1_strong._definition
   :skolemid skolem_internal_ens__test_crate!correct_tr1_strong._definition
)))

;; Function-Def test_crate::correct_tr1_strong
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-assert_require_let_codegen/test.rs:145:7: 145:59 (#0)
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
 (assert
  (test_crate!Y.impl&%19.tr1_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
    post!
 )))
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (test_crate!rel_tr1_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
      post!
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::rev_tr1_strong
(declare-fun req%test_crate!rev_tr1_strong. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (req%test_crate!rev_tr1_strong. pre! post!) (=>
     %%global_location_label%%8
     (test_crate!rel_tr1_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
       post!
   ))))
   :pattern ((req%test_crate!rev_tr1_strong. pre! post!))
   :qid internal_req__test_crate!rev_tr1_strong._definition
   :skolemid skolem_internal_req__test_crate!rev_tr1_strong._definition
)))
(declare-fun ens%test_crate!rev_tr1_strong. (test_crate!Y.State. test_crate!Y.State.)
 Bool
)
(assert
 (forall ((pre! test_crate!Y.State.) (post! test_crate!Y.State.)) (!
   (= (ens%test_crate!rev_tr1_strong. pre! post!) (test_crate!Y.impl&%19.tr1_strong.?
     (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State. post!)
   ))
   :pattern ((ens%test_crate!rev_tr1_strong. pre! post!))
   :qid internal_ens__test_crate!rev_tr1_strong._definition
   :skolemid skolem_internal_ens__test_crate!rev_tr1_strong._definition
)))

;; Function-Def test_crate::rev_tr1_strong
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-assert_require_let_codegen/test.rs:150:7: 150:55 (#0)
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
 (assert
  (test_crate!rel_tr1_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
    post!
 )))
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (test_crate!Y.impl&%19.tr1_strong.? (Poly%test_crate!Y.State. pre!) (Poly%test_crate!Y.State.
      post!
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::test_transition
(declare-fun req%test_crate!test_transition. (test_crate!Y.Instance. test_crate!Y.opt1.
  test_crate!Y.opt2. test_crate!Y.opt3. test_crate!Y.opt4.
 ) Bool
)
(declare-const %%global_location_label%%9 Bool)
(declare-const %%global_location_label%%10 Bool)
(declare-const %%global_location_label%%11 Bool)
(declare-const %%global_location_label%%12 Bool)
(declare-const %%global_location_label%%13 Bool)
(declare-const %%global_location_label%%14 Bool)
(assert
 (forall ((inst! test_crate!Y.Instance.) (t1! test_crate!Y.opt1.) (t2! test_crate!Y.opt2.)
   (t3! test_crate!Y.opt3.) (t4! test_crate!Y.opt4.)
  ) (!
   (= (req%test_crate!test_transition. inst! t1! t2! t3! t4!) (and
     (=>
      %%global_location_label%%9
      (= (test_crate!Y.impl&%16.id.? (Poly%test_crate!Y.Instance. inst!)) (%Poly%vstd!tokens.InstanceId.
        (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt1. $ (TYPE%core!option.Option.
          $ INT
         ) (Poly%test_crate!Y.opt1. t1!)
     ))))
     (=>
      %%global_location_label%%10
      (= (test_crate!Y.impl&%16.id.? (Poly%test_crate!Y.Instance. inst!)) (%Poly%vstd!tokens.InstanceId.
        (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt2. $ (TYPE%core!option.Option.
          $ INT
         ) (Poly%test_crate!Y.opt2. t2!)
     ))))
     (=>
      %%global_location_label%%11
      (= (test_crate!Y.impl&%16.id.? (Poly%test_crate!Y.Instance. inst!)) (%Poly%vstd!tokens.InstanceId.
        (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt3. $ (TYPE%core!option.Option.
          $ INT
         ) (Poly%test_crate!Y.opt3. t3!)
     ))))
     (=>
      %%global_location_label%%12
      (= (test_crate!Y.impl&%16.id.? (Poly%test_crate!Y.Instance. inst!)) (%Poly%vstd!tokens.InstanceId.
        (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt4. $ (TYPE%core!option.Option.
          $ INT
         ) (Poly%test_crate!Y.opt4. t4!)
     ))))
     (=>
      %%global_location_label%%13
      (= (%Poly%core!option.Option. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt1.
         $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt1. t1!)
        )
       ) (core!option.Option./Some (I 0))
     ))
     (=>
      %%global_location_label%%14
      (= (%Poly%core!option.Option. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt2.
         $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt2. t2!)
        )
       ) (core!option.Option./Some (I 5))
   ))))
   :pattern ((req%test_crate!test_transition. inst! t1! t2! t3! t4!))
   :qid internal_req__test_crate!test_transition._definition
   :skolemid skolem_internal_req__test_crate!test_transition._definition
)))

;; Function-Def test_crate::test_transition
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-assert_require_let_codegen/test.rs:155:7: 161:2 (#0)
(get-info :all-statistics)
(push)
 (declare-const inst! test_crate!Y.Instance.)
 (declare-const t1! test_crate!Y.opt1.)
 (declare-const t2! test_crate!Y.opt2.)
 (declare-const t3! test_crate!Y.opt3.)
 (declare-const t4! test_crate!Y.opt4.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const old_t1@ test_crate!Y.opt1.)
 (declare-const old_t3@ test_crate!Y.opt3.)
 (declare-const t1@0 test_crate!Y.opt1.)
 (declare-const t3@0 test_crate!Y.opt3.)
 (assert
  fuel_defaults
 )
 (assert
  (= (test_crate!Y.impl&%16.id.? (Poly%test_crate!Y.Instance. inst!)) (%Poly%vstd!tokens.InstanceId.
    (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt1. $ (TYPE%core!option.Option.
      $ INT
     ) (Poly%test_crate!Y.opt1. t1!)
 ))))
 (assert
  (= (test_crate!Y.impl&%16.id.? (Poly%test_crate!Y.Instance. inst!)) (%Poly%vstd!tokens.InstanceId.
    (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt2. $ (TYPE%core!option.Option.
      $ INT
     ) (Poly%test_crate!Y.opt2. t2!)
 ))))
 (assert
  (= (test_crate!Y.impl&%16.id.? (Poly%test_crate!Y.Instance. inst!)) (%Poly%vstd!tokens.InstanceId.
    (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt3. $ (TYPE%core!option.Option.
      $ INT
     ) (Poly%test_crate!Y.opt3. t3!)
 ))))
 (assert
  (= (test_crate!Y.impl&%16.id.? (Poly%test_crate!Y.Instance. inst!)) (%Poly%vstd!tokens.InstanceId.
    (vstd!tokens.ValueToken.instance_id.? $ TYPE%test_crate!Y.opt4. $ (TYPE%core!option.Option.
      $ INT
     ) (Poly%test_crate!Y.opt4. t4!)
 ))))
 (assert
  (= (%Poly%core!option.Option. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt1.
     $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt1. t1!)
    )
   ) (core!option.Option./Some (I 0))
 ))
 (assert
  (= (%Poly%core!option.Option. (vstd!tokens.ValueToken.value.? $ TYPE%test_crate!Y.opt2.
     $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt2. t2!)
    )
   ) (core!option.Option./Some (I 5))
 ))
 (declare-const t1@1 test_crate!Y.opt1.)
 (declare-const t3@1 test_crate!Y.opt3.)
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
 (assert
  (not (=>
    (= old_t1@ t1!)
    (=>
     (= old_t3@ t3!)
     (=>
      (= t1@0 t1!)
      (=>
       (= t3@0 t3!)
       (and
        (=>
         %%location_label%%0
         (req%test_crate!Y.impl&%16.tr1. inst! t1@0 t2! t3@0 t4!)
        )
        (=>
         (ens%test_crate!Y.impl&%16.tr1. inst! t1@0 t1@1 t2! t3@0 t3@1 t4!)
         (=>
          (= tmp%1 (ext_eq false (TYPE%core!option.Option. $ INT) (vstd!tokens.ValueToken.value.?
             $ TYPE%test_crate!Y.opt3. $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt3.
              old_t3@
             )
            ) (Poly%core!option.Option. core!option.Option./None)
          ))
          (and
           (=>
            %%location_label%%1
            tmp%1
           )
           (=>
            tmp%1
            (=>
             (= tmp%2 (ext_eq false (TYPE%core!option.Option. $ INT) (vstd!tokens.ValueToken.value.?
                $ TYPE%test_crate!Y.opt4. $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt4.
                 t4!
                )
               ) (Poly%core!option.Option. (core!option.Option./Some (I 5)))
             ))
             (and
              (=>
               %%location_label%%2
               tmp%2
              )
              (=>
               tmp%2
               (=>
                (= tmp%3 (ext_eq false (TYPE%core!option.Option. $ INT) (vstd!tokens.ValueToken.value.?
                   $ TYPE%test_crate!Y.opt1. $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt1.
                    t1@1
                   )
                  ) (Poly%core!option.Option. core!option.Option./None)
                ))
                (and
                 (=>
                  %%location_label%%3
                  tmp%3
                 )
                 (=>
                  tmp%3
                  (=>
                   (= tmp%4 (ext_eq false (TYPE%core!option.Option. $ INT) (vstd!tokens.ValueToken.value.?
                      $ TYPE%test_crate!Y.opt3. $ (TYPE%core!option.Option. $ INT) (Poly%test_crate!Y.opt3.
                       t3@1
                      )
                     ) (Poly%core!option.Option. (core!option.Option./Some (I 10)))
                   ))
                   (=>
                    %%location_label%%4
                    tmp%4
 )))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::test_start
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-assert_require_let_codegen/test.rs:185:7: 185:22 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%%@ tuple%5.)
 (declare-const verus_tmp_inst@ test_crate!Y.Instance.)
 (declare-const verus_tmp_t1@ test_crate!Y.opt1.)
 (declare-const verus_tmp_t2@ test_crate!Y.opt2.)
 (declare-const verus_tmp_t3@ test_crate!Y.opt3.)
 (declare-const verus_tmp_t4@ test_crate!Y.opt4.)
 (declare-const inst@ test_crate!Y.Instance.)
 (declare-const t1@ test_crate!Y.opt1.)
 (declare-const t2@ test_crate!Y.opt2.)
 (declare-const t3@ test_crate!Y.opt3.)
 (declare-const t4@ test_crate!Y.opt4.)
 (assert
  fuel_defaults
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (ens%test_crate!Y.impl&%16.initialize. 0 tmp%%@)
    (=>
     (= verus_tmp_inst@ (%Poly%test_crate!Y.Instance. (tuple%5./tuple%5/0 (%Poly%tuple%5.
         (Poly%tuple%5. tmp%%@)
     ))))
     (=>
      (= verus_tmp_t1@ (%Poly%test_crate!Y.opt1. (tuple%5./tuple%5/1 (%Poly%tuple%5. (Poly%tuple%5.
           tmp%%@
      )))))
      (=>
       (= verus_tmp_t2@ (%Poly%test_crate!Y.opt2. (tuple%5./tuple%5/2 (%Poly%tuple%5. (Poly%tuple%5.
            tmp%%@
       )))))
       (=>
        (= verus_tmp_t3@ (%Poly%test_crate!Y.opt3. (tuple%5./tuple%5/3 (%Poly%tuple%5. (Poly%tuple%5.
             tmp%%@
        )))))
        (=>
         (= verus_tmp_t4@ (%Poly%test_crate!Y.opt4. (tuple%5./tuple%5/4 (%Poly%tuple%5. (Poly%tuple%5.
              tmp%%@
         )))))
         (=>
          (= inst@ verus_tmp_inst@)
          (=>
           (= t1@ verus_tmp_t1@)
           (=>
            (= t2@ verus_tmp_t2@)
            (=>
             (= t3@ verus_tmp_t3@)
             (=>
              (= t4@ verus_tmp_t4@)
              (=>
               %%location_label%%0
               (req%test_crate!test_transition. inst@ t1@ t2@ t3@ t4@)
 ))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
