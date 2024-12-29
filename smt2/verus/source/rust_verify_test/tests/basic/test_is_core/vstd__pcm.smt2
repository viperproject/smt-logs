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

;; MODULE 'module vstd::pcm'

;; Fuel
(declare-const fuel%vstd.pcm.incl. FuelId)
(declare-const fuel%vstd.pcm.conjunct_shared. FuelId)
(declare-const fuel%vstd.pcm.frame_preserving_update. FuelId)
(declare-const fuel%vstd.pcm.frame_preserving_update_nondeterministic. FuelId)
(declare-const fuel%vstd.pcm.set_op. FuelId)
(assert
 (distinct fuel%vstd.pcm.incl. fuel%vstd.pcm.conjunct_shared. fuel%vstd.pcm.frame_preserving_update.
  fuel%vstd.pcm.frame_preserving_update_nondeterministic. fuel%vstd.pcm.set_op.
))

;; Datatypes
(declare-datatypes ((tuple%0. 0) (tuple%2. 0)) (((tuple%0./tuple%0)) ((tuple%2./tuple%2
    (tuple%2./tuple%2/?0 Poly) (tuple%2./tuple%2/?1 Poly)
))))
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-fun TYPE%fun%1. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.pcm.Resource. (Dcr Type) Type)
(declare-fun TYPE%vstd.set.Set. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%2. (Dcr Type Dcr Type) Type)
(declare-fun Poly%fun%1. (%%Function%%) Poly)
(declare-fun %Poly%fun%1. (Poly) %%Function%%)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%2. (tuple%2.) Poly)
(declare-fun %Poly%tuple%2. (Poly) tuple%2.)
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
(assert
 (forall ((x tuple%2.)) (!
   (= x (%Poly%tuple%2. (Poly%tuple%2. x)))
   :pattern ((Poly%tuple%2. x))
   :qid internal_crate__tuple__2_box_axiom_definition
   :skolemid skolem_internal_crate__tuple__2_box_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%tuple%2. T%0&. T%0& T%1&. T%1&))
    (= x (Poly%tuple%2. (%Poly%tuple%2. x)))
   )
   :pattern ((has_type x (TYPE%tuple%2. T%0&. T%0& T%1&. T%1&)))
   :qid internal_crate__tuple__2_unbox_axiom_definition
   :skolemid skolem_internal_crate__tuple__2_unbox_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (_0! Poly) (_1! Poly)) (!
   (=>
    (and
     (has_type _0! T%0&)
     (has_type _1! T%1&)
    )
    (has_type (Poly%tuple%2. (tuple%2./tuple%2 _0! _1!)) (TYPE%tuple%2. T%0&. T%0& T%1&.
      T%1&
   )))
   :pattern ((has_type (Poly%tuple%2. (tuple%2./tuple%2 _0! _1!)) (TYPE%tuple%2. T%0&.
      T%0& T%1&. T%1&
   )))
   :qid internal_tuple__2./tuple__2_constructor_definition
   :skolemid skolem_internal_tuple__2./tuple__2_constructor_definition
)))
(assert
 (forall ((x tuple%2.)) (!
   (= (tuple%2./tuple%2/0 x) (tuple%2./tuple%2/?0 x))
   :pattern ((tuple%2./tuple%2/0 x))
   :qid internal_tuple__2./tuple__2/0_accessor_definition
   :skolemid skolem_internal_tuple__2./tuple__2/0_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%tuple%2. T%0&. T%0& T%1&. T%1&))
    (has_type (tuple%2./tuple%2/0 (%Poly%tuple%2. x)) T%0&)
   )
   :pattern ((tuple%2./tuple%2/0 (%Poly%tuple%2. x)) (has_type x (TYPE%tuple%2. T%0&. T%0&
      T%1&. T%1&
   )))
   :qid internal_tuple__2./tuple__2/0_invariant_definition
   :skolemid skolem_internal_tuple__2./tuple__2/0_invariant_definition
)))
(assert
 (forall ((x tuple%2.)) (!
   (= (tuple%2./tuple%2/1 x) (tuple%2./tuple%2/?1 x))
   :pattern ((tuple%2./tuple%2/1 x))
   :qid internal_tuple__2./tuple__2/1_accessor_definition
   :skolemid skolem_internal_tuple__2./tuple__2/1_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%tuple%2. T%0&. T%0& T%1&. T%1&))
    (has_type (tuple%2./tuple%2/1 (%Poly%tuple%2. x)) T%1&)
   )
   :pattern ((tuple%2./tuple%2/1 (%Poly%tuple%2. x)) (has_type x (TYPE%tuple%2. T%0&. T%0&
      T%1&. T%1&
   )))
   :qid internal_tuple__2./tuple__2/1_invariant_definition
   :skolemid skolem_internal_tuple__2./tuple__2/1_invariant_definition
)))
(assert
 (forall ((x tuple%2.)) (!
   (=>
    (is-tuple%2./tuple%2 x)
    (height_lt (height (tuple%2./tuple%2/0 x)) (height (Poly%tuple%2. x)))
   )
   :pattern ((height (tuple%2./tuple%2/0 x)))
   :qid prelude_datatype_height_tuple%2./tuple%2/0
   :skolemid skolem_prelude_datatype_height_tuple%2./tuple%2/0
)))
(assert
 (forall ((x tuple%2.)) (!
   (=>
    (is-tuple%2./tuple%2 x)
    (height_lt (height (tuple%2./tuple%2/1 x)) (height (Poly%tuple%2. x)))
   )
   :pattern ((height (tuple%2./tuple%2/1 x)))
   :qid prelude_datatype_height_tuple%2./tuple%2/1
   :skolemid skolem_prelude_datatype_height_tuple%2./tuple%2/1
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (deep Bool) (x Poly) (y Poly))
  (!
   (=>
    (and
     (has_type x (TYPE%tuple%2. T%0&. T%0& T%1&. T%1&))
     (has_type y (TYPE%tuple%2. T%0&. T%0& T%1&. T%1&))
     (ext_eq deep T%0& (tuple%2./tuple%2/0 (%Poly%tuple%2. x)) (tuple%2./tuple%2/0 (%Poly%tuple%2.
        y
     )))
     (ext_eq deep T%1& (tuple%2./tuple%2/1 (%Poly%tuple%2. x)) (tuple%2./tuple%2/1 (%Poly%tuple%2.
        y
    ))))
    (ext_eq deep (TYPE%tuple%2. T%0&. T%0& T%1&. T%1&) x y)
   )
   :pattern ((ext_eq deep (TYPE%tuple%2. T%0&. T%0& T%1&. T%1&) x y))
   :qid internal_tuple__2./tuple__2_ext_equal_definition
   :skolemid skolem_internal_tuple__2./tuple__2_ext_equal_definition
)))

