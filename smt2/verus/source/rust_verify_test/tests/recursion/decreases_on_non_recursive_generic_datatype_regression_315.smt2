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
(declare-const fuel%test_crate!max. FuelId)
(declare-const fuel%test_crate!impl&%0.height. FuelId)
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
 (distinct fuel%test_crate!max. fuel%test_crate!impl&%0.height. fuel%vstd!array.group_array_axioms.
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
(declare-sort allocator_global%. 0)
(declare-datatypes ((core!option.Option. 0) (test_crate!Node. 0)) (((core!option.Option./None)
   (core!option.Option./Some (core!option.Option./Some/?0 Poly))
  ) ((test_crate!Node./Node (test_crate!Node./Node/?left core!option.Option.) (test_crate!Node./Node/?right
     core!option.Option.
    ) (test_crate!Node./Node/?value Poly)
))))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun test_crate!Node./Node/left (test_crate!Node.) core!option.Option.)
(declare-fun test_crate!Node./Node/right (test_crate!Node.) core!option.Option.)
(declare-fun test_crate!Node./Node/value (test_crate!Node.) Poly)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-fun TYPE%test_crate!Node. (Dcr Type) Type)
(declare-fun Poly%allocator_global%. (allocator_global%.) Poly)
(declare-fun %Poly%allocator_global%. (Poly) allocator_global%.)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
(declare-fun Poly%test_crate!Node. (test_crate!Node.) Poly)
(declare-fun %Poly%test_crate!Node. (Poly) test_crate!Node.)
(assert
 (forall ((x allocator_global%.)) (!
   (= x (%Poly%allocator_global%. (Poly%allocator_global%. x)))
   :pattern ((Poly%allocator_global%. x))
   :qid internal_crate__allocator_global___box_axiom_definition
   :skolemid skolem_internal_crate__allocator_global___box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x ALLOCATOR_GLOBAL)
    (= x (Poly%allocator_global%. (%Poly%allocator_global%. x)))
   )
   :pattern ((has_type x ALLOCATOR_GLOBAL))
   :qid internal_crate__allocator_global___unbox_axiom_definition
   :skolemid skolem_internal_crate__allocator_global___unbox_axiom_definition
)))
(assert
 (forall ((x allocator_global%.)) (!
   (has_type (Poly%allocator_global%. x) ALLOCATOR_GLOBAL)
   :pattern ((has_type (Poly%allocator_global%. x) ALLOCATOR_GLOBAL))
   :qid internal_crate__allocator_global___has_type_always_definition
   :skolemid skolem_internal_crate__allocator_global___has_type_always_definition
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
 (forall ((x test_crate!Node.)) (!
   (= x (%Poly%test_crate!Node. (Poly%test_crate!Node. x)))
   :pattern ((Poly%test_crate!Node. x))
   :qid internal_test_crate__Node_box_axiom_definition
   :skolemid skolem_internal_test_crate__Node_box_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%test_crate!Node. V&. V&))
    (= x (Poly%test_crate!Node. (%Poly%test_crate!Node. x)))
   )
   :pattern ((has_type x (TYPE%test_crate!Node. V&. V&)))
   :qid internal_test_crate__Node_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__Node_unbox_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (_left! core!option.Option.) (_right! core!option.Option.)
   (_value! Poly)
  ) (!
   (=>
    (and
     (has_type (Poly%core!option.Option. _left!) (TYPE%core!option.Option. $ (TYPE%test_crate!Node.
        V&. V&
     )))
     (has_type (Poly%core!option.Option. _right!) (TYPE%core!option.Option. $ (TYPE%test_crate!Node.
        V&. V&
     )))
     (has_type _value! V&)
    )
    (has_type (Poly%test_crate!Node. (test_crate!Node./Node _left! _right! _value!)) (
      TYPE%test_crate!Node. V&. V&
   )))
   :pattern ((has_type (Poly%test_crate!Node. (test_crate!Node./Node _left! _right! _value!))
     (TYPE%test_crate!Node. V&. V&)
   ))
   :qid internal_test_crate!Node./Node_constructor_definition
   :skolemid skolem_internal_test_crate!Node./Node_constructor_definition
)))
(assert
 (forall ((x test_crate!Node.)) (!
   (= (test_crate!Node./Node/left x) (test_crate!Node./Node/?left x))
   :pattern ((test_crate!Node./Node/left x))
   :qid internal_test_crate!Node./Node/left_accessor_definition
   :skolemid skolem_internal_test_crate!Node./Node/left_accessor_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%test_crate!Node. V&. V&))
    (has_type (Poly%core!option.Option. (test_crate!Node./Node/left (%Poly%test_crate!Node.
        x
      ))
     ) (TYPE%core!option.Option. $ (TYPE%test_crate!Node. V&. V&))
   ))
   :pattern ((test_crate!Node./Node/left (%Poly%test_crate!Node. x)) (has_type x (TYPE%test_crate!Node.
      V&. V&
   )))
   :qid internal_test_crate!Node./Node/left_invariant_definition
   :skolemid skolem_internal_test_crate!Node./Node/left_invariant_definition
)))
(assert
 (forall ((x test_crate!Node.)) (!
   (= (test_crate!Node./Node/right x) (test_crate!Node./Node/?right x))
   :pattern ((test_crate!Node./Node/right x))
   :qid internal_test_crate!Node./Node/right_accessor_definition
   :skolemid skolem_internal_test_crate!Node./Node/right_accessor_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%test_crate!Node. V&. V&))
    (has_type (Poly%core!option.Option. (test_crate!Node./Node/right (%Poly%test_crate!Node.
        x
      ))
     ) (TYPE%core!option.Option. $ (TYPE%test_crate!Node. V&. V&))
   ))
   :pattern ((test_crate!Node./Node/right (%Poly%test_crate!Node. x)) (has_type x (TYPE%test_crate!Node.
      V&. V&
   )))
   :qid internal_test_crate!Node./Node/right_invariant_definition
   :skolemid skolem_internal_test_crate!Node./Node/right_invariant_definition
)))
(assert
 (forall ((x test_crate!Node.)) (!
   (= (test_crate!Node./Node/value x) (test_crate!Node./Node/?value x))
   :pattern ((test_crate!Node./Node/value x))
   :qid internal_test_crate!Node./Node/value_accessor_definition
   :skolemid skolem_internal_test_crate!Node./Node/value_accessor_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%test_crate!Node. V&. V&))
    (has_type (test_crate!Node./Node/value (%Poly%test_crate!Node. x)) V&)
   )
   :pattern ((test_crate!Node./Node/value (%Poly%test_crate!Node. x)) (has_type x (TYPE%test_crate!Node.
      V&. V&
   )))
   :qid internal_test_crate!Node./Node/value_invariant_definition
   :skolemid skolem_internal_test_crate!Node./Node/value_invariant_definition
)))
(assert
 (forall ((x test_crate!Node.)) (!
   (=>
    (is-test_crate!Node./Node x)
    (height_lt (height (Poly%core!option.Option. (test_crate!Node./Node/left x))) (height
      (Poly%test_crate!Node. x)
   )))
   :pattern ((height (Poly%core!option.Option. (test_crate!Node./Node/left x))))
   :qid prelude_datatype_height_test_crate!Node./Node/left
   :skolemid skolem_prelude_datatype_height_test_crate!Node./Node/left
)))
(assert
 (forall ((x test_crate!Node.)) (!
   (=>
    (is-test_crate!Node./Node x)
    (height_lt (height (Poly%core!option.Option. (test_crate!Node./Node/right x))) (height
      (Poly%test_crate!Node. x)
   )))
   :pattern ((height (Poly%core!option.Option. (test_crate!Node./Node/right x))))
   :qid prelude_datatype_height_test_crate!Node./Node/right
   :skolemid skolem_prelude_datatype_height_test_crate!Node./Node/right
)))
(assert
 (forall ((x test_crate!Node.)) (!
   (=>
    (is-test_crate!Node./Node x)
    (height_lt (height (test_crate!Node./Node/value x)) (height (Poly%test_crate!Node. x)))
   )
   :pattern ((height (test_crate!Node./Node/value x)))
   :qid prelude_datatype_height_test_crate!Node./Node/value
   :skolemid skolem_prelude_datatype_height_test_crate!Node./Node/value
)))

