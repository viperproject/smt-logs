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

;; MODULE 'module vstd::multiset'

;; Fuel
(declare-const fuel%vstd.map.impl&%0.new. FuelId)
(declare-const fuel%vstd.map.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd.map.axiom_map_index_decreases_finite. FuelId)
(declare-const fuel%vstd.map.axiom_map_index_decreases_infinite. FuelId)
(declare-const fuel%vstd.map.axiom_map_ext_equal. FuelId)
(declare-const fuel%vstd.map.axiom_map_ext_equal_deep. FuelId)
(declare-const fuel%vstd.math.min. FuelId)
(declare-const fuel%vstd.math.clip. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.new. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.from_set. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.insert. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.remove. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.update. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.subset_of. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.le. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.spec_le. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.ext_equal. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.choose. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.contains. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.spec_has. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.intersection_with. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.difference_with. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.is_disjoint_from. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.dom. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_empty. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_contained. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_new_not_contained. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_singleton. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_singleton_different. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_add. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_sub. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_ext_equal. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_ext_equal_deep. FuelId)
(declare-const fuel%vstd.multiset.axiom_len_empty. FuelId)
(declare-const fuel%vstd.multiset.axiom_len_singleton. FuelId)
(declare-const fuel%vstd.multiset.axiom_len_add. FuelId)
(declare-const fuel%vstd.multiset.axiom_len_sub. FuelId)
(declare-const fuel%vstd.multiset.axiom_count_le_len. FuelId)
(declare-const fuel%vstd.multiset.axiom_filter_count. FuelId)
(declare-const fuel%vstd.multiset.axiom_choose_count. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_always_finite. FuelId)
(declare-const fuel%vstd.set.axiom_set_new. FuelId)
(declare-const fuel%vstd.set.axiom_set_insert_same. FuelId)
(declare-const fuel%vstd.set.axiom_set_insert_different. FuelId)
(declare-const fuel%vstd.set.axiom_set_ext_equal. FuelId)
(declare-const fuel%vstd.set.axiom_set_ext_equal_deep. FuelId)
(declare-const fuel%vstd.set.axiom_mk_map_domain. FuelId)
(declare-const fuel%vstd.set.axiom_mk_map_index. FuelId)
(declare-const fuel%vstd.set.axiom_set_insert_finite. FuelId)
(declare-const fuel%vstd.map.group_map_axioms. FuelId)
(declare-const fuel%vstd.multiset.group_multiset_axioms. FuelId)
(declare-const fuel%vstd.set.group_set_axioms. FuelId)
(assert
 (distinct fuel%vstd.map.impl&%0.new. fuel%vstd.map.impl&%0.spec_index. fuel%vstd.map.axiom_map_index_decreases_finite.
  fuel%vstd.map.axiom_map_index_decreases_infinite. fuel%vstd.map.axiom_map_ext_equal.
  fuel%vstd.map.axiom_map_ext_equal_deep. fuel%vstd.math.min. fuel%vstd.math.clip.
  fuel%vstd.multiset.impl&%0.new. fuel%vstd.multiset.impl&%0.from_set. fuel%vstd.multiset.impl&%0.insert.
  fuel%vstd.multiset.impl&%0.remove. fuel%vstd.multiset.impl&%0.update. fuel%vstd.multiset.impl&%0.subset_of.
  fuel%vstd.multiset.impl&%0.le. fuel%vstd.multiset.impl&%0.spec_le. fuel%vstd.multiset.impl&%0.ext_equal.
  fuel%vstd.multiset.impl&%0.choose. fuel%vstd.multiset.impl&%0.contains. fuel%vstd.multiset.impl&%0.spec_has.
  fuel%vstd.multiset.impl&%0.intersection_with. fuel%vstd.multiset.impl&%0.difference_with.
  fuel%vstd.multiset.impl&%0.is_disjoint_from. fuel%vstd.multiset.impl&%0.dom. fuel%vstd.multiset.axiom_multiset_empty.
  fuel%vstd.multiset.axiom_multiset_contained. fuel%vstd.multiset.axiom_multiset_new_not_contained.
  fuel%vstd.multiset.axiom_multiset_singleton. fuel%vstd.multiset.axiom_multiset_singleton_different.
  fuel%vstd.multiset.axiom_multiset_add. fuel%vstd.multiset.axiom_multiset_sub. fuel%vstd.multiset.axiom_multiset_ext_equal.
  fuel%vstd.multiset.axiom_multiset_ext_equal_deep. fuel%vstd.multiset.axiom_len_empty.
  fuel%vstd.multiset.axiom_len_singleton. fuel%vstd.multiset.axiom_len_add. fuel%vstd.multiset.axiom_len_sub.
  fuel%vstd.multiset.axiom_count_le_len. fuel%vstd.multiset.axiom_filter_count. fuel%vstd.multiset.axiom_choose_count.
  fuel%vstd.multiset.axiom_multiset_always_finite. fuel%vstd.set.axiom_set_new. fuel%vstd.set.axiom_set_insert_same.
  fuel%vstd.set.axiom_set_insert_different. fuel%vstd.set.axiom_set_ext_equal. fuel%vstd.set.axiom_set_ext_equal_deep.
  fuel%vstd.set.axiom_mk_map_domain. fuel%vstd.set.axiom_mk_map_index. fuel%vstd.set.axiom_set_insert_finite.
  fuel%vstd.map.group_map_axioms. fuel%vstd.multiset.group_multiset_axioms. fuel%vstd.set.group_set_axioms.
))
(assert
 (=>
  (fuel_bool_default fuel%vstd.map.group_map_axioms.)
  (and
   (fuel_bool_default fuel%vstd.map.axiom_map_index_decreases_finite.)
   (fuel_bool_default fuel%vstd.map.axiom_map_index_decreases_infinite.)
   (fuel_bool_default fuel%vstd.map.axiom_map_ext_equal.)
   (fuel_bool_default fuel%vstd.map.axiom_map_ext_equal_deep.)
)))
(assert
 (=>
  (fuel_bool_default fuel%vstd.multiset.group_multiset_axioms.)
  (and
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_empty.)
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_contained.)
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_new_not_contained.)
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_singleton.)
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_singleton_different.)
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_add.)
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_sub.)
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_ext_equal.)
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_ext_equal_deep.)
   (fuel_bool_default fuel%vstd.multiset.axiom_len_empty.)
   (fuel_bool_default fuel%vstd.multiset.axiom_len_singleton.)
   (fuel_bool_default fuel%vstd.multiset.axiom_len_add.)
   (fuel_bool_default fuel%vstd.multiset.axiom_len_sub.)
   (fuel_bool_default fuel%vstd.multiset.axiom_count_le_len.)
   (fuel_bool_default fuel%vstd.multiset.axiom_filter_count.)
   (fuel_bool_default fuel%vstd.multiset.axiom_choose_count.)
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_always_finite.)
)))
(assert
 (=>
  (fuel_bool_default fuel%vstd.set.group_set_axioms.)
  (and
   (fuel_bool_default fuel%vstd.set.axiom_set_new.)
   (fuel_bool_default fuel%vstd.set.axiom_set_insert_same.)
   (fuel_bool_default fuel%vstd.set.axiom_set_insert_different.)
   (fuel_bool_default fuel%vstd.set.axiom_set_ext_equal.)
   (fuel_bool_default fuel%vstd.set.axiom_set_ext_equal_deep.)
   (fuel_bool_default fuel%vstd.set.axiom_mk_map_domain.)
   (fuel_bool_default fuel%vstd.set.axiom_mk_map_index.)
   (fuel_bool_default fuel%vstd.set.axiom_set_insert_finite.)
)))

;; Datatypes
(declare-datatypes ((tuple%0. 0)) (((tuple%0./tuple%0))))
(declare-fun TYPE%fun%1. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.map.Map. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.multiset.Multiset. (Dcr Type) Type)
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

;; Function-Decl crate::vstd::set::Set::contains
(declare-fun vstd.set.impl&%0.contains.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::set::Set::new
(declare-fun vstd.set.impl&%0.new.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::set::Set::insert
(declare-fun vstd.set.impl&%0.insert.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::map::Map::dom
(declare-fun vstd.map.impl&%0.dom.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::set::Set::mk_map
(declare-fun vstd.set.impl&%0.mk_map.? (Dcr Type Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::map::Map::index
(declare-fun vstd.map.impl&%0.index.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::map::Map::spec_index
(declare-fun vstd.map.impl&%0.spec_index.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::add
(declare-fun vstd.multiset.impl&%0.add.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::singleton
(declare-fun vstd.multiset.impl&%0.singleton.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::insert
(declare-fun vstd.multiset.impl&%0.insert.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::count
(declare-fun vstd.multiset.impl&%0.count.? (Dcr Type Poly Poly) Int)

;; Function-Decl crate::vstd::multiset::Multiset::sub
(declare-fun vstd.multiset.impl&%0.sub.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::remove
(declare-fun vstd.multiset.impl&%0.remove.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::empty
(declare-fun vstd.multiset.impl&%0.empty.? (Dcr Type) Poly)

;; Function-Decl crate::vstd::map::Map::new
(declare-fun vstd.map.impl&%0.new.? (Dcr Type Dcr Type Dcr Type Dcr Type Poly Poly)
 Poly
)

;; Function-Decl crate::vstd::multiset::Multiset::len
(declare-fun vstd.multiset.impl&%0.len.? (Dcr Type Poly) Int)

;; Function-Decl crate::vstd::multiset::Multiset::from_map
(declare-fun vstd.multiset.impl&%0.from_map.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::filter
(declare-fun vstd.multiset.impl&%0.filter.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::math::min
(declare-fun vstd.math.min.? (Poly Poly) Int)

;; Function-Decl crate::vstd::math::clip
(declare-fun vstd.math.clip.? (Poly) Int)

;; Function-Decl crate::vstd::multiset::Multiset::new
(declare-fun vstd.multiset.impl&%0.new.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::from_set
(declare-fun vstd.multiset.impl&%0.from_set.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::contains
(declare-fun vstd.multiset.impl&%0.contains.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::multiset::Multiset::update
(declare-fun vstd.multiset.impl&%0.update.? (Dcr Type Poly Poly Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::subset_of
(declare-fun vstd.multiset.impl&%0.subset_of.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::multiset::Multiset::le
(declare-fun vstd.multiset.impl&%0.le.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::multiset::Multiset::spec_le
(declare-fun vstd.multiset.impl&%0.spec_le.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::multiset::Multiset::ext_equal
(declare-fun vstd.multiset.impl&%0.ext_equal.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::multiset::Multiset::choose
(declare-fun vstd.multiset.impl&%0.choose.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::spec_has
(declare-fun vstd.multiset.impl&%0.spec_has.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::multiset::Multiset::intersection_with
(declare-fun vstd.multiset.impl&%0.intersection_with.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::difference_with
(declare-fun vstd.multiset.impl&%0.difference_with.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::is_disjoint_from
(declare-fun vstd.multiset.impl&%0.is_disjoint_from.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::multiset::Multiset::dom
(declare-fun vstd.multiset.impl&%0.dom.? (Dcr Type Poly) Poly)

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
    :qid user_crate__vstd__set__axiom_set_new_0
    :skolemid skolem_user_crate__vstd__set__axiom_set_new_0
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
    :qid user_crate__vstd__set__axiom_set_insert_same_1
    :skolemid skolem_user_crate__vstd__set__axiom_set_insert_same_1
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
    :qid user_crate__vstd__set__axiom_set_insert_different_2
    :skolemid skolem_user_crate__vstd__set__axiom_set_insert_different_2
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
        :qid user_crate__vstd__set__axiom_set_ext_equal_3
        :skolemid skolem_user_crate__vstd__set__axiom_set_ext_equal_3
    ))))
    :pattern ((ext_eq false (TYPE%vstd.set.Set. A&. A&) s1! s2!))
    :qid user_crate__vstd__set__axiom_set_ext_equal_4
    :skolemid skolem_user_crate__vstd__set__axiom_set_ext_equal_4
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
    :qid user_crate__vstd__set__axiom_set_ext_equal_deep_5
    :skolemid skolem_user_crate__vstd__set__axiom_set_ext_equal_deep_5
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
    :qid user_crate__vstd__set__axiom_mk_map_domain_6
    :skolemid skolem_user_crate__vstd__set__axiom_mk_map_domain_6
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
    :qid user_crate__vstd__set__axiom_mk_map_index_7
    :skolemid skolem_user_crate__vstd__set__axiom_mk_map_index_7
))))

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
    :qid user_crate__vstd__set__axiom_set_insert_finite_8
    :skolemid skolem_user_crate__vstd__set__axiom_set_insert_finite_8
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
    :qid user_crate__vstd__map__axiom_map_index_decreases_finite_9
    :skolemid skolem_user_crate__vstd__map__axiom_map_index_decreases_finite_9
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
    :qid user_crate__vstd__map__axiom_map_index_decreases_infinite_10
    :skolemid skolem_user_crate__vstd__map__axiom_map_index_decreases_infinite_10
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
         :qid user_crate__vstd__map__axiom_map_ext_equal_11
         :skolemid skolem_user_crate__vstd__map__axiom_map_ext_equal_11
    )))))
    :pattern ((ext_eq false (TYPE%vstd.map.Map. K&. K& V&. V&) m1! m2!))
    :qid user_crate__vstd__map__axiom_map_ext_equal_12
    :skolemid skolem_user_crate__vstd__map__axiom_map_ext_equal_12
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
         :qid user_crate__vstd__map__axiom_map_ext_equal_deep_13
         :skolemid skolem_user_crate__vstd__map__axiom_map_ext_equal_deep_13
    )))))
    :pattern ((ext_eq true (TYPE%vstd.map.Map. K&. K& V&. V&) m1! m2!))
    :qid user_crate__vstd__map__axiom_map_ext_equal_deep_14
    :skolemid skolem_user_crate__vstd__map__axiom_map_ext_equal_deep_14
))))

;; Function-Axioms crate::vstd::multiset::Multiset::add
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.multiset.Multiset. V&. V&))
     (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
    )
    (has_type (vstd.multiset.impl&%0.add.? V&. V& self! m2!) (TYPE%vstd.multiset.Multiset.
      V&. V&
   )))
   :pattern ((vstd.multiset.impl&%0.add.? V&. V& self! m2!))
   :qid internal_vstd.multiset.impl&__0.add.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.add.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::multiset::Multiset::singleton
(assert
 (forall ((V&. Dcr) (V& Type) (v! Poly)) (!
   (=>
    (has_type v! V&)
    (has_type (vstd.multiset.impl&%0.singleton.? V&. V& v!) (TYPE%vstd.multiset.Multiset.
      V&. V&
   )))
   :pattern ((vstd.multiset.impl&%0.singleton.? V&. V& v!))
   :qid internal_vstd.multiset.impl&__0.singleton.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.singleton.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::multiset::Multiset::insert
(assert
 (fuel_bool_default fuel%vstd.multiset.impl&%0.insert.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.impl&%0.insert.)
  (forall ((V&. Dcr) (V& Type) (self! Poly) (v! Poly)) (!
    (= (vstd.multiset.impl&%0.insert.? V&. V& self! v!) (vstd.multiset.impl&%0.add.? V&.
      V& self! (vstd.multiset.impl&%0.singleton.? V&. V& v!)
    ))
    :pattern ((vstd.multiset.impl&%0.insert.? V&. V& self! v!))
    :qid internal_vstd.multiset.impl&__0.insert.?_definition
    :skolemid skolem_internal_vstd.multiset.impl&__0.insert.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (v! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.multiset.Multiset. V&. V&))
     (has_type v! V&)
    )
    (has_type (vstd.multiset.impl&%0.insert.? V&. V& self! v!) (TYPE%vstd.multiset.Multiset.
      V&. V&
   )))
   :pattern ((vstd.multiset.impl&%0.insert.? V&. V& self! v!))
   :qid internal_vstd.multiset.impl&__0.insert.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.insert.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::multiset::Multiset::count
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (value! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.multiset.Multiset. V&. V&))
     (has_type value! V&)
    )
    (<= 0 (vstd.multiset.impl&%0.count.? V&. V& self! value!))
   )
   :pattern ((vstd.multiset.impl&%0.count.? V&. V& self! value!))
   :qid internal_vstd.multiset.impl&__0.count.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.count.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::multiset::Multiset::sub
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.multiset.Multiset. V&. V&))
     (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
    )
    (has_type (vstd.multiset.impl&%0.sub.? V&. V& self! m2!) (TYPE%vstd.multiset.Multiset.
      V&. V&
   )))
   :pattern ((vstd.multiset.impl&%0.sub.? V&. V& self! m2!))
   :qid internal_vstd.multiset.impl&__0.sub.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.sub.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::multiset::Multiset::remove
(assert
 (fuel_bool_default fuel%vstd.multiset.impl&%0.remove.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.impl&%0.remove.)
  (forall ((V&. Dcr) (V& Type) (self! Poly) (v! Poly)) (!
    (= (vstd.multiset.impl&%0.remove.? V&. V& self! v!) (vstd.multiset.impl&%0.sub.? V&.
      V& self! (vstd.multiset.impl&%0.singleton.? V&. V& v!)
    ))
    :pattern ((vstd.multiset.impl&%0.remove.? V&. V& self! v!))
    :qid internal_vstd.multiset.impl&__0.remove.?_definition
    :skolemid skolem_internal_vstd.multiset.impl&__0.remove.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (v! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.multiset.Multiset. V&. V&))
     (has_type v! V&)
    )
    (has_type (vstd.multiset.impl&%0.remove.? V&. V& self! v!) (TYPE%vstd.multiset.Multiset.
      V&. V&
   )))
   :pattern ((vstd.multiset.impl&%0.remove.? V&. V& self! v!))
   :qid internal_vstd.multiset.impl&__0.remove.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.remove.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::multiset::Multiset::empty
(assert
 (forall ((V&. Dcr) (V& Type)) (!
   (has_type (vstd.multiset.impl&%0.empty.? V&. V&) (TYPE%vstd.multiset.Multiset. V&.
     V&
   ))
   :pattern ((vstd.multiset.impl&%0.empty.? V&. V&))
   :qid internal_vstd.multiset.impl&__0.empty.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.empty.?_pre_post_definition
)))

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

;; Function-Axioms crate::vstd::multiset::Multiset::len
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.multiset.Multiset. V&. V&))
    (<= 0 (vstd.multiset.impl&%0.len.? V&. V& self!))
   )
   :pattern ((vstd.multiset.impl&%0.len.? V&. V& self!))
   :qid internal_vstd.multiset.impl&__0.len.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.len.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::multiset::Multiset::from_map
