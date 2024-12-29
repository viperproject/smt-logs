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

;; MODULE 'module vstd::shared'

;; Fuel
(declare-const fuel%vstd.shared.impl&%0.view. FuelId)
(assert
 true
)

;; Datatypes
(declare-datatypes ((core!option.Option. 0) (vstd.shared.Shared. 0)) (((core!option.Option./None)
   (core!option.Option./Some (core!option.Option./Some/?0 Poly))
  ) ((vstd.shared.Shared./Shared (vstd.shared.Shared./Shared/?inst Poly)))
))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun vstd.shared.Shared./Shared/inst (vstd.shared.Shared.) Poly)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-fun TYPE%vstd.shared.Dupe.Instance. (Dcr Type) Type)
(declare-fun TYPE%vstd.shared.Shared. (Dcr Type) Type)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
(declare-fun Poly%vstd.shared.Shared. (vstd.shared.Shared.) Poly)
(declare-fun %Poly%vstd.shared.Shared. (Poly) vstd.shared.Shared.)
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
 (forall ((x vstd.shared.Shared.)) (!
   (= x (%Poly%vstd.shared.Shared. (Poly%vstd.shared.Shared. x)))
   :pattern ((Poly%vstd.shared.Shared. x))
   :qid internal_crate__vstd__shared__Shared_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__shared__Shared_box_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.shared.Shared. T&. T&))
    (= x (Poly%vstd.shared.Shared. (%Poly%vstd.shared.Shared. x)))
   )
   :pattern ((has_type x (TYPE%vstd.shared.Shared. T&. T&)))
   :qid internal_crate__vstd__shared__Shared_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__shared__Shared_unbox_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (_inst! Poly)) (!
   (=>
    (has_type _inst! (TYPE%vstd.shared.Dupe.Instance. T&. T&))
    (has_type (Poly%vstd.shared.Shared. (vstd.shared.Shared./Shared _inst!)) (TYPE%vstd.shared.Shared.
      T&. T&
   )))
   :pattern ((has_type (Poly%vstd.shared.Shared. (vstd.shared.Shared./Shared _inst!))
     (TYPE%vstd.shared.Shared. T&. T&)
   ))
   :qid internal_vstd.shared.Shared./Shared_constructor_definition
   :skolemid skolem_internal_vstd.shared.Shared./Shared_constructor_definition
)))
(assert
 (forall ((x vstd.shared.Shared.)) (!
   (= (vstd.shared.Shared./Shared/inst x) (vstd.shared.Shared./Shared/?inst x))
   :pattern ((vstd.shared.Shared./Shared/inst x))
   :qid internal_vstd.shared.Shared./Shared/inst_accessor_definition
   :skolemid skolem_internal_vstd.shared.Shared./Shared/inst_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.shared.Shared. T&. T&))
    (has_type (vstd.shared.Shared./Shared/inst (%Poly%vstd.shared.Shared. x)) (TYPE%vstd.shared.Dupe.Instance.
      T&. T&
   )))
   :pattern ((vstd.shared.Shared./Shared/inst (%Poly%vstd.shared.Shared. x)) (has_type
     x (TYPE%vstd.shared.Shared. T&. T&)
   ))
   :qid internal_vstd.shared.Shared./Shared/inst_invariant_definition
   :skolemid skolem_internal_vstd.shared.Shared./Shared/inst_invariant_definition
)))
(assert
 (forall ((x vstd.shared.Shared.)) (!
   (=>
    (is-vstd.shared.Shared./Shared x)
    (height_lt (height (vstd.shared.Shared./Shared/inst x)) (height (Poly%vstd.shared.Shared.
       x
   ))))
   :pattern ((height (vstd.shared.Shared./Shared/inst x)))
   :qid prelude_datatype_height_vstd.shared.Shared./Shared/inst
   :skolemid skolem_prelude_datatype_height_vstd.shared.Shared./Shared/inst
)))