;; Traits
(declare-fun tr_bound%builtin!SpecOrd. (Dcr Type Dcr Type) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Rhs&. Dcr) (Rhs& Type)) (!
   true
   :pattern ((tr_bound%builtin!SpecOrd. Self%&. Self%& Rhs&. Rhs&))
   :qid internal_builtin__SpecOrd_trait_type_bounds_definition
   :skolemid skolem_internal_builtin__SpecOrd_trait_type_bounds_definition
)))

;; Function-Decl test_crate::max
(declare-fun test_crate!max.? (Poly Poly) Int)

;; Function-Decl test_crate::Node::height
(declare-fun test_crate!impl&%0.height.? (Dcr Type Poly) Int)
(declare-fun test_crate!impl&%0.rec%height.? (Dcr Type Poly Fuel) Int)

;; Function-Axioms test_crate::max
(assert
 (fuel_bool_default fuel%test_crate!max.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!max.)
  (forall ((a! Poly) (b! Poly)) (!
    (= (test_crate!max.? a! b!) (%I (ite
       (>= (%I a!) (%I b!))
       a!
       b!
    )))
    :pattern ((test_crate!max.? a! b!))
    :qid internal_test_crate!max.?_definition
    :skolemid skolem_internal_test_crate!max.?_definition
))))
(assert
 (forall ((a! Poly) (b! Poly)) (!
   (=>
    (and
     (has_type a! NAT)
     (has_type b! NAT)
    )
    (<= 0 (test_crate!max.? a! b!))
   )
   :pattern ((test_crate!max.? a! b!))
   :qid internal_test_crate!max.?_pre_post_definition
   :skolemid skolem_internal_test_crate!max.?_pre_post_definition
)))

