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
(declare-const fuel%Tr.stuff. FuelId)
(declare-const fuel%impl&%2.stuff. FuelId)
(declare-const fuel%impl&%3.stuff. FuelId)
(declare-const fuel%impl&%4.from_int. FuelId)
(declare-const fuel%impl&%5.stuff. FuelId)
(assert
 (distinct fuel%Tr.stuff. fuel%impl&%2.stuff. fuel%impl&%3.stuff. fuel%impl&%4.from_int.
  fuel%impl&%5.stuff.
))

;; Datatypes
(declare-datatypes ((X. 0) (Y. 0) (Z. 0) (W. 0) (U. 0) (tuple%0. 0) (tuple%2. 0))
 (((X./X (X./X/?a Poly))) ((Y./Y (Y./Y/?a Poly))) ((Z./Z (Z./Z/?a Poly))) ((W./W (W./W/?a
     Poly
   ))
  ) ((U./U (U./U/?a Poly))) ((tuple%0./tuple%0)) ((tuple%2./tuple%2 (tuple%2./tuple%2/?0
     Poly
    ) (tuple%2./tuple%2/?1 Poly)
))))
(declare-fun X./X/a (X.) Poly)
(declare-fun Y./Y/a (Y.) Poly)
(declare-fun Z./Z/a (Z.) Poly)
(declare-fun W./W/a (W.) Poly)
(declare-fun U./U/a (U.) Poly)
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-fun TYPE%X. (Dcr Type) Type)
(declare-fun TYPE%Y. (Dcr Type) Type)
(declare-fun TYPE%Z. (Dcr Type) Type)
(declare-fun TYPE%W. (Dcr Type) Type)
(declare-fun TYPE%U. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%2. (Dcr Type Dcr Type) Type)
(declare-fun FNDEF%Tr.hello. (Dcr Type) Type)
(declare-fun FNDEF%impl&%1.hello. (Dcr Type) Type)
(declare-fun FNDEF%impl&%3.hello. (Dcr Type) Type)
(declare-fun Poly%X. (X.) Poly)
(declare-fun %Poly%X. (Poly) X.)
(declare-fun Poly%Y. (Y.) Poly)
(declare-fun %Poly%Y. (Poly) Y.)
(declare-fun Poly%Z. (Z.) Poly)
(declare-fun %Poly%Z. (Poly) Z.)
(declare-fun Poly%W. (W.) Poly)
(declare-fun %Poly%W. (Poly) W.)
(declare-fun Poly%U. (U.) Poly)
(declare-fun %Poly%U. (Poly) U.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%2. (tuple%2.) Poly)
(declare-fun %Poly%tuple%2. (Poly) tuple%2.)
(assert
 (forall ((x X.)) (!
   (= x (%Poly%X. (Poly%X. x)))
   :pattern ((Poly%X. x))
   :qid internal_crate__X_box_axiom_definition
   :skolemid skolem_internal_crate__X_box_axiom_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%X. A&. A&))
    (= x (Poly%X. (%Poly%X. x)))
   )
   :pattern ((has_type x (TYPE%X. A&. A&)))
   :qid internal_crate__X_unbox_axiom_definition
   :skolemid skolem_internal_crate__X_unbox_axiom_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (_a! Poly)) (!
   (=>
    (has_type _a! A&)
    (has_type (Poly%X. (X./X _a!)) (TYPE%X. A&. A&))
   )
   :pattern ((has_type (Poly%X. (X./X _a!)) (TYPE%X. A&. A&)))
   :qid internal_X./X_constructor_definition
   :skolemid skolem_internal_X./X_constructor_definition
)))
(assert
 (forall ((x X.)) (!
   (= (X./X/a x) (X./X/?a x))
   :pattern ((X./X/a x))
   :qid internal_X./X/a_accessor_definition
   :skolemid skolem_internal_X./X/a_accessor_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%X. A&. A&))
    (has_type (X./X/a (%Poly%X. x)) A&)
   )
   :pattern ((X./X/a (%Poly%X. x)) (has_type x (TYPE%X. A&. A&)))
   :qid internal_X./X/a_invariant_definition
   :skolemid skolem_internal_X./X/a_invariant_definition
)))
(assert
 (forall ((x X.)) (!
   (=>
    (is-X./X x)
    (height_lt (height (X./X/a x)) (height (Poly%X. x)))
   )
   :pattern ((height (X./X/a x)))
   :qid prelude_datatype_height_X./X/a
   :skolemid skolem_prelude_datatype_height_X./X/a
)))
(assert
 (forall ((x Y.)) (!
   (= x (%Poly%Y. (Poly%Y. x)))
   :pattern ((Poly%Y. x))
   :qid internal_crate__Y_box_axiom_definition
   :skolemid skolem_internal_crate__Y_box_axiom_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%Y. A&. A&))
    (= x (Poly%Y. (%Poly%Y. x)))
   )
   :pattern ((has_type x (TYPE%Y. A&. A&)))
   :qid internal_crate__Y_unbox_axiom_definition
   :skolemid skolem_internal_crate__Y_unbox_axiom_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (_a! Poly)) (!
   (=>
    (has_type _a! A&)
    (has_type (Poly%Y. (Y./Y _a!)) (TYPE%Y. A&. A&))
   )
   :pattern ((has_type (Poly%Y. (Y./Y _a!)) (TYPE%Y. A&. A&)))
   :qid internal_Y./Y_constructor_definition
   :skolemid skolem_internal_Y./Y_constructor_definition
)))
(assert
 (forall ((x Y.)) (!
   (= (Y./Y/a x) (Y./Y/?a x))
   :pattern ((Y./Y/a x))
   :qid internal_Y./Y/a_accessor_definition
   :skolemid skolem_internal_Y./Y/a_accessor_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%Y. A&. A&))
    (has_type (Y./Y/a (%Poly%Y. x)) A&)
   )
   :pattern ((Y./Y/a (%Poly%Y. x)) (has_type x (TYPE%Y. A&. A&)))
   :qid internal_Y./Y/a_invariant_definition
   :skolemid skolem_internal_Y./Y/a_invariant_definition
)))
(assert
 (forall ((x Y.)) (!
   (=>
    (is-Y./Y x)
    (height_lt (height (Y./Y/a x)) (height (Poly%Y. x)))
   )
   :pattern ((height (Y./Y/a x)))
   :qid prelude_datatype_height_Y./Y/a
   :skolemid skolem_prelude_datatype_height_Y./Y/a
)))
(assert
 (forall ((x Z.)) (!
   (= x (%Poly%Z. (Poly%Z. x)))
   :pattern ((Poly%Z. x))
   :qid internal_crate__Z_box_axiom_definition
   :skolemid skolem_internal_crate__Z_box_axiom_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%Z. A&. A&))
    (= x (Poly%Z. (%Poly%Z. x)))
   )
   :pattern ((has_type x (TYPE%Z. A&. A&)))
   :qid internal_crate__Z_unbox_axiom_definition
   :skolemid skolem_internal_crate__Z_unbox_axiom_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (_a! Poly)) (!
   (=>
    (has_type _a! A&)
    (has_type (Poly%Z. (Z./Z _a!)) (TYPE%Z. A&. A&))
   )
   :pattern ((has_type (Poly%Z. (Z./Z _a!)) (TYPE%Z. A&. A&)))
   :qid internal_Z./Z_constructor_definition
   :skolemid skolem_internal_Z./Z_constructor_definition
)))
(assert
 (forall ((x Z.)) (!
   (= (Z./Z/a x) (Z./Z/?a x))
   :pattern ((Z./Z/a x))
   :qid internal_Z./Z/a_accessor_definition
   :skolemid skolem_internal_Z./Z/a_accessor_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%Z. A&. A&))
    (has_type (Z./Z/a (%Poly%Z. x)) A&)
   )
   :pattern ((Z./Z/a (%Poly%Z. x)) (has_type x (TYPE%Z. A&. A&)))
   :qid internal_Z./Z/a_invariant_definition
   :skolemid skolem_internal_Z./Z/a_invariant_definition
)))
(assert
 (forall ((x Z.)) (!
   (=>
    (is-Z./Z x)
    (height_lt (height (Z./Z/a x)) (height (Poly%Z. x)))
   )
   :pattern ((height (Z./Z/a x)))
   :qid prelude_datatype_height_Z./Z/a
   :skolemid skolem_prelude_datatype_height_Z./Z/a
)))
(assert
 (forall ((x W.)) (!
   (= x (%Poly%W. (Poly%W. x)))
   :pattern ((Poly%W. x))
   :qid internal_crate__W_box_axiom_definition
   :skolemid skolem_internal_crate__W_box_axiom_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%W. A&. A&))
    (= x (Poly%W. (%Poly%W. x)))
   )
   :pattern ((has_type x (TYPE%W. A&. A&)))
   :qid internal_crate__W_unbox_axiom_definition
   :skolemid skolem_internal_crate__W_unbox_axiom_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (_a! Poly)) (!
   (=>
    (has_type _a! A&)
    (has_type (Poly%W. (W./W _a!)) (TYPE%W. A&. A&))
   )
   :pattern ((has_type (Poly%W. (W./W _a!)) (TYPE%W. A&. A&)))
   :qid internal_W./W_constructor_definition
   :skolemid skolem_internal_W./W_constructor_definition
)))
(assert
 (forall ((x W.)) (!
   (= (W./W/a x) (W./W/?a x))
   :pattern ((W./W/a x))
   :qid internal_W./W/a_accessor_definition
   :skolemid skolem_internal_W./W/a_accessor_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%W. A&. A&))
    (has_type (W./W/a (%Poly%W. x)) A&)
   )
   :pattern ((W./W/a (%Poly%W. x)) (has_type x (TYPE%W. A&. A&)))
   :qid internal_W./W/a_invariant_definition
   :skolemid skolem_internal_W./W/a_invariant_definition
)))
(assert
 (forall ((x W.)) (!
   (=>
    (is-W./W x)
    (height_lt (height (W./W/a x)) (height (Poly%W. x)))
   )
   :pattern ((height (W./W/a x)))
   :qid prelude_datatype_height_W./W/a
   :skolemid skolem_prelude_datatype_height_W./W/a
)))
(assert
 (forall ((x U.)) (!
   (= x (%Poly%U. (Poly%U. x)))
   :pattern ((Poly%U. x))
   :qid internal_crate__U_box_axiom_definition
   :skolemid skolem_internal_crate__U_box_axiom_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%U. A&. A&))
    (= x (Poly%U. (%Poly%U. x)))
   )
   :pattern ((has_type x (TYPE%U. A&. A&)))
   :qid internal_crate__U_unbox_axiom_definition
   :skolemid skolem_internal_crate__U_unbox_axiom_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (_a! Poly)) (!
   (=>
    (has_type _a! A&)
    (has_type (Poly%U. (U./U _a!)) (TYPE%U. A&. A&))
   )
   :pattern ((has_type (Poly%U. (U./U _a!)) (TYPE%U. A&. A&)))
   :qid internal_U./U_constructor_definition
   :skolemid skolem_internal_U./U_constructor_definition
)))
(assert
 (forall ((x U.)) (!
   (= (U./U/a x) (U./U/?a x))
   :pattern ((U./U/a x))
   :qid internal_U./U/a_accessor_definition
   :skolemid skolem_internal_U./U/a_accessor_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%U. A&. A&))
    (has_type (U./U/a (%Poly%U. x)) A&)
   )
   :pattern ((U./U/a (%Poly%U. x)) (has_type x (TYPE%U. A&. A&)))
   :qid internal_U./U/a_invariant_definition
   :skolemid skolem_internal_U./U/a_invariant_definition
)))
(assert
 (forall ((x U.)) (!
   (=>
    (is-U./U x)
    (height_lt (height (U./U/a x)) (height (Poly%U. x)))
   )
   :pattern ((height (U./U/a x)))
   :qid prelude_datatype_height_U./U/a
   :skolemid skolem_prelude_datatype_height_U./U/a
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
(declare-fun tr_bound%Tr. (Dcr Type) Bool)
(declare-fun tr_bound%FromInt. (Dcr Type) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%Tr. Self%&. Self%&))
   :qid internal_crate__Tr_trait_type_bounds_definition
   :skolemid skolem_internal_crate__Tr_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%FromInt. Self%&. Self%&))
   :qid internal_crate__FromInt_trait_type_bounds_definition
   :skolemid skolem_internal_crate__FromInt_trait_type_bounds_definition
)))

