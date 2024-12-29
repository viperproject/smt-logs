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
(declare-const fuel%test_crate!impl&%0.ens. FuelId)
(declare-const fuel%test_crate!impl&%0.ret. FuelId)
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
 (distinct fuel%test_crate!impl&%0.ens. fuel%test_crate!impl&%0.ret. fuel%vstd!array.group_array_axioms.
  fuel%vstd!map.group_map_axioms. fuel%vstd!multiset.group_multiset_axioms. fuel%vstd!raw_ptr.group_raw_ptr_axioms.
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
(declare-datatypes ((test_crate!X. 0) (tuple%0. 0) (tuple%2. 0)) (((test_crate!X./X (
     test_crate!X./X/?j Int
   ))
  ) ((tuple%0./tuple%0)) ((tuple%2./tuple%2 (tuple%2./tuple%2/?0 Poly) (tuple%2./tuple%2/?1
     Poly
)))))
(declare-fun test_crate!X./X/j (test_crate!X.) Int)
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-const TYPE%test_crate!X. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%2. (Dcr Type Dcr Type) Type)
(declare-fun FNDEF%test_crate!Tr.test. (Dcr Type) Type)
(declare-const FNDEF%test_crate!impl&%0.test. Type)
(declare-fun Poly%test_crate!X. (test_crate!X.) Poly)
(declare-fun %Poly%test_crate!X. (Poly) test_crate!X.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%2. (tuple%2.) Poly)
(declare-fun %Poly%tuple%2. (Poly) tuple%2.)
(assert
 (forall ((x test_crate!X.)) (!
   (= x (%Poly%test_crate!X. (Poly%test_crate!X. x)))
   :pattern ((Poly%test_crate!X. x))
   :qid internal_test_crate__X_box_axiom_definition
   :skolemid skolem_internal_test_crate__X_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!X.)
    (= x (Poly%test_crate!X. (%Poly%test_crate!X. x)))
   )
   :pattern ((has_type x TYPE%test_crate!X.))
   :qid internal_test_crate__X_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__X_unbox_axiom_definition
)))
(assert
 (forall ((_j! Int)) (!
   (=>
    (uInv 8 _j!)
    (has_type (Poly%test_crate!X. (test_crate!X./X _j!)) TYPE%test_crate!X.)
   )
   :pattern ((has_type (Poly%test_crate!X. (test_crate!X./X _j!)) TYPE%test_crate!X.))
   :qid internal_test_crate!X./X_constructor_definition
   :skolemid skolem_internal_test_crate!X./X_constructor_definition
)))
(assert
 (forall ((x test_crate!X.)) (!
   (= (test_crate!X./X/j x) (test_crate!X./X/?j x))
   :pattern ((test_crate!X./X/j x))
   :qid internal_test_crate!X./X/j_accessor_definition
   :skolemid skolem_internal_test_crate!X./X/j_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!X.)
    (uInv 8 (test_crate!X./X/j (%Poly%test_crate!X. x)))
   )
   :pattern ((test_crate!X./X/j (%Poly%test_crate!X. x)) (has_type x TYPE%test_crate!X.))
   :qid internal_test_crate!X./X/j_invariant_definition
   :skolemid skolem_internal_test_crate!X./X/j_invariant_definition
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
(declare-fun tr_bound%test_crate!Tr. (Dcr Type) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%test_crate!Tr. Self%&. Self%&))
   :qid internal_test_crate__Tr_trait_type_bounds_definition
   :skolemid skolem_internal_test_crate__Tr_trait_type_bounds_definition
)))

;; Function-Decl test_crate::Tr::ens
(declare-fun test_crate!Tr.ens.? (Dcr Type Poly Poly Poly) Poly)
(declare-fun test_crate!Tr.ens%default%.? (Dcr Type Poly Poly Poly) Poly)

;; Function-Decl test_crate::Tr::ret
(declare-fun test_crate!Tr.ret.? (Dcr Type Poly Poly) Poly)
(declare-fun test_crate!Tr.ret%default%.? (Dcr Type Poly Poly) Poly)

