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

;; MODULE 'module vstd::arithmetic::power2'

;; Fuel
(declare-const fuel%vstd.arithmetic.power.pow. FuelId)
(declare-const fuel%vstd.arithmetic.power.lemma_pow_positive. FuelId)
(declare-const fuel%vstd.arithmetic.power.lemma_pow_adds. FuelId)
(declare-const fuel%vstd.arithmetic.power.lemma_pow_strictly_increases. FuelId)
(declare-const fuel%vstd.arithmetic.power2.pow2. FuelId)
(declare-const fuel%vstd.arithmetic.power2.lemma_pow2_pos. FuelId)
(declare-const fuel%vstd.arithmetic.power2.lemma_pow2. FuelId)
(declare-const fuel%vstd.arithmetic.power2.lemma_pow2_unfold. FuelId)
(declare-const fuel%vstd.arithmetic.power2.lemma_pow2_adds. FuelId)
(declare-const fuel%vstd.arithmetic.power2.lemma_pow2_strictly_increases. FuelId)
(assert
 (distinct fuel%vstd.arithmetic.power.pow. fuel%vstd.arithmetic.power.lemma_pow_positive.
  fuel%vstd.arithmetic.power.lemma_pow_adds. fuel%vstd.arithmetic.power.lemma_pow_strictly_increases.
  fuel%vstd.arithmetic.power2.pow2. fuel%vstd.arithmetic.power2.lemma_pow2_pos. fuel%vstd.arithmetic.power2.lemma_pow2.
  fuel%vstd.arithmetic.power2.lemma_pow2_unfold. fuel%vstd.arithmetic.power2.lemma_pow2_adds.
  fuel%vstd.arithmetic.power2.lemma_pow2_strictly_increases.
))

;; Datatypes
(declare-datatypes ((tuple%0. 0)) (((tuple%0./tuple%0))))
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

;; Function-Decl crate::vstd::arithmetic::power::pow
(declare-fun vstd.arithmetic.power.pow.? (Poly Poly) Int)
(declare-fun vstd.arithmetic.power.rec%pow.? (Poly Poly Fuel) Int)

;; Function-Decl crate::vstd::arithmetic::power2::pow2
(declare-fun vstd.arithmetic.power2.pow2.? (Poly) Int)

;; Function-Axioms crate::vstd::arithmetic::power::pow
(assert
 (fuel_bool_default fuel%vstd.arithmetic.power.pow.)
)
(declare-const fuel_nat%vstd.arithmetic.power.pow. Fuel)
(assert
 (forall ((b! Poly) (e! Poly) (fuel% Fuel)) (!
   (= (vstd.arithmetic.power.rec%pow.? b! e! fuel%) (vstd.arithmetic.power.rec%pow.? b!
     e! zero
   ))
   :pattern ((vstd.arithmetic.power.rec%pow.? b! e! fuel%))
   :qid internal_vstd.arithmetic.power.pow._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.arithmetic.power.pow._fuel_to_zero_definition
)))
(assert
 (forall ((b! Poly) (e! Poly) (fuel% Fuel)) (!
   (=>
    (and
     (has_type b! INT)
     (has_type e! NAT)
    )
    (= (vstd.arithmetic.power.rec%pow.? b! e! (succ fuel%)) (ite
      (= (%I e!) 0)
      1
      (Mul (%I b!) (vstd.arithmetic.power.rec%pow.? b! (I (nClip (Sub (%I e!) 1))) fuel%))
   )))
   :pattern ((vstd.arithmetic.power.rec%pow.? b! e! (succ fuel%)))
   :qid internal_vstd.arithmetic.power.pow._fuel_to_body_definition
   :skolemid skolem_internal_vstd.arithmetic.power.pow._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power.pow.)
  (forall ((b! Poly) (e! Poly)) (!
    (=>
     (and
      (has_type b! INT)
      (has_type e! NAT)
     )
     (= (vstd.arithmetic.power.pow.? b! e!) (vstd.arithmetic.power.rec%pow.? b! e! (succ
        fuel_nat%vstd.arithmetic.power.pow.
    ))))
    :pattern ((vstd.arithmetic.power.pow.? b! e!))
    :qid internal_vstd.arithmetic.power.pow.?_definition
    :skolemid skolem_internal_vstd.arithmetic.power.pow.?_definition
))))

