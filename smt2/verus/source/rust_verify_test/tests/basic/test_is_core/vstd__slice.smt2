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

;; MODULE 'module vstd::slice'

;; Fuel
(declare-const fuel%vstd.raw_ptr.impl&%4.view. FuelId)
(declare-const fuel%vstd.seq.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd.slice.impl&%1.deep_view. FuelId)
(declare-const fuel%vstd.slice.impl&%2.spec_index. FuelId)
(declare-const fuel%vstd.slice.axiom_spec_len. FuelId)
(declare-const fuel%vstd.view.impl&%0.view. FuelId)
(declare-const fuel%vstd.view.impl&%1.deep_view. FuelId)
(declare-const fuel%vstd.view.impl&%2.view. FuelId)
(declare-const fuel%vstd.view.impl&%3.deep_view. FuelId)
(declare-const fuel%vstd.view.impl&%4.view. FuelId)
(declare-const fuel%vstd.view.impl&%5.deep_view. FuelId)
(declare-const fuel%vstd.view.impl&%16.view. FuelId)
(declare-const fuel%vstd.view.impl&%17.deep_view. FuelId)
(assert
 (distinct fuel%vstd.raw_ptr.impl&%4.view. fuel%vstd.seq.impl&%0.spec_index. fuel%vstd.slice.impl&%1.deep_view.
  fuel%vstd.slice.impl&%2.spec_index. fuel%vstd.slice.axiom_spec_len. fuel%vstd.view.impl&%0.view.
  fuel%vstd.view.impl&%1.deep_view. fuel%vstd.view.impl&%2.view. fuel%vstd.view.impl&%3.deep_view.
  fuel%vstd.view.impl&%4.view. fuel%vstd.view.impl&%5.deep_view. fuel%vstd.view.impl&%16.view.
  fuel%vstd.view.impl&%17.deep_view.
))

;; Associated-Type-Decls
(declare-fun proj%%vstd.view.View./V (Dcr Type) Dcr)
(declare-fun proj%vstd.view.View./V (Dcr Type) Type)
(declare-fun proj%%vstd.view.DeepView./V (Dcr Type) Dcr)
(declare-fun proj%vstd.view.DeepView./V (Dcr Type) Type)

