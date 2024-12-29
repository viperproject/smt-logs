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

;; MODULE 'module vstd::std_specs::result'

;; Fuel
(declare-const fuel%vstd.std_specs.result.impl&%0.is_Ok. FuelId)
(declare-const fuel%vstd.std_specs.result.impl&%0.get_Ok_0. FuelId)
(declare-const fuel%vstd.std_specs.result.impl&%0.is_Err. FuelId)
(declare-const fuel%vstd.std_specs.result.impl&%0.get_Err_0. FuelId)
(declare-const fuel%vstd.std_specs.result.is_ok. FuelId)
(declare-const fuel%vstd.std_specs.result.is_err. FuelId)
(declare-const fuel%vstd.std_specs.result.spec_unwrap. FuelId)
(declare-const fuel%vstd.std_specs.result.spec_unwrap_err. FuelId)
(declare-const fuel%vstd.std_specs.result.ok. FuelId)
(declare-const fuel%vstd.std_specs.result.err. FuelId)
(declare-const fuel%vstd.pervasive.impl&%0.requires. FuelId)
(declare-const fuel%vstd.pervasive.impl&%0.ensures. FuelId)
(assert
 (distinct fuel%vstd.std_specs.result.impl&%0.is_Ok. fuel%vstd.std_specs.result.impl&%0.get_Ok_0.
  fuel%vstd.std_specs.result.impl&%0.is_Err. fuel%vstd.std_specs.result.impl&%0.get_Err_0.
  fuel%vstd.std_specs.result.is_ok. fuel%vstd.std_specs.result.is_err. fuel%vstd.std_specs.result.spec_unwrap.
  fuel%vstd.std_specs.result.spec_unwrap_err. fuel%vstd.std_specs.result.ok. fuel%vstd.std_specs.result.err.
  fuel%vstd.pervasive.impl&%0.requires. fuel%vstd.pervasive.impl&%0.ensures.
))

;; Datatypes
(declare-datatypes ((core!option.Option. 0) (core!result.Result. 0) (tuple%1. 0))
 (((core!option.Option./None) (core!option.Option./Some (core!option.Option./Some/?0 Poly)))
  ((core!result.Result./Ok (core!result.Result./Ok/?0 Poly)) (core!result.Result./Err
    (core!result.Result./Err/?0 Poly)
   )
  ) ((tuple%1./tuple%1 (tuple%1./tuple%1/?0 Poly)))
))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun core!result.Result./Ok/0 (core!result.Result.) Poly)
(declare-fun core!result.Result./Err/0 (core!result.Result.) Poly)
(declare-fun tuple%1./tuple%1/0 (tuple%1.) Poly)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-fun TYPE%core!result.Result. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%tuple%1. (Dcr Type) Type)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
(declare-fun Poly%core!result.Result. (core!result.Result.) Poly)
(declare-fun %Poly%core!result.Result. (Poly) core!result.Result.)
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
 (forall ((x core!result.Result.)) (!
   (= x (%Poly%core!result.Result. (Poly%core!result.Result. x)))
   :pattern ((Poly%core!result.Result. x))
   :qid internal_core__result__Result_box_axiom_definition
   :skolemid skolem_internal_core__result__Result_box_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!result.Result. T&. T& E&. E&))
    (= x (Poly%core!result.Result. (%Poly%core!result.Result. x)))
   )
   :pattern ((has_type x (TYPE%core!result.Result. T&. T& E&. E&)))
   :qid internal_core__result__Result_unbox_axiom_definition
   :skolemid skolem_internal_core__result__Result_unbox_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (_0! Poly)) (!
   (=>
    (has_type _0! T&)
    (has_type (Poly%core!result.Result. (core!result.Result./Ok _0!)) (TYPE%core!result.Result.
      T&. T& E&. E&
   )))
   :pattern ((has_type (Poly%core!result.Result. (core!result.Result./Ok _0!)) (TYPE%core!result.Result.
      T&. T& E&. E&
   )))
   :qid internal_core!result.Result./Ok_constructor_definition
   :skolemid skolem_internal_core!result.Result./Ok_constructor_definition
)))
(assert
 (forall ((x core!result.Result.)) (!
   (= (core!result.Result./Ok/0 x) (core!result.Result./Ok/?0 x))
   :pattern ((core!result.Result./Ok/0 x))
   :qid internal_core!result.Result./Ok/0_accessor_definition
   :skolemid skolem_internal_core!result.Result./Ok/0_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!result.Result. T&. T& E&. E&))
    (has_type (core!result.Result./Ok/0 (%Poly%core!result.Result. x)) T&)
   )
   :pattern ((core!result.Result./Ok/0 (%Poly%core!result.Result. x)) (has_type x (TYPE%core!result.Result.
      T&. T& E&. E&
   )))
   :qid internal_core!result.Result./Ok/0_invariant_definition
   :skolemid skolem_internal_core!result.Result./Ok/0_invariant_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (_0! Poly)) (!
   (=>
    (has_type _0! E&)
    (has_type (Poly%core!result.Result. (core!result.Result./Err _0!)) (TYPE%core!result.Result.
      T&. T& E&. E&
   )))
   :pattern ((has_type (Poly%core!result.Result. (core!result.Result./Err _0!)) (TYPE%core!result.Result.
      T&. T& E&. E&
   )))
   :qid internal_core!result.Result./Err_constructor_definition
   :skolemid skolem_internal_core!result.Result./Err_constructor_definition
)))
(assert
 (forall ((x core!result.Result.)) (!
   (= (core!result.Result./Err/0 x) (core!result.Result./Err/?0 x))
   :pattern ((core!result.Result./Err/0 x))
   :qid internal_core!result.Result./Err/0_accessor_definition
   :skolemid skolem_internal_core!result.Result./Err/0_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!result.Result. T&. T& E&. E&))
    (has_type (core!result.Result./Err/0 (%Poly%core!result.Result. x)) E&)
   )
   :pattern ((core!result.Result./Err/0 (%Poly%core!result.Result. x)) (has_type x (TYPE%core!result.Result.
      T&. T& E&. E&
   )))
   :qid internal_core!result.Result./Err/0_invariant_definition
   :skolemid skolem_internal_core!result.Result./Err/0_invariant_definition
)))
(assert
 (forall ((x core!result.Result.)) (!
   (=>
    (is-core!result.Result./Ok x)
    (height_lt (height (core!result.Result./Ok/0 x)) (height (Poly%core!result.Result. x)))
   )
   :pattern ((height (core!result.Result./Ok/0 x)))
   :qid prelude_datatype_height_core!result.Result./Ok/0
   :skolemid skolem_prelude_datatype_height_core!result.Result./Ok/0
)))
(assert
 (forall ((x core!result.Result.)) (!
   (=>
    (is-core!result.Result./Err x)
    (height_lt (height (core!result.Result./Err/0 x)) (height (Poly%core!result.Result.
       x
   ))))
   :pattern ((height (core!result.Result./Err/0 x)))
   :qid prelude_datatype_height_core!result.Result./Err/0
   :skolemid skolem_prelude_datatype_height_core!result.Result./Err/0
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
(declare-fun tr_bound%vstd.pervasive.FnWithRequiresEnsures. (Dcr Type Dcr Type Dcr
  Type
 ) Bool
)
(declare-fun tr_bound%core!fmt.Debug. (Dcr Type) Bool)
(declare-fun tr_bound%vstd.std_specs.result.ResultAdditionalSpecFns. (Dcr Type Dcr
  Type Dcr Type
 ) Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Args&. Dcr) (Args& Type) (Output&. Dcr) (Output&
    Type
   )
  ) (!
   true
   :pattern ((tr_bound%vstd.pervasive.FnWithRequiresEnsures. Self%&. Self%& Args&. Args&
     Output&. Output&
   ))
   :qid internal_crate__vstd__pervasive__FnWithRequiresEnsures_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__pervasive__FnWithRequiresEnsures_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%core!fmt.Debug. Self%&. Self%&))
   :qid internal_core__fmt__Debug_trait_type_bounds_definition
   :skolemid skolem_internal_core__fmt__Debug_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (E&. Dcr) (E& Type)) (!
   true
   :pattern ((tr_bound%vstd.std_specs.result.ResultAdditionalSpecFns. Self%&. Self%& T&.
     T& E&. E&
   ))
   :qid internal_crate__vstd__std_specs__result__ResultAdditionalSpecFns_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__std_specs__result__ResultAdditionalSpecFns_trait_type_bounds_definition
)))

