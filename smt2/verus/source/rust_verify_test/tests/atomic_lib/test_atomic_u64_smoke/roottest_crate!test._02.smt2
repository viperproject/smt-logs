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
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/atomic_lib-86af995cc9979138-test_atomic_u64_smoke/test.rs:48:1: 48:7 (#0)

;; query spun off because: bitvector

;; Fuel
(declare-const fuel%vstd!atomic.wrapping_add_u64. FuelId)
(declare-const fuel%vstd!atomic.wrapping_sub_u64. FuelId)
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
 (distinct fuel%vstd!atomic.wrapping_add_u64. fuel%vstd!atomic.wrapping_sub_u64. fuel%vstd!array.group_array_axioms.
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
(declare-sort vstd!atomic.PAtomicU64. 0)
(declare-sort vstd!atomic.PermissionU64. 0)
(declare-datatypes ((core!result.Result. 0) (vstd!atomic.PermissionDataU64. 0) (tuple%0.
   0
  ) (tuple%2. 0)
 ) (((core!result.Result./Ok (core!result.Result./Ok/?0 Poly)) (core!result.Result./Err
    (core!result.Result./Err/?0 Poly)
   )
  ) ((vstd!atomic.PermissionDataU64./PermissionDataU64 (vstd!atomic.PermissionDataU64./PermissionDataU64/?patomic
     Int
    ) (vstd!atomic.PermissionDataU64./PermissionDataU64/?value Int)
   )
  ) ((tuple%0./tuple%0)) ((tuple%2./tuple%2 (tuple%2./tuple%2/?0 Poly) (tuple%2./tuple%2/?1
     Poly
)))))
(declare-fun core!result.Result./Ok/0 (core!result.Result.) Poly)
(declare-fun core!result.Result./Err/0 (core!result.Result.) Poly)
(declare-fun vstd!atomic.PermissionDataU64./PermissionDataU64/patomic (vstd!atomic.PermissionDataU64.)
 Int
)
(declare-fun vstd!atomic.PermissionDataU64./PermissionDataU64/value (vstd!atomic.PermissionDataU64.)
 Int
)
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-fun TYPE%core!result.Result. (Dcr Type Dcr Type) Type)
(declare-const TYPE%vstd!atomic.PAtomicU64. Type)
(declare-const TYPE%vstd!atomic.PermissionU64. Type)
(declare-const TYPE%vstd!atomic.PermissionDataU64. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%2. (Dcr Type Dcr Type) Type)
(declare-fun Poly%vstd!atomic.PAtomicU64. (vstd!atomic.PAtomicU64.) Poly)
(declare-fun %Poly%vstd!atomic.PAtomicU64. (Poly) vstd!atomic.PAtomicU64.)
(declare-fun Poly%vstd!atomic.PermissionU64. (vstd!atomic.PermissionU64.) Poly)
(declare-fun %Poly%vstd!atomic.PermissionU64. (Poly) vstd!atomic.PermissionU64.)
(declare-fun Poly%core!result.Result. (core!result.Result.) Poly)
(declare-fun %Poly%core!result.Result. (Poly) core!result.Result.)
(declare-fun Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.PermissionDataU64.)
 Poly
)
(declare-fun %Poly%vstd!atomic.PermissionDataU64. (Poly) vstd!atomic.PermissionDataU64.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%2. (tuple%2.) Poly)
(declare-fun %Poly%tuple%2. (Poly) tuple%2.)
(assert
 (forall ((x vstd!atomic.PAtomicU64.)) (!
   (= x (%Poly%vstd!atomic.PAtomicU64. (Poly%vstd!atomic.PAtomicU64. x)))
   :pattern ((Poly%vstd!atomic.PAtomicU64. x))
   :qid internal_vstd__atomic__PAtomicU64_box_axiom_definition
   :skolemid skolem_internal_vstd__atomic__PAtomicU64_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd!atomic.PAtomicU64.)
    (= x (Poly%vstd!atomic.PAtomicU64. (%Poly%vstd!atomic.PAtomicU64. x)))
   )
   :pattern ((has_type x TYPE%vstd!atomic.PAtomicU64.))
   :qid internal_vstd__atomic__PAtomicU64_unbox_axiom_definition
   :skolemid skolem_internal_vstd__atomic__PAtomicU64_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!atomic.PAtomicU64.)) (!
   (has_type (Poly%vstd!atomic.PAtomicU64. x) TYPE%vstd!atomic.PAtomicU64.)
   :pattern ((has_type (Poly%vstd!atomic.PAtomicU64. x) TYPE%vstd!atomic.PAtomicU64.))
   :qid internal_vstd__atomic__PAtomicU64_has_type_always_definition
   :skolemid skolem_internal_vstd__atomic__PAtomicU64_has_type_always_definition
)))
(assert
 (forall ((x vstd!atomic.PermissionU64.)) (!
   (= x (%Poly%vstd!atomic.PermissionU64. (Poly%vstd!atomic.PermissionU64. x)))
   :pattern ((Poly%vstd!atomic.PermissionU64. x))
   :qid internal_vstd__atomic__PermissionU64_box_axiom_definition
   :skolemid skolem_internal_vstd__atomic__PermissionU64_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd!atomic.PermissionU64.)
    (= x (Poly%vstd!atomic.PermissionU64. (%Poly%vstd!atomic.PermissionU64. x)))
   )
   :pattern ((has_type x TYPE%vstd!atomic.PermissionU64.))
   :qid internal_vstd__atomic__PermissionU64_unbox_axiom_definition
   :skolemid skolem_internal_vstd__atomic__PermissionU64_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!atomic.PermissionU64.)) (!
   (has_type (Poly%vstd!atomic.PermissionU64. x) TYPE%vstd!atomic.PermissionU64.)
   :pattern ((has_type (Poly%vstd!atomic.PermissionU64. x) TYPE%vstd!atomic.PermissionU64.))
   :qid internal_vstd__atomic__PermissionU64_has_type_always_definition
   :skolemid skolem_internal_vstd__atomic__PermissionU64_has_type_always_definition
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
 (forall ((x vstd!atomic.PermissionDataU64.)) (!
   (= x (%Poly%vstd!atomic.PermissionDataU64. (Poly%vstd!atomic.PermissionDataU64. x)))
   :pattern ((Poly%vstd!atomic.PermissionDataU64. x))
   :qid internal_vstd__atomic__PermissionDataU64_box_axiom_definition
   :skolemid skolem_internal_vstd__atomic__PermissionDataU64_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd!atomic.PermissionDataU64.)
    (= x (Poly%vstd!atomic.PermissionDataU64. (%Poly%vstd!atomic.PermissionDataU64. x)))
   )
   :pattern ((has_type x TYPE%vstd!atomic.PermissionDataU64.))
   :qid internal_vstd__atomic__PermissionDataU64_unbox_axiom_definition
   :skolemid skolem_internal_vstd__atomic__PermissionDataU64_unbox_axiom_definition
)))
(assert
 (forall ((_patomic! Int) (_value! Int)) (!
   (=>
    (uInv 64 _value!)
    (has_type (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.PermissionDataU64./PermissionDataU64
       _patomic! _value!
      )
     ) TYPE%vstd!atomic.PermissionDataU64.
   ))
   :pattern ((has_type (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.PermissionDataU64./PermissionDataU64
       _patomic! _value!
      )
     ) TYPE%vstd!atomic.PermissionDataU64.
   ))
   :qid internal_vstd!atomic.PermissionDataU64./PermissionDataU64_constructor_definition
   :skolemid skolem_internal_vstd!atomic.PermissionDataU64./PermissionDataU64_constructor_definition
)))
(assert
 (forall ((x vstd!atomic.PermissionDataU64.)) (!
   (= (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic x) (vstd!atomic.PermissionDataU64./PermissionDataU64/?patomic
     x
   ))
   :pattern ((vstd!atomic.PermissionDataU64./PermissionDataU64/patomic x))
   :qid internal_vstd!atomic.PermissionDataU64./PermissionDataU64/patomic_accessor_definition
   :skolemid skolem_internal_vstd!atomic.PermissionDataU64./PermissionDataU64/patomic_accessor_definition
)))
(assert
 (forall ((x vstd!atomic.PermissionDataU64.)) (!
   (= (vstd!atomic.PermissionDataU64./PermissionDataU64/value x) (vstd!atomic.PermissionDataU64./PermissionDataU64/?value
     x
   ))
   :pattern ((vstd!atomic.PermissionDataU64./PermissionDataU64/value x))
   :qid internal_vstd!atomic.PermissionDataU64./PermissionDataU64/value_accessor_definition
   :skolemid skolem_internal_vstd!atomic.PermissionDataU64./PermissionDataU64/value_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd!atomic.PermissionDataU64.)
    (uInv 64 (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
       x
   ))))
   :pattern ((vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
      x
     )
    ) (has_type x TYPE%vstd!atomic.PermissionDataU64.)
   )
   :qid internal_vstd!atomic.PermissionDataU64./PermissionDataU64/value_invariant_definition
   :skolemid skolem_internal_vstd!atomic.PermissionDataU64./PermissionDataU64/value_invariant_definition
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