;; Traits
(declare-fun tr_bound%vstd.pcm.PCM. (Dcr Type) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%vstd.pcm.PCM. Self%&. Self%&))
   :qid internal_crate__vstd__pcm__PCM_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__pcm__PCM_trait_type_bounds_definition
)))

;; Function-Decl crate::vstd::set::Set::contains
(declare-fun vstd.set.impl&%0.contains.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::set::Set::new
(declare-fun vstd.set.impl&%0.new.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::pcm::PCM::valid
(declare-fun vstd.pcm.PCM.valid.? (Dcr Type Poly) Poly)
(declare-fun vstd.pcm.PCM.valid%default%.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::pcm::PCM::op
(declare-fun vstd.pcm.PCM.op.? (Dcr Type Poly Poly) Poly)
(declare-fun vstd.pcm.PCM.op%default%.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::pcm::PCM::unit
(declare-fun vstd.pcm.PCM.unit.? (Dcr Type) Poly)
(declare-fun vstd.pcm.PCM.unit%default%.? (Dcr Type) Poly)

;; Function-Decl crate::vstd::pcm::Resource::value
(declare-fun vstd.pcm.impl&%0.value.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::pcm::Resource::loc
(declare-fun vstd.pcm.impl&%0.loc.? (Dcr Type Poly) Int)

;; Function-Decl crate::vstd::pcm::frame_preserving_update
(declare-fun vstd.pcm.frame_preserving_update.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::pcm::frame_preserving_update_nondeterministic
(declare-fun vstd.pcm.frame_preserving_update_nondeterministic.? (Dcr Type Poly Poly)
 Bool
)

;; Function-Decl crate::vstd::pcm::incl
(declare-fun vstd.pcm.incl.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::pcm::conjunct_shared
(declare-fun vstd.pcm.conjunct_shared.? (Dcr Type Poly Poly Poly) Bool)

;; Function-Decl crate::vstd::pcm::set_op
(declare-fun vstd.pcm.set_op.? (Dcr Type Poly Poly) Poly)

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

;; Function-Axioms crate::vstd::pcm::PCM::valid
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.pcm.PCM.valid.? Self%&. Self%& self!) BOOL)
   )
   :pattern ((vstd.pcm.PCM.valid.? Self%&. Self%& self!))
   :qid internal_vstd.pcm.PCM.valid.?_pre_post_definition
   :skolemid skolem_internal_vstd.pcm.PCM.valid.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::pcm::PCM::op
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (other! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type other! Self%&)
    )
    (has_type (vstd.pcm.PCM.op.? Self%&. Self%& self! other!) Self%&)
   )
   :pattern ((vstd.pcm.PCM.op.? Self%&. Self%& self! other!))
   :qid internal_vstd.pcm.PCM.op.?_pre_post_definition
   :skolemid skolem_internal_vstd.pcm.PCM.op.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::pcm::PCM::unit
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   (has_type (vstd.pcm.PCM.unit.? Self%&. Self%&) Self%&)
   :pattern ((vstd.pcm.PCM.unit.? Self%&. Self%&))
   :qid internal_vstd.pcm.PCM.unit.?_pre_post_definition
   :skolemid skolem_internal_vstd.pcm.PCM.unit.?_pre_post_definition
)))

;; Function-Specs crate::vstd::pcm::PCM::closed_under_incl
(declare-fun req%vstd.pcm.PCM.closed_under_incl. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (a! Poly) (b! Poly)) (!
   (= (req%vstd.pcm.PCM.closed_under_incl. Self%&. Self%& a! b!) (=>
     %%global_location_label%%0
     (%B (vstd.pcm.PCM.valid.? Self%&. Self%& (vstd.pcm.PCM.op.? Self%&. Self%& a! b!)))
   ))
   :pattern ((req%vstd.pcm.PCM.closed_under_incl. Self%&. Self%& a! b!))
   :qid internal_req__vstd.pcm.PCM.closed_under_incl._definition
   :skolemid skolem_internal_req__vstd.pcm.PCM.closed_under_incl._definition
)))
(declare-fun ens%vstd.pcm.PCM.closed_under_incl. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (a! Poly) (b! Poly)) (!
   (= (ens%vstd.pcm.PCM.closed_under_incl. Self%&. Self%& a! b!) (%B (vstd.pcm.PCM.valid.?
      Self%&. Self%& a!
   )))
   :pattern ((ens%vstd.pcm.PCM.closed_under_incl. Self%&. Self%& a! b!))
   :qid internal_ens__vstd.pcm.PCM.closed_under_incl._definition
   :skolemid skolem_internal_ens__vstd.pcm.PCM.closed_under_incl._definition
)))

