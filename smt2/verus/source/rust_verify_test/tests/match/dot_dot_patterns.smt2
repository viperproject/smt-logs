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
(declare-const fuel%impl&%2.arrow_2. FuelId)
(declare-const fuel%impl&%2.arrow_0. FuelId)
(declare-const fuel%impl&%2.arrow_3. FuelId)
(declare-const fuel%impl&%2.arrow_1. FuelId)
(declare-const fuel%impl&%2.arrow_Bar_0. FuelId)
(declare-const fuel%impl&%2.arrow_Bar_1. FuelId)
(declare-const fuel%impl&%2.arrow_Bar_2. FuelId)
(declare-const fuel%impl&%2.arrow_Bar_3. FuelId)
(assert
 (distinct fuel%impl&%2.arrow_2. fuel%impl&%2.arrow_0. fuel%impl&%2.arrow_3. fuel%impl&%2.arrow_1.
  fuel%impl&%2.arrow_Bar_0. fuel%impl&%2.arrow_Bar_1. fuel%impl&%2.arrow_Bar_2. fuel%impl&%2.arrow_Bar_3.
))

;; Datatypes
(declare-datatypes ((R. 0) (Foo. 0) (tuple%0. 0) (tuple%4. 0)) (((R./R)) ((Foo./Bar (
     Foo./Bar/?0 Int
    ) (Foo./Bar/?1 Bool) (Foo./Bar/?2 Int) (Foo./Bar/?3 R.)
   )
  ) ((tuple%0./tuple%0)) ((tuple%4./tuple%4 (tuple%4./tuple%4/?0 Poly) (tuple%4./tuple%4/?1
     Poly
    ) (tuple%4./tuple%4/?2 Poly) (tuple%4./tuple%4/?3 Poly)
))))
(declare-fun Foo./Bar/0 (Foo.) Int)
(declare-fun Foo./Bar/1 (Foo.) Bool)
(declare-fun Foo./Bar/2 (Foo.) Int)
(declare-fun Foo./Bar/3 (Foo.) R.)
(declare-fun tuple%4./tuple%4/0 (tuple%4.) Poly)
(declare-fun tuple%4./tuple%4/1 (tuple%4.) Poly)
(declare-fun tuple%4./tuple%4/2 (tuple%4.) Poly)
(declare-fun tuple%4./tuple%4/3 (tuple%4.) Poly)
(declare-const TYPE%R. Type)
(declare-const TYPE%Foo. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%4. (Dcr Type Dcr Type Dcr Type Dcr Type) Type)
(declare-fun Poly%R. (R.) Poly)
(declare-fun %Poly%R. (Poly) R.)
(declare-fun Poly%Foo. (Foo.) Poly)
(declare-fun %Poly%Foo. (Poly) Foo.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%4. (tuple%4.) Poly)
(declare-fun %Poly%tuple%4. (Poly) tuple%4.)
(assert
 (forall ((x R.)) (!
   (= x (%Poly%R. (Poly%R. x)))
   :pattern ((Poly%R. x))
   :qid internal_crate__R_box_axiom_definition
   :skolemid skolem_internal_crate__R_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%R.)
    (= x (Poly%R. (%Poly%R. x)))
   )
   :pattern ((has_type x TYPE%R.))
   :qid internal_crate__R_unbox_axiom_definition
   :skolemid skolem_internal_crate__R_unbox_axiom_definition
)))
(assert
 (forall ((x R.)) (!
   (has_type (Poly%R. x) TYPE%R.)
   :pattern ((has_type (Poly%R. x) TYPE%R.))
   :qid internal_crate__R_has_type_always_definition
   :skolemid skolem_internal_crate__R_has_type_always_definition
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
 (forall ((_0! Int) (_1! Bool) (_2! Int) (_3! R.)) (!
   (=>
    (and
     (uInv 8 _0!)
     (uInv 8 _2!)
    )
    (has_type (Poly%Foo. (Foo./Bar _0! _1! _2! _3!)) TYPE%Foo.)
   )
   :pattern ((has_type (Poly%Foo. (Foo./Bar _0! _1! _2! _3!)) TYPE%Foo.))
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
 (forall ((x Foo.)) (!
   (= (Foo./Bar/2 x) (Foo./Bar/?2 x))
   :pattern ((Foo./Bar/2 x))
   :qid internal_Foo./Bar/2_accessor_definition
   :skolemid skolem_internal_Foo./Bar/2_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%Foo.)
    (uInv 8 (Foo./Bar/2 (%Poly%Foo. x)))
   )
   :pattern ((Foo./Bar/2 (%Poly%Foo. x)) (has_type x TYPE%Foo.))
   :qid internal_Foo./Bar/2_invariant_definition
   :skolemid skolem_internal_Foo./Bar/2_invariant_definition
)))
(assert
 (forall ((x Foo.)) (!
   (= (Foo./Bar/3 x) (Foo./Bar/?3 x))
   :pattern ((Foo./Bar/3 x))
   :qid internal_Foo./Bar/3_accessor_definition
   :skolemid skolem_internal_Foo./Bar/3_accessor_definition
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
 (forall ((x tuple%4.)) (!
   (= x (%Poly%tuple%4. (Poly%tuple%4. x)))
   :pattern ((Poly%tuple%4. x))
   :qid internal_crate__tuple__4_box_axiom_definition
   :skolemid skolem_internal_crate__tuple__4_box_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%4. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3&))
    (= x (Poly%tuple%4. (%Poly%tuple%4. x)))
   )
   :pattern ((has_type x (TYPE%tuple%4. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3&)))
   :qid internal_crate__tuple__4_unbox_axiom_definition
   :skolemid skolem_internal_crate__tuple__4_unbox_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (_0! Poly) (_1! Poly) (_2! Poly) (_3! Poly)
  ) (!
   (=>
    (and
     (has_type _0! T%0&)
     (has_type _1! T%1&)
     (has_type _2! T%2&)
     (has_type _3! T%3&)
    )
    (has_type (Poly%tuple%4. (tuple%4./tuple%4 _0! _1! _2! _3!)) (TYPE%tuple%4. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3&
   )))
   :pattern ((has_type (Poly%tuple%4. (tuple%4./tuple%4 _0! _1! _2! _3!)) (TYPE%tuple%4.
      T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3&
   )))
   :qid internal_tuple__4./tuple__4_constructor_definition
   :skolemid skolem_internal_tuple__4./tuple__4_constructor_definition
)))
(assert
 (forall ((x tuple%4.)) (!
   (= (tuple%4./tuple%4/0 x) (tuple%4./tuple%4/?0 x))
   :pattern ((tuple%4./tuple%4/0 x))
   :qid internal_tuple__4./tuple__4/0_accessor_definition
   :skolemid skolem_internal_tuple__4./tuple__4/0_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%4. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3&))
    (has_type (tuple%4./tuple%4/0 (%Poly%tuple%4. x)) T%0&)
   )
   :pattern ((tuple%4./tuple%4/0 (%Poly%tuple%4. x)) (has_type x (TYPE%tuple%4. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3&
   )))
   :qid internal_tuple__4./tuple__4/0_invariant_definition
   :skolemid skolem_internal_tuple__4./tuple__4/0_invariant_definition
)))
(assert
 (forall ((x tuple%4.)) (!
   (= (tuple%4./tuple%4/1 x) (tuple%4./tuple%4/?1 x))
   :pattern ((tuple%4./tuple%4/1 x))
   :qid internal_tuple__4./tuple__4/1_accessor_definition
   :skolemid skolem_internal_tuple__4./tuple__4/1_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%4. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3&))
    (has_type (tuple%4./tuple%4/1 (%Poly%tuple%4. x)) T%1&)
   )
   :pattern ((tuple%4./tuple%4/1 (%Poly%tuple%4. x)) (has_type x (TYPE%tuple%4. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3&
   )))
   :qid internal_tuple__4./tuple__4/1_invariant_definition
   :skolemid skolem_internal_tuple__4./tuple__4/1_invariant_definition
)))
(assert
 (forall ((x tuple%4.)) (!
   (= (tuple%4./tuple%4/2 x) (tuple%4./tuple%4/?2 x))
   :pattern ((tuple%4./tuple%4/2 x))
   :qid internal_tuple__4./tuple__4/2_accessor_definition
   :skolemid skolem_internal_tuple__4./tuple__4/2_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%4. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3&))
    (has_type (tuple%4./tuple%4/2 (%Poly%tuple%4. x)) T%2&)
   )
   :pattern ((tuple%4./tuple%4/2 (%Poly%tuple%4. x)) (has_type x (TYPE%tuple%4. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3&
   )))
   :qid internal_tuple__4./tuple__4/2_invariant_definition
   :skolemid skolem_internal_tuple__4./tuple__4/2_invariant_definition
)))
(assert
 (forall ((x tuple%4.)) (!
   (= (tuple%4./tuple%4/3 x) (tuple%4./tuple%4/?3 x))
   :pattern ((tuple%4./tuple%4/3 x))
   :qid internal_tuple__4./tuple__4/3_accessor_definition
   :skolemid skolem_internal_tuple__4./tuple__4/3_accessor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%tuple%4. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3&))
    (has_type (tuple%4./tuple%4/3 (%Poly%tuple%4. x)) T%3&)
   )
   :pattern ((tuple%4./tuple%4/3 (%Poly%tuple%4. x)) (has_type x (TYPE%tuple%4. T%0&. T%0&
      T%1&. T%1& T%2&. T%2& T%3&. T%3&
   )))
   :qid internal_tuple__4./tuple__4/3_invariant_definition
   :skolemid skolem_internal_tuple__4./tuple__4/3_invariant_definition
)))
(assert
 (forall ((x tuple%4.)) (!
   (=>
    (is-tuple%4./tuple%4 x)
    (height_lt (height (tuple%4./tuple%4/0 x)) (height (Poly%tuple%4. x)))
   )
   :pattern ((height (tuple%4./tuple%4/0 x)))
   :qid prelude_datatype_height_tuple%4./tuple%4/0
   :skolemid skolem_prelude_datatype_height_tuple%4./tuple%4/0
)))
(assert
 (forall ((x tuple%4.)) (!
   (=>
    (is-tuple%4./tuple%4 x)
    (height_lt (height (tuple%4./tuple%4/1 x)) (height (Poly%tuple%4. x)))
   )
   :pattern ((height (tuple%4./tuple%4/1 x)))
   :qid prelude_datatype_height_tuple%4./tuple%4/1
   :skolemid skolem_prelude_datatype_height_tuple%4./tuple%4/1
)))
(assert
 (forall ((x tuple%4.)) (!
   (=>
    (is-tuple%4./tuple%4 x)
    (height_lt (height (tuple%4./tuple%4/2 x)) (height (Poly%tuple%4. x)))
   )
   :pattern ((height (tuple%4./tuple%4/2 x)))
   :qid prelude_datatype_height_tuple%4./tuple%4/2
   :skolemid skolem_prelude_datatype_height_tuple%4./tuple%4/2
)))
(assert
 (forall ((x tuple%4.)) (!
   (=>
    (is-tuple%4./tuple%4 x)
    (height_lt (height (tuple%4./tuple%4/3 x)) (height (Poly%tuple%4. x)))
   )
   :pattern ((height (tuple%4./tuple%4/3 x)))
   :qid prelude_datatype_height_tuple%4./tuple%4/3
   :skolemid skolem_prelude_datatype_height_tuple%4./tuple%4/3
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%3&.
    Dcr
   ) (T%3& Type) (deep Bool) (x Poly) (y Poly)
  ) (!
   (=>
    (and
     (has_type x (TYPE%tuple%4. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3&))
     (has_type y (TYPE%tuple%4. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3&))
     (ext_eq deep T%0& (tuple%4./tuple%4/0 (%Poly%tuple%4. x)) (tuple%4./tuple%4/0 (%Poly%tuple%4.
        y
     )))
     (ext_eq deep T%1& (tuple%4./tuple%4/1 (%Poly%tuple%4. x)) (tuple%4./tuple%4/1 (%Poly%tuple%4.
        y
     )))
     (ext_eq deep T%2& (tuple%4./tuple%4/2 (%Poly%tuple%4. x)) (tuple%4./tuple%4/2 (%Poly%tuple%4.
        y
     )))
     (ext_eq deep T%3& (tuple%4./tuple%4/3 (%Poly%tuple%4. x)) (tuple%4./tuple%4/3 (%Poly%tuple%4.
        y
    ))))
    (ext_eq deep (TYPE%tuple%4. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3&) x y)
   )
   :pattern ((ext_eq deep (TYPE%tuple%4. T%0&. T%0& T%1&. T%1& T%2&. T%2& T%3&. T%3&)
     x y
   ))
   :qid internal_tuple__4./tuple__4_ext_equal_definition
   :skolemid skolem_internal_tuple__4./tuple__4_ext_equal_definition
)))

