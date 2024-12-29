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

;; MODULE 'module vstd::arithmetic::internals::div_internals'

;; Fuel
(declare-const fuel%vstd.arithmetic.internals.general_internals.is_le. FuelId)
(declare-const fuel%vstd.arithmetic.internals.div_internals.div_pos. FuelId)
(declare-const fuel%vstd.arithmetic.internals.div_internals.div_recursive. FuelId)
(declare-const fuel%vstd.arithmetic.internals.div_internals.div_auto_plus. FuelId)
(declare-const fuel%vstd.arithmetic.internals.div_internals.div_auto_minus. FuelId)
(declare-const fuel%vstd.arithmetic.internals.div_internals.div_auto. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mod_internals.mod_auto_plus. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mod_internals.mod_auto_minus. FuelId)
(declare-const fuel%vstd.arithmetic.internals.mod_internals.mod_auto. FuelId)
(declare-const fuel%vstd.math.add. FuelId)
(declare-const fuel%vstd.math.sub. FuelId)
(assert
 (distinct fuel%vstd.arithmetic.internals.general_internals.is_le. fuel%vstd.arithmetic.internals.div_internals.div_pos.
  fuel%vstd.arithmetic.internals.div_internals.div_recursive. fuel%vstd.arithmetic.internals.div_internals.div_auto_plus.
  fuel%vstd.arithmetic.internals.div_internals.div_auto_minus. fuel%vstd.arithmetic.internals.div_internals.div_auto.
  fuel%vstd.arithmetic.internals.mod_internals.mod_auto_plus. fuel%vstd.arithmetic.internals.mod_internals.mod_auto_minus.
  fuel%vstd.arithmetic.internals.mod_internals.mod_auto. fuel%vstd.math.add. fuel%vstd.math.sub.
))

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

;; Function-Decl crate::vstd::arithmetic::internals::div_internals::div_pos
(declare-fun vstd.arithmetic.internals.div_internals.div_pos.? (Poly Poly) Int)
(declare-fun vstd.arithmetic.internals.div_internals.rec%div_pos.? (Poly Poly Fuel)
 Int
)

;; Function-Decl crate::vstd::arithmetic::internals::div_internals::div_recursive
(declare-fun vstd.arithmetic.internals.div_internals.div_recursive.? (Poly Poly) Int)

;; Function-Decl crate::vstd::arithmetic::internals::div_internals::div_auto_plus
(declare-fun vstd.arithmetic.internals.div_internals.div_auto_plus.? (Poly) Bool)

;; Function-Decl crate::vstd::arithmetic::internals::div_internals::div_auto_minus
(declare-fun vstd.arithmetic.internals.div_internals.div_auto_minus.? (Poly) Bool)

;; Function-Decl crate::vstd::arithmetic::internals::mod_internals::mod_auto_plus
(declare-fun vstd.arithmetic.internals.mod_internals.mod_auto_plus.? (Poly) Bool)

;; Function-Decl crate::vstd::arithmetic::internals::mod_internals::mod_auto_minus
(declare-fun vstd.arithmetic.internals.mod_internals.mod_auto_minus.? (Poly) Bool)

;; Function-Decl crate::vstd::arithmetic::internals::mod_internals::mod_auto
(declare-fun vstd.arithmetic.internals.mod_internals.mod_auto.? (Poly) Bool)

;; Function-Decl crate::vstd::arithmetic::internals::div_internals::div_auto
(declare-fun vstd.arithmetic.internals.div_internals.div_auto.? (Poly) Bool)

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

;; Function-Specs crate::vstd::arithmetic::internals::div_internals::div_pos
(declare-fun req%vstd.arithmetic.internals.div_internals.div_pos. (Poly Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((x! Poly) (d! Poly)) (!
   (= (req%vstd.arithmetic.internals.div_internals.div_pos. x! d!) (and
     (=>
      %%global_location_label%%0
      (> (%I d!) 0)
     )
     (=>
      %%global_location_label%%1
      (> (%I d!) 0)
   )))
   :pattern ((req%vstd.arithmetic.internals.div_internals.div_pos. x! d!))
   :qid internal_req__vstd.arithmetic.internals.div_internals.div_pos._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.div_internals.div_pos._definition
)))

