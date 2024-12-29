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

;; MODULE 'module vstd::arithmetic::logarithm'

;; Fuel
(declare-const fuel%vstd.arithmetic.div_mod.lemma_div_pos_is_pos. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_div_is_ordered. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_div_decreases. FuelId)
(declare-const fuel%vstd.arithmetic.div_mod.lemma_div_multiples_vanish. FuelId)
(declare-const fuel%vstd.arithmetic.logarithm.log. FuelId)
(declare-const fuel%vstd.arithmetic.logarithm.lemma_log_s. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_is_commutative. FuelId)
(declare-const fuel%vstd.arithmetic.mul.lemma_mul_increases. FuelId)
(declare-const fuel%vstd.arithmetic.power.pow. FuelId)
(declare-const fuel%vstd.arithmetic.power.lemma_pow_positive. FuelId)
(declare-const fuel%vstd.math.div. FuelId)
(assert
 (distinct fuel%vstd.arithmetic.div_mod.lemma_div_pos_is_pos. fuel%vstd.arithmetic.div_mod.lemma_div_is_ordered.
  fuel%vstd.arithmetic.div_mod.lemma_div_decreases. fuel%vstd.arithmetic.div_mod.lemma_div_multiples_vanish.
  fuel%vstd.arithmetic.logarithm.log. fuel%vstd.arithmetic.logarithm.lemma_log_s. fuel%vstd.arithmetic.mul.lemma_mul_is_commutative.
  fuel%vstd.arithmetic.mul.lemma_mul_increases. fuel%vstd.arithmetic.power.pow. fuel%vstd.arithmetic.power.lemma_pow_positive.
  fuel%vstd.math.div.
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

;; Function-Decl crate::vstd::arithmetic::logarithm::log
(declare-fun vstd.arithmetic.logarithm.log.? (Poly Poly) Int)
(declare-fun vstd.arithmetic.logarithm.rec%log.? (Poly Poly Fuel) Int)

;; Function-Decl crate::vstd::arithmetic::power::pow
(declare-fun vstd.arithmetic.power.pow.? (Poly Poly) Int)
(declare-fun vstd.arithmetic.power.rec%pow.? (Poly Poly Fuel) Int)

;; Function-Decl crate::vstd::math::div
(declare-fun vstd.math.div.? (Poly Poly) Int)

;; Function-Specs crate::vstd::arithmetic::logarithm::log
(declare-fun req%vstd.arithmetic.logarithm.log. (Poly Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((base! Poly) (pow! Poly)) (!
   (= (req%vstd.arithmetic.logarithm.log. base! pow!) (and
     (=>
      %%global_location_label%%0
      (> (%I base!) 1)
     )
     (=>
      %%global_location_label%%1
      (>= (%I pow!) 0)
   )))
   :pattern ((req%vstd.arithmetic.logarithm.log. base! pow!))
   :qid internal_req__vstd.arithmetic.logarithm.log._definition
   :skolemid skolem_internal_req__vstd.arithmetic.logarithm.log._definition
)))

;; Spec-Termination crate::vstd::arithmetic::logarithm::log
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/logarithm.rs:38:1: 38:49 (#0)
(get-info :all-statistics)
(push)
 (declare-const base! Poly)
 (declare-const pow! Poly)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Poly)
 (declare-const tmp%3 Int)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type base! INT)
 )
 (assert
  (has_type pow! INT)
 )
 (declare-const %%switch_label%%0 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= decrease%init0 (%I pow!))
    (or
     (and
      (=>
       (or
        (or
         (< (%I pow!) (%I base!))
         (>= (EucDiv (%I pow!) (%I base!)) (%I pow!))
        )
        (< (EucDiv (%I pow!) (%I base!)) 0)
       )
       (=>
        (= tmp%3 0)
        %%switch_label%%0
      ))
      (=>
       (not (or
         (or
          (< (%I pow!) (%I base!))
          (>= (EucDiv (%I pow!) (%I base!)) (%I pow!))
         )
         (< (EucDiv (%I pow!) (%I base!)) 0)
       ))
       (=>
        (= tmp%2 (I (EucDiv (%I pow!) (%I base!))))
        (and
         (=>
          %%location_label%%0
          (check_decrease_int (let
            ((base!$0 (%I base!)) (pow!$1 (%I tmp%2)))
            pow!$1
           ) decrease%init0 false
         ))
         (=>
          (= tmp%1 (vstd.arithmetic.logarithm.log.? base! (I (EucDiv (%I pow!) (%I base!)))))
          (=>
           (= tmp%3 (Add 1 tmp%1))
           %%switch_label%%0
     ))))))
     (not %%switch_label%%0)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Axioms crate::vstd::arithmetic::logarithm::log
(declare-const fuel_nat%vstd.arithmetic.logarithm.log. Fuel)
(assert
 (forall ((base! Poly) (pow! Poly) (fuel% Fuel)) (!
   (= (vstd.arithmetic.logarithm.rec%log.? base! pow! fuel%) (vstd.arithmetic.logarithm.rec%log.?
     base! pow! zero
   ))
   :pattern ((vstd.arithmetic.logarithm.rec%log.? base! pow! fuel%))
   :qid internal_vstd.arithmetic.logarithm.log._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.arithmetic.logarithm.log._fuel_to_zero_definition
)))
(assert
 (forall ((base! Poly) (pow! Poly) (fuel% Fuel)) (!
   (=>
    (and
     (has_type base! INT)
     (has_type pow! INT)
    )
    (= (vstd.arithmetic.logarithm.rec%log.? base! pow! (succ fuel%)) (ite
      (or
       (or
        (< (%I pow!) (%I base!))
        (>= (EucDiv (%I pow!) (%I base!)) (%I pow!))
       )
       (< (EucDiv (%I pow!) (%I base!)) 0)
      )
      0
      (Add 1 (vstd.arithmetic.logarithm.rec%log.? base! (I (EucDiv (%I pow!) (%I base!)))
        fuel%
   )))))
   :pattern ((vstd.arithmetic.logarithm.rec%log.? base! pow! (succ fuel%)))
   :qid internal_vstd.arithmetic.logarithm.log._fuel_to_body_definition
   :skolemid skolem_internal_vstd.arithmetic.logarithm.log._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.logarithm.log.)
  (forall ((base! Poly) (pow! Poly)) (!
    (=>
     (and
      (has_type base! INT)
      (has_type pow! INT)
     )
     (= (vstd.arithmetic.logarithm.log.? base! pow!) (vstd.arithmetic.logarithm.rec%log.?
       base! pow! (succ fuel_nat%vstd.arithmetic.logarithm.log.)
    )))
    :pattern ((vstd.arithmetic.logarithm.log.? base! pow!))
    :qid internal_vstd.arithmetic.logarithm.log.?_definition
    :skolemid skolem_internal_vstd.arithmetic.logarithm.log.?_definition
))))

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

;; Function-Axioms crate::vstd::math::div
(assert
 (fuel_bool_default fuel%vstd.math.div.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.math.div.)
  (forall ((x! Poly) (y! Poly)) (!
    (= (vstd.math.div.? x! y!) (EucDiv (%I x!) (%I y!)))
    :pattern ((vstd.math.div.? x! y!))
    :qid internal_vstd.math.div.?_definition
    :skolemid skolem_internal_vstd.math.div.?_definition
))))

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
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_is_commutative_0
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_is_commutative_0
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_div_pos_is_pos
(declare-fun req%vstd.arithmetic.div_mod.lemma_div_pos_is_pos. (Int Int) Bool)
(declare-const %%global_location_label%%2 Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((x! Int) (d! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_div_pos_is_pos. x! d!) (and
     (=>
      %%global_location_label%%2
      (<= 0 x!)
     )
     (=>
      %%global_location_label%%3
      (< 0 d!)
   )))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_div_pos_is_pos. x! d!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_div_pos_is_pos._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_div_pos_is_pos._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_div_pos_is_pos. (Int Int) Bool)