;; Function-Decl vstd::atomic::impl&%8::view
(declare-fun vstd!atomic.impl&%8.view.? (Poly) vstd!atomic.PermissionDataU64.)

;; Function-Decl vstd::atomic::impl&%9::id
(declare-fun vstd!atomic.impl&%9.id.? (Poly) Int)

;; Function-Decl vstd::atomic::wrapping_add_u64
(declare-fun vstd!atomic.wrapping_add_u64.? (Poly Poly) Int)

;; Function-Decl vstd::atomic::wrapping_sub_u64
(declare-fun vstd!atomic.wrapping_sub_u64.? (Poly Poly) Int)

;; Function-Axioms vstd::atomic::impl&%8::view
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd!atomic.PermissionU64.)
    (has_type (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? self!))
     TYPE%vstd!atomic.PermissionDataU64.
   ))
   :pattern ((vstd!atomic.impl&%8.view.? self!))
   :qid internal_vstd!atomic.impl&__8.view.?_pre_post_definition
   :skolemid skolem_internal_vstd!atomic.impl&__8.view.?_pre_post_definition
)))

;; Function-Specs vstd::atomic::impl&%9::new
(declare-fun ens%vstd!atomic.impl&%9.new. (Int tuple%2.) Bool)
(assert
 (forall ((i! Int) (res! tuple%2.)) (!
   (= (ens%vstd!atomic.impl&%9.new. i! res!) (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ TYPE%vstd!atomic.PAtomicU64. (TRACKED
        $
       ) TYPE%vstd!atomic.PermissionU64.
     ))
     (= (vstd!atomic.impl&%8.view.? (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. res!))))
      (vstd!atomic.PermissionDataU64./PermissionDataU64 (%I (I (vstd!atomic.impl&%9.id.? (tuple%2./tuple%2/0
           (%Poly%tuple%2. (Poly%tuple%2. res!))
        )))
       ) (%I (I i!))
   ))))
   :pattern ((ens%vstd!atomic.impl&%9.new. i! res!))
   :qid internal_ens__vstd!atomic.impl&__9.new._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__9.new._definition
)))

