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

;; MODULE 'module vstd::raw_ptr'

;; Fuel
(declare-const fuel%vstd.raw_ptr.ptr_mut_specs.spec_addr. FuelId)
(declare-const fuel%vstd.raw_ptr.ptr_const_specs.spec_addr. FuelId)
(declare-const fuel%vstd.array.array_view. FuelId)
(declare-const fuel%vstd.array.impl&%0.view. FuelId)
(declare-const fuel%vstd.raw_ptr.impl&%1.arrow_Length_0. FuelId)
(declare-const fuel%vstd.raw_ptr.impl&%1.arrow_Dyn_0. FuelId)
(declare-const fuel%vstd.raw_ptr.impl&%2.arrow_0. FuelId)
(declare-const fuel%vstd.raw_ptr.impl&%2.arrow_Init_0. FuelId)
(declare-const fuel%vstd.raw_ptr.impl&%4.view. FuelId)
(declare-const fuel%vstd.raw_ptr.impl&%6.ptr. FuelId)
(declare-const fuel%vstd.raw_ptr.impl&%6.opt_value. FuelId)
(declare-const fuel%vstd.raw_ptr.impl&%6.is_init. FuelId)
(declare-const fuel%vstd.raw_ptr.impl&%6.is_uninit. FuelId)
(declare-const fuel%vstd.raw_ptr.impl&%6.value. FuelId)
(declare-const fuel%vstd.raw_ptr.impl&%7.is_init. FuelId)
(declare-const fuel%vstd.raw_ptr.impl&%7.is_uninit. FuelId)
(declare-const fuel%vstd.raw_ptr.impl&%7.value. FuelId)
(declare-const fuel%vstd.raw_ptr.ptr_from_data. FuelId)
(declare-const fuel%vstd.raw_ptr.axiom_ptr_mut_from_data. FuelId)
(declare-const fuel%vstd.raw_ptr.ptrs_mut_eq. FuelId)
(declare-const fuel%vstd.raw_ptr.ptr_null. FuelId)
(declare-const fuel%vstd.raw_ptr.ptr_null_mut. FuelId)
(declare-const fuel%vstd.raw_ptr.spec_cast_ptr_to_thin_ptr. FuelId)
(declare-const fuel%vstd.raw_ptr.spec_cast_array_ptr_to_slice_ptr. FuelId)
(declare-const fuel%vstd.raw_ptr.spec_cast_ptr_to_usize. FuelId)
(declare-const fuel%vstd.raw_ptr.impl&%10.view. FuelId)
(declare-const fuel%vstd.raw_ptr.impl&%11.is_range. FuelId)
(declare-const fuel%vstd.raw_ptr.impl&%11.contains_range. FuelId)
(declare-const fuel%vstd.raw_ptr.impl&%13.addr. FuelId)
(declare-const fuel%vstd.raw_ptr.impl&%13.size. FuelId)
(declare-const fuel%vstd.raw_ptr.impl&%13.align. FuelId)
(declare-const fuel%vstd.raw_ptr.impl&%13.provenance. FuelId)
(declare-const fuel%vstd.set.impl&%0.subset_of. FuelId)
(declare-const fuel%vstd.set.impl&%0.spec_le. FuelId)
(declare-const fuel%vstd.set.impl&%0.spec_add. FuelId)
(declare-const fuel%vstd.set_lib.set_int_range. FuelId)
(declare-const fuel%vstd.view.impl&%0.view. FuelId)
(declare-const fuel%vstd.view.impl&%2.view. FuelId)
(declare-const fuel%vstd.view.impl&%4.view. FuelId)
(declare-const fuel%vstd.view.impl&%16.view. FuelId)
(declare-const fuel%vstd.view.impl&%32.view. FuelId)
(declare-const fuel%vstd.view.impl&%34.view. FuelId)
(assert
 (distinct fuel%vstd.raw_ptr.ptr_mut_specs.spec_addr. fuel%vstd.raw_ptr.ptr_const_specs.spec_addr.
  fuel%vstd.array.array_view. fuel%vstd.array.impl&%0.view. fuel%vstd.raw_ptr.impl&%1.arrow_Length_0.
  fuel%vstd.raw_ptr.impl&%1.arrow_Dyn_0. fuel%vstd.raw_ptr.impl&%2.arrow_0. fuel%vstd.raw_ptr.impl&%2.arrow_Init_0.
  fuel%vstd.raw_ptr.impl&%4.view. fuel%vstd.raw_ptr.impl&%6.ptr. fuel%vstd.raw_ptr.impl&%6.opt_value.
  fuel%vstd.raw_ptr.impl&%6.is_init. fuel%vstd.raw_ptr.impl&%6.is_uninit. fuel%vstd.raw_ptr.impl&%6.value.
  fuel%vstd.raw_ptr.impl&%7.is_init. fuel%vstd.raw_ptr.impl&%7.is_uninit. fuel%vstd.raw_ptr.impl&%7.value.
  fuel%vstd.raw_ptr.ptr_from_data. fuel%vstd.raw_ptr.axiom_ptr_mut_from_data. fuel%vstd.raw_ptr.ptrs_mut_eq.
  fuel%vstd.raw_ptr.ptr_null. fuel%vstd.raw_ptr.ptr_null_mut. fuel%vstd.raw_ptr.spec_cast_ptr_to_thin_ptr.
  fuel%vstd.raw_ptr.spec_cast_array_ptr_to_slice_ptr. fuel%vstd.raw_ptr.spec_cast_ptr_to_usize.
  fuel%vstd.raw_ptr.impl&%10.view. fuel%vstd.raw_ptr.impl&%11.is_range. fuel%vstd.raw_ptr.impl&%11.contains_range.
  fuel%vstd.raw_ptr.impl&%13.addr. fuel%vstd.raw_ptr.impl&%13.size. fuel%vstd.raw_ptr.impl&%13.align.
  fuel%vstd.raw_ptr.impl&%13.provenance. fuel%vstd.set.impl&%0.subset_of. fuel%vstd.set.impl&%0.spec_le.
  fuel%vstd.set.impl&%0.spec_add. fuel%vstd.set_lib.set_int_range. fuel%vstd.view.impl&%0.view.
  fuel%vstd.view.impl&%2.view. fuel%vstd.view.impl&%4.view. fuel%vstd.view.impl&%16.view.
  fuel%vstd.view.impl&%32.view. fuel%vstd.view.impl&%34.view.
))

;; Associated-Type-Decls
(declare-fun proj%%vstd.view.View./V (Dcr Type) Dcr)
(declare-fun proj%vstd.view.View./V (Dcr Type) Type)
(declare-fun proj%%core!ptr.metadata.Pointee./Metadata (Dcr Type) Dcr)
(declare-fun proj%core!ptr.metadata.Pointee./Metadata (Dcr Type) Type)