;; Spec-Termination crate::vstd::arithmetic::internals::div_internals::div_pos
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/internals/div_internals.rs:39:1: 39:48 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Poly)
 (declare-const d! Poly)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Poly)
 (declare-const tmp%3 Int)
 (declare-const tmp%4 Poly)
 (declare-const tmp%5 Int)
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
         (= tmp%2 (I (Add (%I x!) (%I d!))))
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
           (= tmp%1 (vstd.arithmetic.internals.div_internals.div_pos.? (I (Add (%I x!) (%I d!)))
             d!
           ))
           (=>
            (= tmp%6 (Add (Sub 0 1) tmp%1))
            %%switch_label%%0
       )))))
       (=>
        (not (< (%I x!) 0))
        (or
         (and
          (=>
           (< (%I x!) (%I d!))
           (=>
            (= tmp%5 0)
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
              (= tmp%3 (vstd.arithmetic.internals.div_internals.div_pos.? (I (Sub (%I x!) (%I d!)))
                d!
              ))
              (=>
               (= tmp%5 (Add 1 tmp%3))
               %%switch_label%%1
         ))))))
         (and
          (not %%switch_label%%1)
          (=>
           (= tmp%6 tmp%5)
           %%switch_label%%0
      )))))
      (not %%switch_label%%0)
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Axioms crate::vstd::arithmetic::internals::div_internals::div_pos
(declare-const fuel_nat%vstd.arithmetic.internals.div_internals.div_pos. Fuel)
(assert
 (forall ((x! Poly) (d! Poly) (fuel% Fuel)) (!
   (= (vstd.arithmetic.internals.div_internals.rec%div_pos.? x! d! fuel%) (vstd.arithmetic.internals.div_internals.rec%div_pos.?
     x! d! zero
   ))
   :pattern ((vstd.arithmetic.internals.div_internals.rec%div_pos.? x! d! fuel%))
   :qid internal_vstd.arithmetic.internals.div_internals.div_pos._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.arithmetic.internals.div_internals.div_pos._fuel_to_zero_definition
)))
(assert
 (forall ((x! Poly) (d! Poly) (fuel% Fuel)) (!
   (=>
    (and
     (has_type x! INT)
     (has_type d! INT)
     (> (%I d!) 0)
    )
    (= (vstd.arithmetic.internals.div_internals.rec%div_pos.? x! d! (succ fuel%)) (ite
      (< (%I x!) 0)
      (Add (Sub 0 1) (vstd.arithmetic.internals.div_internals.rec%div_pos.? (I (Add (%I x!)
          (%I d!)
         )
        ) d! fuel%
      ))
      (ite
       (< (%I x!) (%I d!))
       0
       (Add 1 (vstd.arithmetic.internals.div_internals.rec%div_pos.? (I (Sub (%I x!) (%I d!)))
         d! fuel%
   ))))))
   :pattern ((vstd.arithmetic.internals.div_internals.rec%div_pos.? x! d! (succ fuel%)))
   :qid internal_vstd.arithmetic.internals.div_internals.div_pos._fuel_to_body_definition
   :skolemid skolem_internal_vstd.arithmetic.internals.div_internals.div_pos._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.div_internals.div_pos.)
  (forall ((x! Poly) (d! Poly)) (!
    (=>
     (and
      (has_type x! INT)
      (has_type d! INT)
      (> (%I d!) 0)
     )
     (= (vstd.arithmetic.internals.div_internals.div_pos.? x! d!) (vstd.arithmetic.internals.div_internals.rec%div_pos.?
       x! d! (succ fuel_nat%vstd.arithmetic.internals.div_internals.div_pos.)
    )))
    :pattern ((vstd.arithmetic.internals.div_internals.div_pos.? x! d!))
    :qid internal_vstd.arithmetic.internals.div_internals.div_pos.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.div_internals.div_pos.?_definition
))))

;; Function-Specs crate::vstd::arithmetic::internals::div_internals::div_recursive
(declare-fun req%vstd.arithmetic.internals.div_internals.div_recursive. (Poly Poly)
 Bool
)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((x! Poly) (d! Poly)) (!
   (= (req%vstd.arithmetic.internals.div_internals.div_recursive. x! d!) (=>
     %%global_location_label%%2
     (not (= (%I d!) 0))
   ))
   :pattern ((req%vstd.arithmetic.internals.div_internals.div_recursive. x! d!))
   :qid internal_req__vstd.arithmetic.internals.div_internals.div_recursive._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.div_internals.div_recursive._definition
)))

;; Function-Axioms crate::vstd::arithmetic::internals::div_internals::div_recursive
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.div_internals.div_recursive.)
  (forall ((x! Poly) (d! Poly)) (!
    (= (vstd.arithmetic.internals.div_internals.div_recursive.? x! d!) (ite
      (> (%I d!) 0)
      (vstd.arithmetic.internals.div_internals.div_pos.? x! d!)
      (Mul (Sub 0 1) (vstd.arithmetic.internals.div_internals.div_pos.? x! (I (Mul (Sub 0 1)
          (%I d!)
    ))))))
    :pattern ((vstd.arithmetic.internals.div_internals.div_recursive.? x! d!))
    :qid internal_vstd.arithmetic.internals.div_internals.div_recursive.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.div_internals.div_recursive.?_definition
))))

