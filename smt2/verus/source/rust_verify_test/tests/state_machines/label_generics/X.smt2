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

;; MODULE 'module X'

;; Fuel
(declare-const fuel%test_crate!X.impl&%0.arrow_0. FuelId)
(declare-const fuel%test_crate!X.impl&%0.arrow_dummy_to_use_type_params_0. FuelId)
(declare-const fuel%test_crate!X.impl&%1.is_f. FuelId)
(declare-const fuel%test_crate!X.impl&%1.is_dummy_to_use_type_params. FuelId)
(declare-const fuel%test_crate!X.impl&%1.get_dummy_to_use_type_params_0. FuelId)
(declare-const fuel%test_crate!X.impl&%2.arrow_1. FuelId)
(declare-const fuel%test_crate!X.impl&%2.arrow_g_0. FuelId)
(declare-const fuel%test_crate!X.impl&%2.arrow_g_1. FuelId)
(declare-const fuel%test_crate!X.impl&%2.arrow_dummy_to_use_type_params_0. FuelId)
(declare-const fuel%test_crate!X.impl&%3.is_g. FuelId)
(declare-const fuel%test_crate!X.impl&%3.get_g_0. FuelId)
(declare-const fuel%test_crate!X.impl&%3.get_g_1. FuelId)
(declare-const fuel%test_crate!X.impl&%3.is_dummy_to_use_type_params. FuelId)
(declare-const fuel%test_crate!X.impl&%3.get_dummy_to_use_type_params_0. FuelId)
(declare-const fuel%test_crate!X.impl&%4.g. FuelId)
(declare-const fuel%test_crate!X.impl&%4.g_enabled. FuelId)
(declare-const fuel%test_crate!X.impl&%4.f. FuelId)
(declare-const fuel%test_crate!X.impl&%4.f_strong. FuelId)
(declare-const fuel%test_crate!X.impl&%4.f_enabled. FuelId)
(declare-const fuel%test_crate!X.impl&%4.next_by. FuelId)
(declare-const fuel%test_crate!X.impl&%4.next. FuelId)
(declare-const fuel%test_crate!X.impl&%4.next_strong_by. FuelId)
(declare-const fuel%test_crate!X.impl&%4.next_strong. FuelId)
(declare-const fuel%test_crate!X.impl&%4.init_by. FuelId)
(declare-const fuel%test_crate!X.impl&%4.init. FuelId)
(declare-const fuel%test_crate!X.impl&%4.invariant. FuelId)
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
 (distinct fuel%test_crate!X.impl&%0.arrow_0. fuel%test_crate!X.impl&%0.arrow_dummy_to_use_type_params_0.
  fuel%test_crate!X.impl&%1.is_f. fuel%test_crate!X.impl&%1.is_dummy_to_use_type_params.
  fuel%test_crate!X.impl&%1.get_dummy_to_use_type_params_0. fuel%test_crate!X.impl&%2.arrow_1.
  fuel%test_crate!X.impl&%2.arrow_g_0. fuel%test_crate!X.impl&%2.arrow_g_1. fuel%test_crate!X.impl&%2.arrow_dummy_to_use_type_params_0.
  fuel%test_crate!X.impl&%3.is_g. fuel%test_crate!X.impl&%3.get_g_0. fuel%test_crate!X.impl&%3.get_g_1.
  fuel%test_crate!X.impl&%3.is_dummy_to_use_type_params. fuel%test_crate!X.impl&%3.get_dummy_to_use_type_params_0.
  fuel%test_crate!X.impl&%4.g. fuel%test_crate!X.impl&%4.g_enabled. fuel%test_crate!X.impl&%4.f.
  fuel%test_crate!X.impl&%4.f_strong. fuel%test_crate!X.impl&%4.f_enabled. fuel%test_crate!X.impl&%4.next_by.
  fuel%test_crate!X.impl&%4.next. fuel%test_crate!X.impl&%4.next_strong_by. fuel%test_crate!X.impl&%4.next_strong.
  fuel%test_crate!X.impl&%4.init_by. fuel%test_crate!X.impl&%4.init. fuel%test_crate!X.impl&%4.invariant.
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
(declare-datatypes ((core!option.Option. 0) (test_crate!X.State. 0) (test_crate!X.Step.
   0
  ) (test_crate!X.Config. 0)
 ) (((core!option.Option./None) (core!option.Option./Some (core!option.Option./Some/?0
     Poly
   ))
  ) ((test_crate!X.State./State (test_crate!X.State./State/?x Poly) (test_crate!X.State./State/?y
     Poly
   ))
  ) ((test_crate!X.Step./f) (test_crate!X.Step./dummy_to_use_type_params (test_crate!X.Step./dummy_to_use_type_params/?0
     test_crate!X.State.
   ))
  ) ((test_crate!X.Config./g (test_crate!X.Config./g/?0 Poly) (test_crate!X.Config./g/?1
     Poly
    )
   ) (test_crate!X.Config./dummy_to_use_type_params (test_crate!X.Config./dummy_to_use_type_params/?0
     test_crate!X.State.
)))))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun test_crate!X.State./State/x (test_crate!X.State.) Poly)
(declare-fun test_crate!X.State./State/y (test_crate!X.State.) Poly)
(declare-fun test_crate!X.Step./dummy_to_use_type_params/0 (test_crate!X.Step.) test_crate!X.State.)
(declare-fun test_crate!X.Config./g/0 (test_crate!X.Config.) Poly)
(declare-fun test_crate!X.Config./g/1 (test_crate!X.Config.) Poly)
(declare-fun test_crate!X.Config./dummy_to_use_type_params/0 (test_crate!X.Config.)
 test_crate!X.State.
)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-fun TYPE%test_crate!X.State. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%test_crate!X.Step. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%test_crate!X.Config. (Dcr Type Dcr Type) Type)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
(declare-fun Poly%test_crate!X.State. (test_crate!X.State.) Poly)
(declare-fun %Poly%test_crate!X.State. (Poly) test_crate!X.State.)
(declare-fun Poly%test_crate!X.Step. (test_crate!X.Step.) Poly)
(declare-fun %Poly%test_crate!X.Step. (Poly) test_crate!X.Step.)
(declare-fun Poly%test_crate!X.Config. (test_crate!X.Config.) Poly)
(declare-fun %Poly%test_crate!X.Config. (Poly) test_crate!X.Config.)
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
 (forall ((x test_crate!X.State.)) (!
   (= x (%Poly%test_crate!X.State. (Poly%test_crate!X.State. x)))
   :pattern ((Poly%test_crate!X.State. x))
   :qid internal_test_crate__X__State_box_axiom_definition
   :skolemid skolem_internal_test_crate__X__State_box_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%test_crate!X.State. T&. T& U&. U&))
    (= x (Poly%test_crate!X.State. (%Poly%test_crate!X.State. x)))
   )
   :pattern ((has_type x (TYPE%test_crate!X.State. T&. T& U&. U&)))
   :qid internal_test_crate__X__State_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__X__State_unbox_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (_x! Poly) (_y! Poly)) (!
   (=>
    (and
     (has_type _x! T&)
     (has_type _y! U&)
    )
    (has_type (Poly%test_crate!X.State. (test_crate!X.State./State _x! _y!)) (TYPE%test_crate!X.State.
      T&. T& U&. U&
   )))
   :pattern ((has_type (Poly%test_crate!X.State. (test_crate!X.State./State _x! _y!))
     (TYPE%test_crate!X.State. T&. T& U&. U&)
   ))
   :qid internal_test_crate!X.State./State_constructor_definition
   :skolemid skolem_internal_test_crate!X.State./State_constructor_definition
)))
(assert
 (forall ((x test_crate!X.State.)) (!
   (= (test_crate!X.State./State/x x) (test_crate!X.State./State/?x x))
   :pattern ((test_crate!X.State./State/x x))
   :qid internal_test_crate!X.State./State/x_accessor_definition
   :skolemid skolem_internal_test_crate!X.State./State/x_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%test_crate!X.State. T&. T& U&. U&))
    (has_type (test_crate!X.State./State/x (%Poly%test_crate!X.State. x)) T&)
   )
   :pattern ((test_crate!X.State./State/x (%Poly%test_crate!X.State. x)) (has_type x (
      TYPE%test_crate!X.State. T&. T& U&. U&
   )))
   :qid internal_test_crate!X.State./State/x_invariant_definition
   :skolemid skolem_internal_test_crate!X.State./State/x_invariant_definition
)))
(assert
 (forall ((x test_crate!X.State.)) (!
   (= (test_crate!X.State./State/y x) (test_crate!X.State./State/?y x))
   :pattern ((test_crate!X.State./State/y x))
   :qid internal_test_crate!X.State./State/y_accessor_definition
   :skolemid skolem_internal_test_crate!X.State./State/y_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%test_crate!X.State. T&. T& U&. U&))
    (has_type (test_crate!X.State./State/y (%Poly%test_crate!X.State. x)) U&)
   )
   :pattern ((test_crate!X.State./State/y (%Poly%test_crate!X.State. x)) (has_type x (
      TYPE%test_crate!X.State. T&. T& U&. U&
   )))
   :qid internal_test_crate!X.State./State/y_invariant_definition
   :skolemid skolem_internal_test_crate!X.State./State/y_invariant_definition
)))
(assert
 (forall ((x test_crate!X.State.)) (!
   (=>
    (is-test_crate!X.State./State x)
    (height_lt (height (test_crate!X.State./State/x x)) (height (Poly%test_crate!X.State.
       x
   ))))
   :pattern ((height (test_crate!X.State./State/x x)))
   :qid prelude_datatype_height_test_crate!X.State./State/x
   :skolemid skolem_prelude_datatype_height_test_crate!X.State./State/x
)))
(assert
 (forall ((x test_crate!X.State.)) (!
   (=>
    (is-test_crate!X.State./State x)
    (height_lt (height (test_crate!X.State./State/y x)) (height (Poly%test_crate!X.State.
       x
   ))))
   :pattern ((height (test_crate!X.State./State/y x)))
   :qid prelude_datatype_height_test_crate!X.State./State/y
   :skolemid skolem_prelude_datatype_height_test_crate!X.State./State/y
)))
(assert
 (forall ((x test_crate!X.Step.)) (!
   (= x (%Poly%test_crate!X.Step. (Poly%test_crate!X.Step. x)))
   :pattern ((Poly%test_crate!X.Step. x))
   :qid internal_test_crate__X__Step_box_axiom_definition
   :skolemid skolem_internal_test_crate__X__Step_box_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%test_crate!X.Step. T&. T& U&. U&))
    (= x (Poly%test_crate!X.Step. (%Poly%test_crate!X.Step. x)))
   )
   :pattern ((has_type x (TYPE%test_crate!X.Step. T&. T& U&. U&)))
   :qid internal_test_crate__X__Step_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__X__Step_unbox_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type)) (!
   (has_type (Poly%test_crate!X.Step. test_crate!X.Step./f) (TYPE%test_crate!X.Step. T&.
     T& U&. U&
   ))
   :pattern ((has_type (Poly%test_crate!X.Step. test_crate!X.Step./f) (TYPE%test_crate!X.Step.
      T&. T& U&. U&
   )))
   :qid internal_test_crate!X.Step./f_constructor_definition
   :skolemid skolem_internal_test_crate!X.Step./f_constructor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (_0! test_crate!X.State.)) (!
   (=>
    (has_type (Poly%test_crate!X.State. _0!) (TYPE%test_crate!X.State. T&. T& U&. U&))
    (has_type (Poly%test_crate!X.Step. (test_crate!X.Step./dummy_to_use_type_params _0!))
     (TYPE%test_crate!X.Step. T&. T& U&. U&)
   ))
   :pattern ((has_type (Poly%test_crate!X.Step. (test_crate!X.Step./dummy_to_use_type_params
       _0!
      )
     ) (TYPE%test_crate!X.Step. T&. T& U&. U&)
   ))
   :qid internal_test_crate!X.Step./dummy_to_use_type_params_constructor_definition
   :skolemid skolem_internal_test_crate!X.Step./dummy_to_use_type_params_constructor_definition
)))
(assert
 (forall ((x test_crate!X.Step.)) (!
   (= (test_crate!X.Step./dummy_to_use_type_params/0 x) (test_crate!X.Step./dummy_to_use_type_params/?0
     x
   ))
   :pattern ((test_crate!X.Step./dummy_to_use_type_params/0 x))
   :qid internal_test_crate!X.Step./dummy_to_use_type_params/0_accessor_definition
   :skolemid skolem_internal_test_crate!X.Step./dummy_to_use_type_params/0_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%test_crate!X.Step. T&. T& U&. U&))
    (has_type (Poly%test_crate!X.State. (test_crate!X.Step./dummy_to_use_type_params/0 (
        %Poly%test_crate!X.Step. x
      ))
     ) (TYPE%test_crate!X.State. T&. T& U&. U&)
   ))
   :pattern ((test_crate!X.Step./dummy_to_use_type_params/0 (%Poly%test_crate!X.Step. x))
    (has_type x (TYPE%test_crate!X.Step. T&. T& U&. U&))
   )
   :qid internal_test_crate!X.Step./dummy_to_use_type_params/0_invariant_definition
   :skolemid skolem_internal_test_crate!X.Step./dummy_to_use_type_params/0_invariant_definition
)))
(assert
 (forall ((x test_crate!X.Step.)) (!
   (=>
    (is-test_crate!X.Step./dummy_to_use_type_params x)
    (height_lt (height (Poly%test_crate!X.State. (test_crate!X.Step./dummy_to_use_type_params/0
        x
      ))
     ) (height (Poly%test_crate!X.Step. x))
   ))
   :pattern ((height (Poly%test_crate!X.State. (test_crate!X.Step./dummy_to_use_type_params/0
       x
   ))))
   :qid prelude_datatype_height_test_crate!X.Step./dummy_to_use_type_params/0
   :skolemid skolem_prelude_datatype_height_test_crate!X.Step./dummy_to_use_type_params/0
)))
(assert
 (forall ((x test_crate!X.Config.)) (!
   (= x (%Poly%test_crate!X.Config. (Poly%test_crate!X.Config. x)))
   :pattern ((Poly%test_crate!X.Config. x))
   :qid internal_test_crate__X__Config_box_axiom_definition
   :skolemid skolem_internal_test_crate__X__Config_box_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%test_crate!X.Config. T&. T& U&. U&))
    (= x (Poly%test_crate!X.Config. (%Poly%test_crate!X.Config. x)))
   )
   :pattern ((has_type x (TYPE%test_crate!X.Config. T&. T& U&. U&)))
   :qid internal_test_crate__X__Config_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__X__Config_unbox_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (_0! Poly) (_1! Poly)) (!
   (=>
    (and
     (has_type _0! T&)
     (has_type _1! U&)
    )
    (has_type (Poly%test_crate!X.Config. (test_crate!X.Config./g _0! _1!)) (TYPE%test_crate!X.Config.
      T&. T& U&. U&
   )))
   :pattern ((has_type (Poly%test_crate!X.Config. (test_crate!X.Config./g _0! _1!)) (TYPE%test_crate!X.Config.
      T&. T& U&. U&
   )))
   :qid internal_test_crate!X.Config./g_constructor_definition
   :skolemid skolem_internal_test_crate!X.Config./g_constructor_definition
)))
(assert
 (forall ((x test_crate!X.Config.)) (!
   (= (test_crate!X.Config./g/0 x) (test_crate!X.Config./g/?0 x))
   :pattern ((test_crate!X.Config./g/0 x))
   :qid internal_test_crate!X.Config./g/0_accessor_definition
   :skolemid skolem_internal_test_crate!X.Config./g/0_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%test_crate!X.Config. T&. T& U&. U&))
    (has_type (test_crate!X.Config./g/0 (%Poly%test_crate!X.Config. x)) T&)
   )
   :pattern ((test_crate!X.Config./g/0 (%Poly%test_crate!X.Config. x)) (has_type x (TYPE%test_crate!X.Config.
      T&. T& U&. U&
   )))
   :qid internal_test_crate!X.Config./g/0_invariant_definition
   :skolemid skolem_internal_test_crate!X.Config./g/0_invariant_definition
)))
(assert
 (forall ((x test_crate!X.Config.)) (!
   (= (test_crate!X.Config./g/1 x) (test_crate!X.Config./g/?1 x))
   :pattern ((test_crate!X.Config./g/1 x))
   :qid internal_test_crate!X.Config./g/1_accessor_definition
   :skolemid skolem_internal_test_crate!X.Config./g/1_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%test_crate!X.Config. T&. T& U&. U&))
    (has_type (test_crate!X.Config./g/1 (%Poly%test_crate!X.Config. x)) U&)
   )
   :pattern ((test_crate!X.Config./g/1 (%Poly%test_crate!X.Config. x)) (has_type x (TYPE%test_crate!X.Config.
      T&. T& U&. U&
   )))
   :qid internal_test_crate!X.Config./g/1_invariant_definition
   :skolemid skolem_internal_test_crate!X.Config./g/1_invariant_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (_0! test_crate!X.State.)) (!
   (=>
    (has_type (Poly%test_crate!X.State. _0!) (TYPE%test_crate!X.State. T&. T& U&. U&))
    (has_type (Poly%test_crate!X.Config. (test_crate!X.Config./dummy_to_use_type_params
       _0!
      )
     ) (TYPE%test_crate!X.Config. T&. T& U&. U&)
   ))
   :pattern ((has_type (Poly%test_crate!X.Config. (test_crate!X.Config./dummy_to_use_type_params
       _0!
      )
     ) (TYPE%test_crate!X.Config. T&. T& U&. U&)
   ))
   :qid internal_test_crate!X.Config./dummy_to_use_type_params_constructor_definition
   :skolemid skolem_internal_test_crate!X.Config./dummy_to_use_type_params_constructor_definition
)))
(assert
 (forall ((x test_crate!X.Config.)) (!
   (= (test_crate!X.Config./dummy_to_use_type_params/0 x) (test_crate!X.Config./dummy_to_use_type_params/?0
     x
   ))
   :pattern ((test_crate!X.Config./dummy_to_use_type_params/0 x))
   :qid internal_test_crate!X.Config./dummy_to_use_type_params/0_accessor_definition
   :skolemid skolem_internal_test_crate!X.Config./dummy_to_use_type_params/0_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%test_crate!X.Config. T&. T& U&. U&))
    (has_type (Poly%test_crate!X.State. (test_crate!X.Config./dummy_to_use_type_params/0
       (%Poly%test_crate!X.Config. x)
      )
     ) (TYPE%test_crate!X.State. T&. T& U&. U&)
   ))
   :pattern ((test_crate!X.Config./dummy_to_use_type_params/0 (%Poly%test_crate!X.Config.
      x
     )
    ) (has_type x (TYPE%test_crate!X.Config. T&. T& U&. U&))
   )
   :qid internal_test_crate!X.Config./dummy_to_use_type_params/0_invariant_definition
   :skolemid skolem_internal_test_crate!X.Config./dummy_to_use_type_params/0_invariant_definition
)))
(assert
 (forall ((x test_crate!X.Config.)) (!
   (=>
    (is-test_crate!X.Config./g x)
    (height_lt (height (test_crate!X.Config./g/0 x)) (height (Poly%test_crate!X.Config.
       x
   ))))
   :pattern ((height (test_crate!X.Config./g/0 x)))
   :qid prelude_datatype_height_test_crate!X.Config./g/0
   :skolemid skolem_prelude_datatype_height_test_crate!X.Config./g/0
)))
(assert
 (forall ((x test_crate!X.Config.)) (!
   (=>
    (is-test_crate!X.Config./g x)
    (height_lt (height (test_crate!X.Config./g/1 x)) (height (Poly%test_crate!X.Config.
       x
   ))))
   :pattern ((height (test_crate!X.Config./g/1 x)))
   :qid prelude_datatype_height_test_crate!X.Config./g/1
   :skolemid skolem_prelude_datatype_height_test_crate!X.Config./g/1
)))
(assert
 (forall ((x test_crate!X.Config.)) (!
   (=>
    (is-test_crate!X.Config./dummy_to_use_type_params x)
    (height_lt (height (Poly%test_crate!X.State. (test_crate!X.Config./dummy_to_use_type_params/0
        x
      ))
     ) (height (Poly%test_crate!X.Config. x))
   ))
   :pattern ((height (Poly%test_crate!X.State. (test_crate!X.Config./dummy_to_use_type_params/0
       x
   ))))
   :qid prelude_datatype_height_test_crate!X.Config./dummy_to_use_type_params/0
   :skolemid skolem_prelude_datatype_height_test_crate!X.Config./dummy_to_use_type_params/0
)))