;; Datatypes
(declare-sort vstd.raw_ptr.DynMetadata. 0)
(declare-sort vstd.raw_ptr.Provenance. 0)
(declare-datatypes ((vstd.raw_ptr.Metadata. 0) (vstd.raw_ptr.PtrData. 0) (tuple%0. 0))
 (((vstd.raw_ptr.Metadata./Thin) (vstd.raw_ptr.Metadata./Length (vstd.raw_ptr.Metadata./Length/?0
     Int
    )
   ) (vstd.raw_ptr.Metadata./Dyn (vstd.raw_ptr.Metadata./Dyn/?0 vstd.raw_ptr.DynMetadata.))
  ) ((vstd.raw_ptr.PtrData./PtrData (vstd.raw_ptr.PtrData./PtrData/?addr Int) (vstd.raw_ptr.PtrData./PtrData/?provenance
     vstd.raw_ptr.Provenance.
    ) (vstd.raw_ptr.PtrData./PtrData/?metadata vstd.raw_ptr.Metadata.)
   )
  ) ((tuple%0./tuple%0))
))
(declare-fun vstd.raw_ptr.Metadata./Length/0 (vstd.raw_ptr.Metadata.) Int)
(declare-fun vstd.raw_ptr.Metadata./Dyn/0 (vstd.raw_ptr.Metadata.) vstd.raw_ptr.DynMetadata.)
(declare-fun vstd.raw_ptr.PtrData./PtrData/addr (vstd.raw_ptr.PtrData.) Int)
(declare-fun vstd.raw_ptr.PtrData./PtrData/provenance (vstd.raw_ptr.PtrData.) vstd.raw_ptr.Provenance.)
(declare-fun vstd.raw_ptr.PtrData./PtrData/metadata (vstd.raw_ptr.PtrData.) vstd.raw_ptr.Metadata.)
(declare-fun TYPE%fun%1. (Dcr Type Dcr Type) Type)
(declare-const TYPE%vstd.raw_ptr.Provenance. Type)
(declare-const TYPE%vstd.raw_ptr.Metadata. Type)
(declare-const TYPE%vstd.raw_ptr.DynMetadata. Type)
(declare-const TYPE%vstd.raw_ptr.PtrData. Type)
(declare-fun TYPE%vstd.seq.Seq. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%fun%1. (%%Function%%) Poly)
(declare-fun %Poly%fun%1. (Poly) %%Function%%)
(declare-fun Poly%vstd.raw_ptr.DynMetadata. (vstd.raw_ptr.DynMetadata.) Poly)
(declare-fun %Poly%vstd.raw_ptr.DynMetadata. (Poly) vstd.raw_ptr.DynMetadata.)
(declare-fun Poly%vstd.raw_ptr.Provenance. (vstd.raw_ptr.Provenance.) Poly)
(declare-fun %Poly%vstd.raw_ptr.Provenance. (Poly) vstd.raw_ptr.Provenance.)
(declare-fun Poly%vstd.raw_ptr.Metadata. (vstd.raw_ptr.Metadata.) Poly)
(declare-fun %Poly%vstd.raw_ptr.Metadata. (Poly) vstd.raw_ptr.Metadata.)
(declare-fun Poly%vstd.raw_ptr.PtrData. (vstd.raw_ptr.PtrData.) Poly)
(declare-fun %Poly%vstd.raw_ptr.PtrData. (Poly) vstd.raw_ptr.PtrData.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
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

;; Traits
(declare-fun tr_bound%vstd.slice.SliceAdditionalSpecFns. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%vstd.view.View. (Dcr Type) Bool)
(declare-fun tr_bound%vstd.view.DeepView. (Dcr Type) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%vstd.slice.SliceAdditionalSpecFns. Self%&. Self%& T&. T&)
    (and
     (tr_bound%vstd.view.View. Self%&. Self%&)
     (and
      (= $ (proj%%vstd.view.View./V Self%&. Self%&))
      (= (TYPE%vstd.seq.Seq. T&. T&) (proj%vstd.view.View./V Self%&. Self%&))
   )))
   :pattern ((tr_bound%vstd.slice.SliceAdditionalSpecFns. Self%&. Self%& T&. T&))
   :qid internal_crate__vstd__slice__SliceAdditionalSpecFns_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__slice__SliceAdditionalSpecFns_trait_type_bounds_definition
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
   :pattern ((tr_bound%vstd.view.DeepView. Self%&. Self%&))
   :qid internal_crate__vstd__view__DeepView_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__view__DeepView_trait_type_bounds_definition
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
 (forall ((T&. Dcr) (T& Type)) (!
   (= (proj%%vstd.view.DeepView./V $ (SLICE T&. T&)) $)
   :pattern ((proj%%vstd.view.DeepView./V $ (SLICE T&. T&)))
   :qid internal_proj____vstd.view.DeepView./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd.view.DeepView./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (= (proj%vstd.view.DeepView./V $ (SLICE T&. T&)) (TYPE%vstd.seq.Seq. (proj%%vstd.view.DeepView./V
      T&. T&
     ) (proj%vstd.view.DeepView./V T&. T&)
   ))
   :pattern ((proj%vstd.view.DeepView./V $ (SLICE T&. T&)))
   :qid internal_proj__vstd.view.DeepView./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd.view.DeepView./V_assoc_type_impl_false_definition
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
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%%vstd.view.DeepView./V (REF A&.) A&) (proj%%vstd.view.DeepView./V A&. A&))
   :pattern ((proj%%vstd.view.DeepView./V (REF A&.) A&))
   :qid internal_proj____vstd.view.DeepView./V_assoc_type_impl_true_definition
   :skolemid skolem_internal_proj____vstd.view.DeepView./V_assoc_type_impl_true_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (proj%vstd.view.DeepView./V (REF A&.) A&) (proj%vstd.view.DeepView./V A&. A&))
   :pattern ((proj%vstd.view.DeepView./V (REF A&.) A&))
   :qid internal_proj__vstd.view.DeepView./V_assoc_type_impl_false_definition
   :skolemid skolem_internal_proj__vstd.view.DeepView./V_assoc_type_impl_false_definition
)))
(assert
 (= (proj%%vstd.view.View./V $ TYPE%tuple%0.) $)
)
(assert
 (= (proj%vstd.view.View./V $ TYPE%tuple%0.) TYPE%tuple%0.)
)
(assert
 (= (proj%%vstd.view.DeepView./V $ TYPE%tuple%0.) $)
)
(assert
 (= (proj%vstd.view.DeepView./V $ TYPE%tuple%0.) TYPE%tuple%0.)
)
(assert
 (= (proj%%vstd.view.View./V $ BOOL) $)
)
(assert
 (= (proj%vstd.view.View./V $ BOOL) BOOL)
)
(assert
 (= (proj%%vstd.view.DeepView./V $ BOOL) $)
)
(assert
 (= (proj%vstd.view.DeepView./V $ BOOL) BOOL)
)
(assert
 (= (proj%%vstd.view.View./V $ (UINT SZ)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (UINT SZ)) (UINT SZ))
)
(assert
 (= (proj%%vstd.view.DeepView./V $ (UINT SZ)) $)
)
(assert
 (= (proj%vstd.view.DeepView./V $ (UINT SZ)) (UINT SZ))
)

