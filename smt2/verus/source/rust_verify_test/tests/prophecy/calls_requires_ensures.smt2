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
(assert
 true
)

;; Datatypes
(declare-sort Prophecy<bool.>. 0)
(declare-sort anonymous_closure%20. 0)
(declare-sort anonymous_closure%22. 0)
(declare-datatypes ((tuple%0. 0) (tuple%1. 0)) (((tuple%0./tuple%0)) ((tuple%1./tuple%1
    (tuple%1./tuple%1/?0 Poly)
))))
(declare-fun tuple%1./tuple%1/0 (tuple%1.) Poly)
(declare-fun TYPE%Prophecy. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%1. (Dcr Type) Type)
(declare-const TYPE%anonymous_closure%20. Type)
(declare-const TYPE%anonymous_closure%22. Type)
(declare-const FNDEF%freq. Type)
(declare-fun Poly%Prophecy<bool.>. (Prophecy<bool.>.) Poly)
(declare-fun %Poly%Prophecy<bool.>. (Poly) Prophecy<bool.>.)
(declare-fun Poly%anonymous_closure%20. (anonymous_closure%20.) Poly)
(declare-fun %Poly%anonymous_closure%20. (Poly) anonymous_closure%20.)
(declare-fun Poly%anonymous_closure%22. (anonymous_closure%22.) Poly)
(declare-fun %Poly%anonymous_closure%22. (Poly) anonymous_closure%22.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%1. (tuple%1.) Poly)
(declare-fun %Poly%tuple%1. (Poly) tuple%1.)
(assert
 (forall ((x Prophecy<bool.>.)) (!
   (= x (%Poly%Prophecy<bool.>. (Poly%Prophecy<bool.>. x)))
   :pattern ((Poly%Prophecy<bool.>. x))
   :qid internal_crate__Prophecy<bool.>_box_axiom_definition
   :skolemid skolem_internal_crate__Prophecy<bool.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%Prophecy. $ BOOL))
    (= x (Poly%Prophecy<bool.>. (%Poly%Prophecy<bool.>. x)))
   )
   :pattern ((has_type x (TYPE%Prophecy. $ BOOL)))
   :qid internal_crate__Prophecy<bool.>_unbox_axiom_definition
   :skolemid skolem_internal_crate__Prophecy<bool.>_unbox_axiom_definition
)))
(assert
 (forall ((x Prophecy<bool.>.)) (!
   (has_type (Poly%Prophecy<bool.>. x) (TYPE%Prophecy. $ BOOL))
   :pattern ((has_type (Poly%Prophecy<bool.>. x) (TYPE%Prophecy. $ BOOL)))
   :qid internal_crate__Prophecy<bool.>_has_type_always_definition
   :skolemid skolem_internal_crate__Prophecy<bool.>_has_type_always_definition
)))
(assert
 (forall ((x anonymous_closure%20.)) (!
   (= x (%Poly%anonymous_closure%20. (Poly%anonymous_closure%20. x)))
   :pattern ((Poly%anonymous_closure%20. x))
   :qid internal_crate__anonymous_closure__20_box_axiom_definition
   :skolemid skolem_internal_crate__anonymous_closure__20_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%anonymous_closure%20.)
    (= x (Poly%anonymous_closure%20. (%Poly%anonymous_closure%20. x)))
   )
   :pattern ((has_type x TYPE%anonymous_closure%20.))
   :qid internal_crate__anonymous_closure__20_unbox_axiom_definition
   :skolemid skolem_internal_crate__anonymous_closure__20_unbox_axiom_definition
)))
(assert
 (forall ((x anonymous_closure%20.)) (!
   (has_type (Poly%anonymous_closure%20. x) TYPE%anonymous_closure%20.)
   :pattern ((has_type (Poly%anonymous_closure%20. x) TYPE%anonymous_closure%20.))
   :qid internal_crate__anonymous_closure__20_has_type_always_definition
   :skolemid skolem_internal_crate__anonymous_closure__20_has_type_always_definition
)))
(assert
 (forall ((x anonymous_closure%22.)) (!
   (= x (%Poly%anonymous_closure%22. (Poly%anonymous_closure%22. x)))
   :pattern ((Poly%anonymous_closure%22. x))
   :qid internal_crate__anonymous_closure__22_box_axiom_definition
   :skolemid skolem_internal_crate__anonymous_closure__22_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%anonymous_closure%22.)
    (= x (Poly%anonymous_closure%22. (%Poly%anonymous_closure%22. x)))
   )
   :pattern ((has_type x TYPE%anonymous_closure%22.))
   :qid internal_crate__anonymous_closure__22_unbox_axiom_definition
   :skolemid skolem_internal_crate__anonymous_closure__22_unbox_axiom_definition
)))
(assert
 (forall ((x anonymous_closure%22.)) (!
   (has_type (Poly%anonymous_closure%22. x) TYPE%anonymous_closure%22.)
   :pattern ((has_type (Poly%anonymous_closure%22. x) TYPE%anonymous_closure%22.))
   :qid internal_crate__anonymous_closure__22_has_type_always_definition
   :skolemid skolem_internal_crate__anonymous_closure__22_has_type_always_definition
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

;; Function-Decl crate::Prophecy::value
(declare-fun impl&%0.value.? (Dcr Type Poly) Poly)

;; Function-Decl crate::Prophecy::may_resolve
(declare-fun impl&%0.may_resolve.? (Dcr Type Poly) Bool)

;; Function-Axioms crate::Prophecy::value
(assert
 (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%Prophecy. T&. T&))
    (has_type (impl&%0.value.? T&. T& self!) T&)
   )
   :pattern ((impl&%0.value.? T&. T& self!))
   :qid internal_impl&__0.value.?_pre_post_definition
   :skolemid skolem_internal_impl&__0.value.?_pre_post_definition
)))

