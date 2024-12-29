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

;; MODULE 'module vstd::shared::Dupe'

;; Fuel
(declare-const fuel%vstd.std_specs.option.impl&%0.is_Some. FuelId)
(declare-const fuel%vstd.std_specs.option.impl&%0.get_Some_0. FuelId)
(declare-const fuel%vstd.std_specs.option.is_some. FuelId)
(declare-const fuel%vstd.std_specs.option.is_none. FuelId)
(declare-const fuel%vstd.std_specs.option.spec_unwrap. FuelId)
(declare-const fuel%vstd.shared.Dupe.impl&%0.arrow_0. FuelId)
(declare-const fuel%vstd.shared.Dupe.impl&%0.arrow_dummy_to_use_type_params_0. FuelId)
(declare-const fuel%vstd.shared.Dupe.impl&%1.is_dummy_to_use_type_params. FuelId)
(declare-const fuel%vstd.shared.Dupe.impl&%1.get_dummy_to_use_type_params_0. FuelId)
(declare-const fuel%vstd.shared.Dupe.impl&%2.arrow_initialize_one_0. FuelId)
(declare-const fuel%vstd.shared.Dupe.impl&%2.arrow_dummy_to_use_type_params_0. FuelId)
(declare-const fuel%vstd.shared.Dupe.impl&%3.is_initialize_one. FuelId)
(declare-const fuel%vstd.shared.Dupe.impl&%3.get_initialize_one_0. FuelId)
(declare-const fuel%vstd.shared.Dupe.impl&%3.is_dummy_to_use_type_params. FuelId)
(declare-const fuel%vstd.shared.Dupe.impl&%3.get_dummy_to_use_type_params_0. FuelId)
(declare-const fuel%vstd.shared.Dupe.impl&%7.initialize_one. FuelId)
(declare-const fuel%vstd.shared.Dupe.impl&%7.initialize_one_enabled. FuelId)
(declare-const fuel%vstd.shared.Dupe.impl&%7.next_by. FuelId)
(declare-const fuel%vstd.shared.Dupe.impl&%7.next. FuelId)
(declare-const fuel%vstd.shared.Dupe.impl&%7.next_strong_by. FuelId)
(declare-const fuel%vstd.shared.Dupe.impl&%7.next_strong. FuelId)
(declare-const fuel%vstd.shared.Dupe.impl&%7.init_by. FuelId)
(declare-const fuel%vstd.shared.Dupe.impl&%7.init. FuelId)
(declare-const fuel%vstd.shared.Dupe.impl&%7.invariant. FuelId)
(declare-const fuel%vstd.shared.Dupe.impl&%7.agreement. FuelId)
(assert
 (distinct fuel%vstd.std_specs.option.impl&%0.is_Some. fuel%vstd.std_specs.option.impl&%0.get_Some_0.
  fuel%vstd.std_specs.option.is_some. fuel%vstd.std_specs.option.is_none. fuel%vstd.std_specs.option.spec_unwrap.
  fuel%vstd.shared.Dupe.impl&%0.arrow_0. fuel%vstd.shared.Dupe.impl&%0.arrow_dummy_to_use_type_params_0.
  fuel%vstd.shared.Dupe.impl&%1.is_dummy_to_use_type_params. fuel%vstd.shared.Dupe.impl&%1.get_dummy_to_use_type_params_0.
  fuel%vstd.shared.Dupe.impl&%2.arrow_initialize_one_0. fuel%vstd.shared.Dupe.impl&%2.arrow_dummy_to_use_type_params_0.
  fuel%vstd.shared.Dupe.impl&%3.is_initialize_one. fuel%vstd.shared.Dupe.impl&%3.get_initialize_one_0.
  fuel%vstd.shared.Dupe.impl&%3.is_dummy_to_use_type_params. fuel%vstd.shared.Dupe.impl&%3.get_dummy_to_use_type_params_0.
  fuel%vstd.shared.Dupe.impl&%7.initialize_one. fuel%vstd.shared.Dupe.impl&%7.initialize_one_enabled.
  fuel%vstd.shared.Dupe.impl&%7.next_by. fuel%vstd.shared.Dupe.impl&%7.next. fuel%vstd.shared.Dupe.impl&%7.next_strong_by.
  fuel%vstd.shared.Dupe.impl&%7.next_strong. fuel%vstd.shared.Dupe.impl&%7.init_by.
  fuel%vstd.shared.Dupe.impl&%7.init. fuel%vstd.shared.Dupe.impl&%7.invariant. fuel%vstd.shared.Dupe.impl&%7.agreement.
))

