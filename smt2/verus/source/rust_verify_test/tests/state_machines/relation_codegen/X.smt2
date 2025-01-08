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
(declare-const fuel%test_crate!X.impl&%0.arrow_tr1_0. FuelId)
(declare-const fuel%test_crate!X.impl&%0.arrow_tr1_1. FuelId)
(declare-const fuel%test_crate!X.impl&%0.arrow_tr2_0. FuelId)
(declare-const fuel%test_crate!X.impl&%0.arrow_tr2_1. FuelId)
(declare-const fuel%test_crate!X.impl&%0.arrow_tr3_0. FuelId)
(declare-const fuel%test_crate!X.impl&%0.arrow_tr3_1. FuelId)
(declare-const fuel%test_crate!X.impl&%0.arrow_dummy_to_use_type_params_0. FuelId)
(declare-const fuel%test_crate!X.impl&%1.is_tr1. FuelId)
(declare-const fuel%test_crate!X.impl&%1.get_tr1_0. FuelId)
(declare-const fuel%test_crate!X.impl&%1.get_tr1_1. FuelId)
(declare-const fuel%test_crate!X.impl&%1.is_tr2. FuelId)
(declare-const fuel%test_crate!X.impl&%1.get_tr2_0. FuelId)
(declare-const fuel%test_crate!X.impl&%1.get_tr2_1. FuelId)
(declare-const fuel%test_crate!X.impl&%1.is_tr3. FuelId)
(declare-const fuel%test_crate!X.impl&%1.get_tr3_0. FuelId)
(declare-const fuel%test_crate!X.impl&%1.get_tr3_1. FuelId)
(declare-const fuel%test_crate!X.impl&%1.is_dummy_to_use_type_params. FuelId)
(declare-const fuel%test_crate!X.impl&%1.get_dummy_to_use_type_params_0. FuelId)
(declare-const fuel%test_crate!X.impl&%2.arrow_2. FuelId)
(declare-const fuel%test_crate!X.impl&%2.arrow_1. FuelId)
(declare-const fuel%test_crate!X.impl&%2.arrow_initialize_0. FuelId)
(declare-const fuel%test_crate!X.impl&%2.arrow_initialize_1. FuelId)
(declare-const fuel%test_crate!X.impl&%2.arrow_initialize_2. FuelId)
(declare-const fuel%test_crate!X.impl&%2.arrow_dummy_to_use_type_params_0. FuelId)
(declare-const fuel%test_crate!X.impl&%3.is_initialize. FuelId)
(declare-const fuel%test_crate!X.impl&%3.get_initialize_0. FuelId)
(declare-const fuel%test_crate!X.impl&%3.get_initialize_1. FuelId)
(declare-const fuel%test_crate!X.impl&%3.get_initialize_2. FuelId)
(declare-const fuel%test_crate!X.impl&%3.is_dummy_to_use_type_params. FuelId)
(declare-const fuel%test_crate!X.impl&%3.get_dummy_to_use_type_params_0. FuelId)
(declare-const fuel%test_crate!X.impl&%4.initialize. FuelId)
(declare-const fuel%test_crate!X.impl&%4.initialize_enabled. FuelId)
(declare-const fuel%test_crate!X.impl&%4.tr1. FuelId)
(declare-const fuel%test_crate!X.impl&%4.tr1_strong. FuelId)
(declare-const fuel%test_crate!X.impl&%4.tr1_enabled. FuelId)
(declare-const fuel%test_crate!X.impl&%4.tr2. FuelId)
(declare-const fuel%test_crate!X.impl&%4.tr2_strong. FuelId)
(declare-const fuel%test_crate!X.impl&%4.tr2_enabled. FuelId)
(declare-const fuel%test_crate!X.impl&%4.tr3. FuelId)
(declare-const fuel%test_crate!X.impl&%4.tr3_strong. FuelId)
(declare-const fuel%test_crate!X.impl&%4.tr3_enabled. FuelId)
(declare-const fuel%test_crate!X.impl&%4.next_by. FuelId)
(declare-const fuel%test_crate!X.impl&%4.next. FuelId)
(declare-const fuel%test_crate!X.impl&%4.next_strong_by. FuelId)
(declare-const fuel%test_crate!X.impl&%4.next_strong. FuelId)
(declare-const fuel%test_crate!X.impl&%4.init_by. FuelId)
(declare-const fuel%test_crate!X.impl&%4.init. FuelId)
(declare-const fuel%test_crate!X.impl&%4.invariant. FuelId)
(declare-const fuel%test_crate!X.impl&%4.the_inv. FuelId)
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
 (distinct fuel%test_crate!X.impl&%0.arrow_tr1_0. fuel%test_crate!X.impl&%0.arrow_tr1_1.
  fuel%test_crate!X.impl&%0.arrow_tr2_0. fuel%test_crate!X.impl&%0.arrow_tr2_1. fuel%test_crate!X.impl&%0.arrow_tr3_0.
  fuel%test_crate!X.impl&%0.arrow_tr3_1. fuel%test_crate!X.impl&%0.arrow_dummy_to_use_type_params_0.
  fuel%test_crate!X.impl&%1.is_tr1. fuel%test_crate!X.impl&%1.get_tr1_0. fuel%test_crate!X.impl&%1.get_tr1_1.
  fuel%test_crate!X.impl&%1.is_tr2. fuel%test_crate!X.impl&%1.get_tr2_0. fuel%test_crate!X.impl&%1.get_tr2_1.
  fuel%test_crate!X.impl&%1.is_tr3. fuel%test_crate!X.impl&%1.get_tr3_0. fuel%test_crate!X.impl&%1.get_tr3_1.
  fuel%test_crate!X.impl&%1.is_dummy_to_use_type_params. fuel%test_crate!X.impl&%1.get_dummy_to_use_type_params_0.
  fuel%test_crate!X.impl&%2.arrow_2. fuel%test_crate!X.impl&%2.arrow_1. fuel%test_crate!X.impl&%2.arrow_initialize_0.
  fuel%test_crate!X.impl&%2.arrow_initialize_1. fuel%test_crate!X.impl&%2.arrow_initialize_2.
  fuel%test_crate!X.impl&%2.arrow_dummy_to_use_type_params_0. fuel%test_crate!X.impl&%3.is_initialize.
  fuel%test_crate!X.impl&%3.get_initialize_0. fuel%test_crate!X.impl&%3.get_initialize_1.
  fuel%test_crate!X.impl&%3.get_initialize_2. fuel%test_crate!X.impl&%3.is_dummy_to_use_type_params.
  fuel%test_crate!X.impl&%3.get_dummy_to_use_type_params_0. fuel%test_crate!X.impl&%4.initialize.
  fuel%test_crate!X.impl&%4.initialize_enabled. fuel%test_crate!X.impl&%4.tr1. fuel%test_crate!X.impl&%4.tr1_strong.
  fuel%test_crate!X.impl&%4.tr1_enabled. fuel%test_crate!X.impl&%4.tr2. fuel%test_crate!X.impl&%4.tr2_strong.
  fuel%test_crate!X.impl&%4.tr2_enabled. fuel%test_crate!X.impl&%4.tr3. fuel%test_crate!X.impl&%4.tr3_strong.
  fuel%test_crate!X.impl&%4.tr3_enabled. fuel%test_crate!X.impl&%4.next_by. fuel%test_crate!X.impl&%4.next.
  fuel%test_crate!X.impl&%4.next_strong_by. fuel%test_crate!X.impl&%4.next_strong.
  fuel%test_crate!X.impl&%4.init_by. fuel%test_crate!X.impl&%4.init. fuel%test_crate!X.impl&%4.invariant.
  fuel%test_crate!X.impl&%4.the_inv. fuel%vstd!array.group_array_axioms. fuel%vstd!map.group_map_axioms.
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
(declare-datatypes ((test_crate!X.State. 0) (test_crate!X.Step. 0) (test_crate!X.Config.
   0
  ) (tuple%0. 0)
 ) (((test_crate!X.State./State (test_crate!X.State./State/?x Int) (test_crate!X.State./State/?y
     Int
    ) (test_crate!X.State./State/?z Int)
   )
  ) ((test_crate!X.Step./tr1 (test_crate!X.Step./tr1/?0 Bool) (test_crate!X.Step./tr1/?1
     Bool
    )
   ) (test_crate!X.Step./tr2 (test_crate!X.Step./tr2/?0 Bool) (test_crate!X.Step./tr2/?1
     Bool
    )
   ) (test_crate!X.Step./tr3 (test_crate!X.Step./tr3/?0 Bool) (test_crate!X.Step./tr3/?1
     Bool
    )
   ) (test_crate!X.Step./dummy_to_use_type_params (test_crate!X.Step./dummy_to_use_type_params/?0
     test_crate!X.State.
   ))
  ) ((test_crate!X.Config./initialize (test_crate!X.Config./initialize/?0 Int) (test_crate!X.Config./initialize/?1
     Int
    ) (test_crate!X.Config./initialize/?2 Int)
   ) (test_crate!X.Config./dummy_to_use_type_params (test_crate!X.Config./dummy_to_use_type_params/?0
     test_crate!X.State.
   ))
  ) ((tuple%0./tuple%0))
))
(declare-fun test_crate!X.State./State/x (test_crate!X.State.) Int)
(declare-fun test_crate!X.State./State/y (test_crate!X.State.) Int)
(declare-fun test_crate!X.State./State/z (test_crate!X.State.) Int)
(declare-fun test_crate!X.Step./tr1/0 (test_crate!X.Step.) Bool)
(declare-fun test_crate!X.Step./tr1/1 (test_crate!X.Step.) Bool)
(declare-fun test_crate!X.Step./tr2/0 (test_crate!X.Step.) Bool)
(declare-fun test_crate!X.Step./tr2/1 (test_crate!X.Step.) Bool)
(declare-fun test_crate!X.Step./tr3/0 (test_crate!X.Step.) Bool)
(declare-fun test_crate!X.Step./tr3/1 (test_crate!X.Step.) Bool)
(declare-fun test_crate!X.Step./dummy_to_use_type_params/0 (test_crate!X.Step.) test_crate!X.State.)
(declare-fun test_crate!X.Config./initialize/0 (test_crate!X.Config.) Int)
(declare-fun test_crate!X.Config./initialize/1 (test_crate!X.Config.) Int)
(declare-fun test_crate!X.Config./initialize/2 (test_crate!X.Config.) Int)
(declare-fun test_crate!X.Config./dummy_to_use_type_params/0 (test_crate!X.Config.)
 test_crate!X.State.
)
(declare-const TYPE%test_crate!X.State. Type)
(declare-const TYPE%test_crate!X.Step. Type)
(declare-const TYPE%test_crate!X.Config. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%test_crate!X.State. (test_crate!X.State.) Poly)
(declare-fun %Poly%test_crate!X.State. (Poly) test_crate!X.State.)
(declare-fun Poly%test_crate!X.Step. (test_crate!X.Step.) Poly)
(declare-fun %Poly%test_crate!X.Step. (Poly) test_crate!X.Step.)
(declare-fun Poly%test_crate!X.Config. (test_crate!X.Config.) Poly)
(declare-fun %Poly%test_crate!X.Config. (Poly) test_crate!X.Config.)
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
 (forall ((x test_crate!X.Step.)) (!
   (= x (%Poly%test_crate!X.Step. (Poly%test_crate!X.Step. x)))
   :pattern ((Poly%test_crate!X.Step. x))
   :qid internal_test_crate__X__Step_box_axiom_definition
   :skolemid skolem_internal_test_crate__X__Step_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!X.Step.)
    (= x (Poly%test_crate!X.Step. (%Poly%test_crate!X.Step. x)))
   )
   :pattern ((has_type x TYPE%test_crate!X.Step.))
   :qid internal_test_crate__X__Step_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__X__Step_unbox_axiom_definition
)))
(assert
 (forall ((x test_crate!X.Step.)) (!
   (= (test_crate!X.Step./tr1/0 x) (test_crate!X.Step./tr1/?0 x))
   :pattern ((test_crate!X.Step./tr1/0 x))
   :qid internal_test_crate!X.Step./tr1/0_accessor_definition
   :skolemid skolem_internal_test_crate!X.Step./tr1/0_accessor_definition
)))
(assert
 (forall ((x test_crate!X.Step.)) (!
   (= (test_crate!X.Step./tr1/1 x) (test_crate!X.Step./tr1/?1 x))
   :pattern ((test_crate!X.Step./tr1/1 x))
   :qid internal_test_crate!X.Step./tr1/1_accessor_definition
   :skolemid skolem_internal_test_crate!X.Step./tr1/1_accessor_definition
)))
(assert
 (forall ((x test_crate!X.Step.)) (!
   (= (test_crate!X.Step./tr2/0 x) (test_crate!X.Step./tr2/?0 x))
   :pattern ((test_crate!X.Step./tr2/0 x))
   :qid internal_test_crate!X.Step./tr2/0_accessor_definition
   :skolemid skolem_internal_test_crate!X.Step./tr2/0_accessor_definition
)))
(assert
 (forall ((x test_crate!X.Step.)) (!
   (= (test_crate!X.Step./tr2/1 x) (test_crate!X.Step./tr2/?1 x))
   :pattern ((test_crate!X.Step./tr2/1 x))
   :qid internal_test_crate!X.Step./tr2/1_accessor_definition
   :skolemid skolem_internal_test_crate!X.Step./tr2/1_accessor_definition
)))
(assert
 (forall ((x test_crate!X.Step.)) (!
   (= (test_crate!X.Step./tr3/0 x) (test_crate!X.Step./tr3/?0 x))
   :pattern ((test_crate!X.Step./tr3/0 x))
   :qid internal_test_crate!X.Step./tr3/0_accessor_definition
   :skolemid skolem_internal_test_crate!X.Step./tr3/0_accessor_definition
)))
(assert
 (forall ((x test_crate!X.Step.)) (!
   (= (test_crate!X.Step./tr3/1 x) (test_crate!X.Step./tr3/?1 x))
   :pattern ((test_crate!X.Step./tr3/1 x))
   :qid internal_test_crate!X.Step./tr3/1_accessor_definition
   :skolemid skolem_internal_test_crate!X.Step./tr3/1_accessor_definition
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
 (forall ((x test_crate!X.Step.)) (!
   (has_type (Poly%test_crate!X.Step. x) TYPE%test_crate!X.Step.)
   :pattern ((has_type (Poly%test_crate!X.Step. x) TYPE%test_crate!X.Step.))
   :qid internal_test_crate__X__Step_has_type_always_definition
   :skolemid skolem_internal_test_crate__X__Step_has_type_always_definition
)))
(assert
 (forall ((x test_crate!X.Config.)) (!
   (= x (%Poly%test_crate!X.Config. (Poly%test_crate!X.Config. x)))
   :pattern ((Poly%test_crate!X.Config. x))
   :qid internal_test_crate__X__Config_box_axiom_definition
   :skolemid skolem_internal_test_crate__X__Config_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!X.Config.)
    (= x (Poly%test_crate!X.Config. (%Poly%test_crate!X.Config. x)))
   )
   :pattern ((has_type x TYPE%test_crate!X.Config.))
   :qid internal_test_crate__X__Config_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__X__Config_unbox_axiom_definition
)))
(assert
 (forall ((x test_crate!X.Config.)) (!
   (= (test_crate!X.Config./initialize/0 x) (test_crate!X.Config./initialize/?0 x))
   :pattern ((test_crate!X.Config./initialize/0 x))
   :qid internal_test_crate!X.Config./initialize/0_accessor_definition
   :skolemid skolem_internal_test_crate!X.Config./initialize/0_accessor_definition
)))
(assert
 (forall ((x test_crate!X.Config.)) (!
   (= (test_crate!X.Config./initialize/1 x) (test_crate!X.Config./initialize/?1 x))
   :pattern ((test_crate!X.Config./initialize/1 x))
   :qid internal_test_crate!X.Config./initialize/1_accessor_definition
   :skolemid skolem_internal_test_crate!X.Config./initialize/1_accessor_definition
)))
(assert
 (forall ((x test_crate!X.Config.)) (!
   (= (test_crate!X.Config./initialize/2 x) (test_crate!X.Config./initialize/?2 x))
   :pattern ((test_crate!X.Config./initialize/2 x))
   :qid internal_test_crate!X.Config./initialize/2_accessor_definition
   :skolemid skolem_internal_test_crate!X.Config./initialize/2_accessor_definition
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
 (forall ((x test_crate!X.Config.)) (!
   (has_type (Poly%test_crate!X.Config. x) TYPE%test_crate!X.Config.)
   :pattern ((has_type (Poly%test_crate!X.Config. x) TYPE%test_crate!X.Config.))
   :qid internal_test_crate__X__Config_has_type_always_definition
   :skolemid skolem_internal_test_crate__X__Config_has_type_always_definition
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

;; Function-Decl test_crate::X::State::tr2
(declare-fun test_crate!X.impl&%4.tr2.? (Poly Poly Poly Poly) Bool)

;; Function-Decl test_crate::X::State::tr3
(declare-fun test_crate!X.impl&%4.tr3.? (Poly Poly Poly Poly) Bool)

;; Function-Decl test_crate::X::State::next_by
(declare-fun test_crate!X.impl&%4.next_by.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::X::State::next
(declare-fun test_crate!X.impl&%4.next.? (Poly Poly) Bool)

;; Function-Decl test_crate::X::State::initialize
(declare-fun test_crate!X.impl&%4.initialize.? (Poly Poly Poly Poly) Bool)

;; Function-Decl test_crate::X::State::init_by
(declare-fun test_crate!X.impl&%4.init_by.? (Poly Poly) Bool)

;; Function-Decl test_crate::X::State::init
(declare-fun test_crate!X.impl&%4.init.? (Poly) Bool)

;; Function-Decl test_crate::X::State::the_inv
(declare-fun test_crate!X.impl&%4.the_inv.? (Poly) Bool)

;; Function-Decl test_crate::X::Step::arrow_tr1_0
(declare-fun test_crate!X.impl&%0.arrow_tr1_0.? (Poly) Bool)

;; Function-Decl test_crate::X::Step::arrow_tr1_1
(declare-fun test_crate!X.impl&%0.arrow_tr1_1.? (Poly) Bool)

;; Function-Decl test_crate::X::Step::arrow_tr2_0
(declare-fun test_crate!X.impl&%0.arrow_tr2_0.? (Poly) Bool)

;; Function-Decl test_crate::X::Step::arrow_tr2_1
(declare-fun test_crate!X.impl&%0.arrow_tr2_1.? (Poly) Bool)

;; Function-Decl test_crate::X::Step::arrow_tr3_0
(declare-fun test_crate!X.impl&%0.arrow_tr3_0.? (Poly) Bool)

;; Function-Decl test_crate::X::Step::arrow_tr3_1
(declare-fun test_crate!X.impl&%0.arrow_tr3_1.? (Poly) Bool)

;; Function-Decl test_crate::X::Step::arrow_dummy_to_use_type_params_0
(declare-fun test_crate!X.impl&%0.arrow_dummy_to_use_type_params_0.? (Poly) test_crate!X.State.)

;; Function-Decl test_crate::X::Step::is_tr1
(declare-fun test_crate!X.impl&%1.is_tr1.? (Poly) Bool)

;; Function-Decl test_crate::X::Step::get_tr1_0
(declare-fun test_crate!X.impl&%1.get_tr1_0.? (Poly) Bool)

;; Function-Decl test_crate::X::Step::get_tr1_1
(declare-fun test_crate!X.impl&%1.get_tr1_1.? (Poly) Bool)

;; Function-Decl test_crate::X::Step::is_tr2
(declare-fun test_crate!X.impl&%1.is_tr2.? (Poly) Bool)

;; Function-Decl test_crate::X::Step::get_tr2_0
(declare-fun test_crate!X.impl&%1.get_tr2_0.? (Poly) Bool)

;; Function-Decl test_crate::X::Step::get_tr2_1
(declare-fun test_crate!X.impl&%1.get_tr2_1.? (Poly) Bool)

;; Function-Decl test_crate::X::Step::is_tr3
(declare-fun test_crate!X.impl&%1.is_tr3.? (Poly) Bool)

;; Function-Decl test_crate::X::Step::get_tr3_0
(declare-fun test_crate!X.impl&%1.get_tr3_0.? (Poly) Bool)

;; Function-Decl test_crate::X::Step::get_tr3_1
(declare-fun test_crate!X.impl&%1.get_tr3_1.? (Poly) Bool)

;; Function-Decl test_crate::X::Step::is_dummy_to_use_type_params
(declare-fun test_crate!X.impl&%1.is_dummy_to_use_type_params.? (Poly) Bool)

;; Function-Decl test_crate::X::Step::get_dummy_to_use_type_params_0
(declare-fun test_crate!X.impl&%1.get_dummy_to_use_type_params_0.? (Poly) test_crate!X.State.)

;; Function-Decl test_crate::X::Config::arrow_2
(declare-fun test_crate!X.impl&%2.arrow_2.? (Poly) Int)

;; Function-Decl test_crate::X::Config::arrow_1
(declare-fun test_crate!X.impl&%2.arrow_1.? (Poly) Int)

;; Function-Decl test_crate::X::Config::arrow_initialize_0
(declare-fun test_crate!X.impl&%2.arrow_initialize_0.? (Poly) Int)

;; Function-Decl test_crate::X::Config::arrow_initialize_1
(declare-fun test_crate!X.impl&%2.arrow_initialize_1.? (Poly) Int)

;; Function-Decl test_crate::X::Config::arrow_initialize_2
(declare-fun test_crate!X.impl&%2.arrow_initialize_2.? (Poly) Int)

;; Function-Decl test_crate::X::Config::arrow_dummy_to_use_type_params_0
(declare-fun test_crate!X.impl&%2.arrow_dummy_to_use_type_params_0.? (Poly) test_crate!X.State.)

;; Function-Decl test_crate::X::Config::is_initialize
(declare-fun test_crate!X.impl&%3.is_initialize.? (Poly) Bool)

;; Function-Decl test_crate::X::Config::get_initialize_0
(declare-fun test_crate!X.impl&%3.get_initialize_0.? (Poly) Int)

;; Function-Decl test_crate::X::Config::get_initialize_1
(declare-fun test_crate!X.impl&%3.get_initialize_1.? (Poly) Int)

;; Function-Decl test_crate::X::Config::get_initialize_2
(declare-fun test_crate!X.impl&%3.get_initialize_2.? (Poly) Int)

;; Function-Decl test_crate::X::Config::is_dummy_to_use_type_params
(declare-fun test_crate!X.impl&%3.is_dummy_to_use_type_params.? (Poly) Bool)

;; Function-Decl test_crate::X::Config::get_dummy_to_use_type_params_0
(declare-fun test_crate!X.impl&%3.get_dummy_to_use_type_params_0.? (Poly) test_crate!X.State.)

;; Function-Decl test_crate::X::State::initialize_enabled
(declare-fun test_crate!X.impl&%4.initialize_enabled.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::X::State::tr1_strong
(declare-fun test_crate!X.impl&%4.tr1_strong.? (Poly Poly Poly Poly) Bool)

;; Function-Decl test_crate::X::State::tr1_enabled
(declare-fun test_crate!X.impl&%4.tr1_enabled.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::X::State::tr2_strong
(declare-fun test_crate!X.impl&%4.tr2_strong.? (Poly Poly Poly Poly) Bool)

;; Function-Decl test_crate::X::State::tr2_enabled
(declare-fun test_crate!X.impl&%4.tr2_enabled.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::X::State::tr3_strong
(declare-fun test_crate!X.impl&%4.tr3_strong.? (Poly Poly Poly Poly) Bool)

;; Function-Decl test_crate::X::State::tr3_enabled
(declare-fun test_crate!X.impl&%4.tr3_enabled.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::X::State::next_strong_by
(declare-fun test_crate!X.impl&%4.next_strong_by.? (Poly Poly Poly) Bool)

;; Function-Decl test_crate::X::State::next_strong
(declare-fun test_crate!X.impl&%4.next_strong.? (Poly Poly) Bool)

;; Function-Decl test_crate::X::State::invariant
(declare-fun test_crate!X.impl&%4.invariant.? (Poly) Bool)

;; Function-Specs vstd::state_machine_internal::assert_safety
(declare-fun req%vstd!state_machine_internal.assert_safety. (Bool) Bool)
(assert
 (forall ((b! Bool)) (!
   (= (req%vstd!state_machine_internal.assert_safety. b!) b!)
   :pattern ((req%vstd!state_machine_internal.assert_safety. b!))
   :qid internal_req__vstd!state_machine_internal.assert_safety._definition
   :skolemid skolem_internal_req__vstd!state_machine_internal.assert_safety._definition
)))
(declare-fun ens%vstd!state_machine_internal.assert_safety. (Bool) Bool)
(assert
 (forall ((b! Bool)) (!
   (= (ens%vstd!state_machine_internal.assert_safety. b!) b!)
   :pattern ((ens%vstd!state_machine_internal.assert_safety. b!))
   :qid internal_ens__vstd!state_machine_internal.assert_safety._definition
   :skolemid skolem_internal_ens__vstd!state_machine_internal.assert_safety._definition
)))

;; Function-Axioms test_crate::X::State::tr1
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%4.tr1.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.tr1.)
  (forall ((pre! Poly) (post! Poly) (b! Poly) (c! Poly)) (!
    (= (test_crate!X.impl&%4.tr1.? pre! post! b! c!) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_x$ (test_crate!X.State./State/x (%Poly%test_crate!X.State. pre!))))
       (let
        ((update_tmp_y$ (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!))))
        (and
         (%B b!)
         (let
          ((tmp_assert$1 (and
             tmp_assert$
             (<= (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!)) (test_crate!X.State./State/z
               (%Poly%test_crate!X.State. pre!)
          )))))
          (and
           (=>
            tmp_assert$1
            (%B c!)
           )
           (let
            ((update_tmp_z$ (Add (test_crate!X.State./State/z (%Poly%test_crate!X.State. pre!))
               1
            )))
            (and
             (=>
              tmp_assert$1
              (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) update_tmp_z$)
             )
             (and
              (=>
               tmp_assert$1
               (= (test_crate!X.State./State/y (%Poly%test_crate!X.State. post!)) update_tmp_y$)
              )
              (=>
               tmp_assert$1
               (= (test_crate!X.State./State/x (%Poly%test_crate!X.State. post!)) update_tmp_x$)
    )))))))))))
    :pattern ((test_crate!X.impl&%4.tr1.? pre! post! b! c!))
    :qid internal_test_crate!X.impl&__4.tr1.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.tr1.?_definition
))))

