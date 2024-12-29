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
(declare-sort vstd!atomic.PAtomicBool. 0)
(declare-sort vstd!atomic.PermissionBool. 0)
(declare-datatypes ((core!result.Result. 0) (vstd!atomic.PermissionDataBool. 0) (tuple%0.
   0
  ) (tuple%2. 0)
 ) (((core!result.Result./Ok (core!result.Result./Ok/?0 Poly)) (core!result.Result./Err
    (core!result.Result./Err/?0 Poly)
   )
  ) ((vstd!atomic.PermissionDataBool./PermissionDataBool (vstd!atomic.PermissionDataBool./PermissionDataBool/?patomic
     Int
    ) (vstd!atomic.PermissionDataBool./PermissionDataBool/?value Bool)
   )
  ) ((tuple%0./tuple%0)) ((tuple%2./tuple%2 (tuple%2./tuple%2/?0 Poly) (tuple%2./tuple%2/?1
     Poly
)))))
(declare-fun core!result.Result./Ok/0 (core!result.Result.) Poly)
(declare-fun core!result.Result./Err/0 (core!result.Result.) Poly)
(declare-fun vstd!atomic.PermissionDataBool./PermissionDataBool/patomic (vstd!atomic.PermissionDataBool.)
 Int
)
(declare-fun vstd!atomic.PermissionDataBool./PermissionDataBool/value (vstd!atomic.PermissionDataBool.)
 Bool
)
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-fun TYPE%core!result.Result. (Dcr Type Dcr Type) Type)
(declare-const TYPE%vstd!atomic.PAtomicBool. Type)
(declare-const TYPE%vstd!atomic.PermissionBool. Type)
(declare-const TYPE%vstd!atomic.PermissionDataBool. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%2. (Dcr Type Dcr Type) Type)
(declare-fun Poly%vstd!atomic.PAtomicBool. (vstd!atomic.PAtomicBool.) Poly)
(declare-fun %Poly%vstd!atomic.PAtomicBool. (Poly) vstd!atomic.PAtomicBool.)
(declare-fun Poly%vstd!atomic.PermissionBool. (vstd!atomic.PermissionBool.) Poly)
(declare-fun %Poly%vstd!atomic.PermissionBool. (Poly) vstd!atomic.PermissionBool.)
(declare-fun Poly%core!result.Result. (core!result.Result.) Poly)
(declare-fun %Poly%core!result.Result. (Poly) core!result.Result.)
(declare-fun Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.PermissionDataBool.)
 Poly
)
(declare-fun %Poly%vstd!atomic.PermissionDataBool. (Poly) vstd!atomic.PermissionDataBool.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%2. (tuple%2.) Poly)
(declare-fun %Poly%tuple%2. (Poly) tuple%2.)
(assert
 (forall ((x vstd!atomic.PAtomicBool.)) (!
   (= x (%Poly%vstd!atomic.PAtomicBool. (Poly%vstd!atomic.PAtomicBool. x)))
   :pattern ((Poly%vstd!atomic.PAtomicBool. x))
   :qid internal_vstd__atomic__PAtomicBool_box_axiom_definition
   :skolemid skolem_internal_vstd__atomic__PAtomicBool_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd!atomic.PAtomicBool.)
    (= x (Poly%vstd!atomic.PAtomicBool. (%Poly%vstd!atomic.PAtomicBool. x)))
   )
   :pattern ((has_type x TYPE%vstd!atomic.PAtomicBool.))
   :qid internal_vstd__atomic__PAtomicBool_unbox_axiom_definition
   :skolemid skolem_internal_vstd__atomic__PAtomicBool_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!atomic.PAtomicBool.)) (!
   (has_type (Poly%vstd!atomic.PAtomicBool. x) TYPE%vstd!atomic.PAtomicBool.)
   :pattern ((has_type (Poly%vstd!atomic.PAtomicBool. x) TYPE%vstd!atomic.PAtomicBool.))
   :qid internal_vstd__atomic__PAtomicBool_has_type_always_definition
   :skolemid skolem_internal_vstd__atomic__PAtomicBool_has_type_always_definition
)))
(assert
 (forall ((x vstd!atomic.PermissionBool.)) (!
   (= x (%Poly%vstd!atomic.PermissionBool. (Poly%vstd!atomic.PermissionBool. x)))
   :pattern ((Poly%vstd!atomic.PermissionBool. x))
   :qid internal_vstd__atomic__PermissionBool_box_axiom_definition
   :skolemid skolem_internal_vstd__atomic__PermissionBool_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd!atomic.PermissionBool.)
    (= x (Poly%vstd!atomic.PermissionBool. (%Poly%vstd!atomic.PermissionBool. x)))
   )
   :pattern ((has_type x TYPE%vstd!atomic.PermissionBool.))
   :qid internal_vstd__atomic__PermissionBool_unbox_axiom_definition
   :skolemid skolem_internal_vstd__atomic__PermissionBool_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!atomic.PermissionBool.)) (!
   (has_type (Poly%vstd!atomic.PermissionBool. x) TYPE%vstd!atomic.PermissionBool.)
   :pattern ((has_type (Poly%vstd!atomic.PermissionBool. x) TYPE%vstd!atomic.PermissionBool.))
   :qid internal_vstd__atomic__PermissionBool_has_type_always_definition
   :skolemid skolem_internal_vstd__atomic__PermissionBool_has_type_always_definition
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
 (forall ((x vstd!atomic.PermissionDataBool.)) (!
   (= x (%Poly%vstd!atomic.PermissionDataBool. (Poly%vstd!atomic.PermissionDataBool. x)))
   :pattern ((Poly%vstd!atomic.PermissionDataBool. x))
   :qid internal_vstd__atomic__PermissionDataBool_box_axiom_definition
   :skolemid skolem_internal_vstd__atomic__PermissionDataBool_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd!atomic.PermissionDataBool.)
    (= x (Poly%vstd!atomic.PermissionDataBool. (%Poly%vstd!atomic.PermissionDataBool. x)))
   )
   :pattern ((has_type x TYPE%vstd!atomic.PermissionDataBool.))
   :qid internal_vstd__atomic__PermissionDataBool_unbox_axiom_definition
   :skolemid skolem_internal_vstd__atomic__PermissionDataBool_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!atomic.PermissionDataBool.)) (!
   (= (vstd!atomic.PermissionDataBool./PermissionDataBool/patomic x) (vstd!atomic.PermissionDataBool./PermissionDataBool/?patomic
     x
   ))
   :pattern ((vstd!atomic.PermissionDataBool./PermissionDataBool/patomic x))
   :qid internal_vstd!atomic.PermissionDataBool./PermissionDataBool/patomic_accessor_definition
   :skolemid skolem_internal_vstd!atomic.PermissionDataBool./PermissionDataBool/patomic_accessor_definition
)))
(assert
 (forall ((x vstd!atomic.PermissionDataBool.)) (!
   (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value x) (vstd!atomic.PermissionDataBool./PermissionDataBool/?value
     x
   ))
   :pattern ((vstd!atomic.PermissionDataBool./PermissionDataBool/value x))
   :qid internal_vstd!atomic.PermissionDataBool./PermissionDataBool/value_accessor_definition
   :skolemid skolem_internal_vstd!atomic.PermissionDataBool./PermissionDataBool/value_accessor_definition
)))
(assert
 (forall ((x vstd!atomic.PermissionDataBool.)) (!
   (has_type (Poly%vstd!atomic.PermissionDataBool. x) TYPE%vstd!atomic.PermissionDataBool.)
   :pattern ((has_type (Poly%vstd!atomic.PermissionDataBool. x) TYPE%vstd!atomic.PermissionDataBool.))
   :qid internal_vstd__atomic__PermissionDataBool_has_type_always_definition
   :skolemid skolem_internal_vstd__atomic__PermissionDataBool_has_type_always_definition
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

;; Function-Decl vstd::atomic::impl&%0::view
(declare-fun vstd!atomic.impl&%0.view.? (Poly) vstd!atomic.PermissionDataBool.)

;; Function-Decl vstd::atomic::impl&%1::id
(declare-fun vstd!atomic.impl&%1.id.? (Poly) Int)

;; Function-Specs vstd::atomic::impl&%1::new
(declare-fun ens%vstd!atomic.impl&%1.new. (Bool tuple%2.) Bool)
(assert
 (forall ((i! Bool) (res! tuple%2.)) (!
   (= (ens%vstd!atomic.impl&%1.new. i! res!) (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ TYPE%vstd!atomic.PAtomicBool. (TRACKED
        $
       ) TYPE%vstd!atomic.PermissionBool.
     ))
     (= (vstd!atomic.impl&%0.view.? (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. res!))))
      (vstd!atomic.PermissionDataBool./PermissionDataBool (%I (I (vstd!atomic.impl&%1.id.?
          (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!)))
        ))
       ) (%B (B i!))
   ))))
   :pattern ((ens%vstd!atomic.impl&%1.new. i! res!))
   :qid internal_ens__vstd!atomic.impl&__1.new._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__1.new._definition
)))