;; Function-Specs crate::Prophecy::new
(declare-fun ens%impl&%0.new. (Dcr Type Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (s! Poly)) (!
   (= (ens%impl&%0.new. T&. T& s!) (and
     (has_type s! (TYPE%Prophecy. T&. T&))
     (impl&%0.may_resolve.? T&. T& s!)
   ))
   :pattern ((ens%impl&%0.new. T&. T& s!))
   :qid internal_ens__impl&__0.new._definition
   :skolemid skolem_internal_ens__impl&__0.new._definition
)))

;; Function-Specs crate::Prophecy::resolve
(declare-fun req%impl&%0.resolve. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (pre%self! Poly) (value! Poly)) (!
   (= (req%impl&%0.resolve. T&. T& pre%self! value!) (=>
     %%global_location_label%%0
     (impl&%0.may_resolve.? T&. T& pre%self!)
   ))
   :pattern ((req%impl&%0.resolve. T&. T& pre%self! value!))
   :qid internal_req__impl&__0.resolve._definition
   :skolemid skolem_internal_req__impl&__0.resolve._definition
)))
(declare-fun ens%impl&%0.resolve. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (pre%self! Poly) (self! Poly) (value! Poly)) (!
   (= (ens%impl&%0.resolve. T&. T& pre%self! self! value!) (and
     (has_type self! (TYPE%Prophecy. T&. T&))
     (not (impl&%0.may_resolve.? T&. T& self!))
     (= (impl&%0.value.? T&. T& self!) (impl&%0.value.? T&. T& pre%self!))
     (= (impl&%0.value.? T&. T& self!) value!)
   ))
   :pattern ((ens%impl&%0.resolve. T&. T& pre%self! self! value!))
   :qid internal_ens__impl&__0.resolve._definition
   :skolemid skolem_internal_ens__impl&__0.resolve._definition
)))

