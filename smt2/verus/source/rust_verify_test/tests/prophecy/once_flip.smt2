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
(declare-const fuel%vstd!std_specs.option.is_some. FuelId)
(declare-const fuel%vstd!std_specs.option.is_none. FuelId)
(declare-const fuel%vstd!std_specs.option.spec_unwrap. FuelId)
(declare-const fuel%test_crate!impl&%1.result. FuelId)
(declare-const fuel%test_crate!impl&%1.wf. FuelId)
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
  fuel%vstd!std_specs.option.is_some. fuel%vstd!std_specs.option.is_none. fuel%vstd!std_specs.option.spec_unwrap.
  fuel%test_crate!impl&%1.result. fuel%test_crate!impl&%1.wf. fuel%vstd!array.group_array_axioms.
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
(declare-sort test_crate!Prophecy<bool.>. 0)
(declare-datatypes ((core!option.Option. 0) (test_crate!OnceFlip. 0) (tuple%0. 0))
 (((core!option.Option./None) (core!option.Option./Some (core!option.Option./Some/?0 Poly)))
  ((test_crate!OnceFlip./OnceFlip (test_crate!OnceFlip./OnceFlip/?value core!option.Option.)
    (test_crate!OnceFlip./OnceFlip/?proph test_crate!Prophecy<bool.>.)
   )
  ) ((tuple%0./tuple%0))
))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun test_crate!OnceFlip./OnceFlip/value (test_crate!OnceFlip.) core!option.Option.)
(declare-fun test_crate!OnceFlip./OnceFlip/proph (test_crate!OnceFlip.) test_crate!Prophecy<bool.>.)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-fun TYPE%test_crate!Prophecy. (Dcr Type) Type)
(declare-const TYPE%test_crate!OnceFlip. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%test_crate!Prophecy<bool.>. (test_crate!Prophecy<bool.>.) Poly)
(declare-fun %Poly%test_crate!Prophecy<bool.>. (Poly) test_crate!Prophecy<bool.>.)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
(declare-fun Poly%test_crate!OnceFlip. (test_crate!OnceFlip.) Poly)
(declare-fun %Poly%test_crate!OnceFlip. (Poly) test_crate!OnceFlip.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(assert
 (forall ((x test_crate!Prophecy<bool.>.)) (!
   (= x (%Poly%test_crate!Prophecy<bool.>. (Poly%test_crate!Prophecy<bool.>. x)))
   :pattern ((Poly%test_crate!Prophecy<bool.>. x))
   :qid internal_test_crate__Prophecy<bool.>_box_axiom_definition
   :skolemid skolem_internal_test_crate__Prophecy<bool.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%test_crate!Prophecy. $ BOOL))
    (= x (Poly%test_crate!Prophecy<bool.>. (%Poly%test_crate!Prophecy<bool.>. x)))
   )
   :pattern ((has_type x (TYPE%test_crate!Prophecy. $ BOOL)))
   :qid internal_test_crate__Prophecy<bool.>_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__Prophecy<bool.>_unbox_axiom_definition
)))
(assert
 (forall ((x test_crate!Prophecy<bool.>.)) (!
   (has_type (Poly%test_crate!Prophecy<bool.>. x) (TYPE%test_crate!Prophecy. $ BOOL))
   :pattern ((has_type (Poly%test_crate!Prophecy<bool.>. x) (TYPE%test_crate!Prophecy.
      $ BOOL
   )))
   :qid internal_test_crate__Prophecy<bool.>_has_type_always_definition
   :skolemid skolem_internal_test_crate__Prophecy<bool.>_has_type_always_definition
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
 (forall ((x test_crate!OnceFlip.)) (!
   (= x (%Poly%test_crate!OnceFlip. (Poly%test_crate!OnceFlip. x)))
   :pattern ((Poly%test_crate!OnceFlip. x))
   :qid internal_test_crate__OnceFlip_box_axiom_definition
   :skolemid skolem_internal_test_crate__OnceFlip_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!OnceFlip.)
    (= x (Poly%test_crate!OnceFlip. (%Poly%test_crate!OnceFlip. x)))
   )
   :pattern ((has_type x TYPE%test_crate!OnceFlip.))
   :qid internal_test_crate__OnceFlip_unbox_axiom_definition
   :skolemid skolem_internal_test_crate__OnceFlip_unbox_axiom_definition
)))
(assert
 (forall ((_value! core!option.Option.) (_proph! test_crate!Prophecy<bool.>.)) (!
   (=>
    (has_type (Poly%core!option.Option. _value!) (TYPE%core!option.Option. $ BOOL))
    (has_type (Poly%test_crate!OnceFlip. (test_crate!OnceFlip./OnceFlip _value! _proph!))
     TYPE%test_crate!OnceFlip.
   ))
   :pattern ((has_type (Poly%test_crate!OnceFlip. (test_crate!OnceFlip./OnceFlip _value!
       _proph!
      )
     ) TYPE%test_crate!OnceFlip.
   ))
   :qid internal_test_crate!OnceFlip./OnceFlip_constructor_definition
   :skolemid skolem_internal_test_crate!OnceFlip./OnceFlip_constructor_definition
)))
(assert
 (forall ((x test_crate!OnceFlip.)) (!
   (= (test_crate!OnceFlip./OnceFlip/value x) (test_crate!OnceFlip./OnceFlip/?value x))
   :pattern ((test_crate!OnceFlip./OnceFlip/value x))
   :qid internal_test_crate!OnceFlip./OnceFlip/value_accessor_definition
   :skolemid skolem_internal_test_crate!OnceFlip./OnceFlip/value_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%test_crate!OnceFlip.)
    (has_type (Poly%core!option.Option. (test_crate!OnceFlip./OnceFlip/value (%Poly%test_crate!OnceFlip.
        x
      ))
     ) (TYPE%core!option.Option. $ BOOL)
   ))
   :pattern ((test_crate!OnceFlip./OnceFlip/value (%Poly%test_crate!OnceFlip. x)) (has_type
     x TYPE%test_crate!OnceFlip.
   ))
   :qid internal_test_crate!OnceFlip./OnceFlip/value_invariant_definition
   :skolemid skolem_internal_test_crate!OnceFlip./OnceFlip/value_invariant_definition
)))
(assert
 (forall ((x test_crate!OnceFlip.)) (!
   (= (test_crate!OnceFlip./OnceFlip/proph x) (test_crate!OnceFlip./OnceFlip/?proph x))
   :pattern ((test_crate!OnceFlip./OnceFlip/proph x))
   :qid internal_test_crate!OnceFlip./OnceFlip/proph_accessor_definition
   :skolemid skolem_internal_test_crate!OnceFlip./OnceFlip/proph_accessor_definition
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

;; Function-Decl vstd::std_specs::option::is_some
(declare-fun vstd!std_specs.option.is_some.? (Dcr Type Poly) Bool)

;; Function-Decl vstd::std_specs::option::is_none
(declare-fun vstd!std_specs.option.is_none.? (Dcr Type Poly) Bool)

;; Function-Decl vstd::std_specs::option::spec_unwrap
(declare-fun vstd!std_specs.option.spec_unwrap.? (Dcr Type Poly) Poly)

;; Function-Decl test_crate::Prophecy::value
(declare-fun test_crate!impl&%0.value.? (Dcr Type Poly) Poly)

;; Function-Decl test_crate::Prophecy::may_resolve
(declare-fun test_crate!impl&%0.may_resolve.? (Dcr Type Poly) Bool)

;; Function-Decl test_crate::OnceFlip::result
(declare-fun test_crate!impl&%1.result.? (Poly) Bool)

;; Function-Decl test_crate::OnceFlip::wf
(declare-fun test_crate!impl&%1.wf.? (Poly) Bool)

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

;; Function-Specs core::option::impl&%0::is_none
(declare-fun ens%core!option.impl&%0.is_none. (Dcr Type core!option.Option. Bool)
 Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (option! core!option.Option.) (b! Bool)) (!
   (= (ens%core!option.impl&%0.is_none. T&. T& option! b!) (= b! (is-core!option.Option./None
      option!
   )))
   :pattern ((ens%core!option.impl&%0.is_none. T&. T& option! b!))
   :qid internal_ens__core!option.impl&__0.is_none._definition
   :skolemid skolem_internal_ens__core!option.impl&__0.is_none._definition
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

;; Function-Specs vstd::std_specs::option::spec_unwrap
(declare-fun req%vstd!std_specs.option.spec_unwrap. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
   (= (req%vstd!std_specs.option.spec_unwrap. T&. T& option!) (=>
     %%global_location_label%%0
     (is-core!option.Option./Some (%Poly%core!option.Option. option!))
   ))
   :pattern ((req%vstd!std_specs.option.spec_unwrap. T&. T& option!))
   :qid internal_req__vstd!std_specs.option.spec_unwrap._definition
   :skolemid skolem_internal_req__vstd!std_specs.option.spec_unwrap._definition
)))

;; Function-Axioms vstd::std_specs::option::spec_unwrap
(assert
 (fuel_bool_default fuel%vstd!std_specs.option.spec_unwrap.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!std_specs.option.spec_unwrap.)
  (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
    (= (vstd!std_specs.option.spec_unwrap.? T&. T& option!) (core!option.Option./Some/0
      (%Poly%core!option.Option. option!)
    ))
    :pattern ((vstd!std_specs.option.spec_unwrap.? T&. T& option!))
    :qid internal_vstd!std_specs.option.spec_unwrap.?_definition
    :skolemid skolem_internal_vstd!std_specs.option.spec_unwrap.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
   (=>
    (has_type option! (TYPE%core!option.Option. T&. T&))
    (has_type (vstd!std_specs.option.spec_unwrap.? T&. T& option!) T&)
   )
   :pattern ((vstd!std_specs.option.spec_unwrap.? T&. T& option!))
   :qid internal_vstd!std_specs.option.spec_unwrap.?_pre_post_definition
   :skolemid skolem_internal_vstd!std_specs.option.spec_unwrap.?_pre_post_definition
)))

;; Function-Specs core::option::impl&%0::unwrap
(declare-fun req%core!option.impl&%0.unwrap. (Dcr Type core!option.Option.) Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (option! core!option.Option.)) (!
   (= (req%core!option.impl&%0.unwrap. T&. T& option!) (=>
     %%global_location_label%%1
     (is-core!option.Option./Some option!)
   ))
   :pattern ((req%core!option.impl&%0.unwrap. T&. T& option!))
   :qid internal_req__core!option.impl&__0.unwrap._definition
   :skolemid skolem_internal_req__core!option.impl&__0.unwrap._definition
)))
(declare-fun ens%core!option.impl&%0.unwrap. (Dcr Type core!option.Option. Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (option! core!option.Option.) (t! Poly)) (!
   (= (ens%core!option.impl&%0.unwrap. T&. T& option! t!) (and
     (has_type t! T&)
     (= t! (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
         option!
   ))))))
   :pattern ((ens%core!option.impl&%0.unwrap. T&. T& option! t!))
   :qid internal_ens__core!option.impl&__0.unwrap._definition
   :skolemid skolem_internal_ens__core!option.impl&__0.unwrap._definition
)))

