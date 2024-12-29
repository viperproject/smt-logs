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
(declare-const fuel%impl&%0.comp. FuelId)
(declare-const fuel%impl&%4.comp. FuelId)
(assert
 (distinct fuel%impl&%0.comp. fuel%impl&%4.comp.)
)

;; Datatypes
(declare-datatypes ((X. 0) (Y. 0) (Y2. 0) (Y3. 0) (tuple%0. 0) (tuple%3. 0)) (((X./X
    (X./X/?b Poly)
   )
  ) ((Y./Y (Y./Y/?b Poly))) ((Y2./Y2 (Y2./Y2/?b Poly))) ((Y3./Y3 (Y3./Y3/?b Poly)))
  ((tuple%0./tuple%0)) ((tuple%3./tuple%3 (tuple%3./tuple%3/?0 Poly) (tuple%3./tuple%3/?1
     Poly
    ) (tuple%3./tuple%3/?2 Poly)
))))
(declare-fun X./X/b (X.) Poly)
(declare-fun Y./Y/b (Y.) Poly)
(declare-fun Y2./Y2/b (Y2.) Poly)
(declare-fun Y3./Y3/b (Y3.) Poly)
(declare-fun tuple%3./tuple%3/0 (tuple%3.) Poly)
(declare-fun tuple%3./tuple%3/1 (tuple%3.) Poly)
(declare-fun tuple%3./tuple%3/2 (tuple%3.) Poly)
(declare-fun TYPE%X. (Dcr Type) Type)
(declare-fun TYPE%Y. (Dcr Type) Type)
(declare-fun TYPE%Y2. (Dcr Type) Type)
(declare-fun TYPE%Y3. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%3. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun Poly%X. (X.) Poly)
(declare-fun %Poly%X. (Poly) X.)
(declare-fun Poly%Y. (Y.) Poly)
(declare-fun %Poly%Y. (Poly) Y.)
(declare-fun Poly%Y2. (Y2.) Poly)
(declare-fun %Poly%Y2. (Poly) Y2.)
(declare-fun Poly%Y3. (Y3.) Poly)
(declare-fun %Poly%Y3. (Poly) Y3.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%3. (tuple%3.) Poly)
(declare-fun %Poly%tuple%3. (Poly) tuple%3.)
(assert
 (forall ((x X.)) (!
   (= x (%Poly%X. (Poly%X. x)))
   :pattern ((Poly%X. x))
   :qid internal_crate__X_box_axiom_definition
   :skolemid skolem_internal_crate__X_box_axiom_definition
)))
(assert
 (forall ((B&. Dcr) (B& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%X. B&. B&))
    (= x (Poly%X. (%Poly%X. x)))
   )
   :pattern ((has_type x (TYPE%X. B&. B&)))
   :qid internal_crate__X_unbox_axiom_definition
   :skolemid skolem_internal_crate__X_unbox_axiom_definition
)))
(assert
 (forall ((B&. Dcr) (B& Type) (_b! Poly)) (!
   (=>
    (has_type _b! B&)
    (has_type (Poly%X. (X./X _b!)) (TYPE%X. B&. B&))
   )
   :pattern ((has_type (Poly%X. (X./X _b!)) (TYPE%X. B&. B&)))
   :qid internal_X./X_constructor_definition
   :skolemid skolem_internal_X./X_constructor_definition
)))
(assert
 (forall ((x X.)) (!
   (= (X./X/b x) (X./X/?b x))
   :pattern ((X./X/b x))
   :qid internal_X./X/b_accessor_definition
   :skolemid skolem_internal_X./X/b_accessor_definition
)))
(assert
 (forall ((B&. Dcr) (B& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%X. B&. B&))
    (has_type (X./X/b (%Poly%X. x)) B&)
   )
   :pattern ((X./X/b (%Poly%X. x)) (has_type x (TYPE%X. B&. B&)))
   :qid internal_X./X/b_invariant_definition
   :skolemid skolem_internal_X./X/b_invariant_definition
)))
(assert
 (forall ((x X.)) (!
   (=>
    (is-X./X x)
    (height_lt (height (X./X/b x)) (height (Poly%X. x)))
   )
   :pattern ((height (X./X/b x)))
   :qid prelude_datatype_height_X./X/b
   :skolemid skolem_prelude_datatype_height_X./X/b
)))
(assert
 (forall ((x Y.)) (!
   (= x (%Poly%Y. (Poly%Y. x)))
   :pattern ((Poly%Y. x))
   :qid internal_crate__Y_box_axiom_definition
   :skolemid skolem_internal_crate__Y_box_axiom_definition
)))
(assert
 (forall ((B&. Dcr) (B& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%Y. B&. B&))
    (= x (Poly%Y. (%Poly%Y. x)))
   )
   :pattern ((has_type x (TYPE%Y. B&. B&)))
   :qid internal_crate__Y_unbox_axiom_definition
   :skolemid skolem_internal_crate__Y_unbox_axiom_definition
)))
(assert
 (forall ((B&. Dcr) (B& Type) (_b! Poly)) (!
   (=>
    (has_type _b! B&)
    (has_type (Poly%Y. (Y./Y _b!)) (TYPE%Y. B&. B&))
   )
   :pattern ((has_type (Poly%Y. (Y./Y _b!)) (TYPE%Y. B&. B&)))
   :qid internal_Y./Y_constructor_definition
   :skolemid skolem_internal_Y./Y_constructor_definition
)))
(assert
 (forall ((x Y.)) (!
   (= (Y./Y/b x) (Y./Y/?b x))
   :pattern ((Y./Y/b x))
   :qid internal_Y./Y/b_accessor_definition
   :skolemid skolem_internal_Y./Y/b_accessor_definition
)))
(assert
 (forall ((B&. Dcr) (B& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%Y. B&. B&))
    (has_type (Y./Y/b (%Poly%Y. x)) B&)
   )
   :pattern ((Y./Y/b (%Poly%Y. x)) (has_type x (TYPE%Y. B&. B&)))
   :qid internal_Y./Y/b_invariant_definition
   :skolemid skolem_internal_Y./Y/b_invariant_definition
)))
(assert
 (forall ((x Y.)) (!
   (=>
    (is-Y./Y x)
    (height_lt (height (Y./Y/b x)) (height (Poly%Y. x)))
   )
   :pattern ((height (Y./Y/b x)))
   :qid prelude_datatype_height_Y./Y/b
   :skolemid skolem_prelude_datatype_height_Y./Y/b
)))
(assert
 (forall ((x Y2.)) (!
   (= x (%Poly%Y2. (Poly%Y2. x)))
   :pattern ((Poly%Y2. x))
   :qid internal_crate__Y2_box_axiom_definition
   :skolemid skolem_internal_crate__Y2_box_axiom_definition
)))
(assert
 (forall ((B&. Dcr) (B& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%Y2. B&. B&))
    (= x (Poly%Y2. (%Poly%Y2. x)))
   )
   :pattern ((has_type x (TYPE%Y2. B&. B&)))
   :qid internal_crate__Y2_unbox_axiom_definition
   :skolemid skolem_internal_crate__Y2_unbox_axiom_definition
)))
(assert
 (forall ((B&. Dcr) (B& Type) (_b! Poly)) (!
   (=>
    (has_type _b! B&)
    (has_type (Poly%Y2. (Y2./Y2 _b!)) (TYPE%Y2. B&. B&))
   )
   :pattern ((has_type (Poly%Y2. (Y2./Y2 _b!)) (TYPE%Y2. B&. B&)))
   :qid internal_Y2./Y2_constructor_definition
   :skolemid skolem_internal_Y2./Y2_constructor_definition
)))
(assert
 (forall ((x Y2.)) (!
   (= (Y2./Y2/b x) (Y2./Y2/?b x))
   :pattern ((Y2./Y2/b x))
   :qid internal_Y2./Y2/b_accessor_definition
   :skolemid skolem_internal_Y2./Y2/b_accessor_definition
)))
(assert
 (forall ((B&. Dcr) (B& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%Y2. B&. B&))
    (has_type (Y2./Y2/b (%Poly%Y2. x)) B&)
   )
   :pattern ((Y2./Y2/b (%Poly%Y2. x)) (has_type x (TYPE%Y2. B&. B&)))
   :qid internal_Y2./Y2/b_invariant_definition
   :skolemid skolem_internal_Y2./Y2/b_invariant_definition
)))
(assert
 (forall ((x Y2.)) (!
   (=>
    (is-Y2./Y2 x)
    (height_lt (height (Y2./Y2/b x)) (height (Poly%Y2. x)))
   )
   :pattern ((height (Y2./Y2/b x)))
   :qid prelude_datatype_height_Y2./Y2/b
   :skolemid skolem_prelude_datatype_height_Y2./Y2/b
)))
(assert
 (forall ((x Y3.)) (!
   (= x (%Poly%Y3. (Poly%Y3. x)))
   :pattern ((Poly%Y3. x))
   :qid internal_crate__Y3_box_axiom_definition
   :skolemid skolem_internal_crate__Y3_box_axiom_definition
)))
(assert
 (forall ((B&. Dcr) (B& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%Y3. B&. B&))
    (= x (Poly%Y3. (%Poly%Y3. x)))
   )
   :pattern ((has_type x (TYPE%Y3. B&. B&)))
   :qid internal_crate__Y3_unbox_axiom_definition
   :skolemid skolem_internal_crate__Y3_unbox_axiom_definition
)))
(assert
 (forall ((B&. Dcr) (B& Type) (_b! Poly)) (!
   (=>
    (has_type _b! B&)
    (has_type (Poly%Y3. (Y3./Y3 _b!)) (TYPE%Y3. B&. B&))
   )
   :pattern ((has_type (Poly%Y3. (Y3./Y3 _b!)) (TYPE%Y3. B&. B&)))
   :qid internal_Y3./Y3_constructor_definition
   :skolemid skolem_internal_Y3./Y3_constructor_definition
)))
(assert
 (forall ((x Y3.)) (!
   (= (Y3./Y3/b x) (Y3./Y3/?b x))
   :pattern ((Y3./Y3/b x))
   :qid internal_Y3./Y3/b_accessor_definition
   :skolemid skolem_internal_Y3./Y3/b_accessor_definition
)))
(assert
 (forall ((B&. Dcr) (B& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%Y3. B&. B&))
    (has_type (Y3./Y3/b (%Poly%Y3. x)) B&)
   )
   :pattern ((Y3./Y3/b (%Poly%Y3. x)) (has_type x (TYPE%Y3. B&. B&)))
   :qid internal_Y3./Y3/b_invariant_definition
   :skolemid skolem_internal_Y3./Y3/b_invariant_definition
)))
(assert
 (forall ((x Y3.)) (!
   (=>
    (is-Y3./Y3 x)
    (height_lt (height (Y3./Y3/b x)) (height (Poly%Y3. x)))
   )
   :pattern ((height (Y3./Y3/b x)))
   :qid prelude_datatype_height_Y3./Y3/b
   :skolemid skolem_prelude_datatype_height_Y3./Y3/b
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

;; Traits
(declare-fun tr_bound%Compare. (Dcr Type) Bool)
(declare-fun tr_bound%Tr. (Dcr Type Dcr Type) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%Compare. Self%&. Self%&))
   :qid internal_crate__Compare_trait_type_bounds_definition
   :skolemid skolem_internal_crate__Compare_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (B&. Dcr) (B& Type)) (!
   (=>
    (tr_bound%Tr. Self%&. Self%& B&. B&)
    (tr_bound%Compare. B&. B&)
   )
   :pattern ((tr_bound%Tr. Self%&. Self%& B&. B&))
   :qid internal_crate__Tr_trait_type_bounds_definition
   :skolemid skolem_internal_crate__Tr_trait_type_bounds_definition
)))

