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
(declare-const fuel%test_crate!X.impl&%4.initialize. FuelId)
(declare-const fuel%test_crate!X.impl&%4.tr1. FuelId)
(declare-const fuel%test_crate!X.impl&%4.tr1_strong. FuelId)
(declare-const fuel%test_crate!impl&%0.arrow_Bar_0. FuelId)
(declare-const fuel%test_crate!impl&%0.arrow_Qax_0. FuelId)
(declare-const fuel%test_crate!impl&%0.arrow_Duck_0. FuelId)
(declare-const fuel%test_crate!rel_init. FuelId)
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
 (distinct fuel%test_crate!X.impl&%4.initialize. fuel%test_crate!X.impl&%4.tr1. fuel%test_crate!X.impl&%4.tr1_strong.
  fuel%test_crate!impl&%0.arrow_Bar_0. fuel%test_crate!impl&%0.arrow_Qax_0. fuel%test_crate!impl&%0.arrow_Duck_0.
  fuel%test_crate!rel_init. fuel%test_crate!rel_tr1. fuel%test_crate!rel_tr1_strong.
  fuel%vstd!array.group_array_axioms. fuel%vstd!map.group_map_axioms. fuel%vstd!multiset.group_multiset_axioms.
  fuel%vstd!raw_ptr.group_raw_ptr_axioms. fuel%vstd!seq.group_seq_axioms. fuel%vstd!seq_lib.group_seq_lib_default.
  fuel%vstd!set.group_set_axioms. fuel%vstd!set_lib.group_set_lib_axioms. fuel%vstd!slice.group_slice_axioms.
  fuel%vstd!string.group_string_axioms. fuel%vstd!std_specs.bits.group_bits_axioms.
  fuel%vstd!std_specs.control_flow.group_control_flow_axioms. fuel%vstd!std_specs.range.group_range_axioms.
  fuel%vstd!std_specs.vec.group_vec_axioms. fuel%vstd!group_vstd_default.
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
(declare-datatypes ((test_crate!X.State. 0) (test_crate!Foo. 0) (tuple%0. 0)) (((test_crate!X.State./State
    (test_crate!X.State./State/?x Int) (test_crate!X.State./State/?y Int) (test_crate!X.State./State/?z
     Int
   ))
  ) ((test_crate!Foo./Bar (test_crate!Foo./Bar/?0 Int)) (test_crate!Foo./Qax (test_crate!Foo./Qax/?0
     Int
    )
   ) (test_crate!Foo./Duck (test_crate!Foo./Duck/?0 Int))
  ) ((tuple%0./tuple%0))
))
(declare-fun test_crate!X.State./State/x (test_crate!X.State.) Int)
(declare-fun test_crate!X.State./State/y (test_crate!X.State.) Int)
(declare-fun test_crate!X.State./State/z (test_crate!X.State.) Int)
(declare-fun test_crate!Foo./Bar/0 (test_crate!Foo.) Int)
(declare-fun test_crate!Foo./Qax/0 (test_crate!Foo.) Int)
(declare-fun test_crate!Foo./Duck/0 (test_crate!Foo.) Int)
(declare-const TYPE%test_crate!X.State. Type)
(declare-const TYPE%test_crate!Foo. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%test_crate!X.State. (test_crate!X.State.) Poly)
(declare-fun %Poly%test_crate!X.State. (Poly) test_crate!X.State.)
(declare-fun Poly%test_crate!Foo. (test_crate!Foo.) Poly)
(declare-fun %Poly%test_crate!Foo. (Poly) test_crate!Foo.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(assert
 (forall ((x test_crate!X.State.)) (!
   (= x (%Poly%test_crate!X.State. (Poly%test_crate!X.State. x)))
   :pattern ((Poly%test_crate!X.State. x))
   :qid internal_test_crate__X__State_box_axiom_definition
   :skolemid skolem_internal_test_crate__X__State_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!X.State.)
    (= x (Poly%test_crate!X.State. (%Poly%test_crate!X.State. x)))
   )
   :pattern ((has_type x TYPE%test_crate!X.State.))
   :qid internal_test_crate__X__State_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__X__State_unbox_axiom_definition
)))
(assert
 (forall ((x test_crate!X.State.)) (!
   (= (test_crate!X.State./State/x x) (test_crate!X.State./State/?x x))
   :pattern ((test_crate!X.State./State/x x))
   :qid internal_test_crate!X.State./State/x_accessor_definition
   :skolemid skolem_internal_test_crate!X.State./State/x_accessor_definition
)))
(assert
 (forall ((x test_crate!X.State.)) (!
   (= (test_crate!X.State./State/y x) (test_crate!X.State./State/?y x))
   :pattern ((test_crate!X.State./State/y x))
   :qid internal_test_crate!X.State./State/y_accessor_definition
   :skolemid skolem_internal_test_crate!X.State./State/y_accessor_definition
)))
(assert
 (forall ((x test_crate!X.State.)) (!
   (= (test_crate!X.State./State/z x) (test_crate!X.State./State/?z x))
   :pattern ((test_crate!X.State./State/z x))
   :qid internal_test_crate!X.State./State/z_accessor_definition
   :skolemid skolem_internal_test_crate!X.State./State/z_accessor_definition
)))
(assert
 (forall ((x test_crate!X.State.)) (!
   (has_type (Poly%test_crate!X.State. x) TYPE%test_crate!X.State.)
   :pattern ((has_type (Poly%test_crate!X.State. x) TYPE%test_crate!X.State.))
   :qid internal_test_crate__X__State_has_type_always_definition
   :skolemid skolem_internal_test_crate__X__State_has_type_always_definition
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

;; Function-Decl test_crate::X::State::tr1
(declare-fun test_crate!X.impl&%4.tr1.? (Poly Poly Poly Poly) Bool)

;; Function-Decl test_crate::X::State::initialize
(declare-fun test_crate!X.impl&%4.initialize.? (Poly Poly Poly Poly Poly) Bool)

;; Function-Decl test_crate::X::State::tr1_strong
(declare-fun test_crate!X.impl&%4.tr1_strong.? (Poly Poly Poly Poly) Bool)

;; Function-Decl test_crate::Foo::arrow_Bar_0
(declare-fun test_crate!impl&%0.arrow_Bar_0.? (Poly) Int)

;; Function-Decl test_crate::Foo::arrow_Qax_0
(declare-fun test_crate!impl&%0.arrow_Qax_0.? (Poly) Int)

;; Function-Decl test_crate::Foo::arrow_Duck_0
(declare-fun test_crate!impl&%0.arrow_Duck_0.? (Poly) Int)

;; Function-Decl test_crate::rel_init
(declare-fun test_crate!rel_init.? (Poly Poly Poly Poly Poly) Bool)

;; Function-Decl test_crate::rel_tr1
(declare-fun test_crate!rel_tr1.? (Poly Poly Poly Poly) Bool)

;; Function-Decl test_crate::rel_tr1_strong
(declare-fun test_crate!rel_tr1_strong.? (Poly Poly Poly Poly) Bool)

;; Function-Axioms test_crate::X::State::tr1
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%4.tr1.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.tr1.)
  (forall ((pre! Poly) (post! Poly) (foo! Poly) (c! Poly)) (!
    (= (test_crate!X.impl&%4.tr1.? pre! post! foo! c!) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_x$ (test_crate!X.State./State/x (%Poly%test_crate!X.State. pre!))))
       (let
        ((update_tmp_y$ (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!))))
        (let
         ((update_tmp_z$ (test_crate!X.State./State/z (%Poly%test_crate!X.State. pre!))))
         (and
          (ite
           (is-test_crate!Foo./Bar (%Poly%test_crate!Foo. foo!))
           (let
            ((a$ (test_crate!Foo./Bar/0 (%Poly%test_crate!Foo. foo!))))
            (let
             ((update_tmp_z$1 (Add (test_crate!X.State./State/z (%Poly%test_crate!X.State. pre!))
                1
             )))
             (=>
              tmp_assert$
              (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) update_tmp_z$1)
           )))
           (ite
            (let
             ((b$ (test_crate!Foo./Qax/0 (%Poly%test_crate!Foo. foo!))))
             (and
              (is-test_crate!Foo./Qax (%Poly%test_crate!Foo. foo!))
              (= b$ 20)
            ))
            (let
             ((b$ (test_crate!Foo./Qax/0 (%Poly%test_crate!Foo. foo!))))
             (let
              ((tmp_assert$1 (and
                 tmp_assert$
                 (<= (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!)) (test_crate!X.State./State/z
                   (%Poly%test_crate!X.State. pre!)
              )))))
              (=>
               tmp_assert$1
               (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) update_tmp_z$)
            )))
            (ite
             (is-test_crate!Foo./Duck (%Poly%test_crate!Foo. foo!))
             (let
              ((d$ (test_crate!Foo./Duck/0 (%Poly%test_crate!Foo. foo!))))
              (let
               ((tmp_assert$2 (and
                  tmp_assert$
                  (is-test_crate!Foo./Duck (%Poly%test_crate!Foo. foo!))
               )))
               (=>
                tmp_assert$2
                (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) update_tmp_z$)
             )))
             (=>
              tmp_assert$
              (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) update_tmp_z$)
          ))))
          (let
           ((tmp_assert$3 (ite
              (is-test_crate!Foo./Bar (%Poly%test_crate!Foo. foo!))
              (let
               ((a$ (test_crate!Foo./Bar/0 (%Poly%test_crate!Foo. foo!))))
               (let
                ((update_tmp_z$2 (Add (test_crate!X.State./State/z (%Poly%test_crate!X.State. pre!))
                   1
                )))
                tmp_assert$
              ))
              (ite
               (let
                ((b$ (test_crate!Foo./Qax/0 (%Poly%test_crate!Foo. foo!))))
                (and
                 (is-test_crate!Foo./Qax (%Poly%test_crate!Foo. foo!))
                 (= b$ 20)
               ))
               (let
                ((b$ (test_crate!Foo./Qax/0 (%Poly%test_crate!Foo. foo!))))
                (let
                 ((tmp_assert$4 (and
                    tmp_assert$
                    (<= (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!)) (test_crate!X.State./State/z
                      (%Poly%test_crate!X.State. pre!)
                 )))))
                 tmp_assert$4
               ))
               (ite
                (is-test_crate!Foo./Duck (%Poly%test_crate!Foo. foo!))
                (let
                 ((d$ (test_crate!Foo./Duck/0 (%Poly%test_crate!Foo. foo!))))
                 (let
                  ((tmp_assert$5 (and
                     tmp_assert$
                     (is-test_crate!Foo./Duck (%Poly%test_crate!Foo. foo!))
                  )))
                  tmp_assert$5
                ))
                tmp_assert$
           )))))
           (and
            (=>
             tmp_assert$3
             (%B c!)
            )
            (and
             (=>
              tmp_assert$3
              (= (test_crate!X.State./State/y (%Poly%test_crate!X.State. post!)) update_tmp_y$)
             )
             (=>
              tmp_assert$3
              (= (test_crate!X.State./State/x (%Poly%test_crate!X.State. post!)) update_tmp_x$)
    ))))))))))
    :pattern ((test_crate!X.impl&%4.tr1.? pre! post! foo! c!))
    :qid internal_test_crate!X.impl&__4.tr1.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.tr1.?_definition
))))