;; Function-Specs crate::freq
(declare-fun req%freq. (Prophecy<bool.>.) Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((t! Prophecy<bool.>.)) (!
   (= (req%freq. t!) (=>
     %%global_location_label%%1
     (= (%B (impl&%0.value.? $ BOOL (Poly%Prophecy<bool.>. t!))) false)
   ))
   :pattern ((req%freq. t!))
   :qid internal_req__freq._definition
   :skolemid skolem_internal_req__freq._definition
)))
(assert
 (forall ((tmp%%$ Poly)) (!
   (=>
    (has_type tmp%%$ (TYPE%tuple%1. $ (TYPE%Prophecy. $ BOOL)))
    (=>
     (let
      ((t$ (%Poly%Prophecy<bool.>. (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$)))))
      (= (%B (impl&%0.value.? $ BOOL (Poly%Prophecy<bool.>. t$))) false)
     )
     (closure_req FNDEF%freq. $ (TYPE%tuple%1. $ (TYPE%Prophecy. $ BOOL)) (F fndef_singleton)
      tmp%%$
   )))
   :pattern ((closure_req FNDEF%freq. $ (TYPE%tuple%1. $ (TYPE%Prophecy. $ BOOL)) (F fndef_singleton)
     tmp%%$
   ))
   :qid user_crate__freq_0
   :skolemid skolem_user_crate__freq_0
)))

;; Function-Def crate::freq
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/prophecy-ea4e010492bff285-calls_requires_ensures/test.rs:40:1: 40:35 (#0)
(get-info :all-statistics)
(push)
 (declare-const t! Prophecy<bool.>.)
 (assert
  fuel_defaults
 )
 (assert
  (= (%B (impl&%0.value.? $ BOOL (Poly%Prophecy<bool.>. t!))) false)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::test_req
(declare-fun req%test_req. (Prophecy<bool.>.) Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((t! Prophecy<bool.>.)) (!
   (= (req%test_req. t!) (=>
     %%global_location_label%%2
     (impl&%0.may_resolve.? $ BOOL (Poly%Prophecy<bool.>. t!))
   ))
   :pattern ((req%test_req. t!))
   :qid internal_req__test_req._definition
   :skolemid skolem_internal_req__test_req._definition
)))

;; Function-Def crate::test_req
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/prophecy-ea4e010492bff285-calls_requires_ensures/test.rs:44:7: 44:45 (#0)
(get-info :all-statistics)
(push)
 (declare-const t! Prophecy<bool.>.)
 (declare-const t@0 Prophecy<bool.>.)
 (declare-const b@ Bool)
 (assert
  fuel_defaults
 )
 (assert
  (impl&%0.may_resolve.? $ BOOL (Poly%Prophecy<bool.>. t!))
 )
 (declare-const t@1 Prophecy<bool.>.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= t@0 t!)
    (=>
     (= b@ (closure_req FNDEF%freq. $ (TYPE%tuple%1. $ (TYPE%Prophecy. $ BOOL)) (F fndef_singleton)
       (Poly%tuple%1. (tuple%1./tuple%1 (Poly%Prophecy<bool.>. t@0)))
     ))
     (and
      (=>
       %%location_label%%0
       (req%impl&%0.resolve. $ BOOL (Poly%Prophecy<bool.>. t@0) (B b@))
      )
      (=>
       (ens%impl&%0.resolve. $ BOOL (Poly%Prophecy<bool.>. t@0) (Poly%Prophecy<bool.>. t@1)
        (B b@)
       )
       (=>
        %%location_label%%1
        false
 )))))))
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