;; Function-Axioms crate::vstd::arithmetic::internals::div_internals::div_auto_plus
(assert
 (fuel_bool_default fuel%vstd.arithmetic.internals.div_internals.div_auto_plus.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.div_internals.div_auto_plus.)
  (forall ((n! Poly)) (!
    (= (vstd.arithmetic.internals.div_internals.div_auto_plus.? n!) (forall ((x$ Int) (y$
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
          (= (EucDiv (Add x$ y$) (%I n!)) (Add (EucDiv x$ (%I n!)) (EucDiv y$ (%I n!))))
         )
         (and
          (and
           (<= (%I n!) z$)
           (< z$ (Add (%I n!) (%I n!)))
          )
          (= (EucDiv (Add x$ y$) (%I n!)) (Add (Add (EucDiv x$ (%I n!)) (EucDiv y$ (%I n!)))
            1
       )))))
       :pattern ((EucDiv (Add x$ y$) (%I n!)))
       :qid user_crate__vstd__arithmetic__internals__div_internals__div_auto_plus_0
       :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__div_auto_plus_0
    )))
    :pattern ((vstd.arithmetic.internals.div_internals.div_auto_plus.? n!))
    :qid internal_vstd.arithmetic.internals.div_internals.div_auto_plus.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.div_internals.div_auto_plus.?_definition
))))

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
       :qid user_crate__vstd__arithmetic__internals__div_internals__div_auto_minus_1
       :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__div_auto_minus_1
    )))
    :pattern ((vstd.arithmetic.internals.div_internals.div_auto_minus.? n!))
    :qid internal_vstd.arithmetic.internals.div_internals.div_auto_minus.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.div_internals.div_auto_minus.?_definition
))))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::mod_auto_plus
(declare-fun req%vstd.arithmetic.internals.mod_internals.mod_auto_plus. (Poly) Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((n! Poly)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.mod_auto_plus. n!) (=>
     %%global_location_label%%3
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
       :qid user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_plus_2
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_plus_2
    )))
    :pattern ((vstd.arithmetic.internals.mod_internals.mod_auto_plus.? n!))
    :qid internal_vstd.arithmetic.internals.mod_internals.mod_auto_plus.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.mod_internals.mod_auto_plus.?_definition
))))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::mod_auto_minus
(declare-fun req%vstd.arithmetic.internals.mod_internals.mod_auto_minus. (Poly) Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((n! Poly)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.mod_auto_minus. n!) (=>
     %%global_location_label%%4
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
       :qid user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_minus_3
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_minus_3
    )))
    :pattern ((vstd.arithmetic.internals.mod_internals.mod_auto_minus.? n!))
    :qid internal_vstd.arithmetic.internals.mod_internals.mod_auto_minus.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.mod_internals.mod_auto_minus.?_definition
))))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::mod_auto
(declare-fun req%vstd.arithmetic.internals.mod_internals.mod_auto. (Poly) Bool)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((n! Poly)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.mod_auto. n!) (=>
     %%global_location_label%%5
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
           :qid user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_4
           :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_4
        )))
        (forall ((x$ Int)) (!
          (= (and
            (<= 0 x$)
            (< x$ (%I n!))
           ) (= (EucMod x$ (%I n!)) x$)
          )
          :pattern ((EucMod x$ (%I n!)))
          :qid user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_5
          :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__mod_auto_5
       )))
       (vstd.arithmetic.internals.mod_internals.mod_auto_plus.? n!)
      )
      (vstd.arithmetic.internals.mod_internals.mod_auto_minus.? n!)
    ))
    :pattern ((vstd.arithmetic.internals.mod_internals.mod_auto.? n!))
    :qid internal_vstd.arithmetic.internals.mod_internals.mod_auto.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.mod_internals.mod_auto.?_definition
))))

;; Function-Specs crate::vstd::arithmetic::internals::div_internals::div_auto
(declare-fun req%vstd.arithmetic.internals.div_internals.div_auto. (Poly) Bool)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((n! Poly)) (!
   (= (req%vstd.arithmetic.internals.div_internals.div_auto. n!) (=>
     %%global_location_label%%6
     (> (%I n!) 0)
   ))
   :pattern ((req%vstd.arithmetic.internals.div_internals.div_auto. n!))
   :qid internal_req__vstd.arithmetic.internals.div_internals.div_auto._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.div_internals.div_auto._definition
)))