;; Function-Decl crate::Compare::comp
(declare-fun Compare.comp.? (Dcr Type Poly Poly) Poly)
(declare-fun Compare.comp%default%.? (Dcr Type Poly Poly) Poly)

;; Function-Axioms crate::Compare::comp
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (other! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type other! Self%&)
    )
    (has_type (Compare.comp.? Self%&. Self%& self! other!) BOOL)
   )
   :pattern ((Compare.comp.? Self%&. Self%& self! other!))
   :qid internal_Compare.comp.?_pre_post_definition
   :skolemid skolem_internal_Compare.comp.?_pre_post_definition
)))

;; Function-Specs crate::Tr::stuff
(declare-fun req%Tr.stuff. (Dcr Type Dcr Type Poly Poly Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (B&. Dcr) (B& Type) (a! Poly) (b! Poly) (c! Poly))
  (!
   (= (req%Tr.stuff. Self%&. Self%& B&. B& a! b! c!) (and
     (=>
      %%global_location_label%%0
      (%B (Compare.comp.? B&. B& a! b!))
     )
     (=>
      %%global_location_label%%1
      (%B (Compare.comp.? B&. B& b! c!))
   )))
   :pattern ((req%Tr.stuff. Self%&. Self%& B&. B& a! b! c!))
   :qid internal_req__Tr.stuff._definition
   :skolemid skolem_internal_req__Tr.stuff._definition
)))
(declare-fun ens%Tr.stuff. (Dcr Type Dcr Type Poly Poly Poly Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (B&. Dcr) (B& Type) (a! Poly) (b! Poly) (c! Poly)
   (res! Poly)
  ) (!
   (= (ens%Tr.stuff. Self%&. Self%& B&. B& a! b! c! res!) (and
     (has_type res! (TYPE%tuple%3. B&. B& B&. B& B&. B&))
     (%B (Compare.comp.? B&. B& (tuple%3./tuple%3/0 (%Poly%tuple%3. res!)) (tuple%3./tuple%3/1
        (%Poly%tuple%3. res!)
   )))))
   :pattern ((ens%Tr.stuff. Self%&. Self%& B&. B& a! b! c! res!))
   :qid internal_ens__Tr.stuff._definition
   :skolemid skolem_internal_ens__Tr.stuff._definition
)))