;; Function-Decl crate::Foo::arrow_2
(declare-fun impl&%2.arrow_2.? (Poly) Int)

;; Function-Decl crate::Foo::arrow_0
(declare-fun impl&%2.arrow_0.? (Poly) Int)

;; Function-Decl crate::Foo::arrow_3
(declare-fun impl&%2.arrow_3.? (Poly) R.)

;; Function-Decl crate::Foo::arrow_1
(declare-fun impl&%2.arrow_1.? (Poly) Bool)

;; Function-Decl crate::Foo::arrow_Bar_0
(declare-fun impl&%2.arrow_Bar_0.? (Poly) Int)

;; Function-Decl crate::Foo::arrow_Bar_1
(declare-fun impl&%2.arrow_Bar_1.? (Poly) Bool)

;; Function-Decl crate::Foo::arrow_Bar_2
(declare-fun impl&%2.arrow_Bar_2.? (Poly) Int)

;; Function-Decl crate::Foo::arrow_Bar_3
(declare-fun impl&%2.arrow_Bar_3.? (Poly) R.)

;; Function-Axioms crate::Foo::arrow_2
(assert
 (fuel_bool_default fuel%impl&%2.arrow_2.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%2.arrow_2.)
  (forall ((self! Poly)) (!
    (= (impl&%2.arrow_2.? self!) (Foo./Bar/2 (%Poly%Foo. self!)))
    :pattern ((impl&%2.arrow_2.? self!))
    :qid internal_impl&__2.arrow_2.?_definition
    :skolemid skolem_internal_impl&__2.arrow_2.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%Foo.)
    (uInv 8 (impl&%2.arrow_2.? self!))
   )
   :pattern ((impl&%2.arrow_2.? self!))
   :qid internal_impl&__2.arrow_2.?_pre_post_definition
   :skolemid skolem_internal_impl&__2.arrow_2.?_pre_post_definition
)))

