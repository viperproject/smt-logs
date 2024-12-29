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

;; MODULE 'module vstd::map_lib'

;; Fuel
(declare-const fuel%vstd.map.impl&%0.new. FuelId)
(declare-const fuel%vstd.map.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd.map.impl&%0.len. FuelId)
(declare-const fuel%vstd.map.axiom_map_index_decreases_finite. FuelId)
(declare-const fuel%vstd.map.axiom_map_index_decreases_infinite. FuelId)
(declare-const fuel%vstd.map.axiom_map_remove_domain. FuelId)
(declare-const fuel%vstd.map.axiom_map_remove_different. FuelId)
(declare-const fuel%vstd.map.axiom_map_ext_equal. FuelId)
(declare-const fuel%vstd.map.axiom_map_ext_equal_deep. FuelId)
(declare-const fuel%vstd.map_lib.impl&%0.is_full. FuelId)
(declare-const fuel%vstd.map_lib.impl&%0.is_empty. FuelId)
(declare-const fuel%vstd.map_lib.impl&%0.contains_key. FuelId)
(declare-const fuel%vstd.map_lib.impl&%0.contains_value. FuelId)
(declare-const fuel%vstd.map_lib.impl&%0.values. FuelId)
(declare-const fuel%vstd.map_lib.impl&%0.contains_pair. FuelId)
(declare-const fuel%vstd.map_lib.impl&%0.submap_of. FuelId)
(declare-const fuel%vstd.map_lib.impl&%0.spec_le. FuelId)
(declare-const fuel%vstd.map_lib.impl&%0.le. FuelId)
(declare-const fuel%vstd.map_lib.impl&%0.union_prefer_right. FuelId)
(declare-const fuel%vstd.map_lib.impl&%0.remove_keys. FuelId)
(declare-const fuel%vstd.map_lib.impl&%0.restrict. FuelId)
(declare-const fuel%vstd.map_lib.impl&%0.is_equal_on_key. FuelId)
(declare-const fuel%vstd.map_lib.impl&%0.agrees. FuelId)
(declare-const fuel%vstd.map_lib.impl&%0.map_entries. FuelId)
(declare-const fuel%vstd.map_lib.impl&%0.map_values. FuelId)
(declare-const fuel%vstd.map_lib.impl&%0.is_injective. FuelId)
(declare-const fuel%vstd.map_lib.impl&%0.invert. FuelId)
(declare-const fuel%vstd.map_lib.impl&%1.is_monotonic. FuelId)
(declare-const fuel%vstd.map_lib.impl&%1.is_monotonic_from. FuelId)
(declare-const fuel%vstd.set.impl&%0.full. FuelId)
(declare-const fuel%vstd.set.impl&%0.spec_add. FuelId)
(declare-const fuel%vstd.set.impl&%0.choose. FuelId)
(declare-const fuel%vstd.set.impl&%0.disjoint. FuelId)
(declare-const fuel%vstd.set.axiom_set_empty. FuelId)
(declare-const fuel%vstd.set.axiom_set_new. FuelId)
(declare-const fuel%vstd.set.axiom_set_insert_same. FuelId)
(declare-const fuel%vstd.set.axiom_set_insert_different. FuelId)
(declare-const fuel%vstd.set.axiom_set_remove_same. FuelId)
(declare-const fuel%vstd.set.axiom_set_remove_insert. FuelId)
(declare-const fuel%vstd.set.axiom_set_remove_different. FuelId)
(declare-const fuel%vstd.set.axiom_set_union. FuelId)
(declare-const fuel%vstd.set.axiom_set_intersect. FuelId)
(declare-const fuel%vstd.set.axiom_set_difference. FuelId)
(declare-const fuel%vstd.set.axiom_set_complement. FuelId)
(declare-const fuel%vstd.set.axiom_set_ext_equal. FuelId)
(declare-const fuel%vstd.set.axiom_set_ext_equal_deep. FuelId)
(declare-const fuel%vstd.set.axiom_mk_map_domain. FuelId)
(declare-const fuel%vstd.set.axiom_mk_map_index. FuelId)
(declare-const fuel%vstd.set.axiom_set_empty_finite. FuelId)
(declare-const fuel%vstd.set.axiom_set_insert_finite. FuelId)
(declare-const fuel%vstd.set.axiom_set_remove_finite. FuelId)
(declare-const fuel%vstd.set.axiom_set_union_finite. FuelId)
(declare-const fuel%vstd.set.axiom_set_intersect_finite. FuelId)
(declare-const fuel%vstd.set.axiom_set_difference_finite. FuelId)
(declare-const fuel%vstd.set.axiom_set_choose_finite. FuelId)
(declare-const fuel%vstd.set.axiom_set_empty_len. FuelId)
(declare-const fuel%vstd.set.axiom_set_insert_len. FuelId)
(declare-const fuel%vstd.set.axiom_set_remove_len. FuelId)
(declare-const fuel%vstd.set.axiom_set_contains_len. FuelId)
(declare-const fuel%vstd.set.axiom_set_choose_len. FuelId)
(declare-const fuel%vstd.set_lib.impl&%0.is_full. FuelId)
(declare-const fuel%vstd.set_lib.impl&%0.is_empty. FuelId)
(declare-const fuel%vstd.set_lib.check_argument_is_set. FuelId)
(declare-const fuel%vstd.map.group_map_axioms. FuelId)
(declare-const fuel%vstd.set.group_set_axioms. FuelId)
(assert
 (distinct fuel%vstd.map.impl&%0.new. fuel%vstd.map.impl&%0.spec_index. fuel%vstd.map.impl&%0.len.
  fuel%vstd.map.axiom_map_index_decreases_finite. fuel%vstd.map.axiom_map_index_decreases_infinite.
  fuel%vstd.map.axiom_map_remove_domain. fuel%vstd.map.axiom_map_remove_different.
  fuel%vstd.map.axiom_map_ext_equal. fuel%vstd.map.axiom_map_ext_equal_deep. fuel%vstd.map_lib.impl&%0.is_full.
  fuel%vstd.map_lib.impl&%0.is_empty. fuel%vstd.map_lib.impl&%0.contains_key. fuel%vstd.map_lib.impl&%0.contains_value.
  fuel%vstd.map_lib.impl&%0.values. fuel%vstd.map_lib.impl&%0.contains_pair. fuel%vstd.map_lib.impl&%0.submap_of.
  fuel%vstd.map_lib.impl&%0.spec_le. fuel%vstd.map_lib.impl&%0.le. fuel%vstd.map_lib.impl&%0.union_prefer_right.
  fuel%vstd.map_lib.impl&%0.remove_keys. fuel%vstd.map_lib.impl&%0.restrict. fuel%vstd.map_lib.impl&%0.is_equal_on_key.
  fuel%vstd.map_lib.impl&%0.agrees. fuel%vstd.map_lib.impl&%0.map_entries. fuel%vstd.map_lib.impl&%0.map_values.
  fuel%vstd.map_lib.impl&%0.is_injective. fuel%vstd.map_lib.impl&%0.invert. fuel%vstd.map_lib.impl&%1.is_monotonic.
  fuel%vstd.map_lib.impl&%1.is_monotonic_from. fuel%vstd.set.impl&%0.full. fuel%vstd.set.impl&%0.spec_add.
  fuel%vstd.set.impl&%0.choose. fuel%vstd.set.impl&%0.disjoint. fuel%vstd.set.axiom_set_empty.
  fuel%vstd.set.axiom_set_new. fuel%vstd.set.axiom_set_insert_same. fuel%vstd.set.axiom_set_insert_different.
  fuel%vstd.set.axiom_set_remove_same. fuel%vstd.set.axiom_set_remove_insert. fuel%vstd.set.axiom_set_remove_different.
  fuel%vstd.set.axiom_set_union. fuel%vstd.set.axiom_set_intersect. fuel%vstd.set.axiom_set_difference.
  fuel%vstd.set.axiom_set_complement. fuel%vstd.set.axiom_set_ext_equal. fuel%vstd.set.axiom_set_ext_equal_deep.
  fuel%vstd.set.axiom_mk_map_domain. fuel%vstd.set.axiom_mk_map_index. fuel%vstd.set.axiom_set_empty_finite.
  fuel%vstd.set.axiom_set_insert_finite. fuel%vstd.set.axiom_set_remove_finite. fuel%vstd.set.axiom_set_union_finite.
  fuel%vstd.set.axiom_set_intersect_finite. fuel%vstd.set.axiom_set_difference_finite.
  fuel%vstd.set.axiom_set_choose_finite. fuel%vstd.set.axiom_set_empty_len. fuel%vstd.set.axiom_set_insert_len.
  fuel%vstd.set.axiom_set_remove_len. fuel%vstd.set.axiom_set_contains_len. fuel%vstd.set.axiom_set_choose_len.
  fuel%vstd.set_lib.impl&%0.is_full. fuel%vstd.set_lib.impl&%0.is_empty. fuel%vstd.set_lib.check_argument_is_set.
  fuel%vstd.map.group_map_axioms. fuel%vstd.set.group_set_axioms.
))
(assert
 (=>
  (fuel_bool_default fuel%vstd.map.group_map_axioms.)
  (and
   (fuel_bool_default fuel%vstd.map.axiom_map_index_decreases_finite.)
   (fuel_bool_default fuel%vstd.map.axiom_map_index_decreases_infinite.)
   (fuel_bool_default fuel%vstd.map.axiom_map_remove_domain.)
   (fuel_bool_default fuel%vstd.map.axiom_map_remove_different.)
   (fuel_bool_default fuel%vstd.map.axiom_map_ext_equal.)
   (fuel_bool_default fuel%vstd.map.axiom_map_ext_equal_deep.)
)))
(assert
 (=>
  (fuel_bool_default fuel%vstd.set.group_set_axioms.)
  (and
   (fuel_bool_default fuel%vstd.set.axiom_set_empty.)
   (fuel_bool_default fuel%vstd.set.axiom_set_new.)
   (fuel_bool_default fuel%vstd.set.axiom_set_insert_same.)
   (fuel_bool_default fuel%vstd.set.axiom_set_insert_different.)
   (fuel_bool_default fuel%vstd.set.axiom_set_remove_same.)
   (fuel_bool_default fuel%vstd.set.axiom_set_remove_insert.)
   (fuel_bool_default fuel%vstd.set.axiom_set_remove_different.)
   (fuel_bool_default fuel%vstd.set.axiom_set_union.)
   (fuel_bool_default fuel%vstd.set.axiom_set_intersect.)
   (fuel_bool_default fuel%vstd.set.axiom_set_difference.)
   (fuel_bool_default fuel%vstd.set.axiom_set_complement.)
   (fuel_bool_default fuel%vstd.set.axiom_set_ext_equal.)
   (fuel_bool_default fuel%vstd.set.axiom_set_ext_equal_deep.)
   (fuel_bool_default fuel%vstd.set.axiom_mk_map_domain.)
   (fuel_bool_default fuel%vstd.set.axiom_mk_map_index.)
   (fuel_bool_default fuel%vstd.set.axiom_set_empty_finite.)
   (fuel_bool_default fuel%vstd.set.axiom_set_insert_finite.)
   (fuel_bool_default fuel%vstd.set.axiom_set_remove_finite.)
   (fuel_bool_default fuel%vstd.set.axiom_set_union_finite.)
   (fuel_bool_default fuel%vstd.set.axiom_set_intersect_finite.)
   (fuel_bool_default fuel%vstd.set.axiom_set_difference_finite.)
   (fuel_bool_default fuel%vstd.set.axiom_set_choose_finite.)
   (fuel_bool_default fuel%vstd.set.axiom_set_empty_len.)
   (fuel_bool_default fuel%vstd.set.axiom_set_insert_len.)
   (fuel_bool_default fuel%vstd.set.axiom_set_remove_len.)
   (fuel_bool_default fuel%vstd.set.axiom_set_contains_len.)
   (fuel_bool_default fuel%vstd.set.axiom_set_choose_len.)
)))
(assert
 (and
  (fuel_bool_default fuel%vstd.map.group_map_axioms.)
  (fuel_bool_default fuel%vstd.set.group_set_axioms.)
))

