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

;; MODULE 'module vstd::set_lib'

;; Fuel
(declare-const fuel%vstd.multiset.impl&%0.insert. FuelId)
(declare-const fuel%vstd.seq.impl&%0.spec_add. FuelId)
(declare-const fuel%vstd.set.impl&%0.full. FuelId)
(declare-const fuel%vstd.set.impl&%0.subset_of. FuelId)
(declare-const fuel%vstd.set.impl&%0.spec_add. FuelId)
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
(declare-const fuel%vstd.set_lib.impl&%0.map. FuelId)
(declare-const fuel%vstd.set_lib.impl&%0.fold. FuelId)
(declare-const fuel%vstd.set_lib.impl&%0.to_seq. FuelId)
(declare-const fuel%vstd.set_lib.impl&%0.to_sorted_seq. FuelId)
(declare-const fuel%vstd.set_lib.impl&%0.is_singleton. FuelId)
(declare-const fuel%vstd.set_lib.impl&%0.find_unique_minimal. FuelId)
(declare-const fuel%vstd.set_lib.impl&%0.find_unique_maximal. FuelId)
(declare-const fuel%vstd.set_lib.impl&%0.to_multiset. FuelId)
(declare-const fuel%vstd.set_lib.set_int_range. FuelId)
(declare-const fuel%vstd.set_lib.axiom_is_empty. FuelId)
(declare-const fuel%vstd.set_lib.check_argument_is_set. FuelId)
(declare-const fuel%vstd.relations.injective. FuelId)
(declare-const fuel%vstd.relations.reflexive. FuelId)
(declare-const fuel%vstd.relations.antisymmetric. FuelId)
(declare-const fuel%vstd.relations.strongly_connected. FuelId)
(declare-const fuel%vstd.relations.transitive. FuelId)
(declare-const fuel%vstd.relations.total_ordering. FuelId)
(declare-const fuel%vstd.relations.pre_ordering. FuelId)
(declare-const fuel%vstd.relations.partial_ordering. FuelId)
(declare-const fuel%vstd.relations.is_least. FuelId)
(declare-const fuel%vstd.relations.is_minimal. FuelId)
(declare-const fuel%vstd.relations.is_greatest. FuelId)
(declare-const fuel%vstd.relations.is_maximal. FuelId)
(declare-const fuel%vstd.set.group_set_axioms. FuelId)
(assert
 (distinct fuel%vstd.multiset.impl&%0.insert. fuel%vstd.seq.impl&%0.spec_add. fuel%vstd.set.impl&%0.full.
  fuel%vstd.set.impl&%0.subset_of. fuel%vstd.set.impl&%0.spec_add. fuel%vstd.set.impl&%0.filter.
  fuel%vstd.set.impl&%0.choose. fuel%vstd.set.impl&%0.disjoint. fuel%vstd.set.axiom_set_empty.
  fuel%vstd.set.axiom_set_new. fuel%vstd.set.axiom_set_insert_same. fuel%vstd.set.axiom_set_insert_different.
  fuel%vstd.set.axiom_set_remove_same. fuel%vstd.set.axiom_set_remove_insert. fuel%vstd.set.axiom_set_remove_different.
  fuel%vstd.set.axiom_set_union. fuel%vstd.set.axiom_set_intersect. fuel%vstd.set.axiom_set_difference.
  fuel%vstd.set.axiom_set_complement. fuel%vstd.set.axiom_set_ext_equal. fuel%vstd.set.axiom_set_ext_equal_deep.
  fuel%vstd.set.axiom_set_empty_finite. fuel%vstd.set.axiom_set_insert_finite. fuel%vstd.set.axiom_set_remove_finite.
  fuel%vstd.set.axiom_set_union_finite. fuel%vstd.set.axiom_set_intersect_finite. fuel%vstd.set.axiom_set_difference_finite.
  fuel%vstd.set.axiom_set_choose_finite. fuel%vstd.set.axiom_set_empty_len. fuel%vstd.set.axiom_set_insert_len.
  fuel%vstd.set.axiom_set_remove_len. fuel%vstd.set.axiom_set_contains_len. fuel%vstd.set.axiom_set_choose_len.
  fuel%vstd.set_lib.impl&%0.is_full. fuel%vstd.set_lib.impl&%0.is_empty. fuel%vstd.set_lib.impl&%0.map.
  fuel%vstd.set_lib.impl&%0.fold. fuel%vstd.set_lib.impl&%0.to_seq. fuel%vstd.set_lib.impl&%0.to_sorted_seq.
  fuel%vstd.set_lib.impl&%0.is_singleton. fuel%vstd.set_lib.impl&%0.find_unique_minimal.
  fuel%vstd.set_lib.impl&%0.find_unique_maximal. fuel%vstd.set_lib.impl&%0.to_multiset.
  fuel%vstd.set_lib.set_int_range. fuel%vstd.set_lib.axiom_is_empty. fuel%vstd.set_lib.check_argument_is_set.
  fuel%vstd.relations.injective. fuel%vstd.relations.reflexive. fuel%vstd.relations.antisymmetric.
  fuel%vstd.relations.strongly_connected. fuel%vstd.relations.transitive. fuel%vstd.relations.total_ordering.
  fuel%vstd.relations.pre_ordering. fuel%vstd.relations.partial_ordering. fuel%vstd.relations.is_least.
  fuel%vstd.relations.is_minimal. fuel%vstd.relations.is_greatest. fuel%vstd.relations.is_maximal.
  fuel%vstd.set.group_set_axioms.
))
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
 (fuel_bool_default fuel%vstd.set.group_set_axioms.)
)

;; Datatypes
(declare-sort vstd.set.Set<int.>. 0)
(declare-datatypes ((tuple%0. 0)) (((tuple%0./tuple%0))))
(declare-fun TYPE%fun%1. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%fun%2. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.multiset.Multiset. (Dcr Type) Type)
(declare-fun TYPE%vstd.seq.Seq. (Dcr Type) Type)
(declare-fun TYPE%vstd.set.Set. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%fun%1. (%%Function%%) Poly)
(declare-fun %Poly%fun%1. (Poly) %%Function%%)
(declare-fun Poly%fun%2. (%%Function%%) Poly)
(declare-fun %Poly%fun%2. (Poly) %%Function%%)
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

;; Function-Decl vstd::seq::Seq::len
(declare-fun vstd!seq.Seq.len.? (Dcr Type Poly) Int)

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

;; Function-Decl crate::vstd::set::Set::choose
(declare-fun vstd.set.impl&%0.choose.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::set::Set::is_empty
(declare-fun vstd.set_lib.impl&%0.is_empty.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::multiset::Multiset::add
(declare-fun vstd.multiset.impl&%0.add.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::singleton
(declare-fun vstd.multiset.impl&%0.singleton.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::insert
(declare-fun vstd.multiset.impl&%0.insert.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::empty
(declare-fun vstd.multiset.impl&%0.empty.? (Dcr Type) Poly)

;; Function-Decl vstd::seq::Seq::empty
(declare-fun vstd!seq.Seq.empty.? (Dcr Type) Poly)

;; Function-Decl vstd::seq::Seq::push
(declare-fun vstd!seq.Seq.push.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::seq::Seq::add
(declare-fun vstd!seq.Seq.add.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::set::Set::subset_of
(declare-fun vstd.set.impl&%0.subset_of.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::pervasive::arbitrary
(declare-fun vstd.pervasive.arbitrary.? (Dcr Type) Poly)

;; Function-Decl crate::vstd::set::Set::spec_add
(declare-fun vstd.set.impl&%0.spec_add.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::set_lib::set_int_range
(declare-fun vstd.set_lib.set_int_range.? (Poly Poly) vstd.set.Set<int.>.)

;; Function-Decl crate::vstd::set::Set::disjoint
(declare-fun vstd.set.impl&%0.disjoint.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::set::Set::full
(declare-fun vstd.set.impl&%0.full.? (Dcr Type) Poly)

;; Function-Decl crate::vstd::set::Set::is_full
(declare-fun vstd.set_lib.impl&%0.is_full.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::seq::Seq::spec_add
(declare-fun vstd.seq.impl&%0.spec_add.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::relations::reflexive
(declare-fun vstd.relations.reflexive.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::relations::antisymmetric
(declare-fun vstd.relations.antisymmetric.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::relations::transitive
(declare-fun vstd.relations.transitive.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::relations::strongly_connected
(declare-fun vstd.relations.strongly_connected.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::relations::total_ordering
(declare-fun vstd.relations.total_ordering.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::seq::Seq::sort_by
(declare-fun vstd.seq_lib.impl&%0.sort_by.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::set::Set::filter
(declare-fun vstd.set.impl&%0.filter.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::set::Set::map
(declare-fun vstd.set_lib.impl&%0.map.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::set::Set::fold
(declare-fun vstd.set_lib.impl&%0.fold.? (Dcr Type Dcr Type Poly Poly Poly) Poly)
(declare-fun vstd.set_lib.impl&%0.rec%fold.? (Dcr Type Dcr Type Poly Poly Poly Fuel)
 Poly
)

;; Function-Decl crate::vstd::set::Set::to_seq
(declare-fun vstd.set_lib.impl&%0.to_seq.? (Dcr Type Poly) Poly)
(declare-fun vstd.set_lib.impl&%0.rec%to_seq.? (Dcr Type Poly Fuel) Poly)

;; Function-Decl crate::vstd::set::Set::to_sorted_seq
(declare-fun vstd.set_lib.impl&%0.to_sorted_seq.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::set::Set::is_singleton
(declare-fun vstd.set_lib.impl&%0.is_singleton.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::set::Set::find_unique_minimal
(declare-fun vstd.set_lib.impl&%0.find_unique_minimal.? (Dcr Type Poly Poly) Poly)
(declare-fun vstd.set_lib.impl&%0.rec%find_unique_minimal.? (Dcr Type Poly Poly Fuel)
 Poly
)

;; Function-Decl crate::vstd::set::Set::find_unique_maximal
(declare-fun vstd.set_lib.impl&%0.find_unique_maximal.? (Dcr Type Poly Poly) Poly)
(declare-fun vstd.set_lib.impl&%0.rec%find_unique_maximal.? (Dcr Type Poly Poly Fuel)
 Poly
)

;; Function-Decl crate::vstd::set::Set::to_multiset
(declare-fun vstd.set_lib.impl&%0.to_multiset.? (Dcr Type Poly) Poly)
(declare-fun vstd.set_lib.impl&%0.rec%to_multiset.? (Dcr Type Poly Fuel) Poly)

;; Function-Decl crate::vstd::set_lib::check_argument_is_set
(declare-fun vstd.set_lib.check_argument_is_set.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::relations::injective
(declare-fun vstd.relations.injective.? (Dcr Type Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::relations::pre_ordering
(declare-fun vstd.relations.pre_ordering.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::relations::partial_ordering
(declare-fun vstd.relations.partial_ordering.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::relations::is_least
(declare-fun vstd.relations.is_least.? (Dcr Type Poly Poly Poly) Bool)

;; Function-Decl crate::vstd::relations::is_minimal
(declare-fun vstd.relations.is_minimal.? (Dcr Type Poly Poly Poly) Bool)

;; Function-Decl crate::vstd::relations::is_greatest
(declare-fun vstd.relations.is_greatest.? (Dcr Type Poly Poly Poly) Bool)

;; Function-Decl crate::vstd::relations::is_maximal
(declare-fun vstd.relations.is_maximal.? (Dcr Type Poly Poly Poly) Bool)

;; Function-Axioms vstd::seq::Seq::len
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
    (<= 0 (vstd!seq.Seq.len.? A&. A& self!))
   )
   :pattern ((vstd!seq.Seq.len.? A&. A& self!))
   :qid internal_vstd!seq.Seq.len.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.len.?_pre_post_definition
)))

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

;; Broadcast crate::vstd::set::axiom_set_empty_finite
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_empty_finite.)
  (forall ((A&. Dcr) (A& Type)) (!
    (vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.empty.? A&. A&))
    :pattern ((vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.empty.? A&. A&)))
    :qid user_crate__vstd__set__axiom_set_empty_finite_14
    :skolemid skolem_user_crate__vstd__set__axiom_set_empty_finite_14
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
    :qid user_crate__vstd__set__axiom_set_insert_finite_15
    :skolemid skolem_user_crate__vstd__set__axiom_set_insert_finite_15
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
    :qid user_crate__vstd__set__axiom_set_remove_finite_16
    :skolemid skolem_user_crate__vstd__set__axiom_set_remove_finite_16
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
    :qid user_crate__vstd__set__axiom_set_union_finite_17
    :skolemid skolem_user_crate__vstd__set__axiom_set_union_finite_17
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
    :qid user_crate__vstd__set__axiom_set_intersect_finite_18
    :skolemid skolem_user_crate__vstd__set__axiom_set_intersect_finite_18
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
    :qid user_crate__vstd__set__axiom_set_difference_finite_19
    :skolemid skolem_user_crate__vstd__set__axiom_set_difference_finite_19
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
      :qid user_crate__vstd__set__Set__choose_20
      :skolemid skolem_user_crate__vstd__set__Set__choose_20
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
    :qid user_crate__vstd__set__axiom_set_choose_finite_21
    :skolemid skolem_user_crate__vstd__set__axiom_set_choose_finite_21
))))

;; Broadcast crate::vstd::set::axiom_set_empty_len
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_empty_len.)
  (forall ((A&. Dcr) (A& Type)) (!
    (= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.empty.? A&. A&)) 0)
    :pattern ((vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.empty.? A&. A&)))
    :qid user_crate__vstd__set__axiom_set_empty_len_22
    :skolemid skolem_user_crate__vstd__set__axiom_set_empty_len_22
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
    :qid user_crate__vstd__set__axiom_set_insert_len_23
    :skolemid skolem_user_crate__vstd__set__axiom_set_insert_len_23
))))

;; Function-Specs crate::vstd::set::axiom_set_remove_len
(declare-fun req%vstd.set.axiom_set_remove_len. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
   (= (req%vstd.set.axiom_set_remove_len. A&. A& s! a!) (=>
     %%global_location_label%%0
     (vstd.set.impl&%0.finite.? A&. A& s!)
   ))
   :pattern ((req%vstd.set.axiom_set_remove_len. A&. A& s! a!))
   :qid internal_req__vstd.set.axiom_set_remove_len._definition
   :skolemid skolem_internal_req__vstd.set.axiom_set_remove_len._definition
)))
(declare-fun ens%vstd.set.axiom_set_remove_len. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
   (= (ens%vstd.set.axiom_set_remove_len. A&. A& s! a!) (= (vstd.set.impl&%0.len.? A&.
      A& s!
     ) (Add (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s! a!)) (ite
       (vstd.set.impl&%0.contains.? A&. A& s! a!)
       1
       0
   ))))
   :pattern ((ens%vstd.set.axiom_set_remove_len. A&. A& s! a!))
   :qid internal_ens__vstd.set.axiom_set_remove_len._definition
   :skolemid skolem_internal_ens__vstd.set.axiom_set_remove_len._definition
)))

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
    :qid user_crate__vstd__set__axiom_set_remove_len_24
    :skolemid skolem_user_crate__vstd__set__axiom_set_remove_len_24
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
    :qid user_crate__vstd__set__axiom_set_contains_len_25
    :skolemid skolem_user_crate__vstd__set__axiom_set_contains_len_25
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
    :qid user_crate__vstd__set__axiom_set_choose_len_26
    :skolemid skolem_user_crate__vstd__set__axiom_set_choose_len_26
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

;; Function-Def crate::vstd::set_lib::axiom_is_empty
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:844:1: 844:52 (#0)
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
  (not (vstd.set_lib.impl&%0.is_empty.? A&. A& s!))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::set_lib::axiom_is_empty
(assert
 (=>
  (fuel_bool fuel%vstd.set_lib.axiom_is_empty.)
  (forall ((A&. Dcr) (A& Type) (s! Poly)) (!
    (=>
     (has_type s! (TYPE%vstd.set.Set. A&. A&))
     (=>
      (and
       (vstd.set.impl&%0.finite.? A&. A& s!)
       (not (vstd.set_lib.impl&%0.is_empty.? A&. A& s!))
      )
      (exists ((a$ Poly)) (!
        (and
         (has_type a$ A&)
         (vstd.set.impl&%0.contains.? A&. A& s! a$)
        )
        :pattern ((vstd.set.impl&%0.contains.? A&. A& s! a$))
        :qid user_crate__vstd__set_lib__axiom_is_empty_27
        :skolemid skolem_user_crate__vstd__set_lib__axiom_is_empty_27
    ))))
    :pattern ((vstd.set_lib.impl&%0.is_empty.? A&. A& s!))
    :qid user_crate__vstd__set_lib__axiom_is_empty_28
    :skolemid skolem_user_crate__vstd__set_lib__axiom_is_empty_28
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

;; Function-Axioms vstd::seq::Seq::empty
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (has_type (vstd!seq.Seq.empty.? A&. A&) (TYPE%vstd.seq.Seq. A&. A&))
   :pattern ((vstd!seq.Seq.empty.? A&. A&))
   :qid internal_vstd!seq.Seq.empty.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.empty.?_pre_post_definition
)))

;; Function-Axioms vstd::seq::Seq::push
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (a! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type a! A&)
    )
    (has_type (vstd!seq.Seq.push.? A&. A& self! a!) (TYPE%vstd.seq.Seq. A&. A&))
   )
   :pattern ((vstd!seq.Seq.push.? A&. A& self! a!))
   :qid internal_vstd!seq.Seq.push.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.push.?_pre_post_definition
)))

;; Function-Axioms vstd::seq::Seq::add
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (rhs! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type rhs! (TYPE%vstd.seq.Seq. A&. A&))
    )
    (has_type (vstd!seq.Seq.add.? A&. A& self! rhs!) (TYPE%vstd.seq.Seq. A&. A&))
   )
   :pattern ((vstd!seq.Seq.add.? A&. A& self! rhs!))
   :qid internal_vstd!seq.Seq.add.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.add.?_pre_post_definition
)))

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

;; Function-Axioms crate::vstd::pervasive::arbitrary
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (has_type (vstd.pervasive.arbitrary.? A&. A&) A&)
   :pattern ((vstd.pervasive.arbitrary.? A&. A&))
   :qid internal_vstd.pervasive.arbitrary.?_pre_post_definition
   :skolemid skolem_internal_vstd.pervasive.arbitrary.?_pre_post_definition
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

;; Function-Axioms crate::vstd::set_lib::set_int_range
(assert
 (fuel_bool_default fuel%vstd.set_lib.set_int_range.)
)
(declare-fun %%lambda%%0 (Int Int) %%Function%%)
(assert
 (forall ((%%hole%%0 Int) (%%hole%%1 Int) (i$ Poly)) (!
   (= (%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1) i$) (B (and
      (<= %%hole%%0 (%I i$))
      (< (%I i$) %%hole%%1)
   )))
   :pattern ((%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1) i$))
)))
(assert
 (=>
  (fuel_bool fuel%vstd.set_lib.set_int_range.)
  (forall ((lo! Poly) (hi! Poly)) (!
    (= (vstd.set_lib.set_int_range.? lo! hi!) (%Poly%vstd.set.Set<int.>. (vstd.set.impl&%0.new.?
       $ INT $ (TYPE%fun%1. $ INT $ BOOL) (Poly%fun%1. (mk_fun (%%lambda%%0 (%I lo!) (%I hi!))))
    )))
    :pattern ((vstd.set_lib.set_int_range.? lo! hi!))
    :qid internal_vstd.set_lib.set_int_range.?_definition
    :skolemid skolem_internal_vstd.set_lib.set_int_range.?_definition
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

;; Function-Axioms crate::vstd::seq::Seq::spec_add
(assert
 (fuel_bool_default fuel%vstd.seq.impl&%0.spec_add.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.seq.impl&%0.spec_add.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (rhs! Poly)) (!
    (= (vstd.seq.impl&%0.spec_add.? A&. A& self! rhs!) (vstd!seq.Seq.add.? A&. A& self!
      rhs!
    ))
    :pattern ((vstd.seq.impl&%0.spec_add.? A&. A& self! rhs!))
    :qid internal_vstd.seq.impl&__0.spec_add.?_definition
    :skolemid skolem_internal_vstd.seq.impl&__0.spec_add.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (rhs! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type rhs! (TYPE%vstd.seq.Seq. A&. A&))
    )
    (has_type (vstd.seq.impl&%0.spec_add.? A&. A& self! rhs!) (TYPE%vstd.seq.Seq. A&. A&))
   )
   :pattern ((vstd.seq.impl&%0.spec_add.? A&. A& self! rhs!))
   :qid internal_vstd.seq.impl&__0.spec_add.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq.impl&__0.spec_add.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::relations::reflexive
(assert
 (fuel_bool_default fuel%vstd.relations.reflexive.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.reflexive.)
  (forall ((T&. Dcr) (T& Type) (r! Poly)) (!
    (= (vstd.relations.reflexive.? T&. T& r!) (forall ((x$ Poly)) (!
       (=>
        (has_type x$ T&)
        (%B (%%apply%%1 (%Poly%fun%2. r!) x$ x$))
       )
       :pattern ((%%apply%%1 (%Poly%fun%2. r!) x$ x$))
       :qid user_crate__vstd__relations__reflexive_32
       :skolemid skolem_user_crate__vstd__relations__reflexive_32
    )))
    :pattern ((vstd.relations.reflexive.? T&. T& r!))
    :qid internal_vstd.relations.reflexive.?_definition
    :skolemid skolem_internal_vstd.relations.reflexive.?_definition
))))

;; Function-Axioms crate::vstd::relations::antisymmetric
(assert
 (fuel_bool_default fuel%vstd.relations.antisymmetric.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.antisymmetric.)
  (forall ((T&. Dcr) (T& Type) (r! Poly)) (!
    (= (vstd.relations.antisymmetric.? T&. T& r!) (forall ((x$ Poly) (y$ Poly)) (!
       (=>
        (and
         (has_type x$ T&)
         (has_type y$ T&)
        )
        (=>
         (and
          (%B (%%apply%%1 (%Poly%fun%2. r!) x$ y$))
          (%B (%%apply%%1 (%Poly%fun%2. r!) y$ x$))
         )
         (= x$ y$)
       ))
       :pattern ((%%apply%%1 (%Poly%fun%2. r!) x$ y$) (%%apply%%1 (%Poly%fun%2. r!) y$ x$))
       :qid user_crate__vstd__relations__antisymmetric_33
       :skolemid skolem_user_crate__vstd__relations__antisymmetric_33
    )))
    :pattern ((vstd.relations.antisymmetric.? T&. T& r!))
    :qid internal_vstd.relations.antisymmetric.?_definition
    :skolemid skolem_internal_vstd.relations.antisymmetric.?_definition
))))

;; Function-Axioms crate::vstd::relations::transitive
(assert
 (fuel_bool_default fuel%vstd.relations.transitive.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.transitive.)
  (forall ((T&. Dcr) (T& Type) (r! Poly)) (!
    (= (vstd.relations.transitive.? T&. T& r!) (forall ((x$ Poly) (y$ Poly) (z$ Poly))
      (!
       (=>
        (and
         (has_type x$ T&)
         (has_type y$ T&)
         (has_type z$ T&)
        )
        (=>
         (and
          (%B (%%apply%%1 (%Poly%fun%2. r!) x$ y$))
          (%B (%%apply%%1 (%Poly%fun%2. r!) y$ z$))
         )
         (%B (%%apply%%1 (%Poly%fun%2. r!) x$ z$))
       ))
       :pattern ((%%apply%%1 (%Poly%fun%2. r!) x$ y$) (%%apply%%1 (%Poly%fun%2. r!) y$ z$))
       :qid user_crate__vstd__relations__transitive_34
       :skolemid skolem_user_crate__vstd__relations__transitive_34
    )))
    :pattern ((vstd.relations.transitive.? T&. T& r!))
    :qid internal_vstd.relations.transitive.?_definition
    :skolemid skolem_internal_vstd.relations.transitive.?_definition
))))

;; Function-Axioms crate::vstd::relations::strongly_connected
(assert
 (fuel_bool_default fuel%vstd.relations.strongly_connected.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.strongly_connected.)
  (forall ((T&. Dcr) (T& Type) (r! Poly)) (!
    (= (vstd.relations.strongly_connected.? T&. T& r!) (forall ((x$ Poly) (y$ Poly)) (!
       (=>
        (and
         (has_type x$ T&)
         (has_type y$ T&)
        )
        (or
         (%B (%%apply%%1 (%Poly%fun%2. r!) x$ y$))
         (%B (%%apply%%1 (%Poly%fun%2. r!) y$ x$))
       ))
       :pattern ((%%apply%%1 (%Poly%fun%2. r!) x$ y$) (%%apply%%1 (%Poly%fun%2. r!) y$ x$))
       :qid user_crate__vstd__relations__strongly_connected_35
       :skolemid skolem_user_crate__vstd__relations__strongly_connected_35
    )))
    :pattern ((vstd.relations.strongly_connected.? T&. T& r!))
    :qid internal_vstd.relations.strongly_connected.?_definition
    :skolemid skolem_internal_vstd.relations.strongly_connected.?_definition
))))

;; Function-Axioms crate::vstd::relations::total_ordering
(assert
 (fuel_bool_default fuel%vstd.relations.total_ordering.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.total_ordering.)
  (forall ((T&. Dcr) (T& Type) (r! Poly)) (!
    (= (vstd.relations.total_ordering.? T&. T& r!) (and
      (and
       (and
        (vstd.relations.reflexive.? T&. T& r!)
        (vstd.relations.antisymmetric.? T&. T& r!)
       )
       (vstd.relations.transitive.? T&. T& r!)
      )
      (vstd.relations.strongly_connected.? T&. T& r!)
    ))
    :pattern ((vstd.relations.total_ordering.? T&. T& r!))
    :qid internal_vstd.relations.total_ordering.?_definition
    :skolemid skolem_internal_vstd.relations.total_ordering.?_definition
))))

;; Function-Specs crate::vstd::seq::Seq::sort_by
(declare-fun req%vstd.seq_lib.impl&%0.sort_by. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (leq! Poly)) (!
   (= (req%vstd.seq_lib.impl&%0.sort_by. A&. A& self! leq!) (=>
     %%global_location_label%%1
     (vstd.relations.total_ordering.? A&. A& leq!)
   ))
   :pattern ((req%vstd.seq_lib.impl&%0.sort_by. A&. A& self! leq!))
   :qid internal_req__vstd.seq_lib.impl&__0.sort_by._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.sort_by._definition
)))

;; Function-Axioms crate::vstd::seq::Seq::sort_by
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (leq! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type leq! (TYPE%fun%2. A&. A& A&. A& $ BOOL))
    )
    (has_type (vstd.seq_lib.impl&%0.sort_by.? A&. A& self! leq!) (TYPE%vstd.seq.Seq. A&.
      A&
   )))
   :pattern ((vstd.seq_lib.impl&%0.sort_by.? A&. A& self! leq!))
   :qid internal_vstd.seq_lib.impl&__0.sort_by.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.sort_by.?_pre_post_definition
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

;; Function-Axioms crate::vstd::set::Set::map
(assert
 (fuel_bool_default fuel%vstd.set_lib.impl&%0.map.)
)
(declare-fun %%lambda%%1 (Dcr Type Poly Type Dcr Type Poly %%Function%%) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 Type) (%%hole%%4
    Dcr
   ) (%%hole%%5 Type) (%%hole%%6 Poly) (%%hole%%7 %%Function%%) (a$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
      %%hole%%6 %%hole%%7
     ) a$
    ) (B (exists ((x$ Poly)) (!
       (and
        (has_type x$ %%hole%%3)
        (and
         (vstd.set.impl&%0.contains.? %%hole%%4 %%hole%%5 %%hole%%6 x$)
         (= a$ (%%apply%%0 %%hole%%7 x$))
       ))
       :pattern ((vstd.set.impl&%0.contains.? %%hole%%0 %%hole%%1 %%hole%%2 x$))
       :qid user_crate__vstd__set__Set__map_36
       :skolemid skolem_user_crate__vstd__set__Set__map_36
   ))))
   :pattern ((%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      %%hole%%5 %%hole%%6 %%hole%%7
     ) a$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.set_lib.impl&%0.map.)
  (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (f! Poly)) (!
    (= (vstd.set_lib.impl&%0.map.? A&. A& B&. B& self! f!) (vstd.set.impl&%0.new.? B&.
      B& $ (TYPE%fun%1. B&. B& $ BOOL) (Poly%fun%1. (mk_fun (%%lambda%%1 A&. A& self! A& A&.
         A& self! (%Poly%fun%1. f!)
    )))))
    :pattern ((vstd.set_lib.impl&%0.map.? A&. A& B&. B& self! f!))
    :qid internal_vstd.set_lib.impl&__0.map.?_definition
    :skolemid skolem_internal_vstd.set_lib.impl&__0.map.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (f! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type f! (TYPE%fun%1. A&. A& B&. B&))
    )
    (has_type (vstd.set_lib.impl&%0.map.? A&. A& B&. B& self! f!) (TYPE%vstd.set.Set. B&.
      B&
   )))
   :pattern ((vstd.set_lib.impl&%0.map.? A&. A& B&. B& self! f!))
   :qid internal_vstd.set_lib.impl&__0.map.?_pre_post_definition
   :skolemid skolem_internal_vstd.set_lib.impl&__0.map.?_pre_post_definition
)))