;; Function-Decl crate::FromInt::from_int
(declare-fun FromInt.from_int.? (Dcr Type Poly) Poly)
(declare-fun FromInt.from_int%default%.? (Dcr Type Poly) Poly)

;; Function-Decl crate::Tr::stuff
(declare-fun Tr.stuff.? (Dcr Type Poly Poly) Poly)
(declare-fun Tr.stuff%default%.? (Dcr Type Poly Poly) Poly)

;; Function-Axioms crate::FromInt::from_int
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (i! Poly)) (!
   (=>
    (has_type i! (UINT 64))
    (has_type (FromInt.from_int.? Self%&. Self%& i!) Self%&)
   )
   :pattern ((FromInt.from_int.? Self%&. Self%& i!))
   :qid internal_FromInt.from_int.?_pre_post_definition
   :skolemid skolem_internal_FromInt.from_int.?_pre_post_definition
)))

;; Function-Axioms crate::Tr::stuff
(assert
 (fuel_bool_default fuel%Tr.stuff.)
)
(assert
 (=>
  (fuel_bool fuel%Tr.stuff.)
  (forall ((Self%&. Dcr) (Self%& Type) (i! Poly) (j! Poly)) (!
    (= (Tr.stuff%default%.? Self%&. Self%& i! j!) (B (= i! j!)))
    :pattern ((Tr.stuff%default%.? Self%&. Self%& i! j!))
    :qid internal_Tr.stuff__default__.?_definition
    :skolemid skolem_internal_Tr.stuff__default__.?_definition
))))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (i! Poly) (j! Poly)) (!
   (=>
    (and
     (has_type i! (UINT 64))
     (has_type j! (UINT 64))
    )
    (has_type (Tr.stuff.? Self%&. Self%& i! j!) BOOL)
   )
   :pattern ((Tr.stuff.? Self%&. Self%& i! j!))
   :qid internal_Tr.stuff.?_pre_post_definition
   :skolemid skolem_internal_Tr.stuff.?_pre_post_definition
)))