;; Function-Specs vstd::atomic::impl&%9::load
(declare-fun req%vstd!atomic.impl&%9.load. (vstd!atomic.PAtomicU64. vstd!atomic.PermissionU64.)
 Bool
)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (perm! vstd!atomic.PermissionU64.)) (!
   (= (req%vstd!atomic.impl&%9.load. self! perm!) (=>
     %%global_location_label%%0
     (= (vstd!atomic.impl&%9.id.? (Poly%vstd!atomic.PAtomicU64. self!)) (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd!atomic.PermissionDataU64. (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.?
          (Poly%vstd!atomic.PermissionU64. perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%9.load. self! perm!))
   :qid internal_req__vstd!atomic.impl&__9.load._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__9.load._definition
)))
(declare-fun ens%vstd!atomic.impl&%9.load. (vstd!atomic.PAtomicU64. vstd!atomic.PermissionU64.
  Int
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (perm! vstd!atomic.PermissionU64.) (ret! Int))
  (!
   (= (ens%vstd!atomic.impl&%9.load. self! perm! ret!) (and
     (uInv 64 ret!)
     (= (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           perm!
       ))))
      ) ret!
   )))
   :pattern ((ens%vstd!atomic.impl&%9.load. self! perm! ret!))
   :qid internal_ens__vstd!atomic.impl&__9.load._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__9.load._definition
)))

;; Function-Specs vstd::atomic::impl&%9::store
(declare-fun req%vstd!atomic.impl&%9.store. (vstd!atomic.PAtomicU64. vstd!atomic.PermissionU64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (pre%perm! vstd!atomic.PermissionU64.) (v!
    Int
   )
  ) (!
   (= (req%vstd!atomic.impl&%9.store. self! pre%perm! v!) (=>
     %%global_location_label%%1
     (= (vstd!atomic.impl&%9.id.? (Poly%vstd!atomic.PAtomicU64. self!)) (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd!atomic.PermissionDataU64. (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.?
          (Poly%vstd!atomic.PermissionU64. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%9.store. self! pre%perm! v!))
   :qid internal_req__vstd!atomic.impl&__9.store._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__9.store._definition
)))
(declare-fun ens%vstd!atomic.impl&%9.store. (vstd!atomic.PAtomicU64. vstd!atomic.PermissionU64.
  vstd!atomic.PermissionU64. Int
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (pre%perm! vstd!atomic.PermissionU64.) (perm!
    vstd!atomic.PermissionU64.
   ) (v! Int)
  ) (!
   (= (ens%vstd!atomic.impl&%9.store. self! pre%perm! perm! v!) (and
     (= (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           perm!
       ))))
      ) v!
     )
     (= (vstd!atomic.impl&%9.id.? (Poly%vstd!atomic.PAtomicU64. self!)) (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd!atomic.PermissionDataU64. (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.?
          (Poly%vstd!atomic.PermissionU64. perm!)
   )))))))
   :pattern ((ens%vstd!atomic.impl&%9.store. self! pre%perm! perm! v!))
   :qid internal_ens__vstd!atomic.impl&__9.store._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__9.store._definition
)))