;; Datatypes
(declare-sort vstd.map.Map<int./int.>. 0)
(declare-sort vstd.set.Set<int.>. 0)
(declare-datatypes ((tuple%0. 0)) (((tuple%0./tuple%0))))
(declare-fun TYPE%fun%1. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%fun%2. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.map.Map. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.set.Set. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%fun%1. (%%Function%%) Poly)
(declare-fun %Poly%fun%1. (Poly) %%Function%%)
(declare-fun Poly%fun%2. (%%Function%%) Poly)
(declare-fun %Poly%fun%2. (Poly) %%Function%%)
(declare-fun Poly%vstd.map.Map<int./int.>. (vstd.map.Map<int./int.>.) Poly)
(declare-fun %Poly%vstd.map.Map<int./int.>. (Poly) vstd.map.Map<int./int.>.)
(declare-fun Poly%vstd.set.Set<int.>. (vstd.set.Set<int.>.) Poly)
(declare-fun %Poly%vstd.set.Set<int.>. (Poly) vstd.set.Set<int.>.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(assert
 (forall ((x %%Function%%)) (!
   (= x (%Poly%fun%1. (Poly%fun%1. x)))
   :pattern ((Poly%fun%1. x))
   :qid internal_crate__fun__1_box_axiom_definition
   :skolemid skolem_internal_crate__fun__1_box_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%fun%1. T%0&. T%0& T%1&. T%1&))
    (= x (Poly%fun%1. (%Poly%fun%1. x)))
   )
   :pattern ((has_type x (TYPE%fun%1. T%0&. T%0& T%1&. T%1&)))
   :qid internal_crate__fun__1_unbox_axiom_definition
   :skolemid skolem_internal_crate__fun__1_unbox_axiom_definition
)))
(declare-fun %%apply%%0 (%%Function%% Poly) Poly)
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (x %%Function%%)) (!
   (=>
    (forall ((T%0 Poly)) (!
      (=>
       (has_type T%0 T%0&)
       (has_type (%%apply%%0 x T%0) T%1&)
      )
      :pattern ((has_type (%%apply%%0 x T%0) T%1&))
      :qid internal_crate__fun__1_constructor_inner_definition
      :skolemid skolem_internal_crate__fun__1_constructor_inner_definition
    ))
    (has_type (Poly%fun%1. (mk_fun x)) (TYPE%fun%1. T%0&. T%0& T%1&. T%1&))
   )
   :pattern ((has_type (Poly%fun%1. (mk_fun x)) (TYPE%fun%1. T%0&. T%0& T%1&. T%1&)))
   :qid internal_crate__fun__1_constructor_definition
   :skolemid skolem_internal_crate__fun__1_constructor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%0 Poly) (x %%Function%%))
  (!
   (=>
    (and
     (has_type (Poly%fun%1. x) (TYPE%fun%1. T%0&. T%0& T%1&. T%1&))
     (has_type T%0 T%0&)
    )
    (has_type (%%apply%%0 x T%0) T%1&)
   )
   :pattern ((%%apply%%0 x T%0) (has_type (Poly%fun%1. x) (TYPE%fun%1. T%0&. T%0& T%1&.
      T%1&
   )))
   :qid internal_crate__fun__1_apply_definition
   :skolemid skolem_internal_crate__fun__1_apply_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%0 Poly) (x %%Function%%))
  (!
   (=>
    (and
     (has_type (Poly%fun%1. x) (TYPE%fun%1. T%0&. T%0& T%1&. T%1&))
     (has_type T%0 T%0&)
    )
    (height_lt (height (%%apply%%0 x T%0)) (height (fun_from_recursive_field (Poly%fun%1.
        (mk_fun x)
   )))))
   :pattern ((height (%%apply%%0 x T%0)) (has_type (Poly%fun%1. x) (TYPE%fun%1. T%0&. T%0&
      T%1&. T%1&
   )))
   :qid internal_crate__fun__1_height_apply_definition
   :skolemid skolem_internal_crate__fun__1_height_apply_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (deep Bool) (x Poly) (y Poly))
  (!
   (=>
    (and
     (has_type x (TYPE%fun%1. T%0&. T%0& T%1&. T%1&))
     (has_type y (TYPE%fun%1. T%0&. T%0& T%1&. T%1&))
     (forall ((T%0 Poly)) (!
       (=>
        (has_type T%0 T%0&)
        (ext_eq deep T%1& (%%apply%%0 (%Poly%fun%1. x) T%0) (%%apply%%0 (%Poly%fun%1. y) T%0))
       )
       :pattern ((ext_eq deep T%1& (%%apply%%0 (%Poly%fun%1. x) T%0) (%%apply%%0 (%Poly%fun%1.
           y
          ) T%0
       )))
       :qid internal_crate__fun__1_inner_ext_equal_definition
       :skolemid skolem_internal_crate__fun__1_inner_ext_equal_definition
    )))
    (ext_eq deep (TYPE%fun%1. T%0&. T%0& T%1&. T%1&) x y)
   )
   :pattern ((ext_eq deep (TYPE%fun%1. T%0&. T%0& T%1&. T%1&) x y))
   :qid internal_crate__fun__1_ext_equal_definition
   :skolemid skolem_internal_crate__fun__1_ext_equal_definition
)))
(assert
 (forall ((x %%Function%%)) (!
   (= x (%Poly%fun%2. (Poly%fun%2. x)))
   :pattern ((Poly%fun%2. x))
   :qid internal_crate__fun__2_box_axiom_definition
   :skolemid skolem_internal_crate__fun__2_box_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (x
    Poly
   )
  ) (!
   (=>
    (has_type x (TYPE%fun%2. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
    (= x (Poly%fun%2. (%Poly%fun%2. x)))
   )
   :pattern ((has_type x (TYPE%fun%2. T%0&. T%0& T%1&. T%1& T%2&. T%2&)))
   :qid internal_crate__fun__2_unbox_axiom_definition
   :skolemid skolem_internal_crate__fun__2_unbox_axiom_definition
)))
(declare-fun %%apply%%1 (%%Function%% Poly Poly) Poly)
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (x
    %%Function%%
   )
  ) (!
   (=>
    (forall ((T%0 Poly) (T%1 Poly)) (!
      (=>
       (and
        (has_type T%0 T%0&)
        (has_type T%1 T%1&)
       )
       (has_type (%%apply%%1 x T%0 T%1) T%2&)
      )
      :pattern ((has_type (%%apply%%1 x T%0 T%1) T%2&))
      :qid internal_crate__fun__2_constructor_inner_definition
      :skolemid skolem_internal_crate__fun__2_constructor_inner_definition
    ))
    (has_type (Poly%fun%2. (mk_fun x)) (TYPE%fun%2. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
   )
   :pattern ((has_type (Poly%fun%2. (mk_fun x)) (TYPE%fun%2. T%0&. T%0& T%1&. T%1& T%2&.
      T%2&
   )))
   :qid internal_crate__fun__2_constructor_definition
   :skolemid skolem_internal_crate__fun__2_constructor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%0
    Poly
   ) (T%1 Poly) (x %%Function%%)
  ) (!
   (=>
    (and
     (has_type (Poly%fun%2. x) (TYPE%fun%2. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
     (has_type T%0 T%0&)
     (has_type T%1 T%1&)
    )
    (has_type (%%apply%%1 x T%0 T%1) T%2&)
   )
   :pattern ((%%apply%%1 x T%0 T%1) (has_type (Poly%fun%2. x) (TYPE%fun%2. T%0&. T%0& T%1&.
      T%1& T%2&. T%2&
   )))
   :qid internal_crate__fun__2_apply_definition
   :skolemid skolem_internal_crate__fun__2_apply_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%0
    Poly
   ) (T%1 Poly) (x %%Function%%)
  ) (!
   (=>
    (and
     (has_type (Poly%fun%2. x) (TYPE%fun%2. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
     (has_type T%0 T%0&)
     (has_type T%1 T%1&)
    )
    (height_lt (height (%%apply%%1 x T%0 T%1)) (height (fun_from_recursive_field (Poly%fun%2.
        (mk_fun x)
   )))))
   :pattern ((height (%%apply%%1 x T%0 T%1)) (has_type (Poly%fun%2. x) (TYPE%fun%2. T%0&.
      T%0& T%1&. T%1& T%2&. T%2&
   )))
   :qid internal_crate__fun__2_height_apply_definition
   :skolemid skolem_internal_crate__fun__2_height_apply_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (deep
    Bool
   ) (x Poly) (y Poly)
  ) (!
   (=>
    (and
     (has_type x (TYPE%fun%2. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
     (has_type y (TYPE%fun%2. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
     (forall ((T%0 Poly) (T%1 Poly)) (!
       (=>
        (and
         (has_type T%0 T%0&)
         (has_type T%1 T%1&)
        )
        (ext_eq deep T%2& (%%apply%%1 (%Poly%fun%2. x) T%0 T%1) (%%apply%%1 (%Poly%fun%2. y)
          T%0 T%1
       )))
       :pattern ((ext_eq deep T%2& (%%apply%%1 (%Poly%fun%2. x) T%0 T%1) (%%apply%%1 (%Poly%fun%2.
           y
          ) T%0 T%1
       )))
       :qid internal_crate__fun__2_inner_ext_equal_definition
       :skolemid skolem_internal_crate__fun__2_inner_ext_equal_definition
    )))
    (ext_eq deep (TYPE%fun%2. T%0&. T%0& T%1&. T%1& T%2&. T%2&) x y)
   )
   :pattern ((ext_eq deep (TYPE%fun%2. T%0&. T%0& T%1&. T%1& T%2&. T%2&) x y))
   :qid internal_crate__fun__2_ext_equal_definition
   :skolemid skolem_internal_crate__fun__2_ext_equal_definition
)))
(assert
 (forall ((x vstd.map.Map<int./int.>.)) (!
   (= x (%Poly%vstd.map.Map<int./int.>. (Poly%vstd.map.Map<int./int.>. x)))
   :pattern ((Poly%vstd.map.Map<int./int.>. x))
   :qid internal_crate__vstd__map__Map<int./int.>_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__map__Map<int./int.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.map.Map. $ INT $ INT))
    (= x (Poly%vstd.map.Map<int./int.>. (%Poly%vstd.map.Map<int./int.>. x)))
   )
   :pattern ((has_type x (TYPE%vstd.map.Map. $ INT $ INT)))
   :qid internal_crate__vstd__map__Map<int./int.>_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__map__Map<int./int.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.map.Map<int./int.>.)) (!
   (has_type (Poly%vstd.map.Map<int./int.>. x) (TYPE%vstd.map.Map. $ INT $ INT))
   :pattern ((has_type (Poly%vstd.map.Map<int./int.>. x) (TYPE%vstd.map.Map. $ INT $ INT)))
   :qid internal_crate__vstd__map__Map<int./int.>_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__map__Map<int./int.>_has_type_always_definition
)))
(assert
 (forall ((x vstd.set.Set<int.>.)) (!
   (= x (%Poly%vstd.set.Set<int.>. (Poly%vstd.set.Set<int.>. x)))
   :pattern ((Poly%vstd.set.Set<int.>. x))
   :qid internal_crate__vstd__set__Set<int.>_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__set__Set<int.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.set.Set. $ INT))
    (= x (Poly%vstd.set.Set<int.>. (%Poly%vstd.set.Set<int.>. x)))
   )
   :pattern ((has_type x (TYPE%vstd.set.Set. $ INT)))
   :qid internal_crate__vstd__set__Set<int.>_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__set__Set<int.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.set.Set<int.>.)) (!
   (has_type (Poly%vstd.set.Set<int.>. x) (TYPE%vstd.set.Set. $ INT))
   :pattern ((has_type (Poly%vstd.set.Set<int.>. x) (TYPE%vstd.set.Set. $ INT)))
   :qid internal_crate__vstd__set__Set<int.>_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__set__Set<int.>_has_type_always_definition
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

;; Function-Decl crate::vstd::set::Set::finite
(declare-fun vstd.set.impl&%0.finite.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::set::Set::len
(declare-fun vstd.set.impl&%0.len.? (Dcr Type Poly) Int)

;; Function-Decl crate::vstd::set::Set::contains
(declare-fun vstd.set.impl&%0.contains.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::set::Set::empty
(declare-fun vstd.set.impl&%0.empty.? (Dcr Type) Poly)

;; Function-Decl crate::vstd::set::Set::new
(declare-fun vstd.set.impl&%0.new.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::set::Set::insert
(declare-fun vstd.set.impl&%0.insert.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::set::Set::remove
(declare-fun vstd.set.impl&%0.remove.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::set::Set::union
(declare-fun vstd.set.impl&%0.union.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::set::Set::intersect
(declare-fun vstd.set.impl&%0.intersect.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::set::Set::difference
(declare-fun vstd.set.impl&%0.difference.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::set::Set::complement
(declare-fun vstd.set.impl&%0.complement.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::map::Map::dom
(declare-fun vstd.map.impl&%0.dom.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::set::Set::mk_map
(declare-fun vstd.set.impl&%0.mk_map.? (Dcr Type Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::map::Map::index
(declare-fun vstd.map.impl&%0.index.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::map::Map::spec_index
(declare-fun vstd.map.impl&%0.spec_index.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::set::Set::choose
(declare-fun vstd.set.impl&%0.choose.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::set::Set::is_empty
(declare-fun vstd.set_lib.impl&%0.is_empty.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::map::Map::remove
(declare-fun vstd.map.impl&%0.remove.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::map::Map::new
(declare-fun vstd.map.impl&%0.new.? (Dcr Type Dcr Type Dcr Type Dcr Type Poly Poly)
 Poly
)

;; Function-Decl crate::vstd::map::Map::remove_keys
(declare-fun vstd.map_lib.impl&%0.remove_keys.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::map::Map::restrict
(declare-fun vstd.map_lib.impl&%0.restrict.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::map::Map::union_prefer_right
(declare-fun vstd.map_lib.impl&%0.union_prefer_right.? (Dcr Type Dcr Type Poly Poly)
 Poly
)

;; Function-Decl crate::vstd::set::Set::spec_add
(declare-fun vstd.set.impl&%0.spec_add.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::map::Map::submap_of
(declare-fun vstd.map_lib.impl&%0.submap_of.? (Dcr Type Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::set::Set::disjoint
(declare-fun vstd.set.impl&%0.disjoint.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::set::Set::full
(declare-fun vstd.set.impl&%0.full.? (Dcr Type) Poly)

;; Function-Decl crate::vstd::map::Map::len
(declare-fun vstd.map.impl&%0.len.? (Dcr Type Dcr Type Poly) Int)

;; Function-Decl crate::vstd::set::Set::is_full
(declare-fun vstd.set_lib.impl&%0.is_full.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::map::Map::is_full
(declare-fun vstd.map_lib.impl&%0.is_full.? (Dcr Type Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::map::Map::is_empty
(declare-fun vstd.map_lib.impl&%0.is_empty.? (Dcr Type Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::map::Map::contains_key
(declare-fun vstd.map_lib.impl&%0.contains_key.? (Dcr Type Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::map::Map::contains_value
(declare-fun vstd.map_lib.impl&%0.contains_value.? (Dcr Type Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::map::Map::values
(declare-fun vstd.map_lib.impl&%0.values.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::map::Map::contains_pair
(declare-fun vstd.map_lib.impl&%0.contains_pair.? (Dcr Type Dcr Type Poly Poly Poly)
 Bool
)

;; Function-Decl crate::vstd::map::Map::spec_le
(declare-fun vstd.map_lib.impl&%0.spec_le.? (Dcr Type Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::map::Map::le
(declare-fun vstd.map_lib.impl&%0.le.? (Dcr Type Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::map::Map::is_equal_on_key
(declare-fun vstd.map_lib.impl&%0.is_equal_on_key.? (Dcr Type Dcr Type Poly Poly Poly)
 Bool
)

;; Function-Decl crate::vstd::map::Map::agrees
(declare-fun vstd.map_lib.impl&%0.agrees.? (Dcr Type Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::map::Map::map_entries
(declare-fun vstd.map_lib.impl&%0.map_entries.? (Dcr Type Dcr Type Dcr Type Poly Poly)
 Poly
)

;; Function-Decl crate::vstd::map::Map::map_values
(declare-fun vstd.map_lib.impl&%0.map_values.? (Dcr Type Dcr Type Dcr Type Poly Poly)
 Poly
)

;; Function-Decl crate::vstd::map::Map::is_injective
(declare-fun vstd.map_lib.impl&%0.is_injective.? (Dcr Type Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::map::Map::invert
(declare-fun vstd.map_lib.impl&%0.invert.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::map::Map::is_monotonic
(declare-fun vstd.map_lib.impl&%1.is_monotonic.? (Poly) Bool)

;; Function-Decl crate::vstd::map::Map::is_monotonic_from
(declare-fun vstd.map_lib.impl&%1.is_monotonic_from.? (Poly Poly) Bool)

;; Function-Decl crate::vstd::set_lib::check_argument_is_set
(declare-fun vstd.set_lib.check_argument_is_set.? (Dcr Type Poly) Poly)

;; Function-Axioms crate::vstd::set::Set::len
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.set.Set. A&. A&))
    (<= 0 (vstd.set.impl&%0.len.? A&. A& self!))
   )
   :pattern ((vstd.set.impl&%0.len.? A&. A& self!))
   :qid internal_vstd.set.impl&__0.len.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.len.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::set::Set::empty
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (has_type (vstd.set.impl&%0.empty.? A&. A&) (TYPE%vstd.set.Set. A&. A&))
   :pattern ((vstd.set.impl&%0.empty.? A&. A&))
   :qid internal_vstd.set.impl&__0.empty.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.empty.?_pre_post_definition
)))

;; Broadcast crate::vstd::set::axiom_set_empty
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_empty.)
  (forall ((A&. Dcr) (A& Type) (a! Poly)) (!
    (=>
     (has_type a! A&)
     (not (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.empty.? A&. A&) a!))
    )
    :pattern ((vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.empty.? A&. A&) a!))
    :qid user_crate__vstd__set__axiom_set_empty_0
    :skolemid skolem_user_crate__vstd__set__axiom_set_empty_0
))))

;; Function-Axioms crate::vstd::set::Set::new
(assert
 (forall ((A&. Dcr) (A& Type) (F&. Dcr) (F& Type) (f! Poly)) (!
   (=>
    (has_type f! F&)
    (has_type (vstd.set.impl&%0.new.? A&. A& F&. F& f!) (TYPE%vstd.set.Set. A&. A&))
   )
   :pattern ((vstd.set.impl&%0.new.? A&. A& F&. F& f!))
   :qid internal_vstd.set.impl&__0.new.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.new.?_pre_post_definition
)))

;; Broadcast crate::vstd::set::axiom_set_new
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_new.)
  (forall ((A&. Dcr) (A& Type) (f! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type f! (TYPE%fun%1. A&. A& $ BOOL))
      (has_type a! A&)
     )
     (= (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.new.? A&. A& $ (TYPE%fun%1.
         A&. A& $ BOOL
        ) f!
       ) a!
      ) (%B (%%apply%%0 (%Poly%fun%1. f!) a!))
    ))
    :pattern ((vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.new.? A&. A& $ (TYPE%fun%1.
        A&. A& $ BOOL
       ) f!
      ) a!
    ))
    :qid user_crate__vstd__set__axiom_set_new_1
    :skolemid skolem_user_crate__vstd__set__axiom_set_new_1
))))

;; Function-Axioms crate::vstd::set::Set::insert
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (a! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type a! A&)
    )
    (has_type (vstd.set.impl&%0.insert.? A&. A& self! a!) (TYPE%vstd.set.Set. A&. A&))
   )
   :pattern ((vstd.set.impl&%0.insert.? A&. A& self! a!))
   :qid internal_vstd.set.impl&__0.insert.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.insert.?_pre_post_definition
)))

;; Broadcast crate::vstd::set::axiom_set_insert_same
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_insert_same.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.insert.? A&. A& s! a!) a!)
    )
    :pattern ((vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.insert.? A&. A& s! a!)
      a!
    ))
    :qid user_crate__vstd__set__axiom_set_insert_same_2
    :skolemid skolem_user_crate__vstd__set__axiom_set_insert_same_2
))))

;; Broadcast crate::vstd::set::axiom_set_insert_different
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_insert_different.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a1! Poly) (a2! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a1! A&)
      (has_type a2! A&)
     )
     (=>
      (not (= a1! a2!))
      (= (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.insert.? A&. A& s! a2!) a1!)
       (vstd.set.impl&%0.contains.? A&. A& s! a1!)
    )))
    :pattern ((vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.insert.? A&. A& s! a2!)
      a1!
    ))
    :qid user_crate__vstd__set__axiom_set_insert_different_3
    :skolemid skolem_user_crate__vstd__set__axiom_set_insert_different_3
))))

;; Function-Axioms crate::vstd::set::Set::remove
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (a! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type a! A&)
    )
    (has_type (vstd.set.impl&%0.remove.? A&. A& self! a!) (TYPE%vstd.set.Set. A&. A&))
   )
   :pattern ((vstd.set.impl&%0.remove.? A&. A& self! a!))
   :qid internal_vstd.set.impl&__0.remove.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.remove.?_pre_post_definition
)))

;; Broadcast crate::vstd::set::axiom_set_remove_same
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_remove_same.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (not (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s! a!) a!))
    )
    :pattern ((vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s! a!)
      a!
    ))
    :qid user_crate__vstd__set__axiom_set_remove_same_4
    :skolemid skolem_user_crate__vstd__set__axiom_set_remove_same_4
))))

;; Broadcast crate::vstd::set::axiom_set_remove_insert
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_remove_insert.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (=>
      (vstd.set.impl&%0.contains.? A&. A& s! a!)
      (= (vstd.set.impl&%0.insert.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s! a!) a!)
       s!
    )))
    :pattern ((vstd.set.impl&%0.remove.? A&. A& s! a!))
    :qid user_crate__vstd__set__axiom_set_remove_insert_5
    :skolemid skolem_user_crate__vstd__set__axiom_set_remove_insert_5
))))

;; Broadcast crate::vstd::set::axiom_set_remove_different
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_remove_different.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a1! Poly) (a2! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a1! A&)
      (has_type a2! A&)
     )
     (=>
      (not (= a1! a2!))
      (= (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s! a2!) a1!)
       (vstd.set.impl&%0.contains.? A&. A& s! a1!)
    )))
    :pattern ((vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s! a2!)
      a1!
    ))
    :qid user_crate__vstd__set__axiom_set_remove_different_6
    :skolemid skolem_user_crate__vstd__set__axiom_set_remove_different_6
))))

;; Function-Axioms crate::vstd::set::Set::union
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type s2! (TYPE%vstd.set.Set. A&. A&))
    )
    (has_type (vstd.set.impl&%0.union.? A&. A& self! s2!) (TYPE%vstd.set.Set. A&. A&))
   )
   :pattern ((vstd.set.impl&%0.union.? A&. A& self! s2!))
   :qid internal_vstd.set.impl&__0.union.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.union.?_pre_post_definition
)))

;; Broadcast crate::vstd::set::axiom_set_union
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_union.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd.set.Set. A&. A&))
      (has_type s2! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (= (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.union.? A&. A& s1! s2!) a!)
      (or
       (vstd.set.impl&%0.contains.? A&. A& s1! a!)
       (vstd.set.impl&%0.contains.? A&. A& s2! a!)
    )))
    :pattern ((vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.union.? A&. A& s1! s2!)
      a!
    ))
    :qid user_crate__vstd__set__axiom_set_union_7
    :skolemid skolem_user_crate__vstd__set__axiom_set_union_7
))))

;; Function-Axioms crate::vstd::set::Set::intersect
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type s2! (TYPE%vstd.set.Set. A&. A&))
    )
    (has_type (vstd.set.impl&%0.intersect.? A&. A& self! s2!) (TYPE%vstd.set.Set. A&. A&))
   )
   :pattern ((vstd.set.impl&%0.intersect.? A&. A& self! s2!))
   :qid internal_vstd.set.impl&__0.intersect.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.intersect.?_pre_post_definition
)))

;; Broadcast crate::vstd::set::axiom_set_intersect
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_intersect.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd.set.Set. A&. A&))
      (has_type s2! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (= (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& s1! s2!)
       a!
      ) (and
       (vstd.set.impl&%0.contains.? A&. A& s1! a!)
       (vstd.set.impl&%0.contains.? A&. A& s2! a!)
    )))
    :pattern ((vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& s1!
       s2!
      ) a!
    ))
    :qid user_crate__vstd__set__axiom_set_intersect_8
    :skolemid skolem_user_crate__vstd__set__axiom_set_intersect_8
))))

;; Function-Axioms crate::vstd::set::Set::difference
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type s2! (TYPE%vstd.set.Set. A&. A&))
    )
    (has_type (vstd.set.impl&%0.difference.? A&. A& self! s2!) (TYPE%vstd.set.Set. A&.
      A&
   )))
   :pattern ((vstd.set.impl&%0.difference.? A&. A& self! s2!))
   :qid internal_vstd.set.impl&__0.difference.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.difference.?_pre_post_definition
)))

;; Broadcast crate::vstd::set::axiom_set_difference
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_difference.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd.set.Set. A&. A&))
      (has_type s2! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (= (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.difference.? A&. A& s1! s2!)
       a!
      ) (and
       (vstd.set.impl&%0.contains.? A&. A& s1! a!)
       (not (vstd.set.impl&%0.contains.? A&. A& s2! a!))
    )))
    :pattern ((vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.difference.? A&. A&
       s1! s2!
      ) a!
    ))
    :qid user_crate__vstd__set__axiom_set_difference_9
    :skolemid skolem_user_crate__vstd__set__axiom_set_difference_9
))))

;; Function-Axioms crate::vstd::set::Set::complement
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.set.Set. A&. A&))
    (has_type (vstd.set.impl&%0.complement.? A&. A& self!) (TYPE%vstd.set.Set. A&. A&))
   )
   :pattern ((vstd.set.impl&%0.complement.? A&. A& self!))
   :qid internal_vstd.set.impl&__0.complement.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.complement.?_pre_post_definition
)))

;; Broadcast crate::vstd::set::axiom_set_complement
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_complement.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (= (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.complement.? A&. A& s!) a!)
      (not (vstd.set.impl&%0.contains.? A&. A& s! a!))
    ))
    :pattern ((vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.complement.? A&. A&
       s!
      ) a!
    ))
    :qid user_crate__vstd__set__axiom_set_complement_10
    :skolemid skolem_user_crate__vstd__set__axiom_set_complement_10
))))

;; Broadcast crate::vstd::set::axiom_set_ext_equal
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_ext_equal.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd.set.Set. A&. A&))
      (has_type s2! (TYPE%vstd.set.Set. A&. A&))
     )
     (= (ext_eq false (TYPE%vstd.set.Set. A&. A&) s1! s2!) (forall ((a$ Poly)) (!
        (=>
         (has_type a$ A&)
         (= (vstd.set.impl&%0.contains.? A&. A& s1! a$) (vstd.set.impl&%0.contains.? A&. A&
           s2! a$
        )))
        :pattern ((vstd.set.impl&%0.contains.? A&. A& s1! a$))
        :pattern ((vstd.set.impl&%0.contains.? A&. A& s2! a$))
        :qid user_crate__vstd__set__axiom_set_ext_equal_11
        :skolemid skolem_user_crate__vstd__set__axiom_set_ext_equal_11
    ))))
    :pattern ((ext_eq false (TYPE%vstd.set.Set. A&. A&) s1! s2!))
    :qid user_crate__vstd__set__axiom_set_ext_equal_12
    :skolemid skolem_user_crate__vstd__set__axiom_set_ext_equal_12
))))

;; Broadcast crate::vstd::set::axiom_set_ext_equal_deep
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_ext_equal_deep.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd.set.Set. A&. A&))
      (has_type s2! (TYPE%vstd.set.Set. A&. A&))
     )
     (= (ext_eq true (TYPE%vstd.set.Set. A&. A&) s1! s2!) (ext_eq false (TYPE%vstd.set.Set.
        A&. A&
       ) s1! s2!
    )))
    :pattern ((ext_eq true (TYPE%vstd.set.Set. A&. A&) s1! s2!))
    :qid user_crate__vstd__set__axiom_set_ext_equal_deep_13
    :skolemid skolem_user_crate__vstd__set__axiom_set_ext_equal_deep_13
))))

;; Function-Axioms crate::vstd::map::Map::dom
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
    (has_type (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) (TYPE%vstd.set.Set. K&. K&))
   )
   :pattern ((vstd.map.impl&%0.dom.? K&. K& V&. V& self!))
   :qid internal_vstd.map.impl&__0.dom.?_pre_post_definition
   :skolemid skolem_internal_vstd.map.impl&__0.dom.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::set::Set::mk_map
(assert
 (forall ((A&. Dcr) (A& Type) (V&. Dcr) (V& Type) (F&. Dcr) (F& Type) (self! Poly) (
    f! Poly
   )
  ) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type f! F&)
    )
    (has_type (vstd.set.impl&%0.mk_map.? A&. A& V&. V& F&. F& self! f!) (TYPE%vstd.map.Map.
      A&. A& V&. V&
   )))
   :pattern ((vstd.set.impl&%0.mk_map.? A&. A& V&. V& F&. F& self! f!))
   :qid internal_vstd.set.impl&__0.mk_map.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.mk_map.?_pre_post_definition
)))