;; Function-Axioms test_crate::X::State::initialize
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%4.initialize.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.initialize.)
  (forall ((post! Poly) (x! Poly) (y! Poly) (z! Poly) (foo! Poly)) (!
    (= (test_crate!X.impl&%4.initialize.? post! x! y! z! foo!) (let
      ((update_tmp_x$ (%I x!)))
      (let
       ((update_tmp_y$ (%I y!)))
       (and
        (<= (%I y!) (%I z!))
        (and
         (ite
          (is-test_crate!Foo./Bar (%Poly%test_crate!Foo. foo!))
          (let
           ((a$ (test_crate!Foo./Bar/0 (%Poly%test_crate!Foo. foo!))))
           (let
            ((update_tmp_z$ (%I z!)))
            (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) update_tmp_z$)
          ))
          (ite
           (is-test_crate!Foo./Qax (%Poly%test_crate!Foo. foo!))
           (let
            ((b$ (test_crate!Foo./Qax/0 (%Poly%test_crate!Foo. foo!))))
            (let
             ((update_tmp_z$ (Add (%I z!) 1)))
             (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) update_tmp_z$)
           ))
           (let
            ((d$ (test_crate!Foo./Duck/0 (%Poly%test_crate!Foo. foo!))))
            (let
             ((update_tmp_z$ (Add (%I z!) 2)))
             (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) update_tmp_z$)
         ))))
         (and
          (= (test_crate!X.State./State/y (%Poly%test_crate!X.State. post!)) update_tmp_y$)
          (= (test_crate!X.State./State/x (%Poly%test_crate!X.State. post!)) update_tmp_x$)
    ))))))
    :pattern ((test_crate!X.impl&%4.initialize.? post! x! y! z! foo!))
    :qid internal_test_crate!X.impl&__4.initialize.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.initialize.?_definition
))))