(assert
 (forall ((x! Int) (d! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_div_pos_is_pos. x! d!) (<= 0 (EucDiv x! d!)))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_div_pos_is_pos. x! d!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_div_pos_is_pos._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_div_pos_is_pos._definition
)))

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_div_pos_is_pos
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_pos_is_pos.)
  (forall ((x! Int) (d! Int)) (!
    (=>
     (and
      (<= 0 x!)
      (< 0 d!)
     )
     (<= 0 (EucDiv x! d!))
    )
    :pattern ((EucDiv x! d!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_div_pos_is_pos_1
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_pos_is_pos_1
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_div_is_ordered
(declare-fun req%vstd.arithmetic.div_mod.lemma_div_is_ordered. (Int Int Int) Bool)
(declare-const %%global_location_label%%4 Bool)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_div_is_ordered. x! y! z!) (and
     (=>
      %%global_location_label%%4
      (<= x! y!)
     )
     (=>
      %%global_location_label%%5
      (< 0 z!)
   )))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_div_is_ordered. x! y! z!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_div_is_ordered._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_div_is_ordered._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_div_is_ordered. (Int Int Int) Bool)
(assert
 (forall ((x! Int) (y! Int) (z! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_div_is_ordered. x! y! z!) (<= (EucDiv x! z!)
     (EucDiv y! z!)
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_div_is_ordered. x! y! z!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_div_is_ordered._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_div_is_ordered._definition
)))

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_div_is_ordered
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_is_ordered.)
  (forall ((x! Int) (y! Int) (z! Int)) (!
    (=>
     (and
      (<= x! y!)
      (< 0 z!)
     )
     (<= (EucDiv x! z!) (EucDiv y! z!))
    )
    :pattern ((EucDiv x! z!) (EucDiv y! z!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_div_is_ordered_2
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_is_ordered_2
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_div_decreases
(declare-fun req%vstd.arithmetic.div_mod.lemma_div_decreases. (Int Int) Bool)
(declare-const %%global_location_label%%6 Bool)
(declare-const %%global_location_label%%7 Bool)
(assert
 (forall ((x! Int) (d! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_div_decreases. x! d!) (and
     (=>
      %%global_location_label%%6
      (< 0 x!)
     )
     (=>
      %%global_location_label%%7
      (< 1 d!)
   )))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_div_decreases. x! d!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_div_decreases._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_div_decreases._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_div_decreases. (Int Int) Bool)
(assert
 (forall ((x! Int) (d! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_div_decreases. x! d!) (< (EucDiv x! d!) x!))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_div_decreases. x! d!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_div_decreases._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_div_decreases._definition
)))

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_div_decreases
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_decreases.)
  (forall ((x! Int) (d! Int)) (!
    (=>
     (and
      (< 0 x!)
      (< 1 d!)
     )
     (< (EucDiv x! d!) x!)
    )
    :pattern ((EucDiv x! d!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_div_decreases_3
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_decreases_3
))))

;; Function-Specs crate::vstd::arithmetic::mul::lemma_mul_increases
(declare-fun req%vstd.arithmetic.mul.lemma_mul_increases. (Int Int) Bool)
(declare-const %%global_location_label%%8 Bool)
(declare-const %%global_location_label%%9 Bool)
(assert
 (forall ((x! Int) (y! Int)) (!
   (= (req%vstd.arithmetic.mul.lemma_mul_increases. x! y!) (and
     (=>
      %%global_location_label%%8
      (< 0 x!)
     )
     (=>
      %%global_location_label%%9
      (< 0 y!)
   )))
   :pattern ((req%vstd.arithmetic.mul.lemma_mul_increases. x! y!))
   :qid internal_req__vstd.arithmetic.mul.lemma_mul_increases._definition
   :skolemid skolem_internal_req__vstd.arithmetic.mul.lemma_mul_increases._definition
)))
(declare-fun ens%vstd.arithmetic.mul.lemma_mul_increases. (Int Int) Bool)
(assert
 (forall ((x! Int) (y! Int)) (!
   (= (ens%vstd.arithmetic.mul.lemma_mul_increases. x! y!) (<= y! (Mul x! y!)))
   :pattern ((ens%vstd.arithmetic.mul.lemma_mul_increases. x! y!))
   :qid internal_ens__vstd.arithmetic.mul.lemma_mul_increases._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.mul.lemma_mul_increases._definition
)))

;; Broadcast crate::vstd::arithmetic::mul::lemma_mul_increases
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.mul.lemma_mul_increases.)
  (forall ((x! Int) (y! Int)) (!
    (=>
     (and
      (< 0 x!)
      (< 0 y!)
     )
     (<= y! (Mul x! y!))
    )
    :pattern ((Mul x! y!))
    :qid user_crate__vstd__arithmetic__mul__lemma_mul_increases_4
    :skolemid skolem_user_crate__vstd__arithmetic__mul__lemma_mul_increases_4
))))

;; Function-Specs crate::vstd::arithmetic::div_mod::lemma_div_multiples_vanish
(declare-fun req%vstd.arithmetic.div_mod.lemma_div_multiples_vanish. (Int Int) Bool)
(declare-const %%global_location_label%%10 Bool)
(assert
 (forall ((x! Int) (d! Int)) (!
   (= (req%vstd.arithmetic.div_mod.lemma_div_multiples_vanish. x! d!) (=>
     %%global_location_label%%10
     (< 0 d!)
   ))
   :pattern ((req%vstd.arithmetic.div_mod.lemma_div_multiples_vanish. x! d!))
   :qid internal_req__vstd.arithmetic.div_mod.lemma_div_multiples_vanish._definition
   :skolemid skolem_internal_req__vstd.arithmetic.div_mod.lemma_div_multiples_vanish._definition
)))
(declare-fun ens%vstd.arithmetic.div_mod.lemma_div_multiples_vanish. (Int Int) Bool)
(assert
 (forall ((x! Int) (d! Int)) (!
   (= (ens%vstd.arithmetic.div_mod.lemma_div_multiples_vanish. x! d!) (= (EucDiv (Mul d!
       x!
      ) d!
     ) x!
   ))
   :pattern ((ens%vstd.arithmetic.div_mod.lemma_div_multiples_vanish. x! d!))
   :qid internal_ens__vstd.arithmetic.div_mod.lemma_div_multiples_vanish._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.div_mod.lemma_div_multiples_vanish._definition
)))

;; Broadcast crate::vstd::arithmetic::div_mod::lemma_div_multiples_vanish
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_multiples_vanish.)
  (forall ((x! Int) (d! Int)) (!
    (=>
     (< 0 d!)
     (= (EucDiv (Mul d! x!) d!) x!)
    )
    :pattern ((EucDiv (Mul d! x!) d!))
    :qid user_crate__vstd__arithmetic__div_mod__lemma_div_multiples_vanish_5
    :skolemid skolem_user_crate__vstd__arithmetic__div_mod__lemma_div_multiples_vanish_5
))))

