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

;; MODULE 'root module'

;; Fuel
(assert
 true
)

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

;; Function-Specs crate::foo
(declare-fun req%foo. (Int) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((pre%a! Int)) (!
   (= (req%foo. pre%a!) (=>
     %%global_location_label%%0
     (= pre%a! 17)
   ))
   :pattern ((req%foo. pre%a!))
   :qid internal_req__foo._definition
   :skolemid skolem_internal_req__foo._definition
)))
(declare-fun ens%foo. (Int Int) Bool)
(assert
 (forall ((pre%a! Int) (a! Int)) (!
   (= (ens%foo. pre%a! a!) (uInv 64 a!))
   :pattern ((ens%foo. pre%a! a!))
   :qid internal_ens__foo._definition
   :skolemid skolem_internal_ens__foo._definition
)))

;; Function-Def crate::foo
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/loops-2d70692a01dbf123-loop_references_old_version_of_mut_var/test.rs:19:5: 25:6 (#0)
(get-info :all-statistics)
(push)
 (declare-const a!@0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 a!@0)
 )
 (declare-const a!@1 Int)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (uInv 64 a!@1)
    (=>
     (= a!@0 17)
     (=>
      (= a!@1 19)
      (=>
       %%location_label%%0
       false
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
 (get-info :reason-unknown)
 (get-model)
 (assert
  (not %%location_label%%0)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::foo
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/loops-2d70692a01dbf123-loop_references_old_version_of_mut_var/test.rs:15:1: 15:20 (#0)
(get-info :all-statistics)
(push)
 (declare-const a!@0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 a!@0)
 )
 (assert
  (= a!@0 17)
 )
 (declare-const a!@1 Int)
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%0 Bool)
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= a!@1 19)
    (and
     (=>
      %%location_label%%0
      (= a!@0 17)
     )
     (=>
      %%location_label%%1
      (= a!@1 19)
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Recommends crate::foo
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/loops-2d70692a01dbf123-loop_references_old_version_of_mut_var/test.rs:19:5: 25:6 (#0)
(get-info :all-statistics)
(push)
 (declare-const a!@0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 a!@0)
 )
 (declare-const a!@1 Int)
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Recommends crate::foo
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/loops-2d70692a01dbf123-loop_references_old_version_of_mut_var/test.rs:15:1: 15:20 (#0)
(get-info :all-statistics)
(push)
 (declare-const a!@0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 a!@0)
 )
 (declare-const a!@1 Int)
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::foo2
(declare-fun ens%foo2. (Int Int) Bool)
(assert
 (forall ((pre%a! Int) (a! Int)) (!
   (= (ens%foo2. pre%a! a!) (uInv 64 a!))
   :pattern ((ens%foo2. pre%a! a!))
   :qid internal_ens__foo2._definition
   :skolemid skolem_internal_ens__foo2._definition
)))

;; Function-Def crate::foo2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/loops-2d70692a01dbf123-loop_references_old_version_of_mut_var/test.rs:29:5: 32:6 (#0)
(get-info :all-statistics)
(push)
 (declare-const a!@0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 a!@0)
 )
 (declare-const a!@1 Int)
 ;; invariant not satisfied at end of loop body
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (uInv 64 a!@1)
    (=>
     (= a!@0 a!@1)
     (=>
      %%location_label%%0
      (= a!@0 a!@1)
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::foo2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/loops-2d70692a01dbf123-loop_references_old_version_of_mut_var/test.rs:28:1: 28:21 (#0)
(get-info :all-statistics)
(push)
 (declare-const a!@0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 a!@0)
 )
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (= a!@0 a!@0)
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::foo3
(declare-fun req%foo3. (Int) Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((pre%a! Int)) (!
   (= (req%foo3. pre%a!) (=>
     %%global_location_label%%1
     (= pre%a! 1234)
   ))
   :pattern ((req%foo3. pre%a!))
   :qid internal_req__foo3._definition
   :skolemid skolem_internal_req__foo3._definition
)))
(declare-fun ens%foo3. (Int Int) Bool)
(assert
 (forall ((pre%a! Int) (a! Int)) (!
   (= (ens%foo3. pre%a! a!) (uInv 64 a!))
   :pattern ((ens%foo3. pre%a! a!))
   :qid internal_ens__foo3._definition
   :skolemid skolem_internal_ens__foo3._definition
)))

;; Function-Def crate::foo3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/loops-2d70692a01dbf123-loop_references_old_version_of_mut_var/test.rs:39:5: 42:6 (#0)
(get-info :all-statistics)
(push)
 (declare-const a!@0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 a!@0)
 )
 (declare-const a!@1 Int)
 ;; invariant not satisfied at end of loop body
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (uInv 64 a!@1)
    (=>
     (= a!@0 1234)
     (=>
      %%location_label%%0
      (= a!@0 1234)
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::foo3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/loops-2d70692a01dbf123-loop_references_old_version_of_mut_var/test.rs:36:1: 36:21 (#0)
(get-info :all-statistics)
(push)
 (declare-const a!@0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 a!@0)
 )
 (assert
  (= a!@0 1234)
 )
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (= a!@0 1234)
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::foo4
(declare-fun req%foo4. (Int) Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((pre%a! Int)) (!
   (= (req%foo4. pre%a!) (=>
     %%global_location_label%%2
     (= pre%a! 1234)
   ))
   :pattern ((req%foo4. pre%a!))
   :qid internal_req__foo4._definition
   :skolemid skolem_internal_req__foo4._definition
)))
(declare-fun ens%foo4. (Int Int) Bool)
(assert
 (forall ((pre%a! Int) (a! Int)) (!
   (= (ens%foo4. pre%a! a!) (uInv 64 a!))
   :pattern ((ens%foo4. pre%a! a!))
   :qid internal_ens__foo4._definition
   :skolemid skolem_internal_ens__foo4._definition
)))

;; Function-Def crate::foo4
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/loops-2d70692a01dbf123-loop_references_old_version_of_mut_var/test.rs:48:5: 52:6 (#0)
(get-info :all-statistics)
(push)
 (declare-const a!@0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 a!@0)
 )
 (declare-const a!@1 Int)
 (declare-const a!@2 Int)
 ;; invariant not satisfied at end of loop body
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (uInv 64 a!@1)
    (=>
     (= a!@0 1234)
     (=>
      (= a!@2 8932759)
      (=>
       %%location_label%%0
       (= a!@0 1234)
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::foo4
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/loops-2d70692a01dbf123-loop_references_old_version_of_mut_var/test.rs:45:1: 45:21 (#0)
(get-info :all-statistics)
(push)
 (declare-const a!@0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 a!@0)
 )
 (assert
  (= a!@0 1234)
 )
 (declare-const a!@1 Int)
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (= a!@0 1234)
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::foo5
(declare-fun req%foo5. (Int) Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((pre%a! Int)) (!
   (= (req%foo5. pre%a!) (=>
     %%global_location_label%%3
     (= pre%a! 1234)
   ))
   :pattern ((req%foo5. pre%a!))
   :qid internal_req__foo5._definition
   :skolemid skolem_internal_req__foo5._definition
)))
(declare-fun ens%foo5. (Int Int) Bool)
(assert
 (forall ((pre%a! Int) (a! Int)) (!
   (= (ens%foo5. pre%a! a!) (uInv 64 a!))
   :pattern ((ens%foo5. pre%a! a!))
   :qid internal_ens__foo5._definition
   :skolemid skolem_internal_ens__foo5._definition
)))

;; Function-Def crate::foo5
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/loops-2d70692a01dbf123-loop_references_old_version_of_mut_var/test.rs:59:5: 63:6 (#0)
(get-info :all-statistics)
(push)
 (declare-const a!@0 Int)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 a!@0)
 )
 (declare-const a!@1 Int)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; invariant not satisfied at end of loop body
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (uInv 64 a!@1)
    (=>
     (= a!@1 12)
     (=>
      (= tmp%1 (= a!@1 12))
      (and
       (=>
        %%location_label%%0
        tmp%1
       )
       (=>
        tmp%1
        (=>
         %%location_label%%1
         (= a!@1 12)
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::foo5
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/loops-2d70692a01dbf123-loop_references_old_version_of_mut_var/test.rs:55:1: 55:21 (#0)
(get-info :all-statistics)
(push)
 (declare-const a!@0 Int)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 a!@0)
 )
 (assert
  (= a!@0 1234)
 )
 (declare-const a!@1 Int)
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= a!@1 12)
    (=>
     %%location_label%%0
     (= a!@1 12)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::test_old_in_ensures
(declare-fun req%test_old_in_ensures. (Int) Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((pre%a! Int)) (!
   (= (req%test_old_in_ensures. pre%a!) (=>
     %%global_location_label%%4
     (< pre%a! 2000)
   ))
   :pattern ((req%test_old_in_ensures. pre%a!))
   :qid internal_req__test_old_in_ensures._definition
   :skolemid skolem_internal_req__test_old_in_ensures._definition
)))
(declare-fun ens%test_old_in_ensures. (Int Int) Bool)
(assert
 (forall ((pre%a! Int) (a! Int)) (!
   (= (ens%test_old_in_ensures. pre%a! a!) (and
     (uInv 64 a!)
     (= a! (Add pre%a! 25))
   ))
   :pattern ((ens%test_old_in_ensures. pre%a! a!))
   :qid internal_ens__test_old_in_ensures._definition
   :skolemid skolem_internal_ens__test_old_in_ensures._definition
)))

;; Function-Def crate::test_old_in_ensures
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/loops-2d70692a01dbf123-loop_references_old_version_of_mut_var/test.rs:71:5: 81:6 (#0)
(get-info :all-statistics)
(push)
 (declare-const a!@0 Int)
 (declare-const i@0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 a!@0)
 )
 (assert
  (uInv 64 i@0)
 )
 (declare-const a!@1 Int)
 (declare-const a!@2 Int)
 (declare-const i@1 Int)
 (declare-const %%switch_label%%0 Bool)
 ;; possible arithmetic underflow/overflow
 (declare-const %%location_label%%0 Bool)
 ;; possible arithmetic underflow/overflow
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; invariant not satisfied at end of loop body
 (declare-const %%location_label%%3 Bool)
 ;; invariant not satisfied at end of loop body
 (declare-const %%location_label%%4 Bool)
 ;; invariant not satisfied at end of loop body
 (declare-const %%location_label%%5 Bool)
 (assert
  (not (=>
    (uInv 64 a!@1)
    (=>
     (< a!@0 2000)
     (=>
      (and
       (<= 0 i@0)
       (< i@0 25)
      )
      (=>
       (= a!@1 (Add a!@0 i@0))
       (and
        (=>
         %%location_label%%0
         (uInv 64 (Add a!@1 1))
        )
        (=>
         (= a!@2 (uClip 64 (Add a!@1 1)))
         (and
          (=>
           %%location_label%%1
           (uInv 64 (Add i@0 1))
          )
          (=>
           (= i@1 (uClip 64 (Add i@0 1)))
           (or
            (and
             (=>
              (= i@1 25)
              (=>
               %%location_label%%2
               (= a!@2 (Add a!@0 25))
             ))
             (=>
              (not (= i@1 25))
              %%switch_label%%0
            ))
            (and
             (not %%switch_label%%0)
             (and
              (=>
               %%location_label%%3
               (< a!@0 2000)
              )
              (and
               (=>
                %%location_label%%4
                (and
                 (<= 0 i@1)
                 (< i@1 25)
               ))
               (=>
                %%location_label%%5
                (= a!@2 (Add a!@0 i@1))
 )))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test_old_in_ensures
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/loops-2d70692a01dbf123-loop_references_old_version_of_mut_var/test.rs:66:1: 66:36 (#0)
(get-info :all-statistics)
(push)
 (declare-const a!@0 Int)
 (declare-const i@0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 a!@0)
 )
 (assert
  (< a!@0 2000)
 )
 (declare-const a!@1 Int)
 (declare-const i@1 Int)
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%0 Bool)
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%1 Bool)
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (= i@0 0)
    (and
     (=>
      %%location_label%%0
      (< a!@0 2000)
     )
     (and
      (=>
       %%location_label%%1
       (and
        (<= 0 i@0)
        (< i@0 25)
      ))
      (=>
       %%location_label%%2
       (= a!@0 (Add a!@0 i@0))
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::test_old_in_ensures_fail
(declare-fun req%test_old_in_ensures_fail. (Int) Bool)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((pre%a! Int)) (!
   (= (req%test_old_in_ensures_fail. pre%a!) (=>
     %%global_location_label%%5
     (< pre%a! 2000)
   ))
   :pattern ((req%test_old_in_ensures_fail. pre%a!))
   :qid internal_req__test_old_in_ensures_fail._definition
   :skolemid skolem_internal_req__test_old_in_ensures_fail._definition
)))
(declare-fun ens%test_old_in_ensures_fail. (Int Int) Bool)
(assert
 (forall ((pre%a! Int) (a! Int)) (!
   (= (ens%test_old_in_ensures_fail. pre%a! a!) (and
     (uInv 64 a!)
     (= a! (Add pre%a! 26))
   ))
   :pattern ((ens%test_old_in_ensures_fail. pre%a! a!))
   :qid internal_ens__test_old_in_ensures_fail._definition
   :skolemid skolem_internal_ens__test_old_in_ensures_fail._definition
)))

;; Function-Def crate::test_old_in_ensures_fail
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/loops-2d70692a01dbf123-loop_references_old_version_of_mut_var/test.rs:89:5: 99:6 (#0)
(get-info :all-statistics)
(push)
 (declare-const a!@0 Int)
 (declare-const i@0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 a!@0)
 )
 (assert
  (uInv 64 i@0)
 )
 (declare-const a!@1 Int)
 (declare-const a!@2 Int)
 (declare-const i@1 Int)
 (declare-const %%switch_label%%0 Bool)
 ;; possible arithmetic underflow/overflow
 (declare-const %%location_label%%0 Bool)
 ;; possible arithmetic underflow/overflow
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; invariant not satisfied at end of loop body
 (declare-const %%location_label%%3 Bool)
 ;; invariant not satisfied at end of loop body
 (declare-const %%location_label%%4 Bool)
 ;; invariant not satisfied at end of loop body
 (declare-const %%location_label%%5 Bool)
 (assert
  (not (=>
    (uInv 64 a!@1)
    (=>
     (< a!@0 2000)
     (=>
      (and
       (<= 0 i@0)
       (< i@0 25)
      )
      (=>
       (= a!@1 (Add a!@0 i@0))
       (and
        (=>
         %%location_label%%0
         (uInv 64 (Add a!@1 1))
        )
        (=>
         (= a!@2 (uClip 64 (Add a!@1 1)))
         (and
          (=>
           %%location_label%%1
           (uInv 64 (Add i@0 1))
          )
          (=>
           (= i@1 (uClip 64 (Add i@0 1)))
           (or
            (and
             (=>
              (= i@1 25)
              (=>
               %%location_label%%2
               (= a!@2 (Add a!@0 26))
             ))
             (=>
              (not (= i@1 25))
              %%switch_label%%0
            ))
            (and
             (not %%switch_label%%0)
             (and
              (=>
               %%location_label%%3
               (< a!@0 2000)
              )
              (and
               (=>
                %%location_label%%4
                (and
                 (<= 0 i@1)
                 (< i@1 25)
               ))
               (=>
                %%location_label%%5
                (= a!@2 (Add a!@0 i@1))
 )))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
 (get-info :reason-unknown)
 (get-model)
 (assert
  (not %%location_label%%2)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test_old_in_ensures_fail
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/loops-2d70692a01dbf123-loop_references_old_version_of_mut_var/test.rs:84:1: 84:41 (#0)
(get-info :all-statistics)
(push)
 (declare-const a!@0 Int)
 (declare-const i@0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 a!@0)
 )
 (assert
  (< a!@0 2000)
 )
 (declare-const a!@1 Int)
 (declare-const i@1 Int)
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%0 Bool)
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%1 Bool)
 ;; invariant not satisfied before loop
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (= i@0 0)
    (and
     (=>
      %%location_label%%0
      (< a!@0 2000)
     )
     (and
      (=>
       %%location_label%%1
       (and
        (<= 0 i@0)
        (< i@0 25)
      ))
      (=>
       %%location_label%%2
       (= a!@0 (Add a!@0 i@0))
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Recommends crate::test_old_in_ensures_fail
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/loops-2d70692a01dbf123-loop_references_old_version_of_mut_var/test.rs:89:5: 99:6 (#0)
(get-info :all-statistics)
(push)
 (declare-const a!@0 Int)
 (declare-const i@0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 a!@0)
 )
 (assert
  (uInv 64 i@0)
 )
 (declare-const a!@1 Int)
 (declare-const a!@2 Int)
 (declare-const i@1 Int)
 (declare-const %%switch_label%%0 Bool)
 (assert
  (not (=>
    (uInv 64 a!@1)
    (=>
     (< a!@0 2000)
     (=>
      (and
       (<= 0 i@0)
       (< i@0 25)
      )
      (=>
       (= a!@1 (Add a!@0 i@0))
       (=>
        (= a!@2 (uClip 64 (Add a!@1 1)))
        (=>
         (= i@1 (uClip 64 (Add i@0 1)))
         (or
          (=>
           (not (= i@1 25))
           %%switch_label%%0
          )
          (not %%switch_label%%0)
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Recommends crate::test_old_in_ensures_fail
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/loops-2d70692a01dbf123-loop_references_old_version_of_mut_var/test.rs:84:1: 84:41 (#0)
(get-info :all-statistics)
(push)
 (declare-const a!@0 Int)
 (declare-const i@0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 a!@0)
 )
 (declare-const a!@1 Int)
 (declare-const i@1 Int)
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