;; Function-Decl crate::vstd::pervasive::FnWithRequiresEnsures::requires
(declare-fun vstd.pervasive.FnWithRequiresEnsures.requires.? (Dcr Type Dcr Type Dcr
  Type Poly Poly
 ) Poly
)
(declare-fun vstd.pervasive.FnWithRequiresEnsures.requires%default%.? (Dcr Type Dcr
  Type Dcr Type Poly Poly
 ) Poly
)

;; Function-Decl crate::vstd::pervasive::FnWithRequiresEnsures::ensures
(declare-fun vstd.pervasive.FnWithRequiresEnsures.ensures.? (Dcr Type Dcr Type Dcr
  Type Poly Poly Poly
 ) Poly
)
(declare-fun vstd.pervasive.FnWithRequiresEnsures.ensures%default%.? (Dcr Type Dcr
  Type Dcr Type Poly Poly Poly
 ) Poly
)

;; Function-Decl crate::vstd::std_specs::result::ResultAdditionalSpecFns::is_Ok
(declare-fun vstd.std_specs.result.ResultAdditionalSpecFns.is_Ok.? (Dcr Type Dcr Type
  Dcr Type Poly
 ) Poly
)
(declare-fun vstd.std_specs.result.ResultAdditionalSpecFns.is_Ok%default%.? (Dcr Type
  Dcr Type Dcr Type Poly
 ) Poly
)

;; Function-Decl crate::vstd::std_specs::result::ResultAdditionalSpecFns::get_Ok_0
(declare-fun vstd.std_specs.result.ResultAdditionalSpecFns.get_Ok_0.? (Dcr Type Dcr
  Type Dcr Type Poly
 ) Poly
)
(declare-fun vstd.std_specs.result.ResultAdditionalSpecFns.get_Ok_0%default%.? (Dcr
  Type Dcr Type Dcr Type Poly
 ) Poly
)

