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

;; MODULE 'module vstd::std_specs::range'

;; Fuel
(declare-const fuel%vstd.std_specs.option.impl&%0.is_Some. FuelId)
(declare-const fuel%vstd.std_specs.option.impl&%0.get_Some_0. FuelId)
(declare-const fuel%vstd.std_specs.option.spec_unwrap. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%0.ghost_iter. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%1.exec_invariant. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%1.ghost_invariant. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%1.ghost_ensures. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%1.ghost_decrease. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%1.ghost_peek_next. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%1.ghost_advance. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%2.view. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%3.spec_is_lt. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%3.spec_steps_between. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%3.spec_steps_between_int. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%3.spec_forward_checked. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%3.spec_forward_checked_int. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%3.spec_backward_checked. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%3.spec_backward_checked_int. FuelId)
(declare-const fuel%vstd.std_specs.range.axiom_spec_range_next_u8. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%4.spec_is_lt. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%4.spec_steps_between. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%4.spec_steps_between_int. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%4.spec_forward_checked. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%4.spec_forward_checked_int. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%4.spec_backward_checked. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%4.spec_backward_checked_int. FuelId)
(declare-const fuel%vstd.std_specs.range.axiom_spec_range_next_u16. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%5.spec_is_lt. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%5.spec_steps_between. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%5.spec_steps_between_int. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%5.spec_forward_checked. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%5.spec_forward_checked_int. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%5.spec_backward_checked. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%5.spec_backward_checked_int. FuelId)
(declare-const fuel%vstd.std_specs.range.axiom_spec_range_next_u32. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%6.spec_is_lt. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%6.spec_steps_between. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%6.spec_steps_between_int. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%6.spec_forward_checked. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%6.spec_forward_checked_int. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%6.spec_backward_checked. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%6.spec_backward_checked_int. FuelId)
(declare-const fuel%vstd.std_specs.range.axiom_spec_range_next_u64. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%7.spec_is_lt. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%7.spec_steps_between. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%7.spec_steps_between_int. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%7.spec_forward_checked. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%7.spec_forward_checked_int. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%7.spec_backward_checked. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%7.spec_backward_checked_int. FuelId)
(declare-const fuel%vstd.std_specs.range.axiom_spec_range_next_u128. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%8.spec_is_lt. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%8.spec_steps_between. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%8.spec_steps_between_int. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%8.spec_forward_checked. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%8.spec_forward_checked_int. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%8.spec_backward_checked. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%8.spec_backward_checked_int. FuelId)
(declare-const fuel%vstd.std_specs.range.axiom_spec_range_next_usize. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%9.spec_is_lt. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%9.spec_steps_between. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%9.spec_steps_between_int. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%9.spec_forward_checked. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%9.spec_forward_checked_int. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%9.spec_backward_checked. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%9.spec_backward_checked_int. FuelId)
(declare-const fuel%vstd.std_specs.range.axiom_spec_range_next_i8. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%10.spec_is_lt. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%10.spec_steps_between. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%10.spec_steps_between_int. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%10.spec_forward_checked. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%10.spec_forward_checked_int. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%10.spec_backward_checked. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%10.spec_backward_checked_int. FuelId)
(declare-const fuel%vstd.std_specs.range.axiom_spec_range_next_i16. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%11.spec_is_lt. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%11.spec_steps_between. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%11.spec_steps_between_int. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%11.spec_forward_checked. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%11.spec_forward_checked_int. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%11.spec_backward_checked. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%11.spec_backward_checked_int. FuelId)
(declare-const fuel%vstd.std_specs.range.axiom_spec_range_next_i32. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%12.spec_is_lt. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%12.spec_steps_between. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%12.spec_steps_between_int. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%12.spec_forward_checked. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%12.spec_forward_checked_int. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%12.spec_backward_checked. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%12.spec_backward_checked_int. FuelId)
(declare-const fuel%vstd.std_specs.range.axiom_spec_range_next_i64. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%13.spec_is_lt. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%13.spec_steps_between. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%13.spec_steps_between_int. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%13.spec_forward_checked. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%13.spec_forward_checked_int. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%13.spec_backward_checked. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%13.spec_backward_checked_int. FuelId)
(declare-const fuel%vstd.std_specs.range.axiom_spec_range_next_i128. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%14.spec_is_lt. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%14.spec_steps_between. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%14.spec_steps_between_int. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%14.spec_forward_checked. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%14.spec_forward_checked_int. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%14.spec_backward_checked. FuelId)
(declare-const fuel%vstd.std_specs.range.impl&%14.spec_backward_checked_int. FuelId)
(declare-const fuel%vstd.std_specs.range.axiom_spec_range_next_isize. FuelId)
(declare-const fuel%vstd.view.impl&%0.view. FuelId)
(declare-const fuel%vstd.view.impl&%2.view. FuelId)
(declare-const fuel%vstd.view.impl&%4.view. FuelId)
(declare-const fuel%vstd.view.impl&%6.view. FuelId)
(declare-const fuel%vstd.view.impl&%8.view. FuelId)
(declare-const fuel%vstd.view.impl&%10.view. FuelId)
(declare-const fuel%vstd.view.impl&%12.view. FuelId)
(declare-const fuel%vstd.view.impl&%14.view. FuelId)
(declare-const fuel%vstd.view.impl&%16.view. FuelId)
(declare-const fuel%vstd.view.impl&%18.view. FuelId)
(declare-const fuel%vstd.view.impl&%20.view. FuelId)
(declare-const fuel%vstd.view.impl&%22.view. FuelId)
(declare-const fuel%vstd.view.impl&%24.view. FuelId)
(declare-const fuel%vstd.view.impl&%26.view. FuelId)
(declare-const fuel%vstd.view.impl&%28.view. FuelId)
(declare-const fuel%vstd.view.impl&%34.view. FuelId)
(assert
 (distinct fuel%vstd.std_specs.option.impl&%0.is_Some. fuel%vstd.std_specs.option.impl&%0.get_Some_0.
  fuel%vstd.std_specs.option.spec_unwrap. fuel%vstd.std_specs.range.impl&%0.ghost_iter.
  fuel%vstd.std_specs.range.impl&%1.exec_invariant. fuel%vstd.std_specs.range.impl&%1.ghost_invariant.
  fuel%vstd.std_specs.range.impl&%1.ghost_ensures. fuel%vstd.std_specs.range.impl&%1.ghost_decrease.
  fuel%vstd.std_specs.range.impl&%1.ghost_peek_next. fuel%vstd.std_specs.range.impl&%1.ghost_advance.
  fuel%vstd.std_specs.range.impl&%2.view. fuel%vstd.std_specs.range.impl&%3.spec_is_lt.
  fuel%vstd.std_specs.range.impl&%3.spec_steps_between. fuel%vstd.std_specs.range.impl&%3.spec_steps_between_int.
  fuel%vstd.std_specs.range.impl&%3.spec_forward_checked. fuel%vstd.std_specs.range.impl&%3.spec_forward_checked_int.
  fuel%vstd.std_specs.range.impl&%3.spec_backward_checked. fuel%vstd.std_specs.range.impl&%3.spec_backward_checked_int.
  fuel%vstd.std_specs.range.axiom_spec_range_next_u8. fuel%vstd.std_specs.range.impl&%4.spec_is_lt.
  fuel%vstd.std_specs.range.impl&%4.spec_steps_between. fuel%vstd.std_specs.range.impl&%4.spec_steps_between_int.
  fuel%vstd.std_specs.range.impl&%4.spec_forward_checked. fuel%vstd.std_specs.range.impl&%4.spec_forward_checked_int.
  fuel%vstd.std_specs.range.impl&%4.spec_backward_checked. fuel%vstd.std_specs.range.impl&%4.spec_backward_checked_int.
  fuel%vstd.std_specs.range.axiom_spec_range_next_u16. fuel%vstd.std_specs.range.impl&%5.spec_is_lt.
  fuel%vstd.std_specs.range.impl&%5.spec_steps_between. fuel%vstd.std_specs.range.impl&%5.spec_steps_between_int.
  fuel%vstd.std_specs.range.impl&%5.spec_forward_checked. fuel%vstd.std_specs.range.impl&%5.spec_forward_checked_int.
  fuel%vstd.std_specs.range.impl&%5.spec_backward_checked. fuel%vstd.std_specs.range.impl&%5.spec_backward_checked_int.
  fuel%vstd.std_specs.range.axiom_spec_range_next_u32. fuel%vstd.std_specs.range.impl&%6.spec_is_lt.
  fuel%vstd.std_specs.range.impl&%6.spec_steps_between. fuel%vstd.std_specs.range.impl&%6.spec_steps_between_int.
  fuel%vstd.std_specs.range.impl&%6.spec_forward_checked. fuel%vstd.std_specs.range.impl&%6.spec_forward_checked_int.
  fuel%vstd.std_specs.range.impl&%6.spec_backward_checked. fuel%vstd.std_specs.range.impl&%6.spec_backward_checked_int.
  fuel%vstd.std_specs.range.axiom_spec_range_next_u64. fuel%vstd.std_specs.range.impl&%7.spec_is_lt.
  fuel%vstd.std_specs.range.impl&%7.spec_steps_between. fuel%vstd.std_specs.range.impl&%7.spec_steps_between_int.
  fuel%vstd.std_specs.range.impl&%7.spec_forward_checked. fuel%vstd.std_specs.range.impl&%7.spec_forward_checked_int.
  fuel%vstd.std_specs.range.impl&%7.spec_backward_checked. fuel%vstd.std_specs.range.impl&%7.spec_backward_checked_int.
  fuel%vstd.std_specs.range.axiom_spec_range_next_u128. fuel%vstd.std_specs.range.impl&%8.spec_is_lt.
  fuel%vstd.std_specs.range.impl&%8.spec_steps_between. fuel%vstd.std_specs.range.impl&%8.spec_steps_between_int.
  fuel%vstd.std_specs.range.impl&%8.spec_forward_checked. fuel%vstd.std_specs.range.impl&%8.spec_forward_checked_int.
  fuel%vstd.std_specs.range.impl&%8.spec_backward_checked. fuel%vstd.std_specs.range.impl&%8.spec_backward_checked_int.
  fuel%vstd.std_specs.range.axiom_spec_range_next_usize. fuel%vstd.std_specs.range.impl&%9.spec_is_lt.
  fuel%vstd.std_specs.range.impl&%9.spec_steps_between. fuel%vstd.std_specs.range.impl&%9.spec_steps_between_int.
  fuel%vstd.std_specs.range.impl&%9.spec_forward_checked. fuel%vstd.std_specs.range.impl&%9.spec_forward_checked_int.
  fuel%vstd.std_specs.range.impl&%9.spec_backward_checked. fuel%vstd.std_specs.range.impl&%9.spec_backward_checked_int.
  fuel%vstd.std_specs.range.axiom_spec_range_next_i8. fuel%vstd.std_specs.range.impl&%10.spec_is_lt.
  fuel%vstd.std_specs.range.impl&%10.spec_steps_between. fuel%vstd.std_specs.range.impl&%10.spec_steps_between_int.
  fuel%vstd.std_specs.range.impl&%10.spec_forward_checked. fuel%vstd.std_specs.range.impl&%10.spec_forward_checked_int.
  fuel%vstd.std_specs.range.impl&%10.spec_backward_checked. fuel%vstd.std_specs.range.impl&%10.spec_backward_checked_int.
  fuel%vstd.std_specs.range.axiom_spec_range_next_i16. fuel%vstd.std_specs.range.impl&%11.spec_is_lt.
  fuel%vstd.std_specs.range.impl&%11.spec_steps_between. fuel%vstd.std_specs.range.impl&%11.spec_steps_between_int.
  fuel%vstd.std_specs.range.impl&%11.spec_forward_checked. fuel%vstd.std_specs.range.impl&%11.spec_forward_checked_int.
  fuel%vstd.std_specs.range.impl&%11.spec_backward_checked. fuel%vstd.std_specs.range.impl&%11.spec_backward_checked_int.
  fuel%vstd.std_specs.range.axiom_spec_range_next_i32. fuel%vstd.std_specs.range.impl&%12.spec_is_lt.
  fuel%vstd.std_specs.range.impl&%12.spec_steps_between. fuel%vstd.std_specs.range.impl&%12.spec_steps_between_int.
  fuel%vstd.std_specs.range.impl&%12.spec_forward_checked. fuel%vstd.std_specs.range.impl&%12.spec_forward_checked_int.
  fuel%vstd.std_specs.range.impl&%12.spec_backward_checked. fuel%vstd.std_specs.range.impl&%12.spec_backward_checked_int.
  fuel%vstd.std_specs.range.axiom_spec_range_next_i64. fuel%vstd.std_specs.range.impl&%13.spec_is_lt.
  fuel%vstd.std_specs.range.impl&%13.spec_steps_between. fuel%vstd.std_specs.range.impl&%13.spec_steps_between_int.
  fuel%vstd.std_specs.range.impl&%13.spec_forward_checked. fuel%vstd.std_specs.range.impl&%13.spec_forward_checked_int.
  fuel%vstd.std_specs.range.impl&%13.spec_backward_checked. fuel%vstd.std_specs.range.impl&%13.spec_backward_checked_int.
  fuel%vstd.std_specs.range.axiom_spec_range_next_i128. fuel%vstd.std_specs.range.impl&%14.spec_is_lt.
  fuel%vstd.std_specs.range.impl&%14.spec_steps_between. fuel%vstd.std_specs.range.impl&%14.spec_steps_between_int.
  fuel%vstd.std_specs.range.impl&%14.spec_forward_checked. fuel%vstd.std_specs.range.impl&%14.spec_forward_checked_int.
  fuel%vstd.std_specs.range.impl&%14.spec_backward_checked. fuel%vstd.std_specs.range.impl&%14.spec_backward_checked_int.
  fuel%vstd.std_specs.range.axiom_spec_range_next_isize. fuel%vstd.view.impl&%0.view.
  fuel%vstd.view.impl&%2.view. fuel%vstd.view.impl&%4.view. fuel%vstd.view.impl&%6.view.
  fuel%vstd.view.impl&%8.view. fuel%vstd.view.impl&%10.view. fuel%vstd.view.impl&%12.view.
  fuel%vstd.view.impl&%14.view. fuel%vstd.view.impl&%16.view. fuel%vstd.view.impl&%18.view.
  fuel%vstd.view.impl&%20.view. fuel%vstd.view.impl&%22.view. fuel%vstd.view.impl&%24.view.
  fuel%vstd.view.impl&%26.view. fuel%vstd.view.impl&%28.view. fuel%vstd.view.impl&%34.view.
))

;; Associated-Type-Decls
(declare-fun proj%%vstd.pervasive.ForLoopGhostIterator./ExecIter (Dcr Type) Dcr)
(declare-fun proj%vstd.pervasive.ForLoopGhostIterator./ExecIter (Dcr Type) Type)
(declare-fun proj%%vstd.pervasive.ForLoopGhostIterator./Item (Dcr Type) Dcr)
(declare-fun proj%vstd.pervasive.ForLoopGhostIterator./Item (Dcr Type) Type)
(declare-fun proj%%vstd.pervasive.ForLoopGhostIterator./Decrease (Dcr Type) Dcr)
(declare-fun proj%vstd.pervasive.ForLoopGhostIterator./Decrease (Dcr Type) Type)
(declare-fun proj%%vstd.pervasive.ForLoopGhostIteratorNew./GhostIter (Dcr Type) Dcr)
(declare-fun proj%vstd.pervasive.ForLoopGhostIteratorNew./GhostIter (Dcr Type) Type)
(declare-fun proj%%vstd.view.View./V (Dcr Type) Dcr)
(declare-fun proj%vstd.view.View./V (Dcr Type) Type)

