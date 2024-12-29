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
(declare-const fuel%impl&%0.ens. FuelId)
(declare-const fuel%impl&%1.ens. FuelId)
(declare-const fuel%impl&%2.ens. FuelId)
(assert
 (distinct fuel%impl&%0.ens. fuel%impl&%1.ens. fuel%impl&%2.ens.)
)

;; Datatypes
(declare-datatypes ((X. 0) (Y. 0) (Z. 0) (tuple%0. 0)) (((X./X (X./X/?j Int))) ((Y./Y
    (Y./Y/?j Int)
   )
  ) ((Z./Z (Z./Z/?j Int))) ((tuple%0./tuple%0))
))
(declare-fun X./X/j (X.) Int)
(declare-fun Y./Y/j (Y.) Int)
(declare-fun Z./Z/j (Z.) Int)
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
 (forall ((_j! Int)) (!
   (=>
    (uInv 8 _j!)
    (has_type (Poly%X. (X./X _j!)) TYPE%X.)
   )
   :pattern ((has_type (Poly%X. (X./X _j!)) TYPE%X.))
   :qid internal_X./X_constructor_definition
   :skolemid skolem_internal_X./X_constructor_definition
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
 (forall ((_j! Int)) (!
   (=>
    (uInv 8 _j!)
    (has_type (Poly%Y. (Y./Y _j!)) TYPE%Y.)
   )
   :pattern ((has_type (Poly%Y. (Y./Y _j!)) TYPE%Y.))
   :qid internal_Y./Y_constructor_definition
   :skolemid skolem_internal_Y./Y_constructor_definition
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
 (forall ((_j! Int)) (!
   (=>
    (uInv 8 _j!)
    (has_type (Poly%Z. (Z./Z _j!)) TYPE%Z.)
   )
   :pattern ((has_type (Poly%Z. (Z./Z _j!)) TYPE%Z.))
   :qid internal_Z./Z_constructor_definition
   :skolemid skolem_internal_Z./Z_constructor_definition
)))
(assert
 (forall ((x Z.)) (!
   (= (Z./Z/j x) (Z./Z/?j x))
   :pattern ((Z./Z/j x))
   :qid internal_Z./Z/j_accessor_definition
   :skolemid skolem_internal_Z./Z/j_accessor_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%Z.)
    (uInv 8 (Z./Z/j (%Poly%Z. x)))
   )
   :pattern ((Z./Z/j (%Poly%Z. x)) (has_type x TYPE%Z.))
   :qid internal_Z./Z/j_invariant_definition
   :skolemid skolem_internal_Z./Z/j_invariant_definition
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

;; Traits
(declare-fun tr_bound%Tr. (Dcr Type) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%Tr. Self%&. Self%&))
   :qid internal_crate__Tr_trait_type_bounds_definition
   :skolemid skolem_internal_crate__Tr_trait_type_bounds_definition
)))

;; Function-Decl crate::Tr::ens
(declare-fun Tr.ens.? (Dcr Type Poly Poly Poly) Poly)
(declare-fun Tr.ens%default%.? (Dcr Type Poly Poly Poly) Poly)

;; Function-Axioms crate::Tr::ens
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (i! Poly) (s! Poly)) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type i! (UINT 8))
     (has_type s! Self%&)
    )
    (has_type (Tr.ens.? Self%&. Self%& self! i! s!) BOOL)
   )
   :pattern ((Tr.ens.? Self%&. Self%& self! i! s!))
   :qid internal_Tr.ens.?_pre_post_definition
   :skolemid skolem_internal_Tr.ens.?_pre_post_definition
)))

;; Function-Specs crate::Tr::test
(declare-fun ens%Tr.test. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (i! Poly) (s! Poly)) (!
   (= (ens%Tr.test. Self%&. Self%& self! i! s!) (and
     (has_type s! Self%&)
     (%B (Tr.ens.? Self%&. Self%& self! i! s!))
   ))
   :pattern ((ens%Tr.test. Self%&. Self%& self! i! s!))
   :qid internal_ens__Tr.test._definition
   :skolemid skolem_internal_ens__Tr.test._definition
)))

;; Function-Axioms crate::X::ens
(assert
 (fuel_bool_default fuel%impl&%0.ens.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%0.ens.)
  (forall ((self! Poly) (i! Poly) (s! Poly)) (!
    (= (Tr.ens.? $ TYPE%X. self! i! s!) (B (< (Add (X./X/j (%Poly%X. self!)) (%I i!)) 256)))
    :pattern ((Tr.ens.? $ TYPE%X. self! i! s!))
    :qid internal_Tr.ens.?_definition
    :skolemid skolem_internal_Tr.ens.?_definition
))))