;; Datatypes
(declare-sort vstd.raw_ptr.Dealloc. 0)
(declare-sort vstd.raw_ptr.DynMetadata. 0)
(declare-sort vstd.raw_ptr.IsExposed. 0)
(declare-sort vstd.raw_ptr.PointsToRaw. 0)
(declare-sort vstd.raw_ptr.Provenance. 0)
(declare-sort vstd.set.Set<int.>. 0)
(declare-datatypes ((vstd.raw_ptr.Metadata. 0) (vstd.raw_ptr.PtrData. 0) (vstd.raw_ptr.MemContents.
   0
  ) (vstd.raw_ptr.PointsToData. 0) (vstd.raw_ptr.DeallocData. 0) (tuple%0. 0) (tuple%1.
   0
  ) (tuple%2. 0)
 ) (((vstd.raw_ptr.Metadata./Thin) (vstd.raw_ptr.Metadata./Length (vstd.raw_ptr.Metadata./Length/?0
     Int
    )
   ) (vstd.raw_ptr.Metadata./Dyn (vstd.raw_ptr.Metadata./Dyn/?0 vstd.raw_ptr.DynMetadata.))
  ) ((vstd.raw_ptr.PtrData./PtrData (vstd.raw_ptr.PtrData./PtrData/?addr Int) (vstd.raw_ptr.PtrData./PtrData/?provenance
     vstd.raw_ptr.Provenance.
    ) (vstd.raw_ptr.PtrData./PtrData/?metadata vstd.raw_ptr.Metadata.)
   )
  ) ((vstd.raw_ptr.MemContents./Uninit) (vstd.raw_ptr.MemContents./Init (vstd.raw_ptr.MemContents./Init/?0
     Poly
   ))
  ) ((vstd.raw_ptr.PointsToData./PointsToData (vstd.raw_ptr.PointsToData./PointsToData/?ptr
     Poly
    ) (vstd.raw_ptr.PointsToData./PointsToData/?opt_value vstd.raw_ptr.MemContents.)
   )
  ) ((vstd.raw_ptr.DeallocData./DeallocData (vstd.raw_ptr.DeallocData./DeallocData/?addr
     Int
    ) (vstd.raw_ptr.DeallocData./DeallocData/?size Int) (vstd.raw_ptr.DeallocData./DeallocData/?align
     Int
    ) (vstd.raw_ptr.DeallocData./DeallocData/?provenance vstd.raw_ptr.Provenance.)
   )
  ) ((tuple%0./tuple%0)) ((tuple%1./tuple%1 (tuple%1./tuple%1/?0 Poly))) ((tuple%2./tuple%2
    (tuple%2./tuple%2/?0 Poly) (tuple%2./tuple%2/?1 Poly)
))))
(declare-fun vstd.raw_ptr.Metadata./Length/0 (vstd.raw_ptr.Metadata.) Int)
(declare-fun vstd.raw_ptr.Metadata./Dyn/0 (vstd.raw_ptr.Metadata.) vstd.raw_ptr.DynMetadata.)
(declare-fun vstd.raw_ptr.PtrData./PtrData/addr (vstd.raw_ptr.PtrData.) Int)
(declare-fun vstd.raw_ptr.PtrData./PtrData/provenance (vstd.raw_ptr.PtrData.) vstd.raw_ptr.Provenance.)
(declare-fun vstd.raw_ptr.PtrData./PtrData/metadata (vstd.raw_ptr.PtrData.) vstd.raw_ptr.Metadata.)
(declare-fun vstd.raw_ptr.MemContents./Init/0 (vstd.raw_ptr.MemContents.) Poly)
(declare-fun vstd.raw_ptr.PointsToData./PointsToData/ptr (vstd.raw_ptr.PointsToData.)
 Poly
)
(declare-fun vstd.raw_ptr.PointsToData./PointsToData/opt_value (vstd.raw_ptr.PointsToData.)
 vstd.raw_ptr.MemContents.
)
(declare-fun vstd.raw_ptr.DeallocData./DeallocData/addr (vstd.raw_ptr.DeallocData.)
 Int
)
(declare-fun vstd.raw_ptr.DeallocData./DeallocData/size (vstd.raw_ptr.DeallocData.)
 Int
)
(declare-fun vstd.raw_ptr.DeallocData./DeallocData/align (vstd.raw_ptr.DeallocData.)
 Int
)
(declare-fun vstd.raw_ptr.DeallocData./DeallocData/provenance (vstd.raw_ptr.DeallocData.)
 vstd.raw_ptr.Provenance.
)
(declare-fun tuple%1./tuple%1/0 (tuple%1.) Poly)
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-fun TYPE%fun%1. (Dcr Type Dcr Type) Type)
(declare-const TYPE%vstd.raw_ptr.Provenance. Type)
(declare-const TYPE%vstd.raw_ptr.Metadata. Type)
(declare-const TYPE%vstd.raw_ptr.DynMetadata. Type)
(declare-const TYPE%vstd.raw_ptr.PtrData. Type)
(declare-fun TYPE%vstd.raw_ptr.PointsTo. (Dcr Type) Type)
(declare-fun TYPE%vstd.raw_ptr.MemContents. (Dcr Type) Type)
(declare-fun TYPE%vstd.raw_ptr.PointsToData. (Dcr Type) Type)
(declare-const TYPE%vstd.raw_ptr.IsExposed. Type)
(declare-const TYPE%vstd.raw_ptr.PointsToRaw. Type)
(declare-const TYPE%vstd.raw_ptr.Dealloc. Type)
(declare-const TYPE%vstd.raw_ptr.DeallocData. Type)
(declare-fun TYPE%vstd.raw_ptr.SharedReference. (Dcr Type) Type)
(declare-fun TYPE%vstd.seq.Seq. (Dcr Type) Type)
(declare-fun TYPE%vstd.set.Set. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%1. (Dcr Type) Type)
(declare-fun TYPE%tuple%2. (Dcr Type Dcr Type) Type)
(declare-fun FNDEF%core!clone.Clone.clone. (Dcr Type) Type)
(declare-fun Poly%fun%1. (%%Function%%) Poly)
(declare-fun %Poly%fun%1. (Poly) %%Function%%)
(declare-fun Poly%array%. (%%Function%%) Poly)
(declare-fun %Poly%array%. (Poly) %%Function%%)
(declare-fun Poly%vstd.raw_ptr.Dealloc. (vstd.raw_ptr.Dealloc.) Poly)
(declare-fun %Poly%vstd.raw_ptr.Dealloc. (Poly) vstd.raw_ptr.Dealloc.)
(declare-fun Poly%vstd.raw_ptr.DynMetadata. (vstd.raw_ptr.DynMetadata.) Poly)
(declare-fun %Poly%vstd.raw_ptr.DynMetadata. (Poly) vstd.raw_ptr.DynMetadata.)
(declare-fun Poly%vstd.raw_ptr.IsExposed. (vstd.raw_ptr.IsExposed.) Poly)
(declare-fun %Poly%vstd.raw_ptr.IsExposed. (Poly) vstd.raw_ptr.IsExposed.)
(declare-fun Poly%vstd.raw_ptr.PointsToRaw. (vstd.raw_ptr.PointsToRaw.) Poly)
(declare-fun %Poly%vstd.raw_ptr.PointsToRaw. (Poly) vstd.raw_ptr.PointsToRaw.)
(declare-fun Poly%vstd.raw_ptr.Provenance. (vstd.raw_ptr.Provenance.) Poly)
(declare-fun %Poly%vstd.raw_ptr.Provenance. (Poly) vstd.raw_ptr.Provenance.)
(declare-fun Poly%vstd.set.Set<int.>. (vstd.set.Set<int.>.) Poly)
(declare-fun %Poly%vstd.set.Set<int.>. (Poly) vstd.set.Set<int.>.)
(declare-fun Poly%vstd.raw_ptr.Metadata. (vstd.raw_ptr.Metadata.) Poly)
(declare-fun %Poly%vstd.raw_ptr.Metadata. (Poly) vstd.raw_ptr.Metadata.)
(declare-fun Poly%vstd.raw_ptr.PtrData. (vstd.raw_ptr.PtrData.) Poly)
(declare-fun %Poly%vstd.raw_ptr.PtrData. (Poly) vstd.raw_ptr.PtrData.)
(declare-fun Poly%vstd.raw_ptr.MemContents. (vstd.raw_ptr.MemContents.) Poly)
(declare-fun %Poly%vstd.raw_ptr.MemContents. (Poly) vstd.raw_ptr.MemContents.)
(declare-fun Poly%vstd.raw_ptr.PointsToData. (vstd.raw_ptr.PointsToData.) Poly)
(declare-fun %Poly%vstd.raw_ptr.PointsToData. (Poly) vstd.raw_ptr.PointsToData.)
(declare-fun Poly%vstd.raw_ptr.DeallocData. (vstd.raw_ptr.DeallocData.) Poly)
(declare-fun %Poly%vstd.raw_ptr.DeallocData. (Poly) vstd.raw_ptr.DeallocData.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%1. (tuple%1.) Poly)
(declare-fun %Poly%tuple%1. (Poly) tuple%1.)
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
 (forall ((x %%Function%%)) (!
   (= x (%Poly%array%. (Poly%array%. x)))
   :pattern ((Poly%array%. x))
   :qid internal_crate__array___box_axiom_definition
   :skolemid skolem_internal_crate__array___box_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type) (x Poly)) (!
   (=>
    (has_type x (ARRAY T&. T& N&. N&))
    (= x (Poly%array%. (%Poly%array%. x)))
   )
   :pattern ((has_type x (ARRAY T&. T& N&. N&)))
   :qid internal_crate__array___unbox_axiom_definition
   :skolemid skolem_internal_crate__array___unbox_axiom_definition
)))
(assert
 (forall ((x vstd.raw_ptr.Dealloc.)) (!
   (= x (%Poly%vstd.raw_ptr.Dealloc. (Poly%vstd.raw_ptr.Dealloc. x)))
   :pattern ((Poly%vstd.raw_ptr.Dealloc. x))
   :qid internal_crate__vstd__raw_ptr__Dealloc_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__Dealloc_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.raw_ptr.Dealloc.)
    (= x (Poly%vstd.raw_ptr.Dealloc. (%Poly%vstd.raw_ptr.Dealloc. x)))
   )
   :pattern ((has_type x TYPE%vstd.raw_ptr.Dealloc.))
   :qid internal_crate__vstd__raw_ptr__Dealloc_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__Dealloc_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.raw_ptr.Dealloc.)) (!
   (has_type (Poly%vstd.raw_ptr.Dealloc. x) TYPE%vstd.raw_ptr.Dealloc.)
   :pattern ((has_type (Poly%vstd.raw_ptr.Dealloc. x) TYPE%vstd.raw_ptr.Dealloc.))
   :qid internal_crate__vstd__raw_ptr__Dealloc_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__Dealloc_has_type_always_definition
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
 (forall ((x vstd.raw_ptr.IsExposed.)) (!
   (= x (%Poly%vstd.raw_ptr.IsExposed. (Poly%vstd.raw_ptr.IsExposed. x)))
   :pattern ((Poly%vstd.raw_ptr.IsExposed. x))
   :qid internal_crate__vstd__raw_ptr__IsExposed_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__IsExposed_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.raw_ptr.IsExposed.)
    (= x (Poly%vstd.raw_ptr.IsExposed. (%Poly%vstd.raw_ptr.IsExposed. x)))
   )
   :pattern ((has_type x TYPE%vstd.raw_ptr.IsExposed.))
   :qid internal_crate__vstd__raw_ptr__IsExposed_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__IsExposed_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.raw_ptr.IsExposed.)) (!
   (has_type (Poly%vstd.raw_ptr.IsExposed. x) TYPE%vstd.raw_ptr.IsExposed.)
   :pattern ((has_type (Poly%vstd.raw_ptr.IsExposed. x) TYPE%vstd.raw_ptr.IsExposed.))
   :qid internal_crate__vstd__raw_ptr__IsExposed_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__IsExposed_has_type_always_definition
)))
(assert
 (forall ((x vstd.raw_ptr.PointsToRaw.)) (!
   (= x (%Poly%vstd.raw_ptr.PointsToRaw. (Poly%vstd.raw_ptr.PointsToRaw. x)))
   :pattern ((Poly%vstd.raw_ptr.PointsToRaw. x))
   :qid internal_crate__vstd__raw_ptr__PointsToRaw_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__PointsToRaw_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.raw_ptr.PointsToRaw.)
    (= x (Poly%vstd.raw_ptr.PointsToRaw. (%Poly%vstd.raw_ptr.PointsToRaw. x)))
   )
   :pattern ((has_type x TYPE%vstd.raw_ptr.PointsToRaw.))
   :qid internal_crate__vstd__raw_ptr__PointsToRaw_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__PointsToRaw_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.raw_ptr.PointsToRaw.)) (!
   (has_type (Poly%vstd.raw_ptr.PointsToRaw. x) TYPE%vstd.raw_ptr.PointsToRaw.)
   :pattern ((has_type (Poly%vstd.raw_ptr.PointsToRaw. x) TYPE%vstd.raw_ptr.PointsToRaw.))
   :qid internal_crate__vstd__raw_ptr__PointsToRaw_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__PointsToRaw_has_type_always_definition
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
 (forall ((x vstd.set.Set<int.>.)) (!
   (= x (%Poly%vstd.set.Set<int.>. (Poly%vstd.set.Set<int.>. x)))
   :pattern ((Poly%vstd.set.Set<int.>. x))
   :qid internal_crate__vstd__set__Set<int.>_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__set__Set<int.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.set.Set. $ INT))
    (= x (Poly%vstd.set.Set<int.>. (%Poly%vstd.set.Set<int.>. x)))
   )
   :pattern ((has_type x (TYPE%vstd.set.Set. $ INT)))
   :qid internal_crate__vstd__set__Set<int.>_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__set__Set<int.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.set.Set<int.>.)) (!
   (has_type (Poly%vstd.set.Set<int.>. x) (TYPE%vstd.set.Set. $ INT))
   :pattern ((has_type (Poly%vstd.set.Set<int.>. x) (TYPE%vstd.set.Set. $ INT)))
   :qid internal_crate__vstd__set__Set<int.>_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__set__Set<int.>_has_type_always_definition
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
 (forall ((x vstd.raw_ptr.MemContents.)) (!
   (= x (%Poly%vstd.raw_ptr.MemContents. (Poly%vstd.raw_ptr.MemContents. x)))
   :pattern ((Poly%vstd.raw_ptr.MemContents. x))
   :qid internal_crate__vstd__raw_ptr__MemContents_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__MemContents_box_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.raw_ptr.MemContents. T&. T&))
    (= x (Poly%vstd.raw_ptr.MemContents. (%Poly%vstd.raw_ptr.MemContents. x)))
   )
   :pattern ((has_type x (TYPE%vstd.raw_ptr.MemContents. T&. T&)))
   :qid internal_crate__vstd__raw_ptr__MemContents_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__MemContents_unbox_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (has_type (Poly%vstd.raw_ptr.MemContents. vstd.raw_ptr.MemContents./Uninit) (TYPE%vstd.raw_ptr.MemContents.
     T&. T&
   ))
   :pattern ((has_type (Poly%vstd.raw_ptr.MemContents. vstd.raw_ptr.MemContents./Uninit)
     (TYPE%vstd.raw_ptr.MemContents. T&. T&)
   ))
   :qid internal_vstd.raw_ptr.MemContents./Uninit_constructor_definition
   :skolemid skolem_internal_vstd.raw_ptr.MemContents./Uninit_constructor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (_0! Poly)) (!
   (=>
    (has_type _0! T&)
    (has_type (Poly%vstd.raw_ptr.MemContents. (vstd.raw_ptr.MemContents./Init _0!)) (TYPE%vstd.raw_ptr.MemContents.
      T&. T&
   )))
   :pattern ((has_type (Poly%vstd.raw_ptr.MemContents. (vstd.raw_ptr.MemContents./Init _0!))
     (TYPE%vstd.raw_ptr.MemContents. T&. T&)
   ))
   :qid internal_vstd.raw_ptr.MemContents./Init_constructor_definition
   :skolemid skolem_internal_vstd.raw_ptr.MemContents./Init_constructor_definition
)))
(assert
 (forall ((x vstd.raw_ptr.MemContents.)) (!
   (= (vstd.raw_ptr.MemContents./Init/0 x) (vstd.raw_ptr.MemContents./Init/?0 x))
   :pattern ((vstd.raw_ptr.MemContents./Init/0 x))
   :qid internal_vstd.raw_ptr.MemContents./Init/0_accessor_definition
   :skolemid skolem_internal_vstd.raw_ptr.MemContents./Init/0_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.raw_ptr.MemContents. T&. T&))
    (has_type (vstd.raw_ptr.MemContents./Init/0 (%Poly%vstd.raw_ptr.MemContents. x)) T&)
   )
   :pattern ((vstd.raw_ptr.MemContents./Init/0 (%Poly%vstd.raw_ptr.MemContents. x)) (
     has_type x (TYPE%vstd.raw_ptr.MemContents. T&. T&)
   ))
   :qid internal_vstd.raw_ptr.MemContents./Init/0_invariant_definition
   :skolemid skolem_internal_vstd.raw_ptr.MemContents./Init/0_invariant_definition
)))
(assert
 (forall ((x vstd.raw_ptr.MemContents.)) (!
   (=>
    (is-vstd.raw_ptr.MemContents./Init x)
    (height_lt (height (vstd.raw_ptr.MemContents./Init/0 x)) (height (Poly%vstd.raw_ptr.MemContents.
       x
   ))))
   :pattern ((height (vstd.raw_ptr.MemContents./Init/0 x)))
   :qid prelude_datatype_height_vstd.raw_ptr.MemContents./Init/0
   :skolemid skolem_prelude_datatype_height_vstd.raw_ptr.MemContents./Init/0
)))
(assert
 (forall ((x vstd.raw_ptr.PointsToData.)) (!
   (= x (%Poly%vstd.raw_ptr.PointsToData. (Poly%vstd.raw_ptr.PointsToData. x)))
   :pattern ((Poly%vstd.raw_ptr.PointsToData. x))
   :qid internal_crate__vstd__raw_ptr__PointsToData_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__PointsToData_box_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.raw_ptr.PointsToData. T&. T&))
    (= x (Poly%vstd.raw_ptr.PointsToData. (%Poly%vstd.raw_ptr.PointsToData. x)))
   )
   :pattern ((has_type x (TYPE%vstd.raw_ptr.PointsToData. T&. T&)))
   :qid internal_crate__vstd__raw_ptr__PointsToData_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__PointsToData_unbox_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (_ptr! Poly) (_opt_value! vstd.raw_ptr.MemContents.))
  (!
   (=>
    (and
     (has_type _ptr! (PTR T&. T&))
     (has_type (Poly%vstd.raw_ptr.MemContents. _opt_value!) (TYPE%vstd.raw_ptr.MemContents.
       T&. T&
    )))
    (has_type (Poly%vstd.raw_ptr.PointsToData. (vstd.raw_ptr.PointsToData./PointsToData
       _ptr! _opt_value!
      )
     ) (TYPE%vstd.raw_ptr.PointsToData. T&. T&)
   ))
   :pattern ((has_type (Poly%vstd.raw_ptr.PointsToData. (vstd.raw_ptr.PointsToData./PointsToData
       _ptr! _opt_value!
      )
     ) (TYPE%vstd.raw_ptr.PointsToData. T&. T&)
   ))
   :qid internal_vstd.raw_ptr.PointsToData./PointsToData_constructor_definition
   :skolemid skolem_internal_vstd.raw_ptr.PointsToData./PointsToData_constructor_definition
)))
(assert
 (forall ((x vstd.raw_ptr.PointsToData.)) (!
   (= (vstd.raw_ptr.PointsToData./PointsToData/ptr x) (vstd.raw_ptr.PointsToData./PointsToData/?ptr
     x
   ))
   :pattern ((vstd.raw_ptr.PointsToData./PointsToData/ptr x))
   :qid internal_vstd.raw_ptr.PointsToData./PointsToData/ptr_accessor_definition
   :skolemid skolem_internal_vstd.raw_ptr.PointsToData./PointsToData/ptr_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.raw_ptr.PointsToData. T&. T&))
    (has_type (vstd.raw_ptr.PointsToData./PointsToData/ptr (%Poly%vstd.raw_ptr.PointsToData.
       x
      )
     ) (PTR T&. T&)
   ))
   :pattern ((vstd.raw_ptr.PointsToData./PointsToData/ptr (%Poly%vstd.raw_ptr.PointsToData.
      x
     )
    ) (has_type x (TYPE%vstd.raw_ptr.PointsToData. T&. T&))
   )
   :qid internal_vstd.raw_ptr.PointsToData./PointsToData/ptr_invariant_definition
   :skolemid skolem_internal_vstd.raw_ptr.PointsToData./PointsToData/ptr_invariant_definition
)))
(assert
 (forall ((x vstd.raw_ptr.PointsToData.)) (!
   (= (vstd.raw_ptr.PointsToData./PointsToData/opt_value x) (vstd.raw_ptr.PointsToData./PointsToData/?opt_value
     x
   ))
   :pattern ((vstd.raw_ptr.PointsToData./PointsToData/opt_value x))
   :qid internal_vstd.raw_ptr.PointsToData./PointsToData/opt_value_accessor_definition
   :skolemid skolem_internal_vstd.raw_ptr.PointsToData./PointsToData/opt_value_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.raw_ptr.PointsToData. T&. T&))
    (has_type (Poly%vstd.raw_ptr.MemContents. (vstd.raw_ptr.PointsToData./PointsToData/opt_value
       (%Poly%vstd.raw_ptr.PointsToData. x)
      )
     ) (TYPE%vstd.raw_ptr.MemContents. T&. T&)
   ))
   :pattern ((vstd.raw_ptr.PointsToData./PointsToData/opt_value (%Poly%vstd.raw_ptr.PointsToData.
      x
     )
    ) (has_type x (TYPE%vstd.raw_ptr.PointsToData. T&. T&))
   )
   :qid internal_vstd.raw_ptr.PointsToData./PointsToData/opt_value_invariant_definition
   :skolemid skolem_internal_vstd.raw_ptr.PointsToData./PointsToData/opt_value_invariant_definition
)))
(assert
 (forall ((x vstd.raw_ptr.PointsToData.)) (!
   (=>
    (is-vstd.raw_ptr.PointsToData./PointsToData x)
    (height_lt (height (vstd.raw_ptr.PointsToData./PointsToData/ptr x)) (height (Poly%vstd.raw_ptr.PointsToData.
       x
   ))))
   :pattern ((height (vstd.raw_ptr.PointsToData./PointsToData/ptr x)))
   :qid prelude_datatype_height_vstd.raw_ptr.PointsToData./PointsToData/ptr
   :skolemid skolem_prelude_datatype_height_vstd.raw_ptr.PointsToData./PointsToData/ptr
)))
(assert
 (forall ((x vstd.raw_ptr.PointsToData.)) (!
   (=>
    (is-vstd.raw_ptr.PointsToData./PointsToData x)
    (height_lt (height (Poly%vstd.raw_ptr.MemContents. (vstd.raw_ptr.PointsToData./PointsToData/opt_value
        x
      ))
     ) (height (Poly%vstd.raw_ptr.PointsToData. x))
   ))
   :pattern ((height (Poly%vstd.raw_ptr.MemContents. (vstd.raw_ptr.PointsToData./PointsToData/opt_value
       x
   ))))
   :qid prelude_datatype_height_vstd.raw_ptr.PointsToData./PointsToData/opt_value
   :skolemid skolem_prelude_datatype_height_vstd.raw_ptr.PointsToData./PointsToData/opt_value
)))
(assert
 (forall ((x vstd.raw_ptr.DeallocData.)) (!
   (= x (%Poly%vstd.raw_ptr.DeallocData. (Poly%vstd.raw_ptr.DeallocData. x)))
   :pattern ((Poly%vstd.raw_ptr.DeallocData. x))
   :qid internal_crate__vstd__raw_ptr__DeallocData_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__DeallocData_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.raw_ptr.DeallocData.)
    (= x (Poly%vstd.raw_ptr.DeallocData. (%Poly%vstd.raw_ptr.DeallocData. x)))
   )
   :pattern ((has_type x TYPE%vstd.raw_ptr.DeallocData.))
   :qid internal_crate__vstd__raw_ptr__DeallocData_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__DeallocData_unbox_axiom_definition
)))
(assert
 (forall ((_addr! Int) (_size! Int) (_align! Int) (_provenance! vstd.raw_ptr.Provenance.))
  (!
   (=>
    (and
     (uInv SZ _addr!)
     (<= 0 _size!)
     (<= 0 _align!)
    )
    (has_type (Poly%vstd.raw_ptr.DeallocData. (vstd.raw_ptr.DeallocData./DeallocData _addr!
       _size! _align! _provenance!
      )
     ) TYPE%vstd.raw_ptr.DeallocData.
   ))
   :pattern ((has_type (Poly%vstd.raw_ptr.DeallocData. (vstd.raw_ptr.DeallocData./DeallocData
       _addr! _size! _align! _provenance!
      )
     ) TYPE%vstd.raw_ptr.DeallocData.
   ))
   :qid internal_vstd.raw_ptr.DeallocData./DeallocData_constructor_definition
   :skolemid skolem_internal_vstd.raw_ptr.DeallocData./DeallocData_constructor_definition
)))
(assert
 (forall ((x vstd.raw_ptr.DeallocData.)) (!
   (= (vstd.raw_ptr.DeallocData./DeallocData/addr x) (vstd.raw_ptr.DeallocData./DeallocData/?addr
     x
   ))
   :pattern ((vstd.raw_ptr.DeallocData./DeallocData/addr x))
   :qid internal_vstd.raw_ptr.DeallocData./DeallocData/addr_accessor_definition
   :skolemid skolem_internal_vstd.raw_ptr.DeallocData./DeallocData/addr_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.raw_ptr.DeallocData.)
    (uInv SZ (vstd.raw_ptr.DeallocData./DeallocData/addr (%Poly%vstd.raw_ptr.DeallocData.
       x
   ))))
   :pattern ((vstd.raw_ptr.DeallocData./DeallocData/addr (%Poly%vstd.raw_ptr.DeallocData.
      x
     )
    ) (has_type x TYPE%vstd.raw_ptr.DeallocData.)
   )
   :qid internal_vstd.raw_ptr.DeallocData./DeallocData/addr_invariant_definition
   :skolemid skolem_internal_vstd.raw_ptr.DeallocData./DeallocData/addr_invariant_definition
)))
(assert
 (forall ((x vstd.raw_ptr.DeallocData.)) (!
   (= (vstd.raw_ptr.DeallocData./DeallocData/size x) (vstd.raw_ptr.DeallocData./DeallocData/?size
     x
   ))
   :pattern ((vstd.raw_ptr.DeallocData./DeallocData/size x))
   :qid internal_vstd.raw_ptr.DeallocData./DeallocData/size_accessor_definition
   :skolemid skolem_internal_vstd.raw_ptr.DeallocData./DeallocData/size_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.raw_ptr.DeallocData.)
    (<= 0 (vstd.raw_ptr.DeallocData./DeallocData/size (%Poly%vstd.raw_ptr.DeallocData. x)))
   )
   :pattern ((vstd.raw_ptr.DeallocData./DeallocData/size (%Poly%vstd.raw_ptr.DeallocData.
      x
     )
    ) (has_type x TYPE%vstd.raw_ptr.DeallocData.)
   )
   :qid internal_vstd.raw_ptr.DeallocData./DeallocData/size_invariant_definition
   :skolemid skolem_internal_vstd.raw_ptr.DeallocData./DeallocData/size_invariant_definition
)))
(assert
 (forall ((x vstd.raw_ptr.DeallocData.)) (!
   (= (vstd.raw_ptr.DeallocData./DeallocData/align x) (vstd.raw_ptr.DeallocData./DeallocData/?align
     x
   ))
   :pattern ((vstd.raw_ptr.DeallocData./DeallocData/align x))
   :qid internal_vstd.raw_ptr.DeallocData./DeallocData/align_accessor_definition
   :skolemid skolem_internal_vstd.raw_ptr.DeallocData./DeallocData/align_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.raw_ptr.DeallocData.)
    (<= 0 (vstd.raw_ptr.DeallocData./DeallocData/align (%Poly%vstd.raw_ptr.DeallocData.
       x
   ))))
   :pattern ((vstd.raw_ptr.DeallocData./DeallocData/align (%Poly%vstd.raw_ptr.DeallocData.
      x
     )
    ) (has_type x TYPE%vstd.raw_ptr.DeallocData.)
   )
   :qid internal_vstd.raw_ptr.DeallocData./DeallocData/align_invariant_definition
   :skolemid skolem_internal_vstd.raw_ptr.DeallocData./DeallocData/align_invariant_definition
)))
(assert
 (forall ((x vstd.raw_ptr.DeallocData.)) (!
   (= (vstd.raw_ptr.DeallocData./DeallocData/provenance x) (vstd.raw_ptr.DeallocData./DeallocData/?provenance
     x
   ))
   :pattern ((vstd.raw_ptr.DeallocData./DeallocData/provenance x))
   :qid internal_vstd.raw_ptr.DeallocData./DeallocData/provenance_accessor_definition
   :skolemid skolem_internal_vstd.raw_ptr.DeallocData./DeallocData/provenance_accessor_definition
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
(declare-fun array_new (Dcr Type Int %%Function%%) Poly)
(declare-fun array_index (Dcr Type Dcr Type %%Function%% Poly) Poly)
(assert
 (forall ((Tdcr Dcr) (T Type) (N Int) (Fn %%Function%%)) (!
   (= (array_new Tdcr T N Fn) (Poly%array%. Fn))
   :pattern ((array_new Tdcr T N Fn))
   :qid prelude_array_new
   :skolemid skolem_prelude_array_new
)))
(declare-fun %%apply%%1 (%%Function%% Int) Poly)
(assert
 (forall ((Tdcr Dcr) (T Type) (N Int) (Fn %%Function%%)) (!
   (=>
    (forall ((i Int)) (!
      (=>
       (and
        (<= 0 i)
        (< i N)
       )
       (has_type (%%apply%%1 Fn i) T)
      )
      :pattern ((has_type (%%apply%%1 Fn i) T))
      :qid prelude_has_type_array_elts
      :skolemid skolem_prelude_has_type_array_elts
    ))
    (has_type (array_new Tdcr T N Fn) (ARRAY Tdcr T $ (CONST_INT N)))
   )
   :pattern ((array_new Tdcr T N Fn))
   :qid prelude_has_type_array_new
   :skolemid skolem_prelude_has_type_array_new
)))
(assert
 (forall ((Tdcr Dcr) (T Type) (Ndcr Dcr) (N Type) (Fn %%Function%%) (i Poly)) (!
   (=>
    (and
     (has_type (Poly%array%. Fn) (ARRAY Tdcr T Ndcr N))
     (has_type i INT)
    )
    (has_type (array_index Tdcr T $ N Fn i) T)
   )
   :pattern ((array_index Tdcr T $ N Fn i) (has_type (Poly%array%. Fn) (ARRAY Tdcr T Ndcr
      N
   )))
   :qid prelude_has_type_array_index
   :skolemid skolem_prelude_has_type_array_index
)))
(assert
 (forall ((Tdcr Dcr) (T Type) (N Int) (Fn %%Function%%) (i Int)) (!
   (= (array_index Tdcr T $ (CONST_INT N) Fn (I i)) (%%apply%%1 Fn i))
   :pattern ((array_new Tdcr T N Fn) (%%apply%%1 Fn i))
   :qid prelude_array_index_trigger
   :skolemid skolem_prelude_array_index_trigger
)))

;; Traits
(declare-fun tr_bound%vstd.view.View. (Dcr Type) Bool)
(declare-fun tr_bound%core!clone.Clone. (Dcr Type) Bool)
(declare-fun tr_bound%core!marker.Freeze. (Dcr Type) Bool)
(declare-fun tr_bound%core!fmt.Debug. (Dcr Type) Bool)
(declare-fun tr_bound%core!cmp.PartialEq. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%core!cmp.Eq. (Dcr Type) Bool)
(declare-fun tr_bound%core!cmp.PartialOrd. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%core!cmp.Ord. (Dcr Type) Bool)
(declare-fun tr_bound%core!hash.Hash. (Dcr Type) Bool)
(declare-fun tr_bound%core!ptr.metadata.Pointee. (Dcr Type) Bool)
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
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%core!marker.Freeze. Self%&. Self%&))
   :qid internal_core__marker__Freeze_trait_type_bounds_definition
   :skolemid skolem_internal_core__marker__Freeze_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%core!fmt.Debug. Self%&. Self%&))
   :qid internal_core__fmt__Debug_trait_type_bounds_definition
   :skolemid skolem_internal_core__fmt__Debug_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Rhs&. Dcr) (Rhs& Type)) (!
   true
   :pattern ((tr_bound%core!cmp.PartialEq. Self%&. Self%& Rhs&. Rhs&))
   :qid internal_core__cmp__PartialEq_trait_type_bounds_definition
   :skolemid skolem_internal_core__cmp__PartialEq_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   (=>
    (tr_bound%core!cmp.Eq. Self%&. Self%&)
    (tr_bound%core!cmp.PartialEq. Self%&. Self%& Self%&. Self%&)
   )
   :pattern ((tr_bound%core!cmp.Eq. Self%&. Self%&))
   :qid internal_core__cmp__Eq_trait_type_bounds_definition
   :skolemid skolem_internal_core__cmp__Eq_trait_type_bounds_definition
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
    (tr_bound%core!cmp.Ord. Self%&. Self%&)
    (and
     (tr_bound%core!cmp.Eq. Self%&. Self%&)
     (tr_bound%core!cmp.PartialOrd. Self%&. Self%& Self%&. Self%&)
   ))
   :pattern ((tr_bound%core!cmp.Ord. Self%&. Self%&))
   :qid internal_core__cmp__Ord_trait_type_bounds_definition
   :skolemid skolem_internal_core__cmp__Ord_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%core!hash.Hash. Self%&. Self%&))
   :qid internal_core__hash__Hash_trait_type_bounds_definition
   :skolemid skolem_internal_core__hash__Hash_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   (=>
    (tr_bound%core!ptr.metadata.Pointee. Self%&. Self%&)
    (and
     (tr_bound%core!marker.Freeze. (proj%%core!ptr.metadata.Pointee./Metadata Self%&. Self%&)
      (proj%core!ptr.metadata.Pointee./Metadata Self%&. Self%&)
     )
     (tr_bound%core!fmt.Debug. (proj%%core!ptr.metadata.Pointee./Metadata Self%&. Self%&)
      (proj%core!ptr.metadata.Pointee./Metadata Self%&. Self%&)
     )
     (tr_bound%core!hash.Hash. (proj%%core!ptr.metadata.Pointee./Metadata Self%&. Self%&)
      (proj%core!ptr.metadata.Pointee./Metadata Self%&. Self%&)
     )
     (tr_bound%core!cmp.Ord. (proj%%core!ptr.metadata.Pointee./Metadata Self%&. Self%&)
      (proj%core!ptr.metadata.Pointee./Metadata Self%&. Self%&)
     )
     (tr_bound%core!cmp.PartialOrd. (proj%%core!ptr.metadata.Pointee./Metadata Self%&. Self%&)
      (proj%core!ptr.metadata.Pointee./Metadata Self%&. Self%&) (proj%%core!ptr.metadata.Pointee./Metadata
       Self%&. Self%&
      ) (proj%core!ptr.metadata.Pointee./Metadata Self%&. Self%&)
     )
     (tr_bound%core!cmp.PartialEq. (proj%%core!ptr.metadata.Pointee./Metadata Self%&. Self%&)
      (proj%core!ptr.metadata.Pointee./Metadata Self%&. Self%&) (proj%%core!ptr.metadata.Pointee./Metadata
       Self%&. Self%&
      ) (proj%core!ptr.metadata.Pointee./Metadata Self%&. Self%&)
     )
     (tr_bound%core!cmp.Eq. (proj%%core!ptr.metadata.Pointee./Metadata Self%&. Self%&)
      (proj%core!ptr.metadata.Pointee./Metadata Self%&. Self%&)
     )
     (tr_bound%core!clone.Clone. (proj%%core!ptr.metadata.Pointee./Metadata Self%&. Self%&)
      (proj%core!ptr.metadata.Pointee./Metadata Self%&. Self%&)
   )))
   :pattern ((tr_bound%core!ptr.metadata.Pointee. Self%&. Self%&))
   :qid internal_core__ptr__metadata__Pointee_trait_type_bounds_definition
   :skolemid skolem_internal_core__ptr__metadata__Pointee_trait_type_bounds_definition
)))