;; Function-Specs vstd::atomic::impl&%1::load
(declare-fun req%vstd!atomic.impl&%1.load. (vstd!atomic.PAtomicBool. vstd!atomic.PermissionBool.)
 Bool
)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicBool.) (perm! vstd!atomic.PermissionBool.)) (!
   (= (req%vstd!atomic.impl&%1.load. self! perm!) (=>
     %%global_location_label%%0
     (= (vstd!atomic.impl&%1.id.? (Poly%vstd!atomic.PAtomicBool. self!)) (vstd!atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd!atomic.PermissionDataBool. (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.?
          (Poly%vstd!atomic.PermissionBool. perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%1.load. self! perm!))
   :qid internal_req__vstd!atomic.impl&__1.load._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__1.load._definition
)))
(declare-fun ens%vstd!atomic.impl&%1.load. (vstd!atomic.PAtomicBool. vstd!atomic.PermissionBool.
  Bool
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicBool.) (perm! vstd!atomic.PermissionBool.) (ret!
    Bool
   )
  ) (!
   (= (ens%vstd!atomic.impl&%1.load. self! perm! ret!) (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value
      (%Poly%vstd!atomic.PermissionDataBool. (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.?
         (Poly%vstd!atomic.PermissionBool. perm!)
      )))
     ) ret!
   ))
   :pattern ((ens%vstd!atomic.impl&%1.load. self! perm! ret!))
   :qid internal_ens__vstd!atomic.impl&__1.load._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__1.load._definition
)))

;; Function-Specs vstd::atomic::impl&%1::store
(declare-fun req%vstd!atomic.impl&%1.store. (vstd!atomic.PAtomicBool. vstd!atomic.PermissionBool.
  Bool
 ) Bool
)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicBool.) (pre%perm! vstd!atomic.PermissionBool.) (
    v! Bool
   )
  ) (!
   (= (req%vstd!atomic.impl&%1.store. self! pre%perm! v!) (=>
     %%global_location_label%%1
     (= (vstd!atomic.impl&%1.id.? (Poly%vstd!atomic.PAtomicBool. self!)) (vstd!atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd!atomic.PermissionDataBool. (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.?
          (Poly%vstd!atomic.PermissionBool. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%1.store. self! pre%perm! v!))
   :qid internal_req__vstd!atomic.impl&__1.store._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__1.store._definition
)))
(declare-fun ens%vstd!atomic.impl&%1.store. (vstd!atomic.PAtomicBool. vstd!atomic.PermissionBool.
  vstd!atomic.PermissionBool. Bool
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicBool.) (pre%perm! vstd!atomic.PermissionBool.) (
    perm! vstd!atomic.PermissionBool.
   ) (v! Bool)
  ) (!
   (= (ens%vstd!atomic.impl&%1.store. self! pre%perm! perm! v!) (and
     (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
        (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
           perm!
       ))))
      ) v!
     )
     (= (vstd!atomic.impl&%1.id.? (Poly%vstd!atomic.PAtomicBool. self!)) (vstd!atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd!atomic.PermissionDataBool. (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.?
          (Poly%vstd!atomic.PermissionBool. perm!)
   )))))))
   :pattern ((ens%vstd!atomic.impl&%1.store. self! pre%perm! perm! v!))
   :qid internal_ens__vstd!atomic.impl&__1.store._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__1.store._definition
)))

;; Function-Specs vstd::atomic::impl&%1::compare_exchange
(declare-fun req%vstd!atomic.impl&%1.compare_exchange. (vstd!atomic.PAtomicBool. vstd!atomic.PermissionBool.
  Bool Bool
 ) Bool
)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicBool.) (pre%perm! vstd!atomic.PermissionBool.) (
    current! Bool
   ) (new! Bool)
  ) (!
   (= (req%vstd!atomic.impl&%1.compare_exchange. self! pre%perm! current! new!) (=>
     %%global_location_label%%2
     (= (vstd!atomic.impl&%1.id.? (Poly%vstd!atomic.PAtomicBool. self!)) (vstd!atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd!atomic.PermissionDataBool. (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.?
          (Poly%vstd!atomic.PermissionBool. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%1.compare_exchange. self! pre%perm! current! new!))
   :qid internal_req__vstd!atomic.impl&__1.compare_exchange._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__1.compare_exchange._definition
)))
(declare-fun ens%vstd!atomic.impl&%1.compare_exchange. (vstd!atomic.PAtomicBool. vstd!atomic.PermissionBool.
  vstd!atomic.PermissionBool. Bool Bool core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicBool.) (pre%perm! vstd!atomic.PermissionBool.) (
    perm! vstd!atomic.PermissionBool.
   ) (current! Bool) (new! Bool) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd!atomic.impl&%1.compare_exchange. self! pre%perm! perm! current! new! ret!)
    (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ BOOL $ BOOL))
     (and
      (= (vstd!atomic.impl&%1.id.? (Poly%vstd!atomic.PAtomicBool. self!)) (vstd!atomic.PermissionDataBool./PermissionDataBool/patomic
        (%Poly%vstd!atomic.PermissionDataBool. (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.?
           (Poly%vstd!atomic.PermissionBool. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%B (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
             (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                pre%perm!
          ))))))
          (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
             (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
            (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
               pre%perm!
       ))))))))
       (let
        ((r$ (%B (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (not (= current! (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
              (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                 pre%perm!
          )))))))
          (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
             (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                perm!
            ))))
           ) (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
             (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                pre%perm!
         )))))))
         (= r$ (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
            (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd!atomic.impl&%1.compare_exchange. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd!atomic.impl&__1.compare_exchange._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__1.compare_exchange._definition
)))