;; Function-Decl crate::vstd::std_specs::result::ResultAdditionalSpecFns::is_Err
(declare-fun vstd.std_specs.result.ResultAdditionalSpecFns.is_Err.? (Dcr Type Dcr Type
  Dcr Type Poly
 ) Poly
)
(declare-fun vstd.std_specs.result.ResultAdditionalSpecFns.is_Err%default%.? (Dcr Type
  Dcr Type Dcr Type Poly
 ) Poly
)

;; Function-Decl crate::vstd::std_specs::result::ResultAdditionalSpecFns::get_Err_0
(declare-fun vstd.std_specs.result.ResultAdditionalSpecFns.get_Err_0.? (Dcr Type Dcr
  Type Dcr Type Poly
 ) Poly
)
(declare-fun vstd.std_specs.result.ResultAdditionalSpecFns.get_Err_0%default%.? (Dcr
  Type Dcr Type Dcr Type Poly
 ) Poly
)

;; Function-Decl crate::vstd::std_specs::result::is_ok
(declare-fun vstd.std_specs.result.is_ok.? (Dcr Type Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::std_specs::result::is_err
(declare-fun vstd.std_specs.result.is_err.? (Dcr Type Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::std_specs::result::ok
(declare-fun vstd.std_specs.result.ok.? (Dcr Type Dcr Type Poly) core!option.Option.)

;; Function-Decl crate::vstd::std_specs::result::err
(declare-fun vstd.std_specs.result.err.? (Dcr Type Dcr Type Poly) core!option.Option.)

;; Function-Decl crate::vstd::std_specs::result::spec_unwrap
(declare-fun vstd.std_specs.result.spec_unwrap.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::std_specs::result::spec_unwrap_err
(declare-fun vstd.std_specs.result.spec_unwrap_err.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Axioms crate::vstd::pervasive::FnWithRequiresEnsures::requires
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Args&. Dcr) (Args& Type) (Output&. Dcr) (Output&
    Type
   ) (self! Poly) (args! Poly)
  ) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type args! Args&)
    )
    (has_type (vstd.pervasive.FnWithRequiresEnsures.requires.? Self%&. Self%& Args&. Args&
      Output&. Output& self! args!
     ) BOOL
   ))
   :pattern ((vstd.pervasive.FnWithRequiresEnsures.requires.? Self%&. Self%& Args&. Args&
     Output&. Output& self! args!
   ))
   :qid internal_vstd.pervasive.FnWithRequiresEnsures.requires.?_pre_post_definition
   :skolemid skolem_internal_vstd.pervasive.FnWithRequiresEnsures.requires.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::pervasive::FnWithRequiresEnsures::ensures
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Args&. Dcr) (Args& Type) (Output&. Dcr) (Output&
    Type
   ) (self! Poly) (args! Poly) (output! Poly)
  ) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type args! Args&)
     (has_type output! Output&)
    )
    (has_type (vstd.pervasive.FnWithRequiresEnsures.ensures.? Self%&. Self%& Args&. Args&
      Output&. Output& self! args! output!
     ) BOOL
   ))
   :pattern ((vstd.pervasive.FnWithRequiresEnsures.ensures.? Self%&. Self%& Args&. Args&
     Output&. Output& self! args! output!
   ))
   :qid internal_vstd.pervasive.FnWithRequiresEnsures.ensures.?_pre_post_definition
   :skolemid skolem_internal_vstd.pervasive.FnWithRequiresEnsures.ensures.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::pervasive::impl&%0::F::requires
(assert
 (fuel_bool_default fuel%vstd.pervasive.impl&%0.requires.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.pervasive.impl&%0.requires.)
  (forall ((Args&. Dcr) (Args& Type) (Output&. Dcr) (Output& Type) (F&. Dcr) (F& Type)
    (self! Poly) (args! Poly)
   ) (!
    (= (vstd.pervasive.FnWithRequiresEnsures.requires.? F&. F& Args&. Args& Output&. Output&
      self! args!
     ) (B (closure_req F& Args&. Args& self! args!))
    )
    :pattern ((vstd.pervasive.FnWithRequiresEnsures.requires.? F&. F& Args&. Args& Output&.
      Output& self! args!
    ))
    :qid internal_vstd.pervasive.FnWithRequiresEnsures.requires.?_definition
    :skolemid skolem_internal_vstd.pervasive.FnWithRequiresEnsures.requires.?_definition
))))