;; Associated-Type-Impls
(assert
 (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type)) (!
   (= (proj%%vstd.view.View./V $ (ARRAY T&. T& N&. N&)) $)
   :pattern ((proj%%vstd.view.View./V $ (ARRAY T&. T& N&. N&)))
   :qid internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type)) (!
   (= (proj%vstd.view.View./V $ (ARRAY T&. T& N&. N&)) (TYPE%vstd.seq.Seq. T&. T&))
   :pattern ((proj%vstd.view.View./V $ (ARRAY T&. T& N&. N&)))
   :qid internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd.view.View./V_assoc_type_impl_false_definition
)))
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
   (= (proj%%vstd.view.View./V $ (TYPE%vstd.raw_ptr.PointsTo. T&. T&)) $)
   :pattern ((proj%%vstd.view.View./V $ (TYPE%vstd.raw_ptr.PointsTo. T&. T&)))
   :qid internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd.view.View./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (= (proj%vstd.view.View./V $ (TYPE%vstd.raw_ptr.PointsTo. T&. T&)) (TYPE%vstd.raw_ptr.PointsToData.
     T&. T&
   ))
   :pattern ((proj%vstd.view.View./V $ (TYPE%vstd.raw_ptr.PointsTo. T&. T&)))
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
 (= (proj%%vstd.view.View./V $ (UINT SZ)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (UINT SZ)) (UINT SZ))
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

;; Function-Decl crate::vstd::set::Set::contains
(declare-fun vstd.set.impl&%0.contains.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::set::Set::empty
(declare-fun vstd.set.impl&%0.empty.? (Dcr Type) Poly)

;; Function-Decl crate::vstd::set::Set::new
(declare-fun vstd.set.impl&%0.new.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::set::Set::union
(declare-fun vstd.set.impl&%0.union.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::set::Set::difference
(declare-fun vstd.set.impl&%0.difference.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::raw_ptr::ptr_mut_specs::spec_addr
(declare-fun vstd.raw_ptr.ptr_mut_specs.spec_addr.? (Dcr Type Poly) Int)

;; Function-Decl crate::vstd::raw_ptr::ptr_mut_from_data
(declare-fun vstd.raw_ptr.ptr_mut_from_data.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::raw_ptr::ptr_const_specs::spec_addr
(declare-fun vstd.raw_ptr.ptr_const_specs.spec_addr.? (Dcr Type Poly) Int)

;; Function-Decl crate::vstd::raw_ptr::ptr_from_data
(declare-fun vstd.raw_ptr.ptr_from_data.? (Dcr Type Poly) Poly)

;; Function-Decl vstd::seq::Seq::new
(declare-fun vstd!seq.Seq.new.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::array::array_view
(declare-fun vstd.array.array_view.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::layout::is_sized
(declare-fun vstd.layout.is_sized.? (Dcr Type) Bool)

;; Function-Decl crate::vstd::layout::size_of
(declare-fun vstd.layout.size_of.? (Dcr Type) Int)

;; Function-Decl crate::vstd::layout::align_of
(declare-fun vstd.layout.align_of.? (Dcr Type) Int)

;; Function-Decl crate::vstd::set::Set::subset_of
(declare-fun vstd.set.impl&%0.subset_of.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::raw_ptr::Provenance::null
(declare-fun vstd.raw_ptr.impl&%0.null.? (Poly) vstd.raw_ptr.Provenance.)

;; Function-Decl crate::vstd::raw_ptr::PointsTo::ptr
(declare-fun vstd.raw_ptr.impl&%6.ptr.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::raw_ptr::MemContents::is_uninit
(declare-fun vstd.raw_ptr.impl&%7.is_uninit.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::raw_ptr::PointsTo::opt_value
(declare-fun vstd.raw_ptr.impl&%6.opt_value.? (Dcr Type Poly) vstd.raw_ptr.MemContents.)

;; Function-Decl crate::vstd::raw_ptr::PointsTo::is_uninit
(declare-fun vstd.raw_ptr.impl&%6.is_uninit.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::raw_ptr::spec_cast_ptr_to_usize
(declare-fun vstd.raw_ptr.spec_cast_ptr_to_usize.? (Dcr Type Poly) Int)

;; Function-Decl crate::vstd::raw_ptr::view_reverse_for_eq
(declare-fun vstd.raw_ptr.view_reverse_for_eq.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::raw_ptr::ptr_null
(declare-fun vstd.raw_ptr.ptr_null.? (Dcr Type) Poly)

;; Function-Decl crate::vstd::raw_ptr::ptr_null_mut
(declare-fun vstd.raw_ptr.ptr_null_mut.? (Dcr Type) Poly)

;; Function-Decl crate::vstd::raw_ptr::spec_cast_ptr_to_thin_ptr
(declare-fun vstd.raw_ptr.spec_cast_ptr_to_thin_ptr.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::raw_ptr::spec_cast_array_ptr_to_slice_ptr
(declare-fun vstd.raw_ptr.spec_cast_array_ptr_to_slice_ptr.? (Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::raw_ptr::MemContents::is_init
(declare-fun vstd.raw_ptr.impl&%7.is_init.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::raw_ptr::PointsTo::is_init
(declare-fun vstd.raw_ptr.impl&%6.is_init.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::raw_ptr::MemContents::arrow_0
(declare-fun vstd.raw_ptr.impl&%2.arrow_0.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::raw_ptr::MemContents::value
(declare-fun vstd.raw_ptr.impl&%7.value.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::raw_ptr::PointsTo::value
(declare-fun vstd.raw_ptr.impl&%6.value.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::raw_ptr::IsExposed::provenance
(declare-fun vstd.raw_ptr.impl&%10.provenance.? (Poly) vstd.raw_ptr.Provenance.)

;; Function-Decl crate::vstd::raw_ptr::IsExposed::view
(declare-fun vstd.raw_ptr.impl&%10.view.? (Poly) vstd.raw_ptr.Provenance.)

;; Function-Decl crate::vstd::raw_ptr::PointsToRaw::provenance
(declare-fun vstd.raw_ptr.impl&%11.provenance.? (Poly) vstd.raw_ptr.Provenance.)

;; Function-Decl crate::vstd::raw_ptr::PointsToRaw::dom
(declare-fun vstd.raw_ptr.impl&%11.dom.? (Poly) vstd.set.Set<int.>.)

;; Function-Decl crate::vstd::set::Set::spec_add
(declare-fun vstd.set.impl&%0.spec_add.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::set_lib::set_int_range
(declare-fun vstd.set_lib.set_int_range.? (Poly Poly) vstd.set.Set<int.>.)

;; Function-Decl crate::vstd::raw_ptr::PointsToRaw::is_range
(declare-fun vstd.raw_ptr.impl&%11.is_range.? (Poly Poly Poly) Bool)

;; Function-Decl crate::vstd::raw_ptr::Dealloc::view
(declare-fun vstd.raw_ptr.impl&%13.view.? (Poly) vstd.raw_ptr.DeallocData.)

;; Function-Decl crate::vstd::raw_ptr::SharedReference::value
(declare-fun vstd.raw_ptr.impl&%16.value.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::raw_ptr::SharedReference::ptr
(declare-fun vstd.raw_ptr.impl&%16.ptr.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::raw_ptr::Metadata::arrow_Length_0
(declare-fun vstd.raw_ptr.impl&%1.arrow_Length_0.? (Poly) Int)

;; Function-Decl crate::vstd::raw_ptr::Metadata::arrow_Dyn_0
(declare-fun vstd.raw_ptr.impl&%1.arrow_Dyn_0.? (Poly) vstd.raw_ptr.DynMetadata.)

;; Function-Decl crate::vstd::raw_ptr::MemContents::arrow_Init_0
(declare-fun vstd.raw_ptr.impl&%2.arrow_Init_0.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::set::Set::spec_le
(declare-fun vstd.set.impl&%0.spec_le.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::raw_ptr::PointsToRaw::contains_range
(declare-fun vstd.raw_ptr.impl&%11.contains_range.? (Poly Poly Poly) Bool)

;; Function-Decl crate::vstd::raw_ptr::Dealloc::addr
(declare-fun vstd.raw_ptr.impl&%13.addr.? (Poly) Int)

;; Function-Decl crate::vstd::raw_ptr::Dealloc::size
(declare-fun vstd.raw_ptr.impl&%13.size.? (Poly) Int)

;; Function-Decl crate::vstd::raw_ptr::Dealloc::align
(declare-fun vstd.raw_ptr.impl&%13.align.? (Poly) Int)

;; Function-Decl crate::vstd::raw_ptr::Dealloc::provenance
(declare-fun vstd.raw_ptr.impl&%13.provenance.? (Poly) vstd.raw_ptr.Provenance.)

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

;; Function-Specs core::clone::Clone::clone
(declare-fun ens%core!clone.Clone.clone. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (%return! Poly)) (!
   (= (ens%core!clone.Clone.clone. Self%&. Self%& self! %return!) (has_type %return! Self%&))
   :pattern ((ens%core!clone.Clone.clone. Self%&. Self%& self! %return!))
   :qid internal_ens__core!clone.Clone.clone._definition
   :skolemid skolem_internal_ens__core!clone.Clone.clone._definition
)))
(assert
 (forall ((tmp%%$ Poly) (Self%&. Dcr) (Self%& Type)) (!
   (=>
    (has_type tmp%%$ (TYPE%tuple%1. (REF Self%&.) Self%&))
    (=>
     (let
      ((self$ (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$))))
      true
     )
     (closure_req (FNDEF%core!clone.Clone.clone. Self%&. Self%&) $ (TYPE%tuple%1. (REF Self%&.)
       Self%&
      ) (F fndef_singleton) tmp%%$
   )))
   :pattern ((closure_req (FNDEF%core!clone.Clone.clone. Self%&. Self%&) $ (TYPE%tuple%1.
      (REF Self%&.) Self%&
     ) (F fndef_singleton) tmp%%$
   ))
   :qid user_core__clone__Clone__clone_0
   :skolemid skolem_user_core__clone__Clone__clone_0
)))

;; Function-Axioms crate::vstd::set::Set::empty
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (has_type (vstd.set.impl&%0.empty.? A&. A&) (TYPE%vstd.set.Set. A&. A&))
   :pattern ((vstd.set.impl&%0.empty.? A&. A&))
   :qid internal_vstd.set.impl&__0.empty.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.empty.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::set::Set::new
(assert
 (forall ((A&. Dcr) (A& Type) (F&. Dcr) (F& Type) (f! Poly)) (!
   (=>
    (has_type f! F&)
    (has_type (vstd.set.impl&%0.new.? A&. A& F&. F& f!) (TYPE%vstd.set.Set. A&. A&))
   )
   :pattern ((vstd.set.impl&%0.new.? A&. A& F&. F& f!))
   :qid internal_vstd.set.impl&__0.new.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.new.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::set::Set::union
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type s2! (TYPE%vstd.set.Set. A&. A&))
    )
    (has_type (vstd.set.impl&%0.union.? A&. A& self! s2!) (TYPE%vstd.set.Set. A&. A&))
   )
   :pattern ((vstd.set.impl&%0.union.? A&. A& self! s2!))
   :qid internal_vstd.set.impl&__0.union.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.union.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::set::Set::difference
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type s2! (TYPE%vstd.set.Set. A&. A&))
    )
    (has_type (vstd.set.impl&%0.difference.? A&. A& self! s2!) (TYPE%vstd.set.Set. A&.
      A&
   )))
   :pattern ((vstd.set.impl&%0.difference.? A&. A& self! s2!))
   :qid internal_vstd.set.impl&__0.difference.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.difference.?_pre_post_definition
)))

;; Function-Specs core::clone::impls::impl&%5::clone
(declare-fun ens%core!clone.impls.impl&%5.clone. (Poly Poly) Bool)
(assert
 (forall ((x! Poly) (res! Poly)) (!
   (= (ens%core!clone.impls.impl&%5.clone. x! res!) (and
     (ens%core!clone.Clone.clone. $ (UINT SZ) x! res!)
     (= res! x!)
   ))
   :pattern ((ens%core!clone.impls.impl&%5.clone. x! res!))
   :qid internal_ens__core!clone.impls.impl&__5.clone._definition
   :skolemid skolem_internal_ens__core!clone.impls.impl&__5.clone._definition
)))
(assert
 (forall ((tmp%%$ Poly) (res$ Poly)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%1. (REF $) (UINT SZ)))
     (has_type res$ (UINT SZ))
    )
    (=>
     (closure_ens (FNDEF%core!clone.Clone.clone. $ (UINT SZ)) $ (TYPE%tuple%1. (REF $) (
        UINT SZ
       )
      ) (F fndef_singleton) tmp%%$ res$
     )
     (let
      ((x$ (%I (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$)))))
      (= (%I res$) x$)
   )))
   :pattern ((closure_ens (FNDEF%core!clone.Clone.clone. $ (UINT SZ)) $ (TYPE%tuple%1.
      (REF $) (UINT SZ)
     ) (F fndef_singleton) tmp%%$ res$
   ))
   :qid user_core__clone__impls__impl&%5__clone_1
   :skolemid skolem_user_core__clone__impls__impl&%5__clone_1
)))

;; Function-Specs core::clone::impls::impl&%21::clone
(declare-fun ens%core!clone.impls.impl&%21.clone. (Poly Poly) Bool)
(assert
 (forall ((b! Poly) (res! Poly)) (!
   (= (ens%core!clone.impls.impl&%21.clone. b! res!) (and
     (ens%core!clone.Clone.clone. $ BOOL b! res!)
     (= res! b!)
   ))
   :pattern ((ens%core!clone.impls.impl&%21.clone. b! res!))
   :qid internal_ens__core!clone.impls.impl&__21.clone._definition
   :skolemid skolem_internal_ens__core!clone.impls.impl&__21.clone._definition
)))
(assert
 (forall ((tmp%%$ Poly) (res$ Poly)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%1. (REF $) BOOL))
     (has_type res$ BOOL)
    )
    (=>
     (closure_ens (FNDEF%core!clone.Clone.clone. $ BOOL) $ (TYPE%tuple%1. (REF $) BOOL)
      (F fndef_singleton) tmp%%$ res$
     )
     (let
      ((b$ (%B (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$)))))
      (= (%B res$) b$)
   )))
   :pattern ((closure_ens (FNDEF%core!clone.Clone.clone. $ BOOL) $ (TYPE%tuple%1. (REF $)
      BOOL
     ) (F fndef_singleton) tmp%%$ res$
   ))
   :qid user_core__clone__impls__impl&%21__clone_2
   :skolemid skolem_user_core__clone__impls__impl&%21__clone_2
)))

;; Function-Specs core::clone::impls::impl&%3::clone
(declare-fun ens%core!clone.impls.impl&%3.clone. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (b! Poly) (res! Poly)) (!
   (= (ens%core!clone.impls.impl&%3.clone. T&. T& b! res!) (and
     (ens%core!clone.Clone.clone. (REF T&.) T& b! res!)
     (= res! b!)
   ))
   :pattern ((ens%core!clone.impls.impl&%3.clone. T&. T& b! res!))
   :qid internal_ens__core!clone.impls.impl&__3.clone._definition
   :skolemid skolem_internal_ens__core!clone.impls.impl&__3.clone._definition
)))
(assert
 (forall ((tmp%%$ Poly) (res$ Poly) (T&. Dcr) (T& Type)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%1. (REF (REF T&.)) T&))
     (has_type res$ T&)
    )
    (=>
     (closure_ens (FNDEF%core!clone.Clone.clone. (REF T&.) T&) $ (TYPE%tuple%1. (REF (REF
         T&.
        )
       ) T&
      ) (F fndef_singleton) tmp%%$ res$
     )
     (let
      ((b$ (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$))))
      (= res$ b$)
   )))
   :pattern ((closure_ens (FNDEF%core!clone.Clone.clone. (REF T&.) T&) $ (TYPE%tuple%1.
      (REF (REF T&.)) T&
     ) (F fndef_singleton) tmp%%$ res$
   ))
   :qid user_core__clone__impls__impl&%3__clone_3
   :skolemid skolem_user_core__clone__impls__impl&%3__clone_3
)))

;; Function-Specs crate::builtin::Tracked::clone
(declare-fun ens%builtin.impl&%4.clone. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (b! Poly) (res! Poly)) (!
   (= (ens%builtin.impl&%4.clone. T&. T& b! res!) (and
     (ens%core!clone.Clone.clone. (TRACKED T&.) T& b! res!)
     (= res! b!)
   ))
   :pattern ((ens%builtin.impl&%4.clone. T&. T& b! res!))
   :qid internal_ens__builtin.impl&__4.clone._definition
   :skolemid skolem_internal_ens__builtin.impl&__4.clone._definition
)))
(assert
 (forall ((tmp%%$ Poly) (res$ Poly) (T&. Dcr) (T& Type)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%1. (REF (TRACKED T&.)) T&))
     (has_type res$ T&)
    )
    (=>
     (closure_ens (FNDEF%core!clone.Clone.clone. (TRACKED T&.) T&) $ (TYPE%tuple%1. (REF
        (TRACKED T&.)
       ) T&
      ) (F fndef_singleton) tmp%%$ res$
     )
     (let
      ((b$ (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$))))
      (= res$ b$)
   )))
   :pattern ((closure_ens (FNDEF%core!clone.Clone.clone. (TRACKED T&.) T&) $ (TYPE%tuple%1.
      (REF (TRACKED T&.)) T&
     ) (F fndef_singleton) tmp%%$ res$
   ))
   :qid user_crate__builtin__Tracked__clone_4
   :skolemid skolem_user_crate__builtin__Tracked__clone_4
)))

;; Function-Specs crate::builtin::Ghost::clone
(declare-fun ens%builtin.impl&%2.clone. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (b! Poly) (res! Poly)) (!
   (= (ens%builtin.impl&%2.clone. T&. T& b! res!) (and
     (ens%core!clone.Clone.clone. (GHOST T&.) T& b! res!)
     (= res! b!)
   ))
   :pattern ((ens%builtin.impl&%2.clone. T&. T& b! res!))
   :qid internal_ens__builtin.impl&__2.clone._definition
   :skolemid skolem_internal_ens__builtin.impl&__2.clone._definition
)))
(assert
 (forall ((tmp%%$ Poly) (res$ Poly) (T&. Dcr) (T& Type)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%1. (REF (GHOST T&.)) T&))
     (has_type res$ T&)
    )
    (=>
     (closure_ens (FNDEF%core!clone.Clone.clone. (GHOST T&.) T&) $ (TYPE%tuple%1. (REF (GHOST
         T&.
        )
       ) T&
      ) (F fndef_singleton) tmp%%$ res$
     )
     (let
      ((b$ (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$))))
      (= res$ b$)
   )))
   :pattern ((closure_ens (FNDEF%core!clone.Clone.clone. (GHOST T&.) T&) $ (TYPE%tuple%1.
      (REF (GHOST T&.)) T&
     ) (F fndef_singleton) tmp%%$ res$
   ))
   :qid user_crate__builtin__Ghost__clone_5
   :skolemid skolem_user_crate__builtin__Ghost__clone_5
)))