;; Datatypes
(declare-datatypes ((core!option.Option. 0) (vstd.shared.Dupe.State. 0) (vstd.shared.Dupe.Step.
   0
  ) (vstd.shared.Dupe.Config. 0) (vstd.shared.Dupe.Instance. 0) (vstd.tokens.InstanceId.
   0
  ) (tuple%0. 0) (tuple%1. 0)
 ) (((core!option.Option./None) (core!option.Option./Some (core!option.Option./Some/?0
     Poly
   ))
  ) ((vstd.shared.Dupe.State./State (vstd.shared.Dupe.State./State/?storage core!option.Option.)
    (vstd.shared.Dupe.State./State/?val Poly)
   )
  ) ((vstd.shared.Dupe.Step./dummy_to_use_type_params (vstd.shared.Dupe.Step./dummy_to_use_type_params/?0
     vstd.shared.Dupe.State.
   ))
  ) ((vstd.shared.Dupe.Config./initialize_one (vstd.shared.Dupe.Config./initialize_one/?0
     Poly
    )
   ) (vstd.shared.Dupe.Config./dummy_to_use_type_params (vstd.shared.Dupe.Config./dummy_to_use_type_params/?0
     vstd.shared.Dupe.State.
   ))
  ) ((vstd.shared.Dupe.Instance./Instance (vstd.shared.Dupe.Instance./Instance/?send_sync
     Poly
    ) (vstd.shared.Dupe.Instance./Instance/?state core!option.Option.) (vstd.shared.Dupe.Instance./Instance/?location
     Int
   ))
  ) ((vstd.tokens.InstanceId./InstanceId (vstd.tokens.InstanceId./InstanceId/?0 Int)))
  ((tuple%0./tuple%0)) ((tuple%1./tuple%1 (tuple%1./tuple%1/?0 Poly)))
))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun vstd.shared.Dupe.State./State/storage (vstd.shared.Dupe.State.) core!option.Option.)
(declare-fun vstd.shared.Dupe.State./State/val (vstd.shared.Dupe.State.) Poly)
(declare-fun vstd.shared.Dupe.Step./dummy_to_use_type_params/0 (vstd.shared.Dupe.Step.)
 vstd.shared.Dupe.State.
)
(declare-fun vstd.shared.Dupe.Config./initialize_one/0 (vstd.shared.Dupe.Config.)
 Poly
)
(declare-fun vstd.shared.Dupe.Config./dummy_to_use_type_params/0 (vstd.shared.Dupe.Config.)
 vstd.shared.Dupe.State.
)
(declare-fun vstd.shared.Dupe.Instance./Instance/send_sync (vstd.shared.Dupe.Instance.)
 Poly
)
(declare-fun vstd.shared.Dupe.Instance./Instance/state (vstd.shared.Dupe.Instance.)
 core!option.Option.
)
(declare-fun vstd.shared.Dupe.Instance./Instance/location (vstd.shared.Dupe.Instance.)
 Int
)
(declare-fun vstd.tokens.InstanceId./InstanceId/0 (vstd.tokens.InstanceId.) Int)
(declare-fun tuple%1./tuple%1/0 (tuple%1.) Poly)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-fun TYPE%vstd.shared.Dupe.State. (Dcr Type) Type)
(declare-fun TYPE%vstd.shared.Dupe.Step. (Dcr Type) Type)
(declare-fun TYPE%vstd.shared.Dupe.Config. (Dcr Type) Type)
(declare-fun TYPE%vstd.shared.Dupe.Instance. (Dcr Type) Type)
(declare-fun TYPE%vstd.state_machine_internal.SyncSendIfSyncSend. (Dcr Type) Type)
(declare-const TYPE%vstd.tokens.InstanceId. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%1. (Dcr Type) Type)
(declare-fun FNDEF%core!clone.Clone.clone. (Dcr Type) Type)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
(declare-fun Poly%vstd.shared.Dupe.State. (vstd.shared.Dupe.State.) Poly)
(declare-fun %Poly%vstd.shared.Dupe.State. (Poly) vstd.shared.Dupe.State.)
(declare-fun Poly%vstd.shared.Dupe.Step. (vstd.shared.Dupe.Step.) Poly)
(declare-fun %Poly%vstd.shared.Dupe.Step. (Poly) vstd.shared.Dupe.Step.)
(declare-fun Poly%vstd.shared.Dupe.Config. (vstd.shared.Dupe.Config.) Poly)
(declare-fun %Poly%vstd.shared.Dupe.Config. (Poly) vstd.shared.Dupe.Config.)
(declare-fun Poly%vstd.shared.Dupe.Instance. (vstd.shared.Dupe.Instance.) Poly)
(declare-fun %Poly%vstd.shared.Dupe.Instance. (Poly) vstd.shared.Dupe.Instance.)
(declare-fun Poly%vstd.tokens.InstanceId. (vstd.tokens.InstanceId.) Poly)
(declare-fun %Poly%vstd.tokens.InstanceId. (Poly) vstd.tokens.InstanceId.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%1. (tuple%1.) Poly)
(declare-fun %Poly%tuple%1. (Poly) tuple%1.)
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
 (forall ((x vstd.shared.Dupe.State.)) (!
   (= x (%Poly%vstd.shared.Dupe.State. (Poly%vstd.shared.Dupe.State. x)))
   :pattern ((Poly%vstd.shared.Dupe.State. x))
   :qid internal_crate__vstd__shared__Dupe__State_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__shared__Dupe__State_box_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.shared.Dupe.State. T&. T&))
    (= x (Poly%vstd.shared.Dupe.State. (%Poly%vstd.shared.Dupe.State. x)))
   )
   :pattern ((has_type x (TYPE%vstd.shared.Dupe.State. T&. T&)))
   :qid internal_crate__vstd__shared__Dupe__State_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__shared__Dupe__State_unbox_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (_storage! core!option.Option.) (_val! Poly)) (!
   (=>
    (and
     (has_type (Poly%core!option.Option. _storage!) (TYPE%core!option.Option. T&. T&))
     (has_type _val! T&)
    )
    (has_type (Poly%vstd.shared.Dupe.State. (vstd.shared.Dupe.State./State _storage! _val!))
     (TYPE%vstd.shared.Dupe.State. T&. T&)
   ))
   :pattern ((has_type (Poly%vstd.shared.Dupe.State. (vstd.shared.Dupe.State./State _storage!
       _val!
      )
     ) (TYPE%vstd.shared.Dupe.State. T&. T&)
   ))
   :qid internal_vstd.shared.Dupe.State./State_constructor_definition
   :skolemid skolem_internal_vstd.shared.Dupe.State./State_constructor_definition
)))
(assert
 (forall ((x vstd.shared.Dupe.State.)) (!
   (= (vstd.shared.Dupe.State./State/storage x) (vstd.shared.Dupe.State./State/?storage
     x
   ))
   :pattern ((vstd.shared.Dupe.State./State/storage x))
   :qid internal_vstd.shared.Dupe.State./State/storage_accessor_definition
   :skolemid skolem_internal_vstd.shared.Dupe.State./State/storage_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.shared.Dupe.State. T&. T&))
    (has_type (Poly%core!option.Option. (vstd.shared.Dupe.State./State/storage (%Poly%vstd.shared.Dupe.State.
        x
      ))
     ) (TYPE%core!option.Option. T&. T&)
   ))
   :pattern ((vstd.shared.Dupe.State./State/storage (%Poly%vstd.shared.Dupe.State. x))
    (has_type x (TYPE%vstd.shared.Dupe.State. T&. T&))
   )
   :qid internal_vstd.shared.Dupe.State./State/storage_invariant_definition
   :skolemid skolem_internal_vstd.shared.Dupe.State./State/storage_invariant_definition
)))
(assert
 (forall ((x vstd.shared.Dupe.State.)) (!
   (= (vstd.shared.Dupe.State./State/val x) (vstd.shared.Dupe.State./State/?val x))
   :pattern ((vstd.shared.Dupe.State./State/val x))
   :qid internal_vstd.shared.Dupe.State./State/val_accessor_definition
   :skolemid skolem_internal_vstd.shared.Dupe.State./State/val_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.shared.Dupe.State. T&. T&))
    (has_type (vstd.shared.Dupe.State./State/val (%Poly%vstd.shared.Dupe.State. x)) T&)
   )
   :pattern ((vstd.shared.Dupe.State./State/val (%Poly%vstd.shared.Dupe.State. x)) (has_type
     x (TYPE%vstd.shared.Dupe.State. T&. T&)
   ))
   :qid internal_vstd.shared.Dupe.State./State/val_invariant_definition
   :skolemid skolem_internal_vstd.shared.Dupe.State./State/val_invariant_definition
)))
(assert
 (forall ((x vstd.shared.Dupe.State.)) (!
   (=>
    (is-vstd.shared.Dupe.State./State x)
    (height_lt (height (Poly%core!option.Option. (vstd.shared.Dupe.State./State/storage x)))
     (height (Poly%vstd.shared.Dupe.State. x))
   ))
   :pattern ((height (Poly%core!option.Option. (vstd.shared.Dupe.State./State/storage x))))
   :qid prelude_datatype_height_vstd.shared.Dupe.State./State/storage
   :skolemid skolem_prelude_datatype_height_vstd.shared.Dupe.State./State/storage
)))
(assert
 (forall ((x vstd.shared.Dupe.State.)) (!
   (=>
    (is-vstd.shared.Dupe.State./State x)
    (height_lt (height (vstd.shared.Dupe.State./State/val x)) (height (Poly%vstd.shared.Dupe.State.
       x
   ))))
   :pattern ((height (vstd.shared.Dupe.State./State/val x)))
   :qid prelude_datatype_height_vstd.shared.Dupe.State./State/val
   :skolemid skolem_prelude_datatype_height_vstd.shared.Dupe.State./State/val
)))
(assert
 (forall ((x vstd.shared.Dupe.Step.)) (!
   (= x (%Poly%vstd.shared.Dupe.Step. (Poly%vstd.shared.Dupe.Step. x)))
   :pattern ((Poly%vstd.shared.Dupe.Step. x))
   :qid internal_crate__vstd__shared__Dupe__Step_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__shared__Dupe__Step_box_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.shared.Dupe.Step. T&. T&))
    (= x (Poly%vstd.shared.Dupe.Step. (%Poly%vstd.shared.Dupe.Step. x)))
   )
   :pattern ((has_type x (TYPE%vstd.shared.Dupe.Step. T&. T&)))
   :qid internal_crate__vstd__shared__Dupe__Step_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__shared__Dupe__Step_unbox_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (_0! vstd.shared.Dupe.State.)) (!
   (=>
    (has_type (Poly%vstd.shared.Dupe.State. _0!) (TYPE%vstd.shared.Dupe.State. T&. T&))
    (has_type (Poly%vstd.shared.Dupe.Step. (vstd.shared.Dupe.Step./dummy_to_use_type_params
       _0!
      )
     ) (TYPE%vstd.shared.Dupe.Step. T&. T&)
   ))
   :pattern ((has_type (Poly%vstd.shared.Dupe.Step. (vstd.shared.Dupe.Step./dummy_to_use_type_params
       _0!
      )
     ) (TYPE%vstd.shared.Dupe.Step. T&. T&)
   ))
   :qid internal_vstd.shared.Dupe.Step./dummy_to_use_type_params_constructor_definition
   :skolemid skolem_internal_vstd.shared.Dupe.Step./dummy_to_use_type_params_constructor_definition
)))
(assert
 (forall ((x vstd.shared.Dupe.Step.)) (!
   (= (vstd.shared.Dupe.Step./dummy_to_use_type_params/0 x) (vstd.shared.Dupe.Step./dummy_to_use_type_params/?0
     x
   ))
   :pattern ((vstd.shared.Dupe.Step./dummy_to_use_type_params/0 x))
   :qid internal_vstd.shared.Dupe.Step./dummy_to_use_type_params/0_accessor_definition
   :skolemid skolem_internal_vstd.shared.Dupe.Step./dummy_to_use_type_params/0_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.shared.Dupe.Step. T&. T&))
    (has_type (Poly%vstd.shared.Dupe.State. (vstd.shared.Dupe.Step./dummy_to_use_type_params/0
       (%Poly%vstd.shared.Dupe.Step. x)
      )
     ) (TYPE%vstd.shared.Dupe.State. T&. T&)
   ))
   :pattern ((vstd.shared.Dupe.Step./dummy_to_use_type_params/0 (%Poly%vstd.shared.Dupe.Step.
      x
     )
    ) (has_type x (TYPE%vstd.shared.Dupe.Step. T&. T&))
   )
   :qid internal_vstd.shared.Dupe.Step./dummy_to_use_type_params/0_invariant_definition
   :skolemid skolem_internal_vstd.shared.Dupe.Step./dummy_to_use_type_params/0_invariant_definition
)))
(assert
 (forall ((x vstd.shared.Dupe.Step.)) (!
   (=>
    (is-vstd.shared.Dupe.Step./dummy_to_use_type_params x)
    (height_lt (height (Poly%vstd.shared.Dupe.State. (vstd.shared.Dupe.Step./dummy_to_use_type_params/0
        x
      ))
     ) (height (Poly%vstd.shared.Dupe.Step. x))
   ))
   :pattern ((height (Poly%vstd.shared.Dupe.State. (vstd.shared.Dupe.Step./dummy_to_use_type_params/0
       x
   ))))
   :qid prelude_datatype_height_vstd.shared.Dupe.Step./dummy_to_use_type_params/0
   :skolemid skolem_prelude_datatype_height_vstd.shared.Dupe.Step./dummy_to_use_type_params/0
)))
(assert
 (forall ((x vstd.shared.Dupe.Config.)) (!
   (= x (%Poly%vstd.shared.Dupe.Config. (Poly%vstd.shared.Dupe.Config. x)))
   :pattern ((Poly%vstd.shared.Dupe.Config. x))
   :qid internal_crate__vstd__shared__Dupe__Config_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__shared__Dupe__Config_box_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.shared.Dupe.Config. T&. T&))
    (= x (Poly%vstd.shared.Dupe.Config. (%Poly%vstd.shared.Dupe.Config. x)))
   )
   :pattern ((has_type x (TYPE%vstd.shared.Dupe.Config. T&. T&)))
   :qid internal_crate__vstd__shared__Dupe__Config_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__shared__Dupe__Config_unbox_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (_0! Poly)) (!
   (=>
    (has_type _0! T&)
    (has_type (Poly%vstd.shared.Dupe.Config. (vstd.shared.Dupe.Config./initialize_one _0!))
     (TYPE%vstd.shared.Dupe.Config. T&. T&)
   ))
   :pattern ((has_type (Poly%vstd.shared.Dupe.Config. (vstd.shared.Dupe.Config./initialize_one
       _0!
      )
     ) (TYPE%vstd.shared.Dupe.Config. T&. T&)
   ))
   :qid internal_vstd.shared.Dupe.Config./initialize_one_constructor_definition
   :skolemid skolem_internal_vstd.shared.Dupe.Config./initialize_one_constructor_definition
)))
(assert
 (forall ((x vstd.shared.Dupe.Config.)) (!
   (= (vstd.shared.Dupe.Config./initialize_one/0 x) (vstd.shared.Dupe.Config./initialize_one/?0
     x
   ))
   :pattern ((vstd.shared.Dupe.Config./initialize_one/0 x))
   :qid internal_vstd.shared.Dupe.Config./initialize_one/0_accessor_definition
   :skolemid skolem_internal_vstd.shared.Dupe.Config./initialize_one/0_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.shared.Dupe.Config. T&. T&))
    (has_type (vstd.shared.Dupe.Config./initialize_one/0 (%Poly%vstd.shared.Dupe.Config.
       x
      )
     ) T&
   ))
   :pattern ((vstd.shared.Dupe.Config./initialize_one/0 (%Poly%vstd.shared.Dupe.Config.
      x
     )
    ) (has_type x (TYPE%vstd.shared.Dupe.Config. T&. T&))
   )
   :qid internal_vstd.shared.Dupe.Config./initialize_one/0_invariant_definition
   :skolemid skolem_internal_vstd.shared.Dupe.Config./initialize_one/0_invariant_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (_0! vstd.shared.Dupe.State.)) (!
   (=>
    (has_type (Poly%vstd.shared.Dupe.State. _0!) (TYPE%vstd.shared.Dupe.State. T&. T&))
    (has_type (Poly%vstd.shared.Dupe.Config. (vstd.shared.Dupe.Config./dummy_to_use_type_params
       _0!
      )
     ) (TYPE%vstd.shared.Dupe.Config. T&. T&)
   ))
   :pattern ((has_type (Poly%vstd.shared.Dupe.Config. (vstd.shared.Dupe.Config./dummy_to_use_type_params
       _0!
      )
     ) (TYPE%vstd.shared.Dupe.Config. T&. T&)
   ))
   :qid internal_vstd.shared.Dupe.Config./dummy_to_use_type_params_constructor_definition
   :skolemid skolem_internal_vstd.shared.Dupe.Config./dummy_to_use_type_params_constructor_definition
)))
(assert
 (forall ((x vstd.shared.Dupe.Config.)) (!
   (= (vstd.shared.Dupe.Config./dummy_to_use_type_params/0 x) (vstd.shared.Dupe.Config./dummy_to_use_type_params/?0
     x
   ))
   :pattern ((vstd.shared.Dupe.Config./dummy_to_use_type_params/0 x))
   :qid internal_vstd.shared.Dupe.Config./dummy_to_use_type_params/0_accessor_definition
   :skolemid skolem_internal_vstd.shared.Dupe.Config./dummy_to_use_type_params/0_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.shared.Dupe.Config. T&. T&))
    (has_type (Poly%vstd.shared.Dupe.State. (vstd.shared.Dupe.Config./dummy_to_use_type_params/0
       (%Poly%vstd.shared.Dupe.Config. x)
      )
     ) (TYPE%vstd.shared.Dupe.State. T&. T&)
   ))
   :pattern ((vstd.shared.Dupe.Config./dummy_to_use_type_params/0 (%Poly%vstd.shared.Dupe.Config.
      x
     )
    ) (has_type x (TYPE%vstd.shared.Dupe.Config. T&. T&))
   )
   :qid internal_vstd.shared.Dupe.Config./dummy_to_use_type_params/0_invariant_definition
   :skolemid skolem_internal_vstd.shared.Dupe.Config./dummy_to_use_type_params/0_invariant_definition
)))
(assert
 (forall ((x vstd.shared.Dupe.Config.)) (!
   (=>
    (is-vstd.shared.Dupe.Config./initialize_one x)
    (height_lt (height (vstd.shared.Dupe.Config./initialize_one/0 x)) (height (Poly%vstd.shared.Dupe.Config.
       x
   ))))
   :pattern ((height (vstd.shared.Dupe.Config./initialize_one/0 x)))
   :qid prelude_datatype_height_vstd.shared.Dupe.Config./initialize_one/0
   :skolemid skolem_prelude_datatype_height_vstd.shared.Dupe.Config./initialize_one/0
)))
(assert
 (forall ((x vstd.shared.Dupe.Config.)) (!
   (=>
    (is-vstd.shared.Dupe.Config./dummy_to_use_type_params x)
    (height_lt (height (Poly%vstd.shared.Dupe.State. (vstd.shared.Dupe.Config./dummy_to_use_type_params/0
        x
      ))
     ) (height (Poly%vstd.shared.Dupe.Config. x))
   ))
   :pattern ((height (Poly%vstd.shared.Dupe.State. (vstd.shared.Dupe.Config./dummy_to_use_type_params/0
       x
   ))))
   :qid prelude_datatype_height_vstd.shared.Dupe.Config./dummy_to_use_type_params/0
   :skolemid skolem_prelude_datatype_height_vstd.shared.Dupe.Config./dummy_to_use_type_params/0
)))
(assert
 (forall ((x vstd.shared.Dupe.Instance.)) (!
   (= x (%Poly%vstd.shared.Dupe.Instance. (Poly%vstd.shared.Dupe.Instance. x)))
   :pattern ((Poly%vstd.shared.Dupe.Instance. x))
   :qid internal_crate__vstd__shared__Dupe__Instance_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__shared__Dupe__Instance_box_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.shared.Dupe.Instance. T&. T&))
    (= x (Poly%vstd.shared.Dupe.Instance. (%Poly%vstd.shared.Dupe.Instance. x)))
   )
   :pattern ((has_type x (TYPE%vstd.shared.Dupe.Instance. T&. T&)))
   :qid internal_crate__vstd__shared__Dupe__Instance_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__shared__Dupe__Instance_unbox_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (_send_sync! Poly) (_state! core!option.Option.) (_location!
    Int
   )
  ) (!
   (=>
    (and
     (has_type _send_sync! (TYPE%vstd.state_machine_internal.SyncSendIfSyncSend. T&. T&))
     (has_type (Poly%core!option.Option. _state!) (TYPE%core!option.Option. (GHOST $) (TYPE%vstd.shared.Dupe.State.
        T&. T&
    ))))
    (has_type (Poly%vstd.shared.Dupe.Instance. (vstd.shared.Dupe.Instance./Instance _send_sync!
       _state! _location!
      )
     ) (TYPE%vstd.shared.Dupe.Instance. T&. T&)
   ))
   :pattern ((has_type (Poly%vstd.shared.Dupe.Instance. (vstd.shared.Dupe.Instance./Instance
       _send_sync! _state! _location!
      )
     ) (TYPE%vstd.shared.Dupe.Instance. T&. T&)
   ))
   :qid internal_vstd.shared.Dupe.Instance./Instance_constructor_definition
   :skolemid skolem_internal_vstd.shared.Dupe.Instance./Instance_constructor_definition
)))
(assert
 (forall ((x vstd.shared.Dupe.Instance.)) (!
   (= (vstd.shared.Dupe.Instance./Instance/send_sync x) (vstd.shared.Dupe.Instance./Instance/?send_sync
     x
   ))
   :pattern ((vstd.shared.Dupe.Instance./Instance/send_sync x))
   :qid internal_vstd.shared.Dupe.Instance./Instance/send_sync_accessor_definition
   :skolemid skolem_internal_vstd.shared.Dupe.Instance./Instance/send_sync_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.shared.Dupe.Instance. T&. T&))
    (has_type (vstd.shared.Dupe.Instance./Instance/send_sync (%Poly%vstd.shared.Dupe.Instance.
       x
      )
     ) (TYPE%vstd.state_machine_internal.SyncSendIfSyncSend. T&. T&)
   ))
   :pattern ((vstd.shared.Dupe.Instance./Instance/send_sync (%Poly%vstd.shared.Dupe.Instance.
      x
     )
    ) (has_type x (TYPE%vstd.shared.Dupe.Instance. T&. T&))
   )
   :qid internal_vstd.shared.Dupe.Instance./Instance/send_sync_invariant_definition
   :skolemid skolem_internal_vstd.shared.Dupe.Instance./Instance/send_sync_invariant_definition
)))
(assert
 (forall ((x vstd.shared.Dupe.Instance.)) (!
   (= (vstd.shared.Dupe.Instance./Instance/state x) (vstd.shared.Dupe.Instance./Instance/?state
     x
   ))
   :pattern ((vstd.shared.Dupe.Instance./Instance/state x))
   :qid internal_vstd.shared.Dupe.Instance./Instance/state_accessor_definition
   :skolemid skolem_internal_vstd.shared.Dupe.Instance./Instance/state_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.shared.Dupe.Instance. T&. T&))
    (has_type (Poly%core!option.Option. (vstd.shared.Dupe.Instance./Instance/state (%Poly%vstd.shared.Dupe.Instance.
        x
      ))
     ) (TYPE%core!option.Option. (GHOST $) (TYPE%vstd.shared.Dupe.State. T&. T&))
   ))
   :pattern ((vstd.shared.Dupe.Instance./Instance/state (%Poly%vstd.shared.Dupe.Instance.
      x
     )
    ) (has_type x (TYPE%vstd.shared.Dupe.Instance. T&. T&))
   )
   :qid internal_vstd.shared.Dupe.Instance./Instance/state_invariant_definition
   :skolemid skolem_internal_vstd.shared.Dupe.Instance./Instance/state_invariant_definition
)))
(assert
 (forall ((x vstd.shared.Dupe.Instance.)) (!
   (= (vstd.shared.Dupe.Instance./Instance/location x) (vstd.shared.Dupe.Instance./Instance/?location
     x
   ))
   :pattern ((vstd.shared.Dupe.Instance./Instance/location x))
   :qid internal_vstd.shared.Dupe.Instance./Instance/location_accessor_definition
   :skolemid skolem_internal_vstd.shared.Dupe.Instance./Instance/location_accessor_definition
)))
(assert
 (forall ((x vstd.shared.Dupe.Instance.)) (!
   (=>
    (is-vstd.shared.Dupe.Instance./Instance x)
    (height_lt (height (vstd.shared.Dupe.Instance./Instance/send_sync x)) (height (Poly%vstd.shared.Dupe.Instance.
       x
   ))))
   :pattern ((height (vstd.shared.Dupe.Instance./Instance/send_sync x)))
   :qid prelude_datatype_height_vstd.shared.Dupe.Instance./Instance/send_sync
   :skolemid skolem_prelude_datatype_height_vstd.shared.Dupe.Instance./Instance/send_sync
)))
(assert
 (forall ((x vstd.shared.Dupe.Instance.)) (!
   (=>
    (is-vstd.shared.Dupe.Instance./Instance x)
    (height_lt (height (Poly%core!option.Option. (vstd.shared.Dupe.Instance./Instance/state
        x
      ))
     ) (height (Poly%vstd.shared.Dupe.Instance. x))
   ))
   :pattern ((height (Poly%core!option.Option. (vstd.shared.Dupe.Instance./Instance/state
       x
   ))))
   :qid prelude_datatype_height_vstd.shared.Dupe.Instance./Instance/state
   :skolemid skolem_prelude_datatype_height_vstd.shared.Dupe.Instance./Instance/state
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

;; Traits
(declare-fun tr_bound%core!clone.Clone. (Dcr Type) Bool)
(declare-fun tr_bound%vstd.std_specs.option.OptionAdditionalFns. (Dcr Type Dcr Type)
 Bool
)
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

;; Function-Decl crate::vstd::shared::Dupe::State::initialize_one
(declare-fun vstd.shared.Dupe.impl&%7.initialize_one.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::shared::Dupe::State::init_by
(declare-fun vstd.shared.Dupe.impl&%7.init_by.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::shared::Dupe::State::init
(declare-fun vstd.shared.Dupe.impl&%7.init.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::std_specs::option::is_none
(declare-fun vstd.std_specs.option.is_none.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::std_specs::option::is_some
(declare-fun vstd.std_specs.option.is_some.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::std_specs::option::spec_unwrap
(declare-fun vstd.std_specs.option.spec_unwrap.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::shared::Dupe::Instance::id
(declare-fun vstd.shared.Dupe.impl&%4.id.? (Dcr Type Poly) vstd.tokens.InstanceId.)

;; Function-Decl crate::vstd::shared::Dupe::Instance::val
(declare-fun vstd.shared.Dupe.impl&%4.val.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::shared::Dupe::State::agreement
(declare-fun vstd.shared.Dupe.impl&%7.agreement.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::shared::Dupe::Step::arrow_0
(declare-fun vstd.shared.Dupe.impl&%0.arrow_0.? (Dcr Type Poly) vstd.shared.Dupe.State.)

;; Function-Decl crate::vstd::shared::Dupe::Step::arrow_dummy_to_use_type_params_0
(declare-fun vstd.shared.Dupe.impl&%0.arrow_dummy_to_use_type_params_0.? (Dcr Type
  Poly
 ) vstd.shared.Dupe.State.
)

;; Function-Decl crate::vstd::shared::Dupe::Step::is_dummy_to_use_type_params
(declare-fun vstd.shared.Dupe.impl&%1.is_dummy_to_use_type_params.? (Dcr Type Poly)
 Bool
)

;; Function-Decl crate::vstd::shared::Dupe::Step::get_dummy_to_use_type_params_0
(declare-fun vstd.shared.Dupe.impl&%1.get_dummy_to_use_type_params_0.? (Dcr Type Poly)
 vstd.shared.Dupe.State.
)

;; Function-Decl crate::vstd::shared::Dupe::Config::arrow_initialize_one_0
(declare-fun vstd.shared.Dupe.impl&%2.arrow_initialize_one_0.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::shared::Dupe::Config::arrow_dummy_to_use_type_params_0
(declare-fun vstd.shared.Dupe.impl&%2.arrow_dummy_to_use_type_params_0.? (Dcr Type
  Poly
 ) vstd.shared.Dupe.State.
)

;; Function-Decl crate::vstd::shared::Dupe::Config::is_initialize_one
(declare-fun vstd.shared.Dupe.impl&%3.is_initialize_one.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::shared::Dupe::Config::get_initialize_one_0
(declare-fun vstd.shared.Dupe.impl&%3.get_initialize_one_0.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::shared::Dupe::Config::is_dummy_to_use_type_params
(declare-fun vstd.shared.Dupe.impl&%3.is_dummy_to_use_type_params.? (Dcr Type Poly)
 Bool
)

;; Function-Decl crate::vstd::shared::Dupe::Config::get_dummy_to_use_type_params_0
(declare-fun vstd.shared.Dupe.impl&%3.get_dummy_to_use_type_params_0.? (Dcr Type Poly)
 vstd.shared.Dupe.State.
)

;; Function-Decl crate::vstd::shared::Dupe::State::initialize_one_enabled
(declare-fun vstd.shared.Dupe.impl&%7.initialize_one_enabled.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::shared::Dupe::State::next_by
(declare-fun vstd.shared.Dupe.impl&%7.next_by.? (Dcr Type Poly Poly Poly) Bool)

;; Function-Decl crate::vstd::shared::Dupe::State::next
(declare-fun vstd.shared.Dupe.impl&%7.next.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::shared::Dupe::State::next_strong_by
(declare-fun vstd.shared.Dupe.impl&%7.next_strong_by.? (Dcr Type Poly Poly Poly) Bool)

;; Function-Decl crate::vstd::shared::Dupe::State::next_strong
(declare-fun vstd.shared.Dupe.impl&%7.next_strong.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::shared::Dupe::State::invariant
(declare-fun vstd.shared.Dupe.impl&%7.invariant.? (Dcr Type Poly) Bool)

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

;; Function-Axioms crate::vstd::shared::Dupe::State::initialize_one
(assert
 (fuel_bool_default fuel%vstd.shared.Dupe.impl&%7.initialize_one.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.shared.Dupe.impl&%7.initialize_one.)
  (forall ((T&. Dcr) (T& Type) (post! Poly) (t! Poly)) (!
    (= (vstd.shared.Dupe.impl&%7.initialize_one.? T&. T& post! t!) (let
      ((update_tmp_storage$ (core!option.Option./Some t!)))
      (let
       ((update_tmp_val$ t!))
       (and
        (= (vstd.shared.Dupe.State./State/val (%Poly%vstd.shared.Dupe.State. post!)) update_tmp_val$)
        (= (vstd.shared.Dupe.State./State/storage (%Poly%vstd.shared.Dupe.State. post!)) update_tmp_storage$)
    ))))
    :pattern ((vstd.shared.Dupe.impl&%7.initialize_one.? T&. T& post! t!))
    :qid internal_vstd.shared.Dupe.impl&__7.initialize_one.?_definition
    :skolemid skolem_internal_vstd.shared.Dupe.impl&__7.initialize_one.?_definition
))))

;; Function-Axioms crate::vstd::shared::Dupe::State::init_by
(assert
 (=>
  (fuel_bool fuel%vstd.shared.Dupe.impl&%7.init_by.)
  (forall ((T&. Dcr) (T& Type) (post! Poly) (step! Poly)) (!
    (= (vstd.shared.Dupe.impl&%7.init_by.? T&. T& post! step!) (and
      (is-vstd.shared.Dupe.Config./initialize_one (%Poly%vstd.shared.Dupe.Config. step!))
      (let
       ((t$ (vstd.shared.Dupe.Config./initialize_one/0 (%Poly%vstd.shared.Dupe.Config. step!))))
       (vstd.shared.Dupe.impl&%7.initialize_one.? T&. T& post! t$)
    )))
    :pattern ((vstd.shared.Dupe.impl&%7.init_by.? T&. T& post! step!))
    :qid internal_vstd.shared.Dupe.impl&__7.init_by.?_definition
    :skolemid skolem_internal_vstd.shared.Dupe.impl&__7.init_by.?_definition
))))

;; Function-Axioms crate::vstd::shared::Dupe::State::init
(assert
 (=>
  (fuel_bool fuel%vstd.shared.Dupe.impl&%7.init.)
  (forall ((T&. Dcr) (T& Type) (post! Poly)) (!
    (= (vstd.shared.Dupe.impl&%7.init.? T&. T& post!) (exists ((step$ Poly)) (!
       (and
        (has_type step$ (TYPE%vstd.shared.Dupe.Config. T&. T&))
        (vstd.shared.Dupe.impl&%7.init_by.? T&. T& post! step$)
       )
       :pattern ((vstd.shared.Dupe.impl&%7.init_by.? T&. T& post! step$))
       :qid user_crate__vstd__shared__Dupe__State__init_1
       :skolemid skolem_user_crate__vstd__shared__Dupe__State__init_1
    )))
    :pattern ((vstd.shared.Dupe.impl&%7.init.? T&. T& post!))
    :qid internal_vstd.shared.Dupe.impl&__7.init.?_definition
    :skolemid skolem_internal_vstd.shared.Dupe.impl&__7.init.?_definition
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
   :qid user_core__clone__impls__impl&%21__clone_2
   :skolemid skolem_user_core__clone__impls__impl&%21__clone_2
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
   :qid user_core__clone__impls__impl&%3__clone_3
   :skolemid skolem_user_core__clone__impls__impl&%3__clone_3
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
   :qid user_crate__builtin__Tracked__clone_4
   :skolemid skolem_user_crate__builtin__Tracked__clone_4
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
   :qid user_crate__builtin__Ghost__clone_5
   :skolemid skolem_user_crate__builtin__Ghost__clone_5
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
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
   (= (req%vstd.std_specs.option.spec_unwrap. T&. T& option!) (=>
     %%global_location_label%%0
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
   :qid user_core__option__impl&%5__clone_6
   :skolemid skolem_user_core__option__impl&%5__clone_6
)))

;; Function-Specs crate::vstd::shared::Dupe::Instance::clone
(declare-fun ens%vstd.shared.Dupe.impl&%4.clone. (Dcr Type vstd.shared.Dupe.Instance.
  vstd.shared.Dupe.Instance.
 ) Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (self! vstd.shared.Dupe.Instance.) (s! vstd.shared.Dupe.Instance.))
  (!
   (= (ens%vstd.shared.Dupe.impl&%4.clone. T&. T& self! s!) (and
     (has_type (Poly%vstd.shared.Dupe.Instance. s!) (TYPE%vstd.shared.Dupe.Instance. T&.
       T&
     ))
     (= self! s!)
   ))
   :pattern ((ens%vstd.shared.Dupe.impl&%4.clone. T&. T& self! s!))
   :qid internal_ens__vstd.shared.Dupe.impl&__4.clone._definition
   :skolemid skolem_internal_ens__vstd.shared.Dupe.impl&__4.clone._definition
)))

;; Function-Axioms crate::vstd::shared::Dupe::Instance::val
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.shared.Dupe.Instance. T&. T&))
    (has_type (vstd.shared.Dupe.impl&%4.val.? T&. T& self!) T&)
   )
   :pattern ((vstd.shared.Dupe.impl&%4.val.? T&. T& self!))
   :qid internal_vstd.shared.Dupe.impl&__4.val.?_pre_post_definition
   :skolemid skolem_internal_vstd.shared.Dupe.impl&__4.val.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::shared::Dupe::State::agreement
(assert
 (fuel_bool_default fuel%vstd.shared.Dupe.impl&%7.agreement.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.shared.Dupe.impl&%7.agreement.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.shared.Dupe.impl&%7.agreement.? T&. T& self!) (= (vstd.shared.Dupe.State./State/storage
       (%Poly%vstd.shared.Dupe.State. self!)
      ) (core!option.Option./Some (vstd.shared.Dupe.State./State/val (%Poly%vstd.shared.Dupe.State.
         self!
    )))))
    :pattern ((vstd.shared.Dupe.impl&%7.agreement.? T&. T& self!))
    :qid internal_vstd.shared.Dupe.impl&__7.agreement.?_definition
    :skolemid skolem_internal_vstd.shared.Dupe.impl&__7.agreement.?_definition
))))

;; Function-Specs crate::vstd::shared::Dupe::State::lemma_msg_agreement
(declare-fun req%vstd.shared.Dupe.impl&%7.lemma_msg_agreement. (Dcr Type vstd.shared.Dupe.State.)
 Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (s! vstd.shared.Dupe.State.)) (!
   (= (req%vstd.shared.Dupe.impl&%7.lemma_msg_agreement. T&. T& s!) (vstd.shared.Dupe.impl&%7.agreement.?
     T&. T& (Poly%vstd.shared.Dupe.State. s!)
   ))
   :pattern ((req%vstd.shared.Dupe.impl&%7.lemma_msg_agreement. T&. T& s!))
   :qid internal_req__vstd.shared.Dupe.impl&__7.lemma_msg_agreement._definition
   :skolemid skolem_internal_req__vstd.shared.Dupe.impl&__7.lemma_msg_agreement._definition
)))
(declare-fun ens%vstd.shared.Dupe.impl&%7.lemma_msg_agreement. (Dcr Type vstd.shared.Dupe.State.)
 Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (s! vstd.shared.Dupe.State.)) (!
   (= (ens%vstd.shared.Dupe.impl&%7.lemma_msg_agreement. T&. T& s!) (vstd.shared.Dupe.impl&%7.agreement.?
     T&. T& (Poly%vstd.shared.Dupe.State. s!)
   ))
   :pattern ((ens%vstd.shared.Dupe.impl&%7.lemma_msg_agreement. T&. T& s!))
   :qid internal_ens__vstd.shared.Dupe.impl&__7.lemma_msg_agreement._definition
   :skolemid skolem_internal_ens__vstd.shared.Dupe.impl&__7.lemma_msg_agreement._definition
)))

;; Function-Axioms crate::vstd::shared::Dupe::Step::arrow_0
(assert
 (fuel_bool_default fuel%vstd.shared.Dupe.impl&%0.arrow_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.shared.Dupe.impl&%0.arrow_0.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.shared.Dupe.impl&%0.arrow_0.? T&. T& self!) (vstd.shared.Dupe.Step./dummy_to_use_type_params/0
      (%Poly%vstd.shared.Dupe.Step. self!)
    ))
    :pattern ((vstd.shared.Dupe.impl&%0.arrow_0.? T&. T& self!))
    :qid internal_vstd.shared.Dupe.impl&__0.arrow_0.?_definition
    :skolemid skolem_internal_vstd.shared.Dupe.impl&__0.arrow_0.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.shared.Dupe.Step. T&. T&))
    (has_type (Poly%vstd.shared.Dupe.State. (vstd.shared.Dupe.impl&%0.arrow_0.? T&. T& self!))
     (TYPE%vstd.shared.Dupe.State. T&. T&)
   ))
   :pattern ((vstd.shared.Dupe.impl&%0.arrow_0.? T&. T& self!))
   :qid internal_vstd.shared.Dupe.impl&__0.arrow_0.?_pre_post_definition
   :skolemid skolem_internal_vstd.shared.Dupe.impl&__0.arrow_0.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::shared::Dupe::Step::arrow_dummy_to_use_type_params_0
(assert
 (fuel_bool_default fuel%vstd.shared.Dupe.impl&%0.arrow_dummy_to_use_type_params_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.shared.Dupe.impl&%0.arrow_dummy_to_use_type_params_0.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.shared.Dupe.impl&%0.arrow_dummy_to_use_type_params_0.? T&. T& self!) (vstd.shared.Dupe.Step./dummy_to_use_type_params/0
      (%Poly%vstd.shared.Dupe.Step. self!)
    ))
    :pattern ((vstd.shared.Dupe.impl&%0.arrow_dummy_to_use_type_params_0.? T&. T& self!))
    :qid internal_vstd.shared.Dupe.impl&__0.arrow_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_vstd.shared.Dupe.impl&__0.arrow_dummy_to_use_type_params_0.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.shared.Dupe.Step. T&. T&))
    (has_type (Poly%vstd.shared.Dupe.State. (vstd.shared.Dupe.impl&%0.arrow_dummy_to_use_type_params_0.?
       T&. T& self!
      )
     ) (TYPE%vstd.shared.Dupe.State. T&. T&)
   ))
   :pattern ((vstd.shared.Dupe.impl&%0.arrow_dummy_to_use_type_params_0.? T&. T& self!))
   :qid internal_vstd.shared.Dupe.impl&__0.arrow_dummy_to_use_type_params_0.?_pre_post_definition
   :skolemid skolem_internal_vstd.shared.Dupe.impl&__0.arrow_dummy_to_use_type_params_0.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::shared::Dupe::Step::is_dummy_to_use_type_params