;; Function-Specs vstd::atomic::impl&%9::compare_exchange
(declare-fun req%vstd!atomic.impl&%9.compare_exchange. (vstd!atomic.PAtomicU64. vstd!atomic.PermissionU64.
  Int Int
 ) Bool
)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (pre%perm! vstd!atomic.PermissionU64.) (current!
    Int
   ) (new! Int)
  ) (!
   (= (req%vstd!atomic.impl&%9.compare_exchange. self! pre%perm! current! new!) (=>
     %%global_location_label%%2
     (= (vstd!atomic.impl&%9.id.? (Poly%vstd!atomic.PAtomicU64. self!)) (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd!atomic.PermissionDataU64. (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.?
          (Poly%vstd!atomic.PermissionU64. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%9.compare_exchange. self! pre%perm! current! new!))
   :qid internal_req__vstd!atomic.impl&__9.compare_exchange._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__9.compare_exchange._definition
)))
(declare-fun ens%vstd!atomic.impl&%9.compare_exchange. (vstd!atomic.PAtomicU64. vstd!atomic.PermissionU64.
  vstd!atomic.PermissionU64. Int Int core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (pre%perm! vstd!atomic.PermissionU64.) (perm!
    vstd!atomic.PermissionU64.
   ) (current! Int) (new! Int) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd!atomic.impl&%9.compare_exchange. self! pre%perm! perm! current! new! ret!)
    (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ (UINT 64) $ (
        UINT 64
     )))
     (and
      (= (vstd!atomic.impl&%9.id.? (Poly%vstd!atomic.PAtomicU64. self!)) (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic
        (%Poly%vstd!atomic.PermissionDataU64. (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.?
           (Poly%vstd!atomic.PermissionU64. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%I (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
             (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
                pre%perm!
          ))))))
          (= (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
             (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
            (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
               pre%perm!
       ))))))))
       (let
        ((r$ (%I (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (not (= current! (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
              (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
                 pre%perm!
          )))))))
          (= (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
             (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
                perm!
            ))))
           ) (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
             (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
                pre%perm!
         )))))))
         (= r$ (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
            (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd!atomic.impl&%9.compare_exchange. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd!atomic.impl&__9.compare_exchange._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__9.compare_exchange._definition
)))

;; Function-Specs vstd::atomic::impl&%9::compare_exchange_weak
(declare-fun req%vstd!atomic.impl&%9.compare_exchange_weak. (vstd!atomic.PAtomicU64.
  vstd!atomic.PermissionU64. Int Int
 ) Bool
)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (pre%perm! vstd!atomic.PermissionU64.) (current!
    Int
   ) (new! Int)
  ) (!
   (= (req%vstd!atomic.impl&%9.compare_exchange_weak. self! pre%perm! current! new!)
    (=>
     %%global_location_label%%3
     (= (vstd!atomic.impl&%9.id.? (Poly%vstd!atomic.PAtomicU64. self!)) (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd!atomic.PermissionDataU64. (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.?
          (Poly%vstd!atomic.PermissionU64. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%9.compare_exchange_weak. self! pre%perm! current!
     new!
   ))
   :qid internal_req__vstd!atomic.impl&__9.compare_exchange_weak._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__9.compare_exchange_weak._definition
)))
(declare-fun ens%vstd!atomic.impl&%9.compare_exchange_weak. (vstd!atomic.PAtomicU64.
  vstd!atomic.PermissionU64. vstd!atomic.PermissionU64. Int Int core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (pre%perm! vstd!atomic.PermissionU64.) (perm!
    vstd!atomic.PermissionU64.
   ) (current! Int) (new! Int) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd!atomic.impl&%9.compare_exchange_weak. self! pre%perm! perm! current! new!
     ret!
    ) (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ (UINT 64) $ (
        UINT 64
     )))
     (and
      (= (vstd!atomic.impl&%9.id.? (Poly%vstd!atomic.PAtomicU64. self!)) (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic
        (%Poly%vstd!atomic.PermissionDataU64. (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.?
           (Poly%vstd!atomic.PermissionU64. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%I (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
             (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
                pre%perm!
          ))))))
          (= (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
             (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
            (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
               pre%perm!
       ))))))))
       (let
        ((r$ (%I (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (= (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
            (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
               perm!
           ))))
          ) (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
            (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
               pre%perm!
         ))))))
         (= r$ (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
            (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd!atomic.impl&%9.compare_exchange_weak. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd!atomic.impl&__9.compare_exchange_weak._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__9.compare_exchange_weak._definition
)))