;; Function-Axioms crate::Foo::arrow_0
(assert
 (fuel_bool_default fuel%impl&%2.arrow_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%2.arrow_0.)
  (forall ((self! Poly)) (!
    (= (impl&%2.arrow_0.? self!) (Foo./Bar/0 (%Poly%Foo. self!)))
    :pattern ((impl&%2.arrow_0.? self!))
    :qid internal_impl&__2.arrow_0.?_definition
    :skolemid skolem_internal_impl&__2.arrow_0.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%Foo.)
    (uInv 8 (impl&%2.arrow_0.? self!))
   )
   :pattern ((impl&%2.arrow_0.? self!))
   :qid internal_impl&__2.arrow_0.?_pre_post_definition
   :skolemid skolem_internal_impl&__2.arrow_0.?_pre_post_definition
)))

;; Function-Axioms crate::Foo::arrow_3
(assert
 (fuel_bool_default fuel%impl&%2.arrow_3.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%2.arrow_3.)
  (forall ((self! Poly)) (!
    (= (impl&%2.arrow_3.? self!) (Foo./Bar/3 (%Poly%Foo. self!)))
    :pattern ((impl&%2.arrow_3.? self!))
    :qid internal_impl&__2.arrow_3.?_definition
    :skolemid skolem_internal_impl&__2.arrow_3.?_definition
))))