;; Function-Axioms crate::vstd::raw_ptr::ptr_mut_specs::spec_addr
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.ptr_mut_specs.spec_addr.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.ptr_mut_specs.spec_addr.)
  (forall ((T&. Dcr) (T& Type) (p! Poly)) (!
    (= (vstd.raw_ptr.ptr_mut_specs.spec_addr.? T&. T& p!) (vstd.raw_ptr.PtrData./PtrData/addr
      (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.? $ (PTR T&. T&) p!))
    ))
    :pattern ((vstd.raw_ptr.ptr_mut_specs.spec_addr.? T&. T& p!))
    :qid internal_vstd.raw_ptr.ptr_mut_specs.spec_addr.?_definition
    :skolemid skolem_internal_vstd.raw_ptr.ptr_mut_specs.spec_addr.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (p! Poly)) (!
   (=>
    (has_type p! (PTR T&. T&))
    (uInv SZ (vstd.raw_ptr.ptr_mut_specs.spec_addr.? T&. T& p!))
   )
   :pattern ((vstd.raw_ptr.ptr_mut_specs.spec_addr.? T&. T& p!))
   :qid internal_vstd.raw_ptr.ptr_mut_specs.spec_addr.?_pre_post_definition
   :skolemid skolem_internal_vstd.raw_ptr.ptr_mut_specs.spec_addr.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::raw_ptr::ptr_mut_from_data
(assert
 (forall ((T&. Dcr) (T& Type) (data! Poly)) (!
   (=>
    (has_type data! TYPE%vstd.raw_ptr.PtrData.)
    (has_type (vstd.raw_ptr.ptr_mut_from_data.? T&. T& data!) (PTR T&. T&))
   )
   :pattern ((vstd.raw_ptr.ptr_mut_from_data.? T&. T& data!))
   :qid internal_vstd.raw_ptr.ptr_mut_from_data.?_pre_post_definition
   :skolemid skolem_internal_vstd.raw_ptr.ptr_mut_from_data.?_pre_post_definition
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

;; Function-Axioms crate::vstd::raw_ptr::ptr_const_specs::spec_addr
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.ptr_const_specs.spec_addr.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.ptr_const_specs.spec_addr.)
  (forall ((T&. Dcr) (T& Type) (p! Poly)) (!
    (= (vstd.raw_ptr.ptr_const_specs.spec_addr.? T&. T& p!) (vstd.raw_ptr.PtrData./PtrData/addr
      (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.? $ (PTR T&. T&) p!))
    ))
    :pattern ((vstd.raw_ptr.ptr_const_specs.spec_addr.? T&. T& p!))
    :qid internal_vstd.raw_ptr.ptr_const_specs.spec_addr.?_definition
    :skolemid skolem_internal_vstd.raw_ptr.ptr_const_specs.spec_addr.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (p! Poly)) (!
   (=>
    (has_type p! (PTR T&. T&))
    (uInv SZ (vstd.raw_ptr.ptr_const_specs.spec_addr.? T&. T& p!))
   )
   :pattern ((vstd.raw_ptr.ptr_const_specs.spec_addr.? T&. T& p!))
   :qid internal_vstd.raw_ptr.ptr_const_specs.spec_addr.?_pre_post_definition
   :skolemid skolem_internal_vstd.raw_ptr.ptr_const_specs.spec_addr.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::raw_ptr::ptr_from_data
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.ptr_from_data.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.ptr_from_data.)
  (forall ((T&. Dcr) (T& Type) (data! Poly)) (!
    (= (vstd.raw_ptr.ptr_from_data.? T&. T& data!) (vstd.raw_ptr.ptr_mut_from_data.? T&.
      T& data!
    ))
    :pattern ((vstd.raw_ptr.ptr_from_data.? T&. T& data!))
    :qid internal_vstd.raw_ptr.ptr_from_data.?_definition
    :skolemid skolem_internal_vstd.raw_ptr.ptr_from_data.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (data! Poly)) (!
   (=>
    (has_type data! TYPE%vstd.raw_ptr.PtrData.)
    (has_type (vstd.raw_ptr.ptr_from_data.? T&. T& data!) (PTR T&. T&))
   )
   :pattern ((vstd.raw_ptr.ptr_from_data.? T&. T& data!))
   :qid internal_vstd.raw_ptr.ptr_from_data.?_pre_post_definition
   :skolemid skolem_internal_vstd.raw_ptr.ptr_from_data.?_pre_post_definition
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

;; Function-Axioms crate::vstd::array::array_view
(assert
 (fuel_bool_default fuel%vstd.array.array_view.)
)
(declare-fun %%lambda%%0 (Dcr Type Dcr Type %%Function%%) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Dcr) (%%hole%%3 Type) (%%hole%%4
    %%Function%%
   ) (i$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4) i$)
    (array_index %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 i$)
   )
   :pattern ((%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4)
     i$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.array.array_view.)
  (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type) (a! Poly)) (!
    (= (vstd.array.array_view.? T&. T& N&. N& a!) (vstd!seq.Seq.new.? T&. T& $ (TYPE%fun%1.
       $ INT T&. T&
      ) (I (const_int N&)) (Poly%fun%1. (mk_fun (%%lambda%%0 T&. T& N&. N& (%Poly%array%. a!))))
    ))
    :pattern ((vstd.array.array_view.? T&. T& N&. N& a!))
    :qid internal_vstd.array.array_view.?_definition
    :skolemid skolem_internal_vstd.array.array_view.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type) (a! Poly)) (!
   (=>
    (has_type a! (ARRAY T&. T& N&. N&))
    (has_type (vstd.array.array_view.? T&. T& N&. N& a!) (TYPE%vstd.seq.Seq. T&. T&))
   )
   :pattern ((vstd.array.array_view.? T&. T& N&. N& a!))
   :qid internal_vstd.array.array_view.?_pre_post_definition
   :skolemid skolem_internal_vstd.array.array_view.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::array::impl&%0::view
(assert
 (fuel_bool_default fuel%vstd.array.impl&%0.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.array.impl&%0.view.)
  (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type) (self! Poly)) (!
    (=>
     (uInv SZ (const_int N&))
     (= (vstd.view.View.view.? $ (ARRAY T&. T& N&. N&) self!) (vstd.array.array_view.? T&.
       T& N&. N& self!
    )))
    :pattern ((vstd.view.View.view.? $ (ARRAY T&. T& N&. N&) self!))
    :qid internal_vstd.view.View.view.?_definition
    :skolemid skolem_internal_vstd.view.View.view.?_definition
))))

;; Function-Axioms crate::vstd::layout::size_of
(assert
 (forall ((V&. Dcr) (V& Type)) (!
   (<= 0 (vstd.layout.size_of.? V&. V&))
   :pattern ((vstd.layout.size_of.? V&. V&))
   :qid internal_vstd.layout.size_of.?_pre_post_definition
   :skolemid skolem_internal_vstd.layout.size_of.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::layout::align_of
(assert
 (forall ((V&. Dcr) (V& Type)) (!
   (<= 0 (vstd.layout.align_of.? V&. V&))
   :pattern ((vstd.layout.align_of.? V&. V&))
   :qid internal_vstd.layout.align_of.?_pre_post_definition
   :skolemid skolem_internal_vstd.layout.align_of.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::set::Set::subset_of
(assert
 (fuel_bool_default fuel%vstd.set.impl&%0.subset_of.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.set.impl&%0.subset_of.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
    (= (vstd.set.impl&%0.subset_of.? A&. A& self! s2!) (forall ((a$ Poly)) (!
       (=>
        (has_type a$ A&)
        (=>
         (vstd.set.impl&%0.contains.? A&. A& self! a$)
         (vstd.set.impl&%0.contains.? A&. A& s2! a$)
       ))
       :pattern ((vstd.set.impl&%0.contains.? A&. A& self! a$))
       :pattern ((vstd.set.impl&%0.contains.? A&. A& s2! a$))
       :qid user_crate__vstd__set__Set__subset_of_6
       :skolemid skolem_user_crate__vstd__set__Set__subset_of_6
    )))
    :pattern ((vstd.set.impl&%0.subset_of.? A&. A& self! s2!))
    :qid internal_vstd.set.impl&__0.subset_of.?_definition
    :skolemid skolem_internal_vstd.set.impl&__0.subset_of.?_definition
))))

;; Function-Specs crate::vstd::raw_ptr::PointsTo::is_nonnull
(declare-fun req%vstd.raw_ptr.impl&%6.is_nonnull. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
   (= (req%vstd.raw_ptr.impl&%6.is_nonnull. T&. T& self!) (=>
     %%global_location_label%%0
     (not (= (vstd.layout.size_of.? T&. T&) 0))
   ))
   :pattern ((req%vstd.raw_ptr.impl&%6.is_nonnull. T&. T& self!))
   :qid internal_req__vstd.raw_ptr.impl&__6.is_nonnull._definition
   :skolemid skolem_internal_req__vstd.raw_ptr.impl&__6.is_nonnull._definition
)))
(declare-fun ens%vstd.raw_ptr.impl&%6.is_nonnull. (Dcr Type Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
   (= (ens%vstd.raw_ptr.impl&%6.is_nonnull. T&. T& self!) (not (= (vstd.raw_ptr.PtrData./PtrData/addr
       (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.? $ (PTR T&. T&) (vstd.raw_ptr.PointsToData./PointsToData/ptr
          (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.? $ (TYPE%vstd.raw_ptr.PointsTo.
             T&. T&
            ) self!
       )))))
      ) 0
   )))
   :pattern ((ens%vstd.raw_ptr.impl&%6.is_nonnull. T&. T& self!))
   :qid internal_ens__vstd.raw_ptr.impl&__6.is_nonnull._definition
   :skolemid skolem_internal_ens__vstd.raw_ptr.impl&__6.is_nonnull._definition
)))

;; Function-Axioms crate::vstd::raw_ptr::PointsTo::ptr
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.impl&%6.ptr.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.impl&%6.ptr.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.raw_ptr.impl&%6.ptr.? T&. T& self!) (vstd.raw_ptr.PointsToData./PointsToData/ptr
      (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.? $ (TYPE%vstd.raw_ptr.PointsTo.
         T&. T&
        ) self!
    ))))
    :pattern ((vstd.raw_ptr.impl&%6.ptr.? T&. T& self!))
    :qid internal_vstd.raw_ptr.impl&__6.ptr.?_definition
    :skolemid skolem_internal_vstd.raw_ptr.impl&__6.ptr.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.raw_ptr.PointsTo. T&. T&))
    (has_type (vstd.raw_ptr.impl&%6.ptr.? T&. T& self!) (PTR T&. T&))
   )
   :pattern ((vstd.raw_ptr.impl&%6.ptr.? T&. T& self!))
   :qid internal_vstd.raw_ptr.impl&__6.ptr.?_pre_post_definition
   :skolemid skolem_internal_vstd.raw_ptr.impl&__6.ptr.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::raw_ptr::MemContents::is_uninit
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.impl&%7.is_uninit.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.impl&%7.is_uninit.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.raw_ptr.impl&%7.is_uninit.? T&. T& self!) (is-vstd.raw_ptr.MemContents./Uninit
      (%Poly%vstd.raw_ptr.MemContents. self!)
    ))
    :pattern ((vstd.raw_ptr.impl&%7.is_uninit.? T&. T& self!))
    :qid internal_vstd.raw_ptr.impl&__7.is_uninit.?_definition
    :skolemid skolem_internal_vstd.raw_ptr.impl&__7.is_uninit.?_definition
))))

;; Function-Axioms crate::vstd::raw_ptr::PointsTo::opt_value
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.impl&%6.opt_value.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.impl&%6.opt_value.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.raw_ptr.impl&%6.opt_value.? T&. T& self!) (vstd.raw_ptr.PointsToData./PointsToData/opt_value
      (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.? $ (TYPE%vstd.raw_ptr.PointsTo.
         T&. T&
        ) self!
    ))))
    :pattern ((vstd.raw_ptr.impl&%6.opt_value.? T&. T& self!))
    :qid internal_vstd.raw_ptr.impl&__6.opt_value.?_definition
    :skolemid skolem_internal_vstd.raw_ptr.impl&__6.opt_value.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.raw_ptr.PointsTo. T&. T&))
    (has_type (Poly%vstd.raw_ptr.MemContents. (vstd.raw_ptr.impl&%6.opt_value.? T&. T& self!))
     (TYPE%vstd.raw_ptr.MemContents. T&. T&)
   ))
   :pattern ((vstd.raw_ptr.impl&%6.opt_value.? T&. T& self!))
   :qid internal_vstd.raw_ptr.impl&__6.opt_value.?_pre_post_definition
   :skolemid skolem_internal_vstd.raw_ptr.impl&__6.opt_value.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::raw_ptr::PointsTo::is_uninit
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.impl&%6.is_uninit.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.impl&%6.is_uninit.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.raw_ptr.impl&%6.is_uninit.? T&. T& self!) (is-vstd.raw_ptr.MemContents./Uninit
      (vstd.raw_ptr.PointsToData./PointsToData/opt_value (%Poly%vstd.raw_ptr.PointsToData.
        (vstd.view.View.view.? $ (TYPE%vstd.raw_ptr.PointsTo. T&. T&) self!)
    ))))
    :pattern ((vstd.raw_ptr.impl&%6.is_uninit.? T&. T& self!))
    :qid internal_vstd.raw_ptr.impl&__6.is_uninit.?_definition
    :skolemid skolem_internal_vstd.raw_ptr.impl&__6.is_uninit.?_definition
))))

;; Function-Specs crate::vstd::raw_ptr::PointsTo::leak_contents
(declare-fun ens%vstd.raw_ptr.impl&%6.leak_contents. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (pre%self! Poly) (self! Poly)) (!
   (= (ens%vstd.raw_ptr.impl&%6.leak_contents. T&. T& pre%self! self!) (and
     (has_type self! (TYPE%vstd.raw_ptr.PointsTo. T&. T&))
     (= (vstd.raw_ptr.PointsToData./PointsToData/ptr (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.?
         $ (TYPE%vstd.raw_ptr.PointsTo. T&. T&) self!
       ))
      ) (vstd.raw_ptr.PointsToData./PointsToData/ptr (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.?
         $ (TYPE%vstd.raw_ptr.PointsTo. T&. T&) pre%self!
     ))))
     (is-vstd.raw_ptr.MemContents./Uninit (vstd.raw_ptr.PointsToData./PointsToData/opt_value
       (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.? $ (TYPE%vstd.raw_ptr.PointsTo.
          T&. T&
         ) self!
   ))))))
   :pattern ((ens%vstd.raw_ptr.impl&%6.leak_contents. T&. T& pre%self! self!))
   :qid internal_ens__vstd.raw_ptr.impl&__6.leak_contents._definition
   :skolemid skolem_internal_ens__vstd.raw_ptr.impl&__6.leak_contents._definition
)))

;; Function-Axioms crate::vstd::raw_ptr::spec_cast_ptr_to_usize
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.spec_cast_ptr_to_usize.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.spec_cast_ptr_to_usize.)
  (forall ((T&. Dcr) (T& Type) (ptr! Poly)) (!
    (= (vstd.raw_ptr.spec_cast_ptr_to_usize.? T&. T& ptr!) (vstd.raw_ptr.PtrData./PtrData/addr
      (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.? $ (PTR T&. T&) ptr!))
    ))
    :pattern ((vstd.raw_ptr.spec_cast_ptr_to_usize.? T&. T& ptr!))
    :qid internal_vstd.raw_ptr.spec_cast_ptr_to_usize.?_definition
    :skolemid skolem_internal_vstd.raw_ptr.spec_cast_ptr_to_usize.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (ptr! Poly)) (!
   (=>
    (has_type ptr! (PTR T&. T&))
    (uInv SZ (vstd.raw_ptr.spec_cast_ptr_to_usize.? T&. T& ptr!))
   )
   :pattern ((vstd.raw_ptr.spec_cast_ptr_to_usize.? T&. T& ptr!))
   :qid internal_vstd.raw_ptr.spec_cast_ptr_to_usize.?_pre_post_definition
   :skolemid skolem_internal_vstd.raw_ptr.spec_cast_ptr_to_usize.?_pre_post_definition
)))

;; Function-Specs crate::vstd::raw_ptr::PointsTo::is_disjoint
(declare-fun ens%vstd.raw_ptr.impl&%6.is_disjoint. (Dcr Type Dcr Type Poly Poly Poly)
 Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (S&. Dcr) (S& Type) (pre%self! Poly) (self! Poly) (other!
    Poly
   )
  ) (!
   (= (ens%vstd.raw_ptr.impl&%6.is_disjoint. T&. T& S&. S& pre%self! self! other!) (and
     (has_type self! (TYPE%vstd.raw_ptr.PointsTo. T&. T&))
     (= pre%self! self!)
     (or
      (<= (Add (vstd.raw_ptr.spec_cast_ptr_to_usize.? T&. T& (vstd.raw_ptr.PointsToData./PointsToData/ptr
          (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.? $ (TYPE%vstd.raw_ptr.PointsTo.
             T&. T&
            ) self!
         )))
        ) (vstd.layout.size_of.? T&. T&)
       ) (vstd.raw_ptr.spec_cast_ptr_to_usize.? S&. S& (vstd.raw_ptr.PointsToData./PointsToData/ptr
         (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.? $ (TYPE%vstd.raw_ptr.PointsTo.
            S&. S&
           ) other!
      )))))
      (<= (Add (vstd.raw_ptr.spec_cast_ptr_to_usize.? S&. S& (vstd.raw_ptr.PointsToData./PointsToData/ptr
          (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.? $ (TYPE%vstd.raw_ptr.PointsTo.
             S&. S&
            ) other!
         )))
        ) (vstd.layout.size_of.? S&. S&)
       ) (vstd.raw_ptr.spec_cast_ptr_to_usize.? T&. T& (vstd.raw_ptr.PointsToData./PointsToData/ptr
         (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.? $ (TYPE%vstd.raw_ptr.PointsTo.
            T&. T&
           ) self!
   ))))))))
   :pattern ((ens%vstd.raw_ptr.impl&%6.is_disjoint. T&. T& S&. S& pre%self! self! other!))
   :qid internal_ens__vstd.raw_ptr.impl&__6.is_disjoint._definition
   :skolemid skolem_internal_ens__vstd.raw_ptr.impl&__6.is_disjoint._definition
)))

;; Broadcast crate::vstd::raw_ptr::axiom_ptr_mut_from_data
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.axiom_ptr_mut_from_data.)
  (forall ((T&. Dcr) (T& Type) (data! Poly)) (!
    (=>
     (has_type data! TYPE%vstd.raw_ptr.PtrData.)
     (= (vstd.view.View.view.? $ (PTR T&. T&) (vstd.raw_ptr.ptr_mut_from_data.? T&. T& data!))
      data!
    ))
    :pattern ((vstd.raw_ptr.ptr_mut_from_data.? T&. T& data!))
    :qid user_crate__vstd__raw_ptr__axiom_ptr_mut_from_data_7
    :skolemid skolem_user_crate__vstd__raw_ptr__axiom_ptr_mut_from_data_7
))))

;; Function-Axioms crate::vstd::raw_ptr::view_reverse_for_eq
(assert
 (forall ((T&. Dcr) (T& Type) (data! Poly)) (!
   (=>
    (has_type data! TYPE%vstd.raw_ptr.PtrData.)
    (has_type (vstd.raw_ptr.view_reverse_for_eq.? T&. T& data!) (PTR T&. T&))
   )
   :pattern ((vstd.raw_ptr.view_reverse_for_eq.? T&. T& data!))
   :qid internal_vstd.raw_ptr.view_reverse_for_eq.?_pre_post_definition
   :skolemid skolem_internal_vstd.raw_ptr.view_reverse_for_eq.?_pre_post_definition
)))

;; Broadcast crate::vstd::raw_ptr::ptrs_mut_eq
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.ptrs_mut_eq.)
  (forall ((T&. Dcr) (T& Type) (a! Poly)) (!
    (=>
     (has_type a! (PTR T&. T&))
     (= (vstd.raw_ptr.view_reverse_for_eq.? T&. T& (vstd.view.View.view.? $ (PTR T&. T&)
        a!
       )
      ) a!
    ))
    :pattern ((vstd.view.View.view.? $ (PTR T&. T&) a!))
    :qid user_crate__vstd__raw_ptr__ptrs_mut_eq_8
    :skolemid skolem_user_crate__vstd__raw_ptr__ptrs_mut_eq_8
))))

;; Function-Axioms crate::vstd::raw_ptr::ptr_null
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.ptr_null.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.ptr_null.)
  (forall ((T&. Dcr) (T& Type)) (!
    (= (vstd.raw_ptr.ptr_null.? T&. T&) (vstd.raw_ptr.ptr_mut_from_data.? T&. T& (Poly%vstd.raw_ptr.PtrData.
       (vstd.raw_ptr.PtrData./PtrData (%I (I 0)) (%Poly%vstd.raw_ptr.Provenance. (Poly%vstd.raw_ptr.Provenance.
          (vstd.raw_ptr.impl&%0.null.? (I 0))
         )
        ) (%Poly%vstd.raw_ptr.Metadata. (Poly%vstd.raw_ptr.Metadata. vstd.raw_ptr.Metadata./Thin))
    ))))
    :pattern ((vstd.raw_ptr.ptr_null.? T&. T&))
    :qid internal_vstd.raw_ptr.ptr_null.?_definition
    :skolemid skolem_internal_vstd.raw_ptr.ptr_null.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (has_type (vstd.raw_ptr.ptr_null.? T&. T&) (PTR T&. T&))
   :pattern ((vstd.raw_ptr.ptr_null.? T&. T&))
   :qid internal_vstd.raw_ptr.ptr_null.?_pre_post_definition
   :skolemid skolem_internal_vstd.raw_ptr.ptr_null.?_pre_post_definition
)))

;; Function-Specs core::ptr::null
(declare-fun ens%core!ptr.null. (Dcr Type Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (res! Poly)) (!
   (= (ens%core!ptr.null. T&. T& res!) (and
     (has_type res! (PTR T&. T&))
     (= res! (vstd.raw_ptr.ptr_mut_from_data.? T&. T& (Poly%vstd.raw_ptr.PtrData. (vstd.raw_ptr.PtrData./PtrData
         (%I (I 0)) (%Poly%vstd.raw_ptr.Provenance. (Poly%vstd.raw_ptr.Provenance. (vstd.raw_ptr.impl&%0.null.?
            (I 0)
          ))
         ) (%Poly%vstd.raw_ptr.Metadata. (Poly%vstd.raw_ptr.Metadata. vstd.raw_ptr.Metadata./Thin))
   ))))))
   :pattern ((ens%core!ptr.null. T&. T& res!))
   :qid internal_ens__core!ptr.null._definition
   :skolemid skolem_internal_ens__core!ptr.null._definition
)))