;; Function-Axioms crate::X::comp
(assert
 (fuel_bool_default fuel%impl&%0.comp.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%0.comp.)
  (forall ((B&. Dcr) (B& Type) (self! Poly) (other! Poly)) (!
    (=>
     (tr_bound%Compare. B&. B&)
     (= (Compare.comp.? $ (TYPE%X. B&. B&) self! other!) (Compare.comp.? B&. B& (X./X/b (
         %Poly%X. other!
        )
       ) (X./X/b (%Poly%X. self!))
    )))
    :pattern ((Compare.comp.? $ (TYPE%X. B&. B&) self! other!))
    :qid internal_Compare.comp.?_definition
    :skolemid skolem_internal_Compare.comp.?_definition
))))

;; Function-Axioms crate::impl&%4::comp
(assert
 (fuel_bool_default fuel%impl&%4.comp.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%4.comp.)
  (forall ((self! Poly) (other! Poly)) (!
    (= (Compare.comp.? $ (UINT 8) self! other!) (B (= (%I self!) (Add (%I other!) 1))))
    :pattern ((Compare.comp.? $ (UINT 8) self! other!))
    :qid internal_Compare.comp.?_definition
    :skolemid skolem_internal_Compare.comp.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (forall ((B&. Dcr) (B& Type)) (!
   (=>
    (tr_bound%Compare. B&. B&)
    (tr_bound%Compare. $ (TYPE%X. B&. B&))
   )
   :pattern ((tr_bound%Compare. $ (TYPE%X. B&. B&)))
   :qid internal_crate__impl&__0_trait_impl_definition
   :skolemid skolem_internal_crate__impl&__0_trait_impl_definition
)))

;; Function-Specs crate::Y::stuff
(declare-fun ens%impl&%1.stuff. (Dcr Type Poly Poly Poly Poly) Bool)
(assert
 (forall ((B&. Dcr) (B& Type) (a! Poly) (b! Poly) (c! Poly) (res! Poly)) (!
   (= (ens%impl&%1.stuff. B&. B& a! b! c! res!) (and
     (ens%Tr.stuff. $ (TYPE%Y. B&. B&) $ (TYPE%X. B&. B&) a! b! c! res!)
     (%B (Compare.comp.? $ (TYPE%X. B&. B&) (tuple%3./tuple%3/1 (%Poly%tuple%3. res!)) (
        tuple%3./tuple%3/2 (%Poly%tuple%3. res!)
   )))))
   :pattern ((ens%impl&%1.stuff. B&. B& a! b! c! res!))
   :qid internal_ens__impl&__1.stuff._definition
   :skolemid skolem_internal_ens__impl&__1.stuff._definition
)))

;; Function-Def crate::Y::stuff
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/traits_extend_ensures-c9c47fc5e5a45603-test_trait_arg4/test.rs:36:11: 36:74 (#0)
(get-info :all-statistics)
(push)
 (declare-const B&. Dcr)
 (declare-const B& Type)
 (declare-const res! Poly)
 (declare-const a! Poly)
 (declare-const b! Poly)
 (declare-const c! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type a! (TYPE%X. B&. B&))
 )
 (assert
  (has_type b! (TYPE%X. B&. B&))
 )
 (assert
  (has_type c! (TYPE%X. B&. B&))
 )
 (assert
  (tr_bound%Compare. B&. B&)
 )
 (assert
  (%B (Compare.comp.? $ (TYPE%X. B&. B&) a! b!))
 )
 (assert
  (%B (Compare.comp.? $ (TYPE%X. B&. B&) b! c!))
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= res! (Poly%tuple%3. (tuple%3./tuple%3 a! a! b!)))
    (and
     (=>
      %%location_label%%0
      (%B (Compare.comp.? $ (TYPE%X. B&. B&) (tuple%3./tuple%3/0 (%Poly%tuple%3. res!)) (
         tuple%3./tuple%3/1 (%Poly%tuple%3. res!)
     ))))
     (=>
      %%location_label%%1
      (%B (Compare.comp.? $ (TYPE%X. B&. B&) (tuple%3./tuple%3/1 (%Poly%tuple%3. res!)) (
         tuple%3./tuple%3/2 (%Poly%tuple%3. res!)
 ))))))))
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

