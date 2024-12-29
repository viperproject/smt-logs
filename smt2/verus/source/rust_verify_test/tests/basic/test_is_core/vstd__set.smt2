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

;; MODULE 'module vstd::set'

;; Fuel
(declare-const fuel%vstd.map.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd.set.impl&%0.full. FuelId)
(declare-const fuel%vstd.set.impl&%0.spec_has. FuelId)
(declare-const fuel%vstd.set.impl&%0.ext_equal. FuelId)
(declare-const fuel%vstd.set.impl&%0.subset_of. FuelId)
(declare-const fuel%vstd.set.impl&%0.spec_le. FuelId)
(declare-const fuel%vstd.set.impl&%0.spec_add. FuelId)
(declare-const fuel%vstd.set.impl&%0.spec_mul. FuelId)
(declare-const fuel%vstd.set.impl&%0.spec_sub. FuelId)
(declare-const fuel%vstd.set.impl&%0.filter. FuelId)
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
(assert
 (distinct fuel%vstd.map.impl&%0.spec_index. fuel%vstd.set.impl&%0.full. fuel%vstd.set.impl&%0.spec_has.
  fuel%vstd.set.impl&%0.ext_equal. fuel%vstd.set.impl&%0.subset_of. fuel%vstd.set.impl&%0.spec_le.
  fuel%vstd.set.impl&%0.spec_add. fuel%vstd.set.impl&%0.spec_mul. fuel%vstd.set.impl&%0.spec_sub.
  fuel%vstd.set.impl&%0.filter. fuel%vstd.set.impl&%0.choose. fuel%vstd.set.impl&%0.disjoint.
  fuel%vstd.set.axiom_set_empty. fuel%vstd.set.axiom_set_new. fuel%vstd.set.axiom_set_insert_same.
  fuel%vstd.set.axiom_set_insert_different. fuel%vstd.set.axiom_set_remove_same. fuel%vstd.set.axiom_set_remove_insert.
  fuel%vstd.set.axiom_set_remove_different. fuel%vstd.set.axiom_set_union. fuel%vstd.set.axiom_set_intersect.
  fuel%vstd.set.axiom_set_difference. fuel%vstd.set.axiom_set_complement. fuel%vstd.set.axiom_set_ext_equal.
  fuel%vstd.set.axiom_set_ext_equal_deep. fuel%vstd.set.axiom_mk_map_domain. fuel%vstd.set.axiom_mk_map_index.
  fuel%vstd.set.axiom_set_empty_finite. fuel%vstd.set.axiom_set_insert_finite. fuel%vstd.set.axiom_set_remove_finite.
  fuel%vstd.set.axiom_set_union_finite. fuel%vstd.set.axiom_set_intersect_finite. fuel%vstd.set.axiom_set_difference_finite.
  fuel%vstd.set.axiom_set_choose_finite. fuel%vstd.set.axiom_set_empty_len. fuel%vstd.set.axiom_set_insert_len.
  fuel%vstd.set.axiom_set_remove_len. fuel%vstd.set.axiom_set_contains_len. fuel%vstd.set.axiom_set_choose_len.
))

;; Datatypes
(declare-datatypes ((tuple%0. 0)) (((tuple%0./tuple%0))))
(declare-fun TYPE%fun%1. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.map.Map. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.set.Set. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%fun%1. (%%Function%%) Poly)
(declare-fun %Poly%fun%1. (Poly) %%Function%%)
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