;; Spec-Termination crate::vstd::set::Set::fold
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:38:5: 38:72 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const E&. Dcr)
 (declare-const E& Type)
 (declare-const self! Poly)
 (declare-const init! Poly)
 (declare-const f! Poly)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Poly)
 (declare-const tmp%3 Poly)
 (declare-const a@ Poly)
 (declare-const tmp%4 Poly)
 (declare-const tmp%5 Poly)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type init! E&)
 )
 (assert
  (has_type f! (TYPE%fun%2. E&. E& A&. A& E&. E&))
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= decrease%init0 (vstd.set.impl&%0.len.? A&. A& self!))
    (or
     (and
      (=>
       (vstd.set.impl&%0.finite.? A&. A& self!)
       (or
        (and
         (=>
          (= (vstd.set.impl&%0.len.? A&. A& self!) 0)
          (=>
           (= tmp%4 init!)
           %%switch_label%%1
         ))
         (=>
          (not (= (vstd.set.impl&%0.len.? A&. A& self!) 0))
          (=>
           (= a@ (vstd.set.impl&%0.choose.? A&. A& self!))
           (=>
            (= tmp%2 (vstd.set.impl&%0.remove.? A&. A& self! a@))
            (=>
             (= tmp%3 (%%apply%%1 (%Poly%fun%2. f!) init! a@))
             (and
              (=>
               %%location_label%%0
               (check_decrease_int (let
                 ((self!$0 tmp%2) (init!$1 tmp%3) (f!$2 (%Poly%fun%2. f!)))
                 (vstd.set.impl&%0.len.? A&. A& self!$0)
                ) decrease%init0 false
              ))
              (=>
               (has_type tmp%1 E&)
               (=>
                (= tmp%1 (vstd.set_lib.impl&%0.fold.? A&. A& E&. E& (vstd.set.impl&%0.remove.? A&. A&
                   self! a@
                  ) (%%apply%%1 (%Poly%fun%2. f!) init! a@) f!
                ))
                (=>
                 (= tmp%4 tmp%1)
                 %%switch_label%%1
        )))))))))
        (and
         (not %%switch_label%%1)
         (=>
          (= tmp%5 tmp%4)
          %%switch_label%%0
      ))))
      (=>
       (not (vstd.set.impl&%0.finite.? A&. A& self!))
       (=>
        (= tmp%5 (vstd.pervasive.arbitrary.? E&. E&))
        %%switch_label%%0
     )))
     (not %%switch_label%%0)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Axioms crate::vstd::set::Set::fold
(assert
 (fuel_bool_default fuel%vstd.set_lib.impl&%0.fold.)
)
(declare-const fuel_nat%vstd.set_lib.impl&%0.fold. Fuel)
(assert
 (forall ((A&. Dcr) (A& Type) (E&. Dcr) (E& Type) (self! Poly) (init! Poly) (f! Poly)
   (fuel% Fuel)
  ) (!
   (= (vstd.set_lib.impl&%0.rec%fold.? A&. A& E&. E& self! init! f! fuel%) (vstd.set_lib.impl&%0.rec%fold.?
     A&. A& E&. E& self! init! f! zero
   ))
   :pattern ((vstd.set_lib.impl&%0.rec%fold.? A&. A& E&. E& self! init! f! fuel%))
   :qid internal_vstd.set_lib.impl&__0.fold._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.set_lib.impl&__0.fold._fuel_to_zero_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (E&. Dcr) (E& Type) (self! Poly) (init! Poly) (f! Poly)
   (fuel% Fuel)
  ) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type init! E&)
     (has_type f! (TYPE%fun%2. E&. E& A&. A& E&. E&))
    )
    (= (vstd.set_lib.impl&%0.rec%fold.? A&. A& E&. E& self! init! f! (succ fuel%)) (ite
      (vstd.set.impl&%0.finite.? A&. A& self!)
      (ite
       (= (vstd.set.impl&%0.len.? A&. A& self!) 0)
       init!
       (let
        ((a$ (vstd.set.impl&%0.choose.? A&. A& self!)))
        (vstd.set_lib.impl&%0.rec%fold.? A&. A& E&. E& (vstd.set.impl&%0.remove.? A&. A& self!
          a$
         ) (%%apply%%1 (%Poly%fun%2. f!) init! a$) f! fuel%
      )))
      (vstd.pervasive.arbitrary.? E&. E&)
   )))
   :pattern ((vstd.set_lib.impl&%0.rec%fold.? A&. A& E&. E& self! init! f! (succ fuel%)))
   :qid internal_vstd.set_lib.impl&__0.fold._fuel_to_body_definition
   :skolemid skolem_internal_vstd.set_lib.impl&__0.fold._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.set_lib.impl&%0.fold.)
  (forall ((A&. Dcr) (A& Type) (E&. Dcr) (E& Type) (self! Poly) (init! Poly) (f! Poly))
   (!
    (=>
     (and
      (has_type self! (TYPE%vstd.set.Set. A&. A&))
      (has_type init! E&)
      (has_type f! (TYPE%fun%2. E&. E& A&. A& E&. E&))
     )
     (= (vstd.set_lib.impl&%0.fold.? A&. A& E&. E& self! init! f!) (vstd.set_lib.impl&%0.rec%fold.?
       A&. A& E&. E& self! init! f! (succ fuel_nat%vstd.set_lib.impl&%0.fold.)
    )))
    :pattern ((vstd.set_lib.impl&%0.fold.? A&. A& E&. E& self! init! f!))
    :qid internal_vstd.set_lib.impl&__0.fold.?_definition
    :skolemid skolem_internal_vstd.set_lib.impl&__0.fold.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (E&. Dcr) (E& Type) (self! Poly) (init! Poly) (f! Poly))
  (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type init! E&)
     (has_type f! (TYPE%fun%2. E&. E& A&. A& E&. E&))
    )
    (has_type (vstd.set_lib.impl&%0.fold.? A&. A& E&. E& self! init! f!) E&)
   )
   :pattern ((vstd.set_lib.impl&%0.fold.? A&. A& E&. E& self! init! f!))
   :qid internal_vstd.set_lib.impl&__0.fold.?_pre_post_definition
   :skolemid skolem_internal_vstd.set_lib.impl&__0.fold.?_pre_post_definition
)))

;; Function-Specs crate::vstd::set_lib::lemma_set_union_again1
(declare-fun ens%vstd.set_lib.lemma_set_union_again1. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (a! Poly) (b! Poly)) (!
   (= (ens%vstd.set_lib.lemma_set_union_again1. A&. A& a! b!) (ext_eq false (TYPE%vstd.set.Set.
      A&. A&
     ) (vstd.set.impl&%0.union.? A&. A& (vstd.set.impl&%0.union.? A&. A& a! b!) b!) (vstd.set.impl&%0.union.?
      A&. A& a! b!
   )))
   :pattern ((ens%vstd.set_lib.lemma_set_union_again1. A&. A& a! b!))
   :qid internal_ens__vstd.set_lib.lemma_set_union_again1._definition
   :skolemid skolem_internal_ens__vstd.set_lib.lemma_set_union_again1._definition
)))

;; Function-Def crate::vstd::set_lib::lemma_set_union_again1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:608:1: 608:61 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const a! Poly)
 (declare-const b! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type a! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type b! (TYPE%vstd.set.Set. A&. A&))
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.union.? A&. A& (vstd.set.impl&%0.union.?
       A&. A& a! b!
      ) b!
     ) (vstd.set.impl&%0.union.? A&. A& a! b!)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set_lib::lemma_set_union_again2
(declare-fun ens%vstd.set_lib.lemma_set_union_again2. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (a! Poly) (b! Poly)) (!
   (= (ens%vstd.set_lib.lemma_set_union_again2. A&. A& a! b!) (ext_eq false (TYPE%vstd.set.Set.
      A&. A&
     ) (vstd.set.impl&%0.union.? A&. A& (vstd.set.impl&%0.union.? A&. A& a! b!) a!) (vstd.set.impl&%0.union.?
      A&. A& a! b!
   )))
   :pattern ((ens%vstd.set_lib.lemma_set_union_again2. A&. A& a! b!))
   :qid internal_ens__vstd.set_lib.lemma_set_union_again2._definition
   :skolemid skolem_internal_ens__vstd.set_lib.lemma_set_union_again2._definition
)))

;; Function-Def crate::vstd::set_lib::lemma_set_union_again2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:617:1: 617:61 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const a! Poly)
 (declare-const b! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type a! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type b! (TYPE%vstd.set.Set. A&. A&))
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.union.? A&. A& (vstd.set.impl&%0.union.?
       A&. A& a! b!
      ) a!
     ) (vstd.set.impl&%0.union.? A&. A& a! b!)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set_lib::lemma_set_intersect_again1
(declare-fun ens%vstd.set_lib.lemma_set_intersect_again1. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (a! Poly) (b! Poly)) (!
   (= (ens%vstd.set_lib.lemma_set_intersect_again1. A&. A& a! b!) (ext_eq false (TYPE%vstd.set.Set.
      A&. A&
     ) (vstd.set.impl&%0.intersect.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& a! b!)
      b!
     ) (vstd.set.impl&%0.intersect.? A&. A& a! b!)
   ))
   :pattern ((ens%vstd.set_lib.lemma_set_intersect_again1. A&. A& a! b!))
   :qid internal_ens__vstd.set_lib.lemma_set_intersect_again1._definition
   :skolemid skolem_internal_ens__vstd.set_lib.lemma_set_intersect_again1._definition
)))

;; Function-Def crate::vstd::set_lib::lemma_set_intersect_again1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:626:1: 626:65 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const a! Poly)
 (declare-const b! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type a! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type b! (TYPE%vstd.set.Set. A&. A&))
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.intersect.? A&. A& (vstd.set.impl&%0.intersect.?
       A&. A& a! b!
      ) b!
     ) (vstd.set.impl&%0.intersect.? A&. A& a! b!)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set_lib::lemma_set_intersect_again2
(declare-fun ens%vstd.set_lib.lemma_set_intersect_again2. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (a! Poly) (b! Poly)) (!
   (= (ens%vstd.set_lib.lemma_set_intersect_again2. A&. A& a! b!) (ext_eq false (TYPE%vstd.set.Set.
      A&. A&
     ) (vstd.set.impl&%0.intersect.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& a! b!)
      a!
     ) (vstd.set.impl&%0.intersect.? A&. A& a! b!)
   ))
   :pattern ((ens%vstd.set_lib.lemma_set_intersect_again2. A&. A& a! b!))
   :qid internal_ens__vstd.set_lib.lemma_set_intersect_again2._definition
   :skolemid skolem_internal_ens__vstd.set_lib.lemma_set_intersect_again2._definition
)))

;; Function-Def crate::vstd::set_lib::lemma_set_intersect_again2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:635:1: 635:65 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const a! Poly)
 (declare-const b! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type a! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type b! (TYPE%vstd.set.Set. A&. A&))
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.intersect.? A&. A& (vstd.set.impl&%0.intersect.?
       A&. A& a! b!
      ) a!
     ) (vstd.set.impl&%0.intersect.? A&. A& a! b!)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set_lib::lemma_set_disjoint
(declare-fun ens%vstd.set_lib.lemma_set_disjoint. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (a! Poly) (b! Poly)) (!
   (= (ens%vstd.set_lib.lemma_set_disjoint. A&. A& a! b!) (=>
     (vstd.set.impl&%0.disjoint.? A&. A& a! b!)
     (and
      (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.difference.? A&. A& (vstd.set.impl&%0.union.?
         A&. A& a! b!
        ) a!
       ) b!
      )
      (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.difference.? A&. A& (vstd.set.impl&%0.union.?
         A&. A& a! b!
        ) b!
       ) a!
   ))))
   :pattern ((ens%vstd.set_lib.lemma_set_disjoint. A&. A& a! b!))
   :qid internal_ens__vstd.set_lib.lemma_set_disjoint._definition
   :skolemid skolem_internal_ens__vstd.set_lib.lemma_set_disjoint._definition
)))

;; Function-Def crate::vstd::set_lib::lemma_set_disjoint
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:652:1: 652:57 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const a! Poly)
 (declare-const b! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type a! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type b! (TYPE%vstd.set.Set. A&. A&))
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (=>
     (vstd.set.impl&%0.disjoint.? A&. A& a! b!)
     (and
      (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.difference.? A&. A& (vstd.set.impl&%0.union.?
         A&. A& a! b!
        ) a!
       ) b!
      )
      (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.difference.? A&. A& (vstd.set.impl&%0.union.?
         A&. A& a! b!
        ) b!
       ) a!
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set_lib::lemma_set_empty_equivalency_len
(declare-fun req%vstd.set_lib.lemma_set_empty_equivalency_len. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly)) (!
   (= (req%vstd.set_lib.lemma_set_empty_equivalency_len. A&. A& s!) (=>
     %%global_location_label%%2
     (vstd.set.impl&%0.finite.? A&. A& s!)
   ))
   :pattern ((req%vstd.set_lib.lemma_set_empty_equivalency_len. A&. A& s!))
   :qid internal_req__vstd.set_lib.lemma_set_empty_equivalency_len._definition
   :skolemid skolem_internal_req__vstd.set_lib.lemma_set_empty_equivalency_len._definition
)))
(declare-fun ens%vstd.set_lib.lemma_set_empty_equivalency_len. (Dcr Type Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly)) (!
   (= (ens%vstd.set_lib.lemma_set_empty_equivalency_len. A&. A& s!) (and
     (= (= (vstd.set.impl&%0.len.? A&. A& s!) 0) (= s! (vstd.set.impl&%0.empty.? A&. A&)))
     (=>
      (not (= (vstd.set.impl&%0.len.? A&. A& s!) 0))
      (exists ((x$ Poly)) (!
        (and
         (has_type x$ A&)
         (vstd.set.impl&%0.contains.? A&. A& s! x$)
        )
        :pattern ((vstd.set.impl&%0.contains.? A&. A& s! x$))
        :qid user_crate__vstd__set_lib__lemma_set_empty_equivalency_len_37
        :skolemid skolem_user_crate__vstd__set_lib__lemma_set_empty_equivalency_len_37
   )))))
   :pattern ((ens%vstd.set_lib.lemma_set_empty_equivalency_len. A&. A& s!))
   :qid internal_ens__vstd.set_lib.lemma_set_empty_equivalency_len._definition
   :skolemid skolem_internal_ens__vstd.set_lib.lemma_set_empty_equivalency_len._definition
)))

;; Function-Def crate::vstd::set_lib::lemma_set_empty_equivalency_len
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:663:1: 663:59 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s! Poly)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const a@ Poly)
 (declare-const tmp%5 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (vstd.set.impl&%0.finite.? A&. A& s!)
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 ;; assertion failed
 (declare-const %%location_label%%6 Bool)
 ;; assertion failed
 (declare-const %%location_label%%7 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%8 Bool)
 (assert
  (not (and
    (or
     (and
      (=>
       (= (vstd.set.impl&%0.len.? A&. A& s!) 0)
       (=>
        (= tmp%1 (forall ((a$ Poly)) (!
           (=>
            (has_type a$ A&)
            (not (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.empty.? A&. A&) a$))
           )
           :pattern ((vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.empty.? A&. A&) a$))
           :qid user_crate__vstd__set_lib__lemma_set_empty_equivalency_len_39
           :skolemid skolem_user_crate__vstd__set_lib__lemma_set_empty_equivalency_len_39
        )))
        (and
         (=>
          %%location_label%%0
          tmp%1
         )
         (=>
          tmp%1
          (=>
           (= tmp%2 (= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.empty.? A&. A&)) 0))
           (and
            (=>
             %%location_label%%1
             tmp%2
            )
            (=>
             tmp%2
             (=>
              (= tmp%3 (= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.empty.? A&. A&)) (vstd.set.impl&%0.len.?
                 A&. A& s!
              )))
              (and
               (=>
                %%location_label%%2
                tmp%3
               )
               (=>
                tmp%3
                (=>
                 (= tmp%4 (or
                   (exists ((a$ Poly)) (!
                     (and
                      (has_type a$ A&)
                      (vstd.set.impl&%0.contains.? A&. A& s! a$)
                     )
                     :pattern ((vstd.set.impl&%0.contains.? A&. A& s! a$))
                     :qid user_crate__vstd__set_lib__lemma_set_empty_equivalency_len_40
                     :skolemid skolem_user_crate__vstd__set_lib__lemma_set_empty_equivalency_len_40
                   ))
                   (forall ((a$ Poly)) (!
                     (=>
                      (has_type a$ A&)
                      (not (vstd.set.impl&%0.contains.? A&. A& s! a$))
                     )
                     :pattern ((vstd.set.impl&%0.contains.? A&. A& s! a$))
                     :qid user_crate__vstd__set_lib__lemma_set_empty_equivalency_len_41
                     :skolemid skolem_user_crate__vstd__set_lib__lemma_set_empty_equivalency_len_41
                 ))))
                 (and
                  (=>
                   %%location_label%%3
                   tmp%4
                  )
                  (=>
                   tmp%4
                   (or
                    (and
                     (=>
                      (exists ((a$ Poly)) (!
                        (and
                         (has_type a$ A&)
                         (vstd.set.impl&%0.contains.? A&. A& s! a$)
                        )
                        :pattern ((vstd.set.impl&%0.contains.? A&. A& s! a$))
                        :qid user_crate__vstd__set_lib__lemma_set_empty_equivalency_len_42
                        :skolemid skolem_user_crate__vstd__set_lib__lemma_set_empty_equivalency_len_42
                      ))
                      (=>
                       (= a@ (vstd.set.impl&%0.choose.? A&. A& s!))
                       (and
                        (and
                         (=>
                          %%location_label%%4
                          (req%vstd.set.axiom_set_remove_len. A&. A& s! a@)
                         )
                         (=>
                          (ens%vstd.set.axiom_set_remove_len. A&. A& s! a@)
                          (=>
                           %%location_label%%5
                           (= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s! a@)) (Sub (vstd.set.impl&%0.len.?
                              A&. A& s!
                             ) 1
                        )))))
                        (=>
                         (= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s! a@)) (Sub (vstd.set.impl&%0.len.?
                            A&. A& s!
                           ) 1
                         ))
                         %%switch_label%%1
                     ))))
                     (=>
                      (not (exists ((a$ Poly)) (!
                         (and
                          (has_type a$ A&)
                          (vstd.set.impl&%0.contains.? A&. A& s! a$)
                         )
                         :pattern ((vstd.set.impl&%0.contains.? A&. A& s! a$))
                         :qid user_crate__vstd__set_lib__lemma_set_empty_equivalency_len_42
                         :skolemid skolem_user_crate__vstd__set_lib__lemma_set_empty_equivalency_len_42
                      )))
                      %%switch_label%%1
                    ))
                    (and
                     (not %%switch_label%%1)
                     %%switch_label%%0
      )))))))))))))))
      (=>
       (not (= (vstd.set.impl&%0.len.? A&. A& s!) 0))
       %%switch_label%%0
     ))
     (and
      (not %%switch_label%%0)
      (=>
       %%location_label%%6
       (=>
        (= (vstd.set.impl&%0.len.? A&. A& s!) 0)
        (ext_eq false (TYPE%vstd.set.Set. A&. A&) s! (vstd.set.impl&%0.empty.? A&. A&))
    ))))
    (=>
     (=>
      (= (vstd.set.impl&%0.len.? A&. A& s!) 0)
      (ext_eq false (TYPE%vstd.set.Set. A&. A&) s! (vstd.set.impl&%0.empty.? A&. A&))
     )
     (=>
      (= tmp%5 (=>
        (ext_eq false (TYPE%vstd.set.Set. A&. A&) s! (vstd.set.impl&%0.empty.? A&. A&))
        (= (vstd.set.impl&%0.len.? A&. A& s!) 0)
      ))
      (and
       (=>
        %%location_label%%7
        tmp%5
       )
       (=>
        tmp%5
        (=>
         %%location_label%%8
         (and
          (= (= (vstd.set.impl&%0.len.? A&. A& s!) 0) (= s! (vstd.set.impl&%0.empty.? A&. A&)))
          (=>
           (not (= (vstd.set.impl&%0.len.? A&. A& s!) 0))
           (exists ((x$ Poly)) (!
             (and
              (has_type x$ A&)
              (vstd.set.impl&%0.contains.? A&. A& s! x$)
             )
             :pattern ((vstd.set.impl&%0.contains.? A&. A& s! x$))
             :qid user_crate__vstd__set_lib__lemma_set_empty_equivalency_len_38
             :skolemid skolem_user_crate__vstd__set_lib__lemma_set_empty_equivalency_len_38
 ))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set_lib::lemma_set_disjoint_lens
(declare-fun req%vstd.set_lib.lemma_set_disjoint_lens. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%3 Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (a! Poly) (b! Poly)) (!
   (= (req%vstd.set_lib.lemma_set_disjoint_lens. A&. A& a! b!) (and
     (=>
      %%global_location_label%%3
      (vstd.set.impl&%0.finite.? A&. A& a!)
     )
     (=>
      %%global_location_label%%4
      (vstd.set.impl&%0.finite.? A&. A& b!)
   )))
   :pattern ((req%vstd.set_lib.lemma_set_disjoint_lens. A&. A& a! b!))
   :qid internal_req__vstd.set_lib.lemma_set_disjoint_lens._definition
   :skolemid skolem_internal_req__vstd.set_lib.lemma_set_disjoint_lens._definition
)))
(declare-fun ens%vstd.set_lib.lemma_set_disjoint_lens. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (a! Poly) (b! Poly)) (!
   (= (ens%vstd.set_lib.lemma_set_disjoint_lens. A&. A& a! b!) (=>
     (vstd.set.impl&%0.disjoint.? A&. A& a! b!)
     (= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.union.? A&. A& a! b!)) (nClip (
        Add (vstd.set.impl&%0.len.? A&. A& a!) (vstd.set.impl&%0.len.? A&. A& b!)
   )))))
   :pattern ((ens%vstd.set_lib.lemma_set_disjoint_lens. A&. A& a! b!))
   :qid internal_ens__vstd.set_lib.lemma_set_disjoint_lens._definition
   :skolemid skolem_internal_ens__vstd.set_lib.lemma_set_disjoint_lens._definition
)))

;; Function-Def crate::vstd::set_lib::lemma_set_disjoint_lens
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:689:1: 689:62 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const a! Poly)
 (declare-const b! Poly)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Poly)
 (declare-const x@ Poly)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type a! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type b! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (vstd.set.impl&%0.finite.? A&. A& a!)
 )
 (assert
  (vstd.set.impl&%0.finite.? A&. A& b!)
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%3 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%5 Bool)
 (assert
  (not (=>
    (= decrease%init0 (vstd.set.impl&%0.len.? A&. A& a!))
    (or
     (and
      (=>
       (= (vstd.set.impl&%0.len.? A&. A& a!) 0)
       (and
        (=>
         %%location_label%%0
         (req%vstd.set_lib.lemma_set_empty_equivalency_len. A&. A& a!)
        )
        (=>
         (ens%vstd.set_lib.lemma_set_empty_equivalency_len. A&. A& a!)
         (=>
          (= tmp%1 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.union.? A&. A&
             a! b!
            ) b!
          ))
          (and
           (=>
            %%location_label%%1
            tmp%1
           )
           (=>
            tmp%1
            %%switch_label%%0
      ))))))
      (=>
       (not (= (vstd.set.impl&%0.len.? A&. A& a!) 0))
       (or
        (and
         (=>
          (vstd.set.impl&%0.disjoint.? A&. A& a! b!)
          (=>
           (= x@ (vstd.set.impl&%0.choose.? A&. A& a!))
           (=>
            (= tmp%2 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.union.? A&. A&
               (vstd.set.impl&%0.remove.? A&. A& a! x@) b!
              ) (vstd.set.impl&%0.remove.? A&. A& (vstd.set.impl&%0.union.? A&. A& a! b!) x@)
            ))
            (and
             (=>
              %%location_label%%2
              tmp%2
             )
             (=>
              tmp%2
              (=>
               (= tmp%3 (vstd.set.impl&%0.remove.? A&. A& a! x@))
               (and
                (=>
                 %%location_label%%3
                 (check_decrease_int (let
                   ((a!$0 tmp%3) (b!$1 b!))
                   (vstd.set.impl&%0.len.? A&. A& a!$0)
                  ) decrease%init0 false
                ))
                (and
                 (=>
                  %%location_label%%4
                  (req%vstd.set_lib.lemma_set_disjoint_lens. A&. A& tmp%3 b!)
                 )
                 (=>
                  (ens%vstd.set_lib.lemma_set_disjoint_lens. A&. A& tmp%3 b!)
                  %%switch_label%%1
         )))))))))
         (=>
          (not (vstd.set.impl&%0.disjoint.? A&. A& a! b!))
          %%switch_label%%1
        ))
        (and
         (not %%switch_label%%1)
         %%switch_label%%0
     ))))
     (and
      (not %%switch_label%%0)
      (=>
       %%location_label%%5
       (=>
        (vstd.set.impl&%0.disjoint.? A&. A& a! b!)
        (= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.union.? A&. A& a! b!)) (nClip (
           Add (vstd.set.impl&%0.len.? A&. A& a!) (vstd.set.impl&%0.len.? A&. A& b!)
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set_lib::lemma_set_intersect_union_lens
(declare-fun req%vstd.set_lib.lemma_set_intersect_union_lens. (Dcr Type Poly Poly)
 Bool
)
(declare-const %%global_location_label%%5 Bool)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (a! Poly) (b! Poly)) (!
   (= (req%vstd.set_lib.lemma_set_intersect_union_lens. A&. A& a! b!) (and
     (=>
      %%global_location_label%%5
      (vstd.set.impl&%0.finite.? A&. A& a!)
     )
     (=>
      %%global_location_label%%6
      (vstd.set.impl&%0.finite.? A&. A& b!)
   )))
   :pattern ((req%vstd.set_lib.lemma_set_intersect_union_lens. A&. A& a! b!))
   :qid internal_req__vstd.set_lib.lemma_set_intersect_union_lens._definition
   :skolemid skolem_internal_req__vstd.set_lib.lemma_set_intersect_union_lens._definition
)))
(declare-fun ens%vstd.set_lib.lemma_set_intersect_union_lens. (Dcr Type Poly Poly)
 Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (a! Poly) (b! Poly)) (!
   (= (ens%vstd.set_lib.lemma_set_intersect_union_lens. A&. A& a! b!) (= (nClip (Add (vstd.set.impl&%0.len.?
        A&. A& (vstd.set.impl&%0.union.? A&. A& a! b!)
       ) (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& a! b!))
      )
     ) (nClip (Add (vstd.set.impl&%0.len.? A&. A& a!) (vstd.set.impl&%0.len.? A&. A& b!)))
   ))
   :pattern ((ens%vstd.set_lib.lemma_set_intersect_union_lens. A&. A& a! b!))
   :qid internal_ens__vstd.set_lib.lemma_set_intersect_union_lens._definition
   :skolemid skolem_internal_ens__vstd.set_lib.lemma_set_intersect_union_lens._definition
)))