;; Function-Decl crate::vstd::shared::Dupe::Instance::val
(declare-fun vstd.shared.Dupe.impl&%4.val.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::shared::Shared::view
(declare-fun vstd.shared.impl&%0.view.? (Dcr Type Poly) Poly)

;; Function-Specs crate::vstd::shared::Dupe::Instance::clone
(declare-fun ens%vstd.shared.Dupe.impl&%4.clone. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly) (s! Poly)) (!
   (= (ens%vstd.shared.Dupe.impl&%4.clone. T&. T& self! s!) (and
     (has_type s! (TYPE%vstd.shared.Dupe.Instance. T&. T&))
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

;; Function-Axioms crate::vstd::shared::Shared::view
(assert
 (fuel_bool_default fuel%vstd.shared.impl&%0.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.shared.impl&%0.view.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.shared.impl&%0.view.? T&. T& self!) (vstd.shared.Dupe.impl&%4.val.? T&. T&
      (vstd.shared.Shared./Shared/inst (%Poly%vstd.shared.Shared. self!))
    ))
    :pattern ((vstd.shared.impl&%0.view.? T&. T& self!))
    :qid internal_vstd.shared.impl&__0.view.?_definition
    :skolemid skolem_internal_vstd.shared.impl&__0.view.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.shared.Shared. T&. T&))
    (has_type (vstd.shared.impl&%0.view.? T&. T& self!) T&)
   )
   :pattern ((vstd.shared.impl&%0.view.? T&. T& self!))
   :qid internal_vstd.shared.impl&__0.view.?_pre_post_definition
   :skolemid skolem_internal_vstd.shared.impl&__0.view.?_pre_post_definition
)))

;; Function-Specs crate::vstd::shared::Dupe::Instance::initialize_one
(declare-fun req%vstd.shared.Dupe.impl&%4.initialize_one. (Dcr Type Poly core!option.Option.)
 Bool
)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (t! Poly) (param_token_storage! core!option.Option.))
  (!
   (= (req%vstd.shared.Dupe.impl&%4.initialize_one. T&. T& t! param_token_storage!) (
     =>
     %%global_location_label%%0
     (= param_token_storage! (core!option.Option./Some t!))
   ))
   :pattern ((req%vstd.shared.Dupe.impl&%4.initialize_one. T&. T& t! param_token_storage!))
   :qid internal_req__vstd.shared.Dupe.impl&__4.initialize_one._definition
   :skolemid skolem_internal_req__vstd.shared.Dupe.impl&__4.initialize_one._definition
)))
(declare-fun ens%vstd.shared.Dupe.impl&%4.initialize_one. (Dcr Type Poly core!option.Option.
  Poly
 ) Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (t! Poly) (param_token_storage! core!option.Option.) (
    instance! Poly
   )
  ) (!
   (= (ens%vstd.shared.Dupe.impl&%4.initialize_one. T&. T& t! param_token_storage! instance!)
    (and
     (has_type instance! (TYPE%vstd.shared.Dupe.Instance. T&. T&))
     (= (vstd.shared.Dupe.impl&%4.val.? T&. T& instance!) t!)
   ))
   :pattern ((ens%vstd.shared.Dupe.impl&%4.initialize_one. T&. T& t! param_token_storage!
     instance!
   ))
   :qid internal_ens__vstd.shared.Dupe.impl&__4.initialize_one._definition
   :skolemid skolem_internal_ens__vstd.shared.Dupe.impl&__4.initialize_one._definition
)))

;; Function-Specs crate::vstd::shared::Dupe::Instance::borrow
(declare-fun ens%vstd.shared.Dupe.impl&%4.borrow. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly) (param_token_0_storage! Poly)) (!
   (= (ens%vstd.shared.Dupe.impl&%4.borrow. T&. T& self! param_token_0_storage!) (and
     (has_type param_token_0_storage! T&)
     (= param_token_0_storage! (vstd.shared.Dupe.impl&%4.val.? T&. T& self!))
   ))
   :pattern ((ens%vstd.shared.Dupe.impl&%4.borrow. T&. T& self! param_token_0_storage!))
   :qid internal_ens__vstd.shared.Dupe.impl&__4.borrow._definition
   :skolemid skolem_internal_ens__vstd.shared.Dupe.impl&__4.borrow._definition
)))

;; Function-Specs crate::vstd::shared::Shared::new
(declare-fun ens%vstd.shared.impl&%0.new. (Dcr Type Poly vstd.shared.Shared.) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (t! Poly) (s! vstd.shared.Shared.)) (!
   (= (ens%vstd.shared.impl&%0.new. T&. T& t! s!) (and
     (has_type (Poly%vstd.shared.Shared. s!) (TYPE%vstd.shared.Shared. T&. T&))
     (= (vstd.shared.impl&%0.view.? T&. T& (Poly%vstd.shared.Shared. s!)) t!)
   ))
   :pattern ((ens%vstd.shared.impl&%0.new. T&. T& t! s!))
   :qid internal_ens__vstd.shared.impl&__0.new._definition
   :skolemid skolem_internal_ens__vstd.shared.impl&__0.new._definition
)))