;; Function-Specs crate::vstd::arithmetic::logarithm::lemma_log0
(declare-fun req%vstd.arithmetic.logarithm.lemma_log0. (Int Int) Bool)
(declare-const %%global_location_label%%11 Bool)
(declare-const %%global_location_label%%12 Bool)
(assert
 (forall ((base! Int) (pow! Int)) (!
   (= (req%vstd.arithmetic.logarithm.lemma_log0. base! pow!) (and
     (=>
      %%global_location_label%%11
      (> base! 1)
     )
     (=>
      %%global_location_label%%12
      (and
       (<= 0 pow!)
       (< pow! base!)
   ))))
   :pattern ((req%vstd.arithmetic.logarithm.lemma_log0. base! pow!))
   :qid internal_req__vstd.arithmetic.logarithm.lemma_log0._definition
   :skolemid skolem_internal_req__vstd.arithmetic.logarithm.lemma_log0._definition
)))
(declare-fun ens%vstd.arithmetic.logarithm.lemma_log0. (Int Int) Bool)
(assert
 (forall ((base! Int) (pow! Int)) (!
   (= (ens%vstd.arithmetic.logarithm.lemma_log0. base! pow!) (= (vstd.arithmetic.logarithm.log.?
      (I base!) (I pow!)
     ) 0
   ))
   :pattern ((ens%vstd.arithmetic.logarithm.lemma_log0. base! pow!))
   :qid internal_ens__vstd.arithmetic.logarithm.lemma_log0._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.logarithm.lemma_log0._definition
)))

