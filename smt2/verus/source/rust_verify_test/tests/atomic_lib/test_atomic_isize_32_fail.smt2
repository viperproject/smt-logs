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
 (= SZ 32)
)
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
(declare-const fuel%vstd!atomic.wrapping_add_isize. FuelId)
(declare-const fuel%vstd!atomic.wrapping_sub_isize. FuelId)
(declare-const fuel%test_crate!VERUS_layout_of_usize. FuelId)
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
 (distinct fuel%vstd!atomic.wrapping_add_isize. fuel%vstd!atomic.wrapping_sub_isize.
  fuel%test_crate!VERUS_layout_of_usize. fuel%vstd!array.group_array_axioms. fuel%vstd!map.group_map_axioms.
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
(declare-sort vstd!atomic.PAtomicIsize. 0)
(declare-sort vstd!atomic.PermissionIsize. 0)
(declare-datatypes ((core!result.Result. 0) (vstd!atomic.PermissionDataIsize. 0) (tuple%0.
   0
  ) (tuple%2. 0)
 ) (((core!result.Result./Ok (core!result.Result./Ok/?0 Poly)) (core!result.Result./Err
    (core!result.Result./Err/?0 Poly)
   )
  ) ((vstd!atomic.PermissionDataIsize./PermissionDataIsize (vstd!atomic.PermissionDataIsize./PermissionDataIsize/?patomic
     Int
    ) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/?value Int)
   )
  ) ((tuple%0./tuple%0)) ((tuple%2./tuple%2 (tuple%2./tuple%2/?0 Poly) (tuple%2./tuple%2/?1
     Poly
)))))
(declare-fun core!result.Result./Ok/0 (core!result.Result.) Poly)
(declare-fun core!result.Result./Err/0 (core!result.Result.) Poly)
(declare-fun vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic (vstd!atomic.PermissionDataIsize.)
 Int
)
(declare-fun vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (vstd!atomic.PermissionDataIsize.)
 Int
)
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-fun TYPE%core!result.Result. (Dcr Type Dcr Type) Type)
(declare-const TYPE%vstd!atomic.PAtomicIsize. Type)
(declare-const TYPE%vstd!atomic.PermissionIsize. Type)
(declare-const TYPE%vstd!atomic.PermissionDataIsize. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%2. (Dcr Type Dcr Type) Type)
(declare-fun Poly%vstd!atomic.PAtomicIsize. (vstd!atomic.PAtomicIsize.) Poly)
(declare-fun %Poly%vstd!atomic.PAtomicIsize. (Poly) vstd!atomic.PAtomicIsize.)
(declare-fun Poly%vstd!atomic.PermissionIsize. (vstd!atomic.PermissionIsize.) Poly)
(declare-fun %Poly%vstd!atomic.PermissionIsize. (Poly) vstd!atomic.PermissionIsize.)
(declare-fun Poly%core!result.Result. (core!result.Result.) Poly)
(declare-fun %Poly%core!result.Result. (Poly) core!result.Result.)
(declare-fun Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.PermissionDataIsize.)
 Poly
)
(declare-fun %Poly%vstd!atomic.PermissionDataIsize. (Poly) vstd!atomic.PermissionDataIsize.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%2. (tuple%2.) Poly)
(declare-fun %Poly%tuple%2. (Poly) tuple%2.)
(assert
 (forall ((x vstd!atomic.PAtomicIsize.)) (!
   (= x (%Poly%vstd!atomic.PAtomicIsize. (Poly%vstd!atomic.PAtomicIsize. x)))
   :pattern ((Poly%vstd!atomic.PAtomicIsize. x))
   :qid internal_vstd__atomic__PAtomicIsize_box_axiom_definition
   :skolemid skolem_internal_vstd__atomic__PAtomicIsize_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd!atomic.PAtomicIsize.)
    (= x (Poly%vstd!atomic.PAtomicIsize. (%Poly%vstd!atomic.PAtomicIsize. x)))
   )
   :pattern ((has_type x TYPE%vstd!atomic.PAtomicIsize.))
   :qid internal_vstd__atomic__PAtomicIsize_unbox_axiom_definition
   :skolemid skolem_internal_vstd__atomic__PAtomicIsize_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!atomic.PAtomicIsize.)) (!
   (has_type (Poly%vstd!atomic.PAtomicIsize. x) TYPE%vstd!atomic.PAtomicIsize.)
   :pattern ((has_type (Poly%vstd!atomic.PAtomicIsize. x) TYPE%vstd!atomic.PAtomicIsize.))
   :qid internal_vstd__atomic__PAtomicIsize_has_type_always_definition
   :skolemid skolem_internal_vstd__atomic__PAtomicIsize_has_type_always_definition
)))
(assert
 (forall ((x vstd!atomic.PermissionIsize.)) (!
   (= x (%Poly%vstd!atomic.PermissionIsize. (Poly%vstd!atomic.PermissionIsize. x)))
   :pattern ((Poly%vstd!atomic.PermissionIsize. x))
   :qid internal_vstd__atomic__PermissionIsize_box_axiom_definition
   :skolemid skolem_internal_vstd__atomic__PermissionIsize_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd!atomic.PermissionIsize.)
    (= x (Poly%vstd!atomic.PermissionIsize. (%Poly%vstd!atomic.PermissionIsize. x)))
   )
   :pattern ((has_type x TYPE%vstd!atomic.PermissionIsize.))
   :qid internal_vstd__atomic__PermissionIsize_unbox_axiom_definition
   :skolemid skolem_internal_vstd__atomic__PermissionIsize_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!atomic.PermissionIsize.)) (!
   (has_type (Poly%vstd!atomic.PermissionIsize. x) TYPE%vstd!atomic.PermissionIsize.)
   :pattern ((has_type (Poly%vstd!atomic.PermissionIsize. x) TYPE%vstd!atomic.PermissionIsize.))
   :qid internal_vstd__atomic__PermissionIsize_has_type_always_definition
   :skolemid skolem_internal_vstd__atomic__PermissionIsize_has_type_always_definition
)))
(assert
 (forall ((x core!result.Result.)) (!
   (= x (%Poly%core!result.Result. (Poly%core!result.Result. x)))
   :pattern ((Poly%core!result.Result. x))
   :qid internal_core__result__Result_box_axiom_definition
   :skolemid skolem_internal_core__result__Result_box_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!result.Result. T&. T& E&. E&))
    (= x (Poly%core!result.Result. (%Poly%core!result.Result. x)))
   )
   :pattern ((has_type x (TYPE%core!result.Result. T&. T& E&. E&)))
   :qid internal_core__result__Result_unbox_axiom_definition
   :skolemid skolem_internal_core__result__Result_unbox_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (_0! Poly)) (!
   (=>
    (has_type _0! T&)
    (has_type (Poly%core!result.Result. (core!result.Result./Ok _0!)) (TYPE%core!result.Result.
      T&. T& E&. E&
   )))
   :pattern ((has_type (Poly%core!result.Result. (core!result.Result./Ok _0!)) (TYPE%core!result.Result.
      T&. T& E&. E&
   )))
   :qid internal_core!result.Result./Ok_constructor_definition
   :skolemid skolem_internal_core!result.Result./Ok_constructor_definition
)))
(assert
 (forall ((x core!result.Result.)) (!
   (= (core!result.Result./Ok/0 x) (core!result.Result./Ok/?0 x))
   :pattern ((core!result.Result./Ok/0 x))
   :qid internal_core!result.Result./Ok/0_accessor_definition
   :skolemid skolem_internal_core!result.Result./Ok/0_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!result.Result. T&. T& E&. E&))
    (has_type (core!result.Result./Ok/0 (%Poly%core!result.Result. x)) T&)
   )
   :pattern ((core!result.Result./Ok/0 (%Poly%core!result.Result. x)) (has_type x (TYPE%core!result.Result.
      T&. T& E&. E&
   )))
   :qid internal_core!result.Result./Ok/0_invariant_definition
   :skolemid skolem_internal_core!result.Result./Ok/0_invariant_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (_0! Poly)) (!
   (=>
    (has_type _0! E&)
    (has_type (Poly%core!result.Result. (core!result.Result./Err _0!)) (TYPE%core!result.Result.
      T&. T& E&. E&
   )))
   :pattern ((has_type (Poly%core!result.Result. (core!result.Result./Err _0!)) (TYPE%core!result.Result.
      T&. T& E&. E&
   )))
   :qid internal_core!result.Result./Err_constructor_definition
   :skolemid skolem_internal_core!result.Result./Err_constructor_definition
)))
(assert
 (forall ((x core!result.Result.)) (!
   (= (core!result.Result./Err/0 x) (core!result.Result./Err/?0 x))
   :pattern ((core!result.Result./Err/0 x))
   :qid internal_core!result.Result./Err/0_accessor_definition
   :skolemid skolem_internal_core!result.Result./Err/0_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!result.Result. T&. T& E&. E&))
    (has_type (core!result.Result./Err/0 (%Poly%core!result.Result. x)) E&)
   )
   :pattern ((core!result.Result./Err/0 (%Poly%core!result.Result. x)) (has_type x (TYPE%core!result.Result.
      T&. T& E&. E&
   )))
   :qid internal_core!result.Result./Err/0_invariant_definition
   :skolemid skolem_internal_core!result.Result./Err/0_invariant_definition
)))
(assert
 (forall ((x core!result.Result.)) (!
   (=>
    (is-core!result.Result./Ok x)
    (height_lt (height (core!result.Result./Ok/0 x)) (height (Poly%core!result.Result. x)))
   )
   :pattern ((height (core!result.Result./Ok/0 x)))
   :qid prelude_datatype_height_core!result.Result./Ok/0
   :skolemid skolem_prelude_datatype_height_core!result.Result./Ok/0
)))
(assert
 (forall ((x core!result.Result.)) (!
   (=>
    (is-core!result.Result./Err x)
    (height_lt (height (core!result.Result./Err/0 x)) (height (Poly%core!result.Result.
       x
   ))))
   :pattern ((height (core!result.Result./Err/0 x)))
   :qid prelude_datatype_height_core!result.Result./Err/0
   :skolemid skolem_prelude_datatype_height_core!result.Result./Err/0
)))
(assert
 (forall ((x vstd!atomic.PermissionDataIsize.)) (!
   (= x (%Poly%vstd!atomic.PermissionDataIsize. (Poly%vstd!atomic.PermissionDataIsize.
      x
   )))
   :pattern ((Poly%vstd!atomic.PermissionDataIsize. x))
   :qid internal_vstd__atomic__PermissionDataIsize_box_axiom_definition
   :skolemid skolem_internal_vstd__atomic__PermissionDataIsize_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd!atomic.PermissionDataIsize.)
    (= x (Poly%vstd!atomic.PermissionDataIsize. (%Poly%vstd!atomic.PermissionDataIsize.
       x
   ))))
   :pattern ((has_type x TYPE%vstd!atomic.PermissionDataIsize.))
   :qid internal_vstd__atomic__PermissionDataIsize_unbox_axiom_definition
   :skolemid skolem_internal_vstd__atomic__PermissionDataIsize_unbox_axiom_definition
)))
(assert
 (forall ((_patomic! Int) (_value! Int)) (!
   (=>
    (iInv SZ _value!)
    (has_type (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.PermissionDataIsize./PermissionDataIsize
       _patomic! _value!
      )
     ) TYPE%vstd!atomic.PermissionDataIsize.
   ))
   :pattern ((has_type (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.PermissionDataIsize./PermissionDataIsize
       _patomic! _value!
      )
     ) TYPE%vstd!atomic.PermissionDataIsize.
   ))
   :qid internal_vstd!atomic.PermissionDataIsize./PermissionDataIsize_constructor_definition
   :skolemid skolem_internal_vstd!atomic.PermissionDataIsize./PermissionDataIsize_constructor_definition
)))
(assert
 (forall ((x vstd!atomic.PermissionDataIsize.)) (!
   (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic x) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/?patomic
     x
   ))
   :pattern ((vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic x))
   :qid internal_vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic_accessor_definition
   :skolemid skolem_internal_vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic_accessor_definition
)))
(assert
 (forall ((x vstd!atomic.PermissionDataIsize.)) (!
   (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value x) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/?value
     x
   ))
   :pattern ((vstd!atomic.PermissionDataIsize./PermissionDataIsize/value x))
   :qid internal_vstd!atomic.PermissionDataIsize./PermissionDataIsize/value_accessor_definition
   :skolemid skolem_internal_vstd!atomic.PermissionDataIsize./PermissionDataIsize/value_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd!atomic.PermissionDataIsize.)
    (iInv SZ (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
       x
   ))))
   :pattern ((vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
      x
     )
    ) (has_type x TYPE%vstd!atomic.PermissionDataIsize.)
   )
   :qid internal_vstd!atomic.PermissionDataIsize./PermissionDataIsize/value_invariant_definition
   :skolemid skolem_internal_vstd!atomic.PermissionDataIsize./PermissionDataIsize/value_invariant_definition
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