;; Function-Def crate::vstd::shared::Shared::new
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/shared.rs:55:5: 55:55 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const s! vstd.shared.Shared.)
 (declare-const t! Poly)
 (declare-const tmp%1 core!option.Option.)
 (declare-const inst@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type t! T&)
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= tmp%1 (core!option.Option./Some t!))
    (and
     (=>
      %%location_label%%0
      (req%vstd.shared.Dupe.impl&%4.initialize_one. T&. T& t! tmp%1)
     )
     (=>
      (ens%vstd.shared.Dupe.impl&%4.initialize_one. T&. T& t! tmp%1 inst@)
      (=>
       (= s! (vstd.shared.Shared./Shared inst@))
       (=>
        %%location_label%%1
        (= (vstd.shared.impl&%0.view.? T&. T& (Poly%vstd.shared.Shared. s!)) t!)
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::shared::Shared::clone
(declare-fun ens%vstd.shared.impl&%0.clone. (Dcr Type vstd.shared.Shared. vstd.shared.Shared.)
 Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (self! vstd.shared.Shared.) (other! vstd.shared.Shared.))
  (!
   (= (ens%vstd.shared.impl&%0.clone. T&. T& self! other!) (and
     (has_type (Poly%vstd.shared.Shared. other!) (TYPE%vstd.shared.Shared. T&. T&))
     (= (vstd.shared.impl&%0.view.? T&. T& (Poly%vstd.shared.Shared. self!)) (vstd.shared.impl&%0.view.?
       T&. T& (Poly%vstd.shared.Shared. other!)
   ))))
   :pattern ((ens%vstd.shared.impl&%0.clone. T&. T& self! other!))
   :qid internal_ens__vstd.shared.impl&__0.clone._definition
   :skolemid skolem_internal_ens__vstd.shared.impl&__0.clone._definition
)))

;; Function-Def crate::vstd::shared::Shared::clone
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/shared.rs:63:5: 63:62 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const other! vstd.shared.Shared.)
 (declare-const self! vstd.shared.Shared.)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.shared.Shared. self!) (TYPE%vstd.shared.Shared. T&. T&))
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%2 (vstd.shared.Shared./Shared/inst (%Poly%vstd.shared.Shared. (Poly%vstd.shared.Shared.
        self!
    ))))
    (=>
     (ens%vstd.shared.Dupe.impl&%4.clone. T&. T& tmp%2 tmp%1)
     (=>
      (= other! (vstd.shared.Shared./Shared tmp%1))
      (=>
       %%location_label%%0
       (= (vstd.shared.impl&%0.view.? T&. T& (Poly%vstd.shared.Shared. self!)) (vstd.shared.impl&%0.view.?
         T&. T& (Poly%vstd.shared.Shared. other!)
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::shared::Shared::borrow
(declare-fun ens%vstd.shared.impl&%0.borrow. (Dcr Type vstd.shared.Shared. Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (self! vstd.shared.Shared.) (t! Poly)) (!
   (= (ens%vstd.shared.impl&%0.borrow. T&. T& self! t!) (and
     (has_type t! T&)
     (= t! (vstd.shared.impl&%0.view.? T&. T& (Poly%vstd.shared.Shared. self!)))
   ))
   :pattern ((ens%vstd.shared.impl&%0.borrow. T&. T& self! t!))
   :qid internal_ens__vstd.shared.impl&__0.borrow._definition
   :skolemid skolem_internal_ens__vstd.shared.impl&__0.borrow._definition
)))

;; Function-Def crate::vstd::shared::Shared::borrow
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/shared.rs:70:5: 70:57 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const t! Poly)
 (declare-const self! vstd.shared.Shared.)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.shared.Shared. self!) (TYPE%vstd.shared.Shared. T&. T&))
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%2 (vstd.shared.Shared./Shared/inst (%Poly%vstd.shared.Shared. (Poly%vstd.shared.Shared.
        self!
    ))))
    (=>
     (ens%vstd.shared.Dupe.impl&%4.borrow. T&. T& tmp%2 tmp%1)
     (=>
      (= t! tmp%1)
      (=>
       %%location_label%%0
       (= t! (vstd.shared.impl&%0.view.? T&. T& (Poly%vstd.shared.Shared. self!)))
 ))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
