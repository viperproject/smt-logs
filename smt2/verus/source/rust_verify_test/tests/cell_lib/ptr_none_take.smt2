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
(declare-const fuel%vstd!std_specs.option.impl&%0.is_Some. FuelId)
(declare-const fuel%vstd!std_specs.option.impl&%0.get_Some_0. FuelId)
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
 (distinct fuel%vstd!std_specs.option.impl&%0.is_Some. fuel%vstd!std_specs.option.impl&%0.get_Some_0.
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
(declare-sort vstd!ptr.Dealloc<u32.>. 0)
(declare-sort vstd!ptr.PointsTo<u32.>. 0)
(declare-datatypes ((core!option.Option. 0) (vstd!ptr.PPtr. 0) (vstd!ptr.PointsToData.
   0
  ) (vstd!ptr.DeallocData. 0) (tuple%0. 0) (tuple%3. 0)
 ) (((core!option.Option./None) (core!option.Option./Some (core!option.Option./Some/?0
     Poly
   ))
  ) ((vstd!ptr.PPtr./PPtr (vstd!ptr.PPtr./PPtr/?uptr Poly))) ((vstd!ptr.PointsToData./PointsToData
    (vstd!ptr.PointsToData./PointsToData/?pptr Int) (vstd!ptr.PointsToData./PointsToData/?value
     core!option.Option.
   ))
  ) ((vstd!ptr.DeallocData./DeallocData (vstd!ptr.DeallocData./DeallocData/?pptr Int)))
  ((tuple%0./tuple%0)) ((tuple%3./tuple%3 (tuple%3./tuple%3/?0 Poly) (tuple%3./tuple%3/?1
     Poly
    ) (tuple%3./tuple%3/?2 Poly)
))))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun vstd!ptr.PPtr./PPtr/uptr (vstd!ptr.PPtr.) Poly)
(declare-fun vstd!ptr.PointsToData./PointsToData/pptr (vstd!ptr.PointsToData.) Int)
(declare-fun vstd!ptr.PointsToData./PointsToData/value (vstd!ptr.PointsToData.) core!option.Option.)
(declare-fun vstd!ptr.DeallocData./DeallocData/pptr (vstd!ptr.DeallocData.) Int)
(declare-fun tuple%3./tuple%3/0 (tuple%3.) Poly)
(declare-fun tuple%3./tuple%3/1 (tuple%3.) Poly)
(declare-fun tuple%3./tuple%3/2 (tuple%3.) Poly)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-fun TYPE%vstd!ptr.PPtr. (Dcr Type) Type)
(declare-fun TYPE%vstd!ptr.PointsTo. (Dcr Type) Type)
(declare-fun TYPE%vstd!ptr.PointsToData. (Dcr Type) Type)
(declare-fun TYPE%vstd!ptr.Dealloc. (Dcr Type) Type)
(declare-const TYPE%vstd!ptr.DeallocData. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%3. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun Poly%vstd!ptr.Dealloc<u32.>. (vstd!ptr.Dealloc<u32.>.) Poly)
(declare-fun %Poly%vstd!ptr.Dealloc<u32.>. (Poly) vstd!ptr.Dealloc<u32.>.)
(declare-fun Poly%vstd!ptr.PointsTo<u32.>. (vstd!ptr.PointsTo<u32.>.) Poly)
(declare-fun %Poly%vstd!ptr.PointsTo<u32.>. (Poly) vstd!ptr.PointsTo<u32.>.)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
(declare-fun Poly%vstd!ptr.PPtr. (vstd!ptr.PPtr.) Poly)
(declare-fun %Poly%vstd!ptr.PPtr. (Poly) vstd!ptr.PPtr.)
(declare-fun Poly%vstd!ptr.PointsToData. (vstd!ptr.PointsToData.) Poly)
(declare-fun %Poly%vstd!ptr.PointsToData. (Poly) vstd!ptr.PointsToData.)
(declare-fun Poly%vstd!ptr.DeallocData. (vstd!ptr.DeallocData.) Poly)
(declare-fun %Poly%vstd!ptr.DeallocData. (Poly) vstd!ptr.DeallocData.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%3. (tuple%3.) Poly)
(declare-fun %Poly%tuple%3. (Poly) tuple%3.)
(assert
 (forall ((x vstd!ptr.Dealloc<u32.>.)) (!
   (= x (%Poly%vstd!ptr.Dealloc<u32.>. (Poly%vstd!ptr.Dealloc<u32.>. x)))
   :pattern ((Poly%vstd!ptr.Dealloc<u32.>. x))
   :qid internal_vstd__ptr__Dealloc<u32.>_box_axiom_definition
   :skolemid skolem_internal_vstd__ptr__Dealloc<u32.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!ptr.Dealloc. $ (UINT 32)))
    (= x (Poly%vstd!ptr.Dealloc<u32.>. (%Poly%vstd!ptr.Dealloc<u32.>. x)))
   )
   :pattern ((has_type x (TYPE%vstd!ptr.Dealloc. $ (UINT 32))))
   :qid internal_vstd__ptr__Dealloc<u32.>_unbox_axiom_definition
   :skolemid skolem_internal_vstd__ptr__Dealloc<u32.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!ptr.Dealloc<u32.>.)) (!
   (has_type (Poly%vstd!ptr.Dealloc<u32.>. x) (TYPE%vstd!ptr.Dealloc. $ (UINT 32)))
   :pattern ((has_type (Poly%vstd!ptr.Dealloc<u32.>. x) (TYPE%vstd!ptr.Dealloc. $ (UINT
       32
   ))))
   :qid internal_vstd__ptr__Dealloc<u32.>_has_type_always_definition
   :skolemid skolem_internal_vstd__ptr__Dealloc<u32.>_has_type_always_definition
)))
(assert
 (forall ((x vstd!ptr.PointsTo<u32.>.)) (!
   (= x (%Poly%vstd!ptr.PointsTo<u32.>. (Poly%vstd!ptr.PointsTo<u32.>. x)))
   :pattern ((Poly%vstd!ptr.PointsTo<u32.>. x))
   :qid internal_vstd__ptr__PointsTo<u32.>_box_axiom_definition
   :skolemid skolem_internal_vstd__ptr__PointsTo<u32.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!ptr.PointsTo. $ (UINT 32)))
    (= x (Poly%vstd!ptr.PointsTo<u32.>. (%Poly%vstd!ptr.PointsTo<u32.>. x)))
   )
   :pattern ((has_type x (TYPE%vstd!ptr.PointsTo. $ (UINT 32))))
   :qid internal_vstd__ptr__PointsTo<u32.>_unbox_axiom_definition
   :skolemid skolem_internal_vstd__ptr__PointsTo<u32.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!ptr.PointsTo<u32.>.)) (!
   (has_type (Poly%vstd!ptr.PointsTo<u32.>. x) (TYPE%vstd!ptr.PointsTo. $ (UINT 32)))
   :pattern ((has_type (Poly%vstd!ptr.PointsTo<u32.>. x) (TYPE%vstd!ptr.PointsTo. $ (UINT
       32
   ))))
   :qid internal_vstd__ptr__PointsTo<u32.>_has_type_always_definition
   :skolemid skolem_internal_vstd__ptr__PointsTo<u32.>_has_type_always_definition
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
 (forall ((x vstd!ptr.PPtr.)) (!
   (= x (%Poly%vstd!ptr.PPtr. (Poly%vstd!ptr.PPtr. x)))
   :pattern ((Poly%vstd!ptr.PPtr. x))
   :qid internal_vstd__ptr__PPtr_box_axiom_definition
   :skolemid skolem_internal_vstd__ptr__PPtr_box_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!ptr.PPtr. V&. V&))
    (= x (Poly%vstd!ptr.PPtr. (%Poly%vstd!ptr.PPtr. x)))
   )
   :pattern ((has_type x (TYPE%vstd!ptr.PPtr. V&. V&)))
   :qid internal_vstd__ptr__PPtr_unbox_axiom_definition
   :skolemid skolem_internal_vstd__ptr__PPtr_unbox_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (_uptr! Poly)) (!
   (=>
    (has_type _uptr! (PTR V&. V&))
    (has_type (Poly%vstd!ptr.PPtr. (vstd!ptr.PPtr./PPtr _uptr!)) (TYPE%vstd!ptr.PPtr. V&.
      V&
   )))
   :pattern ((has_type (Poly%vstd!ptr.PPtr. (vstd!ptr.PPtr./PPtr _uptr!)) (TYPE%vstd!ptr.PPtr.
      V&. V&
   )))
   :qid internal_vstd!ptr.PPtr./PPtr_constructor_definition
   :skolemid skolem_internal_vstd!ptr.PPtr./PPtr_constructor_definition
)))
(assert
 (forall ((x vstd!ptr.PPtr.)) (!
   (= (vstd!ptr.PPtr./PPtr/uptr x) (vstd!ptr.PPtr./PPtr/?uptr x))
   :pattern ((vstd!ptr.PPtr./PPtr/uptr x))
   :qid internal_vstd!ptr.PPtr./PPtr/uptr_accessor_definition
   :skolemid skolem_internal_vstd!ptr.PPtr./PPtr/uptr_accessor_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!ptr.PPtr. V&. V&))
    (has_type (vstd!ptr.PPtr./PPtr/uptr (%Poly%vstd!ptr.PPtr. x)) (PTR V&. V&))
   )
   :pattern ((vstd!ptr.PPtr./PPtr/uptr (%Poly%vstd!ptr.PPtr. x)) (has_type x (TYPE%vstd!ptr.PPtr.
      V&. V&
   )))
   :qid internal_vstd!ptr.PPtr./PPtr/uptr_invariant_definition
   :skolemid skolem_internal_vstd!ptr.PPtr./PPtr/uptr_invariant_definition
)))
(assert
 (forall ((x vstd!ptr.PPtr.)) (!
   (=>
    (is-vstd!ptr.PPtr./PPtr x)
    (height_lt (height (vstd!ptr.PPtr./PPtr/uptr x)) (height (Poly%vstd!ptr.PPtr. x)))
   )
   :pattern ((height (vstd!ptr.PPtr./PPtr/uptr x)))
   :qid prelude_datatype_height_vstd!ptr.PPtr./PPtr/uptr
   :skolemid skolem_prelude_datatype_height_vstd!ptr.PPtr./PPtr/uptr
)))
(assert
 (forall ((x vstd!ptr.PointsToData.)) (!
   (= x (%Poly%vstd!ptr.PointsToData. (Poly%vstd!ptr.PointsToData. x)))
   :pattern ((Poly%vstd!ptr.PointsToData. x))
   :qid internal_vstd__ptr__PointsToData_box_axiom_definition
   :skolemid skolem_internal_vstd__ptr__PointsToData_box_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!ptr.PointsToData. V&. V&))
    (= x (Poly%vstd!ptr.PointsToData. (%Poly%vstd!ptr.PointsToData. x)))
   )
   :pattern ((has_type x (TYPE%vstd!ptr.PointsToData. V&. V&)))
   :qid internal_vstd__ptr__PointsToData_unbox_axiom_definition
   :skolemid skolem_internal_vstd__ptr__PointsToData_unbox_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (_pptr! Int) (_value! core!option.Option.)) (!
   (=>
    (has_type (Poly%core!option.Option. _value!) (TYPE%core!option.Option. V&. V&))
    (has_type (Poly%vstd!ptr.PointsToData. (vstd!ptr.PointsToData./PointsToData _pptr! _value!))
     (TYPE%vstd!ptr.PointsToData. V&. V&)
   ))
   :pattern ((has_type (Poly%vstd!ptr.PointsToData. (vstd!ptr.PointsToData./PointsToData
       _pptr! _value!
      )
     ) (TYPE%vstd!ptr.PointsToData. V&. V&)
   ))
   :qid internal_vstd!ptr.PointsToData./PointsToData_constructor_definition
   :skolemid skolem_internal_vstd!ptr.PointsToData./PointsToData_constructor_definition
)))
(assert
 (forall ((x vstd!ptr.PointsToData.)) (!
   (= (vstd!ptr.PointsToData./PointsToData/pptr x) (vstd!ptr.PointsToData./PointsToData/?pptr
     x
   ))
   :pattern ((vstd!ptr.PointsToData./PointsToData/pptr x))
   :qid internal_vstd!ptr.PointsToData./PointsToData/pptr_accessor_definition
   :skolemid skolem_internal_vstd!ptr.PointsToData./PointsToData/pptr_accessor_definition
)))
(assert
 (forall ((x vstd!ptr.PointsToData.)) (!
   (= (vstd!ptr.PointsToData./PointsToData/value x) (vstd!ptr.PointsToData./PointsToData/?value
     x
   ))
   :pattern ((vstd!ptr.PointsToData./PointsToData/value x))
   :qid internal_vstd!ptr.PointsToData./PointsToData/value_accessor_definition
   :skolemid skolem_internal_vstd!ptr.PointsToData./PointsToData/value_accessor_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd!ptr.PointsToData. V&. V&))
    (has_type (Poly%core!option.Option. (vstd!ptr.PointsToData./PointsToData/value (%Poly%vstd!ptr.PointsToData.
        x
      ))
     ) (TYPE%core!option.Option. V&. V&)
   ))
   :pattern ((vstd!ptr.PointsToData./PointsToData/value (%Poly%vstd!ptr.PointsToData. x))
    (has_type x (TYPE%vstd!ptr.PointsToData. V&. V&))
   )
   :qid internal_vstd!ptr.PointsToData./PointsToData/value_invariant_definition
   :skolemid skolem_internal_vstd!ptr.PointsToData./PointsToData/value_invariant_definition
)))
(assert
 (forall ((x vstd!ptr.PointsToData.)) (!
   (=>
    (is-vstd!ptr.PointsToData./PointsToData x)
    (height_lt (height (Poly%core!option.Option. (vstd!ptr.PointsToData./PointsToData/value
        x
      ))
     ) (height (Poly%vstd!ptr.PointsToData. x))
   ))
   :pattern ((height (Poly%core!option.Option. (vstd!ptr.PointsToData./PointsToData/value
       x
   ))))
   :qid prelude_datatype_height_vstd!ptr.PointsToData./PointsToData/value
   :skolemid skolem_prelude_datatype_height_vstd!ptr.PointsToData./PointsToData/value
)))
(assert
 (forall ((x vstd!ptr.DeallocData.)) (!
   (= x (%Poly%vstd!ptr.DeallocData. (Poly%vstd!ptr.DeallocData. x)))
   :pattern ((Poly%vstd!ptr.DeallocData. x))
   :qid internal_vstd__ptr__DeallocData_box_axiom_definition
   :skolemid skolem_internal_vstd__ptr__DeallocData_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd!ptr.DeallocData.)
    (= x (Poly%vstd!ptr.DeallocData. (%Poly%vstd!ptr.DeallocData. x)))
   )
   :pattern ((has_type x TYPE%vstd!ptr.DeallocData.))
   :qid internal_vstd__ptr__DeallocData_unbox_axiom_definition
   :skolemid skolem_internal_vstd__ptr__DeallocData_unbox_axiom_definition
)))
(assert
 (forall ((x vstd!ptr.DeallocData.)) (!
   (= (vstd!ptr.DeallocData./DeallocData/pptr x) (vstd!ptr.DeallocData./DeallocData/?pptr
     x
   ))
   :pattern ((vstd!ptr.DeallocData./DeallocData/pptr x))
   :qid internal_vstd!ptr.DeallocData./DeallocData/pptr_accessor_definition
   :skolemid skolem_internal_vstd!ptr.DeallocData./DeallocData/pptr_accessor_definition
)))
(assert
 (forall ((x vstd!ptr.DeallocData.)) (!
   (has_type (Poly%vstd!ptr.DeallocData. x) TYPE%vstd!ptr.DeallocData.)
   :pattern ((has_type (Poly%vstd!ptr.DeallocData. x) TYPE%vstd!ptr.DeallocData.))
   :qid internal_vstd__ptr__DeallocData_has_type_always_definition
   :skolemid skolem_internal_vstd__ptr__DeallocData_has_type_always_definition
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
(declare-fun tr_bound%vstd!std_specs.option.OptionAdditionalFns. (Dcr Type Dcr Type)
 Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type)) (!
   true
   :pattern ((tr_bound%vstd!std_specs.option.OptionAdditionalFns. Self%&. Self%& T&. T&))
   :qid internal_vstd__std_specs__option__OptionAdditionalFns_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__std_specs__option__OptionAdditionalFns_trait_type_bounds_definition
)))

