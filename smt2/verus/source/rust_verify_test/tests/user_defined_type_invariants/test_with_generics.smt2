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
(declare-const fuel%impl&%0.the_inv. FuelId)
(assert
 true
)

;; Datatypes
(declare-datatypes ((X. 0) (Y. 0) (tuple%0. 0)) (((X./X (X./X/?i Poly) (X./X/?j Poly)))
  ((Y./Y (Y./Y/?x X.))) ((tuple%0./tuple%0))
))
(declare-fun X./X/i (X.) Poly)
(declare-fun X./X/j (X.) Poly)
(declare-fun Y./Y/x (Y.) X.)
(declare-fun TYPE%X. (Dcr Type) Type)
(declare-fun TYPE%Y. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%X. (X.) Poly)
(declare-fun %Poly%X. (Poly) X.)
(declare-fun Poly%Y. (Y.) Poly)
(declare-fun %Poly%Y. (Poly) Y.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(assert
 (forall ((x X.)) (!
   (= x (%Poly%X. (Poly%X. x)))
   :pattern ((Poly%X. x))
   :qid internal_crate__X_box_axiom_definition
   :skolemid skolem_internal_crate__X_box_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%X. T&. T&))
    (= x (Poly%X. (%Poly%X. x)))
   )
   :pattern ((has_type x (TYPE%X. T&. T&)))
   :qid internal_crate__X_unbox_axiom_definition
   :skolemid skolem_internal_crate__X_unbox_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (_i! Poly) (_j! Poly)) (!
   (=>
    (and
     (has_type _i! T&)
     (has_type _j! T&)
    )
    (has_type (Poly%X. (X./X _i! _j!)) (TYPE%X. T&. T&))
   )
   :pattern ((has_type (Poly%X. (X./X _i! _j!)) (TYPE%X. T&. T&)))
   :qid internal_X./X_constructor_definition
   :skolemid skolem_internal_X./X_constructor_definition
)))
(assert
 (forall ((x X.)) (!
   (= (X./X/i x) (X./X/?i x))
   :pattern ((X./X/i x))
   :qid internal_X./X/i_accessor_definition
   :skolemid skolem_internal_X./X/i_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%X. T&. T&))
    (has_type (X./X/i (%Poly%X. x)) T&)
   )
   :pattern ((X./X/i (%Poly%X. x)) (has_type x (TYPE%X. T&. T&)))
   :qid internal_X./X/i_invariant_definition
   :skolemid skolem_internal_X./X/i_invariant_definition
)))
(assert
 (forall ((x X.)) (!
   (= (X./X/j x) (X./X/?j x))
   :pattern ((X./X/j x))
   :qid internal_X./X/j_accessor_definition
   :skolemid skolem_internal_X./X/j_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%X. T&. T&))
    (has_type (X./X/j (%Poly%X. x)) T&)
   )
   :pattern ((X./X/j (%Poly%X. x)) (has_type x (TYPE%X. T&. T&)))
   :qid internal_X./X/j_invariant_definition
   :skolemid skolem_internal_X./X/j_invariant_definition
)))
(assert
 (forall ((x X.)) (!
   (=>
    (is-X./X x)
    (height_lt (height (X./X/i x)) (height (Poly%X. x)))
   )
   :pattern ((height (X./X/i x)))
   :qid prelude_datatype_height_X./X/i
   :skolemid skolem_prelude_datatype_height_X./X/i
)))
(assert
 (forall ((x X.)) (!
   (=>
    (is-X./X x)
    (height_lt (height (X./X/j x)) (height (Poly%X. x)))
   )
   :pattern ((height (X./X/j x)))
   :qid prelude_datatype_height_X./X/j
   :skolemid skolem_prelude_datatype_height_X./X/j
)))
(assert
 (forall ((x Y.)) (!
   (= x (%Poly%Y. (Poly%Y. x)))
   :pattern ((Poly%Y. x))
   :qid internal_crate__Y_box_axiom_definition
   :skolemid skolem_internal_crate__Y_box_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%Y. T&. T&))
    (= x (Poly%Y. (%Poly%Y. x)))
   )
   :pattern ((has_type x (TYPE%Y. T&. T&)))
   :qid internal_crate__Y_unbox_axiom_definition
   :skolemid skolem_internal_crate__Y_unbox_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (_x! X.)) (!
   (=>
    (has_type (Poly%X. _x!) (TYPE%X. T&. T&))
    (has_type (Poly%Y. (Y./Y _x!)) (TYPE%Y. T&. T&))
   )
   :pattern ((has_type (Poly%Y. (Y./Y _x!)) (TYPE%Y. T&. T&)))
   :qid internal_Y./Y_constructor_definition
   :skolemid skolem_internal_Y./Y_constructor_definition
)))
(assert
 (forall ((x Y.)) (!
   (= (Y./Y/x x) (Y./Y/?x x))
   :pattern ((Y./Y/x x))
   :qid internal_Y./Y/x_accessor_definition
   :skolemid skolem_internal_Y./Y/x_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%Y. T&. T&))
    (has_type (Poly%X. (Y./Y/x (%Poly%Y. x))) (TYPE%X. T&. T&))
   )
   :pattern ((Y./Y/x (%Poly%Y. x)) (has_type x (TYPE%Y. T&. T&)))
   :qid internal_Y./Y/x_invariant_definition
   :skolemid skolem_internal_Y./Y/x_invariant_definition
)))
(assert
 (forall ((x Y.)) (!
   (=>
    (is-Y./Y x)
    (height_lt (height (Poly%X. (Y./Y/x x))) (height (Poly%Y. x)))
   )
   :pattern ((height (Poly%X. (Y./Y/x x))))
   :qid prelude_datatype_height_Y./Y/x
   :skolemid skolem_prelude_datatype_height_Y./Y/x
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

;; Function-Decl crate::X::the_inv
(declare-fun impl&%0.the_inv.? (Dcr Type Poly) Bool)

;; Function-Axioms crate::X::the_inv
(assert
 (fuel_bool_default fuel%impl&%0.the_inv.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%0.the_inv.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (impl&%0.the_inv.? T&. T& self!) (= (X./X/i (%Poly%X. self!)) (X./X/j (%Poly%X. self!))))
    :pattern ((impl&%0.the_inv.? T&. T& self!))
    :qid internal_impl&__0.the_inv.?_definition
    :skolemid skolem_internal_impl&__0.the_inv.?_definition
))))