(assert
 (forall ((V&. Dcr) (V& Type) (m! Poly)) (!
   (=>
    (has_type m! (TYPE%vstd.map.Map. V&. V& $ NAT))
    (has_type (vstd.multiset.impl&%0.from_map.? V&. V& m!) (TYPE%vstd.multiset.Multiset.
      V&. V&
   )))
   :pattern ((vstd.multiset.impl&%0.from_map.? V&. V& m!))
   :qid internal_vstd.multiset.impl&__0.from_map.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.from_map.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::multiset::Multiset::filter
(assert
 (forall ((V&. Dcr) (V& Type) (impl%1&. Dcr) (impl%1& Type) (self! Poly) (f! Poly))
  (!
   (=>
    (and
     (has_type self! (TYPE%vstd.multiset.Multiset. V&. V&))
     (has_type f! impl%1&)
    )
    (has_type (vstd.multiset.impl&%0.filter.? V&. V& impl%1&. impl%1& self! f!) (TYPE%vstd.multiset.Multiset.
      V&. V&
   )))
   :pattern ((vstd.multiset.impl&%0.filter.? V&. V& impl%1&. impl%1& self! f!))
   :qid internal_vstd.multiset.impl&__0.filter.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.filter.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::math::min
(assert
 (fuel_bool_default fuel%vstd.math.min.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.math.min.)
  (forall ((x! Poly) (y! Poly)) (!
    (= (vstd.math.min.? x! y!) (%I (ite
       (<= (%I x!) (%I y!))
       x!
       y!
    )))
    :pattern ((vstd.math.min.? x! y!))
    :qid internal_vstd.math.min.?_definition
    :skolemid skolem_internal_vstd.math.min.?_definition
))))

;; Function-Axioms crate::vstd::math::clip
(assert
 (fuel_bool_default fuel%vstd.math.clip.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.math.clip.)
  (forall ((x! Poly)) (!
    (= (vstd.math.clip.? x!) (ite
      (< (%I x!) 0)
      0
      (nClip (%I x!))
    ))
    :pattern ((vstd.math.clip.? x!))
    :qid internal_vstd.math.clip.?_definition
    :skolemid skolem_internal_vstd.math.clip.?_definition
))))
(assert
 (forall ((x! Poly)) (!
   (=>
    (has_type x! INT)
    (<= 0 (vstd.math.clip.? x!))
   )
   :pattern ((vstd.math.clip.? x!))
   :qid internal_vstd.math.clip.?_pre_post_definition
   :skolemid skolem_internal_vstd.math.clip.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::multiset::Multiset::new
(assert
 (fuel_bool_default fuel%vstd.multiset.impl&%0.new.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.impl&%0.new.)
  (forall ((V&. Dcr) (V& Type) (m! Poly)) (!
    (= (vstd.multiset.impl&%0.new.? V&. V& m!) (vstd.multiset.impl&%0.from_map.? V&. V&
      m!
    ))
    :pattern ((vstd.multiset.impl&%0.new.? V&. V& m!))
    :qid internal_vstd.multiset.impl&__0.new.?_definition
    :skolemid skolem_internal_vstd.multiset.impl&__0.new.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type) (m! Poly)) (!
   (=>
    (has_type m! (TYPE%vstd.map.Map. V&. V& $ NAT))
    (has_type (vstd.multiset.impl&%0.new.? V&. V& m!) (TYPE%vstd.multiset.Multiset. V&.
      V&
   )))
   :pattern ((vstd.multiset.impl&%0.new.? V&. V& m!))
   :qid internal_vstd.multiset.impl&__0.new.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.new.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::multiset::Multiset::from_set
(assert
 (fuel_bool_default fuel%vstd.multiset.impl&%0.from_set.)
)
(declare-fun %%lambda%%0 (Dcr Type Poly) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (k$ Poly)) (!
   (= (%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2) k$) (B (vstd.set.impl&%0.contains.?
      %%hole%%0 %%hole%%1 %%hole%%2 k$
   )))
   :pattern ((%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2) k$))
)))
(declare-fun %%lambda%%1 (Poly) %%Function%%)
(assert
 (forall ((%%hole%%0 Poly) (v$ Poly)) (!
   (= (%%apply%%0 (%%lambda%%1 %%hole%%0) v$) %%hole%%0)
   :pattern ((%%apply%%0 (%%lambda%%1 %%hole%%0) v$))
)))
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.impl&%0.from_set.)
  (forall ((V&. Dcr) (V& Type) (m! Poly)) (!
    (= (vstd.multiset.impl&%0.from_set.? V&. V& m!) (vstd.multiset.impl&%0.from_map.? V&.
      V& (vstd.map.impl&%0.new.? V&. V& $ NAT $ (TYPE%fun%1. V&. V& $ BOOL) $ (TYPE%fun%1.
        V&. V& $ NAT
       ) (Poly%fun%1. (mk_fun (%%lambda%%0 V&. V& m!))) (Poly%fun%1. (mk_fun (%%lambda%%1 (
           I 1
    )))))))
    :pattern ((vstd.multiset.impl&%0.from_set.? V&. V& m!))
    :qid internal_vstd.multiset.impl&__0.from_set.?_definition
    :skolemid skolem_internal_vstd.multiset.impl&__0.from_set.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type) (m! Poly)) (!
   (=>
    (has_type m! (TYPE%vstd.set.Set. V&. V&))
    (has_type (vstd.multiset.impl&%0.from_set.? V&. V& m!) (TYPE%vstd.multiset.Multiset.
      V&. V&
   )))
   :pattern ((vstd.multiset.impl&%0.from_set.? V&. V& m!))
   :qid internal_vstd.multiset.impl&__0.from_set.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.from_set.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::multiset::Multiset::contains
(assert
 (fuel_bool_default fuel%vstd.multiset.impl&%0.contains.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.impl&%0.contains.)
  (forall ((V&. Dcr) (V& Type) (self! Poly) (v! Poly)) (!
    (= (vstd.multiset.impl&%0.contains.? V&. V& self! v!) (> (vstd.multiset.impl&%0.count.?
       V&. V& self! v!
      ) 0
    ))
    :pattern ((vstd.multiset.impl&%0.contains.? V&. V& self! v!))
    :qid internal_vstd.multiset.impl&__0.contains.?_definition
    :skolemid skolem_internal_vstd.multiset.impl&__0.contains.?_definition
))))

;; Function-Axioms crate::vstd::multiset::Multiset::update
(assert
 (fuel_bool_default fuel%vstd.multiset.impl&%0.update.)
)
(declare-fun %%lambda%%2 (Dcr Type Poly Poly) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 Poly) (key$ Poly))
  (!
   (= (%%apply%%0 (%%lambda%%2 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) key$) (B (or
      (vstd.multiset.impl&%0.contains.? %%hole%%0 %%hole%%1 %%hole%%2 key$)
      (= key$ %%hole%%3)
   )))
   :pattern ((%%apply%%0 (%%lambda%%2 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) key$))
)))
(declare-fun %%lambda%%3 (Poly Dcr Type Poly Int) %%Function%%)
(assert
 (forall ((%%hole%%0 Poly) (%%hole%%1 Dcr) (%%hole%%2 Type) (%%hole%%3 Poly) (%%hole%%4
    Int
   ) (key$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%3 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4) key$)
    (I (ite
      (= key$ %%hole%%0)
      %%hole%%4
      (vstd.multiset.impl&%0.count.? %%hole%%1 %%hole%%2 %%hole%%3 key$)
   )))
   :pattern ((%%apply%%0 (%%lambda%%3 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4)
     key$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.impl&%0.update.)
  (forall ((V&. Dcr) (V& Type) (self! Poly) (v! Poly) (mult! Poly)) (!
    (= (vstd.multiset.impl&%0.update.? V&. V& self! v! mult!) (let
      ((map$ (vstd.map.impl&%0.new.? V&. V& $ NAT $ (TYPE%fun%1. V&. V& $ BOOL) $ (TYPE%fun%1.
          V&. V& $ NAT
         ) (Poly%fun%1. (mk_fun (%%lambda%%2 V&. V& self! v!))) (Poly%fun%1. (mk_fun (%%lambda%%3
            v! V&. V& self! (%I mult!)
      ))))))
      (vstd.multiset.impl&%0.from_map.? V&. V& map$)
    ))
    :pattern ((vstd.multiset.impl&%0.update.? V&. V& self! v! mult!))
    :qid internal_vstd.multiset.impl&__0.update.?_definition
    :skolemid skolem_internal_vstd.multiset.impl&__0.update.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (v! Poly) (mult! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.multiset.Multiset. V&. V&))
     (has_type v! V&)
     (has_type mult! NAT)
    )
    (has_type (vstd.multiset.impl&%0.update.? V&. V& self! v! mult!) (TYPE%vstd.multiset.Multiset.
      V&. V&
   )))
   :pattern ((vstd.multiset.impl&%0.update.? V&. V& self! v! mult!))
   :qid internal_vstd.multiset.impl&__0.update.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.update.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::multiset::Multiset::subset_of
(assert
 (fuel_bool_default fuel%vstd.multiset.impl&%0.subset_of.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.impl&%0.subset_of.)
  (forall ((V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
    (= (vstd.multiset.impl&%0.subset_of.? V&. V& self! m2!) (forall ((v$ Poly)) (!
       (=>
        (has_type v$ V&)
        (<= (vstd.multiset.impl&%0.count.? V&. V& self! v$) (vstd.multiset.impl&%0.count.?
          V&. V& m2! v$
       )))
       :pattern ((vstd.multiset.impl&%0.count.? V&. V& self! v$))
       :pattern ((vstd.multiset.impl&%0.count.? V&. V& m2! v$))
       :qid user_crate__vstd__multiset__Multiset__subset_of_15
       :skolemid skolem_user_crate__vstd__multiset__Multiset__subset_of_15
    )))
    :pattern ((vstd.multiset.impl&%0.subset_of.? V&. V& self! m2!))
    :qid internal_vstd.multiset.impl&__0.subset_of.?_definition
    :skolemid skolem_internal_vstd.multiset.impl&__0.subset_of.?_definition
))))

;; Function-Axioms crate::vstd::multiset::Multiset::le
(assert
 (fuel_bool_default fuel%vstd.multiset.impl&%0.le.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.impl&%0.le.)
  (forall ((V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
    (= (vstd.multiset.impl&%0.le.? V&. V& self! m2!) (vstd.multiset.impl&%0.subset_of.?
      V&. V& self! m2!
    ))
    :pattern ((vstd.multiset.impl&%0.le.? V&. V& self! m2!))
    :qid internal_vstd.multiset.impl&__0.le.?_definition
    :skolemid skolem_internal_vstd.multiset.impl&__0.le.?_definition
))))

;; Function-Axioms crate::vstd::multiset::Multiset::spec_le
(assert
 (fuel_bool_default fuel%vstd.multiset.impl&%0.spec_le.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.impl&%0.spec_le.)
  (forall ((V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
    (= (vstd.multiset.impl&%0.spec_le.? V&. V& self! m2!) (vstd.multiset.impl&%0.subset_of.?
      V&. V& self! m2!
    ))
    :pattern ((vstd.multiset.impl&%0.spec_le.? V&. V& self! m2!))
    :qid internal_vstd.multiset.impl&__0.spec_le.?_definition
    :skolemid skolem_internal_vstd.multiset.impl&__0.spec_le.?_definition
))))

;; Function-Axioms crate::vstd::multiset::Multiset::ext_equal
(assert
 (fuel_bool_default fuel%vstd.multiset.impl&%0.ext_equal.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.impl&%0.ext_equal.)
  (forall ((V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
    (= (vstd.multiset.impl&%0.ext_equal.? V&. V& self! m2!) (ext_eq false (TYPE%vstd.multiset.Multiset.
       V&. V&
      ) self! m2!
    ))
    :pattern ((vstd.multiset.impl&%0.ext_equal.? V&. V& self! m2!))
    :qid internal_vstd.multiset.impl&__0.ext_equal.?_definition
    :skolemid skolem_internal_vstd.multiset.impl&__0.ext_equal.?_definition
))))

;; Function-Axioms crate::vstd::multiset::Multiset::choose
(assert
 (fuel_bool_default fuel%vstd.multiset.impl&%0.choose.)
)
(declare-fun %%choose%%0 (Type Dcr Type Poly Int Dcr Type Poly) Poly)
(assert
 (forall ((%%hole%%0 Type) (%%hole%%1 Dcr) (%%hole%%2 Type) (%%hole%%3 Poly) (%%hole%%4
    Int
   ) (%%hole%%5 Dcr) (%%hole%%6 Type) (%%hole%%7 Poly)
  ) (!
   (=>
    (exists ((v$ Poly)) (!
      (and
       (has_type v$ %%hole%%0)
       (> (vstd.multiset.impl&%0.count.? %%hole%%1 %%hole%%2 %%hole%%3 v$) %%hole%%4)
      )
      :pattern ((vstd.multiset.impl&%0.count.? %%hole%%5 %%hole%%6 %%hole%%7 v$))
      :qid user_crate__vstd__multiset__Multiset__choose_16
      :skolemid skolem_user_crate__vstd__multiset__Multiset__choose_16
    ))
    (exists ((v$ Poly)) (!
      (and
       (and
        (has_type v$ %%hole%%0)
        (> (vstd.multiset.impl&%0.count.? %%hole%%1 %%hole%%2 %%hole%%3 v$) %%hole%%4)
       )
       (= (%%choose%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5 %%hole%%6
         %%hole%%7
        ) v$
      ))
      :pattern ((vstd.multiset.impl&%0.count.? %%hole%%5 %%hole%%6 %%hole%%7 v$))
   )))
   :pattern ((%%choose%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
     %%hole%%6 %%hole%%7
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.impl&%0.choose.)
  (forall ((V&. Dcr) (V& Type) (self! Poly)) (!
    (= (vstd.multiset.impl&%0.choose.? V&. V& self!) (as_type (%%choose%%0 V& V&. V& self!
       0 V&. V& self!
      ) V&
    ))
    :pattern ((vstd.multiset.impl&%0.choose.? V&. V& self!))
    :qid internal_vstd.multiset.impl&__0.choose.?_definition
    :skolemid skolem_internal_vstd.multiset.impl&__0.choose.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.multiset.Multiset. V&. V&))
    (has_type (vstd.multiset.impl&%0.choose.? V&. V& self!) V&)
   )
   :pattern ((vstd.multiset.impl&%0.choose.? V&. V& self!))
   :qid internal_vstd.multiset.impl&__0.choose.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.choose.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::multiset::Multiset::spec_has
(assert
 (fuel_bool_default fuel%vstd.multiset.impl&%0.spec_has.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.impl&%0.spec_has.)
  (forall ((V&. Dcr) (V& Type) (self! Poly) (v! Poly)) (!
    (= (vstd.multiset.impl&%0.spec_has.? V&. V& self! v!) (vstd.multiset.impl&%0.contains.?
      V&. V& self! v!
    ))
    :pattern ((vstd.multiset.impl&%0.spec_has.? V&. V& self! v!))
    :qid internal_vstd.multiset.impl&__0.spec_has.?_definition
    :skolemid skolem_internal_vstd.multiset.impl&__0.spec_has.?_definition
))))

;; Function-Axioms crate::vstd::multiset::Multiset::intersection_with
(assert
 (fuel_bool_default fuel%vstd.multiset.impl&%0.intersection_with.)
)
(declare-fun %%lambda%%4 (Dcr Type Poly) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (v$ Poly)) (!
   (= (%%apply%%0 (%%lambda%%4 %%hole%%0 %%hole%%1 %%hole%%2) v$) (B (vstd.multiset.impl&%0.contains.?
      %%hole%%0 %%hole%%1 %%hole%%2 v$
   )))
   :pattern ((%%apply%%0 (%%lambda%%4 %%hole%%0 %%hole%%1 %%hole%%2) v$))
)))
(declare-fun %%lambda%%5 (Dcr Type Poly Dcr Type Poly) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 Dcr) (%%hole%%4
    Type
   ) (%%hole%%5 Poly) (v$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%5 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5)
     v$
    ) (I (nClip (vstd.math.min.? (I (vstd.multiset.impl&%0.count.? %%hole%%0 %%hole%%1 %%hole%%2
         v$
        )
       ) (I (vstd.multiset.impl&%0.count.? %%hole%%3 %%hole%%4 %%hole%%5 v$))
   ))))
   :pattern ((%%apply%%0 (%%lambda%%5 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      %%hole%%5
     ) v$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.impl&%0.intersection_with.)
  (forall ((V&. Dcr) (V& Type) (self! Poly) (other! Poly)) (!
    (= (vstd.multiset.impl&%0.intersection_with.? V&. V& self! other!) (let
      ((m$ (vstd.map.impl&%0.new.? V&. V& $ NAT $ (TYPE%fun%1. V&. V& $ BOOL) $ (TYPE%fun%1.
          V&. V& $ NAT
         ) (Poly%fun%1. (mk_fun (%%lambda%%4 V&. V& self!))) (Poly%fun%1. (mk_fun (%%lambda%%5
            V&. V& self! V&. V& other!
      ))))))
      (vstd.multiset.impl&%0.from_map.? V&. V& m$)
    ))
    :pattern ((vstd.multiset.impl&%0.intersection_with.? V&. V& self! other!))
    :qid internal_vstd.multiset.impl&__0.intersection_with.?_definition
    :skolemid skolem_internal_vstd.multiset.impl&__0.intersection_with.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (other! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.multiset.Multiset. V&. V&))
     (has_type other! (TYPE%vstd.multiset.Multiset. V&. V&))
    )
    (has_type (vstd.multiset.impl&%0.intersection_with.? V&. V& self! other!) (TYPE%vstd.multiset.Multiset.
      V&. V&
   )))
   :pattern ((vstd.multiset.impl&%0.intersection_with.? V&. V& self! other!))
   :qid internal_vstd.multiset.impl&__0.intersection_with.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.intersection_with.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::multiset::Multiset::difference_with