;; Function-Specs vstd::atomic::impl&%9::swap
(declare-fun req%vstd!atomic.impl&%9.swap. (vstd!atomic.PAtomicU64. vstd!atomic.PermissionU64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (pre%perm! vstd!atomic.PermissionU64.) (v!
    Int
   )
  ) (!
   (= (req%vstd!atomic.impl&%9.swap. self! pre%perm! v!) (=>
     %%global_location_label%%4
     (= (vstd!atomic.impl&%9.id.? (Poly%vstd!atomic.PAtomicU64. self!)) (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd!atomic.PermissionDataU64. (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.?
          (Poly%vstd!atomic.PermissionU64. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%9.swap. self! pre%perm! v!))
   :qid internal_req__vstd!atomic.impl&__9.swap._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__9.swap._definition
)))
(declare-fun ens%vstd!atomic.impl&%9.swap. (vstd!atomic.PAtomicU64. vstd!atomic.PermissionU64.
  vstd!atomic.PermissionU64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (pre%perm! vstd!atomic.PermissionU64.) (perm!
    vstd!atomic.PermissionU64.
   ) (v! Int) (ret! Int)
  ) (!
   (= (ens%vstd!atomic.impl&%9.swap. self! pre%perm! perm! v! ret!) (and
     (uInv 64 ret!)
     (and
      (and
       (= (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
          (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
             perm!
         ))))
        ) v!
       )
       (= (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
          (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
             pre%perm!
         ))))
        ) ret!
      ))
      (= (vstd!atomic.impl&%9.id.? (Poly%vstd!atomic.PAtomicU64. self!)) (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic
        (%Poly%vstd!atomic.PermissionDataU64. (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.?
           (Poly%vstd!atomic.PermissionU64. perm!)
   ))))))))
   :pattern ((ens%vstd!atomic.impl&%9.swap. self! pre%perm! perm! v! ret!))
   :qid internal_ens__vstd!atomic.impl&__9.swap._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__9.swap._definition
)))

;; Function-Specs vstd::atomic::impl&%9::into_inner
(declare-fun req%vstd!atomic.impl&%9.into_inner. (vstd!atomic.PAtomicU64. vstd!atomic.PermissionU64.)
 Bool
)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (perm! vstd!atomic.PermissionU64.)) (!
   (= (req%vstd!atomic.impl&%9.into_inner. self! perm!) (=>
     %%global_location_label%%5
     (= (vstd!atomic.impl&%9.id.? (Poly%vstd!atomic.PAtomicU64. self!)) (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd!atomic.PermissionDataU64. (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.?
          (Poly%vstd!atomic.PermissionU64. perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%9.into_inner. self! perm!))
   :qid internal_req__vstd!atomic.impl&__9.into_inner._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__9.into_inner._definition
)))
(declare-fun ens%vstd!atomic.impl&%9.into_inner. (vstd!atomic.PAtomicU64. vstd!atomic.PermissionU64.
  Int
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (perm! vstd!atomic.PermissionU64.) (ret! Int))
  (!
   (= (ens%vstd!atomic.impl&%9.into_inner. self! perm! ret!) (and
     (uInv 64 ret!)
     (= (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           perm!
       ))))
      ) ret!
   )))
   :pattern ((ens%vstd!atomic.impl&%9.into_inner. self! perm! ret!))
   :qid internal_ens__vstd!atomic.impl&__9.into_inner._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__9.into_inner._definition
)))

;; Function-Axioms vstd::atomic::wrapping_add_u64
(assert
 (fuel_bool_default fuel%vstd!atomic.wrapping_add_u64.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!atomic.wrapping_add_u64.)
  (forall ((a! Poly) (b! Poly)) (!
    (= (vstd!atomic.wrapping_add_u64.? a! b!) (ite
      (> (Add (%I a!) (%I b!)) 18446744073709551615)
      (Sub (Add (%I a!) (%I b!)) (Add (Sub 18446744073709551615 0) 1))
      (Add (%I a!) (%I b!))
    ))
    :pattern ((vstd!atomic.wrapping_add_u64.? a! b!))
    :qid internal_vstd!atomic.wrapping_add_u64.?_definition
    :skolemid skolem_internal_vstd!atomic.wrapping_add_u64.?_definition
))))

;; Function-Specs vstd::atomic::impl&%9::fetch_add_wrapping
(declare-fun req%vstd!atomic.impl&%9.fetch_add_wrapping. (vstd!atomic.PAtomicU64. vstd!atomic.PermissionU64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (pre%perm! vstd!atomic.PermissionU64.) (n!
    Int
   )
  ) (!
   (= (req%vstd!atomic.impl&%9.fetch_add_wrapping. self! pre%perm! n!) (=>
     %%global_location_label%%6
     (= (vstd!atomic.impl&%9.id.? (Poly%vstd!atomic.PAtomicU64. self!)) (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd!atomic.PermissionDataU64. (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.?
          (Poly%vstd!atomic.PermissionU64. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%9.fetch_add_wrapping. self! pre%perm! n!))
   :qid internal_req__vstd!atomic.impl&__9.fetch_add_wrapping._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__9.fetch_add_wrapping._definition
)))
(declare-fun ens%vstd!atomic.impl&%9.fetch_add_wrapping. (vstd!atomic.PAtomicU64. vstd!atomic.PermissionU64.
  vstd!atomic.PermissionU64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (pre%perm! vstd!atomic.PermissionU64.) (perm!
    vstd!atomic.PermissionU64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd!atomic.impl&%9.fetch_add_wrapping. self! pre%perm! perm! n! ret!) (and
     (uInv 64 ret!)
     (= (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           perm!
       ))))
      ) (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           pre%perm!
     ))))))
     (= (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           perm!
       ))))
      ) (vstd!atomic.wrapping_add_u64.? (I (vstd!atomic.PermissionDataU64./PermissionDataU64/value
         (%Poly%vstd!atomic.PermissionDataU64. (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.?
            (Poly%vstd!atomic.PermissionU64. pre%perm!)
        ))))
       ) (I n!)
   ))))
   :pattern ((ens%vstd!atomic.impl&%9.fetch_add_wrapping. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd!atomic.impl&__9.fetch_add_wrapping._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__9.fetch_add_wrapping._definition
)))