;; Function-Def crate::vstd::set_lib::lemma_set_intersect_union_lens
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:712:1: 712:69 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const a! Poly)
 (declare-const b! Poly)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Poly)
 (declare-const tmp%5 Bool)
 (declare-const tmp%6 Bool)
 (declare-const tmp%7 Bool)
 (declare-const tmp%8 Bool)
 (declare-const x@ Poly)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type a! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type b! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (vstd.set.impl&%0.finite.? A&. A& a!)
 )
 (assert
  (vstd.set.impl&%0.finite.? A&. A& b!)
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%4 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%5 Bool)
 ;; assertion failed
 (declare-const %%location_label%%6 Bool)
 ;; assertion failed
 (declare-const %%location_label%%7 Bool)
 ;; assertion failed
 (declare-const %%location_label%%8 Bool)
 ;; assertion failed
 (declare-const %%location_label%%9 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%10 Bool)
 (assert
  (not (=>
    (= decrease%init0 (vstd.set.impl&%0.len.? A&. A& a!))
    (or
     (and
      (=>
       (= (vstd.set.impl&%0.len.? A&. A& a!) 0)
       (and
        (=>
         %%location_label%%0
         (req%vstd.set_lib.lemma_set_empty_equivalency_len. A&. A& a!)
        )
        (=>
         (ens%vstd.set_lib.lemma_set_empty_equivalency_len. A&. A& a!)
         (=>
          (= tmp%1 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.union.? A&. A&
             a! b!
            ) b!
          ))
          (and
           (=>
            %%location_label%%1
            tmp%1
           )
           (=>
            tmp%1
            (=>
             (= tmp%2 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.intersect.? A&.
                A& a! b!
               ) (vstd.set.impl&%0.empty.? A&. A&)
             ))
             (and
              (=>
               %%location_label%%2
               tmp%2
              )
              (=>
               tmp%2
               (=>
                (= tmp%3 (= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& a! b!))
                  0
                ))
                (and
                 (=>
                  %%location_label%%3
                  tmp%3
                 )
                 (=>
                  tmp%3
                  %%switch_label%%0
      ))))))))))))
      (=>
       (not (= (vstd.set.impl&%0.len.? A&. A& a!) 0))
       (=>
        (= x@ (vstd.set.impl&%0.choose.? A&. A& a!))
        (=>
         (= tmp%4 (vstd.set.impl&%0.remove.? A&. A& a! x@))
         (and
          (=>
           %%location_label%%4
           (check_decrease_int (let
             ((a!$0 tmp%4) (b!$1 b!))
             (vstd.set.impl&%0.len.? A&. A& a!$0)
            ) decrease%init0 false
          ))
          (and
           (=>
            %%location_label%%5
            (req%vstd.set_lib.lemma_set_intersect_union_lens. A&. A& tmp%4 b!)
           )
           (=>
            (ens%vstd.set_lib.lemma_set_intersect_union_lens. A&. A& tmp%4 b!)
            (or
             (and
              (=>
               (vstd.set.impl&%0.contains.? A&. A& b! x@)
               (=>
                (= tmp%5 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.union.? A&. A&
                   (vstd.set.impl&%0.remove.? A&. A& a! x@) b!
                  ) (vstd.set.impl&%0.union.? A&. A& a! b!)
                ))
                (and
                 (=>
                  %%location_label%%6
                  tmp%5
                 )
                 (=>
                  tmp%5
                  (=>
                   (= tmp%6 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.remove.? A&. A&
                      (vstd.set.impl&%0.intersect.? A&. A& a! b!) x@
                     ) (vstd.set.impl&%0.intersect.? A&. A& (vstd.set.impl&%0.remove.? A&. A& a! x@) b!)
                   ))
                   (and
                    (=>
                     %%location_label%%7
                     tmp%6
                    )
                    (=>
                     tmp%6
                     %%switch_label%%1
              )))))))
              (=>
               (not (vstd.set.impl&%0.contains.? A&. A& b! x@))
               (=>
                (= tmp%7 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.union.? A&. A&
                   (vstd.set.impl&%0.remove.? A&. A& a! x@) b!
                  ) (vstd.set.impl&%0.remove.? A&. A& (vstd.set.impl&%0.union.? A&. A& a! b!) x@)
                ))
                (and
                 (=>
                  %%location_label%%8
                  tmp%7
                 )
                 (=>
                  tmp%7
                  (=>
                   (= tmp%8 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.intersect.? A&.
                      A& (vstd.set.impl&%0.remove.? A&. A& a! x@) b!
                     ) (vstd.set.impl&%0.intersect.? A&. A& a! b!)
                   ))
                   (and
                    (=>
                     %%location_label%%9
                     tmp%8
                    )
                    (=>
                     tmp%8
                     %%switch_label%%1
             ))))))))
             (and
              (not %%switch_label%%1)
              %%switch_label%%0
     )))))))))
     (and
      (not %%switch_label%%0)
      (=>
       %%location_label%%10
       (= (nClip (Add (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.union.? A&. A& a! b!))
          (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& a! b!))
         )
        ) (nClip (Add (vstd.set.impl&%0.len.? A&. A& a!) (vstd.set.impl&%0.len.? A&. A& b!)))
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set_lib::lemma_set_difference_len
(declare-fun req%vstd.set_lib.lemma_set_difference_len. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%7 Bool)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (a! Poly) (b! Poly)) (!
   (= (req%vstd.set_lib.lemma_set_difference_len. A&. A& a! b!) (and
     (=>
      %%global_location_label%%7
      (vstd.set.impl&%0.finite.? A&. A& a!)
     )
     (=>
      %%global_location_label%%8
      (vstd.set.impl&%0.finite.? A&. A& b!)
   )))
   :pattern ((req%vstd.set_lib.lemma_set_difference_len. A&. A& a! b!))
   :qid internal_req__vstd.set_lib.lemma_set_difference_len._definition
   :skolemid skolem_internal_req__vstd.set_lib.lemma_set_difference_len._definition
)))
(declare-fun ens%vstd.set_lib.lemma_set_difference_len. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (a! Poly) (b! Poly)) (!
   (= (ens%vstd.set_lib.lemma_set_difference_len. A&. A& a! b!) (and
     (= (nClip (Add (nClip (Add (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.difference.?
            A&. A& a! b!
           )
          ) (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.difference.? A&. A& b! a!))
         )
        ) (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& a! b!))
       )
      ) (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.union.? A&. A& a! b!))
     )
     (= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.difference.? A&. A& a! b!)) (Sub
       (vstd.set.impl&%0.len.? A&. A& a!) (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.intersect.?
         A&. A& a! b!
   ))))))
   :pattern ((ens%vstd.set_lib.lemma_set_difference_len. A&. A& a! b!))
   :qid internal_ens__vstd.set_lib.lemma_set_difference_len._definition
   :skolemid skolem_internal_ens__vstd.set_lib.lemma_set_difference_len._definition
)))

;; Function-Def crate::vstd::set_lib::lemma_set_difference_len
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:744:1: 744:63 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const a! Poly)
 (declare-const b! Poly)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Poly)
 (declare-const tmp%6 Bool)
 (declare-const tmp%7 Bool)
 (declare-const tmp%8 Bool)
 (declare-const tmp%9 Bool)
 (declare-const tmp%10 Bool)
 (declare-const tmp%11 Bool)
 (declare-const tmp%12 Bool)
 (declare-const tmp%13 Bool)
 (declare-const x@ Poly)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type a! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type b! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (vstd.set.impl&%0.finite.? A&. A& a!)
 )
 (assert
  (vstd.set.impl&%0.finite.? A&. A& b!)
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%5 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%6 Bool)
 ;; assertion failed
 (declare-const %%location_label%%7 Bool)
 ;; assertion failed
 (declare-const %%location_label%%8 Bool)
 ;; assertion failed
 (declare-const %%location_label%%9 Bool)
 ;; assertion failed
 (declare-const %%location_label%%10 Bool)
 ;; assertion failed
 (declare-const %%location_label%%11 Bool)
 ;; assertion failed
 (declare-const %%location_label%%12 Bool)
 ;; assertion failed
 (declare-const %%location_label%%13 Bool)
 ;; assertion failed
 (declare-const %%location_label%%14 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%15 Bool)
 (assert
  (not (=>
    (= decrease%init0 (vstd.set.impl&%0.len.? A&. A& a!))
    (or
     (and
      (=>
       (= (vstd.set.impl&%0.len.? A&. A& a!) 0)
       (and
        (=>
         %%location_label%%0
         (req%vstd.set_lib.lemma_set_empty_equivalency_len. A&. A& a!)
        )
        (=>
         (ens%vstd.set_lib.lemma_set_empty_equivalency_len. A&. A& a!)
         (=>
          (= tmp%1 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.difference.? A&.
             A& a! b!
            ) (vstd.set.impl&%0.empty.? A&. A&)
          ))
          (and
           (=>
            %%location_label%%1
            tmp%1
           )
           (=>
            tmp%1
            (=>
             (= tmp%2 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.difference.? A&.
                A& b! a!
               ) b!
             ))
             (and
              (=>
               %%location_label%%2
               tmp%2
              )
              (=>
               tmp%2
               (=>
                (= tmp%3 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.intersect.? A&.
                   A& a! b!
                  ) (vstd.set.impl&%0.empty.? A&. A&)
                ))
                (and
                 (=>
                  %%location_label%%3
                  tmp%3
                 )
                 (=>
                  tmp%3
                  (=>
                   (= tmp%4 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.union.? A&. A&
                      a! b!
                     ) b!
                   ))
                   (and
                    (=>
                     %%location_label%%4
                     tmp%4
                    )
                    (=>
                     tmp%4
                     %%switch_label%%0
      )))))))))))))))
      (=>
       (not (= (vstd.set.impl&%0.len.? A&. A& a!) 0))
       (=>
        (= x@ (vstd.set.impl&%0.choose.? A&. A& a!))
        (=>
         (= tmp%5 (vstd.set.impl&%0.remove.? A&. A& a! x@))
         (and
          (=>
           %%location_label%%5
           (check_decrease_int (let
             ((a!$0 tmp%5) (b!$1 b!))
             (vstd.set.impl&%0.len.? A&. A& a!$0)
            ) decrease%init0 false
          ))
          (and
           (=>
            %%location_label%%6
            (req%vstd.set_lib.lemma_set_difference_len. A&. A& tmp%5 b!)
           )
           (=>
            (ens%vstd.set_lib.lemma_set_difference_len. A&. A& tmp%5 b!)
            (or
             (and
              (=>
               (vstd.set.impl&%0.contains.? A&. A& b! x@)
               (=>
                (= tmp%6 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.remove.? A&. A&
                   (vstd.set.impl&%0.intersect.? A&. A& a! b!) x@
                  ) (vstd.set.impl&%0.intersect.? A&. A& (vstd.set.impl&%0.remove.? A&. A& a! x@) b!)
                ))
                (and
                 (=>
                  %%location_label%%7
                  tmp%6
                 )
                 (=>
                  tmp%6
                  (=>
                   (= tmp%7 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.difference.? A&.
                      A& (vstd.set.impl&%0.remove.? A&. A& a! x@) b!
                     ) (vstd.set.impl&%0.difference.? A&. A& a! b!)
                   ))
                   (and
                    (=>
                     %%location_label%%8
                     tmp%7
                    )
                    (=>
                     tmp%7
                     (=>
                      (= tmp%8 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.remove.? A&. A&
                         (vstd.set.impl&%0.difference.? A&. A& b! (vstd.set.impl&%0.remove.? A&. A& a! x@))
                         x@
                        ) (vstd.set.impl&%0.difference.? A&. A& b! a!)
                      ))
                      (and
                       (=>
                        %%location_label%%9
                        tmp%8
                       )
                       (=>
                        tmp%8
                        (=>
                         (= tmp%9 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.union.? A&. A&
                            (vstd.set.impl&%0.remove.? A&. A& a! x@) b!
                           ) (vstd.set.impl&%0.union.? A&. A& a! b!)
                         ))
                         (and
                          (=>
                           %%location_label%%10
                           tmp%9
                          )
                          (=>
                           tmp%9
                           %%switch_label%%1
              )))))))))))))
              (=>
               (not (vstd.set.impl&%0.contains.? A&. A& b! x@))
               (=>
                (= tmp%10 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.union.? A&. A&
                   (vstd.set.impl&%0.remove.? A&. A& a! x@) b!
                  ) (vstd.set.impl&%0.remove.? A&. A& (vstd.set.impl&%0.union.? A&. A& a! b!) x@)
                ))
                (and
                 (=>
                  %%location_label%%11
                  tmp%10
                 )
                 (=>
                  tmp%10
                  (=>
                   (= tmp%11 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.difference.? A&.
                      A& (vstd.set.impl&%0.remove.? A&. A& a! x@) b!
                     ) (vstd.set.impl&%0.remove.? A&. A& (vstd.set.impl&%0.difference.? A&. A& a! b!) x@)
                   ))
                   (and
                    (=>
                     %%location_label%%12
                     tmp%11
                    )
                    (=>
                     tmp%11
                     (=>
                      (= tmp%12 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.difference.? A&.
                         A& b! (vstd.set.impl&%0.remove.? A&. A& a! x@)
                        ) (vstd.set.impl&%0.difference.? A&. A& b! a!)
                      ))
                      (and
                       (=>
                        %%location_label%%13
                        tmp%12
                       )
                       (=>
                        tmp%12
                        (=>
                         (= tmp%13 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.intersect.? A&.
                            A& (vstd.set.impl&%0.remove.? A&. A& a! x@) b!
                           ) (vstd.set.impl&%0.intersect.? A&. A& a! b!)
                         ))
                         (and
                          (=>
                           %%location_label%%14
                           tmp%13
                          )
                          (=>
                           tmp%13
                           %%switch_label%%1
             ))))))))))))))
             (and
              (not %%switch_label%%1)
              %%switch_label%%0
     )))))))))
     (and
      (not %%switch_label%%0)
      (=>
       %%location_label%%15
       (and
        (= (nClip (Add (nClip (Add (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.difference.?
               A&. A& a! b!
              )
             ) (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.difference.? A&. A& b! a!))
            )
           ) (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& a! b!))
          )
         ) (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.union.? A&. A& a! b!))
        )
        (= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.difference.? A&. A& a! b!)) (Sub
          (vstd.set.impl&%0.len.? A&. A& a!) (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.intersect.?
            A&. A& a! b!
 )))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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

;; Function-Def crate::vstd::set_lib::lemma_set_properties
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:777:1: 777:39 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const a@ Poly)
 (declare-const b@ Poly)
 (declare-const a$1@ Poly)
 (declare-const b$1@ Poly)
 (declare-const a$2@ Poly)
 (declare-const b$2@ Poly)
 (declare-const a$3@ Poly)
 (declare-const b$3@ Poly)
 (declare-const a$4@ Poly)
 (declare-const b$4@ Poly)
 (declare-const s@ Poly)
 (declare-const tmp%1 Bool)
 (declare-const a$5@ Poly)
 (declare-const b$5@ Poly)
 (declare-const a$6@ Poly)
 (declare-const b$6@ Poly)
 (declare-const a$7@ Poly)
 (declare-const b$7@ Poly)
 (declare-const a$8@ Poly)
 (declare-const b$8@ Poly)
 (assert
  fuel_defaults
 )
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
 ;; precondition not satisfied
 (declare-const %%location_label%%7 Bool)
 ;; assertion failed
 (declare-const %%location_label%%8 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%9 Bool)
 ;; assertion failed
 (declare-const %%location_label%%10 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%11 Bool)
 ;; assertion failed
 (declare-const %%location_label%%12 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%13 Bool)
 ;; assertion failed
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
 ;; postcondition not satisfied
 (declare-const %%location_label%%20 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%21 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%22 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%23 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%24 Bool)
 (assert
  (not (and
    (=>
     (has_type a@ (TYPE%vstd.set.Set. A&. A&))
     (=>
      (has_type b@ (TYPE%vstd.set.Set. A&. A&))
      (=>
       (ens%vstd.set_lib.lemma_set_union_again1. A&. A& a@ b@)
       (=>
        %%location_label%%0
        (= (vstd.set.impl&%0.union.? A&. A& (vstd.set.impl&%0.union.? A&. A& a@ b@) b@) (vstd.set.impl&%0.union.?
          A&. A& a@ b@
    ))))))
    (=>
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
       :qid user_crate__vstd__set_lib__lemma_set_properties_67
       :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_67
     ))
     (and
      (=>
       (has_type a$1@ (TYPE%vstd.set.Set. A&. A&))
       (=>
        (has_type b$1@ (TYPE%vstd.set.Set. A&. A&))
        (=>
         (ens%vstd.set_lib.lemma_set_union_again2. A&. A& a$1@ b$1@)
         (=>
          %%location_label%%1
          (= (vstd.set.impl&%0.union.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$1@ b$1@) a$1@)
           (vstd.set.impl&%0.union.? A&. A& a$1@ b$1@)
      )))))
      (=>
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
         :qid user_crate__vstd__set_lib__lemma_set_properties_68
         :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_68
       ))
       (and
        (=>
         (has_type a$2@ (TYPE%vstd.set.Set. A&. A&))
         (=>
          (has_type b$2@ (TYPE%vstd.set.Set. A&. A&))
          (=>
           (ens%vstd.set_lib.lemma_set_intersect_again1. A&. A& a$2@ b$2@)
           (=>
            %%location_label%%2
            (= (vstd.set.impl&%0.intersect.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& a$2@ b$2@)
              b$2@
             ) (vstd.set.impl&%0.intersect.? A&. A& a$2@ b$2@)
        )))))
        (=>
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
           :qid user_crate__vstd__set_lib__lemma_set_properties_69
           :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_69
         ))
         (and
          (=>
           (has_type a$3@ (TYPE%vstd.set.Set. A&. A&))
           (=>
            (has_type b$3@ (TYPE%vstd.set.Set. A&. A&))
            (=>
             (ens%vstd.set_lib.lemma_set_intersect_again2. A&. A& a$3@ b$3@)
             (=>
              %%location_label%%3
              (= (vstd.set.impl&%0.intersect.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& a$3@ b$3@)
                a$3@
               ) (vstd.set.impl&%0.intersect.? A&. A& a$3@ b$3@)
          )))))
          (=>
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
             :qid user_crate__vstd__set_lib__lemma_set_properties_70
             :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_70
           ))
           (and
            (=>
             (has_type a$4@ (TYPE%vstd.set.Set. A&. A&))
             (=>
              (has_type b$4@ (TYPE%vstd.set.Set. A&. A&))
              (=>
               (vstd.set.impl&%0.disjoint.? A&. A& a$4@ b$4@)
               (=>
                (ens%vstd.set_lib.lemma_set_disjoint. A&. A& a$4@ b$4@)
                (=>
                 %%location_label%%4
                 (and
                  (= (vstd.set.impl&%0.difference.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$4@ b$4@)
                    a$4@
                   ) b$4@
                  )
                  (= (vstd.set.impl&%0.difference.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$4@ b$4@)
                    b$4@
                   ) a$4@
            )))))))
            (=>
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
               :qid user_crate__vstd__set_lib__lemma_set_properties_71
               :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_71
             ))
             (and
              (=>
               (has_type s@ (TYPE%vstd.set.Set. A&. A&))
               (=>
                (and
                 (not (= (vstd.set.impl&%0.len.? A&. A& s@) 0))
                 (vstd.set.impl&%0.finite.? A&. A& s@)
                )
                (=>
                 (= tmp%1 (vstd.set.impl&%0.contains.? A&. A& s@ (vstd.set.impl&%0.choose.? A&. A& s@)))
                 (and
                  (=>
                   %%location_label%%5
                   tmp%1
                  )
                  (=>
                   tmp%1
                   (=>
                    %%location_label%%6
                    (exists ((a$ Poly)) (!
                      (and
                       (has_type a$ A&)
                       (vstd.set.impl&%0.contains.? A&. A& s@ a$)
                      )
                      :pattern ((vstd.set.impl&%0.contains.? A&. A& s@ a$))
                      :qid user_crate__vstd__set_lib__lemma_set_properties_72
                      :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_72
              ))))))))
              (=>
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
                     :qid user_crate__vstd__set_lib__lemma_set_properties_73
                     :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_73
                 ))))
                 :pattern ((vstd.set.impl&%0.len.? A&. A& s$))
                 :qid user_crate__vstd__set_lib__lemma_set_properties_74
                 :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_74
               ))
               (and
                (=>
                 (has_type a$5@ (TYPE%vstd.set.Set. A&. A&))
                 (=>
                  (has_type b$5@ (TYPE%vstd.set.Set. A&. A&))
                  (=>
                   (and
                    (and
                     (vstd.set.impl&%0.disjoint.? A&. A& a$5@ b$5@)
                     (vstd.set.impl&%0.finite.? A&. A& b$5@)
                    )
                    (vstd.set.impl&%0.finite.? A&. A& a$5@)
                   )
                   (and
                    (=>
                     %%location_label%%7
                     (req%vstd.set_lib.lemma_set_disjoint_lens. A&. A& a$5@ b$5@)
                    )
                    (=>
                     (ens%vstd.set_lib.lemma_set_disjoint_lens. A&. A& a$5@ b$5@)
                     (=>
                      %%location_label%%8
                      (= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$5@ b$5@)) (nClip
                        (Add (vstd.set.impl&%0.len.? A&. A& a$5@) (vstd.set.impl&%0.len.? A&. A& b$5@))
                ))))))))
                (=>
                 (forall ((a$ Poly) (b$ Poly)) (!
                   (=>
                    (and
                     (has_type a$ (TYPE%vstd.set.Set. A&. A&))
                     (has_type b$ (TYPE%vstd.set.Set. A&. A&))
                    )
                    (=>
                     (and
                      (and
                       (vstd.set.impl&%0.disjoint.? A&. A& a$ b$)
                       (vstd.set.impl&%0.finite.? A&. A& b$)
                      )
                      (vstd.set.impl&%0.finite.? A&. A& a$)
                     )
                     (= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$ b$)) (nClip (
                        Add (vstd.set.impl&%0.len.? A&. A& a$) (vstd.set.impl&%0.len.? A&. A& b$)
                   )))))
                   :pattern ((vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$ b$)))
                   :qid user_crate__vstd__set_lib__lemma_set_properties_75
                   :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_75
                 ))
                 (and
                  (=>
                   (has_type a$6@ (TYPE%vstd.set.Set. A&. A&))
                   (=>
                    (has_type b$6@ (TYPE%vstd.set.Set. A&. A&))
                    (=>
                     (and
                      (vstd.set.impl&%0.finite.? A&. A& a$6@)
                      (vstd.set.impl&%0.finite.? A&. A& b$6@)
                     )
                     (and
                      (=>
                       %%location_label%%9
                       (req%vstd.set_lib.lemma_set_intersect_union_lens. A&. A& a$6@ b$6@)
                      )
                      (=>
                       (ens%vstd.set_lib.lemma_set_intersect_union_lens. A&. A& a$6@ b$6@)
                       (=>
                        %%location_label%%10
                        (= (nClip (Add (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$6@ b$6@))
                           (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& a$6@ b$6@))
                          )
                         ) (nClip (Add (vstd.set.impl&%0.len.? A&. A& a$6@) (vstd.set.impl&%0.len.? A&. A& b$6@)))
                  )))))))
                  (=>
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
                     :qid user_crate__vstd__set_lib__lemma_set_properties_76
                     :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_76
                   ))
                   (and
                    (=>
                     (has_type a$7@ (TYPE%vstd.set.Set. A&. A&))
                     (=>
                      (has_type b$7@ (TYPE%vstd.set.Set. A&. A&))
                      (=>
                       (and
                        (vstd.set.impl&%0.finite.? A&. A& a$7@)
                        (vstd.set.impl&%0.finite.? A&. A& b$7@)
                       )
                       (and
                        (=>
                         %%location_label%%11
                         (req%vstd.set_lib.lemma_set_difference_len. A&. A& a$7@ b$7@)
                        )
                        (=>
                         (ens%vstd.set_lib.lemma_set_difference_len. A&. A& a$7@ b$7@)
                         (=>
                          %%location_label%%12
                          (= (nClip (Add (nClip (Add (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.difference.?
                                 A&. A& a$7@ b$7@
                                )
                               ) (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.difference.? A&. A& b$7@ a$7@))
                              )
                             ) (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& a$7@ b$7@))
                            )
                           ) (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$7@ b$7@))
                    )))))))
                    (=>
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
                         (= (nClip (Add (nClip (Add (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.difference.?
                                A&. A& a$ b$
                               )
                              ) (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.difference.? A&. A& b$ a$))
                             )
                            ) (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& a$ b$))
                           )
                          ) (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$ b$))
                       )))
                       :pattern ((vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.difference.? A&. A& a$ b$)))
                       :qid user_crate__vstd__set_lib__lemma_set_properties_77
                       :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_77
                     ))
                     (and
                      (=>
                       (has_type a$8@ (TYPE%vstd.set.Set. A&. A&))
                       (=>
                        (has_type b$8@ (TYPE%vstd.set.Set. A&. A&))
                        (=>
                         (and
                          (vstd.set.impl&%0.finite.? A&. A& a$8@)
                          (vstd.set.impl&%0.finite.? A&. A& b$8@)
                         )
                         (and
                          (=>
                           %%location_label%%13
                           (req%vstd.set_lib.lemma_set_difference_len. A&. A& a$8@ b$8@)
                          )
                          (=>
                           (ens%vstd.set_lib.lemma_set_difference_len. A&. A& a$8@ b$8@)
                           (=>
                            %%location_label%%14
                            (= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.difference.? A&. A& a$8@ b$8@))
                             (Sub (vstd.set.impl&%0.len.? A&. A& a$8@) (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.intersect.?
                                A&. A& a$8@ b$8@
                      ))))))))))
                      (=>
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
                           (= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.difference.? A&. A& a$ b$)) (Sub
                             (vstd.set.impl&%0.len.? A&. A& a$) (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.intersect.?
                               A&. A& a$ b$
                         ))))))
                         :pattern ((vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.difference.? A&. A& a$ b$)))
                         :qid user_crate__vstd__set_lib__lemma_set_properties_78
                         :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_78
                       ))
                       (and
                        (=>
                         %%location_label%%15
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
                           :qid user_crate__vstd__set_lib__lemma_set_properties_56
                           :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_56
                        )))
                        (and
                         (=>
                          %%location_label%%16
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
                            :qid user_crate__vstd__set_lib__lemma_set_properties_57
                            :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_57
                         )))
                         (and
                          (=>
                           %%location_label%%17
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
                             :qid user_crate__vstd__set_lib__lemma_set_properties_58
                             :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_58
                          )))
                          (and
                           (=>
                            %%location_label%%18
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
                              :qid user_crate__vstd__set_lib__lemma_set_properties_59
                              :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_59
                           )))
                           (and
                            (=>
                             %%location_label%%19
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
                               :qid user_crate__vstd__set_lib__lemma_set_properties_60
                               :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_60
                            )))
                            (and
                             (=>
                              %%location_label%%20
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
                                :qid user_crate__vstd__set_lib__lemma_set_properties_61
                                :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_61
                             )))
                             (and
                              (=>
                               %%location_label%%21
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
                                     :qid user_crate__vstd__set_lib__lemma_set_properties_62
                                     :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_62
                                 ))))
                                 :pattern ((vstd.set.impl&%0.len.? A&. A& s$))
                                 :qid user_crate__vstd__set_lib__lemma_set_properties_63
                                 :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_63
                              )))
                              (and
                               (=>
                                %%location_label%%22
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
                                  :qid user_crate__vstd__set_lib__lemma_set_properties_64
                                  :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_64
                               )))
                               (and
                                (=>
                                 %%location_label%%23
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
                                   :qid user_crate__vstd__set_lib__lemma_set_properties_65
                                   :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_65
                                )))
                                (=>
                                 %%location_label%%24
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
                                   :qid user_crate__vstd__set_lib__lemma_set_properties_66
                                   :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_66
 ))))))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set::Set::to_seq
(declare-fun req%vstd.set_lib.impl&%0.to_seq. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%9 Bool)
(declare-const %%global_location_label%%10 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (req%vstd.set_lib.impl&%0.to_seq. A&. A& self!) (and
     (=>
      %%global_location_label%%9
      (vstd.set.impl&%0.finite.? A&. A& self!)
     )
     (=>
      %%global_location_label%%10
      (vstd.set.impl&%0.finite.? A&. A& self!)
   )))
   :pattern ((req%vstd.set_lib.impl&%0.to_seq. A&. A& self!))
   :qid internal_req__vstd.set_lib.impl&__0.to_seq._definition
   :skolemid skolem_internal_req__vstd.set_lib.impl&__0.to_seq._definition
)))

;; Spec-Termination crate::vstd::set::Set::to_seq
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:54:5: 54:44 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const self! Poly)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Poly)
 (declare-const x@ Poly)
 (declare-const tmp%3 Poly)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Bool)
 (declare-const x$1@ Poly)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.set.Set. A&. A&))
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (= decrease%init0 (vstd.set.impl&%0.len.? A&. A& self!))
    (=>
     (vstd.set.impl&%0.finite.? A&. A& self!)
     (=>
      (ens%vstd.set_lib.lemma_set_properties. A&. A&)
      (or
       (and
        (=>
         (> (vstd.set.impl&%0.len.? A&. A& self!) 0)
         (=>
          (= x$1@ (vstd.set.impl&%0.choose.? A&. A& self!))
          (=>
           (= tmp%4 (vstd.set.impl&%0.contains.? A&. A& self! x$1@))
           (and
            (=>
             %%location_label%%0
             tmp%4
            )
            (=>
             tmp%4
             (=>
              (= tmp%5 (< (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.remove.? A&. A& self! x$1@))
                (vstd.set.impl&%0.len.? A&. A& self!)
              ))
              (and
               (=>
                %%location_label%%1
                tmp%5
               )
               (=>
                tmp%5
                %%switch_label%%1
        ))))))))
        (=>
         (not (> (vstd.set.impl&%0.len.? A&. A& self!) 0))
         %%switch_label%%1
       ))
       (and
        (not %%switch_label%%1)
        (or
         (and
          (=>
           (= (vstd.set.impl&%0.len.? A&. A& self!) 0)
           (=>
            (= tmp%3 (vstd!seq.Seq.empty.? A&. A&))
            %%switch_label%%0
          ))
          (=>
           (not (= (vstd.set.impl&%0.len.? A&. A& self!) 0))
           (=>
            (= x@ (vstd.set.impl&%0.choose.? A&. A& self!))
            (=>
             (= tmp%2 (vstd.set.impl&%0.remove.? A&. A& self! x@))
             (and
              (=>
               %%location_label%%2
               (check_decrease_int (let
                 ((self!$0 tmp%2))
                 (vstd.set.impl&%0.len.? A&. A& self!$0)
                ) decrease%init0 false
              ))
              (=>
               (has_type tmp%1 (TYPE%vstd.seq.Seq. A&. A&))
               (=>
                (= tmp%1 (vstd.set_lib.impl&%0.to_seq.? A&. A& (vstd.set.impl&%0.remove.? A&. A& self!
                   x@
                )))
                (=>
                 (= tmp%3 (vstd!seq.Seq.add.? A&. A& (vstd!seq.Seq.push.? A&. A& (vstd!seq.Seq.empty.?
                     A&. A&
                    ) x@
                   ) tmp%1
                 ))
                 %%switch_label%%0
         ))))))))
         (not %%switch_label%%0)
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Axioms crate::vstd::set::Set::to_seq
(assert
 (fuel_bool_default fuel%vstd.set_lib.impl&%0.to_seq.)
)
(declare-const fuel_nat%vstd.set_lib.impl&%0.to_seq. Fuel)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (fuel% Fuel)) (!
   (= (vstd.set_lib.impl&%0.rec%to_seq.? A&. A& self! fuel%) (vstd.set_lib.impl&%0.rec%to_seq.?
     A&. A& self! zero
   ))
   :pattern ((vstd.set_lib.impl&%0.rec%to_seq.? A&. A& self! fuel%))
   :qid internal_vstd.set_lib.impl&__0.to_seq._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.set_lib.impl&__0.to_seq._fuel_to_zero_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (fuel% Fuel)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (vstd.set.impl&%0.finite.? A&. A& self!)
    )
    (= (vstd.set_lib.impl&%0.rec%to_seq.? A&. A& self! (succ fuel%)) (ite
      (= (vstd.set.impl&%0.len.? A&. A& self!) 0)
      (vstd!seq.Seq.empty.? A&. A&)
      (let
       ((x$ (vstd.set.impl&%0.choose.? A&. A& self!)))
       (vstd!seq.Seq.add.? A&. A& (vstd!seq.Seq.push.? A&. A& (vstd!seq.Seq.empty.? A&. A&)
         x$
        ) (vstd.set_lib.impl&%0.rec%to_seq.? A&. A& (vstd.set.impl&%0.remove.? A&. A& self!
          x$
         ) fuel%
   ))))))
   :pattern ((vstd.set_lib.impl&%0.rec%to_seq.? A&. A& self! (succ fuel%)))
   :qid internal_vstd.set_lib.impl&__0.to_seq._fuel_to_body_definition
   :skolemid skolem_internal_vstd.set_lib.impl&__0.to_seq._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.set_lib.impl&%0.to_seq.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (=>
     (and
      (has_type self! (TYPE%vstd.set.Set. A&. A&))
      (vstd.set.impl&%0.finite.? A&. A& self!)
     )
     (= (vstd.set_lib.impl&%0.to_seq.? A&. A& self!) (vstd.set_lib.impl&%0.rec%to_seq.?
       A&. A& self! (succ fuel_nat%vstd.set_lib.impl&%0.to_seq.)
    )))
    :pattern ((vstd.set_lib.impl&%0.to_seq.? A&. A& self!))
    :qid internal_vstd.set_lib.impl&__0.to_seq.?_definition
    :skolemid skolem_internal_vstd.set_lib.impl&__0.to_seq.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.set.Set. A&. A&))
    (has_type (vstd.set_lib.impl&%0.to_seq.? A&. A& self!) (TYPE%vstd.seq.Seq. A&. A&))
   )
   :pattern ((vstd.set_lib.impl&%0.to_seq.? A&. A& self!))
   :qid internal_vstd.set_lib.impl&__0.to_seq.?_pre_post_definition
   :skolemid skolem_internal_vstd.set_lib.impl&__0.to_seq.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::set::Set::to_sorted_seq