;; Function-Decl vstd::std_specs::option::OptionAdditionalFns::is_Some
(declare-fun vstd!std_specs.option.OptionAdditionalFns.is_Some.? (Dcr Type Dcr Type
  Poly
 ) Poly
)
(declare-fun vstd!std_specs.option.OptionAdditionalFns.is_Some%default%.? (Dcr Type
  Dcr Type Poly
 ) Poly
)

;; Function-Decl vstd::std_specs::option::OptionAdditionalFns::get_Some_0
(declare-fun vstd!std_specs.option.OptionAdditionalFns.get_Some_0.? (Dcr Type Dcr Type
  Poly
 ) Poly
)
(declare-fun vstd!std_specs.option.OptionAdditionalFns.get_Some_0%default%.? (Dcr Type
  Dcr Type Poly
 ) Poly
)

;; Function-Decl vstd::ptr::impl&%2::view
(declare-fun vstd!ptr.impl&%2.view.? (Dcr Type Poly) vstd!ptr.PointsToData.)

;; Function-Decl vstd::ptr::impl&%5::view
(declare-fun vstd!ptr.impl&%5.view.? (Dcr Type Poly) vstd!ptr.DeallocData.)

;; Function-Decl vstd::ptr::impl&%10::id
(declare-fun vstd!ptr.impl&%10.id.? (Dcr Type Poly) Int)