;; Function-Decl vstd::atomic::impl&%20::view
(declare-fun vstd!atomic.impl&%20.view.? (Poly) vstd!atomic.PermissionDataIsize.)

;; Function-Decl vstd::atomic::impl&%21::id
(declare-fun vstd!atomic.impl&%21.id.? (Poly) Int)

;; Function-Decl vstd::atomic::wrapping_add_isize
(declare-fun vstd!atomic.wrapping_add_isize.? (Poly Poly) Int)

;; Function-Decl vstd::atomic::wrapping_sub_isize
(declare-fun vstd!atomic.wrapping_sub_isize.? (Poly Poly) Int)

;; Function-Decl vstd::layout::size_of
(declare-fun vstd!layout.size_of.? (Dcr Type) Int)

;; Function-Axioms vstd::atomic::impl&%20::view
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd!atomic.PermissionIsize.)
    (has_type (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? self!))
     TYPE%vstd!atomic.PermissionDataIsize.
   ))
   :pattern ((vstd!atomic.impl&%20.view.? self!))
   :qid internal_vstd!atomic.impl&__20.view.?_pre_post_definition
   :skolemid skolem_internal_vstd!atomic.impl&__20.view.?_pre_post_definition
)))

;; Function-Specs vstd::atomic::impl&%21::new
(declare-fun ens%vstd!atomic.impl&%21.new. (Int tuple%2.) Bool)
(assert
 (forall ((i! Int) (res! tuple%2.)) (!
   (= (ens%vstd!atomic.impl&%21.new. i! res!) (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ TYPE%vstd!atomic.PAtomicIsize. (TRACKED
        $
       ) TYPE%vstd!atomic.PermissionIsize.
     ))
     (= (vstd!atomic.impl&%20.view.? (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. res!))))
      (vstd!atomic.PermissionDataIsize./PermissionDataIsize (%I (I (vstd!atomic.impl&%21.id.?
          (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!)))
        ))
       ) (%I (I i!))
   ))))
   :pattern ((ens%vstd!atomic.impl&%21.new. i! res!))
   :qid internal_ens__vstd!atomic.impl&__21.new._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__21.new._definition
)))

;; Function-Specs vstd::atomic::impl&%21::load
(declare-fun req%vstd!atomic.impl&%21.load. (vstd!atomic.PAtomicIsize. vstd!atomic.PermissionIsize.)
 Bool
)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (perm! vstd!atomic.PermissionIsize.)) (
   !
   (= (req%vstd!atomic.impl&%21.load. self! perm!) (=>
     %%global_location_label%%0
     (= (vstd!atomic.impl&%21.id.? (Poly%vstd!atomic.PAtomicIsize. self!)) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd!atomic.PermissionDataIsize. (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.?
          (Poly%vstd!atomic.PermissionIsize. perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%21.load. self! perm!))
   :qid internal_req__vstd!atomic.impl&__21.load._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__21.load._definition
)))
(declare-fun ens%vstd!atomic.impl&%21.load. (vstd!atomic.PAtomicIsize. vstd!atomic.PermissionIsize.
  Int
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (perm! vstd!atomic.PermissionIsize.) (ret!
    Int
   )
  ) (!
   (= (ens%vstd!atomic.impl&%21.load. self! perm! ret!) (and
     (iInv SZ ret!)
     (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           perm!
       ))))
      ) ret!
   )))
   :pattern ((ens%vstd!atomic.impl&%21.load. self! perm! ret!))
   :qid internal_ens__vstd!atomic.impl&__21.load._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__21.load._definition
)))

;; Function-Specs vstd::atomic::impl&%21::store
(declare-fun req%vstd!atomic.impl&%21.store. (vstd!atomic.PAtomicIsize. vstd!atomic.PermissionIsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (pre%perm! vstd!atomic.PermissionIsize.)
   (v! Int)
  ) (!
   (= (req%vstd!atomic.impl&%21.store. self! pre%perm! v!) (=>
     %%global_location_label%%1
     (= (vstd!atomic.impl&%21.id.? (Poly%vstd!atomic.PAtomicIsize. self!)) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd!atomic.PermissionDataIsize. (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.?
          (Poly%vstd!atomic.PermissionIsize. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%21.store. self! pre%perm! v!))
   :qid internal_req__vstd!atomic.impl&__21.store._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__21.store._definition
)))
(declare-fun ens%vstd!atomic.impl&%21.store. (vstd!atomic.PAtomicIsize. vstd!atomic.PermissionIsize.
  vstd!atomic.PermissionIsize. Int
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (pre%perm! vstd!atomic.PermissionIsize.)
   (perm! vstd!atomic.PermissionIsize.) (v! Int)
  ) (!
   (= (ens%vstd!atomic.impl&%21.store. self! pre%perm! perm! v!) (and
     (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           perm!
       ))))
      ) v!
     )
     (= (vstd!atomic.impl&%21.id.? (Poly%vstd!atomic.PAtomicIsize. self!)) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd!atomic.PermissionDataIsize. (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.?
          (Poly%vstd!atomic.PermissionIsize. perm!)
   )))))))
   :pattern ((ens%vstd!atomic.impl&%21.store. self! pre%perm! perm! v!))
   :qid internal_ens__vstd!atomic.impl&__21.store._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__21.store._definition
)))