;; Function-Decl crate::vstd::view::View::view
(declare-fun vstd.view.View.view.? (Dcr Type Poly) Poly)
(declare-fun vstd.view.View.view%default%.? (Dcr Type Poly) Poly)

;; Function-Decl vstd::seq::Seq::len
(declare-fun vstd!seq.Seq.len.? (Dcr Type Poly) Int)

;; Function-Decl crate::vstd::slice::SliceAdditionalSpecFns::spec_index
(declare-fun vstd.slice.SliceAdditionalSpecFns.spec_index.? (Dcr Type Dcr Type Poly
  Poly
 ) Poly
)
(declare-fun vstd.slice.SliceAdditionalSpecFns.spec_index%default%.? (Dcr Type Dcr
  Type Poly Poly
 ) Poly
)

;; Function-Decl vstd::seq::Seq::new
(declare-fun vstd!seq.Seq.new.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::seq::Seq::index
(declare-fun vstd!seq.Seq.index.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::seq::Seq::spec_index
(declare-fun vstd.seq.impl&%0.spec_index.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::seq::Seq::subrange
(declare-fun vstd!seq.Seq.subrange.? (Dcr Type Poly Poly Poly) Poly)

;; Function-Decl crate::vstd::slice::spec_slice_len
(declare-fun vstd.slice.spec_slice_len.? (Dcr Type Poly) Int)

;; Function-Decl crate::vstd::view::DeepView::deep_view
(declare-fun vstd.view.DeepView.deep_view.? (Dcr Type Poly) Poly)
(declare-fun vstd.view.DeepView.deep_view%default%.? (Dcr Type Poly) Poly)

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

;; Function-Axioms vstd::seq::Seq::len
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
    (<= 0 (vstd!seq.Seq.len.? A&. A& self!))
   )
   :pattern ((vstd!seq.Seq.len.? A&. A& self!))
   :qid internal_vstd!seq.Seq.len.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.len.?_pre_post_definition
)))

;; Function-Specs crate::vstd::slice::SliceAdditionalSpecFns::spec_index
(declare-fun req%vstd.slice.SliceAdditionalSpecFns.spec_index. (Dcr Type Dcr Type Poly
  Poly
 ) Bool
)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly) (i! Poly)) (
   !
   (= (req%vstd.slice.SliceAdditionalSpecFns.spec_index. Self%&. Self%& T&. T& self! i!)
    (=>
     %%global_location_label%%0
     (and
      (<= 0 (%I i!))
      (< (%I i!) (vstd!seq.Seq.len.? T&. T& (vstd.view.View.view.? Self%&. Self%& self!)))
   )))
   :pattern ((req%vstd.slice.SliceAdditionalSpecFns.spec_index. Self%&. Self%& T&. T&
     self! i!
   ))
   :qid internal_req__vstd.slice.SliceAdditionalSpecFns.spec_index._definition
   :skolemid skolem_internal_req__vstd.slice.SliceAdditionalSpecFns.spec_index._definition
)))