;; Datatypes
(declare-datatypes ((core!option.Option. 0) (core!ops.range.Range. 0) (vstd.std_specs.range.RangeGhostIterator.
   0
  ) (tuple%0. 0) (tuple%2. 0)
 ) (((core!option.Option./None) (core!option.Option./Some (core!option.Option./Some/?0
     Poly
   ))
  ) ((core!ops.range.Range./Range (core!ops.range.Range./Range/?start Poly) (core!ops.range.Range./Range/?end
     Poly
   ))
  ) ((vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/?start
     Poly
    ) (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/?cur Poly) (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/?end
     Poly
   ))
  ) ((tuple%0./tuple%0)) ((tuple%2./tuple%2 (tuple%2./tuple%2/?0 Poly) (tuple%2./tuple%2/?1
     Poly
)))))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun core!ops.range.Range./Range/start (core!ops.range.Range.) Poly)
(declare-fun core!ops.range.Range./Range/end (core!ops.range.Range.) Poly)
(declare-fun vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/start (vstd.std_specs.range.RangeGhostIterator.)
 Poly
)
(declare-fun vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/cur (vstd.std_specs.range.RangeGhostIterator.)
 Poly
)
(declare-fun vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/end (vstd.std_specs.range.RangeGhostIterator.)
 Poly
)
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-fun TYPE%fun%1. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-fun TYPE%core!ops.range.Range. (Dcr Type) Type)
(declare-fun TYPE%vstd.std_specs.range.RangeGhostIterator. (Dcr Type) Type)
(declare-fun TYPE%vstd.seq.Seq. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%2. (Dcr Type Dcr Type) Type)
(declare-fun Poly%fun%1. (%%Function%%) Poly)
(declare-fun %Poly%fun%1. (Poly) %%Function%%)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
(declare-fun Poly%core!ops.range.Range. (core!ops.range.Range.) Poly)
(declare-fun %Poly%core!ops.range.Range. (Poly) core!ops.range.Range.)
(declare-fun Poly%vstd.std_specs.range.RangeGhostIterator. (vstd.std_specs.range.RangeGhostIterator.)
 Poly
)
(declare-fun %Poly%vstd.std_specs.range.RangeGhostIterator. (Poly) vstd.std_specs.range.RangeGhostIterator.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%2. (tuple%2.) Poly)
(declare-fun %Poly%tuple%2. (Poly) tuple%2.)
(assert
 (forall ((x %%Function%%)) (!
   (= x (%Poly%fun%1. (Poly%fun%1. x)))
   :pattern ((Poly%fun%1. x))
   :qid internal_crate__fun__1_box_axiom_definition
   :skolemid skolem_internal_crate__fun__1_box_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%fun%1. T%0&. T%0& T%1&. T%1&))
    (= x (Poly%fun%1. (%Poly%fun%1. x)))
   )
   :pattern ((has_type x (TYPE%fun%1. T%0&. T%0& T%1&. T%1&)))
   :qid internal_crate__fun__1_unbox_axiom_definition
   :skolemid skolem_internal_crate__fun__1_unbox_axiom_definition
)))
(declare-fun %%apply%%0 (%%Function%% Poly) Poly)
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (x %%Function%%)) (!
   (=>
    (forall ((T%0 Poly)) (!
      (=>
       (has_type T%0 T%0&)
       (has_type (%%apply%%0 x T%0) T%1&)
      )
      :pattern ((has_type (%%apply%%0 x T%0) T%1&))
      :qid internal_crate__fun__1_constructor_inner_definition
      :skolemid skolem_internal_crate__fun__1_constructor_inner_definition
    ))
    (has_type (Poly%fun%1. (mk_fun x)) (TYPE%fun%1. T%0&. T%0& T%1&. T%1&))
   )
   :pattern ((has_type (Poly%fun%1. (mk_fun x)) (TYPE%fun%1. T%0&. T%0& T%1&. T%1&)))
   :qid internal_crate__fun__1_constructor_definition
   :skolemid skolem_internal_crate__fun__1_constructor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%0 Poly) (x %%Function%%))
  (!
   (=>
    (and
     (has_type (Poly%fun%1. x) (TYPE%fun%1. T%0&. T%0& T%1&. T%1&))
     (has_type T%0 T%0&)
    )
    (has_type (%%apply%%0 x T%0) T%1&)
   )
   :pattern ((%%apply%%0 x T%0) (has_type (Poly%fun%1. x) (TYPE%fun%1. T%0&. T%0& T%1&.
      T%1&
   )))
   :qid internal_crate__fun__1_apply_definition
   :skolemid skolem_internal_crate__fun__1_apply_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%0 Poly) (x %%Function%%))
  (!
   (=>
    (and
     (has_type (Poly%fun%1. x) (TYPE%fun%1. T%0&. T%0& T%1&. T%1&))
     (has_type T%0 T%0&)
    )
    (height_lt (height (%%apply%%0 x T%0)) (height (fun_from_recursive_field (Poly%fun%1.
        (mk_fun x)
   )))))
   :pattern ((height (%%apply%%0 x T%0)) (has_type (Poly%fun%1. x) (TYPE%fun%1. T%0&. T%0&
      T%1&. T%1&
   )))
   :qid internal_crate__fun__1_height_apply_definition
   :skolemid skolem_internal_crate__fun__1_height_apply_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (deep Bool) (x Poly) (y Poly))
  (!
   (=>
    (and
     (has_type x (TYPE%fun%1. T%0&. T%0& T%1&. T%1&))
     (has_type y (TYPE%fun%1. T%0&. T%0& T%1&. T%1&))
     (forall ((T%0 Poly)) (!
       (=>
        (has_type T%0 T%0&)
        (ext_eq deep T%1& (%%apply%%0 (%Poly%fun%1. x) T%0) (%%apply%%0 (%Poly%fun%1. y) T%0))
       )
       :pattern ((ext_eq deep T%1& (%%apply%%0 (%Poly%fun%1. x) T%0) (%%apply%%0 (%Poly%fun%1.
           y
          ) T%0
       )))
       :qid internal_crate__fun__1_inner_ext_equal_definition
       :skolemid skolem_internal_crate__fun__1_inner_ext_equal_definition
    )))
    (ext_eq deep (TYPE%fun%1. T%0&. T%0& T%1&. T%1&) x y)
   )
   :pattern ((ext_eq deep (TYPE%fun%1. T%0&. T%0& T%1&. T%1&) x y))
   :qid internal_crate__fun__1_ext_equal_definition
   :skolemid skolem_internal_crate__fun__1_ext_equal_definition
)))
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
 (forall ((x core!ops.range.Range.)) (!
   (= x (%Poly%core!ops.range.Range. (Poly%core!ops.range.Range. x)))
   :pattern ((Poly%core!ops.range.Range. x))
   :qid internal_core__ops__range__Range_box_axiom_definition
   :skolemid skolem_internal_core__ops__range__Range_box_axiom_definition
)))
(assert
 (forall ((Idx&. Dcr) (Idx& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!ops.range.Range. Idx&. Idx&))
    (= x (Poly%core!ops.range.Range. (%Poly%core!ops.range.Range. x)))
   )
   :pattern ((has_type x (TYPE%core!ops.range.Range. Idx&. Idx&)))
   :qid internal_core__ops__range__Range_unbox_axiom_definition
   :skolemid skolem_internal_core__ops__range__Range_unbox_axiom_definition
)))
(assert
 (forall ((Idx&. Dcr) (Idx& Type) (_start! Poly) (_end! Poly)) (!
   (=>
    (and
     (has_type _start! Idx&)
     (has_type _end! Idx&)
    )
    (has_type (Poly%core!ops.range.Range. (core!ops.range.Range./Range _start! _end!))
     (TYPE%core!ops.range.Range. Idx&. Idx&)
   ))
   :pattern ((has_type (Poly%core!ops.range.Range. (core!ops.range.Range./Range _start!
       _end!
      )
     ) (TYPE%core!ops.range.Range. Idx&. Idx&)
   ))
   :qid internal_core!ops.range.Range./Range_constructor_definition
   :skolemid skolem_internal_core!ops.range.Range./Range_constructor_definition
)))
(assert
 (forall ((x core!ops.range.Range.)) (!
   (= (core!ops.range.Range./Range/start x) (core!ops.range.Range./Range/?start x))
   :pattern ((core!ops.range.Range./Range/start x))
   :qid internal_core!ops.range.Range./Range/start_accessor_definition
   :skolemid skolem_internal_core!ops.range.Range./Range/start_accessor_definition
)))
(assert
 (forall ((Idx&. Dcr) (Idx& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!ops.range.Range. Idx&. Idx&))
    (has_type (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. x)) Idx&)
   )
   :pattern ((core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. x)) (has_type
     x (TYPE%core!ops.range.Range. Idx&. Idx&)
   ))
   :qid internal_core!ops.range.Range./Range/start_invariant_definition
   :skolemid skolem_internal_core!ops.range.Range./Range/start_invariant_definition
)))
(assert
 (forall ((x core!ops.range.Range.)) (!
   (= (core!ops.range.Range./Range/end x) (core!ops.range.Range./Range/?end x))
   :pattern ((core!ops.range.Range./Range/end x))
   :qid internal_core!ops.range.Range./Range/end_accessor_definition
   :skolemid skolem_internal_core!ops.range.Range./Range/end_accessor_definition
)))
(assert
 (forall ((Idx&. Dcr) (Idx& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!ops.range.Range. Idx&. Idx&))
    (has_type (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. x)) Idx&)
   )
   :pattern ((core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. x)) (has_type
     x (TYPE%core!ops.range.Range. Idx&. Idx&)
   ))
   :qid internal_core!ops.range.Range./Range/end_invariant_definition
   :skolemid skolem_internal_core!ops.range.Range./Range/end_invariant_definition
)))
(assert
 (forall ((x core!ops.range.Range.)) (!
   (=>
    (is-core!ops.range.Range./Range x)
    (height_lt (height (core!ops.range.Range./Range/start x)) (height (Poly%core!ops.range.Range.
       x
   ))))
   :pattern ((height (core!ops.range.Range./Range/start x)))
   :qid prelude_datatype_height_core!ops.range.Range./Range/start
   :skolemid skolem_prelude_datatype_height_core!ops.range.Range./Range/start
)))
(assert
 (forall ((x core!ops.range.Range.)) (!
   (=>
    (is-core!ops.range.Range./Range x)
    (height_lt (height (core!ops.range.Range./Range/end x)) (height (Poly%core!ops.range.Range.
       x
   ))))
   :pattern ((height (core!ops.range.Range./Range/end x)))
   :qid prelude_datatype_height_core!ops.range.Range./Range/end
   :skolemid skolem_prelude_datatype_height_core!ops.range.Range./Range/end
)))
(assert
 (forall ((x vstd.std_specs.range.RangeGhostIterator.)) (!
   (= x (%Poly%vstd.std_specs.range.RangeGhostIterator. (Poly%vstd.std_specs.range.RangeGhostIterator.
      x
   )))
   :pattern ((Poly%vstd.std_specs.range.RangeGhostIterator. x))
   :qid internal_crate__vstd__std_specs__range__RangeGhostIterator_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__std_specs__range__RangeGhostIterator_box_axiom_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.std_specs.range.RangeGhostIterator. A&. A&))
    (= x (Poly%vstd.std_specs.range.RangeGhostIterator. (%Poly%vstd.std_specs.range.RangeGhostIterator.
       x
   ))))
   :pattern ((has_type x (TYPE%vstd.std_specs.range.RangeGhostIterator. A&. A&)))
   :qid internal_crate__vstd__std_specs__range__RangeGhostIterator_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__std_specs__range__RangeGhostIterator_unbox_axiom_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (_start! Poly) (_cur! Poly) (_end! Poly)) (!
   (=>
    (and
     (has_type _start! A&)
     (has_type _cur! A&)
     (has_type _end! A&)
    )
    (has_type (Poly%vstd.std_specs.range.RangeGhostIterator. (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator
       _start! _cur! _end!
      )
     ) (TYPE%vstd.std_specs.range.RangeGhostIterator. A&. A&)
   ))
   :pattern ((has_type (Poly%vstd.std_specs.range.RangeGhostIterator. (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator
       _start! _cur! _end!
      )
     ) (TYPE%vstd.std_specs.range.RangeGhostIterator. A&. A&)
   ))
   :qid internal_vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator_constructor_definition
   :skolemid skolem_internal_vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator_constructor_definition
)))
(assert
 (forall ((x vstd.std_specs.range.RangeGhostIterator.)) (!
   (= (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/start x) (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/?start
     x
   ))
   :pattern ((vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/start x))
   :qid internal_vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/start_accessor_definition
   :skolemid skolem_internal_vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/start_accessor_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.std_specs.range.RangeGhostIterator. A&. A&))
    (has_type (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/start (%Poly%vstd.std_specs.range.RangeGhostIterator.
       x
      )
     ) A&
   ))
   :pattern ((vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/start (%Poly%vstd.std_specs.range.RangeGhostIterator.
      x
     )
    ) (has_type x (TYPE%vstd.std_specs.range.RangeGhostIterator. A&. A&))
   )
   :qid internal_vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/start_invariant_definition
   :skolemid skolem_internal_vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/start_invariant_definition
)))
(assert
 (forall ((x vstd.std_specs.range.RangeGhostIterator.)) (!
   (= (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/cur x) (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/?cur
     x
   ))
   :pattern ((vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/cur x))
   :qid internal_vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/cur_accessor_definition
   :skolemid skolem_internal_vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/cur_accessor_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.std_specs.range.RangeGhostIterator. A&. A&))
    (has_type (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/cur (%Poly%vstd.std_specs.range.RangeGhostIterator.
       x
      )
     ) A&
   ))
   :pattern ((vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/cur (%Poly%vstd.std_specs.range.RangeGhostIterator.
      x
     )
    ) (has_type x (TYPE%vstd.std_specs.range.RangeGhostIterator. A&. A&))
   )
   :qid internal_vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/cur_invariant_definition
   :skolemid skolem_internal_vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/cur_invariant_definition
)))
(assert
 (forall ((x vstd.std_specs.range.RangeGhostIterator.)) (!
   (= (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/end x) (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/?end
     x
   ))
   :pattern ((vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/end x))
   :qid internal_vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/end_accessor_definition
   :skolemid skolem_internal_vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/end_accessor_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.std_specs.range.RangeGhostIterator. A&. A&))
    (has_type (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/end (%Poly%vstd.std_specs.range.RangeGhostIterator.
       x
      )
     ) A&
   ))
   :pattern ((vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/end (%Poly%vstd.std_specs.range.RangeGhostIterator.
      x
     )
    ) (has_type x (TYPE%vstd.std_specs.range.RangeGhostIterator. A&. A&))
   )
   :qid internal_vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/end_invariant_definition
   :skolemid skolem_internal_vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/end_invariant_definition
)))
(assert
 (forall ((x vstd.std_specs.range.RangeGhostIterator.)) (!
   (=>
    (is-vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator x)
    (height_lt (height (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/start
       x
      )
     ) (height (Poly%vstd.std_specs.range.RangeGhostIterator. x))
   ))
   :pattern ((height (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/start
      x
   )))
   :qid prelude_datatype_height_vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/start
   :skolemid skolem_prelude_datatype_height_vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/start
)))
(assert
 (forall ((x vstd.std_specs.range.RangeGhostIterator.)) (!
   (=>
    (is-vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator x)
    (height_lt (height (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/cur
       x
      )
     ) (height (Poly%vstd.std_specs.range.RangeGhostIterator. x))
   ))
   :pattern ((height (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/cur x)))
   :qid prelude_datatype_height_vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/cur
   :skolemid skolem_prelude_datatype_height_vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/cur
)))
(assert
 (forall ((x vstd.std_specs.range.RangeGhostIterator.)) (!
   (=>
    (is-vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator x)
    (height_lt (height (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/end
       x
      )
     ) (height (Poly%vstd.std_specs.range.RangeGhostIterator. x))
   ))
   :pattern ((height (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/end x)))
   :qid prelude_datatype_height_vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/end
   :skolemid skolem_prelude_datatype_height_vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/end
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
(declare-fun tr_bound%vstd.pervasive.ForLoopGhostIterator. (Dcr Type) Bool)
(declare-fun tr_bound%vstd.pervasive.ForLoopGhostIteratorNew. (Dcr Type) Bool)
(declare-fun tr_bound%vstd.view.View. (Dcr Type) Bool)
(declare-fun tr_bound%core!clone.Clone. (Dcr Type) Bool)
(declare-fun tr_bound%core!cmp.PartialEq. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%core!cmp.PartialOrd. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%core!iter.range.Step. (Dcr Type) Bool)
(declare-fun tr_bound%vstd.std_specs.option.OptionAdditionalFns. (Dcr Type Dcr Type)
 Bool
)
(declare-fun tr_bound%vstd.std_specs.range.StepSpec. (Dcr Type) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%vstd.pervasive.ForLoopGhostIterator. Self%&. Self%&))
   :qid internal_crate__vstd__pervasive__ForLoopGhostIterator_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__pervasive__ForLoopGhostIterator_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%vstd.pervasive.ForLoopGhostIteratorNew. Self%&. Self%&))
   :qid internal_crate__vstd__pervasive__ForLoopGhostIteratorNew_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__pervasive__ForLoopGhostIteratorNew_trait_type_bounds_definition
)))
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
   :pattern ((tr_bound%core!clone.Clone. Self%&. Self%&))
   :qid internal_core__clone__Clone_trait_type_bounds_definition
   :skolemid skolem_internal_core__clone__Clone_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Rhs&. Dcr) (Rhs& Type)) (!
   true
   :pattern ((tr_bound%core!cmp.PartialEq. Self%&. Self%& Rhs&. Rhs&))
   :qid internal_core__cmp__PartialEq_trait_type_bounds_definition
   :skolemid skolem_internal_core__cmp__PartialEq_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Rhs&. Dcr) (Rhs& Type)) (!
   (=>
    (tr_bound%core!cmp.PartialOrd. Self%&. Self%& Rhs&. Rhs&)
    (tr_bound%core!cmp.PartialEq. Self%&. Self%& Rhs&. Rhs&)
   )
   :pattern ((tr_bound%core!cmp.PartialOrd. Self%&. Self%& Rhs&. Rhs&))
   :qid internal_core__cmp__PartialOrd_trait_type_bounds_definition
   :skolemid skolem_internal_core__cmp__PartialOrd_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   (=>
    (tr_bound%core!iter.range.Step. Self%&. Self%&)
    (and
     (tr_bound%core!clone.Clone. Self%&. Self%&)
     (tr_bound%core!cmp.PartialOrd. Self%&. Self%& Self%&. Self%&)
   ))
   :pattern ((tr_bound%core!iter.range.Step. Self%&. Self%&))
   :qid internal_core__iter__range__Step_trait_type_bounds_definition
   :skolemid skolem_internal_core__iter__range__Step_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type)) (!
   true
   :pattern ((tr_bound%vstd.std_specs.option.OptionAdditionalFns. Self%&. Self%& T&. T&))
   :qid internal_crate__vstd__std_specs__option__OptionAdditionalFns_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__std_specs__option__OptionAdditionalFns_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%vstd.std_specs.range.StepSpec. Self%&. Self%&))
   :qid internal_crate__vstd__std_specs__range__StepSpec_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__std_specs__range__StepSpec_trait_type_bounds_definition
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
 (= (proj%%vstd.view.View./V $ (UINT 128)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (UINT 128)) (UINT 128))
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
 (= (proj%%vstd.view.View./V $ (SINT 128)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (SINT 128)) (SINT 128))
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
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%%vstd.pervasive.ForLoopGhostIteratorNew./GhostIter $ (TYPE%core!ops.range.Range.
      A&. A&
     )
    ) $
   )
   :pattern ((proj%%vstd.pervasive.ForLoopGhostIteratorNew./GhostIter $ (TYPE%core!ops.range.Range.
      A&. A&
   )))
   :qid internal_proj____vstd.pervasive.ForLoopGhostIteratorNew./GhostIter_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd.pervasive.ForLoopGhostIteratorNew./GhostIter_assoc_type_impl_true_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%vstd.pervasive.ForLoopGhostIteratorNew./GhostIter $ (TYPE%core!ops.range.Range.
      A&. A&
     )
    ) (TYPE%vstd.std_specs.range.RangeGhostIterator. A&. A&)
   )
   :pattern ((proj%vstd.pervasive.ForLoopGhostIteratorNew./GhostIter $ (TYPE%core!ops.range.Range.
      A&. A&
   )))
   :qid internal_proj__vstd.pervasive.ForLoopGhostIteratorNew./GhostIter_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd.pervasive.ForLoopGhostIteratorNew./GhostIter_assoc_type_impl_false_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%%vstd.pervasive.ForLoopGhostIterator./ExecIter $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
      A&. A&
     )
    ) $
   )
   :pattern ((proj%%vstd.pervasive.ForLoopGhostIterator./ExecIter $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
      A&. A&
   )))
   :qid internal_proj____vstd.pervasive.ForLoopGhostIterator./ExecIter_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd.pervasive.ForLoopGhostIterator./ExecIter_assoc_type_impl_true_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%vstd.pervasive.ForLoopGhostIterator./ExecIter $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
      A&. A&
     )
    ) (TYPE%core!ops.range.Range. A&. A&)
   )
   :pattern ((proj%vstd.pervasive.ForLoopGhostIterator./ExecIter $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
      A&. A&
   )))
   :qid internal_proj__vstd.pervasive.ForLoopGhostIterator./ExecIter_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd.pervasive.ForLoopGhostIterator./ExecIter_assoc_type_impl_false_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%%vstd.pervasive.ForLoopGhostIterator./Item $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
      A&. A&
     )
    ) A&.
   )
   :pattern ((proj%%vstd.pervasive.ForLoopGhostIterator./Item $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
      A&. A&
   )))
   :qid internal_proj____vstd.pervasive.ForLoopGhostIterator./Item_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd.pervasive.ForLoopGhostIterator./Item_assoc_type_impl_true_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%vstd.pervasive.ForLoopGhostIterator./Item $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
      A&. A&
     )
    ) A&
   )
   :pattern ((proj%vstd.pervasive.ForLoopGhostIterator./Item $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
      A&. A&
   )))
   :qid internal_proj__vstd.pervasive.ForLoopGhostIterator./Item_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd.pervasive.ForLoopGhostIterator./Item_assoc_type_impl_false_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%%vstd.pervasive.ForLoopGhostIterator./Decrease $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
      A&. A&
     )
    ) $
   )
   :pattern ((proj%%vstd.pervasive.ForLoopGhostIterator./Decrease $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
      A&. A&
   )))
   :qid internal_proj____vstd.pervasive.ForLoopGhostIterator./Decrease_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd.pervasive.ForLoopGhostIterator./Decrease_assoc_type_impl_true_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%vstd.pervasive.ForLoopGhostIterator./Decrease $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
      A&. A&
     )
    ) INT
   )
   :pattern ((proj%vstd.pervasive.ForLoopGhostIterator./Decrease $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
      A&. A&
   )))
   :qid internal_proj__vstd.pervasive.ForLoopGhostIterator./Decrease_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd.pervasive.ForLoopGhostIterator./Decrease_assoc_type_impl_false_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%%vstd.view.View./V $ (TYPE%vstd.std_specs.range.RangeGhostIterator. A&. A&))
    $
   )
   :pattern ((proj%%vstd.view.View./V $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
      A&. A&
   )))
   :qid internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%vstd.view.View./V $ (TYPE%vstd.std_specs.range.RangeGhostIterator. A&. A&))
    (TYPE%vstd.seq.Seq. A&. A&)
   )
   :pattern ((proj%vstd.view.View./V $ (TYPE%vstd.std_specs.range.RangeGhostIterator. A&.
      A&
   )))
   :qid internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
)))

