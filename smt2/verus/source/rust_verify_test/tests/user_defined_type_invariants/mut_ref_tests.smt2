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
(declare-const fuel%impl&%1.the_inv. FuelId)
(declare-const fuel%impl&%2.the_inv. FuelId)
(assert
 (distinct fuel%impl&%0.the_inv. fuel%impl&%1.the_inv. fuel%impl&%2.the_inv.)
)

;; Datatypes
(declare-datatypes ((X. 0) (Y. 0) (Z. 0) (tuple%0. 0)) (((X./X (X./X/?i Int) (X./X/?j
     Int
   ))
  ) ((Y./Y (Y./Y/?i Int) (Y./Y/?j Int))) ((Z./Z (Z./Z/?x X.) (Z./Z/?y Y.))) ((tuple%0./tuple%0))
))
(declare-fun X./X/i (X.) Int)
(declare-fun X./X/j (X.) Int)
(declare-fun Y./Y/i (Y.) Int)
(declare-fun Y./Y/j (Y.) Int)
(declare-fun Z./Z/x (Z.) X.)
(declare-fun Z./Z/y (Z.) Y.)
(declare-const TYPE%X. Type)
(declare-const TYPE%Y. Type)
(declare-const TYPE%Z. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%X. (X.) Poly)
(declare-fun %Poly%X. (Poly) X.)
(declare-fun Poly%Y. (Y.) Poly)
(declare-fun %Poly%Y. (Poly) Y.)
(declare-fun Poly%Z. (Z.) Poly)
(declare-fun %Poly%Z. (Poly) Z.)
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
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%X.)
    (= x (Poly%X. (%Poly%X. x)))
   )
   :pattern ((has_type x TYPE%X.))
   :qid internal_crate__X_unbox_axiom_definition
   :skolemid skolem_internal_crate__X_unbox_axiom_definition
)))
(assert
 (forall ((_i! Int) (_j! Int)) (!
   (=>
    (and
     (uInv 8 _i!)
     (uInv 8 _j!)
    )
    (has_type (Poly%X. (X./X _i! _j!)) TYPE%X.)
   )
   :pattern ((has_type (Poly%X. (X./X _i! _j!)) TYPE%X.))
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
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%X.)
    (uInv 8 (X./X/i (%Poly%X. x)))
   )
   :pattern ((X./X/i (%Poly%X. x)) (has_type x TYPE%X.))
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
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%X.)
    (uInv 8 (X./X/j (%Poly%X. x)))
   )
   :pattern ((X./X/j (%Poly%X. x)) (has_type x TYPE%X.))
   :qid internal_X./X/j_invariant_definition
   :skolemid skolem_internal_X./X/j_invariant_definition
)))
(assert
 (forall ((x Y.)) (!
   (= x (%Poly%Y. (Poly%Y. x)))
   :pattern ((Poly%Y. x))
   :qid internal_crate__Y_box_axiom_definition
   :skolemid skolem_internal_crate__Y_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%Y.)
    (= x (Poly%Y. (%Poly%Y. x)))
   )
   :pattern ((has_type x TYPE%Y.))
   :qid internal_crate__Y_unbox_axiom_definition
   :skolemid skolem_internal_crate__Y_unbox_axiom_definition
)))
(assert
 (forall ((_i! Int) (_j! Int)) (!
   (=>
    (and
     (uInv 8 _i!)
     (uInv 8 _j!)
    )
    (has_type (Poly%Y. (Y./Y _i! _j!)) TYPE%Y.)
   )
   :pattern ((has_type (Poly%Y. (Y./Y _i! _j!)) TYPE%Y.))
   :qid internal_Y./Y_constructor_definition
   :skolemid skolem_internal_Y./Y_constructor_definition
)))
(assert
 (forall ((x Y.)) (!
   (= (Y./Y/i x) (Y./Y/?i x))
   :pattern ((Y./Y/i x))
   :qid internal_Y./Y/i_accessor_definition
   :skolemid skolem_internal_Y./Y/i_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%Y.)
    (uInv 8 (Y./Y/i (%Poly%Y. x)))
   )
   :pattern ((Y./Y/i (%Poly%Y. x)) (has_type x TYPE%Y.))
   :qid internal_Y./Y/i_invariant_definition
   :skolemid skolem_internal_Y./Y/i_invariant_definition
)))
(assert
 (forall ((x Y.)) (!
   (= (Y./Y/j x) (Y./Y/?j x))
   :pattern ((Y./Y/j x))
   :qid internal_Y./Y/j_accessor_definition
   :skolemid skolem_internal_Y./Y/j_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%Y.)
    (uInv 8 (Y./Y/j (%Poly%Y. x)))
   )
   :pattern ((Y./Y/j (%Poly%Y. x)) (has_type x TYPE%Y.))
   :qid internal_Y./Y/j_invariant_definition
   :skolemid skolem_internal_Y./Y/j_invariant_definition
)))
(assert
 (forall ((x Z.)) (!
   (= x (%Poly%Z. (Poly%Z. x)))
   :pattern ((Poly%Z. x))
   :qid internal_crate__Z_box_axiom_definition
   :skolemid skolem_internal_crate__Z_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%Z.)
    (= x (Poly%Z. (%Poly%Z. x)))
   )
   :pattern ((has_type x TYPE%Z.))
   :qid internal_crate__Z_unbox_axiom_definition
   :skolemid skolem_internal_crate__Z_unbox_axiom_definition
)))
(assert
 (forall ((_x! X.) (_y! Y.)) (!
   (=>
    (and
     (has_type (Poly%X. _x!) TYPE%X.)
     (has_type (Poly%Y. _y!) TYPE%Y.)
    )
    (has_type (Poly%Z. (Z./Z _x! _y!)) TYPE%Z.)
   )
   :pattern ((has_type (Poly%Z. (Z./Z _x! _y!)) TYPE%Z.))
   :qid internal_Z./Z_constructor_definition
   :skolemid skolem_internal_Z./Z_constructor_definition
)))
(assert
 (forall ((x Z.)) (!
   (= (Z./Z/x x) (Z./Z/?x x))
   :pattern ((Z./Z/x x))
   :qid internal_Z./Z/x_accessor_definition
   :skolemid skolem_internal_Z./Z/x_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%Z.)
    (has_type (Poly%X. (Z./Z/x (%Poly%Z. x))) TYPE%X.)
   )
   :pattern ((Z./Z/x (%Poly%Z. x)) (has_type x TYPE%Z.))
   :qid internal_Z./Z/x_invariant_definition
   :skolemid skolem_internal_Z./Z/x_invariant_definition
)))
(assert
 (forall ((x Z.)) (!
   (= (Z./Z/y x) (Z./Z/?y x))
   :pattern ((Z./Z/y x))
   :qid internal_Z./Z/y_accessor_definition
   :skolemid skolem_internal_Z./Z/y_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%Z.)
    (has_type (Poly%Y. (Z./Z/y (%Poly%Z. x))) TYPE%Y.)
   )
   :pattern ((Z./Z/y (%Poly%Z. x)) (has_type x TYPE%Z.))
   :qid internal_Z./Z/y_invariant_definition
   :skolemid skolem_internal_Z./Z/y_invariant_definition
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
(declare-fun impl&%0.the_inv.? (Poly) Bool)

;; Function-Decl crate::Y::the_inv
(declare-fun impl&%1.the_inv.? (Poly) Bool)

;; Function-Decl crate::Z::the_inv
(declare-fun impl&%2.the_inv.? (Poly) Bool)

;; Function-Axioms crate::X::the_inv
(assert
 (fuel_bool_default fuel%impl&%0.the_inv.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%0.the_inv.)
  (forall ((self! Poly)) (!
    (= (impl&%0.the_inv.? self!) (let
      ((tmp%%$ (X./X/i (%Poly%X. self!))))
      (and
       (<= 0 tmp%%$)
       (< tmp%%$ 15)
    )))
    :pattern ((impl&%0.the_inv.? self!))
    :qid internal_impl&__0.the_inv.?_definition
    :skolemid skolem_internal_impl&__0.the_inv.?_definition
))))

