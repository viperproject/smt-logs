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

;; MODULE 'module vstd::arithmetic::internals::mod_internals'

;; Fuel
(declare-const fuel%vstd.arithmetic.internals.general_internals.is_le. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mod_internals_nonlinear.modulus. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mod_internals.mod_recursive. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mod_internals.mod_auto_plus. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mod_internals.mod_auto_minus. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mod_internals.mod_auto. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_commutes. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_plus.
 FuelId
)
(declare-const fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_minus.
 FuelId
)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_is_commutative. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_inequality. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_add. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_add_other_way. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_sub. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_sub_other_way. FuelId)
(declare-const fuel%vstd.math.add. FuelId)
(declare-const fuel%vstd.math.sub. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.
 FuelId
)
(declare-const fuel%vstd.arithmetic.mul.group_mul_is_distributive. FuelId)
(declare-const fuel%vstd.arithmetic.mul.group_mul_is_commutative_and_distributive.
 FuelId
)
(assert
 (distinct fuel%vstd.arithmetic.internals.general_internals.is_le. fuel%vstd.arithmetic.internals.mod_internals_nonlinear.modulus.
  fuel%vstd.arithmetic.internals.mod_internals.mod_recursive. fuel%vstd.arithmetic.internals.mod_internals.mod_auto_plus.
  fuel%vstd.arithmetic.internals.mod_internals.mod_auto_minus. fuel%vstd.arithmetic.internals.mod_internals.mod_auto.
  fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_commutes. fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_plus.
  fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_minus. fuel%vstd.arithmetic.mul.lemma_mul_is_commutative.
  fuel%vstd.arithmetic.mul.lemma_mul_inequality. fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_add.
  fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_add_other_way. fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_sub.
  fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_sub_other_way. fuel%vstd.math.add.
  fuel%vstd.math.sub. fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.
  fuel%vstd.arithmetic.mul.group_mul_is_distributive. fuel%vstd.arithmetic.mul.group_mul_is_commutative_and_distributive.
))
(assert
 (=>
  (fuel_bool_default fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.)
  (and
   (fuel_bool_default fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_commutes.)
   (fuel_bool_default fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_plus.)
   (fuel_bool_default fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_minus.)
)))
(assert
 (=>
  (fuel_bool_default fuel%vstd.arithmetic.mul.group_mul_is_distributive.)
  (and
   (fuel_bool_default fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_add.)
   (fuel_bool_default fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_add_other_way.)
   (fuel_bool_default fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_sub.)
   (fuel_bool_default fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_sub_other_way.)
)))
(assert
 (=>
  (fuel_bool_default fuel%vstd.arithmetic.mul.group_mul_is_commutative_and_distributive.)
  (and
   (fuel_bool_default fuel%vstd.arithmetic.mul.lemma_mul_is_commutative.)
   (fuel_bool_default fuel%vstd.arithmetic.mul.group_mul_is_distributive.)
)))

;; Datatypes
(declare-datatypes ((tuple%0. 0)) (((tuple%0./tuple%0))))
(declare-fun TYPE%fun%1. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%fun%2. (Dcr Type Dcr Type Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%fun%1. (%%Function%%) Poly)
(declare-fun %Poly%fun%1. (Poly) %%Function%%)
(declare-fun Poly%fun%2. (%%Function%%) Poly)
(declare-fun %Poly%fun%2. (Poly) %%Function%%)
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

;; Function-Decl crate::vstd::arithmetic::internals::general_internals::is_le
(declare-fun vstd.arithmetic.internals.general_internals.is_le.? (Poly Poly) Bool)

;; Function-Decl crate::vstd::arithmetic::internals::mod_internals_nonlinear::modulus
(declare-fun vstd.arithmetic.internals.mod_internals_nonlinear.modulus.? (Poly Poly)
 Int
)

;; Function-Decl crate::vstd::arithmetic::internals::mod_internals::mod_auto_plus
(declare-fun vstd.arithmetic.internals.mod_internals.mod_auto_plus.? (Poly) Bool)

;; Function-Decl crate::vstd::arithmetic::internals::mod_internals::mod_auto_minus
(declare-fun vstd.arithmetic.internals.mod_internals.mod_auto_minus.? (Poly) Bool)

;; Function-Decl crate::vstd::arithmetic::internals::mod_internals::mod_auto
(declare-fun vstd.arithmetic.internals.mod_internals.mod_auto.? (Poly) Bool)

;; Function-Decl crate::vstd::arithmetic::internals::mod_internals::mod_recursive
(declare-fun vstd.arithmetic.internals.mod_internals.mod_recursive.? (Poly Poly) Int)
(declare-fun vstd.arithmetic.internals.mod_internals.rec%mod_recursive.? (Poly Poly
  Fuel
 ) Int
)

;; Function-Decl crate::vstd::math::add
(declare-fun vstd.math.add.? (Poly Poly) Int)

;; Function-Decl crate::vstd::math::sub
(declare-fun vstd.math.sub.? (Poly Poly) Int)

;; Function-Axioms crate::vstd::arithmetic::internals::general_internals::is_le
(assert
 (fuel_bool_default fuel%vstd.arithmetic.internals.general_internals.is_le.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.general_internals.is_le.)
  (forall ((x! Poly) (y! Poly)) (!
    (= (vstd.arithmetic.internals.general_internals.is_le.? x! y!) (<= (%I x!) (%I y!)))
    :pattern ((vstd.arithmetic.internals.general_internals.is_le.? x! y!))
    :qid internal_vstd.arithmetic.internals.general_internals.is_le.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.general_internals.is_le.?_definition
))))

;; Function-Axioms crate::vstd::arithmetic::internals::mod_internals_nonlinear::modulus
(assert
 (fuel_bool_default fuel%vstd.arithmetic.internals.mod_internals_nonlinear.modulus.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.mod_internals_nonlinear.modulus.)
  (forall ((x! Poly) (y! Poly)) (!
    (= (vstd.arithmetic.internals.mod_internals_nonlinear.modulus.? x! y!) (EucMod (%I x!)
      (%I y!)
    ))
    :pattern ((vstd.arithmetic.internals.mod_internals_nonlinear.modulus.? x! y!))
    :qid internal_vstd.arithmetic.internals.mod_internals_nonlinear.modulus.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.mod_internals_nonlinear.modulus.?_definition
))))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::mod_auto_plus
(declare-fun req%vstd.arithmetic.internals.mod_internals.mod_auto_plus. (Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((n! Poly)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.mod_auto_plus. n!) (=>
     %%global_location_label%%0
     (> (%I n!) 0)
   ))
   :pattern ((req%vstd.arithmetic.internals.mod_internals.mod_auto_plus. n!))
   :qid internal_req__vstd.arithmetic.internals.mod_internals.mod_auto_plus._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals.mod_auto_plus._definition
)))

;; Function-Axioms crate::vstd::arithmetic::internals::mod_internals::mod_auto_plus
(assert
 (fuel_bool_default fuel%vstd.arithmetic.internals.mod_internals.mod_auto_plus.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.mod_internals.mod_auto_plus.)
  (forall ((n! Poly)) (!
    (= (vstd.arithmetic.internals.mod_internals.mod_auto_plus.? n!) (forall ((x$ Int) (y$
        Int
       )
      ) (!
       (let
        ((z$ (Add (EucMod x$ (%I n!)) (EucMod y$ (%I n!)))))
        (or
         (and
          (and
           (<= 0 z$)
           (< z$ (%I n!))
          )
          (= (EucMod (Add x$ y$) (%I n!)) z$)
         )
         (and
          (and
           (<= (%I n!) z$)
           (< z$ (Add (%I n!) (%I n!)))
          )
          (= (EucMod (Add x$ y$) (%I n!)) (Sub z$ (%I n!)))
       )))
       :pattern ((EucMod (Add x$ y$) (%I n!)))
       :qid user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_plus_0
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_plus_0
    )))
    :pattern ((vstd.arithmetic.internals.mod_internals.mod_auto_plus.? n!))
    :qid internal_vstd.arithmetic.internals.mod_internals.mod_auto_plus.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.mod_internals.mod_auto_plus.?_definition
))))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::mod_auto_minus
(declare-fun req%vstd.arithmetic.internals.mod_internals.mod_auto_minus. (Poly) Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((n! Poly)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.mod_auto_minus. n!) (=>
     %%global_location_label%%1
     (> (%I n!) 0)
   ))
   :pattern ((req%vstd.arithmetic.internals.mod_internals.mod_auto_minus. n!))
   :qid internal_req__vstd.arithmetic.internals.mod_internals.mod_auto_minus._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals.mod_auto_minus._definition
)))

;; Function-Axioms crate::vstd::arithmetic::internals::mod_internals::mod_auto_minus
(assert
 (fuel_bool_default fuel%vstd.arithmetic.internals.mod_internals.mod_auto_minus.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.mod_internals.mod_auto_minus.)
  (forall ((n! Poly)) (!
    (= (vstd.arithmetic.internals.mod_internals.mod_auto_minus.? n!) (forall ((x$ Int) (
        y$ Int
       )
      ) (!
       (let
        ((z$ (Sub (EucMod x$ (%I n!)) (EucMod y$ (%I n!)))))
        (or
         (and
          (and
           (<= 0 z$)
           (< z$ (%I n!))
          )
          (= (EucMod (Sub x$ y$) (%I n!)) z$)
         )
         (and
          (and
           (<= (Sub 0 (%I n!)) z$)
           (< z$ 0)
          )
          (= (EucMod (Sub x$ y$) (%I n!)) (Add z$ (%I n!)))
       )))
       :pattern ((EucMod (Sub x$ y$) (%I n!)))
       :qid user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_minus_1
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_minus_1
    )))
    :pattern ((vstd.arithmetic.internals.mod_internals.mod_auto_minus.? n!))
    :qid internal_vstd.arithmetic.internals.mod_internals.mod_auto_minus.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.mod_internals.mod_auto_minus.?_definition
))))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::mod_auto
(declare-fun req%vstd.arithmetic.internals.mod_internals.mod_auto. (Poly) Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((n! Poly)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.mod_auto. n!) (=>
     %%global_location_label%%2
     (> (%I n!) 0)
   ))
   :pattern ((req%vstd.arithmetic.internals.mod_internals.mod_auto. n!))
   :qid internal_req__vstd.arithmetic.internals.mod_internals.mod_auto._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals.mod_auto._definition
)))

;; Function-Axioms crate::vstd::arithmetic::internals::mod_internals::mod_auto
(assert
 (fuel_bool_default fuel%vstd.arithmetic.internals.mod_internals.mod_auto.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.mod_internals.mod_auto.)
  (forall ((n! Poly)) (!
    (= (vstd.arithmetic.internals.mod_internals.mod_auto.? n!) (and
      (and
       (and
        (and
         (and
          (= (EucMod (%I n!) (%I n!)) 0)
          (= (EucMod (Sub 0 (%I n!)) (%I n!)) 0)
         )
         (forall ((x$ Int)) (!
           (= (EucMod (EucMod x$ (%I n!)) (%I n!)) (EucMod x$ (%I n!)))
           :pattern ((EucMod (EucMod x$ (%I n!)) (%I n!)))
           :qid user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_2
           :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_2
        )))
        (forall ((x$ Int)) (!
          (= (and
            (<= 0 x$)
            (< x$ (%I n!))
           ) (= (EucMod x$ (%I n!)) x$)
          )
          :pattern ((EucMod x$ (%I n!)))
          :qid user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_3
          :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_3
       )))
       (vstd.arithmetic.internals.mod_internals.mod_auto_plus.? n!)
      )
      (vstd.arithmetic.internals.mod_internals.mod_auto_minus.? n!)
    ))
    :pattern ((vstd.arithmetic.internals.mod_internals.mod_auto.? n!))
    :qid internal_vstd.arithmetic.internals.mod_internals.mod_auto.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.mod_internals.mod_auto.?_definition
))))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::mod_recursive
(declare-fun req%vstd.arithmetic.internals.mod_internals.mod_recursive. (Poly Poly)
 Bool
)
(declare-const %%global_location_label%%3 Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((x! Poly) (d! Poly)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.mod_recursive. x! d!) (and
     (=>
      %%global_location_label%%3
      (> (%I d!) 0)
     )
     (=>
      %%global_location_label%%4
      (> (%I d!) 0)
   )))
   :pattern ((req%vstd.arithmetic.internals.mod_internals.mod_recursive. x! d!))
   :qid internal_req__vstd.arithmetic.internals.mod_internals.mod_recursive._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals.mod_recursive._definition
)))