;; Function-Decl crate::vstd::view::View::view
(declare-fun vstd.view.View.view.? (Dcr Type Poly) Poly)
(declare-fun vstd.view.View.view%default%.? (Dcr Type Poly) Poly)

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

;; Function-Decl crate::vstd::std_specs::option::spec_unwrap
(declare-fun vstd.std_specs.option.spec_unwrap.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::std_specs::range::StepSpec::spec_is_lt
(declare-fun vstd.std_specs.range.StepSpec.spec_is_lt.? (Dcr Type Poly Poly) Poly)
(declare-fun vstd.std_specs.range.StepSpec.spec_is_lt%default%.? (Dcr Type Poly Poly)
 Poly
)

;; Function-Decl crate::vstd::std_specs::range::StepSpec::spec_steps_between
(declare-fun vstd.std_specs.range.StepSpec.spec_steps_between.? (Dcr Type Poly Poly)
 Poly
)
(declare-fun vstd.std_specs.range.StepSpec.spec_steps_between%default%.? (Dcr Type
  Poly Poly
 ) Poly
)

;; Function-Decl crate::vstd::std_specs::range::StepSpec::spec_steps_between_int
(declare-fun vstd.std_specs.range.StepSpec.spec_steps_between_int.? (Dcr Type Poly
  Poly
 ) Poly
)
(declare-fun vstd.std_specs.range.StepSpec.spec_steps_between_int%default%.? (Dcr Type
  Poly Poly
 ) Poly
)

;; Function-Decl crate::vstd::std_specs::range::StepSpec::spec_forward_checked
(declare-fun vstd.std_specs.range.StepSpec.spec_forward_checked.? (Dcr Type Poly Poly)
 Poly
)
(declare-fun vstd.std_specs.range.StepSpec.spec_forward_checked%default%.? (Dcr Type
  Poly Poly
 ) Poly
)

;; Function-Decl crate::vstd::std_specs::range::StepSpec::spec_forward_checked_int
(declare-fun vstd.std_specs.range.StepSpec.spec_forward_checked_int.? (Dcr Type Poly
  Poly
 ) Poly
)
(declare-fun vstd.std_specs.range.StepSpec.spec_forward_checked_int%default%.? (Dcr
  Type Poly Poly
 ) Poly
)

;; Function-Decl crate::vstd::std_specs::range::StepSpec::spec_backward_checked
(declare-fun vstd.std_specs.range.StepSpec.spec_backward_checked.? (Dcr Type Poly Poly)
 Poly
)
(declare-fun vstd.std_specs.range.StepSpec.spec_backward_checked%default%.? (Dcr Type
  Poly Poly
 ) Poly
)

;; Function-Decl crate::vstd::std_specs::range::StepSpec::spec_backward_checked_int
(declare-fun vstd.std_specs.range.StepSpec.spec_backward_checked_int.? (Dcr Type Poly
  Poly
 ) Poly
)
(declare-fun vstd.std_specs.range.StepSpec.spec_backward_checked_int%default%.? (Dcr
  Type Poly Poly
 ) Poly
)

;; Function-Decl crate::vstd::std_specs::range::spec_range_next
(declare-fun vstd.std_specs.range.spec_range_next.? (Dcr Type Poly) tuple%2.)

;; Function-Decl vstd::seq::Seq::new
(declare-fun vstd!seq.Seq.new.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::pervasive::ForLoopGhostIterator::exec_invariant
(declare-fun vstd.pervasive.ForLoopGhostIterator.exec_invariant.? (Dcr Type Poly Poly)
 Poly
)
(declare-fun vstd.pervasive.ForLoopGhostIterator.exec_invariant%default%.? (Dcr Type
  Poly Poly
 ) Poly
)

;; Function-Decl crate::vstd::pervasive::ForLoopGhostIterator::ghost_invariant
(declare-fun vstd.pervasive.ForLoopGhostIterator.ghost_invariant.? (Dcr Type Poly Poly)
 Poly
)
(declare-fun vstd.pervasive.ForLoopGhostIterator.ghost_invariant%default%.? (Dcr Type
  Poly Poly
 ) Poly
)

;; Function-Decl crate::vstd::pervasive::ForLoopGhostIterator::ghost_ensures
(declare-fun vstd.pervasive.ForLoopGhostIterator.ghost_ensures.? (Dcr Type Poly) Poly)
(declare-fun vstd.pervasive.ForLoopGhostIterator.ghost_ensures%default%.? (Dcr Type
  Poly
 ) Poly
)

;; Function-Decl crate::vstd::pervasive::ForLoopGhostIterator::ghost_decrease
(declare-fun vstd.pervasive.ForLoopGhostIterator.ghost_decrease.? (Dcr Type Poly)
 Poly
)
(declare-fun vstd.pervasive.ForLoopGhostIterator.ghost_decrease%default%.? (Dcr Type
  Poly
 ) Poly
)

;; Function-Decl crate::vstd::pervasive::ForLoopGhostIterator::ghost_peek_next
(declare-fun vstd.pervasive.ForLoopGhostIterator.ghost_peek_next.? (Dcr Type Poly)
 Poly
)
(declare-fun vstd.pervasive.ForLoopGhostIterator.ghost_peek_next%default%.? (Dcr Type
  Poly
 ) Poly
)

;; Function-Decl crate::vstd::pervasive::ForLoopGhostIterator::ghost_advance
(declare-fun vstd.pervasive.ForLoopGhostIterator.ghost_advance.? (Dcr Type Poly Poly)
 Poly
)
(declare-fun vstd.pervasive.ForLoopGhostIterator.ghost_advance%default%.? (Dcr Type
  Poly Poly
 ) Poly
)

;; Function-Decl crate::vstd::pervasive::ForLoopGhostIteratorNew::ghost_iter
(declare-fun vstd.pervasive.ForLoopGhostIteratorNew.ghost_iter.? (Dcr Type Poly) Poly)
(declare-fun vstd.pervasive.ForLoopGhostIteratorNew.ghost_iter%default%.? (Dcr Type
  Poly
 ) Poly
)

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

;; Function-Axioms crate::vstd::std_specs::range::StepSpec::spec_is_lt
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (other! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type other! Self%&)
    )
    (has_type (vstd.std_specs.range.StepSpec.spec_is_lt.? Self%&. Self%& self! other!)
     BOOL
   ))
   :pattern ((vstd.std_specs.range.StepSpec.spec_is_lt.? Self%&. Self%& self! other!))
   :qid internal_vstd.std_specs.range.StepSpec.spec_is_lt.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_is_lt.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::std_specs::range::StepSpec::spec_steps_between
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (end! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type end! Self%&)
    )
    (has_type (vstd.std_specs.range.StepSpec.spec_steps_between.? Self%&. Self%& self!
      end!
     ) (TYPE%core!option.Option. $ (UINT SZ))
   ))
   :pattern ((vstd.std_specs.range.StepSpec.spec_steps_between.? Self%&. Self%& self!
     end!
   ))
   :qid internal_vstd.std_specs.range.StepSpec.spec_steps_between.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_steps_between.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::std_specs::range::StepSpec::spec_steps_between_int
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (end! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type end! Self%&)
    )
    (has_type (vstd.std_specs.range.StepSpec.spec_steps_between_int.? Self%&. Self%& self!
      end!
     ) INT
   ))
   :pattern ((vstd.std_specs.range.StepSpec.spec_steps_between_int.? Self%&. Self%& self!
     end!
   ))
   :qid internal_vstd.std_specs.range.StepSpec.spec_steps_between_int.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_steps_between_int.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::std_specs::range::StepSpec::spec_forward_checked
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (count! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type count! (UINT SZ))
    )
    (has_type (vstd.std_specs.range.StepSpec.spec_forward_checked.? Self%&. Self%& self!
      count!
     ) (TYPE%core!option.Option. Self%&. Self%&)
   ))
   :pattern ((vstd.std_specs.range.StepSpec.spec_forward_checked.? Self%&. Self%& self!
     count!
   ))
   :qid internal_vstd.std_specs.range.StepSpec.spec_forward_checked.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_forward_checked.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::std_specs::range::StepSpec::spec_forward_checked_int
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (count! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type count! INT)
    )
    (has_type (vstd.std_specs.range.StepSpec.spec_forward_checked_int.? Self%&. Self%&
      self! count!
     ) (TYPE%core!option.Option. Self%&. Self%&)
   ))
   :pattern ((vstd.std_specs.range.StepSpec.spec_forward_checked_int.? Self%&. Self%&
     self! count!
   ))
   :qid internal_vstd.std_specs.range.StepSpec.spec_forward_checked_int.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_forward_checked_int.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::std_specs::range::StepSpec::spec_backward_checked
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (count! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type count! (UINT SZ))
    )
    (has_type (vstd.std_specs.range.StepSpec.spec_backward_checked.? Self%&. Self%& self!
      count!
     ) (TYPE%core!option.Option. Self%&. Self%&)
   ))
   :pattern ((vstd.std_specs.range.StepSpec.spec_backward_checked.? Self%&. Self%& self!
     count!
   ))
   :qid internal_vstd.std_specs.range.StepSpec.spec_backward_checked.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_backward_checked.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::std_specs::range::StepSpec::spec_backward_checked_int
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (count! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type count! INT)
    )
    (has_type (vstd.std_specs.range.StepSpec.spec_backward_checked_int.? Self%&. Self%&
      self! count!
     ) (TYPE%core!option.Option. Self%&. Self%&)
   ))
   :pattern ((vstd.std_specs.range.StepSpec.spec_backward_checked_int.? Self%&. Self%&
     self! count!
   ))
   :qid internal_vstd.std_specs.range.StepSpec.spec_backward_checked_int.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_backward_checked_int.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::std_specs::range::spec_range_next
(assert
 (forall ((A&. Dcr) (A& Type) (a! Poly)) (!
   (=>
    (has_type a! (TYPE%core!ops.range.Range. A&. A&))
    (has_type (Poly%tuple%2. (vstd.std_specs.range.spec_range_next.? A&. A& a!)) (TYPE%tuple%2.
      $ (TYPE%core!ops.range.Range. A&. A&) $ (TYPE%core!option.Option. A&. A&)
   )))
   :pattern ((vstd.std_specs.range.spec_range_next.? A&. A& a!))
   :qid internal_vstd.std_specs.range.spec_range_next.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.range.spec_range_next.?_pre_post_definition
)))

