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

;; MODULE 'module vstd::view'

;; Fuel
(declare-const fuel%vstd.view.impl&%0.view. FuelId)
(declare-const fuel%vstd.view.impl&%1.deep_view. FuelId)
(declare-const fuel%vstd.view.impl&%2.view. FuelId)
(declare-const fuel%vstd.view.impl&%3.deep_view. FuelId)
(declare-const fuel%vstd.view.impl&%4.view. FuelId)
(declare-const fuel%vstd.view.impl&%5.deep_view. FuelId)
(declare-const fuel%vstd.view.impl&%6.view. FuelId)
(declare-const fuel%vstd.view.impl&%7.deep_view. FuelId)
(declare-const fuel%vstd.view.impl&%8.view. FuelId)
(declare-const fuel%vstd.view.impl&%9.deep_view. FuelId)
(declare-const fuel%vstd.view.impl&%10.view. FuelId)
(declare-const fuel%vstd.view.impl&%11.deep_view. FuelId)
(declare-const fuel%vstd.view.impl&%12.view. FuelId)
(declare-const fuel%vstd.view.impl&%13.deep_view. FuelId)
(declare-const fuel%vstd.view.impl&%14.view. FuelId)
(declare-const fuel%vstd.view.impl&%15.deep_view. FuelId)
(declare-const fuel%vstd.view.impl&%16.view. FuelId)
(declare-const fuel%vstd.view.impl&%17.deep_view. FuelId)
(declare-const fuel%vstd.view.impl&%18.view. FuelId)
(declare-const fuel%vstd.view.impl&%19.deep_view. FuelId)
(declare-const fuel%vstd.view.impl&%20.view. FuelId)
(declare-const fuel%vstd.view.impl&%21.deep_view. FuelId)
(declare-const fuel%vstd.view.impl&%22.view. FuelId)
(declare-const fuel%vstd.view.impl&%23.deep_view. FuelId)
(declare-const fuel%vstd.view.impl&%24.view. FuelId)
(declare-const fuel%vstd.view.impl&%25.deep_view. FuelId)
(declare-const fuel%vstd.view.impl&%26.view. FuelId)
(declare-const fuel%vstd.view.impl&%27.deep_view. FuelId)
(declare-const fuel%vstd.view.impl&%28.view. FuelId)
(declare-const fuel%vstd.view.impl&%29.deep_view. FuelId)
(declare-const fuel%vstd.view.impl&%30.view. FuelId)
(declare-const fuel%vstd.view.impl&%31.deep_view. FuelId)
(declare-const fuel%vstd.view.impl&%32.view. FuelId)
(declare-const fuel%vstd.view.impl&%33.deep_view. FuelId)
(declare-const fuel%vstd.view.impl&%34.view. FuelId)
(declare-const fuel%vstd.view.impl&%35.deep_view. FuelId)
(declare-const fuel%vstd.view.impl&%36.view. FuelId)
(declare-const fuel%vstd.view.impl&%37.deep_view. FuelId)
(declare-const fuel%vstd.view.impl&%38.view. FuelId)
(declare-const fuel%vstd.view.impl&%39.deep_view. FuelId)
(assert
 (distinct fuel%vstd.view.impl&%0.view. fuel%vstd.view.impl&%1.deep_view. fuel%vstd.view.impl&%2.view.
  fuel%vstd.view.impl&%3.deep_view. fuel%vstd.view.impl&%4.view. fuel%vstd.view.impl&%5.deep_view.
  fuel%vstd.view.impl&%6.view. fuel%vstd.view.impl&%7.deep_view. fuel%vstd.view.impl&%8.view.
  fuel%vstd.view.impl&%9.deep_view. fuel%vstd.view.impl&%10.view. fuel%vstd.view.impl&%11.deep_view.
  fuel%vstd.view.impl&%12.view. fuel%vstd.view.impl&%13.deep_view. fuel%vstd.view.impl&%14.view.
  fuel%vstd.view.impl&%15.deep_view. fuel%vstd.view.impl&%16.view. fuel%vstd.view.impl&%17.deep_view.
  fuel%vstd.view.impl&%18.view. fuel%vstd.view.impl&%19.deep_view. fuel%vstd.view.impl&%20.view.
  fuel%vstd.view.impl&%21.deep_view. fuel%vstd.view.impl&%22.view. fuel%vstd.view.impl&%23.deep_view.
  fuel%vstd.view.impl&%24.view. fuel%vstd.view.impl&%25.deep_view. fuel%vstd.view.impl&%26.view.
  fuel%vstd.view.impl&%27.deep_view. fuel%vstd.view.impl&%28.view. fuel%vstd.view.impl&%29.deep_view.
  fuel%vstd.view.impl&%30.view. fuel%vstd.view.impl&%31.deep_view. fuel%vstd.view.impl&%32.view.
  fuel%vstd.view.impl&%33.deep_view. fuel%vstd.view.impl&%34.view. fuel%vstd.view.impl&%35.deep_view.
  fuel%vstd.view.impl&%36.view. fuel%vstd.view.impl&%37.deep_view. fuel%vstd.view.impl&%38.view.
  fuel%vstd.view.impl&%39.deep_view.
))

;; Associated-Type-Decls
(declare-fun proj%%vstd.view.View./V (Dcr Type) Dcr)
(declare-fun proj%vstd.view.View./V (Dcr Type) Type)
(declare-fun proj%%vstd.view.DeepView./V (Dcr Type) Dcr)
(declare-fun proj%vstd.view.DeepView./V (Dcr Type) Type)

