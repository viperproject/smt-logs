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
(declare-const fuel%impl&%0.is_Qux. FuelId)
(declare-const fuel%impl&%0.get_Qux_0. FuelId)
(declare-const fuel%impl&%0.is_Duck. FuelId)
(declare-const fuel%impl&%0.get_Duck_0. FuelId)
(declare-const fuel%impl&%1.arrow_Bar_0. FuelId)
(declare-const fuel%impl&%1.arrow_Qux_0. FuelId)
(declare-const fuel%impl&%1.arrow_Duck_0. FuelId)
(declare-const fuel%match_spec. FuelId)
(declare-const fuel%impl&%2.is_TRex. FuelId)
(declare-const fuel%impl&%2.get_TRex_0. FuelId)
(declare-const fuel%impl&%2.get_TRex_1. FuelId)
(declare-const fuel%impl&%2.is_Bird. FuelId)
(declare-const fuel%impl&%2.get_Bird_0. FuelId)
(declare-const fuel%impl&%2.get_Bird_1. FuelId)
(declare-const fuel%impl&%2.is_Brachiosaurus. FuelId)
(declare-const fuel%impl&%2.get_Brachiosaurus_0. FuelId)
(declare-const fuel%impl&%2.get_Brachiosaurus_1. FuelId)
(declare-const fuel%impl&%3.arrow_TRex_0. FuelId)
(declare-const fuel%impl&%3.arrow_TRex_1. FuelId)
(declare-const fuel%impl&%3.arrow_Bird_0. FuelId)
(declare-const fuel%impl&%3.arrow_Bird_1. FuelId)
(declare-const fuel%impl&%3.arrow_Brachiosaurus_0. FuelId)
(declare-const fuel%impl&%3.arrow_Brachiosaurus_1. FuelId)
(declare-const fuel%impl&%4.is_Left. FuelId)
(declare-const fuel%impl&%4.get_Left_0. FuelId)
(declare-const fuel%impl&%4.is_Right. FuelId)
(declare-const fuel%impl&%4.get_Right_0. FuelId)
(declare-const fuel%impl&%4.is_Middle. FuelId)
(declare-const fuel%impl&%4.get_Middle_0. FuelId)
(declare-const fuel%impl&%4.is_Up. FuelId)
(declare-const fuel%impl&%4.get_Up_0. FuelId)
(declare-const fuel%impl&%4.is_Sideways. FuelId)
(declare-const fuel%impl&%4.get_Sideways_0. FuelId)
(declare-const fuel%impl&%4.is_Inwards. FuelId)
(declare-const fuel%impl&%5.arrow_Left_0. FuelId)
(declare-const fuel%impl&%5.arrow_Right_0. FuelId)
(declare-const fuel%impl&%5.arrow_Middle_0. FuelId)
(declare-const fuel%impl&%5.arrow_Up_0. FuelId)
(declare-const fuel%impl&%5.arrow_Sideways_0. FuelId)
(assert
 (distinct fuel%impl&%0.is_Bar. fuel%impl&%0.get_Bar_0. fuel%impl&%0.is_Qux. fuel%impl&%0.get_Qux_0.
  fuel%impl&%0.is_Duck. fuel%impl&%0.get_Duck_0. fuel%impl&%1.arrow_Bar_0. fuel%impl&%1.arrow_Qux_0.
  fuel%impl&%1.arrow_Duck_0. fuel%match_spec. fuel%impl&%2.is_TRex. fuel%impl&%2.get_TRex_0.
  fuel%impl&%2.get_TRex_1. fuel%impl&%2.is_Bird. fuel%impl&%2.get_Bird_0. fuel%impl&%2.get_Bird_1.
  fuel%impl&%2.is_Brachiosaurus. fuel%impl&%2.get_Brachiosaurus_0. fuel%impl&%2.get_Brachiosaurus_1.
  fuel%impl&%3.arrow_TRex_0. fuel%impl&%3.arrow_TRex_1. fuel%impl&%3.arrow_Bird_0.
  fuel%impl&%3.arrow_Bird_1. fuel%impl&%3.arrow_Brachiosaurus_0. fuel%impl&%3.arrow_Brachiosaurus_1.
  fuel%impl&%4.is_Left. fuel%impl&%4.get_Left_0. fuel%impl&%4.is_Right. fuel%impl&%4.get_Right_0.
  fuel%impl&%4.is_Middle. fuel%impl&%4.get_Middle_0. fuel%impl&%4.is_Up. fuel%impl&%4.get_Up_0.
  fuel%impl&%4.is_Sideways. fuel%impl&%4.get_Sideways_0. fuel%impl&%4.is_Inwards. fuel%impl&%5.arrow_Left_0.
  fuel%impl&%5.arrow_Right_0. fuel%impl&%5.arrow_Middle_0. fuel%impl&%5.arrow_Up_0.
  fuel%impl&%5.arrow_Sideways_0.
))