;; Function-Specs vstd::atomic::impl&%1::compare_exchange_weak
(declare-fun req%vstd!atomic.impl&%1.compare_exchange_weak. (vstd!atomic.PAtomicBool.
  vstd!atomic.PermissionBool. Bool Bool
 ) Bool
)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicBool.) (pre%perm! vstd!atomic.PermissionBool.) (
    current! Bool
   ) (new! Bool)
  ) (!
   (= (req%vstd!atomic.impl&%1.compare_exchange_weak. self! pre%perm! current! new!)
    (=>
     %%global_location_label%%3
     (= (vstd!atomic.impl&%1.id.? (Poly%vstd!atomic.PAtomicBool. self!)) (vstd!atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd!atomic.PermissionDataBool. (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.?
          (Poly%vstd!atomic.PermissionBool. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%1.compare_exchange_weak. self! pre%perm! current!
     new!
   ))
   :qid internal_req__vstd!atomic.impl&__1.compare_exchange_weak._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__1.compare_exchange_weak._definition
)))
(declare-fun ens%vstd!atomic.impl&%1.compare_exchange_weak. (vstd!atomic.PAtomicBool.
  vstd!atomic.PermissionBool. vstd!atomic.PermissionBool. Bool Bool core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicBool.) (pre%perm! vstd!atomic.PermissionBool.) (
    perm! vstd!atomic.PermissionBool.
   ) (current! Bool) (new! Bool) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd!atomic.impl&%1.compare_exchange_weak. self! pre%perm! perm! current! new!
     ret!
    ) (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ BOOL $ BOOL))
     (and
      (= (vstd!atomic.impl&%1.id.? (Poly%vstd!atomic.PAtomicBool. self!)) (vstd!atomic.PermissionDataBool./PermissionDataBool/patomic
        (%Poly%vstd!atomic.PermissionDataBool. (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.?
           (Poly%vstd!atomic.PermissionBool. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%B (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
             (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                pre%perm!
          ))))))
          (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
             (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
            (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
               pre%perm!
       ))))))))
       (let
        ((r$ (%B (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
            (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
               perm!
           ))))
          ) (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
            (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
               pre%perm!
         ))))))
         (= r$ (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
            (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd!atomic.impl&%1.compare_exchange_weak. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd!atomic.impl&__1.compare_exchange_weak._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__1.compare_exchange_weak._definition
)))

;; Function-Specs vstd::atomic::impl&%1::swap
(declare-fun req%vstd!atomic.impl&%1.swap. (vstd!atomic.PAtomicBool. vstd!atomic.PermissionBool.
  Bool
 ) Bool
)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicBool.) (pre%perm! vstd!atomic.PermissionBool.) (
    v! Bool
   )
  ) (!
   (= (req%vstd!atomic.impl&%1.swap. self! pre%perm! v!) (=>
     %%global_location_label%%4
     (= (vstd!atomic.impl&%1.id.? (Poly%vstd!atomic.PAtomicBool. self!)) (vstd!atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd!atomic.PermissionDataBool. (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.?
          (Poly%vstd!atomic.PermissionBool. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%1.swap. self! pre%perm! v!))
   :qid internal_req__vstd!atomic.impl&__1.swap._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__1.swap._definition
)))
(declare-fun ens%vstd!atomic.impl&%1.swap. (vstd!atomic.PAtomicBool. vstd!atomic.PermissionBool.
  vstd!atomic.PermissionBool. Bool Bool
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicBool.) (pre%perm! vstd!atomic.PermissionBool.) (
    perm! vstd!atomic.PermissionBool.
   ) (v! Bool) (ret! Bool)
  ) (!
   (= (ens%vstd!atomic.impl&%1.swap. self! pre%perm! perm! v! ret!) (and
     (and
      (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
         (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
            perm!
        ))))
       ) v!
      )
      (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
         (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
            pre%perm!
        ))))
       ) ret!
     ))
     (= (vstd!atomic.impl&%1.id.? (Poly%vstd!atomic.PAtomicBool. self!)) (vstd!atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd!atomic.PermissionDataBool. (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.?
          (Poly%vstd!atomic.PermissionBool. perm!)
   )))))))
   :pattern ((ens%vstd!atomic.impl&%1.swap. self! pre%perm! perm! v! ret!))
   :qid internal_ens__vstd!atomic.impl&__1.swap._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__1.swap._definition
)))

;; Function-Specs vstd::atomic::impl&%1::into_inner
(declare-fun req%vstd!atomic.impl&%1.into_inner. (vstd!atomic.PAtomicBool. vstd!atomic.PermissionBool.)
 Bool
)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicBool.) (perm! vstd!atomic.PermissionBool.)) (!
   (= (req%vstd!atomic.impl&%1.into_inner. self! perm!) (=>
     %%global_location_label%%5
     (= (vstd!atomic.impl&%1.id.? (Poly%vstd!atomic.PAtomicBool. self!)) (vstd!atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd!atomic.PermissionDataBool. (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.?
          (Poly%vstd!atomic.PermissionBool. perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%1.into_inner. self! perm!))
   :qid internal_req__vstd!atomic.impl&__1.into_inner._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__1.into_inner._definition
)))
(declare-fun ens%vstd!atomic.impl&%1.into_inner. (vstd!atomic.PAtomicBool. vstd!atomic.PermissionBool.
  Bool
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicBool.) (perm! vstd!atomic.PermissionBool.) (ret!
    Bool
   )
  ) (!
   (= (ens%vstd!atomic.impl&%1.into_inner. self! perm! ret!) (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value
      (%Poly%vstd!atomic.PermissionDataBool. (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.?
         (Poly%vstd!atomic.PermissionBool. perm!)
      )))
     ) ret!
   ))
   :pattern ((ens%vstd!atomic.impl&%1.into_inner. self! perm! ret!))
   :qid internal_ens__vstd!atomic.impl&__1.into_inner._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__1.into_inner._definition
)))

;; Function-Specs vstd::atomic::impl&%1::fetch_and
(declare-fun req%vstd!atomic.impl&%1.fetch_and. (vstd!atomic.PAtomicBool. vstd!atomic.PermissionBool.
  Bool
 ) Bool
)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicBool.) (pre%perm! vstd!atomic.PermissionBool.) (
    n! Bool
   )
  ) (!
   (= (req%vstd!atomic.impl&%1.fetch_and. self! pre%perm! n!) (=>
     %%global_location_label%%6
     (= (vstd!atomic.impl&%1.id.? (Poly%vstd!atomic.PAtomicBool. self!)) (vstd!atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd!atomic.PermissionDataBool. (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.?
          (Poly%vstd!atomic.PermissionBool. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%1.fetch_and. self! pre%perm! n!))
   :qid internal_req__vstd!atomic.impl&__1.fetch_and._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__1.fetch_and._definition
)))
(declare-fun ens%vstd!atomic.impl&%1.fetch_and. (vstd!atomic.PAtomicBool. vstd!atomic.PermissionBool.
  vstd!atomic.PermissionBool. Bool Bool
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicBool.) (pre%perm! vstd!atomic.PermissionBool.) (
    perm! vstd!atomic.PermissionBool.
   ) (n! Bool) (ret! Bool)
  ) (!
   (= (ens%vstd!atomic.impl&%1.fetch_and. self! pre%perm! perm! n! ret!) (and
     (and
      (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
         (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
            pre%perm!
        ))))
       ) ret!
      )
      (= (vstd!atomic.PermissionDataBool./PermissionDataBool/patomic (%Poly%vstd!atomic.PermissionDataBool.
         (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
            perm!
        ))))
       ) (vstd!atomic.PermissionDataBool./PermissionDataBool/patomic (%Poly%vstd!atomic.PermissionDataBool.
         (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
            pre%perm!
     )))))))
     (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
        (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
           perm!
       ))))
      ) (and
       (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
         (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd!atomic.impl&%1.fetch_and. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd!atomic.impl&__1.fetch_and._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__1.fetch_and._definition
)))