;; Function-Recommends crate::Y::stuff
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/traits_extend_ensures-c9c47fc5e5a45603-test_trait_arg4/test.rs:36:11: 36:74 (#0)
(get-info :all-statistics)
(push)
 (declare-const B&. Dcr)
 (declare-const B& Type)
 (declare-const res! Poly)
 (declare-const a! Poly)
 (declare-const b! Poly)
 (declare-const c! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type a! (TYPE%X. B&. B&))
 )
 (assert
  (has_type b! (TYPE%X. B&. B&))
 )
 (assert
  (has_type c! (TYPE%X. B&. B&))
 )
 (assert
  (tr_bound%Compare. B&. B&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Trait-Impl-Axiom
(assert
 (forall ((B&. Dcr) (B& Type)) (!
   (=>
    (tr_bound%Compare. B&. B&)
    (tr_bound%Tr. $ (TYPE%Y. B&. B&) $ (TYPE%X. B&. B&))
   )
   :pattern ((tr_bound%Tr. $ (TYPE%Y. B&. B&) $ (TYPE%X. B&. B&)))
   :qid internal_crate__impl&__1_trait_impl_definition
   :skolemid skolem_internal_crate__impl&__1_trait_impl_definition
)))

;; Function-Specs crate::Y2::stuff
(declare-fun ens%impl&%2.stuff. (Dcr Type Poly Poly Poly Poly) Bool)
(assert
 (forall ((B&. Dcr) (B& Type) (a! Poly) (b! Poly) (c! Poly) (res! Poly)) (!
   (= (ens%impl&%2.stuff. B&. B& a! b! c! res!) (and
     (ens%Tr.stuff. $ (TYPE%Y2. B&. B&) $ (TYPE%X. B&. B&) a! b! c! res!)
     (%B (Compare.comp.? $ (TYPE%X. B&. B&) (tuple%3./tuple%3/1 (%Poly%tuple%3. res!)) (
        tuple%3./tuple%3/2 (%Poly%tuple%3. res!)
   )))))
   :pattern ((ens%impl&%2.stuff. B&. B& a! b! c! res!))
   :qid internal_ens__impl&__2.stuff._definition
   :skolemid skolem_internal_ens__impl&__2.stuff._definition
)))

;; Function-Def crate::Y2::stuff
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/traits_extend_ensures-c9c47fc5e5a45603-test_trait_arg4/test.rs:46:11: 46:74 (#0)
(get-info :all-statistics)
(push)
 (declare-const B&. Dcr)
 (declare-const B& Type)
 (declare-const res! Poly)
 (declare-const a! Poly)
 (declare-const b! Poly)
 (declare-const c! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type a! (TYPE%X. B&. B&))
 )
 (assert
  (has_type b! (TYPE%X. B&. B&))
 )
 (assert
  (has_type c! (TYPE%X. B&. B&))
 )
 (assert
  (tr_bound%Compare. B&. B&)
 )
 (assert
  (%B (Compare.comp.? $ (TYPE%X. B&. B&) a! b!))
 )
 (assert
  (%B (Compare.comp.? $ (TYPE%X. B&. B&) b! c!))
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= res! (Poly%tuple%3. (tuple%3./tuple%3 a! a! b!)))
    (and
     (=>
      %%location_label%%0
      (%B (Compare.comp.? $ (TYPE%X. B&. B&) (tuple%3./tuple%3/0 (%Poly%tuple%3. res!)) (
         tuple%3./tuple%3/1 (%Poly%tuple%3. res!)
     ))))
     (=>
      %%location_label%%1
      (%B (Compare.comp.? $ (TYPE%X. B&. B&) (tuple%3./tuple%3/1 (%Poly%tuple%3. res!)) (
         tuple%3./tuple%3/2 (%Poly%tuple%3. res!)
 ))))))))
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