;; Broadcast crate::vstd::set::axiom_mk_map_domain
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_mk_map_domain.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (s! Poly) (f! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. K&. K&))
      (has_type f! (TYPE%fun%1. K&. K& V&. V&))
     )
     (= (vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.set.impl&%0.mk_map.? K&. K& V&. V& $
        (TYPE%fun%1. K&. K& V&. V&) s! f!
       )
      ) s!
    ))
    :pattern ((vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.set.impl&%0.mk_map.? K&. K& V&.
       V& $ (TYPE%fun%1. K&. K& V&. V&) s! f!
    )))
    :qid user_crate__vstd__set__axiom_mk_map_domain_14
    :skolemid skolem_user_crate__vstd__set__axiom_mk_map_domain_14
))))

;; Function-Specs crate::vstd::map::Map::index
(declare-fun req%vstd.map.impl&%0.index. (Dcr Type Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (= (req%vstd.map.impl&%0.index. K&. K& V&. V& self! key!) (=>
     %%global_location_label%%0
     (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) key!)
   ))
   :pattern ((req%vstd.map.impl&%0.index. K&. K& V&. V& self! key!))
   :qid internal_req__vstd.map.impl&__0.index._definition
   :skolemid skolem_internal_req__vstd.map.impl&__0.index._definition
)))

;; Function-Axioms crate::vstd::map::Map::index
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (has_type key! K&)
    )
    (has_type (vstd.map.impl&%0.index.? K&. K& V&. V& self! key!) V&)
   )
   :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& self! key!))
   :qid internal_vstd.map.impl&__0.index.?_pre_post_definition
   :skolemid skolem_internal_vstd.map.impl&__0.index.?_pre_post_definition
)))

;; Function-Specs crate::vstd::map::Map::spec_index
(declare-fun req%vstd.map.impl&%0.spec_index. (Dcr Type Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (= (req%vstd.map.impl&%0.spec_index. K&. K& V&. V& self! key!) (=>
     %%global_location_label%%1
     (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) key!)
   ))
   :pattern ((req%vstd.map.impl&%0.spec_index. K&. K& V&. V& self! key!))
   :qid internal_req__vstd.map.impl&__0.spec_index._definition
   :skolemid skolem_internal_req__vstd.map.impl&__0.spec_index._definition
)))

;; Function-Axioms crate::vstd::map::Map::spec_index
(assert
 (fuel_bool_default fuel%vstd.map.impl&%0.spec_index.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.map.impl&%0.spec_index.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
    (= (vstd.map.impl&%0.spec_index.? K&. K& V&. V& self! key!) (vstd.map.impl&%0.index.?
      K&. K& V&. V& self! key!
    ))
    :pattern ((vstd.map.impl&%0.spec_index.? K&. K& V&. V& self! key!))
    :qid internal_vstd.map.impl&__0.spec_index.?_definition
    :skolemid skolem_internal_vstd.map.impl&__0.spec_index.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (has_type key! K&)
    )
    (has_type (vstd.map.impl&%0.spec_index.? K&. K& V&. V& self! key!) V&)
   )
   :pattern ((vstd.map.impl&%0.spec_index.? K&. K& V&. V& self! key!))
   :qid internal_vstd.map.impl&__0.spec_index.?_pre_post_definition
   :skolemid skolem_internal_vstd.map.impl&__0.spec_index.?_pre_post_definition
)))

;; Broadcast crate::vstd::set::axiom_mk_map_index
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_mk_map_index.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (s! Poly) (f! Poly) (key! Poly))
   (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. K&. K&))
      (has_type f! (TYPE%fun%1. K&. K& V&. V&))
      (has_type key! K&)
     )
     (=>
      (vstd.set.impl&%0.contains.? K&. K& s! key!)
      (= (vstd.map.impl&%0.index.? K&. K& V&. V& (vstd.set.impl&%0.mk_map.? K&. K& V&. V&
         $ (TYPE%fun%1. K&. K& V&. V&) s! f!
        ) key!
       ) (%%apply%%0 (%Poly%fun%1. f!) key!)
    )))
    :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& (vstd.set.impl&%0.mk_map.? K&. K&
       V&. V& $ (TYPE%fun%1. K&. K& V&. V&) s! f!
      ) key!
    ))
    :qid user_crate__vstd__set__axiom_mk_map_index_15
    :skolemid skolem_user_crate__vstd__set__axiom_mk_map_index_15
))))

;; Broadcast crate::vstd::set::axiom_set_empty_finite
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_empty_finite.)
  (forall ((A&. Dcr) (A& Type)) (!
    (vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.empty.? A&. A&))
    :pattern ((vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.empty.? A&. A&)))
    :qid user_crate__vstd__set__axiom_set_empty_finite_16
    :skolemid skolem_user_crate__vstd__set__axiom_set_empty_finite_16
))))

;; Function-Specs crate::vstd::set::axiom_set_insert_finite
(declare-fun req%vstd.set.axiom_set_insert_finite. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
   (= (req%vstd.set.axiom_set_insert_finite. A&. A& s! a!) (=>
     %%global_location_label%%2
     (vstd.set.impl&%0.finite.? A&. A& s!)
   ))
   :pattern ((req%vstd.set.axiom_set_insert_finite. A&. A& s! a!))
   :qid internal_req__vstd.set.axiom_set_insert_finite._definition
   :skolemid skolem_internal_req__vstd.set.axiom_set_insert_finite._definition
)))
(declare-fun ens%vstd.set.axiom_set_insert_finite. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
   (= (ens%vstd.set.axiom_set_insert_finite. A&. A& s! a!) (vstd.set.impl&%0.finite.?
     A&. A& (vstd.set.impl&%0.insert.? A&. A& s! a!)
   ))
   :pattern ((ens%vstd.set.axiom_set_insert_finite. A&. A& s! a!))
   :qid internal_ens__vstd.set.axiom_set_insert_finite._definition
   :skolemid skolem_internal_ens__vstd.set.axiom_set_insert_finite._definition
)))

;; Broadcast crate::vstd::set::axiom_set_insert_finite
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_insert_finite.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (=>
      (vstd.set.impl&%0.finite.? A&. A& s!)
      (vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.insert.? A&. A& s! a!))
    ))
    :pattern ((vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.insert.? A&. A& s! a!)))
    :qid user_crate__vstd__set__axiom_set_insert_finite_17
    :skolemid skolem_user_crate__vstd__set__axiom_set_insert_finite_17
))))

;; Broadcast crate::vstd::set::axiom_set_remove_finite
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_remove_finite.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (=>
      (vstd.set.impl&%0.finite.? A&. A& s!)
      (vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s! a!))
    ))
    :pattern ((vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s! a!)))
    :qid user_crate__vstd__set__axiom_set_remove_finite_18
    :skolemid skolem_user_crate__vstd__set__axiom_set_remove_finite_18
))))

;; Broadcast crate::vstd::set::axiom_set_union_finite
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_union_finite.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd.set.Set. A&. A&))
      (has_type s2! (TYPE%vstd.set.Set. A&. A&))
     )
     (=>
      (and
       (vstd.set.impl&%0.finite.? A&. A& s1!)
       (vstd.set.impl&%0.finite.? A&. A& s2!)
      )
      (vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.union.? A&. A& s1! s2!))
    ))
    :pattern ((vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.union.? A&. A& s1! s2!)))
    :qid user_crate__vstd__set__axiom_set_union_finite_19
    :skolemid skolem_user_crate__vstd__set__axiom_set_union_finite_19
))))

;; Broadcast crate::vstd::set::axiom_set_intersect_finite
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_intersect_finite.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd.set.Set. A&. A&))
      (has_type s2! (TYPE%vstd.set.Set. A&. A&))
     )
     (=>
      (or
       (vstd.set.impl&%0.finite.? A&. A& s1!)
       (vstd.set.impl&%0.finite.? A&. A& s2!)
      )
      (vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& s1! s2!))
    ))
    :pattern ((vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& s1!
       s2!
    )))
    :qid user_crate__vstd__set__axiom_set_intersect_finite_20
    :skolemid skolem_user_crate__vstd__set__axiom_set_intersect_finite_20
))))

;; Broadcast crate::vstd::set::axiom_set_difference_finite
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_difference_finite.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd.set.Set. A&. A&))
      (has_type s2! (TYPE%vstd.set.Set. A&. A&))
     )
     (=>
      (vstd.set.impl&%0.finite.? A&. A& s1!)
      (vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.difference.? A&. A& s1! s2!))
    ))
    :pattern ((vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.difference.? A&. A& s1!
       s2!
    )))
    :qid user_crate__vstd__set__axiom_set_difference_finite_21
    :skolemid skolem_user_crate__vstd__set__axiom_set_difference_finite_21
))))

;; Function-Axioms crate::vstd::set::Set::choose
(assert
 (fuel_bool_default fuel%vstd.set.impl&%0.choose.)
)
(declare-fun %%choose%%0 (Type Dcr Type Poly Dcr Type Poly) Poly)
(assert
 (forall ((%%hole%%0 Type) (%%hole%%1 Dcr) (%%hole%%2 Type) (%%hole%%3 Poly) (%%hole%%4
    Dcr
   ) (%%hole%%5 Type) (%%hole%%6 Poly)
  ) (!
   (=>
    (exists ((a$ Poly)) (!
      (and
       (has_type a$ %%hole%%0)
       (vstd.set.impl&%0.contains.? %%hole%%1 %%hole%%2 %%hole%%3 a$)
      )
      :pattern ((vstd.set.impl&%0.contains.? %%hole%%4 %%hole%%5 %%hole%%6 a$))
      :qid user_crate__vstd__set__Set__choose_22
      :skolemid skolem_user_crate__vstd__set__Set__choose_22
    ))
    (exists ((a$ Poly)) (!
      (and
       (and
        (has_type a$ %%hole%%0)
        (vstd.set.impl&%0.contains.? %%hole%%1 %%hole%%2 %%hole%%3 a$)
       )
       (= (%%choose%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5 %%hole%%6)
        a$
      ))
      :pattern ((vstd.set.impl&%0.contains.? %%hole%%4 %%hole%%5 %%hole%%6 a$))
   )))
   :pattern ((%%choose%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
     %%hole%%6
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.set.impl&%0.choose.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (= (vstd.set.impl&%0.choose.? A&. A& self!) (as_type (%%choose%%0 A& A&. A& self! A&.
       A& self!
      ) A&
    ))
    :pattern ((vstd.set.impl&%0.choose.? A&. A& self!))
    :qid internal_vstd.set.impl&__0.choose.?_definition
    :skolemid skolem_internal_vstd.set.impl&__0.choose.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.set.Set. A&. A&))
    (has_type (vstd.set.impl&%0.choose.? A&. A& self!) A&)
   )
   :pattern ((vstd.set.impl&%0.choose.? A&. A& self!))
   :qid internal_vstd.set.impl&__0.choose.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.choose.?_pre_post_definition
)))

;; Broadcast crate::vstd::set::axiom_set_choose_finite
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_choose_finite.)
  (forall ((A&. Dcr) (A& Type) (s! Poly)) (!
    (=>
     (has_type s! (TYPE%vstd.set.Set. A&. A&))
     (=>
      (not (vstd.set.impl&%0.finite.? A&. A& s!))
      (vstd.set.impl&%0.contains.? A&. A& s! (vstd.set.impl&%0.choose.? A&. A& s!))
    ))
    :pattern ((vstd.set.impl&%0.contains.? A&. A& s! (vstd.set.impl&%0.choose.? A&. A& s!)))
    :qid user_crate__vstd__set__axiom_set_choose_finite_23
    :skolemid skolem_user_crate__vstd__set__axiom_set_choose_finite_23
))))

;; Broadcast crate::vstd::set::axiom_set_empty_len
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_empty_len.)
  (forall ((A&. Dcr) (A& Type)) (!
    (= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.empty.? A&. A&)) 0)
    :pattern ((vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.empty.? A&. A&)))
    :qid user_crate__vstd__set__axiom_set_empty_len_24
    :skolemid skolem_user_crate__vstd__set__axiom_set_empty_len_24
))))

;; Broadcast crate::vstd::set::axiom_set_insert_len
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_insert_len.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (=>
      (vstd.set.impl&%0.finite.? A&. A& s!)
      (= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.insert.? A&. A& s! a!)) (Add (vstd.set.impl&%0.len.?
         A&. A& s!
        ) (ite
         (vstd.set.impl&%0.contains.? A&. A& s! a!)
         0
         1
    )))))
    :pattern ((vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.insert.? A&. A& s! a!)))
    :qid user_crate__vstd__set__axiom_set_insert_len_25
    :skolemid skolem_user_crate__vstd__set__axiom_set_insert_len_25
))))

;; Broadcast crate::vstd::set::axiom_set_remove_len
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_remove_len.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (=>
      (vstd.set.impl&%0.finite.? A&. A& s!)
      (= (vstd.set.impl&%0.len.? A&. A& s!) (Add (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.remove.?
          A&. A& s! a!
         )
        ) (ite
         (vstd.set.impl&%0.contains.? A&. A& s! a!)
         1
         0
    )))))
    :pattern ((vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s! a!)))
    :qid user_crate__vstd__set__axiom_set_remove_len_26
    :skolemid skolem_user_crate__vstd__set__axiom_set_remove_len_26
))))

;; Broadcast crate::vstd::set::axiom_set_contains_len
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_contains_len.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (=>
      (and
       (vstd.set.impl&%0.finite.? A&. A& s!)
       (vstd.set.impl&%0.contains.? A&. A& s! a!)
      )
      (not (= (vstd.set.impl&%0.len.? A&. A& s!) 0))
    ))
    :pattern ((vstd.set.impl&%0.contains.? A&. A& s! a!) (vstd.set.impl&%0.len.? A&. A&
      s!
    ))
    :qid user_crate__vstd__set__axiom_set_contains_len_27
    :skolemid skolem_user_crate__vstd__set__axiom_set_contains_len_27
))))

;; Broadcast crate::vstd::set::axiom_set_choose_len
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_choose_len.)
  (forall ((A&. Dcr) (A& Type) (s! Poly)) (!
    (=>
     (has_type s! (TYPE%vstd.set.Set. A&. A&))
     (=>
      (and
       (vstd.set.impl&%0.finite.? A&. A& s!)
       (not (= (vstd.set.impl&%0.len.? A&. A& s!) 0))
      )
      (vstd.set.impl&%0.contains.? A&. A& s! (vstd.set.impl&%0.choose.? A&. A& s!))
    ))
    :pattern ((vstd.set.impl&%0.len.? A&. A& s!) (vstd.set.impl&%0.contains.? A&. A& s!
      (vstd.set.impl&%0.choose.? A&. A& s!)
    ))
    :qid user_crate__vstd__set__axiom_set_choose_len_28
    :skolemid skolem_user_crate__vstd__set__axiom_set_choose_len_28
))))

;; Function-Axioms crate::vstd::set::Set::is_empty
(assert
 (fuel_bool_default fuel%vstd.set_lib.impl&%0.is_empty.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.set_lib.impl&%0.is_empty.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (= (vstd.set_lib.impl&%0.is_empty.? A&. A& self!) (= (vstd.set.impl&%0.len.? A&. A&
       self!
      ) 0
    ))
    :pattern ((vstd.set_lib.impl&%0.is_empty.? A&. A& self!))
    :qid internal_vstd.set_lib.impl&__0.is_empty.?_definition
    :skolemid skolem_internal_vstd.set_lib.impl&__0.is_empty.?_definition
))))

;; Broadcast crate::vstd::map::axiom_map_index_decreases_finite
(assert
 (=>
  (fuel_bool fuel%vstd.map.axiom_map_index_decreases_finite.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (key! Poly)) (!
    (=>
     (and
      (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
      (has_type key! K&)
     )
     (=>
      (and
       (vstd.set.impl&%0.finite.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!))
       (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!) key!)
      )
      (height_lt (height (vstd.map.impl&%0.index.? K&. K& V&. V& m! key!)) (height m!))
    ))
    :pattern ((height (vstd.map.impl&%0.index.? K&. K& V&. V& m! key!)))
    :qid user_crate__vstd__map__axiom_map_index_decreases_finite_29
    :skolemid skolem_user_crate__vstd__map__axiom_map_index_decreases_finite_29
))))

;; Broadcast crate::vstd::map::axiom_map_index_decreases_infinite
(assert
 (=>
  (fuel_bool fuel%vstd.map.axiom_map_index_decreases_infinite.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (key! Poly)) (!
    (=>
     (and
      (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
      (has_type key! K&)
     )
     (=>
      (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!) key!)
      (height_lt (height (vstd.map.impl&%0.index.? K&. K& V&. V& m! key!)) (height (fun_from_recursive_field
         m!
    )))))
    :pattern ((height (vstd.map.impl&%0.index.? K&. K& V&. V& m! key!)))
    :qid user_crate__vstd__map__axiom_map_index_decreases_infinite_30
    :skolemid skolem_user_crate__vstd__map__axiom_map_index_decreases_infinite_30
))))

;; Function-Axioms crate::vstd::map::Map::remove
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (has_type key! K&)
    )
    (has_type (vstd.map.impl&%0.remove.? K&. K& V&. V& self! key!) (TYPE%vstd.map.Map.
      K&. K& V&. V&
   )))
   :pattern ((vstd.map.impl&%0.remove.? K&. K& V&. V& self! key!))
   :qid internal_vstd.map.impl&__0.remove.?_pre_post_definition
   :skolemid skolem_internal_vstd.map.impl&__0.remove.?_pre_post_definition
)))

;; Broadcast crate::vstd::map::axiom_map_remove_domain
(assert
 (=>
  (fuel_bool fuel%vstd.map.axiom_map_remove_domain.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (key! Poly)) (!
    (=>
     (and
      (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
      (has_type key! K&)
     )
     (= (vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map.impl&%0.remove.? K&. K& V&. V& m!
        key!
       )
      ) (vstd.set.impl&%0.remove.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!) key!)
    ))
    :pattern ((vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map.impl&%0.remove.? K&. K& V&.
       V& m! key!
    )))
    :qid user_crate__vstd__map__axiom_map_remove_domain_31
    :skolemid skolem_user_crate__vstd__map__axiom_map_remove_domain_31
))))

;; Broadcast crate::vstd::map::axiom_map_remove_different
(assert
 (=>
  (fuel_bool fuel%vstd.map.axiom_map_remove_different.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (key1! Poly) (key2! Poly))
   (!
    (=>
     (and
      (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
      (has_type key1! K&)
      (has_type key2! K&)
     )
     (=>
      (and
       (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!) key1!)
       (not (= key1! key2!))
      )
      (= (vstd.map.impl&%0.index.? K&. K& V&. V& (vstd.map.impl&%0.remove.? K&. K& V&. V&
         m! key2!
        ) key1!
       ) (vstd.map.impl&%0.index.? K&. K& V&. V& m! key1!)
    )))
    :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& (vstd.map.impl&%0.remove.? K&. K&
       V&. V& m! key2!
      ) key1!
    ))
    :qid user_crate__vstd__map__axiom_map_remove_different_32
    :skolemid skolem_user_crate__vstd__map__axiom_map_remove_different_32
))))

;; Broadcast crate::vstd::map::axiom_map_ext_equal
(assert
 (=>
  (fuel_bool fuel%vstd.map.axiom_map_ext_equal.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m1! Poly) (m2! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd.map.Map. K&. K& V&. V&))
      (has_type m2! (TYPE%vstd.map.Map. K&. K& V&. V&))
     )
     (= (ext_eq false (TYPE%vstd.map.Map. K&. K& V&. V&) m1! m2!) (and
       (ext_eq false (TYPE%vstd.set.Set. K&. K&) (vstd.map.impl&%0.dom.? K&. K& V&. V& m1!)
        (vstd.map.impl&%0.dom.? K&. K& V&. V& m2!)
       )
       (forall ((k$ Poly)) (!
         (=>
          (has_type k$ K&)
          (=>
           (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m1!) k$)
           (= (vstd.map.impl&%0.index.? K&. K& V&. V& m1! k$) (vstd.map.impl&%0.index.? K&. K&
             V&. V& m2! k$
         ))))
         :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& m1! k$))
         :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& m2! k$))
         :qid user_crate__vstd__map__axiom_map_ext_equal_33
         :skolemid skolem_user_crate__vstd__map__axiom_map_ext_equal_33
    )))))
    :pattern ((ext_eq false (TYPE%vstd.map.Map. K&. K& V&. V&) m1! m2!))
    :qid user_crate__vstd__map__axiom_map_ext_equal_34
    :skolemid skolem_user_crate__vstd__map__axiom_map_ext_equal_34
))))