(assert
 (fuel_bool_default fuel%vstd.multiset.impl&%0.difference_with.)
)
(declare-fun %%lambda%%6 (Dcr Type Poly Dcr Type Poly) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 Dcr) (%%hole%%4
    Type
   ) (%%hole%%5 Poly) (v$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%6 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5)
     v$
    ) (I (vstd.math.clip.? (I (Sub (vstd.multiset.impl&%0.count.? %%hole%%0 %%hole%%1 %%hole%%2
         v$
        ) (vstd.multiset.impl&%0.count.? %%hole%%3 %%hole%%4 %%hole%%5 v$)
   )))))
   :pattern ((%%apply%%0 (%%lambda%%6 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      %%hole%%5
     ) v$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.impl&%0.difference_with.)
  (forall ((V&. Dcr) (V& Type) (self! Poly) (other! Poly)) (!
    (= (vstd.multiset.impl&%0.difference_with.? V&. V& self! other!) (let
      ((m$ (vstd.map.impl&%0.new.? V&. V& $ NAT $ (TYPE%fun%1. V&. V& $ BOOL) $ (TYPE%fun%1.
          V&. V& $ NAT
         ) (Poly%fun%1. (mk_fun (%%lambda%%4 V&. V& self!))) (Poly%fun%1. (mk_fun (%%lambda%%6
            V&. V& self! V&. V& other!
      ))))))
      (vstd.multiset.impl&%0.from_map.? V&. V& m$)
    ))
    :pattern ((vstd.multiset.impl&%0.difference_with.? V&. V& self! other!))
    :qid internal_vstd.multiset.impl&__0.difference_with.?_definition
    :skolemid skolem_internal_vstd.multiset.impl&__0.difference_with.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (other! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.multiset.Multiset. V&. V&))
     (has_type other! (TYPE%vstd.multiset.Multiset. V&. V&))
    )
    (has_type (vstd.multiset.impl&%0.difference_with.? V&. V& self! other!) (TYPE%vstd.multiset.Multiset.
      V&. V&
   )))
   :pattern ((vstd.multiset.impl&%0.difference_with.? V&. V& self! other!))
   :qid internal_vstd.multiset.impl&__0.difference_with.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.difference_with.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::multiset::Multiset::is_disjoint_from
(assert
 (fuel_bool_default fuel%vstd.multiset.impl&%0.is_disjoint_from.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.impl&%0.is_disjoint_from.)
  (forall ((V&. Dcr) (V& Type) (self! Poly) (other! Poly)) (!
    (= (vstd.multiset.impl&%0.is_disjoint_from.? V&. V& self! other!) (forall ((x$ Poly))
      (!
       (=>
        (has_type x$ V&)
        (or
         (= (vstd.multiset.impl&%0.count.? V&. V& self! x$) 0)
         (= (vstd.multiset.impl&%0.count.? V&. V& other! x$) 0)
       ))
       :pattern ((vstd.multiset.impl&%0.count.? V&. V& self! x$))
       :pattern ((vstd.multiset.impl&%0.count.? V&. V& other! x$))
       :qid user_crate__vstd__multiset__Multiset__is_disjoint_from_17
       :skolemid skolem_user_crate__vstd__multiset__Multiset__is_disjoint_from_17
    )))
    :pattern ((vstd.multiset.impl&%0.is_disjoint_from.? V&. V& self! other!))
    :qid internal_vstd.multiset.impl&__0.is_disjoint_from.?_definition
    :skolemid skolem_internal_vstd.multiset.impl&__0.is_disjoint_from.?_definition
))))

;; Function-Axioms crate::vstd::multiset::Multiset::dom
(assert
 (fuel_bool_default fuel%vstd.multiset.impl&%0.dom.)
)
(declare-fun %%lambda%%7 (Dcr Type Poly Int) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 Int) (v$ Poly))
  (!
   (= (%%apply%%0 (%%lambda%%7 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) v$) (B (> (vstd.multiset.impl&%0.count.?
       %%hole%%0 %%hole%%1 %%hole%%2 v$
      ) %%hole%%3
   )))
   :pattern ((%%apply%%0 (%%lambda%%7 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) v$))
)))
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.impl&%0.dom.)
  (forall ((V&. Dcr) (V& Type) (self! Poly)) (!
    (= (vstd.multiset.impl&%0.dom.? V&. V& self!) (vstd.set.impl&%0.new.? V&. V& $ (TYPE%fun%1.
       V&. V& $ BOOL
      ) (Poly%fun%1. (mk_fun (%%lambda%%7 V&. V& self! 0)))
    ))
    :pattern ((vstd.multiset.impl&%0.dom.? V&. V& self!))
    :qid internal_vstd.multiset.impl&__0.dom.?_definition
    :skolemid skolem_internal_vstd.multiset.impl&__0.dom.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.multiset.Multiset. V&. V&))
    (has_type (vstd.multiset.impl&%0.dom.? V&. V& self!) (TYPE%vstd.set.Set. V&. V&))
   )
   :pattern ((vstd.multiset.impl&%0.dom.? V&. V& self!))
   :qid internal_vstd.multiset.impl&__0.dom.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.dom.?_pre_post_definition
)))

;; Function-Def crate::vstd::multiset::axiom_multiset_empty
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:210:1: 210:53 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const v! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type v! V&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::multiset::axiom_multiset_empty
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_multiset_empty.)
  (forall ((V&. Dcr) (V& Type) (v! Poly)) (!
    (=>
     (has_type v! V&)
     (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.empty.? V&. V&) v!)
      0
    ))
    :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.empty.? V&. V&)
      v!
    ))
    :qid user_crate__vstd__multiset__axiom_multiset_empty_18
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_empty_18
))))

;; Function-Def crate::vstd::multiset::axiom_multiset_contained
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:232:1: 232:73 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m! Poly)
 (declare-const v! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m! (TYPE%vstd.map.Map. V&. V& $ NAT))
 )
 (assert
  (has_type v! V&)
 )
 (assert
  (vstd.set.impl&%0.finite.? V&. V& (vstd.map.impl&%0.dom.? V&. V& $ NAT m!))
 )
 (assert
  (vstd.set.impl&%0.contains.? V&. V& (vstd.map.impl&%0.dom.? V&. V& $ NAT m!) v!)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::multiset::axiom_multiset_contained
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_multiset_contained.)
  (forall ((V&. Dcr) (V& Type) (m! Poly) (v! Poly)) (!
    (=>
     (and
      (has_type m! (TYPE%vstd.map.Map. V&. V& $ NAT))
      (has_type v! V&)
     )
     (=>
      (and
       (vstd.set.impl&%0.finite.? V&. V& (vstd.map.impl&%0.dom.? V&. V& $ NAT m!))
       (vstd.set.impl&%0.contains.? V&. V& (vstd.map.impl&%0.dom.? V&. V& $ NAT m!) v!)
      )
      (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.from_map.? V&. V& m!)
        v!
       ) (%I (vstd.map.impl&%0.index.? V&. V& $ NAT m! v!))
    )))
    :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.from_map.? V&.
       V& m!
      ) v!
    ))
    :qid user_crate__vstd__multiset__axiom_multiset_contained_19
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_contained_19
))))

;; Function-Def crate::vstd::multiset::axiom_multiset_new_not_contained
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:244:1: 244:81 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m! Poly)
 (declare-const v! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m! (TYPE%vstd.map.Map. V&. V& $ NAT))
 )
 (assert
  (has_type v! V&)
 )
 (assert
  (vstd.set.impl&%0.finite.? V&. V& (vstd.map.impl&%0.dom.? V&. V& $ NAT m!))
 )
 (assert
  (not (vstd.set.impl&%0.contains.? V&. V& (vstd.map.impl&%0.dom.? V&. V& $ NAT m!) v!))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::multiset::axiom_multiset_new_not_contained
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_multiset_new_not_contained.)
  (forall ((V&. Dcr) (V& Type) (m! Poly) (v! Poly)) (!
    (=>
     (and
      (has_type m! (TYPE%vstd.map.Map. V&. V& $ NAT))
      (has_type v! V&)
     )
     (=>
      (and
       (vstd.set.impl&%0.finite.? V&. V& (vstd.map.impl&%0.dom.? V&. V& $ NAT m!))
       (not (vstd.set.impl&%0.contains.? V&. V& (vstd.map.impl&%0.dom.? V&. V& $ NAT m!) v!))
      )
      (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.from_map.? V&. V& m!)
        v!
       ) 0
    )))
    :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.from_map.? V&.
       V& m!
      ) v!
    ))
    :qid user_crate__vstd__multiset__axiom_multiset_new_not_contained_20
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_new_not_contained_20
))))