;; Function-Axioms vstd::std_specs::option::OptionAdditionalFns::is_Some
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd!std_specs.option.OptionAdditionalFns.is_Some.? Self%&. Self%& T&. T&
      self!
     ) BOOL
   ))
   :pattern ((vstd!std_specs.option.OptionAdditionalFns.is_Some.? Self%&. Self%& T&. T&
     self!
   ))
   :qid internal_vstd!std_specs.option.OptionAdditionalFns.is_Some.?_pre_post_definition
   :skolemid skolem_internal_vstd!std_specs.option.OptionAdditionalFns.is_Some.?_pre_post_definition
)))

;; Function-Axioms vstd::std_specs::option::OptionAdditionalFns::get_Some_0
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd!std_specs.option.OptionAdditionalFns.get_Some_0.? Self%&. Self%& T&.
      T& self!
     ) T&
   ))
   :pattern ((vstd!std_specs.option.OptionAdditionalFns.get_Some_0.? Self%&. Self%& T&.
     T& self!
   ))
   :qid internal_vstd!std_specs.option.OptionAdditionalFns.get_Some_0.?_pre_post_definition
   :skolemid skolem_internal_vstd!std_specs.option.OptionAdditionalFns.get_Some_0.?_pre_post_definition
)))

;; Function-Axioms vstd::ptr::impl&%2::view
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd!ptr.PointsTo. V&. V&))
    (has_type (Poly%vstd!ptr.PointsToData. (vstd!ptr.impl&%2.view.? V&. V& self!)) (TYPE%vstd!ptr.PointsToData.
      V&. V&
   )))
   :pattern ((vstd!ptr.impl&%2.view.? V&. V& self!))
   :qid internal_vstd!ptr.impl&__2.view.?_pre_post_definition
   :skolemid skolem_internal_vstd!ptr.impl&__2.view.?_pre_post_definition
)))