;; Function-Specs crate::vstd::pcm::PCM::commutative
(declare-fun ens%vstd.pcm.PCM.commutative. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (a! Poly) (b! Poly)) (!
   (= (ens%vstd.pcm.PCM.commutative. Self%&. Self%& a! b!) (= (vstd.pcm.PCM.op.? Self%&.
      Self%& a! b!
     ) (vstd.pcm.PCM.op.? Self%&. Self%& b! a!)
   ))
   :pattern ((ens%vstd.pcm.PCM.commutative. Self%&. Self%& a! b!))
   :qid internal_ens__vstd.pcm.PCM.commutative._definition
   :skolemid skolem_internal_ens__vstd.pcm.PCM.commutative._definition
)))

;; Function-Specs crate::vstd::pcm::PCM::associative
(declare-fun ens%vstd.pcm.PCM.associative. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (a! Poly) (b! Poly) (c! Poly)) (!
   (= (ens%vstd.pcm.PCM.associative. Self%&. Self%& a! b! c!) (= (vstd.pcm.PCM.op.? Self%&.
      Self%& a! (vstd.pcm.PCM.op.? Self%&. Self%& b! c!)
     ) (vstd.pcm.PCM.op.? Self%&. Self%& (vstd.pcm.PCM.op.? Self%&. Self%& a! b!) c!)
   ))
   :pattern ((ens%vstd.pcm.PCM.associative. Self%&. Self%& a! b! c!))
   :qid internal_ens__vstd.pcm.PCM.associative._definition
   :skolemid skolem_internal_ens__vstd.pcm.PCM.associative._definition
)))

;; Function-Specs crate::vstd::pcm::PCM::op_unit
(declare-fun ens%vstd.pcm.PCM.op_unit. (Dcr Type Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (a! Poly)) (!
   (= (ens%vstd.pcm.PCM.op_unit. Self%&. Self%& a!) (= (vstd.pcm.PCM.op.? Self%&. Self%&
      a! (vstd.pcm.PCM.unit.? Self%&. Self%&)
     ) a!
   ))
   :pattern ((ens%vstd.pcm.PCM.op_unit. Self%&. Self%& a!))
   :qid internal_ens__vstd.pcm.PCM.op_unit._definition
   :skolemid skolem_internal_ens__vstd.pcm.PCM.op_unit._definition
)))

;; Function-Specs crate::vstd::pcm::PCM::unit_valid
(declare-fun ens%vstd.pcm.PCM.unit_valid. (Dcr Type) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   (= (ens%vstd.pcm.PCM.unit_valid. Self%&. Self%&) (%B (vstd.pcm.PCM.valid.? Self%&. Self%&
      (vstd.pcm.PCM.unit.? Self%&. Self%&)
   )))
   :pattern ((ens%vstd.pcm.PCM.unit_valid. Self%&. Self%&))
   :qid internal_ens__vstd.pcm.PCM.unit_valid._definition
   :skolemid skolem_internal_ens__vstd.pcm.PCM.unit_valid._definition
)))

;; Function-Axioms crate::vstd::pcm::Resource::value
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.pcm.Resource. P&. P&))
    (has_type (vstd.pcm.impl&%0.value.? P&. P& self!) P&)
   )
   :pattern ((vstd.pcm.impl&%0.value.? P&. P& self!))
   :qid internal_vstd.pcm.impl&__0.value.?_pre_post_definition
   :skolemid skolem_internal_vstd.pcm.impl&__0.value.?_pre_post_definition
)))

;; Function-Specs crate::vstd::pcm::Resource::alloc
(declare-fun req%vstd.pcm.impl&%0.alloc. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (value! Poly)) (!
   (= (req%vstd.pcm.impl&%0.alloc. P&. P& value!) (=>
     %%global_location_label%%1
     (%B (vstd.pcm.PCM.valid.? P&. P& value!))
   ))
   :pattern ((req%vstd.pcm.impl&%0.alloc. P&. P& value!))
   :qid internal_req__vstd.pcm.impl&__0.alloc._definition
   :skolemid skolem_internal_req__vstd.pcm.impl&__0.alloc._definition
)))
(declare-fun ens%vstd.pcm.impl&%0.alloc. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (value! Poly) (out! Poly)) (!
   (= (ens%vstd.pcm.impl&%0.alloc. P&. P& value! out!) (and
     (has_type out! (TYPE%vstd.pcm.Resource. P&. P&))
     (= (vstd.pcm.impl&%0.value.? P&. P& out!) value!)
   ))
   :pattern ((ens%vstd.pcm.impl&%0.alloc. P&. P& value! out!))
   :qid internal_ens__vstd.pcm.impl&__0.alloc._definition
   :skolemid skolem_internal_ens__vstd.pcm.impl&__0.alloc._definition
)))

;; Function-Specs crate::vstd::pcm::Resource::join
(declare-fun req%vstd.pcm.impl&%0.join. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly) (other! Poly)) (!
   (= (req%vstd.pcm.impl&%0.join. P&. P& self! other!) (=>
     %%global_location_label%%2
     (= (vstd.pcm.impl&%0.loc.? P&. P& self!) (vstd.pcm.impl&%0.loc.? P&. P& other!))
   ))
   :pattern ((req%vstd.pcm.impl&%0.join. P&. P& self! other!))
   :qid internal_req__vstd.pcm.impl&__0.join._definition
   :skolemid skolem_internal_req__vstd.pcm.impl&__0.join._definition
)))
(declare-fun ens%vstd.pcm.impl&%0.join. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly) (other! Poly) (out! Poly)) (!
   (= (ens%vstd.pcm.impl&%0.join. P&. P& self! other! out!) (and
     (has_type out! (TYPE%vstd.pcm.Resource. P&. P&))
     (= (vstd.pcm.impl&%0.loc.? P&. P& out!) (vstd.pcm.impl&%0.loc.? P&. P& self!))
     (= (vstd.pcm.impl&%0.value.? P&. P& out!) (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.?
        P&. P& self!
       ) (vstd.pcm.impl&%0.value.? P&. P& other!)
   ))))
   :pattern ((ens%vstd.pcm.impl&%0.join. P&. P& self! other! out!))
   :qid internal_ens__vstd.pcm.impl&__0.join._definition
   :skolemid skolem_internal_ens__vstd.pcm.impl&__0.join._definition
)))