;; Function-Axioms crate::Foo::arrow_1
(assert
 (fuel_bool_default fuel%impl&%2.arrow_1.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%2.arrow_1.)
  (forall ((self! Poly)) (!
    (= (impl&%2.arrow_1.? self!) (Foo./Bar/1 (%Poly%Foo. self!)))
    :pattern ((impl&%2.arrow_1.? self!))
    :qid internal_impl&__2.arrow_1.?_definition
    :skolemid skolem_internal_impl&__2.arrow_1.?_definition
))))

;; Function-Axioms crate::Foo::arrow_Bar_0
(assert
 (fuel_bool_default fuel%impl&%2.arrow_Bar_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%2.arrow_Bar_0.)
  (forall ((self! Poly)) (!
    (= (impl&%2.arrow_Bar_0.? self!) (Foo./Bar/0 (%Poly%Foo. self!)))
    :pattern ((impl&%2.arrow_Bar_0.? self!))
    :qid internal_impl&__2.arrow_Bar_0.?_definition
    :skolemid skolem_internal_impl&__2.arrow_Bar_0.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%Foo.)
    (uInv 8 (impl&%2.arrow_Bar_0.? self!))
   )
   :pattern ((impl&%2.arrow_Bar_0.? self!))
   :qid internal_impl&__2.arrow_Bar_0.?_pre_post_definition
   :skolemid skolem_internal_impl&__2.arrow_Bar_0.?_pre_post_definition
)))

