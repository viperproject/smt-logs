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

;; MODULE 'module vstd::function'

;; Fuel
(assert
 true
)

;; Datatypes
(declare-datatypes ((tuple%0. 0)) (((tuple%0./tuple%0))))
(declare-fun TYPE%fun%1. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%fun%2. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%fun%3. (Dcr Type Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%fun%4. (Dcr Type Dcr Type Dcr Type Dcr Type Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%fun%1. (%%Function%%) Poly)
(declare-fun %Poly%fun%1. (Poly) %%Function%%)
(declare-fun Poly%fun%2. (%%Function%%) Poly)
(declare-fun %Poly%fun%2. (Poly) %%Function%%)
(declare-fun Poly%fun%3. (%%Function%%) Poly)
(declare-fun %Poly%fun%3. (Poly) %%Function%%)
(declare-fun Poly%fun%4. (%%Function%%) Poly)
(declare-fun %Poly%fun%4. (Poly) %%Function%%)
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
 (forall ((x %%Function%%)) (!
   (= x (%Poly%fun%3. (Poly%fun%3. x)))
   :pattern ((Poly%fun%3. x))
   :qid internal_crate__fun__3_box_axiom_definition
   :skolemid skolem_internal_crate__fun__3_box_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%fun%3. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3&))
    (= x (Poly%fun%3. (%Poly%fun%3. x)))
   )
   :pattern ((has_type x (TYPE%fun%3. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3&)))
   :qid internal_crate__fun__3_unbox_axiom_definition
   :skolemid skolem_internal_crate__fun__3_unbox_axiom_definition
)))
(declare-fun %%apply%%2 (%%Function%% Poly Poly Poly) Poly)
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (x %%Function%%)
  ) (!
   (=>
    (forall ((T%0 Poly) (T%1 Poly) (T%2 Poly)) (!
      (=>
       (and
        (has_type T%0 T%0&)
        (has_type T%1 T%1&)
        (has_type T%2 T%2&)
       )
       (has_type (%%apply%%2 x T%0 T%1 T%2) T%3&)
      )
      :pattern ((has_type (%%apply%%2 x T%0 T%1 T%2) T%3&))
      :qid internal_crate__fun__3_constructor_inner_definition
      :skolemid skolem_internal_crate__fun__3_constructor_inner_definition
    ))
    (has_type (Poly%fun%3. (mk_fun x)) (TYPE%fun%3. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&.
      T%3&
   )))
   :pattern ((has_type (Poly%fun%3. (mk_fun x)) (TYPE%fun%3. T%0&. T%0& T%1&. T%1& T%2&.
      T%2& T%3&. T%3&
   )))
   :qid internal_crate__fun__3_constructor_definition
   :skolemid skolem_internal_crate__fun__3_constructor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%0 Poly) (T%1 Poly) (T%2 Poly) (x %%Function%%)
  ) (!
   (=>
    (and
     (has_type (Poly%fun%3. x) (TYPE%fun%3. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3&))
     (has_type T%0 T%0&)
     (has_type T%1 T%1&)
     (has_type T%2 T%2&)
    )
    (has_type (%%apply%%2 x T%0 T%1 T%2) T%3&)
   )
   :pattern ((%%apply%%2 x T%0 T%1 T%2) (has_type (Poly%fun%3. x) (TYPE%fun%3. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3&
   )))
   :qid internal_crate__fun__3_apply_definition
   :skolemid skolem_internal_crate__fun__3_apply_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%0 Poly) (T%1 Poly) (T%2 Poly) (x %%Function%%)
  ) (!
   (=>
    (and
     (has_type (Poly%fun%3. x) (TYPE%fun%3. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3&))
     (has_type T%0 T%0&)
     (has_type T%1 T%1&)
     (has_type T%2 T%2&)
    )
    (height_lt (height (%%apply%%2 x T%0 T%1 T%2)) (height (fun_from_recursive_field (Poly%fun%3.
        (mk_fun x)
   )))))
   :pattern ((height (%%apply%%2 x T%0 T%1 T%2)) (has_type (Poly%fun%3. x) (TYPE%fun%3.
      T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3&
   )))
   :qid internal_crate__fun__3_height_apply_definition
   :skolemid skolem_internal_crate__fun__3_height_apply_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (deep Bool) (x Poly) (y Poly)
  ) (!
   (=>
    (and
     (has_type x (TYPE%fun%3. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3&))
     (has_type y (TYPE%fun%3. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3&))
     (forall ((T%0 Poly) (T%1 Poly) (T%2 Poly)) (!
       (=>
        (and
         (has_type T%0 T%0&)
         (has_type T%1 T%1&)
         (has_type T%2 T%2&)
        )
        (ext_eq deep T%3& (%%apply%%2 (%Poly%fun%3. x) T%0 T%1 T%2) (%%apply%%2 (%Poly%fun%3.
           y
          ) T%0 T%1 T%2
       )))
       :pattern ((ext_eq deep T%3& (%%apply%%2 (%Poly%fun%3. x) T%0 T%1 T%2) (%%apply%%2 (%Poly%fun%3.
           y
          ) T%0 T%1 T%2
       )))
       :qid internal_crate__fun__3_inner_ext_equal_definition
       :skolemid skolem_internal_crate__fun__3_inner_ext_equal_definition
    )))
    (ext_eq deep (TYPE%fun%3. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3&) x y)
   )
   :pattern ((ext_eq deep (TYPE%fun%3. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3&) x
     y
   ))
   :qid internal_crate__fun__3_ext_equal_definition
   :skolemid skolem_internal_crate__fun__3_ext_equal_definition
)))
(assert
 (forall ((x %%Function%%)) (!
   (= x (%Poly%fun%4. (Poly%fun%4. x)))
   :pattern ((Poly%fun%4. x))
   :qid internal_crate__fun__4_box_axiom_definition
   :skolemid skolem_internal_crate__fun__4_box_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%fun%4. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&))
    (= x (Poly%fun%4. (%Poly%fun%4. x)))
   )
   :pattern ((has_type x (TYPE%fun%4. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&.
      T%4&
   )))
   :qid internal_crate__fun__4_unbox_axiom_definition
   :skolemid skolem_internal_crate__fun__4_unbox_axiom_definition
)))
(declare-fun %%apply%%3 (%%Function%% Poly Poly Poly Poly) Poly)
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (x %%Function%%)
  ) (!
   (=>
    (forall ((T%0 Poly) (T%1 Poly) (T%2 Poly) (T%3 Poly)) (!
      (=>
       (and
        (has_type T%0 T%0&)
        (has_type T%1 T%1&)
        (has_type T%2 T%2&)
        (has_type T%3 T%3&)
       )
       (has_type (%%apply%%3 x T%0 T%1 T%2 T%3) T%4&)
      )
      :pattern ((has_type (%%apply%%3 x T%0 T%1 T%2 T%3) T%4&))
      :qid internal_crate__fun__4_constructor_inner_definition
      :skolemid skolem_internal_crate__fun__4_constructor_inner_definition
    ))
    (has_type (Poly%fun%4. (mk_fun x)) (TYPE%fun%4. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&.
      T%3& T%4&. T%4&
   )))
   :pattern ((has_type (Poly%fun%4. (mk_fun x)) (TYPE%fun%4. T%0&. T%0& T%1&. T%1& T%2&.
      T%2& T%3&. T%3& T%4&. T%4&
   )))
   :qid internal_crate__fun__4_constructor_definition
   :skolemid skolem_internal_crate__fun__4_constructor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (T%0 Poly) (T%1 Poly) (T%2 Poly) (T%3 Poly)
   (x %%Function%%)
  ) (!
   (=>
    (and
     (has_type (Poly%fun%4. x) (TYPE%fun%4. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3&
       T%4&. T%4&
     ))
     (has_type T%0 T%0&)
     (has_type T%1 T%1&)
     (has_type T%2 T%2&)
     (has_type T%3 T%3&)
    )
    (has_type (%%apply%%3 x T%0 T%1 T%2 T%3) T%4&)
   )
   :pattern ((%%apply%%3 x T%0 T%1 T%2 T%3) (has_type (Poly%fun%4. x) (TYPE%fun%4. T%0&.
      T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&
   )))
   :qid internal_crate__fun__4_apply_definition
   :skolemid skolem_internal_crate__fun__4_apply_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (T%0 Poly) (T%1 Poly) (T%2 Poly) (T%3 Poly)
   (x %%Function%%)
  ) (!
   (=>
    (and
     (has_type (Poly%fun%4. x) (TYPE%fun%4. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3&
       T%4&. T%4&
     ))
     (has_type T%0 T%0&)
     (has_type T%1 T%1&)
     (has_type T%2 T%2&)
     (has_type T%3 T%3&)
    )
    (height_lt (height (%%apply%%3 x T%0 T%1 T%2 T%3)) (height (fun_from_recursive_field
       (Poly%fun%4. (mk_fun x))
   ))))
   :pattern ((height (%%apply%%3 x T%0 T%1 T%2 T%3)) (has_type (Poly%fun%4. x) (TYPE%fun%4.
      T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&
   )))
   :qid internal_crate__fun__4_height_apply_definition
   :skolemid skolem_internal_crate__fun__4_height_apply_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (deep Bool) (x Poly) (y Poly)
  ) (!
   (=>
    (and
     (has_type x (TYPE%fun%4. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&))
     (has_type y (TYPE%fun%4. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&))
     (forall ((T%0 Poly) (T%1 Poly) (T%2 Poly) (T%3 Poly)) (!
       (=>
        (and
         (has_type T%0 T%0&)
         (has_type T%1 T%1&)
         (has_type T%2 T%2&)
         (has_type T%3 T%3&)
        )
        (ext_eq deep T%4& (%%apply%%3 (%Poly%fun%4. x) T%0 T%1 T%2 T%3) (%%apply%%3 (%Poly%fun%4.
           y
          ) T%0 T%1 T%2 T%3
       )))
       :pattern ((ext_eq deep T%4& (%%apply%%3 (%Poly%fun%4. x) T%0 T%1 T%2 T%3) (%%apply%%3
          (%Poly%fun%4. y) T%0 T%1 T%2 T%3
       )))
       :qid internal_crate__fun__4_inner_ext_equal_definition
       :skolemid skolem_internal_crate__fun__4_inner_ext_equal_definition
    )))
    (ext_eq deep (TYPE%fun%4. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&)
     x y
   ))
   :pattern ((ext_eq deep (TYPE%fun%4. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&.
      T%4&
     ) x y
   ))
   :qid internal_crate__fun__4_ext_equal_definition
   :skolemid skolem_internal_crate__fun__4_ext_equal_definition
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

;; Function-Specs crate::vstd::function::fun_ext
(declare-fun req%vstd.function.fun_ext. (Dcr Type Dcr Type %%Function%% %%Function%%)
 Bool
)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (f1! %%Function%%) (f2! %%Function%%))
  (!
   (= (req%vstd.function.fun_ext. A&. A& B&. B& f1! f2!) (=>
     %%global_location_label%%0
     (forall ((x$ Poly)) (!
       (=>
        (has_type x$ A&)
        (= (%%apply%%0 f1! x$) (%%apply%%0 f2! x$))
       )
       :pattern ((%%apply%%0 f1! x$))
       :qid user_crate__vstd__function__fun_ext_0
       :skolemid skolem_user_crate__vstd__function__fun_ext_0
   ))))
   :pattern ((req%vstd.function.fun_ext. A&. A& B&. B& f1! f2!))
   :qid internal_req__vstd.function.fun_ext._definition
   :skolemid skolem_internal_req__vstd.function.fun_ext._definition
)))
(declare-fun ens%vstd.function.fun_ext. (Dcr Type Dcr Type %%Function%% %%Function%%)
 Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (f1! %%Function%%) (f2! %%Function%%))
  (!
   (= (ens%vstd.function.fun_ext. A&. A& B&. B& f1! f2!) (= f1! f2!))
   :pattern ((ens%vstd.function.fun_ext. A&. A& B&. B& f1! f2!))
   :qid internal_ens__vstd.function.fun_ext._definition
   :skolemid skolem_internal_ens__vstd.function.fun_ext._definition
)))

