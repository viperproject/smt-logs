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

;; MODULE 'module vstd::atomic'

;; Fuel
(declare-const fuel%vstd.atomic.impl&%0.is_for. FuelId)
(declare-const fuel%vstd.atomic.impl&%0.points_to. FuelId)
(declare-const fuel%vstd.atomic.impl&%0.value. FuelId)
(declare-const fuel%vstd.atomic.impl&%0.id. FuelId)
(declare-const fuel%vstd.atomic.wrapping_add_u8. FuelId)
(declare-const fuel%vstd.atomic.wrapping_sub_u8. FuelId)
(declare-const fuel%vstd.atomic.impl&%2.is_for. FuelId)
(declare-const fuel%vstd.atomic.impl&%2.points_to. FuelId)
(declare-const fuel%vstd.atomic.impl&%2.value. FuelId)
(declare-const fuel%vstd.atomic.impl&%2.id. FuelId)
(declare-const fuel%vstd.atomic.wrapping_add_u16. FuelId)
(declare-const fuel%vstd.atomic.wrapping_sub_u16. FuelId)
(declare-const fuel%vstd.atomic.impl&%4.is_for. FuelId)
(declare-const fuel%vstd.atomic.impl&%4.points_to. FuelId)
(declare-const fuel%vstd.atomic.impl&%4.value. FuelId)
(declare-const fuel%vstd.atomic.impl&%4.id. FuelId)
(declare-const fuel%vstd.atomic.wrapping_add_u32. FuelId)
(declare-const fuel%vstd.atomic.wrapping_sub_u32. FuelId)
(declare-const fuel%vstd.atomic.impl&%6.is_for. FuelId)
(declare-const fuel%vstd.atomic.impl&%6.points_to. FuelId)
(declare-const fuel%vstd.atomic.impl&%6.value. FuelId)
(declare-const fuel%vstd.atomic.impl&%6.id. FuelId)
(declare-const fuel%vstd.atomic.wrapping_add_u64. FuelId)
(declare-const fuel%vstd.atomic.wrapping_sub_u64. FuelId)
(declare-const fuel%vstd.atomic.impl&%8.is_for. FuelId)
(declare-const fuel%vstd.atomic.impl&%8.points_to. FuelId)
(declare-const fuel%vstd.atomic.impl&%8.value. FuelId)
(declare-const fuel%vstd.atomic.impl&%8.id. FuelId)
(declare-const fuel%vstd.atomic.wrapping_add_usize. FuelId)
(declare-const fuel%vstd.atomic.wrapping_sub_usize. FuelId)
(declare-const fuel%vstd.atomic.impl&%10.is_for. FuelId)
(declare-const fuel%vstd.atomic.impl&%10.points_to. FuelId)
(declare-const fuel%vstd.atomic.impl&%10.value. FuelId)
(declare-const fuel%vstd.atomic.impl&%10.id. FuelId)
(declare-const fuel%vstd.atomic.wrapping_add_i8. FuelId)
(declare-const fuel%vstd.atomic.wrapping_sub_i8. FuelId)
(declare-const fuel%vstd.atomic.impl&%12.is_for. FuelId)
(declare-const fuel%vstd.atomic.impl&%12.points_to. FuelId)
(declare-const fuel%vstd.atomic.impl&%12.value. FuelId)
(declare-const fuel%vstd.atomic.impl&%12.id. FuelId)
(declare-const fuel%vstd.atomic.wrapping_add_i16. FuelId)
(declare-const fuel%vstd.atomic.wrapping_sub_i16. FuelId)
(declare-const fuel%vstd.atomic.impl&%14.is_for. FuelId)
(declare-const fuel%vstd.atomic.impl&%14.points_to. FuelId)
(declare-const fuel%vstd.atomic.impl&%14.value. FuelId)
(declare-const fuel%vstd.atomic.impl&%14.id. FuelId)
(declare-const fuel%vstd.atomic.wrapping_add_i32. FuelId)
(declare-const fuel%vstd.atomic.wrapping_sub_i32. FuelId)
(declare-const fuel%vstd.atomic.impl&%16.is_for. FuelId)
(declare-const fuel%vstd.atomic.impl&%16.points_to. FuelId)
(declare-const fuel%vstd.atomic.impl&%16.value. FuelId)
(declare-const fuel%vstd.atomic.impl&%16.id. FuelId)
(declare-const fuel%vstd.atomic.wrapping_add_i64. FuelId)
(declare-const fuel%vstd.atomic.wrapping_sub_i64. FuelId)
(declare-const fuel%vstd.atomic.impl&%18.is_for. FuelId)
(declare-const fuel%vstd.atomic.impl&%18.points_to. FuelId)
(declare-const fuel%vstd.atomic.impl&%18.value. FuelId)
(declare-const fuel%vstd.atomic.impl&%18.id. FuelId)
(declare-const fuel%vstd.atomic.wrapping_add_isize. FuelId)
(declare-const fuel%vstd.atomic.wrapping_sub_isize. FuelId)
(declare-const fuel%vstd.atomic.impl&%20.is_for. FuelId)
(declare-const fuel%vstd.atomic.impl&%20.points_to. FuelId)
(declare-const fuel%vstd.atomic.impl&%20.value. FuelId)
(declare-const fuel%vstd.atomic.impl&%20.id. FuelId)
(declare-const fuel%vstd.atomic.impl&%22.is_for. FuelId)
(declare-const fuel%vstd.atomic.impl&%22.points_to. FuelId)
(declare-const fuel%vstd.atomic.impl&%22.value. FuelId)
(declare-const fuel%vstd.atomic.impl&%22.id. FuelId)
(declare-const fuel%vstd.raw_ptr.impl&%4.view. FuelId)
(declare-const fuel%vstd.view.impl&%0.view. FuelId)
(declare-const fuel%vstd.view.impl&%2.view. FuelId)
(declare-const fuel%vstd.view.impl&%4.view. FuelId)
(declare-const fuel%vstd.view.impl&%6.view. FuelId)
(declare-const fuel%vstd.view.impl&%8.view. FuelId)
(declare-const fuel%vstd.view.impl&%10.view. FuelId)
(declare-const fuel%vstd.view.impl&%12.view. FuelId)
(declare-const fuel%vstd.view.impl&%16.view. FuelId)
(declare-const fuel%vstd.view.impl&%18.view. FuelId)
(declare-const fuel%vstd.view.impl&%20.view. FuelId)
(declare-const fuel%vstd.view.impl&%22.view. FuelId)
(declare-const fuel%vstd.view.impl&%24.view. FuelId)
(declare-const fuel%vstd.view.impl&%28.view. FuelId)
(declare-const fuel%vstd.view.impl&%34.view. FuelId)
(assert
 (distinct fuel%vstd.atomic.impl&%0.is_for. fuel%vstd.atomic.impl&%0.points_to. fuel%vstd.atomic.impl&%0.value.
  fuel%vstd.atomic.impl&%0.id. fuel%vstd.atomic.wrapping_add_u8. fuel%vstd.atomic.wrapping_sub_u8.
  fuel%vstd.atomic.impl&%2.is_for. fuel%vstd.atomic.impl&%2.points_to. fuel%vstd.atomic.impl&%2.value.
  fuel%vstd.atomic.impl&%2.id. fuel%vstd.atomic.wrapping_add_u16. fuel%vstd.atomic.wrapping_sub_u16.
  fuel%vstd.atomic.impl&%4.is_for. fuel%vstd.atomic.impl&%4.points_to. fuel%vstd.atomic.impl&%4.value.
  fuel%vstd.atomic.impl&%4.id. fuel%vstd.atomic.wrapping_add_u32. fuel%vstd.atomic.wrapping_sub_u32.
  fuel%vstd.atomic.impl&%6.is_for. fuel%vstd.atomic.impl&%6.points_to. fuel%vstd.atomic.impl&%6.value.
  fuel%vstd.atomic.impl&%6.id. fuel%vstd.atomic.wrapping_add_u64. fuel%vstd.atomic.wrapping_sub_u64.
  fuel%vstd.atomic.impl&%8.is_for. fuel%vstd.atomic.impl&%8.points_to. fuel%vstd.atomic.impl&%8.value.
  fuel%vstd.atomic.impl&%8.id. fuel%vstd.atomic.wrapping_add_usize. fuel%vstd.atomic.wrapping_sub_usize.
  fuel%vstd.atomic.impl&%10.is_for. fuel%vstd.atomic.impl&%10.points_to. fuel%vstd.atomic.impl&%10.value.
  fuel%vstd.atomic.impl&%10.id. fuel%vstd.atomic.wrapping_add_i8. fuel%vstd.atomic.wrapping_sub_i8.
  fuel%vstd.atomic.impl&%12.is_for. fuel%vstd.atomic.impl&%12.points_to. fuel%vstd.atomic.impl&%12.value.
  fuel%vstd.atomic.impl&%12.id. fuel%vstd.atomic.wrapping_add_i16. fuel%vstd.atomic.wrapping_sub_i16.
  fuel%vstd.atomic.impl&%14.is_for. fuel%vstd.atomic.impl&%14.points_to. fuel%vstd.atomic.impl&%14.value.
  fuel%vstd.atomic.impl&%14.id. fuel%vstd.atomic.wrapping_add_i32. fuel%vstd.atomic.wrapping_sub_i32.
  fuel%vstd.atomic.impl&%16.is_for. fuel%vstd.atomic.impl&%16.points_to. fuel%vstd.atomic.impl&%16.value.
  fuel%vstd.atomic.impl&%16.id. fuel%vstd.atomic.wrapping_add_i64. fuel%vstd.atomic.wrapping_sub_i64.
  fuel%vstd.atomic.impl&%18.is_for. fuel%vstd.atomic.impl&%18.points_to. fuel%vstd.atomic.impl&%18.value.
  fuel%vstd.atomic.impl&%18.id. fuel%vstd.atomic.wrapping_add_isize. fuel%vstd.atomic.wrapping_sub_isize.
  fuel%vstd.atomic.impl&%20.is_for. fuel%vstd.atomic.impl&%20.points_to. fuel%vstd.atomic.impl&%20.value.
  fuel%vstd.atomic.impl&%20.id. fuel%vstd.atomic.impl&%22.is_for. fuel%vstd.atomic.impl&%22.points_to.
  fuel%vstd.atomic.impl&%22.value. fuel%vstd.atomic.impl&%22.id. fuel%vstd.raw_ptr.impl&%4.view.
  fuel%vstd.view.impl&%0.view. fuel%vstd.view.impl&%2.view. fuel%vstd.view.impl&%4.view.
  fuel%vstd.view.impl&%6.view. fuel%vstd.view.impl&%8.view. fuel%vstd.view.impl&%10.view.
  fuel%vstd.view.impl&%12.view. fuel%vstd.view.impl&%16.view. fuel%vstd.view.impl&%18.view.
  fuel%vstd.view.impl&%20.view. fuel%vstd.view.impl&%22.view. fuel%vstd.view.impl&%24.view.
  fuel%vstd.view.impl&%28.view. fuel%vstd.view.impl&%34.view.
))

;; Associated-Type-Decls
(declare-fun proj%%vstd.view.View./V (Dcr Type) Dcr)
(declare-fun proj%vstd.view.View./V (Dcr Type) Type)

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
(declare-sort vstd.raw_ptr.DynMetadata. 0)
(declare-sort vstd.raw_ptr.Provenance. 0)
(declare-datatypes ((core!result.Result. 0) (vstd.atomic.PermissionDataBool. 0) (vstd.atomic.PermissionDataU8.
   0
  ) (vstd.atomic.PermissionDataU16. 0) (vstd.atomic.PermissionDataU32. 0) (vstd.atomic.PermissionDataU64.
   0
  ) (vstd.atomic.PermissionDataUsize. 0) (vstd.atomic.PermissionDataI8. 0) (vstd.atomic.PermissionDataI16.
   0
  ) (vstd.atomic.PermissionDataI32. 0) (vstd.atomic.PermissionDataI64. 0) (vstd.atomic.PermissionDataIsize.
   0
  ) (vstd.atomic.PermissionDataPtr. 0) (vstd.raw_ptr.Metadata. 0) (vstd.raw_ptr.PtrData.
   0
  ) (tuple%0. 0) (tuple%2. 0)
 ) (((core!result.Result./Ok (core!result.Result./Ok/?0 Poly)) (core!result.Result./Err
    (core!result.Result./Err/?0 Poly)
   )
  ) ((vstd.atomic.PermissionDataBool./PermissionDataBool (vstd.atomic.PermissionDataBool./PermissionDataBool/?patomic
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
  ) ((vstd.raw_ptr.Metadata./Thin) (vstd.raw_ptr.Metadata./Length (vstd.raw_ptr.Metadata./Length/?0
     Int
    )
   ) (vstd.raw_ptr.Metadata./Dyn (vstd.raw_ptr.Metadata./Dyn/?0 vstd.raw_ptr.DynMetadata.))
  ) ((vstd.raw_ptr.PtrData./PtrData (vstd.raw_ptr.PtrData./PtrData/?addr Int) (vstd.raw_ptr.PtrData./PtrData/?provenance
     vstd.raw_ptr.Provenance.
    ) (vstd.raw_ptr.PtrData./PtrData/?metadata vstd.raw_ptr.Metadata.)
   )
  ) ((tuple%0./tuple%0)) ((tuple%2./tuple%2 (tuple%2./tuple%2/?0 Poly) (tuple%2./tuple%2/?1
     Poly
)))))
(declare-fun core!result.Result./Ok/0 (core!result.Result.) Poly)
(declare-fun core!result.Result./Err/0 (core!result.Result.) Poly)
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
(declare-fun vstd.raw_ptr.Metadata./Length/0 (vstd.raw_ptr.Metadata.) Int)
(declare-fun vstd.raw_ptr.Metadata./Dyn/0 (vstd.raw_ptr.Metadata.) vstd.raw_ptr.DynMetadata.)
(declare-fun vstd.raw_ptr.PtrData./PtrData/addr (vstd.raw_ptr.PtrData.) Int)
(declare-fun vstd.raw_ptr.PtrData./PtrData/provenance (vstd.raw_ptr.PtrData.) vstd.raw_ptr.Provenance.)
(declare-fun vstd.raw_ptr.PtrData./PtrData/metadata (vstd.raw_ptr.PtrData.) vstd.raw_ptr.Metadata.)
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-fun TYPE%core!result.Result. (Dcr Type Dcr Type) Type)
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
(declare-const TYPE%vstd.raw_ptr.Provenance. Type)
(declare-const TYPE%vstd.raw_ptr.Metadata. Type)
(declare-const TYPE%vstd.raw_ptr.DynMetadata. Type)
(declare-const TYPE%vstd.raw_ptr.PtrData. Type)
(declare-fun TYPE%vstd.seq.Seq. (Dcr Type) Type)
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
(declare-fun Poly%vstd.raw_ptr.DynMetadata. (vstd.raw_ptr.DynMetadata.) Poly)
(declare-fun %Poly%vstd.raw_ptr.DynMetadata. (Poly) vstd.raw_ptr.DynMetadata.)
(declare-fun Poly%vstd.raw_ptr.Provenance. (vstd.raw_ptr.Provenance.) Poly)
(declare-fun %Poly%vstd.raw_ptr.Provenance. (Poly) vstd.raw_ptr.Provenance.)
(declare-fun Poly%core!result.Result. (core!result.Result.) Poly)
(declare-fun %Poly%core!result.Result. (Poly) core!result.Result.)
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
(declare-fun Poly%vstd.raw_ptr.Metadata. (vstd.raw_ptr.Metadata.) Poly)
(declare-fun %Poly%vstd.raw_ptr.Metadata. (Poly) vstd.raw_ptr.Metadata.)
(declare-fun Poly%vstd.raw_ptr.PtrData. (vstd.raw_ptr.PtrData.) Poly)
(declare-fun %Poly%vstd.raw_ptr.PtrData. (Poly) vstd.raw_ptr.PtrData.)
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
 (forall ((x vstd.raw_ptr.DynMetadata.)) (!
   (= x (%Poly%vstd.raw_ptr.DynMetadata. (Poly%vstd.raw_ptr.DynMetadata. x)))
   :pattern ((Poly%vstd.raw_ptr.DynMetadata. x))
   :qid internal_crate__vstd__raw_ptr__DynMetadata_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__DynMetadata_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.raw_ptr.DynMetadata.)
    (= x (Poly%vstd.raw_ptr.DynMetadata. (%Poly%vstd.raw_ptr.DynMetadata. x)))
   )
   :pattern ((has_type x TYPE%vstd.raw_ptr.DynMetadata.))
   :qid internal_crate__vstd__raw_ptr__DynMetadata_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__DynMetadata_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.raw_ptr.DynMetadata.)) (!
   (has_type (Poly%vstd.raw_ptr.DynMetadata. x) TYPE%vstd.raw_ptr.DynMetadata.)
   :pattern ((has_type (Poly%vstd.raw_ptr.DynMetadata. x) TYPE%vstd.raw_ptr.DynMetadata.))
   :qid internal_crate__vstd__raw_ptr__DynMetadata_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__DynMetadata_has_type_always_definition
)))
(assert
 (forall ((x vstd.raw_ptr.Provenance.)) (!
   (= x (%Poly%vstd.raw_ptr.Provenance. (Poly%vstd.raw_ptr.Provenance. x)))
   :pattern ((Poly%vstd.raw_ptr.Provenance. x))
   :qid internal_crate__vstd__raw_ptr__Provenance_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__Provenance_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.raw_ptr.Provenance.)
    (= x (Poly%vstd.raw_ptr.Provenance. (%Poly%vstd.raw_ptr.Provenance. x)))
   )
   :pattern ((has_type x TYPE%vstd.raw_ptr.Provenance.))
   :qid internal_crate__vstd__raw_ptr__Provenance_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__Provenance_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.raw_ptr.Provenance.)) (!
   (has_type (Poly%vstd.raw_ptr.Provenance. x) TYPE%vstd.raw_ptr.Provenance.)
   :pattern ((has_type (Poly%vstd.raw_ptr.Provenance. x) TYPE%vstd.raw_ptr.Provenance.))
   :qid internal_crate__vstd__raw_ptr__Provenance_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__Provenance_has_type_always_definition
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
 (forall ((x vstd.raw_ptr.Metadata.)) (!
   (= x (%Poly%vstd.raw_ptr.Metadata. (Poly%vstd.raw_ptr.Metadata. x)))
   :pattern ((Poly%vstd.raw_ptr.Metadata. x))
   :qid internal_crate__vstd__raw_ptr__Metadata_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__Metadata_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.raw_ptr.Metadata.)
    (= x (Poly%vstd.raw_ptr.Metadata. (%Poly%vstd.raw_ptr.Metadata. x)))
   )
   :pattern ((has_type x TYPE%vstd.raw_ptr.Metadata.))
   :qid internal_crate__vstd__raw_ptr__Metadata_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__Metadata_unbox_axiom_definition
)))
(assert
 (has_type (Poly%vstd.raw_ptr.Metadata. vstd.raw_ptr.Metadata./Thin) TYPE%vstd.raw_ptr.Metadata.)
)
(assert
 (forall ((_0! Int)) (!
   (=>
    (uInv SZ _0!)
    (has_type (Poly%vstd.raw_ptr.Metadata. (vstd.raw_ptr.Metadata./Length _0!)) TYPE%vstd.raw_ptr.Metadata.)
   )
   :pattern ((has_type (Poly%vstd.raw_ptr.Metadata. (vstd.raw_ptr.Metadata./Length _0!))
     TYPE%vstd.raw_ptr.Metadata.
   ))
   :qid internal_vstd.raw_ptr.Metadata./Length_constructor_definition
   :skolemid skolem_internal_vstd.raw_ptr.Metadata./Length_constructor_definition
)))
(assert
 (forall ((x vstd.raw_ptr.Metadata.)) (!
   (= (vstd.raw_ptr.Metadata./Length/0 x) (vstd.raw_ptr.Metadata./Length/?0 x))
   :pattern ((vstd.raw_ptr.Metadata./Length/0 x))
   :qid internal_vstd.raw_ptr.Metadata./Length/0_accessor_definition
   :skolemid skolem_internal_vstd.raw_ptr.Metadata./Length/0_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.raw_ptr.Metadata.)
    (uInv SZ (vstd.raw_ptr.Metadata./Length/0 (%Poly%vstd.raw_ptr.Metadata. x)))
   )
   :pattern ((vstd.raw_ptr.Metadata./Length/0 (%Poly%vstd.raw_ptr.Metadata. x)) (has_type
     x TYPE%vstd.raw_ptr.Metadata.
   ))
   :qid internal_vstd.raw_ptr.Metadata./Length/0_invariant_definition
   :skolemid skolem_internal_vstd.raw_ptr.Metadata./Length/0_invariant_definition
)))
(assert
 (forall ((_0! vstd.raw_ptr.DynMetadata.)) (!
   (has_type (Poly%vstd.raw_ptr.Metadata. (vstd.raw_ptr.Metadata./Dyn _0!)) TYPE%vstd.raw_ptr.Metadata.)
   :pattern ((has_type (Poly%vstd.raw_ptr.Metadata. (vstd.raw_ptr.Metadata./Dyn _0!))
     TYPE%vstd.raw_ptr.Metadata.
   ))
   :qid internal_vstd.raw_ptr.Metadata./Dyn_constructor_definition
   :skolemid skolem_internal_vstd.raw_ptr.Metadata./Dyn_constructor_definition
)))
(assert
 (forall ((x vstd.raw_ptr.Metadata.)) (!
   (= (vstd.raw_ptr.Metadata./Dyn/0 x) (vstd.raw_ptr.Metadata./Dyn/?0 x))
   :pattern ((vstd.raw_ptr.Metadata./Dyn/0 x))
   :qid internal_vstd.raw_ptr.Metadata./Dyn/0_accessor_definition
   :skolemid skolem_internal_vstd.raw_ptr.Metadata./Dyn/0_accessor_definition
)))
(assert
 (forall ((x vstd.raw_ptr.PtrData.)) (!
   (= x (%Poly%vstd.raw_ptr.PtrData. (Poly%vstd.raw_ptr.PtrData. x)))
   :pattern ((Poly%vstd.raw_ptr.PtrData. x))
   :qid internal_crate__vstd__raw_ptr__PtrData_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__PtrData_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.raw_ptr.PtrData.)
    (= x (Poly%vstd.raw_ptr.PtrData. (%Poly%vstd.raw_ptr.PtrData. x)))
   )
   :pattern ((has_type x TYPE%vstd.raw_ptr.PtrData.))
   :qid internal_crate__vstd__raw_ptr__PtrData_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__PtrData_unbox_axiom_definition
)))
(assert
 (forall ((_addr! Int) (_provenance! vstd.raw_ptr.Provenance.) (_metadata! vstd.raw_ptr.Metadata.))
  (!
   (=>
    (and
     (uInv SZ _addr!)
     (has_type (Poly%vstd.raw_ptr.Metadata. _metadata!) TYPE%vstd.raw_ptr.Metadata.)
    )
    (has_type (Poly%vstd.raw_ptr.PtrData. (vstd.raw_ptr.PtrData./PtrData _addr! _provenance!
       _metadata!
      )
     ) TYPE%vstd.raw_ptr.PtrData.
   ))
   :pattern ((has_type (Poly%vstd.raw_ptr.PtrData. (vstd.raw_ptr.PtrData./PtrData _addr!
       _provenance! _metadata!
      )
     ) TYPE%vstd.raw_ptr.PtrData.
   ))
   :qid internal_vstd.raw_ptr.PtrData./PtrData_constructor_definition
   :skolemid skolem_internal_vstd.raw_ptr.PtrData./PtrData_constructor_definition
)))
(assert
 (forall ((x vstd.raw_ptr.PtrData.)) (!
   (= (vstd.raw_ptr.PtrData./PtrData/addr x) (vstd.raw_ptr.PtrData./PtrData/?addr x))
   :pattern ((vstd.raw_ptr.PtrData./PtrData/addr x))
   :qid internal_vstd.raw_ptr.PtrData./PtrData/addr_accessor_definition
   :skolemid skolem_internal_vstd.raw_ptr.PtrData./PtrData/addr_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.raw_ptr.PtrData.)
    (uInv SZ (vstd.raw_ptr.PtrData./PtrData/addr (%Poly%vstd.raw_ptr.PtrData. x)))
   )
   :pattern ((vstd.raw_ptr.PtrData./PtrData/addr (%Poly%vstd.raw_ptr.PtrData. x)) (has_type
     x TYPE%vstd.raw_ptr.PtrData.
   ))
   :qid internal_vstd.raw_ptr.PtrData./PtrData/addr_invariant_definition
   :skolemid skolem_internal_vstd.raw_ptr.PtrData./PtrData/addr_invariant_definition
)))
(assert
 (forall ((x vstd.raw_ptr.PtrData.)) (!
   (= (vstd.raw_ptr.PtrData./PtrData/provenance x) (vstd.raw_ptr.PtrData./PtrData/?provenance
     x
   ))
   :pattern ((vstd.raw_ptr.PtrData./PtrData/provenance x))
   :qid internal_vstd.raw_ptr.PtrData./PtrData/provenance_accessor_definition
   :skolemid skolem_internal_vstd.raw_ptr.PtrData./PtrData/provenance_accessor_definition
)))
(assert
 (forall ((x vstd.raw_ptr.PtrData.)) (!
   (= (vstd.raw_ptr.PtrData./PtrData/metadata x) (vstd.raw_ptr.PtrData./PtrData/?metadata
     x
   ))
   :pattern ((vstd.raw_ptr.PtrData./PtrData/metadata x))
   :qid internal_vstd.raw_ptr.PtrData./PtrData/metadata_accessor_definition
   :skolemid skolem_internal_vstd.raw_ptr.PtrData./PtrData/metadata_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.raw_ptr.PtrData.)
    (has_type (Poly%vstd.raw_ptr.Metadata. (vstd.raw_ptr.PtrData./PtrData/metadata (%Poly%vstd.raw_ptr.PtrData.
        x
      ))
     ) TYPE%vstd.raw_ptr.Metadata.
   ))
   :pattern ((vstd.raw_ptr.PtrData./PtrData/metadata (%Poly%vstd.raw_ptr.PtrData. x))
    (has_type x TYPE%vstd.raw_ptr.PtrData.)
   )
   :qid internal_vstd.raw_ptr.PtrData./PtrData/metadata_invariant_definition
   :skolemid skolem_internal_vstd.raw_ptr.PtrData./PtrData/metadata_invariant_definition
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
(declare-fun tr_bound%vstd.view.View. (Dcr Type) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%vstd.view.View. Self%&. Self%&))
   :qid internal_crate__vstd__view__View_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__view__View_trait_type_bounds_definition
)))

;; Associated-Type-Impls
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (= (proj%%vstd.view.View./V $ (PTR T&. T&)) $)
   :pattern ((proj%%vstd.view.View./V $ (PTR T&. T&)))
   :qid internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (= (proj%vstd.view.View./V $ (PTR T&. T&)) TYPE%vstd.raw_ptr.PtrData.)
   :pattern ((proj%vstd.view.View./V $ (PTR T&. T&)))
   :qid internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (= (proj%%vstd.view.View./V (CONST_PTR $) (PTR T&. T&)) $)
   :pattern ((proj%%vstd.view.View./V (CONST_PTR $) (PTR T&. T&)))
   :qid internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (= (proj%vstd.view.View./V (CONST_PTR $) (PTR T&. T&)) TYPE%vstd.raw_ptr.PtrData.)
   :pattern ((proj%vstd.view.View./V (CONST_PTR $) (PTR T&. T&)))
   :qid internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (= (proj%%vstd.view.View./V $ (SLICE T&. T&)) $)
   :pattern ((proj%%vstd.view.View./V $ (SLICE T&. T&)))
   :qid internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (= (proj%vstd.view.View./V $ (SLICE T&. T&)) (TYPE%vstd.seq.Seq. T&. T&))
   :pattern ((proj%vstd.view.View./V $ (SLICE T&. T&)))
   :qid internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
)))
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
 (= (proj%%vstd.view.View./V $ TYPE%tuple%0.) $)
)
(assert
 (= (proj%vstd.view.View./V $ TYPE%tuple%0.) TYPE%tuple%0.)
)
(assert
 (= (proj%%vstd.view.View./V $ BOOL) $)
)
(assert
 (= (proj%vstd.view.View./V $ BOOL) BOOL)
)
(assert
 (= (proj%%vstd.view.View./V $ (UINT 8)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (UINT 8)) (UINT 8))
)
(assert
 (= (proj%%vstd.view.View./V $ (UINT 16)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (UINT 16)) (UINT 16))
)
(assert
 (= (proj%%vstd.view.View./V $ (UINT 32)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (UINT 32)) (UINT 32))
)
(assert
 (= (proj%%vstd.view.View./V $ (UINT 64)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (UINT 64)) (UINT 64))
)
(assert
 (= (proj%%vstd.view.View./V $ (UINT SZ)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (UINT SZ)) (UINT SZ))
)
(assert
 (= (proj%%vstd.view.View./V $ (SINT 8)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (SINT 8)) (SINT 8))
)
(assert
 (= (proj%%vstd.view.View./V $ (SINT 16)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (SINT 16)) (SINT 16))
)
(assert
 (= (proj%%vstd.view.View./V $ (SINT 32)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (SINT 32)) (SINT 32))
)
(assert
 (= (proj%%vstd.view.View./V $ (SINT 64)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (SINT 64)) (SINT 64))
)
(assert
 (= (proj%%vstd.view.View./V $ (SINT SZ)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (SINT SZ)) (SINT SZ))
)
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

;; Function-Decl crate::vstd::view::View::view
(declare-fun vstd.view.View.view.? (Dcr Type Poly) Poly)
(declare-fun vstd.view.View.view%default%.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::atomic::PermissionBool::view
(declare-fun vstd.atomic.impl&%0.view.? (Poly) vstd.atomic.PermissionDataBool.)

;; Function-Decl crate::vstd::atomic::PAtomicBool::id
(declare-fun vstd.atomic.impl&%1.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionU8::view
(declare-fun vstd.atomic.impl&%2.view.? (Poly) vstd.atomic.PermissionDataU8.)

;; Function-Decl crate::vstd::atomic::PAtomicU8::id
(declare-fun vstd.atomic.impl&%3.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::wrapping_add_u8
(declare-fun vstd.atomic.wrapping_add_u8.? (Poly Poly) Int)

;; Function-Decl crate::vstd::atomic::wrapping_sub_u8
(declare-fun vstd.atomic.wrapping_sub_u8.? (Poly Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionU16::view
(declare-fun vstd.atomic.impl&%4.view.? (Poly) vstd.atomic.PermissionDataU16.)

;; Function-Decl crate::vstd::atomic::PAtomicU16::id
(declare-fun vstd.atomic.impl&%5.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::wrapping_add_u16
(declare-fun vstd.atomic.wrapping_add_u16.? (Poly Poly) Int)

;; Function-Decl crate::vstd::atomic::wrapping_sub_u16
(declare-fun vstd.atomic.wrapping_sub_u16.? (Poly Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionU32::view
(declare-fun vstd.atomic.impl&%6.view.? (Poly) vstd.atomic.PermissionDataU32.)

;; Function-Decl crate::vstd::atomic::PAtomicU32::id
(declare-fun vstd.atomic.impl&%7.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::wrapping_add_u32
(declare-fun vstd.atomic.wrapping_add_u32.? (Poly Poly) Int)

;; Function-Decl crate::vstd::atomic::wrapping_sub_u32
(declare-fun vstd.atomic.wrapping_sub_u32.? (Poly Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionU64::view
(declare-fun vstd.atomic.impl&%8.view.? (Poly) vstd.atomic.PermissionDataU64.)

;; Function-Decl crate::vstd::atomic::PAtomicU64::id
(declare-fun vstd.atomic.impl&%9.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::wrapping_add_u64
(declare-fun vstd.atomic.wrapping_add_u64.? (Poly Poly) Int)

;; Function-Decl crate::vstd::atomic::wrapping_sub_u64
(declare-fun vstd.atomic.wrapping_sub_u64.? (Poly Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionUsize::view
(declare-fun vstd.atomic.impl&%10.view.? (Poly) vstd.atomic.PermissionDataUsize.)

;; Function-Decl crate::vstd::atomic::PAtomicUsize::id
(declare-fun vstd.atomic.impl&%11.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::wrapping_add_usize
(declare-fun vstd.atomic.wrapping_add_usize.? (Poly Poly) Int)

;; Function-Decl crate::vstd::atomic::wrapping_sub_usize
(declare-fun vstd.atomic.wrapping_sub_usize.? (Poly Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionI8::view
(declare-fun vstd.atomic.impl&%12.view.? (Poly) vstd.atomic.PermissionDataI8.)

;; Function-Decl crate::vstd::atomic::PAtomicI8::id
(declare-fun vstd.atomic.impl&%13.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::wrapping_add_i8
(declare-fun vstd.atomic.wrapping_add_i8.? (Poly Poly) Int)

;; Function-Decl crate::vstd::atomic::wrapping_sub_i8
(declare-fun vstd.atomic.wrapping_sub_i8.? (Poly Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionI16::view
(declare-fun vstd.atomic.impl&%14.view.? (Poly) vstd.atomic.PermissionDataI16.)

;; Function-Decl crate::vstd::atomic::PAtomicI16::id
(declare-fun vstd.atomic.impl&%15.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::wrapping_add_i16
(declare-fun vstd.atomic.wrapping_add_i16.? (Poly Poly) Int)

;; Function-Decl crate::vstd::atomic::wrapping_sub_i16
(declare-fun vstd.atomic.wrapping_sub_i16.? (Poly Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionI32::view
(declare-fun vstd.atomic.impl&%16.view.? (Poly) vstd.atomic.PermissionDataI32.)

;; Function-Decl crate::vstd::atomic::PAtomicI32::id
(declare-fun vstd.atomic.impl&%17.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::wrapping_add_i32
(declare-fun vstd.atomic.wrapping_add_i32.? (Poly Poly) Int)

;; Function-Decl crate::vstd::atomic::wrapping_sub_i32
(declare-fun vstd.atomic.wrapping_sub_i32.? (Poly Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionI64::view
(declare-fun vstd.atomic.impl&%18.view.? (Poly) vstd.atomic.PermissionDataI64.)

;; Function-Decl crate::vstd::atomic::PAtomicI64::id
(declare-fun vstd.atomic.impl&%19.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::wrapping_add_i64
(declare-fun vstd.atomic.wrapping_add_i64.? (Poly Poly) Int)

;; Function-Decl crate::vstd::atomic::wrapping_sub_i64
(declare-fun vstd.atomic.wrapping_sub_i64.? (Poly Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionIsize::view
(declare-fun vstd.atomic.impl&%20.view.? (Poly) vstd.atomic.PermissionDataIsize.)

;; Function-Decl crate::vstd::atomic::PAtomicIsize::id
(declare-fun vstd.atomic.impl&%21.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::wrapping_add_isize
(declare-fun vstd.atomic.wrapping_add_isize.? (Poly Poly) Int)

;; Function-Decl crate::vstd::atomic::wrapping_sub_isize
(declare-fun vstd.atomic.wrapping_sub_isize.? (Poly Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionPtr::view
(declare-fun vstd.atomic.impl&%22.view.? (Dcr Type Poly) vstd.atomic.PermissionDataPtr.)

;; Function-Decl crate::vstd::atomic::PAtomicPtr::id
(declare-fun vstd.atomic.impl&%23.id.? (Dcr Type Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionBool::is_for
(declare-fun vstd.atomic.impl&%0.is_for.? (Poly Poly) Bool)

;; Function-Decl crate::vstd::atomic::PermissionBool::points_to
(declare-fun vstd.atomic.impl&%0.points_to.? (Poly Poly) Bool)

;; Function-Decl crate::vstd::atomic::PermissionBool::value
(declare-fun vstd.atomic.impl&%0.value.? (Poly) Bool)

;; Function-Decl crate::vstd::atomic::PermissionBool::id
(declare-fun vstd.atomic.impl&%0.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionU8::is_for
(declare-fun vstd.atomic.impl&%2.is_for.? (Poly Poly) Bool)

;; Function-Decl crate::vstd::atomic::PermissionU8::points_to
(declare-fun vstd.atomic.impl&%2.points_to.? (Poly Poly) Bool)

;; Function-Decl crate::vstd::atomic::PermissionU8::value
(declare-fun vstd.atomic.impl&%2.value.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionU8::id
(declare-fun vstd.atomic.impl&%2.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionU16::is_for
(declare-fun vstd.atomic.impl&%4.is_for.? (Poly Poly) Bool)

;; Function-Decl crate::vstd::atomic::PermissionU16::points_to
(declare-fun vstd.atomic.impl&%4.points_to.? (Poly Poly) Bool)

;; Function-Decl crate::vstd::atomic::PermissionU16::value
(declare-fun vstd.atomic.impl&%4.value.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionU16::id
(declare-fun vstd.atomic.impl&%4.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionU32::is_for
(declare-fun vstd.atomic.impl&%6.is_for.? (Poly Poly) Bool)

;; Function-Decl crate::vstd::atomic::PermissionU32::points_to
(declare-fun vstd.atomic.impl&%6.points_to.? (Poly Poly) Bool)

;; Function-Decl crate::vstd::atomic::PermissionU32::value
(declare-fun vstd.atomic.impl&%6.value.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionU32::id
(declare-fun vstd.atomic.impl&%6.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionU64::is_for
(declare-fun vstd.atomic.impl&%8.is_for.? (Poly Poly) Bool)

;; Function-Decl crate::vstd::atomic::PermissionU64::points_to
(declare-fun vstd.atomic.impl&%8.points_to.? (Poly Poly) Bool)

;; Function-Decl crate::vstd::atomic::PermissionU64::value
(declare-fun vstd.atomic.impl&%8.value.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionU64::id
(declare-fun vstd.atomic.impl&%8.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionUsize::is_for
(declare-fun vstd.atomic.impl&%10.is_for.? (Poly Poly) Bool)

;; Function-Decl crate::vstd::atomic::PermissionUsize::points_to
(declare-fun vstd.atomic.impl&%10.points_to.? (Poly Poly) Bool)

;; Function-Decl crate::vstd::atomic::PermissionUsize::value
(declare-fun vstd.atomic.impl&%10.value.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionUsize::id
(declare-fun vstd.atomic.impl&%10.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionI8::is_for
(declare-fun vstd.atomic.impl&%12.is_for.? (Poly Poly) Bool)

;; Function-Decl crate::vstd::atomic::PermissionI8::points_to
(declare-fun vstd.atomic.impl&%12.points_to.? (Poly Poly) Bool)

;; Function-Decl crate::vstd::atomic::PermissionI8::value
(declare-fun vstd.atomic.impl&%12.value.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionI8::id
(declare-fun vstd.atomic.impl&%12.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionI16::is_for
(declare-fun vstd.atomic.impl&%14.is_for.? (Poly Poly) Bool)

;; Function-Decl crate::vstd::atomic::PermissionI16::points_to
(declare-fun vstd.atomic.impl&%14.points_to.? (Poly Poly) Bool)

;; Function-Decl crate::vstd::atomic::PermissionI16::value
(declare-fun vstd.atomic.impl&%14.value.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionI16::id
(declare-fun vstd.atomic.impl&%14.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionI32::is_for
(declare-fun vstd.atomic.impl&%16.is_for.? (Poly Poly) Bool)

;; Function-Decl crate::vstd::atomic::PermissionI32::points_to
(declare-fun vstd.atomic.impl&%16.points_to.? (Poly Poly) Bool)

;; Function-Decl crate::vstd::atomic::PermissionI32::value
(declare-fun vstd.atomic.impl&%16.value.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionI32::id
(declare-fun vstd.atomic.impl&%16.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionI64::is_for
(declare-fun vstd.atomic.impl&%18.is_for.? (Poly Poly) Bool)

;; Function-Decl crate::vstd::atomic::PermissionI64::points_to
(declare-fun vstd.atomic.impl&%18.points_to.? (Poly Poly) Bool)

;; Function-Decl crate::vstd::atomic::PermissionI64::value
(declare-fun vstd.atomic.impl&%18.value.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionI64::id
(declare-fun vstd.atomic.impl&%18.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionIsize::is_for
(declare-fun vstd.atomic.impl&%20.is_for.? (Poly Poly) Bool)

;; Function-Decl crate::vstd::atomic::PermissionIsize::points_to
(declare-fun vstd.atomic.impl&%20.points_to.? (Poly Poly) Bool)

;; Function-Decl crate::vstd::atomic::PermissionIsize::value
(declare-fun vstd.atomic.impl&%20.value.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionIsize::id
(declare-fun vstd.atomic.impl&%20.id.? (Poly) Int)

;; Function-Decl crate::vstd::atomic::PermissionPtr::is_for
(declare-fun vstd.atomic.impl&%22.is_for.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::atomic::PermissionPtr::points_to
(declare-fun vstd.atomic.impl&%22.points_to.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::atomic::PermissionPtr::value
(declare-fun vstd.atomic.impl&%22.value.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::atomic::PermissionPtr::id
(declare-fun vstd.atomic.impl&%22.id.? (Dcr Type Poly) Int)

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

;; Function-Axioms crate::vstd::raw_ptr::impl&%4::view
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.impl&%4.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.impl&%4.view.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.view.View.view.? (CONST_PTR $) (PTR T&. T&) self!) (vstd.view.View.view.?
      $ (PTR T&. T&) self!
    ))
    :pattern ((vstd.view.View.view.? (CONST_PTR $) (PTR T&. T&) self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

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

;; Function-Specs crate::vstd::atomic::PAtomicBool::store
(declare-fun req%vstd.atomic.impl&%1.store. (vstd.atomic.PAtomicBool. vstd.atomic.PermissionBool.
  Bool
 ) Bool
)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicBool.) (pre%perm! vstd.atomic.PermissionBool.) (
    v! Bool
   )
  ) (!
   (= (req%vstd.atomic.impl&%1.store. self! pre%perm! v!) (=>
     %%global_location_label%%1
     (= (vstd.atomic.impl&%1.id.? (Poly%vstd.atomic.PAtomicBool. self!)) (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.?
          (Poly%vstd.atomic.PermissionBool. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%1.store. self! pre%perm! v!))
   :qid internal_req__vstd.atomic.impl&__1.store._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__1.store._definition
)))
(declare-fun ens%vstd.atomic.impl&%1.store. (vstd.atomic.PAtomicBool. vstd.atomic.PermissionBool.
  vstd.atomic.PermissionBool. Bool
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicBool.) (pre%perm! vstd.atomic.PermissionBool.) (
    perm! vstd.atomic.PermissionBool.
   ) (v! Bool)
  ) (!
   (= (ens%vstd.atomic.impl&%1.store. self! pre%perm! perm! v!) (and
     (= (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
        (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
           perm!
       ))))
      ) v!
     )
     (= (vstd.atomic.impl&%1.id.? (Poly%vstd.atomic.PAtomicBool. self!)) (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.?
          (Poly%vstd.atomic.PermissionBool. perm!)
   )))))))
   :pattern ((ens%vstd.atomic.impl&%1.store. self! pre%perm! perm! v!))
   :qid internal_ens__vstd.atomic.impl&__1.store._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__1.store._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicBool::compare_exchange
(declare-fun req%vstd.atomic.impl&%1.compare_exchange. (vstd.atomic.PAtomicBool. vstd.atomic.PermissionBool.
  Bool Bool
 ) Bool
)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicBool.) (pre%perm! vstd.atomic.PermissionBool.) (
    current! Bool
   ) (new! Bool)
  ) (!
   (= (req%vstd.atomic.impl&%1.compare_exchange. self! pre%perm! current! new!) (=>
     %%global_location_label%%2
     (= (vstd.atomic.impl&%1.id.? (Poly%vstd.atomic.PAtomicBool. self!)) (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.?
          (Poly%vstd.atomic.PermissionBool. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%1.compare_exchange. self! pre%perm! current! new!))
   :qid internal_req__vstd.atomic.impl&__1.compare_exchange._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__1.compare_exchange._definition
)))
(declare-fun ens%vstd.atomic.impl&%1.compare_exchange. (vstd.atomic.PAtomicBool. vstd.atomic.PermissionBool.
  vstd.atomic.PermissionBool. Bool Bool core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicBool.) (pre%perm! vstd.atomic.PermissionBool.) (
    perm! vstd.atomic.PermissionBool.
   ) (current! Bool) (new! Bool) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd.atomic.impl&%1.compare_exchange. self! pre%perm! perm! current! new! ret!)
    (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ BOOL $ BOOL))
     (and
      (= (vstd.atomic.impl&%1.id.? (Poly%vstd.atomic.PAtomicBool. self!)) (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic
        (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.?
           (Poly%vstd.atomic.PermissionBool. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%B (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
             (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
                pre%perm!
          ))))))
          (= (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
             (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
            (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
               pre%perm!
       ))))))))
       (let
        ((r$ (%B (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (not (= current! (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
              (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
                 pre%perm!
          )))))))
          (= (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
             (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
                perm!
            ))))
           ) (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
             (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
                pre%perm!
         )))))))
         (= r$ (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
            (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd.atomic.impl&%1.compare_exchange. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd.atomic.impl&__1.compare_exchange._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__1.compare_exchange._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicBool::compare_exchange_weak
(declare-fun req%vstd.atomic.impl&%1.compare_exchange_weak. (vstd.atomic.PAtomicBool.
  vstd.atomic.PermissionBool. Bool Bool
 ) Bool
)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicBool.) (pre%perm! vstd.atomic.PermissionBool.) (
    current! Bool
   ) (new! Bool)
  ) (!
   (= (req%vstd.atomic.impl&%1.compare_exchange_weak. self! pre%perm! current! new!)
    (=>
     %%global_location_label%%3
     (= (vstd.atomic.impl&%1.id.? (Poly%vstd.atomic.PAtomicBool. self!)) (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.?
          (Poly%vstd.atomic.PermissionBool. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%1.compare_exchange_weak. self! pre%perm! current!
     new!
   ))
   :qid internal_req__vstd.atomic.impl&__1.compare_exchange_weak._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__1.compare_exchange_weak._definition
)))
(declare-fun ens%vstd.atomic.impl&%1.compare_exchange_weak. (vstd.atomic.PAtomicBool.
  vstd.atomic.PermissionBool. vstd.atomic.PermissionBool. Bool Bool core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicBool.) (pre%perm! vstd.atomic.PermissionBool.) (
    perm! vstd.atomic.PermissionBool.
   ) (current! Bool) (new! Bool) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd.atomic.impl&%1.compare_exchange_weak. self! pre%perm! perm! current! new!
     ret!
    ) (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ BOOL $ BOOL))
     (and
      (= (vstd.atomic.impl&%1.id.? (Poly%vstd.atomic.PAtomicBool. self!)) (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic
        (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.?
           (Poly%vstd.atomic.PermissionBool. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%B (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
             (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
                pre%perm!
          ))))))
          (= (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
             (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
            (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
               pre%perm!
       ))))))))
       (let
        ((r$ (%B (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (= (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
            (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
               perm!
           ))))
          ) (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
            (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
               pre%perm!
         ))))))
         (= r$ (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
            (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd.atomic.impl&%1.compare_exchange_weak. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd.atomic.impl&__1.compare_exchange_weak._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__1.compare_exchange_weak._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicBool::swap
(declare-fun req%vstd.atomic.impl&%1.swap. (vstd.atomic.PAtomicBool. vstd.atomic.PermissionBool.
  Bool
 ) Bool
)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicBool.) (pre%perm! vstd.atomic.PermissionBool.) (
    v! Bool
   )
  ) (!
   (= (req%vstd.atomic.impl&%1.swap. self! pre%perm! v!) (=>
     %%global_location_label%%4
     (= (vstd.atomic.impl&%1.id.? (Poly%vstd.atomic.PAtomicBool. self!)) (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.?
          (Poly%vstd.atomic.PermissionBool. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%1.swap. self! pre%perm! v!))
   :qid internal_req__vstd.atomic.impl&__1.swap._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__1.swap._definition
)))
(declare-fun ens%vstd.atomic.impl&%1.swap. (vstd.atomic.PAtomicBool. vstd.atomic.PermissionBool.
  vstd.atomic.PermissionBool. Bool Bool
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicBool.) (pre%perm! vstd.atomic.PermissionBool.) (
    perm! vstd.atomic.PermissionBool.
   ) (v! Bool) (ret! Bool)
  ) (!
   (= (ens%vstd.atomic.impl&%1.swap. self! pre%perm! perm! v! ret!) (and
     (and
      (= (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
         (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
            perm!
        ))))
       ) v!
      )
      (= (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
         (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
            pre%perm!
        ))))
       ) ret!
     ))
     (= (vstd.atomic.impl&%1.id.? (Poly%vstd.atomic.PAtomicBool. self!)) (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.?
          (Poly%vstd.atomic.PermissionBool. perm!)
   )))))))
   :pattern ((ens%vstd.atomic.impl&%1.swap. self! pre%perm! perm! v! ret!))
   :qid internal_ens__vstd.atomic.impl&__1.swap._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__1.swap._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicBool::into_inner
(declare-fun req%vstd.atomic.impl&%1.into_inner. (vstd.atomic.PAtomicBool. vstd.atomic.PermissionBool.)
 Bool
)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicBool.) (perm! vstd.atomic.PermissionBool.)) (!
   (= (req%vstd.atomic.impl&%1.into_inner. self! perm!) (=>
     %%global_location_label%%5
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

;; Function-Specs crate::vstd::atomic::PAtomicBool::fetch_and
(declare-fun req%vstd.atomic.impl&%1.fetch_and. (vstd.atomic.PAtomicBool. vstd.atomic.PermissionBool.
  Bool
 ) Bool
)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicBool.) (pre%perm! vstd.atomic.PermissionBool.) (
    n! Bool
   )
  ) (!
   (= (req%vstd.atomic.impl&%1.fetch_and. self! pre%perm! n!) (=>
     %%global_location_label%%6
     (= (vstd.atomic.impl&%1.id.? (Poly%vstd.atomic.PAtomicBool. self!)) (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.?
          (Poly%vstd.atomic.PermissionBool. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%1.fetch_and. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__1.fetch_and._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__1.fetch_and._definition
)))
(declare-fun ens%vstd.atomic.impl&%1.fetch_and. (vstd.atomic.PAtomicBool. vstd.atomic.PermissionBool.
  vstd.atomic.PermissionBool. Bool Bool
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicBool.) (pre%perm! vstd.atomic.PermissionBool.) (
    perm! vstd.atomic.PermissionBool.
   ) (n! Bool) (ret! Bool)
  ) (!
   (= (ens%vstd.atomic.impl&%1.fetch_and. self! pre%perm! perm! n! ret!) (and
     (and
      (= (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
         (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
            pre%perm!
        ))))
       ) ret!
      )
      (= (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic (%Poly%vstd.atomic.PermissionDataBool.
         (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
            perm!
        ))))
       ) (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic (%Poly%vstd.atomic.PermissionDataBool.
         (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
            pre%perm!
     )))))))
     (= (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
        (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
           perm!
       ))))
      ) (and
       (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
         (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%1.fetch_and. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__1.fetch_and._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__1.fetch_and._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicBool::fetch_or
(declare-fun req%vstd.atomic.impl&%1.fetch_or. (vstd.atomic.PAtomicBool. vstd.atomic.PermissionBool.
  Bool
 ) Bool
)
(declare-const %%global_location_label%%7 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicBool.) (pre%perm! vstd.atomic.PermissionBool.) (
    n! Bool
   )
  ) (!
   (= (req%vstd.atomic.impl&%1.fetch_or. self! pre%perm! n!) (=>
     %%global_location_label%%7
     (= (vstd.atomic.impl&%1.id.? (Poly%vstd.atomic.PAtomicBool. self!)) (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.?
          (Poly%vstd.atomic.PermissionBool. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%1.fetch_or. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__1.fetch_or._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__1.fetch_or._definition
)))
(declare-fun ens%vstd.atomic.impl&%1.fetch_or. (vstd.atomic.PAtomicBool. vstd.atomic.PermissionBool.
  vstd.atomic.PermissionBool. Bool Bool
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicBool.) (pre%perm! vstd.atomic.PermissionBool.) (
    perm! vstd.atomic.PermissionBool.
   ) (n! Bool) (ret! Bool)
  ) (!
   (= (ens%vstd.atomic.impl&%1.fetch_or. self! pre%perm! perm! n! ret!) (and
     (and
      (= (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
         (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
            pre%perm!
        ))))
       ) ret!
      )
      (= (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic (%Poly%vstd.atomic.PermissionDataBool.
         (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
            perm!
        ))))
       ) (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic (%Poly%vstd.atomic.PermissionDataBool.
         (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
            pre%perm!
     )))))))
     (= (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
        (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
           perm!
       ))))
      ) (or
       (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
         (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%1.fetch_or. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__1.fetch_or._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__1.fetch_or._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicBool::fetch_xor
(declare-fun req%vstd.atomic.impl&%1.fetch_xor. (vstd.atomic.PAtomicBool. vstd.atomic.PermissionBool.
  Bool
 ) Bool
)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicBool.) (pre%perm! vstd.atomic.PermissionBool.) (
    n! Bool
   )
  ) (!
   (= (req%vstd.atomic.impl&%1.fetch_xor. self! pre%perm! n!) (=>
     %%global_location_label%%8
     (= (vstd.atomic.impl&%1.id.? (Poly%vstd.atomic.PAtomicBool. self!)) (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.?
          (Poly%vstd.atomic.PermissionBool. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%1.fetch_xor. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__1.fetch_xor._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__1.fetch_xor._definition
)))
(declare-fun ens%vstd.atomic.impl&%1.fetch_xor. (vstd.atomic.PAtomicBool. vstd.atomic.PermissionBool.
  vstd.atomic.PermissionBool. Bool Bool
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicBool.) (pre%perm! vstd.atomic.PermissionBool.) (
    perm! vstd.atomic.PermissionBool.
   ) (n! Bool) (ret! Bool)
  ) (!
   (= (ens%vstd.atomic.impl&%1.fetch_xor. self! pre%perm! perm! n! ret!) (and
     (and
      (= (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
         (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
            pre%perm!
        ))))
       ) ret!
      )
      (= (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic (%Poly%vstd.atomic.PermissionDataBool.
         (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
            perm!
        ))))
       ) (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic (%Poly%vstd.atomic.PermissionDataBool.
         (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
            pre%perm!
     )))))))
     (= (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
        (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
           perm!
       ))))
      ) (or
       (and
        (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
          (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
             pre%perm!
        )))))
        (not n!)
       )
       (and
        (not (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
           (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
              pre%perm!
        ))))))
        n!
   )))))
   :pattern ((ens%vstd.atomic.impl&%1.fetch_xor. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__1.fetch_xor._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__1.fetch_xor._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicBool::fetch_nand
(declare-fun req%vstd.atomic.impl&%1.fetch_nand. (vstd.atomic.PAtomicBool. vstd.atomic.PermissionBool.
  Bool
 ) Bool
)
(declare-const %%global_location_label%%9 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicBool.) (pre%perm! vstd.atomic.PermissionBool.) (
    n! Bool
   )
  ) (!
   (= (req%vstd.atomic.impl&%1.fetch_nand. self! pre%perm! n!) (=>
     %%global_location_label%%9
     (= (vstd.atomic.impl&%1.id.? (Poly%vstd.atomic.PAtomicBool. self!)) (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.?
          (Poly%vstd.atomic.PermissionBool. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%1.fetch_nand. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__1.fetch_nand._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__1.fetch_nand._definition
)))
(declare-fun ens%vstd.atomic.impl&%1.fetch_nand. (vstd.atomic.PAtomicBool. vstd.atomic.PermissionBool.
  vstd.atomic.PermissionBool. Bool Bool
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicBool.) (pre%perm! vstd.atomic.PermissionBool.) (
    perm! vstd.atomic.PermissionBool.
   ) (n! Bool) (ret! Bool)
  ) (!
   (= (ens%vstd.atomic.impl&%1.fetch_nand. self! pre%perm! perm! n! ret!) (and
     (and
      (= (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
         (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
            pre%perm!
        ))))
       ) ret!
      )
      (= (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic (%Poly%vstd.atomic.PermissionDataBool.
         (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
            perm!
        ))))
       ) (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic (%Poly%vstd.atomic.PermissionDataBool.
         (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
            pre%perm!
     )))))))
     (= (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
        (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
           perm!
       ))))
      ) (not (and
        (vstd.atomic.PermissionDataBool./PermissionDataBool/value (%Poly%vstd.atomic.PermissionDataBool.
          (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.? (Poly%vstd.atomic.PermissionBool.
             pre%perm!
        )))))
        n!
   )))))
   :pattern ((ens%vstd.atomic.impl&%1.fetch_nand. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__1.fetch_nand._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__1.fetch_nand._definition
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
(declare-const %%global_location_label%%10 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (perm! vstd.atomic.PermissionU8.)) (!
   (= (req%vstd.atomic.impl&%3.load. self! perm!) (=>
     %%global_location_label%%10
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

;; Function-Specs crate::vstd::atomic::PAtomicU8::store
(declare-fun req%vstd.atomic.impl&%3.store. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  Int
 ) Bool
)
(declare-const %%global_location_label%%11 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (v! Int))
  (!
   (= (req%vstd.atomic.impl&%3.store. self! pre%perm! v!) (=>
     %%global_location_label%%11
     (= (vstd.atomic.impl&%3.id.? (Poly%vstd.atomic.PAtomicU8. self!)) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic
       (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
          (Poly%vstd.atomic.PermissionU8. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%3.store. self! pre%perm! v!))
   :qid internal_req__vstd.atomic.impl&__3.store._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__3.store._definition
)))
(declare-fun ens%vstd.atomic.impl&%3.store. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  vstd.atomic.PermissionU8. Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (perm!
    vstd.atomic.PermissionU8.
   ) (v! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%3.store. self! pre%perm! perm! v!) (and
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           perm!
       ))))
      ) v!
     )
     (= (vstd.atomic.impl&%3.id.? (Poly%vstd.atomic.PAtomicU8. self!)) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic
       (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
          (Poly%vstd.atomic.PermissionU8. perm!)
   )))))))
   :pattern ((ens%vstd.atomic.impl&%3.store. self! pre%perm! perm! v!))
   :qid internal_ens__vstd.atomic.impl&__3.store._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__3.store._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU8::compare_exchange
(declare-fun req%vstd.atomic.impl&%3.compare_exchange. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  Int Int
 ) Bool
)
(declare-const %%global_location_label%%12 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (current!
    Int
   ) (new! Int)
  ) (!
   (= (req%vstd.atomic.impl&%3.compare_exchange. self! pre%perm! current! new!) (=>
     %%global_location_label%%12
     (= (vstd.atomic.impl&%3.id.? (Poly%vstd.atomic.PAtomicU8. self!)) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic
       (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
          (Poly%vstd.atomic.PermissionU8. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%3.compare_exchange. self! pre%perm! current! new!))
   :qid internal_req__vstd.atomic.impl&__3.compare_exchange._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__3.compare_exchange._definition
)))
(declare-fun ens%vstd.atomic.impl&%3.compare_exchange. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  vstd.atomic.PermissionU8. Int Int core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (perm!
    vstd.atomic.PermissionU8.
   ) (current! Int) (new! Int) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd.atomic.impl&%3.compare_exchange. self! pre%perm! perm! current! new! ret!)
    (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ (UINT 8) $ (UINT
        8
     )))
     (and
      (= (vstd.atomic.impl&%3.id.? (Poly%vstd.atomic.PAtomicU8. self!)) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic
        (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
           (Poly%vstd.atomic.PermissionU8. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%I (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
             (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
                pre%perm!
          ))))))
          (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
             (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
            (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
               pre%perm!
       ))))))))
       (let
        ((r$ (%I (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (not (= current! (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
              (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
                 pre%perm!
          )))))))
          (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
             (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
                perm!
            ))))
           ) (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
             (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
                pre%perm!
         )))))))
         (= r$ (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
            (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd.atomic.impl&%3.compare_exchange. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd.atomic.impl&__3.compare_exchange._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__3.compare_exchange._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU8::compare_exchange_weak
(declare-fun req%vstd.atomic.impl&%3.compare_exchange_weak. (vstd.atomic.PAtomicU8.
  vstd.atomic.PermissionU8. Int Int
 ) Bool
)
(declare-const %%global_location_label%%13 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (current!
    Int
   ) (new! Int)
  ) (!
   (= (req%vstd.atomic.impl&%3.compare_exchange_weak. self! pre%perm! current! new!)
    (=>
     %%global_location_label%%13
     (= (vstd.atomic.impl&%3.id.? (Poly%vstd.atomic.PAtomicU8. self!)) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic
       (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
          (Poly%vstd.atomic.PermissionU8. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%3.compare_exchange_weak. self! pre%perm! current!
     new!
   ))
   :qid internal_req__vstd.atomic.impl&__3.compare_exchange_weak._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__3.compare_exchange_weak._definition
)))
(declare-fun ens%vstd.atomic.impl&%3.compare_exchange_weak. (vstd.atomic.PAtomicU8.
  vstd.atomic.PermissionU8. vstd.atomic.PermissionU8. Int Int core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (perm!
    vstd.atomic.PermissionU8.
   ) (current! Int) (new! Int) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd.atomic.impl&%3.compare_exchange_weak. self! pre%perm! perm! current! new!
     ret!
    ) (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ (UINT 8) $ (UINT
        8
     )))
     (and
      (= (vstd.atomic.impl&%3.id.? (Poly%vstd.atomic.PAtomicU8. self!)) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic
        (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
           (Poly%vstd.atomic.PermissionU8. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%I (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
             (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
                pre%perm!
          ))))))
          (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
             (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
            (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
               pre%perm!
       ))))))))
       (let
        ((r$ (%I (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
            (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
               perm!
           ))))
          ) (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
            (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
               pre%perm!
         ))))))
         (= r$ (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
            (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd.atomic.impl&%3.compare_exchange_weak. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd.atomic.impl&__3.compare_exchange_weak._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__3.compare_exchange_weak._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU8::swap
(declare-fun req%vstd.atomic.impl&%3.swap. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  Int
 ) Bool
)
(declare-const %%global_location_label%%14 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (v! Int))
  (!
   (= (req%vstd.atomic.impl&%3.swap. self! pre%perm! v!) (=>
     %%global_location_label%%14
     (= (vstd.atomic.impl&%3.id.? (Poly%vstd.atomic.PAtomicU8. self!)) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic
       (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
          (Poly%vstd.atomic.PermissionU8. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%3.swap. self! pre%perm! v!))
   :qid internal_req__vstd.atomic.impl&__3.swap._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__3.swap._definition
)))
(declare-fun ens%vstd.atomic.impl&%3.swap. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  vstd.atomic.PermissionU8. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (perm!
    vstd.atomic.PermissionU8.
   ) (v! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%3.swap. self! pre%perm! perm! v! ret!) (and
     (uInv 8 ret!)
     (and
      (and
       (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
          (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
             perm!
         ))))
        ) v!
       )
       (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
          (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
             pre%perm!
         ))))
        ) ret!
      ))
      (= (vstd.atomic.impl&%3.id.? (Poly%vstd.atomic.PAtomicU8. self!)) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic
        (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
           (Poly%vstd.atomic.PermissionU8. perm!)
   ))))))))
   :pattern ((ens%vstd.atomic.impl&%3.swap. self! pre%perm! perm! v! ret!))
   :qid internal_ens__vstd.atomic.impl&__3.swap._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__3.swap._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU8::into_inner
(declare-fun req%vstd.atomic.impl&%3.into_inner. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.)
 Bool
)
(declare-const %%global_location_label%%15 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (perm! vstd.atomic.PermissionU8.)) (!
   (= (req%vstd.atomic.impl&%3.into_inner. self! perm!) (=>
     %%global_location_label%%15
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

;; Function-Axioms crate::vstd::atomic::wrapping_add_u8
(assert
 (fuel_bool_default fuel%vstd.atomic.wrapping_add_u8.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.wrapping_add_u8.)
  (forall ((a! Poly) (b! Poly)) (!
    (= (vstd.atomic.wrapping_add_u8.? a! b!) (ite
      (> (Add (%I a!) (%I b!)) 255)
      (Sub (Add (%I a!) (%I b!)) (Add (Sub 255 0) 1))
      (Add (%I a!) (%I b!))
    ))
    :pattern ((vstd.atomic.wrapping_add_u8.? a! b!))
    :qid internal_vstd.atomic.wrapping_add_u8.?_definition
    :skolemid skolem_internal_vstd.atomic.wrapping_add_u8.?_definition
))))

;; Function-Specs crate::vstd::atomic::PAtomicU8::fetch_add_wrapping
(declare-fun req%vstd.atomic.impl&%3.fetch_add_wrapping. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  Int
 ) Bool
)
(declare-const %%global_location_label%%16 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (n! Int))
  (!
   (= (req%vstd.atomic.impl&%3.fetch_add_wrapping. self! pre%perm! n!) (=>
     %%global_location_label%%16
     (= (vstd.atomic.impl&%3.id.? (Poly%vstd.atomic.PAtomicU8. self!)) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic
       (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
          (Poly%vstd.atomic.PermissionU8. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%3.fetch_add_wrapping. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__3.fetch_add_wrapping._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__3.fetch_add_wrapping._definition
)))
(declare-fun ens%vstd.atomic.impl&%3.fetch_add_wrapping. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  vstd.atomic.PermissionU8. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (perm!
    vstd.atomic.PermissionU8.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%3.fetch_add_wrapping. self! pre%perm! perm! n! ret!) (and
     (uInv 8 ret!)
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           perm!
       ))))
      ) (vstd.atomic.wrapping_add_u8.? (I (vstd.atomic.PermissionDataU8./PermissionDataU8/value
         (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
            (Poly%vstd.atomic.PermissionU8. pre%perm!)
        ))))
       ) (I n!)
   ))))
   :pattern ((ens%vstd.atomic.impl&%3.fetch_add_wrapping. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__3.fetch_add_wrapping._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__3.fetch_add_wrapping._definition
)))

;; Function-Axioms crate::vstd::atomic::wrapping_sub_u8
(assert
 (fuel_bool_default fuel%vstd.atomic.wrapping_sub_u8.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.wrapping_sub_u8.)
  (forall ((a! Poly) (b! Poly)) (!
    (= (vstd.atomic.wrapping_sub_u8.? a! b!) (ite
      (< (Sub (%I a!) (%I b!)) 0)
      (Add (Sub (%I a!) (%I b!)) (Add (Sub 255 0) 1))
      (Sub (%I a!) (%I b!))
    ))
    :pattern ((vstd.atomic.wrapping_sub_u8.? a! b!))
    :qid internal_vstd.atomic.wrapping_sub_u8.?_definition
    :skolemid skolem_internal_vstd.atomic.wrapping_sub_u8.?_definition
))))

;; Function-Specs crate::vstd::atomic::PAtomicU8::fetch_sub_wrapping
(declare-fun req%vstd.atomic.impl&%3.fetch_sub_wrapping. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  Int
 ) Bool
)
(declare-const %%global_location_label%%17 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (n! Int))
  (!
   (= (req%vstd.atomic.impl&%3.fetch_sub_wrapping. self! pre%perm! n!) (=>
     %%global_location_label%%17
     (= (vstd.atomic.impl&%3.id.? (Poly%vstd.atomic.PAtomicU8. self!)) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic
       (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
          (Poly%vstd.atomic.PermissionU8. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%3.fetch_sub_wrapping. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__3.fetch_sub_wrapping._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__3.fetch_sub_wrapping._definition
)))
(declare-fun ens%vstd.atomic.impl&%3.fetch_sub_wrapping. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  vstd.atomic.PermissionU8. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (perm!
    vstd.atomic.PermissionU8.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%3.fetch_sub_wrapping. self! pre%perm! perm! n! ret!) (and
     (uInv 8 ret!)
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           perm!
       ))))
      ) (vstd.atomic.wrapping_sub_u8.? (I (vstd.atomic.PermissionDataU8./PermissionDataU8/value
         (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
            (Poly%vstd.atomic.PermissionU8. pre%perm!)
        ))))
       ) (I n!)
   ))))
   :pattern ((ens%vstd.atomic.impl&%3.fetch_sub_wrapping. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__3.fetch_sub_wrapping._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__3.fetch_sub_wrapping._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU8::fetch_and
(declare-fun req%vstd.atomic.impl&%3.fetch_and. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  Int
 ) Bool
)
(declare-const %%global_location_label%%18 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (n! Int))
  (!
   (= (req%vstd.atomic.impl&%3.fetch_and. self! pre%perm! n!) (=>
     %%global_location_label%%18
     (= (vstd.atomic.impl&%3.id.? (Poly%vstd.atomic.PAtomicU8. self!)) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic
       (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
          (Poly%vstd.atomic.PermissionU8. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%3.fetch_and. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__3.fetch_and._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__3.fetch_and._definition
)))
(declare-fun ens%vstd.atomic.impl&%3.fetch_and. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  vstd.atomic.PermissionU8. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (perm!
    vstd.atomic.PermissionU8.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%3.fetch_and. self! pre%perm! perm! n! ret!) (and
     (uInv 8 ret!)
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           perm!
       ))))
      ) (uClip 8 (bitand (I (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
           (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%3.fetch_and. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__3.fetch_and._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__3.fetch_and._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU8::fetch_or
(declare-fun req%vstd.atomic.impl&%3.fetch_or. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  Int
 ) Bool
)
(declare-const %%global_location_label%%19 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (n! Int))
  (!
   (= (req%vstd.atomic.impl&%3.fetch_or. self! pre%perm! n!) (=>
     %%global_location_label%%19
     (= (vstd.atomic.impl&%3.id.? (Poly%vstd.atomic.PAtomicU8. self!)) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic
       (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
          (Poly%vstd.atomic.PermissionU8. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%3.fetch_or. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__3.fetch_or._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__3.fetch_or._definition
)))
(declare-fun ens%vstd.atomic.impl&%3.fetch_or. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  vstd.atomic.PermissionU8. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (perm!
    vstd.atomic.PermissionU8.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%3.fetch_or. self! pre%perm! perm! n! ret!) (and
     (uInv 8 ret!)
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           perm!
       ))))
      ) (uClip 8 (bitor (I (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
           (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%3.fetch_or. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__3.fetch_or._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__3.fetch_or._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU8::fetch_xor
(declare-fun req%vstd.atomic.impl&%3.fetch_xor. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  Int
 ) Bool
)
(declare-const %%global_location_label%%20 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (n! Int))
  (!
   (= (req%vstd.atomic.impl&%3.fetch_xor. self! pre%perm! n!) (=>
     %%global_location_label%%20
     (= (vstd.atomic.impl&%3.id.? (Poly%vstd.atomic.PAtomicU8. self!)) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic
       (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
          (Poly%vstd.atomic.PermissionU8. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%3.fetch_xor. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__3.fetch_xor._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__3.fetch_xor._definition
)))
(declare-fun ens%vstd.atomic.impl&%3.fetch_xor. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  vstd.atomic.PermissionU8. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (perm!
    vstd.atomic.PermissionU8.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%3.fetch_xor. self! pre%perm! perm! n! ret!) (and
     (uInv 8 ret!)
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           perm!
       ))))
      ) (uClip 8 (bitxor (I (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
           (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%3.fetch_xor. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__3.fetch_xor._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__3.fetch_xor._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU8::fetch_nand
(declare-fun req%vstd.atomic.impl&%3.fetch_nand. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  Int
 ) Bool
)
(declare-const %%global_location_label%%21 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (n! Int))
  (!
   (= (req%vstd.atomic.impl&%3.fetch_nand. self! pre%perm! n!) (=>
     %%global_location_label%%21
     (= (vstd.atomic.impl&%3.id.? (Poly%vstd.atomic.PAtomicU8. self!)) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic
       (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
          (Poly%vstd.atomic.PermissionU8. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%3.fetch_nand. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__3.fetch_nand._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__3.fetch_nand._definition
)))
(declare-fun ens%vstd.atomic.impl&%3.fetch_nand. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  vstd.atomic.PermissionU8. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (perm!
    vstd.atomic.PermissionU8.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%3.fetch_nand. self! pre%perm! perm! n! ret!) (and
     (uInv 8 ret!)
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           perm!
       ))))
      ) (uClip 8 (bitnot (I (uClip 8 (bitand (I (vstd.atomic.PermissionDataU8./PermissionDataU8/value
             (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
                (Poly%vstd.atomic.PermissionU8. pre%perm!)
            ))))
           ) (I n!)
   ))))))))
   :pattern ((ens%vstd.atomic.impl&%3.fetch_nand. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__3.fetch_nand._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__3.fetch_nand._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU8::fetch_max
(declare-fun req%vstd.atomic.impl&%3.fetch_max. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  Int
 ) Bool
)
(declare-const %%global_location_label%%22 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (n! Int))
  (!
   (= (req%vstd.atomic.impl&%3.fetch_max. self! pre%perm! n!) (=>
     %%global_location_label%%22
     (= (vstd.atomic.impl&%3.id.? (Poly%vstd.atomic.PAtomicU8. self!)) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic
       (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
          (Poly%vstd.atomic.PermissionU8. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%3.fetch_max. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__3.fetch_max._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__3.fetch_max._definition
)))
(declare-fun ens%vstd.atomic.impl&%3.fetch_max. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  vstd.atomic.PermissionU8. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (perm!
    vstd.atomic.PermissionU8.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%3.fetch_max. self! pre%perm! perm! n! ret!) (and
     (uInv 8 ret!)
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           perm!
       ))))
      ) (ite
       (> (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
          (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
             pre%perm!
         ))))
        ) n!
       )
       (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
         (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%3.fetch_max. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__3.fetch_max._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__3.fetch_max._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU8::fetch_min
(declare-fun req%vstd.atomic.impl&%3.fetch_min. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  Int
 ) Bool
)
(declare-const %%global_location_label%%23 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (n! Int))
  (!
   (= (req%vstd.atomic.impl&%3.fetch_min. self! pre%perm! n!) (=>
     %%global_location_label%%23
     (= (vstd.atomic.impl&%3.id.? (Poly%vstd.atomic.PAtomicU8. self!)) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic
       (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
          (Poly%vstd.atomic.PermissionU8. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%3.fetch_min. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__3.fetch_min._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__3.fetch_min._definition
)))
(declare-fun ens%vstd.atomic.impl&%3.fetch_min. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  vstd.atomic.PermissionU8. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (perm!
    vstd.atomic.PermissionU8.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%3.fetch_min. self! pre%perm! perm! n! ret!) (and
     (uInv 8 ret!)
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           perm!
       ))))
      ) (ite
       (< (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
          (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
             pre%perm!
         ))))
        ) n!
       )
       (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
         (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%3.fetch_min. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__3.fetch_min._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__3.fetch_min._definition
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
(declare-const %%global_location_label%%24 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (perm! vstd.atomic.PermissionU16.)) (!
   (= (req%vstd.atomic.impl&%5.load. self! perm!) (=>
     %%global_location_label%%24
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

;; Function-Specs crate::vstd::atomic::PAtomicU16::store
(declare-fun req%vstd.atomic.impl&%5.store. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  Int
 ) Bool
)
(declare-const %%global_location_label%%25 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (v!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%5.store. self! pre%perm! v!) (=>
     %%global_location_label%%25
     (= (vstd.atomic.impl&%5.id.? (Poly%vstd.atomic.PAtomicU16. self!)) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic
       (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
          (Poly%vstd.atomic.PermissionU16. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%5.store. self! pre%perm! v!))
   :qid internal_req__vstd.atomic.impl&__5.store._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__5.store._definition
)))
(declare-fun ens%vstd.atomic.impl&%5.store. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  vstd.atomic.PermissionU16. Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (perm!
    vstd.atomic.PermissionU16.
   ) (v! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%5.store. self! pre%perm! perm! v!) (and
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           perm!
       ))))
      ) v!
     )
     (= (vstd.atomic.impl&%5.id.? (Poly%vstd.atomic.PAtomicU16. self!)) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic
       (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
          (Poly%vstd.atomic.PermissionU16. perm!)
   )))))))
   :pattern ((ens%vstd.atomic.impl&%5.store. self! pre%perm! perm! v!))
   :qid internal_ens__vstd.atomic.impl&__5.store._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__5.store._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU16::compare_exchange
(declare-fun req%vstd.atomic.impl&%5.compare_exchange. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  Int Int
 ) Bool
)
(declare-const %%global_location_label%%26 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (current!
    Int
   ) (new! Int)
  ) (!
   (= (req%vstd.atomic.impl&%5.compare_exchange. self! pre%perm! current! new!) (=>
     %%global_location_label%%26
     (= (vstd.atomic.impl&%5.id.? (Poly%vstd.atomic.PAtomicU16. self!)) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic
       (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
          (Poly%vstd.atomic.PermissionU16. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%5.compare_exchange. self! pre%perm! current! new!))
   :qid internal_req__vstd.atomic.impl&__5.compare_exchange._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__5.compare_exchange._definition
)))
(declare-fun ens%vstd.atomic.impl&%5.compare_exchange. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  vstd.atomic.PermissionU16. Int Int core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (perm!
    vstd.atomic.PermissionU16.
   ) (current! Int) (new! Int) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd.atomic.impl&%5.compare_exchange. self! pre%perm! perm! current! new! ret!)
    (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ (UINT 16) $ (
        UINT 16
     )))
     (and
      (= (vstd.atomic.impl&%5.id.? (Poly%vstd.atomic.PAtomicU16. self!)) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic
        (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
           (Poly%vstd.atomic.PermissionU16. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%I (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
             (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
                pre%perm!
          ))))))
          (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
             (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
            (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
               pre%perm!
       ))))))))
       (let
        ((r$ (%I (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (not (= current! (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
              (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
                 pre%perm!
          )))))))
          (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
             (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
                perm!
            ))))
           ) (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
             (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
                pre%perm!
         )))))))
         (= r$ (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
            (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd.atomic.impl&%5.compare_exchange. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd.atomic.impl&__5.compare_exchange._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__5.compare_exchange._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU16::compare_exchange_weak
(declare-fun req%vstd.atomic.impl&%5.compare_exchange_weak. (vstd.atomic.PAtomicU16.
  vstd.atomic.PermissionU16. Int Int
 ) Bool
)
(declare-const %%global_location_label%%27 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (current!
    Int
   ) (new! Int)
  ) (!
   (= (req%vstd.atomic.impl&%5.compare_exchange_weak. self! pre%perm! current! new!)
    (=>
     %%global_location_label%%27
     (= (vstd.atomic.impl&%5.id.? (Poly%vstd.atomic.PAtomicU16. self!)) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic
       (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
          (Poly%vstd.atomic.PermissionU16. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%5.compare_exchange_weak. self! pre%perm! current!
     new!
   ))
   :qid internal_req__vstd.atomic.impl&__5.compare_exchange_weak._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__5.compare_exchange_weak._definition
)))
(declare-fun ens%vstd.atomic.impl&%5.compare_exchange_weak. (vstd.atomic.PAtomicU16.
  vstd.atomic.PermissionU16. vstd.atomic.PermissionU16. Int Int core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (perm!
    vstd.atomic.PermissionU16.
   ) (current! Int) (new! Int) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd.atomic.impl&%5.compare_exchange_weak. self! pre%perm! perm! current! new!
     ret!
    ) (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ (UINT 16) $ (
        UINT 16
     )))
     (and
      (= (vstd.atomic.impl&%5.id.? (Poly%vstd.atomic.PAtomicU16. self!)) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic
        (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
           (Poly%vstd.atomic.PermissionU16. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%I (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
             (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
                pre%perm!
          ))))))
          (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
             (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
            (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
               pre%perm!
       ))))))))
       (let
        ((r$ (%I (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
            (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
               perm!
           ))))
          ) (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
            (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
               pre%perm!
         ))))))
         (= r$ (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
            (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd.atomic.impl&%5.compare_exchange_weak. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd.atomic.impl&__5.compare_exchange_weak._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__5.compare_exchange_weak._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU16::swap
(declare-fun req%vstd.atomic.impl&%5.swap. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  Int
 ) Bool
)
(declare-const %%global_location_label%%28 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (v!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%5.swap. self! pre%perm! v!) (=>
     %%global_location_label%%28
     (= (vstd.atomic.impl&%5.id.? (Poly%vstd.atomic.PAtomicU16. self!)) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic
       (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
          (Poly%vstd.atomic.PermissionU16. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%5.swap. self! pre%perm! v!))
   :qid internal_req__vstd.atomic.impl&__5.swap._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__5.swap._definition
)))
(declare-fun ens%vstd.atomic.impl&%5.swap. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  vstd.atomic.PermissionU16. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (perm!
    vstd.atomic.PermissionU16.
   ) (v! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%5.swap. self! pre%perm! perm! v! ret!) (and
     (uInv 16 ret!)
     (and
      (and
       (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
          (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
             perm!
         ))))
        ) v!
       )
       (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
          (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
             pre%perm!
         ))))
        ) ret!
      ))
      (= (vstd.atomic.impl&%5.id.? (Poly%vstd.atomic.PAtomicU16. self!)) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic
        (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
           (Poly%vstd.atomic.PermissionU16. perm!)
   ))))))))
   :pattern ((ens%vstd.atomic.impl&%5.swap. self! pre%perm! perm! v! ret!))
   :qid internal_ens__vstd.atomic.impl&__5.swap._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__5.swap._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU16::into_inner
(declare-fun req%vstd.atomic.impl&%5.into_inner. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.)
 Bool
)
(declare-const %%global_location_label%%29 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (perm! vstd.atomic.PermissionU16.)) (!
   (= (req%vstd.atomic.impl&%5.into_inner. self! perm!) (=>
     %%global_location_label%%29
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

;; Function-Axioms crate::vstd::atomic::wrapping_add_u16
(assert
 (fuel_bool_default fuel%vstd.atomic.wrapping_add_u16.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.wrapping_add_u16.)
  (forall ((a! Poly) (b! Poly)) (!
    (= (vstd.atomic.wrapping_add_u16.? a! b!) (ite
      (> (Add (%I a!) (%I b!)) 65535)
      (Sub (Add (%I a!) (%I b!)) (Add (Sub 65535 0) 1))
      (Add (%I a!) (%I b!))
    ))
    :pattern ((vstd.atomic.wrapping_add_u16.? a! b!))
    :qid internal_vstd.atomic.wrapping_add_u16.?_definition
    :skolemid skolem_internal_vstd.atomic.wrapping_add_u16.?_definition
))))

;; Function-Specs crate::vstd::atomic::PAtomicU16::fetch_add_wrapping
(declare-fun req%vstd.atomic.impl&%5.fetch_add_wrapping. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  Int
 ) Bool
)
(declare-const %%global_location_label%%30 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%5.fetch_add_wrapping. self! pre%perm! n!) (=>
     %%global_location_label%%30
     (= (vstd.atomic.impl&%5.id.? (Poly%vstd.atomic.PAtomicU16. self!)) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic
       (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
          (Poly%vstd.atomic.PermissionU16. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%5.fetch_add_wrapping. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__5.fetch_add_wrapping._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__5.fetch_add_wrapping._definition
)))
(declare-fun ens%vstd.atomic.impl&%5.fetch_add_wrapping. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  vstd.atomic.PermissionU16. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (perm!
    vstd.atomic.PermissionU16.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%5.fetch_add_wrapping. self! pre%perm! perm! n! ret!) (and
     (uInv 16 ret!)
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           perm!
       ))))
      ) (vstd.atomic.wrapping_add_u16.? (I (vstd.atomic.PermissionDataU16./PermissionDataU16/value
         (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
            (Poly%vstd.atomic.PermissionU16. pre%perm!)
        ))))
       ) (I n!)
   ))))
   :pattern ((ens%vstd.atomic.impl&%5.fetch_add_wrapping. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__5.fetch_add_wrapping._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__5.fetch_add_wrapping._definition
)))

;; Function-Axioms crate::vstd::atomic::wrapping_sub_u16
(assert
 (fuel_bool_default fuel%vstd.atomic.wrapping_sub_u16.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.wrapping_sub_u16.)
  (forall ((a! Poly) (b! Poly)) (!
    (= (vstd.atomic.wrapping_sub_u16.? a! b!) (ite
      (< (Sub (%I a!) (%I b!)) 0)
      (Add (Sub (%I a!) (%I b!)) (Add (Sub 65535 0) 1))
      (Sub (%I a!) (%I b!))
    ))
    :pattern ((vstd.atomic.wrapping_sub_u16.? a! b!))
    :qid internal_vstd.atomic.wrapping_sub_u16.?_definition
    :skolemid skolem_internal_vstd.atomic.wrapping_sub_u16.?_definition
))))

;; Function-Specs crate::vstd::atomic::PAtomicU16::fetch_sub_wrapping
(declare-fun req%vstd.atomic.impl&%5.fetch_sub_wrapping. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  Int
 ) Bool
)
(declare-const %%global_location_label%%31 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%5.fetch_sub_wrapping. self! pre%perm! n!) (=>
     %%global_location_label%%31
     (= (vstd.atomic.impl&%5.id.? (Poly%vstd.atomic.PAtomicU16. self!)) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic
       (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
          (Poly%vstd.atomic.PermissionU16. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%5.fetch_sub_wrapping. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__5.fetch_sub_wrapping._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__5.fetch_sub_wrapping._definition
)))
(declare-fun ens%vstd.atomic.impl&%5.fetch_sub_wrapping. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  vstd.atomic.PermissionU16. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (perm!
    vstd.atomic.PermissionU16.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%5.fetch_sub_wrapping. self! pre%perm! perm! n! ret!) (and
     (uInv 16 ret!)
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           perm!
       ))))
      ) (vstd.atomic.wrapping_sub_u16.? (I (vstd.atomic.PermissionDataU16./PermissionDataU16/value
         (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
            (Poly%vstd.atomic.PermissionU16. pre%perm!)
        ))))
       ) (I n!)
   ))))
   :pattern ((ens%vstd.atomic.impl&%5.fetch_sub_wrapping. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__5.fetch_sub_wrapping._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__5.fetch_sub_wrapping._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU16::fetch_and
(declare-fun req%vstd.atomic.impl&%5.fetch_and. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  Int
 ) Bool
)
(declare-const %%global_location_label%%32 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%5.fetch_and. self! pre%perm! n!) (=>
     %%global_location_label%%32
     (= (vstd.atomic.impl&%5.id.? (Poly%vstd.atomic.PAtomicU16. self!)) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic
       (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
          (Poly%vstd.atomic.PermissionU16. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%5.fetch_and. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__5.fetch_and._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__5.fetch_and._definition
)))
(declare-fun ens%vstd.atomic.impl&%5.fetch_and. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  vstd.atomic.PermissionU16. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (perm!
    vstd.atomic.PermissionU16.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%5.fetch_and. self! pre%perm! perm! n! ret!) (and
     (uInv 16 ret!)
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           perm!
       ))))
      ) (uClip 16 (bitand (I (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
           (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%5.fetch_and. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__5.fetch_and._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__5.fetch_and._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU16::fetch_or
(declare-fun req%vstd.atomic.impl&%5.fetch_or. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  Int
 ) Bool
)
(declare-const %%global_location_label%%33 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%5.fetch_or. self! pre%perm! n!) (=>
     %%global_location_label%%33
     (= (vstd.atomic.impl&%5.id.? (Poly%vstd.atomic.PAtomicU16. self!)) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic
       (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
          (Poly%vstd.atomic.PermissionU16. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%5.fetch_or. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__5.fetch_or._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__5.fetch_or._definition
)))
(declare-fun ens%vstd.atomic.impl&%5.fetch_or. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  vstd.atomic.PermissionU16. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (perm!
    vstd.atomic.PermissionU16.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%5.fetch_or. self! pre%perm! perm! n! ret!) (and
     (uInv 16 ret!)
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           perm!
       ))))
      ) (uClip 16 (bitor (I (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
           (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%5.fetch_or. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__5.fetch_or._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__5.fetch_or._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU16::fetch_xor
(declare-fun req%vstd.atomic.impl&%5.fetch_xor. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  Int
 ) Bool
)
(declare-const %%global_location_label%%34 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%5.fetch_xor. self! pre%perm! n!) (=>
     %%global_location_label%%34
     (= (vstd.atomic.impl&%5.id.? (Poly%vstd.atomic.PAtomicU16. self!)) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic
       (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
          (Poly%vstd.atomic.PermissionU16. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%5.fetch_xor. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__5.fetch_xor._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__5.fetch_xor._definition
)))
(declare-fun ens%vstd.atomic.impl&%5.fetch_xor. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  vstd.atomic.PermissionU16. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (perm!
    vstd.atomic.PermissionU16.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%5.fetch_xor. self! pre%perm! perm! n! ret!) (and
     (uInv 16 ret!)
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           perm!
       ))))
      ) (uClip 16 (bitxor (I (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
           (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%5.fetch_xor. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__5.fetch_xor._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__5.fetch_xor._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU16::fetch_nand
(declare-fun req%vstd.atomic.impl&%5.fetch_nand. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  Int
 ) Bool
)
(declare-const %%global_location_label%%35 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%5.fetch_nand. self! pre%perm! n!) (=>
     %%global_location_label%%35
     (= (vstd.atomic.impl&%5.id.? (Poly%vstd.atomic.PAtomicU16. self!)) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic
       (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
          (Poly%vstd.atomic.PermissionU16. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%5.fetch_nand. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__5.fetch_nand._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__5.fetch_nand._definition
)))
(declare-fun ens%vstd.atomic.impl&%5.fetch_nand. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  vstd.atomic.PermissionU16. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (perm!
    vstd.atomic.PermissionU16.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%5.fetch_nand. self! pre%perm! perm! n! ret!) (and
     (uInv 16 ret!)
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           perm!
       ))))
      ) (uClip 16 (bitnot (I (uClip 16 (bitand (I (vstd.atomic.PermissionDataU16./PermissionDataU16/value
             (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
                (Poly%vstd.atomic.PermissionU16. pre%perm!)
            ))))
           ) (I n!)
   ))))))))
   :pattern ((ens%vstd.atomic.impl&%5.fetch_nand. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__5.fetch_nand._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__5.fetch_nand._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU16::fetch_max
(declare-fun req%vstd.atomic.impl&%5.fetch_max. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  Int
 ) Bool
)
(declare-const %%global_location_label%%36 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%5.fetch_max. self! pre%perm! n!) (=>
     %%global_location_label%%36
     (= (vstd.atomic.impl&%5.id.? (Poly%vstd.atomic.PAtomicU16. self!)) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic
       (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
          (Poly%vstd.atomic.PermissionU16. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%5.fetch_max. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__5.fetch_max._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__5.fetch_max._definition
)))
(declare-fun ens%vstd.atomic.impl&%5.fetch_max. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  vstd.atomic.PermissionU16. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (perm!
    vstd.atomic.PermissionU16.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%5.fetch_max. self! pre%perm! perm! n! ret!) (and
     (uInv 16 ret!)
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           perm!
       ))))
      ) (ite
       (> (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
          (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
             pre%perm!
         ))))
        ) n!
       )
       (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
         (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%5.fetch_max. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__5.fetch_max._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__5.fetch_max._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU16::fetch_min
(declare-fun req%vstd.atomic.impl&%5.fetch_min. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  Int
 ) Bool
)
(declare-const %%global_location_label%%37 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%5.fetch_min. self! pre%perm! n!) (=>
     %%global_location_label%%37
     (= (vstd.atomic.impl&%5.id.? (Poly%vstd.atomic.PAtomicU16. self!)) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic
       (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
          (Poly%vstd.atomic.PermissionU16. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%5.fetch_min. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__5.fetch_min._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__5.fetch_min._definition
)))
(declare-fun ens%vstd.atomic.impl&%5.fetch_min. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  vstd.atomic.PermissionU16. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (perm!
    vstd.atomic.PermissionU16.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%5.fetch_min. self! pre%perm! perm! n! ret!) (and
     (uInv 16 ret!)
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           perm!
       ))))
      ) (ite
       (< (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
          (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
             pre%perm!
         ))))
        ) n!
       )
       (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
         (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%5.fetch_min. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__5.fetch_min._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__5.fetch_min._definition
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
(declare-const %%global_location_label%%38 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (perm! vstd.atomic.PermissionU32.)) (!
   (= (req%vstd.atomic.impl&%7.load. self! perm!) (=>
     %%global_location_label%%38
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

;; Function-Specs crate::vstd::atomic::PAtomicU32::store
(declare-fun req%vstd.atomic.impl&%7.store. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  Int
 ) Bool
)
(declare-const %%global_location_label%%39 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (v!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%7.store. self! pre%perm! v!) (=>
     %%global_location_label%%39
     (= (vstd.atomic.impl&%7.id.? (Poly%vstd.atomic.PAtomicU32. self!)) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic
       (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
          (Poly%vstd.atomic.PermissionU32. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%7.store. self! pre%perm! v!))
   :qid internal_req__vstd.atomic.impl&__7.store._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__7.store._definition
)))
(declare-fun ens%vstd.atomic.impl&%7.store. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  vstd.atomic.PermissionU32. Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (perm!
    vstd.atomic.PermissionU32.
   ) (v! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%7.store. self! pre%perm! perm! v!) (and
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           perm!
       ))))
      ) v!
     )
     (= (vstd.atomic.impl&%7.id.? (Poly%vstd.atomic.PAtomicU32. self!)) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic
       (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
          (Poly%vstd.atomic.PermissionU32. perm!)
   )))))))
   :pattern ((ens%vstd.atomic.impl&%7.store. self! pre%perm! perm! v!))
   :qid internal_ens__vstd.atomic.impl&__7.store._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__7.store._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU32::compare_exchange
(declare-fun req%vstd.atomic.impl&%7.compare_exchange. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  Int Int
 ) Bool
)
(declare-const %%global_location_label%%40 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (current!
    Int
   ) (new! Int)
  ) (!
   (= (req%vstd.atomic.impl&%7.compare_exchange. self! pre%perm! current! new!) (=>
     %%global_location_label%%40
     (= (vstd.atomic.impl&%7.id.? (Poly%vstd.atomic.PAtomicU32. self!)) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic
       (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
          (Poly%vstd.atomic.PermissionU32. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%7.compare_exchange. self! pre%perm! current! new!))
   :qid internal_req__vstd.atomic.impl&__7.compare_exchange._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__7.compare_exchange._definition
)))
(declare-fun ens%vstd.atomic.impl&%7.compare_exchange. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  vstd.atomic.PermissionU32. Int Int core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (perm!
    vstd.atomic.PermissionU32.
   ) (current! Int) (new! Int) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd.atomic.impl&%7.compare_exchange. self! pre%perm! perm! current! new! ret!)
    (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ (UINT 32) $ (
        UINT 32
     )))
     (and
      (= (vstd.atomic.impl&%7.id.? (Poly%vstd.atomic.PAtomicU32. self!)) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic
        (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
           (Poly%vstd.atomic.PermissionU32. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%I (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
             (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
                pre%perm!
          ))))))
          (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
             (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
            (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
               pre%perm!
       ))))))))
       (let
        ((r$ (%I (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (not (= current! (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
              (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
                 pre%perm!
          )))))))
          (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
             (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
                perm!
            ))))
           ) (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
             (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
                pre%perm!
         )))))))
         (= r$ (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
            (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd.atomic.impl&%7.compare_exchange. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd.atomic.impl&__7.compare_exchange._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__7.compare_exchange._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU32::compare_exchange_weak
(declare-fun req%vstd.atomic.impl&%7.compare_exchange_weak. (vstd.atomic.PAtomicU32.
  vstd.atomic.PermissionU32. Int Int
 ) Bool
)
(declare-const %%global_location_label%%41 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (current!
    Int
   ) (new! Int)
  ) (!
   (= (req%vstd.atomic.impl&%7.compare_exchange_weak. self! pre%perm! current! new!)
    (=>
     %%global_location_label%%41
     (= (vstd.atomic.impl&%7.id.? (Poly%vstd.atomic.PAtomicU32. self!)) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic
       (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
          (Poly%vstd.atomic.PermissionU32. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%7.compare_exchange_weak. self! pre%perm! current!
     new!
   ))
   :qid internal_req__vstd.atomic.impl&__7.compare_exchange_weak._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__7.compare_exchange_weak._definition
)))
(declare-fun ens%vstd.atomic.impl&%7.compare_exchange_weak. (vstd.atomic.PAtomicU32.
  vstd.atomic.PermissionU32. vstd.atomic.PermissionU32. Int Int core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (perm!
    vstd.atomic.PermissionU32.
   ) (current! Int) (new! Int) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd.atomic.impl&%7.compare_exchange_weak. self! pre%perm! perm! current! new!
     ret!
    ) (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ (UINT 32) $ (
        UINT 32
     )))
     (and
      (= (vstd.atomic.impl&%7.id.? (Poly%vstd.atomic.PAtomicU32. self!)) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic
        (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
           (Poly%vstd.atomic.PermissionU32. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%I (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
             (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
                pre%perm!
          ))))))
          (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
             (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
            (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
               pre%perm!
       ))))))))
       (let
        ((r$ (%I (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
            (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
               perm!
           ))))
          ) (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
            (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
               pre%perm!
         ))))))
         (= r$ (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
            (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd.atomic.impl&%7.compare_exchange_weak. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd.atomic.impl&__7.compare_exchange_weak._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__7.compare_exchange_weak._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU32::swap
(declare-fun req%vstd.atomic.impl&%7.swap. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  Int
 ) Bool
)
(declare-const %%global_location_label%%42 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (v!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%7.swap. self! pre%perm! v!) (=>
     %%global_location_label%%42
     (= (vstd.atomic.impl&%7.id.? (Poly%vstd.atomic.PAtomicU32. self!)) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic
       (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
          (Poly%vstd.atomic.PermissionU32. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%7.swap. self! pre%perm! v!))
   :qid internal_req__vstd.atomic.impl&__7.swap._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__7.swap._definition
)))
(declare-fun ens%vstd.atomic.impl&%7.swap. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  vstd.atomic.PermissionU32. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (perm!
    vstd.atomic.PermissionU32.
   ) (v! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%7.swap. self! pre%perm! perm! v! ret!) (and
     (uInv 32 ret!)
     (and
      (and
       (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
          (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
             perm!
         ))))
        ) v!
       )
       (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
          (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
             pre%perm!
         ))))
        ) ret!
      ))
      (= (vstd.atomic.impl&%7.id.? (Poly%vstd.atomic.PAtomicU32. self!)) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic
        (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
           (Poly%vstd.atomic.PermissionU32. perm!)
   ))))))))
   :pattern ((ens%vstd.atomic.impl&%7.swap. self! pre%perm! perm! v! ret!))
   :qid internal_ens__vstd.atomic.impl&__7.swap._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__7.swap._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU32::into_inner
(declare-fun req%vstd.atomic.impl&%7.into_inner. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.)
 Bool
)
(declare-const %%global_location_label%%43 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (perm! vstd.atomic.PermissionU32.)) (!
   (= (req%vstd.atomic.impl&%7.into_inner. self! perm!) (=>
     %%global_location_label%%43
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

;; Function-Axioms crate::vstd::atomic::wrapping_add_u32
(assert
 (fuel_bool_default fuel%vstd.atomic.wrapping_add_u32.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.wrapping_add_u32.)
  (forall ((a! Poly) (b! Poly)) (!
    (= (vstd.atomic.wrapping_add_u32.? a! b!) (ite
      (> (Add (%I a!) (%I b!)) 4294967295)
      (Sub (Add (%I a!) (%I b!)) (Add (Sub 4294967295 0) 1))
      (Add (%I a!) (%I b!))
    ))
    :pattern ((vstd.atomic.wrapping_add_u32.? a! b!))
    :qid internal_vstd.atomic.wrapping_add_u32.?_definition
    :skolemid skolem_internal_vstd.atomic.wrapping_add_u32.?_definition
))))

;; Function-Specs crate::vstd::atomic::PAtomicU32::fetch_add_wrapping
(declare-fun req%vstd.atomic.impl&%7.fetch_add_wrapping. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  Int
 ) Bool
)
(declare-const %%global_location_label%%44 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%7.fetch_add_wrapping. self! pre%perm! n!) (=>
     %%global_location_label%%44
     (= (vstd.atomic.impl&%7.id.? (Poly%vstd.atomic.PAtomicU32. self!)) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic
       (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
          (Poly%vstd.atomic.PermissionU32. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%7.fetch_add_wrapping. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__7.fetch_add_wrapping._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__7.fetch_add_wrapping._definition
)))
(declare-fun ens%vstd.atomic.impl&%7.fetch_add_wrapping. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  vstd.atomic.PermissionU32. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (perm!
    vstd.atomic.PermissionU32.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%7.fetch_add_wrapping. self! pre%perm! perm! n! ret!) (and
     (uInv 32 ret!)
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           perm!
       ))))
      ) (vstd.atomic.wrapping_add_u32.? (I (vstd.atomic.PermissionDataU32./PermissionDataU32/value
         (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
            (Poly%vstd.atomic.PermissionU32. pre%perm!)
        ))))
       ) (I n!)
   ))))
   :pattern ((ens%vstd.atomic.impl&%7.fetch_add_wrapping. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__7.fetch_add_wrapping._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__7.fetch_add_wrapping._definition
)))

;; Function-Axioms crate::vstd::atomic::wrapping_sub_u32
(assert
 (fuel_bool_default fuel%vstd.atomic.wrapping_sub_u32.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.wrapping_sub_u32.)
  (forall ((a! Poly) (b! Poly)) (!
    (= (vstd.atomic.wrapping_sub_u32.? a! b!) (ite
      (< (Sub (%I a!) (%I b!)) 0)
      (Add (Sub (%I a!) (%I b!)) (Add (Sub 4294967295 0) 1))
      (Sub (%I a!) (%I b!))
    ))
    :pattern ((vstd.atomic.wrapping_sub_u32.? a! b!))
    :qid internal_vstd.atomic.wrapping_sub_u32.?_definition
    :skolemid skolem_internal_vstd.atomic.wrapping_sub_u32.?_definition
))))

;; Function-Specs crate::vstd::atomic::PAtomicU32::fetch_sub_wrapping
(declare-fun req%vstd.atomic.impl&%7.fetch_sub_wrapping. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  Int
 ) Bool
)
(declare-const %%global_location_label%%45 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%7.fetch_sub_wrapping. self! pre%perm! n!) (=>
     %%global_location_label%%45
     (= (vstd.atomic.impl&%7.id.? (Poly%vstd.atomic.PAtomicU32. self!)) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic
       (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
          (Poly%vstd.atomic.PermissionU32. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%7.fetch_sub_wrapping. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__7.fetch_sub_wrapping._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__7.fetch_sub_wrapping._definition
)))
(declare-fun ens%vstd.atomic.impl&%7.fetch_sub_wrapping. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  vstd.atomic.PermissionU32. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (perm!
    vstd.atomic.PermissionU32.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%7.fetch_sub_wrapping. self! pre%perm! perm! n! ret!) (and
     (uInv 32 ret!)
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           perm!
       ))))
      ) (vstd.atomic.wrapping_sub_u32.? (I (vstd.atomic.PermissionDataU32./PermissionDataU32/value
         (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
            (Poly%vstd.atomic.PermissionU32. pre%perm!)
        ))))
       ) (I n!)
   ))))
   :pattern ((ens%vstd.atomic.impl&%7.fetch_sub_wrapping. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__7.fetch_sub_wrapping._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__7.fetch_sub_wrapping._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU32::fetch_and
(declare-fun req%vstd.atomic.impl&%7.fetch_and. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  Int
 ) Bool
)
(declare-const %%global_location_label%%46 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%7.fetch_and. self! pre%perm! n!) (=>
     %%global_location_label%%46
     (= (vstd.atomic.impl&%7.id.? (Poly%vstd.atomic.PAtomicU32. self!)) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic
       (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
          (Poly%vstd.atomic.PermissionU32. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%7.fetch_and. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__7.fetch_and._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__7.fetch_and._definition
)))
(declare-fun ens%vstd.atomic.impl&%7.fetch_and. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  vstd.atomic.PermissionU32. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (perm!
    vstd.atomic.PermissionU32.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%7.fetch_and. self! pre%perm! perm! n! ret!) (and
     (uInv 32 ret!)
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           perm!
       ))))
      ) (uClip 32 (bitand (I (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
           (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%7.fetch_and. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__7.fetch_and._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__7.fetch_and._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU32::fetch_or
(declare-fun req%vstd.atomic.impl&%7.fetch_or. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  Int
 ) Bool
)
(declare-const %%global_location_label%%47 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%7.fetch_or. self! pre%perm! n!) (=>
     %%global_location_label%%47
     (= (vstd.atomic.impl&%7.id.? (Poly%vstd.atomic.PAtomicU32. self!)) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic
       (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
          (Poly%vstd.atomic.PermissionU32. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%7.fetch_or. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__7.fetch_or._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__7.fetch_or._definition
)))
(declare-fun ens%vstd.atomic.impl&%7.fetch_or. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  vstd.atomic.PermissionU32. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (perm!
    vstd.atomic.PermissionU32.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%7.fetch_or. self! pre%perm! perm! n! ret!) (and
     (uInv 32 ret!)
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           perm!
       ))))
      ) (uClip 32 (bitor (I (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
           (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%7.fetch_or. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__7.fetch_or._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__7.fetch_or._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU32::fetch_xor
(declare-fun req%vstd.atomic.impl&%7.fetch_xor. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  Int
 ) Bool
)
(declare-const %%global_location_label%%48 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%7.fetch_xor. self! pre%perm! n!) (=>
     %%global_location_label%%48
     (= (vstd.atomic.impl&%7.id.? (Poly%vstd.atomic.PAtomicU32. self!)) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic
       (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
          (Poly%vstd.atomic.PermissionU32. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%7.fetch_xor. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__7.fetch_xor._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__7.fetch_xor._definition
)))
(declare-fun ens%vstd.atomic.impl&%7.fetch_xor. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  vstd.atomic.PermissionU32. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (perm!
    vstd.atomic.PermissionU32.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%7.fetch_xor. self! pre%perm! perm! n! ret!) (and
     (uInv 32 ret!)
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           perm!
       ))))
      ) (uClip 32 (bitxor (I (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
           (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%7.fetch_xor. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__7.fetch_xor._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__7.fetch_xor._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU32::fetch_nand
(declare-fun req%vstd.atomic.impl&%7.fetch_nand. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  Int
 ) Bool
)
(declare-const %%global_location_label%%49 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%7.fetch_nand. self! pre%perm! n!) (=>
     %%global_location_label%%49
     (= (vstd.atomic.impl&%7.id.? (Poly%vstd.atomic.PAtomicU32. self!)) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic
       (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
          (Poly%vstd.atomic.PermissionU32. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%7.fetch_nand. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__7.fetch_nand._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__7.fetch_nand._definition
)))
(declare-fun ens%vstd.atomic.impl&%7.fetch_nand. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  vstd.atomic.PermissionU32. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (perm!
    vstd.atomic.PermissionU32.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%7.fetch_nand. self! pre%perm! perm! n! ret!) (and
     (uInv 32 ret!)
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           perm!
       ))))
      ) (uClip 32 (bitnot (I (uClip 32 (bitand (I (vstd.atomic.PermissionDataU32./PermissionDataU32/value
             (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
                (Poly%vstd.atomic.PermissionU32. pre%perm!)
            ))))
           ) (I n!)
   ))))))))
   :pattern ((ens%vstd.atomic.impl&%7.fetch_nand. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__7.fetch_nand._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__7.fetch_nand._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU32::fetch_max
(declare-fun req%vstd.atomic.impl&%7.fetch_max. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  Int
 ) Bool
)
(declare-const %%global_location_label%%50 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%7.fetch_max. self! pre%perm! n!) (=>
     %%global_location_label%%50
     (= (vstd.atomic.impl&%7.id.? (Poly%vstd.atomic.PAtomicU32. self!)) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic
       (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
          (Poly%vstd.atomic.PermissionU32. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%7.fetch_max. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__7.fetch_max._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__7.fetch_max._definition
)))
(declare-fun ens%vstd.atomic.impl&%7.fetch_max. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  vstd.atomic.PermissionU32. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (perm!
    vstd.atomic.PermissionU32.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%7.fetch_max. self! pre%perm! perm! n! ret!) (and
     (uInv 32 ret!)
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           perm!
       ))))
      ) (ite
       (> (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
          (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
             pre%perm!
         ))))
        ) n!
       )
       (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
         (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%7.fetch_max. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__7.fetch_max._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__7.fetch_max._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU32::fetch_min
(declare-fun req%vstd.atomic.impl&%7.fetch_min. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  Int
 ) Bool
)
(declare-const %%global_location_label%%51 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%7.fetch_min. self! pre%perm! n!) (=>
     %%global_location_label%%51
     (= (vstd.atomic.impl&%7.id.? (Poly%vstd.atomic.PAtomicU32. self!)) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic
       (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
          (Poly%vstd.atomic.PermissionU32. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%7.fetch_min. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__7.fetch_min._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__7.fetch_min._definition
)))
(declare-fun ens%vstd.atomic.impl&%7.fetch_min. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  vstd.atomic.PermissionU32. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (perm!
    vstd.atomic.PermissionU32.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%7.fetch_min. self! pre%perm! perm! n! ret!) (and
     (uInv 32 ret!)
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           perm!
       ))))
      ) (ite
       (< (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
          (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
             pre%perm!
         ))))
        ) n!
       )
       (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
         (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%7.fetch_min. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__7.fetch_min._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__7.fetch_min._definition
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
(declare-const %%global_location_label%%52 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (perm! vstd.atomic.PermissionU64.)) (!
   (= (req%vstd.atomic.impl&%9.load. self! perm!) (=>
     %%global_location_label%%52
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

;; Function-Specs crate::vstd::atomic::PAtomicU64::store
(declare-fun req%vstd.atomic.impl&%9.store. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%53 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (v!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%9.store. self! pre%perm! v!) (=>
     %%global_location_label%%53
     (= (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. self!)) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
          (Poly%vstd.atomic.PermissionU64. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%9.store. self! pre%perm! v!))
   :qid internal_req__vstd.atomic.impl&__9.store._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__9.store._definition
)))
(declare-fun ens%vstd.atomic.impl&%9.store. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  vstd.atomic.PermissionU64. Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (perm!
    vstd.atomic.PermissionU64.
   ) (v! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%9.store. self! pre%perm! perm! v!) (and
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           perm!
       ))))
      ) v!
     )
     (= (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. self!)) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
          (Poly%vstd.atomic.PermissionU64. perm!)
   )))))))
   :pattern ((ens%vstd.atomic.impl&%9.store. self! pre%perm! perm! v!))
   :qid internal_ens__vstd.atomic.impl&__9.store._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__9.store._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU64::compare_exchange
(declare-fun req%vstd.atomic.impl&%9.compare_exchange. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  Int Int
 ) Bool
)
(declare-const %%global_location_label%%54 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (current!
    Int
   ) (new! Int)
  ) (!
   (= (req%vstd.atomic.impl&%9.compare_exchange. self! pre%perm! current! new!) (=>
     %%global_location_label%%54
     (= (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. self!)) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
          (Poly%vstd.atomic.PermissionU64. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%9.compare_exchange. self! pre%perm! current! new!))
   :qid internal_req__vstd.atomic.impl&__9.compare_exchange._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__9.compare_exchange._definition
)))
(declare-fun ens%vstd.atomic.impl&%9.compare_exchange. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  vstd.atomic.PermissionU64. Int Int core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (perm!
    vstd.atomic.PermissionU64.
   ) (current! Int) (new! Int) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd.atomic.impl&%9.compare_exchange. self! pre%perm! perm! current! new! ret!)
    (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ (UINT 64) $ (
        UINT 64
     )))
     (and
      (= (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. self!)) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
        (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
           (Poly%vstd.atomic.PermissionU64. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%I (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
             (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
                pre%perm!
          ))))))
          (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
             (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
            (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
               pre%perm!
       ))))))))
       (let
        ((r$ (%I (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (not (= current! (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
              (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
                 pre%perm!
          )))))))
          (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
             (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
                perm!
            ))))
           ) (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
             (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
                pre%perm!
         )))))))
         (= r$ (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
            (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd.atomic.impl&%9.compare_exchange. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd.atomic.impl&__9.compare_exchange._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__9.compare_exchange._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU64::compare_exchange_weak
(declare-fun req%vstd.atomic.impl&%9.compare_exchange_weak. (vstd.atomic.PAtomicU64.
  vstd.atomic.PermissionU64. Int Int
 ) Bool
)
(declare-const %%global_location_label%%55 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (current!
    Int
   ) (new! Int)
  ) (!
   (= (req%vstd.atomic.impl&%9.compare_exchange_weak. self! pre%perm! current! new!)
    (=>
     %%global_location_label%%55
     (= (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. self!)) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
          (Poly%vstd.atomic.PermissionU64. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%9.compare_exchange_weak. self! pre%perm! current!
     new!
   ))
   :qid internal_req__vstd.atomic.impl&__9.compare_exchange_weak._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__9.compare_exchange_weak._definition
)))
(declare-fun ens%vstd.atomic.impl&%9.compare_exchange_weak. (vstd.atomic.PAtomicU64.
  vstd.atomic.PermissionU64. vstd.atomic.PermissionU64. Int Int core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (perm!
    vstd.atomic.PermissionU64.
   ) (current! Int) (new! Int) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd.atomic.impl&%9.compare_exchange_weak. self! pre%perm! perm! current! new!
     ret!
    ) (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ (UINT 64) $ (
        UINT 64
     )))
     (and
      (= (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. self!)) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
        (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
           (Poly%vstd.atomic.PermissionU64. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%I (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
             (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
                pre%perm!
          ))))))
          (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
             (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
            (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
               pre%perm!
       ))))))))
       (let
        ((r$ (%I (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
            (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
               perm!
           ))))
          ) (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
            (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
               pre%perm!
         ))))))
         (= r$ (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
            (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd.atomic.impl&%9.compare_exchange_weak. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd.atomic.impl&__9.compare_exchange_weak._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__9.compare_exchange_weak._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU64::swap
(declare-fun req%vstd.atomic.impl&%9.swap. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%56 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (v!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%9.swap. self! pre%perm! v!) (=>
     %%global_location_label%%56
     (= (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. self!)) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
          (Poly%vstd.atomic.PermissionU64. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%9.swap. self! pre%perm! v!))
   :qid internal_req__vstd.atomic.impl&__9.swap._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__9.swap._definition
)))
(declare-fun ens%vstd.atomic.impl&%9.swap. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  vstd.atomic.PermissionU64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (perm!
    vstd.atomic.PermissionU64.
   ) (v! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%9.swap. self! pre%perm! perm! v! ret!) (and
     (uInv 64 ret!)
     (and
      (and
       (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
          (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
             perm!
         ))))
        ) v!
       )
       (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
          (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
             pre%perm!
         ))))
        ) ret!
      ))
      (= (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. self!)) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
        (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
           (Poly%vstd.atomic.PermissionU64. perm!)
   ))))))))
   :pattern ((ens%vstd.atomic.impl&%9.swap. self! pre%perm! perm! v! ret!))
   :qid internal_ens__vstd.atomic.impl&__9.swap._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__9.swap._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU64::into_inner
(declare-fun req%vstd.atomic.impl&%9.into_inner. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.)
 Bool
)
(declare-const %%global_location_label%%57 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (perm! vstd.atomic.PermissionU64.)) (!
   (= (req%vstd.atomic.impl&%9.into_inner. self! perm!) (=>
     %%global_location_label%%57
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

;; Function-Axioms crate::vstd::atomic::wrapping_add_u64
(assert
 (fuel_bool_default fuel%vstd.atomic.wrapping_add_u64.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.wrapping_add_u64.)
  (forall ((a! Poly) (b! Poly)) (!
    (= (vstd.atomic.wrapping_add_u64.? a! b!) (ite
      (> (Add (%I a!) (%I b!)) 18446744073709551615)
      (Sub (Add (%I a!) (%I b!)) (Add (Sub 18446744073709551615 0) 1))
      (Add (%I a!) (%I b!))
    ))
    :pattern ((vstd.atomic.wrapping_add_u64.? a! b!))
    :qid internal_vstd.atomic.wrapping_add_u64.?_definition
    :skolemid skolem_internal_vstd.atomic.wrapping_add_u64.?_definition
))))

;; Function-Specs crate::vstd::atomic::PAtomicU64::fetch_add_wrapping
(declare-fun req%vstd.atomic.impl&%9.fetch_add_wrapping. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%58 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%9.fetch_add_wrapping. self! pre%perm! n!) (=>
     %%global_location_label%%58
     (= (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. self!)) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
          (Poly%vstd.atomic.PermissionU64. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%9.fetch_add_wrapping. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__9.fetch_add_wrapping._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__9.fetch_add_wrapping._definition
)))
(declare-fun ens%vstd.atomic.impl&%9.fetch_add_wrapping. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  vstd.atomic.PermissionU64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (perm!
    vstd.atomic.PermissionU64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%9.fetch_add_wrapping. self! pre%perm! perm! n! ret!) (and
     (uInv 64 ret!)
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           perm!
       ))))
      ) (vstd.atomic.wrapping_add_u64.? (I (vstd.atomic.PermissionDataU64./PermissionDataU64/value
         (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
            (Poly%vstd.atomic.PermissionU64. pre%perm!)
        ))))
       ) (I n!)
   ))))
   :pattern ((ens%vstd.atomic.impl&%9.fetch_add_wrapping. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__9.fetch_add_wrapping._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__9.fetch_add_wrapping._definition
)))

;; Function-Axioms crate::vstd::atomic::wrapping_sub_u64
(assert
 (fuel_bool_default fuel%vstd.atomic.wrapping_sub_u64.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.wrapping_sub_u64.)
  (forall ((a! Poly) (b! Poly)) (!
    (= (vstd.atomic.wrapping_sub_u64.? a! b!) (ite
      (< (Sub (%I a!) (%I b!)) 0)
      (Add (Sub (%I a!) (%I b!)) (Add (Sub 18446744073709551615 0) 1))
      (Sub (%I a!) (%I b!))
    ))
    :pattern ((vstd.atomic.wrapping_sub_u64.? a! b!))
    :qid internal_vstd.atomic.wrapping_sub_u64.?_definition
    :skolemid skolem_internal_vstd.atomic.wrapping_sub_u64.?_definition
))))

;; Function-Specs crate::vstd::atomic::PAtomicU64::fetch_sub_wrapping
(declare-fun req%vstd.atomic.impl&%9.fetch_sub_wrapping. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%59 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%9.fetch_sub_wrapping. self! pre%perm! n!) (=>
     %%global_location_label%%59
     (= (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. self!)) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
          (Poly%vstd.atomic.PermissionU64. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%9.fetch_sub_wrapping. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__9.fetch_sub_wrapping._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__9.fetch_sub_wrapping._definition
)))
(declare-fun ens%vstd.atomic.impl&%9.fetch_sub_wrapping. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  vstd.atomic.PermissionU64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (perm!
    vstd.atomic.PermissionU64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%9.fetch_sub_wrapping. self! pre%perm! perm! n! ret!) (and
     (uInv 64 ret!)
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           perm!
       ))))
      ) (vstd.atomic.wrapping_sub_u64.? (I (vstd.atomic.PermissionDataU64./PermissionDataU64/value
         (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
            (Poly%vstd.atomic.PermissionU64. pre%perm!)
        ))))
       ) (I n!)
   ))))
   :pattern ((ens%vstd.atomic.impl&%9.fetch_sub_wrapping. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__9.fetch_sub_wrapping._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__9.fetch_sub_wrapping._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU64::fetch_and
(declare-fun req%vstd.atomic.impl&%9.fetch_and. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%60 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%9.fetch_and. self! pre%perm! n!) (=>
     %%global_location_label%%60
     (= (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. self!)) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
          (Poly%vstd.atomic.PermissionU64. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%9.fetch_and. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__9.fetch_and._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__9.fetch_and._definition
)))
(declare-fun ens%vstd.atomic.impl&%9.fetch_and. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  vstd.atomic.PermissionU64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (perm!
    vstd.atomic.PermissionU64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%9.fetch_and. self! pre%perm! perm! n! ret!) (and
     (uInv 64 ret!)
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           perm!
       ))))
      ) (uClip 64 (bitand (I (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
           (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%9.fetch_and. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__9.fetch_and._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__9.fetch_and._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU64::fetch_or
(declare-fun req%vstd.atomic.impl&%9.fetch_or. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%61 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%9.fetch_or. self! pre%perm! n!) (=>
     %%global_location_label%%61
     (= (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. self!)) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
          (Poly%vstd.atomic.PermissionU64. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%9.fetch_or. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__9.fetch_or._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__9.fetch_or._definition
)))
(declare-fun ens%vstd.atomic.impl&%9.fetch_or. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  vstd.atomic.PermissionU64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (perm!
    vstd.atomic.PermissionU64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%9.fetch_or. self! pre%perm! perm! n! ret!) (and
     (uInv 64 ret!)
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           perm!
       ))))
      ) (uClip 64 (bitor (I (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
           (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%9.fetch_or. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__9.fetch_or._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__9.fetch_or._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU64::fetch_xor
(declare-fun req%vstd.atomic.impl&%9.fetch_xor. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%62 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%9.fetch_xor. self! pre%perm! n!) (=>
     %%global_location_label%%62
     (= (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. self!)) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
          (Poly%vstd.atomic.PermissionU64. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%9.fetch_xor. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__9.fetch_xor._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__9.fetch_xor._definition
)))
(declare-fun ens%vstd.atomic.impl&%9.fetch_xor. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  vstd.atomic.PermissionU64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (perm!
    vstd.atomic.PermissionU64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%9.fetch_xor. self! pre%perm! perm! n! ret!) (and
     (uInv 64 ret!)
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           perm!
       ))))
      ) (uClip 64 (bitxor (I (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
           (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%9.fetch_xor. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__9.fetch_xor._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__9.fetch_xor._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU64::fetch_nand
(declare-fun req%vstd.atomic.impl&%9.fetch_nand. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%63 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%9.fetch_nand. self! pre%perm! n!) (=>
     %%global_location_label%%63
     (= (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. self!)) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
          (Poly%vstd.atomic.PermissionU64. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%9.fetch_nand. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__9.fetch_nand._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__9.fetch_nand._definition
)))
(declare-fun ens%vstd.atomic.impl&%9.fetch_nand. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  vstd.atomic.PermissionU64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (perm!
    vstd.atomic.PermissionU64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%9.fetch_nand. self! pre%perm! perm! n! ret!) (and
     (uInv 64 ret!)
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           perm!
       ))))
      ) (uClip 64 (bitnot (I (uClip 64 (bitand (I (vstd.atomic.PermissionDataU64./PermissionDataU64/value
             (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
                (Poly%vstd.atomic.PermissionU64. pre%perm!)
            ))))
           ) (I n!)
   ))))))))
   :pattern ((ens%vstd.atomic.impl&%9.fetch_nand. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__9.fetch_nand._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__9.fetch_nand._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU64::fetch_max
(declare-fun req%vstd.atomic.impl&%9.fetch_max. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%64 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%9.fetch_max. self! pre%perm! n!) (=>
     %%global_location_label%%64
     (= (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. self!)) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
          (Poly%vstd.atomic.PermissionU64. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%9.fetch_max. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__9.fetch_max._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__9.fetch_max._definition
)))
(declare-fun ens%vstd.atomic.impl&%9.fetch_max. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  vstd.atomic.PermissionU64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (perm!
    vstd.atomic.PermissionU64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%9.fetch_max. self! pre%perm! perm! n! ret!) (and
     (uInv 64 ret!)
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           perm!
       ))))
      ) (ite
       (> (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
          (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
             pre%perm!
         ))))
        ) n!
       )
       (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
         (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%9.fetch_max. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__9.fetch_max._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__9.fetch_max._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicU64::fetch_min
(declare-fun req%vstd.atomic.impl&%9.fetch_min. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%65 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%9.fetch_min. self! pre%perm! n!) (=>
     %%global_location_label%%65
     (= (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. self!)) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
          (Poly%vstd.atomic.PermissionU64. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%9.fetch_min. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__9.fetch_min._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__9.fetch_min._definition
)))
(declare-fun ens%vstd.atomic.impl&%9.fetch_min. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  vstd.atomic.PermissionU64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (perm!
    vstd.atomic.PermissionU64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%9.fetch_min. self! pre%perm! perm! n! ret!) (and
     (uInv 64 ret!)
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           perm!
       ))))
      ) (ite
       (< (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
          (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
             pre%perm!
         ))))
        ) n!
       )
       (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
         (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%9.fetch_min. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__9.fetch_min._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__9.fetch_min._definition
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
(declare-const %%global_location_label%%66 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (perm! vstd.atomic.PermissionUsize.)) (
   !
   (= (req%vstd.atomic.impl&%11.load. self! perm!) (=>
     %%global_location_label%%66
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

;; Function-Specs crate::vstd::atomic::PAtomicUsize::store
(declare-fun req%vstd.atomic.impl&%11.store. (vstd.atomic.PAtomicUsize. vstd.atomic.PermissionUsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%67 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (v! Int)
  ) (!
   (= (req%vstd.atomic.impl&%11.store. self! pre%perm! v!) (=>
     %%global_location_label%%67
     (= (vstd.atomic.impl&%11.id.? (Poly%vstd.atomic.PAtomicUsize. self!)) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic
       (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
          (Poly%vstd.atomic.PermissionUsize. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%11.store. self! pre%perm! v!))
   :qid internal_req__vstd.atomic.impl&__11.store._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__11.store._definition
)))
(declare-fun ens%vstd.atomic.impl&%11.store. (vstd.atomic.PAtomicUsize. vstd.atomic.PermissionUsize.
  vstd.atomic.PermissionUsize. Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (perm! vstd.atomic.PermissionUsize.) (v! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%11.store. self! pre%perm! perm! v!) (and
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           perm!
       ))))
      ) v!
     )
     (= (vstd.atomic.impl&%11.id.? (Poly%vstd.atomic.PAtomicUsize. self!)) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic
       (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
          (Poly%vstd.atomic.PermissionUsize. perm!)
   )))))))
   :pattern ((ens%vstd.atomic.impl&%11.store. self! pre%perm! perm! v!))
   :qid internal_ens__vstd.atomic.impl&__11.store._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__11.store._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicUsize::compare_exchange
(declare-fun req%vstd.atomic.impl&%11.compare_exchange. (vstd.atomic.PAtomicUsize.
  vstd.atomic.PermissionUsize. Int Int
 ) Bool
)
(declare-const %%global_location_label%%68 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (current! Int) (new! Int)
  ) (!
   (= (req%vstd.atomic.impl&%11.compare_exchange. self! pre%perm! current! new!) (=>
     %%global_location_label%%68
     (= (vstd.atomic.impl&%11.id.? (Poly%vstd.atomic.PAtomicUsize. self!)) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic
       (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
          (Poly%vstd.atomic.PermissionUsize. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%11.compare_exchange. self! pre%perm! current! new!))
   :qid internal_req__vstd.atomic.impl&__11.compare_exchange._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__11.compare_exchange._definition
)))
(declare-fun ens%vstd.atomic.impl&%11.compare_exchange. (vstd.atomic.PAtomicUsize.
  vstd.atomic.PermissionUsize. vstd.atomic.PermissionUsize. Int Int core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (perm! vstd.atomic.PermissionUsize.) (current! Int) (new! Int) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd.atomic.impl&%11.compare_exchange. self! pre%perm! perm! current! new!
     ret!
    ) (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ (UINT SZ) $ (
        UINT SZ
     )))
     (and
      (= (vstd.atomic.impl&%11.id.? (Poly%vstd.atomic.PAtomicUsize. self!)) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic
        (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
           (Poly%vstd.atomic.PermissionUsize. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%I (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
             (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
                pre%perm!
          ))))))
          (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
             (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
            (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
               pre%perm!
       ))))))))
       (let
        ((r$ (%I (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (not (= current! (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
              (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
                 pre%perm!
          )))))))
          (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
             (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
                perm!
            ))))
           ) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
             (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
                pre%perm!
         )))))))
         (= r$ (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
            (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd.atomic.impl&%11.compare_exchange. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd.atomic.impl&__11.compare_exchange._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__11.compare_exchange._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicUsize::compare_exchange_weak
(declare-fun req%vstd.atomic.impl&%11.compare_exchange_weak. (vstd.atomic.PAtomicUsize.
  vstd.atomic.PermissionUsize. Int Int
 ) Bool
)
(declare-const %%global_location_label%%69 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (current! Int) (new! Int)
  ) (!
   (= (req%vstd.atomic.impl&%11.compare_exchange_weak. self! pre%perm! current! new!)
    (=>
     %%global_location_label%%69
     (= (vstd.atomic.impl&%11.id.? (Poly%vstd.atomic.PAtomicUsize. self!)) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic
       (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
          (Poly%vstd.atomic.PermissionUsize. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%11.compare_exchange_weak. self! pre%perm! current!
     new!
   ))
   :qid internal_req__vstd.atomic.impl&__11.compare_exchange_weak._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__11.compare_exchange_weak._definition
)))
(declare-fun ens%vstd.atomic.impl&%11.compare_exchange_weak. (vstd.atomic.PAtomicUsize.
  vstd.atomic.PermissionUsize. vstd.atomic.PermissionUsize. Int Int core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (perm! vstd.atomic.PermissionUsize.) (current! Int) (new! Int) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd.atomic.impl&%11.compare_exchange_weak. self! pre%perm! perm! current!
     new! ret!
    ) (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ (UINT SZ) $ (
        UINT SZ
     )))
     (and
      (= (vstd.atomic.impl&%11.id.? (Poly%vstd.atomic.PAtomicUsize. self!)) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic
        (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
           (Poly%vstd.atomic.PermissionUsize. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%I (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
             (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
                pre%perm!
          ))))))
          (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
             (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
            (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
               pre%perm!
       ))))))))
       (let
        ((r$ (%I (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
            (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
               perm!
           ))))
          ) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
            (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
               pre%perm!
         ))))))
         (= r$ (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
            (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd.atomic.impl&%11.compare_exchange_weak. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd.atomic.impl&__11.compare_exchange_weak._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__11.compare_exchange_weak._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicUsize::swap
(declare-fun req%vstd.atomic.impl&%11.swap. (vstd.atomic.PAtomicUsize. vstd.atomic.PermissionUsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%70 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (v! Int)
  ) (!
   (= (req%vstd.atomic.impl&%11.swap. self! pre%perm! v!) (=>
     %%global_location_label%%70
     (= (vstd.atomic.impl&%11.id.? (Poly%vstd.atomic.PAtomicUsize. self!)) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic
       (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
          (Poly%vstd.atomic.PermissionUsize. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%11.swap. self! pre%perm! v!))
   :qid internal_req__vstd.atomic.impl&__11.swap._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__11.swap._definition
)))
(declare-fun ens%vstd.atomic.impl&%11.swap. (vstd.atomic.PAtomicUsize. vstd.atomic.PermissionUsize.
  vstd.atomic.PermissionUsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (perm! vstd.atomic.PermissionUsize.) (v! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%11.swap. self! pre%perm! perm! v! ret!) (and
     (uInv SZ ret!)
     (and
      (and
       (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
          (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
             perm!
         ))))
        ) v!
       )
       (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
          (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
             pre%perm!
         ))))
        ) ret!
      ))
      (= (vstd.atomic.impl&%11.id.? (Poly%vstd.atomic.PAtomicUsize. self!)) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic
        (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
           (Poly%vstd.atomic.PermissionUsize. perm!)
   ))))))))
   :pattern ((ens%vstd.atomic.impl&%11.swap. self! pre%perm! perm! v! ret!))
   :qid internal_ens__vstd.atomic.impl&__11.swap._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__11.swap._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicUsize::into_inner
(declare-fun req%vstd.atomic.impl&%11.into_inner. (vstd.atomic.PAtomicUsize. vstd.atomic.PermissionUsize.)
 Bool
)
(declare-const %%global_location_label%%71 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (perm! vstd.atomic.PermissionUsize.)) (
   !
   (= (req%vstd.atomic.impl&%11.into_inner. self! perm!) (=>
     %%global_location_label%%71
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

;; Function-Axioms crate::vstd::atomic::wrapping_add_usize
(assert
 (fuel_bool_default fuel%vstd.atomic.wrapping_add_usize.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.wrapping_add_usize.)
  (forall ((a! Poly) (b! Poly)) (!
    (= (vstd.atomic.wrapping_add_usize.? a! b!) (ite
      (> (Add (%I a!) (%I b!)) (- (uHi SZ) 1))
      (Sub (Add (%I a!) (%I b!)) (Add (Sub (- (uHi SZ) 1) 0) 1))
      (Add (%I a!) (%I b!))
    ))
    :pattern ((vstd.atomic.wrapping_add_usize.? a! b!))
    :qid internal_vstd.atomic.wrapping_add_usize.?_definition
    :skolemid skolem_internal_vstd.atomic.wrapping_add_usize.?_definition
))))

;; Function-Specs crate::vstd::atomic::PAtomicUsize::fetch_add_wrapping
(declare-fun req%vstd.atomic.impl&%11.fetch_add_wrapping. (vstd.atomic.PAtomicUsize.
  vstd.atomic.PermissionUsize. Int
 ) Bool
)
(declare-const %%global_location_label%%72 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (n! Int)
  ) (!
   (= (req%vstd.atomic.impl&%11.fetch_add_wrapping. self! pre%perm! n!) (=>
     %%global_location_label%%72
     (= (vstd.atomic.impl&%11.id.? (Poly%vstd.atomic.PAtomicUsize. self!)) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic
       (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
          (Poly%vstd.atomic.PermissionUsize. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%11.fetch_add_wrapping. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__11.fetch_add_wrapping._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__11.fetch_add_wrapping._definition
)))
(declare-fun ens%vstd.atomic.impl&%11.fetch_add_wrapping. (vstd.atomic.PAtomicUsize.
  vstd.atomic.PermissionUsize. vstd.atomic.PermissionUsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (perm! vstd.atomic.PermissionUsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%11.fetch_add_wrapping. self! pre%perm! perm! n! ret!) (and
     (uInv SZ ret!)
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           perm!
       ))))
      ) (vstd.atomic.wrapping_add_usize.? (I (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value
         (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
            (Poly%vstd.atomic.PermissionUsize. pre%perm!)
        ))))
       ) (I n!)
   ))))
   :pattern ((ens%vstd.atomic.impl&%11.fetch_add_wrapping. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__11.fetch_add_wrapping._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__11.fetch_add_wrapping._definition
)))

;; Function-Axioms crate::vstd::atomic::wrapping_sub_usize
(assert
 (fuel_bool_default fuel%vstd.atomic.wrapping_sub_usize.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.wrapping_sub_usize.)
  (forall ((a! Poly) (b! Poly)) (!
    (= (vstd.atomic.wrapping_sub_usize.? a! b!) (ite
      (< (Sub (%I a!) (%I b!)) 0)
      (Add (Sub (%I a!) (%I b!)) (Add (Sub (- (uHi SZ) 1) 0) 1))
      (Sub (%I a!) (%I b!))
    ))
    :pattern ((vstd.atomic.wrapping_sub_usize.? a! b!))
    :qid internal_vstd.atomic.wrapping_sub_usize.?_definition
    :skolemid skolem_internal_vstd.atomic.wrapping_sub_usize.?_definition
))))

;; Function-Specs crate::vstd::atomic::PAtomicUsize::fetch_sub_wrapping
(declare-fun req%vstd.atomic.impl&%11.fetch_sub_wrapping. (vstd.atomic.PAtomicUsize.
  vstd.atomic.PermissionUsize. Int
 ) Bool
)
(declare-const %%global_location_label%%73 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (n! Int)
  ) (!
   (= (req%vstd.atomic.impl&%11.fetch_sub_wrapping. self! pre%perm! n!) (=>
     %%global_location_label%%73
     (= (vstd.atomic.impl&%11.id.? (Poly%vstd.atomic.PAtomicUsize. self!)) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic
       (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
          (Poly%vstd.atomic.PermissionUsize. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%11.fetch_sub_wrapping. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__11.fetch_sub_wrapping._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__11.fetch_sub_wrapping._definition
)))
(declare-fun ens%vstd.atomic.impl&%11.fetch_sub_wrapping. (vstd.atomic.PAtomicUsize.
  vstd.atomic.PermissionUsize. vstd.atomic.PermissionUsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (perm! vstd.atomic.PermissionUsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%11.fetch_sub_wrapping. self! pre%perm! perm! n! ret!) (and
     (uInv SZ ret!)
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           perm!
       ))))
      ) (vstd.atomic.wrapping_sub_usize.? (I (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value
         (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
            (Poly%vstd.atomic.PermissionUsize. pre%perm!)
        ))))
       ) (I n!)
   ))))
   :pattern ((ens%vstd.atomic.impl&%11.fetch_sub_wrapping. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__11.fetch_sub_wrapping._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__11.fetch_sub_wrapping._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicUsize::fetch_and
(declare-fun req%vstd.atomic.impl&%11.fetch_and. (vstd.atomic.PAtomicUsize. vstd.atomic.PermissionUsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%74 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (n! Int)
  ) (!
   (= (req%vstd.atomic.impl&%11.fetch_and. self! pre%perm! n!) (=>
     %%global_location_label%%74
     (= (vstd.atomic.impl&%11.id.? (Poly%vstd.atomic.PAtomicUsize. self!)) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic
       (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
          (Poly%vstd.atomic.PermissionUsize. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%11.fetch_and. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__11.fetch_and._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__11.fetch_and._definition
)))
(declare-fun ens%vstd.atomic.impl&%11.fetch_and. (vstd.atomic.PAtomicUsize. vstd.atomic.PermissionUsize.
  vstd.atomic.PermissionUsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (perm! vstd.atomic.PermissionUsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%11.fetch_and. self! pre%perm! perm! n! ret!) (and
     (uInv SZ ret!)
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           perm!
       ))))
      ) (uClip SZ (bitand (I (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
           (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%11.fetch_and. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__11.fetch_and._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__11.fetch_and._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicUsize::fetch_or
(declare-fun req%vstd.atomic.impl&%11.fetch_or. (vstd.atomic.PAtomicUsize. vstd.atomic.PermissionUsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%75 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (n! Int)
  ) (!
   (= (req%vstd.atomic.impl&%11.fetch_or. self! pre%perm! n!) (=>
     %%global_location_label%%75
     (= (vstd.atomic.impl&%11.id.? (Poly%vstd.atomic.PAtomicUsize. self!)) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic
       (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
          (Poly%vstd.atomic.PermissionUsize. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%11.fetch_or. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__11.fetch_or._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__11.fetch_or._definition
)))
(declare-fun ens%vstd.atomic.impl&%11.fetch_or. (vstd.atomic.PAtomicUsize. vstd.atomic.PermissionUsize.
  vstd.atomic.PermissionUsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (perm! vstd.atomic.PermissionUsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%11.fetch_or. self! pre%perm! perm! n! ret!) (and
     (uInv SZ ret!)
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           perm!
       ))))
      ) (uClip SZ (bitor (I (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
           (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%11.fetch_or. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__11.fetch_or._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__11.fetch_or._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicUsize::fetch_xor
(declare-fun req%vstd.atomic.impl&%11.fetch_xor. (vstd.atomic.PAtomicUsize. vstd.atomic.PermissionUsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%76 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (n! Int)
  ) (!
   (= (req%vstd.atomic.impl&%11.fetch_xor. self! pre%perm! n!) (=>
     %%global_location_label%%76
     (= (vstd.atomic.impl&%11.id.? (Poly%vstd.atomic.PAtomicUsize. self!)) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic
       (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
          (Poly%vstd.atomic.PermissionUsize. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%11.fetch_xor. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__11.fetch_xor._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__11.fetch_xor._definition
)))
(declare-fun ens%vstd.atomic.impl&%11.fetch_xor. (vstd.atomic.PAtomicUsize. vstd.atomic.PermissionUsize.
  vstd.atomic.PermissionUsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (perm! vstd.atomic.PermissionUsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%11.fetch_xor. self! pre%perm! perm! n! ret!) (and
     (uInv SZ ret!)
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           perm!
       ))))
      ) (uClip SZ (bitxor (I (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
           (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%11.fetch_xor. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__11.fetch_xor._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__11.fetch_xor._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicUsize::fetch_nand
(declare-fun req%vstd.atomic.impl&%11.fetch_nand. (vstd.atomic.PAtomicUsize. vstd.atomic.PermissionUsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%77 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (n! Int)
  ) (!
   (= (req%vstd.atomic.impl&%11.fetch_nand. self! pre%perm! n!) (=>
     %%global_location_label%%77
     (= (vstd.atomic.impl&%11.id.? (Poly%vstd.atomic.PAtomicUsize. self!)) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic
       (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
          (Poly%vstd.atomic.PermissionUsize. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%11.fetch_nand. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__11.fetch_nand._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__11.fetch_nand._definition
)))
(declare-fun ens%vstd.atomic.impl&%11.fetch_nand. (vstd.atomic.PAtomicUsize. vstd.atomic.PermissionUsize.
  vstd.atomic.PermissionUsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (perm! vstd.atomic.PermissionUsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%11.fetch_nand. self! pre%perm! perm! n! ret!) (and
     (uInv SZ ret!)
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           perm!
       ))))
      ) (uClip SZ (bitnot (I (uClip SZ (bitand (I (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value
             (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
                (Poly%vstd.atomic.PermissionUsize. pre%perm!)
            ))))
           ) (I n!)
   ))))))))
   :pattern ((ens%vstd.atomic.impl&%11.fetch_nand. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__11.fetch_nand._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__11.fetch_nand._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicUsize::fetch_max
(declare-fun req%vstd.atomic.impl&%11.fetch_max. (vstd.atomic.PAtomicUsize. vstd.atomic.PermissionUsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%78 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (n! Int)
  ) (!
   (= (req%vstd.atomic.impl&%11.fetch_max. self! pre%perm! n!) (=>
     %%global_location_label%%78
     (= (vstd.atomic.impl&%11.id.? (Poly%vstd.atomic.PAtomicUsize. self!)) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic
       (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
          (Poly%vstd.atomic.PermissionUsize. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%11.fetch_max. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__11.fetch_max._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__11.fetch_max._definition
)))
(declare-fun ens%vstd.atomic.impl&%11.fetch_max. (vstd.atomic.PAtomicUsize. vstd.atomic.PermissionUsize.
  vstd.atomic.PermissionUsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (perm! vstd.atomic.PermissionUsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%11.fetch_max. self! pre%perm! perm! n! ret!) (and
     (uInv SZ ret!)
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           perm!
       ))))
      ) (ite
       (> (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
          (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
             pre%perm!
         ))))
        ) n!
       )
       (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
         (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%11.fetch_max. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__11.fetch_max._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__11.fetch_max._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicUsize::fetch_min
(declare-fun req%vstd.atomic.impl&%11.fetch_min. (vstd.atomic.PAtomicUsize. vstd.atomic.PermissionUsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%79 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (n! Int)
  ) (!
   (= (req%vstd.atomic.impl&%11.fetch_min. self! pre%perm! n!) (=>
     %%global_location_label%%79
     (= (vstd.atomic.impl&%11.id.? (Poly%vstd.atomic.PAtomicUsize. self!)) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic
       (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
          (Poly%vstd.atomic.PermissionUsize. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%11.fetch_min. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__11.fetch_min._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__11.fetch_min._definition
)))
(declare-fun ens%vstd.atomic.impl&%11.fetch_min. (vstd.atomic.PAtomicUsize. vstd.atomic.PermissionUsize.
  vstd.atomic.PermissionUsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (perm! vstd.atomic.PermissionUsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%11.fetch_min. self! pre%perm! perm! n! ret!) (and
     (uInv SZ ret!)
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           perm!
       ))))
      ) (ite
       (< (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
          (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
             pre%perm!
         ))))
        ) n!
       )
       (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
         (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%11.fetch_min. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__11.fetch_min._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__11.fetch_min._definition
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
(declare-const %%global_location_label%%80 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (perm! vstd.atomic.PermissionI8.)) (!
   (= (req%vstd.atomic.impl&%13.load. self! perm!) (=>
     %%global_location_label%%80
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

;; Function-Specs crate::vstd::atomic::PAtomicI8::store
(declare-fun req%vstd.atomic.impl&%13.store. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  Int
 ) Bool
)
(declare-const %%global_location_label%%81 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (v! Int))
  (!
   (= (req%vstd.atomic.impl&%13.store. self! pre%perm! v!) (=>
     %%global_location_label%%81
     (= (vstd.atomic.impl&%13.id.? (Poly%vstd.atomic.PAtomicI8. self!)) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic
       (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
          (Poly%vstd.atomic.PermissionI8. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%13.store. self! pre%perm! v!))
   :qid internal_req__vstd.atomic.impl&__13.store._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__13.store._definition
)))
(declare-fun ens%vstd.atomic.impl&%13.store. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  vstd.atomic.PermissionI8. Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (perm!
    vstd.atomic.PermissionI8.
   ) (v! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%13.store. self! pre%perm! perm! v!) (and
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           perm!
       ))))
      ) v!
     )
     (= (vstd.atomic.impl&%13.id.? (Poly%vstd.atomic.PAtomicI8. self!)) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic
       (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
          (Poly%vstd.atomic.PermissionI8. perm!)
   )))))))
   :pattern ((ens%vstd.atomic.impl&%13.store. self! pre%perm! perm! v!))
   :qid internal_ens__vstd.atomic.impl&__13.store._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__13.store._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI8::compare_exchange
(declare-fun req%vstd.atomic.impl&%13.compare_exchange. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  Int Int
 ) Bool
)
(declare-const %%global_location_label%%82 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (current!
    Int
   ) (new! Int)
  ) (!
   (= (req%vstd.atomic.impl&%13.compare_exchange. self! pre%perm! current! new!) (=>
     %%global_location_label%%82
     (= (vstd.atomic.impl&%13.id.? (Poly%vstd.atomic.PAtomicI8. self!)) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic
       (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
          (Poly%vstd.atomic.PermissionI8. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%13.compare_exchange. self! pre%perm! current! new!))
   :qid internal_req__vstd.atomic.impl&__13.compare_exchange._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__13.compare_exchange._definition
)))
(declare-fun ens%vstd.atomic.impl&%13.compare_exchange. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  vstd.atomic.PermissionI8. Int Int core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (perm!
    vstd.atomic.PermissionI8.
   ) (current! Int) (new! Int) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd.atomic.impl&%13.compare_exchange. self! pre%perm! perm! current! new!
     ret!
    ) (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ (SINT 8) $ (SINT
        8
     )))
     (and
      (= (vstd.atomic.impl&%13.id.? (Poly%vstd.atomic.PAtomicI8. self!)) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic
        (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
           (Poly%vstd.atomic.PermissionI8. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%I (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
             (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
                pre%perm!
          ))))))
          (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
             (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
            (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
               pre%perm!
       ))))))))
       (let
        ((r$ (%I (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (not (= current! (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
              (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
                 pre%perm!
          )))))))
          (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
             (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
                perm!
            ))))
           ) (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
             (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
                pre%perm!
         )))))))
         (= r$ (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
            (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd.atomic.impl&%13.compare_exchange. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd.atomic.impl&__13.compare_exchange._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__13.compare_exchange._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI8::compare_exchange_weak
(declare-fun req%vstd.atomic.impl&%13.compare_exchange_weak. (vstd.atomic.PAtomicI8.
  vstd.atomic.PermissionI8. Int Int
 ) Bool
)
(declare-const %%global_location_label%%83 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (current!
    Int
   ) (new! Int)
  ) (!
   (= (req%vstd.atomic.impl&%13.compare_exchange_weak. self! pre%perm! current! new!)
    (=>
     %%global_location_label%%83
     (= (vstd.atomic.impl&%13.id.? (Poly%vstd.atomic.PAtomicI8. self!)) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic
       (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
          (Poly%vstd.atomic.PermissionI8. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%13.compare_exchange_weak. self! pre%perm! current!
     new!
   ))
   :qid internal_req__vstd.atomic.impl&__13.compare_exchange_weak._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__13.compare_exchange_weak._definition
)))
(declare-fun ens%vstd.atomic.impl&%13.compare_exchange_weak. (vstd.atomic.PAtomicI8.
  vstd.atomic.PermissionI8. vstd.atomic.PermissionI8. Int Int core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (perm!
    vstd.atomic.PermissionI8.
   ) (current! Int) (new! Int) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd.atomic.impl&%13.compare_exchange_weak. self! pre%perm! perm! current!
     new! ret!
    ) (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ (SINT 8) $ (SINT
        8
     )))
     (and
      (= (vstd.atomic.impl&%13.id.? (Poly%vstd.atomic.PAtomicI8. self!)) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic
        (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
           (Poly%vstd.atomic.PermissionI8. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%I (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
             (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
                pre%perm!
          ))))))
          (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
             (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
            (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
               pre%perm!
       ))))))))
       (let
        ((r$ (%I (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
            (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
               perm!
           ))))
          ) (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
            (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
               pre%perm!
         ))))))
         (= r$ (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
            (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd.atomic.impl&%13.compare_exchange_weak. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd.atomic.impl&__13.compare_exchange_weak._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__13.compare_exchange_weak._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI8::swap
(declare-fun req%vstd.atomic.impl&%13.swap. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  Int
 ) Bool
)
(declare-const %%global_location_label%%84 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (v! Int))
  (!
   (= (req%vstd.atomic.impl&%13.swap. self! pre%perm! v!) (=>
     %%global_location_label%%84
     (= (vstd.atomic.impl&%13.id.? (Poly%vstd.atomic.PAtomicI8. self!)) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic
       (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
          (Poly%vstd.atomic.PermissionI8. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%13.swap. self! pre%perm! v!))
   :qid internal_req__vstd.atomic.impl&__13.swap._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__13.swap._definition
)))
(declare-fun ens%vstd.atomic.impl&%13.swap. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  vstd.atomic.PermissionI8. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (perm!
    vstd.atomic.PermissionI8.
   ) (v! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%13.swap. self! pre%perm! perm! v! ret!) (and
     (iInv 8 ret!)
     (and
      (and
       (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
          (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
             perm!
         ))))
        ) v!
       )
       (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
          (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
             pre%perm!
         ))))
        ) ret!
      ))
      (= (vstd.atomic.impl&%13.id.? (Poly%vstd.atomic.PAtomicI8. self!)) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic
        (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
           (Poly%vstd.atomic.PermissionI8. perm!)
   ))))))))
   :pattern ((ens%vstd.atomic.impl&%13.swap. self! pre%perm! perm! v! ret!))
   :qid internal_ens__vstd.atomic.impl&__13.swap._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__13.swap._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI8::into_inner
(declare-fun req%vstd.atomic.impl&%13.into_inner. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.)
 Bool
)
(declare-const %%global_location_label%%85 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (perm! vstd.atomic.PermissionI8.)) (!
   (= (req%vstd.atomic.impl&%13.into_inner. self! perm!) (=>
     %%global_location_label%%85
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

;; Function-Axioms crate::vstd::atomic::wrapping_add_i8
(assert
 (fuel_bool_default fuel%vstd.atomic.wrapping_add_i8.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.wrapping_add_i8.)
  (forall ((a! Poly) (b! Poly)) (!
    (= (vstd.atomic.wrapping_add_i8.? a! b!) (ite
      (> (Add (%I a!) (%I b!)) 127)
      (Sub (Add (%I a!) (%I b!)) (Add (Sub 127 (- 128)) 1))
      (ite
       (< (Add (%I a!) (%I b!)) (- 128))
       (Add (Add (%I a!) (%I b!)) (Add (Sub 127 (- 128)) 1))
       (Add (%I a!) (%I b!))
    )))
    :pattern ((vstd.atomic.wrapping_add_i8.? a! b!))
    :qid internal_vstd.atomic.wrapping_add_i8.?_definition
    :skolemid skolem_internal_vstd.atomic.wrapping_add_i8.?_definition
))))

;; Function-Specs crate::vstd::atomic::PAtomicI8::fetch_add_wrapping
(declare-fun req%vstd.atomic.impl&%13.fetch_add_wrapping. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  Int
 ) Bool
)
(declare-const %%global_location_label%%86 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (n! Int))
  (!
   (= (req%vstd.atomic.impl&%13.fetch_add_wrapping. self! pre%perm! n!) (=>
     %%global_location_label%%86
     (= (vstd.atomic.impl&%13.id.? (Poly%vstd.atomic.PAtomicI8. self!)) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic
       (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
          (Poly%vstd.atomic.PermissionI8. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%13.fetch_add_wrapping. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__13.fetch_add_wrapping._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__13.fetch_add_wrapping._definition
)))
(declare-fun ens%vstd.atomic.impl&%13.fetch_add_wrapping. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  vstd.atomic.PermissionI8. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (perm!
    vstd.atomic.PermissionI8.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%13.fetch_add_wrapping. self! pre%perm! perm! n! ret!) (and
     (iInv 8 ret!)
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           perm!
       ))))
      ) (vstd.atomic.wrapping_add_i8.? (I (vstd.atomic.PermissionDataI8./PermissionDataI8/value
         (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
            (Poly%vstd.atomic.PermissionI8. pre%perm!)
        ))))
       ) (I n!)
   ))))
   :pattern ((ens%vstd.atomic.impl&%13.fetch_add_wrapping. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__13.fetch_add_wrapping._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__13.fetch_add_wrapping._definition
)))

;; Function-Axioms crate::vstd::atomic::wrapping_sub_i8
(assert
 (fuel_bool_default fuel%vstd.atomic.wrapping_sub_i8.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.wrapping_sub_i8.)
  (forall ((a! Poly) (b! Poly)) (!
    (= (vstd.atomic.wrapping_sub_i8.? a! b!) (ite
      (> (Sub (%I a!) (%I b!)) 127)
      (Sub (Sub (%I a!) (%I b!)) (Add (Sub 127 (- 128)) 1))
      (ite
       (< (Sub (%I a!) (%I b!)) (- 128))
       (Add (Sub (%I a!) (%I b!)) (Add (Sub 127 (- 128)) 1))
       (Sub (%I a!) (%I b!))
    )))
    :pattern ((vstd.atomic.wrapping_sub_i8.? a! b!))
    :qid internal_vstd.atomic.wrapping_sub_i8.?_definition
    :skolemid skolem_internal_vstd.atomic.wrapping_sub_i8.?_definition
))))

;; Function-Specs crate::vstd::atomic::PAtomicI8::fetch_sub_wrapping
(declare-fun req%vstd.atomic.impl&%13.fetch_sub_wrapping. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  Int
 ) Bool
)
(declare-const %%global_location_label%%87 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (n! Int))
  (!
   (= (req%vstd.atomic.impl&%13.fetch_sub_wrapping. self! pre%perm! n!) (=>
     %%global_location_label%%87
     (= (vstd.atomic.impl&%13.id.? (Poly%vstd.atomic.PAtomicI8. self!)) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic
       (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
          (Poly%vstd.atomic.PermissionI8. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%13.fetch_sub_wrapping. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__13.fetch_sub_wrapping._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__13.fetch_sub_wrapping._definition
)))
(declare-fun ens%vstd.atomic.impl&%13.fetch_sub_wrapping. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  vstd.atomic.PermissionI8. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (perm!
    vstd.atomic.PermissionI8.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%13.fetch_sub_wrapping. self! pre%perm! perm! n! ret!) (and
     (iInv 8 ret!)
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           perm!
       ))))
      ) (vstd.atomic.wrapping_sub_i8.? (I (vstd.atomic.PermissionDataI8./PermissionDataI8/value
         (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
            (Poly%vstd.atomic.PermissionI8. pre%perm!)
        ))))
       ) (I n!)
   ))))
   :pattern ((ens%vstd.atomic.impl&%13.fetch_sub_wrapping. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__13.fetch_sub_wrapping._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__13.fetch_sub_wrapping._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI8::fetch_and
(declare-fun req%vstd.atomic.impl&%13.fetch_and. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  Int
 ) Bool
)
(declare-const %%global_location_label%%88 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (n! Int))
  (!
   (= (req%vstd.atomic.impl&%13.fetch_and. self! pre%perm! n!) (=>
     %%global_location_label%%88
     (= (vstd.atomic.impl&%13.id.? (Poly%vstd.atomic.PAtomicI8. self!)) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic
       (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
          (Poly%vstd.atomic.PermissionI8. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%13.fetch_and. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__13.fetch_and._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__13.fetch_and._definition
)))
(declare-fun ens%vstd.atomic.impl&%13.fetch_and. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  vstd.atomic.PermissionI8. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (perm!
    vstd.atomic.PermissionI8.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%13.fetch_and. self! pre%perm! perm! n! ret!) (and
     (iInv 8 ret!)
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           perm!
       ))))
      ) (iClip 8 (bitand (I (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
           (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%13.fetch_and. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__13.fetch_and._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__13.fetch_and._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI8::fetch_or
(declare-fun req%vstd.atomic.impl&%13.fetch_or. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  Int
 ) Bool
)
(declare-const %%global_location_label%%89 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (n! Int))
  (!
   (= (req%vstd.atomic.impl&%13.fetch_or. self! pre%perm! n!) (=>
     %%global_location_label%%89
     (= (vstd.atomic.impl&%13.id.? (Poly%vstd.atomic.PAtomicI8. self!)) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic
       (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
          (Poly%vstd.atomic.PermissionI8. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%13.fetch_or. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__13.fetch_or._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__13.fetch_or._definition
)))
(declare-fun ens%vstd.atomic.impl&%13.fetch_or. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  vstd.atomic.PermissionI8. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (perm!
    vstd.atomic.PermissionI8.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%13.fetch_or. self! pre%perm! perm! n! ret!) (and
     (iInv 8 ret!)
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           perm!
       ))))
      ) (iClip 8 (bitor (I (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
           (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%13.fetch_or. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__13.fetch_or._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__13.fetch_or._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI8::fetch_xor
(declare-fun req%vstd.atomic.impl&%13.fetch_xor. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  Int
 ) Bool
)
(declare-const %%global_location_label%%90 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (n! Int))
  (!
   (= (req%vstd.atomic.impl&%13.fetch_xor. self! pre%perm! n!) (=>
     %%global_location_label%%90
     (= (vstd.atomic.impl&%13.id.? (Poly%vstd.atomic.PAtomicI8. self!)) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic
       (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
          (Poly%vstd.atomic.PermissionI8. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%13.fetch_xor. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__13.fetch_xor._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__13.fetch_xor._definition
)))
(declare-fun ens%vstd.atomic.impl&%13.fetch_xor. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  vstd.atomic.PermissionI8. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (perm!
    vstd.atomic.PermissionI8.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%13.fetch_xor. self! pre%perm! perm! n! ret!) (and
     (iInv 8 ret!)
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           perm!
       ))))
      ) (iClip 8 (bitxor (I (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
           (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%13.fetch_xor. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__13.fetch_xor._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__13.fetch_xor._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI8::fetch_nand
(declare-fun req%vstd.atomic.impl&%13.fetch_nand. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  Int
 ) Bool
)
(declare-const %%global_location_label%%91 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (n! Int))
  (!
   (= (req%vstd.atomic.impl&%13.fetch_nand. self! pre%perm! n!) (=>
     %%global_location_label%%91
     (= (vstd.atomic.impl&%13.id.? (Poly%vstd.atomic.PAtomicI8. self!)) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic
       (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
          (Poly%vstd.atomic.PermissionI8. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%13.fetch_nand. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__13.fetch_nand._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__13.fetch_nand._definition
)))
(declare-fun ens%vstd.atomic.impl&%13.fetch_nand. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  vstd.atomic.PermissionI8. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (perm!
    vstd.atomic.PermissionI8.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%13.fetch_nand. self! pre%perm! perm! n! ret!) (and
     (iInv 8 ret!)
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           perm!
       ))))
      ) (bitnot (I (iClip 8 (bitand (I (vstd.atomic.PermissionDataI8./PermissionDataI8/value
            (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
               (Poly%vstd.atomic.PermissionI8. pre%perm!)
           ))))
          ) (I n!)
   )))))))
   :pattern ((ens%vstd.atomic.impl&%13.fetch_nand. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__13.fetch_nand._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__13.fetch_nand._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI8::fetch_max
(declare-fun req%vstd.atomic.impl&%13.fetch_max. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  Int
 ) Bool
)
(declare-const %%global_location_label%%92 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (n! Int))
  (!
   (= (req%vstd.atomic.impl&%13.fetch_max. self! pre%perm! n!) (=>
     %%global_location_label%%92
     (= (vstd.atomic.impl&%13.id.? (Poly%vstd.atomic.PAtomicI8. self!)) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic
       (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
          (Poly%vstd.atomic.PermissionI8. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%13.fetch_max. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__13.fetch_max._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__13.fetch_max._definition
)))
(declare-fun ens%vstd.atomic.impl&%13.fetch_max. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  vstd.atomic.PermissionI8. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (perm!
    vstd.atomic.PermissionI8.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%13.fetch_max. self! pre%perm! perm! n! ret!) (and
     (iInv 8 ret!)
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           perm!
       ))))
      ) (ite
       (> (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
          (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
             pre%perm!
         ))))
        ) n!
       )
       (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
         (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%13.fetch_max. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__13.fetch_max._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__13.fetch_max._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI8::fetch_min
(declare-fun req%vstd.atomic.impl&%13.fetch_min. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  Int
 ) Bool
)
(declare-const %%global_location_label%%93 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (n! Int))
  (!
   (= (req%vstd.atomic.impl&%13.fetch_min. self! pre%perm! n!) (=>
     %%global_location_label%%93
     (= (vstd.atomic.impl&%13.id.? (Poly%vstd.atomic.PAtomicI8. self!)) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic
       (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
          (Poly%vstd.atomic.PermissionI8. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%13.fetch_min. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__13.fetch_min._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__13.fetch_min._definition
)))
(declare-fun ens%vstd.atomic.impl&%13.fetch_min. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  vstd.atomic.PermissionI8. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (perm!
    vstd.atomic.PermissionI8.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%13.fetch_min. self! pre%perm! perm! n! ret!) (and
     (iInv 8 ret!)
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           perm!
       ))))
      ) (ite
       (< (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
          (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
             pre%perm!
         ))))
        ) n!
       )
       (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
         (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%13.fetch_min. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__13.fetch_min._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__13.fetch_min._definition
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
(declare-const %%global_location_label%%94 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (perm! vstd.atomic.PermissionI16.)) (!
   (= (req%vstd.atomic.impl&%15.load. self! perm!) (=>
     %%global_location_label%%94
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

;; Function-Specs crate::vstd::atomic::PAtomicI16::store
(declare-fun req%vstd.atomic.impl&%15.store. (vstd.atomic.PAtomicI16. vstd.atomic.PermissionI16.
  Int
 ) Bool
)
(declare-const %%global_location_label%%95 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (v!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%15.store. self! pre%perm! v!) (=>
     %%global_location_label%%95
     (= (vstd.atomic.impl&%15.id.? (Poly%vstd.atomic.PAtomicI16. self!)) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic
       (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
          (Poly%vstd.atomic.PermissionI16. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%15.store. self! pre%perm! v!))
   :qid internal_req__vstd.atomic.impl&__15.store._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__15.store._definition
)))
(declare-fun ens%vstd.atomic.impl&%15.store. (vstd.atomic.PAtomicI16. vstd.atomic.PermissionI16.
  vstd.atomic.PermissionI16. Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (perm!
    vstd.atomic.PermissionI16.
   ) (v! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%15.store. self! pre%perm! perm! v!) (and
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           perm!
       ))))
      ) v!
     )
     (= (vstd.atomic.impl&%15.id.? (Poly%vstd.atomic.PAtomicI16. self!)) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic
       (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
          (Poly%vstd.atomic.PermissionI16. perm!)
   )))))))
   :pattern ((ens%vstd.atomic.impl&%15.store. self! pre%perm! perm! v!))
   :qid internal_ens__vstd.atomic.impl&__15.store._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__15.store._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI16::compare_exchange
(declare-fun req%vstd.atomic.impl&%15.compare_exchange. (vstd.atomic.PAtomicI16. vstd.atomic.PermissionI16.
  Int Int
 ) Bool
)
(declare-const %%global_location_label%%96 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (current!
    Int
   ) (new! Int)
  ) (!
   (= (req%vstd.atomic.impl&%15.compare_exchange. self! pre%perm! current! new!) (=>
     %%global_location_label%%96
     (= (vstd.atomic.impl&%15.id.? (Poly%vstd.atomic.PAtomicI16. self!)) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic
       (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
          (Poly%vstd.atomic.PermissionI16. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%15.compare_exchange. self! pre%perm! current! new!))
   :qid internal_req__vstd.atomic.impl&__15.compare_exchange._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__15.compare_exchange._definition
)))
(declare-fun ens%vstd.atomic.impl&%15.compare_exchange. (vstd.atomic.PAtomicI16. vstd.atomic.PermissionI16.
  vstd.atomic.PermissionI16. Int Int core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (perm!
    vstd.atomic.PermissionI16.
   ) (current! Int) (new! Int) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd.atomic.impl&%15.compare_exchange. self! pre%perm! perm! current! new!
     ret!
    ) (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ (SINT 16) $ (
        SINT 16
     )))
     (and
      (= (vstd.atomic.impl&%15.id.? (Poly%vstd.atomic.PAtomicI16. self!)) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic
        (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
           (Poly%vstd.atomic.PermissionI16. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%I (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
             (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
                pre%perm!
          ))))))
          (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
             (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
            (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
               pre%perm!
       ))))))))
       (let
        ((r$ (%I (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (not (= current! (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
              (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
                 pre%perm!
          )))))))
          (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
             (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
                perm!
            ))))
           ) (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
             (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
                pre%perm!
         )))))))
         (= r$ (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
            (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd.atomic.impl&%15.compare_exchange. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd.atomic.impl&__15.compare_exchange._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__15.compare_exchange._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI16::compare_exchange_weak
(declare-fun req%vstd.atomic.impl&%15.compare_exchange_weak. (vstd.atomic.PAtomicI16.
  vstd.atomic.PermissionI16. Int Int
 ) Bool
)
(declare-const %%global_location_label%%97 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (current!
    Int
   ) (new! Int)
  ) (!
   (= (req%vstd.atomic.impl&%15.compare_exchange_weak. self! pre%perm! current! new!)
    (=>
     %%global_location_label%%97
     (= (vstd.atomic.impl&%15.id.? (Poly%vstd.atomic.PAtomicI16. self!)) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic
       (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
          (Poly%vstd.atomic.PermissionI16. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%15.compare_exchange_weak. self! pre%perm! current!
     new!
   ))
   :qid internal_req__vstd.atomic.impl&__15.compare_exchange_weak._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__15.compare_exchange_weak._definition
)))
(declare-fun ens%vstd.atomic.impl&%15.compare_exchange_weak. (vstd.atomic.PAtomicI16.
  vstd.atomic.PermissionI16. vstd.atomic.PermissionI16. Int Int core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (perm!
    vstd.atomic.PermissionI16.
   ) (current! Int) (new! Int) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd.atomic.impl&%15.compare_exchange_weak. self! pre%perm! perm! current!
     new! ret!
    ) (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ (SINT 16) $ (
        SINT 16
     )))
     (and
      (= (vstd.atomic.impl&%15.id.? (Poly%vstd.atomic.PAtomicI16. self!)) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic
        (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
           (Poly%vstd.atomic.PermissionI16. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%I (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
             (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
                pre%perm!
          ))))))
          (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
             (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
            (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
               pre%perm!
       ))))))))
       (let
        ((r$ (%I (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
            (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
               perm!
           ))))
          ) (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
            (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
               pre%perm!
         ))))))
         (= r$ (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
            (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd.atomic.impl&%15.compare_exchange_weak. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd.atomic.impl&__15.compare_exchange_weak._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__15.compare_exchange_weak._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI16::swap
(declare-fun req%vstd.atomic.impl&%15.swap. (vstd.atomic.PAtomicI16. vstd.atomic.PermissionI16.
  Int
 ) Bool
)
(declare-const %%global_location_label%%98 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (v!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%15.swap. self! pre%perm! v!) (=>
     %%global_location_label%%98
     (= (vstd.atomic.impl&%15.id.? (Poly%vstd.atomic.PAtomicI16. self!)) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic
       (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
          (Poly%vstd.atomic.PermissionI16. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%15.swap. self! pre%perm! v!))
   :qid internal_req__vstd.atomic.impl&__15.swap._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__15.swap._definition
)))
(declare-fun ens%vstd.atomic.impl&%15.swap. (vstd.atomic.PAtomicI16. vstd.atomic.PermissionI16.
  vstd.atomic.PermissionI16. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (perm!
    vstd.atomic.PermissionI16.
   ) (v! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%15.swap. self! pre%perm! perm! v! ret!) (and
     (iInv 16 ret!)
     (and
      (and
       (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
          (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
             perm!
         ))))
        ) v!
       )
       (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
          (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
             pre%perm!
         ))))
        ) ret!
      ))
      (= (vstd.atomic.impl&%15.id.? (Poly%vstd.atomic.PAtomicI16. self!)) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic
        (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
           (Poly%vstd.atomic.PermissionI16. perm!)
   ))))))))
   :pattern ((ens%vstd.atomic.impl&%15.swap. self! pre%perm! perm! v! ret!))
   :qid internal_ens__vstd.atomic.impl&__15.swap._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__15.swap._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI16::into_inner
(declare-fun req%vstd.atomic.impl&%15.into_inner. (vstd.atomic.PAtomicI16. vstd.atomic.PermissionI16.)
 Bool
)
(declare-const %%global_location_label%%99 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (perm! vstd.atomic.PermissionI16.)) (!
   (= (req%vstd.atomic.impl&%15.into_inner. self! perm!) (=>
     %%global_location_label%%99
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

;; Function-Axioms crate::vstd::atomic::wrapping_add_i16
(assert
 (fuel_bool_default fuel%vstd.atomic.wrapping_add_i16.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.wrapping_add_i16.)
  (forall ((a! Poly) (b! Poly)) (!
    (= (vstd.atomic.wrapping_add_i16.? a! b!) (ite
      (> (Add (%I a!) (%I b!)) 32767)
      (Sub (Add (%I a!) (%I b!)) (Add (Sub 32767 (- 32768)) 1))
      (ite
       (< (Add (%I a!) (%I b!)) (- 32768))
       (Add (Add (%I a!) (%I b!)) (Add (Sub 32767 (- 32768)) 1))
       (Add (%I a!) (%I b!))
    )))
    :pattern ((vstd.atomic.wrapping_add_i16.? a! b!))
    :qid internal_vstd.atomic.wrapping_add_i16.?_definition
    :skolemid skolem_internal_vstd.atomic.wrapping_add_i16.?_definition
))))

;; Function-Specs crate::vstd::atomic::PAtomicI16::fetch_add_wrapping
(declare-fun req%vstd.atomic.impl&%15.fetch_add_wrapping. (vstd.atomic.PAtomicI16.
  vstd.atomic.PermissionI16. Int
 ) Bool
)
(declare-const %%global_location_label%%100 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%15.fetch_add_wrapping. self! pre%perm! n!) (=>
     %%global_location_label%%100
     (= (vstd.atomic.impl&%15.id.? (Poly%vstd.atomic.PAtomicI16. self!)) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic
       (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
          (Poly%vstd.atomic.PermissionI16. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%15.fetch_add_wrapping. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__15.fetch_add_wrapping._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__15.fetch_add_wrapping._definition
)))
(declare-fun ens%vstd.atomic.impl&%15.fetch_add_wrapping. (vstd.atomic.PAtomicI16.
  vstd.atomic.PermissionI16. vstd.atomic.PermissionI16. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (perm!
    vstd.atomic.PermissionI16.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%15.fetch_add_wrapping. self! pre%perm! perm! n! ret!) (and
     (iInv 16 ret!)
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           perm!
       ))))
      ) (vstd.atomic.wrapping_add_i16.? (I (vstd.atomic.PermissionDataI16./PermissionDataI16/value
         (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
            (Poly%vstd.atomic.PermissionI16. pre%perm!)
        ))))
       ) (I n!)
   ))))
   :pattern ((ens%vstd.atomic.impl&%15.fetch_add_wrapping. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__15.fetch_add_wrapping._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__15.fetch_add_wrapping._definition
)))

;; Function-Axioms crate::vstd::atomic::wrapping_sub_i16
(assert
 (fuel_bool_default fuel%vstd.atomic.wrapping_sub_i16.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.wrapping_sub_i16.)
  (forall ((a! Poly) (b! Poly)) (!
    (= (vstd.atomic.wrapping_sub_i16.? a! b!) (ite
      (> (Sub (%I a!) (%I b!)) 32767)
      (Sub (Sub (%I a!) (%I b!)) (Add (Sub 32767 (- 32768)) 1))
      (ite
       (< (Sub (%I a!) (%I b!)) (- 32768))
       (Add (Sub (%I a!) (%I b!)) (Add (Sub 32767 (- 32768)) 1))
       (Sub (%I a!) (%I b!))
    )))
    :pattern ((vstd.atomic.wrapping_sub_i16.? a! b!))
    :qid internal_vstd.atomic.wrapping_sub_i16.?_definition
    :skolemid skolem_internal_vstd.atomic.wrapping_sub_i16.?_definition
))))

;; Function-Specs crate::vstd::atomic::PAtomicI16::fetch_sub_wrapping
(declare-fun req%vstd.atomic.impl&%15.fetch_sub_wrapping. (vstd.atomic.PAtomicI16.
  vstd.atomic.PermissionI16. Int
 ) Bool
)
(declare-const %%global_location_label%%101 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%15.fetch_sub_wrapping. self! pre%perm! n!) (=>
     %%global_location_label%%101
     (= (vstd.atomic.impl&%15.id.? (Poly%vstd.atomic.PAtomicI16. self!)) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic
       (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
          (Poly%vstd.atomic.PermissionI16. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%15.fetch_sub_wrapping. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__15.fetch_sub_wrapping._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__15.fetch_sub_wrapping._definition
)))
(declare-fun ens%vstd.atomic.impl&%15.fetch_sub_wrapping. (vstd.atomic.PAtomicI16.
  vstd.atomic.PermissionI16. vstd.atomic.PermissionI16. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (perm!
    vstd.atomic.PermissionI16.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%15.fetch_sub_wrapping. self! pre%perm! perm! n! ret!) (and
     (iInv 16 ret!)
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           perm!
       ))))
      ) (vstd.atomic.wrapping_sub_i16.? (I (vstd.atomic.PermissionDataI16./PermissionDataI16/value
         (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
            (Poly%vstd.atomic.PermissionI16. pre%perm!)
        ))))
       ) (I n!)
   ))))
   :pattern ((ens%vstd.atomic.impl&%15.fetch_sub_wrapping. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__15.fetch_sub_wrapping._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__15.fetch_sub_wrapping._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI16::fetch_and
(declare-fun req%vstd.atomic.impl&%15.fetch_and. (vstd.atomic.PAtomicI16. vstd.atomic.PermissionI16.
  Int
 ) Bool
)
(declare-const %%global_location_label%%102 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%15.fetch_and. self! pre%perm! n!) (=>
     %%global_location_label%%102
     (= (vstd.atomic.impl&%15.id.? (Poly%vstd.atomic.PAtomicI16. self!)) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic
       (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
          (Poly%vstd.atomic.PermissionI16. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%15.fetch_and. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__15.fetch_and._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__15.fetch_and._definition
)))
(declare-fun ens%vstd.atomic.impl&%15.fetch_and. (vstd.atomic.PAtomicI16. vstd.atomic.PermissionI16.
  vstd.atomic.PermissionI16. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (perm!
    vstd.atomic.PermissionI16.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%15.fetch_and. self! pre%perm! perm! n! ret!) (and
     (iInv 16 ret!)
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           perm!
       ))))
      ) (iClip 16 (bitand (I (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
           (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%15.fetch_and. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__15.fetch_and._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__15.fetch_and._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI16::fetch_or
(declare-fun req%vstd.atomic.impl&%15.fetch_or. (vstd.atomic.PAtomicI16. vstd.atomic.PermissionI16.
  Int
 ) Bool
)
(declare-const %%global_location_label%%103 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%15.fetch_or. self! pre%perm! n!) (=>
     %%global_location_label%%103
     (= (vstd.atomic.impl&%15.id.? (Poly%vstd.atomic.PAtomicI16. self!)) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic
       (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
          (Poly%vstd.atomic.PermissionI16. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%15.fetch_or. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__15.fetch_or._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__15.fetch_or._definition
)))
(declare-fun ens%vstd.atomic.impl&%15.fetch_or. (vstd.atomic.PAtomicI16. vstd.atomic.PermissionI16.
  vstd.atomic.PermissionI16. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (perm!
    vstd.atomic.PermissionI16.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%15.fetch_or. self! pre%perm! perm! n! ret!) (and
     (iInv 16 ret!)
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           perm!
       ))))
      ) (iClip 16 (bitor (I (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
           (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%15.fetch_or. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__15.fetch_or._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__15.fetch_or._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI16::fetch_xor
(declare-fun req%vstd.atomic.impl&%15.fetch_xor. (vstd.atomic.PAtomicI16. vstd.atomic.PermissionI16.
  Int
 ) Bool
)
(declare-const %%global_location_label%%104 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%15.fetch_xor. self! pre%perm! n!) (=>
     %%global_location_label%%104
     (= (vstd.atomic.impl&%15.id.? (Poly%vstd.atomic.PAtomicI16. self!)) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic
       (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
          (Poly%vstd.atomic.PermissionI16. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%15.fetch_xor. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__15.fetch_xor._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__15.fetch_xor._definition
)))
(declare-fun ens%vstd.atomic.impl&%15.fetch_xor. (vstd.atomic.PAtomicI16. vstd.atomic.PermissionI16.
  vstd.atomic.PermissionI16. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (perm!
    vstd.atomic.PermissionI16.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%15.fetch_xor. self! pre%perm! perm! n! ret!) (and
     (iInv 16 ret!)
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           perm!
       ))))
      ) (iClip 16 (bitxor (I (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
           (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%15.fetch_xor. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__15.fetch_xor._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__15.fetch_xor._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI16::fetch_nand
(declare-fun req%vstd.atomic.impl&%15.fetch_nand. (vstd.atomic.PAtomicI16. vstd.atomic.PermissionI16.
  Int
 ) Bool
)
(declare-const %%global_location_label%%105 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%15.fetch_nand. self! pre%perm! n!) (=>
     %%global_location_label%%105
     (= (vstd.atomic.impl&%15.id.? (Poly%vstd.atomic.PAtomicI16. self!)) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic
       (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
          (Poly%vstd.atomic.PermissionI16. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%15.fetch_nand. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__15.fetch_nand._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__15.fetch_nand._definition
)))
(declare-fun ens%vstd.atomic.impl&%15.fetch_nand. (vstd.atomic.PAtomicI16. vstd.atomic.PermissionI16.
  vstd.atomic.PermissionI16. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (perm!
    vstd.atomic.PermissionI16.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%15.fetch_nand. self! pre%perm! perm! n! ret!) (and
     (iInv 16 ret!)
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           perm!
       ))))
      ) (bitnot (I (iClip 16 (bitand (I (vstd.atomic.PermissionDataI16./PermissionDataI16/value
            (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
               (Poly%vstd.atomic.PermissionI16. pre%perm!)
           ))))
          ) (I n!)
   )))))))
   :pattern ((ens%vstd.atomic.impl&%15.fetch_nand. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__15.fetch_nand._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__15.fetch_nand._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI16::fetch_max
(declare-fun req%vstd.atomic.impl&%15.fetch_max. (vstd.atomic.PAtomicI16. vstd.atomic.PermissionI16.
  Int
 ) Bool
)
(declare-const %%global_location_label%%106 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%15.fetch_max. self! pre%perm! n!) (=>
     %%global_location_label%%106
     (= (vstd.atomic.impl&%15.id.? (Poly%vstd.atomic.PAtomicI16. self!)) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic
       (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
          (Poly%vstd.atomic.PermissionI16. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%15.fetch_max. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__15.fetch_max._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__15.fetch_max._definition
)))
(declare-fun ens%vstd.atomic.impl&%15.fetch_max. (vstd.atomic.PAtomicI16. vstd.atomic.PermissionI16.
  vstd.atomic.PermissionI16. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (perm!
    vstd.atomic.PermissionI16.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%15.fetch_max. self! pre%perm! perm! n! ret!) (and
     (iInv 16 ret!)
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           perm!
       ))))
      ) (ite
       (> (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
          (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
             pre%perm!
         ))))
        ) n!
       )
       (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
         (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%15.fetch_max. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__15.fetch_max._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__15.fetch_max._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI16::fetch_min
(declare-fun req%vstd.atomic.impl&%15.fetch_min. (vstd.atomic.PAtomicI16. vstd.atomic.PermissionI16.
  Int
 ) Bool
)
(declare-const %%global_location_label%%107 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%15.fetch_min. self! pre%perm! n!) (=>
     %%global_location_label%%107
     (= (vstd.atomic.impl&%15.id.? (Poly%vstd.atomic.PAtomicI16. self!)) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic
       (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
          (Poly%vstd.atomic.PermissionI16. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%15.fetch_min. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__15.fetch_min._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__15.fetch_min._definition
)))
(declare-fun ens%vstd.atomic.impl&%15.fetch_min. (vstd.atomic.PAtomicI16. vstd.atomic.PermissionI16.
  vstd.atomic.PermissionI16. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (perm!
    vstd.atomic.PermissionI16.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%15.fetch_min. self! pre%perm! perm! n! ret!) (and
     (iInv 16 ret!)
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           perm!
       ))))
      ) (ite
       (< (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
          (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
             pre%perm!
         ))))
        ) n!
       )
       (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
         (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%15.fetch_min. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__15.fetch_min._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__15.fetch_min._definition
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
(declare-const %%global_location_label%%108 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (perm! vstd.atomic.PermissionI32.)) (!
   (= (req%vstd.atomic.impl&%17.load. self! perm!) (=>
     %%global_location_label%%108
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

;; Function-Specs crate::vstd::atomic::PAtomicI32::store
(declare-fun req%vstd.atomic.impl&%17.store. (vstd.atomic.PAtomicI32. vstd.atomic.PermissionI32.
  Int
 ) Bool
)
(declare-const %%global_location_label%%109 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (v!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%17.store. self! pre%perm! v!) (=>
     %%global_location_label%%109
     (= (vstd.atomic.impl&%17.id.? (Poly%vstd.atomic.PAtomicI32. self!)) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic
       (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
          (Poly%vstd.atomic.PermissionI32. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%17.store. self! pre%perm! v!))
   :qid internal_req__vstd.atomic.impl&__17.store._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__17.store._definition
)))
(declare-fun ens%vstd.atomic.impl&%17.store. (vstd.atomic.PAtomicI32. vstd.atomic.PermissionI32.
  vstd.atomic.PermissionI32. Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (perm!
    vstd.atomic.PermissionI32.
   ) (v! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%17.store. self! pre%perm! perm! v!) (and
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           perm!
       ))))
      ) v!
     )
     (= (vstd.atomic.impl&%17.id.? (Poly%vstd.atomic.PAtomicI32. self!)) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic
       (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
          (Poly%vstd.atomic.PermissionI32. perm!)
   )))))))
   :pattern ((ens%vstd.atomic.impl&%17.store. self! pre%perm! perm! v!))
   :qid internal_ens__vstd.atomic.impl&__17.store._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__17.store._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI32::compare_exchange
(declare-fun req%vstd.atomic.impl&%17.compare_exchange. (vstd.atomic.PAtomicI32. vstd.atomic.PermissionI32.
  Int Int
 ) Bool
)
(declare-const %%global_location_label%%110 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (current!
    Int
   ) (new! Int)
  ) (!
   (= (req%vstd.atomic.impl&%17.compare_exchange. self! pre%perm! current! new!) (=>
     %%global_location_label%%110
     (= (vstd.atomic.impl&%17.id.? (Poly%vstd.atomic.PAtomicI32. self!)) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic
       (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
          (Poly%vstd.atomic.PermissionI32. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%17.compare_exchange. self! pre%perm! current! new!))
   :qid internal_req__vstd.atomic.impl&__17.compare_exchange._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__17.compare_exchange._definition
)))
(declare-fun ens%vstd.atomic.impl&%17.compare_exchange. (vstd.atomic.PAtomicI32. vstd.atomic.PermissionI32.
  vstd.atomic.PermissionI32. Int Int core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (perm!
    vstd.atomic.PermissionI32.
   ) (current! Int) (new! Int) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd.atomic.impl&%17.compare_exchange. self! pre%perm! perm! current! new!
     ret!
    ) (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ (SINT 32) $ (
        SINT 32
     )))
     (and
      (= (vstd.atomic.impl&%17.id.? (Poly%vstd.atomic.PAtomicI32. self!)) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic
        (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
           (Poly%vstd.atomic.PermissionI32. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%I (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
             (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
                pre%perm!
          ))))))
          (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
             (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
            (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
               pre%perm!
       ))))))))
       (let
        ((r$ (%I (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (not (= current! (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
              (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
                 pre%perm!
          )))))))
          (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
             (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
                perm!
            ))))
           ) (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
             (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
                pre%perm!
         )))))))
         (= r$ (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
            (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd.atomic.impl&%17.compare_exchange. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd.atomic.impl&__17.compare_exchange._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__17.compare_exchange._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI32::compare_exchange_weak
(declare-fun req%vstd.atomic.impl&%17.compare_exchange_weak. (vstd.atomic.PAtomicI32.
  vstd.atomic.PermissionI32. Int Int
 ) Bool
)
(declare-const %%global_location_label%%111 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (current!
    Int
   ) (new! Int)
  ) (!
   (= (req%vstd.atomic.impl&%17.compare_exchange_weak. self! pre%perm! current! new!)
    (=>
     %%global_location_label%%111
     (= (vstd.atomic.impl&%17.id.? (Poly%vstd.atomic.PAtomicI32. self!)) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic
       (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
          (Poly%vstd.atomic.PermissionI32. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%17.compare_exchange_weak. self! pre%perm! current!
     new!
   ))
   :qid internal_req__vstd.atomic.impl&__17.compare_exchange_weak._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__17.compare_exchange_weak._definition
)))
(declare-fun ens%vstd.atomic.impl&%17.compare_exchange_weak. (vstd.atomic.PAtomicI32.
  vstd.atomic.PermissionI32. vstd.atomic.PermissionI32. Int Int core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (perm!
    vstd.atomic.PermissionI32.
   ) (current! Int) (new! Int) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd.atomic.impl&%17.compare_exchange_weak. self! pre%perm! perm! current!
     new! ret!
    ) (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ (SINT 32) $ (
        SINT 32
     )))
     (and
      (= (vstd.atomic.impl&%17.id.? (Poly%vstd.atomic.PAtomicI32. self!)) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic
        (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
           (Poly%vstd.atomic.PermissionI32. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%I (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
             (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
                pre%perm!
          ))))))
          (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
             (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
            (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
               pre%perm!
       ))))))))
       (let
        ((r$ (%I (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
            (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
               perm!
           ))))
          ) (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
            (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
               pre%perm!
         ))))))
         (= r$ (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
            (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd.atomic.impl&%17.compare_exchange_weak. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd.atomic.impl&__17.compare_exchange_weak._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__17.compare_exchange_weak._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI32::swap
(declare-fun req%vstd.atomic.impl&%17.swap. (vstd.atomic.PAtomicI32. vstd.atomic.PermissionI32.
  Int
 ) Bool
)
(declare-const %%global_location_label%%112 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (v!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%17.swap. self! pre%perm! v!) (=>
     %%global_location_label%%112
     (= (vstd.atomic.impl&%17.id.? (Poly%vstd.atomic.PAtomicI32. self!)) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic
       (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
          (Poly%vstd.atomic.PermissionI32. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%17.swap. self! pre%perm! v!))
   :qid internal_req__vstd.atomic.impl&__17.swap._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__17.swap._definition
)))
(declare-fun ens%vstd.atomic.impl&%17.swap. (vstd.atomic.PAtomicI32. vstd.atomic.PermissionI32.
  vstd.atomic.PermissionI32. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (perm!
    vstd.atomic.PermissionI32.
   ) (v! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%17.swap. self! pre%perm! perm! v! ret!) (and
     (iInv 32 ret!)
     (and
      (and
       (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
          (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
             perm!
         ))))
        ) v!
       )
       (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
          (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
             pre%perm!
         ))))
        ) ret!
      ))
      (= (vstd.atomic.impl&%17.id.? (Poly%vstd.atomic.PAtomicI32. self!)) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic
        (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
           (Poly%vstd.atomic.PermissionI32. perm!)
   ))))))))
   :pattern ((ens%vstd.atomic.impl&%17.swap. self! pre%perm! perm! v! ret!))
   :qid internal_ens__vstd.atomic.impl&__17.swap._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__17.swap._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI32::into_inner
(declare-fun req%vstd.atomic.impl&%17.into_inner. (vstd.atomic.PAtomicI32. vstd.atomic.PermissionI32.)
 Bool
)
(declare-const %%global_location_label%%113 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (perm! vstd.atomic.PermissionI32.)) (!
   (= (req%vstd.atomic.impl&%17.into_inner. self! perm!) (=>
     %%global_location_label%%113
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

;; Function-Axioms crate::vstd::atomic::wrapping_add_i32
(assert
 (fuel_bool_default fuel%vstd.atomic.wrapping_add_i32.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.wrapping_add_i32.)
  (forall ((a! Poly) (b! Poly)) (!
    (= (vstd.atomic.wrapping_add_i32.? a! b!) (ite
      (> (Add (%I a!) (%I b!)) 2147483647)
      (Sub (Add (%I a!) (%I b!)) (Add (Sub 2147483647 (- 2147483648)) 1))
      (ite
       (< (Add (%I a!) (%I b!)) (- 2147483648))
       (Add (Add (%I a!) (%I b!)) (Add (Sub 2147483647 (- 2147483648)) 1))
       (Add (%I a!) (%I b!))
    )))
    :pattern ((vstd.atomic.wrapping_add_i32.? a! b!))
    :qid internal_vstd.atomic.wrapping_add_i32.?_definition
    :skolemid skolem_internal_vstd.atomic.wrapping_add_i32.?_definition
))))

;; Function-Specs crate::vstd::atomic::PAtomicI32::fetch_add_wrapping
(declare-fun req%vstd.atomic.impl&%17.fetch_add_wrapping. (vstd.atomic.PAtomicI32.
  vstd.atomic.PermissionI32. Int
 ) Bool
)
(declare-const %%global_location_label%%114 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%17.fetch_add_wrapping. self! pre%perm! n!) (=>
     %%global_location_label%%114
     (= (vstd.atomic.impl&%17.id.? (Poly%vstd.atomic.PAtomicI32. self!)) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic
       (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
          (Poly%vstd.atomic.PermissionI32. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%17.fetch_add_wrapping. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__17.fetch_add_wrapping._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__17.fetch_add_wrapping._definition
)))
(declare-fun ens%vstd.atomic.impl&%17.fetch_add_wrapping. (vstd.atomic.PAtomicI32.
  vstd.atomic.PermissionI32. vstd.atomic.PermissionI32. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (perm!
    vstd.atomic.PermissionI32.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%17.fetch_add_wrapping. self! pre%perm! perm! n! ret!) (and
     (iInv 32 ret!)
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           perm!
       ))))
      ) (vstd.atomic.wrapping_add_i32.? (I (vstd.atomic.PermissionDataI32./PermissionDataI32/value
         (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
            (Poly%vstd.atomic.PermissionI32. pre%perm!)
        ))))
       ) (I n!)
   ))))
   :pattern ((ens%vstd.atomic.impl&%17.fetch_add_wrapping. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__17.fetch_add_wrapping._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__17.fetch_add_wrapping._definition
)))

;; Function-Axioms crate::vstd::atomic::wrapping_sub_i32
(assert
 (fuel_bool_default fuel%vstd.atomic.wrapping_sub_i32.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.wrapping_sub_i32.)
  (forall ((a! Poly) (b! Poly)) (!
    (= (vstd.atomic.wrapping_sub_i32.? a! b!) (ite
      (> (Sub (%I a!) (%I b!)) 2147483647)
      (Sub (Sub (%I a!) (%I b!)) (Add (Sub 2147483647 (- 2147483648)) 1))
      (ite
       (< (Sub (%I a!) (%I b!)) (- 2147483648))
       (Add (Sub (%I a!) (%I b!)) (Add (Sub 2147483647 (- 2147483648)) 1))
       (Sub (%I a!) (%I b!))
    )))
    :pattern ((vstd.atomic.wrapping_sub_i32.? a! b!))
    :qid internal_vstd.atomic.wrapping_sub_i32.?_definition
    :skolemid skolem_internal_vstd.atomic.wrapping_sub_i32.?_definition
))))

;; Function-Specs crate::vstd::atomic::PAtomicI32::fetch_sub_wrapping
(declare-fun req%vstd.atomic.impl&%17.fetch_sub_wrapping. (vstd.atomic.PAtomicI32.
  vstd.atomic.PermissionI32. Int
 ) Bool
)
(declare-const %%global_location_label%%115 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%17.fetch_sub_wrapping. self! pre%perm! n!) (=>
     %%global_location_label%%115
     (= (vstd.atomic.impl&%17.id.? (Poly%vstd.atomic.PAtomicI32. self!)) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic
       (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
          (Poly%vstd.atomic.PermissionI32. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%17.fetch_sub_wrapping. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__17.fetch_sub_wrapping._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__17.fetch_sub_wrapping._definition
)))
(declare-fun ens%vstd.atomic.impl&%17.fetch_sub_wrapping. (vstd.atomic.PAtomicI32.
  vstd.atomic.PermissionI32. vstd.atomic.PermissionI32. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (perm!
    vstd.atomic.PermissionI32.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%17.fetch_sub_wrapping. self! pre%perm! perm! n! ret!) (and
     (iInv 32 ret!)
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           perm!
       ))))
      ) (vstd.atomic.wrapping_sub_i32.? (I (vstd.atomic.PermissionDataI32./PermissionDataI32/value
         (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
            (Poly%vstd.atomic.PermissionI32. pre%perm!)
        ))))
       ) (I n!)
   ))))
   :pattern ((ens%vstd.atomic.impl&%17.fetch_sub_wrapping. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__17.fetch_sub_wrapping._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__17.fetch_sub_wrapping._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI32::fetch_and
(declare-fun req%vstd.atomic.impl&%17.fetch_and. (vstd.atomic.PAtomicI32. vstd.atomic.PermissionI32.
  Int
 ) Bool
)
(declare-const %%global_location_label%%116 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%17.fetch_and. self! pre%perm! n!) (=>
     %%global_location_label%%116
     (= (vstd.atomic.impl&%17.id.? (Poly%vstd.atomic.PAtomicI32. self!)) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic
       (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
          (Poly%vstd.atomic.PermissionI32. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%17.fetch_and. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__17.fetch_and._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__17.fetch_and._definition
)))
(declare-fun ens%vstd.atomic.impl&%17.fetch_and. (vstd.atomic.PAtomicI32. vstd.atomic.PermissionI32.
  vstd.atomic.PermissionI32. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (perm!
    vstd.atomic.PermissionI32.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%17.fetch_and. self! pre%perm! perm! n! ret!) (and
     (iInv 32 ret!)
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           perm!
       ))))
      ) (iClip 32 (bitand (I (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
           (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%17.fetch_and. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__17.fetch_and._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__17.fetch_and._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI32::fetch_or
(declare-fun req%vstd.atomic.impl&%17.fetch_or. (vstd.atomic.PAtomicI32. vstd.atomic.PermissionI32.
  Int
 ) Bool
)
(declare-const %%global_location_label%%117 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%17.fetch_or. self! pre%perm! n!) (=>
     %%global_location_label%%117
     (= (vstd.atomic.impl&%17.id.? (Poly%vstd.atomic.PAtomicI32. self!)) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic
       (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
          (Poly%vstd.atomic.PermissionI32. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%17.fetch_or. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__17.fetch_or._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__17.fetch_or._definition
)))
(declare-fun ens%vstd.atomic.impl&%17.fetch_or. (vstd.atomic.PAtomicI32. vstd.atomic.PermissionI32.
  vstd.atomic.PermissionI32. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (perm!
    vstd.atomic.PermissionI32.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%17.fetch_or. self! pre%perm! perm! n! ret!) (and
     (iInv 32 ret!)
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           perm!
       ))))
      ) (iClip 32 (bitor (I (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
           (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%17.fetch_or. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__17.fetch_or._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__17.fetch_or._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI32::fetch_xor
(declare-fun req%vstd.atomic.impl&%17.fetch_xor. (vstd.atomic.PAtomicI32. vstd.atomic.PermissionI32.
  Int
 ) Bool
)
(declare-const %%global_location_label%%118 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%17.fetch_xor. self! pre%perm! n!) (=>
     %%global_location_label%%118
     (= (vstd.atomic.impl&%17.id.? (Poly%vstd.atomic.PAtomicI32. self!)) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic
       (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
          (Poly%vstd.atomic.PermissionI32. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%17.fetch_xor. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__17.fetch_xor._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__17.fetch_xor._definition
)))
(declare-fun ens%vstd.atomic.impl&%17.fetch_xor. (vstd.atomic.PAtomicI32. vstd.atomic.PermissionI32.
  vstd.atomic.PermissionI32. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (perm!
    vstd.atomic.PermissionI32.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%17.fetch_xor. self! pre%perm! perm! n! ret!) (and
     (iInv 32 ret!)
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           perm!
       ))))
      ) (iClip 32 (bitxor (I (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
           (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%17.fetch_xor. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__17.fetch_xor._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__17.fetch_xor._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI32::fetch_nand
(declare-fun req%vstd.atomic.impl&%17.fetch_nand. (vstd.atomic.PAtomicI32. vstd.atomic.PermissionI32.
  Int
 ) Bool
)
(declare-const %%global_location_label%%119 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%17.fetch_nand. self! pre%perm! n!) (=>
     %%global_location_label%%119
     (= (vstd.atomic.impl&%17.id.? (Poly%vstd.atomic.PAtomicI32. self!)) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic
       (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
          (Poly%vstd.atomic.PermissionI32. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%17.fetch_nand. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__17.fetch_nand._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__17.fetch_nand._definition
)))
(declare-fun ens%vstd.atomic.impl&%17.fetch_nand. (vstd.atomic.PAtomicI32. vstd.atomic.PermissionI32.
  vstd.atomic.PermissionI32. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (perm!
    vstd.atomic.PermissionI32.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%17.fetch_nand. self! pre%perm! perm! n! ret!) (and
     (iInv 32 ret!)
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           perm!
       ))))
      ) (bitnot (I (iClip 32 (bitand (I (vstd.atomic.PermissionDataI32./PermissionDataI32/value
            (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
               (Poly%vstd.atomic.PermissionI32. pre%perm!)
           ))))
          ) (I n!)
   )))))))
   :pattern ((ens%vstd.atomic.impl&%17.fetch_nand. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__17.fetch_nand._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__17.fetch_nand._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI32::fetch_max
(declare-fun req%vstd.atomic.impl&%17.fetch_max. (vstd.atomic.PAtomicI32. vstd.atomic.PermissionI32.
  Int
 ) Bool
)
(declare-const %%global_location_label%%120 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%17.fetch_max. self! pre%perm! n!) (=>
     %%global_location_label%%120
     (= (vstd.atomic.impl&%17.id.? (Poly%vstd.atomic.PAtomicI32. self!)) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic
       (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
          (Poly%vstd.atomic.PermissionI32. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%17.fetch_max. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__17.fetch_max._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__17.fetch_max._definition
)))
(declare-fun ens%vstd.atomic.impl&%17.fetch_max. (vstd.atomic.PAtomicI32. vstd.atomic.PermissionI32.
  vstd.atomic.PermissionI32. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (perm!
    vstd.atomic.PermissionI32.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%17.fetch_max. self! pre%perm! perm! n! ret!) (and
     (iInv 32 ret!)
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           perm!
       ))))
      ) (ite
       (> (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
          (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
             pre%perm!
         ))))
        ) n!
       )
       (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
         (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%17.fetch_max. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__17.fetch_max._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__17.fetch_max._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI32::fetch_min
(declare-fun req%vstd.atomic.impl&%17.fetch_min. (vstd.atomic.PAtomicI32. vstd.atomic.PermissionI32.
  Int
 ) Bool
)
(declare-const %%global_location_label%%121 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%17.fetch_min. self! pre%perm! n!) (=>
     %%global_location_label%%121
     (= (vstd.atomic.impl&%17.id.? (Poly%vstd.atomic.PAtomicI32. self!)) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic
       (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
          (Poly%vstd.atomic.PermissionI32. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%17.fetch_min. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__17.fetch_min._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__17.fetch_min._definition
)))
(declare-fun ens%vstd.atomic.impl&%17.fetch_min. (vstd.atomic.PAtomicI32. vstd.atomic.PermissionI32.
  vstd.atomic.PermissionI32. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (perm!
    vstd.atomic.PermissionI32.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%17.fetch_min. self! pre%perm! perm! n! ret!) (and
     (iInv 32 ret!)
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           perm!
       ))))
      ) (ite
       (< (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
          (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
             pre%perm!
         ))))
        ) n!
       )
       (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
         (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%17.fetch_min. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__17.fetch_min._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__17.fetch_min._definition
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
(declare-const %%global_location_label%%122 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (perm! vstd.atomic.PermissionI64.)) (!
   (= (req%vstd.atomic.impl&%19.load. self! perm!) (=>
     %%global_location_label%%122
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

;; Function-Specs crate::vstd::atomic::PAtomicI64::store
(declare-fun req%vstd.atomic.impl&%19.store. (vstd.atomic.PAtomicI64. vstd.atomic.PermissionI64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%123 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (v!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%19.store. self! pre%perm! v!) (=>
     %%global_location_label%%123
     (= (vstd.atomic.impl&%19.id.? (Poly%vstd.atomic.PAtomicI64. self!)) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic
       (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
          (Poly%vstd.atomic.PermissionI64. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%19.store. self! pre%perm! v!))
   :qid internal_req__vstd.atomic.impl&__19.store._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__19.store._definition
)))
(declare-fun ens%vstd.atomic.impl&%19.store. (vstd.atomic.PAtomicI64. vstd.atomic.PermissionI64.
  vstd.atomic.PermissionI64. Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (perm!
    vstd.atomic.PermissionI64.
   ) (v! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%19.store. self! pre%perm! perm! v!) (and
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           perm!
       ))))
      ) v!
     )
     (= (vstd.atomic.impl&%19.id.? (Poly%vstd.atomic.PAtomicI64. self!)) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic
       (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
          (Poly%vstd.atomic.PermissionI64. perm!)
   )))))))
   :pattern ((ens%vstd.atomic.impl&%19.store. self! pre%perm! perm! v!))
   :qid internal_ens__vstd.atomic.impl&__19.store._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__19.store._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI64::compare_exchange
(declare-fun req%vstd.atomic.impl&%19.compare_exchange. (vstd.atomic.PAtomicI64. vstd.atomic.PermissionI64.
  Int Int
 ) Bool
)
(declare-const %%global_location_label%%124 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (current!
    Int
   ) (new! Int)
  ) (!
   (= (req%vstd.atomic.impl&%19.compare_exchange. self! pre%perm! current! new!) (=>
     %%global_location_label%%124
     (= (vstd.atomic.impl&%19.id.? (Poly%vstd.atomic.PAtomicI64. self!)) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic
       (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
          (Poly%vstd.atomic.PermissionI64. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%19.compare_exchange. self! pre%perm! current! new!))
   :qid internal_req__vstd.atomic.impl&__19.compare_exchange._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__19.compare_exchange._definition
)))
(declare-fun ens%vstd.atomic.impl&%19.compare_exchange. (vstd.atomic.PAtomicI64. vstd.atomic.PermissionI64.
  vstd.atomic.PermissionI64. Int Int core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (perm!
    vstd.atomic.PermissionI64.
   ) (current! Int) (new! Int) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd.atomic.impl&%19.compare_exchange. self! pre%perm! perm! current! new!
     ret!
    ) (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ (SINT 64) $ (
        SINT 64
     )))
     (and
      (= (vstd.atomic.impl&%19.id.? (Poly%vstd.atomic.PAtomicI64. self!)) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic
        (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
           (Poly%vstd.atomic.PermissionI64. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%I (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
             (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
                pre%perm!
          ))))))
          (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
             (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
            (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
               pre%perm!
       ))))))))
       (let
        ((r$ (%I (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (not (= current! (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
              (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
                 pre%perm!
          )))))))
          (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
             (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
                perm!
            ))))
           ) (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
             (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
                pre%perm!
         )))))))
         (= r$ (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
            (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd.atomic.impl&%19.compare_exchange. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd.atomic.impl&__19.compare_exchange._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__19.compare_exchange._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI64::compare_exchange_weak
(declare-fun req%vstd.atomic.impl&%19.compare_exchange_weak. (vstd.atomic.PAtomicI64.
  vstd.atomic.PermissionI64. Int Int
 ) Bool
)
(declare-const %%global_location_label%%125 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (current!
    Int
   ) (new! Int)
  ) (!
   (= (req%vstd.atomic.impl&%19.compare_exchange_weak. self! pre%perm! current! new!)
    (=>
     %%global_location_label%%125
     (= (vstd.atomic.impl&%19.id.? (Poly%vstd.atomic.PAtomicI64. self!)) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic
       (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
          (Poly%vstd.atomic.PermissionI64. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%19.compare_exchange_weak. self! pre%perm! current!
     new!
   ))
   :qid internal_req__vstd.atomic.impl&__19.compare_exchange_weak._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__19.compare_exchange_weak._definition
)))
(declare-fun ens%vstd.atomic.impl&%19.compare_exchange_weak. (vstd.atomic.PAtomicI64.
  vstd.atomic.PermissionI64. vstd.atomic.PermissionI64. Int Int core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (perm!
    vstd.atomic.PermissionI64.
   ) (current! Int) (new! Int) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd.atomic.impl&%19.compare_exchange_weak. self! pre%perm! perm! current!
     new! ret!
    ) (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ (SINT 64) $ (
        SINT 64
     )))
     (and
      (= (vstd.atomic.impl&%19.id.? (Poly%vstd.atomic.PAtomicI64. self!)) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic
        (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
           (Poly%vstd.atomic.PermissionI64. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%I (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
             (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
                pre%perm!
          ))))))
          (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
             (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
            (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
               pre%perm!
       ))))))))
       (let
        ((r$ (%I (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
            (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
               perm!
           ))))
          ) (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
            (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
               pre%perm!
         ))))))
         (= r$ (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
            (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd.atomic.impl&%19.compare_exchange_weak. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd.atomic.impl&__19.compare_exchange_weak._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__19.compare_exchange_weak._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI64::swap
(declare-fun req%vstd.atomic.impl&%19.swap. (vstd.atomic.PAtomicI64. vstd.atomic.PermissionI64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%126 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (v!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%19.swap. self! pre%perm! v!) (=>
     %%global_location_label%%126
     (= (vstd.atomic.impl&%19.id.? (Poly%vstd.atomic.PAtomicI64. self!)) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic
       (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
          (Poly%vstd.atomic.PermissionI64. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%19.swap. self! pre%perm! v!))
   :qid internal_req__vstd.atomic.impl&__19.swap._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__19.swap._definition
)))
(declare-fun ens%vstd.atomic.impl&%19.swap. (vstd.atomic.PAtomicI64. vstd.atomic.PermissionI64.
  vstd.atomic.PermissionI64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (perm!
    vstd.atomic.PermissionI64.
   ) (v! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%19.swap. self! pre%perm! perm! v! ret!) (and
     (iInv 64 ret!)
     (and
      (and
       (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
          (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
             perm!
         ))))
        ) v!
       )
       (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
          (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
             pre%perm!
         ))))
        ) ret!
      ))
      (= (vstd.atomic.impl&%19.id.? (Poly%vstd.atomic.PAtomicI64. self!)) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic
        (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
           (Poly%vstd.atomic.PermissionI64. perm!)
   ))))))))
   :pattern ((ens%vstd.atomic.impl&%19.swap. self! pre%perm! perm! v! ret!))
   :qid internal_ens__vstd.atomic.impl&__19.swap._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__19.swap._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI64::into_inner
(declare-fun req%vstd.atomic.impl&%19.into_inner. (vstd.atomic.PAtomicI64. vstd.atomic.PermissionI64.)
 Bool
)
(declare-const %%global_location_label%%127 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (perm! vstd.atomic.PermissionI64.)) (!
   (= (req%vstd.atomic.impl&%19.into_inner. self! perm!) (=>
     %%global_location_label%%127
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

;; Function-Axioms crate::vstd::atomic::wrapping_add_i64
(assert
 (fuel_bool_default fuel%vstd.atomic.wrapping_add_i64.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.wrapping_add_i64.)
  (forall ((a! Poly) (b! Poly)) (!
    (= (vstd.atomic.wrapping_add_i64.? a! b!) (ite
      (> (Add (%I a!) (%I b!)) 9223372036854775807)
      (Sub (Add (%I a!) (%I b!)) (Add (Sub 9223372036854775807 (- 9223372036854775808)) 1))
      (ite
       (< (Add (%I a!) (%I b!)) (- 9223372036854775808))
       (Add (Add (%I a!) (%I b!)) (Add (Sub 9223372036854775807 (- 9223372036854775808)) 1))
       (Add (%I a!) (%I b!))
    )))
    :pattern ((vstd.atomic.wrapping_add_i64.? a! b!))
    :qid internal_vstd.atomic.wrapping_add_i64.?_definition
    :skolemid skolem_internal_vstd.atomic.wrapping_add_i64.?_definition
))))

;; Function-Specs crate::vstd::atomic::PAtomicI64::fetch_add_wrapping
(declare-fun req%vstd.atomic.impl&%19.fetch_add_wrapping. (vstd.atomic.PAtomicI64.
  vstd.atomic.PermissionI64. Int
 ) Bool
)
(declare-const %%global_location_label%%128 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%19.fetch_add_wrapping. self! pre%perm! n!) (=>
     %%global_location_label%%128
     (= (vstd.atomic.impl&%19.id.? (Poly%vstd.atomic.PAtomicI64. self!)) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic
       (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
          (Poly%vstd.atomic.PermissionI64. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%19.fetch_add_wrapping. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__19.fetch_add_wrapping._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__19.fetch_add_wrapping._definition
)))
(declare-fun ens%vstd.atomic.impl&%19.fetch_add_wrapping. (vstd.atomic.PAtomicI64.
  vstd.atomic.PermissionI64. vstd.atomic.PermissionI64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (perm!
    vstd.atomic.PermissionI64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%19.fetch_add_wrapping. self! pre%perm! perm! n! ret!) (and
     (iInv 64 ret!)
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           perm!
       ))))
      ) (vstd.atomic.wrapping_add_i64.? (I (vstd.atomic.PermissionDataI64./PermissionDataI64/value
         (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
            (Poly%vstd.atomic.PermissionI64. pre%perm!)
        ))))
       ) (I n!)
   ))))
   :pattern ((ens%vstd.atomic.impl&%19.fetch_add_wrapping. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__19.fetch_add_wrapping._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__19.fetch_add_wrapping._definition
)))

;; Function-Axioms crate::vstd::atomic::wrapping_sub_i64
(assert
 (fuel_bool_default fuel%vstd.atomic.wrapping_sub_i64.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.wrapping_sub_i64.)
  (forall ((a! Poly) (b! Poly)) (!
    (= (vstd.atomic.wrapping_sub_i64.? a! b!) (ite
      (> (Sub (%I a!) (%I b!)) 9223372036854775807)
      (Sub (Sub (%I a!) (%I b!)) (Add (Sub 9223372036854775807 (- 9223372036854775808)) 1))
      (ite
       (< (Sub (%I a!) (%I b!)) (- 9223372036854775808))
       (Add (Sub (%I a!) (%I b!)) (Add (Sub 9223372036854775807 (- 9223372036854775808)) 1))
       (Sub (%I a!) (%I b!))
    )))
    :pattern ((vstd.atomic.wrapping_sub_i64.? a! b!))
    :qid internal_vstd.atomic.wrapping_sub_i64.?_definition
    :skolemid skolem_internal_vstd.atomic.wrapping_sub_i64.?_definition
))))

;; Function-Specs crate::vstd::atomic::PAtomicI64::fetch_sub_wrapping
(declare-fun req%vstd.atomic.impl&%19.fetch_sub_wrapping. (vstd.atomic.PAtomicI64.
  vstd.atomic.PermissionI64. Int
 ) Bool
)
(declare-const %%global_location_label%%129 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%19.fetch_sub_wrapping. self! pre%perm! n!) (=>
     %%global_location_label%%129
     (= (vstd.atomic.impl&%19.id.? (Poly%vstd.atomic.PAtomicI64. self!)) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic
       (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
          (Poly%vstd.atomic.PermissionI64. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%19.fetch_sub_wrapping. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__19.fetch_sub_wrapping._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__19.fetch_sub_wrapping._definition
)))
(declare-fun ens%vstd.atomic.impl&%19.fetch_sub_wrapping. (vstd.atomic.PAtomicI64.
  vstd.atomic.PermissionI64. vstd.atomic.PermissionI64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (perm!
    vstd.atomic.PermissionI64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%19.fetch_sub_wrapping. self! pre%perm! perm! n! ret!) (and
     (iInv 64 ret!)
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           perm!
       ))))
      ) (vstd.atomic.wrapping_sub_i64.? (I (vstd.atomic.PermissionDataI64./PermissionDataI64/value
         (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
            (Poly%vstd.atomic.PermissionI64. pre%perm!)
        ))))
       ) (I n!)
   ))))
   :pattern ((ens%vstd.atomic.impl&%19.fetch_sub_wrapping. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__19.fetch_sub_wrapping._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__19.fetch_sub_wrapping._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI64::fetch_and
(declare-fun req%vstd.atomic.impl&%19.fetch_and. (vstd.atomic.PAtomicI64. vstd.atomic.PermissionI64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%130 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%19.fetch_and. self! pre%perm! n!) (=>
     %%global_location_label%%130
     (= (vstd.atomic.impl&%19.id.? (Poly%vstd.atomic.PAtomicI64. self!)) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic
       (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
          (Poly%vstd.atomic.PermissionI64. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%19.fetch_and. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__19.fetch_and._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__19.fetch_and._definition
)))
(declare-fun ens%vstd.atomic.impl&%19.fetch_and. (vstd.atomic.PAtomicI64. vstd.atomic.PermissionI64.
  vstd.atomic.PermissionI64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (perm!
    vstd.atomic.PermissionI64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%19.fetch_and. self! pre%perm! perm! n! ret!) (and
     (iInv 64 ret!)
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           perm!
       ))))
      ) (iClip 64 (bitand (I (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
           (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%19.fetch_and. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__19.fetch_and._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__19.fetch_and._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI64::fetch_or
(declare-fun req%vstd.atomic.impl&%19.fetch_or. (vstd.atomic.PAtomicI64. vstd.atomic.PermissionI64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%131 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%19.fetch_or. self! pre%perm! n!) (=>
     %%global_location_label%%131
     (= (vstd.atomic.impl&%19.id.? (Poly%vstd.atomic.PAtomicI64. self!)) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic
       (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
          (Poly%vstd.atomic.PermissionI64. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%19.fetch_or. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__19.fetch_or._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__19.fetch_or._definition
)))
(declare-fun ens%vstd.atomic.impl&%19.fetch_or. (vstd.atomic.PAtomicI64. vstd.atomic.PermissionI64.
  vstd.atomic.PermissionI64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (perm!
    vstd.atomic.PermissionI64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%19.fetch_or. self! pre%perm! perm! n! ret!) (and
     (iInv 64 ret!)
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           perm!
       ))))
      ) (iClip 64 (bitor (I (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
           (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%19.fetch_or. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__19.fetch_or._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__19.fetch_or._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI64::fetch_xor
(declare-fun req%vstd.atomic.impl&%19.fetch_xor. (vstd.atomic.PAtomicI64. vstd.atomic.PermissionI64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%132 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%19.fetch_xor. self! pre%perm! n!) (=>
     %%global_location_label%%132
     (= (vstd.atomic.impl&%19.id.? (Poly%vstd.atomic.PAtomicI64. self!)) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic
       (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
          (Poly%vstd.atomic.PermissionI64. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%19.fetch_xor. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__19.fetch_xor._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__19.fetch_xor._definition
)))
(declare-fun ens%vstd.atomic.impl&%19.fetch_xor. (vstd.atomic.PAtomicI64. vstd.atomic.PermissionI64.
  vstd.atomic.PermissionI64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (perm!
    vstd.atomic.PermissionI64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%19.fetch_xor. self! pre%perm! perm! n! ret!) (and
     (iInv 64 ret!)
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           perm!
       ))))
      ) (iClip 64 (bitxor (I (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
           (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%19.fetch_xor. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__19.fetch_xor._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__19.fetch_xor._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI64::fetch_nand
(declare-fun req%vstd.atomic.impl&%19.fetch_nand. (vstd.atomic.PAtomicI64. vstd.atomic.PermissionI64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%133 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%19.fetch_nand. self! pre%perm! n!) (=>
     %%global_location_label%%133
     (= (vstd.atomic.impl&%19.id.? (Poly%vstd.atomic.PAtomicI64. self!)) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic
       (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
          (Poly%vstd.atomic.PermissionI64. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%19.fetch_nand. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__19.fetch_nand._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__19.fetch_nand._definition
)))
(declare-fun ens%vstd.atomic.impl&%19.fetch_nand. (vstd.atomic.PAtomicI64. vstd.atomic.PermissionI64.
  vstd.atomic.PermissionI64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (perm!
    vstd.atomic.PermissionI64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%19.fetch_nand. self! pre%perm! perm! n! ret!) (and
     (iInv 64 ret!)
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           perm!
       ))))
      ) (bitnot (I (iClip 64 (bitand (I (vstd.atomic.PermissionDataI64./PermissionDataI64/value
            (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
               (Poly%vstd.atomic.PermissionI64. pre%perm!)
           ))))
          ) (I n!)
   )))))))
   :pattern ((ens%vstd.atomic.impl&%19.fetch_nand. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__19.fetch_nand._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__19.fetch_nand._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI64::fetch_max
(declare-fun req%vstd.atomic.impl&%19.fetch_max. (vstd.atomic.PAtomicI64. vstd.atomic.PermissionI64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%134 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%19.fetch_max. self! pre%perm! n!) (=>
     %%global_location_label%%134
     (= (vstd.atomic.impl&%19.id.? (Poly%vstd.atomic.PAtomicI64. self!)) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic
       (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
          (Poly%vstd.atomic.PermissionI64. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%19.fetch_max. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__19.fetch_max._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__19.fetch_max._definition
)))
(declare-fun ens%vstd.atomic.impl&%19.fetch_max. (vstd.atomic.PAtomicI64. vstd.atomic.PermissionI64.
  vstd.atomic.PermissionI64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (perm!
    vstd.atomic.PermissionI64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%19.fetch_max. self! pre%perm! perm! n! ret!) (and
     (iInv 64 ret!)
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           perm!
       ))))
      ) (ite
       (> (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
          (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
             pre%perm!
         ))))
        ) n!
       )
       (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
         (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%19.fetch_max. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__19.fetch_max._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__19.fetch_max._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicI64::fetch_min
(declare-fun req%vstd.atomic.impl&%19.fetch_min. (vstd.atomic.PAtomicI64. vstd.atomic.PermissionI64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%135 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%19.fetch_min. self! pre%perm! n!) (=>
     %%global_location_label%%135
     (= (vstd.atomic.impl&%19.id.? (Poly%vstd.atomic.PAtomicI64. self!)) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic
       (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
          (Poly%vstd.atomic.PermissionI64. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%19.fetch_min. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__19.fetch_min._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__19.fetch_min._definition
)))
(declare-fun ens%vstd.atomic.impl&%19.fetch_min. (vstd.atomic.PAtomicI64. vstd.atomic.PermissionI64.
  vstd.atomic.PermissionI64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (perm!
    vstd.atomic.PermissionI64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%19.fetch_min. self! pre%perm! perm! n! ret!) (and
     (iInv 64 ret!)
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           perm!
       ))))
      ) (ite
       (< (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
          (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
             pre%perm!
         ))))
        ) n!
       )
       (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
         (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%19.fetch_min. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__19.fetch_min._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__19.fetch_min._definition
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
(declare-const %%global_location_label%%136 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (perm! vstd.atomic.PermissionIsize.)) (
   !
   (= (req%vstd.atomic.impl&%21.load. self! perm!) (=>
     %%global_location_label%%136
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

;; Function-Specs crate::vstd::atomic::PAtomicIsize::store
(declare-fun req%vstd.atomic.impl&%21.store. (vstd.atomic.PAtomicIsize. vstd.atomic.PermissionIsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%137 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (v! Int)
  ) (!
   (= (req%vstd.atomic.impl&%21.store. self! pre%perm! v!) (=>
     %%global_location_label%%137
     (= (vstd.atomic.impl&%21.id.? (Poly%vstd.atomic.PAtomicIsize. self!)) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
          (Poly%vstd.atomic.PermissionIsize. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%21.store. self! pre%perm! v!))
   :qid internal_req__vstd.atomic.impl&__21.store._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__21.store._definition
)))
(declare-fun ens%vstd.atomic.impl&%21.store. (vstd.atomic.PAtomicIsize. vstd.atomic.PermissionIsize.
  vstd.atomic.PermissionIsize. Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (perm! vstd.atomic.PermissionIsize.) (v! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%21.store. self! pre%perm! perm! v!) (and
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           perm!
       ))))
      ) v!
     )
     (= (vstd.atomic.impl&%21.id.? (Poly%vstd.atomic.PAtomicIsize. self!)) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
          (Poly%vstd.atomic.PermissionIsize. perm!)
   )))))))
   :pattern ((ens%vstd.atomic.impl&%21.store. self! pre%perm! perm! v!))
   :qid internal_ens__vstd.atomic.impl&__21.store._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__21.store._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicIsize::compare_exchange
(declare-fun req%vstd.atomic.impl&%21.compare_exchange. (vstd.atomic.PAtomicIsize.
  vstd.atomic.PermissionIsize. Int Int
 ) Bool
)
(declare-const %%global_location_label%%138 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (current! Int) (new! Int)
  ) (!
   (= (req%vstd.atomic.impl&%21.compare_exchange. self! pre%perm! current! new!) (=>
     %%global_location_label%%138
     (= (vstd.atomic.impl&%21.id.? (Poly%vstd.atomic.PAtomicIsize. self!)) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
          (Poly%vstd.atomic.PermissionIsize. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%21.compare_exchange. self! pre%perm! current! new!))
   :qid internal_req__vstd.atomic.impl&__21.compare_exchange._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__21.compare_exchange._definition
)))
(declare-fun ens%vstd.atomic.impl&%21.compare_exchange. (vstd.atomic.PAtomicIsize.
  vstd.atomic.PermissionIsize. vstd.atomic.PermissionIsize. Int Int core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (perm! vstd.atomic.PermissionIsize.) (current! Int) (new! Int) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd.atomic.impl&%21.compare_exchange. self! pre%perm! perm! current! new!
     ret!
    ) (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ (SINT SZ) $ (
        SINT SZ
     )))
     (and
      (= (vstd.atomic.impl&%21.id.? (Poly%vstd.atomic.PAtomicIsize. self!)) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic
        (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
           (Poly%vstd.atomic.PermissionIsize. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%I (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
             (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
                pre%perm!
          ))))))
          (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
             (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
            (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
               pre%perm!
       ))))))))
       (let
        ((r$ (%I (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (not (= current! (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
              (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
                 pre%perm!
          )))))))
          (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
             (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
                perm!
            ))))
           ) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
             (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
                pre%perm!
         )))))))
         (= r$ (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
            (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd.atomic.impl&%21.compare_exchange. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd.atomic.impl&__21.compare_exchange._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__21.compare_exchange._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicIsize::compare_exchange_weak
(declare-fun req%vstd.atomic.impl&%21.compare_exchange_weak. (vstd.atomic.PAtomicIsize.
  vstd.atomic.PermissionIsize. Int Int
 ) Bool
)
(declare-const %%global_location_label%%139 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (current! Int) (new! Int)
  ) (!
   (= (req%vstd.atomic.impl&%21.compare_exchange_weak. self! pre%perm! current! new!)
    (=>
     %%global_location_label%%139
     (= (vstd.atomic.impl&%21.id.? (Poly%vstd.atomic.PAtomicIsize. self!)) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
          (Poly%vstd.atomic.PermissionIsize. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%21.compare_exchange_weak. self! pre%perm! current!
     new!
   ))
   :qid internal_req__vstd.atomic.impl&__21.compare_exchange_weak._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__21.compare_exchange_weak._definition
)))
(declare-fun ens%vstd.atomic.impl&%21.compare_exchange_weak. (vstd.atomic.PAtomicIsize.
  vstd.atomic.PermissionIsize. vstd.atomic.PermissionIsize. Int Int core!result.Result.
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (perm! vstd.atomic.PermissionIsize.) (current! Int) (new! Int) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd.atomic.impl&%21.compare_exchange_weak. self! pre%perm! perm! current!
     new! ret!
    ) (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ (SINT SZ) $ (
        SINT SZ
     )))
     (and
      (= (vstd.atomic.impl&%21.id.? (Poly%vstd.atomic.PAtomicIsize. self!)) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic
        (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
           (Poly%vstd.atomic.PermissionIsize. perm!)
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (%I (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (and
          (= current! (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
             (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
                pre%perm!
          ))))))
          (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
             (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
                perm!
            ))))
           ) new!
         ))
         (= r$ (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
            (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
               pre%perm!
       ))))))))
       (let
        ((r$ (%I (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result.
              ret!
        ))))))
        (and
         (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
            (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
               perm!
           ))))
          ) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
            (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
               pre%perm!
         ))))))
         (= r$ (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
            (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
               pre%perm!
   ))))))))))))
   :pattern ((ens%vstd.atomic.impl&%21.compare_exchange_weak. self! pre%perm! perm! current!
     new! ret!
   ))
   :qid internal_ens__vstd.atomic.impl&__21.compare_exchange_weak._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__21.compare_exchange_weak._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicIsize::swap
(declare-fun req%vstd.atomic.impl&%21.swap. (vstd.atomic.PAtomicIsize. vstd.atomic.PermissionIsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%140 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (v! Int)
  ) (!
   (= (req%vstd.atomic.impl&%21.swap. self! pre%perm! v!) (=>
     %%global_location_label%%140
     (= (vstd.atomic.impl&%21.id.? (Poly%vstd.atomic.PAtomicIsize. self!)) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
          (Poly%vstd.atomic.PermissionIsize. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%21.swap. self! pre%perm! v!))
   :qid internal_req__vstd.atomic.impl&__21.swap._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__21.swap._definition
)))
(declare-fun ens%vstd.atomic.impl&%21.swap. (vstd.atomic.PAtomicIsize. vstd.atomic.PermissionIsize.
  vstd.atomic.PermissionIsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (perm! vstd.atomic.PermissionIsize.) (v! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%21.swap. self! pre%perm! perm! v! ret!) (and
     (iInv SZ ret!)
     (and
      (and
       (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
          (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
             perm!
         ))))
        ) v!
       )
       (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
          (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
             pre%perm!
         ))))
        ) ret!
      ))
      (= (vstd.atomic.impl&%21.id.? (Poly%vstd.atomic.PAtomicIsize. self!)) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic
        (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
           (Poly%vstd.atomic.PermissionIsize. perm!)
   ))))))))
   :pattern ((ens%vstd.atomic.impl&%21.swap. self! pre%perm! perm! v! ret!))
   :qid internal_ens__vstd.atomic.impl&__21.swap._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__21.swap._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicIsize::into_inner
(declare-fun req%vstd.atomic.impl&%21.into_inner. (vstd.atomic.PAtomicIsize. vstd.atomic.PermissionIsize.)
 Bool
)
(declare-const %%global_location_label%%141 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (perm! vstd.atomic.PermissionIsize.)) (
   !
   (= (req%vstd.atomic.impl&%21.into_inner. self! perm!) (=>
     %%global_location_label%%141
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

;; Function-Axioms crate::vstd::atomic::wrapping_add_isize
(assert
 (fuel_bool_default fuel%vstd.atomic.wrapping_add_isize.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.wrapping_add_isize.)
  (forall ((a! Poly) (b! Poly)) (!
    (= (vstd.atomic.wrapping_add_isize.? a! b!) (ite
      (> (Add (%I a!) (%I b!)) (- (iHi SZ) 1))
      (Sub (Add (%I a!) (%I b!)) (Add (Sub (- (iHi SZ) 1) (iLo SZ)) 1))
      (ite
       (< (Add (%I a!) (%I b!)) (iLo SZ))
       (Add (Add (%I a!) (%I b!)) (Add (Sub (- (iHi SZ) 1) (iLo SZ)) 1))
       (Add (%I a!) (%I b!))
    )))
    :pattern ((vstd.atomic.wrapping_add_isize.? a! b!))
    :qid internal_vstd.atomic.wrapping_add_isize.?_definition
    :skolemid skolem_internal_vstd.atomic.wrapping_add_isize.?_definition
))))

;; Function-Specs crate::vstd::atomic::PAtomicIsize::fetch_add_wrapping
(declare-fun req%vstd.atomic.impl&%21.fetch_add_wrapping. (vstd.atomic.PAtomicIsize.
  vstd.atomic.PermissionIsize. Int
 ) Bool
)
(declare-const %%global_location_label%%142 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (n! Int)
  ) (!
   (= (req%vstd.atomic.impl&%21.fetch_add_wrapping. self! pre%perm! n!) (=>
     %%global_location_label%%142
     (= (vstd.atomic.impl&%21.id.? (Poly%vstd.atomic.PAtomicIsize. self!)) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
          (Poly%vstd.atomic.PermissionIsize. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%21.fetch_add_wrapping. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__21.fetch_add_wrapping._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__21.fetch_add_wrapping._definition
)))
(declare-fun ens%vstd.atomic.impl&%21.fetch_add_wrapping. (vstd.atomic.PAtomicIsize.
  vstd.atomic.PermissionIsize. vstd.atomic.PermissionIsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (perm! vstd.atomic.PermissionIsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%21.fetch_add_wrapping. self! pre%perm! perm! n! ret!) (and
     (iInv SZ ret!)
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           perm!
       ))))
      ) (vstd.atomic.wrapping_add_isize.? (I (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value
         (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
            (Poly%vstd.atomic.PermissionIsize. pre%perm!)
        ))))
       ) (I n!)
   ))))
   :pattern ((ens%vstd.atomic.impl&%21.fetch_add_wrapping. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__21.fetch_add_wrapping._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__21.fetch_add_wrapping._definition
)))

;; Function-Axioms crate::vstd::atomic::wrapping_sub_isize
(assert
 (fuel_bool_default fuel%vstd.atomic.wrapping_sub_isize.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.wrapping_sub_isize.)
  (forall ((a! Poly) (b! Poly)) (!
    (= (vstd.atomic.wrapping_sub_isize.? a! b!) (ite
      (> (Sub (%I a!) (%I b!)) (- (iHi SZ) 1))
      (Sub (Sub (%I a!) (%I b!)) (Add (Sub (- (iHi SZ) 1) (iLo SZ)) 1))
      (ite
       (< (Sub (%I a!) (%I b!)) (iLo SZ))
       (Add (Sub (%I a!) (%I b!)) (Add (Sub (- (iHi SZ) 1) (iLo SZ)) 1))
       (Sub (%I a!) (%I b!))
    )))
    :pattern ((vstd.atomic.wrapping_sub_isize.? a! b!))
    :qid internal_vstd.atomic.wrapping_sub_isize.?_definition
    :skolemid skolem_internal_vstd.atomic.wrapping_sub_isize.?_definition
))))

;; Function-Specs crate::vstd::atomic::PAtomicIsize::fetch_sub_wrapping
(declare-fun req%vstd.atomic.impl&%21.fetch_sub_wrapping. (vstd.atomic.PAtomicIsize.
  vstd.atomic.PermissionIsize. Int
 ) Bool
)
(declare-const %%global_location_label%%143 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (n! Int)
  ) (!
   (= (req%vstd.atomic.impl&%21.fetch_sub_wrapping. self! pre%perm! n!) (=>
     %%global_location_label%%143
     (= (vstd.atomic.impl&%21.id.? (Poly%vstd.atomic.PAtomicIsize. self!)) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
          (Poly%vstd.atomic.PermissionIsize. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%21.fetch_sub_wrapping. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__21.fetch_sub_wrapping._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__21.fetch_sub_wrapping._definition
)))
(declare-fun ens%vstd.atomic.impl&%21.fetch_sub_wrapping. (vstd.atomic.PAtomicIsize.
  vstd.atomic.PermissionIsize. vstd.atomic.PermissionIsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (perm! vstd.atomic.PermissionIsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%21.fetch_sub_wrapping. self! pre%perm! perm! n! ret!) (and
     (iInv SZ ret!)
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           perm!
       ))))
      ) (vstd.atomic.wrapping_sub_isize.? (I (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value
         (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
            (Poly%vstd.atomic.PermissionIsize. pre%perm!)
        ))))
       ) (I n!)
   ))))
   :pattern ((ens%vstd.atomic.impl&%21.fetch_sub_wrapping. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__21.fetch_sub_wrapping._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__21.fetch_sub_wrapping._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicIsize::fetch_and
(declare-fun req%vstd.atomic.impl&%21.fetch_and. (vstd.atomic.PAtomicIsize. vstd.atomic.PermissionIsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%144 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (n! Int)
  ) (!
   (= (req%vstd.atomic.impl&%21.fetch_and. self! pre%perm! n!) (=>
     %%global_location_label%%144
     (= (vstd.atomic.impl&%21.id.? (Poly%vstd.atomic.PAtomicIsize. self!)) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
          (Poly%vstd.atomic.PermissionIsize. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%21.fetch_and. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__21.fetch_and._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__21.fetch_and._definition
)))
(declare-fun ens%vstd.atomic.impl&%21.fetch_and. (vstd.atomic.PAtomicIsize. vstd.atomic.PermissionIsize.
  vstd.atomic.PermissionIsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (perm! vstd.atomic.PermissionIsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%21.fetch_and. self! pre%perm! perm! n! ret!) (and
     (iInv SZ ret!)
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           perm!
       ))))
      ) (iClip SZ (bitand (I (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
           (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%21.fetch_and. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__21.fetch_and._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__21.fetch_and._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicIsize::fetch_or
(declare-fun req%vstd.atomic.impl&%21.fetch_or. (vstd.atomic.PAtomicIsize. vstd.atomic.PermissionIsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%145 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (n! Int)
  ) (!
   (= (req%vstd.atomic.impl&%21.fetch_or. self! pre%perm! n!) (=>
     %%global_location_label%%145
     (= (vstd.atomic.impl&%21.id.? (Poly%vstd.atomic.PAtomicIsize. self!)) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
          (Poly%vstd.atomic.PermissionIsize. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%21.fetch_or. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__21.fetch_or._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__21.fetch_or._definition
)))
(declare-fun ens%vstd.atomic.impl&%21.fetch_or. (vstd.atomic.PAtomicIsize. vstd.atomic.PermissionIsize.
  vstd.atomic.PermissionIsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (perm! vstd.atomic.PermissionIsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%21.fetch_or. self! pre%perm! perm! n! ret!) (and
     (iInv SZ ret!)
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           perm!
       ))))
      ) (iClip SZ (bitor (I (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
           (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%21.fetch_or. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__21.fetch_or._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__21.fetch_or._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicIsize::fetch_xor
(declare-fun req%vstd.atomic.impl&%21.fetch_xor. (vstd.atomic.PAtomicIsize. vstd.atomic.PermissionIsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%146 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (n! Int)
  ) (!
   (= (req%vstd.atomic.impl&%21.fetch_xor. self! pre%perm! n!) (=>
     %%global_location_label%%146
     (= (vstd.atomic.impl&%21.id.? (Poly%vstd.atomic.PAtomicIsize. self!)) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
          (Poly%vstd.atomic.PermissionIsize. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%21.fetch_xor. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__21.fetch_xor._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__21.fetch_xor._definition
)))
(declare-fun ens%vstd.atomic.impl&%21.fetch_xor. (vstd.atomic.PAtomicIsize. vstd.atomic.PermissionIsize.
  vstd.atomic.PermissionIsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (perm! vstd.atomic.PermissionIsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%21.fetch_xor. self! pre%perm! perm! n! ret!) (and
     (iInv SZ ret!)
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           perm!
       ))))
      ) (iClip SZ (bitxor (I (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
           (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
              pre%perm!
         )))))
        ) (I n!)
   )))))
   :pattern ((ens%vstd.atomic.impl&%21.fetch_xor. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__21.fetch_xor._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__21.fetch_xor._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicIsize::fetch_nand
(declare-fun req%vstd.atomic.impl&%21.fetch_nand. (vstd.atomic.PAtomicIsize. vstd.atomic.PermissionIsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%147 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (n! Int)
  ) (!
   (= (req%vstd.atomic.impl&%21.fetch_nand. self! pre%perm! n!) (=>
     %%global_location_label%%147
     (= (vstd.atomic.impl&%21.id.? (Poly%vstd.atomic.PAtomicIsize. self!)) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
          (Poly%vstd.atomic.PermissionIsize. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%21.fetch_nand. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__21.fetch_nand._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__21.fetch_nand._definition
)))
(declare-fun ens%vstd.atomic.impl&%21.fetch_nand. (vstd.atomic.PAtomicIsize. vstd.atomic.PermissionIsize.
  vstd.atomic.PermissionIsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (perm! vstd.atomic.PermissionIsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%21.fetch_nand. self! pre%perm! perm! n! ret!) (and
     (iInv SZ ret!)
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           perm!
       ))))
      ) (bitnot (I (iClip SZ (bitand (I (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value
            (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
               (Poly%vstd.atomic.PermissionIsize. pre%perm!)
           ))))
          ) (I n!)
   )))))))
   :pattern ((ens%vstd.atomic.impl&%21.fetch_nand. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__21.fetch_nand._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__21.fetch_nand._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicIsize::fetch_max
(declare-fun req%vstd.atomic.impl&%21.fetch_max. (vstd.atomic.PAtomicIsize. vstd.atomic.PermissionIsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%148 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (n! Int)
  ) (!
   (= (req%vstd.atomic.impl&%21.fetch_max. self! pre%perm! n!) (=>
     %%global_location_label%%148
     (= (vstd.atomic.impl&%21.id.? (Poly%vstd.atomic.PAtomicIsize. self!)) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
          (Poly%vstd.atomic.PermissionIsize. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%21.fetch_max. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__21.fetch_max._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__21.fetch_max._definition
)))
(declare-fun ens%vstd.atomic.impl&%21.fetch_max. (vstd.atomic.PAtomicIsize. vstd.atomic.PermissionIsize.
  vstd.atomic.PermissionIsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (perm! vstd.atomic.PermissionIsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%21.fetch_max. self! pre%perm! perm! n! ret!) (and
     (iInv SZ ret!)
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           perm!
       ))))
      ) (ite
       (> (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
          (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
             pre%perm!
         ))))
        ) n!
       )
       (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
         (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%21.fetch_max. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__21.fetch_max._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__21.fetch_max._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicIsize::fetch_min
(declare-fun req%vstd.atomic.impl&%21.fetch_min. (vstd.atomic.PAtomicIsize. vstd.atomic.PermissionIsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%149 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (n! Int)
  ) (!
   (= (req%vstd.atomic.impl&%21.fetch_min. self! pre%perm! n!) (=>
     %%global_location_label%%149
     (= (vstd.atomic.impl&%21.id.? (Poly%vstd.atomic.PAtomicIsize. self!)) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
          (Poly%vstd.atomic.PermissionIsize. pre%perm!)
   )))))))
   :pattern ((req%vstd.atomic.impl&%21.fetch_min. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__21.fetch_min._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__21.fetch_min._definition
)))
(declare-fun ens%vstd.atomic.impl&%21.fetch_min. (vstd.atomic.PAtomicIsize. vstd.atomic.PermissionIsize.
  vstd.atomic.PermissionIsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (perm! vstd.atomic.PermissionIsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%21.fetch_min. self! pre%perm! perm! n! ret!) (and
     (iInv SZ ret!)
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           perm!
       ))))
      ) (ite
       (< (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
          (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
             pre%perm!
         ))))
        ) n!
       )
       (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
         (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
            pre%perm!
       )))))
       n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%21.fetch_min. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__21.fetch_min._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__21.fetch_min._definition
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
(declare-const %%global_location_label%%150 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly) (perm! Poly)) (!
   (= (req%vstd.atomic.impl&%23.load. T&. T& self! perm!) (=>
     %%global_location_label%%150
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

;; Function-Specs crate::vstd::atomic::PAtomicPtr::store
(declare-fun req%vstd.atomic.impl&%23.store. (Dcr Type Poly Poly Poly) Bool)
(declare-const %%global_location_label%%151 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly) (pre%perm! Poly) (v! Poly)) (!
   (= (req%vstd.atomic.impl&%23.store. T&. T& self! pre%perm! v!) (=>
     %%global_location_label%%151
     (= (vstd.atomic.impl&%23.id.? T&. T& self!) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/patomic
       (%Poly%vstd.atomic.PermissionDataPtr. (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.?
          T&. T& pre%perm!
   )))))))
   :pattern ((req%vstd.atomic.impl&%23.store. T&. T& self! pre%perm! v!))
   :qid internal_req__vstd.atomic.impl&__23.store._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__23.store._definition
)))
(declare-fun ens%vstd.atomic.impl&%23.store. (Dcr Type Poly Poly Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly) (pre%perm! Poly) (perm! Poly) (v! Poly))
  (!
   (= (ens%vstd.atomic.impl&%23.store. T&. T& self! pre%perm! perm! v!) (and
     (has_type perm! (TYPE%vstd.atomic.PermissionPtr. T&. T&))
     (and
      (= (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
         (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& perm!))
        )
       ) v!
      )
      (= (vstd.atomic.impl&%23.id.? T&. T& self!) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/patomic
        (%Poly%vstd.atomic.PermissionDataPtr. (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.?
           T&. T& perm!
   ))))))))
   :pattern ((ens%vstd.atomic.impl&%23.store. T&. T& self! pre%perm! perm! v!))
   :qid internal_ens__vstd.atomic.impl&__23.store._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__23.store._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicPtr::compare_exchange
(declare-fun req%vstd.atomic.impl&%23.compare_exchange. (Dcr Type Poly Poly Poly Poly)
 Bool
)
(declare-const %%global_location_label%%152 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly) (pre%perm! Poly) (current! Poly) (new! Poly))
  (!
   (= (req%vstd.atomic.impl&%23.compare_exchange. T&. T& self! pre%perm! current! new!)
    (=>
     %%global_location_label%%152
     (= (vstd.atomic.impl&%23.id.? T&. T& self!) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/patomic
       (%Poly%vstd.atomic.PermissionDataPtr. (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.?
          T&. T& pre%perm!
   )))))))
   :pattern ((req%vstd.atomic.impl&%23.compare_exchange. T&. T& self! pre%perm! current!
     new!
   ))
   :qid internal_req__vstd.atomic.impl&__23.compare_exchange._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__23.compare_exchange._definition
)))
(declare-fun ens%vstd.atomic.impl&%23.compare_exchange. (Dcr Type Poly Poly Poly Poly
  Poly core!result.Result.
 ) Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly) (pre%perm! Poly) (perm! Poly) (current! Poly)
   (new! Poly) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd.atomic.impl&%23.compare_exchange. T&. T& self! pre%perm! perm! current!
     new! ret!
    ) (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ (PTR T&. T&)
       $ (PTR T&. T&)
     ))
     (has_type perm! (TYPE%vstd.atomic.PermissionPtr. T&. T&))
     (and
      (= (vstd.atomic.impl&%23.id.? T&. T& self!) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/patomic
        (%Poly%vstd.atomic.PermissionDataPtr. (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.?
           T&. T& perm!
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result. ret!)))))
        (and
         (and
          (= (vstd.raw_ptr.PtrData./PtrData/addr (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
              $ (PTR T&. T&) current!
            ))
           ) (vstd.raw_ptr.PtrData./PtrData/addr (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
              $ (PTR T&. T&) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
                (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& pre%perm!))
          ))))))
          (= (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
             (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& perm!))
            )
           ) new!
         ))
         (= r$ (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
            (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& pre%perm!))
       )))))
       (let
        ((r$ (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result. ret!)))))
        (and
         (and
          (not (= (vstd.raw_ptr.PtrData./PtrData/addr (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
               $ (PTR T&. T&) current!
             ))
            ) (vstd.raw_ptr.PtrData./PtrData/addr (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
               $ (PTR T&. T&) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
                 (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& pre%perm!))
          )))))))
          (= (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
             (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& perm!))
            )
           ) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
             (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& pre%perm!))
         ))))
         (= r$ (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
            (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& pre%perm!))
   )))))))))
   :pattern ((ens%vstd.atomic.impl&%23.compare_exchange. T&. T& self! pre%perm! perm!
     current! new! ret!
   ))
   :qid internal_ens__vstd.atomic.impl&__23.compare_exchange._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__23.compare_exchange._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicPtr::compare_exchange_weak
(declare-fun req%vstd.atomic.impl&%23.compare_exchange_weak. (Dcr Type Poly Poly Poly
  Poly
 ) Bool
)
(declare-const %%global_location_label%%153 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly) (pre%perm! Poly) (current! Poly) (new! Poly))
  (!
   (= (req%vstd.atomic.impl&%23.compare_exchange_weak. T&. T& self! pre%perm! current!
     new!
    ) (=>
     %%global_location_label%%153
     (= (vstd.atomic.impl&%23.id.? T&. T& self!) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/patomic
       (%Poly%vstd.atomic.PermissionDataPtr. (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.?
          T&. T& pre%perm!
   )))))))
   :pattern ((req%vstd.atomic.impl&%23.compare_exchange_weak. T&. T& self! pre%perm! current!
     new!
   ))
   :qid internal_req__vstd.atomic.impl&__23.compare_exchange_weak._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__23.compare_exchange_weak._definition
)))
(declare-fun ens%vstd.atomic.impl&%23.compare_exchange_weak. (Dcr Type Poly Poly Poly
  Poly Poly core!result.Result.
 ) Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly) (pre%perm! Poly) (perm! Poly) (current! Poly)
   (new! Poly) (ret! core!result.Result.)
  ) (!
   (= (ens%vstd.atomic.impl&%23.compare_exchange_weak. T&. T& self! pre%perm! perm! current!
     new! ret!
    ) (and
     (has_type (Poly%core!result.Result. ret!) (TYPE%core!result.Result. $ (PTR T&. T&)
       $ (PTR T&. T&)
     ))
     (has_type perm! (TYPE%vstd.atomic.PermissionPtr. T&. T&))
     (and
      (= (vstd.atomic.impl&%23.id.? T&. T& self!) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/patomic
        (%Poly%vstd.atomic.PermissionDataPtr. (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.?
           T&. T& perm!
      )))))
      (ite
       (is-core!result.Result./Ok ret!)
       (let
        ((r$ (core!result.Result./Ok/0 (%Poly%core!result.Result. (Poly%core!result.Result. ret!)))))
        (and
         (and
          (= (vstd.raw_ptr.PtrData./PtrData/addr (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
              $ (PTR T&. T&) current!
            ))
           ) (vstd.raw_ptr.PtrData./PtrData/addr (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
              $ (PTR T&. T&) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
                (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& pre%perm!))
          ))))))
          (= (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
             (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& perm!))
            )
           ) new!
         ))
         (= r$ (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
            (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& pre%perm!))
       )))))
       (let
        ((r$ (core!result.Result./Err/0 (%Poly%core!result.Result. (Poly%core!result.Result. ret!)))))
        (and
         (= (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
            (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& perm!))
           )
          ) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
            (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& pre%perm!))
         )))
         (= r$ (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
            (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& pre%perm!))
   )))))))))
   :pattern ((ens%vstd.atomic.impl&%23.compare_exchange_weak. T&. T& self! pre%perm! perm!
     current! new! ret!
   ))
   :qid internal_ens__vstd.atomic.impl&__23.compare_exchange_weak._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__23.compare_exchange_weak._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicPtr::swap
(declare-fun req%vstd.atomic.impl&%23.swap. (Dcr Type Poly Poly Poly) Bool)
(declare-const %%global_location_label%%154 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly) (pre%perm! Poly) (v! Poly)) (!
   (= (req%vstd.atomic.impl&%23.swap. T&. T& self! pre%perm! v!) (=>
     %%global_location_label%%154
     (= (vstd.atomic.impl&%23.id.? T&. T& self!) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/patomic
       (%Poly%vstd.atomic.PermissionDataPtr. (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.?
          T&. T& pre%perm!
   )))))))
   :pattern ((req%vstd.atomic.impl&%23.swap. T&. T& self! pre%perm! v!))
   :qid internal_req__vstd.atomic.impl&__23.swap._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__23.swap._definition
)))
(declare-fun ens%vstd.atomic.impl&%23.swap. (Dcr Type Poly Poly Poly Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly) (pre%perm! Poly) (perm! Poly) (v! Poly) (
    ret! Poly
   )
  ) (!
   (= (ens%vstd.atomic.impl&%23.swap. T&. T& self! pre%perm! perm! v! ret!) (and
     (has_type ret! (PTR T&. T&))
     (has_type perm! (TYPE%vstd.atomic.PermissionPtr. T&. T&))
     (and
      (and
       (= (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
          (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& perm!))
         )
        ) v!
       )
       (= (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
          (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& pre%perm!))
         )
        ) ret!
      ))
      (= (vstd.atomic.impl&%23.id.? T&. T& self!) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/patomic
        (%Poly%vstd.atomic.PermissionDataPtr. (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.?
           T&. T& perm!
   ))))))))
   :pattern ((ens%vstd.atomic.impl&%23.swap. T&. T& self! pre%perm! perm! v! ret!))
   :qid internal_ens__vstd.atomic.impl&__23.swap._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__23.swap._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicPtr::into_inner
(declare-fun req%vstd.atomic.impl&%23.into_inner. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%155 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly) (perm! Poly)) (!
   (= (req%vstd.atomic.impl&%23.into_inner. T&. T& self! perm!) (=>
     %%global_location_label%%155
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

;; Function-Specs crate::vstd::atomic::PAtomicPtr::fetch_and
(declare-fun req%vstd.atomic.impl&%24.fetch_and. (Dcr Type Poly Poly Int) Bool)
(declare-const %%global_location_label%%156 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly) (pre%perm! Poly) (n! Int)) (!
   (= (req%vstd.atomic.impl&%24.fetch_and. T&. T& self! pre%perm! n!) (=>
     %%global_location_label%%156
     (= (vstd.atomic.impl&%23.id.? T&. T& self!) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/patomic
       (%Poly%vstd.atomic.PermissionDataPtr. (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.?
          T&. T& pre%perm!
   )))))))
   :pattern ((req%vstd.atomic.impl&%24.fetch_and. T&. T& self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__24.fetch_and._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__24.fetch_and._definition
)))
(declare-fun ens%vstd.atomic.impl&%24.fetch_and. (Dcr Type Poly Poly Poly Int Poly)
 Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly) (pre%perm! Poly) (perm! Poly) (n! Int) (ret!
    Poly
   )
  ) (!
   (= (ens%vstd.atomic.impl&%24.fetch_and. T&. T& self! pre%perm! perm! n! ret!) (and
     (has_type ret! (PTR T&. T&))
     (has_type perm! (TYPE%vstd.atomic.PermissionPtr. T&. T&))
     (= (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
        (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& pre%perm!))
       )
      ) ret!
     )
     (= (vstd.atomic.PermissionDataPtr./PermissionDataPtr/patomic (%Poly%vstd.atomic.PermissionDataPtr.
        (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& perm!))
       )
      ) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/patomic (%Poly%vstd.atomic.PermissionDataPtr.
        (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& pre%perm!))
     )))
     (= (vstd.raw_ptr.PtrData./PtrData/addr (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
         $ (PTR T&. T&) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
           (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& perm!))
       ))))
      ) (uClip SZ (bitand (I (vstd.raw_ptr.PtrData./PtrData/addr (%Poly%vstd.raw_ptr.PtrData.
           (vstd.view.View.view.? $ (PTR T&. T&) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value
             (%Poly%vstd.atomic.PermissionDataPtr. (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.?
                T&. T& pre%perm!
         )))))))
        ) (I n!)
     )))
     (= (vstd.raw_ptr.PtrData./PtrData/provenance (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
         $ (PTR T&. T&) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
           (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& perm!))
       ))))
      ) (vstd.raw_ptr.PtrData./PtrData/provenance (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
         $ (PTR T&. T&) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
           (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& pre%perm!))
     ))))))
     (= (vstd.raw_ptr.PtrData./PtrData/metadata (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
         $ (PTR T&. T&) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
           (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& perm!))
       ))))
      ) (vstd.raw_ptr.PtrData./PtrData/metadata (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
         $ (PTR T&. T&) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
           (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& pre%perm!))
   ))))))))
   :pattern ((ens%vstd.atomic.impl&%24.fetch_and. T&. T& self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__24.fetch_and._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__24.fetch_and._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicPtr::fetch_xor
(declare-fun req%vstd.atomic.impl&%24.fetch_xor. (Dcr Type Poly Poly Int) Bool)
(declare-const %%global_location_label%%157 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly) (pre%perm! Poly) (n! Int)) (!
   (= (req%vstd.atomic.impl&%24.fetch_xor. T&. T& self! pre%perm! n!) (=>
     %%global_location_label%%157
     (= (vstd.atomic.impl&%23.id.? T&. T& self!) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/patomic
       (%Poly%vstd.atomic.PermissionDataPtr. (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.?
          T&. T& pre%perm!
   )))))))
   :pattern ((req%vstd.atomic.impl&%24.fetch_xor. T&. T& self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__24.fetch_xor._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__24.fetch_xor._definition
)))
(declare-fun ens%vstd.atomic.impl&%24.fetch_xor. (Dcr Type Poly Poly Poly Int Poly)
 Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly) (pre%perm! Poly) (perm! Poly) (n! Int) (ret!
    Poly
   )
  ) (!
   (= (ens%vstd.atomic.impl&%24.fetch_xor. T&. T& self! pre%perm! perm! n! ret!) (and
     (has_type ret! (PTR T&. T&))
     (has_type perm! (TYPE%vstd.atomic.PermissionPtr. T&. T&))
     (= (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
        (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& pre%perm!))
       )
      ) ret!
     )
     (= (vstd.atomic.PermissionDataPtr./PermissionDataPtr/patomic (%Poly%vstd.atomic.PermissionDataPtr.
        (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& perm!))
       )
      ) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/patomic (%Poly%vstd.atomic.PermissionDataPtr.
        (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& pre%perm!))
     )))
     (= (vstd.raw_ptr.PtrData./PtrData/addr (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
         $ (PTR T&. T&) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
           (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& perm!))
       ))))
      ) (uClip SZ (bitxor (I (vstd.raw_ptr.PtrData./PtrData/addr (%Poly%vstd.raw_ptr.PtrData.
           (vstd.view.View.view.? $ (PTR T&. T&) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value
             (%Poly%vstd.atomic.PermissionDataPtr. (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.?
                T&. T& pre%perm!
         )))))))
        ) (I n!)
     )))
     (= (vstd.raw_ptr.PtrData./PtrData/provenance (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
         $ (PTR T&. T&) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
           (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& perm!))
       ))))
      ) (vstd.raw_ptr.PtrData./PtrData/provenance (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
         $ (PTR T&. T&) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
           (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& pre%perm!))
     ))))))
     (= (vstd.raw_ptr.PtrData./PtrData/metadata (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
         $ (PTR T&. T&) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
           (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& perm!))
       ))))
      ) (vstd.raw_ptr.PtrData./PtrData/metadata (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
         $ (PTR T&. T&) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
           (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& pre%perm!))
   ))))))))
   :pattern ((ens%vstd.atomic.impl&%24.fetch_xor. T&. T& self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__24.fetch_xor._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__24.fetch_xor._definition
)))

;; Function-Specs crate::vstd::atomic::PAtomicPtr::fetch_or
(declare-fun req%vstd.atomic.impl&%24.fetch_or. (Dcr Type Poly Poly Int) Bool)
(declare-const %%global_location_label%%158 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly) (pre%perm! Poly) (n! Int)) (!
   (= (req%vstd.atomic.impl&%24.fetch_or. T&. T& self! pre%perm! n!) (=>
     %%global_location_label%%158
     (= (vstd.atomic.impl&%23.id.? T&. T& self!) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/patomic
       (%Poly%vstd.atomic.PermissionDataPtr. (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.?
          T&. T& pre%perm!
   )))))))
   :pattern ((req%vstd.atomic.impl&%24.fetch_or. T&. T& self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__24.fetch_or._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__24.fetch_or._definition
)))
(declare-fun ens%vstd.atomic.impl&%24.fetch_or. (Dcr Type Poly Poly Poly Int Poly)
 Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly) (pre%perm! Poly) (perm! Poly) (n! Int) (ret!
    Poly
   )
  ) (!
   (= (ens%vstd.atomic.impl&%24.fetch_or. T&. T& self! pre%perm! perm! n! ret!) (and
     (has_type ret! (PTR T&. T&))
     (has_type perm! (TYPE%vstd.atomic.PermissionPtr. T&. T&))
     (= (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
        (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& pre%perm!))
       )
      ) ret!
     )
     (= (vstd.atomic.PermissionDataPtr./PermissionDataPtr/patomic (%Poly%vstd.atomic.PermissionDataPtr.
        (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& perm!))
       )
      ) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/patomic (%Poly%vstd.atomic.PermissionDataPtr.
        (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& pre%perm!))
     )))
     (= (vstd.raw_ptr.PtrData./PtrData/addr (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
         $ (PTR T&. T&) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
           (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& perm!))
       ))))
      ) (uClip SZ (bitor (I (vstd.raw_ptr.PtrData./PtrData/addr (%Poly%vstd.raw_ptr.PtrData.
           (vstd.view.View.view.? $ (PTR T&. T&) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value
             (%Poly%vstd.atomic.PermissionDataPtr. (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.?
                T&. T& pre%perm!
         )))))))
        ) (I n!)
     )))
     (= (vstd.raw_ptr.PtrData./PtrData/provenance (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
         $ (PTR T&. T&) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
           (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& perm!))
       ))))
      ) (vstd.raw_ptr.PtrData./PtrData/provenance (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
         $ (PTR T&. T&) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
           (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& pre%perm!))
     ))))))
     (= (vstd.raw_ptr.PtrData./PtrData/metadata (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
         $ (PTR T&. T&) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
           (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& perm!))
       ))))
      ) (vstd.raw_ptr.PtrData./PtrData/metadata (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
         $ (PTR T&. T&) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value (%Poly%vstd.atomic.PermissionDataPtr.
           (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.? T&. T& pre%perm!))
   ))))))))
   :pattern ((ens%vstd.atomic.impl&%24.fetch_or. T&. T& self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__24.fetch_or._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__24.fetch_or._definition
)))

;; Function-Axioms crate::vstd::atomic::PermissionBool::is_for
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%0.is_for.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%0.is_for.)
  (forall ((self! Poly) (patomic! Poly)) (!
    (= (vstd.atomic.impl&%0.is_for.? self! patomic!) (= (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic
       (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.?
          self!
       )))
      ) (vstd.atomic.impl&%1.id.? patomic!)
    ))
    :pattern ((vstd.atomic.impl&%0.is_for.? self! patomic!))
    :qid internal_vstd.atomic.impl&__0.is_for.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__0.is_for.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionBool::points_to
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%0.points_to.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%0.points_to.)
  (forall ((self! Poly) (v! Poly)) (!
    (= (vstd.atomic.impl&%0.points_to.? self! v!) (= (vstd.atomic.PermissionDataBool./PermissionDataBool/value
       (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.?
          self!
       )))
      ) (%B v!)
    ))
    :pattern ((vstd.atomic.impl&%0.points_to.? self! v!))
    :qid internal_vstd.atomic.impl&__0.points_to.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__0.points_to.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionBool::value
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%0.value.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%0.value.)
  (forall ((self! Poly)) (!
    (= (vstd.atomic.impl&%0.value.? self!) (vstd.atomic.PermissionDataBool./PermissionDataBool/value
      (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.?
         self!
    )))))
    :pattern ((vstd.atomic.impl&%0.value.? self!))
    :qid internal_vstd.atomic.impl&__0.value.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__0.value.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionBool::id
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%0.id.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%0.id.)
  (forall ((self! Poly)) (!
    (= (vstd.atomic.impl&%0.id.? self!) (vstd.atomic.PermissionDataBool./PermissionDataBool/patomic
      (%Poly%vstd.atomic.PermissionDataBool. (Poly%vstd.atomic.PermissionDataBool. (vstd.atomic.impl&%0.view.?
         self!
    )))))
    :pattern ((vstd.atomic.impl&%0.id.? self!))
    :qid internal_vstd.atomic.impl&__0.id.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__0.id.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionU8::is_for
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%2.is_for.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%2.is_for.)
  (forall ((self! Poly) (patomic! Poly)) (!
    (= (vstd.atomic.impl&%2.is_for.? self! patomic!) (= (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic
       (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
          self!
       )))
      ) (vstd.atomic.impl&%3.id.? patomic!)
    ))
    :pattern ((vstd.atomic.impl&%2.is_for.? self! patomic!))
    :qid internal_vstd.atomic.impl&__2.is_for.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__2.is_for.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionU8::points_to
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%2.points_to.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%2.points_to.)
  (forall ((self! Poly) (v! Poly)) (!
    (= (vstd.atomic.impl&%2.points_to.? self! v!) (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value
       (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
          self!
       )))
      ) (%I v!)
    ))
    :pattern ((vstd.atomic.impl&%2.points_to.? self! v!))
    :qid internal_vstd.atomic.impl&__2.points_to.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__2.points_to.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionU8::value
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%2.value.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%2.value.)
  (forall ((self! Poly)) (!
    (= (vstd.atomic.impl&%2.value.? self!) (vstd.atomic.PermissionDataU8./PermissionDataU8/value
      (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
         self!
    )))))
    :pattern ((vstd.atomic.impl&%2.value.? self!))
    :qid internal_vstd.atomic.impl&__2.value.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__2.value.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd.atomic.PermissionU8.)
    (uInv 8 (vstd.atomic.impl&%2.value.? self!))
   )
   :pattern ((vstd.atomic.impl&%2.value.? self!))
   :qid internal_vstd.atomic.impl&__2.value.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic.impl&__2.value.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::atomic::PermissionU8::id
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%2.id.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%2.id.)
  (forall ((self! Poly)) (!
    (= (vstd.atomic.impl&%2.id.? self!) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic
      (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
         self!
    )))))
    :pattern ((vstd.atomic.impl&%2.id.? self!))
    :qid internal_vstd.atomic.impl&__2.id.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__2.id.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionU16::is_for
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%4.is_for.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%4.is_for.)
  (forall ((self! Poly) (patomic! Poly)) (!
    (= (vstd.atomic.impl&%4.is_for.? self! patomic!) (= (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic
       (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
          self!
       )))
      ) (vstd.atomic.impl&%5.id.? patomic!)
    ))
    :pattern ((vstd.atomic.impl&%4.is_for.? self! patomic!))
    :qid internal_vstd.atomic.impl&__4.is_for.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__4.is_for.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionU16::points_to
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%4.points_to.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%4.points_to.)
  (forall ((self! Poly) (v! Poly)) (!
    (= (vstd.atomic.impl&%4.points_to.? self! v!) (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value
       (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
          self!
       )))
      ) (%I v!)
    ))
    :pattern ((vstd.atomic.impl&%4.points_to.? self! v!))
    :qid internal_vstd.atomic.impl&__4.points_to.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__4.points_to.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionU16::value
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%4.value.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%4.value.)
  (forall ((self! Poly)) (!
    (= (vstd.atomic.impl&%4.value.? self!) (vstd.atomic.PermissionDataU16./PermissionDataU16/value
      (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
         self!
    )))))
    :pattern ((vstd.atomic.impl&%4.value.? self!))
    :qid internal_vstd.atomic.impl&__4.value.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__4.value.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd.atomic.PermissionU16.)
    (uInv 16 (vstd.atomic.impl&%4.value.? self!))
   )
   :pattern ((vstd.atomic.impl&%4.value.? self!))
   :qid internal_vstd.atomic.impl&__4.value.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic.impl&__4.value.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::atomic::PermissionU16::id
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%4.id.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%4.id.)
  (forall ((self! Poly)) (!
    (= (vstd.atomic.impl&%4.id.? self!) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic
      (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
         self!
    )))))
    :pattern ((vstd.atomic.impl&%4.id.? self!))
    :qid internal_vstd.atomic.impl&__4.id.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__4.id.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionU32::is_for
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%6.is_for.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%6.is_for.)
  (forall ((self! Poly) (patomic! Poly)) (!
    (= (vstd.atomic.impl&%6.is_for.? self! patomic!) (= (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic
       (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
          self!
       )))
      ) (vstd.atomic.impl&%7.id.? patomic!)
    ))
    :pattern ((vstd.atomic.impl&%6.is_for.? self! patomic!))
    :qid internal_vstd.atomic.impl&__6.is_for.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__6.is_for.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionU32::points_to
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%6.points_to.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%6.points_to.)
  (forall ((self! Poly) (v! Poly)) (!
    (= (vstd.atomic.impl&%6.points_to.? self! v!) (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value
       (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
          self!
       )))
      ) (%I v!)
    ))
    :pattern ((vstd.atomic.impl&%6.points_to.? self! v!))
    :qid internal_vstd.atomic.impl&__6.points_to.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__6.points_to.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionU32::value
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%6.value.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%6.value.)
  (forall ((self! Poly)) (!
    (= (vstd.atomic.impl&%6.value.? self!) (vstd.atomic.PermissionDataU32./PermissionDataU32/value
      (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
         self!
    )))))
    :pattern ((vstd.atomic.impl&%6.value.? self!))
    :qid internal_vstd.atomic.impl&__6.value.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__6.value.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd.atomic.PermissionU32.)
    (uInv 32 (vstd.atomic.impl&%6.value.? self!))
   )
   :pattern ((vstd.atomic.impl&%6.value.? self!))
   :qid internal_vstd.atomic.impl&__6.value.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic.impl&__6.value.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::atomic::PermissionU32::id
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%6.id.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%6.id.)
  (forall ((self! Poly)) (!
    (= (vstd.atomic.impl&%6.id.? self!) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic
      (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
         self!
    )))))
    :pattern ((vstd.atomic.impl&%6.id.? self!))
    :qid internal_vstd.atomic.impl&__6.id.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__6.id.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionU64::is_for
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%8.is_for.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%8.is_for.)
  (forall ((self! Poly) (patomic! Poly)) (!
    (= (vstd.atomic.impl&%8.is_for.? self! patomic!) (= (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
       (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
          self!
       )))
      ) (vstd.atomic.impl&%9.id.? patomic!)
    ))
    :pattern ((vstd.atomic.impl&%8.is_for.? self! patomic!))
    :qid internal_vstd.atomic.impl&__8.is_for.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__8.is_for.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionU64::points_to
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%8.points_to.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%8.points_to.)
  (forall ((self! Poly) (v! Poly)) (!
    (= (vstd.atomic.impl&%8.points_to.? self! v!) (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value
       (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
          self!
       )))
      ) (%I v!)
    ))
    :pattern ((vstd.atomic.impl&%8.points_to.? self! v!))
    :qid internal_vstd.atomic.impl&__8.points_to.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__8.points_to.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionU64::value
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%8.value.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%8.value.)
  (forall ((self! Poly)) (!
    (= (vstd.atomic.impl&%8.value.? self!) (vstd.atomic.PermissionDataU64./PermissionDataU64/value
      (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
         self!
    )))))
    :pattern ((vstd.atomic.impl&%8.value.? self!))
    :qid internal_vstd.atomic.impl&__8.value.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__8.value.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd.atomic.PermissionU64.)
    (uInv 64 (vstd.atomic.impl&%8.value.? self!))
   )
   :pattern ((vstd.atomic.impl&%8.value.? self!))
   :qid internal_vstd.atomic.impl&__8.value.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic.impl&__8.value.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::atomic::PermissionU64::id
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%8.id.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%8.id.)
  (forall ((self! Poly)) (!
    (= (vstd.atomic.impl&%8.id.? self!) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
      (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
         self!
    )))))
    :pattern ((vstd.atomic.impl&%8.id.? self!))
    :qid internal_vstd.atomic.impl&__8.id.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__8.id.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionUsize::is_for
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%10.is_for.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%10.is_for.)
  (forall ((self! Poly) (patomic! Poly)) (!
    (= (vstd.atomic.impl&%10.is_for.? self! patomic!) (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic
       (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
          self!
       )))
      ) (vstd.atomic.impl&%11.id.? patomic!)
    ))
    :pattern ((vstd.atomic.impl&%10.is_for.? self! patomic!))
    :qid internal_vstd.atomic.impl&__10.is_for.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__10.is_for.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionUsize::points_to
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%10.points_to.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%10.points_to.)
  (forall ((self! Poly) (v! Poly)) (!
    (= (vstd.atomic.impl&%10.points_to.? self! v!) (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value
       (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
          self!
       )))
      ) (%I v!)
    ))
    :pattern ((vstd.atomic.impl&%10.points_to.? self! v!))
    :qid internal_vstd.atomic.impl&__10.points_to.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__10.points_to.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionUsize::value
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%10.value.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%10.value.)
  (forall ((self! Poly)) (!
    (= (vstd.atomic.impl&%10.value.? self!) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value
      (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
         self!
    )))))
    :pattern ((vstd.atomic.impl&%10.value.? self!))
    :qid internal_vstd.atomic.impl&__10.value.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__10.value.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd.atomic.PermissionUsize.)
    (uInv SZ (vstd.atomic.impl&%10.value.? self!))
   )
   :pattern ((vstd.atomic.impl&%10.value.? self!))
   :qid internal_vstd.atomic.impl&__10.value.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic.impl&__10.value.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::atomic::PermissionUsize::id
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%10.id.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%10.id.)
  (forall ((self! Poly)) (!
    (= (vstd.atomic.impl&%10.id.? self!) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic
      (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
         self!
    )))))
    :pattern ((vstd.atomic.impl&%10.id.? self!))
    :qid internal_vstd.atomic.impl&__10.id.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__10.id.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionI8::is_for
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%12.is_for.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%12.is_for.)
  (forall ((self! Poly) (patomic! Poly)) (!
    (= (vstd.atomic.impl&%12.is_for.? self! patomic!) (= (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic
       (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
          self!
       )))
      ) (vstd.atomic.impl&%13.id.? patomic!)
    ))
    :pattern ((vstd.atomic.impl&%12.is_for.? self! patomic!))
    :qid internal_vstd.atomic.impl&__12.is_for.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__12.is_for.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionI8::points_to
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%12.points_to.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%12.points_to.)
  (forall ((self! Poly) (v! Poly)) (!
    (= (vstd.atomic.impl&%12.points_to.? self! v!) (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value
       (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
          self!
       )))
      ) (%I v!)
    ))
    :pattern ((vstd.atomic.impl&%12.points_to.? self! v!))
    :qid internal_vstd.atomic.impl&__12.points_to.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__12.points_to.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionI8::value
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%12.value.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%12.value.)
  (forall ((self! Poly)) (!
    (= (vstd.atomic.impl&%12.value.? self!) (vstd.atomic.PermissionDataI8./PermissionDataI8/value
      (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
         self!
    )))))
    :pattern ((vstd.atomic.impl&%12.value.? self!))
    :qid internal_vstd.atomic.impl&__12.value.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__12.value.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd.atomic.PermissionI8.)
    (iInv 8 (vstd.atomic.impl&%12.value.? self!))
   )
   :pattern ((vstd.atomic.impl&%12.value.? self!))
   :qid internal_vstd.atomic.impl&__12.value.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic.impl&__12.value.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::atomic::PermissionI8::id
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%12.id.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%12.id.)
  (forall ((self! Poly)) (!
    (= (vstd.atomic.impl&%12.id.? self!) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic
      (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
         self!
    )))))
    :pattern ((vstd.atomic.impl&%12.id.? self!))
    :qid internal_vstd.atomic.impl&__12.id.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__12.id.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionI16::is_for
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%14.is_for.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%14.is_for.)
  (forall ((self! Poly) (patomic! Poly)) (!
    (= (vstd.atomic.impl&%14.is_for.? self! patomic!) (= (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic
       (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
          self!
       )))
      ) (vstd.atomic.impl&%15.id.? patomic!)
    ))
    :pattern ((vstd.atomic.impl&%14.is_for.? self! patomic!))
    :qid internal_vstd.atomic.impl&__14.is_for.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__14.is_for.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionI16::points_to
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%14.points_to.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%14.points_to.)
  (forall ((self! Poly) (v! Poly)) (!
    (= (vstd.atomic.impl&%14.points_to.? self! v!) (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value
       (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
          self!
       )))
      ) (%I v!)
    ))
    :pattern ((vstd.atomic.impl&%14.points_to.? self! v!))
    :qid internal_vstd.atomic.impl&__14.points_to.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__14.points_to.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionI16::value
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%14.value.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%14.value.)
  (forall ((self! Poly)) (!
    (= (vstd.atomic.impl&%14.value.? self!) (vstd.atomic.PermissionDataI16./PermissionDataI16/value
      (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
         self!
    )))))
    :pattern ((vstd.atomic.impl&%14.value.? self!))
    :qid internal_vstd.atomic.impl&__14.value.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__14.value.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd.atomic.PermissionI16.)
    (iInv 16 (vstd.atomic.impl&%14.value.? self!))
   )
   :pattern ((vstd.atomic.impl&%14.value.? self!))
   :qid internal_vstd.atomic.impl&__14.value.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic.impl&__14.value.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::atomic::PermissionI16::id
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%14.id.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%14.id.)
  (forall ((self! Poly)) (!
    (= (vstd.atomic.impl&%14.id.? self!) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic
      (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
         self!
    )))))
    :pattern ((vstd.atomic.impl&%14.id.? self!))
    :qid internal_vstd.atomic.impl&__14.id.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__14.id.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionI32::is_for
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%16.is_for.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%16.is_for.)
  (forall ((self! Poly) (patomic! Poly)) (!
    (= (vstd.atomic.impl&%16.is_for.? self! patomic!) (= (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic
       (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
          self!
       )))
      ) (vstd.atomic.impl&%17.id.? patomic!)
    ))
    :pattern ((vstd.atomic.impl&%16.is_for.? self! patomic!))
    :qid internal_vstd.atomic.impl&__16.is_for.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__16.is_for.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionI32::points_to
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%16.points_to.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%16.points_to.)
  (forall ((self! Poly) (v! Poly)) (!
    (= (vstd.atomic.impl&%16.points_to.? self! v!) (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value
       (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
          self!
       )))
      ) (%I v!)
    ))
    :pattern ((vstd.atomic.impl&%16.points_to.? self! v!))
    :qid internal_vstd.atomic.impl&__16.points_to.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__16.points_to.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionI32::value
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%16.value.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%16.value.)
  (forall ((self! Poly)) (!
    (= (vstd.atomic.impl&%16.value.? self!) (vstd.atomic.PermissionDataI32./PermissionDataI32/value
      (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
         self!
    )))))
    :pattern ((vstd.atomic.impl&%16.value.? self!))
    :qid internal_vstd.atomic.impl&__16.value.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__16.value.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd.atomic.PermissionI32.)
    (iInv 32 (vstd.atomic.impl&%16.value.? self!))
   )
   :pattern ((vstd.atomic.impl&%16.value.? self!))
   :qid internal_vstd.atomic.impl&__16.value.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic.impl&__16.value.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::atomic::PermissionI32::id
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%16.id.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%16.id.)
  (forall ((self! Poly)) (!
    (= (vstd.atomic.impl&%16.id.? self!) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic
      (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
         self!
    )))))
    :pattern ((vstd.atomic.impl&%16.id.? self!))
    :qid internal_vstd.atomic.impl&__16.id.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__16.id.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionI64::is_for
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%18.is_for.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%18.is_for.)
  (forall ((self! Poly) (patomic! Poly)) (!
    (= (vstd.atomic.impl&%18.is_for.? self! patomic!) (= (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic
       (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
          self!
       )))
      ) (vstd.atomic.impl&%19.id.? patomic!)
    ))
    :pattern ((vstd.atomic.impl&%18.is_for.? self! patomic!))
    :qid internal_vstd.atomic.impl&__18.is_for.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__18.is_for.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionI64::points_to
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%18.points_to.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%18.points_to.)
  (forall ((self! Poly) (v! Poly)) (!
    (= (vstd.atomic.impl&%18.points_to.? self! v!) (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value
       (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
          self!
       )))
      ) (%I v!)
    ))
    :pattern ((vstd.atomic.impl&%18.points_to.? self! v!))
    :qid internal_vstd.atomic.impl&__18.points_to.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__18.points_to.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionI64::value
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%18.value.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%18.value.)
  (forall ((self! Poly)) (!
    (= (vstd.atomic.impl&%18.value.? self!) (vstd.atomic.PermissionDataI64./PermissionDataI64/value
      (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
         self!
    )))))
    :pattern ((vstd.atomic.impl&%18.value.? self!))
    :qid internal_vstd.atomic.impl&__18.value.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__18.value.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd.atomic.PermissionI64.)
    (iInv 64 (vstd.atomic.impl&%18.value.? self!))
   )
   :pattern ((vstd.atomic.impl&%18.value.? self!))
   :qid internal_vstd.atomic.impl&__18.value.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic.impl&__18.value.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::atomic::PermissionI64::id
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%18.id.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%18.id.)
  (forall ((self! Poly)) (!
    (= (vstd.atomic.impl&%18.id.? self!) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic
      (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
         self!
    )))))
    :pattern ((vstd.atomic.impl&%18.id.? self!))
    :qid internal_vstd.atomic.impl&__18.id.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__18.id.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionIsize::is_for
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%20.is_for.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%20.is_for.)
  (forall ((self! Poly) (patomic! Poly)) (!
    (= (vstd.atomic.impl&%20.is_for.? self! patomic!) (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic
       (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
          self!
       )))
      ) (vstd.atomic.impl&%21.id.? patomic!)
    ))
    :pattern ((vstd.atomic.impl&%20.is_for.? self! patomic!))
    :qid internal_vstd.atomic.impl&__20.is_for.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__20.is_for.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionIsize::points_to
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%20.points_to.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%20.points_to.)
  (forall ((self! Poly) (v! Poly)) (!
    (= (vstd.atomic.impl&%20.points_to.? self! v!) (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value
       (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
          self!
       )))
      ) (%I v!)
    ))
    :pattern ((vstd.atomic.impl&%20.points_to.? self! v!))
    :qid internal_vstd.atomic.impl&__20.points_to.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__20.points_to.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionIsize::value
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%20.value.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%20.value.)
  (forall ((self! Poly)) (!
    (= (vstd.atomic.impl&%20.value.? self!) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value
      (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
         self!
    )))))
    :pattern ((vstd.atomic.impl&%20.value.? self!))
    :qid internal_vstd.atomic.impl&__20.value.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__20.value.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd.atomic.PermissionIsize.)
    (iInv SZ (vstd.atomic.impl&%20.value.? self!))
   )
   :pattern ((vstd.atomic.impl&%20.value.? self!))
   :qid internal_vstd.atomic.impl&__20.value.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic.impl&__20.value.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::atomic::PermissionIsize::id
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%20.id.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%20.id.)
  (forall ((self! Poly)) (!
    (= (vstd.atomic.impl&%20.id.? self!) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic
      (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
         self!
    )))))
    :pattern ((vstd.atomic.impl&%20.id.? self!))
    :qid internal_vstd.atomic.impl&__20.id.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__20.id.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionPtr::is_for
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%22.is_for.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%22.is_for.)
  (forall ((T&. Dcr) (T& Type) (self! Poly) (patomic! Poly)) (!
    (= (vstd.atomic.impl&%22.is_for.? T&. T& self! patomic!) (= (vstd.atomic.PermissionDataPtr./PermissionDataPtr/patomic
       (%Poly%vstd.atomic.PermissionDataPtr. (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.?
          T&. T& self!
       )))
      ) (vstd.atomic.impl&%23.id.? T&. T& patomic!)
    ))
    :pattern ((vstd.atomic.impl&%22.is_for.? T&. T& self! patomic!))
    :qid internal_vstd.atomic.impl&__22.is_for.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__22.is_for.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionPtr::points_to
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%22.points_to.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%22.points_to.)
  (forall ((T&. Dcr) (T& Type) (self! Poly) (v! Poly)) (!
    (= (vstd.atomic.impl&%22.points_to.? T&. T& self! v!) (= (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value
       (%Poly%vstd.atomic.PermissionDataPtr. (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.?
          T&. T& self!
       )))
      ) v!
    ))
    :pattern ((vstd.atomic.impl&%22.points_to.? T&. T& self! v!))
    :qid internal_vstd.atomic.impl&__22.points_to.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__22.points_to.?_definition
))))

;; Function-Axioms crate::vstd::atomic::PermissionPtr::value
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%22.value.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%22.value.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.atomic.impl&%22.value.? T&. T& self!) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/value
      (%Poly%vstd.atomic.PermissionDataPtr. (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.?
         T&. T& self!
    )))))
    :pattern ((vstd.atomic.impl&%22.value.? T&. T& self!))
    :qid internal_vstd.atomic.impl&__22.value.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__22.value.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.atomic.PermissionPtr. T&. T&))
    (has_type (vstd.atomic.impl&%22.value.? T&. T& self!) (PTR T&. T&))
   )
   :pattern ((vstd.atomic.impl&%22.value.? T&. T& self!))
   :qid internal_vstd.atomic.impl&__22.value.?_pre_post_definition
   :skolemid skolem_internal_vstd.atomic.impl&__22.value.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::atomic::PermissionPtr::id
(assert
 (fuel_bool_default fuel%vstd.atomic.impl&%22.id.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.atomic.impl&%22.id.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.atomic.impl&%22.id.? T&. T& self!) (vstd.atomic.PermissionDataPtr./PermissionDataPtr/patomic
      (%Poly%vstd.atomic.PermissionDataPtr. (Poly%vstd.atomic.PermissionDataPtr. (vstd.atomic.impl&%22.view.?
         T&. T& self!
    )))))
    :pattern ((vstd.atomic.impl&%22.id.? T&. T& self!))
    :qid internal_vstd.atomic.impl&__22.id.?_definition
    :skolemid skolem_internal_vstd.atomic.impl&__22.id.?_definition
))))

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

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%vstd.view.View. $ (PTR T&. T&))
   :pattern ((tr_bound%vstd.view.View. $ (PTR T&. T&)))
   :qid internal_crate__vstd__raw_ptr__impl&__3_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__impl&__3_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%vstd.view.View. (CONST_PTR $) (PTR T&. T&))
   :pattern ((tr_bound%vstd.view.View. (CONST_PTR $) (PTR T&. T&)))
   :qid internal_crate__vstd__raw_ptr__impl&__4_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__impl&__4_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%vstd.view.View. $ (SLICE T&. T&))
   :pattern ((tr_bound%vstd.view.View. $ (SLICE T&. T&)))
   :qid internal_crate__vstd__slice__impl&__0_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__slice__impl&__0_trait_impl_definition
)))

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
 (tr_bound%vstd.view.View. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (UINT 8))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (UINT 16))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (UINT 32))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (UINT 64))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (SINT 8))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (SINT 16))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (SINT 32))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (SINT 64))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (SINT SZ))
)

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

;; Function-Specs crate::vstd::atomic::PAtomicU8::fetch_add
(declare-fun req%vstd.atomic.impl&%3.fetch_add. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  Int
 ) Bool
)
(declare-const %%global_location_label%%159 Bool)
(declare-const %%global_location_label%%160 Bool)
(declare-const %%global_location_label%%161 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (n! Int))
  (!
   (= (req%vstd.atomic.impl&%3.fetch_add. self! pre%perm! n!) (and
     (=>
      %%global_location_label%%159
      (= (vstd.atomic.impl&%3.id.? (Poly%vstd.atomic.PAtomicU8. self!)) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic
        (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
           (Poly%vstd.atomic.PermissionU8. pre%perm!)
     ))))))
     (=>
      %%global_location_label%%160
      (<= 0 (Add (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
          (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
             pre%perm!
         ))))
        ) n!
     )))
     (=>
      %%global_location_label%%161
      (<= (Add (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
          (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
             pre%perm!
         ))))
        ) n!
       ) 255
   ))))
   :pattern ((req%vstd.atomic.impl&%3.fetch_add. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__3.fetch_add._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__3.fetch_add._definition
)))
(declare-fun ens%vstd.atomic.impl&%3.fetch_add. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  vstd.atomic.PermissionU8. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (perm!
    vstd.atomic.PermissionU8.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%3.fetch_add. self! pre%perm! perm! n! ret!) (and
     (uInv 8 ret!)
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           perm!
       ))))
      ) (Add (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
         (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
            pre%perm!
        ))))
       ) n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%3.fetch_add. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__3.fetch_add._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__3.fetch_add._definition
)))

;; Function-Def crate::vstd::atomic::PAtomicU8::fetch_add
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic.rs:361:9: 361:12 (#468)
(get-info :all-statistics)
(push)
 (declare-const ret! Int)
 (declare-const self! vstd.atomic.PAtomicU8.)
 (declare-const perm!@0 vstd.atomic.PermissionU8.)
 (declare-const n! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 8 n!)
 )
 (assert
  (= (vstd.atomic.impl&%3.id.? (Poly%vstd.atomic.PAtomicU8. self!)) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic
    (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
       (Poly%vstd.atomic.PermissionU8. perm!@0)
 ))))))
 (assert
  (<= 0 (Add (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
      (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
         perm!@0
     ))))
    ) n!
 )))
 (assert
  (<= (Add (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
      (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
         perm!@0
     ))))
    ) n!
   ) 255
 ))
 (declare-const perm!@1 vstd.atomic.PermissionU8.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.atomic.impl&%3.fetch_add_wrapping. self! perm!@0 n!)
    )
    (=>
     (ens%vstd.atomic.impl&%3.fetch_add_wrapping. self! perm!@0 perm!@1 n! tmp%1)
     (=>
      (= ret! tmp%1)
      (and
       (=>
        %%location_label%%1
        (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
           (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
              perm!@0
          ))))
         ) ret!
       ))
       (and
        (=>
         %%location_label%%2
         (= (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic (%Poly%vstd.atomic.PermissionDataU8.
            (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
               perm!@1
           ))))
          ) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic (%Poly%vstd.atomic.PermissionDataU8.
            (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
               perm!@0
        )))))))
        (=>
         %%location_label%%3
         (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
            (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
               perm!@1
           ))))
          ) (Add (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
             (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
                perm!@0
            ))))
           ) n!
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic::PAtomicU8::fetch_sub
(declare-fun req%vstd.atomic.impl&%3.fetch_sub. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  Int
 ) Bool
)
(declare-const %%global_location_label%%162 Bool)
(declare-const %%global_location_label%%163 Bool)
(declare-const %%global_location_label%%164 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (n! Int))
  (!
   (= (req%vstd.atomic.impl&%3.fetch_sub. self! pre%perm! n!) (and
     (=>
      %%global_location_label%%162
      (= (vstd.atomic.impl&%3.id.? (Poly%vstd.atomic.PAtomicU8. self!)) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic
        (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
           (Poly%vstd.atomic.PermissionU8. pre%perm!)
     ))))))
     (=>
      %%global_location_label%%163
      (<= 0 (Sub (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
          (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
             pre%perm!
         ))))
        ) n!
     )))
     (=>
      %%global_location_label%%164
      (<= (Sub (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
          (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
             pre%perm!
         ))))
        ) n!
       ) 255
   ))))
   :pattern ((req%vstd.atomic.impl&%3.fetch_sub. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__3.fetch_sub._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__3.fetch_sub._definition
)))
(declare-fun ens%vstd.atomic.impl&%3.fetch_sub. (vstd.atomic.PAtomicU8. vstd.atomic.PermissionU8.
  vstd.atomic.PermissionU8. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU8.) (pre%perm! vstd.atomic.PermissionU8.) (perm!
    vstd.atomic.PermissionU8.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%3.fetch_sub. self! pre%perm! perm! n! ret!) (and
     (uInv 8 ret!)
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
        (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
           perm!
       ))))
      ) (Sub (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
         (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
            pre%perm!
        ))))
       ) n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%3.fetch_sub. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__3.fetch_sub._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__3.fetch_sub._definition
)))

;; Function-Def crate::vstd::atomic::PAtomicU8::fetch_sub
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic.rs:378:9: 378:12 (#468)
(get-info :all-statistics)
(push)
 (declare-const ret! Int)
 (declare-const self! vstd.atomic.PAtomicU8.)
 (declare-const perm!@0 vstd.atomic.PermissionU8.)
 (declare-const n! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 8 n!)
 )
 (assert
  (= (vstd.atomic.impl&%3.id.? (Poly%vstd.atomic.PAtomicU8. self!)) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic
    (%Poly%vstd.atomic.PermissionDataU8. (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.?
       (Poly%vstd.atomic.PermissionU8. perm!@0)
 ))))))
 (assert
  (<= 0 (Sub (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
      (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
         perm!@0
     ))))
    ) n!
 )))
 (assert
  (<= (Sub (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
      (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
         perm!@0
     ))))
    ) n!
   ) 255
 ))
 (declare-const perm!@1 vstd.atomic.PermissionU8.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.atomic.impl&%3.fetch_sub_wrapping. self! perm!@0 n!)
    )
    (=>
     (ens%vstd.atomic.impl&%3.fetch_sub_wrapping. self! perm!@0 perm!@1 n! tmp%1)
     (=>
      (= ret! tmp%1)
      (and
       (=>
        %%location_label%%1
        (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
           (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
              perm!@0
          ))))
         ) ret!
       ))
       (and
        (=>
         %%location_label%%2
         (= (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic (%Poly%vstd.atomic.PermissionDataU8.
            (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
               perm!@1
           ))))
          ) (vstd.atomic.PermissionDataU8./PermissionDataU8/patomic (%Poly%vstd.atomic.PermissionDataU8.
            (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
               perm!@0
        )))))))
        (=>
         %%location_label%%3
         (= (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
            (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
               perm!@1
           ))))
          ) (Sub (vstd.atomic.PermissionDataU8./PermissionDataU8/value (%Poly%vstd.atomic.PermissionDataU8.
             (Poly%vstd.atomic.PermissionDataU8. (vstd.atomic.impl&%2.view.? (Poly%vstd.atomic.PermissionU8.
                perm!@0
            ))))
           ) n!
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic::PAtomicU16::fetch_add
(declare-fun req%vstd.atomic.impl&%5.fetch_add. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  Int
 ) Bool
)
(declare-const %%global_location_label%%165 Bool)
(declare-const %%global_location_label%%166 Bool)
(declare-const %%global_location_label%%167 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%5.fetch_add. self! pre%perm! n!) (and
     (=>
      %%global_location_label%%165
      (= (vstd.atomic.impl&%5.id.? (Poly%vstd.atomic.PAtomicU16. self!)) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic
        (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
           (Poly%vstd.atomic.PermissionU16. pre%perm!)
     ))))))
     (=>
      %%global_location_label%%166
      (<= 0 (Add (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
          (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
             pre%perm!
         ))))
        ) n!
     )))
     (=>
      %%global_location_label%%167
      (<= (Add (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
          (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
             pre%perm!
         ))))
        ) n!
       ) 65535
   ))))
   :pattern ((req%vstd.atomic.impl&%5.fetch_add. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__5.fetch_add._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__5.fetch_add._definition
)))
(declare-fun ens%vstd.atomic.impl&%5.fetch_add. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  vstd.atomic.PermissionU16. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (perm!
    vstd.atomic.PermissionU16.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%5.fetch_add. self! pre%perm! perm! n! ret!) (and
     (uInv 16 ret!)
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           perm!
       ))))
      ) (Add (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
         (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
            pre%perm!
        ))))
       ) n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%5.fetch_add. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__5.fetch_add._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__5.fetch_add._definition
)))

;; Function-Def crate::vstd::atomic::PAtomicU16::fetch_add
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic.rs:361:9: 361:12 (#494)
(get-info :all-statistics)
(push)
 (declare-const ret! Int)
 (declare-const self! vstd.atomic.PAtomicU16.)
 (declare-const perm!@0 vstd.atomic.PermissionU16.)
 (declare-const n! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 16 n!)
 )
 (assert
  (= (vstd.atomic.impl&%5.id.? (Poly%vstd.atomic.PAtomicU16. self!)) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic
    (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
       (Poly%vstd.atomic.PermissionU16. perm!@0)
 ))))))
 (assert
  (<= 0 (Add (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
      (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
         perm!@0
     ))))
    ) n!
 )))
 (assert
  (<= (Add (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
      (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
         perm!@0
     ))))
    ) n!
   ) 65535
 ))
 (declare-const perm!@1 vstd.atomic.PermissionU16.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.atomic.impl&%5.fetch_add_wrapping. self! perm!@0 n!)
    )
    (=>
     (ens%vstd.atomic.impl&%5.fetch_add_wrapping. self! perm!@0 perm!@1 n! tmp%1)
     (=>
      (= ret! tmp%1)
      (and
       (=>
        %%location_label%%1
        (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
           (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
              perm!@0
          ))))
         ) ret!
       ))
       (and
        (=>
         %%location_label%%2
         (= (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic (%Poly%vstd.atomic.PermissionDataU16.
            (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
               perm!@1
           ))))
          ) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic (%Poly%vstd.atomic.PermissionDataU16.
            (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
               perm!@0
        )))))))
        (=>
         %%location_label%%3
         (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
            (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
               perm!@1
           ))))
          ) (Add (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
             (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
                perm!@0
            ))))
           ) n!
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic::PAtomicU16::fetch_sub
(declare-fun req%vstd.atomic.impl&%5.fetch_sub. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  Int
 ) Bool
)
(declare-const %%global_location_label%%168 Bool)
(declare-const %%global_location_label%%169 Bool)
(declare-const %%global_location_label%%170 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%5.fetch_sub. self! pre%perm! n!) (and
     (=>
      %%global_location_label%%168
      (= (vstd.atomic.impl&%5.id.? (Poly%vstd.atomic.PAtomicU16. self!)) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic
        (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
           (Poly%vstd.atomic.PermissionU16. pre%perm!)
     ))))))
     (=>
      %%global_location_label%%169
      (<= 0 (Sub (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
          (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
             pre%perm!
         ))))
        ) n!
     )))
     (=>
      %%global_location_label%%170
      (<= (Sub (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
          (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
             pre%perm!
         ))))
        ) n!
       ) 65535
   ))))
   :pattern ((req%vstd.atomic.impl&%5.fetch_sub. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__5.fetch_sub._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__5.fetch_sub._definition
)))
(declare-fun ens%vstd.atomic.impl&%5.fetch_sub. (vstd.atomic.PAtomicU16. vstd.atomic.PermissionU16.
  vstd.atomic.PermissionU16. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU16.) (pre%perm! vstd.atomic.PermissionU16.) (perm!
    vstd.atomic.PermissionU16.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%5.fetch_sub. self! pre%perm! perm! n! ret!) (and
     (uInv 16 ret!)
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
        (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
           perm!
       ))))
      ) (Sub (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
         (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
            pre%perm!
        ))))
       ) n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%5.fetch_sub. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__5.fetch_sub._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__5.fetch_sub._definition
)))

;; Function-Def crate::vstd::atomic::PAtomicU16::fetch_sub
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic.rs:378:9: 378:12 (#494)
(get-info :all-statistics)
(push)
 (declare-const ret! Int)
 (declare-const self! vstd.atomic.PAtomicU16.)
 (declare-const perm!@0 vstd.atomic.PermissionU16.)
 (declare-const n! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 16 n!)
 )
 (assert
  (= (vstd.atomic.impl&%5.id.? (Poly%vstd.atomic.PAtomicU16. self!)) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic
    (%Poly%vstd.atomic.PermissionDataU16. (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.?
       (Poly%vstd.atomic.PermissionU16. perm!@0)
 ))))))
 (assert
  (<= 0 (Sub (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
      (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
         perm!@0
     ))))
    ) n!
 )))
 (assert
  (<= (Sub (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
      (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
         perm!@0
     ))))
    ) n!
   ) 65535
 ))
 (declare-const perm!@1 vstd.atomic.PermissionU16.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.atomic.impl&%5.fetch_sub_wrapping. self! perm!@0 n!)
    )
    (=>
     (ens%vstd.atomic.impl&%5.fetch_sub_wrapping. self! perm!@0 perm!@1 n! tmp%1)
     (=>
      (= ret! tmp%1)
      (and
       (=>
        %%location_label%%1
        (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
           (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
              perm!@0
          ))))
         ) ret!
       ))
       (and
        (=>
         %%location_label%%2
         (= (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic (%Poly%vstd.atomic.PermissionDataU16.
            (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
               perm!@1
           ))))
          ) (vstd.atomic.PermissionDataU16./PermissionDataU16/patomic (%Poly%vstd.atomic.PermissionDataU16.
            (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
               perm!@0
        )))))))
        (=>
         %%location_label%%3
         (= (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
            (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
               perm!@1
           ))))
          ) (Sub (vstd.atomic.PermissionDataU16./PermissionDataU16/value (%Poly%vstd.atomic.PermissionDataU16.
             (Poly%vstd.atomic.PermissionDataU16. (vstd.atomic.impl&%4.view.? (Poly%vstd.atomic.PermissionU16.
                perm!@0
            ))))
           ) n!
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic::PAtomicU32::fetch_add
(declare-fun req%vstd.atomic.impl&%7.fetch_add. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  Int
 ) Bool
)
(declare-const %%global_location_label%%171 Bool)
(declare-const %%global_location_label%%172 Bool)
(declare-const %%global_location_label%%173 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%7.fetch_add. self! pre%perm! n!) (and
     (=>
      %%global_location_label%%171
      (= (vstd.atomic.impl&%7.id.? (Poly%vstd.atomic.PAtomicU32. self!)) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic
        (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
           (Poly%vstd.atomic.PermissionU32. pre%perm!)
     ))))))
     (=>
      %%global_location_label%%172
      (<= 0 (Add (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
          (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
             pre%perm!
         ))))
        ) n!
     )))
     (=>
      %%global_location_label%%173
      (<= (Add (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
          (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
             pre%perm!
         ))))
        ) n!
       ) 4294967295
   ))))
   :pattern ((req%vstd.atomic.impl&%7.fetch_add. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__7.fetch_add._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__7.fetch_add._definition
)))
(declare-fun ens%vstd.atomic.impl&%7.fetch_add. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  vstd.atomic.PermissionU32. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (perm!
    vstd.atomic.PermissionU32.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%7.fetch_add. self! pre%perm! perm! n! ret!) (and
     (uInv 32 ret!)
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           perm!
       ))))
      ) (Add (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
         (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
            pre%perm!
        ))))
       ) n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%7.fetch_add. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__7.fetch_add._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__7.fetch_add._definition
)))

;; Function-Def crate::vstd::atomic::PAtomicU32::fetch_add
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic.rs:361:9: 361:12 (#520)
(get-info :all-statistics)
(push)
 (declare-const ret! Int)
 (declare-const self! vstd.atomic.PAtomicU32.)
 (declare-const perm!@0 vstd.atomic.PermissionU32.)
 (declare-const n! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 32 n!)
 )
 (assert
  (= (vstd.atomic.impl&%7.id.? (Poly%vstd.atomic.PAtomicU32. self!)) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic
    (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
       (Poly%vstd.atomic.PermissionU32. perm!@0)
 ))))))
 (assert
  (<= 0 (Add (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
      (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
         perm!@0
     ))))
    ) n!
 )))
 (assert
  (<= (Add (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
      (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
         perm!@0
     ))))
    ) n!
   ) 4294967295
 ))
 (declare-const perm!@1 vstd.atomic.PermissionU32.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.atomic.impl&%7.fetch_add_wrapping. self! perm!@0 n!)
    )
    (=>
     (ens%vstd.atomic.impl&%7.fetch_add_wrapping. self! perm!@0 perm!@1 n! tmp%1)
     (=>
      (= ret! tmp%1)
      (and
       (=>
        %%location_label%%1
        (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
           (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
              perm!@0
          ))))
         ) ret!
       ))
       (and
        (=>
         %%location_label%%2
         (= (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic (%Poly%vstd.atomic.PermissionDataU32.
            (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
               perm!@1
           ))))
          ) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic (%Poly%vstd.atomic.PermissionDataU32.
            (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
               perm!@0
        )))))))
        (=>
         %%location_label%%3
         (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
            (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
               perm!@1
           ))))
          ) (Add (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
             (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
                perm!@0
            ))))
           ) n!
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic::PAtomicU32::fetch_sub
(declare-fun req%vstd.atomic.impl&%7.fetch_sub. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  Int
 ) Bool
)
(declare-const %%global_location_label%%174 Bool)
(declare-const %%global_location_label%%175 Bool)
(declare-const %%global_location_label%%176 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%7.fetch_sub. self! pre%perm! n!) (and
     (=>
      %%global_location_label%%174
      (= (vstd.atomic.impl&%7.id.? (Poly%vstd.atomic.PAtomicU32. self!)) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic
        (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
           (Poly%vstd.atomic.PermissionU32. pre%perm!)
     ))))))
     (=>
      %%global_location_label%%175
      (<= 0 (Sub (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
          (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
             pre%perm!
         ))))
        ) n!
     )))
     (=>
      %%global_location_label%%176
      (<= (Sub (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
          (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
             pre%perm!
         ))))
        ) n!
       ) 4294967295
   ))))
   :pattern ((req%vstd.atomic.impl&%7.fetch_sub. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__7.fetch_sub._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__7.fetch_sub._definition
)))
(declare-fun ens%vstd.atomic.impl&%7.fetch_sub. (vstd.atomic.PAtomicU32. vstd.atomic.PermissionU32.
  vstd.atomic.PermissionU32. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU32.) (pre%perm! vstd.atomic.PermissionU32.) (perm!
    vstd.atomic.PermissionU32.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%7.fetch_sub. self! pre%perm! perm! n! ret!) (and
     (uInv 32 ret!)
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
        (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
           perm!
       ))))
      ) (Sub (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
         (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
            pre%perm!
        ))))
       ) n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%7.fetch_sub. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__7.fetch_sub._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__7.fetch_sub._definition
)))

;; Function-Def crate::vstd::atomic::PAtomicU32::fetch_sub
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic.rs:378:9: 378:12 (#520)
(get-info :all-statistics)
(push)
 (declare-const ret! Int)
 (declare-const self! vstd.atomic.PAtomicU32.)
 (declare-const perm!@0 vstd.atomic.PermissionU32.)
 (declare-const n! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 32 n!)
 )
 (assert
  (= (vstd.atomic.impl&%7.id.? (Poly%vstd.atomic.PAtomicU32. self!)) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic
    (%Poly%vstd.atomic.PermissionDataU32. (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.?
       (Poly%vstd.atomic.PermissionU32. perm!@0)
 ))))))
 (assert
  (<= 0 (Sub (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
      (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
         perm!@0
     ))))
    ) n!
 )))
 (assert
  (<= (Sub (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
      (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
         perm!@0
     ))))
    ) n!
   ) 4294967295
 ))
 (declare-const perm!@1 vstd.atomic.PermissionU32.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.atomic.impl&%7.fetch_sub_wrapping. self! perm!@0 n!)
    )
    (=>
     (ens%vstd.atomic.impl&%7.fetch_sub_wrapping. self! perm!@0 perm!@1 n! tmp%1)
     (=>
      (= ret! tmp%1)
      (and
       (=>
        %%location_label%%1
        (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
           (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
              perm!@0
          ))))
         ) ret!
       ))
       (and
        (=>
         %%location_label%%2
         (= (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic (%Poly%vstd.atomic.PermissionDataU32.
            (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
               perm!@1
           ))))
          ) (vstd.atomic.PermissionDataU32./PermissionDataU32/patomic (%Poly%vstd.atomic.PermissionDataU32.
            (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
               perm!@0
        )))))))
        (=>
         %%location_label%%3
         (= (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
            (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
               perm!@1
           ))))
          ) (Sub (vstd.atomic.PermissionDataU32./PermissionDataU32/value (%Poly%vstd.atomic.PermissionDataU32.
             (Poly%vstd.atomic.PermissionDataU32. (vstd.atomic.impl&%6.view.? (Poly%vstd.atomic.PermissionU32.
                perm!@0
            ))))
           ) n!
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic::PAtomicU64::fetch_add
(declare-fun req%vstd.atomic.impl&%9.fetch_add. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%177 Bool)
(declare-const %%global_location_label%%178 Bool)
(declare-const %%global_location_label%%179 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%9.fetch_add. self! pre%perm! n!) (and
     (=>
      %%global_location_label%%177
      (= (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. self!)) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
        (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
           (Poly%vstd.atomic.PermissionU64. pre%perm!)
     ))))))
     (=>
      %%global_location_label%%178
      (<= 0 (Add (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
          (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
             pre%perm!
         ))))
        ) n!
     )))
     (=>
      %%global_location_label%%179
      (<= (Add (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
          (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
             pre%perm!
         ))))
        ) n!
       ) 18446744073709551615
   ))))
   :pattern ((req%vstd.atomic.impl&%9.fetch_add. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__9.fetch_add._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__9.fetch_add._definition
)))
(declare-fun ens%vstd.atomic.impl&%9.fetch_add. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  vstd.atomic.PermissionU64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (perm!
    vstd.atomic.PermissionU64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%9.fetch_add. self! pre%perm! perm! n! ret!) (and
     (uInv 64 ret!)
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           perm!
       ))))
      ) (Add (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
         (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
            pre%perm!
        ))))
       ) n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%9.fetch_add. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__9.fetch_add._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__9.fetch_add._definition
)))

;; Function-Def crate::vstd::atomic::PAtomicU64::fetch_add
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic.rs:361:9: 361:12 (#546)
(get-info :all-statistics)
(push)
 (declare-const ret! Int)
 (declare-const self! vstd.atomic.PAtomicU64.)
 (declare-const perm!@0 vstd.atomic.PermissionU64.)
 (declare-const n! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 n!)
 )
 (assert
  (= (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. self!)) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
    (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
       (Poly%vstd.atomic.PermissionU64. perm!@0)
 ))))))
 (assert
  (<= 0 (Add (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
      (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
         perm!@0
     ))))
    ) n!
 )))
 (assert
  (<= (Add (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
      (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
         perm!@0
     ))))
    ) n!
   ) 18446744073709551615
 ))
 (declare-const perm!@1 vstd.atomic.PermissionU64.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.atomic.impl&%9.fetch_add_wrapping. self! perm!@0 n!)
    )
    (=>
     (ens%vstd.atomic.impl&%9.fetch_add_wrapping. self! perm!@0 perm!@1 n! tmp%1)
     (=>
      (= ret! tmp%1)
      (and
       (=>
        %%location_label%%1
        (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
           (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
              perm!@0
          ))))
         ) ret!
       ))
       (and
        (=>
         %%location_label%%2
         (= (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
            (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
               perm!@1
           ))))
          ) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
            (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
               perm!@0
        )))))))
        (=>
         %%location_label%%3
         (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
            (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
               perm!@1
           ))))
          ) (Add (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
             (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
                perm!@0
            ))))
           ) n!
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic::PAtomicU64::fetch_sub
(declare-fun req%vstd.atomic.impl&%9.fetch_sub. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%180 Bool)
(declare-const %%global_location_label%%181 Bool)
(declare-const %%global_location_label%%182 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%9.fetch_sub. self! pre%perm! n!) (and
     (=>
      %%global_location_label%%180
      (= (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. self!)) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
        (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
           (Poly%vstd.atomic.PermissionU64. pre%perm!)
     ))))))
     (=>
      %%global_location_label%%181
      (<= 0 (Sub (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
          (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
             pre%perm!
         ))))
        ) n!
     )))
     (=>
      %%global_location_label%%182
      (<= (Sub (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
          (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
             pre%perm!
         ))))
        ) n!
       ) 18446744073709551615
   ))))
   :pattern ((req%vstd.atomic.impl&%9.fetch_sub. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__9.fetch_sub._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__9.fetch_sub._definition
)))
(declare-fun ens%vstd.atomic.impl&%9.fetch_sub. (vstd.atomic.PAtomicU64. vstd.atomic.PermissionU64.
  vstd.atomic.PermissionU64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicU64.) (pre%perm! vstd.atomic.PermissionU64.) (perm!
    vstd.atomic.PermissionU64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%9.fetch_sub. self! pre%perm! perm! n! ret!) (and
     (uInv 64 ret!)
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
        (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
           perm!
       ))))
      ) (Sub (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
         (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
            pre%perm!
        ))))
       ) n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%9.fetch_sub. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__9.fetch_sub._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__9.fetch_sub._definition
)))

;; Function-Def crate::vstd::atomic::PAtomicU64::fetch_sub
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic.rs:378:9: 378:12 (#546)
(get-info :all-statistics)
(push)
 (declare-const ret! Int)
 (declare-const self! vstd.atomic.PAtomicU64.)
 (declare-const perm!@0 vstd.atomic.PermissionU64.)
 (declare-const n! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 n!)
 )
 (assert
  (= (vstd.atomic.impl&%9.id.? (Poly%vstd.atomic.PAtomicU64. self!)) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic
    (%Poly%vstd.atomic.PermissionDataU64. (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.?
       (Poly%vstd.atomic.PermissionU64. perm!@0)
 ))))))
 (assert
  (<= 0 (Sub (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
      (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
         perm!@0
     ))))
    ) n!
 )))
 (assert
  (<= (Sub (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
      (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
         perm!@0
     ))))
    ) n!
   ) 18446744073709551615
 ))
 (declare-const perm!@1 vstd.atomic.PermissionU64.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.atomic.impl&%9.fetch_sub_wrapping. self! perm!@0 n!)
    )
    (=>
     (ens%vstd.atomic.impl&%9.fetch_sub_wrapping. self! perm!@0 perm!@1 n! tmp%1)
     (=>
      (= ret! tmp%1)
      (and
       (=>
        %%location_label%%1
        (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
           (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
              perm!@0
          ))))
         ) ret!
       ))
       (and
        (=>
         %%location_label%%2
         (= (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
            (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
               perm!@1
           ))))
          ) (vstd.atomic.PermissionDataU64./PermissionDataU64/patomic (%Poly%vstd.atomic.PermissionDataU64.
            (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
               perm!@0
        )))))))
        (=>
         %%location_label%%3
         (= (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
            (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
               perm!@1
           ))))
          ) (Sub (vstd.atomic.PermissionDataU64./PermissionDataU64/value (%Poly%vstd.atomic.PermissionDataU64.
             (Poly%vstd.atomic.PermissionDataU64. (vstd.atomic.impl&%8.view.? (Poly%vstd.atomic.PermissionU64.
                perm!@0
            ))))
           ) n!
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic::PAtomicUsize::fetch_add
(declare-fun req%vstd.atomic.impl&%11.fetch_add. (vstd.atomic.PAtomicUsize. vstd.atomic.PermissionUsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%183 Bool)
(declare-const %%global_location_label%%184 Bool)
(declare-const %%global_location_label%%185 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (n! Int)
  ) (!
   (= (req%vstd.atomic.impl&%11.fetch_add. self! pre%perm! n!) (and
     (=>
      %%global_location_label%%183
      (= (vstd.atomic.impl&%11.id.? (Poly%vstd.atomic.PAtomicUsize. self!)) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic
        (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
           (Poly%vstd.atomic.PermissionUsize. pre%perm!)
     ))))))
     (=>
      %%global_location_label%%184
      (<= 0 (Add (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
          (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
             pre%perm!
         ))))
        ) n!
     )))
     (=>
      %%global_location_label%%185
      (<= (Add (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
          (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
             pre%perm!
         ))))
        ) n!
       ) (- (uHi SZ) 1)
   ))))
   :pattern ((req%vstd.atomic.impl&%11.fetch_add. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__11.fetch_add._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__11.fetch_add._definition
)))
(declare-fun ens%vstd.atomic.impl&%11.fetch_add. (vstd.atomic.PAtomicUsize. vstd.atomic.PermissionUsize.
  vstd.atomic.PermissionUsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (perm! vstd.atomic.PermissionUsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%11.fetch_add. self! pre%perm! perm! n! ret!) (and
     (uInv SZ ret!)
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           perm!
       ))))
      ) (Add (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
         (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
            pre%perm!
        ))))
       ) n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%11.fetch_add. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__11.fetch_add._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__11.fetch_add._definition
)))

;; Function-Def crate::vstd::atomic::PAtomicUsize::fetch_add
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic.rs:361:9: 361:12 (#572)
(get-info :all-statistics)
(push)
 (declare-const ret! Int)
 (declare-const self! vstd.atomic.PAtomicUsize.)
 (declare-const perm!@0 vstd.atomic.PermissionUsize.)
 (declare-const n! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv SZ n!)
 )
 (assert
  (= (vstd.atomic.impl&%11.id.? (Poly%vstd.atomic.PAtomicUsize. self!)) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic
    (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
       (Poly%vstd.atomic.PermissionUsize. perm!@0)
 ))))))
 (assert
  (<= 0 (Add (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
      (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
         perm!@0
     ))))
    ) n!
 )))
 (assert
  (<= (Add (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
      (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
         perm!@0
     ))))
    ) n!
   ) (- (uHi SZ) 1)
 ))
 (declare-const perm!@1 vstd.atomic.PermissionUsize.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.atomic.impl&%11.fetch_add_wrapping. self! perm!@0 n!)
    )
    (=>
     (ens%vstd.atomic.impl&%11.fetch_add_wrapping. self! perm!@0 perm!@1 n! tmp%1)
     (=>
      (= ret! tmp%1)
      (and
       (=>
        %%location_label%%1
        (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
           (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
              perm!@0
          ))))
         ) ret!
       ))
       (and
        (=>
         %%location_label%%2
         (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic (%Poly%vstd.atomic.PermissionDataUsize.
            (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
               perm!@1
           ))))
          ) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic (%Poly%vstd.atomic.PermissionDataUsize.
            (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
               perm!@0
        )))))))
        (=>
         %%location_label%%3
         (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
            (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
               perm!@1
           ))))
          ) (Add (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
             (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
                perm!@0
            ))))
           ) n!
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic::PAtomicUsize::fetch_sub
(declare-fun req%vstd.atomic.impl&%11.fetch_sub. (vstd.atomic.PAtomicUsize. vstd.atomic.PermissionUsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%186 Bool)
(declare-const %%global_location_label%%187 Bool)
(declare-const %%global_location_label%%188 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (n! Int)
  ) (!
   (= (req%vstd.atomic.impl&%11.fetch_sub. self! pre%perm! n!) (and
     (=>
      %%global_location_label%%186
      (= (vstd.atomic.impl&%11.id.? (Poly%vstd.atomic.PAtomicUsize. self!)) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic
        (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
           (Poly%vstd.atomic.PermissionUsize. pre%perm!)
     ))))))
     (=>
      %%global_location_label%%187
      (<= 0 (Sub (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
          (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
             pre%perm!
         ))))
        ) n!
     )))
     (=>
      %%global_location_label%%188
      (<= (Sub (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
          (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
             pre%perm!
         ))))
        ) n!
       ) (- (uHi SZ) 1)
   ))))
   :pattern ((req%vstd.atomic.impl&%11.fetch_sub. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__11.fetch_sub._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__11.fetch_sub._definition
)))
(declare-fun ens%vstd.atomic.impl&%11.fetch_sub. (vstd.atomic.PAtomicUsize. vstd.atomic.PermissionUsize.
  vstd.atomic.PermissionUsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicUsize.) (pre%perm! vstd.atomic.PermissionUsize.)
   (perm! vstd.atomic.PermissionUsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%11.fetch_sub. self! pre%perm! perm! n! ret!) (and
     (uInv SZ ret!)
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
        (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
           perm!
       ))))
      ) (Sub (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
         (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
            pre%perm!
        ))))
       ) n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%11.fetch_sub. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__11.fetch_sub._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__11.fetch_sub._definition
)))

;; Function-Def crate::vstd::atomic::PAtomicUsize::fetch_sub
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic.rs:378:9: 378:12 (#572)
(get-info :all-statistics)
(push)
 (declare-const ret! Int)
 (declare-const self! vstd.atomic.PAtomicUsize.)
 (declare-const perm!@0 vstd.atomic.PermissionUsize.)
 (declare-const n! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv SZ n!)
 )
 (assert
  (= (vstd.atomic.impl&%11.id.? (Poly%vstd.atomic.PAtomicUsize. self!)) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic
    (%Poly%vstd.atomic.PermissionDataUsize. (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.?
       (Poly%vstd.atomic.PermissionUsize. perm!@0)
 ))))))
 (assert
  (<= 0 (Sub (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
      (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
         perm!@0
     ))))
    ) n!
 )))
 (assert
  (<= (Sub (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
      (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
         perm!@0
     ))))
    ) n!
   ) (- (uHi SZ) 1)
 ))
 (declare-const perm!@1 vstd.atomic.PermissionUsize.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.atomic.impl&%11.fetch_sub_wrapping. self! perm!@0 n!)
    )
    (=>
     (ens%vstd.atomic.impl&%11.fetch_sub_wrapping. self! perm!@0 perm!@1 n! tmp%1)
     (=>
      (= ret! tmp%1)
      (and
       (=>
        %%location_label%%1
        (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
           (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
              perm!@0
          ))))
         ) ret!
       ))
       (and
        (=>
         %%location_label%%2
         (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic (%Poly%vstd.atomic.PermissionDataUsize.
            (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
               perm!@1
           ))))
          ) (vstd.atomic.PermissionDataUsize./PermissionDataUsize/patomic (%Poly%vstd.atomic.PermissionDataUsize.
            (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
               perm!@0
        )))))))
        (=>
         %%location_label%%3
         (= (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
            (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
               perm!@1
           ))))
          ) (Sub (vstd.atomic.PermissionDataUsize./PermissionDataUsize/value (%Poly%vstd.atomic.PermissionDataUsize.
             (Poly%vstd.atomic.PermissionDataUsize. (vstd.atomic.impl&%10.view.? (Poly%vstd.atomic.PermissionUsize.
                perm!@0
            ))))
           ) n!
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic::PAtomicI8::fetch_add
(declare-fun req%vstd.atomic.impl&%13.fetch_add. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  Int
 ) Bool
)
(declare-const %%global_location_label%%189 Bool)
(declare-const %%global_location_label%%190 Bool)
(declare-const %%global_location_label%%191 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (n! Int))
  (!
   (= (req%vstd.atomic.impl&%13.fetch_add. self! pre%perm! n!) (and
     (=>
      %%global_location_label%%189
      (= (vstd.atomic.impl&%13.id.? (Poly%vstd.atomic.PAtomicI8. self!)) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic
        (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
           (Poly%vstd.atomic.PermissionI8. pre%perm!)
     ))))))
     (=>
      %%global_location_label%%190
      (<= (- 128) (Add (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
          (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
             pre%perm!
         ))))
        ) n!
     )))
     (=>
      %%global_location_label%%191
      (<= (Add (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
          (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
             pre%perm!
         ))))
        ) n!
       ) 127
   ))))
   :pattern ((req%vstd.atomic.impl&%13.fetch_add. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__13.fetch_add._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__13.fetch_add._definition
)))
(declare-fun ens%vstd.atomic.impl&%13.fetch_add. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  vstd.atomic.PermissionI8. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (perm!
    vstd.atomic.PermissionI8.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%13.fetch_add. self! pre%perm! perm! n! ret!) (and
     (iInv 8 ret!)
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           perm!
       ))))
      ) (Add (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
         (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
            pre%perm!
        ))))
       ) n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%13.fetch_add. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__13.fetch_add._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__13.fetch_add._definition
)))

;; Function-Def crate::vstd::atomic::PAtomicI8::fetch_add
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic.rs:361:9: 361:12 (#598)
(get-info :all-statistics)
(push)
 (declare-const ret! Int)
 (declare-const self! vstd.atomic.PAtomicI8.)
 (declare-const perm!@0 vstd.atomic.PermissionI8.)
 (declare-const n! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 (assert
  (iInv 8 n!)
 )
 (assert
  (= (vstd.atomic.impl&%13.id.? (Poly%vstd.atomic.PAtomicI8. self!)) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic
    (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
       (Poly%vstd.atomic.PermissionI8. perm!@0)
 ))))))
 (assert
  (<= (- 128) (Add (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
      (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
         perm!@0
     ))))
    ) n!
 )))
 (assert
  (<= (Add (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
      (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
         perm!@0
     ))))
    ) n!
   ) 127
 ))
 (declare-const perm!@1 vstd.atomic.PermissionI8.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.atomic.impl&%13.fetch_add_wrapping. self! perm!@0 n!)
    )
    (=>
     (ens%vstd.atomic.impl&%13.fetch_add_wrapping. self! perm!@0 perm!@1 n! tmp%1)
     (=>
      (= ret! tmp%1)
      (and
       (=>
        %%location_label%%1
        (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
           (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
              perm!@0
          ))))
         ) ret!
       ))
       (and
        (=>
         %%location_label%%2
         (= (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic (%Poly%vstd.atomic.PermissionDataI8.
            (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
               perm!@1
           ))))
          ) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic (%Poly%vstd.atomic.PermissionDataI8.
            (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
               perm!@0
        )))))))
        (=>
         %%location_label%%3
         (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
            (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
               perm!@1
           ))))
          ) (Add (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
             (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
                perm!@0
            ))))
           ) n!
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic::PAtomicI8::fetch_sub
(declare-fun req%vstd.atomic.impl&%13.fetch_sub. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  Int
 ) Bool
)
(declare-const %%global_location_label%%192 Bool)
(declare-const %%global_location_label%%193 Bool)
(declare-const %%global_location_label%%194 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (n! Int))
  (!
   (= (req%vstd.atomic.impl&%13.fetch_sub. self! pre%perm! n!) (and
     (=>
      %%global_location_label%%192
      (= (vstd.atomic.impl&%13.id.? (Poly%vstd.atomic.PAtomicI8. self!)) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic
        (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
           (Poly%vstd.atomic.PermissionI8. pre%perm!)
     ))))))
     (=>
      %%global_location_label%%193
      (<= (- 128) (Sub (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
          (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
             pre%perm!
         ))))
        ) n!
     )))
     (=>
      %%global_location_label%%194
      (<= (Sub (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
          (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
             pre%perm!
         ))))
        ) n!
       ) 127
   ))))
   :pattern ((req%vstd.atomic.impl&%13.fetch_sub. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__13.fetch_sub._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__13.fetch_sub._definition
)))
(declare-fun ens%vstd.atomic.impl&%13.fetch_sub. (vstd.atomic.PAtomicI8. vstd.atomic.PermissionI8.
  vstd.atomic.PermissionI8. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI8.) (pre%perm! vstd.atomic.PermissionI8.) (perm!
    vstd.atomic.PermissionI8.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%13.fetch_sub. self! pre%perm! perm! n! ret!) (and
     (iInv 8 ret!)
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
        (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
           perm!
       ))))
      ) (Sub (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
         (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
            pre%perm!
        ))))
       ) n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%13.fetch_sub. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__13.fetch_sub._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__13.fetch_sub._definition
)))

;; Function-Def crate::vstd::atomic::PAtomicI8::fetch_sub
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic.rs:378:9: 378:12 (#598)
(get-info :all-statistics)
(push)
 (declare-const ret! Int)
 (declare-const self! vstd.atomic.PAtomicI8.)
 (declare-const perm!@0 vstd.atomic.PermissionI8.)
 (declare-const n! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 (assert
  (iInv 8 n!)
 )
 (assert
  (= (vstd.atomic.impl&%13.id.? (Poly%vstd.atomic.PAtomicI8. self!)) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic
    (%Poly%vstd.atomic.PermissionDataI8. (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.?
       (Poly%vstd.atomic.PermissionI8. perm!@0)
 ))))))
 (assert
  (<= (- 128) (Sub (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
      (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
         perm!@0
     ))))
    ) n!
 )))
 (assert
  (<= (Sub (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
      (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
         perm!@0
     ))))
    ) n!
   ) 127
 ))
 (declare-const perm!@1 vstd.atomic.PermissionI8.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.atomic.impl&%13.fetch_sub_wrapping. self! perm!@0 n!)
    )
    (=>
     (ens%vstd.atomic.impl&%13.fetch_sub_wrapping. self! perm!@0 perm!@1 n! tmp%1)
     (=>
      (= ret! tmp%1)
      (and
       (=>
        %%location_label%%1
        (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
           (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
              perm!@0
          ))))
         ) ret!
       ))
       (and
        (=>
         %%location_label%%2
         (= (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic (%Poly%vstd.atomic.PermissionDataI8.
            (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
               perm!@1
           ))))
          ) (vstd.atomic.PermissionDataI8./PermissionDataI8/patomic (%Poly%vstd.atomic.PermissionDataI8.
            (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
               perm!@0
        )))))))
        (=>
         %%location_label%%3
         (= (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
            (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
               perm!@1
           ))))
          ) (Sub (vstd.atomic.PermissionDataI8./PermissionDataI8/value (%Poly%vstd.atomic.PermissionDataI8.
             (Poly%vstd.atomic.PermissionDataI8. (vstd.atomic.impl&%12.view.? (Poly%vstd.atomic.PermissionI8.
                perm!@0
            ))))
           ) n!
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic::PAtomicI16::fetch_add
(declare-fun req%vstd.atomic.impl&%15.fetch_add. (vstd.atomic.PAtomicI16. vstd.atomic.PermissionI16.
  Int
 ) Bool
)
(declare-const %%global_location_label%%195 Bool)
(declare-const %%global_location_label%%196 Bool)
(declare-const %%global_location_label%%197 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%15.fetch_add. self! pre%perm! n!) (and
     (=>
      %%global_location_label%%195
      (= (vstd.atomic.impl&%15.id.? (Poly%vstd.atomic.PAtomicI16. self!)) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic
        (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
           (Poly%vstd.atomic.PermissionI16. pre%perm!)
     ))))))
     (=>
      %%global_location_label%%196
      (<= (- 32768) (Add (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
          (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
             pre%perm!
         ))))
        ) n!
     )))
     (=>
      %%global_location_label%%197
      (<= (Add (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
          (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
             pre%perm!
         ))))
        ) n!
       ) 32767
   ))))
   :pattern ((req%vstd.atomic.impl&%15.fetch_add. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__15.fetch_add._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__15.fetch_add._definition
)))
(declare-fun ens%vstd.atomic.impl&%15.fetch_add. (vstd.atomic.PAtomicI16. vstd.atomic.PermissionI16.
  vstd.atomic.PermissionI16. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (perm!
    vstd.atomic.PermissionI16.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%15.fetch_add. self! pre%perm! perm! n! ret!) (and
     (iInv 16 ret!)
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           perm!
       ))))
      ) (Add (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
         (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
            pre%perm!
        ))))
       ) n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%15.fetch_add. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__15.fetch_add._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__15.fetch_add._definition
)))

;; Function-Def crate::vstd::atomic::PAtomicI16::fetch_add
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic.rs:361:9: 361:12 (#624)
(get-info :all-statistics)
(push)
 (declare-const ret! Int)
 (declare-const self! vstd.atomic.PAtomicI16.)
 (declare-const perm!@0 vstd.atomic.PermissionI16.)
 (declare-const n! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 (assert
  (iInv 16 n!)
 )
 (assert
  (= (vstd.atomic.impl&%15.id.? (Poly%vstd.atomic.PAtomicI16. self!)) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic
    (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
       (Poly%vstd.atomic.PermissionI16. perm!@0)
 ))))))
 (assert
  (<= (- 32768) (Add (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
      (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
         perm!@0
     ))))
    ) n!
 )))
 (assert
  (<= (Add (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
      (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
         perm!@0
     ))))
    ) n!
   ) 32767
 ))
 (declare-const perm!@1 vstd.atomic.PermissionI16.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.atomic.impl&%15.fetch_add_wrapping. self! perm!@0 n!)
    )
    (=>
     (ens%vstd.atomic.impl&%15.fetch_add_wrapping. self! perm!@0 perm!@1 n! tmp%1)
     (=>
      (= ret! tmp%1)
      (and
       (=>
        %%location_label%%1
        (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
           (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
              perm!@0
          ))))
         ) ret!
       ))
       (and
        (=>
         %%location_label%%2
         (= (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic (%Poly%vstd.atomic.PermissionDataI16.
            (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
               perm!@1
           ))))
          ) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic (%Poly%vstd.atomic.PermissionDataI16.
            (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
               perm!@0
        )))))))
        (=>
         %%location_label%%3
         (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
            (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
               perm!@1
           ))))
          ) (Add (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
             (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
                perm!@0
            ))))
           ) n!
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic::PAtomicI16::fetch_sub
(declare-fun req%vstd.atomic.impl&%15.fetch_sub. (vstd.atomic.PAtomicI16. vstd.atomic.PermissionI16.
  Int
 ) Bool
)
(declare-const %%global_location_label%%198 Bool)
(declare-const %%global_location_label%%199 Bool)
(declare-const %%global_location_label%%200 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%15.fetch_sub. self! pre%perm! n!) (and
     (=>
      %%global_location_label%%198
      (= (vstd.atomic.impl&%15.id.? (Poly%vstd.atomic.PAtomicI16. self!)) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic
        (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
           (Poly%vstd.atomic.PermissionI16. pre%perm!)
     ))))))
     (=>
      %%global_location_label%%199
      (<= (- 32768) (Sub (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
          (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
             pre%perm!
         ))))
        ) n!
     )))
     (=>
      %%global_location_label%%200
      (<= (Sub (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
          (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
             pre%perm!
         ))))
        ) n!
       ) 32767
   ))))
   :pattern ((req%vstd.atomic.impl&%15.fetch_sub. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__15.fetch_sub._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__15.fetch_sub._definition
)))
(declare-fun ens%vstd.atomic.impl&%15.fetch_sub. (vstd.atomic.PAtomicI16. vstd.atomic.PermissionI16.
  vstd.atomic.PermissionI16. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI16.) (pre%perm! vstd.atomic.PermissionI16.) (perm!
    vstd.atomic.PermissionI16.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%15.fetch_sub. self! pre%perm! perm! n! ret!) (and
     (iInv 16 ret!)
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
        (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
           perm!
       ))))
      ) (Sub (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
         (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
            pre%perm!
        ))))
       ) n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%15.fetch_sub. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__15.fetch_sub._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__15.fetch_sub._definition
)))

;; Function-Def crate::vstd::atomic::PAtomicI16::fetch_sub
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic.rs:378:9: 378:12 (#624)
(get-info :all-statistics)
(push)
 (declare-const ret! Int)
 (declare-const self! vstd.atomic.PAtomicI16.)
 (declare-const perm!@0 vstd.atomic.PermissionI16.)
 (declare-const n! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 (assert
  (iInv 16 n!)
 )
 (assert
  (= (vstd.atomic.impl&%15.id.? (Poly%vstd.atomic.PAtomicI16. self!)) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic
    (%Poly%vstd.atomic.PermissionDataI16. (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.?
       (Poly%vstd.atomic.PermissionI16. perm!@0)
 ))))))
 (assert
  (<= (- 32768) (Sub (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
      (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
         perm!@0
     ))))
    ) n!
 )))
 (assert
  (<= (Sub (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
      (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
         perm!@0
     ))))
    ) n!
   ) 32767
 ))
 (declare-const perm!@1 vstd.atomic.PermissionI16.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.atomic.impl&%15.fetch_sub_wrapping. self! perm!@0 n!)
    )
    (=>
     (ens%vstd.atomic.impl&%15.fetch_sub_wrapping. self! perm!@0 perm!@1 n! tmp%1)
     (=>
      (= ret! tmp%1)
      (and
       (=>
        %%location_label%%1
        (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
           (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
              perm!@0
          ))))
         ) ret!
       ))
       (and
        (=>
         %%location_label%%2
         (= (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic (%Poly%vstd.atomic.PermissionDataI16.
            (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
               perm!@1
           ))))
          ) (vstd.atomic.PermissionDataI16./PermissionDataI16/patomic (%Poly%vstd.atomic.PermissionDataI16.
            (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
               perm!@0
        )))))))
        (=>
         %%location_label%%3
         (= (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
            (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
               perm!@1
           ))))
          ) (Sub (vstd.atomic.PermissionDataI16./PermissionDataI16/value (%Poly%vstd.atomic.PermissionDataI16.
             (Poly%vstd.atomic.PermissionDataI16. (vstd.atomic.impl&%14.view.? (Poly%vstd.atomic.PermissionI16.
                perm!@0
            ))))
           ) n!
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic::PAtomicI32::fetch_add
(declare-fun req%vstd.atomic.impl&%17.fetch_add. (vstd.atomic.PAtomicI32. vstd.atomic.PermissionI32.
  Int
 ) Bool
)
(declare-const %%global_location_label%%201 Bool)
(declare-const %%global_location_label%%202 Bool)
(declare-const %%global_location_label%%203 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%17.fetch_add. self! pre%perm! n!) (and
     (=>
      %%global_location_label%%201
      (= (vstd.atomic.impl&%17.id.? (Poly%vstd.atomic.PAtomicI32. self!)) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic
        (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
           (Poly%vstd.atomic.PermissionI32. pre%perm!)
     ))))))
     (=>
      %%global_location_label%%202
      (<= (- 2147483648) (Add (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
          (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
             pre%perm!
         ))))
        ) n!
     )))
     (=>
      %%global_location_label%%203
      (<= (Add (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
          (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
             pre%perm!
         ))))
        ) n!
       ) 2147483647
   ))))
   :pattern ((req%vstd.atomic.impl&%17.fetch_add. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__17.fetch_add._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__17.fetch_add._definition
)))
(declare-fun ens%vstd.atomic.impl&%17.fetch_add. (vstd.atomic.PAtomicI32. vstd.atomic.PermissionI32.
  vstd.atomic.PermissionI32. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (perm!
    vstd.atomic.PermissionI32.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%17.fetch_add. self! pre%perm! perm! n! ret!) (and
     (iInv 32 ret!)
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           perm!
       ))))
      ) (Add (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
         (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
            pre%perm!
        ))))
       ) n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%17.fetch_add. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__17.fetch_add._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__17.fetch_add._definition
)))

;; Function-Def crate::vstd::atomic::PAtomicI32::fetch_add
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic.rs:361:9: 361:12 (#650)
(get-info :all-statistics)
(push)
 (declare-const ret! Int)
 (declare-const self! vstd.atomic.PAtomicI32.)
 (declare-const perm!@0 vstd.atomic.PermissionI32.)
 (declare-const n! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 (assert
  (iInv 32 n!)
 )
 (assert
  (= (vstd.atomic.impl&%17.id.? (Poly%vstd.atomic.PAtomicI32. self!)) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic
    (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
       (Poly%vstd.atomic.PermissionI32. perm!@0)
 ))))))
 (assert
  (<= (- 2147483648) (Add (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
      (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
         perm!@0
     ))))
    ) n!
 )))
 (assert
  (<= (Add (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
      (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
         perm!@0
     ))))
    ) n!
   ) 2147483647
 ))
 (declare-const perm!@1 vstd.atomic.PermissionI32.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.atomic.impl&%17.fetch_add_wrapping. self! perm!@0 n!)
    )
    (=>
     (ens%vstd.atomic.impl&%17.fetch_add_wrapping. self! perm!@0 perm!@1 n! tmp%1)
     (=>
      (= ret! tmp%1)
      (and
       (=>
        %%location_label%%1
        (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
           (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
              perm!@0
          ))))
         ) ret!
       ))
       (and
        (=>
         %%location_label%%2
         (= (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic (%Poly%vstd.atomic.PermissionDataI32.
            (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
               perm!@1
           ))))
          ) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic (%Poly%vstd.atomic.PermissionDataI32.
            (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
               perm!@0
        )))))))
        (=>
         %%location_label%%3
         (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
            (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
               perm!@1
           ))))
          ) (Add (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
             (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
                perm!@0
            ))))
           ) n!
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic::PAtomicI32::fetch_sub
(declare-fun req%vstd.atomic.impl&%17.fetch_sub. (vstd.atomic.PAtomicI32. vstd.atomic.PermissionI32.
  Int
 ) Bool
)
(declare-const %%global_location_label%%204 Bool)
(declare-const %%global_location_label%%205 Bool)
(declare-const %%global_location_label%%206 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%17.fetch_sub. self! pre%perm! n!) (and
     (=>
      %%global_location_label%%204
      (= (vstd.atomic.impl&%17.id.? (Poly%vstd.atomic.PAtomicI32. self!)) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic
        (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
           (Poly%vstd.atomic.PermissionI32. pre%perm!)
     ))))))
     (=>
      %%global_location_label%%205
      (<= (- 2147483648) (Sub (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
          (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
             pre%perm!
         ))))
        ) n!
     )))
     (=>
      %%global_location_label%%206
      (<= (Sub (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
          (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
             pre%perm!
         ))))
        ) n!
       ) 2147483647
   ))))
   :pattern ((req%vstd.atomic.impl&%17.fetch_sub. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__17.fetch_sub._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__17.fetch_sub._definition
)))
(declare-fun ens%vstd.atomic.impl&%17.fetch_sub. (vstd.atomic.PAtomicI32. vstd.atomic.PermissionI32.
  vstd.atomic.PermissionI32. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI32.) (pre%perm! vstd.atomic.PermissionI32.) (perm!
    vstd.atomic.PermissionI32.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%17.fetch_sub. self! pre%perm! perm! n! ret!) (and
     (iInv 32 ret!)
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
        (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
           perm!
       ))))
      ) (Sub (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
         (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
            pre%perm!
        ))))
       ) n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%17.fetch_sub. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__17.fetch_sub._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__17.fetch_sub._definition
)))

;; Function-Def crate::vstd::atomic::PAtomicI32::fetch_sub
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic.rs:378:9: 378:12 (#650)
(get-info :all-statistics)
(push)
 (declare-const ret! Int)
 (declare-const self! vstd.atomic.PAtomicI32.)
 (declare-const perm!@0 vstd.atomic.PermissionI32.)
 (declare-const n! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 (assert
  (iInv 32 n!)
 )
 (assert
  (= (vstd.atomic.impl&%17.id.? (Poly%vstd.atomic.PAtomicI32. self!)) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic
    (%Poly%vstd.atomic.PermissionDataI32. (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.?
       (Poly%vstd.atomic.PermissionI32. perm!@0)
 ))))))
 (assert
  (<= (- 2147483648) (Sub (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
      (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
         perm!@0
     ))))
    ) n!
 )))
 (assert
  (<= (Sub (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
      (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
         perm!@0
     ))))
    ) n!
   ) 2147483647
 ))
 (declare-const perm!@1 vstd.atomic.PermissionI32.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.atomic.impl&%17.fetch_sub_wrapping. self! perm!@0 n!)
    )
    (=>
     (ens%vstd.atomic.impl&%17.fetch_sub_wrapping. self! perm!@0 perm!@1 n! tmp%1)
     (=>
      (= ret! tmp%1)
      (and
       (=>
        %%location_label%%1
        (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
           (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
              perm!@0
          ))))
         ) ret!
       ))
       (and
        (=>
         %%location_label%%2
         (= (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic (%Poly%vstd.atomic.PermissionDataI32.
            (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
               perm!@1
           ))))
          ) (vstd.atomic.PermissionDataI32./PermissionDataI32/patomic (%Poly%vstd.atomic.PermissionDataI32.
            (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
               perm!@0
        )))))))
        (=>
         %%location_label%%3
         (= (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
            (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
               perm!@1
           ))))
          ) (Sub (vstd.atomic.PermissionDataI32./PermissionDataI32/value (%Poly%vstd.atomic.PermissionDataI32.
             (Poly%vstd.atomic.PermissionDataI32. (vstd.atomic.impl&%16.view.? (Poly%vstd.atomic.PermissionI32.
                perm!@0
            ))))
           ) n!
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic::PAtomicI64::fetch_add
(declare-fun req%vstd.atomic.impl&%19.fetch_add. (vstd.atomic.PAtomicI64. vstd.atomic.PermissionI64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%207 Bool)
(declare-const %%global_location_label%%208 Bool)
(declare-const %%global_location_label%%209 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%19.fetch_add. self! pre%perm! n!) (and
     (=>
      %%global_location_label%%207
      (= (vstd.atomic.impl&%19.id.? (Poly%vstd.atomic.PAtomicI64. self!)) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic
        (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
           (Poly%vstd.atomic.PermissionI64. pre%perm!)
     ))))))
     (=>
      %%global_location_label%%208
      (<= (- 9223372036854775808) (Add (vstd.atomic.PermissionDataI64./PermissionDataI64/value
         (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
            (Poly%vstd.atomic.PermissionI64. pre%perm!)
         )))
        ) n!
     )))
     (=>
      %%global_location_label%%209
      (<= (Add (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
          (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
             pre%perm!
         ))))
        ) n!
       ) 9223372036854775807
   ))))
   :pattern ((req%vstd.atomic.impl&%19.fetch_add. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__19.fetch_add._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__19.fetch_add._definition
)))
(declare-fun ens%vstd.atomic.impl&%19.fetch_add. (vstd.atomic.PAtomicI64. vstd.atomic.PermissionI64.
  vstd.atomic.PermissionI64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (perm!
    vstd.atomic.PermissionI64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%19.fetch_add. self! pre%perm! perm! n! ret!) (and
     (iInv 64 ret!)
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           perm!
       ))))
      ) (Add (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
         (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
            pre%perm!
        ))))
       ) n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%19.fetch_add. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__19.fetch_add._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__19.fetch_add._definition
)))

;; Function-Def crate::vstd::atomic::PAtomicI64::fetch_add
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic.rs:361:9: 361:12 (#676)
(get-info :all-statistics)
(push)
 (declare-const ret! Int)
 (declare-const self! vstd.atomic.PAtomicI64.)
 (declare-const perm!@0 vstd.atomic.PermissionI64.)
 (declare-const n! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 (assert
  (iInv 64 n!)
 )
 (assert
  (= (vstd.atomic.impl&%19.id.? (Poly%vstd.atomic.PAtomicI64. self!)) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic
    (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
       (Poly%vstd.atomic.PermissionI64. perm!@0)
 ))))))
 (assert
  (<= (- 9223372036854775808) (Add (vstd.atomic.PermissionDataI64./PermissionDataI64/value
     (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
        (Poly%vstd.atomic.PermissionI64. perm!@0)
     )))
    ) n!
 )))
 (assert
  (<= (Add (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
      (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
         perm!@0
     ))))
    ) n!
   ) 9223372036854775807
 ))
 (declare-const perm!@1 vstd.atomic.PermissionI64.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.atomic.impl&%19.fetch_add_wrapping. self! perm!@0 n!)
    )
    (=>
     (ens%vstd.atomic.impl&%19.fetch_add_wrapping. self! perm!@0 perm!@1 n! tmp%1)
     (=>
      (= ret! tmp%1)
      (and
       (=>
        %%location_label%%1
        (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
           (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
              perm!@0
          ))))
         ) ret!
       ))
       (and
        (=>
         %%location_label%%2
         (= (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic (%Poly%vstd.atomic.PermissionDataI64.
            (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
               perm!@1
           ))))
          ) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic (%Poly%vstd.atomic.PermissionDataI64.
            (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
               perm!@0
        )))))))
        (=>
         %%location_label%%3
         (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
            (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
               perm!@1
           ))))
          ) (Add (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
             (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
                perm!@0
            ))))
           ) n!
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic::PAtomicI64::fetch_sub
(declare-fun req%vstd.atomic.impl&%19.fetch_sub. (vstd.atomic.PAtomicI64. vstd.atomic.PermissionI64.
  Int
 ) Bool
)
(declare-const %%global_location_label%%210 Bool)
(declare-const %%global_location_label%%211 Bool)
(declare-const %%global_location_label%%212 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (n!
    Int
   )
  ) (!
   (= (req%vstd.atomic.impl&%19.fetch_sub. self! pre%perm! n!) (and
     (=>
      %%global_location_label%%210
      (= (vstd.atomic.impl&%19.id.? (Poly%vstd.atomic.PAtomicI64. self!)) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic
        (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
           (Poly%vstd.atomic.PermissionI64. pre%perm!)
     ))))))
     (=>
      %%global_location_label%%211
      (<= (- 9223372036854775808) (Sub (vstd.atomic.PermissionDataI64./PermissionDataI64/value
         (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
            (Poly%vstd.atomic.PermissionI64. pre%perm!)
         )))
        ) n!
     )))
     (=>
      %%global_location_label%%212
      (<= (Sub (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
          (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
             pre%perm!
         ))))
        ) n!
       ) 9223372036854775807
   ))))
   :pattern ((req%vstd.atomic.impl&%19.fetch_sub. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__19.fetch_sub._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__19.fetch_sub._definition
)))
(declare-fun ens%vstd.atomic.impl&%19.fetch_sub. (vstd.atomic.PAtomicI64. vstd.atomic.PermissionI64.
  vstd.atomic.PermissionI64. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicI64.) (pre%perm! vstd.atomic.PermissionI64.) (perm!
    vstd.atomic.PermissionI64.
   ) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%19.fetch_sub. self! pre%perm! perm! n! ret!) (and
     (iInv 64 ret!)
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
        (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
           perm!
       ))))
      ) (Sub (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
         (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
            pre%perm!
        ))))
       ) n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%19.fetch_sub. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__19.fetch_sub._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__19.fetch_sub._definition
)))

;; Function-Def crate::vstd::atomic::PAtomicI64::fetch_sub
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic.rs:378:9: 378:12 (#676)
(get-info :all-statistics)
(push)
 (declare-const ret! Int)
 (declare-const self! vstd.atomic.PAtomicI64.)
 (declare-const perm!@0 vstd.atomic.PermissionI64.)
 (declare-const n! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 (assert
  (iInv 64 n!)
 )
 (assert
  (= (vstd.atomic.impl&%19.id.? (Poly%vstd.atomic.PAtomicI64. self!)) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic
    (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
       (Poly%vstd.atomic.PermissionI64. perm!@0)
 ))))))
 (assert
  (<= (- 9223372036854775808) (Sub (vstd.atomic.PermissionDataI64./PermissionDataI64/value
     (%Poly%vstd.atomic.PermissionDataI64. (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.?
        (Poly%vstd.atomic.PermissionI64. perm!@0)
     )))
    ) n!
 )))
 (assert
  (<= (Sub (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
      (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
         perm!@0
     ))))
    ) n!
   ) 9223372036854775807
 ))
 (declare-const perm!@1 vstd.atomic.PermissionI64.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.atomic.impl&%19.fetch_sub_wrapping. self! perm!@0 n!)
    )
    (=>
     (ens%vstd.atomic.impl&%19.fetch_sub_wrapping. self! perm!@0 perm!@1 n! tmp%1)
     (=>
      (= ret! tmp%1)
      (and
       (=>
        %%location_label%%1
        (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
           (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
              perm!@0
          ))))
         ) ret!
       ))
       (and
        (=>
         %%location_label%%2
         (= (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic (%Poly%vstd.atomic.PermissionDataI64.
            (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
               perm!@1
           ))))
          ) (vstd.atomic.PermissionDataI64./PermissionDataI64/patomic (%Poly%vstd.atomic.PermissionDataI64.
            (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
               perm!@0
        )))))))
        (=>
         %%location_label%%3
         (= (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
            (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
               perm!@1
           ))))
          ) (Sub (vstd.atomic.PermissionDataI64./PermissionDataI64/value (%Poly%vstd.atomic.PermissionDataI64.
             (Poly%vstd.atomic.PermissionDataI64. (vstd.atomic.impl&%18.view.? (Poly%vstd.atomic.PermissionI64.
                perm!@0
            ))))
           ) n!
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic::PAtomicIsize::fetch_add
(declare-fun req%vstd.atomic.impl&%21.fetch_add. (vstd.atomic.PAtomicIsize. vstd.atomic.PermissionIsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%213 Bool)
(declare-const %%global_location_label%%214 Bool)
(declare-const %%global_location_label%%215 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (n! Int)
  ) (!
   (= (req%vstd.atomic.impl&%21.fetch_add. self! pre%perm! n!) (and
     (=>
      %%global_location_label%%213
      (= (vstd.atomic.impl&%21.id.? (Poly%vstd.atomic.PAtomicIsize. self!)) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic
        (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
           (Poly%vstd.atomic.PermissionIsize. pre%perm!)
     ))))))
     (=>
      %%global_location_label%%214
      (<= (iLo SZ) (Add (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
          (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
             pre%perm!
         ))))
        ) n!
     )))
     (=>
      %%global_location_label%%215
      (<= (Add (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
          (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
             pre%perm!
         ))))
        ) n!
       ) (- (iHi SZ) 1)
   ))))
   :pattern ((req%vstd.atomic.impl&%21.fetch_add. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__21.fetch_add._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__21.fetch_add._definition
)))
(declare-fun ens%vstd.atomic.impl&%21.fetch_add. (vstd.atomic.PAtomicIsize. vstd.atomic.PermissionIsize.
  vstd.atomic.PermissionIsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (perm! vstd.atomic.PermissionIsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%21.fetch_add. self! pre%perm! perm! n! ret!) (and
     (iInv SZ ret!)
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           perm!
       ))))
      ) (Add (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
         (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
            pre%perm!
        ))))
       ) n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%21.fetch_add. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__21.fetch_add._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__21.fetch_add._definition
)))

;; Function-Def crate::vstd::atomic::PAtomicIsize::fetch_add
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic.rs:361:9: 361:12 (#702)
(get-info :all-statistics)
(push)
 (declare-const ret! Int)
 (declare-const self! vstd.atomic.PAtomicIsize.)
 (declare-const perm!@0 vstd.atomic.PermissionIsize.)
 (declare-const n! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 (assert
  (iInv SZ n!)
 )
 (assert
  (= (vstd.atomic.impl&%21.id.? (Poly%vstd.atomic.PAtomicIsize. self!)) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic
    (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
       (Poly%vstd.atomic.PermissionIsize. perm!@0)
 ))))))
 (assert
  (<= (iLo SZ) (Add (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
      (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
         perm!@0
     ))))
    ) n!
 )))
 (assert
  (<= (Add (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
      (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
         perm!@0
     ))))
    ) n!
   ) (- (iHi SZ) 1)
 ))
 (declare-const perm!@1 vstd.atomic.PermissionIsize.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.atomic.impl&%21.fetch_add_wrapping. self! perm!@0 n!)
    )
    (=>
     (ens%vstd.atomic.impl&%21.fetch_add_wrapping. self! perm!@0 perm!@1 n! tmp%1)
     (=>
      (= ret! tmp%1)
      (and
       (=>
        %%location_label%%1
        (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
           (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
              perm!@0
          ))))
         ) ret!
       ))
       (and
        (=>
         %%location_label%%2
         (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd.atomic.PermissionDataIsize.
            (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
               perm!@1
           ))))
          ) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd.atomic.PermissionDataIsize.
            (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
               perm!@0
        )))))))
        (=>
         %%location_label%%3
         (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
            (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
               perm!@1
           ))))
          ) (Add (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
             (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
                perm!@0
            ))))
           ) n!
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::atomic::PAtomicIsize::fetch_sub
(declare-fun req%vstd.atomic.impl&%21.fetch_sub. (vstd.atomic.PAtomicIsize. vstd.atomic.PermissionIsize.
  Int
 ) Bool
)
(declare-const %%global_location_label%%216 Bool)
(declare-const %%global_location_label%%217 Bool)
(declare-const %%global_location_label%%218 Bool)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (n! Int)
  ) (!
   (= (req%vstd.atomic.impl&%21.fetch_sub. self! pre%perm! n!) (and
     (=>
      %%global_location_label%%216
      (= (vstd.atomic.impl&%21.id.? (Poly%vstd.atomic.PAtomicIsize. self!)) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic
        (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
           (Poly%vstd.atomic.PermissionIsize. pre%perm!)
     ))))))
     (=>
      %%global_location_label%%217
      (<= (iLo SZ) (Sub (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
          (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
             pre%perm!
         ))))
        ) n!
     )))
     (=>
      %%global_location_label%%218
      (<= (Sub (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
          (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
             pre%perm!
         ))))
        ) n!
       ) (- (iHi SZ) 1)
   ))))
   :pattern ((req%vstd.atomic.impl&%21.fetch_sub. self! pre%perm! n!))
   :qid internal_req__vstd.atomic.impl&__21.fetch_sub._definition
   :skolemid skolem_internal_req__vstd.atomic.impl&__21.fetch_sub._definition
)))
(declare-fun ens%vstd.atomic.impl&%21.fetch_sub. (vstd.atomic.PAtomicIsize. vstd.atomic.PermissionIsize.
  vstd.atomic.PermissionIsize. Int Int
 ) Bool
)
(assert
 (forall ((self! vstd.atomic.PAtomicIsize.) (pre%perm! vstd.atomic.PermissionIsize.)
   (perm! vstd.atomic.PermissionIsize.) (n! Int) (ret! Int)
  ) (!
   (= (ens%vstd.atomic.impl&%21.fetch_sub. self! pre%perm! perm! n! ret!) (and
     (iInv SZ ret!)
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           pre%perm!
       ))))
      ) ret!
     )
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           perm!
       ))))
      ) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           pre%perm!
     ))))))
     (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
        (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
           perm!
       ))))
      ) (Sub (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
         (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
            pre%perm!
        ))))
       ) n!
   ))))
   :pattern ((ens%vstd.atomic.impl&%21.fetch_sub. self! pre%perm! perm! n! ret!))
   :qid internal_ens__vstd.atomic.impl&__21.fetch_sub._definition
   :skolemid skolem_internal_ens__vstd.atomic.impl&__21.fetch_sub._definition
)))

;; Function-Def crate::vstd::atomic::PAtomicIsize::fetch_sub
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/atomic.rs:378:9: 378:12 (#702)
(get-info :all-statistics)
(push)
 (declare-const ret! Int)
 (declare-const self! vstd.atomic.PAtomicIsize.)
 (declare-const perm!@0 vstd.atomic.PermissionIsize.)
 (declare-const n! Int)
 (declare-const tmp%1 Int)
 (assert
  fuel_defaults
 )
 (assert
  (iInv SZ n!)
 )
 (assert
  (= (vstd.atomic.impl&%21.id.? (Poly%vstd.atomic.PAtomicIsize. self!)) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic
    (%Poly%vstd.atomic.PermissionDataIsize. (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.?
       (Poly%vstd.atomic.PermissionIsize. perm!@0)
 ))))))
 (assert
  (<= (iLo SZ) (Sub (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
      (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
         perm!@0
     ))))
    ) n!
 )))
 (assert
  (<= (Sub (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
      (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
         perm!@0
     ))))
    ) n!
   ) (- (iHi SZ) 1)
 ))
 (declare-const perm!@1 vstd.atomic.PermissionIsize.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%vstd.atomic.impl&%21.fetch_sub_wrapping. self! perm!@0 n!)
    )
    (=>
     (ens%vstd.atomic.impl&%21.fetch_sub_wrapping. self! perm!@0 perm!@1 n! tmp%1)
     (=>
      (= ret! tmp%1)
      (and
       (=>
        %%location_label%%1
        (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
           (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
              perm!@0
          ))))
         ) ret!
       ))
       (and
        (=>
         %%location_label%%2
         (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd.atomic.PermissionDataIsize.
            (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
               perm!@1
           ))))
          ) (vstd.atomic.PermissionDataIsize./PermissionDataIsize/patomic (%Poly%vstd.atomic.PermissionDataIsize.
            (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
               perm!@0
        )))))))
        (=>
         %%location_label%%3
         (= (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
            (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
               perm!@1
           ))))
          ) (Sub (vstd.atomic.PermissionDataIsize./PermissionDataIsize/value (%Poly%vstd.atomic.PermissionDataIsize.
             (Poly%vstd.atomic.PermissionDataIsize. (vstd.atomic.impl&%20.view.? (Poly%vstd.atomic.PermissionIsize.
                perm!@0
            ))))
           ) n!
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