;; Function-Specs crate::vstd::pcm::Resource::split
(declare-fun req%vstd.pcm.impl&%0.split. (Dcr Type Poly Poly Poly) Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly) (left! Poly) (right! Poly)) (!
   (= (req%vstd.pcm.impl&%0.split. P&. P& self! left! right!) (=>
     %%global_location_label%%3
     (= (vstd.pcm.impl&%0.value.? P&. P& self!) (vstd.pcm.PCM.op.? P&. P& left! right!))
   ))
   :pattern ((req%vstd.pcm.impl&%0.split. P&. P& self! left! right!))
   :qid internal_req__vstd.pcm.impl&__0.split._definition
   :skolemid skolem_internal_req__vstd.pcm.impl&__0.split._definition
)))
(declare-fun ens%vstd.pcm.impl&%0.split. (Dcr Type Poly Poly Poly tuple%2.) Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly) (left! Poly) (right! Poly) (out! tuple%2.))
  (!
   (= (ens%vstd.pcm.impl&%0.split. P&. P& self! left! right! out!) (and
     (has_type (Poly%tuple%2. out!) (TYPE%tuple%2. $ (TYPE%vstd.pcm.Resource. P&. P&) $
       (TYPE%vstd.pcm.Resource. P&. P&)
     ))
     (= (vstd.pcm.impl&%0.loc.? P&. P& (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. out!))))
      (vstd.pcm.impl&%0.loc.? P&. P& self!)
     )
     (= (vstd.pcm.impl&%0.loc.? P&. P& (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. out!))))
      (vstd.pcm.impl&%0.loc.? P&. P& self!)
     )
     (= (vstd.pcm.impl&%0.value.? P&. P& (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2.
          out!
       )))
      ) left!
     )
     (= (vstd.pcm.impl&%0.value.? P&. P& (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2.
          out!
       )))
      ) right!
   )))
   :pattern ((ens%vstd.pcm.impl&%0.split. P&. P& self! left! right! out!))
   :qid internal_ens__vstd.pcm.impl&__0.split._definition
   :skolemid skolem_internal_ens__vstd.pcm.impl&__0.split._definition
)))

;; Function-Specs crate::vstd::pcm::Resource::create_unit
(declare-fun ens%vstd.pcm.impl&%0.create_unit. (Dcr Type Int Poly) Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (loc! Int) (out! Poly)) (!
   (= (ens%vstd.pcm.impl&%0.create_unit. P&. P& loc! out!) (and
     (has_type out! (TYPE%vstd.pcm.Resource. P&. P&))
     (= (vstd.pcm.impl&%0.value.? P&. P& out!) (vstd.pcm.PCM.unit.? P&. P&))
     (= (vstd.pcm.impl&%0.loc.? P&. P& out!) loc!)
   ))
   :pattern ((ens%vstd.pcm.impl&%0.create_unit. P&. P& loc! out!))
   :qid internal_ens__vstd.pcm.impl&__0.create_unit._definition
   :skolemid skolem_internal_ens__vstd.pcm.impl&__0.create_unit._definition
)))

;; Function-Specs crate::vstd::pcm::Resource::validate
(declare-fun ens%vstd.pcm.impl&%0.validate. (Dcr Type Poly) Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly)) (!
   (= (ens%vstd.pcm.impl&%0.validate. P&. P& self!) (%B (vstd.pcm.PCM.valid.? P&. P& (vstd.pcm.impl&%0.value.?
       P&. P& self!
   ))))
   :pattern ((ens%vstd.pcm.impl&%0.validate. P&. P& self!))
   :qid internal_ens__vstd.pcm.impl&__0.validate._definition
   :skolemid skolem_internal_ens__vstd.pcm.impl&__0.validate._definition
)))

;; Function-Axioms crate::vstd::pcm::frame_preserving_update
(assert
 (fuel_bool_default fuel%vstd.pcm.frame_preserving_update.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.pcm.frame_preserving_update.)
  (forall ((P&. Dcr) (P& Type) (a! Poly) (b! Poly)) (!
    (= (vstd.pcm.frame_preserving_update.? P&. P& a! b!) (forall ((c$ Poly)) (!
       (=>
        (has_type c$ P&)
        (=>
         (%B (vstd.pcm.PCM.valid.? P&. P& (vstd.pcm.PCM.op.? P&. P& a! c$)))
         (%B (vstd.pcm.PCM.valid.? P&. P& (vstd.pcm.PCM.op.? P&. P& b! c$)))
       ))
       :pattern ((vstd.pcm.PCM.op.? P&. P& a! c$) (vstd.pcm.PCM.op.? P&. P& b! c$))
       :qid user_crate__vstd__pcm__frame_preserving_update_0
       :skolemid skolem_user_crate__vstd__pcm__frame_preserving_update_0
    )))
    :pattern ((vstd.pcm.frame_preserving_update.? P&. P& a! b!))
    :qid internal_vstd.pcm.frame_preserving_update.?_definition
    :skolemid skolem_internal_vstd.pcm.frame_preserving_update.?_definition
))))