;; Function-Axioms crate::vstd::raw_ptr::ptr_null_mut
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.ptr_null_mut.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.ptr_null_mut.)
  (forall ((T&. Dcr) (T& Type)) (!
    (= (vstd.raw_ptr.ptr_null_mut.? T&. T&) (vstd.raw_ptr.ptr_mut_from_data.? T&. T& (Poly%vstd.raw_ptr.PtrData.
       (vstd.raw_ptr.PtrData./PtrData (%I (I 0)) (%Poly%vstd.raw_ptr.Provenance. (Poly%vstd.raw_ptr.Provenance.
          (vstd.raw_ptr.impl&%0.null.? (I 0))
         )
        ) (%Poly%vstd.raw_ptr.Metadata. (Poly%vstd.raw_ptr.Metadata. vstd.raw_ptr.Metadata./Thin))
    ))))
    :pattern ((vstd.raw_ptr.ptr_null_mut.? T&. T&))
    :qid internal_vstd.raw_ptr.ptr_null_mut.?_definition
    :skolemid skolem_internal_vstd.raw_ptr.ptr_null_mut.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (has_type (vstd.raw_ptr.ptr_null_mut.? T&. T&) (PTR T&. T&))
   :pattern ((vstd.raw_ptr.ptr_null_mut.? T&. T&))
   :qid internal_vstd.raw_ptr.ptr_null_mut.?_pre_post_definition
   :skolemid skolem_internal_vstd.raw_ptr.ptr_null_mut.?_pre_post_definition
)))

;; Function-Specs core::ptr::null_mut
(declare-fun ens%core!ptr.null_mut. (Dcr Type Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (res! Poly)) (!
   (= (ens%core!ptr.null_mut. T&. T& res!) (and
     (has_type res! (PTR T&. T&))
     (= res! (vstd.raw_ptr.ptr_mut_from_data.? T&. T& (Poly%vstd.raw_ptr.PtrData. (vstd.raw_ptr.PtrData./PtrData
         (%I (I 0)) (%Poly%vstd.raw_ptr.Provenance. (Poly%vstd.raw_ptr.Provenance. (vstd.raw_ptr.impl&%0.null.?
            (I 0)
          ))
         ) (%Poly%vstd.raw_ptr.Metadata. (Poly%vstd.raw_ptr.Metadata. vstd.raw_ptr.Metadata./Thin))
   ))))))
   :pattern ((ens%core!ptr.null_mut. T&. T& res!))
   :qid internal_ens__core!ptr.null_mut._definition
   :skolemid skolem_internal_ens__core!ptr.null_mut._definition
)))

;; Function-Axioms crate::vstd::raw_ptr::spec_cast_ptr_to_thin_ptr
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.spec_cast_ptr_to_thin_ptr.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.spec_cast_ptr_to_thin_ptr.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (ptr! Poly)) (!
    (= (vstd.raw_ptr.spec_cast_ptr_to_thin_ptr.? T&. T& U&. U& ptr!) (vstd.raw_ptr.ptr_mut_from_data.?
      U&. U& (Poly%vstd.raw_ptr.PtrData. (vstd.raw_ptr.PtrData./PtrData (%I (I (vstd.raw_ptr.PtrData./PtrData/addr
           (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.? $ (PTR T&. T&) ptr!))
         ))
        ) (%Poly%vstd.raw_ptr.Provenance. (Poly%vstd.raw_ptr.Provenance. (vstd.raw_ptr.PtrData./PtrData/provenance
           (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.? $ (PTR T&. T&) ptr!))
         ))
        ) (%Poly%vstd.raw_ptr.Metadata. (Poly%vstd.raw_ptr.Metadata. vstd.raw_ptr.Metadata./Thin))
    ))))
    :pattern ((vstd.raw_ptr.spec_cast_ptr_to_thin_ptr.? T&. T& U&. U& ptr!))
    :qid internal_vstd.raw_ptr.spec_cast_ptr_to_thin_ptr.?_definition
    :skolemid skolem_internal_vstd.raw_ptr.spec_cast_ptr_to_thin_ptr.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (ptr! Poly)) (!
   (=>
    (has_type ptr! (PTR T&. T&))
    (has_type (vstd.raw_ptr.spec_cast_ptr_to_thin_ptr.? T&. T& U&. U& ptr!) (PTR U&. U&))
   )
   :pattern ((vstd.raw_ptr.spec_cast_ptr_to_thin_ptr.? T&. T& U&. U& ptr!))
   :qid internal_vstd.raw_ptr.spec_cast_ptr_to_thin_ptr.?_pre_post_definition
   :skolemid skolem_internal_vstd.raw_ptr.spec_cast_ptr_to_thin_ptr.?_pre_post_definition
)))

;; Function-Specs vstd::raw_ptr::cast_ptr_to_thin_ptr
(declare-fun ens%vstd!raw_ptr.cast_ptr_to_thin_ptr. (Dcr Type Dcr Type Poly Poly)
 Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (ptr! Poly) (result! Poly)) (!
   (= (ens%vstd!raw_ptr.cast_ptr_to_thin_ptr. T&. T& U&. U& ptr! result!) (and
     (has_type result! (PTR U&. U&))
     (= result! (vstd.raw_ptr.spec_cast_ptr_to_thin_ptr.? T&. T& U&. U& ptr!))
   ))
   :pattern ((ens%vstd!raw_ptr.cast_ptr_to_thin_ptr. T&. T& U&. U& ptr! result!))
   :qid internal_ens__vstd!raw_ptr.cast_ptr_to_thin_ptr._definition
   :skolemid skolem_internal_ens__vstd!raw_ptr.cast_ptr_to_thin_ptr._definition
)))

;; Function-Axioms crate::vstd::raw_ptr::spec_cast_array_ptr_to_slice_ptr
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.spec_cast_array_ptr_to_slice_ptr.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.spec_cast_array_ptr_to_slice_ptr.)
  (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type) (ptr! Poly)) (!
    (= (vstd.raw_ptr.spec_cast_array_ptr_to_slice_ptr.? T&. T& N&. N& ptr!) (vstd.raw_ptr.ptr_mut_from_data.?
      $ (SLICE T&. T&) (Poly%vstd.raw_ptr.PtrData. (vstd.raw_ptr.PtrData./PtrData (%I (I (vstd.raw_ptr.PtrData./PtrData/addr
           (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.? $ (PTR $ (ARRAY T&. T& N&. N&))
             ptr!
         ))))
        ) (%Poly%vstd.raw_ptr.Provenance. (Poly%vstd.raw_ptr.Provenance. (vstd.raw_ptr.PtrData./PtrData/provenance
           (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.? $ (PTR $ (ARRAY T&. T& N&. N&))
             ptr!
         ))))
        ) (%Poly%vstd.raw_ptr.Metadata. (Poly%vstd.raw_ptr.Metadata. (vstd.raw_ptr.Metadata./Length
           (%I (I (const_int N&)))
    )))))))
    :pattern ((vstd.raw_ptr.spec_cast_array_ptr_to_slice_ptr.? T&. T& N&. N& ptr!))
    :qid internal_vstd.raw_ptr.spec_cast_array_ptr_to_slice_ptr.?_definition
    :skolemid skolem_internal_vstd.raw_ptr.spec_cast_array_ptr_to_slice_ptr.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type) (ptr! Poly)) (!
   (=>
    (has_type ptr! (PTR $ (ARRAY T&. T& N&. N&)))
    (has_type (vstd.raw_ptr.spec_cast_array_ptr_to_slice_ptr.? T&. T& N&. N& ptr!) (PTR
      $ (SLICE T&. T&)
   )))
   :pattern ((vstd.raw_ptr.spec_cast_array_ptr_to_slice_ptr.? T&. T& N&. N& ptr!))
   :qid internal_vstd.raw_ptr.spec_cast_array_ptr_to_slice_ptr.?_pre_post_definition
   :skolemid skolem_internal_vstd.raw_ptr.spec_cast_array_ptr_to_slice_ptr.?_pre_post_definition
)))

;; Function-Specs vstd::raw_ptr::cast_array_ptr_to_slice_ptr
(declare-fun ens%vstd!raw_ptr.cast_array_ptr_to_slice_ptr. (Dcr Type Dcr Type Poly
  Poly
 ) Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type) (ptr! Poly) (result! Poly)) (!
   (= (ens%vstd!raw_ptr.cast_array_ptr_to_slice_ptr. T&. T& N&. N& ptr! result!) (and
     (has_type result! (PTR $ (SLICE T&. T&)))
     (= result! (vstd.raw_ptr.spec_cast_array_ptr_to_slice_ptr.? T&. T& N&. N& ptr!))
   ))
   :pattern ((ens%vstd!raw_ptr.cast_array_ptr_to_slice_ptr. T&. T& N&. N& ptr! result!))
   :qid internal_ens__vstd!raw_ptr.cast_array_ptr_to_slice_ptr._definition
   :skolemid skolem_internal_ens__vstd!raw_ptr.cast_array_ptr_to_slice_ptr._definition
)))

;; Function-Specs vstd::raw_ptr::cast_ptr_to_usize
(declare-fun ens%vstd!raw_ptr.cast_ptr_to_usize. (Dcr Type Poly Int) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (ptr! Poly) (result! Int)) (!
   (= (ens%vstd!raw_ptr.cast_ptr_to_usize. T&. T& ptr! result!) (and
     (uInv SZ result!)
     (= result! (vstd.raw_ptr.spec_cast_ptr_to_usize.? T&. T& ptr!))
   ))
   :pattern ((ens%vstd!raw_ptr.cast_ptr_to_usize. T&. T& ptr! result!))
   :qid internal_ens__vstd!raw_ptr.cast_ptr_to_usize._definition
   :skolemid skolem_internal_ens__vstd!raw_ptr.cast_ptr_to_usize._definition
)))

;; Function-Specs crate::vstd::raw_ptr::ptr_mut_write
(declare-fun req%vstd.raw_ptr.ptr_mut_write. (Dcr Type Poly Poly Poly) Bool)
(declare-const %%global_location_label%%1 Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (ptr! Poly) (pre%perm! Poly) (v! Poly)) (!
   (= (req%vstd.raw_ptr.ptr_mut_write. T&. T& ptr! pre%perm! v!) (and
     (=>
      %%global_location_label%%1
      (= (vstd.raw_ptr.PointsToData./PointsToData/ptr (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.?
          $ (TYPE%vstd.raw_ptr.PointsTo. T&. T&) pre%perm!
        ))
       ) ptr!
     ))
     (=>
      %%global_location_label%%2
      (is-vstd.raw_ptr.MemContents./Uninit (vstd.raw_ptr.PointsToData./PointsToData/opt_value
        (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.? $ (TYPE%vstd.raw_ptr.PointsTo.
           T&. T&
          ) pre%perm!
   )))))))
   :pattern ((req%vstd.raw_ptr.ptr_mut_write. T&. T& ptr! pre%perm! v!))
   :qid internal_req__vstd.raw_ptr.ptr_mut_write._definition
   :skolemid skolem_internal_req__vstd.raw_ptr.ptr_mut_write._definition
)))
(declare-fun ens%vstd.raw_ptr.ptr_mut_write. (Dcr Type Poly Poly Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (ptr! Poly) (pre%perm! Poly) (perm! Poly) (v! Poly))
  (!
   (= (ens%vstd.raw_ptr.ptr_mut_write. T&. T& ptr! pre%perm! perm! v!) (and
     (has_type perm! (TYPE%vstd.raw_ptr.PointsTo. T&. T&))
     (= (vstd.raw_ptr.PointsToData./PointsToData/ptr (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.?
         $ (TYPE%vstd.raw_ptr.PointsTo. T&. T&) perm!
       ))
      ) ptr!
     )
     (= (vstd.raw_ptr.PointsToData./PointsToData/opt_value (%Poly%vstd.raw_ptr.PointsToData.
        (vstd.view.View.view.? $ (TYPE%vstd.raw_ptr.PointsTo. T&. T&) perm!)
       )
      ) (vstd.raw_ptr.MemContents./Init v!)
   )))
   :pattern ((ens%vstd.raw_ptr.ptr_mut_write. T&. T& ptr! pre%perm! perm! v!))
   :qid internal_ens__vstd.raw_ptr.ptr_mut_write._definition
   :skolemid skolem_internal_ens__vstd.raw_ptr.ptr_mut_write._definition
)))

;; Function-Axioms crate::vstd::raw_ptr::MemContents::is_init
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.impl&%7.is_init.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.impl&%7.is_init.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.raw_ptr.impl&%7.is_init.? T&. T& self!) (is-vstd.raw_ptr.MemContents./Init
      (%Poly%vstd.raw_ptr.MemContents. self!)
    ))
    :pattern ((vstd.raw_ptr.impl&%7.is_init.? T&. T& self!))
    :qid internal_vstd.raw_ptr.impl&__7.is_init.?_definition
    :skolemid skolem_internal_vstd.raw_ptr.impl&__7.is_init.?_definition
))))

;; Function-Axioms crate::vstd::raw_ptr::PointsTo::is_init
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.impl&%6.is_init.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.impl&%6.is_init.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.raw_ptr.impl&%6.is_init.? T&. T& self!) (is-vstd.raw_ptr.MemContents./Init
      (vstd.raw_ptr.PointsToData./PointsToData/opt_value (%Poly%vstd.raw_ptr.PointsToData.
        (vstd.view.View.view.? $ (TYPE%vstd.raw_ptr.PointsTo. T&. T&) self!)
    ))))
    :pattern ((vstd.raw_ptr.impl&%6.is_init.? T&. T& self!))
    :qid internal_vstd.raw_ptr.impl&__6.is_init.?_definition
    :skolemid skolem_internal_vstd.raw_ptr.impl&__6.is_init.?_definition
))))

;; Function-Axioms crate::vstd::raw_ptr::MemContents::arrow_0
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.impl&%2.arrow_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.impl&%2.arrow_0.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.raw_ptr.impl&%2.arrow_0.? T&. T& self!) (vstd.raw_ptr.MemContents./Init/0
      (%Poly%vstd.raw_ptr.MemContents. self!)
    ))
    :pattern ((vstd.raw_ptr.impl&%2.arrow_0.? T&. T& self!))
    :qid internal_vstd.raw_ptr.impl&__2.arrow_0.?_definition
    :skolemid skolem_internal_vstd.raw_ptr.impl&__2.arrow_0.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.raw_ptr.MemContents. T&. T&))
    (has_type (vstd.raw_ptr.impl&%2.arrow_0.? T&. T& self!) T&)
   )
   :pattern ((vstd.raw_ptr.impl&%2.arrow_0.? T&. T& self!))
   :qid internal_vstd.raw_ptr.impl&__2.arrow_0.?_pre_post_definition
   :skolemid skolem_internal_vstd.raw_ptr.impl&__2.arrow_0.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::raw_ptr::MemContents::value
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.impl&%7.value.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.impl&%7.value.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.raw_ptr.impl&%7.value.? T&. T& self!) (vstd.raw_ptr.MemContents./Init/0 (%Poly%vstd.raw_ptr.MemContents.
       self!
    )))
    :pattern ((vstd.raw_ptr.impl&%7.value.? T&. T& self!))
    :qid internal_vstd.raw_ptr.impl&__7.value.?_definition
    :skolemid skolem_internal_vstd.raw_ptr.impl&__7.value.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.raw_ptr.MemContents. T&. T&))
    (has_type (vstd.raw_ptr.impl&%7.value.? T&. T& self!) T&)
   )
   :pattern ((vstd.raw_ptr.impl&%7.value.? T&. T& self!))
   :qid internal_vstd.raw_ptr.impl&__7.value.?_pre_post_definition
   :skolemid skolem_internal_vstd.raw_ptr.impl&__7.value.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::raw_ptr::PointsTo::value
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.impl&%6.value.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.impl&%6.value.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.raw_ptr.impl&%6.value.? T&. T& self!) (vstd.raw_ptr.MemContents./Init/0 (%Poly%vstd.raw_ptr.MemContents.
       (Poly%vstd.raw_ptr.MemContents. (vstd.raw_ptr.PointsToData./PointsToData/opt_value
         (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.? $ (TYPE%vstd.raw_ptr.PointsTo.
            T&. T&
           ) self!
    )))))))
    :pattern ((vstd.raw_ptr.impl&%6.value.? T&. T& self!))
    :qid internal_vstd.raw_ptr.impl&__6.value.?_definition
    :skolemid skolem_internal_vstd.raw_ptr.impl&__6.value.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.raw_ptr.PointsTo. T&. T&))
    (has_type (vstd.raw_ptr.impl&%6.value.? T&. T& self!) T&)
   )
   :pattern ((vstd.raw_ptr.impl&%6.value.? T&. T& self!))
   :qid internal_vstd.raw_ptr.impl&__6.value.?_pre_post_definition
   :skolemid skolem_internal_vstd.raw_ptr.impl&__6.value.?_pre_post_definition
)))

;; Function-Specs crate::vstd::raw_ptr::ptr_mut_read
(declare-fun req%vstd.raw_ptr.ptr_mut_read. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%3 Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (ptr! Poly) (pre%perm! Poly)) (!
   (= (req%vstd.raw_ptr.ptr_mut_read. T&. T& ptr! pre%perm!) (and
     (=>
      %%global_location_label%%3
      (= (vstd.raw_ptr.PointsToData./PointsToData/ptr (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.?
          $ (TYPE%vstd.raw_ptr.PointsTo. T&. T&) pre%perm!
        ))
       ) ptr!
     ))
     (=>
      %%global_location_label%%4
      (is-vstd.raw_ptr.MemContents./Init (vstd.raw_ptr.PointsToData./PointsToData/opt_value
        (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.? $ (TYPE%vstd.raw_ptr.PointsTo.
           T&. T&
          ) pre%perm!
   )))))))
   :pattern ((req%vstd.raw_ptr.ptr_mut_read. T&. T& ptr! pre%perm!))
   :qid internal_req__vstd.raw_ptr.ptr_mut_read._definition
   :skolemid skolem_internal_req__vstd.raw_ptr.ptr_mut_read._definition
)))
(declare-fun ens%vstd.raw_ptr.ptr_mut_read. (Dcr Type Poly Poly Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (ptr! Poly) (pre%perm! Poly) (perm! Poly) (v! Poly))
  (!
   (= (ens%vstd.raw_ptr.ptr_mut_read. T&. T& ptr! pre%perm! perm! v!) (and
     (has_type v! T&)
     (has_type perm! (TYPE%vstd.raw_ptr.PointsTo. T&. T&))
     (= (vstd.raw_ptr.PointsToData./PointsToData/ptr (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.?
         $ (TYPE%vstd.raw_ptr.PointsTo. T&. T&) perm!
       ))
      ) ptr!
     )
     (is-vstd.raw_ptr.MemContents./Uninit (vstd.raw_ptr.PointsToData./PointsToData/opt_value
       (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.? $ (TYPE%vstd.raw_ptr.PointsTo.
          T&. T&
         ) perm!
     ))))
     (= v! (vstd.raw_ptr.MemContents./Init/0 (%Poly%vstd.raw_ptr.MemContents. (Poly%vstd.raw_ptr.MemContents.
         (vstd.raw_ptr.PointsToData./PointsToData/opt_value (%Poly%vstd.raw_ptr.PointsToData.
           (vstd.view.View.view.? $ (TYPE%vstd.raw_ptr.PointsTo. T&. T&) pre%perm!)
   ))))))))
   :pattern ((ens%vstd.raw_ptr.ptr_mut_read. T&. T& ptr! pre%perm! perm! v!))
   :qid internal_ens__vstd.raw_ptr.ptr_mut_read._definition
   :skolemid skolem_internal_ens__vstd.raw_ptr.ptr_mut_read._definition
)))

;; Function-Specs crate::vstd::raw_ptr::ptr_ref
(declare-fun req%vstd.raw_ptr.ptr_ref. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%5 Bool)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (ptr! Poly) (perm! Poly)) (!
   (= (req%vstd.raw_ptr.ptr_ref. T&. T& ptr! perm!) (and
     (=>
      %%global_location_label%%5
      (= (vstd.raw_ptr.PointsToData./PointsToData/ptr (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.?
          $ (TYPE%vstd.raw_ptr.PointsTo. T&. T&) perm!
        ))
       ) ptr!
     ))
     (=>
      %%global_location_label%%6
      (is-vstd.raw_ptr.MemContents./Init (vstd.raw_ptr.PointsToData./PointsToData/opt_value
        (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.? $ (TYPE%vstd.raw_ptr.PointsTo.
           T&. T&
          ) perm!
   )))))))
   :pattern ((req%vstd.raw_ptr.ptr_ref. T&. T& ptr! perm!))
   :qid internal_req__vstd.raw_ptr.ptr_ref._definition
   :skolemid skolem_internal_req__vstd.raw_ptr.ptr_ref._definition
)))
(declare-fun ens%vstd.raw_ptr.ptr_ref. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (ptr! Poly) (perm! Poly) (v! Poly)) (!
   (= (ens%vstd.raw_ptr.ptr_ref. T&. T& ptr! perm! v!) (and
     (has_type v! T&)
     (= v! (vstd.raw_ptr.MemContents./Init/0 (%Poly%vstd.raw_ptr.MemContents. (Poly%vstd.raw_ptr.MemContents.
         (vstd.raw_ptr.PointsToData./PointsToData/opt_value (%Poly%vstd.raw_ptr.PointsToData.
           (vstd.view.View.view.? $ (TYPE%vstd.raw_ptr.PointsTo. T&. T&) perm!)
   ))))))))
   :pattern ((ens%vstd.raw_ptr.ptr_ref. T&. T& ptr! perm! v!))
   :qid internal_ens__vstd.raw_ptr.ptr_ref._definition
   :skolemid skolem_internal_ens__vstd.raw_ptr.ptr_ref._definition
)))