;; Datatypes
(declare-sort allocator_global%. 0)
(declare-datatypes ((Foo. 0) (Dinosaur. 0) (Path. 0) (tuple%0. 0)) (((Foo./Bar (Foo./Bar/?0
     Int
    )
   ) (Foo./Qux (Foo./Qux/?0 Int)) (Foo./Duck (Foo./Duck/?0 Int))
  ) ((Dinosaur./TRex (Dinosaur./TRex/?0 Int) (Dinosaur./TRex/?1 Int)) (Dinosaur./Bird
    (Dinosaur./Bird/?0 Int) (Dinosaur./Bird/?1 Int)
   ) (Dinosaur./Brachiosaurus (Dinosaur./Brachiosaurus/?0 Int) (Dinosaur./Brachiosaurus/?1
     Int
   ))
  ) ((Path./Left (Path./Left/?0 Path.)) (Path./Right (Path./Right/?0 Path.)) (Path./Middle
    (Path./Middle/?0 Path.)
   ) (Path./Up (Path./Up/?0 Path.)) (Path./Sideways (Path./Sideways/?0 Path.)) (Path./Inwards)
  ) ((tuple%0./tuple%0))
))
(declare-fun Foo./Bar/0 (Foo.) Int)
(declare-fun Foo./Qux/0 (Foo.) Int)
(declare-fun Foo./Duck/0 (Foo.) Int)
(declare-fun Dinosaur./TRex/0 (Dinosaur.) Int)
(declare-fun Dinosaur./TRex/1 (Dinosaur.) Int)
(declare-fun Dinosaur./Bird/0 (Dinosaur.) Int)
(declare-fun Dinosaur./Bird/1 (Dinosaur.) Int)
(declare-fun Dinosaur./Brachiosaurus/0 (Dinosaur.) Int)
(declare-fun Dinosaur./Brachiosaurus/1 (Dinosaur.) Int)
(declare-fun Path./Left/0 (Path.) Path.)
(declare-fun Path./Right/0 (Path.) Path.)
(declare-fun Path./Middle/0 (Path.) Path.)
(declare-fun Path./Up/0 (Path.) Path.)
(declare-fun Path./Sideways/0 (Path.) Path.)
(declare-const TYPE%Foo. Type)
(declare-const TYPE%Dinosaur. Type)
(declare-const TYPE%Path. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%allocator_global%. (allocator_global%.) Poly)
(declare-fun %Poly%allocator_global%. (Poly) allocator_global%.)
(declare-fun Poly%Foo. (Foo.) Poly)
(declare-fun %Poly%Foo. (Poly) Foo.)
(declare-fun Poly%Dinosaur. (Dinosaur.) Poly)
(declare-fun %Poly%Dinosaur. (Poly) Dinosaur.)
(declare-fun Poly%Path. (Path.) Poly)
(declare-fun %Poly%Path. (Poly) Path.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(assert
 (forall ((x allocator_global%.)) (!
   (= x (%Poly%allocator_global%. (Poly%allocator_global%. x)))
   :pattern ((Poly%allocator_global%. x))
   :qid internal_crate__allocator_global___box_axiom_definition
   :skolemid skolem_internal_crate__allocator_global___box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x ALLOCATOR_GLOBAL)
    (= x (Poly%allocator_global%. (%Poly%allocator_global%. x)))
   )
   :pattern ((has_type x ALLOCATOR_GLOBAL))
   :qid internal_crate__allocator_global___unbox_axiom_definition
   :skolemid skolem_internal_crate__allocator_global___unbox_axiom_definition
)))
(assert
 (forall ((x allocator_global%.)) (!
   (has_type (Poly%allocator_global%. x) ALLOCATOR_GLOBAL)
   :pattern ((has_type (Poly%allocator_global%. x) ALLOCATOR_GLOBAL))
   :qid internal_crate__allocator_global___has_type_always_definition
   :skolemid skolem_internal_crate__allocator_global___has_type_always_definition
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
 (forall ((_0! Int)) (!
   (=>
    (uInv 64 _0!)
    (has_type (Poly%Foo. (Foo./Bar _0!)) TYPE%Foo.)
   )
   :pattern ((has_type (Poly%Foo. (Foo./Bar _0!)) TYPE%Foo.))
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
    (uInv 64 (Foo./Bar/0 (%Poly%Foo. x)))
   )
   :pattern ((Foo./Bar/0 (%Poly%Foo. x)) (has_type x TYPE%Foo.))
   :qid internal_Foo./Bar/0_invariant_definition
   :skolemid skolem_internal_Foo./Bar/0_invariant_definition
)))
(assert
 (forall ((_0! Int)) (!
   (=>
    (uInv 64 _0!)
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
    (uInv 64 (Foo./Qux/0 (%Poly%Foo. x)))
   )
   :pattern ((Foo./Qux/0 (%Poly%Foo. x)) (has_type x TYPE%Foo.))
   :qid internal_Foo./Qux/0_invariant_definition
   :skolemid skolem_internal_Foo./Qux/0_invariant_definition
)))
(assert
 (forall ((_0! Int)) (!
   (=>
    (uInv 64 _0!)
    (has_type (Poly%Foo. (Foo./Duck _0!)) TYPE%Foo.)
   )
   :pattern ((has_type (Poly%Foo. (Foo./Duck _0!)) TYPE%Foo.))
   :qid internal_Foo./Duck_constructor_definition
   :skolemid skolem_internal_Foo./Duck_constructor_definition
)))
(assert
 (forall ((x Foo.)) (!
   (= (Foo./Duck/0 x) (Foo./Duck/?0 x))
   :pattern ((Foo./Duck/0 x))
   :qid internal_Foo./Duck/0_accessor_definition
   :skolemid skolem_internal_Foo./Duck/0_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%Foo.)
    (uInv 64 (Foo./Duck/0 (%Poly%Foo. x)))
   )
   :pattern ((Foo./Duck/0 (%Poly%Foo. x)) (has_type x TYPE%Foo.))
   :qid internal_Foo./Duck/0_invariant_definition
   :skolemid skolem_internal_Foo./Duck/0_invariant_definition
)))
(assert
 (forall ((x Dinosaur.)) (!
   (= x (%Poly%Dinosaur. (Poly%Dinosaur. x)))
   :pattern ((Poly%Dinosaur. x))
   :qid internal_crate__Dinosaur_box_axiom_definition
   :skolemid skolem_internal_crate__Dinosaur_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%Dinosaur.)
    (= x (Poly%Dinosaur. (%Poly%Dinosaur. x)))
   )
   :pattern ((has_type x TYPE%Dinosaur.))
   :qid internal_crate__Dinosaur_unbox_axiom_definition
   :skolemid skolem_internal_crate__Dinosaur_unbox_axiom_definition
)))
(assert
 (forall ((x Dinosaur.)) (!
   (= (Dinosaur./TRex/0 x) (Dinosaur./TRex/?0 x))
   :pattern ((Dinosaur./TRex/0 x))
   :qid internal_Dinosaur./TRex/0_accessor_definition
   :skolemid skolem_internal_Dinosaur./TRex/0_accessor_definition
)))
(assert
 (forall ((x Dinosaur.)) (!
   (= (Dinosaur./TRex/1 x) (Dinosaur./TRex/?1 x))
   :pattern ((Dinosaur./TRex/1 x))
   :qid internal_Dinosaur./TRex/1_accessor_definition
   :skolemid skolem_internal_Dinosaur./TRex/1_accessor_definition
)))
(assert
 (forall ((x Dinosaur.)) (!
   (= (Dinosaur./Bird/0 x) (Dinosaur./Bird/?0 x))
   :pattern ((Dinosaur./Bird/0 x))
   :qid internal_Dinosaur./Bird/0_accessor_definition
   :skolemid skolem_internal_Dinosaur./Bird/0_accessor_definition
)))
(assert
 (forall ((x Dinosaur.)) (!
   (= (Dinosaur./Bird/1 x) (Dinosaur./Bird/?1 x))
   :pattern ((Dinosaur./Bird/1 x))
   :qid internal_Dinosaur./Bird/1_accessor_definition
   :skolemid skolem_internal_Dinosaur./Bird/1_accessor_definition
)))
(assert
 (forall ((x Dinosaur.)) (!
   (= (Dinosaur./Brachiosaurus/0 x) (Dinosaur./Brachiosaurus/?0 x))
   :pattern ((Dinosaur./Brachiosaurus/0 x))
   :qid internal_Dinosaur./Brachiosaurus/0_accessor_definition
   :skolemid skolem_internal_Dinosaur./Brachiosaurus/0_accessor_definition
)))
(assert
 (forall ((x Dinosaur.)) (!
   (= (Dinosaur./Brachiosaurus/1 x) (Dinosaur./Brachiosaurus/?1 x))
   :pattern ((Dinosaur./Brachiosaurus/1 x))
   :qid internal_Dinosaur./Brachiosaurus/1_accessor_definition
   :skolemid skolem_internal_Dinosaur./Brachiosaurus/1_accessor_definition
)))
(assert
 (forall ((x Dinosaur.)) (!
   (has_type (Poly%Dinosaur. x) TYPE%Dinosaur.)
   :pattern ((has_type (Poly%Dinosaur. x) TYPE%Dinosaur.))
   :qid internal_crate__Dinosaur_has_type_always_definition
   :skolemid skolem_internal_crate__Dinosaur_has_type_always_definition
)))
(assert
 (forall ((x Path.)) (!
   (= x (%Poly%Path. (Poly%Path. x)))
   :pattern ((Poly%Path. x))
   :qid internal_crate__Path_box_axiom_definition
   :skolemid skolem_internal_crate__Path_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%Path.)
    (= x (Poly%Path. (%Poly%Path. x)))
   )
   :pattern ((has_type x TYPE%Path.))
   :qid internal_crate__Path_unbox_axiom_definition
   :skolemid skolem_internal_crate__Path_unbox_axiom_definition
)))
(assert
 (forall ((x Path.)) (!
   (= (Path./Left/0 x) (Path./Left/?0 x))
   :pattern ((Path./Left/0 x))
   :qid internal_Path./Left/0_accessor_definition
   :skolemid skolem_internal_Path./Left/0_accessor_definition
)))
(assert
 (forall ((x Path.)) (!
   (= (Path./Right/0 x) (Path./Right/?0 x))
   :pattern ((Path./Right/0 x))
   :qid internal_Path./Right/0_accessor_definition
   :skolemid skolem_internal_Path./Right/0_accessor_definition
)))
(assert
 (forall ((x Path.)) (!
   (= (Path./Middle/0 x) (Path./Middle/?0 x))
   :pattern ((Path./Middle/0 x))
   :qid internal_Path./Middle/0_accessor_definition
   :skolemid skolem_internal_Path./Middle/0_accessor_definition
)))
(assert
 (forall ((x Path.)) (!
   (= (Path./Up/0 x) (Path./Up/?0 x))
   :pattern ((Path./Up/0 x))
   :qid internal_Path./Up/0_accessor_definition
   :skolemid skolem_internal_Path./Up/0_accessor_definition
)))
(assert
 (forall ((x Path.)) (!
   (= (Path./Sideways/0 x) (Path./Sideways/?0 x))
   :pattern ((Path./Sideways/0 x))
   :qid internal_Path./Sideways/0_accessor_definition
   :skolemid skolem_internal_Path./Sideways/0_accessor_definition
)))
(assert
 (forall ((x Path.)) (!
   (has_type (Poly%Path. x) TYPE%Path.)
   :pattern ((has_type (Poly%Path. x) TYPE%Path.))
   :qid internal_crate__Path_has_type_always_definition
   :skolemid skolem_internal_crate__Path_has_type_always_definition
)))
(assert
 (forall ((x Path.)) (!
   (=>
    (is-Path./Left x)
    (height_lt (height (Poly%Path. (Path./Left/0 x))) (height (Poly%Path. x)))
   )
   :pattern ((height (Poly%Path. (Path./Left/0 x))))
   :qid prelude_datatype_height_Path./Left/0
   :skolemid skolem_prelude_datatype_height_Path./Left/0
)))
(assert
 (forall ((x Path.)) (!
   (=>
    (is-Path./Right x)
    (height_lt (height (Poly%Path. (Path./Right/0 x))) (height (Poly%Path. x)))
   )
   :pattern ((height (Poly%Path. (Path./Right/0 x))))
   :qid prelude_datatype_height_Path./Right/0
   :skolemid skolem_prelude_datatype_height_Path./Right/0
)))
(assert
 (forall ((x Path.)) (!
   (=>
    (is-Path./Middle x)
    (height_lt (height (Poly%Path. (Path./Middle/0 x))) (height (Poly%Path. x)))
   )
   :pattern ((height (Poly%Path. (Path./Middle/0 x))))
   :qid prelude_datatype_height_Path./Middle/0
   :skolemid skolem_prelude_datatype_height_Path./Middle/0
)))
(assert
 (forall ((x Path.)) (!
   (=>
    (is-Path./Up x)
    (height_lt (height (Poly%Path. (Path./Up/0 x))) (height (Poly%Path. x)))
   )
   :pattern ((height (Poly%Path. (Path./Up/0 x))))
   :qid prelude_datatype_height_Path./Up/0
   :skolemid skolem_prelude_datatype_height_Path./Up/0
)))
(assert
 (forall ((x Path.)) (!
   (=>
    (is-Path./Sideways x)
    (height_lt (height (Poly%Path. (Path./Sideways/0 x))) (height (Poly%Path. x)))
   )
   :pattern ((height (Poly%Path. (Path./Sideways/0 x))))
   :qid prelude_datatype_height_Path./Sideways/0
   :skolemid skolem_prelude_datatype_height_Path./Sideways/0
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

;; Function-Decl crate::Foo::is_Bar
(declare-fun impl&%0.is_Bar.? (Poly) Bool)

;; Function-Decl crate::Foo::get_Bar_0
(declare-fun impl&%0.get_Bar_0.? (Poly) Int)

;; Function-Decl crate::Foo::is_Qux
(declare-fun impl&%0.is_Qux.? (Poly) Bool)

;; Function-Decl crate::Foo::get_Qux_0
(declare-fun impl&%0.get_Qux_0.? (Poly) Int)

;; Function-Decl crate::Foo::is_Duck
(declare-fun impl&%0.is_Duck.? (Poly) Bool)

;; Function-Decl crate::Foo::get_Duck_0
(declare-fun impl&%0.get_Duck_0.? (Poly) Int)

;; Function-Decl crate::Foo::arrow_Bar_0
(declare-fun impl&%1.arrow_Bar_0.? (Poly) Int)

;; Function-Decl crate::Foo::arrow_Qux_0
(declare-fun impl&%1.arrow_Qux_0.? (Poly) Int)

;; Function-Decl crate::Foo::arrow_Duck_0
(declare-fun impl&%1.arrow_Duck_0.? (Poly) Int)

;; Function-Decl crate::match_spec
(declare-fun match_spec.? (Poly) Int)

;; Function-Decl crate::Dinosaur::is_TRex
(declare-fun impl&%2.is_TRex.? (Poly) Bool)

;; Function-Decl crate::Dinosaur::get_TRex_0
(declare-fun impl&%2.get_TRex_0.? (Poly) Int)

;; Function-Decl crate::Dinosaur::get_TRex_1
(declare-fun impl&%2.get_TRex_1.? (Poly) Int)

;; Function-Decl crate::Dinosaur::is_Bird
(declare-fun impl&%2.is_Bird.? (Poly) Bool)

;; Function-Decl crate::Dinosaur::get_Bird_0
(declare-fun impl&%2.get_Bird_0.? (Poly) Int)

;; Function-Decl crate::Dinosaur::get_Bird_1
(declare-fun impl&%2.get_Bird_1.? (Poly) Int)

;; Function-Decl crate::Dinosaur::is_Brachiosaurus
(declare-fun impl&%2.is_Brachiosaurus.? (Poly) Bool)

;; Function-Decl crate::Dinosaur::get_Brachiosaurus_0
(declare-fun impl&%2.get_Brachiosaurus_0.? (Poly) Int)

;; Function-Decl crate::Dinosaur::get_Brachiosaurus_1
(declare-fun impl&%2.get_Brachiosaurus_1.? (Poly) Int)

;; Function-Decl crate::Dinosaur::arrow_TRex_0
(declare-fun impl&%3.arrow_TRex_0.? (Poly) Int)

;; Function-Decl crate::Dinosaur::arrow_TRex_1
(declare-fun impl&%3.arrow_TRex_1.? (Poly) Int)

;; Function-Decl crate::Dinosaur::arrow_Bird_0
(declare-fun impl&%3.arrow_Bird_0.? (Poly) Int)

;; Function-Decl crate::Dinosaur::arrow_Bird_1
(declare-fun impl&%3.arrow_Bird_1.? (Poly) Int)

;; Function-Decl crate::Dinosaur::arrow_Brachiosaurus_0
(declare-fun impl&%3.arrow_Brachiosaurus_0.? (Poly) Int)

;; Function-Decl crate::Dinosaur::arrow_Brachiosaurus_1
(declare-fun impl&%3.arrow_Brachiosaurus_1.? (Poly) Int)

;; Function-Decl crate::Path::is_Left
(declare-fun impl&%4.is_Left.? (Poly) Bool)

;; Function-Decl crate::Path::get_Left_0
(declare-fun impl&%4.get_Left_0.? (Poly) Path.)

;; Function-Decl crate::Path::is_Right
(declare-fun impl&%4.is_Right.? (Poly) Bool)

;; Function-Decl crate::Path::get_Right_0
(declare-fun impl&%4.get_Right_0.? (Poly) Path.)

;; Function-Decl crate::Path::is_Middle
(declare-fun impl&%4.is_Middle.? (Poly) Bool)

;; Function-Decl crate::Path::get_Middle_0
(declare-fun impl&%4.get_Middle_0.? (Poly) Path.)

;; Function-Decl crate::Path::is_Up
(declare-fun impl&%4.is_Up.? (Poly) Bool)

;; Function-Decl crate::Path::get_Up_0
(declare-fun impl&%4.get_Up_0.? (Poly) Path.)

;; Function-Decl crate::Path::is_Sideways
(declare-fun impl&%4.is_Sideways.? (Poly) Bool)

;; Function-Decl crate::Path::get_Sideways_0
(declare-fun impl&%4.get_Sideways_0.? (Poly) Path.)

;; Function-Decl crate::Path::is_Inwards
(declare-fun impl&%4.is_Inwards.? (Poly) Bool)

;; Function-Decl crate::Path::arrow_Left_0
(declare-fun impl&%5.arrow_Left_0.? (Poly) Path.)

;; Function-Decl crate::Path::arrow_Right_0
(declare-fun impl&%5.arrow_Right_0.? (Poly) Path.)

;; Function-Decl crate::Path::arrow_Middle_0
(declare-fun impl&%5.arrow_Middle_0.? (Poly) Path.)

;; Function-Decl crate::Path::arrow_Up_0
(declare-fun impl&%5.arrow_Up_0.? (Poly) Path.)

;; Function-Decl crate::Path::arrow_Sideways_0
(declare-fun impl&%5.arrow_Sideways_0.? (Poly) Path.)

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
    (uInv 64 (impl&%0.get_Bar_0.? self!))
   )
   :pattern ((impl&%0.get_Bar_0.? self!))
   :qid internal_impl&__0.get_Bar_0.?_pre_post_definition
   :skolemid skolem_internal_impl&__0.get_Bar_0.?_pre_post_definition
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

;; Function-Axioms crate::Foo::get_Qux_0
(assert
 (fuel_bool_default fuel%impl&%0.get_Qux_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%0.get_Qux_0.)
  (forall ((self! Poly)) (!
    (= (impl&%0.get_Qux_0.? self!) (Foo./Qux/0 (%Poly%Foo. self!)))
    :pattern ((impl&%0.get_Qux_0.? self!))
    :qid internal_impl&__0.get_Qux_0.?_definition
    :skolemid skolem_internal_impl&__0.get_Qux_0.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%Foo.)
    (uInv 64 (impl&%0.get_Qux_0.? self!))
   )
   :pattern ((impl&%0.get_Qux_0.? self!))
   :qid internal_impl&__0.get_Qux_0.?_pre_post_definition
   :skolemid skolem_internal_impl&__0.get_Qux_0.?_pre_post_definition
)))