(assert
 (fuel_bool_default fuel%vstd.shared.Dupe.impl&%1.is_dummy_to_use_type_params.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.shared.Dupe.impl&%1.is_dummy_to_use_type_params.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.shared.Dupe.impl&%1.is_dummy_to_use_type_params.? T&. T& self!) (is-vstd.shared.Dupe.Step./dummy_to_use_type_params
      (%Poly%vstd.shared.Dupe.Step. self!)
    ))
    :pattern ((vstd.shared.Dupe.impl&%1.is_dummy_to_use_type_params.? T&. T& self!))
    :qid internal_vstd.shared.Dupe.impl&__1.is_dummy_to_use_type_params.?_definition
    :skolemid skolem_internal_vstd.shared.Dupe.impl&__1.is_dummy_to_use_type_params.?_definition
))))

;; Function-Axioms crate::vstd::shared::Dupe::Step::get_dummy_to_use_type_params_0
(assert
 (fuel_bool_default fuel%vstd.shared.Dupe.impl&%1.get_dummy_to_use_type_params_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.shared.Dupe.impl&%1.get_dummy_to_use_type_params_0.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.shared.Dupe.impl&%1.get_dummy_to_use_type_params_0.? T&. T& self!) (vstd.shared.Dupe.Step./dummy_to_use_type_params/0
      (%Poly%vstd.shared.Dupe.Step. self!)
    ))
    :pattern ((vstd.shared.Dupe.impl&%1.get_dummy_to_use_type_params_0.? T&. T& self!))
    :qid internal_vstd.shared.Dupe.impl&__1.get_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_vstd.shared.Dupe.impl&__1.get_dummy_to_use_type_params_0.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.shared.Dupe.Step. T&. T&))
    (has_type (Poly%vstd.shared.Dupe.State. (vstd.shared.Dupe.impl&%1.get_dummy_to_use_type_params_0.?
       T&. T& self!
      )
     ) (TYPE%vstd.shared.Dupe.State. T&. T&)
   ))
   :pattern ((vstd.shared.Dupe.impl&%1.get_dummy_to_use_type_params_0.? T&. T& self!))
   :qid internal_vstd.shared.Dupe.impl&__1.get_dummy_to_use_type_params_0.?_pre_post_definition
   :skolemid skolem_internal_vstd.shared.Dupe.impl&__1.get_dummy_to_use_type_params_0.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::shared::Dupe::Config::arrow_initialize_one_0