;; Function-Axioms test_crate::X::State::tr2
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%4.tr2.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.tr2.)
  (forall ((pre! Poly) (post! Poly) (b! Poly) (c! Poly)) (!
    (= (test_crate!X.impl&%4.tr2.? pre! post! b! c!) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_x$ (test_crate!X.State./State/x (%Poly%test_crate!X.State. pre!))))
       (let
        ((update_tmp_y$ (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!))))
        (let
         ((update_tmp_z$ (test_crate!X.State./State/z (%Poly%test_crate!X.State. pre!))))
         (and
          (ite
           (%B b!)
           (let
            ((update_tmp_z$1 (Add (test_crate!X.State./State/z (%Poly%test_crate!X.State. pre!))
               1
            )))
            (=>
             tmp_assert$
             (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) update_tmp_z$1)
           ))
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
          (let
           ((tmp_assert$2 (ite
              (%B b!)
              (let
               ((update_tmp_z$2 (Add (test_crate!X.State./State/z (%Poly%test_crate!X.State. pre!))
                  1
               )))
               tmp_assert$
              )
              (let
               ((tmp_assert$3 (and
                  tmp_assert$
                  (<= (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!)) (test_crate!X.State./State/z
                    (%Poly%test_crate!X.State. pre!)
               )))))
               tmp_assert$3
           ))))
           (and
            (=>
             tmp_assert$2
             (%B c!)
            )
            (and
             (=>
              tmp_assert$2
              (= (test_crate!X.State./State/y (%Poly%test_crate!X.State. post!)) update_tmp_y$)
             )
             (=>
              tmp_assert$2
              (= (test_crate!X.State./State/x (%Poly%test_crate!X.State. post!)) update_tmp_x$)
    ))))))))))
    :pattern ((test_crate!X.impl&%4.tr2.? pre! post! b! c!))
    :qid internal_test_crate!X.impl&__4.tr2.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.tr2.?_definition
))))