;; Function-Specs crate::vstd::function::fun_ext_1
(declare-fun req%vstd.function.fun_ext_1. (Dcr Type Dcr Type %%Function%% %%Function%%)
 Bool
)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((A1&. Dcr) (A1& Type) (B&. Dcr) (B& Type) (f1! %%Function%%) (f2! %%Function%%))
  (!
   (= (req%vstd.function.fun_ext_1. A1&. A1& B&. B& f1! f2!) (=>
     %%global_location_label%%1
     (forall ((x1$ Poly)) (!
       (=>
        (has_type x1$ A1&)
        (= (%%apply%%0 f1! x1$) (%%apply%%0 f2! x1$))
       )
       :pattern ((%%apply%%0 f1! x1$))
       :qid user_crate__vstd__function__fun_ext_1_1
       :skolemid skolem_user_crate__vstd__function__fun_ext_1_1
   ))))
   :pattern ((req%vstd.function.fun_ext_1. A1&. A1& B&. B& f1! f2!))
   :qid internal_req__vstd.function.fun_ext_1._definition
   :skolemid skolem_internal_req__vstd.function.fun_ext_1._definition
)))
(declare-fun ens%vstd.function.fun_ext_1. (Dcr Type Dcr Type %%Function%% %%Function%%)
 Bool
)
(assert
 (forall ((A1&. Dcr) (A1& Type) (B&. Dcr) (B& Type) (f1! %%Function%%) (f2! %%Function%%))
  (!
   (= (ens%vstd.function.fun_ext_1. A1&. A1& B&. B& f1! f2!) (= f1! f2!))
   :pattern ((ens%vstd.function.fun_ext_1. A1&. A1& B&. B& f1! f2!))
   :qid internal_ens__vstd.function.fun_ext_1._definition
   :skolemid skolem_internal_ens__vstd.function.fun_ext_1._definition
)))