;; Function-Decl test_crate::X::State::f
(declare-fun test_crate!X.impl&%4.f.? (Dcr Type Dcr Type Poly Poly Poly) Bool)

;; Function-Decl test_crate::X::State::next_by
(declare-fun test_crate!X.impl&%4.next_by.? (Dcr Type Dcr Type Poly Poly Poly Poly)
 Bool
)

;; Function-Decl test_crate::X::State::next
(declare-fun test_crate!X.impl&%4.next.? (Dcr Type Dcr Type Poly Poly Poly) Bool)

;; Function-Decl test_crate::X::State::g
(declare-fun test_crate!X.impl&%4.g.? (Dcr Type Dcr Type Poly Poly Poly Poly) Bool)

;; Function-Decl test_crate::X::State::init_by
(declare-fun test_crate!X.impl&%4.init_by.? (Dcr Type Dcr Type Poly Poly Poly) Bool)

;; Function-Decl test_crate::X::State::init
(declare-fun test_crate!X.impl&%4.init.? (Dcr Type Dcr Type Poly Poly) Bool)

;; Function-Decl test_crate::X::Step::arrow_0
(declare-fun test_crate!X.impl&%0.arrow_0.? (Dcr Type Dcr Type Poly) test_crate!X.State.)

;; Function-Decl test_crate::X::Step::arrow_dummy_to_use_type_params_0
(declare-fun test_crate!X.impl&%0.arrow_dummy_to_use_type_params_0.? (Dcr Type Dcr
  Type Poly
 ) test_crate!X.State.
)