;; Function-Axioms test_crate::X::State::tr1_strong
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%4.tr1_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.tr1_strong.)
  (forall ((pre! Poly) (post! Poly) (foo! Poly) (c! Poly)) (!
    (= (test_crate!X.impl&%4.tr1_strong.? pre! post! foo! c!) (let
      ((update_tmp_x$ (test_crate!X.State./State/x (%Poly%test_crate!X.State. pre!))))
      (let
       ((update_tmp_y$ (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!))))
       (let
        ((update_tmp_z$ (test_crate!X.State./State/z (%Poly%test_crate!X.State. pre!))))
        (and
         (ite
          (is-test_crate!Foo./Bar (%Poly%test_crate!Foo. foo!))
          (let
           ((a$ (test_crate!Foo./Bar/0 (%Poly%test_crate!Foo. foo!))))
           (let
            ((update_tmp_z$1 (Add (test_crate!X.State./State/z (%Poly%test_crate!X.State. pre!))
               1
            )))
            (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) update_tmp_z$1)
          ))
          (ite
           (let
            ((b$ (test_crate!Foo./Qax/0 (%Poly%test_crate!Foo. foo!))))
            (and
             (is-test_crate!Foo./Qax (%Poly%test_crate!Foo. foo!))
             (= b$ 20)
           ))
           (let
            ((b$ (test_crate!Foo./Qax/0 (%Poly%test_crate!Foo. foo!))))
            (and
             (<= (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!)) (test_crate!X.State./State/z
               (%Poly%test_crate!X.State. pre!)
             ))
             (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) update_tmp_z$)
           ))
           (ite
            (is-test_crate!Foo./Duck (%Poly%test_crate!Foo. foo!))
            (let
             ((d$ (test_crate!Foo./Duck/0 (%Poly%test_crate!Foo. foo!))))
             (and
              (is-test_crate!Foo./Duck (%Poly%test_crate!Foo. foo!))
              (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) update_tmp_z$)
            ))
            (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) update_tmp_z$)
         )))
         (and
          (%B c!)
          (and
           (= (test_crate!X.State./State/y (%Poly%test_crate!X.State. post!)) update_tmp_y$)
           (= (test_crate!X.State./State/x (%Poly%test_crate!X.State. post!)) update_tmp_x$)
    )))))))
    :pattern ((test_crate!X.impl&%4.tr1_strong.? pre! post! foo! c!))
    :qid internal_test_crate!X.impl&__4.tr1_strong.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.tr1_strong.?_definition
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