;; Function-Def crate::vstd::multiset::axiom_multiset_singleton
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:257:1: 257:57 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const v! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type v! V&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::multiset::axiom_multiset_singleton
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_multiset_singleton.)
  (forall ((V&. Dcr) (V& Type) (v! Poly)) (!
    (=>
     (has_type v! V&)
     (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.singleton.? V&. V& v!)
       v!
      ) 1
    ))
    :pattern ((vstd.multiset.impl&%0.singleton.? V&. V& v!))
    :qid user_crate__vstd__multiset__axiom_multiset_singleton_21
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_singleton_21
))))

;; Function-Def crate::vstd::multiset::axiom_multiset_singleton_different
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:266:1: 266:73 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const v! Poly)
 (declare-const w! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type v! V&)
 )
 (assert
  (has_type w! V&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::multiset::axiom_multiset_singleton_different
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_multiset_singleton_different.)
  (forall ((V&. Dcr) (V& Type) (v! Poly) (w! Poly)) (!
    (=>
     (and
      (has_type v! V&)
      (has_type w! V&)
     )
     (=>
      (not (= v! w!))
      (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.singleton.? V&. V& v!)
        w!
       ) 0
    )))
    :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.singleton.? V&.
       V& v!
      ) w!
    ))
    :qid user_crate__vstd__multiset__axiom_multiset_singleton_different_22
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_singleton_different_22
))))

;; Function-Def crate::vstd::multiset::axiom_multiset_add
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:276:1: 276:85 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m1! Poly)
 (declare-const m2! Poly)
 (declare-const v! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m1! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (has_type v! V&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::multiset::axiom_multiset_add
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_multiset_add.)
  (forall ((V&. Dcr) (V& Type) (m1! Poly) (m2! Poly) (v! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd.multiset.Multiset. V&. V&))
      (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
      (has_type v! V&)
     )
     (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.add.? V&. V& m1! m2!)
       v!
      ) (nClip (Add (vstd.multiset.impl&%0.count.? V&. V& m1! v!) (vstd.multiset.impl&%0.count.?
         V&. V& m2! v!
    )))))
    :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.add.? V&. V&
       m1! m2!
      ) v!
    ))
    :qid user_crate__vstd__multiset__axiom_multiset_add_23
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_add_23
))))

;; Function-Def crate::vstd::multiset::axiom_multiset_sub
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:287:1: 287:85 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m1! Poly)
 (declare-const m2! Poly)
 (declare-const v! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m1! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (has_type v! V&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::multiset::axiom_multiset_sub
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_multiset_sub.)
  (forall ((V&. Dcr) (V& Type) (m1! Poly) (m2! Poly) (v! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd.multiset.Multiset. V&. V&))
      (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
      (has_type v! V&)
     )
     (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.sub.? V&. V& m1! m2!)
       v!
      ) (ite
       (>= (vstd.multiset.impl&%0.count.? V&. V& m1! v!) (vstd.multiset.impl&%0.count.? V&.
         V& m2! v!
       ))
       (Sub (vstd.multiset.impl&%0.count.? V&. V& m1! v!) (vstd.multiset.impl&%0.count.? V&.
         V& m2! v!
       ))
       0
    )))
    :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.sub.? V&. V&
       m1! m2!
      ) v!
    ))
    :qid user_crate__vstd__multiset__axiom_multiset_sub_24
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_sub_24
))))

;; Function-Def crate::vstd::multiset::axiom_multiset_ext_equal
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:300:1: 300:85 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m1! Poly)
 (declare-const m2! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m1! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::multiset::axiom_multiset_ext_equal
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_multiset_ext_equal.)
  (forall ((V&. Dcr) (V& Type) (m1! Poly) (m2! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd.multiset.Multiset. V&. V&))
      (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
     )
     (= (ext_eq false (TYPE%vstd.multiset.Multiset. V&. V&) m1! m2!) (forall ((v$ Poly))
       (!
        (=>
         (has_type v$ V&)
         (= (vstd.multiset.impl&%0.count.? V&. V& m1! v$) (vstd.multiset.impl&%0.count.? V&.
           V& m2! v$
        )))
        :pattern ((vstd.multiset.impl&%0.count.? V&. V& m1! v$))
        :pattern ((vstd.multiset.impl&%0.count.? V&. V& m2! v$))
        :qid user_crate__vstd__multiset__axiom_multiset_ext_equal_25
        :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_ext_equal_25
    ))))
    :pattern ((ext_eq false (TYPE%vstd.multiset.Multiset. V&. V&) m1! m2!))
    :qid user_crate__vstd__multiset__axiom_multiset_ext_equal_26
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_ext_equal_26
))))

;; Function-Def crate::vstd::multiset::axiom_multiset_ext_equal_deep
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:307:1: 307:90 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m1! Poly)
 (declare-const m2! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m1! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::multiset::axiom_multiset_ext_equal_deep
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_multiset_ext_equal_deep.)
  (forall ((V&. Dcr) (V& Type) (m1! Poly) (m2! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd.multiset.Multiset. V&. V&))
      (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
     )
     (= (ext_eq true (TYPE%vstd.multiset.Multiset. V&. V&) m1! m2!) (ext_eq false (TYPE%vstd.multiset.Multiset.
        V&. V&
       ) m1! m2!
    )))
    :pattern ((ext_eq true (TYPE%vstd.multiset.Multiset. V&. V&) m1! m2!))
    :qid user_crate__vstd__multiset__axiom_multiset_ext_equal_deep_28
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_ext_equal_deep_28
))))

;; Function-Def crate::vstd::multiset::axiom_len_empty
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:316:1: 316:44 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
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

;; Broadcast crate::vstd::multiset::axiom_len_empty
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_len_empty.)
  (forall ((V&. Dcr) (V& Type)) (!
    (= (vstd.multiset.impl&%0.len.? V&. V& (vstd.multiset.impl&%0.empty.? V&. V&)) 0)
    :pattern ((vstd.multiset.impl&%0.len.? V&. V& (vstd.multiset.impl&%0.empty.? V&. V&)))
    :qid user_crate__vstd__multiset__axiom_len_empty_29
    :skolemid skolem_user_crate__vstd__multiset__axiom_len_empty_29
))))

;; Function-Def crate::vstd::multiset::axiom_len_singleton
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:324:1: 324:52 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const v! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type v! V&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::multiset::axiom_len_singleton
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_len_singleton.)
  (forall ((V&. Dcr) (V& Type) (v! Poly)) (!
    (=>
     (has_type v! V&)
     (= (vstd.multiset.impl&%0.len.? V&. V& (vstd.multiset.impl&%0.singleton.? V&. V& v!))
      1
    ))
    :pattern ((vstd.multiset.impl&%0.len.? V&. V& (vstd.multiset.impl&%0.singleton.? V&.
       V& v!
    )))
    :qid user_crate__vstd__multiset__axiom_len_singleton_30
    :skolemid skolem_user_crate__vstd__multiset__axiom_len_singleton_30
))))

;; Function-Def crate::vstd::multiset::axiom_len_add
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:332:1: 332:74 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m1! Poly)
 (declare-const m2! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m1! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::multiset::axiom_len_add
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_len_add.)
  (forall ((V&. Dcr) (V& Type) (m1! Poly) (m2! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd.multiset.Multiset. V&. V&))
      (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
     )
     (= (vstd.multiset.impl&%0.len.? V&. V& (vstd.multiset.impl&%0.add.? V&. V& m1! m2!))
      (nClip (Add (vstd.multiset.impl&%0.len.? V&. V& m1!) (vstd.multiset.impl&%0.len.? V&.
         V& m2!
    )))))
    :pattern ((vstd.multiset.impl&%0.len.? V&. V& (vstd.multiset.impl&%0.add.? V&. V& m1!
       m2!
    )))
    :qid user_crate__vstd__multiset__axiom_len_add_31
    :skolemid skolem_user_crate__vstd__multiset__axiom_len_add_31
))))

;; Function-Def crate::vstd::multiset::axiom_len_sub
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:341:1: 341:74 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m1! Poly)
 (declare-const m2! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m1! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (vstd.multiset.impl&%0.subset_of.? V&. V& m2! m1!)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::multiset::axiom_len_sub
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_len_sub.)
  (forall ((V&. Dcr) (V& Type) (m1! Poly) (m2! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd.multiset.Multiset. V&. V&))
      (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
     )
     (=>
      (vstd.multiset.impl&%0.subset_of.? V&. V& m2! m1!)
      (= (vstd.multiset.impl&%0.len.? V&. V& (vstd.multiset.impl&%0.sub.? V&. V& m1! m2!))
       (Sub (vstd.multiset.impl&%0.len.? V&. V& m1!) (vstd.multiset.impl&%0.len.? V&. V& m2!))
    )))
    :pattern ((vstd.multiset.impl&%0.len.? V&. V& (vstd.multiset.impl&%0.sub.? V&. V& m1!
       m2!
    )))
    :qid user_crate__vstd__multiset__axiom_len_sub_32
    :skolemid skolem_user_crate__vstd__multiset__axiom_len_sub_32
))))

;; Function-Def crate::vstd::multiset::axiom_count_le_len
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:351:1: 351:67 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m! Poly)
 (declare-const v! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (has_type v! V&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::multiset::axiom_count_le_len
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_count_le_len.)
  (forall ((V&. Dcr) (V& Type) (m! Poly) (v! Poly)) (!
    (=>
     (and
      (has_type m! (TYPE%vstd.multiset.Multiset. V&. V&))
      (has_type v! V&)
     )
     (<= (vstd.multiset.impl&%0.count.? V&. V& m! v!) (vstd.multiset.impl&%0.len.? V&. V&
       m!
    )))
    :pattern ((vstd.multiset.impl&%0.count.? V&. V& m! v!) (vstd.multiset.impl&%0.len.?
      V&. V& m!
    ))
    :qid user_crate__vstd__multiset__axiom_count_le_len_33
    :skolemid skolem_user_crate__vstd__multiset__axiom_count_le_len_33
))))

;; Function-Def crate::vstd::multiset::axiom_filter_count
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:361:1: 361:90 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m! Poly)
 (declare-const f! %%Function%%)
 (declare-const v! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (has_type (Poly%fun%1. f!) (TYPE%fun%1. V&. V& $ BOOL))
 )
 (assert
  (has_type v! V&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::multiset::axiom_filter_count
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_filter_count.)
  (forall ((V&. Dcr) (V& Type) (m! Poly) (f! Poly) (v! Poly)) (!
    (=>
     (and
      (has_type m! (TYPE%vstd.multiset.Multiset. V&. V&))
      (has_type f! (TYPE%fun%1. V&. V& $ BOOL))
      (has_type v! V&)
     )
     (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.filter.? V&. V& $ (TYPE%fun%1.
         V&. V& $ BOOL
        ) m! f!
       ) v!
      ) (ite
       (%B (%%apply%%0 (%Poly%fun%1. f!) v!))
       (vstd.multiset.impl&%0.count.? V&. V& m! v!)
       0
    )))
    :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.filter.? V&.
       V& $ (TYPE%fun%1. V&. V& $ BOOL) m! f!
      ) v!
    ))
    :qid user_crate__vstd__multiset__axiom_filter_count_34
    :skolemid skolem_user_crate__vstd__multiset__axiom_filter_count_34
))))

;; Function-Def crate::vstd::multiset::axiom_choose_count
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:375:1: 375:61 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (not (= (vstd.multiset.impl&%0.len.? V&. V& m!) 0))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::multiset::axiom_choose_count
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_choose_count.)
  (forall ((V&. Dcr) (V& Type) (m! Poly)) (!
    (=>
     (has_type m! (TYPE%vstd.multiset.Multiset. V&. V&))
     (=>
      (not (= (vstd.multiset.impl&%0.len.? V&. V& m!) 0))
      (> (vstd.multiset.impl&%0.count.? V&. V& m! (vstd.multiset.impl&%0.choose.? V&. V& m!))
       0
    )))
    :pattern ((vstd.multiset.impl&%0.len.? V&. V& m!) (vstd.multiset.impl&%0.count.? V&.
      V& m! (vstd.multiset.impl&%0.choose.? V&. V& m!)
    ))
    :qid user_crate__vstd__multiset__axiom_choose_count_35
    :skolemid skolem_user_crate__vstd__multiset__axiom_choose_count_35
))))

;; Function-Def crate::vstd::multiset::axiom_multiset_always_finite
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:388:1: 388:71 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::multiset::axiom_multiset_always_finite
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_multiset_always_finite.)
  (forall ((V&. Dcr) (V& Type) (m! Poly)) (!
    (=>
     (has_type m! (TYPE%vstd.multiset.Multiset. V&. V&))
     (vstd.set.impl&%0.finite.? V&. V& (vstd.multiset.impl&%0.dom.? V&. V& m!))
    )
    :pattern ((vstd.set.impl&%0.finite.? V&. V& (vstd.multiset.impl&%0.dom.? V&. V& m!)))
    :qid user_crate__vstd__multiset__axiom_multiset_always_finite_36
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_always_finite_36
))))

;; Function-Specs crate::vstd::multiset::lemma_multiset_empty_len
(declare-fun ens%vstd.multiset.lemma_multiset_empty_len. (Dcr Type Poly) Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (m! Poly)) (!
   (= (ens%vstd.multiset.lemma_multiset_empty_len. V&. V& m!) (and
     (= (= (vstd.multiset.impl&%0.len.? V&. V& m!) 0) (ext_eq false (TYPE%vstd.multiset.Multiset.
        V&. V&
       ) m! (vstd.multiset.impl&%0.empty.? V&. V&)
     ))
     (=>
      (> (vstd.multiset.impl&%0.len.? V&. V& m!) 0)
      (exists ((v$ Poly)) (!
        (and
         (has_type v$ V&)
         (< 0 (vstd.multiset.impl&%0.count.? V&. V& m! v$))
        )
        :pattern ((vstd.multiset.impl&%0.count.? V&. V& m! v$))
        :qid user_crate__vstd__multiset__lemma_multiset_empty_len_37
        :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_empty_len_37
   )))))
   :pattern ((ens%vstd.multiset.lemma_multiset_empty_len. V&. V& m!))
   :qid internal_ens__vstd.multiset.lemma_multiset_empty_len._definition
   :skolemid skolem_internal_ens__vstd.multiset.lemma_multiset_empty_len._definition
)))