;; Function-Axioms crate::Foo::is_Duck
(assert
 (fuel_bool_default fuel%impl&%0.is_Duck.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%0.is_Duck.)
  (forall ((self! Poly)) (!
    (= (impl&%0.is_Duck.? self!) (is-Foo./Duck (%Poly%Foo. self!)))
    :pattern ((impl&%0.is_Duck.? self!))
    :qid internal_impl&__0.is_Duck.?_definition
    :skolemid skolem_internal_impl&__0.is_Duck.?_definition
))))

;; Function-Axioms crate::Foo::get_Duck_0
(assert
 (fuel_bool_default fuel%impl&%0.get_Duck_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%0.get_Duck_0.)
  (forall ((self! Poly)) (!
    (= (impl&%0.get_Duck_0.? self!) (Foo./Duck/0 (%Poly%Foo. self!)))
    :pattern ((impl&%0.get_Duck_0.? self!))
    :qid internal_impl&__0.get_Duck_0.?_definition
    :skolemid skolem_internal_impl&__0.get_Duck_0.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%Foo.)
    (uInv 64 (impl&%0.get_Duck_0.? self!))
   )
   :pattern ((impl&%0.get_Duck_0.? self!))
   :qid internal_impl&__0.get_Duck_0.?_pre_post_definition
   :skolemid skolem_internal_impl&__0.get_Duck_0.?_pre_post_definition
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
    (uInv 64 (impl&%1.arrow_Bar_0.? self!))
   )
   :pattern ((impl&%1.arrow_Bar_0.? self!))
   :qid internal_impl&__1.arrow_Bar_0.?_pre_post_definition
   :skolemid skolem_internal_impl&__1.arrow_Bar_0.?_pre_post_definition
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
    (uInv 64 (impl&%1.arrow_Qux_0.? self!))
   )
   :pattern ((impl&%1.arrow_Qux_0.? self!))
   :qid internal_impl&__1.arrow_Qux_0.?_pre_post_definition
   :skolemid skolem_internal_impl&__1.arrow_Qux_0.?_pre_post_definition
)))