;; Function-Axioms crate::vstd::pervasive::impl&%0::F::ensures
(assert
 (fuel_bool_default fuel%vstd.pervasive.impl&%0.ensures.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.pervasive.impl&%0.ensures.)
  (forall ((Args&. Dcr) (Args& Type) (Output&. Dcr) (Output& Type) (F&. Dcr) (F& Type)
    (self! Poly) (args! Poly) (output! Poly)
   ) (!
    (= (vstd.pervasive.FnWithRequiresEnsures.ensures.? F&. F& Args&. Args& Output&. Output&
      self! args! output!
     ) (B (closure_ens F& Args&. Args& self! args! output!))
    )
    :pattern ((vstd.pervasive.FnWithRequiresEnsures.ensures.? F&. F& Args&. Args& Output&.
      Output& self! args! output!
    ))
    :qid internal_vstd.pervasive.FnWithRequiresEnsures.ensures.?_definition
    :skolemid skolem_internal_vstd.pervasive.FnWithRequiresEnsures.ensures.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::result::ResultAdditionalSpecFns::is_Ok
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (self!
    Poly
   )
  ) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.std_specs.result.ResultAdditionalSpecFns.is_Ok.? Self%&. Self%& T&.
      T& E&. E& self!
     ) BOOL
   ))
   :pattern ((vstd.std_specs.result.ResultAdditionalSpecFns.is_Ok.? Self%&. Self%& T&.
     T& E&. E& self!
   ))
   :qid internal_vstd.std_specs.result.ResultAdditionalSpecFns.is_Ok.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.result.ResultAdditionalSpecFns.is_Ok.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::std_specs::result::ResultAdditionalSpecFns::get_Ok_0
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (self!
    Poly
   )
  ) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.std_specs.result.ResultAdditionalSpecFns.get_Ok_0.? Self%&. Self%&
      T&. T& E&. E& self!
     ) T&
   ))
   :pattern ((vstd.std_specs.result.ResultAdditionalSpecFns.get_Ok_0.? Self%&. Self%&
     T&. T& E&. E& self!
   ))
   :qid internal_vstd.std_specs.result.ResultAdditionalSpecFns.get_Ok_0.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.result.ResultAdditionalSpecFns.get_Ok_0.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::std_specs::result::ResultAdditionalSpecFns::is_Err
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (self!
    Poly
   )
  ) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.std_specs.result.ResultAdditionalSpecFns.is_Err.? Self%&. Self%& T&.
      T& E&. E& self!
     ) BOOL
   ))
   :pattern ((vstd.std_specs.result.ResultAdditionalSpecFns.is_Err.? Self%&. Self%& T&.
     T& E&. E& self!
   ))
   :qid internal_vstd.std_specs.result.ResultAdditionalSpecFns.is_Err.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.result.ResultAdditionalSpecFns.is_Err.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::std_specs::result::ResultAdditionalSpecFns::get_Err_0
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (self!
    Poly
   )
  ) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.std_specs.result.ResultAdditionalSpecFns.get_Err_0.? Self%&. Self%&
      T&. T& E&. E& self!
     ) E&
   ))
   :pattern ((vstd.std_specs.result.ResultAdditionalSpecFns.get_Err_0.? Self%&. Self%&
     T&. T& E&. E& self!
   ))
   :qid internal_vstd.std_specs.result.ResultAdditionalSpecFns.get_Err_0.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.result.ResultAdditionalSpecFns.get_Err_0.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::std_specs::result::is_ok
(assert
 (fuel_bool_default fuel%vstd.std_specs.result.is_ok.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.result.is_ok.)
  (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (result! Poly)) (!
    (= (vstd.std_specs.result.is_ok.? T&. T& E&. E& result!) (is-core!result.Result./Ok
      (%Poly%core!result.Result. result!)
    ))
    :pattern ((vstd.std_specs.result.is_ok.? T&. T& E&. E& result!))
    :qid internal_vstd.std_specs.result.is_ok.?_definition
    :skolemid skolem_internal_vstd.std_specs.result.is_ok.?_definition
))))

;; Function-Specs core::result::impl&%0::is_ok
(declare-fun ens%core!result.impl&%0.is_ok. (Dcr Type Dcr Type core!result.Result.
  Bool
 ) Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (result! core!result.Result.) (b! Bool))
  (!
   (= (ens%core!result.impl&%0.is_ok. T&. T& E&. E& result! b!) (= b! (is-core!result.Result./Ok
      result!
   )))
   :pattern ((ens%core!result.impl&%0.is_ok. T&. T& E&. E& result! b!))
   :qid internal_ens__core!result.impl&__0.is_ok._definition
   :skolemid skolem_internal_ens__core!result.impl&__0.is_ok._definition
)))

;; Function-Axioms crate::vstd::std_specs::result::is_err
(assert
 (fuel_bool_default fuel%vstd.std_specs.result.is_err.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.result.is_err.)
  (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (result! Poly)) (!
    (= (vstd.std_specs.result.is_err.? T&. T& E&. E& result!) (is-core!result.Result./Err
      (%Poly%core!result.Result. result!)
    ))
    :pattern ((vstd.std_specs.result.is_err.? T&. T& E&. E& result!))
    :qid internal_vstd.std_specs.result.is_err.?_definition
    :skolemid skolem_internal_vstd.std_specs.result.is_err.?_definition
))))

;; Function-Specs core::result::impl&%0::is_err
(declare-fun ens%core!result.impl&%0.is_err. (Dcr Type Dcr Type core!result.Result.
  Bool
 ) Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (result! core!result.Result.) (b! Bool))
  (!
   (= (ens%core!result.impl&%0.is_err. T&. T& E&. E& result! b!) (= b! (is-core!result.Result./Err
      result!
   )))
   :pattern ((ens%core!result.impl&%0.is_err. T&. T& E&. E& result! b!))
   :qid internal_ens__core!result.impl&__0.is_err._definition
   :skolemid skolem_internal_ens__core!result.impl&__0.is_err._definition
)))

