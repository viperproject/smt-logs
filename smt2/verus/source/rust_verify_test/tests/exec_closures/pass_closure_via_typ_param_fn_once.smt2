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
(declare-const fuel%vstd!pervasive.impl&%0.requires. FuelId)
(declare-const fuel%vstd!pervasive.impl&%0.ensures. FuelId)
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
 (distinct fuel%vstd!pervasive.impl&%0.requires. fuel%vstd!pervasive.impl&%0.ensures.
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
(declare-sort anonymous_closure%11. 0)
(declare-datatypes ((tuple%0. 0) (tuple%1. 0)) (((tuple%0./tuple%0)) ((tuple%1./tuple%1
    (tuple%1./tuple%1/?0 Poly)
))))
(declare-fun tuple%1./tuple%1/0 (tuple%1.) Poly)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%1. (Dcr Type) Type)
(declare-const TYPE%anonymous_closure%11. Type)
(declare-fun Poly%anonymous_closure%11. (anonymous_closure%11.) Poly)
(declare-fun %Poly%anonymous_closure%11. (Poly) anonymous_closure%11.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%1. (tuple%1.) Poly)
(declare-fun %Poly%tuple%1. (Poly) tuple%1.)
(assert
 (forall ((x anonymous_closure%11.)) (!
   (= x (%Poly%anonymous_closure%11. (Poly%anonymous_closure%11. x)))
   :pattern ((Poly%anonymous_closure%11. x))
   :qid internal_crate__anonymous_closure__11_box_axiom_definition
   :skolemid skolem_internal_crate__anonymous_closure__11_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%anonymous_closure%11.)
    (= x (Poly%anonymous_closure%11. (%Poly%anonymous_closure%11. x)))
   )
   :pattern ((has_type x TYPE%anonymous_closure%11.))
   :qid internal_crate__anonymous_closure__11_unbox_axiom_definition
   :skolemid skolem_internal_crate__anonymous_closure__11_unbox_axiom_definition
)))
(assert
 (forall ((x anonymous_closure%11.)) (!
   (has_type (Poly%anonymous_closure%11. x) TYPE%anonymous_closure%11.)
   :pattern ((has_type (Poly%anonymous_closure%11. x) TYPE%anonymous_closure%11.))
   :qid internal_crate__anonymous_closure__11_has_type_always_definition
   :skolemid skolem_internal_crate__anonymous_closure__11_has_type_always_definition
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
 (forall ((x tuple%1.)) (!
   (= x (%Poly%tuple%1. (Poly%tuple%1. x)))
   :pattern ((Poly%tuple%1. x))
   :qid internal_crate__tuple__1_box_axiom_definition
   :skolemid skolem_internal_crate__tuple__1_box_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%tuple%1. T%0&. T%0&))
    (= x (Poly%tuple%1. (%Poly%tuple%1. x)))
   )
   :pattern ((has_type x (TYPE%tuple%1. T%0&. T%0&)))
   :qid internal_crate__tuple__1_unbox_axiom_definition
   :skolemid skolem_internal_crate__tuple__1_unbox_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (_0! Poly)) (!
   (=>
    (has_type _0! T%0&)
    (has_type (Poly%tuple%1. (tuple%1./tuple%1 _0!)) (TYPE%tuple%1. T%0&. T%0&))
   )
   :pattern ((has_type (Poly%tuple%1. (tuple%1./tuple%1 _0!)) (TYPE%tuple%1. T%0&. T%0&)))
   :qid internal_tuple__1./tuple__1_constructor_definition
   :skolemid skolem_internal_tuple__1./tuple__1_constructor_definition
)))
(assert
 (forall ((x tuple%1.)) (!
   (= (tuple%1./tuple%1/0 x) (tuple%1./tuple%1/?0 x))
   :pattern ((tuple%1./tuple%1/0 x))
   :qid internal_tuple__1./tuple__1/0_accessor_definition
   :skolemid skolem_internal_tuple__1./tuple__1/0_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%tuple%1. T%0&. T%0&))
    (has_type (tuple%1./tuple%1/0 (%Poly%tuple%1. x)) T%0&)
   )
   :pattern ((tuple%1./tuple%1/0 (%Poly%tuple%1. x)) (has_type x (TYPE%tuple%1. T%0&. T%0&)))
   :qid internal_tuple__1./tuple__1/0_invariant_definition
   :skolemid skolem_internal_tuple__1./tuple__1/0_invariant_definition
)))
(assert
 (forall ((x tuple%1.)) (!
   (=>
    (is-tuple%1./tuple%1 x)
    (height_lt (height (tuple%1./tuple%1/0 x)) (height (Poly%tuple%1. x)))
   )
   :pattern ((height (tuple%1./tuple%1/0 x)))
   :qid prelude_datatype_height_tuple%1./tuple%1/0
   :skolemid skolem_prelude_datatype_height_tuple%1./tuple%1/0
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (deep Bool) (x Poly) (y Poly)) (!
   (=>
    (and
     (has_type x (TYPE%tuple%1. T%0&. T%0&))
     (has_type y (TYPE%tuple%1. T%0&. T%0&))
     (ext_eq deep T%0& (tuple%1./tuple%1/0 (%Poly%tuple%1. x)) (tuple%1./tuple%1/0 (%Poly%tuple%1.
        y
    ))))
    (ext_eq deep (TYPE%tuple%1. T%0&. T%0&) x y)
   )
   :pattern ((ext_eq deep (TYPE%tuple%1. T%0&. T%0&) x y))
   :qid internal_tuple__1./tuple__1_ext_equal_definition
   :skolemid skolem_internal_tuple__1./tuple__1_ext_equal_definition
)))