;; Function-Specs crate::Tr::hello
(declare-fun ens%Tr.hello. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (i! Poly) (j! Poly)) (!
   (= (ens%Tr.hello. Self%&. Self%& i! j!) (%B (Tr.stuff.? Self%&. Self%& i! j!)))
   :pattern ((ens%Tr.hello. Self%&. Self%& i! j!))
   :qid internal_ens__Tr.hello._definition
   :skolemid skolem_internal_ens__Tr.hello._definition
)))
(assert
 (forall ((tmp%%$ Poly) (Self%&. Dcr) (Self%& Type)) (!
   (=>
    (has_type tmp%%$ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64)))
    (=>
     (let
      ((i$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. tmp%%$)))))
      (let
       ((j$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. tmp%%$)))))
       true
     ))
     (closure_req (FNDEF%Tr.hello. Self%&. Self%&) $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))
      (F fndef_singleton) tmp%%$
   )))
   :pattern ((closure_req (FNDEF%Tr.hello. Self%&. Self%&) $ (TYPE%tuple%2. $ (UINT 64)
      $ (UINT 64)
     ) (F fndef_singleton) tmp%%$
   ))
   :qid user_crate__Tr__hello_0
   :skolemid skolem_user_crate__Tr__hello_0
)))
(assert
 (forall ((tmp%%$ Poly) (%return$ Poly) (Self%&. Dcr) (Self%& Type)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64)))
     (has_type %return$ TYPE%tuple%0.)
    )
    (=>
     (closure_ens (FNDEF%Tr.hello. Self%&. Self%&) $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64))
      (F fndef_singleton) tmp%%$ %return$
     )
     (%B (let
       ((i$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. tmp%%$)))))
       (let
        ((j$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. tmp%%$)))))
        (Tr.stuff.? Self%&. Self%& (I i$) (I j$))
   )))))
   :pattern ((closure_ens (FNDEF%Tr.hello. Self%&. Self%&) $ (TYPE%tuple%2. $ (UINT 64)
      $ (UINT 64)
     ) (F fndef_singleton) tmp%%$ %return$
   ))
   :qid user_crate__Tr__hello_1
   :skolemid skolem_user_crate__Tr__hello_1
)))