;; Function-Axioms test_crate::rel_init
(assert
 (fuel_bool_default fuel%test_crate!rel_init.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!rel_init.)
  (forall ((post! Poly) (x! Poly) (y! Poly) (z! Poly) (foo! Poly)) (!
    (= (test_crate!rel_init.? post! x! y! z! foo!) (and
      (and
       (and
        (= (test_crate!X.State./State/x (%Poly%test_crate!X.State. post!)) (%I x!))
        (= (test_crate!X.State./State/y (%Poly%test_crate!X.State. post!)) (%I y!))
       )
       (<= (%I y!) (%I z!))
      )
      (ite
       (is-test_crate!Foo./Bar (%Poly%test_crate!Foo. foo!))
       (let
        ((a$ (test_crate!Foo./Bar/0 (%Poly%test_crate!Foo. foo!))))
        (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) (%I z!))
       )
       (ite
        (is-test_crate!Foo./Qax (%Poly%test_crate!Foo. foo!))
        (let
         ((b$ (test_crate!Foo./Qax/0 (%Poly%test_crate!Foo. foo!))))
         (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) (Add (%I z!) 1))
        )
        (let
         ((d$ (test_crate!Foo./Duck/0 (%Poly%test_crate!Foo. foo!))))
         (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) (Add (%I z!) 2))
    )))))
    :pattern ((test_crate!rel_init.? post! x! y! z! foo!))
    :qid internal_test_crate!rel_init.?_definition
    :skolemid skolem_internal_test_crate!rel_init.?_definition
))))