(assert
 (fuel_bool_default fuel%vstd.shared.Dupe.impl&%2.arrow_initialize_one_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.shared.Dupe.impl&%2.arrow_initialize_one_0.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.shared.Dupe.impl&%2.arrow_initialize_one_0.? T&. T& self!) (vstd.shared.Dupe.Config./initialize_one/0
      (%Poly%vstd.shared.Dupe.Config. self!)
    ))
    :pattern ((vstd.shared.Dupe.impl&%2.arrow_initialize_one_0.? T&. T& self!))
    :qid internal_vstd.shared.Dupe.impl&__2.arrow_initialize_one_0.?_definition
    :skolemid skolem_internal_vstd.shared.Dupe.impl&__2.arrow_initialize_one_0.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.shared.Dupe.Config. T&. T&))
    (has_type (vstd.shared.Dupe.impl&%2.arrow_initialize_one_0.? T&. T& self!) T&)
   )
   :pattern ((vstd.shared.Dupe.impl&%2.arrow_initialize_one_0.? T&. T& self!))
   :qid internal_vstd.shared.Dupe.impl&__2.arrow_initialize_one_0.?_pre_post_definition
   :skolemid skolem_internal_vstd.shared.Dupe.impl&__2.arrow_initialize_one_0.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::shared::Dupe::Config::arrow_dummy_to_use_type_params_0