;; Function-Decl test_crate::X::Step::is_f
(declare-fun test_crate!X.impl&%1.is_f.? (Dcr Type Dcr Type Poly) Bool)

;; Function-Decl test_crate::X::Step::is_dummy_to_use_type_params
(declare-fun test_crate!X.impl&%1.is_dummy_to_use_type_params.? (Dcr Type Dcr Type
  Poly
 ) Bool
)

;; Function-Decl test_crate::X::Step::get_dummy_to_use_type_params_0
(declare-fun test_crate!X.impl&%1.get_dummy_to_use_type_params_0.? (Dcr Type Dcr Type
  Poly
 ) test_crate!X.State.
)

;; Function-Decl test_crate::X::Config::arrow_1
(declare-fun test_crate!X.impl&%2.arrow_1.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl test_crate::X::Config::arrow_g_0
(declare-fun test_crate!X.impl&%2.arrow_g_0.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl test_crate::X::Config::arrow_g_1
(declare-fun test_crate!X.impl&%2.arrow_g_1.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl test_crate::X::Config::arrow_dummy_to_use_type_params_0
(declare-fun test_crate!X.impl&%2.arrow_dummy_to_use_type_params_0.? (Dcr Type Dcr
  Type Poly
 ) test_crate!X.State.
)

;; Function-Decl test_crate::X::Config::is_g
(declare-fun test_crate!X.impl&%3.is_g.? (Dcr Type Dcr Type Poly) Bool)

;; Function-Decl test_crate::X::Config::get_g_0
(declare-fun test_crate!X.impl&%3.get_g_0.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl test_crate::X::Config::get_g_1
(declare-fun test_crate!X.impl&%3.get_g_1.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl test_crate::X::Config::is_dummy_to_use_type_params
(declare-fun test_crate!X.impl&%3.is_dummy_to_use_type_params.? (Dcr Type Dcr Type
  Poly
 ) Bool
)

;; Function-Decl test_crate::X::Config::get_dummy_to_use_type_params_0
(declare-fun test_crate!X.impl&%3.get_dummy_to_use_type_params_0.? (Dcr Type Dcr Type
  Poly
 ) test_crate!X.State.
)

;; Function-Decl test_crate::X::State::g_enabled
(declare-fun test_crate!X.impl&%4.g_enabled.? (Dcr Type Dcr Type Poly Poly Poly) Bool)

;; Function-Decl test_crate::X::State::f_strong
(declare-fun test_crate!X.impl&%4.f_strong.? (Dcr Type Dcr Type Poly Poly Poly) Bool)

;; Function-Decl test_crate::X::State::f_enabled
(declare-fun test_crate!X.impl&%4.f_enabled.? (Dcr Type Dcr Type Poly Poly) Bool)

;; Function-Decl test_crate::X::State::next_strong_by
(declare-fun test_crate!X.impl&%4.next_strong_by.? (Dcr Type Dcr Type Poly Poly Poly
  Poly
 ) Bool
)

;; Function-Decl test_crate::X::State::next_strong
(declare-fun test_crate!X.impl&%4.next_strong.? (Dcr Type Dcr Type Poly Poly Poly)
 Bool
)

;; Function-Decl test_crate::X::State::invariant
(declare-fun test_crate!X.impl&%4.invariant.? (Dcr Type Dcr Type Poly) Bool)

;; Function-Axioms test_crate::X::State::f
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%4.f.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.f.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (pre! Poly) (post! Poly) (l! Poly))
   (!
    (= (test_crate!X.impl&%4.f.? T&. T& U&. U& pre! post! l!) (let
      ((update_tmp_x$ (test_crate!X.State./State/x (%Poly%test_crate!X.State. pre!))))
      (let
       ((update_tmp_y$ (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!))))
       (and
        (= (test_crate!X.State./State/y (%Poly%test_crate!X.State. post!)) update_tmp_y$)
        (= (test_crate!X.State./State/x (%Poly%test_crate!X.State. post!)) update_tmp_x$)
    ))))
    :pattern ((test_crate!X.impl&%4.f.? T&. T& U&. U& pre! post! l!))
    :qid internal_test_crate!X.impl&__4.f.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.f.?_definition
))))

