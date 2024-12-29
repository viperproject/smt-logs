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

;; MODULE 'module vstd::arithmetic::internals::div_internals, function crate::vstd::arithmetic::internals::div_internals::lemma_div_auto_minus'

;; Fuel
(declare-const fuel%vstd.arithmetic.internals.div_internals.div_auto_minus. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mod_internals.mod_auto_plus. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mod_internals.mod_auto_minus. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mod_internals.mod_auto. FuelId)
(declare-const fuel%vstd.math.add. FuelId)
(declare-const fuel%vstd.math.sub. FuelId)
(assert
 (distinct fuel%vstd.arithmetic.internals.div_internals.div_auto_minus. fuel%vstd.arithmetic.internals.mod_internals.mod_auto_plus.
  fuel%vstd.arithmetic.internals.mod_internals.mod_auto_minus. fuel%vstd.arithmetic.internals.mod_internals.mod_auto.
  fuel%vstd.math.add. fuel%vstd.math.sub.
))

;; Datatypes
(declare-datatypes ((tuple%0. 0)) (((tuple%0./tuple%0))))
(declare-fun TYPE%fun%2. (Dcr Type Dcr Type Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%fun%2. (%%Function%%) Poly)
(declare-fun %Poly%fun%2. (Poly) %%Function%%)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
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
(declare-fun %%apply%%0 (%%Function%% Poly Poly) Poly)
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
       (has_type (%%apply%%0 x T%0 T%1) T%2&)
      )
      :pattern ((has_type (%%apply%%0 x T%0 T%1) T%2&))
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
    (has_type (%%apply%%0 x T%0 T%1) T%2&)
   )
   :pattern ((%%apply%%0 x T%0 T%1) (has_type (Poly%fun%2. x) (TYPE%fun%2. T%0&. T%0& T%1&.
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
    (height_lt (height (%%apply%%0 x T%0 T%1)) (height (fun_from_recursive_field (Poly%fun%2.
        (mk_fun x)
   )))))
   :pattern ((height (%%apply%%0 x T%0 T%1)) (has_type (Poly%fun%2. x) (TYPE%fun%2. T%0&.
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
        (ext_eq deep T%2& (%%apply%%0 (%Poly%fun%2. x) T%0 T%1) (%%apply%%0 (%Poly%fun%2. y)
          T%0 T%1
       )))
       :pattern ((ext_eq deep T%2& (%%apply%%0 (%Poly%fun%2. x) T%0 T%1) (%%apply%%0 (%Poly%fun%2.
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

;; Function-Decl crate::vstd::arithmetic::internals::div_internals::div_auto_minus
(declare-fun vstd.arithmetic.internals.div_internals.div_auto_minus.? (Poly) Bool)

;; Function-Decl crate::vstd::arithmetic::internals::mod_internals::mod_auto_plus
(declare-fun vstd.arithmetic.internals.mod_internals.mod_auto_plus.? (Poly) Bool)

;; Function-Decl crate::vstd::arithmetic::internals::mod_internals::mod_auto_minus
(declare-fun vstd.arithmetic.internals.mod_internals.mod_auto_minus.? (Poly) Bool)

;; Function-Decl crate::vstd::arithmetic::internals::mod_internals::mod_auto
(declare-fun vstd.arithmetic.internals.mod_internals.mod_auto.? (Poly) Bool)

;; Function-Decl crate::vstd::math::add
(declare-fun vstd.math.add.? (Poly Poly) Int)

;; Function-Decl crate::vstd::math::sub
(declare-fun vstd.math.sub.? (Poly Poly) Int)

;; Function-Axioms crate::vstd::arithmetic::internals::div_internals::div_auto_minus
(assert
 (fuel_bool_default fuel%vstd.arithmetic.internals.div_internals.div_auto_minus.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.div_internals.div_auto_minus.)
  (forall ((n! Poly)) (!
    (= (vstd.arithmetic.internals.div_internals.div_auto_minus.? n!) (forall ((x$ Int) (
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
          (= (EucDiv (Sub x$ y$) (%I n!)) (Sub (EucDiv x$ (%I n!)) (EucDiv y$ (%I n!))))
         )
         (and
          (and
           (<= (Sub 0 (%I n!)) z$)
           (< z$ 0)
          )
          (= (EucDiv (Sub x$ y$) (%I n!)) (Sub (Sub (EucDiv x$ (%I n!)) (EucDiv y$ (%I n!)))
            1
       )))))
       :pattern ((EucDiv (Sub x$ y$) (%I n!)))
       :qid user_crate__vstd__arithmetic__internals__div_internals__div_auto_minus_0
       :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__div_auto_minus_0
    )))
    :pattern ((vstd.arithmetic.internals.div_internals.div_auto_minus.? n!))
    :qid internal_vstd.arithmetic.internals.div_internals.div_auto_minus.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.div_internals.div_auto_minus.?_definition
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
       :qid user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_plus_1
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_plus_1
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
       :qid user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_minus_2
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_minus_2
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
           :qid user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_3
           :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_3
        )))
        (forall ((x$ Int)) (!
          (= (and
            (<= 0 x$)
            (< x$ (%I n!))
           ) (= (EucMod x$ (%I n!)) x$)
          )
          :pattern ((EucMod x$ (%I n!)))
          :qid user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_4
          :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_4
       )))
       (vstd.arithmetic.internals.mod_internals.mod_auto_plus.? n!)
      )
      (vstd.arithmetic.internals.mod_internals.mod_auto_minus.? n!)
    ))
    :pattern ((vstd.arithmetic.internals.mod_internals.mod_auto.? n!))
    :qid internal_vstd.arithmetic.internals.mod_internals.mod_auto.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.mod_internals.mod_auto.?_definition
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

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::lemma_mod_auto
(declare-fun req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. (Int) Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((n! Int)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. n!) (=>
     %%global_location_label%%3
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

;; Function-Specs crate::vstd::arithmetic::internals::div_internals::lemma_div_basics
(declare-fun req%vstd.arithmetic.internals.div_internals.lemma_div_basics. (Int) Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((n! Int)) (!
   (= (req%vstd.arithmetic.internals.div_internals.lemma_div_basics. n!) (=>
     %%global_location_label%%4
     (> n! 0)
   ))
   :pattern ((req%vstd.arithmetic.internals.div_internals.lemma_div_basics. n!))
   :qid internal_req__vstd.arithmetic.internals.div_internals.lemma_div_basics._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.div_internals.lemma_div_basics._definition
)))
(declare-fun ens%vstd.arithmetic.internals.div_internals.lemma_div_basics. (Int) Bool)
(assert
 (forall ((n! Int)) (!
   (= (ens%vstd.arithmetic.internals.div_internals.lemma_div_basics. n!) (and
     (and
      (= (EucDiv n! n!) 1)
      (= (Sub 0 (EucDiv (Sub 0 n!) n!)) 1)
     )
     (forall ((x$ Int)) (!
       (= (and
         (<= 0 x$)
         (< x$ n!)
        ) (= (EucDiv x$ n!) 0)
       )
       :pattern ((EucDiv x$ n!))
       :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_basics_5
       :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_basics_5
     ))
     (forall ((x$ Int)) (!
       (= (EucDiv (Add x$ n!) n!) (Add (EucDiv x$ n!) 1))
       :pattern ((EucDiv (Add x$ n!) n!))
       :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_basics_6
       :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_basics_6
     ))
     (forall ((x$ Int)) (!
       (= (EucDiv (Sub x$ n!) n!) (Sub (EucDiv x$ n!) 1))
       :pattern ((EucDiv (Sub x$ n!) n!))
       :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_basics_7
       :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_basics_7
   ))))
   :pattern ((ens%vstd.arithmetic.internals.div_internals.lemma_div_basics. n!))
   :qid internal_ens__vstd.arithmetic.internals.div_internals.lemma_div_basics._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.div_internals.lemma_div_basics._definition
)))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::lemma_mod_induction_forall2
(declare-fun req%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall2.
 (Int %%Function%%) Bool
)
(declare-const %%global_location_label%%5 Bool)
(declare-const %%global_location_label%%6 Bool)
(declare-const %%global_location_label%%7 Bool)
(declare-const %%global_location_label%%8 Bool)
(declare-const %%global_location_label%%9 Bool)
(declare-const %%global_location_label%%10 Bool)
(assert
 (forall ((n! Int) (f! %%Function%%)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall2. n! f!)
    (and
     (=>
      %%global_location_label%%5
      (> n! 0)
     )
     (=>
      %%global_location_label%%6
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
          (%B (%%apply%%0 f! i$ j$))
        ))
        :pattern ((%%apply%%0 f! i$ j$))
        :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_8
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_8
     )))
     (=>
      %%global_location_label%%7
      (forall ((i$ Poly) (j$ Poly)) (!
        (=>
         (and
          (has_type i$ INT)
          (has_type j$ INT)
         )
         (=>
          (and
           (>= (%I i$) 0)
           (%B (%%apply%%0 f! i$ j$))
          )
          (%B (%%apply%%0 f! (I (vstd.math.add.? i$ (I n!))) j$))
        ))
        :pattern ((%%apply%%0 f! i$ j$) (%%apply%%0 f! (I (vstd.math.add.? i$ (I n!))) j$))
        :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_9
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_9
     )))
     (=>
      %%global_location_label%%8
      (forall ((i$ Poly) (j$ Poly)) (!
        (=>
         (and
          (has_type i$ INT)
          (has_type j$ INT)
         )
         (=>
          (and
           (>= (%I j$) 0)
           (%B (%%apply%%0 f! i$ j$))
          )
          (%B (%%apply%%0 f! i$ (I (vstd.math.add.? j$ (I n!)))))
        ))
        :pattern ((%%apply%%0 f! i$ j$) (%%apply%%0 f! i$ (I (vstd.math.add.? j$ (I n!)))))
        :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_10
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_10
     )))
     (=>
      %%global_location_label%%9
      (forall ((i$ Poly) (j$ Poly)) (!
        (=>
         (and
          (has_type i$ INT)
          (has_type j$ INT)
         )
         (=>
          (and
           (< (%I i$) n!)
           (%B (%%apply%%0 f! i$ j$))
          )
          (%B (%%apply%%0 f! (I (vstd.math.sub.? i$ (I n!))) j$))
        ))
        :pattern ((%%apply%%0 f! i$ j$) (%%apply%%0 f! (I (vstd.math.sub.? i$ (I n!))) j$))
        :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_11
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_11
     )))
     (=>
      %%global_location_label%%10
      (forall ((i$ Poly) (j$ Poly)) (!
        (=>
         (and
          (has_type i$ INT)
          (has_type j$ INT)
         )
         (=>
          (and
           (< (%I j$) n!)
           (%B (%%apply%%0 f! i$ j$))
          )
          (%B (%%apply%%0 f! i$ (I (vstd.math.sub.? j$ (I n!)))))
        ))
        :pattern ((%%apply%%0 f! i$ j$) (%%apply%%0 f! i$ (I (vstd.math.sub.? j$ (I n!)))))
        :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_12
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_12
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
       (%B (%%apply%%0 f! i$ j$))
      )
      :pattern ((%%apply%%0 f! i$ j$))
      :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_13
      :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_13
   )))
   :pattern ((ens%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall2.
     n! f!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall2._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall2._definition
)))

