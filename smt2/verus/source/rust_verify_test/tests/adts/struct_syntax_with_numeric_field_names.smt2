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
(declare-const fuel%impl&%0.is_Bar. FuelId)
(declare-const fuel%impl&%0.get_Bar_0. FuelId)
(declare-const fuel%impl&%0.get_Bar_1. FuelId)
(declare-const fuel%impl&%0.is_Qux. FuelId)
(declare-const fuel%impl&%1.arrow_0. FuelId)
(declare-const fuel%impl&%1.arrow_1. FuelId)
(declare-const fuel%impl&%1.arrow_Bar_0. FuelId)
(declare-const fuel%impl&%1.arrow_Bar_1. FuelId)
(declare-const fuel%sfn. FuelId)
(assert
 (distinct fuel%impl&%0.is_Bar. fuel%impl&%0.get_Bar_0. fuel%impl&%0.get_Bar_1. fuel%impl&%0.is_Qux.
  fuel%impl&%1.arrow_0. fuel%impl&%1.arrow_1. fuel%impl&%1.arrow_Bar_0. fuel%impl&%1.arrow_Bar_1.
  fuel%sfn.
))

;; Datatypes
(declare-datatypes ((Foo. 0) (tuple%0. 0) (tuple%2. 0)) (((Foo./Bar (Foo./Bar/?0 Int)
    (Foo./Bar/?1 Int)
   ) (Foo./Qux)
  ) ((tuple%0./tuple%0)) ((tuple%2./tuple%2 (tuple%2./tuple%2/?0 Poly) (tuple%2./tuple%2/?1
     Poly
)))))
(declare-fun Foo./Bar/0 (Foo.) Int)
(declare-fun Foo./Bar/1 (Foo.) Int)
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-const TYPE%Foo. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%2. (Dcr Type Dcr Type) Type)
(declare-fun Poly%Foo. (Foo.) Poly)
(declare-fun %Poly%Foo. (Poly) Foo.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%2. (tuple%2.) Poly)
(declare-fun %Poly%tuple%2. (Poly) tuple%2.)
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
 (forall ((_0! Int) (_1! Int)) (!
   (=>
    (and
     (uInv 32 _0!)
     (uInv 32 _1!)
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
    (uInv 32 (Foo./Bar/0 (%Poly%Foo. x)))
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
    (uInv 32 (Foo./Bar/1 (%Poly%Foo. x)))
   )
   :pattern ((Foo./Bar/1 (%Poly%Foo. x)) (has_type x TYPE%Foo.))
   :qid internal_Foo./Bar/1_invariant_definition
   :skolemid skolem_internal_Foo./Bar/1_invariant_definition
)))
(assert
 (has_type (Poly%Foo. Foo./Qux) TYPE%Foo.)
)
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

;; Function-Decl crate::Foo::is_Bar
(declare-fun impl&%0.is_Bar.? (Poly) Bool)

;; Function-Decl crate::Foo::get_Bar_0
(declare-fun impl&%0.get_Bar_0.? (Poly) Int)

;; Function-Decl crate::Foo::get_Bar_1
(declare-fun impl&%0.get_Bar_1.? (Poly) Int)

;; Function-Decl crate::Foo::is_Qux
(declare-fun impl&%0.is_Qux.? (Poly) Bool)

;; Function-Decl crate::Foo::arrow_0
(declare-fun impl&%1.arrow_0.? (Poly) Int)

;; Function-Decl crate::Foo::arrow_1
(declare-fun impl&%1.arrow_1.? (Poly) Int)

;; Function-Decl crate::Foo::arrow_Bar_0
(declare-fun impl&%1.arrow_Bar_0.? (Poly) Int)

;; Function-Decl crate::Foo::arrow_Bar_1
(declare-fun impl&%1.arrow_Bar_1.? (Poly) Int)

;; Function-Decl crate::sfn
(declare-fun sfn.? (Poly) tuple%2.)