;; Function-Decl crate::vstd::set::Set::subset_of
(declare-fun vstd.set.impl&%0.subset_of.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::set::Set::spec_add
(declare-fun vstd.set.impl&%0.spec_add.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::set::Set::disjoint
(declare-fun vstd.set.impl&%0.disjoint.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::set::Set::full
(declare-fun vstd.set.impl&%0.full.? (Dcr Type) Poly)

;; Function-Decl crate::vstd::set::Set::spec_le
(declare-fun vstd.set.impl&%0.spec_le.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::set::Set::spec_has
(declare-fun vstd.set.impl&%0.spec_has.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::set::Set::ext_equal
(declare-fun vstd.set.impl&%0.ext_equal.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::set::Set::spec_mul
(declare-fun vstd.set.impl&%0.spec_mul.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::set::Set::spec_sub
(declare-fun vstd.set.impl&%0.spec_sub.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::set::Set::filter
(declare-fun vstd.set.impl&%0.filter.? (Dcr Type Dcr Type Poly Poly) Poly)

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

;; Function-Def crate::vstd::set::axiom_set_empty
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set.rs:155:1: 155:48 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const a! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type a! A&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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

;; Function-Def crate::vstd::set::axiom_set_new
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set.rs:163:1: 163:69 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const f! %%Function%%)
 (declare-const a! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%fun%1. f!) (TYPE%fun%1. A&. A& $ BOOL))
 )
 (assert
  (has_type a! A&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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

;; Function-Def crate::vstd::set::axiom_set_insert_same
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set.rs:171:1: 171:65 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s! Poly)
 (declare-const a! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type a! A&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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

;; Function-Def crate::vstd::set::axiom_set_insert_different
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set.rs:180:1: 180:78 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s! Poly)
 (declare-const a1! Poly)
 (declare-const a2! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type a1! A&)
 )
 (assert
  (has_type a2! A&)
 )
 (assert
  (not (= a1! a2!))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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

;; Function-Def crate::vstd::set::axiom_set_remove_same
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set.rs:190:1: 190:65 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s! Poly)
 (declare-const a! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type a! A&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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

;; Function-Def crate::vstd::set::axiom_set_remove_insert
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set.rs:199:1: 199:67 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s! Poly)
 (declare-const a! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type a! A&)
 )
 (assert
  (vstd.set.impl&%0.contains.? A&. A& s! a!)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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

;; Function-Def crate::vstd::set::axiom_set_remove_different
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set.rs:210:1: 210:78 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s! Poly)
 (declare-const a1! Poly)
 (declare-const a2! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type a1! A&)
 )
 (assert
  (has_type a2! A&)
 )
 (assert
  (not (= a1! a2!))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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

;; Function-Def crate::vstd::set::axiom_set_union
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set.rs:221:1: 221:72 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s1! Poly)
 (declare-const s2! Poly)
 (declare-const a! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s1! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type s2! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type a! A&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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

;; Function-Def crate::vstd::set::axiom_set_intersect
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set.rs:230:1: 230:76 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s1! Poly)
 (declare-const s2! Poly)
 (declare-const a! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s1! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type s2! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type a! A&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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

;; Function-Def crate::vstd::set::axiom_set_difference
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set.rs:239:1: 239:77 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s1! Poly)
 (declare-const s2! Poly)
 (declare-const a! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s1! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type s2! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type a! A&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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

;; Function-Def crate::vstd::set::axiom_set_complement
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set.rs:247:1: 247:64 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s! Poly)
 (declare-const a! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type a! A&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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

;; Function-Def crate::vstd::set::axiom_set_ext_equal
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set.rs:255:1: 255:70 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s1! Poly)
 (declare-const s2! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s1! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type s2! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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

;; Function-Def crate::vstd::set::axiom_set_ext_equal_deep
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set.rs:262:1: 262:75 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s1! Poly)
 (declare-const s2! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s1! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type s2! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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
    :qid user_crate__vstd__set__axiom_set_ext_equal_deep_14
    :skolemid skolem_user_crate__vstd__set__axiom_set_ext_equal_deep_14
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

;; Function-Def crate::vstd::set::axiom_mk_map_domain
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set.rs:269:1: 269:80 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const s! Poly)
 (declare-const f! %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.set.Set. K&. K&))
 )
 (assert
  (has_type (Poly%fun%1. f!) (TYPE%fun%1. K&. K& V&. V&))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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
    :qid user_crate__vstd__set__axiom_mk_map_domain_15
    :skolemid skolem_user_crate__vstd__set__axiom_mk_map_domain_15
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

;; Function-Def crate::vstd::set::axiom_mk_map_index
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set.rs:276:1: 276:87 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const s! Poly)
 (declare-const f! %%Function%%)
 (declare-const key! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.set.Set. K&. K&))
 )
 (assert
  (has_type (Poly%fun%1. f!) (TYPE%fun%1. K&. K& V&. V&))
 )
 (assert
  (has_type key! K&)
 )
 (assert
  (vstd.set.impl&%0.contains.? K&. K& s! key!)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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
    :qid user_crate__vstd__set__axiom_mk_map_index_16
    :skolemid skolem_user_crate__vstd__set__axiom_mk_map_index_16
))))