;; Function-Specs vstd::ptr::impl&%10::empty
(declare-fun ens%vstd!ptr.impl&%10.empty. (Dcr Type tuple%3.) Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (pt! tuple%3.)) (!
   (= (ens%vstd!ptr.impl&%10.empty. V&. V& pt!) (and
     (has_type (Poly%tuple%3. pt!) (TYPE%tuple%3. $ (TYPE%vstd!ptr.PPtr. V&. V&) (TRACKED
        $
       ) (TYPE%vstd!ptr.PointsTo. V&. V&) (TRACKED $) (TYPE%vstd!ptr.Dealloc. V&. V&)
     ))
     (= (vstd!ptr.impl&%2.view.? V&. V& (tuple%3./tuple%3/1 (%Poly%tuple%3. (Poly%tuple%3.
          pt!
       )))
      ) (vstd!ptr.PointsToData./PointsToData (%I (I (vstd!ptr.impl&%10.id.? V&. V& (tuple%3./tuple%3/0
           (%Poly%tuple%3. (Poly%tuple%3. pt!))
        )))
       ) (%Poly%core!option.Option. (Poly%core!option.Option. core!option.Option./None))
     ))
     (= (vstd!ptr.impl&%5.view.? V&. V& (tuple%3./tuple%3/2 (%Poly%tuple%3. (Poly%tuple%3.
          pt!
       )))
      ) (vstd!ptr.DeallocData./DeallocData (%I (I (vstd!ptr.impl&%10.id.? V&. V& (tuple%3./tuple%3/0
           (%Poly%tuple%3. (Poly%tuple%3. pt!))
   ))))))))
   :pattern ((ens%vstd!ptr.impl&%10.empty. V&. V& pt!))
   :qid internal_ens__vstd!ptr.impl&__10.empty._definition
   :skolemid skolem_internal_ens__vstd!ptr.impl&__10.empty._definition
)))