;; Function-Axioms test_crate::Prophecy::value
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%test_crate!Prophecy. T&. T&))
    (has_type (test_crate!impl&%0.value.? T&. T& self!) T&)
   )
   :pattern ((test_crate!impl&%0.value.? T&. T& self!))
   :qid internal_test_crate!impl&__0.value.?_pre_post_definition
   :skolemid skolem_internal_test_crate!impl&__0.value.?_pre_post_definition
)))

;; Function-Specs test_crate::Prophecy::new
(declare-fun ens%test_crate!impl&%0.new. (Dcr Type Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (s! Poly)) (!
   (= (ens%test_crate!impl&%0.new. T&. T& s!) (and
     (has_type s! (TYPE%test_crate!Prophecy. T&. T&))
     (test_crate!impl&%0.may_resolve.? T&. T& s!)
   ))
   :pattern ((ens%test_crate!impl&%0.new. T&. T& s!))
   :qid internal_ens__test_crate!impl&__0.new._definition
   :skolemid skolem_internal_ens__test_crate!impl&__0.new._definition
)))

;; Function-Specs test_crate::Prophecy::resolve
(declare-fun req%test_crate!impl&%0.resolve. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (pre%self! Poly) (value! Poly)) (!
   (= (req%test_crate!impl&%0.resolve. T&. T& pre%self! value!) (=>
     %%global_location_label%%2
     (test_crate!impl&%0.may_resolve.? T&. T& pre%self!)
   ))
   :pattern ((req%test_crate!impl&%0.resolve. T&. T& pre%self! value!))
   :qid internal_req__test_crate!impl&__0.resolve._definition
   :skolemid skolem_internal_req__test_crate!impl&__0.resolve._definition
)))
(declare-fun ens%test_crate!impl&%0.resolve. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (pre%self! Poly) (self! Poly) (value! Poly)) (!
   (= (ens%test_crate!impl&%0.resolve. T&. T& pre%self! self! value!) (and
     (has_type self! (TYPE%test_crate!Prophecy. T&. T&))
     (not (test_crate!impl&%0.may_resolve.? T&. T& self!))
     (= (test_crate!impl&%0.value.? T&. T& self!) (test_crate!impl&%0.value.? T&. T& pre%self!))
     (= (test_crate!impl&%0.value.? T&. T& self!) value!)
   ))
   :pattern ((ens%test_crate!impl&%0.resolve. T&. T& pre%self! self! value!))
   :qid internal_ens__test_crate!impl&__0.resolve._definition
   :skolemid skolem_internal_ens__test_crate!impl&__0.resolve._definition
)))