(assert
 (fuel_bool_default fuel%vstd.shared.Dupe.impl&%2.arrow_dummy_to_use_type_params_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.shared.Dupe.impl&%2.arrow_dummy_to_use_type_params_0.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.shared.Dupe.impl&%2.arrow_dummy_to_use_type_params_0.? T&. T& self!) (vstd.shared.Dupe.Config./dummy_to_use_type_params/0
      (%Poly%vstd.shared.Dupe.Config. self!)
    ))
    :pattern ((vstd.shared.Dupe.impl&%2.arrow_dummy_to_use_type_params_0.? T&. T& self!))
    :qid internal_vstd.shared.Dupe.impl&__2.arrow_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_vstd.shared.Dupe.impl&__2.arrow_dummy_to_use_type_params_0.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.shared.Dupe.Config. T&. T&))
    (has_type (Poly%vstd.shared.Dupe.State. (vstd.shared.Dupe.impl&%2.arrow_dummy_to_use_type_params_0.?
       T&. T& self!
      )
     ) (TYPE%vstd.shared.Dupe.State. T&. T&)
   ))
   :pattern ((vstd.shared.Dupe.impl&%2.arrow_dummy_to_use_type_params_0.? T&. T& self!))
   :qid internal_vstd.shared.Dupe.impl&__2.arrow_dummy_to_use_type_params_0.?_pre_post_definition
   :skolemid skolem_internal_vstd.shared.Dupe.impl&__2.arrow_dummy_to_use_type_params_0.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::shared::Dupe::Config::is_initialize_one