;; Function-Def crate::vstd::multiset::lemma_multiset_empty_len
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:221:1: 221:57 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::multiset::lemma_update_same
(declare-fun ens%vstd.multiset.lemma_update_same. (Dcr Type Poly Poly Int) Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (m! Poly) (v! Poly) (mult! Int)) (!
   (= (ens%vstd.multiset.lemma_update_same. V&. V& m! v! mult!) (= (vstd.multiset.impl&%0.count.?
      V&. V& (vstd.multiset.impl&%0.update.? V&. V& m! v! (I mult!)) v!
     ) mult!
   ))
   :pattern ((ens%vstd.multiset.lemma_update_same. V&. V& m! v! mult!))
   :qid internal_ens__vstd.multiset.lemma_update_same._definition
   :skolemid skolem_internal_ens__vstd.multiset.lemma_update_same._definition
)))

;; Function-Def crate::vstd::multiset::lemma_update_same
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:418:1: 418:67 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m! Poly)
 (declare-const v! Poly)
 (declare-const mult! Int)
 (declare-const tmp%1 Bool)
 (declare-const map@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (has_type v! V&)
 )
 (assert
  (<= 0 mult!)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.set.group_set_axioms.)
    (=>
     (fuel_bool fuel%vstd.map.group_map_axioms.)
     (=>
      (fuel_bool fuel%vstd.multiset.group_multiset_axioms.)
      (=>
       (= map@ (vstd.map.impl&%0.new.? V&. V& $ NAT $ (TYPE%fun%1. V&. V& $ BOOL) $ (TYPE%fun%1.
          V&. V& $ NAT
         ) (Poly%fun%1. (mk_fun (%%lambda%%2 V&. V& m! v!))) (Poly%fun%1. (mk_fun (%%lambda%%3
            v! V&. V& m! mult!
       )))))
       (=>
        (= tmp%1 (ext_eq false (TYPE%vstd.set.Set. V&. V&) (vstd.map.impl&%0.dom.? V&. V& $
           NAT map@
          ) (vstd.set.impl&%0.insert.? V&. V& (vstd.multiset.impl&%0.dom.? V&. V& m!) v!)
        ))
        (and
         (=>
          %%location_label%%0
          tmp%1
         )
         (=>
          tmp%1
          (=>
           %%location_label%%1
           (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.update.? V&. V& m! v!
              (I mult!)
             ) v!
            ) mult!
 )))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::multiset::lemma_update_different
(declare-fun req%vstd.multiset.lemma_update_different. (Dcr Type Poly Poly Int Poly)
 Bool
)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (m! Poly) (v1! Poly) (mult! Int) (v2! Poly)) (!
   (= (req%vstd.multiset.lemma_update_different. V&. V& m! v1! mult! v2!) (=>
     %%global_location_label%%2
     (not (= v1! v2!))
   ))
   :pattern ((req%vstd.multiset.lemma_update_different. V&. V& m! v1! mult! v2!))
   :qid internal_req__vstd.multiset.lemma_update_different._definition
   :skolemid skolem_internal_req__vstd.multiset.lemma_update_different._definition
)))
(declare-fun ens%vstd.multiset.lemma_update_different. (Dcr Type Poly Poly Int Poly)
 Bool
)
(assert
 (forall ((V&. Dcr) (V& Type) (m! Poly) (v1! Poly) (mult! Int) (v2! Poly)) (!
   (= (ens%vstd.multiset.lemma_update_different. V&. V& m! v1! mult! v2!) (= (vstd.multiset.impl&%0.count.?
      V&. V& (vstd.multiset.impl&%0.update.? V&. V& m! v1! (I mult!)) v2!
     ) (vstd.multiset.impl&%0.count.? V&. V& m! v2!)
   ))
   :pattern ((ens%vstd.multiset.lemma_update_different. V&. V& m! v1! mult! v2!))
   :qid internal_ens__vstd.multiset.lemma_update_different._definition
   :skolemid skolem_internal_ens__vstd.multiset.lemma_update_different._definition
)))

;; Function-Def crate::vstd::multiset::lemma_update_different
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:438:1: 438:80 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m! Poly)
 (declare-const v1! Poly)
 (declare-const mult! Int)
 (declare-const v2! Poly)
 (declare-const tmp%1 Bool)
 (declare-const map@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (has_type v1! V&)
 )
 (assert
  (<= 0 mult!)
 )
 (assert
  (has_type v2! V&)
 )
 (assert
  (not (= v1! v2!))
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.set.group_set_axioms.)
    (=>
     (fuel_bool fuel%vstd.map.group_map_axioms.)
     (=>
      (fuel_bool fuel%vstd.multiset.group_multiset_axioms.)
      (=>
       (= map@ (vstd.map.impl&%0.new.? V&. V& $ NAT $ (TYPE%fun%1. V&. V& $ BOOL) $ (TYPE%fun%1.
          V&. V& $ NAT
         ) (Poly%fun%1. (mk_fun (%%lambda%%2 V&. V& m! v1!))) (Poly%fun%1. (mk_fun (%%lambda%%3
            v1! V&. V& m! mult!
       )))))
       (=>
        (= tmp%1 (ext_eq false (TYPE%vstd.set.Set. V&. V&) (vstd.map.impl&%0.dom.? V&. V& $
           NAT map@
          ) (vstd.set.impl&%0.insert.? V&. V& (vstd.multiset.impl&%0.dom.? V&. V& m!) v1!)
        ))
        (and
         (=>
          %%location_label%%0
          tmp%1
         )
         (=>
          tmp%1
          (=>
           %%location_label%%1
           (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.update.? V&. V& m! v1!
              (I mult!)
             ) v2!
            ) (vstd.multiset.impl&%0.count.? V&. V& m! v2!)
 )))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::multiset::lemma_insert_containment
(declare-fun ens%vstd.multiset.lemma_insert_containment. (Dcr Type Poly Poly Poly)
 Bool
)
(assert
 (forall ((V&. Dcr) (V& Type) (m! Poly) (x! Poly) (y! Poly)) (!
   (= (ens%vstd.multiset.lemma_insert_containment. V&. V& m! x! y!) (= (< 0 (vstd.multiset.impl&%0.count.?
       V&. V& (vstd.multiset.impl&%0.insert.? V&. V& m! x!) y!
      )
     ) (or
      (= x! y!)
      (< 0 (vstd.multiset.impl&%0.count.? V&. V& m! y!))
   )))
   :pattern ((ens%vstd.multiset.lemma_insert_containment. V&. V& m! x! y!))
   :qid internal_ens__vstd.multiset.lemma_insert_containment._definition
   :skolemid skolem_internal_ens__vstd.multiset.lemma_insert_containment._definition
)))

;; Function-Def crate::vstd::multiset::lemma_insert_containment
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:463:1: 463:69 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m! Poly)
 (declare-const x! Poly)
 (declare-const y! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (has_type x! V&)
 )
 (assert
  (has_type y! V&)
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.multiset.group_multiset_axioms.)
    (=>
     %%location_label%%0
     (= (< 0 (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.insert.? V&. V&
         m! x!
        ) y!
       )
      ) (or
       (= x! y!)
       (< 0 (vstd.multiset.impl&%0.count.? V&. V& m! y!))
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::multiset::lemma_insert_increases_count_by_1
(declare-fun ens%vstd.multiset.lemma_insert_increases_count_by_1. (Dcr Type Poly Poly)
 Bool
)
(assert
 (forall ((V&. Dcr) (V& Type) (m! Poly) (x! Poly)) (!
   (= (ens%vstd.multiset.lemma_insert_increases_count_by_1. V&. V& m! x!) (= (vstd.multiset.impl&%0.count.?
      V&. V& (vstd.multiset.impl&%0.insert.? V&. V& m! x!) x!
     ) (nClip (Add (vstd.multiset.impl&%0.count.? V&. V& m! x!) 1))
   ))
   :pattern ((ens%vstd.multiset.lemma_insert_increases_count_by_1. V&. V& m! x!))
   :qid internal_ens__vstd.multiset.lemma_insert_increases_count_by_1._definition
   :skolemid skolem_internal_ens__vstd.multiset.lemma_insert_increases_count_by_1._definition
)))

;; Function-Def crate::vstd::multiset::lemma_insert_increases_count_by_1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:473:1: 473:72 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m! Poly)
 (declare-const x! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (has_type x! V&)
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.multiset.group_multiset_axioms.)
    (=>
     %%location_label%%0
     (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.insert.? V&. V& m! x!)
       x!
      ) (nClip (Add (vstd.multiset.impl&%0.count.? V&. V& m! x!) 1))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::multiset::lemma_insert_non_decreasing
(declare-fun ens%vstd.multiset.lemma_insert_non_decreasing. (Dcr Type Poly Poly Poly)
 Bool
)
(assert
 (forall ((V&. Dcr) (V& Type) (m! Poly) (x! Poly) (y! Poly)) (!
   (= (ens%vstd.multiset.lemma_insert_non_decreasing. V&. V& m! x! y!) (=>
     (< 0 (vstd.multiset.impl&%0.count.? V&. V& m! y!))
     (< 0 (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.insert.? V&. V& m!
        x!
       ) y!
   ))))
   :pattern ((ens%vstd.multiset.lemma_insert_non_decreasing. V&. V& m! x! y!))
   :qid internal_ens__vstd.multiset.lemma_insert_non_decreasing._definition
   :skolemid skolem_internal_ens__vstd.multiset.lemma_insert_non_decreasing._definition
)))

;; Function-Def crate::vstd::multiset::lemma_insert_non_decreasing
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:485:1: 485:72 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m! Poly)
 (declare-const x! Poly)
 (declare-const y! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (has_type x! V&)
 )
 (assert
  (has_type y! V&)
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.multiset.group_multiset_axioms.)
    (=>
     %%location_label%%0
     (=>
      (< 0 (vstd.multiset.impl&%0.count.? V&. V& m! y!))
      (< 0 (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.insert.? V&. V& m!
         x!
        ) y!
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::multiset::lemma_insert_other_elements_unchanged
(declare-fun ens%vstd.multiset.lemma_insert_other_elements_unchanged. (Dcr Type Poly
  Poly Poly
 ) Bool
)
(assert
 (forall ((V&. Dcr) (V& Type) (m! Poly) (x! Poly) (y! Poly)) (!
   (= (ens%vstd.multiset.lemma_insert_other_elements_unchanged. V&. V& m! x! y!) (=>
     (not (= x! y!))
     (= (vstd.multiset.impl&%0.count.? V&. V& m! y!) (vstd.multiset.impl&%0.count.? V&.
       V& (vstd.multiset.impl&%0.insert.? V&. V& m! x!) y!
   ))))
   :pattern ((ens%vstd.multiset.lemma_insert_other_elements_unchanged. V&. V& m! x! y!))
   :qid internal_ens__vstd.multiset.lemma_insert_other_elements_unchanged._definition
   :skolemid skolem_internal_ens__vstd.multiset.lemma_insert_other_elements_unchanged._definition
)))

;; Function-Def crate::vstd::multiset::lemma_insert_other_elements_unchanged
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:495:1: 495:82 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m! Poly)
 (declare-const x! Poly)
 (declare-const y! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (has_type x! V&)
 )
 (assert
  (has_type y! V&)
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.multiset.group_multiset_axioms.)
    (=>
     %%location_label%%0
     (=>
      (not (= x! y!))
      (= (vstd.multiset.impl&%0.count.? V&. V& m! y!) (vstd.multiset.impl&%0.count.? V&.
        V& (vstd.multiset.impl&%0.insert.? V&. V& m! x!) y!
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::multiset::lemma_insert_len
(declare-fun ens%vstd.multiset.lemma_insert_len. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (m! Poly) (x! Poly)) (!
   (= (ens%vstd.multiset.lemma_insert_len. V&. V& m! x!) (= (vstd.multiset.impl&%0.len.?
      V&. V& (vstd.multiset.impl&%0.insert.? V&. V& m! x!)
     ) (nClip (Add (vstd.multiset.impl&%0.len.? V&. V& m!) 1))
   ))
   :pattern ((ens%vstd.multiset.lemma_insert_len. V&. V& m! x!))
   :qid internal_ens__vstd.multiset.lemma_insert_len._definition
   :skolemid skolem_internal_ens__vstd.multiset.lemma_insert_len._definition
)))

;; Function-Def crate::vstd::multiset::lemma_insert_len
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:505:1: 505:55 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m! Poly)
 (declare-const x! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (has_type x! V&)
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.multiset.group_multiset_axioms.)
    (=>
     %%location_label%%0
     (= (vstd.multiset.impl&%0.len.? V&. V& (vstd.multiset.impl&%0.insert.? V&. V& m! x!))
      (nClip (Add (vstd.multiset.impl&%0.len.? V&. V& m!) 1))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::multiset::lemma_intersection_count
(declare-fun ens%vstd.multiset.lemma_intersection_count. (Dcr Type Poly Poly Poly)
 Bool
)
(assert
 (forall ((V&. Dcr) (V& Type) (a! Poly) (b! Poly) (x! Poly)) (!
   (= (ens%vstd.multiset.lemma_intersection_count. V&. V& a! b! x!) (= (vstd.multiset.impl&%0.count.?
      V&. V& (vstd.multiset.impl&%0.intersection_with.? V&. V& a! b!) x!
     ) (vstd.math.min.? (I (vstd.multiset.impl&%0.count.? V&. V& a! x!)) (I (vstd.multiset.impl&%0.count.?
        V&. V& b! x!
   )))))
   :pattern ((ens%vstd.multiset.lemma_intersection_count. V&. V& a! b! x!))
   :qid internal_ens__vstd.multiset.lemma_intersection_count._definition
   :skolemid skolem_internal_ens__vstd.multiset.lemma_intersection_count._definition
)))

;; Function-Def crate::vstd::multiset::lemma_intersection_count
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:517:1: 517:79 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const a! Poly)
 (declare-const b! Poly)
 (declare-const x! Poly)
 (declare-const tmp%1 Bool)
 (declare-const m@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type a! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (has_type b! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (has_type x! V&)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.set.group_set_axioms.)
    (=>
     (fuel_bool fuel%vstd.map.group_map_axioms.)
     (=>
      (fuel_bool fuel%vstd.multiset.group_multiset_axioms.)
      (=>
       (= m@ (vstd.map.impl&%0.new.? V&. V& $ NAT $ (TYPE%fun%1. V&. V& $ BOOL) $ (TYPE%fun%1.
          V&. V& $ NAT
         ) (Poly%fun%1. (mk_fun (%%lambda%%4 V&. V& a!))) (Poly%fun%1. (mk_fun (%%lambda%%5 V&.
            V& a! V&. V& b!
       )))))
       (=>
        (= tmp%1 (ext_eq false (TYPE%vstd.set.Set. V&. V&) (vstd.map.impl&%0.dom.? V&. V& $
           NAT m@
          ) (vstd.multiset.impl&%0.dom.? V&. V& a!)
        ))
        (and
         (=>
          %%location_label%%0
          tmp%1
         )
         (=>
          tmp%1
          (=>
           %%location_label%%1
           (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
              V&. V& a! b!
             ) x!
            ) (vstd.math.min.? (I (vstd.multiset.impl&%0.count.? V&. V& a! x!)) (I (vstd.multiset.impl&%0.count.?
               V&. V& b! x!
 ))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::multiset::lemma_left_pseudo_idempotence
(declare-fun ens%vstd.multiset.lemma_left_pseudo_idempotence. (Dcr Type Poly Poly)
 Bool
)
(assert
 (forall ((V&. Dcr) (V& Type) (a! Poly) (b! Poly)) (!
   (= (ens%vstd.multiset.lemma_left_pseudo_idempotence. V&. V& a! b!) (ext_eq false (TYPE%vstd.multiset.Multiset.
      V&. V&
     ) (vstd.multiset.impl&%0.intersection_with.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
       V&. V& a! b!
      ) b!
     ) (vstd.multiset.impl&%0.intersection_with.? V&. V& a! b!)
   ))
   :pattern ((ens%vstd.multiset.lemma_left_pseudo_idempotence. V&. V& a! b!))
   :qid internal_ens__vstd.multiset.lemma_left_pseudo_idempotence._definition
   :skolemid skolem_internal_ens__vstd.multiset.lemma_left_pseudo_idempotence._definition
)))

;; Function-Def crate::vstd::multiset::lemma_left_pseudo_idempotence
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:533:1: 533:78 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const a! Poly)
 (declare-const b! Poly)
 (declare-const x@ Poly)
 (declare-const x$1@ Poly)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type a! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (has_type b! (TYPE%vstd.multiset.Multiset. V&. V&))
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
    (fuel_bool fuel%vstd.multiset.group_multiset_axioms.)
    (and
     (=>
      (has_type x@ V&)
      (=>
       (ens%vstd.multiset.lemma_intersection_count. V&. V& a! b! x@)
       (=>
        %%location_label%%0
        (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
           V&. V& a! b!
          ) x@
         ) (vstd.math.min.? (I (vstd.multiset.impl&%0.count.? V&. V& a! x@)) (I (vstd.multiset.impl&%0.count.?
            V&. V& b! x@
     )))))))
     (=>
      (forall ((x$ Poly)) (!
        (=>
         (has_type x$ V&)
         (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
            V&. V& a! b!
           ) x$
          ) (vstd.math.min.? (I (vstd.multiset.impl&%0.count.? V&. V& a! x$)) (I (vstd.multiset.impl&%0.count.?
             V&. V& b! x$
        )))))
        :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
           V&. V& a! b!
          ) x$
        ))
        :qid user_crate__vstd__multiset__lemma_left_pseudo_idempotence_39
        :skolemid skolem_user_crate__vstd__multiset__lemma_left_pseudo_idempotence_39
      ))
      (and
       (=>
        (has_type x$1@ V&)
        (=>
         (= tmp%1 (vstd.multiset.impl&%0.intersection_with.? V&. V& a! b!))
         (=>
          (ens%vstd.multiset.lemma_intersection_count. V&. V& tmp%1 b! x$1@)
          (=>
           (= tmp%2 (= (vstd.math.min.? (I (vstd.math.min.? (I (vstd.multiset.impl&%0.count.? V&. V&
                  a! x$1@
                 )
                ) (I (vstd.multiset.impl&%0.count.? V&. V& b! x$1@))
               )
              ) (I (vstd.multiset.impl&%0.count.? V&. V& b! x$1@))
             ) (vstd.math.min.? (I (vstd.multiset.impl&%0.count.? V&. V& a! x$1@)) (I (vstd.multiset.impl&%0.count.?
                V&. V& b! x$1@
           )))))
           (and
            (=>
             %%location_label%%1
             tmp%2
            )
            (=>
             tmp%2
             (=>
              %%location_label%%2
              (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
                 V&. V& (vstd.multiset.impl&%0.intersection_with.? V&. V& a! b!) b!
                ) x$1@
               ) (vstd.math.min.? (I (vstd.multiset.impl&%0.count.? V&. V& a! x$1@)) (I (vstd.multiset.impl&%0.count.?
                  V&. V& b! x$1@
       )))))))))))
       (=>
        (forall ((x$ Poly)) (!
          (=>
           (has_type x$ V&)
           (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
              V&. V& (vstd.multiset.impl&%0.intersection_with.? V&. V& a! b!) b!
             ) x$
            ) (vstd.math.min.? (I (vstd.multiset.impl&%0.count.? V&. V& a! x$)) (I (vstd.multiset.impl&%0.count.?
               V&. V& b! x$
          )))))
          :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
             V&. V& (vstd.multiset.impl&%0.intersection_with.? V&. V& a! b!) b!
            ) x$
          ))
          :qid user_crate__vstd__multiset__lemma_left_pseudo_idempotence_40
          :skolemid skolem_user_crate__vstd__multiset__lemma_left_pseudo_idempotence_40
        ))
        (=>
         %%location_label%%3
         (ext_eq false (TYPE%vstd.multiset.Multiset. V&. V&) (vstd.multiset.impl&%0.intersection_with.?
           V&. V& (vstd.multiset.impl&%0.intersection_with.? V&. V& a! b!) b!
          ) (vstd.multiset.impl&%0.intersection_with.? V&. V& a! b!)
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::multiset::lemma_right_pseudo_idempotence
(declare-fun ens%vstd.multiset.lemma_right_pseudo_idempotence. (Dcr Type Poly Poly)
 Bool
)
(assert
 (forall ((V&. Dcr) (V& Type) (a! Poly) (b! Poly)) (!
   (= (ens%vstd.multiset.lemma_right_pseudo_idempotence. V&. V& a! b!) (ext_eq false (
      TYPE%vstd.multiset.Multiset. V&. V&
     ) (vstd.multiset.impl&%0.intersection_with.? V&. V& a! (vstd.multiset.impl&%0.intersection_with.?
       V&. V& a! b!
      )
     ) (vstd.multiset.impl&%0.intersection_with.? V&. V& a! b!)
   ))
   :pattern ((ens%vstd.multiset.lemma_right_pseudo_idempotence. V&. V& a! b!))
   :qid internal_ens__vstd.multiset.lemma_right_pseudo_idempotence._definition
   :skolemid skolem_internal_ens__vstd.multiset.lemma_right_pseudo_idempotence._definition
)))

;; Function-Def crate::vstd::multiset::lemma_right_pseudo_idempotence
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:559:1: 559:79 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const a! Poly)
 (declare-const b! Poly)
 (declare-const x@ Poly)
 (declare-const x$1@ Poly)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type a! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (has_type b! (TYPE%vstd.multiset.Multiset. V&. V&))
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
    (fuel_bool fuel%vstd.multiset.group_multiset_axioms.)
    (and
     (=>
      (has_type x@ V&)
      (=>
       (ens%vstd.multiset.lemma_intersection_count. V&. V& a! b! x@)
       (=>
        %%location_label%%0
        (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
           V&. V& a! b!
          ) x@
         ) (vstd.math.min.? (I (vstd.multiset.impl&%0.count.? V&. V& a! x@)) (I (vstd.multiset.impl&%0.count.?
            V&. V& b! x@
     )))))))
     (=>
      (forall ((x$ Poly)) (!
        (=>
         (has_type x$ V&)
         (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
            V&. V& a! b!
           ) x$
          ) (vstd.math.min.? (I (vstd.multiset.impl&%0.count.? V&. V& a! x$)) (I (vstd.multiset.impl&%0.count.?
             V&. V& b! x$
        )))))
        :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
           V&. V& a! b!
          ) x$
        ))
        :qid user_crate__vstd__multiset__lemma_right_pseudo_idempotence_41
        :skolemid skolem_user_crate__vstd__multiset__lemma_right_pseudo_idempotence_41
      ))
      (and
       (=>
        (has_type x$1@ V&)
        (=>
         (= tmp%1 (vstd.multiset.impl&%0.intersection_with.? V&. V& a! b!))
         (=>
          (ens%vstd.multiset.lemma_intersection_count. V&. V& a! tmp%1 x$1@)
          (=>
           (= tmp%2 (= (vstd.math.min.? (I (vstd.multiset.impl&%0.count.? V&. V& a! x$1@)) (I (vstd.math.min.?
                (I (vstd.multiset.impl&%0.count.? V&. V& a! x$1@)) (I (vstd.multiset.impl&%0.count.?
                  V&. V& b! x$1@
              ))))
             ) (vstd.math.min.? (I (vstd.multiset.impl&%0.count.? V&. V& a! x$1@)) (I (vstd.multiset.impl&%0.count.?
                V&. V& b! x$1@
           )))))
           (and
            (=>
             %%location_label%%1
             tmp%2
            )
            (=>
             tmp%2
             (=>
              %%location_label%%2
              (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
                 V&. V& a! (vstd.multiset.impl&%0.intersection_with.? V&. V& a! b!)
                ) x$1@
               ) (vstd.math.min.? (I (vstd.multiset.impl&%0.count.? V&. V& a! x$1@)) (I (vstd.multiset.impl&%0.count.?
                  V&. V& b! x$1@
       )))))))))))
       (=>
        (forall ((x$ Poly)) (!
          (=>
           (has_type x$ V&)
           (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
              V&. V& a! (vstd.multiset.impl&%0.intersection_with.? V&. V& a! b!)
             ) x$
            ) (vstd.math.min.? (I (vstd.multiset.impl&%0.count.? V&. V& a! x$)) (I (vstd.multiset.impl&%0.count.?
               V&. V& b! x$
          )))))
          :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
             V&. V& a! (vstd.multiset.impl&%0.intersection_with.? V&. V& a! b!)
            ) x$
          ))
          :qid user_crate__vstd__multiset__lemma_right_pseudo_idempotence_42
          :skolemid skolem_user_crate__vstd__multiset__lemma_right_pseudo_idempotence_42
        ))
        (=>
         %%location_label%%3
         (ext_eq false (TYPE%vstd.multiset.Multiset. V&. V&) (vstd.multiset.impl&%0.intersection_with.?
           V&. V& a! (vstd.multiset.impl&%0.intersection_with.? V&. V& a! b!)
          ) (vstd.multiset.impl&%0.intersection_with.? V&. V& a! b!)
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::multiset::lemma_difference_count
(declare-fun ens%vstd.multiset.lemma_difference_count. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (a! Poly) (b! Poly) (x! Poly)) (!
   (= (ens%vstd.multiset.lemma_difference_count. V&. V& a! b! x!) (= (vstd.multiset.impl&%0.count.?
      V&. V& (vstd.multiset.impl&%0.difference_with.? V&. V& a! b!) x!
     ) (vstd.math.clip.? (I (Sub (vstd.multiset.impl&%0.count.? V&. V& a! x!) (vstd.multiset.impl&%0.count.?
         V&. V& b! x!
   ))))))
   :pattern ((ens%vstd.multiset.lemma_difference_count. V&. V& a! b! x!))
   :qid internal_ens__vstd.multiset.lemma_difference_count._definition
   :skolemid skolem_internal_ens__vstd.multiset.lemma_difference_count._definition
)))