;; Function-Specs crate::vstd::pcm::Resource::update
(declare-fun req%vstd.pcm.impl&%0.update. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly) (new_value! Poly)) (!
   (= (req%vstd.pcm.impl&%0.update. P&. P& self! new_value!) (=>
     %%global_location_label%%4
     (vstd.pcm.frame_preserving_update.? P&. P& (vstd.pcm.impl&%0.value.? P&. P& self!)
      new_value!
   )))
   :pattern ((req%vstd.pcm.impl&%0.update. P&. P& self! new_value!))
   :qid internal_req__vstd.pcm.impl&__0.update._definition
   :skolemid skolem_internal_req__vstd.pcm.impl&__0.update._definition
)))
(declare-fun ens%vstd.pcm.impl&%0.update. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly) (new_value! Poly) (out! Poly)) (!
   (= (ens%vstd.pcm.impl&%0.update. P&. P& self! new_value! out!) (and
     (has_type out! (TYPE%vstd.pcm.Resource. P&. P&))
     (= (vstd.pcm.impl&%0.loc.? P&. P& out!) (vstd.pcm.impl&%0.loc.? P&. P& self!))
     (= (vstd.pcm.impl&%0.value.? P&. P& out!) new_value!)
   ))
   :pattern ((ens%vstd.pcm.impl&%0.update. P&. P& self! new_value! out!))
   :qid internal_ens__vstd.pcm.impl&__0.update._definition
   :skolemid skolem_internal_ens__vstd.pcm.impl&__0.update._definition
)))

;; Function-Axioms crate::vstd::pcm::frame_preserving_update_nondeterministic
(assert
 (fuel_bool_default fuel%vstd.pcm.frame_preserving_update_nondeterministic.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.pcm.frame_preserving_update_nondeterministic.)
  (forall ((P&. Dcr) (P& Type) (a! Poly) (bs! Poly)) (!
    (= (vstd.pcm.frame_preserving_update_nondeterministic.? P&. P& a! bs!) (forall ((c$ Poly))
      (!
       (=>
        (has_type c$ P&)
        (=>
         (%B (vstd.pcm.PCM.valid.? P&. P& (vstd.pcm.PCM.op.? P&. P& a! c$)))
         (exists ((b$ Poly)) (!
           (and
            (has_type b$ P&)
            (and
             (vstd.set.impl&%0.contains.? P&. P& bs! b$)
             (%B (vstd.pcm.PCM.valid.? P&. P& (vstd.pcm.PCM.op.? P&. P& b$ c$)))
           ))
           :pattern ((vstd.set.impl&%0.contains.? P&. P& bs! b$))
           :qid user_crate__vstd__pcm__frame_preserving_update_nondeterministic_1
           :skolemid skolem_user_crate__vstd__pcm__frame_preserving_update_nondeterministic_1
       ))))
       :pattern ((vstd.pcm.PCM.op.? P&. P& a! c$))
       :qid user_crate__vstd__pcm__frame_preserving_update_nondeterministic_2
       :skolemid skolem_user_crate__vstd__pcm__frame_preserving_update_nondeterministic_2
    )))
    :pattern ((vstd.pcm.frame_preserving_update_nondeterministic.? P&. P& a! bs!))
    :qid internal_vstd.pcm.frame_preserving_update_nondeterministic.?_definition
    :skolemid skolem_internal_vstd.pcm.frame_preserving_update_nondeterministic.?_definition
))))

;; Function-Specs crate::vstd::pcm::Resource::update_nondeterministic
(declare-fun req%vstd.pcm.impl&%0.update_nondeterministic. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly) (new_values! Poly)) (!
   (= (req%vstd.pcm.impl&%0.update_nondeterministic. P&. P& self! new_values!) (=>
     %%global_location_label%%5
     (vstd.pcm.frame_preserving_update_nondeterministic.? P&. P& (vstd.pcm.impl&%0.value.?
       P&. P& self!
      ) new_values!
   )))
   :pattern ((req%vstd.pcm.impl&%0.update_nondeterministic. P&. P& self! new_values!))
   :qid internal_req__vstd.pcm.impl&__0.update_nondeterministic._definition
   :skolemid skolem_internal_req__vstd.pcm.impl&__0.update_nondeterministic._definition
)))
(declare-fun ens%vstd.pcm.impl&%0.update_nondeterministic. (Dcr Type Poly Poly Poly)
 Bool
)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly) (new_values! Poly) (out! Poly)) (!
   (= (ens%vstd.pcm.impl&%0.update_nondeterministic. P&. P& self! new_values! out!) (
     and
     (has_type out! (TYPE%vstd.pcm.Resource. P&. P&))
     (= (vstd.pcm.impl&%0.loc.? P&. P& out!) (vstd.pcm.impl&%0.loc.? P&. P& self!))
     (vstd.set.impl&%0.contains.? P&. P& new_values! (vstd.pcm.impl&%0.value.? P&. P& out!))
   ))
   :pattern ((ens%vstd.pcm.impl&%0.update_nondeterministic. P&. P& self! new_values! out!))
   :qid internal_ens__vstd.pcm.impl&__0.update_nondeterministic._definition
   :skolemid skolem_internal_ens__vstd.pcm.impl&__0.update_nondeterministic._definition
)))