;; Function-Specs core::iter::range::impl&%6::next
(declare-fun ens%core!iter.range.impl&%6.next. (Dcr Type core!ops.range.Range. core!ops.range.Range.
  core!option.Option.
 ) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (pre%range! core!ops.range.Range.) (range! core!ops.range.Range.)
   (r! core!option.Option.)
  ) (!
   (= (ens%core!iter.range.impl&%6.next. A&. A& pre%range! range! r!) (and
     (has_type (Poly%core!option.Option. r!) (TYPE%core!option.Option. A&. A&))
     (has_type (Poly%core!ops.range.Range. range!) (TYPE%core!ops.range.Range. A&. A&))
     (= (tuple%2./tuple%2 (Poly%core!ops.range.Range. range!) (Poly%core!option.Option. r!))
      (vstd.std_specs.range.spec_range_next.? A&. A& (Poly%core!ops.range.Range. pre%range!))
   )))
   :pattern ((ens%core!iter.range.impl&%6.next. A&. A& pre%range! range! r!))
   :qid internal_ens__core!iter.range.impl&__6.next._definition
   :skolemid skolem_internal_ens__core!iter.range.impl&__6.next._definition
)))

;; Function-Axioms vstd::seq::Seq::new
(assert
 (forall ((A&. Dcr) (A& Type) (impl%1&. Dcr) (impl%1& Type) (len! Poly) (f! Poly))
  (!
   (=>
    (and
     (has_type len! NAT)
     (has_type f! impl%1&)
    )
    (has_type (vstd!seq.Seq.new.? A&. A& impl%1&. impl%1& len! f!) (TYPE%vstd.seq.Seq.
      A&. A&
   )))
   :pattern ((vstd!seq.Seq.new.? A&. A& impl%1&. impl%1& len! f!))
   :qid internal_vstd!seq.Seq.new.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.new.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::pervasive::ForLoopGhostIterator::exec_invariant
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (exec_iter! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type exec_iter! (proj%vstd.pervasive.ForLoopGhostIterator./ExecIter Self%&. Self%&))
    )
    (has_type (vstd.pervasive.ForLoopGhostIterator.exec_invariant.? Self%&. Self%& self!
      exec_iter!
     ) BOOL
   ))
   :pattern ((vstd.pervasive.ForLoopGhostIterator.exec_invariant.? Self%&. Self%& self!
     exec_iter!
   ))
   :qid internal_vstd.pervasive.ForLoopGhostIterator.exec_invariant.?_pre_post_definition
   :skolemid skolem_internal_vstd.pervasive.ForLoopGhostIterator.exec_invariant.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::pervasive::ForLoopGhostIterator::ghost_invariant
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (init! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type init! (TYPE%core!option.Option. (REF Self%&.) Self%&))
    )
    (has_type (vstd.pervasive.ForLoopGhostIterator.ghost_invariant.? Self%&. Self%& self!
      init!
     ) BOOL
   ))
   :pattern ((vstd.pervasive.ForLoopGhostIterator.ghost_invariant.? Self%&. Self%& self!
     init!
   ))
   :qid internal_vstd.pervasive.ForLoopGhostIterator.ghost_invariant.?_pre_post_definition
   :skolemid skolem_internal_vstd.pervasive.ForLoopGhostIterator.ghost_invariant.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::pervasive::ForLoopGhostIterator::ghost_ensures
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.pervasive.ForLoopGhostIterator.ghost_ensures.? Self%&. Self%& self!)
     BOOL
   ))
   :pattern ((vstd.pervasive.ForLoopGhostIterator.ghost_ensures.? Self%&. Self%& self!))
   :qid internal_vstd.pervasive.ForLoopGhostIterator.ghost_ensures.?_pre_post_definition
   :skolemid skolem_internal_vstd.pervasive.ForLoopGhostIterator.ghost_ensures.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::pervasive::ForLoopGhostIterator::ghost_decrease
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.pervasive.ForLoopGhostIterator.ghost_decrease.? Self%&. Self%& self!)
     (TYPE%core!option.Option. (proj%%vstd.pervasive.ForLoopGhostIterator./Decrease Self%&.
       Self%&
      ) (proj%vstd.pervasive.ForLoopGhostIterator./Decrease Self%&. Self%&)
   )))
   :pattern ((vstd.pervasive.ForLoopGhostIterator.ghost_decrease.? Self%&. Self%& self!))
   :qid internal_vstd.pervasive.ForLoopGhostIterator.ghost_decrease.?_pre_post_definition
   :skolemid skolem_internal_vstd.pervasive.ForLoopGhostIterator.ghost_decrease.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::pervasive::ForLoopGhostIterator::ghost_peek_next
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.pervasive.ForLoopGhostIterator.ghost_peek_next.? Self%&. Self%& self!)
     (TYPE%core!option.Option. (proj%%vstd.pervasive.ForLoopGhostIterator./Item Self%&.
       Self%&
      ) (proj%vstd.pervasive.ForLoopGhostIterator./Item Self%&. Self%&)
   )))
   :pattern ((vstd.pervasive.ForLoopGhostIterator.ghost_peek_next.? Self%&. Self%& self!))
   :qid internal_vstd.pervasive.ForLoopGhostIterator.ghost_peek_next.?_pre_post_definition
   :skolemid skolem_internal_vstd.pervasive.ForLoopGhostIterator.ghost_peek_next.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::pervasive::ForLoopGhostIterator::ghost_advance
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (exec_iter! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type exec_iter! (proj%vstd.pervasive.ForLoopGhostIterator./ExecIter Self%&. Self%&))
    )
    (has_type (vstd.pervasive.ForLoopGhostIterator.ghost_advance.? Self%&. Self%& self!
      exec_iter!
     ) Self%&
   ))
   :pattern ((vstd.pervasive.ForLoopGhostIterator.ghost_advance.? Self%&. Self%& self!
     exec_iter!
   ))
   :qid internal_vstd.pervasive.ForLoopGhostIterator.ghost_advance.?_pre_post_definition
   :skolemid skolem_internal_vstd.pervasive.ForLoopGhostIterator.ghost_advance.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::pervasive::ForLoopGhostIteratorNew::ghost_iter
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.pervasive.ForLoopGhostIteratorNew.ghost_iter.? Self%&. Self%& self!)
     (proj%vstd.pervasive.ForLoopGhostIteratorNew./GhostIter Self%&. Self%&)
   ))
   :pattern ((vstd.pervasive.ForLoopGhostIteratorNew.ghost_iter.? Self%&. Self%& self!))
   :qid internal_vstd.pervasive.ForLoopGhostIteratorNew.ghost_iter.?_pre_post_definition
   :skolemid skolem_internal_vstd.pervasive.ForLoopGhostIteratorNew.ghost_iter.?_pre_post_definition
)))