;; Broadcast crate::vstd::map::axiom_map_ext_equal_deep
(assert
 (=>
  (fuel_bool fuel%vstd.map.axiom_map_ext_equal_deep.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m1! Poly) (m2! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd.map.Map. K&. K& V&. V&))
      (has_type m2! (TYPE%vstd.map.Map. K&. K& V&. V&))
     )
     (= (ext_eq true (TYPE%vstd.map.Map. K&. K& V&. V&) m1! m2!) (and
       (ext_eq true (TYPE%vstd.set.Set. K&. K&) (vstd.map.impl&%0.dom.? K&. K& V&. V& m1!)
        (vstd.map.impl&%0.dom.? K&. K& V&. V& m2!)
       )
       (forall ((k$ Poly)) (!
         (=>
          (has_type k$ K&)
          (=>
           (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m1!) k$)
           (ext_eq true V& (vstd.map.impl&%0.index.? K&. K& V&. V& m1! k$) (vstd.map.impl&%0.index.?
             K&. K& V&. V& m2! k$
         ))))
         :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& m1! k$))
         :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& m2! k$))
         :qid user_crate__vstd__map__axiom_map_ext_equal_deep_35
         :skolemid skolem_user_crate__vstd__map__axiom_map_ext_equal_deep_35
    )))))
    :pattern ((ext_eq true (TYPE%vstd.map.Map. K&. K& V&. V&) m1! m2!))
    :qid user_crate__vstd__map__axiom_map_ext_equal_deep_36
    :skolemid skolem_user_crate__vstd__map__axiom_map_ext_equal_deep_36
))))

;; Function-Axioms crate::vstd::map::Map::new
(assert
 (fuel_bool_default fuel%vstd.map.impl&%0.new.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.map.impl&%0.new.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (impl%2&. Dcr) (impl%2& Type) (impl%3&.
     Dcr
    ) (impl%3& Type) (fk! Poly) (fv! Poly)
   ) (!
    (= (vstd.map.impl&%0.new.? K&. K& V&. V& impl%2&. impl%2& impl%3&. impl%3& fk! fv!)
     (vstd.set.impl&%0.mk_map.? K&. K& V&. V& impl%3&. impl%3& (vstd.set.impl&%0.new.? K&.
       K& impl%2&. impl%2& fk!
      ) fv!
    ))
    :pattern ((vstd.map.impl&%0.new.? K&. K& V&. V& impl%2&. impl%2& impl%3&. impl%3& fk!
      fv!
    ))
    :qid internal_vstd.map.impl&__0.new.?_definition
    :skolemid skolem_internal_vstd.map.impl&__0.new.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (impl%2&. Dcr) (impl%2& Type) (impl%3&.
    Dcr
   ) (impl%3& Type) (fk! Poly) (fv! Poly)
  ) (!
   (=>
    (and
     (has_type fk! impl%2&)
     (has_type fv! impl%3&)
    )
    (has_type (vstd.map.impl&%0.new.? K&. K& V&. V& impl%2&. impl%2& impl%3&. impl%3& fk!
      fv!
     ) (TYPE%vstd.map.Map. K&. K& V&. V&)
   ))
   :pattern ((vstd.map.impl&%0.new.? K&. K& V&. V& impl%2&. impl%2& impl%3&. impl%3& fk!
     fv!
   ))
   :qid internal_vstd.map.impl&__0.new.?_pre_post_definition
   :skolemid skolem_internal_vstd.map.impl&__0.new.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::map::Map::remove_keys
(assert
 (fuel_bool_default fuel%vstd.map_lib.impl&%0.remove_keys.)
)
(declare-fun %%lambda%%0 (Dcr Type Poly Dcr Type Poly) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 Dcr) (%%hole%%4
    Type
   ) (%%hole%%5 Poly) (k$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5)
     k$
    ) (B (and
      (vstd.set.impl&%0.contains.? %%hole%%0 %%hole%%1 %%hole%%2 k$)
      (not (vstd.set.impl&%0.contains.? %%hole%%3 %%hole%%4 %%hole%%5 k$))
   )))
   :pattern ((%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      %%hole%%5
     ) k$
)))))
(declare-fun %%lambda%%1 (Dcr Type Dcr Type Poly) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Dcr) (%%hole%%3 Type) (%%hole%%4
    Poly
   ) (k$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4) k$)
    (vstd.map.impl&%0.index.? %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 k$)
   )
   :pattern ((%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4)
     k$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.map_lib.impl&%0.remove_keys.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (keys! Poly)) (!
    (= (vstd.map_lib.impl&%0.remove_keys.? K&. K& V&. V& self! keys!) (vstd.map.impl&%0.new.?
      K&. K& V&. V& $ (TYPE%fun%1. K&. K& $ BOOL) $ (TYPE%fun%1. K&. K& V&. V&) (Poly%fun%1.
       (mk_fun (%%lambda%%0 K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) K&. K& keys!))
      ) (Poly%fun%1. (mk_fun (%%lambda%%1 K&. K& V&. V& self!)))
    ))
    :pattern ((vstd.map_lib.impl&%0.remove_keys.? K&. K& V&. V& self! keys!))
    :qid internal_vstd.map_lib.impl&__0.remove_keys.?_definition
    :skolemid skolem_internal_vstd.map_lib.impl&__0.remove_keys.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (keys! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (has_type keys! (TYPE%vstd.set.Set. K&. K&))
    )
    (has_type (vstd.map_lib.impl&%0.remove_keys.? K&. K& V&. V& self! keys!) (TYPE%vstd.map.Map.
      K&. K& V&. V&
   )))
   :pattern ((vstd.map_lib.impl&%0.remove_keys.? K&. K& V&. V& self! keys!))
   :qid internal_vstd.map_lib.impl&__0.remove_keys.?_pre_post_definition
   :skolemid skolem_internal_vstd.map_lib.impl&__0.remove_keys.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::map::Map::restrict
(assert
 (fuel_bool_default fuel%vstd.map_lib.impl&%0.restrict.)
)
(declare-fun %%lambda%%2 (Dcr Type Poly Dcr Type Poly) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 Dcr) (%%hole%%4
    Type
   ) (%%hole%%5 Poly) (k$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%2 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5)
     k$
    ) (B (and
      (vstd.set.impl&%0.contains.? %%hole%%0 %%hole%%1 %%hole%%2 k$)
      (vstd.set.impl&%0.contains.? %%hole%%3 %%hole%%4 %%hole%%5 k$)
   )))
   :pattern ((%%apply%%0 (%%lambda%%2 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      %%hole%%5
     ) k$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.map_lib.impl&%0.restrict.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (keys! Poly)) (!
    (= (vstd.map_lib.impl&%0.restrict.? K&. K& V&. V& self! keys!) (vstd.map.impl&%0.new.?
      K&. K& V&. V& $ (TYPE%fun%1. K&. K& $ BOOL) $ (TYPE%fun%1. K&. K& V&. V&) (Poly%fun%1.
       (mk_fun (%%lambda%%2 K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) K&. K& keys!))
      ) (Poly%fun%1. (mk_fun (%%lambda%%1 K&. K& V&. V& self!)))
    ))
    :pattern ((vstd.map_lib.impl&%0.restrict.? K&. K& V&. V& self! keys!))
    :qid internal_vstd.map_lib.impl&__0.restrict.?_definition
    :skolemid skolem_internal_vstd.map_lib.impl&__0.restrict.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (keys! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (has_type keys! (TYPE%vstd.set.Set. K&. K&))
    )
    (has_type (vstd.map_lib.impl&%0.restrict.? K&. K& V&. V& self! keys!) (TYPE%vstd.map.Map.
      K&. K& V&. V&
   )))
   :pattern ((vstd.map_lib.impl&%0.restrict.? K&. K& V&. V& self! keys!))
   :qid internal_vstd.map_lib.impl&__0.restrict.?_pre_post_definition
   :skolemid skolem_internal_vstd.map_lib.impl&__0.restrict.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::map::Map::union_prefer_right
(assert
 (fuel_bool_default fuel%vstd.map_lib.impl&%0.union_prefer_right.)
)
(declare-fun %%lambda%%3 (Dcr Type Poly Dcr Type Poly) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 Dcr) (%%hole%%4
    Type
   ) (%%hole%%5 Poly) (k$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%3 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5)
     k$
    ) (B (or
      (vstd.set.impl&%0.contains.? %%hole%%0 %%hole%%1 %%hole%%2 k$)
      (vstd.set.impl&%0.contains.? %%hole%%3 %%hole%%4 %%hole%%5 k$)
   )))
   :pattern ((%%apply%%0 (%%lambda%%3 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      %%hole%%5
     ) k$
)))))
(declare-fun %%lambda%%4 (Dcr Type Poly Dcr Type Dcr Type Poly Dcr Type Dcr Type Poly)
 %%Function%%
)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 Dcr) (%%hole%%4
    Type
   ) (%%hole%%5 Dcr) (%%hole%%6 Type) (%%hole%%7 Poly) (%%hole%%8 Dcr) (%%hole%%9 Type)
   (%%hole%%10 Dcr) (%%hole%%11 Type) (%%hole%%12 Poly) (k$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%4 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
      %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12
     ) k$
    ) (ite
     (vstd.set.impl&%0.contains.? %%hole%%0 %%hole%%1 %%hole%%2 k$)
     (vstd.map.impl&%0.index.? %%hole%%3 %%hole%%4 %%hole%%5 %%hole%%6 %%hole%%7 k$)
     (vstd.map.impl&%0.index.? %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12 k$)
   ))
   :pattern ((%%apply%%0 (%%lambda%%4 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      %%hole%%5 %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12
     ) k$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.map_lib.impl&%0.union_prefer_right.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
    (= (vstd.map_lib.impl&%0.union_prefer_right.? K&. K& V&. V& self! m2!) (vstd.map.impl&%0.new.?
      K&. K& V&. V& $ (TYPE%fun%1. K&. K& $ BOOL) $ (TYPE%fun%1. K&. K& V&. V&) (Poly%fun%1.
       (mk_fun (%%lambda%%3 K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) K&. K& (vstd.map.impl&%0.dom.?
          K&. K& V&. V& m2!
       )))
      ) (Poly%fun%1. (mk_fun (%%lambda%%4 K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m2!)
         K&. K& V&. V& m2! K&. K& V&. V& self!
    )))))
    :pattern ((vstd.map_lib.impl&%0.union_prefer_right.? K&. K& V&. V& self! m2!))
    :qid internal_vstd.map_lib.impl&__0.union_prefer_right.?_definition
    :skolemid skolem_internal_vstd.map_lib.impl&__0.union_prefer_right.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (has_type m2! (TYPE%vstd.map.Map. K&. K& V&. V&))
    )
    (has_type (vstd.map_lib.impl&%0.union_prefer_right.? K&. K& V&. V& self! m2!) (TYPE%vstd.map.Map.
      K&. K& V&. V&
   )))
   :pattern ((vstd.map_lib.impl&%0.union_prefer_right.? K&. K& V&. V& self! m2!))
   :qid internal_vstd.map_lib.impl&__0.union_prefer_right.?_pre_post_definition
   :skolemid skolem_internal_vstd.map_lib.impl&__0.union_prefer_right.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::set::Set::spec_add
(assert
 (fuel_bool_default fuel%vstd.set.impl&%0.spec_add.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.set.impl&%0.spec_add.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
    (= (vstd.set.impl&%0.spec_add.? A&. A& self! s2!) (vstd.set.impl&%0.union.? A&. A&
      self! s2!
    ))
    :pattern ((vstd.set.impl&%0.spec_add.? A&. A& self! s2!))
    :qid internal_vstd.set.impl&__0.spec_add.?_definition
    :skolemid skolem_internal_vstd.set.impl&__0.spec_add.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type s2! (TYPE%vstd.set.Set. A&. A&))
    )
    (has_type (vstd.set.impl&%0.spec_add.? A&. A& self! s2!) (TYPE%vstd.set.Set. A&. A&))
   )
   :pattern ((vstd.set.impl&%0.spec_add.? A&. A& self! s2!))
   :qid internal_vstd.set.impl&__0.spec_add.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.spec_add.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::map::Map::submap_of
(assert
 (fuel_bool_default fuel%vstd.map_lib.impl&%0.submap_of.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.map_lib.impl&%0.submap_of.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
    (= (vstd.map_lib.impl&%0.submap_of.? K&. K& V&. V& self! m2!) (forall ((k$ Poly)) (
       !
       (=>
        (has_type k$ K&)
        (=>
         (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) k$)
         (and
          (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m2!) k$)
          (= (vstd.map.impl&%0.index.? K&. K& V&. V& self! k$) (vstd.map.impl&%0.index.? K&.
            K& V&. V& m2! k$
       )))))
       :pattern ((vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V&
          self!
         ) k$
        ) (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m2!) k$)
       )
       :qid user_crate__vstd__map__Map__submap_of_37
       :skolemid skolem_user_crate__vstd__map__Map__submap_of_37
    )))
    :pattern ((vstd.map_lib.impl&%0.submap_of.? K&. K& V&. V& self! m2!))
    :qid internal_vstd.map_lib.impl&__0.submap_of.?_definition
    :skolemid skolem_internal_vstd.map_lib.impl&__0.submap_of.?_definition
))))

;; Function-Axioms crate::vstd::set::Set::disjoint
(assert
 (fuel_bool_default fuel%vstd.set.impl&%0.disjoint.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.set.impl&%0.disjoint.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
    (= (vstd.set.impl&%0.disjoint.? A&. A& self! s2!) (forall ((a$ Poly)) (!
       (=>
        (has_type a$ A&)
        (=>
         (vstd.set.impl&%0.contains.? A&. A& self! a$)
         (not (vstd.set.impl&%0.contains.? A&. A& s2! a$))
       ))
       :pattern ((vstd.set.impl&%0.contains.? A&. A& self! a$))
       :pattern ((vstd.set.impl&%0.contains.? A&. A& s2! a$))
       :qid user_crate__vstd__set__Set__disjoint_38
       :skolemid skolem_user_crate__vstd__set__Set__disjoint_38
    )))
    :pattern ((vstd.set.impl&%0.disjoint.? A&. A& self! s2!))
    :qid internal_vstd.set.impl&__0.disjoint.?_definition
    :skolemid skolem_internal_vstd.set.impl&__0.disjoint.?_definition
))))

;; Function-Axioms crate::vstd::set::Set::full
(assert
 (fuel_bool_default fuel%vstd.set.impl&%0.full.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.set.impl&%0.full.)
  (forall ((A&. Dcr) (A& Type)) (!
    (= (vstd.set.impl&%0.full.? A&. A&) (vstd.set.impl&%0.complement.? A&. A& (vstd.set.impl&%0.empty.?
       A&. A&
    )))
    :pattern ((vstd.set.impl&%0.full.? A&. A&))
    :qid internal_vstd.set.impl&__0.full.?_definition
    :skolemid skolem_internal_vstd.set.impl&__0.full.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (has_type (vstd.set.impl&%0.full.? A&. A&) (TYPE%vstd.set.Set. A&. A&))
   :pattern ((vstd.set.impl&%0.full.? A&. A&))
   :qid internal_vstd.set.impl&__0.full.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.full.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::map::Map::len
(assert
 (fuel_bool_default fuel%vstd.map.impl&%0.len.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.map.impl&%0.len.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly)) (!
    (= (vstd.map.impl&%0.len.? K&. K& V&. V& self!) (vstd.set.impl&%0.len.? K&. K& (vstd.map.impl&%0.dom.?
       K&. K& V&. V& self!
    )))
    :pattern ((vstd.map.impl&%0.len.? K&. K& V&. V& self!))
    :qid internal_vstd.map.impl&__0.len.?_definition
    :skolemid skolem_internal_vstd.map.impl&__0.len.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
    (<= 0 (vstd.map.impl&%0.len.? K&. K& V&. V& self!))
   )
   :pattern ((vstd.map.impl&%0.len.? K&. K& V&. V& self!))
   :qid internal_vstd.map.impl&__0.len.?_pre_post_definition
   :skolemid skolem_internal_vstd.map.impl&__0.len.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::set::Set::is_full
(assert
 (fuel_bool_default fuel%vstd.set_lib.impl&%0.is_full.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.set_lib.impl&%0.is_full.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (= (vstd.set_lib.impl&%0.is_full.? A&. A& self!) (= self! (vstd.set.impl&%0.full.? A&.
       A&
    )))
    :pattern ((vstd.set_lib.impl&%0.is_full.? A&. A& self!))
    :qid internal_vstd.set_lib.impl&__0.is_full.?_definition
    :skolemid skolem_internal_vstd.set_lib.impl&__0.is_full.?_definition
))))

;; Function-Axioms crate::vstd::map::Map::is_full
(assert
 (fuel_bool_default fuel%vstd.map_lib.impl&%0.is_full.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.map_lib.impl&%0.is_full.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly)) (!
    (= (vstd.map_lib.impl&%0.is_full.? K&. K& V&. V& self!) (vstd.set_lib.impl&%0.is_full.?
      K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!)
    ))
    :pattern ((vstd.map_lib.impl&%0.is_full.? K&. K& V&. V& self!))
    :qid internal_vstd.map_lib.impl&__0.is_full.?_definition
    :skolemid skolem_internal_vstd.map_lib.impl&__0.is_full.?_definition
))))

;; Function-Axioms crate::vstd::map::Map::is_empty
(assert
 (fuel_bool_default fuel%vstd.map_lib.impl&%0.is_empty.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.map_lib.impl&%0.is_empty.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly)) (!
    (= (vstd.map_lib.impl&%0.is_empty.? K&. K& V&. V& self!) (vstd.set_lib.impl&%0.is_empty.?
      K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!)
    ))
    :pattern ((vstd.map_lib.impl&%0.is_empty.? K&. K& V&. V& self!))
    :qid internal_vstd.map_lib.impl&__0.is_empty.?_definition
    :skolemid skolem_internal_vstd.map_lib.impl&__0.is_empty.?_definition
))))

;; Function-Axioms crate::vstd::map::Map::contains_key
(assert
 (fuel_bool_default fuel%vstd.map_lib.impl&%0.contains_key.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.map_lib.impl&%0.contains_key.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (k! Poly)) (!
    (= (vstd.map_lib.impl&%0.contains_key.? K&. K& V&. V& self! k!) (vstd.set.impl&%0.contains.?
      K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) k!
    ))
    :pattern ((vstd.map_lib.impl&%0.contains_key.? K&. K& V&. V& self! k!))
    :qid internal_vstd.map_lib.impl&__0.contains_key.?_definition
    :skolemid skolem_internal_vstd.map_lib.impl&__0.contains_key.?_definition
))))

;; Function-Axioms crate::vstd::map::Map::contains_value
(assert
 (fuel_bool_default fuel%vstd.map_lib.impl&%0.contains_value.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.map_lib.impl&%0.contains_value.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (v! Poly)) (!
    (= (vstd.map_lib.impl&%0.contains_value.? K&. K& V&. V& self! v!) (exists ((i$ Poly))
      (!
       (and
        (has_type i$ K&)
        (and
         (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) i$)
         (= (vstd.map.impl&%0.index.? K&. K& V&. V& self! i$) v!)
       ))
       :pattern ((vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V&
          self!
         ) i$
       ))
       :qid user_crate__vstd__map__Map__contains_value_39
       :skolemid skolem_user_crate__vstd__map__Map__contains_value_39
    )))
    :pattern ((vstd.map_lib.impl&%0.contains_value.? K&. K& V&. V& self! v!))
    :qid internal_vstd.map_lib.impl&__0.contains_value.?_definition
    :skolemid skolem_internal_vstd.map_lib.impl&__0.contains_value.?_definition
))))

;; Function-Axioms crate::vstd::map::Map::values
(assert
 (fuel_bool_default fuel%vstd.map_lib.impl&%0.values.)
)
(declare-fun %%lambda%%5 (Dcr Type Dcr Type Poly) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Dcr) (%%hole%%3 Type) (%%hole%%4
    Poly
   ) (v$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%5 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4) v$)
    (B (vstd.map_lib.impl&%0.contains_value.? %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      v$
   )))
   :pattern ((%%apply%%0 (%%lambda%%5 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4)
     v$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.map_lib.impl&%0.values.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly)) (!
    (= (vstd.map_lib.impl&%0.values.? K&. K& V&. V& self!) (vstd.set.impl&%0.new.? V&.
      V& $ (TYPE%fun%1. V&. V& $ BOOL) (Poly%fun%1. (mk_fun (%%lambda%%5 K&. K& V&. V& self!)))
    ))
    :pattern ((vstd.map_lib.impl&%0.values.? K&. K& V&. V& self!))
    :qid internal_vstd.map_lib.impl&__0.values.?_definition
    :skolemid skolem_internal_vstd.map_lib.impl&__0.values.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
    (has_type (vstd.map_lib.impl&%0.values.? K&. K& V&. V& self!) (TYPE%vstd.set.Set. V&.
      V&
   )))
   :pattern ((vstd.map_lib.impl&%0.values.? K&. K& V&. V& self!))
   :qid internal_vstd.map_lib.impl&__0.values.?_pre_post_definition
   :skolemid skolem_internal_vstd.map_lib.impl&__0.values.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::map::Map::contains_pair
