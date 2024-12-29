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

;; MODULE 'module vstd::rwlock::RwLockToks'

;; Fuel
(declare-const fuel%vstd.std_specs.option.impl&%0.is_Some. FuelId)
(declare-const fuel%vstd.std_specs.option.impl&%0.get_Some_0. FuelId)
(declare-const fuel%vstd.std_specs.option.impl&%0.is_None. FuelId)
(declare-const fuel%vstd.std_specs.option.is_some. FuelId)
(declare-const fuel%vstd.std_specs.option.is_none. FuelId)
(declare-const fuel%vstd.std_specs.option.spec_unwrap. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%0.arrow_release_exc_0. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%0.arrow_release_shared_0. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%0.arrow_dummy_to_use_type_params_0.
 FuelId
)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%1.is_acquire_read_start. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%1.is_acquire_read_end. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%1.is_acquire_read_abandon. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%1.is_acquire_exc_start. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%1.is_acquire_exc_end. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%1.is_release_exc. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%1.get_release_exc_0. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%1.is_release_shared. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%1.get_release_shared_0. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%1.is_dummy_to_use_type_params. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%1.get_dummy_to_use_type_params_0.
 FuelId
)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%2.arrow_1. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%2.arrow_initialize_full_0. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%2.arrow_initialize_full_1. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%2.arrow_dummy_to_use_type_params_0.
 FuelId
)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%3.is_initialize_full. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%3.get_initialize_full_0. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%3.get_initialize_full_1. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%3.is_dummy_to_use_type_params. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%3.get_dummy_to_use_type_params_0.
 FuelId
)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.initialize_full. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.initialize_full_enabled. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_start. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_start_strong. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_start_enabled. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_end. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_end_strong. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_end_enabled. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon_strong. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon_enabled.
 FuelId
)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start_strong. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start_enabled. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end_strong. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end_enabled. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.release_exc. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.release_exc_strong. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.release_exc_enabled. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.release_shared. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.release_shared_strong. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.release_shared_enabled. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.next_by. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.next. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.next_strong_by. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.next_strong. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.init_by. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.init. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.invariant. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.exc_bit_matches. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.count_matches. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.reader_agrees_storage. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.writer_agrees_storage. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.writer_agrees_storage_rev. FuelId)
(declare-const fuel%vstd.rwlock.RwLockToks.impl&%23.sto_user_inv. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.insert. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.remove. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_empty. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_singleton. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_singleton_different. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_add. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_sub. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_ext_equal. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_ext_equal_deep. FuelId)
(declare-const fuel%vstd.tokens.option_value_eq_option_token. FuelId)
(declare-const fuel%vstd.multiset.group_multiset_axioms. FuelId)
(assert
 (distinct fuel%vstd.std_specs.option.impl&%0.is_Some. fuel%vstd.std_specs.option.impl&%0.get_Some_0.
  fuel%vstd.std_specs.option.impl&%0.is_None. fuel%vstd.std_specs.option.is_some. fuel%vstd.std_specs.option.is_none.
  fuel%vstd.std_specs.option.spec_unwrap. fuel%vstd.rwlock.RwLockToks.impl&%0.arrow_release_exc_0.
  fuel%vstd.rwlock.RwLockToks.impl&%0.arrow_release_shared_0. fuel%vstd.rwlock.RwLockToks.impl&%0.arrow_dummy_to_use_type_params_0.
  fuel%vstd.rwlock.RwLockToks.impl&%1.is_acquire_read_start. fuel%vstd.rwlock.RwLockToks.impl&%1.is_acquire_read_end.
  fuel%vstd.rwlock.RwLockToks.impl&%1.is_acquire_read_abandon. fuel%vstd.rwlock.RwLockToks.impl&%1.is_acquire_exc_start.
  fuel%vstd.rwlock.RwLockToks.impl&%1.is_acquire_exc_end. fuel%vstd.rwlock.RwLockToks.impl&%1.is_release_exc.
  fuel%vstd.rwlock.RwLockToks.impl&%1.get_release_exc_0. fuel%vstd.rwlock.RwLockToks.impl&%1.is_release_shared.
  fuel%vstd.rwlock.RwLockToks.impl&%1.get_release_shared_0. fuel%vstd.rwlock.RwLockToks.impl&%1.is_dummy_to_use_type_params.
  fuel%vstd.rwlock.RwLockToks.impl&%1.get_dummy_to_use_type_params_0. fuel%vstd.rwlock.RwLockToks.impl&%2.arrow_1.
  fuel%vstd.rwlock.RwLockToks.impl&%2.arrow_initialize_full_0. fuel%vstd.rwlock.RwLockToks.impl&%2.arrow_initialize_full_1.
  fuel%vstd.rwlock.RwLockToks.impl&%2.arrow_dummy_to_use_type_params_0. fuel%vstd.rwlock.RwLockToks.impl&%3.is_initialize_full.
  fuel%vstd.rwlock.RwLockToks.impl&%3.get_initialize_full_0. fuel%vstd.rwlock.RwLockToks.impl&%3.get_initialize_full_1.
  fuel%vstd.rwlock.RwLockToks.impl&%3.is_dummy_to_use_type_params. fuel%vstd.rwlock.RwLockToks.impl&%3.get_dummy_to_use_type_params_0.
  fuel%vstd.rwlock.RwLockToks.impl&%23.initialize_full. fuel%vstd.rwlock.RwLockToks.impl&%23.initialize_full_enabled.
  fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_start. fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_start_strong.
  fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_start_enabled. fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_end.
  fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_end_strong. fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_end_enabled.
  fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon. fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon_strong.
  fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon_enabled. fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start.
  fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start_strong. fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start_enabled.
  fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end. fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end_strong.
  fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end_enabled. fuel%vstd.rwlock.RwLockToks.impl&%23.release_exc.
  fuel%vstd.rwlock.RwLockToks.impl&%23.release_exc_strong. fuel%vstd.rwlock.RwLockToks.impl&%23.release_exc_enabled.
  fuel%vstd.rwlock.RwLockToks.impl&%23.release_shared. fuel%vstd.rwlock.RwLockToks.impl&%23.release_shared_strong.
  fuel%vstd.rwlock.RwLockToks.impl&%23.release_shared_enabled. fuel%vstd.rwlock.RwLockToks.impl&%23.next_by.
  fuel%vstd.rwlock.RwLockToks.impl&%23.next. fuel%vstd.rwlock.RwLockToks.impl&%23.next_strong_by.
  fuel%vstd.rwlock.RwLockToks.impl&%23.next_strong. fuel%vstd.rwlock.RwLockToks.impl&%23.init_by.
  fuel%vstd.rwlock.RwLockToks.impl&%23.init. fuel%vstd.rwlock.RwLockToks.impl&%23.invariant.
  fuel%vstd.rwlock.RwLockToks.impl&%23.exc_bit_matches. fuel%vstd.rwlock.RwLockToks.impl&%23.count_matches.
  fuel%vstd.rwlock.RwLockToks.impl&%23.reader_agrees_storage. fuel%vstd.rwlock.RwLockToks.impl&%23.writer_agrees_storage.
  fuel%vstd.rwlock.RwLockToks.impl&%23.writer_agrees_storage_rev. fuel%vstd.rwlock.RwLockToks.impl&%23.sto_user_inv.
  fuel%vstd.multiset.impl&%0.insert. fuel%vstd.multiset.impl&%0.remove. fuel%vstd.multiset.axiom_multiset_empty.
  fuel%vstd.multiset.axiom_multiset_singleton. fuel%vstd.multiset.axiom_multiset_singleton_different.
  fuel%vstd.multiset.axiom_multiset_add. fuel%vstd.multiset.axiom_multiset_sub. fuel%vstd.multiset.axiom_multiset_ext_equal.
  fuel%vstd.multiset.axiom_multiset_ext_equal_deep. fuel%vstd.tokens.option_value_eq_option_token.
  fuel%vstd.multiset.group_multiset_axioms.
))
(assert
 (=>
  (fuel_bool_default fuel%vstd.multiset.group_multiset_axioms.)
  (and
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_empty.)
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_singleton.)
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_singleton_different.)
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_add.)
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_sub.)
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_ext_equal.)
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_ext_equal_deep.)
)))

;; Datatypes
(declare-sort vstd.multiset.Multiset<tuple%0.>. 0)
(declare-sort vstd.state_machine_internal.NoCopy. 0)
(declare-datatypes ((core!option.Option. 0) (core!marker.PhantomData. 0) (vstd.rwlock.RwLockToks.State.
   0
  ) (vstd.rwlock.RwLockToks.Step. 0) (vstd.rwlock.RwLockToks.Config. 0) (vstd.rwlock.RwLockToks.Instance.
   0
  ) (vstd.rwlock.RwLockToks.flag_exc. 0) (vstd.rwlock.RwLockToks.flag_rc. 0) (vstd.rwlock.RwLockToks.pending_writer.
   0
  ) (vstd.rwlock.RwLockToks.writer. 0) (vstd.rwlock.RwLockToks.pending_reader. 0) (
   vstd.rwlock.RwLockToks.reader. 0
  ) (vstd.tokens.InstanceId. 0) (tuple%0. 0) (tuple%1. 0) (tuple%2. 0) (tuple%3. 0)
  (tuple%7. 0)
 ) (((core!option.Option./None) (core!option.Option./Some (core!option.Option./Some/?0
     Poly
   ))
  ) ((core!marker.PhantomData./PhantomData)) ((vstd.rwlock.RwLockToks.State./State (vstd.rwlock.RwLockToks.State./State/?k
     Poly
    ) (vstd.rwlock.RwLockToks.State./State/?pred core!marker.PhantomData.) (vstd.rwlock.RwLockToks.State./State/?flag_exc
     Bool
    ) (vstd.rwlock.RwLockToks.State./State/?flag_rc Int) (vstd.rwlock.RwLockToks.State./State/?storage
     core!option.Option.
    ) (vstd.rwlock.RwLockToks.State./State/?pending_writer core!option.Option.) (vstd.rwlock.RwLockToks.State./State/?writer
     core!option.Option.
    ) (vstd.rwlock.RwLockToks.State./State/?pending_reader vstd.multiset.Multiset<tuple%0.>.)
    (vstd.rwlock.RwLockToks.State./State/?reader Poly)
   )
  ) ((vstd.rwlock.RwLockToks.Step./acquire_read_start) (vstd.rwlock.RwLockToks.Step./acquire_read_end)
   (vstd.rwlock.RwLockToks.Step./acquire_read_abandon) (vstd.rwlock.RwLockToks.Step./acquire_exc_start)
   (vstd.rwlock.RwLockToks.Step./acquire_exc_end) (vstd.rwlock.RwLockToks.Step./release_exc
    (vstd.rwlock.RwLockToks.Step./release_exc/?0 Poly)
   ) (vstd.rwlock.RwLockToks.Step./release_shared (vstd.rwlock.RwLockToks.Step./release_shared/?0
     Poly
    )
   ) (vstd.rwlock.RwLockToks.Step./dummy_to_use_type_params (vstd.rwlock.RwLockToks.Step./dummy_to_use_type_params/?0
     vstd.rwlock.RwLockToks.State.
   ))
  ) ((vstd.rwlock.RwLockToks.Config./initialize_full (vstd.rwlock.RwLockToks.Config./initialize_full/?0
     Poly
    ) (vstd.rwlock.RwLockToks.Config./initialize_full/?1 Poly)
   ) (vstd.rwlock.RwLockToks.Config./dummy_to_use_type_params (vstd.rwlock.RwLockToks.Config./dummy_to_use_type_params/?0
     vstd.rwlock.RwLockToks.State.
   ))
  ) ((vstd.rwlock.RwLockToks.Instance./Instance (vstd.rwlock.RwLockToks.Instance./Instance/?send_sync
     Poly
    ) (vstd.rwlock.RwLockToks.Instance./Instance/?state core!option.Option.) (vstd.rwlock.RwLockToks.Instance./Instance/?location
     Int
   ))
  ) ((vstd.rwlock.RwLockToks.flag_exc./flag_exc (vstd.rwlock.RwLockToks.flag_exc./flag_exc/?dummy_instance
     vstd.rwlock.RwLockToks.Instance.
    ) (vstd.rwlock.RwLockToks.flag_exc./flag_exc/?no_copy vstd.state_machine_internal.NoCopy.)
   )
  ) ((vstd.rwlock.RwLockToks.flag_rc./flag_rc (vstd.rwlock.RwLockToks.flag_rc./flag_rc/?dummy_instance
     vstd.rwlock.RwLockToks.Instance.
    ) (vstd.rwlock.RwLockToks.flag_rc./flag_rc/?no_copy vstd.state_machine_internal.NoCopy.)
   )
  ) ((vstd.rwlock.RwLockToks.pending_writer./pending_writer (vstd.rwlock.RwLockToks.pending_writer./pending_writer/?dummy_instance
     vstd.rwlock.RwLockToks.Instance.
    ) (vstd.rwlock.RwLockToks.pending_writer./pending_writer/?no_copy vstd.state_machine_internal.NoCopy.)
   )
  ) ((vstd.rwlock.RwLockToks.writer./writer (vstd.rwlock.RwLockToks.writer./writer/?dummy_instance
     vstd.rwlock.RwLockToks.Instance.
    ) (vstd.rwlock.RwLockToks.writer./writer/?no_copy vstd.state_machine_internal.NoCopy.)
   )
  ) ((vstd.rwlock.RwLockToks.pending_reader./pending_reader (vstd.rwlock.RwLockToks.pending_reader./pending_reader/?dummy_instance
     vstd.rwlock.RwLockToks.Instance.
    ) (vstd.rwlock.RwLockToks.pending_reader./pending_reader/?no_copy vstd.state_machine_internal.NoCopy.)
   )
  ) ((vstd.rwlock.RwLockToks.reader./reader (vstd.rwlock.RwLockToks.reader./reader/?dummy_instance
     vstd.rwlock.RwLockToks.Instance.
    ) (vstd.rwlock.RwLockToks.reader./reader/?no_copy vstd.state_machine_internal.NoCopy.)
   )
  ) ((vstd.tokens.InstanceId./InstanceId (vstd.tokens.InstanceId./InstanceId/?0 Int)))
  ((tuple%0./tuple%0)) ((tuple%1./tuple%1 (tuple%1./tuple%1/?0 Poly))) ((tuple%2./tuple%2
    (tuple%2./tuple%2/?0 Poly) (tuple%2./tuple%2/?1 Poly)
   )
  ) ((tuple%3./tuple%3 (tuple%3./tuple%3/?0 Poly) (tuple%3./tuple%3/?1 Poly) (tuple%3./tuple%3/?2
     Poly
   ))
  ) ((tuple%7./tuple%7 (tuple%7./tuple%7/?0 Poly) (tuple%7./tuple%7/?1 Poly) (tuple%7./tuple%7/?2
     Poly
    ) (tuple%7./tuple%7/?3 Poly) (tuple%7./tuple%7/?4 Poly) (tuple%7./tuple%7/?5 Poly)
    (tuple%7./tuple%7/?6 Poly)
))))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun vstd.rwlock.RwLockToks.State./State/k (vstd.rwlock.RwLockToks.State.)
 Poly
)
(declare-fun vstd.rwlock.RwLockToks.State./State/pred (vstd.rwlock.RwLockToks.State.)
 core!marker.PhantomData.
)
(declare-fun vstd.rwlock.RwLockToks.State./State/flag_exc (vstd.rwlock.RwLockToks.State.)
 Bool
)
(declare-fun vstd.rwlock.RwLockToks.State./State/flag_rc (vstd.rwlock.RwLockToks.State.)
 Int
)
(declare-fun vstd.rwlock.RwLockToks.State./State/storage (vstd.rwlock.RwLockToks.State.)
 core!option.Option.
)
(declare-fun vstd.rwlock.RwLockToks.State./State/pending_writer (vstd.rwlock.RwLockToks.State.)
 core!option.Option.
)
(declare-fun vstd.rwlock.RwLockToks.State./State/writer (vstd.rwlock.RwLockToks.State.)
 core!option.Option.
)
(declare-fun vstd.rwlock.RwLockToks.State./State/pending_reader (vstd.rwlock.RwLockToks.State.)
 vstd.multiset.Multiset<tuple%0.>.
)
(declare-fun vstd.rwlock.RwLockToks.State./State/reader (vstd.rwlock.RwLockToks.State.)
 Poly
)
(declare-fun vstd.rwlock.RwLockToks.Step./release_exc/0 (vstd.rwlock.RwLockToks.Step.)
 Poly
)
(declare-fun vstd.rwlock.RwLockToks.Step./release_shared/0 (vstd.rwlock.RwLockToks.Step.)
 Poly
)
(declare-fun vstd.rwlock.RwLockToks.Step./dummy_to_use_type_params/0 (vstd.rwlock.RwLockToks.Step.)
 vstd.rwlock.RwLockToks.State.
)
(declare-fun vstd.rwlock.RwLockToks.Config./initialize_full/0 (vstd.rwlock.RwLockToks.Config.)
 Poly
)
(declare-fun vstd.rwlock.RwLockToks.Config./initialize_full/1 (vstd.rwlock.RwLockToks.Config.)
 Poly
)
(declare-fun vstd.rwlock.RwLockToks.Config./dummy_to_use_type_params/0 (vstd.rwlock.RwLockToks.Config.)
 vstd.rwlock.RwLockToks.State.
)
(declare-fun vstd.rwlock.RwLockToks.Instance./Instance/send_sync (vstd.rwlock.RwLockToks.Instance.)
 Poly
)
(declare-fun vstd.rwlock.RwLockToks.Instance./Instance/state (vstd.rwlock.RwLockToks.Instance.)
 core!option.Option.
)
(declare-fun vstd.rwlock.RwLockToks.Instance./Instance/location (vstd.rwlock.RwLockToks.Instance.)
 Int
)
(declare-fun vstd.rwlock.RwLockToks.flag_exc./flag_exc/dummy_instance (vstd.rwlock.RwLockToks.flag_exc.)
 vstd.rwlock.RwLockToks.Instance.
)
(declare-fun vstd.rwlock.RwLockToks.flag_exc./flag_exc/no_copy (vstd.rwlock.RwLockToks.flag_exc.)
 vstd.state_machine_internal.NoCopy.
)
(declare-fun vstd.rwlock.RwLockToks.flag_rc./flag_rc/dummy_instance (vstd.rwlock.RwLockToks.flag_rc.)
 vstd.rwlock.RwLockToks.Instance.
)
(declare-fun vstd.rwlock.RwLockToks.flag_rc./flag_rc/no_copy (vstd.rwlock.RwLockToks.flag_rc.)
 vstd.state_machine_internal.NoCopy.
)
(declare-fun vstd.rwlock.RwLockToks.pending_writer./pending_writer/dummy_instance
 (vstd.rwlock.RwLockToks.pending_writer.) vstd.rwlock.RwLockToks.Instance.
)
(declare-fun vstd.rwlock.RwLockToks.pending_writer./pending_writer/no_copy (vstd.rwlock.RwLockToks.pending_writer.)
 vstd.state_machine_internal.NoCopy.
)
(declare-fun vstd.rwlock.RwLockToks.writer./writer/dummy_instance (vstd.rwlock.RwLockToks.writer.)
 vstd.rwlock.RwLockToks.Instance.
)
(declare-fun vstd.rwlock.RwLockToks.writer./writer/no_copy (vstd.rwlock.RwLockToks.writer.)
 vstd.state_machine_internal.NoCopy.
)
(declare-fun vstd.rwlock.RwLockToks.pending_reader./pending_reader/dummy_instance
 (vstd.rwlock.RwLockToks.pending_reader.) vstd.rwlock.RwLockToks.Instance.
)
(declare-fun vstd.rwlock.RwLockToks.pending_reader./pending_reader/no_copy (vstd.rwlock.RwLockToks.pending_reader.)
 vstd.state_machine_internal.NoCopy.
)
(declare-fun vstd.rwlock.RwLockToks.reader./reader/dummy_instance (vstd.rwlock.RwLockToks.reader.)
 vstd.rwlock.RwLockToks.Instance.
)
(declare-fun vstd.rwlock.RwLockToks.reader./reader/no_copy (vstd.rwlock.RwLockToks.reader.)
 vstd.state_machine_internal.NoCopy.
)
(declare-fun vstd.tokens.InstanceId./InstanceId/0 (vstd.tokens.InstanceId.) Int)
(declare-fun tuple%1./tuple%1/0 (tuple%1.) Poly)
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-fun tuple%3./tuple%3/0 (tuple%3.) Poly)
(declare-fun tuple%3./tuple%3/1 (tuple%3.) Poly)
(declare-fun tuple%3./tuple%3/2 (tuple%3.) Poly)
(declare-fun tuple%7./tuple%7/0 (tuple%7.) Poly)
(declare-fun tuple%7./tuple%7/1 (tuple%7.) Poly)
(declare-fun tuple%7./tuple%7/2 (tuple%7.) Poly)
(declare-fun tuple%7./tuple%7/3 (tuple%7.) Poly)
(declare-fun tuple%7./tuple%7/4 (tuple%7.) Poly)
(declare-fun tuple%7./tuple%7/5 (tuple%7.) Poly)
(declare-fun tuple%7./tuple%7/6 (tuple%7.) Poly)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-fun TYPE%core!marker.PhantomData. (Dcr Type) Type)
(declare-fun TYPE%vstd.rwlock.RwLockToks.State. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.rwlock.RwLockToks.Step. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.rwlock.RwLockToks.Config. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.rwlock.RwLockToks.Instance. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.rwlock.RwLockToks.flag_exc. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.rwlock.RwLockToks.flag_rc. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.rwlock.RwLockToks.pending_writer. (Dcr Type Dcr Type Dcr Type)
 Type
)
(declare-fun TYPE%vstd.rwlock.RwLockToks.writer. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.rwlock.RwLockToks.pending_reader. (Dcr Type Dcr Type Dcr Type)
 Type
)
(declare-fun TYPE%vstd.rwlock.RwLockToks.reader. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.multiset.Multiset. (Dcr Type) Type)
(declare-fun TYPE%vstd.state_machine_internal.SyncSendIfSyncSend. (Dcr Type) Type)
(declare-const TYPE%vstd.state_machine_internal.NoCopy. Type)
(declare-const TYPE%vstd.tokens.InstanceId. Type)
(declare-fun TYPE%vstd.tokens.MultisetToken. (Dcr Type Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%1. (Dcr Type) Type)
(declare-fun TYPE%tuple%2. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%tuple%3. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%tuple%7. (Dcr Type Dcr Type Dcr Type Dcr Type Dcr Type Dcr Type Dcr
  Type
 ) Type
)
(declare-fun FNDEF%core!clone.Clone.clone. (Dcr Type) Type)
(declare-fun Poly%vstd.multiset.Multiset<tuple%0.>. (vstd.multiset.Multiset<tuple%0.>.)
 Poly
)
(declare-fun %Poly%vstd.multiset.Multiset<tuple%0.>. (Poly) vstd.multiset.Multiset<tuple%0.>.)
(declare-fun Poly%vstd.state_machine_internal.NoCopy. (vstd.state_machine_internal.NoCopy.)
 Poly
)
(declare-fun %Poly%vstd.state_machine_internal.NoCopy. (Poly) vstd.state_machine_internal.NoCopy.)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
(declare-fun Poly%core!marker.PhantomData. (core!marker.PhantomData.) Poly)
(declare-fun %Poly%core!marker.PhantomData. (Poly) core!marker.PhantomData.)
(declare-fun Poly%vstd.rwlock.RwLockToks.State. (vstd.rwlock.RwLockToks.State.) Poly)
(declare-fun %Poly%vstd.rwlock.RwLockToks.State. (Poly) vstd.rwlock.RwLockToks.State.)
(declare-fun Poly%vstd.rwlock.RwLockToks.Step. (vstd.rwlock.RwLockToks.Step.) Poly)
(declare-fun %Poly%vstd.rwlock.RwLockToks.Step. (Poly) vstd.rwlock.RwLockToks.Step.)
(declare-fun Poly%vstd.rwlock.RwLockToks.Config. (vstd.rwlock.RwLockToks.Config.)
 Poly
)
(declare-fun %Poly%vstd.rwlock.RwLockToks.Config. (Poly) vstd.rwlock.RwLockToks.Config.)
(declare-fun Poly%vstd.rwlock.RwLockToks.Instance. (vstd.rwlock.RwLockToks.Instance.)
 Poly
)
(declare-fun %Poly%vstd.rwlock.RwLockToks.Instance. (Poly) vstd.rwlock.RwLockToks.Instance.)
(declare-fun Poly%vstd.rwlock.RwLockToks.flag_exc. (vstd.rwlock.RwLockToks.flag_exc.)
 Poly
)
(declare-fun %Poly%vstd.rwlock.RwLockToks.flag_exc. (Poly) vstd.rwlock.RwLockToks.flag_exc.)
(declare-fun Poly%vstd.rwlock.RwLockToks.flag_rc. (vstd.rwlock.RwLockToks.flag_rc.)
 Poly
)
(declare-fun %Poly%vstd.rwlock.RwLockToks.flag_rc. (Poly) vstd.rwlock.RwLockToks.flag_rc.)
(declare-fun Poly%vstd.rwlock.RwLockToks.pending_writer. (vstd.rwlock.RwLockToks.pending_writer.)
 Poly
)
(declare-fun %Poly%vstd.rwlock.RwLockToks.pending_writer. (Poly) vstd.rwlock.RwLockToks.pending_writer.)
(declare-fun Poly%vstd.rwlock.RwLockToks.writer. (vstd.rwlock.RwLockToks.writer.)
 Poly
)
(declare-fun %Poly%vstd.rwlock.RwLockToks.writer. (Poly) vstd.rwlock.RwLockToks.writer.)
(declare-fun Poly%vstd.rwlock.RwLockToks.pending_reader. (vstd.rwlock.RwLockToks.pending_reader.)
 Poly
)
(declare-fun %Poly%vstd.rwlock.RwLockToks.pending_reader. (Poly) vstd.rwlock.RwLockToks.pending_reader.)
(declare-fun Poly%vstd.rwlock.RwLockToks.reader. (vstd.rwlock.RwLockToks.reader.)
 Poly
)
(declare-fun %Poly%vstd.rwlock.RwLockToks.reader. (Poly) vstd.rwlock.RwLockToks.reader.)
(declare-fun Poly%vstd.tokens.InstanceId. (vstd.tokens.InstanceId.) Poly)
(declare-fun %Poly%vstd.tokens.InstanceId. (Poly) vstd.tokens.InstanceId.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%1. (tuple%1.) Poly)
(declare-fun %Poly%tuple%1. (Poly) tuple%1.)
(declare-fun Poly%tuple%2. (tuple%2.) Poly)
(declare-fun %Poly%tuple%2. (Poly) tuple%2.)
(declare-fun Poly%tuple%3. (tuple%3.) Poly)
(declare-fun %Poly%tuple%3. (Poly) tuple%3.)
(declare-fun Poly%tuple%7. (tuple%7.) Poly)
(declare-fun %Poly%tuple%7. (Poly) tuple%7.)
(assert
 (forall ((x vstd.multiset.Multiset<tuple%0.>.)) (!
   (= x (%Poly%vstd.multiset.Multiset<tuple%0.>. (Poly%vstd.multiset.Multiset<tuple%0.>.
      x
   )))
   :pattern ((Poly%vstd.multiset.Multiset<tuple%0.>. x))
   :qid internal_crate__vstd__multiset__Multiset<tuple__0.>_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__multiset__Multiset<tuple__0.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.multiset.Multiset. $ TYPE%tuple%0.))
    (= x (Poly%vstd.multiset.Multiset<tuple%0.>. (%Poly%vstd.multiset.Multiset<tuple%0.>.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd.multiset.Multiset. $ TYPE%tuple%0.)))
   :qid internal_crate__vstd__multiset__Multiset<tuple__0.>_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__multiset__Multiset<tuple__0.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.multiset.Multiset<tuple%0.>.)) (!
   (has_type (Poly%vstd.multiset.Multiset<tuple%0.>. x) (TYPE%vstd.multiset.Multiset.
     $ TYPE%tuple%0.
   ))
   :pattern ((has_type (Poly%vstd.multiset.Multiset<tuple%0.>. x) (TYPE%vstd.multiset.Multiset.
      $ TYPE%tuple%0.
   )))
   :qid internal_crate__vstd__multiset__Multiset<tuple__0.>_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__multiset__Multiset<tuple__0.>_has_type_always_definition
)))
(assert
 (forall ((x vstd.state_machine_internal.NoCopy.)) (!
   (= x (%Poly%vstd.state_machine_internal.NoCopy. (Poly%vstd.state_machine_internal.NoCopy.
      x
   )))
   :pattern ((Poly%vstd.state_machine_internal.NoCopy. x))
   :qid internal_crate__vstd__state_machine_internal__NoCopy_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__state_machine_internal__NoCopy_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.state_machine_internal.NoCopy.)
    (= x (Poly%vstd.state_machine_internal.NoCopy. (%Poly%vstd.state_machine_internal.NoCopy.
       x
   ))))
   :pattern ((has_type x TYPE%vstd.state_machine_internal.NoCopy.))
   :qid internal_crate__vstd__state_machine_internal__NoCopy_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__state_machine_internal__NoCopy_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.state_machine_internal.NoCopy.)) (!
   (has_type (Poly%vstd.state_machine_internal.NoCopy. x) TYPE%vstd.state_machine_internal.NoCopy.)
   :pattern ((has_type (Poly%vstd.state_machine_internal.NoCopy. x) TYPE%vstd.state_machine_internal.NoCopy.))
   :qid internal_crate__vstd__state_machine_internal__NoCopy_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__state_machine_internal__NoCopy_has_type_always_definition
)))
(assert
 (forall ((x core!option.Option.)) (!
   (= x (%Poly%core!option.Option. (Poly%core!option.Option. x)))
   :pattern ((Poly%core!option.Option. x))
   :qid internal_core__option__Option_box_axiom_definition
   :skolemid skolem_internal_core__option__Option_box_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!option.Option. V&. V&))
    (= x (Poly%core!option.Option. (%Poly%core!option.Option. x)))
   )
   :pattern ((has_type x (TYPE%core!option.Option. V&. V&)))
   :qid internal_core__option__Option_unbox_axiom_definition
   :skolemid skolem_internal_core__option__Option_unbox_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type)) (!
   (has_type (Poly%core!option.Option. core!option.Option./None) (TYPE%core!option.Option.
     V&. V&
   ))
   :pattern ((has_type (Poly%core!option.Option. core!option.Option./None) (TYPE%core!option.Option.
      V&. V&
   )))
   :qid internal_core!option.Option./None_constructor_definition
   :skolemid skolem_internal_core!option.Option./None_constructor_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (_0! Poly)) (!
   (=>
    (has_type _0! V&)
    (has_type (Poly%core!option.Option. (core!option.Option./Some _0!)) (TYPE%core!option.Option.
      V&. V&
   )))
   :pattern ((has_type (Poly%core!option.Option. (core!option.Option./Some _0!)) (TYPE%core!option.Option.
      V&. V&
   )))
   :qid internal_core!option.Option./Some_constructor_definition
   :skolemid skolem_internal_core!option.Option./Some_constructor_definition
)))
(assert
 (forall ((x core!option.Option.)) (!
   (= (core!option.Option./Some/0 x) (core!option.Option./Some/?0 x))
   :pattern ((core!option.Option./Some/0 x))
   :qid internal_core!option.Option./Some/0_accessor_definition
   :skolemid skolem_internal_core!option.Option./Some/0_accessor_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!option.Option. V&. V&))
    (has_type (core!option.Option./Some/0 (%Poly%core!option.Option. x)) V&)
   )
   :pattern ((core!option.Option./Some/0 (%Poly%core!option.Option. x)) (has_type x (TYPE%core!option.Option.
      V&. V&
   )))
   :qid internal_core!option.Option./Some/0_invariant_definition
   :skolemid skolem_internal_core!option.Option./Some/0_invariant_definition
)))
(assert
 (forall ((x core!option.Option.)) (!
   (=>
    (is-core!option.Option./Some x)
    (height_lt (height (core!option.Option./Some/0 x)) (height (Poly%core!option.Option.
       x
   ))))
   :pattern ((height (core!option.Option./Some/0 x)))
   :qid prelude_datatype_height_core!option.Option./Some/0
   :skolemid skolem_prelude_datatype_height_core!option.Option./Some/0
)))
(assert
 (forall ((V&. Dcr) (V& Type) (deep Bool) (x Poly) (y Poly)) (!
   (=>
    (and
     (has_type x (TYPE%core!option.Option. V&. V&))
     (has_type y (TYPE%core!option.Option. V&. V&))
     (is-core!option.Option./None (%Poly%core!option.Option. x))
     (is-core!option.Option./None (%Poly%core!option.Option. y))
    )
    (ext_eq deep (TYPE%core!option.Option. V&. V&) x y)
   )
   :pattern ((ext_eq deep (TYPE%core!option.Option. V&. V&) x y))
   :qid internal_core!option.Option./None_ext_equal_definition
   :skolemid skolem_internal_core!option.Option./None_ext_equal_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (deep Bool) (x Poly) (y Poly)) (!
   (=>
    (and
     (has_type x (TYPE%core!option.Option. V&. V&))
     (has_type y (TYPE%core!option.Option. V&. V&))
     (is-core!option.Option./Some (%Poly%core!option.Option. x))
     (is-core!option.Option./Some (%Poly%core!option.Option. y))
     (ext_eq deep V& (core!option.Option./Some/0 (%Poly%core!option.Option. x)) (core!option.Option./Some/0
       (%Poly%core!option.Option. y)
    )))
    (ext_eq deep (TYPE%core!option.Option. V&. V&) x y)
   )
   :pattern ((ext_eq deep (TYPE%core!option.Option. V&. V&) x y))
   :qid internal_core!option.Option./Some_ext_equal_definition
   :skolemid skolem_internal_core!option.Option./Some_ext_equal_definition
)))
(assert
 (forall ((x core!marker.PhantomData.)) (!
   (= x (%Poly%core!marker.PhantomData. (Poly%core!marker.PhantomData. x)))
   :pattern ((Poly%core!marker.PhantomData. x))
   :qid internal_core__marker__PhantomData_box_axiom_definition
   :skolemid skolem_internal_core__marker__PhantomData_box_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!marker.PhantomData. V&. V&))
    (= x (Poly%core!marker.PhantomData. (%Poly%core!marker.PhantomData. x)))
   )
   :pattern ((has_type x (TYPE%core!marker.PhantomData. V&. V&)))
   :qid internal_core__marker__PhantomData_unbox_axiom_definition
   :skolemid skolem_internal_core__marker__PhantomData_unbox_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (x core!marker.PhantomData.)) (!
   (has_type (Poly%core!marker.PhantomData. x) (TYPE%core!marker.PhantomData. V&. V&))
   :pattern ((has_type (Poly%core!marker.PhantomData. x) (TYPE%core!marker.PhantomData.
      V&. V&
   )))
   :qid internal_core__marker__PhantomData_has_type_always_definition
   :skolemid skolem_internal_core__marker__PhantomData_has_type_always_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (= x (%Poly%vstd.rwlock.RwLockToks.State. (Poly%vstd.rwlock.RwLockToks.State. x)))
   :pattern ((Poly%vstd.rwlock.RwLockToks.State. x))
   :qid internal_crate__vstd__rwlock__RwLockToks__State_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__State_box_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&))
    (= x (Poly%vstd.rwlock.RwLockToks.State. (%Poly%vstd.rwlock.RwLockToks.State. x)))
   )
   :pattern ((has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&)))
   :qid internal_crate__vstd__rwlock__RwLockToks__State_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__State_unbox_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (_k! Poly)
   (_pred! core!marker.PhantomData.) (_flag_exc! Bool) (_flag_rc! Int) (_storage! core!option.Option.)
   (_pending_writer! core!option.Option.) (_writer! core!option.Option.) (_pending_reader!
    vstd.multiset.Multiset<tuple%0.>.
   ) (_reader! Poly)
  ) (!
   (=>
    (and
     (has_type _k! K&)
     (<= 0 _flag_rc!)
     (has_type (Poly%core!option.Option. _storage!) (TYPE%core!option.Option. V&. V&))
     (has_type (Poly%core!option.Option. _pending_writer!) (TYPE%core!option.Option. $ TYPE%tuple%0.))
     (has_type (Poly%core!option.Option. _writer!) (TYPE%core!option.Option. $ TYPE%tuple%0.))
     (has_type _reader! (TYPE%vstd.multiset.Multiset. V&. V&))
    )
    (has_type (Poly%vstd.rwlock.RwLockToks.State. (vstd.rwlock.RwLockToks.State./State _k!
       _pred! _flag_exc! _flag_rc! _storage! _pending_writer! _writer! _pending_reader!
       _reader!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.rwlock.RwLockToks.State. (vstd.rwlock.RwLockToks.State./State
       _k! _pred! _flag_exc! _flag_rc! _storage! _pending_writer! _writer! _pending_reader!
       _reader!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.RwLockToks.State./State_constructor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State_constructor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (= (vstd.rwlock.RwLockToks.State./State/k x) (vstd.rwlock.RwLockToks.State./State/?k
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/k x))
   :qid internal_vstd.rwlock.RwLockToks.State./State/k_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/k_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
       x
      )
     ) K&
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.RwLockToks.State./State/k_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/k_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (= (vstd.rwlock.RwLockToks.State./State/pred x) (vstd.rwlock.RwLockToks.State./State/?pred
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/pred x))
   :qid internal_vstd.rwlock.RwLockToks.State./State/pred_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/pred_accessor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (= (vstd.rwlock.RwLockToks.State./State/flag_exc x) (vstd.rwlock.RwLockToks.State./State/?flag_exc
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/flag_exc x))
   :qid internal_vstd.rwlock.RwLockToks.State./State/flag_exc_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/flag_exc_accessor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (= (vstd.rwlock.RwLockToks.State./State/flag_rc x) (vstd.rwlock.RwLockToks.State./State/?flag_rc
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/flag_rc x))
   :qid internal_vstd.rwlock.RwLockToks.State./State/flag_rc_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/flag_rc_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&))
    (<= 0 (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
       x
   ))))
   :pattern ((vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.RwLockToks.State./State/flag_rc_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/flag_rc_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (= (vstd.rwlock.RwLockToks.State./State/storage x) (vstd.rwlock.RwLockToks.State./State/?storage
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/storage x))
   :qid internal_vstd.rwlock.RwLockToks.State./State/storage_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/storage_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&))
    (has_type (Poly%core!option.Option. (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
        x
      ))
     ) (TYPE%core!option.Option. V&. V&)
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.RwLockToks.State./State/storage_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/storage_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (= (vstd.rwlock.RwLockToks.State./State/pending_writer x) (vstd.rwlock.RwLockToks.State./State/?pending_writer
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/pending_writer x))
   :qid internal_vstd.rwlock.RwLockToks.State./State/pending_writer_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/pending_writer_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&))
    (has_type (Poly%core!option.Option. (vstd.rwlock.RwLockToks.State./State/pending_writer
       (%Poly%vstd.rwlock.RwLockToks.State. x)
      )
     ) (TYPE%core!option.Option. $ TYPE%tuple%0.)
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.RwLockToks.State./State/pending_writer_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/pending_writer_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (= (vstd.rwlock.RwLockToks.State./State/writer x) (vstd.rwlock.RwLockToks.State./State/?writer
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/writer x))
   :qid internal_vstd.rwlock.RwLockToks.State./State/writer_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/writer_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&))
    (has_type (Poly%core!option.Option. (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
        x
      ))
     ) (TYPE%core!option.Option. $ TYPE%tuple%0.)
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.RwLockToks.State./State/writer_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/writer_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (= (vstd.rwlock.RwLockToks.State./State/pending_reader x) (vstd.rwlock.RwLockToks.State./State/?pending_reader
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/pending_reader x))
   :qid internal_vstd.rwlock.RwLockToks.State./State/pending_reader_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/pending_reader_accessor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (= (vstd.rwlock.RwLockToks.State./State/reader x) (vstd.rwlock.RwLockToks.State./State/?reader
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/reader x))
   :qid internal_vstd.rwlock.RwLockToks.State./State/reader_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/reader_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
       x
      )
     ) (TYPE%vstd.multiset.Multiset. V&. V&)
   ))
   :pattern ((vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.RwLockToks.State./State/reader_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.State./State/reader_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (=>
    (is-vstd.rwlock.RwLockToks.State./State x)
    (height_lt (height (vstd.rwlock.RwLockToks.State./State/k x)) (height (Poly%vstd.rwlock.RwLockToks.State.
       x
   ))))
   :pattern ((height (vstd.rwlock.RwLockToks.State./State/k x)))
   :qid prelude_datatype_height_vstd.rwlock.RwLockToks.State./State/k
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.RwLockToks.State./State/k
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (=>
    (is-vstd.rwlock.RwLockToks.State./State x)
    (height_lt (height (Poly%core!marker.PhantomData. (vstd.rwlock.RwLockToks.State./State/pred
        x
      ))
     ) (height (Poly%vstd.rwlock.RwLockToks.State. x))
   ))
   :pattern ((height (Poly%core!marker.PhantomData. (vstd.rwlock.RwLockToks.State./State/pred
       x
   ))))
   :qid prelude_datatype_height_vstd.rwlock.RwLockToks.State./State/pred
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.RwLockToks.State./State/pred
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (=>
    (is-vstd.rwlock.RwLockToks.State./State x)
    (height_lt (height (Poly%core!option.Option. (vstd.rwlock.RwLockToks.State./State/storage
        x
      ))
     ) (height (Poly%vstd.rwlock.RwLockToks.State. x))
   ))
   :pattern ((height (Poly%core!option.Option. (vstd.rwlock.RwLockToks.State./State/storage
       x
   ))))
   :qid prelude_datatype_height_vstd.rwlock.RwLockToks.State./State/storage
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.RwLockToks.State./State/storage
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.State.)) (!
   (=>
    (is-vstd.rwlock.RwLockToks.State./State x)
    (height_lt (height (vstd.rwlock.RwLockToks.State./State/reader x)) (height (Poly%vstd.rwlock.RwLockToks.State.
       x
   ))))
   :pattern ((height (vstd.rwlock.RwLockToks.State./State/reader x)))
   :qid prelude_datatype_height_vstd.rwlock.RwLockToks.State./State/reader
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.RwLockToks.State./State/reader
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.Step.)) (!
   (= x (%Poly%vstd.rwlock.RwLockToks.Step. (Poly%vstd.rwlock.RwLockToks.Step. x)))
   :pattern ((Poly%vstd.rwlock.RwLockToks.Step. x))
   :qid internal_crate__vstd__rwlock__RwLockToks__Step_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__Step_box_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&))
    (= x (Poly%vstd.rwlock.RwLockToks.Step. (%Poly%vstd.rwlock.RwLockToks.Step. x)))
   )
   :pattern ((has_type x (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&)))
   :qid internal_crate__vstd__rwlock__RwLockToks__Step_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__Step_unbox_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type)) (!
   (has_type (Poly%vstd.rwlock.RwLockToks.Step. vstd.rwlock.RwLockToks.Step./acquire_read_start)
    (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&)
   )
   :pattern ((has_type (Poly%vstd.rwlock.RwLockToks.Step. vstd.rwlock.RwLockToks.Step./acquire_read_start)
     (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.RwLockToks.Step./acquire_read_start_constructor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Step./acquire_read_start_constructor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type)) (!
   (has_type (Poly%vstd.rwlock.RwLockToks.Step. vstd.rwlock.RwLockToks.Step./acquire_read_end)
    (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&)
   )
   :pattern ((has_type (Poly%vstd.rwlock.RwLockToks.Step. vstd.rwlock.RwLockToks.Step./acquire_read_end)
     (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.RwLockToks.Step./acquire_read_end_constructor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Step./acquire_read_end_constructor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type)) (!
   (has_type (Poly%vstd.rwlock.RwLockToks.Step. vstd.rwlock.RwLockToks.Step./acquire_read_abandon)
    (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&)
   )
   :pattern ((has_type (Poly%vstd.rwlock.RwLockToks.Step. vstd.rwlock.RwLockToks.Step./acquire_read_abandon)
     (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.RwLockToks.Step./acquire_read_abandon_constructor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Step./acquire_read_abandon_constructor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type)) (!
   (has_type (Poly%vstd.rwlock.RwLockToks.Step. vstd.rwlock.RwLockToks.Step./acquire_exc_start)
    (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&)
   )
   :pattern ((has_type (Poly%vstd.rwlock.RwLockToks.Step. vstd.rwlock.RwLockToks.Step./acquire_exc_start)
     (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.RwLockToks.Step./acquire_exc_start_constructor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Step./acquire_exc_start_constructor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type)) (!
   (has_type (Poly%vstd.rwlock.RwLockToks.Step. vstd.rwlock.RwLockToks.Step./acquire_exc_end)
    (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&)
   )
   :pattern ((has_type (Poly%vstd.rwlock.RwLockToks.Step. vstd.rwlock.RwLockToks.Step./acquire_exc_end)
     (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.RwLockToks.Step./acquire_exc_end_constructor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Step./acquire_exc_end_constructor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (_0! Poly))
  (!
   (=>
    (has_type _0! V&)
    (has_type (Poly%vstd.rwlock.RwLockToks.Step. (vstd.rwlock.RwLockToks.Step./release_exc
       _0!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.rwlock.RwLockToks.Step. (vstd.rwlock.RwLockToks.Step./release_exc
       _0!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.RwLockToks.Step./release_exc_constructor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Step./release_exc_constructor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.Step.)) (!
   (= (vstd.rwlock.RwLockToks.Step./release_exc/0 x) (vstd.rwlock.RwLockToks.Step./release_exc/?0
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.Step./release_exc/0 x))
   :qid internal_vstd.rwlock.RwLockToks.Step./release_exc/0_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Step./release_exc/0_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.RwLockToks.Step./release_exc/0 (%Poly%vstd.rwlock.RwLockToks.Step.
       x
      )
     ) V&
   ))
   :pattern ((vstd.rwlock.RwLockToks.Step./release_exc/0 (%Poly%vstd.rwlock.RwLockToks.Step.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.RwLockToks.Step./release_exc/0_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Step./release_exc/0_invariant_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (_0! Poly))
  (!
   (=>
    (has_type _0! V&)
    (has_type (Poly%vstd.rwlock.RwLockToks.Step. (vstd.rwlock.RwLockToks.Step./release_shared
       _0!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.rwlock.RwLockToks.Step. (vstd.rwlock.RwLockToks.Step./release_shared
       _0!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.RwLockToks.Step./release_shared_constructor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Step./release_shared_constructor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.Step.)) (!
   (= (vstd.rwlock.RwLockToks.Step./release_shared/0 x) (vstd.rwlock.RwLockToks.Step./release_shared/?0
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.Step./release_shared/0 x))
   :qid internal_vstd.rwlock.RwLockToks.Step./release_shared/0_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Step./release_shared/0_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.RwLockToks.Step./release_shared/0 (%Poly%vstd.rwlock.RwLockToks.Step.
       x
      )
     ) V&
   ))
   :pattern ((vstd.rwlock.RwLockToks.Step./release_shared/0 (%Poly%vstd.rwlock.RwLockToks.Step.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.RwLockToks.Step./release_shared/0_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Step./release_shared/0_invariant_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (_0! vstd.rwlock.RwLockToks.State.))
  (!
   (=>
    (has_type (Poly%vstd.rwlock.RwLockToks.State. _0!) (TYPE%vstd.rwlock.RwLockToks.State.
      K&. K& V&. V& Pred&. Pred&
    ))
    (has_type (Poly%vstd.rwlock.RwLockToks.Step. (vstd.rwlock.RwLockToks.Step./dummy_to_use_type_params
       _0!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.rwlock.RwLockToks.Step. (vstd.rwlock.RwLockToks.Step./dummy_to_use_type_params
       _0!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.RwLockToks.Step./dummy_to_use_type_params_constructor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Step./dummy_to_use_type_params_constructor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.Step.)) (!
   (= (vstd.rwlock.RwLockToks.Step./dummy_to_use_type_params/0 x) (vstd.rwlock.RwLockToks.Step./dummy_to_use_type_params/?0
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.Step./dummy_to_use_type_params/0 x))
   :qid internal_vstd.rwlock.RwLockToks.Step./dummy_to_use_type_params/0_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Step./dummy_to_use_type_params/0_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&))
    (has_type (Poly%vstd.rwlock.RwLockToks.State. (vstd.rwlock.RwLockToks.Step./dummy_to_use_type_params/0
       (%Poly%vstd.rwlock.RwLockToks.Step. x)
      )
     ) (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&)
   ))
   :pattern ((vstd.rwlock.RwLockToks.Step./dummy_to_use_type_params/0 (%Poly%vstd.rwlock.RwLockToks.Step.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.RwLockToks.Step./dummy_to_use_type_params/0_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Step./dummy_to_use_type_params/0_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.Step.)) (!
   (=>
    (is-vstd.rwlock.RwLockToks.Step./release_exc x)
    (height_lt (height (vstd.rwlock.RwLockToks.Step./release_exc/0 x)) (height (Poly%vstd.rwlock.RwLockToks.Step.
       x
   ))))
   :pattern ((height (vstd.rwlock.RwLockToks.Step./release_exc/0 x)))
   :qid prelude_datatype_height_vstd.rwlock.RwLockToks.Step./release_exc/0
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.RwLockToks.Step./release_exc/0
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.Step.)) (!
   (=>
    (is-vstd.rwlock.RwLockToks.Step./release_shared x)
    (height_lt (height (vstd.rwlock.RwLockToks.Step./release_shared/0 x)) (height (Poly%vstd.rwlock.RwLockToks.Step.
       x
   ))))
   :pattern ((height (vstd.rwlock.RwLockToks.Step./release_shared/0 x)))
   :qid prelude_datatype_height_vstd.rwlock.RwLockToks.Step./release_shared/0
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.RwLockToks.Step./release_shared/0
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.Step.)) (!
   (=>
    (is-vstd.rwlock.RwLockToks.Step./dummy_to_use_type_params x)
    (height_lt (height (Poly%vstd.rwlock.RwLockToks.State. (vstd.rwlock.RwLockToks.Step./dummy_to_use_type_params/0
        x
      ))
     ) (height (Poly%vstd.rwlock.RwLockToks.Step. x))
   ))
   :pattern ((height (Poly%vstd.rwlock.RwLockToks.State. (vstd.rwlock.RwLockToks.Step./dummy_to_use_type_params/0
       x
   ))))
   :qid prelude_datatype_height_vstd.rwlock.RwLockToks.Step./dummy_to_use_type_params/0
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.RwLockToks.Step./dummy_to_use_type_params/0
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.Config.)) (!
   (= x (%Poly%vstd.rwlock.RwLockToks.Config. (Poly%vstd.rwlock.RwLockToks.Config. x)))
   :pattern ((Poly%vstd.rwlock.RwLockToks.Config. x))
   :qid internal_crate__vstd__rwlock__RwLockToks__Config_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__Config_box_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.Config. K&. K& V&. V& Pred&. Pred&))
    (= x (Poly%vstd.rwlock.RwLockToks.Config. (%Poly%vstd.rwlock.RwLockToks.Config. x)))
   )
   :pattern ((has_type x (TYPE%vstd.rwlock.RwLockToks.Config. K&. K& V&. V& Pred&. Pred&)))
   :qid internal_crate__vstd__rwlock__RwLockToks__Config_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__Config_unbox_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (_0! Poly)
   (_1! Poly)
  ) (!
   (=>
    (and
     (has_type _0! K&)
     (has_type _1! V&)
    )
    (has_type (Poly%vstd.rwlock.RwLockToks.Config. (vstd.rwlock.RwLockToks.Config./initialize_full
       _0! _1!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.Config. K&. K& V&. V& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.rwlock.RwLockToks.Config. (vstd.rwlock.RwLockToks.Config./initialize_full
       _0! _1!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.Config. K&. K& V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.RwLockToks.Config./initialize_full_constructor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Config./initialize_full_constructor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.Config.)) (!
   (= (vstd.rwlock.RwLockToks.Config./initialize_full/0 x) (vstd.rwlock.RwLockToks.Config./initialize_full/?0
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.Config./initialize_full/0 x))
   :qid internal_vstd.rwlock.RwLockToks.Config./initialize_full/0_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Config./initialize_full/0_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.Config. K&. K& V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.RwLockToks.Config./initialize_full/0 (%Poly%vstd.rwlock.RwLockToks.Config.
       x
      )
     ) K&
   ))
   :pattern ((vstd.rwlock.RwLockToks.Config./initialize_full/0 (%Poly%vstd.rwlock.RwLockToks.Config.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.RwLockToks.Config. K&. K& V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.RwLockToks.Config./initialize_full/0_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Config./initialize_full/0_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.Config.)) (!
   (= (vstd.rwlock.RwLockToks.Config./initialize_full/1 x) (vstd.rwlock.RwLockToks.Config./initialize_full/?1
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.Config./initialize_full/1 x))
   :qid internal_vstd.rwlock.RwLockToks.Config./initialize_full/1_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Config./initialize_full/1_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.Config. K&. K& V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.RwLockToks.Config./initialize_full/1 (%Poly%vstd.rwlock.RwLockToks.Config.
       x
      )
     ) V&
   ))
   :pattern ((vstd.rwlock.RwLockToks.Config./initialize_full/1 (%Poly%vstd.rwlock.RwLockToks.Config.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.RwLockToks.Config. K&. K& V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.RwLockToks.Config./initialize_full/1_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Config./initialize_full/1_invariant_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (_0! vstd.rwlock.RwLockToks.State.))
  (!
   (=>
    (has_type (Poly%vstd.rwlock.RwLockToks.State. _0!) (TYPE%vstd.rwlock.RwLockToks.State.
      K&. K& V&. V& Pred&. Pred&
    ))
    (has_type (Poly%vstd.rwlock.RwLockToks.Config. (vstd.rwlock.RwLockToks.Config./dummy_to_use_type_params
       _0!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.Config. K&. K& V&. V& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.rwlock.RwLockToks.Config. (vstd.rwlock.RwLockToks.Config./dummy_to_use_type_params
       _0!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.Config. K&. K& V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.RwLockToks.Config./dummy_to_use_type_params_constructor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Config./dummy_to_use_type_params_constructor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.Config.)) (!
   (= (vstd.rwlock.RwLockToks.Config./dummy_to_use_type_params/0 x) (vstd.rwlock.RwLockToks.Config./dummy_to_use_type_params/?0
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.Config./dummy_to_use_type_params/0 x))
   :qid internal_vstd.rwlock.RwLockToks.Config./dummy_to_use_type_params/0_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Config./dummy_to_use_type_params/0_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.Config. K&. K& V&. V& Pred&. Pred&))
    (has_type (Poly%vstd.rwlock.RwLockToks.State. (vstd.rwlock.RwLockToks.Config./dummy_to_use_type_params/0
       (%Poly%vstd.rwlock.RwLockToks.Config. x)
      )
     ) (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&)
   ))
   :pattern ((vstd.rwlock.RwLockToks.Config./dummy_to_use_type_params/0 (%Poly%vstd.rwlock.RwLockToks.Config.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.RwLockToks.Config. K&. K& V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.RwLockToks.Config./dummy_to_use_type_params/0_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Config./dummy_to_use_type_params/0_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.Config.)) (!
   (=>
    (is-vstd.rwlock.RwLockToks.Config./initialize_full x)
    (height_lt (height (vstd.rwlock.RwLockToks.Config./initialize_full/0 x)) (height (Poly%vstd.rwlock.RwLockToks.Config.
       x
   ))))
   :pattern ((height (vstd.rwlock.RwLockToks.Config./initialize_full/0 x)))
   :qid prelude_datatype_height_vstd.rwlock.RwLockToks.Config./initialize_full/0
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.RwLockToks.Config./initialize_full/0
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.Config.)) (!
   (=>
    (is-vstd.rwlock.RwLockToks.Config./initialize_full x)
    (height_lt (height (vstd.rwlock.RwLockToks.Config./initialize_full/1 x)) (height (Poly%vstd.rwlock.RwLockToks.Config.
       x
   ))))
   :pattern ((height (vstd.rwlock.RwLockToks.Config./initialize_full/1 x)))
   :qid prelude_datatype_height_vstd.rwlock.RwLockToks.Config./initialize_full/1
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.RwLockToks.Config./initialize_full/1
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.Config.)) (!
   (=>
    (is-vstd.rwlock.RwLockToks.Config./dummy_to_use_type_params x)
    (height_lt (height (Poly%vstd.rwlock.RwLockToks.State. (vstd.rwlock.RwLockToks.Config./dummy_to_use_type_params/0
        x
      ))
     ) (height (Poly%vstd.rwlock.RwLockToks.Config. x))
   ))
   :pattern ((height (Poly%vstd.rwlock.RwLockToks.State. (vstd.rwlock.RwLockToks.Config./dummy_to_use_type_params/0
       x
   ))))
   :qid prelude_datatype_height_vstd.rwlock.RwLockToks.Config./dummy_to_use_type_params/0
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.RwLockToks.Config./dummy_to_use_type_params/0
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.Instance.)) (!
   (= x (%Poly%vstd.rwlock.RwLockToks.Instance. (Poly%vstd.rwlock.RwLockToks.Instance.
      x
   )))
   :pattern ((Poly%vstd.rwlock.RwLockToks.Instance. x))
   :qid internal_crate__vstd__rwlock__RwLockToks__Instance_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__Instance_box_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.Instance. K&. K& V&. V& Pred&. Pred&))
    (= x (Poly%vstd.rwlock.RwLockToks.Instance. (%Poly%vstd.rwlock.RwLockToks.Instance.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd.rwlock.RwLockToks.Instance. K&. K& V&. V& Pred&. Pred&)))
   :qid internal_crate__vstd__rwlock__RwLockToks__Instance_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__Instance_unbox_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (_send_sync!
    Poly
   ) (_state! core!option.Option.) (_location! Int)
  ) (!
   (=>
    (and
     (has_type _send_sync! (TYPE%vstd.state_machine_internal.SyncSendIfSyncSend. V&. V&))
     (has_type (Poly%core!option.Option. _state!) (TYPE%core!option.Option. (GHOST $) (TYPE%vstd.rwlock.RwLockToks.State.
        K&. K& V&. V& Pred&. Pred&
    ))))
    (has_type (Poly%vstd.rwlock.RwLockToks.Instance. (vstd.rwlock.RwLockToks.Instance./Instance
       _send_sync! _state! _location!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.Instance. K&. K& V&. V& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.rwlock.RwLockToks.Instance. (vstd.rwlock.RwLockToks.Instance./Instance
       _send_sync! _state! _location!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.Instance. K&. K& V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.RwLockToks.Instance./Instance_constructor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Instance./Instance_constructor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.Instance.)) (!
   (= (vstd.rwlock.RwLockToks.Instance./Instance/send_sync x) (vstd.rwlock.RwLockToks.Instance./Instance/?send_sync
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.Instance./Instance/send_sync x))
   :qid internal_vstd.rwlock.RwLockToks.Instance./Instance/send_sync_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Instance./Instance/send_sync_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.Instance. K&. K& V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.RwLockToks.Instance./Instance/send_sync (%Poly%vstd.rwlock.RwLockToks.Instance.
       x
      )
     ) (TYPE%vstd.state_machine_internal.SyncSendIfSyncSend. V&. V&)
   ))
   :pattern ((vstd.rwlock.RwLockToks.Instance./Instance/send_sync (%Poly%vstd.rwlock.RwLockToks.Instance.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.RwLockToks.Instance. K&. K& V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.RwLockToks.Instance./Instance/send_sync_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Instance./Instance/send_sync_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.Instance.)) (!
   (= (vstd.rwlock.RwLockToks.Instance./Instance/state x) (vstd.rwlock.RwLockToks.Instance./Instance/?state
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.Instance./Instance/state x))
   :qid internal_vstd.rwlock.RwLockToks.Instance./Instance/state_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Instance./Instance/state_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.Instance. K&. K& V&. V& Pred&. Pred&))
    (has_type (Poly%core!option.Option. (vstd.rwlock.RwLockToks.Instance./Instance/state
       (%Poly%vstd.rwlock.RwLockToks.Instance. x)
      )
     ) (TYPE%core!option.Option. (GHOST $) (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&.
       V& Pred&. Pred&
   ))))
   :pattern ((vstd.rwlock.RwLockToks.Instance./Instance/state (%Poly%vstd.rwlock.RwLockToks.Instance.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.RwLockToks.Instance. K&. K& V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.RwLockToks.Instance./Instance/state_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Instance./Instance/state_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.Instance.)) (!
   (= (vstd.rwlock.RwLockToks.Instance./Instance/location x) (vstd.rwlock.RwLockToks.Instance./Instance/?location
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.Instance./Instance/location x))
   :qid internal_vstd.rwlock.RwLockToks.Instance./Instance/location_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.Instance./Instance/location_accessor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.Instance.)) (!
   (=>
    (is-vstd.rwlock.RwLockToks.Instance./Instance x)
    (height_lt (height (vstd.rwlock.RwLockToks.Instance./Instance/send_sync x)) (height
      (Poly%vstd.rwlock.RwLockToks.Instance. x)
   )))
   :pattern ((height (vstd.rwlock.RwLockToks.Instance./Instance/send_sync x)))
   :qid prelude_datatype_height_vstd.rwlock.RwLockToks.Instance./Instance/send_sync
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.RwLockToks.Instance./Instance/send_sync
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.Instance.)) (!
   (=>
    (is-vstd.rwlock.RwLockToks.Instance./Instance x)
    (height_lt (height (Poly%core!option.Option. (vstd.rwlock.RwLockToks.Instance./Instance/state
        x
      ))
     ) (height (Poly%vstd.rwlock.RwLockToks.Instance. x))
   ))
   :pattern ((height (Poly%core!option.Option. (vstd.rwlock.RwLockToks.Instance./Instance/state
       x
   ))))
   :qid prelude_datatype_height_vstd.rwlock.RwLockToks.Instance./Instance/state
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.RwLockToks.Instance./Instance/state
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.flag_exc.)) (!
   (= x (%Poly%vstd.rwlock.RwLockToks.flag_exc. (Poly%vstd.rwlock.RwLockToks.flag_exc.
      x
   )))
   :pattern ((Poly%vstd.rwlock.RwLockToks.flag_exc. x))
   :qid internal_crate__vstd__rwlock__RwLockToks__flag_exc_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__flag_exc_box_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.flag_exc. K&. K& V&. V& Pred&. Pred&))
    (= x (Poly%vstd.rwlock.RwLockToks.flag_exc. (%Poly%vstd.rwlock.RwLockToks.flag_exc.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd.rwlock.RwLockToks.flag_exc. K&. K& V&. V& Pred&. Pred&)))
   :qid internal_crate__vstd__rwlock__RwLockToks__flag_exc_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__flag_exc_unbox_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (_dummy_instance!
    vstd.rwlock.RwLockToks.Instance.
   ) (_no_copy! vstd.state_machine_internal.NoCopy.)
  ) (!
   (=>
    (has_type (Poly%vstd.rwlock.RwLockToks.Instance. _dummy_instance!) (TYPE%vstd.rwlock.RwLockToks.Instance.
      K&. K& V&. V& Pred&. Pred&
    ))
    (has_type (Poly%vstd.rwlock.RwLockToks.flag_exc. (vstd.rwlock.RwLockToks.flag_exc./flag_exc
       _dummy_instance! _no_copy!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.flag_exc. K&. K& V&. V& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.rwlock.RwLockToks.flag_exc. (vstd.rwlock.RwLockToks.flag_exc./flag_exc
       _dummy_instance! _no_copy!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.flag_exc. K&. K& V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.RwLockToks.flag_exc./flag_exc_constructor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.flag_exc./flag_exc_constructor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.flag_exc.)) (!
   (= (vstd.rwlock.RwLockToks.flag_exc./flag_exc/dummy_instance x) (vstd.rwlock.RwLockToks.flag_exc./flag_exc/?dummy_instance
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.flag_exc./flag_exc/dummy_instance x))
   :qid internal_vstd.rwlock.RwLockToks.flag_exc./flag_exc/dummy_instance_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.flag_exc./flag_exc/dummy_instance_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.flag_exc. K&. K& V&. V& Pred&. Pred&))
    (has_type (Poly%vstd.rwlock.RwLockToks.Instance. (vstd.rwlock.RwLockToks.flag_exc./flag_exc/dummy_instance
       (%Poly%vstd.rwlock.RwLockToks.flag_exc. x)
      )
     ) (TYPE%vstd.rwlock.RwLockToks.Instance. K&. K& V&. V& Pred&. Pred&)
   ))
   :pattern ((vstd.rwlock.RwLockToks.flag_exc./flag_exc/dummy_instance (%Poly%vstd.rwlock.RwLockToks.flag_exc.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.RwLockToks.flag_exc. K&. K& V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.RwLockToks.flag_exc./flag_exc/dummy_instance_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.flag_exc./flag_exc/dummy_instance_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.flag_exc.)) (!
   (= (vstd.rwlock.RwLockToks.flag_exc./flag_exc/no_copy x) (vstd.rwlock.RwLockToks.flag_exc./flag_exc/?no_copy
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.flag_exc./flag_exc/no_copy x))
   :qid internal_vstd.rwlock.RwLockToks.flag_exc./flag_exc/no_copy_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.flag_exc./flag_exc/no_copy_accessor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.flag_exc.)) (!
   (=>
    (is-vstd.rwlock.RwLockToks.flag_exc./flag_exc x)
    (height_lt (height (Poly%vstd.rwlock.RwLockToks.Instance. (vstd.rwlock.RwLockToks.flag_exc./flag_exc/dummy_instance
        x
      ))
     ) (height (Poly%vstd.rwlock.RwLockToks.flag_exc. x))
   ))
   :pattern ((height (Poly%vstd.rwlock.RwLockToks.Instance. (vstd.rwlock.RwLockToks.flag_exc./flag_exc/dummy_instance
       x
   ))))
   :qid prelude_datatype_height_vstd.rwlock.RwLockToks.flag_exc./flag_exc/dummy_instance
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.RwLockToks.flag_exc./flag_exc/dummy_instance
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.flag_rc.)) (!
   (= x (%Poly%vstd.rwlock.RwLockToks.flag_rc. (Poly%vstd.rwlock.RwLockToks.flag_rc. x)))
   :pattern ((Poly%vstd.rwlock.RwLockToks.flag_rc. x))
   :qid internal_crate__vstd__rwlock__RwLockToks__flag_rc_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__flag_rc_box_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&. K& V&. V& Pred&. Pred&))
    (= x (Poly%vstd.rwlock.RwLockToks.flag_rc. (%Poly%vstd.rwlock.RwLockToks.flag_rc. x)))
   )
   :pattern ((has_type x (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&. K& V&. V& Pred&. Pred&)))
   :qid internal_crate__vstd__rwlock__RwLockToks__flag_rc_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__flag_rc_unbox_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (_dummy_instance!
    vstd.rwlock.RwLockToks.Instance.
   ) (_no_copy! vstd.state_machine_internal.NoCopy.)
  ) (!
   (=>
    (has_type (Poly%vstd.rwlock.RwLockToks.Instance. _dummy_instance!) (TYPE%vstd.rwlock.RwLockToks.Instance.
      K&. K& V&. V& Pred&. Pred&
    ))
    (has_type (Poly%vstd.rwlock.RwLockToks.flag_rc. (vstd.rwlock.RwLockToks.flag_rc./flag_rc
       _dummy_instance! _no_copy!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&. K& V&. V& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.rwlock.RwLockToks.flag_rc. (vstd.rwlock.RwLockToks.flag_rc./flag_rc
       _dummy_instance! _no_copy!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&. K& V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.RwLockToks.flag_rc./flag_rc_constructor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.flag_rc./flag_rc_constructor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.flag_rc.)) (!
   (= (vstd.rwlock.RwLockToks.flag_rc./flag_rc/dummy_instance x) (vstd.rwlock.RwLockToks.flag_rc./flag_rc/?dummy_instance
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.flag_rc./flag_rc/dummy_instance x))
   :qid internal_vstd.rwlock.RwLockToks.flag_rc./flag_rc/dummy_instance_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.flag_rc./flag_rc/dummy_instance_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&. K& V&. V& Pred&. Pred&))
    (has_type (Poly%vstd.rwlock.RwLockToks.Instance. (vstd.rwlock.RwLockToks.flag_rc./flag_rc/dummy_instance
       (%Poly%vstd.rwlock.RwLockToks.flag_rc. x)
      )
     ) (TYPE%vstd.rwlock.RwLockToks.Instance. K&. K& V&. V& Pred&. Pred&)
   ))
   :pattern ((vstd.rwlock.RwLockToks.flag_rc./flag_rc/dummy_instance (%Poly%vstd.rwlock.RwLockToks.flag_rc.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&. K& V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.RwLockToks.flag_rc./flag_rc/dummy_instance_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.flag_rc./flag_rc/dummy_instance_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.flag_rc.)) (!
   (= (vstd.rwlock.RwLockToks.flag_rc./flag_rc/no_copy x) (vstd.rwlock.RwLockToks.flag_rc./flag_rc/?no_copy
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.flag_rc./flag_rc/no_copy x))
   :qid internal_vstd.rwlock.RwLockToks.flag_rc./flag_rc/no_copy_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.flag_rc./flag_rc/no_copy_accessor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.flag_rc.)) (!
   (=>
    (is-vstd.rwlock.RwLockToks.flag_rc./flag_rc x)
    (height_lt (height (Poly%vstd.rwlock.RwLockToks.Instance. (vstd.rwlock.RwLockToks.flag_rc./flag_rc/dummy_instance
        x
      ))
     ) (height (Poly%vstd.rwlock.RwLockToks.flag_rc. x))
   ))
   :pattern ((height (Poly%vstd.rwlock.RwLockToks.Instance. (vstd.rwlock.RwLockToks.flag_rc./flag_rc/dummy_instance
       x
   ))))
   :qid prelude_datatype_height_vstd.rwlock.RwLockToks.flag_rc./flag_rc/dummy_instance
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.RwLockToks.flag_rc./flag_rc/dummy_instance
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.pending_writer.)) (!
   (= x (%Poly%vstd.rwlock.RwLockToks.pending_writer. (Poly%vstd.rwlock.RwLockToks.pending_writer.
      x
   )))
   :pattern ((Poly%vstd.rwlock.RwLockToks.pending_writer. x))
   :qid internal_crate__vstd__rwlock__RwLockToks__pending_writer_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__pending_writer_box_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.pending_writer. K&. K& V&. V& Pred&. Pred&))
    (= x (Poly%vstd.rwlock.RwLockToks.pending_writer. (%Poly%vstd.rwlock.RwLockToks.pending_writer.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd.rwlock.RwLockToks.pending_writer. K&. K& V&. V& Pred&.
      Pred&
   )))
   :qid internal_crate__vstd__rwlock__RwLockToks__pending_writer_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__pending_writer_unbox_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (_dummy_instance!
    vstd.rwlock.RwLockToks.Instance.
   ) (_no_copy! vstd.state_machine_internal.NoCopy.)
  ) (!
   (=>
    (has_type (Poly%vstd.rwlock.RwLockToks.Instance. _dummy_instance!) (TYPE%vstd.rwlock.RwLockToks.Instance.
      K&. K& V&. V& Pred&. Pred&
    ))
    (has_type (Poly%vstd.rwlock.RwLockToks.pending_writer. (vstd.rwlock.RwLockToks.pending_writer./pending_writer
       _dummy_instance! _no_copy!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.pending_writer. K&. K& V&. V& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.rwlock.RwLockToks.pending_writer. (vstd.rwlock.RwLockToks.pending_writer./pending_writer
       _dummy_instance! _no_copy!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.pending_writer. K&. K& V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.RwLockToks.pending_writer./pending_writer_constructor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.pending_writer./pending_writer_constructor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.pending_writer.)) (!
   (= (vstd.rwlock.RwLockToks.pending_writer./pending_writer/dummy_instance x) (vstd.rwlock.RwLockToks.pending_writer./pending_writer/?dummy_instance
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.pending_writer./pending_writer/dummy_instance x))
   :qid internal_vstd.rwlock.RwLockToks.pending_writer./pending_writer/dummy_instance_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.pending_writer./pending_writer/dummy_instance_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.pending_writer. K&. K& V&. V& Pred&. Pred&))
    (has_type (Poly%vstd.rwlock.RwLockToks.Instance. (vstd.rwlock.RwLockToks.pending_writer./pending_writer/dummy_instance
       (%Poly%vstd.rwlock.RwLockToks.pending_writer. x)
      )
     ) (TYPE%vstd.rwlock.RwLockToks.Instance. K&. K& V&. V& Pred&. Pred&)
   ))
   :pattern ((vstd.rwlock.RwLockToks.pending_writer./pending_writer/dummy_instance (%Poly%vstd.rwlock.RwLockToks.pending_writer.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.RwLockToks.pending_writer. K&. K& V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.RwLockToks.pending_writer./pending_writer/dummy_instance_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.pending_writer./pending_writer/dummy_instance_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.pending_writer.)) (!
   (= (vstd.rwlock.RwLockToks.pending_writer./pending_writer/no_copy x) (vstd.rwlock.RwLockToks.pending_writer./pending_writer/?no_copy
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.pending_writer./pending_writer/no_copy x))
   :qid internal_vstd.rwlock.RwLockToks.pending_writer./pending_writer/no_copy_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.pending_writer./pending_writer/no_copy_accessor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.pending_writer.)) (!
   (=>
    (is-vstd.rwlock.RwLockToks.pending_writer./pending_writer x)
    (height_lt (height (Poly%vstd.rwlock.RwLockToks.Instance. (vstd.rwlock.RwLockToks.pending_writer./pending_writer/dummy_instance
        x
      ))
     ) (height (Poly%vstd.rwlock.RwLockToks.pending_writer. x))
   ))
   :pattern ((height (Poly%vstd.rwlock.RwLockToks.Instance. (vstd.rwlock.RwLockToks.pending_writer./pending_writer/dummy_instance
       x
   ))))
   :qid prelude_datatype_height_vstd.rwlock.RwLockToks.pending_writer./pending_writer/dummy_instance
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.RwLockToks.pending_writer./pending_writer/dummy_instance
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.writer.)) (!
   (= x (%Poly%vstd.rwlock.RwLockToks.writer. (Poly%vstd.rwlock.RwLockToks.writer. x)))
   :pattern ((Poly%vstd.rwlock.RwLockToks.writer. x))
   :qid internal_crate__vstd__rwlock__RwLockToks__writer_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__writer_box_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.writer. K&. K& V&. V& Pred&. Pred&))
    (= x (Poly%vstd.rwlock.RwLockToks.writer. (%Poly%vstd.rwlock.RwLockToks.writer. x)))
   )
   :pattern ((has_type x (TYPE%vstd.rwlock.RwLockToks.writer. K&. K& V&. V& Pred&. Pred&)))
   :qid internal_crate__vstd__rwlock__RwLockToks__writer_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__writer_unbox_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (_dummy_instance!
    vstd.rwlock.RwLockToks.Instance.
   ) (_no_copy! vstd.state_machine_internal.NoCopy.)
  ) (!
   (=>
    (has_type (Poly%vstd.rwlock.RwLockToks.Instance. _dummy_instance!) (TYPE%vstd.rwlock.RwLockToks.Instance.
      K&. K& V&. V& Pred&. Pred&
    ))
    (has_type (Poly%vstd.rwlock.RwLockToks.writer. (vstd.rwlock.RwLockToks.writer./writer
       _dummy_instance! _no_copy!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.writer. K&. K& V&. V& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.rwlock.RwLockToks.writer. (vstd.rwlock.RwLockToks.writer./writer
       _dummy_instance! _no_copy!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.writer. K&. K& V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.RwLockToks.writer./writer_constructor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.writer./writer_constructor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.writer.)) (!
   (= (vstd.rwlock.RwLockToks.writer./writer/dummy_instance x) (vstd.rwlock.RwLockToks.writer./writer/?dummy_instance
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.writer./writer/dummy_instance x))
   :qid internal_vstd.rwlock.RwLockToks.writer./writer/dummy_instance_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.writer./writer/dummy_instance_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.writer. K&. K& V&. V& Pred&. Pred&))
    (has_type (Poly%vstd.rwlock.RwLockToks.Instance. (vstd.rwlock.RwLockToks.writer./writer/dummy_instance
       (%Poly%vstd.rwlock.RwLockToks.writer. x)
      )
     ) (TYPE%vstd.rwlock.RwLockToks.Instance. K&. K& V&. V& Pred&. Pred&)
   ))
   :pattern ((vstd.rwlock.RwLockToks.writer./writer/dummy_instance (%Poly%vstd.rwlock.RwLockToks.writer.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.RwLockToks.writer. K&. K& V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.RwLockToks.writer./writer/dummy_instance_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.writer./writer/dummy_instance_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.writer.)) (!
   (= (vstd.rwlock.RwLockToks.writer./writer/no_copy x) (vstd.rwlock.RwLockToks.writer./writer/?no_copy
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.writer./writer/no_copy x))
   :qid internal_vstd.rwlock.RwLockToks.writer./writer/no_copy_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.writer./writer/no_copy_accessor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.writer.)) (!
   (=>
    (is-vstd.rwlock.RwLockToks.writer./writer x)
    (height_lt (height (Poly%vstd.rwlock.RwLockToks.Instance. (vstd.rwlock.RwLockToks.writer./writer/dummy_instance
        x
      ))
     ) (height (Poly%vstd.rwlock.RwLockToks.writer. x))
   ))
   :pattern ((height (Poly%vstd.rwlock.RwLockToks.Instance. (vstd.rwlock.RwLockToks.writer./writer/dummy_instance
       x
   ))))
   :qid prelude_datatype_height_vstd.rwlock.RwLockToks.writer./writer/dummy_instance
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.RwLockToks.writer./writer/dummy_instance
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.pending_reader.)) (!
   (= x (%Poly%vstd.rwlock.RwLockToks.pending_reader. (Poly%vstd.rwlock.RwLockToks.pending_reader.
      x
   )))
   :pattern ((Poly%vstd.rwlock.RwLockToks.pending_reader. x))
   :qid internal_crate__vstd__rwlock__RwLockToks__pending_reader_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__pending_reader_box_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.pending_reader. K&. K& V&. V& Pred&. Pred&))
    (= x (Poly%vstd.rwlock.RwLockToks.pending_reader. (%Poly%vstd.rwlock.RwLockToks.pending_reader.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd.rwlock.RwLockToks.pending_reader. K&. K& V&. V& Pred&.
      Pred&
   )))
   :qid internal_crate__vstd__rwlock__RwLockToks__pending_reader_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__pending_reader_unbox_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (_dummy_instance!
    vstd.rwlock.RwLockToks.Instance.
   ) (_no_copy! vstd.state_machine_internal.NoCopy.)
  ) (!
   (=>
    (has_type (Poly%vstd.rwlock.RwLockToks.Instance. _dummy_instance!) (TYPE%vstd.rwlock.RwLockToks.Instance.
      K&. K& V&. V& Pred&. Pred&
    ))
    (has_type (Poly%vstd.rwlock.RwLockToks.pending_reader. (vstd.rwlock.RwLockToks.pending_reader./pending_reader
       _dummy_instance! _no_copy!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.pending_reader. K&. K& V&. V& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.rwlock.RwLockToks.pending_reader. (vstd.rwlock.RwLockToks.pending_reader./pending_reader
       _dummy_instance! _no_copy!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.pending_reader. K&. K& V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.RwLockToks.pending_reader./pending_reader_constructor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.pending_reader./pending_reader_constructor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.pending_reader.)) (!
   (= (vstd.rwlock.RwLockToks.pending_reader./pending_reader/dummy_instance x) (vstd.rwlock.RwLockToks.pending_reader./pending_reader/?dummy_instance
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.pending_reader./pending_reader/dummy_instance x))
   :qid internal_vstd.rwlock.RwLockToks.pending_reader./pending_reader/dummy_instance_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.pending_reader./pending_reader/dummy_instance_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.pending_reader. K&. K& V&. V& Pred&. Pred&))
    (has_type (Poly%vstd.rwlock.RwLockToks.Instance. (vstd.rwlock.RwLockToks.pending_reader./pending_reader/dummy_instance
       (%Poly%vstd.rwlock.RwLockToks.pending_reader. x)
      )
     ) (TYPE%vstd.rwlock.RwLockToks.Instance. K&. K& V&. V& Pred&. Pred&)
   ))
   :pattern ((vstd.rwlock.RwLockToks.pending_reader./pending_reader/dummy_instance (%Poly%vstd.rwlock.RwLockToks.pending_reader.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.RwLockToks.pending_reader. K&. K& V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.RwLockToks.pending_reader./pending_reader/dummy_instance_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.pending_reader./pending_reader/dummy_instance_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.pending_reader.)) (!
   (= (vstd.rwlock.RwLockToks.pending_reader./pending_reader/no_copy x) (vstd.rwlock.RwLockToks.pending_reader./pending_reader/?no_copy
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.pending_reader./pending_reader/no_copy x))
   :qid internal_vstd.rwlock.RwLockToks.pending_reader./pending_reader/no_copy_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.pending_reader./pending_reader/no_copy_accessor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.pending_reader.)) (!
   (=>
    (is-vstd.rwlock.RwLockToks.pending_reader./pending_reader x)
    (height_lt (height (Poly%vstd.rwlock.RwLockToks.Instance. (vstd.rwlock.RwLockToks.pending_reader./pending_reader/dummy_instance
        x
      ))
     ) (height (Poly%vstd.rwlock.RwLockToks.pending_reader. x))
   ))
   :pattern ((height (Poly%vstd.rwlock.RwLockToks.Instance. (vstd.rwlock.RwLockToks.pending_reader./pending_reader/dummy_instance
       x
   ))))
   :qid prelude_datatype_height_vstd.rwlock.RwLockToks.pending_reader./pending_reader/dummy_instance
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.RwLockToks.pending_reader./pending_reader/dummy_instance
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.reader.)) (!
   (= x (%Poly%vstd.rwlock.RwLockToks.reader. (Poly%vstd.rwlock.RwLockToks.reader. x)))
   :pattern ((Poly%vstd.rwlock.RwLockToks.reader. x))
   :qid internal_crate__vstd__rwlock__RwLockToks__reader_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__reader_box_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.reader. K&. K& V&. V& Pred&. Pred&))
    (= x (Poly%vstd.rwlock.RwLockToks.reader. (%Poly%vstd.rwlock.RwLockToks.reader. x)))
   )
   :pattern ((has_type x (TYPE%vstd.rwlock.RwLockToks.reader. K&. K& V&. V& Pred&. Pred&)))
   :qid internal_crate__vstd__rwlock__RwLockToks__reader_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__reader_unbox_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (_dummy_instance!
    vstd.rwlock.RwLockToks.Instance.
   ) (_no_copy! vstd.state_machine_internal.NoCopy.)
  ) (!
   (=>
    (has_type (Poly%vstd.rwlock.RwLockToks.Instance. _dummy_instance!) (TYPE%vstd.rwlock.RwLockToks.Instance.
      K&. K& V&. V& Pred&. Pred&
    ))
    (has_type (Poly%vstd.rwlock.RwLockToks.reader. (vstd.rwlock.RwLockToks.reader./reader
       _dummy_instance! _no_copy!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.reader. K&. K& V&. V& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.rwlock.RwLockToks.reader. (vstd.rwlock.RwLockToks.reader./reader
       _dummy_instance! _no_copy!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.reader. K&. K& V&. V& Pred&. Pred&)
   ))
   :qid internal_vstd.rwlock.RwLockToks.reader./reader_constructor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.reader./reader_constructor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.reader.)) (!
   (= (vstd.rwlock.RwLockToks.reader./reader/dummy_instance x) (vstd.rwlock.RwLockToks.reader./reader/?dummy_instance
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.reader./reader/dummy_instance x))
   :qid internal_vstd.rwlock.RwLockToks.reader./reader/dummy_instance_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.reader./reader/dummy_instance_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.rwlock.RwLockToks.reader. K&. K& V&. V& Pred&. Pred&))
    (has_type (Poly%vstd.rwlock.RwLockToks.Instance. (vstd.rwlock.RwLockToks.reader./reader/dummy_instance
       (%Poly%vstd.rwlock.RwLockToks.reader. x)
      )
     ) (TYPE%vstd.rwlock.RwLockToks.Instance. K&. K& V&. V& Pred&. Pred&)
   ))
   :pattern ((vstd.rwlock.RwLockToks.reader./reader/dummy_instance (%Poly%vstd.rwlock.RwLockToks.reader.
      x
     )
    ) (has_type x (TYPE%vstd.rwlock.RwLockToks.reader. K&. K& V&. V& Pred&. Pred&))
   )
   :qid internal_vstd.rwlock.RwLockToks.reader./reader/dummy_instance_invariant_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.reader./reader/dummy_instance_invariant_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.reader.)) (!
   (= (vstd.rwlock.RwLockToks.reader./reader/no_copy x) (vstd.rwlock.RwLockToks.reader./reader/?no_copy
     x
   ))
   :pattern ((vstd.rwlock.RwLockToks.reader./reader/no_copy x))
   :qid internal_vstd.rwlock.RwLockToks.reader./reader/no_copy_accessor_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.reader./reader/no_copy_accessor_definition
)))
(assert
 (forall ((x vstd.rwlock.RwLockToks.reader.)) (!
   (=>
    (is-vstd.rwlock.RwLockToks.reader./reader x)
    (height_lt (height (Poly%vstd.rwlock.RwLockToks.Instance. (vstd.rwlock.RwLockToks.reader./reader/dummy_instance
        x
      ))
     ) (height (Poly%vstd.rwlock.RwLockToks.reader. x))
   ))
   :pattern ((height (Poly%vstd.rwlock.RwLockToks.Instance. (vstd.rwlock.RwLockToks.reader./reader/dummy_instance
       x
   ))))
   :qid prelude_datatype_height_vstd.rwlock.RwLockToks.reader./reader/dummy_instance
   :skolemid skolem_prelude_datatype_height_vstd.rwlock.RwLockToks.reader./reader/dummy_instance
)))
(assert
 (forall ((x vstd.tokens.InstanceId.)) (!
   (= x (%Poly%vstd.tokens.InstanceId. (Poly%vstd.tokens.InstanceId. x)))
   :pattern ((Poly%vstd.tokens.InstanceId. x))
   :qid internal_crate__vstd__tokens__InstanceId_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__tokens__InstanceId_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.tokens.InstanceId.)
    (= x (Poly%vstd.tokens.InstanceId. (%Poly%vstd.tokens.InstanceId. x)))
   )
   :pattern ((has_type x TYPE%vstd.tokens.InstanceId.))
   :qid internal_crate__vstd__tokens__InstanceId_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__tokens__InstanceId_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.tokens.InstanceId.)) (!
   (= (vstd.tokens.InstanceId./InstanceId/0 x) (vstd.tokens.InstanceId./InstanceId/?0
     x
   ))
   :pattern ((vstd.tokens.InstanceId./InstanceId/0 x))
   :qid internal_vstd.tokens.InstanceId./InstanceId/0_accessor_definition
   :skolemid skolem_internal_vstd.tokens.InstanceId./InstanceId/0_accessor_definition
)))
(assert
 (forall ((x vstd.tokens.InstanceId.)) (!
   (has_type (Poly%vstd.tokens.InstanceId. x) TYPE%vstd.tokens.InstanceId.)
   :pattern ((has_type (Poly%vstd.tokens.InstanceId. x) TYPE%vstd.tokens.InstanceId.))
   :qid internal_crate__vstd__tokens__InstanceId_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__tokens__InstanceId_has_type_always_definition
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
 (forall ((x tuple%1.)) (!
   (= x (%Poly%tuple%1. (Poly%tuple%1. x)))
   :pattern ((Poly%tuple%1. x))
   :qid internal_crate__tuple__1_box_axiom_definition
   :skolemid skolem_internal_crate__tuple__1_box_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%tuple%1. T%0&. T%0&))
    (= x (Poly%tuple%1. (%Poly%tuple%1. x)))
   )
   :pattern ((has_type x (TYPE%tuple%1. T%0&. T%0&)))
   :qid internal_crate__tuple__1_unbox_axiom_definition
   :skolemid skolem_internal_crate__tuple__1_unbox_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (_0! Poly)) (!
   (=>
    (has_type _0! T%0&)
    (has_type (Poly%tuple%1. (tuple%1./tuple%1 _0!)) (TYPE%tuple%1. T%0&. T%0&))
   )
   :pattern ((has_type (Poly%tuple%1. (tuple%1./tuple%1 _0!)) (TYPE%tuple%1. T%0&. T%0&)))
   :qid internal_tuple__1./tuple__1_constructor_definition
   :skolemid skolem_internal_tuple__1./tuple__1_constructor_definition
)))
(assert
 (forall ((x tuple%1.)) (!
   (= (tuple%1./tuple%1/0 x) (tuple%1./tuple%1/?0 x))
   :pattern ((tuple%1./tuple%1/0 x))
   :qid internal_tuple__1./tuple__1/0_accessor_definition
   :skolemid skolem_internal_tuple__1./tuple__1/0_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%tuple%1. T%0&. T%0&))
    (has_type (tuple%1./tuple%1/0 (%Poly%tuple%1. x)) T%0&)
   )
   :pattern ((tuple%1./tuple%1/0 (%Poly%tuple%1. x)) (has_type x (TYPE%tuple%1. T%0&. T%0&)))
   :qid internal_tuple__1./tuple__1/0_invariant_definition
   :skolemid skolem_internal_tuple__1./tuple__1/0_invariant_definition
)))
(assert
 (forall ((x tuple%1.)) (!
   (=>
    (is-tuple%1./tuple%1 x)
    (height_lt (height (tuple%1./tuple%1/0 x)) (height (Poly%tuple%1. x)))
   )
   :pattern ((height (tuple%1./tuple%1/0 x)))
   :qid prelude_datatype_height_tuple%1./tuple%1/0
   :skolemid skolem_prelude_datatype_height_tuple%1./tuple%1/0
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (deep Bool) (x Poly) (y Poly)) (!
   (=>
    (and
     (has_type x (TYPE%tuple%1. T%0&. T%0&))
     (has_type y (TYPE%tuple%1. T%0&. T%0&))
     (ext_eq deep T%0& (tuple%1./tuple%1/0 (%Poly%tuple%1. x)) (tuple%1./tuple%1/0 (%Poly%tuple%1.
        y
    ))))
    (ext_eq deep (TYPE%tuple%1. T%0&. T%0&) x y)
   )
   :pattern ((ext_eq deep (TYPE%tuple%1. T%0&. T%0&) x y))
   :qid internal_tuple__1./tuple__1_ext_equal_definition
   :skolemid skolem_internal_tuple__1./tuple__1_ext_equal_definition
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
(assert
 (forall ((x tuple%3.)) (!
   (= x (%Poly%tuple%3. (Poly%tuple%3. x)))
   :pattern ((Poly%tuple%3. x))
   :qid internal_crate__tuple__3_box_axiom_definition
   :skolemid skolem_internal_crate__tuple__3_box_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (x
    Poly
   )
  ) (!
   (=>
    (has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
    (= x (Poly%tuple%3. (%Poly%tuple%3. x)))
   )
   :pattern ((has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&)))
   :qid internal_crate__tuple__3_unbox_axiom_definition
   :skolemid skolem_internal_crate__tuple__3_unbox_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (_0!
    Poly
   ) (_1! Poly) (_2! Poly)
  ) (!
   (=>
    (and
     (has_type _0! T%0&)
     (has_type _1! T%1&)
     (has_type _2! T%2&)
    )
    (has_type (Poly%tuple%3. (tuple%3./tuple%3 _0! _1! _2!)) (TYPE%tuple%3. T%0&. T%0&
      T%1&. T%1& T%2&. T%2&
   )))
   :pattern ((has_type (Poly%tuple%3. (tuple%3./tuple%3 _0! _1! _2!)) (TYPE%tuple%3. T%0&.
      T%0& T%1&. T%1& T%2&. T%2&
   )))
   :qid internal_tuple__3./tuple__3_constructor_definition
   :skolemid skolem_internal_tuple__3./tuple__3_constructor_definition
)))
(assert
 (forall ((x tuple%3.)) (!
   (= (tuple%3./tuple%3/0 x) (tuple%3./tuple%3/?0 x))
   :pattern ((tuple%3./tuple%3/0 x))
   :qid internal_tuple__3./tuple__3/0_accessor_definition
   :skolemid skolem_internal_tuple__3./tuple__3/0_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (x
    Poly
   )
  ) (!
   (=>
    (has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
    (has_type (tuple%3./tuple%3/0 (%Poly%tuple%3. x)) T%0&)
   )
   :pattern ((tuple%3./tuple%3/0 (%Poly%tuple%3. x)) (has_type x (TYPE%tuple%3. T%0&. T%0&
      T%1&. T%1& T%2&. T%2&
   )))
   :qid internal_tuple__3./tuple__3/0_invariant_definition
   :skolemid skolem_internal_tuple__3./tuple__3/0_invariant_definition
)))
(assert
 (forall ((x tuple%3.)) (!
   (= (tuple%3./tuple%3/1 x) (tuple%3./tuple%3/?1 x))
   :pattern ((tuple%3./tuple%3/1 x))
   :qid internal_tuple__3./tuple__3/1_accessor_definition
   :skolemid skolem_internal_tuple__3./tuple__3/1_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (x
    Poly
   )
  ) (!
   (=>
    (has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
    (has_type (tuple%3./tuple%3/1 (%Poly%tuple%3. x)) T%1&)
   )
   :pattern ((tuple%3./tuple%3/1 (%Poly%tuple%3. x)) (has_type x (TYPE%tuple%3. T%0&. T%0&
      T%1&. T%1& T%2&. T%2&
   )))
   :qid internal_tuple__3./tuple__3/1_invariant_definition
   :skolemid skolem_internal_tuple__3./tuple__3/1_invariant_definition
)))
(assert
 (forall ((x tuple%3.)) (!
   (= (tuple%3./tuple%3/2 x) (tuple%3./tuple%3/?2 x))
   :pattern ((tuple%3./tuple%3/2 x))
   :qid internal_tuple__3./tuple__3/2_accessor_definition
   :skolemid skolem_internal_tuple__3./tuple__3/2_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (x
    Poly
   )
  ) (!
   (=>
    (has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
    (has_type (tuple%3./tuple%3/2 (%Poly%tuple%3. x)) T%2&)
   )
   :pattern ((tuple%3./tuple%3/2 (%Poly%tuple%3. x)) (has_type x (TYPE%tuple%3. T%0&. T%0&
      T%1&. T%1& T%2&. T%2&
   )))
   :qid internal_tuple__3./tuple__3/2_invariant_definition
   :skolemid skolem_internal_tuple__3./tuple__3/2_invariant_definition
)))
(assert
 (forall ((x tuple%3.)) (!
   (=>
    (is-tuple%3./tuple%3 x)
    (height_lt (height (tuple%3./tuple%3/0 x)) (height (Poly%tuple%3. x)))
   )
   :pattern ((height (tuple%3./tuple%3/0 x)))
   :qid prelude_datatype_height_tuple%3./tuple%3/0
   :skolemid skolem_prelude_datatype_height_tuple%3./tuple%3/0
)))
(assert
 (forall ((x tuple%3.)) (!
   (=>
    (is-tuple%3./tuple%3 x)
    (height_lt (height (tuple%3./tuple%3/1 x)) (height (Poly%tuple%3. x)))
   )
   :pattern ((height (tuple%3./tuple%3/1 x)))
   :qid prelude_datatype_height_tuple%3./tuple%3/1
   :skolemid skolem_prelude_datatype_height_tuple%3./tuple%3/1
)))
(assert
 (forall ((x tuple%3.)) (!
   (=>
    (is-tuple%3./tuple%3 x)
    (height_lt (height (tuple%3./tuple%3/2 x)) (height (Poly%tuple%3. x)))
   )
   :pattern ((height (tuple%3./tuple%3/2 x)))
   :qid prelude_datatype_height_tuple%3./tuple%3/2
   :skolemid skolem_prelude_datatype_height_tuple%3./tuple%3/2
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (deep
    Bool
   ) (x Poly) (y Poly)
  ) (!
   (=>
    (and
     (has_type x (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
     (has_type y (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
     (ext_eq deep T%0& (tuple%3./tuple%3/0 (%Poly%tuple%3. x)) (tuple%3./tuple%3/0 (%Poly%tuple%3.
        y
     )))
     (ext_eq deep T%1& (tuple%3./tuple%3/1 (%Poly%tuple%3. x)) (tuple%3./tuple%3/1 (%Poly%tuple%3.
        y
     )))
     (ext_eq deep T%2& (tuple%3./tuple%3/2 (%Poly%tuple%3. x)) (tuple%3./tuple%3/2 (%Poly%tuple%3.
        y
    ))))
    (ext_eq deep (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&) x y)
   )
   :pattern ((ext_eq deep (TYPE%tuple%3. T%0&. T%0& T%1&. T%1& T%2&. T%2&) x y))
   :qid internal_tuple__3./tuple__3_ext_equal_definition
   :skolemid skolem_internal_tuple__3./tuple__3_ext_equal_definition
)))
(assert
 (forall ((x tuple%7.)) (!
   (= x (%Poly%tuple%7. (Poly%tuple%7. x)))
   :pattern ((Poly%tuple%7. x))
   :qid internal_crate__tuple__7_box_axiom_definition
   :skolemid skolem_internal_crate__tuple__7_box_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (T%5&. Dcr) (T%5& Type) (T%6&. Dcr) (T%6& Type)
   (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&.
      T%5& T%6&. T%6&
    ))
    (= x (Poly%tuple%7. (%Poly%tuple%7. x)))
   )
   :pattern ((has_type x (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&.
      T%4& T%5&. T%5& T%6&. T%6&
   )))
   :qid internal_crate__tuple__7_unbox_axiom_definition
   :skolemid skolem_internal_crate__tuple__7_unbox_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (T%5&. Dcr) (T%5& Type) (T%6&. Dcr) (T%6& Type)
   (_0! Poly) (_1! Poly) (_2! Poly) (_3! Poly) (_4! Poly) (_5! Poly) (_6! Poly)
  ) (!
   (=>
    (and
     (has_type _0! T%0&)
     (has_type _1! T%1&)
     (has_type _2! T%2&)
     (has_type _3! T%3&)
     (has_type _4! T%4&)
     (has_type _5! T%5&)
     (has_type _6! T%6&)
    )
    (has_type (Poly%tuple%7. (tuple%7./tuple%7 _0! _1! _2! _3! _4! _5! _6!)) (TYPE%tuple%7.
      T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&. T%5& T%6&. T%6&
   )))
   :pattern ((has_type (Poly%tuple%7. (tuple%7./tuple%7 _0! _1! _2! _3! _4! _5! _6!))
     (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&. T%5& T%6&.
      T%6&
   )))
   :qid internal_tuple__7./tuple__7_constructor_definition
   :skolemid skolem_internal_tuple__7./tuple__7_constructor_definition
)))
(assert
 (forall ((x tuple%7.)) (!
   (= (tuple%7./tuple%7/0 x) (tuple%7./tuple%7/?0 x))
   :pattern ((tuple%7./tuple%7/0 x))
   :qid internal_tuple__7./tuple__7/0_accessor_definition
   :skolemid skolem_internal_tuple__7./tuple__7/0_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (T%5&. Dcr) (T%5& Type) (T%6&. Dcr) (T%6& Type)
   (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&.
      T%5& T%6&. T%6&
    ))
    (has_type (tuple%7./tuple%7/0 (%Poly%tuple%7. x)) T%0&)
   )
   :pattern ((tuple%7./tuple%7/0 (%Poly%tuple%7. x)) (has_type x (TYPE%tuple%7. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&. T%5& T%6&. T%6&
   )))
   :qid internal_tuple__7./tuple__7/0_invariant_definition
   :skolemid skolem_internal_tuple__7./tuple__7/0_invariant_definition
)))
(assert
 (forall ((x tuple%7.)) (!
   (= (tuple%7./tuple%7/1 x) (tuple%7./tuple%7/?1 x))
   :pattern ((tuple%7./tuple%7/1 x))
   :qid internal_tuple__7./tuple__7/1_accessor_definition
   :skolemid skolem_internal_tuple__7./tuple__7/1_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (T%5&. Dcr) (T%5& Type) (T%6&. Dcr) (T%6& Type)
   (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&.
      T%5& T%6&. T%6&
    ))
    (has_type (tuple%7./tuple%7/1 (%Poly%tuple%7. x)) T%1&)
   )
   :pattern ((tuple%7./tuple%7/1 (%Poly%tuple%7. x)) (has_type x (TYPE%tuple%7. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&. T%5& T%6&. T%6&
   )))
   :qid internal_tuple__7./tuple__7/1_invariant_definition
   :skolemid skolem_internal_tuple__7./tuple__7/1_invariant_definition
)))
(assert
 (forall ((x tuple%7.)) (!
   (= (tuple%7./tuple%7/2 x) (tuple%7./tuple%7/?2 x))
   :pattern ((tuple%7./tuple%7/2 x))
   :qid internal_tuple__7./tuple__7/2_accessor_definition
   :skolemid skolem_internal_tuple__7./tuple__7/2_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (T%5&. Dcr) (T%5& Type) (T%6&. Dcr) (T%6& Type)
   (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&.
      T%5& T%6&. T%6&
    ))
    (has_type (tuple%7./tuple%7/2 (%Poly%tuple%7. x)) T%2&)
   )
   :pattern ((tuple%7./tuple%7/2 (%Poly%tuple%7. x)) (has_type x (TYPE%tuple%7. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&. T%5& T%6&. T%6&
   )))
   :qid internal_tuple__7./tuple__7/2_invariant_definition
   :skolemid skolem_internal_tuple__7./tuple__7/2_invariant_definition
)))
(assert
 (forall ((x tuple%7.)) (!
   (= (tuple%7./tuple%7/3 x) (tuple%7./tuple%7/?3 x))
   :pattern ((tuple%7./tuple%7/3 x))
   :qid internal_tuple__7./tuple__7/3_accessor_definition
   :skolemid skolem_internal_tuple__7./tuple__7/3_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (T%5&. Dcr) (T%5& Type) (T%6&. Dcr) (T%6& Type)
   (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&.
      T%5& T%6&. T%6&
    ))
    (has_type (tuple%7./tuple%7/3 (%Poly%tuple%7. x)) T%3&)
   )
   :pattern ((tuple%7./tuple%7/3 (%Poly%tuple%7. x)) (has_type x (TYPE%tuple%7. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&. T%5& T%6&. T%6&
   )))
   :qid internal_tuple__7./tuple__7/3_invariant_definition
   :skolemid skolem_internal_tuple__7./tuple__7/3_invariant_definition
)))
(assert
 (forall ((x tuple%7.)) (!
   (= (tuple%7./tuple%7/4 x) (tuple%7./tuple%7/?4 x))
   :pattern ((tuple%7./tuple%7/4 x))
   :qid internal_tuple__7./tuple__7/4_accessor_definition
   :skolemid skolem_internal_tuple__7./tuple__7/4_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (T%5&. Dcr) (T%5& Type) (T%6&. Dcr) (T%6& Type)
   (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&.
      T%5& T%6&. T%6&
    ))
    (has_type (tuple%7./tuple%7/4 (%Poly%tuple%7. x)) T%4&)
   )
   :pattern ((tuple%7./tuple%7/4 (%Poly%tuple%7. x)) (has_type x (TYPE%tuple%7. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&. T%5& T%6&. T%6&
   )))
   :qid internal_tuple__7./tuple__7/4_invariant_definition
   :skolemid skolem_internal_tuple__7./tuple__7/4_invariant_definition
)))
(assert
 (forall ((x tuple%7.)) (!
   (= (tuple%7./tuple%7/5 x) (tuple%7./tuple%7/?5 x))
   :pattern ((tuple%7./tuple%7/5 x))
   :qid internal_tuple__7./tuple__7/5_accessor_definition
   :skolemid skolem_internal_tuple__7./tuple__7/5_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (T%5&. Dcr) (T%5& Type) (T%6&. Dcr) (T%6& Type)
   (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&.
      T%5& T%6&. T%6&
    ))
    (has_type (tuple%7./tuple%7/5 (%Poly%tuple%7. x)) T%5&)
   )
   :pattern ((tuple%7./tuple%7/5 (%Poly%tuple%7. x)) (has_type x (TYPE%tuple%7. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&. T%5& T%6&. T%6&
   )))
   :qid internal_tuple__7./tuple__7/5_invariant_definition
   :skolemid skolem_internal_tuple__7./tuple__7/5_invariant_definition
)))
(assert
 (forall ((x tuple%7.)) (!
   (= (tuple%7./tuple%7/6 x) (tuple%7./tuple%7/?6 x))
   :pattern ((tuple%7./tuple%7/6 x))
   :qid internal_tuple__7./tuple__7/6_accessor_definition
   :skolemid skolem_internal_tuple__7./tuple__7/6_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (T%5&. Dcr) (T%5& Type) (T%6&. Dcr) (T%6& Type)
   (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&.
      T%5& T%6&. T%6&
    ))
    (has_type (tuple%7./tuple%7/6 (%Poly%tuple%7. x)) T%6&)
   )
   :pattern ((tuple%7./tuple%7/6 (%Poly%tuple%7. x)) (has_type x (TYPE%tuple%7. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&. T%5& T%6&. T%6&
   )))
   :qid internal_tuple__7./tuple__7/6_invariant_definition
   :skolemid skolem_internal_tuple__7./tuple__7/6_invariant_definition
)))
(assert
 (forall ((x tuple%7.)) (!
   (=>
    (is-tuple%7./tuple%7 x)
    (height_lt (height (tuple%7./tuple%7/0 x)) (height (Poly%tuple%7. x)))
   )
   :pattern ((height (tuple%7./tuple%7/0 x)))
   :qid prelude_datatype_height_tuple%7./tuple%7/0
   :skolemid skolem_prelude_datatype_height_tuple%7./tuple%7/0
)))
(assert
 (forall ((x tuple%7.)) (!
   (=>
    (is-tuple%7./tuple%7 x)
    (height_lt (height (tuple%7./tuple%7/1 x)) (height (Poly%tuple%7. x)))
   )
   :pattern ((height (tuple%7./tuple%7/1 x)))
   :qid prelude_datatype_height_tuple%7./tuple%7/1
   :skolemid skolem_prelude_datatype_height_tuple%7./tuple%7/1
)))
(assert
 (forall ((x tuple%7.)) (!
   (=>
    (is-tuple%7./tuple%7 x)
    (height_lt (height (tuple%7./tuple%7/2 x)) (height (Poly%tuple%7. x)))
   )
   :pattern ((height (tuple%7./tuple%7/2 x)))
   :qid prelude_datatype_height_tuple%7./tuple%7/2
   :skolemid skolem_prelude_datatype_height_tuple%7./tuple%7/2
)))
(assert
 (forall ((x tuple%7.)) (!
   (=>
    (is-tuple%7./tuple%7 x)
    (height_lt (height (tuple%7./tuple%7/3 x)) (height (Poly%tuple%7. x)))
   )
   :pattern ((height (tuple%7./tuple%7/3 x)))
   :qid prelude_datatype_height_tuple%7./tuple%7/3
   :skolemid skolem_prelude_datatype_height_tuple%7./tuple%7/3
)))
(assert
 (forall ((x tuple%7.)) (!
   (=>
    (is-tuple%7./tuple%7 x)
    (height_lt (height (tuple%7./tuple%7/4 x)) (height (Poly%tuple%7. x)))
   )
   :pattern ((height (tuple%7./tuple%7/4 x)))
   :qid prelude_datatype_height_tuple%7./tuple%7/4
   :skolemid skolem_prelude_datatype_height_tuple%7./tuple%7/4
)))
(assert
 (forall ((x tuple%7.)) (!
   (=>
    (is-tuple%7./tuple%7 x)
    (height_lt (height (tuple%7./tuple%7/5 x)) (height (Poly%tuple%7. x)))
   )
   :pattern ((height (tuple%7./tuple%7/5 x)))
   :qid prelude_datatype_height_tuple%7./tuple%7/5
   :skolemid skolem_prelude_datatype_height_tuple%7./tuple%7/5
)))
(assert
 (forall ((x tuple%7.)) (!
   (=>
    (is-tuple%7./tuple%7 x)
    (height_lt (height (tuple%7./tuple%7/6 x)) (height (Poly%tuple%7. x)))
   )
   :pattern ((height (tuple%7./tuple%7/6 x)))
   :qid prelude_datatype_height_tuple%7./tuple%7/6
   :skolemid skolem_prelude_datatype_height_tuple%7./tuple%7/6
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (T%4&. Dcr) (T%4& Type) (T%5&. Dcr) (T%5& Type) (T%6&. Dcr) (T%6& Type)
   (deep Bool) (x Poly) (y Poly)
  ) (!
   (=>
    (and
     (has_type x (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&.
       T%5& T%6&. T%6&
     ))
     (has_type y (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4& T%5&.
       T%5& T%6&. T%6&
     ))
     (ext_eq deep T%0& (tuple%7./tuple%7/0 (%Poly%tuple%7. x)) (tuple%7./tuple%7/0 (%Poly%tuple%7.
        y
     )))
     (ext_eq deep T%1& (tuple%7./tuple%7/1 (%Poly%tuple%7. x)) (tuple%7./tuple%7/1 (%Poly%tuple%7.
        y
     )))
     (ext_eq deep T%2& (tuple%7./tuple%7/2 (%Poly%tuple%7. x)) (tuple%7./tuple%7/2 (%Poly%tuple%7.
        y
     )))
     (ext_eq deep T%3& (tuple%7./tuple%7/3 (%Poly%tuple%7. x)) (tuple%7./tuple%7/3 (%Poly%tuple%7.
        y
     )))
     (ext_eq deep T%4& (tuple%7./tuple%7/4 (%Poly%tuple%7. x)) (tuple%7./tuple%7/4 (%Poly%tuple%7.
        y
     )))
     (ext_eq deep T%5& (tuple%7./tuple%7/5 (%Poly%tuple%7. x)) (tuple%7./tuple%7/5 (%Poly%tuple%7.
        y
     )))
     (ext_eq deep T%6& (tuple%7./tuple%7/6 (%Poly%tuple%7. x)) (tuple%7./tuple%7/6 (%Poly%tuple%7.
        y
    ))))
    (ext_eq deep (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&. T%4&
      T%5&. T%5& T%6&. T%6&
     ) x y
   ))
   :pattern ((ext_eq deep (TYPE%tuple%7. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3& T%4&.
      T%4& T%5&. T%5& T%6&. T%6&
     ) x y
   ))
   :qid internal_tuple__7./tuple__7_ext_equal_definition
   :skolemid skolem_internal_tuple__7./tuple__7_ext_equal_definition
)))

;; Traits
(declare-fun tr_bound%vstd.invariant.InvariantPredicate. (Dcr Type Dcr Type Dcr Type)
 Bool
)
(declare-fun tr_bound%core!clone.Clone. (Dcr Type) Bool)
(declare-fun tr_bound%vstd.std_specs.option.OptionAdditionalFns. (Dcr Type Dcr Type)
 Bool
)
(declare-fun tr_bound%vstd.tokens.ValueToken. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%vstd.tokens.UniqueValueToken. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%vstd.tokens.ElementToken. (Dcr Type Dcr Type) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (K&. Dcr) (K& Type) (V&. Dcr) (V& Type)) (!
   true
   :pattern ((tr_bound%vstd.invariant.InvariantPredicate. Self%&. Self%& K&. K& V&. V&))
   :qid internal_crate__vstd__invariant__InvariantPredicate_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__invariant__InvariantPredicate_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%core!clone.Clone. Self%&. Self%&))
   :qid internal_core__clone__Clone_trait_type_bounds_definition
   :skolemid skolem_internal_core__clone__Clone_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type)) (!
   true
   :pattern ((tr_bound%vstd.std_specs.option.OptionAdditionalFns. Self%&. Self%& T&. T&))
   :qid internal_crate__vstd__std_specs__option__OptionAdditionalFns_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__std_specs__option__OptionAdditionalFns_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type)) (!
   true
   :pattern ((tr_bound%vstd.tokens.ValueToken. Self%&. Self%& Value&. Value&))
   :qid internal_crate__vstd__tokens__ValueToken_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__tokens__ValueToken_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type)) (!
   (=>
    (tr_bound%vstd.tokens.UniqueValueToken. Self%&. Self%& Value&. Value&)
    (tr_bound%vstd.tokens.ValueToken. Self%&. Self%& Value&. Value&)
   )
   :pattern ((tr_bound%vstd.tokens.UniqueValueToken. Self%&. Self%& Value&. Value&))
   :qid internal_crate__vstd__tokens__UniqueValueToken_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__tokens__UniqueValueToken_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Element&. Dcr) (Element& Type)) (!
   true
   :pattern ((tr_bound%vstd.tokens.ElementToken. Self%&. Self%& Element&. Element&))
   :qid internal_crate__vstd__tokens__ElementToken_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__tokens__ElementToken_trait_type_bounds_definition
)))

;; Function-Decl crate::vstd::tokens::ValueToken::instance_id
(declare-fun vstd.tokens.ValueToken.instance_id.? (Dcr Type Dcr Type Poly) Poly)
(declare-fun vstd.tokens.ValueToken.instance_id%default%.? (Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::tokens::ValueToken::value
(declare-fun vstd.tokens.ValueToken.value.? (Dcr Type Dcr Type Poly) Poly)
(declare-fun vstd.tokens.ValueToken.value%default%.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::tokens::ElementToken::instance_id
(declare-fun vstd.tokens.ElementToken.instance_id.? (Dcr Type Dcr Type Poly) Poly)
(declare-fun vstd.tokens.ElementToken.instance_id%default%.? (Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::tokens::ElementToken::element
(declare-fun vstd.tokens.ElementToken.element.? (Dcr Type Dcr Type Poly) Poly)
(declare-fun vstd.tokens.ElementToken.element%default%.? (Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::invariant::InvariantPredicate::inv
(declare-fun vstd.invariant.InvariantPredicate.inv.? (Dcr Type Dcr Type Dcr Type Poly
  Poly
 ) Poly
)
(declare-fun vstd.invariant.InvariantPredicate.inv%default%.? (Dcr Type Dcr Type Dcr
  Type Poly Poly
 ) Poly
)

;; Function-Decl crate::vstd::multiset::Multiset::add
(declare-fun vstd.multiset.impl&%0.add.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::singleton
(declare-fun vstd.multiset.impl&%0.singleton.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::insert
(declare-fun vstd.multiset.impl&%0.insert.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::acquire_read_start
(declare-fun vstd.rwlock.RwLockToks.impl&%23.acquire_read_start.? (Dcr Type Dcr Type
  Dcr Type Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::multiset::Multiset::count
(declare-fun vstd.multiset.impl&%0.count.? (Dcr Type Poly Poly) Int)

;; Function-Decl crate::vstd::multiset::Multiset::sub
(declare-fun vstd.multiset.impl&%0.sub.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::remove
(declare-fun vstd.multiset.impl&%0.remove.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::std_specs::option::OptionAdditionalFns::is_Some
(declare-fun vstd.std_specs.option.OptionAdditionalFns.is_Some.? (Dcr Type Dcr Type
  Poly
 ) Poly
)
(declare-fun vstd.std_specs.option.OptionAdditionalFns.is_Some%default%.? (Dcr Type
  Dcr Type Poly
 ) Poly
)

;; Function-Decl crate::vstd::std_specs::option::OptionAdditionalFns::get_Some_0
(declare-fun vstd.std_specs.option.OptionAdditionalFns.get_Some_0.? (Dcr Type Dcr Type
  Poly
 ) Poly
)
(declare-fun vstd.std_specs.option.OptionAdditionalFns.get_Some_0%default%.? (Dcr Type
  Dcr Type Poly
 ) Poly
)

;; Function-Decl crate::vstd::std_specs::option::OptionAdditionalFns::is_None
(declare-fun vstd.std_specs.option.OptionAdditionalFns.is_None.? (Dcr Type Dcr Type
  Poly
 ) Poly
)
(declare-fun vstd.std_specs.option.OptionAdditionalFns.is_None%default%.? (Dcr Type
  Dcr Type Poly
 ) Poly
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::acquire_read_end
(declare-fun vstd.rwlock.RwLockToks.impl&%23.acquire_read_end.? (Dcr Type Dcr Type
  Dcr Type Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::acquire_read_abandon
(declare-fun vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon.? (Dcr Type Dcr Type
  Dcr Type Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::acquire_exc_start
(declare-fun vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start.? (Dcr Type Dcr Type
  Dcr Type Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::acquire_exc_end
(declare-fun vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end.? (Dcr Type Dcr Type Dcr
  Type Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::release_exc
(declare-fun vstd.rwlock.RwLockToks.impl&%23.release_exc.? (Dcr Type Dcr Type Dcr Type
  Poly Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::release_shared
(declare-fun vstd.rwlock.RwLockToks.impl&%23.release_shared.? (Dcr Type Dcr Type Dcr
  Type Poly Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::next_by
(declare-fun vstd.rwlock.RwLockToks.impl&%23.next_by.? (Dcr Type Dcr Type Dcr Type
  Poly Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::next
(declare-fun vstd.rwlock.RwLockToks.impl&%23.next.? (Dcr Type Dcr Type Dcr Type Poly
  Poly
 ) Bool
)

;; Function-Decl crate::vstd::multiset::Multiset::empty
(declare-fun vstd.multiset.impl&%0.empty.? (Dcr Type) Poly)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::initialize_full
(declare-fun vstd.rwlock.RwLockToks.impl&%23.initialize_full.? (Dcr Type Dcr Type Dcr
  Type Poly Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::init_by
(declare-fun vstd.rwlock.RwLockToks.impl&%23.init_by.? (Dcr Type Dcr Type Dcr Type
  Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::init
(declare-fun vstd.rwlock.RwLockToks.impl&%23.init.? (Dcr Type Dcr Type Dcr Type Poly)
 Bool
)

;; Function-Decl crate::vstd::std_specs::option::is_none
(declare-fun vstd.std_specs.option.is_none.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::std_specs::option::is_some
(declare-fun vstd.std_specs.option.is_some.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::std_specs::option::spec_unwrap
(declare-fun vstd.std_specs.option.spec_unwrap.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Instance::id
(declare-fun vstd.rwlock.RwLockToks.impl&%20.id.? (Dcr Type Dcr Type Dcr Type Poly)
 vstd.tokens.InstanceId.
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Instance::k
(declare-fun vstd.rwlock.RwLockToks.impl&%20.k.? (Dcr Type Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Instance::pred
(declare-fun vstd.rwlock.RwLockToks.impl&%20.pred.? (Dcr Type Dcr Type Dcr Type Poly)
 core!marker.PhantomData.
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::exc_bit_matches
(declare-fun vstd.rwlock.RwLockToks.impl&%23.exc_bit_matches.? (Dcr Type Dcr Type Dcr
  Type Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::count_matches
(declare-fun vstd.rwlock.RwLockToks.impl&%23.count_matches.? (Dcr Type Dcr Type Dcr
  Type Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::reader_agrees_storage
(declare-fun vstd.rwlock.RwLockToks.impl&%23.reader_agrees_storage.? (Dcr Type Dcr
  Type Dcr Type Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::writer_agrees_storage
(declare-fun vstd.rwlock.RwLockToks.impl&%23.writer_agrees_storage.? (Dcr Type Dcr
  Type Dcr Type Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::writer_agrees_storage_rev
(declare-fun vstd.rwlock.RwLockToks.impl&%23.writer_agrees_storage_rev.? (Dcr Type
  Dcr Type Dcr Type Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::sto_user_inv
(declare-fun vstd.rwlock.RwLockToks.impl&%23.sto_user_inv.? (Dcr Type Dcr Type Dcr
  Type Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Step::arrow_release_exc_0
(declare-fun vstd.rwlock.RwLockToks.impl&%0.arrow_release_exc_0.? (Dcr Type Dcr Type
  Dcr Type Poly
 ) Poly
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Step::arrow_release_shared_0
(declare-fun vstd.rwlock.RwLockToks.impl&%0.arrow_release_shared_0.? (Dcr Type Dcr
  Type Dcr Type Poly
 ) Poly
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Step::arrow_dummy_to_use_type_params_0
(declare-fun vstd.rwlock.RwLockToks.impl&%0.arrow_dummy_to_use_type_params_0.? (Dcr
  Type Dcr Type Dcr Type Poly
 ) vstd.rwlock.RwLockToks.State.
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Step::is_acquire_read_start
(declare-fun vstd.rwlock.RwLockToks.impl&%1.is_acquire_read_start.? (Dcr Type Dcr Type
  Dcr Type Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Step::is_acquire_read_end
(declare-fun vstd.rwlock.RwLockToks.impl&%1.is_acquire_read_end.? (Dcr Type Dcr Type
  Dcr Type Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Step::is_acquire_read_abandon
(declare-fun vstd.rwlock.RwLockToks.impl&%1.is_acquire_read_abandon.? (Dcr Type Dcr
  Type Dcr Type Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Step::is_acquire_exc_start
(declare-fun vstd.rwlock.RwLockToks.impl&%1.is_acquire_exc_start.? (Dcr Type Dcr Type
  Dcr Type Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Step::is_acquire_exc_end
(declare-fun vstd.rwlock.RwLockToks.impl&%1.is_acquire_exc_end.? (Dcr Type Dcr Type
  Dcr Type Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Step::is_release_exc
(declare-fun vstd.rwlock.RwLockToks.impl&%1.is_release_exc.? (Dcr Type Dcr Type Dcr
  Type Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Step::get_release_exc_0
(declare-fun vstd.rwlock.RwLockToks.impl&%1.get_release_exc_0.? (Dcr Type Dcr Type
  Dcr Type Poly
 ) Poly
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Step::is_release_shared
(declare-fun vstd.rwlock.RwLockToks.impl&%1.is_release_shared.? (Dcr Type Dcr Type
  Dcr Type Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Step::get_release_shared_0
(declare-fun vstd.rwlock.RwLockToks.impl&%1.get_release_shared_0.? (Dcr Type Dcr Type
  Dcr Type Poly
 ) Poly
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Step::is_dummy_to_use_type_params
(declare-fun vstd.rwlock.RwLockToks.impl&%1.is_dummy_to_use_type_params.? (Dcr Type
  Dcr Type Dcr Type Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Step::get_dummy_to_use_type_params_0
(declare-fun vstd.rwlock.RwLockToks.impl&%1.get_dummy_to_use_type_params_0.? (Dcr Type
  Dcr Type Dcr Type Poly
 ) vstd.rwlock.RwLockToks.State.
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Config::arrow_1
(declare-fun vstd.rwlock.RwLockToks.impl&%2.arrow_1.? (Dcr Type Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Config::arrow_initialize_full_0
(declare-fun vstd.rwlock.RwLockToks.impl&%2.arrow_initialize_full_0.? (Dcr Type Dcr
  Type Dcr Type Poly
 ) Poly
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Config::arrow_initialize_full_1
(declare-fun vstd.rwlock.RwLockToks.impl&%2.arrow_initialize_full_1.? (Dcr Type Dcr
  Type Dcr Type Poly
 ) Poly
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Config::arrow_dummy_to_use_type_params_0
(declare-fun vstd.rwlock.RwLockToks.impl&%2.arrow_dummy_to_use_type_params_0.? (Dcr
  Type Dcr Type Dcr Type Poly
 ) vstd.rwlock.RwLockToks.State.
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Config::is_initialize_full
(declare-fun vstd.rwlock.RwLockToks.impl&%3.is_initialize_full.? (Dcr Type Dcr Type
  Dcr Type Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Config::get_initialize_full_0
(declare-fun vstd.rwlock.RwLockToks.impl&%3.get_initialize_full_0.? (Dcr Type Dcr Type
  Dcr Type Poly
 ) Poly
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Config::get_initialize_full_1
(declare-fun vstd.rwlock.RwLockToks.impl&%3.get_initialize_full_1.? (Dcr Type Dcr Type
  Dcr Type Poly
 ) Poly
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Config::is_dummy_to_use_type_params
(declare-fun vstd.rwlock.RwLockToks.impl&%3.is_dummy_to_use_type_params.? (Dcr Type
  Dcr Type Dcr Type Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::Config::get_dummy_to_use_type_params_0
(declare-fun vstd.rwlock.RwLockToks.impl&%3.get_dummy_to_use_type_params_0.? (Dcr Type
  Dcr Type Dcr Type Poly
 ) vstd.rwlock.RwLockToks.State.
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::initialize_full_enabled
(declare-fun vstd.rwlock.RwLockToks.impl&%23.initialize_full_enabled.? (Dcr Type Dcr
  Type Dcr Type Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::acquire_read_start_strong
(declare-fun vstd.rwlock.RwLockToks.impl&%23.acquire_read_start_strong.? (Dcr Type
  Dcr Type Dcr Type Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::acquire_read_start_enabled
(declare-fun vstd.rwlock.RwLockToks.impl&%23.acquire_read_start_enabled.? (Dcr Type
  Dcr Type Dcr Type Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::acquire_read_end_strong
(declare-fun vstd.rwlock.RwLockToks.impl&%23.acquire_read_end_strong.? (Dcr Type Dcr
  Type Dcr Type Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::acquire_read_end_enabled
(declare-fun vstd.rwlock.RwLockToks.impl&%23.acquire_read_end_enabled.? (Dcr Type Dcr
  Type Dcr Type Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::acquire_read_abandon_strong
(declare-fun vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon_strong.? (Dcr Type
  Dcr Type Dcr Type Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::acquire_read_abandon_enabled
(declare-fun vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon_enabled.? (Dcr Type
  Dcr Type Dcr Type Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::acquire_exc_start_strong
(declare-fun vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start_strong.? (Dcr Type Dcr
  Type Dcr Type Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::acquire_exc_start_enabled
(declare-fun vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start_enabled.? (Dcr Type
  Dcr Type Dcr Type Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::acquire_exc_end_strong
(declare-fun vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end_strong.? (Dcr Type Dcr
  Type Dcr Type Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::acquire_exc_end_enabled
(declare-fun vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end_enabled.? (Dcr Type Dcr
  Type Dcr Type Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::release_exc_strong
(declare-fun vstd.rwlock.RwLockToks.impl&%23.release_exc_strong.? (Dcr Type Dcr Type
  Dcr Type Poly Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::release_exc_enabled
(declare-fun vstd.rwlock.RwLockToks.impl&%23.release_exc_enabled.? (Dcr Type Dcr Type
  Dcr Type Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::release_shared_strong
(declare-fun vstd.rwlock.RwLockToks.impl&%23.release_shared_strong.? (Dcr Type Dcr
  Type Dcr Type Poly Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::release_shared_enabled
(declare-fun vstd.rwlock.RwLockToks.impl&%23.release_shared_enabled.? (Dcr Type Dcr
  Type Dcr Type Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::next_strong_by
(declare-fun vstd.rwlock.RwLockToks.impl&%23.next_strong_by.? (Dcr Type Dcr Type Dcr
  Type Poly Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::next_strong
(declare-fun vstd.rwlock.RwLockToks.impl&%23.next_strong.? (Dcr Type Dcr Type Dcr Type
  Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::rwlock::RwLockToks::State::invariant
(declare-fun vstd.rwlock.RwLockToks.impl&%23.invariant.? (Dcr Type Dcr Type Dcr Type
  Poly
 ) Bool
)

;; Function-Decl crate::vstd::tokens::MultisetToken::instance_id
(declare-fun vstd.tokens.impl&%2.instance_id.? (Dcr Type Dcr Type Poly) vstd.tokens.InstanceId.)

;; Function-Decl crate::vstd::tokens::MultisetToken::multiset
(declare-fun vstd.tokens.impl&%2.multiset.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::tokens::option_value_eq_option_token
(declare-fun vstd.tokens.option_value_eq_option_token.? (Dcr Type Dcr Type Poly Poly
  Poly
 ) Bool
)

;; Function-Specs core::clone::Clone::clone
(declare-fun ens%core!clone.Clone.clone. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (%return! Poly)) (!
   (= (ens%core!clone.Clone.clone. Self%&. Self%& self! %return!) (has_type %return! Self%&))
   :pattern ((ens%core!clone.Clone.clone. Self%&. Self%& self! %return!))
   :qid internal_ens__core!clone.Clone.clone._definition
   :skolemid skolem_internal_ens__core!clone.Clone.clone._definition
)))
(assert
 (forall ((tmp%%$ Poly) (Self%&. Dcr) (Self%& Type)) (!
   (=>
    (has_type tmp%%$ (TYPE%tuple%1. (REF Self%&.) Self%&))
    (=>
     (let
      ((self$ (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$))))
      true
     )
     (closure_req (FNDEF%core!clone.Clone.clone. Self%&. Self%&) $ (TYPE%tuple%1. (REF Self%&.)
       Self%&
      ) (F fndef_singleton) tmp%%$
   )))
   :pattern ((closure_req (FNDEF%core!clone.Clone.clone. Self%&. Self%&) $ (TYPE%tuple%1.
      (REF Self%&.) Self%&
     ) (F fndef_singleton) tmp%%$
   ))
   :qid user_core__clone__Clone__clone_0
   :skolemid skolem_user_core__clone__Clone__clone_0
)))

;; Function-Axioms crate::vstd::tokens::ValueToken::instance_id
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.tokens.ValueToken.instance_id.? Self%&. Self%& Value&. Value& self!)
     TYPE%vstd.tokens.InstanceId.
   ))
   :pattern ((vstd.tokens.ValueToken.instance_id.? Self%&. Self%& Value&. Value& self!))
   :qid internal_vstd.tokens.ValueToken.instance_id.?_pre_post_definition
   :skolemid skolem_internal_vstd.tokens.ValueToken.instance_id.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::tokens::ValueToken::value
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.tokens.ValueToken.value.? Self%&. Self%& Value&. Value& self!) Value&)
   )
   :pattern ((vstd.tokens.ValueToken.value.? Self%&. Self%& Value&. Value& self!))
   :qid internal_vstd.tokens.ValueToken.value.?_pre_post_definition
   :skolemid skolem_internal_vstd.tokens.ValueToken.value.?_pre_post_definition
)))

;; Function-Specs crate::vstd::tokens::ValueToken::agree
(declare-fun req%vstd.tokens.ValueToken.agree. (Dcr Type Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type) (self! Poly) (other!
    Poly
   )
  ) (!
   (= (req%vstd.tokens.ValueToken.agree. Self%&. Self%& Value&. Value& self! other!)
    (=>
     %%global_location_label%%0
     (= (vstd.tokens.ValueToken.instance_id.? Self%&. Self%& Value&. Value& self!) (vstd.tokens.ValueToken.instance_id.?
       Self%&. Self%& Value&. Value& other!
   ))))
   :pattern ((req%vstd.tokens.ValueToken.agree. Self%&. Self%& Value&. Value& self! other!))
   :qid internal_req__vstd.tokens.ValueToken.agree._definition
   :skolemid skolem_internal_req__vstd.tokens.ValueToken.agree._definition
)))
(declare-fun ens%vstd.tokens.ValueToken.agree. (Dcr Type Dcr Type Poly Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type) (self! Poly) (other!
    Poly
   )
  ) (!
   (= (ens%vstd.tokens.ValueToken.agree. Self%&. Self%& Value&. Value& self! other!)
    (= (vstd.tokens.ValueToken.value.? Self%&. Self%& Value&. Value& self!) (vstd.tokens.ValueToken.value.?
      Self%&. Self%& Value&. Value& other!
   )))
   :pattern ((ens%vstd.tokens.ValueToken.agree. Self%&. Self%& Value&. Value& self! other!))
   :qid internal_ens__vstd.tokens.ValueToken.agree._definition
   :skolemid skolem_internal_ens__vstd.tokens.ValueToken.agree._definition
)))

;; Function-Specs crate::vstd::tokens::ValueToken::arbitrary
(declare-fun ens%vstd.tokens.ValueToken.arbitrary. (Dcr Type Dcr Type Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type) (%return! Poly))
  (!
   (= (ens%vstd.tokens.ValueToken.arbitrary. Self%&. Self%& Value&. Value& %return!)
    (has_type %return! Self%&)
   )
   :pattern ((ens%vstd.tokens.ValueToken.arbitrary. Self%&. Self%& Value&. Value& %return!))
   :qid internal_ens__vstd.tokens.ValueToken.arbitrary._definition
   :skolemid skolem_internal_ens__vstd.tokens.ValueToken.arbitrary._definition
)))

;; Function-Specs crate::vstd::tokens::UniqueValueToken::unique
(declare-fun ens%vstd.tokens.UniqueValueToken.unique. (Dcr Type Dcr Type Poly Poly
  Poly
 ) Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type) (pre%self! Poly) (
    self! Poly
   ) (other! Poly)
  ) (!
   (= (ens%vstd.tokens.UniqueValueToken.unique. Self%&. Self%& Value&. Value& pre%self!
     self! other!
    ) (and
     (has_type self! Self%&)
     (not (= (vstd.tokens.ValueToken.instance_id.? Self%&. Self%& Value&. Value& self!)
       (vstd.tokens.ValueToken.instance_id.? Self%&. Self%& Value&. Value& other!)
     ))
     (= self! pre%self!)
   ))
   :pattern ((ens%vstd.tokens.UniqueValueToken.unique. Self%&. Self%& Value&. Value& pre%self!
     self! other!
   ))
   :qid internal_ens__vstd.tokens.UniqueValueToken.unique._definition
   :skolemid skolem_internal_ens__vstd.tokens.UniqueValueToken.unique._definition
)))

;; Function-Axioms crate::vstd::tokens::ElementToken::instance_id
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Element&. Dcr) (Element& Type) (self! Poly))
  (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.tokens.ElementToken.instance_id.? Self%&. Self%& Element&. Element&
      self!
     ) TYPE%vstd.tokens.InstanceId.
   ))
   :pattern ((vstd.tokens.ElementToken.instance_id.? Self%&. Self%& Element&. Element&
     self!
   ))
   :qid internal_vstd.tokens.ElementToken.instance_id.?_pre_post_definition
   :skolemid skolem_internal_vstd.tokens.ElementToken.instance_id.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::tokens::ElementToken::element
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Element&. Dcr) (Element& Type) (self! Poly))
  (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.tokens.ElementToken.element.? Self%&. Self%& Element&. Element& self!)
     Element&
   ))
   :pattern ((vstd.tokens.ElementToken.element.? Self%&. Self%& Element&. Element& self!))
   :qid internal_vstd.tokens.ElementToken.element.?_pre_post_definition
   :skolemid skolem_internal_vstd.tokens.ElementToken.element.?_pre_post_definition
)))

;; Function-Specs crate::vstd::tokens::ElementToken::arbitrary
(declare-fun ens%vstd.tokens.ElementToken.arbitrary. (Dcr Type Dcr Type Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Element&. Dcr) (Element& Type) (%return! Poly))
  (!
   (= (ens%vstd.tokens.ElementToken.arbitrary. Self%&. Self%& Element&. Element& %return!)
    (has_type %return! Self%&)
   )
   :pattern ((ens%vstd.tokens.ElementToken.arbitrary. Self%&. Self%& Element&. Element&
     %return!
   ))
   :qid internal_ens__vstd.tokens.ElementToken.arbitrary._definition
   :skolemid skolem_internal_ens__vstd.tokens.ElementToken.arbitrary._definition
)))

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

;; Function-Axioms crate::vstd::multiset::Multiset::add
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.multiset.Multiset. V&. V&))
     (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
    )
    (has_type (vstd.multiset.impl&%0.add.? V&. V& self! m2!) (TYPE%vstd.multiset.Multiset.
      V&. V&
   )))
   :pattern ((vstd.multiset.impl&%0.add.? V&. V& self! m2!))
   :qid internal_vstd.multiset.impl&__0.add.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.add.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::multiset::Multiset::singleton
(assert
 (forall ((V&. Dcr) (V& Type) (v! Poly)) (!
   (=>
    (has_type v! V&)
    (has_type (vstd.multiset.impl&%0.singleton.? V&. V& v!) (TYPE%vstd.multiset.Multiset.
      V&. V&
   )))
   :pattern ((vstd.multiset.impl&%0.singleton.? V&. V& v!))
   :qid internal_vstd.multiset.impl&__0.singleton.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.singleton.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::multiset::Multiset::insert
(assert
 (fuel_bool_default fuel%vstd.multiset.impl&%0.insert.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.impl&%0.insert.)
  (forall ((V&. Dcr) (V& Type) (self! Poly) (v! Poly)) (!
    (= (vstd.multiset.impl&%0.insert.? V&. V& self! v!) (vstd.multiset.impl&%0.add.? V&.
      V& self! (vstd.multiset.impl&%0.singleton.? V&. V& v!)
    ))
    :pattern ((vstd.multiset.impl&%0.insert.? V&. V& self! v!))
    :qid internal_vstd.multiset.impl&__0.insert.?_definition
    :skolemid skolem_internal_vstd.multiset.impl&__0.insert.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (v! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.multiset.Multiset. V&. V&))
     (has_type v! V&)
    )
    (has_type (vstd.multiset.impl&%0.insert.? V&. V& self! v!) (TYPE%vstd.multiset.Multiset.
      V&. V&
   )))
   :pattern ((vstd.multiset.impl&%0.insert.? V&. V& self! v!))
   :qid internal_vstd.multiset.impl&__0.insert.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.insert.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::acquire_read_start
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_start.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_start.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly)
    (post! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.acquire_read_start.? K&. K& V&. V& Pred&. Pred&
      pre! post!
     ) (let
      ((update_tmp_k$ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
          pre!
      ))))
      (let
       ((update_tmp_pred$ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
           pre!
       ))))
       (let
        ((update_tmp_flag_exc$ (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
            pre!
        ))))
        (let
         ((update_tmp_storage$ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
             pre!
         ))))
         (let
          ((update_tmp_pending_writer$ (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
              pre!
          ))))
          (let
           ((update_tmp_writer$ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
               pre!
           ))))
           (let
            ((update_tmp_pending_reader$ (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                pre!
            ))))
            (let
             ((update_tmp_reader$ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                 pre!
             ))))
             (let
              ((update_tmp_flag_rc$ (nClip (Add (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                    pre!
                   )
                  ) 1
              ))))
              (let
               ((update_tmp_pending_reader$1 (%Poly%vstd.multiset.Multiset<tuple%0.>. (vstd.multiset.impl&%0.insert.?
                   $ TYPE%tuple%0. (Poly%vstd.multiset.Multiset<tuple%0.>. update_tmp_pending_reader$)
                   (Poly%tuple%0. tuple%0./tuple%0)
               ))))
               (and
                (= (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                   post!
                  )
                 ) update_tmp_pending_reader$1
                )
                (and
                 (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                    post!
                   )
                  ) update_tmp_flag_rc$
                 )
                 (and
                  (= (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                     post!
                    )
                   ) update_tmp_reader$
                  )
                  (and
                   (= (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                      post!
                     )
                    ) update_tmp_writer$
                   )
                   (and
                    (= (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
                       post!
                      )
                     ) update_tmp_pending_writer$
                    )
                    (and
                     (= (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
                        post!
                       )
                      ) update_tmp_storage$
                     )
                     (and
                      (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                         post!
                        )
                       ) update_tmp_flag_exc$
                      )
                      (and
                       (= (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State. post!))
                        update_tmp_pred$
                       )
                       (= (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State. post!))
                        update_tmp_k$
    ))))))))))))))))))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.acquire_read_start.? K&. K& V&. V& Pred&.
      Pred& pre! post!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.acquire_read_start.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.acquire_read_start.?_definition
))))

;; Function-Axioms crate::vstd::multiset::Multiset::count
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (value! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.multiset.Multiset. V&. V&))
     (has_type value! V&)
    )
    (<= 0 (vstd.multiset.impl&%0.count.? V&. V& self! value!))
   )
   :pattern ((vstd.multiset.impl&%0.count.? V&. V& self! value!))
   :qid internal_vstd.multiset.impl&__0.count.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.count.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::multiset::Multiset::sub
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.multiset.Multiset. V&. V&))
     (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
    )
    (has_type (vstd.multiset.impl&%0.sub.? V&. V& self! m2!) (TYPE%vstd.multiset.Multiset.
      V&. V&
   )))
   :pattern ((vstd.multiset.impl&%0.sub.? V&. V& self! m2!))
   :qid internal_vstd.multiset.impl&__0.sub.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.sub.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::multiset::Multiset::remove
(assert
 (fuel_bool_default fuel%vstd.multiset.impl&%0.remove.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.impl&%0.remove.)
  (forall ((V&. Dcr) (V& Type) (self! Poly) (v! Poly)) (!
    (= (vstd.multiset.impl&%0.remove.? V&. V& self! v!) (vstd.multiset.impl&%0.sub.? V&.
      V& self! (vstd.multiset.impl&%0.singleton.? V&. V& v!)
    ))
    :pattern ((vstd.multiset.impl&%0.remove.? V&. V& self! v!))
    :qid internal_vstd.multiset.impl&__0.remove.?_definition
    :skolemid skolem_internal_vstd.multiset.impl&__0.remove.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (v! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.multiset.Multiset. V&. V&))
     (has_type v! V&)
    )
    (has_type (vstd.multiset.impl&%0.remove.? V&. V& self! v!) (TYPE%vstd.multiset.Multiset.
      V&. V&
   )))
   :pattern ((vstd.multiset.impl&%0.remove.? V&. V& self! v!))
   :qid internal_vstd.multiset.impl&__0.remove.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.remove.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::std_specs::option::OptionAdditionalFns::is_Some
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.std_specs.option.OptionAdditionalFns.is_Some.? Self%&. Self%& T&. T&
      self!
     ) BOOL
   ))
   :pattern ((vstd.std_specs.option.OptionAdditionalFns.is_Some.? Self%&. Self%& T&. T&
     self!
   ))
   :qid internal_vstd.std_specs.option.OptionAdditionalFns.is_Some.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.option.OptionAdditionalFns.is_Some.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::std_specs::option::OptionAdditionalFns::get_Some_0
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.std_specs.option.OptionAdditionalFns.get_Some_0.? Self%&. Self%& T&.
      T& self!
     ) T&
   ))
   :pattern ((vstd.std_specs.option.OptionAdditionalFns.get_Some_0.? Self%&. Self%& T&.
     T& self!
   ))
   :qid internal_vstd.std_specs.option.OptionAdditionalFns.get_Some_0.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.option.OptionAdditionalFns.get_Some_0.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::std_specs::option::OptionAdditionalFns::is_None
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.std_specs.option.OptionAdditionalFns.is_None.? Self%&. Self%& T&. T&
      self!
     ) BOOL
   ))
   :pattern ((vstd.std_specs.option.OptionAdditionalFns.is_None.? Self%&. Self%& T&. T&
     self!
   ))
   :qid internal_vstd.std_specs.option.OptionAdditionalFns.is_None.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.option.OptionAdditionalFns.is_None.?_pre_post_definition
)))

;; Function-Axioms core::option::Option::get_Some_0
(assert
 (fuel_bool_default fuel%vstd.std_specs.option.impl&%0.get_Some_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.option.impl&%0.get_Some_0.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.std_specs.option.OptionAdditionalFns.get_Some_0.? $ (TYPE%core!option.Option.
       T&. T&
      ) T&. T& self!
     ) (core!option.Option./Some/0 (%Poly%core!option.Option. self!))
    )
    :pattern ((vstd.std_specs.option.OptionAdditionalFns.get_Some_0.? $ (TYPE%core!option.Option.
       T&. T&
      ) T&. T& self!
    ))
    :qid internal_vstd.std_specs.option.OptionAdditionalFns.get_Some_0.?_definition
    :skolemid skolem_internal_vstd.std_specs.option.OptionAdditionalFns.get_Some_0.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::acquire_read_end
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_end.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_end.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly)
    (post! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.acquire_read_end.? K&. K& V&. V& Pred&. Pred& pre!
      post!
     ) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_k$ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
           pre!
       ))))
       (let
        ((update_tmp_pred$ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
            pre!
        ))))
        (let
         ((update_tmp_flag_exc$ (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
             pre!
         ))))
         (let
          ((update_tmp_flag_rc$ (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
              pre!
          ))))
          (let
           ((update_tmp_storage$ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
               pre!
           ))))
           (let
            ((update_tmp_pending_writer$ (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
                pre!
            ))))
            (let
             ((update_tmp_writer$ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                 pre!
             ))))
             (let
              ((update_tmp_pending_reader$ (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                  pre!
              ))))
              (let
               ((update_tmp_reader$ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                   pre!
               ))))
               (and
                (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                   pre!
                  )
                 ) false
                )
                (and
                 (>= (vstd.multiset.impl&%0.count.? $ TYPE%tuple%0. (Poly%vstd.multiset.Multiset<tuple%0.>.
                    update_tmp_pending_reader$
                   ) (Poly%tuple%0. tuple%0./tuple%0)
                  ) 1
                 )
                 (let
                  ((update_tmp_pending_reader$1 (%Poly%vstd.multiset.Multiset<tuple%0.>. (vstd.multiset.impl&%0.remove.?
                      $ TYPE%tuple%0. (Poly%vstd.multiset.Multiset<tuple%0.>. update_tmp_pending_reader$)
                      (Poly%tuple%0. tuple%0./tuple%0)
                  ))))
                  (and
                   (let
                    ((x$ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                         (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State. pre!))
                    )))))
                    (let
                     ((update_tmp_reader$1 (vstd.multiset.impl&%0.insert.? V&. V& update_tmp_reader$ x$)))
                     (let
                      ((tmp_assert$1 (and
                         tmp_assert$
                         (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& (vstd.rwlock.RwLockToks.State./State/k
                            (%Poly%vstd.rwlock.RwLockToks.State. pre!)
                           ) x$
                      )))))
                      (=>
                       tmp_assert$1
                       (= (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                          post!
                         )
                        ) update_tmp_reader$1
                   )))))
                   (let
                    ((tmp_assert$2 (let
                       ((x$ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                            (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State. pre!))
                       )))))
                       (let
                        ((update_tmp_reader$2 (vstd.multiset.impl&%0.insert.? V&. V& update_tmp_reader$ x$)))
                        (let
                         ((tmp_assert$3 (and
                            tmp_assert$
                            (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& (vstd.rwlock.RwLockToks.State./State/k
                               (%Poly%vstd.rwlock.RwLockToks.State. pre!)
                              ) x$
                         )))))
                         tmp_assert$3
                    )))))
                    (and
                     (=>
                      tmp_assert$2
                      (= (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                         post!
                        )
                       ) update_tmp_pending_reader$1
                     ))
                     (and
                      (=>
                       tmp_assert$2
                       (= (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                          post!
                         )
                        ) update_tmp_writer$
                      ))
                      (and
                       (=>
                        tmp_assert$2
                        (= (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
                           post!
                          )
                         ) update_tmp_pending_writer$
                       ))
                       (and
                        (=>
                         tmp_assert$2
                         (= (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
                            post!
                           )
                          ) update_tmp_storage$
                        ))
                        (and
                         (=>
                          tmp_assert$2
                          (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                             post!
                            )
                           ) update_tmp_flag_rc$
                         ))
                         (and
                          (=>
                           tmp_assert$2
                           (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                              post!
                             )
                            ) update_tmp_flag_exc$
                          ))
                          (and
                           (=>
                            tmp_assert$2
                            (= (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State. post!))
                             update_tmp_pred$
                           ))
                           (=>
                            tmp_assert$2
                            (= (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State. post!))
                             update_tmp_k$
    )))))))))))))))))))))))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.acquire_read_end.? K&. K& V&. V& Pred&.
      Pred& pre! post!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.acquire_read_end.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.acquire_read_end.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::acquire_read_abandon
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly)
    (post! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon.? K&. K& V&. V& Pred&. Pred&
      pre! post!
     ) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_k$ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
           pre!
       ))))
       (let
        ((update_tmp_pred$ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
            pre!
        ))))
        (let
         ((update_tmp_flag_exc$ (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
             pre!
         ))))
         (let
          ((update_tmp_storage$ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
              pre!
          ))))
          (let
           ((update_tmp_pending_writer$ (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
               pre!
           ))))
           (let
            ((update_tmp_writer$ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                pre!
            ))))
            (let
             ((update_tmp_pending_reader$ (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                 pre!
             ))))
             (let
              ((update_tmp_reader$ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                  pre!
              ))))
              (and
               (>= (vstd.multiset.impl&%0.count.? $ TYPE%tuple%0. (Poly%vstd.multiset.Multiset<tuple%0.>.
                  update_tmp_pending_reader$
                 ) (Poly%tuple%0. tuple%0./tuple%0)
                ) 1
               )
               (let
                ((update_tmp_pending_reader$1 (%Poly%vstd.multiset.Multiset<tuple%0.>. (vstd.multiset.impl&%0.remove.?
                    $ TYPE%tuple%0. (Poly%vstd.multiset.Multiset<tuple%0.>. update_tmp_pending_reader$)
                    (Poly%tuple%0. tuple%0./tuple%0)
                ))))
                (let
                 ((tmp_assert$1 (and
                    tmp_assert$
                    (>= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                       pre!
                      )
                     ) 1
                 ))))
                 (let
                  ((update_tmp_flag_rc$ (nClip (Sub (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                        pre!
                       )
                      ) 1
                  ))))
                  (and
                   (=>
                    tmp_assert$1
                    (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                       post!
                      )
                     ) update_tmp_flag_rc$
                   ))
                   (and
                    (=>
                     tmp_assert$1
                     (= (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                        post!
                       )
                      ) update_tmp_pending_reader$1
                    ))
                    (and
                     (=>
                      tmp_assert$1
                      (= (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                         post!
                        )
                       ) update_tmp_reader$
                     ))
                     (and
                      (=>
                       tmp_assert$1
                       (= (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                          post!
                         )
                        ) update_tmp_writer$
                      ))
                      (and
                       (=>
                        tmp_assert$1
                        (= (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
                           post!
                          )
                         ) update_tmp_pending_writer$
                       ))
                       (and
                        (=>
                         tmp_assert$1
                         (= (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
                            post!
                           )
                          ) update_tmp_storage$
                        ))
                        (and
                         (=>
                          tmp_assert$1
                          (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                             post!
                            )
                           ) update_tmp_flag_exc$
                         ))
                         (and
                          (=>
                           tmp_assert$1
                           (= (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State. post!))
                            update_tmp_pred$
                          ))
                          (=>
                           tmp_assert$1
                           (= (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State. post!))
                            update_tmp_k$
    ))))))))))))))))))))))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon.? K&. K& V&. V& Pred&.
      Pred& pre! post!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.acquire_read_abandon.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.acquire_read_abandon.?_definition
))))

;; Function-Axioms core::option::Option::is_None
(assert
 (fuel_bool_default fuel%vstd.std_specs.option.impl&%0.is_None.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.option.impl&%0.is_None.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.std_specs.option.OptionAdditionalFns.is_None.? $ (TYPE%core!option.Option.
       T&. T&
      ) T&. T& self!
     ) (B (is-core!option.Option./None (%Poly%core!option.Option. self!)))
    )
    :pattern ((vstd.std_specs.option.OptionAdditionalFns.is_None.? $ (TYPE%core!option.Option.
       T&. T&
      ) T&. T& self!
    ))
    :qid internal_vstd.std_specs.option.OptionAdditionalFns.is_None.?_definition
    :skolemid skolem_internal_vstd.std_specs.option.OptionAdditionalFns.is_None.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::acquire_exc_start
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly)
    (post! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start.? K&. K& V&. V& Pred&. Pred&
      pre! post!
     ) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_k$ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
           pre!
       ))))
       (let
        ((update_tmp_pred$ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
            pre!
        ))))
        (let
         ((update_tmp_flag_rc$ (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
             pre!
         ))))
         (let
          ((update_tmp_storage$ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
              pre!
          ))))
          (let
           ((update_tmp_pending_writer$ (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
               pre!
           ))))
           (let
            ((update_tmp_writer$ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                pre!
            ))))
            (let
             ((update_tmp_pending_reader$ (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                 pre!
             ))))
             (let
              ((update_tmp_reader$ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                  pre!
              ))))
              (and
               (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                  pre!
                 )
                ) false
               )
               (let
                ((update_tmp_flag_exc$ true))
                (let
                 ((tmp_assert$1 (and
                    tmp_assert$
                    (is-core!option.Option./None update_tmp_pending_writer$)
                 )))
                 (let
                  ((update_tmp_pending_writer$1 (core!option.Option./Some (Poly%tuple%0. tuple%0./tuple%0))))
                  (and
                   (=>
                    tmp_assert$1
                    (= (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
                       post!
                      )
                     ) update_tmp_pending_writer$1
                   ))
                   (and
                    (=>
                     tmp_assert$1
                     (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                        post!
                       )
                      ) update_tmp_flag_exc$
                    ))
                    (and
                     (=>
                      tmp_assert$1
                      (= (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                         post!
                        )
                       ) update_tmp_reader$
                     ))
                     (and
                      (=>
                       tmp_assert$1
                       (= (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                          post!
                         )
                        ) update_tmp_pending_reader$
                      ))
                      (and
                       (=>
                        tmp_assert$1
                        (= (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                           post!
                          )
                         ) update_tmp_writer$
                       ))
                       (and
                        (=>
                         tmp_assert$1
                         (= (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
                            post!
                           )
                          ) update_tmp_storage$
                        ))
                        (and
                         (=>
                          tmp_assert$1
                          (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                             post!
                            )
                           ) update_tmp_flag_rc$
                         ))
                         (and
                          (=>
                           tmp_assert$1
                           (= (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State. post!))
                            update_tmp_pred$
                          ))
                          (=>
                           tmp_assert$1
                           (= (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State. post!))
                            update_tmp_k$
    ))))))))))))))))))))))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start.? K&. K& V&. V& Pred&.
      Pred& pre! post!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.acquire_exc_start.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.acquire_exc_start.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::acquire_exc_end
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly)
    (post! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end.? K&. K& V&. V& Pred&. Pred& pre!
      post!
     ) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_k$ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
           pre!
       ))))
       (let
        ((update_tmp_pred$ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
            pre!
        ))))
        (let
         ((update_tmp_flag_exc$ (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
             pre!
         ))))
         (let
          ((update_tmp_flag_rc$ (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
              pre!
          ))))
          (let
           ((update_tmp_storage$ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
               pre!
           ))))
           (let
            ((update_tmp_pending_writer$ (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
                pre!
            ))))
            (let
             ((update_tmp_writer$ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                 pre!
             ))))
             (let
              ((update_tmp_pending_reader$ (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                  pre!
              ))))
              (let
               ((update_tmp_reader$ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                   pre!
               ))))
               (and
                (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                   pre!
                  )
                 ) 0
                )
                (and
                 (= update_tmp_pending_writer$ (core!option.Option./Some (Poly%tuple%0. tuple%0./tuple%0)))
                 (let
                  ((update_tmp_pending_writer$1 core!option.Option./None))
                  (let
                   ((tmp_assert$1 (and
                      tmp_assert$
                      (is-core!option.Option./None update_tmp_writer$)
                   )))
                   (let
                    ((update_tmp_writer$1 (core!option.Option./Some (Poly%tuple%0. tuple%0./tuple%0))))
                    (and
                     (let
                      ((x$ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                           (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State. pre!))
                      )))))
                      (let
                       ((tmp_assert$2 (and
                          tmp_assert$1
                          (= update_tmp_storage$ (core!option.Option./Some x$))
                       )))
                       (let
                        ((update_tmp_storage$1 core!option.Option./None))
                        (let
                         ((tmp_assert$3 (and
                            tmp_assert$2
                            (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& (vstd.rwlock.RwLockToks.State./State/k
                               (%Poly%vstd.rwlock.RwLockToks.State. pre!)
                              ) x$
                         )))))
                         (=>
                          tmp_assert$3
                          (= (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
                             post!
                            )
                           ) update_tmp_storage$1
                     ))))))
                     (let
                      ((tmp_assert$4 (let
                         ((x$ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                              (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State. pre!))
                         )))))
                         (let
                          ((tmp_assert$5 (and
                             tmp_assert$1
                             (= update_tmp_storage$ (core!option.Option./Some x$))
                          )))
                          (let
                           ((update_tmp_storage$2 core!option.Option./None))
                           (let
                            ((tmp_assert$6 (and
                               tmp_assert$5
                               (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& (vstd.rwlock.RwLockToks.State./State/k
                                  (%Poly%vstd.rwlock.RwLockToks.State. pre!)
                                 ) x$
                            )))))
                            tmp_assert$6
                      ))))))
                      (and
                       (=>
                        tmp_assert$4
                        (= (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                           post!
                          )
                         ) update_tmp_writer$1
                       ))
                       (and
                        (=>
                         tmp_assert$4
                         (= (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
                            post!
                           )
                          ) update_tmp_pending_writer$1
                        ))
                        (and
                         (=>
                          tmp_assert$4
                          (= (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                             post!
                            )
                           ) update_tmp_reader$
                         ))
                         (and
                          (=>
                           tmp_assert$4
                           (= (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                              post!
                             )
                            ) update_tmp_pending_reader$
                          ))
                          (and
                           (=>
                            tmp_assert$4
                            (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                               post!
                              )
                             ) update_tmp_flag_rc$
                           ))
                           (and
                            (=>
                             tmp_assert$4
                             (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                                post!
                               )
                              ) update_tmp_flag_exc$
                            ))
                            (and
                             (=>
                              tmp_assert$4
                              (= (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State. post!))
                               update_tmp_pred$
                             ))
                             (=>
                              tmp_assert$4
                              (= (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State. post!))
                               update_tmp_k$
    )))))))))))))))))))))))))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end.? K&. K& V&. V& Pred&. Pred&
      pre! post!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.acquire_exc_end.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.acquire_exc_end.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::release_exc
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.release_exc.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.release_exc.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly)
    (post! Poly) (x! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.release_exc.? K&. K& V&. V& Pred&. Pred& pre! post!
      x!
     ) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_k$ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
           pre!
       ))))
       (let
        ((update_tmp_pred$ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
            pre!
        ))))
        (let
         ((update_tmp_flag_rc$ (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
             pre!
         ))))
         (let
          ((update_tmp_storage$ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
              pre!
          ))))
          (let
           ((update_tmp_pending_writer$ (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
               pre!
           ))))
           (let
            ((update_tmp_writer$ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                pre!
            ))))
            (let
             ((update_tmp_pending_reader$ (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                 pre!
             ))))
             (let
              ((update_tmp_reader$ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                  pre!
              ))))
              (and
               (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& (vstd.rwlock.RwLockToks.State./State/k
                  (%Poly%vstd.rwlock.RwLockToks.State. pre!)
                 ) x!
               ))
               (and
                (= update_tmp_writer$ (core!option.Option./Some (Poly%tuple%0. tuple%0./tuple%0)))
                (let
                 ((update_tmp_writer$1 core!option.Option./None))
                 (let
                  ((update_tmp_flag_exc$ false))
                  (let
                   ((tmp_assert$1 (and
                      tmp_assert$
                      (is-core!option.Option./None update_tmp_storage$)
                   )))
                   (let
                    ((update_tmp_storage$1 (core!option.Option./Some x!)))
                    (and
                     (=>
                      tmp_assert$1
                      (= (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
                         post!
                        )
                       ) update_tmp_storage$1
                     ))
                     (and
                      (=>
                       tmp_assert$1
                       (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                          post!
                         )
                        ) update_tmp_flag_exc$
                      ))
                      (and
                       (=>
                        tmp_assert$1
                        (= (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                           post!
                          )
                         ) update_tmp_writer$1
                       ))
                       (and
                        (=>
                         tmp_assert$1
                         (= (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                            post!
                           )
                          ) update_tmp_reader$
                        ))
                        (and
                         (=>
                          tmp_assert$1
                          (= (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                             post!
                            )
                           ) update_tmp_pending_reader$
                         ))
                         (and
                          (=>
                           tmp_assert$1
                           (= (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
                              post!
                             )
                            ) update_tmp_pending_writer$
                          ))
                          (and
                           (=>
                            tmp_assert$1
                            (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                               post!
                              )
                             ) update_tmp_flag_rc$
                           ))
                           (and
                            (=>
                             tmp_assert$1
                             (= (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State. post!))
                              update_tmp_pred$
                            ))
                            (=>
                             tmp_assert$1
                             (= (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State. post!))
                              update_tmp_k$
    ))))))))))))))))))))))))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.release_exc.? K&. K& V&. V& Pred&. Pred&
      pre! post! x!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.release_exc.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.release_exc.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::release_shared
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.release_shared.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.release_shared.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly)
    (post! Poly) (x! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.release_shared.? K&. K& V&. V& Pred&. Pred& pre!
      post! x!
     ) (let
      ((tmp_assert$ true))
      (let
       ((update_tmp_k$ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
           pre!
       ))))
       (let
        ((update_tmp_pred$ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
            pre!
        ))))
        (let
         ((update_tmp_flag_exc$ (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
             pre!
         ))))
         (let
          ((update_tmp_storage$ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
              pre!
          ))))
          (let
           ((update_tmp_pending_writer$ (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
               pre!
           ))))
           (let
            ((update_tmp_writer$ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                pre!
            ))))
            (let
             ((update_tmp_pending_reader$ (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                 pre!
             ))))
             (let
              ((update_tmp_reader$ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                  pre!
              ))))
              (and
               (>= (vstd.multiset.impl&%0.count.? V&. V& update_tmp_reader$ x!) 1)
               (let
                ((update_tmp_reader$1 (vstd.multiset.impl&%0.remove.? V&. V& update_tmp_reader$ x!)))
                (let
                 ((tmp_assert$1 (and
                    tmp_assert$
                    (>= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                       pre!
                      )
                     ) 1
                 ))))
                 (let
                  ((update_tmp_flag_rc$ (nClip (Sub (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                        pre!
                       )
                      ) 1
                  ))))
                  (and
                   (=>
                    tmp_assert$1
                    (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                       post!
                      )
                     ) update_tmp_flag_rc$
                   ))
                   (and
                    (=>
                     tmp_assert$1
                     (= (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                        post!
                       )
                      ) update_tmp_reader$1
                    ))
                    (and
                     (=>
                      tmp_assert$1
                      (= (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                         post!
                        )
                       ) update_tmp_pending_reader$
                     ))
                     (and
                      (=>
                       tmp_assert$1
                       (= (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                          post!
                         )
                        ) update_tmp_writer$
                      ))
                      (and
                       (=>
                        tmp_assert$1
                        (= (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
                           post!
                          )
                         ) update_tmp_pending_writer$
                       ))
                       (and
                        (=>
                         tmp_assert$1
                         (= (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
                            post!
                           )
                          ) update_tmp_storage$
                        ))
                        (and
                         (=>
                          tmp_assert$1
                          (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                             post!
                            )
                           ) update_tmp_flag_exc$
                         ))
                         (and
                          (=>
                           tmp_assert$1
                           (= (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State. post!))
                            update_tmp_pred$
                          ))
                          (=>
                           tmp_assert$1
                           (= (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State. post!))
                            update_tmp_k$
    ))))))))))))))))))))))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.release_shared.? K&. K& V&. V& Pred&. Pred&
      pre! post! x!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.release_shared.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.release_shared.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::next_by
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.next_by.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly)
    (post! Poly) (step! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.next_by.? K&. K& V&. V& Pred&. Pred& pre! post!
      step!
     ) (ite
      (is-vstd.rwlock.RwLockToks.Step./acquire_read_start (%Poly%vstd.rwlock.RwLockToks.Step.
        step!
      ))
      (vstd.rwlock.RwLockToks.impl&%23.acquire_read_start.? K&. K& V&. V& Pred&. Pred& pre!
       post!
      )
      (ite
       (is-vstd.rwlock.RwLockToks.Step./acquire_read_end (%Poly%vstd.rwlock.RwLockToks.Step.
         step!
       ))
       (vstd.rwlock.RwLockToks.impl&%23.acquire_read_end.? K&. K& V&. V& Pred&. Pred& pre!
        post!
       )
       (ite
        (is-vstd.rwlock.RwLockToks.Step./acquire_read_abandon (%Poly%vstd.rwlock.RwLockToks.Step.
          step!
        ))
        (vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon.? K&. K& V&. V& Pred&. Pred&
         pre! post!
        )
        (ite
         (is-vstd.rwlock.RwLockToks.Step./acquire_exc_start (%Poly%vstd.rwlock.RwLockToks.Step.
           step!
         ))
         (vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start.? K&. K& V&. V& Pred&. Pred& pre!
          post!
         )
         (ite
          (is-vstd.rwlock.RwLockToks.Step./acquire_exc_end (%Poly%vstd.rwlock.RwLockToks.Step.
            step!
          ))
          (vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end.? K&. K& V&. V& Pred&. Pred& pre!
           post!
          )
          (ite
           (is-vstd.rwlock.RwLockToks.Step./release_exc (%Poly%vstd.rwlock.RwLockToks.Step. step!))
           (let
            ((x$ (vstd.rwlock.RwLockToks.Step./release_exc/0 (%Poly%vstd.rwlock.RwLockToks.Step.
                step!
            ))))
            (vstd.rwlock.RwLockToks.impl&%23.release_exc.? K&. K& V&. V& Pred&. Pred& pre! post!
             x$
           ))
           (and
            (is-vstd.rwlock.RwLockToks.Step./release_shared (%Poly%vstd.rwlock.RwLockToks.Step.
              step!
            ))
            (let
             ((x$ (vstd.rwlock.RwLockToks.Step./release_shared/0 (%Poly%vstd.rwlock.RwLockToks.Step.
                 step!
             ))))
             (vstd.rwlock.RwLockToks.impl&%23.release_shared.? K&. K& V&. V& Pred&. Pred& pre!
              post! x$
    ))))))))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.next_by.? K&. K& V&. V& Pred&. Pred& pre!
      post! step!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.next_by.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.next_by.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::next
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.next.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly)
    (post! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.next.? K&. K& V&. V& Pred&. Pred& pre! post!)
     (exists ((step$ Poly)) (!
       (and
        (has_type step$ (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&))
        (vstd.rwlock.RwLockToks.impl&%23.next_by.? K&. K& V&. V& Pred&. Pred& pre! post! step$)
       )
       :pattern ((vstd.rwlock.RwLockToks.impl&%23.next_by.? K&. K& V&. V& Pred&. Pred& pre!
         post! step$
       ))
       :qid user_crate__vstd__rwlock__RwLockToks__State__next_1
       :skolemid skolem_user_crate__vstd__rwlock__RwLockToks__State__next_1
    )))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.next.? K&. K& V&. V& Pred&. Pred& pre! post!))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.next.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.next.?_definition
))))

;; Function-Axioms crate::vstd::multiset::Multiset::empty
(assert
 (forall ((V&. Dcr) (V& Type)) (!
   (has_type (vstd.multiset.impl&%0.empty.? V&. V&) (TYPE%vstd.multiset.Multiset. V&.
     V&
   ))
   :pattern ((vstd.multiset.impl&%0.empty.? V&. V&))
   :qid internal_vstd.multiset.impl&__0.empty.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.empty.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::initialize_full
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.initialize_full.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.initialize_full.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (post! Poly)
    (k! Poly) (t! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.initialize_full.? K&. K& V&. V& Pred&. Pred& post!
      k! t!
     ) (and
      (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& k! t!))
      (let
       ((update_tmp_k$ k!))
       (let
        ((update_tmp_pred$ core!marker.PhantomData./PhantomData))
        (let
         ((update_tmp_flag_exc$ false))
         (let
          ((update_tmp_flag_rc$ 0))
          (let
           ((update_tmp_storage$ (core!option.Option./Some t!)))
           (let
            ((update_tmp_pending_writer$ core!option.Option./None))
            (let
             ((update_tmp_writer$ core!option.Option./None))
             (let
              ((update_tmp_pending_reader$ (%Poly%vstd.multiset.Multiset<tuple%0.>. (vstd.multiset.impl&%0.empty.?
                  $ TYPE%tuple%0.
              ))))
              (let
               ((update_tmp_reader$ (vstd.multiset.impl&%0.empty.? V&. V&)))
               (and
                (= (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                   post!
                  )
                 ) update_tmp_reader$
                )
                (and
                 (= (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                    post!
                   )
                  ) update_tmp_pending_reader$
                 )
                 (and
                  (= (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                     post!
                    )
                   ) update_tmp_writer$
                  )
                  (and
                   (= (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
                      post!
                     )
                    ) update_tmp_pending_writer$
                   )
                   (and
                    (= (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
                       post!
                      )
                     ) update_tmp_storage$
                    )
                    (and
                     (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                        post!
                       )
                      ) update_tmp_flag_rc$
                     )
                     (and
                      (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                         post!
                        )
                       ) update_tmp_flag_exc$
                      )
                      (and
                       (= (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State. post!))
                        update_tmp_pred$
                       )
                       (= (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State. post!))
                        update_tmp_k$
    ))))))))))))))))))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.initialize_full.? K&. K& V&. V& Pred&. Pred&
      post! k! t!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.initialize_full.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.initialize_full.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::init_by
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.init_by.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (post! Poly)
    (step! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.init_by.? K&. K& V&. V& Pred&. Pred& post! step!)
     (and
      (is-vstd.rwlock.RwLockToks.Config./initialize_full (%Poly%vstd.rwlock.RwLockToks.Config.
        step!
      ))
      (let
       ((k$ (vstd.rwlock.RwLockToks.Config./initialize_full/0 (%Poly%vstd.rwlock.RwLockToks.Config.
           step!
       ))))
       (let
        ((t$ (vstd.rwlock.RwLockToks.Config./initialize_full/1 (%Poly%vstd.rwlock.RwLockToks.Config.
            step!
        ))))
        (vstd.rwlock.RwLockToks.impl&%23.initialize_full.? K&. K& V&. V& Pred&. Pred& post!
         k$ t$
    )))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.init_by.? K&. K& V&. V& Pred&. Pred& post!
      step!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.init_by.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.init_by.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::init
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.init.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (post! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%23.init.? K&. K& V&. V& Pred&. Pred& post!) (exists
      ((step$ Poly)) (!
       (and
        (has_type step$ (TYPE%vstd.rwlock.RwLockToks.Config. K&. K& V&. V& Pred&. Pred&))
        (vstd.rwlock.RwLockToks.impl&%23.init_by.? K&. K& V&. V& Pred&. Pred& post! step$)
       )
       :pattern ((vstd.rwlock.RwLockToks.impl&%23.init_by.? K&. K& V&. V& Pred&. Pred& post!
         step$
       ))
       :qid user_crate__vstd__rwlock__RwLockToks__State__init_2
       :skolemid skolem_user_crate__vstd__rwlock__RwLockToks__State__init_2
    )))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.init.? K&. K& V&. V& Pred&. Pred& post!))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.init.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.init.?_definition
))))

;; Function-Specs core::clone::impls::impl&%21::clone
(declare-fun ens%core!clone.impls.impl&%21.clone. (Poly Poly) Bool)
(assert
 (forall ((b! Poly) (res! Poly)) (!
   (= (ens%core!clone.impls.impl&%21.clone. b! res!) (and
     (ens%core!clone.Clone.clone. $ BOOL b! res!)
     (= res! b!)
   ))
   :pattern ((ens%core!clone.impls.impl&%21.clone. b! res!))
   :qid internal_ens__core!clone.impls.impl&__21.clone._definition
   :skolemid skolem_internal_ens__core!clone.impls.impl&__21.clone._definition
)))
(assert
 (forall ((tmp%%$ Poly) (res$ Poly)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%1. (REF $) BOOL))
     (has_type res$ BOOL)
    )
    (=>
     (closure_ens (FNDEF%core!clone.Clone.clone. $ BOOL) $ (TYPE%tuple%1. (REF $) BOOL)
      (F fndef_singleton) tmp%%$ res$
     )
     (let
      ((b$ (%B (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$)))))
      (= (%B res$) b$)
   )))
   :pattern ((closure_ens (FNDEF%core!clone.Clone.clone. $ BOOL) $ (TYPE%tuple%1. (REF $)
      BOOL
     ) (F fndef_singleton) tmp%%$ res$
   ))
   :qid user_core__clone__impls__impl&%21__clone_3
   :skolemid skolem_user_core__clone__impls__impl&%21__clone_3
)))

;; Function-Specs core::clone::impls::impl&%3::clone
(declare-fun ens%core!clone.impls.impl&%3.clone. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (b! Poly) (res! Poly)) (!
   (= (ens%core!clone.impls.impl&%3.clone. T&. T& b! res!) (and
     (ens%core!clone.Clone.clone. (REF T&.) T& b! res!)
     (= res! b!)
   ))
   :pattern ((ens%core!clone.impls.impl&%3.clone. T&. T& b! res!))
   :qid internal_ens__core!clone.impls.impl&__3.clone._definition
   :skolemid skolem_internal_ens__core!clone.impls.impl&__3.clone._definition
)))
(assert
 (forall ((tmp%%$ Poly) (res$ Poly) (T&. Dcr) (T& Type)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%1. (REF (REF T&.)) T&))
     (has_type res$ T&)
    )
    (=>
     (closure_ens (FNDEF%core!clone.Clone.clone. (REF T&.) T&) $ (TYPE%tuple%1. (REF (REF
         T&.
        )
       ) T&
      ) (F fndef_singleton) tmp%%$ res$
     )
     (let
      ((b$ (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$))))
      (= res$ b$)
   )))
   :pattern ((closure_ens (FNDEF%core!clone.Clone.clone. (REF T&.) T&) $ (TYPE%tuple%1.
      (REF (REF T&.)) T&
     ) (F fndef_singleton) tmp%%$ res$
   ))
   :qid user_core__clone__impls__impl&%3__clone_4
   :skolemid skolem_user_core__clone__impls__impl&%3__clone_4
)))

;; Function-Specs crate::builtin::Tracked::clone
(declare-fun ens%builtin.impl&%4.clone. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (b! Poly) (res! Poly)) (!
   (= (ens%builtin.impl&%4.clone. T&. T& b! res!) (and
     (ens%core!clone.Clone.clone. (TRACKED T&.) T& b! res!)
     (= res! b!)
   ))
   :pattern ((ens%builtin.impl&%4.clone. T&. T& b! res!))
   :qid internal_ens__builtin.impl&__4.clone._definition
   :skolemid skolem_internal_ens__builtin.impl&__4.clone._definition
)))
(assert
 (forall ((tmp%%$ Poly) (res$ Poly) (T&. Dcr) (T& Type)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%1. (REF (TRACKED T&.)) T&))
     (has_type res$ T&)
    )
    (=>
     (closure_ens (FNDEF%core!clone.Clone.clone. (TRACKED T&.) T&) $ (TYPE%tuple%1. (REF
        (TRACKED T&.)
       ) T&
      ) (F fndef_singleton) tmp%%$ res$
     )
     (let
      ((b$ (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$))))
      (= res$ b$)
   )))
   :pattern ((closure_ens (FNDEF%core!clone.Clone.clone. (TRACKED T&.) T&) $ (TYPE%tuple%1.
      (REF (TRACKED T&.)) T&
     ) (F fndef_singleton) tmp%%$ res$
   ))
   :qid user_crate__builtin__Tracked__clone_5
   :skolemid skolem_user_crate__builtin__Tracked__clone_5
)))

;; Function-Specs crate::builtin::Ghost::clone
(declare-fun ens%builtin.impl&%2.clone. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (b! Poly) (res! Poly)) (!
   (= (ens%builtin.impl&%2.clone. T&. T& b! res!) (and
     (ens%core!clone.Clone.clone. (GHOST T&.) T& b! res!)
     (= res! b!)
   ))
   :pattern ((ens%builtin.impl&%2.clone. T&. T& b! res!))
   :qid internal_ens__builtin.impl&__2.clone._definition
   :skolemid skolem_internal_ens__builtin.impl&__2.clone._definition
)))
(assert
 (forall ((tmp%%$ Poly) (res$ Poly) (T&. Dcr) (T& Type)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%1. (REF (GHOST T&.)) T&))
     (has_type res$ T&)
    )
    (=>
     (closure_ens (FNDEF%core!clone.Clone.clone. (GHOST T&.) T&) $ (TYPE%tuple%1. (REF (GHOST
         T&.
        )
       ) T&
      ) (F fndef_singleton) tmp%%$ res$
     )
     (let
      ((b$ (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$))))
      (= res$ b$)
   )))
   :pattern ((closure_ens (FNDEF%core!clone.Clone.clone. (GHOST T&.) T&) $ (TYPE%tuple%1.
      (REF (GHOST T&.)) T&
     ) (F fndef_singleton) tmp%%$ res$
   ))
   :qid user_crate__builtin__Ghost__clone_6
   :skolemid skolem_user_crate__builtin__Ghost__clone_6
)))

;; Function-Axioms crate::vstd::std_specs::option::is_none
(assert
 (fuel_bool_default fuel%vstd.std_specs.option.is_none.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.option.is_none.)
  (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
    (= (vstd.std_specs.option.is_none.? T&. T& option!) (is-core!option.Option./None (%Poly%core!option.Option.
       option!
    )))
    :pattern ((vstd.std_specs.option.is_none.? T&. T& option!))
    :qid internal_vstd.std_specs.option.is_none.?_definition
    :skolemid skolem_internal_vstd.std_specs.option.is_none.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::option::is_some
(assert
 (fuel_bool_default fuel%vstd.std_specs.option.is_some.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.option.is_some.)
  (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
    (= (vstd.std_specs.option.is_some.? T&. T& option!) (is-core!option.Option./Some (%Poly%core!option.Option.
       option!
    )))
    :pattern ((vstd.std_specs.option.is_some.? T&. T& option!))
    :qid internal_vstd.std_specs.option.is_some.?_definition
    :skolemid skolem_internal_vstd.std_specs.option.is_some.?_definition
))))

;; Function-Axioms core::option::Option::is_Some
(assert
 (fuel_bool_default fuel%vstd.std_specs.option.impl&%0.is_Some.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.option.impl&%0.is_Some.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.std_specs.option.OptionAdditionalFns.is_Some.? $ (TYPE%core!option.Option.
       T&. T&
      ) T&. T& self!
     ) (B (is-core!option.Option./Some (%Poly%core!option.Option. self!)))
    )
    :pattern ((vstd.std_specs.option.OptionAdditionalFns.is_Some.? $ (TYPE%core!option.Option.
       T&. T&
      ) T&. T& self!
    ))
    :qid internal_vstd.std_specs.option.OptionAdditionalFns.is_Some.?_definition
    :skolemid skolem_internal_vstd.std_specs.option.OptionAdditionalFns.is_Some.?_definition
))))

;; Function-Specs crate::vstd::std_specs::option::spec_unwrap
(declare-fun req%vstd.std_specs.option.spec_unwrap. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
   (= (req%vstd.std_specs.option.spec_unwrap. T&. T& option!) (=>
     %%global_location_label%%1
     (is-core!option.Option./Some (%Poly%core!option.Option. option!))
   ))
   :pattern ((req%vstd.std_specs.option.spec_unwrap. T&. T& option!))
   :qid internal_req__vstd.std_specs.option.spec_unwrap._definition
   :skolemid skolem_internal_req__vstd.std_specs.option.spec_unwrap._definition
)))

;; Function-Axioms crate::vstd::std_specs::option::spec_unwrap
(assert
 (fuel_bool_default fuel%vstd.std_specs.option.spec_unwrap.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.option.spec_unwrap.)
  (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
    (= (vstd.std_specs.option.spec_unwrap.? T&. T& option!) (core!option.Option./Some/0
      (%Poly%core!option.Option. option!)
    ))
    :pattern ((vstd.std_specs.option.spec_unwrap.? T&. T& option!))
    :qid internal_vstd.std_specs.option.spec_unwrap.?_definition
    :skolemid skolem_internal_vstd.std_specs.option.spec_unwrap.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
   (=>
    (has_type option! (TYPE%core!option.Option. T&. T&))
    (has_type (vstd.std_specs.option.spec_unwrap.? T&. T& option!) T&)
   )
   :pattern ((vstd.std_specs.option.spec_unwrap.? T&. T& option!))
   :qid internal_vstd.std_specs.option.spec_unwrap.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.option.spec_unwrap.?_pre_post_definition
)))

;; Function-Specs core::option::impl&%5::clone
(declare-fun ens%core!option.impl&%5.clone. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (opt! Poly) (res! Poly)) (!
   (= (ens%core!option.impl&%5.clone. T&. T& opt! res!) (and
     (ens%core!clone.Clone.clone. $ (TYPE%core!option.Option. T&. T&) opt! res!)
     (=>
      (is-core!option.Option./None (%Poly%core!option.Option. opt!))
      (is-core!option.Option./None (%Poly%core!option.Option. res!))
     )
     (=>
      (is-core!option.Option./Some (%Poly%core!option.Option. opt!))
      (and
       (is-core!option.Option./Some (%Poly%core!option.Option. res!))
       (closure_ens (FNDEF%core!clone.Clone.clone. T&. T&) $ (TYPE%tuple%1. (REF T&.) T&)
        (F fndef_singleton) (Poly%tuple%1. (tuple%1./tuple%1 (core!option.Option./Some/0 (%Poly%core!option.Option.
            opt!
         )))
        ) (core!option.Option./Some/0 (%Poly%core!option.Option. res!))
   )))))
   :pattern ((ens%core!option.impl&%5.clone. T&. T& opt! res!))
   :qid internal_ens__core!option.impl&__5.clone._definition
   :skolemid skolem_internal_ens__core!option.impl&__5.clone._definition
)))
(assert
 (forall ((tmp%%$ Poly) (res$ Poly) (T&. Dcr) (T& Type)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%1. (REF $) (TYPE%core!option.Option. T&. T&)))
     (has_type res$ (TYPE%core!option.Option. T&. T&))
    )
    (=>
     (closure_ens (FNDEF%core!clone.Clone.clone. $ (TYPE%core!option.Option. T&. T&)) $
      (TYPE%tuple%1. (REF $) (TYPE%core!option.Option. T&. T&)) (F fndef_singleton) tmp%%$
      res$
     )
     (let
      ((opt$ (%Poly%core!option.Option. (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$)))))
      (and
       (=>
        (is-core!option.Option./None opt$)
        (is-core!option.Option./None (%Poly%core!option.Option. res$))
       )
       (=>
        (is-core!option.Option./Some opt$)
        (and
         (is-core!option.Option./Some (%Poly%core!option.Option. res$))
         (closure_ens (FNDEF%core!clone.Clone.clone. T&. T&) $ (TYPE%tuple%1. (REF T&.) T&)
          (F fndef_singleton) (Poly%tuple%1. (tuple%1./tuple%1 (core!option.Option./Some/0 (%Poly%core!option.Option.
              (Poly%core!option.Option. opt$)
           )))
          ) (core!option.Option./Some/0 (%Poly%core!option.Option. res$))
   )))))))
   :pattern ((closure_ens (FNDEF%core!clone.Clone.clone. $ (TYPE%core!option.Option. T&.
       T&
      )
     ) $ (TYPE%tuple%1. (REF $) (TYPE%core!option.Option. T&. T&)) (F fndef_singleton)
     tmp%%$ res$
   ))
   :qid user_core__option__impl&%5__clone_7
   :skolemid skolem_user_core__option__impl&%5__clone_7
)))

;; Function-Specs crate::vstd::rwlock::RwLockToks::Instance::clone
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%20.clone. (Dcr Type Dcr Type Dcr Type
  vstd.rwlock.RwLockToks.Instance. vstd.rwlock.RwLockToks.Instance.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.rwlock.RwLockToks.Instance.)
   (s! vstd.rwlock.RwLockToks.Instance.)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%20.clone. K&. K& V&. V& Pred&. Pred& self! s!)
    (and
     (has_type (Poly%vstd.rwlock.RwLockToks.Instance. s!) (TYPE%vstd.rwlock.RwLockToks.Instance.
       K&. K& V&. V& Pred&. Pred&
     ))
     (= self! s!)
   ))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%20.clone. K&. K& V&. V& Pred&. Pred& self!
     s!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__20.clone._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__20.clone._definition
)))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::Instance::k
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.rwlock.RwLockToks.Instance. K&. K& V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.RwLockToks.impl&%20.k.? K&. K& V&. V& Pred&. Pred& self!) K&)
   )
   :pattern ((vstd.rwlock.RwLockToks.impl&%20.k.? K&. K& V&. V& Pred&. Pred& self!))
   :qid internal_vstd.rwlock.RwLockToks.impl&__20.k.?_pre_post_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__20.k.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::exc_bit_matches
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.exc_bit_matches.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.exc_bit_matches.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%23.exc_bit_matches.? K&. K& V&. V& Pred&. Pred& self!)
     (= (ite
       (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
         self!
       ))
       1
       0
      ) (Add (ite
        (is-core!option.Option./Some (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
           self!
        )))
        1
        0
       ) (ite
        (is-core!option.Option./Some (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
           self!
        )))
        1
        0
    ))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.exc_bit_matches.? K&. K& V&. V& Pred&. Pred&
      self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.exc_bit_matches.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.exc_bit_matches.?_definition
))))

;; Function-Specs crate::vstd::rwlock::RwLockToks::State::lemma_msg_exc_bit_matches
(declare-fun req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_exc_bit_matches. (Dcr Type
  Dcr Type Dcr Type vstd.rwlock.RwLockToks.State.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (s! vstd.rwlock.RwLockToks.State.))
  (!
   (= (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_exc_bit_matches. K&. K& V&. V& Pred&.
     Pred& s!
    ) (vstd.rwlock.RwLockToks.impl&%23.exc_bit_matches.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      s!
   )))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_exc_bit_matches. K&. K& V&.
     V& Pred&. Pred& s!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__23.lemma_msg_exc_bit_matches._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__23.lemma_msg_exc_bit_matches._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_exc_bit_matches. (Dcr Type
  Dcr Type Dcr Type vstd.rwlock.RwLockToks.State.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (s! vstd.rwlock.RwLockToks.State.))
  (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_exc_bit_matches. K&. K& V&. V& Pred&.
     Pred& s!
    ) (vstd.rwlock.RwLockToks.impl&%23.exc_bit_matches.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      s!
   )))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_exc_bit_matches. K&. K& V&.
     V& Pred&. Pred& s!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__23.lemma_msg_exc_bit_matches._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__23.lemma_msg_exc_bit_matches._definition
)))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::count_matches
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.count_matches.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.count_matches.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%23.count_matches.? K&. K& V&. V& Pred&. Pred& self!)
     (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
        self!
       )
      ) (nClip (Add (vstd.multiset.impl&%0.count.? $ TYPE%tuple%0. (Poly%vstd.multiset.Multiset<tuple%0.>.
          (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
            self!
          ))
         ) (Poly%tuple%0. tuple%0./tuple%0)
        ) (vstd.multiset.impl&%0.count.? V&. V& (vstd.rwlock.RwLockToks.State./State/reader
          (%Poly%vstd.rwlock.RwLockToks.State. self!)
         ) (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option. (
             vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State. self!)
    )))))))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.count_matches.? K&. K& V&. V& Pred&. Pred&
      self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.count_matches.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.count_matches.?_definition
))))

;; Function-Specs crate::vstd::rwlock::RwLockToks::State::lemma_msg_count_matches
(declare-fun req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_count_matches. (Dcr Type
  Dcr Type Dcr Type vstd.rwlock.RwLockToks.State.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (s! vstd.rwlock.RwLockToks.State.))
  (!
   (= (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_count_matches. K&. K& V&. V& Pred&.
     Pred& s!
    ) (vstd.rwlock.RwLockToks.impl&%23.count_matches.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      s!
   )))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_count_matches. K&. K& V&.
     V& Pred&. Pred& s!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__23.lemma_msg_count_matches._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__23.lemma_msg_count_matches._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_count_matches. (Dcr Type
  Dcr Type Dcr Type vstd.rwlock.RwLockToks.State.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (s! vstd.rwlock.RwLockToks.State.))
  (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_count_matches. K&. K& V&. V& Pred&.
     Pred& s!
    ) (vstd.rwlock.RwLockToks.impl&%23.count_matches.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      s!
   )))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_count_matches. K&. K& V&.
     V& Pred&. Pred& s!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__23.lemma_msg_count_matches._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__23.lemma_msg_count_matches._definition
)))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::reader_agrees_storage
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.reader_agrees_storage.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.reader_agrees_storage.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%23.reader_agrees_storage.? K&. K& V&. V& Pred&. Pred&
      self!
     ) (forall ((t$ Poly)) (!
       (=>
        (has_type t$ V&)
        (=>
         (> (vstd.multiset.impl&%0.count.? V&. V& (vstd.rwlock.RwLockToks.State./State/reader
            (%Poly%vstd.rwlock.RwLockToks.State. self!)
           ) t$
          ) 0
         )
         (= (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
            self!
           )
          ) (core!option.Option./Some t$)
       )))
       :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.rwlock.RwLockToks.State./State/reader
          (%Poly%vstd.rwlock.RwLockToks.State. self!)
         ) t$
       ))
       :qid user_crate__vstd__rwlock__RwLockToks__State__reader_agrees_storage_8
       :skolemid skolem_user_crate__vstd__rwlock__RwLockToks__State__reader_agrees_storage_8
    )))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.reader_agrees_storage.? K&. K& V&. V& Pred&.
      Pred& self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.reader_agrees_storage.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.reader_agrees_storage.?_definition
))))

;; Function-Specs crate::vstd::rwlock::RwLockToks::State::lemma_msg_reader_agrees_storage
(declare-fun req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_reader_agrees_storage.
 (Dcr Type Dcr Type Dcr Type vstd.rwlock.RwLockToks.State.) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (s! vstd.rwlock.RwLockToks.State.))
  (!
   (= (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_reader_agrees_storage. K&. K& V&.
     V& Pred&. Pred& s!
    ) (vstd.rwlock.RwLockToks.impl&%23.reader_agrees_storage.? K&. K& V&. V& Pred&. Pred&
     (Poly%vstd.rwlock.RwLockToks.State. s!)
   ))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_reader_agrees_storage. K&.
     K& V&. V& Pred&. Pred& s!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__23.lemma_msg_reader_agrees_storage._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__23.lemma_msg_reader_agrees_storage._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_reader_agrees_storage.
 (Dcr Type Dcr Type Dcr Type vstd.rwlock.RwLockToks.State.) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (s! vstd.rwlock.RwLockToks.State.))
  (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_reader_agrees_storage. K&. K& V&.
     V& Pred&. Pred& s!
    ) (vstd.rwlock.RwLockToks.impl&%23.reader_agrees_storage.? K&. K& V&. V& Pred&. Pred&
     (Poly%vstd.rwlock.RwLockToks.State. s!)
   ))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_reader_agrees_storage. K&.
     K& V&. V& Pred&. Pred& s!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__23.lemma_msg_reader_agrees_storage._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__23.lemma_msg_reader_agrees_storage._definition
)))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::writer_agrees_storage
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.writer_agrees_storage.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.writer_agrees_storage.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%23.writer_agrees_storage.? K&. K& V&. V& Pred&. Pred&
      self!
     ) (=>
      (is-core!option.Option./Some (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
         self!
      )))
      (is-core!option.Option./None (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
         self!
    )))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.writer_agrees_storage.? K&. K& V&. V& Pred&.
      Pred& self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.writer_agrees_storage.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.writer_agrees_storage.?_definition
))))

;; Function-Specs crate::vstd::rwlock::RwLockToks::State::lemma_msg_writer_agrees_storage
(declare-fun req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage.
 (Dcr Type Dcr Type Dcr Type vstd.rwlock.RwLockToks.State.) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (s! vstd.rwlock.RwLockToks.State.))
  (!
   (= (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage. K&. K& V&.
     V& Pred&. Pred& s!
    ) (vstd.rwlock.RwLockToks.impl&%23.writer_agrees_storage.? K&. K& V&. V& Pred&. Pred&
     (Poly%vstd.rwlock.RwLockToks.State. s!)
   ))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage. K&.
     K& V&. V& Pred&. Pred& s!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__23.lemma_msg_writer_agrees_storage._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__23.lemma_msg_writer_agrees_storage._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage.
 (Dcr Type Dcr Type Dcr Type vstd.rwlock.RwLockToks.State.) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (s! vstd.rwlock.RwLockToks.State.))
  (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage. K&. K& V&.
     V& Pred&. Pred& s!
    ) (vstd.rwlock.RwLockToks.impl&%23.writer_agrees_storage.? K&. K& V&. V& Pred&. Pred&
     (Poly%vstd.rwlock.RwLockToks.State. s!)
   ))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage. K&.
     K& V&. V& Pred&. Pred& s!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__23.lemma_msg_writer_agrees_storage._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__23.lemma_msg_writer_agrees_storage._definition
)))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::writer_agrees_storage_rev
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.writer_agrees_storage_rev.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.writer_agrees_storage_rev.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%23.writer_agrees_storage_rev.? K&. K& V&. V& Pred&.
      Pred& self!
     ) (=>
      (is-core!option.Option./None (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
         self!
      )))
      (is-core!option.Option./Some (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
         self!
    )))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.writer_agrees_storage_rev.? K&. K& V&. V&
      Pred&. Pred& self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.writer_agrees_storage_rev.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.writer_agrees_storage_rev.?_definition
))))

;; Function-Specs crate::vstd::rwlock::RwLockToks::State::lemma_msg_writer_agrees_storage_rev
(declare-fun req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage_rev.
 (Dcr Type Dcr Type Dcr Type vstd.rwlock.RwLockToks.State.) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (s! vstd.rwlock.RwLockToks.State.))
  (!
   (= (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage_rev. K&. K&
     V&. V& Pred&. Pred& s!
    ) (vstd.rwlock.RwLockToks.impl&%23.writer_agrees_storage_rev.? K&. K& V&. V& Pred&.
     Pred& (Poly%vstd.rwlock.RwLockToks.State. s!)
   ))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage_rev.
     K&. K& V&. V& Pred&. Pred& s!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__23.lemma_msg_writer_agrees_storage_rev._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__23.lemma_msg_writer_agrees_storage_rev._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage_rev.
 (Dcr Type Dcr Type Dcr Type vstd.rwlock.RwLockToks.State.) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (s! vstd.rwlock.RwLockToks.State.))
  (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage_rev. K&. K&
     V&. V& Pred&. Pred& s!
    ) (vstd.rwlock.RwLockToks.impl&%23.writer_agrees_storage_rev.? K&. K& V&. V& Pred&.
     Pred& (Poly%vstd.rwlock.RwLockToks.State. s!)
   ))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage_rev.
     K&. K& V&. V& Pred&. Pred& s!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__23.lemma_msg_writer_agrees_storage_rev._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__23.lemma_msg_writer_agrees_storage_rev._definition
)))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::sto_user_inv
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.sto_user_inv.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.sto_user_inv.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%23.sto_user_inv.? K&. K& V&. V& Pred&. Pred& self!)
     (=>
      (is-core!option.Option./Some (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
         self!
      )))
      (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& (vstd.rwlock.RwLockToks.State./State/k
         (%Poly%vstd.rwlock.RwLockToks.State. self!)
        ) (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option. (
            vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State. self!)
    ))))))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.sto_user_inv.? K&. K& V&. V& Pred&. Pred&
      self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.sto_user_inv.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.sto_user_inv.?_definition
))))

;; Function-Specs crate::vstd::rwlock::RwLockToks::State::lemma_msg_sto_user_inv
(declare-fun req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_sto_user_inv. (Dcr Type
  Dcr Type Dcr Type vstd.rwlock.RwLockToks.State.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (s! vstd.rwlock.RwLockToks.State.))
  (!
   (= (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_sto_user_inv. K&. K& V&. V& Pred&.
     Pred& s!
    ) (vstd.rwlock.RwLockToks.impl&%23.sto_user_inv.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      s!
   )))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_sto_user_inv. K&. K& V&. V&
     Pred&. Pred& s!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__23.lemma_msg_sto_user_inv._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__23.lemma_msg_sto_user_inv._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_sto_user_inv. (Dcr Type
  Dcr Type Dcr Type vstd.rwlock.RwLockToks.State.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (s! vstd.rwlock.RwLockToks.State.))
  (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_sto_user_inv. K&. K& V&. V& Pred&.
     Pred& s!
    ) (vstd.rwlock.RwLockToks.impl&%23.sto_user_inv.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      s!
   )))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_sto_user_inv. K&. K& V&. V&
     Pred&. Pred& s!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__23.lemma_msg_sto_user_inv._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__23.lemma_msg_sto_user_inv._definition
)))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::Step::arrow_release_exc_0
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%0.arrow_release_exc_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%0.arrow_release_exc_0.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%0.arrow_release_exc_0.? K&. K& V&. V& Pred&. Pred&
      self!
     ) (vstd.rwlock.RwLockToks.Step./release_exc/0 (%Poly%vstd.rwlock.RwLockToks.Step. self!))
    )
    :pattern ((vstd.rwlock.RwLockToks.impl&%0.arrow_release_exc_0.? K&. K& V&. V& Pred&.
      Pred& self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__0.arrow_release_exc_0.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__0.arrow_release_exc_0.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.RwLockToks.impl&%0.arrow_release_exc_0.? K&. K& V&. V& Pred&.
      Pred& self!
     ) V&
   ))
   :pattern ((vstd.rwlock.RwLockToks.impl&%0.arrow_release_exc_0.? K&. K& V&. V& Pred&.
     Pred& self!
   ))
   :qid internal_vstd.rwlock.RwLockToks.impl&__0.arrow_release_exc_0.?_pre_post_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__0.arrow_release_exc_0.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::Step::arrow_release_shared_0
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%0.arrow_release_shared_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%0.arrow_release_shared_0.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%0.arrow_release_shared_0.? K&. K& V&. V& Pred&. Pred&
      self!
     ) (vstd.rwlock.RwLockToks.Step./release_shared/0 (%Poly%vstd.rwlock.RwLockToks.Step.
       self!
    )))
    :pattern ((vstd.rwlock.RwLockToks.impl&%0.arrow_release_shared_0.? K&. K& V&. V& Pred&.
      Pred& self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__0.arrow_release_shared_0.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__0.arrow_release_shared_0.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.RwLockToks.impl&%0.arrow_release_shared_0.? K&. K& V&. V& Pred&.
      Pred& self!
     ) V&
   ))
   :pattern ((vstd.rwlock.RwLockToks.impl&%0.arrow_release_shared_0.? K&. K& V&. V& Pred&.
     Pred& self!
   ))
   :qid internal_vstd.rwlock.RwLockToks.impl&__0.arrow_release_shared_0.?_pre_post_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__0.arrow_release_shared_0.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::Step::arrow_dummy_to_use_type_params_0
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%0.arrow_dummy_to_use_type_params_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%0.arrow_dummy_to_use_type_params_0.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%0.arrow_dummy_to_use_type_params_0.? K&. K& V&. V&
      Pred&. Pred& self!
     ) (vstd.rwlock.RwLockToks.Step./dummy_to_use_type_params/0 (%Poly%vstd.rwlock.RwLockToks.Step.
       self!
    )))
    :pattern ((vstd.rwlock.RwLockToks.impl&%0.arrow_dummy_to_use_type_params_0.? K&. K&
      V&. V& Pred&. Pred& self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__0.arrow_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__0.arrow_dummy_to_use_type_params_0.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&))
    (has_type (Poly%vstd.rwlock.RwLockToks.State. (vstd.rwlock.RwLockToks.impl&%0.arrow_dummy_to_use_type_params_0.?
       K&. K& V&. V& Pred&. Pred& self!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&)
   ))
   :pattern ((vstd.rwlock.RwLockToks.impl&%0.arrow_dummy_to_use_type_params_0.? K&. K&
     V&. V& Pred&. Pred& self!
   ))
   :qid internal_vstd.rwlock.RwLockToks.impl&__0.arrow_dummy_to_use_type_params_0.?_pre_post_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__0.arrow_dummy_to_use_type_params_0.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::Step::is_acquire_read_start
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%1.is_acquire_read_start.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%1.is_acquire_read_start.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%1.is_acquire_read_start.? K&. K& V&. V& Pred&. Pred&
      self!
     ) (is-vstd.rwlock.RwLockToks.Step./acquire_read_start (%Poly%vstd.rwlock.RwLockToks.Step.
       self!
    )))
    :pattern ((vstd.rwlock.RwLockToks.impl&%1.is_acquire_read_start.? K&. K& V&. V& Pred&.
      Pred& self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__1.is_acquire_read_start.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__1.is_acquire_read_start.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::Step::is_acquire_read_end
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%1.is_acquire_read_end.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%1.is_acquire_read_end.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%1.is_acquire_read_end.? K&. K& V&. V& Pred&. Pred&
      self!
     ) (is-vstd.rwlock.RwLockToks.Step./acquire_read_end (%Poly%vstd.rwlock.RwLockToks.Step.
       self!
    )))
    :pattern ((vstd.rwlock.RwLockToks.impl&%1.is_acquire_read_end.? K&. K& V&. V& Pred&.
      Pred& self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__1.is_acquire_read_end.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__1.is_acquire_read_end.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::Step::is_acquire_read_abandon
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%1.is_acquire_read_abandon.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%1.is_acquire_read_abandon.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%1.is_acquire_read_abandon.? K&. K& V&. V& Pred&. Pred&
      self!
     ) (is-vstd.rwlock.RwLockToks.Step./acquire_read_abandon (%Poly%vstd.rwlock.RwLockToks.Step.
       self!
    )))
    :pattern ((vstd.rwlock.RwLockToks.impl&%1.is_acquire_read_abandon.? K&. K& V&. V& Pred&.
      Pred& self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__1.is_acquire_read_abandon.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__1.is_acquire_read_abandon.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::Step::is_acquire_exc_start
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%1.is_acquire_exc_start.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%1.is_acquire_exc_start.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%1.is_acquire_exc_start.? K&. K& V&. V& Pred&. Pred&
      self!
     ) (is-vstd.rwlock.RwLockToks.Step./acquire_exc_start (%Poly%vstd.rwlock.RwLockToks.Step.
       self!
    )))
    :pattern ((vstd.rwlock.RwLockToks.impl&%1.is_acquire_exc_start.? K&. K& V&. V& Pred&.
      Pred& self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__1.is_acquire_exc_start.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__1.is_acquire_exc_start.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::Step::is_acquire_exc_end
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%1.is_acquire_exc_end.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%1.is_acquire_exc_end.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%1.is_acquire_exc_end.? K&. K& V&. V& Pred&. Pred&
      self!
     ) (is-vstd.rwlock.RwLockToks.Step./acquire_exc_end (%Poly%vstd.rwlock.RwLockToks.Step.
       self!
    )))
    :pattern ((vstd.rwlock.RwLockToks.impl&%1.is_acquire_exc_end.? K&. K& V&. V& Pred&.
      Pred& self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__1.is_acquire_exc_end.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__1.is_acquire_exc_end.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::Step::is_release_exc
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%1.is_release_exc.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%1.is_release_exc.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%1.is_release_exc.? K&. K& V&. V& Pred&. Pred& self!)
     (is-vstd.rwlock.RwLockToks.Step./release_exc (%Poly%vstd.rwlock.RwLockToks.Step. self!))
    )
    :pattern ((vstd.rwlock.RwLockToks.impl&%1.is_release_exc.? K&. K& V&. V& Pred&. Pred&
      self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__1.is_release_exc.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__1.is_release_exc.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::Step::get_release_exc_0
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%1.get_release_exc_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%1.get_release_exc_0.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%1.get_release_exc_0.? K&. K& V&. V& Pred&. Pred& self!)
     (vstd.rwlock.RwLockToks.Step./release_exc/0 (%Poly%vstd.rwlock.RwLockToks.Step. self!))
    )
    :pattern ((vstd.rwlock.RwLockToks.impl&%1.get_release_exc_0.? K&. K& V&. V& Pred&.
      Pred& self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__1.get_release_exc_0.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__1.get_release_exc_0.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.RwLockToks.impl&%1.get_release_exc_0.? K&. K& V&. V& Pred&.
      Pred& self!
     ) V&
   ))
   :pattern ((vstd.rwlock.RwLockToks.impl&%1.get_release_exc_0.? K&. K& V&. V& Pred&.
     Pred& self!
   ))
   :qid internal_vstd.rwlock.RwLockToks.impl&__1.get_release_exc_0.?_pre_post_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__1.get_release_exc_0.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::Step::is_release_shared
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%1.is_release_shared.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%1.is_release_shared.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%1.is_release_shared.? K&. K& V&. V& Pred&. Pred& self!)
     (is-vstd.rwlock.RwLockToks.Step./release_shared (%Poly%vstd.rwlock.RwLockToks.Step.
       self!
    )))
    :pattern ((vstd.rwlock.RwLockToks.impl&%1.is_release_shared.? K&. K& V&. V& Pred&.
      Pred& self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__1.is_release_shared.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__1.is_release_shared.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::Step::get_release_shared_0
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%1.get_release_shared_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%1.get_release_shared_0.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%1.get_release_shared_0.? K&. K& V&. V& Pred&. Pred&
      self!
     ) (vstd.rwlock.RwLockToks.Step./release_shared/0 (%Poly%vstd.rwlock.RwLockToks.Step.
       self!
    )))
    :pattern ((vstd.rwlock.RwLockToks.impl&%1.get_release_shared_0.? K&. K& V&. V& Pred&.
      Pred& self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__1.get_release_shared_0.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__1.get_release_shared_0.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.RwLockToks.impl&%1.get_release_shared_0.? K&. K& V&. V& Pred&.
      Pred& self!
     ) V&
   ))
   :pattern ((vstd.rwlock.RwLockToks.impl&%1.get_release_shared_0.? K&. K& V&. V& Pred&.
     Pred& self!
   ))
   :qid internal_vstd.rwlock.RwLockToks.impl&__1.get_release_shared_0.?_pre_post_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__1.get_release_shared_0.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::Step::is_dummy_to_use_type_params
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%1.is_dummy_to_use_type_params.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%1.is_dummy_to_use_type_params.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%1.is_dummy_to_use_type_params.? K&. K& V&. V& Pred&.
      Pred& self!
     ) (is-vstd.rwlock.RwLockToks.Step./dummy_to_use_type_params (%Poly%vstd.rwlock.RwLockToks.Step.
       self!
    )))
    :pattern ((vstd.rwlock.RwLockToks.impl&%1.is_dummy_to_use_type_params.? K&. K& V&.
      V& Pred&. Pred& self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__1.is_dummy_to_use_type_params.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__1.is_dummy_to_use_type_params.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::Step::get_dummy_to_use_type_params_0
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%1.get_dummy_to_use_type_params_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%1.get_dummy_to_use_type_params_0.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%1.get_dummy_to_use_type_params_0.? K&. K& V&. V& Pred&.
      Pred& self!
     ) (vstd.rwlock.RwLockToks.Step./dummy_to_use_type_params/0 (%Poly%vstd.rwlock.RwLockToks.Step.
       self!
    )))
    :pattern ((vstd.rwlock.RwLockToks.impl&%1.get_dummy_to_use_type_params_0.? K&. K& V&.
      V& Pred&. Pred& self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__1.get_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__1.get_dummy_to_use_type_params_0.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&))
    (has_type (Poly%vstd.rwlock.RwLockToks.State. (vstd.rwlock.RwLockToks.impl&%1.get_dummy_to_use_type_params_0.?
       K&. K& V&. V& Pred&. Pred& self!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&)
   ))
   :pattern ((vstd.rwlock.RwLockToks.impl&%1.get_dummy_to_use_type_params_0.? K&. K& V&.
     V& Pred&. Pred& self!
   ))
   :qid internal_vstd.rwlock.RwLockToks.impl&__1.get_dummy_to_use_type_params_0.?_pre_post_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__1.get_dummy_to_use_type_params_0.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::Config::arrow_1
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%2.arrow_1.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%2.arrow_1.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%2.arrow_1.? K&. K& V&. V& Pred&. Pred& self!) (vstd.rwlock.RwLockToks.Config./initialize_full/1
      (%Poly%vstd.rwlock.RwLockToks.Config. self!)
    ))
    :pattern ((vstd.rwlock.RwLockToks.impl&%2.arrow_1.? K&. K& V&. V& Pred&. Pred& self!))
    :qid internal_vstd.rwlock.RwLockToks.impl&__2.arrow_1.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__2.arrow_1.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.rwlock.RwLockToks.Config. K&. K& V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.RwLockToks.impl&%2.arrow_1.? K&. K& V&. V& Pred&. Pred& self!)
     V&
   ))
   :pattern ((vstd.rwlock.RwLockToks.impl&%2.arrow_1.? K&. K& V&. V& Pred&. Pred& self!))
   :qid internal_vstd.rwlock.RwLockToks.impl&__2.arrow_1.?_pre_post_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__2.arrow_1.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::Config::arrow_initialize_full_0
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%2.arrow_initialize_full_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%2.arrow_initialize_full_0.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%2.arrow_initialize_full_0.? K&. K& V&. V& Pred&. Pred&
      self!
     ) (vstd.rwlock.RwLockToks.Config./initialize_full/0 (%Poly%vstd.rwlock.RwLockToks.Config.
       self!
    )))
    :pattern ((vstd.rwlock.RwLockToks.impl&%2.arrow_initialize_full_0.? K&. K& V&. V& Pred&.
      Pred& self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__2.arrow_initialize_full_0.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__2.arrow_initialize_full_0.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.rwlock.RwLockToks.Config. K&. K& V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.RwLockToks.impl&%2.arrow_initialize_full_0.? K&. K& V&. V& Pred&.
      Pred& self!
     ) K&
   ))
   :pattern ((vstd.rwlock.RwLockToks.impl&%2.arrow_initialize_full_0.? K&. K& V&. V& Pred&.
     Pred& self!
   ))
   :qid internal_vstd.rwlock.RwLockToks.impl&__2.arrow_initialize_full_0.?_pre_post_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__2.arrow_initialize_full_0.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::Config::arrow_initialize_full_1
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%2.arrow_initialize_full_1.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%2.arrow_initialize_full_1.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%2.arrow_initialize_full_1.? K&. K& V&. V& Pred&. Pred&
      self!
     ) (vstd.rwlock.RwLockToks.Config./initialize_full/1 (%Poly%vstd.rwlock.RwLockToks.Config.
       self!
    )))
    :pattern ((vstd.rwlock.RwLockToks.impl&%2.arrow_initialize_full_1.? K&. K& V&. V& Pred&.
      Pred& self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__2.arrow_initialize_full_1.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__2.arrow_initialize_full_1.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.rwlock.RwLockToks.Config. K&. K& V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.RwLockToks.impl&%2.arrow_initialize_full_1.? K&. K& V&. V& Pred&.
      Pred& self!
     ) V&
   ))
   :pattern ((vstd.rwlock.RwLockToks.impl&%2.arrow_initialize_full_1.? K&. K& V&. V& Pred&.
     Pred& self!
   ))
   :qid internal_vstd.rwlock.RwLockToks.impl&__2.arrow_initialize_full_1.?_pre_post_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__2.arrow_initialize_full_1.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::Config::arrow_dummy_to_use_type_params_0
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%2.arrow_dummy_to_use_type_params_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%2.arrow_dummy_to_use_type_params_0.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%2.arrow_dummy_to_use_type_params_0.? K&. K& V&. V&
      Pred&. Pred& self!
     ) (vstd.rwlock.RwLockToks.Config./dummy_to_use_type_params/0 (%Poly%vstd.rwlock.RwLockToks.Config.
       self!
    )))
    :pattern ((vstd.rwlock.RwLockToks.impl&%2.arrow_dummy_to_use_type_params_0.? K&. K&
      V&. V& Pred&. Pred& self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__2.arrow_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__2.arrow_dummy_to_use_type_params_0.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.rwlock.RwLockToks.Config. K&. K& V&. V& Pred&. Pred&))
    (has_type (Poly%vstd.rwlock.RwLockToks.State. (vstd.rwlock.RwLockToks.impl&%2.arrow_dummy_to_use_type_params_0.?
       K&. K& V&. V& Pred&. Pred& self!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&)
   ))
   :pattern ((vstd.rwlock.RwLockToks.impl&%2.arrow_dummy_to_use_type_params_0.? K&. K&
     V&. V& Pred&. Pred& self!
   ))
   :qid internal_vstd.rwlock.RwLockToks.impl&__2.arrow_dummy_to_use_type_params_0.?_pre_post_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__2.arrow_dummy_to_use_type_params_0.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::Config::is_initialize_full
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%3.is_initialize_full.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%3.is_initialize_full.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%3.is_initialize_full.? K&. K& V&. V& Pred&. Pred&
      self!
     ) (is-vstd.rwlock.RwLockToks.Config./initialize_full (%Poly%vstd.rwlock.RwLockToks.Config.
       self!
    )))
    :pattern ((vstd.rwlock.RwLockToks.impl&%3.is_initialize_full.? K&. K& V&. V& Pred&.
      Pred& self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__3.is_initialize_full.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__3.is_initialize_full.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::Config::get_initialize_full_0
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%3.get_initialize_full_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%3.get_initialize_full_0.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%3.get_initialize_full_0.? K&. K& V&. V& Pred&. Pred&
      self!
     ) (vstd.rwlock.RwLockToks.Config./initialize_full/0 (%Poly%vstd.rwlock.RwLockToks.Config.
       self!
    )))
    :pattern ((vstd.rwlock.RwLockToks.impl&%3.get_initialize_full_0.? K&. K& V&. V& Pred&.
      Pred& self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__3.get_initialize_full_0.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__3.get_initialize_full_0.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.rwlock.RwLockToks.Config. K&. K& V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.RwLockToks.impl&%3.get_initialize_full_0.? K&. K& V&. V& Pred&.
      Pred& self!
     ) K&
   ))
   :pattern ((vstd.rwlock.RwLockToks.impl&%3.get_initialize_full_0.? K&. K& V&. V& Pred&.
     Pred& self!
   ))
   :qid internal_vstd.rwlock.RwLockToks.impl&__3.get_initialize_full_0.?_pre_post_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__3.get_initialize_full_0.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::Config::get_initialize_full_1
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%3.get_initialize_full_1.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%3.get_initialize_full_1.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%3.get_initialize_full_1.? K&. K& V&. V& Pred&. Pred&
      self!
     ) (vstd.rwlock.RwLockToks.Config./initialize_full/1 (%Poly%vstd.rwlock.RwLockToks.Config.
       self!
    )))
    :pattern ((vstd.rwlock.RwLockToks.impl&%3.get_initialize_full_1.? K&. K& V&. V& Pred&.
      Pred& self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__3.get_initialize_full_1.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__3.get_initialize_full_1.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.rwlock.RwLockToks.Config. K&. K& V&. V& Pred&. Pred&))
    (has_type (vstd.rwlock.RwLockToks.impl&%3.get_initialize_full_1.? K&. K& V&. V& Pred&.
      Pred& self!
     ) V&
   ))
   :pattern ((vstd.rwlock.RwLockToks.impl&%3.get_initialize_full_1.? K&. K& V&. V& Pred&.
     Pred& self!
   ))
   :qid internal_vstd.rwlock.RwLockToks.impl&__3.get_initialize_full_1.?_pre_post_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__3.get_initialize_full_1.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::Config::is_dummy_to_use_type_params
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%3.is_dummy_to_use_type_params.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%3.is_dummy_to_use_type_params.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%3.is_dummy_to_use_type_params.? K&. K& V&. V& Pred&.
      Pred& self!
     ) (is-vstd.rwlock.RwLockToks.Config./dummy_to_use_type_params (%Poly%vstd.rwlock.RwLockToks.Config.
       self!
    )))
    :pattern ((vstd.rwlock.RwLockToks.impl&%3.is_dummy_to_use_type_params.? K&. K& V&.
      V& Pred&. Pred& self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__3.is_dummy_to_use_type_params.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__3.is_dummy_to_use_type_params.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::Config::get_dummy_to_use_type_params_0
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%3.get_dummy_to_use_type_params_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%3.get_dummy_to_use_type_params_0.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%3.get_dummy_to_use_type_params_0.? K&. K& V&. V& Pred&.
      Pred& self!
     ) (vstd.rwlock.RwLockToks.Config./dummy_to_use_type_params/0 (%Poly%vstd.rwlock.RwLockToks.Config.
       self!
    )))
    :pattern ((vstd.rwlock.RwLockToks.impl&%3.get_dummy_to_use_type_params_0.? K&. K& V&.
      V& Pred&. Pred& self!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__3.get_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__3.get_dummy_to_use_type_params_0.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.rwlock.RwLockToks.Config. K&. K& V&. V& Pred&. Pred&))
    (has_type (Poly%vstd.rwlock.RwLockToks.State. (vstd.rwlock.RwLockToks.impl&%3.get_dummy_to_use_type_params_0.?
       K&. K& V&. V& Pred&. Pred& self!
      )
     ) (TYPE%vstd.rwlock.RwLockToks.State. K&. K& V&. V& Pred&. Pred&)
   ))
   :pattern ((vstd.rwlock.RwLockToks.impl&%3.get_dummy_to_use_type_params_0.? K&. K& V&.
     V& Pred&. Pred& self!
   ))
   :qid internal_vstd.rwlock.RwLockToks.impl&__3.get_dummy_to_use_type_params_0.?_pre_post_definition
   :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__3.get_dummy_to_use_type_params_0.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::initialize_full_enabled
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.initialize_full_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.initialize_full_enabled.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
    (t! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.initialize_full_enabled.? K&. K& V&. V& Pred&.
      Pred& k! t!
     ) (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& k! t!))
    )
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.initialize_full_enabled.? K&. K& V&. V&
      Pred&. Pred& k! t!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.initialize_full_enabled.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.initialize_full_enabled.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::acquire_read_start_strong
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_start_strong.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_start_strong.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly)
    (post! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.acquire_read_start_strong.? K&. K& V&. V& Pred&.
      Pred& pre! post!
     ) (let
      ((update_tmp_k$ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
          pre!
      ))))
      (let
       ((update_tmp_pred$ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
           pre!
       ))))
       (let
        ((update_tmp_flag_exc$ (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
            pre!
        ))))
        (let
         ((update_tmp_storage$ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
             pre!
         ))))
         (let
          ((update_tmp_pending_writer$ (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
              pre!
          ))))
          (let
           ((update_tmp_writer$ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
               pre!
           ))))
           (let
            ((update_tmp_pending_reader$ (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                pre!
            ))))
            (let
             ((update_tmp_reader$ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                 pre!
             ))))
             (let
              ((update_tmp_flag_rc$ (nClip (Add (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                    pre!
                   )
                  ) 1
              ))))
              (let
               ((update_tmp_pending_reader$1 (%Poly%vstd.multiset.Multiset<tuple%0.>. (vstd.multiset.impl&%0.insert.?
                   $ TYPE%tuple%0. (Poly%vstd.multiset.Multiset<tuple%0.>. update_tmp_pending_reader$)
                   (Poly%tuple%0. tuple%0./tuple%0)
               ))))
               (and
                (= (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                   post!
                  )
                 ) update_tmp_pending_reader$1
                )
                (and
                 (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                    post!
                   )
                  ) update_tmp_flag_rc$
                 )
                 (and
                  (= (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                     post!
                    )
                   ) update_tmp_reader$
                  )
                  (and
                   (= (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                      post!
                     )
                    ) update_tmp_writer$
                   )
                   (and
                    (= (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
                       post!
                      )
                     ) update_tmp_pending_writer$
                    )
                    (and
                     (= (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
                        post!
                       )
                      ) update_tmp_storage$
                     )
                     (and
                      (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                         post!
                        )
                       ) update_tmp_flag_exc$
                      )
                      (and
                       (= (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State. post!))
                        update_tmp_pred$
                       )
                       (= (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State. post!))
                        update_tmp_k$
    ))))))))))))))))))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.acquire_read_start_strong.? K&. K& V&. V&
      Pred&. Pred& pre! post!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.acquire_read_start_strong.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.acquire_read_start_strong.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::acquire_read_start_enabled
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_start_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_start_enabled.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%23.acquire_read_start_enabled.? K&. K& V&. V& Pred&.
      Pred& pre!
     ) true
    )
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.acquire_read_start_enabled.? K&. K& V&.
      V& Pred&. Pred& pre!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.acquire_read_start_enabled.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.acquire_read_start_enabled.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::acquire_read_end_strong
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_end_strong.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_end_strong.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly)
    (post! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.acquire_read_end_strong.? K&. K& V&. V& Pred&.
      Pred& pre! post!
     ) (let
      ((update_tmp_k$ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
          pre!
      ))))
      (let
       ((update_tmp_pred$ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
           pre!
       ))))
       (let
        ((update_tmp_flag_exc$ (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
            pre!
        ))))
        (let
         ((update_tmp_flag_rc$ (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
             pre!
         ))))
         (let
          ((update_tmp_storage$ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
              pre!
          ))))
          (let
           ((update_tmp_pending_writer$ (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
               pre!
           ))))
           (let
            ((update_tmp_writer$ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                pre!
            ))))
            (let
             ((update_tmp_pending_reader$ (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                 pre!
             ))))
             (let
              ((update_tmp_reader$ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                  pre!
              ))))
              (and
               (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                  pre!
                 )
                ) false
               )
               (and
                (>= (vstd.multiset.impl&%0.count.? $ TYPE%tuple%0. (Poly%vstd.multiset.Multiset<tuple%0.>.
                   update_tmp_pending_reader$
                  ) (Poly%tuple%0. tuple%0./tuple%0)
                 ) 1
                )
                (let
                 ((update_tmp_pending_reader$1 (%Poly%vstd.multiset.Multiset<tuple%0.>. (vstd.multiset.impl&%0.remove.?
                     $ TYPE%tuple%0. (Poly%vstd.multiset.Multiset<tuple%0.>. update_tmp_pending_reader$)
                     (Poly%tuple%0. tuple%0./tuple%0)
                 ))))
                 (and
                  (let
                   ((x$ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                        (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State. pre!))
                   )))))
                   (let
                    ((update_tmp_reader$1 (vstd.multiset.impl&%0.insert.? V&. V& update_tmp_reader$ x$)))
                    (and
                     (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& (vstd.rwlock.RwLockToks.State./State/k
                        (%Poly%vstd.rwlock.RwLockToks.State. pre!)
                       ) x$
                     ))
                     (= (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                        post!
                       )
                      ) update_tmp_reader$1
                  ))))
                  (and
                   (= (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                      post!
                     )
                    ) update_tmp_pending_reader$1
                   )
                   (and
                    (= (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                       post!
                      )
                     ) update_tmp_writer$
                    )
                    (and
                     (= (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
                        post!
                       )
                      ) update_tmp_pending_writer$
                     )
                     (and
                      (= (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
                         post!
                        )
                       ) update_tmp_storage$
                      )
                      (and
                       (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                          post!
                         )
                        ) update_tmp_flag_rc$
                       )
                       (and
                        (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                           post!
                          )
                         ) update_tmp_flag_exc$
                        )
                        (and
                         (= (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State. post!))
                          update_tmp_pred$
                         )
                         (= (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State. post!))
                          update_tmp_k$
    ))))))))))))))))))))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.acquire_read_end_strong.? K&. K& V&. V&
      Pred&. Pred& pre! post!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.acquire_read_end_strong.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.acquire_read_end_strong.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::acquire_read_end_enabled
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_end_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_end_enabled.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%23.acquire_read_end_enabled.? K&. K& V&. V& Pred&.
      Pred& pre!
     ) (let
      ((update_tmp_pending_reader$ (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
          pre!
      ))))
      (and
       (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
          pre!
         )
        ) false
       )
       (>= (vstd.multiset.impl&%0.count.? $ TYPE%tuple%0. (Poly%vstd.multiset.Multiset<tuple%0.>.
          update_tmp_pending_reader$
         ) (Poly%tuple%0. tuple%0./tuple%0)
        ) 1
    ))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.acquire_read_end_enabled.? K&. K& V&. V&
      Pred&. Pred& pre!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.acquire_read_end_enabled.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.acquire_read_end_enabled.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::acquire_read_abandon_strong
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon_strong.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon_strong.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly)
    (post! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon_strong.? K&. K& V&. V& Pred&.
      Pred& pre! post!
     ) (let
      ((update_tmp_k$ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
          pre!
      ))))
      (let
       ((update_tmp_pred$ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
           pre!
       ))))
       (let
        ((update_tmp_flag_exc$ (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
            pre!
        ))))
        (let
         ((update_tmp_storage$ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
             pre!
         ))))
         (let
          ((update_tmp_pending_writer$ (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
              pre!
          ))))
          (let
           ((update_tmp_writer$ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
               pre!
           ))))
           (let
            ((update_tmp_pending_reader$ (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                pre!
            ))))
            (let
             ((update_tmp_reader$ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                 pre!
             ))))
             (and
              (>= (vstd.multiset.impl&%0.count.? $ TYPE%tuple%0. (Poly%vstd.multiset.Multiset<tuple%0.>.
                 update_tmp_pending_reader$
                ) (Poly%tuple%0. tuple%0./tuple%0)
               ) 1
              )
              (let
               ((update_tmp_pending_reader$1 (%Poly%vstd.multiset.Multiset<tuple%0.>. (vstd.multiset.impl&%0.remove.?
                   $ TYPE%tuple%0. (Poly%vstd.multiset.Multiset<tuple%0.>. update_tmp_pending_reader$)
                   (Poly%tuple%0. tuple%0./tuple%0)
               ))))
               (and
                (>= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                   pre!
                  )
                 ) 1
                )
                (let
                 ((update_tmp_flag_rc$ (nClip (Sub (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                       pre!
                      )
                     ) 1
                 ))))
                 (and
                  (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                     post!
                    )
                   ) update_tmp_flag_rc$
                  )
                  (and
                   (= (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                      post!
                     )
                    ) update_tmp_pending_reader$1
                   )
                   (and
                    (= (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                       post!
                      )
                     ) update_tmp_reader$
                    )
                    (and
                     (= (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                        post!
                       )
                      ) update_tmp_writer$
                     )
                     (and
                      (= (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
                         post!
                        )
                       ) update_tmp_pending_writer$
                      )
                      (and
                       (= (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
                          post!
                         )
                        ) update_tmp_storage$
                       )
                       (and
                        (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                           post!
                          )
                         ) update_tmp_flag_exc$
                        )
                        (and
                         (= (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State. post!))
                          update_tmp_pred$
                         )
                         (= (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State. post!))
                          update_tmp_k$
    ))))))))))))))))))))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon_strong.? K&. K& V&.
      V& Pred&. Pred& pre! post!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.acquire_read_abandon_strong.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.acquire_read_abandon_strong.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::acquire_read_abandon_enabled
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon_enabled.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon_enabled.? K&. K& V&. V& Pred&.
      Pred& pre!
     ) (let
      ((update_tmp_pending_reader$ (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
          pre!
      ))))
      (>= (vstd.multiset.impl&%0.count.? $ TYPE%tuple%0. (Poly%vstd.multiset.Multiset<tuple%0.>.
         update_tmp_pending_reader$
        ) (Poly%tuple%0. tuple%0./tuple%0)
       ) 1
    )))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon_enabled.? K&. K& V&.
      V& Pred&. Pred& pre!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.acquire_read_abandon_enabled.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.acquire_read_abandon_enabled.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::acquire_exc_start_strong
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start_strong.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start_strong.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly)
    (post! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start_strong.? K&. K& V&. V& Pred&.
      Pred& pre! post!
     ) (let
      ((update_tmp_k$ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
          pre!
      ))))
      (let
       ((update_tmp_pred$ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
           pre!
       ))))
       (let
        ((update_tmp_flag_rc$ (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
            pre!
        ))))
        (let
         ((update_tmp_storage$ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
             pre!
         ))))
         (let
          ((update_tmp_pending_writer$ (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
              pre!
          ))))
          (let
           ((update_tmp_writer$ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
               pre!
           ))))
           (let
            ((update_tmp_pending_reader$ (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                pre!
            ))))
            (let
             ((update_tmp_reader$ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                 pre!
             ))))
             (and
              (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                 pre!
                )
               ) false
              )
              (let
               ((update_tmp_flag_exc$ true))
               (and
                (is-core!option.Option./None update_tmp_pending_writer$)
                (let
                 ((update_tmp_pending_writer$1 (core!option.Option./Some (Poly%tuple%0. tuple%0./tuple%0))))
                 (and
                  (= (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
                     post!
                    )
                   ) update_tmp_pending_writer$1
                  )
                  (and
                   (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                      post!
                     )
                    ) update_tmp_flag_exc$
                   )
                   (and
                    (= (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                       post!
                      )
                     ) update_tmp_reader$
                    )
                    (and
                     (= (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                        post!
                       )
                      ) update_tmp_pending_reader$
                     )
                     (and
                      (= (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                         post!
                        )
                       ) update_tmp_writer$
                      )
                      (and
                       (= (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
                          post!
                         )
                        ) update_tmp_storage$
                       )
                       (and
                        (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                           post!
                          )
                         ) update_tmp_flag_rc$
                        )
                        (and
                         (= (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State. post!))
                          update_tmp_pred$
                         )
                         (= (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State. post!))
                          update_tmp_k$
    ))))))))))))))))))))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start_strong.? K&. K& V&. V&
      Pred&. Pred& pre! post!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.acquire_exc_start_strong.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.acquire_exc_start_strong.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::acquire_exc_start_enabled
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start_enabled.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start_enabled.? K&. K& V&. V& Pred&.
      Pred& pre!
     ) (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
        pre!
       )
      ) false
    ))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start_enabled.? K&. K& V&. V&
      Pred&. Pred& pre!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.acquire_exc_start_enabled.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.acquire_exc_start_enabled.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::acquire_exc_end_strong
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end_strong.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end_strong.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly)
    (post! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end_strong.? K&. K& V&. V& Pred&. Pred&
      pre! post!
     ) (let
      ((update_tmp_k$ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
          pre!
      ))))
      (let
       ((update_tmp_pred$ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
           pre!
       ))))
       (let
        ((update_tmp_flag_exc$ (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
            pre!
        ))))
        (let
         ((update_tmp_flag_rc$ (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
             pre!
         ))))
         (let
          ((update_tmp_storage$ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
              pre!
          ))))
          (let
           ((update_tmp_pending_writer$ (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
               pre!
           ))))
           (let
            ((update_tmp_writer$ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                pre!
            ))))
            (let
             ((update_tmp_pending_reader$ (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                 pre!
             ))))
             (let
              ((update_tmp_reader$ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                  pre!
              ))))
              (and
               (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                  pre!
                 )
                ) 0
               )
               (and
                (= update_tmp_pending_writer$ (core!option.Option./Some (Poly%tuple%0. tuple%0./tuple%0)))
                (let
                 ((update_tmp_pending_writer$1 core!option.Option./None))
                 (and
                  (is-core!option.Option./None update_tmp_writer$)
                  (let
                   ((update_tmp_writer$1 (core!option.Option./Some (Poly%tuple%0. tuple%0./tuple%0))))
                   (and
                    (let
                     ((x$ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                          (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State. pre!))
                     )))))
                     (and
                      (= update_tmp_storage$ (core!option.Option./Some x$))
                      (let
                       ((update_tmp_storage$1 core!option.Option./None))
                       (and
                        (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& (vstd.rwlock.RwLockToks.State./State/k
                           (%Poly%vstd.rwlock.RwLockToks.State. pre!)
                          ) x$
                        ))
                        (= (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
                           post!
                          )
                         ) update_tmp_storage$1
                    )))))
                    (and
                     (= (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                        post!
                       )
                      ) update_tmp_writer$1
                     )
                     (and
                      (= (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
                         post!
                        )
                       ) update_tmp_pending_writer$1
                      )
                      (and
                       (= (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                          post!
                         )
                        ) update_tmp_reader$
                       )
                       (and
                        (= (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                           post!
                          )
                         ) update_tmp_pending_reader$
                        )
                        (and
                         (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                            post!
                           )
                          ) update_tmp_flag_rc$
                         )
                         (and
                          (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                             post!
                            )
                           ) update_tmp_flag_exc$
                          )
                          (and
                           (= (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State. post!))
                            update_tmp_pred$
                           )
                           (= (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State. post!))
                            update_tmp_k$
    ))))))))))))))))))))))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end_strong.? K&. K& V&. V& Pred&.
      Pred& pre! post!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.acquire_exc_end_strong.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.acquire_exc_end_strong.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::acquire_exc_end_enabled
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end_enabled.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end_enabled.? K&. K& V&. V& Pred&.
      Pred& pre!
     ) (let
      ((update_tmp_pending_writer$ (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
          pre!
      ))))
      (and
       (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
          pre!
         )
        ) 0
       )
       (= update_tmp_pending_writer$ (core!option.Option./Some (Poly%tuple%0. tuple%0./tuple%0)))
    )))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end_enabled.? K&. K& V&. V&
      Pred&. Pred& pre!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.acquire_exc_end_enabled.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.acquire_exc_end_enabled.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::release_exc_strong
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.release_exc_strong.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.release_exc_strong.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly)
    (post! Poly) (x! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.release_exc_strong.? K&. K& V&. V& Pred&. Pred&
      pre! post! x!
     ) (let
      ((update_tmp_k$ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
          pre!
      ))))
      (let
       ((update_tmp_pred$ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
           pre!
       ))))
       (let
        ((update_tmp_flag_rc$ (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
            pre!
        ))))
        (let
         ((update_tmp_storage$ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
             pre!
         ))))
         (let
          ((update_tmp_pending_writer$ (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
              pre!
          ))))
          (let
           ((update_tmp_writer$ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
               pre!
           ))))
           (let
            ((update_tmp_pending_reader$ (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                pre!
            ))))
            (let
             ((update_tmp_reader$ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                 pre!
             ))))
             (and
              (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& (vstd.rwlock.RwLockToks.State./State/k
                 (%Poly%vstd.rwlock.RwLockToks.State. pre!)
                ) x!
              ))
              (and
               (= update_tmp_writer$ (core!option.Option./Some (Poly%tuple%0. tuple%0./tuple%0)))
               (let
                ((update_tmp_writer$1 core!option.Option./None))
                (let
                 ((update_tmp_flag_exc$ false))
                 (and
                  (is-core!option.Option./None update_tmp_storage$)
                  (let
                   ((update_tmp_storage$1 (core!option.Option./Some x!)))
                   (and
                    (= (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
                       post!
                      )
                     ) update_tmp_storage$1
                    )
                    (and
                     (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                        post!
                       )
                      ) update_tmp_flag_exc$
                     )
                     (and
                      (= (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                         post!
                        )
                       ) update_tmp_writer$1
                      )
                      (and
                       (= (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                          post!
                         )
                        ) update_tmp_reader$
                       )
                       (and
                        (= (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                           post!
                          )
                         ) update_tmp_pending_reader$
                        )
                        (and
                         (= (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
                            post!
                           )
                          ) update_tmp_pending_writer$
                         )
                         (and
                          (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                             post!
                            )
                           ) update_tmp_flag_rc$
                          )
                          (and
                           (= (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State. post!))
                            update_tmp_pred$
                           )
                           (= (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State. post!))
                            update_tmp_k$
    ))))))))))))))))))))))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.release_exc_strong.? K&. K& V&. V& Pred&.
      Pred& pre! post! x!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.release_exc_strong.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.release_exc_strong.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::release_exc_enabled
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.release_exc_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.release_exc_enabled.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly)
    (x! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.release_exc_enabled.? K&. K& V&. V& Pred&. Pred&
      pre! x!
     ) (let
      ((update_tmp_writer$ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
          pre!
      ))))
      (and
       (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& (vstd.rwlock.RwLockToks.State./State/k
          (%Poly%vstd.rwlock.RwLockToks.State. pre!)
         ) x!
       ))
       (= update_tmp_writer$ (core!option.Option./Some (Poly%tuple%0. tuple%0./tuple%0)))
    )))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.release_exc_enabled.? K&. K& V&. V& Pred&.
      Pred& pre! x!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.release_exc_enabled.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.release_exc_enabled.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::release_shared_strong
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.release_shared_strong.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.release_shared_strong.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly)
    (post! Poly) (x! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.release_shared_strong.? K&. K& V&. V& Pred&. Pred&
      pre! post! x!
     ) (let
      ((update_tmp_k$ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
          pre!
      ))))
      (let
       ((update_tmp_pred$ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
           pre!
       ))))
       (let
        ((update_tmp_flag_exc$ (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
            pre!
        ))))
        (let
         ((update_tmp_storage$ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
             pre!
         ))))
         (let
          ((update_tmp_pending_writer$ (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
              pre!
          ))))
          (let
           ((update_tmp_writer$ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
               pre!
           ))))
           (let
            ((update_tmp_pending_reader$ (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                pre!
            ))))
            (let
             ((update_tmp_reader$ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                 pre!
             ))))
             (and
              (>= (vstd.multiset.impl&%0.count.? V&. V& update_tmp_reader$ x!) 1)
              (let
               ((update_tmp_reader$1 (vstd.multiset.impl&%0.remove.? V&. V& update_tmp_reader$ x!)))
               (and
                (>= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                   pre!
                  )
                 ) 1
                )
                (let
                 ((update_tmp_flag_rc$ (nClip (Sub (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                       pre!
                      )
                     ) 1
                 ))))
                 (and
                  (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                     post!
                    )
                   ) update_tmp_flag_rc$
                  )
                  (and
                   (= (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                      post!
                     )
                    ) update_tmp_reader$1
                   )
                   (and
                    (= (vstd.rwlock.RwLockToks.State./State/pending_reader (%Poly%vstd.rwlock.RwLockToks.State.
                       post!
                      )
                     ) update_tmp_pending_reader$
                    )
                    (and
                     (= (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
                        post!
                       )
                      ) update_tmp_writer$
                     )
                     (and
                      (= (vstd.rwlock.RwLockToks.State./State/pending_writer (%Poly%vstd.rwlock.RwLockToks.State.
                         post!
                        )
                       ) update_tmp_pending_writer$
                      )
                      (and
                       (= (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
                          post!
                         )
                        ) update_tmp_storage$
                       )
                       (and
                        (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                           post!
                          )
                         ) update_tmp_flag_exc$
                        )
                        (and
                         (= (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State. post!))
                          update_tmp_pred$
                         )
                         (= (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State. post!))
                          update_tmp_k$
    ))))))))))))))))))))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.release_shared_strong.? K&. K& V&. V& Pred&.
      Pred& pre! post! x!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.release_shared_strong.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.release_shared_strong.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::release_shared_enabled
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.release_shared_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.release_shared_enabled.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly)
    (x! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.release_shared_enabled.? K&. K& V&. V& Pred&. Pred&
      pre! x!
     ) (let
      ((update_tmp_reader$ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
          pre!
      ))))
      (>= (vstd.multiset.impl&%0.count.? V&. V& update_tmp_reader$ x!) 1)
    ))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.release_shared_enabled.? K&. K& V&. V& Pred&.
      Pred& pre! x!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.release_shared_enabled.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.release_shared_enabled.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::next_strong_by
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.next_strong_by.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly)
    (post! Poly) (step! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.next_strong_by.? K&. K& V&. V& Pred&. Pred& pre!
      post! step!
     ) (ite
      (is-vstd.rwlock.RwLockToks.Step./acquire_read_start (%Poly%vstd.rwlock.RwLockToks.Step.
        step!
      ))
      (vstd.rwlock.RwLockToks.impl&%23.acquire_read_start_strong.? K&. K& V&. V& Pred&.
       Pred& pre! post!
      )
      (ite
       (is-vstd.rwlock.RwLockToks.Step./acquire_read_end (%Poly%vstd.rwlock.RwLockToks.Step.
         step!
       ))
       (vstd.rwlock.RwLockToks.impl&%23.acquire_read_end_strong.? K&. K& V&. V& Pred&. Pred&
        pre! post!
       )
       (ite
        (is-vstd.rwlock.RwLockToks.Step./acquire_read_abandon (%Poly%vstd.rwlock.RwLockToks.Step.
          step!
        ))
        (vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon_strong.? K&. K& V&. V& Pred&.
         Pred& pre! post!
        )
        (ite
         (is-vstd.rwlock.RwLockToks.Step./acquire_exc_start (%Poly%vstd.rwlock.RwLockToks.Step.
           step!
         ))
         (vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start_strong.? K&. K& V&. V& Pred&. Pred&
          pre! post!
         )
         (ite
          (is-vstd.rwlock.RwLockToks.Step./acquire_exc_end (%Poly%vstd.rwlock.RwLockToks.Step.
            step!
          ))
          (vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end_strong.? K&. K& V&. V& Pred&. Pred&
           pre! post!
          )
          (ite
           (is-vstd.rwlock.RwLockToks.Step./release_exc (%Poly%vstd.rwlock.RwLockToks.Step. step!))
           (let
            ((x$ (vstd.rwlock.RwLockToks.Step./release_exc/0 (%Poly%vstd.rwlock.RwLockToks.Step.
                step!
            ))))
            (vstd.rwlock.RwLockToks.impl&%23.release_exc_strong.? K&. K& V&. V& Pred&. Pred& pre!
             post! x$
           ))
           (and
            (is-vstd.rwlock.RwLockToks.Step./release_shared (%Poly%vstd.rwlock.RwLockToks.Step.
              step!
            ))
            (let
             ((x$ (vstd.rwlock.RwLockToks.Step./release_shared/0 (%Poly%vstd.rwlock.RwLockToks.Step.
                 step!
             ))))
             (vstd.rwlock.RwLockToks.impl&%23.release_shared_strong.? K&. K& V&. V& Pred&. Pred&
              pre! post! x$
    ))))))))))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.next_strong_by.? K&. K& V&. V& Pred&. Pred&
      pre! post! step!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.next_strong_by.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.next_strong_by.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::next_strong
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.next_strong.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! Poly)
    (post! Poly)
   ) (!
    (= (vstd.rwlock.RwLockToks.impl&%23.next_strong.? K&. K& V&. V& Pred&. Pred& pre! post!)
     (exists ((step$ Poly)) (!
       (and
        (has_type step$ (TYPE%vstd.rwlock.RwLockToks.Step. K&. K& V&. V& Pred&. Pred&))
        (vstd.rwlock.RwLockToks.impl&%23.next_strong_by.? K&. K& V&. V& Pred&. Pred& pre!
         post! step$
       ))
       :pattern ((vstd.rwlock.RwLockToks.impl&%23.next_strong_by.? K&. K& V&. V& Pred&. Pred&
         pre! post! step$
       ))
       :qid user_crate__vstd__rwlock__RwLockToks__State__next_strong_9
       :skolemid skolem_user_crate__vstd__rwlock__RwLockToks__State__next_strong_9
    )))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.next_strong.? K&. K& V&. V& Pred&. Pred&
      pre! post!
    ))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.next_strong.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.next_strong.?_definition
))))

;; Function-Axioms crate::vstd::rwlock::RwLockToks::State::invariant
(assert
 (fuel_bool_default fuel%vstd.rwlock.RwLockToks.impl&%23.invariant.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.rwlock.RwLockToks.impl&%23.invariant.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& self!)
     (and
      (and
       (and
        (and
         (and
          (vstd.rwlock.RwLockToks.impl&%23.exc_bit_matches.? K&. K& V&. V& Pred&. Pred& self!)
          (vstd.rwlock.RwLockToks.impl&%23.count_matches.? K&. K& V&. V& Pred&. Pred& self!)
         )
         (vstd.rwlock.RwLockToks.impl&%23.reader_agrees_storage.? K&. K& V&. V& Pred&. Pred&
          self!
        ))
        (vstd.rwlock.RwLockToks.impl&%23.writer_agrees_storage.? K&. K& V&. V& Pred&. Pred&
         self!
       ))
       (vstd.rwlock.RwLockToks.impl&%23.writer_agrees_storage_rev.? K&. K& V&. V& Pred&.
        Pred& self!
      ))
      (vstd.rwlock.RwLockToks.impl&%23.sto_user_inv.? K&. K& V&. V& Pred&. Pred& self!)
    ))
    :pattern ((vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& self!))
    :qid internal_vstd.rwlock.RwLockToks.impl&__23.invariant.?_definition
    :skolemid skolem_internal_vstd.rwlock.RwLockToks.impl&__23.invariant.?_definition
))))

;; Broadcast crate::vstd::multiset::axiom_multiset_empty
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_multiset_empty.)
  (forall ((V&. Dcr) (V& Type) (v! Poly)) (!
    (=>
     (has_type v! V&)
     (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.empty.? V&. V&) v!)
      0
    ))
    :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.empty.? V&. V&)
      v!
    ))
    :qid user_crate__vstd__multiset__axiom_multiset_empty_10
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_empty_10
))))

;; Broadcast crate::vstd::multiset::axiom_multiset_singleton
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_multiset_singleton.)
  (forall ((V&. Dcr) (V& Type) (v! Poly)) (!
    (=>
     (has_type v! V&)
     (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.singleton.? V&. V& v!)
       v!
      ) 1
    ))
    :pattern ((vstd.multiset.impl&%0.singleton.? V&. V& v!))
    :qid user_crate__vstd__multiset__axiom_multiset_singleton_11
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_singleton_11
))))

;; Broadcast crate::vstd::multiset::axiom_multiset_singleton_different
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_multiset_singleton_different.)
  (forall ((V&. Dcr) (V& Type) (v! Poly) (w! Poly)) (!
    (=>
     (and
      (has_type v! V&)
      (has_type w! V&)
     )
     (=>
      (not (= v! w!))
      (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.singleton.? V&. V& v!)
        w!
       ) 0
    )))
    :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.singleton.? V&.
       V& v!
      ) w!
    ))
    :qid user_crate__vstd__multiset__axiom_multiset_singleton_different_12
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_singleton_different_12
))))

;; Broadcast crate::vstd::multiset::axiom_multiset_add
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_multiset_add.)
  (forall ((V&. Dcr) (V& Type) (m1! Poly) (m2! Poly) (v! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd.multiset.Multiset. V&. V&))
      (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
      (has_type v! V&)
     )
     (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.add.? V&. V& m1! m2!)
       v!
      ) (nClip (Add (vstd.multiset.impl&%0.count.? V&. V& m1! v!) (vstd.multiset.impl&%0.count.?
         V&. V& m2! v!
    )))))
    :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.add.? V&. V&
       m1! m2!
      ) v!
    ))
    :qid user_crate__vstd__multiset__axiom_multiset_add_13
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_add_13
))))

;; Broadcast crate::vstd::multiset::axiom_multiset_sub
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_multiset_sub.)
  (forall ((V&. Dcr) (V& Type) (m1! Poly) (m2! Poly) (v! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd.multiset.Multiset. V&. V&))
      (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
      (has_type v! V&)
     )
     (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.sub.? V&. V& m1! m2!)
       v!
      ) (ite
       (>= (vstd.multiset.impl&%0.count.? V&. V& m1! v!) (vstd.multiset.impl&%0.count.? V&.
         V& m2! v!
       ))
       (Sub (vstd.multiset.impl&%0.count.? V&. V& m1! v!) (vstd.multiset.impl&%0.count.? V&.
         V& m2! v!
       ))
       0
    )))
    :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.sub.? V&. V&
       m1! m2!
      ) v!
    ))
    :qid user_crate__vstd__multiset__axiom_multiset_sub_14
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_sub_14
))))

;; Broadcast crate::vstd::multiset::axiom_multiset_ext_equal
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_multiset_ext_equal.)
  (forall ((V&. Dcr) (V& Type) (m1! Poly) (m2! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd.multiset.Multiset. V&. V&))
      (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
     )
     (= (ext_eq false (TYPE%vstd.multiset.Multiset. V&. V&) m1! m2!) (forall ((v$ Poly))
       (!
        (=>
         (has_type v$ V&)
         (= (vstd.multiset.impl&%0.count.? V&. V& m1! v$) (vstd.multiset.impl&%0.count.? V&.
           V& m2! v$
        )))
        :pattern ((vstd.multiset.impl&%0.count.? V&. V& m1! v$))
        :pattern ((vstd.multiset.impl&%0.count.? V&. V& m2! v$))
        :qid user_crate__vstd__multiset__axiom_multiset_ext_equal_15
        :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_ext_equal_15
    ))))
    :pattern ((ext_eq false (TYPE%vstd.multiset.Multiset. V&. V&) m1! m2!))
    :qid user_crate__vstd__multiset__axiom_multiset_ext_equal_16
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_ext_equal_16
))))

;; Broadcast crate::vstd::multiset::axiom_multiset_ext_equal_deep
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_multiset_ext_equal_deep.)
  (forall ((V&. Dcr) (V& Type) (m1! Poly) (m2! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd.multiset.Multiset. V&. V&))
      (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
     )
     (= (ext_eq true (TYPE%vstd.multiset.Multiset. V&. V&) m1! m2!) (ext_eq false (TYPE%vstd.multiset.Multiset.
        V&. V&
       ) m1! m2!
    )))
    :pattern ((ext_eq true (TYPE%vstd.multiset.Multiset. V&. V&) m1! m2!))
    :qid user_crate__vstd__multiset__axiom_multiset_ext_equal_deep_17
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_ext_equal_deep_17
))))

;; Function-Axioms crate::vstd::tokens::MultisetToken::multiset
(assert
 (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.tokens.MultisetToken. Element&. Element& Token&. Token&))
    (has_type (vstd.tokens.impl&%2.multiset.? Element&. Element& Token&. Token& self!)
     (TYPE%vstd.multiset.Multiset. Element&. Element&)
   ))
   :pattern ((vstd.tokens.impl&%2.multiset.? Element&. Element& Token&. Token& self!))
   :qid internal_vstd.tokens.impl&__2.multiset.?_pre_post_definition
   :skolemid skolem_internal_vstd.tokens.impl&__2.multiset.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::tokens::option_value_eq_option_token
(assert
 (fuel_bool_default fuel%vstd.tokens.option_value_eq_option_token.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.tokens.option_value_eq_option_token.)
  (forall ((Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type) (opt_value! Poly)
    (opt_token! Poly) (instance_id! Poly)
   ) (!
    (= (vstd.tokens.option_value_eq_option_token.? Value&. Value& Token&. Token& opt_value!
      opt_token! instance_id!
     ) (ite
      (is-core!option.Option./Some (%Poly%core!option.Option. opt_value!))
      (let
       ((val$ (core!option.Option./Some/0 (%Poly%core!option.Option. opt_value!))))
       (and
        (and
         (is-core!option.Option./Some (%Poly%core!option.Option. opt_token!))
         (= (vstd.tokens.ValueToken.value.? Token&. Token& Value&. Value& (core!option.Option./Some/0
            (%Poly%core!option.Option. opt_token!)
           )
          ) val$
        ))
        (= (vstd.tokens.ValueToken.instance_id.? Token&. Token& Value&. Value& (core!option.Option./Some/0
           (%Poly%core!option.Option. opt_token!)
          )
         ) instance_id!
      )))
      (is-core!option.Option./None (%Poly%core!option.Option. opt_token!))
    ))
    :pattern ((vstd.tokens.option_value_eq_option_token.? Value&. Value& Token&. Token&
      opt_value! opt_token! instance_id!
    ))
    :qid internal_vstd.tokens.option_value_eq_option_token.?_definition
    :skolemid skolem_internal_vstd.tokens.option_value_eq_option_token.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!clone.Clone. $ (TYPE%vstd.state_machine_internal.SyncSendIfSyncSend.
     T&. T&
   ))
   :pattern ((tr_bound%core!clone.Clone. $ (TYPE%vstd.state_machine_internal.SyncSendIfSyncSend.
      T&. T&
   )))
   :qid internal_crate__vstd__state_machine_internal__impl&__0_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__state_machine_internal__impl&__0_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
    (tr_bound%vstd.tokens.ValueToken. $ (TYPE%vstd.rwlock.RwLockToks.flag_exc. K&. K& V&.
      V& Pred&. Pred&
     ) $ BOOL
   ))
   :pattern ((tr_bound%vstd.tokens.ValueToken. $ (TYPE%vstd.rwlock.RwLockToks.flag_exc.
      K&. K& V&. V& Pred&. Pred&
     ) $ BOOL
   ))
   :qid internal_crate__vstd__rwlock__RwLockToks__impl&__5_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__impl&__5_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
    (tr_bound%vstd.tokens.UniqueValueToken. $ (TYPE%vstd.rwlock.RwLockToks.flag_exc. K&.
      K& V&. V& Pred&. Pred&
     ) $ BOOL
   ))
   :pattern ((tr_bound%vstd.tokens.UniqueValueToken. $ (TYPE%vstd.rwlock.RwLockToks.flag_exc.
      K&. K& V&. V& Pred&. Pred&
     ) $ BOOL
   ))
   :qid internal_crate__vstd__rwlock__RwLockToks__impl&__6_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__impl&__6_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
    (tr_bound%vstd.tokens.ValueToken. $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&. K& V&.
      V& Pred&. Pred&
     ) $ NAT
   ))
   :pattern ((tr_bound%vstd.tokens.ValueToken. $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
      K&. K& V&. V& Pred&. Pred&
     ) $ NAT
   ))
   :qid internal_crate__vstd__rwlock__RwLockToks__impl&__8_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__impl&__8_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
    (tr_bound%vstd.tokens.UniqueValueToken. $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&.
      K& V&. V& Pred&. Pred&
     ) $ NAT
   ))
   :pattern ((tr_bound%vstd.tokens.UniqueValueToken. $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
      K&. K& V&. V& Pred&. Pred&
     ) $ NAT
   ))
   :qid internal_crate__vstd__rwlock__RwLockToks__impl&__9_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__impl&__9_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
    (tr_bound%vstd.tokens.ValueToken. $ (TYPE%vstd.rwlock.RwLockToks.pending_writer. K&.
      K& V&. V& Pred&. Pred&
     ) $ TYPE%tuple%0.
   ))
   :pattern ((tr_bound%vstd.tokens.ValueToken. $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
      K&. K& V&. V& Pred&. Pred&
     ) $ TYPE%tuple%0.
   ))
   :qid internal_crate__vstd__rwlock__RwLockToks__impl&__11_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__impl&__11_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
    (tr_bound%vstd.tokens.UniqueValueToken. $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
      K&. K& V&. V& Pred&. Pred&
     ) $ TYPE%tuple%0.
   ))
   :pattern ((tr_bound%vstd.tokens.UniqueValueToken. $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
      K&. K& V&. V& Pred&. Pred&
     ) $ TYPE%tuple%0.
   ))
   :qid internal_crate__vstd__rwlock__RwLockToks__impl&__12_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__impl&__12_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
    (tr_bound%vstd.tokens.ValueToken. $ (TYPE%vstd.rwlock.RwLockToks.writer. K&. K& V&.
      V& Pred&. Pred&
     ) $ TYPE%tuple%0.
   ))
   :pattern ((tr_bound%vstd.tokens.ValueToken. $ (TYPE%vstd.rwlock.RwLockToks.writer. K&.
      K& V&. V& Pred&. Pred&
     ) $ TYPE%tuple%0.
   ))
   :qid internal_crate__vstd__rwlock__RwLockToks__impl&__14_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__impl&__14_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
    (tr_bound%vstd.tokens.UniqueValueToken. $ (TYPE%vstd.rwlock.RwLockToks.writer. K&.
      K& V&. V& Pred&. Pred&
     ) $ TYPE%tuple%0.
   ))
   :pattern ((tr_bound%vstd.tokens.UniqueValueToken. $ (TYPE%vstd.rwlock.RwLockToks.writer.
      K&. K& V&. V& Pred&. Pred&
     ) $ TYPE%tuple%0.
   ))
   :qid internal_crate__vstd__rwlock__RwLockToks__impl&__15_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__impl&__15_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
    (tr_bound%vstd.tokens.ElementToken. $ (TYPE%vstd.rwlock.RwLockToks.pending_reader.
      K&. K& V&. V& Pred&. Pred&
     ) $ TYPE%tuple%0.
   ))
   :pattern ((tr_bound%vstd.tokens.ElementToken. $ (TYPE%vstd.rwlock.RwLockToks.pending_reader.
      K&. K& V&. V& Pred&. Pred&
     ) $ TYPE%tuple%0.
   ))
   :qid internal_crate__vstd__rwlock__RwLockToks__impl&__17_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__impl&__17_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
    (tr_bound%vstd.tokens.ElementToken. $ (TYPE%vstd.rwlock.RwLockToks.reader. K&. K& V&.
      V& Pred&. Pred&
     ) V&. V&
   ))
   :pattern ((tr_bound%vstd.tokens.ElementToken. $ (TYPE%vstd.rwlock.RwLockToks.reader.
      K&. K& V&. V& Pred&. Pred&
     ) V&. V&
   ))
   :qid internal_crate__vstd__rwlock__RwLockToks__impl&__19_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__impl&__19_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
    (tr_bound%core!clone.Clone. $ (TYPE%vstd.rwlock.RwLockToks.Instance. K&. K& V&. V&
      Pred&. Pred&
   )))
   :pattern ((tr_bound%core!clone.Clone. $ (TYPE%vstd.rwlock.RwLockToks.Instance. K&. K&
      V&. V& Pred&. Pred&
   )))
   :qid internal_crate__vstd__rwlock__RwLockToks__impl&__21_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__rwlock__RwLockToks__impl&__21_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%vstd.std_specs.option.OptionAdditionalFns. $ (TYPE%core!option.Option. T&.
     T&
    ) T&. T&
   )
   :pattern ((tr_bound%vstd.std_specs.option.OptionAdditionalFns. $ (TYPE%core!option.Option.
      T&. T&
     ) T&. T&
   ))
   :qid internal_crate__vstd__std_specs__option__impl&__0_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__std_specs__option__impl&__0_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!clone.Clone. $ (TYPE%core!marker.PhantomData. T&. T&))
   :pattern ((tr_bound%core!clone.Clone. $ (TYPE%core!marker.PhantomData. T&. T&)))
   :qid internal_core__marker__impl&__13_trait_impl_definition
   :skolemid skolem_internal_core__marker__impl&__13_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!clone.Clone. (REF T&.) T&)
   :pattern ((tr_bound%core!clone.Clone. (REF T&.) T&))
   :qid internal_core__clone__impls__impl&__3_trait_impl_definition
   :skolemid skolem_internal_core__clone__impls__impl&__3_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%core!clone.Clone. T&. T&)
    (tr_bound%core!clone.Clone. $ (TYPE%core!option.Option. T&. T&))
   )
   :pattern ((tr_bound%core!clone.Clone. $ (TYPE%core!option.Option. T&. T&)))
   :qid internal_core__option__impl&__5_trait_impl_definition
   :skolemid skolem_internal_core__option__impl&__5_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (tr_bound%core!clone.Clone. (TRACKED A&.) A&)
   :pattern ((tr_bound%core!clone.Clone. (TRACKED A&.) A&))
   :qid internal_crate__builtin__impl&__4_trait_impl_definition
   :skolemid skolem_internal_crate__builtin__impl&__4_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (tr_bound%core!clone.Clone. (GHOST A&.) A&)
   :pattern ((tr_bound%core!clone.Clone. (GHOST A&.) A&))
   :qid internal_crate__builtin__impl&__2_trait_impl_definition
   :skolemid skolem_internal_crate__builtin__impl&__2_trait_impl_definition
)))

;; Function-Specs crate::vstd::rwlock::RwLockToks::State::initialize_full_inductive
(declare-fun req%vstd.rwlock.RwLockToks.impl&%23.initialize_full_inductive. (Dcr Type
  Dcr Type Dcr Type vstd.rwlock.RwLockToks.State. Poly Poly
 ) Bool
)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (post! vstd.rwlock.RwLockToks.State.)
   (k! Poly) (t! Poly)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%23.initialize_full_inductive. K&. K& V&. V& Pred&.
     Pred& post! k! t!
    ) (=>
     %%global_location_label%%2
     (vstd.rwlock.RwLockToks.impl&%23.initialize_full.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
       post!
      ) k! t!
   )))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%23.initialize_full_inductive. K&. K& V&.
     V& Pred&. Pred& post! k! t!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__23.initialize_full_inductive._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__23.initialize_full_inductive._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%23.initialize_full_inductive. (Dcr Type
  Dcr Type Dcr Type vstd.rwlock.RwLockToks.State. Poly Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (post! vstd.rwlock.RwLockToks.State.)
   (k! Poly) (t! Poly)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%23.initialize_full_inductive. K&. K& V&. V& Pred&.
     Pred& post! k! t!
    ) (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      post!
   )))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%23.initialize_full_inductive. K&. K& V&.
     V& Pred&. Pred& post! k! t!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__23.initialize_full_inductive._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__23.initialize_full_inductive._definition
)))

;; Function-Def crate::vstd::rwlock::RwLockToks::State::initialize_full_inductive
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/rwlock.rs:64:5: 64:57 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const post! vstd.rwlock.RwLockToks.State.)
 (declare-const k! Poly)
 (declare-const t! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.rwlock.RwLockToks.State. post!) (TYPE%vstd.rwlock.RwLockToks.State.
    K&. K& V&. V& Pred&. Pred&
 )))
 (assert
  (has_type k! K&)
 )
 (assert
  (has_type t! V&)
 )
 (assert
  (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
 )
 (assert
  (vstd.rwlock.RwLockToks.impl&%23.initialize_full.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
    post!
   ) k! t!
 ))
 ;; could not show invariant `exc_bit_matches` on the `post` state
 (declare-const %%location_label%%0 Bool)
 ;; could not show invariant `count_matches` on the `post` state
 (declare-const %%location_label%%1 Bool)
 ;; could not show invariant `reader_agrees_storage` on the `post` state
 (declare-const %%location_label%%2 Bool)
 ;; could not show invariant `writer_agrees_storage` on the `post` state
 (declare-const %%location_label%%3 Bool)
 ;; could not show invariant `writer_agrees_storage_rev` on the `post` state
 (declare-const %%location_label%%4 Bool)
 ;; could not show invariant `sto_user_inv` on the `post` state
 (declare-const %%location_label%%5 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%6 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.multiset.group_multiset_axioms.)
    (and
     (=>
      %%location_label%%0
      (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_exc_bit_matches. K&. K& V&. V& Pred&.
       Pred& post!
     ))
     (=>
      (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_exc_bit_matches. K&. K& V&. V& Pred&.
       Pred& post!
      )
      (and
       (=>
        %%location_label%%1
        (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_count_matches. K&. K& V&. V& Pred&.
         Pred& post!
       ))
       (=>
        (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_count_matches. K&. K& V&. V& Pred&.
         Pred& post!
        )
        (and
         (=>
          %%location_label%%2
          (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_reader_agrees_storage. K&. K& V&. V&
           Pred&. Pred& post!
         ))
         (=>
          (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_reader_agrees_storage. K&. K& V&. V&
           Pred&. Pred& post!
          )
          (and
           (=>
            %%location_label%%3
            (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage. K&. K& V&. V&
             Pred&. Pred& post!
           ))
           (=>
            (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage. K&. K& V&. V&
             Pred&. Pred& post!
            )
            (and
             (=>
              %%location_label%%4
              (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage_rev. K&. K& V&.
               V& Pred&. Pred& post!
             ))
             (=>
              (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage_rev. K&. K& V&.
               V& Pred&. Pred& post!
              )
              (and
               (=>
                %%location_label%%5
                (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_sto_user_inv. K&. K& V&. V& Pred&.
                 Pred& post!
               ))
               (=>
                (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_sto_user_inv. K&. K& V&. V& Pred&.
                 Pred& post!
                )
                (=>
                 %%location_label%%6
                 (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
                   post!
 ))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::rwlock::RwLockToks::State::acquire_read_start_inductive
(declare-fun req%vstd.rwlock.RwLockToks.impl&%23.acquire_read_start_inductive. (Dcr
  Type Dcr Type Dcr Type vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State.
 ) Bool
)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%23.acquire_read_start_inductive. K&. K& V&. V&
     Pred&. Pred& pre! post!
    ) (=>
     %%global_location_label%%3
     (and
      (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
        pre!
      ))
      (vstd.rwlock.RwLockToks.impl&%23.acquire_read_start_strong.? K&. K& V&. V& Pred&.
       Pred& (Poly%vstd.rwlock.RwLockToks.State. pre!) (Poly%vstd.rwlock.RwLockToks.State.
        post!
   )))))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%23.acquire_read_start_inductive. K&. K&
     V&. V& Pred&. Pred& pre! post!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__23.acquire_read_start_inductive._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__23.acquire_read_start_inductive._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%23.acquire_read_start_inductive. (Dcr
  Type Dcr Type Dcr Type vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%23.acquire_read_start_inductive. K&. K& V&. V&
     Pred&. Pred& pre! post!
    ) (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      post!
   )))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%23.acquire_read_start_inductive. K&. K&
     V&. V& Pred&. Pred& pre! post!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__23.acquire_read_start_inductive._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__23.acquire_read_start_inductive._definition
)))

;; Function-Def crate::vstd::rwlock::RwLockToks::State::acquire_read_start_inductive
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/rwlock.rs:208:5: 208:59 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const pre! vstd.rwlock.RwLockToks.State.)
 (declare-const post! vstd.rwlock.RwLockToks.State.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.rwlock.RwLockToks.State. pre!) (TYPE%vstd.rwlock.RwLockToks.State.
    K&. K& V&. V& Pred&. Pred&
 )))
 (assert
  (has_type (Poly%vstd.rwlock.RwLockToks.State. post!) (TYPE%vstd.rwlock.RwLockToks.State.
    K&. K& V&. V& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
 )
 (assert
  (and
   (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
     pre!
   ))
   (vstd.rwlock.RwLockToks.impl&%23.acquire_read_start_strong.? K&. K& V&. V& Pred&.
    Pred& (Poly%vstd.rwlock.RwLockToks.State. pre!) (Poly%vstd.rwlock.RwLockToks.State.
     post!
 ))))
 ;; could not show invariant `exc_bit_matches` on the `post` state
 (declare-const %%location_label%%0 Bool)
 ;; could not show invariant `count_matches` on the `post` state
 (declare-const %%location_label%%1 Bool)
 ;; could not show invariant `reader_agrees_storage` on the `post` state
 (declare-const %%location_label%%2 Bool)
 ;; could not show invariant `writer_agrees_storage` on the `post` state
 (declare-const %%location_label%%3 Bool)
 ;; could not show invariant `writer_agrees_storage_rev` on the `post` state
 (declare-const %%location_label%%4 Bool)
 ;; could not show invariant `sto_user_inv` on the `post` state
 (declare-const %%location_label%%5 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%6 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.multiset.group_multiset_axioms.)
    (and
     (=>
      %%location_label%%0
      (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_exc_bit_matches. K&. K& V&. V& Pred&.
       Pred& post!
     ))
     (=>
      (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_exc_bit_matches. K&. K& V&. V& Pred&.
       Pred& post!
      )
      (and
       (=>
        %%location_label%%1
        (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_count_matches. K&. K& V&. V& Pred&.
         Pred& post!
       ))
       (=>
        (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_count_matches. K&. K& V&. V& Pred&.
         Pred& post!
        )
        (and
         (=>
          %%location_label%%2
          (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_reader_agrees_storage. K&. K& V&. V&
           Pred&. Pred& post!
         ))
         (=>
          (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_reader_agrees_storage. K&. K& V&. V&
           Pred&. Pred& post!
          )
          (and
           (=>
            %%location_label%%3
            (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage. K&. K& V&. V&
             Pred&. Pred& post!
           ))
           (=>
            (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage. K&. K& V&. V&
             Pred&. Pred& post!
            )
            (and
             (=>
              %%location_label%%4
              (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage_rev. K&. K& V&.
               V& Pred&. Pred& post!
             ))
             (=>
              (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage_rev. K&. K& V&.
               V& Pred&. Pred& post!
              )
              (and
               (=>
                %%location_label%%5
                (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_sto_user_inv. K&. K& V&. V& Pred&.
                 Pred& post!
               ))
               (=>
                (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_sto_user_inv. K&. K& V&. V& Pred&.
                 Pred& post!
                )
                (=>
                 %%location_label%%6
                 (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
                   post!
 ))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::rwlock::RwLockToks::State::acquire_read_end_inductive
(declare-fun req%vstd.rwlock.RwLockToks.impl&%23.acquire_read_end_inductive. (Dcr Type
  Dcr Type Dcr Type vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State.
 ) Bool
)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%23.acquire_read_end_inductive. K&. K& V&. V& Pred&.
     Pred& pre! post!
    ) (=>
     %%global_location_label%%4
     (and
      (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
        pre!
      ))
      (vstd.rwlock.RwLockToks.impl&%23.acquire_read_end_strong.? K&. K& V&. V& Pred&. Pred&
       (Poly%vstd.rwlock.RwLockToks.State. pre!) (Poly%vstd.rwlock.RwLockToks.State. post!)
   ))))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%23.acquire_read_end_inductive. K&. K& V&.
     V& Pred&. Pred& pre! post!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__23.acquire_read_end_inductive._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__23.acquire_read_end_inductive._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%23.acquire_read_end_inductive. (Dcr Type
  Dcr Type Dcr Type vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%23.acquire_read_end_inductive. K&. K& V&. V& Pred&.
     Pred& pre! post!
    ) (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      post!
   )))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%23.acquire_read_end_inductive. K&. K& V&.
     V& Pred&. Pred& pre! post!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__23.acquire_read_end_inductive._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__23.acquire_read_end_inductive._definition
)))

;; Function-Def crate::vstd::rwlock::RwLockToks::State::acquire_read_end_inductive
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/rwlock.rs:213:5: 213:57 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const pre! vstd.rwlock.RwLockToks.State.)
 (declare-const post! vstd.rwlock.RwLockToks.State.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.rwlock.RwLockToks.State. pre!) (TYPE%vstd.rwlock.RwLockToks.State.
    K&. K& V&. V& Pred&. Pred&
 )))
 (assert
  (has_type (Poly%vstd.rwlock.RwLockToks.State. post!) (TYPE%vstd.rwlock.RwLockToks.State.
    K&. K& V&. V& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
 )
 (assert
  (and
   (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
     pre!
   ))
   (vstd.rwlock.RwLockToks.impl&%23.acquire_read_end_strong.? K&. K& V&. V& Pred&. Pred&
    (Poly%vstd.rwlock.RwLockToks.State. pre!) (Poly%vstd.rwlock.RwLockToks.State. post!)
 )))
 ;; could not show invariant `exc_bit_matches` on the `post` state
 (declare-const %%location_label%%0 Bool)
 ;; could not show invariant `count_matches` on the `post` state
 (declare-const %%location_label%%1 Bool)
 ;; could not show invariant `reader_agrees_storage` on the `post` state
 (declare-const %%location_label%%2 Bool)
 ;; could not show invariant `writer_agrees_storage` on the `post` state
 (declare-const %%location_label%%3 Bool)
 ;; could not show invariant `writer_agrees_storage_rev` on the `post` state
 (declare-const %%location_label%%4 Bool)
 ;; could not show invariant `sto_user_inv` on the `post` state
 (declare-const %%location_label%%5 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%6 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.multiset.group_multiset_axioms.)
    (and
     (=>
      %%location_label%%0
      (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_exc_bit_matches. K&. K& V&. V& Pred&.
       Pred& post!
     ))
     (=>
      (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_exc_bit_matches. K&. K& V&. V& Pred&.
       Pred& post!
      )
      (and
       (=>
        %%location_label%%1
        (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_count_matches. K&. K& V&. V& Pred&.
         Pred& post!
       ))
       (=>
        (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_count_matches. K&. K& V&. V& Pred&.
         Pred& post!
        )
        (and
         (=>
          %%location_label%%2
          (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_reader_agrees_storage. K&. K& V&. V&
           Pred&. Pred& post!
         ))
         (=>
          (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_reader_agrees_storage. K&. K& V&. V&
           Pred&. Pred& post!
          )
          (and
           (=>
            %%location_label%%3
            (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage. K&. K& V&. V&
             Pred&. Pred& post!
           ))
           (=>
            (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage. K&. K& V&. V&
             Pred&. Pred& post!
            )
            (and
             (=>
              %%location_label%%4
              (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage_rev. K&. K& V&.
               V& Pred&. Pred& post!
             ))
             (=>
              (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage_rev. K&. K& V&.
               V& Pred&. Pred& post!
              )
              (and
               (=>
                %%location_label%%5
                (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_sto_user_inv. K&. K& V&. V& Pred&.
                 Pred& post!
               ))
               (=>
                (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_sto_user_inv. K&. K& V&. V& Pred&.
                 Pred& post!
                )
                (=>
                 %%location_label%%6
                 (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
                   post!
 ))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::state_machine_internal::assert_safety
(declare-fun req%vstd.state_machine_internal.assert_safety. (Bool) Bool)
(assert
 (forall ((b! Bool)) (!
   (= (req%vstd.state_machine_internal.assert_safety. b!) b!)
   :pattern ((req%vstd.state_machine_internal.assert_safety. b!))
   :qid internal_req__vstd.state_machine_internal.assert_safety._definition
   :skolemid skolem_internal_req__vstd.state_machine_internal.assert_safety._definition
)))
(declare-fun ens%vstd.state_machine_internal.assert_safety. (Bool) Bool)
(assert
 (forall ((b! Bool)) (!
   (= (ens%vstd.state_machine_internal.assert_safety. b!) b!)
   :pattern ((ens%vstd.state_machine_internal.assert_safety. b!))
   :qid internal_ens__vstd.state_machine_internal.assert_safety._definition
   :skolemid skolem_internal_ens__vstd.state_machine_internal.assert_safety._definition
)))

;; Function-Def crate::vstd::rwlock::RwLockToks::State::acquire_read_end_asserts
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/rwlock.rs:17:1: 236:3 (#1454)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const pre! vstd.rwlock.RwLockToks.State.)
 (declare-const tmp%1 Bool)
 (declare-const x@ Poly)
 (declare-const update_tmp_reader$1@ Poly)
 (declare-const update_tmp_k@ Poly)
 (declare-const update_tmp_pred@ core!marker.PhantomData.)
 (declare-const update_tmp_flag_exc@ Bool)
 (declare-const update_tmp_flag_rc@ Int)
 (declare-const update_tmp_storage@ core!option.Option.)
 (declare-const update_tmp_pending_writer@ core!option.Option.)
 (declare-const update_tmp_writer@ core!option.Option.)
 (declare-const update_tmp_pending_reader@ vstd.multiset.Multiset<tuple%0.>.)
 (declare-const update_tmp_reader@ Poly)
 (declare-const update_tmp_pending_reader$1@ vstd.multiset.Multiset<tuple%0.>.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.rwlock.RwLockToks.State. pre!) (TYPE%vstd.rwlock.RwLockToks.State.
    K&. K& V&. V& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
 )
 ;; unable to prove assertion safety condition
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      pre!
    ))
    (=>
     (= update_tmp_k@ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
        (Poly%vstd.rwlock.RwLockToks.State. pre!)
     )))
     (=>
      (= update_tmp_pred@ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
         (Poly%vstd.rwlock.RwLockToks.State. pre!)
      )))
      (=>
       (= update_tmp_flag_exc@ (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
          (Poly%vstd.rwlock.RwLockToks.State. pre!)
       )))
       (=>
        (= update_tmp_flag_rc@ (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
           (Poly%vstd.rwlock.RwLockToks.State. pre!)
        )))
        (=>
         (= update_tmp_storage@ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
            (Poly%vstd.rwlock.RwLockToks.State. pre!)
         )))
         (=>
          (= update_tmp_pending_writer@ (vstd.rwlock.RwLockToks.State./State/pending_writer (
             %Poly%vstd.rwlock.RwLockToks.State. (Poly%vstd.rwlock.RwLockToks.State. pre!)
          )))
          (=>
           (= update_tmp_writer@ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
              (Poly%vstd.rwlock.RwLockToks.State. pre!)
           )))
           (=>
            (= update_tmp_pending_reader@ (vstd.rwlock.RwLockToks.State./State/pending_reader (
               %Poly%vstd.rwlock.RwLockToks.State. (Poly%vstd.rwlock.RwLockToks.State. pre!)
            )))
            (=>
             (= update_tmp_reader@ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                (Poly%vstd.rwlock.RwLockToks.State. pre!)
             )))
             (=>
              (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                 (Poly%vstd.rwlock.RwLockToks.State. pre!)
                )
               ) false
              )
              (=>
               (>= (vstd.multiset.impl&%0.count.? $ TYPE%tuple%0. (Poly%vstd.multiset.Multiset<tuple%0.>.
                  update_tmp_pending_reader@
                 ) (Poly%tuple%0. tuple%0./tuple%0)
                ) 1
               )
               (=>
                (= update_tmp_pending_reader$1@ (%Poly%vstd.multiset.Multiset<tuple%0.>. (vstd.multiset.impl&%0.remove.?
                   $ TYPE%tuple%0. (Poly%vstd.multiset.Multiset<tuple%0.>. update_tmp_pending_reader@)
                   (Poly%tuple%0. tuple%0./tuple%0)
                )))
                (=>
                 (= x@ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                     (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State. (
                        Poly%vstd.rwlock.RwLockToks.State. pre!
                 )))))))
                 (=>
                  (= update_tmp_reader$1@ (vstd.multiset.impl&%0.insert.? V&. V& update_tmp_reader@ x@))
                  (=>
                   (= tmp%1 (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& (vstd.rwlock.RwLockToks.State./State/k
                       (%Poly%vstd.rwlock.RwLockToks.State. (Poly%vstd.rwlock.RwLockToks.State. pre!))
                      ) x@
                   )))
                   (=>
                    %%location_label%%0
                    (req%vstd.state_machine_internal.assert_safety. tmp%1)
 )))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::rwlock::RwLockToks::State::acquire_read_abandon_inductive
(declare-fun req%vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon_inductive. (
  Dcr Type Dcr Type Dcr Type vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State.
 ) Bool
)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon_inductive. K&. K& V&.
     V& Pred&. Pred& pre! post!
    ) (=>
     %%global_location_label%%5
     (and
      (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
        pre!
      ))
      (vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon_strong.? K&. K& V&. V& Pred&.
       Pred& (Poly%vstd.rwlock.RwLockToks.State. pre!) (Poly%vstd.rwlock.RwLockToks.State.
        post!
   )))))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon_inductive. K&.
     K& V&. V& Pred&. Pred& pre! post!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__23.acquire_read_abandon_inductive._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__23.acquire_read_abandon_inductive._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon_inductive. (
  Dcr Type Dcr Type Dcr Type vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon_inductive. K&. K& V&.
     V& Pred&. Pred& pre! post!
    ) (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      post!
   )))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon_inductive. K&.
     K& V&. V& Pred&. Pred& pre! post!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__23.acquire_read_abandon_inductive._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__23.acquire_read_abandon_inductive._definition
)))

;; Function-Def crate::vstd::rwlock::RwLockToks::State::acquire_read_abandon_inductive
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/rwlock.rs:218:5: 218:61 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const pre! vstd.rwlock.RwLockToks.State.)
 (declare-const post! vstd.rwlock.RwLockToks.State.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.rwlock.RwLockToks.State. pre!) (TYPE%vstd.rwlock.RwLockToks.State.
    K&. K& V&. V& Pred&. Pred&
 )))
 (assert
  (has_type (Poly%vstd.rwlock.RwLockToks.State. post!) (TYPE%vstd.rwlock.RwLockToks.State.
    K&. K& V&. V& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
 )
 (assert
  (and
   (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
     pre!
   ))
   (vstd.rwlock.RwLockToks.impl&%23.acquire_read_abandon_strong.? K&. K& V&. V& Pred&.
    Pred& (Poly%vstd.rwlock.RwLockToks.State. pre!) (Poly%vstd.rwlock.RwLockToks.State.
     post!
 ))))
 ;; could not show invariant `exc_bit_matches` on the `post` state
 (declare-const %%location_label%%0 Bool)
 ;; could not show invariant `count_matches` on the `post` state
 (declare-const %%location_label%%1 Bool)
 ;; could not show invariant `reader_agrees_storage` on the `post` state
 (declare-const %%location_label%%2 Bool)
 ;; could not show invariant `writer_agrees_storage` on the `post` state
 (declare-const %%location_label%%3 Bool)
 ;; could not show invariant `writer_agrees_storage_rev` on the `post` state
 (declare-const %%location_label%%4 Bool)
 ;; could not show invariant `sto_user_inv` on the `post` state
 (declare-const %%location_label%%5 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%6 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.multiset.group_multiset_axioms.)
    (and
     (=>
      %%location_label%%0
      (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_exc_bit_matches. K&. K& V&. V& Pred&.
       Pred& post!
     ))
     (=>
      (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_exc_bit_matches. K&. K& V&. V& Pred&.
       Pred& post!
      )
      (and
       (=>
        %%location_label%%1
        (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_count_matches. K&. K& V&. V& Pred&.
         Pred& post!
       ))
       (=>
        (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_count_matches. K&. K& V&. V& Pred&.
         Pred& post!
        )
        (and
         (=>
          %%location_label%%2
          (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_reader_agrees_storage. K&. K& V&. V&
           Pred&. Pred& post!
         ))
         (=>
          (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_reader_agrees_storage. K&. K& V&. V&
           Pred&. Pred& post!
          )
          (and
           (=>
            %%location_label%%3
            (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage. K&. K& V&. V&
             Pred&. Pred& post!
           ))
           (=>
            (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage. K&. K& V&. V&
             Pred&. Pred& post!
            )
            (and
             (=>
              %%location_label%%4
              (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage_rev. K&. K& V&.
               V& Pred&. Pred& post!
             ))
             (=>
              (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage_rev. K&. K& V&.
               V& Pred&. Pred& post!
              )
              (and
               (=>
                %%location_label%%5
                (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_sto_user_inv. K&. K& V&. V& Pred&.
                 Pred& post!
               ))
               (=>
                (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_sto_user_inv. K&. K& V&. V& Pred&.
                 Pred& post!
                )
                (=>
                 %%location_label%%6
                 (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
                   post!
 ))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::vstd::rwlock::RwLockToks::State::acquire_read_abandon_asserts
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/rwlock.rs:17:1: 236:3 (#1454)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const pre! vstd.rwlock.RwLockToks.State.)
 (declare-const tmp%1 Bool)
 (declare-const update_tmp_k@ Poly)
 (declare-const update_tmp_pred@ core!marker.PhantomData.)
 (declare-const update_tmp_flag_exc@ Bool)
 (declare-const update_tmp_flag_rc@ Int)
 (declare-const update_tmp_storage@ core!option.Option.)
 (declare-const update_tmp_pending_writer@ core!option.Option.)
 (declare-const update_tmp_writer@ core!option.Option.)
 (declare-const update_tmp_pending_reader@ vstd.multiset.Multiset<tuple%0.>.)
 (declare-const update_tmp_reader@ Poly)
 (declare-const update_tmp_pending_reader$1@ vstd.multiset.Multiset<tuple%0.>.)
 (declare-const update_tmp_flag_rc$1@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.rwlock.RwLockToks.State. pre!) (TYPE%vstd.rwlock.RwLockToks.State.
    K&. K& V&. V& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
 )
 ;; unable to prove assertion safety condition
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      pre!
    ))
    (=>
     (= update_tmp_k@ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
        (Poly%vstd.rwlock.RwLockToks.State. pre!)
     )))
     (=>
      (= update_tmp_pred@ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
         (Poly%vstd.rwlock.RwLockToks.State. pre!)
      )))
      (=>
       (= update_tmp_flag_exc@ (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
          (Poly%vstd.rwlock.RwLockToks.State. pre!)
       )))
       (=>
        (= update_tmp_flag_rc@ (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
           (Poly%vstd.rwlock.RwLockToks.State. pre!)
        )))
        (=>
         (= update_tmp_storage@ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
            (Poly%vstd.rwlock.RwLockToks.State. pre!)
         )))
         (=>
          (= update_tmp_pending_writer@ (vstd.rwlock.RwLockToks.State./State/pending_writer (
             %Poly%vstd.rwlock.RwLockToks.State. (Poly%vstd.rwlock.RwLockToks.State. pre!)
          )))
          (=>
           (= update_tmp_writer@ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
              (Poly%vstd.rwlock.RwLockToks.State. pre!)
           )))
           (=>
            (= update_tmp_pending_reader@ (vstd.rwlock.RwLockToks.State./State/pending_reader (
               %Poly%vstd.rwlock.RwLockToks.State. (Poly%vstd.rwlock.RwLockToks.State. pre!)
            )))
            (=>
             (= update_tmp_reader@ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                (Poly%vstd.rwlock.RwLockToks.State. pre!)
             )))
             (=>
              (>= (vstd.multiset.impl&%0.count.? $ TYPE%tuple%0. (Poly%vstd.multiset.Multiset<tuple%0.>.
                 update_tmp_pending_reader@
                ) (Poly%tuple%0. tuple%0./tuple%0)
               ) 1
              )
              (=>
               (= update_tmp_pending_reader$1@ (%Poly%vstd.multiset.Multiset<tuple%0.>. (vstd.multiset.impl&%0.remove.?
                  $ TYPE%tuple%0. (Poly%vstd.multiset.Multiset<tuple%0.>. update_tmp_pending_reader@)
                  (Poly%tuple%0. tuple%0./tuple%0)
               )))
               (=>
                (= tmp%1 (>= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                    (Poly%vstd.rwlock.RwLockToks.State. pre!)
                   )
                  ) 1
                ))
                (=>
                 %%location_label%%0
                 (req%vstd.state_machine_internal.assert_safety. tmp%1)
 ))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::rwlock::RwLockToks::State::acquire_exc_start_inductive
(declare-fun req%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start_inductive. (Dcr
  Type Dcr Type Dcr Type vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State.
 ) Bool
)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start_inductive. K&. K& V&. V&
     Pred&. Pred& pre! post!
    ) (=>
     %%global_location_label%%6
     (and
      (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
        pre!
      ))
      (vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start_strong.? K&. K& V&. V& Pred&. Pred&
       (Poly%vstd.rwlock.RwLockToks.State. pre!) (Poly%vstd.rwlock.RwLockToks.State. post!)
   ))))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start_inductive. K&. K&
     V&. V& Pred&. Pred& pre! post!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__23.acquire_exc_start_inductive._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__23.acquire_exc_start_inductive._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start_inductive. (Dcr
  Type Dcr Type Dcr Type vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start_inductive. K&. K& V&. V&
     Pred&. Pred& pre! post!
    ) (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      post!
   )))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start_inductive. K&. K&
     V&. V& Pred&. Pred& pre! post!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__23.acquire_exc_start_inductive._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__23.acquire_exc_start_inductive._definition
)))

;; Function-Def crate::vstd::rwlock::RwLockToks::State::acquire_exc_start_inductive
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/rwlock.rs:223:5: 223:58 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const pre! vstd.rwlock.RwLockToks.State.)
 (declare-const post! vstd.rwlock.RwLockToks.State.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.rwlock.RwLockToks.State. pre!) (TYPE%vstd.rwlock.RwLockToks.State.
    K&. K& V&. V& Pred&. Pred&
 )))
 (assert
  (has_type (Poly%vstd.rwlock.RwLockToks.State. post!) (TYPE%vstd.rwlock.RwLockToks.State.
    K&. K& V&. V& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
 )
 (assert
  (and
   (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
     pre!
   ))
   (vstd.rwlock.RwLockToks.impl&%23.acquire_exc_start_strong.? K&. K& V&. V& Pred&. Pred&
    (Poly%vstd.rwlock.RwLockToks.State. pre!) (Poly%vstd.rwlock.RwLockToks.State. post!)
 )))
 ;; could not show invariant `exc_bit_matches` on the `post` state
 (declare-const %%location_label%%0 Bool)
 ;; could not show invariant `count_matches` on the `post` state
 (declare-const %%location_label%%1 Bool)
 ;; could not show invariant `reader_agrees_storage` on the `post` state
 (declare-const %%location_label%%2 Bool)
 ;; could not show invariant `writer_agrees_storage` on the `post` state
 (declare-const %%location_label%%3 Bool)
 ;; could not show invariant `writer_agrees_storage_rev` on the `post` state
 (declare-const %%location_label%%4 Bool)
 ;; could not show invariant `sto_user_inv` on the `post` state
 (declare-const %%location_label%%5 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%6 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_exc_bit_matches. K&. K& V&. V& Pred&.
      Pred& post!
    ))
    (=>
     (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_exc_bit_matches. K&. K& V&. V& Pred&.
      Pred& post!
     )
     (and
      (=>
       %%location_label%%1
       (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_count_matches. K&. K& V&. V& Pred&.
        Pred& post!
      ))
      (=>
       (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_count_matches. K&. K& V&. V& Pred&.
        Pred& post!
       )
       (and
        (=>
         %%location_label%%2
         (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_reader_agrees_storage. K&. K& V&. V&
          Pred&. Pred& post!
        ))
        (=>
         (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_reader_agrees_storage. K&. K& V&. V&
          Pred&. Pred& post!
         )
         (and
          (=>
           %%location_label%%3
           (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage. K&. K& V&. V&
            Pred&. Pred& post!
          ))
          (=>
           (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage. K&. K& V&. V&
            Pred&. Pred& post!
           )
           (and
            (=>
             %%location_label%%4
             (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage_rev. K&. K& V&.
              V& Pred&. Pred& post!
            ))
            (=>
             (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage_rev. K&. K& V&.
              V& Pred&. Pred& post!
             )
             (and
              (=>
               %%location_label%%5
               (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_sto_user_inv. K&. K& V&. V& Pred&.
                Pred& post!
              ))
              (=>
               (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_sto_user_inv. K&. K& V&. V& Pred&.
                Pred& post!
               )
               (=>
                %%location_label%%6
                (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
                  post!
 )))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::state_machine_internal::assert_add_option
(declare-fun req%vstd.state_machine_internal.assert_add_option. (Bool) Bool)
(assert
 (forall ((b! Bool)) (!
   (= (req%vstd.state_machine_internal.assert_add_option. b!) b!)
   :pattern ((req%vstd.state_machine_internal.assert_add_option. b!))
   :qid internal_req__vstd.state_machine_internal.assert_add_option._definition
   :skolemid skolem_internal_req__vstd.state_machine_internal.assert_add_option._definition
)))
(declare-fun ens%vstd.state_machine_internal.assert_add_option. (Bool) Bool)
(assert
 (forall ((b! Bool)) (!
   (= (ens%vstd.state_machine_internal.assert_add_option. b!) b!)
   :pattern ((ens%vstd.state_machine_internal.assert_add_option. b!))
   :qid internal_ens__vstd.state_machine_internal.assert_add_option._definition
   :skolemid skolem_internal_ens__vstd.state_machine_internal.assert_add_option._definition
)))

;; Function-Def crate::vstd::rwlock::RwLockToks::State::acquire_exc_start_asserts
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/rwlock.rs:17:1: 236:3 (#1454)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const pre! vstd.rwlock.RwLockToks.State.)
 (declare-const tmp%1 Bool)
 (declare-const update_tmp_k@ Poly)
 (declare-const update_tmp_pred@ core!marker.PhantomData.)
 (declare-const update_tmp_flag_exc@ Bool)
 (declare-const update_tmp_flag_rc@ Int)
 (declare-const update_tmp_storage@ core!option.Option.)
 (declare-const update_tmp_pending_writer@ core!option.Option.)
 (declare-const update_tmp_writer@ core!option.Option.)
 (declare-const update_tmp_pending_reader@ vstd.multiset.Multiset<tuple%0.>.)
 (declare-const update_tmp_reader@ Poly)
 (declare-const update_tmp_flag_exc$1@ Bool)
 (declare-const update_tmp_pending_writer$1@ core!option.Option.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.rwlock.RwLockToks.State. pre!) (TYPE%vstd.rwlock.RwLockToks.State.
    K&. K& V&. V& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
 )
 ;; unable to prove inherent safety condition: to add a value Some(_), field must be None before the update
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      pre!
    ))
    (=>
     (= update_tmp_k@ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
        (Poly%vstd.rwlock.RwLockToks.State. pre!)
     )))
     (=>
      (= update_tmp_pred@ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
         (Poly%vstd.rwlock.RwLockToks.State. pre!)
      )))
      (=>
       (= update_tmp_flag_exc@ (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
          (Poly%vstd.rwlock.RwLockToks.State. pre!)
       )))
       (=>
        (= update_tmp_flag_rc@ (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
           (Poly%vstd.rwlock.RwLockToks.State. pre!)
        )))
        (=>
         (= update_tmp_storage@ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
            (Poly%vstd.rwlock.RwLockToks.State. pre!)
         )))
         (=>
          (= update_tmp_pending_writer@ (vstd.rwlock.RwLockToks.State./State/pending_writer (
             %Poly%vstd.rwlock.RwLockToks.State. (Poly%vstd.rwlock.RwLockToks.State. pre!)
          )))
          (=>
           (= update_tmp_writer@ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
              (Poly%vstd.rwlock.RwLockToks.State. pre!)
           )))
           (=>
            (= update_tmp_pending_reader@ (vstd.rwlock.RwLockToks.State./State/pending_reader (
               %Poly%vstd.rwlock.RwLockToks.State. (Poly%vstd.rwlock.RwLockToks.State. pre!)
            )))
            (=>
             (= update_tmp_reader@ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                (Poly%vstd.rwlock.RwLockToks.State. pre!)
             )))
             (=>
              (= (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
                 (Poly%vstd.rwlock.RwLockToks.State. pre!)
                )
               ) false
              )
              (=>
               (= update_tmp_flag_exc$1@ true)
               (=>
                (= tmp%1 (is-core!option.Option./None update_tmp_pending_writer@))
                (=>
                 %%location_label%%0
                 (req%vstd.state_machine_internal.assert_add_option. tmp%1)
 ))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::rwlock::RwLockToks::State::acquire_exc_end_inductive
(declare-fun req%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end_inductive. (Dcr Type
  Dcr Type Dcr Type vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State.
 ) Bool
)
(declare-const %%global_location_label%%7 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end_inductive. K&. K& V&. V& Pred&.
     Pred& pre! post!
    ) (=>
     %%global_location_label%%7
     (and
      (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
        pre!
      ))
      (vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end_strong.? K&. K& V&. V& Pred&. Pred&
       (Poly%vstd.rwlock.RwLockToks.State. pre!) (Poly%vstd.rwlock.RwLockToks.State. post!)
   ))))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end_inductive. K&. K& V&.
     V& Pred&. Pred& pre! post!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__23.acquire_exc_end_inductive._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__23.acquire_exc_end_inductive._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end_inductive. (Dcr Type
  Dcr Type Dcr Type vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end_inductive. K&. K& V&. V& Pred&.
     Pred& pre! post!
    ) (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      post!
   )))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end_inductive. K&. K& V&.
     V& Pred&. Pred& pre! post!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__23.acquire_exc_end_inductive._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__23.acquire_exc_end_inductive._definition
)))

;; Function-Def crate::vstd::rwlock::RwLockToks::State::acquire_exc_end_inductive
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/rwlock.rs:226:5: 226:56 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const pre! vstd.rwlock.RwLockToks.State.)
 (declare-const post! vstd.rwlock.RwLockToks.State.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.rwlock.RwLockToks.State. pre!) (TYPE%vstd.rwlock.RwLockToks.State.
    K&. K& V&. V& Pred&. Pred&
 )))
 (assert
  (has_type (Poly%vstd.rwlock.RwLockToks.State. post!) (TYPE%vstd.rwlock.RwLockToks.State.
    K&. K& V&. V& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
 )
 (assert
  (and
   (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
     pre!
   ))
   (vstd.rwlock.RwLockToks.impl&%23.acquire_exc_end_strong.? K&. K& V&. V& Pred&. Pred&
    (Poly%vstd.rwlock.RwLockToks.State. pre!) (Poly%vstd.rwlock.RwLockToks.State. post!)
 )))
 ;; could not show invariant `exc_bit_matches` on the `post` state
 (declare-const %%location_label%%0 Bool)
 ;; could not show invariant `count_matches` on the `post` state
 (declare-const %%location_label%%1 Bool)
 ;; could not show invariant `reader_agrees_storage` on the `post` state
 (declare-const %%location_label%%2 Bool)
 ;; could not show invariant `writer_agrees_storage` on the `post` state
 (declare-const %%location_label%%3 Bool)
 ;; could not show invariant `writer_agrees_storage_rev` on the `post` state
 (declare-const %%location_label%%4 Bool)
 ;; could not show invariant `sto_user_inv` on the `post` state
 (declare-const %%location_label%%5 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%6 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_exc_bit_matches. K&. K& V&. V& Pred&.
      Pred& post!
    ))
    (=>
     (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_exc_bit_matches. K&. K& V&. V& Pred&.
      Pred& post!
     )
     (and
      (=>
       %%location_label%%1
       (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_count_matches. K&. K& V&. V& Pred&.
        Pred& post!
      ))
      (=>
       (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_count_matches. K&. K& V&. V& Pred&.
        Pred& post!
       )
       (and
        (=>
         %%location_label%%2
         (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_reader_agrees_storage. K&. K& V&. V&
          Pred&. Pred& post!
        ))
        (=>
         (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_reader_agrees_storage. K&. K& V&. V&
          Pred&. Pred& post!
         )
         (and
          (=>
           %%location_label%%3
           (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage. K&. K& V&. V&
            Pred&. Pred& post!
          ))
          (=>
           (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage. K&. K& V&. V&
            Pred&. Pred& post!
           )
           (and
            (=>
             %%location_label%%4
             (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage_rev. K&. K& V&.
              V& Pred&. Pred& post!
            ))
            (=>
             (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage_rev. K&. K& V&.
              V& Pred&. Pred& post!
             )
             (and
              (=>
               %%location_label%%5
               (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_sto_user_inv. K&. K& V&. V& Pred&.
                Pred& post!
              ))
              (=>
               (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_sto_user_inv. K&. K& V&. V& Pred&.
                Pred& post!
               )
               (=>
                %%location_label%%6
                (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
                  post!
 )))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::state_machine_internal::assert_withdraw_option
(declare-fun req%vstd.state_machine_internal.assert_withdraw_option. (Bool) Bool)
(assert
 (forall ((b! Bool)) (!
   (= (req%vstd.state_machine_internal.assert_withdraw_option. b!) b!)
   :pattern ((req%vstd.state_machine_internal.assert_withdraw_option. b!))
   :qid internal_req__vstd.state_machine_internal.assert_withdraw_option._definition
   :skolemid skolem_internal_req__vstd.state_machine_internal.assert_withdraw_option._definition
)))
(declare-fun ens%vstd.state_machine_internal.assert_withdraw_option. (Bool) Bool)
(assert
 (forall ((b! Bool)) (!
   (= (ens%vstd.state_machine_internal.assert_withdraw_option. b!) b!)
   :pattern ((ens%vstd.state_machine_internal.assert_withdraw_option. b!))
   :qid internal_ens__vstd.state_machine_internal.assert_withdraw_option._definition
   :skolemid skolem_internal_ens__vstd.state_machine_internal.assert_withdraw_option._definition
)))

;; Function-Def crate::vstd::rwlock::RwLockToks::State::acquire_exc_end_asserts
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/rwlock.rs:17:1: 236:3 (#1454)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const pre! vstd.rwlock.RwLockToks.State.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const x@ Poly)
 (declare-const update_tmp_storage$1@ core!option.Option.)
 (declare-const update_tmp_k@ Poly)
 (declare-const update_tmp_pred@ core!marker.PhantomData.)
 (declare-const update_tmp_flag_exc@ Bool)
 (declare-const update_tmp_flag_rc@ Int)
 (declare-const update_tmp_storage@ core!option.Option.)
 (declare-const update_tmp_pending_writer@ core!option.Option.)
 (declare-const update_tmp_writer@ core!option.Option.)
 (declare-const update_tmp_pending_reader@ vstd.multiset.Multiset<tuple%0.>.)
 (declare-const update_tmp_reader@ Poly)
 (declare-const update_tmp_pending_writer$1@ core!option.Option.)
 (declare-const update_tmp_writer$1@ core!option.Option.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.rwlock.RwLockToks.State. pre!) (TYPE%vstd.rwlock.RwLockToks.State.
    K&. K& V&. V& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
 )
 ;; unable to prove inherent safety condition: to add a value Some(_), field must be None before the update
 (declare-const %%location_label%%0 Bool)
 ;; unable to prove inherent safety condition: the given value to be withdrawn must be stored before the withdraw
 (declare-const %%location_label%%1 Bool)
 ;; unable to prove assertion safety condition
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      pre!
    ))
    (=>
     (= update_tmp_k@ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
        (Poly%vstd.rwlock.RwLockToks.State. pre!)
     )))
     (=>
      (= update_tmp_pred@ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
         (Poly%vstd.rwlock.RwLockToks.State. pre!)
      )))
      (=>
       (= update_tmp_flag_exc@ (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
          (Poly%vstd.rwlock.RwLockToks.State. pre!)
       )))
       (=>
        (= update_tmp_flag_rc@ (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
           (Poly%vstd.rwlock.RwLockToks.State. pre!)
        )))
        (=>
         (= update_tmp_storage@ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
            (Poly%vstd.rwlock.RwLockToks.State. pre!)
         )))
         (=>
          (= update_tmp_pending_writer@ (vstd.rwlock.RwLockToks.State./State/pending_writer (
             %Poly%vstd.rwlock.RwLockToks.State. (Poly%vstd.rwlock.RwLockToks.State. pre!)
          )))
          (=>
           (= update_tmp_writer@ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
              (Poly%vstd.rwlock.RwLockToks.State. pre!)
           )))
           (=>
            (= update_tmp_pending_reader@ (vstd.rwlock.RwLockToks.State./State/pending_reader (
               %Poly%vstd.rwlock.RwLockToks.State. (Poly%vstd.rwlock.RwLockToks.State. pre!)
            )))
            (=>
             (= update_tmp_reader@ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                (Poly%vstd.rwlock.RwLockToks.State. pre!)
             )))
             (=>
              (= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                 (Poly%vstd.rwlock.RwLockToks.State. pre!)
                )
               ) 0
              )
              (=>
               (= update_tmp_pending_writer@ (core!option.Option./Some (Poly%tuple%0. tuple%0./tuple%0)))
               (=>
                (= update_tmp_pending_writer$1@ core!option.Option./None)
                (=>
                 (= tmp%1 (is-core!option.Option./None update_tmp_writer@))
                 (and
                  (=>
                   %%location_label%%0
                   (req%vstd.state_machine_internal.assert_add_option. tmp%1)
                  )
                  (=>
                   (ens%vstd.state_machine_internal.assert_add_option. tmp%1)
                   (=>
                    (= update_tmp_writer$1@ (core!option.Option./Some (Poly%tuple%0. tuple%0./tuple%0)))
                    (=>
                     (= x@ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                         (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State. (
                            Poly%vstd.rwlock.RwLockToks.State. pre!
                     )))))))
                     (=>
                      (= tmp%2 (= update_tmp_storage@ (core!option.Option./Some x@)))
                      (and
                       (=>
                        %%location_label%%1
                        (req%vstd.state_machine_internal.assert_withdraw_option. tmp%2)
                       )
                       (=>
                        (ens%vstd.state_machine_internal.assert_withdraw_option. tmp%2)
                        (=>
                         (= update_tmp_storage$1@ core!option.Option./None)
                         (=>
                          (= tmp%3 (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& (vstd.rwlock.RwLockToks.State./State/k
                              (%Poly%vstd.rwlock.RwLockToks.State. (Poly%vstd.rwlock.RwLockToks.State. pre!))
                             ) x@
                          )))
                          (=>
                           %%location_label%%2
                           (req%vstd.state_machine_internal.assert_safety. tmp%3)
 ))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::rwlock::RwLockToks::State::release_exc_inductive
(declare-fun req%vstd.rwlock.RwLockToks.impl&%23.release_exc_inductive. (Dcr Type Dcr
  Type Dcr Type vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State. Poly
 ) Bool
)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.) (x! Poly)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%23.release_exc_inductive. K&. K& V&. V& Pred&.
     Pred& pre! post! x!
    ) (=>
     %%global_location_label%%8
     (and
      (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
        pre!
      ))
      (vstd.rwlock.RwLockToks.impl&%23.release_exc_strong.? K&. K& V&. V& Pred&. Pred& (
        Poly%vstd.rwlock.RwLockToks.State. pre!
       ) (Poly%vstd.rwlock.RwLockToks.State. post!) x!
   ))))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%23.release_exc_inductive. K&. K& V&. V&
     Pred&. Pred& pre! post! x!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__23.release_exc_inductive._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__23.release_exc_inductive._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%23.release_exc_inductive. (Dcr Type Dcr
  Type Dcr Type vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State. Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.) (x! Poly)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%23.release_exc_inductive. K&. K& V&. V& Pred&.
     Pred& pre! post! x!
    ) (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      post!
   )))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%23.release_exc_inductive. K&. K& V&. V&
     Pred&. Pred& pre! post! x!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__23.release_exc_inductive._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__23.release_exc_inductive._definition
)))

;; Function-Def crate::vstd::rwlock::RwLockToks::State::release_exc_inductive
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/rwlock.rs:229:5: 229:58 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const pre! vstd.rwlock.RwLockToks.State.)
 (declare-const post! vstd.rwlock.RwLockToks.State.)
 (declare-const x! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.rwlock.RwLockToks.State. pre!) (TYPE%vstd.rwlock.RwLockToks.State.
    K&. K& V&. V& Pred&. Pred&
 )))
 (assert
  (has_type (Poly%vstd.rwlock.RwLockToks.State. post!) (TYPE%vstd.rwlock.RwLockToks.State.
    K&. K& V&. V& Pred&. Pred&
 )))
 (assert
  (has_type x! V&)
 )
 (assert
  (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
 )
 (assert
  (and
   (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
     pre!
   ))
   (vstd.rwlock.RwLockToks.impl&%23.release_exc_strong.? K&. K& V&. V& Pred&. Pred& (
     Poly%vstd.rwlock.RwLockToks.State. pre!
    ) (Poly%vstd.rwlock.RwLockToks.State. post!) x!
 )))
 ;; could not show invariant `exc_bit_matches` on the `post` state
 (declare-const %%location_label%%0 Bool)
 ;; could not show invariant `count_matches` on the `post` state
 (declare-const %%location_label%%1 Bool)
 ;; could not show invariant `reader_agrees_storage` on the `post` state
 (declare-const %%location_label%%2 Bool)
 ;; could not show invariant `writer_agrees_storage` on the `post` state
 (declare-const %%location_label%%3 Bool)
 ;; could not show invariant `writer_agrees_storage_rev` on the `post` state
 (declare-const %%location_label%%4 Bool)
 ;; could not show invariant `sto_user_inv` on the `post` state
 (declare-const %%location_label%%5 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%6 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_exc_bit_matches. K&. K& V&. V& Pred&.
      Pred& post!
    ))
    (=>
     (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_exc_bit_matches. K&. K& V&. V& Pred&.
      Pred& post!
     )
     (and
      (=>
       %%location_label%%1
       (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_count_matches. K&. K& V&. V& Pred&.
        Pred& post!
      ))
      (=>
       (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_count_matches. K&. K& V&. V& Pred&.
        Pred& post!
       )
       (and
        (=>
         %%location_label%%2
         (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_reader_agrees_storage. K&. K& V&. V&
          Pred&. Pred& post!
        ))
        (=>
         (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_reader_agrees_storage. K&. K& V&. V&
          Pred&. Pred& post!
         )
         (and
          (=>
           %%location_label%%3
           (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage. K&. K& V&. V&
            Pred&. Pred& post!
          ))
          (=>
           (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage. K&. K& V&. V&
            Pred&. Pred& post!
           )
           (and
            (=>
             %%location_label%%4
             (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage_rev. K&. K& V&.
              V& Pred&. Pred& post!
            ))
            (=>
             (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage_rev. K&. K& V&.
              V& Pred&. Pred& post!
             )
             (and
              (=>
               %%location_label%%5
               (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_sto_user_inv. K&. K& V&. V& Pred&.
                Pred& post!
              ))
              (=>
               (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_sto_user_inv. K&. K& V&. V& Pred&.
                Pred& post!
               )
               (=>
                %%location_label%%6
                (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
                  post!
 )))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::state_machine_internal::assert_deposit_option
(declare-fun req%vstd.state_machine_internal.assert_deposit_option. (Bool) Bool)
(assert
 (forall ((b! Bool)) (!
   (= (req%vstd.state_machine_internal.assert_deposit_option. b!) b!)
   :pattern ((req%vstd.state_machine_internal.assert_deposit_option. b!))
   :qid internal_req__vstd.state_machine_internal.assert_deposit_option._definition
   :skolemid skolem_internal_req__vstd.state_machine_internal.assert_deposit_option._definition
)))
(declare-fun ens%vstd.state_machine_internal.assert_deposit_option. (Bool) Bool)
(assert
 (forall ((b! Bool)) (!
   (= (ens%vstd.state_machine_internal.assert_deposit_option. b!) b!)
   :pattern ((ens%vstd.state_machine_internal.assert_deposit_option. b!))
   :qid internal_ens__vstd.state_machine_internal.assert_deposit_option._definition
   :skolemid skolem_internal_ens__vstd.state_machine_internal.assert_deposit_option._definition
)))

;; Function-Def crate::vstd::rwlock::RwLockToks::State::release_exc_asserts
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/rwlock.rs:17:1: 236:3 (#1454)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const pre! vstd.rwlock.RwLockToks.State.)
 (declare-const x! Poly)
 (declare-const tmp%1 Bool)
 (declare-const update_tmp_k@ Poly)
 (declare-const update_tmp_pred@ core!marker.PhantomData.)
 (declare-const update_tmp_flag_exc@ Bool)
 (declare-const update_tmp_flag_rc@ Int)
 (declare-const update_tmp_storage@ core!option.Option.)
 (declare-const update_tmp_pending_writer@ core!option.Option.)
 (declare-const update_tmp_writer@ core!option.Option.)
 (declare-const update_tmp_pending_reader@ vstd.multiset.Multiset<tuple%0.>.)
 (declare-const update_tmp_reader@ Poly)
 (declare-const update_tmp_writer$1@ core!option.Option.)
 (declare-const update_tmp_flag_exc$1@ Bool)
 (declare-const update_tmp_storage$1@ core!option.Option.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.rwlock.RwLockToks.State. pre!) (TYPE%vstd.rwlock.RwLockToks.State.
    K&. K& V&. V& Pred&. Pred&
 )))
 (assert
  (has_type x! V&)
 )
 (assert
  (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
 )
 ;; unable to prove inherent safety condition: to deposit a value into Some(_), the field must be None before the deposit
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      pre!
    ))
    (=>
     (= update_tmp_k@ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
        (Poly%vstd.rwlock.RwLockToks.State. pre!)
     )))
     (=>
      (= update_tmp_pred@ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
         (Poly%vstd.rwlock.RwLockToks.State. pre!)
      )))
      (=>
       (= update_tmp_flag_exc@ (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
          (Poly%vstd.rwlock.RwLockToks.State. pre!)
       )))
       (=>
        (= update_tmp_flag_rc@ (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
           (Poly%vstd.rwlock.RwLockToks.State. pre!)
        )))
        (=>
         (= update_tmp_storage@ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
            (Poly%vstd.rwlock.RwLockToks.State. pre!)
         )))
         (=>
          (= update_tmp_pending_writer@ (vstd.rwlock.RwLockToks.State./State/pending_writer (
             %Poly%vstd.rwlock.RwLockToks.State. (Poly%vstd.rwlock.RwLockToks.State. pre!)
          )))
          (=>
           (= update_tmp_writer@ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
              (Poly%vstd.rwlock.RwLockToks.State. pre!)
           )))
           (=>
            (= update_tmp_pending_reader@ (vstd.rwlock.RwLockToks.State./State/pending_reader (
               %Poly%vstd.rwlock.RwLockToks.State. (Poly%vstd.rwlock.RwLockToks.State. pre!)
            )))
            (=>
             (= update_tmp_reader@ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                (Poly%vstd.rwlock.RwLockToks.State. pre!)
             )))
             (=>
              (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& (vstd.rwlock.RwLockToks.State./State/k
                 (%Poly%vstd.rwlock.RwLockToks.State. (Poly%vstd.rwlock.RwLockToks.State. pre!))
                ) x!
              ))
              (=>
               (= update_tmp_writer@ (core!option.Option./Some (Poly%tuple%0. tuple%0./tuple%0)))
               (=>
                (= update_tmp_writer$1@ core!option.Option./None)
                (=>
                 (= update_tmp_flag_exc$1@ false)
                 (=>
                  (= tmp%1 (is-core!option.Option./None update_tmp_storage@))
                  (=>
                   %%location_label%%0
                   (req%vstd.state_machine_internal.assert_deposit_option. tmp%1)
 ))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::rwlock::RwLockToks::State::release_shared_inductive
(declare-fun req%vstd.rwlock.RwLockToks.impl&%23.release_shared_inductive. (Dcr Type
  Dcr Type Dcr Type vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State. Poly
 ) Bool
)
(declare-const %%global_location_label%%9 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.) (x! Poly)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%23.release_shared_inductive. K&. K& V&. V& Pred&.
     Pred& pre! post! x!
    ) (=>
     %%global_location_label%%9
     (and
      (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
        pre!
      ))
      (vstd.rwlock.RwLockToks.impl&%23.release_shared_strong.? K&. K& V&. V& Pred&. Pred&
       (Poly%vstd.rwlock.RwLockToks.State. pre!) (Poly%vstd.rwlock.RwLockToks.State. post!)
       x!
   ))))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%23.release_shared_inductive. K&. K& V&.
     V& Pred&. Pred& pre! post! x!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__23.release_shared_inductive._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__23.release_shared_inductive._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%23.release_shared_inductive. (Dcr Type
  Dcr Type Dcr Type vstd.rwlock.RwLockToks.State. vstd.rwlock.RwLockToks.State. Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (pre! vstd.rwlock.RwLockToks.State.)
   (post! vstd.rwlock.RwLockToks.State.) (x! Poly)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%23.release_shared_inductive. K&. K& V&. V& Pred&.
     Pred& pre! post! x!
    ) (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      post!
   )))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%23.release_shared_inductive. K&. K& V&.
     V& Pred&. Pred& pre! post! x!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__23.release_shared_inductive._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__23.release_shared_inductive._definition
)))

;; Function-Def crate::vstd::rwlock::RwLockToks::State::release_shared_inductive
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/rwlock.rs:232:5: 232:61 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const pre! vstd.rwlock.RwLockToks.State.)
 (declare-const post! vstd.rwlock.RwLockToks.State.)
 (declare-const x! Poly)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.rwlock.RwLockToks.State. pre!) (TYPE%vstd.rwlock.RwLockToks.State.
    K&. K& V&. V& Pred&. Pred&
 )))
 (assert
  (has_type (Poly%vstd.rwlock.RwLockToks.State. post!) (TYPE%vstd.rwlock.RwLockToks.State.
    K&. K& V&. V& Pred&. Pred&
 )))
 (assert
  (has_type x! V&)
 )
 (assert
  (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
 )
 (assert
  (and
   (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
     pre!
   ))
   (vstd.rwlock.RwLockToks.impl&%23.release_shared_strong.? K&. K& V&. V& Pred&. Pred&
    (Poly%vstd.rwlock.RwLockToks.State. pre!) (Poly%vstd.rwlock.RwLockToks.State. post!)
    x!
 )))
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; could not show invariant `exc_bit_matches` on the `post` state
 (declare-const %%location_label%%1 Bool)
 ;; could not show invariant `count_matches` on the `post` state
 (declare-const %%location_label%%2 Bool)
 ;; could not show invariant `reader_agrees_storage` on the `post` state
 (declare-const %%location_label%%3 Bool)
 ;; could not show invariant `writer_agrees_storage` on the `post` state
 (declare-const %%location_label%%4 Bool)
 ;; could not show invariant `writer_agrees_storage_rev` on the `post` state
 (declare-const %%location_label%%5 Bool)
 ;; could not show invariant `sto_user_inv` on the `post` state
 (declare-const %%location_label%%6 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%7 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.multiset.group_multiset_axioms.)
    (=>
     (= tmp%1 (ext_eq false (TYPE%core!option.Option. V&. V&) (Poly%core!option.Option. (
         vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State. (
           Poly%vstd.rwlock.RwLockToks.State. pre!
        )))
       ) (Poly%core!option.Option. (core!option.Option./Some x!))
     ))
     (and
      (=>
       %%location_label%%0
       tmp%1
      )
      (=>
       tmp%1
       (and
        (=>
         %%location_label%%1
         (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_exc_bit_matches. K&. K& V&. V& Pred&.
          Pred& post!
        ))
        (=>
         (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_exc_bit_matches. K&. K& V&. V& Pred&.
          Pred& post!
         )
         (and
          (=>
           %%location_label%%2
           (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_count_matches. K&. K& V&. V& Pred&.
            Pred& post!
          ))
          (=>
           (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_count_matches. K&. K& V&. V& Pred&.
            Pred& post!
           )
           (and
            (=>
             %%location_label%%3
             (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_reader_agrees_storage. K&. K& V&. V&
              Pred&. Pred& post!
            ))
            (=>
             (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_reader_agrees_storage. K&. K& V&. V&
              Pred&. Pred& post!
             )
             (and
              (=>
               %%location_label%%4
               (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage. K&. K& V&. V&
                Pred&. Pred& post!
              ))
              (=>
               (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage. K&. K& V&. V&
                Pred&. Pred& post!
               )
               (and
                (=>
                 %%location_label%%5
                 (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage_rev. K&. K& V&.
                  V& Pred&. Pred& post!
                ))
                (=>
                 (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_writer_agrees_storage_rev. K&. K& V&.
                  V& Pred&. Pred& post!
                 )
                 (and
                  (=>
                   %%location_label%%6
                   (req%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_sto_user_inv. K&. K& V&. V& Pred&.
                    Pred& post!
                  ))
                  (=>
                   (ens%vstd.rwlock.RwLockToks.impl&%23.lemma_msg_sto_user_inv. K&. K& V&. V& Pred&.
                    Pred& post!
                   )
                   (=>
                    %%location_label%%7
                    (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
                      post!
 )))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::vstd::rwlock::RwLockToks::State::release_shared_asserts
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/rwlock.rs:17:1: 236:3 (#1454)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const pre! vstd.rwlock.RwLockToks.State.)
 (declare-const x! Poly)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const update_tmp_k@ Poly)
 (declare-const update_tmp_pred@ core!marker.PhantomData.)
 (declare-const update_tmp_flag_exc@ Bool)
 (declare-const update_tmp_flag_rc@ Int)
 (declare-const update_tmp_storage@ core!option.Option.)
 (declare-const update_tmp_pending_writer@ core!option.Option.)
 (declare-const update_tmp_writer@ core!option.Option.)
 (declare-const update_tmp_pending_reader@ vstd.multiset.Multiset<tuple%0.>.)
 (declare-const update_tmp_reader@ Poly)
 (declare-const update_tmp_reader$1@ Poly)
 (declare-const update_tmp_flag_rc$1@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.rwlock.RwLockToks.State. pre!) (TYPE%vstd.rwlock.RwLockToks.State.
    K&. K& V&. V& Pred&. Pred&
 )))
 (assert
  (has_type x! V&)
 )
 (assert
  (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; unable to prove assertion safety condition
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      pre!
    ))
    (=>
     (= update_tmp_k@ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
        (Poly%vstd.rwlock.RwLockToks.State. pre!)
     )))
     (=>
      (= update_tmp_pred@ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
         (Poly%vstd.rwlock.RwLockToks.State. pre!)
      )))
      (=>
       (= update_tmp_flag_exc@ (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
          (Poly%vstd.rwlock.RwLockToks.State. pre!)
       )))
       (=>
        (= update_tmp_flag_rc@ (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
           (Poly%vstd.rwlock.RwLockToks.State. pre!)
        )))
        (=>
         (= update_tmp_storage@ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
            (Poly%vstd.rwlock.RwLockToks.State. pre!)
         )))
         (=>
          (= update_tmp_pending_writer@ (vstd.rwlock.RwLockToks.State./State/pending_writer (
             %Poly%vstd.rwlock.RwLockToks.State. (Poly%vstd.rwlock.RwLockToks.State. pre!)
          )))
          (=>
           (= update_tmp_writer@ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
              (Poly%vstd.rwlock.RwLockToks.State. pre!)
           )))
           (=>
            (= update_tmp_pending_reader@ (vstd.rwlock.RwLockToks.State./State/pending_reader (
               %Poly%vstd.rwlock.RwLockToks.State. (Poly%vstd.rwlock.RwLockToks.State. pre!)
            )))
            (=>
             (= update_tmp_reader@ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                (Poly%vstd.rwlock.RwLockToks.State. pre!)
             )))
             (=>
              (>= (vstd.multiset.impl&%0.count.? V&. V& update_tmp_reader@ x!) 1)
              (=>
               (= update_tmp_reader$1@ (vstd.multiset.impl&%0.remove.? V&. V& update_tmp_reader@ x!))
               (=>
                (= tmp%1 (ext_eq false (TYPE%core!option.Option. V&. V&) (Poly%core!option.Option. (
                    vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State. (
                      Poly%vstd.rwlock.RwLockToks.State. pre!
                   )))
                  ) (Poly%core!option.Option. (core!option.Option./Some x!))
                ))
                (and
                 (=>
                  %%location_label%%0
                  tmp%1
                 )
                 (=>
                  tmp%1
                  (=>
                   (= tmp%2 (>= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                       (Poly%vstd.rwlock.RwLockToks.State. pre!)
                      )
                     ) 1
                   ))
                   (and
                    (=>
                     %%location_label%%1
                     (req%vstd.state_machine_internal.assert_safety. tmp%2)
                    )
                    (=>
                     (ens%vstd.state_machine_internal.assert_safety. tmp%2)
                     (=>
                      %%location_label%%2
                      (>= (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
                         (Poly%vstd.rwlock.RwLockToks.State. pre!)
                        )
                       ) 1
 ))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::rwlock::RwLockToks::Instance::initialize_full
(declare-fun req%vstd.rwlock.RwLockToks.impl&%20.initialize_full. (Dcr Type Dcr Type
  Dcr Type Poly Poly core!option.Option.
 ) Bool
)
(declare-const %%global_location_label%%10 Bool)
(declare-const %%global_location_label%%11 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (t! Poly) (param_token_storage! core!option.Option.)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%20.initialize_full. K&. K& V&. V& Pred&. Pred&
     k! t! param_token_storage!
    ) (and
     (=>
      %%global_location_label%%10
      (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& k! t!))
     )
     (=>
      %%global_location_label%%11
      (= param_token_storage! (core!option.Option./Some t!))
   )))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%20.initialize_full. K&. K& V&. V& Pred&.
     Pred& k! t! param_token_storage!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__20.initialize_full._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__20.initialize_full._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%20.initialize_full. (Dcr Type Dcr Type
  Dcr Type Poly Poly core!option.Option. tuple%7.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (t! Poly) (param_token_storage! core!option.Option.) (tmp_tuple! tuple%7.)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%20.initialize_full. K&. K& V&. V& Pred&. Pred&
     k! t! param_token_storage! tmp_tuple!
    ) (and
     (has_type (Poly%tuple%7. tmp_tuple!) (TYPE%tuple%7. (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.Instance.
        K&. K& V&. V& Pred&. Pred&
       ) (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.flag_exc. K&. K& V&. V& Pred&. Pred&)
       (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&. K& V&. V& Pred&. Pred&) (TRACKED
        $
       ) (TYPE%core!option.Option. $ (TYPE%vstd.rwlock.RwLockToks.pending_writer. K&. K& V&.
         V& Pred&. Pred&
        )
       ) (TRACKED $) (TYPE%core!option.Option. $ (TYPE%vstd.rwlock.RwLockToks.writer. K&.
         K& V&. V& Pred&. Pred&
        )
       ) (TRACKED $) (TYPE%vstd.tokens.MultisetToken. $ TYPE%tuple%0. $ (TYPE%vstd.rwlock.RwLockToks.pending_reader.
         K&. K& V&. V& Pred&. Pred&
        )
       ) (TRACKED $) (TYPE%vstd.tokens.MultisetToken. V&. V& $ (TYPE%vstd.rwlock.RwLockToks.reader.
         K&. K& V&. V& Pred&. Pred&
     ))))
     (let
      ((instance$ (%Poly%vstd.rwlock.RwLockToks.Instance. (tuple%7./tuple%7/0 (%Poly%tuple%7.
           (Poly%tuple%7. tmp_tuple!)
      )))))
      (let
       ((param_token_flag_exc$ (%Poly%vstd.rwlock.RwLockToks.flag_exc. (tuple%7./tuple%7/1 (
            %Poly%tuple%7. (Poly%tuple%7. tmp_tuple!)
       )))))
       (let
        ((param_token_flag_rc$ (%Poly%vstd.rwlock.RwLockToks.flag_rc. (tuple%7./tuple%7/2 (%Poly%tuple%7.
             (Poly%tuple%7. tmp_tuple!)
        )))))
        (let
         ((param_token_pending_writer$ (%Poly%core!option.Option. (tuple%7./tuple%7/3 (%Poly%tuple%7.
              (Poly%tuple%7. tmp_tuple!)
         )))))
         (let
          ((param_token_writer$ (%Poly%core!option.Option. (tuple%7./tuple%7/4 (%Poly%tuple%7. (
                Poly%tuple%7. tmp_tuple!
          ))))))
          (let
           ((param_token_pending_reader$ (tuple%7./tuple%7/5 (%Poly%tuple%7. (Poly%tuple%7. tmp_tuple!)))))
           (let
            ((param_token_reader$ (tuple%7./tuple%7/6 (%Poly%tuple%7. (Poly%tuple%7. tmp_tuple!)))))
            (let
             ((instance$1 instance$))
             (let
              ((param_token_flag_exc$1 param_token_flag_exc$))
              (let
               ((param_token_flag_rc$1 param_token_flag_rc$))
               (let
                ((param_token_pending_writer$1 param_token_pending_writer$))
                (let
                 ((param_token_writer$1 param_token_writer$))
                 (let
                  ((param_token_pending_reader$1 param_token_pending_reader$))
                  (let
                   ((param_token_reader$1 param_token_reader$))
                   (and
                    (and
                     (and
                      (and
                       (and
                        (and
                         (and
                          (and
                           (and
                            (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_exc.
                                K&. K& V&. V& Pred&. Pred&
                               ) $ BOOL (Poly%vstd.rwlock.RwLockToks.flag_exc. param_token_flag_exc$1)
                              )
                             ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
                               instance$1
                            )))
                            (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
                                K&. K& V&. V& Pred&. Pred&
                               ) $ NAT (Poly%vstd.rwlock.RwLockToks.flag_rc. param_token_flag_rc$1)
                              )
                             ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
                               instance$1
                           ))))
                           (= (vstd.rwlock.RwLockToks.impl&%20.k.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
                              instance$1
                             )
                            ) k!
                          ))
                          (= (vstd.rwlock.RwLockToks.impl&%20.pred.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
                             instance$1
                            )
                           ) core!marker.PhantomData./PhantomData
                         ))
                         (= (%B (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_exc. K&. K&
                             V&. V& Pred&. Pred&
                            ) $ BOOL (Poly%vstd.rwlock.RwLockToks.flag_exc. param_token_flag_exc$1)
                           )
                          ) false
                        ))
                        (= (%I (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&. K&
                            V&. V& Pred&. Pred&
                           ) $ NAT (Poly%vstd.rwlock.RwLockToks.flag_rc. param_token_flag_rc$1)
                          )
                         ) 0
                       ))
                       (vstd.tokens.option_value_eq_option_token.? $ TYPE%tuple%0. $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
                         K&. K& V&. V& Pred&. Pred&
                        ) (Poly%core!option.Option. core!option.Option./None) (Poly%core!option.Option. param_token_pending_writer$1)
                        (Poly%vstd.tokens.InstanceId. (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&.
                          Pred& (Poly%vstd.rwlock.RwLockToks.Instance. instance$1)
                      ))))
                      (vstd.tokens.option_value_eq_option_token.? $ TYPE%tuple%0. $ (TYPE%vstd.rwlock.RwLockToks.writer.
                        K&. K& V&. V& Pred&. Pred&
                       ) (Poly%core!option.Option. core!option.Option./None) (Poly%core!option.Option. param_token_writer$1)
                       (Poly%vstd.tokens.InstanceId. (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&.
                         Pred& (Poly%vstd.rwlock.RwLockToks.Instance. instance$1)
                     ))))
                     (and
                      (= (vstd.multiset.impl&%0.empty.? $ TYPE%tuple%0.) (vstd.tokens.impl&%2.multiset.?
                        $ TYPE%tuple%0. $ (TYPE%vstd.rwlock.RwLockToks.pending_reader. K&. K& V&. V& Pred&.
                         Pred&
                        ) param_token_pending_reader$1
                      ))
                      (= (vstd.tokens.impl&%2.instance_id.? $ TYPE%tuple%0. $ (TYPE%vstd.rwlock.RwLockToks.pending_reader.
                         K&. K& V&. V& Pred&. Pred&
                        ) param_token_pending_reader$1
                       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
                         instance$1
                    )))))
                    (and
                     (= (vstd.multiset.impl&%0.empty.? V&. V&) (vstd.tokens.impl&%2.multiset.? V&. V& $
                       (TYPE%vstd.rwlock.RwLockToks.reader. K&. K& V&. V& Pred&. Pred&) param_token_reader$1
                     ))
                     (= (vstd.tokens.impl&%2.instance_id.? V&. V& $ (TYPE%vstd.rwlock.RwLockToks.reader.
                        K&. K& V&. V& Pred&. Pred&
                       ) param_token_reader$1
                      ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
                        instance$1
   )))))))))))))))))))))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%20.initialize_full. K&. K& V&. V& Pred&.
     Pred& k! t! param_token_storage! tmp_tuple!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__20.initialize_full._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__20.initialize_full._definition
)))

;; Function-Specs crate::vstd::rwlock::RwLockToks::Instance::acquire_read_start
(declare-fun req%vstd.rwlock.RwLockToks.impl&%20.acquire_read_start. (Dcr Type Dcr
  Type Dcr Type vstd.rwlock.RwLockToks.Instance. vstd.rwlock.RwLockToks.flag_rc.
 ) Bool
)
(declare-const %%global_location_label%%12 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.rwlock.RwLockToks.Instance.)
   (pre%param_token_flag_rc! vstd.rwlock.RwLockToks.flag_rc.)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%20.acquire_read_start. K&. K& V&. V& Pred&. Pred&
     self! pre%param_token_flag_rc!
    ) (=>
     %%global_location_label%%12
     (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
         K&. K& V&. V& Pred&. Pred&
        ) $ NAT (Poly%vstd.rwlock.RwLockToks.flag_rc. pre%param_token_flag_rc!)
       )
      ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
        self!
   )))))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%20.acquire_read_start. K&. K& V&. V& Pred&.
     Pred& self! pre%param_token_flag_rc!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__20.acquire_read_start._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__20.acquire_read_start._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%20.acquire_read_start. (Dcr Type Dcr
  Type Dcr Type vstd.rwlock.RwLockToks.Instance. vstd.rwlock.RwLockToks.flag_rc. vstd.rwlock.RwLockToks.flag_rc.
  vstd.rwlock.RwLockToks.pending_reader.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.rwlock.RwLockToks.Instance.)
   (pre%param_token_flag_rc! vstd.rwlock.RwLockToks.flag_rc.) (param_token_flag_rc! vstd.rwlock.RwLockToks.flag_rc.)
   (param_token_0_pending_reader! vstd.rwlock.RwLockToks.pending_reader.)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%20.acquire_read_start. K&. K& V&. V& Pred&. Pred&
     self! pre%param_token_flag_rc! param_token_flag_rc! param_token_0_pending_reader!
    ) (and
     (has_type (Poly%vstd.rwlock.RwLockToks.pending_reader. param_token_0_pending_reader!)
      (TYPE%vstd.rwlock.RwLockToks.pending_reader. K&. K& V&. V& Pred&. Pred&)
     )
     (has_type (Poly%vstd.rwlock.RwLockToks.flag_rc. param_token_flag_rc!) (TYPE%vstd.rwlock.RwLockToks.flag_rc.
       K&. K& V&. V& Pred&. Pred&
     ))
     (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
         K&. K& V&. V& Pred&. Pred&
        ) $ NAT (Poly%vstd.rwlock.RwLockToks.flag_rc. param_token_flag_rc!)
       )
      ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
        self!
     )))
     (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.pending_reader.
         K&. K& V&. V& Pred&. Pred&
        ) $ TYPE%tuple%0. (Poly%vstd.rwlock.RwLockToks.pending_reader. param_token_0_pending_reader!)
       )
      ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
        self!
     )))
     (= (%Poly%tuple%0. (vstd.tokens.ElementToken.element.? $ (TYPE%vstd.rwlock.RwLockToks.pending_reader.
         K&. K& V&. V& Pred&. Pred&
        ) $ TYPE%tuple%0. (Poly%vstd.rwlock.RwLockToks.pending_reader. param_token_0_pending_reader!)
       )
      ) tuple%0./tuple%0
     )
     (= (%I (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&. K&
         V&. V& Pred&. Pred&
        ) $ NAT (Poly%vstd.rwlock.RwLockToks.flag_rc. param_token_flag_rc!)
       )
      ) (nClip (Add (%I (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
           K&. K& V&. V& Pred&. Pred&
          ) $ NAT (Poly%vstd.rwlock.RwLockToks.flag_rc. pre%param_token_flag_rc!)
         )
        ) 1
   )))))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%20.acquire_read_start. K&. K& V&. V& Pred&.
     Pred& self! pre%param_token_flag_rc! param_token_flag_rc! param_token_0_pending_reader!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__20.acquire_read_start._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__20.acquire_read_start._definition
)))

;; Function-Specs crate::vstd::rwlock::RwLockToks::Instance::acquire_read_end
(declare-fun req%vstd.rwlock.RwLockToks.impl&%20.acquire_read_end. (Dcr Type Dcr Type
  Dcr Type vstd.rwlock.RwLockToks.Instance. vstd.rwlock.RwLockToks.flag_exc. vstd.rwlock.RwLockToks.pending_reader.
 ) Bool
)
(declare-const %%global_location_label%%13 Bool)
(declare-const %%global_location_label%%14 Bool)
(declare-const %%global_location_label%%15 Bool)
(declare-const %%global_location_label%%16 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.rwlock.RwLockToks.Instance.)
   (param_token_flag_exc! vstd.rwlock.RwLockToks.flag_exc.) (param_token_0_pending_reader!
    vstd.rwlock.RwLockToks.pending_reader.
   )
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%20.acquire_read_end. K&. K& V&. V& Pred&. Pred&
     self! param_token_flag_exc! param_token_0_pending_reader!
    ) (and
     (=>
      %%global_location_label%%13
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_exc.
          K&. K& V&. V& Pred&. Pred&
         ) $ BOOL (Poly%vstd.rwlock.RwLockToks.flag_exc. param_token_flag_exc!)
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
         self!
     ))))
     (=>
      %%global_location_label%%14
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.pending_reader.
          K&. K& V&. V& Pred&. Pred&
         ) $ TYPE%tuple%0. (Poly%vstd.rwlock.RwLockToks.pending_reader. param_token_0_pending_reader!)
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
         self!
     ))))
     (=>
      %%global_location_label%%15
      (= (%B (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_exc. K&. K&
          V&. V& Pred&. Pred&
         ) $ BOOL (Poly%vstd.rwlock.RwLockToks.flag_exc. param_token_flag_exc!)
        )
       ) false
     ))
     (=>
      %%global_location_label%%16
      (= (%Poly%tuple%0. (vstd.tokens.ElementToken.element.? $ (TYPE%vstd.rwlock.RwLockToks.pending_reader.
          K&. K& V&. V& Pred&. Pred&
         ) $ TYPE%tuple%0. (Poly%vstd.rwlock.RwLockToks.pending_reader. param_token_0_pending_reader!)
        )
       ) tuple%0./tuple%0
   ))))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%20.acquire_read_end. K&. K& V&. V& Pred&.
     Pred& self! param_token_flag_exc! param_token_0_pending_reader!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__20.acquire_read_end._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__20.acquire_read_end._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%20.acquire_read_end. (Dcr Type Dcr Type
  Dcr Type vstd.rwlock.RwLockToks.Instance. vstd.rwlock.RwLockToks.flag_exc. vstd.rwlock.RwLockToks.pending_reader.
  tuple%2.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.rwlock.RwLockToks.Instance.)
   (param_token_flag_exc! vstd.rwlock.RwLockToks.flag_exc.) (param_token_0_pending_reader!
    vstd.rwlock.RwLockToks.pending_reader.
   ) (tmp_tuple! tuple%2.)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%20.acquire_read_end. K&. K& V&. V& Pred&. Pred&
     self! param_token_flag_exc! param_token_0_pending_reader! tmp_tuple!
    ) (and
     (has_type (Poly%tuple%2. tmp_tuple!) (TYPE%tuple%2. (GHOST $) (TYPE%core!option.Option.
        V&. V&
       ) (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.reader. K&. K& V&. V& Pred&. Pred&)
     ))
     (let
      ((original_field_storage$ (%Poly%core!option.Option. (tuple%2./tuple%2/0 (%Poly%tuple%2.
           (Poly%tuple%2. tmp_tuple!)
      )))))
      (let
       ((param_token_1_reader$ (%Poly%vstd.rwlock.RwLockToks.reader. (tuple%2./tuple%2/1 (%Poly%tuple%2.
            (Poly%tuple%2. tmp_tuple!)
       )))))
       (let
        ((original_field_storage$1 original_field_storage$))
        (let
         ((param_token_1_reader$1 param_token_1_reader$))
         (and
          (and
           (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.reader.
               K&. K& V&. V& Pred&. Pred&
              ) V&. V& (Poly%vstd.rwlock.RwLockToks.reader. param_token_1_reader$1)
             )
            ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
              self!
           )))
           (let
            ((x$ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                 original_field_storage$1
            )))))
            (= (vstd.tokens.ElementToken.element.? $ (TYPE%vstd.rwlock.RwLockToks.reader. K&. K&
               V&. V& Pred&. Pred&
              ) V&. V& (Poly%vstd.rwlock.RwLockToks.reader. param_token_1_reader$1)
             ) x$
          )))
          (%B (let
            ((x$ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                 original_field_storage$1
            )))))
            (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& (vstd.rwlock.RwLockToks.impl&%20.k.?
              K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance. self!)
             ) x$
   ))))))))))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%20.acquire_read_end. K&. K& V&. V& Pred&.
     Pred& self! param_token_flag_exc! param_token_0_pending_reader! tmp_tuple!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__20.acquire_read_end._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__20.acquire_read_end._definition
)))

;; Function-Specs crate::vstd::rwlock::RwLockToks::Instance::acquire_read_abandon
(declare-fun req%vstd.rwlock.RwLockToks.impl&%20.acquire_read_abandon. (Dcr Type Dcr
  Type Dcr Type vstd.rwlock.RwLockToks.Instance. vstd.rwlock.RwLockToks.flag_rc. vstd.rwlock.RwLockToks.pending_reader.
 ) Bool
)
(declare-const %%global_location_label%%17 Bool)
(declare-const %%global_location_label%%18 Bool)
(declare-const %%global_location_label%%19 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.rwlock.RwLockToks.Instance.)
   (pre%param_token_flag_rc! vstd.rwlock.RwLockToks.flag_rc.) (param_token_0_pending_reader!
    vstd.rwlock.RwLockToks.pending_reader.
   )
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%20.acquire_read_abandon. K&. K& V&. V& Pred&.
     Pred& self! pre%param_token_flag_rc! param_token_0_pending_reader!
    ) (and
     (=>
      %%global_location_label%%17
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
          K&. K& V&. V& Pred&. Pred&
         ) $ NAT (Poly%vstd.rwlock.RwLockToks.flag_rc. pre%param_token_flag_rc!)
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
         self!
     ))))
     (=>
      %%global_location_label%%18
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.pending_reader.
          K&. K& V&. V& Pred&. Pred&
         ) $ TYPE%tuple%0. (Poly%vstd.rwlock.RwLockToks.pending_reader. param_token_0_pending_reader!)
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
         self!
     ))))
     (=>
      %%global_location_label%%19
      (= (%Poly%tuple%0. (vstd.tokens.ElementToken.element.? $ (TYPE%vstd.rwlock.RwLockToks.pending_reader.
          K&. K& V&. V& Pred&. Pred&
         ) $ TYPE%tuple%0. (Poly%vstd.rwlock.RwLockToks.pending_reader. param_token_0_pending_reader!)
        )
       ) tuple%0./tuple%0
   ))))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%20.acquire_read_abandon. K&. K& V&. V&
     Pred&. Pred& self! pre%param_token_flag_rc! param_token_0_pending_reader!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__20.acquire_read_abandon._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__20.acquire_read_abandon._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%20.acquire_read_abandon. (Dcr Type Dcr
  Type Dcr Type vstd.rwlock.RwLockToks.Instance. vstd.rwlock.RwLockToks.flag_rc. vstd.rwlock.RwLockToks.flag_rc.
  vstd.rwlock.RwLockToks.pending_reader.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.rwlock.RwLockToks.Instance.)
   (pre%param_token_flag_rc! vstd.rwlock.RwLockToks.flag_rc.) (param_token_flag_rc! vstd.rwlock.RwLockToks.flag_rc.)
   (param_token_0_pending_reader! vstd.rwlock.RwLockToks.pending_reader.)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%20.acquire_read_abandon. K&. K& V&. V& Pred&.
     Pred& self! pre%param_token_flag_rc! param_token_flag_rc! param_token_0_pending_reader!
    ) (and
     (has_type (Poly%vstd.rwlock.RwLockToks.flag_rc. param_token_flag_rc!) (TYPE%vstd.rwlock.RwLockToks.flag_rc.
       K&. K& V&. V& Pred&. Pred&
     ))
     (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
         K&. K& V&. V& Pred&. Pred&
        ) $ NAT (Poly%vstd.rwlock.RwLockToks.flag_rc. param_token_flag_rc!)
       )
      ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
        self!
     )))
     (>= (%I (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&. K&
         V&. V& Pred&. Pred&
        ) $ NAT (Poly%vstd.rwlock.RwLockToks.flag_rc. pre%param_token_flag_rc!)
       )
      ) 1
     )
     (= (%I (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&. K&
         V&. V& Pred&. Pred&
        ) $ NAT (Poly%vstd.rwlock.RwLockToks.flag_rc. param_token_flag_rc!)
       )
      ) (nClip (Sub (%I (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
           K&. K& V&. V& Pred&. Pred&
          ) $ NAT (Poly%vstd.rwlock.RwLockToks.flag_rc. pre%param_token_flag_rc!)
         )
        ) 1
   )))))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%20.acquire_read_abandon. K&. K& V&. V&
     Pred&. Pred& self! pre%param_token_flag_rc! param_token_flag_rc! param_token_0_pending_reader!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__20.acquire_read_abandon._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__20.acquire_read_abandon._definition
)))

;; Function-Specs crate::vstd::rwlock::RwLockToks::Instance::acquire_exc_start
(declare-fun req%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_start. (Dcr Type Dcr Type
  Dcr Type vstd.rwlock.RwLockToks.Instance. vstd.rwlock.RwLockToks.flag_exc.
 ) Bool
)
(declare-const %%global_location_label%%20 Bool)
(declare-const %%global_location_label%%21 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.rwlock.RwLockToks.Instance.)
   (pre%param_token_flag_exc! vstd.rwlock.RwLockToks.flag_exc.)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_start. K&. K& V&. V& Pred&. Pred&
     self! pre%param_token_flag_exc!
    ) (and
     (=>
      %%global_location_label%%20
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_exc.
          K&. K& V&. V& Pred&. Pred&
         ) $ BOOL (Poly%vstd.rwlock.RwLockToks.flag_exc. pre%param_token_flag_exc!)
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
         self!
     ))))
     (=>
      %%global_location_label%%21
      (= (%B (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_exc. K&. K&
          V&. V& Pred&. Pred&
         ) $ BOOL (Poly%vstd.rwlock.RwLockToks.flag_exc. pre%param_token_flag_exc!)
        )
       ) false
   ))))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_start. K&. K& V&. V& Pred&.
     Pred& self! pre%param_token_flag_exc!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__20.acquire_exc_start._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__20.acquire_exc_start._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_start. (Dcr Type Dcr Type
  Dcr Type vstd.rwlock.RwLockToks.Instance. vstd.rwlock.RwLockToks.flag_exc. vstd.rwlock.RwLockToks.flag_exc.
  vstd.rwlock.RwLockToks.pending_writer.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.rwlock.RwLockToks.Instance.)
   (pre%param_token_flag_exc! vstd.rwlock.RwLockToks.flag_exc.) (param_token_flag_exc!
    vstd.rwlock.RwLockToks.flag_exc.
   ) (param_token_0_pending_writer! vstd.rwlock.RwLockToks.pending_writer.)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_start. K&. K& V&. V& Pred&. Pred&
     self! pre%param_token_flag_exc! param_token_flag_exc! param_token_0_pending_writer!
    ) (and
     (has_type (Poly%vstd.rwlock.RwLockToks.pending_writer. param_token_0_pending_writer!)
      (TYPE%vstd.rwlock.RwLockToks.pending_writer. K&. K& V&. V& Pred&. Pred&)
     )
     (has_type (Poly%vstd.rwlock.RwLockToks.flag_exc. param_token_flag_exc!) (TYPE%vstd.rwlock.RwLockToks.flag_exc.
       K&. K& V&. V& Pred&. Pred&
     ))
     (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_exc.
         K&. K& V&. V& Pred&. Pred&
        ) $ BOOL (Poly%vstd.rwlock.RwLockToks.flag_exc. param_token_flag_exc!)
       )
      ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
        self!
     )))
     (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
         K&. K& V&. V& Pred&. Pred&
        ) $ TYPE%tuple%0. (Poly%vstd.rwlock.RwLockToks.pending_writer. param_token_0_pending_writer!)
       )
      ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
        self!
     )))
     (= (%Poly%tuple%0. (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
         K&. K& V&. V& Pred&. Pred&
        ) $ TYPE%tuple%0. (Poly%vstd.rwlock.RwLockToks.pending_writer. param_token_0_pending_writer!)
       )
      ) tuple%0./tuple%0
     )
     (= (%B (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_exc. K&. K&
         V&. V& Pred&. Pred&
        ) $ BOOL (Poly%vstd.rwlock.RwLockToks.flag_exc. param_token_flag_exc!)
       )
      ) true
   )))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_start. K&. K& V&. V& Pred&.
     Pred& self! pre%param_token_flag_exc! param_token_flag_exc! param_token_0_pending_writer!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__20.acquire_exc_start._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__20.acquire_exc_start._definition
)))

;; Function-Specs crate::vstd::rwlock::RwLockToks::Instance::acquire_exc_end
(declare-fun req%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_end. (Dcr Type Dcr Type
  Dcr Type vstd.rwlock.RwLockToks.Instance. vstd.rwlock.RwLockToks.flag_rc. vstd.rwlock.RwLockToks.pending_writer.
 ) Bool
)
(declare-const %%global_location_label%%22 Bool)
(declare-const %%global_location_label%%23 Bool)
(declare-const %%global_location_label%%24 Bool)
(declare-const %%global_location_label%%25 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.rwlock.RwLockToks.Instance.)
   (param_token_flag_rc! vstd.rwlock.RwLockToks.flag_rc.) (param_token_0_pending_writer!
    vstd.rwlock.RwLockToks.pending_writer.
   )
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_end. K&. K& V&. V& Pred&. Pred&
     self! param_token_flag_rc! param_token_0_pending_writer!
    ) (and
     (=>
      %%global_location_label%%22
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
          K&. K& V&. V& Pred&. Pred&
         ) $ NAT (Poly%vstd.rwlock.RwLockToks.flag_rc. param_token_flag_rc!)
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
         self!
     ))))
     (=>
      %%global_location_label%%23
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
          K&. K& V&. V& Pred&. Pred&
         ) $ TYPE%tuple%0. (Poly%vstd.rwlock.RwLockToks.pending_writer. param_token_0_pending_writer!)
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
         self!
     ))))
     (=>
      %%global_location_label%%24
      (= (%I (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&. K&
          V&. V& Pred&. Pred&
         ) $ NAT (Poly%vstd.rwlock.RwLockToks.flag_rc. param_token_flag_rc!)
        )
       ) 0
     ))
     (=>
      %%global_location_label%%25
      (= (%Poly%tuple%0. (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.pending_writer.
          K&. K& V&. V& Pred&. Pred&
         ) $ TYPE%tuple%0. (Poly%vstd.rwlock.RwLockToks.pending_writer. param_token_0_pending_writer!)
        )
       ) tuple%0./tuple%0
   ))))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_end. K&. K& V&. V& Pred&.
     Pred& self! param_token_flag_rc! param_token_0_pending_writer!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__20.acquire_exc_end._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__20.acquire_exc_end._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_end. (Dcr Type Dcr Type
  Dcr Type vstd.rwlock.RwLockToks.Instance. vstd.rwlock.RwLockToks.flag_rc. vstd.rwlock.RwLockToks.pending_writer.
  tuple%3.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.rwlock.RwLockToks.Instance.)
   (param_token_flag_rc! vstd.rwlock.RwLockToks.flag_rc.) (param_token_0_pending_writer!
    vstd.rwlock.RwLockToks.pending_writer.
   ) (tmp_tuple! tuple%3.)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_end. K&. K& V&. V& Pred&. Pred&
     self! param_token_flag_rc! param_token_0_pending_writer! tmp_tuple!
    ) (and
     (has_type (Poly%tuple%3. tmp_tuple!) (TYPE%tuple%3. (GHOST $) (TYPE%core!option.Option.
        V&. V&
       ) (TRACKED V&.) V& (TRACKED $) (TYPE%vstd.rwlock.RwLockToks.writer. K&. K& V&. V&
        Pred&. Pred&
     )))
     (let
      ((original_field_storage$ (%Poly%core!option.Option. (tuple%3./tuple%3/0 (%Poly%tuple%3.
           (Poly%tuple%3. tmp_tuple!)
      )))))
      (let
       ((param_token_2_storage$ (tuple%3./tuple%3/1 (%Poly%tuple%3. (Poly%tuple%3. tmp_tuple!)))))
       (let
        ((param_token_1_writer$ (%Poly%vstd.rwlock.RwLockToks.writer. (tuple%3./tuple%3/2 (%Poly%tuple%3.
             (Poly%tuple%3. tmp_tuple!)
        )))))
        (let
         ((original_field_storage$1 original_field_storage$))
         (let
          ((param_token_2_storage$1 param_token_2_storage$))
          (let
           ((param_token_1_writer$1 param_token_1_writer$))
           (and
            (and
             (and
              (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.writer.
                  K&. K& V&. V& Pred&. Pred&
                 ) $ TYPE%tuple%0. (Poly%vstd.rwlock.RwLockToks.writer. param_token_1_writer$1)
                )
               ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
                 self!
              )))
              (= (%Poly%tuple%0. (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.writer.
                  K&. K& V&. V& Pred&. Pred&
                 ) $ TYPE%tuple%0. (Poly%vstd.rwlock.RwLockToks.writer. param_token_1_writer$1)
                )
               ) tuple%0./tuple%0
             ))
             (let
              ((x$ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                   original_field_storage$1
              )))))
              (= param_token_2_storage$1 x$)
            ))
            (%B (let
              ((x$ (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                   original_field_storage$1
              )))))
              (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& (vstd.rwlock.RwLockToks.impl&%20.k.?
                K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance. self!)
               ) x$
   ))))))))))))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%20.acquire_exc_end. K&. K& V&. V& Pred&.
     Pred& self! param_token_flag_rc! param_token_0_pending_writer! tmp_tuple!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__20.acquire_exc_end._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__20.acquire_exc_end._definition
)))

;; Function-Specs crate::vstd::rwlock::RwLockToks::Instance::release_exc
(declare-fun req%vstd.rwlock.RwLockToks.impl&%20.release_exc. (Dcr Type Dcr Type Dcr
  Type vstd.rwlock.RwLockToks.Instance. Poly vstd.rwlock.RwLockToks.flag_exc. Poly
  vstd.rwlock.RwLockToks.writer.
 ) Bool
)
(declare-const %%global_location_label%%26 Bool)
(declare-const %%global_location_label%%27 Bool)
(declare-const %%global_location_label%%28 Bool)
(declare-const %%global_location_label%%29 Bool)
(declare-const %%global_location_label%%30 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.rwlock.RwLockToks.Instance.)
   (x! Poly) (pre%param_token_flag_exc! vstd.rwlock.RwLockToks.flag_exc.) (param_token_1_storage!
    Poly
   ) (param_token_0_writer! vstd.rwlock.RwLockToks.writer.)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%20.release_exc. K&. K& V&. V& Pred&. Pred& self!
     x! pre%param_token_flag_exc! param_token_1_storage! param_token_0_writer!
    ) (and
     (=>
      %%global_location_label%%26
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_exc.
          K&. K& V&. V& Pred&. Pred&
         ) $ BOOL (Poly%vstd.rwlock.RwLockToks.flag_exc. pre%param_token_flag_exc!)
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
         self!
     ))))
     (=>
      %%global_location_label%%27
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.writer.
          K&. K& V&. V& Pred&. Pred&
         ) $ TYPE%tuple%0. (Poly%vstd.rwlock.RwLockToks.writer. param_token_0_writer!)
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
         self!
     ))))
     (=>
      %%global_location_label%%28
      (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& (vstd.rwlock.RwLockToks.impl&%20.k.?
         K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance. self!)
        ) x!
     )))
     (=>
      %%global_location_label%%29
      (= (%Poly%tuple%0. (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.writer.
          K&. K& V&. V& Pred&. Pred&
         ) $ TYPE%tuple%0. (Poly%vstd.rwlock.RwLockToks.writer. param_token_0_writer!)
        )
       ) tuple%0./tuple%0
     ))
     (=>
      %%global_location_label%%30
      (= param_token_1_storage! x!)
   )))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%20.release_exc. K&. K& V&. V& Pred&. Pred&
     self! x! pre%param_token_flag_exc! param_token_1_storage! param_token_0_writer!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__20.release_exc._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__20.release_exc._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%20.release_exc. (Dcr Type Dcr Type Dcr
  Type vstd.rwlock.RwLockToks.Instance. Poly vstd.rwlock.RwLockToks.flag_exc. vstd.rwlock.RwLockToks.flag_exc.
  Poly vstd.rwlock.RwLockToks.writer.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.rwlock.RwLockToks.Instance.)
   (x! Poly) (pre%param_token_flag_exc! vstd.rwlock.RwLockToks.flag_exc.) (param_token_flag_exc!
    vstd.rwlock.RwLockToks.flag_exc.
   ) (param_token_1_storage! Poly) (param_token_0_writer! vstd.rwlock.RwLockToks.writer.)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%20.release_exc. K&. K& V&. V& Pred&. Pred& self!
     x! pre%param_token_flag_exc! param_token_flag_exc! param_token_1_storage! param_token_0_writer!
    ) (and
     (has_type (Poly%vstd.rwlock.RwLockToks.flag_exc. param_token_flag_exc!) (TYPE%vstd.rwlock.RwLockToks.flag_exc.
       K&. K& V&. V& Pred&. Pred&
     ))
     (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_exc.
         K&. K& V&. V& Pred&. Pred&
        ) $ BOOL (Poly%vstd.rwlock.RwLockToks.flag_exc. param_token_flag_exc!)
       )
      ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
        self!
     )))
     (= (%B (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_exc. K&. K&
         V&. V& Pred&. Pred&
        ) $ BOOL (Poly%vstd.rwlock.RwLockToks.flag_exc. param_token_flag_exc!)
       )
      ) false
   )))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%20.release_exc. K&. K& V&. V& Pred&. Pred&
     self! x! pre%param_token_flag_exc! param_token_flag_exc! param_token_1_storage! param_token_0_writer!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__20.release_exc._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__20.release_exc._definition
)))

;; Function-Specs crate::vstd::state_machine_internal::assert_guard_option
(declare-fun req%vstd.state_machine_internal.assert_guard_option. (Bool) Bool)
(assert
 (forall ((b! Bool)) (!
   (= (req%vstd.state_machine_internal.assert_guard_option. b!) b!)
   :pattern ((req%vstd.state_machine_internal.assert_guard_option. b!))
   :qid internal_req__vstd.state_machine_internal.assert_guard_option._definition
   :skolemid skolem_internal_req__vstd.state_machine_internal.assert_guard_option._definition
)))
(declare-fun ens%vstd.state_machine_internal.assert_guard_option. (Bool) Bool)
(assert
 (forall ((b! Bool)) (!
   (= (ens%vstd.state_machine_internal.assert_guard_option. b!) b!)
   :pattern ((ens%vstd.state_machine_internal.assert_guard_option. b!))
   :qid internal_ens__vstd.state_machine_internal.assert_guard_option._definition
   :skolemid skolem_internal_ens__vstd.state_machine_internal.assert_guard_option._definition
)))

;; Function-Def crate::vstd::rwlock::RwLockToks::State::read_guard_asserts
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/rwlock.rs:17:1: 236:3 (#1454)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const pre! vstd.rwlock.RwLockToks.State.)
 (declare-const x! Poly)
 (declare-const tmp%1 Bool)
 (declare-const update_tmp_k@ Poly)
 (declare-const update_tmp_pred@ core!marker.PhantomData.)
 (declare-const update_tmp_flag_exc@ Bool)
 (declare-const update_tmp_flag_rc@ Int)
 (declare-const update_tmp_storage@ core!option.Option.)
 (declare-const update_tmp_pending_writer@ core!option.Option.)
 (declare-const update_tmp_writer@ core!option.Option.)
 (declare-const update_tmp_pending_reader@ vstd.multiset.Multiset<tuple%0.>.)
 (declare-const update_tmp_reader@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.rwlock.RwLockToks.State. pre!) (TYPE%vstd.rwlock.RwLockToks.State.
    K&. K& V&. V& Pred&. Pred&
 )))
 (assert
  (has_type x! V&)
 )
 (assert
  (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
 )
 ;; unable to prove inherent safety condition: the value being guarded must be stored
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      pre!
    ))
    (=>
     (= update_tmp_k@ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
        (Poly%vstd.rwlock.RwLockToks.State. pre!)
     )))
     (=>
      (= update_tmp_pred@ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
         (Poly%vstd.rwlock.RwLockToks.State. pre!)
      )))
      (=>
       (= update_tmp_flag_exc@ (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
          (Poly%vstd.rwlock.RwLockToks.State. pre!)
       )))
       (=>
        (= update_tmp_flag_rc@ (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
           (Poly%vstd.rwlock.RwLockToks.State. pre!)
        )))
        (=>
         (= update_tmp_storage@ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
            (Poly%vstd.rwlock.RwLockToks.State. pre!)
         )))
         (=>
          (= update_tmp_pending_writer@ (vstd.rwlock.RwLockToks.State./State/pending_writer (
             %Poly%vstd.rwlock.RwLockToks.State. (Poly%vstd.rwlock.RwLockToks.State. pre!)
          )))
          (=>
           (= update_tmp_writer@ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
              (Poly%vstd.rwlock.RwLockToks.State. pre!)
           )))
           (=>
            (= update_tmp_pending_reader@ (vstd.rwlock.RwLockToks.State./State/pending_reader (
               %Poly%vstd.rwlock.RwLockToks.State. (Poly%vstd.rwlock.RwLockToks.State. pre!)
            )))
            (=>
             (= update_tmp_reader@ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                (Poly%vstd.rwlock.RwLockToks.State. pre!)
             )))
             (=>
              (>= (vstd.multiset.impl&%0.count.? V&. V& update_tmp_reader@ x!) 1)
              (=>
               (= tmp%1 (= update_tmp_storage@ (core!option.Option./Some x!)))
               (=>
                %%location_label%%0
                (req%vstd.state_machine_internal.assert_guard_option. tmp%1)
 )))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::rwlock::RwLockToks::Instance::read_guard
(declare-fun req%vstd.rwlock.RwLockToks.impl&%20.read_guard. (Dcr Type Dcr Type Dcr
  Type vstd.rwlock.RwLockToks.Instance. Poly vstd.rwlock.RwLockToks.reader.
 ) Bool
)
(declare-const %%global_location_label%%31 Bool)
(declare-const %%global_location_label%%32 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.rwlock.RwLockToks.Instance.)
   (x! Poly) (param_token_0_reader! vstd.rwlock.RwLockToks.reader.)
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%20.read_guard. K&. K& V&. V& Pred&. Pred& self!
     x! param_token_0_reader!
    ) (and
     (=>
      %%global_location_label%%31
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.reader.
          K&. K& V&. V& Pred&. Pred&
         ) V&. V& (Poly%vstd.rwlock.RwLockToks.reader. param_token_0_reader!)
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
         self!
     ))))
     (=>
      %%global_location_label%%32
      (= (vstd.tokens.ElementToken.element.? $ (TYPE%vstd.rwlock.RwLockToks.reader. K&. K&
         V&. V& Pred&. Pred&
        ) V&. V& (Poly%vstd.rwlock.RwLockToks.reader. param_token_0_reader!)
       ) x!
   ))))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%20.read_guard. K&. K& V&. V& Pred&. Pred&
     self! x! param_token_0_reader!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__20.read_guard._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__20.read_guard._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%20.read_guard. (Dcr Type Dcr Type Dcr
  Type vstd.rwlock.RwLockToks.Instance. Poly vstd.rwlock.RwLockToks.reader. Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.rwlock.RwLockToks.Instance.)
   (x! Poly) (param_token_0_reader! vstd.rwlock.RwLockToks.reader.) (param_token_1_storage!
    Poly
   )
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%20.read_guard. K&. K& V&. V& Pred&. Pred& self!
     x! param_token_0_reader! param_token_1_storage!
    ) (and
     (has_type param_token_1_storage! V&)
     (= param_token_1_storage! x!)
   ))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%20.read_guard. K&. K& V&. V& Pred&. Pred&
     self! x! param_token_0_reader! param_token_1_storage!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__20.read_guard._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__20.read_guard._definition
)))

;; Function-Def crate::vstd::rwlock::RwLockToks::State::read_match_asserts
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/rwlock.rs:17:1: 236:3 (#1454)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const pre! vstd.rwlock.RwLockToks.State.)
 (declare-const x! Poly)
 (declare-const y! Poly)
 (declare-const tmp%1 Bool)
 (declare-const update_tmp_k@ Poly)
 (declare-const update_tmp_pred@ core!marker.PhantomData.)
 (declare-const update_tmp_flag_exc@ Bool)
 (declare-const update_tmp_flag_rc@ Int)
 (declare-const update_tmp_storage@ core!option.Option.)
 (declare-const update_tmp_pending_writer@ core!option.Option.)
 (declare-const update_tmp_writer@ core!option.Option.)
 (declare-const update_tmp_pending_reader@ vstd.multiset.Multiset<tuple%0.>.)
 (declare-const update_tmp_reader@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.rwlock.RwLockToks.State. pre!) (TYPE%vstd.rwlock.RwLockToks.State.
    K&. K& V&. V& Pred&. Pred&
 )))
 (assert
  (has_type x! V&)
 )
 (assert
  (has_type y! V&)
 )
 (assert
  (tr_bound%vstd.invariant.InvariantPredicate. Pred&. Pred& K&. K& V&. V&)
 )
 ;; unable to prove assertion safety condition
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (vstd.rwlock.RwLockToks.impl&%23.invariant.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.State.
      pre!
    ))
    (=>
     (= update_tmp_k@ (vstd.rwlock.RwLockToks.State./State/k (%Poly%vstd.rwlock.RwLockToks.State.
        (Poly%vstd.rwlock.RwLockToks.State. pre!)
     )))
     (=>
      (= update_tmp_pred@ (vstd.rwlock.RwLockToks.State./State/pred (%Poly%vstd.rwlock.RwLockToks.State.
         (Poly%vstd.rwlock.RwLockToks.State. pre!)
      )))
      (=>
       (= update_tmp_flag_exc@ (vstd.rwlock.RwLockToks.State./State/flag_exc (%Poly%vstd.rwlock.RwLockToks.State.
          (Poly%vstd.rwlock.RwLockToks.State. pre!)
       )))
       (=>
        (= update_tmp_flag_rc@ (vstd.rwlock.RwLockToks.State./State/flag_rc (%Poly%vstd.rwlock.RwLockToks.State.
           (Poly%vstd.rwlock.RwLockToks.State. pre!)
        )))
        (=>
         (= update_tmp_storage@ (vstd.rwlock.RwLockToks.State./State/storage (%Poly%vstd.rwlock.RwLockToks.State.
            (Poly%vstd.rwlock.RwLockToks.State. pre!)
         )))
         (=>
          (= update_tmp_pending_writer@ (vstd.rwlock.RwLockToks.State./State/pending_writer (
             %Poly%vstd.rwlock.RwLockToks.State. (Poly%vstd.rwlock.RwLockToks.State. pre!)
          )))
          (=>
           (= update_tmp_writer@ (vstd.rwlock.RwLockToks.State./State/writer (%Poly%vstd.rwlock.RwLockToks.State.
              (Poly%vstd.rwlock.RwLockToks.State. pre!)
           )))
           (=>
            (= update_tmp_pending_reader@ (vstd.rwlock.RwLockToks.State./State/pending_reader (
               %Poly%vstd.rwlock.RwLockToks.State. (Poly%vstd.rwlock.RwLockToks.State. pre!)
            )))
            (=>
             (= update_tmp_reader@ (vstd.rwlock.RwLockToks.State./State/reader (%Poly%vstd.rwlock.RwLockToks.State.
                (Poly%vstd.rwlock.RwLockToks.State. pre!)
             )))
             (=>
              (>= (vstd.multiset.impl&%0.count.? V&. V& update_tmp_reader@ x!) 1)
              (=>
               (>= (vstd.multiset.impl&%0.count.? V&. V& update_tmp_reader@ y!) 1)
               (=>
                (= tmp%1 (= x! y!))
                (=>
                 %%location_label%%0
                 (req%vstd.state_machine_internal.assert_safety. tmp%1)
 ))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::rwlock::RwLockToks::Instance::read_match
(declare-fun req%vstd.rwlock.RwLockToks.impl&%20.read_match. (Dcr Type Dcr Type Dcr
  Type vstd.rwlock.RwLockToks.Instance. Poly Poly vstd.rwlock.RwLockToks.reader. vstd.rwlock.RwLockToks.reader.
 ) Bool
)
(declare-const %%global_location_label%%33 Bool)
(declare-const %%global_location_label%%34 Bool)
(declare-const %%global_location_label%%35 Bool)
(declare-const %%global_location_label%%36 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.rwlock.RwLockToks.Instance.)
   (x! Poly) (y! Poly) (param_token_0_reader! vstd.rwlock.RwLockToks.reader.) (param_token_1_reader!
    vstd.rwlock.RwLockToks.reader.
   )
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%20.read_match. K&. K& V&. V& Pred&. Pred& self!
     x! y! param_token_0_reader! param_token_1_reader!
    ) (and
     (=>
      %%global_location_label%%33
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.reader.
          K&. K& V&. V& Pred&. Pred&
         ) V&. V& (Poly%vstd.rwlock.RwLockToks.reader. param_token_0_reader!)
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
         self!
     ))))
     (=>
      %%global_location_label%%34
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.reader.
          K&. K& V&. V& Pred&. Pred&
         ) V&. V& (Poly%vstd.rwlock.RwLockToks.reader. param_token_1_reader!)
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
         self!
     ))))
     (=>
      %%global_location_label%%35
      (= (vstd.tokens.ElementToken.element.? $ (TYPE%vstd.rwlock.RwLockToks.reader. K&. K&
         V&. V& Pred&. Pred&
        ) V&. V& (Poly%vstd.rwlock.RwLockToks.reader. param_token_0_reader!)
       ) x!
     ))
     (=>
      %%global_location_label%%36
      (= (vstd.tokens.ElementToken.element.? $ (TYPE%vstd.rwlock.RwLockToks.reader. K&. K&
         V&. V& Pred&. Pred&
        ) V&. V& (Poly%vstd.rwlock.RwLockToks.reader. param_token_1_reader!)
       ) y!
   ))))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%20.read_match. K&. K& V&. V& Pred&. Pred&
     self! x! y! param_token_0_reader! param_token_1_reader!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__20.read_match._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__20.read_match._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%20.read_match. (Dcr Type Dcr Type Dcr
  Type vstd.rwlock.RwLockToks.Instance. Poly Poly vstd.rwlock.RwLockToks.reader. vstd.rwlock.RwLockToks.reader.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.rwlock.RwLockToks.Instance.)
   (x! Poly) (y! Poly) (param_token_0_reader! vstd.rwlock.RwLockToks.reader.) (param_token_1_reader!
    vstd.rwlock.RwLockToks.reader.
   )
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%20.read_match. K&. K& V&. V& Pred&. Pred& self!
     x! y! param_token_0_reader! param_token_1_reader!
    ) (= x! y!)
   )
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%20.read_match. K&. K& V&. V& Pred&. Pred&
     self! x! y! param_token_0_reader! param_token_1_reader!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__20.read_match._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__20.read_match._definition
)))

;; Function-Specs crate::vstd::rwlock::RwLockToks::Instance::release_shared
(declare-fun req%vstd.rwlock.RwLockToks.impl&%20.release_shared. (Dcr Type Dcr Type
  Dcr Type vstd.rwlock.RwLockToks.Instance. Poly vstd.rwlock.RwLockToks.flag_rc. vstd.rwlock.RwLockToks.reader.
 ) Bool
)
(declare-const %%global_location_label%%37 Bool)
(declare-const %%global_location_label%%38 Bool)
(declare-const %%global_location_label%%39 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.rwlock.RwLockToks.Instance.)
   (x! Poly) (pre%param_token_flag_rc! vstd.rwlock.RwLockToks.flag_rc.) (param_token_0_reader!
    vstd.rwlock.RwLockToks.reader.
   )
  ) (!
   (= (req%vstd.rwlock.RwLockToks.impl&%20.release_shared. K&. K& V&. V& Pred&. Pred&
     self! x! pre%param_token_flag_rc! param_token_0_reader!
    ) (and
     (=>
      %%global_location_label%%37
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
          K&. K& V&. V& Pred&. Pred&
         ) $ NAT (Poly%vstd.rwlock.RwLockToks.flag_rc. pre%param_token_flag_rc!)
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
         self!
     ))))
     (=>
      %%global_location_label%%38
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.reader.
          K&. K& V&. V& Pred&. Pred&
         ) V&. V& (Poly%vstd.rwlock.RwLockToks.reader. param_token_0_reader!)
        )
       ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
         self!
     ))))
     (=>
      %%global_location_label%%39
      (= (vstd.tokens.ElementToken.element.? $ (TYPE%vstd.rwlock.RwLockToks.reader. K&. K&
         V&. V& Pred&. Pred&
        ) V&. V& (Poly%vstd.rwlock.RwLockToks.reader. param_token_0_reader!)
       ) x!
   ))))
   :pattern ((req%vstd.rwlock.RwLockToks.impl&%20.release_shared. K&. K& V&. V& Pred&.
     Pred& self! x! pre%param_token_flag_rc! param_token_0_reader!
   ))
   :qid internal_req__vstd.rwlock.RwLockToks.impl&__20.release_shared._definition
   :skolemid skolem_internal_req__vstd.rwlock.RwLockToks.impl&__20.release_shared._definition
)))
(declare-fun ens%vstd.rwlock.RwLockToks.impl&%20.release_shared. (Dcr Type Dcr Type
  Dcr Type vstd.rwlock.RwLockToks.Instance. Poly vstd.rwlock.RwLockToks.flag_rc. vstd.rwlock.RwLockToks.flag_rc.
  vstd.rwlock.RwLockToks.reader.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.rwlock.RwLockToks.Instance.)
   (x! Poly) (pre%param_token_flag_rc! vstd.rwlock.RwLockToks.flag_rc.) (param_token_flag_rc!
    vstd.rwlock.RwLockToks.flag_rc.
   ) (param_token_0_reader! vstd.rwlock.RwLockToks.reader.)
  ) (!
   (= (ens%vstd.rwlock.RwLockToks.impl&%20.release_shared. K&. K& V&. V& Pred&. Pred&
     self! x! pre%param_token_flag_rc! param_token_flag_rc! param_token_0_reader!
    ) (and
     (has_type (Poly%vstd.rwlock.RwLockToks.flag_rc. param_token_flag_rc!) (TYPE%vstd.rwlock.RwLockToks.flag_rc.
       K&. K& V&. V& Pred&. Pred&
     ))
     (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ValueToken.instance_id.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
         K&. K& V&. V& Pred&. Pred&
        ) $ NAT (Poly%vstd.rwlock.RwLockToks.flag_rc. param_token_flag_rc!)
       )
      ) (vstd.rwlock.RwLockToks.impl&%20.id.? K&. K& V&. V& Pred&. Pred& (Poly%vstd.rwlock.RwLockToks.Instance.
        self!
     )))
     (>= (%I (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&. K&
         V&. V& Pred&. Pred&
        ) $ NAT (Poly%vstd.rwlock.RwLockToks.flag_rc. pre%param_token_flag_rc!)
       )
      ) 1
     )
     (= (%I (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc. K&. K&
         V&. V& Pred&. Pred&
        ) $ NAT (Poly%vstd.rwlock.RwLockToks.flag_rc. param_token_flag_rc!)
       )
      ) (nClip (Sub (%I (vstd.tokens.ValueToken.value.? $ (TYPE%vstd.rwlock.RwLockToks.flag_rc.
           K&. K& V&. V& Pred&. Pred&
          ) $ NAT (Poly%vstd.rwlock.RwLockToks.flag_rc. pre%param_token_flag_rc!)
         )
        ) 1
   )))))
   :pattern ((ens%vstd.rwlock.RwLockToks.impl&%20.release_shared. K&. K& V&. V& Pred&.
     Pred& self! x! pre%param_token_flag_rc! param_token_flag_rc! param_token_0_reader!
   ))
   :qid internal_ens__vstd.rwlock.RwLockToks.impl&__20.release_shared._definition
   :skolemid skolem_internal_ens__vstd.rwlock.RwLockToks.impl&__20.release_shared._definition
)))