;; Function-Specs crate::vstd::raw_ptr::IsExposed::clone
(declare-fun ens%vstd.raw_ptr.impl&%8.clone. (Poly Poly) Bool)
(assert
 (forall ((self! Poly) (s! Poly)) (!
   (= (ens%vstd.raw_ptr.impl&%8.clone. self! s!) (and
     (ens%core!clone.Clone.clone. $ TYPE%vstd.raw_ptr.IsExposed. self! s!)
     (= s! self!)
   ))
   :pattern ((ens%vstd.raw_ptr.impl&%8.clone. self! s!))
   :qid internal_ens__vstd.raw_ptr.impl&__8.clone._definition
   :skolemid skolem_internal_ens__vstd.raw_ptr.impl&__8.clone._definition
)))
(assert
 (forall ((tmp%%$ Poly) (s$ Poly)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%1. (REF $) TYPE%vstd.raw_ptr.IsExposed.))
     (has_type s$ TYPE%vstd.raw_ptr.IsExposed.)
    )
    (=>
     (closure_ens (FNDEF%core!clone.Clone.clone. $ TYPE%vstd.raw_ptr.IsExposed.) $ (TYPE%tuple%1.
       (REF $) TYPE%vstd.raw_ptr.IsExposed.
      ) (F fndef_singleton) tmp%%$ s$
     )
     (let
      ((self$ (%Poly%vstd.raw_ptr.IsExposed. (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$)))))
      (= (%Poly%vstd.raw_ptr.IsExposed. s$) self$)
   )))
   :pattern ((closure_ens (FNDEF%core!clone.Clone.clone. $ TYPE%vstd.raw_ptr.IsExposed.)
     $ (TYPE%tuple%1. (REF $) TYPE%vstd.raw_ptr.IsExposed.) (F fndef_singleton) tmp%%$
     s$
   ))
   :qid user_crate__vstd__raw_ptr__IsExposed__clone_9
   :skolemid skolem_user_crate__vstd__raw_ptr__IsExposed__clone_9
)))

;; Function-Specs crate::vstd::raw_ptr::IsExposed::null
(declare-fun ens%vstd.raw_ptr.impl&%10.null. (Int vstd.raw_ptr.IsExposed.) Bool)
(assert
 (forall ((no%param Int) (exp! vstd.raw_ptr.IsExposed.)) (!
   (= (ens%vstd.raw_ptr.impl&%10.null. no%param exp!) (= (vstd.raw_ptr.impl&%10.provenance.?
      (Poly%vstd.raw_ptr.IsExposed. exp!)
     ) (vstd.raw_ptr.impl&%0.null.? (I 0))
   ))
   :pattern ((ens%vstd.raw_ptr.impl&%10.null. no%param exp!))
   :qid internal_ens__vstd.raw_ptr.impl&__10.null._definition
   :skolemid skolem_internal_ens__vstd.raw_ptr.impl&__10.null._definition
)))

;; Function-Axioms crate::vstd::raw_ptr::IsExposed::view
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.impl&%10.view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.impl&%10.view.)
  (forall ((self! Poly)) (!
    (= (vstd.raw_ptr.impl&%10.view.? self!) (vstd.raw_ptr.impl&%10.provenance.? self!))
    :pattern ((vstd.raw_ptr.impl&%10.view.? self!))
    :qid internal_vstd.raw_ptr.impl&__10.view.?_definition
    :skolemid skolem_internal_vstd.raw_ptr.impl&__10.view.?_definition
))))

;; Function-Specs crate::vstd::raw_ptr::expose_provenance
(declare-fun ens%vstd.raw_ptr.expose_provenance. (Dcr Type Poly vstd.raw_ptr.IsExposed.)
 Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (m! Poly) (provenance! vstd.raw_ptr.IsExposed.)) (!
   (= (ens%vstd.raw_ptr.expose_provenance. T&. T& m! provenance!) (= (vstd.raw_ptr.impl&%10.view.?
      (Poly%vstd.raw_ptr.IsExposed. provenance!)
     ) (vstd.raw_ptr.PtrData./PtrData/provenance (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
        $ (PTR T&. T&) m!
   )))))
   :pattern ((ens%vstd.raw_ptr.expose_provenance. T&. T& m! provenance!))
   :qid internal_ens__vstd.raw_ptr.expose_provenance._definition
   :skolemid skolem_internal_ens__vstd.raw_ptr.expose_provenance._definition
)))

;; Function-Specs crate::vstd::raw_ptr::with_exposed_provenance
(declare-fun ens%vstd.raw_ptr.with_exposed_provenance. (Dcr Type Int vstd.raw_ptr.IsExposed.
  Poly
 ) Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (addr! Int) (provenance! vstd.raw_ptr.IsExposed.) (p! Poly))
  (!
   (= (ens%vstd.raw_ptr.with_exposed_provenance. T&. T& addr! provenance! p!) (and
     (has_type p! (PTR T&. T&))
     (= p! (vstd.raw_ptr.ptr_mut_from_data.? T&. T& (Poly%vstd.raw_ptr.PtrData. (vstd.raw_ptr.PtrData./PtrData
         (%I (I addr!)) (%Poly%vstd.raw_ptr.Provenance. (Poly%vstd.raw_ptr.Provenance. (vstd.raw_ptr.impl&%10.view.?
            (Poly%vstd.raw_ptr.IsExposed. provenance!)
          ))
         ) (%Poly%vstd.raw_ptr.Metadata. (Poly%vstd.raw_ptr.Metadata. vstd.raw_ptr.Metadata./Thin))
   ))))))
   :pattern ((ens%vstd.raw_ptr.with_exposed_provenance. T&. T& addr! provenance! p!))
   :qid internal_ens__vstd.raw_ptr.with_exposed_provenance._definition
   :skolemid skolem_internal_ens__vstd.raw_ptr.with_exposed_provenance._definition
)))

;; Function-Specs crate::vstd::raw_ptr::PointsToRaw::empty
(declare-fun ens%vstd.raw_ptr.impl&%11.empty. (vstd.raw_ptr.Provenance. vstd.raw_ptr.PointsToRaw.)
 Bool
)
(assert
 (forall ((provenance! vstd.raw_ptr.Provenance.) (points_to_raw! vstd.raw_ptr.PointsToRaw.))
  (!
   (= (ens%vstd.raw_ptr.impl&%11.empty. provenance! points_to_raw!) (and
     (= (vstd.raw_ptr.impl&%11.dom.? (Poly%vstd.raw_ptr.PointsToRaw. points_to_raw!)) (
       %Poly%vstd.set.Set<int.>. (vstd.set.impl&%0.empty.? $ INT)
     ))
     (= (vstd.raw_ptr.impl&%11.provenance.? (Poly%vstd.raw_ptr.PointsToRaw. points_to_raw!))
      provenance!
   )))
   :pattern ((ens%vstd.raw_ptr.impl&%11.empty. provenance! points_to_raw!))
   :qid internal_ens__vstd.raw_ptr.impl&__11.empty._definition
   :skolemid skolem_internal_ens__vstd.raw_ptr.impl&__11.empty._definition
)))

;; Function-Specs crate::vstd::raw_ptr::PointsToRaw::split
(declare-fun req%vstd.raw_ptr.impl&%11.split. (vstd.raw_ptr.PointsToRaw. vstd.set.Set<int.>.)
 Bool
)
(declare-const %%global_location_label%%7 Bool)
(assert
 (forall ((self! vstd.raw_ptr.PointsToRaw.) (range! vstd.set.Set<int.>.)) (!
   (= (req%vstd.raw_ptr.impl&%11.split. self! range!) (=>
     %%global_location_label%%7
     (vstd.set.impl&%0.subset_of.? $ INT (Poly%vstd.set.Set<int.>. range!) (Poly%vstd.set.Set<int.>.
       (vstd.raw_ptr.impl&%11.dom.? (Poly%vstd.raw_ptr.PointsToRaw. self!))
   ))))
   :pattern ((req%vstd.raw_ptr.impl&%11.split. self! range!))
   :qid internal_req__vstd.raw_ptr.impl&__11.split._definition
   :skolemid skolem_internal_req__vstd.raw_ptr.impl&__11.split._definition
)))
(declare-fun ens%vstd.raw_ptr.impl&%11.split. (vstd.raw_ptr.PointsToRaw. vstd.set.Set<int.>.
  tuple%2.
 ) Bool
)
(assert
 (forall ((self! vstd.raw_ptr.PointsToRaw.) (range! vstd.set.Set<int.>.) (res! tuple%2.))
  (!
   (= (ens%vstd.raw_ptr.impl&%11.split. self! range! res!) (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. $ TYPE%vstd.raw_ptr.PointsToRaw. $ TYPE%vstd.raw_ptr.PointsToRaw.))
     (= (vstd.raw_ptr.impl&%11.provenance.? (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2.
          res!
       )))
      ) (vstd.raw_ptr.impl&%11.provenance.? (Poly%vstd.raw_ptr.PointsToRaw. self!))
     )
     (= (vstd.raw_ptr.impl&%11.provenance.? (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2.
          res!
       )))
      ) (vstd.raw_ptr.impl&%11.provenance.? (Poly%vstd.raw_ptr.PointsToRaw. self!))
     )
     (= (vstd.raw_ptr.impl&%11.dom.? (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!))))
      range!
     )
     (= (vstd.raw_ptr.impl&%11.dom.? (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. res!))))
      (%Poly%vstd.set.Set<int.>. (vstd.set.impl&%0.difference.? $ INT (Poly%vstd.set.Set<int.>.
         (vstd.raw_ptr.impl&%11.dom.? (Poly%vstd.raw_ptr.PointsToRaw. self!))
        ) (Poly%vstd.set.Set<int.>. range!)
   )))))
   :pattern ((ens%vstd.raw_ptr.impl&%11.split. self! range! res!))
   :qid internal_ens__vstd.raw_ptr.impl&__11.split._definition
   :skolemid skolem_internal_ens__vstd.raw_ptr.impl&__11.split._definition
)))

;; Function-Axioms crate::vstd::set::Set::spec_add
(assert
 (fuel_bool_default fuel%vstd.set.impl&%0.spec_add.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.set.impl&%0.spec_add.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
    (= (vstd.set.impl&%0.spec_add.? A&. A& self! s2!) (vstd.set.impl&%0.union.? A&. A&
      self! s2!
    ))
    :pattern ((vstd.set.impl&%0.spec_add.? A&. A& self! s2!))
    :qid internal_vstd.set.impl&__0.spec_add.?_definition
    :skolemid skolem_internal_vstd.set.impl&__0.spec_add.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type s2! (TYPE%vstd.set.Set. A&. A&))
    )
    (has_type (vstd.set.impl&%0.spec_add.? A&. A& self! s2!) (TYPE%vstd.set.Set. A&. A&))
   )
   :pattern ((vstd.set.impl&%0.spec_add.? A&. A& self! s2!))
   :qid internal_vstd.set.impl&__0.spec_add.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.spec_add.?_pre_post_definition
)))

;; Function-Specs crate::vstd::raw_ptr::PointsToRaw::join
(declare-fun req%vstd.raw_ptr.impl&%11.join. (vstd.raw_ptr.PointsToRaw. vstd.raw_ptr.PointsToRaw.)
 Bool
)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((self! vstd.raw_ptr.PointsToRaw.) (other! vstd.raw_ptr.PointsToRaw.)) (!
   (= (req%vstd.raw_ptr.impl&%11.join. self! other!) (=>
     %%global_location_label%%8
     (= (vstd.raw_ptr.impl&%11.provenance.? (Poly%vstd.raw_ptr.PointsToRaw. self!)) (vstd.raw_ptr.impl&%11.provenance.?
       (Poly%vstd.raw_ptr.PointsToRaw. other!)
   ))))
   :pattern ((req%vstd.raw_ptr.impl&%11.join. self! other!))
   :qid internal_req__vstd.raw_ptr.impl&__11.join._definition
   :skolemid skolem_internal_req__vstd.raw_ptr.impl&__11.join._definition
)))
(declare-fun ens%vstd.raw_ptr.impl&%11.join. (vstd.raw_ptr.PointsToRaw. vstd.raw_ptr.PointsToRaw.
  vstd.raw_ptr.PointsToRaw.
 ) Bool
)
(assert
 (forall ((self! vstd.raw_ptr.PointsToRaw.) (other! vstd.raw_ptr.PointsToRaw.) (joined!
    vstd.raw_ptr.PointsToRaw.
   )
  ) (!
   (= (ens%vstd.raw_ptr.impl&%11.join. self! other! joined!) (and
     (= (vstd.raw_ptr.impl&%11.provenance.? (Poly%vstd.raw_ptr.PointsToRaw. joined!)) (
       vstd.raw_ptr.impl&%11.provenance.? (Poly%vstd.raw_ptr.PointsToRaw. self!)
     ))
     (= (vstd.raw_ptr.impl&%11.dom.? (Poly%vstd.raw_ptr.PointsToRaw. joined!)) (%Poly%vstd.set.Set<int.>.
       (vstd.set.impl&%0.union.? $ INT (Poly%vstd.set.Set<int.>. (vstd.raw_ptr.impl&%11.dom.?
          (Poly%vstd.raw_ptr.PointsToRaw. self!)
         )
        ) (Poly%vstd.set.Set<int.>. (vstd.raw_ptr.impl&%11.dom.? (Poly%vstd.raw_ptr.PointsToRaw.
           other!
   ))))))))
   :pattern ((ens%vstd.raw_ptr.impl&%11.join. self! other! joined!))
   :qid internal_ens__vstd.raw_ptr.impl&__11.join._definition
   :skolemid skolem_internal_ens__vstd.raw_ptr.impl&__11.join._definition
)))

;; Function-Axioms crate::vstd::set_lib::set_int_range
(assert
 (fuel_bool_default fuel%vstd.set_lib.set_int_range.)
)
(declare-fun %%lambda%%1 (Int Int) %%Function%%)
(assert
 (forall ((%%hole%%0 Int) (%%hole%%1 Int) (i$ Poly)) (!
   (= (%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1) i$) (B (and
      (<= %%hole%%0 (%I i$))
      (< (%I i$) %%hole%%1)
   )))
   :pattern ((%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1) i$))
)))
(assert
 (=>
  (fuel_bool fuel%vstd.set_lib.set_int_range.)
  (forall ((lo! Poly) (hi! Poly)) (!
    (= (vstd.set_lib.set_int_range.? lo! hi!) (%Poly%vstd.set.Set<int.>. (vstd.set.impl&%0.new.?
       $ INT $ (TYPE%fun%1. $ INT $ BOOL) (Poly%fun%1. (mk_fun (%%lambda%%1 (%I lo!) (%I hi!))))
    )))
    :pattern ((vstd.set_lib.set_int_range.? lo! hi!))
    :qid internal_vstd.set_lib.set_int_range.?_definition
    :skolemid skolem_internal_vstd.set_lib.set_int_range.?_definition
))))

;; Function-Axioms crate::vstd::raw_ptr::PointsToRaw::is_range
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.impl&%11.is_range.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.impl&%11.is_range.)
  (forall ((self! Poly) (start! Poly) (len! Poly)) (!
    (= (vstd.raw_ptr.impl&%11.is_range.? self! start! len!) (ext_eq false (TYPE%vstd.set.Set.
       $ INT
      ) (Poly%vstd.set.Set<int.>. (vstd.set_lib.set_int_range.? start! (I (Add (%I start!)
          (%I len!)
       )))
      ) (Poly%vstd.set.Set<int.>. (vstd.raw_ptr.impl&%11.dom.? self!))
    ))
    :pattern ((vstd.raw_ptr.impl&%11.is_range.? self! start! len!))
    :qid internal_vstd.raw_ptr.impl&__11.is_range.?_definition
    :skolemid skolem_internal_vstd.raw_ptr.impl&__11.is_range.?_definition
))))

;; Function-Specs crate::vstd::raw_ptr::PointsToRaw::into_typed
(declare-fun req%vstd.raw_ptr.impl&%11.into_typed. (Dcr Type vstd.raw_ptr.PointsToRaw.
  Int
 ) Bool
)
(declare-const %%global_location_label%%9 Bool)
(declare-const %%global_location_label%%10 Bool)
(declare-const %%global_location_label%%11 Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (self! vstd.raw_ptr.PointsToRaw.) (start! Int)) (!
   (= (req%vstd.raw_ptr.impl&%11.into_typed. V&. V& self! start!) (and
     (=>
      %%global_location_label%%9
      (vstd.layout.is_sized.? V&. V&)
     )
     (=>
      %%global_location_label%%10
      (= (EucMod start! (vstd.layout.align_of.? V&. V&)) 0)
     )
     (=>
      %%global_location_label%%11
      (vstd.raw_ptr.impl&%11.is_range.? (Poly%vstd.raw_ptr.PointsToRaw. self!) (I start!)
       (I (vstd.layout.size_of.? V&. V&))
   ))))
   :pattern ((req%vstd.raw_ptr.impl&%11.into_typed. V&. V& self! start!))
   :qid internal_req__vstd.raw_ptr.impl&__11.into_typed._definition
   :skolemid skolem_internal_req__vstd.raw_ptr.impl&__11.into_typed._definition
)))
(declare-fun ens%vstd.raw_ptr.impl&%11.into_typed. (Dcr Type vstd.raw_ptr.PointsToRaw.
  Int Poly
 ) Bool
)
(assert
 (forall ((V&. Dcr) (V& Type) (self! vstd.raw_ptr.PointsToRaw.) (start! Int) (points_to!
    Poly
   )
  ) (!
   (= (ens%vstd.raw_ptr.impl&%11.into_typed. V&. V& self! start! points_to!) (and
     (has_type points_to! (TYPE%vstd.raw_ptr.PointsTo. V&. V&))
     (= (vstd.raw_ptr.PointsToData./PointsToData/ptr (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.?
         $ (TYPE%vstd.raw_ptr.PointsTo. V&. V&) points_to!
       ))
      ) (vstd.raw_ptr.ptr_mut_from_data.? V&. V& (Poly%vstd.raw_ptr.PtrData. (vstd.raw_ptr.PtrData./PtrData
         (%I (I start!)) (%Poly%vstd.raw_ptr.Provenance. (Poly%vstd.raw_ptr.Provenance. (vstd.raw_ptr.impl&%11.provenance.?
            (Poly%vstd.raw_ptr.PointsToRaw. self!)
          ))
         ) (%Poly%vstd.raw_ptr.Metadata. (Poly%vstd.raw_ptr.Metadata. vstd.raw_ptr.Metadata./Thin))
     ))))
     (is-vstd.raw_ptr.MemContents./Uninit (vstd.raw_ptr.PointsToData./PointsToData/opt_value
       (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.? $ (TYPE%vstd.raw_ptr.PointsTo.
          V&. V&
         ) points_to!
   ))))))
   :pattern ((ens%vstd.raw_ptr.impl&%11.into_typed. V&. V& self! start! points_to!))
   :qid internal_ens__vstd.raw_ptr.impl&__11.into_typed._definition
   :skolemid skolem_internal_ens__vstd.raw_ptr.impl&__11.into_typed._definition
)))

;; Function-Specs crate::vstd::raw_ptr::PointsTo::into_raw
(declare-fun req%vstd.raw_ptr.impl&%12.into_raw. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%12 Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly)) (!
   (= (req%vstd.raw_ptr.impl&%12.into_raw. V&. V& self!) (=>
     %%global_location_label%%12
     (is-vstd.raw_ptr.MemContents./Uninit (vstd.raw_ptr.PointsToData./PointsToData/opt_value
       (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.? $ (TYPE%vstd.raw_ptr.PointsTo.
          V&. V&
         ) self!
   ))))))
   :pattern ((req%vstd.raw_ptr.impl&%12.into_raw. V&. V& self!))
   :qid internal_req__vstd.raw_ptr.impl&__12.into_raw._definition
   :skolemid skolem_internal_req__vstd.raw_ptr.impl&__12.into_raw._definition
)))
(declare-fun ens%vstd.raw_ptr.impl&%12.into_raw. (Dcr Type Poly vstd.raw_ptr.PointsToRaw.)
 Bool
)
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (points_to_raw! vstd.raw_ptr.PointsToRaw.))
  (!
   (= (ens%vstd.raw_ptr.impl&%12.into_raw. V&. V& self! points_to_raw!) (and
     (vstd.raw_ptr.impl&%11.is_range.? (Poly%vstd.raw_ptr.PointsToRaw. points_to_raw!)
      (I (vstd.raw_ptr.PtrData./PtrData/addr (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
          $ (PTR V&. V&) (vstd.raw_ptr.PointsToData./PointsToData/ptr (%Poly%vstd.raw_ptr.PointsToData.
            (vstd.view.View.view.? $ (TYPE%vstd.raw_ptr.PointsTo. V&. V&) self!)
       )))))
      ) (I (vstd.layout.size_of.? V&. V&))
     )
     (= (vstd.raw_ptr.impl&%11.provenance.? (Poly%vstd.raw_ptr.PointsToRaw. points_to_raw!))
      (vstd.raw_ptr.PtrData./PtrData/provenance (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
         $ (PTR V&. V&) (vstd.raw_ptr.PointsToData./PointsToData/ptr (%Poly%vstd.raw_ptr.PointsToData.
           (vstd.view.View.view.? $ (TYPE%vstd.raw_ptr.PointsTo. V&. V&) self!)
     ))))))
     (vstd.layout.is_sized.? V&. V&)
   ))
   :pattern ((ens%vstd.raw_ptr.impl&%12.into_raw. V&. V& self! points_to_raw!))
   :qid internal_ens__vstd.raw_ptr.impl&__12.into_raw._definition
   :skolemid skolem_internal_ens__vstd.raw_ptr.impl&__12.into_raw._definition
)))