;; Function-Axioms crate::Y::ens
(assert
 (fuel_bool_default fuel%impl&%1.ens.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%1.ens.)
  (forall ((self! Poly) (i! Poly) (s! Poly)) (!
    (= (Tr.ens.? $ TYPE%Y. self! i! s!) (B (< (Add (Y./Y/j (%Poly%Y. self!)) (%I i!)) 256)))
    :pattern ((Tr.ens.? $ TYPE%Y. self! i! s!))
    :qid internal_Tr.ens.?_definition
    :skolemid skolem_internal_Tr.ens.?_definition
))))

;; Function-Axioms crate::Z::ens
(assert
 (fuel_bool_default fuel%impl&%2.ens.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%2.ens.)
  (forall ((self! Poly) (i! Poly) (s! Poly)) (!
    (= (Tr.ens.? $ TYPE%Z. self! i! s!) (B (< (Add (Z./Z/j (%Poly%Z. self!)) (%I i!)) 250)))
    :pattern ((Tr.ens.? $ TYPE%Z. self! i! s!))
    :qid internal_Tr.ens.?_definition
    :skolemid skolem_internal_Tr.ens.?_definition
))))

;; Function-Specs crate::X::test
(declare-fun ens%impl&%0.test. (Poly Poly Poly) Bool)
(assert
 (forall ((self! Poly) (i! Poly) (%return! Poly)) (!
   (= (ens%impl&%0.test. self! i! %return!) (and
     (ens%Tr.test. $ TYPE%X. self! i! %return!)
     (= (%Poly%X. %return!) (X./X (%I (I (uClip 8 (Add (X./X/j (%Poly%X. self!)) (%I i!)))))))
   ))
   :pattern ((ens%impl&%0.test. self! i! %return!))
   :qid internal_ens__impl&__0.test._definition
   :skolemid skolem_internal_ens__impl&__0.test._definition
)))