;; Function-Axioms test_crate::Tr::ens
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (i! Poly) (s! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type i! (UINT 8))
     (has_type s! Self%&)
    )
    (has_type (test_crate!Tr.ens.? Self%&. Self%& self! i! s!) BOOL)
   )
   :pattern ((test_crate!Tr.ens.? Self%&. Self%& self! i! s!))
   :qid internal_test_crate!Tr.ens.?_pre_post_definition
   :skolemid skolem_internal_test_crate!Tr.ens.?_pre_post_definition
)))

;; Function-Axioms test_crate::Tr::ret
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (i! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type i! (UINT 8))
    )
    (has_type (test_crate!Tr.ret.? Self%&. Self%& self! i!) Self%&)
   )
   :pattern ((test_crate!Tr.ret.? Self%&. Self%& self! i!))
   :qid internal_test_crate!Tr.ret.?_pre_post_definition
   :skolemid skolem_internal_test_crate!Tr.ret.?_pre_post_definition
)))

;; Function-Specs test_crate::Tr::test
(declare-fun ens%test_crate!Tr.test. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (i! Poly) (s! Poly)) (!
   (= (ens%test_crate!Tr.test. Self%&. Self%& self! i! s!) (and
     (has_type s! Self%&)
     (%B (test_crate!Tr.ens.? Self%&. Self%& self! i! s!))
     (= s! (test_crate!Tr.ret.? Self%&. Self%& self! i!))
   ))
   :pattern ((ens%test_crate!Tr.test. Self%&. Self%& self! i! s!))
   :qid internal_ens__test_crate!Tr.test._definition
   :skolemid skolem_internal_ens__test_crate!Tr.test._definition
)))
(assert
 (forall ((tmp%%$ Poly) (Self%&. Dcr) (Self%& Type)) (!
   (=>
    (has_type tmp%%$ (TYPE%tuple%2. (REF Self%&.) Self%& $ (UINT 8)))
    (=>
     (let
      ((self$ (tuple%2./tuple%2/0 (%Poly%tuple%2. tmp%%$))))
      (let
       ((i$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. tmp%%$)))))
       true
     ))
     (closure_req (FNDEF%test_crate!Tr.test. Self%&. Self%&) $ (TYPE%tuple%2. (REF Self%&.)
       Self%& $ (UINT 8)
      ) (F fndef_singleton) tmp%%$
   )))
   :pattern ((closure_req (FNDEF%test_crate!Tr.test. Self%&. Self%&) $ (TYPE%tuple%2. (
       REF Self%&.
      ) Self%& $ (UINT 8)
     ) (F fndef_singleton) tmp%%$
   ))
   :qid user_test_crate__Tr__test_0
   :skolemid skolem_user_test_crate__Tr__test_0
)))
(assert
 (forall ((tmp%%$ Poly) (s$ Poly) (Self%&. Dcr) (Self%& Type)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%2. (REF Self%&.) Self%& $ (UINT 8)))
     (has_type s$ Self%&)
    )
    (=>
     (closure_ens (FNDEF%test_crate!Tr.test. Self%&. Self%&) $ (TYPE%tuple%2. (REF Self%&.)
       Self%& $ (UINT 8)
      ) (F fndef_singleton) tmp%%$ s$
     )
     (let
      ((self$ (tuple%2./tuple%2/0 (%Poly%tuple%2. tmp%%$))))
      (let
       ((i$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. tmp%%$)))))
       (and
        (%B (test_crate!Tr.ens.? Self%&. Self%& self$ (I i$) s$))
        (= s$ (test_crate!Tr.ret.? Self%&. Self%& self$ (I i$)))
   )))))
   :pattern ((closure_ens (FNDEF%test_crate!Tr.test. Self%&. Self%&) $ (TYPE%tuple%2. (
       REF Self%&.
      ) Self%& $ (UINT 8)
     ) (F fndef_singleton) tmp%%$ s$
   ))
   :qid user_test_crate__Tr__test_1
   :skolemid skolem_user_test_crate__Tr__test_1
)))