;; Function-Axioms core::ops::range::Range::ghost_iter
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%0.ghost_iter.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%0.ghost_iter.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (=>
     (tr_bound%vstd.std_specs.range.StepSpec. A&. A&)
     (= (vstd.pervasive.ForLoopGhostIteratorNew.ghost_iter.? $ (TYPE%core!ops.range.Range.
        A&. A&
       ) self!
      ) (Poly%vstd.std_specs.range.RangeGhostIterator. (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator
        (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. self!)) (core!ops.range.Range./Range/start
         (%Poly%core!ops.range.Range. self!)
        ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. self!))
    ))))
    :pattern ((vstd.pervasive.ForLoopGhostIteratorNew.ghost_iter.? $ (TYPE%core!ops.range.Range.
       A&. A&
      ) self!
    ))
    :qid internal_vstd.pervasive.ForLoopGhostIteratorNew.ghost_iter.?_definition
    :skolemid skolem_internal_vstd.pervasive.ForLoopGhostIteratorNew.ghost_iter.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::RangeGhostIterator::exec_invariant
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%1.exec_invariant.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%1.exec_invariant.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (exec_iter! Poly)) (!
    (=>
     (and
      (tr_bound%vstd.std_specs.range.StepSpec. A&. A&)
      (tr_bound%core!iter.range.Step. A&. A&)
     )
     (= (vstd.pervasive.ForLoopGhostIterator.exec_invariant.? $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
        A&. A&
       ) self! exec_iter!
      ) (B (and
        (= (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/cur (%Poly%vstd.std_specs.range.RangeGhostIterator.
           self!
          )
         ) (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. exec_iter!))
        )
        (= (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/end (%Poly%vstd.std_specs.range.RangeGhostIterator.
           self!
          )
         ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. exec_iter!))
    )))))
    :pattern ((vstd.pervasive.ForLoopGhostIterator.exec_invariant.? $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
       A&. A&
      ) self! exec_iter!
    ))
    :qid internal_vstd.pervasive.ForLoopGhostIterator.exec_invariant.?_definition
    :skolemid skolem_internal_vstd.pervasive.ForLoopGhostIterator.exec_invariant.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::RangeGhostIterator::ghost_invariant
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%1.ghost_invariant.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%1.ghost_invariant.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (init! Poly)) (!
    (=>
     (and
      (tr_bound%vstd.std_specs.range.StepSpec. A&. A&)
      (tr_bound%core!iter.range.Step. A&. A&)
     )
     (= (vstd.pervasive.ForLoopGhostIterator.ghost_invariant.? $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
        A&. A&
       ) self! init!
      ) (B (and
        (and
         (or
          (%B (vstd.std_specs.range.StepSpec.spec_is_lt.? A&. A& (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/start
             (%Poly%vstd.std_specs.range.RangeGhostIterator. self!)
            ) (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/cur (%Poly%vstd.std_specs.range.RangeGhostIterator.
              self!
          ))))
          (= (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/start (%Poly%vstd.std_specs.range.RangeGhostIterator.
             self!
            )
           ) (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/cur (%Poly%vstd.std_specs.range.RangeGhostIterator.
             self!
         ))))
         (or
          (%B (vstd.std_specs.range.StepSpec.spec_is_lt.? A&. A& (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/cur
             (%Poly%vstd.std_specs.range.RangeGhostIterator. self!)
            ) (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/end (%Poly%vstd.std_specs.range.RangeGhostIterator.
              self!
          ))))
          (= (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/cur (%Poly%vstd.std_specs.range.RangeGhostIterator.
             self!
            )
           ) (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/end (%Poly%vstd.std_specs.range.RangeGhostIterator.
             self!
        )))))
        (=>
         (is-core!option.Option./Some (%Poly%core!option.Option. init!))
         (let
          ((init$ (%Poly%vstd.std_specs.range.RangeGhostIterator. (core!option.Option./Some/0 (
               %Poly%core!option.Option. init!
          )))))
          (and
           (and
            (= (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/start (%Poly%vstd.std_specs.range.RangeGhostIterator.
               (Poly%vstd.std_specs.range.RangeGhostIterator. init$)
              )
             ) (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/cur (%Poly%vstd.std_specs.range.RangeGhostIterator.
               (Poly%vstd.std_specs.range.RangeGhostIterator. init$)
            )))
            (= (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/start (%Poly%vstd.std_specs.range.RangeGhostIterator.
               (Poly%vstd.std_specs.range.RangeGhostIterator. init$)
              )
             ) (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/start (%Poly%vstd.std_specs.range.RangeGhostIterator.
               self!
           ))))
           (= (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/end (%Poly%vstd.std_specs.range.RangeGhostIterator.
              (Poly%vstd.std_specs.range.RangeGhostIterator. init$)
             )
            ) (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/end (%Poly%vstd.std_specs.range.RangeGhostIterator.
              self!
    ))))))))))
    :pattern ((vstd.pervasive.ForLoopGhostIterator.ghost_invariant.? $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
       A&. A&
      ) self! init!
    ))
    :qid internal_vstd.pervasive.ForLoopGhostIterator.ghost_invariant.?_definition
    :skolemid skolem_internal_vstd.pervasive.ForLoopGhostIterator.ghost_invariant.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::RangeGhostIterator::ghost_ensures
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%1.ghost_ensures.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%1.ghost_ensures.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (=>
     (and
      (tr_bound%vstd.std_specs.range.StepSpec. A&. A&)
      (tr_bound%core!iter.range.Step. A&. A&)
     )
     (= (vstd.pervasive.ForLoopGhostIterator.ghost_ensures.? $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
        A&. A&
       ) self!
      ) (B (not (%B (vstd.std_specs.range.StepSpec.spec_is_lt.? A&. A& (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/cur
           (%Poly%vstd.std_specs.range.RangeGhostIterator. self!)
          ) (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/end (%Poly%vstd.std_specs.range.RangeGhostIterator.
            self!
    ))))))))
    :pattern ((vstd.pervasive.ForLoopGhostIterator.ghost_ensures.? $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
       A&. A&
      ) self!
    ))
    :qid internal_vstd.pervasive.ForLoopGhostIterator.ghost_ensures.?_definition
    :skolemid skolem_internal_vstd.pervasive.ForLoopGhostIterator.ghost_ensures.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::RangeGhostIterator::ghost_decrease
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%1.ghost_decrease.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%1.ghost_decrease.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (=>
     (and
      (tr_bound%vstd.std_specs.range.StepSpec. A&. A&)
      (tr_bound%core!iter.range.Step. A&. A&)
     )
     (= (vstd.pervasive.ForLoopGhostIterator.ghost_decrease.? $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
        A&. A&
       ) self!
      ) (Poly%core!option.Option. (core!option.Option./Some (vstd.std_specs.range.StepSpec.spec_steps_between_int.?
         A&. A& (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/cur (%Poly%vstd.std_specs.range.RangeGhostIterator.
           self!
          )
         ) (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/end (%Poly%vstd.std_specs.range.RangeGhostIterator.
           self!
    )))))))
    :pattern ((vstd.pervasive.ForLoopGhostIterator.ghost_decrease.? $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
       A&. A&
      ) self!
    ))
    :qid internal_vstd.pervasive.ForLoopGhostIterator.ghost_decrease.?_definition
    :skolemid skolem_internal_vstd.pervasive.ForLoopGhostIterator.ghost_decrease.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::RangeGhostIterator::ghost_peek_next
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%1.ghost_peek_next.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%1.ghost_peek_next.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (=>
     (and
      (tr_bound%vstd.std_specs.range.StepSpec. A&. A&)
      (tr_bound%core!iter.range.Step. A&. A&)
     )
     (= (vstd.pervasive.ForLoopGhostIterator.ghost_peek_next.? $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
        A&. A&
       ) self!
      ) (Poly%core!option.Option. (core!option.Option./Some (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/cur
         (%Poly%vstd.std_specs.range.RangeGhostIterator. self!)
    )))))
    :pattern ((vstd.pervasive.ForLoopGhostIterator.ghost_peek_next.? $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
       A&. A&
      ) self!
    ))
    :qid internal_vstd.pervasive.ForLoopGhostIterator.ghost_peek_next.?_definition
    :skolemid skolem_internal_vstd.pervasive.ForLoopGhostIterator.ghost_peek_next.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::RangeGhostIterator::ghost_advance
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%1.ghost_advance.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%1.ghost_advance.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (_exec_iter! Poly)) (!
    (=>
     (and
      (tr_bound%vstd.std_specs.range.StepSpec. A&. A&)
      (tr_bound%core!iter.range.Step. A&. A&)
     )
     (= (vstd.pervasive.ForLoopGhostIterator.ghost_advance.? $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
        A&. A&
       ) self! _exec_iter!
      ) (Poly%vstd.std_specs.range.RangeGhostIterator. (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator
        (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/start (%Poly%vstd.std_specs.range.RangeGhostIterator.
          self!
         )
        ) (core!option.Option./Some/0 (%Poly%core!option.Option. (vstd.std_specs.range.StepSpec.spec_forward_checked.?
           A&. A& (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/cur (%Poly%vstd.std_specs.range.RangeGhostIterator.
             self!
            )
           ) (I 1)
         ))
        ) (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/end (%Poly%vstd.std_specs.range.RangeGhostIterator.
          self!
    ))))))
    :pattern ((vstd.pervasive.ForLoopGhostIterator.ghost_advance.? $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
       A&. A&
      ) self! _exec_iter!
    ))
    :qid internal_vstd.pervasive.ForLoopGhostIterator.ghost_advance.?_definition
    :skolemid skolem_internal_vstd.pervasive.ForLoopGhostIterator.ghost_advance.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::RangeGhostIterator::view
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%2.view.)
)
(declare-fun %%lambda%%0 (Dcr Type Poly) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (i$ Poly)) (!
   (= (%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2) i$) (core!option.Option./Some/0
     (%Poly%core!option.Option. (vstd.std_specs.range.StepSpec.spec_forward_checked_int.?
       %%hole%%0 %%hole%%1 %%hole%%2 i$
   ))))
   :pattern ((%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2) i$))
)))
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%2.view.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (=>
     (and
      (tr_bound%vstd.std_specs.range.StepSpec. A&. A&)
      (tr_bound%core!iter.range.Step. A&. A&)
     )
     (= (vstd.view.View.view.? $ (TYPE%vstd.std_specs.range.RangeGhostIterator. A&. A&)
       self!
      ) (vstd!seq.Seq.new.? A&. A& $ (TYPE%fun%1. $ INT A&. A&) (I (nClip (%I (vstd.std_specs.range.StepSpec.spec_steps_between_int.?
           A&. A& (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/start (%Poly%vstd.std_specs.range.RangeGhostIterator.
             self!
            )
           ) (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/cur (%Poly%vstd.std_specs.range.RangeGhostIterator.
             self!
        )))))
       ) (Poly%fun%1. (mk_fun (%%lambda%%0 A&. A& (vstd.std_specs.range.RangeGhostIterator./RangeGhostIterator/start
           (%Poly%vstd.std_specs.range.RangeGhostIterator. self!)
    )))))))
    :pattern ((vstd.view.View.view.? $ (TYPE%vstd.std_specs.range.RangeGhostIterator. A&.
       A&
      ) self!
    ))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%3::spec_is_lt
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%3.spec_is_lt.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%3.spec_is_lt.)
  (forall ((self! Poly) (other! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (UINT 8) self! other!) (B (< (%I self!)
       (%I other!)
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_is_lt.? $ (UINT 8) self! other!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_is_lt.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_is_lt.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%3::spec_steps_between
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%3.spec_steps_between.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%3.spec_steps_between.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_steps_between.? $ (UINT 8) self! end!) (Poly%core!option.Option.
      (let
       ((n$ (Sub (%I end!) (%I self!))))
       (ite
        (and
         (<= 0 n$)
         (<= n$ (- (uHi SZ) 1))
        )
        (core!option.Option./Some (I (uClip SZ n$)))
        core!option.Option./None
    ))))
    :pattern ((vstd.std_specs.range.StepSpec.spec_steps_between.? $ (UINT 8) self! end!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_steps_between.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_steps_between.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%3::spec_steps_between_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%3.spec_steps_between_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%3.spec_steps_between_int.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_steps_between_int.? $ (UINT 8) self! end!)
     (I (Sub (%I end!) (%I self!)))
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_steps_between_int.? $ (UINT 8) self!
      end!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_steps_between_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_steps_between_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%3::spec_forward_checked_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%3.spec_forward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%3.spec_forward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT 8) self! count!)
     (Poly%core!option.Option. (ite
       (<= (Add (%I self!) (%I count!)) 255)
       (core!option.Option./Some (I (uClip 8 (Add (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT 8) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_forward_checked_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_forward_checked_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%3::spec_forward_checked
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%3.spec_forward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%3.spec_forward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_forward_checked.? $ (UINT 8) self! count!)
     (vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT 8) self! count!)
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_forward_checked.? $ (UINT 8) self! count!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_forward_checked.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_forward_checked.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%3::spec_backward_checked_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%3.spec_backward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%3.spec_backward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (UINT 8) self! count!)
     (Poly%core!option.Option. (ite
       (>= (Sub (%I self!) (%I count!)) 0)
       (core!option.Option./Some (I (uClip 8 (Sub (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (UINT 8) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_backward_checked_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_backward_checked_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%3::spec_backward_checked
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%3.spec_backward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%3.spec_backward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_backward_checked.? $ (UINT 8) self! count!)
     (vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (UINT 8) self! count!)
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_backward_checked.? $ (UINT 8) self! count!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_backward_checked.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_backward_checked.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%4::spec_is_lt
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%4.spec_is_lt.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%4.spec_is_lt.)
  (forall ((self! Poly) (other! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (UINT 16) self! other!) (B (< (%I self!)
       (%I other!)
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_is_lt.? $ (UINT 16) self! other!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_is_lt.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_is_lt.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%4::spec_steps_between
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%4.spec_steps_between.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%4.spec_steps_between.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_steps_between.? $ (UINT 16) self! end!) (Poly%core!option.Option.
      (let
       ((n$ (Sub (%I end!) (%I self!))))
       (ite
        (and
         (<= 0 n$)
         (<= n$ (- (uHi SZ) 1))
        )
        (core!option.Option./Some (I (uClip SZ n$)))
        core!option.Option./None
    ))))
    :pattern ((vstd.std_specs.range.StepSpec.spec_steps_between.? $ (UINT 16) self! end!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_steps_between.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_steps_between.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%4::spec_steps_between_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%4.spec_steps_between_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%4.spec_steps_between_int.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_steps_between_int.? $ (UINT 16) self! end!)
     (I (Sub (%I end!) (%I self!)))
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_steps_between_int.? $ (UINT 16) self!
      end!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_steps_between_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_steps_between_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%4::spec_forward_checked_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%4.spec_forward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%4.spec_forward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT 16) self! count!)
     (Poly%core!option.Option. (ite
       (<= (Add (%I self!) (%I count!)) 65535)
       (core!option.Option./Some (I (uClip 16 (Add (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT 16) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_forward_checked_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_forward_checked_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%4::spec_forward_checked
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%4.spec_forward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%4.spec_forward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_forward_checked.? $ (UINT 16) self! count!)
     (vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT 16) self! count!)
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_forward_checked.? $ (UINT 16) self! count!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_forward_checked.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_forward_checked.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%4::spec_backward_checked_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%4.spec_backward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%4.spec_backward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (UINT 16) self! count!)
     (Poly%core!option.Option. (ite
       (>= (Sub (%I self!) (%I count!)) 0)
       (core!option.Option./Some (I (uClip 16 (Sub (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (UINT 16) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_backward_checked_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_backward_checked_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%4::spec_backward_checked
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%4.spec_backward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%4.spec_backward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_backward_checked.? $ (UINT 16) self! count!)
     (vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (UINT 16) self! count!)
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_backward_checked.? $ (UINT 16) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_backward_checked.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_backward_checked.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%5::spec_is_lt
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%5.spec_is_lt.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%5.spec_is_lt.)
  (forall ((self! Poly) (other! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (UINT 32) self! other!) (B (< (%I self!)
       (%I other!)
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_is_lt.? $ (UINT 32) self! other!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_is_lt.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_is_lt.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%5::spec_steps_between
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%5.spec_steps_between.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%5.spec_steps_between.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_steps_between.? $ (UINT 32) self! end!) (Poly%core!option.Option.
      (let
       ((n$ (Sub (%I end!) (%I self!))))
       (ite
        (and
         (<= 0 n$)
         (<= n$ (- (uHi SZ) 1))
        )
        (core!option.Option./Some (I (uClip SZ n$)))
        core!option.Option./None
    ))))
    :pattern ((vstd.std_specs.range.StepSpec.spec_steps_between.? $ (UINT 32) self! end!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_steps_between.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_steps_between.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%5::spec_steps_between_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%5.spec_steps_between_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%5.spec_steps_between_int.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_steps_between_int.? $ (UINT 32) self! end!)
     (I (Sub (%I end!) (%I self!)))
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_steps_between_int.? $ (UINT 32) self!
      end!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_steps_between_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_steps_between_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%5::spec_forward_checked_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%5.spec_forward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%5.spec_forward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT 32) self! count!)
     (Poly%core!option.Option. (ite
       (<= (Add (%I self!) (%I count!)) 4294967295)
       (core!option.Option./Some (I (uClip 32 (Add (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT 32) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_forward_checked_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_forward_checked_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%5::spec_forward_checked
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%5.spec_forward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%5.spec_forward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_forward_checked.? $ (UINT 32) self! count!)
     (vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT 32) self! count!)
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_forward_checked.? $ (UINT 32) self! count!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_forward_checked.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_forward_checked.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%5::spec_backward_checked_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%5.spec_backward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%5.spec_backward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (UINT 32) self! count!)
     (Poly%core!option.Option. (ite
       (>= (Sub (%I self!) (%I count!)) 0)
       (core!option.Option./Some (I (uClip 32 (Sub (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (UINT 32) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_backward_checked_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_backward_checked_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%5::spec_backward_checked
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%5.spec_backward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%5.spec_backward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_backward_checked.? $ (UINT 32) self! count!)
     (vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (UINT 32) self! count!)
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_backward_checked.? $ (UINT 32) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_backward_checked.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_backward_checked.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%6::spec_is_lt
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%6.spec_is_lt.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%6.spec_is_lt.)
  (forall ((self! Poly) (other! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (UINT 64) self! other!) (B (< (%I self!)
       (%I other!)
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_is_lt.? $ (UINT 64) self! other!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_is_lt.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_is_lt.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%6::spec_steps_between
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%6.spec_steps_between.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%6.spec_steps_between.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_steps_between.? $ (UINT 64) self! end!) (Poly%core!option.Option.
      (let
       ((n$ (Sub (%I end!) (%I self!))))
       (ite
        (and
         (<= 0 n$)
         (<= n$ (- (uHi SZ) 1))
        )
        (core!option.Option./Some (I (uClip SZ n$)))
        core!option.Option./None
    ))))
    :pattern ((vstd.std_specs.range.StepSpec.spec_steps_between.? $ (UINT 64) self! end!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_steps_between.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_steps_between.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%6::spec_steps_between_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%6.spec_steps_between_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%6.spec_steps_between_int.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_steps_between_int.? $ (UINT 64) self! end!)
     (I (Sub (%I end!) (%I self!)))
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_steps_between_int.? $ (UINT 64) self!
      end!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_steps_between_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_steps_between_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%6::spec_forward_checked_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%6.spec_forward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%6.spec_forward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT 64) self! count!)
     (Poly%core!option.Option. (ite
       (<= (Add (%I self!) (%I count!)) 18446744073709551615)
       (core!option.Option./Some (I (uClip 64 (Add (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT 64) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_forward_checked_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_forward_checked_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%6::spec_forward_checked
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%6.spec_forward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%6.spec_forward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_forward_checked.? $ (UINT 64) self! count!)
     (vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT 64) self! count!)
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_forward_checked.? $ (UINT 64) self! count!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_forward_checked.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_forward_checked.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%6::spec_backward_checked_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%6.spec_backward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%6.spec_backward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (UINT 64) self! count!)
     (Poly%core!option.Option. (ite
       (>= (Sub (%I self!) (%I count!)) 0)
       (core!option.Option./Some (I (uClip 64 (Sub (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (UINT 64) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_backward_checked_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_backward_checked_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%6::spec_backward_checked
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%6.spec_backward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%6.spec_backward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_backward_checked.? $ (UINT 64) self! count!)
     (vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (UINT 64) self! count!)
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_backward_checked.? $ (UINT 64) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_backward_checked.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_backward_checked.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%7::spec_is_lt
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%7.spec_is_lt.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%7.spec_is_lt.)
  (forall ((self! Poly) (other! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (UINT 128) self! other!) (B (< (%I self!)
       (%I other!)
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_is_lt.? $ (UINT 128) self! other!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_is_lt.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_is_lt.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%7::spec_steps_between
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%7.spec_steps_between.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%7.spec_steps_between.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_steps_between.? $ (UINT 128) self! end!) (Poly%core!option.Option.
      (let
       ((n$ (Sub (%I end!) (%I self!))))
       (ite
        (and
         (<= 0 n$)
         (<= n$ (- (uHi SZ) 1))
        )
        (core!option.Option./Some (I (uClip SZ n$)))
        core!option.Option./None
    ))))
    :pattern ((vstd.std_specs.range.StepSpec.spec_steps_between.? $ (UINT 128) self! end!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_steps_between.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_steps_between.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%7::spec_steps_between_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%7.spec_steps_between_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%7.spec_steps_between_int.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_steps_between_int.? $ (UINT 128) self! end!)
     (I (Sub (%I end!) (%I self!)))
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_steps_between_int.? $ (UINT 128) self!
      end!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_steps_between_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_steps_between_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%7::spec_forward_checked_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%7.spec_forward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%7.spec_forward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT 128) self! count!)
     (Poly%core!option.Option. (ite
       (<= (Add (%I self!) (%I count!)) 340282366920938463463374607431768211455)
       (core!option.Option./Some (I (uClip 128 (Add (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT 128) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_forward_checked_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_forward_checked_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%7::spec_forward_checked
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%7.spec_forward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%7.spec_forward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_forward_checked.? $ (UINT 128) self! count!)
     (vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT 128) self! count!)
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_forward_checked.? $ (UINT 128) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_forward_checked.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_forward_checked.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%7::spec_backward_checked_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%7.spec_backward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%7.spec_backward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (UINT 128) self! count!)
     (Poly%core!option.Option. (ite
       (>= (Sub (%I self!) (%I count!)) 0)
       (core!option.Option./Some (I (uClip 128 (Sub (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (UINT 128) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_backward_checked_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_backward_checked_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%7::spec_backward_checked
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%7.spec_backward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%7.spec_backward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_backward_checked.? $ (UINT 128) self! count!)
     (vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (UINT 128) self! count!)
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_backward_checked.? $ (UINT 128) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_backward_checked.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_backward_checked.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%8::spec_is_lt
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%8.spec_is_lt.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%8.spec_is_lt.)
  (forall ((self! Poly) (other! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (UINT SZ) self! other!) (B (< (%I self!)
       (%I other!)
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_is_lt.? $ (UINT SZ) self! other!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_is_lt.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_is_lt.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%8::spec_steps_between
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%8.spec_steps_between.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%8.spec_steps_between.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_steps_between.? $ (UINT SZ) self! end!) (Poly%core!option.Option.
      (let
       ((n$ (Sub (%I end!) (%I self!))))
       (ite
        (and
         (<= 0 n$)
         (<= n$ (- (uHi SZ) 1))
        )
        (core!option.Option./Some (I (uClip SZ n$)))
        core!option.Option./None
    ))))
    :pattern ((vstd.std_specs.range.StepSpec.spec_steps_between.? $ (UINT SZ) self! end!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_steps_between.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_steps_between.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%8::spec_steps_between_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%8.spec_steps_between_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%8.spec_steps_between_int.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_steps_between_int.? $ (UINT SZ) self! end!)
     (I (Sub (%I end!) (%I self!)))
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_steps_between_int.? $ (UINT SZ) self!
      end!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_steps_between_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_steps_between_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%8::spec_forward_checked_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%8.spec_forward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%8.spec_forward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT SZ) self! count!)
     (Poly%core!option.Option. (ite
       (<= (Add (%I self!) (%I count!)) (- (uHi SZ) 1))
       (core!option.Option./Some (I (uClip SZ (Add (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT SZ) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_forward_checked_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_forward_checked_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%8::spec_forward_checked
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%8.spec_forward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%8.spec_forward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_forward_checked.? $ (UINT SZ) self! count!)
     (vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (UINT SZ) self! count!)
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_forward_checked.? $ (UINT SZ) self! count!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_forward_checked.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_forward_checked.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%8::spec_backward_checked_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%8.spec_backward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%8.spec_backward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (UINT SZ) self! count!)
     (Poly%core!option.Option. (ite
       (>= (Sub (%I self!) (%I count!)) 0)
       (core!option.Option./Some (I (uClip SZ (Sub (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (UINT SZ) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_backward_checked_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_backward_checked_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%8::spec_backward_checked
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%8.spec_backward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%8.spec_backward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_backward_checked.? $ (UINT SZ) self! count!)
     (vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (UINT SZ) self! count!)
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_backward_checked.? $ (UINT SZ) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_backward_checked.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_backward_checked.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%9::spec_is_lt
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%9.spec_is_lt.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%9.spec_is_lt.)
  (forall ((self! Poly) (other! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (SINT 8) self! other!) (B (< (%I self!)
       (%I other!)
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_is_lt.? $ (SINT 8) self! other!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_is_lt.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_is_lt.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%9::spec_steps_between
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%9.spec_steps_between.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%9.spec_steps_between.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_steps_between.? $ (SINT 8) self! end!) (Poly%core!option.Option.
      (let
       ((n$ (Sub (%I end!) (%I self!))))
       (ite
        (and
         (<= 0 n$)
         (<= n$ (- (uHi SZ) 1))
        )
        (core!option.Option./Some (I (uClip SZ n$)))
        core!option.Option./None
    ))))
    :pattern ((vstd.std_specs.range.StepSpec.spec_steps_between.? $ (SINT 8) self! end!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_steps_between.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_steps_between.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%9::spec_steps_between_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%9.spec_steps_between_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%9.spec_steps_between_int.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_steps_between_int.? $ (SINT 8) self! end!)
     (I (Sub (%I end!) (%I self!)))
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_steps_between_int.? $ (SINT 8) self!
      end!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_steps_between_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_steps_between_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%9::spec_forward_checked_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%9.spec_forward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%9.spec_forward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (SINT 8) self! count!)
     (Poly%core!option.Option. (ite
       (<= (Add (%I self!) (%I count!)) 127)
       (core!option.Option./Some (I (iClip 8 (Add (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (SINT 8) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_forward_checked_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_forward_checked_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%9::spec_forward_checked
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%9.spec_forward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%9.spec_forward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_forward_checked.? $ (SINT 8) self! count!)
     (vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (SINT 8) self! count!)
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_forward_checked.? $ (SINT 8) self! count!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_forward_checked.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_forward_checked.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%9::spec_backward_checked_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%9.spec_backward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%9.spec_backward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (SINT 8) self! count!)
     (Poly%core!option.Option. (ite
       (>= (Sub (%I self!) (%I count!)) (- 128))
       (core!option.Option./Some (I (iClip 8 (Sub (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (SINT 8) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_backward_checked_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_backward_checked_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%9::spec_backward_checked
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%9.spec_backward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%9.spec_backward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_backward_checked.? $ (SINT 8) self! count!)
     (vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (SINT 8) self! count!)
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_backward_checked.? $ (SINT 8) self! count!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_backward_checked.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_backward_checked.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%10::spec_is_lt
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%10.spec_is_lt.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%10.spec_is_lt.)
  (forall ((self! Poly) (other! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (SINT 16) self! other!) (B (< (%I self!)
       (%I other!)
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_is_lt.? $ (SINT 16) self! other!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_is_lt.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_is_lt.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%10::spec_steps_between
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%10.spec_steps_between.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%10.spec_steps_between.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_steps_between.? $ (SINT 16) self! end!) (Poly%core!option.Option.
      (let
       ((n$ (Sub (%I end!) (%I self!))))
       (ite
        (and
         (<= 0 n$)
         (<= n$ (- (uHi SZ) 1))
        )
        (core!option.Option./Some (I (uClip SZ n$)))
        core!option.Option./None
    ))))
    :pattern ((vstd.std_specs.range.StepSpec.spec_steps_between.? $ (SINT 16) self! end!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_steps_between.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_steps_between.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%10::spec_steps_between_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%10.spec_steps_between_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%10.spec_steps_between_int.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_steps_between_int.? $ (SINT 16) self! end!)
     (I (Sub (%I end!) (%I self!)))
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_steps_between_int.? $ (SINT 16) self!
      end!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_steps_between_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_steps_between_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%10::spec_forward_checked_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%10.spec_forward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%10.spec_forward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (SINT 16) self! count!)
     (Poly%core!option.Option. (ite
       (<= (Add (%I self!) (%I count!)) 32767)
       (core!option.Option./Some (I (iClip 16 (Add (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (SINT 16) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_forward_checked_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_forward_checked_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%10::spec_forward_checked
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%10.spec_forward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%10.spec_forward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_forward_checked.? $ (SINT 16) self! count!)
     (vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (SINT 16) self! count!)
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_forward_checked.? $ (SINT 16) self! count!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_forward_checked.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_forward_checked.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%10::spec_backward_checked_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%10.spec_backward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%10.spec_backward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (SINT 16) self! count!)
     (Poly%core!option.Option. (ite
       (>= (Sub (%I self!) (%I count!)) (- 32768))
       (core!option.Option./Some (I (iClip 16 (Sub (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (SINT 16) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_backward_checked_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_backward_checked_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%10::spec_backward_checked
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%10.spec_backward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%10.spec_backward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_backward_checked.? $ (SINT 16) self! count!)
     (vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (SINT 16) self! count!)
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_backward_checked.? $ (SINT 16) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_backward_checked.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_backward_checked.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%11::spec_is_lt
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%11.spec_is_lt.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%11.spec_is_lt.)
  (forall ((self! Poly) (other! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (SINT 32) self! other!) (B (< (%I self!)
       (%I other!)
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_is_lt.? $ (SINT 32) self! other!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_is_lt.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_is_lt.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%11::spec_steps_between
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%11.spec_steps_between.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%11.spec_steps_between.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_steps_between.? $ (SINT 32) self! end!) (Poly%core!option.Option.
      (let
       ((n$ (Sub (%I end!) (%I self!))))
       (ite
        (and
         (<= 0 n$)
         (<= n$ (- (uHi SZ) 1))
        )
        (core!option.Option./Some (I (uClip SZ n$)))
        core!option.Option./None
    ))))
    :pattern ((vstd.std_specs.range.StepSpec.spec_steps_between.? $ (SINT 32) self! end!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_steps_between.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_steps_between.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%11::spec_steps_between_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%11.spec_steps_between_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%11.spec_steps_between_int.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_steps_between_int.? $ (SINT 32) self! end!)
     (I (Sub (%I end!) (%I self!)))
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_steps_between_int.? $ (SINT 32) self!
      end!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_steps_between_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_steps_between_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%11::spec_forward_checked_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%11.spec_forward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%11.spec_forward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (SINT 32) self! count!)
     (Poly%core!option.Option. (ite
       (<= (Add (%I self!) (%I count!)) 2147483647)
       (core!option.Option./Some (I (iClip 32 (Add (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (SINT 32) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_forward_checked_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_forward_checked_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%11::spec_forward_checked
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%11.spec_forward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%11.spec_forward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_forward_checked.? $ (SINT 32) self! count!)
     (vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (SINT 32) self! count!)
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_forward_checked.? $ (SINT 32) self! count!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_forward_checked.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_forward_checked.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%11::spec_backward_checked_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%11.spec_backward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%11.spec_backward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (SINT 32) self! count!)
     (Poly%core!option.Option. (ite
       (>= (Sub (%I self!) (%I count!)) (- 2147483648))
       (core!option.Option./Some (I (iClip 32 (Sub (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (SINT 32) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_backward_checked_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_backward_checked_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%11::spec_backward_checked
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%11.spec_backward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%11.spec_backward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_backward_checked.? $ (SINT 32) self! count!)
     (vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (SINT 32) self! count!)
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_backward_checked.? $ (SINT 32) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_backward_checked.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_backward_checked.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%12::spec_is_lt
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%12.spec_is_lt.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%12.spec_is_lt.)
  (forall ((self! Poly) (other! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (SINT 64) self! other!) (B (< (%I self!)
       (%I other!)
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_is_lt.? $ (SINT 64) self! other!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_is_lt.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_is_lt.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%12::spec_steps_between
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%12.spec_steps_between.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%12.spec_steps_between.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_steps_between.? $ (SINT 64) self! end!) (Poly%core!option.Option.
      (let
       ((n$ (Sub (%I end!) (%I self!))))
       (ite
        (and
         (<= 0 n$)
         (<= n$ (- (uHi SZ) 1))
        )
        (core!option.Option./Some (I (uClip SZ n$)))
        core!option.Option./None
    ))))
    :pattern ((vstd.std_specs.range.StepSpec.spec_steps_between.? $ (SINT 64) self! end!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_steps_between.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_steps_between.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%12::spec_steps_between_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%12.spec_steps_between_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%12.spec_steps_between_int.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_steps_between_int.? $ (SINT 64) self! end!)
     (I (Sub (%I end!) (%I self!)))
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_steps_between_int.? $ (SINT 64) self!
      end!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_steps_between_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_steps_between_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%12::spec_forward_checked_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%12.spec_forward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%12.spec_forward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (SINT 64) self! count!)
     (Poly%core!option.Option. (ite
       (<= (Add (%I self!) (%I count!)) 9223372036854775807)
       (core!option.Option./Some (I (iClip 64 (Add (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (SINT 64) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_forward_checked_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_forward_checked_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%12::spec_forward_checked
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%12.spec_forward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%12.spec_forward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_forward_checked.? $ (SINT 64) self! count!)
     (vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (SINT 64) self! count!)
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_forward_checked.? $ (SINT 64) self! count!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_forward_checked.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_forward_checked.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%12::spec_backward_checked_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%12.spec_backward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%12.spec_backward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (SINT 64) self! count!)
     (Poly%core!option.Option. (ite
       (>= (Sub (%I self!) (%I count!)) (- 9223372036854775808))
       (core!option.Option./Some (I (iClip 64 (Sub (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (SINT 64) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_backward_checked_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_backward_checked_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%12::spec_backward_checked
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%12.spec_backward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%12.spec_backward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_backward_checked.? $ (SINT 64) self! count!)
     (vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (SINT 64) self! count!)
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_backward_checked.? $ (SINT 64) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_backward_checked.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_backward_checked.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%13::spec_is_lt
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%13.spec_is_lt.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%13.spec_is_lt.)
  (forall ((self! Poly) (other! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (SINT 128) self! other!) (B (< (%I self!)
       (%I other!)
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_is_lt.? $ (SINT 128) self! other!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_is_lt.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_is_lt.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%13::spec_steps_between
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%13.spec_steps_between.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%13.spec_steps_between.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_steps_between.? $ (SINT 128) self! end!) (Poly%core!option.Option.
      (let
       ((n$ (Sub (%I end!) (%I self!))))
       (ite
        (and
         (<= 0 n$)
         (<= n$ (- (uHi SZ) 1))
        )
        (core!option.Option./Some (I (uClip SZ n$)))
        core!option.Option./None
    ))))
    :pattern ((vstd.std_specs.range.StepSpec.spec_steps_between.? $ (SINT 128) self! end!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_steps_between.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_steps_between.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%13::spec_steps_between_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%13.spec_steps_between_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%13.spec_steps_between_int.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_steps_between_int.? $ (SINT 128) self! end!)
     (I (Sub (%I end!) (%I self!)))
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_steps_between_int.? $ (SINT 128) self!
      end!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_steps_between_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_steps_between_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%13::spec_forward_checked_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%13.spec_forward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%13.spec_forward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (SINT 128) self! count!)
     (Poly%core!option.Option. (ite
       (<= (Add (%I self!) (%I count!)) 170141183460469231731687303715884105727)
       (core!option.Option./Some (I (iClip 128 (Add (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (SINT 128) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_forward_checked_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_forward_checked_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%13::spec_forward_checked
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%13.spec_forward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%13.spec_forward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_forward_checked.? $ (SINT 128) self! count!)
     (vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (SINT 128) self! count!)
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_forward_checked.? $ (SINT 128) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_forward_checked.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_forward_checked.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%13::spec_backward_checked_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%13.spec_backward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%13.spec_backward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (SINT 128) self! count!)
     (Poly%core!option.Option. (ite
       (>= (Sub (%I self!) (%I count!)) (- 170141183460469231731687303715884105728))
       (core!option.Option./Some (I (iClip 128 (Sub (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (SINT 128) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_backward_checked_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_backward_checked_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%13::spec_backward_checked
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%13.spec_backward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%13.spec_backward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_backward_checked.? $ (SINT 128) self! count!)
     (vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (SINT 128) self! count!)
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_backward_checked.? $ (SINT 128) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_backward_checked.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_backward_checked.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%14::spec_is_lt
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%14.spec_is_lt.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%14.spec_is_lt.)
  (forall ((self! Poly) (other! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (SINT SZ) self! other!) (B (< (%I self!)
       (%I other!)
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_is_lt.? $ (SINT SZ) self! other!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_is_lt.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_is_lt.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%14::spec_steps_between
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%14.spec_steps_between.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%14.spec_steps_between.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_steps_between.? $ (SINT SZ) self! end!) (Poly%core!option.Option.
      (let
       ((n$ (Sub (%I end!) (%I self!))))
       (ite
        (and
         (<= 0 n$)
         (<= n$ (- (uHi SZ) 1))
        )
        (core!option.Option./Some (I (uClip SZ n$)))
        core!option.Option./None
    ))))
    :pattern ((vstd.std_specs.range.StepSpec.spec_steps_between.? $ (SINT SZ) self! end!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_steps_between.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_steps_between.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%14::spec_steps_between_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%14.spec_steps_between_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%14.spec_steps_between_int.)
  (forall ((self! Poly) (end! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_steps_between_int.? $ (SINT SZ) self! end!)
     (I (Sub (%I end!) (%I self!)))
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_steps_between_int.? $ (SINT SZ) self!
      end!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_steps_between_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_steps_between_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%14::spec_forward_checked_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%14.spec_forward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%14.spec_forward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (SINT SZ) self! count!)
     (Poly%core!option.Option. (ite
       (<= (Add (%I self!) (%I count!)) (- (iHi SZ) 1))
       (core!option.Option./Some (I (iClip SZ (Add (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (SINT SZ) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_forward_checked_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_forward_checked_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%14::spec_forward_checked
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%14.spec_forward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%14.spec_forward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_forward_checked.? $ (SINT SZ) self! count!)
     (vstd.std_specs.range.StepSpec.spec_forward_checked_int.? $ (SINT SZ) self! count!)
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_forward_checked.? $ (SINT SZ) self! count!))
    :qid internal_vstd.std_specs.range.StepSpec.spec_forward_checked.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_forward_checked.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%14::spec_backward_checked_int
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%14.spec_backward_checked_int.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%14.spec_backward_checked_int.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (SINT SZ) self! count!)
     (Poly%core!option.Option. (ite
       (>= (Sub (%I self!) (%I count!)) (iLo SZ))
       (core!option.Option./Some (I (iClip SZ (Sub (%I self!) (%I count!)))))
       core!option.Option./None
    )))
    :pattern ((vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (SINT SZ) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_backward_checked_int.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_backward_checked_int.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::range::impl&%14::spec_backward_checked
(assert
 (fuel_bool_default fuel%vstd.std_specs.range.impl&%14.spec_backward_checked.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.impl&%14.spec_backward_checked.)
  (forall ((self! Poly) (count! Poly)) (!
    (= (vstd.std_specs.range.StepSpec.spec_backward_checked.? $ (SINT SZ) self! count!)
     (vstd.std_specs.range.StepSpec.spec_backward_checked_int.? $ (SINT SZ) self! count!)
    )
    :pattern ((vstd.std_specs.range.StepSpec.spec_backward_checked.? $ (SINT SZ) self!
      count!
    ))
    :qid internal_vstd.std_specs.range.StepSpec.spec_backward_checked.?_definition
    :skolemid skolem_internal_vstd.std_specs.range.StepSpec.spec_backward_checked.?_definition
))))

;; Function-Def crate::vstd::std_specs::range::axiom_spec_range_next_u8
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/std_specs/range.rs:151:9: 151:56 (#2245)
(get-info :all-statistics)
(push)
 (declare-const range! core!ops.range.Range.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%core!ops.range.Range. range!) (TYPE%core!ops.range.Range. $ (UINT 8)))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::std_specs::range::axiom_spec_range_next_u8
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.axiom_spec_range_next_u8.)
  (forall ((range! Poly)) (!
    (=>
     (has_type range! (TYPE%core!ops.range.Range. $ (UINT 8)))
     (and
      (=>
       (%B (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (UINT 8) (core!ops.range.Range./Range/start
          (%Poly%core!ops.range.Range. range!)
         ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       ))
       (let
        ((tmp%%$ (%Poly%core!option.Option. (vstd.std_specs.range.StepSpec.spec_forward_checked.?
            $ (UINT 8) (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. range!))
            (I 1)
        ))))
        (=>
         (is-core!option.Option./Some tmp%%$)
         (let
          ((n$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                tmp%%$
          ))))))
          (= (vstd.std_specs.range.spec_range_next.? $ (UINT 8) range!) (tuple%2./tuple%2 (Poly%core!ops.range.Range.
             (core!ops.range.Range./Range (I n$) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range.
                range!
             )))
            ) (Poly%core!option.Option. (core!option.Option./Some (core!ops.range.Range./Range/start
               (%Poly%core!ops.range.Range. range!)
      )))))))))
      (=>
       (not (%B (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (UINT 8) (core!ops.range.Range./Range/start
           (%Poly%core!ops.range.Range. range!)
          ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       )))
       (= (vstd.std_specs.range.spec_range_next.? $ (UINT 8) range!) (tuple%2./tuple%2 range!
         (Poly%core!option.Option. core!option.Option./None)
    )))))
    :pattern ((vstd.std_specs.range.spec_range_next.? $ (UINT 8) range!))
    :qid user_crate__vstd__std_specs__range__axiom_spec_range_next_u8_0
    :skolemid skolem_user_crate__vstd__std_specs__range__axiom_spec_range_next_u8_0
))))

;; Function-Def crate::vstd::std_specs::range::axiom_spec_range_next_u16
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/std_specs/range.rs:151:9: 151:56 (#2251)
(get-info :all-statistics)
(push)
 (declare-const range! core!ops.range.Range.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%core!ops.range.Range. range!) (TYPE%core!ops.range.Range. $ (UINT 16)))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::std_specs::range::axiom_spec_range_next_u16
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.axiom_spec_range_next_u16.)
  (forall ((range! Poly)) (!
    (=>
     (has_type range! (TYPE%core!ops.range.Range. $ (UINT 16)))
     (and
      (=>
       (%B (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (UINT 16) (core!ops.range.Range./Range/start
          (%Poly%core!ops.range.Range. range!)
         ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       ))
       (let
        ((tmp%%$ (%Poly%core!option.Option. (vstd.std_specs.range.StepSpec.spec_forward_checked.?
            $ (UINT 16) (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. range!))
            (I 1)
        ))))
        (=>
         (is-core!option.Option./Some tmp%%$)
         (let
          ((n$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                tmp%%$
          ))))))
          (= (vstd.std_specs.range.spec_range_next.? $ (UINT 16) range!) (tuple%2./tuple%2 (Poly%core!ops.range.Range.
             (core!ops.range.Range./Range (I n$) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range.
                range!
             )))
            ) (Poly%core!option.Option. (core!option.Option./Some (core!ops.range.Range./Range/start
               (%Poly%core!ops.range.Range. range!)
      )))))))))
      (=>
       (not (%B (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (UINT 16) (core!ops.range.Range./Range/start
           (%Poly%core!ops.range.Range. range!)
          ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       )))
       (= (vstd.std_specs.range.spec_range_next.? $ (UINT 16) range!) (tuple%2./tuple%2 range!
         (Poly%core!option.Option. core!option.Option./None)
    )))))
    :pattern ((vstd.std_specs.range.spec_range_next.? $ (UINT 16) range!))
    :qid user_crate__vstd__std_specs__range__axiom_spec_range_next_u16_1
    :skolemid skolem_user_crate__vstd__std_specs__range__axiom_spec_range_next_u16_1
))))

;; Function-Def crate::vstd::std_specs::range::axiom_spec_range_next_u32
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/std_specs/range.rs:151:9: 151:56 (#2257)
(get-info :all-statistics)
(push)
 (declare-const range! core!ops.range.Range.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%core!ops.range.Range. range!) (TYPE%core!ops.range.Range. $ (UINT 32)))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::std_specs::range::axiom_spec_range_next_u32
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.axiom_spec_range_next_u32.)
  (forall ((range! Poly)) (!
    (=>
     (has_type range! (TYPE%core!ops.range.Range. $ (UINT 32)))
     (and
      (=>
       (%B (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (UINT 32) (core!ops.range.Range./Range/start
          (%Poly%core!ops.range.Range. range!)
         ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       ))
       (let
        ((tmp%%$ (%Poly%core!option.Option. (vstd.std_specs.range.StepSpec.spec_forward_checked.?
            $ (UINT 32) (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. range!))
            (I 1)
        ))))
        (=>
         (is-core!option.Option./Some tmp%%$)
         (let
          ((n$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                tmp%%$
          ))))))
          (= (vstd.std_specs.range.spec_range_next.? $ (UINT 32) range!) (tuple%2./tuple%2 (Poly%core!ops.range.Range.
             (core!ops.range.Range./Range (I n$) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range.
                range!
             )))
            ) (Poly%core!option.Option. (core!option.Option./Some (core!ops.range.Range./Range/start
               (%Poly%core!ops.range.Range. range!)
      )))))))))
      (=>
       (not (%B (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (UINT 32) (core!ops.range.Range./Range/start
           (%Poly%core!ops.range.Range. range!)
          ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       )))
       (= (vstd.std_specs.range.spec_range_next.? $ (UINT 32) range!) (tuple%2./tuple%2 range!
         (Poly%core!option.Option. core!option.Option./None)
    )))))
    :pattern ((vstd.std_specs.range.spec_range_next.? $ (UINT 32) range!))
    :qid user_crate__vstd__std_specs__range__axiom_spec_range_next_u32_2
    :skolemid skolem_user_crate__vstd__std_specs__range__axiom_spec_range_next_u32_2
))))

;; Function-Def crate::vstd::std_specs::range::axiom_spec_range_next_u64
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/std_specs/range.rs:151:9: 151:56 (#2263)
(get-info :all-statistics)
(push)
 (declare-const range! core!ops.range.Range.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%core!ops.range.Range. range!) (TYPE%core!ops.range.Range. $ (UINT 64)))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::std_specs::range::axiom_spec_range_next_u64
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.axiom_spec_range_next_u64.)
  (forall ((range! Poly)) (!
    (=>
     (has_type range! (TYPE%core!ops.range.Range. $ (UINT 64)))
     (and
      (=>
       (%B (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (UINT 64) (core!ops.range.Range./Range/start
          (%Poly%core!ops.range.Range. range!)
         ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       ))
       (let
        ((tmp%%$ (%Poly%core!option.Option. (vstd.std_specs.range.StepSpec.spec_forward_checked.?
            $ (UINT 64) (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. range!))
            (I 1)
        ))))
        (=>
         (is-core!option.Option./Some tmp%%$)
         (let
          ((n$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                tmp%%$
          ))))))
          (= (vstd.std_specs.range.spec_range_next.? $ (UINT 64) range!) (tuple%2./tuple%2 (Poly%core!ops.range.Range.
             (core!ops.range.Range./Range (I n$) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range.
                range!
             )))
            ) (Poly%core!option.Option. (core!option.Option./Some (core!ops.range.Range./Range/start
               (%Poly%core!ops.range.Range. range!)
      )))))))))
      (=>
       (not (%B (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (UINT 64) (core!ops.range.Range./Range/start
           (%Poly%core!ops.range.Range. range!)
          ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       )))
       (= (vstd.std_specs.range.spec_range_next.? $ (UINT 64) range!) (tuple%2./tuple%2 range!
         (Poly%core!option.Option. core!option.Option./None)
    )))))
    :pattern ((vstd.std_specs.range.spec_range_next.? $ (UINT 64) range!))
    :qid user_crate__vstd__std_specs__range__axiom_spec_range_next_u64_3
    :skolemid skolem_user_crate__vstd__std_specs__range__axiom_spec_range_next_u64_3
))))

;; Function-Def crate::vstd::std_specs::range::axiom_spec_range_next_u128
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/std_specs/range.rs:151:9: 151:56 (#2269)
(get-info :all-statistics)
(push)
 (declare-const range! core!ops.range.Range.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%core!ops.range.Range. range!) (TYPE%core!ops.range.Range. $ (UINT 128)))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::std_specs::range::axiom_spec_range_next_u128
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.axiom_spec_range_next_u128.)
  (forall ((range! Poly)) (!
    (=>
     (has_type range! (TYPE%core!ops.range.Range. $ (UINT 128)))
     (and
      (=>
       (%B (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (UINT 128) (core!ops.range.Range./Range/start
          (%Poly%core!ops.range.Range. range!)
         ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       ))
       (let
        ((tmp%%$ (%Poly%core!option.Option. (vstd.std_specs.range.StepSpec.spec_forward_checked.?
            $ (UINT 128) (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. range!))
            (I 1)
        ))))
        (=>
         (is-core!option.Option./Some tmp%%$)
         (let
          ((n$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                tmp%%$
          ))))))
          (= (vstd.std_specs.range.spec_range_next.? $ (UINT 128) range!) (tuple%2./tuple%2 (
             Poly%core!ops.range.Range. (core!ops.range.Range./Range (I n$) (core!ops.range.Range./Range/end
               (%Poly%core!ops.range.Range. range!)
             ))
            ) (Poly%core!option.Option. (core!option.Option./Some (core!ops.range.Range./Range/start
               (%Poly%core!ops.range.Range. range!)
      )))))))))
      (=>
       (not (%B (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (UINT 128) (core!ops.range.Range./Range/start
           (%Poly%core!ops.range.Range. range!)
          ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       )))
       (= (vstd.std_specs.range.spec_range_next.? $ (UINT 128) range!) (tuple%2./tuple%2 range!
         (Poly%core!option.Option. core!option.Option./None)
    )))))
    :pattern ((vstd.std_specs.range.spec_range_next.? $ (UINT 128) range!))
    :qid user_crate__vstd__std_specs__range__axiom_spec_range_next_u128_4
    :skolemid skolem_user_crate__vstd__std_specs__range__axiom_spec_range_next_u128_4
))))

;; Function-Def crate::vstd::std_specs::range::axiom_spec_range_next_usize
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/std_specs/range.rs:151:9: 151:56 (#2275)
(get-info :all-statistics)
(push)
 (declare-const range! core!ops.range.Range.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%core!ops.range.Range. range!) (TYPE%core!ops.range.Range. $ (UINT SZ)))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::std_specs::range::axiom_spec_range_next_usize
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.axiom_spec_range_next_usize.)
  (forall ((range! Poly)) (!
    (=>
     (has_type range! (TYPE%core!ops.range.Range. $ (UINT SZ)))
     (and
      (=>
       (%B (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (UINT SZ) (core!ops.range.Range./Range/start
          (%Poly%core!ops.range.Range. range!)
         ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       ))
       (let
        ((tmp%%$ (%Poly%core!option.Option. (vstd.std_specs.range.StepSpec.spec_forward_checked.?
            $ (UINT SZ) (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. range!))
            (I 1)
        ))))
        (=>
         (is-core!option.Option./Some tmp%%$)
         (let
          ((n$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                tmp%%$
          ))))))
          (= (vstd.std_specs.range.spec_range_next.? $ (UINT SZ) range!) (tuple%2./tuple%2 (Poly%core!ops.range.Range.
             (core!ops.range.Range./Range (I n$) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range.
                range!
             )))
            ) (Poly%core!option.Option. (core!option.Option./Some (core!ops.range.Range./Range/start
               (%Poly%core!ops.range.Range. range!)
      )))))))))
      (=>
       (not (%B (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (UINT SZ) (core!ops.range.Range./Range/start
           (%Poly%core!ops.range.Range. range!)
          ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       )))
       (= (vstd.std_specs.range.spec_range_next.? $ (UINT SZ) range!) (tuple%2./tuple%2 range!
         (Poly%core!option.Option. core!option.Option./None)
    )))))
    :pattern ((vstd.std_specs.range.spec_range_next.? $ (UINT SZ) range!))
    :qid user_crate__vstd__std_specs__range__axiom_spec_range_next_usize_5
    :skolemid skolem_user_crate__vstd__std_specs__range__axiom_spec_range_next_usize_5
))))

;; Function-Def crate::vstd::std_specs::range::axiom_spec_range_next_i8
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/std_specs/range.rs:151:9: 151:56 (#2281)
(get-info :all-statistics)
(push)
 (declare-const range! core!ops.range.Range.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%core!ops.range.Range. range!) (TYPE%core!ops.range.Range. $ (SINT 8)))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::std_specs::range::axiom_spec_range_next_i8
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.axiom_spec_range_next_i8.)
  (forall ((range! Poly)) (!
    (=>
     (has_type range! (TYPE%core!ops.range.Range. $ (SINT 8)))
     (and
      (=>
       (%B (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (SINT 8) (core!ops.range.Range./Range/start
          (%Poly%core!ops.range.Range. range!)
         ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       ))
       (let
        ((tmp%%$ (%Poly%core!option.Option. (vstd.std_specs.range.StepSpec.spec_forward_checked.?
            $ (SINT 8) (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. range!))
            (I 1)
        ))))
        (=>
         (is-core!option.Option./Some tmp%%$)
         (let
          ((n$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                tmp%%$
          ))))))
          (= (vstd.std_specs.range.spec_range_next.? $ (SINT 8) range!) (tuple%2./tuple%2 (Poly%core!ops.range.Range.
             (core!ops.range.Range./Range (I n$) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range.
                range!
             )))
            ) (Poly%core!option.Option. (core!option.Option./Some (core!ops.range.Range./Range/start
               (%Poly%core!ops.range.Range. range!)
      )))))))))
      (=>
       (not (%B (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (SINT 8) (core!ops.range.Range./Range/start
           (%Poly%core!ops.range.Range. range!)
          ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       )))
       (= (vstd.std_specs.range.spec_range_next.? $ (SINT 8) range!) (tuple%2./tuple%2 range!
         (Poly%core!option.Option. core!option.Option./None)
    )))))
    :pattern ((vstd.std_specs.range.spec_range_next.? $ (SINT 8) range!))
    :qid user_crate__vstd__std_specs__range__axiom_spec_range_next_i8_6
    :skolemid skolem_user_crate__vstd__std_specs__range__axiom_spec_range_next_i8_6
))))

;; Function-Def crate::vstd::std_specs::range::axiom_spec_range_next_i16
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/std_specs/range.rs:151:9: 151:56 (#2287)
(get-info :all-statistics)
(push)
 (declare-const range! core!ops.range.Range.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%core!ops.range.Range. range!) (TYPE%core!ops.range.Range. $ (SINT 16)))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::std_specs::range::axiom_spec_range_next_i16
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.axiom_spec_range_next_i16.)
  (forall ((range! Poly)) (!
    (=>
     (has_type range! (TYPE%core!ops.range.Range. $ (SINT 16)))
     (and
      (=>
       (%B (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (SINT 16) (core!ops.range.Range./Range/start
          (%Poly%core!ops.range.Range. range!)
         ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       ))
       (let
        ((tmp%%$ (%Poly%core!option.Option. (vstd.std_specs.range.StepSpec.spec_forward_checked.?
            $ (SINT 16) (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. range!))
            (I 1)
        ))))
        (=>
         (is-core!option.Option./Some tmp%%$)
         (let
          ((n$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                tmp%%$
          ))))))
          (= (vstd.std_specs.range.spec_range_next.? $ (SINT 16) range!) (tuple%2./tuple%2 (Poly%core!ops.range.Range.
             (core!ops.range.Range./Range (I n$) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range.
                range!
             )))
            ) (Poly%core!option.Option. (core!option.Option./Some (core!ops.range.Range./Range/start
               (%Poly%core!ops.range.Range. range!)
      )))))))))
      (=>
       (not (%B (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (SINT 16) (core!ops.range.Range./Range/start
           (%Poly%core!ops.range.Range. range!)
          ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       )))
       (= (vstd.std_specs.range.spec_range_next.? $ (SINT 16) range!) (tuple%2./tuple%2 range!
         (Poly%core!option.Option. core!option.Option./None)
    )))))
    :pattern ((vstd.std_specs.range.spec_range_next.? $ (SINT 16) range!))
    :qid user_crate__vstd__std_specs__range__axiom_spec_range_next_i16_7
    :skolemid skolem_user_crate__vstd__std_specs__range__axiom_spec_range_next_i16_7
))))

;; Function-Def crate::vstd::std_specs::range::axiom_spec_range_next_i32
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/std_specs/range.rs:151:9: 151:56 (#2293)
(get-info :all-statistics)
(push)
 (declare-const range! core!ops.range.Range.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%core!ops.range.Range. range!) (TYPE%core!ops.range.Range. $ (SINT 32)))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::std_specs::range::axiom_spec_range_next_i32
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.axiom_spec_range_next_i32.)
  (forall ((range! Poly)) (!
    (=>
     (has_type range! (TYPE%core!ops.range.Range. $ (SINT 32)))
     (and
      (=>
       (%B (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (SINT 32) (core!ops.range.Range./Range/start
          (%Poly%core!ops.range.Range. range!)
         ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       ))
       (let
        ((tmp%%$ (%Poly%core!option.Option. (vstd.std_specs.range.StepSpec.spec_forward_checked.?
            $ (SINT 32) (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. range!))
            (I 1)
        ))))
        (=>
         (is-core!option.Option./Some tmp%%$)
         (let
          ((n$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                tmp%%$
          ))))))
          (= (vstd.std_specs.range.spec_range_next.? $ (SINT 32) range!) (tuple%2./tuple%2 (Poly%core!ops.range.Range.
             (core!ops.range.Range./Range (I n$) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range.
                range!
             )))
            ) (Poly%core!option.Option. (core!option.Option./Some (core!ops.range.Range./Range/start
               (%Poly%core!ops.range.Range. range!)
      )))))))))
      (=>
       (not (%B (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (SINT 32) (core!ops.range.Range./Range/start
           (%Poly%core!ops.range.Range. range!)
          ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       )))
       (= (vstd.std_specs.range.spec_range_next.? $ (SINT 32) range!) (tuple%2./tuple%2 range!
         (Poly%core!option.Option. core!option.Option./None)
    )))))
    :pattern ((vstd.std_specs.range.spec_range_next.? $ (SINT 32) range!))
    :qid user_crate__vstd__std_specs__range__axiom_spec_range_next_i32_8
    :skolemid skolem_user_crate__vstd__std_specs__range__axiom_spec_range_next_i32_8
))))

;; Function-Def crate::vstd::std_specs::range::axiom_spec_range_next_i64
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/std_specs/range.rs:151:9: 151:56 (#2299)
(get-info :all-statistics)
(push)
 (declare-const range! core!ops.range.Range.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%core!ops.range.Range. range!) (TYPE%core!ops.range.Range. $ (SINT 64)))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::std_specs::range::axiom_spec_range_next_i64
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.axiom_spec_range_next_i64.)
  (forall ((range! Poly)) (!
    (=>
     (has_type range! (TYPE%core!ops.range.Range. $ (SINT 64)))
     (and
      (=>
       (%B (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (SINT 64) (core!ops.range.Range./Range/start
          (%Poly%core!ops.range.Range. range!)
         ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       ))
       (let
        ((tmp%%$ (%Poly%core!option.Option. (vstd.std_specs.range.StepSpec.spec_forward_checked.?
            $ (SINT 64) (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. range!))
            (I 1)
        ))))
        (=>
         (is-core!option.Option./Some tmp%%$)
         (let
          ((n$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                tmp%%$
          ))))))
          (= (vstd.std_specs.range.spec_range_next.? $ (SINT 64) range!) (tuple%2./tuple%2 (Poly%core!ops.range.Range.
             (core!ops.range.Range./Range (I n$) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range.
                range!
             )))
            ) (Poly%core!option.Option. (core!option.Option./Some (core!ops.range.Range./Range/start
               (%Poly%core!ops.range.Range. range!)
      )))))))))
      (=>
       (not (%B (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (SINT 64) (core!ops.range.Range./Range/start
           (%Poly%core!ops.range.Range. range!)
          ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       )))
       (= (vstd.std_specs.range.spec_range_next.? $ (SINT 64) range!) (tuple%2./tuple%2 range!
         (Poly%core!option.Option. core!option.Option./None)
    )))))
    :pattern ((vstd.std_specs.range.spec_range_next.? $ (SINT 64) range!))
    :qid user_crate__vstd__std_specs__range__axiom_spec_range_next_i64_9
    :skolemid skolem_user_crate__vstd__std_specs__range__axiom_spec_range_next_i64_9
))))

;; Function-Def crate::vstd::std_specs::range::axiom_spec_range_next_i128
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/std_specs/range.rs:151:9: 151:56 (#2305)
(get-info :all-statistics)
(push)
 (declare-const range! core!ops.range.Range.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%core!ops.range.Range. range!) (TYPE%core!ops.range.Range. $ (SINT 128)))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::std_specs::range::axiom_spec_range_next_i128
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.axiom_spec_range_next_i128.)
  (forall ((range! Poly)) (!
    (=>
     (has_type range! (TYPE%core!ops.range.Range. $ (SINT 128)))
     (and
      (=>
       (%B (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (SINT 128) (core!ops.range.Range./Range/start
          (%Poly%core!ops.range.Range. range!)
         ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       ))
       (let
        ((tmp%%$ (%Poly%core!option.Option. (vstd.std_specs.range.StepSpec.spec_forward_checked.?
            $ (SINT 128) (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. range!))
            (I 1)
        ))))
        (=>
         (is-core!option.Option./Some tmp%%$)
         (let
          ((n$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                tmp%%$
          ))))))
          (= (vstd.std_specs.range.spec_range_next.? $ (SINT 128) range!) (tuple%2./tuple%2 (
             Poly%core!ops.range.Range. (core!ops.range.Range./Range (I n$) (core!ops.range.Range./Range/end
               (%Poly%core!ops.range.Range. range!)
             ))
            ) (Poly%core!option.Option. (core!option.Option./Some (core!ops.range.Range./Range/start
               (%Poly%core!ops.range.Range. range!)
      )))))))))
      (=>
       (not (%B (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (SINT 128) (core!ops.range.Range./Range/start
           (%Poly%core!ops.range.Range. range!)
          ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       )))
       (= (vstd.std_specs.range.spec_range_next.? $ (SINT 128) range!) (tuple%2./tuple%2 range!
         (Poly%core!option.Option. core!option.Option./None)
    )))))
    :pattern ((vstd.std_specs.range.spec_range_next.? $ (SINT 128) range!))
    :qid user_crate__vstd__std_specs__range__axiom_spec_range_next_i128_10
    :skolemid skolem_user_crate__vstd__std_specs__range__axiom_spec_range_next_i128_10
))))

;; Function-Def crate::vstd::std_specs::range::axiom_spec_range_next_isize
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/std_specs/range.rs:151:9: 151:56 (#2311)
(get-info :all-statistics)
(push)
 (declare-const range! core!ops.range.Range.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%core!ops.range.Range. range!) (TYPE%core!ops.range.Range. $ (SINT SZ)))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::std_specs::range::axiom_spec_range_next_isize
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.range.axiom_spec_range_next_isize.)
  (forall ((range! Poly)) (!
    (=>
     (has_type range! (TYPE%core!ops.range.Range. $ (SINT SZ)))
     (and
      (=>
       (%B (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (SINT SZ) (core!ops.range.Range./Range/start
          (%Poly%core!ops.range.Range. range!)
         ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       ))
       (let
        ((tmp%%$ (%Poly%core!option.Option. (vstd.std_specs.range.StepSpec.spec_forward_checked.?
            $ (SINT SZ) (core!ops.range.Range./Range/start (%Poly%core!ops.range.Range. range!))
            (I 1)
        ))))
        (=>
         (is-core!option.Option./Some tmp%%$)
         (let
          ((n$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
                tmp%%$
          ))))))
          (= (vstd.std_specs.range.spec_range_next.? $ (SINT SZ) range!) (tuple%2./tuple%2 (Poly%core!ops.range.Range.
             (core!ops.range.Range./Range (I n$) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range.
                range!
             )))
            ) (Poly%core!option.Option. (core!option.Option./Some (core!ops.range.Range./Range/start
               (%Poly%core!ops.range.Range. range!)
      )))))))))
      (=>
       (not (%B (vstd.std_specs.range.StepSpec.spec_is_lt.? $ (SINT SZ) (core!ops.range.Range./Range/start
           (%Poly%core!ops.range.Range. range!)
          ) (core!ops.range.Range./Range/end (%Poly%core!ops.range.Range. range!))
       )))
       (= (vstd.std_specs.range.spec_range_next.? $ (SINT SZ) range!) (tuple%2./tuple%2 range!
         (Poly%core!option.Option. core!option.Option./None)
    )))))
    :pattern ((vstd.std_specs.range.spec_range_next.? $ (SINT SZ) range!))
    :qid user_crate__vstd__std_specs__range__axiom_spec_range_next_isize_11
    :skolemid skolem_user_crate__vstd__std_specs__range__axiom_spec_range_next_isize_11
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
 (tr_bound%vstd.view.View. $ (UINT 128))
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
 (tr_bound%vstd.view.View. $ (SINT 128))
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
 (forall ((A&. Dcr) (A& Type)) (!
   (=>
    (tr_bound%vstd.std_specs.range.StepSpec. A&. A&)
    (tr_bound%vstd.pervasive.ForLoopGhostIteratorNew. $ (TYPE%core!ops.range.Range. A&.
      A&
   )))
   :pattern ((tr_bound%vstd.pervasive.ForLoopGhostIteratorNew. $ (TYPE%core!ops.range.Range.
      A&. A&
   )))
   :qid internal_crate__vstd__std_specs__range__impl&__0_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__std_specs__range__impl&__0_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (=>
    (and
     (tr_bound%vstd.std_specs.range.StepSpec. A&. A&)
     (tr_bound%core!iter.range.Step. A&. A&)
    )
    (tr_bound%vstd.pervasive.ForLoopGhostIterator. $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
      A&. A&
   )))
   :pattern ((tr_bound%vstd.pervasive.ForLoopGhostIterator. $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
      A&. A&
   )))
   :qid internal_crate__vstd__std_specs__range__impl&__1_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__std_specs__range__impl&__1_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (=>
    (and
     (tr_bound%vstd.std_specs.range.StepSpec. A&. A&)
     (tr_bound%core!iter.range.Step. A&. A&)
    )
    (tr_bound%vstd.view.View. $ (TYPE%vstd.std_specs.range.RangeGhostIterator. A&. A&))
   )
   :pattern ((tr_bound%vstd.view.View. $ (TYPE%vstd.std_specs.range.RangeGhostIterator.
      A&. A&
   )))
   :qid internal_crate__vstd__std_specs__range__impl&__2_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__std_specs__range__impl&__2_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.std_specs.range.StepSpec. $ (UINT 8))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.std_specs.range.StepSpec. $ (UINT 16))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.std_specs.range.StepSpec. $ (UINT 32))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.std_specs.range.StepSpec. $ (UINT 64))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.std_specs.range.StepSpec. $ (UINT 128))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.std_specs.range.StepSpec. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.std_specs.range.StepSpec. $ (SINT 8))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.std_specs.range.StepSpec. $ (SINT 16))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.std_specs.range.StepSpec. $ (SINT 32))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.std_specs.range.StepSpec. $ (SINT 64))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.std_specs.range.StepSpec. $ (SINT 128))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.std_specs.range.StepSpec. $ (SINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ (UINT 16) $ (UINT 16))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ (SINT 64) $ (SINT 64))
)

;; Trait-Impl-Axiom
(assert
 (forall ((U&. Dcr) (U& Type) (T&. Dcr) (T& Type)) (!
   (=>
    (and
     (tr_bound%core!cmp.PartialEq. U&. U& U&. U&)
     (tr_bound%core!cmp.PartialEq. T&. T& T&. T&)
    )
    (tr_bound%core!cmp.PartialEq. $ (TYPE%tuple%2. U&. U& T&. T&) $ (TYPE%tuple%2. U&.
      U& T&. T&
   )))
   :pattern ((tr_bound%core!cmp.PartialEq. $ (TYPE%tuple%2. U&. U& T&. T&) $ (TYPE%tuple%2.
      U&. U& T&. T&
   )))
   :qid internal_core__tuple__impl&__11_trait_impl_definition
   :skolemid skolem_internal_core__tuple__impl&__11_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ (SINT 16) $ (SINT 16))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ BOOL $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ (SINT 128) $ (SINT 128))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ (UINT SZ) $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ (UINT 32) $ (UINT 32))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ (UINT 8) $ (UINT 8))
)

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%core!cmp.PartialEq. T&. T& T&. T&)
    (tr_bound%core!cmp.PartialEq. $ (TYPE%core!option.Option. T&. T&) $ (TYPE%core!option.Option.
      T&. T&
   )))
   :pattern ((tr_bound%core!cmp.PartialEq. $ (TYPE%core!option.Option. T&. T&) $ (TYPE%core!option.Option.
      T&. T&
   )))
   :qid internal_core__option__impl&__14_trait_impl_definition
   :skolemid skolem_internal_core__option__impl&__14_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ (UINT 64) $ (UINT 64))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ (SINT 8) $ (SINT 8))
)

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type)) (!
   (=>
    (tr_bound%core!cmp.PartialEq. A&. A& B&. B&)
    (tr_bound%core!cmp.PartialEq. (REF A&.) A& (REF B&.) B&)
   )
   :pattern ((tr_bound%core!cmp.PartialEq. (REF A&.) A& (REF B&.) B&))
   :qid internal_core__cmp__impls__impl&__9_trait_impl_definition
   :skolemid skolem_internal_core__cmp__impls__impl&__9_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ (UINT 128) $ (UINT 128))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ TYPE%tuple%0. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ (SINT 32) $ (SINT 32))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ (SINT SZ) $ (SINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (forall ((Idx&. Dcr) (Idx& Type)) (!
   (=>
    (tr_bound%core!cmp.PartialEq. Idx&. Idx& Idx&. Idx&)
    (tr_bound%core!cmp.PartialEq. $ (TYPE%core!ops.range.Range. Idx&. Idx&) $ (TYPE%core!ops.range.Range.
      Idx&. Idx&
   )))
   :pattern ((tr_bound%core!cmp.PartialEq. $ (TYPE%core!ops.range.Range. Idx&. Idx&) $
     (TYPE%core!ops.range.Range. Idx&. Idx&)
   ))
   :qid internal_core__ops__range__impl&__41_trait_impl_definition
   :skolemid skolem_internal_core__ops__range__impl&__41_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type)) (!
   (=>
    (tr_bound%core!cmp.PartialOrd. A&. A& B&. B&)
    (tr_bound%core!cmp.PartialOrd. (REF A&.) A& (REF B&.) B&)
   )
   :pattern ((tr_bound%core!cmp.PartialOrd. (REF A&.) A& (REF B&.) B&))
   :qid internal_core__cmp__impls__impl&__10_trait_impl_definition
   :skolemid skolem_internal_core__cmp__impls__impl&__10_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialOrd. $ (UINT 8) $ (UINT 8))
)

;; Trait-Impl-Axiom
(assert
 (forall ((U&. Dcr) (U& Type) (T&. Dcr) (T& Type)) (!
   (=>
    (and
     (tr_bound%core!cmp.PartialOrd. U&. U& U&. U&)
     (tr_bound%core!cmp.PartialOrd. T&. T& T&. T&)
    )
    (tr_bound%core!cmp.PartialOrd. $ (TYPE%tuple%2. U&. U& T&. T&) $ (TYPE%tuple%2. U&.
      U& T&. T&
   )))
   :pattern ((tr_bound%core!cmp.PartialOrd. $ (TYPE%tuple%2. U&. U& T&. T&) $ (TYPE%tuple%2.
      U&. U& T&. T&
   )))
   :qid internal_core__tuple__impl&__15_trait_impl_definition
   :skolemid skolem_internal_core__tuple__impl&__15_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialOrd. $ (SINT 64) $ (SINT 64))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialOrd. $ (UINT 16) $ (UINT 16))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialOrd. $ (SINT 32) $ (SINT 32))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialOrd. $ TYPE%tuple%0. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialOrd. $ (SINT SZ) $ (SINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialOrd. $ (SINT 128) $ (SINT 128))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialOrd. $ (UINT 32) $ (UINT 32))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialOrd. $ (SINT 8) $ (SINT 8))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialOrd. $ BOOL $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%core!cmp.PartialOrd. T&. T& T&. T&)
    (tr_bound%core!cmp.PartialOrd. $ (TYPE%core!option.Option. T&. T&) $ (TYPE%core!option.Option.
      T&. T&
   )))
   :pattern ((tr_bound%core!cmp.PartialOrd. $ (TYPE%core!option.Option. T&. T&) $ (TYPE%core!option.Option.
      T&. T&
   )))
   :qid internal_core__option__impl&__15_trait_impl_definition
   :skolemid skolem_internal_core__option__impl&__15_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialOrd. $ (UINT SZ) $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialOrd. $ (SINT 16) $ (SINT 16))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialOrd. $ (UINT 128) $ (UINT 128))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialOrd. $ (UINT 64) $ (UINT 64))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ (SINT 8))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!iter.range.Step. $ (SINT 8))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ (SINT 32))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!iter.range.Step. $ (SINT 32))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ (UINT 16))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!iter.range.Step. $ (UINT 16))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ (UINT 32))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!iter.range.Step. $ (UINT 32))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ (UINT 128))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!iter.range.Step. $ (UINT 128))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ (SINT 128))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!iter.range.Step. $ (SINT 128))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ (UINT 64))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!iter.range.Step. $ (UINT 64))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ (UINT 8))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!iter.range.Step. $ (UINT 8))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ (SINT 16))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!iter.range.Step. $ (SINT 16))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!iter.range.Step. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ (SINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!iter.range.Step. $ (SINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ (SINT 64))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!iter.range.Step. $ (SINT 64))
)

;; Trait-Impl-Axiom
(assert
 (forall ((Idx&. Dcr) (Idx& Type)) (!
   (=>
    (tr_bound%core!clone.Clone. Idx&. Idx&)
    (tr_bound%core!clone.Clone. $ (TYPE%core!ops.range.Range. Idx&. Idx&))
   )
   :pattern ((tr_bound%core!clone.Clone. $ (TYPE%core!ops.range.Range. Idx&. Idx&)))
   :qid internal_core__ops__range__impl&__38_trait_impl_definition
   :skolemid skolem_internal_core__ops__range__impl&__38_trait_impl_definition
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
