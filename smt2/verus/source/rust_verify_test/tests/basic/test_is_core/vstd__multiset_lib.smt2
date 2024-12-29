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

;; MODULE 'module vstd::multiset_lib'

;; Fuel
(declare-const fuel%vstd.multiset.impl&%0.insert. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.remove. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.subset_of. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.choose. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.contains. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_singleton. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_singleton_different. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_add. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_sub. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_ext_equal. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_ext_equal_deep. FuelId)
(declare-const fuel%vstd.multiset.axiom_len_singleton. FuelId)
(declare-const fuel%vstd.multiset.axiom_len_add. FuelId)
(declare-const fuel%vstd.multiset.axiom_len_sub. FuelId)
(declare-const fuel%vstd.multiset.axiom_count_le_len. FuelId)
(declare-const fuel%vstd.multiset.axiom_choose_count. FuelId)
(declare-const fuel%vstd.multiset_lib.impl&%0.is_empty. FuelId)
(declare-const fuel%vstd.multiset_lib.impl&%0.is_singleton. FuelId)
(declare-const fuel%vstd.multiset.group_multiset_axioms. FuelId)
(assert
 (distinct fuel%vstd.multiset.impl&%0.insert. fuel%vstd.multiset.impl&%0.remove. fuel%vstd.multiset.impl&%0.subset_of.
  fuel%vstd.multiset.impl&%0.choose. fuel%vstd.multiset.impl&%0.contains. fuel%vstd.multiset.axiom_multiset_singleton.
  fuel%vstd.multiset.axiom_multiset_singleton_different. fuel%vstd.multiset.axiom_multiset_add.
  fuel%vstd.multiset.axiom_multiset_sub. fuel%vstd.multiset.axiom_multiset_ext_equal.
  fuel%vstd.multiset.axiom_multiset_ext_equal_deep. fuel%vstd.multiset.axiom_len_singleton.
  fuel%vstd.multiset.axiom_len_add. fuel%vstd.multiset.axiom_len_sub. fuel%vstd.multiset.axiom_count_le_len.
  fuel%vstd.multiset.axiom_choose_count. fuel%vstd.multiset_lib.impl&%0.is_empty. fuel%vstd.multiset_lib.impl&%0.is_singleton.
  fuel%vstd.multiset.group_multiset_axioms.
))
(assert
 (=>
  (fuel_bool_default fuel%vstd.multiset.group_multiset_axioms.)
  (and
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_singleton.)
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_singleton_different.)
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_add.)
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_sub.)
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_ext_equal.)
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_ext_equal_deep.)
   (fuel_bool_default fuel%vstd.multiset.axiom_len_singleton.)
   (fuel_bool_default fuel%vstd.multiset.axiom_len_add.)
   (fuel_bool_default fuel%vstd.multiset.axiom_len_sub.)
   (fuel_bool_default fuel%vstd.multiset.axiom_count_le_len.)
   (fuel_bool_default fuel%vstd.multiset.axiom_choose_count.)
)))
(assert
 (fuel_bool_default fuel%vstd.multiset.group_multiset_axioms.)
)

