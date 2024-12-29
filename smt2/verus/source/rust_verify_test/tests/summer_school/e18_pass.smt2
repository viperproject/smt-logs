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
(declare-const fuel%fibo. FuelId)
(declare-const fuel%max_u64_fibo_arg. FuelId)
(assert
 (distinct fuel%fibo. fuel%max_u64_fibo_arg.)
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

;; Function-Decl crate::fibo
(declare-fun fibo.? (Poly) Int)
(declare-fun rec%fibo.? (Poly Fuel) Int)

;; Function-Decl crate::max_u64_fibo_arg
(declare-fun max_u64_fibo_arg.? (Poly) Int)

;; Spec-Termination crate::fibo
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/summer_school-9d3e788a530b70ff-e18_pass/test.rs:15:6: 15:30 (#0)
(get-info :all-statistics)
(push)
 (declare-const val! Poly)
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
  (has_type val! NAT)
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= decrease%init0 (%I val!))
    (or
     (and
      (=>
       (= (%I val!) 0)
       (=>
        (= tmp%6 0)
        %%switch_label%%0
      ))
      (=>
       (not (= (%I val!) 0))
       (or
        (and
         (=>
          (= (%I val!) 1)
          (=>
           (= tmp%5 1)
           %%switch_label%%1
         ))
         (=>
          (not (= (%I val!) 1))
          (=>
           (= tmp%2 (I (nClip (Sub (%I val!) 2))))
           (and
            (=>
             %%location_label%%0
             (check_decrease_int (let
               ((val!$0 (%I tmp%2)))
               val!$0
              ) decrease%init0 false
            ))
            (=>
             (<= 0 tmp%1)
             (=>
              (= tmp%1 (fibo.? (I (nClip (Sub (%I val!) 2)))))
              (=>
               (= tmp%4 (I (nClip (Sub (%I val!) 1))))
               (and
                (=>
                 %%location_label%%1
                 (check_decrease_int (let
                   ((val!$0 (%I tmp%4)))
                   val!$0
                  ) decrease%init0 false
                ))
                (=>
                 (<= 0 tmp%3)
                 (=>
                  (= tmp%3 (fibo.? (I (nClip (Sub (%I val!) 1)))))
                  (=>
                   (= tmp%5 (nClip (Add tmp%1 tmp%3)))
                   %%switch_label%%1
        )))))))))))
        (and
         (not %%switch_label%%1)
         (=>
          (= tmp%6 tmp%5)
          %%switch_label%%0
     )))))
     (not %%switch_label%%0)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Axioms crate::fibo
(assert
 (fuel_bool_default fuel%fibo.)
)
(declare-const fuel_nat%fibo. Fuel)
(assert
 (forall ((val! Poly) (fuel% Fuel)) (!
   (= (rec%fibo.? val! fuel%) (rec%fibo.? val! zero))
   :pattern ((rec%fibo.? val! fuel%))
   :qid internal_fibo._fuel_to_zero_definition
   :skolemid skolem_internal_fibo._fuel_to_zero_definition
)))
(assert
 (forall ((val! Poly) (fuel% Fuel)) (!
   (=>
    (has_type val! NAT)
    (= (rec%fibo.? val! (succ fuel%)) (ite
      (= (%I val!) 0)
      0
      (ite
       (= (%I val!) 1)
       1
       (nClip (Add (rec%fibo.? (I (nClip (Sub (%I val!) 2))) fuel%) (rec%fibo.? (I (nClip (Sub
             (%I val!) 1
           ))
          ) fuel%
   )))))))
   :pattern ((rec%fibo.? val! (succ fuel%)))
   :qid internal_fibo._fuel_to_body_definition
   :skolemid skolem_internal_fibo._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%fibo.)
  (forall ((val! Poly)) (!
    (=>
     (has_type val! NAT)
     (= (fibo.? val!) (rec%fibo.? val! (succ fuel_nat%fibo.)))
    )
    :pattern ((fibo.? val!))
    :qid internal_fibo.?_definition
    :skolemid skolem_internal_fibo.?_definition
))))
(assert
 (forall ((val! Poly)) (!
   (=>
    (has_type val! NAT)
    (<= 0 (fibo.? val!))
   )
   :pattern ((fibo.? val!))
   :qid internal_fibo.?_pre_post_definition
   :skolemid skolem_internal_fibo.?_pre_post_definition
)))

;; Function-Axioms crate::max_u64_fibo_arg
(assert
 (fuel_bool_default fuel%max_u64_fibo_arg.)
)
(assert
 (=>
  (fuel_bool fuel%max_u64_fibo_arg.)
  (forall ((no%param Poly)) (!
    (= (max_u64_fibo_arg.? no%param) 20)
    :pattern ((max_u64_fibo_arg.? no%param))
    :qid internal_max_u64_fibo_arg.?_definition
    :skolemid skolem_internal_max_u64_fibo_arg.?_definition
))))
(assert
 (forall ((no%param Poly)) (!
   (=>
    (has_type no%param INT)
    (<= 0 (max_u64_fibo_arg.? no%param))
   )
   :pattern ((max_u64_fibo_arg.? no%param))
   :qid internal_max_u64_fibo_arg.?_pre_post_definition
   :skolemid skolem_internal_max_u64_fibo_arg.?_pre_post_definition
)))

;; Function-Specs crate::fibo_monotonic
(declare-fun req%fibo_monotonic. (Int Int) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((i! Int) (j! Int)) (!
   (= (req%fibo_monotonic. i! j!) (=>
     %%global_location_label%%0
     (<= i! j!)
   ))
   :pattern ((req%fibo_monotonic. i! j!))
   :qid internal_req__fibo_monotonic._definition
   :skolemid skolem_internal_req__fibo_monotonic._definition
)))
(declare-fun ens%fibo_monotonic. (Int Int) Bool)
(assert
 (forall ((i! Int) (j! Int)) (!
   (= (ens%fibo_monotonic. i! j!) (<= (fibo.? (I i!)) (fibo.? (I j!))))
   :pattern ((ens%fibo_monotonic. i! j!))
   :qid internal_ens__fibo_monotonic._definition
   :skolemid skolem_internal_ens__fibo_monotonic._definition
)))

;; Function-Def crate::fibo_monotonic
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/summer_school-9d3e788a530b70ff-e18_pass/test.rs:28:7: 28:40 (#0)
(get-info :all-statistics)
(push)
 (declare-const i! Int)
 (declare-const j! Int)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Int)
 (declare-const tmp%3 Int)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 i!)
 )
 (assert
  (<= 0 j!)
 )
 (assert
  (<= i! j!)
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 (declare-const %%switch_label%%2 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%4 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%5 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%6 Bool)
 (assert
  (not (=>
    (= decrease%init0 (Sub j! i!))
    (or
     (and
      (=>
       (and
        (< i! 2)
        (< j! 2)
       )
       %%switch_label%%0
      )
      (=>
       (not (and
         (< i! 2)
         (< j! 2)
       ))
       (or
        (and
         (=>
          (= i! j!)
          %%switch_label%%1
         )
         (=>
          (not (= i! j!))
          (or
           (and
            (=>
             (= i! (Sub j! 1))
             (=>
              (fuel_bool fuel%fibo.)
              (=>
               (exists ((fuel% Fuel)) (= fuel_nat%fibo. (succ fuel%)))
               (=>
                (= tmp%1 (nClip (Sub j! 1)))
                (and
                 (=>
                  %%location_label%%0
                  (check_decrease_int (let
                    ((i!$0 i!) (j!$1 tmp%1))
                    (Sub j!$1 i!$0)
                   ) decrease%init0 false
                 ))
                 (and
                  (=>
                   %%location_label%%1
                   (req%fibo_monotonic. i! tmp%1)
                  )
                  (=>
                   (ens%fibo_monotonic. i! tmp%1)
                   %%switch_label%%2
            )))))))
            (=>
             (not (= i! (Sub j! 1)))
             (=>
              (= tmp%2 (nClip (Sub j! 1)))
              (and
               (=>
                %%location_label%%2
                (check_decrease_int (let
                  ((i!$0 i!) (j!$1 tmp%2))
                  (Sub j!$1 i!$0)
                 ) decrease%init0 false
               ))
               (and
                (=>
                 %%location_label%%3
                 (req%fibo_monotonic. i! tmp%2)
                )
                (=>
                 (ens%fibo_monotonic. i! tmp%2)
                 (=>
                  (= tmp%3 (nClip (Sub j! 2)))
                  (and
                   (=>
                    %%location_label%%4
                    (check_decrease_int (let
                      ((i!$0 i!) (j!$1 tmp%3))
                      (Sub j!$1 i!$0)
                     ) decrease%init0 false
                   ))
                   (and
                    (=>
                     %%location_label%%5
                     (req%fibo_monotonic. i! tmp%3)
                    )
                    (=>
                     (ens%fibo_monotonic. i! tmp%3)
                     %%switch_label%%2
           ))))))))))
           (and
            (not %%switch_label%%2)
            %%switch_label%%1
        ))))
        (and
         (not %%switch_label%%1)
         %%switch_label%%0
     ))))
     (and
      (not %%switch_label%%0)
      (=>
       %%location_label%%6
       (<= (fibo.? (I i!)) (fibo.? (I j!)))
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::max_u64_fibo_arg_bound
(declare-fun ens%max_u64_fibo_arg_bound. (Int) Bool)
(assert
 (forall ((no%param Int)) (!
   (= (ens%max_u64_fibo_arg_bound. no%param) (forall ((i$ Poly)) (!
      (=>
       (has_type i$ NAT)
       (=>
        (< (%I i$) (max_u64_fibo_arg.? (I 0)))
        (< (fibo.? i$) 7000)
      ))
      :pattern ((fibo.? i$))
      :qid user_crate__max_u64_fibo_arg_bound_0
      :skolemid skolem_user_crate__max_u64_fibo_arg_bound_0
   )))
   :pattern ((ens%max_u64_fibo_arg_bound. no%param))
   :qid internal_ens__max_u64_fibo_arg_bound._definition
   :skolemid skolem_internal_ens__max_u64_fibo_arg_bound._definition
)))

;; Function-Def crate::max_u64_fibo_arg_bound
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/summer_school-9d3e788a530b70ff-e18_pass/test.rs:46:1: 46:28 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const i@ Poly)
 (declare-const j@ Poly)
 (assert
  fuel_defaults
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     (fuel_bool fuel%fibo.)
     (=>
      (exists ((fuel% Fuel)) (= fuel_nat%fibo. (succ (succ (succ (succ (succ (succ (succ (succ (succ
                 (succ fuel%)
      )))))))))))
      (=>
       %%location_label%%0
       (= (fibo.? (I 20)) 6765)
    )))
    (=>
     (= (fibo.? (I 20)) 6765)
     (and
      (=>
       (has_type i@ NAT)
       (=>
        (has_type j@ NAT)
        (=>
         (<= (%I i@) (%I j@))
         (and
          (=>
           %%location_label%%1
           (req%fibo_monotonic. (%I i@) (%I j@))
          )
          (=>
           (ens%fibo_monotonic. (%I i@) (%I j@))
           (=>
            %%location_label%%2
            (<= (fibo.? i@) (fibo.? j@))
      ))))))
      (=>
       (forall ((i$ Poly) (j$ Poly)) (!
         (=>
          (and
           (has_type i$ NAT)
           (has_type j$ NAT)
          )
          (=>
           (<= (%I i$) (%I j$))
           (<= (fibo.? i$) (fibo.? j$))
         ))
         :pattern ((fibo.? i$) (fibo.? j$))
         :qid user_crate__max_u64_fibo_arg_bound_3
         :skolemid skolem_user_crate__max_u64_fibo_arg_bound_3
       ))
       (=>
        %%location_label%%3
        (forall ((i$ Poly)) (!
          (=>
           (has_type i$ NAT)
           (=>
            (< (%I i$) (max_u64_fibo_arg.? (I 0)))
            (< (fibo.? i$) 7000)
          ))
          :pattern ((fibo.? i$))
          :qid user_crate__max_u64_fibo_arg_bound_1
          :skolemid skolem_user_crate__max_u64_fibo_arg_bound_1
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::fibo_recursive_impl
(declare-fun req%fibo_recursive_impl. (Int) Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((val! Int)) (!
   (= (req%fibo_recursive_impl. val!) (=>
     %%global_location_label%%1
     (< val! (max_u64_fibo_arg.? (I 0)))
   ))
   :pattern ((req%fibo_recursive_impl. val!))
   :qid internal_req__fibo_recursive_impl._definition
   :skolemid skolem_internal_req__fibo_recursive_impl._definition
)))
(declare-fun ens%fibo_recursive_impl. (Int Int) Bool)
(assert
 (forall ((val! Int) (f! Int)) (!
   (= (ens%fibo_recursive_impl. val! f!) (and
     (uInv 64 f!)
     (= (fibo.? (I val!)) f!)
   ))
   :pattern ((ens%fibo_recursive_impl. val! f!))
   :qid internal_ens__fibo_recursive_impl._definition
   :skolemid skolem_internal_ens__fibo_recursive_impl._definition
)))

;; Function-Def crate::fibo_recursive_impl
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/summer_school-9d3e788a530b70ff-e18_pass/test.rs:63:1: 63:44 (#0)
(get-info :all-statistics)
(push)
 (declare-const f! Int)
 (declare-const val! Int)
 (declare-const tmp%1 Int)
 (declare-const tmp%2 Int)
 (declare-const tmp%3 Int)
 (declare-const tmp%4 Int)
 (declare-const tmp%5 Int)
 (declare-const tmp%6 Int)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 val!)
 )
 (assert
  (< val! (max_u64_fibo_arg.? (I 0)))
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; possible arithmetic underflow/overflow
 (declare-const %%location_label%%0 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; possible arithmetic underflow/overflow
 (declare-const %%location_label%%3 Bool)
 ;; could not prove termination
 (declare-const %%location_label%%4 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%5 Bool)
 ;; possible arithmetic underflow/overflow
 (declare-const %%location_label%%6 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%7 Bool)
 (assert
  (not (=>
    (= decrease%init0 val!)
    (=>
     (> val! 1)
     (=>
      (ens%max_u64_fibo_arg_bound. 0)
      (or
       (and
        (=>
         (= val! 0)
         (=>
          (= tmp%6 0)
          %%switch_label%%0
        ))
        (=>
         (not (= val! 0))
         (or
          (and
           (=>
            (= val! 1)
            (=>
             (= tmp%5 1)
             %%switch_label%%1
           ))
           (=>
            (not (= val! 1))
            (and
             (=>
              %%location_label%%0
              (uInv 64 (Sub val! 2))
             )
             (=>
              (= tmp%2 (uClip 64 (Sub val! 2)))
              (and
               (=>
                %%location_label%%1
                (check_decrease_int (let
                  ((val!$0 tmp%2))
                  val!$0
                 ) decrease%init0 false
               ))
               (and
                (=>
                 %%location_label%%2
                 (req%fibo_recursive_impl. tmp%2)
                )
                (=>
                 (ens%fibo_recursive_impl. tmp%2 tmp%1)
                 (and
                  (=>
                   %%location_label%%3
                   (uInv 64 (Sub val! 1))
                  )
                  (=>
                   (= tmp%4 (uClip 64 (Sub val! 1)))
                   (and
                    (=>
                     %%location_label%%4
                     (check_decrease_int (let
                       ((val!$0 tmp%4))
                       val!$0
                      ) decrease%init0 false
                    ))
                    (and
                     (=>
                      %%location_label%%5
                      (req%fibo_recursive_impl. tmp%4)
                     )
                     (=>
                      (ens%fibo_recursive_impl. tmp%4 tmp%3)
                      (and
                       (=>
                        %%location_label%%6
                        (uInv 64 (Add tmp%1 tmp%3))
                       )
                       (=>
                        (= tmp%5 (uClip 64 (Add tmp%1 tmp%3)))
                        %%switch_label%%1
          ))))))))))))))
          (and
           (not %%switch_label%%1)
           (=>
            (= tmp%6 tmp%5)
            %%switch_label%%0
       )))))
       (and
        (not %%switch_label%%0)
        (=>
         (= f! tmp%6)
         (=>
          %%location_label%%7
          (= (fibo.? (I val!)) f!)
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::check
(declare-fun ens%check. (Int) Bool)
(assert
 (forall ((no%param Int)) (!
   (= (ens%check. no%param) (and
     (= (fibo.? (I 0)) 0)
     (= (fibo.? (I 20)) 6765)
   ))
   :pattern ((ens%check. no%param))
   :qid internal_ens__check._definition
   :skolemid skolem_internal_ens__check._definition
)))

;; Function-Def crate::check
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/summer_school-9d3e788a530b70ff-e18_pass/test.rs:79:7: 79:17 (#0)
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
 (assert
  (not (=>
    (fuel_bool fuel%fibo.)
    (=>
     (exists ((fuel% Fuel)) (= fuel_nat%fibo. (succ (succ (succ (succ (succ (succ (succ (succ (succ
                (succ fuel%)
     )))))))))))
     (and
      (=>
       %%location_label%%0
       (= (fibo.? (I 0)) 0)
      )
      (=>
       %%location_label%%1
       (= (fibo.? (I 20)) 6765)
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::main
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/summer_school-9d3e788a530b70ff-e18_pass/test.rs:91:5: 94:6 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const f@ Int)
 (declare-const x@0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 x@0)
 )
 (declare-const x@1 Int)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; possible arithmetic underflow/overflow
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (< x@0 20)
    (and
     (=>
      %%location_label%%0
      (req%fibo_recursive_impl. x@0)
     )
     (=>
      (ens%fibo_recursive_impl. x@0 f@)
      (=>
       %%location_label%%1
       (uInv 64 (Add x@0 1))
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::main
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/summer_school-9d3e788a530b70ff-e18_pass/test.rs:89:1: 89:10 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const f@ Int)
 (declare-const x@0 Int)
 (assert
  fuel_defaults
 )
 (declare-const x@1 Int)
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