;; Datatypes
(declare-datatypes ((tuple%0. 0) (tuple%1. 0) (tuple%2. 0) (tuple%3. 0) (tuple%4. 0))
 (((tuple%0./tuple%0)) ((tuple%1./tuple%1 (tuple%1./tuple%1/?0 Poly))) ((tuple%2./tuple%2
    (tuple%2./tuple%2/?0 Poly) (tuple%2./tuple%2/?1 Poly)
   )
  ) ((tuple%3./tuple%3 (tuple%3./tuple%3/?0 Poly) (tuple%3./tuple%3/?1 Poly) (tuple%3./tuple%3/?2
     Poly
   ))
  ) ((tuple%4./tuple%4 (tuple%4./tuple%4/?0 Poly) (tuple%4./tuple%4/?1 Poly) (tuple%4./tuple%4/?2
     Poly
    ) (tuple%4./tuple%4/?3 Poly)
))))
(declare-fun tuple%1./tuple%1/0 (tuple%1.) Poly)
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-fun tuple%3./tuple%3/0 (tuple%3.) Poly)
(declare-fun tuple%3./tuple%3/1 (tuple%3.) Poly)
(declare-fun tuple%3./tuple%3/2 (tuple%3.) Poly)
(declare-fun tuple%4./tuple%4/0 (tuple%4.) Poly)
(declare-fun tuple%4./tuple%4/1 (tuple%4.) Poly)
(declare-fun tuple%4./tuple%4/2 (tuple%4.) Poly)
(declare-fun tuple%4./tuple%4/3 (tuple%4.) Poly)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%1. (Dcr Type) Type)
(declare-fun TYPE%tuple%2. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%tuple%3. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%tuple%4. (Dcr Type Dcr Type Dcr Type Dcr Type) Type)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%1. (tuple%1.) Poly)
(declare-fun %Poly%tuple%1. (Poly) tuple%1.)
(declare-fun Poly%tuple%2. (tuple%2.) Poly)
(declare-fun %Poly%tuple%2. (Poly) tuple%2.)
(declare-fun Poly%tuple%3. (tuple%3.) Poly)
(declare-fun %Poly%tuple%3. (Poly) tuple%3.)
(declare-fun Poly%tuple%4. (tuple%4.) Poly)
(declare-fun %Poly%tuple%4. (Poly) tuple%4.)
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

;; Traits
(declare-fun tr_bound%vstd.view.View. (Dcr Type) Bool)
(declare-fun tr_bound%vstd.view.DeepView. (Dcr Type) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%vstd.view.View. Self%&. Self%&))
   :qid internal_crate__vstd__view__View_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__view__View_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%vstd.view.DeepView. Self%&. Self%&))
   :qid internal_crate__vstd__view__DeepView_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__view__DeepView_trait_type_bounds_definition
)))