;; Function-Axioms crate::vstd::arithmetic::power2::pow2
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power2.pow2.)
  (forall ((e! Poly)) (!
    (=>
     (has_type e! NAT)
     (= (vstd.arithmetic.power2.pow2.? e!) (nClip (vstd.arithmetic.power.pow.? (I 2) e!)))
    )
    :pattern ((vstd.arithmetic.power2.pow2.? e!))
    :qid internal_vstd.arithmetic.power2.pow2.?_definition
    :skolemid skolem_internal_vstd.arithmetic.power2.pow2.?_definition
))))
(assert
 (forall ((e! Poly)) (!
   (=>
    (has_type e! NAT)
    (<= 0 (vstd.arithmetic.power2.pow2.? e!))
   )
   :pattern ((vstd.arithmetic.power2.pow2.? e!))
   :qid internal_vstd.arithmetic.power2.pow2.?_pre_post_definition
   :skolemid skolem_internal_vstd.arithmetic.power2.pow2.?_pre_post_definition
)))

;; Function-Specs crate::vstd::arithmetic::power::lemma_pow_positive
(declare-fun req%vstd.arithmetic.power.lemma_pow_positive. (Int Int) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((b! Int) (e! Int)) (!
   (= (req%vstd.arithmetic.power.lemma_pow_positive. b! e!) (=>
     %%global_location_label%%0
     (> b! 0)
   ))
   :pattern ((req%vstd.arithmetic.power.lemma_pow_positive. b! e!))
   :qid internal_req__vstd.arithmetic.power.lemma_pow_positive._definition
   :skolemid skolem_internal_req__vstd.arithmetic.power.lemma_pow_positive._definition
)))
(declare-fun ens%vstd.arithmetic.power.lemma_pow_positive. (Int Int) Bool)
(assert
 (forall ((b! Int) (e! Int)) (!
   (= (ens%vstd.arithmetic.power.lemma_pow_positive. b! e!) (< 0 (vstd.arithmetic.power.pow.?
      (I b!) (I e!)
   )))
   :pattern ((ens%vstd.arithmetic.power.lemma_pow_positive. b! e!))
   :qid internal_ens__vstd.arithmetic.power.lemma_pow_positive._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power.lemma_pow_positive._definition
)))

;; Broadcast crate::vstd::arithmetic::power::lemma_pow_positive
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power.lemma_pow_positive.)
  (forall ((b! Poly) (e! Poly)) (!
    (=>
     (and
      (has_type b! INT)
      (has_type e! NAT)
     )
     (=>
      (> (%I b!) 0)
      (< 0 (vstd.arithmetic.power.pow.? b! e!))
    ))
    :pattern ((vstd.arithmetic.power.pow.? b! e!))
    :qid user_crate__vstd__arithmetic__power__lemma_pow_positive_0
    :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_positive_0
))))

;; Function-Specs crate::vstd::arithmetic::power::lemma_pow_adds
(declare-fun ens%vstd.arithmetic.power.lemma_pow_adds. (Int Int Int) Bool)
(assert
 (forall ((b! Int) (e1! Int) (e2! Int)) (!
   (= (ens%vstd.arithmetic.power.lemma_pow_adds. b! e1! e2!) (= (vstd.arithmetic.power.pow.?
      (I b!) (I (nClip (Add e1! e2!)))
     ) (Mul (vstd.arithmetic.power.pow.? (I b!) (I e1!)) (vstd.arithmetic.power.pow.? (I
        b!
       ) (I e2!)
   ))))
   :pattern ((ens%vstd.arithmetic.power.lemma_pow_adds. b! e1! e2!))
   :qid internal_ens__vstd.arithmetic.power.lemma_pow_adds._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power.lemma_pow_adds._definition
)))