;; Function-Axioms vstd::atomic::wrapping_sub_u64
(assert
 (fuel_bool_default fuel%vstd!atomic.wrapping_sub_u64.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!atomic.wrapping_sub_u64.)
  (forall ((a! Poly) (b! Poly)) (!
    (= (vstd!atomic.wrapping_sub_u64.? a! b!) (ite
      (< (Sub (%I a!) (%I b!)) 0)
      (Add (Sub (%I a!) (%I b!)) (Add (Sub 18446744073709551615 0) 1))
      (Sub (%I a!) (%I b!))
    ))
    :pattern ((vstd!atomic.wrapping_sub_u64.? a! b!))
    :qid internal_vstd!atomic.wrapping_sub_u64.?_definition
    :skolemid skolem_internal_vstd!atomic.wrapping_sub_u64.?_definition
))))

;; Function-Specs vstd::atomic::impl&%9::fetch_sub_wrapping
(declare-fun req%vstd!atomic.impl&%9.fetch_sub_wrapping. (vstd!atomic.PAtomicU64. vstd!atomic.PermissionU64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%7 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (pre%perm! vstd!atomic.PermissionU64.) (n!
    Int
   )
  ) (!
   (= (req%vstd!atomic.impl&%9.fetch_sub_wrapping. self! pre%perm! n!) (=>
     %%global_location_label%%7
     (= (vstd!atomic.impl&%9.id.? (Poly%vstd!atomic.PAtomicU64. self!)) (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd!atomic.PermissionDataU64. (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.?
          (Poly%vstd!atomic.PermissionU64. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%9.fetch_sub_wrapping. self! pre%perm! n!))
   :qid internal_req__vstd!atomic.impl&__9.fetch_sub_wrapping._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__9.fetch_sub_wrapping._definition
)))
(declare-fun ens%vstd!atomic.impl&%9.fetch_sub_wrapping. (vstd!atomic.PAtomicU64. vstd!atomic.PermissionU64.
  vstd!atomic.PermissionU64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (pre%perm! vstd!atomic.PermissionU64.) (perm!
    vstd!atomic.PermissionU64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd!atomic.impl&%9.fetch_sub_wrapping. self! pre%perm! perm! n! ret!) (and
     (uInv 64 ret!)
     (= (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           perm!
       ))))
      ) (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           pre%perm!
     ))))))
     (= (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           perm!
       ))))
      ) (vstd!atomic.wrapping_sub_u64.? (I (vstd!atomic.PermissionDataU64./PermissionDataU64/value
         (%Poly%vstd!atomic.PermissionDataU64. (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.?
            (Poly%vstd!atomic.PermissionU64. pre%perm!)
        ))))
       ) (I n!)
   ))))
   :pattern ((ens%vstd!atomic.impl&%9.fetch_sub_wrapping. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd!atomic.impl&__9.fetch_sub_wrapping._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__9.fetch_sub_wrapping._definition
)))