(assert
 (fuel_bool_default fuel%vstd.shared.Dupe.impl&%3.is_initialize_one.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.shared.Dupe.impl&%3.is_initialize_one.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.shared.Dupe.impl&%3.is_initialize_one.? T&. T& self!) (is-vstd.shared.Dupe.Config./initialize_one
      (%Poly%vstd.shared.Dupe.Config. self!)
    ))
    :pattern ((vstd.shared.Dupe.impl&%3.is_initialize_one.? T&. T& self!))
    :qid internal_vstd.shared.Dupe.impl&__3.is_initialize_one.?_definition
    :skolemid skolem_internal_vstd.shared.Dupe.impl&__3.is_initialize_one.?_definition
))))

;; Function-Axioms crate::vstd::shared::Dupe::Config::get_initialize_one_0
(assert
 (fuel_bool_default fuel%vstd.shared.Dupe.impl&%3.get_initialize_one_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.shared.Dupe.impl&%3.get_initialize_one_0.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.shared.Dupe.impl&%3.get_initialize_one_0.? T&. T& self!) (vstd.shared.Dupe.Config./initialize_one/0
      (%Poly%vstd.shared.Dupe.Config. self!)
    ))
    :pattern ((vstd.shared.Dupe.impl&%3.get_initialize_one_0.? T&. T& self!))
    :qid internal_vstd.shared.Dupe.impl&__3.get_initialize_one_0.?_definition
    :skolemid skolem_internal_vstd.shared.Dupe.impl&__3.get_initialize_one_0.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.shared.Dupe.Config. T&. T&))
    (has_type (vstd.shared.Dupe.impl&%3.get_initialize_one_0.? T&. T& self!) T&)
   )
   :pattern ((vstd.shared.Dupe.impl&%3.get_initialize_one_0.? T&. T& self!))
   :qid internal_vstd.shared.Dupe.impl&__3.get_initialize_one_0.?_pre_post_definition
   :skolemid skolem_internal_vstd.shared.Dupe.impl&__3.get_initialize_one_0.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::shared::Dupe::Config::is_dummy_to_use_type_params