;; Function-Def crate::vstd::set::axiom_set_empty_finite
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set.rs:287:1: 287:51 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
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

;; Broadcast crate::vstd::set::axiom_set_empty_finite
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_empty_finite.)
  (forall ((A&. Dcr) (A& Type)) (!
    (vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.empty.? A&. A&))
    :pattern ((vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.empty.? A&. A&)))
    :qid user_crate__vstd__set__axiom_set_empty_finite_17
    :skolemid skolem_user_crate__vstd__set__axiom_set_empty_finite_17
))))

;; Function-Def crate::vstd::set::axiom_set_insert_finite
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set.rs:295:1: 295:67 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s! Poly)
 (declare-const a! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type a! A&)
 )
 (assert
  (vstd.set.impl&%0.finite.? A&. A& s!)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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
    :qid user_crate__vstd__set__axiom_set_insert_finite_18
    :skolemid skolem_user_crate__vstd__set__axiom_set_insert_finite_18
))))

;; Function-Def crate::vstd::set::axiom_set_remove_finite
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set.rs:305:1: 305:67 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s! Poly)
 (declare-const a! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type a! A&)
 )
 (assert
  (vstd.set.impl&%0.finite.? A&. A& s!)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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
    :qid user_crate__vstd__set__axiom_set_remove_finite_19
    :skolemid skolem_user_crate__vstd__set__axiom_set_remove_finite_19
))))

;; Function-Def crate::vstd::set::axiom_set_union_finite
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set.rs:315:1: 315:73 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s1! Poly)
 (declare-const s2! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s1! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type s2! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (vstd.set.impl&%0.finite.? A&. A& s1!)
 )
 (assert
  (vstd.set.impl&%0.finite.? A&. A& s2!)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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
    :qid user_crate__vstd__set__axiom_set_union_finite_20
    :skolemid skolem_user_crate__vstd__set__axiom_set_union_finite_20
))))

;; Function-Def crate::vstd::set::axiom_set_intersect_finite
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set.rs:326:1: 326:77 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s1! Poly)
 (declare-const s2! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s1! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type s2! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (or
   (vstd.set.impl&%0.finite.? A&. A& s1!)
   (vstd.set.impl&%0.finite.? A&. A& s2!)
 ))
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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
    :qid user_crate__vstd__set__axiom_set_intersect_finite_21
    :skolemid skolem_user_crate__vstd__set__axiom_set_intersect_finite_21
))))

;; Function-Def crate::vstd::set::axiom_set_difference_finite
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set.rs:336:1: 336:78 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s1! Poly)
 (declare-const s2! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s1! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type s2! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (vstd.set.impl&%0.finite.? A&. A& s1!)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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
    :qid user_crate__vstd__set__axiom_set_difference_finite_22
    :skolemid skolem_user_crate__vstd__set__axiom_set_difference_finite_22
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
      :qid user_crate__vstd__set__Set__choose_23
      :skolemid skolem_user_crate__vstd__set__Set__choose_23
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

;; Function-Def crate::vstd::set::axiom_set_choose_finite
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set.rs:346:1: 346:61 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (not (vstd.set.impl&%0.finite.? A&. A& s!))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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
    :qid user_crate__vstd__set__axiom_set_choose_finite_24
    :skolemid skolem_user_crate__vstd__set__axiom_set_choose_finite_24
))))

;; Function-Def crate::vstd::set::axiom_set_empty_len
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set.rs:359:1: 359:48 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
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

;; Broadcast crate::vstd::set::axiom_set_empty_len
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_empty_len.)
  (forall ((A&. Dcr) (A& Type)) (!
    (= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.empty.? A&. A&)) 0)
    :pattern ((vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.empty.? A&. A&)))
    :qid user_crate__vstd__set__axiom_set_empty_len_25
    :skolemid skolem_user_crate__vstd__set__axiom_set_empty_len_25
))))

