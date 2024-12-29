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

;; MODULE 'module vstd::invariant'

;; Fuel
(declare-const fuel%vstd!invariant.AtomicInvariant.inv. FuelId)
(declare-const fuel%vstd!invariant.LocalInvariant.inv. FuelId)
(assert
 (distinct fuel%vstd!invariant.AtomicInvariant.inv. fuel%vstd!invariant.LocalInvariant.inv.)
)

;; Datatypes
(declare-sort vstd.invariant.OpenInvariantCredit. 0)
(declare-datatypes ((vstd.invariant.InvariantBlockGuard. 0) (tuple%0. 0)) (((vstd.invariant.InvariantBlockGuard./InvariantBlockGuard))
  ((tuple%0./tuple%0))
))
(declare-fun TYPE%vstd.invariant.AtomicInvariant. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.invariant.LocalInvariant. (Dcr Type Dcr Type Dcr Type) Type)
(declare-const TYPE%vstd.invariant.InvariantBlockGuard. Type)
(declare-const TYPE%vstd.invariant.OpenInvariantCredit. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%vstd.invariant.OpenInvariantCredit. (vstd.invariant.OpenInvariantCredit.)
 Poly
)
(declare-fun %Poly%vstd.invariant.OpenInvariantCredit. (Poly) vstd.invariant.OpenInvariantCredit.)
(declare-fun Poly%vstd.invariant.InvariantBlockGuard. (vstd.invariant.InvariantBlockGuard.)
 Poly
)
(declare-fun %Poly%vstd.invariant.InvariantBlockGuard. (Poly) vstd.invariant.InvariantBlockGuard.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(assert
 (forall ((x vstd.invariant.OpenInvariantCredit.)) (!
   (= x (%Poly%vstd.invariant.OpenInvariantCredit. (Poly%vstd.invariant.OpenInvariantCredit.
      x
   )))
   :pattern ((Poly%vstd.invariant.OpenInvariantCredit. x))
   :qid internal_crate__vstd__invariant__OpenInvariantCredit_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__invariant__OpenInvariantCredit_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.invariant.OpenInvariantCredit.)
    (= x (Poly%vstd.invariant.OpenInvariantCredit. (%Poly%vstd.invariant.OpenInvariantCredit.
       x
   ))))
   :pattern ((has_type x TYPE%vstd.invariant.OpenInvariantCredit.))
   :qid internal_crate__vstd__invariant__OpenInvariantCredit_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__invariant__OpenInvariantCredit_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.invariant.OpenInvariantCredit.)) (!
   (has_type (Poly%vstd.invariant.OpenInvariantCredit. x) TYPE%vstd.invariant.OpenInvariantCredit.)
   :pattern ((has_type (Poly%vstd.invariant.OpenInvariantCredit. x) TYPE%vstd.invariant.OpenInvariantCredit.))
   :qid internal_crate__vstd__invariant__OpenInvariantCredit_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__invariant__OpenInvariantCredit_has_type_always_definition
)))
(assert
 (forall ((x vstd.invariant.InvariantBlockGuard.)) (!
   (= x (%Poly%vstd.invariant.InvariantBlockGuard. (Poly%vstd.invariant.InvariantBlockGuard.
      x
   )))
   :pattern ((Poly%vstd.invariant.InvariantBlockGuard. x))
   :qid internal_crate__vstd__invariant__InvariantBlockGuard_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__invariant__InvariantBlockGuard_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.invariant.InvariantBlockGuard.)
    (= x (Poly%vstd.invariant.InvariantBlockGuard. (%Poly%vstd.invariant.InvariantBlockGuard.
       x
   ))))
   :pattern ((has_type x TYPE%vstd.invariant.InvariantBlockGuard.))
   :qid internal_crate__vstd__invariant__InvariantBlockGuard_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__invariant__InvariantBlockGuard_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.invariant.InvariantBlockGuard.)) (!
   (has_type (Poly%vstd.invariant.InvariantBlockGuard. x) TYPE%vstd.invariant.InvariantBlockGuard.)
   :pattern ((has_type (Poly%vstd.invariant.InvariantBlockGuard. x) TYPE%vstd.invariant.InvariantBlockGuard.))
   :qid internal_crate__vstd__invariant__InvariantBlockGuard_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__invariant__InvariantBlockGuard_has_type_always_definition
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

;; Traits
(declare-fun tr_bound%vstd.invariant.InvariantPredicate. (Dcr Type Dcr Type Dcr Type)
 Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (K&. Dcr) (K& Type) (V&. Dcr) (V& Type)) (!
   true
   :pattern ((tr_bound%vstd.invariant.InvariantPredicate. Self%&. Self%& K&. K& V&. V&))
   :qid internal_crate__vstd__invariant__InvariantPredicate_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__invariant__InvariantPredicate_trait_type_bounds_definition
)))