;; Function-Specs crate::vstd::arithmetic::internals::div_internals::lemma_div_auto_minus
(declare-fun req%vstd.arithmetic.internals.div_internals.lemma_div_auto_minus. (Int)
 Bool
)
(declare-const %%global_location_label%%11 Bool)
(assert
 (forall ((n! Int)) (!
   (= (req%vstd.arithmetic.internals.div_internals.lemma_div_auto_minus. n!) (=>
     %%global_location_label%%11
     (> n! 0)
   ))
   :pattern ((req%vstd.arithmetic.internals.div_internals.lemma_div_auto_minus. n!))
   :qid internal_req__vstd.arithmetic.internals.div_internals.lemma_div_auto_minus._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.div_internals.lemma_div_auto_minus._definition
)))
(declare-fun ens%vstd.arithmetic.internals.div_internals.lemma_div_auto_minus. (Int)
 Bool
)
(assert
 (forall ((n! Int)) (!
   (= (ens%vstd.arithmetic.internals.div_internals.lemma_div_auto_minus. n!) (vstd.arithmetic.internals.div_internals.div_auto_minus.?
     (I n!)
   ))
   :pattern ((ens%vstd.arithmetic.internals.div_internals.lemma_div_auto_minus. n!))
   :qid internal_ens__vstd.arithmetic.internals.div_internals.lemma_div_auto_minus._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.div_internals.lemma_div_auto_minus._definition
)))