;; Function-Axioms test_crate::X::State::next_by
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.next_by.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (pre! Poly) (post! Poly) (label! Poly)
    (step! Poly)
   ) (!
    (= (test_crate!X.impl&%4.next_by.? T&. T& U&. U& pre! post! label! step!) (and
      (is-test_crate!X.Step./f (%Poly%test_crate!X.Step. step!))
      (test_crate!X.impl&%4.f.? T&. T& U&. U& pre! post! label!)
    ))
    :pattern ((test_crate!X.impl&%4.next_by.? T&. T& U&. U& pre! post! label! step!))
    :qid internal_test_crate!X.impl&__4.next_by.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.next_by.?_definition
))))

;; Function-Axioms test_crate::X::State::next
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.next.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (pre! Poly) (post! Poly) (label! Poly))
   (!
    (= (test_crate!X.impl&%4.next.? T&. T& U&. U& pre! post! label!) (exists ((step$ Poly))
      (!
       (and
        (has_type step$ (TYPE%test_crate!X.Step. T&. T& U&. U&))
        (test_crate!X.impl&%4.next_by.? T&. T& U&. U& pre! post! label! step$)
       )
       :pattern ((test_crate!X.impl&%4.next_by.? T&. T& U&. U& pre! post! label! step$))
       :qid user_test_crate__X__State__next_0
       :skolemid skolem_user_test_crate__X__State__next_0
    )))
    :pattern ((test_crate!X.impl&%4.next.? T&. T& U&. U& pre! post! label!))
    :qid internal_test_crate!X.impl&__4.next.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.next.?_definition
))))