;; Function-Axioms crate::Y::the_inv
(assert
 (fuel_bool_default fuel%impl&%1.the_inv.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%1.the_inv.)
  (forall ((self! Poly)) (!
    (= (impl&%1.the_inv.? self!) (= (Y./Y/i (%Poly%Y. self!)) (Y./Y/j (%Poly%Y. self!))))
    :pattern ((impl&%1.the_inv.? self!))
    :qid internal_impl&__1.the_inv.?_definition
    :skolemid skolem_internal_impl&__1.the_inv.?_definition
))))

;; Function-Axioms crate::Z::the_inv
(assert
 (fuel_bool_default fuel%impl&%2.the_inv.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%2.the_inv.)
  (forall ((self! Poly)) (!
    (= (impl&%2.the_inv.? self!) (= (X./X/i (%Poly%X. (Poly%X. (Z./Z/x (%Poly%Z. self!)))))
      (Y./Y/i (%Poly%Y. (Poly%Y. (Z./Z/y (%Poly%Z. self!)))))
    ))
    :pattern ((impl&%2.the_inv.? self!))
    :qid internal_impl&__2.the_inv.?_definition
    :skolemid skolem_internal_impl&__2.the_inv.?_definition
))))

;; Function-Specs crate::mutate_int
(declare-fun ens%mutate_int. (Int Int) Bool)
(assert
 (forall ((pre%i! Int) (i! Int)) (!
   (= (ens%mutate_int. pre%i! i!) (uInv 8 i!))
   :pattern ((ens%mutate_int. pre%i! i!))
   :qid internal_ens__mutate_int._definition
   :skolemid skolem_internal_ens__mutate_int._definition
)))