(assert
 (fuel_bool_default fuel%vstd.set_lib.impl&%0.to_sorted_seq.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.set_lib.impl&%0.to_sorted_seq.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (leq! Poly)) (!
    (= (vstd.set_lib.impl&%0.to_sorted_seq.? A&. A& self! leq!) (vstd.seq_lib.impl&%0.sort_by.?
      A&. A& (vstd.set_lib.impl&%0.to_seq.? A&. A& self!) leq!
    ))
    :pattern ((vstd.set_lib.impl&%0.to_sorted_seq.? A&. A& self! leq!))
    :qid internal_vstd.set_lib.impl&__0.to_sorted_seq.?_definition
    :skolemid skolem_internal_vstd.set_lib.impl&__0.to_sorted_seq.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (leq! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type leq! (TYPE%fun%2. A&. A& A&. A& $ BOOL))
    )
    (has_type (vstd.set_lib.impl&%0.to_sorted_seq.? A&. A& self! leq!) (TYPE%vstd.seq.Seq.
      A&. A&
   )))
   :pattern ((vstd.set_lib.impl&%0.to_sorted_seq.? A&. A& self! leq!))
   :qid internal_vstd.set_lib.impl&__0.to_sorted_seq.?_pre_post_definition
   :skolemid skolem_internal_vstd.set_lib.impl&__0.to_sorted_seq.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::set::Set::is_singleton
(assert
 (fuel_bool_default fuel%vstd.set_lib.impl&%0.is_singleton.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.set_lib.impl&%0.is_singleton.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (= (vstd.set_lib.impl&%0.is_singleton.? A&. A& self!) (and
      (> (vstd.set.impl&%0.len.? A&. A& self!) 0)
      (forall ((x$ Poly) (y$ Poly)) (!
        (=>
         (and
          (has_type x$ A&)
          (has_type y$ A&)
         )
         (=>
          (and
           (vstd.set.impl&%0.contains.? A&. A& self! x$)
           (vstd.set.impl&%0.contains.? A&. A& self! y$)
          )
          (= x$ y$)
        ))
        :pattern ((vstd.set.impl&%0.contains.? A&. A& self! x$) (vstd.set.impl&%0.contains.?
          A&. A& self! y$
        ))
        :qid user_crate__vstd__set__Set__is_singleton_79
        :skolemid skolem_user_crate__vstd__set__Set__is_singleton_79
    ))))
    :pattern ((vstd.set_lib.impl&%0.is_singleton.? A&. A& self!))
    :qid internal_vstd.set_lib.impl&__0.is_singleton.?_definition
    :skolemid skolem_internal_vstd.set_lib.impl&__0.is_singleton.?_definition
))))

;; Function-Specs crate::vstd::set::Set::find_unique_minimal
(declare-fun req%vstd.set_lib.impl&%0.find_unique_minimal. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%11 Bool)
(declare-const %%global_location_label%%12 Bool)
(declare-const %%global_location_label%%13 Bool)
(declare-const %%global_location_label%%14 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! Poly)) (!
   (= (req%vstd.set_lib.impl&%0.find_unique_minimal. A&. A& self! r!) (and
     (=>
      %%global_location_label%%11
      (vstd.relations.total_ordering.? A&. A& r!)
     )
     (=>
      %%global_location_label%%12
      (> (vstd.set.impl&%0.len.? A&. A& self!) 0)
     )
     (=>
      %%global_location_label%%13
      (vstd.set.impl&%0.finite.? A&. A& self!)
     )
     (=>
      %%global_location_label%%14
      (vstd.set.impl&%0.finite.? A&. A& self!)
   )))
   :pattern ((req%vstd.set_lib.impl&%0.find_unique_minimal. A&. A& self! r!))
   :qid internal_req__vstd.set_lib.impl&__0.find_unique_minimal._definition
   :skolemid skolem_internal_req__vstd.set_lib.impl&__0.find_unique_minimal._definition
)))

;; Spec-Termination crate::vstd::set::Set::find_unique_minimal
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:93:5: 93:80 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const self! Poly)
 (declare-const r! Poly)
 (declare-const x$1@ Poly)
 (declare-const x$2@ Poly)
 (declare-const tmp%1 Poly)
 (declare-const x@ Poly)
 (declare-const min@ Poly)
 (declare-const tmp%2 Poly)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const x$4@ Poly)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type r! (TYPE%fun%2. A&. A& A&. A& $ BOOL))
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (= decrease%init0 (vstd.set.impl&%0.len.? A&. A& self!))
    (=>
     (vstd.set.impl&%0.finite.? A&. A& self!)
     (=>
      (ens%vstd.set_lib.lemma_set_properties. A&. A&)
      (or
       (and
        (=>
         (> (vstd.set.impl&%0.len.? A&. A& self!) 0)
         (=>
          (= x$4@ (vstd.set.impl&%0.choose.? A&. A& self!))
          (=>
           (= tmp%3 (vstd.set.impl&%0.contains.? A&. A& self! x$4@))
           (and
            (=>
             %%location_label%%0
             tmp%3
            )
            (=>
             tmp%3
             (=>
              (= tmp%4 (< (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.remove.? A&. A& self! x$4@))
                (vstd.set.impl&%0.len.? A&. A& self!)
              ))
              (and
               (=>
                %%location_label%%1
                tmp%4
               )
               (=>
                tmp%4
                %%switch_label%%1
        ))))))))
        (=>
         (not (> (vstd.set.impl&%0.len.? A&. A& self!) 0))
         %%switch_label%%1
       ))
       (and
        (not %%switch_label%%1)
        (or
         (and
          (=>
           (<= (vstd.set.impl&%0.len.? A&. A& self!) 1)
           (=>
            (= tmp%2 (vstd.set.impl&%0.choose.? A&. A& self!))
            %%switch_label%%0
          ))
          (=>
           (not (<= (vstd.set.impl&%0.len.? A&. A& self!) 1))
           (=>
            (has_type x$1@ A&)
            (=>
             (has_type x$2@ A&)
             (=>
              (= x@ (as_type (%%choose%%0 A& A&. A& self! A&. A& self!) A&))
              (=>
               (= tmp%1 (vstd.set.impl&%0.remove.? A&. A& self! x@))
               (and
                (=>
                 %%location_label%%2
                 (check_decrease_int (let
                   ((self!$0 tmp%1) (r!$1 (%Poly%fun%2. r!)))
                   (vstd.set.impl&%0.len.? A&. A& self!$0)
                  ) decrease%init0 false
                ))
                (=>
                 (has_type min@ A&)
                 (=>
                  (= tmp%2 (ite
                    (%B (%%apply%%1 (%Poly%fun%2. r!) min@ x@))
                    min@
                    x@
                  ))
                  %%switch_label%%0
         )))))))))
         (not %%switch_label%%0)
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Axioms crate::vstd::set::Set::find_unique_minimal
(assert
 (fuel_bool_default fuel%vstd.set_lib.impl&%0.find_unique_minimal.)
)
(declare-const fuel_nat%vstd.set_lib.impl&%0.find_unique_minimal. Fuel)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! Poly) (fuel% Fuel)) (!
   (= (vstd.set_lib.impl&%0.rec%find_unique_minimal.? A&. A& self! r! fuel%) (vstd.set_lib.impl&%0.rec%find_unique_minimal.?
     A&. A& self! r! zero
   ))
   :pattern ((vstd.set_lib.impl&%0.rec%find_unique_minimal.? A&. A& self! r! fuel%))
   :qid internal_vstd.set_lib.impl&__0.find_unique_minimal._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.set_lib.impl&__0.find_unique_minimal._fuel_to_zero_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! Poly) (fuel% Fuel)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type r! (TYPE%fun%2. A&. A& A&. A& $ BOOL))
     (vstd.set.impl&%0.finite.? A&. A& self!)
    )
    (= (vstd.set_lib.impl&%0.rec%find_unique_minimal.? A&. A& self! r! (succ fuel%)) (
      ite
      (<= (vstd.set.impl&%0.len.? A&. A& self!) 1)
      (vstd.set.impl&%0.choose.? A&. A& self!)
      (let
       ((x$ (as_type (%%choose%%0 A& A&. A& self! A&. A& self!) A&)))
       (let
        ((min$ (vstd.set_lib.impl&%0.rec%find_unique_minimal.? A&. A& (vstd.set.impl&%0.remove.?
            A&. A& self! x$
           ) r! fuel%
        )))
        (ite
         (%B (%%apply%%1 (%Poly%fun%2. r!) min$ x$))
         min$
         x$
   ))))))
   :pattern ((vstd.set_lib.impl&%0.rec%find_unique_minimal.? A&. A& self! r! (succ fuel%)))
   :qid internal_vstd.set_lib.impl&__0.find_unique_minimal._fuel_to_body_definition
   :skolemid skolem_internal_vstd.set_lib.impl&__0.find_unique_minimal._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.set_lib.impl&%0.find_unique_minimal.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (r! Poly)) (!
    (=>
     (and
      (has_type self! (TYPE%vstd.set.Set. A&. A&))
      (has_type r! (TYPE%fun%2. A&. A& A&. A& $ BOOL))
      (vstd.set.impl&%0.finite.? A&. A& self!)
     )
     (= (vstd.set_lib.impl&%0.find_unique_minimal.? A&. A& self! r!) (vstd.set_lib.impl&%0.rec%find_unique_minimal.?
       A&. A& self! r! (succ fuel_nat%vstd.set_lib.impl&%0.find_unique_minimal.)
    )))
    :pattern ((vstd.set_lib.impl&%0.find_unique_minimal.? A&. A& self! r!))
    :qid internal_vstd.set_lib.impl&__0.find_unique_minimal.?_definition
    :skolemid skolem_internal_vstd.set_lib.impl&__0.find_unique_minimal.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type r! (TYPE%fun%2. A&. A& A&. A& $ BOOL))
    )
    (has_type (vstd.set_lib.impl&%0.find_unique_minimal.? A&. A& self! r!) A&)
   )
   :pattern ((vstd.set_lib.impl&%0.find_unique_minimal.? A&. A& self! r!))
   :qid internal_vstd.set_lib.impl&__0.find_unique_minimal.?_pre_post_definition
   :skolemid skolem_internal_vstd.set_lib.impl&__0.find_unique_minimal.?_pre_post_definition
)))

;; Function-Specs crate::vstd::set::Set::find_unique_maximal
(declare-fun req%vstd.set_lib.impl&%0.find_unique_maximal. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%15 Bool)
(declare-const %%global_location_label%%16 Bool)
(declare-const %%global_location_label%%17 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! Poly)) (!
   (= (req%vstd.set_lib.impl&%0.find_unique_maximal. A&. A& self! r!) (and
     (=>
      %%global_location_label%%15
      (vstd.relations.total_ordering.? A&. A& r!)
     )
     (=>
      %%global_location_label%%16
      (> (vstd.set.impl&%0.len.? A&. A& self!) 0)
     )
     (=>
      %%global_location_label%%17
      (vstd.set.impl&%0.finite.? A&. A& self!)
   )))
   :pattern ((req%vstd.set_lib.impl&%0.find_unique_maximal. A&. A& self! r!))
   :qid internal_req__vstd.set_lib.impl&__0.find_unique_maximal._definition
   :skolemid skolem_internal_req__vstd.set_lib.impl&__0.find_unique_maximal._definition
)))

;; Spec-Termination crate::vstd::set::Set::find_unique_maximal
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:181:5: 181:80 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const self! Poly)
 (declare-const r! Poly)
 (declare-const x$1@ Poly)
 (declare-const x$2@ Poly)
 (declare-const tmp%1 Poly)
 (declare-const x@ Poly)
 (declare-const max@ Poly)
 (declare-const tmp%2 Poly)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type r! (TYPE%fun%2. A&. A& A&. A& $ BOOL))
 )
 (declare-const %%switch_label%%0 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= decrease%init0 (vstd.set.impl&%0.len.? A&. A& self!))
    (=>
     (vstd.set.impl&%0.finite.? A&. A& self!)
     (=>
      (ens%vstd.set_lib.lemma_set_properties. A&. A&)
      (or
       (and
        (=>
         (<= (vstd.set.impl&%0.len.? A&. A& self!) 1)
         (=>
          (= tmp%2 (vstd.set.impl&%0.choose.? A&. A& self!))
          %%switch_label%%0
        ))
        (=>
         (not (<= (vstd.set.impl&%0.len.? A&. A& self!) 1))
         (=>
          (has_type x$1@ A&)
          (=>
           (has_type x$2@ A&)
           (=>
            (= x@ (as_type (%%choose%%0 A& A&. A& self! A&. A& self!) A&))
            (=>
             (= tmp%1 (vstd.set.impl&%0.remove.? A&. A& self! x@))
             (and
              (=>
               %%location_label%%0
               (check_decrease_int (let
                 ((self!$0 tmp%1) (r!$1 (%Poly%fun%2. r!)))
                 (vstd.set.impl&%0.len.? A&. A& self!$0)
                ) decrease%init0 false
              ))
              (=>
               (has_type max@ A&)
               (=>
                (= tmp%2 (ite
                  (%B (%%apply%%1 (%Poly%fun%2. r!) x@ max@))
                  max@
                  x@
                ))
                %%switch_label%%0
       )))))))))
       (not %%switch_label%%0)
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Axioms crate::vstd::set::Set::find_unique_maximal
(assert
 (fuel_bool_default fuel%vstd.set_lib.impl&%0.find_unique_maximal.)
)
(declare-const fuel_nat%vstd.set_lib.impl&%0.find_unique_maximal. Fuel)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! Poly) (fuel% Fuel)) (!
   (= (vstd.set_lib.impl&%0.rec%find_unique_maximal.? A&. A& self! r! fuel%) (vstd.set_lib.impl&%0.rec%find_unique_maximal.?
     A&. A& self! r! zero
   ))
   :pattern ((vstd.set_lib.impl&%0.rec%find_unique_maximal.? A&. A& self! r! fuel%))
   :qid internal_vstd.set_lib.impl&__0.find_unique_maximal._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.set_lib.impl&__0.find_unique_maximal._fuel_to_zero_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! Poly) (fuel% Fuel)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type r! (TYPE%fun%2. A&. A& A&. A& $ BOOL))
     (vstd.set.impl&%0.finite.? A&. A& self!)
    )
    (= (vstd.set_lib.impl&%0.rec%find_unique_maximal.? A&. A& self! r! (succ fuel%)) (
      ite
      (<= (vstd.set.impl&%0.len.? A&. A& self!) 1)
      (vstd.set.impl&%0.choose.? A&. A& self!)
      (let
       ((x$ (as_type (%%choose%%0 A& A&. A& self! A&. A& self!) A&)))
       (let
        ((max$ (vstd.set_lib.impl&%0.rec%find_unique_maximal.? A&. A& (vstd.set.impl&%0.remove.?
            A&. A& self! x$
           ) r! fuel%
        )))
        (ite
         (%B (%%apply%%1 (%Poly%fun%2. r!) x$ max$))
         max$
         x$
   ))))))
   :pattern ((vstd.set_lib.impl&%0.rec%find_unique_maximal.? A&. A& self! r! (succ fuel%)))
   :qid internal_vstd.set_lib.impl&__0.find_unique_maximal._fuel_to_body_definition
   :skolemid skolem_internal_vstd.set_lib.impl&__0.find_unique_maximal._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.set_lib.impl&%0.find_unique_maximal.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (r! Poly)) (!
    (=>
     (and
      (has_type self! (TYPE%vstd.set.Set. A&. A&))
      (has_type r! (TYPE%fun%2. A&. A& A&. A& $ BOOL))
      (vstd.set.impl&%0.finite.? A&. A& self!)
     )
     (= (vstd.set_lib.impl&%0.find_unique_maximal.? A&. A& self! r!) (vstd.set_lib.impl&%0.rec%find_unique_maximal.?
       A&. A& self! r! (succ fuel_nat%vstd.set_lib.impl&%0.find_unique_maximal.)
    )))
    :pattern ((vstd.set_lib.impl&%0.find_unique_maximal.? A&. A& self! r!))
    :qid internal_vstd.set_lib.impl&__0.find_unique_maximal.?_definition
    :skolemid skolem_internal_vstd.set_lib.impl&__0.find_unique_maximal.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type r! (TYPE%fun%2. A&. A& A&. A& $ BOOL))
    )
    (has_type (vstd.set_lib.impl&%0.find_unique_maximal.? A&. A& self! r!) A&)
   )
   :pattern ((vstd.set_lib.impl&%0.find_unique_maximal.? A&. A& self! r!))
   :qid internal_vstd.set_lib.impl&__0.find_unique_maximal.?_pre_post_definition
   :skolemid skolem_internal_vstd.set_lib.impl&__0.find_unique_maximal.?_pre_post_definition
)))

;; Function-Specs crate::vstd::set::Set::to_multiset
(declare-fun req%vstd.set_lib.impl&%0.to_multiset. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%18 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (req%vstd.set_lib.impl&%0.to_multiset. A&. A& self!) (=>
     %%global_location_label%%18
     (vstd.set.impl&%0.finite.? A&. A& self!)
   ))
   :pattern ((req%vstd.set_lib.impl&%0.to_multiset. A&. A& self!))
   :qid internal_req__vstd.set_lib.impl&__0.to_multiset._definition
   :skolemid skolem_internal_req__vstd.set_lib.impl&__0.to_multiset._definition
)))

;; Spec-Termination crate::vstd::set::Set::to_multiset
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:269:5: 269:54 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const self! Poly)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Poly)
 (declare-const tmp%3 Poly)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.set.Set. A&. A&))
 )
 (declare-const %%switch_label%%0 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= decrease%init0 (vstd.set.impl&%0.len.? A&. A& self!))
    (=>
     (vstd.set.impl&%0.finite.? A&. A& self!)
     (or
      (and
       (=>
        (= (vstd.set.impl&%0.len.? A&. A& self!) 0)
        (=>
         (= tmp%3 (vstd.multiset.impl&%0.empty.? A&. A&))
         %%switch_label%%0
       ))
       (=>
        (not (= (vstd.set.impl&%0.len.? A&. A& self!) 0))
        (=>
         (= tmp%2 (vstd.set.impl&%0.remove.? A&. A& self! (vstd.set.impl&%0.choose.? A&. A& self!)))
         (and
          (=>
           %%location_label%%0
           (check_decrease_int (let
             ((self!$0 tmp%2))
             (vstd.set.impl&%0.len.? A&. A& self!$0)
            ) decrease%init0 false
          ))
          (=>
           (has_type tmp%1 (TYPE%vstd.multiset.Multiset. A&. A&))
           (=>
            (= tmp%1 (vstd.set_lib.impl&%0.to_multiset.? A&. A& (vstd.set.impl&%0.remove.? A&. A&
               self! (vstd.set.impl&%0.choose.? A&. A& self!)
            )))
            (=>
             (= tmp%3 (vstd.multiset.impl&%0.add.? A&. A& (vstd.multiset.impl&%0.insert.? A&. A&
                (vstd.multiset.impl&%0.empty.? A&. A&) (vstd.set.impl&%0.choose.? A&. A& self!)
               ) tmp%1
             ))
             %%switch_label%%0
      )))))))
      (not %%switch_label%%0)
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Axioms crate::vstd::set::Set::to_multiset
(assert
 (fuel_bool_default fuel%vstd.set_lib.impl&%0.to_multiset.)
)
(declare-const fuel_nat%vstd.set_lib.impl&%0.to_multiset. Fuel)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (fuel% Fuel)) (!
   (= (vstd.set_lib.impl&%0.rec%to_multiset.? A&. A& self! fuel%) (vstd.set_lib.impl&%0.rec%to_multiset.?
     A&. A& self! zero
   ))
   :pattern ((vstd.set_lib.impl&%0.rec%to_multiset.? A&. A& self! fuel%))
   :qid internal_vstd.set_lib.impl&__0.to_multiset._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.set_lib.impl&__0.to_multiset._fuel_to_zero_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (fuel% Fuel)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (vstd.set.impl&%0.finite.? A&. A& self!)
    )
    (= (vstd.set_lib.impl&%0.rec%to_multiset.? A&. A& self! (succ fuel%)) (ite
      (= (vstd.set.impl&%0.len.? A&. A& self!) 0)
      (vstd.multiset.impl&%0.empty.? A&. A&)
      (vstd.multiset.impl&%0.add.? A&. A& (vstd.multiset.impl&%0.insert.? A&. A& (vstd.multiset.impl&%0.empty.?
         A&. A&
        ) (vstd.set.impl&%0.choose.? A&. A& self!)
       ) (vstd.set_lib.impl&%0.rec%to_multiset.? A&. A& (vstd.set.impl&%0.remove.? A&. A&
         self! (vstd.set.impl&%0.choose.? A&. A& self!)
        ) fuel%
   )))))
   :pattern ((vstd.set_lib.impl&%0.rec%to_multiset.? A&. A& self! (succ fuel%)))
   :qid internal_vstd.set_lib.impl&__0.to_multiset._fuel_to_body_definition
   :skolemid skolem_internal_vstd.set_lib.impl&__0.to_multiset._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.set_lib.impl&%0.to_multiset.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (=>
     (and
      (has_type self! (TYPE%vstd.set.Set. A&. A&))
      (vstd.set.impl&%0.finite.? A&. A& self!)
     )
     (= (vstd.set_lib.impl&%0.to_multiset.? A&. A& self!) (vstd.set_lib.impl&%0.rec%to_multiset.?
       A&. A& self! (succ fuel_nat%vstd.set_lib.impl&%0.to_multiset.)
    )))
    :pattern ((vstd.set_lib.impl&%0.to_multiset.? A&. A& self!))
    :qid internal_vstd.set_lib.impl&__0.to_multiset.?_definition
    :skolemid skolem_internal_vstd.set_lib.impl&__0.to_multiset.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.set.Set. A&. A&))
    (has_type (vstd.set_lib.impl&%0.to_multiset.? A&. A& self!) (TYPE%vstd.multiset.Multiset.
      A&. A&
   )))
   :pattern ((vstd.set_lib.impl&%0.to_multiset.? A&. A& self!))
   :qid internal_vstd.set_lib.impl&__0.to_multiset.?_pre_post_definition
   :skolemid skolem_internal_vstd.set_lib.impl&__0.to_multiset.?_pre_post_definition
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

;; Function-Axioms crate::vstd::relations::injective
(assert
 (fuel_bool_default fuel%vstd.relations.injective.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.injective.)
  (forall ((X&. Dcr) (X& Type) (Y&. Dcr) (Y& Type) (r! Poly)) (!
    (= (vstd.relations.injective.? X&. X& Y&. Y& r!) (forall ((x1$ Poly) (x2$ Poly)) (!
       (=>
        (and
         (has_type x1$ X&)
         (has_type x2$ X&)
        )
        (=>
         (= (%%apply%%0 (%Poly%fun%1. r!) x1$) (%%apply%%0 (%Poly%fun%1. r!) x2$))
         (= x1$ x2$)
       ))
       :pattern ((%%apply%%0 (%Poly%fun%1. r!) x1$) (%%apply%%0 (%Poly%fun%1. r!) x2$))
       :qid user_crate__vstd__relations__injective_84
       :skolemid skolem_user_crate__vstd__relations__injective_84
    )))
    :pattern ((vstd.relations.injective.? X&. X& Y&. Y& r!))
    :qid internal_vstd.relations.injective.?_definition
    :skolemid skolem_internal_vstd.relations.injective.?_definition
))))

;; Function-Axioms crate::vstd::relations::pre_ordering
(assert
 (fuel_bool_default fuel%vstd.relations.pre_ordering.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.pre_ordering.)
  (forall ((T&. Dcr) (T& Type) (r! Poly)) (!
    (= (vstd.relations.pre_ordering.? T&. T& r!) (and
      (vstd.relations.reflexive.? T&. T& r!)
      (vstd.relations.transitive.? T&. T& r!)
    ))
    :pattern ((vstd.relations.pre_ordering.? T&. T& r!))
    :qid internal_vstd.relations.pre_ordering.?_definition
    :skolemid skolem_internal_vstd.relations.pre_ordering.?_definition
))))

;; Function-Axioms crate::vstd::relations::partial_ordering
(assert
 (fuel_bool_default fuel%vstd.relations.partial_ordering.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.partial_ordering.)
  (forall ((T&. Dcr) (T& Type) (r! Poly)) (!
    (= (vstd.relations.partial_ordering.? T&. T& r!) (and
      (and
       (vstd.relations.reflexive.? T&. T& r!)
       (vstd.relations.transitive.? T&. T& r!)
      )
      (vstd.relations.antisymmetric.? T&. T& r!)
    ))
    :pattern ((vstd.relations.partial_ordering.? T&. T& r!))
    :qid internal_vstd.relations.partial_ordering.?_definition
    :skolemid skolem_internal_vstd.relations.partial_ordering.?_definition
))))

;; Function-Axioms crate::vstd::relations::is_least
(assert
 (fuel_bool_default fuel%vstd.relations.is_least.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.is_least.)
  (forall ((T&. Dcr) (T& Type) (leq! Poly) (min! Poly) (s! Poly)) (!
    (= (vstd.relations.is_least.? T&. T& leq! min! s!) (and
      (vstd.set.impl&%0.contains.? T&. T& s! min!)
      (forall ((x$ Poly)) (!
        (=>
         (has_type x$ T&)
         (=>
          (vstd.set.impl&%0.contains.? T&. T& s! x$)
          (%B (%%apply%%1 (%Poly%fun%2. leq!) min! x$))
        ))
        :pattern ((%%apply%%1 (%Poly%fun%2. leq!) min! x$))
        :qid user_crate__vstd__relations__is_least_85
        :skolemid skolem_user_crate__vstd__relations__is_least_85
    ))))
    :pattern ((vstd.relations.is_least.? T&. T& leq! min! s!))
    :qid internal_vstd.relations.is_least.?_definition
    :skolemid skolem_internal_vstd.relations.is_least.?_definition
))))

;; Function-Axioms crate::vstd::relations::is_minimal
(assert
 (fuel_bool_default fuel%vstd.relations.is_minimal.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.is_minimal.)
  (forall ((T&. Dcr) (T& Type) (leq! Poly) (min! Poly) (s! Poly)) (!
    (= (vstd.relations.is_minimal.? T&. T& leq! min! s!) (and
      (vstd.set.impl&%0.contains.? T&. T& s! min!)
      (forall ((x$ Poly)) (!
        (=>
         (has_type x$ T&)
         (=>
          (and
           (vstd.set.impl&%0.contains.? T&. T& s! x$)
           (%B (%%apply%%1 (%Poly%fun%2. leq!) x$ min!))
          )
          (%B (%%apply%%1 (%Poly%fun%2. leq!) min! x$))
        ))
        :pattern ((%%apply%%1 (%Poly%fun%2. leq!) x$ min!) (%%apply%%1 (%Poly%fun%2. leq!)
          min! x$
        ))
        :qid user_crate__vstd__relations__is_minimal_86
        :skolemid skolem_user_crate__vstd__relations__is_minimal_86
    ))))
    :pattern ((vstd.relations.is_minimal.? T&. T& leq! min! s!))
    :qid internal_vstd.relations.is_minimal.?_definition
    :skolemid skolem_internal_vstd.relations.is_minimal.?_definition
))))