;; Datatypes
(declare-datatypes ((tuple%0. 0)) (((tuple%0./tuple%0))))
(declare-fun TYPE%vstd.multiset.Multiset. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
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

;; Function-Decl crate::vstd::multiset::Multiset::len
(declare-fun vstd.multiset.impl&%0.len.? (Dcr Type Poly) Int)

;; Function-Decl crate::vstd::multiset::Multiset::contains
(declare-fun vstd.multiset.impl&%0.contains.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::multiset::Multiset::subset_of
(declare-fun vstd.multiset.impl&%0.subset_of.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::multiset::Multiset::choose
(declare-fun vstd.multiset.impl&%0.choose.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::is_empty
(declare-fun vstd.multiset_lib.impl&%0.is_empty.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::multiset::Multiset::is_singleton
(declare-fun vstd.multiset_lib.impl&%0.is_singleton.? (Dcr Type Poly) Bool)

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
       :qid user_crate__vstd__multiset__Multiset__subset_of_0
       :skolemid skolem_user_crate__vstd__multiset__Multiset__subset_of_0
    )))
    :pattern ((vstd.multiset.impl&%0.subset_of.? V&. V& self! m2!))
    :qid internal_vstd.multiset.impl&__0.subset_of.?_definition
    :skolemid skolem_internal_vstd.multiset.impl&__0.subset_of.?_definition
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
      :qid user_crate__vstd__multiset__Multiset__choose_1
      :skolemid skolem_user_crate__vstd__multiset__Multiset__choose_1
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
    :qid user_crate__vstd__multiset__axiom_multiset_singleton_2
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_singleton_2
))))

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
    :qid user_crate__vstd__multiset__axiom_multiset_singleton_different_3
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_singleton_different_3
))))

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
    :qid user_crate__vstd__multiset__axiom_multiset_add_4
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_add_4
))))

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
    :qid user_crate__vstd__multiset__axiom_multiset_sub_5
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_sub_5
))))

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
        :qid user_crate__vstd__multiset__axiom_multiset_ext_equal_6
        :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_ext_equal_6
    ))))
    :pattern ((ext_eq false (TYPE%vstd.multiset.Multiset. V&. V&) m1! m2!))
    :qid user_crate__vstd__multiset__axiom_multiset_ext_equal_7
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_ext_equal_7
))))

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
    :qid user_crate__vstd__multiset__axiom_multiset_ext_equal_deep_8
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_ext_equal_deep_8
))))

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
    :qid user_crate__vstd__multiset__axiom_len_singleton_9
    :skolemid skolem_user_crate__vstd__multiset__axiom_len_singleton_9
))))

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
    :qid user_crate__vstd__multiset__axiom_len_add_10
    :skolemid skolem_user_crate__vstd__multiset__axiom_len_add_10
))))

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
    :qid user_crate__vstd__multiset__axiom_len_sub_11
    :skolemid skolem_user_crate__vstd__multiset__axiom_len_sub_11
))))

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
    :qid user_crate__vstd__multiset__axiom_count_le_len_12
    :skolemid skolem_user_crate__vstd__multiset__axiom_count_le_len_12
))))

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
    :qid user_crate__vstd__multiset__axiom_choose_count_13
    :skolemid skolem_user_crate__vstd__multiset__axiom_choose_count_13
))))

;; Function-Axioms crate::vstd::multiset::Multiset::is_empty
(assert
 (fuel_bool_default fuel%vstd.multiset_lib.impl&%0.is_empty.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.multiset_lib.impl&%0.is_empty.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (= (vstd.multiset_lib.impl&%0.is_empty.? A&. A& self!) (= (vstd.multiset.impl&%0.len.?
       A&. A& self!
      ) 0
    ))
    :pattern ((vstd.multiset_lib.impl&%0.is_empty.? A&. A& self!))
    :qid internal_vstd.multiset_lib.impl&__0.is_empty.?_definition
    :skolemid skolem_internal_vstd.multiset_lib.impl&__0.is_empty.?_definition
))))

;; Function-Axioms crate::vstd::multiset::Multiset::is_singleton
(assert
 (fuel_bool_default fuel%vstd.multiset_lib.impl&%0.is_singleton.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.multiset_lib.impl&%0.is_singleton.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (= (vstd.multiset_lib.impl&%0.is_singleton.? A&. A& self!) (and
      (and
       (> (vstd.multiset.impl&%0.len.? A&. A& self!) 0)
       (forall ((x$ Poly)) (!
         (=>
          (has_type x$ A&)
          (=>
           (vstd.multiset.impl&%0.contains.? A&. A& self! x$)
           (= (vstd.multiset.impl&%0.count.? A&. A& self! x$) 1)
         ))
         :pattern ((vstd.multiset.impl&%0.contains.? A&. A& self! x$))
         :pattern ((vstd.multiset.impl&%0.count.? A&. A& self! x$))
         :qid user_crate__vstd__multiset__Multiset__is_singleton_14
         :skolemid skolem_user_crate__vstd__multiset__Multiset__is_singleton_14
      )))
      (forall ((x$ Poly) (y$ Poly)) (!
        (=>
         (and
          (has_type x$ A&)
          (has_type y$ A&)
         )
         (=>
          (and
           (vstd.multiset.impl&%0.contains.? A&. A& self! x$)
           (vstd.multiset.impl&%0.contains.? A&. A& self! y$)
          )
          (= x$ y$)
        ))
        :pattern ((vstd.multiset.impl&%0.contains.? A&. A& self! x$) (vstd.multiset.impl&%0.contains.?
          A&. A& self! y$
        ))
        :qid user_crate__vstd__multiset__Multiset__is_singleton_15
        :skolemid skolem_user_crate__vstd__multiset__Multiset__is_singleton_15
    ))))
    :pattern ((vstd.multiset_lib.impl&%0.is_singleton.? A&. A& self!))
    :qid internal_vstd.multiset_lib.impl&__0.is_singleton.?_definition
    :skolemid skolem_internal_vstd.multiset_lib.impl&__0.is_singleton.?_definition
))))