;; Function-Axioms vstd::std_specs::option::impl&%0::is_Some
(assert
 (fuel_bool_default fuel%vstd!std_specs.option.impl&%0.is_Some.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.option.impl&%0.is_Some.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd!std_specs.option.OptionAdditionalFns.is_Some.? $ (TYPE%core!option.Option.
       T&. T&
      ) T&. T& self!
     ) (B (is-core!option.Option./Some (%Poly%core!option.Option. self!)))
    )
    :pattern ((vstd!std_specs.option.OptionAdditionalFns.is_Some.? $ (TYPE%core!option.Option.
       T&. T&
      ) T&. T& self!
    ))
    :qid internal_vstd!std_specs.option.OptionAdditionalFns.is_Some.?_definition
    :skolemid skolem_internal_vstd!std_specs.option.OptionAdditionalFns.is_Some.?_definition
))))

;; Function-Axioms vstd::std_specs::option::impl&%0::get_Some_0
(assert
 (fuel_bool_default fuel%vstd!std_specs.option.impl&%0.get_Some_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.option.impl&%0.get_Some_0.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd!std_specs.option.OptionAdditionalFns.get_Some_0.? $ (TYPE%core!option.Option.
       T&. T&
      ) T&. T& self!
     ) (core!option.Option./Some/0 (%Poly%core!option.Option. self!))
    )
    :pattern ((vstd!std_specs.option.OptionAdditionalFns.get_Some_0.? $ (TYPE%core!option.Option.
       T&. T&
      ) T&. T& self!
    ))
    :qid internal_vstd!std_specs.option.OptionAdditionalFns.get_Some_0.?_definition
    :skolemid skolem_internal_vstd!std_specs.option.OptionAdditionalFns.get_Some_0.?_definition
))))