;; Associated-Type-Impls
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%%vstd.view.View./V (REF A&.) A&) (proj%%vstd.view.View./V A&. A&))
   :pattern ((proj%%vstd.view.View./V (REF A&.) A&))
   :qid internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%vstd.view.View./V (REF A&.) A&) (proj%vstd.view.View./V A&. A&))
   :pattern ((proj%vstd.view.View./V (REF A&.) A&))
   :qid internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%%vstd.view.DeepView./V (REF A&.) A&) (proj%%vstd.view.DeepView./V A&. A&))
   :pattern ((proj%%vstd.view.DeepView./V (REF A&.) A&))
   :qid internal_proj____vstd.view.DeepView./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd.view.DeepView./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%vstd.view.DeepView./V (REF A&.) A&) (proj%vstd.view.DeepView./V A&. A&))
   :pattern ((proj%vstd.view.DeepView./V (REF A&.) A&))
   :qid internal_proj__vstd.view.DeepView./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd.view.DeepView./V_assoc_type_impl_false_definition
)))
(assert
 (= (proj%%vstd.view.View./V $ TYPE%tuple%0.) $)
)
(assert
 (= (proj%vstd.view.View./V $ TYPE%tuple%0.) TYPE%tuple%0.)
)
(assert
 (= (proj%%vstd.view.DeepView./V $ TYPE%tuple%0.) $)
)
(assert
 (= (proj%vstd.view.DeepView./V $ TYPE%tuple%0.) TYPE%tuple%0.)
)
(assert
 (= (proj%%vstd.view.View./V $ BOOL) $)
)
(assert
 (= (proj%vstd.view.View./V $ BOOL) BOOL)
)
(assert
 (= (proj%%vstd.view.DeepView./V $ BOOL) $)
)
(assert
 (= (proj%vstd.view.DeepView./V $ BOOL) BOOL)
)
(assert
 (= (proj%%vstd.view.View./V $ (UINT 8)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (UINT 8)) (UINT 8))
)
(assert
 (= (proj%%vstd.view.DeepView./V $ (UINT 8)) $)
)
(assert
 (= (proj%vstd.view.DeepView./V $ (UINT 8)) (UINT 8))
)
(assert
 (= (proj%%vstd.view.View./V $ (UINT 16)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (UINT 16)) (UINT 16))
)
(assert
 (= (proj%%vstd.view.DeepView./V $ (UINT 16)) $)
)
(assert
 (= (proj%vstd.view.DeepView./V $ (UINT 16)) (UINT 16))
)
(assert
 (= (proj%%vstd.view.View./V $ (UINT 32)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (UINT 32)) (UINT 32))
)
(assert
 (= (proj%%vstd.view.DeepView./V $ (UINT 32)) $)
)
(assert
 (= (proj%vstd.view.DeepView./V $ (UINT 32)) (UINT 32))
)
(assert
 (= (proj%%vstd.view.View./V $ (UINT 64)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (UINT 64)) (UINT 64))
)
(assert
 (= (proj%%vstd.view.DeepView./V $ (UINT 64)) $)
)
(assert
 (= (proj%vstd.view.DeepView./V $ (UINT 64)) (UINT 64))
)
(assert
 (= (proj%%vstd.view.View./V $ (UINT 128)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (UINT 128)) (UINT 128))
)
(assert
 (= (proj%%vstd.view.DeepView./V $ (UINT 128)) $)
)
(assert
 (= (proj%vstd.view.DeepView./V $ (UINT 128)) (UINT 128))
)
(assert
 (= (proj%%vstd.view.View./V $ (UINT SZ)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (UINT SZ)) (UINT SZ))
)
(assert
 (= (proj%%vstd.view.DeepView./V $ (UINT SZ)) $)
)
(assert
 (= (proj%vstd.view.DeepView./V $ (UINT SZ)) (UINT SZ))
)
(assert
 (= (proj%%vstd.view.View./V $ (SINT 8)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (SINT 8)) (SINT 8))
)
(assert
 (= (proj%%vstd.view.DeepView./V $ (SINT 8)) $)
)
(assert
 (= (proj%vstd.view.DeepView./V $ (SINT 8)) (SINT 8))
)
(assert
 (= (proj%%vstd.view.View./V $ (SINT 16)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (SINT 16)) (SINT 16))
)
(assert
 (= (proj%%vstd.view.DeepView./V $ (SINT 16)) $)
)
(assert
 (= (proj%vstd.view.DeepView./V $ (SINT 16)) (SINT 16))
)
(assert
 (= (proj%%vstd.view.View./V $ (SINT 32)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (SINT 32)) (SINT 32))
)
(assert
 (= (proj%%vstd.view.DeepView./V $ (SINT 32)) $)
)
(assert
 (= (proj%vstd.view.DeepView./V $ (SINT 32)) (SINT 32))
)
(assert
 (= (proj%%vstd.view.View./V $ (SINT 64)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (SINT 64)) (SINT 64))
)
(assert
 (= (proj%%vstd.view.DeepView./V $ (SINT 64)) $)
)
(assert
 (= (proj%vstd.view.DeepView./V $ (SINT 64)) (SINT 64))
)
(assert
 (= (proj%%vstd.view.View./V $ (SINT 128)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (SINT 128)) (SINT 128))
)
(assert
 (= (proj%%vstd.view.DeepView./V $ (SINT 128)) $)
)
(assert
 (= (proj%vstd.view.DeepView./V $ (SINT 128)) (SINT 128))
)
(assert
 (= (proj%%vstd.view.View./V $ (SINT SZ)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (SINT SZ)) (SINT SZ))
)
(assert
 (= (proj%%vstd.view.DeepView./V $ (SINT SZ)) $)
)
(assert
 (= (proj%vstd.view.DeepView./V $ (SINT SZ)) (SINT SZ))
)
(assert
 (= (proj%%vstd.view.View./V $ CHAR) $)
)
(assert
 (= (proj%vstd.view.View./V $ CHAR) CHAR)
)
(assert
 (= (proj%%vstd.view.DeepView./V $ CHAR) $)
)
(assert
 (= (proj%vstd.view.DeepView./V $ CHAR) CHAR)
)
(assert
 (forall ((A0&. Dcr) (A0& Type)) (!
   (= (proj%%vstd.view.View./V $ (TYPE%tuple%1. A0&. A0&)) $)
   :pattern ((proj%%vstd.view.View./V $ (TYPE%tuple%1. A0&. A0&)))
   :qid internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((A0&. Dcr) (A0& Type)) (!
   (= (proj%vstd.view.View./V $ (TYPE%tuple%1. A0&. A0&)) (TYPE%tuple%1. (proj%%vstd.view.View./V
      A0&. A0&
     ) (proj%vstd.view.View./V A0&. A0&)
   ))
   :pattern ((proj%vstd.view.View./V $ (TYPE%tuple%1. A0&. A0&)))
   :qid internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
)))
(assert
 (forall ((A0&. Dcr) (A0& Type)) (!
   (= (proj%%vstd.view.DeepView./V $ (TYPE%tuple%1. A0&. A0&)) $)
   :pattern ((proj%%vstd.view.DeepView./V $ (TYPE%tuple%1. A0&. A0&)))
   :qid internal_proj____vstd.view.DeepView./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd.view.DeepView./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((A0&. Dcr) (A0& Type)) (!
   (= (proj%vstd.view.DeepView./V $ (TYPE%tuple%1. A0&. A0&)) (TYPE%tuple%1. (proj%%vstd.view.DeepView./V
      A0&. A0&
     ) (proj%vstd.view.DeepView./V A0&. A0&)
   ))
   :pattern ((proj%vstd.view.DeepView./V $ (TYPE%tuple%1. A0&. A0&)))
   :qid internal_proj__vstd.view.DeepView./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd.view.DeepView./V_assoc_type_impl_false_definition
)))
(assert
 (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type)) (!
   (= (proj%%vstd.view.View./V $ (TYPE%tuple%2. A0&. A0& A1&. A1&)) $)
   :pattern ((proj%%vstd.view.View./V $ (TYPE%tuple%2. A0&. A0& A1&. A1&)))
   :qid internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type)) (!
   (= (proj%vstd.view.View./V $ (TYPE%tuple%2. A0&. A0& A1&. A1&)) (TYPE%tuple%2. (proj%%vstd.view.View./V
      A0&. A0&
     ) (proj%vstd.view.View./V A0&. A0&) (proj%%vstd.view.View./V A1&. A1&) (proj%vstd.view.View./V
      A1&. A1&
   )))
   :pattern ((proj%vstd.view.View./V $ (TYPE%tuple%2. A0&. A0& A1&. A1&)))
   :qid internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
)))
(assert
 (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type)) (!
   (= (proj%%vstd.view.DeepView./V $ (TYPE%tuple%2. A0&. A0& A1&. A1&)) $)
   :pattern ((proj%%vstd.view.DeepView./V $ (TYPE%tuple%2. A0&. A0& A1&. A1&)))
   :qid internal_proj____vstd.view.DeepView./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd.view.DeepView./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type)) (!
   (= (proj%vstd.view.DeepView./V $ (TYPE%tuple%2. A0&. A0& A1&. A1&)) (TYPE%tuple%2.
     (proj%%vstd.view.DeepView./V A0&. A0&) (proj%vstd.view.DeepView./V A0&. A0&) (proj%%vstd.view.DeepView./V
      A1&. A1&
     ) (proj%vstd.view.DeepView./V A1&. A1&)
   ))
   :pattern ((proj%vstd.view.DeepView./V $ (TYPE%tuple%2. A0&. A0& A1&. A1&)))
   :qid internal_proj__vstd.view.DeepView./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd.view.DeepView./V_assoc_type_impl_false_definition
)))
(assert
 (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type) (A2&. Dcr) (A2& Type)) (!
   (= (proj%%vstd.view.View./V $ (TYPE%tuple%3. A0&. A0& A1&. A1& A2&. A2&)) $)
   :pattern ((proj%%vstd.view.View./V $ (TYPE%tuple%3. A0&. A0& A1&. A1& A2&. A2&)))
   :qid internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type) (A2&. Dcr) (A2& Type)) (!
   (= (proj%vstd.view.View./V $ (TYPE%tuple%3. A0&. A0& A1&. A1& A2&. A2&)) (TYPE%tuple%3.
     (proj%%vstd.view.View./V A0&. A0&) (proj%vstd.view.View./V A0&. A0&) (proj%%vstd.view.View./V
      A1&. A1&
     ) (proj%vstd.view.View./V A1&. A1&) (proj%%vstd.view.View./V A2&. A2&) (proj%vstd.view.View./V
      A2&. A2&
   )))
   :pattern ((proj%vstd.view.View./V $ (TYPE%tuple%3. A0&. A0& A1&. A1& A2&. A2&)))
   :qid internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
)))
(assert
 (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type) (A2&. Dcr) (A2& Type)) (!
   (= (proj%%vstd.view.DeepView./V $ (TYPE%tuple%3. A0&. A0& A1&. A1& A2&. A2&)) $)
   :pattern ((proj%%vstd.view.DeepView./V $ (TYPE%tuple%3. A0&. A0& A1&. A1& A2&. A2&)))
   :qid internal_proj____vstd.view.DeepView./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd.view.DeepView./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type) (A2&. Dcr) (A2& Type)) (!
   (= (proj%vstd.view.DeepView./V $ (TYPE%tuple%3. A0&. A0& A1&. A1& A2&. A2&)) (TYPE%tuple%3.
     (proj%%vstd.view.DeepView./V A0&. A0&) (proj%vstd.view.DeepView./V A0&. A0&) (proj%%vstd.view.DeepView./V
      A1&. A1&
     ) (proj%vstd.view.DeepView./V A1&. A1&) (proj%%vstd.view.DeepView./V A2&. A2&) (proj%vstd.view.DeepView./V
      A2&. A2&
   )))
   :pattern ((proj%vstd.view.DeepView./V $ (TYPE%tuple%3. A0&. A0& A1&. A1& A2&. A2&)))
   :qid internal_proj__vstd.view.DeepView./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd.view.DeepView./V_assoc_type_impl_false_definition
)))
(assert
 (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type) (A2&. Dcr) (A2& Type) (A3&. Dcr)
   (A3& Type)
  ) (!
   (= (proj%%vstd.view.View./V $ (TYPE%tuple%4. A0&. A0& A1&. A1& A2&. A2& A3&. A3&))
    $
   )
   :pattern ((proj%%vstd.view.View./V $ (TYPE%tuple%4. A0&. A0& A1&. A1& A2&. A2& A3&.
      A3&
   )))
   :qid internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type) (A2&. Dcr) (A2& Type) (A3&. Dcr)
   (A3& Type)
  ) (!
   (= (proj%vstd.view.View./V $ (TYPE%tuple%4. A0&. A0& A1&. A1& A2&. A2& A3&. A3&))
    (TYPE%tuple%4. (proj%%vstd.view.View./V A0&. A0&) (proj%vstd.view.View./V A0&. A0&)
     (proj%%vstd.view.View./V A1&. A1&) (proj%vstd.view.View./V A1&. A1&) (proj%%vstd.view.View./V
      A2&. A2&
     ) (proj%vstd.view.View./V A2&. A2&) (proj%%vstd.view.View./V A3&. A3&) (proj%vstd.view.View./V
      A3&. A3&
   )))
   :pattern ((proj%vstd.view.View./V $ (TYPE%tuple%4. A0&. A0& A1&. A1& A2&. A2& A3&. A3&)))
   :qid internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
)))
(assert
 (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type) (A2&. Dcr) (A2& Type) (A3&. Dcr)
   (A3& Type)
  ) (!
   (= (proj%%vstd.view.DeepView./V $ (TYPE%tuple%4. A0&. A0& A1&. A1& A2&. A2& A3&. A3&))
    $
   )
   :pattern ((proj%%vstd.view.DeepView./V $ (TYPE%tuple%4. A0&. A0& A1&. A1& A2&. A2& A3&.
      A3&
   )))
   :qid internal_proj____vstd.view.DeepView./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd.view.DeepView./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type) (A2&. Dcr) (A2& Type) (A3&. Dcr)
   (A3& Type)
  ) (!
   (= (proj%vstd.view.DeepView./V $ (TYPE%tuple%4. A0&. A0& A1&. A1& A2&. A2& A3&. A3&))
    (TYPE%tuple%4. (proj%%vstd.view.DeepView./V A0&. A0&) (proj%vstd.view.DeepView./V A0&.
      A0&
     ) (proj%%vstd.view.DeepView./V A1&. A1&) (proj%vstd.view.DeepView./V A1&. A1&) (proj%%vstd.view.DeepView./V
      A2&. A2&
     ) (proj%vstd.view.DeepView./V A2&. A2&) (proj%%vstd.view.DeepView./V A3&. A3&) (proj%vstd.view.DeepView./V
      A3&. A3&
   )))
   :pattern ((proj%vstd.view.DeepView./V $ (TYPE%tuple%4. A0&. A0& A1&. A1& A2&. A2& A3&.
      A3&
   )))
   :qid internal_proj__vstd.view.DeepView./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd.view.DeepView./V_assoc_type_impl_false_definition
)))