;; Function-Specs crate::vstd::multiset::Multiset::lemma_is_singleton_contains_elem_equal_singleton
(declare-fun req%vstd.multiset_lib.impl&%0.lemma_is_singleton_contains_elem_equal_singleton.
 (Dcr Type Poly Poly) Bool
)
(declare-const %%global_location_label%%0 Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (x! Poly)) (!
   (= (req%vstd.multiset_lib.impl&%0.lemma_is_singleton_contains_elem_equal_singleton.
     A&. A& self! x!
    ) (and
     (=>
      %%global_location_label%%0
      (vstd.multiset_lib.impl&%0.is_singleton.? A&. A& self!)
     )
     (=>
      %%global_location_label%%1
      (vstd.multiset.impl&%0.contains.? A&. A& self! x!)
   )))
   :pattern ((req%vstd.multiset_lib.impl&%0.lemma_is_singleton_contains_elem_equal_singleton.
     A&. A& self! x!
   ))
   :qid internal_req__vstd.multiset_lib.impl&__0.lemma_is_singleton_contains_elem_equal_singleton._definition
   :skolemid skolem_internal_req__vstd.multiset_lib.impl&__0.lemma_is_singleton_contains_elem_equal_singleton._definition
)))
(declare-fun ens%vstd.multiset_lib.impl&%0.lemma_is_singleton_contains_elem_equal_singleton.
 (Dcr Type Poly Poly) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (x! Poly)) (!
   (= (ens%vstd.multiset_lib.impl&%0.lemma_is_singleton_contains_elem_equal_singleton.
     A&. A& self! x!
    ) (ext_eq false (TYPE%vstd.multiset.Multiset. A&. A&) self! (vstd.multiset.impl&%0.singleton.?
      A&. A& x!
   )))
   :pattern ((ens%vstd.multiset_lib.impl&%0.lemma_is_singleton_contains_elem_equal_singleton.
     A&. A& self! x!
   ))
   :qid internal_ens__vstd.multiset_lib.impl&__0.lemma_is_singleton_contains_elem_equal_singleton._definition
   :skolemid skolem_internal_ens__vstd.multiset_lib.impl&__0.lemma_is_singleton_contains_elem_equal_singleton._definition
)))