;; Function-Decl crate::vstd::invariant::InvariantPredicate::inv
(declare-fun vstd.invariant.InvariantPredicate.inv.? (Dcr Type Dcr Type Dcr Type Poly
  Poly
 ) Poly
)
(declare-fun vstd.invariant.InvariantPredicate.inv%default%.? (Dcr Type Dcr Type Dcr
  Type Poly Poly
 ) Poly
)

;; Function-Decl crate::vstd::invariant::AtomicInvariant::constant
(declare-fun vstd.invariant.impl&%0.constant.? (Dcr Type Dcr Type Dcr Type Poly) Poly)

;; Function-Decl vstd::invariant::AtomicInvariant::namespace
(declare-fun vstd!invariant.AtomicInvariant.namespace.? (Dcr Type Dcr Type Dcr Type
  Poly
 ) Int
)

;; Function-Decl vstd::invariant::AtomicInvariant::inv
(declare-fun vstd!invariant.AtomicInvariant.inv.? (Dcr Type Dcr Type Dcr Type Poly
  Poly
 ) Bool
)

;; Function-Decl crate::vstd::invariant::LocalInvariant::constant
(declare-fun vstd.invariant.impl&%1.constant.? (Dcr Type Dcr Type Dcr Type Poly) Poly)

;; Function-Decl vstd::invariant::LocalInvariant::namespace
(declare-fun vstd!invariant.LocalInvariant.namespace.? (Dcr Type Dcr Type Dcr Type
  Poly
 ) Int
)

;; Function-Decl vstd::invariant::LocalInvariant::inv
(declare-fun vstd!invariant.LocalInvariant.inv.? (Dcr Type Dcr Type Dcr Type Poly Poly)
 Bool
)

;; Function-Axioms crate::vstd::invariant::InvariantPredicate::inv
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (k! Poly)
   (v! Poly)
  ) (!
   (=>
    (and
     (has_type k! K&)
     (has_type v! V&)
    )
    (has_type (vstd.invariant.InvariantPredicate.inv.? Self%&. Self%& K&. K& V&. V& k!
      v!
     ) BOOL
   ))
   :pattern ((vstd.invariant.InvariantPredicate.inv.? Self%&. Self%& K&. K& V&. V& k!
     v!
   ))
   :qid internal_vstd.invariant.InvariantPredicate.inv.?_pre_post_definition
   :skolemid skolem_internal_vstd.invariant.InvariantPredicate.inv.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::invariant::AtomicInvariant::constant
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.invariant.AtomicInvariant. K&. K& V&. V& Pred&. Pred&))
    (has_type (vstd.invariant.impl&%0.constant.? K&. K& V&. V& Pred&. Pred& self!) K&)
   )
   :pattern ((vstd.invariant.impl&%0.constant.? K&. K& V&. V& Pred&. Pred& self!))
   :qid internal_vstd.invariant.impl&__0.constant.?_pre_post_definition
   :skolemid skolem_internal_vstd.invariant.impl&__0.constant.?_pre_post_definition
)))

;; Function-Specs crate::vstd::invariant::AtomicInvariant::new
(declare-fun req%vstd.invariant.impl&%0.new. (Dcr Type Dcr Type Dcr Type Poly Poly
  Int
 ) Bool
)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (v! Poly) (ns! Int)
  ) (!
   (= (req%vstd.invariant.impl&%0.new. K&. K& V&. V& Pred&. Pred& k! v! ns!) (=>
     %%global_location_label%%0
     (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& k! v!))
   ))
   :pattern ((req%vstd.invariant.impl&%0.new. K&. K& V&. V& Pred&. Pred& k! v! ns!))
   :qid internal_req__vstd.invariant.impl&__0.new._definition
   :skolemid skolem_internal_req__vstd.invariant.impl&__0.new._definition
)))
(declare-fun ens%vstd.invariant.impl&%0.new. (Dcr Type Dcr Type Dcr Type Poly Poly
  Int Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (v! Poly) (ns! Int) (i! Poly)
  ) (!
   (= (ens%vstd.invariant.impl&%0.new. K&. K& V&. V& Pred&. Pred& k! v! ns! i!) (and
     (has_type i! (TYPE%vstd.invariant.AtomicInvariant. K&. K& V&. V& Pred&. Pred&))
     (= (vstd.invariant.impl&%0.constant.? K&. K& V&. V& Pred&. Pred& i!) k!)
     (= (vstd!invariant.AtomicInvariant.namespace.? K&. K& V&. V& Pred&. Pred& i!) ns!)
   ))
   :pattern ((ens%vstd.invariant.impl&%0.new. K&. K& V&. V& Pred&. Pred& k! v! ns! i!))
   :qid internal_ens__vstd.invariant.impl&__0.new._definition
   :skolemid skolem_internal_ens__vstd.invariant.impl&__0.new._definition
)))