;; Function-Specs vstd::ptr::impl&%10::take
(declare-fun req%vstd!ptr.impl&%10.take. (Dcr Type vstd!ptr.PPtr. Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (self! vstd!ptr.PPtr.) (pre%perm! Poly)) (!
   (= (req%vstd!ptr.impl&%10.take. V&. V& self! pre%perm!) (and
     (=>
      %%global_location_label%%0
      (= (vstd!ptr.impl&%10.id.? V&. V& (Poly%vstd!ptr.PPtr. self!)) (vstd!ptr.PointsToData./PointsToData/pptr
        (%Poly%vstd!ptr.PointsToData. (Poly%vstd!ptr.PointsToData. (vstd!ptr.impl&%2.view.?
           V&. V& pre%perm!
     ))))))
     (=>
      %%global_location_label%%1
      (is-core!option.Option./Some (vstd!ptr.PointsToData./PointsToData/value (%Poly%vstd!ptr.PointsToData.
         (Poly%vstd!ptr.PointsToData. (vstd!ptr.impl&%2.view.? V&. V& pre%perm!))
   ))))))
   :pattern ((req%vstd!ptr.impl&%10.take. V&. V& self! pre%perm!))
   :qid internal_req__vstd!ptr.impl&__10.take._definition
   :skolemid skolem_internal_req__vstd!ptr.impl&__10.take._definition
)))
(declare-fun ens%vstd!ptr.impl&%10.take. (Dcr Type vstd!ptr.PPtr. Poly Poly Poly)
 Bool
)
(assert
 (forall ((V&. Dcr) (V& Type) (self! vstd!ptr.PPtr.) (pre%perm! Poly) (perm! Poly) (
    v! Poly
   )
  ) (!
   (= (ens%vstd!ptr.impl&%10.take. V&. V& self! pre%perm! perm! v!) (and
     (has_type v! V&)
     (has_type perm! (TYPE%vstd!ptr.PointsTo. V&. V&))
     (= (vstd!ptr.PointsToData./PointsToData/pptr (%Poly%vstd!ptr.PointsToData. (Poly%vstd!ptr.PointsToData.
         (vstd!ptr.impl&%2.view.? V&. V& perm!)
       ))
      ) (vstd!ptr.PointsToData./PointsToData/pptr (%Poly%vstd!ptr.PointsToData. (Poly%vstd!ptr.PointsToData.
         (vstd!ptr.impl&%2.view.? V&. V& pre%perm!)
     ))))
     (= (vstd!ptr.PointsToData./PointsToData/value (%Poly%vstd!ptr.PointsToData. (Poly%vstd!ptr.PointsToData.
         (vstd!ptr.impl&%2.view.? V&. V& perm!)
       ))
      ) core!option.Option./None
     )
     (= v! (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
         (vstd!ptr.PointsToData./PointsToData/value (%Poly%vstd!ptr.PointsToData. (Poly%vstd!ptr.PointsToData.
            (vstd!ptr.impl&%2.view.? V&. V& pre%perm!)
   )))))))))
   :pattern ((ens%vstd!ptr.impl&%10.take. V&. V& self! pre%perm! perm! v!))
   :qid internal_ens__vstd!ptr.impl&__10.take._definition
   :skolemid skolem_internal_ens__vstd!ptr.impl&__10.take._definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%vstd!std_specs.option.OptionAdditionalFns. $ (TYPE%core!option.Option. T&.
     T&
    ) T&. T&
   )
   :pattern ((tr_bound%vstd!std_specs.option.OptionAdditionalFns. $ (TYPE%core!option.Option.
      T&. T&
     ) T&. T&
   ))
   :qid internal_vstd__std_specs__option__impl&__0_trait_impl_definition
   :skolemid skolem_internal_vstd__std_specs__option__impl&__0_trait_impl_definition
)))

