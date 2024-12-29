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
(declare-const fuel%vstd!std_specs.option.is_some. FuelId)
(declare-const fuel%vstd!std_specs.option.is_none. FuelId)
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
 (distinct fuel%vstd!std_specs.option.is_some. fuel%vstd!std_specs.option.is_none.
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
(declare-sort core!convert.Infallible. 0)
(declare-datatypes ((core!ops.control_flow.ControlFlow. 0) (core!option.Option. 0)
  (tuple%0. 0)
 ) (((core!ops.control_flow.ControlFlow./Continue (core!ops.control_flow.ControlFlow./Continue/?0
     Poly
    )
   ) (core!ops.control_flow.ControlFlow./Break (core!ops.control_flow.ControlFlow./Break/?0
     Poly
   ))
  ) ((core!option.Option./None) (core!option.Option./Some (core!option.Option./Some/?0
     Poly
   ))
  ) ((tuple%0./tuple%0))
))
(declare-fun core!ops.control_flow.ControlFlow./Continue/0 (core!ops.control_flow.ControlFlow.)
 Poly
)
(declare-fun core!ops.control_flow.ControlFlow./Break/0 (core!ops.control_flow.ControlFlow.)
 Poly
)
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun TYPE%core!ops.control_flow.ControlFlow. (Dcr Type Dcr Type) Type)
(declare-const TYPE%core!convert.Infallible. Type)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%core!convert.Infallible. (core!convert.Infallible.) Poly)
(declare-fun %Poly%core!convert.Infallible. (Poly) core!convert.Infallible.)
(declare-fun Poly%core!ops.control_flow.ControlFlow. (core!ops.control_flow.ControlFlow.)
 Poly
)
(declare-fun %Poly%core!ops.control_flow.ControlFlow. (Poly) core!ops.control_flow.ControlFlow.)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(assert
 (forall ((x core!convert.Infallible.)) (!
   (= x (%Poly%core!convert.Infallible. (Poly%core!convert.Infallible. x)))
   :pattern ((Poly%core!convert.Infallible. x))
   :qid internal_core__convert__Infallible_box_axiom_definition
   :skolemid skolem_internal_core__convert__Infallible_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%core!convert.Infallible.)
    (= x (Poly%core!convert.Infallible. (%Poly%core!convert.Infallible. x)))
   )
   :pattern ((has_type x TYPE%core!convert.Infallible.))
   :qid internal_core__convert__Infallible_unbox_axiom_definition
   :skolemid skolem_internal_core__convert__Infallible_unbox_axiom_definition
)))
(assert
 (forall ((x core!convert.Infallible.)) (!
   (has_type (Poly%core!convert.Infallible. x) TYPE%core!convert.Infallible.)
   :pattern ((has_type (Poly%core!convert.Infallible. x) TYPE%core!convert.Infallible.))
   :qid internal_core__convert__Infallible_has_type_always_definition
   :skolemid skolem_internal_core__convert__Infallible_has_type_always_definition
)))
(assert
 (forall ((x core!ops.control_flow.ControlFlow.)) (!
   (= x (%Poly%core!ops.control_flow.ControlFlow. (Poly%core!ops.control_flow.ControlFlow.
      x
   )))
   :pattern ((Poly%core!ops.control_flow.ControlFlow. x))
   :qid internal_core__ops__control_flow__ControlFlow_box_axiom_definition
   :skolemid skolem_internal_core__ops__control_flow__ControlFlow_box_axiom_definition
)))
(assert
 (forall ((B&. Dcr) (B& Type) (C&. Dcr) (C& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!ops.control_flow.ControlFlow. B&. B& C&. C&))
    (= x (Poly%core!ops.control_flow.ControlFlow. (%Poly%core!ops.control_flow.ControlFlow.
       x
   ))))
   :pattern ((has_type x (TYPE%core!ops.control_flow.ControlFlow. B&. B& C&. C&)))
   :qid internal_core__ops__control_flow__ControlFlow_unbox_axiom_definition
   :skolemid skolem_internal_core__ops__control_flow__ControlFlow_unbox_axiom_definition
)))
(assert
 (forall ((B&. Dcr) (B& Type) (C&. Dcr) (C& Type) (_0! Poly)) (!
   (=>
    (has_type _0! C&)
    (has_type (Poly%core!ops.control_flow.ControlFlow. (core!ops.control_flow.ControlFlow./Continue
       _0!
      )
     ) (TYPE%core!ops.control_flow.ControlFlow. B&. B& C&. C&)
   ))
   :pattern ((has_type (Poly%core!ops.control_flow.ControlFlow. (core!ops.control_flow.ControlFlow./Continue
       _0!
      )
     ) (TYPE%core!ops.control_flow.ControlFlow. B&. B& C&. C&)
   ))
   :qid internal_core!ops.control_flow.ControlFlow./Continue_constructor_definition
   :skolemid skolem_internal_core!ops.control_flow.ControlFlow./Continue_constructor_definition
)))
(assert
 (forall ((x core!ops.control_flow.ControlFlow.)) (!
   (= (core!ops.control_flow.ControlFlow./Continue/0 x) (core!ops.control_flow.ControlFlow./Continue/?0
     x
   ))
   :pattern ((core!ops.control_flow.ControlFlow./Continue/0 x))
   :qid internal_core!ops.control_flow.ControlFlow./Continue/0_accessor_definition
   :skolemid skolem_internal_core!ops.control_flow.ControlFlow./Continue/0_accessor_definition
)))
(assert
 (forall ((B&. Dcr) (B& Type) (C&. Dcr) (C& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!ops.control_flow.ControlFlow. B&. B& C&. C&))
    (has_type (core!ops.control_flow.ControlFlow./Continue/0 (%Poly%core!ops.control_flow.ControlFlow.
       x
      )
     ) C&
   ))
   :pattern ((core!ops.control_flow.ControlFlow./Continue/0 (%Poly%core!ops.control_flow.ControlFlow.
      x
     )
    ) (has_type x (TYPE%core!ops.control_flow.ControlFlow. B&. B& C&. C&))
   )
   :qid internal_core!ops.control_flow.ControlFlow./Continue/0_invariant_definition
   :skolemid skolem_internal_core!ops.control_flow.ControlFlow./Continue/0_invariant_definition
)))
(assert
 (forall ((B&. Dcr) (B& Type) (C&. Dcr) (C& Type) (_0! Poly)) (!
   (=>
    (has_type _0! B&)
    (has_type (Poly%core!ops.control_flow.ControlFlow. (core!ops.control_flow.ControlFlow./Break
       _0!
      )
     ) (TYPE%core!ops.control_flow.ControlFlow. B&. B& C&. C&)
   ))
   :pattern ((has_type (Poly%core!ops.control_flow.ControlFlow. (core!ops.control_flow.ControlFlow./Break
       _0!
      )
     ) (TYPE%core!ops.control_flow.ControlFlow. B&. B& C&. C&)
   ))
   :qid internal_core!ops.control_flow.ControlFlow./Break_constructor_definition
   :skolemid skolem_internal_core!ops.control_flow.ControlFlow./Break_constructor_definition
)))
(assert
 (forall ((x core!ops.control_flow.ControlFlow.)) (!
   (= (core!ops.control_flow.ControlFlow./Break/0 x) (core!ops.control_flow.ControlFlow./Break/?0
     x
   ))
   :pattern ((core!ops.control_flow.ControlFlow./Break/0 x))
   :qid internal_core!ops.control_flow.ControlFlow./Break/0_accessor_definition
   :skolemid skolem_internal_core!ops.control_flow.ControlFlow./Break/0_accessor_definition
)))
(assert
 (forall ((B&. Dcr) (B& Type) (C&. Dcr) (C& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!ops.control_flow.ControlFlow. B&. B& C&. C&))
    (has_type (core!ops.control_flow.ControlFlow./Break/0 (%Poly%core!ops.control_flow.ControlFlow.
       x
      )
     ) B&
   ))
   :pattern ((core!ops.control_flow.ControlFlow./Break/0 (%Poly%core!ops.control_flow.ControlFlow.
      x
     )
    ) (has_type x (TYPE%core!ops.control_flow.ControlFlow. B&. B& C&. C&))
   )
   :qid internal_core!ops.control_flow.ControlFlow./Break/0_invariant_definition
   :skolemid skolem_internal_core!ops.control_flow.ControlFlow./Break/0_invariant_definition
)))
(assert
 (forall ((x core!ops.control_flow.ControlFlow.)) (!
   (=>
    (is-core!ops.control_flow.ControlFlow./Continue x)
    (height_lt (height (core!ops.control_flow.ControlFlow./Continue/0 x)) (height (Poly%core!ops.control_flow.ControlFlow.
       x
   ))))
   :pattern ((height (core!ops.control_flow.ControlFlow./Continue/0 x)))
   :qid prelude_datatype_height_core!ops.control_flow.ControlFlow./Continue/0
   :skolemid skolem_prelude_datatype_height_core!ops.control_flow.ControlFlow./Continue/0
)))
(assert
 (forall ((x core!ops.control_flow.ControlFlow.)) (!
   (=>
    (is-core!ops.control_flow.ControlFlow./Break x)
    (height_lt (height (core!ops.control_flow.ControlFlow./Break/0 x)) (height (Poly%core!ops.control_flow.ControlFlow.
       x
   ))))
   :pattern ((height (core!ops.control_flow.ControlFlow./Break/0 x)))
   :qid prelude_datatype_height_core!ops.control_flow.ControlFlow./Break/0
   :skolemid skolem_prelude_datatype_height_core!ops.control_flow.ControlFlow./Break/0
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

;; Function-Decl vstd::std_specs::option::is_none
(declare-fun vstd!std_specs.option.is_none.? (Dcr Type Poly) Bool)

;; Function-Decl vstd::std_specs::option::is_some
(declare-fun vstd!std_specs.option.is_some.? (Dcr Type Poly) Bool)

;; Function-Specs core::option::impl&%39::branch
(declare-fun ens%core!option.impl&%39.branch. (Dcr Type core!option.Option. core!ops.control_flow.ControlFlow.)
 Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (option! core!option.Option.) (cf! core!ops.control_flow.ControlFlow.))
  (!
   (= (ens%core!option.impl&%39.branch. T&. T& option! cf!) (and
     (has_type (Poly%core!ops.control_flow.ControlFlow. cf!) (TYPE%core!ops.control_flow.ControlFlow.
       $ (TYPE%core!option.Option. $ TYPE%core!convert.Infallible.) T&. T&
     ))
     (= cf! (ite
       (is-core!option.Option./Some option!)
       (let
        ((v$ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
             option!
        )))))
        (core!ops.control_flow.ControlFlow./Continue v$)
       )
       (core!ops.control_flow.ControlFlow./Break (Poly%core!option.Option. core!option.Option./None))
   ))))
   :pattern ((ens%core!option.impl&%39.branch. T&. T& option! cf!))
   :qid internal_ens__core!option.impl&__39.branch._definition
   :skolemid skolem_internal_ens__core!option.impl&__39.branch._definition
)))