;; Function-Axioms crate::vstd::raw_ptr::Dealloc::view
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd.raw_ptr.Dealloc.)
    (has_type (Poly%vstd.raw_ptr.DeallocData. (vstd.raw_ptr.impl&%13.view.? self!)) TYPE%vstd.raw_ptr.DeallocData.)
   )
   :pattern ((vstd.raw_ptr.impl&%13.view.? self!))
   :qid internal_vstd.raw_ptr.impl&__13.view.?_pre_post_definition
   :skolemid skolem_internal_vstd.raw_ptr.impl&__13.view.?_pre_post_definition
)))

;; Function-Specs crate::vstd::raw_ptr::SharedReference::clone
(declare-fun ens%vstd.raw_ptr.impl&%14.clone. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly) (ret! Poly)) (!
   (= (ens%vstd.raw_ptr.impl&%14.clone. T&. T& self! ret!) (and
     (ens%core!clone.Clone.clone. $ (TYPE%vstd.raw_ptr.SharedReference. T&. T&) self! ret!)
     (= ret! self!)
   ))
   :pattern ((ens%vstd.raw_ptr.impl&%14.clone. T&. T& self! ret!))
   :qid internal_ens__vstd.raw_ptr.impl&__14.clone._definition
   :skolemid skolem_internal_ens__vstd.raw_ptr.impl&__14.clone._definition
)))
(assert
 (forall ((tmp%%$ Poly) (ret$ Poly) (T&. Dcr) (T& Type)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%1. (REF $) (TYPE%vstd.raw_ptr.SharedReference. T&. T&)))
     (has_type ret$ (TYPE%vstd.raw_ptr.SharedReference. T&. T&))
    )
    (=>
     (closure_ens (FNDEF%core!clone.Clone.clone. $ (TYPE%vstd.raw_ptr.SharedReference. T&.
        T&
       )
      ) $ (TYPE%tuple%1. (REF $) (TYPE%vstd.raw_ptr.SharedReference. T&. T&)) (F fndef_singleton)
      tmp%%$ ret$
     )
     (let
      ((self$ (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$))))
      (= ret$ self$)
   )))
   :pattern ((closure_ens (FNDEF%core!clone.Clone.clone. $ (TYPE%vstd.raw_ptr.SharedReference.
       T&. T&
      )
     ) $ (TYPE%tuple%1. (REF $) (TYPE%vstd.raw_ptr.SharedReference. T&. T&)) (F fndef_singleton)
     tmp%%$ ret$
   ))
   :qid user_crate__vstd__raw_ptr__SharedReference__clone_10
   :skolemid skolem_user_crate__vstd__raw_ptr__SharedReference__clone_10
)))

;; Function-Axioms crate::vstd::raw_ptr::SharedReference::value
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.raw_ptr.SharedReference. T&. T&))
    (has_type (vstd.raw_ptr.impl&%16.value.? T&. T& self!) T&)
   )
   :pattern ((vstd.raw_ptr.impl&%16.value.? T&. T& self!))
   :qid internal_vstd.raw_ptr.impl&__16.value.?_pre_post_definition
   :skolemid skolem_internal_vstd.raw_ptr.impl&__16.value.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::raw_ptr::SharedReference::ptr
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.raw_ptr.SharedReference. T&. T&))
    (has_type (vstd.raw_ptr.impl&%16.ptr.? T&. T& self!) (PTR T&. T&))
   )
   :pattern ((vstd.raw_ptr.impl&%16.ptr.? T&. T& self!))
   :qid internal_vstd.raw_ptr.impl&__16.ptr.?_pre_post_definition
   :skolemid skolem_internal_vstd.raw_ptr.impl&__16.ptr.?_pre_post_definition
)))

;; Function-Specs crate::vstd::raw_ptr::SharedReference::new
(declare-fun ens%vstd.raw_ptr.impl&%16.new. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (t! Poly) (s! Poly)) (!
   (= (ens%vstd.raw_ptr.impl&%16.new. T&. T& t! s!) (and
     (has_type s! (TYPE%vstd.raw_ptr.SharedReference. T&. T&))
     (= (vstd.raw_ptr.impl&%16.value.? T&. T& s!) t!)
   ))
   :pattern ((ens%vstd.raw_ptr.impl&%16.new. T&. T& t! s!))
   :qid internal_ens__vstd.raw_ptr.impl&__16.new._definition
   :skolemid skolem_internal_ens__vstd.raw_ptr.impl&__16.new._definition
)))

;; Function-Specs crate::vstd::raw_ptr::SharedReference::as_ref
(declare-fun ens%vstd.raw_ptr.impl&%16.as_ref. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly) (t! Poly)) (!
   (= (ens%vstd.raw_ptr.impl&%16.as_ref. T&. T& self! t!) (and
     (has_type t! T&)
     (= t! (vstd.raw_ptr.impl&%16.value.? T&. T& self!))
   ))
   :pattern ((ens%vstd.raw_ptr.impl&%16.as_ref. T&. T& self! t!))
   :qid internal_ens__vstd.raw_ptr.impl&__16.as_ref._definition
   :skolemid skolem_internal_ens__vstd.raw_ptr.impl&__16.as_ref._definition
)))

;; Function-Specs crate::vstd::raw_ptr::SharedReference::as_ptr
(declare-fun ens%vstd.raw_ptr.impl&%16.as_ptr. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly) (ptr! Poly)) (!
   (= (ens%vstd.raw_ptr.impl&%16.as_ptr. T&. T& self! ptr!) (and
     (has_type ptr! (PTR T&. T&))
     (= ptr! (vstd.raw_ptr.impl&%16.ptr.? T&. T& self!))
   ))
   :pattern ((ens%vstd.raw_ptr.impl&%16.as_ptr. T&. T& self! ptr!))
   :qid internal_ens__vstd.raw_ptr.impl&__16.as_ptr._definition
   :skolemid skolem_internal_ens__vstd.raw_ptr.impl&__16.as_ptr._definition
)))

;; Function-Specs crate::vstd::raw_ptr::SharedReference::points_to
(declare-fun ens%vstd.raw_ptr.impl&%16.points_to. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly) (pt! Poly)) (!
   (= (ens%vstd.raw_ptr.impl&%16.points_to. T&. T& self! pt!) (and
     (has_type pt! (TYPE%vstd.raw_ptr.PointsTo. T&. T&))
     (= (vstd.raw_ptr.PointsToData./PointsToData/ptr (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.?
         $ (TYPE%vstd.raw_ptr.PointsTo. T&. T&) pt!
       ))
      ) (vstd.raw_ptr.impl&%16.ptr.? T&. T& self!)
     )
     (is-vstd.raw_ptr.MemContents./Init (vstd.raw_ptr.PointsToData./PointsToData/opt_value
       (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.? $ (TYPE%vstd.raw_ptr.PointsTo.
          T&. T&
         ) pt!
     ))))
     (= (vstd.raw_ptr.MemContents./Init/0 (%Poly%vstd.raw_ptr.MemContents. (Poly%vstd.raw_ptr.MemContents.
         (vstd.raw_ptr.PointsToData./PointsToData/opt_value (%Poly%vstd.raw_ptr.PointsToData.
           (vstd.view.View.view.? $ (TYPE%vstd.raw_ptr.PointsTo. T&. T&) pt!)
       ))))
      ) (vstd.raw_ptr.impl&%16.value.? T&. T& self!)
   )))
   :pattern ((ens%vstd.raw_ptr.impl&%16.points_to. T&. T& self! pt!))
   :qid internal_ens__vstd.raw_ptr.impl&__16.points_to._definition
   :skolemid skolem_internal_ens__vstd.raw_ptr.impl&__16.points_to._definition
)))

;; Function-Specs crate::vstd::raw_ptr::ptr_ref2
(declare-fun req%vstd.raw_ptr.ptr_ref2. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%13 Bool)
(declare-const %%global_location_label%%14 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (ptr! Poly) (perm! Poly)) (!
   (= (req%vstd.raw_ptr.ptr_ref2. T&. T& ptr! perm!) (and
     (=>
      %%global_location_label%%13
      (= (vstd.raw_ptr.PointsToData./PointsToData/ptr (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.?
          $ (TYPE%vstd.raw_ptr.PointsTo. T&. T&) perm!
        ))
       ) ptr!
     ))
     (=>
      %%global_location_label%%14
      (is-vstd.raw_ptr.MemContents./Init (vstd.raw_ptr.PointsToData./PointsToData/opt_value
        (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.? $ (TYPE%vstd.raw_ptr.PointsTo.
           T&. T&
          ) perm!
   )))))))
   :pattern ((req%vstd.raw_ptr.ptr_ref2. T&. T& ptr! perm!))
   :qid internal_req__vstd.raw_ptr.ptr_ref2._definition
   :skolemid skolem_internal_req__vstd.raw_ptr.ptr_ref2._definition
)))
(declare-fun ens%vstd.raw_ptr.ptr_ref2. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (ptr! Poly) (perm! Poly) (v! Poly)) (!
   (= (ens%vstd.raw_ptr.ptr_ref2. T&. T& ptr! perm! v!) (and
     (has_type v! (TYPE%vstd.raw_ptr.SharedReference. T&. T&))
     (= (vstd.raw_ptr.impl&%16.value.? T&. T& v!) (vstd.raw_ptr.MemContents./Init/0 (%Poly%vstd.raw_ptr.MemContents.
        (Poly%vstd.raw_ptr.MemContents. (vstd.raw_ptr.PointsToData./PointsToData/opt_value
          (%Poly%vstd.raw_ptr.PointsToData. (vstd.view.View.view.? $ (TYPE%vstd.raw_ptr.PointsTo.
             T&. T&
            ) perm!
     )))))))
     (= (vstd.raw_ptr.PtrData./PtrData/addr (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
         $ (PTR T&. T&) (vstd.raw_ptr.impl&%16.ptr.? T&. T& v!)
       ))
      ) (vstd.raw_ptr.PtrData./PtrData/addr (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
         $ (PTR T&. T&) ptr!
     ))))
     (= (vstd.raw_ptr.PtrData./PtrData/metadata (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
         $ (PTR T&. T&) (vstd.raw_ptr.impl&%16.ptr.? T&. T& v!)
       ))
      ) (vstd.raw_ptr.PtrData./PtrData/metadata (%Poly%vstd.raw_ptr.PtrData. (vstd.view.View.view.?
         $ (PTR T&. T&) ptr!
   ))))))
   :pattern ((ens%vstd.raw_ptr.ptr_ref2. T&. T& ptr! perm! v!))
   :qid internal_ens__vstd.raw_ptr.ptr_ref2._definition
   :skolemid skolem_internal_ens__vstd.raw_ptr.ptr_ref2._definition
)))

;; Function-Axioms crate::vstd::raw_ptr::Metadata::arrow_Length_0
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.impl&%1.arrow_Length_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.impl&%1.arrow_Length_0.)
  (forall ((self! Poly)) (!
    (= (vstd.raw_ptr.impl&%1.arrow_Length_0.? self!) (vstd.raw_ptr.Metadata./Length/0 (
       %Poly%vstd.raw_ptr.Metadata. self!
    )))
    :pattern ((vstd.raw_ptr.impl&%1.arrow_Length_0.? self!))
    :qid internal_vstd.raw_ptr.impl&__1.arrow_Length_0.?_definition
    :skolemid skolem_internal_vstd.raw_ptr.impl&__1.arrow_Length_0.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd.raw_ptr.Metadata.)
    (uInv SZ (vstd.raw_ptr.impl&%1.arrow_Length_0.? self!))
   )
   :pattern ((vstd.raw_ptr.impl&%1.arrow_Length_0.? self!))
   :qid internal_vstd.raw_ptr.impl&__1.arrow_Length_0.?_pre_post_definition
   :skolemid skolem_internal_vstd.raw_ptr.impl&__1.arrow_Length_0.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::raw_ptr::Metadata::arrow_Dyn_0
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.impl&%1.arrow_Dyn_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.impl&%1.arrow_Dyn_0.)
  (forall ((self! Poly)) (!
    (= (vstd.raw_ptr.impl&%1.arrow_Dyn_0.? self!) (vstd.raw_ptr.Metadata./Dyn/0 (%Poly%vstd.raw_ptr.Metadata.
       self!
    )))
    :pattern ((vstd.raw_ptr.impl&%1.arrow_Dyn_0.? self!))
    :qid internal_vstd.raw_ptr.impl&__1.arrow_Dyn_0.?_definition
    :skolemid skolem_internal_vstd.raw_ptr.impl&__1.arrow_Dyn_0.?_definition
))))

;; Function-Axioms crate::vstd::raw_ptr::MemContents::arrow_Init_0
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.impl&%2.arrow_Init_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.impl&%2.arrow_Init_0.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.raw_ptr.impl&%2.arrow_Init_0.? T&. T& self!) (vstd.raw_ptr.MemContents./Init/0
      (%Poly%vstd.raw_ptr.MemContents. self!)
    ))
    :pattern ((vstd.raw_ptr.impl&%2.arrow_Init_0.? T&. T& self!))
    :qid internal_vstd.raw_ptr.impl&__2.arrow_Init_0.?_definition
    :skolemid skolem_internal_vstd.raw_ptr.impl&__2.arrow_Init_0.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.raw_ptr.MemContents. T&. T&))
    (has_type (vstd.raw_ptr.impl&%2.arrow_Init_0.? T&. T& self!) T&)
   )
   :pattern ((vstd.raw_ptr.impl&%2.arrow_Init_0.? T&. T& self!))
   :qid internal_vstd.raw_ptr.impl&__2.arrow_Init_0.?_pre_post_definition
   :skolemid skolem_internal_vstd.raw_ptr.impl&__2.arrow_Init_0.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::set::Set::spec_le
(assert
 (fuel_bool_default fuel%vstd.set.impl&%0.spec_le.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.set.impl&%0.spec_le.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
    (= (vstd.set.impl&%0.spec_le.? A&. A& self! s2!) (vstd.set.impl&%0.subset_of.? A&.
      A& self! s2!
    ))
    :pattern ((vstd.set.impl&%0.spec_le.? A&. A& self! s2!))
    :qid internal_vstd.set.impl&__0.spec_le.?_definition
    :skolemid skolem_internal_vstd.set.impl&__0.spec_le.?_definition
))))

;; Function-Axioms crate::vstd::raw_ptr::PointsToRaw::contains_range
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.impl&%11.contains_range.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.impl&%11.contains_range.)
  (forall ((self! Poly) (start! Poly) (len! Poly)) (!
    (= (vstd.raw_ptr.impl&%11.contains_range.? self! start! len!) (vstd.set.impl&%0.subset_of.?
      $ INT (Poly%vstd.set.Set<int.>. (vstd.set_lib.set_int_range.? start! (I (Add (%I start!)
          (%I len!)
       )))
      ) (Poly%vstd.set.Set<int.>. (vstd.raw_ptr.impl&%11.dom.? self!))
    ))
    :pattern ((vstd.raw_ptr.impl&%11.contains_range.? self! start! len!))
    :qid internal_vstd.raw_ptr.impl&__11.contains_range.?_definition
    :skolemid skolem_internal_vstd.raw_ptr.impl&__11.contains_range.?_definition
))))