(assert
 (fuel_bool_default fuel%vstd.map_lib.impl&%0.contains_pair.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.map_lib.impl&%0.contains_pair.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (k! Poly) (v! Poly))
   (!
    (= (vstd.map_lib.impl&%0.contains_pair.? K&. K& V&. V& self! k! v!) (and
      (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) k!)
      (= (vstd.map.impl&%0.index.? K&. K& V&. V& self! k!) v!)
    ))
    :pattern ((vstd.map_lib.impl&%0.contains_pair.? K&. K& V&. V& self! k! v!))
    :qid internal_vstd.map_lib.impl&__0.contains_pair.?_definition
    :skolemid skolem_internal_vstd.map_lib.impl&__0.contains_pair.?_definition
))))

;; Function-Axioms crate::vstd::map::Map::spec_le
(assert
 (fuel_bool_default fuel%vstd.map_lib.impl&%0.spec_le.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.map_lib.impl&%0.spec_le.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
    (= (vstd.map_lib.impl&%0.spec_le.? K&. K& V&. V& self! m2!) (vstd.map_lib.impl&%0.submap_of.?
      K&. K& V&. V& self! m2!
    ))
    :pattern ((vstd.map_lib.impl&%0.spec_le.? K&. K& V&. V& self! m2!))
    :qid internal_vstd.map_lib.impl&__0.spec_le.?_definition
    :skolemid skolem_internal_vstd.map_lib.impl&__0.spec_le.?_definition
))))

;; Function-Axioms crate::vstd::map::Map::le
(assert
 (fuel_bool_default fuel%vstd.map_lib.impl&%0.le.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.map_lib.impl&%0.le.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
    (= (vstd.map_lib.impl&%0.le.? K&. K& V&. V& self! m2!) (vstd.map_lib.impl&%0.submap_of.?
      K&. K& V&. V& self! m2!
    ))
    :pattern ((vstd.map_lib.impl&%0.le.? K&. K& V&. V& self! m2!))
    :qid internal_vstd.map_lib.impl&__0.le.?_definition
    :skolemid skolem_internal_vstd.map_lib.impl&__0.le.?_definition
))))

;; Function-Axioms crate::vstd::map::Map::is_equal_on_key
(assert
 (fuel_bool_default fuel%vstd.map_lib.impl&%0.is_equal_on_key.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.map_lib.impl&%0.is_equal_on_key.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (m2! Poly) (key! Poly))
   (!
    (= (vstd.map_lib.impl&%0.is_equal_on_key.? K&. K& V&. V& self! m2! key!) (or
      (and
       (not (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!)
         key!
       ))
       (not (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m2!)
         key!
      )))
      (and
       (and
        (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) key!)
        (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m2!) key!)
       )
       (= (vstd.map.impl&%0.index.? K&. K& V&. V& self! key!) (vstd.map.impl&%0.index.? K&.
         K& V&. V& m2! key!
    )))))
    :pattern ((vstd.map_lib.impl&%0.is_equal_on_key.? K&. K& V&. V& self! m2! key!))
    :qid internal_vstd.map_lib.impl&__0.is_equal_on_key.?_definition
    :skolemid skolem_internal_vstd.map_lib.impl&__0.is_equal_on_key.?_definition
))))

;; Function-Axioms crate::vstd::map::Map::agrees
(assert
 (fuel_bool_default fuel%vstd.map_lib.impl&%0.agrees.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.map_lib.impl&%0.agrees.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
    (= (vstd.map_lib.impl&%0.agrees.? K&. K& V&. V& self! m2!) (forall ((k$ Poly)) (!
       (=>
        (has_type k$ K&)
        (=>
         (and
          (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) k$)
          (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m2!) k$)
         )
         (= (vstd.map.impl&%0.index.? K&. K& V&. V& self! k$) (vstd.map.impl&%0.index.? K&.
           K& V&. V& m2! k$
       ))))
       :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& self! k$))
       :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& m2! k$))
       :qid user_crate__vstd__map__Map__agrees_40
       :skolemid skolem_user_crate__vstd__map__Map__agrees_40
    )))
    :pattern ((vstd.map_lib.impl&%0.agrees.? K&. K& V&. V& self! m2!))
    :qid internal_vstd.map_lib.impl&__0.agrees.?_definition
    :skolemid skolem_internal_vstd.map_lib.impl&__0.agrees.?_definition
))))

;; Function-Axioms crate::vstd::map::Map::map_entries
(assert
 (fuel_bool_default fuel%vstd.map_lib.impl&%0.map_entries.)
)
(declare-fun %%lambda%%6 (Dcr Type Poly) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (k$ Poly)) (!
   (= (%%apply%%0 (%%lambda%%6 %%hole%%0 %%hole%%1 %%hole%%2) k$) (B (vstd.set.impl&%0.contains.?
      %%hole%%0 %%hole%%1 %%hole%%2 k$
   )))
   :pattern ((%%apply%%0 (%%lambda%%6 %%hole%%0 %%hole%%1 %%hole%%2) k$))
)))
(declare-fun %%lambda%%7 (Dcr Type Dcr Type Poly %%Function%%) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Dcr) (%%hole%%3 Type) (%%hole%%4
    Poly
   ) (%%hole%%5 %%Function%%) (k$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%7 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5)
     k$
    ) (%%apply%%1 %%hole%%5 k$ (vstd.map.impl&%0.index.? %%hole%%0 %%hole%%1 %%hole%%2
      %%hole%%3 %%hole%%4 k$
   )))
   :pattern ((%%apply%%0 (%%lambda%%7 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      %%hole%%5
     ) k$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.map_lib.impl&%0.map_entries.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (W&. Dcr) (W& Type) (self! Poly) (
     f! Poly
    )
   ) (!
    (= (vstd.map_lib.impl&%0.map_entries.? K&. K& V&. V& W&. W& self! f!) (vstd.map.impl&%0.new.?
      K&. K& W&. W& $ (TYPE%fun%1. K&. K& $ BOOL) $ (TYPE%fun%1. K&. K& W&. W&) (Poly%fun%1.
       (mk_fun (%%lambda%%6 K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!)))
      ) (Poly%fun%1. (mk_fun (%%lambda%%7 K&. K& V&. V& self! (%Poly%fun%2. f!))))
    ))
    :pattern ((vstd.map_lib.impl&%0.map_entries.? K&. K& V&. V& W&. W& self! f!))
    :qid internal_vstd.map_lib.impl&__0.map_entries.?_definition
    :skolemid skolem_internal_vstd.map_lib.impl&__0.map_entries.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (W&. Dcr) (W& Type) (self! Poly) (
    f! Poly
   )
  ) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (has_type f! (TYPE%fun%2. K&. K& V&. V& W&. W&))
    )
    (has_type (vstd.map_lib.impl&%0.map_entries.? K&. K& V&. V& W&. W& self! f!) (TYPE%vstd.map.Map.
      K&. K& W&. W&
   )))
   :pattern ((vstd.map_lib.impl&%0.map_entries.? K&. K& V&. V& W&. W& self! f!))
   :qid internal_vstd.map_lib.impl&__0.map_entries.?_pre_post_definition
   :skolemid skolem_internal_vstd.map_lib.impl&__0.map_entries.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::map::Map::map_values
(assert
 (fuel_bool_default fuel%vstd.map_lib.impl&%0.map_values.)
)
(declare-fun %%lambda%%8 (Dcr Type Dcr Type Poly %%Function%%) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Dcr) (%%hole%%3 Type) (%%hole%%4
    Poly
   ) (%%hole%%5 %%Function%%) (k$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%8 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5)
     k$
    ) (%%apply%%0 %%hole%%5 (vstd.map.impl&%0.index.? %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3
      %%hole%%4 k$
   )))
   :pattern ((%%apply%%0 (%%lambda%%8 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      %%hole%%5
     ) k$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.map_lib.impl&%0.map_values.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (W&. Dcr) (W& Type) (self! Poly) (
     f! Poly
    )
   ) (!
    (= (vstd.map_lib.impl&%0.map_values.? K&. K& V&. V& W&. W& self! f!) (vstd.map.impl&%0.new.?
      K&. K& W&. W& $ (TYPE%fun%1. K&. K& $ BOOL) $ (TYPE%fun%1. K&. K& W&. W&) (Poly%fun%1.
       (mk_fun (%%lambda%%6 K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!)))
      ) (Poly%fun%1. (mk_fun (%%lambda%%8 K&. K& V&. V& self! (%Poly%fun%1. f!))))
    ))
    :pattern ((vstd.map_lib.impl&%0.map_values.? K&. K& V&. V& W&. W& self! f!))
    :qid internal_vstd.map_lib.impl&__0.map_values.?_definition
    :skolemid skolem_internal_vstd.map_lib.impl&__0.map_values.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (W&. Dcr) (W& Type) (self! Poly) (
    f! Poly
   )
  ) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (has_type f! (TYPE%fun%1. V&. V& W&. W&))
    )
    (has_type (vstd.map_lib.impl&%0.map_values.? K&. K& V&. V& W&. W& self! f!) (TYPE%vstd.map.Map.
      K&. K& W&. W&
   )))
   :pattern ((vstd.map_lib.impl&%0.map_values.? K&. K& V&. V& W&. W& self! f!))
   :qid internal_vstd.map_lib.impl&__0.map_values.?_pre_post_definition
   :skolemid skolem_internal_vstd.map_lib.impl&__0.map_values.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::map::Map::is_injective
(assert
 (fuel_bool_default fuel%vstd.map_lib.impl&%0.is_injective.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.map_lib.impl&%0.is_injective.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly)) (!
    (= (vstd.map_lib.impl&%0.is_injective.? K&. K& V&. V& self!) (forall ((x$ Poly) (y$ Poly))
      (!
       (=>
        (and
         (has_type x$ K&)
         (has_type y$ K&)
        )
        (=>
         (and
          (and
           (not (= x$ y$))
           (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) x$)
          )
          (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) y$)
         )
         (not (= (vstd.map.impl&%0.index.? K&. K& V&. V& self! x$) (vstd.map.impl&%0.index.?
            K&. K& V&. V& self! y$
       )))))
       :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& self! x$) (vstd.map.impl&%0.index.?
         K&. K& V&. V& self! y$
       ))
       :qid user_crate__vstd__map__Map__is_injective_41
       :skolemid skolem_user_crate__vstd__map__Map__is_injective_41
    )))
    :pattern ((vstd.map_lib.impl&%0.is_injective.? K&. K& V&. V& self!))
    :qid internal_vstd.map_lib.impl&__0.is_injective.?_definition
    :skolemid skolem_internal_vstd.map_lib.impl&__0.is_injective.?_definition
))))

;; Function-Axioms crate::vstd::map::Map::invert
(assert
 (fuel_bool_default fuel%vstd.map_lib.impl&%0.invert.)
)
(declare-fun %%choose%%1 (Type Dcr Type Dcr Type Poly Poly Dcr Type Dcr Type Poly Poly)
 Poly
)
(assert
 (forall ((%%hole%%0 Type) (%%hole%%1 Dcr) (%%hole%%2 Type) (%%hole%%3 Dcr) (%%hole%%4
    Type
   ) (%%hole%%5 Poly) (%%hole%%6 Poly) (%%hole%%7 Dcr) (%%hole%%8 Type) (%%hole%%9 Dcr)
   (%%hole%%10 Type) (%%hole%%11 Poly) (%%hole%%12 Poly)
  ) (!
   (=>
    (exists ((k$ Poly)) (!
      (and
       (has_type k$ %%hole%%0)
       (vstd.map_lib.impl&%0.contains_pair.? %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
        k$ %%hole%%6
      ))
      :pattern ((vstd.map_lib.impl&%0.contains_pair.? %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10
        %%hole%%11 k$ %%hole%%12
      ))
      :qid user_crate__vstd__map__Map__invert_42
      :skolemid skolem_user_crate__vstd__map__Map__invert_42
    ))
    (exists ((k$ Poly)) (!
      (and
       (and
        (has_type k$ %%hole%%0)
        (vstd.map_lib.impl&%0.contains_pair.? %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
         k$ %%hole%%6
       ))
       (= (%%choose%%1 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5 %%hole%%6
         %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12
        ) k$
      ))
      :pattern ((vstd.map_lib.impl&%0.contains_pair.? %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10
        %%hole%%11 k$ %%hole%%12
   )))))
   :pattern ((%%choose%%1 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
     %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12
)))))
(declare-fun %%lambda%%9 (Type Dcr Type Dcr Type Poly Dcr Type Dcr Type Poly Type)
 %%Function%%
)
(assert
 (forall ((%%hole%%0 Type) (%%hole%%1 Dcr) (%%hole%%2 Type) (%%hole%%3 Dcr) (%%hole%%4
    Type
   ) (%%hole%%5 Poly) (%%hole%%6 Dcr) (%%hole%%7 Type) (%%hole%%8 Dcr) (%%hole%%9 Type)
   (%%hole%%10 Poly) (%%hole%%11 Type) (v$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%9 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
      %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11
     ) v$
    ) (as_type (%%choose%%1 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
      v$ %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 v$
     ) %%hole%%11
   ))
   :pattern ((%%apply%%0 (%%lambda%%9 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      %%hole%%5 %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11
     ) v$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.map_lib.impl&%0.invert.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly)) (!
    (= (vstd.map_lib.impl&%0.invert.? K&. K& V&. V& self!) (vstd.map.impl&%0.new.? V&.
      V& K&. K& $ (TYPE%fun%1. V&. V& $ BOOL) $ (TYPE%fun%1. V&. V& K&. K&) (Poly%fun%1.
       (mk_fun (%%lambda%%5 K&. K& V&. V& self!))
      ) (Poly%fun%1. (mk_fun (%%lambda%%9 K& K&. K& V&. V& self! K&. K& V&. V& self! K&)))
    ))
    :pattern ((vstd.map_lib.impl&%0.invert.? K&. K& V&. V& self!))
    :qid internal_vstd.map_lib.impl&__0.invert.?_definition
    :skolemid skolem_internal_vstd.map_lib.impl&__0.invert.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
    (has_type (vstd.map_lib.impl&%0.invert.? K&. K& V&. V& self!) (TYPE%vstd.map.Map. V&.
      V& K&. K&
   )))
   :pattern ((vstd.map_lib.impl&%0.invert.? K&. K& V&. V& self!))
   :qid internal_vstd.map_lib.impl&__0.invert.?_pre_post_definition
   :skolemid skolem_internal_vstd.map_lib.impl&__0.invert.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::map::Map::is_monotonic
(assert
 (fuel_bool_default fuel%vstd.map_lib.impl&%1.is_monotonic.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.map_lib.impl&%1.is_monotonic.)
  (forall ((self! Poly)) (!
    (= (vstd.map_lib.impl&%1.is_monotonic.? self!) (forall ((x$ Poly) (y$ Poly)) (!
       (=>
        (and
         (has_type x$ INT)
         (has_type y$ INT)
        )
        (=>
         (and
          (and
           (vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ INT self!) x$)
           (vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ INT self!) y$)
          )
          (<= (%I x$) (%I y$))
         )
         (<= (%I (vstd.map.impl&%0.index.? $ INT $ INT self! x$)) (%I (vstd.map.impl&%0.index.?
            $ INT $ INT self! y$
       )))))
       :pattern ((vstd.map.impl&%0.index.? $ INT $ INT self! x$) (vstd.map.impl&%0.index.?
         $ INT $ INT self! y$
       ))
       :qid user_crate__vstd__map__Map__is_monotonic_43
       :skolemid skolem_user_crate__vstd__map__Map__is_monotonic_43
    )))
    :pattern ((vstd.map_lib.impl&%1.is_monotonic.? self!))
    :qid internal_vstd.map_lib.impl&__1.is_monotonic.?_definition
    :skolemid skolem_internal_vstd.map_lib.impl&__1.is_monotonic.?_definition
))))

;; Function-Axioms crate::vstd::map::Map::is_monotonic_from
(assert
 (fuel_bool_default fuel%vstd.map_lib.impl&%1.is_monotonic_from.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.map_lib.impl&%1.is_monotonic_from.)
  (forall ((self! Poly) (start! Poly)) (!
    (= (vstd.map_lib.impl&%1.is_monotonic_from.? self! start!) (forall ((x$ Poly) (y$ Poly))
      (!
       (=>
        (and
         (has_type x$ INT)
         (has_type y$ INT)
        )
        (=>
         (and
          (and
           (vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ INT self!) x$)
           (vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT $ INT self!) y$)
          )
          (and
           (<= (%I start!) (%I x$))
           (<= (%I x$) (%I y$))
         ))
         (<= (%I (vstd.map.impl&%0.index.? $ INT $ INT self! x$)) (%I (vstd.map.impl&%0.index.?
            $ INT $ INT self! y$
       )))))
       :pattern ((vstd.map.impl&%0.index.? $ INT $ INT self! x$) (vstd.map.impl&%0.index.?
         $ INT $ INT self! y$
       ))
       :qid user_crate__vstd__map__Map__is_monotonic_from_44
       :skolemid skolem_user_crate__vstd__map__Map__is_monotonic_from_44
    )))
    :pattern ((vstd.map_lib.impl&%1.is_monotonic_from.? self! start!))
    :qid internal_vstd.map_lib.impl&__1.is_monotonic_from.?_definition
    :skolemid skolem_internal_vstd.map_lib.impl&__1.is_monotonic_from.?_definition
))))