;; Function-Recommends crate::test_req
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/prophecy-ea4e010492bff285-calls_requires_ensures/test.rs:44:7: 44:45 (#0)
(get-info :all-statistics)
(push)
 (declare-const t! Prophecy<bool.>.)
 (declare-const t@0 Prophecy<bool.>.)
 (declare-const b@ Bool)
 (assert
  fuel_defaults
 )
 (declare-const t@1 Prophecy<bool.>.)
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::fens
(declare-fun ens%fens. (Prophecy<bool.>.) Bool)
(assert
 (forall ((t! Prophecy<bool.>.)) (!
   (= (ens%fens. t!) (= (%B (impl&%0.value.? $ BOOL (Poly%Prophecy<bool.>. t!))) false))
   :pattern ((ens%fens. t!))
   :qid internal_ens__fens._definition
   :skolemid skolem_internal_ens__fens._definition
)))

;; Function-Def crate::fens
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/prophecy-ea4e010492bff285-calls_requires_ensures/test.rs:55:1: 55:35 (#0)
(get-info :all-statistics)
(push)
 (declare-const t! Prophecy<bool.>.)
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

;; Function-Specs crate::test_ens
(declare-fun req%test_ens. (Prophecy<bool.>.) Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((t! Prophecy<bool.>.)) (!
   (= (req%test_ens. t!) (=>
     %%global_location_label%%3
     (impl&%0.may_resolve.? $ BOOL (Poly%Prophecy<bool.>. t!))
   ))
   :pattern ((req%test_ens. t!))
   :qid internal_req__test_ens._definition
   :skolemid skolem_internal_req__test_ens._definition
)))

;; Function-Def crate::test_ens
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/prophecy-ea4e010492bff285-calls_requires_ensures/test.rs:59:7: 59:45 (#0)
(get-info :all-statistics)
(push)
 (declare-const t! Prophecy<bool.>.)
 (declare-const t@0 Prophecy<bool.>.)
 (declare-const b@ Bool)
 (assert
  fuel_defaults
 )
 (assert
  (impl&%0.may_resolve.? $ BOOL (Poly%Prophecy<bool.>. t!))
 )
 (declare-const t@1 Prophecy<bool.>.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= t@0 t!)
    (=>
     (= b@ (closure_ens FNDEF%freq. $ (TYPE%tuple%1. $ (TYPE%Prophecy. $ BOOL)) (F fndef_singleton)
       (Poly%tuple%1. (tuple%1./tuple%1 (Poly%Prophecy<bool.>. t@0))) (Poly%tuple%0. tuple%0./tuple%0)
     ))
     (and
      (=>
       %%location_label%%0
       (req%impl&%0.resolve. $ BOOL (Poly%Prophecy<bool.>. t@0) (B b@))
      )
      (=>
       (ens%impl&%0.resolve. $ BOOL (Poly%Prophecy<bool.>. t@0) (Poly%Prophecy<bool.>. t@1)
        (B b@)
       )
       (=>
        %%location_label%%1
        false
 )))))))
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

;; Function-Recommends crate::test_ens
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/prophecy-ea4e010492bff285-calls_requires_ensures/test.rs:59:7: 59:45 (#0)
(get-info :all-statistics)
(push)
 (declare-const t! Prophecy<bool.>.)
 (declare-const t@0 Prophecy<bool.>.)
 (declare-const b@ Bool)
 (assert
  fuel_defaults
 )
 (declare-const t@1 Prophecy<bool.>.)
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::test_req_closure
(declare-fun req%test_req_closure. (Prophecy<bool.>.) Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((t! Prophecy<bool.>.)) (!
   (= (req%test_req_closure. t!) (=>
     %%global_location_label%%4
     (impl&%0.may_resolve.? $ BOOL (Poly%Prophecy<bool.>. t!))
   ))
   :pattern ((req%test_req_closure. t!))
   :qid internal_req__test_req_closure._definition
   :skolemid skolem_internal_req__test_req_closure._definition
)))