;; Function-Axioms test_crate::X::State::g
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%4.g.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.g.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (post! Poly) (l! Poly) (t! Poly) (
     u! Poly
    )
   ) (!
    (= (test_crate!X.impl&%4.g.? T&. T& U&. U& post! l! t! u!) (let
      ((update_tmp_x$ t!))
      (let
       ((update_tmp_y$ u!))
       (and
        (= (test_crate!X.State./State/y (%Poly%test_crate!X.State. post!)) update_tmp_y$)
        (= (test_crate!X.State./State/x (%Poly%test_crate!X.State. post!)) update_tmp_x$)
    ))))
    :pattern ((test_crate!X.impl&%4.g.? T&. T& U&. U& post! l! t! u!))
    :qid internal_test_crate!X.impl&__4.g.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.g.?_definition
))))

;; Function-Axioms test_crate::X::State::init_by
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.init_by.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (post! Poly) (init_label! Poly) (step!
     Poly
    )
   ) (!
    (= (test_crate!X.impl&%4.init_by.? T&. T& U&. U& post! init_label! step!) (and
      (is-test_crate!X.Config./g (%Poly%test_crate!X.Config. step!))
      (let
       ((t$ (test_crate!X.Config./g/0 (%Poly%test_crate!X.Config. step!))))
       (let
        ((u$ (test_crate!X.Config./g/1 (%Poly%test_crate!X.Config. step!))))
        (test_crate!X.impl&%4.g.? T&. T& U&. U& post! init_label! t$ u$)
    ))))
    :pattern ((test_crate!X.impl&%4.init_by.? T&. T& U&. U& post! init_label! step!))
    :qid internal_test_crate!X.impl&__4.init_by.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.init_by.?_definition
))))

;; Function-Axioms test_crate::X::State::init
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.init.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (post! Poly) (init_label! Poly))
   (!
    (= (test_crate!X.impl&%4.init.? T&. T& U&. U& post! init_label!) (exists ((step$ Poly))
      (!
       (and
        (has_type step$ (TYPE%test_crate!X.Config. T&. T& U&. U&))
        (test_crate!X.impl&%4.init_by.? T&. T& U&. U& post! init_label! step$)
       )
       :pattern ((test_crate!X.impl&%4.init_by.? T&. T& U&. U& post! init_label! step$))
       :qid user_test_crate__X__State__init_1
       :skolemid skolem_user_test_crate__X__State__init_1
    )))
    :pattern ((test_crate!X.impl&%4.init.? T&. T& U&. U& post! init_label!))
    :qid internal_test_crate!X.impl&__4.init.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.init.?_definition
))))