;; Function-Def crate::vstd::multiset::lemma_difference_count
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:586:1: 586:77 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const a! Poly)
 (declare-const b! Poly)
 (declare-const x! Poly)
 (declare-const tmp%1 Bool)
 (declare-const m@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type a! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (has_type b! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (has_type x! V&)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.set.group_set_axioms.)
    (=>
     (fuel_bool fuel%vstd.map.group_map_axioms.)
     (=>
      (fuel_bool fuel%vstd.multiset.group_multiset_axioms.)
      (=>
       (= m@ (vstd.map.impl&%0.new.? V&. V& $ NAT $ (TYPE%fun%1. V&. V& $ BOOL) $ (TYPE%fun%1.
          V&. V& $ NAT
         ) (Poly%fun%1. (mk_fun (%%lambda%%4 V&. V& a!))) (Poly%fun%1. (mk_fun (%%lambda%%6 V&.
            V& a! V&. V& b!
       )))))
       (=>
        (= tmp%1 (ext_eq false (TYPE%vstd.set.Set. V&. V&) (vstd.map.impl&%0.dom.? V&. V& $
           NAT m@
          ) (vstd.multiset.impl&%0.dom.? V&. V& a!)
        ))
        (and
         (=>
          %%location_label%%0
          tmp%1
         )
         (=>
          tmp%1
          (=>
           %%location_label%%1
           (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.difference_with.? V&.
              V& a! b!
             ) x!
            ) (vstd.math.clip.? (I (Sub (vstd.multiset.impl&%0.count.? V&. V& a! x!) (vstd.multiset.impl&%0.count.?
                V&. V& b! x!
 )))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::multiset::lemma_difference_bottoms_out
(declare-fun ens%vstd.multiset.lemma_difference_bottoms_out. (Dcr Type Poly Poly Poly)
 Bool
)
(assert
 (forall ((V&. Dcr) (V& Type) (a! Poly) (b! Poly) (x! Poly)) (!
   (= (ens%vstd.multiset.lemma_difference_bottoms_out. V&. V& a! b! x!) (=>
     (<= (vstd.multiset.impl&%0.count.? V&. V& a! x!) (vstd.multiset.impl&%0.count.? V&.
       V& b! x!
     ))
     (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.difference_with.? V&.
        V& a! b!
       ) x!
      ) 0
   )))
   :pattern ((ens%vstd.multiset.lemma_difference_bottoms_out. V&. V& a! b! x!))
   :qid internal_ens__vstd.multiset.lemma_difference_bottoms_out._definition
   :skolemid skolem_internal_ens__vstd.multiset.lemma_difference_bottoms_out._definition
)))

;; Function-Def crate::vstd::multiset::lemma_difference_bottoms_out
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:599:1: 599:83 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const a! Poly)
 (declare-const b! Poly)
 (declare-const x! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type a! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (has_type b! (TYPE%vstd.multiset.Multiset. V&. V&))
 )
 (assert
  (has_type x! V&)
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.multiset.group_multiset_axioms.)
    (=>
     (ens%vstd.multiset.lemma_difference_count. V&. V& a! b! x!)
     (=>
      %%location_label%%0
      (=>
       (<= (vstd.multiset.impl&%0.count.? V&. V& a! x!) (vstd.multiset.impl&%0.count.? V&.
         V& b! x!
       ))
       (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.difference_with.? V&.
          V& a! b!
         ) x!
        ) 0
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::multiset::lemma_multiset_properties
(declare-fun ens%vstd.multiset.lemma_multiset_properties. (Dcr Type) Bool)
(assert
 (forall ((V&. Dcr) (V& Type)) (!
   (= (ens%vstd.multiset.lemma_multiset_properties. V&. V&) (and
     (forall ((m$ Poly) (v$ Poly) (mult$ Poly)) (!
       (=>
        (and
         (has_type m$ (TYPE%vstd.multiset.Multiset. V&. V&))
         (has_type v$ V&)
         (has_type mult$ NAT)
        )
        (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.update.? V&. V& m$ v$
           mult$
          ) v$
         ) (%I mult$)
       ))
       :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.update.? V&.
          V& m$ v$ mult$
         ) v$
       ))
       :qid user_crate__vstd__multiset__lemma_multiset_properties_43
       :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_43
     ))
     (forall ((m$ Poly) (v1$ Poly) (mult$ Poly) (v2$ Poly)) (!
       (=>
        (and
         (has_type m$ (TYPE%vstd.multiset.Multiset. V&. V&))
         (has_type v1$ V&)
         (has_type mult$ NAT)
         (has_type v2$ V&)
        )
        (=>
         (not (= v1$ v2$))
         (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.update.? V&. V& m$ v1$
            mult$
           ) v2$
          ) (vstd.multiset.impl&%0.count.? V&. V& m$ v2$)
       )))
       :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.update.? V&.
          V& m$ v1$ mult$
         ) v2$
       ))
       :qid user_crate__vstd__multiset__lemma_multiset_properties_44
       :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_44
     ))
     (forall ((m$ Poly)) (!
       (=>
        (has_type m$ (TYPE%vstd.multiset.Multiset. V&. V&))
        (and
         (= (= (vstd.multiset.impl&%0.len.? V&. V& m$) 0) (ext_eq false (TYPE%vstd.multiset.Multiset.
            V&. V&
           ) m$ (vstd.multiset.impl&%0.empty.? V&. V&)
         ))
         (=>
          (> (vstd.multiset.impl&%0.len.? V&. V& m$) 0)
          (exists ((v$ Poly)) (!
            (and
             (has_type v$ V&)
             (< 0 (vstd.multiset.impl&%0.count.? V&. V& m$ v$))
            )
            :pattern ((vstd.multiset.impl&%0.count.? V&. V& m$ v$))
            :qid user_crate__vstd__multiset__lemma_multiset_properties_45
            :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_45
       )))))
       :pattern ((vstd.multiset.impl&%0.len.? V&. V& m$) (vstd.multiset.impl&%0.len.? V&.
         V& m$
       ))
       :qid user_crate__vstd__multiset__lemma_multiset_properties_46
       :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_46
     ))
     (forall ((m$ Poly) (x$ Poly) (y$ Poly)) (!
       (=>
        (and
         (has_type m$ (TYPE%vstd.multiset.Multiset. V&. V&))
         (has_type x$ V&)
         (has_type y$ V&)
        )
        (= (< 0 (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.insert.? V&. V&
            m$ x$
           ) y$
          )
         ) (or
          (= x$ y$)
          (< 0 (vstd.multiset.impl&%0.count.? V&. V& m$ y$))
       )))
       :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.insert.? V&.
          V& m$ x$
         ) y$
       ))
       :qid user_crate__vstd__multiset__lemma_multiset_properties_47
       :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_47
     ))
     (forall ((m$ Poly) (x$ Poly)) (!
       (=>
        (and
         (has_type m$ (TYPE%vstd.multiset.Multiset. V&. V&))
         (has_type x$ V&)
        )
        (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.insert.? V&. V& m$ x$)
          x$
         ) (nClip (Add (vstd.multiset.impl&%0.count.? V&. V& m$ x$) 1))
       ))
       :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.insert.? V&.
          V& m$ x$
         ) x$
       ))
       :qid user_crate__vstd__multiset__lemma_multiset_properties_48
       :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_48
     ))
     (forall ((m$ Poly) (x$ Poly) (y$ Poly)) (!
       (=>
        (and
         (has_type m$ (TYPE%vstd.multiset.Multiset. V&. V&))
         (has_type x$ V&)
         (has_type y$ V&)
        )
        (=>
         (< 0 (vstd.multiset.impl&%0.count.? V&. V& m$ y$))
         (< 0 (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.insert.? V&. V& m$
            x$
           ) y$
       ))))
       :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.insert.? V&.
          V& m$ x$
         ) y$
       ))
       :qid user_crate__vstd__multiset__lemma_multiset_properties_49
       :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_49
     ))
     (forall ((m$ Poly) (x$ Poly) (y$ Poly)) (!
       (=>
        (and
         (has_type m$ (TYPE%vstd.multiset.Multiset. V&. V&))
         (has_type x$ V&)
         (has_type y$ V&)
        )
        (=>
         (not (= x$ y$))
         (= (vstd.multiset.impl&%0.count.? V&. V& m$ y$) (vstd.multiset.impl&%0.count.? V&.
           V& (vstd.multiset.impl&%0.insert.? V&. V& m$ x$) y$
       ))))
       :pattern ((vstd.multiset.impl&%0.count.? V&. V& m$ y$) (vstd.multiset.impl&%0.count.?
         V&. V& (vstd.multiset.impl&%0.insert.? V&. V& m$ x$) y$
       ))
       :qid user_crate__vstd__multiset__lemma_multiset_properties_50
       :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_50
     ))
     (forall ((m$ Poly) (x$ Poly)) (!
       (=>
        (and
         (has_type m$ (TYPE%vstd.multiset.Multiset. V&. V&))
         (has_type x$ V&)
        )
        (= (vstd.multiset.impl&%0.len.? V&. V& (vstd.multiset.impl&%0.insert.? V&. V& m$ x$))
         (nClip (Add (vstd.multiset.impl&%0.len.? V&. V& m$) 1))
       ))
       :pattern ((vstd.multiset.impl&%0.len.? V&. V& (vstd.multiset.impl&%0.insert.? V&. V&
          m$ x$
       )))
       :qid user_crate__vstd__multiset__lemma_multiset_properties_51
       :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_51
     ))
     (forall ((a$ Poly) (b$ Poly) (x$ Poly)) (!
       (=>
        (and
         (has_type a$ (TYPE%vstd.multiset.Multiset. V&. V&))
         (has_type b$ (TYPE%vstd.multiset.Multiset. V&. V&))
         (has_type x$ V&)
        )
        (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
           V&. V& a$ b$
          ) x$
         ) (vstd.math.min.? (I (vstd.multiset.impl&%0.count.? V&. V& a$ x$)) (I (vstd.multiset.impl&%0.count.?
            V&. V& b$ x$
       )))))
       :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
          V&. V& a$ b$
         ) x$
       ))
       :qid user_crate__vstd__multiset__lemma_multiset_properties_52
       :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_52
     ))
     (forall ((a$ Poly) (b$ Poly)) (!
       (=>
        (and
         (has_type a$ (TYPE%vstd.multiset.Multiset. V&. V&))
         (has_type b$ (TYPE%vstd.multiset.Multiset. V&. V&))
        )
        (= (vstd.multiset.impl&%0.intersection_with.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
           V&. V& a$ b$
          ) b$
         ) (vstd.multiset.impl&%0.intersection_with.? V&. V& a$ b$)
       ))
       :pattern ((vstd.multiset.impl&%0.intersection_with.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
          V&. V& a$ b$
         ) b$
       ))
       :qid user_crate__vstd__multiset__lemma_multiset_properties_53
       :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_53
     ))
     (forall ((a$ Poly) (b$ Poly)) (!
       (=>
        (and
         (has_type a$ (TYPE%vstd.multiset.Multiset. V&. V&))
         (has_type b$ (TYPE%vstd.multiset.Multiset. V&. V&))
        )
        (= (vstd.multiset.impl&%0.intersection_with.? V&. V& a$ (vstd.multiset.impl&%0.intersection_with.?
           V&. V& a$ b$
          )
         ) (vstd.multiset.impl&%0.intersection_with.? V&. V& a$ b$)
       ))
       :pattern ((vstd.multiset.impl&%0.intersection_with.? V&. V& a$ (vstd.multiset.impl&%0.intersection_with.?
          V&. V& a$ b$
       )))
       :qid user_crate__vstd__multiset__lemma_multiset_properties_54
       :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_54
     ))
     (forall ((a$ Poly) (b$ Poly) (x$ Poly)) (!
       (=>
        (and
         (has_type a$ (TYPE%vstd.multiset.Multiset. V&. V&))
         (has_type b$ (TYPE%vstd.multiset.Multiset. V&. V&))
         (has_type x$ V&)
        )
        (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.difference_with.? V&.
           V& a$ b$
          ) x$
         ) (vstd.math.clip.? (I (Sub (vstd.multiset.impl&%0.count.? V&. V& a$ x$) (vstd.multiset.impl&%0.count.?
             V&. V& b$ x$
       ))))))
       :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.difference_with.?
          V&. V& a$ b$
         ) x$
       ))
       :qid user_crate__vstd__multiset__lemma_multiset_properties_55
       :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_55
     ))
     (forall ((a$ Poly) (b$ Poly) (x$ Poly)) (!
       (=>
        (and
         (has_type a$ (TYPE%vstd.multiset.Multiset. V&. V&))
         (has_type b$ (TYPE%vstd.multiset.Multiset. V&. V&))
         (has_type x$ V&)
        )
        (=>
         (<= (vstd.multiset.impl&%0.count.? V&. V& a$ x$) (vstd.multiset.impl&%0.count.? V&.
           V& b$ x$
         ))
         (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.difference_with.? V&.
            V& a$ b$
           ) x$
          ) 0
       )))
       :pattern ((vstd.multiset.impl&%0.count.? V&. V& a$ x$) (vstd.multiset.impl&%0.count.?
         V&. V& b$ x$
        ) (vstd.multiset.impl&%0.difference_with.? V&. V& a$ b$)
       )
       :qid user_crate__vstd__multiset__lemma_multiset_properties_56
       :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_56
   ))))
   :pattern ((ens%vstd.multiset.lemma_multiset_properties. V&. V&))
   :qid internal_ens__vstd.multiset.lemma_multiset_properties._definition
   :skolemid skolem_internal_ens__vstd.multiset.lemma_multiset_properties._definition
)))