;; Function-Axioms crate::Foo::arrow_Bar_1
(assert
 (fuel_bool_default fuel%impl&%2.arrow_Bar_1.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%2.arrow_Bar_1.)
  (forall ((self! Poly)) (!
    (= (impl&%2.arrow_Bar_1.? self!) (Foo./Bar/1 (%Poly%Foo. self!)))
    :pattern ((impl&%2.arrow_Bar_1.? self!))
    :qid internal_impl&__2.arrow_Bar_1.?_definition
    :skolemid skolem_internal_impl&__2.arrow_Bar_1.?_definition
))))

;; Function-Axioms crate::Foo::arrow_Bar_2
(assert
 (fuel_bool_default fuel%impl&%2.arrow_Bar_2.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%2.arrow_Bar_2.)
  (forall ((self! Poly)) (!
    (= (impl&%2.arrow_Bar_2.? self!) (Foo./Bar/2 (%Poly%Foo. self!)))
    :pattern ((impl&%2.arrow_Bar_2.? self!))
    :qid internal_impl&__2.arrow_Bar_2.?_definition
    :skolemid skolem_internal_impl&__2.arrow_Bar_2.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%Foo.)
    (uInv 8 (impl&%2.arrow_Bar_2.? self!))
   )
   :pattern ((impl&%2.arrow_Bar_2.? self!))
   :qid internal_impl&__2.arrow_Bar_2.?_pre_post_definition
   :skolemid skolem_internal_impl&__2.arrow_Bar_2.?_pre_post_definition
)))

;; Function-Axioms crate::Foo::arrow_Bar_3
(assert
 (fuel_bool_default fuel%impl&%2.arrow_Bar_3.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%2.arrow_Bar_3.)
  (forall ((self! Poly)) (!
    (= (impl&%2.arrow_Bar_3.? self!) (Foo./Bar/3 (%Poly%Foo. self!)))
    :pattern ((impl&%2.arrow_Bar_3.? self!))
    :qid internal_impl&__2.arrow_Bar_3.?_definition
    :skolemid skolem_internal_impl&__2.arrow_Bar_3.?_definition
))))