;; Function-Axioms test_crate::X::Step::arrow_0
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%0.arrow_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%0.arrow_0.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (self! Poly)) (!
    (= (test_crate!X.impl&%0.arrow_0.? T&. T& U&. U& self!) (test_crate!X.Step./dummy_to_use_type_params/0
      (%Poly%test_crate!X.Step. self!)
    ))
    :pattern ((test_crate!X.impl&%0.arrow_0.? T&. T& U&. U& self!))
    :qid internal_test_crate!X.impl&__0.arrow_0.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__0.arrow_0.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%test_crate!X.Step. T&. T& U&. U&))
    (has_type (Poly%test_crate!X.State. (test_crate!X.impl&%0.arrow_0.? T&. T& U&. U& self!))
     (TYPE%test_crate!X.State. T&. T& U&. U&)
   ))
   :pattern ((test_crate!X.impl&%0.arrow_0.? T&. T& U&. U& self!))
   :qid internal_test_crate!X.impl&__0.arrow_0.?_pre_post_definition
   :skolemid skolem_internal_test_crate!X.impl&__0.arrow_0.?_pre_post_definition
)))

;; Function-Axioms test_crate::X::Step::arrow_dummy_to_use_type_params_0
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%0.arrow_dummy_to_use_type_params_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%0.arrow_dummy_to_use_type_params_0.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (self! Poly)) (!
    (= (test_crate!X.impl&%0.arrow_dummy_to_use_type_params_0.? T&. T& U&. U& self!) (
      test_crate!X.Step./dummy_to_use_type_params/0 (%Poly%test_crate!X.Step. self!)
    ))
    :pattern ((test_crate!X.impl&%0.arrow_dummy_to_use_type_params_0.? T&. T& U&. U& self!))
    :qid internal_test_crate!X.impl&__0.arrow_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__0.arrow_dummy_to_use_type_params_0.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%test_crate!X.Step. T&. T& U&. U&))
    (has_type (Poly%test_crate!X.State. (test_crate!X.impl&%0.arrow_dummy_to_use_type_params_0.?
       T&. T& U&. U& self!
      )
     ) (TYPE%test_crate!X.State. T&. T& U&. U&)
   ))
   :pattern ((test_crate!X.impl&%0.arrow_dummy_to_use_type_params_0.? T&. T& U&. U& self!))
   :qid internal_test_crate!X.impl&__0.arrow_dummy_to_use_type_params_0.?_pre_post_definition
   :skolemid skolem_internal_test_crate!X.impl&__0.arrow_dummy_to_use_type_params_0.?_pre_post_definition
)))

;; Function-Axioms test_crate::X::Step::is_f
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%1.is_f.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%1.is_f.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (self! Poly)) (!
    (= (test_crate!X.impl&%1.is_f.? T&. T& U&. U& self!) (is-test_crate!X.Step./f (%Poly%test_crate!X.Step.
       self!
    )))
    :pattern ((test_crate!X.impl&%1.is_f.? T&. T& U&. U& self!))
    :qid internal_test_crate!X.impl&__1.is_f.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__1.is_f.?_definition
))))

;; Function-Axioms test_crate::X::Step::is_dummy_to_use_type_params
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%1.is_dummy_to_use_type_params.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%1.is_dummy_to_use_type_params.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (self! Poly)) (!
    (= (test_crate!X.impl&%1.is_dummy_to_use_type_params.? T&. T& U&. U& self!) (is-test_crate!X.Step./dummy_to_use_type_params
      (%Poly%test_crate!X.Step. self!)
    ))
    :pattern ((test_crate!X.impl&%1.is_dummy_to_use_type_params.? T&. T& U&. U& self!))
    :qid internal_test_crate!X.impl&__1.is_dummy_to_use_type_params.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__1.is_dummy_to_use_type_params.?_definition
))))

;; Function-Axioms test_crate::X::Step::get_dummy_to_use_type_params_0
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%1.get_dummy_to_use_type_params_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%1.get_dummy_to_use_type_params_0.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (self! Poly)) (!
    (= (test_crate!X.impl&%1.get_dummy_to_use_type_params_0.? T&. T& U&. U& self!) (test_crate!X.Step./dummy_to_use_type_params/0
      (%Poly%test_crate!X.Step. self!)
    ))
    :pattern ((test_crate!X.impl&%1.get_dummy_to_use_type_params_0.? T&. T& U&. U& self!))
    :qid internal_test_crate!X.impl&__1.get_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__1.get_dummy_to_use_type_params_0.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%test_crate!X.Step. T&. T& U&. U&))
    (has_type (Poly%test_crate!X.State. (test_crate!X.impl&%1.get_dummy_to_use_type_params_0.?
       T&. T& U&. U& self!
      )
     ) (TYPE%test_crate!X.State. T&. T& U&. U&)
   ))
   :pattern ((test_crate!X.impl&%1.get_dummy_to_use_type_params_0.? T&. T& U&. U& self!))
   :qid internal_test_crate!X.impl&__1.get_dummy_to_use_type_params_0.?_pre_post_definition
   :skolemid skolem_internal_test_crate!X.impl&__1.get_dummy_to_use_type_params_0.?_pre_post_definition
)))

;; Function-Axioms test_crate::X::Config::arrow_1
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%2.arrow_1.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%2.arrow_1.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (self! Poly)) (!
    (= (test_crate!X.impl&%2.arrow_1.? T&. T& U&. U& self!) (test_crate!X.Config./g/1 (
       %Poly%test_crate!X.Config. self!
    )))
    :pattern ((test_crate!X.impl&%2.arrow_1.? T&. T& U&. U& self!))
    :qid internal_test_crate!X.impl&__2.arrow_1.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__2.arrow_1.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%test_crate!X.Config. T&. T& U&. U&))
    (has_type (test_crate!X.impl&%2.arrow_1.? T&. T& U&. U& self!) U&)
   )
   :pattern ((test_crate!X.impl&%2.arrow_1.? T&. T& U&. U& self!))
   :qid internal_test_crate!X.impl&__2.arrow_1.?_pre_post_definition
   :skolemid skolem_internal_test_crate!X.impl&__2.arrow_1.?_pre_post_definition
)))