;; Function-Axioms test_crate::X::State::tr3
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%4.tr3.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.tr3.)
  (forall ((pre! Poly) (post! Poly) (b! Poly) (c! Poly)) (!
    (= (test_crate!X.impl&%4.tr3.? pre! post! b! c!) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_x$ (test_crate!X.State./State/x (%Poly%test_crate!X.State. pre!))))
       (let
        ((update_tmp_y$ (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!))))
        (let
         ((update_tmp_z$ (test_crate!X.State./State/z (%Poly%test_crate!X.State. pre!))))
         (and
          (ite
           (%B b!)
           (let
            ((tmp_assert$1 (and
               tmp_assert$
               (<= (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!)) (test_crate!X.State./State/z
                 (%Poly%test_crate!X.State. pre!)
            )))))
            (=>
             tmp_assert$1
             (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) update_tmp_z$)
           ))
           (let
            ((j$ (Add (test_crate!X.State./State/z (%Poly%test_crate!X.State. pre!)) 1)))
            (let
             ((update_tmp_z$1 j$))
             (=>
              tmp_assert$
              (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) update_tmp_z$1)
          ))))
          (let
           ((tmp_assert$2 (ite
              (%B b!)
              (let
               ((tmp_assert$3 (and
                  tmp_assert$
                  (<= (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!)) (test_crate!X.State./State/z
                    (%Poly%test_crate!X.State. pre!)
               )))))
               tmp_assert$3
              )
              tmp_assert$
           )))
           (and
            (=>
             tmp_assert$2
             (%B c!)
            )
            (and
             (=>
              tmp_assert$2
              (= (test_crate!X.State./State/y (%Poly%test_crate!X.State. post!)) update_tmp_y$)
             )
             (=>
              tmp_assert$2
              (= (test_crate!X.State./State/x (%Poly%test_crate!X.State. post!)) update_tmp_x$)
    ))))))))))
    :pattern ((test_crate!X.impl&%4.tr3.? pre! post! b! c!))
    :qid internal_test_crate!X.impl&__4.tr3.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.tr3.?_definition
))))