;; Function-Axioms test_crate::X::ens
(assert
 (fuel_bool_default fuel%test_crate!impl&%0.ens.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%0.ens.)
  (forall ((self! Poly) (i! Poly) (s! Poly)) (!
    (= (test_crate!Tr.ens.? $ TYPE%test_crate!X. self! i! s!) (B (< (Add (test_crate!X./X/j
         (%Poly%test_crate!X. self!)
        ) (%I i!)
       ) 250
    )))
    :pattern ((test_crate!Tr.ens.? $ TYPE%test_crate!X. self! i! s!))
    :qid internal_test_crate!Tr.ens.?_definition
    :skolemid skolem_internal_test_crate!Tr.ens.?_definition
))))

;; Function-Axioms test_crate::X::ret
(assert
 (fuel_bool_default fuel%test_crate!impl&%0.ret.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%0.ret.)
  (forall ((self! Poly) (i! Poly)) (!
    (= (test_crate!Tr.ret.? $ TYPE%test_crate!X. self! i!) (Poly%test_crate!X. (test_crate!X./X
       (%I (I (uClip 8 (Add (test_crate!X./X/j (%Poly%test_crate!X. self!)) (%I i!)))))
    )))
    :pattern ((test_crate!Tr.ret.? $ TYPE%test_crate!X. self! i!))
    :qid internal_test_crate!Tr.ret.?_definition
    :skolemid skolem_internal_test_crate!Tr.ret.?_definition
))))

;; Function-Specs test_crate::X::test
(declare-fun ens%test_crate!impl&%0.test. (Poly Poly Poly) Bool)
(assert
 (forall ((self! Poly) (i! Poly) (s! Poly)) (!
   (= (ens%test_crate!impl&%0.test. self! i! s!) (and
     (ens%test_crate!Tr.test. $ TYPE%test_crate!X. self! i! s!)
     (not (and
       (<= 20 (%I i!))
       (< (%I i!) 30)
   ))))
   :pattern ((ens%test_crate!impl&%0.test. self! i! s!))
   :qid internal_ens__test_crate!impl&__0.test._definition
   :skolemid skolem_internal_ens__test_crate!impl&__0.test._definition
)))
(assert
 (forall ((tmp%%$ Poly) (s$ Poly)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%2. (REF $) TYPE%test_crate!X. $ (UINT 8)))
     (has_type s$ TYPE%test_crate!X.)
    )
    (=>
     (closure_ens (FNDEF%test_crate!Tr.test. $ TYPE%test_crate!X.) $ (TYPE%tuple%2. (REF
        $
       ) TYPE%test_crate!X. $ (UINT 8)
      ) (F fndef_singleton) tmp%%$ s$
     )
     (let
      ((self$ (%Poly%test_crate!X. (tuple%2./tuple%2/0 (%Poly%tuple%2. tmp%%$)))))
      (let
       ((i$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. tmp%%$)))))
       (not (and
         (<= 20 i$)
         (< i$ 30)
   ))))))
   :pattern ((closure_ens (FNDEF%test_crate!Tr.test. $ TYPE%test_crate!X.) $ (TYPE%tuple%2.
      (REF $) TYPE%test_crate!X. $ (UINT 8)
     ) (F fndef_singleton) tmp%%$ s$
   ))
   :qid user_test_crate__X__test_2
   :skolemid skolem_user_test_crate__X__test_2
)))