;; Function-Axioms test_crate::X::Config::arrow_g_0
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%2.arrow_g_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%2.arrow_g_0.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (self! Poly)) (!
    (= (test_crate!X.impl&%2.arrow_g_0.? T&. T& U&. U& self!) (test_crate!X.Config./g/0
      (%Poly%test_crate!X.Config. self!)
    ))
    :pattern ((test_crate!X.impl&%2.arrow_g_0.? T&. T& U&. U& self!))
    :qid internal_test_crate!X.impl&__2.arrow_g_0.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__2.arrow_g_0.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%test_crate!X.Config. T&. T& U&. U&))
    (has_type (test_crate!X.impl&%2.arrow_g_0.? T&. T& U&. U& self!) T&)
   )
   :pattern ((test_crate!X.impl&%2.arrow_g_0.? T&. T& U&. U& self!))
   :qid internal_test_crate!X.impl&__2.arrow_g_0.?_pre_post_definition
   :skolemid skolem_internal_test_crate!X.impl&__2.arrow_g_0.?_pre_post_definition
)))

;; Function-Axioms test_crate::X::Config::arrow_g_1
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%2.arrow_g_1.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%2.arrow_g_1.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (self! Poly)) (!
    (= (test_crate!X.impl&%2.arrow_g_1.? T&. T& U&. U& self!) (test_crate!X.Config./g/1
      (%Poly%test_crate!X.Config. self!)
    ))
    :pattern ((test_crate!X.impl&%2.arrow_g_1.? T&. T& U&. U& self!))
    :qid internal_test_crate!X.impl&__2.arrow_g_1.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__2.arrow_g_1.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%test_crate!X.Config. T&. T& U&. U&))
    (has_type (test_crate!X.impl&%2.arrow_g_1.? T&. T& U&. U& self!) U&)
   )
   :pattern ((test_crate!X.impl&%2.arrow_g_1.? T&. T& U&. U& self!))
   :qid internal_test_crate!X.impl&__2.arrow_g_1.?_pre_post_definition
   :skolemid skolem_internal_test_crate!X.impl&__2.arrow_g_1.?_pre_post_definition
)))

;; Function-Axioms test_crate::X::Config::arrow_dummy_to_use_type_params_0
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%2.arrow_dummy_to_use_type_params_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%2.arrow_dummy_to_use_type_params_0.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (self! Poly)) (!
    (= (test_crate!X.impl&%2.arrow_dummy_to_use_type_params_0.? T&. T& U&. U& self!) (
      test_crate!X.Config./dummy_to_use_type_params/0 (%Poly%test_crate!X.Config. self!)
    ))
    :pattern ((test_crate!X.impl&%2.arrow_dummy_to_use_type_params_0.? T&. T& U&. U& self!))
    :qid internal_test_crate!X.impl&__2.arrow_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__2.arrow_dummy_to_use_type_params_0.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%test_crate!X.Config. T&. T& U&. U&))
    (has_type (Poly%test_crate!X.State. (test_crate!X.impl&%2.arrow_dummy_to_use_type_params_0.?
       T&. T& U&. U& self!
      )
     ) (TYPE%test_crate!X.State. T&. T& U&. U&)
   ))
   :pattern ((test_crate!X.impl&%2.arrow_dummy_to_use_type_params_0.? T&. T& U&. U& self!))
   :qid internal_test_crate!X.impl&__2.arrow_dummy_to_use_type_params_0.?_pre_post_definition
   :skolemid skolem_internal_test_crate!X.impl&__2.arrow_dummy_to_use_type_params_0.?_pre_post_definition
)))

;; Function-Axioms test_crate::X::Config::is_g
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%3.is_g.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%3.is_g.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (self! Poly)) (!
    (= (test_crate!X.impl&%3.is_g.? T&. T& U&. U& self!) (is-test_crate!X.Config./g (%Poly%test_crate!X.Config.
       self!
    )))
    :pattern ((test_crate!X.impl&%3.is_g.? T&. T& U&. U& self!))
    :qid internal_test_crate!X.impl&__3.is_g.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__3.is_g.?_definition
))))

;; Function-Axioms test_crate::X::Config::get_g_0
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%3.get_g_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%3.get_g_0.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (self! Poly)) (!
    (= (test_crate!X.impl&%3.get_g_0.? T&. T& U&. U& self!) (test_crate!X.Config./g/0 (
       %Poly%test_crate!X.Config. self!
    )))
    :pattern ((test_crate!X.impl&%3.get_g_0.? T&. T& U&. U& self!))
    :qid internal_test_crate!X.impl&__3.get_g_0.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__3.get_g_0.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%test_crate!X.Config. T&. T& U&. U&))
    (has_type (test_crate!X.impl&%3.get_g_0.? T&. T& U&. U& self!) T&)
   )
   :pattern ((test_crate!X.impl&%3.get_g_0.? T&. T& U&. U& self!))
   :qid internal_test_crate!X.impl&__3.get_g_0.?_pre_post_definition
   :skolemid skolem_internal_test_crate!X.impl&__3.get_g_0.?_pre_post_definition
)))

;; Function-Axioms test_crate::X::Config::get_g_1
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%3.get_g_1.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%3.get_g_1.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (self! Poly)) (!
    (= (test_crate!X.impl&%3.get_g_1.? T&. T& U&. U& self!) (test_crate!X.Config./g/1 (
       %Poly%test_crate!X.Config. self!
    )))
    :pattern ((test_crate!X.impl&%3.get_g_1.? T&. T& U&. U& self!))
    :qid internal_test_crate!X.impl&__3.get_g_1.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__3.get_g_1.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%test_crate!X.Config. T&. T& U&. U&))
    (has_type (test_crate!X.impl&%3.get_g_1.? T&. T& U&. U& self!) U&)
   )
   :pattern ((test_crate!X.impl&%3.get_g_1.? T&. T& U&. U& self!))
   :qid internal_test_crate!X.impl&__3.get_g_1.?_pre_post_definition
   :skolemid skolem_internal_test_crate!X.impl&__3.get_g_1.?_pre_post_definition
)))