;; Function-Axioms crate::vstd::relations::is_greatest
(assert
 (fuel_bool_default fuel%vstd.relations.is_greatest.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.is_greatest.)
  (forall ((T&. Dcr) (T& Type) (leq! Poly) (max! Poly) (s! Poly)) (!
    (= (vstd.relations.is_greatest.? T&. T& leq! max! s!) (and
      (vstd.set.impl&%0.contains.? T&. T& s! max!)
      (forall ((x$ Poly)) (!
        (=>
         (has_type x$ T&)
         (=>
          (vstd.set.impl&%0.contains.? T&. T& s! x$)
          (%B (%%apply%%1 (%Poly%fun%2. leq!) x$ max!))
        ))
        :pattern ((%%apply%%1 (%Poly%fun%2. leq!) x$ max!))
        :qid user_crate__vstd__relations__is_greatest_87
        :skolemid skolem_user_crate__vstd__relations__is_greatest_87
    ))))
    :pattern ((vstd.relations.is_greatest.? T&. T& leq! max! s!))
    :qid internal_vstd.relations.is_greatest.?_definition
    :skolemid skolem_internal_vstd.relations.is_greatest.?_definition
))))

;; Function-Axioms crate::vstd::relations::is_maximal
(assert
 (fuel_bool_default fuel%vstd.relations.is_maximal.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.is_maximal.)
  (forall ((T&. Dcr) (T& Type) (leq! Poly) (max! Poly) (s! Poly)) (!
    (= (vstd.relations.is_maximal.? T&. T& leq! max! s!) (and
      (vstd.set.impl&%0.contains.? T&. T& s! max!)
      (forall ((x$ Poly)) (!
        (=>
         (has_type x$ T&)
         (=>
          (and
           (vstd.set.impl&%0.contains.? T&. T& s! x$)
           (%B (%%apply%%1 (%Poly%fun%2. leq!) max! x$))
          )
          (%B (%%apply%%1 (%Poly%fun%2. leq!) x$ max!))
        ))
        :pattern ((%%apply%%1 (%Poly%fun%2. leq!) max! x$) (%%apply%%1 (%Poly%fun%2. leq!)
          x$ max!
        ))
        :qid user_crate__vstd__relations__is_maximal_88
        :skolemid skolem_user_crate__vstd__relations__is_maximal_88
    ))))
    :pattern ((vstd.relations.is_maximal.? T&. T& leq! max! s!))
    :qid internal_vstd.relations.is_maximal.?_definition
    :skolemid skolem_internal_vstd.relations.is_maximal.?_definition
))))

;; Function-Specs crate::vstd::set::Set::find_unique_minimal_ensures
(declare-fun req%vstd.set_lib.impl&%0.find_unique_minimal_ensures. (Dcr Type Poly %%Function%%)
 Bool
)
(declare-const %%global_location_label%%19 Bool)
(declare-const %%global_location_label%%20 Bool)
(declare-const %%global_location_label%%21 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! %%Function%%)) (!
   (= (req%vstd.set_lib.impl&%0.find_unique_minimal_ensures. A&. A& self! r!) (and
     (=>
      %%global_location_label%%19
      (vstd.set.impl&%0.finite.? A&. A& self!)
     )
     (=>
      %%global_location_label%%20
      (> (vstd.set.impl&%0.len.? A&. A& self!) 0)
     )
     (=>
      %%global_location_label%%21
      (vstd.relations.total_ordering.? A&. A& (Poly%fun%2. r!))
   )))
   :pattern ((req%vstd.set_lib.impl&%0.find_unique_minimal_ensures. A&. A& self! r!))
   :qid internal_req__vstd.set_lib.impl&__0.find_unique_minimal_ensures._definition
   :skolemid skolem_internal_req__vstd.set_lib.impl&__0.find_unique_minimal_ensures._definition
)))
(declare-fun ens%vstd.set_lib.impl&%0.find_unique_minimal_ensures. (Dcr Type Poly %%Function%%)
 Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! %%Function%%)) (!
   (= (ens%vstd.set_lib.impl&%0.find_unique_minimal_ensures. A&. A& self! r!) (and
     (vstd.relations.is_minimal.? A&. A& (Poly%fun%2. r!) (vstd.set_lib.impl&%0.find_unique_minimal.?
       A&. A& self! (Poly%fun%2. r!)
      ) self!
     )
     (forall ((min$ Poly)) (!
       (=>
        (has_type min$ A&)
        (=>
         (vstd.relations.is_minimal.? A&. A& (Poly%fun%2. r!) min$ self!)
         (= (vstd.set_lib.impl&%0.find_unique_minimal.? A&. A& self! (Poly%fun%2. r!)) min$)
       ))
       :pattern ((vstd.relations.is_minimal.? A&. A& (Poly%fun%2. r!) min$ self!))
       :qid user_crate__vstd__set__Set__find_unique_minimal_ensures_89
       :skolemid skolem_user_crate__vstd__set__Set__find_unique_minimal_ensures_89
   ))))
   :pattern ((ens%vstd.set_lib.impl&%0.find_unique_minimal_ensures. A&. A& self! r!))
   :qid internal_ens__vstd.set_lib.impl&__0.find_unique_minimal_ensures._definition
   :skolemid skolem_internal_ens__vstd.set_lib.impl&__0.find_unique_minimal_ensures._definition
)))

;; Function-Def crate::vstd::set::Set::find_unique_minimal_ensures
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:126:5: 126:77 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const self! Poly)
 (declare-const r! %%Function%%)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const x@ Poly)
 (declare-const tmp%3 Poly)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Bool)
 (declare-const tmp%6 Bool)
 (declare-const elt@ Poly)
 (declare-const tmp%7 Bool)
 (declare-const tmp%8 Bool)
 (declare-const tmp%9 Bool)
 (declare-const tmp%10 Bool)
 (declare-const tmp%11 Bool)
 (declare-const tmp%12 Bool)
 (declare-const tmp%13 Bool)
 (declare-const tmp%14 Bool)
 (declare-const tmp%15 Bool)
 (declare-const min_poss@ Poly)
 (declare-const tmp%16 Bool)
 (declare-const tmp%17 Bool)
 (declare-const x$2@ Poly)
 (declare-const y@ Poly)
 (declare-const min_updated@ Poly)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type (Poly%fun%2. r!) (TYPE%fun%2. A&. A& A&. A& $ BOOL))
 )
 (assert
  (vstd.set.impl&%0.finite.? A&. A& self!)
 )
 (assert
  (> (vstd.set.impl&%0.len.? A&. A& self!) 0)
 )
 (assert
  (vstd.relations.total_ordering.? A&. A& (Poly%fun%2. r!))
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 (declare-const %%switch_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
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
 ;; assertion failed
 (declare-const %%location_label%%10 Bool)
 ;; assertion failed
 (declare-const %%location_label%%11 Bool)
 ;; assertion failed
 (declare-const %%location_label%%12 Bool)
 ;; assertion failed
 (declare-const %%location_label%%13 Bool)
 ;; assertion failed
 (declare-const %%location_label%%14 Bool)
 ;; assertion failed
 (declare-const %%location_label%%15 Bool)
 ;; assertion failed
 (declare-const %%location_label%%16 Bool)
 ;; assertion failed
 (declare-const %%location_label%%17 Bool)
 ;; assertion failed
 (declare-const %%location_label%%18 Bool)
 ;; assertion failed
 (declare-const %%location_label%%19 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%20 Bool)
 (assert
  (not (=>
    (= decrease%init0 (vstd.set.impl&%0.len.? A&. A& self!))
    (=>
     (ens%vstd.set_lib.lemma_set_properties. A&. A&)
     (or
      (and
       (=>
        (= (vstd.set.impl&%0.len.? A&. A& self!) 1)
        (=>
         (= x@ (as_type (%%choose%%0 A& A&. A& self! A&. A& self!) A&))
         (=>
          (= tmp%1 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.insert.? A&. A&
             (vstd.set.impl&%0.remove.? A&. A& self! x@) x@
            ) self!
          ))
          (and
           (=>
            %%location_label%%0
            tmp%1
           )
           (=>
            tmp%1
            (=>
             (= tmp%2 (vstd.relations.is_minimal.? A&. A& (Poly%fun%2. r!) (vstd.set_lib.impl&%0.find_unique_minimal.?
                A&. A& self! (Poly%fun%2. r!)
               ) self!
             ))
             (and
              (=>
               %%location_label%%1
               tmp%2
              )
              (=>
               tmp%2
               %%switch_label%%0
       ))))))))
       (=>
        (not (= (vstd.set.impl&%0.len.? A&. A& self!) 1))
        (=>
         (= x$2@ (as_type (%%choose%%0 A& A&. A& self! A&. A& self!) A&))
         (=>
          (= tmp%3 (vstd.set.impl&%0.remove.? A&. A& self! x$2@))
          (and
           (=>
            %%location_label%%2
            (check_decrease_int (let
              ((self!$0 tmp%3) (r!$1 r!))
              (vstd.set.impl&%0.len.? A&. A& self!$0)
             ) decrease%init0 false
           ))
           (and
            (=>
             %%location_label%%3
             (req%vstd.set_lib.impl&%0.find_unique_minimal_ensures. A&. A& tmp%3 r!)
            )
            (=>
             (ens%vstd.set_lib.impl&%0.find_unique_minimal_ensures. A&. A& tmp%3 r!)
             (=>
              (= tmp%4 (vstd.relations.is_minimal.? A&. A& (Poly%fun%2. r!) (vstd.set_lib.impl&%0.find_unique_minimal.?
                 A&. A& (vstd.set.impl&%0.remove.? A&. A& self! x$2@) (Poly%fun%2. r!)
                ) (vstd.set.impl&%0.remove.? A&. A& self! x$2@)
              ))
              (and
               (=>
                %%location_label%%4
                tmp%4
               )
               (=>
                tmp%4
                (=>
                 (= y@ (vstd.set_lib.impl&%0.find_unique_minimal.? A&. A& (vstd.set.impl&%0.remove.?
                    A&. A& self! x$2@
                   ) (Poly%fun%2. r!)
                 ))
                 (=>
                  (= min_updated@ (vstd.set_lib.impl&%0.find_unique_minimal.? A&. A& self! (Poly%fun%2.
                     r!
                  )))
                  (=>
                   (= tmp%5 (=>
                     (not (%B (%%apply%%1 r! y@ x$2@)))
                     (= min_updated@ x$2@)
                   ))
                   (and
                    (=>
                     %%location_label%%5
                     tmp%5
                    )
                    (=>
                     tmp%5
                     (=>
                      (= tmp%6 (forall ((elt$ Poly)) (!
                         (=>
                          (has_type elt$ A&)
                          (=>
                           (and
                            (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.remove.? A&. A& self! x$2@)
                             elt$
                            )
                            (%B (%%apply%%1 r! elt$ y@))
                           )
                           (%B (%%apply%%1 r! y@ elt$))
                         ))
                         :pattern ((%%apply%%1 r! elt$ y@) (%%apply%%1 r! y@ elt$))
                         :qid user_crate__vstd__set__Set__find_unique_minimal_ensures_93
                         :skolemid skolem_user_crate__vstd__set__Set__find_unique_minimal_ensures_93
                      )))
                      (and
                       (=>
                        %%location_label%%6
                        tmp%6
                       )
                       (=>
                        tmp%6
                        (and
                         (=>
                          (has_type elt@ A&)
                          (=>
                           (and
                            (vstd.set.impl&%0.contains.? A&. A& self! elt@)
                            (%B (%%apply%%1 r! elt@ min_updated@))
                           )
                           (=>
                            (= tmp%7 (or
                              (%B (%%apply%%1 r! min_updated@ x$2@))
                              (%B (%%apply%%1 r! min_updated@ y@))
                            ))
                            (and
                             (=>
                              %%location_label%%7
                              tmp%7
                             )
                             (=>
                              tmp%7
                              (or
                               (and
                                (=>
                                 (= min_updated@ y@)
                                 (=>
                                  (= tmp%8 (vstd.relations.is_minimal.? A&. A& (Poly%fun%2. r!) (vstd.set_lib.impl&%0.find_unique_minimal.?
                                     A&. A& self! (Poly%fun%2. r!)
                                    ) self!
                                  ))
                                  (and
                                   (=>
                                    %%location_label%%8
                                    tmp%8
                                   )
                                   (=>
                                    tmp%8
                                    %%switch_label%%1
                                ))))
                                (=>
                                 (not (= min_updated@ y@))
                                 (=>
                                  (= tmp%9 (or
                                    (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.remove.? A&. A& self! x$2@)
                                     elt@
                                    )
                                    (= elt@ x$2@)
                                  ))
                                  (and
                                   (=>
                                    %%location_label%%9
                                    tmp%9
                                   )
                                   (=>
                                    tmp%9
                                    (=>
                                     (= tmp%10 (= min_updated@ x$2@))
                                     (and
                                      (=>
                                       %%location_label%%10
                                       tmp%10
                                      )
                                      (=>
                                       tmp%10
                                       (=>
                                        (= tmp%11 (or
                                          (%B (%%apply%%1 r! x$2@ y@))
                                          (%B (%%apply%%1 r! y@ x$2@))
                                        ))
                                        (and
                                         (=>
                                          %%location_label%%11
                                          tmp%11
                                         )
                                         (=>
                                          tmp%11
                                          (=>
                                           (= tmp%12 (or
                                             (not (%B (%%apply%%1 r! x$2@ y@)))
                                             (not (%B (%%apply%%1 r! y@ x$2@)))
                                           ))
                                           (and
                                            (=>
                                             %%location_label%%12
                                             tmp%12
                                            )
                                            (=>
                                             tmp%12
                                             (=>
                                              (= tmp%13 (=>
                                                (not (= min_updated@ y@))
                                                (not (%B (%%apply%%1 r! y@ x$2@)))
                                              ))
                                              (and
                                               (=>
                                                %%location_label%%13
                                                tmp%13
                                               )
                                               (=>
                                                tmp%13
                                                (=>
                                                 (= tmp%14 (%B (%%apply%%1 r! x$2@ y@)))
                                                 (and
                                                  (=>
                                                   %%location_label%%14
                                                   tmp%14
                                                  )
                                                  (=>
                                                   tmp%14
                                                   (or
                                                    (and
                                                     (=>
                                                      (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.remove.? A&. A& self! x$2@)
                                                       elt@
                                                      )
                                                      (=>
                                                       (= tmp%15 (=>
                                                         (and
                                                          (%B (%%apply%%1 r! elt@ y@))
                                                          (%B (%%apply%%1 r! y@ elt@))
                                                         )
                                                         (= elt@ y@)
                                                       ))
                                                       (and
                                                        (=>
                                                         %%location_label%%15
                                                         tmp%15
                                                        )
                                                        (=>
                                                         tmp%15
                                                         %%switch_label%%2
                                                     ))))
                                                     (=>
                                                      (not (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.remove.? A&. A& self! x$2@)
                                                        elt@
                                                      ))
                                                      %%switch_label%%2
                                                    ))
                                                    (and
                                                     (not %%switch_label%%2)
                                                     %%switch_label%%1
                               ))))))))))))))))))))))
                               (and
                                (not %%switch_label%%1)
                                (=>
                                 %%location_label%%16
                                 (%B (%%apply%%1 r! min_updated@ elt@))
                         ))))))))
                         (=>
                          (forall ((elt$ Poly)) (!
                            (=>
                             (has_type elt$ A&)
                             (=>
                              (and
                               (vstd.set.impl&%0.contains.? A&. A& self! elt$)
                               (%B (%%apply%%1 r! elt$ min_updated@))
                              )
                              (%B (%%apply%%1 r! min_updated@ elt$))
                            ))
                            :pattern ((%%apply%%1 r! elt$ min_updated@) (%%apply%%1 r! min_updated@ elt$))
                            :qid user_crate__vstd__set__Set__find_unique_minimal_ensures_94
                            :skolemid skolem_user_crate__vstd__set__Set__find_unique_minimal_ensures_94
                          ))
                          (and
                           (=>
                            (has_type min_poss@ A&)
                            (=>
                             (vstd.relations.is_minimal.? A&. A& (Poly%fun%2. r!) min_poss@ self!)
                             (=>
                              (= tmp%16 (or
                                (vstd.relations.is_minimal.? A&. A& (Poly%fun%2. r!) min_poss@ (vstd.set.impl&%0.remove.?
                                  A&. A& self! x$2@
                                ))
                                (= x$2@ min_poss@)
                              ))
                              (and
                               (=>
                                %%location_label%%17
                                tmp%16
                               )
                               (=>
                                tmp%16
                                (=>
                                 (= tmp%17 (%B (%%apply%%1 r! min_poss@ (vstd.set_lib.impl&%0.find_unique_minimal.? A&.
                                     A& self! (Poly%fun%2. r!)
                                 ))))
                                 (and
                                  (=>
                                   %%location_label%%18
                                   tmp%17
                                  )
                                  (=>
                                   tmp%17
                                   (=>
                                    %%location_label%%19
                                    (= (vstd.set_lib.impl&%0.find_unique_minimal.? A&. A& self! (Poly%fun%2. r!)) min_poss@)
                           )))))))))
                           (=>
                            (forall ((min_poss$ Poly)) (!
                              (=>
                               (has_type min_poss$ A&)
                               (=>
                                (vstd.relations.is_minimal.? A&. A& (Poly%fun%2. r!) min_poss$ self!)
                                (= (vstd.set_lib.impl&%0.find_unique_minimal.? A&. A& self! (Poly%fun%2. r!)) min_poss$)
                              ))
                              :pattern ((vstd.relations.is_minimal.? A&. A& (Poly%fun%2. r!) min_poss$ self!))
                              :qid user_crate__vstd__set__Set__find_unique_minimal_ensures_95
                              :skolemid skolem_user_crate__vstd__set__Set__find_unique_minimal_ensures_95
                            ))
                            %%switch_label%%0
      ))))))))))))))))))))))
      (and
       (not %%switch_label%%0)
       (=>
        %%location_label%%20
        (and
         (vstd.relations.is_minimal.? A&. A& (Poly%fun%2. r!) (vstd.set_lib.impl&%0.find_unique_minimal.?
           A&. A& self! (Poly%fun%2. r!)
          ) self!
         )
         (forall ((min$ Poly)) (!
           (=>
            (has_type min$ A&)
            (=>
             (vstd.relations.is_minimal.? A&. A& (Poly%fun%2. r!) min$ self!)
             (= (vstd.set_lib.impl&%0.find_unique_minimal.? A&. A& self! (Poly%fun%2. r!)) min$)
           ))
           :pattern ((vstd.relations.is_minimal.? A&. A& (Poly%fun%2. r!) min$ self!))
           :qid user_crate__vstd__set__Set__find_unique_minimal_ensures_90
           :skolemid skolem_user_crate__vstd__set__Set__find_unique_minimal_ensures_90
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set::Set::find_unique_maximal_ensures
(declare-fun req%vstd.set_lib.impl&%0.find_unique_maximal_ensures. (Dcr Type Poly %%Function%%)
 Bool
)
(declare-const %%global_location_label%%22 Bool)
(declare-const %%global_location_label%%23 Bool)
(declare-const %%global_location_label%%24 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! %%Function%%)) (!
   (= (req%vstd.set_lib.impl&%0.find_unique_maximal_ensures. A&. A& self! r!) (and
     (=>
      %%global_location_label%%22
      (vstd.set.impl&%0.finite.? A&. A& self!)
     )
     (=>
      %%global_location_label%%23
      (> (vstd.set.impl&%0.len.? A&. A& self!) 0)
     )
     (=>
      %%global_location_label%%24
      (vstd.relations.total_ordering.? A&. A& (Poly%fun%2. r!))
   )))
   :pattern ((req%vstd.set_lib.impl&%0.find_unique_maximal_ensures. A&. A& self! r!))
   :qid internal_req__vstd.set_lib.impl&__0.find_unique_maximal_ensures._definition
   :skolemid skolem_internal_req__vstd.set_lib.impl&__0.find_unique_maximal_ensures._definition
)))
(declare-fun ens%vstd.set_lib.impl&%0.find_unique_maximal_ensures. (Dcr Type Poly %%Function%%)
 Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! %%Function%%)) (!
   (= (ens%vstd.set_lib.impl&%0.find_unique_maximal_ensures. A&. A& self! r!) (and
     (vstd.relations.is_maximal.? A&. A& (Poly%fun%2. r!) (vstd.set_lib.impl&%0.find_unique_maximal.?
       A&. A& self! (Poly%fun%2. r!)
      ) self!
     )
     (forall ((max$ Poly)) (!
       (=>
        (has_type max$ A&)
        (=>
         (vstd.relations.is_maximal.? A&. A& (Poly%fun%2. r!) max$ self!)
         (= (vstd.set_lib.impl&%0.find_unique_maximal.? A&. A& self! (Poly%fun%2. r!)) max$)
       ))
       :pattern ((vstd.relations.is_maximal.? A&. A& (Poly%fun%2. r!) max$ self!))
       :qid user_crate__vstd__set__Set__find_unique_maximal_ensures_96
       :skolemid skolem_user_crate__vstd__set__Set__find_unique_maximal_ensures_96
   ))))
   :pattern ((ens%vstd.set_lib.impl&%0.find_unique_maximal_ensures. A&. A& self! r!))
   :qid internal_ens__vstd.set_lib.impl&__0.find_unique_maximal_ensures._definition
   :skolemid skolem_internal_ens__vstd.set_lib.impl&__0.find_unique_maximal_ensures._definition
)))

;; Function-Def crate::vstd::set::Set::find_unique_maximal_ensures
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:208:5: 208:77 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const self! Poly)
 (declare-const r! %%Function%%)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const x@ Poly)
 (declare-const tmp%3 Poly)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Bool)
 (declare-const tmp%6 Bool)
 (declare-const tmp%7 Bool)
 (declare-const elt@ Poly)
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
 (declare-const max_poss@ Poly)
 (declare-const tmp%22 Bool)
 (declare-const tmp%23 Bool)
 (declare-const tmp%24 Bool)
 (declare-const x$2@ Poly)
 (declare-const y@ Poly)
 (declare-const max_updated@ Poly)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type (Poly%fun%2. r!) (TYPE%fun%2. A&. A& A&. A& $ BOOL))
 )
 (assert
  (vstd.set.impl&%0.finite.? A&. A& self!)
 )
 (assert
  (> (vstd.set.impl&%0.len.? A&. A& self!) 0)
 )
 (assert
  (vstd.relations.total_ordering.? A&. A& (Poly%fun%2. r!))
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 (declare-const %%switch_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
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
 ;; assertion failed
 (declare-const %%location_label%%10 Bool)
 ;; assertion failed
 (declare-const %%location_label%%11 Bool)
 ;; assertion failed
 (declare-const %%location_label%%12 Bool)
 ;; assertion failed
 (declare-const %%location_label%%13 Bool)
 ;; assertion failed
 (declare-const %%location_label%%14 Bool)
 ;; assertion failed
 (declare-const %%location_label%%15 Bool)
 ;; assertion failed
 (declare-const %%location_label%%16 Bool)
 ;; assertion failed
 (declare-const %%location_label%%17 Bool)
 ;; assertion failed
 (declare-const %%location_label%%18 Bool)
 ;; assertion failed
 (declare-const %%location_label%%19 Bool)
 ;; assertion failed
 (declare-const %%location_label%%20 Bool)
 ;; assertion failed
 (declare-const %%location_label%%21 Bool)
 ;; assertion failed
 (declare-const %%location_label%%22 Bool)
 ;; assertion failed
 (declare-const %%location_label%%23 Bool)
 ;; assertion failed
 (declare-const %%location_label%%24 Bool)
 ;; assertion failed
 (declare-const %%location_label%%25 Bool)
 ;; assertion failed
 (declare-const %%location_label%%26 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%27 Bool)
 (assert
  (not (=>
    (= decrease%init0 (vstd.set.impl&%0.len.? A&. A& self!))
    (=>
     (ens%vstd.set_lib.lemma_set_properties. A&. A&)
     (or
      (and
       (=>
        (= (vstd.set.impl&%0.len.? A&. A& self!) 1)
        (=>
         (= x@ (as_type (%%choose%%0 A& A&. A& self! A&. A& self!) A&))
         (=>
          (= tmp%1 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.remove.? A&. A&
             self! x@
            ) (vstd.set.impl&%0.empty.? A&. A&)
          ))
          (and
           (=>
            %%location_label%%0
            tmp%1
           )
           (=>
            tmp%1
            (=>
             (= tmp%2 (vstd.set.impl&%0.contains.? A&. A& self! (vstd.set_lib.impl&%0.find_unique_maximal.?
                A&. A& self! (Poly%fun%2. r!)
             )))
             (and
              (=>
               %%location_label%%1
               tmp%2
              )
              (=>
               tmp%2
               %%switch_label%%0
       ))))))))
       (=>
        (not (= (vstd.set.impl&%0.len.? A&. A& self!) 1))
        (=>
         (= x$2@ (as_type (%%choose%%0 A& A&. A& self! A&. A& self!) A&))
         (=>
          (= tmp%3 (vstd.set.impl&%0.remove.? A&. A& self! x$2@))
          (and
           (=>
            %%location_label%%2
            (check_decrease_int (let
              ((self!$0 tmp%3) (r!$1 r!))
              (vstd.set.impl&%0.len.? A&. A& self!$0)
             ) decrease%init0 false
           ))
           (and
            (=>
             %%location_label%%3
             (req%vstd.set_lib.impl&%0.find_unique_maximal_ensures. A&. A& tmp%3 r!)
            )
            (=>
             (ens%vstd.set_lib.impl&%0.find_unique_maximal_ensures. A&. A& tmp%3 r!)
             (=>
              (= tmp%4 (vstd.relations.is_maximal.? A&. A& (Poly%fun%2. r!) (vstd.set_lib.impl&%0.find_unique_maximal.?
                 A&. A& (vstd.set.impl&%0.remove.? A&. A& self! x$2@) (Poly%fun%2. r!)
                ) (vstd.set.impl&%0.remove.? A&. A& self! x$2@)
              ))
              (and
               (=>
                %%location_label%%4
                tmp%4
               )
               (=>
                tmp%4
                (=>
                 (= tmp%5 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.insert.? A&. A&
                    (vstd.set.impl&%0.remove.? A&. A& self! x$2@) x$2@
                   ) self!
                 ))
                 (and
                  (=>
                   %%location_label%%5
                   tmp%5
                  )
                  (=>
                   tmp%5
                   (=>
                    (= y@ (vstd.set_lib.impl&%0.find_unique_maximal.? A&. A& (vstd.set.impl&%0.remove.?
                       A&. A& self! x$2@
                      ) (Poly%fun%2. r!)
                    ))
                    (=>
                     (= max_updated@ (vstd.set_lib.impl&%0.find_unique_maximal.? A&. A& self! (Poly%fun%2.
                        r!
                     )))
                     (=>
                      (= tmp%6 (or
                        (= max_updated@ x$2@)
                        (= max_updated@ y@)
                      ))
                      (and
                       (=>
                        %%location_label%%6
                        tmp%6
                       )
                       (=>
                        tmp%6
                        (=>
                         (= tmp%7 (=>
                           (not (%B (%%apply%%1 r! x$2@ y@)))
                           (= max_updated@ x$2@)
                         ))
                         (and
                          (=>
                           %%location_label%%7
                           tmp%7
                          )
                          (=>
                           tmp%7
                           (and
                            (=>
                             (has_type elt@ A&)
                             (=>
                              (and
                               (vstd.set.impl&%0.contains.? A&. A& self! elt@)
                               (%B (%%apply%%1 r! max_updated@ elt@))
                              )
                              (=>
                               (= tmp%8 (or
                                 (%B (%%apply%%1 r! x$2@ max_updated@))
                                 (%B (%%apply%%1 r! y@ max_updated@))
                               ))
                               (and
                                (=>
                                 %%location_label%%8
                                 tmp%8
                                )
                                (=>
                                 tmp%8
                                 (or
                                  (and
                                   (=>
                                    (= max_updated@ y@)
                                    (=>
                                     (= tmp%9 (%B (%%apply%%1 r! elt@ max_updated@)))
                                     (and
                                      (=>
                                       %%location_label%%9
                                       tmp%9
                                      )
                                      (=>
                                       tmp%9
                                       (=>
                                        (= tmp%10 (%B (%%apply%%1 r! x$2@ max_updated@)))
                                        (and
                                         (=>
                                          %%location_label%%10
                                          tmp%10
                                         )
                                         (=>
                                          tmp%10
                                          (=>
                                           (= tmp%11 (vstd.relations.is_maximal.? A&. A& (Poly%fun%2. r!) (vstd.set_lib.impl&%0.find_unique_maximal.?
                                              A&. A& self! (Poly%fun%2. r!)
                                             ) self!
                                           ))
                                           (and
                                            (=>
                                             %%location_label%%11
                                             tmp%11
                                            )
                                            (=>
                                             tmp%11
                                             %%switch_label%%1
                                   ))))))))))
                                   (=>
                                    (not (= max_updated@ y@))
                                    (=>
                                     (= tmp%12 (or
                                       (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.remove.? A&. A& self! x$2@)
                                        elt@
                                       )
                                       (= elt@ x$2@)
                                     ))
                                     (and
                                      (=>
                                       %%location_label%%12
                                       tmp%12
                                      )
                                      (=>
                                       tmp%12
                                       (=>
                                        (= tmp%13 (= max_updated@ x$2@))
                                        (and
                                         (=>
                                          %%location_label%%13
                                          tmp%13
                                         )
                                         (=>
                                          tmp%13
                                          (=>
                                           (= tmp%14 (or
                                             (%B (%%apply%%1 r! x$2@ y@))
                                             (%B (%%apply%%1 r! y@ x$2@))
                                           ))
                                           (and
                                            (=>
                                             %%location_label%%14
                                             tmp%14
                                            )
                                            (=>
                                             tmp%14
                                             (=>
                                              (= tmp%15 (or
                                                (not (%B (%%apply%%1 r! x$2@ y@)))
                                                (not (%B (%%apply%%1 r! y@ x$2@)))
                                              ))
                                              (and
                                               (=>
                                                %%location_label%%15
                                                tmp%15
                                               )
                                               (=>
                                                tmp%15
                                                (=>
                                                 (= tmp%16 (=>
                                                   (not (= max_updated@ y@))
                                                   (not (%B (%%apply%%1 r! x$2@ y@)))
                                                 ))
                                                 (and
                                                  (=>
                                                   %%location_label%%16
                                                   tmp%16
                                                  )
                                                  (=>
                                                   tmp%16
                                                   (=>
                                                    (= tmp%17 (%B (%%apply%%1 r! y@ x$2@)))
                                                    (and
                                                     (=>
                                                      %%location_label%%17
                                                      tmp%17
                                                     )
                                                     (=>
                                                      tmp%17
                                                      (or
                                                       (and
                                                        (=>
                                                         (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.remove.? A&. A& self! x$2@)
                                                          elt@
                                                         )
                                                         (=>
                                                          (= tmp%18 (=>
                                                            (%B (%%apply%%1 r! y@ elt@))
                                                            (%B (%%apply%%1 r! elt@ y@))
                                                          ))
                                                          (and
                                                           (=>
                                                            %%location_label%%18
                                                            tmp%18
                                                           )
                                                           (=>
                                                            tmp%18
                                                            (=>
                                                             (= tmp%19 (=>
                                                               (and
                                                                (%B (%%apply%%1 r! y@ elt@))
                                                                (%B (%%apply%%1 r! elt@ y@))
                                                               )
                                                               (= elt@ y@)
                                                             ))
                                                             (and
                                                              (=>
                                                               %%location_label%%19
                                                               tmp%19
                                                              )
                                                              (=>
                                                               tmp%19
                                                               (=>
                                                                (= tmp%20 (%B (%%apply%%1 r! elt@ x$2@)))
                                                                (and
                                                                 (=>
                                                                  %%location_label%%20
                                                                  tmp%20
                                                                 )
                                                                 (=>
                                                                  tmp%20
                                                                  (=>
                                                                   (= tmp%21 (%B (%%apply%%1 r! elt@ max_updated@)))
                                                                   (and
                                                                    (=>
                                                                     %%location_label%%21
                                                                     tmp%21
                                                                    )
                                                                    (=>
                                                                     tmp%21
                                                                     %%switch_label%%2
                                                        )))))))))))))
                                                        (=>
                                                         (not (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.remove.? A&. A& self! x$2@)
                                                           elt@
                                                         ))
                                                         %%switch_label%%2
                                                       ))
                                                       (and
                                                        (not %%switch_label%%2)
                                                        %%switch_label%%1
                                  ))))))))))))))))))))))
                                  (and
                                   (not %%switch_label%%1)
                                   (=>
                                    %%location_label%%22
                                    (%B (%%apply%%1 r! elt@ max_updated@))
                            ))))))))
                            (=>
                             (forall ((elt$ Poly)) (!
                               (=>
                                (has_type elt$ A&)
                                (=>
                                 (and
                                  (vstd.set.impl&%0.contains.? A&. A& self! elt$)
                                  (%B (%%apply%%1 r! max_updated@ elt$))
                                 )
                                 (%B (%%apply%%1 r! elt$ max_updated@))
                               ))
                               :pattern ((%%apply%%1 r! max_updated@ elt$) (%%apply%%1 r! elt$ max_updated@))
                               :qid user_crate__vstd__set__Set__find_unique_maximal_ensures_100
                               :skolemid skolem_user_crate__vstd__set__Set__find_unique_maximal_ensures_100
                             ))
                             (and
                              (=>
                               (has_type max_poss@ A&)
                               (=>
                                (vstd.relations.is_maximal.? A&. A& (Poly%fun%2. r!) max_poss@ self!)
                                (=>
                                 (= tmp%22 (or
                                   (vstd.relations.is_maximal.? A&. A& (Poly%fun%2. r!) max_poss@ (vstd.set.impl&%0.remove.?
                                     A&. A& self! x$2@
                                   ))
                                   (= x$2@ max_poss@)
                                 ))
                                 (and
                                  (=>
                                   %%location_label%%23
                                   tmp%22
                                  )
                                  (=>
                                   tmp%22
                                   (=>
                                    (= tmp%23 (%B (%%apply%%1 r! max_poss@ (vstd.set_lib.impl&%0.find_unique_maximal.? A&.
                                        A& self! (Poly%fun%2. r!)
                                    ))))
                                    (and
                                     (=>
                                      %%location_label%%24
                                      tmp%23
                                     )
                                     (=>
                                      tmp%23
                                      (=>
                                       (= tmp%24 (%B (%%apply%%1 r! (vstd.set_lib.impl&%0.find_unique_maximal.? A&. A& self!
                                           (Poly%fun%2. r!)
                                          ) max_poss@
                                       )))
                                       (and
                                        (=>
                                         %%location_label%%25
                                         tmp%24
                                        )
                                        (=>
                                         tmp%24
                                         (=>
                                          %%location_label%%26
                                          (= (vstd.set_lib.impl&%0.find_unique_maximal.? A&. A& self! (Poly%fun%2. r!)) max_poss@)
                              ))))))))))))
                              (=>
                               (forall ((max_poss$ Poly)) (!
                                 (=>
                                  (has_type max_poss$ A&)
                                  (=>
                                   (vstd.relations.is_maximal.? A&. A& (Poly%fun%2. r!) max_poss$ self!)
                                   (= (vstd.set_lib.impl&%0.find_unique_maximal.? A&. A& self! (Poly%fun%2. r!)) max_poss$)
                                 ))
                                 :pattern ((vstd.relations.is_maximal.? A&. A& (Poly%fun%2. r!) max_poss$ self!))
                                 :qid user_crate__vstd__set__Set__find_unique_maximal_ensures_101
                                 :skolemid skolem_user_crate__vstd__set__Set__find_unique_maximal_ensures_101
                               ))
                               %%switch_label%%0
      )))))))))))))))))))))))))
      (and
       (not %%switch_label%%0)
       (=>
        %%location_label%%27
        (and
         (vstd.relations.is_maximal.? A&. A& (Poly%fun%2. r!) (vstd.set_lib.impl&%0.find_unique_maximal.?
           A&. A& self! (Poly%fun%2. r!)
          ) self!
         )
         (forall ((max$ Poly)) (!
           (=>
            (has_type max$ A&)
            (=>
             (vstd.relations.is_maximal.? A&. A& (Poly%fun%2. r!) max$ self!)
             (= (vstd.set_lib.impl&%0.find_unique_maximal.? A&. A& self! (Poly%fun%2. r!)) max$)
           ))
           :pattern ((vstd.relations.is_maximal.? A&. A& (Poly%fun%2. r!) max$ self!))
           :qid user_crate__vstd__set__Set__find_unique_maximal_ensures_97
           :skolemid skolem_user_crate__vstd__set__Set__find_unique_maximal_ensures_97
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set::Set::lemma_len0_is_empty
(declare-fun req%vstd.set_lib.impl&%0.lemma_len0_is_empty. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%25 Bool)
(declare-const %%global_location_label%%26 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (req%vstd.set_lib.impl&%0.lemma_len0_is_empty. A&. A& self!) (and
     (=>
      %%global_location_label%%25
      (vstd.set.impl&%0.finite.? A&. A& self!)
     )
     (=>
      %%global_location_label%%26
      (= (vstd.set.impl&%0.len.? A&. A& self!) 0)
   )))
   :pattern ((req%vstd.set_lib.impl&%0.lemma_len0_is_empty. A&. A& self!))
   :qid internal_req__vstd.set_lib.impl&__0.lemma_len0_is_empty._definition
   :skolemid skolem_internal_req__vstd.set_lib.impl&__0.lemma_len0_is_empty._definition
)))
(declare-fun ens%vstd.set_lib.impl&%0.lemma_len0_is_empty. (Dcr Type Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (ens%vstd.set_lib.impl&%0.lemma_len0_is_empty. A&. A& self!) (= self! (vstd.set.impl&%0.empty.?
      A&. A&
   )))
   :pattern ((ens%vstd.set_lib.impl&%0.lemma_len0_is_empty. A&. A& self!))
   :qid internal_ens__vstd.set_lib.impl&__0.lemma_len0_is_empty._definition
   :skolemid skolem_internal_ens__vstd.set_lib.impl&__0.lemma_len0_is_empty._definition
)))