;; Function-Specs crate::vstd::function::fun_ext_2
(declare-fun req%vstd.function.fun_ext_2. (Dcr Type Dcr Type Dcr Type %%Function%%
  %%Function%%
 ) Bool
)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((A1&. Dcr) (A1& Type) (A2&. Dcr) (A2& Type) (B&. Dcr) (B& Type) (f1! %%Function%%)
   (f2! %%Function%%)
  ) (!
   (= (req%vstd.function.fun_ext_2. A1&. A1& A2&. A2& B&. B& f1! f2!) (=>
     %%global_location_label%%2
     (forall ((x1$ Poly) (x2$ Poly)) (!
       (=>
        (and
         (has_type x1$ A1&)
         (has_type x2$ A2&)
        )
        (= (%%apply%%1 f1! x1$ x2$) (%%apply%%1 f2! x1$ x2$))
       )
       :pattern ((%%apply%%1 f1! x1$ x2$))
       :qid user_crate__vstd__function__fun_ext_2_2
       :skolemid skolem_user_crate__vstd__function__fun_ext_2_2
   ))))
   :pattern ((req%vstd.function.fun_ext_2. A1&. A1& A2&. A2& B&. B& f1! f2!))
   :qid internal_req__vstd.function.fun_ext_2._definition
   :skolemid skolem_internal_req__vstd.function.fun_ext_2._definition
)))
(declare-fun ens%vstd.function.fun_ext_2. (Dcr Type Dcr Type Dcr Type %%Function%%
  %%Function%%
 ) Bool
)
(assert
 (forall ((A1&. Dcr) (A1& Type) (A2&. Dcr) (A2& Type) (B&. Dcr) (B& Type) (f1! %%Function%%)
   (f2! %%Function%%)
  ) (!
   (= (ens%vstd.function.fun_ext_2. A1&. A1& A2&. A2& B&. B& f1! f2!) (= f1! f2!))
   :pattern ((ens%vstd.function.fun_ext_2. A1&. A1& A2&. A2& B&. B& f1! f2!))
   :qid internal_ens__vstd.function.fun_ext_2._definition
   :skolemid skolem_internal_ens__vstd.function.fun_ext_2._definition
)))