;; Function-Axioms vstd::std_specs::option::is_none
(assert
 (fuel_bool_default fuel%vstd!std_specs.option.is_none.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.option.is_none.)
  (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
    (= (vstd!std_specs.option.is_none.? T&. T& option!) (is-core!option.Option./None (%Poly%core!option.Option.
       option!
    )))
    :pattern ((vstd!std_specs.option.is_none.? T&. T& option!))
    :qid internal_vstd!std_specs.option.is_none.?_definition
    :skolemid skolem_internal_vstd!std_specs.option.is_none.?_definition
))))

;; Function-Specs core::option::impl&%40::from_residual
(declare-fun ens%core!option.impl&%40.from_residual. (Dcr Type core!option.Option.
  core!option.Option.
 ) Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (option! core!option.Option.) (option2! core!option.Option.))
  (!
   (= (ens%core!option.impl&%40.from_residual. T&. T& option! option2!) (and
     (has_type (Poly%core!option.Option. option2!) (TYPE%core!option.Option. T&. T&))
     (is-core!option.Option./None option!)
     (is-core!option.Option./None option2!)
   ))
   :pattern ((ens%core!option.impl&%40.from_residual. T&. T& option! option2!))
   :qid internal_ens__core!option.impl&__40.from_residual._definition
   :skolemid skolem_internal_ens__core!option.impl&__40.from_residual._definition
)))