;; Function-Axioms test_crate::X::State::next_by
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.next_by.)
  (forall ((pre! Poly) (post! Poly) (step! Poly)) (!
    (= (test_crate!X.impl&%4.next_by.? pre! post! step!) (ite
      (is-test_crate!X.Step./tr1 (%Poly%test_crate!X.Step. step!))
      (let
       ((b$ (test_crate!X.Step./tr1/0 (%Poly%test_crate!X.Step. step!))))
       (let
        ((c$ (test_crate!X.Step./tr1/1 (%Poly%test_crate!X.Step. step!))))
        (test_crate!X.impl&%4.tr1.? pre! post! (B b$) (B c$))
      ))
      (ite
       (is-test_crate!X.Step./tr2 (%Poly%test_crate!X.Step. step!))
       (let
        ((b$ (test_crate!X.Step./tr2/0 (%Poly%test_crate!X.Step. step!))))
        (let
         ((c$ (test_crate!X.Step./tr2/1 (%Poly%test_crate!X.Step. step!))))
         (test_crate!X.impl&%4.tr2.? pre! post! (B b$) (B c$))
       ))
       (and
        (is-test_crate!X.Step./tr3 (%Poly%test_crate!X.Step. step!))
        (let
         ((b$ (test_crate!X.Step./tr3/0 (%Poly%test_crate!X.Step. step!))))
         (let
          ((c$ (test_crate!X.Step./tr3/1 (%Poly%test_crate!X.Step. step!))))
          (test_crate!X.impl&%4.tr3.? pre! post! (B b$) (B c$))
    ))))))
    :pattern ((test_crate!X.impl&%4.next_by.? pre! post! step!))
    :qid internal_test_crate!X.impl&__4.next_by.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.next_by.?_definition
))))

;; Function-Axioms test_crate::X::State::next
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.next.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!X.impl&%4.next.? pre! post!) (exists ((step$ Poly)) (!
       (and
        (has_type step$ TYPE%test_crate!X.Step.)
        (test_crate!X.impl&%4.next_by.? pre! post! step$)
       )
       :pattern ((test_crate!X.impl&%4.next_by.? pre! post! step$))
       :qid user_test_crate__X__State__next_0
       :skolemid skolem_user_test_crate__X__State__next_0
    )))
    :pattern ((test_crate!X.impl&%4.next.? pre! post!))
    :qid internal_test_crate!X.impl&__4.next.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.next.?_definition
))))

;; Function-Axioms test_crate::X::State::initialize
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%4.initialize.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.initialize.)
  (forall ((post! Poly) (x! Poly) (y! Poly) (z! Poly)) (!
    (= (test_crate!X.impl&%4.initialize.? post! x! y! z!) (let
      ((update_tmp_x$ (%I x!)))
      (let
       ((update_tmp_y$ (%I y!)))
       (and
        (<= (%I y!) (%I z!))
        (and
         (ite
          (= x! y!)
          (let
           ((update_tmp_z$ (%I z!)))
           (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) update_tmp_z$)
          )
          (let
           ((update_tmp_z$ (Add (%I z!) 1)))
           (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) update_tmp_z$)
         ))
         (and
          (= (test_crate!X.State./State/y (%Poly%test_crate!X.State. post!)) update_tmp_y$)
          (= (test_crate!X.State./State/x (%Poly%test_crate!X.State. post!)) update_tmp_x$)
    ))))))
    :pattern ((test_crate!X.impl&%4.initialize.? post! x! y! z!))
    :qid internal_test_crate!X.impl&__4.initialize.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.initialize.?_definition
))))

;; Function-Axioms test_crate::X::State::init_by
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.init_by.)
  (forall ((post! Poly) (step! Poly)) (!
    (= (test_crate!X.impl&%4.init_by.? post! step!) (and
      (is-test_crate!X.Config./initialize (%Poly%test_crate!X.Config. step!))
      (let
       ((x$ (test_crate!X.Config./initialize/0 (%Poly%test_crate!X.Config. step!))))
       (let
        ((y$ (test_crate!X.Config./initialize/1 (%Poly%test_crate!X.Config. step!))))
        (let
         ((z$ (test_crate!X.Config./initialize/2 (%Poly%test_crate!X.Config. step!))))
         (test_crate!X.impl&%4.initialize.? post! (I x$) (I y$) (I z$))
    )))))
    :pattern ((test_crate!X.impl&%4.init_by.? post! step!))
    :qid internal_test_crate!X.impl&__4.init_by.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.init_by.?_definition
))))

;; Function-Axioms test_crate::X::State::init
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.init.)
  (forall ((post! Poly)) (!
    (= (test_crate!X.impl&%4.init.? post!) (exists ((step$ Poly)) (!
       (and
        (has_type step$ TYPE%test_crate!X.Config.)
        (test_crate!X.impl&%4.init_by.? post! step$)
       )
       :pattern ((test_crate!X.impl&%4.init_by.? post! step$))
       :qid user_test_crate__X__State__init_1
       :skolemid skolem_user_test_crate__X__State__init_1
    )))
    :pattern ((test_crate!X.impl&%4.init.? post!))
    :qid internal_test_crate!X.impl&__4.init.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.init.?_definition
))))

;; Function-Axioms test_crate::X::State::the_inv
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%4.the_inv.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.the_inv.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%4.the_inv.? self!) (<= (test_crate!X.State./State/y (%Poly%test_crate!X.State.
        self!
       )
      ) (test_crate!X.State./State/z (%Poly%test_crate!X.State. self!))
    ))
    :pattern ((test_crate!X.impl&%4.the_inv.? self!))
    :qid internal_test_crate!X.impl&__4.the_inv.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.the_inv.?_definition
))))

;; Function-Specs test_crate::X::State::lemma_msg_the_inv
(declare-fun req%test_crate!X.impl&%4.lemma_msg_the_inv. (test_crate!X.State.) Bool)
(assert
 (forall ((s! test_crate!X.State.)) (!
   (= (req%test_crate!X.impl&%4.lemma_msg_the_inv. s!) (test_crate!X.impl&%4.the_inv.?
     (Poly%test_crate!X.State. s!)
   ))
   :pattern ((req%test_crate!X.impl&%4.lemma_msg_the_inv. s!))
   :qid internal_req__test_crate!X.impl&__4.lemma_msg_the_inv._definition
   :skolemid skolem_internal_req__test_crate!X.impl&__4.lemma_msg_the_inv._definition
)))
(declare-fun ens%test_crate!X.impl&%4.lemma_msg_the_inv. (test_crate!X.State.) Bool)
(assert
 (forall ((s! test_crate!X.State.)) (!
   (= (ens%test_crate!X.impl&%4.lemma_msg_the_inv. s!) (test_crate!X.impl&%4.the_inv.?
     (Poly%test_crate!X.State. s!)
   ))
   :pattern ((ens%test_crate!X.impl&%4.lemma_msg_the_inv. s!))
   :qid internal_ens__test_crate!X.impl&__4.lemma_msg_the_inv._definition
   :skolemid skolem_internal_ens__test_crate!X.impl&__4.lemma_msg_the_inv._definition
)))

;; Function-Axioms test_crate::X::Step::arrow_tr1_0
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%0.arrow_tr1_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%0.arrow_tr1_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%0.arrow_tr1_0.? self!) (test_crate!X.Step./tr1/0 (%Poly%test_crate!X.Step.
       self!
    )))
    :pattern ((test_crate!X.impl&%0.arrow_tr1_0.? self!))
    :qid internal_test_crate!X.impl&__0.arrow_tr1_0.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__0.arrow_tr1_0.?_definition
))))

;; Function-Axioms test_crate::X::Step::arrow_tr1_1
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%0.arrow_tr1_1.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%0.arrow_tr1_1.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%0.arrow_tr1_1.? self!) (test_crate!X.Step./tr1/1 (%Poly%test_crate!X.Step.
       self!
    )))
    :pattern ((test_crate!X.impl&%0.arrow_tr1_1.? self!))
    :qid internal_test_crate!X.impl&__0.arrow_tr1_1.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__0.arrow_tr1_1.?_definition
))))

;; Function-Axioms test_crate::X::Step::arrow_tr2_0
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%0.arrow_tr2_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%0.arrow_tr2_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%0.arrow_tr2_0.? self!) (test_crate!X.Step./tr2/0 (%Poly%test_crate!X.Step.
       self!
    )))
    :pattern ((test_crate!X.impl&%0.arrow_tr2_0.? self!))
    :qid internal_test_crate!X.impl&__0.arrow_tr2_0.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__0.arrow_tr2_0.?_definition
))))