;; Function-Def crate::Tr::hello
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-trait_default_method_call_ensures_with_default_spec_fn/test.rs:18:5: 18:29 (#0)
(get-info :all-statistics)
(push)
 (declare-const Self%&. Dcr)
 (declare-const Self%& Type)
 (declare-const i! Poly)
 (declare-const j! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type i! (UINT 64))
 )
 (assert
  (has_type j! (UINT 64))
 )
 (assert
  (tr_bound%Tr. Self%&. Self%&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Axioms crate::impl&%0%default%stuff
(assert
 (forall ((A&. Dcr) (A& Type) (i! Poly) (j! Poly)) (!
   (= (Tr.stuff.? $ (TYPE%X. A&. A&) i! j!) (Tr.stuff%default%.? $ (TYPE%X. A&. A&) i!
     j!
   ))
   :pattern ((Tr.stuff.? $ (TYPE%X. A&. A&) i! j!))
   :qid internal_Tr.stuff.?_definition
   :skolemid skolem_internal_Tr.stuff.?_definition
)))

;; Function-Axioms crate::impl&%1%default%stuff
(assert
 (forall ((A&. Dcr) (A& Type) (i! Poly) (j! Poly)) (!
   (= (Tr.stuff.? $ (TYPE%Y. A&. A&) i! j!) (Tr.stuff%default%.? $ (TYPE%Y. A&. A&) i!
     j!
   ))
   :pattern ((Tr.stuff.? $ (TYPE%Y. A&. A&) i! j!))
   :qid internal_Tr.stuff.?_definition
   :skolemid skolem_internal_Tr.stuff.?_definition
)))

;; Function-Axioms crate::Z::stuff
(assert
 (fuel_bool_default fuel%impl&%2.stuff.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%2.stuff.)
  (forall ((A&. Dcr) (A& Type) (i! Poly) (j! Poly)) (!
    (= (Tr.stuff.? $ (TYPE%Z. A&. A&) i! j!) (B (= (%I i!) (Add (%I j!) 1))))
    :pattern ((Tr.stuff.? $ (TYPE%Z. A&. A&) i! j!))
    :qid internal_Tr.stuff.?_definition
    :skolemid skolem_internal_Tr.stuff.?_definition
))))

;; Function-Axioms crate::U::stuff
(assert
 (fuel_bool_default fuel%impl&%5.stuff.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%5.stuff.)
  (forall ((A&. Dcr) (A& Type) (i! Poly) (j! Poly)) (!
    (=>
     (tr_bound%FromInt. A&. A&)
     (= (Tr.stuff.? $ (TYPE%U. A&. A&) i! j!) (B (= (FromInt.from_int.? A&. A& i!) (FromInt.from_int.?
         A&. A& j!
    )))))
    :pattern ((Tr.stuff.? $ (TYPE%U. A&. A&) i! j!))
    :qid internal_Tr.stuff.?_definition
    :skolemid skolem_internal_Tr.stuff.?_definition
))))