;; Function-Def crate::vstd::arithmetic::internals::div_internals::lemma_div_auto_minus
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/internals/div_internals.rs:189:7: 189:38 (#0)
(get-info :all-statistics)
(push)
 (declare-const n! Int)
 (declare-const x@ Int)
 (declare-const y@ Int)
 (declare-const i@ Poly)
 (declare-const j@ Poly)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const i$1@ Poly)
 (declare-const j$1@ Poly)
 (declare-const tmp%5 Bool)
 (declare-const tmp%6 Bool)
 (declare-const tmp%7 Bool)
 (declare-const tmp%8 Bool)
 (declare-const tmp%9 Bool)
 (declare-const f@ %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (> n! 0)
 )
 (declare-fun %%lambda%%0 (Int Int Int Int Int Int Int Int Int Int Int Int Int) %%Function%%)
 (assert
  (forall ((%%hole%%0 Int) (%%hole%%1 Int) (%%hole%%2 Int) (%%hole%%3 Int) (%%hole%%4
     Int
    ) (%%hole%%5 Int) (%%hole%%6 Int) (%%hole%%7 Int) (%%hole%%8 Int) (%%hole%%9 Int)
    (%%hole%%10 Int) (%%hole%%11 Int) (%%hole%%12 Int) (xx$ Poly) (yy$ Poly)
   ) (!
    (= (%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
       %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12
      ) xx$ yy$
     ) (B (let
       ((z$ (Sub (EucMod (%I xx$) %%hole%%0) (EucMod (%I yy$) %%hole%%1))))
       (or
        (and
         (and
          (<= %%hole%%2 z$)
          (< z$ %%hole%%3)
         )
         (= (EucDiv (Sub (%I xx$) (%I yy$)) %%hole%%4) (Sub (EucDiv (%I xx$) %%hole%%5) (EucDiv
            (%I yy$) %%hole%%6
        ))))
        (and
         (and
          (<= %%hole%%7 z$)
          (< z$ %%hole%%8)
         )
         (= (EucDiv (Sub (%I xx$) (%I yy$)) %%hole%%9) (Sub (Sub (EucDiv (%I xx$) %%hole%%10)
            (EucDiv (%I yy$) %%hole%%11)
           ) %%hole%%12
    )))))))
    :pattern ((%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
       %%hole%%5 %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12
      ) xx$ yy$
 )))))
 ;; precondition not satisfied
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
 ;; precondition not satisfied
 (declare-const %%location_label%%12 Bool)
 ;; assertion failed
 (declare-const %%location_label%%13 Bool)
 ;; assertion failed
 (declare-const %%location_label%%14 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%15 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. n!)
    )
    (=>
     (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. n!)
     (and
      (=>
       %%location_label%%1
       (req%vstd.arithmetic.internals.div_internals.lemma_div_basics. n!)
      )
      (=>
       (ens%vstd.arithmetic.internals.div_internals.lemma_div_basics. n!)
       (and
        (=>
         (= f@ (mk_fun (%%lambda%%0 n! n! 0 n! n! n! n! (Sub 0 n!) 0 n! n! n! 1)))
         (and
          (=>
           (has_type i@ INT)
           (=>
            (has_type j@ INT)
            (=>
             (= tmp%1 (= (EucDiv (Sub (Add (%I i@) n!) (%I j@)) n!) (EucDiv (Add (Sub (%I i@) (%I j@))
                 n!
                ) n!
             )))
             (and
              (=>
               %%location_label%%2
               tmp%1
              )
              (=>
               tmp%1
               (=>
                (= tmp%2 (= (EucDiv (Sub (%I i@) (Sub (%I j@) n!)) n!) (EucDiv (Add (Sub (%I i@) (%I j@))
                    n!
                   ) n!
                )))
                (and
                 (=>
                  %%location_label%%3
                  tmp%2
                 )
                 (=>
                  tmp%2
                  (=>
                   (= tmp%3 (= (EucDiv (Sub (Sub (%I i@) n!) (%I j@)) n!) (EucDiv (Sub (Sub (%I i@) (%I j@))
                       n!
                      ) n!
                   )))
                   (and
                    (=>
                     %%location_label%%4
                     tmp%3
                    )
                    (=>
                     tmp%3
                     (=>
                      (= tmp%4 (= (EucDiv (Sub (%I i@) (Add (%I j@) n!)) n!) (EucDiv (Sub (Sub (%I i@) (%I j@))
                          n!
                         ) n!
                      )))
                      (and
                       (=>
                        %%location_label%%5
                        tmp%4
                       )
                       (=>
                        tmp%4
                        (=>
                         %%location_label%%6
                         (and
                          (and
                           (and
                            (=>
                             (and
                              (>= (%I j@) 0)
                              (%B (%%apply%%0 f@ i@ j@))
                             )
                             (%B (%%apply%%0 f@ i@ (I (vstd.math.add.? j@ (I n!)))))
                            )
                            (=>
                             (and
                              (< (%I i@) n!)
                              (%B (%%apply%%0 f@ i@ j@))
                             )
                             (%B (%%apply%%0 f@ (I (vstd.math.sub.? i@ (I n!))) j@))
                           ))
                           (=>
                            (and
                             (< (%I j@) n!)
                             (%B (%%apply%%0 f@ i@ j@))
                            )
                            (%B (%%apply%%0 f@ i@ (I (vstd.math.sub.? j@ (I n!)))))
                          ))
                          (=>
                           (and
                            (>= (%I i@) 0)
                            (%B (%%apply%%0 f@ i@ j@))
                           )
                           (%B (%%apply%%0 f@ (I (vstd.math.add.? i@ (I n!))) j@))
          )))))))))))))))))
          (=>
           (forall ((i$ Poly) (j$ Poly)) (!
             (=>
              (and
               (has_type i$ INT)
               (has_type j$ INT)
              )
              (and
               (and
                (and
                 (=>
                  (and
                   (>= (%I j$) 0)
                   (%B (%%apply%%0 f@ i$ j$))
                  )
                  (%B (%%apply%%0 f@ i$ (I (vstd.math.add.? j$ (I n!)))))
                 )
                 (=>
                  (and
                   (< (%I i$) n!)
                   (%B (%%apply%%0 f@ i$ j$))
                  )
                  (%B (%%apply%%0 f@ (I (vstd.math.sub.? i$ (I n!))) j$))
                ))
                (=>
                 (and
                  (< (%I j$) n!)
                  (%B (%%apply%%0 f@ i$ j$))
                 )
                 (%B (%%apply%%0 f@ i$ (I (vstd.math.sub.? j$ (I n!)))))
               ))
               (=>
                (and
                 (>= (%I i$) 0)
                 (%B (%%apply%%0 f@ i$ j$))
                )
                (%B (%%apply%%0 f@ (I (vstd.math.add.? i$ (I n!))) j$))
             )))
             :pattern ((%%apply%%0 f@ i$ j$))
             :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_auto_minus_14
             :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_auto_minus_14
           ))
           (and
            (=>
             (has_type i$1@ INT)
             (=>
              (has_type j$1@ INT)
              (=>
               (and
                (and
                 (<= 0 (%I i$1@))
                 (< (%I i$1@) n!)
                )
                (and
                 (<= 0 (%I j$1@))
                 (< (%I j$1@) n!)
               ))
               (=>
                (= tmp%5 (= (EucDiv (Sub (Add (%I i$1@) n!) (%I j$1@)) n!) (EucDiv (Add (Sub (%I i$1@)
                     (%I j$1@)
                    ) n!
                   ) n!
                )))
                (and
                 (=>
                  %%location_label%%7
                  tmp%5
                 )
                 (=>
                  tmp%5
                  (=>
                   (= tmp%6 (= (EucDiv (Sub (%I i$1@) (Sub (%I j$1@) n!)) n!) (EucDiv (Add (Sub (%I i$1@)
                        (%I j$1@)
                       ) n!
                      ) n!
                   )))
                   (and
                    (=>
                     %%location_label%%8
                     tmp%6
                    )
                    (=>
                     tmp%6
                     (=>
                      (= tmp%7 (= (EucDiv (Sub (Sub (%I i$1@) n!) (%I j$1@)) n!) (EucDiv (Sub (Sub (%I i$1@)
                           (%I j$1@)
                          ) n!
                         ) n!
                      )))
                      (and
                       (=>
                        %%location_label%%9
                        tmp%7
                       )
                       (=>
                        tmp%7
                        (=>
                         (= tmp%8 (= (EucDiv (Sub (%I i$1@) (Add (%I j$1@) n!)) n!) (EucDiv (Sub (Sub (%I i$1@)
                              (%I j$1@)
                             ) n!
                            ) n!
                         )))
                         (and
                          (=>
                           %%location_label%%10
                           tmp%8
                          )
                          (=>
                           tmp%8
                           (=>
                            %%location_label%%11
                            (%B (%%apply%%0 f@ i$1@ j$1@))
            ))))))))))))))))
            (=>
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
                 (%B (%%apply%%0 f@ i$ j$))
               ))
               :pattern ((%%apply%%0 f@ i$ j$))
               :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_auto_minus_15
               :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_auto_minus_15
             ))
             (and
              (=>
               %%location_label%%12
               (req%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall2. n! f@)
              )
              (=>
               (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall2. n! f@)
               (=>
                (= tmp%9 (%B (%%apply%%0 f@ (I x@) (I y@))))
                (and
                 (=>
                  %%location_label%%13
                  tmp%9
                 )
                 (=>
                  tmp%9
                  (=>
                   %%location_label%%14
                   (let
                    ((z$ (Sub (EucMod x@ n!) (EucMod y@ n!))))
                    (or
                     (and
                      (and
                       (<= 0 z$)
                       (< z$ n!)
                      )
                      (= (EucDiv (Sub x@ y@) n!) (Sub (EucDiv x@ n!) (EucDiv y@ n!)))
                     )
                     (and
                      (and
                       (<= (Sub 0 n!) z$)
                       (< z$ 0)
                      )
                      (= (EucDiv (Sub x@ y@) n!) (Sub (Sub (EucDiv x@ n!) (EucDiv y@ n!)) 1))
        ))))))))))))))
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
              (= (EucDiv (Sub x$ y$) n!) (Sub (EucDiv x$ n!) (EucDiv y$ n!)))
             )
             (and
              (and
               (<= (Sub 0 n!) z$)
               (< z$ 0)
              )
              (= (EucDiv (Sub x$ y$) n!) (Sub (Sub (EucDiv x$ n!) (EucDiv y$ n!)) 1))
           )))
           :pattern ((EucDiv (Sub x$ y$) n!))
           :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_auto_minus_16
           :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_auto_minus_16
         ))
         (=>
          %%location_label%%15
          (vstd.arithmetic.internals.div_internals.div_auto_minus.? (I n!))
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