;; Function-Def crate::vstd::set::Set::lemma_len0_is_empty
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:283:5: 283:43 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const self! Poly)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (vstd.set.impl&%0.finite.? A&. A& self!)
 )
 (assert
  (= (vstd.set.impl&%0.len.? A&. A& self!) 0)
 )
 (declare-const %%switch_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (or
    (and
     (=>
      (exists ((a$ Poly)) (!
        (and
         (has_type a$ A&)
         (vstd.set.impl&%0.contains.? A&. A& self! a$)
        )
        :pattern ((vstd.set.impl&%0.contains.? A&. A& self! a$))
        :qid user_crate__vstd__set__Set__lemma_len0_is_empty_102
        :skolemid skolem_user_crate__vstd__set__Set__lemma_len0_is_empty_102
      ))
      (=>
       (= tmp%1 (= (nClip (Add (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.remove.? A&. A&
             self! (vstd.set.impl&%0.choose.? A&. A& self!)
            )
           ) 1
          )
         ) 0
       ))
       (and
        (=>
         %%location_label%%0
         tmp%1
        )
        (=>
         tmp%1
         %%switch_label%%0
     ))))
     (=>
      (not (exists ((a$ Poly)) (!
         (and
          (has_type a$ A&)
          (vstd.set.impl&%0.contains.? A&. A& self! a$)
         )
         :pattern ((vstd.set.impl&%0.contains.? A&. A& self! a$))
         :qid user_crate__vstd__set__Set__lemma_len0_is_empty_102
         :skolemid skolem_user_crate__vstd__set__Set__lemma_len0_is_empty_102
      )))
      %%switch_label%%0
    ))
    (and
     (not %%switch_label%%0)
     (=>
      (= tmp%2 (ext_eq false (TYPE%vstd.set.Set. A&. A&) self! (vstd.set.impl&%0.empty.? A&.
         A&
      )))
      (and
       (=>
        %%location_label%%1
        tmp%2
       )
       (=>
        tmp%2
        (=>
         %%location_label%%2
         (= self! (vstd.set.impl&%0.empty.? A&. A&))
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set::Set::lemma_singleton_size
(declare-fun req%vstd.set_lib.impl&%0.lemma_singleton_size. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%27 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (req%vstd.set_lib.impl&%0.lemma_singleton_size. A&. A& self!) (=>
     %%global_location_label%%27
     (vstd.set_lib.impl&%0.is_singleton.? A&. A& self!)
   ))
   :pattern ((req%vstd.set_lib.impl&%0.lemma_singleton_size. A&. A& self!))
   :qid internal_req__vstd.set_lib.impl&__0.lemma_singleton_size._definition
   :skolemid skolem_internal_req__vstd.set_lib.impl&__0.lemma_singleton_size._definition
)))
(declare-fun ens%vstd.set_lib.impl&%0.lemma_singleton_size. (Dcr Type Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (ens%vstd.set_lib.impl&%0.lemma_singleton_size. A&. A& self!) (= (vstd.set.impl&%0.len.?
      A&. A& self!
     ) 1
   ))
   :pattern ((ens%vstd.set_lib.impl&%0.lemma_singleton_size. A&. A& self!))
   :qid internal_ens__vstd.set_lib.impl&__0.lemma_singleton_size._definition
   :skolemid skolem_internal_ens__vstd.set_lib.impl&__0.lemma_singleton_size._definition
)))

;; Function-Def crate::vstd::set::Set::lemma_singleton_size
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:298:5: 298:44 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const self! Poly)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (vstd.set_lib.impl&%0.is_singleton.? A&. A& self!)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (ens%vstd.set_lib.lemma_set_properties. A&. A&)
    (=>
     (= tmp%1 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.remove.? A&. A&
        self! (vstd.set.impl&%0.choose.? A&. A& self!)
       ) (vstd.set.impl&%0.empty.? A&. A&)
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
        (= (vstd.set.impl&%0.len.? A&. A& self!) 1)
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set::Set::lemma_is_singleton
(declare-fun req%vstd.set_lib.impl&%0.lemma_is_singleton. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%28 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly)) (!
   (= (req%vstd.set_lib.impl&%0.lemma_is_singleton. A&. A& s!) (=>
     %%global_location_label%%28
     (vstd.set.impl&%0.finite.? A&. A& s!)
   ))
   :pattern ((req%vstd.set_lib.impl&%0.lemma_is_singleton. A&. A& s!))
   :qid internal_req__vstd.set_lib.impl&__0.lemma_is_singleton._definition
   :skolemid skolem_internal_req__vstd.set_lib.impl&__0.lemma_is_singleton._definition
)))
(declare-fun ens%vstd.set_lib.impl&%0.lemma_is_singleton. (Dcr Type Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly)) (!
   (= (ens%vstd.set_lib.impl&%0.lemma_is_singleton. A&. A& s!) (= (vstd.set_lib.impl&%0.is_singleton.?
      A&. A& s!
     ) (= (vstd.set.impl&%0.len.? A&. A& s!) 1)
   ))
   :pattern ((ens%vstd.set_lib.impl&%0.lemma_is_singleton. A&. A& s!))
   :qid internal_ens__vstd.set_lib.impl&__0.lemma_is_singleton._definition
   :skolemid skolem_internal_ens__vstd.set_lib.impl&__0.lemma_is_singleton._definition
)))

;; Function-Def crate::vstd::set::Set::lemma_is_singleton
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:309:5: 309:47 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s! Poly)
 (declare-const x@ Poly)
 (declare-const y@ Poly)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const x$1@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (vstd.set.impl&%0.finite.? A&. A& s!)
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 (assert
  (not (or
    (and
     (=>
      (vstd.set_lib.impl&%0.is_singleton.? A&. A& s!)
      (and
       (=>
        %%location_label%%0
        (req%vstd.set_lib.impl&%0.lemma_singleton_size. A&. A& s!)
       )
       (=>
        (ens%vstd.set_lib.impl&%0.lemma_singleton_size. A&. A& s!)
        %%switch_label%%1
     )))
     (=>
      (not (vstd.set_lib.impl&%0.is_singleton.? A&. A& s!))
      %%switch_label%%1
    ))
    (and
     (not %%switch_label%%1)
     (or
      (and
       (=>
        (= (vstd.set.impl&%0.len.? A&. A& s!) 1)
        (and
         (=>
          (has_type x@ A&)
          (=>
           (has_type y@ A&)
           (=>
            (and
             (vstd.set.impl&%0.contains.? A&. A& s! x@)
             (vstd.set.impl&%0.contains.? A&. A& s! y@)
            )
            (=>
             (= x$1@ (as_type (%%choose%%0 A& A&. A& s! A&. A& s!) A&))
             (=>
              (ens%vstd.set_lib.lemma_set_properties. A&. A&)
              (=>
               (= tmp%1 (= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s! x$1@))
                 0
               ))
               (and
                (=>
                 %%location_label%%1
                 tmp%1
                )
                (=>
                 tmp%1
                 (=>
                  (= tmp%2 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.insert.? A&. A&
                     s! x$1@
                    ) s!
                  ))
                  (and
                   (=>
                    %%location_label%%2
                    tmp%2
                   )
                   (=>
                    tmp%2
                    (=>
                     %%location_label%%3
                     (= x@ y@)
         ))))))))))))
         (=>
          (forall ((x$ Poly) (y$ Poly)) (!
            (=>
             (and
              (has_type x$ A&)
              (has_type y$ A&)
             )
             (=>
              (and
               (vstd.set.impl&%0.contains.? A&. A& s! x$)
               (vstd.set.impl&%0.contains.? A&. A& s! y$)
              )
              (= x$ y$)
            ))
            :pattern ((vstd.set.impl&%0.contains.? A&. A& s! x$) (vstd.set.impl&%0.contains.? A&.
              A& s! y$
            ))
            :qid user_crate__vstd__set__Set__lemma_is_singleton_104
            :skolemid skolem_user_crate__vstd__set__Set__lemma_is_singleton_104
          ))
          %%switch_label%%0
       )))
       (=>
        (not (= (vstd.set.impl&%0.len.? A&. A& s!) 1))
        %%switch_label%%0
      ))
      (and
       (not %%switch_label%%0)
       (=>
        %%location_label%%4
        (= (vstd.set_lib.impl&%0.is_singleton.? A&. A& s!) (= (vstd.set.impl&%0.len.? A&. A&
           s!
          ) 1
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set_lib::lemma_len_intersect
(declare-fun req%vstd.set_lib.lemma_len_intersect. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%29 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
   (= (req%vstd.set_lib.lemma_len_intersect. A&. A& s1! s2!) (=>
     %%global_location_label%%29
     (vstd.set.impl&%0.finite.? A&. A& s1!)
   ))
   :pattern ((req%vstd.set_lib.lemma_len_intersect. A&. A& s1! s2!))
   :qid internal_req__vstd.set_lib.lemma_len_intersect._definition
   :skolemid skolem_internal_req__vstd.set_lib.lemma_len_intersect._definition
)))
(declare-fun ens%vstd.set_lib.lemma_len_intersect. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
   (= (ens%vstd.set_lib.lemma_len_intersect. A&. A& s1! s2!) (<= (vstd.set.impl&%0.len.?
      A&. A& (vstd.set.impl&%0.intersect.? A&. A& s1! s2!)
     ) (vstd.set.impl&%0.len.? A&. A& s1!)
   ))
   :pattern ((ens%vstd.set_lib.lemma_len_intersect. A&. A& s1! s2!))
   :qid internal_ens__vstd.set_lib.lemma_len_intersect._definition
   :skolemid skolem_internal_ens__vstd.set_lib.lemma_len_intersect._definition
)))

;; Function-Def crate::vstd::set_lib::lemma_len_intersect
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:494:1: 494:60 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s1! Poly)
 (declare-const s2! Poly)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Poly)
 (declare-const a@ Poly)
 (declare-const decrease%init0 Int)
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
 (declare-const %%switch_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 (assert
  (not (=>
    (= decrease%init0 (vstd.set.impl&%0.len.? A&. A& s1!))
    (or
     (and
      (=>
       (vstd.set_lib.impl&%0.is_empty.? A&. A& s1!)
       (=>
        (= tmp%1 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.intersect.? A&.
           A& s1! s2!
          ) s1!
        ))
        (and
         (=>
          %%location_label%%0
          tmp%1
         )
         (=>
          tmp%1
          %%switch_label%%0
      ))))
      (=>
       (not (vstd.set_lib.impl&%0.is_empty.? A&. A& s1!))
       (=>
        (= a@ (vstd.set.impl&%0.choose.? A&. A& s1!))
        (=>
         (= tmp%2 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.remove.? A&. A&
            (vstd.set.impl&%0.intersect.? A&. A& s1! s2!) a@
           ) (vstd.set.impl&%0.intersect.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s1! a@) s2!)
         ))
         (and
          (=>
           %%location_label%%1
           tmp%2
          )
          (=>
           tmp%2
           (=>
            (= tmp%3 (vstd.set.impl&%0.remove.? A&. A& s1! a@))
            (and
             (=>
              %%location_label%%2
              (check_decrease_int (let
                ((s1!$0 tmp%3) (s2!$1 s2!))
                (vstd.set.impl&%0.len.? A&. A& s1!$0)
               ) decrease%init0 false
             ))
             (and
              (=>
               %%location_label%%3
               (req%vstd.set_lib.lemma_len_intersect. A&. A& tmp%3 s2!)
              )
              (=>
               (ens%vstd.set_lib.lemma_len_intersect. A&. A& tmp%3 s2!)
               %%switch_label%%0
     ))))))))))
     (and
      (not %%switch_label%%0)
      (=>
       %%location_label%%4
       (<= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& s1! s2!))
        (vstd.set.impl&%0.len.? A&. A& s1!)
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set::Set::lemma_len_filter
(declare-fun req%vstd.set_lib.impl&%0.lemma_len_filter. (Dcr Type Poly %%Function%%)
 Bool
)
(declare-const %%global_location_label%%30 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (f! %%Function%%)) (!
   (= (req%vstd.set_lib.impl&%0.lemma_len_filter. A&. A& self! f!) (=>
     %%global_location_label%%30
     (vstd.set.impl&%0.finite.? A&. A& self!)
   ))
   :pattern ((req%vstd.set_lib.impl&%0.lemma_len_filter. A&. A& self! f!))
   :qid internal_req__vstd.set_lib.impl&__0.lemma_len_filter._definition
   :skolemid skolem_internal_req__vstd.set_lib.impl&__0.lemma_len_filter._definition
)))
(declare-fun ens%vstd.set_lib.impl&%0.lemma_len_filter. (Dcr Type Poly %%Function%%)
 Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (f! %%Function%%)) (!
   (= (ens%vstd.set_lib.impl&%0.lemma_len_filter. A&. A& self! f!) (and
     (vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.filter.? A&. A& $ (TYPE%fun%1. A&.
        A& $ BOOL
       ) self! (Poly%fun%1. f!)
     ))
     (<= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.filter.? A&. A& $ (TYPE%fun%1. A&.
         A& $ BOOL
        ) self! (Poly%fun%1. f!)
       )
      ) (vstd.set.impl&%0.len.? A&. A& self!)
   )))
   :pattern ((ens%vstd.set_lib.impl&%0.lemma_len_filter. A&. A& self! f!))
   :qid internal_ens__vstd.set_lib.impl&__0.lemma_len_filter._definition
   :skolemid skolem_internal_ens__vstd.set_lib.impl&__0.lemma_len_filter._definition
)))

;; Function-Def crate::vstd::set::Set::lemma_len_filter
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:329:5: 329:63 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const self! Poly)
 (declare-const f! %%Function%%)
 (declare-const tmp%1 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type (Poly%fun%1. f!) (TYPE%fun%1. A&. A& $ BOOL))
 )
 (assert
  (vstd.set.impl&%0.finite.? A&. A& self!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (= tmp%1 (vstd.set.impl&%0.new.? A&. A& $ (TYPE%fun%1. A&. A& $ BOOL) (Poly%fun%1. f!)))
    (and
     (=>
      %%location_label%%0
      (req%vstd.set_lib.lemma_len_intersect. A&. A& self! tmp%1)
     )
     (=>
      (ens%vstd.set_lib.lemma_len_intersect. A&. A& self! tmp%1)
      (and
       (=>
        %%location_label%%1
        (vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.filter.? A&. A& $ (TYPE%fun%1. A&.
           A& $ BOOL
          ) self! (Poly%fun%1. f!)
       )))
       (=>
        %%location_label%%2
        (<= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.filter.? A&. A& $ (TYPE%fun%1. A&.
            A& $ BOOL
           ) self! (Poly%fun%1. f!)
          )
         ) (vstd.set.impl&%0.len.? A&. A& self!)
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set::Set::lemma_greatest_implies_maximal
(declare-fun req%vstd.set_lib.impl&%0.lemma_greatest_implies_maximal. (Dcr Type Poly
  %%Function%% Poly
 ) Bool
)
(declare-const %%global_location_label%%31 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! %%Function%%) (max! Poly)) (!
   (= (req%vstd.set_lib.impl&%0.lemma_greatest_implies_maximal. A&. A& self! r! max!)
    (=>
     %%global_location_label%%31
     (vstd.relations.pre_ordering.? A&. A& (Poly%fun%2. r!))
   ))
   :pattern ((req%vstd.set_lib.impl&%0.lemma_greatest_implies_maximal. A&. A& self! r!
     max!
   ))
   :qid internal_req__vstd.set_lib.impl&__0.lemma_greatest_implies_maximal._definition
   :skolemid skolem_internal_req__vstd.set_lib.impl&__0.lemma_greatest_implies_maximal._definition
)))
(declare-fun ens%vstd.set_lib.impl&%0.lemma_greatest_implies_maximal. (Dcr Type Poly
  %%Function%% Poly
 ) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! %%Function%%) (max! Poly)) (!
   (= (ens%vstd.set_lib.impl&%0.lemma_greatest_implies_maximal. A&. A& self! r! max!)
    (=>
     (vstd.relations.is_greatest.? A&. A& (Poly%fun%2. r!) max! self!)
     (vstd.relations.is_maximal.? A&. A& (Poly%fun%2. r!) max! self!)
   ))
   :pattern ((ens%vstd.set_lib.impl&%0.lemma_greatest_implies_maximal. A&. A& self! r!
     max!
   ))
   :qid internal_ens__vstd.set_lib.impl&__0.lemma_greatest_implies_maximal._definition
   :skolemid skolem_internal_ens__vstd.set_lib.impl&__0.lemma_greatest_implies_maximal._definition
)))

;; Function-Def crate::vstd::set::Set::lemma_greatest_implies_maximal
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:341:5: 341:88 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const self! Poly)
 (declare-const r! %%Function%%)
 (declare-const max! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type (Poly%fun%2. r!) (TYPE%fun%2. A&. A& A&. A& $ BOOL))
 )
 (assert
  (has_type max! A&)
 )
 (assert
  (vstd.relations.pre_ordering.? A&. A& (Poly%fun%2. r!))
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (=>
     (vstd.relations.is_greatest.? A&. A& (Poly%fun%2. r!) max! self!)
     (vstd.relations.is_maximal.? A&. A& (Poly%fun%2. r!) max! self!)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set::Set::lemma_least_implies_minimal
(declare-fun req%vstd.set_lib.impl&%0.lemma_least_implies_minimal. (Dcr Type Poly %%Function%%
  Poly
 ) Bool
)
(declare-const %%global_location_label%%32 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! %%Function%%) (min! Poly)) (!
   (= (req%vstd.set_lib.impl&%0.lemma_least_implies_minimal. A&. A& self! r! min!) (=>
     %%global_location_label%%32
     (vstd.relations.pre_ordering.? A&. A& (Poly%fun%2. r!))
   ))
   :pattern ((req%vstd.set_lib.impl&%0.lemma_least_implies_minimal. A&. A& self! r! min!))
   :qid internal_req__vstd.set_lib.impl&__0.lemma_least_implies_minimal._definition
   :skolemid skolem_internal_req__vstd.set_lib.impl&__0.lemma_least_implies_minimal._definition
)))
(declare-fun ens%vstd.set_lib.impl&%0.lemma_least_implies_minimal. (Dcr Type Poly %%Function%%
  Poly
 ) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! %%Function%%) (min! Poly)) (!
   (= (ens%vstd.set_lib.impl&%0.lemma_least_implies_minimal. A&. A& self! r! min!) (=>
     (vstd.relations.is_least.? A&. A& (Poly%fun%2. r!) min! self!)
     (vstd.relations.is_minimal.? A&. A& (Poly%fun%2. r!) min! self!)
   ))
   :pattern ((ens%vstd.set_lib.impl&%0.lemma_least_implies_minimal. A&. A& self! r! min!))
   :qid internal_ens__vstd.set_lib.impl&__0.lemma_least_implies_minimal._definition
   :skolemid skolem_internal_ens__vstd.set_lib.impl&__0.lemma_least_implies_minimal._definition
)))

;; Function-Def crate::vstd::set::Set::lemma_least_implies_minimal
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:350:5: 350:85 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const self! Poly)
 (declare-const r! %%Function%%)
 (declare-const min! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type (Poly%fun%2. r!) (TYPE%fun%2. A&. A& A&. A& $ BOOL))
 )
 (assert
  (has_type min! A&)
 )
 (assert
  (vstd.relations.pre_ordering.? A&. A& (Poly%fun%2. r!))
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (=>
     (vstd.relations.is_least.? A&. A& (Poly%fun%2. r!) min! self!)
     (vstd.relations.is_minimal.? A&. A& (Poly%fun%2. r!) min! self!)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set::Set::lemma_maximal_equivalent_greatest
(declare-fun req%vstd.set_lib.impl&%0.lemma_maximal_equivalent_greatest. (Dcr Type
  Poly %%Function%% Poly
 ) Bool
)
(declare-const %%global_location_label%%33 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! %%Function%%) (max! Poly)) (!
   (= (req%vstd.set_lib.impl&%0.lemma_maximal_equivalent_greatest. A&. A& self! r! max!)
    (=>
     %%global_location_label%%33
     (vstd.relations.total_ordering.? A&. A& (Poly%fun%2. r!))
   ))
   :pattern ((req%vstd.set_lib.impl&%0.lemma_maximal_equivalent_greatest. A&. A& self!
     r! max!
   ))
   :qid internal_req__vstd.set_lib.impl&__0.lemma_maximal_equivalent_greatest._definition
   :skolemid skolem_internal_req__vstd.set_lib.impl&__0.lemma_maximal_equivalent_greatest._definition
)))
(declare-fun ens%vstd.set_lib.impl&%0.lemma_maximal_equivalent_greatest. (Dcr Type
  Poly %%Function%% Poly
 ) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! %%Function%%) (max! Poly)) (!
   (= (ens%vstd.set_lib.impl&%0.lemma_maximal_equivalent_greatest. A&. A& self! r! max!)
    (= (vstd.relations.is_greatest.? A&. A& (Poly%fun%2. r!) max! self!) (vstd.relations.is_maximal.?
      A&. A& (Poly%fun%2. r!) max! self!
   )))
   :pattern ((ens%vstd.set_lib.impl&%0.lemma_maximal_equivalent_greatest. A&. A& self!
     r! max!
   ))
   :qid internal_ens__vstd.set_lib.impl&__0.lemma_maximal_equivalent_greatest._definition
   :skolemid skolem_internal_ens__vstd.set_lib.impl&__0.lemma_maximal_equivalent_greatest._definition
)))