;; Function-Axioms test_crate::rel_tr1
(assert
 (fuel_bool_default fuel%test_crate!rel_tr1.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!rel_tr1.)
  (forall ((pre! Poly) (post! Poly) (foo! Poly) (c! Poly)) (!
    (= (test_crate!rel_tr1.? pre! post! foo! c!) (and
      (ite
       (is-test_crate!Foo./Bar (%Poly%test_crate!Foo. foo!))
       (let
        ((a$ (test_crate!Foo./Bar/0 (%Poly%test_crate!Foo. foo!))))
        (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) (Add (test_crate!X.State./State/z
           (%Poly%test_crate!X.State. pre!)
          ) 1
       )))
       (ite
        (let
         ((b$ (test_crate!Foo./Qax/0 (%Poly%test_crate!Foo. foo!))))
         (and
          (is-test_crate!Foo./Qax (%Poly%test_crate!Foo. foo!))
          (= b$ 20)
        ))
        (let
         ((b$ (test_crate!Foo./Qax/0 (%Poly%test_crate!Foo. foo!))))
         (=>
          (<= (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!)) (test_crate!X.State./State/z
            (%Poly%test_crate!X.State. pre!)
          ))
          (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) (test_crate!X.State./State/z
            (%Poly%test_crate!X.State. pre!)
        ))))
        (ite
         (is-test_crate!Foo./Duck (%Poly%test_crate!Foo. foo!))
         (let
          ((d$ (test_crate!Foo./Duck/0 (%Poly%test_crate!Foo. foo!))))
          (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) (test_crate!X.State./State/z
            (%Poly%test_crate!X.State. pre!)
         )))
         (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) (test_crate!X.State./State/z
           (%Poly%test_crate!X.State. pre!)
      )))))
      (=>
       (ite
        (is-test_crate!Foo./Bar (%Poly%test_crate!Foo. foo!))
        (let
         ((a$ (test_crate!Foo./Bar/0 (%Poly%test_crate!Foo. foo!))))
         true
        )
        (ite
         (let
          ((b$ (test_crate!Foo./Qax/0 (%Poly%test_crate!Foo. foo!))))
          (and
           (is-test_crate!Foo./Qax (%Poly%test_crate!Foo. foo!))
           (= b$ 20)
         ))
         (let
          ((b$ (test_crate!Foo./Qax/0 (%Poly%test_crate!Foo. foo!))))
          (<= (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!)) (test_crate!X.State./State/z
            (%Poly%test_crate!X.State. pre!)
         )))
         (=>
          (is-test_crate!Foo./Duck (%Poly%test_crate!Foo. foo!))
          (let
           ((d$ (test_crate!Foo./Duck/0 (%Poly%test_crate!Foo. foo!))))
           true
       ))))
       (and
        (and
         (%B c!)
         (= (test_crate!X.State./State/x (%Poly%test_crate!X.State. pre!)) (test_crate!X.State./State/x
           (%Poly%test_crate!X.State. post!)
        )))
        (= (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!)) (test_crate!X.State./State/y
          (%Poly%test_crate!X.State. post!)
    ))))))
    :pattern ((test_crate!rel_tr1.? pre! post! foo! c!))
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
  (forall ((pre! Poly) (post! Poly) (foo! Poly) (c! Poly)) (!
    (= (test_crate!rel_tr1_strong.? pre! post! foo! c!) (and
      (ite
       (is-test_crate!Foo./Bar (%Poly%test_crate!Foo. foo!))
       (let
        ((a$ (test_crate!Foo./Bar/0 (%Poly%test_crate!Foo. foo!))))
        (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) (Add (test_crate!X.State./State/z
           (%Poly%test_crate!X.State. pre!)
          ) 1
       )))
       (ite
        (let
         ((b$ (test_crate!Foo./Qax/0 (%Poly%test_crate!Foo. foo!))))
         (and
          (is-test_crate!Foo./Qax (%Poly%test_crate!Foo. foo!))
          (= b$ 20)
        ))
        (let
         ((b$ (test_crate!Foo./Qax/0 (%Poly%test_crate!Foo. foo!))))
         (and
          (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) (test_crate!X.State./State/z
            (%Poly%test_crate!X.State. pre!)
          ))
          (<= (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!)) (test_crate!X.State./State/z
            (%Poly%test_crate!X.State. pre!)
        ))))
        (ite
         (is-test_crate!Foo./Duck (%Poly%test_crate!Foo. foo!))
         (let
          ((d$ (test_crate!Foo./Duck/0 (%Poly%test_crate!Foo. foo!))))
          (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) (test_crate!X.State./State/z
            (%Poly%test_crate!X.State. pre!)
         )))
         (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) (test_crate!X.State./State/z
           (%Poly%test_crate!X.State. pre!)
      )))))
      (and
       (and
        (%B c!)
        (= (test_crate!X.State./State/x (%Poly%test_crate!X.State. pre!)) (test_crate!X.State./State/x
          (%Poly%test_crate!X.State. post!)
       )))
       (= (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!)) (test_crate!X.State./State/y
         (%Poly%test_crate!X.State. post!)
    )))))
    :pattern ((test_crate!rel_tr1_strong.? pre! post! foo! c!))
    :qid internal_test_crate!rel_tr1_strong.?_definition
    :skolemid skolem_internal_test_crate!rel_tr1_strong.?_definition
))))