;; Function-Axioms crate::vstd::slice::SliceAdditionalSpecFns::spec_index
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly) (i! Poly)) (
   !
   (=>
    (and
     (has_type self! Self%&)
     (has_type i! INT)
    )
    (has_type (vstd.slice.SliceAdditionalSpecFns.spec_index.? Self%&. Self%& T&. T& self!
      i!
     ) T&
   ))
   :pattern ((vstd.slice.SliceAdditionalSpecFns.spec_index.? Self%&. Self%& T&. T& self!
     i!
   ))
   :qid internal_vstd.slice.SliceAdditionalSpecFns.spec_index.?_pre_post_definition
   :skolemid skolem_internal_vstd.slice.SliceAdditionalSpecFns.spec_index.?_pre_post_definition
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

;; Function-Specs vstd::seq::Seq::index
(declare-fun req%vstd!seq.Seq.index. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
   (= (req%vstd!seq.Seq.index. A&. A& self! i!) (=>
     %%global_location_label%%1
     (and
      (<= 0 (%I i!))
      (< (%I i!) (vstd!seq.Seq.len.? A&. A& self!))
   )))
   :pattern ((req%vstd!seq.Seq.index. A&. A& self! i!))
   :qid internal_req__vstd!seq.Seq.index._definition
   :skolemid skolem_internal_req__vstd!seq.Seq.index._definition
)))

;; Function-Axioms vstd::seq::Seq::index
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type i! INT)
    )
    (has_type (vstd!seq.Seq.index.? A&. A& self! i!) A&)
   )
   :pattern ((vstd!seq.Seq.index.? A&. A& self! i!))
   :qid internal_vstd!seq.Seq.index.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.index.?_pre_post_definition
)))

;; Function-Specs crate::vstd::seq::Seq::spec_index
(declare-fun req%vstd.seq.impl&%0.spec_index. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
   (= (req%vstd.seq.impl&%0.spec_index. A&. A& self! i!) (=>
     %%global_location_label%%2
     (and
      (<= 0 (%I i!))
      (< (%I i!) (vstd!seq.Seq.len.? A&. A& self!))
   )))
   :pattern ((req%vstd.seq.impl&%0.spec_index. A&. A& self! i!))
   :qid internal_req__vstd.seq.impl&__0.spec_index._definition
   :skolemid skolem_internal_req__vstd.seq.impl&__0.spec_index._definition
)))

;; Function-Axioms crate::vstd::seq::Seq::spec_index
(assert
 (fuel_bool_default fuel%vstd.seq.impl&%0.spec_index.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.seq.impl&%0.spec_index.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
    (= (vstd.seq.impl&%0.spec_index.? A&. A& self! i!) (vstd!seq.Seq.index.? A&. A& self!
      i!
    ))
    :pattern ((vstd.seq.impl&%0.spec_index.? A&. A& self! i!))
    :qid internal_vstd.seq.impl&__0.spec_index.?_definition
    :skolemid skolem_internal_vstd.seq.impl&__0.spec_index.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type i! INT)
    )
    (has_type (vstd.seq.impl&%0.spec_index.? A&. A& self! i!) A&)
   )
   :pattern ((vstd.seq.impl&%0.spec_index.? A&. A& self! i!))
   :qid internal_vstd.seq.impl&__0.spec_index.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq.impl&__0.spec_index.?_pre_post_definition
)))

;; Function-Specs vstd::seq::Seq::subrange
(declare-fun req%vstd!seq.Seq.subrange. (Dcr Type Poly Poly Poly) Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (start_inclusive! Poly) (end_exclusive! Poly))
  (!
   (= (req%vstd!seq.Seq.subrange. A&. A& self! start_inclusive! end_exclusive!) (=>
     %%global_location_label%%3
     (and
      (and
       (<= 0 (%I start_inclusive!))
       (<= (%I start_inclusive!) (%I end_exclusive!))
      )
      (<= (%I end_exclusive!) (vstd!seq.Seq.len.? A&. A& self!))
   )))
   :pattern ((req%vstd!seq.Seq.subrange. A&. A& self! start_inclusive! end_exclusive!))
   :qid internal_req__vstd!seq.Seq.subrange._definition
   :skolemid skolem_internal_req__vstd!seq.Seq.subrange._definition
)))