;; Function-Axioms crate::vstd::raw_ptr::Dealloc::addr
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.impl&%13.addr.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.impl&%13.addr.)
  (forall ((self! Poly)) (!
    (= (vstd.raw_ptr.impl&%13.addr.? self!) (vstd.raw_ptr.DeallocData./DeallocData/addr
      (%Poly%vstd.raw_ptr.DeallocData. (Poly%vstd.raw_ptr.DeallocData. (vstd.raw_ptr.impl&%13.view.?
         self!
    )))))
    :pattern ((vstd.raw_ptr.impl&%13.addr.? self!))
    :qid internal_vstd.raw_ptr.impl&__13.addr.?_definition
    :skolemid skolem_internal_vstd.raw_ptr.impl&__13.addr.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd.raw_ptr.Dealloc.)
    (uInv SZ (vstd.raw_ptr.impl&%13.addr.? self!))
   )
   :pattern ((vstd.raw_ptr.impl&%13.addr.? self!))
   :qid internal_vstd.raw_ptr.impl&__13.addr.?_pre_post_definition
   :skolemid skolem_internal_vstd.raw_ptr.impl&__13.addr.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::raw_ptr::Dealloc::size
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.impl&%13.size.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.impl&%13.size.)
  (forall ((self! Poly)) (!
    (= (vstd.raw_ptr.impl&%13.size.? self!) (vstd.raw_ptr.DeallocData./DeallocData/size
      (%Poly%vstd.raw_ptr.DeallocData. (Poly%vstd.raw_ptr.DeallocData. (vstd.raw_ptr.impl&%13.view.?
         self!
    )))))
    :pattern ((vstd.raw_ptr.impl&%13.size.? self!))
    :qid internal_vstd.raw_ptr.impl&__13.size.?_definition
    :skolemid skolem_internal_vstd.raw_ptr.impl&__13.size.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd.raw_ptr.Dealloc.)
    (<= 0 (vstd.raw_ptr.impl&%13.size.? self!))
   )
   :pattern ((vstd.raw_ptr.impl&%13.size.? self!))
   :qid internal_vstd.raw_ptr.impl&__13.size.?_pre_post_definition
   :skolemid skolem_internal_vstd.raw_ptr.impl&__13.size.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::raw_ptr::Dealloc::align
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.impl&%13.align.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.impl&%13.align.)
  (forall ((self! Poly)) (!
    (= (vstd.raw_ptr.impl&%13.align.? self!) (vstd.raw_ptr.DeallocData./DeallocData/align
      (%Poly%vstd.raw_ptr.DeallocData. (Poly%vstd.raw_ptr.DeallocData. (vstd.raw_ptr.impl&%13.view.?
         self!
    )))))
    :pattern ((vstd.raw_ptr.impl&%13.align.? self!))
    :qid internal_vstd.raw_ptr.impl&__13.align.?_definition
    :skolemid skolem_internal_vstd.raw_ptr.impl&__13.align.?_definition
))))
(assert
 (forall ((self! Poly)) (!
   (=>
    (has_type self! TYPE%vstd.raw_ptr.Dealloc.)
    (<= 0 (vstd.raw_ptr.impl&%13.align.? self!))
   )
   :pattern ((vstd.raw_ptr.impl&%13.align.? self!))
   :qid internal_vstd.raw_ptr.impl&__13.align.?_pre_post_definition
   :skolemid skolem_internal_vstd.raw_ptr.impl&__13.align.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::raw_ptr::Dealloc::provenance
(assert
 (fuel_bool_default fuel%vstd.raw_ptr.impl&%13.provenance.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.raw_ptr.impl&%13.provenance.)
  (forall ((self! Poly)) (!
    (= (vstd.raw_ptr.impl&%13.provenance.? self!) (vstd.raw_ptr.DeallocData./DeallocData/provenance
      (%Poly%vstd.raw_ptr.DeallocData. (Poly%vstd.raw_ptr.DeallocData. (vstd.raw_ptr.impl&%13.view.?
         self!
    )))))
    :pattern ((vstd.raw_ptr.impl&%13.provenance.? self!))
    :qid internal_vstd.raw_ptr.impl&__13.provenance.?_definition
    :skolemid skolem_internal_vstd.raw_ptr.impl&__13.provenance.?_definition
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
 (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type)) (!
   (=>
    (uInv SZ (const_int N&))
    (tr_bound%vstd.view.View. $ (ARRAY T&. T& N&. N&))
   )
   :pattern ((tr_bound%vstd.view.View. $ (ARRAY T&. T& N&. N&)))
   :qid internal_crate__vstd__array__impl&__0_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__array__impl&__0_trait_impl_definition
)))

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
   (tr_bound%vstd.view.View. $ (TYPE%vstd.raw_ptr.PointsTo. T&. T&))
   :pattern ((tr_bound%vstd.view.View. $ (TYPE%vstd.raw_ptr.PointsTo. T&. T&)))
   :qid internal_crate__vstd__raw_ptr__impl&__5_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__impl&__5_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ TYPE%vstd.raw_ptr.IsExposed.)
)

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!clone.Clone. $ (TYPE%vstd.raw_ptr.SharedReference. T&. T&))
   :pattern ((tr_bound%core!clone.Clone. $ (TYPE%vstd.raw_ptr.SharedReference. T&. T&)))
   :qid internal_crate__vstd__raw_ptr__impl&__14_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__raw_ptr__impl&__14_trait_impl_definition
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
 (tr_bound%vstd.view.View. $ (UINT SZ))
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
   (=>
    (tr_bound%core!cmp.PartialEq. T&. T& T&. T&)
    (tr_bound%core!cmp.PartialEq. $ (TYPE%tuple%1. T&. T&) $ (TYPE%tuple%1. T&. T&))
   )
   :pattern ((tr_bound%core!cmp.PartialEq. $ (TYPE%tuple%1. T&. T&) $ (TYPE%tuple%1. T&.
      T&
   )))
   :qid internal_core__tuple__impl&__2_trait_impl_definition
   :skolemid skolem_internal_core__tuple__impl&__2_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%core!cmp.Eq. T&. T&)
    (tr_bound%core!cmp.Eq. $ (TYPE%tuple%1. T&. T&))
   )
   :pattern ((tr_bound%core!cmp.Eq. $ (TYPE%tuple%1. T&. T&)))
   :qid internal_core__tuple__impl&__3_trait_impl_definition
   :skolemid skolem_internal_core__tuple__impl&__3_trait_impl_definition
)))

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
 (forall ((U&. Dcr) (U& Type) (T&. Dcr) (T& Type)) (!
   (=>
    (and
     (tr_bound%core!cmp.Eq. U&. U&)
     (tr_bound%core!cmp.Eq. T&. T&)
    )
    (tr_bound%core!cmp.Eq. $ (TYPE%tuple%2. U&. U& T&. T&))
   )
   :pattern ((tr_bound%core!cmp.Eq. $ (TYPE%tuple%2. U&. U& T&. T&)))
   :qid internal_core__tuple__impl&__12_trait_impl_definition
   :skolemid skolem_internal_core__tuple__impl&__12_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ BOOL $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.Eq. $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ (UINT SZ) $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.Eq. $ (UINT SZ))
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
 (forall ((A&. Dcr) (A& Type)) (!
   (=>
    (tr_bound%core!cmp.Eq. A&. A&)
    (tr_bound%core!cmp.Eq. (REF A&.) A&)
   )
   :pattern ((tr_bound%core!cmp.Eq. (REF A&.) A&))
   :qid internal_core__cmp__impls__impl&__12_trait_impl_definition
   :skolemid skolem_internal_core__cmp__impls__impl&__12_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialEq. $ TYPE%tuple%0. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.Eq. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!cmp.PartialEq. $ (PTR T&. T&) $ (PTR T&. T&))
   :pattern ((tr_bound%core!cmp.PartialEq. $ (PTR T&. T&) $ (PTR T&. T&)))
   :qid internal_core__ptr__mut_ptr__impl&__3_trait_impl_definition
   :skolemid skolem_internal_core__ptr__mut_ptr__impl&__3_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!cmp.Eq. $ (PTR T&. T&))
   :pattern ((tr_bound%core!cmp.Eq. $ (PTR T&. T&)))
   :qid internal_core__ptr__mut_ptr__impl&__4_trait_impl_definition
   :skolemid skolem_internal_core__ptr__mut_ptr__impl&__4_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type)) (!
   (=>
    (tr_bound%core!cmp.PartialEq. T&. T& U&. U&)
    (tr_bound%core!cmp.PartialEq. $ (SLICE T&. T&) $ (SLICE U&. U&))
   )
   :pattern ((tr_bound%core!cmp.PartialEq. $ (SLICE T&. T&) $ (SLICE U&. U&)))
   :qid internal_core__slice__cmp__impl&__0_trait_impl_definition
   :skolemid skolem_internal_core__slice__cmp__impl&__0_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%core!cmp.Eq. T&. T&)
    (tr_bound%core!cmp.Eq. $ (SLICE T&. T&))
   )
   :pattern ((tr_bound%core!cmp.Eq. $ (SLICE T&. T&)))
   :qid internal_core__slice__cmp__impl&__1_trait_impl_definition
   :skolemid skolem_internal_core__slice__cmp__impl&__1_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!cmp.PartialEq. (CONST_PTR $) (PTR T&. T&) (CONST_PTR $) (PTR T&. T&))
   :pattern ((tr_bound%core!cmp.PartialEq. (CONST_PTR $) (PTR T&. T&) (CONST_PTR $) (PTR
      T&. T&
   )))
   :qid internal_core__ptr__const_ptr__impl&__3_trait_impl_definition
   :skolemid skolem_internal_core__ptr__const_ptr__impl&__3_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!cmp.Eq. (CONST_PTR $) (PTR T&. T&))
   :pattern ((tr_bound%core!cmp.Eq. (CONST_PTR $) (PTR T&. T&)))
   :qid internal_core__ptr__const_ptr__impl&__4_trait_impl_definition
   :skolemid skolem_internal_core__ptr__const_ptr__impl&__4_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (N&. Dcr) (N& Type)) (!
   (=>
    (and
     (uInv SZ (const_int N&))
     (tr_bound%core!cmp.PartialEq. T&. T& U&. U&)
    )
    (tr_bound%core!cmp.PartialEq. $ (ARRAY T&. T& N&. N&) $ (ARRAY U&. U& N&. N&))
   )
   :pattern ((tr_bound%core!cmp.PartialEq. $ (ARRAY T&. T& N&. N&) $ (ARRAY U&. U& N&.
      N&
   )))
   :qid internal_core__array__equality__impl&__0_trait_impl_definition
   :skolemid skolem_internal_core__array__equality__impl&__0_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type)) (!
   (=>
    (and
     (uInv SZ (const_int N&))
     (tr_bound%core!cmp.Eq. T&. T&)
    )
    (tr_bound%core!cmp.Eq. $ (ARRAY T&. T& N&. N&))
   )
   :pattern ((tr_bound%core!cmp.Eq. $ (ARRAY T&. T& N&. N&)))
   :qid internal_core__array__equality__impl&__7_trait_impl_definition
   :skolemid skolem_internal_core__array__equality__impl&__7_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!marker.Freeze. (CONST_PTR $) (PTR T&. T&))
   :pattern ((tr_bound%core!marker.Freeze. (CONST_PTR $) (PTR T&. T&)))
   :qid internal_core__marker__impl&__59_trait_impl_definition
   :skolemid skolem_internal_core__marker__impl&__59_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!marker.Freeze. (REF T&.) T&)
   :pattern ((tr_bound%core!marker.Freeze. (REF T&.) T&))
   :qid internal_core__marker__impl&__61_trait_impl_definition
   :skolemid skolem_internal_core__marker__impl&__61_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!marker.Freeze. $ (PTR T&. T&))
   :pattern ((tr_bound%core!marker.Freeze. $ (PTR T&. T&)))
   :qid internal_core__marker__impl&__60_trait_impl_definition
   :skolemid skolem_internal_core__marker__impl&__60_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((U&. Dcr) (U& Type) (T&. Dcr) (T& Type)) (!
   (=>
    (and
     (tr_bound%core!fmt.Debug. U&. U&)
     (tr_bound%core!fmt.Debug. T&. T&)
    )
    (tr_bound%core!fmt.Debug. $ (TYPE%tuple%2. U&. U& T&. T&))
   )
   :pattern ((tr_bound%core!fmt.Debug. $ (TYPE%tuple%2. U&. U& T&. T&)))
   :qid internal_core__fmt__impl&__77_trait_impl_definition
   :skolemid skolem_internal_core__fmt__impl&__77_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!fmt.Debug. $ (PTR T&. T&))
   :pattern ((tr_bound%core!fmt.Debug. $ (PTR T&. T&)))
   :qid internal_core__fmt__impl&__23_trait_impl_definition
   :skolemid skolem_internal_core__fmt__impl&__23_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!fmt.Debug. $ (UINT SZ))
)

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
 (tr_bound%core!fmt.Debug. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%core!fmt.Debug. T&. T&)
    (tr_bound%core!fmt.Debug. $ (SLICE T&. T&))
   )
   :pattern ((tr_bound%core!fmt.Debug. $ (SLICE T&. T&)))
   :qid internal_core__fmt__impl&__24_trait_impl_definition
   :skolemid skolem_internal_core__fmt__impl&__24_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!fmt.Debug. (CONST_PTR $) (PTR T&. T&))
   :pattern ((tr_bound%core!fmt.Debug. (CONST_PTR $) (PTR T&. T&)))
   :qid internal_core__fmt__impl&__22_trait_impl_definition
   :skolemid skolem_internal_core__fmt__impl&__22_trait_impl_definition
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
 (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type)) (!
   (=>
    (and
     (uInv SZ (const_int N&))
     (tr_bound%core!fmt.Debug. T&. T&)
    )
    (tr_bound%core!fmt.Debug. $ (ARRAY T&. T& N&. N&))
   )
   :pattern ((tr_bound%core!fmt.Debug. $ (ARRAY T&. T& N&. N&)))
   :qid internal_core__array__impl&__12_trait_impl_definition
   :skolemid skolem_internal_core__array__impl&__12_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (N&. Dcr) (N& Type)) (!
   (=>
    (and
     (uInv SZ (const_int N&))
     (tr_bound%core!cmp.PartialEq. T&. T& U&. U&)
    )
    (tr_bound%core!cmp.PartialEq. (REF $) (SLICE T&. T&) $ (ARRAY U&. U& N&. N&))
   )
   :pattern ((tr_bound%core!cmp.PartialEq. (REF $) (SLICE T&. T&) $ (ARRAY U&. U& N&. N&)))
   :qid internal_core__array__equality__impl&__4_trait_impl_definition
   :skolemid skolem_internal_core__array__equality__impl&__4_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (N&. Dcr) (N& Type)) (!
   (=>
    (and
     (uInv SZ (const_int N&))
     (tr_bound%core!cmp.PartialEq. T&. T& U&. U&)
    )
    (tr_bound%core!cmp.PartialEq. $ (ARRAY T&. T& N&. N&) $ (SLICE U&. U&))
   )
   :pattern ((tr_bound%core!cmp.PartialEq. $ (ARRAY T&. T& N&. N&) $ (SLICE U&. U&)))
   :qid internal_core__array__equality__impl&__1_trait_impl_definition
   :skolemid skolem_internal_core__array__equality__impl&__1_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (N&. Dcr) (N& Type)) (!
   (=>
    (and
     (uInv SZ (const_int N&))
     (tr_bound%core!cmp.PartialEq. T&. T& U&. U&)
    )
    (tr_bound%core!cmp.PartialEq. $ (ARRAY T&. T& N&. N&) (REF $) (SLICE U&. U&))
   )
   :pattern ((tr_bound%core!cmp.PartialEq. $ (ARRAY T&. T& N&. N&) (REF $) (SLICE U&. U&)))
   :qid internal_core__array__equality__impl&__3_trait_impl_definition
   :skolemid skolem_internal_core__array__equality__impl&__3_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (N&. Dcr) (N& Type)) (!
   (=>
    (and
     (uInv SZ (const_int N&))
     (tr_bound%core!cmp.PartialEq. T&. T& U&. U&)
    )
    (tr_bound%core!cmp.PartialEq. $ (SLICE T&. T&) $ (ARRAY U&. U& N&. N&))
   )
   :pattern ((tr_bound%core!cmp.PartialEq. $ (SLICE T&. T&) $ (ARRAY U&. U& N&. N&)))
   :qid internal_core__array__equality__impl&__2_trait_impl_definition
   :skolemid skolem_internal_core__array__equality__impl&__2_trait_impl_definition
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
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!cmp.PartialOrd. $ (PTR T&. T&) $ (PTR T&. T&))
   :pattern ((tr_bound%core!cmp.PartialOrd. $ (PTR T&. T&) $ (PTR T&. T&)))
   :qid internal_core__ptr__mut_ptr__impl&__6_trait_impl_definition
   :skolemid skolem_internal_core__ptr__mut_ptr__impl&__6_trait_impl_definition
)))

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
 (forall ((T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%core!cmp.PartialOrd. T&. T& T&. T&)
    (tr_bound%core!cmp.PartialOrd. $ (SLICE T&. T&) $ (SLICE T&. T&))
   )
   :pattern ((tr_bound%core!cmp.PartialOrd. $ (SLICE T&. T&) $ (SLICE T&. T&)))
   :qid internal_core__slice__cmp__impl&__3_trait_impl_definition
   :skolemid skolem_internal_core__slice__cmp__impl&__3_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialOrd. $ TYPE%tuple%0. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type)) (!
   (=>
    (and
     (uInv SZ (const_int N&))
     (tr_bound%core!cmp.PartialOrd. T&. T& T&. T&)
    )
    (tr_bound%core!cmp.PartialOrd. $ (ARRAY T&. T& N&. N&) $ (ARRAY T&. T& N&. N&))
   )
   :pattern ((tr_bound%core!cmp.PartialOrd. $ (ARRAY T&. T& N&. N&) $ (ARRAY T&. T& N&.
      N&
   )))
   :qid internal_core__array__impl&__17_trait_impl_definition
   :skolemid skolem_internal_core__array__impl&__17_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%core!cmp.PartialOrd. T&. T& T&. T&)
    (tr_bound%core!cmp.PartialOrd. $ (TYPE%tuple%1. T&. T&) $ (TYPE%tuple%1. T&. T&))
   )
   :pattern ((tr_bound%core!cmp.PartialOrd. $ (TYPE%tuple%1. T&. T&) $ (TYPE%tuple%1. T&.
      T&
   )))
   :qid internal_core__tuple__impl&__6_trait_impl_definition
   :skolemid skolem_internal_core__tuple__impl&__6_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialOrd. $ BOOL $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.PartialOrd. $ (UINT SZ) $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!cmp.PartialOrd. (CONST_PTR $) (PTR T&. T&) (CONST_PTR $) (PTR T&. T&))
   :pattern ((tr_bound%core!cmp.PartialOrd. (CONST_PTR $) (PTR T&. T&) (CONST_PTR $) (
      PTR T&. T&
   )))
   :qid internal_core__ptr__const_ptr__impl&__6_trait_impl_definition
   :skolemid skolem_internal_core__ptr__const_ptr__impl&__6_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!cmp.Ord. $ (PTR T&. T&))
   :pattern ((tr_bound%core!cmp.Ord. $ (PTR T&. T&)))
   :qid internal_core__ptr__mut_ptr__impl&__5_trait_impl_definition
   :skolemid skolem_internal_core__ptr__mut_ptr__impl&__5_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.Ord. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!cmp.Ord. (CONST_PTR $) (PTR T&. T&))
   :pattern ((tr_bound%core!cmp.Ord. (CONST_PTR $) (PTR T&. T&)))
   :qid internal_core__ptr__const_ptr__impl&__5_trait_impl_definition
   :skolemid skolem_internal_core__ptr__const_ptr__impl&__5_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%core!cmp.Ord. T&. T&)
    (tr_bound%core!cmp.Ord. $ (TYPE%tuple%1. T&. T&))
   )
   :pattern ((tr_bound%core!cmp.Ord. $ (TYPE%tuple%1. T&. T&)))
   :qid internal_core__tuple__impl&__7_trait_impl_definition
   :skolemid skolem_internal_core__tuple__impl&__7_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.Ord. $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!cmp.Ord. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (=>
    (tr_bound%core!cmp.Ord. A&. A&)
    (tr_bound%core!cmp.Ord. (REF A&.) A&)
   )
   :pattern ((tr_bound%core!cmp.Ord. (REF A&.) A&))
   :qid internal_core__cmp__impls__impl&__11_trait_impl_definition
   :skolemid skolem_internal_core__cmp__impls__impl&__11_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((U&. Dcr) (U& Type) (T&. Dcr) (T& Type)) (!
   (=>
    (and
     (tr_bound%core!cmp.Ord. U&. U&)
     (tr_bound%core!cmp.Ord. T&. T&)
    )
    (tr_bound%core!cmp.Ord. $ (TYPE%tuple%2. U&. U& T&. T&))
   )
   :pattern ((tr_bound%core!cmp.Ord. $ (TYPE%tuple%2. U&. U& T&. T&)))
   :qid internal_core__tuple__impl&__16_trait_impl_definition
   :skolemid skolem_internal_core__tuple__impl&__16_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type)) (!
   (=>
    (and
     (uInv SZ (const_int N&))
     (tr_bound%core!cmp.Ord. T&. T&)
    )
    (tr_bound%core!cmp.Ord. $ (ARRAY T&. T& N&. N&))
   )
   :pattern ((tr_bound%core!cmp.Ord. $ (ARRAY T&. T& N&. N&)))
   :qid internal_core__array__impl&__18_trait_impl_definition
   :skolemid skolem_internal_core__array__impl&__18_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%core!cmp.Ord. T&. T&)
    (tr_bound%core!cmp.Ord. $ (SLICE T&. T&))
   )
   :pattern ((tr_bound%core!cmp.Ord. $ (SLICE T&. T&)))
   :qid internal_core__slice__cmp__impl&__2_trait_impl_definition
   :skolemid skolem_internal_core__slice__cmp__impl&__2_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!clone.Clone. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%core!hash.Hash. T&. T&)
    (tr_bound%core!hash.Hash. (REF T&.) T&)
   )
   :pattern ((tr_bound%core!hash.Hash. (REF T&.) T&))
   :qid internal_core__hash__impls__impl&__5_trait_impl_definition
   :skolemid skolem_internal_core__hash__impls__impl&__5_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (B&. Dcr) (B& Type)) (!
   (=>
    (and
     (tr_bound%core!hash.Hash. T&. T&)
     (tr_bound%core!hash.Hash. B&. B&)
    )
    (tr_bound%core!hash.Hash. $ (TYPE%tuple%2. T&. T& B&. B&))
   )
   :pattern ((tr_bound%core!hash.Hash. $ (TYPE%tuple%2. T&. T& B&. B&)))
   :qid internal_core__hash__impls__impl&__23_trait_impl_definition
   :skolemid skolem_internal_core__hash__impls__impl&__23_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!hash.Hash. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!hash.Hash. $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!hash.Hash. (CONST_PTR $) (PTR T&. T&))
   :pattern ((tr_bound%core!hash.Hash. (CONST_PTR $) (PTR T&. T&)))
   :qid internal_core__hash__impls__impl&__7_trait_impl_definition
   :skolemid skolem_internal_core__hash__impls__impl&__7_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type)) (!
   (=>
    (and
     (uInv SZ (const_int N&))
     (tr_bound%core!hash.Hash. T&. T&)
    )
    (tr_bound%core!hash.Hash. $ (ARRAY T&. T& N&. N&))
   )
   :pattern ((tr_bound%core!hash.Hash. $ (ARRAY T&. T& N&. N&)))
   :qid internal_core__array__impl&__11_trait_impl_definition
   :skolemid skolem_internal_core__array__impl&__11_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%core!hash.Hash. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%core!hash.Hash. T&. T&)
    (tr_bound%core!hash.Hash. $ (SLICE T&. T&))
   )
   :pattern ((tr_bound%core!hash.Hash. $ (SLICE T&. T&)))
   :qid internal_core__hash__impls__impl&__4_trait_impl_definition
   :skolemid skolem_internal_core__hash__impls__impl&__4_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!hash.Hash. $ (PTR T&. T&))
   :pattern ((tr_bound%core!hash.Hash. $ (PTR T&. T&)))
   :qid internal_core__hash__impls__impl&__8_trait_impl_definition
   :skolemid skolem_internal_core__hash__impls__impl&__8_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%core!hash.Hash. T&. T&)
    (tr_bound%core!hash.Hash. $ (TYPE%tuple%1. T&. T&))
   )
   :pattern ((tr_bound%core!hash.Hash. $ (TYPE%tuple%1. T&. T&)))
   :qid internal_core__hash__impls__impl&__22_trait_impl_definition
   :skolemid skolem_internal_core__hash__impls__impl&__22_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type) (N&. Dcr) (N& Type)) (!
   (=>
    (and
     (uInv SZ (const_int N&))
     (tr_bound%core!clone.Clone. T&. T&)
    )
    (tr_bound%core!clone.Clone. $ (ARRAY T&. T& N&. N&))
   )
   :pattern ((tr_bound%core!clone.Clone. $ (ARRAY T&. T& N&. N&)))
   :qid internal_core__array__impl&__20_trait_impl_definition
   :skolemid skolem_internal_core__array__impl&__20_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%core!clone.Clone. (CONST_PTR $) (PTR T&. T&))
   :pattern ((tr_bound%core!clone.Clone. (CONST_PTR $) (PTR T&. T&)))
   :qid internal_core__clone__impls__impl&__1_trait_impl_definition
   :skolemid skolem_internal_core__clone__impls__impl&__1_trait_impl_definition
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
   (tr_bound%core!clone.Clone. $ (PTR T&. T&))
   :pattern ((tr_bound%core!clone.Clone. $ (PTR T&. T&)))
   :qid internal_core__clone__impls__impl&__2_trait_impl_definition
   :skolemid skolem_internal_core__clone__impls__impl&__2_trait_impl_definition
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
