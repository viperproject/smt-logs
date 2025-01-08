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
(declare-const fuel%impl&%0.arrow_0. FuelId)
(declare-const fuel%impl&%0.arrow_Some_0. FuelId)
(declare-const fuel%some_fn. FuelId)
(declare-const fuel%impl&%1.arrow_1. FuelId)
(declare-const fuel%impl&%1.arrow_0. FuelId)
(declare-const fuel%impl&%1.arrow_Bar_0. FuelId)
(declare-const fuel%impl&%1.arrow_Bar_1. FuelId)
(declare-const fuel%impl&%1.arrow_Qux_0. FuelId)
(declare-const fuel%impl&%1.arrow_Zaz_0. FuelId)
(assert
 (distinct fuel%impl&%0.arrow_0. fuel%impl&%0.arrow_Some_0. fuel%some_fn. fuel%impl&%1.arrow_1.
  fuel%impl&%1.arrow_0. fuel%impl&%1.arrow_Bar_0. fuel%impl&%1.arrow_Bar_1. fuel%impl&%1.arrow_Qux_0.
  fuel%impl&%1.arrow_Zaz_0.
))

;; Datatypes
(declare-datatypes ((Opt. 0) (Foo. 0) (tuple%0. 0) (tuple%2. 0)) (((Opt./Some (Opt./Some/?0
     Poly
    )
   ) (Opt./None)
  ) ((Foo./Bar (Foo./Bar/?0 Int) (Foo./Bar/?1 Opt.)) (Foo./Qux (Foo./Qux/?0 Opt.)) (
    Foo./Zaz (Foo./Zaz/?0 Bool)
   )
  ) ((tuple%0./tuple%0)) ((tuple%2./tuple%2 (tuple%2./tuple%2/?0 Poly) (tuple%2./tuple%2/?1
     Poly
)))))
(declare-fun Opt./Some/0 (Opt.) Poly)
(declare-fun Foo./Bar/0 (Foo.) Int)
(declare-fun Foo./Bar/1 (Foo.) Opt.)
(declare-fun Foo./Qux/0 (Foo.) Opt.)
(declare-fun Foo./Zaz/0 (Foo.) Bool)
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-fun TYPE%Opt. (Dcr Type) Type)
(declare-const TYPE%Foo. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%2. (Dcr Type Dcr Type) Type)
(declare-fun Poly%Opt. (Opt.) Poly)
(declare-fun %Poly%Opt. (Poly) Opt.)
(declare-fun Poly%Foo. (Foo.) Poly)
(declare-fun %Poly%Foo. (Poly) Foo.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%2. (tuple%2.) Poly)
(declare-fun %Poly%tuple%2. (Poly) tuple%2.)
(assert
 (forall ((x Opt.)) (!
   (= x (%Poly%Opt. (Poly%Opt. x)))
   :pattern ((Poly%Opt. x))
   :qid internal_crate__Opt_box_axiom_definition
   :skolemid skolem_internal_crate__Opt_box_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%Opt. V&. V&))
    (= x (Poly%Opt. (%Poly%Opt. x)))
   )
   :pattern ((has_type x (TYPE%Opt. V&. V&)))
   :qid internal_crate__Opt_unbox_axiom_definition
   :skolemid skolem_internal_crate__Opt_unbox_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (_0! Poly)) (!
   (=>
    (has_type _0! V&)
    (has_type (Poly%Opt. (Opt./Some _0!)) (TYPE%Opt. V&. V&))
   )
   :pattern ((has_type (Poly%Opt. (Opt./Some _0!)) (TYPE%Opt. V&. V&)))
   :qid internal_Opt./Some_constructor_definition
   :skolemid skolem_internal_Opt./Some_constructor_definition
)))
(assert
 (forall ((x Opt.)) (!
   (= (Opt./Some/0 x) (Opt./Some/?0 x))
   :pattern ((Opt./Some/0 x))
   :qid internal_Opt./Some/0_accessor_definition
   :skolemid skolem_internal_Opt./Some/0_accessor_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%Opt. V&. V&))
    (has_type (Opt./Some/0 (%Poly%Opt. x)) V&)
   )
   :pattern ((Opt./Some/0 (%Poly%Opt. x)) (has_type x (TYPE%Opt. V&. V&)))
   :qid internal_Opt./Some/0_invariant_definition
   :skolemid skolem_internal_Opt./Some/0_invariant_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type)) (!
   (has_type (Poly%Opt. Opt./None) (TYPE%Opt. V&. V&))
   :pattern ((has_type (Poly%Opt. Opt./None) (TYPE%Opt. V&. V&)))
   :qid internal_Opt./None_constructor_definition
   :skolemid skolem_internal_Opt./None_constructor_definition
)))
(assert
 (forall ((x Opt.)) (!
   (=>
    (is-Opt./Some x)
    (height_lt (height (Opt./Some/0 x)) (height (Poly%Opt. x)))
   )
   :pattern ((height (Opt./Some/0 x)))
   :qid prelude_datatype_height_Opt./Some/0
   :skolemid skolem_prelude_datatype_height_Opt./Some/0
)))
(assert
 (forall ((x Foo.)) (!
   (= x (%Poly%Foo. (Poly%Foo. x)))
   :pattern ((Poly%Foo. x))
   :qid internal_crate__Foo_box_axiom_definition
   :skolemid skolem_internal_crate__Foo_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%Foo.)
    (= x (Poly%Foo. (%Poly%Foo. x)))
   )
   :pattern ((has_type x TYPE%Foo.))
   :qid internal_crate__Foo_unbox_axiom_definition
   :skolemid skolem_internal_crate__Foo_unbox_axiom_definition
)))
(assert
 (forall ((_0! Int) (_1! Opt.)) (!
   (=>
    (and
     (uInv 8 _0!)
     (has_type (Poly%Opt. _1!) (TYPE%Opt. $ (UINT 8)))
    )
    (has_type (Poly%Foo. (Foo./Bar _0! _1!)) TYPE%Foo.)
   )
   :pattern ((has_type (Poly%Foo. (Foo./Bar _0! _1!)) TYPE%Foo.))
   :qid internal_Foo./Bar_constructor_definition
   :skolemid skolem_internal_Foo./Bar_constructor_definition
)))
(assert
 (forall ((x Foo.)) (!
   (= (Foo./Bar/0 x) (Foo./Bar/?0 x))
   :pattern ((Foo./Bar/0 x))
   :qid internal_Foo./Bar/0_accessor_definition
   :skolemid skolem_internal_Foo./Bar/0_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%Foo.)
    (uInv 8 (Foo./Bar/0 (%Poly%Foo. x)))
   )
   :pattern ((Foo./Bar/0 (%Poly%Foo. x)) (has_type x TYPE%Foo.))
   :qid internal_Foo./Bar/0_invariant_definition
   :skolemid skolem_internal_Foo./Bar/0_invariant_definition
)))
(assert
 (forall ((x Foo.)) (!
   (= (Foo./Bar/1 x) (Foo./Bar/?1 x))
   :pattern ((Foo./Bar/1 x))
   :qid internal_Foo./Bar/1_accessor_definition
   :skolemid skolem_internal_Foo./Bar/1_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%Foo.)
    (has_type (Poly%Opt. (Foo./Bar/1 (%Poly%Foo. x))) (TYPE%Opt. $ (UINT 8)))
   )
   :pattern ((Foo./Bar/1 (%Poly%Foo. x)) (has_type x TYPE%Foo.))
   :qid internal_Foo./Bar/1_invariant_definition
   :skolemid skolem_internal_Foo./Bar/1_invariant_definition
)))
(assert
 (forall ((_0! Opt.)) (!
   (=>
    (has_type (Poly%Opt. _0!) (TYPE%Opt. $ (UINT 8)))
    (has_type (Poly%Foo. (Foo./Qux _0!)) TYPE%Foo.)
   )
   :pattern ((has_type (Poly%Foo. (Foo./Qux _0!)) TYPE%Foo.))
   :qid internal_Foo./Qux_constructor_definition
   :skolemid skolem_internal_Foo./Qux_constructor_definition
)))
(assert
 (forall ((x Foo.)) (!
   (= (Foo./Qux/0 x) (Foo./Qux/?0 x))
   :pattern ((Foo./Qux/0 x))
   :qid internal_Foo./Qux/0_accessor_definition
   :skolemid skolem_internal_Foo./Qux/0_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%Foo.)
    (has_type (Poly%Opt. (Foo./Qux/0 (%Poly%Foo. x))) (TYPE%Opt. $ (UINT 8)))
   )
   :pattern ((Foo./Qux/0 (%Poly%Foo. x)) (has_type x TYPE%Foo.))
   :qid internal_Foo./Qux/0_invariant_definition
   :skolemid skolem_internal_Foo./Qux/0_invariant_definition
)))
(assert
 (forall ((_0! Bool)) (!
   (has_type (Poly%Foo. (Foo./Zaz _0!)) TYPE%Foo.)
   :pattern ((has_type (Poly%Foo. (Foo./Zaz _0!)) TYPE%Foo.))
   :qid internal_Foo./Zaz_constructor_definition
   :skolemid skolem_internal_Foo./Zaz_constructor_definition
)))
(assert
 (forall ((x Foo.)) (!
   (= (Foo./Zaz/0 x) (Foo./Zaz/?0 x))
   :pattern ((Foo./Zaz/0 x))
   :qid internal_Foo./Zaz/0_accessor_definition
   :skolemid skolem_internal_Foo./Zaz/0_accessor_definition
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

;; Function-Decl crate::Opt::arrow_0
(declare-fun impl&%0.arrow_0.? (Dcr Type Poly) Poly)

;; Function-Decl crate::Opt::arrow_Some_0
(declare-fun impl&%0.arrow_Some_0.? (Dcr Type Poly) Poly)

;; Function-Decl crate::some_fn
(declare-fun some_fn.? (Poly) tuple%2.)

;; Function-Decl crate::Foo::arrow_1
(declare-fun impl&%1.arrow_1.? (Poly) Opt.)

;; Function-Decl crate::Foo::arrow_0
(declare-fun impl&%1.arrow_0.? (Poly) Bool)

;; Function-Decl crate::Foo::arrow_Bar_0
(declare-fun impl&%1.arrow_Bar_0.? (Poly) Int)

;; Function-Decl crate::Foo::arrow_Bar_1
(declare-fun impl&%1.arrow_Bar_1.? (Poly) Opt.)

;; Function-Decl crate::Foo::arrow_Qux_0
(declare-fun impl&%1.arrow_Qux_0.? (Poly) Opt.)

;; Function-Decl crate::Foo::arrow_Zaz_0
(declare-fun impl&%1.arrow_Zaz_0.? (Poly) Bool)

;; Function-Axioms crate::Opt::arrow_0
(assert
 (fuel_bool_default fuel%impl&%0.arrow_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%0.arrow_0.)
  (forall ((V&. Dcr) (V& Type) (self! Poly)) (!
    (= (impl&%0.arrow_0.? V&. V& self!) (Opt./Some/0 (%Poly%Opt. self!)))
    :pattern ((impl&%0.arrow_0.? V&. V& self!))
    :qid internal_impl&__0.arrow_0.?_definition
    :skolemid skolem_internal_impl&__0.arrow_0.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%Opt. V&. V&))
    (has_type (impl&%0.arrow_0.? V&. V& self!) V&)
   )
   :pattern ((impl&%0.arrow_0.? V&. V& self!))
   :qid internal_impl&__0.arrow_0.?_pre_post_definition
   :skolemid skolem_internal_impl&__0.arrow_0.?_pre_post_definition
)))