;; Function-Axioms vstd::seq::Seq::subrange
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (start_inclusive! Poly) (end_exclusive! Poly))
  (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type start_inclusive! INT)
     (has_type end_exclusive! INT)
    )
    (has_type (vstd!seq.Seq.subrange.? A&. A& self! start_inclusive! end_exclusive!) (
      TYPE%vstd.seq.Seq. A&. A&
   )))
   :pattern ((vstd!seq.Seq.subrange.? A&. A& self! start_inclusive! end_exclusive!))
   :qid internal_vstd!seq.Seq.subrange.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.subrange.?_pre_post_definition
)))

;; Function-Specs vstd::slice::slice_index_get
(declare-fun req%vstd!slice.slice_index_get. (Dcr Type Poly Int) Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (slice! Poly) (i! Int)) (!
   (= (req%vstd!slice.slice_index_get. T&. T& slice! i!) (=>
     %%global_location_label%%4
     (and
      (<= 0 i!)
      (< i! (vstd!seq.Seq.len.? T&. T& (vstd.view.View.view.? $ (SLICE T&. T&) slice!)))
   )))
   :pattern ((req%vstd!slice.slice_index_get. T&. T& slice! i!))
   :qid internal_req__vstd!slice.slice_index_get._definition
   :skolemid skolem_internal_req__vstd!slice.slice_index_get._definition
)))
(declare-fun ens%vstd!slice.slice_index_get. (Dcr Type Poly Int Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (slice! Poly) (i! Int) (out! Poly)) (!
   (= (ens%vstd!slice.slice_index_get. T&. T& slice! i! out!) (and
     (has_type out! T&)
     (= out! (vstd!seq.Seq.index.? T&. T& (vstd.view.View.view.? $ (SLICE T&. T&) slice!)
       (I i!)
   ))))
   :pattern ((ens%vstd!slice.slice_index_get. T&. T& slice! i! out!))
   :qid internal_ens__vstd!slice.slice_index_get._definition
   :skolemid skolem_internal_ens__vstd!slice.slice_index_get._definition
)))

;; Function-Axioms crate::vstd::slice::spec_slice_len
(assert
 (forall ((T&. Dcr) (T& Type) (slice! Poly)) (!
   (=>
    (has_type slice! (SLICE T&. T&))
    (uInv SZ (vstd.slice.spec_slice_len.? T&. T& slice!))
   )
   :pattern ((vstd.slice.spec_slice_len.? T&. T& slice!))
   :qid internal_vstd.slice.spec_slice_len.?_pre_post_definition
   :skolemid skolem_internal_vstd.slice.spec_slice_len.?_pre_post_definition
)))

;; Function-Specs core::slice::impl&%0::len
(declare-fun ens%core!slice.impl&%0.len. (Dcr Type Poly Int) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (slice! Poly) (len! Int)) (!
   (= (ens%core!slice.impl&%0.len. T&. T& slice! len!) (and
     (uInv SZ len!)
     (= len! (vstd.slice.spec_slice_len.? T&. T& slice!))
   ))
   :pattern ((ens%core!slice.impl&%0.len. T&. T& slice! len!))
   :qid internal_ens__core!slice.impl&__0.len._definition
   :skolemid skolem_internal_ens__core!slice.impl&__0.len._definition
)))