;; Function-Def crate::test_req_closure
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/prophecy-ea4e010492bff285-calls_requires_ensures/test.rs:70:1: 70:57 (#0)
(get-info :all-statistics)
(push)
 (declare-const t! Prophecy<bool.>.)
 (declare-const verus_tmp_t@0 Prophecy<bool.>.)
 (declare-const t~58 Prophecy<bool.>.)
 (declare-const %closure_return~59 tuple%0.)
 (declare-const tmp%%1 anonymous_closure%20.)
 (declare-const b@ Bool)
 (declare-const verus_tmp@ Prophecy<bool.>.)
 (declare-const t@0 Prophecy<bool.>.)
 (declare-const clos@ anonymous_closure%20.)
 (assert
  fuel_defaults
 )
 (assert
  (impl&%0.may_resolve.? $ BOOL (Poly%Prophecy<bool.>. t!))
 )
 (declare-const t@1 Prophecy<bool.>.)
 (declare-const t@2 Prophecy<bool.>.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= verus_tmp@ t!)
    (=>
     (= verus_tmp_t@0 verus_tmp@)
     (=>
      (= t@1 verus_tmp_t@0)
      (=>
       (forall ((tmp%%$ Poly)) (!
         (=>
          (has_type tmp%%$ (TYPE%tuple%1. $ (TYPE%Prophecy. $ BOOL)))
          (=>
           (let
            ((t$1 (%Poly%Prophecy<bool.>. (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$)))))
            (= (%B (impl&%0.value.? $ BOOL (Poly%Prophecy<bool.>. t$1))) false)
           )
           (closure_req TYPE%anonymous_closure%20. $ (TYPE%tuple%1. $ (TYPE%Prophecy. $ BOOL))
            (Poly%anonymous_closure%20. tmp%%1) tmp%%$
         )))
         :pattern ((closure_req TYPE%anonymous_closure%20. $ (TYPE%tuple%1. $ (TYPE%Prophecy.
             $ BOOL
            )
           ) (Poly%anonymous_closure%20. tmp%%1) tmp%%$
         ))
         :qid user_crate__test_req_closure_1
         :skolemid skolem_user_crate__test_req_closure_1
       ))
       (=>
        (= clos@ tmp%%1)
        (=>
         (= b@ (closure_req TYPE%anonymous_closure%20. $ (TYPE%tuple%1. $ (TYPE%Prophecy. $ BOOL))
           (Poly%anonymous_closure%20. clos@) (Poly%tuple%1. (tuple%1./tuple%1 (Poly%Prophecy<bool.>.
              t@1
         )))))
         (and
          (=>
           %%location_label%%0
           (req%impl&%0.resolve. $ BOOL (Poly%Prophecy<bool.>. t@1) (B b@))
          )
          (=>
           (ens%impl&%0.resolve. $ BOOL (Poly%Prophecy<bool.>. t@1) (Poly%Prophecy<bool.>. t@2)
            (B b@)
           )
           (=>
            %%location_label%%1
            false
 )))))))))))
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

;; Function-Recommends crate::test_req_closure
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/prophecy-ea4e010492bff285-calls_requires_ensures/test.rs:70:1: 70:57 (#0)
(get-info :all-statistics)
(push)
 (declare-const t! Prophecy<bool.>.)
 (declare-const verus_tmp_t@0 Prophecy<bool.>.)
 (declare-const t~58 Prophecy<bool.>.)
 (declare-const %closure_return~59 tuple%0.)
 (declare-const tmp%%1 anonymous_closure%20.)
 (declare-const b@ Bool)
 (declare-const verus_tmp@ Prophecy<bool.>.)
 (declare-const t@0 Prophecy<bool.>.)
 (declare-const clos@ anonymous_closure%20.)
 (assert
  fuel_defaults
 )
 (declare-const t@1 Prophecy<bool.>.)
 (declare-const t@2 Prophecy<bool.>.)
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::test_ens_closure
(declare-fun req%test_ens_closure. (Prophecy<bool.>.) Bool)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((t! Prophecy<bool.>.)) (!
   (= (req%test_ens_closure. t!) (=>
     %%global_location_label%%5
     (impl&%0.may_resolve.? $ BOOL (Poly%Prophecy<bool.>. t!))
   ))
   :pattern ((req%test_ens_closure. t!))
   :qid internal_req__test_ens_closure._definition
   :skolemid skolem_internal_req__test_ens_closure._definition
)))