;; Function-Def crate::X::test
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/returns_postcondition-a69f6b6a80bc9aa7-trait_returns_on_trait_method_impl/test.rs:33:13: 33:21 (#0)
(get-info :all-statistics)
(push)
 (declare-const %return! Poly)
 (declare-const self! Poly)
 (declare-const i! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! TYPE%X.)
 )
 (assert
  (has_type i! (UINT 8))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::X::test
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/returns_postcondition-a69f6b6a80bc9aa7-trait_returns_on_trait_method_impl/test.rs:29:5: 29:38 (#0)
(get-info :all-statistics)
(push)
 (declare-const %return! Poly)
 (declare-const self! Poly)
 (declare-const i! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! TYPE%X.)
 )
 (assert
  (has_type i! (UINT 8))
 )
 (declare-const %%switch_label%%0 Bool)
 ;; possible arithmetic underflow/overflow
 (declare-const %%location_label%%0 Bool)
 ;; possible arithmetic underflow/overflow
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (uInv 64 (Add (uClip 64 (X./X/j (%Poly%X. self!))) (uClip 64 (%I i!))))
    )
    (or
     (=>
      (not (>= (uClip 64 (Add (uClip 64 (X./X/j (%Poly%X. self!))) (uClip 64 (%I i!)))) 256))
      %%switch_label%%0
     )
     (and
      (not %%switch_label%%0)
      (and
       (=>
        %%location_label%%1
        (uInv 8 (Add (X./X/j (%Poly%X. self!)) (%I i!)))
       )
       (=>
        (= %return! (Poly%X. (X./X (%I (I (uClip 8 (Add (X./X/j (%Poly%X. self!)) (%I i!))))))))
        (and
         (=>
          %%location_label%%2
          (%B (Tr.ens.? $ TYPE%X. self! i! %return!))
         )
         (=>
          %%location_label%%3
          (= (%Poly%X. %return!) (X./X (%I (I (uClip 8 (Add (X./X/j (%Poly%X. self!)) (%I i!)))))))
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Trait-Impl-Axiom
(assert
 (tr_bound%Tr. $ TYPE%X.)
)

;; Function-Specs crate::Y::test
(declare-fun ens%impl&%1.test. (Poly Poly Poly) Bool)
(assert
 (forall ((self! Poly) (i! Poly) (%return! Poly)) (!
   (= (ens%impl&%1.test. self! i! %return!) (and
     (ens%Tr.test. $ TYPE%Y. self! i! %return!)
     (= (%Poly%Y. %return!) (Y./Y (%I (I (Y./Y/j (%Poly%Y. self!))))))
   ))
   :pattern ((ens%impl&%1.test. self! i! %return!))
   :qid internal_ens__impl&__1.test._definition
   :skolemid skolem_internal_ens__impl&__1.test._definition
)))

;; Function-Def crate::Y::test
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/returns_postcondition-a69f6b6a80bc9aa7-trait_returns_on_trait_method_impl/test.rs:46:5: 46:38 (#0)
(get-info :all-statistics)
(push)
 (declare-const %return! Poly)
 (declare-const self! Poly)
 (declare-const i! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! TYPE%Y.)
 )
 (assert
  (has_type i! (UINT 8))
 )
 ;; postcondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= %return! (Poly%Y. (Y./Y (%I (I (Y./Y/j (%Poly%Y. self!)))))))
    (and
     (=>
      %%location_label%%0
      (%B (Tr.ens.? $ TYPE%Y. self! i! %return!))
     )
     (=>
      %%location_label%%1
      (= (%Poly%Y. %return!) (Y./Y (%I (I (Y./Y/j (%Poly%Y. self!))))))
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

;; Function-Recommends crate::Y::test
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/returns_postcondition-a69f6b6a80bc9aa7-trait_returns_on_trait_method_impl/test.rs:46:5: 46:38 (#0)
(get-info :all-statistics)
(push)
 (declare-const %return! Poly)
 (declare-const self! Poly)
 (declare-const i! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! TYPE%Y.)
 )
 (assert
  (has_type i! (UINT 8))
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
 (tr_bound%Tr. $ TYPE%Y.)
)

;; Function-Specs crate::Z::test
(declare-fun ens%impl&%2.test. (Poly Poly Poly) Bool)
(assert
 (forall ((self! Poly) (i! Poly) (%return! Poly)) (!
   (= (ens%impl&%2.test. self! i! %return!) (and
     (ens%Tr.test. $ TYPE%Z. self! i! %return!)
     (= (%Poly%Z. %return!) (Z./Z (%I (I (uClip 8 (Add (Z./Z/j (%Poly%Z. self!)) (%I i!)))))))
   ))
   :pattern ((ens%impl&%2.test. self! i! %return!))
   :qid internal_ens__impl&__2.test._definition
   :skolemid skolem_internal_ens__impl&__2.test._definition
)))

;; Function-Def crate::Z::test
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/returns_postcondition-a69f6b6a80bc9aa7-trait_returns_on_trait_method_impl/test.rs:64:13: 64:21 (#0)
(get-info :all-statistics)
(push)
 (declare-const %return! Poly)
 (declare-const self! Poly)
 (declare-const i! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! TYPE%Z.)
 )
 (assert
  (has_type i! (UINT 8))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::Z::test
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/returns_postcondition-a69f6b6a80bc9aa7-trait_returns_on_trait_method_impl/test.rs:60:5: 60:38 (#0)
(get-info :all-statistics)
(push)
 (declare-const %return! Poly)
 (declare-const self! Poly)
 (declare-const i! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! TYPE%Z.)
 )
 (assert
  (has_type i! (UINT 8))
 )
 (declare-const %%switch_label%%0 Bool)
 ;; possible arithmetic underflow/overflow
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (uInv 64 (Add (uClip 64 (Z./Z/j (%Poly%Z. self!))) (uClip 64 (%I i!))))
    )
    (or
     (=>
      (not (>= (uClip 64 (Add (uClip 64 (Z./Z/j (%Poly%Z. self!))) (uClip 64 (%I i!)))) 250))
      %%switch_label%%0
     )
     (and
      (not %%switch_label%%0)
      (=>
       (= %return! (Poly%Z. (Z./Z (%I (I (Z./Z/j (%Poly%Z. self!)))))))
       (and
        (=>
         %%location_label%%1
         (%B (Tr.ens.? $ TYPE%Z. self! i! %return!))
        )
        (=>
         %%location_label%%2
         (= (%Poly%Z. %return!) (Z./Z (%I (I (uClip 8 (Add (Z./Z/j (%Poly%Z. self!)) (%I i!)))))))
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
 (get-info :reason-unknown)
 (get-model)
 (assert
  (not %%location_label%%2)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Recommends crate::Z::test
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/returns_postcondition-a69f6b6a80bc9aa7-trait_returns_on_trait_method_impl/test.rs:64:13: 64:21 (#0)
(get-info :all-statistics)
(push)
 (declare-const %return! Poly)
 (declare-const self! Poly)
 (declare-const i! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! TYPE%Z.)
 )
 (assert
  (has_type i! (UINT 8))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Recommends crate::Z::test
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/returns_postcondition-a69f6b6a80bc9aa7-trait_returns_on_trait_method_impl/test.rs:60:5: 60:38 (#0)
(get-info :all-statistics)
(push)
 (declare-const %return! Poly)
 (declare-const self! Poly)
 (declare-const i! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! TYPE%Z.)
 )
 (assert
  (has_type i! (UINT 8))
 )
 (declare-const %%switch_label%%0 Bool)
 ;; recommendation not met: value may be out of range of the target type (use `#[verifier::truncate]` on the cast to silence this warning)
 (declare-const %%location_label%%0 Bool)
 ;; recommendation not met: value may be out of range of the target type (use `#[verifier::truncate]` on the cast to silence this warning)
 (declare-const %%location_label%%1 Bool)
 ;; recommendation not met: value may be out of range of the target type (use `#[verifier::truncate]` on the cast to silence this warning)
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (and
    (=>
     %%location_label%%0
     (uInv 64 (Z./Z/j (%Poly%Z. self!)))
    )
    (and
     (=>
      %%location_label%%1
      (has_type i! (UINT 64))
     )
     (or
      (=>
       (not (>= (uClip 64 (Add (uClip 64 (Z./Z/j (%Poly%Z. self!))) (uClip 64 (%I i!)))) 250))
       %%switch_label%%0
      )
      (and
       (not %%switch_label%%0)
       (=>
        (= %return! (Poly%Z. (Z./Z (%I (I (Z./Z/j (%Poly%Z. self!)))))))
        (=>
         %%location_label%%2
         (uInv 8 (Add (Z./Z/j (%Poly%Z. self!)) (%I i!)))
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Trait-Impl-Axiom
(assert
 (tr_bound%Tr. $ TYPE%Z.)
)

;; Function-Def crate::test_call
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/returns_postcondition-a69f6b6a80bc9aa7-trait_returns_on_trait_method_impl/test.rs:72:1: 72:26 (#0)
(get-info :all-statistics)
(push)
 (declare-const z! Z.)
 (declare-const i! Int)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const z2@ Z.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%Z. z!) TYPE%Z.)
 )
 (assert
  (uInv 8 i!)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (ens%impl&%2.test. (Poly%Z. z!) (I i!) tmp%1)
    (=>
     (= z2@ (%Poly%Z. tmp%1))
     (=>
      (= tmp%2 (< (Add (Z./Z/j (%Poly%Z. (Poly%Z. z!))) i!) 250))
      (and
       (=>
        %%location_label%%0
        tmp%2
       )
       (=>
        tmp%2
        (=>
         (= tmp%3 (= (Z./Z/j (%Poly%Z. (Poly%Z. z2@))) (Add (Z./Z/j (%Poly%Z. (Poly%Z. z!)))
            i!
         )))
         (=>
          %%location_label%%1
          tmp%3
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test_call_fail
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/returns_postcondition-a69f6b6a80bc9aa7-trait_returns_on_trait_method_impl/test.rs:78:1: 78:31 (#0)
(get-info :all-statistics)
(push)
 (declare-const z! Z.)
 (declare-const i! Int)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const z2@ Z.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%Z. z!) TYPE%Z.)
 )
 (assert
  (uInv 8 i!)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (ens%impl&%2.test. (Poly%Z. z!) (I i!) tmp%1)
    (=>
     (= z2@ (%Poly%Z. tmp%1))
     (=>
      (= tmp%2 (< (Add (Z./Z/j (%Poly%Z. (Poly%Z. z!))) i!) 250))
      (and
       (=>
        %%location_label%%0
        tmp%2
       )
       (=>
        tmp%2
        (=>
         (= tmp%3 (= (Z./Z/j (%Poly%Z. (Poly%Z. z2@))) (Add (Z./Z/j (%Poly%Z. (Poly%Z. z!)))
            i!
         )))
         (and
          (=>
           %%location_label%%1
           tmp%3
          )
          (=>
           tmp%3
           (=>
            %%location_label%%2
            false
 )))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
 (get-info :reason-unknown)
 (get-model)
 (assert
  (not %%location_label%%2)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Recommends crate::test_call_fail
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/returns_postcondition-a69f6b6a80bc9aa7-trait_returns_on_trait_method_impl/test.rs:78:1: 78:31 (#0)
(get-info :all-statistics)
(push)
 (declare-const z! Z.)
 (declare-const i! Int)
 (declare-const tmp%1 Poly)
 (declare-const z2@ Z.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%Z. z!) TYPE%Z.)
 )
 (assert
  (uInv 8 i!)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