;; Function-Def crate::mutate_int
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-mut_ref_tests/test.rs:39:1: 39:26 (#0)
(get-info :all-statistics)
(push)
 (declare-const i!@0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 8 i!@0)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-mut_ref_tests/test.rs:41:1: 41:11 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 X.)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 X.)
 (declare-const tmp%4 Bool)
 (declare-const x@0 X.)
 (assert
  fuel_defaults
 )
 (declare-const x@1 X.)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%0 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= tmp%1 (X./X (%I (I 10)) (%I (I 8))))
    (=>
     (= tmp%2 (impl&%0.the_inv.? (Poly%X. tmp%1)))
     (and
      (=>
       %%location_label%%0
       tmp%2
      )
      (=>
       tmp%2
       (=>
        (= x@0 tmp%1)
        (=>
         (and
          (= (X./X/i x@0) (X./X/i x@1))
         )
         (=>
          (has_type (Poly%X. x@1) TYPE%X.)
          (=>
           (ens%mutate_int. (X./X/j (%Poly%X. (Poly%X. x@0))) (X./X/j (%Poly%X. (Poly%X. x@1))))
           (=>
            (= tmp%3 x@1)
            (=>
             (= tmp%4 (impl&%0.the_inv.? (Poly%X. tmp%3)))
             (=>
              %%location_label%%1
              tmp%4
 )))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-mut_ref_tests/test.rs:46:1: 46:11 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 X.)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 X.)
 (declare-const tmp%4 Bool)
 (declare-const x@0 X.)
 (assert
  fuel_defaults
 )
 (declare-const x@1 X.)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%0 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= tmp%1 (X./X (%I (I 10)) (%I (I 8))))
    (=>
     (= tmp%2 (impl&%0.the_inv.? (Poly%X. tmp%1)))
     (and
      (=>
       %%location_label%%0
       tmp%2
      )
      (=>
       tmp%2
       (=>
        (= x@0 tmp%1)
        (=>
         (and
          (= (X./X/j x@0) (X./X/j x@1))
         )
         (=>
          (has_type (Poly%X. x@1) TYPE%X.)
          (=>
           (ens%mutate_int. (X./X/i (%Poly%X. (Poly%X. x@0))) (X./X/i (%Poly%X. (Poly%X. x@1))))
           (=>
            (= tmp%3 x@1)
            (=>
             (= tmp%4 (impl&%0.the_inv.? (Poly%X. tmp%3)))
             (=>
              %%location_label%%1
              tmp%4
 )))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
 (get-info :reason-unknown)
 (get-model)
 (assert
  (not %%location_label%%1)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Recommends crate::test2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-mut_ref_tests/test.rs:46:1: 46:11 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 X.)
 (declare-const tmp%2 X.)
 (declare-const x@0 X.)
 (assert
  fuel_defaults
 )
 (declare-const x@1 X.)
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::mutate_int2
(declare-fun ens%mutate_int2. (Int Int Int Int) Bool)
(assert
 (forall ((pre%i! Int) (i! Int) (pre%j! Int) (j! Int)) (!
   (= (ens%mutate_int2. pre%i! i! pre%j! j!) (and
     (uInv 8 i!)
     (uInv 8 j!)
     (= i! j!)
   ))
   :pattern ((ens%mutate_int2. pre%i! i! pre%j! j!))
   :qid internal_ens__mutate_int2._definition
   :skolemid skolem_internal_ens__mutate_int2._definition
)))

;; Function-Def crate::mutate_int2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-mut_ref_tests/test.rs:51:1: 51:39 (#0)
(get-info :all-statistics)
(push)
 (declare-const i!@0 Int)
 (declare-const j!@0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 8 i!@0)
 )
 (assert
  (uInv 8 j!@0)
 )
 (declare-const i!@1 Int)
 (declare-const j!@1 Int)
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= i!@1 100)
    (=>
     (= j!@1 100)
     (=>
      %%location_label%%0
      (= i!@1 j!@1)
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test4
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-mut_ref_tests/test.rs:59:1: 59:11 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 X.)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 X.)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 X.)
 (declare-const tmp%6 Bool)
 (declare-const x@0 X.)
 (assert
  fuel_defaults
 )
 (declare-const x@1 X.)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%0 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%1 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (= tmp%1 (X./X (%I (I 10)) (%I (I 8))))
    (=>
     (= tmp%2 (impl&%0.the_inv.? (Poly%X. tmp%1)))
     (and
      (=>
       %%location_label%%0
       tmp%2
      )
      (=>
       tmp%2
       (=>
        (= x@0 tmp%1)
        (=>
         (has_type (Poly%X. x@1) TYPE%X.)
         (=>
          (ens%mutate_int2. (X./X/i (%Poly%X. (Poly%X. x@0))) (X./X/i (%Poly%X. (Poly%X. x@1)))
           (X./X/j (%Poly%X. (Poly%X. x@0))) (X./X/j (%Poly%X. (Poly%X. x@1)))
          )
          (=>
           (= tmp%3 x@1)
           (=>
            (= tmp%4 (impl&%0.the_inv.? (Poly%X. tmp%3)))
            (and
             (=>
              %%location_label%%1
              tmp%4
             )
             (=>
              tmp%4
              (=>
               (= tmp%5 x@1)
               (=>
                (= tmp%6 (impl&%0.the_inv.? (Poly%X. tmp%5)))
                (=>
                 %%location_label%%2
                 tmp%6
 ))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
 (get-info :reason-unknown)
 (get-model)
 (assert
  (not %%location_label%%1)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Recommends crate::test4
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-mut_ref_tests/test.rs:59:1: 59:11 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 X.)
 (declare-const tmp%2 X.)
 (declare-const tmp%3 X.)
 (declare-const x@0 X.)
 (assert
  fuel_defaults
 )
 (declare-const x@1 X.)
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test5
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-mut_ref_tests/test.rs:64:1: 64:11 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 Y.)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Y.)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Y.)
 (declare-const tmp%6 Bool)
 (declare-const y@0 Y.)
 (assert
  fuel_defaults
 )
 (declare-const y@1 Y.)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%0 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%1 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (= tmp%1 (Y./Y (%I (I 8)) (%I (I 8))))
    (=>
     (= tmp%2 (impl&%1.the_inv.? (Poly%Y. tmp%1)))
     (and
      (=>
       %%location_label%%0
       tmp%2
      )
      (=>
       tmp%2
       (=>
        (= y@0 tmp%1)
        (=>
         (has_type (Poly%Y. y@1) TYPE%Y.)
         (=>
          (ens%mutate_int2. (Y./Y/i (%Poly%Y. (Poly%Y. y@0))) (Y./Y/i (%Poly%Y. (Poly%Y. y@1)))
           (Y./Y/j (%Poly%Y. (Poly%Y. y@0))) (Y./Y/j (%Poly%Y. (Poly%Y. y@1)))
          )
          (=>
           (= tmp%3 y@1)
           (=>
            (= tmp%4 (impl&%1.the_inv.? (Poly%Y. tmp%3)))
            (and
             (=>
              %%location_label%%1
              tmp%4
             )
             (=>
              tmp%4
              (=>
               (= tmp%5 y@1)
               (=>
                (= tmp%6 (impl&%1.the_inv.? (Poly%Y. tmp%5)))
                (=>
                 %%location_label%%2
                 tmp%6
 ))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::mutate_int4_meet_all
(declare-fun ens%mutate_int4_meet_all. (Int Int Int Int Int Int Int Int) Bool)
(assert
 (forall ((pre%a! Int) (a! Int) (pre%b! Int) (b! Int) (pre%c! Int) (c! Int) (pre%d! Int)
   (d! Int)
  ) (!
   (= (ens%mutate_int4_meet_all. pre%a! a! pre%b! b! pre%c! c! pre%d! d!) (and
     (uInv 8 a!)
     (uInv 8 b!)
     (uInv 8 c!)
     (uInv 8 d!)
     (= a! 10)
     (= b! 30)
     (= c! 10)
     (= d! 10)
   ))
   :pattern ((ens%mutate_int4_meet_all. pre%a! a! pre%b! b! pre%c! c! pre%d! d!))
   :qid internal_ens__mutate_int4_meet_all._definition
   :skolemid skolem_internal_ens__mutate_int4_meet_all._definition
)))

;; Function-Def crate::mutate_int4_meet_all
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-mut_ref_tests/test.rs:81:1: 81:72 (#0)
(get-info :all-statistics)
(push)
 (declare-const a!@0 Int)
 (declare-const b!@0 Int)
 (declare-const c!@0 Int)
 (declare-const d!@0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 8 a!@0)
 )
 (assert
  (uInv 8 b!@0)
 )
 (assert
  (uInv 8 c!@0)
 )
 (assert
  (uInv 8 d!@0)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::mutate_int4_fail_x
(declare-fun ens%mutate_int4_fail_x. (Int Int Int Int Int Int Int Int) Bool)
(assert
 (forall ((pre%a! Int) (a! Int) (pre%b! Int) (b! Int) (pre%c! Int) (c! Int) (pre%d! Int)
   (d! Int)
  ) (!
   (= (ens%mutate_int4_fail_x. pre%a! a! pre%b! b! pre%c! c! pre%d! d!) (and
     (uInv 8 a!)
     (uInv 8 b!)
     (uInv 8 c!)
     (uInv 8 d!)
     (= a! 20)
     (= b! 30)
     (= c! 20)
     (= d! 20)
   ))
   :pattern ((ens%mutate_int4_fail_x. pre%a! a! pre%b! b! pre%c! c! pre%d! d!))
   :qid internal_ens__mutate_int4_fail_x._definition
   :skolemid skolem_internal_ens__mutate_int4_fail_x._definition
)))

;; Function-Def crate::mutate_int4_fail_x
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-mut_ref_tests/test.rs:86:1: 86:70 (#0)
(get-info :all-statistics)
(push)
 (declare-const a!@0 Int)
 (declare-const b!@0 Int)
 (declare-const c!@0 Int)
 (declare-const d!@0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 8 a!@0)
 )
 (assert
  (uInv 8 b!@0)
 )
 (assert
  (uInv 8 c!@0)
 )
 (assert
  (uInv 8 d!@0)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::mutate_int4_fail_y
(declare-fun ens%mutate_int4_fail_y. (Int Int Int Int Int Int Int Int) Bool)
(assert
 (forall ((pre%a! Int) (a! Int) (pre%b! Int) (b! Int) (pre%c! Int) (c! Int) (pre%d! Int)
   (d! Int)
  ) (!
   (= (ens%mutate_int4_fail_y. pre%a! a! pre%b! b! pre%c! c! pre%d! d!) (and
     (uInv 8 a!)
     (uInv 8 b!)
     (uInv 8 c!)
     (uInv 8 d!)
     (= a! 10)
     (= b! 30)
     (= c! 10)
     (= d! 11)
   ))
   :pattern ((ens%mutate_int4_fail_y. pre%a! a! pre%b! b! pre%c! c! pre%d! d!))
   :qid internal_ens__mutate_int4_fail_y._definition
   :skolemid skolem_internal_ens__mutate_int4_fail_y._definition
)))

;; Function-Def crate::mutate_int4_fail_y
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-mut_ref_tests/test.rs:91:1: 91:70 (#0)
(get-info :all-statistics)
(push)
 (declare-const a!@0 Int)
 (declare-const b!@0 Int)
 (declare-const c!@0 Int)
 (declare-const d!@0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 8 a!@0)
 )
 (assert
  (uInv 8 b!@0)
 )
 (assert
  (uInv 8 c!@0)
 )
 (assert
  (uInv 8 d!@0)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::mutate_int4_fail_z
(declare-fun ens%mutate_int4_fail_z. (Int Int Int Int Int Int Int Int) Bool)
(assert
 (forall ((pre%a! Int) (a! Int) (pre%b! Int) (b! Int) (pre%c! Int) (c! Int) (pre%d! Int)
   (d! Int)
  ) (!
   (= (ens%mutate_int4_fail_z. pre%a! a! pre%b! b! pre%c! c! pre%d! d!) (and
     (uInv 8 a!)
     (uInv 8 b!)
     (uInv 8 c!)
     (uInv 8 d!)
     (= a! 10)
     (= b! 30)
     (= c! 11)
     (= d! 11)
   ))
   :pattern ((ens%mutate_int4_fail_z. pre%a! a! pre%b! b! pre%c! c! pre%d! d!))
   :qid internal_ens__mutate_int4_fail_z._definition
   :skolemid skolem_internal_ens__mutate_int4_fail_z._definition
)))

;; Function-Def crate::mutate_int4_fail_z
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-mut_ref_tests/test.rs:96:1: 96:70 (#0)
(get-info :all-statistics)
(push)
 (declare-const a!@0 Int)
 (declare-const b!@0 Int)
 (declare-const c!@0 Int)
 (declare-const d!@0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 8 a!@0)
 )
 (assert
  (uInv 8 b!@0)
 )
 (assert
  (uInv 8 c!@0)
 )
 (assert
  (uInv 8 d!@0)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test8
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-mut_ref_tests/test.rs:101:1: 101:11 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 X.)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Y.)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Z.)
 (declare-const tmp%6 Bool)
 (declare-const tmp%7 X.)
 (declare-const tmp%8 Bool)
 (declare-const tmp%9 Z.)
 (declare-const tmp%10 Bool)
 (declare-const tmp%11 X.)
 (declare-const tmp%12 Bool)
 (declare-const tmp%13 Z.)
 (declare-const tmp%14 Bool)
 (declare-const tmp%15 Y.)
 (declare-const tmp%16 Bool)
 (declare-const tmp%17 Z.)
 (declare-const tmp%18 Bool)
 (declare-const tmp%19 Y.)
 (declare-const tmp%20 Bool)
 (declare-const tmp%21 Z.)
 (declare-const tmp%22 Bool)
 (declare-const x@ X.)
 (declare-const y@ Y.)
 (declare-const z@0 Z.)
 (assert
  fuel_defaults
 )
 (declare-const z@1 Z.)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%0 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%1 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%2 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%3 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%4 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%5 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%6 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%7 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%8 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%9 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%10 Bool)
 (assert
  (not (=>
    (= tmp%1 (X./X (%I (I 8)) (%I (I 8))))
    (=>
     (= tmp%2 (impl&%0.the_inv.? (Poly%X. tmp%1)))
     (and
      (=>
       %%location_label%%0
       tmp%2
      )
      (=>
       tmp%2
       (=>
        (= x@ tmp%1)
        (=>
         (= tmp%3 (Y./Y (%I (I 8)) (%I (I 8))))
         (=>
          (= tmp%4 (impl&%1.the_inv.? (Poly%Y. tmp%3)))
          (and
           (=>
            %%location_label%%1
            tmp%4
           )
           (=>
            tmp%4
            (=>
             (= y@ tmp%3)
             (=>
              (= tmp%5 (Z./Z (%Poly%X. (Poly%X. x@)) (%Poly%Y. (Poly%Y. y@))))
              (=>
               (= tmp%6 (impl&%2.the_inv.? (Poly%Z. tmp%5)))
               (and
                (=>
                 %%location_label%%2
                 tmp%6
                )
                (=>
                 tmp%6
                 (=>
                  (= z@0 tmp%5)
                  (=>
                   (has_type (Poly%Z. z@1) TYPE%Z.)
                   (=>
                    (ens%mutate_int4_meet_all. (X./X/i (%Poly%X. (Poly%X. (Z./Z/x (%Poly%Z. (Poly%Z. z@0))))))
                     (X./X/i (%Poly%X. (Poly%X. (Z./Z/x (%Poly%Z. (Poly%Z. z@1)))))) (X./X/j (%Poly%X. (
                        Poly%X. (Z./Z/x (%Poly%Z. (Poly%Z. z@0)))
                      ))
                     ) (X./X/j (%Poly%X. (Poly%X. (Z./Z/x (%Poly%Z. (Poly%Z. z@1)))))) (Y./Y/i (%Poly%Y.
                       (Poly%Y. (Z./Z/y (%Poly%Z. (Poly%Z. z@0))))
                      )
                     ) (Y./Y/i (%Poly%Y. (Poly%Y. (Z./Z/y (%Poly%Z. (Poly%Z. z@1)))))) (Y./Y/j (%Poly%Y.
                       (Poly%Y. (Z./Z/y (%Poly%Z. (Poly%Z. z@0))))
                      )
                     ) (Y./Y/j (%Poly%Y. (Poly%Y. (Z./Z/y (%Poly%Z. (Poly%Z. z@1))))))
                    )
                    (=>
                     (= tmp%7 (Z./Z/x (%Poly%Z. (Poly%Z. z@1))))
                     (=>
                      (= tmp%8 (impl&%0.the_inv.? (Poly%X. tmp%7)))
                      (and
                       (=>
                        %%location_label%%3
                        tmp%8
                       )
                       (=>
                        tmp%8
                        (=>
                         (= tmp%9 z@1)
                         (=>
                          (= tmp%10 (impl&%2.the_inv.? (Poly%Z. tmp%9)))
                          (and
                           (=>
                            %%location_label%%4
                            tmp%10
                           )
                           (=>
                            tmp%10
                            (=>
                             (= tmp%11 (Z./Z/x (%Poly%Z. (Poly%Z. z@1))))
                             (=>
                              (= tmp%12 (impl&%0.the_inv.? (Poly%X. tmp%11)))
                              (and
                               (=>
                                %%location_label%%5
                                tmp%12
                               )
                               (=>
                                tmp%12
                                (=>
                                 (= tmp%13 z@1)
                                 (=>
                                  (= tmp%14 (impl&%2.the_inv.? (Poly%Z. tmp%13)))
                                  (and
                                   (=>
                                    %%location_label%%6
                                    tmp%14
                                   )
                                   (=>
                                    tmp%14
                                    (=>
                                     (= tmp%15 (Z./Z/y (%Poly%Z. (Poly%Z. z@1))))
                                     (=>
                                      (= tmp%16 (impl&%1.the_inv.? (Poly%Y. tmp%15)))
                                      (and
                                       (=>
                                        %%location_label%%7
                                        tmp%16
                                       )
                                       (=>
                                        tmp%16
                                        (=>
                                         (= tmp%17 z@1)
                                         (=>
                                          (= tmp%18 (impl&%2.the_inv.? (Poly%Z. tmp%17)))
                                          (and
                                           (=>
                                            %%location_label%%8
                                            tmp%18
                                           )
                                           (=>
                                            tmp%18
                                            (=>
                                             (= tmp%19 (Z./Z/y (%Poly%Z. (Poly%Z. z@1))))
                                             (=>
                                              (= tmp%20 (impl&%1.the_inv.? (Poly%Y. tmp%19)))
                                              (and
                                               (=>
                                                %%location_label%%9
                                                tmp%20
                                               )
                                               (=>
                                                tmp%20
                                                (=>
                                                 (= tmp%21 z@1)
                                                 (=>
                                                  (= tmp%22 (impl&%2.the_inv.? (Poly%Z. tmp%21)))
                                                  (=>
                                                   %%location_label%%10
                                                   tmp%22
 ))))))))))))))))))))))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test9
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-mut_ref_tests/test.rs:108:1: 108:11 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 X.)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Y.)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Z.)
 (declare-const tmp%6 Bool)
 (declare-const tmp%7 X.)
 (declare-const tmp%8 Bool)
 (declare-const tmp%9 Z.)
 (declare-const tmp%10 Bool)
 (declare-const tmp%11 X.)
 (declare-const tmp%12 Bool)
 (declare-const tmp%13 Z.)
 (declare-const tmp%14 Bool)
 (declare-const tmp%15 Y.)
 (declare-const tmp%16 Bool)
 (declare-const tmp%17 Z.)
 (declare-const tmp%18 Bool)
 (declare-const tmp%19 Y.)
 (declare-const tmp%20 Bool)
 (declare-const tmp%21 Z.)
 (declare-const tmp%22 Bool)
 (declare-const x@0 X.)
 (declare-const y@0 Y.)
 (declare-const z@0 Z.)
 (assert
  fuel_defaults
 )
 (declare-const z@1 Z.)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%0 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%1 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%2 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%3 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%4 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%5 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%6 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%7 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%8 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%9 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%10 Bool)
 (assert
  (not (=>
    (= tmp%1 (X./X (%I (I 8)) (%I (I 8))))
    (=>
     (= tmp%2 (impl&%0.the_inv.? (Poly%X. tmp%1)))
     (and
      (=>
       %%location_label%%0
       tmp%2
      )
      (=>
       tmp%2
       (=>
        (= x@0 tmp%1)
        (=>
         (= tmp%3 (Y./Y (%I (I 8)) (%I (I 8))))
         (=>
          (= tmp%4 (impl&%1.the_inv.? (Poly%Y. tmp%3)))
          (and
           (=>
            %%location_label%%1
            tmp%4
           )
           (=>
            tmp%4
            (=>
             (= y@0 tmp%3)
             (=>
              (= tmp%5 (Z./Z (%Poly%X. (Poly%X. x@0)) (%Poly%Y. (Poly%Y. y@0))))
              (=>
               (= tmp%6 (impl&%2.the_inv.? (Poly%Z. tmp%5)))
               (and
                (=>
                 %%location_label%%2
                 tmp%6
                )
                (=>
                 tmp%6
                 (=>
                  (= z@0 tmp%5)
                  (=>
                   (has_type (Poly%Z. z@1) TYPE%Z.)
                   (=>
                    (ens%mutate_int4_fail_x. (X./X/i (%Poly%X. (Poly%X. (Z./Z/x (%Poly%Z. (Poly%Z. z@0))))))
                     (X./X/i (%Poly%X. (Poly%X. (Z./Z/x (%Poly%Z. (Poly%Z. z@1)))))) (X./X/j (%Poly%X. (
                        Poly%X. (Z./Z/x (%Poly%Z. (Poly%Z. z@0)))
                      ))
                     ) (X./X/j (%Poly%X. (Poly%X. (Z./Z/x (%Poly%Z. (Poly%Z. z@1)))))) (Y./Y/i (%Poly%Y.
                       (Poly%Y. (Z./Z/y (%Poly%Z. (Poly%Z. z@0))))
                      )
                     ) (Y./Y/i (%Poly%Y. (Poly%Y. (Z./Z/y (%Poly%Z. (Poly%Z. z@1)))))) (Y./Y/j (%Poly%Y.
                       (Poly%Y. (Z./Z/y (%Poly%Z. (Poly%Z. z@0))))
                      )
                     ) (Y./Y/j (%Poly%Y. (Poly%Y. (Z./Z/y (%Poly%Z. (Poly%Z. z@1))))))
                    )
                    (=>
                     (= tmp%7 (Z./Z/x (%Poly%Z. (Poly%Z. z@1))))
                     (=>
                      (= tmp%8 (impl&%0.the_inv.? (Poly%X. tmp%7)))
                      (and
                       (=>
                        %%location_label%%3
                        tmp%8
                       )
                       (=>
                        tmp%8
                        (=>
                         (= tmp%9 z@1)
                         (=>
                          (= tmp%10 (impl&%2.the_inv.? (Poly%Z. tmp%9)))
                          (and
                           (=>
                            %%location_label%%4
                            tmp%10
                           )
                           (=>
                            tmp%10
                            (=>
                             (= tmp%11 (Z./Z/x (%Poly%Z. (Poly%Z. z@1))))
                             (=>
                              (= tmp%12 (impl&%0.the_inv.? (Poly%X. tmp%11)))
                              (and
                               (=>
                                %%location_label%%5
                                tmp%12
                               )
                               (=>
                                tmp%12
                                (=>
                                 (= tmp%13 z@1)
                                 (=>
                                  (= tmp%14 (impl&%2.the_inv.? (Poly%Z. tmp%13)))
                                  (and
                                   (=>
                                    %%location_label%%6
                                    tmp%14
                                   )
                                   (=>
                                    tmp%14
                                    (=>
                                     (= tmp%15 (Z./Z/y (%Poly%Z. (Poly%Z. z@1))))
                                     (=>
                                      (= tmp%16 (impl&%1.the_inv.? (Poly%Y. tmp%15)))
                                      (and
                                       (=>
                                        %%location_label%%7
                                        tmp%16
                                       )
                                       (=>
                                        tmp%16
                                        (=>
                                         (= tmp%17 z@1)
                                         (=>
                                          (= tmp%18 (impl&%2.the_inv.? (Poly%Z. tmp%17)))
                                          (and
                                           (=>
                                            %%location_label%%8
                                            tmp%18
                                           )
                                           (=>
                                            tmp%18
                                            (=>
                                             (= tmp%19 (Z./Z/y (%Poly%Z. (Poly%Z. z@1))))
                                             (=>
                                              (= tmp%20 (impl&%1.the_inv.? (Poly%Y. tmp%19)))
                                              (and
                                               (=>
                                                %%location_label%%9
                                                tmp%20
                                               )
                                               (=>
                                                tmp%20
                                                (=>
                                                 (= tmp%21 z@1)
                                                 (=>
                                                  (= tmp%22 (impl&%2.the_inv.? (Poly%Z. tmp%21)))
                                                  (=>
                                                   %%location_label%%10
                                                   tmp%22
 ))))))))))))))))))))))))))))))))))))))))))))))))))
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

;; Function-Recommends crate::test9
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-mut_ref_tests/test.rs:108:1: 108:11 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 X.)
 (declare-const tmp%2 Y.)
 (declare-const tmp%3 Z.)
 (declare-const tmp%4 X.)
 (declare-const tmp%5 Z.)
 (declare-const tmp%6 X.)
 (declare-const tmp%7 Z.)
 (declare-const tmp%8 Y.)
 (declare-const tmp%9 Z.)
 (declare-const tmp%10 Y.)
 (declare-const tmp%11 Z.)
 (declare-const x@0 X.)
 (declare-const y@0 Y.)
 (declare-const z@0 Z.)
 (assert
  fuel_defaults
 )
 (declare-const z@1 Z.)
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test10
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-mut_ref_tests/test.rs:115:1: 115:12 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 X.)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Y.)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Z.)
 (declare-const tmp%6 Bool)
 (declare-const tmp%7 X.)
 (declare-const tmp%8 Bool)
 (declare-const tmp%9 Z.)
 (declare-const tmp%10 Bool)
 (declare-const tmp%11 X.)
 (declare-const tmp%12 Bool)
 (declare-const tmp%13 Z.)
 (declare-const tmp%14 Bool)
 (declare-const tmp%15 Y.)
 (declare-const tmp%16 Bool)
 (declare-const tmp%17 Z.)
 (declare-const tmp%18 Bool)
 (declare-const tmp%19 Y.)
 (declare-const tmp%20 Bool)
 (declare-const tmp%21 Z.)
 (declare-const tmp%22 Bool)
 (declare-const x@0 X.)
 (declare-const y@0 Y.)
 (declare-const z@0 Z.)
 (assert
  fuel_defaults
 )
 (declare-const z@1 Z.)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%0 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%1 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%2 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%3 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%4 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%5 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%6 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%7 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%8 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%9 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%10 Bool)
 (assert
  (not (=>
    (= tmp%1 (X./X (%I (I 8)) (%I (I 8))))
    (=>
     (= tmp%2 (impl&%0.the_inv.? (Poly%X. tmp%1)))
     (and
      (=>
       %%location_label%%0
       tmp%2
      )
      (=>
       tmp%2
       (=>
        (= x@0 tmp%1)
        (=>
         (= tmp%3 (Y./Y (%I (I 8)) (%I (I 8))))
         (=>
          (= tmp%4 (impl&%1.the_inv.? (Poly%Y. tmp%3)))
          (and
           (=>
            %%location_label%%1
            tmp%4
           )
           (=>
            tmp%4
            (=>
             (= y@0 tmp%3)
             (=>
              (= tmp%5 (Z./Z (%Poly%X. (Poly%X. x@0)) (%Poly%Y. (Poly%Y. y@0))))
              (=>
               (= tmp%6 (impl&%2.the_inv.? (Poly%Z. tmp%5)))
               (and
                (=>
                 %%location_label%%2
                 tmp%6
                )
                (=>
                 tmp%6
                 (=>
                  (= z@0 tmp%5)
                  (=>
                   (has_type (Poly%Z. z@1) TYPE%Z.)
                   (=>
                    (ens%mutate_int4_fail_y. (X./X/i (%Poly%X. (Poly%X. (Z./Z/x (%Poly%Z. (Poly%Z. z@0))))))
                     (X./X/i (%Poly%X. (Poly%X. (Z./Z/x (%Poly%Z. (Poly%Z. z@1)))))) (X./X/j (%Poly%X. (
                        Poly%X. (Z./Z/x (%Poly%Z. (Poly%Z. z@0)))
                      ))
                     ) (X./X/j (%Poly%X. (Poly%X. (Z./Z/x (%Poly%Z. (Poly%Z. z@1)))))) (Y./Y/i (%Poly%Y.
                       (Poly%Y. (Z./Z/y (%Poly%Z. (Poly%Z. z@0))))
                      )
                     ) (Y./Y/i (%Poly%Y. (Poly%Y. (Z./Z/y (%Poly%Z. (Poly%Z. z@1)))))) (Y./Y/j (%Poly%Y.
                       (Poly%Y. (Z./Z/y (%Poly%Z. (Poly%Z. z@0))))
                      )
                     ) (Y./Y/j (%Poly%Y. (Poly%Y. (Z./Z/y (%Poly%Z. (Poly%Z. z@1))))))
                    )
                    (=>
                     (= tmp%7 (Z./Z/x (%Poly%Z. (Poly%Z. z@1))))
                     (=>
                      (= tmp%8 (impl&%0.the_inv.? (Poly%X. tmp%7)))
                      (and
                       (=>
                        %%location_label%%3
                        tmp%8
                       )
                       (=>
                        tmp%8
                        (=>
                         (= tmp%9 z@1)
                         (=>
                          (= tmp%10 (impl&%2.the_inv.? (Poly%Z. tmp%9)))
                          (and
                           (=>
                            %%location_label%%4
                            tmp%10
                           )
                           (=>
                            tmp%10
                            (=>
                             (= tmp%11 (Z./Z/x (%Poly%Z. (Poly%Z. z@1))))
                             (=>
                              (= tmp%12 (impl&%0.the_inv.? (Poly%X. tmp%11)))
                              (and
                               (=>
                                %%location_label%%5
                                tmp%12
                               )
                               (=>
                                tmp%12
                                (=>
                                 (= tmp%13 z@1)
                                 (=>
                                  (= tmp%14 (impl&%2.the_inv.? (Poly%Z. tmp%13)))
                                  (and
                                   (=>
                                    %%location_label%%6
                                    tmp%14
                                   )
                                   (=>
                                    tmp%14
                                    (=>
                                     (= tmp%15 (Z./Z/y (%Poly%Z. (Poly%Z. z@1))))
                                     (=>
                                      (= tmp%16 (impl&%1.the_inv.? (Poly%Y. tmp%15)))
                                      (and
                                       (=>
                                        %%location_label%%7
                                        tmp%16
                                       )
                                       (=>
                                        tmp%16
                                        (=>
                                         (= tmp%17 z@1)
                                         (=>
                                          (= tmp%18 (impl&%2.the_inv.? (Poly%Z. tmp%17)))
                                          (and
                                           (=>
                                            %%location_label%%8
                                            tmp%18
                                           )
                                           (=>
                                            tmp%18
                                            (=>
                                             (= tmp%19 (Z./Z/y (%Poly%Z. (Poly%Z. z@1))))
                                             (=>
                                              (= tmp%20 (impl&%1.the_inv.? (Poly%Y. tmp%19)))
                                              (and
                                               (=>
                                                %%location_label%%9
                                                tmp%20
                                               )
                                               (=>
                                                tmp%20
                                                (=>
                                                 (= tmp%21 z@1)
                                                 (=>
                                                  (= tmp%22 (impl&%2.the_inv.? (Poly%Z. tmp%21)))
                                                  (=>
                                                   %%location_label%%10
                                                   tmp%22
 ))))))))))))))))))))))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
 (get-info :reason-unknown)
 (get-model)
 (assert
  (not %%location_label%%7)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Recommends crate::test10
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-mut_ref_tests/test.rs:115:1: 115:12 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 X.)
 (declare-const tmp%2 Y.)
 (declare-const tmp%3 Z.)
 (declare-const tmp%4 X.)
 (declare-const tmp%5 Z.)
 (declare-const tmp%6 X.)
 (declare-const tmp%7 Z.)
 (declare-const tmp%8 Y.)
 (declare-const tmp%9 Z.)
 (declare-const tmp%10 Y.)
 (declare-const tmp%11 Z.)
 (declare-const x@0 X.)
 (declare-const y@0 Y.)
 (declare-const z@0 Z.)
 (assert
  fuel_defaults
 )
 (declare-const z@1 Z.)
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test11
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-mut_ref_tests/test.rs:122:1: 122:12 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 X.)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Y.)
 (declare-const tmp%4 Bool)
 (declare-const tmp%5 Z.)
 (declare-const tmp%6 Bool)
 (declare-const tmp%7 X.)
 (declare-const tmp%8 Bool)
 (declare-const tmp%9 Z.)
 (declare-const tmp%10 Bool)
 (declare-const tmp%11 X.)
 (declare-const tmp%12 Bool)
 (declare-const tmp%13 Z.)
 (declare-const tmp%14 Bool)
 (declare-const tmp%15 Y.)
 (declare-const tmp%16 Bool)
 (declare-const tmp%17 Z.)
 (declare-const tmp%18 Bool)
 (declare-const tmp%19 Y.)
 (declare-const tmp%20 Bool)
 (declare-const tmp%21 Z.)
 (declare-const tmp%22 Bool)
 (declare-const x@0 X.)
 (declare-const y@0 Y.)
 (declare-const z@0 Z.)
 (assert
  fuel_defaults
 )
 (declare-const z@1 Z.)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%0 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%1 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%2 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%3 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%4 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%5 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%6 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%7 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%8 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%9 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%10 Bool)
 (assert
  (not (=>
    (= tmp%1 (X./X (%I (I 8)) (%I (I 8))))
    (=>
     (= tmp%2 (impl&%0.the_inv.? (Poly%X. tmp%1)))
     (and
      (=>
       %%location_label%%0
       tmp%2
      )
      (=>
       tmp%2
       (=>
        (= x@0 tmp%1)
        (=>
         (= tmp%3 (Y./Y (%I (I 8)) (%I (I 8))))
         (=>
          (= tmp%4 (impl&%1.the_inv.? (Poly%Y. tmp%3)))
          (and
           (=>
            %%location_label%%1
            tmp%4
           )
           (=>
            tmp%4
            (=>
             (= y@0 tmp%3)
             (=>
              (= tmp%5 (Z./Z (%Poly%X. (Poly%X. x@0)) (%Poly%Y. (Poly%Y. y@0))))
              (=>
               (= tmp%6 (impl&%2.the_inv.? (Poly%Z. tmp%5)))
               (and
                (=>
                 %%location_label%%2
                 tmp%6
                )
                (=>
                 tmp%6
                 (=>
                  (= z@0 tmp%5)
                  (=>
                   (has_type (Poly%Z. z@1) TYPE%Z.)
                   (=>
                    (ens%mutate_int4_fail_z. (X./X/i (%Poly%X. (Poly%X. (Z./Z/x (%Poly%Z. (Poly%Z. z@0))))))
                     (X./X/i (%Poly%X. (Poly%X. (Z./Z/x (%Poly%Z. (Poly%Z. z@1)))))) (X./X/j (%Poly%X. (
                        Poly%X. (Z./Z/x (%Poly%Z. (Poly%Z. z@0)))
                      ))
                     ) (X./X/j (%Poly%X. (Poly%X. (Z./Z/x (%Poly%Z. (Poly%Z. z@1)))))) (Y./Y/i (%Poly%Y.
                       (Poly%Y. (Z./Z/y (%Poly%Z. (Poly%Z. z@0))))
                      )
                     ) (Y./Y/i (%Poly%Y. (Poly%Y. (Z./Z/y (%Poly%Z. (Poly%Z. z@1)))))) (Y./Y/j (%Poly%Y.
                       (Poly%Y. (Z./Z/y (%Poly%Z. (Poly%Z. z@0))))
                      )
                     ) (Y./Y/j (%Poly%Y. (Poly%Y. (Z./Z/y (%Poly%Z. (Poly%Z. z@1))))))
                    )
                    (=>
                     (= tmp%7 (Z./Z/x (%Poly%Z. (Poly%Z. z@1))))
                     (=>
                      (= tmp%8 (impl&%0.the_inv.? (Poly%X. tmp%7)))
                      (and
                       (=>
                        %%location_label%%3
                        tmp%8
                       )
                       (=>
                        tmp%8
                        (=>
                         (= tmp%9 z@1)
                         (=>
                          (= tmp%10 (impl&%2.the_inv.? (Poly%Z. tmp%9)))
                          (and
                           (=>
                            %%location_label%%4
                            tmp%10
                           )
                           (=>
                            tmp%10
                            (=>
                             (= tmp%11 (Z./Z/x (%Poly%Z. (Poly%Z. z@1))))
                             (=>
                              (= tmp%12 (impl&%0.the_inv.? (Poly%X. tmp%11)))
                              (and
                               (=>
                                %%location_label%%5
                                tmp%12
                               )
                               (=>
                                tmp%12
                                (=>
                                 (= tmp%13 z@1)
                                 (=>
                                  (= tmp%14 (impl&%2.the_inv.? (Poly%Z. tmp%13)))
                                  (and
                                   (=>
                                    %%location_label%%6
                                    tmp%14
                                   )
                                   (=>
                                    tmp%14
                                    (=>
                                     (= tmp%15 (Z./Z/y (%Poly%Z. (Poly%Z. z@1))))
                                     (=>
                                      (= tmp%16 (impl&%1.the_inv.? (Poly%Y. tmp%15)))
                                      (and
                                       (=>
                                        %%location_label%%7
                                        tmp%16
                                       )
                                       (=>
                                        tmp%16
                                        (=>
                                         (= tmp%17 z@1)
                                         (=>
                                          (= tmp%18 (impl&%2.the_inv.? (Poly%Z. tmp%17)))
                                          (and
                                           (=>
                                            %%location_label%%8
                                            tmp%18
                                           )
                                           (=>
                                            tmp%18
                                            (=>
                                             (= tmp%19 (Z./Z/y (%Poly%Z. (Poly%Z. z@1))))
                                             (=>
                                              (= tmp%20 (impl&%1.the_inv.? (Poly%Y. tmp%19)))
                                              (and
                                               (=>
                                                %%location_label%%9
                                                tmp%20
                                               )
                                               (=>
                                                tmp%20
                                                (=>
                                                 (= tmp%21 z@1)
                                                 (=>
                                                  (= tmp%22 (impl&%2.the_inv.? (Poly%Z. tmp%21)))
                                                  (=>
                                                   %%location_label%%10
                                                   tmp%22
 ))))))))))))))))))))))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
 (get-info :reason-unknown)
 (get-model)
 (assert
  (not %%location_label%%4)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Recommends crate::test11
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/user_defined_type_invariants-69821374e4e4d573-mut_ref_tests/test.rs:122:1: 122:12 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const tmp%1 X.)
 (declare-const tmp%2 Y.)
 (declare-const tmp%3 Z.)
 (declare-const tmp%4 X.)
 (declare-const tmp%5 Z.)
 (declare-const tmp%6 X.)
 (declare-const tmp%7 Z.)
 (declare-const tmp%8 Y.)
 (declare-const tmp%9 Z.)
 (declare-const tmp%10 Y.)
 (declare-const tmp%11 Z.)
 (declare-const x@0 X.)
 (declare-const y@0 Y.)
 (declare-const z@0 Z.)
 (assert
  fuel_defaults
 )
 (declare-const z@1 Z.)
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