;; Function-Def crate::test_ens_closure
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/prophecy-ea4e010492bff285-calls_requires_ensures/test.rs:87:1: 87:47 (#0)
(get-info :all-statistics)
(push)
 (declare-const t! Prophecy<bool.>.)
 (declare-const verus_tmp_t@0 Prophecy<bool.>.)
 (declare-const t~45 Prophecy<bool.>.)
 (declare-const %closure_return~46 tuple%0.)
 (declare-const tmp%%1 anonymous_closure%22.)
 (declare-const b@ Bool)
 (declare-const verus_tmp@ Prophecy<bool.>.)
 (declare-const t@0 Prophecy<bool.>.)
 (declare-const clos@ anonymous_closure%22.)
 (assert
  fuel_defaults
 )
 (assert
  (impl&%0.may_resolve.? $ BOOL (Poly%Prophecy<bool.>. t!))
 )
 (declare-const t@1 Prophecy<bool.>.)
 (declare-const t@2 Prophecy<bool.>.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= verus_tmp@ t!)
    (=>
     (= verus_tmp_t@0 verus_tmp@)
     (=>
      (= t@1 verus_tmp_t@0)
      (=>
       (and
        (forall ((tmp%%$ Poly)) (!
          (=>
           (has_type tmp%%$ (TYPE%tuple%1. $ (TYPE%Prophecy. $ BOOL)))
           (=>
            (let
             ((t$1 (%Poly%Prophecy<bool.>. (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$)))))
             true
            )
            (closure_req TYPE%anonymous_closure%22. $ (TYPE%tuple%1. $ (TYPE%Prophecy. $ BOOL))
             (Poly%anonymous_closure%22. tmp%%1) tmp%%$
          )))
          :pattern ((closure_req TYPE%anonymous_closure%22. $ (TYPE%tuple%1. $ (TYPE%Prophecy.
              $ BOOL
             )
            ) (Poly%anonymous_closure%22. tmp%%1) tmp%%$
          ))
          :qid user_crate__test_ens_closure_3
          :skolemid skolem_user_crate__test_ens_closure_3
        ))
        (forall ((tmp%%$ Poly) (%closure_return$ Poly)) (!
          (=>
           (and
            (has_type tmp%%$ (TYPE%tuple%1. $ (TYPE%Prophecy. $ BOOL)))
            (has_type %closure_return$ TYPE%tuple%0.)
           )
           (=>
            (closure_ens TYPE%anonymous_closure%22. $ (TYPE%tuple%1. $ (TYPE%Prophecy. $ BOOL))
             (Poly%anonymous_closure%22. tmp%%1) tmp%%$ %closure_return$
            )
            (let
             ((t$2 (%Poly%Prophecy<bool.>. (tuple%1./tuple%1/0 (%Poly%tuple%1. tmp%%$)))))
             (= (%B (impl&%0.value.? $ BOOL (Poly%Prophecy<bool.>. t$2))) false)
          )))
          :pattern ((closure_ens TYPE%anonymous_closure%22. $ (TYPE%tuple%1. $ (TYPE%Prophecy.
              $ BOOL
             )
            ) (Poly%anonymous_closure%22. tmp%%1) tmp%%$ %closure_return$
          ))
          :qid user_crate__test_ens_closure_4
          :skolemid skolem_user_crate__test_ens_closure_4
       )))
       (=>
        (= clos@ tmp%%1)
        (=>
         (= b@ (closure_ens TYPE%anonymous_closure%22. $ (TYPE%tuple%1. $ (TYPE%Prophecy. $ BOOL))
           (Poly%anonymous_closure%22. clos@) (Poly%tuple%1. (tuple%1./tuple%1 (Poly%Prophecy<bool.>.
              t@1
            ))
           ) (Poly%tuple%0. tuple%0./tuple%0)
         ))
         (and
          (=>
           %%location_label%%0
           (req%impl&%0.resolve. $ BOOL (Poly%Prophecy<bool.>. t@1) (B b@))
          )
          (=>
           (ens%impl&%0.resolve. $ BOOL (Poly%Prophecy<bool.>. t@1) (Poly%Prophecy<bool.>. t@2)
            (B b@)
           )
           (=>
            %%location_label%%1
            false
 )))))))))))
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

;; Function-Recommends crate::test_ens_closure
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/prophecy-ea4e010492bff285-calls_requires_ensures/test.rs:87:1: 87:47 (#0)
(get-info :all-statistics)
(push)
 (declare-const t! Prophecy<bool.>.)
 (declare-const verus_tmp_t@0 Prophecy<bool.>.)
 (declare-const t~45 Prophecy<bool.>.)
 (declare-const %closure_return~46 tuple%0.)
 (declare-const tmp%%1 anonymous_closure%22.)
 (declare-const b@ Bool)
 (declare-const verus_tmp@ Prophecy<bool.>.)
 (declare-const t@0 Prophecy<bool.>.)
 (declare-const clos@ anonymous_closure%22.)
 (assert
  fuel_defaults
 )
 (declare-const t@1 Prophecy<bool.>.)
 (declare-const t@2 Prophecy<bool.>.)
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