;; Function-Specs vstd::atomic::impl&%21::compare_exchange
(declare-fun req%vstd!atomic.impl&%21.compare_exchange. (vstd!atomic.PAtomicIsize.
  vstd!atomic.PermissionIsize. Int Int
 ) Bool
)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (pre%perm! vstd!atomic.PermissionIsize.)
   (current! Int) (new! Int)
  ) (!
   (= (req%vstd!atomic.impl&%21.compare_exchange. self! pre%perm! current! new!) (=>
     %%global_location_label%%2
     (= (vstd!atomic.impl&%21.id.? (Poly%vstd!atomic.PAtomicIsize. self!)) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd!atomic.PermissionDataIsize. (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.?
          (Poly%vstd!atomic.PermissionIsize. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%21.compare_exchange. self! pre%perm! current! new!))
   :qid internal_req__vstd!atomic.impl&__21.compare_exchange._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__21.compare_exchange._definition
)))
(declare-fun ens%vstd!atomic.impl&%21.compare_exchange. (vstd!atomic.PAtomicIsize.
  vstd!atomic.PermissionIsize. vstd!atomic.PermissionIsize. Int Int core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (pre%perm! vstd!atomic.PermissionIsize.)
   (perm! vstd!atomic.PermissionIsize.) (current! Int) (new! Int) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd!atomic.impl&%21.compare_exchange. self! pre%perm! perm! current! new!
     ret!
    ) (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ (SINT SZ) $ (
        SINT SZ
     )))
     (and
      (= (vstd!atomic.impl&%21.id.? (Poly%vstd!atomic.PAtomicIsize. self!)) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic
        (%Poly%vstd!atomic.PermissionDataIsize. (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.?
           (Poly%vstd!atomic.PermissionIsize. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%I (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
             (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
                pre%perm!
          ))))))
          (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
             (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
            (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
               pre%perm!
       ))))))))
       (let
        ((r$ (%I (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (not (= current! (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
              (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
                 pre%perm!
          )))))))
          (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
             (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
                perm!
            ))))
           ) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
             (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
                pre%perm!
         )))))))
         (= r$ (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
            (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd!atomic.impl&%21.compare_exchange. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd!atomic.impl&__21.compare_exchange._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__21.compare_exchange._definition
)))

;; Function-Specs vstd::atomic::impl&%21::compare_exchange_weak
(declare-fun req%vstd!atomic.impl&%21.compare_exchange_weak. (vstd!atomic.PAtomicIsize.
  vstd!atomic.PermissionIsize. Int Int
 ) Bool
)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (pre%perm! vstd!atomic.PermissionIsize.)
   (current! Int) (new! Int)
  ) (!
   (= (req%vstd!atomic.impl&%21.compare_exchange_weak. self! pre%perm! current! new!)
    (=>
     %%global_location_label%%3
     (= (vstd!atomic.impl&%21.id.? (Poly%vstd!atomic.PAtomicIsize. self!)) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd!atomic.PermissionDataIsize. (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.?
          (Poly%vstd!atomic.PermissionIsize. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%21.compare_exchange_weak. self! pre%perm! current!
     new!
   ))
   :qid internal_req__vstd!atomic.impl&__21.compare_exchange_weak._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__21.compare_exchange_weak._definition
)))
(declare-fun ens%vstd!atomic.impl&%21.compare_exchange_weak. (vstd!atomic.PAtomicIsize.
  vstd!atomic.PermissionIsize. vstd!atomic.PermissionIsize. Int Int core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (pre%perm! vstd!atomic.PermissionIsize.)
   (perm! vstd!atomic.PermissionIsize.) (current! Int) (new! Int) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd!atomic.impl&%21.compare_exchange_weak. self! pre%perm! perm! current!
     new! ret!
    ) (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ (SINT SZ) $ (
        SINT SZ
     )))
     (and
      (= (vstd!atomic.impl&%21.id.? (Poly%vstd!atomic.PAtomicIsize. self!)) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic
        (%Poly%vstd!atomic.PermissionDataIsize. (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.?
           (Poly%vstd!atomic.PermissionIsize. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%I (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
             (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
                pre%perm!
          ))))))
          (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
             (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
            (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
               pre%perm!
       ))))))))
       (let
        ((r$ (%I (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
            (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
               perm!
           ))))
          ) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
            (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
               pre%perm!
         ))))))
         (= r$ (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
            (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd!atomic.impl&%21.compare_exchange_weak. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd!atomic.impl&__21.compare_exchange_weak._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__21.compare_exchange_weak._definition
)))

;; Function-Specs vstd::atomic::impl&%21::swap
(declare-fun req%vstd!atomic.impl&%21.swap. (vstd!atomic.PAtomicIsize. vstd!atomic.PermissionIsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (pre%perm! vstd!atomic.PermissionIsize.)
   (v! Int)
  ) (!
   (= (req%vstd!atomic.impl&%21.swap. self! pre%perm! v!) (=>
     %%global_location_label%%4
     (= (vstd!atomic.impl&%21.id.? (Poly%vstd!atomic.PAtomicIsize. self!)) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd!atomic.PermissionDataIsize. (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.?
          (Poly%vstd!atomic.PermissionIsize. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%21.swap. self! pre%perm! v!))
   :qid internal_req__vstd!atomic.impl&__21.swap._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__21.swap._definition
)))
(declare-fun ens%vstd!atomic.impl&%21.swap. (vstd!atomic.PAtomicIsize. vstd!atomic.PermissionIsize.
  vstd!atomic.PermissionIsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (pre%perm! vstd!atomic.PermissionIsize.)
   (perm! vstd!atomic.PermissionIsize.) (v! Int) (ret! Int)
  ) (!
   (= (ens%vstd!atomic.impl&%21.swap. self! pre%perm! perm! v! ret!) (and
     (iInv SZ ret!)
     (and
      (and
       (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
          (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
             perm!
         ))))
        ) v!
       )
       (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
          (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
             pre%perm!
         ))))
        ) ret!
      ))
      (= (vstd!atomic.impl&%21.id.? (Poly%vstd!atomic.PAtomicIsize. self!)) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic
        (%Poly%vstd!atomic.PermissionDataIsize. (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.?
           (Poly%vstd!atomic.PermissionIsize. perm!)
   ))))))))
   :pattern ((ens%vstd!atomic.impl&%21.swap. self! pre%perm! perm! v! ret!))
   :qid internal_ens__vstd!atomic.impl&__21.swap._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__21.swap._definition
)))

;; Function-Specs vstd::atomic::impl&%21::into_inner
(declare-fun req%vstd!atomic.impl&%21.into_inner. (vstd!atomic.PAtomicIsize. vstd!atomic.PermissionIsize.)
 Bool
)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (perm! vstd!atomic.PermissionIsize.)) (
   !
   (= (req%vstd!atomic.impl&%21.into_inner. self! perm!) (=>
     %%global_location_label%%5
     (= (vstd!atomic.impl&%21.id.? (Poly%vstd!atomic.PAtomicIsize. self!)) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd!atomic.PermissionDataIsize. (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.?
          (Poly%vstd!atomic.PermissionIsize. perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%21.into_inner. self! perm!))
   :qid internal_req__vstd!atomic.impl&__21.into_inner._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__21.into_inner._definition
)))
(declare-fun ens%vstd!atomic.impl&%21.into_inner. (vstd!atomic.PAtomicIsize. vstd!atomic.PermissionIsize.
  Int
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (perm! vstd!atomic.PermissionIsize.) (ret!
    Int
   )
  ) (!
   (= (ens%vstd!atomic.impl&%21.into_inner. self! perm! ret!) (and
     (iInv SZ ret!)
     (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           perm!
       ))))
      ) ret!
   )))
   :pattern ((ens%vstd!atomic.impl&%21.into_inner. self! perm! ret!))
   :qid internal_ens__vstd!atomic.impl&__21.into_inner._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__21.into_inner._definition
)))

;; Function-Axioms vstd::atomic::wrapping_add_isize
(assert
 (fuel_bool_default fuel%vstd!atomic.wrapping_add_isize.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!atomic.wrapping_add_isize.)
  (forall ((a! Poly) (b! Poly)) (!
    (= (vstd!atomic.wrapping_add_isize.? a! b!) (ite
      (> (Add (%I a!) (%I b!)) (- (iHi SZ) 1))
      (Sub (Add (%I a!) (%I b!)) (Add (Sub (- (iHi SZ) 1) (iLo SZ)) 1))
      (ite
       (< (Add (%I a!) (%I b!)) (iLo SZ))
       (Add (Add (%I a!) (%I b!)) (Add (Sub (- (iHi SZ) 1) (iLo SZ)) 1))
       (Add (%I a!) (%I b!))
    )))
    :pattern ((vstd!atomic.wrapping_add_isize.? a! b!))
    :qid internal_vstd!atomic.wrapping_add_isize.?_definition
    :skolemid skolem_internal_vstd!atomic.wrapping_add_isize.?_definition
))))

;; Function-Specs vstd::atomic::impl&%21::fetch_add_wrapping
(declare-fun req%vstd!atomic.impl&%21.fetch_add_wrapping. (vstd!atomic.PAtomicIsize.
  vstd!atomic.PermissionIsize. Int
 ) Bool
)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (pre%perm! vstd!atomic.PermissionIsize.)
   (n! Int)
  ) (!
   (= (req%vstd!atomic.impl&%21.fetch_add_wrapping. self! pre%perm! n!) (=>
     %%global_location_label%%6
     (= (vstd!atomic.impl&%21.id.? (Poly%vstd!atomic.PAtomicIsize. self!)) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd!atomic.PermissionDataIsize. (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.?
          (Poly%vstd!atomic.PermissionIsize. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%21.fetch_add_wrapping. self! pre%perm! n!))
   :qid internal_req__vstd!atomic.impl&__21.fetch_add_wrapping._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__21.fetch_add_wrapping._definition
)))
(declare-fun ens%vstd!atomic.impl&%21.fetch_add_wrapping. (vstd!atomic.PAtomicIsize.
  vstd!atomic.PermissionIsize. vstd!atomic.PermissionIsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (pre%perm! vstd!atomic.PermissionIsize.)
   (perm! vstd!atomic.PermissionIsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd!atomic.impl&%21.fetch_add_wrapping. self! pre%perm! perm! n! ret!) (and
     (iInv SZ ret!)
     (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           perm!
       ))))
      ) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           pre%perm!
     ))))))
     (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           perm!
       ))))
      ) (vstd!atomic.wrapping_add_isize.? (I (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value
         (%Poly%vstd!atomic.PermissionDataIsize. (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.?
            (Poly%vstd!atomic.PermissionIsize. pre%perm!)
        ))))
       ) (I n!)
   ))))
   :pattern ((ens%vstd!atomic.impl&%21.fetch_add_wrapping. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd!atomic.impl&__21.fetch_add_wrapping._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__21.fetch_add_wrapping._definition
)))