;; Function-Axioms crate::Foo::is_Bar
(assert
 (fuel_bool_default fuel%impl&%0.is_Bar.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%0.is_Bar.)
  (forall ((self! Poly)) (!
    (= (impl&%0.is_Bar.? self!) (is-Foo./Bar (%Poly%Foo. self!)))
    :pattern ((impl&%0.is_Bar.? self!))
    :qid internal_impl&__0.is_Bar.?_definition
    :skolemid skolem_internal_impl&__0.is_Bar.?_definition
))))

;; Function-Axioms crate::Foo::get_Bar_0
(assert
 (fuel_bool_default fuel%impl&%0.get_Bar_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%0.get_Bar_0.)
  (forall ((self! Poly)) (!
    (= (impl&%0.get_Bar_0.? self!) (Foo./Bar/0 (%Poly%Foo. self!)))
    :pattern ((impl&%0.get_Bar_0.? self!))
    :qid internal_impl&__0.get_Bar_0.?_definition
    :skolemid skolem_internal_impl&__0.get_Bar_0.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%Foo.)
    (uInv 32 (impl&%0.get_Bar_0.? self!))
   )
   :pattern ((impl&%0.get_Bar_0.? self!))
   :qid internal_impl&__0.get_Bar_0.?_pre_post_definition
   :skolemid skolem_internal_impl&__0.get_Bar_0.?_pre_post_definition
)))

;; Function-Axioms crate::Foo::get_Bar_1
(assert
 (fuel_bool_default fuel%impl&%0.get_Bar_1.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%0.get_Bar_1.)
  (forall ((self! Poly)) (!
    (= (impl&%0.get_Bar_1.? self!) (Foo./Bar/1 (%Poly%Foo. self!)))
    :pattern ((impl&%0.get_Bar_1.? self!))
    :qid internal_impl&__0.get_Bar_1.?_definition
    :skolemid skolem_internal_impl&__0.get_Bar_1.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%Foo.)
    (uInv 32 (impl&%0.get_Bar_1.? self!))
   )
   :pattern ((impl&%0.get_Bar_1.? self!))
   :qid internal_impl&__0.get_Bar_1.?_pre_post_definition
   :skolemid skolem_internal_impl&__0.get_Bar_1.?_pre_post_definition
)))

;; Function-Axioms crate::Foo::is_Qux
(assert
 (fuel_bool_default fuel%impl&%0.is_Qux.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%0.is_Qux.)
  (forall ((self! Poly)) (!
    (= (impl&%0.is_Qux.? self!) (is-Foo./Qux (%Poly%Foo. self!)))
    :pattern ((impl&%0.is_Qux.? self!))
    :qid internal_impl&__0.is_Qux.?_definition
    :skolemid skolem_internal_impl&__0.is_Qux.?_definition
))))

;; Function-Axioms crate::Foo::arrow_0
(assert
 (fuel_bool_default fuel%impl&%1.arrow_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%1.arrow_0.)
  (forall ((self! Poly)) (!
    (= (impl&%1.arrow_0.? self!) (Foo./Bar/0 (%Poly%Foo. self!)))
    :pattern ((impl&%1.arrow_0.? self!))
    :qid internal_impl&__1.arrow_0.?_definition
    :skolemid skolem_internal_impl&__1.arrow_0.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%Foo.)
    (uInv 32 (impl&%1.arrow_0.? self!))
   )
   :pattern ((impl&%1.arrow_0.? self!))
   :qid internal_impl&__1.arrow_0.?_pre_post_definition
   :skolemid skolem_internal_impl&__1.arrow_0.?_pre_post_definition
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
    (uInv 32 (impl&%1.arrow_1.? self!))
   )
   :pattern ((impl&%1.arrow_1.? self!))
   :qid internal_impl&__1.arrow_1.?_pre_post_definition
   :skolemid skolem_internal_impl&__1.arrow_1.?_pre_post_definition
)))

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
    (uInv 32 (impl&%1.arrow_Bar_0.? self!))
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
    (uInv 32 (impl&%1.arrow_Bar_1.? self!))
   )
   :pattern ((impl&%1.arrow_Bar_1.? self!))
   :qid internal_impl&__1.arrow_Bar_1.?_pre_post_definition
   :skolemid skolem_internal_impl&__1.arrow_Bar_1.?_pre_post_definition
)))