;; Function-Axioms crate::Opt::arrow_Some_0
(assert
 (fuel_bool_default fuel%impl&%0.arrow_Some_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%0.arrow_Some_0.)
  (forall ((V&. Dcr) (V& Type) (self! Poly)) (!
    (= (impl&%0.arrow_Some_0.? V&. V& self!) (Opt./Some/0 (%Poly%Opt. self!)))
    :pattern ((impl&%0.arrow_Some_0.? V&. V& self!))
    :qid internal_impl&__0.arrow_Some_0.?_definition
    :skolemid skolem_internal_impl&__0.arrow_Some_0.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%Opt. V&. V&))
    (has_type (impl&%0.arrow_Some_0.? V&. V& self!) V&)
   )
   :pattern ((impl&%0.arrow_Some_0.? V&. V& self!))
   :qid internal_impl&__0.arrow_Some_0.?_pre_post_definition
   :skolemid skolem_internal_impl&__0.arrow_Some_0.?_pre_post_definition
)))

;; Function-Axioms crate::some_fn
(assert
 (fuel_bool_default fuel%some_fn.)
)
(assert
 (=>
  (fuel_bool fuel%some_fn.)
  (forall ((x! Poly)) (!
    (= (some_fn.? x!) (ite
      (and
       (is-Opt./Some (%Poly%Opt. x!))
       (is-Opt./Some (%Poly%Opt. (Opt./Some/0 (%Poly%Opt. x!))))
      )
      (let
       ((z$ (%I (Opt./Some/0 (%Poly%Opt. (Opt./Some/0 (%Poly%Opt. x!)))))))
       (let
        ((y$ (%Poly%Opt. (Opt./Some/0 (%Poly%Opt. x!)))))
        (tuple%2./tuple%2 (I z$) (Poly%Opt. y$))
      ))
      (ite
       (and
        (is-Opt./Some (%Poly%Opt. x!))
        (is-Opt./None (%Poly%Opt. (Opt./Some/0 (%Poly%Opt. x!))))
       )
       (let
        ((y$ (%Poly%Opt. (Opt./Some/0 (%Poly%Opt. x!)))))
        (tuple%2./tuple%2 (I 0) (Poly%Opt. y$))
       )
       (tuple%2./tuple%2 (I 1) (Poly%Opt. Opt./None))
    )))
    :pattern ((some_fn.? x!))
    :qid internal_some_fn.?_definition
    :skolemid skolem_internal_some_fn.?_definition
))))
(assert
 (forall ((x! Poly)) (!
   (=>
    (has_type x! (TYPE%Opt. $ (TYPE%Opt. $ (UINT 8))))
    (has_type (Poly%tuple%2. (some_fn.? x!)) (TYPE%tuple%2. $ (UINT 8) $ (TYPE%Opt. $ (UINT
        8
   )))))
   :pattern ((some_fn.? x!))
   :qid internal_some_fn.?_pre_post_definition
   :skolemid skolem_internal_some_fn.?_pre_post_definition
)))