;; Function-Def crate::vstd::set::Set::lemma_maximal_equivalent_greatest
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:359:5: 359:91 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const self! Poly)
 (declare-const r! %%Function%%)
 (declare-const max! Poly)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type (Poly%fun%2. r!) (TYPE%fun%2. A&. A& A&. A& $ BOOL))
 )
 (assert
  (has_type max! A&)
 )
 (assert
  (vstd.relations.total_ordering.? A&. A& (Poly%fun%2. r!))
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= tmp%1 (=>
      (vstd.relations.is_maximal.? A&. A& (Poly%fun%2. r!) max! self!)
      (forall ((x$ Poly)) (!
        (=>
         (has_type x$ A&)
         (or
          (or
           (not (vstd.set.impl&%0.contains.? A&. A& self! x$))
           (not (%B (%%apply%%1 r! max! x$)))
          )
          (%B (%%apply%%1 r! x$ max!))
        ))
        :pattern ((vstd.set.impl&%0.contains.? A&. A& self! x$))
        :qid user_crate__vstd__set__Set__lemma_maximal_equivalent_greatest_105
        :skolemid skolem_user_crate__vstd__set__Set__lemma_maximal_equivalent_greatest_105
    ))))
    (and
     (=>
      %%location_label%%0
      tmp%1
     )
     (=>
      tmp%1
      (=>
       %%location_label%%1
       (= (vstd.relations.is_greatest.? A&. A& (Poly%fun%2. r!) max! self!) (vstd.relations.is_maximal.?
         A&. A& (Poly%fun%2. r!) max! self!
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set::Set::lemma_minimal_equivalent_least
(declare-fun req%vstd.set_lib.impl&%0.lemma_minimal_equivalent_least. (Dcr Type Poly
  %%Function%% Poly
 ) Bool
)
(declare-const %%global_location_label%%34 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! %%Function%%) (min! Poly)) (!
   (= (req%vstd.set_lib.impl&%0.lemma_minimal_equivalent_least. A&. A& self! r! min!)
    (=>
     %%global_location_label%%34
     (vstd.relations.total_ordering.? A&. A& (Poly%fun%2. r!))
   ))
   :pattern ((req%vstd.set_lib.impl&%0.lemma_minimal_equivalent_least. A&. A& self! r!
     min!
   ))
   :qid internal_req__vstd.set_lib.impl&__0.lemma_minimal_equivalent_least._definition
   :skolemid skolem_internal_req__vstd.set_lib.impl&__0.lemma_minimal_equivalent_least._definition
)))
(declare-fun ens%vstd.set_lib.impl&%0.lemma_minimal_equivalent_least. (Dcr Type Poly
  %%Function%% Poly
 ) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! %%Function%%) (min! Poly)) (!
   (= (ens%vstd.set_lib.impl&%0.lemma_minimal_equivalent_least. A&. A& self! r! min!)
    (= (vstd.relations.is_least.? A&. A& (Poly%fun%2. r!) min! self!) (vstd.relations.is_minimal.?
      A&. A& (Poly%fun%2. r!) min! self!
   )))
   :pattern ((ens%vstd.set_lib.impl&%0.lemma_minimal_equivalent_least. A&. A& self! r!
     min!
   ))
   :qid internal_ens__vstd.set_lib.impl&__0.lemma_minimal_equivalent_least._definition
   :skolemid skolem_internal_ens__vstd.set_lib.impl&__0.lemma_minimal_equivalent_least._definition
)))

;; Function-Def crate::vstd::set::Set::lemma_minimal_equivalent_least
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:370:5: 370:88 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const self! Poly)
 (declare-const r! %%Function%%)
 (declare-const min! Poly)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type (Poly%fun%2. r!) (TYPE%fun%2. A&. A& A&. A& $ BOOL))
 )
 (assert
  (has_type min! A&)
 )
 (assert
  (vstd.relations.total_ordering.? A&. A& (Poly%fun%2. r!))
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= tmp%1 (=>
      (vstd.relations.is_minimal.? A&. A& (Poly%fun%2. r!) min! self!)
      (forall ((x$ Poly)) (!
        (=>
         (has_type x$ A&)
         (or
          (or
           (not (vstd.set.impl&%0.contains.? A&. A& self! x$))
           (not (%B (%%apply%%1 r! x$ min!)))
          )
          (%B (%%apply%%1 r! min! x$))
        ))
        :pattern ((vstd.set.impl&%0.contains.? A&. A& self! x$))
        :qid user_crate__vstd__set__Set__lemma_minimal_equivalent_least_106
        :skolemid skolem_user_crate__vstd__set__Set__lemma_minimal_equivalent_least_106
    ))))
    (and
     (=>
      %%location_label%%0
      tmp%1
     )
     (=>
      tmp%1
      (=>
       %%location_label%%1
       (= (vstd.relations.is_least.? A&. A& (Poly%fun%2. r!) min! self!) (vstd.relations.is_minimal.?
         A&. A& (Poly%fun%2. r!) min! self!
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set::Set::lemma_least_is_unique
(declare-fun req%vstd.set_lib.impl&%0.lemma_least_is_unique. (Dcr Type Poly %%Function%%)
 Bool
)
(declare-const %%global_location_label%%35 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! %%Function%%)) (!
   (= (req%vstd.set_lib.impl&%0.lemma_least_is_unique. A&. A& self! r!) (=>
     %%global_location_label%%35
     (vstd.relations.partial_ordering.? A&. A& (Poly%fun%2. r!))
   ))
   :pattern ((req%vstd.set_lib.impl&%0.lemma_least_is_unique. A&. A& self! r!))
   :qid internal_req__vstd.set_lib.impl&__0.lemma_least_is_unique._definition
   :skolemid skolem_internal_req__vstd.set_lib.impl&__0.lemma_least_is_unique._definition
)))
(declare-fun ens%vstd.set_lib.impl&%0.lemma_least_is_unique. (Dcr Type Poly %%Function%%)
 Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! %%Function%%)) (!
   (= (ens%vstd.set_lib.impl&%0.lemma_least_is_unique. A&. A& self! r!) (forall ((min$ Poly)
      (min_prime$ Poly)
     ) (!
      (=>
       (and
        (has_type min$ A&)
        (has_type min_prime$ A&)
       )
       (=>
        (and
         (vstd.relations.is_least.? A&. A& (Poly%fun%2. r!) min$ self!)
         (vstd.relations.is_least.? A&. A& (Poly%fun%2. r!) min_prime$ self!)
        )
        (= min$ min_prime$)
      ))
      :pattern ((vstd.relations.is_least.? A&. A& (Poly%fun%2. r!) min$ self!) (vstd.relations.is_least.?
        A&. A& (Poly%fun%2. r!) min_prime$ self!
      ))
      :qid user_crate__vstd__set__Set__lemma_least_is_unique_107
      :skolemid skolem_user_crate__vstd__set__Set__lemma_least_is_unique_107
   )))
   :pattern ((ens%vstd.set_lib.impl&%0.lemma_least_is_unique. A&. A& self! r!))
   :qid internal_ens__vstd.set_lib.impl&__0.lemma_least_is_unique._definition
   :skolemid skolem_internal_ens__vstd.set_lib.impl&__0.lemma_least_is_unique._definition
)))

;; Function-Def crate::vstd::set::Set::lemma_least_is_unique
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:381:5: 381:71 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const self! Poly)
 (declare-const r! %%Function%%)
 (declare-const min@ Poly)
 (declare-const min_prime@ Poly)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type (Poly%fun%2. r!) (TYPE%fun%2. A&. A& A&. A& $ BOOL))
 )
 (assert
  (vstd.relations.partial_ordering.? A&. A& (Poly%fun%2. r!))
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
  (not (and
    (=>
     (has_type min@ A&)
     (=>
      (has_type min_prime@ A&)
      (=>
       (and
        (vstd.relations.is_least.? A&. A& (Poly%fun%2. r!) min@ self!)
        (vstd.relations.is_least.? A&. A& (Poly%fun%2. r!) min_prime@ self!)
       )
       (=>
        (= tmp%1 (%B (%%apply%%1 r! min@ min_prime@)))
        (and
         (=>
          %%location_label%%0
          tmp%1
         )
         (=>
          tmp%1
          (=>
           (= tmp%2 (%B (%%apply%%1 r! min_prime@ min@)))
           (and
            (=>
             %%location_label%%1
             tmp%2
            )
            (=>
             tmp%2
             (=>
              %%location_label%%2
              (= min@ min_prime@)
    ))))))))))
    (=>
     (forall ((min$ Poly) (min_prime$ Poly)) (!
       (=>
        (and
         (has_type min$ A&)
         (has_type min_prime$ A&)
        )
        (=>
         (and
          (vstd.relations.is_least.? A&. A& (Poly%fun%2. r!) min$ self!)
          (vstd.relations.is_least.? A&. A& (Poly%fun%2. r!) min_prime$ self!)
         )
         (= min$ min_prime$)
       ))
       :pattern ((vstd.relations.is_least.? A&. A& (Poly%fun%2. r!) min$ self!) (vstd.relations.is_least.?
         A&. A& (Poly%fun%2. r!) min_prime$ self!
       ))
       :qid user_crate__vstd__set__Set__lemma_least_is_unique_109
       :skolemid skolem_user_crate__vstd__set__Set__lemma_least_is_unique_109
     ))
     (=>
      %%location_label%%3
      (forall ((min$ Poly) (min_prime$ Poly)) (!
        (=>
         (and
          (has_type min$ A&)
          (has_type min_prime$ A&)
         )
         (=>
          (and
           (vstd.relations.is_least.? A&. A& (Poly%fun%2. r!) min$ self!)
           (vstd.relations.is_least.? A&. A& (Poly%fun%2. r!) min_prime$ self!)
          )
          (= min$ min_prime$)
        ))
        :pattern ((vstd.relations.is_least.? A&. A& (Poly%fun%2. r!) min$ self!) (vstd.relations.is_least.?
          A&. A& (Poly%fun%2. r!) min_prime$ self!
        ))
        :qid user_crate__vstd__set__Set__lemma_least_is_unique_108
        :skolemid skolem_user_crate__vstd__set__Set__lemma_least_is_unique_108
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set::Set::lemma_greatest_is_unique
(declare-fun req%vstd.set_lib.impl&%0.lemma_greatest_is_unique. (Dcr Type Poly %%Function%%)
 Bool
)
(declare-const %%global_location_label%%36 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! %%Function%%)) (!
   (= (req%vstd.set_lib.impl&%0.lemma_greatest_is_unique. A&. A& self! r!) (=>
     %%global_location_label%%36
     (vstd.relations.partial_ordering.? A&. A& (Poly%fun%2. r!))
   ))
   :pattern ((req%vstd.set_lib.impl&%0.lemma_greatest_is_unique. A&. A& self! r!))
   :qid internal_req__vstd.set_lib.impl&__0.lemma_greatest_is_unique._definition
   :skolemid skolem_internal_req__vstd.set_lib.impl&__0.lemma_greatest_is_unique._definition
)))
(declare-fun ens%vstd.set_lib.impl&%0.lemma_greatest_is_unique. (Dcr Type Poly %%Function%%)
 Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! %%Function%%)) (!
   (= (ens%vstd.set_lib.impl&%0.lemma_greatest_is_unique. A&. A& self! r!) (forall ((max$
       Poly
      ) (max_prime$ Poly)
     ) (!
      (=>
       (and
        (has_type max$ A&)
        (has_type max_prime$ A&)
       )
       (=>
        (and
         (vstd.relations.is_greatest.? A&. A& (Poly%fun%2. r!) max$ self!)
         (vstd.relations.is_greatest.? A&. A& (Poly%fun%2. r!) max_prime$ self!)
        )
        (= max$ max_prime$)
      ))
      :pattern ((vstd.relations.is_greatest.? A&. A& (Poly%fun%2. r!) max$ self!) (vstd.relations.is_greatest.?
        A&. A& (Poly%fun%2. r!) max_prime$ self!
      ))
      :qid user_crate__vstd__set__Set__lemma_greatest_is_unique_110
      :skolemid skolem_user_crate__vstd__set__Set__lemma_greatest_is_unique_110
   )))
   :pattern ((ens%vstd.set_lib.impl&%0.lemma_greatest_is_unique. A&. A& self! r!))
   :qid internal_ens__vstd.set_lib.impl&__0.lemma_greatest_is_unique._definition
   :skolemid skolem_internal_ens__vstd.set_lib.impl&__0.lemma_greatest_is_unique._definition
)))

;; Function-Def crate::vstd::set::Set::lemma_greatest_is_unique
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:396:5: 396:74 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const self! Poly)
 (declare-const r! %%Function%%)
 (declare-const max@ Poly)
 (declare-const max_prime@ Poly)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type (Poly%fun%2. r!) (TYPE%fun%2. A&. A& A&. A& $ BOOL))
 )
 (assert
  (vstd.relations.partial_ordering.? A&. A& (Poly%fun%2. r!))
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
  (not (and
    (=>
     (has_type max@ A&)
     (=>
      (has_type max_prime@ A&)
      (=>
       (and
        (vstd.relations.is_greatest.? A&. A& (Poly%fun%2. r!) max@ self!)
        (vstd.relations.is_greatest.? A&. A& (Poly%fun%2. r!) max_prime@ self!)
       )
       (=>
        (= tmp%1 (%B (%%apply%%1 r! max_prime@ max@)))
        (and
         (=>
          %%location_label%%0
          tmp%1
         )
         (=>
          tmp%1
          (=>
           (= tmp%2 (%B (%%apply%%1 r! max@ max_prime@)))
           (and
            (=>
             %%location_label%%1
             tmp%2
            )
            (=>
             tmp%2
             (=>
              %%location_label%%2
              (= max@ max_prime@)
    ))))))))))
    (=>
     (forall ((max$ Poly) (max_prime$ Poly)) (!
       (=>
        (and
         (has_type max$ A&)
         (has_type max_prime$ A&)
        )
        (=>
         (and
          (vstd.relations.is_greatest.? A&. A& (Poly%fun%2. r!) max$ self!)
          (vstd.relations.is_greatest.? A&. A& (Poly%fun%2. r!) max_prime$ self!)
         )
         (= max$ max_prime$)
       ))
       :pattern ((vstd.relations.is_greatest.? A&. A& (Poly%fun%2. r!) max$ self!) (vstd.relations.is_greatest.?
         A&. A& (Poly%fun%2. r!) max_prime$ self!
       ))
       :qid user_crate__vstd__set__Set__lemma_greatest_is_unique_112
       :skolemid skolem_user_crate__vstd__set__Set__lemma_greatest_is_unique_112
     ))
     (=>
      %%location_label%%3
      (forall ((max$ Poly) (max_prime$ Poly)) (!
        (=>
         (and
          (has_type max$ A&)
          (has_type max_prime$ A&)
         )
         (=>
          (and
           (vstd.relations.is_greatest.? A&. A& (Poly%fun%2. r!) max$ self!)
           (vstd.relations.is_greatest.? A&. A& (Poly%fun%2. r!) max_prime$ self!)
          )
          (= max$ max_prime$)
        ))
        :pattern ((vstd.relations.is_greatest.? A&. A& (Poly%fun%2. r!) max$ self!) (vstd.relations.is_greatest.?
          A&. A& (Poly%fun%2. r!) max_prime$ self!
        ))
        :qid user_crate__vstd__set__Set__lemma_greatest_is_unique_111
        :skolemid skolem_user_crate__vstd__set__Set__lemma_greatest_is_unique_111
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set::Set::lemma_minimal_is_unique
(declare-fun req%vstd.set_lib.impl&%0.lemma_minimal_is_unique. (Dcr Type Poly %%Function%%)
 Bool
)
(declare-const %%global_location_label%%37 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! %%Function%%)) (!
   (= (req%vstd.set_lib.impl&%0.lemma_minimal_is_unique. A&. A& self! r!) (=>
     %%global_location_label%%37
     (vstd.relations.total_ordering.? A&. A& (Poly%fun%2. r!))
   ))
   :pattern ((req%vstd.set_lib.impl&%0.lemma_minimal_is_unique. A&. A& self! r!))
   :qid internal_req__vstd.set_lib.impl&__0.lemma_minimal_is_unique._definition
   :skolemid skolem_internal_req__vstd.set_lib.impl&__0.lemma_minimal_is_unique._definition
)))
(declare-fun ens%vstd.set_lib.impl&%0.lemma_minimal_is_unique. (Dcr Type Poly %%Function%%)
 Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! %%Function%%)) (!
   (= (ens%vstd.set_lib.impl&%0.lemma_minimal_is_unique. A&. A& self! r!) (forall ((min$
       Poly
      ) (min_prime$ Poly)
     ) (!
      (=>
       (and
        (has_type min$ A&)
        (has_type min_prime$ A&)
       )
       (=>
        (and
         (vstd.relations.is_minimal.? A&. A& (Poly%fun%2. r!) min$ self!)
         (vstd.relations.is_minimal.? A&. A& (Poly%fun%2. r!) min_prime$ self!)
        )
        (= min$ min_prime$)
      ))
      :pattern ((vstd.relations.is_minimal.? A&. A& (Poly%fun%2. r!) min$ self!) (vstd.relations.is_minimal.?
        A&. A& (Poly%fun%2. r!) min_prime$ self!
      ))
      :qid user_crate__vstd__set__Set__lemma_minimal_is_unique_113
      :skolemid skolem_user_crate__vstd__set__Set__lemma_minimal_is_unique_113
   )))
   :pattern ((ens%vstd.set_lib.impl&%0.lemma_minimal_is_unique. A&. A& self! r!))
   :qid internal_ens__vstd.set_lib.impl&__0.lemma_minimal_is_unique._definition
   :skolemid skolem_internal_ens__vstd.set_lib.impl&__0.lemma_minimal_is_unique._definition
)))

;; Function-Def crate::vstd::set::Set::lemma_minimal_is_unique
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:412:5: 412:73 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const self! Poly)
 (declare-const r! %%Function%%)
 (declare-const min@ Poly)
 (declare-const min_prime@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type (Poly%fun%2. r!) (TYPE%fun%2. A&. A& A&. A& $ BOOL))
 )
 (assert
  (vstd.relations.total_ordering.? A&. A& (Poly%fun%2. r!))
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 (assert
  (not (and
    (=>
     (has_type min@ A&)
     (=>
      (has_type min_prime@ A&)
      (=>
       (and
        (vstd.relations.is_minimal.? A&. A& (Poly%fun%2. r!) min@ self!)
        (vstd.relations.is_minimal.? A&. A& (Poly%fun%2. r!) min_prime@ self!)
       )
       (and
        (=>
         %%location_label%%0
         (req%vstd.set_lib.impl&%0.lemma_minimal_equivalent_least. A&. A& self! r! min@)
        )
        (=>
         (ens%vstd.set_lib.impl&%0.lemma_minimal_equivalent_least. A&. A& self! r! min@)
         (and
          (=>
           %%location_label%%1
           (req%vstd.set_lib.impl&%0.lemma_minimal_equivalent_least. A&. A& self! r! min_prime@)
          )
          (=>
           (ens%vstd.set_lib.impl&%0.lemma_minimal_equivalent_least. A&. A& self! r! min_prime@)
           (and
            (=>
             %%location_label%%2
             (req%vstd.set_lib.impl&%0.lemma_least_is_unique. A&. A& self! r!)
            )
            (=>
             (ens%vstd.set_lib.impl&%0.lemma_least_is_unique. A&. A& self! r!)
             (=>
              %%location_label%%3
              (= min@ min_prime@)
    ))))))))))
    (=>
     (forall ((min$ Poly) (min_prime$ Poly)) (!
       (=>
        (and
         (has_type min$ A&)
         (has_type min_prime$ A&)
        )
        (=>
         (and
          (vstd.relations.is_minimal.? A&. A& (Poly%fun%2. r!) min$ self!)
          (vstd.relations.is_minimal.? A&. A& (Poly%fun%2. r!) min_prime$ self!)
         )
         (= min$ min_prime$)
       ))
       :pattern ((vstd.relations.is_minimal.? A&. A& (Poly%fun%2. r!) min$ self!) (vstd.relations.is_minimal.?
         A&. A& (Poly%fun%2. r!) min_prime$ self!
       ))
       :qid user_crate__vstd__set__Set__lemma_minimal_is_unique_115
       :skolemid skolem_user_crate__vstd__set__Set__lemma_minimal_is_unique_115
     ))
     (=>
      %%location_label%%4
      (forall ((min$ Poly) (min_prime$ Poly)) (!
        (=>
         (and
          (has_type min$ A&)
          (has_type min_prime$ A&)
         )
         (=>
          (and
           (vstd.relations.is_minimal.? A&. A& (Poly%fun%2. r!) min$ self!)
           (vstd.relations.is_minimal.? A&. A& (Poly%fun%2. r!) min_prime$ self!)
          )
          (= min$ min_prime$)
        ))
        :pattern ((vstd.relations.is_minimal.? A&. A& (Poly%fun%2. r!) min$ self!) (vstd.relations.is_minimal.?
          A&. A& (Poly%fun%2. r!) min_prime$ self!
        ))
        :qid user_crate__vstd__set__Set__lemma_minimal_is_unique_114
        :skolemid skolem_user_crate__vstd__set__Set__lemma_minimal_is_unique_114
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set::Set::lemma_maximal_is_unique
(declare-fun req%vstd.set_lib.impl&%0.lemma_maximal_is_unique. (Dcr Type Poly %%Function%%)
 Bool
)
(declare-const %%global_location_label%%38 Bool)
(declare-const %%global_location_label%%39 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! %%Function%%)) (!
   (= (req%vstd.set_lib.impl&%0.lemma_maximal_is_unique. A&. A& self! r!) (and
     (=>
      %%global_location_label%%38
      (vstd.set.impl&%0.finite.? A&. A& self!)
     )
     (=>
      %%global_location_label%%39
      (vstd.relations.total_ordering.? A&. A& (Poly%fun%2. r!))
   )))
   :pattern ((req%vstd.set_lib.impl&%0.lemma_maximal_is_unique. A&. A& self! r!))
   :qid internal_req__vstd.set_lib.impl&__0.lemma_maximal_is_unique._definition
   :skolemid skolem_internal_req__vstd.set_lib.impl&__0.lemma_maximal_is_unique._definition
)))
(declare-fun ens%vstd.set_lib.impl&%0.lemma_maximal_is_unique. (Dcr Type Poly %%Function%%)
 Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! %%Function%%)) (!
   (= (ens%vstd.set_lib.impl&%0.lemma_maximal_is_unique. A&. A& self! r!) (forall ((max$
       Poly
      ) (max_prime$ Poly)
     ) (!
      (=>
       (and
        (has_type max$ A&)
        (has_type max_prime$ A&)
       )
       (=>
        (and
         (vstd.relations.is_maximal.? A&. A& (Poly%fun%2. r!) max$ self!)
         (vstd.relations.is_maximal.? A&. A& (Poly%fun%2. r!) max_prime$ self!)
        )
        (= max$ max_prime$)
      ))
      :pattern ((vstd.relations.is_maximal.? A&. A& (Poly%fun%2. r!) max$ self!) (vstd.relations.is_maximal.?
        A&. A& (Poly%fun%2. r!) max_prime$ self!
      ))
      :qid user_crate__vstd__set__Set__lemma_maximal_is_unique_116
      :skolemid skolem_user_crate__vstd__set__Set__lemma_maximal_is_unique_116
   )))
   :pattern ((ens%vstd.set_lib.impl&%0.lemma_maximal_is_unique. A&. A& self! r!))
   :qid internal_ens__vstd.set_lib.impl&__0.lemma_maximal_is_unique._definition
   :skolemid skolem_internal_ens__vstd.set_lib.impl&__0.lemma_maximal_is_unique._definition
)))

;; Function-Def crate::vstd::set::Set::lemma_maximal_is_unique
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:428:5: 428:73 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const self! Poly)
 (declare-const r! %%Function%%)
 (declare-const max@ Poly)
 (declare-const max_prime@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type (Poly%fun%2. r!) (TYPE%fun%2. A&. A& A&. A& $ BOOL))
 )
 (assert
  (vstd.set.impl&%0.finite.? A&. A& self!)
 )
 (assert
  (vstd.relations.total_ordering.? A&. A& (Poly%fun%2. r!))
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 (assert
  (not (and
    (=>
     (has_type max@ A&)
     (=>
      (has_type max_prime@ A&)
      (=>
       (and
        (vstd.relations.is_maximal.? A&. A& (Poly%fun%2. r!) max@ self!)
        (vstd.relations.is_maximal.? A&. A& (Poly%fun%2. r!) max_prime@ self!)
       )
       (and
        (=>
         %%location_label%%0
         (req%vstd.set_lib.impl&%0.lemma_maximal_equivalent_greatest. A&. A& self! r! max@)
        )
        (=>
         (ens%vstd.set_lib.impl&%0.lemma_maximal_equivalent_greatest. A&. A& self! r! max@)
         (and
          (=>
           %%location_label%%1
           (req%vstd.set_lib.impl&%0.lemma_maximal_equivalent_greatest. A&. A& self! r! max_prime@)
          )
          (=>
           (ens%vstd.set_lib.impl&%0.lemma_maximal_equivalent_greatest. A&. A& self! r! max_prime@)
           (and
            (=>
             %%location_label%%2
             (req%vstd.set_lib.impl&%0.lemma_greatest_is_unique. A&. A& self! r!)
            )
            (=>
             (ens%vstd.set_lib.impl&%0.lemma_greatest_is_unique. A&. A& self! r!)
             (=>
              %%location_label%%3
              (= max@ max_prime@)
    ))))))))))
    (=>
     (forall ((max$ Poly) (max_prime$ Poly)) (!
       (=>
        (and
         (has_type max$ A&)
         (has_type max_prime$ A&)
        )
        (=>
         (and
          (vstd.relations.is_maximal.? A&. A& (Poly%fun%2. r!) max$ self!)
          (vstd.relations.is_maximal.? A&. A& (Poly%fun%2. r!) max_prime$ self!)
         )
         (= max$ max_prime$)
       ))
       :pattern ((vstd.relations.is_maximal.? A&. A& (Poly%fun%2. r!) max$ self!) (vstd.relations.is_maximal.?
         A&. A& (Poly%fun%2. r!) max_prime$ self!
       ))
       :qid user_crate__vstd__set__Set__lemma_maximal_is_unique_118
       :skolemid skolem_user_crate__vstd__set__Set__lemma_maximal_is_unique_118
     ))
     (=>
      %%location_label%%4
      (forall ((max$ Poly) (max_prime$ Poly)) (!
        (=>
         (and
          (has_type max$ A&)
          (has_type max_prime$ A&)
         )
         (=>
          (and
           (vstd.relations.is_maximal.? A&. A& (Poly%fun%2. r!) max$ self!)
           (vstd.relations.is_maximal.? A&. A& (Poly%fun%2. r!) max_prime$ self!)
          )
          (= max$ max_prime$)
        ))
        :pattern ((vstd.relations.is_maximal.? A&. A& (Poly%fun%2. r!) max$ self!) (vstd.relations.is_maximal.?
          A&. A& (Poly%fun%2. r!) max_prime$ self!
        ))
        :qid user_crate__vstd__set__Set__lemma_maximal_is_unique_117
        :skolemid skolem_user_crate__vstd__set__Set__lemma_maximal_is_unique_117
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set_lib::lemma_len_union
(declare-fun req%vstd.set_lib.lemma_len_union. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%40 Bool)
(declare-const %%global_location_label%%41 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
   (= (req%vstd.set_lib.lemma_len_union. A&. A& s1! s2!) (and
     (=>
      %%global_location_label%%40
      (vstd.set.impl&%0.finite.? A&. A& s1!)
     )
     (=>
      %%global_location_label%%41
      (vstd.set.impl&%0.finite.? A&. A& s2!)
   )))
   :pattern ((req%vstd.set_lib.lemma_len_union. A&. A& s1! s2!))
   :qid internal_req__vstd.set_lib.lemma_len_union._definition
   :skolemid skolem_internal_req__vstd.set_lib.lemma_len_union._definition
)))
(declare-fun ens%vstd.set_lib.lemma_len_union. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
   (= (ens%vstd.set_lib.lemma_len_union. A&. A& s1! s2!) (<= (vstd.set.impl&%0.len.? A&.
      A& (vstd.set.impl&%0.union.? A&. A& s1! s2!)
     ) (nClip (Add (vstd.set.impl&%0.len.? A&. A& s1!) (vstd.set.impl&%0.len.? A&. A& s2!)))
   ))
   :pattern ((ens%vstd.set_lib.lemma_len_union. A&. A& s1! s2!))
   :qid internal_ens__vstd.set_lib.lemma_len_union._definition
   :skolemid skolem_internal_ens__vstd.set_lib.lemma_len_union._definition
)))

;; Function-Def crate::vstd::set_lib::lemma_len_union
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:447:1: 447:56 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s1! Poly)
 (declare-const s2! Poly)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Poly)
 (declare-const a@ Poly)
 (declare-const decrease%init0 Int)
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
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%3 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%5 Bool)
 (assert
  (not (=>
    (= decrease%init0 (vstd.set.impl&%0.len.? A&. A& s1!))
    (or
     (and
      (=>
       (vstd.set_lib.impl&%0.is_empty.? A&. A& s1!)
       (=>
        (= tmp%1 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.union.? A&. A&
           s1! s2!
          ) s2!
        ))
        (and
         (=>
          %%location_label%%0
          tmp%1
         )
         (=>
          tmp%1
          %%switch_label%%0
      ))))
      (=>
       (not (vstd.set_lib.impl&%0.is_empty.? A&. A& s1!))
       (=>
        (= a@ (vstd.set.impl&%0.choose.? A&. A& s1!))
        (or
         (and
          (=>
           (vstd.set.impl&%0.contains.? A&. A& s2! a@)
           (=>
            (= tmp%2 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.union.? A&. A&
               s1! s2!
              ) (vstd.set.impl&%0.union.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s1! a@) s2!)
            ))
            (and
             (=>
              %%location_label%%1
              tmp%2
             )
             (=>
              tmp%2
              %%switch_label%%1
          ))))
          (=>
           (not (vstd.set.impl&%0.contains.? A&. A& s2! a@))
           (=>
            (= tmp%3 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.remove.? A&. A&
               (vstd.set.impl&%0.union.? A&. A& s1! s2!) a@
              ) (vstd.set.impl&%0.union.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s1! a@) s2!)
            ))
            (and
             (=>
              %%location_label%%2
              tmp%3
             )
             (=>
              tmp%3
              %%switch_label%%1
         )))))
         (and
          (not %%switch_label%%1)
          (=>
           (= tmp%4 (vstd.set.impl&%0.remove.? A&. A& s1! a@))
           (and
            (=>
             %%location_label%%3
             (check_decrease_int (let
               ((s1!$0 tmp%4) (s2!$1 s2!))
               (vstd.set.impl&%0.len.? A&. A& s1!$0)
              ) decrease%init0 false
            ))
            (and
             (=>
              %%location_label%%4
              (req%vstd.set_lib.lemma_len_union. A&. A& tmp%4 s2!)
             )
             (=>
              (ens%vstd.set_lib.lemma_len_union. A&. A& tmp%4 s2!)
              %%switch_label%%0
     )))))))))
     (and
      (not %%switch_label%%0)
      (=>
       %%location_label%%5
       (<= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.union.? A&. A& s1! s2!)) (nClip
         (Add (vstd.set.impl&%0.len.? A&. A& s1!) (vstd.set.impl&%0.len.? A&. A& s2!))
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set_lib::lemma_len_union_ind
(declare-fun req%vstd.set_lib.lemma_len_union_ind. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%42 Bool)
(declare-const %%global_location_label%%43 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
   (= (req%vstd.set_lib.lemma_len_union_ind. A&. A& s1! s2!) (and
     (=>
      %%global_location_label%%42
      (vstd.set.impl&%0.finite.? A&. A& s1!)
     )
     (=>
      %%global_location_label%%43
      (vstd.set.impl&%0.finite.? A&. A& s2!)
   )))
   :pattern ((req%vstd.set_lib.lemma_len_union_ind. A&. A& s1! s2!))
   :qid internal_req__vstd.set_lib.lemma_len_union_ind._definition
   :skolemid skolem_internal_req__vstd.set_lib.lemma_len_union_ind._definition
)))
(declare-fun ens%vstd.set_lib.lemma_len_union_ind. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
   (= (ens%vstd.set_lib.lemma_len_union_ind. A&. A& s1! s2!) (and
     (>= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.union.? A&. A& s1! s2!)) (vstd.set.impl&%0.len.?
       A&. A& s1!
     ))
     (>= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.union.? A&. A& s1! s2!)) (vstd.set.impl&%0.len.?
       A&. A& s2!
   ))))
   :pattern ((ens%vstd.set_lib.lemma_len_union_ind. A&. A& s1! s2!))
   :qid internal_ens__vstd.set_lib.lemma_len_union_ind._definition
   :skolemid skolem_internal_ens__vstd.set_lib.lemma_len_union_ind._definition
)))