;; Function-Axioms crate::W::stuff
(assert
 (fuel_bool_default fuel%impl&%3.stuff.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%3.stuff.)
  (forall ((A&. Dcr) (A& Type) (i! Poly) (j! Poly)) (!
    (= (Tr.stuff.? $ (TYPE%W. A&. A&) i! j!) (B (= (%I i!) (Add (%I j!) 1))))
    :pattern ((Tr.stuff.? $ (TYPE%W. A&. A&) i! j!))
    :qid internal_Tr.stuff.?_definition
    :skolemid skolem_internal_Tr.stuff.?_definition
))))

;; Function-Axioms crate::impl&%4::from_int
(assert
 (fuel_bool_default fuel%impl&%4.from_int.)
)
(assert
 (=>
  (fuel_bool fuel%impl&%4.from_int.)
  (forall ((i! Poly)) (!
    (= (FromInt.from_int.? $ BOOL i!) (B (= (%I i!) 4)))
    :pattern ((FromInt.from_int.? $ BOOL i!))
    :qid internal_FromInt.from_int.?_definition
    :skolemid skolem_internal_FromInt.from_int.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (tr_bound%Tr. $ (TYPE%X. A&. A&))
   :pattern ((tr_bound%Tr. $ (TYPE%X. A&. A&)))
   :qid internal_crate__impl&__0_trait_impl_definition
   :skolemid skolem_internal_crate__impl&__0_trait_impl_definition
)))

;; Function-Specs crate::Y::hello
(declare-fun ens%impl&%1.hello. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (i! Poly) (j! Poly)) (!
   (= (ens%impl&%1.hello. A&. A& i! j!) (and
     (ens%Tr.hello. $ (TYPE%Y. A&. A&) i! j!)
     (>= (%I i!) 5)
   ))
   :pattern ((ens%impl&%1.hello. A&. A& i! j!))
   :qid internal_ens__impl&__1.hello._definition
   :skolemid skolem_internal_ens__impl&__1.hello._definition
)))
(assert
 (forall ((tmp%%$ Poly) (%return$ Poly) (A&. Dcr) (A& Type)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64)))
     (has_type %return$ TYPE%tuple%0.)
    )
    (=>
     (closure_ens (FNDEF%Tr.hello. $ (TYPE%Y. A&. A&)) $ (TYPE%tuple%2. $ (UINT 64) $ (UINT
        64
       )
      ) (F fndef_singleton) tmp%%$ %return$
     )
     (let
      ((i$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. tmp%%$)))))
      (let
       ((j$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. tmp%%$)))))
       (>= i$ 5)
   ))))
   :pattern ((closure_ens (FNDEF%Tr.hello. $ (TYPE%Y. A&. A&)) $ (TYPE%tuple%2. $ (UINT
       64
      ) $ (UINT 64)
     ) (F fndef_singleton) tmp%%$ %return$
   ))
   :qid user_crate__Y__hello_2
   :skolemid skolem_user_crate__Y__hello_2
)))