;; Function-Def test_crate::f
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/cell_lib-70eb3bfab7b8eeb3-ptr_none_take/test.rs:21:1: 21:11 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Poly)
 (declare-const tmp%%@ tuple%3.)
 (declare-const ptr1@ vstd!ptr.PPtr.)
 (declare-const verus_tmp_token1@ vstd!ptr.PointsTo<u32.>.)
 (declare-const verus_tmp_dealloc@ vstd!ptr.Dealloc<u32.>.)
 (declare-const token1@0 vstd!ptr.PointsTo<u32.>.)
 (declare-const dealloc@0 vstd!ptr.Dealloc<u32.>.)
 (declare-const x@ Int)
 (assert
  fuel_defaults
 )
 (declare-const token1@1 vstd!ptr.PointsTo<u32.>.)
 (declare-const dealloc@1 vstd!ptr.Dealloc<u32.>.)
 (declare-const token1@2 vstd!ptr.PointsTo<u32.>.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (ens%vstd!ptr.impl&%10.empty. $ (UINT 32) tmp%%@)
    (=>
     (= ptr1@ (%Poly%vstd!ptr.PPtr. (tuple%3./tuple%3/0 (%Poly%tuple%3. (Poly%tuple%3. tmp%%@)))))
     (=>
      (= verus_tmp_token1@ (%Poly%vstd!ptr.PointsTo<u32.>. (tuple%3./tuple%3/1 (%Poly%tuple%3.
          (Poly%tuple%3. tmp%%@)
      ))))
      (=>
       (= verus_tmp_dealloc@ (%Poly%vstd!ptr.Dealloc<u32.>. (tuple%3./tuple%3/2 (%Poly%tuple%3.
           (Poly%tuple%3. tmp%%@)
       ))))
       (=>
        (= token1@1 verus_tmp_token1@)
        (=>
         (= dealloc@1 verus_tmp_dealloc@)
         (=>
          %%location_label%%0
          (req%vstd!ptr.impl&%10.take. $ (UINT 32) ptr1@ (Poly%vstd!ptr.PointsTo<u32.>. token1@1))
 )))))))))
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

;; Function-Recommends test_crate::f
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/cell_lib-70eb3bfab7b8eeb3-ptr_none_take/test.rs:21:1: 21:11 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Poly)
 (declare-const tmp%%@ tuple%3.)
 (declare-const ptr1@ vstd!ptr.PPtr.)
 (declare-const verus_tmp_token1@ vstd!ptr.PointsTo<u32.>.)
 (declare-const verus_tmp_dealloc@ vstd!ptr.Dealloc<u32.>.)
 (declare-const token1@0 vstd!ptr.PointsTo<u32.>.)
 (declare-const dealloc@0 vstd!ptr.Dealloc<u32.>.)
 (declare-const x@ Int)
 (assert
  fuel_defaults
 )
 (declare-const token1@1 vstd!ptr.PointsTo<u32.>.)
 (declare-const dealloc@1 vstd!ptr.Dealloc<u32.>.)
 (declare-const token1@2 vstd!ptr.PointsTo<u32.>.)
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
