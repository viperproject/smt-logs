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
 (distinct fuel%vstd!array.group_array_axioms. fuel%vstd!map.group_map_axioms. fuel%vstd!multiset.group_multiset_axioms.
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
(declare-datatypes ((test_crate!X. 0) (tuple%0. 0) (tuple%3. 0)) (((test_crate!X./X (
     test_crate!X./X/?t Int
   ))
  ) ((tuple%0./tuple%0)) ((tuple%3./tuple%3 (tuple%3./tuple%3/?0 Poly) (tuple%3./tuple%3/?1
     Poly
    ) (tuple%3./tuple%3/?2 Poly)
))))
(declare-fun test_crate!X./X/t (test_crate!X.) Int)
(declare-fun tuple%3./tuple%3/0 (tuple%3.) Poly)
(declare-fun tuple%3./tuple%3/1 (tuple%3.) Poly)
(declare-fun tuple%3./tuple%3/2 (tuple%3.) Poly)
(declare-const TYPE%test_crate!X. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%3. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun FNDEF%test_crate!Tr.llama. (Dcr Type) Type)
(declare-const FNDEF%test_crate!impl&%0.llama. Type)
(declare-fun Poly%test_crate!X. (test_crate!X.) Poly)
(declare-fun %Poly%test_crate!X. (Poly) test_crate!X.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%3. (tuple%3.) Poly)
(declare-fun %Poly%tuple%3. (Poly) tuple%3.)
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
 (forall ((_t! Int)) (!
   (=>
    (uInv 8 _t!)
    (has_type (Poly%test_crate!X. (test_crate!X./X _t!)) TYPE%test_crate!X.)
   )
   :pattern ((has_type (Poly%test_crate!X. (test_crate!X./X _t!)) TYPE%test_crate!X.))
   :qid internal_test_crate!X./X_constructor_definition
   :skolemid skolem_internal_test_crate!X./X_constructor_definition
)))
(assert
 (forall ((x test_crate!X.)) (!
   (= (test_crate!X./X/t x) (test_crate!X./X/?t x))
   :pattern ((test_crate!X./X/t x))
   :qid internal_test_crate!X./X/t_accessor_definition
   :skolemid skolem_internal_test_crate!X./X/t_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!X.)
    (uInv 8 (test_crate!X./X/t (%Poly%test_crate!X. x)))
   )
   :pattern ((test_crate!X./X/t (%Poly%test_crate!X. x)) (has_type x TYPE%test_crate!X.))
   :qid internal_test_crate!X./X/t_invariant_definition
   :skolemid skolem_internal_test_crate!X./X/t_invariant_definition
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
 (forall ((x tuple%3.)) (!
   (= x (%Poly%tuple%3. (Poly%tuple%3. x)))
   :pattern ((Poly%tuple%3. x))
   :qid internal_crate__tuple__3_box_axiom_definition
   :skolemid skolem_internal_crate__tuple__3_box_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (x
    Poly
   )
  ) (!
   (=>
    (has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
    (= x (Poly%tuple%3. (%Poly%tuple%3. x)))
   )
   :pattern ((has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&)))
   :qid internal_crate__tuple__3_unbox_axiom_definition
   :skolemid skolem_internal_crate__tuple__3_unbox_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (_0!
    Poly
   ) (_1! Poly) (_2! Poly)
  ) (!
   (=>
    (and
     (has_type _0! T%0&)
     (has_type _1! T%1&)
     (has_type _2! T%2&)
    )
    (has_type (Poly%tuple%3. (tuple%3./tuple%3 _0! _1! _2!)) (TYPE%tuple%3. T%0&. T%0&
      T%1&. T%1& T%2&. T%2&
   )))
   :pattern ((has_type (Poly%tuple%3. (tuple%3./tuple%3 _0! _1! _2!)) (TYPE%tuple%3. T%0&.
      T%0& T%1&. T%1& T%2&. T%2&
   )))
   :qid internal_tuple__3./tuple__3_constructor_definition
   :skolemid skolem_internal_tuple__3./tuple__3_constructor_definition
)))
(assert
 (forall ((x tuple%3.)) (!
   (= (tuple%3./tuple%3/0 x) (tuple%3./tuple%3/?0 x))
   :pattern ((tuple%3./tuple%3/0 x))
   :qid internal_tuple__3./tuple__3/0_accessor_definition
   :skolemid skolem_internal_tuple__3./tuple__3/0_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (x
    Poly
   )
  ) (!
   (=>
    (has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
    (has_type (tuple%3./tuple%3/0 (%Poly%tuple%3. x)) T%0&)
   )
   :pattern ((tuple%3./tuple%3/0 (%Poly%tuple%3. x)) (has_type x (TYPE%tuple%3. T%0&. T%0&
      T%1&. T%1& T%2&. T%2&
   )))
   :qid internal_tuple__3./tuple__3/0_invariant_definition
   :skolemid skolem_internal_tuple__3./tuple__3/0_invariant_definition
)))
(assert
 (forall ((x tuple%3.)) (!
   (= (tuple%3./tuple%3/1 x) (tuple%3./tuple%3/?1 x))
   :pattern ((tuple%3./tuple%3/1 x))
   :qid internal_tuple__3./tuple__3/1_accessor_definition
   :skolemid skolem_internal_tuple__3./tuple__3/1_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (x
    Poly
   )
  ) (!
   (=>
    (has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
    (has_type (tuple%3./tuple%3/1 (%Poly%tuple%3. x)) T%1&)
   )
   :pattern ((tuple%3./tuple%3/1 (%Poly%tuple%3. x)) (has_type x (TYPE%tuple%3. T%0&. T%0&
      T%1&. T%1& T%2&. T%2&
   )))
   :qid internal_tuple__3./tuple__3/1_invariant_definition
   :skolemid skolem_internal_tuple__3./tuple__3/1_invariant_definition
)))
(assert
 (forall ((x tuple%3.)) (!
   (= (tuple%3./tuple%3/2 x) (tuple%3./tuple%3/?2 x))
   :pattern ((tuple%3./tuple%3/2 x))
   :qid internal_tuple__3./tuple__3/2_accessor_definition
   :skolemid skolem_internal_tuple__3./tuple__3/2_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (x
    Poly
   )
  ) (!
   (=>
    (has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
    (has_type (tuple%3./tuple%3/2 (%Poly%tuple%3. x)) T%2&)
   )
   :pattern ((tuple%3./tuple%3/2 (%Poly%tuple%3. x)) (has_type x (TYPE%tuple%3. T%0&. T%0&
      T%1&. T%1& T%2&. T%2&
   )))
   :qid internal_tuple__3./tuple__3/2_invariant_definition
   :skolemid skolem_internal_tuple__3./tuple__3/2_invariant_definition
)))
(assert
 (forall ((x tuple%3.)) (!
   (=>
    (is-tuple%3./tuple%3 x)
    (height_lt (height (tuple%3./tuple%3/0 x)) (height (Poly%tuple%3. x)))
   )
   :pattern ((height (tuple%3./tuple%3/0 x)))
   :qid prelude_datatype_height_tuple%3./tuple%3/0
   :skolemid skolem_prelude_datatype_height_tuple%3./tuple%3/0
)))
(assert
 (forall ((x tuple%3.)) (!
   (=>
    (is-tuple%3./tuple%3 x)
    (height_lt (height (tuple%3./tuple%3/1 x)) (height (Poly%tuple%3. x)))
   )
   :pattern ((height (tuple%3./tuple%3/1 x)))
   :qid prelude_datatype_height_tuple%3./tuple%3/1
   :skolemid skolem_prelude_datatype_height_tuple%3./tuple%3/1
)))
(assert
 (forall ((x tuple%3.)) (!
   (=>
    (is-tuple%3./tuple%3 x)
    (height_lt (height (tuple%3./tuple%3/2 x)) (height (Poly%tuple%3. x)))
   )
   :pattern ((height (tuple%3./tuple%3/2 x)))
   :qid prelude_datatype_height_tuple%3./tuple%3/2
   :skolemid skolem_prelude_datatype_height_tuple%3./tuple%3/2
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (deep
    Bool
   ) (x Poly) (y Poly)
  ) (!
   (=>
    (and
     (has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
     (has_type y (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
     (ext_eq deep T%0& (tuple%3./tuple%3/0 (%Poly%tuple%3. x)) (tuple%3./tuple%3/0 (%Poly%tuple%3.
        y
     )))
     (ext_eq deep T%1& (tuple%3./tuple%3/1 (%Poly%tuple%3. x)) (tuple%3./tuple%3/1 (%Poly%tuple%3.
        y
     )))
     (ext_eq deep T%2& (tuple%3./tuple%3/2 (%Poly%tuple%3. x)) (tuple%3./tuple%3/2 (%Poly%tuple%3.
        y
    ))))
    (ext_eq deep (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&) x y)
   )
   :pattern ((ext_eq deep (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&) x y))
   :qid internal_tuple__3./tuple__3_ext_equal_definition
   :skolemid skolem_internal_tuple__3./tuple__3_ext_equal_definition
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

;; Function-Specs vstd::pervasive::exec_nonstatic_call
(declare-fun req%vstd!pervasive.exec_nonstatic_call. (Dcr Type Dcr Type Dcr Type Poly
  Poly
 ) Bool
)
(assert
 (forall ((Args&. Dcr) (Args& Type) (Output&. Dcr) (Output& Type) (F&. Dcr) (F& Type)
   (f! Poly) (args! Poly)
  ) (!
   (= (req%vstd!pervasive.exec_nonstatic_call. Args&. Args& Output&. Output& F&. F& f!
     args!
    ) (closure_req F& Args&. Args& f! args!)
   )
   :pattern ((req%vstd!pervasive.exec_nonstatic_call. Args&. Args& Output&. Output& F&.
     F& f! args!
   ))
   :qid internal_req__vstd!pervasive.exec_nonstatic_call._definition
   :skolemid skolem_internal_req__vstd!pervasive.exec_nonstatic_call._definition
)))
(declare-fun ens%vstd!pervasive.exec_nonstatic_call. (Dcr Type Dcr Type Dcr Type Poly
  Poly Poly
 ) Bool
)
(assert
 (forall ((Args&. Dcr) (Args& Type) (Output&. Dcr) (Output& Type) (F&. Dcr) (F& Type)
   (f! Poly) (args! Poly) (output! Poly)
  ) (!
   (= (ens%vstd!pervasive.exec_nonstatic_call. Args&. Args& Output&. Output& F&. F& f!
     args! output!
    ) (and
     (has_type output! Output&)
     (closure_ens F& Args&. Args& f! args! output!)
   ))
   :pattern ((ens%vstd!pervasive.exec_nonstatic_call. Args&. Args& Output&. Output& F&.
     F& f! args! output!
   ))
   :qid internal_ens__vstd!pervasive.exec_nonstatic_call._definition
   :skolemid skolem_internal_ens__vstd!pervasive.exec_nonstatic_call._definition
)))

;; Function-Specs test_crate::Tr::llama
(declare-fun req%test_crate!Tr.llama. (Dcr Type Poly Poly Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (y! Poly) (z! Poly)) (!
   (= (req%test_crate!Tr.llama. Self%&. Self%& self! y! z!) (=>
     %%global_location_label%%0
     (= self! y!)
   ))
   :pattern ((req%test_crate!Tr.llama. Self%&. Self%& self! y! z!))
   :qid internal_req__test_crate!Tr.llama._definition
   :skolemid skolem_internal_req__test_crate!Tr.llama._definition
)))
(declare-fun ens%test_crate!Tr.llama. (Dcr Type Poly Poly Poly Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (y! Poly) (z! Poly) (b! Poly)) (
   !
   (= (ens%test_crate!Tr.llama. Self%&. Self%& self! y! z! b!) (and
     (has_type b! BOOL)
     (= (%B b!) (= y! z!))
   ))
   :pattern ((ens%test_crate!Tr.llama. Self%&. Self%& self! y! z! b!))
   :qid internal_ens__test_crate!Tr.llama._definition
   :skolemid skolem_internal_ens__test_crate!Tr.llama._definition
)))
(assert
 (forall ((tmp%%$ Poly) (Self%&. Dcr) (Self%& Type)) (!
   (=>
    (has_type tmp%%$ (TYPE%tuple%3. Self%&. Self%& Self%&. Self%& Self%&. Self%&))
    (=>
     (let
      ((self$ (tuple%3./tuple%3/0 (%Poly%tuple%3. tmp%%$))))
      (let
       ((y$ (tuple%3./tuple%3/1 (%Poly%tuple%3. tmp%%$))))
       (let
        ((z$ (tuple%3./tuple%3/2 (%Poly%tuple%3. tmp%%$))))
        (= self$ y$)
     )))
     (closure_req (FNDEF%test_crate!Tr.llama. Self%&. Self%&) $ (TYPE%tuple%3. Self%&. Self%&
       Self%&. Self%& Self%&. Self%&
      ) (F fndef_singleton) tmp%%$
   )))
   :pattern ((closure_req (FNDEF%test_crate!Tr.llama. Self%&. Self%&) $ (TYPE%tuple%3.
      Self%&. Self%& Self%&. Self%& Self%&. Self%&
     ) (F fndef_singleton) tmp%%$
   ))
   :qid user_test_crate__Tr__llama_0
   :skolemid skolem_user_test_crate__Tr__llama_0
)))
(assert
 (forall ((tmp%%$ Poly) (b$ Poly) (Self%&. Dcr) (Self%& Type)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%3. Self%&. Self%& Self%&. Self%& Self%&. Self%&))
     (has_type b$ BOOL)
    )
    (=>
     (closure_ens (FNDEF%test_crate!Tr.llama. Self%&. Self%&) $ (TYPE%tuple%3. Self%&. Self%&
       Self%&. Self%& Self%&. Self%&
      ) (F fndef_singleton) tmp%%$ b$
     )
     (let
      ((self$ (tuple%3./tuple%3/0 (%Poly%tuple%3. tmp%%$))))
      (let
       ((y$ (tuple%3./tuple%3/1 (%Poly%tuple%3. tmp%%$))))
       (let
        ((z$ (tuple%3./tuple%3/2 (%Poly%tuple%3. tmp%%$))))
        (= (%B b$) (= y$ z$))
   )))))
   :pattern ((closure_ens (FNDEF%test_crate!Tr.llama. Self%&. Self%&) $ (TYPE%tuple%3.
      Self%&. Self%& Self%&. Self%& Self%&. Self%&
     ) (F fndef_singleton) tmp%%$ b$
   ))
   :qid user_test_crate__Tr__llama_1
   :skolemid skolem_user_test_crate__Tr__llama_1
)))

;; Function-Def test_crate::X::llama
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-with_trait/test.rs:26:5: 26:49 (#0)
(get-info :all-statistics)
(push)
 (declare-const %return! Poly)
 (declare-const self! Poly)
 (declare-const y! Poly)
 (declare-const z! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! TYPE%test_crate!X.)
 )
 (assert
  (has_type y! TYPE%test_crate!X.)
 )
 (assert
  (has_type z! TYPE%test_crate!X.)
 )
 (assert
  (= self! y!)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Trait-Impl-Axiom
(assert
 (tr_bound%test_crate!Tr. $ TYPE%test_crate!X.)
)

;; Function-Def test_crate::test
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-with_trait/test.rs:33:1: 33:10 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 tuple%3.)
 (declare-const tmp%3 Poly)
 (declare-const tmp%4 tuple%3.)
 (declare-const tmp%5 Bool)
 (declare-const tmp%6 Bool)
 (declare-const t@ fndef)
 (declare-const x@ test_crate!X.)
 (declare-const y@ test_crate!X.)
 (declare-const z@ test_crate!X.)
 (declare-const b@ Bool)
 (declare-const x$1@ test_crate!X.)
 (declare-const y$1@ test_crate!X.)
 (declare-const z$1@ test_crate!X.)
 (declare-const b$1@ Bool)
 (assert
  fuel_defaults
 )
 ;; Call to non-static function fails to satisfy `callee.requires(args)`
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; Call to non-static function fails to satisfy `callee.requires(args)`
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 (assert
  (not (=>
    (= t@ fndef_singleton)
    (=>
     (= x@ (test_crate!X./X (%I (I 4))))
     (=>
      (= y@ (test_crate!X./X (%I (I 4))))
      (=>
       (= z@ (test_crate!X./X (%I (I 6))))
       (=>
        (= tmp%2 (tuple%3./tuple%3 (Poly%test_crate!X. x@) (Poly%test_crate!X. y@) (Poly%test_crate!X.
           z@
        )))
        (and
         (=>
          %%location_label%%0
          (req%vstd!pervasive.exec_nonstatic_call. $ (TYPE%tuple%3. $ TYPE%test_crate!X. $ TYPE%test_crate!X.
            $ TYPE%test_crate!X.
           ) $ BOOL $ (FNDEF%test_crate!Tr.llama. $ TYPE%test_crate!X.) (F t@) (Poly%tuple%3.
            tmp%2
         )))
         (=>
          (ens%vstd!pervasive.exec_nonstatic_call. $ (TYPE%tuple%3. $ TYPE%test_crate!X. $ TYPE%test_crate!X.
            $ TYPE%test_crate!X.
           ) $ BOOL $ (FNDEF%test_crate!Tr.llama. $ TYPE%test_crate!X.) (F t@) (Poly%tuple%3.
            tmp%2
           ) tmp%1
          )
          (=>
           (= b@ (%B tmp%1))
           (and
            (=>
             %%location_label%%1
             (not b@)
            )
            (=>
             (not b@)
             (=>
              (= x$1@ (test_crate!X./X (%I (I 4))))
              (=>
               (= y$1@ (test_crate!X./X (%I (I 4))))
               (=>
                (= z$1@ (test_crate!X./X (%I (I 4))))
                (=>
                 (= tmp%4 (tuple%3./tuple%3 (Poly%test_crate!X. x$1@) (Poly%test_crate!X. y$1@) (Poly%test_crate!X.
                    z$1@
                 )))
                 (and
                  (=>
                   %%location_label%%2
                   (req%vstd!pervasive.exec_nonstatic_call. $ (TYPE%tuple%3. $ TYPE%test_crate!X. $ TYPE%test_crate!X.
                     $ TYPE%test_crate!X.
                    ) $ BOOL $ (FNDEF%test_crate!Tr.llama. $ TYPE%test_crate!X.) (F t@) (Poly%tuple%3.
                     tmp%4
                  )))
                  (=>
                   (ens%vstd!pervasive.exec_nonstatic_call. $ (TYPE%tuple%3. $ TYPE%test_crate!X. $ TYPE%test_crate!X.
                     $ TYPE%test_crate!X.
                    ) $ BOOL $ (FNDEF%test_crate!Tr.llama. $ TYPE%test_crate!X.) (F t@) (Poly%tuple%3.
                     tmp%4
                    ) tmp%3
                   )
                   (=>
                    (= b$1@ (%B tmp%3))
                    (and
                     (=>
                      %%location_label%%3
                      b$1@
                     )
                     (=>
                      b$1@
                      (=>
                       (= tmp%5 (forall ((x$2 Poly) (y$2 Poly) (z$2 Poly)) (!
                          (=>
                           (and
                            (has_type x$2 TYPE%test_crate!X.)
                            (has_type y$2 TYPE%test_crate!X.)
                            (has_type z$2 TYPE%test_crate!X.)
                           )
                           (=>
                            (= x$2 y$2)
                            (closure_req (FNDEF%test_crate!Tr.llama. $ TYPE%test_crate!X.) $ (TYPE%tuple%3. $ TYPE%test_crate!X.
                              $ TYPE%test_crate!X. $ TYPE%test_crate!X.
                             ) (F fndef_singleton) (Poly%tuple%3. (tuple%3./tuple%3 x$2 y$2 z$2))
                          )))
                          :pattern ((tuple%3./tuple%3 x$2 y$2 z$2))
                          :qid user_test_crate__test_2
                          :skolemid skolem_user_test_crate__test_2
                       )))
                       (and
                        (=>
                         %%location_label%%4
                         tmp%5
                        )
                        (=>
                         tmp%5
                         (=>
                          (= tmp%6 (forall ((x$3 Poly) (y$3 Poly) (z$3 Poly) (b$2 Poly)) (!
                             (=>
                              (and
                               (has_type x$3 TYPE%test_crate!X.)
                               (has_type y$3 TYPE%test_crate!X.)
                               (has_type z$3 TYPE%test_crate!X.)
                               (has_type b$2 BOOL)
                              )
                              (=>
                               (closure_ens (FNDEF%test_crate!Tr.llama. $ TYPE%test_crate!X.) $ (TYPE%tuple%3. $ TYPE%test_crate!X.
                                 $ TYPE%test_crate!X. $ TYPE%test_crate!X.
                                ) (F fndef_singleton) (Poly%tuple%3. (tuple%3./tuple%3 x$3 y$3 z$3)) b$2
                               )
                               (= (%B b$2) (= y$3 z$3))
                             ))
                             :pattern ((closure_ens (FNDEF%test_crate!Tr.llama. $ TYPE%test_crate!X.) $ (TYPE%tuple%3.
                                $ TYPE%test_crate!X. $ TYPE%test_crate!X. $ TYPE%test_crate!X.
                               ) (F fndef_singleton) (Poly%tuple%3. (tuple%3./tuple%3 x$3 y$3 z$3)) b$2
                             ))
                             :qid user_test_crate__test_3
                             :skolemid skolem_user_test_crate__test_3
                          )))
                          (=>
                           %%location_label%%5
                           tmp%6
 ))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::test2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-with_trait/test.rs:54:1: 54:11 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 tuple%3.)
 (declare-const t@ fndef)
 (declare-const x@ test_crate!X.)
 (declare-const y@ test_crate!X.)
 (declare-const z@ test_crate!X.)
 (declare-const b@ Bool)
 (assert
  fuel_defaults
 )
 ;; Call to non-static function fails to satisfy `callee.requires(args)`
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= t@ fndef_singleton)
    (=>
     (= x@ (test_crate!X./X (%I (I 4))))
     (=>
      (= y@ (test_crate!X./X (%I (I 4))))
      (=>
       (= z@ (test_crate!X./X (%I (I 4))))
       (=>
        (= tmp%2 (tuple%3./tuple%3 (Poly%test_crate!X. x@) (Poly%test_crate!X. y@) (Poly%test_crate!X.
           z@
        )))
        (and
         (=>
          %%location_label%%0
          (req%vstd!pervasive.exec_nonstatic_call. $ (TYPE%tuple%3. $ TYPE%test_crate!X. $ TYPE%test_crate!X.
            $ TYPE%test_crate!X.
           ) $ BOOL $ (FNDEF%test_crate!Tr.llama. $ TYPE%test_crate!X.) (F t@) (Poly%tuple%3.
            tmp%2
         )))
         (=>
          (ens%vstd!pervasive.exec_nonstatic_call. $ (TYPE%tuple%3. $ TYPE%test_crate!X. $ TYPE%test_crate!X.
            $ TYPE%test_crate!X.
           ) $ BOOL $ (FNDEF%test_crate!Tr.llama. $ TYPE%test_crate!X.) (F t@) (Poly%tuple%3.
            tmp%2
           ) tmp%1
          )
          (=>
           (= b@ (%B tmp%1))
           (=>
            %%location_label%%1
            (not b@)
 )))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
 (get-info :reason-unknown)
 (get-model)
 (assert
  (not %%location_label%%1)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Recommends test_crate::test2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-with_trait/test.rs:54:1: 54:11 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 tuple%3.)
 (declare-const t@ fndef)
 (declare-const x@ test_crate!X.)
 (declare-const y@ test_crate!X.)
 (declare-const z@ test_crate!X.)
 (declare-const b@ Bool)
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

;; Function-Def test_crate::test3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-with_trait/test.rs:65:1: 65:11 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 tuple%3.)
 (declare-const t@ fndef)
 (declare-const x@ test_crate!X.)
 (declare-const y@ test_crate!X.)
 (declare-const z@ test_crate!X.)
 (assert
  fuel_defaults
 )
 ;; Call to non-static function fails to satisfy `callee.requires(args)`
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= t@ fndef_singleton)
    (=>
     (= x@ (test_crate!X./X (%I (I 12))))
     (=>
      (= y@ (test_crate!X./X (%I (I 13))))
      (=>
       (= z@ (test_crate!X./X (%I (I 14))))
       (=>
        (= tmp%2 (tuple%3./tuple%3 (Poly%test_crate!X. x@) (Poly%test_crate!X. y@) (Poly%test_crate!X.
           z@
        )))
        (=>
         %%location_label%%0
         (req%vstd!pervasive.exec_nonstatic_call. $ (TYPE%tuple%3. $ TYPE%test_crate!X. $ TYPE%test_crate!X.
           $ TYPE%test_crate!X.
          ) $ BOOL $ (FNDEF%test_crate!Tr.llama. $ TYPE%test_crate!X.) (F t@) (Poly%tuple%3.
           tmp%2
 ))))))))))
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

;; Function-Recommends test_crate::test3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-with_trait/test.rs:65:1: 65:11 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 tuple%3.)
 (declare-const t@ fndef)
 (declare-const x@ test_crate!X.)
 (declare-const y@ test_crate!X.)
 (declare-const z@ test_crate!X.)
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

;; Function-Def test_crate::test4
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-with_trait/test.rs:75:1: 75:11 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%1 (forall ((x$ Poly) (y$ Poly) (z$ Poly)) (!
       (=>
        (and
         (has_type x$ TYPE%test_crate!X.)
         (has_type y$ TYPE%test_crate!X.)
         (has_type z$ TYPE%test_crate!X.)
        )
        (=>
         (= y$ z$)
         (closure_req (FNDEF%test_crate!Tr.llama. $ TYPE%test_crate!X.) $ (TYPE%tuple%3. $ TYPE%test_crate!X.
           $ TYPE%test_crate!X. $ TYPE%test_crate!X.
          ) (F fndef_singleton) (Poly%tuple%3. (tuple%3./tuple%3 x$ y$ z$))
       )))
       :pattern ((tuple%3./tuple%3 x$ y$ z$))
       :qid user_test_crate__test4_4
       :skolemid skolem_user_test_crate__test4_4
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

;; Function-Recommends test_crate::test4
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-with_trait/test.rs:75:1: 75:11 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const x@ Poly)
 (declare-const y@ Poly)
 (declare-const z@ Poly)
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

;; Function-Def test_crate::test5
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-with_trait/test.rs:79:1: 79:11 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%1 (forall ((x$ Poly) (y$ Poly) (z$ Poly) (b$ Poly)) (!
       (=>
        (and
         (has_type x$ TYPE%test_crate!X.)
         (has_type y$ TYPE%test_crate!X.)
         (has_type z$ TYPE%test_crate!X.)
         (has_type b$ BOOL)
        )
        (=>
         (closure_ens (FNDEF%test_crate!Tr.llama. $ TYPE%test_crate!X.) $ (TYPE%tuple%3. $ TYPE%test_crate!X.
           $ TYPE%test_crate!X. $ TYPE%test_crate!X.
          ) (F fndef_singleton) (Poly%tuple%3. (tuple%3./tuple%3 x$ y$ z$)) b$
         )
         (= (%B b$) (not (= y$ z$)))
       ))
       :pattern ((closure_ens (FNDEF%test_crate!Tr.llama. $ TYPE%test_crate!X.) $ (TYPE%tuple%3.
          $ TYPE%test_crate!X. $ TYPE%test_crate!X. $ TYPE%test_crate!X.
         ) (F fndef_singleton) (Poly%tuple%3. (tuple%3./tuple%3 x$ y$ z$)) b$
       ))
       :qid user_test_crate__test5_6
       :skolemid skolem_user_test_crate__test5_6
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

;; Function-Recommends test_crate::test5
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-with_trait/test.rs:79:1: 79:11 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const x@ Poly)
 (declare-const y@ Poly)
 (declare-const z@ Poly)
 (declare-const b@ Poly)
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

;; Function-Specs test_crate::takes_fn1
(declare-fun req%test_crate!takes_fn1. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%1 Bool)
(declare-const %%global_location_label%%2 Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((F&. Dcr) (F& Type) (f! Poly)) (!
   (= (req%test_crate!takes_fn1. F&. F& f!) (and
     (=>
      %%global_location_label%%1
      (closure_req F& $ (TYPE%tuple%3. $ TYPE%test_crate!X. $ TYPE%test_crate!X. $ TYPE%test_crate!X.)
       f! (Poly%tuple%3. (tuple%3./tuple%3 (Poly%test_crate!X. (test_crate!X./X (%I (I 4))))
         (Poly%test_crate!X. (test_crate!X./X (%I (I 4)))) (Poly%test_crate!X. (test_crate!X./X
           (%I (I 4))
     ))))))
     (=>
      %%global_location_label%%2
      (closure_req F& $ (TYPE%tuple%3. $ TYPE%test_crate!X. $ TYPE%test_crate!X. $ TYPE%test_crate!X.)
       f! (Poly%tuple%3. (tuple%3./tuple%3 (Poly%test_crate!X. (test_crate!X./X (%I (I 7))))
         (Poly%test_crate!X. (test_crate!X./X (%I (I 7)))) (Poly%test_crate!X. (test_crate!X./X
           (%I (I 4))
     ))))))
     (=>
      %%global_location_label%%3
      (forall ((x$ Poly) (y$ Poly) (z$ Poly) (b$ Poly)) (!
        (=>
         (and
          (has_type x$ TYPE%test_crate!X.)
          (has_type y$ TYPE%test_crate!X.)
          (has_type z$ TYPE%test_crate!X.)
          (has_type b$ BOOL)
         )
         (=>
          (closure_ens F& $ (TYPE%tuple%3. $ TYPE%test_crate!X. $ TYPE%test_crate!X. $ TYPE%test_crate!X.)
           f! (Poly%tuple%3. (tuple%3./tuple%3 x$ y$ z$)) b$
          )
          (= (%B b$) (= y$ z$))
        ))
        :pattern ((closure_ens F& $ (TYPE%tuple%3. $ TYPE%test_crate!X. $ TYPE%test_crate!X.
           $ TYPE%test_crate!X.
          ) f! (Poly%tuple%3. (tuple%3./tuple%3 x$ y$ z$)) b$
        ))
        :qid user_test_crate__takes_fn1_8
        :skolemid skolem_user_test_crate__takes_fn1_8
   )))))
   :pattern ((req%test_crate!takes_fn1. F&. F& f!))
   :qid internal_req__test_crate!takes_fn1._definition
   :skolemid skolem_internal_req__test_crate!takes_fn1._definition
)))

;; Function-Def test_crate::takes_fn1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-with_trait/test.rs:83:1: 83:43 (#0)
(get-info :all-statistics)
(push)
 (declare-const F&. Dcr)
 (declare-const F& Type)
 (declare-const f! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type f! F&)
 )
 (assert
  (closure_req F& $ (TYPE%tuple%3. $ TYPE%test_crate!X. $ TYPE%test_crate!X. $ TYPE%test_crate!X.)
   f! (Poly%tuple%3. (tuple%3./tuple%3 (Poly%test_crate!X. (test_crate!X./X (%I (I 4))))
     (Poly%test_crate!X. (test_crate!X./X (%I (I 4)))) (Poly%test_crate!X. (test_crate!X./X
       (%I (I 4))
 ))))))
 (assert
  (closure_req F& $ (TYPE%tuple%3. $ TYPE%test_crate!X. $ TYPE%test_crate!X. $ TYPE%test_crate!X.)
   f! (Poly%tuple%3. (tuple%3./tuple%3 (Poly%test_crate!X. (test_crate!X./X (%I (I 7))))
     (Poly%test_crate!X. (test_crate!X./X (%I (I 7)))) (Poly%test_crate!X. (test_crate!X./X
       (%I (I 4))
 ))))))
 (assert
  (forall ((x$ Poly) (y$ Poly) (z$ Poly) (b$ Poly)) (!
    (=>
     (and
      (has_type x$ TYPE%test_crate!X.)
      (has_type y$ TYPE%test_crate!X.)
      (has_type z$ TYPE%test_crate!X.)
      (has_type b$ BOOL)
     )
     (=>
      (closure_ens F& $ (TYPE%tuple%3. $ TYPE%test_crate!X. $ TYPE%test_crate!X. $ TYPE%test_crate!X.)
       f! (Poly%tuple%3. (tuple%3./tuple%3 x$ y$ z$)) b$
      )
      (= (%B b$) (= y$ z$))
    ))
    :pattern ((closure_ens F& $ (TYPE%tuple%3. $ TYPE%test_crate!X. $ TYPE%test_crate!X.
       $ TYPE%test_crate!X.
      ) f! (Poly%tuple%3. (tuple%3./tuple%3 x$ y$ z$)) b$
    ))
    :qid user_test_crate__takes_fn1_9
    :skolemid skolem_user_test_crate__takes_fn1_9
 )))
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::test_take1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-with_trait/test.rs:91:1: 91:16 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 fndef)
 (assert
  fuel_defaults
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%1 fndef_singleton)
    (=>
     %%location_label%%0
     (req%test_crate!takes_fn1. $ (FNDEF%test_crate!Tr.llama. $ TYPE%test_crate!X.) (F tmp%1))
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::takes_fn2
(declare-fun req%test_crate!takes_fn2. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((F&. Dcr) (F& Type) (f! Poly)) (!
   (= (req%test_crate!takes_fn2. F&. F& f!) (=>
     %%global_location_label%%4
     (closure_req F& $ (TYPE%tuple%3. $ TYPE%test_crate!X. $ TYPE%test_crate!X. $ TYPE%test_crate!X.)
      f! (Poly%tuple%3. (tuple%3./tuple%3 (Poly%test_crate!X. (test_crate!X./X (%I (I 6))))
        (Poly%test_crate!X. (test_crate!X./X (%I (I 7)))) (Poly%test_crate!X. (test_crate!X./X
          (%I (I 8))
   )))))))
   :pattern ((req%test_crate!takes_fn2. F&. F& f!))
   :qid internal_req__test_crate!takes_fn2._definition
   :skolemid skolem_internal_req__test_crate!takes_fn2._definition
)))

;; Function-Def test_crate::takes_fn2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-with_trait/test.rs:95:1: 95:43 (#0)
(get-info :all-statistics)
(push)
 (declare-const F&. Dcr)
 (declare-const F& Type)
 (declare-const f! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type f! F&)
 )
 (assert
  (closure_req F& $ (TYPE%tuple%3. $ TYPE%test_crate!X. $ TYPE%test_crate!X. $ TYPE%test_crate!X.)
   f! (Poly%tuple%3. (tuple%3./tuple%3 (Poly%test_crate!X. (test_crate!X./X (%I (I 6))))
     (Poly%test_crate!X. (test_crate!X./X (%I (I 7)))) (Poly%test_crate!X. (test_crate!X./X
       (%I (I 8))
 ))))))
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::test_take2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-with_trait/test.rs:101:1: 101:16 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 fndef)
 (assert
  fuel_defaults
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%1 fndef_singleton)
    (=>
     %%location_label%%0
     (req%test_crate!takes_fn2. $ (FNDEF%test_crate!Tr.llama. $ TYPE%test_crate!X.) (F tmp%1))
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

;; Function-Recommends test_crate::test_take2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-with_trait/test.rs:101:1: 101:16 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 fndef)
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

;; Function-Specs test_crate::takes_fn3
(declare-fun req%test_crate!takes_fn3. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((F&. Dcr) (F& Type) (f! Poly)) (!
   (= (req%test_crate!takes_fn3. F&. F& f!) (=>
     %%global_location_label%%5
     (forall ((x$ Poly) (y$ Poly) (z$ Poly) (b$ Poly)) (!
       (=>
        (and
         (has_type x$ TYPE%test_crate!X.)
         (has_type y$ TYPE%test_crate!X.)
         (has_type z$ TYPE%test_crate!X.)
         (has_type b$ BOOL)
        )
        (=>
         (closure_ens F& $ (TYPE%tuple%3. $ TYPE%test_crate!X. $ TYPE%test_crate!X. $ TYPE%test_crate!X.)
          f! (Poly%tuple%3. (tuple%3./tuple%3 x$ y$ z$)) b$
         )
         (= (%B b$) (not (= y$ z$)))
       ))
       :pattern ((closure_ens F& $ (TYPE%tuple%3. $ TYPE%test_crate!X. $ TYPE%test_crate!X.
          $ TYPE%test_crate!X.
         ) f! (Poly%tuple%3. (tuple%3./tuple%3 x$ y$ z$)) b$
       ))
       :qid user_test_crate__takes_fn3_10
       :skolemid skolem_user_test_crate__takes_fn3_10
   ))))
   :pattern ((req%test_crate!takes_fn3. F&. F& f!))
   :qid internal_req__test_crate!takes_fn3._definition
   :skolemid skolem_internal_req__test_crate!takes_fn3._definition
)))

;; Function-Def test_crate::takes_fn3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-with_trait/test.rs:105:1: 105:43 (#0)
(get-info :all-statistics)
(push)
 (declare-const F&. Dcr)
 (declare-const F& Type)
 (declare-const f! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type f! F&)
 )
 (assert
  (forall ((x$ Poly) (y$ Poly) (z$ Poly) (b$ Poly)) (!
    (=>
     (and
      (has_type x$ TYPE%test_crate!X.)
      (has_type y$ TYPE%test_crate!X.)
      (has_type z$ TYPE%test_crate!X.)
      (has_type b$ BOOL)
     )
     (=>
      (closure_ens F& $ (TYPE%tuple%3. $ TYPE%test_crate!X. $ TYPE%test_crate!X. $ TYPE%test_crate!X.)
       f! (Poly%tuple%3. (tuple%3./tuple%3 x$ y$ z$)) b$
      )
      (= (%B b$) (not (= y$ z$)))
    ))
    :pattern ((closure_ens F& $ (TYPE%tuple%3. $ TYPE%test_crate!X. $ TYPE%test_crate!X.
       $ TYPE%test_crate!X.
      ) f! (Poly%tuple%3. (tuple%3./tuple%3 x$ y$ z$)) b$
    ))
    :qid user_test_crate__takes_fn3_11
    :skolemid skolem_user_test_crate__takes_fn3_11
 )))
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::test_take3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-with_trait/test.rs:111:1: 111:16 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 fndef)
 (assert
  fuel_defaults
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%1 fndef_singleton)
    (=>
     %%location_label%%0
     (req%test_crate!takes_fn3. $ (FNDEF%test_crate!Tr.llama. $ TYPE%test_crate!X.) (F tmp%1))
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

;; Function-Recommends test_crate::test_take3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-with_trait/test.rs:111:1: 111:16 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 fndef)
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

;; Function-Specs test_crate::takes_fn4
(declare-fun req%test_crate!takes_fn4. (Dcr Type Dcr Type Poly) Bool)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (F&. Dcr) (F& Type) (f! Poly)) (!
   (= (req%test_crate!takes_fn4. T&. T& F&. F& f!) (=>
     %%global_location_label%%6
     (forall ((x$ Poly) (y$ Poly) (z$ Poly) (b$ Poly)) (!
       (=>
        (and
         (has_type x$ T&)
         (has_type y$ T&)
         (has_type z$ T&)
         (has_type b$ BOOL)
        )
        (=>
         (closure_ens F& $ (TYPE%tuple%3. T&. T& T&. T& T&. T&) f! (Poly%tuple%3. (tuple%3./tuple%3
            x$ y$ z$
           )
          ) b$
         )
         (= (%B b$) (not (= y$ z$)))
       ))
       :pattern ((closure_ens F& $ (TYPE%tuple%3. T&. T& T&. T& T&. T&) f! (Poly%tuple%3. (
           tuple%3./tuple%3 x$ y$ z$
          )
         ) b$
       ))
       :qid user_test_crate__takes_fn4_12
       :skolemid skolem_user_test_crate__takes_fn4_12
   ))))
   :pattern ((req%test_crate!takes_fn4. T&. T& F&. F& f!))
   :qid internal_req__test_crate!takes_fn4._definition
   :skolemid skolem_internal_req__test_crate!takes_fn4._definition
)))

;; Function-Def test_crate::takes_fn4
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-with_trait/test.rs:115:1: 115:46 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const F&. Dcr)
 (declare-const F& Type)
 (declare-const f! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type f! F&)
 )
 (assert
  (forall ((x$ Poly) (y$ Poly) (z$ Poly) (b$ Poly)) (!
    (=>
     (and
      (has_type x$ T&)
      (has_type y$ T&)
      (has_type z$ T&)
      (has_type b$ BOOL)
     )
     (=>
      (closure_ens F& $ (TYPE%tuple%3. T&. T& T&. T& T&. T&) f! (Poly%tuple%3. (tuple%3./tuple%3
         x$ y$ z$
        )
       ) b$
      )
      (= (%B b$) (not (= y$ z$)))
    ))
    :pattern ((closure_ens F& $ (TYPE%tuple%3. T&. T& T&. T& T&. T&) f! (Poly%tuple%3. (
        tuple%3./tuple%3 x$ y$ z$
       )
      ) b$
    ))
    :qid user_test_crate__takes_fn4_13
    :skolemid skolem_user_test_crate__takes_fn4_13
 )))
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::test_take4
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-with_trait/test.rs:121:1: 121:16 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 fndef)
 (assert
  fuel_defaults
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%1 fndef_singleton)
    (=>
     %%location_label%%0
     (req%test_crate!takes_fn4. $ TYPE%test_crate!X. $ (FNDEF%test_crate!Tr.llama. $ TYPE%test_crate!X.)
      (F tmp%1)
 )))))
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

;; Function-Recommends test_crate::test_take4
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-with_trait/test.rs:121:1: 121:16 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 fndef)
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