;; Function-Def crate::test_ok
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-test_with_generics/test.rs:31:1: 31:13 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 X.)
 (declare-const tmp%2 Bool)
 (declare-const x@ X.)
 (assert
  fuel_defaults
 )
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%1 (X./X (I 5) (I 5)))
    (=>
     (= tmp%2 (impl&%0.the_inv.? $ (UINT 8) (Poly%X. tmp%1)))
     (=>
      %%location_label%%0
      tmp%2
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test_fail
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-test_with_generics/test.rs:35:1: 35:15 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 X.)
 (declare-const tmp%2 Bool)
 (declare-const x@ X.)
 (assert
  fuel_defaults
 )
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%1 (X./X (I 5) (I 7)))
    (=>
     (= tmp%2 (impl&%0.the_inv.? $ (UINT 8) (Poly%X. tmp%1)))
     (=>
      %%location_label%%0
      tmp%2
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

;; Function-Recommends crate::test_fail
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-test_with_generics/test.rs:35:1: 35:15 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 X.)
 (declare-const x@ X.)
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

;; Function-Def crate::test_ok2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-test_with_generics/test.rs:39:1: 39:27 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const a! Poly)
 (declare-const tmp%1 X.)
 (declare-const tmp%2 Bool)
 (declare-const x@ X.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type a! T&)
 )
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%1 (X./X a! a!))
    (=>
     (= tmp%2 (impl&%0.the_inv.? T&. T& (Poly%X. tmp%1)))
     (=>
      %%location_label%%0
      tmp%2
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test_fail2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-test_with_generics/test.rs:43:1: 43:29 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const a! Poly)
 (declare-const b! Poly)
 (declare-const tmp%1 X.)
 (declare-const tmp%2 Bool)
 (declare-const x@ X.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type a! T&)
 )
 (assert
  (has_type b! T&)
 )
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%1 (X./X a! b!))
    (=>
     (= tmp%2 (impl&%0.the_inv.? T&. T& (Poly%X. tmp%1)))
     (=>
      %%location_label%%0
      tmp%2
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

;; Function-Recommends crate::test_fail2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-test_with_generics/test.rs:43:1: 43:29 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const a! Poly)
 (declare-const b! Poly)
 (declare-const tmp%1 X.)
 (declare-const x@ X.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type a! T&)
 )
 (assert
  (has_type b! T&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::test_fail3
(declare-fun ens%test_fail3. (Dcr Type X. X. Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (pre%a! X.) (a! X.) (b! Poly)) (!
   (= (ens%test_fail3. T&. T& pre%a! a! b!) (has_type (Poly%X. a!) (TYPE%X. T&. T&)))
   :pattern ((ens%test_fail3. T&. T& pre%a! a! b!))
   :qid internal_ens__test_fail3._definition
   :skolemid skolem_internal_ens__test_fail3._definition
)))

;; Function-Def crate::test_fail3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-test_with_generics/test.rs:47:1: 47:37 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const a!@0 X.)
 (declare-const b! Poly)
 (declare-const tmp%1 X.)
 (declare-const tmp%2 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%X. a!@0) (TYPE%X. T&. T&))
 )
 (assert
  (has_type b! T&)
 )
 (declare-const a!@1 X.)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= (X./X/i (%Poly%X. (Poly%X. a!@1))) b!)
    (=>
     (and
      (= (X./X/j a!@0) (X./X/j a!@1))
     )
     (=>
      (= tmp%1 a!@1)
      (=>
       (= tmp%2 (impl&%0.the_inv.? T&. T& (Poly%X. tmp%1)))
       (=>
        %%location_label%%0
        tmp%2
 )))))))
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