;; Function-Axioms crate::Foo::arrow_Duck_0
(assert
 (fuel_bool_default fuel%impl&%1.arrow_Duck_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%1.arrow_Duck_0.)
  (forall ((self! Poly)) (!
    (= (impl&%1.arrow_Duck_0.? self!) (Foo./Duck/0 (%Poly%Foo. self!)))
    :pattern ((impl&%1.arrow_Duck_0.? self!))
    :qid internal_impl&__1.arrow_Duck_0.?_definition
    :skolemid skolem_internal_impl&__1.arrow_Duck_0.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%Foo.)
    (uInv 64 (impl&%1.arrow_Duck_0.? self!))
   )
   :pattern ((impl&%1.arrow_Duck_0.? self!))
   :qid internal_impl&__1.arrow_Duck_0.?_pre_post_definition
   :skolemid skolem_internal_impl&__1.arrow_Duck_0.?_pre_post_definition
)))

;; Function-Axioms crate::match_spec
(assert
 (fuel_bool_default fuel%match_spec.)
)
(assert
 (=>
  (fuel_bool fuel%match_spec.)
  (forall ((foo! Poly)) (!
    (= (match_spec.? foo!) (ite
      (or
       (is-Foo./Bar (%Poly%Foo. foo!))
       (is-Foo./Qux (%Poly%Foo. foo!))
      )
      (let
       ((x$ (ite
          (is-Foo./Bar (%Poly%Foo. foo!))
          (Foo./Bar/0 (%Poly%Foo. foo!))
          (Foo./Qux/0 (%Poly%Foo. foo!))
       )))
       (Add x$ 1)
      )
      (let
       ((x$ (Foo./Duck/0 (%Poly%Foo. foo!))))
       x$
    )))
    :pattern ((match_spec.? foo!))
    :qid internal_match_spec.?_definition
    :skolemid skolem_internal_match_spec.?_definition
))))

;; Function-Axioms crate::Dinosaur::is_TRex
(assert
 (fuel_bool_default fuel%impl&%2.is_TRex.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%2.is_TRex.)
  (forall ((self! Poly)) (!
    (= (impl&%2.is_TRex.? self!) (is-Dinosaur./TRex (%Poly%Dinosaur. self!)))
    :pattern ((impl&%2.is_TRex.? self!))
    :qid internal_impl&__2.is_TRex.?_definition
    :skolemid skolem_internal_impl&__2.is_TRex.?_definition
))))