;; Function-Def crate::Y::hello
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-trait_default_method_call_ensures_with_default_spec_fn/test.rs:31:5: 31:29 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const i! Poly)
 (declare-const j! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type i! (UINT 64))
 )
 (assert
  (has_type j! (UINT 64))
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
 (forall ((A&. Dcr) (A& Type)) (!
   (tr_bound%Tr. $ (TYPE%Y. A&. A&))
   :pattern ((tr_bound%Tr. $ (TYPE%Y. A&. A&)))
   :qid internal_crate__impl&__1_trait_impl_definition
   :skolemid skolem_internal_crate__impl&__1_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (tr_bound%Tr. $ (TYPE%Z. A&. A&))
   :pattern ((tr_bound%Tr. $ (TYPE%Z. A&. A&)))
   :qid internal_crate__impl&__2_trait_impl_definition
   :skolemid skolem_internal_crate__impl&__2_trait_impl_definition
)))

;; Function-Specs crate::W::hello
(declare-fun ens%impl&%3.hello. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (i! Poly) (j! Poly)) (!
   (= (ens%impl&%3.hello. A&. A& i! j!) (and
     (ens%Tr.hello. $ (TYPE%W. A&. A&) i! j!)
     (>= (%I i!) 5)
   ))
   :pattern ((ens%impl&%3.hello. A&. A& i! j!))
   :qid internal_ens__impl&__3.hello._definition
   :skolemid skolem_internal_ens__impl&__3.hello._definition
)))
(assert
 (forall ((tmp%%$ Poly) (%return$ Poly) (A&. Dcr) (A& Type)) (!
   (=>
    (and
     (has_type tmp%%$ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64)))
     (has_type %return$ TYPE%tuple%0.)
    )
    (=>
     (closure_ens (FNDEF%Tr.hello. $ (TYPE%W. A&. A&)) $ (TYPE%tuple%2. $ (UINT 64) $ (UINT
        64
       )
      ) (F fndef_singleton) tmp%%$ %return$
     )
     (let
      ((i$ (%I (tuple%2./tuple%2/0 (%Poly%tuple%2. tmp%%$)))))
      (let
       ((j$ (%I (tuple%2./tuple%2/1 (%Poly%tuple%2. tmp%%$)))))
       (>= i$ 5)
   ))))
   :pattern ((closure_ens (FNDEF%Tr.hello. $ (TYPE%W. A&. A&)) $ (TYPE%tuple%2. $ (UINT
       64
      ) $ (UINT 64)
     ) (F fndef_singleton) tmp%%$ %return$
   ))
   :qid user_crate__W__hello_3
   :skolemid skolem_user_crate__W__hello_3
)))