;; Function-Specs vstd::atomic::impl&%9::fetch_and
(declare-fun req%vstd!atomic.impl&%9.fetch_and. (vstd!atomic.PAtomicU64. vstd!atomic.PermissionU64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (pre%perm! vstd!atomic.PermissionU64.) (n!
    Int
   )
  ) (!
   (= (req%vstd!atomic.impl&%9.fetch_and. self! pre%perm! n!) (=>
     %%global_location_label%%8
     (= (vstd!atomic.impl&%9.id.? (Poly%vstd!atomic.PAtomicU64. self!)) (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd!atomic.PermissionDataU64. (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.?
          (Poly%vstd!atomic.PermissionU64. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%9.fetch_and. self! pre%perm! n!))
   :qid internal_req__vstd!atomic.impl&__9.fetch_and._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__9.fetch_and._definition
)))
(declare-fun ens%vstd!atomic.impl&%9.fetch_and. (vstd!atomic.PAtomicU64. vstd!atomic.PermissionU64.
  vstd!atomic.PermissionU64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (pre%perm! vstd!atomic.PermissionU64.) (perm!
    vstd!atomic.PermissionU64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd!atomic.impl&%9.fetch_and. self! pre%perm! perm! n! ret!) (and
     (uInv 64 ret!)
     (= (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           perm!
       ))))
      ) (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           pre%perm!
     ))))))
     (= (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           perm!
       ))))
      ) (uClip 64 (bitand (I (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
           (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd!atomic.impl&%9.fetch_and. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd!atomic.impl&__9.fetch_and._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__9.fetch_and._definition
)))

;; Function-Specs vstd::atomic::impl&%9::fetch_or
(declare-fun req%vstd!atomic.impl&%9.fetch_or. (vstd!atomic.PAtomicU64. vstd!atomic.PermissionU64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%9 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (pre%perm! vstd!atomic.PermissionU64.) (n!
    Int
   )
  ) (!
   (= (req%vstd!atomic.impl&%9.fetch_or. self! pre%perm! n!) (=>
     %%global_location_label%%9
     (= (vstd!atomic.impl&%9.id.? (Poly%vstd!atomic.PAtomicU64. self!)) (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd!atomic.PermissionDataU64. (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.?
          (Poly%vstd!atomic.PermissionU64. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%9.fetch_or. self! pre%perm! n!))
   :qid internal_req__vstd!atomic.impl&__9.fetch_or._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__9.fetch_or._definition
)))
(declare-fun ens%vstd!atomic.impl&%9.fetch_or. (vstd!atomic.PAtomicU64. vstd!atomic.PermissionU64.
  vstd!atomic.PermissionU64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (pre%perm! vstd!atomic.PermissionU64.) (perm!
    vstd!atomic.PermissionU64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd!atomic.impl&%9.fetch_or. self! pre%perm! perm! n! ret!) (and
     (uInv 64 ret!)
     (= (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           perm!
       ))))
      ) (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           pre%perm!
     ))))))
     (= (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           perm!
       ))))
      ) (uClip 64 (bitor (I (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
           (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd!atomic.impl&%9.fetch_or. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd!atomic.impl&__9.fetch_or._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__9.fetch_or._definition
)))

;; Function-Specs vstd::atomic::impl&%9::fetch_xor
(declare-fun req%vstd!atomic.impl&%9.fetch_xor. (vstd!atomic.PAtomicU64. vstd!atomic.PermissionU64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%10 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (pre%perm! vstd!atomic.PermissionU64.) (n!
    Int
   )
  ) (!
   (= (req%vstd!atomic.impl&%9.fetch_xor. self! pre%perm! n!) (=>
     %%global_location_label%%10
     (= (vstd!atomic.impl&%9.id.? (Poly%vstd!atomic.PAtomicU64. self!)) (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd!atomic.PermissionDataU64. (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.?
          (Poly%vstd!atomic.PermissionU64. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%9.fetch_xor. self! pre%perm! n!))
   :qid internal_req__vstd!atomic.impl&__9.fetch_xor._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__9.fetch_xor._definition
)))
(declare-fun ens%vstd!atomic.impl&%9.fetch_xor. (vstd!atomic.PAtomicU64. vstd!atomic.PermissionU64.
  vstd!atomic.PermissionU64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (pre%perm! vstd!atomic.PermissionU64.) (perm!
    vstd!atomic.PermissionU64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd!atomic.impl&%9.fetch_xor. self! pre%perm! perm! n! ret!) (and
     (uInv 64 ret!)
     (= (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           perm!
       ))))
      ) (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           pre%perm!
     ))))))
     (= (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           perm!
       ))))
      ) (uClip 64 (bitxor (I (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
           (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd!atomic.impl&%9.fetch_xor. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd!atomic.impl&__9.fetch_xor._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__9.fetch_xor._definition
)))

;; Function-Specs vstd::atomic::impl&%9::fetch_nand
(declare-fun req%vstd!atomic.impl&%9.fetch_nand. (vstd!atomic.PAtomicU64. vstd!atomic.PermissionU64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%11 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (pre%perm! vstd!atomic.PermissionU64.) (n!
    Int
   )
  ) (!
   (= (req%vstd!atomic.impl&%9.fetch_nand. self! pre%perm! n!) (=>
     %%global_location_label%%11
     (= (vstd!atomic.impl&%9.id.? (Poly%vstd!atomic.PAtomicU64. self!)) (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd!atomic.PermissionDataU64. (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.?
          (Poly%vstd!atomic.PermissionU64. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%9.fetch_nand. self! pre%perm! n!))
   :qid internal_req__vstd!atomic.impl&__9.fetch_nand._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__9.fetch_nand._definition
)))
(declare-fun ens%vstd!atomic.impl&%9.fetch_nand. (vstd!atomic.PAtomicU64. vstd!atomic.PermissionU64.
  vstd!atomic.PermissionU64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (pre%perm! vstd!atomic.PermissionU64.) (perm!
    vstd!atomic.PermissionU64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd!atomic.impl&%9.fetch_nand. self! pre%perm! perm! n! ret!) (and
     (uInv 64 ret!)
     (= (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           perm!
       ))))
      ) (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           pre%perm!
     ))))))
     (= (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           perm!
       ))))
      ) (uClip 64 (bitnot (I (uClip 64 (bitand (I (vstd!atomic.PermissionDataU64./PermissionDataU64/value
             (%Poly%vstd!atomic.PermissionDataU64. (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.?
                (Poly%vstd!atomic.PermissionU64. pre%perm!)
            ))))
           ) (I n!)
   ))))))))
   :pattern ((ens%vstd!atomic.impl&%9.fetch_nand. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd!atomic.impl&__9.fetch_nand._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__9.fetch_nand._definition
)))