;; Function-Recommends crate::Y2::stuff
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/traits_extend_ensures-c9c47fc5e5a45603-test_trait_arg4/test.rs:46:11: 46:74 (#0)
(get-info :all-statistics)
(push)
 (declare-const B&. Dcr)
 (declare-const B& Type)
 (declare-const res! Poly)
 (declare-const a! Poly)
 (declare-const b! Poly)
 (declare-const c! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type a! (TYPE%X. B&. B&))
 )
 (assert
  (has_type b! (TYPE%X. B&. B&))
 )
 (assert
  (has_type c! (TYPE%X. B&. B&))
 )
 (assert
  (tr_bound%Compare. B&. B&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Trait-Impl-Axiom
(assert
 (forall ((B&. Dcr) (B& Type)) (!
   (=>
    (tr_bound%Compare. B&. B&)
    (tr_bound%Tr. $ (TYPE%Y2. B&. B&) $ (TYPE%X. B&. B&))
   )
   :pattern ((tr_bound%Tr. $ (TYPE%Y2. B&. B&) $ (TYPE%X. B&. B&)))
   :qid internal_crate__impl&__2_trait_impl_definition
   :skolemid skolem_internal_crate__impl&__2_trait_impl_definition
)))

;; Function-Specs crate::Y3::stuff
(declare-fun ens%impl&%3.stuff. (Dcr Type Poly Poly Poly Poly) Bool)
(assert
 (forall ((B&. Dcr) (B& Type) (a! Poly) (b! Poly) (c! Poly) (res! Poly)) (!
   (= (ens%impl&%3.stuff. B&. B& a! b! c! res!) (and
     (ens%Tr.stuff. $ (TYPE%Y3. B&. B&) $ (TYPE%X. B&. B&) a! b! c! res!)
     (%B (Compare.comp.? $ (TYPE%X. B&. B&) (tuple%3./tuple%3/1 (%Poly%tuple%3. res!)) (
        tuple%3./tuple%3/2 (%Poly%tuple%3. res!)
   )))))
   :pattern ((ens%impl&%3.stuff. B&. B& a! b! c! res!))
   :qid internal_ens__impl&__3.stuff._definition
   :skolemid skolem_internal_ens__impl&__3.stuff._definition
)))

;; Function-Def crate::Y3::stuff
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/traits_extend_ensures-c9c47fc5e5a45603-test_trait_arg4/test.rs:56:11: 56:74 (#0)
(get-info :all-statistics)
(push)
 (declare-const B&. Dcr)
 (declare-const B& Type)
 (declare-const res! Poly)
 (declare-const a! Poly)
 (declare-const b! Poly)
 (declare-const c! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type a! (TYPE%X. B&. B&))
 )
 (assert
  (has_type b! (TYPE%X. B&. B&))
 )
 (assert
  (has_type c! (TYPE%X. B&. B&))
 )
 (assert
  (tr_bound%Compare. B&. B&)
 )
 (assert
  (%B (Compare.comp.? $ (TYPE%X. B&. B&) a! b!))
 )
 (assert
  (%B (Compare.comp.? $ (TYPE%X. B&. B&) b! c!))
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= res! (Poly%tuple%3. (tuple%3./tuple%3 a! b! c!)))
    (and
     (=>
      %%location_label%%0
      (%B (Compare.comp.? $ (TYPE%X. B&. B&) (tuple%3./tuple%3/0 (%Poly%tuple%3. res!)) (
         tuple%3./tuple%3/1 (%Poly%tuple%3. res!)
     ))))
     (=>
      %%location_label%%1
      (%B (Compare.comp.? $ (TYPE%X. B&. B&) (tuple%3./tuple%3/1 (%Poly%tuple%3. res!)) (
         tuple%3./tuple%3/2 (%Poly%tuple%3. res!)
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Trait-Impl-Axiom
(assert
 (forall ((B&. Dcr) (B& Type)) (!
   (=>
    (tr_bound%Compare. B&. B&)
    (tr_bound%Tr. $ (TYPE%Y3. B&. B&) $ (TYPE%X. B&. B&))
   )
   :pattern ((tr_bound%Tr. $ (TYPE%Y3. B&. B&) $ (TYPE%X. B&. B&)))
   :qid internal_crate__impl&__3_trait_impl_definition
   :skolemid skolem_internal_crate__impl&__3_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%Compare. $ (UINT 8))
)

;; Function-Specs crate::test
(declare-fun req%test. (X. X. X.) Bool)
(declare-const %%global_location_label%%2 Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((a! X.) (b! X.) (c! X.)) (!
   (= (req%test. a! b! c!) (and
     (=>
      %%global_location_label%%2
      (%B (Compare.comp.? $ (TYPE%X. $ (UINT 8)) (Poly%X. a!) (Poly%X. b!)))
     )
     (=>
      %%global_location_label%%3
      (%B (Compare.comp.? $ (TYPE%X. $ (UINT 8)) (Poly%X. b!) (Poly%X. c!)))
   )))
   :pattern ((req%test. a! b! c!))
   :qid internal_req__test._definition
   :skolemid skolem_internal_req__test._definition
)))

;; Function-Def crate::test
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/traits_extend_ensures-c9c47fc5e5a45603-test_trait_arg4/test.rs:69:7: 69:44 (#0)
(get-info :all-statistics)
(push)
 (declare-const a! X.)
 (declare-const b! X.)
 (declare-const c! X.)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const r@ tuple%3.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%X. a!) (TYPE%X. $ (UINT 8)))
 )
 (assert
  (has_type (Poly%X. b!) (TYPE%X. $ (UINT 8)))
 )
 (assert
  (has_type (Poly%X. c!) (TYPE%X. $ (UINT 8)))
 )
 (assert
  (%B (Compare.comp.? $ (TYPE%X. $ (UINT 8)) (Poly%X. a!) (Poly%X. b!)))
 )
 (assert
  (%B (Compare.comp.? $ (TYPE%X. $ (UINT 8)) (Poly%X. b!) (Poly%X. c!)))
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (req%Tr.stuff. $ (TYPE%Y3. $ (UINT 8)) $ (TYPE%X. $ (UINT 8)) (Poly%X. a!) (Poly%X.
       b!
      ) (Poly%X. c!)
    ))
    (=>
     (ens%impl&%3.stuff. $ (UINT 8) (Poly%X. a!) (Poly%X. b!) (Poly%X. c!) tmp%1)
     (=>
      (= r@ (%Poly%tuple%3. tmp%1))
      (=>
       (= tmp%2 (%B (Compare.comp.? $ (TYPE%X. $ (UINT 8)) (tuple%3./tuple%3/0 (%Poly%tuple%3.
            (Poly%tuple%3. r@)
           )
          ) (tuple%3./tuple%3/1 (%Poly%tuple%3. (Poly%tuple%3. r@)))
       )))
       (and
        (=>
         %%location_label%%1
         tmp%2
        )
        (=>
         tmp%2
         (=>
          (= tmp%3 (%B (Compare.comp.? $ (TYPE%X. $ (UINT 8)) (tuple%3./tuple%3/1 (%Poly%tuple%3.
               (Poly%tuple%3. r@)
              )
             ) (tuple%3./tuple%3/2 (%Poly%tuple%3. (Poly%tuple%3. r@)))
          )))
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

;; Function-Recommends crate::test
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/traits_extend_ensures-c9c47fc5e5a45603-test_trait_arg4/test.rs:69:7: 69:44 (#0)
(get-info :all-statistics)
(push)
 (declare-const a! X.)
 (declare-const b! X.)
 (declare-const c! X.)
 (declare-const tmp%1 Poly)
 (declare-const r@ tuple%3.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%X. a!) (TYPE%X. $ (UINT 8)))
 )
 (assert
  (has_type (Poly%X. b!) (TYPE%X. $ (UINT 8)))
 )
 (assert
  (has_type (Poly%X. c!) (TYPE%X. $ (UINT 8)))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