;; Function-Axioms vstd::atomic::wrapping_sub_isize
(assert
 (fuel_bool_default fuel%vstd!atomic.wrapping_sub_isize.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!atomic.wrapping_sub_isize.)
  (forall ((a! Poly) (b! Poly)) (!
    (= (vstd!atomic.wrapping_sub_isize.? a! b!) (ite
      (> (Sub (%I a!) (%I b!)) (- (iHi SZ) 1))
      (Sub (Sub (%I a!) (%I b!)) (Add (Sub (- (iHi SZ) 1) (iLo SZ)) 1))
      (ite
       (< (Sub (%I a!) (%I b!)) (iLo SZ))
       (Add (Sub (%I a!) (%I b!)) (Add (Sub (- (iHi SZ) 1) (iLo SZ)) 1))
       (Sub (%I a!) (%I b!))
    )))
    :pattern ((vstd!atomic.wrapping_sub_isize.? a! b!))
    :qid internal_vstd!atomic.wrapping_sub_isize.?_definition
    :skolemid skolem_internal_vstd!atomic.wrapping_sub_isize.?_definition
))))

;; Function-Specs vstd::atomic::impl&%21::fetch_sub_wrapping
(declare-fun req%vstd!atomic.impl&%21.fetch_sub_wrapping. (vstd!atomic.PAtomicIsize.
  vstd!atomic.PermissionIsize. Int
 ) Bool
)
(declare-const %%global_location_label%%7 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (pre%perm! vstd!atomic.PermissionIsize.)
   (n! Int)
  ) (!
   (= (req%vstd!atomic.impl&%21.fetch_sub_wrapping. self! pre%perm! n!) (=>
     %%global_location_label%%7
     (= (vstd!atomic.impl&%21.id.? (Poly%vstd!atomic.PAtomicIsize. self!)) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd!atomic.PermissionDataIsize. (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.?
          (Poly%vstd!atomic.PermissionIsize. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%21.fetch_sub_wrapping. self! pre%perm! n!))
   :qid internal_req__vstd!atomic.impl&__21.fetch_sub_wrapping._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__21.fetch_sub_wrapping._definition
)))
(declare-fun ens%vstd!atomic.impl&%21.fetch_sub_wrapping. (vstd!atomic.PAtomicIsize.
  vstd!atomic.PermissionIsize. vstd!atomic.PermissionIsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (pre%perm! vstd!atomic.PermissionIsize.)
   (perm! vstd!atomic.PermissionIsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd!atomic.impl&%21.fetch_sub_wrapping. self! pre%perm! perm! n! ret!) (and
     (iInv SZ ret!)
     (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           perm!
       ))))
      ) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           pre%perm!
     ))))))
     (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           perm!
       ))))
      ) (vstd!atomic.wrapping_sub_isize.? (I (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value
         (%Poly%vstd!atomic.PermissionDataIsize. (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.?
            (Poly%vstd!atomic.PermissionIsize. pre%perm!)
        ))))
       ) (I n!)
   ))))
   :pattern ((ens%vstd!atomic.impl&%21.fetch_sub_wrapping. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd!atomic.impl&__21.fetch_sub_wrapping._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__21.fetch_sub_wrapping._definition
)))

;; Function-Specs vstd::atomic::impl&%21::fetch_and
(declare-fun req%vstd!atomic.impl&%21.fetch_and. (vstd!atomic.PAtomicIsize. vstd!atomic.PermissionIsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (pre%perm! vstd!atomic.PermissionIsize.)
   (n! Int)
  ) (!
   (= (req%vstd!atomic.impl&%21.fetch_and. self! pre%perm! n!) (=>
     %%global_location_label%%8
     (= (vstd!atomic.impl&%21.id.? (Poly%vstd!atomic.PAtomicIsize. self!)) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd!atomic.PermissionDataIsize. (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.?
          (Poly%vstd!atomic.PermissionIsize. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%21.fetch_and. self! pre%perm! n!))
   :qid internal_req__vstd!atomic.impl&__21.fetch_and._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__21.fetch_and._definition
)))
(declare-fun ens%vstd!atomic.impl&%21.fetch_and. (vstd!atomic.PAtomicIsize. vstd!atomic.PermissionIsize.
  vstd!atomic.PermissionIsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (pre%perm! vstd!atomic.PermissionIsize.)
   (perm! vstd!atomic.PermissionIsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd!atomic.impl&%21.fetch_and. self! pre%perm! perm! n! ret!) (and
     (iInv SZ ret!)
     (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           perm!
       ))))
      ) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           pre%perm!
     ))))))
     (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           perm!
       ))))
      ) (iClip SZ (bitand (I (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
           (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd!atomic.impl&%21.fetch_and. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd!atomic.impl&__21.fetch_and._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__21.fetch_and._definition
)))

;; Function-Specs vstd::atomic::impl&%21::fetch_or
(declare-fun req%vstd!atomic.impl&%21.fetch_or. (vstd!atomic.PAtomicIsize. vstd!atomic.PermissionIsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%9 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (pre%perm! vstd!atomic.PermissionIsize.)
   (n! Int)
  ) (!
   (= (req%vstd!atomic.impl&%21.fetch_or. self! pre%perm! n!) (=>
     %%global_location_label%%9
     (= (vstd!atomic.impl&%21.id.? (Poly%vstd!atomic.PAtomicIsize. self!)) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd!atomic.PermissionDataIsize. (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.?
          (Poly%vstd!atomic.PermissionIsize. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%21.fetch_or. self! pre%perm! n!))
   :qid internal_req__vstd!atomic.impl&__21.fetch_or._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__21.fetch_or._definition
)))
(declare-fun ens%vstd!atomic.impl&%21.fetch_or. (vstd!atomic.PAtomicIsize. vstd!atomic.PermissionIsize.
  vstd!atomic.PermissionIsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (pre%perm! vstd!atomic.PermissionIsize.)
   (perm! vstd!atomic.PermissionIsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd!atomic.impl&%21.fetch_or. self! pre%perm! perm! n! ret!) (and
     (iInv SZ ret!)
     (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           perm!
       ))))
      ) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           pre%perm!
     ))))))
     (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           perm!
       ))))
      ) (iClip SZ (bitor (I (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
           (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd!atomic.impl&%21.fetch_or. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd!atomic.impl&__21.fetch_or._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__21.fetch_or._definition
)))

;; Function-Specs vstd::atomic::impl&%21::fetch_xor
(declare-fun req%vstd!atomic.impl&%21.fetch_xor. (vstd!atomic.PAtomicIsize. vstd!atomic.PermissionIsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%10 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (pre%perm! vstd!atomic.PermissionIsize.)
   (n! Int)
  ) (!
   (= (req%vstd!atomic.impl&%21.fetch_xor. self! pre%perm! n!) (=>
     %%global_location_label%%10
     (= (vstd!atomic.impl&%21.id.? (Poly%vstd!atomic.PAtomicIsize. self!)) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd!atomic.PermissionDataIsize. (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.?
          (Poly%vstd!atomic.PermissionIsize. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%21.fetch_xor. self! pre%perm! n!))
   :qid internal_req__vstd!atomic.impl&__21.fetch_xor._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__21.fetch_xor._definition
)))
(declare-fun ens%vstd!atomic.impl&%21.fetch_xor. (vstd!atomic.PAtomicIsize. vstd!atomic.PermissionIsize.
  vstd!atomic.PermissionIsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (pre%perm! vstd!atomic.PermissionIsize.)
   (perm! vstd!atomic.PermissionIsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd!atomic.impl&%21.fetch_xor. self! pre%perm! perm! n! ret!) (and
     (iInv SZ ret!)
     (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           perm!
       ))))
      ) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           pre%perm!
     ))))))
     (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           perm!
       ))))
      ) (iClip SZ (bitxor (I (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
           (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd!atomic.impl&%21.fetch_xor. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd!atomic.impl&__21.fetch_xor._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__21.fetch_xor._definition
)))

;; Function-Specs vstd::atomic::impl&%21::fetch_nand
(declare-fun req%vstd!atomic.impl&%21.fetch_nand. (vstd!atomic.PAtomicIsize. vstd!atomic.PermissionIsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%11 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (pre%perm! vstd!atomic.PermissionIsize.)
   (n! Int)
  ) (!
   (= (req%vstd!atomic.impl&%21.fetch_nand. self! pre%perm! n!) (=>
     %%global_location_label%%11
     (= (vstd!atomic.impl&%21.id.? (Poly%vstd!atomic.PAtomicIsize. self!)) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd!atomic.PermissionDataIsize. (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.?
          (Poly%vstd!atomic.PermissionIsize. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%21.fetch_nand. self! pre%perm! n!))
   :qid internal_req__vstd!atomic.impl&__21.fetch_nand._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__21.fetch_nand._definition
)))
(declare-fun ens%vstd!atomic.impl&%21.fetch_nand. (vstd!atomic.PAtomicIsize. vstd!atomic.PermissionIsize.
  vstd!atomic.PermissionIsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (pre%perm! vstd!atomic.PermissionIsize.)
   (perm! vstd!atomic.PermissionIsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd!atomic.impl&%21.fetch_nand. self! pre%perm! perm! n! ret!) (and
     (iInv SZ ret!)
     (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           perm!
       ))))
      ) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           pre%perm!
     ))))))
     (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           perm!
       ))))
      ) (bitnot (I (iClip SZ (bitand (I (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value
            (%Poly%vstd!atomic.PermissionDataIsize. (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.?
               (Poly%vstd!atomic.PermissionIsize. pre%perm!)
           ))))
          ) (I n!)
   )))))))
   :pattern ((ens%vstd!atomic.impl&%21.fetch_nand. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd!atomic.impl&__21.fetch_nand._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__21.fetch_nand._definition
)))