;; Traits
(declare-fun tr_bound%vstd!pervasive.FnWithRequiresEnsures. (Dcr Type Dcr Type Dcr
  Type
 ) Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Args&. Dcr) (Args& Type) (Output&. Dcr) (Output&
    Type
   )
  ) (!
   true
   :pattern ((tr_bound%vstd!pervasive.FnWithRequiresEnsures. Self%&. Self%& Args&. Args&
     Output&. Output&
   ))
   :qid internal_vstd__pervasive__FnWithRequiresEnsures_trait_type_bounds_definition
   :skolemid skolem_internal_vstd__pervasive__FnWithRequiresEnsures_trait_type_bounds_definition
)))

;; Function-Decl vstd::pervasive::FnWithRequiresEnsures::requires
(declare-fun vstd!pervasive.FnWithRequiresEnsures.requires.? (Dcr Type Dcr Type Dcr
  Type Poly Poly
 ) Poly
)
(declare-fun vstd!pervasive.FnWithRequiresEnsures.requires%default%.? (Dcr Type Dcr
  Type Dcr Type Poly Poly
 ) Poly
)

;; Function-Decl vstd::pervasive::FnWithRequiresEnsures::ensures
(declare-fun vstd!pervasive.FnWithRequiresEnsures.ensures.? (Dcr Type Dcr Type Dcr
  Type Poly Poly Poly
 ) Poly
)
(declare-fun vstd!pervasive.FnWithRequiresEnsures.ensures%default%.? (Dcr Type Dcr
  Type Dcr Type Poly Poly Poly
 ) Poly
)

;; Function-Axioms vstd::pervasive::FnWithRequiresEnsures::requires
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Args&. Dcr) (Args& Type) (Output&. Dcr) (Output&
    Type
   ) (self! Poly) (args! Poly)
  ) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type args! Args&)
    )
    (has_type (vstd!pervasive.FnWithRequiresEnsures.requires.? Self%&. Self%& Args&. Args&
      Output&. Output& self! args!
     ) BOOL
   ))
   :pattern ((vstd!pervasive.FnWithRequiresEnsures.requires.? Self%&. Self%& Args&. Args&
     Output&. Output& self! args!
   ))
   :qid internal_vstd!pervasive.FnWithRequiresEnsures.requires.?_pre_post_definition
   :skolemid skolem_internal_vstd!pervasive.FnWithRequiresEnsures.requires.?_pre_post_definition
)))

;; Function-Axioms vstd::pervasive::FnWithRequiresEnsures::ensures
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Args&. Dcr) (Args& Type) (Output&. Dcr) (Output&
    Type
   ) (self! Poly) (args! Poly) (output! Poly)
  ) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type args! Args&)
     (has_type output! Output&)
    )
    (has_type (vstd!pervasive.FnWithRequiresEnsures.ensures.? Self%&. Self%& Args&. Args&
      Output&. Output& self! args! output!
     ) BOOL
   ))
   :pattern ((vstd!pervasive.FnWithRequiresEnsures.ensures.? Self%&. Self%& Args&. Args&
     Output&. Output& self! args! output!
   ))
   :qid internal_vstd!pervasive.FnWithRequiresEnsures.ensures.?_pre_post_definition
   :skolemid skolem_internal_vstd!pervasive.FnWithRequiresEnsures.ensures.?_pre_post_definition
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