;; Function-Specs crate::vstd::set_lib::lemma_set_properties
(declare-fun ens%vstd.set_lib.lemma_set_properties. (Dcr Type) Bool)
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (ens%vstd.set_lib.lemma_set_properties. A&. A&) (and
     (forall ((a$ Poly) (b$ Poly)) (!
       (=>
        (and
         (has_type a$ (TYPE%vstd.set.Set. A&. A&))
         (has_type b$ (TYPE%vstd.set.Set. A&. A&))
        )
        (= (vstd.set.impl&%0.union.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$ b$) b$) (vstd.set.impl&%0.union.?
          A&. A& a$ b$
       )))
       :pattern ((vstd.set.impl&%0.union.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$ b$)
         b$
       ))
       :qid user_crate__vstd__set_lib__lemma_set_properties_45
       :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_45
     ))
     (forall ((a$ Poly) (b$ Poly)) (!
       (=>
        (and
         (has_type a$ (TYPE%vstd.set.Set. A&. A&))
         (has_type b$ (TYPE%vstd.set.Set. A&. A&))
        )
        (= (vstd.set.impl&%0.union.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$ b$) a$) (vstd.set.impl&%0.union.?
          A&. A& a$ b$
       )))
       :pattern ((vstd.set.impl&%0.union.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$ b$)
         a$
       ))
       :qid user_crate__vstd__set_lib__lemma_set_properties_46
       :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_46
     ))
     (forall ((a$ Poly) (b$ Poly)) (!
       (=>
        (and
         (has_type a$ (TYPE%vstd.set.Set. A&. A&))
         (has_type b$ (TYPE%vstd.set.Set. A&. A&))
        )
        (= (vstd.set.impl&%0.intersect.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& a$ b$)
          b$
         ) (vstd.set.impl&%0.intersect.? A&. A& a$ b$)
       ))
       :pattern ((vstd.set.impl&%0.intersect.? A&. A& (vstd.set.impl&%0.intersect.? A&. A&
          a$ b$
         ) b$
       ))
       :qid user_crate__vstd__set_lib__lemma_set_properties_47
       :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_47
     ))
     (forall ((a$ Poly) (b$ Poly)) (!
       (=>
        (and
         (has_type a$ (TYPE%vstd.set.Set. A&. A&))
         (has_type b$ (TYPE%vstd.set.Set. A&. A&))
        )
        (= (vstd.set.impl&%0.intersect.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& a$ b$)
          a$
         ) (vstd.set.impl&%0.intersect.? A&. A& a$ b$)
       ))
       :pattern ((vstd.set.impl&%0.intersect.? A&. A& (vstd.set.impl&%0.intersect.? A&. A&
          a$ b$
         ) a$
       ))
       :qid user_crate__vstd__set_lib__lemma_set_properties_48
       :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_48
     ))
     (forall ((s1$ Poly) (s2$ Poly) (a$ Poly)) (!
       (=>
        (and
         (has_type s1$ (TYPE%vstd.set.Set. A&. A&))
         (has_type s2$ (TYPE%vstd.set.Set. A&. A&))
         (has_type a$ A&)
        )
        (=>
         (vstd.set.impl&%0.contains.? A&. A& s2$ a$)
         (not (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.difference.? A&. A& s1$ s2$)
           a$
       ))))
       :pattern ((vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.difference.? A&. A&
          s1$ s2$
         ) a$
       ))
       :qid user_crate__vstd__set_lib__lemma_set_properties_49
       :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_49
     ))
     (forall ((a$ Poly) (b$ Poly)) (!
       (=>
        (and
         (has_type a$ (TYPE%vstd.set.Set. A&. A&))
         (has_type b$ (TYPE%vstd.set.Set. A&. A&))
        )
        (=>
         (vstd.set.impl&%0.disjoint.? A&. A& a$ b$)
         (and
          (= (vstd.set.impl&%0.difference.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$ b$) a$)
           b$
          )
          (= (vstd.set.impl&%0.difference.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$ b$) b$)
           a$
       ))))
       :pattern ((vstd.set.impl&%0.union.? A&. A& a$ b$))
       :qid user_crate__vstd__set_lib__lemma_set_properties_50
       :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_50
     ))
     (forall ((s$ Poly)) (!
       (=>
        (has_type s$ (TYPE%vstd.set.Set. A&. A&))
        (=>
         (and
          (not (= (vstd.set.impl&%0.len.? A&. A& s$) 0))
          (vstd.set.impl&%0.finite.? A&. A& s$)
         )
         (exists ((a$ Poly)) (!
           (and
            (has_type a$ A&)
            (vstd.set.impl&%0.contains.? A&. A& s$ a$)
           )
           :pattern ((vstd.set.impl&%0.contains.? A&. A& s$ a$))
           :qid user_crate__vstd__set_lib__lemma_set_properties_51
           :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_51
       ))))
       :pattern ((vstd.set.impl&%0.len.? A&. A& s$))
       :qid user_crate__vstd__set_lib__lemma_set_properties_52
       :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_52
     ))
     (forall ((a$ Poly) (b$ Poly)) (!
       (=>
        (and
         (has_type a$ (TYPE%vstd.set.Set. A&. A&))
         (has_type b$ (TYPE%vstd.set.Set. A&. A&))
        )
        (=>
         (and
          (and
           (vstd.set.impl&%0.finite.? A&. A& a$)
           (vstd.set.impl&%0.finite.? A&. A& b$)
          )
          (vstd.set.impl&%0.disjoint.? A&. A& a$ b$)
         )
         (= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$ b$)) (nClip (
            Add (vstd.set.impl&%0.len.? A&. A& a$) (vstd.set.impl&%0.len.? A&. A& b$)
       )))))
       :pattern ((vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$ b$)))
       :qid user_crate__vstd__set_lib__lemma_set_properties_53
       :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_53
     ))
     (forall ((a$ Poly) (b$ Poly)) (!
       (=>
        (and
         (has_type a$ (TYPE%vstd.set.Set. A&. A&))
         (has_type b$ (TYPE%vstd.set.Set. A&. A&))
        )
        (=>
         (and
          (vstd.set.impl&%0.finite.? A&. A& a$)
          (vstd.set.impl&%0.finite.? A&. A& b$)
         )
         (= (nClip (Add (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$ b$))
            (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& a$ b$))
           )
          ) (nClip (Add (vstd.set.impl&%0.len.? A&. A& a$) (vstd.set.impl&%0.len.? A&. A& b$)))
       )))
       :pattern ((vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$ b$))
        (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& a$ b$))
       )
       :qid user_crate__vstd__set_lib__lemma_set_properties_54
       :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_54
     ))
     (forall ((a$ Poly) (b$ Poly)) (!
       (=>
        (and
         (has_type a$ (TYPE%vstd.set.Set. A&. A&))
         (has_type b$ (TYPE%vstd.set.Set. A&. A&))
        )
        (=>
         (and
          (vstd.set.impl&%0.finite.? A&. A& a$)
          (vstd.set.impl&%0.finite.? A&. A& b$)
         )
         (and
          (= (nClip (Add (nClip (Add (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.difference.?
                 A&. A& a$ b$
                )
               ) (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.difference.? A&. A& b$ a$))
              )
             ) (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& a$ b$))
            )
           ) (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$ b$))
          )
          (= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.difference.? A&. A& a$ b$)) (Sub
            (vstd.set.impl&%0.len.? A&. A& a$) (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.intersect.?
              A&. A& a$ b$
       )))))))
       :pattern ((vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.difference.? A&. A& a$ b$)))
       :qid user_crate__vstd__set_lib__lemma_set_properties_55
       :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_55
   ))))
   :pattern ((ens%vstd.set_lib.lemma_set_properties. A&. A&))
   :qid internal_ens__vstd.set_lib.lemma_set_properties._definition
   :skolemid skolem_internal_ens__vstd.set_lib.lemma_set_properties._definition
)))

;; Function-Axioms crate::vstd::set_lib::check_argument_is_set
(assert
 (fuel_bool_default fuel%vstd.set_lib.check_argument_is_set.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.set_lib.check_argument_is_set.)
  (forall ((A&. Dcr) (A& Type) (s! Poly)) (!
    (= (vstd.set_lib.check_argument_is_set.? A&. A& s!) s!)
    :pattern ((vstd.set_lib.check_argument_is_set.? A&. A& s!))
    :qid internal_vstd.set_lib.check_argument_is_set.?_definition
    :skolemid skolem_internal_vstd.set_lib.check_argument_is_set.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly)) (!
   (=>
    (has_type s! (TYPE%vstd.set.Set. A&. A&))
    (has_type (vstd.set_lib.check_argument_is_set.? A&. A& s!) (TYPE%vstd.set.Set. A&.
      A&
   )))
   :pattern ((vstd.set_lib.check_argument_is_set.? A&. A& s!))
   :qid internal_vstd.set_lib.check_argument_is_set.?_pre_post_definition
   :skolemid skolem_internal_vstd.set_lib.check_argument_is_set.?_pre_post_definition
)))

;; Function-Specs crate::vstd::map::Map::lemma_remove_key_len
(declare-fun req%vstd.map_lib.impl&%0.lemma_remove_key_len. (Dcr Type Dcr Type Poly
  Poly
 ) Bool
)
(declare-const %%global_location_label%%3 Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (= (req%vstd.map_lib.impl&%0.lemma_remove_key_len. K&. K& V&. V& self! key!) (and
     (=>
      %%global_location_label%%3
      (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) key!)
     )
     (=>
      %%global_location_label%%4
      (vstd.set.impl&%0.finite.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!))
   )))
   :pattern ((req%vstd.map_lib.impl&%0.lemma_remove_key_len. K&. K& V&. V& self! key!))
   :qid internal_req__vstd.map_lib.impl&__0.lemma_remove_key_len._definition
   :skolemid skolem_internal_req__vstd.map_lib.impl&__0.lemma_remove_key_len._definition
)))
(declare-fun ens%vstd.map_lib.impl&%0.lemma_remove_key_len. (Dcr Type Dcr Type Poly
  Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (= (ens%vstd.map_lib.impl&%0.lemma_remove_key_len. K&. K& V&. V& self! key!) (= (vstd.set.impl&%0.len.?
      K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!)
     ) (nClip (Add 1 (vstd.set.impl&%0.len.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V&
         (vstd.map.impl&%0.remove.? K&. K& V&. V& self! key!)
   ))))))
   :pattern ((ens%vstd.map_lib.impl&%0.lemma_remove_key_len. K&. K& V&. V& self! key!))
   :qid internal_ens__vstd.map_lib.impl&__0.lemma_remove_key_len._definition
   :skolemid skolem_internal_ens__vstd.map_lib.impl&__0.lemma_remove_key_len._definition
)))

;; Function-Def crate::vstd::map::Map::lemma_remove_key_len
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/map_lib.rs:179:5: 179:52 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const self! Poly)
 (declare-const key! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (has_type key! K&)
 )
 (assert
  (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) key!)
 )
 (assert
  (vstd.set.impl&%0.finite.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!))
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (= (vstd.set.impl&%0.len.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!)) (nClip
      (Add 1 (vstd.set.impl&%0.len.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map.impl&%0.remove.?
          K&. K& V&. V& self! key!
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::map::Map::lemma_remove_equivalency
(declare-fun ens%vstd.map_lib.impl&%0.lemma_remove_equivalency. (Dcr Type Dcr Type
  Poly Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (= (ens%vstd.map_lib.impl&%0.lemma_remove_equivalency. K&. K& V&. V& self! key!) (
     = (vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map.impl&%0.remove.? K&. K& V&. V& self!
       key!
      )
     ) (vstd.set.impl&%0.remove.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) key!)
   ))
   :pattern ((ens%vstd.map_lib.impl&%0.lemma_remove_equivalency. K&. K& V&. V& self! key!))
   :qid internal_ens__vstd.map_lib.impl&__0.lemma_remove_equivalency._definition
   :skolemid skolem_internal_ens__vstd.map_lib.impl&__0.lemma_remove_equivalency._definition
)))

;; Function-Def crate::vstd::map::Map::lemma_remove_equivalency
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/map_lib.rs:190:5: 190:56 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const self! Poly)
 (declare-const key! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (has_type key! K&)
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (= (vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map.impl&%0.remove.? K&. K& V&. V& self!
       key!
      )
     ) (vstd.set.impl&%0.remove.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) key!)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::map::Map::lemma_remove_keys_len
(declare-fun req%vstd.map_lib.impl&%0.lemma_remove_keys_len. (Dcr Type Dcr Type Poly
  Poly
 ) Bool
)
(declare-const %%global_location_label%%5 Bool)
(declare-const %%global_location_label%%6 Bool)
(declare-const %%global_location_label%%7 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (keys! Poly)) (!
   (= (req%vstd.map_lib.impl&%0.lemma_remove_keys_len. K&. K& V&. V& self! keys!) (and
     (=>
      %%global_location_label%%5
      (forall ((k$ Poly)) (!
        (=>
         (has_type k$ K&)
         (=>
          (vstd.set.impl&%0.contains.? K&. K& keys! k$)
          (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) k$)
        ))
        :pattern ((vstd.set.impl&%0.contains.? K&. K& keys! k$))
        :qid user_crate__vstd__map__Map__lemma_remove_keys_len_56
        :skolemid skolem_user_crate__vstd__map__Map__lemma_remove_keys_len_56
     )))
     (=>
      %%global_location_label%%6
      (vstd.set.impl&%0.finite.? K&. K& keys!)
     )
     (=>
      %%global_location_label%%7
      (vstd.set.impl&%0.finite.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!))
   )))
   :pattern ((req%vstd.map_lib.impl&%0.lemma_remove_keys_len. K&. K& V&. V& self! keys!))
   :qid internal_req__vstd.map_lib.impl&__0.lemma_remove_keys_len._definition
   :skolemid skolem_internal_req__vstd.map_lib.impl&__0.lemma_remove_keys_len._definition
)))
(declare-fun ens%vstd.map_lib.impl&%0.lemma_remove_keys_len. (Dcr Type Dcr Type Poly
  Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (keys! Poly)) (!
   (= (ens%vstd.map_lib.impl&%0.lemma_remove_keys_len. K&. K& V&. V& self! keys!) (= (
      vstd.set.impl&%0.len.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map_lib.impl&%0.remove_keys.?
        K&. K& V&. V& self! keys!
      ))
     ) (Sub (vstd.set.impl&%0.len.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!))
      (vstd.set.impl&%0.len.? K&. K& keys!)
   )))
   :pattern ((ens%vstd.map_lib.impl&%0.lemma_remove_keys_len. K&. K& V&. V& self! keys!))
   :qid internal_ens__vstd.map_lib.impl&__0.lemma_remove_keys_len._definition
   :skolemid skolem_internal_ens__vstd.map_lib.impl&__0.lemma_remove_keys_len._definition
)))

;; Function-Def crate::vstd::map::Map::lemma_remove_keys_len
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/map_lib.rs:198:5: 198:59 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const self! Poly)
 (declare-const keys! Poly)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Poly)
 (declare-const tmp%3 Bool)
 (declare-const key@ Poly)
 (declare-const val@ Poly)
 (declare-const tmp%4 Bool)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (has_type keys! (TYPE%vstd.set.Set. K&. K&))
 )
 (assert
  (forall ((k$ Poly)) (!
    (=>
     (has_type k$ K&)
     (=>
      (vstd.set.impl&%0.contains.? K&. K& keys! k$)
      (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) k$)
    ))
    :pattern ((vstd.set.impl&%0.contains.? K&. K& keys! k$))
    :qid user_crate__vstd__map__Map__lemma_remove_keys_len_57
    :skolemid skolem_user_crate__vstd__map__Map__lemma_remove_keys_len_57
 )))
 (assert
  (vstd.set.impl&%0.finite.? K&. K& keys!)
 )
 (assert
  (vstd.set.impl&%0.finite.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!))
 )
 (declare-const %%switch_label%%0 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 (assert
  (not (=>
    (= decrease%init0 (vstd.set.impl&%0.len.? K&. K& keys!))
    (=>
     (ens%vstd.set_lib.lemma_set_properties. K&. K&)
     (or
      (and
       (=>
        (> (vstd.set.impl&%0.len.? K&. K& keys!) 0)
        (=>
         (= key@ (vstd.set.impl&%0.choose.? K&. K& keys!))
         (=>
          (= val@ (vstd.map.impl&%0.index.? K&. K& V&. V& self! key@))
          (=>
           (= tmp%1 (vstd.map.impl&%0.remove.? K&. K& V&. V& self! key@))
           (=>
            (= tmp%2 (vstd.set.impl&%0.remove.? K&. K& keys! key@))
            (and
             (=>
              %%location_label%%0
              (check_decrease_int (let
                ((self!$0 tmp%1) (keys!$1 tmp%2))
                (vstd.set.impl&%0.len.? K&. K& keys!$1)
               ) decrease%init0 false
             ))
             (and
              (=>
               %%location_label%%1
               (req%vstd.map_lib.impl&%0.lemma_remove_keys_len. K&. K& V&. V& tmp%1 tmp%2)
              )
              (=>
               (ens%vstd.map_lib.impl&%0.lemma_remove_keys_len. K&. K& V&. V& tmp%1 tmp%2)
               (=>
                (= tmp%3 (ext_eq false (TYPE%vstd.map.Map. K&. K& V&. V&) (vstd.map_lib.impl&%0.remove_keys.?
                   K&. K& V&. V& (vstd.map.impl&%0.remove.? K&. K& V&. V& self! key@) (vstd.set.impl&%0.remove.?
                    K&. K& keys! key@
                   )
                  ) (vstd.map_lib.impl&%0.remove_keys.? K&. K& V&. V& self! keys!)
                ))
                (and
                 (=>
                  %%location_label%%2
                  tmp%3
                 )
                 (=>
                  tmp%3
                  %%switch_label%%0
       )))))))))))
       (=>
        (not (> (vstd.set.impl&%0.len.? K&. K& keys!) 0))
        (=>
         (= tmp%4 (ext_eq false (TYPE%vstd.map.Map. K&. K& V&. V&) (vstd.map_lib.impl&%0.remove_keys.?
            K&. K& V&. V& self! keys!
           ) self!
         ))
         (and
          (=>
           %%location_label%%3
           tmp%4
          )
          (=>
           tmp%4
           %%switch_label%%0
      )))))
      (and
       (not %%switch_label%%0)
       (=>
        %%location_label%%4
        (= (vstd.set.impl&%0.len.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map_lib.impl&%0.remove_keys.?
            K&. K& V&. V& self! keys!
          ))
         ) (Sub (vstd.set.impl&%0.len.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!))
          (vstd.set.impl&%0.len.? K&. K& keys!)
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::map::Map::lemma_invert_is_injective
(declare-fun ens%vstd.map_lib.impl&%0.lemma_invert_is_injective. (Dcr Type Dcr Type
  Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly)) (!
   (= (ens%vstd.map_lib.impl&%0.lemma_invert_is_injective. K&. K& V&. V& self!) (vstd.map_lib.impl&%0.is_injective.?
     V&. V& K&. K& (vstd.map_lib.impl&%0.invert.? K&. K& V&. V& self!)
   ))
   :pattern ((ens%vstd.map_lib.impl&%0.lemma_invert_is_injective. K&. K& V&. V& self!))
   :qid internal_ens__vstd.map_lib.impl&__0.lemma_invert_is_injective._definition
   :skolemid skolem_internal_ens__vstd.map_lib.impl&__0.lemma_invert_is_injective._definition
)))

;; Function-Def crate::vstd::map::Map::lemma_invert_is_injective
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/map_lib.rs:219:5: 219:49 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const self! Poly)
 (declare-const x@ Poly)
 (declare-const y@ Poly)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const i@ Poly)
 (declare-const j@ Poly)
 (declare-const k@ Poly)
 (declare-const l@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (declare-fun %%choose%%2 (Type Dcr Type Poly Dcr Type Dcr Type Poly Poly Dcr Type Poly)
  Poly
 )
 (assert
  (forall ((%%hole%%0 Type) (%%hole%%1 Dcr) (%%hole%%2 Type) (%%hole%%3 Poly) (%%hole%%4
     Dcr
    ) (%%hole%%5 Type) (%%hole%%6 Dcr) (%%hole%%7 Type) (%%hole%%8 Poly) (%%hole%%9 Poly)
    (%%hole%%10 Dcr) (%%hole%%11 Type) (%%hole%%12 Poly)
   ) (!
    (=>
     (exists ((i$1 Poly)) (!
       (and
        (has_type i$1 %%hole%%0)
        (and
         (vstd.set.impl&%0.contains.? %%hole%%1 %%hole%%2 %%hole%%3 i$1)
         (= (vstd.map.impl&%0.index.? %%hole%%4 %%hole%%5 %%hole%%6 %%hole%%7 %%hole%%8 i$1)
          %%hole%%9
       )))
       :pattern ((vstd.set.impl&%0.contains.? %%hole%%10 %%hole%%11 %%hole%%12 i$1))
       :qid user_crate__vstd__map__Map__lemma_invert_is_injective_58
       :skolemid skolem_user_crate__vstd__map__Map__lemma_invert_is_injective_58
     ))
     (exists ((i$1 Poly)) (!
       (and
        (and
         (has_type i$1 %%hole%%0)
         (and
          (vstd.set.impl&%0.contains.? %%hole%%1 %%hole%%2 %%hole%%3 i$1)
          (= (vstd.map.impl&%0.index.? %%hole%%4 %%hole%%5 %%hole%%6 %%hole%%7 %%hole%%8 i$1)
           %%hole%%9
        )))
        (= (%%choose%%2 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5 %%hole%%6
          %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12
         ) i$1
       ))
       :pattern ((vstd.set.impl&%0.contains.? %%hole%%10 %%hole%%11 %%hole%%12 i$1))
    )))
    :pattern ((%%choose%%2 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
      %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12
 )))))
 (declare-fun %%choose%%3 (Type Dcr Type Dcr Type Poly Poly Poly Dcr Type Dcr Type Poly
   Poly
  ) Poly
 )
 (assert
  (forall ((%%hole%%0 Type) (%%hole%%1 Dcr) (%%hole%%2 Type) (%%hole%%3 Dcr) (%%hole%%4
     Type
    ) (%%hole%%5 Poly) (%%hole%%6 Poly) (%%hole%%7 Poly) (%%hole%%8 Dcr) (%%hole%%9 Type)
    (%%hole%%10 Dcr) (%%hole%%11 Type) (%%hole%%12 Poly) (%%hole%%13 Poly)
   ) (!
    (=>
     (exists ((j$1 Poly)) (!
       (and
        (has_type j$1 %%hole%%0)
        (and
         (vstd.map_lib.impl&%0.contains_pair.? %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
          j$1 %%hole%%6
         )
         (= %%hole%%7 j$1)
       ))
       :pattern ((vstd.map_lib.impl&%0.contains_pair.? %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11
         %%hole%%12 j$1 %%hole%%13
       ))
       :qid user_crate__vstd__map__Map__lemma_invert_is_injective_59
       :skolemid skolem_user_crate__vstd__map__Map__lemma_invert_is_injective_59
     ))
     (exists ((j$1 Poly)) (!
       (and
        (and
         (has_type j$1 %%hole%%0)
         (and
          (vstd.map_lib.impl&%0.contains_pair.? %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
           j$1 %%hole%%6
          )
          (= %%hole%%7 j$1)
        ))
        (= (%%choose%%3 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5 %%hole%%6
          %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12 %%hole%%13
         ) j$1
       ))
       :pattern ((vstd.map_lib.impl&%0.contains_pair.? %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11
         %%hole%%12 j$1 %%hole%%13
    )))))
    :pattern ((%%choose%%3 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
      %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12 %%hole%%13
 )))))
 (declare-fun %%choose%%4 (Type Dcr Type Dcr Type Poly Poly Poly Poly Dcr Type Dcr Type
   Poly Poly
  ) Poly
 )
 (assert
  (forall ((%%hole%%0 Type) (%%hole%%1 Dcr) (%%hole%%2 Type) (%%hole%%3 Dcr) (%%hole%%4
     Type
    ) (%%hole%%5 Poly) (%%hole%%6 Poly) (%%hole%%7 Poly) (%%hole%%8 Poly) (%%hole%%9 Dcr)
    (%%hole%%10 Type) (%%hole%%11 Dcr) (%%hole%%12 Type) (%%hole%%13 Poly) (%%hole%%14
     Poly
    )
   ) (!
    (=>
     (exists ((l$1 Poly)) (!
       (and
        (has_type l$1 %%hole%%0)
        (and
         (and
          (vstd.map_lib.impl&%0.contains_pair.? %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
           l$1 %%hole%%6
          )
          (= %%hole%%7 l$1)
         )
         (not (= l$1 %%hole%%8))
       ))
       :pattern ((vstd.map_lib.impl&%0.contains_pair.? %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12
         %%hole%%13 l$1 %%hole%%14
       ))
       :qid user_crate__vstd__map__Map__lemma_invert_is_injective_61
       :skolemid skolem_user_crate__vstd__map__Map__lemma_invert_is_injective_61
     ))
     (exists ((l$1 Poly)) (!
       (and
        (and
         (has_type l$1 %%hole%%0)
         (and
          (and
           (vstd.map_lib.impl&%0.contains_pair.? %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
            l$1 %%hole%%6
           )
           (= %%hole%%7 l$1)
          )
          (not (= l$1 %%hole%%8))
        ))
        (= (%%choose%%4 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5 %%hole%%6
          %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12 %%hole%%13 %%hole%%14
         ) l$1
       ))
       :pattern ((vstd.map_lib.impl&%0.contains_pair.? %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12
         %%hole%%13 l$1 %%hole%%14
    )))))
    :pattern ((%%choose%%4 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
      %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12 %%hole%%13
      %%hole%%14
 )))))
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     (has_type x@ V&)
     (=>
      (has_type y@ V&)
      (=>
       (and
        (and
         (not (= x@ y@))
         (vstd.set.impl&%0.contains.? V&. V& (vstd.map.impl&%0.dom.? V&. V& K&. K& (vstd.map_lib.impl&%0.invert.?
            K&. K& V&. V& self!
           )
          ) x@
        ))
        (vstd.set.impl&%0.contains.? V&. V& (vstd.map.impl&%0.dom.? V&. V& K&. K& (vstd.map_lib.impl&%0.invert.?
           K&. K& V&. V& self!
          )
         ) y@
       ))
       (=>
        (= i@ (as_type (%%choose%%2 K& K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) K&.
           K& V&. V& self! x@ K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!)
          ) K&
        ))
        (=>
         (= tmp%1 (vstd.map_lib.impl&%0.contains_pair.? K&. K& V&. V& self! i@ x@))
         (and
          (=>
           %%location_label%%0
           tmp%1
          )
          (=>
           tmp%1
           (=>
            (= j@ (as_type (%%choose%%3 K& K&. K& V&. V& self! x@ (vstd.map.impl&%0.index.? V&. V&
                K&. K& (vstd.map_lib.impl&%0.invert.? K&. K& V&. V& self!) x@
               ) K&. K& V&. V& self! x@
              ) K&
            ))
            (=>
             (= k@ (as_type (%%choose%%2 K& K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) K&.
                K& V&. V& self! y@ K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!)
               ) K&
             ))
             (=>
              (= tmp%2 (vstd.map_lib.impl&%0.contains_pair.? K&. K& V&. V& self! k@ y@))
              (and
               (=>
                %%location_label%%1
                tmp%2
               )
               (=>
                tmp%2
                (=>
                 (= l@ (as_type (%%choose%%4 K& K&. K& V&. V& self! y@ (vstd.map.impl&%0.index.? V&. V&
                     K&. K& (vstd.map_lib.impl&%0.invert.? K&. K& V&. V& self!) y@
                    ) j@ K&. K& V&. V& self! y@
                   ) K&
                 ))
                 (=>
                  %%location_label%%2
                  (not (= (vstd.map.impl&%0.index.? V&. V& K&. K& (vstd.map_lib.impl&%0.invert.? K&. K&
                      V&. V& self!
                     ) x@
                    ) (vstd.map.impl&%0.index.? V&. V& K&. K& (vstd.map_lib.impl&%0.invert.? K&. K& V&.
                      V& self!
                     ) y@
    )))))))))))))))))
    (=>
     (forall ((x$ Poly) (y$ Poly)) (!
       (=>
        (and
         (has_type x$ V&)
         (has_type y$ V&)
        )
        (=>
         (and
          (and
           (not (= x$ y$))
           (vstd.set.impl&%0.contains.? V&. V& (vstd.map.impl&%0.dom.? V&. V& K&. K& (vstd.map_lib.impl&%0.invert.?
              K&. K& V&. V& self!
             )
            ) x$
          ))
          (vstd.set.impl&%0.contains.? V&. V& (vstd.map.impl&%0.dom.? V&. V& K&. K& (vstd.map_lib.impl&%0.invert.?
             K&. K& V&. V& self!
            )
           ) y$
         ))
         (not (= (vstd.map.impl&%0.index.? V&. V& K&. K& (vstd.map_lib.impl&%0.invert.? K&. K&
             V&. V& self!
            ) x$
           ) (vstd.map.impl&%0.index.? V&. V& K&. K& (vstd.map_lib.impl&%0.invert.? K&. K& V&.
             V& self!
            ) y$
       )))))
       :pattern ((vstd.map.impl&%0.index.? V&. V& K&. K& (vstd.map_lib.impl&%0.invert.? K&.
          K& V&. V& self!
         ) x$
        ) (vstd.map.impl&%0.index.? V&. V& K&. K& (vstd.map_lib.impl&%0.invert.? K&. K& V&.
          V& self!
         ) y$
       ))
       :qid user_crate__vstd__map__Map__lemma_invert_is_injective_62
       :skolemid skolem_user_crate__vstd__map__Map__lemma_invert_is_injective_62
     ))
     (=>
      %%location_label%%3
      (vstd.map_lib.impl&%0.is_injective.? V&. V& K&. K& (vstd.map_lib.impl&%0.invert.? K&.
        K& V&. V& self!
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::map_lib::lemma_disjoint_union_size
(declare-fun req%vstd.map_lib.lemma_disjoint_union_size. (Dcr Type Dcr Type Poly Poly)
 Bool
)
(declare-const %%global_location_label%%8 Bool)
(declare-const %%global_location_label%%9 Bool)
(declare-const %%global_location_label%%10 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m1! Poly) (m2! Poly)) (!
   (= (req%vstd.map_lib.lemma_disjoint_union_size. K&. K& V&. V& m1! m2!) (and
     (=>
      %%global_location_label%%8
      (vstd.set.impl&%0.disjoint.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m1!) (vstd.map.impl&%0.dom.?
        K&. K& V&. V& m2!
     )))
     (=>
      %%global_location_label%%9
      (vstd.set.impl&%0.finite.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m1!))
     )
     (=>
      %%global_location_label%%10
      (vstd.set.impl&%0.finite.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m2!))
   )))
   :pattern ((req%vstd.map_lib.lemma_disjoint_union_size. K&. K& V&. V& m1! m2!))
   :qid internal_req__vstd.map_lib.lemma_disjoint_union_size._definition
   :skolemid skolem_internal_req__vstd.map_lib.lemma_disjoint_union_size._definition
)))
(declare-fun ens%vstd.map_lib.lemma_disjoint_union_size. (Dcr Type Dcr Type Poly Poly)
 Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m1! Poly) (m2! Poly)) (!
   (= (ens%vstd.map_lib.lemma_disjoint_union_size. K&. K& V&. V& m1! m2!) (= (vstd.set.impl&%0.len.?
      K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map_lib.impl&%0.union_prefer_right.?
        K&. K& V&. V& m1! m2!
      ))
     ) (nClip (Add (vstd.set.impl&%0.len.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m1!))
       (vstd.set.impl&%0.len.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m2!))
   ))))
   :pattern ((ens%vstd.map_lib.lemma_disjoint_union_size. K&. K& V&. V& m1! m2!))
   :qid internal_ens__vstd.map_lib.lemma_disjoint_union_size._definition
   :skolemid skolem_internal_ens__vstd.map_lib.lemma_disjoint_union_size._definition
)))