;; Function-Def crate::vstd::set::axiom_set_insert_len
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set.rs:368:1: 368:64 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s! Poly)
 (declare-const a! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type a! A&)
 )
 (assert
  (vstd.set.impl&%0.finite.? A&. A& s!)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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
    :qid user_crate__vstd__set__axiom_set_insert_len_26
    :skolemid skolem_user_crate__vstd__set__axiom_set_insert_len_26
))))

;; Function-Def crate::vstd::set::axiom_set_remove_len
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set.rs:383:1: 383:64 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s! Poly)
 (declare-const a! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type a! A&)
 )
 (assert
  (vstd.set.impl&%0.finite.? A&. A& s!)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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
    :qid user_crate__vstd__set__axiom_set_remove_len_27
    :skolemid skolem_user_crate__vstd__set__axiom_set_remove_len_27
))))

;; Function-Def crate::vstd::set::axiom_set_contains_len
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set.rs:397:1: 397:66 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s! Poly)
 (declare-const a! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type a! A&)
 )
 (assert
  (vstd.set.impl&%0.finite.? A&. A& s!)
 )
 (assert
  (vstd.set.impl&%0.contains.? A&. A& s! a!)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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
    :qid user_crate__vstd__set__axiom_set_contains_len_28
    :skolemid skolem_user_crate__vstd__set__axiom_set_contains_len_28
))))

;; Function-Def crate::vstd::set::axiom_set_choose_len
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set.rs:408:1: 408:58 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (vstd.set.impl&%0.finite.? A&. A& s!)
 )
 (assert
  (not (= (vstd.set.impl&%0.len.? A&. A& s!) 0))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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
    :qid user_crate__vstd__set__axiom_set_choose_len_29
    :skolemid skolem_user_crate__vstd__set__axiom_set_choose_len_29
))))

;; Function-Axioms crate::vstd::set::Set::subset_of
(assert
 (fuel_bool_default fuel%vstd.set.impl&%0.subset_of.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.set.impl&%0.subset_of.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
    (= (vstd.set.impl&%0.subset_of.? A&. A& self! s2!) (forall ((a$ Poly)) (!
       (=>
        (has_type a$ A&)
        (=>
         (vstd.set.impl&%0.contains.? A&. A& self! a$)
         (vstd.set.impl&%0.contains.? A&. A& s2! a$)
       ))
       :pattern ((vstd.set.impl&%0.contains.? A&. A& self! a$))
       :pattern ((vstd.set.impl&%0.contains.? A&. A& s2! a$))
       :qid user_crate__vstd__set__Set__subset_of_30
       :skolemid skolem_user_crate__vstd__set__Set__subset_of_30
    )))
    :pattern ((vstd.set.impl&%0.subset_of.? A&. A& self! s2!))
    :qid internal_vstd.set.impl&__0.subset_of.?_definition
    :skolemid skolem_internal_vstd.set.impl&__0.subset_of.?_definition
))))

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
       :qid user_crate__vstd__set__Set__disjoint_31
       :skolemid skolem_user_crate__vstd__set__Set__disjoint_31
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

;; Function-Axioms crate::vstd::set::Set::spec_le
(assert
 (fuel_bool_default fuel%vstd.set.impl&%0.spec_le.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.set.impl&%0.spec_le.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
    (= (vstd.set.impl&%0.spec_le.? A&. A& self! s2!) (vstd.set.impl&%0.subset_of.? A&.
      A& self! s2!
    ))
    :pattern ((vstd.set.impl&%0.spec_le.? A&. A& self! s2!))
    :qid internal_vstd.set.impl&__0.spec_le.?_definition
    :skolemid skolem_internal_vstd.set.impl&__0.spec_le.?_definition
))))

;; Function-Axioms crate::vstd::set::Set::spec_has
(assert
 (fuel_bool_default fuel%vstd.set.impl&%0.spec_has.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.set.impl&%0.spec_has.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (a! Poly)) (!
    (= (vstd.set.impl&%0.spec_has.? A&. A& self! a!) (vstd.set.impl&%0.contains.? A&. A&
      self! a!
    ))
    :pattern ((vstd.set.impl&%0.spec_has.? A&. A& self! a!))
    :qid internal_vstd.set.impl&__0.spec_has.?_definition
    :skolemid skolem_internal_vstd.set.impl&__0.spec_has.?_definition
))))