;; Function-Axioms vstd::invariant::AtomicInvariant::inv
(assert
 (fuel_bool_default fuel%vstd!invariant.AtomicInvariant.inv.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!invariant.AtomicInvariant.inv.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)
    (v! Poly)
   ) (!
    (= (vstd!invariant.AtomicInvariant.inv.? K&. K& V&. V& Pred&. Pred& self! v!) (%B (
       vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& (vstd.invariant.impl&%0.constant.?
        K&. K& V&. V& Pred&. Pred& self!
       ) v!
    )))
    :pattern ((vstd!invariant.AtomicInvariant.inv.? K&. K& V&. V& Pred&. Pred& self! v!))
    :qid internal_vstd!invariant.AtomicInvariant.inv.?_definition
    :skolemid skolem_internal_vstd!invariant.AtomicInvariant.inv.?_definition
))))

;; Function-Specs crate::vstd::invariant::AtomicInvariant::into_inner
(declare-fun openinv%0%vstd.invariant.impl&%0.into_inner. (Dcr Type Dcr Type Dcr Type
  Poly
 ) Int
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (= (openinv%0%vstd.invariant.impl&%0.into_inner. K&. K& V&. V& Pred&. Pred& self!)
    (vstd!invariant.AtomicInvariant.namespace.? K&. K& V&. V& Pred&. Pred& self!)
   )
   :pattern ((openinv%0%vstd.invariant.impl&%0.into_inner. K&. K& V&. V& Pred&. Pred&
     self!
   ))
   :qid internal_openinv__0__vstd.invariant.impl&__0.into_inner._definition
   :skolemid skolem_internal_openinv__0__vstd.invariant.impl&__0.into_inner._definition
)))
(declare-fun ens%vstd.invariant.impl&%0.into_inner. (Dcr Type Dcr Type Dcr Type Poly
  Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)
   (v! Poly)
  ) (!
   (= (ens%vstd.invariant.impl&%0.into_inner. K&. K& V&. V& Pred&. Pred& self! v!) (and
     (has_type v! V&)
     (vstd!invariant.AtomicInvariant.inv.? K&. K& V&. V& Pred&. Pred& self! v!)
   ))
   :pattern ((ens%vstd.invariant.impl&%0.into_inner. K&. K& V&. V& Pred&. Pred& self!
     v!
   ))
   :qid internal_ens__vstd.invariant.impl&__0.into_inner._definition
   :skolemid skolem_internal_ens__vstd.invariant.impl&__0.into_inner._definition
)))

;; Function-Axioms crate::vstd::invariant::LocalInvariant::constant
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.invariant.LocalInvariant. K&. K& V&. V& Pred&. Pred&))
    (has_type (vstd.invariant.impl&%1.constant.? K&. K& V&. V& Pred&. Pred& self!) K&)
   )
   :pattern ((vstd.invariant.impl&%1.constant.? K&. K& V&. V& Pred&. Pred& self!))
   :qid internal_vstd.invariant.impl&__1.constant.?_pre_post_definition
   :skolemid skolem_internal_vstd.invariant.impl&__1.constant.?_pre_post_definition
)))