;; Broadcast crate::vstd::arithmetic::power::lemma_pow_adds
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power.lemma_pow_adds.)
  (forall ((b! Poly) (e1! Int) (e2! Int)) (!
    (=>
     (and
      (has_type b! INT)
      (<= 0 e1!)
      (<= 0 e2!)
     )
     (= (vstd.arithmetic.power.pow.? b! (I (nClip (Add e1! e2!)))) (Mul (vstd.arithmetic.power.pow.?
        b! (I e1!)
       ) (vstd.arithmetic.power.pow.? b! (I e2!))
    )))
    :pattern ((vstd.arithmetic.power.pow.? b! (I (nClip (Add e1! e2!)))))
    :qid user_crate__vstd__arithmetic__power__lemma_pow_adds_1
    :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_adds_1
))))

;; Function-Specs crate::vstd::arithmetic::power::lemma_pow_strictly_increases
(declare-fun req%vstd.arithmetic.power.lemma_pow_strictly_increases. (Int Int Int)
 Bool
)
(declare-const %%global_location_label%%1 Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((b! Int) (e1! Int) (e2! Int)) (!
   (= (req%vstd.arithmetic.power.lemma_pow_strictly_increases. b! e1! e2!) (and
     (=>
      %%global_location_label%%1
      (< 1 b!)
     )
     (=>
      %%global_location_label%%2
      (< e1! e2!)
   )))
   :pattern ((req%vstd.arithmetic.power.lemma_pow_strictly_increases. b! e1! e2!))
   :qid internal_req__vstd.arithmetic.power.lemma_pow_strictly_increases._definition
   :skolemid skolem_internal_req__vstd.arithmetic.power.lemma_pow_strictly_increases._definition
)))
(declare-fun ens%vstd.arithmetic.power.lemma_pow_strictly_increases. (Int Int Int)
 Bool
)
(assert
 (forall ((b! Int) (e1! Int) (e2! Int)) (!
   (= (ens%vstd.arithmetic.power.lemma_pow_strictly_increases. b! e1! e2!) (< (vstd.arithmetic.power.pow.?
      (I b!) (I e1!)
     ) (vstd.arithmetic.power.pow.? (I b!) (I e2!))
   ))
   :pattern ((ens%vstd.arithmetic.power.lemma_pow_strictly_increases. b! e1! e2!))
   :qid internal_ens__vstd.arithmetic.power.lemma_pow_strictly_increases._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power.lemma_pow_strictly_increases._definition
)))

;; Broadcast crate::vstd::arithmetic::power::lemma_pow_strictly_increases
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power.lemma_pow_strictly_increases.)
  (forall ((b! Poly) (e1! Poly) (e2! Poly)) (!
    (=>
     (and
      (has_type b! NAT)
      (has_type e1! NAT)
      (has_type e2! NAT)
     )
     (=>
      (and
       (< 1 (%I b!))
       (< (%I e1!) (%I e2!))
      )
      (< (vstd.arithmetic.power.pow.? b! e1!) (vstd.arithmetic.power.pow.? b! e2!))
    ))
    :pattern ((vstd.arithmetic.power.pow.? b! e1!) (vstd.arithmetic.power.pow.? b! e2!))
    :qid user_crate__vstd__arithmetic__power__lemma_pow_strictly_increases_2
    :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_strictly_increases_2
))))