;; Function-Specs vstd::atomic::impl&%9::fetch_max
(declare-fun req%vstd!atomic.impl&%9.fetch_max. (vstd!atomic.PAtomicU64. vstd!atomic.PermissionU64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%12 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (pre%perm! vstd!atomic.PermissionU64.) (n!
    Int
   )
  ) (!
   (= (req%vstd!atomic.impl&%9.fetch_max. self! pre%perm! n!) (=>
     %%global_location_label%%12
     (= (vstd!atomic.impl&%9.id.? (Poly%vstd!atomic.PAtomicU64. self!)) (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd!atomic.PermissionDataU64. (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.?
          (Poly%vstd!atomic.PermissionU64. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%9.fetch_max. self! pre%perm! n!))
   :qid internal_req__vstd!atomic.impl&__9.fetch_max._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__9.fetch_max._definition
)))
(declare-fun ens%vstd!atomic.impl&%9.fetch_max. (vstd!atomic.PAtomicU64. vstd!atomic.PermissionU64.
  vstd!atomic.PermissionU64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (pre%perm! vstd!atomic.PermissionU64.) (perm!
    vstd!atomic.PermissionU64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd!atomic.impl&%9.fetch_max. self! pre%perm! perm! n! ret!) (and
     (uInv 64 ret!)
     (= (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           perm!
       ))))
      ) (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           pre%perm!
     ))))))
     (= (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           perm!
       ))))
      ) (ite
       (> (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
          (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
             pre%perm!
         ))))
        ) n!
       )
       (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
         (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd!atomic.impl&%9.fetch_max. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd!atomic.impl&__9.fetch_max._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__9.fetch_max._definition
)))

;; Function-Specs vstd::atomic::impl&%9::fetch_min
(declare-fun req%vstd!atomic.impl&%9.fetch_min. (vstd!atomic.PAtomicU64. vstd!atomic.PermissionU64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%13 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (pre%perm! vstd!atomic.PermissionU64.) (n!
    Int
   )
  ) (!
   (= (req%vstd!atomic.impl&%9.fetch_min. self! pre%perm! n!) (=>
     %%global_location_label%%13
     (= (vstd!atomic.impl&%9.id.? (Poly%vstd!atomic.PAtomicU64. self!)) (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd!atomic.PermissionDataU64. (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.?
          (Poly%vstd!atomic.PermissionU64. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%9.fetch_min. self! pre%perm! n!))
   :qid internal_req__vstd!atomic.impl&__9.fetch_min._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__9.fetch_min._definition
)))
(declare-fun ens%vstd!atomic.impl&%9.fetch_min. (vstd!atomic.PAtomicU64. vstd!atomic.PermissionU64.
  vstd!atomic.PermissionU64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicU64.) (pre%perm! vstd!atomic.PermissionU64.) (perm!
    vstd!atomic.PermissionU64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd!atomic.impl&%9.fetch_min. self! pre%perm! perm! n! ret!) (and
     (uInv 64 ret!)
     (= (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           perm!
       ))))
      ) (vstd!atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           pre%perm!
     ))))))
     (= (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
        (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
           perm!
       ))))
      ) (ite
       (< (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
          (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
             pre%perm!
         ))))
        ) n!
       )
       (vstd!atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd!atomic.PermissionDataU64.
         (Poly%vstd!atomic.PermissionDataU64. (vstd!atomic.impl&%8.view.? (Poly%vstd!atomic.PermissionU64.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd!atomic.impl&%9.fetch_min. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd!atomic.impl&__9.fetch_min._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__9.fetch_min._definition
)))

;; Function-Def test_crate::test
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/atomic_lib-86af995cc9979138-test_atomic_u64_smoke/test.rs:48:1: 48:7 (#0)
(set-option :sat.euf true)
(set-option :tactic.default_tactic sat)
(set-option :smt.ematching false)
(set-option :smt.case_split 0)
(get-info :all-statistics)
(assert
 true
)
;; bitvector assertion not satisfied
(declare-const %%location_label%%0 Bool)
(assert
 (not (=>
   %%location_label%%0
   (= (bvand (_ bv11 4) ((_ zero_extend 1) (_ bv6 3))) ((_ zero_extend 2) (_ bv2 2)))
)))
(get-info :version)
(set-option :rlimit 30000000)
(check-sat)
(set-option :rlimit 0)