;; Spec-Termination test_crate::Node::height
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/recursion-323c2b72cefe3aab-decreases_on_non_recursive_generic_datatype_regression_315/test.rs:27:10: 27:33 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const self! Poly)
 (declare-const tmp%1 Int)
 (declare-const l@ test_crate!Node.)
 (declare-const tmp%2 Int)
 (declare-const tmp%%@ core!option.Option.)
 (declare-const tmp%3 Int)
 (declare-const r@ test_crate!Node.)
 (declare-const tmp%4 Int)
 (declare-const tmp%%$1@ core!option.Option.)
 (declare-const decrease%init0 test_crate!Node.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%test_crate!Node. V&. V&))
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= decrease%init0 (%Poly%test_crate!Node. self!))
    (=>
     (= tmp%%@ (test_crate!Node./Node/left (%Poly%test_crate!Node. self!)))
     (or
      (and
       (=>
        (is-core!option.Option./Some tmp%%@)
        (=>
         (= l@ (%Poly%test_crate!Node. (core!option.Option./Some/0 (%Poly%core!option.Option.
             (Poly%core!option.Option. tmp%%@)
         ))))
         (and
          (=>
           %%location_label%%0
           (check_decrease_height (Poly%test_crate!Node. (let
              ((self!$0 l@))
              self!$0
             )
            ) (Poly%test_crate!Node. decrease%init0) false
          ))
          (=>
           (<= 0 tmp%1)
           (=>
            (= tmp%1 (test_crate!impl&%0.height.? V&. V& (Poly%test_crate!Node. l@)))
            (=>
             (= tmp%2 tmp%1)
             %%switch_label%%1
       ))))))
       (=>
        (not (is-core!option.Option./Some tmp%%@))
        (=>
         (= tmp%2 0)
         %%switch_label%%1
      )))
      (and
       (not %%switch_label%%1)
       (=>
        (= tmp%%$1@ (test_crate!Node./Node/right (%Poly%test_crate!Node. self!)))
        (or
         (and
          (=>
           (is-core!option.Option./Some tmp%%$1@)
           (=>
            (= r@ (%Poly%test_crate!Node. (core!option.Option./Some/0 (%Poly%core!option.Option.
                (Poly%core!option.Option. tmp%%$1@)
            ))))
            (and
             (=>
              %%location_label%%1
              (check_decrease_height (Poly%test_crate!Node. (let
                 ((self!$0 r@))
                 self!$0
                )
               ) (Poly%test_crate!Node. decrease%init0) false
             ))
             (=>
              (<= 0 tmp%3)
              (=>
               (= tmp%3 (test_crate!impl&%0.height.? V&. V& (Poly%test_crate!Node. r@)))
               (=>
                (= tmp%4 tmp%3)
                %%switch_label%%0
          ))))))
          (=>
           (not (is-core!option.Option./Some tmp%%$1@))
           (=>
            (= tmp%4 0)
            %%switch_label%%0
         )))
         (not %%switch_label%%0)
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Axioms test_crate::Node::height
(assert
 (fuel_bool_default fuel%test_crate!impl&%0.height.)
)
(declare-const fuel_nat%test_crate!impl&%0.height. Fuel)
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (fuel% Fuel)) (!
   (= (test_crate!impl&%0.rec%height.? V&. V& self! fuel%) (test_crate!impl&%0.rec%height.?
     V&. V& self! zero
   ))
   :pattern ((test_crate!impl&%0.rec%height.? V&. V& self! fuel%))
   :qid internal_test_crate!impl&__0.height._fuel_to_zero_definition
   :skolemid skolem_internal_test_crate!impl&__0.height._fuel_to_zero_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (fuel% Fuel)) (!
   (=>
    (and
     (tr_bound%builtin!SpecOrd. V&. V& V&. V&)
     (has_type self! (TYPE%test_crate!Node. V&. V&))
    )
    (= (test_crate!impl&%0.rec%height.? V&. V& self! (succ fuel%)) (test_crate!max.? (I
       (let
        ((tmp%%$ (test_crate!Node./Node/left (%Poly%test_crate!Node. self!))))
        (ite
         (is-core!option.Option./Some tmp%%$)
         (let
          ((l$ (%Poly%test_crate!Node. (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                tmp%%$
          ))))))
          (test_crate!impl&%0.rec%height.? V&. V& (Poly%test_crate!Node. l$) fuel%)
         )
         0
       ))
      ) (I (let
        ((tmp%%$ (test_crate!Node./Node/right (%Poly%test_crate!Node. self!))))
        (ite
         (is-core!option.Option./Some tmp%%$)
         (let
          ((r$ (%Poly%test_crate!Node. (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                tmp%%$
          ))))))
          (test_crate!impl&%0.rec%height.? V&. V& (Poly%test_crate!Node. r$) fuel%)
         )
         0
   ))))))
   :pattern ((test_crate!impl&%0.rec%height.? V&. V& self! (succ fuel%)))
   :qid internal_test_crate!impl&__0.height._fuel_to_body_definition
   :skolemid skolem_internal_test_crate!impl&__0.height._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%0.height.)
  (forall ((V&. Dcr) (V& Type) (self! Poly)) (!
    (=>
     (and
      (tr_bound%builtin!SpecOrd. V&. V& V&. V&)
      (has_type self! (TYPE%test_crate!Node. V&. V&))
     )
     (= (test_crate!impl&%0.height.? V&. V& self!) (test_crate!impl&%0.rec%height.? V&.
       V& self! (succ fuel_nat%test_crate!impl&%0.height.)
    )))
    :pattern ((test_crate!impl&%0.height.? V&. V& self!))
    :qid internal_test_crate!impl&__0.height.?_definition
    :skolemid skolem_internal_test_crate!impl&__0.height.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%test_crate!Node. V&. V&))
    (<= 0 (test_crate!impl&%0.height.? V&. V& self!))
   )
   :pattern ((test_crate!impl&%0.height.? V&. V& self!))
   :qid internal_test_crate!impl&__0.height.?_pre_post_definition
   :skolemid skolem_internal_test_crate!impl&__0.height.?_pre_post_definition
)))