;; Function-Def crate::vstd::arithmetic::power2::lemma_pow2_pos
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power2.rs:41:1: 41:46 (#0)
(get-info :all-statistics)
(push)
 (declare-const e! Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 e!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.power2.pow2.)
    (and
     (=>
      %%location_label%%0
      (req%vstd.arithmetic.power.lemma_pow_positive. 2 e!)
     )
     (=>
      (ens%vstd.arithmetic.power.lemma_pow_positive. 2 e!)
      (=>
       %%location_label%%1
       (> (vstd.arithmetic.power2.pow2.? (I e!)) 0)
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::power2::lemma_pow2_pos
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power2.lemma_pow2_pos.)
  (forall ((e! Poly)) (!
    (=>
     (has_type e! NAT)
     (> (vstd.arithmetic.power2.pow2.? e!) 0)
    )
    :pattern ((vstd.arithmetic.power2.pow2.? e!))
    :qid user_crate__vstd__arithmetic__power2__lemma_pow2_pos_3
    :skolemid skolem_user_crate__vstd__arithmetic__power2__lemma_pow2_pos_3
))))

;; Function-Specs crate::vstd::arithmetic::power2::lemma_pow2
(declare-fun ens%vstd.arithmetic.power2.lemma_pow2. (Int) Bool)
(assert
 (forall ((e! Int)) (!
   (= (ens%vstd.arithmetic.power2.lemma_pow2. e!) (= (vstd.arithmetic.power2.pow2.? (I e!))
     (vstd.arithmetic.power.pow.? (I 2) (I e!))
   ))
   :pattern ((ens%vstd.arithmetic.power2.lemma_pow2. e!))
   :qid internal_ens__vstd.arithmetic.power2.lemma_pow2._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power2.lemma_pow2._definition
)))

;; Function-Def crate::vstd::arithmetic::power2::lemma_pow2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power2.rs:50:1: 50:42 (#0)
(get-info :all-statistics)
(push)
 (declare-const e! Int)
 (declare-const tmp%1 Int)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 e!)
 )
 (declare-const %%switch_label%%0 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= decrease%init0 e!)
    (=>
     (fuel_bool fuel%vstd.arithmetic.power.pow.)
     (=>
      (fuel_bool fuel%vstd.arithmetic.power2.pow2.)
      (or
       (and
        (=>
         (not (= e! 0))
         (=>
          (= tmp%1 (nClip (Sub e! 1)))
          (and
           (=>
            %%location_label%%0
            (check_decrease_int (let
              ((e!$0 tmp%1))
              e!$0
             ) decrease%init0 false
           ))
           (=>
            (ens%vstd.arithmetic.power2.lemma_pow2. tmp%1)
            %%switch_label%%0
        ))))
        (=>
         (not (not (= e! 0)))
         %%switch_label%%0
       ))
       (and
        (not %%switch_label%%0)
        (=>
         %%location_label%%1
         (= (vstd.arithmetic.power2.pow2.? (I e!)) (vstd.arithmetic.power.pow.? (I 2) (I e!)))
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::power2::lemma_pow2
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power2.lemma_pow2.)
  (forall ((e! Poly)) (!
    (=>
     (has_type e! NAT)
     (= (vstd.arithmetic.power2.pow2.? e!) (vstd.arithmetic.power.pow.? (I 2) e!))
    )
    :pattern ((vstd.arithmetic.power2.pow2.? e!))
    :qid user_crate__vstd__arithmetic__power2__lemma_pow2_4
    :skolemid skolem_user_crate__vstd__arithmetic__power2__lemma_pow2_4
))))

;; Function-Def crate::vstd::arithmetic::power2::lemma_pow2_unfold
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power2.rs:63:1: 63:49 (#0)
(get-info :all-statistics)
(push)
 (declare-const e! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 e!)
 )
 (assert
  (> e! 0)
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (ens%vstd.arithmetic.power2.lemma_pow2. e!)
    (=>
     (= tmp%1 (nClip (Sub e! 1)))
     (=>
      (ens%vstd.arithmetic.power2.lemma_pow2. tmp%1)
      (=>
       %%location_label%%0
       (= (vstd.arithmetic.power2.pow2.? (I e!)) (nClip (Mul 2 (vstd.arithmetic.power2.pow2.?
           (I (nClip (Sub e! 1)))
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::power2::lemma_pow2_unfold
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power2.lemma_pow2_unfold.)
  (forall ((e! Poly)) (!
    (=>
     (has_type e! NAT)
     (=>
      (> (%I e!) 0)
      (= (vstd.arithmetic.power2.pow2.? e!) (nClip (Mul 2 (vstd.arithmetic.power2.pow2.? (I
           (nClip (Sub (%I e!) 1))
    )))))))
    :pattern ((vstd.arithmetic.power2.pow2.? e!))
    :qid user_crate__vstd__arithmetic__power2__lemma_pow2_unfold_5
    :skolemid skolem_user_crate__vstd__arithmetic__power2__lemma_pow2_unfold_5
))))

;; Function-Def crate::vstd::arithmetic::power2::lemma_pow2_adds
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power2.rs:74:1: 74:57 (#0)
(get-info :all-statistics)
(push)
 (declare-const e1! Int)
 (declare-const e2! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 e1!)
 )
 (assert
  (<= 0 e2!)
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (ens%vstd.arithmetic.power2.lemma_pow2. e1!)
    (=>
     (ens%vstd.arithmetic.power2.lemma_pow2. e2!)
     (=>
      (= tmp%1 (nClip (Add e1! e2!)))
      (=>
       (ens%vstd.arithmetic.power2.lemma_pow2. tmp%1)
       (=>
        (ens%vstd.arithmetic.power.lemma_pow_adds. 2 e1! e2!)
        (=>
         %%location_label%%0
         (= (vstd.arithmetic.power2.pow2.? (I (nClip (Add e1! e2!)))) (nClip (Mul (vstd.arithmetic.power2.pow2.?
             (I e1!)
            ) (vstd.arithmetic.power2.pow2.? (I e2!))
 )))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::power2::lemma_pow2_adds
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power2.lemma_pow2_adds.)
  (forall ((e1! Int) (e2! Int)) (!
    (=>
     (and
      (<= 0 e1!)
      (<= 0 e2!)
     )
     (= (vstd.arithmetic.power2.pow2.? (I (nClip (Add e1! e2!)))) (nClip (Mul (vstd.arithmetic.power2.pow2.?
         (I e1!)
        ) (vstd.arithmetic.power2.pow2.? (I e2!))
    ))))
    :pattern ((vstd.arithmetic.power2.pow2.? (I (nClip (Add e1! e2!)))))
    :qid user_crate__vstd__arithmetic__power2__lemma_pow2_adds_6
    :skolemid skolem_user_crate__vstd__arithmetic__power2__lemma_pow2_adds_6
))))

;; Function-Def crate::vstd::arithmetic::power2::lemma_pow2_strictly_increases
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power2.rs:85:1: 85:71 (#0)
(get-info :all-statistics)
(push)
 (declare-const e1! Int)
 (declare-const e2! Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 e1!)
 )
 (assert
  (<= 0 e2!)
 )
 (assert
  (< e1! e2!)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (ens%vstd.arithmetic.power2.lemma_pow2. e1!)
    (=>
     (ens%vstd.arithmetic.power2.lemma_pow2. e2!)
     (and
      (=>
       %%location_label%%0
       (req%vstd.arithmetic.power.lemma_pow_strictly_increases. 2 e1! e2!)
      )
      (=>
       (ens%vstd.arithmetic.power.lemma_pow_strictly_increases. 2 e1! e2!)
       (=>
        %%location_label%%1
        (< (vstd.arithmetic.power2.pow2.? (I e1!)) (vstd.arithmetic.power2.pow2.? (I e2!)))
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::power2::lemma_pow2_strictly_increases
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.power2.lemma_pow2_strictly_increases.)
  (forall ((e1! Poly) (e2! Poly)) (!
    (=>
     (and
      (has_type e1! NAT)
      (has_type e2! NAT)
     )
     (=>
      (< (%I e1!) (%I e2!))
      (< (vstd.arithmetic.power2.pow2.? e1!) (vstd.arithmetic.power2.pow2.? e2!))
    ))
    :pattern ((vstd.arithmetic.power2.pow2.? e1!) (vstd.arithmetic.power2.pow2.? e2!))
    :qid user_crate__vstd__arithmetic__power2__lemma_pow2_strictly_increases_7
    :skolemid skolem_user_crate__vstd__arithmetic__power2__lemma_pow2_strictly_increases_7
))))

;; Function-Specs crate::vstd::arithmetic::power2::lemma2_to64
(declare-fun ens%vstd.arithmetic.power2.lemma2_to64. (Int) Bool)
(assert
 (forall ((no%param Int)) (!
   (= (ens%vstd.arithmetic.power2.lemma2_to64. no%param) (and
     (= (vstd.arithmetic.power2.pow2.? (I 0)) 1)
     (= (vstd.arithmetic.power2.pow2.? (I 1)) 2)
     (= (vstd.arithmetic.power2.pow2.? (I 2)) 4)
     (= (vstd.arithmetic.power2.pow2.? (I 3)) 8)
     (= (vstd.arithmetic.power2.pow2.? (I 4)) 16)
     (= (vstd.arithmetic.power2.pow2.? (I 5)) 32)
     (= (vstd.arithmetic.power2.pow2.? (I 6)) 64)
     (= (vstd.arithmetic.power2.pow2.? (I 7)) 128)
     (= (vstd.arithmetic.power2.pow2.? (I 8)) 256)
     (= (vstd.arithmetic.power2.pow2.? (I 9)) 512)
     (= (vstd.arithmetic.power2.pow2.? (I 10)) 1024)
     (= (vstd.arithmetic.power2.pow2.? (I 11)) 2048)
     (= (vstd.arithmetic.power2.pow2.? (I 12)) 4096)
     (= (vstd.arithmetic.power2.pow2.? (I 13)) 8192)
     (= (vstd.arithmetic.power2.pow2.? (I 14)) 16384)
     (= (vstd.arithmetic.power2.pow2.? (I 15)) 32768)
     (= (vstd.arithmetic.power2.pow2.? (I 16)) 65536)
     (= (vstd.arithmetic.power2.pow2.? (I 17)) 131072)
     (= (vstd.arithmetic.power2.pow2.? (I 18)) 262144)
     (= (vstd.arithmetic.power2.pow2.? (I 19)) 524288)
     (= (vstd.arithmetic.power2.pow2.? (I 20)) 1048576)
     (= (vstd.arithmetic.power2.pow2.? (I 21)) 2097152)
     (= (vstd.arithmetic.power2.pow2.? (I 22)) 4194304)
     (= (vstd.arithmetic.power2.pow2.? (I 23)) 8388608)
     (= (vstd.arithmetic.power2.pow2.? (I 24)) 16777216)
     (= (vstd.arithmetic.power2.pow2.? (I 25)) 33554432)
     (= (vstd.arithmetic.power2.pow2.? (I 26)) 67108864)
     (= (vstd.arithmetic.power2.pow2.? (I 27)) 134217728)
     (= (vstd.arithmetic.power2.pow2.? (I 28)) 268435456)
     (= (vstd.arithmetic.power2.pow2.? (I 29)) 536870912)
     (= (vstd.arithmetic.power2.pow2.? (I 30)) 1073741824)
     (= (vstd.arithmetic.power2.pow2.? (I 31)) 2147483648)
     (= (vstd.arithmetic.power2.pow2.? (I 32)) 4294967296)
     (= (vstd.arithmetic.power2.pow2.? (I 64)) 18446744073709551616)
   ))
   :pattern ((ens%vstd.arithmetic.power2.lemma2_to64. no%param))
   :qid internal_ens__vstd.arithmetic.power2.lemma2_to64._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.power2.lemma2_to64._definition
)))

;; Function-Def crate::vstd::arithmetic::power2::lemma2_to64
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/power2.rs:97:1: 97:27 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (assert
  fuel_defaults
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%5 Bool)
 ;; postcondition not satisfied
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
 ;; postcondition not satisfied
 (declare-const %%location_label%%25 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%26 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%27 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%28 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%29 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%30 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%31 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%32 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%33 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.power2.pow2.)
    (=>
     (fuel_bool fuel%vstd.arithmetic.power.pow.)
     (=>
      (and
       (and
        (and
         (and
          (and
           (and
            (and
             (and
              (and
               (and
                (and
                 (and
                  (and
                   (and
                    (and
                     (and
                      (and
                       (and
                        (and
                         (and
                          (and
                           (and
                            (and
                             (and
                              (and
                               (and
                                (and
                                 (and
                                  (and
                                   (and
                                    (and
                                     (and
                                      (and
                                       (= (vstd.arithmetic.power2.pow2.? (I 0)) 1)
                                       (= (vstd.arithmetic.power2.pow2.? (I 1)) 2)
                                      )
                                      (= (vstd.arithmetic.power2.pow2.? (I 2)) 4)
                                     )
                                     (= (vstd.arithmetic.power2.pow2.? (I 3)) 8)
                                    )
                                    (= (vstd.arithmetic.power2.pow2.? (I 4)) 16)
                                   )
                                   (= (vstd.arithmetic.power2.pow2.? (I 5)) 32)
                                  )
                                  (= (vstd.arithmetic.power2.pow2.? (I 6)) 64)
                                 )
                                 (= (vstd.arithmetic.power2.pow2.? (I 7)) 128)
                                )
                                (= (vstd.arithmetic.power2.pow2.? (I 8)) 256)
                               )
                               (= (vstd.arithmetic.power2.pow2.? (I 9)) 512)
                              )
                              (= (vstd.arithmetic.power2.pow2.? (I 10)) 1024)
                             )
                             (= (vstd.arithmetic.power2.pow2.? (I 11)) 2048)
                            )
                            (= (vstd.arithmetic.power2.pow2.? (I 12)) 4096)
                           )
                           (= (vstd.arithmetic.power2.pow2.? (I 13)) 8192)
                          )
                          (= (vstd.arithmetic.power2.pow2.? (I 14)) 16384)
                         )
                         (= (vstd.arithmetic.power2.pow2.? (I 15)) 32768)
                        )
                        (= (vstd.arithmetic.power2.pow2.? (I 16)) 65536)
                       )
                       (= (vstd.arithmetic.power2.pow2.? (I 17)) 131072)
                      )
                      (= (vstd.arithmetic.power2.pow2.? (I 18)) 262144)
                     )
                     (= (vstd.arithmetic.power2.pow2.? (I 19)) 524288)
                    )
                    (= (vstd.arithmetic.power2.pow2.? (I 20)) 1048576)
                   )
                   (= (vstd.arithmetic.power2.pow2.? (I 21)) 2097152)
                  )
                  (= (vstd.arithmetic.power2.pow2.? (I 22)) 4194304)
                 )
                 (= (vstd.arithmetic.power2.pow2.? (I 23)) 8388608)
                )
                (= (vstd.arithmetic.power2.pow2.? (I 24)) 16777216)
               )
               (= (vstd.arithmetic.power2.pow2.? (I 25)) 33554432)
              )
              (= (vstd.arithmetic.power2.pow2.? (I 26)) 67108864)
             )
             (= (vstd.arithmetic.power2.pow2.? (I 27)) 134217728)
            )
            (= (vstd.arithmetic.power2.pow2.? (I 28)) 268435456)
           )
           (= (vstd.arithmetic.power2.pow2.? (I 29)) 536870912)
          )
          (= (vstd.arithmetic.power2.pow2.? (I 30)) 1073741824)
         )
         (= (vstd.arithmetic.power2.pow2.? (I 31)) 2147483648)
        )
        (= (vstd.arithmetic.power2.pow2.? (I 32)) 4294967296)
       )
       (= (vstd.arithmetic.power2.pow2.? (I 64)) 18446744073709551616)
      )
      (and
       (=>
        %%location_label%%0
        (= (vstd.arithmetic.power2.pow2.? (I 0)) 1)
       )
       (and
        (=>
         %%location_label%%1
         (= (vstd.arithmetic.power2.pow2.? (I 1)) 2)
        )
        (and
         (=>
          %%location_label%%2
          (= (vstd.arithmetic.power2.pow2.? (I 2)) 4)
         )
         (and
          (=>
           %%location_label%%3
           (= (vstd.arithmetic.power2.pow2.? (I 3)) 8)
          )
          (and
           (=>
            %%location_label%%4
            (= (vstd.arithmetic.power2.pow2.? (I 4)) 16)
           )
           (and
            (=>
             %%location_label%%5
             (= (vstd.arithmetic.power2.pow2.? (I 5)) 32)
            )
            (and
             (=>
              %%location_label%%6
              (= (vstd.arithmetic.power2.pow2.? (I 6)) 64)
             )
             (and
              (=>
               %%location_label%%7
               (= (vstd.arithmetic.power2.pow2.? (I 7)) 128)
              )
              (and
               (=>
                %%location_label%%8
                (= (vstd.arithmetic.power2.pow2.? (I 8)) 256)
               )
               (and
                (=>
                 %%location_label%%9
                 (= (vstd.arithmetic.power2.pow2.? (I 9)) 512)
                )
                (and
                 (=>
                  %%location_label%%10
                  (= (vstd.arithmetic.power2.pow2.? (I 10)) 1024)
                 )
                 (and
                  (=>
                   %%location_label%%11
                   (= (vstd.arithmetic.power2.pow2.? (I 11)) 2048)
                  )
                  (and
                   (=>
                    %%location_label%%12
                    (= (vstd.arithmetic.power2.pow2.? (I 12)) 4096)
                   )
                   (and
                    (=>
                     %%location_label%%13
                     (= (vstd.arithmetic.power2.pow2.? (I 13)) 8192)
                    )
                    (and
                     (=>
                      %%location_label%%14
                      (= (vstd.arithmetic.power2.pow2.? (I 14)) 16384)
                     )
                     (and
                      (=>
                       %%location_label%%15
                       (= (vstd.arithmetic.power2.pow2.? (I 15)) 32768)
                      )
                      (and
                       (=>
                        %%location_label%%16
                        (= (vstd.arithmetic.power2.pow2.? (I 16)) 65536)
                       )
                       (and
                        (=>
                         %%location_label%%17
                         (= (vstd.arithmetic.power2.pow2.? (I 17)) 131072)
                        )
                        (and
                         (=>
                          %%location_label%%18
                          (= (vstd.arithmetic.power2.pow2.? (I 18)) 262144)
                         )
                         (and
                          (=>
                           %%location_label%%19
                           (= (vstd.arithmetic.power2.pow2.? (I 19)) 524288)
                          )
                          (and
                           (=>
                            %%location_label%%20
                            (= (vstd.arithmetic.power2.pow2.? (I 20)) 1048576)
                           )
                           (and
                            (=>
                             %%location_label%%21
                             (= (vstd.arithmetic.power2.pow2.? (I 21)) 2097152)
                            )
                            (and
                             (=>
                              %%location_label%%22
                              (= (vstd.arithmetic.power2.pow2.? (I 22)) 4194304)
                             )
                             (and
                              (=>
                               %%location_label%%23
                               (= (vstd.arithmetic.power2.pow2.? (I 23)) 8388608)
                              )
                              (and
                               (=>
                                %%location_label%%24
                                (= (vstd.arithmetic.power2.pow2.? (I 24)) 16777216)
                               )
                               (and
                                (=>
                                 %%location_label%%25
                                 (= (vstd.arithmetic.power2.pow2.? (I 25)) 33554432)
                                )
                                (and
                                 (=>
                                  %%location_label%%26
                                  (= (vstd.arithmetic.power2.pow2.? (I 26)) 67108864)
                                 )
                                 (and
                                  (=>
                                   %%location_label%%27
                                   (= (vstd.arithmetic.power2.pow2.? (I 27)) 134217728)
                                  )
                                  (and
                                   (=>
                                    %%location_label%%28
                                    (= (vstd.arithmetic.power2.pow2.? (I 28)) 268435456)
                                   )
                                   (and
                                    (=>
                                     %%location_label%%29
                                     (= (vstd.arithmetic.power2.pow2.? (I 29)) 536870912)
                                    )
                                    (and
                                     (=>
                                      %%location_label%%30
                                      (= (vstd.arithmetic.power2.pow2.? (I 30)) 1073741824)
                                     )
                                     (and
                                      (=>
                                       %%location_label%%31
                                       (= (vstd.arithmetic.power2.pow2.? (I 31)) 2147483648)
                                      )
                                      (and
                                       (=>
                                        %%location_label%%32
                                        (= (vstd.arithmetic.power2.pow2.? (I 32)) 4294967296)
                                       )
                                       (=>
                                        %%location_label%%33
                                        (= (vstd.arithmetic.power2.pow2.? (I 64)) 18446744073709551616)
 )))))))))))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