;; Function-Specs crate::vstd::slice::slice_subrange
(declare-fun req%vstd.slice.slice_subrange. (Dcr Type Poly Int Int) Bool)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (slice! Poly) (i! Int) (j! Int)) (!
   (= (req%vstd.slice.slice_subrange. T&. T& slice! i! j!) (=>
     %%global_location_label%%5
     (and
      (and
       (<= 0 i!)
       (<= i! j!)
      )
      (<= j! (vstd!seq.Seq.len.? T&. T& (vstd.view.View.view.? $ (SLICE T&. T&) slice!)))
   )))
   :pattern ((req%vstd.slice.slice_subrange. T&. T& slice! i! j!))
   :qid internal_req__vstd.slice.slice_subrange._definition
   :skolemid skolem_internal_req__vstd.slice.slice_subrange._definition
)))
(declare-fun ens%vstd.slice.slice_subrange. (Dcr Type Poly Int Int Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (slice! Poly) (i! Int) (j! Int) (out! Poly)) (!
   (= (ens%vstd.slice.slice_subrange. T&. T& slice! i! j! out!) (and
     (has_type out! (SLICE T&. T&))
     (= (vstd.view.View.view.? $ (SLICE T&. T&) out!) (vstd!seq.Seq.subrange.? T&. T& (vstd.view.View.view.?
        $ (SLICE T&. T&) slice!
       ) (I i!) (I j!)
   ))))
   :pattern ((ens%vstd.slice.slice_subrange. T&. T& slice! i! j! out!))
   :qid internal_ens__vstd.slice.slice_subrange._definition
   :skolemid skolem_internal_ens__vstd.slice.slice_subrange._definition
)))

;; Function-Axioms crate::vstd::view::DeepView::deep_view
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.view.DeepView.deep_view.? Self%&. Self%& self!) (proj%vstd.view.DeepView./V
      Self%&. Self%&
   )))
   :pattern ((vstd.view.DeepView.deep_view.? Self%&. Self%& self!))
   :qid internal_vstd.view.DeepView.deep_view.?_pre_post_definition
   :skolemid skolem_internal_vstd.view.DeepView.deep_view.?_pre_post_definition
)))

;; Function-Def crate::vstd::slice::axiom_spec_len
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/slice.rs:57:1: 57:54 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const slice! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type slice! (SLICE T&. T&))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::slice::axiom_spec_len
(assert
 (=>
  (fuel_bool fuel%vstd.slice.axiom_spec_len.)
  (forall ((T&. Dcr) (T& Type) (slice! Poly)) (!
    (=>
     (has_type slice! (SLICE T&. T&))
     (= (vstd.slice.spec_slice_len.? T&. T& slice!) (vstd!seq.Seq.len.? T&. T& (vstd.view.View.view.?
        $ (SLICE T&. T&) slice!
    ))))
    :pattern ((vstd.slice.spec_slice_len.? T&. T& slice!))
    :qid user_crate__vstd__slice__axiom_spec_len_0
    :skolemid skolem_user_crate__vstd__slice__axiom_spec_len_0
))))

;; Function-Axioms crate::slice%::deep_view
(assert
 (fuel_bool_default fuel%vstd.slice.impl&%1.deep_view.)
)
(declare-fun %%lambda%%0 (Dcr Type Poly Dcr Type) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 Dcr) (%%hole%%4
    Type
   ) (i$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4) i$)
    (vstd.view.DeepView.deep_view.? %%hole%%3 %%hole%%4 (vstd!seq.Seq.index.? %%hole%%0
      %%hole%%1 %%hole%%2 i$
   )))
   :pattern ((%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4)
     i$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.slice.impl&%1.deep_view.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (=>
     (tr_bound%vstd.view.DeepView. T&. T&)
     (= (vstd.view.DeepView.deep_view.? $ (SLICE T&. T&) self!) (let
       ((v$ (vstd.view.View.view.? $ (SLICE T&. T&) self!)))
       (vstd!seq.Seq.new.? (proj%%vstd.view.DeepView./V T&. T&) (proj%vstd.view.DeepView./V
         T&. T&
        ) $ (TYPE%fun%1. $ INT (proj%%vstd.view.DeepView./V T&. T&) (proj%vstd.view.DeepView./V
          T&. T&
         )
        ) (I (vstd!seq.Seq.len.? T&. T& v$)) (Poly%fun%1. (mk_fun (%%lambda%%0 T&. T& v$ T&.
           T&
    )))))))
    :pattern ((vstd.view.DeepView.deep_view.? $ (SLICE T&. T&) self!))
    :qid internal_vstd.view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd.view.DeepView.deep_view.?_definition
))))