;; Function-Axioms test_crate::X::Step::arrow_tr2_1
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%0.arrow_tr2_1.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%0.arrow_tr2_1.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%0.arrow_tr2_1.? self!) (test_crate!X.Step./tr2/1 (%Poly%test_crate!X.Step.
       self!
    )))
    :pattern ((test_crate!X.impl&%0.arrow_tr2_1.? self!))
    :qid internal_test_crate!X.impl&__0.arrow_tr2_1.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__0.arrow_tr2_1.?_definition
))))

;; Function-Axioms test_crate::X::Step::arrow_tr3_0
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%0.arrow_tr3_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%0.arrow_tr3_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%0.arrow_tr3_0.? self!) (test_crate!X.Step./tr3/0 (%Poly%test_crate!X.Step.
       self!
    )))
    :pattern ((test_crate!X.impl&%0.arrow_tr3_0.? self!))
    :qid internal_test_crate!X.impl&__0.arrow_tr3_0.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__0.arrow_tr3_0.?_definition
))))

;; Function-Axioms test_crate::X::Step::arrow_tr3_1
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%0.arrow_tr3_1.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%0.arrow_tr3_1.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%0.arrow_tr3_1.? self!) (test_crate!X.Step./tr3/1 (%Poly%test_crate!X.Step.
       self!
    )))
    :pattern ((test_crate!X.impl&%0.arrow_tr3_1.? self!))
    :qid internal_test_crate!X.impl&__0.arrow_tr3_1.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__0.arrow_tr3_1.?_definition
))))

;; Function-Axioms test_crate::X::Step::arrow_dummy_to_use_type_params_0
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%0.arrow_dummy_to_use_type_params_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%0.arrow_dummy_to_use_type_params_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%0.arrow_dummy_to_use_type_params_0.? self!) (test_crate!X.Step./dummy_to_use_type_params/0
      (%Poly%test_crate!X.Step. self!)
    ))
    :pattern ((test_crate!X.impl&%0.arrow_dummy_to_use_type_params_0.? self!))
    :qid internal_test_crate!X.impl&__0.arrow_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__0.arrow_dummy_to_use_type_params_0.?_definition
))))

;; Function-Axioms test_crate::X::Step::is_tr1
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%1.is_tr1.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%1.is_tr1.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%1.is_tr1.? self!) (is-test_crate!X.Step./tr1 (%Poly%test_crate!X.Step.
       self!
    )))
    :pattern ((test_crate!X.impl&%1.is_tr1.? self!))
    :qid internal_test_crate!X.impl&__1.is_tr1.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__1.is_tr1.?_definition
))))

;; Function-Axioms test_crate::X::Step::get_tr1_0
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%1.get_tr1_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%1.get_tr1_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%1.get_tr1_0.? self!) (test_crate!X.Step./tr1/0 (%Poly%test_crate!X.Step.
       self!
    )))
    :pattern ((test_crate!X.impl&%1.get_tr1_0.? self!))
    :qid internal_test_crate!X.impl&__1.get_tr1_0.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__1.get_tr1_0.?_definition
))))

;; Function-Axioms test_crate::X::Step::get_tr1_1
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%1.get_tr1_1.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%1.get_tr1_1.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%1.get_tr1_1.? self!) (test_crate!X.Step./tr1/1 (%Poly%test_crate!X.Step.
       self!
    )))
    :pattern ((test_crate!X.impl&%1.get_tr1_1.? self!))
    :qid internal_test_crate!X.impl&__1.get_tr1_1.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__1.get_tr1_1.?_definition
))))

;; Function-Axioms test_crate::X::Step::is_tr2
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%1.is_tr2.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%1.is_tr2.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%1.is_tr2.? self!) (is-test_crate!X.Step./tr2 (%Poly%test_crate!X.Step.
       self!
    )))
    :pattern ((test_crate!X.impl&%1.is_tr2.? self!))
    :qid internal_test_crate!X.impl&__1.is_tr2.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__1.is_tr2.?_definition
))))

;; Function-Axioms test_crate::X::Step::get_tr2_0
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%1.get_tr2_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%1.get_tr2_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%1.get_tr2_0.? self!) (test_crate!X.Step./tr2/0 (%Poly%test_crate!X.Step.
       self!
    )))
    :pattern ((test_crate!X.impl&%1.get_tr2_0.? self!))
    :qid internal_test_crate!X.impl&__1.get_tr2_0.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__1.get_tr2_0.?_definition
))))

;; Function-Axioms test_crate::X::Step::get_tr2_1
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%1.get_tr2_1.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%1.get_tr2_1.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%1.get_tr2_1.? self!) (test_crate!X.Step./tr2/1 (%Poly%test_crate!X.Step.
       self!
    )))
    :pattern ((test_crate!X.impl&%1.get_tr2_1.? self!))
    :qid internal_test_crate!X.impl&__1.get_tr2_1.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__1.get_tr2_1.?_definition
))))

;; Function-Axioms test_crate::X::Step::is_tr3
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%1.is_tr3.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%1.is_tr3.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%1.is_tr3.? self!) (is-test_crate!X.Step./tr3 (%Poly%test_crate!X.Step.
       self!
    )))
    :pattern ((test_crate!X.impl&%1.is_tr3.? self!))
    :qid internal_test_crate!X.impl&__1.is_tr3.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__1.is_tr3.?_definition
))))

;; Function-Axioms test_crate::X::Step::get_tr3_0
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%1.get_tr3_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%1.get_tr3_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%1.get_tr3_0.? self!) (test_crate!X.Step./tr3/0 (%Poly%test_crate!X.Step.
       self!
    )))
    :pattern ((test_crate!X.impl&%1.get_tr3_0.? self!))
    :qid internal_test_crate!X.impl&__1.get_tr3_0.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__1.get_tr3_0.?_definition
))))

;; Function-Axioms test_crate::X::Step::get_tr3_1
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%1.get_tr3_1.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%1.get_tr3_1.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%1.get_tr3_1.? self!) (test_crate!X.Step./tr3/1 (%Poly%test_crate!X.Step.
       self!
    )))
    :pattern ((test_crate!X.impl&%1.get_tr3_1.? self!))
    :qid internal_test_crate!X.impl&__1.get_tr3_1.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__1.get_tr3_1.?_definition
))))

;; Function-Axioms test_crate::X::Step::is_dummy_to_use_type_params
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%1.is_dummy_to_use_type_params.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%1.is_dummy_to_use_type_params.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%1.is_dummy_to_use_type_params.? self!) (is-test_crate!X.Step./dummy_to_use_type_params
      (%Poly%test_crate!X.Step. self!)
    ))
    :pattern ((test_crate!X.impl&%1.is_dummy_to_use_type_params.? self!))
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
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%1.get_dummy_to_use_type_params_0.? self!) (test_crate!X.Step./dummy_to_use_type_params/0
      (%Poly%test_crate!X.Step. self!)
    ))
    :pattern ((test_crate!X.impl&%1.get_dummy_to_use_type_params_0.? self!))
    :qid internal_test_crate!X.impl&__1.get_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__1.get_dummy_to_use_type_params_0.?_definition
))))

;; Function-Axioms test_crate::X::Config::arrow_2
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%2.arrow_2.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%2.arrow_2.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%2.arrow_2.? self!) (test_crate!X.Config./initialize/2 (%Poly%test_crate!X.Config.
       self!
    )))
    :pattern ((test_crate!X.impl&%2.arrow_2.? self!))
    :qid internal_test_crate!X.impl&__2.arrow_2.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__2.arrow_2.?_definition
))))

;; Function-Axioms test_crate::X::Config::arrow_1
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%2.arrow_1.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%2.arrow_1.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%2.arrow_1.? self!) (test_crate!X.Config./initialize/1 (%Poly%test_crate!X.Config.
       self!
    )))
    :pattern ((test_crate!X.impl&%2.arrow_1.? self!))
    :qid internal_test_crate!X.impl&__2.arrow_1.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__2.arrow_1.?_definition
))))

;; Function-Axioms test_crate::X::Config::arrow_initialize_0
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%2.arrow_initialize_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%2.arrow_initialize_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%2.arrow_initialize_0.? self!) (test_crate!X.Config./initialize/0
      (%Poly%test_crate!X.Config. self!)
    ))
    :pattern ((test_crate!X.impl&%2.arrow_initialize_0.? self!))
    :qid internal_test_crate!X.impl&__2.arrow_initialize_0.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__2.arrow_initialize_0.?_definition
))))

;; Function-Axioms test_crate::X::Config::arrow_initialize_1
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%2.arrow_initialize_1.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%2.arrow_initialize_1.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%2.arrow_initialize_1.? self!) (test_crate!X.Config./initialize/1
      (%Poly%test_crate!X.Config. self!)
    ))
    :pattern ((test_crate!X.impl&%2.arrow_initialize_1.? self!))
    :qid internal_test_crate!X.impl&__2.arrow_initialize_1.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__2.arrow_initialize_1.?_definition
))))

;; Function-Axioms test_crate::X::Config::arrow_initialize_2
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%2.arrow_initialize_2.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%2.arrow_initialize_2.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%2.arrow_initialize_2.? self!) (test_crate!X.Config./initialize/2
      (%Poly%test_crate!X.Config. self!)
    ))
    :pattern ((test_crate!X.impl&%2.arrow_initialize_2.? self!))
    :qid internal_test_crate!X.impl&__2.arrow_initialize_2.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__2.arrow_initialize_2.?_definition
))))

;; Function-Axioms test_crate::X::Config::arrow_dummy_to_use_type_params_0
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%2.arrow_dummy_to_use_type_params_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%2.arrow_dummy_to_use_type_params_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%2.arrow_dummy_to_use_type_params_0.? self!) (test_crate!X.Config./dummy_to_use_type_params/0
      (%Poly%test_crate!X.Config. self!)
    ))
    :pattern ((test_crate!X.impl&%2.arrow_dummy_to_use_type_params_0.? self!))
    :qid internal_test_crate!X.impl&__2.arrow_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__2.arrow_dummy_to_use_type_params_0.?_definition
))))