;; Function-Def crate::R::clone
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/match-4460c9f52e99806e-dot_dot_patterns/test.rs:15:10: 15:15 (#11)
(get-info :all-statistics)
(push)
 (declare-const %return! R.)
 (declare-const self! R.)
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

;; Function-Def crate::test_tuple
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/match-4460c9f52e99806e-dot_dot_patterns/test.rs:18:1: 18:16 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Bool)
 (declare-const tmp%6 Bool)
 (declare-const tup@ tuple%4.)
 (declare-const x@ Int)
 (declare-const y@ R.)
 (declare-const w@ Int)
 (declare-const b@ Bool)
 (declare-const c@ Int)
 (declare-const d@ R.)
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
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 (assert
  (not (=>
    (= tup@ (tuple%4./tuple%4 (I 1) (B false) (I 3) (Poly%R. R./R)))
    (=>
     (= x@ (%I (tuple%4./tuple%4/0 (%Poly%tuple%4. (Poly%tuple%4. tup@)))))
     (=>
      (= y@ (%Poly%R. (tuple%4./tuple%4/3 (%Poly%tuple%4. (Poly%tuple%4. tup@)))))
      (=>
       (= tmp%1 (= x@ 1))
       (and
        (=>
         %%location_label%%0
         tmp%1
        )
        (=>
         tmp%1
         (=>
          (= tmp%2 (= y@ R./R))
          (and
           (=>
            %%location_label%%1
            tmp%2
           )
           (=>
            tmp%2
            (=>
             (= w@ (%I (tuple%4./tuple%4/0 (%Poly%tuple%4. (Poly%tuple%4. tup@)))))
             (=>
              (= tmp%3 (= w@ 1))
              (and
               (=>
                %%location_label%%2
                tmp%3
               )
               (=>
                tmp%3
                (=>
                 (= b@ (%B (tuple%4./tuple%4/1 (%Poly%tuple%4. (Poly%tuple%4. tup@)))))
                 (=>
                  (= c@ (%I (tuple%4./tuple%4/2 (%Poly%tuple%4. (Poly%tuple%4. tup@)))))
                  (=>
                   (= d@ (%Poly%R. (tuple%4./tuple%4/3 (%Poly%tuple%4. (Poly%tuple%4. tup@)))))
                   (=>
                    (= tmp%4 (= b@ false))
                    (and
                     (=>
                      %%location_label%%3
                      tmp%4
                     )
                     (=>
                      tmp%4
                      (=>
                       (= tmp%5 (= c@ 3))
                       (and
                        (=>
                         %%location_label%%4
                         tmp%5
                        )
                        (=>
                         tmp%5
                         (=>
                          (= tmp%6 (= d@ R./R))
                          (=>
                           %%location_label%%5
                           tmp%6
 ))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test_tuple_ctor
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/match-4460c9f52e99806e-dot_dot_patterns/test.rs:40:1: 40:21 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Bool)
 (declare-const tmp%6 Bool)
 (declare-const tup@ Foo.)
 (declare-const x@ Int)
 (declare-const y@ R.)
 (declare-const w@ Int)
 (declare-const b@ Bool)
 (declare-const c@ Int)
 (declare-const d@ R.)
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
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 (assert
  (not (=>
    (= tup@ (Foo./Bar (%I (I 1)) (%B (B false)) (%I (I 3)) (%Poly%R. (Poly%R. R./R))))
    (=>
     (= x@ (Foo./Bar/0 (%Poly%Foo. (Poly%Foo. tup@))))
     (=>
      (= y@ (Foo./Bar/3 (%Poly%Foo. (Poly%Foo. tup@))))
      (=>
       (= tmp%1 (= x@ 1))
       (and
        (=>
         %%location_label%%0
         tmp%1
        )
        (=>
         tmp%1
         (=>
          (= tmp%2 (= y@ R./R))
          (and
           (=>
            %%location_label%%1
            tmp%2
           )
           (=>
            tmp%2
            (=>
             (= w@ (Foo./Bar/0 (%Poly%Foo. (Poly%Foo. tup@))))
             (=>
              (= tmp%3 (= w@ 1))
              (and
               (=>
                %%location_label%%2
                tmp%3
               )
               (=>
                tmp%3
                (=>
                 (= b@ (Foo./Bar/1 (%Poly%Foo. (Poly%Foo. tup@))))
                 (=>
                  (= c@ (Foo./Bar/2 (%Poly%Foo. (Poly%Foo. tup@))))
                  (=>
                   (= d@ (Foo./Bar/3 (%Poly%Foo. (Poly%Foo. tup@))))
                   (=>
                    (= tmp%4 (= b@ false))
                    (and
                     (=>
                      %%location_label%%3
                      tmp%4
                     )
                     (=>
                      tmp%4
                      (=>
                       (= tmp%5 (= c@ 3))
                       (and
                        (=>
                         %%location_label%%4
                         tmp%5
                        )
                        (=>
                         tmp%5
                         (=>
                          (= tmp%6 (= d@ R./R))
                          (=>
                           %%location_label%%5
                           tmp%6
 ))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