;; Function-Axioms crate::vstd::arithmetic::internals::div_internals::div_auto
(assert
 (fuel_bool_default fuel%vstd.arithmetic.internals.div_internals.div_auto.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.internals.div_internals.div_auto.)
  (forall ((n! Poly)) (!
    (= (vstd.arithmetic.internals.div_internals.div_auto.? n!) (and
      (and
       (and
        (and
         (vstd.arithmetic.internals.mod_internals.mod_auto.? n!)
         (let
          ((tmp%%$ (Sub 0 (EucDiv (Sub 0 (%I n!)) (%I n!)))))
          (and
           (= (EucDiv (%I n!) (%I n!)) tmp%%$)
           (= tmp%%$ 1)
        )))
        (forall ((x$ Int)) (!
          (= (and
            (<= 0 x$)
            (< x$ (%I n!))
           ) (= (EucDiv x$ (%I n!)) 0)
          )
          :pattern ((EucDiv x$ (%I n!)))
          :qid user_crate__vstd__arithmetic__internals__div_internals__div_auto_6
          :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__div_auto_6
       )))
       (vstd.arithmetic.internals.div_internals.div_auto_plus.? n!)
      )
      (vstd.arithmetic.internals.div_internals.div_auto_minus.? n!)
    ))
    :pattern ((vstd.arithmetic.internals.div_internals.div_auto.? n!))
    :qid internal_vstd.arithmetic.internals.div_internals.div_auto.?_definition
    :skolemid skolem_internal_vstd.arithmetic.internals.div_internals.div_auto.?_definition
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

;; Function-Specs crate::vstd::arithmetic::internals::div_internals_nonlinear::lemma_div_by_self
(declare-fun req%vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_by_self.
 (Int) Bool
)
(declare-const %%global_location_label%%7 Bool)
(assert
 (forall ((d! Int)) (!
   (= (req%vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_by_self. d!) (
     =>
     %%global_location_label%%7
     (not (= d! 0))
   ))
   :pattern ((req%vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_by_self.
     d!
   ))
   :qid internal_req__vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_by_self._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_by_self._definition
)))
(declare-fun ens%vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_by_self.
 (Int) Bool
)
(assert
 (forall ((d! Int)) (!
   (= (ens%vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_by_self. d!) (
     = (EucDiv d! d!) 1
   ))
   :pattern ((ens%vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_by_self.
     d!
   ))
   :qid internal_ens__vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_by_self._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_by_self._definition
)))

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
      :qid user_crate__vstd__arithmetic__internals__div_internals_nonlinear__lemma_small_div_7
      :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals_nonlinear__lemma_small_div_7
   )))
   :pattern ((ens%vstd.arithmetic.internals.div_internals_nonlinear.lemma_small_div. no%param))
   :qid internal_ens__vstd.arithmetic.internals.div_internals_nonlinear.lemma_small_div._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.div_internals_nonlinear.lemma_small_div._definition
)))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals_nonlinear::lemma_fundamental_div_mod
(declare-fun req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
 (Int Int) Bool
)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((x! Int) (d! Int)) (!
   (= (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
     x! d!
    ) (=>
     %%global_location_label%%8
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

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::lemma_mod_basics
(declare-fun req%vstd.arithmetic.internals.mod_internals.lemma_mod_basics. (Int) Bool)
(declare-const %%global_location_label%%9 Bool)
(assert
 (forall ((n! Int)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.lemma_mod_basics. n!) (=>
     %%global_location_label%%9
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
       :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_8
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_8
     ))
     (forall ((x$ Int)) (!
       (= (EucMod (Sub x$ n!) n!) (EucMod x$ n!))
       :pattern ((EucMod (Sub x$ n!) n!))
       :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_9
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_9
     ))
     (forall ((x$ Int)) (!
       (= (EucDiv (Add x$ n!) n!) (Add (EucDiv x$ n!) 1))
       :pattern ((EucDiv (Add x$ n!) n!))
       :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_10
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_10
     ))
     (forall ((x$ Int)) (!
       (= (EucDiv (Sub x$ n!) n!) (Sub (EucDiv x$ n!) 1))
       :pattern ((EucDiv (Sub x$ n!) n!))
       :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_11
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_11
     ))
     (forall ((x$ Int)) (!
       (= (and
         (<= 0 x$)
         (< x$ n!)
        ) (= (EucMod x$ n!) x$)
       )
       :pattern ((EucMod x$ n!))
       :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_12
       :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_basics_12
   ))))
   :pattern ((ens%vstd.arithmetic.internals.mod_internals.lemma_mod_basics. n!))
   :qid internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_basics._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_basics._definition
)))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::lemma_mod_auto
(declare-fun req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. (Int) Bool)
(declare-const %%global_location_label%%10 Bool)
(assert
 (forall ((n! Int)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.lemma_mod_auto. n!) (=>
     %%global_location_label%%10
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
(declare-const %%global_location_label%%11 Bool)
(assert
 (forall ((n! Int)) (!
   (= (req%vstd.arithmetic.internals.div_internals.lemma_div_basics. n!) (=>
     %%global_location_label%%11
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
       :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_basics_13
       :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_basics_13
     ))
     (forall ((x$ Int)) (!
       (= (EucDiv (Add x$ n!) n!) (Add (EucDiv x$ n!) 1))
       :pattern ((EucDiv (Add x$ n!) n!))
       :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_basics_14
       :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_basics_14
     ))
     (forall ((x$ Int)) (!
       (= (EucDiv (Sub x$ n!) n!) (Sub (EucDiv x$ n!) 1))
       :pattern ((EucDiv (Sub x$ n!) n!))
       :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_basics_15
       :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_basics_15
   ))))
   :pattern ((ens%vstd.arithmetic.internals.div_internals.lemma_div_basics. n!))
   :qid internal_ens__vstd.arithmetic.internals.div_internals.lemma_div_basics._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.div_internals.lemma_div_basics._definition
)))

;; Function-Def crate::vstd::arithmetic::internals::div_internals::lemma_div_basics
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/internals/div_internals.rs:77:1: 77:38 (#0)
(get-info :all-statistics)
(push)
 (declare-const n! Int)
 (declare-const x@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (> n! 0)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%5 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%6 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%7 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%8 Bool)
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
       (req%vstd.arithmetic.internals.mod_internals.lemma_mod_basics. n!)
      )
      (=>
       (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_basics. n!)
       (=>
        (ens%vstd.arithmetic.internals.div_internals_nonlinear.lemma_small_div. 0)
        (and
         (=>
          %%location_label%%2
          (req%vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_by_self. n!)
         )
         (=>
          (ens%vstd.arithmetic.internals.div_internals_nonlinear.lemma_div_by_self. n!)
          (and
           (=>
            (= (EucDiv x@ n!) 0)
            (and
             (=>
              %%location_label%%3
              (req%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
               x@ n!
             ))
             (=>
              (ens%vstd.arithmetic.internals.mod_internals_nonlinear.lemma_fundamental_div_mod.
               x@ n!
              )
              (=>
               %%location_label%%4
               (and
                (<= 0 x@)
                (< x@ n!)
           )))))
           (=>
            (forall ((x$ Int)) (!
              (=>
               (= (EucDiv x$ n!) 0)
               (and
                (<= 0 x$)
                (< x$ n!)
              ))
              :pattern ((EucDiv x$ n!))
              :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_basics_19
              :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_basics_19
            ))
            (and
             (=>
              %%location_label%%5
              (and
               (= (EucDiv n! n!) 1)
               (= (Sub 0 (EucDiv (Sub 0 n!) n!)) 1)
             ))
             (and
              (=>
               %%location_label%%6
               (forall ((x$ Int)) (!
                 (= (and
                   (<= 0 x$)
                   (< x$ n!)
                  ) (= (EucDiv x$ n!) 0)
                 )
                 :pattern ((EucDiv x$ n!))
                 :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_basics_16
                 :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_basics_16
              )))
              (and
               (=>
                %%location_label%%7
                (forall ((x$ Int)) (!
                  (= (EucDiv (Add x$ n!) n!) (Add (EucDiv x$ n!) 1))
                  :pattern ((EucDiv (Add x$ n!) n!))
                  :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_basics_17
                  :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_basics_17
               )))
               (=>
                %%location_label%%8
                (forall ((x$ Int)) (!
                  (= (EucDiv (Sub x$ n!) n!) (Sub (EucDiv x$ n!) 1))
                  :pattern ((EucDiv (Sub x$ n!) n!))
                  :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_basics_18
                  :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_basics_18
 )))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::lemma_mod_induction_forall
(declare-fun req%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall.
 (Int %%Function%%) Bool
)
(declare-const %%global_location_label%%12 Bool)
(declare-const %%global_location_label%%13 Bool)
(declare-const %%global_location_label%%14 Bool)
(declare-const %%global_location_label%%15 Bool)
(assert
 (forall ((n! Int) (f! %%Function%%)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall. n! f!)
    (and
     (=>
      %%global_location_label%%12
      (> n! 0)
     )
     (=>
      %%global_location_label%%13
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
        :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall_20
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall_20
     )))
     (=>
      %%global_location_label%%14
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
        :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall_21
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall_21
     )))
     (=>
      %%global_location_label%%15
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
        :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall_22
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall_22
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
      :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall_23
      :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall_23
   )))
   :pattern ((ens%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall.
     n! f!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall._definition
)))

;; Function-Specs crate::vstd::arithmetic::internals::mod_internals::lemma_mod_induction_forall2
(declare-fun req%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall2.
 (Int %%Function%%) Bool
)
(declare-const %%global_location_label%%16 Bool)
(declare-const %%global_location_label%%17 Bool)
(declare-const %%global_location_label%%18 Bool)
(declare-const %%global_location_label%%19 Bool)
(declare-const %%global_location_label%%20 Bool)
(declare-const %%global_location_label%%21 Bool)
(assert
 (forall ((n! Int) (f! %%Function%%)) (!
   (= (req%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall2. n! f!)
    (and
     (=>
      %%global_location_label%%16
      (> n! 0)
     )
     (=>
      %%global_location_label%%17
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
        :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_24
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_24
     )))
     (=>
      %%global_location_label%%18
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
        :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_25
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_25
     )))
     (=>
      %%global_location_label%%19
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
        :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_26
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_26
     )))
     (=>
      %%global_location_label%%20
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
        :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_27
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_27
     )))
     (=>
      %%global_location_label%%21
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
        :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_28
        :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_28
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
      :qid user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_29
      :skolemid skolem_user_crate__vstd__arithmetic__internals__mod_internals__lemma_mod_induction_forall2_29
   )))
   :pattern ((ens%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall2.
     n! f!
   ))
   :qid internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall2._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall2._definition
)))