;; Function-Axioms crate::vstd::pcm::incl
(assert
 (fuel_bool_default fuel%vstd.pcm.incl.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.pcm.incl.)
  (forall ((P&. Dcr) (P& Type) (a! Poly) (b! Poly)) (!
    (= (vstd.pcm.incl.? P&. P& a! b!) (exists ((c$ Poly)) (!
       (and
        (has_type c$ P&)
        (= (vstd.pcm.PCM.op.? P&. P& a! c$) b!)
       )
       :pattern ((vstd.pcm.PCM.op.? P&. P& a! c$))
       :qid user_crate__vstd__pcm__incl_3
       :skolemid skolem_user_crate__vstd__pcm__incl_3
    )))
    :pattern ((vstd.pcm.incl.? P&. P& a! b!))
    :qid internal_vstd.pcm.incl.?_definition
    :skolemid skolem_internal_vstd.pcm.incl.?_definition
))))

;; Function-Specs crate::vstd::pcm::Resource::join_shared
(declare-fun req%vstd.pcm.impl&%0.join_shared. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly) (other! Poly)) (!
   (= (req%vstd.pcm.impl&%0.join_shared. P&. P& self! other!) (=>
     %%global_location_label%%6
     (= (vstd.pcm.impl&%0.loc.? P&. P& self!) (vstd.pcm.impl&%0.loc.? P&. P& other!))
   ))
   :pattern ((req%vstd.pcm.impl&%0.join_shared. P&. P& self! other!))
   :qid internal_req__vstd.pcm.impl&__0.join_shared._definition
   :skolemid skolem_internal_req__vstd.pcm.impl&__0.join_shared._definition
)))
(declare-fun ens%vstd.pcm.impl&%0.join_shared. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly) (other! Poly) (out! Poly)) (!
   (= (ens%vstd.pcm.impl&%0.join_shared. P&. P& self! other! out!) (and
     (has_type out! (TYPE%vstd.pcm.Resource. P&. P&))
     (= (vstd.pcm.impl&%0.loc.? P&. P& out!) (vstd.pcm.impl&%0.loc.? P&. P& self!))
     (vstd.pcm.incl.? P&. P& (vstd.pcm.impl&%0.value.? P&. P& self!) (vstd.pcm.impl&%0.value.?
       P&. P& out!
     ))
     (vstd.pcm.incl.? P&. P& (vstd.pcm.impl&%0.value.? P&. P& other!) (vstd.pcm.impl&%0.value.?
       P&. P& out!
   ))))
   :pattern ((ens%vstd.pcm.impl&%0.join_shared. P&. P& self! other! out!))
   :qid internal_ens__vstd.pcm.impl&__0.join_shared._definition
   :skolemid skolem_internal_ens__vstd.pcm.impl&__0.join_shared._definition
)))

;; Function-Axioms crate::vstd::pcm::conjunct_shared
(assert
 (fuel_bool_default fuel%vstd.pcm.conjunct_shared.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.pcm.conjunct_shared.)
  (forall ((P&. Dcr) (P& Type) (a! Poly) (b! Poly) (c! Poly)) (!
    (= (vstd.pcm.conjunct_shared.? P&. P& a! b! c!) (forall ((p$ Poly)) (!
       (=>
        (has_type p$ P&)
        (=>
         (and
          (and
           (%B (vstd.pcm.PCM.valid.? P&. P& p$))
           (vstd.pcm.incl.? P&. P& a! p$)
          )
          (vstd.pcm.incl.? P&. P& b! p$)
         )
         (vstd.pcm.incl.? P&. P& c! p$)
       ))
       :pattern ((vstd.pcm.incl.? P&. P& c! p$))
       :qid user_crate__vstd__pcm__conjunct_shared_4
       :skolemid skolem_user_crate__vstd__pcm__conjunct_shared_4
    )))
    :pattern ((vstd.pcm.conjunct_shared.? P&. P& a! b! c!))
    :qid internal_vstd.pcm.conjunct_shared.?_definition
    :skolemid skolem_internal_vstd.pcm.conjunct_shared.?_definition
))))

;; Function-Specs crate::vstd::pcm::Resource::join_shared_to_target
(declare-fun req%vstd.pcm.impl&%0.join_shared_to_target. (Dcr Type Poly Poly Poly)
 Bool
)
(declare-const %%global_location_label%%7 Bool)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly) (other! Poly) (target! Poly)) (!
   (= (req%vstd.pcm.impl&%0.join_shared_to_target. P&. P& self! other! target!) (and
     (=>
      %%global_location_label%%7
      (= (vstd.pcm.impl&%0.loc.? P&. P& self!) (vstd.pcm.impl&%0.loc.? P&. P& other!))
     )
     (=>
      %%global_location_label%%8
      (vstd.pcm.conjunct_shared.? P&. P& (vstd.pcm.impl&%0.value.? P&. P& self!) (vstd.pcm.impl&%0.value.?
        P&. P& other!
       ) target!
   ))))
   :pattern ((req%vstd.pcm.impl&%0.join_shared_to_target. P&. P& self! other! target!))
   :qid internal_req__vstd.pcm.impl&__0.join_shared_to_target._definition
   :skolemid skolem_internal_req__vstd.pcm.impl&__0.join_shared_to_target._definition
)))
(declare-fun ens%vstd.pcm.impl&%0.join_shared_to_target. (Dcr Type Poly Poly Poly Poly)
 Bool
)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly) (other! Poly) (target! Poly) (out! Poly))
  (!
   (= (ens%vstd.pcm.impl&%0.join_shared_to_target. P&. P& self! other! target! out!)
    (and
     (has_type out! (TYPE%vstd.pcm.Resource. P&. P&))
     (= (vstd.pcm.impl&%0.loc.? P&. P& out!) (vstd.pcm.impl&%0.loc.? P&. P& self!))
     (= (vstd.pcm.impl&%0.value.? P&. P& out!) target!)
   ))
   :pattern ((ens%vstd.pcm.impl&%0.join_shared_to_target. P&. P& self! other! target!
     out!
   ))
   :qid internal_ens__vstd.pcm.impl&__0.join_shared_to_target._definition
   :skolemid skolem_internal_ens__vstd.pcm.impl&__0.join_shared_to_target._definition
)))