;; Function-Axioms test_crate::X::Config::is_dummy_to_use_type_params
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%3.is_dummy_to_use_type_params.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%3.is_dummy_to_use_type_params.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (self! Poly)) (!
    (= (test_crate!X.impl&%3.is_dummy_to_use_type_params.? T&. T& U&. U& self!) (is-test_crate!X.Config./dummy_to_use_type_params
      (%Poly%test_crate!X.Config. self!)
    ))
    :pattern ((test_crate!X.impl&%3.is_dummy_to_use_type_params.? T&. T& U&. U& self!))
    :qid internal_test_crate!X.impl&__3.is_dummy_to_use_type_params.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__3.is_dummy_to_use_type_params.?_definition
))))

;; Function-Axioms test_crate::X::Config::get_dummy_to_use_type_params_0
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%3.get_dummy_to_use_type_params_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%3.get_dummy_to_use_type_params_0.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (self! Poly)) (!
    (= (test_crate!X.impl&%3.get_dummy_to_use_type_params_0.? T&. T& U&. U& self!) (test_crate!X.Config./dummy_to_use_type_params/0
      (%Poly%test_crate!X.Config. self!)
    ))
    :pattern ((test_crate!X.impl&%3.get_dummy_to_use_type_params_0.? T&. T& U&. U& self!))
    :qid internal_test_crate!X.impl&__3.get_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__3.get_dummy_to_use_type_params_0.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%test_crate!X.Config. T&. T& U&. U&))
    (has_type (Poly%test_crate!X.State. (test_crate!X.impl&%3.get_dummy_to_use_type_params_0.?
       T&. T& U&. U& self!
      )
     ) (TYPE%test_crate!X.State. T&. T& U&. U&)
   ))
   :pattern ((test_crate!X.impl&%3.get_dummy_to_use_type_params_0.? T&. T& U&. U& self!))
   :qid internal_test_crate!X.impl&__3.get_dummy_to_use_type_params_0.?_pre_post_definition
   :skolemid skolem_internal_test_crate!X.impl&__3.get_dummy_to_use_type_params_0.?_pre_post_definition
)))

;; Function-Axioms test_crate::X::State::g_enabled
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%4.g_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.g_enabled.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (l! Poly) (t! Poly) (u! Poly)) (!
    (= (test_crate!X.impl&%4.g_enabled.? T&. T& U&. U& l! t! u!) true)
    :pattern ((test_crate!X.impl&%4.g_enabled.? T&. T& U&. U& l! t! u!))
    :qid internal_test_crate!X.impl&__4.g_enabled.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.g_enabled.?_definition
))))

;; Function-Axioms test_crate::X::State::f_strong
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%4.f_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.f_strong.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (pre! Poly) (post! Poly) (l! Poly))
   (!
    (= (test_crate!X.impl&%4.f_strong.? T&. T& U&. U& pre! post! l!) (let
      ((update_tmp_x$ (test_crate!X.State./State/x (%Poly%test_crate!X.State. pre!))))
      (let
       ((update_tmp_y$ (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!))))
       (and
        (= (test_crate!X.State./State/y (%Poly%test_crate!X.State. post!)) update_tmp_y$)
        (= (test_crate!X.State./State/x (%Poly%test_crate!X.State. post!)) update_tmp_x$)
    ))))
    :pattern ((test_crate!X.impl&%4.f_strong.? T&. T& U&. U& pre! post! l!))
    :qid internal_test_crate!X.impl&__4.f_strong.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.f_strong.?_definition
))))

;; Function-Axioms test_crate::X::State::f_enabled
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%4.f_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.f_enabled.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (pre! Poly) (l! Poly)) (!
    (= (test_crate!X.impl&%4.f_enabled.? T&. T& U&. U& pre! l!) true)
    :pattern ((test_crate!X.impl&%4.f_enabled.? T&. T& U&. U& pre! l!))
    :qid internal_test_crate!X.impl&__4.f_enabled.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.f_enabled.?_definition
))))

;; Function-Axioms test_crate::X::State::next_strong_by
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.next_strong_by.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (pre! Poly) (post! Poly) (label! Poly)
    (step! Poly)
   ) (!
    (= (test_crate!X.impl&%4.next_strong_by.? T&. T& U&. U& pre! post! label! step!) (
      and
      (is-test_crate!X.Step./f (%Poly%test_crate!X.Step. step!))
      (test_crate!X.impl&%4.f_strong.? T&. T& U&. U& pre! post! label!)
    ))
    :pattern ((test_crate!X.impl&%4.next_strong_by.? T&. T& U&. U& pre! post! label! step!))
    :qid internal_test_crate!X.impl&__4.next_strong_by.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.next_strong_by.?_definition
))))

;; Function-Axioms test_crate::X::State::next_strong
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.next_strong.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (pre! Poly) (post! Poly) (label! Poly))
   (!
    (= (test_crate!X.impl&%4.next_strong.? T&. T& U&. U& pre! post! label!) (exists ((step$
        Poly
       )
      ) (!
       (and
        (has_type step$ (TYPE%test_crate!X.Step. T&. T& U&. U&))
        (test_crate!X.impl&%4.next_strong_by.? T&. T& U&. U& pre! post! label! step$)
       )
       :pattern ((test_crate!X.impl&%4.next_strong_by.? T&. T& U&. U& pre! post! label! step$))
       :qid user_test_crate__X__State__next_strong_2
       :skolemid skolem_user_test_crate__X__State__next_strong_2
    )))
    :pattern ((test_crate!X.impl&%4.next_strong.? T&. T& U&. U& pre! post! label!))
    :qid internal_test_crate!X.impl&__4.next_strong.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.next_strong.?_definition
))))

;; Function-Axioms test_crate::X::State::invariant
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%4.invariant.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.invariant.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (self! Poly)) (!
    (= (test_crate!X.impl&%4.invariant.? T&. T& U&. U& self!) true)
    :pattern ((test_crate!X.impl&%4.invariant.? T&. T& U&. U& self!))
    :qid internal_test_crate!X.impl&__4.invariant.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.invariant.?_definition
))))