;; Function-Axioms crate::Foo::arrow_1
(assert
 (fuel_bool_default fuel%impl&%1.arrow_1.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%1.arrow_1.)
  (forall ((self! Poly)) (!
    (= (impl&%1.arrow_1.? self!) (Foo./Bar/1 (%Poly%Foo. self!)))
    :pattern ((impl&%1.arrow_1.? self!))
    :qid internal_impl&__1.arrow_1.?_definition
    :skolemid skolem_internal_impl&__1.arrow_1.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%Foo.)
    (has_type (Poly%Opt. (impl&%1.arrow_1.? self!)) (TYPE%Opt. $ (UINT 8)))
   )
   :pattern ((impl&%1.arrow_1.? self!))
   :qid internal_impl&__1.arrow_1.?_pre_post_definition
   :skolemid skolem_internal_impl&__1.arrow_1.?_pre_post_definition
)))

;; Function-Axioms crate::Foo::arrow_0
(assert
 (fuel_bool_default fuel%impl&%1.arrow_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%1.arrow_0.)
  (forall ((self! Poly)) (!
    (= (impl&%1.arrow_0.? self!) (Foo./Zaz/0 (%Poly%Foo. self!)))
    :pattern ((impl&%1.arrow_0.? self!))
    :qid internal_impl&__1.arrow_0.?_definition
    :skolemid skolem_internal_impl&__1.arrow_0.?_definition
))))