;; Function-Specs crate::vstd::arithmetic::internals::div_internals::lemma_div_auto_plus
(declare-fun req%vstd.arithmetic.internals.div_internals.lemma_div_auto_plus. (Int)
 Bool
)
(declare-const %%global_location_label%%22 Bool)
(assert
 (forall ((n! Int)) (!
   (= (req%vstd.arithmetic.internals.div_internals.lemma_div_auto_plus. n!) (=>
     %%global_location_label%%22
     (> n! 0)
   ))
   :pattern ((req%vstd.arithmetic.internals.div_internals.lemma_div_auto_plus. n!))
   :qid internal_req__vstd.arithmetic.internals.div_internals.lemma_div_auto_plus._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.div_internals.lemma_div_auto_plus._definition
)))
(declare-fun ens%vstd.arithmetic.internals.div_internals.lemma_div_auto_plus. (Int)
 Bool
)
(assert
 (forall ((n! Int)) (!
   (= (ens%vstd.arithmetic.internals.div_internals.lemma_div_auto_plus. n!) (vstd.arithmetic.internals.div_internals.div_auto_plus.?
     (I n!)
   ))
   :pattern ((ens%vstd.arithmetic.internals.div_internals.lemma_div_auto_plus. n!))
   :qid internal_ens__vstd.arithmetic.internals.div_internals.lemma_div_auto_plus._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.div_internals.lemma_div_auto_plus._definition
)))