;; Function-Specs vstd::atomic::impl&%21::fetch_max
(declare-fun req%vstd!atomic.impl&%21.fetch_max. (vstd!atomic.PAtomicIsize. vstd!atomic.PermissionIsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%12 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (pre%perm! vstd!atomic.PermissionIsize.)
   (n! Int)
  ) (!
   (= (req%vstd!atomic.impl&%21.fetch_max. self! pre%perm! n!) (=>
     %%global_location_label%%12
     (= (vstd!atomic.impl&%21.id.? (Poly%vstd!atomic.PAtomicIsize. self!)) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd!atomic.PermissionDataIsize. (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.?
          (Poly%vstd!atomic.PermissionIsize. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%21.fetch_max. self! pre%perm! n!))
   :qid internal_req__vstd!atomic.impl&__21.fetch_max._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__21.fetch_max._definition
)))
(declare-fun ens%vstd!atomic.impl&%21.fetch_max. (vstd!atomic.PAtomicIsize. vstd!atomic.PermissionIsize.
  vstd!atomic.PermissionIsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (pre%perm! vstd!atomic.PermissionIsize.)
   (perm! vstd!atomic.PermissionIsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd!atomic.impl&%21.fetch_max. self! pre%perm! perm! n! ret!) (and
     (iInv SZ ret!)
     (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           perm!
       ))))
      ) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           pre%perm!
     ))))))
     (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           perm!
       ))))
      ) (ite
       (> (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
          (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
             pre%perm!
         ))))
        ) n!
       )
       (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
         (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd!atomic.impl&%21.fetch_max. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd!atomic.impl&__21.fetch_max._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__21.fetch_max._definition
)))

;; Function-Specs vstd::atomic::impl&%21::fetch_min
(declare-fun req%vstd!atomic.impl&%21.fetch_min. (vstd!atomic.PAtomicIsize. vstd!atomic.PermissionIsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%13 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (pre%perm! vstd!atomic.PermissionIsize.)
   (n! Int)
  ) (!
   (= (req%vstd!atomic.impl&%21.fetch_min. self! pre%perm! n!) (=>
     %%global_location_label%%13
     (= (vstd!atomic.impl&%21.id.? (Poly%vstd!atomic.PAtomicIsize. self!)) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd!atomic.PermissionDataIsize. (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.?
          (Poly%vstd!atomic.PermissionIsize. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%21.fetch_min. self! pre%perm! n!))
   :qid internal_req__vstd!atomic.impl&__21.fetch_min._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__21.fetch_min._definition
)))
(declare-fun ens%vstd!atomic.impl&%21.fetch_min. (vstd!atomic.PAtomicIsize. vstd!atomic.PermissionIsize.
  vstd!atomic.PermissionIsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicIsize.) (pre%perm! vstd!atomic.PermissionIsize.)
   (perm! vstd!atomic.PermissionIsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd!atomic.impl&%21.fetch_min. self! pre%perm! perm! n! ret!) (and
     (iInv SZ ret!)
     (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           perm!
       ))))
      ) (vstd!atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           pre%perm!
     ))))))
     (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
           perm!
       ))))
      ) (ite
       (< (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
          (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
             pre%perm!
         ))))
        ) n!
       )
       (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
         (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd!atomic.impl&%21.fetch_min. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd!atomic.impl&__21.fetch_min._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__21.fetch_min._definition
)))

;; Function-Axioms vstd::layout::size_of
(assert
 (forall ((V&. Dcr) (V& Type)) (!
   (<= 0 (vstd!layout.size_of.? V&. V&))
   :pattern ((vstd!layout.size_of.? V&. V&))
   :qid internal_vstd!layout.size_of.?_pre_post_definition
   :skolemid skolem_internal_vstd!layout.size_of.?_pre_post_definition
)))

;; Broadcast test_crate::VERUS_layout_of_usize
(assert
 (= (vstd!layout.size_of.? $ (UINT SZ)) 4)
)