;; Function-Decl crate::vstd::view::View::view
(declare-fun vstd.view.View.view.? (Dcr Type Poly) Poly)
(declare-fun vstd.view.View.view%default%.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::view::DeepView::deep_view
(declare-fun vstd.view.DeepView.deep_view.? (Dcr Type Poly) Poly)
(declare-fun vstd.view.DeepView.deep_view%default%.? (Dcr Type Poly) Poly)

;; Function-Axioms crate::vstd::view::View::view
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.view.View.view.? Self%&. Self%& self!) (proj%vstd.view.View./V Self%&.
      Self%&
   )))
   :pattern ((vstd.view.View.view.? Self%&. Self%& self!))
   :qid internal_vstd.view.View.view.?_pre_post_definition
   :skolemid skolem_internal_vstd.view.View.view.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::view::DeepView::deep_view
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.view.DeepView.deep_view.? Self%&. Self%& self!) (proj%vstd.view.DeepView./V
      Self%&. Self%&
   )))
   :pattern ((vstd.view.DeepView.deep_view.? Self%&. Self%& self!))
   :qid internal_vstd.view.DeepView.deep_view.?_pre_post_definition
   :skolemid skolem_internal_vstd.view.DeepView.deep_view.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::view::impl&%0::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%0.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%0.view.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (=>
     (tr_bound%vstd.view.View. A&. A&)
     (= (vstd.view.View.view.? (REF A&.) A& self!) (vstd.view.View.view.? A&. A& self!))
    )
    :pattern ((vstd.view.View.view.? (REF A&.) A& self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%1::deep_view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%1.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%1.deep_view.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (=>
     (tr_bound%vstd.view.DeepView. A&. A&)
     (= (vstd.view.DeepView.deep_view.? (REF A&.) A& self!) (vstd.view.DeepView.deep_view.?
       A&. A& self!
    )))
    :pattern ((vstd.view.DeepView.deep_view.? (REF A&.) A& self!))
    :qid internal_vstd.view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd.view.DeepView.deep_view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%2::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%2.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%2.view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.View.view.? $ TYPE%tuple%0. self!) self!)
    :pattern ((vstd.view.View.view.? $ TYPE%tuple%0. self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%3::deep_view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%3.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%3.deep_view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.DeepView.deep_view.? $ TYPE%tuple%0. self!) self!)
    :pattern ((vstd.view.DeepView.deep_view.? $ TYPE%tuple%0. self!))
    :qid internal_vstd.view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd.view.DeepView.deep_view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%4::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%4.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%4.view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.View.view.? $ BOOL self!) self!)
    :pattern ((vstd.view.View.view.? $ BOOL self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%5::deep_view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%5.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%5.deep_view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.DeepView.deep_view.? $ BOOL self!) self!)
    :pattern ((vstd.view.DeepView.deep_view.? $ BOOL self!))
    :qid internal_vstd.view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd.view.DeepView.deep_view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%6::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%6.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%6.view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.View.view.? $ (UINT 8) self!) self!)
    :pattern ((vstd.view.View.view.? $ (UINT 8) self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%7::deep_view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%7.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%7.deep_view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.DeepView.deep_view.? $ (UINT 8) self!) self!)
    :pattern ((vstd.view.DeepView.deep_view.? $ (UINT 8) self!))
    :qid internal_vstd.view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd.view.DeepView.deep_view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%8::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%8.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%8.view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.View.view.? $ (UINT 16) self!) self!)
    :pattern ((vstd.view.View.view.? $ (UINT 16) self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%9::deep_view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%9.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%9.deep_view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.DeepView.deep_view.? $ (UINT 16) self!) self!)
    :pattern ((vstd.view.DeepView.deep_view.? $ (UINT 16) self!))
    :qid internal_vstd.view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd.view.DeepView.deep_view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%10::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%10.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%10.view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.View.view.? $ (UINT 32) self!) self!)
    :pattern ((vstd.view.View.view.? $ (UINT 32) self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%11::deep_view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%11.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%11.deep_view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.DeepView.deep_view.? $ (UINT 32) self!) self!)
    :pattern ((vstd.view.DeepView.deep_view.? $ (UINT 32) self!))
    :qid internal_vstd.view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd.view.DeepView.deep_view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%12::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%12.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%12.view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.View.view.? $ (UINT 64) self!) self!)
    :pattern ((vstd.view.View.view.? $ (UINT 64) self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%13::deep_view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%13.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%13.deep_view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.DeepView.deep_view.? $ (UINT 64) self!) self!)
    :pattern ((vstd.view.DeepView.deep_view.? $ (UINT 64) self!))
    :qid internal_vstd.view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd.view.DeepView.deep_view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%14::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%14.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%14.view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.View.view.? $ (UINT 128) self!) self!)
    :pattern ((vstd.view.View.view.? $ (UINT 128) self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%15::deep_view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%15.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%15.deep_view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.DeepView.deep_view.? $ (UINT 128) self!) self!)
    :pattern ((vstd.view.DeepView.deep_view.? $ (UINT 128) self!))
    :qid internal_vstd.view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd.view.DeepView.deep_view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%16::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%16.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%16.view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.View.view.? $ (UINT SZ) self!) self!)
    :pattern ((vstd.view.View.view.? $ (UINT SZ) self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%17::deep_view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%17.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%17.deep_view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.DeepView.deep_view.? $ (UINT SZ) self!) self!)
    :pattern ((vstd.view.DeepView.deep_view.? $ (UINT SZ) self!))
    :qid internal_vstd.view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd.view.DeepView.deep_view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%18::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%18.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%18.view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.View.view.? $ (SINT 8) self!) self!)
    :pattern ((vstd.view.View.view.? $ (SINT 8) self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%19::deep_view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%19.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%19.deep_view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.DeepView.deep_view.? $ (SINT 8) self!) self!)
    :pattern ((vstd.view.DeepView.deep_view.? $ (SINT 8) self!))
    :qid internal_vstd.view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd.view.DeepView.deep_view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%20::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%20.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%20.view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.View.view.? $ (SINT 16) self!) self!)
    :pattern ((vstd.view.View.view.? $ (SINT 16) self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%21::deep_view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%21.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%21.deep_view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.DeepView.deep_view.? $ (SINT 16) self!) self!)
    :pattern ((vstd.view.DeepView.deep_view.? $ (SINT 16) self!))
    :qid internal_vstd.view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd.view.DeepView.deep_view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%22::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%22.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%22.view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.View.view.? $ (SINT 32) self!) self!)
    :pattern ((vstd.view.View.view.? $ (SINT 32) self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%23::deep_view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%23.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%23.deep_view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.DeepView.deep_view.? $ (SINT 32) self!) self!)
    :pattern ((vstd.view.DeepView.deep_view.? $ (SINT 32) self!))
    :qid internal_vstd.view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd.view.DeepView.deep_view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%24::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%24.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%24.view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.View.view.? $ (SINT 64) self!) self!)
    :pattern ((vstd.view.View.view.? $ (SINT 64) self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%25::deep_view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%25.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%25.deep_view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.DeepView.deep_view.? $ (SINT 64) self!) self!)
    :pattern ((vstd.view.DeepView.deep_view.? $ (SINT 64) self!))
    :qid internal_vstd.view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd.view.DeepView.deep_view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%26::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%26.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%26.view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.View.view.? $ (SINT 128) self!) self!)
    :pattern ((vstd.view.View.view.? $ (SINT 128) self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%27::deep_view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%27.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%27.deep_view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.DeepView.deep_view.? $ (SINT 128) self!) self!)
    :pattern ((vstd.view.DeepView.deep_view.? $ (SINT 128) self!))
    :qid internal_vstd.view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd.view.DeepView.deep_view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%28::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%28.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%28.view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.View.view.? $ (SINT SZ) self!) self!)
    :pattern ((vstd.view.View.view.? $ (SINT SZ) self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%29::deep_view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%29.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%29.deep_view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.DeepView.deep_view.? $ (SINT SZ) self!) self!)
    :pattern ((vstd.view.DeepView.deep_view.? $ (SINT SZ) self!))
    :qid internal_vstd.view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd.view.DeepView.deep_view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%30::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%30.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%30.view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.View.view.? $ CHAR self!) self!)
    :pattern ((vstd.view.View.view.? $ CHAR self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%31::deep_view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%31.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%31.deep_view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.DeepView.deep_view.? $ CHAR self!) self!)
    :pattern ((vstd.view.DeepView.deep_view.? $ CHAR self!))
    :qid internal_vstd.view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd.view.DeepView.deep_view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%32::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%32.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%32.view.)
  (forall ((A0&. Dcr) (A0& Type) (self! Poly)) (!
    (=>
     (tr_bound%vstd.view.View. A0&. A0&)
     (= (vstd.view.View.view.? $ (TYPE%tuple%1. A0&. A0&) self!) (Poly%tuple%1. (tuple%1./tuple%1
        (vstd.view.View.view.? A0&. A0& (tuple%1./tuple%1/0 (%Poly%tuple%1. self!)))
    ))))
    :pattern ((vstd.view.View.view.? $ (TYPE%tuple%1. A0&. A0&) self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%33::deep_view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%33.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%33.deep_view.)
  (forall ((A0&. Dcr) (A0& Type) (self! Poly)) (!
    (=>
     (tr_bound%vstd.view.DeepView. A0&. A0&)
     (= (vstd.view.DeepView.deep_view.? $ (TYPE%tuple%1. A0&. A0&) self!) (Poly%tuple%1.
       (tuple%1./tuple%1 (vstd.view.DeepView.deep_view.? A0&. A0& (tuple%1./tuple%1/0 (%Poly%tuple%1.
           self!
    )))))))
    :pattern ((vstd.view.DeepView.deep_view.? $ (TYPE%tuple%1. A0&. A0&) self!))
    :qid internal_vstd.view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd.view.DeepView.deep_view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%34::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%34.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%34.view.)
  (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type) (self! Poly)) (!
    (=>
     (and
      (tr_bound%vstd.view.View. A0&. A0&)
      (tr_bound%vstd.view.View. A1&. A1&)
     )
     (= (vstd.view.View.view.? $ (TYPE%tuple%2. A0&. A0& A1&. A1&) self!) (Poly%tuple%2.
       (tuple%2./tuple%2 (vstd.view.View.view.? A0&. A0& (tuple%2./tuple%2/0 (%Poly%tuple%2.
           self!
         ))
        ) (vstd.view.View.view.? A1&. A1& (tuple%2./tuple%2/1 (%Poly%tuple%2. self!)))
    ))))
    :pattern ((vstd.view.View.view.? $ (TYPE%tuple%2. A0&. A0& A1&. A1&) self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%35::deep_view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%35.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%35.deep_view.)
  (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type) (self! Poly)) (!
    (=>
     (and
      (tr_bound%vstd.view.DeepView. A0&. A0&)
      (tr_bound%vstd.view.DeepView. A1&. A1&)
     )
     (= (vstd.view.DeepView.deep_view.? $ (TYPE%tuple%2. A0&. A0& A1&. A1&) self!) (Poly%tuple%2.
       (tuple%2./tuple%2 (vstd.view.DeepView.deep_view.? A0&. A0& (tuple%2./tuple%2/0 (%Poly%tuple%2.
           self!
         ))
        ) (vstd.view.DeepView.deep_view.? A1&. A1& (tuple%2./tuple%2/1 (%Poly%tuple%2. self!)))
    ))))
    :pattern ((vstd.view.DeepView.deep_view.? $ (TYPE%tuple%2. A0&. A0& A1&. A1&) self!))
    :qid internal_vstd.view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd.view.DeepView.deep_view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%36::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%36.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%36.view.)
  (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type) (A2&. Dcr) (A2& Type) (self! Poly))
   (!
    (=>
     (and
      (tr_bound%vstd.view.View. A0&. A0&)
      (tr_bound%vstd.view.View. A1&. A1&)
      (tr_bound%vstd.view.View. A2&. A2&)
     )
     (= (vstd.view.View.view.? $ (TYPE%tuple%3. A0&. A0& A1&. A1& A2&. A2&) self!) (Poly%tuple%3.
       (tuple%3./tuple%3 (vstd.view.View.view.? A0&. A0& (tuple%3./tuple%3/0 (%Poly%tuple%3.
           self!
         ))
        ) (vstd.view.View.view.? A1&. A1& (tuple%3./tuple%3/1 (%Poly%tuple%3. self!))) (vstd.view.View.view.?
         A2&. A2& (tuple%3./tuple%3/2 (%Poly%tuple%3. self!))
    )))))
    :pattern ((vstd.view.View.view.? $ (TYPE%tuple%3. A0&. A0& A1&. A1& A2&. A2&) self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%37::deep_view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%37.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%37.deep_view.)
  (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type) (A2&. Dcr) (A2& Type) (self! Poly))
   (!
    (=>
     (and
      (tr_bound%vstd.view.DeepView. A0&. A0&)
      (tr_bound%vstd.view.DeepView. A1&. A1&)
      (tr_bound%vstd.view.DeepView. A2&. A2&)
     )
     (= (vstd.view.DeepView.deep_view.? $ (TYPE%tuple%3. A0&. A0& A1&. A1& A2&. A2&) self!)
      (Poly%tuple%3. (tuple%3./tuple%3 (vstd.view.DeepView.deep_view.? A0&. A0& (tuple%3./tuple%3/0
          (%Poly%tuple%3. self!)
         )
        ) (vstd.view.DeepView.deep_view.? A1&. A1& (tuple%3./tuple%3/1 (%Poly%tuple%3. self!)))
        (vstd.view.DeepView.deep_view.? A2&. A2& (tuple%3./tuple%3/2 (%Poly%tuple%3. self!)))
    ))))
    :pattern ((vstd.view.DeepView.deep_view.? $ (TYPE%tuple%3. A0&. A0& A1&. A1& A2&. A2&)
      self!
    ))
    :qid internal_vstd.view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd.view.DeepView.deep_view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%38::view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%38.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%38.view.)
  (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type) (A2&. Dcr) (A2& Type) (A3&. Dcr)
    (A3& Type) (self! Poly)
   ) (!
    (=>
     (and
      (tr_bound%vstd.view.View. A0&. A0&)
      (tr_bound%vstd.view.View. A1&. A1&)
      (tr_bound%vstd.view.View. A2&. A2&)
      (tr_bound%vstd.view.View. A3&. A3&)
     )
     (= (vstd.view.View.view.? $ (TYPE%tuple%4. A0&. A0& A1&. A1& A2&. A2& A3&. A3&) self!)
      (Poly%tuple%4. (tuple%4./tuple%4 (vstd.view.View.view.? A0&. A0& (tuple%4./tuple%4/0
          (%Poly%tuple%4. self!)
         )
        ) (vstd.view.View.view.? A1&. A1& (tuple%4./tuple%4/1 (%Poly%tuple%4. self!))) (vstd.view.View.view.?
         A2&. A2& (tuple%4./tuple%4/2 (%Poly%tuple%4. self!))
        ) (vstd.view.View.view.? A3&. A3& (tuple%4./tuple%4/3 (%Poly%tuple%4. self!)))
    ))))
    :pattern ((vstd.view.View.view.? $ (TYPE%tuple%4. A0&. A0& A1&. A1& A2&. A2& A3&. A3&)
      self!
    ))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::view::impl&%39::deep_view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%39.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%39.deep_view.)
  (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type) (A2&. Dcr) (A2& Type) (A3&. Dcr)
    (A3& Type) (self! Poly)
   ) (!
    (=>
     (and
      (tr_bound%vstd.view.DeepView. A0&. A0&)
      (tr_bound%vstd.view.DeepView. A1&. A1&)
      (tr_bound%vstd.view.DeepView. A2&. A2&)
      (tr_bound%vstd.view.DeepView. A3&. A3&)
     )
     (= (vstd.view.DeepView.deep_view.? $ (TYPE%tuple%4. A0&. A0& A1&. A1& A2&. A2& A3&.
        A3&
       ) self!
      ) (Poly%tuple%4. (tuple%4./tuple%4 (vstd.view.DeepView.deep_view.? A0&. A0& (tuple%4./tuple%4/0
          (%Poly%tuple%4. self!)
         )
        ) (vstd.view.DeepView.deep_view.? A1&. A1& (tuple%4./tuple%4/1 (%Poly%tuple%4. self!)))
        (vstd.view.DeepView.deep_view.? A2&. A2& (tuple%4./tuple%4/2 (%Poly%tuple%4. self!)))
        (vstd.view.DeepView.deep_view.? A3&. A3& (tuple%4./tuple%4/3 (%Poly%tuple%4. self!)))
    ))))
    :pattern ((vstd.view.DeepView.deep_view.? $ (TYPE%tuple%4. A0&. A0& A1&. A1& A2&. A2&
       A3&. A3&
      ) self!
    ))
    :qid internal_vstd.view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd.view.DeepView.deep_view.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (=>
    (tr_bound%vstd.view.View. A&. A&)
    (tr_bound%vstd.view.View. (REF A&.) A&)
   )
   :pattern ((tr_bound%vstd.view.View. (REF A&.) A&))
   :qid internal_crate__vstd__view__impl&__0_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__view__impl&__0_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (=>
    (tr_bound%vstd.view.DeepView. A&. A&)
    (tr_bound%vstd.view.DeepView. (REF A&.) A&)
   )
   :pattern ((tr_bound%vstd.view.DeepView. (REF A&.) A&))
   :qid internal_crate__vstd__view__impl&__1_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__view__impl&__1_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.DeepView. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.DeepView. $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (UINT 8))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.DeepView. $ (UINT 8))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (UINT 16))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.DeepView. $ (UINT 16))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (UINT 32))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.DeepView. $ (UINT 32))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (UINT 64))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.DeepView. $ (UINT 64))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (UINT 128))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.DeepView. $ (UINT 128))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.DeepView. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (SINT 8))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.DeepView. $ (SINT 8))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (SINT 16))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.DeepView. $ (SINT 16))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (SINT 32))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.DeepView. $ (SINT 32))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (SINT 64))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.DeepView. $ (SINT 64))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (SINT 128))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.DeepView. $ (SINT 128))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (SINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.DeepView. $ (SINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ CHAR)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.DeepView. $ CHAR)
)