;; Function-Axioms test_crate::OnceFlip::result
(assert
 (fuel_bool_default fuel%test_crate!impl&%1.result.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%1.result.)
  (forall ((self! Poly)) (!
    (= (test_crate!impl&%1.result.? self!) (%B (ite
       (test_crate!impl&%0.may_resolve.? $ BOOL (Poly%test_crate!Prophecy<bool.>. (test_crate!OnceFlip./OnceFlip/proph
          (%Poly%test_crate!OnceFlip. self!)
       )))
       (test_crate!impl&%0.value.? $ BOOL (Poly%test_crate!Prophecy<bool.>. (test_crate!OnceFlip./OnceFlip/proph
          (%Poly%test_crate!OnceFlip. self!)
       )))
       (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option. (test_crate!OnceFlip./OnceFlip/value
           (%Poly%test_crate!OnceFlip. self!)
    )))))))
    :pattern ((test_crate!impl&%1.result.? self!))
    :qid internal_test_crate!impl&__1.result.?_definition
    :skolemid skolem_internal_test_crate!impl&__1.result.?_definition
))))

;; Function-Axioms test_crate::OnceFlip::wf
(assert
 (fuel_bool_default fuel%test_crate!impl&%1.wf.)
)
(assert
 (=>
  (fuel_bool fuel%test_crate!impl&%1.wf.)
  (forall ((self! Poly)) (!
    (= (test_crate!impl&%1.wf.? self!) (= (is-core!option.Option./Some (test_crate!OnceFlip./OnceFlip/value
        (%Poly%test_crate!OnceFlip. self!)
       )
      ) (not (test_crate!impl&%0.may_resolve.? $ BOOL (Poly%test_crate!Prophecy<bool.>. (test_crate!OnceFlip./OnceFlip/proph
          (%Poly%test_crate!OnceFlip. self!)
    ))))))
    :pattern ((test_crate!impl&%1.wf.? self!))
    :qid internal_test_crate!impl&__1.wf.?_definition
    :skolemid skolem_internal_test_crate!impl&__1.wf.?_definition
))))

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