;; Function-Def test_crate::X::test
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-call_ensures_return_clause_on_trait_method_decl/test.rs:40:13: 40:21 (#0)
(get-info :all-statistics)
(push)
 (declare-const s! Poly)
 (declare-const self! Poly)
 (declare-const i! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! TYPE%test_crate!X.)
 )
 (assert
  (has_type i! (UINT 8))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::X::test
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-call_ensures_return_clause_on_trait_method_decl/test.rs:36:5: 36:38 (#0)
(get-info :all-statistics)
(push)
 (declare-const s! Poly)
 (declare-const self! Poly)
 (declare-const i! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! TYPE%test_crate!X.)
 )
 (assert
  (has_type i! (UINT 8))
 )
 (declare-const %%switch_label%%0 Bool)
 ;; possible arithmetic underflow/overflow
 (declare-const %%location_label%%0 Bool)
 ;; possible arithmetic underflow/overflow
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (uInv 64 (Add (uClip 64 (test_crate!X./X/j (%Poly%test_crate!X. self!))) (uClip 64 (
         %I i!
    )))))
    (or
     (=>
      (not (or
        (>= (uClip 64 (Add (uClip 64 (test_crate!X./X/j (%Poly%test_crate!X. self!))) (uClip
            64 (%I i!)
          ))
         ) 250
        )
        (and
         (<= 20 (%I i!))
         (< (%I i!) 30)
      )))
      %%switch_label%%0
     )
     (and
      (not %%switch_label%%0)
      (and
       (=>
        %%location_label%%1
        (uInv 8 (Add (test_crate!X./X/j (%Poly%test_crate!X. self!)) (%I i!)))
       )
       (=>
        (= s! (Poly%test_crate!X. (test_crate!X./X (%I (I (uClip 8 (Add (test_crate!X./X/j (%Poly%test_crate!X.
                 self!
                )
               ) (%I i!)
        )))))))
        (and
         (=>
          %%location_label%%2
          (%B (test_crate!Tr.ens.? $ TYPE%test_crate!X. self! i! s!))
         )
         (and
          (=>
           %%location_label%%3
           (= s! (test_crate!Tr.ret.? $ TYPE%test_crate!X. self! i!))
          )
          (=>
           %%location_label%%4
           (not (and
             (<= 20 (%I i!))
             (< (%I i!) 30)
 ))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Trait-Impl-Axiom
(assert
 (tr_bound%test_crate!Tr. $ TYPE%test_crate!X.)
)

;; Function-Def test_crate::test1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-call_ensures_return_clause_on_trait_method_decl/test.rs:48:1: 48:35 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const t! Poly)
 (declare-const i! Int)
 (declare-const r! Poly)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type t! T&)
 )
 (assert
  (uInv 8 i!)
 )
 (assert
  (has_type r! T&)
 )
 (assert
  (tr_bound%test_crate!Tr. T&. T&)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%1 (=>
      (closure_ens (FNDEF%test_crate!Tr.test. T&. T&) $ (TYPE%tuple%2. (REF T&.) T& $ (UINT
         8
        )
       ) (F fndef_singleton) (Poly%tuple%2. (tuple%2./tuple%2 t! (I i!))) r!
      )
      (and
       (%B (test_crate!Tr.ens.? T&. T& t! (I i!) r!))
       (= r! (test_crate!Tr.ret.? T&. T& t! (I i!)))
    )))
    (=>
     %%location_label%%0
     tmp%1
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::test1_fail
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-call_ensures_return_clause_on_trait_method_decl/test.rs:53:1: 53:40 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const t! Poly)
 (declare-const i! Int)
 (declare-const r! Poly)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type t! T&)
 )
 (assert
  (uInv 8 i!)
 )
 (assert
  (has_type r! T&)
 )
 (assert
  (tr_bound%test_crate!Tr. T&. T&)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%1 (=>
      (and
       (%B (test_crate!Tr.ens.? T&. T& t! (I i!) r!))
       (= r! (test_crate!Tr.ret.? T&. T& t! (I i!)))
      )
      (closure_ens (FNDEF%test_crate!Tr.test. T&. T&) $ (TYPE%tuple%2. (REF T&.) T& $ (UINT
         8
        )
       ) (F fndef_singleton) (Poly%tuple%2. (tuple%2./tuple%2 t! (I i!))) r!
    )))
    (=>
     %%location_label%%0
     tmp%1
 ))))
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