;; Function-Axioms crate::Foo::arrow_Bar_0
(assert
 (fuel_bool_default fuel%impl&%1.arrow_Bar_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%1.arrow_Bar_0.)
  (forall ((self! Poly)) (!
    (= (impl&%1.arrow_Bar_0.? self!) (Foo./Bar/0 (%Poly%Foo. self!)))
    :pattern ((impl&%1.arrow_Bar_0.? self!))
    :qid internal_impl&__1.arrow_Bar_0.?_definition
    :skolemid skolem_internal_impl&__1.arrow_Bar_0.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%Foo.)
    (uInv 8 (impl&%1.arrow_Bar_0.? self!))
   )
   :pattern ((impl&%1.arrow_Bar_0.? self!))
   :qid internal_impl&__1.arrow_Bar_0.?_pre_post_definition
   :skolemid skolem_internal_impl&__1.arrow_Bar_0.?_pre_post_definition
)))

;; Function-Axioms crate::Foo::arrow_Bar_1
(assert
 (fuel_bool_default fuel%impl&%1.arrow_Bar_1.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%1.arrow_Bar_1.)
  (forall ((self! Poly)) (!
    (= (impl&%1.arrow_Bar_1.? self!) (Foo./Bar/1 (%Poly%Foo. self!)))
    :pattern ((impl&%1.arrow_Bar_1.? self!))
    :qid internal_impl&__1.arrow_Bar_1.?_definition
    :skolemid skolem_internal_impl&__1.arrow_Bar_1.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%Foo.)
    (has_type (Poly%Opt. (impl&%1.arrow_Bar_1.? self!)) (TYPE%Opt. $ (UINT 8)))
   )
   :pattern ((impl&%1.arrow_Bar_1.? self!))
   :qid internal_impl&__1.arrow_Bar_1.?_pre_post_definition
   :skolemid skolem_internal_impl&__1.arrow_Bar_1.?_pre_post_definition
)))

;; Function-Axioms crate::Foo::arrow_Qux_0
(assert
 (fuel_bool_default fuel%impl&%1.arrow_Qux_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%1.arrow_Qux_0.)
  (forall ((self! Poly)) (!
    (= (impl&%1.arrow_Qux_0.? self!) (Foo./Qux/0 (%Poly%Foo. self!)))
    :pattern ((impl&%1.arrow_Qux_0.? self!))
    :qid internal_impl&__1.arrow_Qux_0.?_definition
    :skolemid skolem_internal_impl&__1.arrow_Qux_0.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%Foo.)
    (has_type (Poly%Opt. (impl&%1.arrow_Qux_0.? self!)) (TYPE%Opt. $ (UINT 8)))
   )
   :pattern ((impl&%1.arrow_Qux_0.? self!))
   :qid internal_impl&__1.arrow_Qux_0.?_pre_post_definition
   :skolemid skolem_internal_impl&__1.arrow_Qux_0.?_pre_post_definition
)))

;; Function-Axioms crate::Foo::arrow_Zaz_0
(assert
 (fuel_bool_default fuel%impl&%1.arrow_Zaz_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%1.arrow_Zaz_0.)
  (forall ((self! Poly)) (!
    (= (impl&%1.arrow_Zaz_0.? self!) (Foo./Zaz/0 (%Poly%Foo. self!)))
    :pattern ((impl&%1.arrow_Zaz_0.? self!))
    :qid internal_impl&__1.arrow_Zaz_0.?_definition
    :skolemid skolem_internal_impl&__1.arrow_Zaz_0.?_definition
))))