(assert
 (fuel_bool_default fuel%vstd.shared.Dupe.impl&%3.is_dummy_to_use_type_params.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.shared.Dupe.impl&%3.is_dummy_to_use_type_params.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.shared.Dupe.impl&%3.is_dummy_to_use_type_params.? T&. T& self!) (is-vstd.shared.Dupe.Config./dummy_to_use_type_params
      (%Poly%vstd.shared.Dupe.Config. self!)
    ))
    :pattern ((vstd.shared.Dupe.impl&%3.is_dummy_to_use_type_params.? T&. T& self!))
    :qid internal_vstd.shared.Dupe.impl&__3.is_dummy_to_use_type_params.?_definition
    :skolemid skolem_internal_vstd.shared.Dupe.impl&__3.is_dummy_to_use_type_params.?_definition
))))

;; Function-Axioms crate::vstd::shared::Dupe::Config::get_dummy_to_use_type_params_0
(assert
 (fuel_bool_default fuel%vstd.shared.Dupe.impl&%3.get_dummy_to_use_type_params_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.shared.Dupe.impl&%3.get_dummy_to_use_type_params_0.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.shared.Dupe.impl&%3.get_dummy_to_use_type_params_0.? T&. T& self!) (vstd.shared.Dupe.Config./dummy_to_use_type_params/0
      (%Poly%vstd.shared.Dupe.Config. self!)
    ))
    :pattern ((vstd.shared.Dupe.impl&%3.get_dummy_to_use_type_params_0.? T&. T& self!))
    :qid internal_vstd.shared.Dupe.impl&__3.get_dummy_to_use_type_params_0.?_definition
    :skolemid skolem_internal_vstd.shared.Dupe.impl&__3.get_dummy_to_use_type_params_0.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.shared.Dupe.Config. T&. T&))
    (has_type (Poly%vstd.shared.Dupe.State. (vstd.shared.Dupe.impl&%3.get_dummy_to_use_type_params_0.?
       T&. T& self!
      )
     ) (TYPE%vstd.shared.Dupe.State. T&. T&)
   ))
   :pattern ((vstd.shared.Dupe.impl&%3.get_dummy_to_use_type_params_0.? T&. T& self!))
   :qid internal_vstd.shared.Dupe.impl&__3.get_dummy_to_use_type_params_0.?_pre_post_definition
   :skolemid skolem_internal_vstd.shared.Dupe.impl&__3.get_dummy_to_use_type_params_0.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::shared::Dupe::State::initialize_one_enabled
(assert
 (fuel_bool_default fuel%vstd.shared.Dupe.impl&%7.initialize_one_enabled.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.shared.Dupe.impl&%7.initialize_one_enabled.)
  (forall ((T&. Dcr) (T& Type) (t! Poly)) (!
    (= (vstd.shared.Dupe.impl&%7.initialize_one_enabled.? T&. T& t!) true)
    :pattern ((vstd.shared.Dupe.impl&%7.initialize_one_enabled.? T&. T& t!))
    :qid internal_vstd.shared.Dupe.impl&__7.initialize_one_enabled.?_definition
    :skolemid skolem_internal_vstd.shared.Dupe.impl&__7.initialize_one_enabled.?_definition
))))

;; Function-Axioms crate::vstd::shared::Dupe::State::next_by
(assert
 (=>
  (fuel_bool fuel%vstd.shared.Dupe.impl&%7.next_by.)
  (forall ((T&. Dcr) (T& Type) (pre! Poly) (post! Poly) (step! Poly)) (!
    (= (vstd.shared.Dupe.impl&%7.next_by.? T&. T& pre! post! step!) false)
    :pattern ((vstd.shared.Dupe.impl&%7.next_by.? T&. T& pre! post! step!))
    :qid internal_vstd.shared.Dupe.impl&__7.next_by.?_definition
    :skolemid skolem_internal_vstd.shared.Dupe.impl&__7.next_by.?_definition
))))

;; Function-Axioms crate::vstd::shared::Dupe::State::next
(assert
 (=>
  (fuel_bool fuel%vstd.shared.Dupe.impl&%7.next.)
  (forall ((T&. Dcr) (T& Type) (pre! Poly) (post! Poly)) (!
    (= (vstd.shared.Dupe.impl&%7.next.? T&. T& pre! post!) (exists ((step$ Poly)) (!
       (and
        (has_type step$ (TYPE%vstd.shared.Dupe.Step. T&. T&))
        (vstd.shared.Dupe.impl&%7.next_by.? T&. T& pre! post! step$)
       )
       :pattern ((vstd.shared.Dupe.impl&%7.next_by.? T&. T& pre! post! step$))
       :qid user_crate__vstd__shared__Dupe__State__next_7
       :skolemid skolem_user_crate__vstd__shared__Dupe__State__next_7
    )))
    :pattern ((vstd.shared.Dupe.impl&%7.next.? T&. T& pre! post!))
    :qid internal_vstd.shared.Dupe.impl&__7.next.?_definition
    :skolemid skolem_internal_vstd.shared.Dupe.impl&__7.next.?_definition
))))

;; Function-Axioms crate::vstd::shared::Dupe::State::next_strong_by
(assert
 (=>
  (fuel_bool fuel%vstd.shared.Dupe.impl&%7.next_strong_by.)
  (forall ((T&. Dcr) (T& Type) (pre! Poly) (post! Poly) (step! Poly)) (!
    (= (vstd.shared.Dupe.impl&%7.next_strong_by.? T&. T& pre! post! step!) false)
    :pattern ((vstd.shared.Dupe.impl&%7.next_strong_by.? T&. T& pre! post! step!))
    :qid internal_vstd.shared.Dupe.impl&__7.next_strong_by.?_definition
    :skolemid skolem_internal_vstd.shared.Dupe.impl&__7.next_strong_by.?_definition
))))

;; Function-Axioms crate::vstd::shared::Dupe::State::next_strong
(assert
 (=>
  (fuel_bool fuel%vstd.shared.Dupe.impl&%7.next_strong.)
  (forall ((T&. Dcr) (T& Type) (pre! Poly) (post! Poly)) (!
    (= (vstd.shared.Dupe.impl&%7.next_strong.? T&. T& pre! post!) (exists ((step$ Poly))
      (!
       (and
        (has_type step$ (TYPE%vstd.shared.Dupe.Step. T&. T&))
        (vstd.shared.Dupe.impl&%7.next_strong_by.? T&. T& pre! post! step$)
       )
       :pattern ((vstd.shared.Dupe.impl&%7.next_strong_by.? T&. T& pre! post! step$))
       :qid user_crate__vstd__shared__Dupe__State__next_strong_8
       :skolemid skolem_user_crate__vstd__shared__Dupe__State__next_strong_8
    )))
    :pattern ((vstd.shared.Dupe.impl&%7.next_strong.? T&. T& pre! post!))
    :qid internal_vstd.shared.Dupe.impl&__7.next_strong.?_definition
    :skolemid skolem_internal_vstd.shared.Dupe.impl&__7.next_strong.?_definition
))))