;; Function-Axioms crate::sfn
(assert
 (fuel_bool_default fuel%sfn.)
)
(assert
 (=>
  (fuel_bool fuel%sfn.)
  (forall ((foo! Poly)) (!
    (= (sfn.? foo!) (ite
      (is-Foo./Bar (%Poly%Foo. foo!))
      (let
       ((a$ (Foo./Bar/1 (%Poly%Foo. foo!))))
       (let
        ((b$ (Foo./Bar/0 (%Poly%Foo. foo!))))
        (tuple%2./tuple%2 (I b$) (I a$))
      ))
      (tuple%2./tuple%2 (I 0) (I 0))
    ))
    :pattern ((sfn.? foo!))
    :qid internal_sfn.?_definition
    :skolemid skolem_internal_sfn.?_definition
))))
(assert
 (forall ((foo! Poly)) (!
   (=>
    (has_type foo! TYPE%Foo.)
    (has_type (Poly%tuple%2. (sfn.? foo!)) (TYPE%tuple%2. $ (UINT 32) $ (UINT 32)))
   )
   :pattern ((sfn.? foo!))
   :qid internal_sfn.?_pre_post_definition
   :skolemid skolem_internal_sfn.?_pre_post_definition
)))

;; Function-Def crate::test
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/adts-142d23e2e82b3767-struct_syntax_with_numeric_field_names/test.rs:21:1: 21:10 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const b@ Foo.)
 (assert
  fuel_defaults
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= b@ (Foo./Bar (%I (I 20)) (%I (I 30))))
    (=>
     (= tmp%1 (= (Foo./Bar/0 (%Poly%Foo. (Poly%Foo. b@))) 20))
     (and
      (=>
       %%location_label%%0
       tmp%1
      )
      (=>
       tmp%1
       (=>
        (= tmp%2 (= (Foo./Bar/1 (%Poly%Foo. (Poly%Foo. b@))) 30))
        (=>
         %%location_label%%1
         tmp%2
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/adts-142d23e2e82b3767-struct_syntax_with_numeric_field_names/test.rs:27:1: 27:11 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Bool)
 (declare-const b@ Foo.)
 (assert
  fuel_defaults
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= b@ (Foo./Bar (%I (I 20)) (%I (I 30))))
    (=>
     (= tmp%1 (= (Foo./Bar/1 (%Poly%Foo. (Poly%Foo. b@))) 20))
     (=>
      %%location_label%%0
      tmp%1
 )))))
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

;; Function-Recommends crate::test2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/adts-142d23e2e82b3767-struct_syntax_with_numeric_field_names/test.rs:27:1: 27:11 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const b@ Foo.)
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