;; Function-Axioms test_crate::X::Config::is_initialize
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%3.is_initialize.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%3.is_initialize.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%3.is_initialize.? self!) (is-test_crate!X.Config./initialize
      (%Poly%test_crate!X.Config. self!)
    ))
    :pattern ((test_crate!X.impl&%3.is_initialize.? self!))
    :qid internal_test_crate!X.impl&__3.is_initialize.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__3.is_initialize.?_definition
))))

;; Function-Axioms test_crate::X::Config::get_initialize_0
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%3.get_initialize_0.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%3.get_initialize_0.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%3.get_initialize_0.? self!) (test_crate!X.Config./initialize/0
      (%Poly%test_crate!X.Config. self!)
    ))
    :pattern ((test_crate!X.impl&%3.get_initialize_0.? self!))
    :qid internal_test_crate!X.impl&__3.get_initialize_0.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__3.get_initialize_0.?_definition
))))

;; Function-Axioms test_crate::X::Config::get_initialize_1
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%3.get_initialize_1.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%3.get_initialize_1.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%3.get_initialize_1.? self!) (test_crate!X.Config./initialize/1
      (%Poly%test_crate!X.Config. self!)
    ))
    :pattern ((test_crate!X.impl&%3.get_initialize_1.? self!))
    :qid internal_test_crate!X.impl&__3.get_initialize_1.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__3.get_initialize_1.?_definition
))))

;; Function-Axioms test_crate::X::Config::get_initialize_2
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%3.get_initialize_2.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%3.get_initialize_2.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%3.get_initialize_2.? self!) (test_crate!X.Config./initialize/2
      (%Poly%test_crate!X.Config. self!)
    ))
    :pattern ((test_crate!X.impl&%3.get_initialize_2.? self!))
    :qid internal_test_crate!X.impl&__3.get_initialize_2.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__3.get_initialize_2.?_definition
))))

;; Function-Axioms test_crate::X::Config::is_dummy_to_use_type_params
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%3.is_dummy_to_use_type_params.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%3.is_dummy_to_use_type_params.)
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%3.is_dummy_to_use_type_params.? self!) (is-test_crate!X.Config./dummy_to_use_type_params
      (%Poly%test_crate!X.Config. self!)
    ))
    :pattern ((test_crate!X.impl&%3.is_dummy_to_use_type_params.? self!))
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
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%3.get_dummy_to_use_type_params_0.? self!) (test_crate!X.Config./dummy_to_use_type_params/0
      (%Poly%test_crate!X.Config. self!)
    ))
    :pattern ((test_crate!X.impl&%3.get_dummy_to_use_type_params_0.? self!))
    :qid internal_test_crate!X.impl&__3.get_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__3.get_dummy_to_use_type_params_0.?_definition
))))

;; Function-Axioms test_crate::X::State::initialize_enabled
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%4.initialize_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.initialize_enabled.)
  (forall ((x! Poly) (y! Poly) (z! Poly)) (!
    (= (test_crate!X.impl&%4.initialize_enabled.? x! y! z!) (<= (%I y!) (%I z!)))
    :pattern ((test_crate!X.impl&%4.initialize_enabled.? x! y! z!))
    :qid internal_test_crate!X.impl&__4.initialize_enabled.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.initialize_enabled.?_definition
))))

;; Function-Axioms test_crate::X::State::tr1_strong
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%4.tr1_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.tr1_strong.)
  (forall ((pre! Poly) (post! Poly) (b! Poly) (c! Poly)) (!
    (= (test_crate!X.impl&%4.tr1_strong.? pre! post! b! c!) (let
      ((update_tmp_x$ (test_crate!X.State./State/x (%Poly%test_crate!X.State. pre!))))
      (let
       ((update_tmp_y$ (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!))))
       (and
        (%B b!)
        (and
         (<= (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!)) (test_crate!X.State./State/z
           (%Poly%test_crate!X.State. pre!)
         ))
         (and
          (%B c!)
          (let
           ((update_tmp_z$ (Add (test_crate!X.State./State/z (%Poly%test_crate!X.State. pre!))
              1
           )))
           (and
            (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) update_tmp_z$)
            (and
             (= (test_crate!X.State./State/y (%Poly%test_crate!X.State. post!)) update_tmp_y$)
             (= (test_crate!X.State./State/x (%Poly%test_crate!X.State. post!)) update_tmp_x$)
    )))))))))
    :pattern ((test_crate!X.impl&%4.tr1_strong.? pre! post! b! c!))
    :qid internal_test_crate!X.impl&__4.tr1_strong.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.tr1_strong.?_definition
))))

;; Function-Axioms test_crate::X::State::tr1_enabled
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%4.tr1_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.tr1_enabled.)
  (forall ((pre! Poly) (b! Poly) (c! Poly)) (!
    (= (test_crate!X.impl&%4.tr1_enabled.? pre! b! c!) (let
      ((tmp_assert$ true))
      (and
       (%B b!)
       (let
        ((tmp_assert$1 (and
           tmp_assert$
           (<= (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!)) (test_crate!X.State./State/z
             (%Poly%test_crate!X.State. pre!)
        )))))
        (=>
         tmp_assert$1
         (%B c!)
    )))))
    :pattern ((test_crate!X.impl&%4.tr1_enabled.? pre! b! c!))
    :qid internal_test_crate!X.impl&__4.tr1_enabled.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.tr1_enabled.?_definition
))))

;; Function-Axioms test_crate::X::State::tr2_strong
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%4.tr2_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.tr2_strong.)
  (forall ((pre! Poly) (post! Poly) (b! Poly) (c! Poly)) (!
    (= (test_crate!X.impl&%4.tr2_strong.? pre! post! b! c!) (let
      ((update_tmp_x$ (test_crate!X.State./State/x (%Poly%test_crate!X.State. pre!))))
      (let
       ((update_tmp_y$ (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!))))
       (let
        ((update_tmp_z$ (test_crate!X.State./State/z (%Poly%test_crate!X.State. pre!))))
        (and
         (ite
          (%B b!)
          (let
           ((update_tmp_z$1 (Add (test_crate!X.State./State/z (%Poly%test_crate!X.State. pre!))
              1
           )))
           (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) update_tmp_z$1)
          )
          (and
           (<= (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!)) (test_crate!X.State./State/z
             (%Poly%test_crate!X.State. pre!)
           ))
           (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) update_tmp_z$)
         ))
         (and
          (%B c!)
          (and
           (= (test_crate!X.State./State/y (%Poly%test_crate!X.State. post!)) update_tmp_y$)
           (= (test_crate!X.State./State/x (%Poly%test_crate!X.State. post!)) update_tmp_x$)
    )))))))
    :pattern ((test_crate!X.impl&%4.tr2_strong.? pre! post! b! c!))
    :qid internal_test_crate!X.impl&__4.tr2_strong.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.tr2_strong.?_definition
))))

;; Function-Axioms test_crate::X::State::tr2_enabled
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%4.tr2_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.tr2_enabled.)
  (forall ((pre! Poly) (b! Poly) (c! Poly)) (!
    (= (test_crate!X.impl&%4.tr2_enabled.? pre! b! c!) (let
      ((tmp_assert$ true))
      (let
       ((tmp_assert$1 (ite
          (%B b!)
          tmp_assert$
          (let
           ((tmp_assert$2 (and
              tmp_assert$
              (<= (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!)) (test_crate!X.State./State/z
                (%Poly%test_crate!X.State. pre!)
           )))))
           tmp_assert$2
       ))))
       (=>
        tmp_assert$1
        (%B c!)
    ))))
    :pattern ((test_crate!X.impl&%4.tr2_enabled.? pre! b! c!))
    :qid internal_test_crate!X.impl&__4.tr2_enabled.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.tr2_enabled.?_definition
))))

;; Function-Axioms test_crate::X::State::tr3_strong
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%4.tr3_strong.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.tr3_strong.)
  (forall ((pre! Poly) (post! Poly) (b! Poly) (c! Poly)) (!
    (= (test_crate!X.impl&%4.tr3_strong.? pre! post! b! c!) (let
      ((update_tmp_x$ (test_crate!X.State./State/x (%Poly%test_crate!X.State. pre!))))
      (let
       ((update_tmp_y$ (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!))))
       (let
        ((update_tmp_z$ (test_crate!X.State./State/z (%Poly%test_crate!X.State. pre!))))
        (and
         (ite
          (%B b!)
          (and
           (<= (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!)) (test_crate!X.State./State/z
             (%Poly%test_crate!X.State. pre!)
           ))
           (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) update_tmp_z$)
          )
          (let
           ((j$ (Add (test_crate!X.State./State/z (%Poly%test_crate!X.State. pre!)) 1)))
           (let
            ((update_tmp_z$1 j$))
            (= (test_crate!X.State./State/z (%Poly%test_crate!X.State. post!)) update_tmp_z$1)
         )))
         (and
          (%B c!)
          (and
           (= (test_crate!X.State./State/y (%Poly%test_crate!X.State. post!)) update_tmp_y$)
           (= (test_crate!X.State./State/x (%Poly%test_crate!X.State. post!)) update_tmp_x$)
    )))))))
    :pattern ((test_crate!X.impl&%4.tr3_strong.? pre! post! b! c!))
    :qid internal_test_crate!X.impl&__4.tr3_strong.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.tr3_strong.?_definition
))))