;; Function-Axioms core::result::Result::is_Ok
(assert
 (fuel_bool_default fuel%vstd.std_specs.result.impl&%0.is_Ok.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.result.impl&%0.is_Ok.)
  (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (self! Poly)) (!
    (= (vstd.std_specs.result.ResultAdditionalSpecFns.is_Ok.? $ (TYPE%core!result.Result.
       T&. T& E&. E&
      ) T&. T& E&. E& self!
     ) (B (is-core!result.Result./Ok (%Poly%core!result.Result. self!)))
    )
    :pattern ((vstd.std_specs.result.ResultAdditionalSpecFns.is_Ok.? $ (TYPE%core!result.Result.
       T&. T& E&. E&
      ) T&. T& E&. E& self!
    ))
    :qid internal_vstd.std_specs.result.ResultAdditionalSpecFns.is_Ok.?_definition
    :skolemid skolem_internal_vstd.std_specs.result.ResultAdditionalSpecFns.is_Ok.?_definition
))))

;; Function-Axioms core::result::Result::get_Ok_0
(assert
 (fuel_bool_default fuel%vstd.std_specs.result.impl&%0.get_Ok_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.result.impl&%0.get_Ok_0.)
  (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (self! Poly)) (!
    (= (vstd.std_specs.result.ResultAdditionalSpecFns.get_Ok_0.? $ (TYPE%core!result.Result.
       T&. T& E&. E&
      ) T&. T& E&. E& self!
     ) (core!result.Result./Ok/0 (%Poly%core!result.Result. self!))
    )
    :pattern ((vstd.std_specs.result.ResultAdditionalSpecFns.get_Ok_0.? $ (TYPE%core!result.Result.
       T&. T& E&. E&
      ) T&. T& E&. E& self!
    ))
    :qid internal_vstd.std_specs.result.ResultAdditionalSpecFns.get_Ok_0.?_definition
    :skolemid skolem_internal_vstd.std_specs.result.ResultAdditionalSpecFns.get_Ok_0.?_definition
))))

;; Function-Axioms core::result::Result::is_Err
(assert
 (fuel_bool_default fuel%vstd.std_specs.result.impl&%0.is_Err.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.result.impl&%0.is_Err.)
  (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (self! Poly)) (!
    (= (vstd.std_specs.result.ResultAdditionalSpecFns.is_Err.? $ (TYPE%core!result.Result.
       T&. T& E&. E&
      ) T&. T& E&. E& self!
     ) (B (is-core!result.Result./Err (%Poly%core!result.Result. self!)))
    )
    :pattern ((vstd.std_specs.result.ResultAdditionalSpecFns.is_Err.? $ (TYPE%core!result.Result.
       T&. T& E&. E&
      ) T&. T& E&. E& self!
    ))
    :qid internal_vstd.std_specs.result.ResultAdditionalSpecFns.is_Err.?_definition
    :skolemid skolem_internal_vstd.std_specs.result.ResultAdditionalSpecFns.is_Err.?_definition
))))

;; Function-Axioms core::result::Result::get_Err_0
(assert
 (fuel_bool_default fuel%vstd.std_specs.result.impl&%0.get_Err_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.result.impl&%0.get_Err_0.)
  (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (self! Poly)) (!
    (= (vstd.std_specs.result.ResultAdditionalSpecFns.get_Err_0.? $ (TYPE%core!result.Result.
       T&. T& E&. E&
      ) T&. T& E&. E& self!
     ) (core!result.Result./Err/0 (%Poly%core!result.Result. self!))
    )
    :pattern ((vstd.std_specs.result.ResultAdditionalSpecFns.get_Err_0.? $ (TYPE%core!result.Result.
       T&. T& E&. E&
      ) T&. T& E&. E& self!
    ))
    :qid internal_vstd.std_specs.result.ResultAdditionalSpecFns.get_Err_0.?_definition
    :skolemid skolem_internal_vstd.std_specs.result.ResultAdditionalSpecFns.get_Err_0.?_definition
))))

;; Function-Specs core::result::impl&%0::as_ref
(declare-fun ens%core!result.impl&%0.as_ref. (Dcr Type Dcr Type core!result.Result.
  core!result.Result.
 ) Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (result! core!result.Result.) (r! core!result.Result.))
  (!
   (= (ens%core!result.impl&%0.as_ref. T&. T& E&. E& result! r!) (and
     (has_type (Poly%core!result.Result. r!) (TYPE%core!result.Result. (REF T&.) T& (REF
        E&.
       ) E&
     ))
     (= (is-core!result.Result./Ok r!) (is-core!result.Result./Ok result!))
     (=>
      (is-core!result.Result./Ok r!)
      (= (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result. result!)))
       (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result. r!)))
     ))
     (= (is-core!result.Result./Err r!) (is-core!result.Result./Err result!))
     (=>
      (is-core!result.Result./Err r!)
      (= (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result. result!)))
       (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result. r!)))
   ))))
   :pattern ((ens%core!result.impl&%0.as_ref. T&. T& E&. E& result! r!))
   :qid internal_ens__core!result.impl&__0.as_ref._definition
   :skolemid skolem_internal_ens__core!result.impl&__0.as_ref._definition
)))