;; Function-Specs vstd::atomic::impl&%1::fetch_or
(declare-fun req%vstd!atomic.impl&%1.fetch_or. (vstd!atomic.PAtomicBool. vstd!atomic.PermissionBool.
  Bool
 ) Bool
)
(declare-const %%global_location_label%%7 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicBool.) (pre%perm! vstd!atomic.PermissionBool.) (
    n! Bool
   )
  ) (!
   (= (req%vstd!atomic.impl&%1.fetch_or. self! pre%perm! n!) (=>
     %%global_location_label%%7
     (= (vstd!atomic.impl&%1.id.? (Poly%vstd!atomic.PAtomicBool. self!)) (vstd!atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd!atomic.PermissionDataBool. (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.?
          (Poly%vstd!atomic.PermissionBool. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%1.fetch_or. self! pre%perm! n!))
   :qid internal_req__vstd!atomic.impl&__1.fetch_or._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__1.fetch_or._definition
)))
(declare-fun ens%vstd!atomic.impl&%1.fetch_or. (vstd!atomic.PAtomicBool. vstd!atomic.PermissionBool.
  vstd!atomic.PermissionBool. Bool Bool
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicBool.) (pre%perm! vstd!atomic.PermissionBool.) (
    perm! vstd!atomic.PermissionBool.
   ) (n! Bool) (ret! Bool)
  ) (!
   (= (ens%vstd!atomic.impl&%1.fetch_or. self! pre%perm! perm! n! ret!) (and
     (and
      (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
         (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
            pre%perm!
        ))))
       ) ret!
      )
      (= (vstd!atomic.PermissionDataBool./PermissionDataBool/patomic (%Poly%vstd!atomic.PermissionDataBool.
         (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
            perm!
        ))))
       ) (vstd!atomic.PermissionDataBool./PermissionDataBool/patomic (%Poly%vstd!atomic.PermissionDataBool.
         (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
            pre%perm!
     )))))))
     (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
        (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
           perm!
       ))))
      ) (or
       (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
         (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd!atomic.impl&%1.fetch_or. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd!atomic.impl&__1.fetch_or._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__1.fetch_or._definition
)))

;; Function-Specs vstd::atomic::impl&%1::fetch_xor
(declare-fun req%vstd!atomic.impl&%1.fetch_xor. (vstd!atomic.PAtomicBool. vstd!atomic.PermissionBool.
  Bool
 ) Bool
)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicBool.) (pre%perm! vstd!atomic.PermissionBool.) (
    n! Bool
   )
  ) (!
   (= (req%vstd!atomic.impl&%1.fetch_xor. self! pre%perm! n!) (=>
     %%global_location_label%%8
     (= (vstd!atomic.impl&%1.id.? (Poly%vstd!atomic.PAtomicBool. self!)) (vstd!atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd!atomic.PermissionDataBool. (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.?
          (Poly%vstd!atomic.PermissionBool. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%1.fetch_xor. self! pre%perm! n!))
   :qid internal_req__vstd!atomic.impl&__1.fetch_xor._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__1.fetch_xor._definition
)))
(declare-fun ens%vstd!atomic.impl&%1.fetch_xor. (vstd!atomic.PAtomicBool. vstd!atomic.PermissionBool.
  vstd!atomic.PermissionBool. Bool Bool
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicBool.) (pre%perm! vstd!atomic.PermissionBool.) (
    perm! vstd!atomic.PermissionBool.
   ) (n! Bool) (ret! Bool)
  ) (!
   (= (ens%vstd!atomic.impl&%1.fetch_xor. self! pre%perm! perm! n! ret!) (and
     (and
      (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
         (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
            pre%perm!
        ))))
       ) ret!
      )
      (= (vstd!atomic.PermissionDataBool./PermissionDataBool/patomic (%Poly%vstd!atomic.PermissionDataBool.
         (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
            perm!
        ))))
       ) (vstd!atomic.PermissionDataBool./PermissionDataBool/patomic (%Poly%vstd!atomic.PermissionDataBool.
         (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
            pre%perm!
     )))))))
     (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
        (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
           perm!
       ))))
      ) (or
       (and
        (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
          (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
             pre%perm!
        )))))
        (not n!)
       )
       (and
        (not (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
           (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
              pre%perm!
        ))))))
        n!
   )))))
   :pattern ((ens%vstd!atomic.impl&%1.fetch_xor. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd!atomic.impl&__1.fetch_xor._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__1.fetch_xor._definition
)))

;; Function-Specs vstd::atomic::impl&%1::fetch_nand
(declare-fun req%vstd!atomic.impl&%1.fetch_nand. (vstd!atomic.PAtomicBool. vstd!atomic.PermissionBool.
  Bool
 ) Bool
)
(declare-const %%global_location_label%%9 Bool)
(assert
 (forall ((self! vstd!atomic.PAtomicBool.) (pre%perm! vstd!atomic.PermissionBool.) (
    n! Bool
   )
  ) (!
   (= (req%vstd!atomic.impl&%1.fetch_nand. self! pre%perm! n!) (=>
     %%global_location_label%%9
     (= (vstd!atomic.impl&%1.id.? (Poly%vstd!atomic.PAtomicBool. self!)) (vstd!atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd!atomic.PermissionDataBool. (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.?
          (Poly%vstd!atomic.PermissionBool. pre%perm!)
   )))))))
   :pattern ((req%vstd!atomic.impl&%1.fetch_nand. self! pre%perm! n!))
   :qid internal_req__vstd!atomic.impl&__1.fetch_nand._definition
   :skolemid skolem_internal_req__vstd!atomic.impl&__1.fetch_nand._definition
)))
(declare-fun ens%vstd!atomic.impl&%1.fetch_nand. (vstd!atomic.PAtomicBool. vstd!atomic.PermissionBool.
  vstd!atomic.PermissionBool. Bool Bool
 ) Bool
)
(assert
 (forall ((self! vstd!atomic.PAtomicBool.) (pre%perm! vstd!atomic.PermissionBool.) (
    perm! vstd!atomic.PermissionBool.
   ) (n! Bool) (ret! Bool)
  ) (!
   (= (ens%vstd!atomic.impl&%1.fetch_nand. self! pre%perm! perm! n! ret!) (and
     (and
      (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
         (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
            pre%perm!
        ))))
       ) ret!
      )
      (= (vstd!atomic.PermissionDataBool./PermissionDataBool/patomic (%Poly%vstd!atomic.PermissionDataBool.
         (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
            perm!
        ))))
       ) (vstd!atomic.PermissionDataBool./PermissionDataBool/patomic (%Poly%vstd!atomic.PermissionDataBool.
         (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
            pre%perm!
     )))))))
     (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
        (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
           perm!
       ))))
      ) (not (and
        (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
          (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
             pre%perm!
        )))))
        n!
   )))))
   :pattern ((ens%vstd!atomic.impl&%1.fetch_nand. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd!atomic.impl&__1.fetch_nand._definition
   :skolemid skolem_internal_ens__vstd!atomic.impl&__1.fetch_nand._definition
)))