;; Function-Specs crate::vstd::function::fun_ext_3
(declare-fun req%vstd.function.fun_ext_3. (Dcr Type Dcr Type Dcr Type Dcr Type %%Function%%
  %%Function%%
 ) Bool
)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((A1&. Dcr) (A1& Type) (A2&. Dcr) (A2& Type) (A3&. Dcr) (A3& Type) (B&. Dcr)
   (B& Type) (f1! %%Function%%) (f2! %%Function%%)
  ) (!
   (= (req%vstd.function.fun_ext_3. A1&. A1& A2&. A2& A3&. A3& B&. B& f1! f2!) (=>
     %%global_location_label%%3
     (forall ((x1$ Poly) (x2$ Poly) (x3$ Poly)) (!
       (=>
        (and
         (has_type x1$ A1&)
         (has_type x2$ A2&)
         (has_type x3$ A3&)
        )
        (= (%%apply%%2 f1! x1$ x2$ x3$) (%%apply%%2 f2! x1$ x2$ x3$))
       )
       :pattern ((%%apply%%2 f1! x1$ x2$ x3$))
       :qid user_crate__vstd__function__fun_ext_3_3
       :skolemid skolem_user_crate__vstd__function__fun_ext_3_3
   ))))
   :pattern ((req%vstd.function.fun_ext_3. A1&. A1& A2&. A2& A3&. A3& B&. B& f1! f2!))
   :qid internal_req__vstd.function.fun_ext_3._definition
   :skolemid skolem_internal_req__vstd.function.fun_ext_3._definition
)))
(declare-fun ens%vstd.function.fun_ext_3. (Dcr Type Dcr Type Dcr Type Dcr Type %%Function%%
  %%Function%%
 ) Bool
)
(assert
 (forall ((A1&. Dcr) (A1& Type) (A2&. Dcr) (A2& Type) (A3&. Dcr) (A3& Type) (B&. Dcr)
   (B& Type) (f1! %%Function%%) (f2! %%Function%%)
  ) (!
   (= (ens%vstd.function.fun_ext_3. A1&. A1& A2&. A2& A3&. A3& B&. B& f1! f2!) (= f1!
     f2!
   ))
   :pattern ((ens%vstd.function.fun_ext_3. A1&. A1& A2&. A2& A3&. A3& B&. B& f1! f2!))
   :qid internal_ens__vstd.function.fun_ext_3._definition
   :skolemid skolem_internal_ens__vstd.function.fun_ext_3._definition
)))