;; Function-Def crate::vstd::multiset::Multiset::lemma_is_singleton_contains_elem_equal_singleton
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset_lib.rs:24:5: 24:78 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const self! Poly)
 (declare-const x! Poly)
 (declare-const y@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.multiset.Multiset. A&. A&))
 )
 (assert
  (has_type x! A&)
 )
 (assert
  (vstd.multiset_lib.impl&%0.is_singleton.? A&. A& self!)
 )
 (assert
  (vstd.multiset.impl&%0.contains.? A&. A& self! x!)
 )
 (declare-const %%switch_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     (has_type y@ A&)
     (or
      (and
       (=>
        (vstd.multiset.impl&%0.contains.? A&. A& self! y@)
        %%switch_label%%0
       )
       (=>
        (not (vstd.multiset.impl&%0.contains.? A&. A& self! y@))
        %%switch_label%%0
      ))
      (and
       (not %%switch_label%%0)
       (=>
        %%location_label%%0
        (= (vstd.multiset.impl&%0.count.? A&. A& (vstd.multiset.impl&%0.singleton.? A&. A& x!)
          y@
         ) (vstd.multiset.impl&%0.count.? A&. A& self! y@)
    )))))
    (=>
     (forall ((y$ Poly)) (!
       (=>
        (has_type y$ A&)
        (= (vstd.multiset.impl&%0.count.? A&. A& (vstd.multiset.impl&%0.singleton.? A&. A& x!)
          y$
         ) (vstd.multiset.impl&%0.count.? A&. A& self! y$)
       ))
       :pattern ((vstd.multiset.impl&%0.count.? A&. A& (vstd.multiset.impl&%0.singleton.? A&.
          A& x!
         ) y$
       ))
       :qid user_crate__vstd__multiset__Multiset__lemma_is_singleton_contains_elem_equal_singleton_16
       :skolemid skolem_user_crate__vstd__multiset__Multiset__lemma_is_singleton_contains_elem_equal_singleton_16
     ))
     (=>
      %%location_label%%1
      (ext_eq false (TYPE%vstd.multiset.Multiset. A&. A&) self! (vstd.multiset.impl&%0.singleton.?
        A&. A& x!
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::multiset::Multiset::lemma_singleton_size
(declare-fun req%vstd.multiset_lib.impl&%0.lemma_singleton_size. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (req%vstd.multiset_lib.impl&%0.lemma_singleton_size. A&. A& self!) (=>
     %%global_location_label%%2
     (vstd.multiset_lib.impl&%0.is_singleton.? A&. A& self!)
   ))
   :pattern ((req%vstd.multiset_lib.impl&%0.lemma_singleton_size. A&. A& self!))
   :qid internal_req__vstd.multiset_lib.impl&__0.lemma_singleton_size._definition
   :skolemid skolem_internal_req__vstd.multiset_lib.impl&__0.lemma_singleton_size._definition
)))
(declare-fun ens%vstd.multiset_lib.impl&%0.lemma_singleton_size. (Dcr Type Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (ens%vstd.multiset_lib.impl&%0.lemma_singleton_size. A&. A& self!) (= (vstd.multiset.impl&%0.len.?
      A&. A& self!
     ) 1
   ))
   :pattern ((ens%vstd.multiset_lib.impl&%0.lemma_singleton_size. A&. A& self!))
   :qid internal_ens__vstd.multiset_lib.impl&__0.lemma_singleton_size._definition
   :skolemid skolem_internal_ens__vstd.multiset_lib.impl&__0.lemma_singleton_size._definition
)))