;; Function-Def crate::test1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/match-4460c9f52e99806e-at_patterns/test.rs:22:1: 22:27 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Opt.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const z@ Int)
 (declare-const y@ Opt.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%Opt. x!) (TYPE%Opt. $ (TYPE%Opt. $ (UINT 8))))
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (or
    (and
     (=>
      (and
       (is-Opt./Some x!)
       (is-Opt./None (%Poly%Opt. (Opt./Some/0 (%Poly%Opt. (Poly%Opt. x!)))))
      )
      %%switch_label%%0
     )
     (=>
      (not (and
        (is-Opt./Some x!)
        (is-Opt./None (%Poly%Opt. (Opt./Some/0 (%Poly%Opt. (Poly%Opt. x!)))))
      ))
      (or
       (and
        (=>
         (and
          (is-Opt./Some x!)
          (is-Opt./Some (%Poly%Opt. (Opt./Some/0 (%Poly%Opt. (Poly%Opt. x!)))))
         )
         (=>
          (= z@ (%I (Opt./Some/0 (%Poly%Opt. (Opt./Some/0 (%Poly%Opt. (Poly%Opt. x!)))))))
          (=>
           (= y@ (%Poly%Opt. (Opt./Some/0 (%Poly%Opt. (Poly%Opt. x!)))))
           (=>
            (= tmp%1 (= x! (Opt./Some (Poly%Opt. (Opt./Some (I z@))))))
            (and
             (=>
              %%location_label%%0
              tmp%1
             )
             (=>
              tmp%1
              (=>
               (= tmp%2 (= y@ (Opt./Some (I z@))))
               (and
                (=>
                 %%location_label%%1
                 tmp%2
                )
                (=>
                 tmp%2
                 %%switch_label%%1
        )))))))))
        (=>
         (not (and
           (is-Opt./Some x!)
           (is-Opt./Some (%Poly%Opt. (Opt./Some/0 (%Poly%Opt. (Poly%Opt. x!)))))
         ))
         %%switch_label%%1
       ))
       (and
        (not %%switch_label%%1)
        %%switch_label%%0
    ))))
    (not %%switch_label%%0)
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/match-4460c9f52e99806e-at_patterns/test.rs:34:1: 34:27 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Opt.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const z@ Int)
 (declare-const y@ Opt.)
 (declare-const tmp%3 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%Opt. x!) (TYPE%Opt. $ (TYPE%Opt. $ (UINT 8))))
 )
 (declare-const %%switch_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (or
    (and
     (=>
      (and
       (is-Opt./Some x!)
       (is-Opt./Some (%Poly%Opt. (Opt./Some/0 (%Poly%Opt. (Poly%Opt. x!)))))
      )
      (=>
       (= z@ (%I (Opt./Some/0 (%Poly%Opt. (Opt./Some/0 (%Poly%Opt. (Poly%Opt. x!)))))))
       (=>
        (= y@ (%Poly%Opt. (Opt./Some/0 (%Poly%Opt. (Poly%Opt. x!)))))
        (=>
         (= tmp%1 (= x! (Opt./Some (Poly%Opt. (Opt./Some (I z@))))))
         (and
          (=>
           %%location_label%%0
           tmp%1
          )
          (=>
           tmp%1
           (=>
            (= tmp%2 (= y@ (Opt./Some (I z@))))
            (and
             (=>
              %%location_label%%1
              tmp%2
             )
             (=>
              tmp%2
              %%switch_label%%0
     )))))))))
     (=>
      (not (and
        (is-Opt./Some x!)
        (is-Opt./Some (%Poly%Opt. (Opt./Some/0 (%Poly%Opt. (Poly%Opt. x!)))))
      ))
      (=>
       (= tmp%3 (or
         (is-Opt./None x!)
         (is-Opt./None (%Poly%Opt. (Opt./Some/0 (%Poly%Opt. (Poly%Opt. x!)))))
       ))
       (and
        (=>
         %%location_label%%2
         tmp%3
        )
        (=>
         tmp%3
         %%switch_label%%0
    )))))
    (not %%switch_label%%0)
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/match-4460c9f52e99806e-at_patterns/test.rs:46:1: 46:27 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Opt.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const z@ Int)
 (declare-const y@ Opt.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%Opt. x!) (TYPE%Opt. $ (TYPE%Opt. $ (UINT 8))))
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (or
    (and
     (=>
      (and
       (is-Opt./Some x!)
       (is-Opt./None (%Poly%Opt. (Opt./Some/0 (%Poly%Opt. (Poly%Opt. x!)))))
      )
      %%switch_label%%0
     )
     (=>
      (not (and
        (is-Opt./Some x!)
        (is-Opt./None (%Poly%Opt. (Opt./Some/0 (%Poly%Opt. (Poly%Opt. x!)))))
      ))
      (or
       (and
        (=>
         (and
          (is-Opt./Some x!)
          (is-Opt./Some (%Poly%Opt. (Opt./Some/0 (%Poly%Opt. (Poly%Opt. x!)))))
         )
         (=>
          (= z@ (%I (Opt./Some/0 (%Poly%Opt. (Opt./Some/0 (%Poly%Opt. (Poly%Opt. x!)))))))
          (=>
           (= y@ (%Poly%Opt. (Opt./Some/0 (%Poly%Opt. (Poly%Opt. x!)))))
           (=>
            (= tmp%1 (= x! (Opt./Some (Poly%Opt. (Opt./Some (I z@))))))
            (and
             (=>
              %%location_label%%0
              tmp%1
             )
             (=>
              tmp%1
              (=>
               (= tmp%2 (= y@ (Opt./Some (I z@))))
               (and
                (=>
                 %%location_label%%1
                 tmp%2
                )
                (=>
                 tmp%2
                 (=>
                  %%location_label%%2
                  false
        ))))))))))
        (=>
         (not (and
           (is-Opt./Some x!)
           (is-Opt./Some (%Poly%Opt. (Opt./Some/0 (%Poly%Opt. (Poly%Opt. x!)))))
         ))
         %%switch_label%%1
       ))
       (and
        (not %%switch_label%%1)
        %%switch_label%%0
    ))))
    (not %%switch_label%%0)
 )))
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