;; Spec-Termination crate::vstd::arithmetic::internals::mod_internals::mod_recursive
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/internals/mod_internals.rs:38:1: 38:54 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Poly)
 (declare-const d! Poly)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Poly)
 (declare-const tmp%3 Int)
 (declare-const tmp%4 Poly)
 (declare-const tmp%5 Poly)
 (declare-const tmp%6 Int)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type x! INT)
 )
 (assert
  (has_type d! INT)
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= decrease%init0 (ite
      (< (%I x!) 0)
      (Sub (%I d!) (%I x!))
      (%I x!)
    ))
    (=>
     (> (%I d!) 0)
     (or
      (and
       (=>
        (< (%I x!) 0)
        (=>
         (= tmp%2 (I (Add (%I d!) (%I x!))))
         (and
          (=>
           %%location_label%%0
           (check_decrease_int (let
             ((x!$0 (%I tmp%2)) (d!$1 (%I d!)))
             (ite
              (< x!$0 0)
              (Sub d!$1 x!$0)
              x!$0
             )
            ) decrease%init0 false
          ))
          (=>
           (= tmp%1 (vstd.arithmetic.internals.mod_internals.mod_recursive.? (I (Add (%I d!) (%I
                x!
              ))
             ) d!
           ))
           (=>
            (= tmp%6 tmp%1)
            %%switch_label%%0
       )))))
       (=>
        (not (< (%I x!) 0))
        (or
         (and
          (=>
           (< (%I x!) (%I d!))
           (=>
            (= tmp%5 x!)
            %%switch_label%%1
          ))
          (=>
           (not (< (%I x!) (%I d!)))
           (=>
            (= tmp%4 (I (Sub (%I x!) (%I d!))))
            (and
             (=>
              %%location_label%%1
              (check_decrease_int (let
                ((x!$0 (%I tmp%4)) (d!$1 (%I d!)))
                (ite
                 (< x!$0 0)
                 (Sub d!$1 x!$0)
                 x!$0
                )
               ) decrease%init0 false
             ))
             (=>
              (= tmp%3 (vstd.arithmetic.internals.mod_internals.mod_recursive.? (I (Sub (%I x!) (%I
                   d!
                 ))
                ) d!
              ))
              (=>
               (= tmp%5 (I tmp%3))
               %%switch_label%%1
         ))))))
         (and
          (not %%switch_label%%1)
          (=>
           (= tmp%6 (%I tmp%5))
           %%switch_label%%0
      )))))
      (not %%switch_label%%0)
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Axioms crate::vstd::arithmetic::internals::mod_internals::mod_recursive
(declare-const fuel_nat%vstd.arithmetic.internals.mod_internals.mod_recursive. Fuel)
(assert
 (forall ((x! Poly) (d! Poly) (fuel% Fuel)) (!
   (= (vstd.arithmetic.internals.mod_internals.rec%mod_recursive.? x! d! fuel%) (vstd.arithmetic.internals.mod_internals.rec%mod_recursive.?
     x! d! zero
   ))
   :pattern ((vstd.arithmetic.internals.mod_internals.rec%mod_recursive.? x! d! fuel%))
   :qid internal_vstd.arithmetic.internals.mod_internals.mod_recursive._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.arithmetic.internals.mod_internals.mod_recursive._fuel_to_zero_definition
)))
(assert
 (forall ((x! Poly) (d! Poly) (fuel% Fuel)) (!
   (=>
    (and
     (has_type x! INT)
     (has_type d! INT)
     (> (%I d!) 0)
    )
    (= (vstd.arithmetic.internals.mod_internals.rec%mod_recursive.? x! d! (succ fuel%))
     (ite
      (< (%I x!) 0)
      (vstd.arithmetic.internals.mod_internals.rec%mod_recursive.? (I (Add (%I d!) (%I x!)))
       d! fuel%
      )
      (ite
       (< (%I x!) (%I d!))
       (%I x!)
       (vstd.arithmetic.internals.mod_internals.rec%mod_recursive.? (I (Sub (%I x!) (%I d!)))
        d! fuel%
   )))))
   :pattern ((vstd.arithmetic.internals.mod_internals.rec%mod_recursive.? x! d! (succ fuel%)))
   :qid internal_vstd.arithmetic.internals.mod_internals.mod_recursive._fuel_to_body_definition
   :skolemid skolem_internal_vstd.arithmetic.internals.mod_internals.mod_recursive._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.mod_internals.mod_recursive.)
  (forall ((x! Poly) (d! Poly)) (!
    (=>
     (and
      (has_type x! INT)
      (has_type d! INT)
      (> (%I d!) 0)
     )
     (= (vstd.arithmetic.internals.mod_internals.mod_recursive.? x! d!) (vstd.arithmetic.internals.mod_internals.rec%mod_recursive.?
       x! d! (succ fuel_nat%vstd.arithmetic.internals.mod_internals.mod_recursive.)
    )))
    :pattern ((vstd.arithmetic.internals.mod_internals.mod_recursive.? x! d!))
    :qid internal_vstd.arithmetic.internals.mod_internals.mod_recursive.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.mod_internals.mod_recursive.?_definition
))))

;; Function-Axioms crate::vstd::math::add
(assert
 (fuel_bool_default fuel%vstd.math.add.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.math.add.)
  (forall ((x! Poly) (y! Poly)) (!
    (= (vstd.math.add.? x! y!) (Add (%I x!) (%I y!)))
    :pattern ((vstd.math.add.? x! y!))
    :qid internal_vstd.math.add.?_definition
    :skolemid skolem_internal_vstd.math.add.?_definition
))))

;; Function-Axioms crate::vstd::math::sub
(assert
 (fuel_bool_default fuel%vstd.math.sub.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.math.sub.)
  (forall ((x! Poly) (y! Poly)) (!
    (= (vstd.math.sub.? x! y!) (Sub (%I x!) (%I y!)))
    :pattern ((vstd.math.sub.? x! y!))
    :qid internal_vstd.math.sub.?_definition
    :skolemid skolem_internal_vstd.math.sub.?_definition
))))

;; Function-Specs crate::vstd::arithmetic::internals::div_internals_nonlinear::lemma_small_div
(declare-fun ens%vstd.arithmetic.internals.div_internals_nonlinear.lemma_small_div.
 (Int) Bool
)
(assert
 (forall ((no%param Int)) (!
   (= (ens%vstd.arithmetic.internals.div_internals_nonlinear.lemma_small_div. no%param)
    (forall ((x$ Int) (d$ Int)) (!
      (=>
       (and
        (and
         (<= 0 x$)
         (< x$ d$)
        )
        (> d$ 0)
       )
       (= (EucDiv x$ d$) 0)
      )
      :pattern ((EucDiv x$ d$))
      :qid user_crate__vstd__arithmetic__internals__div_internals_nonlinear__lemma_small_div_4
      :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals_nonlinear__lemma_small_div_4
   )))
   :pattern ((ens%vstd.arithmetic.internals.div_internals_nonlinear.lemma_small_div. no%param))
   :qid internal_ens__vstd.arithmetic.internals.div_internals_nonlinear.lemma_small_div._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.div_internals_nonlinear.lemma_small_div._definition
)))

;; Function-Specs crate::vstd::arithmetic::internals::general_internals::lemma_induction_helper
(declare-fun req%vstd.arithmetic.internals.general_internals.lemma_induction_helper.
 (Int %%Function%% Int) Bool
)
(declare-const %%global_location_label%%5 Bool)
(declare-const %%global_location_label%%6 Bool)
(declare-const %%global_location_label%%7 Bool)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((n! Int) (f! %%Function%%) (x! Int)) (!
   (= (req%vstd.arithmetic.internals.general_internals.lemma_induction_helper. n! f! x!)
    (and
     (=>
      %%global_location_label%%5
      (> n! 0)
     )
     (=>
      %%global_location_label%%6
      (forall ((i$ Poly)) (!
        (=>
         (has_type i$ INT)
         (=>
          (and
           (<= 0 (%I i$))
           (< (%I i$) n!)
          )
          (%B (%%apply%%0 f! i$))
        ))
        :pattern ((%%apply%%0 f! i$))
        :qid user_crate__vstd__arithmetic__internals__general_internals__lemma_induction_helper_5
        :skolemid skolem_user_crate__vstd__arithmetic__internals__general_internals__lemma_induction_helper_5
     )))
     (=>
      %%global_location_label%%7
      (forall ((i$ Poly)) (!
        (=>
         (has_type i$ INT)
         (=>
          (and
           (>= (%I i$) 0)
           (%B (%%apply%%0 f! i$))
          )
          (%B (%%apply%%0 f! (I (vstd.math.add.? i$ (I n!)))))
        ))
        :pattern ((%%apply%%0 f! i$) (%%apply%%0 f! (I (vstd.math.add.? i$ (I n!)))))
        :qid user_crate__vstd__arithmetic__internals__general_internals__lemma_induction_helper_6
        :skolemid skolem_user_crate__vstd__arithmetic__internals__general_internals__lemma_induction_helper_6
     )))
     (=>
      %%global_location_label%%8
      (forall ((i$ Poly)) (!
        (=>
         (has_type i$ INT)
         (=>
          (and
           (< (%I i$) n!)
           (%B (%%apply%%0 f! i$))
          )
          (%B (%%apply%%0 f! (I (vstd.math.sub.? i$ (I n!)))))
        ))
        :pattern ((%%apply%%0 f! i$) (%%apply%%0 f! (I (vstd.math.sub.? i$ (I n!)))))
        :qid user_crate__vstd__arithmetic__internals__general_internals__lemma_induction_helper_7
        :skolemid skolem_user_crate__vstd__arithmetic__internals__general_internals__lemma_induction_helper_7
   )))))
   :pattern ((req%vstd.arithmetic.internals.general_internals.lemma_induction_helper.
     n! f! x!
   ))
   :qid internal_req__vstd.arithmetic.internals.general_internals.lemma_induction_helper._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.general_internals.lemma_induction_helper._definition
)))
(declare-fun ens%vstd.arithmetic.internals.general_internals.lemma_induction_helper.
 (Int %%Function%% Int) Bool
)
(assert
 (forall ((n! Int) (f! %%Function%%) (x! Int)) (!
   (= (ens%vstd.arithmetic.internals.general_internals.lemma_induction_helper. n! f! x!)
    (%B (%%apply%%0 f! (I x!)))
   )
   :pattern ((ens%vstd.arithmetic.internals.general_internals.lemma_induction_helper.
     n! f! x!
   ))
   :qid internal_ens__vstd.arithmetic.internals.general_internals.lemma_induction_helper._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.general_internals.lemma_induction_helper._definition
)))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals_nonlinear::lemma_fundamental_div_mod
(declare-fun req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
 (Int Int) Bool
)
(declare-const %%global_location_label%%9 Bool)
(assert
 (forall ((x! Int) (d! Int)) (!
   (= (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
     x! d!
    ) (=>
     %%global_location_label%%9
     (not (= d! 0))
   ))
   :pattern ((req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
     x! d!
   ))
   :qid internal_req__vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod._definition
)))
(declare-fun ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
 (Int Int) Bool
)
(assert
 (forall ((x! Int) (d! Int)) (!
   (= (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
     x! d!
    ) (= x! (Add (Mul d! (EucDiv x! d!)) (EucMod x! d!)))
   )
   :pattern ((ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
     x! d!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod._definition
)))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals_nonlinear::lemma_small_mod
(declare-fun req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_small_mod.
 (Int Int) Bool
)
(declare-const %%global_location_label%%10 Bool)
(declare-const %%global_location_label%%11 Bool)
(assert
 (forall ((x! Int) (m! Int)) (!
   (= (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_small_mod. x! m!)
    (and
     (=>
      %%global_location_label%%10
      (< x! m!)
     )
     (=>
      %%global_location_label%%11
      (< 0 m!)
   )))
   :pattern ((req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_small_mod. x!
     m!
   ))
   :qid internal_req__vstd.arithmetic.internals.mod_internals_nonlinear.lemma_small_mod._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals_nonlinear.lemma_small_mod._definition
)))
(declare-fun ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_small_mod.
 (Int Int) Bool
)
(assert
 (forall ((x! Int) (m! Int)) (!
   (= (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_small_mod. x! m!)
    (= (vstd.arithmetic.internals.mod_internals_nonlinear.modulus.? (I x!) (I m!)) x!)
   )
   :pattern ((ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_small_mod. x!
     m!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mod_internals_nonlinear.lemma_small_mod._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mod_internals_nonlinear.lemma_small_mod._definition
)))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals_nonlinear::lemma_mod_range
(declare-fun req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_mod_range.
 (Int Int) Bool
)
(declare-const %%global_location_label%%12 Bool)
(assert
 (forall ((x! Int) (m! Int)) (!
   (= (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_mod_range. x! m!)
    (=>
     %%global_location_label%%12
     (> m! 0)
   ))
   :pattern ((req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_mod_range. x!
     m!
   ))
   :qid internal_req__vstd.arithmetic.internals.mod_internals_nonlinear.lemma_mod_range._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals_nonlinear.lemma_mod_range._definition
)))
(declare-fun ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_mod_range.
 (Int Int) Bool
)
(assert
 (forall ((x! Int) (m! Int)) (!
   (= (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_mod_range. x! m!)
    (let
     ((tmp%%$ (vstd.arithmetic.internals.mod_internals_nonlinear.modulus.? (I x!) (I m!))))
     (and
      (<= 0 tmp%%$)
      (< tmp%%$ m!)
   )))
   :pattern ((ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_mod_range. x!
     m!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mod_internals_nonlinear.lemma_mod_range._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mod_internals_nonlinear.lemma_mod_range._definition
)))

;; Function-Specs crate::vstd::arithmetic::internals::mul_internals_nonlinear::lemma_mul_is_distributive_add
(declare-fun ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_is_distributive_add.
 (Int Int Int) Bool
)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_is_distributive_add.
     x! y! z!
    ) (= (Mul x! (Add y! z!)) (Add (Mul x! y!) (Mul x! z!)))
   )
   :pattern ((ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_is_distributive_add.
     x! y! z!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_is_distributive_add._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_is_distributive_add._definition
)))

;; Function-Specs crate::vstd::arithmetic::mul::lemma_mul_is_commutative
(declare-fun ens%vstd.arithmetic.mul.lemma_mul_is_commutative. (Int Int) Bool)
(assert
 (forall ((x! Int) (y! Int)) (!
   (= (ens%vstd.arithmetic.mul.lemma_mul_is_commutative. x! y!) (= (Mul x! y!) (Mul y!
      x!
   )))
   :pattern ((ens%vstd.arithmetic.mul.lemma_mul_is_commutative. x! y!))
   :qid internal_ens__vstd.arithmetic.mul.lemma_mul_is_commutative._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.mul.lemma_mul_is_commutative._definition
)))

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_is_commutative
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_commutative.)
  (forall ((x! Int) (y! Int)) (!
    (= (Mul x! y!) (Mul y! x!))
    :pattern ((Mul x! y!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_is_commutative_8
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_is_commutative_8
))))

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_is_distributive_add
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_add.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (= (Mul x! (Add y! z!)) (Add (Mul x! y!) (Mul x! z!)))
    :pattern ((Mul x! (Add y! z!)))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_is_distributive_add_9
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_is_distributive_add_9
))))