;; Function-Axioms crate::vstd::shared::Dupe::State::invariant
(assert
 (fuel_bool_default fuel%vstd.shared.Dupe.impl&%7.invariant.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.shared.Dupe.impl&%7.invariant.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.shared.Dupe.impl&%7.invariant.? T&. T& self!) (vstd.shared.Dupe.impl&%7.agreement.?
      T&. T& self!
    ))
    :pattern ((vstd.shared.Dupe.impl&%7.invariant.? T&. T& self!))
    :qid internal_vstd.shared.Dupe.impl&__7.invariant.?_definition
    :skolemid skolem_internal_vstd.shared.Dupe.impl&__7.invariant.?_definition
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
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!clone.Clone. $ (TYPE%vstd.shared.Dupe.Instance. T&. T&))
   :pattern ((tr_bound%core!clone.Clone. $ (TYPE%vstd.shared.Dupe.Instance. T&. T&)))
   :qid internal_crate__vstd__shared__Dupe__impl&__5_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__shared__Dupe__impl&__5_trait_impl_definition
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

;; Function-Specs crate::vstd::shared::Dupe::State::initialize_one_inductive
(declare-fun req%vstd.shared.Dupe.impl&%7.initialize_one_inductive. (Dcr Type vstd.shared.Dupe.State.
  Poly
 ) Bool
)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (post! vstd.shared.Dupe.State.) (t! Poly)) (!
   (= (req%vstd.shared.Dupe.impl&%7.initialize_one_inductive. T&. T& post! t!) (=>
     %%global_location_label%%1
     (vstd.shared.Dupe.impl&%7.initialize_one.? T&. T& (Poly%vstd.shared.Dupe.State. post!)
      t!
   )))
   :pattern ((req%vstd.shared.Dupe.impl&%7.initialize_one_inductive. T&. T& post! t!))
   :qid internal_req__vstd.shared.Dupe.impl&__7.initialize_one_inductive._definition
   :skolemid skolem_internal_req__vstd.shared.Dupe.impl&__7.initialize_one_inductive._definition
)))
(declare-fun ens%vstd.shared.Dupe.impl&%7.initialize_one_inductive. (Dcr Type vstd.shared.Dupe.State.
  Poly
 ) Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (post! vstd.shared.Dupe.State.) (t! Poly)) (!
   (= (ens%vstd.shared.Dupe.impl&%7.initialize_one_inductive. T&. T& post! t!) (vstd.shared.Dupe.impl&%7.invariant.?
     T&. T& (Poly%vstd.shared.Dupe.State. post!)
   ))
   :pattern ((ens%vstd.shared.Dupe.impl&%7.initialize_one_inductive. T&. T& post! t!))
   :qid internal_ens__vstd.shared.Dupe.impl&__7.initialize_one_inductive._definition
   :skolemid skolem_internal_ens__vstd.shared.Dupe.impl&__7.initialize_one_inductive._definition
)))

;; Function-Def crate::vstd::shared::Dupe::State::initialize_one_inductive
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/shared.rs:38:6: 38:51 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const post! vstd.shared.Dupe.State.)
 (declare-const t! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.shared.Dupe.State. post!) (TYPE%vstd.shared.Dupe.State. T&. T&))
 )
 (assert
  (has_type t! T&)
 )
 (assert
  (vstd.shared.Dupe.impl&%7.initialize_one.? T&. T& (Poly%vstd.shared.Dupe.State. post!)
   t!
 ))
 ;; could not show invariant `agreement` on the `post` state
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.shared.Dupe.impl&%7.lemma_msg_agreement. T&. T& post!)
    )
    (=>
     (ens%vstd.shared.Dupe.impl&%7.lemma_msg_agreement. T&. T& post!)
     (=>
      %%location_label%%1
      (vstd.shared.Dupe.impl&%7.invariant.? T&. T& (Poly%vstd.shared.Dupe.State. post!))
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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

;; Function-Specs crate::vstd::shared::Dupe::Instance::initialize_one
(declare-fun req%vstd.shared.Dupe.impl&%4.initialize_one. (Dcr Type Poly core!option.Option.)
 Bool
)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (t! Poly) (param_token_storage! core!option.Option.))
  (!
   (= (req%vstd.shared.Dupe.impl&%4.initialize_one. T&. T& t! param_token_storage!) (
     =>
     %%global_location_label%%2
     (= param_token_storage! (core!option.Option./Some t!))
   ))
   :pattern ((req%vstd.shared.Dupe.impl&%4.initialize_one. T&. T& t! param_token_storage!))
   :qid internal_req__vstd.shared.Dupe.impl&__4.initialize_one._definition
   :skolemid skolem_internal_req__vstd.shared.Dupe.impl&__4.initialize_one._definition
)))
(declare-fun ens%vstd.shared.Dupe.impl&%4.initialize_one. (Dcr Type Poly core!option.Option.
  vstd.shared.Dupe.Instance.
 ) Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (t! Poly) (param_token_storage! core!option.Option.) (
    instance! vstd.shared.Dupe.Instance.
   )
  ) (!
   (= (ens%vstd.shared.Dupe.impl&%4.initialize_one. T&. T& t! param_token_storage! instance!)
    (and
     (has_type (Poly%vstd.shared.Dupe.Instance. instance!) (TYPE%vstd.shared.Dupe.Instance.
       T&. T&
     ))
     (= (vstd.shared.Dupe.impl&%4.val.? T&. T& (Poly%vstd.shared.Dupe.Instance. instance!))
      t!
   )))
   :pattern ((ens%vstd.shared.Dupe.impl&%4.initialize_one. T&. T& t! param_token_storage!
     instance!
   ))
   :qid internal_ens__vstd.shared.Dupe.impl&__4.initialize_one._definition
   :skolemid skolem_internal_ens__vstd.shared.Dupe.impl&__4.initialize_one._definition
)))

;; Function-Def crate::vstd::shared::Dupe::State::borrow_asserts
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/shared.rs:9:1: 39:3 (#1998)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const pre! vstd.shared.Dupe.State.)
 (declare-const tmp%1 Bool)
 (declare-const update_tmp_storage@ core!option.Option.)
 (declare-const update_tmp_val@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.shared.Dupe.State. pre!) (TYPE%vstd.shared.Dupe.State. T&. T&))
 )
 ;; unable to prove inherent safety condition: the value being guarded must be stored
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (vstd.shared.Dupe.impl&%7.invariant.? T&. T& (Poly%vstd.shared.Dupe.State. pre!))
    (=>
     (= update_tmp_storage@ (vstd.shared.Dupe.State./State/storage (%Poly%vstd.shared.Dupe.State.
        (Poly%vstd.shared.Dupe.State. pre!)
     )))
     (=>
      (= update_tmp_val@ (vstd.shared.Dupe.State./State/val (%Poly%vstd.shared.Dupe.State.
         (Poly%vstd.shared.Dupe.State. pre!)
      )))
      (=>
       (= tmp%1 (= update_tmp_storage@ (core!option.Option./Some (vstd.shared.Dupe.State./State/val
           (%Poly%vstd.shared.Dupe.State. (Poly%vstd.shared.Dupe.State. pre!))
       ))))
       (=>
        %%location_label%%0
        (req%vstd.state_machine_internal.assert_guard_option. tmp%1)
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::shared::Dupe::Instance::borrow
(declare-fun ens%vstd.shared.Dupe.impl&%4.borrow. (Dcr Type vstd.shared.Dupe.Instance.
  Poly
 ) Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (self! vstd.shared.Dupe.Instance.) (param_token_0_storage!
    Poly
   )
  ) (!
   (= (ens%vstd.shared.Dupe.impl&%4.borrow. T&. T& self! param_token_0_storage!) (and
     (has_type param_token_0_storage! T&)
     (= param_token_0_storage! (vstd.shared.Dupe.impl&%4.val.? T&. T& (Poly%vstd.shared.Dupe.Instance.
        self!
   )))))
   :pattern ((ens%vstd.shared.Dupe.impl&%4.borrow. T&. T& self! param_token_0_storage!))
   :qid internal_ens__vstd.shared.Dupe.impl&__4.borrow._definition
   :skolemid skolem_internal_ens__vstd.shared.Dupe.impl&__4.borrow._definition
)))