;; Function-Def test_crate::rand
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/prophecy-ea4e010492bff285-once_flip/test.rs:42:1: 42:18 (#0)
(get-info :all-statistics)
(push)
 (declare-const %return! Bool)
 (declare-const no%param Int)
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

;; Function-Specs test_crate::OnceFlip::new
(declare-fun ens%test_crate!impl&%1.new. (Int test_crate!OnceFlip.) Bool)
(assert
 (forall ((no%param Int) (s! test_crate!OnceFlip.)) (!
   (= (ens%test_crate!impl&%1.new. no%param s!) (and
     (has_type (Poly%test_crate!OnceFlip. s!) TYPE%test_crate!OnceFlip.)
     (test_crate!impl&%1.wf.? (Poly%test_crate!OnceFlip. s!))
   ))
   :pattern ((ens%test_crate!impl&%1.new. no%param s!))
   :qid internal_ens__test_crate!impl&__1.new._definition
   :skolemid skolem_internal_ens__test_crate!impl&__1.new._definition
)))

;; Function-Def test_crate::OnceFlip::new
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/prophecy-ea4e010492bff285-once_flip/test.rs:63:5: 63:29 (#0)
(get-info :all-statistics)
(push)
 (declare-const s! test_crate!OnceFlip.)
 (declare-const no%param Int)
 (declare-const tmp%1 Poly)
 (assert
  fuel_defaults
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (ens%test_crate!impl&%0.new. $ BOOL tmp%1)
    (=>
     (= s! (test_crate!OnceFlip./OnceFlip (%Poly%core!option.Option. (Poly%core!option.Option.
         core!option.Option./None
        )
       ) (%Poly%test_crate!Prophecy<bool.>. tmp%1)
     ))
     (=>
      %%location_label%%0
      (test_crate!impl&%1.wf.? (Poly%test_crate!OnceFlip. s!))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs test_crate::OnceFlip::get_result
(declare-fun req%test_crate!impl&%1.get_result. (test_crate!OnceFlip.) Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((pre%self! test_crate!OnceFlip.)) (!
   (= (req%test_crate!impl&%1.get_result. pre%self!) (=>
     %%global_location_label%%3
     (test_crate!impl&%1.wf.? (Poly%test_crate!OnceFlip. pre%self!))
   ))
   :pattern ((req%test_crate!impl&%1.get_result. pre%self!))
   :qid internal_req__test_crate!impl&__1.get_result._definition
   :skolemid skolem_internal_req__test_crate!impl&__1.get_result._definition
)))
(declare-fun ens%test_crate!impl&%1.get_result. (test_crate!OnceFlip. test_crate!OnceFlip.
  Bool
 ) Bool
)
(assert
 (forall ((pre%self! test_crate!OnceFlip.) (self! test_crate!OnceFlip.) (b! Bool))
  (!
   (= (ens%test_crate!impl&%1.get_result. pre%self! self! b!) (and
     (has_type (Poly%test_crate!OnceFlip. self!) TYPE%test_crate!OnceFlip.)
     (test_crate!impl&%1.wf.? (Poly%test_crate!OnceFlip. self!))
     (= (test_crate!impl&%1.result.? (Poly%test_crate!OnceFlip. self!)) (test_crate!impl&%1.result.?
       (Poly%test_crate!OnceFlip. pre%self!)
     ))
     (= b! (test_crate!impl&%1.result.? (Poly%test_crate!OnceFlip. self!)))
   ))
   :pattern ((ens%test_crate!impl&%1.get_result. pre%self! self! b!))
   :qid internal_ens__test_crate!impl&__1.get_result._definition
   :skolemid skolem_internal_ens__test_crate!impl&__1.get_result._definition
)))

;; Function-Def test_crate::OnceFlip::get_result
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/prophecy-ea4e010492bff285-once_flip/test.rs:72:5: 72:45 (#0)
(get-info :all-statistics)
(push)
 (declare-const b! Bool)
 (declare-const self!@0 test_crate!OnceFlip.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 core!option.Option.)
 (declare-const tmp%3 core!option.Option.)
 (declare-const flip@ Bool)
 (declare-const tmp%4 Poly)
 (declare-const tmp%5 core!option.Option.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%test_crate!OnceFlip. self!@0) TYPE%test_crate!OnceFlip.)
 )
 (assert
  (test_crate!impl&%1.wf.? (Poly%test_crate!OnceFlip. self!@0))
 )
 (declare-const self!@1 test_crate!OnceFlip.)
 (declare-const self!@2 test_crate!OnceFlip.)
 (declare-const %%switch_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 (assert
  (not (=>
    (= tmp%2 (test_crate!OnceFlip./OnceFlip/value (%Poly%test_crate!OnceFlip. (Poly%test_crate!OnceFlip.
        self!@0
    ))))
    (=>
     (ens%core!option.impl&%0.is_none. $ BOOL tmp%2 tmp%1)
     (or
      (and
       (=>
        tmp%1
        (=>
         (= tmp%3 (core!option.Option./Some (B flip@)))
         (=>
          (= (test_crate!OnceFlip./OnceFlip/value (%Poly%test_crate!OnceFlip. (Poly%test_crate!OnceFlip.
              self!@1
            ))
           ) tmp%3
          )
          (=>
           (and
            (= (test_crate!OnceFlip./OnceFlip/proph self!@0) (test_crate!OnceFlip./OnceFlip/proph
              self!@1
           )))
           (and
            (=>
             %%location_label%%0
             (req%test_crate!impl&%0.resolve. $ BOOL (Poly%test_crate!Prophecy<bool.>. (test_crate!OnceFlip./OnceFlip/proph
                (%Poly%test_crate!OnceFlip. (Poly%test_crate!OnceFlip. self!@1))
               )
              ) (B flip@)
            ))
            (=>
             (and
              (= (test_crate!OnceFlip./OnceFlip/value self!@1) (test_crate!OnceFlip./OnceFlip/value
                self!@2
             )))
             (=>
              (has_type (Poly%test_crate!OnceFlip. self!@2) TYPE%test_crate!OnceFlip.)
              (=>
               (ens%test_crate!impl&%0.resolve. $ BOOL (Poly%test_crate!Prophecy<bool.>. (test_crate!OnceFlip./OnceFlip/proph
                  (%Poly%test_crate!OnceFlip. (Poly%test_crate!OnceFlip. self!@1))
                 )
                ) (Poly%test_crate!Prophecy<bool.>. (test_crate!OnceFlip./OnceFlip/proph (%Poly%test_crate!OnceFlip.
                   (Poly%test_crate!OnceFlip. self!@2)
                 ))
                ) (B flip@)
               )
               %%switch_label%%0
       ))))))))
       (=>
        (not tmp%1)
        (=>
         (= self!@2 self!@0)
         %%switch_label%%0
      )))
      (and
       (not %%switch_label%%0)
       (=>
        (= tmp%5 (test_crate!OnceFlip./OnceFlip/value (%Poly%test_crate!OnceFlip. (Poly%test_crate!OnceFlip.
            self!@2
        ))))
        (and
         (=>
          %%location_label%%1
          (req%core!option.impl&%0.unwrap. $ BOOL tmp%5)
         )
         (=>
          (ens%core!option.impl&%0.unwrap. $ BOOL tmp%5 tmp%4)
          (=>
           (= b! (%B tmp%4))
           (and
            (=>
             %%location_label%%2
             (test_crate!impl&%1.wf.? (Poly%test_crate!OnceFlip. self!@2))
            )
            (and
             (=>
              %%location_label%%3
              (= (test_crate!impl&%1.result.? (Poly%test_crate!OnceFlip. self!@2)) (test_crate!impl&%1.result.?
                (Poly%test_crate!OnceFlip. self!@0)
             )))
             (=>
              %%location_label%%4
              (= b! (test_crate!impl&%1.result.? (Poly%test_crate!OnceFlip. self!@2)))
 )))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