;; Function-Axioms crate::Dinosaur::get_TRex_0
(assert
 (fuel_bool_default fuel%impl&%2.get_TRex_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%2.get_TRex_0.)
  (forall ((self! Poly)) (!
    (= (impl&%2.get_TRex_0.? self!) (Dinosaur./TRex/0 (%Poly%Dinosaur. self!)))
    :pattern ((impl&%2.get_TRex_0.? self!))
    :qid internal_impl&__2.get_TRex_0.?_definition
    :skolemid skolem_internal_impl&__2.get_TRex_0.?_definition
))))

;; Function-Axioms crate::Dinosaur::get_TRex_1
(assert
 (fuel_bool_default fuel%impl&%2.get_TRex_1.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%2.get_TRex_1.)
  (forall ((self! Poly)) (!
    (= (impl&%2.get_TRex_1.? self!) (Dinosaur./TRex/1 (%Poly%Dinosaur. self!)))
    :pattern ((impl&%2.get_TRex_1.? self!))
    :qid internal_impl&__2.get_TRex_1.?_definition
    :skolemid skolem_internal_impl&__2.get_TRex_1.?_definition
))))

;; Function-Axioms crate::Dinosaur::is_Bird
(assert
 (fuel_bool_default fuel%impl&%2.is_Bird.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%2.is_Bird.)
  (forall ((self! Poly)) (!
    (= (impl&%2.is_Bird.? self!) (is-Dinosaur./Bird (%Poly%Dinosaur. self!)))
    :pattern ((impl&%2.is_Bird.? self!))
    :qid internal_impl&__2.is_Bird.?_definition
    :skolemid skolem_internal_impl&__2.is_Bird.?_definition
))))

;; Function-Axioms crate::Dinosaur::get_Bird_0
(assert
 (fuel_bool_default fuel%impl&%2.get_Bird_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%2.get_Bird_0.)
  (forall ((self! Poly)) (!
    (= (impl&%2.get_Bird_0.? self!) (Dinosaur./Bird/0 (%Poly%Dinosaur. self!)))
    :pattern ((impl&%2.get_Bird_0.? self!))
    :qid internal_impl&__2.get_Bird_0.?_definition
    :skolemid skolem_internal_impl&__2.get_Bird_0.?_definition
))))

;; Function-Axioms crate::Dinosaur::get_Bird_1
(assert
 (fuel_bool_default fuel%impl&%2.get_Bird_1.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%2.get_Bird_1.)
  (forall ((self! Poly)) (!
    (= (impl&%2.get_Bird_1.? self!) (Dinosaur./Bird/1 (%Poly%Dinosaur. self!)))
    :pattern ((impl&%2.get_Bird_1.? self!))
    :qid internal_impl&__2.get_Bird_1.?_definition
    :skolemid skolem_internal_impl&__2.get_Bird_1.?_definition
))))

;; Function-Axioms crate::Dinosaur::is_Brachiosaurus
(assert
 (fuel_bool_default fuel%impl&%2.is_Brachiosaurus.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%2.is_Brachiosaurus.)
  (forall ((self! Poly)) (!
    (= (impl&%2.is_Brachiosaurus.? self!) (is-Dinosaur./Brachiosaurus (%Poly%Dinosaur. self!)))
    :pattern ((impl&%2.is_Brachiosaurus.? self!))
    :qid internal_impl&__2.is_Brachiosaurus.?_definition
    :skolemid skolem_internal_impl&__2.is_Brachiosaurus.?_definition
))))

;; Function-Axioms crate::Dinosaur::get_Brachiosaurus_0
(assert
 (fuel_bool_default fuel%impl&%2.get_Brachiosaurus_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%2.get_Brachiosaurus_0.)
  (forall ((self! Poly)) (!
    (= (impl&%2.get_Brachiosaurus_0.? self!) (Dinosaur./Brachiosaurus/0 (%Poly%Dinosaur.
       self!
    )))
    :pattern ((impl&%2.get_Brachiosaurus_0.? self!))
    :qid internal_impl&__2.get_Brachiosaurus_0.?_definition
    :skolemid skolem_internal_impl&__2.get_Brachiosaurus_0.?_definition
))))

;; Function-Axioms crate::Dinosaur::get_Brachiosaurus_1
(assert
 (fuel_bool_default fuel%impl&%2.get_Brachiosaurus_1.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%2.get_Brachiosaurus_1.)
  (forall ((self! Poly)) (!
    (= (impl&%2.get_Brachiosaurus_1.? self!) (Dinosaur./Brachiosaurus/1 (%Poly%Dinosaur.
       self!
    )))
    :pattern ((impl&%2.get_Brachiosaurus_1.? self!))
    :qid internal_impl&__2.get_Brachiosaurus_1.?_definition
    :skolemid skolem_internal_impl&__2.get_Brachiosaurus_1.?_definition
))))

;; Function-Axioms crate::Dinosaur::arrow_TRex_0
(assert
 (fuel_bool_default fuel%impl&%3.arrow_TRex_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%3.arrow_TRex_0.)
  (forall ((self! Poly)) (!
    (= (impl&%3.arrow_TRex_0.? self!) (Dinosaur./TRex/0 (%Poly%Dinosaur. self!)))
    :pattern ((impl&%3.arrow_TRex_0.? self!))
    :qid internal_impl&__3.arrow_TRex_0.?_definition
    :skolemid skolem_internal_impl&__3.arrow_TRex_0.?_definition
))))

;; Function-Axioms crate::Dinosaur::arrow_TRex_1
(assert
 (fuel_bool_default fuel%impl&%3.arrow_TRex_1.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%3.arrow_TRex_1.)
  (forall ((self! Poly)) (!
    (= (impl&%3.arrow_TRex_1.? self!) (Dinosaur./TRex/1 (%Poly%Dinosaur. self!)))
    :pattern ((impl&%3.arrow_TRex_1.? self!))
    :qid internal_impl&__3.arrow_TRex_1.?_definition
    :skolemid skolem_internal_impl&__3.arrow_TRex_1.?_definition
))))

;; Function-Axioms crate::Dinosaur::arrow_Bird_0
(assert
 (fuel_bool_default fuel%impl&%3.arrow_Bird_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%3.arrow_Bird_0.)
  (forall ((self! Poly)) (!
    (= (impl&%3.arrow_Bird_0.? self!) (Dinosaur./Bird/0 (%Poly%Dinosaur. self!)))
    :pattern ((impl&%3.arrow_Bird_0.? self!))
    :qid internal_impl&__3.arrow_Bird_0.?_definition
    :skolemid skolem_internal_impl&__3.arrow_Bird_0.?_definition
))))

;; Function-Axioms crate::Dinosaur::arrow_Bird_1
(assert
 (fuel_bool_default fuel%impl&%3.arrow_Bird_1.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%3.arrow_Bird_1.)
  (forall ((self! Poly)) (!
    (= (impl&%3.arrow_Bird_1.? self!) (Dinosaur./Bird/1 (%Poly%Dinosaur. self!)))
    :pattern ((impl&%3.arrow_Bird_1.? self!))
    :qid internal_impl&__3.arrow_Bird_1.?_definition
    :skolemid skolem_internal_impl&__3.arrow_Bird_1.?_definition
))))