;; Function-Def crate::vstd::arithmetic::internals::div_internals::lemma_div_auto_plus
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/internals/div_internals.rs:140:7: 140:37 (#0)
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
    (= (%%apply%%1 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
       %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12
      ) xx$ yy$
     ) (B (let
       ((z$ (Add (EucMod (%I xx$) %%hole%%0) (EucMod (%I yy$) %%hole%%1))))
       (or
        (and
         (and
          (<= %%hole%%2 z$)
          (< z$ %%hole%%3)
         )
         (= (EucDiv (Add (%I xx$) (%I yy$)) %%hole%%4) (Add (EucDiv (%I xx$) %%hole%%5) (EucDiv
            (%I yy$) %%hole%%6
        ))))
        (and
         (and
          (<= %%hole%%7 z$)
          (< z$ %%hole%%8)
         )
         (= (EucDiv (Add (%I xx$) (%I yy$)) %%hole%%9) (Add (Add (EucDiv (%I xx$) %%hole%%10)
            (EucDiv (%I yy$) %%hole%%11)
           ) %%hole%%12
    )))))))
    :pattern ((%%apply%%1 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
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
         (= f@ (mk_fun (%%lambda%%0 n! n! 0 n! n! n! n! n! (Mul 2 n!) n! n! n! 1)))
         (and
          (=>
           (has_type i@ INT)
           (=>
            (has_type j@ INT)
            (=>
             (= tmp%1 (= (EucDiv (Add (Add (%I i@) n!) (%I j@)) n!) (EucDiv (Add (Add (%I i@) (%I j@))
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
                (= tmp%2 (= (EucDiv (Add (%I i@) (Add (%I j@) n!)) n!) (EucDiv (Add (Add (%I i@) (%I j@))
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
                   (= tmp%3 (= (EucDiv (Add (Sub (%I i@) n!) (%I j@)) n!) (EucDiv (Sub (Add (%I i@) (%I j@))
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
                      (= tmp%4 (= (EucDiv (Add (%I i@) (Sub (%I j@) n!)) n!) (EucDiv (Sub (Add (%I i@) (%I j@))
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
                              (%B (%%apply%%1 f@ i@ j@))
                             )
                             (%B (%%apply%%1 f@ i@ (I (vstd.math.add.? j@ (I n!)))))
                            )
                            (=>
                             (and
                              (< (%I i@) n!)
                              (%B (%%apply%%1 f@ i@ j@))
                             )
                             (%B (%%apply%%1 f@ (I (Sub (%I i@) n!)) j@))
                           ))
                           (=>
                            (and
                             (< (%I j@) n!)
                             (%B (%%apply%%1 f@ i@ j@))
                            )
                            (%B (%%apply%%1 f@ i@ (I (Sub (%I j@) n!))))
                          ))
                          (=>
                           (and
                            (>= (%I i@) 0)
                            (%B (%%apply%%1 f@ i@ j@))
                           )
                           (%B (%%apply%%1 f@ (I (Add (%I i@) n!)) j@))
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
                   (%B (%%apply%%1 f@ i$ j$))
                  )
                  (%B (%%apply%%1 f@ i$ (I (vstd.math.add.? j$ (I n!)))))
                 )
                 (=>
                  (and
                   (< (%I i$) n!)
                   (%B (%%apply%%1 f@ i$ j$))
                  )
                  (%B (%%apply%%1 f@ (I (Sub (%I i$) n!)) j$))
                ))
                (=>
                 (and
                  (< (%I j$) n!)
                  (%B (%%apply%%1 f@ i$ j$))
                 )
                 (%B (%%apply%%1 f@ i$ (I (Sub (%I j$) n!))))
               ))
               (=>
                (and
                 (>= (%I i$) 0)
                 (%B (%%apply%%1 f@ i$ j$))
                )
                (%B (%%apply%%1 f@ (I (Add (%I i$) n!)) j$))
             )))
             :pattern ((%%apply%%1 f@ i$ j$))
             :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_auto_plus_30
             :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_auto_plus_30
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
                (= tmp%5 (= (EucDiv (Add (Add (%I i$1@) n!) (%I j$1@)) n!) (EucDiv (Add (Add (%I i$1@)
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
                   (= tmp%6 (= (EucDiv (Add (%I i$1@) (Add (%I j$1@) n!)) n!) (EucDiv (Add (Add (%I i$1@)
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
                      (= tmp%7 (= (EucDiv (Add (Sub (%I i$1@) n!) (%I j$1@)) n!) (EucDiv (Sub (Add (%I i$1@)
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
                         (= tmp%8 (= (EucDiv (Add (%I i$1@) (Sub (%I j$1@) n!)) n!) (EucDiv (Sub (Add (%I i$1@)
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
                            (%B (%%apply%%1 f@ i$1@ j$1@))
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
                 (%B (%%apply%%1 f@ i$ j$))
               ))
               :pattern ((%%apply%%1 f@ i$ j$))
               :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_auto_plus_31
               :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_auto_plus_31
             ))
             (and
              (=>
               %%location_label%%12
               (req%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall2. n! f@)
              )
              (=>
               (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall2. n! f@)
               (=>
                (= tmp%9 (%B (%%apply%%1 f@ (I x@) (I y@))))
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
                    ((z$ (Add (EucMod x@ n!) (EucMod y@ n!))))
                    (or
                     (and
                      (and
                       (<= 0 z$)
                       (< z$ n!)
                      )
                      (= (EucDiv (Add x@ y@) n!) (Add (EucDiv x@ n!) (EucDiv y@ n!)))
                     )
                     (and
                      (and
                       (<= n! z$)
                       (< z$ (Add n! n!))
                      )
                      (= (EucDiv (Add x@ y@) n!) (Add (Add (EucDiv x@ n!) (EucDiv y@ n!)) 1))
        ))))))))))))))
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
              (= (EucDiv (Add x$ y$) n!) (Add (EucDiv x$ n!) (EucDiv y$ n!)))
             )
             (and
              (and
               (<= n! z$)
               (< z$ (Add n! n!))
              )
              (= (EucDiv (Add x$ y$) n!) (Add (Add (EucDiv x$ n!) (EucDiv y$ n!)) 1))
           )))
           :pattern ((EucDiv (Add x$ y$) n!))
           :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_auto_plus_32
           :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_auto_plus_32
         ))
         (=>
          %%location_label%%15
          (vstd.arithmetic.internals.div_internals.div_auto_plus.? (I n!))
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::internals::div_internals::lemma_div_auto_minus
(declare-fun req%vstd.arithmetic.internals.div_internals.lemma_div_auto_minus. (Int)
 Bool
)
(declare-const %%global_location_label%%23 Bool)
(assert
 (forall ((n! Int)) (!
   (= (req%vstd.arithmetic.internals.div_internals.lemma_div_auto_minus. n!) (=>
     %%global_location_label%%23
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

;; Function-Specs crate::vstd::arithmetic::internals::div_internals::lemma_div_auto
(declare-fun req%vstd.arithmetic.internals.div_internals.lemma_div_auto. (Int) Bool)
(declare-const %%global_location_label%%24 Bool)
(assert
 (forall ((n! Int)) (!
   (= (req%vstd.arithmetic.internals.div_internals.lemma_div_auto. n!) (=>
     %%global_location_label%%24
     (> n! 0)
   ))
   :pattern ((req%vstd.arithmetic.internals.div_internals.lemma_div_auto. n!))
   :qid internal_req__vstd.arithmetic.internals.div_internals.lemma_div_auto._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.div_internals.lemma_div_auto._definition
)))
(declare-fun ens%vstd.arithmetic.internals.div_internals.lemma_div_auto. (Int) Bool)
(assert
 (forall ((n! Int)) (!
   (= (ens%vstd.arithmetic.internals.div_internals.lemma_div_auto. n!) (vstd.arithmetic.internals.div_internals.div_auto.?
     (I n!)
   ))
   :pattern ((ens%vstd.arithmetic.internals.div_internals.lemma_div_auto. n!))
   :qid internal_ens__vstd.arithmetic.internals.div_internals.lemma_div_auto._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.div_internals.lemma_div_auto._definition
)))

;; Function-Def crate::vstd::arithmetic::internals::div_internals::lemma_div_auto
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/internals/div_internals.rs:234:1: 234:36 (#0)
(get-info :all-statistics)
(push)
 (declare-const n! Int)
 (declare-const x@ Int)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (> n! 0)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%6 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%7 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%8 Bool)
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
        (and
         (=>
          %%location_label%%2
          (req%vstd.arithmetic.internals.div_internals.lemma_div_basics. n!)
         )
         (=>
          (ens%vstd.arithmetic.internals.div_internals.lemma_div_basics. n!)
          (=>
           %%location_label%%3
           (= (and
             (<= 0 x@)
             (< x@ n!)
            ) (= (EucDiv x@ n!) 0)
        ))))
        (=>
         (forall ((x$ Int)) (!
           (= (and
             (<= 0 x$)
             (< x$ n!)
            ) (= (EucDiv x$ n!) 0)
           )
           :pattern ((EucDiv x$ n!))
           :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_auto_33
           :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_auto_33
         ))
         (=>
          (= tmp%1 (= (EucDiv (Add 0 n!) n!) 1))
          (and
           (=>
            %%location_label%%4
            tmp%1
           )
           (=>
            tmp%1
            (=>
             (= tmp%2 (= (EucDiv (Sub 0 n!) n!) (Sub 0 1)))
             (and
              (=>
               %%location_label%%5
               tmp%2
              )
              (=>
               tmp%2
               (and
                (=>
                 %%location_label%%6
                 (req%vstd.arithmetic.internals.div_internals.lemma_div_auto_plus. n!)
                )
                (=>
                 (ens%vstd.arithmetic.internals.div_internals.lemma_div_auto_plus. n!)
                 (and
                  (=>
                   %%location_label%%7
                   (req%vstd.arithmetic.internals.div_internals.lemma_div_auto_minus. n!)
                  )
                  (=>
                   (ens%vstd.arithmetic.internals.div_internals.lemma_div_auto_minus. n!)
                   (=>
                    %%location_label%%8
                    (vstd.arithmetic.internals.div_internals.div_auto.? (I n!))
 )))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::internals::div_internals::lemma_div_induction_auto
(declare-fun req%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto.
 (Int Int %%Function%%) Bool
)
(declare-const %%global_location_label%%25 Bool)
(declare-const %%global_location_label%%26 Bool)
(assert
 (forall ((n! Int) (x! Int) (f! %%Function%%)) (!
   (= (req%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. n! x! f!)
    (and
     (=>
      %%global_location_label%%25
      (> n! 0)
     )
     (=>
      %%global_location_label%%26
      (=>
       (vstd.arithmetic.internals.div_internals.div_auto.? (I n!))
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
           :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_34
           :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_34
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
           :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_35
           :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_35
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
          :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_36
          :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_36
   )))))))
   :pattern ((req%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. n!
     x! f!
   ))
   :qid internal_req__vstd.arithmetic.internals.div_internals.lemma_div_induction_auto._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.div_internals.lemma_div_induction_auto._definition
)))
(declare-fun ens%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto.
 (Int Int %%Function%%) Bool
)
(assert
 (forall ((n! Int) (x! Int) (f! %%Function%%)) (!
   (= (ens%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. n! x! f!)
    (and
     (vstd.arithmetic.internals.div_internals.div_auto.? (I n!))
     (%B (%%apply%%0 f! (I x!)))
   ))
   :pattern ((ens%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. n!
     x! f!
   ))
   :qid internal_ens__vstd.arithmetic.internals.div_internals.lemma_div_induction_auto._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.div_internals.lemma_div_induction_auto._definition
)))

;; Function-Def crate::vstd::arithmetic::internals::div_internals::lemma_div_induction_auto
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/internals/div_internals.rs:278:1: 278:79 (#0)
(get-info :all-statistics)
(push)
 (declare-const n! Int)
 (declare-const x! Int)
 (declare-const f! %%Function%%)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const i@ Poly)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Bool)
 (declare-const tmp%6 Bool)
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
   (vstd.arithmetic.internals.div_internals.div_auto.? (I n!))
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
       :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_43
       :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_43
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
       :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_44
       :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_44
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
      :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_45
      :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_45
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
 ;; assertion failed
 (declare-const %%location_label%%6 Bool)
 ;; assertion failed
 (declare-const %%location_label%%7 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%8 Bool)
 ;; assertion failed
 (declare-const %%location_label%%9 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%10 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%11 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.arithmetic.internals.div_internals.lemma_div_auto. n!)
    )
    (=>
     (ens%vstd.arithmetic.internals.div_internals.lemma_div_auto. n!)
     (=>
      (= tmp%1 (forall ((i$ Poly)) (!
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
         :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_37
         :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_37
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
               (vstd.arithmetic.internals.general_internals.is_le.? (I 0) i$)
               (%B (%%apply%%0 f! i$))
              )
              (%B (%%apply%%0 f! (I (vstd.math.add.? i$ (I n!)))))
            ))
            :pattern ((%%apply%%0 f! i$) (%%apply%%0 f! (I (vstd.math.add.? i$ (I n!)))))
            :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_38
            :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_38
         )))
         (and
          (=>
           %%location_label%%2
           tmp%2
          )
          (=>
           tmp%2
           (=>
            (= tmp%3 (forall ((i$ Poly)) (!
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
               :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_39
               :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_39
            )))
            (and
             (=>
              %%location_label%%3
              tmp%3
             )
             (=>
              tmp%3
              (and
               (=>
                (has_type i@ INT)
                (=>
                 (and
                  (<= 0 (%I i@))
                  (< (%I i@) n!)
                 )
                 (and
                  (=>
                   (= tmp%4 (forall ((i$ Poly)) (!
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
                      :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_40
                      :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_40
                   )))
                   (and
                    (=>
                     %%location_label%%4
                     tmp%4
                    )
                    (=>
                     tmp%4
                     (=>
                      (= tmp%5 (and
                        (vstd.arithmetic.internals.general_internals.is_le.? (I 0) i@)
                        (< (%I i@) n!)
                      ))
                      (and
                       (=>
                        %%location_label%%5
                        tmp%5
                       )
                       (=>
                        tmp%5
                        (=>
                         %%location_label%%6
                         (%B (%%apply%%0 f! i@))
                  )))))))
                  (=>
                   (%B (%%apply%%0 f! i@))
                   (=>
                    %%location_label%%7
                    (%B (%%apply%%0 f! i@))
               )))))
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
                  :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_42
                  :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_42
                ))
                (and
                 (=>
                  %%location_label%%8
                  (req%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall. n! f!)
                 )
                 (=>
                  (ens%vstd.arithmetic.internals.mod_internals.lemma_mod_induction_forall. n! f!)
                  (=>
                   (= tmp%6 (%B (%%apply%%0 f! (I x!))))
                   (and
                    (=>
                     %%location_label%%9
                     tmp%6
                    )
                    (=>
                     tmp%6
                     (and
                      (=>
                       %%location_label%%10
                       (vstd.arithmetic.internals.div_internals.div_auto.? (I n!))
                      )
                      (=>
                       %%location_label%%11
                       (%B (%%apply%%0 f! (I x!)))
 ))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::internals::div_internals::lemma_div_induction_auto_forall
(declare-fun req%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto_forall.
 (Int %%Function%%) Bool
)
(declare-const %%global_location_label%%27 Bool)
(declare-const %%global_location_label%%28 Bool)
(assert
 (forall ((n! Int) (f! %%Function%%)) (!
   (= (req%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto_forall. n!
     f!
    ) (and
     (=>
      %%global_location_label%%27
      (> n! 0)
     )
     (=>
      %%global_location_label%%28
      (=>
       (vstd.arithmetic.internals.div_internals.div_auto.? (I n!))
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
           :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_forall_46
           :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_forall_46
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
           :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_forall_47
           :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_forall_47
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
          :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_forall_48
          :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_forall_48
   )))))))
   :pattern ((req%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto_forall.
     n! f!
   ))
   :qid internal_req__vstd.arithmetic.internals.div_internals.lemma_div_induction_auto_forall._definition
   :skolemid skolem_internal_req__vstd.arithmetic.internals.div_internals.lemma_div_induction_auto_forall._definition
)))
(declare-fun ens%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto_forall.
 (Int %%Function%%) Bool
)
(assert
 (forall ((n! Int) (f! %%Function%%)) (!
   (= (ens%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto_forall. n!
     f!
    ) (and
     (vstd.arithmetic.internals.div_internals.div_auto.? (I n!))
     (forall ((i$ Poly)) (!
       (=>
        (has_type i$ INT)
        (%B (%%apply%%0 f! i$))
       )
       :pattern ((%%apply%%0 f! i$))
       :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_forall_49
       :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_forall_49
   ))))
   :pattern ((ens%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto_forall.
     n! f!
   ))
   :qid internal_ens__vstd.arithmetic.internals.div_internals.lemma_div_induction_auto_forall._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.internals.div_internals.lemma_div_induction_auto_forall._definition
)))

;; Function-Def crate::vstd::arithmetic::internals::div_internals::lemma_div_induction_auto_forall
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/internals/div_internals.rs:328:1: 328:78 (#0)
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
   (vstd.arithmetic.internals.div_internals.div_auto.? (I n!))
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
       :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_forall_53
       :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_forall_53
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
       :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_forall_54
       :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_forall_54
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
      :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_forall_55
      :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_forall_55
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
      (req%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. n! 0 f!)
     )
     (=>
      (ens%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. n! 0 f!)
      (=>
       %%location_label%%1
       (vstd.arithmetic.internals.div_internals.div_auto.? (I n!))
    )))
    (=>
     (vstd.arithmetic.internals.div_internals.div_auto.? (I n!))
     (and
      (=>
       (has_type i@ INT)
       (and
        (=>
         %%location_label%%2
         (req%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. n! (%I i@)
          f!
        ))
        (=>
         (ens%vstd.arithmetic.internals.div_internals.lemma_div_induction_auto. n! (%I i@)
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
         :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_forall_52
         :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_forall_52
       ))
       (and
        (=>
         %%location_label%%4
         (vstd.arithmetic.internals.div_internals.div_auto.? (I n!))
        )
        (=>
         %%location_label%%5
         (forall ((i$ Poly)) (!
           (=>
            (has_type i$ INT)
            (%B (%%apply%%0 f! i$))
           )
           :pattern ((%%apply%%0 f! i$))
           :qid user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_forall_50
           :skolemid skolem_user_crate__vstd__arithmetic__internals__div_internals__lemma_div_induction_auto_forall_50
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