;; Function-Def test_crate::test
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/atomic_lib-86af995cc9979138-test_atomic_isize_32_fail/test.rs:20:5: 20:14 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Bool)
 (declare-const tmp%6 Bool)
 (declare-const tmp%7 Bool)
 (declare-const tmp%8 Bool)
 (declare-const tmp%9 Bool)
 (declare-const tmp%10 Int)
 (declare-const tmp%11 Bool)
 (declare-const tmp%12 Bool)
 (declare-const tmp%13 Int)
 (declare-const tmp%14 Bool)
 (declare-const tmp%15 Bool)
 (declare-const tmp%16 Bool)
 (declare-const tmp%17 Bool)
 (declare-const tmp%18 Bool)
 (declare-const tmp%19 Bool)
 (declare-const tmp%20 Bool)
 (declare-const tmp%21 Bool)
 (declare-const tmp%22 Bool)
 (declare-const tmp%23 Bool)
 (declare-const tmp%24 Bool)
 (declare-const tmp%25 Bool)
 (declare-const tmp%26 Bool)
 (declare-const tmp%27 Bool)
 (declare-const tmp%28 Bool)
 (declare-const tmp%29 Bool)
 (declare-const tmp%30 Bool)
 (declare-const tmp%31 Bool)
 (declare-const tmp%32 Bool)
 (declare-const tmp%33 Bool)
 (declare-const tmp%34 Bool)
 (declare-const tmp%35 Bool)
 (declare-const tmp%36 Bool)
 (declare-const tmp%37 Bool)
 (declare-const tmp%38 Bool)
 (declare-const tmp%39 Bool)
 (declare-const tmp%40 Bool)
 (declare-const tmp%%@ tuple%2.)
 (declare-const at@ vstd!atomic.PAtomicIsize.)
 (declare-const verus_tmp_perm@ vstd!atomic.PermissionIsize.)
 (declare-const perm@0 vstd!atomic.PermissionIsize.)
 (declare-const l@ Int)
 (declare-const l$1@ Int)
 (declare-const l$2@ Int)
 (declare-const l$3@ Int)
 (declare-const l$4@ Int)
 (declare-const l$5@ Int)
 (declare-const l$6@ Int)
 (declare-const l$7@ Int)
 (declare-const l$8@ Int)
 (declare-const l$9@ Int)
 (declare-const l$10@ Int)
 (declare-const l$11@ Int)
 (declare-const l$12@ Int)
 (declare-const l$13@ core!result.Result.)
 (declare-const l$14@ core!result.Result.)
 (declare-const l$15@ core!result.Result.)
 (declare-const l$16@ core!result.Result.)
 (declare-const l$17@ Int)
 (declare-const l$18@ Int)
 (assert
  fuel_defaults
 )
 (declare-const perm@1 vstd!atomic.PermissionIsize.)
 (declare-const perm@2 vstd!atomic.PermissionIsize.)
 (declare-const perm@3 vstd!atomic.PermissionIsize.)
 (declare-const perm@4 vstd!atomic.PermissionIsize.)
 (declare-const perm@5 vstd!atomic.PermissionIsize.)
 (declare-const perm@6 vstd!atomic.PermissionIsize.)
 (declare-const perm@7 vstd!atomic.PermissionIsize.)
 (declare-const perm@8 vstd!atomic.PermissionIsize.)
 (declare-const perm@9 vstd!atomic.PermissionIsize.)
 (declare-const perm@10 vstd!atomic.PermissionIsize.)
 (declare-const perm@11 vstd!atomic.PermissionIsize.)
 (declare-const perm@12 vstd!atomic.PermissionIsize.)
 (declare-const perm@13 vstd!atomic.PermissionIsize.)
 (declare-const perm@14 vstd!atomic.PermissionIsize.)
 (declare-const perm@15 vstd!atomic.PermissionIsize.)
 (declare-const perm@16 vstd!atomic.PermissionIsize.)
 (declare-const perm@17 vstd!atomic.PermissionIsize.)
 (declare-const perm@18 vstd!atomic.PermissionIsize.)
 (declare-const perm@19 vstd!atomic.PermissionIsize.)
 (declare-const perm@20 vstd!atomic.PermissionIsize.)
 (declare-const perm@21 vstd!atomic.PermissionIsize.)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%5 Bool)
 ;; assertion failed
 (declare-const %%location_label%%6 Bool)
 ;; assertion failed
 (declare-const %%location_label%%7 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%8 Bool)
 ;; assertion failed
 (declare-const %%location_label%%9 Bool)
 ;; assertion failed
 (declare-const %%location_label%%10 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%11 Bool)
 ;; assertion failed
 (declare-const %%location_label%%12 Bool)
 ;; assertion failed
 (declare-const %%location_label%%13 Bool)
 ;; possible arithmetic underflow/overflow
 (declare-const %%location_label%%14 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%15 Bool)
 ;; assertion failed
 (declare-const %%location_label%%16 Bool)
 ;; assertion failed
 (declare-const %%location_label%%17 Bool)
 ;; possible arithmetic underflow/overflow
 (declare-const %%location_label%%18 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%19 Bool)
 ;; assertion failed
 (declare-const %%location_label%%20 Bool)
 ;; assertion failed
 (declare-const %%location_label%%21 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%22 Bool)
 ;; assertion failed
 (declare-const %%location_label%%23 Bool)
 ;; assertion failed
 (declare-const %%location_label%%24 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%25 Bool)
 ;; assertion failed
 (declare-const %%location_label%%26 Bool)
 ;; assertion failed
 (declare-const %%location_label%%27 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%28 Bool)
 ;; assertion failed
 (declare-const %%location_label%%29 Bool)
 ;; assertion failed
 (declare-const %%location_label%%30 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%31 Bool)
 ;; assertion failed
 (declare-const %%location_label%%32 Bool)
 ;; assertion failed
 (declare-const %%location_label%%33 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%34 Bool)
 ;; assertion failed
 (declare-const %%location_label%%35 Bool)
 ;; assertion failed
 (declare-const %%location_label%%36 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%37 Bool)
 ;; assertion failed
 (declare-const %%location_label%%38 Bool)
 ;; assertion failed
 (declare-const %%location_label%%39 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%40 Bool)
 ;; assertion failed
 (declare-const %%location_label%%41 Bool)
 ;; assertion failed
 (declare-const %%location_label%%42 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%43 Bool)
 ;; assertion failed
 (declare-const %%location_label%%44 Bool)
 ;; assertion failed
 (declare-const %%location_label%%45 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%46 Bool)
 ;; assertion failed
 (declare-const %%location_label%%47 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%48 Bool)
 ;; assertion failed
 (declare-const %%location_label%%49 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%50 Bool)
 ;; assertion failed
 (declare-const %%location_label%%51 Bool)
 ;; assertion failed
 (declare-const %%location_label%%52 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%53 Bool)
 ;; assertion failed
 (declare-const %%location_label%%54 Bool)
 ;; assertion failed
 (declare-const %%location_label%%55 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%56 Bool)
 ;; assertion failed
 (declare-const %%location_label%%57 Bool)
 ;; assertion failed
 (declare-const %%location_label%%58 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%59 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%60 Bool)
 ;; assertion failed
 (declare-const %%location_label%%61 Bool)
 ;; assertion failed
 (declare-const %%location_label%%62 Bool)
 (assert
  (not (=>
    (ens%vstd!atomic.impl&%21.new. 5 tmp%%@)
    (=>
     (= at@ (%Poly%vstd!atomic.PAtomicIsize. (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2.
          tmp%%@
     )))))
     (=>
      (= verus_tmp_perm@ (%Poly%vstd!atomic.PermissionIsize. (tuple%2./tuple%2/1 (%Poly%tuple%2.
          (Poly%tuple%2. tmp%%@)
      ))))
      (=>
       (= perm@1 verus_tmp_perm@)
       (=>
        (= tmp%1 (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
            (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
               perm@1
           ))))
          ) 5
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
            (req%vstd!atomic.impl&%21.load. at@ perm@1)
           )
           (=>
            (ens%vstd!atomic.impl&%21.load. at@ perm@1 l@)
            (=>
             (= tmp%2 (= l@ 5))
             (and
              (=>
               %%location_label%%2
               tmp%2
              )
              (=>
               tmp%2
               (and
                (=>
                 %%location_label%%3
                 (req%vstd!atomic.impl&%21.store. at@ perm@1 6)
                )
                (=>
                 (ens%vstd!atomic.impl&%21.store. at@ perm@1 perm@2 6)
                 (=>
                  (= tmp%3 (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
                      (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
                         perm@2
                     ))))
                    ) 6
                  ))
                  (and
                   (=>
                    %%location_label%%4
                    tmp%3
                   )
                   (=>
                    tmp%3
                    (and
                     (=>
                      %%location_label%%5
                      (req%vstd!atomic.impl&%21.swap. at@ perm@2 9)
                     )
                     (=>
                      (ens%vstd!atomic.impl&%21.swap. at@ perm@2 perm@3 9 l$1@)
                      (=>
                       (= tmp%4 (= l$1@ 6))
                       (and
                        (=>
                         %%location_label%%6
                         tmp%4
                        )
                        (=>
                         tmp%4
                         (=>
                          (= tmp%5 (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
                              (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
                                 perm@3
                             ))))
                            ) 9
                          ))
                          (and
                           (=>
                            %%location_label%%7
                            tmp%5
                           )
                           (=>
                            tmp%5
                            (and
                             (=>
                              %%location_label%%8
                              (req%vstd!atomic.impl&%21.fetch_add_wrapping. at@ perm@3 2147483647)
                             )
                             (=>
                              (ens%vstd!atomic.impl&%21.fetch_add_wrapping. at@ perm@3 perm@4 2147483647 l$2@)
                              (=>
                               (= tmp%6 (= l$2@ 9))
                               (and
                                (=>
                                 %%location_label%%9
                                 tmp%6
                                )
                                (=>
                                 tmp%6
                                 (=>
                                  (= tmp%7 (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
                                      (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
                                         perm@4
                                     ))))
                                    ) (Sub 0 2147483640)
                                  ))
                                  (and
                                   (=>
                                    %%location_label%%10
                                    tmp%7
                                   )
                                   (=>
                                    tmp%7
                                    (and
                                     (=>
                                      %%location_label%%11
                                      (req%vstd!atomic.impl&%21.fetch_sub_wrapping. at@ perm@4 2147483647)
                                     )
                                     (=>
                                      (ens%vstd!atomic.impl&%21.fetch_sub_wrapping. at@ perm@4 perm@5 2147483647 l$3@)
                                      (=>
                                       (= tmp%8 (= l$3@ (Sub 0 2147483640)))
                                       (and
                                        (=>
                                         %%location_label%%12
                                         tmp%8
                                        )
                                        (=>
                                         tmp%8
                                         (=>
                                          (= tmp%9 (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
                                              (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
                                                 perm@5
                                             ))))
                                            ) 9
                                          ))
                                          (and
                                           (=>
                                            %%location_label%%13
                                            tmp%9
                                           )
                                           (=>
                                            tmp%9
                                            (and
                                             (=>
                                              %%location_label%%14
                                              (iInv SZ (Sub 0 2147483647))
                                             )
                                             (=>
                                              (= tmp%10 (Sub 0 2147483647))
                                              (and
                                               (=>
                                                %%location_label%%15
                                                (req%vstd!atomic.impl&%21.fetch_sub_wrapping. at@ perm@5 tmp%10)
                                               )
                                               (=>
                                                (ens%vstd!atomic.impl&%21.fetch_sub_wrapping. at@ perm@5 perm@6 tmp%10 l$4@)
                                                (=>
                                                 (= tmp%11 (= l$4@ 9))
                                                 (and
                                                  (=>
                                                   %%location_label%%16
                                                   tmp%11
                                                  )
                                                  (=>
                                                   tmp%11
                                                   (=>
                                                    (= tmp%12 (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
                                                        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
                                                           perm@6
                                                       ))))
                                                      ) (Sub 0 2147483640)
                                                    ))
                                                    (and
                                                     (=>
                                                      %%location_label%%17
                                                      tmp%12
                                                     )
                                                     (=>
                                                      tmp%12
                                                      (and
                                                       (=>
                                                        %%location_label%%18
                                                        (iInv SZ (Sub 0 2147483647))
                                                       )
                                                       (=>
                                                        (= tmp%13 (Sub 0 2147483647))
                                                        (and
                                                         (=>
                                                          %%location_label%%19
                                                          (req%vstd!atomic.impl&%21.fetch_add_wrapping. at@ perm@6 tmp%13)
                                                         )
                                                         (=>
                                                          (ens%vstd!atomic.impl&%21.fetch_add_wrapping. at@ perm@6 perm@7 tmp%13 l$5@)
                                                          (=>
                                                           (= tmp%14 (= l$5@ (Sub 0 2147483640)))
                                                           (and
                                                            (=>
                                                             %%location_label%%20
                                                             tmp%14
                                                            )
                                                            (=>
                                                             tmp%14
                                                             (=>
                                                              (= tmp%15 (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
                                                                  (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
                                                                     perm@7
                                                                 ))))
                                                                ) 9
                                                              ))
                                                              (and
                                                               (=>
                                                                %%location_label%%21
                                                                tmp%15
                                                               )
                                                               (=>
                                                                tmp%15
                                                                (and
                                                                 (=>
                                                                  %%location_label%%22
                                                                  (req%vstd!atomic.impl&%21.fetch_or. at@ perm@7 2)
                                                                 )
                                                                 (=>
                                                                  (ens%vstd!atomic.impl&%21.fetch_or. at@ perm@7 perm@8 2 l$6@)
                                                                  (=>
                                                                   (= tmp%16 (= l$6@ 9))
                                                                   (and
                                                                    (=>
                                                                     %%location_label%%23
                                                                     tmp%16
                                                                    )
                                                                    (=>
                                                                     tmp%16
                                                                     (=>
                                                                      (= (iClip SZ (bitor (I (iClip SZ 9)) (I (iClip SZ 2)))) (iClip SZ 11))
                                                                      (=>
                                                                       (= tmp%17 (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
                                                                           (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
                                                                              perm@8
                                                                          ))))
                                                                         ) 11
                                                                       ))
                                                                       (and
                                                                        (=>
                                                                         %%location_label%%24
                                                                         tmp%17
                                                                        )
                                                                        (=>
                                                                         tmp%17
                                                                         (and
                                                                          (=>
                                                                           %%location_label%%25
                                                                           (req%vstd!atomic.impl&%21.fetch_and. at@ perm@8 6)
                                                                          )
                                                                          (=>
                                                                           (ens%vstd!atomic.impl&%21.fetch_and. at@ perm@8 perm@9 6 l$7@)
                                                                           (=>
                                                                            (= tmp%18 (= l$7@ 11))
                                                                            (and
                                                                             (=>
                                                                              %%location_label%%26
                                                                              tmp%18
                                                                             )
                                                                             (=>
                                                                              tmp%18
                                                                              (=>
                                                                               (= (iClip SZ (bitand (I (iClip SZ 11)) (I (iClip SZ 6)))) (iClip SZ 2))
                                                                               (=>
                                                                                (= tmp%19 (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
                                                                                    (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
                                                                                       perm@9
                                                                                   ))))
                                                                                  ) 2
                                                                                ))
                                                                                (and
                                                                                 (=>
                                                                                  %%location_label%%27
                                                                                  tmp%19
                                                                                 )
                                                                                 (=>
                                                                                  tmp%19
                                                                                  (and
                                                                                   (=>
                                                                                    %%location_label%%28
                                                                                    (req%vstd!atomic.impl&%21.fetch_xor. at@ perm@9 3)
                                                                                   )
                                                                                   (=>
                                                                                    (ens%vstd!atomic.impl&%21.fetch_xor. at@ perm@9 perm@10 3 l$8@)
                                                                                    (=>
                                                                                     (= tmp%20 (= l$8@ 2))
                                                                                     (and
                                                                                      (=>
                                                                                       %%location_label%%29
                                                                                       tmp%20
                                                                                      )
                                                                                      (=>
                                                                                       tmp%20
                                                                                       (=>
                                                                                        (= (iClip SZ (bitxor (I (iClip SZ 2)) (I (iClip SZ 3)))) (iClip SZ 1))
                                                                                        (=>
                                                                                         (= tmp%21 (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
                                                                                             (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
                                                                                                perm@10
                                                                                            ))))
                                                                                           ) 1
                                                                                         ))
                                                                                         (and
                                                                                          (=>
                                                                                           %%location_label%%30
                                                                                           tmp%21
                                                                                          )
                                                                                          (=>
                                                                                           tmp%21
                                                                                           (and
                                                                                            (=>
                                                                                             %%location_label%%31
                                                                                             (req%vstd!atomic.impl&%21.fetch_max. at@ perm@10 5)
                                                                                            )
                                                                                            (=>
                                                                                             (ens%vstd!atomic.impl&%21.fetch_max. at@ perm@10 perm@11 5 l$9@)
                                                                                             (=>
                                                                                              (= tmp%22 (= l$9@ 1))
                                                                                              (and
                                                                                               (=>
                                                                                                %%location_label%%32
                                                                                                tmp%22
                                                                                               )
                                                                                               (=>
                                                                                                tmp%22
                                                                                                (=>
                                                                                                 (= tmp%23 (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
                                                                                                     (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
                                                                                                        perm@11
                                                                                                    ))))
                                                                                                   ) 5
                                                                                                 ))
                                                                                                 (and
                                                                                                  (=>
                                                                                                   %%location_label%%33
                                                                                                   tmp%23
                                                                                                  )
                                                                                                  (=>
                                                                                                   tmp%23
                                                                                                   (and
                                                                                                    (=>
                                                                                                     %%location_label%%34
                                                                                                     (req%vstd!atomic.impl&%21.fetch_max. at@ perm@11 4)
                                                                                                    )
                                                                                                    (=>
                                                                                                     (ens%vstd!atomic.impl&%21.fetch_max. at@ perm@11 perm@12 4 l$10@)
                                                                                                     (=>
                                                                                                      (= tmp%24 (= l$10@ 5))
                                                                                                      (and
                                                                                                       (=>
                                                                                                        %%location_label%%35
                                                                                                        tmp%24
                                                                                                       )
                                                                                                       (=>
                                                                                                        tmp%24
                                                                                                        (=>
                                                                                                         (= tmp%25 (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
                                                                                                             (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
                                                                                                                perm@12
                                                                                                            ))))
                                                                                                           ) 5
                                                                                                         ))
                                                                                                         (and
                                                                                                          (=>
                                                                                                           %%location_label%%36
                                                                                                           tmp%25
                                                                                                          )
                                                                                                          (=>
                                                                                                           tmp%25
                                                                                                           (and
                                                                                                            (=>
                                                                                                             %%location_label%%37
                                                                                                             (req%vstd!atomic.impl&%21.fetch_min. at@ perm@12 4)
                                                                                                            )
                                                                                                            (=>
                                                                                                             (ens%vstd!atomic.impl&%21.fetch_min. at@ perm@12 perm@13 4 l$11@)
                                                                                                             (=>
                                                                                                              (= tmp%26 (= l$11@ 5))
                                                                                                              (and
                                                                                                               (=>
                                                                                                                %%location_label%%38
                                                                                                                tmp%26
                                                                                                               )
                                                                                                               (=>
                                                                                                                tmp%26
                                                                                                                (=>
                                                                                                                 (= tmp%27 (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
                                                                                                                     (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
                                                                                                                        perm@13
                                                                                                                    ))))
                                                                                                                   ) 4
                                                                                                                 ))
                                                                                                                 (and
                                                                                                                  (=>
                                                                                                                   %%location_label%%39
                                                                                                                   tmp%27
                                                                                                                  )
                                                                                                                  (=>
                                                                                                                   tmp%27
                                                                                                                   (and
                                                                                                                    (=>
                                                                                                                     %%location_label%%40
                                                                                                                     (req%vstd!atomic.impl&%21.fetch_min. at@ perm@13 7)
                                                                                                                    )
                                                                                                                    (=>
                                                                                                                     (ens%vstd!atomic.impl&%21.fetch_min. at@ perm@13 perm@14 7 l$12@)
                                                                                                                     (=>
                                                                                                                      (= tmp%28 (= l$12@ 4))
                                                                                                                      (and
                                                                                                                       (=>
                                                                                                                        %%location_label%%41
                                                                                                                        tmp%28
                                                                                                                       )
                                                                                                                       (=>
                                                                                                                        tmp%28
                                                                                                                        (=>
                                                                                                                         (= tmp%29 (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
                                                                                                                             (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
                                                                                                                                perm@14
                                                                                                                            ))))
                                                                                                                           ) 4
                                                                                                                         ))
                                                                                                                         (and
                                                                                                                          (=>
                                                                                                                           %%location_label%%42
                                                                                                                           tmp%29
                                                                                                                          )
                                                                                                                          (=>
                                                                                                                           tmp%29
                                                                                                                           (and
                                                                                                                            (=>
                                                                                                                             %%location_label%%43
                                                                                                                             (req%vstd!atomic.impl&%21.compare_exchange_weak. at@ perm@14 5 6)
                                                                                                                            )
                                                                                                                            (=>
                                                                                                                             (ens%vstd!atomic.impl&%21.compare_exchange_weak. at@ perm@14 perm@15 5 6 l$13@)
                                                                                                                             (=>
                                                                                                                              (= tmp%30 (= l$13@ (core!result.Result./Err (I 4))))
                                                                                                                              (and
                                                                                                                               (=>
                                                                                                                                %%location_label%%44
                                                                                                                                tmp%30
                                                                                                                               )
                                                                                                                               (=>
                                                                                                                                tmp%30
                                                                                                                                (=>
                                                                                                                                 (= tmp%31 (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
                                                                                                                                     (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
                                                                                                                                        perm@15
                                                                                                                                    ))))
                                                                                                                                   ) 4
                                                                                                                                 ))
                                                                                                                                 (and
                                                                                                                                  (=>
                                                                                                                                   %%location_label%%45
                                                                                                                                   tmp%31
                                                                                                                                  )
                                                                                                                                  (=>
                                                                                                                                   tmp%31
                                                                                                                                   (and
                                                                                                                                    (=>
                                                                                                                                     %%location_label%%46
                                                                                                                                     (req%vstd!atomic.impl&%21.compare_exchange_weak. at@ perm@15 4 6)
                                                                                                                                    )
                                                                                                                                    (=>
                                                                                                                                     (ens%vstd!atomic.impl&%21.compare_exchange_weak. at@ perm@15 perm@16 4 6 l$14@)
                                                                                                                                     (=>
                                                                                                                                      (= tmp%32 (or
                                                                                                                                        (and
                                                                                                                                         (= l$14@ (core!result.Result./Err (I 4)))
                                                                                                                                         (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
                                                                                                                                            (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
                                                                                                                                               perm@16
                                                                                                                                           ))))
                                                                                                                                          ) 4
                                                                                                                                        ))
                                                                                                                                        (and
                                                                                                                                         (= l$14@ (core!result.Result./Ok (I 4)))
                                                                                                                                         (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
                                                                                                                                            (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
                                                                                                                                               perm@16
                                                                                                                                           ))))
                                                                                                                                          ) 6
                                                                                                                                      ))))
                                                                                                                                      (and
                                                                                                                                       (=>
                                                                                                                                        %%location_label%%47
                                                                                                                                        tmp%32
                                                                                                                                       )
                                                                                                                                       (=>
                                                                                                                                        tmp%32
                                                                                                                                        (and
                                                                                                                                         (=>
                                                                                                                                          %%location_label%%48
                                                                                                                                          (req%vstd!atomic.impl&%21.store. at@ perm@16 4)
                                                                                                                                         )
                                                                                                                                         (=>
                                                                                                                                          (ens%vstd!atomic.impl&%21.store. at@ perm@16 perm@17 4)
                                                                                                                                          (=>
                                                                                                                                           (= tmp%33 (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
                                                                                                                                               (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
                                                                                                                                                  perm@17
                                                                                                                                              ))))
                                                                                                                                             ) 4
                                                                                                                                           ))
                                                                                                                                           (and
                                                                                                                                            (=>
                                                                                                                                             %%location_label%%49
                                                                                                                                             tmp%33
                                                                                                                                            )
                                                                                                                                            (=>
                                                                                                                                             tmp%33
                                                                                                                                             (and
                                                                                                                                              (=>
                                                                                                                                               %%location_label%%50
                                                                                                                                               (req%vstd!atomic.impl&%21.compare_exchange. at@ perm@17 5 6)
                                                                                                                                              )
                                                                                                                                              (=>
                                                                                                                                               (ens%vstd!atomic.impl&%21.compare_exchange. at@ perm@17 perm@18 5 6 l$15@)
                                                                                                                                               (=>
                                                                                                                                                (= tmp%34 (= l$15@ (core!result.Result./Err (I 4))))
                                                                                                                                                (and
                                                                                                                                                 (=>
                                                                                                                                                  %%location_label%%51
                                                                                                                                                  tmp%34
                                                                                                                                                 )
                                                                                                                                                 (=>
                                                                                                                                                  tmp%34
                                                                                                                                                  (=>
                                                                                                                                                   (= tmp%35 (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
                                                                                                                                                       (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
                                                                                                                                                          perm@18
                                                                                                                                                      ))))
                                                                                                                                                     ) 4
                                                                                                                                                   ))
                                                                                                                                                   (and
                                                                                                                                                    (=>
                                                                                                                                                     %%location_label%%52
                                                                                                                                                     tmp%35
                                                                                                                                                    )
                                                                                                                                                    (=>
                                                                                                                                                     tmp%35
                                                                                                                                                     (and
                                                                                                                                                      (=>
                                                                                                                                                       %%location_label%%53
                                                                                                                                                       (req%vstd!atomic.impl&%21.compare_exchange. at@ perm@18 4 6)
                                                                                                                                                      )
                                                                                                                                                      (=>
                                                                                                                                                       (ens%vstd!atomic.impl&%21.compare_exchange. at@ perm@18 perm@19 4 6 l$16@)
                                                                                                                                                       (=>
                                                                                                                                                        (= tmp%36 (= l$16@ (core!result.Result./Ok (I 4))))
                                                                                                                                                        (and
                                                                                                                                                         (=>
                                                                                                                                                          %%location_label%%54
                                                                                                                                                          tmp%36
                                                                                                                                                         )
                                                                                                                                                         (=>
                                                                                                                                                          tmp%36
                                                                                                                                                          (=>
                                                                                                                                                           (= tmp%37 (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
                                                                                                                                                               (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
                                                                                                                                                                  perm@19
                                                                                                                                                              ))))
                                                                                                                                                             ) 6
                                                                                                                                                           ))
                                                                                                                                                           (and
                                                                                                                                                            (=>
                                                                                                                                                             %%location_label%%55
                                                                                                                                                             tmp%37
                                                                                                                                                            )
                                                                                                                                                            (=>
                                                                                                                                                             tmp%37
                                                                                                                                                             (and
                                                                                                                                                              (=>
                                                                                                                                                               %%location_label%%56
                                                                                                                                                               (req%vstd!atomic.impl&%21.fetch_nand. at@ perm@19 3)
                                                                                                                                                              )
                                                                                                                                                              (=>
                                                                                                                                                               (ens%vstd!atomic.impl&%21.fetch_nand. at@ perm@19 perm@20 3 l$17@)
                                                                                                                                                               (=>
                                                                                                                                                                (= tmp%38 (= l$17@ 6))
                                                                                                                                                                (and
                                                                                                                                                                 (=>
                                                                                                                                                                  %%location_label%%57
                                                                                                                                                                  tmp%38
                                                                                                                                                                 )
                                                                                                                                                                 (=>
                                                                                                                                                                  tmp%38
                                                                                                                                                                  (=>
                                                                                                                                                                   (= (bitnot (I (iClip SZ (bitand (I (iClip SZ 6)) (I (iClip SZ 3)))))) (Sub 0 3))
                                                                                                                                                                   (=>
                                                                                                                                                                    (= tmp%39 (= (vstd!atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd!atomic.PermissionDataIsize.
                                                                                                                                                                        (Poly%vstd!atomic.PermissionDataIsize. (vstd!atomic.impl&%20.view.? (Poly%vstd!atomic.PermissionIsize.
                                                                                                                                                                           perm@20
                                                                                                                                                                       ))))
                                                                                                                                                                      ) (Sub 0 3)
                                                                                                                                                                    ))
                                                                                                                                                                    (and
                                                                                                                                                                     (=>
                                                                                                                                                                      %%location_label%%58
                                                                                                                                                                      tmp%39
                                                                                                                                                                     )
                                                                                                                                                                     (=>
                                                                                                                                                                      tmp%39
                                                                                                                                                                      (and
                                                                                                                                                                       (=>
                                                                                                                                                                        %%location_label%%59
                                                                                                                                                                        (req%vstd!atomic.impl&%21.store. at@ perm@20 6)
                                                                                                                                                                       )
                                                                                                                                                                       (=>
                                                                                                                                                                        (ens%vstd!atomic.impl&%21.store. at@ perm@20 perm@21 6)
                                                                                                                                                                        (and
                                                                                                                                                                         (=>
                                                                                                                                                                          %%location_label%%60
                                                                                                                                                                          (req%vstd!atomic.impl&%21.into_inner. at@ perm@21)
                                                                                                                                                                         )
                                                                                                                                                                         (=>
                                                                                                                                                                          (ens%vstd!atomic.impl&%21.into_inner. at@ perm@21 l$18@)
                                                                                                                                                                          (=>
                                                                                                                                                                           (= tmp%40 (= l$18@ 6))
                                                                                                                                                                           (and
                                                                                                                                                                            (=>
                                                                                                                                                                             %%location_label%%61
                                                                                                                                                                             tmp%40
                                                                                                                                                                            )
                                                                                                                                                                            (=>
                                                                                                                                                                             tmp%40
                                                                                                                                                                             (=>
                                                                                                                                                                              %%location_label%%62
                                                                                                                                                                              false
 )))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
 (get-info :reason-unknown)
 (get-model)
 (assert
  (not %%location_label%%62)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Recommends test_crate::test
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/atomic_lib-86af995cc9979138-test_atomic_isize_32_fail/test.rs:20:5: 20:14 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Int)
 (declare-const tmp%%@ tuple%2.)
 (declare-const at@ vstd!atomic.PAtomicIsize.)
 (declare-const verus_tmp_perm@ vstd!atomic.PermissionIsize.)
 (declare-const perm@0 vstd!atomic.PermissionIsize.)
 (declare-const l@ Int)
 (declare-const l$1@ Int)
 (declare-const l$2@ Int)
 (declare-const l$3@ Int)
 (declare-const l$4@ Int)
 (declare-const l$5@ Int)
 (declare-const l$6@ Int)
 (declare-const l$7@ Int)
 (declare-const l$8@ Int)
 (declare-const l$9@ Int)
 (declare-const l$10@ Int)
 (declare-const l$11@ Int)
 (declare-const l$12@ Int)
 (declare-const l$13@ core!result.Result.)
 (declare-const l$14@ core!result.Result.)
 (declare-const l$15@ core!result.Result.)
 (declare-const l$16@ core!result.Result.)
 (declare-const l$17@ Int)
 (declare-const l$18@ Int)
 (assert
  fuel_defaults
 )
 (declare-const perm@1 vstd!atomic.PermissionIsize.)
 (declare-const perm@2 vstd!atomic.PermissionIsize.)
 (declare-const perm@3 vstd!atomic.PermissionIsize.)
 (declare-const perm@4 vstd!atomic.PermissionIsize.)
 (declare-const perm@5 vstd!atomic.PermissionIsize.)
 (declare-const perm@6 vstd!atomic.PermissionIsize.)
 (declare-const perm@7 vstd!atomic.PermissionIsize.)
 (declare-const perm@8 vstd!atomic.PermissionIsize.)
 (declare-const perm@9 vstd!atomic.PermissionIsize.)
 (declare-const perm@10 vstd!atomic.PermissionIsize.)
 (declare-const perm@11 vstd!atomic.PermissionIsize.)
 (declare-const perm@12 vstd!atomic.PermissionIsize.)
 (declare-const perm@13 vstd!atomic.PermissionIsize.)
 (declare-const perm@14 vstd!atomic.PermissionIsize.)
 (declare-const perm@15 vstd!atomic.PermissionIsize.)
 (declare-const perm@16 vstd!atomic.PermissionIsize.)
 (declare-const perm@17 vstd!atomic.PermissionIsize.)
 (declare-const perm@18 vstd!atomic.PermissionIsize.)
 (declare-const perm@19 vstd!atomic.PermissionIsize.)
 (declare-const perm@20 vstd!atomic.PermissionIsize.)
 (declare-const perm@21 vstd!atomic.PermissionIsize.)
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