;; Function-Def crate::vstd::map_lib::lemma_disjoint_union_size
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/map_lib.rs:257:1: 257:75 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m1! Poly)
 (declare-const m2! Poly)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Poly)
 (declare-const u@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m1! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (has_type m2! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (vstd.set.impl&%0.disjoint.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m1!) (vstd.map.impl&%0.dom.?
    K&. K& V&. V& m2!
 )))
 (assert
  (vstd.set.impl&%0.finite.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m1!))
 )
 (assert
  (vstd.set.impl&%0.finite.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m2!))
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 (assert
  (not (=>
    (= u@ (vstd.map_lib.impl&%0.union_prefer_right.? K&. K& V&. V& m1! m2!))
    (=>
     (= tmp%1 (ext_eq false (TYPE%vstd.set.Set. K&. K&) (vstd.map.impl&%0.dom.? K&. K& V&.
        V& u@
       ) (vstd.set.impl&%0.union.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m1!) (vstd.map.impl&%0.dom.?
         K&. K& V&. V& m2!
     ))))
     (and
      (=>
       %%location_label%%0
       tmp%1
      )
      (=>
       tmp%1
       (=>
        (= tmp%2 (ext_eq false (TYPE%vstd.set.Set. K&. K&) (vstd.map.impl&%0.dom.? K&. K& V&.
           V& (vstd.map_lib.impl&%0.remove_keys.? K&. K& V&. V& u@ (vstd.map.impl&%0.dom.? K&.
             K& V&. V& m1!
           ))
          ) (vstd.map.impl&%0.dom.? K&. K& V&. V& m2!)
        ))
        (and
         (=>
          %%location_label%%1
          tmp%2
         )
         (=>
          tmp%2
          (and
           (=>
            (= tmp%3 (vstd.map.impl&%0.dom.? K&. K& V&. V& m1!))
            (and
             (=>
              %%location_label%%2
              (req%vstd.map_lib.impl&%0.lemma_remove_keys_len. K&. K& V&. V& u@ tmp%3)
             )
             (=>
              (ens%vstd.map_lib.impl&%0.lemma_remove_keys_len. K&. K& V&. V& u@ tmp%3)
              (=>
               %%location_label%%3
               (= (vstd.set.impl&%0.len.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map_lib.impl&%0.remove_keys.?
                   K&. K& V&. V& u@ (vstd.map.impl&%0.dom.? K&. K& V&. V& m1!)
                 ))
                ) (Sub (vstd.set.impl&%0.len.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& u@)) (
                  vstd.set.impl&%0.len.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m1!)
           )))))))
           (=>
            (= (vstd.set.impl&%0.len.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map_lib.impl&%0.remove_keys.?
                K&. K& V&. V& u@ (vstd.map.impl&%0.dom.? K&. K& V&. V& m1!)
              ))
             ) (Sub (vstd.set.impl&%0.len.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& u@)) (
               vstd.set.impl&%0.len.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m1!)
            )))
            (=>
             %%location_label%%4
             (= (vstd.set.impl&%0.len.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map_lib.impl&%0.union_prefer_right.?
                 K&. K& V&. V& m1! m2!
               ))
              ) (nClip (Add (vstd.set.impl&%0.len.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m1!))
                (vstd.set.impl&%0.len.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m2!))
 )))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::map_lib::lemma_map_new_domain
(declare-fun ens%vstd.map_lib.lemma_map_new_domain. (Dcr Type Dcr Type %%Function%%
  %%Function%%
 ) Bool
)
(declare-fun %%lambda%%10 (%%Function%%) %%Function%%)
(assert
 (forall ((%%hole%%0 %%Function%%) (k$ Poly)) (!
   (= (%%apply%%0 (%%lambda%%10 %%hole%%0) k$) (%%apply%%0 %%hole%%0 k$))
   :pattern ((%%apply%%0 (%%lambda%%10 %%hole%%0) k$))
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (fk! %%Function%%) (fv! %%Function%%))
  (!
   (= (ens%vstd.map_lib.lemma_map_new_domain. K&. K& V&. V& fk! fv!) (= (vstd.map.impl&%0.dom.?
      K&. K& V&. V& (vstd.map.impl&%0.new.? K&. K& V&. V& $ (TYPE%fun%1. K&. K& $ BOOL)
       $ (TYPE%fun%1. K&. K& V&. V&) (Poly%fun%1. fk!) (Poly%fun%1. fv!)
      )
     ) (vstd.set.impl&%0.new.? K&. K& $ (TYPE%fun%1. K&. K& $ BOOL) (Poly%fun%1. (mk_fun
        (%%lambda%%10 fk!)
   )))))
   :pattern ((ens%vstd.map_lib.lemma_map_new_domain. K&. K& V&. V& fk! fv!))
   :qid internal_ens__vstd.map_lib.lemma_map_new_domain._definition
   :skolemid skolem_internal_ens__vstd.map_lib.lemma_map_new_domain._definition
)))

