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

;; MODULE 'module vstd::atomic_ghost'

;; Fuel
(declare-const fuel%vstd.atomic_ghost.impl&%0.inv. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%1.well_formed. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%1.constant. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%2.inv. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%3.well_formed. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%3.constant. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%4.inv. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%5.well_formed. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%5.constant. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%6.inv. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%7.well_formed. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%7.constant. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%8.inv. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%9.well_formed. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%9.constant. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%10.inv. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%11.well_formed. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%11.constant. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%12.inv. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%13.well_formed. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%13.constant. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%14.inv. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%15.well_formed. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%15.constant. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%16.inv. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%17.well_formed. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%17.constant. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%18.inv. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%19.well_formed. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%19.constant. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%20.inv. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%21.well_formed. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%21.constant. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%22.inv. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%23.well_formed. FuelId)
(declare-const fuel%vstd.atomic_ghost.impl&%23.constant. FuelId)
(declare-const fuel%vstd!invariant.AtomicInvariant.inv. FuelId)
(assert
 (distinct fuel%vstd.atomic_ghost.impl&%0.inv. fuel%vstd.atomic_ghost.impl&%1.well_formed.
  fuel%vstd.atomic_ghost.impl&%1.constant. fuel%vstd.atomic_ghost.impl&%2.inv. fuel%vstd.atomic_ghost.impl&%3.well_formed.
  fuel%vstd.atomic_ghost.impl&%3.constant. fuel%vstd.atomic_ghost.impl&%4.inv. fuel%vstd.atomic_ghost.impl&%5.well_formed.
  fuel%vstd.atomic_ghost.impl&%5.constant. fuel%vstd.atomic_ghost.impl&%6.inv. fuel%vstd.atomic_ghost.impl&%7.well_formed.
  fuel%vstd.atomic_ghost.impl&%7.constant. fuel%vstd.atomic_ghost.impl&%8.inv. fuel%vstd.atomic_ghost.impl&%9.well_formed.
  fuel%vstd.atomic_ghost.impl&%9.constant. fuel%vstd.atomic_ghost.impl&%10.inv. fuel%vstd.atomic_ghost.impl&%11.well_formed.
  fuel%vstd.atomic_ghost.impl&%11.constant. fuel%vstd.atomic_ghost.impl&%12.inv. fuel%vstd.atomic_ghost.impl&%13.well_formed.
  fuel%vstd.atomic_ghost.impl&%13.constant. fuel%vstd.atomic_ghost.impl&%14.inv. fuel%vstd.atomic_ghost.impl&%15.well_formed.
  fuel%vstd.atomic_ghost.impl&%15.constant. fuel%vstd.atomic_ghost.impl&%16.inv. fuel%vstd.atomic_ghost.impl&%17.well_formed.
  fuel%vstd.atomic_ghost.impl&%17.constant. fuel%vstd.atomic_ghost.impl&%18.inv. fuel%vstd.atomic_ghost.impl&%19.well_formed.
  fuel%vstd.atomic_ghost.impl&%19.constant. fuel%vstd.atomic_ghost.impl&%20.inv. fuel%vstd.atomic_ghost.impl&%21.well_formed.
  fuel%vstd.atomic_ghost.impl&%21.constant. fuel%vstd.atomic_ghost.impl&%22.inv. fuel%vstd.atomic_ghost.impl&%23.well_formed.
  fuel%vstd.atomic_ghost.impl&%23.constant. fuel%vstd!invariant.AtomicInvariant.inv.
))

;; Datatypes
(declare-sort vstd.atomic.PAtomicBool. 0)
(declare-sort vstd.atomic.PAtomicI16. 0)
(declare-sort vstd.atomic.PAtomicI32. 0)
(declare-sort vstd.atomic.PAtomicI64. 0)
(declare-sort vstd.atomic.PAtomicI8. 0)
(declare-sort vstd.atomic.PAtomicIsize. 0)
(declare-sort vstd.atomic.PAtomicU16. 0)
(declare-sort vstd.atomic.PAtomicU32. 0)
(declare-sort vstd.atomic.PAtomicU64. 0)
(declare-sort vstd.atomic.PAtomicU8. 0)
(declare-sort vstd.atomic.PAtomicUsize. 0)
(declare-sort vstd.atomic.PermissionBool. 0)
(declare-sort vstd.atomic.PermissionI16. 0)
(declare-sort vstd.atomic.PermissionI32. 0)
(declare-sort vstd.atomic.PermissionI64. 0)
(declare-sort vstd.atomic.PermissionI8. 0)
(declare-sort vstd.atomic.PermissionIsize. 0)
(declare-sort vstd.atomic.PermissionU16. 0)
(declare-sort vstd.atomic.PermissionU32. 0)
(declare-sort vstd.atomic.PermissionU64. 0)
(declare-sort vstd.atomic.PermissionU8. 0)
(declare-sort vstd.atomic.PermissionUsize. 0)
(declare-sort vstd.invariant.OpenInvariantCredit. 0)
(declare-datatypes ((vstd.atomic.PermissionDataBool. 0) (vstd.atomic.PermissionDataU8.
   0
  ) (vstd.atomic.PermissionDataU16. 0) (vstd.atomic.PermissionDataU32. 0) (vstd.atomic.PermissionDataU64.
   0
  ) (vstd.atomic.PermissionDataUsize. 0) (vstd.atomic.PermissionDataI8. 0) (vstd.atomic.PermissionDataI16.
   0
  ) (vstd.atomic.PermissionDataI32. 0) (vstd.atomic.PermissionDataI64. 0) (vstd.atomic.PermissionDataIsize.
   0
  ) (vstd.atomic.PermissionDataPtr. 0) (vstd.atomic_ghost.AtomicPredU64. 0) (vstd.atomic_ghost.AtomicU64.
   0
  ) (vstd.atomic_ghost.AtomicPredU32. 0) (vstd.atomic_ghost.AtomicU32. 0) (vstd.atomic_ghost.AtomicPredU16.
   0
  ) (vstd.atomic_ghost.AtomicU16. 0) (vstd.atomic_ghost.AtomicPredU8. 0) (vstd.atomic_ghost.AtomicU8.
   0
  ) (vstd.atomic_ghost.AtomicPredUsize. 0) (vstd.atomic_ghost.AtomicUsize. 0) (vstd.atomic_ghost.AtomicPredI64.
   0
  ) (vstd.atomic_ghost.AtomicI64. 0) (vstd.atomic_ghost.AtomicPredI32. 0) (vstd.atomic_ghost.AtomicI32.
   0
  ) (vstd.atomic_ghost.AtomicPredI16. 0) (vstd.atomic_ghost.AtomicI16. 0) (vstd.atomic_ghost.AtomicPredI8.
   0
  ) (vstd.atomic_ghost.AtomicI8. 0) (vstd.atomic_ghost.AtomicPredIsize. 0) (vstd.atomic_ghost.AtomicIsize.
   0
  ) (vstd.atomic_ghost.AtomicPredBool. 0) (vstd.atomic_ghost.AtomicBool. 0) (vstd.atomic_ghost.AtomicPredPtr.
   0
  ) (vstd.atomic_ghost.AtomicPtr. 0) (tuple%0. 0) (tuple%2. 0)
 ) (((vstd.atomic.PermissionDataBool./PermissionDataBool (vstd.atomic.PermissionDataBool./PermissionDataBool/?patomic
     Int
    ) (vstd.atomic.PermissionDataBool./PermissionDataBool/?value Bool)
   )
  ) ((vstd.atomic.PermissionDataU8./PermissionDataU8 (vstd.atomic.PermissionDataU8./PermissionDataU8/?patomic
     Int
    ) (vstd.atomic.PermissionDataU8./PermissionDataU8/?value Int)
   )
  ) ((vstd.atomic.PermissionDataU16./PermissionDataU16 (vstd.atomic.PermissionDataU16./PermissionDataU16/?patomic
     Int
    ) (vstd.atomic.PermissionDataU16./PermissionDataU16/?value Int)
   )
  ) ((vstd.atomic.PermissionDataU32./PermissionDataU32 (vstd.atomic.PermissionDataU32./PermissionDataU32/?patomic
     Int
    ) (vstd.atomic.PermissionDataU32./PermissionDataU32/?value Int)
   )
  ) ((vstd.atomic.PermissionDataU64./PermissionDataU64 (vstd.atomic.PermissionDataU64./PermissionDataU64/?patomic
     Int
    ) (vstd.atomic.PermissionDataU64./PermissionDataU64/?value Int)
   )
  ) ((vstd.atomic.PermissionDataUsize./PermissionDataUsize (vstd.atomic.PermissionDataUsize./PermissionDataUsize/?patomic
     Int
    ) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/?value Int)
   )
  ) ((vstd.atomic.PermissionDataI8./PermissionDataI8 (vstd.atomic.PermissionDataI8./PermissionDataI8/?patomic
     Int
    ) (vstd.atomic.PermissionDataI8./PermissionDataI8/?value Int)
   )
  ) ((vstd.atomic.PermissionDataI16./PermissionDataI16 (vstd.atomic.PermissionDataI16./PermissionDataI16/?patomic
     Int
    ) (vstd.atomic.PermissionDataI16./PermissionDataI16/?value Int)
   )
  ) ((vstd.atomic.PermissionDataI32./PermissionDataI32 (vstd.atomic.PermissionDataI32./PermissionDataI32/?patomic
     Int
    ) (vstd.atomic.PermissionDataI32./PermissionDataI32/?value Int)
   )
  ) ((vstd.atomic.PermissionDataI64./PermissionDataI64 (vstd.atomic.PermissionDataI64./PermissionDataI64/?patomic
     Int
    ) (vstd.atomic.PermissionDataI64./PermissionDataI64/?value Int)
   )
  ) ((vstd.atomic.PermissionDataIsize./PermissionDataIsize (vstd.atomic.PermissionDataIsize./PermissionDataIsize/?patomic
     Int
    ) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/?value Int)
   )
  ) ((vstd.atomic.PermissionDataPtr./PermissionDataPtr (vstd.atomic.PermissionDataPtr./PermissionDataPtr/?patomic
     Int
    ) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/?value Poly)
   )
  ) ((vstd.atomic_ghost.AtomicPredU64./AtomicPredU64 (vstd.atomic_ghost.AtomicPredU64./AtomicPredU64/?p
     Poly
   ))
  ) ((vstd.atomic_ghost.AtomicU64./AtomicU64 (vstd.atomic_ghost.AtomicU64./AtomicU64/?patomic
     vstd.atomic.PAtomicU64.
    ) (vstd.atomic_ghost.AtomicU64./AtomicU64/?atomic_inv Poly)
   )
  ) ((vstd.atomic_ghost.AtomicPredU32./AtomicPredU32 (vstd.atomic_ghost.AtomicPredU32./AtomicPredU32/?p
     Poly
   ))
  ) ((vstd.atomic_ghost.AtomicU32./AtomicU32 (vstd.atomic_ghost.AtomicU32./AtomicU32/?patomic
     vstd.atomic.PAtomicU32.
    ) (vstd.atomic_ghost.AtomicU32./AtomicU32/?atomic_inv Poly)
   )
  ) ((vstd.atomic_ghost.AtomicPredU16./AtomicPredU16 (vstd.atomic_ghost.AtomicPredU16./AtomicPredU16/?p
     Poly
   ))
  ) ((vstd.atomic_ghost.AtomicU16./AtomicU16 (vstd.atomic_ghost.AtomicU16./AtomicU16/?patomic
     vstd.atomic.PAtomicU16.
    ) (vstd.atomic_ghost.AtomicU16./AtomicU16/?atomic_inv Poly)
   )
  ) ((vstd.atomic_ghost.AtomicPredU8./AtomicPredU8 (vstd.atomic_ghost.AtomicPredU8./AtomicPredU8/?p
     Poly
   ))
  ) ((vstd.atomic_ghost.AtomicU8./AtomicU8 (vstd.atomic_ghost.AtomicU8./AtomicU8/?patomic
     vstd.atomic.PAtomicU8.
    ) (vstd.atomic_ghost.AtomicU8./AtomicU8/?atomic_inv Poly)
   )
  ) ((vstd.atomic_ghost.AtomicPredUsize./AtomicPredUsize (vstd.atomic_ghost.AtomicPredUsize./AtomicPredUsize/?p
     Poly
   ))
  ) ((vstd.atomic_ghost.AtomicUsize./AtomicUsize (vstd.atomic_ghost.AtomicUsize./AtomicUsize/?patomic
     vstd.atomic.PAtomicUsize.
    ) (vstd.atomic_ghost.AtomicUsize./AtomicUsize/?atomic_inv Poly)
   )
  ) ((vstd.atomic_ghost.AtomicPredI64./AtomicPredI64 (vstd.atomic_ghost.AtomicPredI64./AtomicPredI64/?p
     Poly
   ))
  ) ((vstd.atomic_ghost.AtomicI64./AtomicI64 (vstd.atomic_ghost.AtomicI64./AtomicI64/?patomic
     vstd.atomic.PAtomicI64.
    ) (vstd.atomic_ghost.AtomicI64./AtomicI64/?atomic_inv Poly)
   )
  ) ((vstd.atomic_ghost.AtomicPredI32./AtomicPredI32 (vstd.atomic_ghost.AtomicPredI32./AtomicPredI32/?p
     Poly
   ))
  ) ((vstd.atomic_ghost.AtomicI32./AtomicI32 (vstd.atomic_ghost.AtomicI32./AtomicI32/?patomic
     vstd.atomic.PAtomicI32.
    ) (vstd.atomic_ghost.AtomicI32./AtomicI32/?atomic_inv Poly)
   )
  ) ((vstd.atomic_ghost.AtomicPredI16./AtomicPredI16 (vstd.atomic_ghost.AtomicPredI16./AtomicPredI16/?p
     Poly
   ))
  ) ((vstd.atomic_ghost.AtomicI16./AtomicI16 (vstd.atomic_ghost.AtomicI16./AtomicI16/?patomic
     vstd.atomic.PAtomicI16.
    ) (vstd.atomic_ghost.AtomicI16./AtomicI16/?atomic_inv Poly)
   )
  ) ((vstd.atomic_ghost.AtomicPredI8./AtomicPredI8 (vstd.atomic_ghost.AtomicPredI8./AtomicPredI8/?p
     Poly
   ))
  ) ((vstd.atomic_ghost.AtomicI8./AtomicI8 (vstd.atomic_ghost.AtomicI8./AtomicI8/?patomic
     vstd.atomic.PAtomicI8.
    ) (vstd.atomic_ghost.AtomicI8./AtomicI8/?atomic_inv Poly)
   )
  ) ((vstd.atomic_ghost.AtomicPredIsize./AtomicPredIsize (vstd.atomic_ghost.AtomicPredIsize./AtomicPredIsize/?p
     Poly
   ))
  ) ((vstd.atomic_ghost.AtomicIsize./AtomicIsize (vstd.atomic_ghost.AtomicIsize./AtomicIsize/?patomic
     vstd.atomic.PAtomicIsize.
    ) (vstd.atomic_ghost.AtomicIsize./AtomicIsize/?atomic_inv Poly)
   )
  ) ((vstd.atomic_ghost.AtomicPredBool./AtomicPredBool (vstd.atomic_ghost.AtomicPredBool./AtomicPredBool/?p
     Poly
   ))
  ) ((vstd.atomic_ghost.AtomicBool./AtomicBool (vstd.atomic_ghost.AtomicBool./AtomicBool/?patomic
     vstd.atomic.PAtomicBool.
    ) (vstd.atomic_ghost.AtomicBool./AtomicBool/?atomic_inv Poly)
   )
  ) ((vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr (vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/?t
     Poly
    ) (vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/?p Poly)
   )
  ) ((vstd.atomic_ghost.AtomicPtr./AtomicPtr (vstd.atomic_ghost.AtomicPtr./AtomicPtr/?patomic
     Poly
    ) (vstd.atomic_ghost.AtomicPtr./AtomicPtr/?atomic_inv Poly)
   )
  ) ((tuple%0./tuple%0)) ((tuple%2./tuple%2 (tuple%2./tuple%2/?0 Poly) (tuple%2./tuple%2/?1
     Poly
)))))
(declare-fun vstd.atomic.PermissionDataBool./PermissionDataBool/patomic (vstd.atomic.PermissionDataBool.)
 Int
)
(declare-fun vstd.atomic.PermissionDataBool./PermissionDataBool/value (vstd.atomic.PermissionDataBool.)
 Bool
)
(declare-fun vstd.atomic.PermissionDataU8./PermissionDataU8/patomic (vstd.atomic.PermissionDataU8.)
 Int
)
(declare-fun vstd.atomic.PermissionDataU8./PermissionDataU8/value (vstd.atomic.PermissionDataU8.)
 Int
)
(declare-fun vstd.atomic.PermissionDataU16./PermissionDataU16/patomic (vstd.atomic.PermissionDataU16.)
 Int
)
(declare-fun vstd.atomic.PermissionDataU16./PermissionDataU16/value (vstd.atomic.PermissionDataU16.)
 Int
)
(declare-fun vstd.atomic.PermissionDataU32./PermissionDataU32/patomic (vstd.atomic.PermissionDataU32.)
 Int
)
(declare-fun vstd.atomic.PermissionDataU32./PermissionDataU32/value (vstd.atomic.PermissionDataU32.)
 Int
)
(declare-fun vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (vstd.atomic.PermissionDataU64.)
 Int
)
(declare-fun vstd.atomic.PermissionDataU64./PermissionDataU64/value (vstd.atomic.PermissionDataU64.)
 Int
)
(declare-fun vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic (vstd.atomic.PermissionDataUsize.)
 Int
)
(declare-fun vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (vstd.atomic.PermissionDataUsize.)
 Int
)
(declare-fun vstd.atomic.PermissionDataI8./PermissionDataI8/patomic (vstd.atomic.PermissionDataI8.)
 Int
)
(declare-fun vstd.atomic.PermissionDataI8./PermissionDataI8/value (vstd.atomic.PermissionDataI8.)
 Int
)
(declare-fun vstd.atomic.PermissionDataI16./PermissionDataI16/patomic (vstd.atomic.PermissionDataI16.)
 Int
)
(declare-fun vstd.atomic.PermissionDataI16./PermissionDataI16/value (vstd.atomic.PermissionDataI16.)
 Int
)
(declare-fun vstd.atomic.PermissionDataI32./PermissionDataI32/patomic (vstd.atomic.PermissionDataI32.)
 Int
)
(declare-fun vstd.atomic.PermissionDataI32./PermissionDataI32/value (vstd.atomic.PermissionDataI32.)
 Int
)
(declare-fun vstd.atomic.PermissionDataI64./PermissionDataI64/patomic (vstd.atomic.PermissionDataI64.)
 Int
)
(declare-fun vstd.atomic.PermissionDataI64./PermissionDataI64/value (vstd.atomic.PermissionDataI64.)
 Int
)
(declare-fun vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic (vstd.atomic.PermissionDataIsize.)
 Int
)
(declare-fun vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (vstd.atomic.PermissionDataIsize.)
 Int
)
(declare-fun vstd.atomic.PermissionDataPtr./PermissionDataPtr/patomic (vstd.atomic.PermissionDataPtr.)
 Int
)
(declare-fun vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (vstd.atomic.PermissionDataPtr.)
 Poly
)
(declare-fun vstd.atomic_ghost.AtomicPredU64./AtomicPredU64/p (vstd.atomic_ghost.AtomicPredU64.)
 Poly
)
(declare-fun vstd.atomic_ghost.AtomicU64./AtomicU64/patomic (vstd.atomic_ghost.AtomicU64.)
 vstd.atomic.PAtomicU64.
)
(declare-fun vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv (vstd.atomic_ghost.AtomicU64.)
 Poly
)
(declare-fun vstd.atomic_ghost.AtomicPredU32./AtomicPredU32/p (vstd.atomic_ghost.AtomicPredU32.)
 Poly
)
(declare-fun vstd.atomic_ghost.AtomicU32./AtomicU32/patomic (vstd.atomic_ghost.AtomicU32.)
 vstd.atomic.PAtomicU32.
)
(declare-fun vstd.atomic_ghost.AtomicU32./AtomicU32/atomic_inv (vstd.atomic_ghost.AtomicU32.)
 Poly
)
(declare-fun vstd.atomic_ghost.AtomicPredU16./AtomicPredU16/p (vstd.atomic_ghost.AtomicPredU16.)
 Poly
)
(declare-fun vstd.atomic_ghost.AtomicU16./AtomicU16/patomic (vstd.atomic_ghost.AtomicU16.)
 vstd.atomic.PAtomicU16.
)
(declare-fun vstd.atomic_ghost.AtomicU16./AtomicU16/atomic_inv (vstd.atomic_ghost.AtomicU16.)
 Poly
)
(declare-fun vstd.atomic_ghost.AtomicPredU8./AtomicPredU8/p (vstd.atomic_ghost.AtomicPredU8.)
 Poly
)
(declare-fun vstd.atomic_ghost.AtomicU8./AtomicU8/patomic (vstd.atomic_ghost.AtomicU8.)
 vstd.atomic.PAtomicU8.
)
(declare-fun vstd.atomic_ghost.AtomicU8./AtomicU8/atomic_inv (vstd.atomic_ghost.AtomicU8.)
 Poly
)
(declare-fun vstd.atomic_ghost.AtomicPredUsize./AtomicPredUsize/p (vstd.atomic_ghost.AtomicPredUsize.)
 Poly
)
(declare-fun vstd.atomic_ghost.AtomicUsize./AtomicUsize/patomic (vstd.atomic_ghost.AtomicUsize.)
 vstd.atomic.PAtomicUsize.
)
(declare-fun vstd.atomic_ghost.AtomicUsize./AtomicUsize/atomic_inv (vstd.atomic_ghost.AtomicUsize.)
 Poly
)
(declare-fun vstd.atomic_ghost.AtomicPredI64./AtomicPredI64/p (vstd.atomic_ghost.AtomicPredI64.)
 Poly
)
(declare-fun vstd.atomic_ghost.AtomicI64./AtomicI64/patomic (vstd.atomic_ghost.AtomicI64.)
 vstd.atomic.PAtomicI64.
)
(declare-fun vstd.atomic_ghost.AtomicI64./AtomicI64/atomic_inv (vstd.atomic_ghost.AtomicI64.)
 Poly
)
(declare-fun vstd.atomic_ghost.AtomicPredI32./AtomicPredI32/p (vstd.atomic_ghost.AtomicPredI32.)
 Poly
)
(declare-fun vstd.atomic_ghost.AtomicI32./AtomicI32/patomic (vstd.atomic_ghost.AtomicI32.)
 vstd.atomic.PAtomicI32.
)
(declare-fun vstd.atomic_ghost.AtomicI32./AtomicI32/atomic_inv (vstd.atomic_ghost.AtomicI32.)
 Poly
)
(declare-fun vstd.atomic_ghost.AtomicPredI16./AtomicPredI16/p (vstd.atomic_ghost.AtomicPredI16.)
 Poly
)
(declare-fun vstd.atomic_ghost.AtomicI16./AtomicI16/patomic (vstd.atomic_ghost.AtomicI16.)
 vstd.atomic.PAtomicI16.
)
(declare-fun vstd.atomic_ghost.AtomicI16./AtomicI16/atomic_inv (vstd.atomic_ghost.AtomicI16.)
 Poly
)
(declare-fun vstd.atomic_ghost.AtomicPredI8./AtomicPredI8/p (vstd.atomic_ghost.AtomicPredI8.)
 Poly
)
(declare-fun vstd.atomic_ghost.AtomicI8./AtomicI8/patomic (vstd.atomic_ghost.AtomicI8.)
 vstd.atomic.PAtomicI8.
)
(declare-fun vstd.atomic_ghost.AtomicI8./AtomicI8/atomic_inv (vstd.atomic_ghost.AtomicI8.)
 Poly
)
(declare-fun vstd.atomic_ghost.AtomicPredIsize./AtomicPredIsize/p (vstd.atomic_ghost.AtomicPredIsize.)
 Poly
)
(declare-fun vstd.atomic_ghost.AtomicIsize./AtomicIsize/patomic (vstd.atomic_ghost.AtomicIsize.)
 vstd.atomic.PAtomicIsize.
)
(declare-fun vstd.atomic_ghost.AtomicIsize./AtomicIsize/atomic_inv (vstd.atomic_ghost.AtomicIsize.)
 Poly
)
(declare-fun vstd.atomic_ghost.AtomicPredBool./AtomicPredBool/p (vstd.atomic_ghost.AtomicPredBool.)
 Poly
)
(declare-fun vstd.atomic_ghost.AtomicBool./AtomicBool/patomic (vstd.atomic_ghost.AtomicBool.)
 vstd.atomic.PAtomicBool.
)
(declare-fun vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv (vstd.atomic_ghost.AtomicBool.)
 Poly
)
(declare-fun vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/t (vstd.atomic_ghost.AtomicPredPtr.)
 Poly
)
(declare-fun vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/p (vstd.atomic_ghost.AtomicPredPtr.)
 Poly
)
(declare-fun vstd.atomic_ghost.AtomicPtr./AtomicPtr/patomic (vstd.atomic_ghost.AtomicPtr.)
 Poly
)
(declare-fun vstd.atomic_ghost.AtomicPtr./AtomicPtr/atomic_inv (vstd.atomic_ghost.AtomicPtr.)
 Poly
)
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-const TYPE%vstd.atomic.PAtomicBool. Type)
(declare-const TYPE%vstd.atomic.PermissionBool. Type)
(declare-const TYPE%vstd.atomic.PermissionDataBool. Type)
(declare-const TYPE%vstd.atomic.PAtomicU8. Type)
(declare-const TYPE%vstd.atomic.PermissionU8. Type)
(declare-const TYPE%vstd.atomic.PermissionDataU8. Type)
(declare-const TYPE%vstd.atomic.PAtomicU16. Type)
(declare-const TYPE%vstd.atomic.PermissionU16. Type)
(declare-const TYPE%vstd.atomic.PermissionDataU16. Type)
(declare-const TYPE%vstd.atomic.PAtomicU32. Type)
(declare-const TYPE%vstd.atomic.PermissionU32. Type)
(declare-const TYPE%vstd.atomic.PermissionDataU32. Type)
(declare-const TYPE%vstd.atomic.PAtomicU64. Type)
(declare-const TYPE%vstd.atomic.PermissionU64. Type)
(declare-const TYPE%vstd.atomic.PermissionDataU64. Type)
(declare-const TYPE%vstd.atomic.PAtomicUsize. Type)
(declare-const TYPE%vstd.atomic.PermissionUsize. Type)
(declare-const TYPE%vstd.atomic.PermissionDataUsize. Type)
(declare-const TYPE%vstd.atomic.PAtomicI8. Type)
(declare-const TYPE%vstd.atomic.PermissionI8. Type)
(declare-const TYPE%vstd.atomic.PermissionDataI8. Type)
(declare-const TYPE%vstd.atomic.PAtomicI16. Type)
(declare-const TYPE%vstd.atomic.PermissionI16. Type)
(declare-const TYPE%vstd.atomic.PermissionDataI16. Type)
(declare-const TYPE%vstd.atomic.PAtomicI32. Type)
(declare-const TYPE%vstd.atomic.PermissionI32. Type)
(declare-const TYPE%vstd.atomic.PermissionDataI32. Type)
(declare-const TYPE%vstd.atomic.PAtomicI64. Type)
(declare-const TYPE%vstd.atomic.PermissionI64. Type)
(declare-const TYPE%vstd.atomic.PermissionDataI64. Type)
(declare-const TYPE%vstd.atomic.PAtomicIsize. Type)
(declare-const TYPE%vstd.atomic.PermissionIsize. Type)
(declare-const TYPE%vstd.atomic.PermissionDataIsize. Type)
(declare-fun TYPE%vstd.atomic.PAtomicPtr. (Dcr Type) Type)
(declare-fun TYPE%vstd.atomic.PermissionPtr. (Dcr Type) Type)
(declare-fun TYPE%vstd.atomic.PermissionDataPtr. (Dcr Type) Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicPredU64. (Dcr Type) Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicU64. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicPredU32. (Dcr Type) Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicU32. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicPredU16. (Dcr Type) Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicU16. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicPredU8. (Dcr Type) Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicU8. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicPredUsize. (Dcr Type) Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicUsize. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicPredI64. (Dcr Type) Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicI64. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicPredI32. (Dcr Type) Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicI32. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicPredI16. (Dcr Type) Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicI16. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicPredI8. (Dcr Type) Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicI8. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicPredIsize. (Dcr Type) Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicIsize. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicPredBool. (Dcr Type) Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicBool. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicPredPtr. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.atomic_ghost.AtomicPtr. (Dcr Type Dcr Type Dcr Type Dcr Type)
 Type
)
(declare-fun TYPE%vstd.invariant.AtomicInvariant. (Dcr Type Dcr Type Dcr Type) Type)
(declare-const TYPE%vstd.invariant.OpenInvariantCredit. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%2. (Dcr Type Dcr Type) Type)
(declare-fun Poly%vstd.atomic.PAtomicBool. (vstd.atomic.PAtomicBool.) Poly)
(declare-fun %Poly%vstd.atomic.PAtomicBool. (Poly) vstd.atomic.PAtomicBool.)
(declare-fun Poly%vstd.atomic.PAtomicI16. (vstd.atomic.PAtomicI16.) Poly)
(declare-fun %Poly%vstd.atomic.PAtomicI16. (Poly) vstd.atomic.PAtomicI16.)
(declare-fun Poly%vstd.atomic.PAtomicI32. (vstd.atomic.PAtomicI32.) Poly)
(declare-fun %Poly%vstd.atomic.PAtomicI32. (Poly) vstd.atomic.PAtomicI32.)
(declare-fun Poly%vstd.atomic.PAtomicI64. (vstd.atomic.PAtomicI64.) Poly)
(declare-fun %Poly%vstd.atomic.PAtomicI64. (Poly) vstd.atomic.PAtomicI64.)
(declare-fun Poly%vstd.atomic.PAtomicI8. (vstd.atomic.PAtomicI8.) Poly)
(declare-fun %Poly%vstd.atomic.PAtomicI8. (Poly) vstd.atomic.PAtomicI8.)
(declare-fun Poly%vstd.atomic.PAtomicIsize. (vstd.atomic.PAtomicIsize.) Poly)
(declare-fun %Poly%vstd.atomic.PAtomicIsize. (Poly) vstd.atomic.PAtomicIsize.)
(declare-fun Poly%vstd.atomic.PAtomicU16. (vstd.atomic.PAtomicU16.) Poly)
(declare-fun %Poly%vstd.atomic.PAtomicU16. (Poly) vstd.atomic.PAtomicU16.)
(declare-fun Poly%vstd.atomic.PAtomicU32. (vstd.atomic.PAtomicU32.) Poly)
(declare-fun %Poly%vstd.atomic.PAtomicU32. (Poly) vstd.atomic.PAtomicU32.)
(declare-fun Poly%vstd.atomic.PAtomicU64. (vstd.atomic.PAtomicU64.) Poly)
(declare-fun %Poly%vstd.atomic.PAtomicU64. (Poly) vstd.atomic.PAtomicU64.)
(declare-fun Poly%vstd.atomic.PAtomicU8. (vstd.atomic.PAtomicU8.) Poly)
(declare-fun %Poly%vstd.atomic.PAtomicU8. (Poly) vstd.atomic.PAtomicU8.)
(declare-fun Poly%vstd.atomic.PAtomicUsize. (vstd.atomic.PAtomicUsize.) Poly)
(declare-fun %Poly%vstd.atomic.PAtomicUsize. (Poly) vstd.atomic.PAtomicUsize.)
(declare-fun Poly%vstd.atomic.PermissionBool. (vstd.atomic.PermissionBool.) Poly)
(declare-fun %Poly%vstd.atomic.PermissionBool. (Poly) vstd.atomic.PermissionBool.)
(declare-fun Poly%vstd.atomic.PermissionI16. (vstd.atomic.PermissionI16.) Poly)
(declare-fun %Poly%vstd.atomic.PermissionI16. (Poly) vstd.atomic.PermissionI16.)
(declare-fun Poly%vstd.atomic.PermissionI32. (vstd.atomic.PermissionI32.) Poly)
(declare-fun %Poly%vstd.atomic.PermissionI32. (Poly) vstd.atomic.PermissionI32.)
(declare-fun Poly%vstd.atomic.PermissionI64. (vstd.atomic.PermissionI64.) Poly)
(declare-fun %Poly%vstd.atomic.PermissionI64. (Poly) vstd.atomic.PermissionI64.)
(declare-fun Poly%vstd.atomic.PermissionI8. (vstd.atomic.PermissionI8.) Poly)
(declare-fun %Poly%vstd.atomic.PermissionI8. (Poly) vstd.atomic.PermissionI8.)
(declare-fun Poly%vstd.atomic.PermissionIsize. (vstd.atomic.PermissionIsize.) Poly)
(declare-fun %Poly%vstd.atomic.PermissionIsize. (Poly) vstd.atomic.PermissionIsize.)
(declare-fun Poly%vstd.atomic.PermissionU16. (vstd.atomic.PermissionU16.) Poly)
(declare-fun %Poly%vstd.atomic.PermissionU16. (Poly) vstd.atomic.PermissionU16.)
(declare-fun Poly%vstd.atomic.PermissionU32. (vstd.atomic.PermissionU32.) Poly)
(declare-fun %Poly%vstd.atomic.PermissionU32. (Poly) vstd.atomic.PermissionU32.)
(declare-fun Poly%vstd.atomic.PermissionU64. (vstd.atomic.PermissionU64.) Poly)
(declare-fun %Poly%vstd.atomic.PermissionU64. (Poly) vstd.atomic.PermissionU64.)
(declare-fun Poly%vstd.atomic.PermissionU8. (vstd.atomic.PermissionU8.) Poly)
(declare-fun %Poly%vstd.atomic.PermissionU8. (Poly) vstd.atomic.PermissionU8.)
(declare-fun Poly%vstd.atomic.PermissionUsize. (vstd.atomic.PermissionUsize.) Poly)
(declare-fun %Poly%vstd.atomic.PermissionUsize. (Poly) vstd.atomic.PermissionUsize.)
(declare-fun Poly%vstd.invariant.OpenInvariantCredit. (vstd.invariant.OpenInvariantCredit.)
 Poly
)
(declare-fun %Poly%vstd.invariant.OpenInvariantCredit. (Poly) vstd.invariant.OpenInvariantCredit.)
(declare-fun Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.PermissionDataBool.)
 Poly
)
(declare-fun %Poly%vstd.atomic.PermissionDataBool. (Poly) vstd.atomic.PermissionDataBool.)
(declare-fun Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.PermissionDataU8.) Poly)
(declare-fun %Poly%vstd.atomic.PermissionDataU8. (Poly) vstd.atomic.PermissionDataU8.)
(declare-fun Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.PermissionDataU16.)
 Poly
)
(declare-fun %Poly%vstd.atomic.PermissionDataU16. (Poly) vstd.atomic.PermissionDataU16.)
(declare-fun Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.PermissionDataU32.)
 Poly
)
(declare-fun %Poly%vstd.atomic.PermissionDataU32. (Poly) vstd.atomic.PermissionDataU32.)
(declare-fun Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.PermissionDataU64.)
 Poly
)
(declare-fun %Poly%vstd.atomic.PermissionDataU64. (Poly) vstd.atomic.PermissionDataU64.)
(declare-fun Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.PermissionDataUsize.)
 Poly
)
(declare-fun %Poly%vstd.atomic.PermissionDataUsize. (Poly) vstd.atomic.PermissionDataUsize.)
(declare-fun Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.PermissionDataI8.) Poly)
(declare-fun %Poly%vstd.atomic.PermissionDataI8. (Poly) vstd.atomic.PermissionDataI8.)
(declare-fun Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.PermissionDataI16.)
 Poly
)
(declare-fun %Poly%vstd.atomic.PermissionDataI16. (Poly) vstd.atomic.PermissionDataI16.)
(declare-fun Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.PermissionDataI32.)
 Poly
)
(declare-fun %Poly%vstd.atomic.PermissionDataI32. (Poly) vstd.atomic.PermissionDataI32.)
(declare-fun Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.PermissionDataI64.)
 Poly
)
(declare-fun %Poly%vstd.atomic.PermissionDataI64. (Poly) vstd.atomic.PermissionDataI64.)
(declare-fun Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.PermissionDataIsize.)
 Poly
)
(declare-fun %Poly%vstd.atomic.PermissionDataIsize. (Poly) vstd.atomic.PermissionDataIsize.)
(declare-fun Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.PermissionDataPtr.)
 Poly
)
(declare-fun %Poly%vstd.atomic.PermissionDataPtr. (Poly) vstd.atomic.PermissionDataPtr.)
(declare-fun Poly%vstd.atomic_ghost.AtomicPredU64. (vstd.atomic_ghost.AtomicPredU64.)
 Poly
)
(declare-fun %Poly%vstd.atomic_ghost.AtomicPredU64. (Poly) vstd.atomic_ghost.AtomicPredU64.)
(declare-fun Poly%vstd.atomic_ghost.AtomicU64. (vstd.atomic_ghost.AtomicU64.) Poly)
(declare-fun %Poly%vstd.atomic_ghost.AtomicU64. (Poly) vstd.atomic_ghost.AtomicU64.)
(declare-fun Poly%vstd.atomic_ghost.AtomicPredU32. (vstd.atomic_ghost.AtomicPredU32.)
 Poly
)
(declare-fun %Poly%vstd.atomic_ghost.AtomicPredU32. (Poly) vstd.atomic_ghost.AtomicPredU32.)
(declare-fun Poly%vstd.atomic_ghost.AtomicU32. (vstd.atomic_ghost.AtomicU32.) Poly)
(declare-fun %Poly%vstd.atomic_ghost.AtomicU32. (Poly) vstd.atomic_ghost.AtomicU32.)
(declare-fun Poly%vstd.atomic_ghost.AtomicPredU16. (vstd.atomic_ghost.AtomicPredU16.)
 Poly
)
(declare-fun %Poly%vstd.atomic_ghost.AtomicPredU16. (Poly) vstd.atomic_ghost.AtomicPredU16.)
(declare-fun Poly%vstd.atomic_ghost.AtomicU16. (vstd.atomic_ghost.AtomicU16.) Poly)
(declare-fun %Poly%vstd.atomic_ghost.AtomicU16. (Poly) vstd.atomic_ghost.AtomicU16.)
(declare-fun Poly%vstd.atomic_ghost.AtomicPredU8. (vstd.atomic_ghost.AtomicPredU8.)
 Poly
)
(declare-fun %Poly%vstd.atomic_ghost.AtomicPredU8. (Poly) vstd.atomic_ghost.AtomicPredU8.)
(declare-fun Poly%vstd.atomic_ghost.AtomicU8. (vstd.atomic_ghost.AtomicU8.) Poly)
(declare-fun %Poly%vstd.atomic_ghost.AtomicU8. (Poly) vstd.atomic_ghost.AtomicU8.)
(declare-fun Poly%vstd.atomic_ghost.AtomicPredUsize. (vstd.atomic_ghost.AtomicPredUsize.)
 Poly
)
(declare-fun %Poly%vstd.atomic_ghost.AtomicPredUsize. (Poly) vstd.atomic_ghost.AtomicPredUsize.)
(declare-fun Poly%vstd.atomic_ghost.AtomicUsize. (vstd.atomic_ghost.AtomicUsize.)
 Poly
)
(declare-fun %Poly%vstd.atomic_ghost.AtomicUsize. (Poly) vstd.atomic_ghost.AtomicUsize.)
(declare-fun Poly%vstd.atomic_ghost.AtomicPredI64. (vstd.atomic_ghost.AtomicPredI64.)
 Poly
)
(declare-fun %Poly%vstd.atomic_ghost.AtomicPredI64. (Poly) vstd.atomic_ghost.AtomicPredI64.)
(declare-fun Poly%vstd.atomic_ghost.AtomicI64. (vstd.atomic_ghost.AtomicI64.) Poly)
(declare-fun %Poly%vstd.atomic_ghost.AtomicI64. (Poly) vstd.atomic_ghost.AtomicI64.)
(declare-fun Poly%vstd.atomic_ghost.AtomicPredI32. (vstd.atomic_ghost.AtomicPredI32.)
 Poly
)
(declare-fun %Poly%vstd.atomic_ghost.AtomicPredI32. (Poly) vstd.atomic_ghost.AtomicPredI32.)
(declare-fun Poly%vstd.atomic_ghost.AtomicI32. (vstd.atomic_ghost.AtomicI32.) Poly)
(declare-fun %Poly%vstd.atomic_ghost.AtomicI32. (Poly) vstd.atomic_ghost.AtomicI32.)
(declare-fun Poly%vstd.atomic_ghost.AtomicPredI16. (vstd.atomic_ghost.AtomicPredI16.)
 Poly
)
(declare-fun %Poly%vstd.atomic_ghost.AtomicPredI16. (Poly) vstd.atomic_ghost.AtomicPredI16.)
(declare-fun Poly%vstd.atomic_ghost.AtomicI16. (vstd.atomic_ghost.AtomicI16.) Poly)
(declare-fun %Poly%vstd.atomic_ghost.AtomicI16. (Poly) vstd.atomic_ghost.AtomicI16.)
(declare-fun Poly%vstd.atomic_ghost.AtomicPredI8. (vstd.atomic_ghost.AtomicPredI8.)
 Poly
)
(declare-fun %Poly%vstd.atomic_ghost.AtomicPredI8. (Poly) vstd.atomic_ghost.AtomicPredI8.)
(declare-fun Poly%vstd.atomic_ghost.AtomicI8. (vstd.atomic_ghost.AtomicI8.) Poly)
(declare-fun %Poly%vstd.atomic_ghost.AtomicI8. (Poly) vstd.atomic_ghost.AtomicI8.)
(declare-fun Poly%vstd.atomic_ghost.AtomicPredIsize. (vstd.atomic_ghost.AtomicPredIsize.)
 Poly
)
(declare-fun %Poly%vstd.atomic_ghost.AtomicPredIsize. (Poly) vstd.atomic_ghost.AtomicPredIsize.)
(declare-fun Poly%vstd.atomic_ghost.AtomicIsize. (vstd.atomic_ghost.AtomicIsize.)
 Poly
)
(declare-fun %Poly%vstd.atomic_ghost.AtomicIsize. (Poly) vstd.atomic_ghost.AtomicIsize.)
(declare-fun Poly%vstd.atomic_ghost.AtomicPredBool. (vstd.atomic_ghost.AtomicPredBool.)
 Poly
)
(declare-fun %Poly%vstd.atomic_ghost.AtomicPredBool. (Poly) vstd.atomic_ghost.AtomicPredBool.)
(declare-fun Poly%vstd.atomic_ghost.AtomicBool. (vstd.atomic_ghost.AtomicBool.) Poly)
(declare-fun %Poly%vstd.atomic_ghost.AtomicBool. (Poly) vstd.atomic_ghost.AtomicBool.)
(declare-fun Poly%vstd.atomic_ghost.AtomicPredPtr. (vstd.atomic_ghost.AtomicPredPtr.)
 Poly
)
(declare-fun %Poly%vstd.atomic_ghost.AtomicPredPtr. (Poly) vstd.atomic_ghost.AtomicPredPtr.)
(declare-fun Poly%vstd.atomic_ghost.AtomicPtr. (vstd.atomic_ghost.AtomicPtr.) Poly)
(declare-fun %Poly%vstd.atomic_ghost.AtomicPtr. (Poly) vstd.atomic_ghost.AtomicPtr.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%2. (tuple%2.) Poly)
(declare-fun %Poly%tuple%2. (Poly) tuple%2.)
(assert
 (forall ((x vstd.atomic.PAtomicBool.)) (!
   (= x (%Poly%vstd.atomic.PAtomicBool. (Poly%vstd.atomic.PAtomicBool. x)))
   :pattern ((Poly%vstd.atomic.PAtomicBool. x))
   :qid internal_crate__vstd__atomic__PAtomicBool_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicBool_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PAtomicBool.)
    (= x (Poly%vstd.atomic.PAtomicBool. (%Poly%vstd.atomic.PAtomicBool. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PAtomicBool.))
   :qid internal_crate__vstd__atomic__PAtomicBool_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicBool_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PAtomicBool.)) (!
   (has_type (Poly%vstd.atomic.PAtomicBool. x) TYPE%vstd.atomic.PAtomicBool.)
   :pattern ((has_type (Poly%vstd.atomic.PAtomicBool. x) TYPE%vstd.atomic.PAtomicBool.))
   :qid internal_crate__vstd__atomic__PAtomicBool_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicBool_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic.PAtomicI16.)) (!
   (= x (%Poly%vstd.atomic.PAtomicI16. (Poly%vstd.atomic.PAtomicI16. x)))
   :pattern ((Poly%vstd.atomic.PAtomicI16. x))
   :qid internal_crate__vstd__atomic__PAtomicI16_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicI16_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PAtomicI16.)
    (= x (Poly%vstd.atomic.PAtomicI16. (%Poly%vstd.atomic.PAtomicI16. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PAtomicI16.))
   :qid internal_crate__vstd__atomic__PAtomicI16_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicI16_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PAtomicI16.)) (!
   (has_type (Poly%vstd.atomic.PAtomicI16. x) TYPE%vstd.atomic.PAtomicI16.)
   :pattern ((has_type (Poly%vstd.atomic.PAtomicI16. x) TYPE%vstd.atomic.PAtomicI16.))
   :qid internal_crate__vstd__atomic__PAtomicI16_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicI16_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic.PAtomicI32.)) (!
   (= x (%Poly%vstd.atomic.PAtomicI32. (Poly%vstd.atomic.PAtomicI32. x)))
   :pattern ((Poly%vstd.atomic.PAtomicI32. x))
   :qid internal_crate__vstd__atomic__PAtomicI32_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicI32_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PAtomicI32.)
    (= x (Poly%vstd.atomic.PAtomicI32. (%Poly%vstd.atomic.PAtomicI32. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PAtomicI32.))
   :qid internal_crate__vstd__atomic__PAtomicI32_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicI32_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PAtomicI32.)) (!
   (has_type (Poly%vstd.atomic.PAtomicI32. x) TYPE%vstd.atomic.PAtomicI32.)
   :pattern ((has_type (Poly%vstd.atomic.PAtomicI32. x) TYPE%vstd.atomic.PAtomicI32.))
   :qid internal_crate__vstd__atomic__PAtomicI32_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicI32_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic.PAtomicI64.)) (!
   (= x (%Poly%vstd.atomic.PAtomicI64. (Poly%vstd.atomic.PAtomicI64. x)))
   :pattern ((Poly%vstd.atomic.PAtomicI64. x))
   :qid internal_crate__vstd__atomic__PAtomicI64_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicI64_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PAtomicI64.)
    (= x (Poly%vstd.atomic.PAtomicI64. (%Poly%vstd.atomic.PAtomicI64. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PAtomicI64.))
   :qid internal_crate__vstd__atomic__PAtomicI64_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicI64_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PAtomicI64.)) (!
   (has_type (Poly%vstd.atomic.PAtomicI64. x) TYPE%vstd.atomic.PAtomicI64.)
   :pattern ((has_type (Poly%vstd.atomic.PAtomicI64. x) TYPE%vstd.atomic.PAtomicI64.))
   :qid internal_crate__vstd__atomic__PAtomicI64_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicI64_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic.PAtomicI8.)) (!
   (= x (%Poly%vstd.atomic.PAtomicI8. (Poly%vstd.atomic.PAtomicI8. x)))
   :pattern ((Poly%vstd.atomic.PAtomicI8. x))
   :qid internal_crate__vstd__atomic__PAtomicI8_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicI8_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PAtomicI8.)
    (= x (Poly%vstd.atomic.PAtomicI8. (%Poly%vstd.atomic.PAtomicI8. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PAtomicI8.))
   :qid internal_crate__vstd__atomic__PAtomicI8_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicI8_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PAtomicI8.)) (!
   (has_type (Poly%vstd.atomic.PAtomicI8. x) TYPE%vstd.atomic.PAtomicI8.)
   :pattern ((has_type (Poly%vstd.atomic.PAtomicI8. x) TYPE%vstd.atomic.PAtomicI8.))
   :qid internal_crate__vstd__atomic__PAtomicI8_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicI8_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic.PAtomicIsize.)) (!
   (= x (%Poly%vstd.atomic.PAtomicIsize. (Poly%vstd.atomic.PAtomicIsize. x)))
   :pattern ((Poly%vstd.atomic.PAtomicIsize. x))
   :qid internal_crate__vstd__atomic__PAtomicIsize_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicIsize_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PAtomicIsize.)
    (= x (Poly%vstd.atomic.PAtomicIsize. (%Poly%vstd.atomic.PAtomicIsize. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PAtomicIsize.))
   :qid internal_crate__vstd__atomic__PAtomicIsize_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicIsize_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PAtomicIsize.)) (!
   (has_type (Poly%vstd.atomic.PAtomicIsize. x) TYPE%vstd.atomic.PAtomicIsize.)
   :pattern ((has_type (Poly%vstd.atomic.PAtomicIsize. x) TYPE%vstd.atomic.PAtomicIsize.))
   :qid internal_crate__vstd__atomic__PAtomicIsize_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicIsize_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic.PAtomicU16.)) (!
   (= x (%Poly%vstd.atomic.PAtomicU16. (Poly%vstd.atomic.PAtomicU16. x)))
   :pattern ((Poly%vstd.atomic.PAtomicU16. x))
   :qid internal_crate__vstd__atomic__PAtomicU16_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicU16_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PAtomicU16.)
    (= x (Poly%vstd.atomic.PAtomicU16. (%Poly%vstd.atomic.PAtomicU16. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PAtomicU16.))
   :qid internal_crate__vstd__atomic__PAtomicU16_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicU16_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PAtomicU16.)) (!
   (has_type (Poly%vstd.atomic.PAtomicU16. x) TYPE%vstd.atomic.PAtomicU16.)
   :pattern ((has_type (Poly%vstd.atomic.PAtomicU16. x) TYPE%vstd.atomic.PAtomicU16.))
   :qid internal_crate__vstd__atomic__PAtomicU16_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicU16_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic.PAtomicU32.)) (!
   (= x (%Poly%vstd.atomic.PAtomicU32. (Poly%vstd.atomic.PAtomicU32. x)))
   :pattern ((Poly%vstd.atomic.PAtomicU32. x))
   :qid internal_crate__vstd__atomic__PAtomicU32_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicU32_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PAtomicU32.)
    (= x (Poly%vstd.atomic.PAtomicU32. (%Poly%vstd.atomic.PAtomicU32. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PAtomicU32.))
   :qid internal_crate__vstd__atomic__PAtomicU32_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicU32_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PAtomicU32.)) (!
   (has_type (Poly%vstd.atomic.PAtomicU32. x) TYPE%vstd.atomic.PAtomicU32.)
   :pattern ((has_type (Poly%vstd.atomic.PAtomicU32. x) TYPE%vstd.atomic.PAtomicU32.))
   :qid internal_crate__vstd__atomic__PAtomicU32_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicU32_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic.PAtomicU64.)) (!
   (= x (%Poly%vstd.atomic.PAtomicU64. (Poly%vstd.atomic.PAtomicU64. x)))
   :pattern ((Poly%vstd.atomic.PAtomicU64. x))
   :qid internal_crate__vstd__atomic__PAtomicU64_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicU64_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PAtomicU64.)
    (= x (Poly%vstd.atomic.PAtomicU64. (%Poly%vstd.atomic.PAtomicU64. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PAtomicU64.))
   :qid internal_crate__vstd__atomic__PAtomicU64_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicU64_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PAtomicU64.)) (!
   (has_type (Poly%vstd.atomic.PAtomicU64. x) TYPE%vstd.atomic.PAtomicU64.)
   :pattern ((has_type (Poly%vstd.atomic.PAtomicU64. x) TYPE%vstd.atomic.PAtomicU64.))
   :qid internal_crate__vstd__atomic__PAtomicU64_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicU64_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic.PAtomicU8.)) (!
   (= x (%Poly%vstd.atomic.PAtomicU8. (Poly%vstd.atomic.PAtomicU8. x)))
   :pattern ((Poly%vstd.atomic.PAtomicU8. x))
   :qid internal_crate__vstd__atomic__PAtomicU8_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicU8_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PAtomicU8.)
    (= x (Poly%vstd.atomic.PAtomicU8. (%Poly%vstd.atomic.PAtomicU8. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PAtomicU8.))
   :qid internal_crate__vstd__atomic__PAtomicU8_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicU8_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PAtomicU8.)) (!
   (has_type (Poly%vstd.atomic.PAtomicU8. x) TYPE%vstd.atomic.PAtomicU8.)
   :pattern ((has_type (Poly%vstd.atomic.PAtomicU8. x) TYPE%vstd.atomic.PAtomicU8.))
   :qid internal_crate__vstd__atomic__PAtomicU8_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicU8_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic.PAtomicUsize.)) (!
   (= x (%Poly%vstd.atomic.PAtomicUsize. (Poly%vstd.atomic.PAtomicUsize. x)))
   :pattern ((Poly%vstd.atomic.PAtomicUsize. x))
   :qid internal_crate__vstd__atomic__PAtomicUsize_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicUsize_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PAtomicUsize.)
    (= x (Poly%vstd.atomic.PAtomicUsize. (%Poly%vstd.atomic.PAtomicUsize. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PAtomicUsize.))
   :qid internal_crate__vstd__atomic__PAtomicUsize_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicUsize_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PAtomicUsize.)) (!
   (has_type (Poly%vstd.atomic.PAtomicUsize. x) TYPE%vstd.atomic.PAtomicUsize.)
   :pattern ((has_type (Poly%vstd.atomic.PAtomicUsize. x) TYPE%vstd.atomic.PAtomicUsize.))
   :qid internal_crate__vstd__atomic__PAtomicUsize_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PAtomicUsize_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionBool.)) (!
   (= x (%Poly%vstd.atomic.PermissionBool. (Poly%vstd.atomic.PermissionBool. x)))
   :pattern ((Poly%vstd.atomic.PermissionBool. x))
   :qid internal_crate__vstd__atomic__PermissionBool_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionBool_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionBool.)
    (= x (Poly%vstd.atomic.PermissionBool. (%Poly%vstd.atomic.PermissionBool. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PermissionBool.))
   :qid internal_crate__vstd__atomic__PermissionBool_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionBool_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionBool.)) (!
   (has_type (Poly%vstd.atomic.PermissionBool. x) TYPE%vstd.atomic.PermissionBool.)
   :pattern ((has_type (Poly%vstd.atomic.PermissionBool. x) TYPE%vstd.atomic.PermissionBool.))
   :qid internal_crate__vstd__atomic__PermissionBool_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionBool_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionI16.)) (!
   (= x (%Poly%vstd.atomic.PermissionI16. (Poly%vstd.atomic.PermissionI16. x)))
   :pattern ((Poly%vstd.atomic.PermissionI16. x))
   :qid internal_crate__vstd__atomic__PermissionI16_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionI16_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionI16.)
    (= x (Poly%vstd.atomic.PermissionI16. (%Poly%vstd.atomic.PermissionI16. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PermissionI16.))
   :qid internal_crate__vstd__atomic__PermissionI16_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionI16_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionI16.)) (!
   (has_type (Poly%vstd.atomic.PermissionI16. x) TYPE%vstd.atomic.PermissionI16.)
   :pattern ((has_type (Poly%vstd.atomic.PermissionI16. x) TYPE%vstd.atomic.PermissionI16.))
   :qid internal_crate__vstd__atomic__PermissionI16_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionI16_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionI32.)) (!
   (= x (%Poly%vstd.atomic.PermissionI32. (Poly%vstd.atomic.PermissionI32. x)))
   :pattern ((Poly%vstd.atomic.PermissionI32. x))
   :qid internal_crate__vstd__atomic__PermissionI32_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionI32_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionI32.)
    (= x (Poly%vstd.atomic.PermissionI32. (%Poly%vstd.atomic.PermissionI32. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PermissionI32.))
   :qid internal_crate__vstd__atomic__PermissionI32_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionI32_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionI32.)) (!
   (has_type (Poly%vstd.atomic.PermissionI32. x) TYPE%vstd.atomic.PermissionI32.)
   :pattern ((has_type (Poly%vstd.atomic.PermissionI32. x) TYPE%vstd.atomic.PermissionI32.))
   :qid internal_crate__vstd__atomic__PermissionI32_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionI32_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionI64.)) (!
   (= x (%Poly%vstd.atomic.PermissionI64. (Poly%vstd.atomic.PermissionI64. x)))
   :pattern ((Poly%vstd.atomic.PermissionI64. x))
   :qid internal_crate__vstd__atomic__PermissionI64_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionI64_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionI64.)
    (= x (Poly%vstd.atomic.PermissionI64. (%Poly%vstd.atomic.PermissionI64. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PermissionI64.))
   :qid internal_crate__vstd__atomic__PermissionI64_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionI64_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionI64.)) (!
   (has_type (Poly%vstd.atomic.PermissionI64. x) TYPE%vstd.atomic.PermissionI64.)
   :pattern ((has_type (Poly%vstd.atomic.PermissionI64. x) TYPE%vstd.atomic.PermissionI64.))
   :qid internal_crate__vstd__atomic__PermissionI64_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionI64_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionI8.)) (!
   (= x (%Poly%vstd.atomic.PermissionI8. (Poly%vstd.atomic.PermissionI8. x)))
   :pattern ((Poly%vstd.atomic.PermissionI8. x))
   :qid internal_crate__vstd__atomic__PermissionI8_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionI8_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionI8.)
    (= x (Poly%vstd.atomic.PermissionI8. (%Poly%vstd.atomic.PermissionI8. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PermissionI8.))
   :qid internal_crate__vstd__atomic__PermissionI8_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionI8_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionI8.)) (!
   (has_type (Poly%vstd.atomic.PermissionI8. x) TYPE%vstd.atomic.PermissionI8.)
   :pattern ((has_type (Poly%vstd.atomic.PermissionI8. x) TYPE%vstd.atomic.PermissionI8.))
   :qid internal_crate__vstd__atomic__PermissionI8_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionI8_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionIsize.)) (!
   (= x (%Poly%vstd.atomic.PermissionIsize. (Poly%vstd.atomic.PermissionIsize. x)))
   :pattern ((Poly%vstd.atomic.PermissionIsize. x))
   :qid internal_crate__vstd__atomic__PermissionIsize_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionIsize_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionIsize.)
    (= x (Poly%vstd.atomic.PermissionIsize. (%Poly%vstd.atomic.PermissionIsize. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PermissionIsize.))
   :qid internal_crate__vstd__atomic__PermissionIsize_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionIsize_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionIsize.)) (!
   (has_type (Poly%vstd.atomic.PermissionIsize. x) TYPE%vstd.atomic.PermissionIsize.)
   :pattern ((has_type (Poly%vstd.atomic.PermissionIsize. x) TYPE%vstd.atomic.PermissionIsize.))
   :qid internal_crate__vstd__atomic__PermissionIsize_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionIsize_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionU16.)) (!
   (= x (%Poly%vstd.atomic.PermissionU16. (Poly%vstd.atomic.PermissionU16. x)))
   :pattern ((Poly%vstd.atomic.PermissionU16. x))
   :qid internal_crate__vstd__atomic__PermissionU16_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionU16_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionU16.)
    (= x (Poly%vstd.atomic.PermissionU16. (%Poly%vstd.atomic.PermissionU16. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PermissionU16.))
   :qid internal_crate__vstd__atomic__PermissionU16_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionU16_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionU16.)) (!
   (has_type (Poly%vstd.atomic.PermissionU16. x) TYPE%vstd.atomic.PermissionU16.)
   :pattern ((has_type (Poly%vstd.atomic.PermissionU16. x) TYPE%vstd.atomic.PermissionU16.))
   :qid internal_crate__vstd__atomic__PermissionU16_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionU16_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionU32.)) (!
   (= x (%Poly%vstd.atomic.PermissionU32. (Poly%vstd.atomic.PermissionU32. x)))
   :pattern ((Poly%vstd.atomic.PermissionU32. x))
   :qid internal_crate__vstd__atomic__PermissionU32_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionU32_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionU32.)
    (= x (Poly%vstd.atomic.PermissionU32. (%Poly%vstd.atomic.PermissionU32. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PermissionU32.))
   :qid internal_crate__vstd__atomic__PermissionU32_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionU32_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionU32.)) (!
   (has_type (Poly%vstd.atomic.PermissionU32. x) TYPE%vstd.atomic.PermissionU32.)
   :pattern ((has_type (Poly%vstd.atomic.PermissionU32. x) TYPE%vstd.atomic.PermissionU32.))
   :qid internal_crate__vstd__atomic__PermissionU32_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionU32_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionU64.)) (!
   (= x (%Poly%vstd.atomic.PermissionU64. (Poly%vstd.atomic.PermissionU64. x)))
   :pattern ((Poly%vstd.atomic.PermissionU64. x))
   :qid internal_crate__vstd__atomic__PermissionU64_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionU64_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionU64.)
    (= x (Poly%vstd.atomic.PermissionU64. (%Poly%vstd.atomic.PermissionU64. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PermissionU64.))
   :qid internal_crate__vstd__atomic__PermissionU64_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionU64_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionU64.)) (!
   (has_type (Poly%vstd.atomic.PermissionU64. x) TYPE%vstd.atomic.PermissionU64.)
   :pattern ((has_type (Poly%vstd.atomic.PermissionU64. x) TYPE%vstd.atomic.PermissionU64.))
   :qid internal_crate__vstd__atomic__PermissionU64_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionU64_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionU8.)) (!
   (= x (%Poly%vstd.atomic.PermissionU8. (Poly%vstd.atomic.PermissionU8. x)))
   :pattern ((Poly%vstd.atomic.PermissionU8. x))
   :qid internal_crate__vstd__atomic__PermissionU8_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionU8_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionU8.)
    (= x (Poly%vstd.atomic.PermissionU8. (%Poly%vstd.atomic.PermissionU8. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PermissionU8.))
   :qid internal_crate__vstd__atomic__PermissionU8_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionU8_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionU8.)) (!
   (has_type (Poly%vstd.atomic.PermissionU8. x) TYPE%vstd.atomic.PermissionU8.)
   :pattern ((has_type (Poly%vstd.atomic.PermissionU8. x) TYPE%vstd.atomic.PermissionU8.))
   :qid internal_crate__vstd__atomic__PermissionU8_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionU8_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionUsize.)) (!
   (= x (%Poly%vstd.atomic.PermissionUsize. (Poly%vstd.atomic.PermissionUsize. x)))
   :pattern ((Poly%vstd.atomic.PermissionUsize. x))
   :qid internal_crate__vstd__atomic__PermissionUsize_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionUsize_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionUsize.)
    (= x (Poly%vstd.atomic.PermissionUsize. (%Poly%vstd.atomic.PermissionUsize. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PermissionUsize.))
   :qid internal_crate__vstd__atomic__PermissionUsize_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionUsize_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionUsize.)) (!
   (has_type (Poly%vstd.atomic.PermissionUsize. x) TYPE%vstd.atomic.PermissionUsize.)
   :pattern ((has_type (Poly%vstd.atomic.PermissionUsize. x) TYPE%vstd.atomic.PermissionUsize.))
   :qid internal_crate__vstd__atomic__PermissionUsize_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionUsize_has_type_always_definition
)))
(assert
 (forall ((x vstd.invariant.OpenInvariantCredit.)) (!
   (= x (%Poly%vstd.invariant.OpenInvariantCredit. (Poly%vstd.invariant.OpenInvariantCredit.
      x
   )))
   :pattern ((Poly%vstd.invariant.OpenInvariantCredit. x))
   :qid internal_crate__vstd__invariant__OpenInvariantCredit_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__invariant__OpenInvariantCredit_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.invariant.OpenInvariantCredit.)
    (= x (Poly%vstd.invariant.OpenInvariantCredit. (%Poly%vstd.invariant.OpenInvariantCredit.
       x
   ))))
   :pattern ((has_type x TYPE%vstd.invariant.OpenInvariantCredit.))
   :qid internal_crate__vstd__invariant__OpenInvariantCredit_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__invariant__OpenInvariantCredit_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.invariant.OpenInvariantCredit.)) (!
   (has_type (Poly%vstd.invariant.OpenInvariantCredit. x) TYPE%vstd.invariant.OpenInvariantCredit.)
   :pattern ((has_type (Poly%vstd.invariant.OpenInvariantCredit. x) TYPE%vstd.invariant.OpenInvariantCredit.))
   :qid internal_crate__vstd__invariant__OpenInvariantCredit_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__invariant__OpenInvariantCredit_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataBool.)) (!
   (= x (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. x)))
   :pattern ((Poly%vstd.atomic.PermissionDataBool. x))
   :qid internal_crate__vstd__atomic__PermissionDataBool_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataBool_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionDataBool.)
    (= x (Poly%vstd.atomic.PermissionDataBool. (%Poly%vstd.atomic.PermissionDataBool. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PermissionDataBool.))
   :qid internal_crate__vstd__atomic__PermissionDataBool_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataBool_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataBool.)) (!
   (= (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic x) (vstd.atomic.PermissionDataBool./PermissionDataBool/?patomic
     x
   ))
   :pattern ((vstd.atomic.PermissionDataBool./PermissionDataBool/patomic x))
   :qid internal_vstd.atomic.PermissionDataBool./PermissionDataBool/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataBool./PermissionDataBool/patomic_accessor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataBool.)) (!
   (= (vstd.atomic.PermissionDataBool./PermissionDataBool/value x) (vstd.atomic.PermissionDataBool./PermissionDataBool/?value
     x
   ))
   :pattern ((vstd.atomic.PermissionDataBool./PermissionDataBool/value x))
   :qid internal_vstd.atomic.PermissionDataBool./PermissionDataBool/value_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataBool./PermissionDataBool/value_accessor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataBool.)) (!
   (has_type (Poly%vstd.atomic.PermissionDataBool. x) TYPE%vstd.atomic.PermissionDataBool.)
   :pattern ((has_type (Poly%vstd.atomic.PermissionDataBool. x) TYPE%vstd.atomic.PermissionDataBool.))
   :qid internal_crate__vstd__atomic__PermissionDataBool_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataBool_has_type_always_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataU8.)) (!
   (= x (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. x)))
   :pattern ((Poly%vstd.atomic.PermissionDataU8. x))
   :qid internal_crate__vstd__atomic__PermissionDataU8_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataU8_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionDataU8.)
    (= x (Poly%vstd.atomic.PermissionDataU8. (%Poly%vstd.atomic.PermissionDataU8. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PermissionDataU8.))
   :qid internal_crate__vstd__atomic__PermissionDataU8_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataU8_unbox_axiom_definition
)))
(assert
 (forall ((_patomic! Int) (_value! Int)) (!
   (=>
    (uInv 8 _value!)
    (has_type (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.PermissionDataU8./PermissionDataU8
       _patomic! _value!
      )
     ) TYPE%vstd.atomic.PermissionDataU8.
   ))
   :pattern ((has_type (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.PermissionDataU8./PermissionDataU8
       _patomic! _value!
      )
     ) TYPE%vstd.atomic.PermissionDataU8.
   ))
   :qid internal_vstd.atomic.PermissionDataU8./PermissionDataU8_constructor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataU8./PermissionDataU8_constructor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataU8.)) (!
   (= (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic x) (vstd.atomic.PermissionDataU8./PermissionDataU8/?patomic
     x
   ))
   :pattern ((vstd.atomic.PermissionDataU8./PermissionDataU8/patomic x))
   :qid internal_vstd.atomic.PermissionDataU8./PermissionDataU8/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataU8./PermissionDataU8/patomic_accessor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataU8.)) (!
   (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value x) (vstd.atomic.PermissionDataU8./PermissionDataU8/?value
     x
   ))
   :pattern ((vstd.atomic.PermissionDataU8./PermissionDataU8/value x))
   :qid internal_vstd.atomic.PermissionDataU8./PermissionDataU8/value_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataU8./PermissionDataU8/value_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionDataU8.)
    (uInv 8 (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
       x
   ))))
   :pattern ((vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
      x
     )
    ) (has_type x TYPE%vstd.atomic.PermissionDataU8.)
   )
   :qid internal_vstd.atomic.PermissionDataU8./PermissionDataU8/value_invariant_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataU8./PermissionDataU8/value_invariant_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataU16.)) (!
   (= x (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. x)))
   :pattern ((Poly%vstd.atomic.PermissionDataU16. x))
   :qid internal_crate__vstd__atomic__PermissionDataU16_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataU16_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionDataU16.)
    (= x (Poly%vstd.atomic.PermissionDataU16. (%Poly%vstd.atomic.PermissionDataU16. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PermissionDataU16.))
   :qid internal_crate__vstd__atomic__PermissionDataU16_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataU16_unbox_axiom_definition
)))
(assert
 (forall ((_patomic! Int) (_value! Int)) (!
   (=>
    (uInv 16 _value!)
    (has_type (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.PermissionDataU16./PermissionDataU16
       _patomic! _value!
      )
     ) TYPE%vstd.atomic.PermissionDataU16.
   ))
   :pattern ((has_type (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.PermissionDataU16./PermissionDataU16
       _patomic! _value!
      )
     ) TYPE%vstd.atomic.PermissionDataU16.
   ))
   :qid internal_vstd.atomic.PermissionDataU16./PermissionDataU16_constructor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataU16./PermissionDataU16_constructor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataU16.)) (!
   (= (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic x) (vstd.atomic.PermissionDataU16./PermissionDataU16/?patomic
     x
   ))
   :pattern ((vstd.atomic.PermissionDataU16./PermissionDataU16/patomic x))
   :qid internal_vstd.atomic.PermissionDataU16./PermissionDataU16/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataU16./PermissionDataU16/patomic_accessor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataU16.)) (!
   (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value x) (vstd.atomic.PermissionDataU16./PermissionDataU16/?value
     x
   ))
   :pattern ((vstd.atomic.PermissionDataU16./PermissionDataU16/value x))
   :qid internal_vstd.atomic.PermissionDataU16./PermissionDataU16/value_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataU16./PermissionDataU16/value_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionDataU16.)
    (uInv 16 (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
       x
   ))))
   :pattern ((vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
      x
     )
    ) (has_type x TYPE%vstd.atomic.PermissionDataU16.)
   )
   :qid internal_vstd.atomic.PermissionDataU16./PermissionDataU16/value_invariant_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataU16./PermissionDataU16/value_invariant_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataU32.)) (!
   (= x (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. x)))
   :pattern ((Poly%vstd.atomic.PermissionDataU32. x))
   :qid internal_crate__vstd__atomic__PermissionDataU32_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataU32_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionDataU32.)
    (= x (Poly%vstd.atomic.PermissionDataU32. (%Poly%vstd.atomic.PermissionDataU32. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PermissionDataU32.))
   :qid internal_crate__vstd__atomic__PermissionDataU32_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataU32_unbox_axiom_definition
)))
(assert
 (forall ((_patomic! Int) (_value! Int)) (!
   (=>
    (uInv 32 _value!)
    (has_type (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.PermissionDataU32./PermissionDataU32
       _patomic! _value!
      )
     ) TYPE%vstd.atomic.PermissionDataU32.
   ))
   :pattern ((has_type (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.PermissionDataU32./PermissionDataU32
       _patomic! _value!
      )
     ) TYPE%vstd.atomic.PermissionDataU32.
   ))
   :qid internal_vstd.atomic.PermissionDataU32./PermissionDataU32_constructor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataU32./PermissionDataU32_constructor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataU32.)) (!
   (= (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic x) (vstd.atomic.PermissionDataU32./PermissionDataU32/?patomic
     x
   ))
   :pattern ((vstd.atomic.PermissionDataU32./PermissionDataU32/patomic x))
   :qid internal_vstd.atomic.PermissionDataU32./PermissionDataU32/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataU32./PermissionDataU32/patomic_accessor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataU32.)) (!
   (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value x) (vstd.atomic.PermissionDataU32./PermissionDataU32/?value
     x
   ))
   :pattern ((vstd.atomic.PermissionDataU32./PermissionDataU32/value x))
   :qid internal_vstd.atomic.PermissionDataU32./PermissionDataU32/value_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataU32./PermissionDataU32/value_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionDataU32.)
    (uInv 32 (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
       x
   ))))
   :pattern ((vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
      x
     )
    ) (has_type x TYPE%vstd.atomic.PermissionDataU32.)
   )
   :qid internal_vstd.atomic.PermissionDataU32./PermissionDataU32/value_invariant_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataU32./PermissionDataU32/value_invariant_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataU64.)) (!
   (= x (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. x)))
   :pattern ((Poly%vstd.atomic.PermissionDataU64. x))
   :qid internal_crate__vstd__atomic__PermissionDataU64_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataU64_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionDataU64.)
    (= x (Poly%vstd.atomic.PermissionDataU64. (%Poly%vstd.atomic.PermissionDataU64. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PermissionDataU64.))
   :qid internal_crate__vstd__atomic__PermissionDataU64_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataU64_unbox_axiom_definition
)))
(assert
 (forall ((_patomic! Int) (_value! Int)) (!
   (=>
    (uInv 64 _value!)
    (has_type (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.PermissionDataU64./PermissionDataU64
       _patomic! _value!
      )
     ) TYPE%vstd.atomic.PermissionDataU64.
   ))
   :pattern ((has_type (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.PermissionDataU64./PermissionDataU64
       _patomic! _value!
      )
     ) TYPE%vstd.atomic.PermissionDataU64.
   ))
   :qid internal_vstd.atomic.PermissionDataU64./PermissionDataU64_constructor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataU64./PermissionDataU64_constructor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataU64.)) (!
   (= (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic x) (vstd.atomic.PermissionDataU64./PermissionDataU64/?patomic
     x
   ))
   :pattern ((vstd.atomic.PermissionDataU64./PermissionDataU64/patomic x))
   :qid internal_vstd.atomic.PermissionDataU64./PermissionDataU64/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataU64./PermissionDataU64/patomic_accessor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataU64.)) (!
   (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value x) (vstd.atomic.PermissionDataU64./PermissionDataU64/?value
     x
   ))
   :pattern ((vstd.atomic.PermissionDataU64./PermissionDataU64/value x))
   :qid internal_vstd.atomic.PermissionDataU64./PermissionDataU64/value_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataU64./PermissionDataU64/value_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionDataU64.)
    (uInv 64 (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
       x
   ))))
   :pattern ((vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
      x
     )
    ) (has_type x TYPE%vstd.atomic.PermissionDataU64.)
   )
   :qid internal_vstd.atomic.PermissionDataU64./PermissionDataU64/value_invariant_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataU64./PermissionDataU64/value_invariant_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataUsize.)) (!
   (= x (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize.
      x
   )))
   :pattern ((Poly%vstd.atomic.PermissionDataUsize. x))
   :qid internal_crate__vstd__atomic__PermissionDataUsize_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataUsize_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionDataUsize.)
    (= x (Poly%vstd.atomic.PermissionDataUsize. (%Poly%vstd.atomic.PermissionDataUsize.
       x
   ))))
   :pattern ((has_type x TYPE%vstd.atomic.PermissionDataUsize.))
   :qid internal_crate__vstd__atomic__PermissionDataUsize_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataUsize_unbox_axiom_definition
)))
(assert
 (forall ((_patomic! Int) (_value! Int)) (!
   (=>
    (uInv SZ _value!)
    (has_type (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.PermissionDataUsize./PermissionDataUsize
       _patomic! _value!
      )
     ) TYPE%vstd.atomic.PermissionDataUsize.
   ))
   :pattern ((has_type (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.PermissionDataUsize./PermissionDataUsize
       _patomic! _value!
      )
     ) TYPE%vstd.atomic.PermissionDataUsize.
   ))
   :qid internal_vstd.atomic.PermissionDataUsize./PermissionDataUsize_constructor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataUsize./PermissionDataUsize_constructor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataUsize.)) (!
   (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic x) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/?patomic
     x
   ))
   :pattern ((vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic x))
   :qid internal_vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic_accessor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataUsize.)) (!
   (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value x) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/?value
     x
   ))
   :pattern ((vstd.atomic.PermissionDataUsize./PermissionDataUsize/value x))
   :qid internal_vstd.atomic.PermissionDataUsize./PermissionDataUsize/value_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataUsize./PermissionDataUsize/value_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionDataUsize.)
    (uInv SZ (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
       x
   ))))
   :pattern ((vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
      x
     )
    ) (has_type x TYPE%vstd.atomic.PermissionDataUsize.)
   )
   :qid internal_vstd.atomic.PermissionDataUsize./PermissionDataUsize/value_invariant_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataUsize./PermissionDataUsize/value_invariant_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataI8.)) (!
   (= x (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. x)))
   :pattern ((Poly%vstd.atomic.PermissionDataI8. x))
   :qid internal_crate__vstd__atomic__PermissionDataI8_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataI8_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionDataI8.)
    (= x (Poly%vstd.atomic.PermissionDataI8. (%Poly%vstd.atomic.PermissionDataI8. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PermissionDataI8.))
   :qid internal_crate__vstd__atomic__PermissionDataI8_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataI8_unbox_axiom_definition
)))
(assert
 (forall ((_patomic! Int) (_value! Int)) (!
   (=>
    (iInv 8 _value!)
    (has_type (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.PermissionDataI8./PermissionDataI8
       _patomic! _value!
      )
     ) TYPE%vstd.atomic.PermissionDataI8.
   ))
   :pattern ((has_type (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.PermissionDataI8./PermissionDataI8
       _patomic! _value!
      )
     ) TYPE%vstd.atomic.PermissionDataI8.
   ))
   :qid internal_vstd.atomic.PermissionDataI8./PermissionDataI8_constructor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataI8./PermissionDataI8_constructor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataI8.)) (!
   (= (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic x) (vstd.atomic.PermissionDataI8./PermissionDataI8/?patomic
     x
   ))
   :pattern ((vstd.atomic.PermissionDataI8./PermissionDataI8/patomic x))
   :qid internal_vstd.atomic.PermissionDataI8./PermissionDataI8/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataI8./PermissionDataI8/patomic_accessor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataI8.)) (!
   (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value x) (vstd.atomic.PermissionDataI8./PermissionDataI8/?value
     x
   ))
   :pattern ((vstd.atomic.PermissionDataI8./PermissionDataI8/value x))
   :qid internal_vstd.atomic.PermissionDataI8./PermissionDataI8/value_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataI8./PermissionDataI8/value_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionDataI8.)
    (iInv 8 (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
       x
   ))))
   :pattern ((vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
      x
     )
    ) (has_type x TYPE%vstd.atomic.PermissionDataI8.)
   )
   :qid internal_vstd.atomic.PermissionDataI8./PermissionDataI8/value_invariant_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataI8./PermissionDataI8/value_invariant_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataI16.)) (!
   (= x (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. x)))
   :pattern ((Poly%vstd.atomic.PermissionDataI16. x))
   :qid internal_crate__vstd__atomic__PermissionDataI16_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataI16_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionDataI16.)
    (= x (Poly%vstd.atomic.PermissionDataI16. (%Poly%vstd.atomic.PermissionDataI16. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PermissionDataI16.))
   :qid internal_crate__vstd__atomic__PermissionDataI16_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataI16_unbox_axiom_definition
)))
(assert
 (forall ((_patomic! Int) (_value! Int)) (!
   (=>
    (iInv 16 _value!)
    (has_type (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.PermissionDataI16./PermissionDataI16
       _patomic! _value!
      )
     ) TYPE%vstd.atomic.PermissionDataI16.
   ))
   :pattern ((has_type (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.PermissionDataI16./PermissionDataI16
       _patomic! _value!
      )
     ) TYPE%vstd.atomic.PermissionDataI16.
   ))
   :qid internal_vstd.atomic.PermissionDataI16./PermissionDataI16_constructor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataI16./PermissionDataI16_constructor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataI16.)) (!
   (= (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic x) (vstd.atomic.PermissionDataI16./PermissionDataI16/?patomic
     x
   ))
   :pattern ((vstd.atomic.PermissionDataI16./PermissionDataI16/patomic x))
   :qid internal_vstd.atomic.PermissionDataI16./PermissionDataI16/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataI16./PermissionDataI16/patomic_accessor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataI16.)) (!
   (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value x) (vstd.atomic.PermissionDataI16./PermissionDataI16/?value
     x
   ))
   :pattern ((vstd.atomic.PermissionDataI16./PermissionDataI16/value x))
   :qid internal_vstd.atomic.PermissionDataI16./PermissionDataI16/value_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataI16./PermissionDataI16/value_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionDataI16.)
    (iInv 16 (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
       x
   ))))
   :pattern ((vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
      x
     )
    ) (has_type x TYPE%vstd.atomic.PermissionDataI16.)
   )
   :qid internal_vstd.atomic.PermissionDataI16./PermissionDataI16/value_invariant_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataI16./PermissionDataI16/value_invariant_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataI32.)) (!
   (= x (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. x)))
   :pattern ((Poly%vstd.atomic.PermissionDataI32. x))
   :qid internal_crate__vstd__atomic__PermissionDataI32_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataI32_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionDataI32.)
    (= x (Poly%vstd.atomic.PermissionDataI32. (%Poly%vstd.atomic.PermissionDataI32. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PermissionDataI32.))
   :qid internal_crate__vstd__atomic__PermissionDataI32_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataI32_unbox_axiom_definition
)))
(assert
 (forall ((_patomic! Int) (_value! Int)) (!
   (=>
    (iInv 32 _value!)
    (has_type (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.PermissionDataI32./PermissionDataI32
       _patomic! _value!
      )
     ) TYPE%vstd.atomic.PermissionDataI32.
   ))
   :pattern ((has_type (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.PermissionDataI32./PermissionDataI32
       _patomic! _value!
      )
     ) TYPE%vstd.atomic.PermissionDataI32.
   ))
   :qid internal_vstd.atomic.PermissionDataI32./PermissionDataI32_constructor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataI32./PermissionDataI32_constructor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataI32.)) (!
   (= (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic x) (vstd.atomic.PermissionDataI32./PermissionDataI32/?patomic
     x
   ))
   :pattern ((vstd.atomic.PermissionDataI32./PermissionDataI32/patomic x))
   :qid internal_vstd.atomic.PermissionDataI32./PermissionDataI32/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataI32./PermissionDataI32/patomic_accessor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataI32.)) (!
   (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value x) (vstd.atomic.PermissionDataI32./PermissionDataI32/?value
     x
   ))
   :pattern ((vstd.atomic.PermissionDataI32./PermissionDataI32/value x))
   :qid internal_vstd.atomic.PermissionDataI32./PermissionDataI32/value_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataI32./PermissionDataI32/value_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionDataI32.)
    (iInv 32 (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
       x
   ))))
   :pattern ((vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
      x
     )
    ) (has_type x TYPE%vstd.atomic.PermissionDataI32.)
   )
   :qid internal_vstd.atomic.PermissionDataI32./PermissionDataI32/value_invariant_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataI32./PermissionDataI32/value_invariant_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataI64.)) (!
   (= x (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. x)))
   :pattern ((Poly%vstd.atomic.PermissionDataI64. x))
   :qid internal_crate__vstd__atomic__PermissionDataI64_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataI64_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionDataI64.)
    (= x (Poly%vstd.atomic.PermissionDataI64. (%Poly%vstd.atomic.PermissionDataI64. x)))
   )
   :pattern ((has_type x TYPE%vstd.atomic.PermissionDataI64.))
   :qid internal_crate__vstd__atomic__PermissionDataI64_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataI64_unbox_axiom_definition
)))
(assert
 (forall ((_patomic! Int) (_value! Int)) (!
   (=>
    (iInv 64 _value!)
    (has_type (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.PermissionDataI64./PermissionDataI64
       _patomic! _value!
      )
     ) TYPE%vstd.atomic.PermissionDataI64.
   ))
   :pattern ((has_type (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.PermissionDataI64./PermissionDataI64
       _patomic! _value!
      )
     ) TYPE%vstd.atomic.PermissionDataI64.
   ))
   :qid internal_vstd.atomic.PermissionDataI64./PermissionDataI64_constructor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataI64./PermissionDataI64_constructor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataI64.)) (!
   (= (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic x) (vstd.atomic.PermissionDataI64./PermissionDataI64/?patomic
     x
   ))
   :pattern ((vstd.atomic.PermissionDataI64./PermissionDataI64/patomic x))
   :qid internal_vstd.atomic.PermissionDataI64./PermissionDataI64/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataI64./PermissionDataI64/patomic_accessor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataI64.)) (!
   (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value x) (vstd.atomic.PermissionDataI64./PermissionDataI64/?value
     x
   ))
   :pattern ((vstd.atomic.PermissionDataI64./PermissionDataI64/value x))
   :qid internal_vstd.atomic.PermissionDataI64./PermissionDataI64/value_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataI64./PermissionDataI64/value_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionDataI64.)
    (iInv 64 (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
       x
   ))))
   :pattern ((vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
      x
     )
    ) (has_type x TYPE%vstd.atomic.PermissionDataI64.)
   )
   :qid internal_vstd.atomic.PermissionDataI64./PermissionDataI64/value_invariant_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataI64./PermissionDataI64/value_invariant_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataIsize.)) (!
   (= x (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize.
      x
   )))
   :pattern ((Poly%vstd.atomic.PermissionDataIsize. x))
   :qid internal_crate__vstd__atomic__PermissionDataIsize_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataIsize_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionDataIsize.)
    (= x (Poly%vstd.atomic.PermissionDataIsize. (%Poly%vstd.atomic.PermissionDataIsize.
       x
   ))))
   :pattern ((has_type x TYPE%vstd.atomic.PermissionDataIsize.))
   :qid internal_crate__vstd__atomic__PermissionDataIsize_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataIsize_unbox_axiom_definition
)))
(assert
 (forall ((_patomic! Int) (_value! Int)) (!
   (=>
    (iInv SZ _value!)
    (has_type (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.PermissionDataIsize./PermissionDataIsize
       _patomic! _value!
      )
     ) TYPE%vstd.atomic.PermissionDataIsize.
   ))
   :pattern ((has_type (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.PermissionDataIsize./PermissionDataIsize
       _patomic! _value!
      )
     ) TYPE%vstd.atomic.PermissionDataIsize.
   ))
   :qid internal_vstd.atomic.PermissionDataIsize./PermissionDataIsize_constructor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataIsize./PermissionDataIsize_constructor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataIsize.)) (!
   (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic x) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/?patomic
     x
   ))
   :pattern ((vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic x))
   :qid internal_vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic_accessor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataIsize.)) (!
   (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value x) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/?value
     x
   ))
   :pattern ((vstd.atomic.PermissionDataIsize./PermissionDataIsize/value x))
   :qid internal_vstd.atomic.PermissionDataIsize./PermissionDataIsize/value_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataIsize./PermissionDataIsize/value_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.atomic.PermissionDataIsize.)
    (iInv SZ (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
       x
   ))))
   :pattern ((vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
      x
     )
    ) (has_type x TYPE%vstd.atomic.PermissionDataIsize.)
   )
   :qid internal_vstd.atomic.PermissionDataIsize./PermissionDataIsize/value_invariant_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataIsize./PermissionDataIsize/value_invariant_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataPtr.)) (!
   (= x (%Poly%vstd.atomic.PermissionDataPtr. (Poly%vstd.atomic.PermissionDataPtr. x)))
   :pattern ((Poly%vstd.atomic.PermissionDataPtr. x))
   :qid internal_crate__vstd__atomic__PermissionDataPtr_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataPtr_box_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic.PermissionDataPtr. T&. T&))
    (= x (Poly%vstd.atomic.PermissionDataPtr. (%Poly%vstd.atomic.PermissionDataPtr. x)))
   )
   :pattern ((has_type x (TYPE%vstd.atomic.PermissionDataPtr. T&. T&)))
   :qid internal_crate__vstd__atomic__PermissionDataPtr_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic__PermissionDataPtr_unbox_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (_patomic! Int) (_value! Poly)) (!
   (=>
    (has_type _value! (PTR T&. T&))
    (has_type (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.PermissionDataPtr./PermissionDataPtr
       _patomic! _value!
      )
     ) (TYPE%vstd.atomic.PermissionDataPtr. T&. T&)
   ))
   :pattern ((has_type (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.PermissionDataPtr./PermissionDataPtr
       _patomic! _value!
      )
     ) (TYPE%vstd.atomic.PermissionDataPtr. T&. T&)
   ))
   :qid internal_vstd.atomic.PermissionDataPtr./PermissionDataPtr_constructor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataPtr./PermissionDataPtr_constructor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataPtr.)) (!
   (= (vstd.atomic.PermissionDataPtr./PermissionDataPtr/patomic x) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/?patomic
     x
   ))
   :pattern ((vstd.atomic.PermissionDataPtr./PermissionDataPtr/patomic x))
   :qid internal_vstd.atomic.PermissionDataPtr./PermissionDataPtr/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataPtr./PermissionDataPtr/patomic_accessor_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataPtr.)) (!
   (= (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value x) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/?value
     x
   ))
   :pattern ((vstd.atomic.PermissionDataPtr./PermissionDataPtr/value x))
   :qid internal_vstd.atomic.PermissionDataPtr./PermissionDataPtr/value_accessor_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataPtr./PermissionDataPtr/value_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic.PermissionDataPtr. T&. T&))
    (has_type (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
       x
      )
     ) (PTR T&. T&)
   ))
   :pattern ((vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
      x
     )
    ) (has_type x (TYPE%vstd.atomic.PermissionDataPtr. T&. T&))
   )
   :qid internal_vstd.atomic.PermissionDataPtr./PermissionDataPtr/value_invariant_definition
   :skolemid skolem_internal_vstd.atomic.PermissionDataPtr./PermissionDataPtr/value_invariant_definition
)))
(assert
 (forall ((x vstd.atomic.PermissionDataPtr.)) (!
   (=>
    (is-vstd.atomic.PermissionDataPtr./PermissionDataPtr x)
    (height_lt (height (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value x)) (height
      (Poly%vstd.atomic.PermissionDataPtr. x)
   )))
   :pattern ((height (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value x)))
   :qid prelude_datatype_height_vstd.atomic.PermissionDataPtr./PermissionDataPtr/value
   :skolemid skolem_prelude_datatype_height_vstd.atomic.PermissionDataPtr./PermissionDataPtr/value
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredU64.)) (!
   (= x (%Poly%vstd.atomic_ghost.AtomicPredU64. (Poly%vstd.atomic_ghost.AtomicPredU64.
      x
   )))
   :pattern ((Poly%vstd.atomic_ghost.AtomicPredU64. x))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredU64_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredU64_box_axiom_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPredU64. Pred&. Pred&))
    (= x (Poly%vstd.atomic_ghost.AtomicPredU64. (%Poly%vstd.atomic_ghost.AtomicPredU64.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicPredU64. Pred&. Pred&)))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredU64_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredU64_unbox_axiom_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (_p! Poly)) (!
   (=>
    (has_type _p! Pred&)
    (has_type (Poly%vstd.atomic_ghost.AtomicPredU64. (vstd.atomic_ghost.AtomicPredU64./AtomicPredU64
       _p!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicPredU64. Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicPredU64. (vstd.atomic_ghost.AtomicPredU64./AtomicPredU64
       _p!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicPredU64. Pred&. Pred&)
   ))
   :qid internal_vstd.atomic_ghost.AtomicPredU64./AtomicPredU64_constructor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredU64./AtomicPredU64_constructor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredU64.)) (!
   (= (vstd.atomic_ghost.AtomicPredU64./AtomicPredU64/p x) (vstd.atomic_ghost.AtomicPredU64./AtomicPredU64/?p
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicPredU64./AtomicPredU64/p x))
   :qid internal_vstd.atomic_ghost.AtomicPredU64./AtomicPredU64/p_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredU64./AtomicPredU64/p_accessor_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPredU64. Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicPredU64./AtomicPredU64/p (%Poly%vstd.atomic_ghost.AtomicPredU64.
       x
      )
     ) Pred&
   ))
   :pattern ((vstd.atomic_ghost.AtomicPredU64./AtomicPredU64/p (%Poly%vstd.atomic_ghost.AtomicPredU64.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicPredU64. Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicPredU64./AtomicPredU64/p_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredU64./AtomicPredU64/p_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredU64.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicPredU64./AtomicPredU64 x)
    (height_lt (height (vstd.atomic_ghost.AtomicPredU64./AtomicPredU64/p x)) (height (Poly%vstd.atomic_ghost.AtomicPredU64.
       x
   ))))
   :pattern ((height (vstd.atomic_ghost.AtomicPredU64./AtomicPredU64/p x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicPredU64./AtomicPredU64/p
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicPredU64./AtomicPredU64/p
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicU64.)) (!
   (= x (%Poly%vstd.atomic_ghost.AtomicU64. (Poly%vstd.atomic_ghost.AtomicU64. x)))
   :pattern ((Poly%vstd.atomic_ghost.AtomicU64. x))
   :qid internal_crate__vstd__atomic_ghost__AtomicU64_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicU64_box_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicU64. K&. K& G&. G& Pred&. Pred&))
    (= x (Poly%vstd.atomic_ghost.AtomicU64. (%Poly%vstd.atomic_ghost.AtomicU64. x)))
   )
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicU64. K&. K& G&. G& Pred&. Pred&)))
   :qid internal_crate__vstd__atomic_ghost__AtomicU64_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicU64_unbox_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (_patomic!
    vstd.atomic.PAtomicU64.
   ) (_atomic_inv! Poly)
  ) (!
   (=>
    (has_type _atomic_inv! (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K&
       $ INT
      ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredU64.
       Pred&. Pred&
    )))
    (has_type (Poly%vstd.atomic_ghost.AtomicU64. (vstd.atomic_ghost.AtomicU64./AtomicU64
       _patomic! _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicU64. K&. K& G&. G& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicU64. (vstd.atomic_ghost.AtomicU64./AtomicU64
       _patomic! _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicU64. K&. K& G&. G& Pred&. Pred&)
   ))
   :qid internal_vstd.atomic_ghost.AtomicU64./AtomicU64_constructor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicU64./AtomicU64_constructor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicU64.)) (!
   (= (vstd.atomic_ghost.AtomicU64./AtomicU64/patomic x) (vstd.atomic_ghost.AtomicU64./AtomicU64/?patomic
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicU64./AtomicU64/patomic x))
   :qid internal_vstd.atomic_ghost.AtomicU64./AtomicU64/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicU64./AtomicU64/patomic_accessor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicU64.)) (!
   (= (vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv x) (vstd.atomic_ghost.AtomicU64./AtomicU64/?atomic_inv
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv x))
   :qid internal_vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicU64. K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU64.
       x
      )
     ) (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
       $ TYPE%vstd.atomic.PermissionU64. G&. G&
      ) $ (TYPE%vstd.atomic_ghost.AtomicPredU64. Pred&. Pred&)
   )))
   :pattern ((vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU64.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicU64. K&. K& G&. G& Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicU64.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicU64./AtomicU64 x)
    (height_lt (height (vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv x)) (height (
       Poly%vstd.atomic_ghost.AtomicU64. x
   ))))
   :pattern ((height (vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredU32.)) (!
   (= x (%Poly%vstd.atomic_ghost.AtomicPredU32. (Poly%vstd.atomic_ghost.AtomicPredU32.
      x
   )))
   :pattern ((Poly%vstd.atomic_ghost.AtomicPredU32. x))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredU32_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredU32_box_axiom_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPredU32. Pred&. Pred&))
    (= x (Poly%vstd.atomic_ghost.AtomicPredU32. (%Poly%vstd.atomic_ghost.AtomicPredU32.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicPredU32. Pred&. Pred&)))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredU32_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredU32_unbox_axiom_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (_p! Poly)) (!
   (=>
    (has_type _p! Pred&)
    (has_type (Poly%vstd.atomic_ghost.AtomicPredU32. (vstd.atomic_ghost.AtomicPredU32./AtomicPredU32
       _p!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicPredU32. Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicPredU32. (vstd.atomic_ghost.AtomicPredU32./AtomicPredU32
       _p!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicPredU32. Pred&. Pred&)
   ))
   :qid internal_vstd.atomic_ghost.AtomicPredU32./AtomicPredU32_constructor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredU32./AtomicPredU32_constructor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredU32.)) (!
   (= (vstd.atomic_ghost.AtomicPredU32./AtomicPredU32/p x) (vstd.atomic_ghost.AtomicPredU32./AtomicPredU32/?p
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicPredU32./AtomicPredU32/p x))
   :qid internal_vstd.atomic_ghost.AtomicPredU32./AtomicPredU32/p_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredU32./AtomicPredU32/p_accessor_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPredU32. Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicPredU32./AtomicPredU32/p (%Poly%vstd.atomic_ghost.AtomicPredU32.
       x
      )
     ) Pred&
   ))
   :pattern ((vstd.atomic_ghost.AtomicPredU32./AtomicPredU32/p (%Poly%vstd.atomic_ghost.AtomicPredU32.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicPredU32. Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicPredU32./AtomicPredU32/p_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredU32./AtomicPredU32/p_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredU32.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicPredU32./AtomicPredU32 x)
    (height_lt (height (vstd.atomic_ghost.AtomicPredU32./AtomicPredU32/p x)) (height (Poly%vstd.atomic_ghost.AtomicPredU32.
       x
   ))))
   :pattern ((height (vstd.atomic_ghost.AtomicPredU32./AtomicPredU32/p x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicPredU32./AtomicPredU32/p
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicPredU32./AtomicPredU32/p
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicU32.)) (!
   (= x (%Poly%vstd.atomic_ghost.AtomicU32. (Poly%vstd.atomic_ghost.AtomicU32. x)))
   :pattern ((Poly%vstd.atomic_ghost.AtomicU32. x))
   :qid internal_crate__vstd__atomic_ghost__AtomicU32_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicU32_box_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicU32. K&. K& G&. G& Pred&. Pred&))
    (= x (Poly%vstd.atomic_ghost.AtomicU32. (%Poly%vstd.atomic_ghost.AtomicU32. x)))
   )
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicU32. K&. K& G&. G& Pred&. Pred&)))
   :qid internal_crate__vstd__atomic_ghost__AtomicU32_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicU32_unbox_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (_patomic!
    vstd.atomic.PAtomicU32.
   ) (_atomic_inv! Poly)
  ) (!
   (=>
    (has_type _atomic_inv! (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K&
       $ INT
      ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU32. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredU32.
       Pred&. Pred&
    )))
    (has_type (Poly%vstd.atomic_ghost.AtomicU32. (vstd.atomic_ghost.AtomicU32./AtomicU32
       _patomic! _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicU32. K&. K& G&. G& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicU32. (vstd.atomic_ghost.AtomicU32./AtomicU32
       _patomic! _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicU32. K&. K& G&. G& Pred&. Pred&)
   ))
   :qid internal_vstd.atomic_ghost.AtomicU32./AtomicU32_constructor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicU32./AtomicU32_constructor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicU32.)) (!
   (= (vstd.atomic_ghost.AtomicU32./AtomicU32/patomic x) (vstd.atomic_ghost.AtomicU32./AtomicU32/?patomic
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicU32./AtomicU32/patomic x))
   :qid internal_vstd.atomic_ghost.AtomicU32./AtomicU32/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicU32./AtomicU32/patomic_accessor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicU32.)) (!
   (= (vstd.atomic_ghost.AtomicU32./AtomicU32/atomic_inv x) (vstd.atomic_ghost.AtomicU32./AtomicU32/?atomic_inv
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicU32./AtomicU32/atomic_inv x))
   :qid internal_vstd.atomic_ghost.AtomicU32./AtomicU32/atomic_inv_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicU32./AtomicU32/atomic_inv_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicU32. K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicU32./AtomicU32/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU32.
       x
      )
     ) (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
       $ TYPE%vstd.atomic.PermissionU32. G&. G&
      ) $ (TYPE%vstd.atomic_ghost.AtomicPredU32. Pred&. Pred&)
   )))
   :pattern ((vstd.atomic_ghost.AtomicU32./AtomicU32/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU32.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicU32. K&. K& G&. G& Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicU32./AtomicU32/atomic_inv_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicU32./AtomicU32/atomic_inv_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicU32.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicU32./AtomicU32 x)
    (height_lt (height (vstd.atomic_ghost.AtomicU32./AtomicU32/atomic_inv x)) (height (
       Poly%vstd.atomic_ghost.AtomicU32. x
   ))))
   :pattern ((height (vstd.atomic_ghost.AtomicU32./AtomicU32/atomic_inv x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicU32./AtomicU32/atomic_inv
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicU32./AtomicU32/atomic_inv
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredU16.)) (!
   (= x (%Poly%vstd.atomic_ghost.AtomicPredU16. (Poly%vstd.atomic_ghost.AtomicPredU16.
      x
   )))
   :pattern ((Poly%vstd.atomic_ghost.AtomicPredU16. x))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredU16_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredU16_box_axiom_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPredU16. Pred&. Pred&))
    (= x (Poly%vstd.atomic_ghost.AtomicPredU16. (%Poly%vstd.atomic_ghost.AtomicPredU16.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicPredU16. Pred&. Pred&)))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredU16_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredU16_unbox_axiom_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (_p! Poly)) (!
   (=>
    (has_type _p! Pred&)
    (has_type (Poly%vstd.atomic_ghost.AtomicPredU16. (vstd.atomic_ghost.AtomicPredU16./AtomicPredU16
       _p!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicPredU16. Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicPredU16. (vstd.atomic_ghost.AtomicPredU16./AtomicPredU16
       _p!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicPredU16. Pred&. Pred&)
   ))
   :qid internal_vstd.atomic_ghost.AtomicPredU16./AtomicPredU16_constructor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredU16./AtomicPredU16_constructor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredU16.)) (!
   (= (vstd.atomic_ghost.AtomicPredU16./AtomicPredU16/p x) (vstd.atomic_ghost.AtomicPredU16./AtomicPredU16/?p
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicPredU16./AtomicPredU16/p x))
   :qid internal_vstd.atomic_ghost.AtomicPredU16./AtomicPredU16/p_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredU16./AtomicPredU16/p_accessor_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPredU16. Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicPredU16./AtomicPredU16/p (%Poly%vstd.atomic_ghost.AtomicPredU16.
       x
      )
     ) Pred&
   ))
   :pattern ((vstd.atomic_ghost.AtomicPredU16./AtomicPredU16/p (%Poly%vstd.atomic_ghost.AtomicPredU16.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicPredU16. Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicPredU16./AtomicPredU16/p_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredU16./AtomicPredU16/p_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredU16.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicPredU16./AtomicPredU16 x)
    (height_lt (height (vstd.atomic_ghost.AtomicPredU16./AtomicPredU16/p x)) (height (Poly%vstd.atomic_ghost.AtomicPredU16.
       x
   ))))
   :pattern ((height (vstd.atomic_ghost.AtomicPredU16./AtomicPredU16/p x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicPredU16./AtomicPredU16/p
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicPredU16./AtomicPredU16/p
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicU16.)) (!
   (= x (%Poly%vstd.atomic_ghost.AtomicU16. (Poly%vstd.atomic_ghost.AtomicU16. x)))
   :pattern ((Poly%vstd.atomic_ghost.AtomicU16. x))
   :qid internal_crate__vstd__atomic_ghost__AtomicU16_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicU16_box_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicU16. K&. K& G&. G& Pred&. Pred&))
    (= x (Poly%vstd.atomic_ghost.AtomicU16. (%Poly%vstd.atomic_ghost.AtomicU16. x)))
   )
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicU16. K&. K& G&. G& Pred&. Pred&)))
   :qid internal_crate__vstd__atomic_ghost__AtomicU16_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicU16_unbox_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (_patomic!
    vstd.atomic.PAtomicU16.
   ) (_atomic_inv! Poly)
  ) (!
   (=>
    (has_type _atomic_inv! (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K&
       $ INT
      ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU16. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredU16.
       Pred&. Pred&
    )))
    (has_type (Poly%vstd.atomic_ghost.AtomicU16. (vstd.atomic_ghost.AtomicU16./AtomicU16
       _patomic! _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicU16. K&. K& G&. G& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicU16. (vstd.atomic_ghost.AtomicU16./AtomicU16
       _patomic! _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicU16. K&. K& G&. G& Pred&. Pred&)
   ))
   :qid internal_vstd.atomic_ghost.AtomicU16./AtomicU16_constructor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicU16./AtomicU16_constructor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicU16.)) (!
   (= (vstd.atomic_ghost.AtomicU16./AtomicU16/patomic x) (vstd.atomic_ghost.AtomicU16./AtomicU16/?patomic
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicU16./AtomicU16/patomic x))
   :qid internal_vstd.atomic_ghost.AtomicU16./AtomicU16/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicU16./AtomicU16/patomic_accessor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicU16.)) (!
   (= (vstd.atomic_ghost.AtomicU16./AtomicU16/atomic_inv x) (vstd.atomic_ghost.AtomicU16./AtomicU16/?atomic_inv
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicU16./AtomicU16/atomic_inv x))
   :qid internal_vstd.atomic_ghost.AtomicU16./AtomicU16/atomic_inv_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicU16./AtomicU16/atomic_inv_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicU16. K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicU16./AtomicU16/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU16.
       x
      )
     ) (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
       $ TYPE%vstd.atomic.PermissionU16. G&. G&
      ) $ (TYPE%vstd.atomic_ghost.AtomicPredU16. Pred&. Pred&)
   )))
   :pattern ((vstd.atomic_ghost.AtomicU16./AtomicU16/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU16.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicU16. K&. K& G&. G& Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicU16./AtomicU16/atomic_inv_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicU16./AtomicU16/atomic_inv_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicU16.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicU16./AtomicU16 x)
    (height_lt (height (vstd.atomic_ghost.AtomicU16./AtomicU16/atomic_inv x)) (height (
       Poly%vstd.atomic_ghost.AtomicU16. x
   ))))
   :pattern ((height (vstd.atomic_ghost.AtomicU16./AtomicU16/atomic_inv x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicU16./AtomicU16/atomic_inv
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicU16./AtomicU16/atomic_inv
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredU8.)) (!
   (= x (%Poly%vstd.atomic_ghost.AtomicPredU8. (Poly%vstd.atomic_ghost.AtomicPredU8. x)))
   :pattern ((Poly%vstd.atomic_ghost.AtomicPredU8. x))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredU8_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredU8_box_axiom_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPredU8. Pred&. Pred&))
    (= x (Poly%vstd.atomic_ghost.AtomicPredU8. (%Poly%vstd.atomic_ghost.AtomicPredU8. x)))
   )
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicPredU8. Pred&. Pred&)))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredU8_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredU8_unbox_axiom_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (_p! Poly)) (!
   (=>
    (has_type _p! Pred&)
    (has_type (Poly%vstd.atomic_ghost.AtomicPredU8. (vstd.atomic_ghost.AtomicPredU8./AtomicPredU8
       _p!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicPredU8. Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicPredU8. (vstd.atomic_ghost.AtomicPredU8./AtomicPredU8
       _p!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicPredU8. Pred&. Pred&)
   ))
   :qid internal_vstd.atomic_ghost.AtomicPredU8./AtomicPredU8_constructor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredU8./AtomicPredU8_constructor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredU8.)) (!
   (= (vstd.atomic_ghost.AtomicPredU8./AtomicPredU8/p x) (vstd.atomic_ghost.AtomicPredU8./AtomicPredU8/?p
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicPredU8./AtomicPredU8/p x))
   :qid internal_vstd.atomic_ghost.AtomicPredU8./AtomicPredU8/p_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredU8./AtomicPredU8/p_accessor_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPredU8. Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicPredU8./AtomicPredU8/p (%Poly%vstd.atomic_ghost.AtomicPredU8.
       x
      )
     ) Pred&
   ))
   :pattern ((vstd.atomic_ghost.AtomicPredU8./AtomicPredU8/p (%Poly%vstd.atomic_ghost.AtomicPredU8.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicPredU8. Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicPredU8./AtomicPredU8/p_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredU8./AtomicPredU8/p_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredU8.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicPredU8./AtomicPredU8 x)
    (height_lt (height (vstd.atomic_ghost.AtomicPredU8./AtomicPredU8/p x)) (height (Poly%vstd.atomic_ghost.AtomicPredU8.
       x
   ))))
   :pattern ((height (vstd.atomic_ghost.AtomicPredU8./AtomicPredU8/p x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicPredU8./AtomicPredU8/p
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicPredU8./AtomicPredU8/p
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicU8.)) (!
   (= x (%Poly%vstd.atomic_ghost.AtomicU8. (Poly%vstd.atomic_ghost.AtomicU8. x)))
   :pattern ((Poly%vstd.atomic_ghost.AtomicU8. x))
   :qid internal_crate__vstd__atomic_ghost__AtomicU8_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicU8_box_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicU8. K&. K& G&. G& Pred&. Pred&))
    (= x (Poly%vstd.atomic_ghost.AtomicU8. (%Poly%vstd.atomic_ghost.AtomicU8. x)))
   )
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicU8. K&. K& G&. G& Pred&. Pred&)))
   :qid internal_crate__vstd__atomic_ghost__AtomicU8_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicU8_unbox_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (_patomic!
    vstd.atomic.PAtomicU8.
   ) (_atomic_inv! Poly)
  ) (!
   (=>
    (has_type _atomic_inv! (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K&
       $ INT
      ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU8. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredU8.
       Pred&. Pred&
    )))
    (has_type (Poly%vstd.atomic_ghost.AtomicU8. (vstd.atomic_ghost.AtomicU8./AtomicU8 _patomic!
       _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicU8. K&. K& G&. G& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicU8. (vstd.atomic_ghost.AtomicU8./AtomicU8
       _patomic! _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicU8. K&. K& G&. G& Pred&. Pred&)
   ))
   :qid internal_vstd.atomic_ghost.AtomicU8./AtomicU8_constructor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicU8./AtomicU8_constructor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicU8.)) (!
   (= (vstd.atomic_ghost.AtomicU8./AtomicU8/patomic x) (vstd.atomic_ghost.AtomicU8./AtomicU8/?patomic
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicU8./AtomicU8/patomic x))
   :qid internal_vstd.atomic_ghost.AtomicU8./AtomicU8/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicU8./AtomicU8/patomic_accessor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicU8.)) (!
   (= (vstd.atomic_ghost.AtomicU8./AtomicU8/atomic_inv x) (vstd.atomic_ghost.AtomicU8./AtomicU8/?atomic_inv
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicU8./AtomicU8/atomic_inv x))
   :qid internal_vstd.atomic_ghost.AtomicU8./AtomicU8/atomic_inv_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicU8./AtomicU8/atomic_inv_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicU8. K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicU8./AtomicU8/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU8.
       x
      )
     ) (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
       $ TYPE%vstd.atomic.PermissionU8. G&. G&
      ) $ (TYPE%vstd.atomic_ghost.AtomicPredU8. Pred&. Pred&)
   )))
   :pattern ((vstd.atomic_ghost.AtomicU8./AtomicU8/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU8.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicU8. K&. K& G&. G& Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicU8./AtomicU8/atomic_inv_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicU8./AtomicU8/atomic_inv_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicU8.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicU8./AtomicU8 x)
    (height_lt (height (vstd.atomic_ghost.AtomicU8./AtomicU8/atomic_inv x)) (height (Poly%vstd.atomic_ghost.AtomicU8.
       x
   ))))
   :pattern ((height (vstd.atomic_ghost.AtomicU8./AtomicU8/atomic_inv x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicU8./AtomicU8/atomic_inv
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicU8./AtomicU8/atomic_inv
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredUsize.)) (!
   (= x (%Poly%vstd.atomic_ghost.AtomicPredUsize. (Poly%vstd.atomic_ghost.AtomicPredUsize.
      x
   )))
   :pattern ((Poly%vstd.atomic_ghost.AtomicPredUsize. x))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredUsize_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredUsize_box_axiom_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPredUsize. Pred&. Pred&))
    (= x (Poly%vstd.atomic_ghost.AtomicPredUsize. (%Poly%vstd.atomic_ghost.AtomicPredUsize.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicPredUsize. Pred&. Pred&)))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredUsize_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredUsize_unbox_axiom_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (_p! Poly)) (!
   (=>
    (has_type _p! Pred&)
    (has_type (Poly%vstd.atomic_ghost.AtomicPredUsize. (vstd.atomic_ghost.AtomicPredUsize./AtomicPredUsize
       _p!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicPredUsize. Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicPredUsize. (vstd.atomic_ghost.AtomicPredUsize./AtomicPredUsize
       _p!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicPredUsize. Pred&. Pred&)
   ))
   :qid internal_vstd.atomic_ghost.AtomicPredUsize./AtomicPredUsize_constructor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredUsize./AtomicPredUsize_constructor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredUsize.)) (!
   (= (vstd.atomic_ghost.AtomicPredUsize./AtomicPredUsize/p x) (vstd.atomic_ghost.AtomicPredUsize./AtomicPredUsize/?p
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicPredUsize./AtomicPredUsize/p x))
   :qid internal_vstd.atomic_ghost.AtomicPredUsize./AtomicPredUsize/p_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredUsize./AtomicPredUsize/p_accessor_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPredUsize. Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicPredUsize./AtomicPredUsize/p (%Poly%vstd.atomic_ghost.AtomicPredUsize.
       x
      )
     ) Pred&
   ))
   :pattern ((vstd.atomic_ghost.AtomicPredUsize./AtomicPredUsize/p (%Poly%vstd.atomic_ghost.AtomicPredUsize.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicPredUsize. Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicPredUsize./AtomicPredUsize/p_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredUsize./AtomicPredUsize/p_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredUsize.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicPredUsize./AtomicPredUsize x)
    (height_lt (height (vstd.atomic_ghost.AtomicPredUsize./AtomicPredUsize/p x)) (height
      (Poly%vstd.atomic_ghost.AtomicPredUsize. x)
   )))
   :pattern ((height (vstd.atomic_ghost.AtomicPredUsize./AtomicPredUsize/p x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicPredUsize./AtomicPredUsize/p
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicPredUsize./AtomicPredUsize/p
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicUsize.)) (!
   (= x (%Poly%vstd.atomic_ghost.AtomicUsize. (Poly%vstd.atomic_ghost.AtomicUsize. x)))
   :pattern ((Poly%vstd.atomic_ghost.AtomicUsize. x))
   :qid internal_crate__vstd__atomic_ghost__AtomicUsize_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicUsize_box_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicUsize. K&. K& G&. G& Pred&. Pred&))
    (= x (Poly%vstd.atomic_ghost.AtomicUsize. (%Poly%vstd.atomic_ghost.AtomicUsize. x)))
   )
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicUsize. K&. K& G&. G& Pred&. Pred&)))
   :qid internal_crate__vstd__atomic_ghost__AtomicUsize_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicUsize_unbox_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (_patomic!
    vstd.atomic.PAtomicUsize.
   ) (_atomic_inv! Poly)
  ) (!
   (=>
    (has_type _atomic_inv! (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K&
       $ INT
      ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionUsize. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredUsize.
       Pred&. Pred&
    )))
    (has_type (Poly%vstd.atomic_ghost.AtomicUsize. (vstd.atomic_ghost.AtomicUsize./AtomicUsize
       _patomic! _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicUsize. K&. K& G&. G& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicUsize. (vstd.atomic_ghost.AtomicUsize./AtomicUsize
       _patomic! _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicUsize. K&. K& G&. G& Pred&. Pred&)
   ))
   :qid internal_vstd.atomic_ghost.AtomicUsize./AtomicUsize_constructor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicUsize./AtomicUsize_constructor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicUsize.)) (!
   (= (vstd.atomic_ghost.AtomicUsize./AtomicUsize/patomic x) (vstd.atomic_ghost.AtomicUsize./AtomicUsize/?patomic
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicUsize./AtomicUsize/patomic x))
   :qid internal_vstd.atomic_ghost.AtomicUsize./AtomicUsize/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicUsize./AtomicUsize/patomic_accessor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicUsize.)) (!
   (= (vstd.atomic_ghost.AtomicUsize./AtomicUsize/atomic_inv x) (vstd.atomic_ghost.AtomicUsize./AtomicUsize/?atomic_inv
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicUsize./AtomicUsize/atomic_inv x))
   :qid internal_vstd.atomic_ghost.AtomicUsize./AtomicUsize/atomic_inv_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicUsize./AtomicUsize/atomic_inv_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicUsize. K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicUsize./AtomicUsize/atomic_inv (%Poly%vstd.atomic_ghost.AtomicUsize.
       x
      )
     ) (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
       $ TYPE%vstd.atomic.PermissionUsize. G&. G&
      ) $ (TYPE%vstd.atomic_ghost.AtomicPredUsize. Pred&. Pred&)
   )))
   :pattern ((vstd.atomic_ghost.AtomicUsize./AtomicUsize/atomic_inv (%Poly%vstd.atomic_ghost.AtomicUsize.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicUsize. K&. K& G&. G& Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicUsize./AtomicUsize/atomic_inv_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicUsize./AtomicUsize/atomic_inv_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicUsize.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicUsize./AtomicUsize x)
    (height_lt (height (vstd.atomic_ghost.AtomicUsize./AtomicUsize/atomic_inv x)) (height
      (Poly%vstd.atomic_ghost.AtomicUsize. x)
   )))
   :pattern ((height (vstd.atomic_ghost.AtomicUsize./AtomicUsize/atomic_inv x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicUsize./AtomicUsize/atomic_inv
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicUsize./AtomicUsize/atomic_inv
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredI64.)) (!
   (= x (%Poly%vstd.atomic_ghost.AtomicPredI64. (Poly%vstd.atomic_ghost.AtomicPredI64.
      x
   )))
   :pattern ((Poly%vstd.atomic_ghost.AtomicPredI64. x))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredI64_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredI64_box_axiom_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPredI64. Pred&. Pred&))
    (= x (Poly%vstd.atomic_ghost.AtomicPredI64. (%Poly%vstd.atomic_ghost.AtomicPredI64.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicPredI64. Pred&. Pred&)))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredI64_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredI64_unbox_axiom_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (_p! Poly)) (!
   (=>
    (has_type _p! Pred&)
    (has_type (Poly%vstd.atomic_ghost.AtomicPredI64. (vstd.atomic_ghost.AtomicPredI64./AtomicPredI64
       _p!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicPredI64. Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicPredI64. (vstd.atomic_ghost.AtomicPredI64./AtomicPredI64
       _p!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicPredI64. Pred&. Pred&)
   ))
   :qid internal_vstd.atomic_ghost.AtomicPredI64./AtomicPredI64_constructor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredI64./AtomicPredI64_constructor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredI64.)) (!
   (= (vstd.atomic_ghost.AtomicPredI64./AtomicPredI64/p x) (vstd.atomic_ghost.AtomicPredI64./AtomicPredI64/?p
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicPredI64./AtomicPredI64/p x))
   :qid internal_vstd.atomic_ghost.AtomicPredI64./AtomicPredI64/p_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredI64./AtomicPredI64/p_accessor_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPredI64. Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicPredI64./AtomicPredI64/p (%Poly%vstd.atomic_ghost.AtomicPredI64.
       x
      )
     ) Pred&
   ))
   :pattern ((vstd.atomic_ghost.AtomicPredI64./AtomicPredI64/p (%Poly%vstd.atomic_ghost.AtomicPredI64.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicPredI64. Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicPredI64./AtomicPredI64/p_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredI64./AtomicPredI64/p_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredI64.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicPredI64./AtomicPredI64 x)
    (height_lt (height (vstd.atomic_ghost.AtomicPredI64./AtomicPredI64/p x)) (height (Poly%vstd.atomic_ghost.AtomicPredI64.
       x
   ))))
   :pattern ((height (vstd.atomic_ghost.AtomicPredI64./AtomicPredI64/p x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicPredI64./AtomicPredI64/p
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicPredI64./AtomicPredI64/p
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicI64.)) (!
   (= x (%Poly%vstd.atomic_ghost.AtomicI64. (Poly%vstd.atomic_ghost.AtomicI64. x)))
   :pattern ((Poly%vstd.atomic_ghost.AtomicI64. x))
   :qid internal_crate__vstd__atomic_ghost__AtomicI64_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicI64_box_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicI64. K&. K& G&. G& Pred&. Pred&))
    (= x (Poly%vstd.atomic_ghost.AtomicI64. (%Poly%vstd.atomic_ghost.AtomicI64. x)))
   )
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicI64. K&. K& G&. G& Pred&. Pred&)))
   :qid internal_crate__vstd__atomic_ghost__AtomicI64_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicI64_unbox_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (_patomic!
    vstd.atomic.PAtomicI64.
   ) (_atomic_inv! Poly)
  ) (!
   (=>
    (has_type _atomic_inv! (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K&
       $ INT
      ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI64. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredI64.
       Pred&. Pred&
    )))
    (has_type (Poly%vstd.atomic_ghost.AtomicI64. (vstd.atomic_ghost.AtomicI64./AtomicI64
       _patomic! _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicI64. K&. K& G&. G& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicI64. (vstd.atomic_ghost.AtomicI64./AtomicI64
       _patomic! _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicI64. K&. K& G&. G& Pred&. Pred&)
   ))
   :qid internal_vstd.atomic_ghost.AtomicI64./AtomicI64_constructor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicI64./AtomicI64_constructor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicI64.)) (!
   (= (vstd.atomic_ghost.AtomicI64./AtomicI64/patomic x) (vstd.atomic_ghost.AtomicI64./AtomicI64/?patomic
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicI64./AtomicI64/patomic x))
   :qid internal_vstd.atomic_ghost.AtomicI64./AtomicI64/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicI64./AtomicI64/patomic_accessor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicI64.)) (!
   (= (vstd.atomic_ghost.AtomicI64./AtomicI64/atomic_inv x) (vstd.atomic_ghost.AtomicI64./AtomicI64/?atomic_inv
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicI64./AtomicI64/atomic_inv x))
   :qid internal_vstd.atomic_ghost.AtomicI64./AtomicI64/atomic_inv_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicI64./AtomicI64/atomic_inv_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicI64. K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicI64./AtomicI64/atomic_inv (%Poly%vstd.atomic_ghost.AtomicI64.
       x
      )
     ) (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
       $ TYPE%vstd.atomic.PermissionI64. G&. G&
      ) $ (TYPE%vstd.atomic_ghost.AtomicPredI64. Pred&. Pred&)
   )))
   :pattern ((vstd.atomic_ghost.AtomicI64./AtomicI64/atomic_inv (%Poly%vstd.atomic_ghost.AtomicI64.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicI64. K&. K& G&. G& Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicI64./AtomicI64/atomic_inv_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicI64./AtomicI64/atomic_inv_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicI64.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicI64./AtomicI64 x)
    (height_lt (height (vstd.atomic_ghost.AtomicI64./AtomicI64/atomic_inv x)) (height (
       Poly%vstd.atomic_ghost.AtomicI64. x
   ))))
   :pattern ((height (vstd.atomic_ghost.AtomicI64./AtomicI64/atomic_inv x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicI64./AtomicI64/atomic_inv
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicI64./AtomicI64/atomic_inv
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredI32.)) (!
   (= x (%Poly%vstd.atomic_ghost.AtomicPredI32. (Poly%vstd.atomic_ghost.AtomicPredI32.
      x
   )))
   :pattern ((Poly%vstd.atomic_ghost.AtomicPredI32. x))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredI32_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredI32_box_axiom_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPredI32. Pred&. Pred&))
    (= x (Poly%vstd.atomic_ghost.AtomicPredI32. (%Poly%vstd.atomic_ghost.AtomicPredI32.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicPredI32. Pred&. Pred&)))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredI32_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredI32_unbox_axiom_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (_p! Poly)) (!
   (=>
    (has_type _p! Pred&)
    (has_type (Poly%vstd.atomic_ghost.AtomicPredI32. (vstd.atomic_ghost.AtomicPredI32./AtomicPredI32
       _p!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicPredI32. Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicPredI32. (vstd.atomic_ghost.AtomicPredI32./AtomicPredI32
       _p!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicPredI32. Pred&. Pred&)
   ))
   :qid internal_vstd.atomic_ghost.AtomicPredI32./AtomicPredI32_constructor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredI32./AtomicPredI32_constructor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredI32.)) (!
   (= (vstd.atomic_ghost.AtomicPredI32./AtomicPredI32/p x) (vstd.atomic_ghost.AtomicPredI32./AtomicPredI32/?p
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicPredI32./AtomicPredI32/p x))
   :qid internal_vstd.atomic_ghost.AtomicPredI32./AtomicPredI32/p_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredI32./AtomicPredI32/p_accessor_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPredI32. Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicPredI32./AtomicPredI32/p (%Poly%vstd.atomic_ghost.AtomicPredI32.
       x
      )
     ) Pred&
   ))
   :pattern ((vstd.atomic_ghost.AtomicPredI32./AtomicPredI32/p (%Poly%vstd.atomic_ghost.AtomicPredI32.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicPredI32. Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicPredI32./AtomicPredI32/p_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredI32./AtomicPredI32/p_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredI32.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicPredI32./AtomicPredI32 x)
    (height_lt (height (vstd.atomic_ghost.AtomicPredI32./AtomicPredI32/p x)) (height (Poly%vstd.atomic_ghost.AtomicPredI32.
       x
   ))))
   :pattern ((height (vstd.atomic_ghost.AtomicPredI32./AtomicPredI32/p x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicPredI32./AtomicPredI32/p
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicPredI32./AtomicPredI32/p
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicI32.)) (!
   (= x (%Poly%vstd.atomic_ghost.AtomicI32. (Poly%vstd.atomic_ghost.AtomicI32. x)))
   :pattern ((Poly%vstd.atomic_ghost.AtomicI32. x))
   :qid internal_crate__vstd__atomic_ghost__AtomicI32_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicI32_box_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicI32. K&. K& G&. G& Pred&. Pred&))
    (= x (Poly%vstd.atomic_ghost.AtomicI32. (%Poly%vstd.atomic_ghost.AtomicI32. x)))
   )
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicI32. K&. K& G&. G& Pred&. Pred&)))
   :qid internal_crate__vstd__atomic_ghost__AtomicI32_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicI32_unbox_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (_patomic!
    vstd.atomic.PAtomicI32.
   ) (_atomic_inv! Poly)
  ) (!
   (=>
    (has_type _atomic_inv! (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K&
       $ INT
      ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI32. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredI32.
       Pred&. Pred&
    )))
    (has_type (Poly%vstd.atomic_ghost.AtomicI32. (vstd.atomic_ghost.AtomicI32./AtomicI32
       _patomic! _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicI32. K&. K& G&. G& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicI32. (vstd.atomic_ghost.AtomicI32./AtomicI32
       _patomic! _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicI32. K&. K& G&. G& Pred&. Pred&)
   ))
   :qid internal_vstd.atomic_ghost.AtomicI32./AtomicI32_constructor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicI32./AtomicI32_constructor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicI32.)) (!
   (= (vstd.atomic_ghost.AtomicI32./AtomicI32/patomic x) (vstd.atomic_ghost.AtomicI32./AtomicI32/?patomic
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicI32./AtomicI32/patomic x))
   :qid internal_vstd.atomic_ghost.AtomicI32./AtomicI32/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicI32./AtomicI32/patomic_accessor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicI32.)) (!
   (= (vstd.atomic_ghost.AtomicI32./AtomicI32/atomic_inv x) (vstd.atomic_ghost.AtomicI32./AtomicI32/?atomic_inv
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicI32./AtomicI32/atomic_inv x))
   :qid internal_vstd.atomic_ghost.AtomicI32./AtomicI32/atomic_inv_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicI32./AtomicI32/atomic_inv_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicI32. K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicI32./AtomicI32/atomic_inv (%Poly%vstd.atomic_ghost.AtomicI32.
       x
      )
     ) (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
       $ TYPE%vstd.atomic.PermissionI32. G&. G&
      ) $ (TYPE%vstd.atomic_ghost.AtomicPredI32. Pred&. Pred&)
   )))
   :pattern ((vstd.atomic_ghost.AtomicI32./AtomicI32/atomic_inv (%Poly%vstd.atomic_ghost.AtomicI32.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicI32. K&. K& G&. G& Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicI32./AtomicI32/atomic_inv_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicI32./AtomicI32/atomic_inv_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicI32.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicI32./AtomicI32 x)
    (height_lt (height (vstd.atomic_ghost.AtomicI32./AtomicI32/atomic_inv x)) (height (
       Poly%vstd.atomic_ghost.AtomicI32. x
   ))))
   :pattern ((height (vstd.atomic_ghost.AtomicI32./AtomicI32/atomic_inv x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicI32./AtomicI32/atomic_inv
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicI32./AtomicI32/atomic_inv
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredI16.)) (!
   (= x (%Poly%vstd.atomic_ghost.AtomicPredI16. (Poly%vstd.atomic_ghost.AtomicPredI16.
      x
   )))
   :pattern ((Poly%vstd.atomic_ghost.AtomicPredI16. x))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredI16_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredI16_box_axiom_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPredI16. Pred&. Pred&))
    (= x (Poly%vstd.atomic_ghost.AtomicPredI16. (%Poly%vstd.atomic_ghost.AtomicPredI16.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicPredI16. Pred&. Pred&)))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredI16_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredI16_unbox_axiom_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (_p! Poly)) (!
   (=>
    (has_type _p! Pred&)
    (has_type (Poly%vstd.atomic_ghost.AtomicPredI16. (vstd.atomic_ghost.AtomicPredI16./AtomicPredI16
       _p!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicPredI16. Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicPredI16. (vstd.atomic_ghost.AtomicPredI16./AtomicPredI16
       _p!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicPredI16. Pred&. Pred&)
   ))
   :qid internal_vstd.atomic_ghost.AtomicPredI16./AtomicPredI16_constructor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredI16./AtomicPredI16_constructor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredI16.)) (!
   (= (vstd.atomic_ghost.AtomicPredI16./AtomicPredI16/p x) (vstd.atomic_ghost.AtomicPredI16./AtomicPredI16/?p
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicPredI16./AtomicPredI16/p x))
   :qid internal_vstd.atomic_ghost.AtomicPredI16./AtomicPredI16/p_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredI16./AtomicPredI16/p_accessor_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPredI16. Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicPredI16./AtomicPredI16/p (%Poly%vstd.atomic_ghost.AtomicPredI16.
       x
      )
     ) Pred&
   ))
   :pattern ((vstd.atomic_ghost.AtomicPredI16./AtomicPredI16/p (%Poly%vstd.atomic_ghost.AtomicPredI16.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicPredI16. Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicPredI16./AtomicPredI16/p_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredI16./AtomicPredI16/p_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredI16.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicPredI16./AtomicPredI16 x)
    (height_lt (height (vstd.atomic_ghost.AtomicPredI16./AtomicPredI16/p x)) (height (Poly%vstd.atomic_ghost.AtomicPredI16.
       x
   ))))
   :pattern ((height (vstd.atomic_ghost.AtomicPredI16./AtomicPredI16/p x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicPredI16./AtomicPredI16/p
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicPredI16./AtomicPredI16/p
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicI16.)) (!
   (= x (%Poly%vstd.atomic_ghost.AtomicI16. (Poly%vstd.atomic_ghost.AtomicI16. x)))
   :pattern ((Poly%vstd.atomic_ghost.AtomicI16. x))
   :qid internal_crate__vstd__atomic_ghost__AtomicI16_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicI16_box_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicI16. K&. K& G&. G& Pred&. Pred&))
    (= x (Poly%vstd.atomic_ghost.AtomicI16. (%Poly%vstd.atomic_ghost.AtomicI16. x)))
   )
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicI16. K&. K& G&. G& Pred&. Pred&)))
   :qid internal_crate__vstd__atomic_ghost__AtomicI16_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicI16_unbox_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (_patomic!
    vstd.atomic.PAtomicI16.
   ) (_atomic_inv! Poly)
  ) (!
   (=>
    (has_type _atomic_inv! (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K&
       $ INT
      ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI16. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredI16.
       Pred&. Pred&
    )))
    (has_type (Poly%vstd.atomic_ghost.AtomicI16. (vstd.atomic_ghost.AtomicI16./AtomicI16
       _patomic! _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicI16. K&. K& G&. G& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicI16. (vstd.atomic_ghost.AtomicI16./AtomicI16
       _patomic! _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicI16. K&. K& G&. G& Pred&. Pred&)
   ))
   :qid internal_vstd.atomic_ghost.AtomicI16./AtomicI16_constructor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicI16./AtomicI16_constructor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicI16.)) (!
   (= (vstd.atomic_ghost.AtomicI16./AtomicI16/patomic x) (vstd.atomic_ghost.AtomicI16./AtomicI16/?patomic
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicI16./AtomicI16/patomic x))
   :qid internal_vstd.atomic_ghost.AtomicI16./AtomicI16/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicI16./AtomicI16/patomic_accessor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicI16.)) (!
   (= (vstd.atomic_ghost.AtomicI16./AtomicI16/atomic_inv x) (vstd.atomic_ghost.AtomicI16./AtomicI16/?atomic_inv
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicI16./AtomicI16/atomic_inv x))
   :qid internal_vstd.atomic_ghost.AtomicI16./AtomicI16/atomic_inv_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicI16./AtomicI16/atomic_inv_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicI16. K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicI16./AtomicI16/atomic_inv (%Poly%vstd.atomic_ghost.AtomicI16.
       x
      )
     ) (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
       $ TYPE%vstd.atomic.PermissionI16. G&. G&
      ) $ (TYPE%vstd.atomic_ghost.AtomicPredI16. Pred&. Pred&)
   )))
   :pattern ((vstd.atomic_ghost.AtomicI16./AtomicI16/atomic_inv (%Poly%vstd.atomic_ghost.AtomicI16.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicI16. K&. K& G&. G& Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicI16./AtomicI16/atomic_inv_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicI16./AtomicI16/atomic_inv_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicI16.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicI16./AtomicI16 x)
    (height_lt (height (vstd.atomic_ghost.AtomicI16./AtomicI16/atomic_inv x)) (height (
       Poly%vstd.atomic_ghost.AtomicI16. x
   ))))
   :pattern ((height (vstd.atomic_ghost.AtomicI16./AtomicI16/atomic_inv x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicI16./AtomicI16/atomic_inv
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicI16./AtomicI16/atomic_inv
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredI8.)) (!
   (= x (%Poly%vstd.atomic_ghost.AtomicPredI8. (Poly%vstd.atomic_ghost.AtomicPredI8. x)))
   :pattern ((Poly%vstd.atomic_ghost.AtomicPredI8. x))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredI8_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredI8_box_axiom_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPredI8. Pred&. Pred&))
    (= x (Poly%vstd.atomic_ghost.AtomicPredI8. (%Poly%vstd.atomic_ghost.AtomicPredI8. x)))
   )
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicPredI8. Pred&. Pred&)))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredI8_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredI8_unbox_axiom_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (_p! Poly)) (!
   (=>
    (has_type _p! Pred&)
    (has_type (Poly%vstd.atomic_ghost.AtomicPredI8. (vstd.atomic_ghost.AtomicPredI8./AtomicPredI8
       _p!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicPredI8. Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicPredI8. (vstd.atomic_ghost.AtomicPredI8./AtomicPredI8
       _p!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicPredI8. Pred&. Pred&)
   ))
   :qid internal_vstd.atomic_ghost.AtomicPredI8./AtomicPredI8_constructor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredI8./AtomicPredI8_constructor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredI8.)) (!
   (= (vstd.atomic_ghost.AtomicPredI8./AtomicPredI8/p x) (vstd.atomic_ghost.AtomicPredI8./AtomicPredI8/?p
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicPredI8./AtomicPredI8/p x))
   :qid internal_vstd.atomic_ghost.AtomicPredI8./AtomicPredI8/p_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredI8./AtomicPredI8/p_accessor_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPredI8. Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicPredI8./AtomicPredI8/p (%Poly%vstd.atomic_ghost.AtomicPredI8.
       x
      )
     ) Pred&
   ))
   :pattern ((vstd.atomic_ghost.AtomicPredI8./AtomicPredI8/p (%Poly%vstd.atomic_ghost.AtomicPredI8.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicPredI8. Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicPredI8./AtomicPredI8/p_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredI8./AtomicPredI8/p_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredI8.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicPredI8./AtomicPredI8 x)
    (height_lt (height (vstd.atomic_ghost.AtomicPredI8./AtomicPredI8/p x)) (height (Poly%vstd.atomic_ghost.AtomicPredI8.
       x
   ))))
   :pattern ((height (vstd.atomic_ghost.AtomicPredI8./AtomicPredI8/p x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicPredI8./AtomicPredI8/p
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicPredI8./AtomicPredI8/p
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicI8.)) (!
   (= x (%Poly%vstd.atomic_ghost.AtomicI8. (Poly%vstd.atomic_ghost.AtomicI8. x)))
   :pattern ((Poly%vstd.atomic_ghost.AtomicI8. x))
   :qid internal_crate__vstd__atomic_ghost__AtomicI8_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicI8_box_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicI8. K&. K& G&. G& Pred&. Pred&))
    (= x (Poly%vstd.atomic_ghost.AtomicI8. (%Poly%vstd.atomic_ghost.AtomicI8. x)))
   )
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicI8. K&. K& G&. G& Pred&. Pred&)))
   :qid internal_crate__vstd__atomic_ghost__AtomicI8_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicI8_unbox_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (_patomic!
    vstd.atomic.PAtomicI8.
   ) (_atomic_inv! Poly)
  ) (!
   (=>
    (has_type _atomic_inv! (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K&
       $ INT
      ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI8. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredI8.
       Pred&. Pred&
    )))
    (has_type (Poly%vstd.atomic_ghost.AtomicI8. (vstd.atomic_ghost.AtomicI8./AtomicI8 _patomic!
       _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicI8. K&. K& G&. G& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicI8. (vstd.atomic_ghost.AtomicI8./AtomicI8
       _patomic! _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicI8. K&. K& G&. G& Pred&. Pred&)
   ))
   :qid internal_vstd.atomic_ghost.AtomicI8./AtomicI8_constructor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicI8./AtomicI8_constructor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicI8.)) (!
   (= (vstd.atomic_ghost.AtomicI8./AtomicI8/patomic x) (vstd.atomic_ghost.AtomicI8./AtomicI8/?patomic
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicI8./AtomicI8/patomic x))
   :qid internal_vstd.atomic_ghost.AtomicI8./AtomicI8/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicI8./AtomicI8/patomic_accessor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicI8.)) (!
   (= (vstd.atomic_ghost.AtomicI8./AtomicI8/atomic_inv x) (vstd.atomic_ghost.AtomicI8./AtomicI8/?atomic_inv
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicI8./AtomicI8/atomic_inv x))
   :qid internal_vstd.atomic_ghost.AtomicI8./AtomicI8/atomic_inv_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicI8./AtomicI8/atomic_inv_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicI8. K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicI8./AtomicI8/atomic_inv (%Poly%vstd.atomic_ghost.AtomicI8.
       x
      )
     ) (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
       $ TYPE%vstd.atomic.PermissionI8. G&. G&
      ) $ (TYPE%vstd.atomic_ghost.AtomicPredI8. Pred&. Pred&)
   )))
   :pattern ((vstd.atomic_ghost.AtomicI8./AtomicI8/atomic_inv (%Poly%vstd.atomic_ghost.AtomicI8.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicI8. K&. K& G&. G& Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicI8./AtomicI8/atomic_inv_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicI8./AtomicI8/atomic_inv_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicI8.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicI8./AtomicI8 x)
    (height_lt (height (vstd.atomic_ghost.AtomicI8./AtomicI8/atomic_inv x)) (height (Poly%vstd.atomic_ghost.AtomicI8.
       x
   ))))
   :pattern ((height (vstd.atomic_ghost.AtomicI8./AtomicI8/atomic_inv x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicI8./AtomicI8/atomic_inv
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicI8./AtomicI8/atomic_inv
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredIsize.)) (!
   (= x (%Poly%vstd.atomic_ghost.AtomicPredIsize. (Poly%vstd.atomic_ghost.AtomicPredIsize.
      x
   )))
   :pattern ((Poly%vstd.atomic_ghost.AtomicPredIsize. x))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredIsize_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredIsize_box_axiom_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPredIsize. Pred&. Pred&))
    (= x (Poly%vstd.atomic_ghost.AtomicPredIsize. (%Poly%vstd.atomic_ghost.AtomicPredIsize.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicPredIsize. Pred&. Pred&)))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredIsize_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredIsize_unbox_axiom_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (_p! Poly)) (!
   (=>
    (has_type _p! Pred&)
    (has_type (Poly%vstd.atomic_ghost.AtomicPredIsize. (vstd.atomic_ghost.AtomicPredIsize./AtomicPredIsize
       _p!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicPredIsize. Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicPredIsize. (vstd.atomic_ghost.AtomicPredIsize./AtomicPredIsize
       _p!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicPredIsize. Pred&. Pred&)
   ))
   :qid internal_vstd.atomic_ghost.AtomicPredIsize./AtomicPredIsize_constructor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredIsize./AtomicPredIsize_constructor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredIsize.)) (!
   (= (vstd.atomic_ghost.AtomicPredIsize./AtomicPredIsize/p x) (vstd.atomic_ghost.AtomicPredIsize./AtomicPredIsize/?p
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicPredIsize./AtomicPredIsize/p x))
   :qid internal_vstd.atomic_ghost.AtomicPredIsize./AtomicPredIsize/p_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredIsize./AtomicPredIsize/p_accessor_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPredIsize. Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicPredIsize./AtomicPredIsize/p (%Poly%vstd.atomic_ghost.AtomicPredIsize.
       x
      )
     ) Pred&
   ))
   :pattern ((vstd.atomic_ghost.AtomicPredIsize./AtomicPredIsize/p (%Poly%vstd.atomic_ghost.AtomicPredIsize.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicPredIsize. Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicPredIsize./AtomicPredIsize/p_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredIsize./AtomicPredIsize/p_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredIsize.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicPredIsize./AtomicPredIsize x)
    (height_lt (height (vstd.atomic_ghost.AtomicPredIsize./AtomicPredIsize/p x)) (height
      (Poly%vstd.atomic_ghost.AtomicPredIsize. x)
   )))
   :pattern ((height (vstd.atomic_ghost.AtomicPredIsize./AtomicPredIsize/p x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicPredIsize./AtomicPredIsize/p
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicPredIsize./AtomicPredIsize/p
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicIsize.)) (!
   (= x (%Poly%vstd.atomic_ghost.AtomicIsize. (Poly%vstd.atomic_ghost.AtomicIsize. x)))
   :pattern ((Poly%vstd.atomic_ghost.AtomicIsize. x))
   :qid internal_crate__vstd__atomic_ghost__AtomicIsize_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicIsize_box_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicIsize. K&. K& G&. G& Pred&. Pred&))
    (= x (Poly%vstd.atomic_ghost.AtomicIsize. (%Poly%vstd.atomic_ghost.AtomicIsize. x)))
   )
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicIsize. K&. K& G&. G& Pred&. Pred&)))
   :qid internal_crate__vstd__atomic_ghost__AtomicIsize_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicIsize_unbox_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (_patomic!
    vstd.atomic.PAtomicIsize.
   ) (_atomic_inv! Poly)
  ) (!
   (=>
    (has_type _atomic_inv! (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K&
       $ INT
      ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionIsize. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredIsize.
       Pred&. Pred&
    )))
    (has_type (Poly%vstd.atomic_ghost.AtomicIsize. (vstd.atomic_ghost.AtomicIsize./AtomicIsize
       _patomic! _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicIsize. K&. K& G&. G& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicIsize. (vstd.atomic_ghost.AtomicIsize./AtomicIsize
       _patomic! _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicIsize. K&. K& G&. G& Pred&. Pred&)
   ))
   :qid internal_vstd.atomic_ghost.AtomicIsize./AtomicIsize_constructor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicIsize./AtomicIsize_constructor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicIsize.)) (!
   (= (vstd.atomic_ghost.AtomicIsize./AtomicIsize/patomic x) (vstd.atomic_ghost.AtomicIsize./AtomicIsize/?patomic
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicIsize./AtomicIsize/patomic x))
   :qid internal_vstd.atomic_ghost.AtomicIsize./AtomicIsize/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicIsize./AtomicIsize/patomic_accessor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicIsize.)) (!
   (= (vstd.atomic_ghost.AtomicIsize./AtomicIsize/atomic_inv x) (vstd.atomic_ghost.AtomicIsize./AtomicIsize/?atomic_inv
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicIsize./AtomicIsize/atomic_inv x))
   :qid internal_vstd.atomic_ghost.AtomicIsize./AtomicIsize/atomic_inv_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicIsize./AtomicIsize/atomic_inv_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicIsize. K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicIsize./AtomicIsize/atomic_inv (%Poly%vstd.atomic_ghost.AtomicIsize.
       x
      )
     ) (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
       $ TYPE%vstd.atomic.PermissionIsize. G&. G&
      ) $ (TYPE%vstd.atomic_ghost.AtomicPredIsize. Pred&. Pred&)
   )))
   :pattern ((vstd.atomic_ghost.AtomicIsize./AtomicIsize/atomic_inv (%Poly%vstd.atomic_ghost.AtomicIsize.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicIsize. K&. K& G&. G& Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicIsize./AtomicIsize/atomic_inv_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicIsize./AtomicIsize/atomic_inv_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicIsize.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicIsize./AtomicIsize x)
    (height_lt (height (vstd.atomic_ghost.AtomicIsize./AtomicIsize/atomic_inv x)) (height
      (Poly%vstd.atomic_ghost.AtomicIsize. x)
   )))
   :pattern ((height (vstd.atomic_ghost.AtomicIsize./AtomicIsize/atomic_inv x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicIsize./AtomicIsize/atomic_inv
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicIsize./AtomicIsize/atomic_inv
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredBool.)) (!
   (= x (%Poly%vstd.atomic_ghost.AtomicPredBool. (Poly%vstd.atomic_ghost.AtomicPredBool.
      x
   )))
   :pattern ((Poly%vstd.atomic_ghost.AtomicPredBool. x))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredBool_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredBool_box_axiom_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPredBool. Pred&. Pred&))
    (= x (Poly%vstd.atomic_ghost.AtomicPredBool. (%Poly%vstd.atomic_ghost.AtomicPredBool.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicPredBool. Pred&. Pred&)))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredBool_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredBool_unbox_axiom_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (_p! Poly)) (!
   (=>
    (has_type _p! Pred&)
    (has_type (Poly%vstd.atomic_ghost.AtomicPredBool. (vstd.atomic_ghost.AtomicPredBool./AtomicPredBool
       _p!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicPredBool. Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicPredBool. (vstd.atomic_ghost.AtomicPredBool./AtomicPredBool
       _p!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicPredBool. Pred&. Pred&)
   ))
   :qid internal_vstd.atomic_ghost.AtomicPredBool./AtomicPredBool_constructor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredBool./AtomicPredBool_constructor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredBool.)) (!
   (= (vstd.atomic_ghost.AtomicPredBool./AtomicPredBool/p x) (vstd.atomic_ghost.AtomicPredBool./AtomicPredBool/?p
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicPredBool./AtomicPredBool/p x))
   :qid internal_vstd.atomic_ghost.AtomicPredBool./AtomicPredBool/p_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredBool./AtomicPredBool/p_accessor_definition
)))
(assert
 (forall ((Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPredBool. Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicPredBool./AtomicPredBool/p (%Poly%vstd.atomic_ghost.AtomicPredBool.
       x
      )
     ) Pred&
   ))
   :pattern ((vstd.atomic_ghost.AtomicPredBool./AtomicPredBool/p (%Poly%vstd.atomic_ghost.AtomicPredBool.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicPredBool. Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicPredBool./AtomicPredBool/p_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredBool./AtomicPredBool/p_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredBool.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicPredBool./AtomicPredBool x)
    (height_lt (height (vstd.atomic_ghost.AtomicPredBool./AtomicPredBool/p x)) (height
      (Poly%vstd.atomic_ghost.AtomicPredBool. x)
   )))
   :pattern ((height (vstd.atomic_ghost.AtomicPredBool./AtomicPredBool/p x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicPredBool./AtomicPredBool/p
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicPredBool./AtomicPredBool/p
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicBool.)) (!
   (= x (%Poly%vstd.atomic_ghost.AtomicBool. (Poly%vstd.atomic_ghost.AtomicBool. x)))
   :pattern ((Poly%vstd.atomic_ghost.AtomicBool. x))
   :qid internal_crate__vstd__atomic_ghost__AtomicBool_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicBool_box_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicBool. K&. K& G&. G& Pred&. Pred&))
    (= x (Poly%vstd.atomic_ghost.AtomicBool. (%Poly%vstd.atomic_ghost.AtomicBool. x)))
   )
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicBool. K&. K& G&. G& Pred&. Pred&)))
   :qid internal_crate__vstd__atomic_ghost__AtomicBool_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicBool_unbox_axiom_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (_patomic!
    vstd.atomic.PAtomicBool.
   ) (_atomic_inv! Poly)
  ) (!
   (=>
    (has_type _atomic_inv! (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K&
       $ INT
      ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionBool. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredBool.
       Pred&. Pred&
    )))
    (has_type (Poly%vstd.atomic_ghost.AtomicBool. (vstd.atomic_ghost.AtomicBool./AtomicBool
       _patomic! _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicBool. K&. K& G&. G& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicBool. (vstd.atomic_ghost.AtomicBool./AtomicBool
       _patomic! _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicBool. K&. K& G&. G& Pred&. Pred&)
   ))
   :qid internal_vstd.atomic_ghost.AtomicBool./AtomicBool_constructor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicBool./AtomicBool_constructor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicBool.)) (!
   (= (vstd.atomic_ghost.AtomicBool./AtomicBool/patomic x) (vstd.atomic_ghost.AtomicBool./AtomicBool/?patomic
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicBool./AtomicBool/patomic x))
   :qid internal_vstd.atomic_ghost.AtomicBool./AtomicBool/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicBool./AtomicBool/patomic_accessor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicBool.)) (!
   (= (vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv x) (vstd.atomic_ghost.AtomicBool./AtomicBool/?atomic_inv
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv x))
   :qid internal_vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv_accessor_definition
)))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (x Poly))
  (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicBool. K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv (%Poly%vstd.atomic_ghost.AtomicBool.
       x
      )
     ) (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
       $ TYPE%vstd.atomic.PermissionBool. G&. G&
      ) $ (TYPE%vstd.atomic_ghost.AtomicPredBool. Pred&. Pred&)
   )))
   :pattern ((vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv (%Poly%vstd.atomic_ghost.AtomicBool.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicBool. K&. K& G&. G& Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicBool.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicBool./AtomicBool x)
    (height_lt (height (vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv x)) (height
      (Poly%vstd.atomic_ghost.AtomicBool. x)
   )))
   :pattern ((height (vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredPtr.)) (!
   (= x (%Poly%vstd.atomic_ghost.AtomicPredPtr. (Poly%vstd.atomic_ghost.AtomicPredPtr.
      x
   )))
   :pattern ((Poly%vstd.atomic_ghost.AtomicPredPtr. x))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredPtr_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredPtr_box_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPredPtr. T&. T& Pred&. Pred&))
    (= x (Poly%vstd.atomic_ghost.AtomicPredPtr. (%Poly%vstd.atomic_ghost.AtomicPredPtr.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicPredPtr. T&. T& Pred&. Pred&)))
   :qid internal_crate__vstd__atomic_ghost__AtomicPredPtr_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPredPtr_unbox_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (Pred&. Dcr) (Pred& Type) (_t! Poly) (_p! Poly)) (!
   (=>
    (and
     (has_type _t! T&)
     (has_type _p! Pred&)
    )
    (has_type (Poly%vstd.atomic_ghost.AtomicPredPtr. (vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr
       _t! _p!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicPredPtr. T&. T& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicPredPtr. (vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr
       _t! _p!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicPredPtr. T&. T& Pred&. Pred&)
   ))
   :qid internal_vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr_constructor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr_constructor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredPtr.)) (!
   (= (vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/t x) (vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/?t
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/t x))
   :qid internal_vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/t_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/t_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPredPtr. T&. T& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/t (%Poly%vstd.atomic_ghost.AtomicPredPtr.
       x
      )
     ) T&
   ))
   :pattern ((vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/t (%Poly%vstd.atomic_ghost.AtomicPredPtr.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicPredPtr. T&. T& Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/t_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/t_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredPtr.)) (!
   (= (vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/p x) (vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/?p
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/p x))
   :qid internal_vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/p_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/p_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (Pred&. Dcr) (Pred& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPredPtr. T&. T& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/p (%Poly%vstd.atomic_ghost.AtomicPredPtr.
       x
      )
     ) Pred&
   ))
   :pattern ((vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/p (%Poly%vstd.atomic_ghost.AtomicPredPtr.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicPredPtr. T&. T& Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/p_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/p_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredPtr.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr x)
    (height_lt (height (vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/t x)) (height (Poly%vstd.atomic_ghost.AtomicPredPtr.
       x
   ))))
   :pattern ((height (vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/t x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/t
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/t
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPredPtr.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr x)
    (height_lt (height (vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/p x)) (height (Poly%vstd.atomic_ghost.AtomicPredPtr.
       x
   ))))
   :pattern ((height (vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/p x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/p
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicPredPtr./AtomicPredPtr/p
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPtr.)) (!
   (= x (%Poly%vstd.atomic_ghost.AtomicPtr. (Poly%vstd.atomic_ghost.AtomicPtr. x)))
   :pattern ((Poly%vstd.atomic_ghost.AtomicPtr. x))
   :qid internal_crate__vstd__atomic_ghost__AtomicPtr_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPtr_box_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (
    Pred& Type
   ) (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPtr. T&. T& K&. K& G&. G& Pred&. Pred&))
    (= x (Poly%vstd.atomic_ghost.AtomicPtr. (%Poly%vstd.atomic_ghost.AtomicPtr. x)))
   )
   :pattern ((has_type x (TYPE%vstd.atomic_ghost.AtomicPtr. T&. T& K&. K& G&. G& Pred&.
      Pred&
   )))
   :qid internal_crate__vstd__atomic_ghost__AtomicPtr_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicPtr_unbox_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (
    Pred& Type
   ) (_patomic! Poly) (_atomic_inv! Poly)
  ) (!
   (=>
    (and
     (has_type _patomic! (TYPE%vstd.atomic.PAtomicPtr. T&. T&))
     (has_type _atomic_inv! (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K&
        $ INT
       ) $ (TYPE%tuple%2. $ (TYPE%vstd.atomic.PermissionPtr. T&. T&) G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredPtr.
        T&. T& Pred&. Pred&
    ))))
    (has_type (Poly%vstd.atomic_ghost.AtomicPtr. (vstd.atomic_ghost.AtomicPtr./AtomicPtr
       _patomic! _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicPtr. T&. T& K&. K& G&. G& Pred&. Pred&)
   ))
   :pattern ((has_type (Poly%vstd.atomic_ghost.AtomicPtr. (vstd.atomic_ghost.AtomicPtr./AtomicPtr
       _patomic! _atomic_inv!
      )
     ) (TYPE%vstd.atomic_ghost.AtomicPtr. T&. T& K&. K& G&. G& Pred&. Pred&)
   ))
   :qid internal_vstd.atomic_ghost.AtomicPtr./AtomicPtr_constructor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPtr./AtomicPtr_constructor_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPtr.)) (!
   (= (vstd.atomic_ghost.AtomicPtr./AtomicPtr/patomic x) (vstd.atomic_ghost.AtomicPtr./AtomicPtr/?patomic
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicPtr./AtomicPtr/patomic x))
   :qid internal_vstd.atomic_ghost.AtomicPtr./AtomicPtr/patomic_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPtr./AtomicPtr/patomic_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (
    Pred& Type
   ) (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPtr. T&. T& K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicPtr./AtomicPtr/patomic (%Poly%vstd.atomic_ghost.AtomicPtr.
       x
      )
     ) (TYPE%vstd.atomic.PAtomicPtr. T&. T&)
   ))
   :pattern ((vstd.atomic_ghost.AtomicPtr./AtomicPtr/patomic (%Poly%vstd.atomic_ghost.AtomicPtr.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicPtr. T&. T& K&. K& G&. G& Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicPtr./AtomicPtr/patomic_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPtr./AtomicPtr/patomic_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPtr.)) (!
   (= (vstd.atomic_ghost.AtomicPtr./AtomicPtr/atomic_inv x) (vstd.atomic_ghost.AtomicPtr./AtomicPtr/?atomic_inv
     x
   ))
   :pattern ((vstd.atomic_ghost.AtomicPtr./AtomicPtr/atomic_inv x))
   :qid internal_vstd.atomic_ghost.AtomicPtr./AtomicPtr/atomic_inv_accessor_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPtr./AtomicPtr/atomic_inv_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (
    Pred& Type
   ) (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%vstd.atomic_ghost.AtomicPtr. T&. T& K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.AtomicPtr./AtomicPtr/atomic_inv (%Poly%vstd.atomic_ghost.AtomicPtr.
       x
      )
     ) (TYPE%vstd.invariant.AtomicInvariant. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
       $ (TYPE%vstd.atomic.PermissionPtr. T&. T&) G&. G&
      ) $ (TYPE%vstd.atomic_ghost.AtomicPredPtr. T&. T& Pred&. Pred&)
   )))
   :pattern ((vstd.atomic_ghost.AtomicPtr./AtomicPtr/atomic_inv (%Poly%vstd.atomic_ghost.AtomicPtr.
      x
     )
    ) (has_type x (TYPE%vstd.atomic_ghost.AtomicPtr. T&. T& K&. K& G&. G& Pred&. Pred&))
   )
   :qid internal_vstd.atomic_ghost.AtomicPtr./AtomicPtr/atomic_inv_invariant_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicPtr./AtomicPtr/atomic_inv_invariant_definition
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPtr.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicPtr./AtomicPtr x)
    (height_lt (height (vstd.atomic_ghost.AtomicPtr./AtomicPtr/patomic x)) (height (Poly%vstd.atomic_ghost.AtomicPtr.
       x
   ))))
   :pattern ((height (vstd.atomic_ghost.AtomicPtr./AtomicPtr/patomic x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicPtr./AtomicPtr/patomic
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicPtr./AtomicPtr/patomic
)))
(assert
 (forall ((x vstd.atomic_ghost.AtomicPtr.)) (!
   (=>
    (is-vstd.atomic_ghost.AtomicPtr./AtomicPtr x)
    (height_lt (height (vstd.atomic_ghost.AtomicPtr./AtomicPtr/atomic_inv x)) (height (
       Poly%vstd.atomic_ghost.AtomicPtr. x
   ))))
   :pattern ((height (vstd.atomic_ghost.AtomicPtr./AtomicPtr/atomic_inv x)))
   :qid prelude_datatype_height_vstd.atomic_ghost.AtomicPtr./AtomicPtr/atomic_inv
   :skolemid skolem_prelude_datatype_height_vstd.atomic_ghost.AtomicPtr./AtomicPtr/atomic_inv
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

;; Traits
(declare-fun tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. (Dcr Type Dcr Type
  Dcr Type Dcr Type
 ) Bool
)
(declare-fun tr_bound%vstd.invariant.InvariantPredicate. (Dcr Type Dcr Type Dcr Type)
 Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (G&. Dcr)
   (G& Type)
  ) (!
   true
   :pattern ((tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Self%&. Self%& K&.
     K& V&. V& G&. G&
   ))
   :qid internal_crate__vstd__atomic_ghost__AtomicInvariantPredicate_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__AtomicInvariantPredicate_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (K&. Dcr) (K& Type) (V&. Dcr) (V& Type)) (!
   true
   :pattern ((tr_bound%vstd.invariant.InvariantPredicate. Self%&. Self%& K&. K& V&. V&))
   :qid internal_crate__vstd__invariant__InvariantPredicate_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__invariant__InvariantPredicate_trait_type_bounds_definition
)))

;; Function-Decl crate::vstd::invariant::InvariantPredicate::inv
(declare-fun vstd.invariant.InvariantPredicate.inv.? (Dcr Type Dcr Type Dcr Type Poly
  Poly
 ) Poly
)
(declare-fun vstd.invariant.InvariantPredicate.inv%default%.? (Dcr Type Dcr Type Dcr
  Type Poly Poly
 ) Poly
)

;; Function-Decl crate::vstd::atomic::PermissionBool::view
(declare-fun vstd.atomic.impl&%0.view.? (Poly) vstd.atomic.PermissionDataBool.)

;; Function-Decl crate::vstd::atomic::PAtomicBool::id
(declare-fun vstd.atomic.impl&%1.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionU8::view
(declare-fun vstd.atomic.impl&%2.view.? (Poly) vstd.atomic.PermissionDataU8.)

;; Function-Decl crate::vstd::atomic::PAtomicU8::id
(declare-fun vstd.atomic.impl&%3.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionU16::view
(declare-fun vstd.atomic.impl&%4.view.? (Poly) vstd.atomic.PermissionDataU16.)

;; Function-Decl crate::vstd::atomic::PAtomicU16::id
(declare-fun vstd.atomic.impl&%5.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionU32::view
(declare-fun vstd.atomic.impl&%6.view.? (Poly) vstd.atomic.PermissionDataU32.)

;; Function-Decl crate::vstd::atomic::PAtomicU32::id
(declare-fun vstd.atomic.impl&%7.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionU64::view
(declare-fun vstd.atomic.impl&%8.view.? (Poly) vstd.atomic.PermissionDataU64.)

;; Function-Decl crate::vstd::atomic::PAtomicU64::id
(declare-fun vstd.atomic.impl&%9.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionUsize::view
(declare-fun vstd.atomic.impl&%10.view.? (Poly) vstd.atomic.PermissionDataUsize.)

;; Function-Decl crate::vstd::atomic::PAtomicUsize::id
(declare-fun vstd.atomic.impl&%11.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionI8::view
(declare-fun vstd.atomic.impl&%12.view.? (Poly) vstd.atomic.PermissionDataI8.)

;; Function-Decl crate::vstd::atomic::PAtomicI8::id
(declare-fun vstd.atomic.impl&%13.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionI16::view
(declare-fun vstd.atomic.impl&%14.view.? (Poly) vstd.atomic.PermissionDataI16.)

;; Function-Decl crate::vstd::atomic::PAtomicI16::id
(declare-fun vstd.atomic.impl&%15.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionI32::view
(declare-fun vstd.atomic.impl&%16.view.? (Poly) vstd.atomic.PermissionDataI32.)

;; Function-Decl crate::vstd::atomic::PAtomicI32::id
(declare-fun vstd.atomic.impl&%17.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionI64::view
(declare-fun vstd.atomic.impl&%18.view.? (Poly) vstd.atomic.PermissionDataI64.)

;; Function-Decl crate::vstd::atomic::PAtomicI64::id
(declare-fun vstd.atomic.impl&%19.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionIsize::view
(declare-fun vstd.atomic.impl&%20.view.? (Poly) vstd.atomic.PermissionDataIsize.)

;; Function-Decl crate::vstd::atomic::PAtomicIsize::id
(declare-fun vstd.atomic.impl&%21.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionPtr::view
(declare-fun vstd.atomic.impl&%22.view.? (Dcr Type Poly) vstd.atomic.PermissionDataPtr.)

;; Function-Decl crate::vstd::atomic::PAtomicPtr::id
(declare-fun vstd.atomic.impl&%23.id.? (Dcr Type Poly) Int)

;; Function-Decl crate::vstd::atomic_ghost::AtomicInvariantPredicate::atomic_inv
(declare-fun vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? (Dcr Type Dcr
  Type Dcr Type Dcr Type Poly Poly Poly
 ) Poly
)
(declare-fun vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv%default%.? (Dcr
  Type Dcr Type Dcr Type Dcr Type Poly Poly Poly
 ) Poly
)

;; Function-Decl crate::vstd::invariant::AtomicInvariant::constant
(declare-fun vstd.invariant.impl&%0.constant.? (Dcr Type Dcr Type Dcr Type Poly) Poly)

;; Function-Decl vstd::invariant::AtomicInvariant::namespace
(declare-fun vstd!invariant.AtomicInvariant.namespace.? (Dcr Type Dcr Type Dcr Type
  Poly
 ) Int
)

;; Function-Decl vstd::invariant::AtomicInvariant::inv
(declare-fun vstd!invariant.AtomicInvariant.inv.? (Dcr Type Dcr Type Dcr Type Poly
  Poly
 ) Bool
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicU64::well_formed
(declare-fun vstd.atomic_ghost.impl&%1.well_formed.? (Dcr Type Dcr Type Dcr Type Poly)
 Bool
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicU64::constant
(declare-fun vstd.atomic_ghost.impl&%1.constant.? (Dcr Type Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicU32::well_formed
(declare-fun vstd.atomic_ghost.impl&%3.well_formed.? (Dcr Type Dcr Type Dcr Type Poly)
 Bool
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicU32::constant
(declare-fun vstd.atomic_ghost.impl&%3.constant.? (Dcr Type Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicU16::well_formed
(declare-fun vstd.atomic_ghost.impl&%5.well_formed.? (Dcr Type Dcr Type Dcr Type Poly)
 Bool
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicU16::constant
(declare-fun vstd.atomic_ghost.impl&%5.constant.? (Dcr Type Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicU8::well_formed
(declare-fun vstd.atomic_ghost.impl&%7.well_formed.? (Dcr Type Dcr Type Dcr Type Poly)
 Bool
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicU8::constant
(declare-fun vstd.atomic_ghost.impl&%7.constant.? (Dcr Type Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicUsize::well_formed
(declare-fun vstd.atomic_ghost.impl&%9.well_formed.? (Dcr Type Dcr Type Dcr Type Poly)
 Bool
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicUsize::constant
(declare-fun vstd.atomic_ghost.impl&%9.constant.? (Dcr Type Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicI64::well_formed
(declare-fun vstd.atomic_ghost.impl&%11.well_formed.? (Dcr Type Dcr Type Dcr Type Poly)
 Bool
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicI64::constant
(declare-fun vstd.atomic_ghost.impl&%11.constant.? (Dcr Type Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicI32::well_formed
(declare-fun vstd.atomic_ghost.impl&%13.well_formed.? (Dcr Type Dcr Type Dcr Type Poly)
 Bool
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicI32::constant
(declare-fun vstd.atomic_ghost.impl&%13.constant.? (Dcr Type Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicI16::well_formed
(declare-fun vstd.atomic_ghost.impl&%15.well_formed.? (Dcr Type Dcr Type Dcr Type Poly)
 Bool
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicI16::constant
(declare-fun vstd.atomic_ghost.impl&%15.constant.? (Dcr Type Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicI8::well_formed
(declare-fun vstd.atomic_ghost.impl&%17.well_formed.? (Dcr Type Dcr Type Dcr Type Poly)
 Bool
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicI8::constant
(declare-fun vstd.atomic_ghost.impl&%17.constant.? (Dcr Type Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicIsize::well_formed
(declare-fun vstd.atomic_ghost.impl&%19.well_formed.? (Dcr Type Dcr Type Dcr Type Poly)
 Bool
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicIsize::constant
(declare-fun vstd.atomic_ghost.impl&%19.constant.? (Dcr Type Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicBool::well_formed
(declare-fun vstd.atomic_ghost.impl&%21.well_formed.? (Dcr Type Dcr Type Dcr Type Poly)
 Bool
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicBool::constant
(declare-fun vstd.atomic_ghost.impl&%21.constant.? (Dcr Type Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicPtr::well_formed
(declare-fun vstd.atomic_ghost.impl&%23.well_formed.? (Dcr Type Dcr Type Dcr Type Dcr
  Type Poly
 ) Bool
)

;; Function-Decl crate::vstd::atomic_ghost::AtomicPtr::constant
(declare-fun vstd.atomic_ghost.impl&%23.constant.? (Dcr Type Dcr Type Dcr Type Dcr
  Type Poly
 ) Poly
)

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

;; Function-Specs crate::vstd::atomic::PAtomicBool::new
(declare-fun ens%vstd.atomic.impl&%1.new. (Bool tuple%2.) Bool)
(assert
 (forall ((i! Bool) (res! tuple%2.)) (!
   (= (ens%vstd.atomic.impl&%1.new. i! res!) (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ TYPE%vstd.atomic.PAtomicBool. (TRACKED
        $
       ) TYPE%vstd.atomic.PermissionBool.
     ))
     (= (vstd.atomic.impl&%0.view.? (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. res!))))
      (vstd.atomic.PermissionDataBool./PermissionDataBool (%I (I (vstd.atomic.impl&%1.id.?
          (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!)))
        ))
       ) (%B (B i!))
   ))))
   :pattern ((ens%vstd.atomic.impl&%1.new. i! res!))
   :qid internal_ens__vstd.atomic.impl&__1.new._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__1.new._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicBool::load
(declare-fun req%vstd.atomic.impl&%1.load. (vstd.atomic.PAtomicBool. vstd.atomic.PermissionBool.)
 Bool
)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicBool.) (perm! vstd.atomic.PermissionBool.)) (!
   (= (req%vstd.atomic.impl&%1.load. self! perm!) (=>
     %%global_location_label%%0
     (= (vstd.atomic.impl&%1.id.? (Poly%vstd.atomic.PAtomicBool. self!)) (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.?
          (Poly%vstd.atomic.PermissionBool. perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%1.load. self! perm!))
   :qid internal_req__vstd.atomic.impl&__1.load._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__1.load._definition
)))
(declare-fun ens%vstd.atomic.impl&%1.load. (vstd.atomic.PAtomicBool. vstd.atomic.PermissionBool.
  Bool
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicBool.) (perm! vstd.atomic.PermissionBool.) (ret!
    Bool
   )
  ) (!
   (= (ens%vstd.atomic.impl&%1.load. self! perm! ret!) (= (vstd.atomic.PermissionDataBool./PermissionDataBool/value
      (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.?
         (Poly%vstd.atomic.PermissionBool. perm!)
      )))
     ) ret!
   ))
   :pattern ((ens%vstd.atomic.impl&%1.load. self! perm! ret!))
   :qid internal_ens__vstd.atomic.impl&__1.load._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__1.load._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicBool::into_inner
(declare-fun req%vstd.atomic.impl&%1.into_inner. (vstd.atomic.PAtomicBool. vstd.atomic.PermissionBool.)
 Bool
)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicBool.) (perm! vstd.atomic.PermissionBool.)) (!
   (= (req%vstd.atomic.impl&%1.into_inner. self! perm!) (=>
     %%global_location_label%%1
     (= (vstd.atomic.impl&%1.id.? (Poly%vstd.atomic.PAtomicBool. self!)) (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.?
          (Poly%vstd.atomic.PermissionBool. perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%1.into_inner. self! perm!))
   :qid internal_req__vstd.atomic.impl&__1.into_inner._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__1.into_inner._definition
)))
(declare-fun ens%vstd.atomic.impl&%1.into_inner. (vstd.atomic.PAtomicBool. vstd.atomic.PermissionBool.
  Bool
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicBool.) (perm! vstd.atomic.PermissionBool.) (ret!
    Bool
   )
  ) (!
   (= (ens%vstd.atomic.impl&%1.into_inner. self! perm! ret!) (= (vstd.atomic.PermissionDataBool./PermissionDataBool/value
      (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.?
         (Poly%vstd.atomic.PermissionBool. perm!)
      )))
     ) ret!
   ))
   :pattern ((ens%vstd.atomic.impl&%1.into_inner. self! perm! ret!))
   :qid internal_ens__vstd.atomic.impl&__1.into_inner._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__1.into_inner._definition
)))

;; Function-Axioms crate::vstd::atomic::PermissionU8::view
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd.atomic.PermissionU8.)
    (has_type (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? self!))
     TYPE%vstd.atomic.PermissionDataU8.
   ))
   :pattern ((vstd.atomic.impl&%2.view.? self!))
   :qid internal_vstd.atomic.impl&__2.view.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic.impl&__2.view.?_pre_post_definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU8::new
(declare-fun ens%vstd.atomic.impl&%3.new. (Int tuple%2.) Bool)
(assert
 (forall ((i! Int) (res! tuple%2.)) (!
   (= (ens%vstd.atomic.impl&%3.new. i! res!) (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ TYPE%vstd.atomic.PAtomicU8. (TRACKED
        $
       ) TYPE%vstd.atomic.PermissionU8.
     ))
     (= (vstd.atomic.impl&%2.view.? (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. res!))))
      (vstd.atomic.PermissionDataU8./PermissionDataU8 (%I (I (vstd.atomic.impl&%3.id.? (tuple%2./tuple%2/0
           (%Poly%tuple%2. (Poly%tuple%2. res!))
        )))
       ) (%I (I i!))
   ))))
   :pattern ((ens%vstd.atomic.impl&%3.new. i! res!))
   :qid internal_ens__vstd.atomic.impl&__3.new._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__3.new._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU8::load
(declare-fun req%vstd.atomic.impl&%3.load. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.)
 Bool
)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (perm! vstd.atomic.PermissionU8.)) (!
   (= (req%vstd.atomic.impl&%3.load. self! perm!) (=>
     %%global_location_label%%2
     (= (vstd.atomic.impl&%3.id.? (Poly%vstd.atomic.PAtomicU8. self!)) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic
       (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
          (Poly%vstd.atomic.PermissionU8. perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%3.load. self! perm!))
   :qid internal_req__vstd.atomic.impl&__3.load._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__3.load._definition
)))
(declare-fun ens%vstd.atomic.impl&%3.load. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (perm! vstd.atomic.PermissionU8.) (ret! Int))
  (!
   (= (ens%vstd.atomic.impl&%3.load. self! perm! ret!) (and
     (uInv 8 ret!)
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           perm!
       ))))
      ) ret!
   )))
   :pattern ((ens%vstd.atomic.impl&%3.load. self! perm! ret!))
   :qid internal_ens__vstd.atomic.impl&__3.load._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__3.load._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU8::into_inner
(declare-fun req%vstd.atomic.impl&%3.into_inner. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.)
 Bool
)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (perm! vstd.atomic.PermissionU8.)) (!
   (= (req%vstd.atomic.impl&%3.into_inner. self! perm!) (=>
     %%global_location_label%%3
     (= (vstd.atomic.impl&%3.id.? (Poly%vstd.atomic.PAtomicU8. self!)) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic
       (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
          (Poly%vstd.atomic.PermissionU8. perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%3.into_inner. self! perm!))
   :qid internal_req__vstd.atomic.impl&__3.into_inner._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__3.into_inner._definition
)))
(declare-fun ens%vstd.atomic.impl&%3.into_inner. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (perm! vstd.atomic.PermissionU8.) (ret! Int))
  (!
   (= (ens%vstd.atomic.impl&%3.into_inner. self! perm! ret!) (and
     (uInv 8 ret!)
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           perm!
       ))))
      ) ret!
   )))
   :pattern ((ens%vstd.atomic.impl&%3.into_inner. self! perm! ret!))
   :qid internal_ens__vstd.atomic.impl&__3.into_inner._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__3.into_inner._definition
)))

;; Function-Axioms crate::vstd::atomic::PermissionU16::view
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd.atomic.PermissionU16.)
    (has_type (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? self!))
     TYPE%vstd.atomic.PermissionDataU16.
   ))
   :pattern ((vstd.atomic.impl&%4.view.? self!))
   :qid internal_vstd.atomic.impl&__4.view.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic.impl&__4.view.?_pre_post_definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU16::new
(declare-fun ens%vstd.atomic.impl&%5.new. (Int tuple%2.) Bool)
(assert
 (forall ((i! Int) (res! tuple%2.)) (!
   (= (ens%vstd.atomic.impl&%5.new. i! res!) (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ TYPE%vstd.atomic.PAtomicU16. (TRACKED
        $
       ) TYPE%vstd.atomic.PermissionU16.
     ))
     (= (vstd.atomic.impl&%4.view.? (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. res!))))
      (vstd.atomic.PermissionDataU16./PermissionDataU16 (%I (I (vstd.atomic.impl&%5.id.? (tuple%2./tuple%2/0
           (%Poly%tuple%2. (Poly%tuple%2. res!))
        )))
       ) (%I (I i!))
   ))))
   :pattern ((ens%vstd.atomic.impl&%5.new. i! res!))
   :qid internal_ens__vstd.atomic.impl&__5.new._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__5.new._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU16::load
(declare-fun req%vstd.atomic.impl&%5.load. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.)
 Bool
)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (perm! vstd.atomic.PermissionU16.)) (!
   (= (req%vstd.atomic.impl&%5.load. self! perm!) (=>
     %%global_location_label%%4
     (= (vstd.atomic.impl&%5.id.? (Poly%vstd.atomic.PAtomicU16. self!)) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic
       (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
          (Poly%vstd.atomic.PermissionU16. perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%5.load. self! perm!))
   :qid internal_req__vstd.atomic.impl&__5.load._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__5.load._definition
)))
(declare-fun ens%vstd.atomic.impl&%5.load. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (perm! vstd.atomic.PermissionU16.) (ret! Int))
  (!
   (= (ens%vstd.atomic.impl&%5.load. self! perm! ret!) (and
     (uInv 16 ret!)
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           perm!
       ))))
      ) ret!
   )))
   :pattern ((ens%vstd.atomic.impl&%5.load. self! perm! ret!))
   :qid internal_ens__vstd.atomic.impl&__5.load._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__5.load._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU16::into_inner
(declare-fun req%vstd.atomic.impl&%5.into_inner. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.)
 Bool
)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (perm! vstd.atomic.PermissionU16.)) (!
   (= (req%vstd.atomic.impl&%5.into_inner. self! perm!) (=>
     %%global_location_label%%5
     (= (vstd.atomic.impl&%5.id.? (Poly%vstd.atomic.PAtomicU16. self!)) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic
       (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
          (Poly%vstd.atomic.PermissionU16. perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%5.into_inner. self! perm!))
   :qid internal_req__vstd.atomic.impl&__5.into_inner._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__5.into_inner._definition
)))
(declare-fun ens%vstd.atomic.impl&%5.into_inner. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (perm! vstd.atomic.PermissionU16.) (ret! Int))
  (!
   (= (ens%vstd.atomic.impl&%5.into_inner. self! perm! ret!) (and
     (uInv 16 ret!)
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           perm!
       ))))
      ) ret!
   )))
   :pattern ((ens%vstd.atomic.impl&%5.into_inner. self! perm! ret!))
   :qid internal_ens__vstd.atomic.impl&__5.into_inner._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__5.into_inner._definition
)))

;; Function-Axioms crate::vstd::atomic::PermissionU32::view
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd.atomic.PermissionU32.)
    (has_type (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? self!))
     TYPE%vstd.atomic.PermissionDataU32.
   ))
   :pattern ((vstd.atomic.impl&%6.view.? self!))
   :qid internal_vstd.atomic.impl&__6.view.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic.impl&__6.view.?_pre_post_definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU32::new
(declare-fun ens%vstd.atomic.impl&%7.new. (Int tuple%2.) Bool)
(assert
 (forall ((i! Int) (res! tuple%2.)) (!
   (= (ens%vstd.atomic.impl&%7.new. i! res!) (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ TYPE%vstd.atomic.PAtomicU32. (TRACKED
        $
       ) TYPE%vstd.atomic.PermissionU32.
     ))
     (= (vstd.atomic.impl&%6.view.? (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. res!))))
      (vstd.atomic.PermissionDataU32./PermissionDataU32 (%I (I (vstd.atomic.impl&%7.id.? (tuple%2./tuple%2/0
           (%Poly%tuple%2. (Poly%tuple%2. res!))
        )))
       ) (%I (I i!))
   ))))
   :pattern ((ens%vstd.atomic.impl&%7.new. i! res!))
   :qid internal_ens__vstd.atomic.impl&__7.new._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__7.new._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU32::load
(declare-fun req%vstd.atomic.impl&%7.load. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.)
 Bool
)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (perm! vstd.atomic.PermissionU32.)) (!
   (= (req%vstd.atomic.impl&%7.load. self! perm!) (=>
     %%global_location_label%%6
     (= (vstd.atomic.impl&%7.id.? (Poly%vstd.atomic.PAtomicU32. self!)) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic
       (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
          (Poly%vstd.atomic.PermissionU32. perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%7.load. self! perm!))
   :qid internal_req__vstd.atomic.impl&__7.load._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__7.load._definition
)))
(declare-fun ens%vstd.atomic.impl&%7.load. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (perm! vstd.atomic.PermissionU32.) (ret! Int))
  (!
   (= (ens%vstd.atomic.impl&%7.load. self! perm! ret!) (and
     (uInv 32 ret!)
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           perm!
       ))))
      ) ret!
   )))
   :pattern ((ens%vstd.atomic.impl&%7.load. self! perm! ret!))
   :qid internal_ens__vstd.atomic.impl&__7.load._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__7.load._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU32::into_inner
(declare-fun req%vstd.atomic.impl&%7.into_inner. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.)
 Bool
)
(declare-const %%global_location_label%%7 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (perm! vstd.atomic.PermissionU32.)) (!
   (= (req%vstd.atomic.impl&%7.into_inner. self! perm!) (=>
     %%global_location_label%%7
     (= (vstd.atomic.impl&%7.id.? (Poly%vstd.atomic.PAtomicU32. self!)) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic
       (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
          (Poly%vstd.atomic.PermissionU32. perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%7.into_inner. self! perm!))
   :qid internal_req__vstd.atomic.impl&__7.into_inner._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__7.into_inner._definition
)))
(declare-fun ens%vstd.atomic.impl&%7.into_inner. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (perm! vstd.atomic.PermissionU32.) (ret! Int))
  (!
   (= (ens%vstd.atomic.impl&%7.into_inner. self! perm! ret!) (and
     (uInv 32 ret!)
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           perm!
       ))))
      ) ret!
   )))
   :pattern ((ens%vstd.atomic.impl&%7.into_inner. self! perm! ret!))
   :qid internal_ens__vstd.atomic.impl&__7.into_inner._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__7.into_inner._definition
)))

;; Function-Axioms crate::vstd::atomic::PermissionU64::view
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd.atomic.PermissionU64.)
    (has_type (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? self!))
     TYPE%vstd.atomic.PermissionDataU64.
   ))
   :pattern ((vstd.atomic.impl&%8.view.? self!))
   :qid internal_vstd.atomic.impl&__8.view.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic.impl&__8.view.?_pre_post_definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU64::new
(declare-fun ens%vstd.atomic.impl&%9.new. (Int tuple%2.) Bool)
(assert
 (forall ((i! Int) (res! tuple%2.)) (!
   (= (ens%vstd.atomic.impl&%9.new. i! res!) (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ TYPE%vstd.atomic.PAtomicU64. (TRACKED
        $
       ) TYPE%vstd.atomic.PermissionU64.
     ))
     (= (vstd.atomic.impl&%8.view.? (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. res!))))
      (vstd.atomic.PermissionDataU64./PermissionDataU64 (%I (I (vstd.atomic.impl&%9.id.? (tuple%2./tuple%2/0
           (%Poly%tuple%2. (Poly%tuple%2. res!))
        )))
       ) (%I (I i!))
   ))))
   :pattern ((ens%vstd.atomic.impl&%9.new. i! res!))
   :qid internal_ens__vstd.atomic.impl&__9.new._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__9.new._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU64::load
(declare-fun req%vstd.atomic.impl&%9.load. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.)
 Bool
)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (perm! vstd.atomic.PermissionU64.)) (!
   (= (req%vstd.atomic.impl&%9.load. self! perm!) (=>
     %%global_location_label%%8
     (= (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. self!)) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
          (Poly%vstd.atomic.PermissionU64. perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%9.load. self! perm!))
   :qid internal_req__vstd.atomic.impl&__9.load._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__9.load._definition
)))
(declare-fun ens%vstd.atomic.impl&%9.load. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (perm! vstd.atomic.PermissionU64.) (ret! Int))
  (!
   (= (ens%vstd.atomic.impl&%9.load. self! perm! ret!) (and
     (uInv 64 ret!)
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           perm!
       ))))
      ) ret!
   )))
   :pattern ((ens%vstd.atomic.impl&%9.load. self! perm! ret!))
   :qid internal_ens__vstd.atomic.impl&__9.load._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__9.load._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU64::into_inner
(declare-fun req%vstd.atomic.impl&%9.into_inner. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.)
 Bool
)
(declare-const %%global_location_label%%9 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (perm! vstd.atomic.PermissionU64.)) (!
   (= (req%vstd.atomic.impl&%9.into_inner. self! perm!) (=>
     %%global_location_label%%9
     (= (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. self!)) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
          (Poly%vstd.atomic.PermissionU64. perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%9.into_inner. self! perm!))
   :qid internal_req__vstd.atomic.impl&__9.into_inner._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__9.into_inner._definition
)))
(declare-fun ens%vstd.atomic.impl&%9.into_inner. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (perm! vstd.atomic.PermissionU64.) (ret! Int))
  (!
   (= (ens%vstd.atomic.impl&%9.into_inner. self! perm! ret!) (and
     (uInv 64 ret!)
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           perm!
       ))))
      ) ret!
   )))
   :pattern ((ens%vstd.atomic.impl&%9.into_inner. self! perm! ret!))
   :qid internal_ens__vstd.atomic.impl&__9.into_inner._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__9.into_inner._definition
)))

;; Function-Axioms crate::vstd::atomic::PermissionUsize::view
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd.atomic.PermissionUsize.)
    (has_type (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? self!))
     TYPE%vstd.atomic.PermissionDataUsize.
   ))
   :pattern ((vstd.atomic.impl&%10.view.? self!))
   :qid internal_vstd.atomic.impl&__10.view.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic.impl&__10.view.?_pre_post_definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicUsize::new
(declare-fun ens%vstd.atomic.impl&%11.new. (Int tuple%2.) Bool)
(assert
 (forall ((i! Int) (res! tuple%2.)) (!
   (= (ens%vstd.atomic.impl&%11.new. i! res!) (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ TYPE%vstd.atomic.PAtomicUsize. (TRACKED
        $
       ) TYPE%vstd.atomic.PermissionUsize.
     ))
     (= (vstd.atomic.impl&%10.view.? (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. res!))))
      (vstd.atomic.PermissionDataUsize./PermissionDataUsize (%I (I (vstd.atomic.impl&%11.id.?
          (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!)))
        ))
       ) (%I (I i!))
   ))))
   :pattern ((ens%vstd.atomic.impl&%11.new. i! res!))
   :qid internal_ens__vstd.atomic.impl&__11.new._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__11.new._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicUsize::load
(declare-fun req%vstd.atomic.impl&%11.load. (vstd.atomic.PAtomicUsize. vstd.atomic.PermissionUsize.)
 Bool
)
(declare-const %%global_location_label%%10 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (perm! vstd.atomic.PermissionUsize.)) (
   !
   (= (req%vstd.atomic.impl&%11.load. self! perm!) (=>
     %%global_location_label%%10
     (= (vstd.atomic.impl&%11.id.? (Poly%vstd.atomic.PAtomicUsize. self!)) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic
       (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
          (Poly%vstd.atomic.PermissionUsize. perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%11.load. self! perm!))
   :qid internal_req__vstd.atomic.impl&__11.load._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__11.load._definition
)))
(declare-fun ens%vstd.atomic.impl&%11.load. (vstd.atomic.PAtomicUsize. vstd.atomic.PermissionUsize.
  Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (perm! vstd.atomic.PermissionUsize.) (ret!
    Int
   )
  ) (!
   (= (ens%vstd.atomic.impl&%11.load. self! perm! ret!) (and
     (uInv SZ ret!)
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           perm!
       ))))
      ) ret!
   )))
   :pattern ((ens%vstd.atomic.impl&%11.load. self! perm! ret!))
   :qid internal_ens__vstd.atomic.impl&__11.load._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__11.load._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicUsize::into_inner
(declare-fun req%vstd.atomic.impl&%11.into_inner. (vstd.atomic.PAtomicUsize. vstd.atomic.PermissionUsize.)
 Bool
)
(declare-const %%global_location_label%%11 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (perm! vstd.atomic.PermissionUsize.)) (
   !
   (= (req%vstd.atomic.impl&%11.into_inner. self! perm!) (=>
     %%global_location_label%%11
     (= (vstd.atomic.impl&%11.id.? (Poly%vstd.atomic.PAtomicUsize. self!)) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic
       (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
          (Poly%vstd.atomic.PermissionUsize. perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%11.into_inner. self! perm!))
   :qid internal_req__vstd.atomic.impl&__11.into_inner._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__11.into_inner._definition
)))
(declare-fun ens%vstd.atomic.impl&%11.into_inner. (vstd.atomic.PAtomicUsize. vstd.atomic.PermissionUsize.
  Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (perm! vstd.atomic.PermissionUsize.) (ret!
    Int
   )
  ) (!
   (= (ens%vstd.atomic.impl&%11.into_inner. self! perm! ret!) (and
     (uInv SZ ret!)
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           perm!
       ))))
      ) ret!
   )))
   :pattern ((ens%vstd.atomic.impl&%11.into_inner. self! perm! ret!))
   :qid internal_ens__vstd.atomic.impl&__11.into_inner._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__11.into_inner._definition
)))

;; Function-Axioms crate::vstd::atomic::PermissionI8::view
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd.atomic.PermissionI8.)
    (has_type (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? self!))
     TYPE%vstd.atomic.PermissionDataI8.
   ))
   :pattern ((vstd.atomic.impl&%12.view.? self!))
   :qid internal_vstd.atomic.impl&__12.view.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic.impl&__12.view.?_pre_post_definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI8::new
(declare-fun ens%vstd.atomic.impl&%13.new. (Int tuple%2.) Bool)
(assert
 (forall ((i! Int) (res! tuple%2.)) (!
   (= (ens%vstd.atomic.impl&%13.new. i! res!) (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ TYPE%vstd.atomic.PAtomicI8. (TRACKED
        $
       ) TYPE%vstd.atomic.PermissionI8.
     ))
     (= (vstd.atomic.impl&%12.view.? (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. res!))))
      (vstd.atomic.PermissionDataI8./PermissionDataI8 (%I (I (vstd.atomic.impl&%13.id.? (tuple%2./tuple%2/0
           (%Poly%tuple%2. (Poly%tuple%2. res!))
        )))
       ) (%I (I i!))
   ))))
   :pattern ((ens%vstd.atomic.impl&%13.new. i! res!))
   :qid internal_ens__vstd.atomic.impl&__13.new._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__13.new._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI8::load
(declare-fun req%vstd.atomic.impl&%13.load. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.)
 Bool
)
(declare-const %%global_location_label%%12 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (perm! vstd.atomic.PermissionI8.)) (!
   (= (req%vstd.atomic.impl&%13.load. self! perm!) (=>
     %%global_location_label%%12
     (= (vstd.atomic.impl&%13.id.? (Poly%vstd.atomic.PAtomicI8. self!)) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic
       (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
          (Poly%vstd.atomic.PermissionI8. perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%13.load. self! perm!))
   :qid internal_req__vstd.atomic.impl&__13.load._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__13.load._definition
)))
(declare-fun ens%vstd.atomic.impl&%13.load. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (perm! vstd.atomic.PermissionI8.) (ret! Int))
  (!
   (= (ens%vstd.atomic.impl&%13.load. self! perm! ret!) (and
     (iInv 8 ret!)
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           perm!
       ))))
      ) ret!
   )))
   :pattern ((ens%vstd.atomic.impl&%13.load. self! perm! ret!))
   :qid internal_ens__vstd.atomic.impl&__13.load._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__13.load._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI8::into_inner
(declare-fun req%vstd.atomic.impl&%13.into_inner. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.)
 Bool
)
(declare-const %%global_location_label%%13 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (perm! vstd.atomic.PermissionI8.)) (!
   (= (req%vstd.atomic.impl&%13.into_inner. self! perm!) (=>
     %%global_location_label%%13
     (= (vstd.atomic.impl&%13.id.? (Poly%vstd.atomic.PAtomicI8. self!)) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic
       (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
          (Poly%vstd.atomic.PermissionI8. perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%13.into_inner. self! perm!))
   :qid internal_req__vstd.atomic.impl&__13.into_inner._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__13.into_inner._definition
)))
(declare-fun ens%vstd.atomic.impl&%13.into_inner. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (perm! vstd.atomic.PermissionI8.) (ret! Int))
  (!
   (= (ens%vstd.atomic.impl&%13.into_inner. self! perm! ret!) (and
     (iInv 8 ret!)
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           perm!
       ))))
      ) ret!
   )))
   :pattern ((ens%vstd.atomic.impl&%13.into_inner. self! perm! ret!))
   :qid internal_ens__vstd.atomic.impl&__13.into_inner._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__13.into_inner._definition
)))

;; Function-Axioms crate::vstd::atomic::PermissionI16::view
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd.atomic.PermissionI16.)
    (has_type (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? self!))
     TYPE%vstd.atomic.PermissionDataI16.
   ))
   :pattern ((vstd.atomic.impl&%14.view.? self!))
   :qid internal_vstd.atomic.impl&__14.view.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic.impl&__14.view.?_pre_post_definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI16::new
(declare-fun ens%vstd.atomic.impl&%15.new. (Int tuple%2.) Bool)
(assert
 (forall ((i! Int) (res! tuple%2.)) (!
   (= (ens%vstd.atomic.impl&%15.new. i! res!) (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ TYPE%vstd.atomic.PAtomicI16. (TRACKED
        $
       ) TYPE%vstd.atomic.PermissionI16.
     ))
     (= (vstd.atomic.impl&%14.view.? (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. res!))))
      (vstd.atomic.PermissionDataI16./PermissionDataI16 (%I (I (vstd.atomic.impl&%15.id.? (
           tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))
        )))
       ) (%I (I i!))
   ))))
   :pattern ((ens%vstd.atomic.impl&%15.new. i! res!))
   :qid internal_ens__vstd.atomic.impl&__15.new._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__15.new._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI16::load
(declare-fun req%vstd.atomic.impl&%15.load. (vstd.atomic.PAtomicI16. vstd.atomic.PermissionI16.)
 Bool
)
(declare-const %%global_location_label%%14 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (perm! vstd.atomic.PermissionI16.)) (!
   (= (req%vstd.atomic.impl&%15.load. self! perm!) (=>
     %%global_location_label%%14
     (= (vstd.atomic.impl&%15.id.? (Poly%vstd.atomic.PAtomicI16. self!)) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic
       (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
          (Poly%vstd.atomic.PermissionI16. perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%15.load. self! perm!))
   :qid internal_req__vstd.atomic.impl&__15.load._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__15.load._definition
)))
(declare-fun ens%vstd.atomic.impl&%15.load. (vstd.atomic.PAtomicI16. vstd.atomic.PermissionI16.
  Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (perm! vstd.atomic.PermissionI16.) (ret! Int))
  (!
   (= (ens%vstd.atomic.impl&%15.load. self! perm! ret!) (and
     (iInv 16 ret!)
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           perm!
       ))))
      ) ret!
   )))
   :pattern ((ens%vstd.atomic.impl&%15.load. self! perm! ret!))
   :qid internal_ens__vstd.atomic.impl&__15.load._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__15.load._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI16::into_inner
(declare-fun req%vstd.atomic.impl&%15.into_inner. (vstd.atomic.PAtomicI16. vstd.atomic.PermissionI16.)
 Bool
)
(declare-const %%global_location_label%%15 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (perm! vstd.atomic.PermissionI16.)) (!
   (= (req%vstd.atomic.impl&%15.into_inner. self! perm!) (=>
     %%global_location_label%%15
     (= (vstd.atomic.impl&%15.id.? (Poly%vstd.atomic.PAtomicI16. self!)) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic
       (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
          (Poly%vstd.atomic.PermissionI16. perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%15.into_inner. self! perm!))
   :qid internal_req__vstd.atomic.impl&__15.into_inner._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__15.into_inner._definition
)))
(declare-fun ens%vstd.atomic.impl&%15.into_inner. (vstd.atomic.PAtomicI16. vstd.atomic.PermissionI16.
  Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (perm! vstd.atomic.PermissionI16.) (ret! Int))
  (!
   (= (ens%vstd.atomic.impl&%15.into_inner. self! perm! ret!) (and
     (iInv 16 ret!)
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           perm!
       ))))
      ) ret!
   )))
   :pattern ((ens%vstd.atomic.impl&%15.into_inner. self! perm! ret!))
   :qid internal_ens__vstd.atomic.impl&__15.into_inner._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__15.into_inner._definition
)))

;; Function-Axioms crate::vstd::atomic::PermissionI32::view
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd.atomic.PermissionI32.)
    (has_type (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? self!))
     TYPE%vstd.atomic.PermissionDataI32.
   ))
   :pattern ((vstd.atomic.impl&%16.view.? self!))
   :qid internal_vstd.atomic.impl&__16.view.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic.impl&__16.view.?_pre_post_definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI32::new
(declare-fun ens%vstd.atomic.impl&%17.new. (Int tuple%2.) Bool)
(assert
 (forall ((i! Int) (res! tuple%2.)) (!
   (= (ens%vstd.atomic.impl&%17.new. i! res!) (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ TYPE%vstd.atomic.PAtomicI32. (TRACKED
        $
       ) TYPE%vstd.atomic.PermissionI32.
     ))
     (= (vstd.atomic.impl&%16.view.? (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. res!))))
      (vstd.atomic.PermissionDataI32./PermissionDataI32 (%I (I (vstd.atomic.impl&%17.id.? (
           tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))
        )))
       ) (%I (I i!))
   ))))
   :pattern ((ens%vstd.atomic.impl&%17.new. i! res!))
   :qid internal_ens__vstd.atomic.impl&__17.new._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__17.new._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI32::load
(declare-fun req%vstd.atomic.impl&%17.load. (vstd.atomic.PAtomicI32. vstd.atomic.PermissionI32.)
 Bool
)
(declare-const %%global_location_label%%16 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (perm! vstd.atomic.PermissionI32.)) (!
   (= (req%vstd.atomic.impl&%17.load. self! perm!) (=>
     %%global_location_label%%16
     (= (vstd.atomic.impl&%17.id.? (Poly%vstd.atomic.PAtomicI32. self!)) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic
       (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
          (Poly%vstd.atomic.PermissionI32. perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%17.load. self! perm!))
   :qid internal_req__vstd.atomic.impl&__17.load._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__17.load._definition
)))
(declare-fun ens%vstd.atomic.impl&%17.load. (vstd.atomic.PAtomicI32. vstd.atomic.PermissionI32.
  Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (perm! vstd.atomic.PermissionI32.) (ret! Int))
  (!
   (= (ens%vstd.atomic.impl&%17.load. self! perm! ret!) (and
     (iInv 32 ret!)
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           perm!
       ))))
      ) ret!
   )))
   :pattern ((ens%vstd.atomic.impl&%17.load. self! perm! ret!))
   :qid internal_ens__vstd.atomic.impl&__17.load._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__17.load._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI32::into_inner
(declare-fun req%vstd.atomic.impl&%17.into_inner. (vstd.atomic.PAtomicI32. vstd.atomic.PermissionI32.)
 Bool
)
(declare-const %%global_location_label%%17 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (perm! vstd.atomic.PermissionI32.)) (!
   (= (req%vstd.atomic.impl&%17.into_inner. self! perm!) (=>
     %%global_location_label%%17
     (= (vstd.atomic.impl&%17.id.? (Poly%vstd.atomic.PAtomicI32. self!)) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic
       (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
          (Poly%vstd.atomic.PermissionI32. perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%17.into_inner. self! perm!))
   :qid internal_req__vstd.atomic.impl&__17.into_inner._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__17.into_inner._definition
)))
(declare-fun ens%vstd.atomic.impl&%17.into_inner. (vstd.atomic.PAtomicI32. vstd.atomic.PermissionI32.
  Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (perm! vstd.atomic.PermissionI32.) (ret! Int))
  (!
   (= (ens%vstd.atomic.impl&%17.into_inner. self! perm! ret!) (and
     (iInv 32 ret!)
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           perm!
       ))))
      ) ret!
   )))
   :pattern ((ens%vstd.atomic.impl&%17.into_inner. self! perm! ret!))
   :qid internal_ens__vstd.atomic.impl&__17.into_inner._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__17.into_inner._definition
)))

;; Function-Axioms crate::vstd::atomic::PermissionI64::view
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd.atomic.PermissionI64.)
    (has_type (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? self!))
     TYPE%vstd.atomic.PermissionDataI64.
   ))
   :pattern ((vstd.atomic.impl&%18.view.? self!))
   :qid internal_vstd.atomic.impl&__18.view.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic.impl&__18.view.?_pre_post_definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI64::new
(declare-fun ens%vstd.atomic.impl&%19.new. (Int tuple%2.) Bool)
(assert
 (forall ((i! Int) (res! tuple%2.)) (!
   (= (ens%vstd.atomic.impl&%19.new. i! res!) (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ TYPE%vstd.atomic.PAtomicI64. (TRACKED
        $
       ) TYPE%vstd.atomic.PermissionI64.
     ))
     (= (vstd.atomic.impl&%18.view.? (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. res!))))
      (vstd.atomic.PermissionDataI64./PermissionDataI64 (%I (I (vstd.atomic.impl&%19.id.? (
           tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))
        )))
       ) (%I (I i!))
   ))))
   :pattern ((ens%vstd.atomic.impl&%19.new. i! res!))
   :qid internal_ens__vstd.atomic.impl&__19.new._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__19.new._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI64::load
(declare-fun req%vstd.atomic.impl&%19.load. (vstd.atomic.PAtomicI64. vstd.atomic.PermissionI64.)
 Bool
)
(declare-const %%global_location_label%%18 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (perm! vstd.atomic.PermissionI64.)) (!
   (= (req%vstd.atomic.impl&%19.load. self! perm!) (=>
     %%global_location_label%%18
     (= (vstd.atomic.impl&%19.id.? (Poly%vstd.atomic.PAtomicI64. self!)) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic
       (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
          (Poly%vstd.atomic.PermissionI64. perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%19.load. self! perm!))
   :qid internal_req__vstd.atomic.impl&__19.load._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__19.load._definition
)))
(declare-fun ens%vstd.atomic.impl&%19.load. (vstd.atomic.PAtomicI64. vstd.atomic.PermissionI64.
  Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (perm! vstd.atomic.PermissionI64.) (ret! Int))
  (!
   (= (ens%vstd.atomic.impl&%19.load. self! perm! ret!) (and
     (iInv 64 ret!)
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           perm!
       ))))
      ) ret!
   )))
   :pattern ((ens%vstd.atomic.impl&%19.load. self! perm! ret!))
   :qid internal_ens__vstd.atomic.impl&__19.load._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__19.load._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI64::into_inner
(declare-fun req%vstd.atomic.impl&%19.into_inner. (vstd.atomic.PAtomicI64. vstd.atomic.PermissionI64.)
 Bool
)
(declare-const %%global_location_label%%19 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (perm! vstd.atomic.PermissionI64.)) (!
   (= (req%vstd.atomic.impl&%19.into_inner. self! perm!) (=>
     %%global_location_label%%19
     (= (vstd.atomic.impl&%19.id.? (Poly%vstd.atomic.PAtomicI64. self!)) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic
       (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
          (Poly%vstd.atomic.PermissionI64. perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%19.into_inner. self! perm!))
   :qid internal_req__vstd.atomic.impl&__19.into_inner._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__19.into_inner._definition
)))
(declare-fun ens%vstd.atomic.impl&%19.into_inner. (vstd.atomic.PAtomicI64. vstd.atomic.PermissionI64.
  Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (perm! vstd.atomic.PermissionI64.) (ret! Int))
  (!
   (= (ens%vstd.atomic.impl&%19.into_inner. self! perm! ret!) (and
     (iInv 64 ret!)
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           perm!
       ))))
      ) ret!
   )))
   :pattern ((ens%vstd.atomic.impl&%19.into_inner. self! perm! ret!))
   :qid internal_ens__vstd.atomic.impl&__19.into_inner._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__19.into_inner._definition
)))

;; Function-Axioms crate::vstd::atomic::PermissionIsize::view
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd.atomic.PermissionIsize.)
    (has_type (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? self!))
     TYPE%vstd.atomic.PermissionDataIsize.
   ))
   :pattern ((vstd.atomic.impl&%20.view.? self!))
   :qid internal_vstd.atomic.impl&__20.view.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic.impl&__20.view.?_pre_post_definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicIsize::new
(declare-fun ens%vstd.atomic.impl&%21.new. (Int tuple%2.) Bool)
(assert
 (forall ((i! Int) (res! tuple%2.)) (!
   (= (ens%vstd.atomic.impl&%21.new. i! res!) (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ TYPE%vstd.atomic.PAtomicIsize. (TRACKED
        $
       ) TYPE%vstd.atomic.PermissionIsize.
     ))
     (= (vstd.atomic.impl&%20.view.? (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. res!))))
      (vstd.atomic.PermissionDataIsize./PermissionDataIsize (%I (I (vstd.atomic.impl&%21.id.?
          (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!)))
        ))
       ) (%I (I i!))
   ))))
   :pattern ((ens%vstd.atomic.impl&%21.new. i! res!))
   :qid internal_ens__vstd.atomic.impl&__21.new._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__21.new._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicIsize::load
(declare-fun req%vstd.atomic.impl&%21.load. (vstd.atomic.PAtomicIsize. vstd.atomic.PermissionIsize.)
 Bool
)
(declare-const %%global_location_label%%20 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (perm! vstd.atomic.PermissionIsize.)) (
   !
   (= (req%vstd.atomic.impl&%21.load. self! perm!) (=>
     %%global_location_label%%20
     (= (vstd.atomic.impl&%21.id.? (Poly%vstd.atomic.PAtomicIsize. self!)) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
          (Poly%vstd.atomic.PermissionIsize. perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%21.load. self! perm!))
   :qid internal_req__vstd.atomic.impl&__21.load._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__21.load._definition
)))
(declare-fun ens%vstd.atomic.impl&%21.load. (vstd.atomic.PAtomicIsize. vstd.atomic.PermissionIsize.
  Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (perm! vstd.atomic.PermissionIsize.) (ret!
    Int
   )
  ) (!
   (= (ens%vstd.atomic.impl&%21.load. self! perm! ret!) (and
     (iInv SZ ret!)
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           perm!
       ))))
      ) ret!
   )))
   :pattern ((ens%vstd.atomic.impl&%21.load. self! perm! ret!))
   :qid internal_ens__vstd.atomic.impl&__21.load._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__21.load._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicIsize::into_inner
(declare-fun req%vstd.atomic.impl&%21.into_inner. (vstd.atomic.PAtomicIsize. vstd.atomic.PermissionIsize.)
 Bool
)
(declare-const %%global_location_label%%21 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (perm! vstd.atomic.PermissionIsize.)) (
   !
   (= (req%vstd.atomic.impl&%21.into_inner. self! perm!) (=>
     %%global_location_label%%21
     (= (vstd.atomic.impl&%21.id.? (Poly%vstd.atomic.PAtomicIsize. self!)) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
          (Poly%vstd.atomic.PermissionIsize. perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%21.into_inner. self! perm!))
   :qid internal_req__vstd.atomic.impl&__21.into_inner._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__21.into_inner._definition
)))
(declare-fun ens%vstd.atomic.impl&%21.into_inner. (vstd.atomic.PAtomicIsize. vstd.atomic.PermissionIsize.
  Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (perm! vstd.atomic.PermissionIsize.) (ret!
    Int
   )
  ) (!
   (= (ens%vstd.atomic.impl&%21.into_inner. self! perm! ret!) (and
     (iInv SZ ret!)
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           perm!
       ))))
      ) ret!
   )))
   :pattern ((ens%vstd.atomic.impl&%21.into_inner. self! perm! ret!))
   :qid internal_ens__vstd.atomic.impl&__21.into_inner._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__21.into_inner._definition
)))

;; Function-Axioms crate::vstd::atomic::PermissionPtr::view
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.atomic.PermissionPtr. T&. T&))
    (has_type (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& self!))
     (TYPE%vstd.atomic.PermissionDataPtr. T&. T&)
   ))
   :pattern ((vstd.atomic.impl&%22.view.? T&. T& self!))
   :qid internal_vstd.atomic.impl&__22.view.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic.impl&__22.view.?_pre_post_definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicPtr::new
(declare-fun ens%vstd.atomic.impl&%23.new. (Dcr Type Poly tuple%2.) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (i! Poly) (res! tuple%2.)) (!
   (= (ens%vstd.atomic.impl&%23.new. T&. T& i! res!) (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ (TYPE%vstd.atomic.PAtomicPtr. T&. T&)
       (TRACKED $) (TYPE%vstd.atomic.PermissionPtr. T&. T&)
     ))
     (= (vstd.atomic.impl&%22.view.? T&. T& (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2.
          res!
       )))
      ) (vstd.atomic.PermissionDataPtr./PermissionDataPtr (%I (I (vstd.atomic.impl&%23.id.?
          T&. T& (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!)))
        ))
       ) i!
   ))))
   :pattern ((ens%vstd.atomic.impl&%23.new. T&. T& i! res!))
   :qid internal_ens__vstd.atomic.impl&__23.new._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__23.new._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicPtr::load
(declare-fun req%vstd.atomic.impl&%23.load. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%22 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly) (perm! Poly)) (!
   (= (req%vstd.atomic.impl&%23.load. T&. T& self! perm!) (=>
     %%global_location_label%%22
     (= (vstd.atomic.impl&%23.id.? T&. T& self!) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/patomic
       (%Poly%vstd.atomic.PermissionDataPtr. (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.?
          T&. T& perm!
   )))))))
   :pattern ((req%vstd.atomic.impl&%23.load. T&. T& self! perm!))
   :qid internal_req__vstd.atomic.impl&__23.load._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__23.load._definition
)))
(declare-fun ens%vstd.atomic.impl&%23.load. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly) (perm! Poly) (ret! Poly)) (!
   (= (ens%vstd.atomic.impl&%23.load. T&. T& self! perm! ret!) (and
     (has_type ret! (PTR T&. T&))
     (= (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
        (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& perm!))
       )
      ) ret!
   )))
   :pattern ((ens%vstd.atomic.impl&%23.load. T&. T& self! perm! ret!))
   :qid internal_ens__vstd.atomic.impl&__23.load._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__23.load._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicPtr::into_inner
(declare-fun req%vstd.atomic.impl&%23.into_inner. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%23 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly) (perm! Poly)) (!
   (= (req%vstd.atomic.impl&%23.into_inner. T&. T& self! perm!) (=>
     %%global_location_label%%23
     (= (vstd.atomic.impl&%23.id.? T&. T& self!) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/patomic
       (%Poly%vstd.atomic.PermissionDataPtr. (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.?
          T&. T& perm!
   )))))))
   :pattern ((req%vstd.atomic.impl&%23.into_inner. T&. T& self! perm!))
   :qid internal_req__vstd.atomic.impl&__23.into_inner._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__23.into_inner._definition
)))
(declare-fun ens%vstd.atomic.impl&%23.into_inner. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly) (perm! Poly) (ret! Poly)) (!
   (= (ens%vstd.atomic.impl&%23.into_inner. T&. T& self! perm! ret!) (and
     (has_type ret! (PTR T&. T&))
     (= (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
        (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& perm!))
       )
      ) ret!
   )))
   :pattern ((ens%vstd.atomic.impl&%23.into_inner. T&. T& self! perm! ret!))
   :qid internal_ens__vstd.atomic.impl&__23.into_inner._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__23.into_inner._definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicInvariantPredicate::atomic_inv
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (G&. Dcr)
   (G& Type) (k! Poly) (v! Poly) (g! Poly)
  ) (!
   (=>
    (and
     (has_type k! K&)
     (has_type v! V&)
     (has_type g! G&)
    )
    (has_type (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Self%&. Self%& K&.
      K& V&. V& G&. G& k! v! g!
     ) BOOL
   ))
   :pattern ((vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Self%&. Self%& K&.
     K& V&. V& G&. G& k! v! g!
   ))
   :qid internal_vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::invariant::AtomicInvariant::constant
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.invariant.AtomicInvariant. K&. K& V&. V& Pred&. Pred&))
    (has_type (vstd.invariant.impl&%0.constant.? K&. K& V&. V& Pred&. Pred& self!) K&)
   )
   :pattern ((vstd.invariant.impl&%0.constant.? K&. K& V&. V& Pred&. Pred& self!))
   :qid internal_vstd.invariant.impl&__0.constant.?_pre_post_definition
   :skolemid skolem_internal_vstd.invariant.impl&__0.constant.?_pre_post_definition
)))

;; Function-Specs crate::vstd::invariant::AtomicInvariant::new
(declare-fun req%vstd.invariant.impl&%0.new. (Dcr Type Dcr Type Dcr Type Poly Poly
  Int
 ) Bool
)
(declare-const %%global_location_label%%24 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (v! Poly) (ns! Int)
  ) (!
   (= (req%vstd.invariant.impl&%0.new. K&. K& V&. V& Pred&. Pred& k! v! ns!) (=>
     %%global_location_label%%24
     (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& k! v!))
   ))
   :pattern ((req%vstd.invariant.impl&%0.new. K&. K& V&. V& Pred&. Pred& k! v! ns!))
   :qid internal_req__vstd.invariant.impl&__0.new._definition
   :skolemid skolem_internal_req__vstd.invariant.impl&__0.new._definition
)))
(declare-fun ens%vstd.invariant.impl&%0.new. (Dcr Type Dcr Type Dcr Type Poly Poly
  Int Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (v! Poly) (ns! Int) (i! Poly)
  ) (!
   (= (ens%vstd.invariant.impl&%0.new. K&. K& V&. V& Pred&. Pred& k! v! ns! i!) (and
     (has_type i! (TYPE%vstd.invariant.AtomicInvariant. K&. K& V&. V& Pred&. Pred&))
     (= (vstd.invariant.impl&%0.constant.? K&. K& V&. V& Pred&. Pred& i!) k!)
     (= (vstd!invariant.AtomicInvariant.namespace.? K&. K& V&. V& Pred&. Pred& i!) ns!)
   ))
   :pattern ((ens%vstd.invariant.impl&%0.new. K&. K& V&. V& Pred&. Pred& k! v! ns! i!))
   :qid internal_ens__vstd.invariant.impl&__0.new._definition
   :skolemid skolem_internal_ens__vstd.invariant.impl&__0.new._definition
)))

;; Function-Axioms vstd::invariant::AtomicInvariant::inv
(assert
 (fuel_bool_default fuel%vstd!invariant.AtomicInvariant.inv.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!invariant.AtomicInvariant.inv.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)
    (v! Poly)
   ) (!
    (= (vstd!invariant.AtomicInvariant.inv.? K&. K& V&. V& Pred&. Pred& self! v!) (%B (
       vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& (vstd.invariant.impl&%0.constant.?
        K&. K& V&. V& Pred&. Pred& self!
       ) v!
    )))
    :pattern ((vstd!invariant.AtomicInvariant.inv.? K&. K& V&. V& Pred&. Pred& self! v!))
    :qid internal_vstd!invariant.AtomicInvariant.inv.?_definition
    :skolemid skolem_internal_vstd!invariant.AtomicInvariant.inv.?_definition
))))

;; Function-Specs crate::vstd::invariant::AtomicInvariant::into_inner
(declare-fun openinv%0%vstd.invariant.impl&%0.into_inner. (Dcr Type Dcr Type Dcr Type
  Poly
 ) Int
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (= (openinv%0%vstd.invariant.impl&%0.into_inner. K&. K& V&. V& Pred&. Pred& self!)
    (vstd!invariant.AtomicInvariant.namespace.? K&. K& V&. V& Pred&. Pred& self!)
   )
   :pattern ((openinv%0%vstd.invariant.impl&%0.into_inner. K&. K& V&. V& Pred&. Pred&
     self!
   ))
   :qid internal_openinv__0__vstd.invariant.impl&__0.into_inner._definition
   :skolemid skolem_internal_openinv__0__vstd.invariant.impl&__0.into_inner._definition
)))
(declare-fun ens%vstd.invariant.impl&%0.into_inner. (Dcr Type Dcr Type Dcr Type Poly
  Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)
   (v! Poly)
  ) (!
   (= (ens%vstd.invariant.impl&%0.into_inner. K&. K& V&. V& Pred&. Pred& self! v!) (and
     (has_type v! V&)
     (vstd!invariant.AtomicInvariant.inv.? K&. K& V&. V& Pred&. Pred& self! v!)
   ))
   :pattern ((ens%vstd.invariant.impl&%0.into_inner. K&. K& V&. V& Pred&. Pred& self!
     v!
   ))
   :qid internal_ens__vstd.invariant.impl&__0.into_inner._definition
   :skolemid skolem_internal_ens__vstd.invariant.impl&__0.into_inner._definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicPredU64::inv
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%0.inv.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%0.inv.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k_loc! Poly)
    (perm_g! Poly)
   ) (!
    (=>
     (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (UINT 64)
      G&. G&
     )
     (= (vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredU64.
        Pred&. Pred&
       ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64.
        G&. G&
       ) k_loc! perm_g!
      ) (B (let
        ((k$ (tuple%2./tuple%2/0 (%Poly%tuple%2. k_loc!))))
        (let
         ((loc$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. k_loc!)))))
         (let
          ((perm$ (%Poly%vstd.atomic.PermissionU64. (tuple%2./tuple%2/0 (%Poly%tuple%2. perm_g!)))))
          (let
           ((g$ (tuple%2./tuple%2/1 (%Poly%tuple%2. perm_g!))))
           (and
            (= (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
               (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
                  perm$
              ))))
             ) loc$
            )
            (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
              (UINT 64) G&. G& k$ (I (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
                 (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
                    perm$
               )))))
              ) g$
    ))))))))))
    :pattern ((vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredU64.
       Pred&. Pred&
      ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64.
       G&. G&
      ) k_loc! perm_g!
    ))
    :qid internal_vstd.invariant.InvariantPredicate.inv.?_definition
    :skolemid skolem_internal_vstd.invariant.InvariantPredicate.inv.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (UINT 64)
     G&. G&
    )
    (tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredU64.
      Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64.
      G&. G&
   )))
   :pattern ((tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredU64.
      Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64.
      G&. G&
   )))
   :qid internal_crate__vstd__atomic_ghost__impl&__0_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__impl&__0_trait_impl_definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicU64::well_formed
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%1.well_formed.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%1.well_formed.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.atomic_ghost.impl&%1.well_formed.? K&. K& G&. G& Pred&. Pred& self!) (= (%I
       (tuple%2./tuple%2/1 (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2.
           K&. K& $ INT
          ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredU64.
           Pred&. Pred&
          ) (vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU64.
            self!
       )))))
      ) (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. (vstd.atomic_ghost.AtomicU64./AtomicU64/patomic
         (%Poly%vstd.atomic_ghost.AtomicU64. self!)
    )))))
    :pattern ((vstd.atomic_ghost.impl&%1.well_formed.? K&. K& G&. G& Pred&. Pred& self!))
    :qid internal_vstd.atomic_ghost.impl&__1.well_formed.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__1.well_formed.?_definition
))))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicU64::constant
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%1.constant.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%1.constant.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.atomic_ghost.impl&%1.constant.? K&. K& G&. G& Pred&. Pred& self!) (tuple%2./tuple%2/0
      (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2. K&. K& $ INT) $
        (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredU64.
         Pred&. Pred&
        ) (vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU64.
          self!
    ))))))
    :pattern ((vstd.atomic_ghost.impl&%1.constant.? K&. K& G&. G& Pred&. Pred& self!))
    :qid internal_vstd.atomic_ghost.impl&__1.constant.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__1.constant.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.atomic_ghost.AtomicU64. K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.impl&%1.constant.? K&. K& G&. G& Pred&. Pred& self!)
     K&
   ))
   :pattern ((vstd.atomic_ghost.impl&%1.constant.? K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_vstd.atomic_ghost.impl&__1.constant.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic_ghost.impl&__1.constant.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicPredU32::inv
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%2.inv.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%2.inv.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k_loc! Poly)
    (perm_g! Poly)
   ) (!
    (=>
     (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (UINT 32)
      G&. G&
     )
     (= (vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredU32.
        Pred&. Pred&
       ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU32.
        G&. G&
       ) k_loc! perm_g!
      ) (B (let
        ((k$ (tuple%2./tuple%2/0 (%Poly%tuple%2. k_loc!))))
        (let
         ((loc$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. k_loc!)))))
         (let
          ((perm$ (%Poly%vstd.atomic.PermissionU32. (tuple%2./tuple%2/0 (%Poly%tuple%2. perm_g!)))))
          (let
           ((g$ (tuple%2./tuple%2/1 (%Poly%tuple%2. perm_g!))))
           (and
            (= (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic (%Poly%vstd.atomic.PermissionDataU32.
               (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
                  perm$
              ))))
             ) loc$
            )
            (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
              (UINT 32) G&. G& k$ (I (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
                 (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
                    perm$
               )))))
              ) g$
    ))))))))))
    :pattern ((vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredU32.
       Pred&. Pred&
      ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU32.
       G&. G&
      ) k_loc! perm_g!
    ))
    :qid internal_vstd.invariant.InvariantPredicate.inv.?_definition
    :skolemid skolem_internal_vstd.invariant.InvariantPredicate.inv.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (UINT 32)
     G&. G&
    )
    (tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredU32.
      Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU32.
      G&. G&
   )))
   :pattern ((tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredU32.
      Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU32.
      G&. G&
   )))
   :qid internal_crate__vstd__atomic_ghost__impl&__2_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__impl&__2_trait_impl_definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicU32::well_formed
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%3.well_formed.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%3.well_formed.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.atomic_ghost.impl&%3.well_formed.? K&. K& G&. G& Pred&. Pred& self!) (= (%I
       (tuple%2./tuple%2/1 (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2.
           K&. K& $ INT
          ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU32. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredU32.
           Pred&. Pred&
          ) (vstd.atomic_ghost.AtomicU32./AtomicU32/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU32.
            self!
       )))))
      ) (vstd.atomic.impl&%7.id.? (Poly%vstd.atomic.PAtomicU32. (vstd.atomic_ghost.AtomicU32./AtomicU32/patomic
         (%Poly%vstd.atomic_ghost.AtomicU32. self!)
    )))))
    :pattern ((vstd.atomic_ghost.impl&%3.well_formed.? K&. K& G&. G& Pred&. Pred& self!))
    :qid internal_vstd.atomic_ghost.impl&__3.well_formed.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__3.well_formed.?_definition
))))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicU32::constant
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%3.constant.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%3.constant.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.atomic_ghost.impl&%3.constant.? K&. K& G&. G& Pred&. Pred& self!) (tuple%2./tuple%2/0
      (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2. K&. K& $ INT) $
        (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU32. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredU32.
         Pred&. Pred&
        ) (vstd.atomic_ghost.AtomicU32./AtomicU32/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU32.
          self!
    ))))))
    :pattern ((vstd.atomic_ghost.impl&%3.constant.? K&. K& G&. G& Pred&. Pred& self!))
    :qid internal_vstd.atomic_ghost.impl&__3.constant.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__3.constant.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.atomic_ghost.AtomicU32. K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.impl&%3.constant.? K&. K& G&. G& Pred&. Pred& self!)
     K&
   ))
   :pattern ((vstd.atomic_ghost.impl&%3.constant.? K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_vstd.atomic_ghost.impl&__3.constant.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic_ghost.impl&__3.constant.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicPredU16::inv
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%4.inv.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%4.inv.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k_loc! Poly)
    (perm_g! Poly)
   ) (!
    (=>
     (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (UINT 16)
      G&. G&
     )
     (= (vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredU16.
        Pred&. Pred&
       ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU16.
        G&. G&
       ) k_loc! perm_g!
      ) (B (let
        ((k$ (tuple%2./tuple%2/0 (%Poly%tuple%2. k_loc!))))
        (let
         ((loc$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. k_loc!)))))
         (let
          ((perm$ (%Poly%vstd.atomic.PermissionU16. (tuple%2./tuple%2/0 (%Poly%tuple%2. perm_g!)))))
          (let
           ((g$ (tuple%2./tuple%2/1 (%Poly%tuple%2. perm_g!))))
           (and
            (= (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic (%Poly%vstd.atomic.PermissionDataU16.
               (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
                  perm$
              ))))
             ) loc$
            )
            (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
              (UINT 16) G&. G& k$ (I (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
                 (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
                    perm$
               )))))
              ) g$
    ))))))))))
    :pattern ((vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredU16.
       Pred&. Pred&
      ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU16.
       G&. G&
      ) k_loc! perm_g!
    ))
    :qid internal_vstd.invariant.InvariantPredicate.inv.?_definition
    :skolemid skolem_internal_vstd.invariant.InvariantPredicate.inv.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (UINT 16)
     G&. G&
    )
    (tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredU16.
      Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU16.
      G&. G&
   )))
   :pattern ((tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredU16.
      Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU16.
      G&. G&
   )))
   :qid internal_crate__vstd__atomic_ghost__impl&__4_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__impl&__4_trait_impl_definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicU16::well_formed
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%5.well_formed.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%5.well_formed.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.atomic_ghost.impl&%5.well_formed.? K&. K& G&. G& Pred&. Pred& self!) (= (%I
       (tuple%2./tuple%2/1 (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2.
           K&. K& $ INT
          ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU16. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredU16.
           Pred&. Pred&
          ) (vstd.atomic_ghost.AtomicU16./AtomicU16/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU16.
            self!
       )))))
      ) (vstd.atomic.impl&%5.id.? (Poly%vstd.atomic.PAtomicU16. (vstd.atomic_ghost.AtomicU16./AtomicU16/patomic
         (%Poly%vstd.atomic_ghost.AtomicU16. self!)
    )))))
    :pattern ((vstd.atomic_ghost.impl&%5.well_formed.? K&. K& G&. G& Pred&. Pred& self!))
    :qid internal_vstd.atomic_ghost.impl&__5.well_formed.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__5.well_formed.?_definition
))))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicU16::constant
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%5.constant.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%5.constant.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.atomic_ghost.impl&%5.constant.? K&. K& G&. G& Pred&. Pred& self!) (tuple%2./tuple%2/0
      (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2. K&. K& $ INT) $
        (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU16. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredU16.
         Pred&. Pred&
        ) (vstd.atomic_ghost.AtomicU16./AtomicU16/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU16.
          self!
    ))))))
    :pattern ((vstd.atomic_ghost.impl&%5.constant.? K&. K& G&. G& Pred&. Pred& self!))
    :qid internal_vstd.atomic_ghost.impl&__5.constant.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__5.constant.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.atomic_ghost.AtomicU16. K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.impl&%5.constant.? K&. K& G&. G& Pred&. Pred& self!)
     K&
   ))
   :pattern ((vstd.atomic_ghost.impl&%5.constant.? K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_vstd.atomic_ghost.impl&__5.constant.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic_ghost.impl&__5.constant.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicPredU8::inv
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%6.inv.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%6.inv.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k_loc! Poly)
    (perm_g! Poly)
   ) (!
    (=>
     (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (UINT 8)
      G&. G&
     )
     (= (vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredU8.
        Pred&. Pred&
       ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU8.
        G&. G&
       ) k_loc! perm_g!
      ) (B (let
        ((k$ (tuple%2./tuple%2/0 (%Poly%tuple%2. k_loc!))))
        (let
         ((loc$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. k_loc!)))))
         (let
          ((perm$ (%Poly%vstd.atomic.PermissionU8. (tuple%2./tuple%2/0 (%Poly%tuple%2. perm_g!)))))
          (let
           ((g$ (tuple%2./tuple%2/1 (%Poly%tuple%2. perm_g!))))
           (and
            (= (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic (%Poly%vstd.atomic.PermissionDataU8.
               (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
                  perm$
              ))))
             ) loc$
            )
            (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
              (UINT 8) G&. G& k$ (I (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
                 (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
                    perm$
               )))))
              ) g$
    ))))))))))
    :pattern ((vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredU8.
       Pred&. Pred&
      ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU8.
       G&. G&
      ) k_loc! perm_g!
    ))
    :qid internal_vstd.invariant.InvariantPredicate.inv.?_definition
    :skolemid skolem_internal_vstd.invariant.InvariantPredicate.inv.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (UINT 8)
     G&. G&
    )
    (tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredU8.
      Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU8.
      G&. G&
   )))
   :pattern ((tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredU8.
      Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU8.
      G&. G&
   )))
   :qid internal_crate__vstd__atomic_ghost__impl&__6_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__impl&__6_trait_impl_definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicU8::well_formed
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%7.well_formed.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%7.well_formed.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.atomic_ghost.impl&%7.well_formed.? K&. K& G&. G& Pred&. Pred& self!) (= (%I
       (tuple%2./tuple%2/1 (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2.
           K&. K& $ INT
          ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU8. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredU8.
           Pred&. Pred&
          ) (vstd.atomic_ghost.AtomicU8./AtomicU8/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU8.
            self!
       )))))
      ) (vstd.atomic.impl&%3.id.? (Poly%vstd.atomic.PAtomicU8. (vstd.atomic_ghost.AtomicU8./AtomicU8/patomic
         (%Poly%vstd.atomic_ghost.AtomicU8. self!)
    )))))
    :pattern ((vstd.atomic_ghost.impl&%7.well_formed.? K&. K& G&. G& Pred&. Pred& self!))
    :qid internal_vstd.atomic_ghost.impl&__7.well_formed.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__7.well_formed.?_definition
))))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicU8::constant
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%7.constant.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%7.constant.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.atomic_ghost.impl&%7.constant.? K&. K& G&. G& Pred&. Pred& self!) (tuple%2./tuple%2/0
      (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2. K&. K& $ INT) $
        (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU8. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredU8.
         Pred&. Pred&
        ) (vstd.atomic_ghost.AtomicU8./AtomicU8/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU8.
          self!
    ))))))
    :pattern ((vstd.atomic_ghost.impl&%7.constant.? K&. K& G&. G& Pred&. Pred& self!))
    :qid internal_vstd.atomic_ghost.impl&__7.constant.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__7.constant.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.atomic_ghost.AtomicU8. K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.impl&%7.constant.? K&. K& G&. G& Pred&. Pred& self!)
     K&
   ))
   :pattern ((vstd.atomic_ghost.impl&%7.constant.? K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_vstd.atomic_ghost.impl&__7.constant.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic_ghost.impl&__7.constant.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicPredUsize::inv
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%8.inv.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%8.inv.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k_loc! Poly)
    (perm_g! Poly)
   ) (!
    (=>
     (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (UINT SZ)
      G&. G&
     )
     (= (vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredUsize.
        Pred&. Pred&
       ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionUsize.
        G&. G&
       ) k_loc! perm_g!
      ) (B (let
        ((k$ (tuple%2./tuple%2/0 (%Poly%tuple%2. k_loc!))))
        (let
         ((loc$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. k_loc!)))))
         (let
          ((perm$ (%Poly%vstd.atomic.PermissionUsize. (tuple%2./tuple%2/0 (%Poly%tuple%2. perm_g!)))))
          (let
           ((g$ (tuple%2./tuple%2/1 (%Poly%tuple%2. perm_g!))))
           (and
            (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic (%Poly%vstd.atomic.PermissionDataUsize.
               (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
                  perm$
              ))))
             ) loc$
            )
            (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
              (UINT SZ) G&. G& k$ (I (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value
                (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
                   (Poly%vstd.atomic.PermissionUsize. perm$)
               ))))
              ) g$
    ))))))))))
    :pattern ((vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredUsize.
       Pred&. Pred&
      ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionUsize.
       G&. G&
      ) k_loc! perm_g!
    ))
    :qid internal_vstd.invariant.InvariantPredicate.inv.?_definition
    :skolemid skolem_internal_vstd.invariant.InvariantPredicate.inv.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (UINT SZ)
     G&. G&
    )
    (tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredUsize.
      Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionUsize.
      G&. G&
   )))
   :pattern ((tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredUsize.
      Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionUsize.
      G&. G&
   )))
   :qid internal_crate__vstd__atomic_ghost__impl&__8_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__impl&__8_trait_impl_definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicUsize::well_formed
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%9.well_formed.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%9.well_formed.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.atomic_ghost.impl&%9.well_formed.? K&. K& G&. G& Pred&. Pred& self!) (= (%I
       (tuple%2./tuple%2/1 (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2.
           K&. K& $ INT
          ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionUsize. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredUsize.
           Pred&. Pred&
          ) (vstd.atomic_ghost.AtomicUsize./AtomicUsize/atomic_inv (%Poly%vstd.atomic_ghost.AtomicUsize.
            self!
       )))))
      ) (vstd.atomic.impl&%11.id.? (Poly%vstd.atomic.PAtomicUsize. (vstd.atomic_ghost.AtomicUsize./AtomicUsize/patomic
         (%Poly%vstd.atomic_ghost.AtomicUsize. self!)
    )))))
    :pattern ((vstd.atomic_ghost.impl&%9.well_formed.? K&. K& G&. G& Pred&. Pred& self!))
    :qid internal_vstd.atomic_ghost.impl&__9.well_formed.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__9.well_formed.?_definition
))))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicUsize::constant
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%9.constant.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%9.constant.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.atomic_ghost.impl&%9.constant.? K&. K& G&. G& Pred&. Pred& self!) (tuple%2./tuple%2/0
      (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2. K&. K& $ INT) $
        (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionUsize. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredUsize.
         Pred&. Pred&
        ) (vstd.atomic_ghost.AtomicUsize./AtomicUsize/atomic_inv (%Poly%vstd.atomic_ghost.AtomicUsize.
          self!
    ))))))
    :pattern ((vstd.atomic_ghost.impl&%9.constant.? K&. K& G&. G& Pred&. Pred& self!))
    :qid internal_vstd.atomic_ghost.impl&__9.constant.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__9.constant.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.atomic_ghost.AtomicUsize. K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.impl&%9.constant.? K&. K& G&. G& Pred&. Pred& self!)
     K&
   ))
   :pattern ((vstd.atomic_ghost.impl&%9.constant.? K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_vstd.atomic_ghost.impl&__9.constant.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic_ghost.impl&__9.constant.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicPredI64::inv
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%10.inv.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%10.inv.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k_loc! Poly)
    (perm_g! Poly)
   ) (!
    (=>
     (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (SINT 64)
      G&. G&
     )
     (= (vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredI64.
        Pred&. Pred&
       ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI64.
        G&. G&
       ) k_loc! perm_g!
      ) (B (let
        ((k$ (tuple%2./tuple%2/0 (%Poly%tuple%2. k_loc!))))
        (let
         ((loc$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. k_loc!)))))
         (let
          ((perm$ (%Poly%vstd.atomic.PermissionI64. (tuple%2./tuple%2/0 (%Poly%tuple%2. perm_g!)))))
          (let
           ((g$ (tuple%2./tuple%2/1 (%Poly%tuple%2. perm_g!))))
           (and
            (= (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic (%Poly%vstd.atomic.PermissionDataI64.
               (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
                  perm$
              ))))
             ) loc$
            )
            (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
              (SINT 64) G&. G& k$ (I (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
                 (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
                    perm$
               )))))
              ) g$
    ))))))))))
    :pattern ((vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredI64.
       Pred&. Pred&
      ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI64.
       G&. G&
      ) k_loc! perm_g!
    ))
    :qid internal_vstd.invariant.InvariantPredicate.inv.?_definition
    :skolemid skolem_internal_vstd.invariant.InvariantPredicate.inv.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (SINT 64)
     G&. G&
    )
    (tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredI64.
      Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI64.
      G&. G&
   )))
   :pattern ((tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredI64.
      Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI64.
      G&. G&
   )))
   :qid internal_crate__vstd__atomic_ghost__impl&__10_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__impl&__10_trait_impl_definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicI64::well_formed
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%11.well_formed.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%11.well_formed.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.atomic_ghost.impl&%11.well_formed.? K&. K& G&. G& Pred&. Pred& self!) (= (
       %I (tuple%2./tuple%2/1 (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2.
           K&. K& $ INT
          ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI64. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredI64.
           Pred&. Pred&
          ) (vstd.atomic_ghost.AtomicI64./AtomicI64/atomic_inv (%Poly%vstd.atomic_ghost.AtomicI64.
            self!
       )))))
      ) (vstd.atomic.impl&%19.id.? (Poly%vstd.atomic.PAtomicI64. (vstd.atomic_ghost.AtomicI64./AtomicI64/patomic
         (%Poly%vstd.atomic_ghost.AtomicI64. self!)
    )))))
    :pattern ((vstd.atomic_ghost.impl&%11.well_formed.? K&. K& G&. G& Pred&. Pred& self!))
    :qid internal_vstd.atomic_ghost.impl&__11.well_formed.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__11.well_formed.?_definition
))))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicI64::constant
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%11.constant.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%11.constant.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.atomic_ghost.impl&%11.constant.? K&. K& G&. G& Pred&. Pred& self!) (tuple%2./tuple%2/0
      (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2. K&. K& $ INT) $
        (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI64. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredI64.
         Pred&. Pred&
        ) (vstd.atomic_ghost.AtomicI64./AtomicI64/atomic_inv (%Poly%vstd.atomic_ghost.AtomicI64.
          self!
    ))))))
    :pattern ((vstd.atomic_ghost.impl&%11.constant.? K&. K& G&. G& Pred&. Pred& self!))
    :qid internal_vstd.atomic_ghost.impl&__11.constant.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__11.constant.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.atomic_ghost.AtomicI64. K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.impl&%11.constant.? K&. K& G&. G& Pred&. Pred& self!)
     K&
   ))
   :pattern ((vstd.atomic_ghost.impl&%11.constant.? K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_vstd.atomic_ghost.impl&__11.constant.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic_ghost.impl&__11.constant.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicPredI32::inv
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%12.inv.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%12.inv.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k_loc! Poly)
    (perm_g! Poly)
   ) (!
    (=>
     (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (SINT 32)
      G&. G&
     )
     (= (vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredI32.
        Pred&. Pred&
       ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI32.
        G&. G&
       ) k_loc! perm_g!
      ) (B (let
        ((k$ (tuple%2./tuple%2/0 (%Poly%tuple%2. k_loc!))))
        (let
         ((loc$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. k_loc!)))))
         (let
          ((perm$ (%Poly%vstd.atomic.PermissionI32. (tuple%2./tuple%2/0 (%Poly%tuple%2. perm_g!)))))
          (let
           ((g$ (tuple%2./tuple%2/1 (%Poly%tuple%2. perm_g!))))
           (and
            (= (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic (%Poly%vstd.atomic.PermissionDataI32.
               (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
                  perm$
              ))))
             ) loc$
            )
            (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
              (SINT 32) G&. G& k$ (I (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
                 (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
                    perm$
               )))))
              ) g$
    ))))))))))
    :pattern ((vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredI32.
       Pred&. Pred&
      ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI32.
       G&. G&
      ) k_loc! perm_g!
    ))
    :qid internal_vstd.invariant.InvariantPredicate.inv.?_definition
    :skolemid skolem_internal_vstd.invariant.InvariantPredicate.inv.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (SINT 32)
     G&. G&
    )
    (tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredI32.
      Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI32.
      G&. G&
   )))
   :pattern ((tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredI32.
      Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI32.
      G&. G&
   )))
   :qid internal_crate__vstd__atomic_ghost__impl&__12_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__impl&__12_trait_impl_definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicI32::well_formed
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%13.well_formed.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%13.well_formed.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.atomic_ghost.impl&%13.well_formed.? K&. K& G&. G& Pred&. Pred& self!) (= (
       %I (tuple%2./tuple%2/1 (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2.
           K&. K& $ INT
          ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI32. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredI32.
           Pred&. Pred&
          ) (vstd.atomic_ghost.AtomicI32./AtomicI32/atomic_inv (%Poly%vstd.atomic_ghost.AtomicI32.
            self!
       )))))
      ) (vstd.atomic.impl&%17.id.? (Poly%vstd.atomic.PAtomicI32. (vstd.atomic_ghost.AtomicI32./AtomicI32/patomic
         (%Poly%vstd.atomic_ghost.AtomicI32. self!)
    )))))
    :pattern ((vstd.atomic_ghost.impl&%13.well_formed.? K&. K& G&. G& Pred&. Pred& self!))
    :qid internal_vstd.atomic_ghost.impl&__13.well_formed.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__13.well_formed.?_definition
))))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicI32::constant
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%13.constant.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%13.constant.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.atomic_ghost.impl&%13.constant.? K&. K& G&. G& Pred&. Pred& self!) (tuple%2./tuple%2/0
      (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2. K&. K& $ INT) $
        (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI32. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredI32.
         Pred&. Pred&
        ) (vstd.atomic_ghost.AtomicI32./AtomicI32/atomic_inv (%Poly%vstd.atomic_ghost.AtomicI32.
          self!
    ))))))
    :pattern ((vstd.atomic_ghost.impl&%13.constant.? K&. K& G&. G& Pred&. Pred& self!))
    :qid internal_vstd.atomic_ghost.impl&__13.constant.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__13.constant.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.atomic_ghost.AtomicI32. K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.impl&%13.constant.? K&. K& G&. G& Pred&. Pred& self!)
     K&
   ))
   :pattern ((vstd.atomic_ghost.impl&%13.constant.? K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_vstd.atomic_ghost.impl&__13.constant.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic_ghost.impl&__13.constant.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicPredI16::inv
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%14.inv.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%14.inv.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k_loc! Poly)
    (perm_g! Poly)
   ) (!
    (=>
     (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (SINT 16)
      G&. G&
     )
     (= (vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredI16.
        Pred&. Pred&
       ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI16.
        G&. G&
       ) k_loc! perm_g!
      ) (B (let
        ((k$ (tuple%2./tuple%2/0 (%Poly%tuple%2. k_loc!))))
        (let
         ((loc$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. k_loc!)))))
         (let
          ((perm$ (%Poly%vstd.atomic.PermissionI16. (tuple%2./tuple%2/0 (%Poly%tuple%2. perm_g!)))))
          (let
           ((g$ (tuple%2./tuple%2/1 (%Poly%tuple%2. perm_g!))))
           (and
            (= (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic (%Poly%vstd.atomic.PermissionDataI16.
               (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
                  perm$
              ))))
             ) loc$
            )
            (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
              (SINT 16) G&. G& k$ (I (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
                 (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
                    perm$
               )))))
              ) g$
    ))))))))))
    :pattern ((vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredI16.
       Pred&. Pred&
      ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI16.
       G&. G&
      ) k_loc! perm_g!
    ))
    :qid internal_vstd.invariant.InvariantPredicate.inv.?_definition
    :skolemid skolem_internal_vstd.invariant.InvariantPredicate.inv.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (SINT 16)
     G&. G&
    )
    (tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredI16.
      Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI16.
      G&. G&
   )))
   :pattern ((tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredI16.
      Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI16.
      G&. G&
   )))
   :qid internal_crate__vstd__atomic_ghost__impl&__14_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__impl&__14_trait_impl_definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicI16::well_formed
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%15.well_formed.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%15.well_formed.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.atomic_ghost.impl&%15.well_formed.? K&. K& G&. G& Pred&. Pred& self!) (= (
       %I (tuple%2./tuple%2/1 (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2.
           K&. K& $ INT
          ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI16. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredI16.
           Pred&. Pred&
          ) (vstd.atomic_ghost.AtomicI16./AtomicI16/atomic_inv (%Poly%vstd.atomic_ghost.AtomicI16.
            self!
       )))))
      ) (vstd.atomic.impl&%15.id.? (Poly%vstd.atomic.PAtomicI16. (vstd.atomic_ghost.AtomicI16./AtomicI16/patomic
         (%Poly%vstd.atomic_ghost.AtomicI16. self!)
    )))))
    :pattern ((vstd.atomic_ghost.impl&%15.well_formed.? K&. K& G&. G& Pred&. Pred& self!))
    :qid internal_vstd.atomic_ghost.impl&__15.well_formed.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__15.well_formed.?_definition
))))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicI16::constant
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%15.constant.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%15.constant.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.atomic_ghost.impl&%15.constant.? K&. K& G&. G& Pred&. Pred& self!) (tuple%2./tuple%2/0
      (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2. K&. K& $ INT) $
        (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI16. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredI16.
         Pred&. Pred&
        ) (vstd.atomic_ghost.AtomicI16./AtomicI16/atomic_inv (%Poly%vstd.atomic_ghost.AtomicI16.
          self!
    ))))))
    :pattern ((vstd.atomic_ghost.impl&%15.constant.? K&. K& G&. G& Pred&. Pred& self!))
    :qid internal_vstd.atomic_ghost.impl&__15.constant.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__15.constant.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.atomic_ghost.AtomicI16. K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.impl&%15.constant.? K&. K& G&. G& Pred&. Pred& self!)
     K&
   ))
   :pattern ((vstd.atomic_ghost.impl&%15.constant.? K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_vstd.atomic_ghost.impl&__15.constant.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic_ghost.impl&__15.constant.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicPredI8::inv
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%16.inv.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%16.inv.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k_loc! Poly)
    (perm_g! Poly)
   ) (!
    (=>
     (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (SINT 8)
      G&. G&
     )
     (= (vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredI8.
        Pred&. Pred&
       ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI8.
        G&. G&
       ) k_loc! perm_g!
      ) (B (let
        ((k$ (tuple%2./tuple%2/0 (%Poly%tuple%2. k_loc!))))
        (let
         ((loc$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. k_loc!)))))
         (let
          ((perm$ (%Poly%vstd.atomic.PermissionI8. (tuple%2./tuple%2/0 (%Poly%tuple%2. perm_g!)))))
          (let
           ((g$ (tuple%2./tuple%2/1 (%Poly%tuple%2. perm_g!))))
           (and
            (= (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic (%Poly%vstd.atomic.PermissionDataI8.
               (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
                  perm$
              ))))
             ) loc$
            )
            (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
              (SINT 8) G&. G& k$ (I (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
                 (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
                    perm$
               )))))
              ) g$
    ))))))))))
    :pattern ((vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredI8.
       Pred&. Pred&
      ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI8.
       G&. G&
      ) k_loc! perm_g!
    ))
    :qid internal_vstd.invariant.InvariantPredicate.inv.?_definition
    :skolemid skolem_internal_vstd.invariant.InvariantPredicate.inv.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (SINT 8)
     G&. G&
    )
    (tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredI8.
      Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI8.
      G&. G&
   )))
   :pattern ((tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredI8.
      Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI8.
      G&. G&
   )))
   :qid internal_crate__vstd__atomic_ghost__impl&__16_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__impl&__16_trait_impl_definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicI8::well_formed
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%17.well_formed.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%17.well_formed.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.atomic_ghost.impl&%17.well_formed.? K&. K& G&. G& Pred&. Pred& self!) (= (
       %I (tuple%2./tuple%2/1 (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2.
           K&. K& $ INT
          ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI8. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredI8.
           Pred&. Pred&
          ) (vstd.atomic_ghost.AtomicI8./AtomicI8/atomic_inv (%Poly%vstd.atomic_ghost.AtomicI8.
            self!
       )))))
      ) (vstd.atomic.impl&%13.id.? (Poly%vstd.atomic.PAtomicI8. (vstd.atomic_ghost.AtomicI8./AtomicI8/patomic
         (%Poly%vstd.atomic_ghost.AtomicI8. self!)
    )))))
    :pattern ((vstd.atomic_ghost.impl&%17.well_formed.? K&. K& G&. G& Pred&. Pred& self!))
    :qid internal_vstd.atomic_ghost.impl&__17.well_formed.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__17.well_formed.?_definition
))))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicI8::constant
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%17.constant.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%17.constant.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.atomic_ghost.impl&%17.constant.? K&. K& G&. G& Pred&. Pred& self!) (tuple%2./tuple%2/0
      (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2. K&. K& $ INT) $
        (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI8. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredI8.
         Pred&. Pred&
        ) (vstd.atomic_ghost.AtomicI8./AtomicI8/atomic_inv (%Poly%vstd.atomic_ghost.AtomicI8.
          self!
    ))))))
    :pattern ((vstd.atomic_ghost.impl&%17.constant.? K&. K& G&. G& Pred&. Pred& self!))
    :qid internal_vstd.atomic_ghost.impl&__17.constant.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__17.constant.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.atomic_ghost.AtomicI8. K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.impl&%17.constant.? K&. K& G&. G& Pred&. Pred& self!)
     K&
   ))
   :pattern ((vstd.atomic_ghost.impl&%17.constant.? K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_vstd.atomic_ghost.impl&__17.constant.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic_ghost.impl&__17.constant.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicPredIsize::inv
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%18.inv.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%18.inv.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k_loc! Poly)
    (perm_g! Poly)
   ) (!
    (=>
     (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (SINT SZ)
      G&. G&
     )
     (= (vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredIsize.
        Pred&. Pred&
       ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionIsize.
        G&. G&
       ) k_loc! perm_g!
      ) (B (let
        ((k$ (tuple%2./tuple%2/0 (%Poly%tuple%2. k_loc!))))
        (let
         ((loc$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. k_loc!)))))
         (let
          ((perm$ (%Poly%vstd.atomic.PermissionIsize. (tuple%2./tuple%2/0 (%Poly%tuple%2. perm_g!)))))
          (let
           ((g$ (tuple%2./tuple%2/1 (%Poly%tuple%2. perm_g!))))
           (and
            (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd.atomic.PermissionDataIsize.
               (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
                  perm$
              ))))
             ) loc$
            )
            (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
              (SINT SZ) G&. G& k$ (I (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value
                (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
                   (Poly%vstd.atomic.PermissionIsize. perm$)
               ))))
              ) g$
    ))))))))))
    :pattern ((vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredIsize.
       Pred&. Pred&
      ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionIsize.
       G&. G&
      ) k_loc! perm_g!
    ))
    :qid internal_vstd.invariant.InvariantPredicate.inv.?_definition
    :skolemid skolem_internal_vstd.invariant.InvariantPredicate.inv.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (SINT SZ)
     G&. G&
    )
    (tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredIsize.
      Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionIsize.
      G&. G&
   )))
   :pattern ((tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredIsize.
      Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionIsize.
      G&. G&
   )))
   :qid internal_crate__vstd__atomic_ghost__impl&__18_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__impl&__18_trait_impl_definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicIsize::well_formed
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%19.well_formed.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%19.well_formed.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.atomic_ghost.impl&%19.well_formed.? K&. K& G&. G& Pred&. Pred& self!) (= (
       %I (tuple%2./tuple%2/1 (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2.
           K&. K& $ INT
          ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionIsize. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredIsize.
           Pred&. Pred&
          ) (vstd.atomic_ghost.AtomicIsize./AtomicIsize/atomic_inv (%Poly%vstd.atomic_ghost.AtomicIsize.
            self!
       )))))
      ) (vstd.atomic.impl&%21.id.? (Poly%vstd.atomic.PAtomicIsize. (vstd.atomic_ghost.AtomicIsize./AtomicIsize/patomic
         (%Poly%vstd.atomic_ghost.AtomicIsize. self!)
    )))))
    :pattern ((vstd.atomic_ghost.impl&%19.well_formed.? K&. K& G&. G& Pred&. Pred& self!))
    :qid internal_vstd.atomic_ghost.impl&__19.well_formed.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__19.well_formed.?_definition
))))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicIsize::constant
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%19.constant.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%19.constant.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.atomic_ghost.impl&%19.constant.? K&. K& G&. G& Pred&. Pred& self!) (tuple%2./tuple%2/0
      (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2. K&. K& $ INT) $
        (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionIsize. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredIsize.
         Pred&. Pred&
        ) (vstd.atomic_ghost.AtomicIsize./AtomicIsize/atomic_inv (%Poly%vstd.atomic_ghost.AtomicIsize.
          self!
    ))))))
    :pattern ((vstd.atomic_ghost.impl&%19.constant.? K&. K& G&. G& Pred&. Pred& self!))
    :qid internal_vstd.atomic_ghost.impl&__19.constant.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__19.constant.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.atomic_ghost.AtomicIsize. K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.impl&%19.constant.? K&. K& G&. G& Pred&. Pred& self!)
     K&
   ))
   :pattern ((vstd.atomic_ghost.impl&%19.constant.? K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_vstd.atomic_ghost.impl&__19.constant.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic_ghost.impl&__19.constant.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicPredBool::inv
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%20.inv.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%20.inv.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k_loc! Poly)
    (perm_g! Poly)
   ) (!
    (=>
     (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ BOOL G&.
      G&
     )
     (= (vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredBool.
        Pred&. Pred&
       ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionBool.
        G&. G&
       ) k_loc! perm_g!
      ) (B (let
        ((k$ (tuple%2./tuple%2/0 (%Poly%tuple%2. k_loc!))))
        (let
         ((loc$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. k_loc!)))))
         (let
          ((perm$ (%Poly%vstd.atomic.PermissionBool. (tuple%2./tuple%2/0 (%Poly%tuple%2. perm_g!)))))
          (let
           ((g$ (tuple%2./tuple%2/1 (%Poly%tuple%2. perm_g!))))
           (and
            (= (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic (%Poly%vstd.atomic.PermissionDataBool.
               (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
                  perm$
              ))))
             ) loc$
            )
            (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
              BOOL G&. G& k$ (B (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
                 (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
                    perm$
               )))))
              ) g$
    ))))))))))
    :pattern ((vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredBool.
       Pred&. Pred&
      ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionBool.
       G&. G&
      ) k_loc! perm_g!
    ))
    :qid internal_vstd.invariant.InvariantPredicate.inv.?_definition
    :skolemid skolem_internal_vstd.invariant.InvariantPredicate.inv.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type)) (!
   (=>
    (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ BOOL G&.
     G&
    )
    (tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredBool.
      Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionBool.
      G&. G&
   )))
   :pattern ((tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredBool.
      Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionBool.
      G&. G&
   )))
   :qid internal_crate__vstd__atomic_ghost__impl&__20_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__impl&__20_trait_impl_definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicBool::well_formed
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%21.well_formed.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%21.well_formed.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.atomic_ghost.impl&%21.well_formed.? K&. K& G&. G& Pred&. Pred& self!) (= (
       %I (tuple%2./tuple%2/1 (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2.
           K&. K& $ INT
          ) $ (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionBool. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredBool.
           Pred&. Pred&
          ) (vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv (%Poly%vstd.atomic_ghost.AtomicBool.
            self!
       )))))
      ) (vstd.atomic.impl&%1.id.? (Poly%vstd.atomic.PAtomicBool. (vstd.atomic_ghost.AtomicBool./AtomicBool/patomic
         (%Poly%vstd.atomic_ghost.AtomicBool. self!)
    )))))
    :pattern ((vstd.atomic_ghost.impl&%21.well_formed.? K&. K& G&. G& Pred&. Pred& self!))
    :qid internal_vstd.atomic_ghost.impl&__21.well_formed.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__21.well_formed.?_definition
))))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicBool::constant
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%21.constant.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%21.constant.)
  (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
   (!
    (= (vstd.atomic_ghost.impl&%21.constant.? K&. K& G&. G& Pred&. Pred& self!) (tuple%2./tuple%2/0
      (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2. K&. K& $ INT) $
        (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionBool. G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredBool.
         Pred&. Pred&
        ) (vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv (%Poly%vstd.atomic_ghost.AtomicBool.
          self!
    ))))))
    :pattern ((vstd.atomic_ghost.impl&%21.constant.? K&. K& G&. G& Pred&. Pred& self!))
    :qid internal_vstd.atomic_ghost.impl&__21.constant.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__21.constant.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.atomic_ghost.AtomicBool. K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.impl&%21.constant.? K&. K& G&. G& Pred&. Pred& self!)
     K&
   ))
   :pattern ((vstd.atomic_ghost.impl&%21.constant.? K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_vstd.atomic_ghost.impl&__21.constant.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic_ghost.impl&__21.constant.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicPredPtr::inv
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%22.inv.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%22.inv.)
  (forall ((T&. Dcr) (T& Type) (K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (
     Pred& Type
    ) (k_loc! Poly) (perm_g! Poly)
   ) (!
    (=>
     (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (PTR T&.
       T&
      ) G&. G&
     )
     (= (vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredPtr.
        T&. T& Pred&. Pred&
       ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ (TYPE%vstd.atomic.PermissionPtr.
         T&. T&
        ) G&. G&
       ) k_loc! perm_g!
      ) (B (let
        ((k$ (tuple%2./tuple%2/0 (%Poly%tuple%2. k_loc!))))
        (let
         ((loc$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. k_loc!)))))
         (let
          ((perm$ (tuple%2./tuple%2/0 (%Poly%tuple%2. perm_g!))))
          (let
           ((g$ (tuple%2./tuple%2/1 (%Poly%tuple%2. perm_g!))))
           (and
            (= (vstd.atomic.PermissionDataPtr./PermissionDataPtr/patomic (%Poly%vstd.atomic.PermissionDataPtr.
               (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& perm$))
              )
             ) loc$
            )
            (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
              (PTR T&. T&) G&. G& k$ (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
                (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& perm$))
               )
              ) g$
    ))))))))))
    :pattern ((vstd.invariant.InvariantPredicate.inv.? $ (TYPE%vstd.atomic_ghost.AtomicPredPtr.
       T&. T& Pred&. Pred&
      ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ (TYPE%vstd.atomic.PermissionPtr.
        T&. T&
       ) G&. G&
      ) k_loc! perm_g!
    ))
    :qid internal_vstd.invariant.InvariantPredicate.inv.?_definition
    :skolemid skolem_internal_vstd.invariant.InvariantPredicate.inv.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (
    Pred& Type
   )
  ) (!
   (=>
    (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (PTR T&.
      T&
     ) G&. G&
    )
    (tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredPtr.
      T&. T& Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ (TYPE%vstd.atomic.PermissionPtr.
       T&. T&
      ) G&. G&
   )))
   :pattern ((tr_bound%vstd.invariant.InvariantPredicate. $ (TYPE%vstd.atomic_ghost.AtomicPredPtr.
      T&. T& Pred&. Pred&
     ) $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $ (TYPE%vstd.atomic.PermissionPtr.
       T&. T&
      ) G&. G&
   )))
   :qid internal_crate__vstd__atomic_ghost__impl&__22_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__atomic_ghost__impl&__22_trait_impl_definition
)))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicPtr::well_formed
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%23.well_formed.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%23.well_formed.)
  (forall ((T&. Dcr) (T& Type) (K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (
     Pred& Type
    ) (self! Poly)
   ) (!
    (= (vstd.atomic_ghost.impl&%23.well_formed.? T&. T& K&. K& G&. G& Pred&. Pred& self!)
     (= (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2.
           K&. K& $ INT
          ) $ (TYPE%tuple%2. $ (TYPE%vstd.atomic.PermissionPtr. T&. T&) G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredPtr.
           T&. T& Pred&. Pred&
          ) (vstd.atomic_ghost.AtomicPtr./AtomicPtr/atomic_inv (%Poly%vstd.atomic_ghost.AtomicPtr.
            self!
       )))))
      ) (vstd.atomic.impl&%23.id.? T&. T& (vstd.atomic_ghost.AtomicPtr./AtomicPtr/patomic
        (%Poly%vstd.atomic_ghost.AtomicPtr. self!)
    ))))
    :pattern ((vstd.atomic_ghost.impl&%23.well_formed.? T&. T& K&. K& G&. G& Pred&. Pred&
      self!
    ))
    :qid internal_vstd.atomic_ghost.impl&__23.well_formed.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__23.well_formed.?_definition
))))

;; Function-Axioms crate::vstd::atomic_ghost::AtomicPtr::constant
(assert
 (fuel_bool_default fuel%vstd.atomic_ghost.impl&%23.constant.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic_ghost.impl&%23.constant.)
  (forall ((T&. Dcr) (T& Type) (K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (
     Pred& Type
    ) (self! Poly)
   ) (!
    (= (vstd.atomic_ghost.impl&%23.constant.? T&. T& K&. K& G&. G& Pred&. Pred& self!)
     (tuple%2./tuple%2/0 (%Poly%tuple%2. (vstd.invariant.impl&%0.constant.? $ (TYPE%tuple%2.
         K&. K& $ INT
        ) $ (TYPE%tuple%2. $ (TYPE%vstd.atomic.PermissionPtr. T&. T&) G&. G&) $ (TYPE%vstd.atomic_ghost.AtomicPredPtr.
         T&. T& Pred&. Pred&
        ) (vstd.atomic_ghost.AtomicPtr./AtomicPtr/atomic_inv (%Poly%vstd.atomic_ghost.AtomicPtr.
          self!
    ))))))
    :pattern ((vstd.atomic_ghost.impl&%23.constant.? T&. T& K&. K& G&. G& Pred&. Pred&
      self!
    ))
    :qid internal_vstd.atomic_ghost.impl&__23.constant.?_definition
    :skolemid skolem_internal_vstd.atomic_ghost.impl&__23.constant.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (
    Pred& Type
   ) (self! Poly)
  ) (!
   (=>
    (has_type self! (TYPE%vstd.atomic_ghost.AtomicPtr. T&. T& K&. K& G&. G& Pred&. Pred&))
    (has_type (vstd.atomic_ghost.impl&%23.constant.? T&. T& K&. K& G&. G& Pred&. Pred&
      self!
     ) K&
   ))
   :pattern ((vstd.atomic_ghost.impl&%23.constant.? T&. T& K&. K& G&. G& Pred&. Pred&
     self!
   ))
   :qid internal_vstd.atomic_ghost.impl&__23.constant.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic_ghost.impl&__23.constant.?_pre_post_definition
)))

;; Function-Specs crate::vstd::atomic_ghost::AtomicU64::new
(declare-fun req%vstd.atomic_ghost.impl&%1.new. (Dcr Type Dcr Type Dcr Type Poly Int
  Poly
 ) Bool
)
(declare-const %%global_location_label%%25 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (u! Int) (g! Poly)
  ) (!
   (= (req%vstd.atomic_ghost.impl&%1.new. K&. K& G&. G& Pred&. Pred& k! u! g!) (=>
     %%global_location_label%%25
     (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
       (UINT 64) G&. G& k! (I u!) g!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%1.new. K&. K& G&. G& Pred&. Pred& k! u! g!))
   :qid internal_req__vstd.atomic_ghost.impl&__1.new._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__1.new._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%1.new. (Dcr Type Dcr Type Dcr Type Poly Int
  Poly vstd.atomic_ghost.AtomicU64.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (u! Int) (g! Poly) (t! vstd.atomic_ghost.AtomicU64.)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%1.new. K&. K& G&. G& Pred&. Pred& k! u! g! t!) (and
     (has_type (Poly%vstd.atomic_ghost.AtomicU64. t!) (TYPE%vstd.atomic_ghost.AtomicU64.
       K&. K& G&. G& Pred&. Pred&
     ))
     (and
      (vstd.atomic_ghost.impl&%1.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU64.
        t!
      ))
      (= (vstd.atomic_ghost.impl&%1.constant.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU64.
         t!
        )
       ) k!
   ))))
   :pattern ((ens%vstd.atomic_ghost.impl&%1.new. K&. K& G&. G& Pred&. Pred& k! u! g! t!))
   :qid internal_ens__vstd.atomic_ghost.impl&__1.new._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__1.new._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicU64::new
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:65:13: 65:99 (#732)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const t! vstd.atomic_ghost.AtomicU64.)
 (declare-const k! Poly)
 (declare-const u! Int)
 (declare-const g! Poly)
 (declare-const verus_tmp_pair@ tuple%2.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 tuple%2.)
 (declare-const verus_tmp_atomic_inv@ Poly)
 (declare-const tmp%%@ tuple%2.)
 (declare-const patomic@ vstd.atomic.PAtomicU64.)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionU64.)
 (declare-const perm@0 vstd.atomic.PermissionU64.)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const pair@0 tuple%2.)
 (declare-const verus_tmp$1@ Poly)
 (declare-const atomic_inv@0 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type k! K&)
 )
 (assert
  (uInv 64 u!)
 )
 (assert
  (has_type g! G&)
 )
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (UINT 64)
   G&. G&
 ))
 (assert
  (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
    (UINT 64) G&. G& k! (I u!) g!
 )))
 (declare-const perm@1 vstd.atomic.PermissionU64.)
 (declare-const pair@1 tuple%2.)
 (declare-const atomic_inv@1 Poly)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (ens%vstd.atomic.impl&%9.new. u! tmp%%@)
    (=>
     (= patomic@ (%Poly%vstd.atomic.PAtomicU64. (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2.
          tmp%%@
     )))))
     (=>
      (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionU64. (tuple%2./tuple%2/1 (%Poly%tuple%2.
          (Poly%tuple%2. tmp%%@)
      ))))
      (=>
       (= perm@1 verus_tmp_perm@)
       (=>
        (= verus_tmp@ (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionU64. perm@1) g!))
        (=>
         (= verus_tmp_pair@ verus_tmp@)
         (=>
          (= pair@1 verus_tmp_pair@)
          (=>
           (= tmp%1 (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&.
              K& $ (UINT 64) G&. G& k! (I u!) g!
           )))
           (and
            (=>
             %%location_label%%0
             tmp%1
            )
            (=>
             tmp%1
             (=>
              (= tmp%2 (= (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
                  (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
                     perm@1
                 ))))
                ) (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. patomic@))
              ))
              (and
               (=>
                %%location_label%%1
                tmp%2
               )
               (=>
                tmp%2
                (=>
                 (= tmp%3 (tuple%2./tuple%2 k! (I (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64.
                      patomic@
                 )))))
                 (and
                  (=>
                   %%location_label%%2
                   (req%vstd.invariant.impl&%0.new. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $
                     TYPE%vstd.atomic.PermissionU64. G&. G&
                    ) $ (TYPE%vstd.atomic_ghost.AtomicPredU64. Pred&. Pred&) (Poly%tuple%2. tmp%3) (Poly%tuple%2.
                     pair@1
                    ) 0
                  ))
                  (=>
                   (ens%vstd.invariant.impl&%0.new. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $
                     TYPE%vstd.atomic.PermissionU64. G&. G&
                    ) $ (TYPE%vstd.atomic_ghost.AtomicPredU64. Pred&. Pred&) (Poly%tuple%2. tmp%3) (Poly%tuple%2.
                     pair@1
                    ) 0 verus_tmp$1@
                   )
                   (=>
                    (= verus_tmp_atomic_inv@ verus_tmp$1@)
                    (=>
                     (= atomic_inv@1 verus_tmp_atomic_inv@)
                     (=>
                      (= t! (vstd.atomic_ghost.AtomicU64./AtomicU64 (%Poly%vstd.atomic.PAtomicU64. (Poly%vstd.atomic.PAtomicU64.
                          patomic@
                         )
                        ) atomic_inv@1
                      ))
                      (=>
                       %%location_label%%3
                       (and
                        (vstd.atomic_ghost.impl&%1.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU64.
                          t!
                        ))
                        (= (vstd.atomic_ghost.impl&%1.constant.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU64.
                           t!
                          )
                         ) k!
 ))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicU64::load
(declare-fun req%vstd.atomic_ghost.impl&%1.load. (Dcr Type Dcr Type Dcr Type vstd.atomic_ghost.AtomicU64.)
 Bool
)
(declare-const %%global_location_label%%26 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicU64.))
  (!
   (= (req%vstd.atomic_ghost.impl&%1.load. K&. K& G&. G& Pred&. Pred& self!) (=>
     %%global_location_label%%26
     (vstd.atomic_ghost.impl&%1.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU64.
       self!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%1.load. K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_req__vstd.atomic_ghost.impl&__1.load._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__1.load._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%1.load. (Dcr Type Dcr Type Dcr Type vstd.atomic_ghost.AtomicU64.
  Int
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicU64.)
   (%return! Int)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%1.load. K&. K& G&. G& Pred&. Pred& self! %return!)
    (uInv 64 %return!)
   )
   :pattern ((ens%vstd.atomic_ghost.impl&%1.load. K&. K& G&. G& Pred&. Pred& self! %return!))
   :qid internal_ens__vstd.atomic_ghost.impl&__1.load._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__1.load._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicU64::load
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:85:13: 85:16 (#732)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const %return! Int)
 (declare-const self! vstd.atomic_ghost.AtomicU64.)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2@0 tuple%2.)
 (declare-const pair~57@0 tuple%2.)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionU64.)
 (declare-const verus_tmp_g@0 Poly)
 (declare-const tmp%3 vstd.atomic.PAtomicU64.)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionU64.)
 (declare-const g@0 Poly)
 (declare-const verus_tmp$1@0 Int)
 (declare-const verus_tmp$2@0 Int)
 (declare-const verus_tmp$3@0 Int)
 (declare-const result@ Int)
 (declare-const atomic@ vstd.atomic_ghost.AtomicU64.)
 (declare-const credit@ vstd.invariant.OpenInvariantCredit.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.atomic_ghost.AtomicU64. self!) (TYPE%vstd.atomic_ghost.AtomicU64.
    K&. K& G&. G& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (UINT 64)
   G&. G&
 ))
 (assert
  (vstd.atomic_ghost.impl&%1.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU64.
    self!
 )))
 (declare-const perm@1 vstd.atomic.PermissionU64.)
 (declare-const g@1 Poly)
 (declare-const verus_tmp$1@1 Int)
 (declare-const verus_tmp$2@1 Int)
 (declare-const verus_tmp$3@1 Int)
 (declare-const pair~57@1 tuple%2.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; Cannot show invariant holds at end of block
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= atomic@ self!)
    (=>
     (= tmp%1 (vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU64.
        (Poly%vstd.atomic_ghost.AtomicU64. atomic@)
     )))
     (=>
      (has_type (Poly%tuple%2. tmp%2@0) (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU64.
        G&. G&
      ))
      (=>
       (= pair~57@0 tmp%2@0)
       (=>
        (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
          $ TYPE%vstd.atomic.PermissionU64. G&. G&
         ) $ (TYPE%vstd.atomic_ghost.AtomicPredU64. Pred&. Pred&) tmp%1 (Poly%tuple%2. pair~57@0)
        )
        (=>
         (= verus_tmp@ pair~57@0)
         (=>
          (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionU64. (tuple%2./tuple%2/0 (%Poly%tuple%2.
              (Poly%tuple%2. verus_tmp@)
          ))))
          (=>
           (= verus_tmp_g@0 (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
           (=>
            (= perm@1 verus_tmp_perm@)
            (=>
             (= g@1 verus_tmp_g@0)
             (=>
              (= tmp%3 (vstd.atomic_ghost.AtomicU64./AtomicU64/patomic (%Poly%vstd.atomic_ghost.AtomicU64.
                 (Poly%vstd.atomic_ghost.AtomicU64. atomic@)
              )))
              (and
               (=>
                %%location_label%%0
                (req%vstd.atomic.impl&%9.load. tmp%3 perm@1)
               )
               (=>
                (ens%vstd.atomic.impl&%9.load. tmp%3 perm@1 result@)
                (=>
                 (= verus_tmp$1@1 result@)
                 (=>
                  (= verus_tmp$2@1 result@)
                  (=>
                   (= verus_tmp$3@1 result@)
                   (=>
                    (= pair~57@1 (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionU64. perm@1) g@1))
                    (=>
                     %%location_label%%1
                     (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
                       $ TYPE%vstd.atomic.PermissionU64. G&. G&
                      ) $ (TYPE%vstd.atomic_ghost.AtomicPredU64. Pred&. Pred&) tmp%1 (Poly%tuple%2. pair~57@1)
 )))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicU64::into_inner
(declare-fun req%vstd.atomic_ghost.impl&%1.into_inner. (Dcr Type Dcr Type Dcr Type
  vstd.atomic_ghost.AtomicU64.
 ) Bool
)
(declare-const %%global_location_label%%27 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicU64.))
  (!
   (= (req%vstd.atomic_ghost.impl&%1.into_inner. K&. K& G&. G& Pred&. Pred& self!) (=>
     %%global_location_label%%27
     (vstd.atomic_ghost.impl&%1.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU64.
       self!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%1.into_inner. K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_req__vstd.atomic_ghost.impl&__1.into_inner._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__1.into_inner._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%1.into_inner. (Dcr Type Dcr Type Dcr Type
  vstd.atomic_ghost.AtomicU64. tuple%2.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicU64.)
   (res! tuple%2.)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%1.into_inner. K&. K& G&. G& Pred&. Pred& self! res!)
    (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ (UINT 64) (TRACKED G&.) G&))
     (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
       (UINT 64) G&. G& (vstd.atomic_ghost.impl&%1.constant.? K&. K& G&. G& Pred&. Pred&
        (Poly%vstd.atomic_ghost.AtomicU64. self!)
       ) (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))) (tuple%2./tuple%2/1 (
         %Poly%tuple%2. (Poly%tuple%2. res!)
   ))))))
   :pattern ((ens%vstd.atomic_ghost.impl&%1.into_inner. K&. K& G&. G& Pred&. Pred& self!
     res!
   ))
   :qid internal_ens__vstd.atomic_ghost.impl&__1.into_inner._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__1.into_inner._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicU64::into_inner
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:92:13: 92:69 (#732)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const res! tuple%2.)
 (declare-const self! vstd.atomic_ghost.AtomicU64.)
 (declare-const tmp%1 Poly)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionU64.)
 (declare-const verus_tmp_g@ Poly)
 (declare-const patomic@ vstd.atomic.PAtomicU64.)
 (declare-const verus_tmp_atomic_inv@ Poly)
 (declare-const atomic_inv@0 Poly)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionU64.)
 (declare-const g@0 Poly)
 (declare-const v@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.atomic_ghost.AtomicU64. self!) (TYPE%vstd.atomic_ghost.AtomicU64.
    K&. K& G&. G& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (UINT 64)
   G&. G&
 ))
 (assert
  (vstd.atomic_ghost.impl&%1.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU64.
    self!
 )))
 (declare-const atomic_inv@1 Poly)
 (declare-const perm@1 vstd.atomic.PermissionU64.)
 (declare-const g@1 Poly)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= patomic@ (vstd.atomic_ghost.AtomicU64./AtomicU64/patomic (%Poly%vstd.atomic_ghost.AtomicU64.
       (Poly%vstd.atomic_ghost.AtomicU64. self!)
    )))
    (=>
     (= verus_tmp_atomic_inv@ (vstd.atomic_ghost.AtomicU64./AtomicU64/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU64.
        (Poly%vstd.atomic_ghost.AtomicU64. self!)
     )))
     (=>
      (= atomic_inv@1 verus_tmp_atomic_inv@)
      (=>
       (ens%vstd.invariant.impl&%0.into_inner. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
         $ TYPE%vstd.atomic.PermissionU64. G&. G&
        ) $ (TYPE%vstd.atomic_ghost.AtomicPredU64. Pred&. Pred&) atomic_inv@1 tmp%1
       )
       (=>
        (= verus_tmp@ (%Poly%tuple%2. tmp%1))
        (=>
         (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionU64. (tuple%2./tuple%2/0 (%Poly%tuple%2.
             (Poly%tuple%2. verus_tmp@)
         ))))
         (=>
          (= verus_tmp_g@ (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
          (=>
           (= perm@1 verus_tmp_perm@)
           (=>
            (= g@1 verus_tmp_g@)
            (and
             (=>
              %%location_label%%0
              (req%vstd.atomic.impl&%9.into_inner. patomic@ perm@1)
             )
             (=>
              (ens%vstd.atomic.impl&%9.into_inner. patomic@ perm@1 v@)
              (=>
               (= res! (tuple%2./tuple%2 (I v@) g@1))
               (=>
                %%location_label%%1
                (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
                  (UINT 64) G&. G& (vstd.atomic_ghost.impl&%1.constant.? K&. K& G&. G& Pred&. Pred&
                   (Poly%vstd.atomic_ghost.AtomicU64. self!)
                  ) (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))) (tuple%2./tuple%2/1 (
                    %Poly%tuple%2. (Poly%tuple%2. res!)
 )))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicU32::new
(declare-fun req%vstd.atomic_ghost.impl&%3.new. (Dcr Type Dcr Type Dcr Type Poly Int
  Poly
 ) Bool
)
(declare-const %%global_location_label%%28 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (u! Int) (g! Poly)
  ) (!
   (= (req%vstd.atomic_ghost.impl&%3.new. K&. K& G&. G& Pred&. Pred& k! u! g!) (=>
     %%global_location_label%%28
     (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
       (UINT 32) G&. G& k! (I u!) g!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%3.new. K&. K& G&. G& Pred&. Pred& k! u! g!))
   :qid internal_req__vstd.atomic_ghost.impl&__3.new._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__3.new._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%3.new. (Dcr Type Dcr Type Dcr Type Poly Int
  Poly vstd.atomic_ghost.AtomicU32.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (u! Int) (g! Poly) (t! vstd.atomic_ghost.AtomicU32.)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%3.new. K&. K& G&. G& Pred&. Pred& k! u! g! t!) (and
     (has_type (Poly%vstd.atomic_ghost.AtomicU32. t!) (TYPE%vstd.atomic_ghost.AtomicU32.
       K&. K& G&. G& Pred&. Pred&
     ))
     (and
      (vstd.atomic_ghost.impl&%3.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU32.
        t!
      ))
      (= (vstd.atomic_ghost.impl&%3.constant.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU32.
         t!
        )
       ) k!
   ))))
   :pattern ((ens%vstd.atomic_ghost.impl&%3.new. K&. K& G&. G& Pred&. Pred& k! u! g! t!))
   :qid internal_ens__vstd.atomic_ghost.impl&__3.new._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__3.new._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicU32::new
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:65:13: 65:99 (#760)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const t! vstd.atomic_ghost.AtomicU32.)
 (declare-const k! Poly)
 (declare-const u! Int)
 (declare-const g! Poly)
 (declare-const verus_tmp_pair@ tuple%2.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 tuple%2.)
 (declare-const verus_tmp_atomic_inv@ Poly)
 (declare-const tmp%%@ tuple%2.)
 (declare-const patomic@ vstd.atomic.PAtomicU32.)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionU32.)
 (declare-const perm@0 vstd.atomic.PermissionU32.)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const pair@0 tuple%2.)
 (declare-const verus_tmp$1@ Poly)
 (declare-const atomic_inv@0 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type k! K&)
 )
 (assert
  (uInv 32 u!)
 )
 (assert
  (has_type g! G&)
 )
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (UINT 32)
   G&. G&
 ))
 (assert
  (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
    (UINT 32) G&. G& k! (I u!) g!
 )))
 (declare-const perm@1 vstd.atomic.PermissionU32.)
 (declare-const pair@1 tuple%2.)
 (declare-const atomic_inv@1 Poly)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (ens%vstd.atomic.impl&%7.new. u! tmp%%@)
    (=>
     (= patomic@ (%Poly%vstd.atomic.PAtomicU32. (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2.
          tmp%%@
     )))))
     (=>
      (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionU32. (tuple%2./tuple%2/1 (%Poly%tuple%2.
          (Poly%tuple%2. tmp%%@)
      ))))
      (=>
       (= perm@1 verus_tmp_perm@)
       (=>
        (= verus_tmp@ (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionU32. perm@1) g!))
        (=>
         (= verus_tmp_pair@ verus_tmp@)
         (=>
          (= pair@1 verus_tmp_pair@)
          (=>
           (= tmp%1 (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&.
              K& $ (UINT 32) G&. G& k! (I u!) g!
           )))
           (and
            (=>
             %%location_label%%0
             tmp%1
            )
            (=>
             tmp%1
             (=>
              (= tmp%2 (= (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic (%Poly%vstd.atomic.PermissionDataU32.
                  (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
                     perm@1
                 ))))
                ) (vstd.atomic.impl&%7.id.? (Poly%vstd.atomic.PAtomicU32. patomic@))
              ))
              (and
               (=>
                %%location_label%%1
                tmp%2
               )
               (=>
                tmp%2
                (=>
                 (= tmp%3 (tuple%2./tuple%2 k! (I (vstd.atomic.impl&%7.id.? (Poly%vstd.atomic.PAtomicU32.
                      patomic@
                 )))))
                 (and
                  (=>
                   %%location_label%%2
                   (req%vstd.invariant.impl&%0.new. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $
                     TYPE%vstd.atomic.PermissionU32. G&. G&
                    ) $ (TYPE%vstd.atomic_ghost.AtomicPredU32. Pred&. Pred&) (Poly%tuple%2. tmp%3) (Poly%tuple%2.
                     pair@1
                    ) 0
                  ))
                  (=>
                   (ens%vstd.invariant.impl&%0.new. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $
                     TYPE%vstd.atomic.PermissionU32. G&. G&
                    ) $ (TYPE%vstd.atomic_ghost.AtomicPredU32. Pred&. Pred&) (Poly%tuple%2. tmp%3) (Poly%tuple%2.
                     pair@1
                    ) 0 verus_tmp$1@
                   )
                   (=>
                    (= verus_tmp_atomic_inv@ verus_tmp$1@)
                    (=>
                     (= atomic_inv@1 verus_tmp_atomic_inv@)
                     (=>
                      (= t! (vstd.atomic_ghost.AtomicU32./AtomicU32 (%Poly%vstd.atomic.PAtomicU32. (Poly%vstd.atomic.PAtomicU32.
                          patomic@
                         )
                        ) atomic_inv@1
                      ))
                      (=>
                       %%location_label%%3
                       (and
                        (vstd.atomic_ghost.impl&%3.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU32.
                          t!
                        ))
                        (= (vstd.atomic_ghost.impl&%3.constant.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU32.
                           t!
                          )
                         ) k!
 ))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicU32::load
(declare-fun req%vstd.atomic_ghost.impl&%3.load. (Dcr Type Dcr Type Dcr Type vstd.atomic_ghost.AtomicU32.)
 Bool
)
(declare-const %%global_location_label%%29 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicU32.))
  (!
   (= (req%vstd.atomic_ghost.impl&%3.load. K&. K& G&. G& Pred&. Pred& self!) (=>
     %%global_location_label%%29
     (vstd.atomic_ghost.impl&%3.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU32.
       self!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%3.load. K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_req__vstd.atomic_ghost.impl&__3.load._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__3.load._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%3.load. (Dcr Type Dcr Type Dcr Type vstd.atomic_ghost.AtomicU32.
  Int
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicU32.)
   (%return! Int)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%3.load. K&. K& G&. G& Pred&. Pred& self! %return!)
    (uInv 32 %return!)
   )
   :pattern ((ens%vstd.atomic_ghost.impl&%3.load. K&. K& G&. G& Pred&. Pred& self! %return!))
   :qid internal_ens__vstd.atomic_ghost.impl&__3.load._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__3.load._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicU32::load
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:85:13: 85:16 (#760)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const %return! Int)
 (declare-const self! vstd.atomic_ghost.AtomicU32.)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2@0 tuple%2.)
 (declare-const pair~57@0 tuple%2.)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionU32.)
 (declare-const verus_tmp_g@0 Poly)
 (declare-const tmp%3 vstd.atomic.PAtomicU32.)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionU32.)
 (declare-const g@0 Poly)
 (declare-const verus_tmp$1@0 Int)
 (declare-const verus_tmp$2@0 Int)
 (declare-const verus_tmp$3@0 Int)
 (declare-const result@ Int)
 (declare-const atomic@ vstd.atomic_ghost.AtomicU32.)
 (declare-const credit@ vstd.invariant.OpenInvariantCredit.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.atomic_ghost.AtomicU32. self!) (TYPE%vstd.atomic_ghost.AtomicU32.
    K&. K& G&. G& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (UINT 32)
   G&. G&
 ))
 (assert
  (vstd.atomic_ghost.impl&%3.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU32.
    self!
 )))
 (declare-const perm@1 vstd.atomic.PermissionU32.)
 (declare-const g@1 Poly)
 (declare-const verus_tmp$1@1 Int)
 (declare-const verus_tmp$2@1 Int)
 (declare-const verus_tmp$3@1 Int)
 (declare-const pair~57@1 tuple%2.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; Cannot show invariant holds at end of block
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= atomic@ self!)
    (=>
     (= tmp%1 (vstd.atomic_ghost.AtomicU32./AtomicU32/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU32.
        (Poly%vstd.atomic_ghost.AtomicU32. atomic@)
     )))
     (=>
      (has_type (Poly%tuple%2. tmp%2@0) (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU32.
        G&. G&
      ))
      (=>
       (= pair~57@0 tmp%2@0)
       (=>
        (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
          $ TYPE%vstd.atomic.PermissionU32. G&. G&
         ) $ (TYPE%vstd.atomic_ghost.AtomicPredU32. Pred&. Pred&) tmp%1 (Poly%tuple%2. pair~57@0)
        )
        (=>
         (= verus_tmp@ pair~57@0)
         (=>
          (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionU32. (tuple%2./tuple%2/0 (%Poly%tuple%2.
              (Poly%tuple%2. verus_tmp@)
          ))))
          (=>
           (= verus_tmp_g@0 (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
           (=>
            (= perm@1 verus_tmp_perm@)
            (=>
             (= g@1 verus_tmp_g@0)
             (=>
              (= tmp%3 (vstd.atomic_ghost.AtomicU32./AtomicU32/patomic (%Poly%vstd.atomic_ghost.AtomicU32.
                 (Poly%vstd.atomic_ghost.AtomicU32. atomic@)
              )))
              (and
               (=>
                %%location_label%%0
                (req%vstd.atomic.impl&%7.load. tmp%3 perm@1)
               )
               (=>
                (ens%vstd.atomic.impl&%7.load. tmp%3 perm@1 result@)
                (=>
                 (= verus_tmp$1@1 result@)
                 (=>
                  (= verus_tmp$2@1 result@)
                  (=>
                   (= verus_tmp$3@1 result@)
                   (=>
                    (= pair~57@1 (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionU32. perm@1) g@1))
                    (=>
                     %%location_label%%1
                     (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
                       $ TYPE%vstd.atomic.PermissionU32. G&. G&
                      ) $ (TYPE%vstd.atomic_ghost.AtomicPredU32. Pred&. Pred&) tmp%1 (Poly%tuple%2. pair~57@1)
 )))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicU32::into_inner
(declare-fun req%vstd.atomic_ghost.impl&%3.into_inner. (Dcr Type Dcr Type Dcr Type
  vstd.atomic_ghost.AtomicU32.
 ) Bool
)
(declare-const %%global_location_label%%30 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicU32.))
  (!
   (= (req%vstd.atomic_ghost.impl&%3.into_inner. K&. K& G&. G& Pred&. Pred& self!) (=>
     %%global_location_label%%30
     (vstd.atomic_ghost.impl&%3.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU32.
       self!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%3.into_inner. K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_req__vstd.atomic_ghost.impl&__3.into_inner._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__3.into_inner._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%3.into_inner. (Dcr Type Dcr Type Dcr Type
  vstd.atomic_ghost.AtomicU32. tuple%2.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicU32.)
   (res! tuple%2.)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%3.into_inner. K&. K& G&. G& Pred&. Pred& self! res!)
    (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ (UINT 32) (TRACKED G&.) G&))
     (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
       (UINT 32) G&. G& (vstd.atomic_ghost.impl&%3.constant.? K&. K& G&. G& Pred&. Pred&
        (Poly%vstd.atomic_ghost.AtomicU32. self!)
       ) (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))) (tuple%2./tuple%2/1 (
         %Poly%tuple%2. (Poly%tuple%2. res!)
   ))))))
   :pattern ((ens%vstd.atomic_ghost.impl&%3.into_inner. K&. K& G&. G& Pred&. Pred& self!
     res!
   ))
   :qid internal_ens__vstd.atomic_ghost.impl&__3.into_inner._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__3.into_inner._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicU32::into_inner
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:92:13: 92:69 (#760)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const res! tuple%2.)
 (declare-const self! vstd.atomic_ghost.AtomicU32.)
 (declare-const tmp%1 Poly)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionU32.)
 (declare-const verus_tmp_g@ Poly)
 (declare-const patomic@ vstd.atomic.PAtomicU32.)
 (declare-const verus_tmp_atomic_inv@ Poly)
 (declare-const atomic_inv@0 Poly)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionU32.)
 (declare-const g@0 Poly)
 (declare-const v@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.atomic_ghost.AtomicU32. self!) (TYPE%vstd.atomic_ghost.AtomicU32.
    K&. K& G&. G& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (UINT 32)
   G&. G&
 ))
 (assert
  (vstd.atomic_ghost.impl&%3.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU32.
    self!
 )))
 (declare-const atomic_inv@1 Poly)
 (declare-const perm@1 vstd.atomic.PermissionU32.)
 (declare-const g@1 Poly)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= patomic@ (vstd.atomic_ghost.AtomicU32./AtomicU32/patomic (%Poly%vstd.atomic_ghost.AtomicU32.
       (Poly%vstd.atomic_ghost.AtomicU32. self!)
    )))
    (=>
     (= verus_tmp_atomic_inv@ (vstd.atomic_ghost.AtomicU32./AtomicU32/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU32.
        (Poly%vstd.atomic_ghost.AtomicU32. self!)
     )))
     (=>
      (= atomic_inv@1 verus_tmp_atomic_inv@)
      (=>
       (ens%vstd.invariant.impl&%0.into_inner. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
         $ TYPE%vstd.atomic.PermissionU32. G&. G&
        ) $ (TYPE%vstd.atomic_ghost.AtomicPredU32. Pred&. Pred&) atomic_inv@1 tmp%1
       )
       (=>
        (= verus_tmp@ (%Poly%tuple%2. tmp%1))
        (=>
         (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionU32. (tuple%2./tuple%2/0 (%Poly%tuple%2.
             (Poly%tuple%2. verus_tmp@)
         ))))
         (=>
          (= verus_tmp_g@ (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
          (=>
           (= perm@1 verus_tmp_perm@)
           (=>
            (= g@1 verus_tmp_g@)
            (and
             (=>
              %%location_label%%0
              (req%vstd.atomic.impl&%7.into_inner. patomic@ perm@1)
             )
             (=>
              (ens%vstd.atomic.impl&%7.into_inner. patomic@ perm@1 v@)
              (=>
               (= res! (tuple%2./tuple%2 (I v@) g@1))
               (=>
                %%location_label%%1
                (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
                  (UINT 32) G&. G& (vstd.atomic_ghost.impl&%3.constant.? K&. K& G&. G& Pred&. Pred&
                   (Poly%vstd.atomic_ghost.AtomicU32. self!)
                  ) (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))) (tuple%2./tuple%2/1 (
                    %Poly%tuple%2. (Poly%tuple%2. res!)
 )))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicU16::new
(declare-fun req%vstd.atomic_ghost.impl&%5.new. (Dcr Type Dcr Type Dcr Type Poly Int
  Poly
 ) Bool
)
(declare-const %%global_location_label%%31 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (u! Int) (g! Poly)
  ) (!
   (= (req%vstd.atomic_ghost.impl&%5.new. K&. K& G&. G& Pred&. Pred& k! u! g!) (=>
     %%global_location_label%%31
     (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
       (UINT 16) G&. G& k! (I u!) g!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%5.new. K&. K& G&. G& Pred&. Pred& k! u! g!))
   :qid internal_req__vstd.atomic_ghost.impl&__5.new._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__5.new._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%5.new. (Dcr Type Dcr Type Dcr Type Poly Int
  Poly vstd.atomic_ghost.AtomicU16.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (u! Int) (g! Poly) (t! vstd.atomic_ghost.AtomicU16.)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%5.new. K&. K& G&. G& Pred&. Pred& k! u! g! t!) (and
     (has_type (Poly%vstd.atomic_ghost.AtomicU16. t!) (TYPE%vstd.atomic_ghost.AtomicU16.
       K&. K& G&. G& Pred&. Pred&
     ))
     (and
      (vstd.atomic_ghost.impl&%5.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU16.
        t!
      ))
      (= (vstd.atomic_ghost.impl&%5.constant.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU16.
         t!
        )
       ) k!
   ))))
   :pattern ((ens%vstd.atomic_ghost.impl&%5.new. K&. K& G&. G& Pred&. Pred& k! u! g! t!))
   :qid internal_ens__vstd.atomic_ghost.impl&__5.new._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__5.new._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicU16::new
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:65:13: 65:99 (#788)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const t! vstd.atomic_ghost.AtomicU16.)
 (declare-const k! Poly)
 (declare-const u! Int)
 (declare-const g! Poly)
 (declare-const verus_tmp_pair@ tuple%2.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 tuple%2.)
 (declare-const verus_tmp_atomic_inv@ Poly)
 (declare-const tmp%%@ tuple%2.)
 (declare-const patomic@ vstd.atomic.PAtomicU16.)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionU16.)
 (declare-const perm@0 vstd.atomic.PermissionU16.)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const pair@0 tuple%2.)
 (declare-const verus_tmp$1@ Poly)
 (declare-const atomic_inv@0 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type k! K&)
 )
 (assert
  (uInv 16 u!)
 )
 (assert
  (has_type g! G&)
 )
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (UINT 16)
   G&. G&
 ))
 (assert
  (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
    (UINT 16) G&. G& k! (I u!) g!
 )))
 (declare-const perm@1 vstd.atomic.PermissionU16.)
 (declare-const pair@1 tuple%2.)
 (declare-const atomic_inv@1 Poly)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (ens%vstd.atomic.impl&%5.new. u! tmp%%@)
    (=>
     (= patomic@ (%Poly%vstd.atomic.PAtomicU16. (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2.
          tmp%%@
     )))))
     (=>
      (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionU16. (tuple%2./tuple%2/1 (%Poly%tuple%2.
          (Poly%tuple%2. tmp%%@)
      ))))
      (=>
       (= perm@1 verus_tmp_perm@)
       (=>
        (= verus_tmp@ (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionU16. perm@1) g!))
        (=>
         (= verus_tmp_pair@ verus_tmp@)
         (=>
          (= pair@1 verus_tmp_pair@)
          (=>
           (= tmp%1 (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&.
              K& $ (UINT 16) G&. G& k! (I u!) g!
           )))
           (and
            (=>
             %%location_label%%0
             tmp%1
            )
            (=>
             tmp%1
             (=>
              (= tmp%2 (= (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic (%Poly%vstd.atomic.PermissionDataU16.
                  (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
                     perm@1
                 ))))
                ) (vstd.atomic.impl&%5.id.? (Poly%vstd.atomic.PAtomicU16. patomic@))
              ))
              (and
               (=>
                %%location_label%%1
                tmp%2
               )
               (=>
                tmp%2
                (=>
                 (= tmp%3 (tuple%2./tuple%2 k! (I (vstd.atomic.impl&%5.id.? (Poly%vstd.atomic.PAtomicU16.
                      patomic@
                 )))))
                 (and
                  (=>
                   %%location_label%%2
                   (req%vstd.invariant.impl&%0.new. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $
                     TYPE%vstd.atomic.PermissionU16. G&. G&
                    ) $ (TYPE%vstd.atomic_ghost.AtomicPredU16. Pred&. Pred&) (Poly%tuple%2. tmp%3) (Poly%tuple%2.
                     pair@1
                    ) 0
                  ))
                  (=>
                   (ens%vstd.invariant.impl&%0.new. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $
                     TYPE%vstd.atomic.PermissionU16. G&. G&
                    ) $ (TYPE%vstd.atomic_ghost.AtomicPredU16. Pred&. Pred&) (Poly%tuple%2. tmp%3) (Poly%tuple%2.
                     pair@1
                    ) 0 verus_tmp$1@
                   )
                   (=>
                    (= verus_tmp_atomic_inv@ verus_tmp$1@)
                    (=>
                     (= atomic_inv@1 verus_tmp_atomic_inv@)
                     (=>
                      (= t! (vstd.atomic_ghost.AtomicU16./AtomicU16 (%Poly%vstd.atomic.PAtomicU16. (Poly%vstd.atomic.PAtomicU16.
                          patomic@
                         )
                        ) atomic_inv@1
                      ))
                      (=>
                       %%location_label%%3
                       (and
                        (vstd.atomic_ghost.impl&%5.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU16.
                          t!
                        ))
                        (= (vstd.atomic_ghost.impl&%5.constant.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU16.
                           t!
                          )
                         ) k!
 ))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicU16::load
(declare-fun req%vstd.atomic_ghost.impl&%5.load. (Dcr Type Dcr Type Dcr Type vstd.atomic_ghost.AtomicU16.)
 Bool
)
(declare-const %%global_location_label%%32 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicU16.))
  (!
   (= (req%vstd.atomic_ghost.impl&%5.load. K&. K& G&. G& Pred&. Pred& self!) (=>
     %%global_location_label%%32
     (vstd.atomic_ghost.impl&%5.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU16.
       self!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%5.load. K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_req__vstd.atomic_ghost.impl&__5.load._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__5.load._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%5.load. (Dcr Type Dcr Type Dcr Type vstd.atomic_ghost.AtomicU16.
  Int
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicU16.)
   (%return! Int)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%5.load. K&. K& G&. G& Pred&. Pred& self! %return!)
    (uInv 16 %return!)
   )
   :pattern ((ens%vstd.atomic_ghost.impl&%5.load. K&. K& G&. G& Pred&. Pred& self! %return!))
   :qid internal_ens__vstd.atomic_ghost.impl&__5.load._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__5.load._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicU16::load
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:85:13: 85:16 (#788)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const %return! Int)
 (declare-const self! vstd.atomic_ghost.AtomicU16.)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2@0 tuple%2.)
 (declare-const pair~57@0 tuple%2.)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionU16.)
 (declare-const verus_tmp_g@0 Poly)
 (declare-const tmp%3 vstd.atomic.PAtomicU16.)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionU16.)
 (declare-const g@0 Poly)
 (declare-const verus_tmp$1@0 Int)
 (declare-const verus_tmp$2@0 Int)
 (declare-const verus_tmp$3@0 Int)
 (declare-const result@ Int)
 (declare-const atomic@ vstd.atomic_ghost.AtomicU16.)
 (declare-const credit@ vstd.invariant.OpenInvariantCredit.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.atomic_ghost.AtomicU16. self!) (TYPE%vstd.atomic_ghost.AtomicU16.
    K&. K& G&. G& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (UINT 16)
   G&. G&
 ))
 (assert
  (vstd.atomic_ghost.impl&%5.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU16.
    self!
 )))
 (declare-const perm@1 vstd.atomic.PermissionU16.)
 (declare-const g@1 Poly)
 (declare-const verus_tmp$1@1 Int)
 (declare-const verus_tmp$2@1 Int)
 (declare-const verus_tmp$3@1 Int)
 (declare-const pair~57@1 tuple%2.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; Cannot show invariant holds at end of block
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= atomic@ self!)
    (=>
     (= tmp%1 (vstd.atomic_ghost.AtomicU16./AtomicU16/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU16.
        (Poly%vstd.atomic_ghost.AtomicU16. atomic@)
     )))
     (=>
      (has_type (Poly%tuple%2. tmp%2@0) (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU16.
        G&. G&
      ))
      (=>
       (= pair~57@0 tmp%2@0)
       (=>
        (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
          $ TYPE%vstd.atomic.PermissionU16. G&. G&
         ) $ (TYPE%vstd.atomic_ghost.AtomicPredU16. Pred&. Pred&) tmp%1 (Poly%tuple%2. pair~57@0)
        )
        (=>
         (= verus_tmp@ pair~57@0)
         (=>
          (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionU16. (tuple%2./tuple%2/0 (%Poly%tuple%2.
              (Poly%tuple%2. verus_tmp@)
          ))))
          (=>
           (= verus_tmp_g@0 (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
           (=>
            (= perm@1 verus_tmp_perm@)
            (=>
             (= g@1 verus_tmp_g@0)
             (=>
              (= tmp%3 (vstd.atomic_ghost.AtomicU16./AtomicU16/patomic (%Poly%vstd.atomic_ghost.AtomicU16.
                 (Poly%vstd.atomic_ghost.AtomicU16. atomic@)
              )))
              (and
               (=>
                %%location_label%%0
                (req%vstd.atomic.impl&%5.load. tmp%3 perm@1)
               )
               (=>
                (ens%vstd.atomic.impl&%5.load. tmp%3 perm@1 result@)
                (=>
                 (= verus_tmp$1@1 result@)
                 (=>
                  (= verus_tmp$2@1 result@)
                  (=>
                   (= verus_tmp$3@1 result@)
                   (=>
                    (= pair~57@1 (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionU16. perm@1) g@1))
                    (=>
                     %%location_label%%1
                     (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
                       $ TYPE%vstd.atomic.PermissionU16. G&. G&
                      ) $ (TYPE%vstd.atomic_ghost.AtomicPredU16. Pred&. Pred&) tmp%1 (Poly%tuple%2. pair~57@1)
 )))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicU16::into_inner
(declare-fun req%vstd.atomic_ghost.impl&%5.into_inner. (Dcr Type Dcr Type Dcr Type
  vstd.atomic_ghost.AtomicU16.
 ) Bool
)
(declare-const %%global_location_label%%33 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicU16.))
  (!
   (= (req%vstd.atomic_ghost.impl&%5.into_inner. K&. K& G&. G& Pred&. Pred& self!) (=>
     %%global_location_label%%33
     (vstd.atomic_ghost.impl&%5.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU16.
       self!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%5.into_inner. K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_req__vstd.atomic_ghost.impl&__5.into_inner._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__5.into_inner._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%5.into_inner. (Dcr Type Dcr Type Dcr Type
  vstd.atomic_ghost.AtomicU16. tuple%2.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicU16.)
   (res! tuple%2.)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%5.into_inner. K&. K& G&. G& Pred&. Pred& self! res!)
    (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ (UINT 16) (TRACKED G&.) G&))
     (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
       (UINT 16) G&. G& (vstd.atomic_ghost.impl&%5.constant.? K&. K& G&. G& Pred&. Pred&
        (Poly%vstd.atomic_ghost.AtomicU16. self!)
       ) (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))) (tuple%2./tuple%2/1 (
         %Poly%tuple%2. (Poly%tuple%2. res!)
   ))))))
   :pattern ((ens%vstd.atomic_ghost.impl&%5.into_inner. K&. K& G&. G& Pred&. Pred& self!
     res!
   ))
   :qid internal_ens__vstd.atomic_ghost.impl&__5.into_inner._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__5.into_inner._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicU16::into_inner
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:92:13: 92:69 (#788)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const res! tuple%2.)
 (declare-const self! vstd.atomic_ghost.AtomicU16.)
 (declare-const tmp%1 Poly)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionU16.)
 (declare-const verus_tmp_g@ Poly)
 (declare-const patomic@ vstd.atomic.PAtomicU16.)
 (declare-const verus_tmp_atomic_inv@ Poly)
 (declare-const atomic_inv@0 Poly)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionU16.)
 (declare-const g@0 Poly)
 (declare-const v@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.atomic_ghost.AtomicU16. self!) (TYPE%vstd.atomic_ghost.AtomicU16.
    K&. K& G&. G& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (UINT 16)
   G&. G&
 ))
 (assert
  (vstd.atomic_ghost.impl&%5.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU16.
    self!
 )))
 (declare-const atomic_inv@1 Poly)
 (declare-const perm@1 vstd.atomic.PermissionU16.)
 (declare-const g@1 Poly)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= patomic@ (vstd.atomic_ghost.AtomicU16./AtomicU16/patomic (%Poly%vstd.atomic_ghost.AtomicU16.
       (Poly%vstd.atomic_ghost.AtomicU16. self!)
    )))
    (=>
     (= verus_tmp_atomic_inv@ (vstd.atomic_ghost.AtomicU16./AtomicU16/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU16.
        (Poly%vstd.atomic_ghost.AtomicU16. self!)
     )))
     (=>
      (= atomic_inv@1 verus_tmp_atomic_inv@)
      (=>
       (ens%vstd.invariant.impl&%0.into_inner. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
         $ TYPE%vstd.atomic.PermissionU16. G&. G&
        ) $ (TYPE%vstd.atomic_ghost.AtomicPredU16. Pred&. Pred&) atomic_inv@1 tmp%1
       )
       (=>
        (= verus_tmp@ (%Poly%tuple%2. tmp%1))
        (=>
         (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionU16. (tuple%2./tuple%2/0 (%Poly%tuple%2.
             (Poly%tuple%2. verus_tmp@)
         ))))
         (=>
          (= verus_tmp_g@ (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
          (=>
           (= perm@1 verus_tmp_perm@)
           (=>
            (= g@1 verus_tmp_g@)
            (and
             (=>
              %%location_label%%0
              (req%vstd.atomic.impl&%5.into_inner. patomic@ perm@1)
             )
             (=>
              (ens%vstd.atomic.impl&%5.into_inner. patomic@ perm@1 v@)
              (=>
               (= res! (tuple%2./tuple%2 (I v@) g@1))
               (=>
                %%location_label%%1
                (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
                  (UINT 16) G&. G& (vstd.atomic_ghost.impl&%5.constant.? K&. K& G&. G& Pred&. Pred&
                   (Poly%vstd.atomic_ghost.AtomicU16. self!)
                  ) (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))) (tuple%2./tuple%2/1 (
                    %Poly%tuple%2. (Poly%tuple%2. res!)
 )))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicU8::new
(declare-fun req%vstd.atomic_ghost.impl&%7.new. (Dcr Type Dcr Type Dcr Type Poly Int
  Poly
 ) Bool
)
(declare-const %%global_location_label%%34 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (u! Int) (g! Poly)
  ) (!
   (= (req%vstd.atomic_ghost.impl&%7.new. K&. K& G&. G& Pred&. Pred& k! u! g!) (=>
     %%global_location_label%%34
     (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
       (UINT 8) G&. G& k! (I u!) g!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%7.new. K&. K& G&. G& Pred&. Pred& k! u! g!))
   :qid internal_req__vstd.atomic_ghost.impl&__7.new._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__7.new._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%7.new. (Dcr Type Dcr Type Dcr Type Poly Int
  Poly vstd.atomic_ghost.AtomicU8.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (u! Int) (g! Poly) (t! vstd.atomic_ghost.AtomicU8.)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%7.new. K&. K& G&. G& Pred&. Pred& k! u! g! t!) (and
     (has_type (Poly%vstd.atomic_ghost.AtomicU8. t!) (TYPE%vstd.atomic_ghost.AtomicU8. K&.
       K& G&. G& Pred&. Pred&
     ))
     (and
      (vstd.atomic_ghost.impl&%7.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU8.
        t!
      ))
      (= (vstd.atomic_ghost.impl&%7.constant.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU8.
         t!
        )
       ) k!
   ))))
   :pattern ((ens%vstd.atomic_ghost.impl&%7.new. K&. K& G&. G& Pred&. Pred& k! u! g! t!))
   :qid internal_ens__vstd.atomic_ghost.impl&__7.new._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__7.new._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicU8::new
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:65:13: 65:99 (#816)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const t! vstd.atomic_ghost.AtomicU8.)
 (declare-const k! Poly)
 (declare-const u! Int)
 (declare-const g! Poly)
 (declare-const verus_tmp_pair@ tuple%2.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 tuple%2.)
 (declare-const verus_tmp_atomic_inv@ Poly)
 (declare-const tmp%%@ tuple%2.)
 (declare-const patomic@ vstd.atomic.PAtomicU8.)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionU8.)
 (declare-const perm@0 vstd.atomic.PermissionU8.)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const pair@0 tuple%2.)
 (declare-const verus_tmp$1@ Poly)
 (declare-const atomic_inv@0 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type k! K&)
 )
 (assert
  (uInv 8 u!)
 )
 (assert
  (has_type g! G&)
 )
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (UINT 8)
   G&. G&
 ))
 (assert
  (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
    (UINT 8) G&. G& k! (I u!) g!
 )))
 (declare-const perm@1 vstd.atomic.PermissionU8.)
 (declare-const pair@1 tuple%2.)
 (declare-const atomic_inv@1 Poly)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (ens%vstd.atomic.impl&%3.new. u! tmp%%@)
    (=>
     (= patomic@ (%Poly%vstd.atomic.PAtomicU8. (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2.
          tmp%%@
     )))))
     (=>
      (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionU8. (tuple%2./tuple%2/1 (%Poly%tuple%2.
          (Poly%tuple%2. tmp%%@)
      ))))
      (=>
       (= perm@1 verus_tmp_perm@)
       (=>
        (= verus_tmp@ (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionU8. perm@1) g!))
        (=>
         (= verus_tmp_pair@ verus_tmp@)
         (=>
          (= pair@1 verus_tmp_pair@)
          (=>
           (= tmp%1 (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&.
              K& $ (UINT 8) G&. G& k! (I u!) g!
           )))
           (and
            (=>
             %%location_label%%0
             tmp%1
            )
            (=>
             tmp%1
             (=>
              (= tmp%2 (= (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic (%Poly%vstd.atomic.PermissionDataU8.
                  (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
                     perm@1
                 ))))
                ) (vstd.atomic.impl&%3.id.? (Poly%vstd.atomic.PAtomicU8. patomic@))
              ))
              (and
               (=>
                %%location_label%%1
                tmp%2
               )
               (=>
                tmp%2
                (=>
                 (= tmp%3 (tuple%2./tuple%2 k! (I (vstd.atomic.impl&%3.id.? (Poly%vstd.atomic.PAtomicU8.
                      patomic@
                 )))))
                 (and
                  (=>
                   %%location_label%%2
                   (req%vstd.invariant.impl&%0.new. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $
                     TYPE%vstd.atomic.PermissionU8. G&. G&
                    ) $ (TYPE%vstd.atomic_ghost.AtomicPredU8. Pred&. Pred&) (Poly%tuple%2. tmp%3) (Poly%tuple%2.
                     pair@1
                    ) 0
                  ))
                  (=>
                   (ens%vstd.invariant.impl&%0.new. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $
                     TYPE%vstd.atomic.PermissionU8. G&. G&
                    ) $ (TYPE%vstd.atomic_ghost.AtomicPredU8. Pred&. Pred&) (Poly%tuple%2. tmp%3) (Poly%tuple%2.
                     pair@1
                    ) 0 verus_tmp$1@
                   )
                   (=>
                    (= verus_tmp_atomic_inv@ verus_tmp$1@)
                    (=>
                     (= atomic_inv@1 verus_tmp_atomic_inv@)
                     (=>
                      (= t! (vstd.atomic_ghost.AtomicU8./AtomicU8 (%Poly%vstd.atomic.PAtomicU8. (Poly%vstd.atomic.PAtomicU8.
                          patomic@
                         )
                        ) atomic_inv@1
                      ))
                      (=>
                       %%location_label%%3
                       (and
                        (vstd.atomic_ghost.impl&%7.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU8.
                          t!
                        ))
                        (= (vstd.atomic_ghost.impl&%7.constant.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU8.
                           t!
                          )
                         ) k!
 ))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicU8::load
(declare-fun req%vstd.atomic_ghost.impl&%7.load. (Dcr Type Dcr Type Dcr Type vstd.atomic_ghost.AtomicU8.)
 Bool
)
(declare-const %%global_location_label%%35 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicU8.))
  (!
   (= (req%vstd.atomic_ghost.impl&%7.load. K&. K& G&. G& Pred&. Pred& self!) (=>
     %%global_location_label%%35
     (vstd.atomic_ghost.impl&%7.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU8.
       self!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%7.load. K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_req__vstd.atomic_ghost.impl&__7.load._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__7.load._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%7.load. (Dcr Type Dcr Type Dcr Type vstd.atomic_ghost.AtomicU8.
  Int
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicU8.)
   (%return! Int)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%7.load. K&. K& G&. G& Pred&. Pred& self! %return!)
    (uInv 8 %return!)
   )
   :pattern ((ens%vstd.atomic_ghost.impl&%7.load. K&. K& G&. G& Pred&. Pred& self! %return!))
   :qid internal_ens__vstd.atomic_ghost.impl&__7.load._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__7.load._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicU8::load
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:85:13: 85:16 (#816)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const %return! Int)
 (declare-const self! vstd.atomic_ghost.AtomicU8.)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2@0 tuple%2.)
 (declare-const pair~57@0 tuple%2.)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionU8.)
 (declare-const verus_tmp_g@0 Poly)
 (declare-const tmp%3 vstd.atomic.PAtomicU8.)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionU8.)
 (declare-const g@0 Poly)
 (declare-const verus_tmp$1@0 Int)
 (declare-const verus_tmp$2@0 Int)
 (declare-const verus_tmp$3@0 Int)
 (declare-const result@ Int)
 (declare-const atomic@ vstd.atomic_ghost.AtomicU8.)
 (declare-const credit@ vstd.invariant.OpenInvariantCredit.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.atomic_ghost.AtomicU8. self!) (TYPE%vstd.atomic_ghost.AtomicU8.
    K&. K& G&. G& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (UINT 8)
   G&. G&
 ))
 (assert
  (vstd.atomic_ghost.impl&%7.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU8.
    self!
 )))
 (declare-const perm@1 vstd.atomic.PermissionU8.)
 (declare-const g@1 Poly)
 (declare-const verus_tmp$1@1 Int)
 (declare-const verus_tmp$2@1 Int)
 (declare-const verus_tmp$3@1 Int)
 (declare-const pair~57@1 tuple%2.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; Cannot show invariant holds at end of block
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= atomic@ self!)
    (=>
     (= tmp%1 (vstd.atomic_ghost.AtomicU8./AtomicU8/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU8.
        (Poly%vstd.atomic_ghost.AtomicU8. atomic@)
     )))
     (=>
      (has_type (Poly%tuple%2. tmp%2@0) (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionU8. G&.
        G&
      ))
      (=>
       (= pair~57@0 tmp%2@0)
       (=>
        (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
          $ TYPE%vstd.atomic.PermissionU8. G&. G&
         ) $ (TYPE%vstd.atomic_ghost.AtomicPredU8. Pred&. Pred&) tmp%1 (Poly%tuple%2. pair~57@0)
        )
        (=>
         (= verus_tmp@ pair~57@0)
         (=>
          (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionU8. (tuple%2./tuple%2/0 (%Poly%tuple%2.
              (Poly%tuple%2. verus_tmp@)
          ))))
          (=>
           (= verus_tmp_g@0 (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
           (=>
            (= perm@1 verus_tmp_perm@)
            (=>
             (= g@1 verus_tmp_g@0)
             (=>
              (= tmp%3 (vstd.atomic_ghost.AtomicU8./AtomicU8/patomic (%Poly%vstd.atomic_ghost.AtomicU8.
                 (Poly%vstd.atomic_ghost.AtomicU8. atomic@)
              )))
              (and
               (=>
                %%location_label%%0
                (req%vstd.atomic.impl&%3.load. tmp%3 perm@1)
               )
               (=>
                (ens%vstd.atomic.impl&%3.load. tmp%3 perm@1 result@)
                (=>
                 (= verus_tmp$1@1 result@)
                 (=>
                  (= verus_tmp$2@1 result@)
                  (=>
                   (= verus_tmp$3@1 result@)
                   (=>
                    (= pair~57@1 (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionU8. perm@1) g@1))
                    (=>
                     %%location_label%%1
                     (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
                       $ TYPE%vstd.atomic.PermissionU8. G&. G&
                      ) $ (TYPE%vstd.atomic_ghost.AtomicPredU8. Pred&. Pred&) tmp%1 (Poly%tuple%2. pair~57@1)
 )))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicU8::into_inner
(declare-fun req%vstd.atomic_ghost.impl&%7.into_inner. (Dcr Type Dcr Type Dcr Type
  vstd.atomic_ghost.AtomicU8.
 ) Bool
)
(declare-const %%global_location_label%%36 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicU8.))
  (!
   (= (req%vstd.atomic_ghost.impl&%7.into_inner. K&. K& G&. G& Pred&. Pred& self!) (=>
     %%global_location_label%%36
     (vstd.atomic_ghost.impl&%7.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU8.
       self!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%7.into_inner. K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_req__vstd.atomic_ghost.impl&__7.into_inner._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__7.into_inner._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%7.into_inner. (Dcr Type Dcr Type Dcr Type
  vstd.atomic_ghost.AtomicU8. tuple%2.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicU8.)
   (res! tuple%2.)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%7.into_inner. K&. K& G&. G& Pred&. Pred& self! res!)
    (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ (UINT 8) (TRACKED G&.) G&))
     (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
       (UINT 8) G&. G& (vstd.atomic_ghost.impl&%7.constant.? K&. K& G&. G& Pred&. Pred& (
         Poly%vstd.atomic_ghost.AtomicU8. self!
        )
       ) (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))) (tuple%2./tuple%2/1 (
         %Poly%tuple%2. (Poly%tuple%2. res!)
   ))))))
   :pattern ((ens%vstd.atomic_ghost.impl&%7.into_inner. K&. K& G&. G& Pred&. Pred& self!
     res!
   ))
   :qid internal_ens__vstd.atomic_ghost.impl&__7.into_inner._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__7.into_inner._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicU8::into_inner
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:92:13: 92:69 (#816)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const res! tuple%2.)
 (declare-const self! vstd.atomic_ghost.AtomicU8.)
 (declare-const tmp%1 Poly)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionU8.)
 (declare-const verus_tmp_g@ Poly)
 (declare-const patomic@ vstd.atomic.PAtomicU8.)
 (declare-const verus_tmp_atomic_inv@ Poly)
 (declare-const atomic_inv@0 Poly)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionU8.)
 (declare-const g@0 Poly)
 (declare-const v@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.atomic_ghost.AtomicU8. self!) (TYPE%vstd.atomic_ghost.AtomicU8.
    K&. K& G&. G& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (UINT 8)
   G&. G&
 ))
 (assert
  (vstd.atomic_ghost.impl&%7.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicU8.
    self!
 )))
 (declare-const atomic_inv@1 Poly)
 (declare-const perm@1 vstd.atomic.PermissionU8.)
 (declare-const g@1 Poly)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= patomic@ (vstd.atomic_ghost.AtomicU8./AtomicU8/patomic (%Poly%vstd.atomic_ghost.AtomicU8.
       (Poly%vstd.atomic_ghost.AtomicU8. self!)
    )))
    (=>
     (= verus_tmp_atomic_inv@ (vstd.atomic_ghost.AtomicU8./AtomicU8/atomic_inv (%Poly%vstd.atomic_ghost.AtomicU8.
        (Poly%vstd.atomic_ghost.AtomicU8. self!)
     )))
     (=>
      (= atomic_inv@1 verus_tmp_atomic_inv@)
      (=>
       (ens%vstd.invariant.impl&%0.into_inner. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
         $ TYPE%vstd.atomic.PermissionU8. G&. G&
        ) $ (TYPE%vstd.atomic_ghost.AtomicPredU8. Pred&. Pred&) atomic_inv@1 tmp%1
       )
       (=>
        (= verus_tmp@ (%Poly%tuple%2. tmp%1))
        (=>
         (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionU8. (tuple%2./tuple%2/0 (%Poly%tuple%2.
             (Poly%tuple%2. verus_tmp@)
         ))))
         (=>
          (= verus_tmp_g@ (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
          (=>
           (= perm@1 verus_tmp_perm@)
           (=>
            (= g@1 verus_tmp_g@)
            (and
             (=>
              %%location_label%%0
              (req%vstd.atomic.impl&%3.into_inner. patomic@ perm@1)
             )
             (=>
              (ens%vstd.atomic.impl&%3.into_inner. patomic@ perm@1 v@)
              (=>
               (= res! (tuple%2./tuple%2 (I v@) g@1))
               (=>
                %%location_label%%1
                (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
                  (UINT 8) G&. G& (vstd.atomic_ghost.impl&%7.constant.? K&. K& G&. G& Pred&. Pred& (
                    Poly%vstd.atomic_ghost.AtomicU8. self!
                   )
                  ) (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))) (tuple%2./tuple%2/1 (
                    %Poly%tuple%2. (Poly%tuple%2. res!)
 )))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicUsize::new
(declare-fun req%vstd.atomic_ghost.impl&%9.new. (Dcr Type Dcr Type Dcr Type Poly Int
  Poly
 ) Bool
)
(declare-const %%global_location_label%%37 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (u! Int) (g! Poly)
  ) (!
   (= (req%vstd.atomic_ghost.impl&%9.new. K&. K& G&. G& Pred&. Pred& k! u! g!) (=>
     %%global_location_label%%37
     (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
       (UINT SZ) G&. G& k! (I u!) g!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%9.new. K&. K& G&. G& Pred&. Pred& k! u! g!))
   :qid internal_req__vstd.atomic_ghost.impl&__9.new._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__9.new._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%9.new. (Dcr Type Dcr Type Dcr Type Poly Int
  Poly vstd.atomic_ghost.AtomicUsize.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (u! Int) (g! Poly) (t! vstd.atomic_ghost.AtomicUsize.)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%9.new. K&. K& G&. G& Pred&. Pred& k! u! g! t!) (and
     (has_type (Poly%vstd.atomic_ghost.AtomicUsize. t!) (TYPE%vstd.atomic_ghost.AtomicUsize.
       K&. K& G&. G& Pred&. Pred&
     ))
     (and
      (vstd.atomic_ghost.impl&%9.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicUsize.
        t!
      ))
      (= (vstd.atomic_ghost.impl&%9.constant.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicUsize.
         t!
        )
       ) k!
   ))))
   :pattern ((ens%vstd.atomic_ghost.impl&%9.new. K&. K& G&. G& Pred&. Pred& k! u! g! t!))
   :qid internal_ens__vstd.atomic_ghost.impl&__9.new._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__9.new._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicUsize::new
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:65:13: 65:99 (#844)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const t! vstd.atomic_ghost.AtomicUsize.)
 (declare-const k! Poly)
 (declare-const u! Int)
 (declare-const g! Poly)
 (declare-const verus_tmp_pair@ tuple%2.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 tuple%2.)
 (declare-const verus_tmp_atomic_inv@ Poly)
 (declare-const tmp%%@ tuple%2.)
 (declare-const patomic@ vstd.atomic.PAtomicUsize.)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionUsize.)
 (declare-const perm@0 vstd.atomic.PermissionUsize.)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const pair@0 tuple%2.)
 (declare-const verus_tmp$1@ Poly)
 (declare-const atomic_inv@0 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type k! K&)
 )
 (assert
  (uInv SZ u!)
 )
 (assert
  (has_type g! G&)
 )
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (UINT SZ)
   G&. G&
 ))
 (assert
  (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
    (UINT SZ) G&. G& k! (I u!) g!
 )))
 (declare-const perm@1 vstd.atomic.PermissionUsize.)
 (declare-const pair@1 tuple%2.)
 (declare-const atomic_inv@1 Poly)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (ens%vstd.atomic.impl&%11.new. u! tmp%%@)
    (=>
     (= patomic@ (%Poly%vstd.atomic.PAtomicUsize. (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2.
          tmp%%@
     )))))
     (=>
      (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionUsize. (tuple%2./tuple%2/1 (%Poly%tuple%2.
          (Poly%tuple%2. tmp%%@)
      ))))
      (=>
       (= perm@1 verus_tmp_perm@)
       (=>
        (= verus_tmp@ (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionUsize. perm@1) g!))
        (=>
         (= verus_tmp_pair@ verus_tmp@)
         (=>
          (= pair@1 verus_tmp_pair@)
          (=>
           (= tmp%1 (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&.
              K& $ (UINT SZ) G&. G& k! (I u!) g!
           )))
           (and
            (=>
             %%location_label%%0
             tmp%1
            )
            (=>
             tmp%1
             (=>
              (= tmp%2 (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic (%Poly%vstd.atomic.PermissionDataUsize.
                  (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
                     perm@1
                 ))))
                ) (vstd.atomic.impl&%11.id.? (Poly%vstd.atomic.PAtomicUsize. patomic@))
              ))
              (and
               (=>
                %%location_label%%1
                tmp%2
               )
               (=>
                tmp%2
                (=>
                 (= tmp%3 (tuple%2./tuple%2 k! (I (vstd.atomic.impl&%11.id.? (Poly%vstd.atomic.PAtomicUsize.
                      patomic@
                 )))))
                 (and
                  (=>
                   %%location_label%%2
                   (req%vstd.invariant.impl&%0.new. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $
                     TYPE%vstd.atomic.PermissionUsize. G&. G&
                    ) $ (TYPE%vstd.atomic_ghost.AtomicPredUsize. Pred&. Pred&) (Poly%tuple%2. tmp%3)
                    (Poly%tuple%2. pair@1) 0
                  ))
                  (=>
                   (ens%vstd.invariant.impl&%0.new. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $
                     TYPE%vstd.atomic.PermissionUsize. G&. G&
                    ) $ (TYPE%vstd.atomic_ghost.AtomicPredUsize. Pred&. Pred&) (Poly%tuple%2. tmp%3)
                    (Poly%tuple%2. pair@1) 0 verus_tmp$1@
                   )
                   (=>
                    (= verus_tmp_atomic_inv@ verus_tmp$1@)
                    (=>
                     (= atomic_inv@1 verus_tmp_atomic_inv@)
                     (=>
                      (= t! (vstd.atomic_ghost.AtomicUsize./AtomicUsize (%Poly%vstd.atomic.PAtomicUsize. (
                          Poly%vstd.atomic.PAtomicUsize. patomic@
                         )
                        ) atomic_inv@1
                      ))
                      (=>
                       %%location_label%%3
                       (and
                        (vstd.atomic_ghost.impl&%9.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicUsize.
                          t!
                        ))
                        (= (vstd.atomic_ghost.impl&%9.constant.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicUsize.
                           t!
                          )
                         ) k!
 ))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicUsize::load
(declare-fun req%vstd.atomic_ghost.impl&%9.load. (Dcr Type Dcr Type Dcr Type vstd.atomic_ghost.AtomicUsize.)
 Bool
)
(declare-const %%global_location_label%%38 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicUsize.))
  (!
   (= (req%vstd.atomic_ghost.impl&%9.load. K&. K& G&. G& Pred&. Pred& self!) (=>
     %%global_location_label%%38
     (vstd.atomic_ghost.impl&%9.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicUsize.
       self!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%9.load. K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_req__vstd.atomic_ghost.impl&__9.load._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__9.load._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%9.load. (Dcr Type Dcr Type Dcr Type vstd.atomic_ghost.AtomicUsize.
  Int
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicUsize.)
   (%return! Int)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%9.load. K&. K& G&. G& Pred&. Pred& self! %return!)
    (uInv SZ %return!)
   )
   :pattern ((ens%vstd.atomic_ghost.impl&%9.load. K&. K& G&. G& Pred&. Pred& self! %return!))
   :qid internal_ens__vstd.atomic_ghost.impl&__9.load._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__9.load._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicUsize::load
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:85:13: 85:16 (#844)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const %return! Int)
 (declare-const self! vstd.atomic_ghost.AtomicUsize.)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2@0 tuple%2.)
 (declare-const pair~57@0 tuple%2.)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionUsize.)
 (declare-const verus_tmp_g@0 Poly)
 (declare-const tmp%3 vstd.atomic.PAtomicUsize.)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionUsize.)
 (declare-const g@0 Poly)
 (declare-const verus_tmp$1@0 Int)
 (declare-const verus_tmp$2@0 Int)
 (declare-const verus_tmp$3@0 Int)
 (declare-const result@ Int)
 (declare-const atomic@ vstd.atomic_ghost.AtomicUsize.)
 (declare-const credit@ vstd.invariant.OpenInvariantCredit.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.atomic_ghost.AtomicUsize. self!) (TYPE%vstd.atomic_ghost.AtomicUsize.
    K&. K& G&. G& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (UINT SZ)
   G&. G&
 ))
 (assert
  (vstd.atomic_ghost.impl&%9.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicUsize.
    self!
 )))
 (declare-const perm@1 vstd.atomic.PermissionUsize.)
 (declare-const g@1 Poly)
 (declare-const verus_tmp$1@1 Int)
 (declare-const verus_tmp$2@1 Int)
 (declare-const verus_tmp$3@1 Int)
 (declare-const pair~57@1 tuple%2.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; Cannot show invariant holds at end of block
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= atomic@ self!)
    (=>
     (= tmp%1 (vstd.atomic_ghost.AtomicUsize./AtomicUsize/atomic_inv (%Poly%vstd.atomic_ghost.AtomicUsize.
        (Poly%vstd.atomic_ghost.AtomicUsize. atomic@)
     )))
     (=>
      (has_type (Poly%tuple%2. tmp%2@0) (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionUsize.
        G&. G&
      ))
      (=>
       (= pair~57@0 tmp%2@0)
       (=>
        (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
          $ TYPE%vstd.atomic.PermissionUsize. G&. G&
         ) $ (TYPE%vstd.atomic_ghost.AtomicPredUsize. Pred&. Pred&) tmp%1 (Poly%tuple%2. pair~57@0)
        )
        (=>
         (= verus_tmp@ pair~57@0)
         (=>
          (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionUsize. (tuple%2./tuple%2/0 (%Poly%tuple%2.
              (Poly%tuple%2. verus_tmp@)
          ))))
          (=>
           (= verus_tmp_g@0 (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
           (=>
            (= perm@1 verus_tmp_perm@)
            (=>
             (= g@1 verus_tmp_g@0)
             (=>
              (= tmp%3 (vstd.atomic_ghost.AtomicUsize./AtomicUsize/patomic (%Poly%vstd.atomic_ghost.AtomicUsize.
                 (Poly%vstd.atomic_ghost.AtomicUsize. atomic@)
              )))
              (and
               (=>
                %%location_label%%0
                (req%vstd.atomic.impl&%11.load. tmp%3 perm@1)
               )
               (=>
                (ens%vstd.atomic.impl&%11.load. tmp%3 perm@1 result@)
                (=>
                 (= verus_tmp$1@1 result@)
                 (=>
                  (= verus_tmp$2@1 result@)
                  (=>
                   (= verus_tmp$3@1 result@)
                   (=>
                    (= pair~57@1 (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionUsize. perm@1) g@1))
                    (=>
                     %%location_label%%1
                     (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
                       $ TYPE%vstd.atomic.PermissionUsize. G&. G&
                      ) $ (TYPE%vstd.atomic_ghost.AtomicPredUsize. Pred&. Pred&) tmp%1 (Poly%tuple%2. pair~57@1)
 )))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicUsize::into_inner
(declare-fun req%vstd.atomic_ghost.impl&%9.into_inner. (Dcr Type Dcr Type Dcr Type
  vstd.atomic_ghost.AtomicUsize.
 ) Bool
)
(declare-const %%global_location_label%%39 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicUsize.))
  (!
   (= (req%vstd.atomic_ghost.impl&%9.into_inner. K&. K& G&. G& Pred&. Pred& self!) (=>
     %%global_location_label%%39
     (vstd.atomic_ghost.impl&%9.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicUsize.
       self!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%9.into_inner. K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_req__vstd.atomic_ghost.impl&__9.into_inner._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__9.into_inner._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%9.into_inner. (Dcr Type Dcr Type Dcr Type
  vstd.atomic_ghost.AtomicUsize. tuple%2.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicUsize.)
   (res! tuple%2.)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%9.into_inner. K&. K& G&. G& Pred&. Pred& self! res!)
    (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ (UINT SZ) (TRACKED G&.) G&))
     (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
       (UINT SZ) G&. G& (vstd.atomic_ghost.impl&%9.constant.? K&. K& G&. G& Pred&. Pred&
        (Poly%vstd.atomic_ghost.AtomicUsize. self!)
       ) (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))) (tuple%2./tuple%2/1 (
         %Poly%tuple%2. (Poly%tuple%2. res!)
   ))))))
   :pattern ((ens%vstd.atomic_ghost.impl&%9.into_inner. K&. K& G&. G& Pred&. Pred& self!
     res!
   ))
   :qid internal_ens__vstd.atomic_ghost.impl&__9.into_inner._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__9.into_inner._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicUsize::into_inner
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:92:13: 92:69 (#844)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const res! tuple%2.)
 (declare-const self! vstd.atomic_ghost.AtomicUsize.)
 (declare-const tmp%1 Poly)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionUsize.)
 (declare-const verus_tmp_g@ Poly)
 (declare-const patomic@ vstd.atomic.PAtomicUsize.)
 (declare-const verus_tmp_atomic_inv@ Poly)
 (declare-const atomic_inv@0 Poly)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionUsize.)
 (declare-const g@0 Poly)
 (declare-const v@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.atomic_ghost.AtomicUsize. self!) (TYPE%vstd.atomic_ghost.AtomicUsize.
    K&. K& G&. G& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (UINT SZ)
   G&. G&
 ))
 (assert
  (vstd.atomic_ghost.impl&%9.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicUsize.
    self!
 )))
 (declare-const atomic_inv@1 Poly)
 (declare-const perm@1 vstd.atomic.PermissionUsize.)
 (declare-const g@1 Poly)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= patomic@ (vstd.atomic_ghost.AtomicUsize./AtomicUsize/patomic (%Poly%vstd.atomic_ghost.AtomicUsize.
       (Poly%vstd.atomic_ghost.AtomicUsize. self!)
    )))
    (=>
     (= verus_tmp_atomic_inv@ (vstd.atomic_ghost.AtomicUsize./AtomicUsize/atomic_inv (%Poly%vstd.atomic_ghost.AtomicUsize.
        (Poly%vstd.atomic_ghost.AtomicUsize. self!)
     )))
     (=>
      (= atomic_inv@1 verus_tmp_atomic_inv@)
      (=>
       (ens%vstd.invariant.impl&%0.into_inner. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
         $ TYPE%vstd.atomic.PermissionUsize. G&. G&
        ) $ (TYPE%vstd.atomic_ghost.AtomicPredUsize. Pred&. Pred&) atomic_inv@1 tmp%1
       )
       (=>
        (= verus_tmp@ (%Poly%tuple%2. tmp%1))
        (=>
         (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionUsize. (tuple%2./tuple%2/0 (%Poly%tuple%2.
             (Poly%tuple%2. verus_tmp@)
         ))))
         (=>
          (= verus_tmp_g@ (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
          (=>
           (= perm@1 verus_tmp_perm@)
           (=>
            (= g@1 verus_tmp_g@)
            (and
             (=>
              %%location_label%%0
              (req%vstd.atomic.impl&%11.into_inner. patomic@ perm@1)
             )
             (=>
              (ens%vstd.atomic.impl&%11.into_inner. patomic@ perm@1 v@)
              (=>
               (= res! (tuple%2./tuple%2 (I v@) g@1))
               (=>
                %%location_label%%1
                (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
                  (UINT SZ) G&. G& (vstd.atomic_ghost.impl&%9.constant.? K&. K& G&. G& Pred&. Pred&
                   (Poly%vstd.atomic_ghost.AtomicUsize. self!)
                  ) (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))) (tuple%2./tuple%2/1 (
                    %Poly%tuple%2. (Poly%tuple%2. res!)
 )))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicI64::new
(declare-fun req%vstd.atomic_ghost.impl&%11.new. (Dcr Type Dcr Type Dcr Type Poly Int
  Poly
 ) Bool
)
(declare-const %%global_location_label%%40 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (u! Int) (g! Poly)
  ) (!
   (= (req%vstd.atomic_ghost.impl&%11.new. K&. K& G&. G& Pred&. Pred& k! u! g!) (=>
     %%global_location_label%%40
     (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
       (SINT 64) G&. G& k! (I u!) g!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%11.new. K&. K& G&. G& Pred&. Pred& k! u! g!))
   :qid internal_req__vstd.atomic_ghost.impl&__11.new._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__11.new._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%11.new. (Dcr Type Dcr Type Dcr Type Poly Int
  Poly vstd.atomic_ghost.AtomicI64.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (u! Int) (g! Poly) (t! vstd.atomic_ghost.AtomicI64.)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%11.new. K&. K& G&. G& Pred&. Pred& k! u! g! t!) (and
     (has_type (Poly%vstd.atomic_ghost.AtomicI64. t!) (TYPE%vstd.atomic_ghost.AtomicI64.
       K&. K& G&. G& Pred&. Pred&
     ))
     (and
      (vstd.atomic_ghost.impl&%11.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI64.
        t!
      ))
      (= (vstd.atomic_ghost.impl&%11.constant.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI64.
         t!
        )
       ) k!
   ))))
   :pattern ((ens%vstd.atomic_ghost.impl&%11.new. K&. K& G&. G& Pred&. Pred& k! u! g!
     t!
   ))
   :qid internal_ens__vstd.atomic_ghost.impl&__11.new._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__11.new._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicI64::new
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:65:13: 65:99 (#872)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const t! vstd.atomic_ghost.AtomicI64.)
 (declare-const k! Poly)
 (declare-const u! Int)
 (declare-const g! Poly)
 (declare-const verus_tmp_pair@ tuple%2.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 tuple%2.)
 (declare-const verus_tmp_atomic_inv@ Poly)
 (declare-const tmp%%@ tuple%2.)
 (declare-const patomic@ vstd.atomic.PAtomicI64.)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionI64.)
 (declare-const perm@0 vstd.atomic.PermissionI64.)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const pair@0 tuple%2.)
 (declare-const verus_tmp$1@ Poly)
 (declare-const atomic_inv@0 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type k! K&)
 )
 (assert
  (iInv 64 u!)
 )
 (assert
  (has_type g! G&)
 )
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (SINT 64)
   G&. G&
 ))
 (assert
  (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
    (SINT 64) G&. G& k! (I u!) g!
 )))
 (declare-const perm@1 vstd.atomic.PermissionI64.)
 (declare-const pair@1 tuple%2.)
 (declare-const atomic_inv@1 Poly)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (ens%vstd.atomic.impl&%19.new. u! tmp%%@)
    (=>
     (= patomic@ (%Poly%vstd.atomic.PAtomicI64. (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2.
          tmp%%@
     )))))
     (=>
      (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionI64. (tuple%2./tuple%2/1 (%Poly%tuple%2.
          (Poly%tuple%2. tmp%%@)
      ))))
      (=>
       (= perm@1 verus_tmp_perm@)
       (=>
        (= verus_tmp@ (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionI64. perm@1) g!))
        (=>
         (= verus_tmp_pair@ verus_tmp@)
         (=>
          (= pair@1 verus_tmp_pair@)
          (=>
           (= tmp%1 (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&.
              K& $ (SINT 64) G&. G& k! (I u!) g!
           )))
           (and
            (=>
             %%location_label%%0
             tmp%1
            )
            (=>
             tmp%1
             (=>
              (= tmp%2 (= (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic (%Poly%vstd.atomic.PermissionDataI64.
                  (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
                     perm@1
                 ))))
                ) (vstd.atomic.impl&%19.id.? (Poly%vstd.atomic.PAtomicI64. patomic@))
              ))
              (and
               (=>
                %%location_label%%1
                tmp%2
               )
               (=>
                tmp%2
                (=>
                 (= tmp%3 (tuple%2./tuple%2 k! (I (vstd.atomic.impl&%19.id.? (Poly%vstd.atomic.PAtomicI64.
                      patomic@
                 )))))
                 (and
                  (=>
                   %%location_label%%2
                   (req%vstd.invariant.impl&%0.new. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $
                     TYPE%vstd.atomic.PermissionI64. G&. G&
                    ) $ (TYPE%vstd.atomic_ghost.AtomicPredI64. Pred&. Pred&) (Poly%tuple%2. tmp%3) (Poly%tuple%2.
                     pair@1
                    ) 0
                  ))
                  (=>
                   (ens%vstd.invariant.impl&%0.new. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $
                     TYPE%vstd.atomic.PermissionI64. G&. G&
                    ) $ (TYPE%vstd.atomic_ghost.AtomicPredI64. Pred&. Pred&) (Poly%tuple%2. tmp%3) (Poly%tuple%2.
                     pair@1
                    ) 0 verus_tmp$1@
                   )
                   (=>
                    (= verus_tmp_atomic_inv@ verus_tmp$1@)
                    (=>
                     (= atomic_inv@1 verus_tmp_atomic_inv@)
                     (=>
                      (= t! (vstd.atomic_ghost.AtomicI64./AtomicI64 (%Poly%vstd.atomic.PAtomicI64. (Poly%vstd.atomic.PAtomicI64.
                          patomic@
                         )
                        ) atomic_inv@1
                      ))
                      (=>
                       %%location_label%%3
                       (and
                        (vstd.atomic_ghost.impl&%11.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI64.
                          t!
                        ))
                        (= (vstd.atomic_ghost.impl&%11.constant.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI64.
                           t!
                          )
                         ) k!
 ))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicI64::load
(declare-fun req%vstd.atomic_ghost.impl&%11.load. (Dcr Type Dcr Type Dcr Type vstd.atomic_ghost.AtomicI64.)
 Bool
)
(declare-const %%global_location_label%%41 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicI64.))
  (!
   (= (req%vstd.atomic_ghost.impl&%11.load. K&. K& G&. G& Pred&. Pred& self!) (=>
     %%global_location_label%%41
     (vstd.atomic_ghost.impl&%11.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI64.
       self!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%11.load. K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_req__vstd.atomic_ghost.impl&__11.load._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__11.load._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%11.load. (Dcr Type Dcr Type Dcr Type vstd.atomic_ghost.AtomicI64.
  Int
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicI64.)
   (%return! Int)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%11.load. K&. K& G&. G& Pred&. Pred& self! %return!)
    (iInv 64 %return!)
   )
   :pattern ((ens%vstd.atomic_ghost.impl&%11.load. K&. K& G&. G& Pred&. Pred& self! %return!))
   :qid internal_ens__vstd.atomic_ghost.impl&__11.load._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__11.load._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicI64::load
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:85:13: 85:16 (#872)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const %return! Int)
 (declare-const self! vstd.atomic_ghost.AtomicI64.)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2@0 tuple%2.)
 (declare-const pair~57@0 tuple%2.)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionI64.)
 (declare-const verus_tmp_g@0 Poly)
 (declare-const tmp%3 vstd.atomic.PAtomicI64.)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionI64.)
 (declare-const g@0 Poly)
 (declare-const verus_tmp$1@0 Int)
 (declare-const verus_tmp$2@0 Int)
 (declare-const verus_tmp$3@0 Int)
 (declare-const result@ Int)
 (declare-const atomic@ vstd.atomic_ghost.AtomicI64.)
 (declare-const credit@ vstd.invariant.OpenInvariantCredit.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.atomic_ghost.AtomicI64. self!) (TYPE%vstd.atomic_ghost.AtomicI64.
    K&. K& G&. G& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (SINT 64)
   G&. G&
 ))
 (assert
  (vstd.atomic_ghost.impl&%11.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI64.
    self!
 )))
 (declare-const perm@1 vstd.atomic.PermissionI64.)
 (declare-const g@1 Poly)
 (declare-const verus_tmp$1@1 Int)
 (declare-const verus_tmp$2@1 Int)
 (declare-const verus_tmp$3@1 Int)
 (declare-const pair~57@1 tuple%2.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; Cannot show invariant holds at end of block
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= atomic@ self!)
    (=>
     (= tmp%1 (vstd.atomic_ghost.AtomicI64./AtomicI64/atomic_inv (%Poly%vstd.atomic_ghost.AtomicI64.
        (Poly%vstd.atomic_ghost.AtomicI64. atomic@)
     )))
     (=>
      (has_type (Poly%tuple%2. tmp%2@0) (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI64.
        G&. G&
      ))
      (=>
       (= pair~57@0 tmp%2@0)
       (=>
        (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
          $ TYPE%vstd.atomic.PermissionI64. G&. G&
         ) $ (TYPE%vstd.atomic_ghost.AtomicPredI64. Pred&. Pred&) tmp%1 (Poly%tuple%2. pair~57@0)
        )
        (=>
         (= verus_tmp@ pair~57@0)
         (=>
          (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionI64. (tuple%2./tuple%2/0 (%Poly%tuple%2.
              (Poly%tuple%2. verus_tmp@)
          ))))
          (=>
           (= verus_tmp_g@0 (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
           (=>
            (= perm@1 verus_tmp_perm@)
            (=>
             (= g@1 verus_tmp_g@0)
             (=>
              (= tmp%3 (vstd.atomic_ghost.AtomicI64./AtomicI64/patomic (%Poly%vstd.atomic_ghost.AtomicI64.
                 (Poly%vstd.atomic_ghost.AtomicI64. atomic@)
              )))
              (and
               (=>
                %%location_label%%0
                (req%vstd.atomic.impl&%19.load. tmp%3 perm@1)
               )
               (=>
                (ens%vstd.atomic.impl&%19.load. tmp%3 perm@1 result@)
                (=>
                 (= verus_tmp$1@1 result@)
                 (=>
                  (= verus_tmp$2@1 result@)
                  (=>
                   (= verus_tmp$3@1 result@)
                   (=>
                    (= pair~57@1 (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionI64. perm@1) g@1))
                    (=>
                     %%location_label%%1
                     (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
                       $ TYPE%vstd.atomic.PermissionI64. G&. G&
                      ) $ (TYPE%vstd.atomic_ghost.AtomicPredI64. Pred&. Pred&) tmp%1 (Poly%tuple%2. pair~57@1)
 )))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicI64::into_inner
(declare-fun req%vstd.atomic_ghost.impl&%11.into_inner. (Dcr Type Dcr Type Dcr Type
  vstd.atomic_ghost.AtomicI64.
 ) Bool
)
(declare-const %%global_location_label%%42 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicI64.))
  (!
   (= (req%vstd.atomic_ghost.impl&%11.into_inner. K&. K& G&. G& Pred&. Pred& self!) (
     =>
     %%global_location_label%%42
     (vstd.atomic_ghost.impl&%11.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI64.
       self!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%11.into_inner. K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_req__vstd.atomic_ghost.impl&__11.into_inner._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__11.into_inner._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%11.into_inner. (Dcr Type Dcr Type Dcr Type
  vstd.atomic_ghost.AtomicI64. tuple%2.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicI64.)
   (res! tuple%2.)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%11.into_inner. K&. K& G&. G& Pred&. Pred& self! res!)
    (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ (SINT 64) (TRACKED G&.) G&))
     (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
       (SINT 64) G&. G& (vstd.atomic_ghost.impl&%11.constant.? K&. K& G&. G& Pred&. Pred&
        (Poly%vstd.atomic_ghost.AtomicI64. self!)
       ) (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))) (tuple%2./tuple%2/1 (
         %Poly%tuple%2. (Poly%tuple%2. res!)
   ))))))
   :pattern ((ens%vstd.atomic_ghost.impl&%11.into_inner. K&. K& G&. G& Pred&. Pred& self!
     res!
   ))
   :qid internal_ens__vstd.atomic_ghost.impl&__11.into_inner._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__11.into_inner._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicI64::into_inner
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:92:13: 92:69 (#872)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const res! tuple%2.)
 (declare-const self! vstd.atomic_ghost.AtomicI64.)
 (declare-const tmp%1 Poly)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionI64.)
 (declare-const verus_tmp_g@ Poly)
 (declare-const patomic@ vstd.atomic.PAtomicI64.)
 (declare-const verus_tmp_atomic_inv@ Poly)
 (declare-const atomic_inv@0 Poly)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionI64.)
 (declare-const g@0 Poly)
 (declare-const v@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.atomic_ghost.AtomicI64. self!) (TYPE%vstd.atomic_ghost.AtomicI64.
    K&. K& G&. G& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (SINT 64)
   G&. G&
 ))
 (assert
  (vstd.atomic_ghost.impl&%11.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI64.
    self!
 )))
 (declare-const atomic_inv@1 Poly)
 (declare-const perm@1 vstd.atomic.PermissionI64.)
 (declare-const g@1 Poly)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= patomic@ (vstd.atomic_ghost.AtomicI64./AtomicI64/patomic (%Poly%vstd.atomic_ghost.AtomicI64.
       (Poly%vstd.atomic_ghost.AtomicI64. self!)
    )))
    (=>
     (= verus_tmp_atomic_inv@ (vstd.atomic_ghost.AtomicI64./AtomicI64/atomic_inv (%Poly%vstd.atomic_ghost.AtomicI64.
        (Poly%vstd.atomic_ghost.AtomicI64. self!)
     )))
     (=>
      (= atomic_inv@1 verus_tmp_atomic_inv@)
      (=>
       (ens%vstd.invariant.impl&%0.into_inner. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
         $ TYPE%vstd.atomic.PermissionI64. G&. G&
        ) $ (TYPE%vstd.atomic_ghost.AtomicPredI64. Pred&. Pred&) atomic_inv@1 tmp%1
       )
       (=>
        (= verus_tmp@ (%Poly%tuple%2. tmp%1))
        (=>
         (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionI64. (tuple%2./tuple%2/0 (%Poly%tuple%2.
             (Poly%tuple%2. verus_tmp@)
         ))))
         (=>
          (= verus_tmp_g@ (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
          (=>
           (= perm@1 verus_tmp_perm@)
           (=>
            (= g@1 verus_tmp_g@)
            (and
             (=>
              %%location_label%%0
              (req%vstd.atomic.impl&%19.into_inner. patomic@ perm@1)
             )
             (=>
              (ens%vstd.atomic.impl&%19.into_inner. patomic@ perm@1 v@)
              (=>
               (= res! (tuple%2./tuple%2 (I v@) g@1))
               (=>
                %%location_label%%1
                (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
                  (SINT 64) G&. G& (vstd.atomic_ghost.impl&%11.constant.? K&. K& G&. G& Pred&. Pred&
                   (Poly%vstd.atomic_ghost.AtomicI64. self!)
                  ) (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))) (tuple%2./tuple%2/1 (
                    %Poly%tuple%2. (Poly%tuple%2. res!)
 )))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicI32::new
(declare-fun req%vstd.atomic_ghost.impl&%13.new. (Dcr Type Dcr Type Dcr Type Poly Int
  Poly
 ) Bool
)
(declare-const %%global_location_label%%43 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (u! Int) (g! Poly)
  ) (!
   (= (req%vstd.atomic_ghost.impl&%13.new. K&. K& G&. G& Pred&. Pred& k! u! g!) (=>
     %%global_location_label%%43
     (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
       (SINT 32) G&. G& k! (I u!) g!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%13.new. K&. K& G&. G& Pred&. Pred& k! u! g!))
   :qid internal_req__vstd.atomic_ghost.impl&__13.new._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__13.new._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%13.new. (Dcr Type Dcr Type Dcr Type Poly Int
  Poly vstd.atomic_ghost.AtomicI32.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (u! Int) (g! Poly) (t! vstd.atomic_ghost.AtomicI32.)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%13.new. K&. K& G&. G& Pred&. Pred& k! u! g! t!) (and
     (has_type (Poly%vstd.atomic_ghost.AtomicI32. t!) (TYPE%vstd.atomic_ghost.AtomicI32.
       K&. K& G&. G& Pred&. Pred&
     ))
     (and
      (vstd.atomic_ghost.impl&%13.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI32.
        t!
      ))
      (= (vstd.atomic_ghost.impl&%13.constant.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI32.
         t!
        )
       ) k!
   ))))
   :pattern ((ens%vstd.atomic_ghost.impl&%13.new. K&. K& G&. G& Pred&. Pred& k! u! g!
     t!
   ))
   :qid internal_ens__vstd.atomic_ghost.impl&__13.new._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__13.new._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicI32::new
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:65:13: 65:99 (#900)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const t! vstd.atomic_ghost.AtomicI32.)
 (declare-const k! Poly)
 (declare-const u! Int)
 (declare-const g! Poly)
 (declare-const verus_tmp_pair@ tuple%2.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 tuple%2.)
 (declare-const verus_tmp_atomic_inv@ Poly)
 (declare-const tmp%%@ tuple%2.)
 (declare-const patomic@ vstd.atomic.PAtomicI32.)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionI32.)
 (declare-const perm@0 vstd.atomic.PermissionI32.)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const pair@0 tuple%2.)
 (declare-const verus_tmp$1@ Poly)
 (declare-const atomic_inv@0 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type k! K&)
 )
 (assert
  (iInv 32 u!)
 )
 (assert
  (has_type g! G&)
 )
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (SINT 32)
   G&. G&
 ))
 (assert
  (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
    (SINT 32) G&. G& k! (I u!) g!
 )))
 (declare-const perm@1 vstd.atomic.PermissionI32.)
 (declare-const pair@1 tuple%2.)
 (declare-const atomic_inv@1 Poly)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (ens%vstd.atomic.impl&%17.new. u! tmp%%@)
    (=>
     (= patomic@ (%Poly%vstd.atomic.PAtomicI32. (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2.
          tmp%%@
     )))))
     (=>
      (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionI32. (tuple%2./tuple%2/1 (%Poly%tuple%2.
          (Poly%tuple%2. tmp%%@)
      ))))
      (=>
       (= perm@1 verus_tmp_perm@)
       (=>
        (= verus_tmp@ (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionI32. perm@1) g!))
        (=>
         (= verus_tmp_pair@ verus_tmp@)
         (=>
          (= pair@1 verus_tmp_pair@)
          (=>
           (= tmp%1 (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&.
              K& $ (SINT 32) G&. G& k! (I u!) g!
           )))
           (and
            (=>
             %%location_label%%0
             tmp%1
            )
            (=>
             tmp%1
             (=>
              (= tmp%2 (= (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic (%Poly%vstd.atomic.PermissionDataI32.
                  (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
                     perm@1
                 ))))
                ) (vstd.atomic.impl&%17.id.? (Poly%vstd.atomic.PAtomicI32. patomic@))
              ))
              (and
               (=>
                %%location_label%%1
                tmp%2
               )
               (=>
                tmp%2
                (=>
                 (= tmp%3 (tuple%2./tuple%2 k! (I (vstd.atomic.impl&%17.id.? (Poly%vstd.atomic.PAtomicI32.
                      patomic@
                 )))))
                 (and
                  (=>
                   %%location_label%%2
                   (req%vstd.invariant.impl&%0.new. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $
                     TYPE%vstd.atomic.PermissionI32. G&. G&
                    ) $ (TYPE%vstd.atomic_ghost.AtomicPredI32. Pred&. Pred&) (Poly%tuple%2. tmp%3) (Poly%tuple%2.
                     pair@1
                    ) 0
                  ))
                  (=>
                   (ens%vstd.invariant.impl&%0.new. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $
                     TYPE%vstd.atomic.PermissionI32. G&. G&
                    ) $ (TYPE%vstd.atomic_ghost.AtomicPredI32. Pred&. Pred&) (Poly%tuple%2. tmp%3) (Poly%tuple%2.
                     pair@1
                    ) 0 verus_tmp$1@
                   )
                   (=>
                    (= verus_tmp_atomic_inv@ verus_tmp$1@)
                    (=>
                     (= atomic_inv@1 verus_tmp_atomic_inv@)
                     (=>
                      (= t! (vstd.atomic_ghost.AtomicI32./AtomicI32 (%Poly%vstd.atomic.PAtomicI32. (Poly%vstd.atomic.PAtomicI32.
                          patomic@
                         )
                        ) atomic_inv@1
                      ))
                      (=>
                       %%location_label%%3
                       (and
                        (vstd.atomic_ghost.impl&%13.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI32.
                          t!
                        ))
                        (= (vstd.atomic_ghost.impl&%13.constant.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI32.
                           t!
                          )
                         ) k!
 ))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicI32::load
(declare-fun req%vstd.atomic_ghost.impl&%13.load. (Dcr Type Dcr Type Dcr Type vstd.atomic_ghost.AtomicI32.)
 Bool
)
(declare-const %%global_location_label%%44 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicI32.))
  (!
   (= (req%vstd.atomic_ghost.impl&%13.load. K&. K& G&. G& Pred&. Pred& self!) (=>
     %%global_location_label%%44
     (vstd.atomic_ghost.impl&%13.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI32.
       self!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%13.load. K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_req__vstd.atomic_ghost.impl&__13.load._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__13.load._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%13.load. (Dcr Type Dcr Type Dcr Type vstd.atomic_ghost.AtomicI32.
  Int
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicI32.)
   (%return! Int)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%13.load. K&. K& G&. G& Pred&. Pred& self! %return!)
    (iInv 32 %return!)
   )
   :pattern ((ens%vstd.atomic_ghost.impl&%13.load. K&. K& G&. G& Pred&. Pred& self! %return!))
   :qid internal_ens__vstd.atomic_ghost.impl&__13.load._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__13.load._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicI32::load
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:85:13: 85:16 (#900)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const %return! Int)
 (declare-const self! vstd.atomic_ghost.AtomicI32.)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2@0 tuple%2.)
 (declare-const pair~57@0 tuple%2.)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionI32.)
 (declare-const verus_tmp_g@0 Poly)
 (declare-const tmp%3 vstd.atomic.PAtomicI32.)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionI32.)
 (declare-const g@0 Poly)
 (declare-const verus_tmp$1@0 Int)
 (declare-const verus_tmp$2@0 Int)
 (declare-const verus_tmp$3@0 Int)
 (declare-const result@ Int)
 (declare-const atomic@ vstd.atomic_ghost.AtomicI32.)
 (declare-const credit@ vstd.invariant.OpenInvariantCredit.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.atomic_ghost.AtomicI32. self!) (TYPE%vstd.atomic_ghost.AtomicI32.
    K&. K& G&. G& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (SINT 32)
   G&. G&
 ))
 (assert
  (vstd.atomic_ghost.impl&%13.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI32.
    self!
 )))
 (declare-const perm@1 vstd.atomic.PermissionI32.)
 (declare-const g@1 Poly)
 (declare-const verus_tmp$1@1 Int)
 (declare-const verus_tmp$2@1 Int)
 (declare-const verus_tmp$3@1 Int)
 (declare-const pair~57@1 tuple%2.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; Cannot show invariant holds at end of block
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= atomic@ self!)
    (=>
     (= tmp%1 (vstd.atomic_ghost.AtomicI32./AtomicI32/atomic_inv (%Poly%vstd.atomic_ghost.AtomicI32.
        (Poly%vstd.atomic_ghost.AtomicI32. atomic@)
     )))
     (=>
      (has_type (Poly%tuple%2. tmp%2@0) (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI32.
        G&. G&
      ))
      (=>
       (= pair~57@0 tmp%2@0)
       (=>
        (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
          $ TYPE%vstd.atomic.PermissionI32. G&. G&
         ) $ (TYPE%vstd.atomic_ghost.AtomicPredI32. Pred&. Pred&) tmp%1 (Poly%tuple%2. pair~57@0)
        )
        (=>
         (= verus_tmp@ pair~57@0)
         (=>
          (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionI32. (tuple%2./tuple%2/0 (%Poly%tuple%2.
              (Poly%tuple%2. verus_tmp@)
          ))))
          (=>
           (= verus_tmp_g@0 (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
           (=>
            (= perm@1 verus_tmp_perm@)
            (=>
             (= g@1 verus_tmp_g@0)
             (=>
              (= tmp%3 (vstd.atomic_ghost.AtomicI32./AtomicI32/patomic (%Poly%vstd.atomic_ghost.AtomicI32.
                 (Poly%vstd.atomic_ghost.AtomicI32. atomic@)
              )))
              (and
               (=>
                %%location_label%%0
                (req%vstd.atomic.impl&%17.load. tmp%3 perm@1)
               )
               (=>
                (ens%vstd.atomic.impl&%17.load. tmp%3 perm@1 result@)
                (=>
                 (= verus_tmp$1@1 result@)
                 (=>
                  (= verus_tmp$2@1 result@)
                  (=>
                   (= verus_tmp$3@1 result@)
                   (=>
                    (= pair~57@1 (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionI32. perm@1) g@1))
                    (=>
                     %%location_label%%1
                     (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
                       $ TYPE%vstd.atomic.PermissionI32. G&. G&
                      ) $ (TYPE%vstd.atomic_ghost.AtomicPredI32. Pred&. Pred&) tmp%1 (Poly%tuple%2. pair~57@1)
 )))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicI32::into_inner
(declare-fun req%vstd.atomic_ghost.impl&%13.into_inner. (Dcr Type Dcr Type Dcr Type
  vstd.atomic_ghost.AtomicI32.
 ) Bool
)
(declare-const %%global_location_label%%45 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicI32.))
  (!
   (= (req%vstd.atomic_ghost.impl&%13.into_inner. K&. K& G&. G& Pred&. Pred& self!) (
     =>
     %%global_location_label%%45
     (vstd.atomic_ghost.impl&%13.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI32.
       self!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%13.into_inner. K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_req__vstd.atomic_ghost.impl&__13.into_inner._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__13.into_inner._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%13.into_inner. (Dcr Type Dcr Type Dcr Type
  vstd.atomic_ghost.AtomicI32. tuple%2.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicI32.)
   (res! tuple%2.)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%13.into_inner. K&. K& G&. G& Pred&. Pred& self! res!)
    (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ (SINT 32) (TRACKED G&.) G&))
     (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
       (SINT 32) G&. G& (vstd.atomic_ghost.impl&%13.constant.? K&. K& G&. G& Pred&. Pred&
        (Poly%vstd.atomic_ghost.AtomicI32. self!)
       ) (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))) (tuple%2./tuple%2/1 (
         %Poly%tuple%2. (Poly%tuple%2. res!)
   ))))))
   :pattern ((ens%vstd.atomic_ghost.impl&%13.into_inner. K&. K& G&. G& Pred&. Pred& self!
     res!
   ))
   :qid internal_ens__vstd.atomic_ghost.impl&__13.into_inner._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__13.into_inner._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicI32::into_inner
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:92:13: 92:69 (#900)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const res! tuple%2.)
 (declare-const self! vstd.atomic_ghost.AtomicI32.)
 (declare-const tmp%1 Poly)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionI32.)
 (declare-const verus_tmp_g@ Poly)
 (declare-const patomic@ vstd.atomic.PAtomicI32.)
 (declare-const verus_tmp_atomic_inv@ Poly)
 (declare-const atomic_inv@0 Poly)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionI32.)
 (declare-const g@0 Poly)
 (declare-const v@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.atomic_ghost.AtomicI32. self!) (TYPE%vstd.atomic_ghost.AtomicI32.
    K&. K& G&. G& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (SINT 32)
   G&. G&
 ))
 (assert
  (vstd.atomic_ghost.impl&%13.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI32.
    self!
 )))
 (declare-const atomic_inv@1 Poly)
 (declare-const perm@1 vstd.atomic.PermissionI32.)
 (declare-const g@1 Poly)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= patomic@ (vstd.atomic_ghost.AtomicI32./AtomicI32/patomic (%Poly%vstd.atomic_ghost.AtomicI32.
       (Poly%vstd.atomic_ghost.AtomicI32. self!)
    )))
    (=>
     (= verus_tmp_atomic_inv@ (vstd.atomic_ghost.AtomicI32./AtomicI32/atomic_inv (%Poly%vstd.atomic_ghost.AtomicI32.
        (Poly%vstd.atomic_ghost.AtomicI32. self!)
     )))
     (=>
      (= atomic_inv@1 verus_tmp_atomic_inv@)
      (=>
       (ens%vstd.invariant.impl&%0.into_inner. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
         $ TYPE%vstd.atomic.PermissionI32. G&. G&
        ) $ (TYPE%vstd.atomic_ghost.AtomicPredI32. Pred&. Pred&) atomic_inv@1 tmp%1
       )
       (=>
        (= verus_tmp@ (%Poly%tuple%2. tmp%1))
        (=>
         (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionI32. (tuple%2./tuple%2/0 (%Poly%tuple%2.
             (Poly%tuple%2. verus_tmp@)
         ))))
         (=>
          (= verus_tmp_g@ (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
          (=>
           (= perm@1 verus_tmp_perm@)
           (=>
            (= g@1 verus_tmp_g@)
            (and
             (=>
              %%location_label%%0
              (req%vstd.atomic.impl&%17.into_inner. patomic@ perm@1)
             )
             (=>
              (ens%vstd.atomic.impl&%17.into_inner. patomic@ perm@1 v@)
              (=>
               (= res! (tuple%2./tuple%2 (I v@) g@1))
               (=>
                %%location_label%%1
                (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
                  (SINT 32) G&. G& (vstd.atomic_ghost.impl&%13.constant.? K&. K& G&. G& Pred&. Pred&
                   (Poly%vstd.atomic_ghost.AtomicI32. self!)
                  ) (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))) (tuple%2./tuple%2/1 (
                    %Poly%tuple%2. (Poly%tuple%2. res!)
 )))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicI16::new
(declare-fun req%vstd.atomic_ghost.impl&%15.new. (Dcr Type Dcr Type Dcr Type Poly Int
  Poly
 ) Bool
)
(declare-const %%global_location_label%%46 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (u! Int) (g! Poly)
  ) (!
   (= (req%vstd.atomic_ghost.impl&%15.new. K&. K& G&. G& Pred&. Pred& k! u! g!) (=>
     %%global_location_label%%46
     (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
       (SINT 16) G&. G& k! (I u!) g!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%15.new. K&. K& G&. G& Pred&. Pred& k! u! g!))
   :qid internal_req__vstd.atomic_ghost.impl&__15.new._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__15.new._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%15.new. (Dcr Type Dcr Type Dcr Type Poly Int
  Poly vstd.atomic_ghost.AtomicI16.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (u! Int) (g! Poly) (t! vstd.atomic_ghost.AtomicI16.)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%15.new. K&. K& G&. G& Pred&. Pred& k! u! g! t!) (and
     (has_type (Poly%vstd.atomic_ghost.AtomicI16. t!) (TYPE%vstd.atomic_ghost.AtomicI16.
       K&. K& G&. G& Pred&. Pred&
     ))
     (and
      (vstd.atomic_ghost.impl&%15.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI16.
        t!
      ))
      (= (vstd.atomic_ghost.impl&%15.constant.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI16.
         t!
        )
       ) k!
   ))))
   :pattern ((ens%vstd.atomic_ghost.impl&%15.new. K&. K& G&. G& Pred&. Pred& k! u! g!
     t!
   ))
   :qid internal_ens__vstd.atomic_ghost.impl&__15.new._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__15.new._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicI16::new
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:65:13: 65:99 (#928)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const t! vstd.atomic_ghost.AtomicI16.)
 (declare-const k! Poly)
 (declare-const u! Int)
 (declare-const g! Poly)
 (declare-const verus_tmp_pair@ tuple%2.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 tuple%2.)
 (declare-const verus_tmp_atomic_inv@ Poly)
 (declare-const tmp%%@ tuple%2.)
 (declare-const patomic@ vstd.atomic.PAtomicI16.)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionI16.)
 (declare-const perm@0 vstd.atomic.PermissionI16.)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const pair@0 tuple%2.)
 (declare-const verus_tmp$1@ Poly)
 (declare-const atomic_inv@0 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type k! K&)
 )
 (assert
  (iInv 16 u!)
 )
 (assert
  (has_type g! G&)
 )
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (SINT 16)
   G&. G&
 ))
 (assert
  (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
    (SINT 16) G&. G& k! (I u!) g!
 )))
 (declare-const perm@1 vstd.atomic.PermissionI16.)
 (declare-const pair@1 tuple%2.)
 (declare-const atomic_inv@1 Poly)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (ens%vstd.atomic.impl&%15.new. u! tmp%%@)
    (=>
     (= patomic@ (%Poly%vstd.atomic.PAtomicI16. (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2.
          tmp%%@
     )))))
     (=>
      (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionI16. (tuple%2./tuple%2/1 (%Poly%tuple%2.
          (Poly%tuple%2. tmp%%@)
      ))))
      (=>
       (= perm@1 verus_tmp_perm@)
       (=>
        (= verus_tmp@ (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionI16. perm@1) g!))
        (=>
         (= verus_tmp_pair@ verus_tmp@)
         (=>
          (= pair@1 verus_tmp_pair@)
          (=>
           (= tmp%1 (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&.
              K& $ (SINT 16) G&. G& k! (I u!) g!
           )))
           (and
            (=>
             %%location_label%%0
             tmp%1
            )
            (=>
             tmp%1
             (=>
              (= tmp%2 (= (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic (%Poly%vstd.atomic.PermissionDataI16.
                  (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
                     perm@1
                 ))))
                ) (vstd.atomic.impl&%15.id.? (Poly%vstd.atomic.PAtomicI16. patomic@))
              ))
              (and
               (=>
                %%location_label%%1
                tmp%2
               )
               (=>
                tmp%2
                (=>
                 (= tmp%3 (tuple%2./tuple%2 k! (I (vstd.atomic.impl&%15.id.? (Poly%vstd.atomic.PAtomicI16.
                      patomic@
                 )))))
                 (and
                  (=>
                   %%location_label%%2
                   (req%vstd.invariant.impl&%0.new. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $
                     TYPE%vstd.atomic.PermissionI16. G&. G&
                    ) $ (TYPE%vstd.atomic_ghost.AtomicPredI16. Pred&. Pred&) (Poly%tuple%2. tmp%3) (Poly%tuple%2.
                     pair@1
                    ) 0
                  ))
                  (=>
                   (ens%vstd.invariant.impl&%0.new. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $
                     TYPE%vstd.atomic.PermissionI16. G&. G&
                    ) $ (TYPE%vstd.atomic_ghost.AtomicPredI16. Pred&. Pred&) (Poly%tuple%2. tmp%3) (Poly%tuple%2.
                     pair@1
                    ) 0 verus_tmp$1@
                   )
                   (=>
                    (= verus_tmp_atomic_inv@ verus_tmp$1@)
                    (=>
                     (= atomic_inv@1 verus_tmp_atomic_inv@)
                     (=>
                      (= t! (vstd.atomic_ghost.AtomicI16./AtomicI16 (%Poly%vstd.atomic.PAtomicI16. (Poly%vstd.atomic.PAtomicI16.
                          patomic@
                         )
                        ) atomic_inv@1
                      ))
                      (=>
                       %%location_label%%3
                       (and
                        (vstd.atomic_ghost.impl&%15.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI16.
                          t!
                        ))
                        (= (vstd.atomic_ghost.impl&%15.constant.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI16.
                           t!
                          )
                         ) k!
 ))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicI16::load
(declare-fun req%vstd.atomic_ghost.impl&%15.load. (Dcr Type Dcr Type Dcr Type vstd.atomic_ghost.AtomicI16.)
 Bool
)
(declare-const %%global_location_label%%47 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicI16.))
  (!
   (= (req%vstd.atomic_ghost.impl&%15.load. K&. K& G&. G& Pred&. Pred& self!) (=>
     %%global_location_label%%47
     (vstd.atomic_ghost.impl&%15.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI16.
       self!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%15.load. K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_req__vstd.atomic_ghost.impl&__15.load._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__15.load._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%15.load. (Dcr Type Dcr Type Dcr Type vstd.atomic_ghost.AtomicI16.
  Int
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicI16.)
   (%return! Int)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%15.load. K&. K& G&. G& Pred&. Pred& self! %return!)
    (iInv 16 %return!)
   )
   :pattern ((ens%vstd.atomic_ghost.impl&%15.load. K&. K& G&. G& Pred&. Pred& self! %return!))
   :qid internal_ens__vstd.atomic_ghost.impl&__15.load._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__15.load._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicI16::load
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:85:13: 85:16 (#928)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const %return! Int)
 (declare-const self! vstd.atomic_ghost.AtomicI16.)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2@0 tuple%2.)
 (declare-const pair~57@0 tuple%2.)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionI16.)
 (declare-const verus_tmp_g@0 Poly)
 (declare-const tmp%3 vstd.atomic.PAtomicI16.)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionI16.)
 (declare-const g@0 Poly)
 (declare-const verus_tmp$1@0 Int)
 (declare-const verus_tmp$2@0 Int)
 (declare-const verus_tmp$3@0 Int)
 (declare-const result@ Int)
 (declare-const atomic@ vstd.atomic_ghost.AtomicI16.)
 (declare-const credit@ vstd.invariant.OpenInvariantCredit.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.atomic_ghost.AtomicI16. self!) (TYPE%vstd.atomic_ghost.AtomicI16.
    K&. K& G&. G& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (SINT 16)
   G&. G&
 ))
 (assert
  (vstd.atomic_ghost.impl&%15.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI16.
    self!
 )))
 (declare-const perm@1 vstd.atomic.PermissionI16.)
 (declare-const g@1 Poly)
 (declare-const verus_tmp$1@1 Int)
 (declare-const verus_tmp$2@1 Int)
 (declare-const verus_tmp$3@1 Int)
 (declare-const pair~57@1 tuple%2.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; Cannot show invariant holds at end of block
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= atomic@ self!)
    (=>
     (= tmp%1 (vstd.atomic_ghost.AtomicI16./AtomicI16/atomic_inv (%Poly%vstd.atomic_ghost.AtomicI16.
        (Poly%vstd.atomic_ghost.AtomicI16. atomic@)
     )))
     (=>
      (has_type (Poly%tuple%2. tmp%2@0) (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI16.
        G&. G&
      ))
      (=>
       (= pair~57@0 tmp%2@0)
       (=>
        (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
          $ TYPE%vstd.atomic.PermissionI16. G&. G&
         ) $ (TYPE%vstd.atomic_ghost.AtomicPredI16. Pred&. Pred&) tmp%1 (Poly%tuple%2. pair~57@0)
        )
        (=>
         (= verus_tmp@ pair~57@0)
         (=>
          (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionI16. (tuple%2./tuple%2/0 (%Poly%tuple%2.
              (Poly%tuple%2. verus_tmp@)
          ))))
          (=>
           (= verus_tmp_g@0 (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
           (=>
            (= perm@1 verus_tmp_perm@)
            (=>
             (= g@1 verus_tmp_g@0)
             (=>
              (= tmp%3 (vstd.atomic_ghost.AtomicI16./AtomicI16/patomic (%Poly%vstd.atomic_ghost.AtomicI16.
                 (Poly%vstd.atomic_ghost.AtomicI16. atomic@)
              )))
              (and
               (=>
                %%location_label%%0
                (req%vstd.atomic.impl&%15.load. tmp%3 perm@1)
               )
               (=>
                (ens%vstd.atomic.impl&%15.load. tmp%3 perm@1 result@)
                (=>
                 (= verus_tmp$1@1 result@)
                 (=>
                  (= verus_tmp$2@1 result@)
                  (=>
                   (= verus_tmp$3@1 result@)
                   (=>
                    (= pair~57@1 (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionI16. perm@1) g@1))
                    (=>
                     %%location_label%%1
                     (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
                       $ TYPE%vstd.atomic.PermissionI16. G&. G&
                      ) $ (TYPE%vstd.atomic_ghost.AtomicPredI16. Pred&. Pred&) tmp%1 (Poly%tuple%2. pair~57@1)
 )))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicI16::into_inner
(declare-fun req%vstd.atomic_ghost.impl&%15.into_inner. (Dcr Type Dcr Type Dcr Type
  vstd.atomic_ghost.AtomicI16.
 ) Bool
)
(declare-const %%global_location_label%%48 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicI16.))
  (!
   (= (req%vstd.atomic_ghost.impl&%15.into_inner. K&. K& G&. G& Pred&. Pred& self!) (
     =>
     %%global_location_label%%48
     (vstd.atomic_ghost.impl&%15.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI16.
       self!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%15.into_inner. K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_req__vstd.atomic_ghost.impl&__15.into_inner._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__15.into_inner._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%15.into_inner. (Dcr Type Dcr Type Dcr Type
  vstd.atomic_ghost.AtomicI16. tuple%2.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicI16.)
   (res! tuple%2.)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%15.into_inner. K&. K& G&. G& Pred&. Pred& self! res!)
    (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ (SINT 16) (TRACKED G&.) G&))
     (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
       (SINT 16) G&. G& (vstd.atomic_ghost.impl&%15.constant.? K&. K& G&. G& Pred&. Pred&
        (Poly%vstd.atomic_ghost.AtomicI16. self!)
       ) (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))) (tuple%2./tuple%2/1 (
         %Poly%tuple%2. (Poly%tuple%2. res!)
   ))))))
   :pattern ((ens%vstd.atomic_ghost.impl&%15.into_inner. K&. K& G&. G& Pred&. Pred& self!
     res!
   ))
   :qid internal_ens__vstd.atomic_ghost.impl&__15.into_inner._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__15.into_inner._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicI16::into_inner
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:92:13: 92:69 (#928)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const res! tuple%2.)
 (declare-const self! vstd.atomic_ghost.AtomicI16.)
 (declare-const tmp%1 Poly)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionI16.)
 (declare-const verus_tmp_g@ Poly)
 (declare-const patomic@ vstd.atomic.PAtomicI16.)
 (declare-const verus_tmp_atomic_inv@ Poly)
 (declare-const atomic_inv@0 Poly)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionI16.)
 (declare-const g@0 Poly)
 (declare-const v@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.atomic_ghost.AtomicI16. self!) (TYPE%vstd.atomic_ghost.AtomicI16.
    K&. K& G&. G& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (SINT 16)
   G&. G&
 ))
 (assert
  (vstd.atomic_ghost.impl&%15.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI16.
    self!
 )))
 (declare-const atomic_inv@1 Poly)
 (declare-const perm@1 vstd.atomic.PermissionI16.)
 (declare-const g@1 Poly)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= patomic@ (vstd.atomic_ghost.AtomicI16./AtomicI16/patomic (%Poly%vstd.atomic_ghost.AtomicI16.
       (Poly%vstd.atomic_ghost.AtomicI16. self!)
    )))
    (=>
     (= verus_tmp_atomic_inv@ (vstd.atomic_ghost.AtomicI16./AtomicI16/atomic_inv (%Poly%vstd.atomic_ghost.AtomicI16.
        (Poly%vstd.atomic_ghost.AtomicI16. self!)
     )))
     (=>
      (= atomic_inv@1 verus_tmp_atomic_inv@)
      (=>
       (ens%vstd.invariant.impl&%0.into_inner. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
         $ TYPE%vstd.atomic.PermissionI16. G&. G&
        ) $ (TYPE%vstd.atomic_ghost.AtomicPredI16. Pred&. Pred&) atomic_inv@1 tmp%1
       )
       (=>
        (= verus_tmp@ (%Poly%tuple%2. tmp%1))
        (=>
         (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionI16. (tuple%2./tuple%2/0 (%Poly%tuple%2.
             (Poly%tuple%2. verus_tmp@)
         ))))
         (=>
          (= verus_tmp_g@ (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
          (=>
           (= perm@1 verus_tmp_perm@)
           (=>
            (= g@1 verus_tmp_g@)
            (and
             (=>
              %%location_label%%0
              (req%vstd.atomic.impl&%15.into_inner. patomic@ perm@1)
             )
             (=>
              (ens%vstd.atomic.impl&%15.into_inner. patomic@ perm@1 v@)
              (=>
               (= res! (tuple%2./tuple%2 (I v@) g@1))
               (=>
                %%location_label%%1
                (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
                  (SINT 16) G&. G& (vstd.atomic_ghost.impl&%15.constant.? K&. K& G&. G& Pred&. Pred&
                   (Poly%vstd.atomic_ghost.AtomicI16. self!)
                  ) (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))) (tuple%2./tuple%2/1 (
                    %Poly%tuple%2. (Poly%tuple%2. res!)
 )))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicI8::new
(declare-fun req%vstd.atomic_ghost.impl&%17.new. (Dcr Type Dcr Type Dcr Type Poly Int
  Poly
 ) Bool
)
(declare-const %%global_location_label%%49 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (u! Int) (g! Poly)
  ) (!
   (= (req%vstd.atomic_ghost.impl&%17.new. K&. K& G&. G& Pred&. Pred& k! u! g!) (=>
     %%global_location_label%%49
     (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
       (SINT 8) G&. G& k! (I u!) g!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%17.new. K&. K& G&. G& Pred&. Pred& k! u! g!))
   :qid internal_req__vstd.atomic_ghost.impl&__17.new._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__17.new._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%17.new. (Dcr Type Dcr Type Dcr Type Poly Int
  Poly vstd.atomic_ghost.AtomicI8.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (u! Int) (g! Poly) (t! vstd.atomic_ghost.AtomicI8.)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%17.new. K&. K& G&. G& Pred&. Pred& k! u! g! t!) (and
     (has_type (Poly%vstd.atomic_ghost.AtomicI8. t!) (TYPE%vstd.atomic_ghost.AtomicI8. K&.
       K& G&. G& Pred&. Pred&
     ))
     (and
      (vstd.atomic_ghost.impl&%17.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI8.
        t!
      ))
      (= (vstd.atomic_ghost.impl&%17.constant.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI8.
         t!
        )
       ) k!
   ))))
   :pattern ((ens%vstd.atomic_ghost.impl&%17.new. K&. K& G&. G& Pred&. Pred& k! u! g!
     t!
   ))
   :qid internal_ens__vstd.atomic_ghost.impl&__17.new._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__17.new._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicI8::new
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:65:13: 65:99 (#956)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const t! vstd.atomic_ghost.AtomicI8.)
 (declare-const k! Poly)
 (declare-const u! Int)
 (declare-const g! Poly)
 (declare-const verus_tmp_pair@ tuple%2.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 tuple%2.)
 (declare-const verus_tmp_atomic_inv@ Poly)
 (declare-const tmp%%@ tuple%2.)
 (declare-const patomic@ vstd.atomic.PAtomicI8.)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionI8.)
 (declare-const perm@0 vstd.atomic.PermissionI8.)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const pair@0 tuple%2.)
 (declare-const verus_tmp$1@ Poly)
 (declare-const atomic_inv@0 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type k! K&)
 )
 (assert
  (iInv 8 u!)
 )
 (assert
  (has_type g! G&)
 )
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (SINT 8)
   G&. G&
 ))
 (assert
  (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
    (SINT 8) G&. G& k! (I u!) g!
 )))
 (declare-const perm@1 vstd.atomic.PermissionI8.)
 (declare-const pair@1 tuple%2.)
 (declare-const atomic_inv@1 Poly)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (ens%vstd.atomic.impl&%13.new. u! tmp%%@)
    (=>
     (= patomic@ (%Poly%vstd.atomic.PAtomicI8. (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2.
          tmp%%@
     )))))
     (=>
      (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionI8. (tuple%2./tuple%2/1 (%Poly%tuple%2.
          (Poly%tuple%2. tmp%%@)
      ))))
      (=>
       (= perm@1 verus_tmp_perm@)
       (=>
        (= verus_tmp@ (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionI8. perm@1) g!))
        (=>
         (= verus_tmp_pair@ verus_tmp@)
         (=>
          (= pair@1 verus_tmp_pair@)
          (=>
           (= tmp%1 (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&.
              K& $ (SINT 8) G&. G& k! (I u!) g!
           )))
           (and
            (=>
             %%location_label%%0
             tmp%1
            )
            (=>
             tmp%1
             (=>
              (= tmp%2 (= (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic (%Poly%vstd.atomic.PermissionDataI8.
                  (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
                     perm@1
                 ))))
                ) (vstd.atomic.impl&%13.id.? (Poly%vstd.atomic.PAtomicI8. patomic@))
              ))
              (and
               (=>
                %%location_label%%1
                tmp%2
               )
               (=>
                tmp%2
                (=>
                 (= tmp%3 (tuple%2./tuple%2 k! (I (vstd.atomic.impl&%13.id.? (Poly%vstd.atomic.PAtomicI8.
                      patomic@
                 )))))
                 (and
                  (=>
                   %%location_label%%2
                   (req%vstd.invariant.impl&%0.new. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $
                     TYPE%vstd.atomic.PermissionI8. G&. G&
                    ) $ (TYPE%vstd.atomic_ghost.AtomicPredI8. Pred&. Pred&) (Poly%tuple%2. tmp%3) (Poly%tuple%2.
                     pair@1
                    ) 0
                  ))
                  (=>
                   (ens%vstd.invariant.impl&%0.new. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $
                     TYPE%vstd.atomic.PermissionI8. G&. G&
                    ) $ (TYPE%vstd.atomic_ghost.AtomicPredI8. Pred&. Pred&) (Poly%tuple%2. tmp%3) (Poly%tuple%2.
                     pair@1
                    ) 0 verus_tmp$1@
                   )
                   (=>
                    (= verus_tmp_atomic_inv@ verus_tmp$1@)
                    (=>
                     (= atomic_inv@1 verus_tmp_atomic_inv@)
                     (=>
                      (= t! (vstd.atomic_ghost.AtomicI8./AtomicI8 (%Poly%vstd.atomic.PAtomicI8. (Poly%vstd.atomic.PAtomicI8.
                          patomic@
                         )
                        ) atomic_inv@1
                      ))
                      (=>
                       %%location_label%%3
                       (and
                        (vstd.atomic_ghost.impl&%17.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI8.
                          t!
                        ))
                        (= (vstd.atomic_ghost.impl&%17.constant.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI8.
                           t!
                          )
                         ) k!
 ))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicI8::load
(declare-fun req%vstd.atomic_ghost.impl&%17.load. (Dcr Type Dcr Type Dcr Type vstd.atomic_ghost.AtomicI8.)
 Bool
)
(declare-const %%global_location_label%%50 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicI8.))
  (!
   (= (req%vstd.atomic_ghost.impl&%17.load. K&. K& G&. G& Pred&. Pred& self!) (=>
     %%global_location_label%%50
     (vstd.atomic_ghost.impl&%17.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI8.
       self!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%17.load. K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_req__vstd.atomic_ghost.impl&__17.load._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__17.load._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%17.load. (Dcr Type Dcr Type Dcr Type vstd.atomic_ghost.AtomicI8.
  Int
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicI8.)
   (%return! Int)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%17.load. K&. K& G&. G& Pred&. Pred& self! %return!)
    (iInv 8 %return!)
   )
   :pattern ((ens%vstd.atomic_ghost.impl&%17.load. K&. K& G&. G& Pred&. Pred& self! %return!))
   :qid internal_ens__vstd.atomic_ghost.impl&__17.load._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__17.load._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicI8::load
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:85:13: 85:16 (#956)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const %return! Int)
 (declare-const self! vstd.atomic_ghost.AtomicI8.)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2@0 tuple%2.)
 (declare-const pair~57@0 tuple%2.)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionI8.)
 (declare-const verus_tmp_g@0 Poly)
 (declare-const tmp%3 vstd.atomic.PAtomicI8.)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionI8.)
 (declare-const g@0 Poly)
 (declare-const verus_tmp$1@0 Int)
 (declare-const verus_tmp$2@0 Int)
 (declare-const verus_tmp$3@0 Int)
 (declare-const result@ Int)
 (declare-const atomic@ vstd.atomic_ghost.AtomicI8.)
 (declare-const credit@ vstd.invariant.OpenInvariantCredit.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.atomic_ghost.AtomicI8. self!) (TYPE%vstd.atomic_ghost.AtomicI8.
    K&. K& G&. G& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (SINT 8)
   G&. G&
 ))
 (assert
  (vstd.atomic_ghost.impl&%17.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI8.
    self!
 )))
 (declare-const perm@1 vstd.atomic.PermissionI8.)
 (declare-const g@1 Poly)
 (declare-const verus_tmp$1@1 Int)
 (declare-const verus_tmp$2@1 Int)
 (declare-const verus_tmp$3@1 Int)
 (declare-const pair~57@1 tuple%2.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; Cannot show invariant holds at end of block
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= atomic@ self!)
    (=>
     (= tmp%1 (vstd.atomic_ghost.AtomicI8./AtomicI8/atomic_inv (%Poly%vstd.atomic_ghost.AtomicI8.
        (Poly%vstd.atomic_ghost.AtomicI8. atomic@)
     )))
     (=>
      (has_type (Poly%tuple%2. tmp%2@0) (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionI8. G&.
        G&
      ))
      (=>
       (= pair~57@0 tmp%2@0)
       (=>
        (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
          $ TYPE%vstd.atomic.PermissionI8. G&. G&
         ) $ (TYPE%vstd.atomic_ghost.AtomicPredI8. Pred&. Pred&) tmp%1 (Poly%tuple%2. pair~57@0)
        )
        (=>
         (= verus_tmp@ pair~57@0)
         (=>
          (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionI8. (tuple%2./tuple%2/0 (%Poly%tuple%2.
              (Poly%tuple%2. verus_tmp@)
          ))))
          (=>
           (= verus_tmp_g@0 (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
           (=>
            (= perm@1 verus_tmp_perm@)
            (=>
             (= g@1 verus_tmp_g@0)
             (=>
              (= tmp%3 (vstd.atomic_ghost.AtomicI8./AtomicI8/patomic (%Poly%vstd.atomic_ghost.AtomicI8.
                 (Poly%vstd.atomic_ghost.AtomicI8. atomic@)
              )))
              (and
               (=>
                %%location_label%%0
                (req%vstd.atomic.impl&%13.load. tmp%3 perm@1)
               )
               (=>
                (ens%vstd.atomic.impl&%13.load. tmp%3 perm@1 result@)
                (=>
                 (= verus_tmp$1@1 result@)
                 (=>
                  (= verus_tmp$2@1 result@)
                  (=>
                   (= verus_tmp$3@1 result@)
                   (=>
                    (= pair~57@1 (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionI8. perm@1) g@1))
                    (=>
                     %%location_label%%1
                     (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
                       $ TYPE%vstd.atomic.PermissionI8. G&. G&
                      ) $ (TYPE%vstd.atomic_ghost.AtomicPredI8. Pred&. Pred&) tmp%1 (Poly%tuple%2. pair~57@1)
 )))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicI8::into_inner
(declare-fun req%vstd.atomic_ghost.impl&%17.into_inner. (Dcr Type Dcr Type Dcr Type
  vstd.atomic_ghost.AtomicI8.
 ) Bool
)
(declare-const %%global_location_label%%51 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicI8.))
  (!
   (= (req%vstd.atomic_ghost.impl&%17.into_inner. K&. K& G&. G& Pred&. Pred& self!) (
     =>
     %%global_location_label%%51
     (vstd.atomic_ghost.impl&%17.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI8.
       self!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%17.into_inner. K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_req__vstd.atomic_ghost.impl&__17.into_inner._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__17.into_inner._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%17.into_inner. (Dcr Type Dcr Type Dcr Type
  vstd.atomic_ghost.AtomicI8. tuple%2.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicI8.)
   (res! tuple%2.)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%17.into_inner. K&. K& G&. G& Pred&. Pred& self! res!)
    (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ (SINT 8) (TRACKED G&.) G&))
     (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
       (SINT 8) G&. G& (vstd.atomic_ghost.impl&%17.constant.? K&. K& G&. G& Pred&. Pred&
        (Poly%vstd.atomic_ghost.AtomicI8. self!)
       ) (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))) (tuple%2./tuple%2/1 (
         %Poly%tuple%2. (Poly%tuple%2. res!)
   ))))))
   :pattern ((ens%vstd.atomic_ghost.impl&%17.into_inner. K&. K& G&. G& Pred&. Pred& self!
     res!
   ))
   :qid internal_ens__vstd.atomic_ghost.impl&__17.into_inner._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__17.into_inner._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicI8::into_inner
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:92:13: 92:69 (#956)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const res! tuple%2.)
 (declare-const self! vstd.atomic_ghost.AtomicI8.)
 (declare-const tmp%1 Poly)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionI8.)
 (declare-const verus_tmp_g@ Poly)
 (declare-const patomic@ vstd.atomic.PAtomicI8.)
 (declare-const verus_tmp_atomic_inv@ Poly)
 (declare-const atomic_inv@0 Poly)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionI8.)
 (declare-const g@0 Poly)
 (declare-const v@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.atomic_ghost.AtomicI8. self!) (TYPE%vstd.atomic_ghost.AtomicI8.
    K&. K& G&. G& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (SINT 8)
   G&. G&
 ))
 (assert
  (vstd.atomic_ghost.impl&%17.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicI8.
    self!
 )))
 (declare-const atomic_inv@1 Poly)
 (declare-const perm@1 vstd.atomic.PermissionI8.)
 (declare-const g@1 Poly)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= patomic@ (vstd.atomic_ghost.AtomicI8./AtomicI8/patomic (%Poly%vstd.atomic_ghost.AtomicI8.
       (Poly%vstd.atomic_ghost.AtomicI8. self!)
    )))
    (=>
     (= verus_tmp_atomic_inv@ (vstd.atomic_ghost.AtomicI8./AtomicI8/atomic_inv (%Poly%vstd.atomic_ghost.AtomicI8.
        (Poly%vstd.atomic_ghost.AtomicI8. self!)
     )))
     (=>
      (= atomic_inv@1 verus_tmp_atomic_inv@)
      (=>
       (ens%vstd.invariant.impl&%0.into_inner. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
         $ TYPE%vstd.atomic.PermissionI8. G&. G&
        ) $ (TYPE%vstd.atomic_ghost.AtomicPredI8. Pred&. Pred&) atomic_inv@1 tmp%1
       )
       (=>
        (= verus_tmp@ (%Poly%tuple%2. tmp%1))
        (=>
         (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionI8. (tuple%2./tuple%2/0 (%Poly%tuple%2.
             (Poly%tuple%2. verus_tmp@)
         ))))
         (=>
          (= verus_tmp_g@ (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
          (=>
           (= perm@1 verus_tmp_perm@)
           (=>
            (= g@1 verus_tmp_g@)
            (and
             (=>
              %%location_label%%0
              (req%vstd.atomic.impl&%13.into_inner. patomic@ perm@1)
             )
             (=>
              (ens%vstd.atomic.impl&%13.into_inner. patomic@ perm@1 v@)
              (=>
               (= res! (tuple%2./tuple%2 (I v@) g@1))
               (=>
                %%location_label%%1
                (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
                  (SINT 8) G&. G& (vstd.atomic_ghost.impl&%17.constant.? K&. K& G&. G& Pred&. Pred&
                   (Poly%vstd.atomic_ghost.AtomicI8. self!)
                  ) (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))) (tuple%2./tuple%2/1 (
                    %Poly%tuple%2. (Poly%tuple%2. res!)
 )))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicIsize::new
(declare-fun req%vstd.atomic_ghost.impl&%19.new. (Dcr Type Dcr Type Dcr Type Poly Int
  Poly
 ) Bool
)
(declare-const %%global_location_label%%52 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (u! Int) (g! Poly)
  ) (!
   (= (req%vstd.atomic_ghost.impl&%19.new. K&. K& G&. G& Pred&. Pred& k! u! g!) (=>
     %%global_location_label%%52
     (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
       (SINT SZ) G&. G& k! (I u!) g!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%19.new. K&. K& G&. G& Pred&. Pred& k! u! g!))
   :qid internal_req__vstd.atomic_ghost.impl&__19.new._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__19.new._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%19.new. (Dcr Type Dcr Type Dcr Type Poly Int
  Poly vstd.atomic_ghost.AtomicIsize.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (u! Int) (g! Poly) (t! vstd.atomic_ghost.AtomicIsize.)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%19.new. K&. K& G&. G& Pred&. Pred& k! u! g! t!) (and
     (has_type (Poly%vstd.atomic_ghost.AtomicIsize. t!) (TYPE%vstd.atomic_ghost.AtomicIsize.
       K&. K& G&. G& Pred&. Pred&
     ))
     (and
      (vstd.atomic_ghost.impl&%19.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicIsize.
        t!
      ))
      (= (vstd.atomic_ghost.impl&%19.constant.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicIsize.
         t!
        )
       ) k!
   ))))
   :pattern ((ens%vstd.atomic_ghost.impl&%19.new. K&. K& G&. G& Pred&. Pred& k! u! g!
     t!
   ))
   :qid internal_ens__vstd.atomic_ghost.impl&__19.new._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__19.new._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicIsize::new
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:65:13: 65:99 (#984)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const t! vstd.atomic_ghost.AtomicIsize.)
 (declare-const k! Poly)
 (declare-const u! Int)
 (declare-const g! Poly)
 (declare-const verus_tmp_pair@ tuple%2.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 tuple%2.)
 (declare-const verus_tmp_atomic_inv@ Poly)
 (declare-const tmp%%@ tuple%2.)
 (declare-const patomic@ vstd.atomic.PAtomicIsize.)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionIsize.)
 (declare-const perm@0 vstd.atomic.PermissionIsize.)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const pair@0 tuple%2.)
 (declare-const verus_tmp$1@ Poly)
 (declare-const atomic_inv@0 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type k! K&)
 )
 (assert
  (iInv SZ u!)
 )
 (assert
  (has_type g! G&)
 )
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (SINT SZ)
   G&. G&
 ))
 (assert
  (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
    (SINT SZ) G&. G& k! (I u!) g!
 )))
 (declare-const perm@1 vstd.atomic.PermissionIsize.)
 (declare-const pair@1 tuple%2.)
 (declare-const atomic_inv@1 Poly)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (ens%vstd.atomic.impl&%21.new. u! tmp%%@)
    (=>
     (= patomic@ (%Poly%vstd.atomic.PAtomicIsize. (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2.
          tmp%%@
     )))))
     (=>
      (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionIsize. (tuple%2./tuple%2/1 (%Poly%tuple%2.
          (Poly%tuple%2. tmp%%@)
      ))))
      (=>
       (= perm@1 verus_tmp_perm@)
       (=>
        (= verus_tmp@ (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionIsize. perm@1) g!))
        (=>
         (= verus_tmp_pair@ verus_tmp@)
         (=>
          (= pair@1 verus_tmp_pair@)
          (=>
           (= tmp%1 (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&.
              K& $ (SINT SZ) G&. G& k! (I u!) g!
           )))
           (and
            (=>
             %%location_label%%0
             tmp%1
            )
            (=>
             tmp%1
             (=>
              (= tmp%2 (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd.atomic.PermissionDataIsize.
                  (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
                     perm@1
                 ))))
                ) (vstd.atomic.impl&%21.id.? (Poly%vstd.atomic.PAtomicIsize. patomic@))
              ))
              (and
               (=>
                %%location_label%%1
                tmp%2
               )
               (=>
                tmp%2
                (=>
                 (= tmp%3 (tuple%2./tuple%2 k! (I (vstd.atomic.impl&%21.id.? (Poly%vstd.atomic.PAtomicIsize.
                      patomic@
                 )))))
                 (and
                  (=>
                   %%location_label%%2
                   (req%vstd.invariant.impl&%0.new. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $
                     TYPE%vstd.atomic.PermissionIsize. G&. G&
                    ) $ (TYPE%vstd.atomic_ghost.AtomicPredIsize. Pred&. Pred&) (Poly%tuple%2. tmp%3)
                    (Poly%tuple%2. pair@1) 0
                  ))
                  (=>
                   (ens%vstd.invariant.impl&%0.new. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $
                     TYPE%vstd.atomic.PermissionIsize. G&. G&
                    ) $ (TYPE%vstd.atomic_ghost.AtomicPredIsize. Pred&. Pred&) (Poly%tuple%2. tmp%3)
                    (Poly%tuple%2. pair@1) 0 verus_tmp$1@
                   )
                   (=>
                    (= verus_tmp_atomic_inv@ verus_tmp$1@)
                    (=>
                     (= atomic_inv@1 verus_tmp_atomic_inv@)
                     (=>
                      (= t! (vstd.atomic_ghost.AtomicIsize./AtomicIsize (%Poly%vstd.atomic.PAtomicIsize. (
                          Poly%vstd.atomic.PAtomicIsize. patomic@
                         )
                        ) atomic_inv@1
                      ))
                      (=>
                       %%location_label%%3
                       (and
                        (vstd.atomic_ghost.impl&%19.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicIsize.
                          t!
                        ))
                        (= (vstd.atomic_ghost.impl&%19.constant.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicIsize.
                           t!
                          )
                         ) k!
 ))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicIsize::load
(declare-fun req%vstd.atomic_ghost.impl&%19.load. (Dcr Type Dcr Type Dcr Type vstd.atomic_ghost.AtomicIsize.)
 Bool
)
(declare-const %%global_location_label%%53 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicIsize.))
  (!
   (= (req%vstd.atomic_ghost.impl&%19.load. K&. K& G&. G& Pred&. Pred& self!) (=>
     %%global_location_label%%53
     (vstd.atomic_ghost.impl&%19.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicIsize.
       self!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%19.load. K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_req__vstd.atomic_ghost.impl&__19.load._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__19.load._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%19.load. (Dcr Type Dcr Type Dcr Type vstd.atomic_ghost.AtomicIsize.
  Int
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicIsize.)
   (%return! Int)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%19.load. K&. K& G&. G& Pred&. Pred& self! %return!)
    (iInv SZ %return!)
   )
   :pattern ((ens%vstd.atomic_ghost.impl&%19.load. K&. K& G&. G& Pred&. Pred& self! %return!))
   :qid internal_ens__vstd.atomic_ghost.impl&__19.load._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__19.load._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicIsize::load
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:85:13: 85:16 (#984)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const %return! Int)
 (declare-const self! vstd.atomic_ghost.AtomicIsize.)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2@0 tuple%2.)
 (declare-const pair~57@0 tuple%2.)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionIsize.)
 (declare-const verus_tmp_g@0 Poly)
 (declare-const tmp%3 vstd.atomic.PAtomicIsize.)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionIsize.)
 (declare-const g@0 Poly)
 (declare-const verus_tmp$1@0 Int)
 (declare-const verus_tmp$2@0 Int)
 (declare-const verus_tmp$3@0 Int)
 (declare-const result@ Int)
 (declare-const atomic@ vstd.atomic_ghost.AtomicIsize.)
 (declare-const credit@ vstd.invariant.OpenInvariantCredit.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.atomic_ghost.AtomicIsize. self!) (TYPE%vstd.atomic_ghost.AtomicIsize.
    K&. K& G&. G& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (SINT SZ)
   G&. G&
 ))
 (assert
  (vstd.atomic_ghost.impl&%19.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicIsize.
    self!
 )))
 (declare-const perm@1 vstd.atomic.PermissionIsize.)
 (declare-const g@1 Poly)
 (declare-const verus_tmp$1@1 Int)
 (declare-const verus_tmp$2@1 Int)
 (declare-const verus_tmp$3@1 Int)
 (declare-const pair~57@1 tuple%2.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; Cannot show invariant holds at end of block
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= atomic@ self!)
    (=>
     (= tmp%1 (vstd.atomic_ghost.AtomicIsize./AtomicIsize/atomic_inv (%Poly%vstd.atomic_ghost.AtomicIsize.
        (Poly%vstd.atomic_ghost.AtomicIsize. atomic@)
     )))
     (=>
      (has_type (Poly%tuple%2. tmp%2@0) (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionIsize.
        G&. G&
      ))
      (=>
       (= pair~57@0 tmp%2@0)
       (=>
        (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
          $ TYPE%vstd.atomic.PermissionIsize. G&. G&
         ) $ (TYPE%vstd.atomic_ghost.AtomicPredIsize. Pred&. Pred&) tmp%1 (Poly%tuple%2. pair~57@0)
        )
        (=>
         (= verus_tmp@ pair~57@0)
         (=>
          (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionIsize. (tuple%2./tuple%2/0 (%Poly%tuple%2.
              (Poly%tuple%2. verus_tmp@)
          ))))
          (=>
           (= verus_tmp_g@0 (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
           (=>
            (= perm@1 verus_tmp_perm@)
            (=>
             (= g@1 verus_tmp_g@0)
             (=>
              (= tmp%3 (vstd.atomic_ghost.AtomicIsize./AtomicIsize/patomic (%Poly%vstd.atomic_ghost.AtomicIsize.
                 (Poly%vstd.atomic_ghost.AtomicIsize. atomic@)
              )))
              (and
               (=>
                %%location_label%%0
                (req%vstd.atomic.impl&%21.load. tmp%3 perm@1)
               )
               (=>
                (ens%vstd.atomic.impl&%21.load. tmp%3 perm@1 result@)
                (=>
                 (= verus_tmp$1@1 result@)
                 (=>
                  (= verus_tmp$2@1 result@)
                  (=>
                   (= verus_tmp$3@1 result@)
                   (=>
                    (= pair~57@1 (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionIsize. perm@1) g@1))
                    (=>
                     %%location_label%%1
                     (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
                       $ TYPE%vstd.atomic.PermissionIsize. G&. G&
                      ) $ (TYPE%vstd.atomic_ghost.AtomicPredIsize. Pred&. Pred&) tmp%1 (Poly%tuple%2. pair~57@1)
 )))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicIsize::into_inner
(declare-fun req%vstd.atomic_ghost.impl&%19.into_inner. (Dcr Type Dcr Type Dcr Type
  vstd.atomic_ghost.AtomicIsize.
 ) Bool
)
(declare-const %%global_location_label%%54 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicIsize.))
  (!
   (= (req%vstd.atomic_ghost.impl&%19.into_inner. K&. K& G&. G& Pred&. Pred& self!) (
     =>
     %%global_location_label%%54
     (vstd.atomic_ghost.impl&%19.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicIsize.
       self!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%19.into_inner. K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_req__vstd.atomic_ghost.impl&__19.into_inner._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__19.into_inner._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%19.into_inner. (Dcr Type Dcr Type Dcr Type
  vstd.atomic_ghost.AtomicIsize. tuple%2.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicIsize.)
   (res! tuple%2.)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%19.into_inner. K&. K& G&. G& Pred&. Pred& self! res!)
    (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ (SINT SZ) (TRACKED G&.) G&))
     (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
       (SINT SZ) G&. G& (vstd.atomic_ghost.impl&%19.constant.? K&. K& G&. G& Pred&. Pred&
        (Poly%vstd.atomic_ghost.AtomicIsize. self!)
       ) (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))) (tuple%2./tuple%2/1 (
         %Poly%tuple%2. (Poly%tuple%2. res!)
   ))))))
   :pattern ((ens%vstd.atomic_ghost.impl&%19.into_inner. K&. K& G&. G& Pred&. Pred& self!
     res!
   ))
   :qid internal_ens__vstd.atomic_ghost.impl&__19.into_inner._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__19.into_inner._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicIsize::into_inner
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:92:13: 92:69 (#984)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const res! tuple%2.)
 (declare-const self! vstd.atomic_ghost.AtomicIsize.)
 (declare-const tmp%1 Poly)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionIsize.)
 (declare-const verus_tmp_g@ Poly)
 (declare-const patomic@ vstd.atomic.PAtomicIsize.)
 (declare-const verus_tmp_atomic_inv@ Poly)
 (declare-const atomic_inv@0 Poly)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionIsize.)
 (declare-const g@0 Poly)
 (declare-const v@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.atomic_ghost.AtomicIsize. self!) (TYPE%vstd.atomic_ghost.AtomicIsize.
    K&. K& G&. G& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (SINT SZ)
   G&. G&
 ))
 (assert
  (vstd.atomic_ghost.impl&%19.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicIsize.
    self!
 )))
 (declare-const atomic_inv@1 Poly)
 (declare-const perm@1 vstd.atomic.PermissionIsize.)
 (declare-const g@1 Poly)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= patomic@ (vstd.atomic_ghost.AtomicIsize./AtomicIsize/patomic (%Poly%vstd.atomic_ghost.AtomicIsize.
       (Poly%vstd.atomic_ghost.AtomicIsize. self!)
    )))
    (=>
     (= verus_tmp_atomic_inv@ (vstd.atomic_ghost.AtomicIsize./AtomicIsize/atomic_inv (%Poly%vstd.atomic_ghost.AtomicIsize.
        (Poly%vstd.atomic_ghost.AtomicIsize. self!)
     )))
     (=>
      (= atomic_inv@1 verus_tmp_atomic_inv@)
      (=>
       (ens%vstd.invariant.impl&%0.into_inner. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
         $ TYPE%vstd.atomic.PermissionIsize. G&. G&
        ) $ (TYPE%vstd.atomic_ghost.AtomicPredIsize. Pred&. Pred&) atomic_inv@1 tmp%1
       )
       (=>
        (= verus_tmp@ (%Poly%tuple%2. tmp%1))
        (=>
         (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionIsize. (tuple%2./tuple%2/0 (%Poly%tuple%2.
             (Poly%tuple%2. verus_tmp@)
         ))))
         (=>
          (= verus_tmp_g@ (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
          (=>
           (= perm@1 verus_tmp_perm@)
           (=>
            (= g@1 verus_tmp_g@)
            (and
             (=>
              %%location_label%%0
              (req%vstd.atomic.impl&%21.into_inner. patomic@ perm@1)
             )
             (=>
              (ens%vstd.atomic.impl&%21.into_inner. patomic@ perm@1 v@)
              (=>
               (= res! (tuple%2./tuple%2 (I v@) g@1))
               (=>
                %%location_label%%1
                (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
                  (SINT SZ) G&. G& (vstd.atomic_ghost.impl&%19.constant.? K&. K& G&. G& Pred&. Pred&
                   (Poly%vstd.atomic_ghost.AtomicIsize. self!)
                  ) (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))) (tuple%2./tuple%2/1 (
                    %Poly%tuple%2. (Poly%tuple%2. res!)
 )))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicBool::new
(declare-fun req%vstd.atomic_ghost.impl&%21.new. (Dcr Type Dcr Type Dcr Type Poly Bool
  Poly
 ) Bool
)
(declare-const %%global_location_label%%55 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (u! Bool) (g! Poly)
  ) (!
   (= (req%vstd.atomic_ghost.impl&%21.new. K&. K& G&. G& Pred&. Pred& k! u! g!) (=>
     %%global_location_label%%55
     (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
       BOOL G&. G& k! (B u!) g!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%21.new. K&. K& G&. G& Pred&. Pred& k! u! g!))
   :qid internal_req__vstd.atomic_ghost.impl&__21.new._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__21.new._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%21.new. (Dcr Type Dcr Type Dcr Type Poly Bool
  Poly vstd.atomic_ghost.AtomicBool.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (u! Bool) (g! Poly) (t! vstd.atomic_ghost.AtomicBool.)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%21.new. K&. K& G&. G& Pred&. Pred& k! u! g! t!) (and
     (has_type (Poly%vstd.atomic_ghost.AtomicBool. t!) (TYPE%vstd.atomic_ghost.AtomicBool.
       K&. K& G&. G& Pred&. Pred&
     ))
     (and
      (vstd.atomic_ghost.impl&%21.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicBool.
        t!
      ))
      (= (vstd.atomic_ghost.impl&%21.constant.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicBool.
         t!
        )
       ) k!
   ))))
   :pattern ((ens%vstd.atomic_ghost.impl&%21.new. K&. K& G&. G& Pred&. Pred& k! u! g!
     t!
   ))
   :qid internal_ens__vstd.atomic_ghost.impl&__21.new._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__21.new._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicBool::new
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:65:13: 65:99 (#1012)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const t! vstd.atomic_ghost.AtomicBool.)
 (declare-const k! Poly)
 (declare-const u! Bool)
 (declare-const g! Poly)
 (declare-const verus_tmp_pair@ tuple%2.)
 (declare-const tmp%1 Bool)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 tuple%2.)
 (declare-const verus_tmp_atomic_inv@ Poly)
 (declare-const tmp%%@ tuple%2.)
 (declare-const patomic@ vstd.atomic.PAtomicBool.)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionBool.)
 (declare-const perm@0 vstd.atomic.PermissionBool.)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const pair@0 tuple%2.)
 (declare-const verus_tmp$1@ Poly)
 (declare-const atomic_inv@0 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type k! K&)
 )
 (assert
  (has_type g! G&)
 )
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ BOOL G&.
   G&
 ))
 (assert
  (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
    BOOL G&. G& k! (B u!) g!
 )))
 (declare-const perm@1 vstd.atomic.PermissionBool.)
 (declare-const pair@1 tuple%2.)
 (declare-const atomic_inv@1 Poly)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (ens%vstd.atomic.impl&%1.new. u! tmp%%@)
    (=>
     (= patomic@ (%Poly%vstd.atomic.PAtomicBool. (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2.
          tmp%%@
     )))))
     (=>
      (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionBool. (tuple%2./tuple%2/1 (%Poly%tuple%2.
          (Poly%tuple%2. tmp%%@)
      ))))
      (=>
       (= perm@1 verus_tmp_perm@)
       (=>
        (= verus_tmp@ (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionBool. perm@1) g!))
        (=>
         (= verus_tmp_pair@ verus_tmp@)
         (=>
          (= pair@1 verus_tmp_pair@)
          (=>
           (= tmp%1 (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&.
              K& $ BOOL G&. G& k! (B u!) g!
           )))
           (and
            (=>
             %%location_label%%0
             tmp%1
            )
            (=>
             tmp%1
             (=>
              (= tmp%2 (= (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic (%Poly%vstd.atomic.PermissionDataBool.
                  (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
                     perm@1
                 ))))
                ) (vstd.atomic.impl&%1.id.? (Poly%vstd.atomic.PAtomicBool. patomic@))
              ))
              (and
               (=>
                %%location_label%%1
                tmp%2
               )
               (=>
                tmp%2
                (=>
                 (= tmp%3 (tuple%2./tuple%2 k! (I (vstd.atomic.impl&%1.id.? (Poly%vstd.atomic.PAtomicBool.
                      patomic@
                 )))))
                 (and
                  (=>
                   %%location_label%%2
                   (req%vstd.invariant.impl&%0.new. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $
                     TYPE%vstd.atomic.PermissionBool. G&. G&
                    ) $ (TYPE%vstd.atomic_ghost.AtomicPredBool. Pred&. Pred&) (Poly%tuple%2. tmp%3) (
                     Poly%tuple%2. pair@1
                    ) 0
                  ))
                  (=>
                   (ens%vstd.invariant.impl&%0.new. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $
                     TYPE%vstd.atomic.PermissionBool. G&. G&
                    ) $ (TYPE%vstd.atomic_ghost.AtomicPredBool. Pred&. Pred&) (Poly%tuple%2. tmp%3) (
                     Poly%tuple%2. pair@1
                    ) 0 verus_tmp$1@
                   )
                   (=>
                    (= verus_tmp_atomic_inv@ verus_tmp$1@)
                    (=>
                     (= atomic_inv@1 verus_tmp_atomic_inv@)
                     (=>
                      (= t! (vstd.atomic_ghost.AtomicBool./AtomicBool (%Poly%vstd.atomic.PAtomicBool. (Poly%vstd.atomic.PAtomicBool.
                          patomic@
                         )
                        ) atomic_inv@1
                      ))
                      (=>
                       %%location_label%%3
                       (and
                        (vstd.atomic_ghost.impl&%21.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicBool.
                          t!
                        ))
                        (= (vstd.atomic_ghost.impl&%21.constant.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicBool.
                           t!
                          )
                         ) k!
 ))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicBool::load
(declare-fun req%vstd.atomic_ghost.impl&%21.load. (Dcr Type Dcr Type Dcr Type vstd.atomic_ghost.AtomicBool.)
 Bool
)
(declare-const %%global_location_label%%56 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicBool.))
  (!
   (= (req%vstd.atomic_ghost.impl&%21.load. K&. K& G&. G& Pred&. Pred& self!) (=>
     %%global_location_label%%56
     (vstd.atomic_ghost.impl&%21.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicBool.
       self!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%21.load. K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_req__vstd.atomic_ghost.impl&__21.load._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__21.load._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicBool::load
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:85:13: 85:16 (#1012)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const %return! Bool)
 (declare-const self! vstd.atomic_ghost.AtomicBool.)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2@0 tuple%2.)
 (declare-const pair~57@0 tuple%2.)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionBool.)
 (declare-const verus_tmp_g@0 Poly)
 (declare-const tmp%3 vstd.atomic.PAtomicBool.)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionBool.)
 (declare-const g@0 Poly)
 (declare-const verus_tmp$1@0 Bool)
 (declare-const verus_tmp$2@0 Bool)
 (declare-const verus_tmp$3@0 Bool)
 (declare-const result@ Bool)
 (declare-const atomic@ vstd.atomic_ghost.AtomicBool.)
 (declare-const credit@ vstd.invariant.OpenInvariantCredit.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.atomic_ghost.AtomicBool. self!) (TYPE%vstd.atomic_ghost.AtomicBool.
    K&. K& G&. G& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ BOOL G&.
   G&
 ))
 (assert
  (vstd.atomic_ghost.impl&%21.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicBool.
    self!
 )))
 (declare-const perm@1 vstd.atomic.PermissionBool.)
 (declare-const g@1 Poly)
 (declare-const verus_tmp$1@1 Bool)
 (declare-const verus_tmp$2@1 Bool)
 (declare-const verus_tmp$3@1 Bool)
 (declare-const pair~57@1 tuple%2.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; Cannot show invariant holds at end of block
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= atomic@ self!)
    (=>
     (= tmp%1 (vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv (%Poly%vstd.atomic_ghost.AtomicBool.
        (Poly%vstd.atomic_ghost.AtomicBool. atomic@)
     )))
     (=>
      (has_type (Poly%tuple%2. tmp%2@0) (TYPE%tuple%2. $ TYPE%vstd.atomic.PermissionBool.
        G&. G&
      ))
      (=>
       (= pair~57@0 tmp%2@0)
       (=>
        (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
          $ TYPE%vstd.atomic.PermissionBool. G&. G&
         ) $ (TYPE%vstd.atomic_ghost.AtomicPredBool. Pred&. Pred&) tmp%1 (Poly%tuple%2. pair~57@0)
        )
        (=>
         (= verus_tmp@ pair~57@0)
         (=>
          (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionBool. (tuple%2./tuple%2/0 (%Poly%tuple%2.
              (Poly%tuple%2. verus_tmp@)
          ))))
          (=>
           (= verus_tmp_g@0 (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
           (=>
            (= perm@1 verus_tmp_perm@)
            (=>
             (= g@1 verus_tmp_g@0)
             (=>
              (= tmp%3 (vstd.atomic_ghost.AtomicBool./AtomicBool/patomic (%Poly%vstd.atomic_ghost.AtomicBool.
                 (Poly%vstd.atomic_ghost.AtomicBool. atomic@)
              )))
              (and
               (=>
                %%location_label%%0
                (req%vstd.atomic.impl&%1.load. tmp%3 perm@1)
               )
               (=>
                (ens%vstd.atomic.impl&%1.load. tmp%3 perm@1 result@)
                (=>
                 (= verus_tmp$1@1 result@)
                 (=>
                  (= verus_tmp$2@1 result@)
                  (=>
                   (= verus_tmp$3@1 result@)
                   (=>
                    (= pair~57@1 (tuple%2./tuple%2 (Poly%vstd.atomic.PermissionBool. perm@1) g@1))
                    (=>
                     %%location_label%%1
                     (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
                       $ TYPE%vstd.atomic.PermissionBool. G&. G&
                      ) $ (TYPE%vstd.atomic_ghost.AtomicPredBool. Pred&. Pred&) tmp%1 (Poly%tuple%2. pair~57@1)
 )))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicBool::into_inner
(declare-fun req%vstd.atomic_ghost.impl&%21.into_inner. (Dcr Type Dcr Type Dcr Type
  vstd.atomic_ghost.AtomicBool.
 ) Bool
)
(declare-const %%global_location_label%%57 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicBool.))
  (!
   (= (req%vstd.atomic_ghost.impl&%21.into_inner. K&. K& G&. G& Pred&. Pred& self!) (
     =>
     %%global_location_label%%57
     (vstd.atomic_ghost.impl&%21.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicBool.
       self!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%21.into_inner. K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_req__vstd.atomic_ghost.impl&__21.into_inner._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__21.into_inner._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%21.into_inner. (Dcr Type Dcr Type Dcr Type
  vstd.atomic_ghost.AtomicBool. tuple%2.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (Pred& Type) (self! vstd.atomic_ghost.AtomicBool.)
   (res! tuple%2.)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%21.into_inner. K&. K& G&. G& Pred&. Pred& self! res!)
    (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ BOOL (TRACKED G&.) G&))
     (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
       BOOL G&. G& (vstd.atomic_ghost.impl&%21.constant.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicBool.
         self!
        )
       ) (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))) (tuple%2./tuple%2/1 (
         %Poly%tuple%2. (Poly%tuple%2. res!)
   ))))))
   :pattern ((ens%vstd.atomic_ghost.impl&%21.into_inner. K&. K& G&. G& Pred&. Pred& self!
     res!
   ))
   :qid internal_ens__vstd.atomic_ghost.impl&__21.into_inner._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__21.into_inner._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicBool::into_inner
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:92:13: 92:69 (#1012)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const res! tuple%2.)
 (declare-const self! vstd.atomic_ghost.AtomicBool.)
 (declare-const tmp%1 Poly)
 (declare-const verus_tmp_perm@ vstd.atomic.PermissionBool.)
 (declare-const verus_tmp_g@ Poly)
 (declare-const patomic@ vstd.atomic.PAtomicBool.)
 (declare-const verus_tmp_atomic_inv@ Poly)
 (declare-const atomic_inv@0 Poly)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm@0 vstd.atomic.PermissionBool.)
 (declare-const g@0 Poly)
 (declare-const v@ Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.atomic_ghost.AtomicBool. self!) (TYPE%vstd.atomic_ghost.AtomicBool.
    K&. K& G&. G& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ BOOL G&.
   G&
 ))
 (assert
  (vstd.atomic_ghost.impl&%21.well_formed.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicBool.
    self!
 )))
 (declare-const atomic_inv@1 Poly)
 (declare-const perm@1 vstd.atomic.PermissionBool.)
 (declare-const g@1 Poly)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= patomic@ (vstd.atomic_ghost.AtomicBool./AtomicBool/patomic (%Poly%vstd.atomic_ghost.AtomicBool.
       (Poly%vstd.atomic_ghost.AtomicBool. self!)
    )))
    (=>
     (= verus_tmp_atomic_inv@ (vstd.atomic_ghost.AtomicBool./AtomicBool/atomic_inv (%Poly%vstd.atomic_ghost.AtomicBool.
        (Poly%vstd.atomic_ghost.AtomicBool. self!)
     )))
     (=>
      (= atomic_inv@1 verus_tmp_atomic_inv@)
      (=>
       (ens%vstd.invariant.impl&%0.into_inner. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
         $ TYPE%vstd.atomic.PermissionBool. G&. G&
        ) $ (TYPE%vstd.atomic_ghost.AtomicPredBool. Pred&. Pred&) atomic_inv@1 tmp%1
       )
       (=>
        (= verus_tmp@ (%Poly%tuple%2. tmp%1))
        (=>
         (= verus_tmp_perm@ (%Poly%vstd.atomic.PermissionBool. (tuple%2./tuple%2/0 (%Poly%tuple%2.
             (Poly%tuple%2. verus_tmp@)
         ))))
         (=>
          (= verus_tmp_g@ (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
          (=>
           (= perm@1 verus_tmp_perm@)
           (=>
            (= g@1 verus_tmp_g@)
            (and
             (=>
              %%location_label%%0
              (req%vstd.atomic.impl&%1.into_inner. patomic@ perm@1)
             )
             (=>
              (ens%vstd.atomic.impl&%1.into_inner. patomic@ perm@1 v@)
              (=>
               (= res! (tuple%2./tuple%2 (B v@) g@1))
               (=>
                %%location_label%%1
                (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
                  BOOL G&. G& (vstd.atomic_ghost.impl&%21.constant.? K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicBool.
                    self!
                   )
                  ) (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))) (tuple%2./tuple%2/1 (
                    %Poly%tuple%2. (Poly%tuple%2. res!)
 )))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicPtr::new
(declare-fun req%vstd.atomic_ghost.impl&%23.new. (Dcr Type Dcr Type Dcr Type Dcr Type
  Poly Poly Poly
 ) Bool
)
(declare-const %%global_location_label%%58 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (
    Pred& Type
   ) (k! Poly) (u! Poly) (g! Poly)
  ) (!
   (= (req%vstd.atomic_ghost.impl&%23.new. T&. T& K&. K& G&. G& Pred&. Pred& k! u! g!)
    (=>
     %%global_location_label%%58
     (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
       (PTR T&. T&) G&. G& k! u! g!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%23.new. T&. T& K&. K& G&. G& Pred&. Pred& k!
     u! g!
   ))
   :qid internal_req__vstd.atomic_ghost.impl&__23.new._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__23.new._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%23.new. (Dcr Type Dcr Type Dcr Type Dcr Type
  Poly Poly Poly vstd.atomic_ghost.AtomicPtr.
 ) Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (
    Pred& Type
   ) (k! Poly) (u! Poly) (g! Poly) (t! vstd.atomic_ghost.AtomicPtr.)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%23.new. T&. T& K&. K& G&. G& Pred&. Pred& k! u! g!
     t!
    ) (and
     (has_type (Poly%vstd.atomic_ghost.AtomicPtr. t!) (TYPE%vstd.atomic_ghost.AtomicPtr.
       T&. T& K&. K& G&. G& Pred&. Pred&
     ))
     (and
      (vstd.atomic_ghost.impl&%23.well_formed.? T&. T& K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicPtr.
        t!
      ))
      (= (vstd.atomic_ghost.impl&%23.constant.? T&. T& K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicPtr.
         t!
        )
       ) k!
   ))))
   :pattern ((ens%vstd.atomic_ghost.impl&%23.new. T&. T& K&. K& G&. G& Pred&. Pred& k!
     u! g! t!
   ))
   :qid internal_ens__vstd.atomic_ghost.impl&__23.new._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__23.new._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicPtr::new
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:154:13: 154:99 (#1040)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const t! vstd.atomic_ghost.AtomicPtr.)
 (declare-const k! Poly)
 (declare-const u! Poly)
 (declare-const g! Poly)
 (declare-const verus_tmp_pair@ tuple%2.)
 (declare-const tmp%1 tuple%2.)
 (declare-const verus_tmp_atomic_inv@ Poly)
 (declare-const tmp%%@ tuple%2.)
 (declare-const patomic@ Poly)
 (declare-const verus_tmp_perm@ Poly)
 (declare-const perm@0 Poly)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const pair@0 tuple%2.)
 (declare-const verus_tmp$1@ Poly)
 (declare-const atomic_inv@0 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type k! K&)
 )
 (assert
  (has_type u! (PTR T&. T&))
 )
 (assert
  (has_type g! G&)
 )
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (PTR T&.
    T&
   ) G&. G&
 ))
 (assert
  (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
    (PTR T&. T&) G&. G& k! u! g!
 )))
 (declare-const perm@1 Poly)
 (declare-const pair@1 tuple%2.)
 (declare-const atomic_inv@1 Poly)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (ens%vstd.atomic.impl&%23.new. T&. T& u! tmp%%@)
    (=>
     (= patomic@ (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%@))))
     (=>
      (= verus_tmp_perm@ (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%@))))
      (=>
       (= perm@1 verus_tmp_perm@)
       (=>
        (= verus_tmp@ (tuple%2./tuple%2 perm@1 g!))
        (=>
         (= verus_tmp_pair@ verus_tmp@)
         (=>
          (= pair@1 verus_tmp_pair@)
          (=>
           (= tmp%1 (tuple%2./tuple%2 k! (I (vstd.atomic.impl&%23.id.? T&. T& patomic@))))
           (and
            (=>
             %%location_label%%0
             (req%vstd.invariant.impl&%0.new. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $
               (TYPE%vstd.atomic.PermissionPtr. T&. T&) G&. G&
              ) $ (TYPE%vstd.atomic_ghost.AtomicPredPtr. T&. T& Pred&. Pred&) (Poly%tuple%2. tmp%1)
              (Poly%tuple%2. pair@1) 0
            ))
            (=>
             (ens%vstd.invariant.impl&%0.new. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2. $
               (TYPE%vstd.atomic.PermissionPtr. T&. T&) G&. G&
              ) $ (TYPE%vstd.atomic_ghost.AtomicPredPtr. T&. T& Pred&. Pred&) (Poly%tuple%2. tmp%1)
              (Poly%tuple%2. pair@1) 0 verus_tmp$1@
             )
             (=>
              (= verus_tmp_atomic_inv@ verus_tmp$1@)
              (=>
               (= atomic_inv@1 verus_tmp_atomic_inv@)
               (=>
                (= t! (vstd.atomic_ghost.AtomicPtr./AtomicPtr patomic@ atomic_inv@1))
                (=>
                 %%location_label%%1
                 (and
                  (vstd.atomic_ghost.impl&%23.well_formed.? T&. T& K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicPtr.
                    t!
                  ))
                  (= (vstd.atomic_ghost.impl&%23.constant.? T&. T& K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicPtr.
                     t!
                    )
                   ) k!
 ))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicPtr::load
(declare-fun req%vstd.atomic_ghost.impl&%23.load. (Dcr Type Dcr Type Dcr Type Dcr Type
  vstd.atomic_ghost.AtomicPtr.
 ) Bool
)
(declare-const %%global_location_label%%59 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (
    Pred& Type
   ) (self! vstd.atomic_ghost.AtomicPtr.)
  ) (!
   (= (req%vstd.atomic_ghost.impl&%23.load. T&. T& K&. K& G&. G& Pred&. Pred& self!)
    (=>
     %%global_location_label%%59
     (vstd.atomic_ghost.impl&%23.well_formed.? T&. T& K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicPtr.
       self!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%23.load. T&. T& K&. K& G&. G& Pred&. Pred& self!))
   :qid internal_req__vstd.atomic_ghost.impl&__23.load._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__23.load._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%23.load. (Dcr Type Dcr Type Dcr Type Dcr Type
  vstd.atomic_ghost.AtomicPtr. Poly
 ) Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (
    Pred& Type
   ) (self! vstd.atomic_ghost.AtomicPtr.) (%return! Poly)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%23.load. T&. T& K&. K& G&. G& Pred&. Pred& self! %return!)
    (has_type %return! (PTR T&. T&))
   )
   :pattern ((ens%vstd.atomic_ghost.impl&%23.load. T&. T& K&. K& G&. G& Pred&. Pred& self!
     %return!
   ))
   :qid internal_ens__vstd.atomic_ghost.impl&__23.load._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__23.load._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicPtr::load
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:172:13: 172:16 (#1040)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const %return! Poly)
 (declare-const self! vstd.atomic_ghost.AtomicPtr.)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2@0 tuple%2.)
 (declare-const pair~57@0 tuple%2.)
 (declare-const verus_tmp_perm@ Poly)
 (declare-const verus_tmp_g@0 Poly)
 (declare-const tmp%3 Poly)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm@0 Poly)
 (declare-const g@0 Poly)
 (declare-const verus_tmp$1@0 Poly)
 (declare-const verus_tmp$2@0 Poly)
 (declare-const verus_tmp$3@0 Poly)
 (declare-const result@ Poly)
 (declare-const atomic@ vstd.atomic_ghost.AtomicPtr.)
 (declare-const credit@ vstd.invariant.OpenInvariantCredit.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.atomic_ghost.AtomicPtr. self!) (TYPE%vstd.atomic_ghost.AtomicPtr.
    T&. T& K&. K& G&. G& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (PTR T&.
    T&
   ) G&. G&
 ))
 (assert
  (vstd.atomic_ghost.impl&%23.well_formed.? T&. T& K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicPtr.
    self!
 )))
 (declare-const perm@1 Poly)
 (declare-const g@1 Poly)
 (declare-const verus_tmp$1@1 Poly)
 (declare-const verus_tmp$2@1 Poly)
 (declare-const verus_tmp$3@1 Poly)
 (declare-const pair~57@1 tuple%2.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; Cannot show invariant holds at end of block
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= atomic@ self!)
    (=>
     (= tmp%1 (vstd.atomic_ghost.AtomicPtr./AtomicPtr/atomic_inv (%Poly%vstd.atomic_ghost.AtomicPtr.
        (Poly%vstd.atomic_ghost.AtomicPtr. atomic@)
     )))
     (=>
      (has_type (Poly%tuple%2. tmp%2@0) (TYPE%tuple%2. $ (TYPE%vstd.atomic.PermissionPtr.
         T&. T&
        ) G&. G&
      ))
      (=>
       (= pair~57@0 tmp%2@0)
       (=>
        (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
          $ (TYPE%vstd.atomic.PermissionPtr. T&. T&) G&. G&
         ) $ (TYPE%vstd.atomic_ghost.AtomicPredPtr. T&. T& Pred&. Pred&) tmp%1 (Poly%tuple%2.
          pair~57@0
        ))
        (=>
         (= verus_tmp@ pair~57@0)
         (=>
          (= verus_tmp_perm@ (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
          (=>
           (= verus_tmp_g@0 (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
           (=>
            (= perm@1 verus_tmp_perm@)
            (=>
             (= g@1 verus_tmp_g@0)
             (=>
              (= tmp%3 (vstd.atomic_ghost.AtomicPtr./AtomicPtr/patomic (%Poly%vstd.atomic_ghost.AtomicPtr.
                 (Poly%vstd.atomic_ghost.AtomicPtr. atomic@)
              )))
              (and
               (=>
                %%location_label%%0
                (req%vstd.atomic.impl&%23.load. T&. T& tmp%3 perm@1)
               )
               (=>
                (ens%vstd.atomic.impl&%23.load. T&. T& tmp%3 perm@1 result@)
                (=>
                 (= verus_tmp$1@1 result@)
                 (=>
                  (= verus_tmp$2@1 result@)
                  (=>
                   (= verus_tmp$3@1 result@)
                   (=>
                    (= pair~57@1 (tuple%2./tuple%2 perm@1 g@1))
                    (=>
                     %%location_label%%1
                     (vstd!invariant.AtomicInvariant.inv.? $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
                       $ (TYPE%vstd.atomic.PermissionPtr. T&. T&) G&. G&
                      ) $ (TYPE%vstd.atomic_ghost.AtomicPredPtr. T&. T& Pred&. Pred&) tmp%1 (Poly%tuple%2.
                       pair~57@1
 ))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic_ghost::AtomicPtr::into_inner
(declare-fun req%vstd.atomic_ghost.impl&%23.into_inner. (Dcr Type Dcr Type Dcr Type
  Dcr Type vstd.atomic_ghost.AtomicPtr.
 ) Bool
)
(declare-const %%global_location_label%%60 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (
    Pred& Type
   ) (self! vstd.atomic_ghost.AtomicPtr.)
  ) (!
   (= (req%vstd.atomic_ghost.impl&%23.into_inner. T&. T& K&. K& G&. G& Pred&. Pred& self!)
    (=>
     %%global_location_label%%60
     (vstd.atomic_ghost.impl&%23.well_formed.? T&. T& K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicPtr.
       self!
   ))))
   :pattern ((req%vstd.atomic_ghost.impl&%23.into_inner. T&. T& K&. K& G&. G& Pred&. Pred&
     self!
   ))
   :qid internal_req__vstd.atomic_ghost.impl&__23.into_inner._definition
   :skolemid skolem_internal_req__vstd.atomic_ghost.impl&__23.into_inner._definition
)))
(declare-fun ens%vstd.atomic_ghost.impl&%23.into_inner. (Dcr Type Dcr Type Dcr Type
  Dcr Type vstd.atomic_ghost.AtomicPtr. tuple%2.
 ) Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (K&. Dcr) (K& Type) (G&. Dcr) (G& Type) (Pred&. Dcr) (
    Pred& Type
   ) (self! vstd.atomic_ghost.AtomicPtr.) (res! tuple%2.)
  ) (!
   (= (ens%vstd.atomic_ghost.impl&%23.into_inner. T&. T& K&. K& G&. G& Pred&. Pred& self!
     res!
    ) (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ (PTR T&. T&) (TRACKED G&.) G&))
     (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
       (PTR T&. T&) G&. G& (vstd.atomic_ghost.impl&%23.constant.? T&. T& K&. K& G&. G& Pred&.
        Pred& (Poly%vstd.atomic_ghost.AtomicPtr. self!)
       ) (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))) (tuple%2./tuple%2/1 (
         %Poly%tuple%2. (Poly%tuple%2. res!)
   ))))))
   :pattern ((ens%vstd.atomic_ghost.impl&%23.into_inner. T&. T& K&. K& G&. G& Pred&. Pred&
     self! res!
   ))
   :qid internal_ens__vstd.atomic_ghost.impl&__23.into_inner._definition
   :skolemid skolem_internal_ens__vstd.atomic_ghost.impl&__23.into_inner._definition
)))

;; Function-Def crate::vstd::atomic_ghost::AtomicPtr::into_inner
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic_ghost.rs:179:13: 179:69 (#1040)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const G&. Dcr)
 (declare-const G& Type)
 (declare-const Pred&. Dcr)
 (declare-const Pred& Type)
 (declare-const res! tuple%2.)
 (declare-const self! vstd.atomic_ghost.AtomicPtr.)
 (declare-const tmp%1 Poly)
 (declare-const verus_tmp_perm@ Poly)
 (declare-const verus_tmp_g@ Poly)
 (declare-const patomic@ Poly)
 (declare-const verus_tmp_atomic_inv@ Poly)
 (declare-const atomic_inv@0 Poly)
 (declare-const verus_tmp@ tuple%2.)
 (declare-const perm@0 Poly)
 (declare-const g@0 Poly)
 (declare-const v@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.atomic_ghost.AtomicPtr. self!) (TYPE%vstd.atomic_ghost.AtomicPtr.
    T&. T& K&. K& G&. G& Pred&. Pred&
 )))
 (assert
  (tr_bound%vstd.atomic_ghost.AtomicInvariantPredicate. Pred&. Pred& K&. K& $ (PTR T&.
    T&
   ) G&. G&
 ))
 (assert
  (vstd.atomic_ghost.impl&%23.well_formed.? T&. T& K&. K& G&. G& Pred&. Pred& (Poly%vstd.atomic_ghost.AtomicPtr.
    self!
 )))
 (declare-const atomic_inv@1 Poly)
 (declare-const perm@1 Poly)
 (declare-const g@1 Poly)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= patomic@ (vstd.atomic_ghost.AtomicPtr./AtomicPtr/patomic (%Poly%vstd.atomic_ghost.AtomicPtr.
       (Poly%vstd.atomic_ghost.AtomicPtr. self!)
    )))
    (=>
     (= verus_tmp_atomic_inv@ (vstd.atomic_ghost.AtomicPtr./AtomicPtr/atomic_inv (%Poly%vstd.atomic_ghost.AtomicPtr.
        (Poly%vstd.atomic_ghost.AtomicPtr. self!)
     )))
     (=>
      (= atomic_inv@1 verus_tmp_atomic_inv@)
      (=>
       (ens%vstd.invariant.impl&%0.into_inner. $ (TYPE%tuple%2. K&. K& $ INT) $ (TYPE%tuple%2.
         $ (TYPE%vstd.atomic.PermissionPtr. T&. T&) G&. G&
        ) $ (TYPE%vstd.atomic_ghost.AtomicPredPtr. T&. T& Pred&. Pred&) atomic_inv@1 tmp%1
       )
       (=>
        (= verus_tmp@ (%Poly%tuple%2. tmp%1))
        (=>
         (= verus_tmp_perm@ (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
         (=>
          (= verus_tmp_g@ (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. verus_tmp@))))
          (=>
           (= perm@1 verus_tmp_perm@)
           (=>
            (= g@1 verus_tmp_g@)
            (and
             (=>
              %%location_label%%0
              (req%vstd.atomic.impl&%23.into_inner. T&. T& patomic@ perm@1)
             )
             (=>
              (ens%vstd.atomic.impl&%23.into_inner. T&. T& patomic@ perm@1 v@)
              (=>
               (= res! (tuple%2./tuple%2 v@ g@1))
               (=>
                %%location_label%%1
                (%B (vstd.atomic_ghost.AtomicInvariantPredicate.atomic_inv.? Pred&. Pred& K&. K& $
                  (PTR T&. T&) G&. G& (vstd.atomic_ghost.impl&%23.constant.? T&. T& K&. K& G&. G& Pred&.
                   Pred& (Poly%vstd.atomic_ghost.AtomicPtr. self!)
                  ) (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))) (tuple%2./tuple%2/1 (
                    %Poly%tuple%2. (Poly%tuple%2. res!)
 )))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