;; Function-Specs crate::vstd::pcm::Resource::weaken
(declare-fun req%vstd.pcm.impl&%0.weaken. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%9 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly) (target! Poly)) (!
   (= (req%vstd.pcm.impl&%0.weaken. P&. P& self! target!) (=>
     %%global_location_label%%9
     (vstd.pcm.incl.? P&. P& target! (vstd.pcm.impl&%0.value.? P&. P& self!))
   ))
   :pattern ((req%vstd.pcm.impl&%0.weaken. P&. P& self! target!))
   :qid internal_req__vstd.pcm.impl&__0.weaken._definition
   :skolemid skolem_internal_req__vstd.pcm.impl&__0.weaken._definition
)))
(declare-fun ens%vstd.pcm.impl&%0.weaken. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly) (target! Poly) (out! Poly)) (!
   (= (ens%vstd.pcm.impl&%0.weaken. P&. P& self! target! out!) (and
     (has_type out! (TYPE%vstd.pcm.Resource. P&. P&))
     (= (vstd.pcm.impl&%0.loc.? P&. P& out!) (vstd.pcm.impl&%0.loc.? P&. P& self!))
     (= (vstd.pcm.impl&%0.value.? P&. P& out!) target!)
   ))
   :pattern ((ens%vstd.pcm.impl&%0.weaken. P&. P& self! target! out!))
   :qid internal_ens__vstd.pcm.impl&__0.weaken._definition
   :skolemid skolem_internal_ens__vstd.pcm.impl&__0.weaken._definition
)))

;; Function-Specs crate::vstd::pcm::Resource::validate_2
(declare-fun req%vstd.pcm.impl&%0.validate_2. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%10 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (pre%self! Poly) (other! Poly)) (!
   (= (req%vstd.pcm.impl&%0.validate_2. P&. P& pre%self! other!) (=>
     %%global_location_label%%10
     (= (vstd.pcm.impl&%0.loc.? P&. P& pre%self!) (vstd.pcm.impl&%0.loc.? P&. P& other!))
   ))
   :pattern ((req%vstd.pcm.impl&%0.validate_2. P&. P& pre%self! other!))
   :qid internal_req__vstd.pcm.impl&__0.validate_2._definition
   :skolemid skolem_internal_req__vstd.pcm.impl&__0.validate_2._definition
)))
(declare-fun ens%vstd.pcm.impl&%0.validate_2. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (pre%self! Poly) (self! Poly) (other! Poly)) (!
   (= (ens%vstd.pcm.impl&%0.validate_2. P&. P& pre%self! self! other!) (and
     (has_type self! (TYPE%vstd.pcm.Resource. P&. P&))
     (= self! pre%self!)
     (%B (vstd.pcm.PCM.valid.? P&. P& (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.?
         P&. P& self!
        ) (vstd.pcm.impl&%0.value.? P&. P& other!)
   )))))
   :pattern ((ens%vstd.pcm.impl&%0.validate_2. P&. P& pre%self! self! other!))
   :qid internal_ens__vstd.pcm.impl&__0.validate_2._definition
   :skolemid skolem_internal_ens__vstd.pcm.impl&__0.validate_2._definition
)))

;; Function-Specs crate::vstd::pcm::Resource::update_with_shared
(declare-fun req%vstd.pcm.impl&%0.update_with_shared. (Dcr Type Poly Poly Poly) Bool)
(declare-const %%global_location_label%%11 Bool)
(declare-const %%global_location_label%%12 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly) (other! Poly) (new_value! Poly)) (!
   (= (req%vstd.pcm.impl&%0.update_with_shared. P&. P& self! other! new_value!) (and
     (=>
      %%global_location_label%%11
      (= (vstd.pcm.impl&%0.loc.? P&. P& self!) (vstd.pcm.impl&%0.loc.? P&. P& other!))
     )
     (=>
      %%global_location_label%%12
      (vstd.pcm.frame_preserving_update.? P&. P& (vstd.pcm.PCM.op.? P&. P& (vstd.pcm.impl&%0.value.?
         P&. P& self!
        ) (vstd.pcm.impl&%0.value.? P&. P& other!)
       ) (vstd.pcm.PCM.op.? P&. P& new_value! (vstd.pcm.impl&%0.value.? P&. P& other!))
   ))))
   :pattern ((req%vstd.pcm.impl&%0.update_with_shared. P&. P& self! other! new_value!))
   :qid internal_req__vstd.pcm.impl&__0.update_with_shared._definition
   :skolemid skolem_internal_req__vstd.pcm.impl&__0.update_with_shared._definition
)))
(declare-fun ens%vstd.pcm.impl&%0.update_with_shared. (Dcr Type Poly Poly Poly Poly)
 Bool
)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly) (other! Poly) (new_value! Poly) (out! Poly))
  (!
   (= (ens%vstd.pcm.impl&%0.update_with_shared. P&. P& self! other! new_value! out!)
    (and
     (has_type out! (TYPE%vstd.pcm.Resource. P&. P&))
     (= (vstd.pcm.impl&%0.loc.? P&. P& out!) (vstd.pcm.impl&%0.loc.? P&. P& self!))
     (= (vstd.pcm.impl&%0.value.? P&. P& out!) new_value!)
   ))
   :pattern ((ens%vstd.pcm.impl&%0.update_with_shared. P&. P& self! other! new_value!
     out!
   ))
   :qid internal_ens__vstd.pcm.impl&__0.update_with_shared._definition
   :skolemid skolem_internal_ens__vstd.pcm.impl&__0.update_with_shared._definition
)))