;; Function-Def crate::vstd::set_lib::lemma_len_union_ind
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:470:1: 470:60 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s1! Poly)
 (declare-const s2! Poly)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Poly)
 (declare-const tmp%3 Poly)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Poly)
 (declare-const y@ Poly)
 (declare-const decrease%init0 Int)
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
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%4 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%5 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%6 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%7 Bool)
 (assert
  (not (=>
    (= decrease%init0 (vstd.set.impl&%0.len.? A&. A& s2!))
    (=>
     (ens%vstd.set_lib.lemma_set_properties. A&. A&)
     (or
      (and
       (=>
        (= (vstd.set.impl&%0.len.? A&. A& s2!) 0)
        %%switch_label%%0
       )
       (=>
        (not (= (vstd.set.impl&%0.len.? A&. A& s2!) 0))
        (=>
         (= y@ (as_type (%%choose%%0 A& A&. A& s2! A&. A& s2!) A&))
         (or
          (and
           (=>
            (vstd.set.impl&%0.contains.? A&. A& s1! y@)
            (=>
             (= tmp%1 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.union.? A&. A&
                (vstd.set.impl&%0.remove.? A&. A& s1! y@) (vstd.set.impl&%0.remove.? A&. A& s2! y@)
               ) (vstd.set.impl&%0.remove.? A&. A& (vstd.set.impl&%0.union.? A&. A& s1! s2!) y@)
             ))
             (and
              (=>
               %%location_label%%0
               tmp%1
              )
              (=>
               tmp%1
               (=>
                (= tmp%2 (vstd.set.impl&%0.remove.? A&. A& s1! y@))
                (=>
                 (= tmp%3 (vstd.set.impl&%0.remove.? A&. A& s2! y@))
                 (and
                  (=>
                   %%location_label%%1
                   (check_decrease_int (let
                     ((s1!$0 tmp%2) (s2!$1 tmp%3))
                     (vstd.set.impl&%0.len.? A&. A& s2!$1)
                    ) decrease%init0 false
                  ))
                  (and
                   (=>
                    %%location_label%%2
                    (req%vstd.set_lib.lemma_len_union_ind. A&. A& tmp%2 tmp%3)
                   )
                   (=>
                    (ens%vstd.set_lib.lemma_len_union_ind. A&. A& tmp%2 tmp%3)
                    %%switch_label%%1
           )))))))))
           (=>
            (not (vstd.set.impl&%0.contains.? A&. A& s1! y@))
            (=>
             (= tmp%4 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.union.? A&. A&
                s1! (vstd.set.impl&%0.remove.? A&. A& s2! y@)
               ) (vstd.set.impl&%0.remove.? A&. A& (vstd.set.impl&%0.union.? A&. A& s1! s2!) y@)
             ))
             (and
              (=>
               %%location_label%%3
               tmp%4
              )
              (=>
               tmp%4
               (=>
                (= tmp%5 (vstd.set.impl&%0.remove.? A&. A& s2! y@))
                (and
                 (=>
                  %%location_label%%4
                  (check_decrease_int (let
                    ((s1!$0 s1!) (s2!$1 tmp%5))
                    (vstd.set.impl&%0.len.? A&. A& s2!$1)
                   ) decrease%init0 false
                 ))
                 (and
                  (=>
                   %%location_label%%5
                   (req%vstd.set_lib.lemma_len_union_ind. A&. A& s1! tmp%5)
                  )
                  (=>
                   (ens%vstd.set_lib.lemma_len_union_ind. A&. A& s1! tmp%5)
                   %%switch_label%%1
          )))))))))
          (and
           (not %%switch_label%%1)
           %%switch_label%%0
      )))))
      (and
       (not %%switch_label%%0)
       (and
        (=>
         %%location_label%%6
         (>= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.union.? A&. A& s1! s2!)) (vstd.set.impl&%0.len.?
           A&. A& s1!
        )))
        (=>
         %%location_label%%7
         (>= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.union.? A&. A& s1! s2!)) (vstd.set.impl&%0.len.?
           A&. A& s2!
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set_lib::lemma_len_subset
(declare-fun req%vstd.set_lib.lemma_len_subset. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%44 Bool)
(declare-const %%global_location_label%%45 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
   (= (req%vstd.set_lib.lemma_len_subset. A&. A& s1! s2!) (and
     (=>
      %%global_location_label%%44
      (vstd.set.impl&%0.finite.? A&. A& s2!)
     )
     (=>
      %%global_location_label%%45
      (vstd.set.impl&%0.subset_of.? A&. A& s1! s2!)
   )))
   :pattern ((req%vstd.set_lib.lemma_len_subset. A&. A& s1! s2!))
   :qid internal_req__vstd.set_lib.lemma_len_subset._definition
   :skolemid skolem_internal_req__vstd.set_lib.lemma_len_subset._definition
)))
(declare-fun ens%vstd.set_lib.lemma_len_subset. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
   (= (ens%vstd.set_lib.lemma_len_subset. A&. A& s1! s2!) (and
     (<= (vstd.set.impl&%0.len.? A&. A& s1!) (vstd.set.impl&%0.len.? A&. A& s2!))
     (vstd.set.impl&%0.finite.? A&. A& s1!)
   ))
   :pattern ((ens%vstd.set_lib.lemma_len_subset. A&. A& s1! s2!))
   :qid internal_ens__vstd.set_lib.lemma_len_subset._definition
   :skolemid skolem_internal_ens__vstd.set_lib.lemma_len_subset._definition
)))

;; Function-Def crate::vstd::set_lib::lemma_len_subset
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:512:1: 512:57 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s1! Poly)
 (declare-const s2! Poly)
 (declare-const tmp%1 Bool)
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
  (vstd.set.impl&%0.finite.? A&. A& s2!)
 )
 (assert
  (vstd.set.impl&%0.subset_of.? A&. A& s1! s2!)
 )
 ;; precondition not satisfied
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
     %%location_label%%0
     (req%vstd.set_lib.lemma_len_intersect. A&. A& s2! s1!)
    )
    (=>
     (ens%vstd.set_lib.lemma_len_intersect. A&. A& s2! s1!)
     (=>
      (= tmp%1 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.intersect.? A&.
         A& s2! s1!
        ) s1!
      ))
      (and
       (=>
        %%location_label%%1
        tmp%1
       )
       (=>
        tmp%1
        (and
         (=>
          %%location_label%%2
          (<= (vstd.set.impl&%0.len.? A&. A& s1!) (vstd.set.impl&%0.len.? A&. A& s2!))
         )
         (=>
          %%location_label%%3
          (vstd.set.impl&%0.finite.? A&. A& s1!)
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set_lib::lemma_len_difference
(declare-fun req%vstd.set_lib.lemma_len_difference. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%46 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
   (= (req%vstd.set_lib.lemma_len_difference. A&. A& s1! s2!) (=>
     %%global_location_label%%46
     (vstd.set.impl&%0.finite.? A&. A& s1!)
   ))
   :pattern ((req%vstd.set_lib.lemma_len_difference. A&. A& s1! s2!))
   :qid internal_req__vstd.set_lib.lemma_len_difference._definition
   :skolemid skolem_internal_req__vstd.set_lib.lemma_len_difference._definition
)))
(declare-fun ens%vstd.set_lib.lemma_len_difference. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
   (= (ens%vstd.set_lib.lemma_len_difference. A&. A& s1! s2!) (<= (vstd.set.impl&%0.len.?
      A&. A& (vstd.set.impl&%0.difference.? A&. A& s1! s2!)
     ) (vstd.set.impl&%0.len.? A&. A& s1!)
   ))
   :pattern ((ens%vstd.set_lib.lemma_len_difference. A&. A& s1! s2!))
   :qid internal_ens__vstd.set_lib.lemma_len_difference._definition
   :skolemid skolem_internal_ens__vstd.set_lib.lemma_len_difference._definition
)))

;; Function-Def crate::vstd::set_lib::lemma_len_difference
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:525:1: 525:61 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s1! Poly)
 (declare-const s2! Poly)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Poly)
 (declare-const a@ Poly)
 (declare-const decrease%init0 Int)
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
 (declare-const %%switch_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 (assert
  (not (=>
    (= decrease%init0 (vstd.set.impl&%0.len.? A&. A& s1!))
    (or
     (and
      (=>
       (vstd.set_lib.impl&%0.is_empty.? A&. A& s1!)
       (=>
        (= tmp%1 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.difference.? A&.
           A& s1! s2!
          ) s1!
        ))
        (and
         (=>
          %%location_label%%0
          tmp%1
         )
         (=>
          tmp%1
          %%switch_label%%0
      ))))
      (=>
       (not (vstd.set_lib.impl&%0.is_empty.? A&. A& s1!))
       (=>
        (= a@ (vstd.set.impl&%0.choose.? A&. A& s1!))
        (=>
         (= tmp%2 (ext_eq false (TYPE%vstd.set.Set. A&. A&) (vstd.set.impl&%0.remove.? A&. A&
            (vstd.set.impl&%0.difference.? A&. A& s1! s2!) a@
           ) (vstd.set.impl&%0.difference.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s1! a@)
            s2!
         )))
         (and
          (=>
           %%location_label%%1
           tmp%2
          )
          (=>
           tmp%2
           (=>
            (= tmp%3 (vstd.set.impl&%0.remove.? A&. A& s1! a@))
            (and
             (=>
              %%location_label%%2
              (check_decrease_int (let
                ((s1!$0 tmp%3) (s2!$1 s2!))
                (vstd.set.impl&%0.len.? A&. A& s1!$0)
               ) decrease%init0 false
             ))
             (and
              (=>
               %%location_label%%3
               (req%vstd.set_lib.lemma_len_difference. A&. A& tmp%3 s2!)
              )
              (=>
               (ens%vstd.set_lib.lemma_len_difference. A&. A& tmp%3 s2!)
               %%switch_label%%0
     ))))))))))
     (and
      (not %%switch_label%%0)
      (=>
       %%location_label%%4
       (<= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.difference.? A&. A& s1! s2!))
        (vstd.set.impl&%0.len.? A&. A& s1!)
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set_lib::lemma_int_range
(declare-fun req%vstd.set_lib.lemma_int_range. (Int Int) Bool)
(declare-const %%global_location_label%%47 Bool)
(assert
 (forall ((lo! Int) (hi! Int)) (!
   (= (req%vstd.set_lib.lemma_int_range. lo! hi!) (=>
     %%global_location_label%%47
     (<= lo! hi!)
   ))
   :pattern ((req%vstd.set_lib.lemma_int_range. lo! hi!))
   :qid internal_req__vstd.set_lib.lemma_int_range._definition
   :skolemid skolem_internal_req__vstd.set_lib.lemma_int_range._definition
)))
(declare-fun ens%vstd.set_lib.lemma_int_range. (Int Int) Bool)
(assert
 (forall ((lo! Int) (hi! Int)) (!
   (= (ens%vstd.set_lib.lemma_int_range. lo! hi!) (and
     (vstd.set.impl&%0.finite.? $ INT (Poly%vstd.set.Set<int.>. (vstd.set_lib.set_int_range.?
        (I lo!) (I hi!)
     )))
     (= (vstd.set.impl&%0.len.? $ INT (Poly%vstd.set.Set<int.>. (vstd.set_lib.set_int_range.?
         (I lo!) (I hi!)
       ))
      ) (Sub hi! lo!)
   )))
   :pattern ((ens%vstd.set_lib.lemma_int_range. lo! hi!))
   :qid internal_ens__vstd.set_lib.lemma_int_range._definition
   :skolemid skolem_internal_ens__vstd.set_lib.lemma_int_range._definition
)))

;; Function-Def crate::vstd::set_lib::lemma_int_range
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:548:1: 548:47 (#0)
(get-info :all-statistics)
(push)
 (declare-const lo! Int)
 (declare-const hi! Int)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Int)
 (declare-const tmp%3 Bool)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= lo! hi!)
 )
 (declare-const %%switch_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%5 Bool)
 (assert
  (not (=>
    (= decrease%init0 (Sub hi! lo!))
    (or
     (and
      (=>
       (= lo! hi!)
       (=>
        (= tmp%1 (ext_eq false (TYPE%vstd.set.Set. $ INT) (Poly%vstd.set.Set<int.>. (vstd.set_lib.set_int_range.?
            (I lo!) (I hi!)
           )
          ) (vstd.set.impl&%0.empty.? $ INT)
        ))
        (and
         (=>
          %%location_label%%0
          tmp%1
         )
         (=>
          tmp%1
          %%switch_label%%0
      ))))
      (=>
       (not (= lo! hi!))
       (=>
        (= tmp%2 (Sub hi! 1))
        (and
         (=>
          %%location_label%%1
          (check_decrease_int (let
            ((lo!$0 lo!) (hi!$1 tmp%2))
            (Sub hi!$1 lo!$0)
           ) decrease%init0 false
         ))
         (and
          (=>
           %%location_label%%2
           (req%vstd.set_lib.lemma_int_range. lo! tmp%2)
          )
          (=>
           (ens%vstd.set_lib.lemma_int_range. lo! tmp%2)
           (=>
            (= tmp%3 (ext_eq false (TYPE%vstd.set.Set. $ INT) (vstd.set.impl&%0.insert.? $ INT (
                Poly%vstd.set.Set<int.>. (vstd.set_lib.set_int_range.? (I lo!) (I (Sub hi! 1)))
               ) (I (Sub hi! 1))
              ) (Poly%vstd.set.Set<int.>. (vstd.set_lib.set_int_range.? (I lo!) (I hi!)))
            ))
            (and
             (=>
              %%location_label%%3
              tmp%3
             )
             (=>
              tmp%3
              %%switch_label%%0
     )))))))))
     (and
      (not %%switch_label%%0)
      (and
       (=>
        %%location_label%%4
        (vstd.set.impl&%0.finite.? $ INT (Poly%vstd.set.Set<int.>. (vstd.set_lib.set_int_range.?
           (I lo!) (I hi!)
       ))))
       (=>
        %%location_label%%5
        (= (vstd.set.impl&%0.len.? $ INT (Poly%vstd.set.Set<int.>. (vstd.set_lib.set_int_range.?
            (I lo!) (I hi!)
          ))
         ) (Sub hi! lo!)
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set_lib::lemma_subset_equality
(declare-fun req%vstd.set_lib.lemma_subset_equality. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%48 Bool)
(declare-const %%global_location_label%%49 Bool)
(declare-const %%global_location_label%%50 Bool)
(declare-const %%global_location_label%%51 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (x! Poly) (y! Poly)) (!
   (= (req%vstd.set_lib.lemma_subset_equality. A&. A& x! y!) (and
     (=>
      %%global_location_label%%48
      (vstd.set.impl&%0.subset_of.? A&. A& x! y!)
     )
     (=>
      %%global_location_label%%49
      (vstd.set.impl&%0.finite.? A&. A& x!)
     )
     (=>
      %%global_location_label%%50
      (vstd.set.impl&%0.finite.? A&. A& y!)
     )
     (=>
      %%global_location_label%%51
      (= (vstd.set.impl&%0.len.? A&. A& x!) (vstd.set.impl&%0.len.? A&. A& y!))
   )))
   :pattern ((req%vstd.set_lib.lemma_subset_equality. A&. A& x! y!))
   :qid internal_req__vstd.set_lib.lemma_subset_equality._definition
   :skolemid skolem_internal_req__vstd.set_lib.lemma_subset_equality._definition
)))
(declare-fun ens%vstd.set_lib.lemma_subset_equality. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (x! Poly) (y! Poly)) (!
   (= (ens%vstd.set_lib.lemma_subset_equality. A&. A& x! y!) (ext_eq false (TYPE%vstd.set.Set.
      A&. A&
     ) x! y!
   ))
   :pattern ((ens%vstd.set_lib.lemma_subset_equality. A&. A& x! y!))
   :qid internal_ens__vstd.set_lib.lemma_subset_equality._definition
   :skolemid skolem_internal_ens__vstd.set_lib.lemma_subset_equality._definition
)))

;; Function-Def crate::vstd::set_lib::lemma_subset_equality
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:565:1: 565:60 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const x! Poly)
 (declare-const y! Poly)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Poly)
 (declare-const e@ Poly)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type x! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type y! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (vstd.set.impl&%0.subset_of.? A&. A& x! y!)
 )
 (assert
  (vstd.set.impl&%0.finite.? A&. A& x!)
 )
 (assert
  (vstd.set.impl&%0.finite.? A&. A& y!)
 )
 (assert
  (= (vstd.set.impl&%0.len.? A&. A& x!) (vstd.set.impl&%0.len.? A&. A& y!))
 )
 (declare-const %%switch_label%%0 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (= decrease%init0 (vstd.set.impl&%0.len.? A&. A& x!))
    (=>
     (ens%vstd.set_lib.lemma_set_properties. A&. A&)
     (or
      (and
       (=>
        (ext_eq false (TYPE%vstd.set.Set. A&. A&) x! (vstd.set.impl&%0.empty.? A&. A&))
        %%switch_label%%0
       )
       (=>
        (not (ext_eq false (TYPE%vstd.set.Set. A&. A&) x! (vstd.set.impl&%0.empty.? A&. A&)))
        (=>
         (= e@ (vstd.set.impl&%0.choose.? A&. A& x!))
         (=>
          (= tmp%1 (vstd.set.impl&%0.remove.? A&. A& x! e@))
          (=>
           (= tmp%2 (vstd.set.impl&%0.remove.? A&. A& y! e@))
           (and
            (=>
             %%location_label%%0
             (check_decrease_int (let
               ((x!$0 tmp%1) (y!$1 tmp%2))
               (vstd.set.impl&%0.len.? A&. A& x!$0)
              ) decrease%init0 false
            ))
            (and
             (=>
              %%location_label%%1
              (req%vstd.set_lib.lemma_subset_equality. A&. A& tmp%1 tmp%2)
             )
             (=>
              (ens%vstd.set_lib.lemma_subset_equality. A&. A& tmp%1 tmp%2)
              %%switch_label%%0
      ))))))))
      (and
       (not %%switch_label%%0)
       (=>
        %%location_label%%2
        (ext_eq false (TYPE%vstd.set.Set. A&. A&) x! y!)
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set_lib::lemma_map_size
(declare-fun req%vstd.set_lib.lemma_map_size. (Dcr Type Dcr Type Poly Poly %%Function%%)
 Bool
)
(declare-const %%global_location_label%%52 Bool)
(declare-const %%global_location_label%%53 Bool)
(declare-const %%global_location_label%%54 Bool)
(declare-const %%global_location_label%%55 Bool)
(declare-const %%global_location_label%%56 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (x! Poly) (y! Poly) (f! %%Function%%))
  (!
   (= (req%vstd.set_lib.lemma_map_size. A&. A& B&. B& x! y! f!) (and
     (=>
      %%global_location_label%%52
      (vstd.relations.injective.? A&. A& B&. B& (Poly%fun%1. f!))
     )
     (=>
      %%global_location_label%%53
      (forall ((a$ Poly)) (!
        (=>
         (has_type a$ A&)
         (=>
          (vstd.set.impl&%0.contains.? A&. A& x! a$)
          (vstd.set.impl&%0.contains.? B&. B& y! (%%apply%%0 f! a$))
        ))
        :pattern ((%%apply%%0 f! a$))
        :qid user_crate__vstd__set_lib__lemma_map_size_120
        :skolemid skolem_user_crate__vstd__set_lib__lemma_map_size_120
     )))
     (=>
      %%global_location_label%%54
      (forall ((b$ Poly)) (!
        (=>
         (has_type b$ B&)
         (=>
          (vstd.set.impl&%0.contains.? B&. B& y! b$)
          (exists ((a$ Poly)) (!
            (and
             (has_type a$ A&)
             (and
              (vstd.set.impl&%0.contains.? A&. A& x! a$)
              (= (%%apply%%0 f! a$) b$)
            ))
            :pattern ((vstd.set.impl&%0.contains.? A&. A& x! a$))
            :qid user_crate__vstd__set_lib__lemma_map_size_121
            :skolemid skolem_user_crate__vstd__set_lib__lemma_map_size_121
        ))))
        :pattern ((vstd.set.impl&%0.contains.? B&. B& y! b$))
        :qid user_crate__vstd__set_lib__lemma_map_size_122
        :skolemid skolem_user_crate__vstd__set_lib__lemma_map_size_122
     )))
     (=>
      %%global_location_label%%55
      (vstd.set.impl&%0.finite.? A&. A& x!)
     )
     (=>
      %%global_location_label%%56
      (vstd.set.impl&%0.finite.? B&. B& y!)
   )))
   :pattern ((req%vstd.set_lib.lemma_map_size. A&. A& B&. B& x! y! f!))
   :qid internal_req__vstd.set_lib.lemma_map_size._definition
   :skolemid skolem_internal_req__vstd.set_lib.lemma_map_size._definition
)))
(declare-fun ens%vstd.set_lib.lemma_map_size. (Dcr Type Dcr Type Poly Poly %%Function%%)
 Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (x! Poly) (y! Poly) (f! %%Function%%))
  (!
   (= (ens%vstd.set_lib.lemma_map_size. A&. A& B&. B& x! y! f!) (= (vstd.set.impl&%0.len.?
      A&. A& x!
     ) (vstd.set.impl&%0.len.? B&. B& y!)
   ))
   :pattern ((ens%vstd.set_lib.lemma_map_size. A&. A& B&. B& x! y! f!))
   :qid internal_ens__vstd.set_lib.lemma_map_size._definition
   :skolemid skolem_internal_ens__vstd.set_lib.lemma_map_size._definition
)))

;; Function-Def crate::vstd::set_lib::lemma_map_size
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:586:1: 586:76 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const B&. Dcr)
 (declare-const B& Type)
 (declare-const x! Poly)
 (declare-const y! Poly)
 (declare-const f! %%Function%%)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Poly)
 (declare-const a@ Poly)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type x! (TYPE%vstd.set.Set. A&. A&))
 )
 (assert
  (has_type y! (TYPE%vstd.set.Set. B&. B&))
 )
 (assert
  (has_type (Poly%fun%1. f!) (TYPE%fun%1. A&. A& B&. B&))
 )
 (assert
  (vstd.relations.injective.? A&. A& B&. B& (Poly%fun%1. f!))
 )
 (assert
  (forall ((a$ Poly)) (!
    (=>
     (has_type a$ A&)
     (=>
      (vstd.set.impl&%0.contains.? A&. A& x! a$)
      (vstd.set.impl&%0.contains.? B&. B& y! (%%apply%%0 f! a$))
    ))
    :pattern ((%%apply%%0 f! a$))
    :qid user_crate__vstd__set_lib__lemma_map_size_123
    :skolemid skolem_user_crate__vstd__set_lib__lemma_map_size_123
 )))
 (assert
  (forall ((b$ Poly)) (!
    (=>
     (has_type b$ B&)
     (=>
      (vstd.set.impl&%0.contains.? B&. B& y! b$)
      (exists ((a$ Poly)) (!
        (and
         (has_type a$ A&)
         (and
          (vstd.set.impl&%0.contains.? A&. A& x! a$)
          (= (%%apply%%0 f! a$) b$)
        ))
        :pattern ((vstd.set.impl&%0.contains.? A&. A& x! a$))
        :qid user_crate__vstd__set_lib__lemma_map_size_124
        :skolemid skolem_user_crate__vstd__set_lib__lemma_map_size_124
    ))))
    :pattern ((vstd.set.impl&%0.contains.? B&. B& y! b$))
    :qid user_crate__vstd__set_lib__lemma_map_size_125
    :skolemid skolem_user_crate__vstd__set_lib__lemma_map_size_125
 )))
 (assert
  (vstd.set.impl&%0.finite.? A&. A& x!)
 )
 (assert
  (vstd.set.impl&%0.finite.? B&. B& y!)
 )
 (declare-const %%switch_label%%0 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (= decrease%init0 (vstd.set.impl&%0.len.? A&. A& x!))
    (=>
     (ens%vstd.set_lib.lemma_set_properties. A&. A&)
     (=>
      (ens%vstd.set_lib.lemma_set_properties. B&. B&)
      (or
       (and
        (=>
         (not (= (vstd.set.impl&%0.len.? A&. A& x!) 0))
         (=>
          (= a@ (vstd.set.impl&%0.choose.? A&. A& x!))
          (=>
           (= tmp%1 (vstd.set.impl&%0.remove.? A&. A& x! a@))
           (=>
            (= tmp%2 (vstd.set.impl&%0.remove.? B&. B& y! (%%apply%%0 f! a@)))
            (and
             (=>
              %%location_label%%0
              (check_decrease_int (let
                ((x!$0 tmp%1) (y!$1 tmp%2) (f!$2 f!))
                (vstd.set.impl&%0.len.? A&. A& x!$0)
               ) decrease%init0 false
             ))
             (and
              (=>
               %%location_label%%1
               (req%vstd.set_lib.lemma_map_size. A&. A& B&. B& tmp%1 tmp%2 f!)
              )
              (=>
               (ens%vstd.set_lib.lemma_map_size. A&. A& B&. B& tmp%1 tmp%2 f!)
               %%switch_label%%0
        )))))))
        (=>
         (not (not (= (vstd.set.impl&%0.len.? A&. A& x!) 0)))
         %%switch_label%%0
       ))
       (and
        (not %%switch_label%%0)
        (=>
         %%location_label%%2
         (= (vstd.set.impl&%0.len.? A&. A& x!) (vstd.set.impl&%0.len.? B&. B& y!))
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::set_lib::lemma_set_difference2
(declare-fun ens%vstd.set_lib.lemma_set_difference2. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly) (a! Poly)) (!
   (= (ens%vstd.set_lib.lemma_set_difference2. A&. A& s1! s2! a!) (=>
     (vstd.set.impl&%0.contains.? A&. A& s2! a!)
     (not (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.difference.? A&. A& s1! s2!)
       a!
   ))))
   :pattern ((ens%vstd.set_lib.lemma_set_difference2. A&. A& s1! s2! a!))
   :qid internal_ens__vstd.set_lib.lemma_set_difference2._definition
   :skolemid skolem_internal_ens__vstd.set_lib.lemma_set_difference2._definition
)))

;; Function-Def crate::vstd::set_lib::lemma_set_difference2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/set_lib.rs:643:1: 643:68 (#0)
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
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (=>
     (vstd.set.impl&%0.contains.? A&. A& s2! a!)
     (not (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.difference.? A&. A& s1! s2!)
       a!
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