;; Function-Def crate::vstd::map_lib::lemma_map_new_domain
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/map_lib.rs:275:1: 275:85 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const fk! %%Function%%)
 (declare-const fv! %%Function%%)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%fun%1. fk!) (TYPE%fun%1. K&. K& $ BOOL))
 )
 (assert
  (has_type (Poly%fun%1. fv!) (TYPE%fun%1. K&. K& V&. V&))
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= tmp%1 (ext_eq false (TYPE%vstd.set.Set. K&. K&) (vstd.set.impl&%0.new.? K&. K& $
       (TYPE%fun%1. K&. K& $ BOOL) (Poly%fun%1. fk!)
      ) (vstd.set.impl&%0.new.? K&. K& $ (TYPE%fun%1. K&. K& $ BOOL) (Poly%fun%1. (mk_fun
         (%%lambda%%10 fk!)
    )))))
    (and
     (=>
      %%location_label%%0
      tmp%1
     )
     (=>
      tmp%1
      (=>
       %%location_label%%1
       (= (vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map.impl&%0.new.? K&. K& V&. V& $ (TYPE%fun%1.
           K&. K& $ BOOL
          ) $ (TYPE%fun%1. K&. K& V&. V&) (Poly%fun%1. fk!) (Poly%fun%1. fv!)
         )
        ) (vstd.set.impl&%0.new.? K&. K& $ (TYPE%fun%1. K&. K& $ BOOL) (Poly%fun%1. (mk_fun
           (%%lambda%%10 fk!)
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::map_lib::lemma_map_new_values
(declare-fun ens%vstd.map_lib.lemma_map_new_values. (Dcr Type Dcr Type %%Function%%
  %%Function%%
 ) Bool
)
(declare-fun %%lambda%%11 (%%Function%% %%Function%% Type %%Function%% %%Function%%)
 %%Function%%
)
(assert
 (forall ((%%hole%%0 %%Function%%) (%%hole%%1 %%Function%%) (%%hole%%2 Type) (%%hole%%3
    %%Function%%
   ) (%%hole%%4 %%Function%%) (v$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%11 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4) v$)
    (B (exists ((k$ Poly)) (!
       (and
        (has_type k$ %%hole%%2)
        (and
         (%B (%%apply%%0 %%hole%%3 k$))
         (= (%%apply%%0 %%hole%%4 k$) v$)
       ))
       :pattern ((%%apply%%0 %%hole%%0 k$) (%%apply%%0 %%hole%%1 k$))
       :qid user_crate__vstd__map_lib__lemma_map_new_values_64
       :skolemid skolem_user_crate__vstd__map_lib__lemma_map_new_values_64
   ))))
   :pattern ((%%apply%%0 (%%lambda%%11 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4)
     v$
)))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (fk! %%Function%%) (fv! %%Function%%))
  (!
   (= (ens%vstd.map_lib.lemma_map_new_values. K&. K& V&. V& fk! fv!) (= (vstd.map_lib.impl&%0.values.?
      K&. K& V&. V& (vstd.map.impl&%0.new.? K&. K& V&. V& $ (TYPE%fun%1. K&. K& $ BOOL)
       $ (TYPE%fun%1. K&. K& V&. V&) (Poly%fun%1. fk!) (Poly%fun%1. fv!)
      )
     ) (vstd.set.impl&%0.new.? V&. V& $ (TYPE%fun%1. V&. V& $ BOOL) (Poly%fun%1. (mk_fun
        (%%lambda%%11 fk! fv! K& fk! fv!)
   )))))
   :pattern ((ens%vstd.map_lib.lemma_map_new_values. K&. K& V&. V& fk! fv!))
   :qid internal_ens__vstd.map_lib.lemma_map_new_values._definition
   :skolemid skolem_internal_ens__vstd.map_lib.lemma_map_new_values._definition
)))

;; Function-Def crate::vstd::map_lib::lemma_map_new_values
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/map_lib.rs:286:1: 286:85 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const fk! %%Function%%)
 (declare-const fv! %%Function%%)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const keys@ Poly)
 (declare-const values@ Poly)
 (declare-const map@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%fun%1. fk!) (TYPE%fun%1. K&. K& $ BOOL))
 )
 (assert
  (has_type (Poly%fun%1. fv!) (TYPE%fun%1. K&. K& V&. V&))
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (= keys@ (vstd.set.impl&%0.new.? K&. K& $ (TYPE%fun%1. K&. K& $ BOOL) (Poly%fun%1. fk!)))
    (=>
     (= values@ (vstd.map_lib.impl&%0.values.? K&. K& V&. V& (vstd.map.impl&%0.new.? K&.
        K& V&. V& $ (TYPE%fun%1. K&. K& $ BOOL) $ (TYPE%fun%1. K&. K& V&. V&) (Poly%fun%1.
         fk!
        ) (Poly%fun%1. fv!)
     )))
     (=>
      (= map@ (vstd.map.impl&%0.new.? K&. K& V&. V& $ (TYPE%fun%1. K&. K& $ BOOL) $ (TYPE%fun%1.
         K&. K& V&. V&
        ) (Poly%fun%1. fk!) (Poly%fun%1. fv!)
      ))
      (=>
       (= tmp%1 (ext_eq false (TYPE%vstd.set.Set. K&. K&) (vstd.map.impl&%0.dom.? K&. K& V&.
          V& map@
         ) keys@
       ))
       (and
        (=>
         %%location_label%%0
         tmp%1
        )
        (=>
         tmp%1
         (=>
          (= tmp%2 (forall ((k$ Poly)) (!
             (=>
              (has_type k$ K&)
              (=>
               (%B (%%apply%%0 fk! k$))
               (vstd.set.impl&%0.contains.? K&. K& keys@ k$)
             ))
             :pattern ((%%apply%%0 fk! k$))
             :qid user_crate__vstd__map_lib__lemma_map_new_values_66
             :skolemid skolem_user_crate__vstd__map_lib__lemma_map_new_values_66
          )))
          (and
           (=>
            %%location_label%%1
            tmp%2
           )
           (=>
            tmp%2
            (=>
             (= tmp%3 (ext_eq false (TYPE%vstd.set.Set. V&. V&) values@ (vstd.set.impl&%0.new.? V&.
                V& $ (TYPE%fun%1. V&. V& $ BOOL) (Poly%fun%1. (mk_fun (%%lambda%%11 fk! fv! K& fk! fv!)))
             )))
             (and
              (=>
               %%location_label%%2
               tmp%3
              )
              (=>
               tmp%3
               (=>
                %%location_label%%3
                (= (vstd.map_lib.impl&%0.values.? K&. K& V&. V& (vstd.map.impl&%0.new.? K&. K& V&. V&
                   $ (TYPE%fun%1. K&. K& $ BOOL) $ (TYPE%fun%1. K&. K& V&. V&) (Poly%fun%1. fk!) (Poly%fun%1.
                    fv!
                  ))
                 ) (vstd.set.impl&%0.new.? V&. V& $ (TYPE%fun%1. V&. V& $ BOOL) (Poly%fun%1. (mk_fun
                    (%%lambda%%11 fk! fv! K& fk! fv!)
 )))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::map_lib::lemma_map_properties
(declare-fun ens%vstd.map_lib.lemma_map_properties. (Dcr Type Dcr Type) Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type)) (!
   (= (ens%vstd.map_lib.lemma_map_properties. K&. K& V&. V&) (and
     (forall ((fk$ Poly) (fv$ Poly)) (!
       (=>
        (and
         (has_type fk$ (TYPE%fun%1. K&. K& $ BOOL))
         (has_type fv$ (TYPE%fun%1. K&. K& V&. V&))
        )
        (= (vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map.impl&%0.new.? K&. K& V&. V& $ (TYPE%fun%1.
            K&. K& $ BOOL
           ) $ (TYPE%fun%1. K&. K& V&. V&) fk$ fv$
          )
         ) (vstd.set.impl&%0.new.? K&. K& $ (TYPE%fun%1. K&. K& $ BOOL) (Poly%fun%1. (mk_fun
            (%%lambda%%10 (%Poly%fun%1. fk$))
       )))))
       :pattern ((vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map.impl&%0.new.? K&. K& V&. V&
          $ (TYPE%fun%1. K&. K& $ BOOL) $ (TYPE%fun%1. K&. K& V&. V&) fk$ fv$
       )))
       :qid user_crate__vstd__map_lib__lemma_map_properties_68
       :skolemid skolem_user_crate__vstd__map_lib__lemma_map_properties_68
     ))
     (forall ((fk$ Poly) (fv$ Poly)) (!
       (=>
        (and
         (has_type fk$ (TYPE%fun%1. K&. K& $ BOOL))
         (has_type fv$ (TYPE%fun%1. K&. K& V&. V&))
        )
        (= (vstd.map_lib.impl&%0.values.? K&. K& V&. V& (vstd.map.impl&%0.new.? K&. K& V&. V&
           $ (TYPE%fun%1. K&. K& $ BOOL) $ (TYPE%fun%1. K&. K& V&. V&) fk$ fv$
          )
         ) (vstd.set.impl&%0.new.? V&. V& $ (TYPE%fun%1. V&. V& $ BOOL) (Poly%fun%1. (mk_fun
            (%%lambda%%11 (%Poly%fun%1. fk$) (%Poly%fun%1. fv$) K& (%Poly%fun%1. fk$) (%Poly%fun%1.
              fv$
       )))))))
       :pattern ((vstd.map_lib.impl&%0.values.? K&. K& V&. V& (vstd.map.impl&%0.new.? K&. K&
          V&. V& $ (TYPE%fun%1. K&. K& $ BOOL) $ (TYPE%fun%1. K&. K& V&. V&) fk$ fv$
       )))
       :qid user_crate__vstd__map_lib__lemma_map_properties_70
       :skolemid skolem_user_crate__vstd__map_lib__lemma_map_properties_70
   ))))
   :pattern ((ens%vstd.map_lib.lemma_map_properties. K&. K& V&. V&))
   :qid internal_ens__vstd.map_lib.lemma_map_properties._definition
   :skolemid skolem_internal_ens__vstd.map_lib.lemma_map_properties._definition
)))

;; Function-Def crate::vstd::map_lib::lemma_map_properties
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/map_lib.rs:303:1: 303:42 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const fk@ Poly)
 (declare-const fv@ Poly)
 (declare-const fk$1@ Poly)
 (declare-const fv$1@ Poly)
 (assert
  fuel_defaults
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     (has_type fk@ (TYPE%fun%1. K&. K& $ BOOL))
     (=>
      (has_type fv@ (TYPE%fun%1. K&. K& V&. V&))
      (=>
       (ens%vstd.map_lib.lemma_map_new_domain. K&. K& V&. V& (%Poly%fun%1. fk@) (%Poly%fun%1.
         fv@
       ))
       (=>
        %%location_label%%0
        (= (vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map.impl&%0.new.? K&. K& V&. V& $ (TYPE%fun%1.
            K&. K& $ BOOL
           ) $ (TYPE%fun%1. K&. K& V&. V&) fk@ fv@
          )
         ) (vstd.set.impl&%0.new.? K&. K& $ (TYPE%fun%1. K&. K& $ BOOL) (Poly%fun%1. (mk_fun
            (%%lambda%%10 (%Poly%fun%1. fk@))
    ))))))))
    (=>
     (forall ((fk$ Poly) (fv$ Poly)) (!
       (=>
        (and
         (has_type fk$ (TYPE%fun%1. K&. K& $ BOOL))
         (has_type fv$ (TYPE%fun%1. K&. K& V&. V&))
        )
        (= (vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map.impl&%0.new.? K&. K& V&. V& $ (TYPE%fun%1.
            K&. K& $ BOOL
           ) $ (TYPE%fun%1. K&. K& V&. V&) fk$ fv$
          )
         ) (vstd.set.impl&%0.new.? K&. K& $ (TYPE%fun%1. K&. K& $ BOOL) (Poly%fun%1. (mk_fun
            (%%lambda%%10 (%Poly%fun%1. fk$))
       )))))
       :pattern ((vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map.impl&%0.new.? K&. K& V&. V&
          $ (TYPE%fun%1. K&. K& $ BOOL) $ (TYPE%fun%1. K&. K& V&. V&) fk$ fv$
       )))
       :qid user_crate__vstd__map_lib__lemma_map_properties_74
       :skolemid skolem_user_crate__vstd__map_lib__lemma_map_properties_74
     ))
     (and
      (=>
       (has_type fk$1@ (TYPE%fun%1. K&. K& $ BOOL))
       (=>
        (has_type fv$1@ (TYPE%fun%1. K&. K& V&. V&))
        (=>
         (ens%vstd.map_lib.lemma_map_new_values. K&. K& V&. V& (%Poly%fun%1. fk$1@) (%Poly%fun%1.
           fv$1@
         ))
         (=>
          %%location_label%%1
          (= (vstd.map_lib.impl&%0.values.? K&. K& V&. V& (vstd.map.impl&%0.new.? K&. K& V&. V&
             $ (TYPE%fun%1. K&. K& $ BOOL) $ (TYPE%fun%1. K&. K& V&. V&) fk$1@ fv$1@
            )
           ) (vstd.set.impl&%0.new.? V&. V& $ (TYPE%fun%1. V&. V& $ BOOL) (Poly%fun%1. (mk_fun
              (%%lambda%%11 (%Poly%fun%1. fk$1@) (%Poly%fun%1. fv$1@) K& (%Poly%fun%1. fk$1@) (%Poly%fun%1.
                fv$1@
      ))))))))))
      (=>
       (forall ((fk$ Poly) (fv$ Poly)) (!
         (=>
          (and
           (has_type fk$ (TYPE%fun%1. K&. K& $ BOOL))
           (has_type fv$ (TYPE%fun%1. K&. K& V&. V&))
          )
          (= (vstd.map_lib.impl&%0.values.? K&. K& V&. V& (vstd.map.impl&%0.new.? K&. K& V&. V&
             $ (TYPE%fun%1. K&. K& $ BOOL) $ (TYPE%fun%1. K&. K& V&. V&) fk$ fv$
            )
           ) (vstd.set.impl&%0.new.? V&. V& $ (TYPE%fun%1. V&. V& $ BOOL) (Poly%fun%1. (mk_fun
              (%%lambda%%11 (%Poly%fun%1. fk$) (%Poly%fun%1. fv$) K& (%Poly%fun%1. fk$) (%Poly%fun%1.
                fv$
         )))))))
         :pattern ((vstd.map_lib.impl&%0.values.? K&. K& V&. V& (vstd.map.impl&%0.new.? K&. K&
            V&. V& $ (TYPE%fun%1. K&. K& $ BOOL) $ (TYPE%fun%1. K&. K& V&. V&) fk$ fv$
         )))
         :qid user_crate__vstd__map_lib__lemma_map_properties_77
         :skolemid skolem_user_crate__vstd__map_lib__lemma_map_properties_77
       ))
       (and
        (=>
         %%location_label%%2
         (forall ((fk$ Poly) (fv$ Poly)) (!
           (=>
            (and
             (has_type fk$ (TYPE%fun%1. K&. K& $ BOOL))
             (has_type fv$ (TYPE%fun%1. K&. K& V&. V&))
            )
            (= (vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map.impl&%0.new.? K&. K& V&. V& $ (TYPE%fun%1.
                K&. K& $ BOOL
               ) $ (TYPE%fun%1. K&. K& V&. V&) fk$ fv$
              )
             ) (vstd.set.impl&%0.new.? K&. K& $ (TYPE%fun%1. K&. K& $ BOOL) (Poly%fun%1. (mk_fun
                (%%lambda%%10 (%Poly%fun%1. fk$))
           )))))
           :pattern ((vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map.impl&%0.new.? K&. K& V&. V&
              $ (TYPE%fun%1. K&. K& $ BOOL) $ (TYPE%fun%1. K&. K& V&. V&) fk$ fv$
           )))
           :qid user_crate__vstd__map_lib__lemma_map_properties_71
           :skolemid skolem_user_crate__vstd__map_lib__lemma_map_properties_71
        )))
        (=>
         %%location_label%%3
         (forall ((fk$ Poly) (fv$ Poly)) (!
           (=>
            (and
             (has_type fk$ (TYPE%fun%1. K&. K& $ BOOL))
             (has_type fv$ (TYPE%fun%1. K&. K& V&. V&))
            )
            (= (vstd.map_lib.impl&%0.values.? K&. K& V&. V& (vstd.map.impl&%0.new.? K&. K& V&. V&
               $ (TYPE%fun%1. K&. K& $ BOOL) $ (TYPE%fun%1. K&. K& V&. V&) fk$ fv$
              )
             ) (vstd.set.impl&%0.new.? V&. V& $ (TYPE%fun%1. V&. V& $ BOOL) (Poly%fun%1. (mk_fun
                (%%lambda%%11 (%Poly%fun%1. fk$) (%Poly%fun%1. fv$) K& (%Poly%fun%1. fk$) (%Poly%fun%1.
                  fv$
           )))))))
           :pattern ((vstd.map_lib.impl&%0.values.? K&. K& V&. V& (vstd.map.impl&%0.new.? K&. K&
              V&. V& $ (TYPE%fun%1. K&. K& $ BOOL) $ (TYPE%fun%1. K&. K& V&. V&) fk$ fv$
           )))
           :qid user_crate__vstd__map_lib__lemma_map_properties_73
           :skolemid skolem_user_crate__vstd__map_lib__lemma_map_properties_73
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::map_lib::lemma_values_finite
(declare-fun req%vstd.map_lib.lemma_values_finite. (Dcr Type Dcr Type Poly) Bool)
(declare-const %%global_location_label%%11 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly)) (!
   (= (req%vstd.map_lib.lemma_values_finite. K&. K& V&. V& m!) (=>
     %%global_location_label%%11
     (vstd.set.impl&%0.finite.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!))
   ))
   :pattern ((req%vstd.map_lib.lemma_values_finite. K&. K& V&. V& m!))
   :qid internal_req__vstd.map_lib.lemma_values_finite._definition
   :skolemid skolem_internal_req__vstd.map_lib.lemma_values_finite._definition
)))
(declare-fun ens%vstd.map_lib.lemma_values_finite. (Dcr Type Dcr Type Poly) Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly)) (!
   (= (ens%vstd.map_lib.lemma_values_finite. K&. K& V&. V& m!) (vstd.set.impl&%0.finite.?
     V&. V& (vstd.map_lib.impl&%0.values.? K&. K& V&. V& m!)
   ))
   :pattern ((ens%vstd.map_lib.lemma_values_finite. K&. K& V&. V& m!))
   :qid internal_ens__vstd.map_lib.lemma_values_finite._definition
   :skolemid skolem_internal_ens__vstd.map_lib.lemma_values_finite._definition
)))

;; Function-Def crate::vstd::map_lib::lemma_values_finite
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/map_lib.rs:324:1: 324:53 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m! Poly)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const v0@ Poly)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Bool)
 (declare-const tmp%6 Bool)
 (declare-const k0@ Poly)
 (declare-const tmp%7 Bool)
 (declare-const tmp%8 Bool)
 (declare-const tmp%9 Poly)
 (declare-const k@ Poly)
 (declare-const v@ Poly)
 (declare-const m1@ Poly)
 (declare-const mv@ Poly)
 (declare-const m1v@ Poly)
 (declare-const s1@ Poly)
 (declare-const s2@ Poly)
 (declare-const tmp%10 Bool)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (vstd.set.impl&%0.finite.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!))
 )
 (declare-fun %%choose%%5 (Type Dcr Type Poly Dcr Type Dcr Type Poly Poly Dcr Type Dcr
   Type Poly
  ) Poly
 )
 (assert
  (forall ((%%hole%%0 Type) (%%hole%%1 Dcr) (%%hole%%2 Type) (%%hole%%3 Poly) (%%hole%%4
     Dcr
    ) (%%hole%%5 Type) (%%hole%%6 Dcr) (%%hole%%7 Type) (%%hole%%8 Poly) (%%hole%%9 Poly)
    (%%hole%%10 Dcr) (%%hole%%11 Type) (%%hole%%12 Dcr) (%%hole%%13 Type) (%%hole%%14
     Poly
    )
   ) (!
    (=>
     (exists ((k0$1 Poly)) (!
       (and
        (has_type k0$1 %%hole%%0)
        (and
         (vstd.set.impl&%0.contains.? %%hole%%1 %%hole%%2 %%hole%%3 k0$1)
         (= (vstd.map.impl&%0.index.? %%hole%%4 %%hole%%5 %%hole%%6 %%hole%%7 %%hole%%8 k0$1)
          %%hole%%9
       )))
       :pattern ((vstd.map.impl&%0.index.? %%hole%%10 %%hole%%11 %%hole%%12 %%hole%%13 %%hole%%14
         k0$1
       ))
       :qid user_crate__vstd__map_lib__lemma_values_finite_78
       :skolemid skolem_user_crate__vstd__map_lib__lemma_values_finite_78
     ))
     (exists ((k0$1 Poly)) (!
       (and
        (and
         (has_type k0$1 %%hole%%0)
         (and
          (vstd.set.impl&%0.contains.? %%hole%%1 %%hole%%2 %%hole%%3 k0$1)
          (= (vstd.map.impl&%0.index.? %%hole%%4 %%hole%%5 %%hole%%6 %%hole%%7 %%hole%%8 k0$1)
           %%hole%%9
        )))
        (= (%%choose%%5 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5 %%hole%%6
          %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12 %%hole%%13 %%hole%%14
         ) k0$1
       ))
       :pattern ((vstd.map.impl&%0.index.? %%hole%%10 %%hole%%11 %%hole%%12 %%hole%%13 %%hole%%14
         k0$1
    )))))
    :pattern ((%%choose%%5 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
      %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12 %%hole%%13
      %%hole%%14
 )))))
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 (declare-const %%switch_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 ;; assertion failed
 (declare-const %%location_label%%6 Bool)
 ;; assertion failed
 (declare-const %%location_label%%7 Bool)
 ;; assertion failed
 (declare-const %%location_label%%8 Bool)
 ;; assertion failed
 (declare-const %%location_label%%9 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%10 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%11 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%12 Bool)
 ;; assertion failed
 (declare-const %%location_label%%13 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%14 Bool)
 (assert
  (not (=>
    (= decrease%init0 (vstd.map.impl&%0.len.? K&. K& V&. V& m!))
    (or
     (and
      (=>
       (> (vstd.map.impl&%0.len.? K&. K& V&. V& m!) 0)
       (=>
        (= k@ (vstd.set.impl&%0.choose.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!)))
        (=>
         (= v@ (vstd.map.impl&%0.index.? K&. K& V&. V& m! k@))
         (=>
          (= m1@ (vstd.map.impl&%0.remove.? K&. K& V&. V& m! k@))
          (=>
           (= tmp%1 (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!)
             k@
           ))
           (and
            (=>
             %%location_label%%0
             tmp%1
            )
            (=>
             tmp%1
             (=>
              (= tmp%2 (vstd.map_lib.impl&%0.contains_value.? K&. K& V&. V& m! v@))
              (and
               (=>
                %%location_label%%1
                tmp%2
               )
               (=>
                tmp%2
                (=>
                 (= mv@ (vstd.map_lib.impl&%0.values.? K&. K& V&. V& m!))
                 (=>
                  (= m1v@ (vstd.map_lib.impl&%0.values.? K&. K& V&. V& m1@))
                  (=>
                   (= s1@ mv@)
                   (=>
                    (= s2@ (vstd.set.impl&%0.insert.? V&. V& m1v@ v@))
                    (and
                     (and
                      (=>
                       (has_type v0@ V&)
                       (or
                        (and
                         (=>
                          (vstd.map_lib.impl&%0.contains_value.? K&. K& V&. V& m! v0@)
                          (or
                           (and
                            (=>
                             (not (= v0@ v@))
                             (=>
                              (= k0@ (as_type (%%choose%%5 K& K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!) K&.
                                 K& V&. V& m! v0@ K&. K& V&. V& m!
                                ) K&
                              ))
                              (=>
                               (= tmp%3 (not (= k0@ k@)))
                               (and
                                (=>
                                 %%location_label%%2
                                 tmp%3
                                )
                                (=>
                                 tmp%3
                                 (=>
                                  (= tmp%4 (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m1@)
                                    k0@
                                  ))
                                  (and
                                   (=>
                                    %%location_label%%3
                                    tmp%4
                                   )
                                   (=>
                                    tmp%4
                                    (=>
                                     (= tmp%5 (=>
                                       (vstd.set.impl&%0.contains.? V&. V& mv@ v0@)
                                       (vstd.set.impl&%0.contains.? V&. V& (vstd.set.impl&%0.insert.? V&. V& m1v@ v@) v0@)
                                     ))
                                     (and
                                      (=>
                                       %%location_label%%4
                                       tmp%5
                                      )
                                      (=>
                                       tmp%5
                                       (=>
                                        (= tmp%6 (=>
                                          (vstd.set.impl&%0.contains.? V&. V& (vstd.set.impl&%0.insert.? V&. V& m1v@ v@) v0@)
                                          (vstd.set.impl&%0.contains.? V&. V& mv@ v0@)
                                        ))
                                        (and
                                         (=>
                                          %%location_label%%5
                                          tmp%6
                                         )
                                         (=>
                                          tmp%6
                                          %%switch_label%%2
                            ))))))))))))))
                            (=>
                             (not (not (= v0@ v@)))
                             %%switch_label%%2
                           ))
                           (and
                            (not %%switch_label%%2)
                            %%switch_label%%1
                         )))
                         (=>
                          (not (vstd.map_lib.impl&%0.contains_value.? K&. K& V&. V& m! v0@))
                          %%switch_label%%1
                        ))
                        (and
                         (not %%switch_label%%1)
                         (=>
                          %%location_label%%6
                          (and
                           (=>
                            (vstd.set.impl&%0.contains.? V&. V& s1@ v0@)
                            (vstd.set.impl&%0.contains.? V&. V& s2@ v0@)
                           )
                           (=>
                            (vstd.set.impl&%0.contains.? V&. V& s2@ v0@)
                            (vstd.set.impl&%0.contains.? V&. V& s1@ v0@)
                      ))))))
                      (=>
                       (forall ((v0$ Poly)) (!
                         (=>
                          (has_type v0$ V&)
                          (and
                           (=>
                            (vstd.set.impl&%0.contains.? V&. V& s1@ v0$)
                            (vstd.set.impl&%0.contains.? V&. V& s2@ v0$)
                           )
                           (=>
                            (vstd.set.impl&%0.contains.? V&. V& s2@ v0$)
                            (vstd.set.impl&%0.contains.? V&. V& s1@ v0$)
                         )))
                         :pattern ((vstd.set.impl&%0.contains.? V&. V& s1@ v0$))
                         :pattern ((vstd.set.impl&%0.contains.? V&. V& s2@ v0$))
                         :qid user_crate__vstd__map_lib__lemma_values_finite_79
                         :skolemid skolem_user_crate__vstd__map_lib__lemma_values_finite_79
                       ))
                       (=>
                        (= tmp%7 (ext_eq false (TYPE%vstd.set.Set. V&. V&) s1@ s2@))
                        (and
                         (=>
                          %%location_label%%7
                          tmp%7
                         )
                         (=>
                          tmp%7
                          (=>
                           %%location_label%%8
                           (= s1@ s2@)
                     ))))))
                     (=>
                      (= s1@ s2@)
                      (=>
                       (= tmp%8 (< (vstd.map.impl&%0.len.? K&. K& V&. V& m1@) (vstd.map.impl&%0.len.? K&. K&
                          V&. V& m!
                       )))
                       (and
                        (=>
                         %%location_label%%9
                         tmp%8
                        )
                        (=>
                         tmp%8
                         (and
                          (=>
                           %%location_label%%10
                           (check_decrease_int (let
                             ((m!$0 m1@))
                             (vstd.map.impl&%0.len.? K&. K& V&. V& m!$0)
                            ) decrease%init0 false
                          ))
                          (and
                           (=>
                            %%location_label%%11
                            (req%vstd.map_lib.lemma_values_finite. K&. K& V&. V& m1@)
                           )
                           (=>
                            (ens%vstd.map_lib.lemma_values_finite. K&. K& V&. V& m1@)
                            (=>
                             (= tmp%9 (vstd.map_lib.impl&%0.values.? K&. K& V&. V& m1@))
                             (and
                              (=>
                               %%location_label%%12
                               (req%vstd.set.axiom_set_insert_finite. V&. V& tmp%9 v@)
                              )
                              (=>
                               (ens%vstd.set.axiom_set_insert_finite. V&. V& tmp%9 v@)
                               %%switch_label%%0
      )))))))))))))))))))))))))
      (=>
       (not (> (vstd.map.impl&%0.len.? K&. K& V&. V& m!) 0))
       (=>
        (= tmp%10 (ext_eq false (TYPE%vstd.set.Set. V&. V&) (vstd.map_lib.impl&%0.values.? K&.
           K& V&. V& m!
          ) (vstd.set.impl&%0.empty.? V&. V&)
        ))
        (and
         (=>
          %%location_label%%13
          tmp%10
         )
         (=>
          tmp%10
          %%switch_label%%0
     )))))
     (and
      (not %%switch_label%%0)
      (=>
       %%location_label%%14
       (vstd.set.impl&%0.finite.? V&. V& (vstd.map_lib.impl&%0.values.? K&. K& V&. V& m!))
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