;; Function-Specs crate::vstd::invariant::LocalInvariant::new
(declare-fun req%vstd.invariant.impl&%1.new. (Dcr Type Dcr Type Dcr Type Poly Poly
  Int
 ) Bool
)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (v! Poly) (ns! Int)
  ) (!
   (= (req%vstd.invariant.impl&%1.new. K&. K& V&. V& Pred&. Pred& k! v! ns!) (=>
     %%global_location_label%%1
     (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& k! v!))
   ))
   :pattern ((req%vstd.invariant.impl&%1.new. K&. K& V&. V& Pred&. Pred& k! v! ns!))
   :qid internal_req__vstd.invariant.impl&__1.new._definition
   :skolemid skolem_internal_req__vstd.invariant.impl&__1.new._definition
)))
(declare-fun ens%vstd.invariant.impl&%1.new. (Dcr Type Dcr Type Dcr Type Poly Poly
  Int Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (v! Poly) (ns! Int) (i! Poly)
  ) (!
   (= (ens%vstd.invariant.impl&%1.new. K&. K& V&. V& Pred&. Pred& k! v! ns! i!) (and
     (has_type i! (TYPE%vstd.invariant.LocalInvariant. K&. K& V&. V& Pred&. Pred&))
     (= (vstd.invariant.impl&%1.constant.? K&. K& V&. V& Pred&. Pred& i!) k!)
     (= (vstd!invariant.LocalInvariant.namespace.? K&. K& V&. V& Pred&. Pred& i!) ns!)
   ))
   :pattern ((ens%vstd.invariant.impl&%1.new. K&. K& V&. V& Pred&. Pred& k! v! ns! i!))
   :qid internal_ens__vstd.invariant.impl&__1.new._definition
   :skolemid skolem_internal_ens__vstd.invariant.impl&__1.new._definition
)))

;; Function-Axioms vstd::invariant::LocalInvariant::inv
(assert
 (fuel_bool_default fuel%vstd!invariant.LocalInvariant.inv.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!invariant.LocalInvariant.inv.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)
    (v! Poly)
   ) (!
    (= (vstd!invariant.LocalInvariant.inv.? K&. K& V&. V& Pred&. Pred& self! v!) (%B (vstd.invariant.InvariantPredicate.inv.?
       Pred&. Pred& K&. K& V&. V& (vstd.invariant.impl&%1.constant.? K&. K& V&. V& Pred&.
        Pred& self!
       ) v!
    )))
    :pattern ((vstd!invariant.LocalInvariant.inv.? K&. K& V&. V& Pred&. Pred& self! v!))
    :qid internal_vstd!invariant.LocalInvariant.inv.?_definition
    :skolemid skolem_internal_vstd!invariant.LocalInvariant.inv.?_definition
))))

;; Function-Specs crate::vstd::invariant::LocalInvariant::into_inner
(declare-fun openinv%0%vstd.invariant.impl&%1.into_inner. (Dcr Type Dcr Type Dcr Type
  Poly
 ) Int
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (= (openinv%0%vstd.invariant.impl&%1.into_inner. K&. K& V&. V& Pred&. Pred& self!)
    (vstd!invariant.LocalInvariant.namespace.? K&. K& V&. V& Pred&. Pred& self!)
   )
   :pattern ((openinv%0%vstd.invariant.impl&%1.into_inner. K&. K& V&. V& Pred&. Pred&
     self!
   ))
   :qid internal_openinv__0__vstd.invariant.impl&__1.into_inner._definition
   :skolemid skolem_internal_openinv__0__vstd.invariant.impl&__1.into_inner._definition
)))
(declare-fun ens%vstd.invariant.impl&%1.into_inner. (Dcr Type Dcr Type Dcr Type Poly
  Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)
   (v! Poly)
  ) (!
   (= (ens%vstd.invariant.impl&%1.into_inner. K&. K& V&. V& Pred&. Pred& self! v!) (and
     (has_type v! V&)
     (vstd!invariant.LocalInvariant.inv.? K&. K& V&. V& Pred&. Pred& self! v!)
   ))
   :pattern ((ens%vstd.invariant.impl&%1.into_inner. K&. K& V&. V& Pred&. Pred& self!
     v!
   ))
   :qid internal_ens__vstd.invariant.impl&__1.into_inner._definition
   :skolemid skolem_internal_ens__vstd.invariant.impl&__1.into_inner._definition
)))

;; Function-Def vstd::invariant::spend_open_invariant_credit_in_proof
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/invariant.rs:289:1: 289:87 (#0)
(get-info :all-statistics)
(push)
 (declare-const credit! vstd.invariant.OpenInvariantCredit.)
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

;; Function-Def vstd::invariant::spend_open_invariant_credit
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/invariant.rs:295:1: 298:2 (#0)
(get-info :all-statistics)
(push)
 (declare-const credit! vstd.invariant.OpenInvariantCredit.)
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