;; Broadcast crate::vstd::arithmetic::internals::mul_internals::lemma_mul_commutes
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_commutes.)
  (forall ((x! Int) (y! Int)) (!
    (= (Mul x! y!) (Mul y! x!))
    :pattern ((Mul x! y!))
    :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_commutes_10
    :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_commutes_10
))))

;; Broadcast crate::vstd::arithmetic::internals::mul_internals::lemma_mul_distributes_plus
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_plus.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (= (Mul (Add x! y!) z!) (Add (Mul x! z!) (Mul y! z!)))
    :pattern ((Mul (Add x! y!) z!))
    :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_distributes_plus_11
    :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_distributes_plus_11
))))

;; Broadcast crate::vstd::arithmetic::internals::mul_internals::lemma_mul_distributes_minus
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.lemma_mul_distributes_minus.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (= (Mul (Sub x! y!) z!) (Sub (Mul x! z!) (Mul y! z!)))
    :pattern ((Mul (Sub x! y!) z!))
    :qid user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_distributes_minus_12
    :skolemid skolem_user_crate__vstd__arithmetic__internals__mul_internals__lemma_mul_distributes_minus_12
))))

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_is_distributive_add_other_way
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_add_other_way.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (= (Mul (Add y! z!) x!) (Add (Mul y! x!) (Mul z! x!)))
    :pattern ((Mul (Add y! z!) x!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_is_distributive_add_other_way_13
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_is_distributive_add_other_way_13
))))

;; Function-Specs crate::vstd::arithmetic::mul::lemma_mul_is_distributive_sub
(declare-fun ens%vstd.arithmetic.mul.lemma_mul_is_distributive_sub. (Int Int Int)
 Bool
)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (ens%vstd.arithmetic.mul.lemma_mul_is_distributive_sub. x! y! z!) (= (Mul x! (Sub
       y! z!
      )
     ) (Sub (Mul x! y!) (Mul x! z!))
   ))
   :pattern ((ens%vstd.arithmetic.mul.lemma_mul_is_distributive_sub. x! y! z!))
   :qid internal_ens__vstd.arithmetic.mul.lemma_mul_is_distributive_sub._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.mul.lemma_mul_is_distributive_sub._definition
)))

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_is_distributive_sub
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_sub.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (= (Mul x! (Sub y! z!)) (Sub (Mul x! y!) (Mul x! z!)))
    :pattern ((Mul x! (Sub y! z!)))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_is_distributive_sub_14
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_is_distributive_sub_14
))))

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_is_distributive_sub_other_way
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_distributive_sub_other_way.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (= (Mul (Sub y! z!) x!) (Sub (Mul y! x!) (Mul z! x!)))
    :pattern ((Mul (Sub y! z!) x!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_is_distributive_sub_other_way_15
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_is_distributive_sub_other_way_15
))))