;; Function-Specs core::result::impl&%0::unwrap
(declare-fun req%core!result.impl&%0.unwrap. (Dcr Type Dcr Type core!result.Result.)
 Bool
)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (result! core!result.Result.)) (!
   (= (req%core!result.impl&%0.unwrap. T&. T& E&. E& result!) (=>
     %%global_location_label%%0
     (is-core!result.Result./Ok result!)
   ))
   :pattern ((req%core!result.impl&%0.unwrap. T&. T& E&. E& result!))
   :qid internal_req__core!result.impl&__0.unwrap._definition
   :skolemid skolem_internal_req__core!result.impl&__0.unwrap._definition
)))
(declare-fun ens%core!result.impl&%0.unwrap. (Dcr Type Dcr Type core!result.Result.
  Poly
 ) Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (result! core!result.Result.) (t! Poly))
  (!
   (= (ens%core!result.impl&%0.unwrap. T&. T& E&. E& result! t!) (and
     (has_type t! T&)
     (= t! (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
         result!
   ))))))
   :pattern ((ens%core!result.impl&%0.unwrap. T&. T& E&. E& result! t!))
   :qid internal_ens__core!result.impl&__0.unwrap._definition
   :skolemid skolem_internal_ens__core!result.impl&__0.unwrap._definition
)))

;; Function-Specs core::result::impl&%0::unwrap_err
(declare-fun req%core!result.impl&%0.unwrap_err. (Dcr Type Dcr Type core!result.Result.)
 Bool
)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (result! core!result.Result.)) (!
   (= (req%core!result.impl&%0.unwrap_err. T&. T& E&. E& result!) (=>
     %%global_location_label%%1
     (is-core!result.Result./Err result!)
   ))
   :pattern ((req%core!result.impl&%0.unwrap_err. T&. T& E&. E& result!))
   :qid internal_req__core!result.impl&__0.unwrap_err._definition
   :skolemid skolem_internal_req__core!result.impl&__0.unwrap_err._definition
)))
(declare-fun ens%core!result.impl&%0.unwrap_err. (Dcr Type Dcr Type core!result.Result.
  Poly
 ) Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (result! core!result.Result.) (e! Poly))
  (!
   (= (ens%core!result.impl&%0.unwrap_err. T&. T& E&. E& result! e!) (and
     (has_type e! E&)
     (= e! (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
         result!
   ))))))
   :pattern ((ens%core!result.impl&%0.unwrap_err. T&. T& E&. E& result! e!))
   :qid internal_ens__core!result.impl&__0.unwrap_err._definition
   :skolemid skolem_internal_ens__core!result.impl&__0.unwrap_err._definition
)))

;; Function-Specs core::result::impl&%0::map
(declare-fun req%core!result.impl&%0.map. (Dcr Type Dcr Type Dcr Type Dcr Type core!result.Result.
  Poly
 ) Bool
)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (U&. Dcr) (U& Type) (F&. Dcr) (F& Type)
   (result! core!result.Result.) (op! Poly)
  ) (!
   (= (req%core!result.impl&%0.map. T&. T& E&. E& U&. U& F&. F& result! op!) (=>
     %%global_location_label%%2
     (=>
      (is-core!result.Result./Ok result!)
      (closure_req F& $ (TYPE%tuple%1. T&. T&) op! (Poly%tuple%1. (tuple%1./tuple%1 (core!result.Result./Ok/0
          (%Poly%core!result.Result. (Poly%core!result.Result. result!))
   )))))))
   :pattern ((req%core!result.impl&%0.map. T&. T& E&. E& U&. U& F&. F& result! op!))
   :qid internal_req__core!result.impl&__0.map._definition
   :skolemid skolem_internal_req__core!result.impl&__0.map._definition
)))
(declare-fun ens%core!result.impl&%0.map. (Dcr Type Dcr Type Dcr Type Dcr Type core!result.Result.
  Poly core!result.Result.
 ) Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (U&. Dcr) (U& Type) (F&. Dcr) (F& Type)
   (result! core!result.Result.) (op! Poly) (mapped_result! core!result.Result.)
  ) (!
   (= (ens%core!result.impl&%0.map. T&. T& E&. E& U&. U& F&. F& result! op! mapped_result!)
    (and
     (has_type (Poly%core!result.Result. mapped_result!) (TYPE%core!result.Result. U&. U&
       E&. E&
     ))
     (=>
      (is-core!result.Result./Ok result!)
      (and
       (is-core!result.Result./Ok mapped_result!)
       (closure_ens F& $ (TYPE%tuple%1. T&. T&) op! (Poly%tuple%1. (tuple%1./tuple%1 (core!result.Result./Ok/0
           (%Poly%core!result.Result. (Poly%core!result.Result. result!))
         ))
        ) (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result. mapped_result!)))
     )))
     (=>
      (is-core!result.Result./Err result!)
      (= mapped_result! (core!result.Result./Err (core!result.Result./Err/0 (%Poly%core!result.Result.
          (Poly%core!result.Result. result!)
   )))))))
   :pattern ((ens%core!result.impl&%0.map. T&. T& E&. E& U&. U& F&. F& result! op! mapped_result!))
   :qid internal_ens__core!result.impl&__0.map._definition
   :skolemid skolem_internal_ens__core!result.impl&__0.map._definition
)))