;; Function-Specs test_crate::correct_init
(declare-fun req%test_crate!correct_init. (test_crate!X.State. Int Int Int test_crate!Foo.)
 Bool
)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((post! test_crate!X.State.) (x! Int) (y! Int) (z! Int) (foo! test_crate!Foo.))
  (!
   (= (req%test_crate!correct_init. post! x! y! z! foo!) (=>
     %%global_location_label%%0
     (test_crate!X.impl&%4.initialize.? (Poly%test_crate!X.State. post!) (I x!) (I y!)
      (I z!) (Poly%test_crate!Foo. foo!)
   )))
   :pattern ((req%test_crate!correct_init. post! x! y! z! foo!))
   :qid internal_req__test_crate!correct_init._definition
   :skolemid skolem_internal_req__test_crate!correct_init._definition
)))
(declare-fun ens%test_crate!correct_init. (test_crate!X.State. Int Int Int test_crate!Foo.)
 Bool
)
(assert
 (forall ((post! test_crate!X.State.) (x! Int) (y! Int) (z! Int) (foo! test_crate!Foo.))
  (!
   (= (ens%test_crate!correct_init. post! x! y! z! foo!) (test_crate!rel_init.? (Poly%test_crate!X.State.
      post!
     ) (I x!) (I y!) (I z!) (Poly%test_crate!Foo. foo!)
   ))
   :pattern ((ens%test_crate!correct_init. post! x! y! z! foo!))
   :qid internal_ens__test_crate!correct_init._definition
   :skolemid skolem_internal_ens__test_crate!correct_init._definition
)))

;; Function-Def test_crate::correct_init
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_match/test.rs:119:7: 119:72 (#0)
(get-info :all-statistics)
(push)
 (declare-const post! test_crate!X.State.)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const z! Int)
 (declare-const foo! test_crate!Foo.)
 (assert
  fuel_defaults
 )
 (assert
  (test_crate!X.impl&%4.initialize.? (Poly%test_crate!X.State. post!) (I x!) (I y!)
   (I z!) (Poly%test_crate!Foo. foo!)
 ))
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (test_crate!rel_init.? (Poly%test_crate!X.State. post!) (I x!) (I y!) (I z!) (Poly%test_crate!Foo.
      foo!
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::rev_init
(declare-fun req%test_crate!rev_init. (test_crate!X.State. Int Int Int test_crate!Foo.)
 Bool
)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((post! test_crate!X.State.) (x! Int) (y! Int) (z! Int) (foo! test_crate!Foo.))
  (!
   (= (req%test_crate!rev_init. post! x! y! z! foo!) (=>
     %%global_location_label%%1
     (test_crate!rel_init.? (Poly%test_crate!X.State. post!) (I x!) (I y!) (I z!) (Poly%test_crate!Foo.
       foo!
   ))))
   :pattern ((req%test_crate!rev_init. post! x! y! z! foo!))
   :qid internal_req__test_crate!rev_init._definition
   :skolemid skolem_internal_req__test_crate!rev_init._definition
)))
(declare-fun ens%test_crate!rev_init. (test_crate!X.State. Int Int Int test_crate!Foo.)
 Bool
)
(assert
 (forall ((post! test_crate!X.State.) (x! Int) (y! Int) (z! Int) (foo! test_crate!Foo.))
  (!
   (= (ens%test_crate!rev_init. post! x! y! z! foo!) (test_crate!X.impl&%4.initialize.?
     (Poly%test_crate!X.State. post!) (I x!) (I y!) (I z!) (Poly%test_crate!Foo. foo!)
   ))
   :pattern ((ens%test_crate!rev_init. post! x! y! z! foo!))
   :qid internal_ens__test_crate!rev_init._definition
   :skolemid skolem_internal_ens__test_crate!rev_init._definition
)))