;; Function-Def crate::vstd::multiset::Multiset::lemma_singleton_size
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset_lib.rs:39:5: 39:44 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const self! Poly)
 (declare-const tmp%1 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.multiset.Multiset. A&. A&))
 )
 (assert
  (vstd.multiset_lib.impl&%0.is_singleton.? A&. A& self!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= tmp%1 (vstd.multiset.impl&%0.choose.? A&. A& self!))
    (and
     (=>
      %%location_label%%0
      (req%vstd.multiset_lib.impl&%0.lemma_is_singleton_contains_elem_equal_singleton. A&.
       A& self! tmp%1
     ))
     (=>
      (ens%vstd.multiset_lib.impl&%0.lemma_is_singleton_contains_elem_equal_singleton. A&.
       A& self! tmp%1
      )
      (=>
       %%location_label%%1
       (= (vstd.multiset.impl&%0.len.? A&. A& self!) 1)
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::multiset::Multiset::lemma_is_singleton
(declare-fun ens%vstd.multiset_lib.impl&%0.lemma_is_singleton. (Dcr Type Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly)) (!
   (= (ens%vstd.multiset_lib.impl&%0.lemma_is_singleton. A&. A& s!) (= (vstd.multiset_lib.impl&%0.is_singleton.?
      A&. A& s!
     ) (= (vstd.multiset.impl&%0.len.? A&. A& s!) 1)
   ))
   :pattern ((ens%vstd.multiset_lib.impl&%0.lemma_is_singleton. A&. A& s!))
   :qid internal_ens__vstd.multiset_lib.impl&__0.lemma_is_singleton._definition
   :skolemid skolem_internal_ens__vstd.multiset_lib.impl&__0.lemma_is_singleton._definition
)))

;; Function-Def crate::vstd::multiset::Multiset::lemma_is_singleton
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/multiset_lib.rs:49:5: 49:52 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s! Poly)
 (declare-const x@ Poly)
 (declare-const y@ Poly)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.multiset.Multiset. A&. A&))
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 (declare-const %%switch_label%%2 Bool)
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
 ;; postcondition not satisfied
 (declare-const %%location_label%%5 Bool)
 (assert
  (not (or
    (and
     (=>
      (vstd.multiset_lib.impl&%0.is_singleton.? A&. A& s!)
      (and
       (=>
        %%location_label%%0
        (req%vstd.multiset_lib.impl&%0.lemma_singleton_size. A&. A& s!)
       )
       (=>
        (ens%vstd.multiset_lib.impl&%0.lemma_singleton_size. A&. A& s!)
        %%switch_label%%2
     )))
     (=>
      (not (vstd.multiset_lib.impl&%0.is_singleton.? A&. A& s!))
      %%switch_label%%2
    ))
    (and
     (not %%switch_label%%2)
     (or
      (and
       (=>
        (= (vstd.multiset.impl&%0.len.? A&. A& s!) 1)
        (and
         (=>
          (has_type x@ A&)
          (=>
           (has_type y@ A&)
           (=>
            (and
             (vstd.multiset.impl&%0.contains.? A&. A& s! x@)
             (vstd.multiset.impl&%0.contains.? A&. A& s! y@)
            )
            (=>
             (= tmp%1 (= (vstd.multiset.impl&%0.len.? A&. A& (vstd.multiset.impl&%0.remove.? A&. A&
                 s! x@
                )
               ) 0
             ))
             (and
              (=>
               %%location_label%%1
               tmp%1
              )
              (=>
               tmp%1
               (or
                (and
                 (=>
                  (not (= x@ y@))
                  (=>
                   (= tmp%2 (= (vstd.multiset.impl&%0.count.? A&. A& (vstd.multiset.impl&%0.remove.? A&.
                       A& s! x@
                      ) y@
                     ) 0
                   ))
                   (and
                    (=>
                     %%location_label%%2
                     tmp%2
                    )
                    (=>
                     tmp%2
                     (=>
                      (= tmp%3 (ext_eq false (TYPE%vstd.multiset.Multiset. A&. A&) (vstd.multiset.impl&%0.insert.?
                         A&. A& (vstd.multiset.impl&%0.remove.? A&. A& s! x@) x@
                        ) s!
                      ))
                      (and
                       (=>
                        %%location_label%%3
                        tmp%3
                       )
                       (=>
                        tmp%3
                        %%switch_label%%1
                 )))))))
                 (=>
                  (not (not (= x@ y@)))
                  %%switch_label%%1
                ))
                (and
                 (not %%switch_label%%1)
                 (=>
                  %%location_label%%4
                  (= x@ y@)
         )))))))))
         (=>
          (forall ((x$ Poly) (y$ Poly)) (!
            (=>
             (and
              (has_type x$ A&)
              (has_type y$ A&)
             )
             (=>
              (and
               (vstd.multiset.impl&%0.contains.? A&. A& s! x$)
               (vstd.multiset.impl&%0.contains.? A&. A& s! y$)
              )
              (= x$ y$)
            ))
            :pattern ((vstd.multiset.impl&%0.contains.? A&. A& s! x$) (vstd.multiset.impl&%0.contains.?
              A&. A& s! y$
            ))
            :qid user_crate__vstd__multiset__Multiset__lemma_is_singleton_17
            :skolemid skolem_user_crate__vstd__multiset__Multiset__lemma_is_singleton_17
          ))
          %%switch_label%%0
       )))
       (=>
        (not (= (vstd.multiset.impl&%0.len.? A&. A& s!) 1))
        %%switch_label%%0
      ))
      (and
       (not %%switch_label%%0)
       (=>
        %%location_label%%5
        (= (vstd.multiset_lib.impl&%0.is_singleton.? A&. A& s!) (= (vstd.multiset.impl&%0.len.?
           A&. A& s!
          ) 1
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