;; Function-Def crate::vstd::multiset::lemma_multiset_properties
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset.rs:648:1: 648:44 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m@ Poly)
 (declare-const v@ Poly)
 (declare-const mult@ Poly)
 (declare-const m$1@ Poly)
 (declare-const v1@ Poly)
 (declare-const mult$1@ Poly)
 (declare-const v2@ Poly)
 (declare-const a@ Poly)
 (declare-const b@ Poly)
 (declare-const x@ Poly)
 (declare-const a$1@ Poly)
 (declare-const b$1@ Poly)
 (declare-const a$2@ Poly)
 (declare-const b$2@ Poly)
 (declare-const a$3@ Poly)
 (declare-const b$3@ Poly)
 (declare-const x$1@ Poly)
 (assert
  fuel_defaults
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
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
 ;; postcondition not satisfied
 (declare-const %%location_label%%7 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%8 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%9 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%10 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%11 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%12 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%13 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%14 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%15 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%16 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%17 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%18 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%19 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.multiset.group_multiset_axioms.)
    (and
     (=>
      (has_type m@ (TYPE%vstd.multiset.Multiset. V&. V&))
      (=>
       (has_type v@ V&)
       (=>
        (has_type mult@ NAT)
        (=>
         (ens%vstd.multiset.lemma_update_same. V&. V& m@ v@ (%I mult@))
         (=>
          %%location_label%%0
          (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.update.? V&. V& m@ v@
             mult@
            ) v@
           ) (%I mult@)
     ))))))
     (=>
      (forall ((m$ Poly) (v$ Poly) (mult$ Poly)) (!
        (=>
         (and
          (has_type m$ (TYPE%vstd.multiset.Multiset. V&. V&))
          (has_type v$ V&)
          (has_type mult$ NAT)
         )
         (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.update.? V&. V& m$ v$
            mult$
           ) v$
          ) (%I mult$)
        ))
        :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.update.? V&.
           V& m$ v$ mult$
          ) v$
        ))
        :qid user_crate__vstd__multiset__lemma_multiset_properties_71
        :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_71
      ))
      (and
       (=>
        (has_type m$1@ (TYPE%vstd.multiset.Multiset. V&. V&))
        (=>
         (has_type v1@ V&)
         (=>
          (has_type mult$1@ NAT)
          (=>
           (has_type v2@ V&)
           (=>
            (not (= v1@ v2@))
            (and
             (=>
              %%location_label%%1
              (req%vstd.multiset.lemma_update_different. V&. V& m$1@ v1@ (%I mult$1@) v2@)
             )
             (=>
              (ens%vstd.multiset.lemma_update_different. V&. V& m$1@ v1@ (%I mult$1@) v2@)
              (=>
               %%location_label%%2
               (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.update.? V&. V& m$1@
                  v1@ mult$1@
                 ) v2@
                ) (vstd.multiset.impl&%0.count.? V&. V& m$1@ v2@)
       )))))))))
       (=>
        (forall ((m$ Poly) (v1$ Poly) (mult$ Poly) (v2$ Poly)) (!
          (=>
           (and
            (has_type m$ (TYPE%vstd.multiset.Multiset. V&. V&))
            (has_type v1$ V&)
            (has_type mult$ NAT)
            (has_type v2$ V&)
           )
           (=>
            (not (= v1$ v2$))
            (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.update.? V&. V& m$ v1$
               mult$
              ) v2$
             ) (vstd.multiset.impl&%0.count.? V&. V& m$ v2$)
          )))
          :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.update.? V&.
             V& m$ v1$ mult$
            ) v2$
          ))
          :qid user_crate__vstd__multiset__lemma_multiset_properties_72
          :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_72
        ))
        (and
         (=>
          (has_type a@ (TYPE%vstd.multiset.Multiset. V&. V&))
          (=>
           (has_type b@ (TYPE%vstd.multiset.Multiset. V&. V&))
           (=>
            (has_type x@ V&)
            (=>
             (ens%vstd.multiset.lemma_intersection_count. V&. V& a@ b@ x@)
             (=>
              %%location_label%%3
              (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
                 V&. V& a@ b@
                ) x@
               ) (vstd.math.min.? (I (vstd.multiset.impl&%0.count.? V&. V& a@ x@)) (I (vstd.multiset.impl&%0.count.?
                  V&. V& b@ x@
         )))))))))
         (=>
          (forall ((a$ Poly) (b$ Poly) (x$ Poly)) (!
            (=>
             (and
              (has_type a$ (TYPE%vstd.multiset.Multiset. V&. V&))
              (has_type b$ (TYPE%vstd.multiset.Multiset. V&. V&))
              (has_type x$ V&)
             )
             (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
                V&. V& a$ b$
               ) x$
              ) (vstd.math.min.? (I (vstd.multiset.impl&%0.count.? V&. V& a$ x$)) (I (vstd.multiset.impl&%0.count.?
                 V&. V& b$ x$
            )))))
            :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
               V&. V& a$ b$
              ) x$
            ))
            :qid user_crate__vstd__multiset__lemma_multiset_properties_73
            :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_73
          ))
          (and
           (=>
            (has_type a$1@ (TYPE%vstd.multiset.Multiset. V&. V&))
            (=>
             (has_type b$1@ (TYPE%vstd.multiset.Multiset. V&. V&))
             (=>
              (ens%vstd.multiset.lemma_left_pseudo_idempotence. V&. V& a$1@ b$1@)
              (=>
               %%location_label%%4
               (= (vstd.multiset.impl&%0.intersection_with.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
                  V&. V& a$1@ b$1@
                 ) b$1@
                ) (vstd.multiset.impl&%0.intersection_with.? V&. V& a$1@ b$1@)
           )))))
           (=>
            (forall ((a$ Poly) (b$ Poly)) (!
              (=>
               (and
                (has_type a$ (TYPE%vstd.multiset.Multiset. V&. V&))
                (has_type b$ (TYPE%vstd.multiset.Multiset. V&. V&))
               )
               (= (vstd.multiset.impl&%0.intersection_with.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
                  V&. V& a$ b$
                 ) b$
                ) (vstd.multiset.impl&%0.intersection_with.? V&. V& a$ b$)
              ))
              :pattern ((vstd.multiset.impl&%0.intersection_with.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
                 V&. V& a$ b$
                ) b$
              ))
              :qid user_crate__vstd__multiset__lemma_multiset_properties_74
              :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_74
            ))
            (and
             (=>
              (has_type a$2@ (TYPE%vstd.multiset.Multiset. V&. V&))
              (=>
               (has_type b$2@ (TYPE%vstd.multiset.Multiset. V&. V&))
               (=>
                (ens%vstd.multiset.lemma_right_pseudo_idempotence. V&. V& a$2@ b$2@)
                (=>
                 %%location_label%%5
                 (= (vstd.multiset.impl&%0.intersection_with.? V&. V& a$2@ (vstd.multiset.impl&%0.intersection_with.?
                    V&. V& a$2@ b$2@
                   )
                  ) (vstd.multiset.impl&%0.intersection_with.? V&. V& a$2@ b$2@)
             )))))
             (=>
              (forall ((a$ Poly) (b$ Poly)) (!
                (=>
                 (and
                  (has_type a$ (TYPE%vstd.multiset.Multiset. V&. V&))
                  (has_type b$ (TYPE%vstd.multiset.Multiset. V&. V&))
                 )
                 (= (vstd.multiset.impl&%0.intersection_with.? V&. V& a$ (vstd.multiset.impl&%0.intersection_with.?
                    V&. V& a$ b$
                   )
                  ) (vstd.multiset.impl&%0.intersection_with.? V&. V& a$ b$)
                ))
                :pattern ((vstd.multiset.impl&%0.intersection_with.? V&. V& a$ (vstd.multiset.impl&%0.intersection_with.?
                   V&. V& a$ b$
                )))
                :qid user_crate__vstd__multiset__lemma_multiset_properties_75
                :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_75
              ))
              (and
               (=>
                (has_type a$3@ (TYPE%vstd.multiset.Multiset. V&. V&))
                (=>
                 (has_type b$3@ (TYPE%vstd.multiset.Multiset. V&. V&))
                 (=>
                  (has_type x$1@ V&)
                  (=>
                   (ens%vstd.multiset.lemma_difference_count. V&. V& a$3@ b$3@ x$1@)
                   (=>
                    %%location_label%%6
                    (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.difference_with.? V&.
                       V& a$3@ b$3@
                      ) x$1@
                     ) (vstd.math.clip.? (I (Sub (vstd.multiset.impl&%0.count.? V&. V& a$3@ x$1@) (vstd.multiset.impl&%0.count.?
                         V&. V& b$3@ x$1@
               ))))))))))
               (=>
                (forall ((a$ Poly) (b$ Poly) (x$ Poly)) (!
                  (=>
                   (and
                    (has_type a$ (TYPE%vstd.multiset.Multiset. V&. V&))
                    (has_type b$ (TYPE%vstd.multiset.Multiset. V&. V&))
                    (has_type x$ V&)
                   )
                   (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.difference_with.? V&.
                      V& a$ b$
                     ) x$
                    ) (vstd.math.clip.? (I (Sub (vstd.multiset.impl&%0.count.? V&. V& a$ x$) (vstd.multiset.impl&%0.count.?
                        V&. V& b$ x$
                  ))))))
                  :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.difference_with.?
                     V&. V& a$ b$
                    ) x$
                  ))
                  :qid user_crate__vstd__multiset__lemma_multiset_properties_76
                  :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_76
                ))
                (and
                 (=>
                  %%location_label%%7
                  (forall ((m$ Poly) (v$ Poly) (mult$ Poly)) (!
                    (=>
                     (and
                      (has_type m$ (TYPE%vstd.multiset.Multiset. V&. V&))
                      (has_type v$ V&)
                      (has_type mult$ NAT)
                     )
                     (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.update.? V&. V& m$ v$
                        mult$
                       ) v$
                      ) (%I mult$)
                    ))
                    :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.update.? V&.
                       V& m$ v$ mult$
                      ) v$
                    ))
                    :qid user_crate__vstd__multiset__lemma_multiset_properties_57
                    :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_57
                 )))
                 (and
                  (=>
                   %%location_label%%8
                   (forall ((m$ Poly) (v1$ Poly) (mult$ Poly) (v2$ Poly)) (!
                     (=>
                      (and
                       (has_type m$ (TYPE%vstd.multiset.Multiset. V&. V&))
                       (has_type v1$ V&)
                       (has_type mult$ NAT)
                       (has_type v2$ V&)
                      )
                      (=>
                       (not (= v1$ v2$))
                       (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.update.? V&. V& m$ v1$
                          mult$
                         ) v2$
                        ) (vstd.multiset.impl&%0.count.? V&. V& m$ v2$)
                     )))
                     :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.update.? V&.
                        V& m$ v1$ mult$
                       ) v2$
                     ))
                     :qid user_crate__vstd__multiset__lemma_multiset_properties_58
                     :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_58
                  )))
                  (and
                   (=>
                    %%location_label%%9
                    (forall ((m$ Poly)) (!
                      (=>
                       (has_type m$ (TYPE%vstd.multiset.Multiset. V&. V&))
                       (and
                        (= (= (vstd.multiset.impl&%0.len.? V&. V& m$) 0) (ext_eq false (TYPE%vstd.multiset.Multiset.
                           V&. V&
                          ) m$ (vstd.multiset.impl&%0.empty.? V&. V&)
                        ))
                        (=>
                         (> (vstd.multiset.impl&%0.len.? V&. V& m$) 0)
                         (exists ((v$ Poly)) (!
                           (and
                            (has_type v$ V&)
                            (< 0 (vstd.multiset.impl&%0.count.? V&. V& m$ v$))
                           )
                           :pattern ((vstd.multiset.impl&%0.count.? V&. V& m$ v$))
                           :qid user_crate__vstd__multiset__lemma_multiset_properties_59
                           :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_59
                      )))))
                      :pattern ((vstd.multiset.impl&%0.len.? V&. V& m$) (vstd.multiset.impl&%0.len.? V&.
                        V& m$
                      ))
                      :qid user_crate__vstd__multiset__lemma_multiset_properties_60
                      :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_60
                   )))
                   (and
                    (=>
                     %%location_label%%10
                     (forall ((m$ Poly) (x$ Poly) (y$ Poly)) (!
                       (=>
                        (and
                         (has_type m$ (TYPE%vstd.multiset.Multiset. V&. V&))
                         (has_type x$ V&)
                         (has_type y$ V&)
                        )
                        (= (< 0 (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.insert.? V&. V&
                            m$ x$
                           ) y$
                          )
                         ) (or
                          (= x$ y$)
                          (< 0 (vstd.multiset.impl&%0.count.? V&. V& m$ y$))
                       )))
                       :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.insert.? V&.
                          V& m$ x$
                         ) y$
                       ))
                       :qid user_crate__vstd__multiset__lemma_multiset_properties_61
                       :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_61
                    )))
                    (and
                     (=>
                      %%location_label%%11
                      (forall ((m$ Poly) (x$ Poly)) (!
                        (=>
                         (and
                          (has_type m$ (TYPE%vstd.multiset.Multiset. V&. V&))
                          (has_type x$ V&)
                         )
                         (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.insert.? V&. V& m$ x$)
                           x$
                          ) (nClip (Add (vstd.multiset.impl&%0.count.? V&. V& m$ x$) 1))
                        ))
                        :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.insert.? V&.
                           V& m$ x$
                          ) x$
                        ))
                        :qid user_crate__vstd__multiset__lemma_multiset_properties_62
                        :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_62
                     )))
                     (and
                      (=>
                       %%location_label%%12
                       (forall ((m$ Poly) (x$ Poly) (y$ Poly)) (!
                         (=>
                          (and
                           (has_type m$ (TYPE%vstd.multiset.Multiset. V&. V&))
                           (has_type x$ V&)
                           (has_type y$ V&)
                          )
                          (=>
                           (< 0 (vstd.multiset.impl&%0.count.? V&. V& m$ y$))
                           (< 0 (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.insert.? V&. V& m$
                              x$
                             ) y$
                         ))))
                         :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.insert.? V&.
                            V& m$ x$
                           ) y$
                         ))
                         :qid user_crate__vstd__multiset__lemma_multiset_properties_63
                         :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_63
                      )))
                      (and
                       (=>
                        %%location_label%%13
                        (forall ((m$ Poly) (x$ Poly) (y$ Poly)) (!
                          (=>
                           (and
                            (has_type m$ (TYPE%vstd.multiset.Multiset. V&. V&))
                            (has_type x$ V&)
                            (has_type y$ V&)
                           )
                           (=>
                            (not (= x$ y$))
                            (= (vstd.multiset.impl&%0.count.? V&. V& m$ y$) (vstd.multiset.impl&%0.count.? V&.
                              V& (vstd.multiset.impl&%0.insert.? V&. V& m$ x$) y$
                          ))))
                          :pattern ((vstd.multiset.impl&%0.count.? V&. V& m$ y$) (vstd.multiset.impl&%0.count.?
                            V&. V& (vstd.multiset.impl&%0.insert.? V&. V& m$ x$) y$
                          ))
                          :qid user_crate__vstd__multiset__lemma_multiset_properties_64
                          :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_64
                       )))
                       (and
                        (=>
                         %%location_label%%14
                         (forall ((m$ Poly) (x$ Poly)) (!
                           (=>
                            (and
                             (has_type m$ (TYPE%vstd.multiset.Multiset. V&. V&))
                             (has_type x$ V&)
                            )
                            (= (vstd.multiset.impl&%0.len.? V&. V& (vstd.multiset.impl&%0.insert.? V&. V& m$ x$))
                             (nClip (Add (vstd.multiset.impl&%0.len.? V&. V& m$) 1))
                           ))
                           :pattern ((vstd.multiset.impl&%0.len.? V&. V& (vstd.multiset.impl&%0.insert.? V&. V&
                              m$ x$
                           )))
                           :qid user_crate__vstd__multiset__lemma_multiset_properties_65
                           :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_65
                        )))
                        (and
                         (=>
                          %%location_label%%15
                          (forall ((a$ Poly) (b$ Poly) (x$ Poly)) (!
                            (=>
                             (and
                              (has_type a$ (TYPE%vstd.multiset.Multiset. V&. V&))
                              (has_type b$ (TYPE%vstd.multiset.Multiset. V&. V&))
                              (has_type x$ V&)
                             )
                             (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
                                V&. V& a$ b$
                               ) x$
                              ) (vstd.math.min.? (I (vstd.multiset.impl&%0.count.? V&. V& a$ x$)) (I (vstd.multiset.impl&%0.count.?
                                 V&. V& b$ x$
                            )))))
                            :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
                               V&. V& a$ b$
                              ) x$
                            ))
                            :qid user_crate__vstd__multiset__lemma_multiset_properties_66
                            :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_66
                         )))
                         (and
                          (=>
                           %%location_label%%16
                           (forall ((a$ Poly) (b$ Poly)) (!
                             (=>
                              (and
                               (has_type a$ (TYPE%vstd.multiset.Multiset. V&. V&))
                               (has_type b$ (TYPE%vstd.multiset.Multiset. V&. V&))
                              )
                              (= (vstd.multiset.impl&%0.intersection_with.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
                                 V&. V& a$ b$
                                ) b$
                               ) (vstd.multiset.impl&%0.intersection_with.? V&. V& a$ b$)
                             ))
                             :pattern ((vstd.multiset.impl&%0.intersection_with.? V&. V& (vstd.multiset.impl&%0.intersection_with.?
                                V&. V& a$ b$
                               ) b$
                             ))
                             :qid user_crate__vstd__multiset__lemma_multiset_properties_67
                             :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_67
                          )))
                          (and
                           (=>
                            %%location_label%%17
                            (forall ((a$ Poly) (b$ Poly)) (!
                              (=>
                               (and
                                (has_type a$ (TYPE%vstd.multiset.Multiset. V&. V&))
                                (has_type b$ (TYPE%vstd.multiset.Multiset. V&. V&))
                               )
                               (= (vstd.multiset.impl&%0.intersection_with.? V&. V& a$ (vstd.multiset.impl&%0.intersection_with.?
                                  V&. V& a$ b$
                                 )
                                ) (vstd.multiset.impl&%0.intersection_with.? V&. V& a$ b$)
                              ))
                              :pattern ((vstd.multiset.impl&%0.intersection_with.? V&. V& a$ (vstd.multiset.impl&%0.intersection_with.?
                                 V&. V& a$ b$
                              )))
                              :qid user_crate__vstd__multiset__lemma_multiset_properties_68
                              :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_68
                           )))
                           (and
                            (=>
                             %%location_label%%18
                             (forall ((a$ Poly) (b$ Poly) (x$ Poly)) (!
                               (=>
                                (and
                                 (has_type a$ (TYPE%vstd.multiset.Multiset. V&. V&))
                                 (has_type b$ (TYPE%vstd.multiset.Multiset. V&. V&))
                                 (has_type x$ V&)
                                )
                                (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.difference_with.? V&.
                                   V& a$ b$
                                  ) x$
                                 ) (vstd.math.clip.? (I (Sub (vstd.multiset.impl&%0.count.? V&. V& a$ x$) (vstd.multiset.impl&%0.count.?
                                     V&. V& b$ x$
                               ))))))
                               :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.difference_with.?
                                  V&. V& a$ b$
                                 ) x$
                               ))
                               :qid user_crate__vstd__multiset__lemma_multiset_properties_69
                               :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_69
                            )))
                            (=>
                             %%location_label%%19
                             (forall ((a$ Poly) (b$ Poly) (x$ Poly)) (!
                               (=>
                                (and
                                 (has_type a$ (TYPE%vstd.multiset.Multiset. V&. V&))
                                 (has_type b$ (TYPE%vstd.multiset.Multiset. V&. V&))
                                 (has_type x$ V&)
                                )
                                (=>
                                 (<= (vstd.multiset.impl&%0.count.? V&. V& a$ x$) (vstd.multiset.impl&%0.count.? V&.
                                   V& b$ x$
                                 ))
                                 (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.difference_with.? V&.
                                    V& a$ b$
                                   ) x$
                                  ) 0
                               )))
                               :pattern ((vstd.multiset.impl&%0.count.? V&. V& a$ x$) (vstd.multiset.impl&%0.count.?
                                 V&. V& b$ x$
                                ) (vstd.multiset.impl&%0.difference_with.? V&. V& a$ b$)
                               )
                               :qid user_crate__vstd__multiset__lemma_multiset_properties_70
                               :skolemid skolem_user_crate__vstd__multiset__lemma_multiset_properties_70
 ))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