;; Function-Axioms crate::Dinosaur::arrow_Brachiosaurus_0
(assert
 (fuel_bool_default fuel%impl&%3.arrow_Brachiosaurus_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%3.arrow_Brachiosaurus_0.)
  (forall ((self! Poly)) (!
    (= (impl&%3.arrow_Brachiosaurus_0.? self!) (Dinosaur./Brachiosaurus/0 (%Poly%Dinosaur.
       self!
    )))
    :pattern ((impl&%3.arrow_Brachiosaurus_0.? self!))
    :qid internal_impl&__3.arrow_Brachiosaurus_0.?_definition
    :skolemid skolem_internal_impl&__3.arrow_Brachiosaurus_0.?_definition
))))

;; Function-Axioms crate::Dinosaur::arrow_Brachiosaurus_1
(assert
 (fuel_bool_default fuel%impl&%3.arrow_Brachiosaurus_1.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%3.arrow_Brachiosaurus_1.)
  (forall ((self! Poly)) (!
    (= (impl&%3.arrow_Brachiosaurus_1.? self!) (Dinosaur./Brachiosaurus/1 (%Poly%Dinosaur.
       self!
    )))
    :pattern ((impl&%3.arrow_Brachiosaurus_1.? self!))
    :qid internal_impl&__3.arrow_Brachiosaurus_1.?_definition
    :skolemid skolem_internal_impl&__3.arrow_Brachiosaurus_1.?_definition
))))

;; Function-Axioms crate::Path::is_Left
(assert
 (fuel_bool_default fuel%impl&%4.is_Left.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%4.is_Left.)
  (forall ((self! Poly)) (!
    (= (impl&%4.is_Left.? self!) (is-Path./Left (%Poly%Path. self!)))
    :pattern ((impl&%4.is_Left.? self!))
    :qid internal_impl&__4.is_Left.?_definition
    :skolemid skolem_internal_impl&__4.is_Left.?_definition
))))

;; Function-Axioms crate::Path::get_Left_0
(assert
 (fuel_bool_default fuel%impl&%4.get_Left_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%4.get_Left_0.)
  (forall ((self! Poly)) (!
    (= (impl&%4.get_Left_0.? self!) (Path./Left/0 (%Poly%Path. self!)))
    :pattern ((impl&%4.get_Left_0.? self!))
    :qid internal_impl&__4.get_Left_0.?_definition
    :skolemid skolem_internal_impl&__4.get_Left_0.?_definition
))))

;; Function-Axioms crate::Path::is_Right
(assert
 (fuel_bool_default fuel%impl&%4.is_Right.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%4.is_Right.)
  (forall ((self! Poly)) (!
    (= (impl&%4.is_Right.? self!) (is-Path./Right (%Poly%Path. self!)))
    :pattern ((impl&%4.is_Right.? self!))
    :qid internal_impl&__4.is_Right.?_definition
    :skolemid skolem_internal_impl&__4.is_Right.?_definition
))))

;; Function-Axioms crate::Path::get_Right_0
(assert
 (fuel_bool_default fuel%impl&%4.get_Right_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%4.get_Right_0.)
  (forall ((self! Poly)) (!
    (= (impl&%4.get_Right_0.? self!) (Path./Right/0 (%Poly%Path. self!)))
    :pattern ((impl&%4.get_Right_0.? self!))
    :qid internal_impl&__4.get_Right_0.?_definition
    :skolemid skolem_internal_impl&__4.get_Right_0.?_definition
))))

;; Function-Axioms crate::Path::is_Middle
(assert
 (fuel_bool_default fuel%impl&%4.is_Middle.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%4.is_Middle.)
  (forall ((self! Poly)) (!
    (= (impl&%4.is_Middle.? self!) (is-Path./Middle (%Poly%Path. self!)))
    :pattern ((impl&%4.is_Middle.? self!))
    :qid internal_impl&__4.is_Middle.?_definition
    :skolemid skolem_internal_impl&__4.is_Middle.?_definition
))))

;; Function-Axioms crate::Path::get_Middle_0
(assert
 (fuel_bool_default fuel%impl&%4.get_Middle_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%4.get_Middle_0.)
  (forall ((self! Poly)) (!
    (= (impl&%4.get_Middle_0.? self!) (Path./Middle/0 (%Poly%Path. self!)))
    :pattern ((impl&%4.get_Middle_0.? self!))
    :qid internal_impl&__4.get_Middle_0.?_definition
    :skolemid skolem_internal_impl&__4.get_Middle_0.?_definition
))))

;; Function-Axioms crate::Path::is_Up
(assert
 (fuel_bool_default fuel%impl&%4.is_Up.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%4.is_Up.)
  (forall ((self! Poly)) (!
    (= (impl&%4.is_Up.? self!) (is-Path./Up (%Poly%Path. self!)))
    :pattern ((impl&%4.is_Up.? self!))
    :qid internal_impl&__4.is_Up.?_definition
    :skolemid skolem_internal_impl&__4.is_Up.?_definition
))))

;; Function-Axioms crate::Path::get_Up_0
(assert
 (fuel_bool_default fuel%impl&%4.get_Up_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%4.get_Up_0.)
  (forall ((self! Poly)) (!
    (= (impl&%4.get_Up_0.? self!) (Path./Up/0 (%Poly%Path. self!)))
    :pattern ((impl&%4.get_Up_0.? self!))
    :qid internal_impl&__4.get_Up_0.?_definition
    :skolemid skolem_internal_impl&__4.get_Up_0.?_definition
))))

;; Function-Axioms crate::Path::is_Sideways
(assert
 (fuel_bool_default fuel%impl&%4.is_Sideways.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%4.is_Sideways.)
  (forall ((self! Poly)) (!
    (= (impl&%4.is_Sideways.? self!) (is-Path./Sideways (%Poly%Path. self!)))
    :pattern ((impl&%4.is_Sideways.? self!))
    :qid internal_impl&__4.is_Sideways.?_definition
    :skolemid skolem_internal_impl&__4.is_Sideways.?_definition
))))

;; Function-Axioms crate::Path::get_Sideways_0
(assert
 (fuel_bool_default fuel%impl&%4.get_Sideways_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%4.get_Sideways_0.)
  (forall ((self! Poly)) (!
    (= (impl&%4.get_Sideways_0.? self!) (Path./Sideways/0 (%Poly%Path. self!)))
    :pattern ((impl&%4.get_Sideways_0.? self!))
    :qid internal_impl&__4.get_Sideways_0.?_definition
    :skolemid skolem_internal_impl&__4.get_Sideways_0.?_definition
))))

;; Function-Axioms crate::Path::is_Inwards
(assert
 (fuel_bool_default fuel%impl&%4.is_Inwards.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%4.is_Inwards.)
  (forall ((self! Poly)) (!
    (= (impl&%4.is_Inwards.? self!) (is-Path./Inwards (%Poly%Path. self!)))
    :pattern ((impl&%4.is_Inwards.? self!))
    :qid internal_impl&__4.is_Inwards.?_definition
    :skolemid skolem_internal_impl&__4.is_Inwards.?_definition
))))

;; Function-Axioms crate::Path::arrow_Left_0
(assert
 (fuel_bool_default fuel%impl&%5.arrow_Left_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%5.arrow_Left_0.)
  (forall ((self! Poly)) (!
    (= (impl&%5.arrow_Left_0.? self!) (Path./Left/0 (%Poly%Path. self!)))
    :pattern ((impl&%5.arrow_Left_0.? self!))
    :qid internal_impl&__5.arrow_Left_0.?_definition
    :skolemid skolem_internal_impl&__5.arrow_Left_0.?_definition
))))