;; Function-Axioms crate::vstd::std_specs::result::ok
(assert
 (fuel_bool_default fuel%vstd.std_specs.result.ok.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.result.ok.)
  (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (result! Poly)) (!
    (= (vstd.std_specs.result.ok.? T&. T& E&. E& result!) (ite
      (is-core!result.Result./Ok (%Poly%core!result.Result. result!))
      (let
       ((t$ (core!result.Result./Ok/0 (%Poly%core!result.Result. result!))))
       (core!option.Option./Some t$)
      )
      core!option.Option./None
    ))
    :pattern ((vstd.std_specs.result.ok.? T&. T& E&. E& result!))
    :qid internal_vstd.std_specs.result.ok.?_definition
    :skolemid skolem_internal_vstd.std_specs.result.ok.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (result! Poly)) (!
   (=>
    (has_type result! (TYPE%core!result.Result. T&. T& E&. E&))
    (has_type (Poly%core!option.Option. (vstd.std_specs.result.ok.? T&. T& E&. E& result!))
     (TYPE%core!option.Option. T&. T&)
   ))
   :pattern ((vstd.std_specs.result.ok.? T&. T& E&. E& result!))
   :qid internal_vstd.std_specs.result.ok.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.result.ok.?_pre_post_definition
)))

;; Function-Specs core::result::impl&%0::ok
(declare-fun ens%core!result.impl&%0.ok. (Dcr Type Dcr Type core!result.Result. core!option.Option.)
 Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (result! core!result.Result.) (opt!
    core!option.Option.
   )
  ) (!
   (= (ens%core!result.impl&%0.ok. T&. T& E&. E& result! opt!) (and
     (has_type (Poly%core!option.Option. opt!) (TYPE%core!option.Option. T&. T&))
     (= opt! (ite
       (is-core!result.Result./Ok result!)
       (let
        ((t$$0 (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
             result!
        )))))
        (core!option.Option./Some t$$0)
       )
       core!option.Option./None
   ))))
   :pattern ((ens%core!result.impl&%0.ok. T&. T& E&. E& result! opt!))
   :qid internal_ens__core!result.impl&__0.ok._definition
   :skolemid skolem_internal_ens__core!result.impl&__0.ok._definition
)))

;; Function-Axioms crate::vstd::std_specs::result::err
(assert
 (fuel_bool_default fuel%vstd.std_specs.result.err.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.result.err.)
  (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (result! Poly)) (!
    (= (vstd.std_specs.result.err.? T&. T& E&. E& result!) (ite
      (is-core!result.Result./Ok (%Poly%core!result.Result. result!))
      core!option.Option./None
      (let
       ((e$ (core!result.Result./Err/0 (%Poly%core!result.Result. result!))))
       (core!option.Option./Some e$)
    )))
    :pattern ((vstd.std_specs.result.err.? T&. T& E&. E& result!))
    :qid internal_vstd.std_specs.result.err.?_definition
    :skolemid skolem_internal_vstd.std_specs.result.err.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (result! Poly)) (!
   (=>
    (has_type result! (TYPE%core!result.Result. T&. T& E&. E&))
    (has_type (Poly%core!option.Option. (vstd.std_specs.result.err.? T&. T& E&. E& result!))
     (TYPE%core!option.Option. E&. E&)
   ))
   :pattern ((vstd.std_specs.result.err.? T&. T& E&. E& result!))
   :qid internal_vstd.std_specs.result.err.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.result.err.?_pre_post_definition
)))

;; Function-Specs core::result::impl&%0::err
(declare-fun ens%core!result.impl&%0.err. (Dcr Type Dcr Type core!result.Result. core!option.Option.)
 Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (result! core!result.Result.) (opt!
    core!option.Option.
   )
  ) (!
   (= (ens%core!result.impl&%0.err. T&. T& E&. E& result! opt!) (and
     (has_type (Poly%core!option.Option. opt!) (TYPE%core!option.Option. E&. E&))
     (= opt! (ite
       (is-core!result.Result./Ok result!)
       core!option.Option./None
       (let
        ((e$$0 (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
             result!
        )))))
        (core!option.Option./Some e$$0)
   )))))
   :pattern ((ens%core!result.impl&%0.err. T&. T& E&. E& result! opt!))
   :qid internal_ens__core!result.impl&__0.err._definition
   :skolemid skolem_internal_ens__core!result.impl&__0.err._definition
)))

;; Function-Specs crate::vstd::std_specs::result::spec_unwrap
(declare-fun req%vstd.std_specs.result.spec_unwrap. (Dcr Type Dcr Type Poly) Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (result! Poly)) (!
   (= (req%vstd.std_specs.result.spec_unwrap. T&. T& E&. E& result!) (=>
     %%global_location_label%%3
     (is-core!result.Result./Ok (%Poly%core!result.Result. result!))
   ))
   :pattern ((req%vstd.std_specs.result.spec_unwrap. T&. T& E&. E& result!))
   :qid internal_req__vstd.std_specs.result.spec_unwrap._definition
   :skolemid skolem_internal_req__vstd.std_specs.result.spec_unwrap._definition
)))

;; Function-Axioms crate::vstd::std_specs::result::spec_unwrap
(assert
 (fuel_bool_default fuel%vstd.std_specs.result.spec_unwrap.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.result.spec_unwrap.)
  (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (result! Poly)) (!
    (= (vstd.std_specs.result.spec_unwrap.? T&. T& E&. E& result!) (core!result.Result./Ok/0
      (%Poly%core!result.Result. result!)
    ))
    :pattern ((vstd.std_specs.result.spec_unwrap.? T&. T& E&. E& result!))
    :qid internal_vstd.std_specs.result.spec_unwrap.?_definition
    :skolemid skolem_internal_vstd.std_specs.result.spec_unwrap.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (result! Poly)) (!
   (=>
    (has_type result! (TYPE%core!result.Result. T&. T& E&. E&))
    (has_type (vstd.std_specs.result.spec_unwrap.? T&. T& E&. E& result!) T&)
   )
   :pattern ((vstd.std_specs.result.spec_unwrap.? T&. T& E&. E& result!))
   :qid internal_vstd.std_specs.result.spec_unwrap.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.result.spec_unwrap.?_pre_post_definition
)))