;; Function-Def crate::test_pat
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/adts-142d23e2e82b3767-struct_syntax_with_numeric_field_names/test.rs:33:1: 33:22 (#0)
(get-info :all-statistics)
(push)
 (declare-const foo! Foo.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const a@ Int)
 (declare-const b@ Int)
 (declare-const foo@ Foo.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%Foo. foo!) TYPE%Foo.)
 )
 (declare-const %%switch_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (= foo@ (Foo./Bar (%I (I 20)) (%I (I 40))))
    (or
     (and
      (=>
       (is-Foo./Bar foo@)
       (=>
        (= a@ (Foo./Bar/1 (%Poly%Foo. (Poly%Foo. foo@))))
        (=>
         (= b@ (Foo./Bar/0 (%Poly%Foo. (Poly%Foo. foo@))))
         (=>
          (= tmp%1 (= b@ 20))
          (and
           (=>
            %%location_label%%0
            tmp%1
           )
           (=>
            tmp%1
            (=>
             (= tmp%2 (= a@ 40))
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
       (not (is-Foo./Bar foo@))
       (=>
        %%location_label%%2
        false
     )))
     (not %%switch_label%%0)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test_pat2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/adts-142d23e2e82b3767-struct_syntax_with_numeric_field_names/test.rs:44:1: 44:23 (#0)
(get-info :all-statistics)
(push)
 (declare-const foo! Foo.)
 (declare-const tmp%1 Bool)
 (declare-const a@ Int)
 (declare-const b@ Int)
 (declare-const foo@ Foo.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%Foo. foo!) TYPE%Foo.)
 )
 (declare-const %%switch_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= foo@ (Foo./Bar (%I (I 20)) (%I (I 40))))
    (or
     (and
      (=>
       (is-Foo./Bar foo@)
       (=>
        (= a@ (Foo./Bar/1 (%Poly%Foo. (Poly%Foo. foo@))))
        (=>
         (= b@ (Foo./Bar/0 (%Poly%Foo. (Poly%Foo. foo@))))
         (=>
          (= tmp%1 (= b@ 40))
          (and
           (=>
            %%location_label%%0
            tmp%1
           )
           (=>
            tmp%1
            %%switch_label%%0
      ))))))
      (=>
       (not (is-Foo./Bar foo@))
       %%switch_label%%0
     ))
     (not %%switch_label%%0)
 ))))
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

;; Function-Recommends crate::test_pat2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/adts-142d23e2e82b3767-struct_syntax_with_numeric_field_names/test.rs:44:1: 44:23 (#0)
(get-info :all-statistics)
(push)
 (declare-const foo! Foo.)
 (declare-const a@ Int)
 (declare-const b@ Int)
 (declare-const foo@ Foo.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%Foo. foo!) TYPE%Foo.)
 )
 (declare-const %%switch_label%%0 Bool)
 (assert
  (not (=>
    (= foo@ (Foo./Bar (%I (I 20)) (%I (I 40))))
    (or
     (and
      (=>
       (is-Foo./Bar foo@)
       (=>
        (= a@ (Foo./Bar/1 (%Poly%Foo. (Poly%Foo. foo@))))
        (=>
         (= b@ (Foo./Bar/0 (%Poly%Foo. (Poly%Foo. foo@))))
         (=>
          (= b@ 40)
          %%switch_label%%0
      ))))
      (=>
       (not (is-Foo./Bar foo@))
       %%switch_label%%0
     ))
     (not %%switch_label%%0)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test_pat_not_all_fields
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/adts-142d23e2e82b3767-struct_syntax_with_numeric_field_names/test.rs:54:1: 54:37 (#0)
(get-info :all-statistics)
(push)
 (declare-const foo! Foo.)
 (declare-const tmp%1 Bool)
 (declare-const a@ Int)
 (declare-const foo@ Foo.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%Foo. foo!) TYPE%Foo.)
 )
 (declare-const %%switch_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= foo@ (Foo./Bar (%I (I 20)) (%I (I 40))))
    (or
     (and
      (=>
       (is-Foo./Bar foo@)
       (=>
        (= a@ (Foo./Bar/1 (%Poly%Foo. (Poly%Foo. foo@))))
        (=>
         (= tmp%1 (= a@ 40))
         (and
          (=>
           %%location_label%%0
           tmp%1
          )
          (=>
           tmp%1
           %%switch_label%%0
      )))))
      (=>
       (not (is-Foo./Bar foo@))
       (=>
        %%location_label%%1
        false
     )))
     (not %%switch_label%%0)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test_pat_not_all_fields2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/adts-142d23e2e82b3767-struct_syntax_with_numeric_field_names/test.rs:64:1: 64:38 (#0)
(get-info :all-statistics)
(push)
 (declare-const foo! Foo.)
 (declare-const tmp%1 Bool)
 (declare-const a@ Int)
 (declare-const foo@ Foo.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%Foo. foo!) TYPE%Foo.)
 )
 (declare-const %%switch_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= foo@ (Foo./Bar (%I (I 20)) (%I (I 40))))
    (or
     (and
      (=>
       (is-Foo./Bar foo@)
       (=>
        (= a@ (Foo./Bar/1 (%Poly%Foo. (Poly%Foo. foo@))))
        (=>
         (= tmp%1 (= a@ 20))
         (and
          (=>
           %%location_label%%0
           tmp%1
          )
          (=>
           tmp%1
           %%switch_label%%0
      )))))
      (=>
       (not (is-Foo./Bar foo@))
       %%switch_label%%0
     ))
     (not %%switch_label%%0)
 ))))
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

;; Function-Recommends crate::test_pat_not_all_fields2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/adts-142d23e2e82b3767-struct_syntax_with_numeric_field_names/test.rs:64:1: 64:38 (#0)
(get-info :all-statistics)
(push)
 (declare-const foo! Foo.)
 (declare-const a@ Int)
 (declare-const foo@ Foo.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%Foo. foo!) TYPE%Foo.)
 )
 (declare-const %%switch_label%%0 Bool)
 (assert
  (not (=>
    (= foo@ (Foo./Bar (%I (I 20)) (%I (I 40))))
    (or
     (and
      (=>
       (is-Foo./Bar foo@)
       (=>
        (= a@ (Foo./Bar/1 (%Poly%Foo. (Poly%Foo. foo@))))
        (=>
         (= a@ 20)
         %%switch_label%%0
      )))
      (=>
       (not (is-Foo./Bar foo@))
       %%switch_label%%0
     ))
     (not %%switch_label%%0)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test_sfn
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/adts-142d23e2e82b3767-struct_syntax_with_numeric_field_names/test.rs:81:7: 81:28 (#0)
(get-info :all-statistics)
(push)
 (declare-const foo! Foo.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%Foo. foo!) TYPE%Foo.)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= tmp%1 (ext_eq false (TYPE%tuple%2. $ (UINT 32) $ (UINT 32)) (Poly%tuple%2. (sfn.?
        (Poly%Foo. (Foo./Bar (%I (I 20)) (%I (I 30))))
       )
      ) (Poly%tuple%2. (tuple%2./tuple%2 (I 20) (I 30)))
    ))
    (and
     (=>
      %%location_label%%0
      tmp%1
     )
     (=>
      tmp%1
      (=>
       (= tmp%2 (ext_eq false (TYPE%tuple%2. $ (UINT 32) $ (UINT 32)) (Poly%tuple%2. (sfn.?
           (Poly%Foo. Foo./Qux)
          )
         ) (Poly%tuple%2. (tuple%2./tuple%2 (I 0) (I 0)))
       ))
       (=>
        %%location_label%%1
        tmp%2
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test_sfn2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/adts-142d23e2e82b3767-struct_syntax_with_numeric_field_names/test.rs:86:7: 86:29 (#0)
(get-info :all-statistics)
(push)
 (declare-const foo! Foo.)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%Foo. foo!) TYPE%Foo.)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%1 (= (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. (sfn.? (Poly%Foo. (Foo./Bar
             (%I (I 20)) (%I (I 30))
       ))))))
      ) 30
    ))
    (=>
     %%location_label%%0
     tmp%1
 ))))
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

;; Function-Recommends crate::test_sfn2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/adts-142d23e2e82b3767-struct_syntax_with_numeric_field_names/test.rs:86:7: 86:29 (#0)
(get-info :all-statistics)
(push)
 (declare-const foo! Foo.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%Foo. foo!) TYPE%Foo.)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