;; Function-Axioms crate::Path::arrow_Right_0
(assert
 (fuel_bool_default fuel%impl&%5.arrow_Right_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%5.arrow_Right_0.)
  (forall ((self! Poly)) (!
    (= (impl&%5.arrow_Right_0.? self!) (Path./Right/0 (%Poly%Path. self!)))
    :pattern ((impl&%5.arrow_Right_0.? self!))
    :qid internal_impl&__5.arrow_Right_0.?_definition
    :skolemid skolem_internal_impl&__5.arrow_Right_0.?_definition
))))

;; Function-Axioms crate::Path::arrow_Middle_0
(assert
 (fuel_bool_default fuel%impl&%5.arrow_Middle_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%5.arrow_Middle_0.)
  (forall ((self! Poly)) (!
    (= (impl&%5.arrow_Middle_0.? self!) (Path./Middle/0 (%Poly%Path. self!)))
    :pattern ((impl&%5.arrow_Middle_0.? self!))
    :qid internal_impl&__5.arrow_Middle_0.?_definition
    :skolemid skolem_internal_impl&__5.arrow_Middle_0.?_definition
))))

;; Function-Axioms crate::Path::arrow_Up_0
(assert
 (fuel_bool_default fuel%impl&%5.arrow_Up_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%5.arrow_Up_0.)
  (forall ((self! Poly)) (!
    (= (impl&%5.arrow_Up_0.? self!) (Path./Up/0 (%Poly%Path. self!)))
    :pattern ((impl&%5.arrow_Up_0.? self!))
    :qid internal_impl&__5.arrow_Up_0.?_definition
    :skolemid skolem_internal_impl&__5.arrow_Up_0.?_definition
))))

;; Function-Axioms crate::Path::arrow_Sideways_0
(assert
 (fuel_bool_default fuel%impl&%5.arrow_Sideways_0.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%5.arrow_Sideways_0.)
  (forall ((self! Poly)) (!
    (= (impl&%5.arrow_Sideways_0.? self!) (Path./Sideways/0 (%Poly%Path. self!)))
    :pattern ((impl&%5.arrow_Sideways_0.? self!))
    :qid internal_impl&__5.arrow_Sideways_0.?_definition
    :skolemid skolem_internal_impl&__5.arrow_Sideways_0.?_definition
))))