;; Function-Axioms vstd::pervasive::impl&%0::requires
(assert
 (fuel_bool_default fuel%vstd!pervasive.impl&%0.requires.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!pervasive.impl&%0.requires.)
  (forall ((Args&. Dcr) (Args& Type) (Output&. Dcr) (Output& Type) (F&. Dcr) (F& Type)
    (self! Poly) (args! Poly)
   ) (!
    (= (vstd!pervasive.FnWithRequiresEnsures.requires.? F&. F& Args&. Args& Output&. Output&
      self! args!
     ) (B (closure_req F& Args&. Args& self! args!))
    )
    :pattern ((vstd!pervasive.FnWithRequiresEnsures.requires.? F&. F& Args&. Args& Output&.
      Output& self! args!
    ))
    :qid internal_vstd!pervasive.FnWithRequiresEnsures.requires.?_definition
    :skolemid skolem_internal_vstd!pervasive.FnWithRequiresEnsures.requires.?_definition
))))

;; Function-Axioms vstd::pervasive::impl&%0::ensures
(assert
 (fuel_bool_default fuel%vstd!pervasive.impl&%0.ensures.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!pervasive.impl&%0.ensures.)
  (forall ((Args&. Dcr) (Args& Type) (Output&. Dcr) (Output& Type) (F&. Dcr) (F& Type)
    (self! Poly) (args! Poly) (output! Poly)
   ) (!
    (= (vstd!pervasive.FnWithRequiresEnsures.ensures.? F&. F& Args&. Args& Output&. Output&
      self! args! output!
     ) (B (closure_ens F& Args&. Args& self! args! output!))
    )
    :pattern ((vstd!pervasive.FnWithRequiresEnsures.ensures.? F&. F& Args&. Args& Output&.
      Output& self! args! output!
    ))
    :qid internal_vstd!pervasive.FnWithRequiresEnsures.ensures.?_definition
    :skolemid skolem_internal_vstd!pervasive.FnWithRequiresEnsures.ensures.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (forall ((Args&. Dcr) (Args& Type) (Output&. Dcr) (Output& Type) (F&. Dcr) (F& Type))
  (!
   (tr_bound%vstd!pervasive.FnWithRequiresEnsures. F&. F& Args&. Args& Output&. Output&)
   :pattern ((tr_bound%vstd!pervasive.FnWithRequiresEnsures. F&. F& Args&. Args& Output&.
     Output&
   ))
   :qid internal_vstd__pervasive__impl&__0_trait_impl_definition
   :skolemid skolem_internal_vstd__pervasive__impl&__0_trait_impl_definition
)))

;; Function-Specs test_crate::f1
(declare-fun req%test_crate!f1. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (t! Poly)) (!
   (= (req%test_crate!f1. T&. T& t!) (and
     (=>
      %%global_location_label%%0
      (forall ((x$ Poly)) (!
        (=>
         (has_type x$ (UINT 64))
         (=>
          (and
           (<= 0 (%I x$))
           (< (%I x$) 5)
          )
          (closure_req T& $ (TYPE%tuple%1. $ (UINT 64)) t! (Poly%tuple%1. (tuple%1./tuple%1 x$)))
        ))
        :pattern ((tuple%1./tuple%1 x$))
        :qid user_test_crate__f1_0
        :skolemid skolem_user_test_crate__f1_0
     )))
     (=>
      %%global_location_label%%1
      (forall ((x$ Poly) (y$ Poly)) (!
        (=>
         (and
          (has_type x$ (UINT 64))
          (has_type y$ (UINT 64))
         )
         (=>
          (closure_ens T& $ (TYPE%tuple%1. $ (UINT 64)) t! (Poly%tuple%1. (tuple%1./tuple%1 x$))
           y$
          )
          (= (%I y$) (Add (%I x$) 1))
        ))
        :pattern ((closure_ens T& $ (TYPE%tuple%1. $ (UINT 64)) t! (Poly%tuple%1. (tuple%1./tuple%1
            x$
           )
          ) y$
        ))
        :qid user_test_crate__f1_1
        :skolemid skolem_user_test_crate__f1_1
   )))))
   :pattern ((req%test_crate!f1. T&. T& t!))
   :qid internal_req__test_crate!f1._definition
   :skolemid skolem_internal_req__test_crate!f1._definition
)))