;; Function-Recommends crate::test3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/match-4460c9f52e99806e-at_patterns/test.rs:46:1: 46:27 (#0)
(get-info :all-statistics)
(push)
 (declare-const x! Opt.)
 (declare-const z@ Int)
 (declare-const y@ Opt.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%Opt. x!) (TYPE%Opt. $ (TYPE%Opt. $ (UINT 8))))
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 (assert
  (not (or
    (and
     (=>
      (and
       (is-Opt./Some x!)
       (is-Opt./None (%Poly%Opt. (Opt./Some/0 (%Poly%Opt. (Poly%Opt. x!)))))
      )
      %%switch_label%%0
     )
     (=>
      (not (and
        (is-Opt./Some x!)
        (is-Opt./None (%Poly%Opt. (Opt./Some/0 (%Poly%Opt. (Poly%Opt. x!)))))
      ))
      (or
       (=>
        (not (and
          (is-Opt./Some x!)
          (is-Opt./Some (%Poly%Opt. (Opt./Some/0 (%Poly%Opt. (Poly%Opt. x!)))))
        ))
        %%switch_label%%1
       )
       (and
        (not %%switch_label%%1)
        %%switch_label%%0
    ))))
    (not %%switch_label%%0)
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test4
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/match-4460c9f52e99806e-at_patterns/test.rs:67:1: 67:11 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (assert
  fuel_defaults
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (= tmp%1 (ext_eq false (TYPE%tuple%2. $ (UINT 8) $ (TYPE%Opt. $ (UINT 8))) (Poly%tuple%2.
       (some_fn.? (Poly%Opt. (Opt./Some (Poly%Opt. (Opt./Some (I 4))))))
      ) (Poly%tuple%2. (tuple%2./tuple%2 (I 4) (Poly%Opt. (Opt./Some (I 4)))))
    ))
    (and
     (=>
      %%location_label%%0
      tmp%1
     )
     (=>
      tmp%1
      (=>
       (= tmp%2 (ext_eq false (TYPE%tuple%2. $ (UINT 8) $ (TYPE%Opt. $ (UINT 8))) (Poly%tuple%2.
          (some_fn.? (Poly%Opt. (Opt./Some (Poly%Opt. Opt./None))))
         ) (Poly%tuple%2. (tuple%2./tuple%2 (I 0) (Poly%Opt. Opt./None)))
       ))
       (and
        (=>
         %%location_label%%1
         tmp%2
        )
        (=>
         tmp%2
         (=>
          (= tmp%3 (ext_eq false (TYPE%tuple%2. $ (UINT 8) $ (TYPE%Opt. $ (UINT 8))) (Poly%tuple%2.
             (some_fn.? (Poly%Opt. Opt./None))
            ) (Poly%tuple%2. (tuple%2./tuple%2 (I 1) (Poly%Opt. Opt./None)))
          ))
          (=>
           %%location_label%%2
           tmp%3
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test5
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/match-4460c9f52e99806e-at_patterns/test.rs:73:1: 73:11 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (assert
  fuel_defaults
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (= tmp%1 (ext_eq false (TYPE%tuple%2. $ (UINT 8) $ (TYPE%Opt. $ (UINT 8))) (Poly%tuple%2.
       (some_fn.? (Poly%Opt. (Opt./Some (Poly%Opt. (Opt./Some (I 4))))))
      ) (Poly%tuple%2. (tuple%2./tuple%2 (I 4) (Poly%Opt. (Opt./Some (I 4)))))
    ))
    (and
     (=>
      %%location_label%%0
      tmp%1
     )
     (=>
      tmp%1
      (=>
       (= tmp%2 (ext_eq false (TYPE%tuple%2. $ (UINT 8) $ (TYPE%Opt. $ (UINT 8))) (Poly%tuple%2.
          (some_fn.? (Poly%Opt. (Opt./Some (Poly%Opt. Opt./None))))
         ) (Poly%tuple%2. (tuple%2./tuple%2 (I 0) (Poly%Opt. Opt./None)))
       ))
       (and
        (=>
         %%location_label%%1
         tmp%2
        )
        (=>
         tmp%2
         (=>
          (= tmp%3 (ext_eq false (TYPE%tuple%2. $ (UINT 8) $ (TYPE%Opt. $ (UINT 8))) (Poly%tuple%2.
             (some_fn.? (Poly%Opt. Opt./None))
            ) (Poly%tuple%2. (tuple%2./tuple%2 (I 1) (Poly%Opt. Opt./None)))
          ))
          (and
           (=>
            %%location_label%%2
            tmp%3
           )
           (=>
            tmp%3
            (=>
             %%location_label%%3
             false
 ))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
 (get-info :reason-unknown)
 (get-model)
 (assert
  (not %%location_label%%3)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Recommends crate::test5
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/match-4460c9f52e99806e-at_patterns/test.rs:73:1: 73:11 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
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

;; Function-Def crate::test6
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/match-4460c9f52e99806e-at_patterns/test.rs:86:7: 86:25 (#0)
(get-info :all-statistics)
(push)
 (declare-const foo! Foo.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const x@ Int)
 (declare-const y@ Opt.)
 (declare-const tmp%5 Bool)
 (declare-const z@ Opt.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%Foo. foo!) TYPE%Foo.)
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 (declare-const %%switch_label%%2 Bool)
 (declare-const %%switch_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 (assert
  (not (or
    (and
     (=>
      (or
       (is-Foo./Bar foo!)
       (and
        (is-Foo./Qux foo!)
        (is-Opt./Some (Foo./Qux/0 (%Poly%Foo. (Poly%Foo. foo!))))
      ))
      (=>
       (= x@ (ite
         (is-Foo./Bar foo!)
         (Foo./Bar/0 (%Poly%Foo. (Poly%Foo. foo!)))
         (%I (Opt./Some/0 (%Poly%Opt. (Poly%Opt. (Foo./Qux/0 (%Poly%Foo. (Poly%Foo. foo!)))))))
       ))
       (=>
        (= y@ (ite
          (is-Foo./Bar foo!)
          (Foo./Bar/1 (%Poly%Foo. (Poly%Foo. foo!)))
          (Foo./Qux/0 (%Poly%Foo. (Poly%Foo. foo!)))
        ))
        (or
         (and
          (=>
           (is-Foo./Bar foo!)
           (=>
            (= tmp%1 (= x@ (Foo./Bar/0 (%Poly%Foo. (Poly%Foo. foo!)))))
            (and
             (=>
              %%location_label%%0
              tmp%1
             )
             (=>
              tmp%1
              (=>
               (= tmp%2 (= y@ (Foo./Bar/1 (%Poly%Foo. (Poly%Foo. foo!)))))
               (and
                (=>
                 %%location_label%%1
                 tmp%2
                )
                (=>
                 tmp%2
                 %%switch_label%%1
          )))))))
          (=>
           (not (is-Foo./Bar foo!))
           (or
            (and
             (=>
              (is-Foo./Qux foo!)
              (=>
               (= tmp%3 (= foo! (Foo./Qux (%Poly%Opt. (Poly%Opt. y@)))))
               (and
                (=>
                 %%location_label%%2
                 tmp%3
                )
                (=>
                 tmp%3
                 (=>
                  (= tmp%4 (= foo! (Foo./Qux (%Poly%Opt. (Poly%Opt. (Opt./Some (I x@)))))))
                  (and
                   (=>
                    %%location_label%%3
                    tmp%4
                   )
                   (=>
                    tmp%4
                    %%switch_label%%2
             )))))))
             (=>
              (not (is-Foo./Qux foo!))
              (=>
               %%location_label%%4
               false
            )))
            (and
             (not %%switch_label%%2)
             %%switch_label%%1
         ))))
         (and
          (not %%switch_label%%1)
          %%switch_label%%0
     )))))
     (=>
      (not (or
        (is-Foo./Bar foo!)
        (and
         (is-Foo./Qux foo!)
         (is-Opt./Some (Foo./Qux/0 (%Poly%Foo. (Poly%Foo. foo!))))
      )))
      (or
       (and
        (=>
         (is-Foo./Qux foo!)
         (=>
          (= z@ (Foo./Qux/0 (%Poly%Foo. (Poly%Foo. foo!))))
          (=>
           (= tmp%5 (is-Opt./None z@))
           (and
            (=>
             %%location_label%%5
             tmp%5
            )
            (=>
             tmp%5
             %%switch_label%%3
        )))))
        (=>
         (not (is-Foo./Qux foo!))
         %%switch_label%%3
       ))
       (and
        (not %%switch_label%%3)
        %%switch_label%%0
    ))))
    (not %%switch_label%%0)
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test7
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/match-4460c9f52e99806e-at_patterns/test.rs:107:7: 107:25 (#0)
(get-info :all-statistics)
(push)
 (declare-const foo! Foo.)
 (declare-const tmp%1 Bool)
 (declare-const x@ Int)
 (declare-const y@ Opt.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%Foo. foo!) TYPE%Foo.)
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 (declare-const %%switch_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (or
    (and
     (=>
      (or
       (is-Foo./Bar foo!)
       (and
        (is-Foo./Qux foo!)
        (is-Opt./Some (Foo./Qux/0 (%Poly%Foo. (Poly%Foo. foo!))))
      ))
      (=>
       (= x@ (ite
         (is-Foo./Bar foo!)
         (Foo./Bar/0 (%Poly%Foo. (Poly%Foo. foo!)))
         (%I (Opt./Some/0 (%Poly%Opt. (Poly%Opt. (Foo./Qux/0 (%Poly%Foo. (Poly%Foo. foo!)))))))
       ))
       (=>
        (= y@ (ite
          (is-Foo./Bar foo!)
          (Foo./Bar/1 (%Poly%Foo. (Poly%Foo. foo!)))
          (Foo./Qux/0 (%Poly%Foo. (Poly%Foo. foo!)))
        ))
        (or
         (and
          (=>
           (is-Foo./Bar foo!)
           (=>
            (= tmp%1 (= y@ (Foo./Qux/0 (%Poly%Foo. (Poly%Foo. foo!)))))
            (and
             (=>
              %%location_label%%0
              tmp%1
             )
             (=>
              tmp%1
              %%switch_label%%1
          ))))
          (=>
           (not (is-Foo./Bar foo!))
           (or
            (and
             (=>
              (is-Foo./Qux foo!)
              %%switch_label%%2
             )
             (=>
              (not (is-Foo./Qux foo!))
              %%switch_label%%2
            ))
            (and
             (not %%switch_label%%2)
             %%switch_label%%1
         ))))
         (and
          (not %%switch_label%%1)
          %%switch_label%%0
     )))))
     (=>
      (not (or
        (is-Foo./Bar foo!)
        (and
         (is-Foo./Qux foo!)
         (is-Opt./Some (Foo./Qux/0 (%Poly%Foo. (Poly%Foo. foo!))))
      )))
      %%switch_label%%0
    ))
    (not %%switch_label%%0)
 )))
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

;; Function-Recommends crate::test7
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/match-4460c9f52e99806e-at_patterns/test.rs:107:7: 107:25 (#0)
(get-info :all-statistics)
(push)
 (declare-const foo! Foo.)
 (declare-const x@ Int)
 (declare-const y@ Opt.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%Foo. foo!) TYPE%Foo.)
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 (declare-const %%switch_label%%2 Bool)
 (assert
  (not (or
    (and
     (=>
      (or
       (is-Foo./Bar foo!)
       (and
        (is-Foo./Qux foo!)
        (is-Opt./Some (Foo./Qux/0 (%Poly%Foo. (Poly%Foo. foo!))))
      ))
      (=>
       (= x@ (ite
         (is-Foo./Bar foo!)
         (Foo./Bar/0 (%Poly%Foo. (Poly%Foo. foo!)))
         (%I (Opt./Some/0 (%Poly%Opt. (Poly%Opt. (Foo./Qux/0 (%Poly%Foo. (Poly%Foo. foo!)))))))
       ))
       (=>
        (= y@ (ite
          (is-Foo./Bar foo!)
          (Foo./Bar/1 (%Poly%Foo. (Poly%Foo. foo!)))
          (Foo./Qux/0 (%Poly%Foo. (Poly%Foo. foo!)))
        ))
        (or
         (and
          (=>
           (is-Foo./Bar foo!)
           (=>
            (= y@ (Foo./Qux/0 (%Poly%Foo. (Poly%Foo. foo!))))
            %%switch_label%%1
          ))
          (=>
           (not (is-Foo./Bar foo!))
           (or
            (and
             (=>
              (is-Foo./Qux foo!)
              %%switch_label%%2
             )
             (=>
              (not (is-Foo./Qux foo!))
              %%switch_label%%2
            ))
            (and
             (not %%switch_label%%2)
             %%switch_label%%1
         ))))
         (and
          (not %%switch_label%%1)
          %%switch_label%%0
     )))))
     (=>
      (not (or
        (is-Foo./Bar foo!)
        (and
         (is-Foo./Qux foo!)
         (is-Opt./Some (Foo./Qux/0 (%Poly%Foo. (Poly%Foo. foo!))))
      )))
      %%switch_label%%0
    ))
    (not %%switch_label%%0)
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