;; Trait-Impl-Axiom
(assert
 (forall ((A0&. Dcr) (A0& Type)) (!
   (=>
    (tr_bound%vstd.view.View. A0&. A0&)
    (tr_bound%vstd.view.View. $ (TYPE%tuple%1. A0&. A0&))
   )
   :pattern ((tr_bound%vstd.view.View. $ (TYPE%tuple%1. A0&. A0&)))
   :qid internal_crate__vstd__view__impl&__32_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__view__impl&__32_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((A0&. Dcr) (A0& Type)) (!
   (=>
    (tr_bound%vstd.view.DeepView. A0&. A0&)
    (tr_bound%vstd.view.DeepView. $ (TYPE%tuple%1. A0&. A0&))
   )
   :pattern ((tr_bound%vstd.view.DeepView. $ (TYPE%tuple%1. A0&. A0&)))
   :qid internal_crate__vstd__view__impl&__33_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__view__impl&__33_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type)) (!
   (=>
    (and
     (tr_bound%vstd.view.View. A0&. A0&)
     (tr_bound%vstd.view.View. A1&. A1&)
    )
    (tr_bound%vstd.view.View. $ (TYPE%tuple%2. A0&. A0& A1&. A1&))
   )
   :pattern ((tr_bound%vstd.view.View. $ (TYPE%tuple%2. A0&. A0& A1&. A1&)))
   :qid internal_crate__vstd__view__impl&__34_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__view__impl&__34_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type)) (!
   (=>
    (and
     (tr_bound%vstd.view.DeepView. A0&. A0&)
     (tr_bound%vstd.view.DeepView. A1&. A1&)
    )
    (tr_bound%vstd.view.DeepView. $ (TYPE%tuple%2. A0&. A0& A1&. A1&))
   )
   :pattern ((tr_bound%vstd.view.DeepView. $ (TYPE%tuple%2. A0&. A0& A1&. A1&)))
   :qid internal_crate__vstd__view__impl&__35_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__view__impl&__35_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type) (A2&. Dcr) (A2& Type)) (!
   (=>
    (and
     (tr_bound%vstd.view.View. A0&. A0&)
     (tr_bound%vstd.view.View. A1&. A1&)
     (tr_bound%vstd.view.View. A2&. A2&)
    )
    (tr_bound%vstd.view.View. $ (TYPE%tuple%3. A0&. A0& A1&. A1& A2&. A2&))
   )
   :pattern ((tr_bound%vstd.view.View. $ (TYPE%tuple%3. A0&. A0& A1&. A1& A2&. A2&)))
   :qid internal_crate__vstd__view__impl&__36_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__view__impl&__36_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type) (A2&. Dcr) (A2& Type)) (!
   (=>
    (and
     (tr_bound%vstd.view.DeepView. A0&. A0&)
     (tr_bound%vstd.view.DeepView. A1&. A1&)
     (tr_bound%vstd.view.DeepView. A2&. A2&)
    )
    (tr_bound%vstd.view.DeepView. $ (TYPE%tuple%3. A0&. A0& A1&. A1& A2&. A2&))
   )
   :pattern ((tr_bound%vstd.view.DeepView. $ (TYPE%tuple%3. A0&. A0& A1&. A1& A2&. A2&)))
   :qid internal_crate__vstd__view__impl&__37_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__view__impl&__37_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type) (A2&. Dcr) (A2& Type) (A3&. Dcr)
   (A3& Type)
  ) (!
   (=>
    (and
     (tr_bound%vstd.view.View. A0&. A0&)
     (tr_bound%vstd.view.View. A1&. A1&)
     (tr_bound%vstd.view.View. A2&. A2&)
     (tr_bound%vstd.view.View. A3&. A3&)
    )
    (tr_bound%vstd.view.View. $ (TYPE%tuple%4. A0&. A0& A1&. A1& A2&. A2& A3&. A3&))
   )
   :pattern ((tr_bound%vstd.view.View. $ (TYPE%tuple%4. A0&. A0& A1&. A1& A2&. A2& A3&.
      A3&
   )))
   :qid internal_crate__vstd__view__impl&__38_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__view__impl&__38_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((A0&. Dcr) (A0& Type) (A1&. Dcr) (A1& Type) (A2&. Dcr) (A2& Type) (A3&. Dcr)
   (A3& Type)
  ) (!
   (=>
    (and
     (tr_bound%vstd.view.DeepView. A0&. A0&)
     (tr_bound%vstd.view.DeepView. A1&. A1&)
     (tr_bound%vstd.view.DeepView. A2&. A2&)
     (tr_bound%vstd.view.DeepView. A3&. A3&)
    )
    (tr_bound%vstd.view.DeepView. $ (TYPE%tuple%4. A0&. A0& A1&. A1& A2&. A2& A3&. A3&))
   )
   :pattern ((tr_bound%vstd.view.DeepView. $ (TYPE%tuple%4. A0&. A0& A1&. A1& A2&. A2&
      A3&. A3&
   )))
   :qid internal_crate__vstd__view__impl&__39_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__view__impl&__39_trait_impl_definition
)))