;; Function-Def test_crate::f1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/exec_closures-b11772a2e0912ad7-pass_closure_via_typ_param_fn_once/test.rs:17:1: 17:35 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const t! Poly)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 tuple%1.)
 (declare-const tmp%3 Bool)
 (declare-const ret@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type t! T&)
 )
 (assert
  (forall ((x$ Poly)) (!
    (=>
     (has_type x$ (UINT 64))
     (=>
      (and
       (<= 0 (%I x$))
       (< (%I x$) 5)
      )
      (closure_req T& $ (TYPE%tuple%1. $ (UINT 64)) t! (Poly%tuple%1. (tuple%1./tuple%1 x$)))
    ))
    :pattern ((tuple%1./tuple%1 x$))
    :qid user_test_crate__f1_2
    :skolemid skolem_user_test_crate__f1_2
 )))
 (assert
  (forall ((x$ Poly) (y$ Poly)) (!
    (=>
     (and
      (has_type x$ (UINT 64))
      (has_type y$ (UINT 64))
     )
     (=>
      (closure_ens T& $ (TYPE%tuple%1. $ (UINT 64)) t! (Poly%tuple%1. (tuple%1./tuple%1 x$))
       y$
      )
      (= (%I y$) (Add (%I x$) 1))
    ))
    :pattern ((closure_ens T& $ (TYPE%tuple%1. $ (UINT 64)) t! (Poly%tuple%1. (tuple%1./tuple%1
        x$
       )
      ) y$
    ))
    :qid user_test_crate__f1_3
    :skolemid skolem_user_test_crate__f1_3
 )))
 ;; Call to non-static function fails to satisfy `callee.requires(args)`
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= tmp%2 (tuple%1./tuple%1 (I 3)))
    (and
     (=>
      %%location_label%%0
      (req%vstd!pervasive.exec_nonstatic_call. $ (TYPE%tuple%1. $ (UINT 64)) $ (UINT 64)
       T&. T& t! (Poly%tuple%1. tmp%2)
     ))
     (=>
      (ens%vstd!pervasive.exec_nonstatic_call. $ (TYPE%tuple%1. $ (UINT 64)) $ (UINT 64)
       T&. T& t! (Poly%tuple%1. tmp%2) tmp%1
      )
      (=>
       (= ret@ (%I tmp%1))
       (=>
        (= tmp%3 (= ret@ 4))
        (=>
         %%location_label%%1
         tmp%3
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def test_crate::f2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/exec_closures-b11772a2e0912ad7-pass_closure_via_typ_param_fn_once/test.rs:26:1: 26:8 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const a~4 Int)
 (declare-const ret~54 Int)
 (declare-const tmp%%1 anonymous_closure%11.)
 (declare-const t@ anonymous_closure%11.)
 (assert
  fuel_defaults
 )
 ;; possible arithmetic underflow/overflow
 (declare-const %%location_label%%0 Bool)
 ;; unable to prove post-condition of closure
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (and
    (=>
     (uInv 64 a~4)
     (=>
      (and
       (<= 0 a~4)
       (< a~4 5)
      )
      (and
       (=>
        %%location_label%%0
        (uInv 64 (Add a~4 1))
       )
       (=>
        (= ret~54 (uClip 64 (Add a~4 1)))
        (=>
         %%location_label%%1
         (= ret~54 (Add a~4 1))
    )))))
    (=>
     (and
      (forall ((tmp%%$ Poly)) (!
        (=>
         (has_type tmp%%$ (TYPE%tuple%1. $ (UINT 64)))
         (=>
          (let
           ((a$ (%I (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$)))))
           (and
            (<= 0 a$)
            (< a$ 5)
          ))
          (closure_req TYPE%anonymous_closure%11. $ (TYPE%tuple%1. $ (UINT 64)) (Poly%anonymous_closure%11.
            tmp%%1
           ) tmp%%$
        )))
        :pattern ((closure_req TYPE%anonymous_closure%11. $ (TYPE%tuple%1. $ (UINT 64)) (Poly%anonymous_closure%11.
           tmp%%1
          ) tmp%%$
        ))
        :qid user_test_crate__f2_4
        :skolemid skolem_user_test_crate__f2_4
      ))
      (forall ((tmp%%$ Poly) (ret$ Poly)) (!
        (=>
         (and
          (has_type tmp%%$ (TYPE%tuple%1. $ (UINT 64)))
          (has_type ret$ (UINT 64))
         )
         (=>
          (closure_ens TYPE%anonymous_closure%11. $ (TYPE%tuple%1. $ (UINT 64)) (Poly%anonymous_closure%11.
            tmp%%1
           ) tmp%%$ ret$
          )
          (let
           ((a$ (%I (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$)))))
           (= (%I ret$) (Add a$ 1))
        )))
        :pattern ((closure_ens TYPE%anonymous_closure%11. $ (TYPE%tuple%1. $ (UINT 64)) (Poly%anonymous_closure%11.
           tmp%%1
          ) tmp%%$ ret$
        ))
        :qid user_test_crate__f2_5
        :skolemid skolem_user_test_crate__f2_5
     )))
     (=>
      (= t@ tmp%%1)
      (=>
       %%location_label%%2
       (req%test_crate!f1. $ TYPE%anonymous_closure%11. (Poly%anonymous_closure%11. t@))
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