;; Function-Axioms vstd::std_specs::option::is_some
(assert
 (fuel_bool_default fuel%vstd!std_specs.option.is_some.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.option.is_some.)
  (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
    (= (vstd!std_specs.option.is_some.? T&. T& option!) (is-core!option.Option./Some (%Poly%core!option.Option.
       option!
    )))
    :pattern ((vstd!std_specs.option.is_some.? T&. T& option!))
    :qid internal_vstd!std_specs.option.is_some.?_definition
    :skolemid skolem_internal_vstd!std_specs.option.is_some.?_definition
))))

;; Function-Specs test_crate::test
(declare-fun ens%test_crate!test. (Int core!option.Option.) Bool)
(assert
 (forall ((no%param Int) (res! core!option.Option.)) (!
   (= (ens%test_crate!test. no%param res!) (and
     (has_type (Poly%core!option.Option. res!) (TYPE%core!option.Option. $ (UINT 32)))
     (is-core!option.Option./None res!)
   ))
   :pattern ((ens%test_crate!test. no%param res!))
   :qid internal_ens__test_crate!test._definition
   :skolemid skolem_internal_ens__test_crate!test._definition
)))

;; Function-Def test_crate::test
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/std-a9a93a7619503a6c-question_mark_option/test.rs:17:1: 17:31 (#0)
(get-info :all-statistics)
(push)
 (declare-const res! core!option.Option.)
 (declare-const no%param Int)
 (declare-const tmp%1 core!option.Option.)
 (declare-const residual@ core!option.Option.)
 (declare-const tmp%%@ core!ops.control_flow.ControlFlow.)
 (declare-const x@ core!option.Option.)
 (declare-const y@ Int)
 (assert
  fuel_defaults
 )
 (declare-const %%switch_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= x@ core!option.Option./None)
    (=>
     (ens%core!option.impl&%39.branch. $ (UINT 8) x@ tmp%%@)
     (or
      (and
       (=>
        (is-core!ops.control_flow.ControlFlow./Break tmp%%@)
        (=>
         (= residual@ (%Poly%core!option.Option. (core!ops.control_flow.ControlFlow./Break/0
            (%Poly%core!ops.control_flow.ControlFlow. (Poly%core!ops.control_flow.ControlFlow.
              tmp%%@
         )))))
         (=>
          (ens%core!option.impl&%40.from_residual. $ (UINT 32) residual@ tmp%1)
          (=>
           (= res! tmp%1)
           (=>
            %%location_label%%0
            (is-core!option.Option./None res!)
       )))))
       (=>
        (not (is-core!ops.control_flow.ControlFlow./Break tmp%%@))
        %%switch_label%%0
      ))
      (and
       (not %%switch_label%%0)
       (=>
        (= y@ (let
          ((val$ (%I (core!ops.control_flow.ControlFlow./Continue/0 (%Poly%core!ops.control_flow.ControlFlow.
               (Poly%core!ops.control_flow.ControlFlow. tmp%%@)
          )))))
          val$
        ))
        (=>
         %%location_label%%1
         false
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::test2
(declare-fun ens%test_crate!test2. (Int core!option.Option.) Bool)
(assert
 (forall ((no%param Int) (%return! core!option.Option.)) (!
   (= (ens%test_crate!test2. no%param %return!) (has_type (Poly%core!option.Option. %return!)
     (TYPE%core!option.Option. $ (UINT 32))
   ))
   :pattern ((ens%test_crate!test2. no%param %return!))
   :qid internal_ens__test_crate!test2._definition
   :skolemid skolem_internal_ens__test_crate!test2._definition
)))

;; Function-Def test_crate::test2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/std-a9a93a7619503a6c-question_mark_option/test.rs:27:1: 27:32 (#0)
(get-info :all-statistics)
(push)
 (declare-const %return! core!option.Option.)
 (declare-const no%param Int)
 (declare-const tmp%1 core!option.Option.)
 (declare-const residual@ core!option.Option.)
 (declare-const tmp%%@ core!ops.control_flow.ControlFlow.)
 (declare-const x@ core!option.Option.)
 (declare-const y@ Int)
 (assert
  fuel_defaults
 )
 (declare-const %%switch_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= x@ (core!option.Option./Some (I 5)))
    (=>
     (ens%core!option.impl&%39.branch. $ (UINT 8) x@ tmp%%@)
     (or
      (=>
       (not (is-core!ops.control_flow.ControlFlow./Break tmp%%@))
       %%switch_label%%0
      )
      (and
       (not %%switch_label%%0)
       (=>
        (= y@ (let
          ((val$ (%I (core!ops.control_flow.ControlFlow./Continue/0 (%Poly%core!ops.control_flow.ControlFlow.
               (Poly%core!ops.control_flow.ControlFlow. tmp%%@)
          )))))
          val$
        ))
        (=>
         %%location_label%%0
         false
 ))))))))
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

;; Function-Recommends test_crate::test2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/std-a9a93a7619503a6c-question_mark_option/test.rs:27:1: 27:32 (#0)
(get-info :all-statistics)
(push)
 (declare-const %return! core!option.Option.)
 (declare-const no%param Int)
 (declare-const tmp%1 core!option.Option.)
 (declare-const residual@ core!option.Option.)
 (declare-const tmp%%@ core!ops.control_flow.ControlFlow.)
 (declare-const x@ core!option.Option.)
 (declare-const y@ Int)
 (assert
  fuel_defaults
 )
 (declare-const %%switch_label%%0 Bool)
 (assert
  (not (=>
    (= x@ (core!option.Option./Some (I 5)))
    (=>
     (ens%core!option.impl&%39.branch. $ (UINT 8) x@ tmp%%@)
     (or
      (=>
       (not (is-core!ops.control_flow.ControlFlow./Break tmp%%@))
       %%switch_label%%0
      )
      (not %%switch_label%%0)
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::test3
(declare-fun ens%test_crate!test3. (Int core!option.Option.) Bool)
(assert
 (forall ((no%param Int) (res! core!option.Option.)) (!
   (= (ens%test_crate!test3. no%param res!) (and
     (has_type (Poly%core!option.Option. res!) (TYPE%core!option.Option. $ (UINT 32)))
     (is-core!option.Option./Some res!)
   ))
   :pattern ((ens%test_crate!test3. no%param res!))
   :qid internal_ens__test_crate!test3._definition
   :skolemid skolem_internal_ens__test_crate!test3._definition
)))

;; Function-Def test_crate::test3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/std-a9a93a7619503a6c-question_mark_option/test.rs:36:1: 36:32 (#0)
(get-info :all-statistics)
(push)
 (declare-const res! core!option.Option.)
 (declare-const no%param Int)
 (declare-const tmp%1 core!option.Option.)
 (declare-const residual@ core!option.Option.)
 (declare-const tmp%%@ core!ops.control_flow.ControlFlow.)
 (declare-const x@ core!option.Option.)
 (declare-const y@ Int)
 (assert
  fuel_defaults
 )
 (declare-const %%switch_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= x@ core!option.Option./None)
    (=>
     (ens%core!option.impl&%39.branch. $ (UINT 8) x@ tmp%%@)
     (or
      (and
       (=>
        (is-core!ops.control_flow.ControlFlow./Break tmp%%@)
        (=>
         (= residual@ (%Poly%core!option.Option. (core!ops.control_flow.ControlFlow./Break/0
            (%Poly%core!ops.control_flow.ControlFlow. (Poly%core!ops.control_flow.ControlFlow.
              tmp%%@
         )))))
         (=>
          (ens%core!option.impl&%40.from_residual. $ (UINT 32) residual@ tmp%1)
          (=>
           (= res! tmp%1)
           (=>
            %%location_label%%0
            (is-core!option.Option./Some res!)
       )))))
       (=>
        (not (is-core!ops.control_flow.ControlFlow./Break tmp%%@))
        %%switch_label%%0
      ))
      (and
       (not %%switch_label%%0)
       (=>
        (= y@ (let
          ((val$ (%I (core!ops.control_flow.ControlFlow./Continue/0 (%Poly%core!ops.control_flow.ControlFlow.
               (Poly%core!ops.control_flow.ControlFlow. tmp%%@)
          )))))
          val$
        ))
        (=>
         (= res! (core!option.Option./Some (I 13)))
         (=>
          %%location_label%%1
          (is-core!option.Option./Some res!)
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

;; Function-Recommends test_crate::test3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/std-a9a93a7619503a6c-question_mark_option/test.rs:36:1: 36:32 (#0)
(get-info :all-statistics)
(push)
 (declare-const res! core!option.Option.)
 (declare-const no%param Int)
 (declare-const tmp%1 core!option.Option.)
 (declare-const residual@ core!option.Option.)
 (declare-const tmp%%@ core!ops.control_flow.ControlFlow.)
 (declare-const x@ core!option.Option.)
 (declare-const y@ Int)
 (assert
  fuel_defaults
 )
 (declare-const %%switch_label%%0 Bool)
 (assert
  (not (=>
    (= x@ core!option.Option./None)
    (=>
     (ens%core!option.impl&%39.branch. $ (UINT 8) x@ tmp%%@)
     (or
      (=>
       (not (is-core!ops.control_flow.ControlFlow./Break tmp%%@))
       %%switch_label%%0
      )
      (not %%switch_label%%0)
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::test4
(declare-fun ens%test_crate!test4. (Int core!option.Option.) Bool)
(assert
 (forall ((no%param Int) (res! core!option.Option.)) (!
   (= (ens%test_crate!test4. no%param res!) false)
   :pattern ((ens%test_crate!test4. no%param res!))
   :qid internal_ens__test_crate!test4._definition
   :skolemid skolem_internal_ens__test_crate!test4._definition
)))

;; Function-Def test_crate::test4
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/std-a9a93a7619503a6c-question_mark_option/test.rs:53:5: 53:13 (#0)
(get-info :all-statistics)
(push)
 (declare-const res! core!option.Option.)
 (declare-const no%param Int)
 (declare-const tmp%1 core!option.Option.)
 (declare-const residual@ core!option.Option.)
 (declare-const tmp%%@ core!ops.control_flow.ControlFlow.)
 (declare-const tmp%2 Bool)
 (declare-const x@ core!option.Option.)
 (declare-const y@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%core!option.Option. x@) (TYPE%core!option.Option. $ (UINT 8)))
 )
 (assert
  (has_type (Poly%core!ops.control_flow.ControlFlow. tmp%%@) (TYPE%core!ops.control_flow.ControlFlow.
    $ (TYPE%core!option.Option. $ TYPE%core!convert.Infallible.) $ (UINT 8)
 )))
 (assert
  (uInv 8 y@)
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
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/std-a9a93a7619503a6c-question_mark_option/test.rs:45:1: 45:32 (#0)
(get-info :all-statistics)
(push)
 (declare-const res! core!option.Option.)
 (declare-const no%param Int)
 (declare-const tmp%1 core!option.Option.)
 (declare-const residual@ core!option.Option.)
 (declare-const tmp%%@ core!ops.control_flow.ControlFlow.)
 (declare-const tmp%2 Bool)
 (declare-const x@ core!option.Option.)
 (declare-const y@ Int)
 (assert
  fuel_defaults
 )
 (declare-const %%switch_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= x@ (core!option.Option./Some (I 12)))
    (=>
     (ens%core!option.impl&%39.branch. $ (UINT 8) x@ tmp%%@)
     (or
      (and
       (=>
        (is-core!ops.control_flow.ControlFlow./Break tmp%%@)
        (=>
         (= residual@ (%Poly%core!option.Option. (core!ops.control_flow.ControlFlow./Break/0
            (%Poly%core!ops.control_flow.ControlFlow. (Poly%core!ops.control_flow.ControlFlow.
              tmp%%@
         )))))
         (=>
          (ens%core!option.impl&%40.from_residual. $ (UINT 32) residual@ tmp%1)
          (=>
           (= res! tmp%1)
           (=>
            %%location_label%%0
            false
       )))))
       (=>
        (not (is-core!ops.control_flow.ControlFlow./Break tmp%%@))
        %%switch_label%%0
      ))
      (and
       (not %%switch_label%%0)
       (=>
        (= y@ (let
          ((val$ (%I (core!ops.control_flow.ControlFlow./Continue/0 (%Poly%core!ops.control_flow.ControlFlow.
               (Poly%core!ops.control_flow.ControlFlow. tmp%%@)
          )))))
          val$
        ))
        (=>
         (= tmp%2 (= y@ 12))
         (=>
          %%location_label%%1
          tmp%2
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