;; Function-Specs crate::vstd::arithmetic::mul::lemma_mul_inequality
(declare-fun req%vstd.arithmetic.mul.lemma_mul_inequality. (Int Int Int) Bool)
(declare-const %%global_location_label%%13 Bool)
(declare-const %%global_location_label%%14 Bool)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (req%vstd.arithmetic.mul.lemma_mul_inequality. x! y! z!) (and
     (=>
      %%global_location_label%%13
      (<= x! y!)
     )
     (=>
      %%global_location_label%%14
      (>= z! 0)
   )))
   :pattern ((req%vstd.arithmetic.mul.lemma_mul_inequality. x! y! z!))
   :qid internal_req__vstd.arithmetic.mul.lemma_mul_inequality._definition
   :skolemid skolem_internal_req__vstd.arithmetic.mul.lemma_mul_inequality._definition
)))
(declare-fun ens%vstd.arithmetic.mul.lemma_mul_inequality. (Int Int Int) Bool)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (ens%vstd.arithmetic.mul.lemma_mul_inequality. x! y! z!) (<= (Mul x! z!) (Mul y!
      z!
   )))
   :pattern ((ens%vstd.arithmetic.mul.lemma_mul_inequality. x! y! z!))
   :qid internal_ens__vstd.arithmetic.mul.lemma_mul_inequality._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.mul.lemma_mul_inequality._definition
)))

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_inequality
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_inequality.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (=>
     (and
      (<= x! y!)
      (>= z! 0)
     )
     (<= (Mul x! z!) (Mul y! z!))
    )
    :pattern ((Mul x! z!) (Mul y! z!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_inequality_16
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_inequality_16
))))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::lemma_mod_add_denominator
(declare-fun req%vstd.arithmetic.internals.mod_internals.lemma_mod_add_denominator.
 (Int Int) Bool
)
(declare-const %%global_location_label%%15 Bool)
(assert
 (forall ((n! Int) (x! Int)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.lemma_mod_add_denominator. n! x!)
    (=>
     %%global_location_label%%15
     (> n! 0)
   ))
   :pattern ((req%vstd.arithmetic.internals.mod_internals.lemma_mod_add_denominator. n!
     x!
   ))
   :qid internal_req__vstd.arithmetic.internals.mod_internals.lemma_mod_add_denominator._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals.lemma_mod_add_denominator._definition
)))
(declare-fun ens%vstd.arithmetic.internals.mod_internals.lemma_mod_add_denominator.
 (Int Int) Bool
)
(assert
 (forall ((n! Int) (x! Int)) (!
   (= (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_add_denominator. n! x!)
    (= (EucMod (Add x! n!) n!) (EucMod x! n!))
   )
   :pattern ((ens%vstd.arithmetic.internals.mod_internals.lemma_mod_add_denominator. n!
     x!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_add_denominator._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_add_denominator._definition
)))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::lemma_mod_sub_denominator
(declare-fun req%vstd.arithmetic.internals.mod_internals.lemma_mod_sub_denominator.
 (Int Int) Bool
)
(declare-const %%global_location_label%%16 Bool)
(assert
 (forall ((n! Int) (x! Int)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.lemma_mod_sub_denominator. n! x!)
    (=>
     %%global_location_label%%16
     (> n! 0)
   ))
   :pattern ((req%vstd.arithmetic.internals.mod_internals.lemma_mod_sub_denominator. n!
     x!
   ))
   :qid internal_req__vstd.arithmetic.internals.mod_internals.lemma_mod_sub_denominator._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals.lemma_mod_sub_denominator._definition
)))
(declare-fun ens%vstd.arithmetic.internals.mod_internals.lemma_mod_sub_denominator.
 (Int Int) Bool
)
(assert
 (forall ((n! Int) (x! Int)) (!
   (= (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_sub_denominator. n! x!)
    (= (EucMod (Sub x! n!) n!) (EucMod x! n!))
   )
   :pattern ((ens%vstd.arithmetic.internals.mod_internals.lemma_mod_sub_denominator. n!
     x!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_sub_denominator._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_sub_denominator._definition
)))

;; Function-Def crate::vstd::arithmetic::internals::mod_internals::lemma_mod_sub_denominator
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/internals/mod_internals.rs:228:1: 228:55 (#0)
(get-info :all-statistics)
(push)
 (declare-const n! Int)
 (declare-const x! Int)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Int)
 (declare-const zm@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (> n! 0)
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%5 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
      x! n!
    ))
    (=>
     (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
      x! n!
     )
     (=>
      (= tmp%1 (Sub x! n!))
      (and
       (=>
        %%location_label%%1
        (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
         tmp%1 n!
       ))
       (=>
        (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
         tmp%1 n!
        )
        (=>
         (= zm@ (Add (Sub (EucDiv (Sub x! n!) n!) (EucDiv x! n!)) 1))
         (=>
          (fuel_bool fuel%vstd.arithmetic.mul.group_mul_is_distributive.)
          (and
           (=>
            (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.)
            (=>
             %%location_label%%2
             (= 0 (Sub (Add (Mul n! zm@) (EucMod (Sub x! n!) n!)) (EucMod x! n!)))
           ))
           (=>
            (= 0 (Sub (Add (Mul n! zm@) (EucMod (Sub x! n!) n!)) (EucMod x! n!)))
            (or
             (and
              (=>
               (> zm@ 0)
               (and
                (=>
                 %%location_label%%3
                 (req%vstd.arithmetic.mul.lemma_mul_inequality. 1 zm@ n!)
                )
                (=>
                 (ens%vstd.arithmetic.mul.lemma_mul_inequality. 1 zm@ n!)
                 %%switch_label%%1
              )))
              (=>
               (not (> zm@ 0))
               %%switch_label%%1
             ))
             (and
              (not %%switch_label%%1)
              (or
               (and
                (=>
                 (< zm@ 0)
                 (=>
                  (= tmp%2 (Sub 0 1))
                  (and
                   (=>
                    %%location_label%%4
                    (req%vstd.arithmetic.mul.lemma_mul_inequality. zm@ tmp%2 n!)
                   )
                   (=>
                    (ens%vstd.arithmetic.mul.lemma_mul_inequality. zm@ tmp%2 n!)
                    %%switch_label%%0
                ))))
                (=>
                 (not (< zm@ 0))
                 %%switch_label%%0
               ))
               (and
                (not %%switch_label%%0)
                (=>
                 %%location_label%%5
                 (= (EucMod (Sub x! n!) n!) (EucMod x! n!))
 ))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::lemma_div_add_denominator
(declare-fun req%vstd.arithmetic.internals.mod_internals.lemma_div_add_denominator.
 (Int Int) Bool
)
(declare-const %%global_location_label%%17 Bool)
(assert
 (forall ((n! Int) (x! Int)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.lemma_div_add_denominator. n! x!)
    (=>
     %%global_location_label%%17
     (> n! 0)
   ))
   :pattern ((req%vstd.arithmetic.internals.mod_internals.lemma_div_add_denominator. n!
     x!
   ))
   :qid internal_req__vstd.arithmetic.internals.mod_internals.lemma_div_add_denominator._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals.lemma_div_add_denominator._definition
)))
(declare-fun ens%vstd.arithmetic.internals.mod_internals.lemma_div_add_denominator.
 (Int Int) Bool
)
(assert
 (forall ((n! Int) (x! Int)) (!
   (= (ens%vstd.arithmetic.internals.mod_internals.lemma_div_add_denominator. n! x!)
    (= (EucDiv (Add x! n!) n!) (Add (EucDiv x! n!) 1))
   )
   :pattern ((ens%vstd.arithmetic.internals.mod_internals.lemma_div_add_denominator. n!
     x!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mod_internals.lemma_div_add_denominator._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mod_internals.lemma_div_add_denominator._definition
)))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::lemma_div_sub_denominator
(declare-fun req%vstd.arithmetic.internals.mod_internals.lemma_div_sub_denominator.
 (Int Int) Bool
)
(declare-const %%global_location_label%%18 Bool)
(assert
 (forall ((n! Int) (x! Int)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.lemma_div_sub_denominator. n! x!)
    (=>
     %%global_location_label%%18
     (> n! 0)
   ))
   :pattern ((req%vstd.arithmetic.internals.mod_internals.lemma_div_sub_denominator. n!
     x!
   ))
   :qid internal_req__vstd.arithmetic.internals.mod_internals.lemma_div_sub_denominator._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals.lemma_div_sub_denominator._definition
)))
(declare-fun ens%vstd.arithmetic.internals.mod_internals.lemma_div_sub_denominator.
 (Int Int) Bool
)
(assert
 (forall ((n! Int) (x! Int)) (!
   (= (ens%vstd.arithmetic.internals.mod_internals.lemma_div_sub_denominator. n! x!)
    (= (EucDiv (Sub x! n!) n!) (Sub (EucDiv x! n!) 1))
   )
   :pattern ((ens%vstd.arithmetic.internals.mod_internals.lemma_div_sub_denominator. n!
     x!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mod_internals.lemma_div_sub_denominator._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mod_internals.lemma_div_sub_denominator._definition
)))

;; Function-Def crate::vstd::arithmetic::internals::mod_internals::lemma_div_sub_denominator
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/internals/mod_internals.rs:171:1: 171:55 (#0)
(get-info :all-statistics)
(push)
 (declare-const n! Int)
 (declare-const x! Int)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Int)
 (declare-const zm@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (> n! 0)
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%5 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
      x! n!
    ))
    (=>
     (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
      x! n!
     )
     (=>
      (= tmp%1 (Sub x! n!))
      (and
       (=>
        %%location_label%%1
        (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
         tmp%1 n!
       ))
       (=>
        (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
         tmp%1 n!
        )
        (=>
         (= zm@ (Add (Sub (EucDiv (Sub x! n!) n!) (EucDiv x! n!)) 1))
         (and
          (=>
           (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.)
           (=>
            %%location_label%%2
            (= 0 (Sub (Add (Mul n! zm@) (EucMod (Sub x! n!) n!)) (EucMod x! n!)))
          ))
          (=>
           (= 0 (Sub (Add (Mul n! zm@) (EucMod (Sub x! n!) n!)) (EucMod x! n!)))
           (or
            (and
             (=>
              (> zm@ 0)
              (and
               (=>
                %%location_label%%3
                (req%vstd.arithmetic.mul.lemma_mul_inequality. 1 zm@ n!)
               )
               (=>
                (ens%vstd.arithmetic.mul.lemma_mul_inequality. 1 zm@ n!)
                %%switch_label%%1
             )))
             (=>
              (not (> zm@ 0))
              %%switch_label%%1
            ))
            (and
             (not %%switch_label%%1)
             (or
              (and
               (=>
                (< zm@ 0)
                (=>
                 (= tmp%2 (Sub 0 1))
                 (and
                  (=>
                   %%location_label%%4
                   (req%vstd.arithmetic.mul.lemma_mul_inequality. zm@ tmp%2 n!)
                  )
                  (=>
                   (ens%vstd.arithmetic.mul.lemma_mul_inequality. zm@ tmp%2 n!)
                   %%switch_label%%0
               ))))
               (=>
                (not (< zm@ 0))
                %%switch_label%%0
              ))
              (and
               (not %%switch_label%%0)
               (=>
                %%location_label%%5
                (= (EucDiv (Sub x! n!) n!) (Sub (EucDiv x! n!) 1))
 )))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::lemma_mod_below_denominator
(declare-fun req%vstd.arithmetic.internals.mod_internals.lemma_mod_below_denominator.
 (Int Int) Bool
)
(declare-const %%global_location_label%%19 Bool)
(assert
 (forall ((n! Int) (x! Int)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.lemma_mod_below_denominator. n! x!)
    (=>
     %%global_location_label%%19
     (> n! 0)
   ))
   :pattern ((req%vstd.arithmetic.internals.mod_internals.lemma_mod_below_denominator.
     n! x!
   ))
   :qid internal_req__vstd.arithmetic.internals.mod_internals.lemma_mod_below_denominator._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals.lemma_mod_below_denominator._definition
)))
(declare-fun ens%vstd.arithmetic.internals.mod_internals.lemma_mod_below_denominator.
 (Int Int) Bool
)
(assert
 (forall ((n! Int) (x! Int)) (!
   (= (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_below_denominator. n! x!)
    (= (and
      (<= 0 x!)
      (< x! n!)
     ) (= (EucMod x! n!) x!)
   ))
   :pattern ((ens%vstd.arithmetic.internals.mod_internals.lemma_mod_below_denominator.
     n! x!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_below_denominator._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_below_denominator._definition
)))

;; Function-Def crate::vstd::arithmetic::internals::mod_internals::lemma_mod_below_denominator
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/internals/mod_internals.rs:253:1: 253:57 (#0)
(get-info :all-statistics)
(push)
 (declare-const n! Int)
 (declare-const x! Int)
 (declare-const x@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (> n! 0)
 )
 (declare-const %%switch_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (or
     (and
      (=>
       (and
        (<= 0 x@)
        (< x@ n!)
       )
       (and
        (=>
         %%location_label%%0
         (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_small_mod. (nClip x@)
          (nClip n!)
        ))
        (=>
         (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_small_mod. (nClip x@)
          (nClip n!)
         )
         %%switch_label%%0
      )))
      (=>
       (not (and
         (<= 0 x@)
         (< x@ n!)
       ))
       %%switch_label%%0
     ))
     (and
      (not %%switch_label%%0)
      (and
       (=>
        %%location_label%%1
        (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_mod_range. x@ n!)
       )
       (=>
        (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_mod_range. x@ n!)
        (=>
         %%location_label%%2
         (= (and
           (<= 0 x@)
           (< x@ n!)
          ) (= (EucMod x@ n!) x@)
    ))))))
    (=>
     (forall ((x$ Int)) (!
       (= (and
         (<= 0 x$)
         (< x$ n!)
        ) (= (EucMod x$ n!) x$)
       )
       :pattern ((EucMod x$ n!))
       :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_below_denominator_19
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_below_denominator_19
     ))
     (=>
      %%location_label%%3
      (= (and
        (<= 0 x!)
        (< x! n!)
       ) (= (EucMod x! n!) x!)
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::lemma_mod_basics
(declare-fun req%vstd.arithmetic.internals.mod_internals.lemma_mod_basics. (Int) Bool)
(declare-const %%global_location_label%%20 Bool)
(assert
 (forall ((n! Int)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.lemma_mod_basics. n!) (=>
     %%global_location_label%%20
     (> n! 0)
   ))
   :pattern ((req%vstd.arithmetic.internals.mod_internals.lemma_mod_basics. n!))
   :qid internal_req__vstd.arithmetic.internals.mod_internals.lemma_mod_basics._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals.lemma_mod_basics._definition
)))
(declare-fun ens%vstd.arithmetic.internals.mod_internals.lemma_mod_basics. (Int) Bool)
(assert
 (forall ((n! Int)) (!
   (= (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_basics. n!) (and
     (forall ((x$ Int)) (!
       (= (EucMod (Add x$ n!) n!) (EucMod x$ n!))
       :pattern ((EucMod (Add x$ n!) n!))
       :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_20
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_20
     ))
     (forall ((x$ Int)) (!
       (= (EucMod (Sub x$ n!) n!) (EucMod x$ n!))
       :pattern ((EucMod (Sub x$ n!) n!))
       :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_21
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_21
     ))
     (forall ((x$ Int)) (!
       (= (EucDiv (Add x$ n!) n!) (Add (EucDiv x$ n!) 1))
       :pattern ((EucDiv (Add x$ n!) n!))
       :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_22
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_22
     ))
     (forall ((x$ Int)) (!
       (= (EucDiv (Sub x$ n!) n!) (Sub (EucDiv x$ n!) 1))
       :pattern ((EucDiv (Sub x$ n!) n!))
       :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_23
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_23
     ))
     (forall ((x$ Int)) (!
       (= (and
         (<= 0 x$)
         (< x$ n!)
        ) (= (EucMod x$ n!) x$)
       )
       :pattern ((EucMod x$ n!))
       :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_24
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_24
   ))))
   :pattern ((ens%vstd.arithmetic.internals.mod_internals.lemma_mod_basics. n!))
   :qid internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_basics._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_basics._definition
)))

;; Function-Def crate::vstd::arithmetic::internals::mod_internals::lemma_mod_basics
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/internals/mod_internals.rs:277:1: 277:38 (#0)
(get-info :all-statistics)
(push)
 (declare-const n! Int)
 (declare-const x@ Int)
 (declare-const x$1@ Int)
 (declare-const tmp%1 Bool)
 (declare-const x$2@ Int)
 (declare-const x$3@ Int)
 (declare-const x$4@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (> n! 0)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; precondition not satisfied
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
 (assert
  (not (and
    (and
     (=>
      %%location_label%%0
      (req%vstd.arithmetic.internals.mod_internals.lemma_mod_add_denominator. n! x@)
     )
     (=>
      (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_add_denominator. n! x@)
      (=>
       %%location_label%%1
       (= (EucMod (Add x@ n!) n!) (EucMod x@ n!))
    )))
    (=>
     (forall ((x$ Int)) (!
       (= (EucMod (Add x$ n!) n!) (EucMod x$ n!))
       :pattern ((EucMod (Add x$ n!) n!))
       :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_30
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_30
     ))
     (and
      (and
       (=>
        %%location_label%%2
        (req%vstd.arithmetic.internals.mod_internals.lemma_mod_sub_denominator. n! x$1@)
       )
       (=>
        (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_sub_denominator. n! x$1@)
        (=>
         (= tmp%1 (= (EucMod (Sub x$1@ n!) n!) (EucMod x$1@ n!)))
         (and
          (=>
           %%location_label%%3
           tmp%1
          )
          (=>
           tmp%1
           (=>
            %%location_label%%4
            (= (EucMod (Sub x$1@ n!) n!) (EucMod x$1@ n!))
      ))))))
      (=>
       (forall ((x$ Int)) (!
         (= (EucMod (Sub x$ n!) n!) (EucMod x$ n!))
         :pattern ((EucMod (Sub x$ n!) n!))
         :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_31
         :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_31
       ))
       (and
        (and
         (=>
          %%location_label%%5
          (req%vstd.arithmetic.internals.mod_internals.lemma_div_add_denominator. n! x$2@)
         )
         (=>
          (ens%vstd.arithmetic.internals.mod_internals.lemma_div_add_denominator. n! x$2@)
          (=>
           %%location_label%%6
           (= (EucDiv (Add x$2@ n!) n!) (Add (EucDiv x$2@ n!) 1))
        )))
        (=>
         (forall ((x$ Int)) (!
           (= (EucDiv (Add x$ n!) n!) (Add (EucDiv x$ n!) 1))
           :pattern ((EucDiv (Add x$ n!) n!))
           :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_32
           :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_32
         ))
         (and
          (and
           (=>
            %%location_label%%7
            (req%vstd.arithmetic.internals.mod_internals.lemma_div_sub_denominator. n! x$3@)
           )
           (=>
            (ens%vstd.arithmetic.internals.mod_internals.lemma_div_sub_denominator. n! x$3@)
            (=>
             %%location_label%%8
             (= (EucDiv (Sub x$3@ n!) n!) (Sub (EucDiv x$3@ n!) 1))
          )))
          (=>
           (forall ((x$ Int)) (!
             (= (EucDiv (Sub x$ n!) n!) (Sub (EucDiv x$ n!) 1))
             :pattern ((EucDiv (Sub x$ n!) n!))
             :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_33
             :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_33
           ))
           (and
            (and
             (=>
              %%location_label%%9
              (req%vstd.arithmetic.internals.mod_internals.lemma_mod_below_denominator. n! x$4@)
             )
             (=>
              (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_below_denominator. n! x$4@)
              (=>
               %%location_label%%10
               (= (and
                 (<= 0 x$4@)
                 (< x$4@ n!)
                ) (= (EucMod x$4@ n!) x$4@)
            ))))
            (=>
             (forall ((x$ Int)) (!
               (= (and
                 (<= 0 x$)
                 (< x$ n!)
                ) (= (EucMod x$ n!) x$)
               )
               :pattern ((EucMod x$ n!))
               :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_34
               :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_34
             ))
             (and
              (=>
               %%location_label%%11
               (forall ((x$ Int)) (!
                 (= (EucMod (Add x$ n!) n!) (EucMod x$ n!))
                 :pattern ((EucMod (Add x$ n!) n!))
                 :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_25
                 :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_25
              )))
              (and
               (=>
                %%location_label%%12
                (forall ((x$ Int)) (!
                  (= (EucMod (Sub x$ n!) n!) (EucMod x$ n!))
                  :pattern ((EucMod (Sub x$ n!) n!))
                  :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_26
                  :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_26
               )))
               (and
                (=>
                 %%location_label%%13
                 (forall ((x$ Int)) (!
                   (= (EucDiv (Add x$ n!) n!) (Add (EucDiv x$ n!) 1))
                   :pattern ((EucDiv (Add x$ n!) n!))
                   :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_27
                   :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_27
                )))
                (and
                 (=>
                  %%location_label%%14
                  (forall ((x$ Int)) (!
                    (= (EucDiv (Sub x$ n!) n!) (Sub (EucDiv x$ n!) 1))
                    :pattern ((EucDiv (Sub x$ n!) n!))
                    :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_28
                    :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_28
                 )))
                 (=>
                  %%location_label%%15
                  (forall ((x$ Int)) (!
                    (= (and
                      (<= 0 x$)
                      (< x$ n!)
                     ) (= (EucMod x$ n!) x$)
                    )
                    :pattern ((EucMod x$ n!))
                    :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_29
                    :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_29
 )))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::lemma_quotient_and_remainder
(declare-fun req%vstd.arithmetic.internals.mod_internals.lemma_quotient_and_remainder.
 (Int Int Int Int) Bool
)
(declare-const %%global_location_label%%21 Bool)
(declare-const %%global_location_label%%22 Bool)
(declare-const %%global_location_label%%23 Bool)
(assert
 (forall ((x! Int) (q! Int) (r! Int) (n! Int)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.lemma_quotient_and_remainder. x! q!
     r! n!
    ) (and
     (=>
      %%global_location_label%%21
      (> n! 0)
     )
     (=>
      %%global_location_label%%22
      (and
       (<= 0 r!)
       (< r! n!)
     ))
     (=>
      %%global_location_label%%23
      (= x! (Add (Mul q! n!) r!))
   )))
   :pattern ((req%vstd.arithmetic.internals.mod_internals.lemma_quotient_and_remainder.
     x! q! r! n!
   ))
   :qid internal_req__vstd.arithmetic.internals.mod_internals.lemma_quotient_and_remainder._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals.lemma_quotient_and_remainder._definition
)))
(declare-fun ens%vstd.arithmetic.internals.mod_internals.lemma_quotient_and_remainder.
 (Int Int Int Int) Bool
)
(assert
 (forall ((x! Int) (q! Int) (r! Int) (n! Int)) (!
   (= (ens%vstd.arithmetic.internals.mod_internals.lemma_quotient_and_remainder. x! q!
     r! n!
    ) (and
     (= q! (EucDiv x! n!))
     (= r! (EucMod x! n!))
   ))
   :pattern ((ens%vstd.arithmetic.internals.mod_internals.lemma_quotient_and_remainder.
     x! q! r! n!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mod_internals.lemma_quotient_and_remainder._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mod_internals.lemma_quotient_and_remainder._definition
)))

;; Function-Def crate::vstd::arithmetic::internals::mod_internals::lemma_quotient_and_remainder
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/internals/mod_internals.rs:308:1: 308:74 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Int)
 (declare-const q! Int)
 (declare-const r! Int)
 (declare-const n! Int)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Int)
 (declare-const tmp%4 Int)
 (declare-const tmp%5 Int)
 (declare-const tmp%6 Bool)
 (declare-const tmp%7 Int)
 (declare-const tmp%8 Int)
 (declare-const tmp%9 Bool)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (> n! 0)
 )
 (assert
  (and
   (<= 0 r!)
   (< r! n!)
 ))
 (assert
  (= x! (Add (Mul q! n!) r!))
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%5 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%6 Bool)
 ;; assertion failed
 (declare-const %%location_label%%7 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%8 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%9 Bool)
 (assert
  (not (=>
    (= decrease%init0 (ite
      (> q! 0)
      q!
      (Sub 0 q!)
    ))
    (and
     (=>
      %%location_label%%0
      (req%vstd.arithmetic.internals.mod_internals.lemma_mod_basics. n!)
     )
     (=>
      (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_basics. n!)
      (or
       (and
        (=>
         (> q! 0)
         (=>
          (= tmp%1 (Sub q! 1))
          (=>
           (ens%vstd.arithmetic.internals.mul_internals_nonlinear.lemma_mul_is_distributive_add.
            n! tmp%1 1
           )
           (=>
            (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_commutative.)
            (=>
             (= tmp%2 (= (Add (Mul q! n!) r!) (Add (Add (Mul (Sub q! 1) n!) n!) r!)))
             (and
              (=>
               %%location_label%%1
               tmp%2
              )
              (=>
               tmp%2
               (=>
                (= tmp%3 (Sub x! n!))
                (=>
                 (= tmp%4 (Sub q! 1))
                 (and
                  (=>
                   %%location_label%%2
                   (check_decrease_int (let
                     ((x!$0 tmp%3) (q!$1 tmp%4) (r!$2 r!) (n!$3 n!))
                     (ite
                      (> q!$1 0)
                      q!$1
                      (Sub 0 q!$1)
                     )
                    ) decrease%init0 false
                  ))
                  (and
                   (=>
                    %%location_label%%3
                    (req%vstd.arithmetic.internals.mod_internals.lemma_quotient_and_remainder. tmp%3 tmp%4
                     r! n!
                   ))
                   (=>
                    (ens%vstd.arithmetic.internals.mod_internals.lemma_quotient_and_remainder. tmp%3 tmp%4
                     r! n!
                    )
                    %%switch_label%%0
        ))))))))))))
        (=>
         (not (> q! 0))
         (or
          (and
           (=>
            (< q! 0)
            (=>
             (= tmp%5 (Add q! 1))
             (=>
              (ens%vstd.arithmetic.mul.lemma_mul_is_distributive_sub. n! tmp%5 1)
              (=>
               (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_is_commutative.)
               (=>
                (= tmp%6 (= (Add (Mul q! n!) r!) (Add (Sub (Mul (Add q! 1) n!) n!) r!)))
                (and
                 (=>
                  %%location_label%%4
                  tmp%6
                 )
                 (=>
                  tmp%6
                  (=>
                   (= tmp%7 (Add x! n!))
                   (=>
                    (= tmp%8 (Add q! 1))
                    (and
                     (=>
                      %%location_label%%5
                      (check_decrease_int (let
                        ((x!$0 tmp%7) (q!$1 tmp%8) (r!$2 r!) (n!$3 n!))
                        (ite
                         (> q!$1 0)
                         q!$1
                         (Sub 0 q!$1)
                        )
                       ) decrease%init0 false
                     ))
                     (and
                      (=>
                       %%location_label%%6
                       (req%vstd.arithmetic.internals.mod_internals.lemma_quotient_and_remainder. tmp%7 tmp%8
                        r! n!
                      ))
                      (=>
                       (ens%vstd.arithmetic.internals.mod_internals.lemma_quotient_and_remainder. tmp%7 tmp%8
                        r! n!
                       )
                       %%switch_label%%1
           ))))))))))))
           (=>
            (not (< q! 0))
            (=>
             (ens%vstd.arithmetic.internals.div_internals_nonlinear.lemma_small_div. 0)
             (=>
              (= tmp%9 (= (EucDiv r! n!) 0))
              (and
               (=>
                %%location_label%%7
                tmp%9
               )
               (=>
                tmp%9
                %%switch_label%%1
          ))))))
          (and
           (not %%switch_label%%1)
           %%switch_label%%0
       ))))
       (and
        (not %%switch_label%%0)
        (and
         (=>
          %%location_label%%8
          (= q! (EucDiv x! n!))
         )
         (=>
          %%location_label%%9
          (= r! (EucMod x! n!))
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::lemma_mod_auto
(declare-fun req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. (Int) Bool)
(declare-const %%global_location_label%%24 Bool)
(assert
 (forall ((n! Int)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. n!) (=>
     %%global_location_label%%24
     (> n! 0)
   ))
   :pattern ((req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. n!))
   :qid internal_req__vstd.arithmetic.internals.mod_internals.lemma_mod_auto._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals.lemma_mod_auto._definition
)))
(declare-fun ens%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. (Int) Bool)
(assert
 (forall ((n! Int)) (!
   (= (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. n!) (vstd.arithmetic.internals.mod_internals.mod_auto.?
     (I n!)
   ))
   :pattern ((ens%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. n!))
   :qid internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_auto._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_auto._definition
)))

;; Function-Def crate::vstd::arithmetic::internals::mod_internals::lemma_mod_auto
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/internals/mod_internals.rs:390:1: 390:36 (#0)
(get-info :all-statistics)
(push)
 (declare-const n! Int)
 (declare-const x@ Int)
 (declare-const y@ Int)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Int)
 (declare-const tmp%4 Int)
 (declare-const tmp%5 Int)
 (declare-const tmp%6 Int)
 (declare-const tmp%7 Int)
 (declare-const tmp%8 Int)
 (declare-const xq@ Int)
 (declare-const xr@ Int)
 (declare-const yq@ Int)
 (declare-const yr@ Int)
 (declare-const x$1@ Int)
 (declare-const y$1@ Int)
 (declare-const tmp%9 Bool)
 (declare-const tmp%10 Bool)
 (declare-const tmp%11 Int)
 (declare-const tmp%12 Int)
 (declare-const tmp%13 Int)
 (declare-const tmp%14 Int)
 (declare-const tmp%15 Int)
 (declare-const tmp%16 Int)
 (declare-const xq$1@ Int)
 (declare-const xr$1@ Int)
 (declare-const yq$1@ Int)
 (declare-const yr$1@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (> n! 0)
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; precondition not satisfied
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
 ;; precondition not satisfied
 (declare-const %%location_label%%6 Bool)
 ;; assertion failed
 (declare-const %%location_label%%7 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%8 Bool)
 ;; assertion failed
 (declare-const %%location_label%%9 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%10 Bool)
 ;; assertion failed
 (declare-const %%location_label%%11 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%12 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%13 Bool)
 ;; assertion failed
 (declare-const %%location_label%%14 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%15 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.mod_internals.lemma_mod_basics. n!)
    )
    (=>
     (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_basics. n!)
     (=>
      (fuel_bool fuel%vstd.arithmetic.internals.mul_internals.group_mul_properties_internal.)
      (and
       (=>
        (= xq@ (EucDiv x@ n!))
        (=>
         (= xr@ (EucMod x@ n!))
         (and
          (=>
           %%location_label%%1
           (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
            x@ n!
          ))
          (=>
           (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
            x@ n!
           )
           (=>
            (= tmp%1 (= x@ (Add (Mul xq@ n!) xr@)))
            (and
             (=>
              %%location_label%%2
              tmp%1
             )
             (=>
              tmp%1
              (=>
               (= yq@ (EucDiv y@ n!))
               (=>
                (= yr@ (EucMod y@ n!))
                (and
                 (=>
                  %%location_label%%3
                  (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
                   y@ n!
                 ))
                 (=>
                  (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
                   y@ n!
                  )
                  (=>
                   (= tmp%2 (= y@ (Add (Mul yq@ n!) yr@)))
                   (and
                    (=>
                     %%location_label%%4
                     tmp%2
                    )
                    (=>
                     tmp%2
                     (or
                      (and
                       (=>
                        (< (Add xr@ yr@) n!)
                        (=>
                         (= tmp%3 (Add x@ y@))
                         (=>
                          (= tmp%4 (Add xq@ yq@))
                          (=>
                           (= tmp%5 (Add xr@ yr@))
                           (and
                            (=>
                             %%location_label%%5
                             (req%vstd.arithmetic.internals.mod_internals.lemma_quotient_and_remainder. tmp%3 tmp%4
                              tmp%5 n!
                            ))
                            (=>
                             (ens%vstd.arithmetic.internals.mod_internals.lemma_quotient_and_remainder. tmp%3 tmp%4
                              tmp%5 n!
                             )
                             %%switch_label%%1
                       ))))))
                       (=>
                        (not (< (Add xr@ yr@) n!))
                        (=>
                         (= tmp%6 (Add x@ y@))
                         (=>
                          (= tmp%7 (Add (Add xq@ yq@) 1))
                          (=>
                           (= tmp%8 (Sub (Add xr@ yr@) n!))
                           (and
                            (=>
                             %%location_label%%6
                             (req%vstd.arithmetic.internals.mod_internals.lemma_quotient_and_remainder. tmp%6 tmp%7
                              tmp%8 n!
                            ))
                            (=>
                             (ens%vstd.arithmetic.internals.mod_internals.lemma_quotient_and_remainder. tmp%6 tmp%7
                              tmp%8 n!
                             )
                             %%switch_label%%1
                      )))))))
                      (and
                       (not %%switch_label%%1)
                       (=>
                        %%location_label%%7
                        (let
                         ((z$ (Add (EucMod x@ n!) (EucMod y@ n!))))
                         (or
                          (and
                           (and
                            (<= 0 z$)
                            (< z$ n!)
                           )
                           (= (EucMod (Add x@ y@) n!) z$)
                          )
                          (and
                           (and
                            (<= n! z$)
                            (< z$ (Add n! n!))
                           )
                           (= (EucMod (Add x@ y@) n!) (Sub z$ n!))
       ))))))))))))))))))))
       (=>
        (forall ((x$ Int) (y$ Int)) (!
          (let
           ((z$ (Add (EucMod x$ n!) (EucMod y$ n!))))
           (or
            (and
             (and
              (<= 0 z$)
              (< z$ n!)
             )
             (= (EucMod (Add x$ y$) n!) z$)
            )
            (and
             (and
              (<= n! z$)
              (< z$ (Add n! n!))
             )
             (= (EucMod (Add x$ y$) n!) (Sub z$ n!))
          )))
          :pattern ((EucMod (Add x$ y$) n!))
          :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_auto_35
          :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_auto_35
        ))
        (and
         (=>
          (= xq$1@ (EucDiv x$1@ n!))
          (=>
           (= xr$1@ (EucMod x$1@ n!))
           (and
            (=>
             %%location_label%%8
             (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
              x$1@ n!
            ))
            (=>
             (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
              x$1@ n!
             )
             (=>
              (= tmp%9 (= x$1@ (Add (Mul n! (EucDiv x$1@ n!)) (EucMod x$1@ n!))))
              (and
               (=>
                %%location_label%%9
                tmp%9
               )
               (=>
                tmp%9
                (=>
                 (= yq$1@ (EucDiv y$1@ n!))
                 (=>
                  (= yr$1@ (EucMod y$1@ n!))
                  (and
                   (=>
                    %%location_label%%10
                    (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
                     y$1@ n!
                   ))
                   (=>
                    (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
                     y$1@ n!
                    )
                    (=>
                     (= tmp%10 (= y$1@ (Add (Mul yq$1@ n!) yr$1@)))
                     (and
                      (=>
                       %%location_label%%11
                       tmp%10
                      )
                      (=>
                       tmp%10
                       (or
                        (and
                         (=>
                          (>= (Sub xr$1@ yr$1@) 0)
                          (=>
                           (= tmp%11 (Sub x$1@ y$1@))
                           (=>
                            (= tmp%12 (Sub xq$1@ yq$1@))
                            (=>
                             (= tmp%13 (Sub xr$1@ yr$1@))
                             (and
                              (=>
                               %%location_label%%12
                               (req%vstd.arithmetic.internals.mod_internals.lemma_quotient_and_remainder. tmp%11
                                tmp%12 tmp%13 n!
                              ))
                              (=>
                               (ens%vstd.arithmetic.internals.mod_internals.lemma_quotient_and_remainder. tmp%11
                                tmp%12 tmp%13 n!
                               )
                               %%switch_label%%0
                         ))))))
                         (=>
                          (not (>= (Sub xr$1@ yr$1@) 0))
                          (=>
                           (= tmp%14 (Sub x$1@ y$1@))
                           (=>
                            (= tmp%15 (Sub (Sub xq$1@ yq$1@) 1))
                            (=>
                             (= tmp%16 (Add (Sub xr$1@ yr$1@) n!))
                             (and
                              (=>
                               %%location_label%%13
                               (req%vstd.arithmetic.internals.mod_internals.lemma_quotient_and_remainder. tmp%14
                                tmp%15 tmp%16 n!
                              ))
                              (=>
                               (ens%vstd.arithmetic.internals.mod_internals.lemma_quotient_and_remainder. tmp%14
                                tmp%15 tmp%16 n!
                               )
                               %%switch_label%%0
                        )))))))
                        (and
                         (not %%switch_label%%0)
                         (=>
                          %%location_label%%14
                          (let
                           ((z$ (Sub (EucMod x$1@ n!) (EucMod y$1@ n!))))
                           (or
                            (and
                             (and
                              (<= 0 z$)
                              (< z$ n!)
                             )
                             (= (EucMod (Sub x$1@ y$1@) n!) z$)
                            )
                            (and
                             (and
                              (<= (Sub 0 n!) z$)
                              (< z$ 0)
                             )
                             (= (EucMod (Sub x$1@ y$1@) n!) (Add z$ n!))
         ))))))))))))))))))))
         (=>
          (forall ((x$ Int) (y$ Int)) (!
            (let
             ((z$ (Sub (EucMod x$ n!) (EucMod y$ n!))))
             (or
              (and
               (and
                (<= 0 z$)
                (< z$ n!)
               )
               (= (EucMod (Sub x$ y$) n!) z$)
              )
              (and
               (and
                (<= (Sub 0 n!) z$)
                (< z$ 0)
               )
               (= (EucMod (Sub x$ y$) n!) (Add z$ n!))
            )))
            :pattern ((EucMod (Sub x$ y$) n!))
            :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_auto_36
            :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_auto_36
          ))
          (=>
           %%location_label%%15
           (vstd.arithmetic.internals.mod_internals.mod_auto.? (I n!))
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::lemma_mod_induction_forall
(declare-fun req%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall.
 (Int %%Function%%) Bool
)
(declare-const %%global_location_label%%25 Bool)
(declare-const %%global_location_label%%26 Bool)
(declare-const %%global_location_label%%27 Bool)
(declare-const %%global_location_label%%28 Bool)
(assert
 (forall ((n! Int) (f! %%Function%%)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall. n! f!)
    (and
     (=>
      %%global_location_label%%25
      (> n! 0)
     )
     (=>
      %%global_location_label%%26
      (forall ((i$ Poly)) (!
        (=>
         (has_type i$ INT)
         (=>
          (and
           (<= 0 (%I i$))
           (< (%I i$) n!)
          )
          (%B (%%apply%%0 f! i$))
        ))
        :pattern ((%%apply%%0 f! i$))
        :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall_37
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall_37
     )))
     (=>
      %%global_location_label%%27
      (forall ((i$ Poly)) (!
        (=>
         (has_type i$ INT)
         (=>
          (and
           (>= (%I i$) 0)
           (%B (%%apply%%0 f! i$))
          )
          (%B (%%apply%%0 f! (I (vstd.math.add.? i$ (I n!)))))
        ))
        :pattern ((%%apply%%0 f! i$) (%%apply%%0 f! (I (vstd.math.add.? i$ (I n!)))))
        :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall_38
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall_38
     )))
     (=>
      %%global_location_label%%28
      (forall ((i$ Poly)) (!
        (=>
         (has_type i$ INT)
         (=>
          (and
           (< (%I i$) n!)
           (%B (%%apply%%0 f! i$))
          )
          (%B (%%apply%%0 f! (I (vstd.math.sub.? i$ (I n!)))))
        ))
        :pattern ((%%apply%%0 f! i$) (%%apply%%0 f! (I (vstd.math.sub.? i$ (I n!)))))
        :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall_39
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall_39
   )))))
   :pattern ((req%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall.
     n! f!
   ))
   :qid internal_req__vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall._definition
)))
(declare-fun ens%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall.
 (Int %%Function%%) Bool
)
(assert
 (forall ((n! Int) (f! %%Function%%)) (!
   (= (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall. n! f!)
    (forall ((i$ Poly)) (!
      (=>
       (has_type i$ INT)
       (%B (%%apply%%0 f! i$))
      )
      :pattern ((%%apply%%0 f! i$))
      :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall_40
      :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall_40
   )))
   :pattern ((ens%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall.
     n! f!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall._definition
)))

;; Function-Def crate::vstd::arithmetic::internals::mod_internals::lemma_mod_induction_forall
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/internals/mod_internals.rs:79:1: 79:73 (#0)
(get-info :all-statistics)
(push)
 (declare-const n! Int)
 (declare-const f! %%Function%%)
 (declare-const i@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%fun%1. f!) (TYPE%fun%1. $ INT $ BOOL))
 )
 (assert
  (> n! 0)
 )
 (assert
  (forall ((i$ Poly)) (!
    (=>
     (has_type i$ INT)
     (=>
      (and
       (<= 0 (%I i$))
       (< (%I i$) n!)
      )
      (%B (%%apply%%0 f! i$))
    ))
    :pattern ((%%apply%%0 f! i$))
    :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall_43
    :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall_43
 )))
 (assert
  (forall ((i$ Poly)) (!
    (=>
     (has_type i$ INT)
     (=>
      (and
       (>= (%I i$) 0)
       (%B (%%apply%%0 f! i$))
      )
      (%B (%%apply%%0 f! (I (vstd.math.add.? i$ (I n!)))))
    ))
    :pattern ((%%apply%%0 f! i$) (%%apply%%0 f! (I (vstd.math.add.? i$ (I n!)))))
    :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall_44
    :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall_44
 )))
 (assert
  (forall ((i$ Poly)) (!
    (=>
     (has_type i$ INT)
     (=>
      (and
       (< (%I i$) n!)
       (%B (%%apply%%0 f! i$))
      )
      (%B (%%apply%%0 f! (I (vstd.math.sub.? i$ (I n!)))))
    ))
    :pattern ((%%apply%%0 f! i$) (%%apply%%0 f! (I (vstd.math.sub.? i$ (I n!)))))
    :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall_45
    :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall_45
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (and
    (=>
     (has_type i@ INT)
     (and
      (=>
       %%location_label%%0
       (req%vstd.arithmetic.internals.general_internals.lemma_induction_helper. n! f! (%I
         i@
      )))
      (=>
       (ens%vstd.arithmetic.internals.general_internals.lemma_induction_helper. n! f! (%I
         i@
       ))
       (=>
        %%location_label%%1
        (%B (%%apply%%0 f! i@))
    ))))
    (=>
     (forall ((i$ Poly)) (!
       (=>
        (has_type i$ INT)
        (%B (%%apply%%0 f! i$))
       )
       :pattern ((%%apply%%0 f! i$))
       :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall_42
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall_42
     ))
     (=>
      %%location_label%%2
      (forall ((i$ Poly)) (!
        (=>
         (has_type i$ INT)
         (%B (%%apply%%0 f! i$))
        )
        :pattern ((%%apply%%0 f! i$))
        :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall_41
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall_41
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::lemma_mod_induction_forall2
(declare-fun req%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall2.
 (Int %%Function%%) Bool
)
(declare-const %%global_location_label%%29 Bool)
(declare-const %%global_location_label%%30 Bool)
(declare-const %%global_location_label%%31 Bool)
(declare-const %%global_location_label%%32 Bool)
(declare-const %%global_location_label%%33 Bool)
(declare-const %%global_location_label%%34 Bool)
(assert
 (forall ((n! Int) (f! %%Function%%)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall2. n! f!)
    (and
     (=>
      %%global_location_label%%29
      (> n! 0)
     )
     (=>
      %%global_location_label%%30
      (forall ((i$ Poly) (j$ Poly)) (!
        (=>
         (and
          (has_type i$ INT)
          (has_type j$ INT)
         )
         (=>
          (and
           (and
            (<= 0 (%I i$))
            (< (%I i$) n!)
           )
           (and
            (<= 0 (%I j$))
            (< (%I j$) n!)
          ))
          (%B (%%apply%%1 f! i$ j$))
        ))
        :pattern ((%%apply%%1 f! i$ j$))
        :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_46
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_46
     )))
     (=>
      %%global_location_label%%31
      (forall ((i$ Poly) (j$ Poly)) (!
        (=>
         (and
          (has_type i$ INT)
          (has_type j$ INT)
         )
         (=>
          (and
           (>= (%I i$) 0)
           (%B (%%apply%%1 f! i$ j$))
          )
          (%B (%%apply%%1 f! (I (vstd.math.add.? i$ (I n!))) j$))
        ))
        :pattern ((%%apply%%1 f! i$ j$) (%%apply%%1 f! (I (vstd.math.add.? i$ (I n!))) j$))
        :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_47
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_47
     )))
     (=>
      %%global_location_label%%32
      (forall ((i$ Poly) (j$ Poly)) (!
        (=>
         (and
          (has_type i$ INT)
          (has_type j$ INT)
         )
         (=>
          (and
           (>= (%I j$) 0)
           (%B (%%apply%%1 f! i$ j$))
          )
          (%B (%%apply%%1 f! i$ (I (vstd.math.add.? j$ (I n!)))))
        ))
        :pattern ((%%apply%%1 f! i$ j$) (%%apply%%1 f! i$ (I (vstd.math.add.? j$ (I n!)))))
        :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_48
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_48
     )))
     (=>
      %%global_location_label%%33
      (forall ((i$ Poly) (j$ Poly)) (!
        (=>
         (and
          (has_type i$ INT)
          (has_type j$ INT)
         )
         (=>
          (and
           (< (%I i$) n!)
           (%B (%%apply%%1 f! i$ j$))
          )
          (%B (%%apply%%1 f! (I (vstd.math.sub.? i$ (I n!))) j$))
        ))
        :pattern ((%%apply%%1 f! i$ j$) (%%apply%%1 f! (I (vstd.math.sub.? i$ (I n!))) j$))
        :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_49
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_49
     )))
     (=>
      %%global_location_label%%34
      (forall ((i$ Poly) (j$ Poly)) (!
        (=>
         (and
          (has_type i$ INT)
          (has_type j$ INT)
         )
         (=>
          (and
           (< (%I j$) n!)
           (%B (%%apply%%1 f! i$ j$))
          )
          (%B (%%apply%%1 f! i$ (I (vstd.math.sub.? j$ (I n!)))))
        ))
        :pattern ((%%apply%%1 f! i$ j$) (%%apply%%1 f! i$ (I (vstd.math.sub.? j$ (I n!)))))
        :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_50
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_50
   )))))
   :pattern ((req%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall2.
     n! f!
   ))
   :qid internal_req__vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall2._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall2._definition
)))
(declare-fun ens%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall2.
 (Int %%Function%%) Bool
)
(assert
 (forall ((n! Int) (f! %%Function%%)) (!
   (= (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall2. n! f!)
    (forall ((i$ Poly) (j$ Poly)) (!
      (=>
       (and
        (has_type i$ INT)
        (has_type j$ INT)
       )
       (%B (%%apply%%1 f! i$ j$))
      )
      :pattern ((%%apply%%1 f! i$ j$))
      :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_51
      :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_51
   )))
   :pattern ((ens%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall2.
     n! f!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall2._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall2._definition
)))

;; Function-Def crate::vstd::arithmetic::internals::mod_internals::lemma_mod_induction_forall2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/internals/mod_internals.rs:120:1: 120:79 (#0)
(get-info :all-statistics)
(push)
 (declare-const n! Int)
 (declare-const f! %%Function%%)
 (declare-const x@ Poly)
 (declare-const y@ Poly)
 (declare-const i@ Poly)
 (declare-const tmp%1 Bool)
 (declare-const fj@ %%Function%%)
 (declare-const tmp%2 Bool)
 (declare-const fi@ %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%fun%2. f!) (TYPE%fun%2. $ INT $ INT $ BOOL))
 )
 (assert
  (> n! 0)
 )
 (assert
  (forall ((i$ Poly) (j$ Poly)) (!
    (=>
     (and
      (has_type i$ INT)
      (has_type j$ INT)
     )
     (=>
      (and
       (and
        (<= 0 (%I i$))
        (< (%I i$) n!)
       )
       (and
        (<= 0 (%I j$))
        (< (%I j$) n!)
      ))
      (%B (%%apply%%1 f! i$ j$))
    ))
    :pattern ((%%apply%%1 f! i$ j$))
    :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_55
    :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_55
 )))
 (assert
  (forall ((i$ Poly) (j$ Poly)) (!
    (=>
     (and
      (has_type i$ INT)
      (has_type j$ INT)
     )
     (=>
      (and
       (>= (%I i$) 0)
       (%B (%%apply%%1 f! i$ j$))
      )
      (%B (%%apply%%1 f! (I (vstd.math.add.? i$ (I n!))) j$))
    ))
    :pattern ((%%apply%%1 f! i$ j$) (%%apply%%1 f! (I (vstd.math.add.? i$ (I n!))) j$))
    :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_56
    :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_56
 )))
 (assert
  (forall ((i$ Poly) (j$ Poly)) (!
    (=>
     (and
      (has_type i$ INT)
      (has_type j$ INT)
     )
     (=>
      (and
       (>= (%I j$) 0)
       (%B (%%apply%%1 f! i$ j$))
      )
      (%B (%%apply%%1 f! i$ (I (vstd.math.add.? j$ (I n!)))))
    ))
    :pattern ((%%apply%%1 f! i$ j$) (%%apply%%1 f! i$ (I (vstd.math.add.? j$ (I n!)))))
    :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_57
    :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_57
 )))
 (assert
  (forall ((i$ Poly) (j$ Poly)) (!
    (=>
     (and
      (has_type i$ INT)
      (has_type j$ INT)
     )
     (=>
      (and
       (< (%I i$) n!)
       (%B (%%apply%%1 f! i$ j$))
      )
      (%B (%%apply%%1 f! (I (vstd.math.sub.? i$ (I n!))) j$))
    ))
    :pattern ((%%apply%%1 f! i$ j$) (%%apply%%1 f! (I (vstd.math.sub.? i$ (I n!))) j$))
    :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_58
    :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_58
 )))
 (assert
  (forall ((i$ Poly) (j$ Poly)) (!
    (=>
     (and
      (has_type i$ INT)
      (has_type j$ INT)
     )
     (=>
      (and
       (< (%I j$) n!)
       (%B (%%apply%%1 f! i$ j$))
      )
      (%B (%%apply%%1 f! i$ (I (vstd.math.sub.? j$ (I n!)))))
    ))
    :pattern ((%%apply%%1 f! i$ j$) (%%apply%%1 f! i$ (I (vstd.math.sub.? j$ (I n!)))))
    :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_59
    :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_59
 )))
 (declare-fun %%lambda%%0 (%%Function%% Poly) %%Function%%)
 (assert
  (forall ((%%hole%%0 %%Function%%) (%%hole%%1 Poly) (j$ Poly)) (!
    (= (%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1) j$) (%%apply%%1 %%hole%%0 %%hole%%1
      j$
    ))
    :pattern ((%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1) j$))
 )))
 (declare-fun %%lambda%%1 (%%Function%% Poly) %%Function%%)
 (assert
  (forall ((%%hole%%0 %%Function%%) (%%hole%%1 Poly) (i$ Poly)) (!
    (= (%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1) i$) (%%apply%%1 %%hole%%0 i$ %%hole%%1))
    :pattern ((%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1) i$))
 )))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%6 Bool)
 (assert
  (not (and
    (=>
     (has_type x@ INT)
     (=>
      (has_type y@ INT)
      (and
       (=>
        (has_type i@ INT)
        (=>
         (and
          (<= 0 (%I i@))
          (< (%I i@) n!)
         )
         (=>
          (= fj@ (mk_fun (%%lambda%%0 f! i@)))
          (and
           (=>
            %%location_label%%0
            (req%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall. n! fj@)
           )
           (=>
            (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall. n! fj@)
            (=>
             (= tmp%1 (%B (%%apply%%0 fj@ y@)))
             (and
              (=>
               %%location_label%%1
               tmp%1
              )
              (=>
               tmp%1
               (=>
                %%location_label%%2
                (%B (%%apply%%1 f! i@ y@))
       )))))))))
       (=>
        (forall ((i$ Poly)) (!
          (=>
           (has_type i$ INT)
           (=>
            (and
             (<= 0 (%I i$))
             (< (%I i$) n!)
            )
            (%B (%%apply%%1 f! i$ y@))
          ))
          :pattern ((%%apply%%1 f! i$ y@))
          :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_53
          :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_53
        ))
        (=>
         (= fi@ (mk_fun (%%lambda%%1 f! y@)))
         (and
          (=>
           %%location_label%%3
           (req%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall. n! fi@)
          )
          (=>
           (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall. n! fi@)
           (=>
            (= tmp%2 (%B (%%apply%%0 fi@ x@)))
            (and
             (=>
              %%location_label%%4
              tmp%2
             )
             (=>
              tmp%2
              (=>
               %%location_label%%5
               (%B (%%apply%%1 f! x@ y@))
    )))))))))))
    (=>
     (forall ((x$ Poly) (y$ Poly)) (!
       (=>
        (and
         (has_type x$ INT)
         (has_type y$ INT)
        )
        (%B (%%apply%%1 f! x$ y$))
       )
       :pattern ((%%apply%%1 f! x$ y$))
       :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_54
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_54
     ))
     (=>
      %%location_label%%6
      (forall ((i$ Poly) (j$ Poly)) (!
        (=>
         (and
          (has_type i$ INT)
          (has_type j$ INT)
         )
         (%B (%%apply%%1 f! i$ j$))
        )
        :pattern ((%%apply%%1 f! i$ j$))
        :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_52
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_52
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::lemma_mod_induction_auto
(declare-fun req%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_auto.
 (Int Int %%Function%%) Bool
)
(declare-const %%global_location_label%%35 Bool)
(declare-const %%global_location_label%%36 Bool)
(assert
 (forall ((n! Int) (x! Int) (f! %%Function%%)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_auto. n! x! f!)
    (and
     (=>
      %%global_location_label%%35
      (> n! 0)
     )
     (=>
      %%global_location_label%%36
      (=>
       (vstd.arithmetic.internals.mod_internals.mod_auto.? (I n!))
       (and
        (and
         (forall ((i$ Poly)) (!
           (=>
            (has_type i$ INT)
            (=>
             (and
              (vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$)
              (< (%I i$) n!)
             )
             (%B (%%apply%%0 f! i$))
           ))
           :pattern ((vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$))
           :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_60
           :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_60
         ))
         (forall ((i$ Poly)) (!
           (=>
            (has_type i$ INT)
            (=>
             (and
              (vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$)
              (%B (%%apply%%0 f! i$))
             )
             (%B (%%apply%%0 f! (I (Add (%I i$) n!))))
           ))
           :pattern ((vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$))
           :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_61
           :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_61
        )))
        (forall ((i$ Int)) (!
          (=>
           (and
            (vstd.arithmetic.internals.general_internals.is_le.? (I (Add i$ 1)) (I n!))
            (%B (%%apply%%0 f! (I i$)))
           )
           (%B (%%apply%%0 f! (I (Sub i$ n!))))
          )
          :pattern ((vstd.arithmetic.internals.general_internals.is_le.? (I (Add i$ 1)) (I n!)))
          :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_62
          :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_62
   )))))))
   :pattern ((req%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_auto. n!
     x! f!
   ))
   :qid internal_req__vstd.arithmetic.internals.mod_internals.lemma_mod_induction_auto._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals.lemma_mod_induction_auto._definition
)))
(declare-fun ens%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_auto.
 (Int Int %%Function%%) Bool
)
(assert
 (forall ((n! Int) (x! Int) (f! %%Function%%)) (!
   (= (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_auto. n! x! f!)
    (and
     (vstd.arithmetic.internals.mod_internals.mod_auto.? (I n!))
     (%B (%%apply%%0 f! (I x!)))
   ))
   :pattern ((ens%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_auto. n!
     x! f!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_induction_auto._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_induction_auto._definition
)))

;; Function-Def crate::vstd::arithmetic::internals::mod_internals::lemma_mod_induction_auto
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/internals/mod_internals.rs:468:1: 468:79 (#0)
(get-info :all-statistics)
(push)
 (declare-const n! Int)
 (declare-const x! Int)
 (declare-const f! %%Function%%)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const i@ Poly)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%fun%1. f!) (TYPE%fun%1. $ INT $ BOOL))
 )
 (assert
  (> n! 0)
 )
 (assert
  (=>
   (vstd.arithmetic.internals.mod_internals.mod_auto.? (I n!))
   (and
    (and
     (forall ((i$ Poly)) (!
       (=>
        (has_type i$ INT)
        (=>
         (and
          (vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$)
          (< (%I i$) n!)
         )
         (%B (%%apply%%0 f! i$))
       ))
       :pattern ((vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$))
       :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_67
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_67
     ))
     (forall ((i$ Poly)) (!
       (=>
        (has_type i$ INT)
        (=>
         (and
          (vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$)
          (%B (%%apply%%0 f! i$))
         )
         (%B (%%apply%%0 f! (I (Add (%I i$) n!))))
       ))
       :pattern ((vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$))
       :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_68
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_68
    )))
    (forall ((i$ Int)) (!
      (=>
       (and
        (vstd.arithmetic.internals.general_internals.is_le.? (I (Add i$ 1)) (I n!))
        (%B (%%apply%%0 f! (I i$)))
       )
       (%B (%%apply%%0 f! (I (Sub i$ n!))))
      )
      :pattern ((vstd.arithmetic.internals.general_internals.is_le.? (I (Add i$ 1)) (I n!)))
      :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_69
      :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_69
 )))))
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
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%6 Bool)
 ;; assertion failed
 (declare-const %%location_label%%7 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%8 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%9 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. n!)
    )
    (=>
     (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. n!)
     (=>
      (= tmp%1 (forall ((i$ Poly)) (!
         (=>
          (has_type i$ INT)
          (=>
           (and
            (vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$)
            (%B (%%apply%%0 f! i$))
           )
           (%B (%%apply%%0 f! (I (vstd.math.add.? i$ (I n!)))))
         ))
         :pattern ((%%apply%%0 f! i$) (%%apply%%0 f! (I (vstd.math.add.? i$ (I n!)))))
         :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_63
         :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_63
      )))
      (and
       (=>
        %%location_label%%1
        tmp%1
       )
       (=>
        tmp%1
        (=>
         (= tmp%2 (forall ((i$ Poly)) (!
            (=>
             (has_type i$ INT)
             (=>
              (and
               (vstd.arithmetic.internals.general_internals.is_le.? (I (Add (%I i$) 1)) (I n!))
               (%B (%%apply%%0 f! i$))
              )
              (%B (%%apply%%0 f! (I (vstd.math.sub.? i$ (I n!)))))
            ))
            :pattern ((%%apply%%0 f! i$) (%%apply%%0 f! (I (vstd.math.sub.? i$ (I n!)))))
            :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_64
            :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_64
         )))
         (and
          (=>
           %%location_label%%2
           tmp%2
          )
          (=>
           tmp%2
           (and
            (=>
             (has_type i@ INT)
             (=>
              (and
               (<= 0 (%I i@))
               (< (%I i@) n!)
              )
              (=>
               (= tmp%3 (forall ((i$ Poly)) (!
                  (=>
                   (has_type i$ INT)
                   (=>
                    (and
                     (vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$)
                     (< (%I i$) n!)
                    )
                    (%B (%%apply%%0 f! i$))
                  ))
                  :pattern ((vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$))
                  :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_65
                  :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_65
               )))
               (and
                (=>
                 %%location_label%%3
                 tmp%3
                )
                (=>
                 tmp%3
                 (=>
                  (= tmp%4 (and
                    (vstd.arithmetic.internals.general_internals.is_le.? (I 0) i@)
                    (< (%I i@) n!)
                  ))
                  (and
                   (=>
                    %%location_label%%4
                    tmp%4
                   )
                   (=>
                    tmp%4
                    (=>
                     %%location_label%%5
                     (%B (%%apply%%0 f! i@))
            )))))))))
            (=>
             (forall ((i$ Poly)) (!
               (=>
                (has_type i$ INT)
                (=>
                 (and
                  (<= 0 (%I i$))
                  (< (%I i$) n!)
                 )
                 (%B (%%apply%%0 f! i$))
               ))
               :pattern ((%%apply%%0 f! i$))
               :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_66
               :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_66
             ))
             (and
              (=>
               %%location_label%%6
               (req%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall. n! f!)
              )
              (=>
               (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall. n! f!)
               (=>
                (= tmp%5 (%B (%%apply%%0 f! (I x!))))
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
                    (vstd.arithmetic.internals.mod_internals.mod_auto.? (I n!))
                   )
                   (=>
                    %%location_label%%9
                    (%B (%%apply%%0 f! (I x!)))
 )))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::lemma_mod_induction_auto_forall
(declare-fun req%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_auto_forall.
 (Int %%Function%%) Bool
)
(declare-const %%global_location_label%%37 Bool)
(declare-const %%global_location_label%%38 Bool)
(assert
 (forall ((n! Int) (f! %%Function%%)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_auto_forall. n!
     f!
    ) (and
     (=>
      %%global_location_label%%37
      (> n! 0)
     )
     (=>
      %%global_location_label%%38
      (=>
       (vstd.arithmetic.internals.mod_internals.mod_auto.? (I n!))
       (and
        (and
         (forall ((i$ Poly)) (!
           (=>
            (has_type i$ INT)
            (=>
             (and
              (vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$)
              (< (%I i$) n!)
             )
             (%B (%%apply%%0 f! i$))
           ))
           :pattern ((vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$))
           :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_forall_70
           :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_forall_70
         ))
         (forall ((i$ Poly)) (!
           (=>
            (has_type i$ INT)
            (=>
             (and
              (vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$)
              (%B (%%apply%%0 f! i$))
             )
             (%B (%%apply%%0 f! (I (Add (%I i$) n!))))
           ))
           :pattern ((vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$))
           :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_forall_71
           :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_forall_71
        )))
        (forall ((i$ Int)) (!
          (=>
           (and
            (vstd.arithmetic.internals.general_internals.is_le.? (I (Add i$ 1)) (I n!))
            (%B (%%apply%%0 f! (I i$)))
           )
           (%B (%%apply%%0 f! (I (Sub i$ n!))))
          )
          :pattern ((vstd.arithmetic.internals.general_internals.is_le.? (I (Add i$ 1)) (I n!)))
          :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_forall_72
          :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_forall_72
   )))))))
   :pattern ((req%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_auto_forall.
     n! f!
   ))
   :qid internal_req__vstd.arithmetic.internals.mod_internals.lemma_mod_induction_auto_forall._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.mod_internals.lemma_mod_induction_auto_forall._definition
)))
(declare-fun ens%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_auto_forall.
 (Int %%Function%%) Bool
)
(assert
 (forall ((n! Int) (f! %%Function%%)) (!
   (= (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_auto_forall. n!
     f!
    ) (and
     (vstd.arithmetic.internals.mod_internals.mod_auto.? (I n!))
     (forall ((i$ Poly)) (!
       (=>
        (has_type i$ INT)
        (%B (%%apply%%0 f! i$))
       )
       :pattern ((%%apply%%0 f! i$))
       :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_forall_73
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_forall_73
   ))))
   :pattern ((ens%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_auto_forall.
     n! f!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_induction_auto_forall._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_induction_auto_forall._definition
)))

;; Function-Def crate::vstd::arithmetic::internals::mod_internals::lemma_mod_induction_auto_forall
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/internals/mod_internals.rs:515:1: 515:78 (#0)
(get-info :all-statistics)
(push)
 (declare-const n! Int)
 (declare-const f! %%Function%%)
 (declare-const i@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%fun%1. f!) (TYPE%fun%1. $ INT $ BOOL))
 )
 (assert
  (> n! 0)
 )
 (assert
  (=>
   (vstd.arithmetic.internals.mod_internals.mod_auto.? (I n!))
   (and
    (and
     (forall ((i$ Poly)) (!
       (=>
        (has_type i$ INT)
        (=>
         (and
          (vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$)
          (< (%I i$) n!)
         )
         (%B (%%apply%%0 f! i$))
       ))
       :pattern ((vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$))
       :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_forall_77
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_forall_77
     ))
     (forall ((i$ Poly)) (!
       (=>
        (has_type i$ INT)
        (=>
         (and
          (vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$)
          (%B (%%apply%%0 f! i$))
         )
         (%B (%%apply%%0 f! (I (Add (%I i$) n!))))
       ))
       :pattern ((vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$))
       :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_forall_78
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_forall_78
    )))
    (forall ((i$ Int)) (!
      (=>
       (and
        (vstd.arithmetic.internals.general_internals.is_le.? (I (Add i$ 1)) (I n!))
        (%B (%%apply%%0 f! (I i$)))
       )
       (%B (%%apply%%0 f! (I (Sub i$ n!))))
      )
      :pattern ((vstd.arithmetic.internals.general_internals.is_le.? (I (Add i$ 1)) (I n!)))
      :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_forall_79
      :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_forall_79
 )))))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
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
  (not (and
    (and
     (=>
      %%location_label%%0
      (req%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_auto. n! 0 f!)
     )
     (=>
      (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_auto. n! 0 f!)
      (=>
       %%location_label%%1
       (vstd.arithmetic.internals.mod_internals.mod_auto.? (I n!))
    )))
    (=>
     (vstd.arithmetic.internals.mod_internals.mod_auto.? (I n!))
     (and
      (=>
       (has_type i@ INT)
       (and
        (=>
         %%location_label%%2
         (req%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_auto. n! (%I i@)
          f!
        ))
        (=>
         (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_auto. n! (%I i@)
          f!
         )
         (=>
          %%location_label%%3
          (%B (%%apply%%0 f! i@))
      ))))
      (=>
       (forall ((i$ Poly)) (!
         (=>
          (has_type i$ INT)
          (%B (%%apply%%0 f! i$))
         )
         :pattern ((%%apply%%0 f! i$))
         :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_forall_76
         :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_forall_76
       ))
       (and
        (=>
         %%location_label%%4
         (vstd.arithmetic.internals.mod_internals.mod_auto.? (I n!))
        )
        (=>
         %%location_label%%5
         (forall ((i$ Poly)) (!
           (=>
            (has_type i$ INT)
            (%B (%%apply%%0 f! i$))
           )
           :pattern ((%%apply%%0 f! i$))
           :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_forall_74
           :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_auto_forall_74
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