;; Function-Axioms crate::slice%::spec_index
(assert
 (fuel_bool_default fuel%vstd.slice.impl&%2.spec_index.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.slice.impl&%2.spec_index.)
  (forall ((T&. Dcr) (T& Type) (self! Poly) (i! Poly)) (!
    (= (vstd.slice.SliceAdditionalSpecFns.spec_index.? $ (SLICE T&. T&) T&. T& self! i!)
     (vstd!seq.Seq.index.? T&. T& (vstd.view.View.view.? $ (SLICE T&. T&) self!) i!)
    )
    :pattern ((vstd.slice.SliceAdditionalSpecFns.spec_index.? $ (SLICE T&. T&) T&. T& self!
      i!
    ))
    :qid internal_vstd.slice.SliceAdditionalSpecFns.spec_index.?_definition
    :skolemid skolem_internal_vstd.slice.SliceAdditionalSpecFns.spec_index.?_definition
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

;; Function-Axioms crate::vstd::view::impl&%1::deep_view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%1.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%1.deep_view.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (=>
     (tr_bound%vstd.view.DeepView. A&. A&)
     (= (vstd.view.DeepView.deep_view.? (REF A&.) A& self!) (vstd.view.DeepView.deep_view.?
       A&. A& self!
    )))
    :pattern ((vstd.view.DeepView.deep_view.? (REF A&.) A& self!))
    :qid internal_vstd.view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd.view.DeepView.deep_view.?_definition
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

;; Function-Axioms crate::vstd::view::impl&%3::deep_view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%3.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%3.deep_view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.DeepView.deep_view.? $ TYPE%tuple%0. self!) self!)
    :pattern ((vstd.view.DeepView.deep_view.? $ TYPE%tuple%0. self!))
    :qid internal_vstd.view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd.view.DeepView.deep_view.?_definition
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

;; Function-Axioms crate::vstd::view::impl&%5::deep_view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%5.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%5.deep_view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.DeepView.deep_view.? $ BOOL self!) self!)
    :pattern ((vstd.view.DeepView.deep_view.? $ BOOL self!))
    :qid internal_vstd.view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd.view.DeepView.deep_view.?_definition
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

;; Function-Axioms crate::vstd::view::impl&%17::deep_view
(assert
 (fuel_bool_default fuel%vstd.view.impl&%17.deep_view.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.view.impl&%17.deep_view.)
  (forall ((self! Poly)) (!
    (= (vstd.view.DeepView.deep_view.? $ (UINT SZ) self!) self!)
    :pattern ((vstd.view.DeepView.deep_view.? $ (UINT SZ) self!))
    :qid internal_vstd.view.DeepView.deep_view.?_definition
    :skolemid skolem_internal_vstd.view.DeepView.deep_view.?_definition
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
 (forall ((T&. Dcr) (T& Type)) (!
   (=>
    (tr_bound%vstd.view.DeepView. T&. T&)
    (tr_bound%vstd.view.DeepView. $ (SLICE T&. T&))
   )
   :pattern ((tr_bound%vstd.view.DeepView. $ (SLICE T&. T&)))
   :qid internal_crate__vstd__slice__impl&__1_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__slice__impl&__1_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%vstd.slice.SliceAdditionalSpecFns. $ (SLICE T&. T&) T&. T&)
   :pattern ((tr_bound%vstd.slice.SliceAdditionalSpecFns. $ (SLICE T&. T&) T&. T&))
   :qid internal_crate__vstd__slice__impl&__2_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__slice__impl&__2_trait_impl_definition
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
 (forall ((A&. Dcr) (A& Type)) (!
   (=>
    (tr_bound%vstd.view.DeepView. A&. A&)
    (tr_bound%vstd.view.DeepView. (REF A&.) A&)
   )
   :pattern ((tr_bound%vstd.view.DeepView. (REF A&.) A&))
   :qid internal_crate__vstd__view__impl&__1_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__view__impl&__1_trait_impl_definition
)))

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.DeepView. $ TYPE%tuple%0.)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.DeepView. $ BOOL)
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.DeepView. $ (UINT SZ))
)