;; Function-Specs crate::vstd::function::fun_ext_4
(declare-fun req%vstd.function.fun_ext_4. (Dcr Type Dcr Type Dcr Type Dcr Type Dcr
  Type %%Function%% %%Function%%
 ) Bool
)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((A1&. Dcr) (A1& Type) (A2&. Dcr) (A2& Type) (A3&. Dcr) (A3& Type) (A4&. Dcr)
   (A4& Type) (B&. Dcr) (B& Type) (f1! %%Function%%) (f2! %%Function%%)
  ) (!
   (= (req%vstd.function.fun_ext_4. A1&. A1& A2&. A2& A3&. A3& A4&. A4& B&. B& f1! f2!)
    (=>
     %%global_location_label%%4
     (forall ((x1$ Poly) (x2$ Poly) (x3$ Poly) (x4$ Poly)) (!
       (=>
        (and
         (has_type x1$ A1&)
         (has_type x2$ A2&)
         (has_type x3$ A3&)
         (has_type x4$ A4&)
        )
        (= (%%apply%%3 f1! x1$ x2$ x3$ x4$) (%%apply%%3 f2! x1$ x2$ x3$ x4$))
       )
       :pattern ((%%apply%%3 f1! x1$ x2$ x3$ x4$))
       :qid user_crate__vstd__function__fun_ext_4_4
       :skolemid skolem_user_crate__vstd__function__fun_ext_4_4
   ))))
   :pattern ((req%vstd.function.fun_ext_4. A1&. A1& A2&. A2& A3&. A3& A4&. A4& B&. B&
     f1! f2!
   ))
   :qid internal_req__vstd.function.fun_ext_4._definition
   :skolemid skolem_internal_req__vstd.function.fun_ext_4._definition
)))
(declare-fun ens%vstd.function.fun_ext_4. (Dcr Type Dcr Type Dcr Type Dcr Type Dcr
  Type %%Function%% %%Function%%
 ) Bool
)
(assert
 (forall ((A1&. Dcr) (A1& Type) (A2&. Dcr) (A2& Type) (A3&. Dcr) (A3& Type) (A4&. Dcr)
   (A4& Type) (B&. Dcr) (B& Type) (f1! %%Function%%) (f2! %%Function%%)
  ) (!
   (= (ens%vstd.function.fun_ext_4. A1&. A1& A2&. A2& A3&. A3& A4&. A4& B&. B& f1! f2!)
    (= f1! f2!)
   )
   :pattern ((ens%vstd.function.fun_ext_4. A1&. A1& A2&. A2& A3&. A3& A4&. A4& B&. B&
     f1! f2!
   ))
   :qid internal_ens__vstd.function.fun_ext_4._definition
   :skolemid skolem_internal_ens__vstd.function.fun_ext_4._definition
)))