;; Function-Def test_crate::rev_init
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_match/test.rs:124:7: 124:68 (#0)
(get-info :all-statistics)
(push)
 (declare-const post! test_crate!X.State.)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const z! Int)
 (declare-const foo! test_crate!Foo.)
 (assert
  fuel_defaults
 )
 (assert
  (test_crate!rel_init.? (Poly%test_crate!X.State. post!) (I x!) (I y!) (I z!) (Poly%test_crate!Foo.
    foo!
 )))
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (test_crate!X.impl&%4.initialize.? (Poly%test_crate!X.State. post!) (I x!) (I y!)
     (I z!) (Poly%test_crate!Foo. foo!)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::correct_tr1
(declare-fun req%test_crate!correct_tr1. (test_crate!X.State. test_crate!X.State. test_crate!Foo.
  Bool
 ) Bool
)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((pre! test_crate!X.State.) (post! test_crate!X.State.) (foo! test_crate!Foo.)
   (c! Bool)
  ) (!
   (= (req%test_crate!correct_tr1. pre! post! foo! c!) (=>
     %%global_location_label%%2
     (test_crate!X.impl&%4.tr1.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
       post!
      ) (Poly%test_crate!Foo. foo!) (B c!)
   )))
   :pattern ((req%test_crate!correct_tr1. pre! post! foo! c!))
   :qid internal_req__test_crate!correct_tr1._definition
   :skolemid skolem_internal_req__test_crate!correct_tr1._definition
)))
(declare-fun ens%test_crate!correct_tr1. (test_crate!X.State. test_crate!X.State. test_crate!Foo.
  Bool
 ) Bool
)
(assert
 (forall ((pre! test_crate!X.State.) (post! test_crate!X.State.) (foo! test_crate!Foo.)
   (c! Bool)
  ) (!
   (= (ens%test_crate!correct_tr1. pre! post! foo! c!) (test_crate!rel_tr1.? (Poly%test_crate!X.State.
      pre!
     ) (Poly%test_crate!X.State. post!) (Poly%test_crate!Foo. foo!) (B c!)
   ))
   :pattern ((ens%test_crate!correct_tr1. pre! post! foo! c!))
   :qid internal_ens__test_crate!correct_tr1._definition
   :skolemid skolem_internal_ens__test_crate!correct_tr1._definition
)))

;; Function-Def test_crate::correct_tr1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_match/test.rs:129:7: 129:71 (#0)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!X.State.)
 (declare-const post! test_crate!X.State.)
 (declare-const foo! test_crate!Foo.)
 (declare-const c! Bool)
 (assert
  fuel_defaults
 )
 (assert
  (test_crate!X.impl&%4.tr1.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
    post!
   ) (Poly%test_crate!Foo. foo!) (B c!)
 ))
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (test_crate!rel_tr1.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State. post!)
     (Poly%test_crate!Foo. foo!) (B c!)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::rev_tr1
(declare-fun req%test_crate!rev_tr1. (test_crate!X.State. test_crate!X.State. test_crate!Foo.
  Bool
 ) Bool
)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((pre! test_crate!X.State.) (post! test_crate!X.State.) (foo! test_crate!Foo.)
   (c! Bool)
  ) (!
   (= (req%test_crate!rev_tr1. pre! post! foo! c!) (=>
     %%global_location_label%%3
     (test_crate!rel_tr1.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State. post!)
      (Poly%test_crate!Foo. foo!) (B c!)
   )))
   :pattern ((req%test_crate!rev_tr1. pre! post! foo! c!))
   :qid internal_req__test_crate!rev_tr1._definition
   :skolemid skolem_internal_req__test_crate!rev_tr1._definition
)))
(declare-fun ens%test_crate!rev_tr1. (test_crate!X.State. test_crate!X.State. test_crate!Foo.
  Bool
 ) Bool
)
(assert
 (forall ((pre! test_crate!X.State.) (post! test_crate!X.State.) (foo! test_crate!Foo.)
   (c! Bool)
  ) (!
   (= (ens%test_crate!rev_tr1. pre! post! foo! c!) (test_crate!X.impl&%4.tr1.? (Poly%test_crate!X.State.
      pre!
     ) (Poly%test_crate!X.State. post!) (Poly%test_crate!Foo. foo!) (B c!)
   ))
   :pattern ((ens%test_crate!rev_tr1. pre! post! foo! c!))
   :qid internal_ens__test_crate!rev_tr1._definition
   :skolemid skolem_internal_ens__test_crate!rev_tr1._definition
)))

;; Function-Def test_crate::rev_tr1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_match/test.rs:134:7: 134:67 (#0)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!X.State.)
 (declare-const post! test_crate!X.State.)
 (declare-const foo! test_crate!Foo.)
 (declare-const c! Bool)
 (assert
  fuel_defaults
 )
 (assert
  (test_crate!rel_tr1.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State. post!)
   (Poly%test_crate!Foo. foo!) (B c!)
 ))
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (test_crate!X.impl&%4.tr1.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
      post!
     ) (Poly%test_crate!Foo. foo!) (B c!)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::correct_tr1_strong