;; Function-Def crate::test_match_spec
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/match-4460c9f52e99806e-test_or_patterns/test.rs:29:7: 29:35 (#0)
(get-info :all-statistics)
(push)
 (declare-const foo! Foo.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
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
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (= tmp%1 (=>
      (is-Foo./Bar foo!)
      (= (match_spec.? (Poly%Foo. foo!)) (Add (Foo./Bar/0 (%Poly%Foo. (Poly%Foo. foo!)))
        1
    ))))
    (and
     (=>
      %%location_label%%0
      tmp%1
     )
     (=>
      tmp%1
      (=>
       (= tmp%2 (=>
         (is-Foo./Qux foo!)
         (= (match_spec.? (Poly%Foo. foo!)) (Add (Foo./Qux/0 (%Poly%Foo. (Poly%Foo. foo!)))
           1
       ))))
       (and
        (=>
         %%location_label%%1
         tmp%2
        )
        (=>
         tmp%2
         (=>
          (= tmp%3 (=>
            (is-Foo./Duck foo!)
            (= (match_spec.? (Poly%Foo. foo!)) (Foo./Duck/0 (%Poly%Foo. (Poly%Foo. foo!))))
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

;; Function-Def crate::test_match_statements
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/match-4460c9f52e99806e-test_or_patterns/test.rs:38:7: 38:41 (#0)
(get-info :all-statistics)
(push)
 (declare-const foo! Foo.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const x@ Int)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Bool)
 (declare-const x$1@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%Foo. foo!) TYPE%Foo.)
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
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
 (assert
  (not (or
    (and
     (=>
      (or
       (is-Foo./Bar foo!)
       (is-Foo./Qux foo!)
      )
      (=>
       (= x@ (ite
         (is-Foo./Bar foo!)
         (Foo./Bar/0 (%Poly%Foo. (Poly%Foo. foo!)))
         (Foo./Qux/0 (%Poly%Foo. (Poly%Foo. foo!)))
       ))
       (=>
        (= tmp%1 (or
          (is-Foo./Bar foo!)
          (is-Foo./Qux foo!)
        ))
        (and
         (=>
          %%location_label%%0
          tmp%1
         )
         (=>
          tmp%1
          (or
           (and
            (=>
             (is-Foo./Bar foo!)
             (=>
              (= tmp%2 (= x@ (Foo./Bar/0 (%Poly%Foo. (Poly%Foo. foo!)))))
              (and
               (=>
                %%location_label%%1
                tmp%2
               )
               (=>
                tmp%2
                %%switch_label%%1
            ))))
            (=>
             (not (is-Foo./Bar foo!))
             (=>
              (= tmp%3 (= x@ (Foo./Qux/0 (%Poly%Foo. (Poly%Foo. foo!)))))
              (and
               (=>
                %%location_label%%2
                tmp%3
               )
               (=>
                tmp%3
                %%switch_label%%1
           )))))
           (and
            (not %%switch_label%%1)
            %%switch_label%%0
     )))))))
     (=>
      (not (or
        (is-Foo./Bar foo!)
        (is-Foo./Qux foo!)
      ))
      (=>
       (= x$1@ (Foo./Duck/0 (%Poly%Foo. (Poly%Foo. foo!))))
       (=>
        (= tmp%4 (is-Foo./Duck foo!))
        (and
         (=>
          %%location_label%%3
          tmp%4
         )
         (=>
          tmp%4
          (=>
           (= tmp%5 (= x$1@ (Foo./Duck/0 (%Poly%Foo. (Poly%Foo. foo!)))))
           (and
            (=>
             %%location_label%%4
             tmp%5
            )
            (=>
             tmp%5
             %%switch_label%%0
    )))))))))
    (not %%switch_label%%0)
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test_match_statements2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/match-4460c9f52e99806e-test_or_patterns/test.rs:55:7: 55:42 (#0)
(get-info :all-statistics)
(push)
 (declare-const foo! Foo.)
 (declare-const x@ Int)
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
  (not (or
    (and
     (=>
      (or
       (is-Foo./Bar foo!)
       (is-Foo./Qux foo!)
      )
      (=>
       (= x@ (ite
         (is-Foo./Bar foo!)
         (Foo./Bar/0 (%Poly%Foo. (Poly%Foo. foo!)))
         (Foo./Qux/0 (%Poly%Foo. (Poly%Foo. foo!)))
       ))
       (=>
        %%location_label%%0
        false
     )))
     (=>
      (not (or
        (is-Foo./Bar foo!)
        (is-Foo./Qux foo!)
      ))
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

;; Function-Recommends crate::test_match_statements2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/match-4460c9f52e99806e-test_or_patterns/test.rs:55:7: 55:42 (#0)
(get-info :all-statistics)
(push)
 (declare-const foo! Foo.)
 (declare-const x@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%Foo. foo!) TYPE%Foo.)
 )
 (declare-const %%switch_label%%0 Bool)
 (assert
  (not (or
    (=>
     (not (or
       (is-Foo./Bar foo!)
       (is-Foo./Qux foo!)
     ))
     %%switch_label%%0
    )
    (not %%switch_label%%0)
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test_vars_bound_not_in_same_order
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/match-4460c9f52e99806e-test_or_patterns/test.rs:71:7: 71:59 (#0)
(get-info :all-statistics)
(push)
 (declare-const dino! Dinosaur.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Bool)
 (declare-const x@ Int)
 (declare-const y@ Int)
 (declare-const tmp%6 Bool)
 (assert
  fuel_defaults
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
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
       (is-Dinosaur./TRex dino!)
       (is-Dinosaur./Bird dino!)
      )
      (=>
       (= x@ (ite
         (is-Dinosaur./TRex dino!)
         (Dinosaur./TRex/0 (%Poly%Dinosaur. (Poly%Dinosaur. dino!)))
         (Dinosaur./Bird/1 (%Poly%Dinosaur. (Poly%Dinosaur. dino!)))
       ))
       (=>
        (= y@ (ite
          (is-Dinosaur./TRex dino!)
          (Dinosaur./TRex/1 (%Poly%Dinosaur. (Poly%Dinosaur. dino!)))
          (Dinosaur./Bird/0 (%Poly%Dinosaur. (Poly%Dinosaur. dino!)))
        ))
        (=>
         (= tmp%1 (or
           (is-Dinosaur./TRex dino!)
           (is-Dinosaur./Bird dino!)
         ))
         (and
          (=>
           %%location_label%%0
           tmp%1
          )
          (=>
           tmp%1
           (or
            (and
             (=>
              (is-Dinosaur./TRex dino!)
              (=>
               (= tmp%2 (= x@ (Dinosaur./TRex/0 (%Poly%Dinosaur. (Poly%Dinosaur. dino!)))))
               (and
                (=>
                 %%location_label%%1
                 tmp%2
                )
                (=>
                 tmp%2
                 (=>
                  (= tmp%3 (= y@ (Dinosaur./TRex/1 (%Poly%Dinosaur. (Poly%Dinosaur. dino!)))))
                  (and
                   (=>
                    %%location_label%%2
                    tmp%3
                   )
                   (=>
                    tmp%3
                    %%switch_label%%1
             )))))))
             (=>
              (not (is-Dinosaur./TRex dino!))
              (=>
               (= tmp%4 (= x@ (Dinosaur./Bird/1 (%Poly%Dinosaur. (Poly%Dinosaur. dino!)))))
               (and
                (=>
                 %%location_label%%3
                 tmp%4
                )
                (=>
                 tmp%4
                 (=>
                  (= tmp%5 (= y@ (Dinosaur./Bird/0 (%Poly%Dinosaur. (Poly%Dinosaur. dino!)))))
                  (and
                   (=>
                    %%location_label%%4
                    tmp%5
                   )
                   (=>
                    tmp%5
                    %%switch_label%%1
            ))))))))
            (and
             (not %%switch_label%%1)
             %%switch_label%%0
     ))))))))
     (=>
      (not (or
        (is-Dinosaur./TRex dino!)
        (is-Dinosaur./Bird dino!)
      ))
      (=>
       (= tmp%6 (is-Dinosaur./Brachiosaurus dino!))
       (and
        (=>
         %%location_label%%5
         tmp%6
        )
        (=>
         tmp%6
         %%switch_label%%0
    )))))
    (not %%switch_label%%0)
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test_threeway_or
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/match-4460c9f52e99806e-test_or_patterns/test.rs:99:7: 99:35 (#0)
(get-info :all-statistics)
(push)
 (declare-const p! Path.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const q@ Path.)
 (assert
  fuel_defaults
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
      (= q@ (ite
        (is-Path./Left p!)
        (Path./Left/0 (%Poly%Path. (Poly%Path. p!)))
        p!
      ))
      (or
       (and
        (=>
         (is-Path./Left p!)
         (=>
          (= tmp%1 (= q@ (Path./Left/0 (%Poly%Path. (Poly%Path. p!)))))
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
         (not (is-Path./Left p!))
         (=>
          (= tmp%2 (= q@ p!))
          (and
           (=>
            %%location_label%%1
            tmp%2
           )
           (=>
            tmp%2
            %%switch_label%%1
       )))))
       (and
        (not %%switch_label%%1)
        %%switch_label%%0
     )))
     (=>
      (not true)
      (=>
       %%location_label%%2
       false
    )))
    (not %%switch_label%%0)
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test_threeway_or2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/match-4460c9f52e99806e-test_or_patterns/test.rs:116:7: 116:36 (#0)
(get-info :all-statistics)
(push)
 (declare-const p! Path.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const q@ Path.)
 (assert
  fuel_defaults
 )
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 (declare-const %%switch_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (or
    (and
     (=>
      (= q@ (ite
        (is-Path./Left p!)
        (Path./Left/0 (%Poly%Path. (Poly%Path. p!)))
        (ite
         (is-Path./Right p!)
         (Path./Right/0 (%Poly%Path. (Poly%Path. p!)))
         p!
      )))
      (or
       (and
        (=>
         (is-Path./Left p!)
         (=>
          (= tmp%1 (= q@ (Path./Left/0 (%Poly%Path. (Poly%Path. p!)))))
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
         (not (is-Path./Left p!))
         (or
          (and
           (=>
            (is-Path./Right p!)
            (=>
             (= tmp%2 (= q@ (Path./Right/0 (%Poly%Path. (Poly%Path. p!)))))
             (and
              (=>
               %%location_label%%1
               tmp%2
              )
              (=>
               tmp%2
               %%switch_label%%2
           ))))
           (=>
            (not (is-Path./Right p!))
            (=>
             (= tmp%3 (= q@ p!))
             (and
              (=>
               %%location_label%%2
               tmp%3
              )
              (=>
               tmp%3
               %%switch_label%%2
          )))))
          (and
           (not %%switch_label%%2)
           %%switch_label%%1
       ))))
       (and
        (not %%switch_label%%1)
        %%switch_label%%0
     )))
     (=>
      (not true)
      (=>
       %%location_label%%3
       false
    )))
    (not %%switch_label%%0)
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test_threeway_or3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/match-4460c9f52e99806e-test_or_patterns/test.rs:135:7: 135:36 (#0)
(get-info :all-statistics)
(push)
 (declare-const p! Path.)
 (declare-const tmp%1 Bool)
 (declare-const q@ Path.)
 (assert
  fuel_defaults
 )
 (declare-const %%switch_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= q@ (ite
      (is-Path./Left p!)
      (Path./Left/0 (%Poly%Path. (Poly%Path. p!)))
      p!
    ))
    (or
     (and
      (=>
       (is-Path./Left p!)
       (=>
        (= tmp%1 (= p! q@))
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
       (not (is-Path./Left p!))
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

;; Function-Recommends crate::test_threeway_or3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/match-4460c9f52e99806e-test_or_patterns/test.rs:135:7: 135:36 (#0)
(get-info :all-statistics)
(push)
 (declare-const p! Path.)
 (declare-const q@ Path.)
 (assert
  fuel_defaults
 )
 (declare-const %%switch_label%%0 Bool)
 (assert
  (not (=>
    (= q@ (ite
      (is-Path./Left p!)
      (Path./Left/0 (%Poly%Path. (Poly%Path. p!)))
      p!
    ))
    (or
     (and
      (=>
       (is-Path./Left p!)
       (=>
        (= p! q@)
        %%switch_label%%0
      ))
      (=>
       (not (is-Path./Left p!))
       %%switch_label%%0
     ))
     (not %%switch_label%%0)
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