;; Function-Recommends crate::test_fail3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-test_with_generics/test.rs:47:1: 47:37 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const a!@0 X.)
 (declare-const b! Poly)
 (declare-const tmp%1 X.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%X. a!@0) (TYPE%X. T&. T&))
 )
 (assert
  (has_type b! T&)
 )
 (declare-const a!@1 X.)
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::test_fail4
(declare-fun ens%test_fail4. (Dcr Type Y. Y. Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (pre%a! Y.) (a! Y.) (b! Poly)) (!
   (= (ens%test_fail4. T&. T& pre%a! a! b!) (has_type (Poly%Y. a!) (TYPE%Y. T&. T&)))
   :pattern ((ens%test_fail4. T&. T& pre%a! a! b!))
   :qid internal_ens__test_fail4._definition
   :skolemid skolem_internal_ens__test_fail4._definition
)))

;; Function-Def crate::test_fail4
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-test_with_generics/test.rs:51:1: 51:37 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const a!@0 Y.)
 (declare-const b! Poly)
 (declare-const tmp%1 X.)
 (declare-const tmp%2 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%Y. a!@0) (TYPE%Y. T&. T&))
 )
 (assert
  (has_type b! T&)
 )
 (declare-const a!@1 Y.)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= (X./X/i (%Poly%X. (Poly%X. (Y./Y/x (%Poly%Y. (Poly%Y. a!@1)))))) b!)
    (=>
     (and
      (= (X./X/j (Y./Y/x a!@0)) (X./X/j (Y./Y/x a!@1)))
     )
     (=>
      (= tmp%1 (Y./Y/x (%Poly%Y. (Poly%Y. a!@1))))
      (=>
       (= tmp%2 (impl&%0.the_inv.? T&. T& (Poly%X. tmp%1)))
       (=>
        %%location_label%%0
        tmp%2
 )))))))
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

;; Function-Recommends crate::test_fail4
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-test_with_generics/test.rs:51:1: 51:37 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const a!@0 Y.)
 (declare-const b! Poly)
 (declare-const tmp%1 X.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%Y. a!@0) (TYPE%Y. T&. T&))
 )
 (assert
  (has_type b! T&)
 )
 (declare-const a!@1 Y.)
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