;; Function-Axioms test_crate::X::State::tr3_enabled
(assert
 (fuel_bool_default fuel%test_crate!X.impl&%4.tr3_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.tr3_enabled.)
  (forall ((pre! Poly) (b! Poly) (c! Poly)) (!
    (= (test_crate!X.impl&%4.tr3_enabled.? pre! b! c!) (let
      ((tmp_assert$ true))
      (let
       ((tmp_assert$1 (ite
          (%B b!)
          (let
           ((tmp_assert$2 (and
              tmp_assert$
              (<= (test_crate!X.State./State/y (%Poly%test_crate!X.State. pre!)) (test_crate!X.State./State/z
                (%Poly%test_crate!X.State. pre!)
           )))))
           tmp_assert$2
          )
          tmp_assert$
       )))
       (=>
        tmp_assert$1
        (%B c!)
    ))))
    :pattern ((test_crate!X.impl&%4.tr3_enabled.? pre! b! c!))
    :qid internal_test_crate!X.impl&__4.tr3_enabled.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.tr3_enabled.?_definition
))))

;; Function-Axioms test_crate::X::State::next_strong_by
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.next_strong_by.)
  (forall ((pre! Poly) (post! Poly) (step! Poly)) (!
    (= (test_crate!X.impl&%4.next_strong_by.? pre! post! step!) (ite
      (is-test_crate!X.Step./tr1 (%Poly%test_crate!X.Step. step!))
      (let
       ((b$ (test_crate!X.Step./tr1/0 (%Poly%test_crate!X.Step. step!))))
       (let
        ((c$ (test_crate!X.Step./tr1/1 (%Poly%test_crate!X.Step. step!))))
        (test_crate!X.impl&%4.tr1_strong.? pre! post! (B b$) (B c$))
      ))
      (ite
       (is-test_crate!X.Step./tr2 (%Poly%test_crate!X.Step. step!))
       (let
        ((b$ (test_crate!X.Step./tr2/0 (%Poly%test_crate!X.Step. step!))))
        (let
         ((c$ (test_crate!X.Step./tr2/1 (%Poly%test_crate!X.Step. step!))))
         (test_crate!X.impl&%4.tr2_strong.? pre! post! (B b$) (B c$))
       ))
       (and
        (is-test_crate!X.Step./tr3 (%Poly%test_crate!X.Step. step!))
        (let
         ((b$ (test_crate!X.Step./tr3/0 (%Poly%test_crate!X.Step. step!))))
         (let
          ((c$ (test_crate!X.Step./tr3/1 (%Poly%test_crate!X.Step. step!))))
          (test_crate!X.impl&%4.tr3_strong.? pre! post! (B b$) (B c$))
    ))))))
    :pattern ((test_crate!X.impl&%4.next_strong_by.? pre! post! step!))
    :qid internal_test_crate!X.impl&__4.next_strong_by.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.next_strong_by.?_definition
))))

;; Function-Axioms test_crate::X::State::next_strong
(assert
 (=>
  (fuel_bool fuel%test_crate!X.impl&%4.next_strong.)
  (forall ((pre! Poly) (post! Poly)) (!
    (= (test_crate!X.impl&%4.next_strong.? pre! post!) (exists ((step$ Poly)) (!
       (and
        (has_type step$ TYPE%test_crate!X.Step.)
        (test_crate!X.impl&%4.next_strong_by.? pre! post! step$)
       )
       :pattern ((test_crate!X.impl&%4.next_strong_by.? pre! post! step$))
       :qid user_test_crate__X__State__next_strong_2
       :skolemid skolem_user_test_crate__X__State__next_strong_2
    )))
    :pattern ((test_crate!X.impl&%4.next_strong.? pre! post!))
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
  (forall ((self! Poly)) (!
    (= (test_crate!X.impl&%4.invariant.? self!) (test_crate!X.impl&%4.the_inv.? self!))
    :pattern ((test_crate!X.impl&%4.invariant.? self!))
    :qid internal_test_crate!X.impl&__4.invariant.?_definition
    :skolemid skolem_internal_test_crate!X.impl&__4.invariant.?_definition
))))

;; Function-Specs test_crate::X::State::init_inductive
(declare-fun req%test_crate!X.impl&%4.init_inductive. (test_crate!X.State. Int Int
  Int
 ) Bool
)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((post! test_crate!X.State.) (x! Int) (y! Int) (z! Int)) (!
   (= (req%test_crate!X.impl&%4.init_inductive. post! x! y! z!) (=>
     %%global_location_label%%0
     (test_crate!X.impl&%4.initialize.? (Poly%test_crate!X.State. post!) (I x!) (I y!)
      (I z!)
   )))
   :pattern ((req%test_crate!X.impl&%4.init_inductive. post! x! y! z!))
   :qid internal_req__test_crate!X.impl&__4.init_inductive._definition
   :skolemid skolem_internal_req__test_crate!X.impl&__4.init_inductive._definition
)))
(declare-fun ens%test_crate!X.impl&%4.init_inductive. (test_crate!X.State. Int Int
  Int
 ) Bool
)
(assert
 (forall ((post! test_crate!X.State.) (x! Int) (y! Int) (z! Int)) (!
   (= (ens%test_crate!X.impl&%4.init_inductive. post! x! y! z!) (test_crate!X.impl&%4.invariant.?
     (Poly%test_crate!X.State. post!)
   ))
   :pattern ((ens%test_crate!X.impl&%4.init_inductive. post! x! y! z!))
   :qid internal_ens__test_crate!X.impl&__4.init_inductive._definition
   :skolemid skolem_internal_ens__test_crate!X.impl&__4.init_inductive._definition
)))

;; Function-Def test_crate::X::State::init_inductive
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen/test.rs:91:5: 91:58 (#0)
(get-info :all-statistics)
(push)
 (declare-const post! test_crate!X.State.)
 (declare-const x! Int)
 (declare-const y! Int)
 (declare-const z! Int)
 (assert
  fuel_defaults
 )
 (assert
  (test_crate!X.impl&%4.initialize.? (Poly%test_crate!X.State. post!) (I x!) (I y!)
   (I z!)
 ))
 ;; could not show invariant `the_inv` on the `post` state
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%test_crate!X.impl&%4.lemma_msg_the_inv. post!)
    )
    (=>
     (ens%test_crate!X.impl&%4.lemma_msg_the_inv. post!)
     (=>
      %%location_label%%1
      (test_crate!X.impl&%4.invariant.? (Poly%test_crate!X.State. post!))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::X::State::tr1_inductive
(declare-fun req%test_crate!X.impl&%4.tr1_inductive. (test_crate!X.State. test_crate!X.State.
  Bool Bool
 ) Bool
)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((pre! test_crate!X.State.) (post! test_crate!X.State.) (b! Bool) (c! Bool))
  (!
   (= (req%test_crate!X.impl&%4.tr1_inductive. pre! post! b! c!) (=>
     %%global_location_label%%1
     (and
      (test_crate!X.impl&%4.invariant.? (Poly%test_crate!X.State. pre!))
      (test_crate!X.impl&%4.tr1_strong.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
        post!
       ) (B b!) (B c!)
   ))))
   :pattern ((req%test_crate!X.impl&%4.tr1_inductive. pre! post! b! c!))
   :qid internal_req__test_crate!X.impl&__4.tr1_inductive._definition
   :skolemid skolem_internal_req__test_crate!X.impl&__4.tr1_inductive._definition
)))
(declare-fun ens%test_crate!X.impl&%4.tr1_inductive. (test_crate!X.State. test_crate!X.State.
  Bool Bool
 ) Bool
)
(assert
 (forall ((pre! test_crate!X.State.) (post! test_crate!X.State.) (b! Bool) (c! Bool))
  (!
   (= (ens%test_crate!X.impl&%4.tr1_inductive. pre! post! b! c!) (test_crate!X.impl&%4.invariant.?
     (Poly%test_crate!X.State. post!)
   ))
   :pattern ((ens%test_crate!X.impl&%4.tr1_inductive. pre! post! b! c!))
   :qid internal_ens__test_crate!X.impl&__4.tr1_inductive._definition
   :skolemid skolem_internal_ens__test_crate!X.impl&__4.tr1_inductive._definition
)))