;; Function-Specs crate::vstd::std_specs::result::spec_unwrap_err
(declare-fun req%vstd.std_specs.result.spec_unwrap_err. (Dcr Type Dcr Type Poly) Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (result! Poly)) (!
   (= (req%vstd.std_specs.result.spec_unwrap_err. T&. T& E&. E& result!) (=>
     %%global_location_label%%4
     (is-core!result.Result./Err (%Poly%core!result.Result. result!))
   ))
   :pattern ((req%vstd.std_specs.result.spec_unwrap_err. T&. T& E&. E& result!))
   :qid internal_req__vstd.std_specs.result.spec_unwrap_err._definition
   :skolemid skolem_internal_req__vstd.std_specs.result.spec_unwrap_err._definition
)))

;; Function-Axioms crate::vstd::std_specs::result::spec_unwrap_err
(assert
 (fuel_bool_default fuel%vstd.std_specs.result.spec_unwrap_err.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.result.spec_unwrap_err.)
  (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (result! Poly)) (!
    (= (vstd.std_specs.result.spec_unwrap_err.? T&. T& E&. E& result!) (core!result.Result./Err/0
      (%Poly%core!result.Result. result!)
    ))
    :pattern ((vstd.std_specs.result.spec_unwrap_err.? T&. T& E&. E& result!))
    :qid internal_vstd.std_specs.result.spec_unwrap_err.?_definition
    :skolemid skolem_internal_vstd.std_specs.result.spec_unwrap_err.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type) (result! Poly)) (!
   (=>
    (has_type result! (TYPE%core!result.Result. T&. T& E&. E&))
    (has_type (vstd.std_specs.result.spec_unwrap_err.? T&. T& E&. E& result!) E&)
   )
   :pattern ((vstd.std_specs.result.spec_unwrap_err.? T&. T& E&. E& result!))
   :qid internal_vstd.std_specs.result.spec_unwrap_err.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.result.spec_unwrap_err.?_pre_post_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((Args&. Dcr) (Args& Type) (Output&. Dcr) (Output& Type) (F&. Dcr) (F& Type))
  (!
   (tr_bound%vstd.pervasive.FnWithRequiresEnsures. F&. F& Args&. Args& Output&. Output&)
   :pattern ((tr_bound%vstd.pervasive.FnWithRequiresEnsures. F&. F& Args&. Args& Output&.
     Output&
   ))
   :qid internal_crate__vstd__pervasive__impl&__0_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__pervasive__impl&__0_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type)) (!
   (tr_bound%vstd.std_specs.result.ResultAdditionalSpecFns. $ (TYPE%core!result.Result.
     T&. T& E&. E&
    ) T&. T& E&. E&
   )
   :pattern ((tr_bound%vstd.std_specs.result.ResultAdditionalSpecFns. $ (TYPE%core!result.Result.
      T&. T& E&. E&
     ) T&. T& E&. E&
   ))
   :qid internal_crate__vstd__std_specs__result__impl&__0_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__std_specs__result__impl&__0_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%core!fmt.Debug. T&. T&)
    (tr_bound%core!fmt.Debug. $ (TYPE%core!option.Option. T&. T&))
   )
   :pattern ((tr_bound%core!fmt.Debug. $ (TYPE%core!option.Option. T&. T&)))
   :qid internal_core__option__impl&__46_trait_impl_definition
   :skolemid skolem_internal_core__option__impl&__46_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%core!fmt.Debug. T&. T&)
    (tr_bound%core!fmt.Debug. (REF T&.) T&)
   )
   :pattern ((tr_bound%core!fmt.Debug. (REF T&.) T&))
   :qid internal_core__fmt__impl&__51_trait_impl_definition
   :skolemid skolem_internal_core__fmt__impl&__51_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!fmt.Debug. $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%core!fmt.Debug. T&. T&)
    (tr_bound%core!fmt.Debug. $ (TYPE%tuple%1. T&. T&))
   )
   :pattern ((tr_bound%core!fmt.Debug. $ (TYPE%tuple%1. T&. T&)))
   :qid internal_core__fmt__impl&__78_trait_impl_definition
   :skolemid skolem_internal_core__fmt__impl&__78_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (E&. Dcr) (E& Type)) (!
   (=>
    (and
     (tr_bound%core!fmt.Debug. T&. T&)
     (tr_bound%core!fmt.Debug. E&. E&)
    )
    (tr_bound%core!fmt.Debug. $ (TYPE%core!result.Result. T&. T& E&. E&))
   )
   :pattern ((tr_bound%core!fmt.Debug. $ (TYPE%core!result.Result. T&. T& E&. E&)))
   :qid internal_core__result__impl&__36_trait_impl_definition
   :skolemid skolem_internal_core__result__impl&__36_trait_impl_definition
)))