(declare-fun req%test_crate!correct_tr1_strong. (test_crate!X.State. test_crate!X.State.
  test_crate!Foo. Bool
 ) Bool
)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((pre! test_crate!X.State.) (post! test_crate!X.State.) (foo! test_crate!Foo.)
   (c! Bool)
  ) (!
   (= (req%test_crate!correct_tr1_strong. pre! post! foo! c!) (=>
     %%global_location_label%%4
     (test_crate!X.impl&%4.tr1_strong.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
       post!
      ) (Poly%test_crate!Foo. foo!) (B c!)
   )))
   :pattern ((req%test_crate!correct_tr1_strong. pre! post! foo! c!))
   :qid internal_req__test_crate!correct_tr1_strong._definition
   :skolemid skolem_internal_req__test_crate!correct_tr1_strong._definition
)))
(declare-fun ens%test_crate!correct_tr1_strong. (test_crate!X.State. test_crate!X.State.
  test_crate!Foo. Bool
 ) Bool
)
(assert
 (forall ((pre! test_crate!X.State.) (post! test_crate!X.State.) (foo! test_crate!Foo.)
   (c! Bool)
  ) (!
   (= (ens%test_crate!correct_tr1_strong. pre! post! foo! c!) (test_crate!rel_tr1_strong.?
     (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State. post!) (Poly%test_crate!Foo.
      foo!
     ) (B c!)
   ))
   :pattern ((ens%test_crate!correct_tr1_strong. pre! post! foo! c!))
   :qid internal_ens__test_crate!correct_tr1_strong._definition
   :skolemid skolem_internal_ens__test_crate!correct_tr1_strong._definition
)))

;; Function-Def test_crate::correct_tr1_strong
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_match/test.rs:139:7: 139:78 (#0)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!X.State.)
 (declare-const post! test_crate!X.State.)
 (declare-const foo! test_crate!Foo.)
 (declare-const c! Bool)
 (assert
  fuel_defaults
 )
 (assert
  (test_crate!X.impl&%4.tr1_strong.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
    post!
   ) (Poly%test_crate!Foo. foo!) (B c!)
 ))
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (test_crate!rel_tr1_strong.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
      post!
     ) (Poly%test_crate!Foo. foo!) (B c!)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::rev_tr1_strong
(declare-fun req%test_crate!rev_tr1_strong. (test_crate!X.State. test_crate!X.State.
  test_crate!Foo. Bool
 ) Bool
)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((pre! test_crate!X.State.) (post! test_crate!X.State.) (foo! test_crate!Foo.)
   (c! Bool)
  ) (!
   (= (req%test_crate!rev_tr1_strong. pre! post! foo! c!) (=>
     %%global_location_label%%5
     (test_crate!rel_tr1_strong.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
       post!
      ) (Poly%test_crate!Foo. foo!) (B c!)
   )))
   :pattern ((req%test_crate!rev_tr1_strong. pre! post! foo! c!))
   :qid internal_req__test_crate!rev_tr1_strong._definition
   :skolemid skolem_internal_req__test_crate!rev_tr1_strong._definition
)))
(declare-fun ens%test_crate!rev_tr1_strong. (test_crate!X.State. test_crate!X.State.
  test_crate!Foo. Bool
 ) Bool
)
(assert
 (forall ((pre! test_crate!X.State.) (post! test_crate!X.State.) (foo! test_crate!Foo.)
   (c! Bool)
  ) (!
   (= (ens%test_crate!rev_tr1_strong. pre! post! foo! c!) (test_crate!X.impl&%4.tr1_strong.?
     (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State. post!) (Poly%test_crate!Foo.
      foo!
     ) (B c!)
   ))
   :pattern ((ens%test_crate!rev_tr1_strong. pre! post! foo! c!))
   :qid internal_ens__test_crate!rev_tr1_strong._definition
   :skolemid skolem_internal_ens__test_crate!rev_tr1_strong._definition
)))

;; Function-Def test_crate::rev_tr1_strong
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen_match/test.rs:144:7: 144:74 (#0)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!X.State.)
 (declare-const post! test_crate!X.State.)
 (declare-const foo! test_crate!Foo.)
 (declare-const c! Bool)
 (assert
  fuel_defaults
 )
 (assert
  (test_crate!rel_tr1_strong.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
    post!
   ) (Poly%test_crate!Foo. foo!) (B c!)
 ))
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (test_crate!X.impl&%4.tr1_strong.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
      post!
     ) (Poly%test_crate!Foo. foo!) (B c!)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