;; Function-Def test_crate::X::State::tr1_inductive
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen/test.rs:94:5: 94:62 (#0)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!X.State.)
 (declare-const post! test_crate!X.State.)
 (declare-const b! Bool)
 (declare-const c! Bool)
 (assert
  fuel_defaults
 )
 (assert
  (and
   (test_crate!X.impl&%4.invariant.? (Poly%test_crate!X.State. pre!))
   (test_crate!X.impl&%4.tr1_strong.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
     post!
    ) (B b!) (B c!)
 )))
 ;; could not show invariant `the_inv` on the `post` state
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%test_crate!X.impl&%4.lemma_msg_the_inv. post!)
    )
    (=>
     (ens%test_crate!X.impl&%4.lemma_msg_the_inv. post!)
     (=>
      %%location_label%%1
      (test_crate!X.impl&%4.invariant.? (Poly%test_crate!X.State. post!))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::X::State::tr1_asserts
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen/test.rs:35:1: 102:3 (#42)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!X.State.)
 (declare-const b! Bool)
 (declare-const c! Bool)
 (declare-const tmp%1 Bool)
 (declare-const update_tmp_x@ Int)
 (declare-const update_tmp_y@ Int)
 (declare-const update_tmp_z@ Int)
 (declare-const update_tmp_z$1@ Int)
 (assert
  fuel_defaults
 )
 ;; unable to prove assertion safety condition
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (test_crate!X.impl&%4.invariant.? (Poly%test_crate!X.State. pre!))
    (=>
     (= update_tmp_x@ (test_crate!X.State./State/x (%Poly%test_crate!X.State. (Poly%test_crate!X.State.
         pre!
     ))))
     (=>
      (= update_tmp_y@ (test_crate!X.State./State/y (%Poly%test_crate!X.State. (Poly%test_crate!X.State.
          pre!
      ))))
      (=>
       (= update_tmp_z@ (test_crate!X.State./State/z (%Poly%test_crate!X.State. (Poly%test_crate!X.State.
           pre!
       ))))
       (=>
        b!
        (=>
         (= tmp%1 (<= (test_crate!X.State./State/y (%Poly%test_crate!X.State. (Poly%test_crate!X.State.
              pre!
            ))
           ) (test_crate!X.State./State/z (%Poly%test_crate!X.State. (Poly%test_crate!X.State.
              pre!
         )))))
         (=>
          %%location_label%%0
          (req%vstd!state_machine_internal.assert_safety. tmp%1)
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::X::State::tr2_inductive
(declare-fun req%test_crate!X.impl&%4.tr2_inductive. (test_crate!X.State. test_crate!X.State.
  Bool Bool
 ) Bool
)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((pre! test_crate!X.State.) (post! test_crate!X.State.) (b! Bool) (c! Bool))
  (!
   (= (req%test_crate!X.impl&%4.tr2_inductive. pre! post! b! c!) (=>
     %%global_location_label%%2
     (and
      (test_crate!X.impl&%4.invariant.? (Poly%test_crate!X.State. pre!))
      (test_crate!X.impl&%4.tr2_strong.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
        post!
       ) (B b!) (B c!)
   ))))
   :pattern ((req%test_crate!X.impl&%4.tr2_inductive. pre! post! b! c!))
   :qid internal_req__test_crate!X.impl&__4.tr2_inductive._definition
   :skolemid skolem_internal_req__test_crate!X.impl&__4.tr2_inductive._definition
)))
(declare-fun ens%test_crate!X.impl&%4.tr2_inductive. (test_crate!X.State. test_crate!X.State.
  Bool Bool
 ) Bool
)
(assert
 (forall ((pre! test_crate!X.State.) (post! test_crate!X.State.) (b! Bool) (c! Bool))
  (!
   (= (ens%test_crate!X.impl&%4.tr2_inductive. pre! post! b! c!) (test_crate!X.impl&%4.invariant.?
     (Poly%test_crate!X.State. post!)
   ))
   :pattern ((ens%test_crate!X.impl&%4.tr2_inductive. pre! post! b! c!))
   :qid internal_ens__test_crate!X.impl&__4.tr2_inductive._definition
   :skolemid skolem_internal_ens__test_crate!X.impl&__4.tr2_inductive._definition
)))

;; Function-Def test_crate::X::State::tr2_inductive
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen/test.rs:97:5: 97:62 (#0)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!X.State.)
 (declare-const post! test_crate!X.State.)
 (declare-const b! Bool)
 (declare-const c! Bool)
 (assert
  fuel_defaults
 )
 (assert
  (and
   (test_crate!X.impl&%4.invariant.? (Poly%test_crate!X.State. pre!))
   (test_crate!X.impl&%4.tr2_strong.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
     post!
    ) (B b!) (B c!)
 )))
 ;; could not show invariant `the_inv` on the `post` state
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%test_crate!X.impl&%4.lemma_msg_the_inv. post!)
    )
    (=>
     (ens%test_crate!X.impl&%4.lemma_msg_the_inv. post!)
     (=>
      %%location_label%%1
      (test_crate!X.impl&%4.invariant.? (Poly%test_crate!X.State. post!))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::X::State::tr2_asserts
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen/test.rs:35:1: 102:3 (#42)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!X.State.)
 (declare-const b! Bool)
 (declare-const c! Bool)
 (declare-const update_tmp_z$1@ Int)
 (declare-const tmp%1 Bool)
 (declare-const update_tmp_x@ Int)
 (declare-const update_tmp_y@ Int)
 (declare-const update_tmp_z@ Int)
 (assert
  fuel_defaults
 )
 (declare-const %%switch_label%%0 Bool)
 ;; unable to prove assertion safety condition
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (test_crate!X.impl&%4.invariant.? (Poly%test_crate!X.State. pre!))
    (=>
     (= update_tmp_x@ (test_crate!X.State./State/x (%Poly%test_crate!X.State. (Poly%test_crate!X.State.
         pre!
     ))))
     (=>
      (= update_tmp_y@ (test_crate!X.State./State/y (%Poly%test_crate!X.State. (Poly%test_crate!X.State.
          pre!
      ))))
      (=>
       (= update_tmp_z@ (test_crate!X.State./State/z (%Poly%test_crate!X.State. (Poly%test_crate!X.State.
           pre!
       ))))
       (or
        (and
         (=>
          b!
          (=>
           (= update_tmp_z$1@ (Add (test_crate!X.State./State/z (%Poly%test_crate!X.State. (Poly%test_crate!X.State.
                pre!
              ))
             ) 1
           ))
           %%switch_label%%0
         ))
         (=>
          (not b!)
          (=>
           (= tmp%1 (<= (test_crate!X.State./State/y (%Poly%test_crate!X.State. (Poly%test_crate!X.State.
                pre!
              ))
             ) (test_crate!X.State./State/z (%Poly%test_crate!X.State. (Poly%test_crate!X.State.
                pre!
           )))))
           (and
            (=>
             %%location_label%%0
             (req%vstd!state_machine_internal.assert_safety. tmp%1)
            )
            (=>
             (ens%vstd!state_machine_internal.assert_safety. tmp%1)
             %%switch_label%%0
        )))))
        (not %%switch_label%%0)
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::X::State::tr3_inductive
(declare-fun req%test_crate!X.impl&%4.tr3_inductive. (test_crate!X.State. test_crate!X.State.
  Bool Bool
 ) Bool
)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((pre! test_crate!X.State.) (post! test_crate!X.State.) (b! Bool) (c! Bool))
  (!
   (= (req%test_crate!X.impl&%4.tr3_inductive. pre! post! b! c!) (=>
     %%global_location_label%%3
     (and
      (test_crate!X.impl&%4.invariant.? (Poly%test_crate!X.State. pre!))
      (test_crate!X.impl&%4.tr3_strong.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
        post!
       ) (B b!) (B c!)
   ))))
   :pattern ((req%test_crate!X.impl&%4.tr3_inductive. pre! post! b! c!))
   :qid internal_req__test_crate!X.impl&__4.tr3_inductive._definition
   :skolemid skolem_internal_req__test_crate!X.impl&__4.tr3_inductive._definition
)))
(declare-fun ens%test_crate!X.impl&%4.tr3_inductive. (test_crate!X.State. test_crate!X.State.
  Bool Bool
 ) Bool
)
(assert
 (forall ((pre! test_crate!X.State.) (post! test_crate!X.State.) (b! Bool) (c! Bool))
  (!
   (= (ens%test_crate!X.impl&%4.tr3_inductive. pre! post! b! c!) (test_crate!X.impl&%4.invariant.?
     (Poly%test_crate!X.State. post!)
   ))
   :pattern ((ens%test_crate!X.impl&%4.tr3_inductive. pre! post! b! c!))
   :qid internal_ens__test_crate!X.impl&__4.tr3_inductive._definition
   :skolemid skolem_internal_ens__test_crate!X.impl&__4.tr3_inductive._definition
)))

;; Function-Def test_crate::X::State::tr3_inductive
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen/test.rs:100:5: 100:62 (#0)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!X.State.)
 (declare-const post! test_crate!X.State.)
 (declare-const b! Bool)
 (declare-const c! Bool)
 (assert
  fuel_defaults
 )
 (assert
  (and
   (test_crate!X.impl&%4.invariant.? (Poly%test_crate!X.State. pre!))
   (test_crate!X.impl&%4.tr3_strong.? (Poly%test_crate!X.State. pre!) (Poly%test_crate!X.State.
     post!
    ) (B b!) (B c!)
 )))
 ;; could not show invariant `the_inv` on the `post` state
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%test_crate!X.impl&%4.lemma_msg_the_inv. post!)
    )
    (=>
     (ens%test_crate!X.impl&%4.lemma_msg_the_inv. post!)
     (=>
      %%location_label%%1
      (test_crate!X.impl&%4.invariant.? (Poly%test_crate!X.State. post!))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::X::State::tr3_asserts
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/state_machines-c25f1c939512e7ab-relation_codegen/test.rs:35:1: 102:3 (#42)
(get-info :all-statistics)
(push)
 (declare-const pre! test_crate!X.State.)
 (declare-const b! Bool)
 (declare-const c! Bool)
 (declare-const tmp%1 Bool)
 (declare-const j@ Int)
 (declare-const update_tmp_z$1@ Int)
 (declare-const update_tmp_x@ Int)
 (declare-const update_tmp_y@ Int)
 (declare-const update_tmp_z@ Int)
 (assert
  fuel_defaults
 )
 (declare-const %%switch_label%%0 Bool)
 ;; unable to prove assertion safety condition
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (test_crate!X.impl&%4.invariant.? (Poly%test_crate!X.State. pre!))
    (=>
     (= update_tmp_x@ (test_crate!X.State./State/x (%Poly%test_crate!X.State. (Poly%test_crate!X.State.
         pre!
     ))))
     (=>
      (= update_tmp_y@ (test_crate!X.State./State/y (%Poly%test_crate!X.State. (Poly%test_crate!X.State.
          pre!
      ))))
      (=>
       (= update_tmp_z@ (test_crate!X.State./State/z (%Poly%test_crate!X.State. (Poly%test_crate!X.State.
           pre!
       ))))
       (or
        (and
         (=>
          b!
          (=>
           (= tmp%1 (<= (test_crate!X.State./State/y (%Poly%test_crate!X.State. (Poly%test_crate!X.State.
                pre!
              ))
             ) (test_crate!X.State./State/z (%Poly%test_crate!X.State. (Poly%test_crate!X.State.
                pre!
           )))))
           (and
            (=>
             %%location_label%%0
             (req%vstd!state_machine_internal.assert_safety. tmp%1)
            )
            (=>
             (ens%vstd!state_machine_internal.assert_safety. tmp%1)
             %%switch_label%%0
         ))))
         (=>
          (not b!)
          (=>
           (= j@ (Add (test_crate!X.State./State/z (%Poly%test_crate!X.State. (Poly%test_crate!X.State.
                pre!
              ))
             ) 1
           ))
           (=>
            (= update_tmp_z$1@ j@)
            %%switch_label%%0
        ))))
        (not %%switch_label%%0)
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