;; Function-Axioms crate::vstd::set::Set::ext_equal
(assert
 (fuel_bool_default fuel%vstd.set.impl&%0.ext_equal.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.set.impl&%0.ext_equal.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
    (= (vstd.set.impl&%0.ext_equal.? A&. A& self! s2!) (ext_eq false (TYPE%vstd.set.Set.
       A&. A&
      ) self! s2!
    ))
    :pattern ((vstd.set.impl&%0.ext_equal.? A&. A& self! s2!))
    :qid internal_vstd.set.impl&__0.ext_equal.?_definition
    :skolemid skolem_internal_vstd.set.impl&__0.ext_equal.?_definition
))))

;; Function-Axioms crate::vstd::set::Set::spec_mul
(assert
 (fuel_bool_default fuel%vstd.set.impl&%0.spec_mul.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.set.impl&%0.spec_mul.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
    (= (vstd.set.impl&%0.spec_mul.? A&. A& self! s2!) (vstd.set.impl&%0.intersect.? A&.
      A& self! s2!
    ))
    :pattern ((vstd.set.impl&%0.spec_mul.? A&. A& self! s2!))
    :qid internal_vstd.set.impl&__0.spec_mul.?_definition
    :skolemid skolem_internal_vstd.set.impl&__0.spec_mul.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type s2! (TYPE%vstd.set.Set. A&. A&))
    )
    (has_type (vstd.set.impl&%0.spec_mul.? A&. A& self! s2!) (TYPE%vstd.set.Set. A&. A&))
   )
   :pattern ((vstd.set.impl&%0.spec_mul.? A&. A& self! s2!))
   :qid internal_vstd.set.impl&__0.spec_mul.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.spec_mul.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::set::Set::spec_sub
(assert
 (fuel_bool_default fuel%vstd.set.impl&%0.spec_sub.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.set.impl&%0.spec_sub.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
    (= (vstd.set.impl&%0.spec_sub.? A&. A& self! s2!) (vstd.set.impl&%0.difference.? A&.
      A& self! s2!
    ))
    :pattern ((vstd.set.impl&%0.spec_sub.? A&. A& self! s2!))
    :qid internal_vstd.set.impl&__0.spec_sub.?_definition
    :skolemid skolem_internal_vstd.set.impl&__0.spec_sub.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type s2! (TYPE%vstd.set.Set. A&. A&))
    )
    (has_type (vstd.set.impl&%0.spec_sub.? A&. A& self! s2!) (TYPE%vstd.set.Set. A&. A&))
   )
   :pattern ((vstd.set.impl&%0.spec_sub.? A&. A& self! s2!))
   :qid internal_vstd.set.impl&__0.spec_sub.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.spec_sub.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::set::Set::filter
(assert
 (fuel_bool_default fuel%vstd.set.impl&%0.filter.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.set.impl&%0.filter.)
  (forall ((A&. Dcr) (A& Type) (F&. Dcr) (F& Type) (self! Poly) (f! Poly)) (!
    (= (vstd.set.impl&%0.filter.? A&. A& F&. F& self! f!) (vstd.set.impl&%0.intersect.?
      A&. A& self! (vstd.set.impl&%0.new.? A&. A& F&. F& f!)
    ))
    :pattern ((vstd.set.impl&%0.filter.? A&. A& F&. F& self! f!))
    :qid internal_vstd.set.impl&__0.filter.?_definition
    :skolemid skolem_internal_vstd.set.impl&__0.filter.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (F&. Dcr) (F& Type) (self! Poly) (f! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type f! F&)
    )
    (has_type (vstd.set.impl&%0.filter.? A&. A& F&. F& self! f!) (TYPE%vstd.set.Set. A&.
      A&
   )))
   :pattern ((vstd.set.impl&%0.filter.? A&. A& F&. F& self! f!))
   :qid internal_vstd.set.impl&__0.filter.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.filter.?_pre_post_definition
)))