;; Function-Axioms crate::vstd::pcm::set_op
(assert
 (fuel_bool_default fuel%vstd.pcm.set_op.)
)
(declare-fun %%lambda%%0 (Dcr Type Poly Dcr Type Poly Type Dcr Type Poly Dcr Type Poly)
 %%Function%%
)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 Dcr) (%%hole%%4
    Type
   ) (%%hole%%5 Poly) (%%hole%%6 Type) (%%hole%%7 Dcr) (%%hole%%8 Type) (%%hole%%9 Poly)
   (%%hole%%10 Dcr) (%%hole%%11 Type) (%%hole%%12 Poly) (v$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
      %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12
     ) v$
    ) (B (exists ((q$ Poly)) (!
       (and
        (has_type q$ %%hole%%6)
        (and
         (vstd.set.impl&%0.contains.? %%hole%%7 %%hole%%8 %%hole%%9 q$)
         (= v$ (vstd.pcm.PCM.op.? %%hole%%10 %%hole%%11 q$ %%hole%%12))
       ))
       :pattern ((vstd.set.impl&%0.contains.? %%hole%%0 %%hole%%1 %%hole%%2 q$))
       :pattern ((vstd.pcm.PCM.op.? %%hole%%3 %%hole%%4 q$ %%hole%%5))
       :qid user_crate__vstd__pcm__set_op_5
       :skolemid skolem_user_crate__vstd__pcm__set_op_5
   ))))
   :pattern ((%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      %%hole%%5 %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12
     ) v$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.pcm.set_op.)
  (forall ((P&. Dcr) (P& Type) (s! Poly) (t! Poly)) (!
    (= (vstd.pcm.set_op.? P&. P& s! t!) (vstd.set.impl&%0.new.? P&. P& $ (TYPE%fun%1. P&.
       P& $ BOOL
      ) (Poly%fun%1. (mk_fun (%%lambda%%0 P&. P& s! P&. P& t! P& P&. P& s! P&. P& t!)))
    ))
    :pattern ((vstd.pcm.set_op.? P&. P& s! t!))
    :qid internal_vstd.pcm.set_op.?_definition
    :skolemid skolem_internal_vstd.pcm.set_op.?_definition
))))
(assert
 (forall ((P&. Dcr) (P& Type) (s! Poly) (t! Poly)) (!
   (=>
    (and
     (has_type s! (TYPE%vstd.set.Set. P&. P&))
     (has_type t! P&)
    )
    (has_type (vstd.pcm.set_op.? P&. P& s! t!) (TYPE%vstd.set.Set. P&. P&))
   )
   :pattern ((vstd.pcm.set_op.? P&. P& s! t!))
   :qid internal_vstd.pcm.set_op.?_pre_post_definition
   :skolemid skolem_internal_vstd.pcm.set_op.?_pre_post_definition
)))

;; Function-Specs crate::vstd::pcm::Resource::update_nondeterministic_with_shared
(declare-fun req%vstd.pcm.impl&%0.update_nondeterministic_with_shared. (Dcr Type Poly
  Poly Poly
 ) Bool
)
(declare-const %%global_location_label%%13 Bool)
(declare-const %%global_location_label%%14 Bool)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly) (other! Poly) (new_values! Poly)) (!
   (= (req%vstd.pcm.impl&%0.update_nondeterministic_with_shared. P&. P& self! other! new_values!)
    (and
     (=>
      %%global_location_label%%13
      (= (vstd.pcm.impl&%0.loc.? P&. P& self!) (vstd.pcm.impl&%0.loc.? P&. P& other!))
     )
     (=>
      %%global_location_label%%14
      (vstd.pcm.frame_preserving_update_nondeterministic.? P&. P& (vstd.pcm.PCM.op.? P&.
        P& (vstd.pcm.impl&%0.value.? P&. P& self!) (vstd.pcm.impl&%0.value.? P&. P& other!)
       ) (vstd.pcm.set_op.? P&. P& new_values! (vstd.pcm.impl&%0.value.? P&. P& other!))
   ))))
   :pattern ((req%vstd.pcm.impl&%0.update_nondeterministic_with_shared. P&. P& self! other!
     new_values!
   ))
   :qid internal_req__vstd.pcm.impl&__0.update_nondeterministic_with_shared._definition
   :skolemid skolem_internal_req__vstd.pcm.impl&__0.update_nondeterministic_with_shared._definition
)))
(declare-fun ens%vstd.pcm.impl&%0.update_nondeterministic_with_shared. (Dcr Type Poly
  Poly Poly Poly
 ) Bool
)
(assert
 (forall ((P&. Dcr) (P& Type) (self! Poly) (other! Poly) (new_values! Poly) (out! Poly))
  (!
   (= (ens%vstd.pcm.impl&%0.update_nondeterministic_with_shared. P&. P& self! other! new_values!
     out!
    ) (and
     (has_type out! (TYPE%vstd.pcm.Resource. P&. P&))
     (= (vstd.pcm.impl&%0.loc.? P&. P& out!) (vstd.pcm.impl&%0.loc.? P&. P& self!))
     (vstd.set.impl&%0.contains.? P&. P& new_values! (vstd.pcm.impl&%0.value.? P&. P& out!))
   ))
   :pattern ((ens%vstd.pcm.impl&%0.update_nondeterministic_with_shared. P&. P& self! other!
     new_values! out!
   ))
   :qid internal_ens__vstd.pcm.impl&__0.update_nondeterministic_with_shared._definition
   :skolemid skolem_internal_ens__vstd.pcm.impl&__0.update_nondeterministic_with_shared._definition
)))