;; Function-Def test_crate::test
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/atomic_lib-86af995cc9979138-test_atomic_bool_smoke/test.rs:19:5: 19:14 (#0)
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
 (declare-const tmp%10 Bool)
 (declare-const tmp%11 Bool)
 (declare-const tmp%12 Bool)
 (declare-const tmp%13 Bool)
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
 (declare-const tmp%41 Bool)
 (declare-const tmp%42 Bool)
 (declare-const tmp%43 Bool)
 (declare-const tmp%44 Bool)
 (declare-const tmp%45 Bool)
 (declare-const tmp%46 Bool)
 (declare-const tmp%%@ tuple%2.)
 (declare-const at@ vstd!atomic.PAtomicBool.)
 (declare-const verus_tmp_perm@ vstd!atomic.PermissionBool.)
 (declare-const perm@0 vstd!atomic.PermissionBool.)
 (declare-const l@ Bool)
 (declare-const l$1@ Bool)
 (declare-const l$2@ Bool)
 (declare-const l$3@ Bool)
 (declare-const l$4@ Bool)
 (declare-const l$5@ Bool)
 (declare-const l$6@ Bool)
 (declare-const l$7@ Bool)
 (declare-const l$8@ Bool)
 (declare-const l$9@ Bool)
 (declare-const l$10@ Bool)
 (declare-const l$11@ Bool)
 (declare-const l$12@ Bool)
 (declare-const l$13@ Bool)
 (declare-const l$14@ Bool)
 (declare-const l$15@ Bool)
 (declare-const l$16@ Bool)
 (declare-const l$17@ Bool)
 (declare-const l$18@ core!result.Result.)
 (declare-const l$19@ core!result.Result.)
 (declare-const l$20@ core!result.Result.)
 (declare-const l$21@ core!result.Result.)
 (declare-const l$22@ Bool)
 (assert
  fuel_defaults
 )
 (declare-const perm@1 vstd!atomic.PermissionBool.)
 (declare-const perm@2 vstd!atomic.PermissionBool.)
 (declare-const perm@3 vstd!atomic.PermissionBool.)
 (declare-const perm@4 vstd!atomic.PermissionBool.)
 (declare-const perm@5 vstd!atomic.PermissionBool.)
 (declare-const perm@6 vstd!atomic.PermissionBool.)
 (declare-const perm@7 vstd!atomic.PermissionBool.)
 (declare-const perm@8 vstd!atomic.PermissionBool.)
 (declare-const perm@9 vstd!atomic.PermissionBool.)
 (declare-const perm@10 vstd!atomic.PermissionBool.)
 (declare-const perm@11 vstd!atomic.PermissionBool.)
 (declare-const perm@12 vstd!atomic.PermissionBool.)
 (declare-const perm@13 vstd!atomic.PermissionBool.)
 (declare-const perm@14 vstd!atomic.PermissionBool.)
 (declare-const perm@15 vstd!atomic.PermissionBool.)
 (declare-const perm@16 vstd!atomic.PermissionBool.)
 (declare-const perm@17 vstd!atomic.PermissionBool.)
 (declare-const perm@18 vstd!atomic.PermissionBool.)
 (declare-const perm@19 vstd!atomic.PermissionBool.)
 (declare-const perm@20 vstd!atomic.PermissionBool.)
 (declare-const perm@21 vstd!atomic.PermissionBool.)
 (declare-const perm@22 vstd!atomic.PermissionBool.)
 (declare-const perm@23 vstd!atomic.PermissionBool.)
 (declare-const perm@24 vstd!atomic.PermissionBool.)
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
 ;; precondition not satisfied
 (declare-const %%location_label%%14 Bool)
 ;; assertion failed
 (declare-const %%location_label%%15 Bool)
 ;; assertion failed
 (declare-const %%location_label%%16 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%17 Bool)
 ;; assertion failed
 (declare-const %%location_label%%18 Bool)
 ;; assertion failed
 (declare-const %%location_label%%19 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%20 Bool)
 ;; assertion failed
 (declare-const %%location_label%%21 Bool)
 ;; assertion failed
 (declare-const %%location_label%%22 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%23 Bool)
 ;; assertion failed
 (declare-const %%location_label%%24 Bool)
 ;; assertion failed
 (declare-const %%location_label%%25 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%26 Bool)
 ;; assertion failed
 (declare-const %%location_label%%27 Bool)
 ;; assertion failed
 (declare-const %%location_label%%28 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%29 Bool)
 ;; assertion failed
 (declare-const %%location_label%%30 Bool)
 ;; assertion failed
 (declare-const %%location_label%%31 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%32 Bool)
 ;; assertion failed
 (declare-const %%location_label%%33 Bool)
 ;; assertion failed
 (declare-const %%location_label%%34 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%35 Bool)
 ;; assertion failed
 (declare-const %%location_label%%36 Bool)
 ;; assertion failed
 (declare-const %%location_label%%37 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%38 Bool)
 ;; assertion failed
 (declare-const %%location_label%%39 Bool)
 ;; assertion failed
 (declare-const %%location_label%%40 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%41 Bool)
 ;; assertion failed
 (declare-const %%location_label%%42 Bool)
 ;; assertion failed
 (declare-const %%location_label%%43 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%44 Bool)
 ;; assertion failed
 (declare-const %%location_label%%45 Bool)
 ;; assertion failed
 (declare-const %%location_label%%46 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%47 Bool)
 ;; assertion failed
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
 ;; assertion failed
 (declare-const %%location_label%%60 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%61 Bool)
 ;; assertion failed
 (declare-const %%location_label%%62 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%63 Bool)
 ;; assertion failed
 (declare-const %%location_label%%64 Bool)
 ;; assertion failed
 (declare-const %%location_label%%65 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%66 Bool)
 ;; assertion failed
 (declare-const %%location_label%%67 Bool)
 ;; assertion failed
 (declare-const %%location_label%%68 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%69 Bool)
 ;; assertion failed
 (declare-const %%location_label%%70 Bool)
 ;; assertion failed
 (declare-const %%location_label%%71 Bool)
 (assert
  (not (=>
    (ens%vstd!atomic.impl&%1.new. false tmp%%@)
    (=>
     (= at@ (%Poly%vstd!atomic.PAtomicBool. (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2.
          tmp%%@
     )))))
     (=>
      (= verus_tmp_perm@ (%Poly%vstd!atomic.PermissionBool. (tuple%2./tuple%2/1 (%Poly%tuple%2.
          (Poly%tuple%2. tmp%%@)
      ))))
      (=>
       (= perm@1 verus_tmp_perm@)
       (=>
        (= tmp%1 (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
            (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
               perm@1
           ))))
          ) false
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
            (req%vstd!atomic.impl&%1.load. at@ perm@1)
           )
           (=>
            (ens%vstd!atomic.impl&%1.load. at@ perm@1 l@)
            (=>
             (= tmp%2 (= l@ false))
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
                 (req%vstd!atomic.impl&%1.store. at@ perm@1 true)
                )
                (=>
                 (ens%vstd!atomic.impl&%1.store. at@ perm@1 perm@2 true)
                 (=>
                  (= tmp%3 (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
                      (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                         perm@2
                     ))))
                    ) true
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
                      (req%vstd!atomic.impl&%1.swap. at@ perm@2 false)
                     )
                     (=>
                      (ens%vstd!atomic.impl&%1.swap. at@ perm@2 perm@3 false l$1@)
                      (=>
                       (= tmp%4 (= l$1@ true))
                       (and
                        (=>
                         %%location_label%%6
                         tmp%4
                        )
                        (=>
                         tmp%4
                         (=>
                          (= tmp%5 (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
                              (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                                 perm@3
                             ))))
                            ) false
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
                              (req%vstd!atomic.impl&%1.fetch_or. at@ perm@3 false)
                             )
                             (=>
                              (ens%vstd!atomic.impl&%1.fetch_or. at@ perm@3 perm@4 false l$2@)
                              (=>
                               (= tmp%6 (= l$2@ false))
                               (and
                                (=>
                                 %%location_label%%9
                                 tmp%6
                                )
                                (=>
                                 tmp%6
                                 (=>
                                  (= tmp%7 (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
                                      (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                                         perm@4
                                     ))))
                                    ) false
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
                                      (req%vstd!atomic.impl&%1.fetch_or. at@ perm@4 true)
                                     )
                                     (=>
                                      (ens%vstd!atomic.impl&%1.fetch_or. at@ perm@4 perm@5 true l$3@)
                                      (=>
                                       (= tmp%8 (= l$3@ false))
                                       (and
                                        (=>
                                         %%location_label%%12
                                         tmp%8
                                        )
                                        (=>
                                         tmp%8
                                         (=>
                                          (= tmp%9 (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
                                              (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                                                 perm@5
                                             ))))
                                            ) true
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
                                              (req%vstd!atomic.impl&%1.fetch_or. at@ perm@5 false)
                                             )
                                             (=>
                                              (ens%vstd!atomic.impl&%1.fetch_or. at@ perm@5 perm@6 false l$4@)
                                              (=>
                                               (= tmp%10 (= l$4@ true))
                                               (and
                                                (=>
                                                 %%location_label%%15
                                                 tmp%10
                                                )
                                                (=>
                                                 tmp%10
                                                 (=>
                                                  (= tmp%11 (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
                                                      (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                                                         perm@6
                                                     ))))
                                                    ) true
                                                  ))
                                                  (and
                                                   (=>
                                                    %%location_label%%16
                                                    tmp%11
                                                   )
                                                   (=>
                                                    tmp%11
                                                    (and
                                                     (=>
                                                      %%location_label%%17
                                                      (req%vstd!atomic.impl&%1.fetch_or. at@ perm@6 true)
                                                     )
                                                     (=>
                                                      (ens%vstd!atomic.impl&%1.fetch_or. at@ perm@6 perm@7 true l$5@)
                                                      (=>
                                                       (= tmp%12 (= l$5@ true))
                                                       (and
                                                        (=>
                                                         %%location_label%%18
                                                         tmp%12
                                                        )
                                                        (=>
                                                         tmp%12
                                                         (=>
                                                          (= tmp%13 (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
                                                              (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                                                                 perm@7
                                                             ))))
                                                            ) true
                                                          ))
                                                          (and
                                                           (=>
                                                            %%location_label%%19
                                                            tmp%13
                                                           )
                                                           (=>
                                                            tmp%13
                                                            (and
                                                             (=>
                                                              %%location_label%%20
                                                              (req%vstd!atomic.impl&%1.fetch_and. at@ perm@7 true)
                                                             )
                                                             (=>
                                                              (ens%vstd!atomic.impl&%1.fetch_and. at@ perm@7 perm@8 true l$6@)
                                                              (=>
                                                               (= tmp%14 (= l$6@ true))
                                                               (and
                                                                (=>
                                                                 %%location_label%%21
                                                                 tmp%14
                                                                )
                                                                (=>
                                                                 tmp%14
                                                                 (=>
                                                                  (= tmp%15 (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
                                                                      (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                                                                         perm@8
                                                                     ))))
                                                                    ) true
                                                                  ))
                                                                  (and
                                                                   (=>
                                                                    %%location_label%%22
                                                                    tmp%15
                                                                   )
                                                                   (=>
                                                                    tmp%15
                                                                    (and
                                                                     (=>
                                                                      %%location_label%%23
                                                                      (req%vstd!atomic.impl&%1.fetch_and. at@ perm@8 false)
                                                                     )
                                                                     (=>
                                                                      (ens%vstd!atomic.impl&%1.fetch_and. at@ perm@8 perm@9 false l$7@)
                                                                      (=>
                                                                       (= tmp%16 (= l$7@ true))
                                                                       (and
                                                                        (=>
                                                                         %%location_label%%24
                                                                         tmp%16
                                                                        )
                                                                        (=>
                                                                         tmp%16
                                                                         (=>
                                                                          (= tmp%17 (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
                                                                              (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                                                                                 perm@9
                                                                             ))))
                                                                            ) false
                                                                          ))
                                                                          (and
                                                                           (=>
                                                                            %%location_label%%25
                                                                            tmp%17
                                                                           )
                                                                           (=>
                                                                            tmp%17
                                                                            (and
                                                                             (=>
                                                                              %%location_label%%26
                                                                              (req%vstd!atomic.impl&%1.fetch_and. at@ perm@9 false)
                                                                             )
                                                                             (=>
                                                                              (ens%vstd!atomic.impl&%1.fetch_and. at@ perm@9 perm@10 false l$8@)
                                                                              (=>
                                                                               (= tmp%18 (= l$8@ false))
                                                                               (and
                                                                                (=>
                                                                                 %%location_label%%27
                                                                                 tmp%18
                                                                                )
                                                                                (=>
                                                                                 tmp%18
                                                                                 (=>
                                                                                  (= tmp%19 (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
                                                                                      (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                                                                                         perm@10
                                                                                     ))))
                                                                                    ) false
                                                                                  ))
                                                                                  (and
                                                                                   (=>
                                                                                    %%location_label%%28
                                                                                    tmp%19
                                                                                   )
                                                                                   (=>
                                                                                    tmp%19
                                                                                    (and
                                                                                     (=>
                                                                                      %%location_label%%29
                                                                                      (req%vstd!atomic.impl&%1.fetch_and. at@ perm@10 true)
                                                                                     )
                                                                                     (=>
                                                                                      (ens%vstd!atomic.impl&%1.fetch_and. at@ perm@10 perm@11 true l$9@)
                                                                                      (=>
                                                                                       (= tmp%20 (= l$9@ false))
                                                                                       (and
                                                                                        (=>
                                                                                         %%location_label%%30
                                                                                         tmp%20
                                                                                        )
                                                                                        (=>
                                                                                         tmp%20
                                                                                         (=>
                                                                                          (= tmp%21 (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
                                                                                              (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                                                                                                 perm@11
                                                                                             ))))
                                                                                            ) false
                                                                                          ))
                                                                                          (and
                                                                                           (=>
                                                                                            %%location_label%%31
                                                                                            tmp%21
                                                                                           )
                                                                                           (=>
                                                                                            tmp%21
                                                                                            (and
                                                                                             (=>
                                                                                              %%location_label%%32
                                                                                              (req%vstd!atomic.impl&%1.fetch_xor. at@ perm@11 false)
                                                                                             )
                                                                                             (=>
                                                                                              (ens%vstd!atomic.impl&%1.fetch_xor. at@ perm@11 perm@12 false l$10@)
                                                                                              (=>
                                                                                               (= tmp%22 (= l$10@ false))
                                                                                               (and
                                                                                                (=>
                                                                                                 %%location_label%%33
                                                                                                 tmp%22
                                                                                                )
                                                                                                (=>
                                                                                                 tmp%22
                                                                                                 (=>
                                                                                                  (= tmp%23 (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
                                                                                                      (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                                                                                                         perm@12
                                                                                                     ))))
                                                                                                    ) false
                                                                                                  ))
                                                                                                  (and
                                                                                                   (=>
                                                                                                    %%location_label%%34
                                                                                                    tmp%23
                                                                                                   )
                                                                                                   (=>
                                                                                                    tmp%23
                                                                                                    (and
                                                                                                     (=>
                                                                                                      %%location_label%%35
                                                                                                      (req%vstd!atomic.impl&%1.fetch_xor. at@ perm@12 true)
                                                                                                     )
                                                                                                     (=>
                                                                                                      (ens%vstd!atomic.impl&%1.fetch_xor. at@ perm@12 perm@13 true l$11@)
                                                                                                      (=>
                                                                                                       (= tmp%24 (= l$11@ false))
                                                                                                       (and
                                                                                                        (=>
                                                                                                         %%location_label%%36
                                                                                                         tmp%24
                                                                                                        )
                                                                                                        (=>
                                                                                                         tmp%24
                                                                                                         (=>
                                                                                                          (= tmp%25 (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
                                                                                                              (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                                                                                                                 perm@13
                                                                                                             ))))
                                                                                                            ) true
                                                                                                          ))
                                                                                                          (and
                                                                                                           (=>
                                                                                                            %%location_label%%37
                                                                                                            tmp%25
                                                                                                           )
                                                                                                           (=>
                                                                                                            tmp%25
                                                                                                            (and
                                                                                                             (=>
                                                                                                              %%location_label%%38
                                                                                                              (req%vstd!atomic.impl&%1.fetch_xor. at@ perm@13 false)
                                                                                                             )
                                                                                                             (=>
                                                                                                              (ens%vstd!atomic.impl&%1.fetch_xor. at@ perm@13 perm@14 false l$12@)
                                                                                                              (=>
                                                                                                               (= tmp%26 (= l$12@ true))
                                                                                                               (and
                                                                                                                (=>
                                                                                                                 %%location_label%%39
                                                                                                                 tmp%26
                                                                                                                )
                                                                                                                (=>
                                                                                                                 tmp%26
                                                                                                                 (=>
                                                                                                                  (= tmp%27 (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
                                                                                                                      (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                                                                                                                         perm@14
                                                                                                                     ))))
                                                                                                                    ) true
                                                                                                                  ))
                                                                                                                  (and
                                                                                                                   (=>
                                                                                                                    %%location_label%%40
                                                                                                                    tmp%27
                                                                                                                   )
                                                                                                                   (=>
                                                                                                                    tmp%27
                                                                                                                    (and
                                                                                                                     (=>
                                                                                                                      %%location_label%%41
                                                                                                                      (req%vstd!atomic.impl&%1.fetch_xor. at@ perm@14 true)
                                                                                                                     )
                                                                                                                     (=>
                                                                                                                      (ens%vstd!atomic.impl&%1.fetch_xor. at@ perm@14 perm@15 true l$13@)
                                                                                                                      (=>
                                                                                                                       (= tmp%28 (= l$13@ true))
                                                                                                                       (and
                                                                                                                        (=>
                                                                                                                         %%location_label%%42
                                                                                                                         tmp%28
                                                                                                                        )
                                                                                                                        (=>
                                                                                                                         tmp%28
                                                                                                                         (=>
                                                                                                                          (= tmp%29 (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
                                                                                                                              (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                                                                                                                                 perm@15
                                                                                                                             ))))
                                                                                                                            ) false
                                                                                                                          ))
                                                                                                                          (and
                                                                                                                           (=>
                                                                                                                            %%location_label%%43
                                                                                                                            tmp%29
                                                                                                                           )
                                                                                                                           (=>
                                                                                                                            tmp%29
                                                                                                                            (and
                                                                                                                             (=>
                                                                                                                              %%location_label%%44
                                                                                                                              (req%vstd!atomic.impl&%1.fetch_nand. at@ perm@15 false)
                                                                                                                             )
                                                                                                                             (=>
                                                                                                                              (ens%vstd!atomic.impl&%1.fetch_nand. at@ perm@15 perm@16 false l$14@)
                                                                                                                              (=>
                                                                                                                               (= tmp%30 (= l$14@ false))
                                                                                                                               (and
                                                                                                                                (=>
                                                                                                                                 %%location_label%%45
                                                                                                                                 tmp%30
                                                                                                                                )
                                                                                                                                (=>
                                                                                                                                 tmp%30
                                                                                                                                 (=>
                                                                                                                                  (= tmp%31 (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
                                                                                                                                      (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                                                                                                                                         perm@16
                                                                                                                                     ))))
                                                                                                                                    ) true
                                                                                                                                  ))
                                                                                                                                  (and
                                                                                                                                   (=>
                                                                                                                                    %%location_label%%46
                                                                                                                                    tmp%31
                                                                                                                                   )
                                                                                                                                   (=>
                                                                                                                                    tmp%31
                                                                                                                                    (and
                                                                                                                                     (=>
                                                                                                                                      %%location_label%%47
                                                                                                                                      (req%vstd!atomic.impl&%1.fetch_nand. at@ perm@16 false)
                                                                                                                                     )
                                                                                                                                     (=>
                                                                                                                                      (ens%vstd!atomic.impl&%1.fetch_nand. at@ perm@16 perm@17 false l$15@)
                                                                                                                                      (=>
                                                                                                                                       (= tmp%32 (= l$15@ true))
                                                                                                                                       (and
                                                                                                                                        (=>
                                                                                                                                         %%location_label%%48
                                                                                                                                         tmp%32
                                                                                                                                        )
                                                                                                                                        (=>
                                                                                                                                         tmp%32
                                                                                                                                         (=>
                                                                                                                                          (= tmp%33 (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
                                                                                                                                              (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                                                                                                                                                 perm@17
                                                                                                                                             ))))
                                                                                                                                            ) true
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
                                                                                                                                              (req%vstd!atomic.impl&%1.fetch_nand. at@ perm@17 true)
                                                                                                                                             )
                                                                                                                                             (=>
                                                                                                                                              (ens%vstd!atomic.impl&%1.fetch_nand. at@ perm@17 perm@18 true l$16@)
                                                                                                                                              (=>
                                                                                                                                               (= tmp%34 (= l$16@ true))
                                                                                                                                               (and
                                                                                                                                                (=>
                                                                                                                                                 %%location_label%%51
                                                                                                                                                 tmp%34
                                                                                                                                                )
                                                                                                                                                (=>
                                                                                                                                                 tmp%34
                                                                                                                                                 (=>
                                                                                                                                                  (= tmp%35 (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
                                                                                                                                                      (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                                                                                                                                                         perm@18
                                                                                                                                                     ))))
                                                                                                                                                    ) false
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
                                                                                                                                                      (req%vstd!atomic.impl&%1.fetch_nand. at@ perm@18 true)
                                                                                                                                                     )
                                                                                                                                                     (=>
                                                                                                                                                      (ens%vstd!atomic.impl&%1.fetch_nand. at@ perm@18 perm@19 true l$17@)
                                                                                                                                                      (=>
                                                                                                                                                       (= tmp%36 (= l$17@ false))
                                                                                                                                                       (and
                                                                                                                                                        (=>
                                                                                                                                                         %%location_label%%54
                                                                                                                                                         tmp%36
                                                                                                                                                        )
                                                                                                                                                        (=>
                                                                                                                                                         tmp%36
                                                                                                                                                         (=>
                                                                                                                                                          (= tmp%37 (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
                                                                                                                                                              (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                                                                                                                                                                 perm@19
                                                                                                                                                             ))))
                                                                                                                                                            ) true
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
                                                                                                                                                              (req%vstd!atomic.impl&%1.compare_exchange_weak. at@ perm@19 false false)
                                                                                                                                                             )
                                                                                                                                                             (=>
                                                                                                                                                              (ens%vstd!atomic.impl&%1.compare_exchange_weak. at@ perm@19 perm@20 false false l$18@)
                                                                                                                                                              (=>
                                                                                                                                                               (= tmp%38 (= l$18@ (core!result.Result./Err (B true))))
                                                                                                                                                               (and
                                                                                                                                                                (=>
                                                                                                                                                                 %%location_label%%57
                                                                                                                                                                 tmp%38
                                                                                                                                                                )
                                                                                                                                                                (=>
                                                                                                                                                                 tmp%38
                                                                                                                                                                 (=>
                                                                                                                                                                  (= tmp%39 (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
                                                                                                                                                                      (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                                                                                                                                                                         perm@20
                                                                                                                                                                     ))))
                                                                                                                                                                    ) true
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
                                                                                                                                                                      (req%vstd!atomic.impl&%1.compare_exchange_weak. at@ perm@20 true false)
                                                                                                                                                                     )
                                                                                                                                                                     (=>
                                                                                                                                                                      (ens%vstd!atomic.impl&%1.compare_exchange_weak. at@ perm@20 perm@21 true false l$19@)
                                                                                                                                                                      (=>
                                                                                                                                                                       (= tmp%40 (or
                                                                                                                                                                         (and
                                                                                                                                                                          (= l$19@ (core!result.Result./Err (B true)))
                                                                                                                                                                          (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
                                                                                                                                                                             (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                                                                                                                                                                                perm@21
                                                                                                                                                                            ))))
                                                                                                                                                                           ) true
                                                                                                                                                                         ))
                                                                                                                                                                         (and
                                                                                                                                                                          (= l$19@ (core!result.Result./Ok (B true)))
                                                                                                                                                                          (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
                                                                                                                                                                             (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                                                                                                                                                                                perm@21
                                                                                                                                                                            ))))
                                                                                                                                                                           ) false
                                                                                                                                                                       ))))
                                                                                                                                                                       (and
                                                                                                                                                                        (=>
                                                                                                                                                                         %%location_label%%60
                                                                                                                                                                         tmp%40
                                                                                                                                                                        )
                                                                                                                                                                        (=>
                                                                                                                                                                         tmp%40
                                                                                                                                                                         (and
                                                                                                                                                                          (=>
                                                                                                                                                                           %%location_label%%61
                                                                                                                                                                           (req%vstd!atomic.impl&%1.store. at@ perm@21 false)
                                                                                                                                                                          )
                                                                                                                                                                          (=>
                                                                                                                                                                           (ens%vstd!atomic.impl&%1.store. at@ perm@21 perm@22 false)
                                                                                                                                                                           (=>
                                                                                                                                                                            (= tmp%41 (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
                                                                                                                                                                                (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                                                                                                                                                                                   perm@22
                                                                                                                                                                               ))))
                                                                                                                                                                              ) false
                                                                                                                                                                            ))
                                                                                                                                                                            (and
                                                                                                                                                                             (=>
                                                                                                                                                                              %%location_label%%62
                                                                                                                                                                              tmp%41
                                                                                                                                                                             )
                                                                                                                                                                             (=>
                                                                                                                                                                              tmp%41
                                                                                                                                                                              (and
                                                                                                                                                                               (=>
                                                                                                                                                                                %%location_label%%63
                                                                                                                                                                                (req%vstd!atomic.impl&%1.compare_exchange. at@ perm@22 true false)
                                                                                                                                                                               )
                                                                                                                                                                               (=>
                                                                                                                                                                                (ens%vstd!atomic.impl&%1.compare_exchange. at@ perm@22 perm@23 true false l$20@)
                                                                                                                                                                                (=>
                                                                                                                                                                                 (= tmp%42 (= l$20@ (core!result.Result./Err (B false))))
                                                                                                                                                                                 (and
                                                                                                                                                                                  (=>
                                                                                                                                                                                   %%location_label%%64
                                                                                                                                                                                   tmp%42
                                                                                                                                                                                  )
                                                                                                                                                                                  (=>
                                                                                                                                                                                   tmp%42
                                                                                                                                                                                   (=>
                                                                                                                                                                                    (= tmp%43 (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
                                                                                                                                                                                        (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                                                                                                                                                                                           perm@23
                                                                                                                                                                                       ))))
                                                                                                                                                                                      ) false
                                                                                                                                                                                    ))
                                                                                                                                                                                    (and
                                                                                                                                                                                     (=>
                                                                                                                                                                                      %%location_label%%65
                                                                                                                                                                                      tmp%43
                                                                                                                                                                                     )
                                                                                                                                                                                     (=>
                                                                                                                                                                                      tmp%43
                                                                                                                                                                                      (and
                                                                                                                                                                                       (=>
                                                                                                                                                                                        %%location_label%%66
                                                                                                                                                                                        (req%vstd!atomic.impl&%1.compare_exchange. at@ perm@23 false true)
                                                                                                                                                                                       )
                                                                                                                                                                                       (=>
                                                                                                                                                                                        (ens%vstd!atomic.impl&%1.compare_exchange. at@ perm@23 perm@24 false true l$21@)
                                                                                                                                                                                        (=>
                                                                                                                                                                                         (= tmp%44 (= l$21@ (core!result.Result./Ok (B false))))
                                                                                                                                                                                         (and
                                                                                                                                                                                          (=>
                                                                                                                                                                                           %%location_label%%67
                                                                                                                                                                                           tmp%44
                                                                                                                                                                                          )
                                                                                                                                                                                          (=>
                                                                                                                                                                                           tmp%44
                                                                                                                                                                                           (=>
                                                                                                                                                                                            (= tmp%45 (= (vstd!atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd!atomic.PermissionDataBool.
                                                                                                                                                                                                (Poly%vstd!atomic.PermissionDataBool. (vstd!atomic.impl&%0.view.? (Poly%vstd!atomic.PermissionBool.
                                                                                                                                                                                                   perm@24
                                                                                                                                                                                               ))))
                                                                                                                                                                                              ) true
                                                                                                                                                                                            ))
                                                                                                                                                                                            (and
                                                                                                                                                                                             (=>
                                                                                                                                                                                              %%location_label%%68
                                                                                                                                                                                              tmp%45
                                                                                                                                                                                             )
                                                                                                                                                                                             (=>
                                                                                                                                                                                              tmp%45
                                                                                                                                                                                              (and
                                                                                                                                                                                               (=>
                                                                                                                                                                                                %%location_label%%69
                                                                                                                                                                                                (req%vstd!atomic.impl&%1.into_inner. at@ perm@24)
                                                                                                                                                                                               )
                                                                                                                                                                                               (=>
                                                                                                                                                                                                (ens%vstd!atomic.impl&%1.into_inner. at@ perm@24 l$22@)
                                                                                                                                                                                                (=>
                                                                                                                                                                                                 (= tmp%46 (= l$22@ true))
                                                                                                                                                                                                 (and
                                                                                                                                                                                                  (=>
                                                                                                                                                                                                   %%location_label%%70
                                                                                                                                                                                                   tmp%46
                                                                                                                                                                                                  )
                                                                                                                                                                                                  (=>
                                                                                                                                                                                                   tmp%46
                                                                                                                                                                                                   (=>
                                                                                                                                                                                                    %%location_label%%71
                                                                                                                                                                                                    false
 )))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
 (get-info :reason-unknown)
 (get-model)
 (assert
  (not %%location_label%%71)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Recommends test_crate::test
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/atomic_lib-86af995cc9979138-test_atomic_bool_smoke/test.rs:19:5: 19:14 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%%@ tuple%2.)
 (declare-const at@ vstd!atomic.PAtomicBool.)
 (declare-const verus_tmp_perm@ vstd!atomic.PermissionBool.)
 (declare-const perm@0 vstd!atomic.PermissionBool.)
 (declare-const l@ Bool)
 (declare-const l$1@ Bool)
 (declare-const l$2@ Bool)
 (declare-const l$3@ Bool)
 (declare-const l$4@ Bool)
 (declare-const l$5@ Bool)
 (declare-const l$6@ Bool)
 (declare-const l$7@ Bool)
 (declare-const l$8@ Bool)
 (declare-const l$9@ Bool)
 (declare-const l$10@ Bool)
 (declare-const l$11@ Bool)
 (declare-const l$12@ Bool)
 (declare-const l$13@ Bool)
 (declare-const l$14@ Bool)
 (declare-const l$15@ Bool)
 (declare-const l$16@ Bool)
 (declare-const l$17@ Bool)
 (declare-const l$18@ core!result.Result.)
 (declare-const l$19@ core!result.Result.)
 (declare-const l$20@ core!result.Result.)
 (declare-const l$21@ core!result.Result.)
 (declare-const l$22@ Bool)
 (assert
  fuel_defaults
 )
 (declare-const perm@1 vstd!atomic.PermissionBool.)
 (declare-const perm@2 vstd!atomic.PermissionBool.)
 (declare-const perm@3 vstd!atomic.PermissionBool.)
 (declare-const perm@4 vstd!atomic.PermissionBool.)
 (declare-const perm@5 vstd!atomic.PermissionBool.)
 (declare-const perm@6 vstd!atomic.PermissionBool.)
 (declare-const perm@7 vstd!atomic.PermissionBool.)
 (declare-const perm@8 vstd!atomic.PermissionBool.)
 (declare-const perm@9 vstd!atomic.PermissionBool.)
 (declare-const perm@10 vstd!atomic.PermissionBool.)
 (declare-const perm@11 vstd!atomic.PermissionBool.)
 (declare-const perm@12 vstd!atomic.PermissionBool.)
 (declare-const perm@13 vstd!atomic.PermissionBool.)
 (declare-const perm@14 vstd!atomic.PermissionBool.)
 (declare-const perm@15 vstd!atomic.PermissionBool.)
 (declare-const perm@16 vstd!atomic.PermissionBool.)
 (declare-const perm@17 vstd!atomic.PermissionBool.)
 (declare-const perm@18 vstd!atomic.PermissionBool.)
 (declare-const perm@19 vstd!atomic.PermissionBool.)
 (declare-const perm@20 vstd!atomic.PermissionBool.)
 (declare-const perm@21 vstd!atomic.PermissionBool.)
 (declare-const perm@22 vstd!atomic.PermissionBool.)
 (declare-const perm@23 vstd!atomic.PermissionBool.)
 (declare-const perm@24 vstd!atomic.PermissionBool.)
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