;; Function-Def crate::vstd::arithmetic::logarithm::lemma_log0
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/logarithm.rs:56:1: 56:45 (#0)
(get-info :all-statistics)
(push)
 (declare-const base! Int)
 (declare-const pow! Int)
 (assert
  fuel_defaults
 )
 (assert
  (> base! 1)
 )
 (assert
  (and
   (<= 0 pow!)
   (< pow! base!)
 ))
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.logarithm.log.)
    (=>
     %%location_label%%0
     (= (vstd.arithmetic.logarithm.log.? (I base!) (I pow!)) 0)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::logarithm::lemma_log_s
(declare-fun req%vstd.arithmetic.logarithm.lemma_log_s. (Int Int) Bool)
(declare-const %%global_location_label%%13 Bool)
(declare-const %%global_location_label%%14 Bool)
(assert
 (forall ((base! Int) (pow! Int)) (!
   (= (req%vstd.arithmetic.logarithm.lemma_log_s. base! pow!) (and
     (=>
      %%global_location_label%%13
      (> base! 1)
     )
     (=>
      %%global_location_label%%14
      (>= pow! base!)
   )))
   :pattern ((req%vstd.arithmetic.logarithm.lemma_log_s. base! pow!))
   :qid internal_req__vstd.arithmetic.logarithm.lemma_log_s._definition
   :skolemid skolem_internal_req__vstd.arithmetic.logarithm.lemma_log_s._definition
)))
(declare-fun ens%vstd.arithmetic.logarithm.lemma_log_s. (Int Int) Bool)
(assert
 (forall ((base! Int) (pow! Int)) (!
   (= (ens%vstd.arithmetic.logarithm.lemma_log_s. base! pow!) (and
     (>= (EucDiv pow! base!) 0)
     (= (vstd.arithmetic.logarithm.log.? (I base!) (I pow!)) (Add 1 (vstd.arithmetic.logarithm.log.?
        (I base!) (I (EucDiv pow! base!))
   )))))
   :pattern ((ens%vstd.arithmetic.logarithm.lemma_log_s. base! pow!))
   :qid internal_ens__vstd.arithmetic.logarithm.lemma_log_s._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.logarithm.lemma_log_s._definition
)))

;; Function-Def crate::vstd::arithmetic::logarithm::lemma_log_s
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/logarithm.rs:69:1: 69:56 (#0)
(get-info :all-statistics)
(push)
 (declare-const base! Int)
 (declare-const pow! Int)
 (assert
  fuel_defaults
 )
 (assert
  (> base! 1)
 )
 (assert
  (>= pow! base!)
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_pos_is_pos.)
    (=>
     (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_decreases.)
     (=>
      (fuel_bool fuel%vstd.arithmetic.logarithm.log.)
      (and
       (=>
        %%location_label%%0
        (>= (EucDiv pow! base!) 0)
       )
       (=>
        %%location_label%%1
        (= (vstd.arithmetic.logarithm.log.? (I base!) (I pow!)) (Add 1 (vstd.arithmetic.logarithm.log.?
           (I base!) (I (EucDiv pow! base!))
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::arithmetic::logarithm::lemma_log_s
(assert
 (=>
  (fuel_bool fuel%vstd.arithmetic.logarithm.lemma_log_s.)
  (forall ((base! Poly) (pow! Poly)) (!
    (=>
     (and
      (has_type base! INT)
      (has_type pow! INT)
     )
     (=>
      (and
       (> (%I base!) 1)
       (>= (%I pow!) (%I base!))
      )
      (and
       (>= (EucDiv (%I pow!) (%I base!)) 0)
       (= (vstd.arithmetic.logarithm.log.? base! pow!) (Add 1 (vstd.arithmetic.logarithm.log.?
          base! (I (EucDiv (%I pow!) (%I base!)))
    ))))))
    :pattern ((vstd.arithmetic.logarithm.log.? base! (I (vstd.math.div.? pow! base!))))
    :qid user_crate__vstd__arithmetic__logarithm__lemma_log_s_6
    :skolemid skolem_user_crate__vstd__arithmetic__logarithm__lemma_log_s_6
))))

;; Function-Specs crate::vstd::arithmetic::logarithm::lemma_log_nonnegative
(declare-fun req%vstd.arithmetic.logarithm.lemma_log_nonnegative. (Int Int) Bool)
(declare-const %%global_location_label%%15 Bool)
(declare-const %%global_location_label%%16 Bool)
(assert
 (forall ((base! Int) (pow! Int)) (!
   (= (req%vstd.arithmetic.logarithm.lemma_log_nonnegative. base! pow!) (and
     (=>
      %%global_location_label%%15
      (> base! 1)
     )
     (=>
      %%global_location_label%%16
      (<= 0 pow!)
   )))
   :pattern ((req%vstd.arithmetic.logarithm.lemma_log_nonnegative. base! pow!))
   :qid internal_req__vstd.arithmetic.logarithm.lemma_log_nonnegative._definition
   :skolemid skolem_internal_req__vstd.arithmetic.logarithm.lemma_log_nonnegative._definition
)))
(declare-fun ens%vstd.arithmetic.logarithm.lemma_log_nonnegative. (Int Int) Bool)
(assert
 (forall ((base! Int) (pow! Int)) (!
   (= (ens%vstd.arithmetic.logarithm.lemma_log_nonnegative. base! pow!) (>= (vstd.arithmetic.logarithm.log.?
      (I base!) (I pow!)
     ) 0
   ))
   :pattern ((ens%vstd.arithmetic.logarithm.lemma_log_nonnegative. base! pow!))
   :qid internal_ens__vstd.arithmetic.logarithm.lemma_log_nonnegative._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.logarithm.lemma_log_nonnegative._definition
)))

;; Function-Def crate::vstd::arithmetic::logarithm::lemma_log_nonnegative
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/logarithm.rs:85:1: 85:56 (#0)
(get-info :all-statistics)
(push)
 (declare-const base! Int)
 (declare-const pow! Int)
 (declare-const tmp%1 Int)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (> base! 1)
 )
 (assert
  (<= 0 pow!)
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
    (= decrease%init0 pow!)
    (=>
     (fuel_bool fuel%vstd.arithmetic.logarithm.log.)
     (or
      (and
       (=>
        (not (or
          (or
           (< pow! base!)
           (>= (EucDiv pow! base!) pow!)
          )
          (< (EucDiv pow! base!) 0)
        ))
        (=>
         (= tmp%1 (EucDiv pow! base!))
         (and
          (=>
           %%location_label%%0
           (check_decrease_int (let
             ((base!$0 base!) (pow!$1 tmp%1))
             pow!$1
            ) decrease%init0 false
          ))
          (and
           (=>
            %%location_label%%1
            (req%vstd.arithmetic.logarithm.lemma_log_nonnegative. base! tmp%1)
           )
           (=>
            (ens%vstd.arithmetic.logarithm.lemma_log_nonnegative. base! tmp%1)
            %%switch_label%%0
       )))))
       (=>
        (not (not (or
           (or
            (< pow! base!)
            (>= (EucDiv pow! base!) pow!)
           )
           (< (EucDiv pow! base!) 0)
        )))
        %%switch_label%%0
      ))
      (and
       (not %%switch_label%%0)
       (=>
        %%location_label%%2
        (>= (vstd.arithmetic.logarithm.log.? (I base!) (I pow!)) 0)
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::logarithm::lemma_log_is_ordered
(declare-fun req%vstd.arithmetic.logarithm.lemma_log_is_ordered. (Int Int Int) Bool)
(declare-const %%global_location_label%%17 Bool)
(declare-const %%global_location_label%%18 Bool)
(assert
 (forall ((base! Int) (pow1! Int) (pow2! Int)) (!
   (= (req%vstd.arithmetic.logarithm.lemma_log_is_ordered. base! pow1! pow2!) (and
     (=>
      %%global_location_label%%17
      (> base! 1)
     )
     (=>
      %%global_location_label%%18
      (and
       (<= 0 pow1!)
       (<= pow1! pow2!)
   ))))
   :pattern ((req%vstd.arithmetic.logarithm.lemma_log_is_ordered. base! pow1! pow2!))
   :qid internal_req__vstd.arithmetic.logarithm.lemma_log_is_ordered._definition
   :skolemid skolem_internal_req__vstd.arithmetic.logarithm.lemma_log_is_ordered._definition
)))
(declare-fun ens%vstd.arithmetic.logarithm.lemma_log_is_ordered. (Int Int Int) Bool)
(assert
 (forall ((base! Int) (pow1! Int) (pow2! Int)) (!
   (= (ens%vstd.arithmetic.logarithm.lemma_log_is_ordered. base! pow1! pow2!) (<= (vstd.arithmetic.logarithm.log.?
      (I base!) (I pow1!)
     ) (vstd.arithmetic.logarithm.log.? (I base!) (I pow2!))
   ))
   :pattern ((ens%vstd.arithmetic.logarithm.lemma_log_is_ordered. base! pow1! pow2!))
   :qid internal_ens__vstd.arithmetic.logarithm.lemma_log_is_ordered._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.logarithm.lemma_log_is_ordered._definition
)))

;; Function-Def crate::vstd::arithmetic::logarithm::lemma_log_is_ordered
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/logarithm.rs:102:1: 102:67 (#0)
(get-info :all-statistics)
(push)
 (declare-const base! Int)
 (declare-const pow1! Int)
 (declare-const pow2! Int)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Int)
 (declare-const tmp%4 Int)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (> base! 1)
 )
 (assert
  (and
   (<= 0 pow1!)
   (<= pow1! pow2!)
 ))
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%3 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%5 Bool)
 (assert
  (not (=>
    (= decrease%init0 pow1!)
    (=>
     (fuel_bool fuel%vstd.arithmetic.logarithm.log.)
     (or
      (and
       (=>
        (< pow2! base!)
        (=>
         (= tmp%1 (and
           (= (vstd.arithmetic.logarithm.log.? (I base!) (I pow1!)) 0)
           (= 0 (vstd.arithmetic.logarithm.log.? (I base!) (I pow2!)))
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
        (not (< pow2! base!))
        (or
         (and
          (=>
           (< pow1! base!)
           (=>
            (= tmp%2 (= (vstd.arithmetic.logarithm.log.? (I base!) (I pow1!)) 0))
            (and
             (=>
              %%location_label%%1
              tmp%2
             )
             (=>
              tmp%2
              (and
               (=>
                %%location_label%%2
                (req%vstd.arithmetic.logarithm.lemma_log_nonnegative. base! pow2!)
               )
               (=>
                (ens%vstd.arithmetic.logarithm.lemma_log_nonnegative. base! pow2!)
                %%switch_label%%1
          ))))))
          (=>
           (not (< pow1! base!))
           (=>
            (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_pos_is_pos.)
            (=>
             (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_is_ordered.)
             (=>
              (fuel_bool fuel%vstd.arithmetic.div_mod.lemma_div_decreases.)
              (=>
               (= tmp%3 (EucDiv pow1! base!))
               (=>
                (= tmp%4 (EucDiv pow2! base!))
                (and
                 (=>
                  %%location_label%%3
                  (check_decrease_int (let
                    ((base!$0 base!) (pow1!$1 tmp%3) (pow2!$2 tmp%4))
                    pow1!$1
                   ) decrease%init0 false
                 ))
                 (and
                  (=>
                   %%location_label%%4
                   (req%vstd.arithmetic.logarithm.lemma_log_is_ordered. base! tmp%3 tmp%4)
                  )
                  (=>
                   (ens%vstd.arithmetic.logarithm.lemma_log_is_ordered. base! tmp%3 tmp%4)
                   %%switch_label%%1
         ))))))))))
         (and
          (not %%switch_label%%1)
          %%switch_label%%0
      ))))
      (and
       (not %%switch_label%%0)
       (=>
        %%location_label%%5
        (<= (vstd.arithmetic.logarithm.log.? (I base!) (I pow1!)) (vstd.arithmetic.logarithm.log.?
          (I base!) (I pow2!)
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::arithmetic::power::lemma_pow_positive
(declare-fun req%vstd.arithmetic.power.lemma_pow_positive. (Int Int) Bool)
(declare-const %%global_location_label%%19 Bool)
(assert
 (forall ((b! Int) (e! Int)) (!
   (= (req%vstd.arithmetic.power.lemma_pow_positive. b! e!) (=>
     %%global_location_label%%19
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
    :qid user_crate__vstd__arithmetic__power__lemma_pow_positive_7
    :skolemid skolem_user_crate__vstd__arithmetic__power__lemma_pow_positive_7
))))

;; Function-Specs crate::vstd::arithmetic::logarithm::lemma_log_pow
(declare-fun req%vstd.arithmetic.logarithm.lemma_log_pow. (Int Int) Bool)
(declare-const %%global_location_label%%20 Bool)
(assert
 (forall ((base! Int) (n! Int)) (!
   (= (req%vstd.arithmetic.logarithm.lemma_log_pow. base! n!) (=>
     %%global_location_label%%20
     (> base! 1)
   ))
   :pattern ((req%vstd.arithmetic.logarithm.lemma_log_pow. base! n!))
   :qid internal_req__vstd.arithmetic.logarithm.lemma_log_pow._definition
   :skolemid skolem_internal_req__vstd.arithmetic.logarithm.lemma_log_pow._definition
)))
(declare-fun ens%vstd.arithmetic.logarithm.lemma_log_pow. (Int Int) Bool)
(assert
 (forall ((base! Int) (n! Int)) (!
   (= (ens%vstd.arithmetic.logarithm.lemma_log_pow. base! n!) (= (vstd.arithmetic.logarithm.log.?
      (I base!) (I (vstd.arithmetic.power.pow.? (I base!) (I n!)))
     ) n!
   ))
   :pattern ((ens%vstd.arithmetic.logarithm.lemma_log_pow. base! n!))
   :qid internal_ens__vstd.arithmetic.logarithm.lemma_log_pow._definition
   :skolemid skolem_internal_ens__vstd.arithmetic.logarithm.lemma_log_pow._definition
)))

;; Function-Def crate::vstd::arithmetic::logarithm::lemma_log_pow
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/arithmetic/logarithm.rs:124:1: 124:46 (#0)
(get-info :all-statistics)
(push)
 (declare-const base! Int)
 (declare-const n! Int)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Int)
 (declare-const tmp%3 Int)
 (declare-const tmp%4 Int)
 (declare-const n_minus_1@ Int)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 n!)
 )
 (assert
  (> base! 1)
 )
 (declare-const %%switch_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%6 Bool)
 ;; assertion failed
 (declare-const %%location_label%%7 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%8 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%9 Bool)
 ;; assertion failed
 (declare-const %%location_label%%10 Bool)
 ;; assertion failed
 (declare-const %%location_label%%11 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%12 Bool)
 (assert
  (not (=>
    (= decrease%init0 n!)
    (or
     (and
      (=>
       (= n! 0)
       (=>
        (fuel_bool fuel%vstd.arithmetic.power.pow.)
        (=>
         (fuel_bool fuel%vstd.arithmetic.logarithm.log.)
         %%switch_label%%0
      )))
      (=>
       (not (= n! 0))
       (=>
        (= n_minus_1@ (nClip (Sub n! 1)))
        (and
         (=>
          %%location_label%%0
          (req%vstd.arithmetic.power.lemma_pow_positive. base! n!)
         )
         (=>
          (ens%vstd.arithmetic.power.lemma_pow_positive. base! n!)
          (and
           (and
            (=>
             (fuel_bool fuel%vstd.arithmetic.power.pow.)
             (=>
              %%location_label%%1
              (= (vstd.arithmetic.logarithm.log.? (I base!) (I (vstd.arithmetic.power.pow.? (I base!)
                  (I n!)
                ))
               ) (vstd.arithmetic.logarithm.log.? (I base!) (I (Mul base! (vstd.arithmetic.power.pow.?
                   (I base!) (I n_minus_1@)
            )))))))
            (=>
             (= (vstd.arithmetic.logarithm.log.? (I base!) (I (vstd.arithmetic.power.pow.? (I base!)
                 (I n!)
               ))
              ) (vstd.arithmetic.logarithm.log.? (I base!) (I (Mul base! (vstd.arithmetic.power.pow.?
                  (I base!) (I n_minus_1@)
             )))))
             (and
              (and
               (=>
                %%location_label%%2
                (req%vstd.arithmetic.power.lemma_pow_positive. base! n_minus_1@)
               )
               (=>
                (ens%vstd.arithmetic.power.lemma_pow_positive. base! n_minus_1@)
                (=>
                 (= tmp%1 (vstd.arithmetic.power.pow.? (I base!) (I n_minus_1@)))
                 (and
                  (=>
                   %%location_label%%3
                   (req%vstd.arithmetic.mul.lemma_mul_increases. tmp%1 base!)
                  )
                  (=>
                   (ens%vstd.arithmetic.mul.lemma_mul_increases. tmp%1 base!)
                   (=>
                    (= tmp%2 (vstd.arithmetic.power.pow.? (I base!) (I n_minus_1@)))
                    (=>
                     (ens%vstd.arithmetic.mul.lemma_mul_is_commutative. tmp%2 base!)
                     (=>
                      (= tmp%3 (Mul base! (vstd.arithmetic.power.pow.? (I base!) (I n_minus_1@))))
                      (and
                       (=>
                        %%location_label%%4
                        (req%vstd.arithmetic.logarithm.lemma_log_s. base! tmp%3)
                       )
                       (=>
                        (ens%vstd.arithmetic.logarithm.lemma_log_s. base! tmp%3)
                        (=>
                         %%location_label%%5
                         (= (vstd.arithmetic.logarithm.log.? (I base!) (I (Mul base! (vstd.arithmetic.power.pow.?
                              (I base!) (I n_minus_1@)
                           )))
                          ) (Add 1 (vstd.arithmetic.logarithm.log.? (I base!) (I (EucDiv (Mul base! (vstd.arithmetic.power.pow.?
                                (I base!) (I n_minus_1@)
                               )
                              ) base!
              ))))))))))))))))
              (=>
               (= (vstd.arithmetic.logarithm.log.? (I base!) (I (Mul base! (vstd.arithmetic.power.pow.?
                    (I base!) (I n_minus_1@)
                 )))
                ) (Add 1 (vstd.arithmetic.logarithm.log.? (I base!) (I (EucDiv (Mul base! (vstd.arithmetic.power.pow.?
                      (I base!) (I n_minus_1@)
                     )
                    ) base!
               )))))
               (and
                (=>
                 (= tmp%4 (vstd.arithmetic.power.pow.? (I base!) (I n_minus_1@)))
                 (and
                  (=>
                   %%location_label%%6
                   (req%vstd.arithmetic.div_mod.lemma_div_multiples_vanish. tmp%4 base!)
                  )
                  (=>
                   (ens%vstd.arithmetic.div_mod.lemma_div_multiples_vanish. tmp%4 base!)
                   (=>
                    %%location_label%%7
                    (= (Add 1 (vstd.arithmetic.logarithm.log.? (I base!) (I (EucDiv (Mul base! (vstd.arithmetic.power.pow.?
                           (I base!) (I n_minus_1@)
                          )
                         ) base!
                      )))
                     ) (Add 1 (vstd.arithmetic.logarithm.log.? (I base!) (I (vstd.arithmetic.power.pow.? (
                          I base!
                         ) (I n_minus_1@)
                )))))))))
                (=>
                 (= (Add 1 (vstd.arithmetic.logarithm.log.? (I base!) (I (EucDiv (Mul base! (vstd.arithmetic.power.pow.?
                        (I base!) (I n_minus_1@)
                       )
                      ) base!
                   )))
                  ) (Add 1 (vstd.arithmetic.logarithm.log.? (I base!) (I (vstd.arithmetic.power.pow.? (
                       I base!
                      ) (I n_minus_1@)
                 )))))
                 (and
                  (and
                   (=>
                    %%location_label%%8
                    (check_decrease_int (let
                      ((base!$0 base!) (n!$1 n_minus_1@))
                      n!$1
                     ) decrease%init0 false
                   ))
                   (and
                    (=>
                     %%location_label%%9
                     (req%vstd.arithmetic.logarithm.lemma_log_pow. base! n_minus_1@)
                    )
                    (=>
                     (ens%vstd.arithmetic.logarithm.lemma_log_pow. base! n_minus_1@)
                     (=>
                      %%location_label%%10
                      (= (Add 1 (vstd.arithmetic.logarithm.log.? (I base!) (I (vstd.arithmetic.power.pow.? (
                            I base!
                           ) (I n_minus_1@)
                        )))
                       ) (Add 1 (Sub n! 1))
                  )))))
                  (=>
                   (= (Add 1 (vstd.arithmetic.logarithm.log.? (I base!) (I (vstd.arithmetic.power.pow.? (
                         I base!
                        ) (I n_minus_1@)
                     )))
                    ) (Add 1 (Sub n! 1))
                   )
                   (=>
                    %%location_label%%11
                    (= (vstd.arithmetic.logarithm.log.? (I base!) (I (vstd.arithmetic.power.pow.? (I base!)
                        (I n!)
                      ))
                     ) (Add 1 (Sub n! 1))
           ))))))))))
           (=>
            (= (vstd.arithmetic.logarithm.log.? (I base!) (I (vstd.arithmetic.power.pow.? (I base!)
                (I n!)
              ))
             ) (Add 1 (Sub n! 1))
            )
            %%switch_label%%0
     )))))))
     (and
      (not %%switch_label%%0)
      (=>
       %%location_label%%12
       (= (vstd.arithmetic.logarithm.log.? (I base!) (I (vstd.arithmetic.power.pow.? (I base!)
           (I n!)
         ))
        ) n!
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