;; Function-Recommends test_crate::test1_fail
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-call_ensures_return_clause_on_trait_method_decl/test.rs:53:1: 53:40 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const t! Poly)
 (declare-const i! Int)
 (declare-const r! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type t! T&)
 )
 (assert
  (uInv 8 i!)
 )
 (assert
  (has_type r! T&)
 )
 (assert
  (tr_bound%test_crate!Tr. T&. T&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::test2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-call_ensures_return_clause_on_trait_method_decl/test.rs:60:1: 60:28 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! test_crate!X.)
 (declare-const i! Int)
 (declare-const r! test_crate!X.)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%test_crate!X. x!) TYPE%test_crate!X.)
 )
 (assert
  (uInv 8 i!)
 )
 (assert
  (has_type (Poly%test_crate!X. r!) TYPE%test_crate!X.)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%1 (=>
      (closure_ens (FNDEF%test_crate!Tr.test. $ TYPE%test_crate!X.) $ (TYPE%tuple%2. (REF
         $
        ) TYPE%test_crate!X. $ (UINT 8)
       ) (F fndef_singleton) (Poly%tuple%2. (tuple%2./tuple%2 (Poly%test_crate!X. x!) (I i!)))
       (Poly%test_crate!X. r!)
      )
      (and
       (and
        (< (Add (test_crate!X./X/j (%Poly%test_crate!X. (Poly%test_crate!X. x!))) i!) 250)
        (= r! (test_crate!X./X (%I (I (uClip 8 (Add (test_crate!X./X/j (%Poly%test_crate!X. (Poly%test_crate!X.
                 x!
               ))
              ) i!
       )))))))
       (not (and
         (<= 20 i!)
         (< i! 30)
    )))))
    (=>
     %%location_label%%0
     tmp%1
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::test2_fail
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-call_ensures_return_clause_on_trait_method_decl/test.rs:65:1: 65:33 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! test_crate!X.)
 (declare-const i! Int)
 (declare-const r! test_crate!X.)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%test_crate!X. x!) TYPE%test_crate!X.)
 )
 (assert
  (uInv 8 i!)
 )
 (assert
  (has_type (Poly%test_crate!X. r!) TYPE%test_crate!X.)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%1 (=>
      (and
       (and
        (< (Add (test_crate!X./X/j (%Poly%test_crate!X. (Poly%test_crate!X. x!))) i!) 250)
        (= r! (test_crate!X./X (%I (I (uClip 8 (Add (test_crate!X./X/j (%Poly%test_crate!X. (Poly%test_crate!X.
                 x!
               ))
              ) i!
       )))))))
       (not (and
         (<= 20 i!)
         (< i! 30)
      )))
      (closure_ens (FNDEF%test_crate!Tr.test. $ TYPE%test_crate!X.) $ (TYPE%tuple%2. (REF
         $
        ) TYPE%test_crate!X. $ (UINT 8)
       ) (F fndef_singleton) (Poly%tuple%2. (tuple%2./tuple%2 (Poly%test_crate!X. x!) (I i!)))
       (Poly%test_crate!X. r!)
    )))
    (=>
     %%location_label%%0
     tmp%1
 ))))
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

;; Function-Recommends test_crate::test2_fail
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-call_ensures_return_clause_on_trait_method_decl/test.rs:65:1: 65:33 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! test_crate!X.)
 (declare-const i! Int)
 (declare-const r! test_crate!X.)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%test_crate!X. x!) TYPE%test_crate!X.)
 )
 (assert
  (uInv 8 i!)
 )
 (assert
  (has_type (Poly%test_crate!X. r!) TYPE%test_crate!X.)
 )
 (declare-const %%switch_label%%0 Bool)
 ;; recommendation not met: value may be out of range of the target type (use `#[verifier::truncate]` on the cast to silence this warning)
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (or
    (and
     (=>
      (< (Add (test_crate!X./X/j (%Poly%test_crate!X. (Poly%test_crate!X. x!))) i!) 250)
      (and
       (=>
        %%location_label%%0
        (uInv 8 (Add (test_crate!X./X/j (%Poly%test_crate!X. (Poly%test_crate!X. x!))) i!))
       )
       (=>
        (= tmp%1 (= r! (test_crate!X./X (%I (I (uClip 8 (Add (test_crate!X./X/j (%Poly%test_crate!X.
                 (Poly%test_crate!X. x!)
                )
               ) i!
        )))))))
        %%switch_label%%0
     )))
     (=>
      (not (< (Add (test_crate!X./X/j (%Poly%test_crate!X. (Poly%test_crate!X. x!))) i!)
        250
      ))
      (=>
       (= tmp%1 false)
       %%switch_label%%0
    )))
    (not %%switch_label%%0)
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