;; Function-Def crate::W::hello
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-trait_default_method_call_ensures_with_default_spec_fn/test.rs:47:5: 47:29 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const i! Poly)
 (declare-const j! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type i! (UINT 64))
 )
 (assert
  (has_type j! (UINT 64))
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
 (forall ((A&. Dcr) (A& Type)) (!
   (tr_bound%Tr. $ (TYPE%W. A&. A&))
   :pattern ((tr_bound%Tr. $ (TYPE%W. A&. A&)))
   :qid internal_crate__impl&__3_trait_impl_definition
   :skolemid skolem_internal_crate__impl&__3_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%FromInt. $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (=>
    (tr_bound%FromInt. A&. A&)
    (tr_bound%Tr. $ (TYPE%U. A&. A&))
   )
   :pattern ((tr_bound%Tr. $ (TYPE%U. A&. A&)))
   :qid internal_crate__impl&__5_trait_impl_definition
   :skolemid skolem_internal_crate__impl&__5_trait_impl_definition
)))

;; Function-Def crate::test
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-trait_default_method_call_ensures_with_default_spec_fn/test.rs:67:1: 67:31 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const i! Int)
 (declare-const j! Int)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 i!)
 )
 (assert
  (uInv 64 j!)
 )
 (assert
  (tr_bound%Tr. T&. T&)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%1 (=>
      (closure_ens (FNDEF%Tr.hello. T&. T&) $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64)) (F
        fndef_singleton
       ) (Poly%tuple%2. (tuple%2./tuple%2 (I i!) (I j!))) (Poly%tuple%0. tuple%0./tuple%0)
      )
      (%B (Tr.stuff.? T&. T& (I i!) (I j!)))
    ))
    (=>
     %%location_label%%0
     tmp%1
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test_fail
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-trait_default_method_call_ensures_with_default_spec_fn/test.rs:71:1: 71:36 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const i! Int)
 (declare-const j! Int)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 i!)
 )
 (assert
  (uInv 64 j!)
 )
 (assert
  (tr_bound%Tr. T&. T&)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%1 (=>
      (closure_ens (FNDEF%Tr.hello. T&. T&) $ (TYPE%tuple%2. $ (UINT 64) $ (UINT 64)) (F
        fndef_singleton
       ) (Poly%tuple%2. (tuple%2./tuple%2 (I i!) (I j!))) (Poly%tuple%0. tuple%0./tuple%0)
      )
      (= i! j!)
    ))
    (=>
     %%location_label%%0
     tmp%1
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

;; Function-Recommends crate::test_fail
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-trait_default_method_call_ensures_with_default_spec_fn/test.rs:71:1: 71:36 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const i! Int)
 (declare-const j! Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 i!)
 )
 (assert
  (uInv 64 j!)
 )
 (assert
  (tr_bound%Tr. T&. T&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-trait_default_method_call_ensures_with_default_spec_fn/test.rs:75:1: 75:25 (#0)
(get-info :all-statistics)
(push)
 (declare-const i! Int)
 (declare-const j! Int)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 i!)
 )
 (assert
  (uInv 64 j!)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%1 (=>
      (closure_ens (FNDEF%Tr.hello. $ (TYPE%X. $ BOOL)) $ (TYPE%tuple%2. $ (UINT 64) $ (UINT
         64
        )
       ) (F fndef_singleton) (Poly%tuple%2. (tuple%2./tuple%2 (I i!) (I j!))) (Poly%tuple%0.
        tuple%0./tuple%0
      ))
      (= i! j!)
    ))
    (=>
     %%location_label%%0
     tmp%1
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test3
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-trait_default_method_call_ensures_with_default_spec_fn/test.rs:79:1: 79:25 (#0)
(get-info :all-statistics)
(push)
 (declare-const i! Int)
 (declare-const j! Int)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 i!)
 )
 (assert
  (uInv 64 j!)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%1 (=>
      (closure_ens (FNDEF%Tr.hello. $ (TYPE%Y. $ BOOL)) $ (TYPE%tuple%2. $ (UINT 64) $ (UINT
         64
        )
       ) (F fndef_singleton) (Poly%tuple%2. (tuple%2./tuple%2 (I i!) (I j!))) (Poly%tuple%0.
        tuple%0./tuple%0
      ))
      (and
       (= i! j!)
       (>= i! 5)
    )))
    (=>
     %%location_label%%0
     tmp%1
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test4
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-trait_default_method_call_ensures_with_default_spec_fn/test.rs:83:1: 83:25 (#0)
(get-info :all-statistics)
(push)
 (declare-const i! Int)
 (declare-const j! Int)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 i!)
 )
 (assert
  (uInv 64 j!)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%1 (=>
      (closure_ens (FNDEF%Tr.hello. $ (TYPE%Z. $ BOOL)) $ (TYPE%tuple%2. $ (UINT 64) $ (UINT
         64
        )
       ) (F fndef_singleton) (Poly%tuple%2. (tuple%2./tuple%2 (I i!) (I j!))) (Poly%tuple%0.
        tuple%0./tuple%0
      ))
      (= i! (Add j! 1))
    ))
    (=>
     %%location_label%%0
     tmp%1
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test4_fail
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-trait_default_method_call_ensures_with_default_spec_fn/test.rs:87:1: 87:30 (#0)
(get-info :all-statistics)
(push)
 (declare-const i! Int)
 (declare-const j! Int)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 i!)
 )
 (assert
  (uInv 64 j!)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%1 (=>
      (closure_ens (FNDEF%Tr.hello. $ (TYPE%Z. $ BOOL)) $ (TYPE%tuple%2. $ (UINT 64) $ (UINT
         64
        )
       ) (F fndef_singleton) (Poly%tuple%2. (tuple%2./tuple%2 (I i!) (I j!))) (Poly%tuple%0.
        tuple%0./tuple%0
      ))
      (= i! j!)
    ))
    (=>
     %%location_label%%0
     tmp%1
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

;; Function-Recommends crate::test4_fail
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-trait_default_method_call_ensures_with_default_spec_fn/test.rs:87:1: 87:30 (#0)
(get-info :all-statistics)
(push)
 (declare-const i! Int)
 (declare-const j! Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 i!)
 )
 (assert
  (uInv 64 j!)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test5
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-trait_default_method_call_ensures_with_default_spec_fn/test.rs:91:1: 91:25 (#0)
(get-info :all-statistics)
(push)
 (declare-const i! Int)
 (declare-const j! Int)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 i!)
 )
 (assert
  (uInv 64 j!)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%1 (=>
      (closure_ens (FNDEF%Tr.hello. $ (TYPE%W. $ BOOL)) $ (TYPE%tuple%2. $ (UINT 64) $ (UINT
         64
        )
       ) (F fndef_singleton) (Poly%tuple%2. (tuple%2./tuple%2 (I i!) (I j!))) (Poly%tuple%0.
        tuple%0./tuple%0
      ))
      (and
       (= i! (Add j! 1))
       (>= i! 5)
    )))
    (=>
     %%location_label%%0
     tmp%1
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test5_fail
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-trait_default_method_call_ensures_with_default_spec_fn/test.rs:95:1: 95:30 (#0)
(get-info :all-statistics)
(push)
 (declare-const i! Int)
 (declare-const j! Int)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 i!)
 )
 (assert
  (uInv 64 j!)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%1 (=>
      (closure_ens (FNDEF%Tr.hello. $ (TYPE%W. $ BOOL)) $ (TYPE%tuple%2. $ (UINT 64) $ (UINT
         64
        )
       ) (F fndef_singleton) (Poly%tuple%2. (tuple%2./tuple%2 (I i!) (I j!))) (Poly%tuple%0.
        tuple%0./tuple%0
      ))
      (= i! j!)
    ))
    (=>
     %%location_label%%0
     tmp%1
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

;; Function-Recommends crate::test5_fail
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-trait_default_method_call_ensures_with_default_spec_fn/test.rs:95:1: 95:30 (#0)
(get-info :all-statistics)
(push)
 (declare-const i! Int)
 (declare-const j! Int)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 i!)
 )
 (assert
  (uInv 64 j!)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test6
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/fndef_types-2b591f3dc5716dd9-trait_default_method_call_ensures_with_default_spec_fn/test.rs:99:1: 99:25 (#0)
(get-info :all-statistics)
(push)
 (declare-const i! Int)
 (declare-const j! Int)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (uInv 64 i!)
 )
 (assert
  (uInv 64 j!)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    (= tmp%1 (=>
      (closure_ens (FNDEF%Tr.hello. $ (TYPE%U. $ BOOL)) $ (TYPE%tuple%2. $ (UINT 64) $ (UINT
         64
        )
       ) (F fndef_singleton) (Poly%tuple%2. (tuple%2./tuple%2 (I i!) (I j!))) (Poly%tuple%0.
        tuple%0./tuple%0
      ))
      (= (= i! 4) (= j! 4))
    ))
    (=>
     %%location_label%%0
     tmp%1
 ))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
