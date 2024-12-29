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

;; MODULE 'module test'

;; Fuel
(declare-const fuel%vstd.array.array_view. FuelId)
(declare-const fuel%vstd.array.impl&%0.view. FuelId)
(declare-const fuel%vstd.raw_ptr.impl&%4.view. FuelId)
(declare-const fuel%vstd.raw_ptr.spec_cast_ptr_to_thin_ptr. FuelId)
(declare-const fuel%vstd.raw_ptr.spec_cast_array_ptr_to_slice_ptr. FuelId)
(declare-const fuel%vstd.seq_lib.check_argument_is_seq. FuelId)
(declare-const fuel%vstd.set_lib.check_argument_is_set. FuelId)
(declare-const fuel%vstd.view.impl&%0.view. FuelId)
(declare-const fuel%vstd.view.impl&%2.view. FuelId)
(declare-const fuel%vstd.view.impl&%4.view. FuelId)
(declare-const fuel%vstd.view.impl&%6.view. FuelId)
(declare-const fuel%vstd.view.impl&%8.view. FuelId)
(declare-const fuel%vstd.view.impl&%16.view. FuelId)
(assert
 (distinct fuel%vstd.array.array_view. fuel%vstd.array.impl&%0.view. fuel%vstd.raw_ptr.impl&%4.view.
  fuel%vstd.raw_ptr.spec_cast_ptr_to_thin_ptr. fuel%vstd.raw_ptr.spec_cast_array_ptr_to_slice_ptr.
  fuel%vstd.seq_lib.check_argument_is_seq. fuel%vstd.set_lib.check_argument_is_set.
  fuel%vstd.view.impl&%0.view. fuel%vstd.view.impl&%2.view. fuel%vstd.view.impl&%4.view.
  fuel%vstd.view.impl&%6.view. fuel%vstd.view.impl&%8.view. fuel%vstd.view.impl&%16.view.
))

;; Associated-Type-Decls
(declare-fun proj%%vstd.view.View./V (Dcr Type) Dcr)
(declare-fun proj%vstd.view.View./V (Dcr Type) Type)

;; Datatypes
(declare-sort vstd.multiset.Multiset<int.>. 0)
(declare-sort vstd.raw_ptr.DynMetadata. 0)
(declare-sort vstd.raw_ptr.Provenance. 0)
(declare-sort vstd.seq.Seq<int.>. 0)
(declare-sort vstd.seq.Seq<u8.>. 0)
(declare-sort vstd.set.Set<int.>. 0)
(declare-sort slice%<u8.>. 0)
(declare-sort ptr_mut%<u8.>. 0)
(declare-sort ptr_mut%<u16.>. 0)
(declare-sort ptr_mut%<slice%<u8.>.>. 0)
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
(declare-fun TYPE%vstd.multiset.Multiset. (Dcr Type) Type)
(declare-const TYPE%vstd.raw_ptr.Provenance. Type)
(declare-const TYPE%vstd.raw_ptr.Metadata. Type)
(declare-const TYPE%vstd.raw_ptr.DynMetadata. Type)
(declare-const TYPE%vstd.raw_ptr.PtrData. Type)
(declare-fun TYPE%vstd.seq.Seq. (Dcr Type) Type)
(declare-fun TYPE%vstd.set.Set. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%fun%1. (%%Function%%) Poly)
(declare-fun %Poly%fun%1. (Poly) %%Function%%)
(declare-fun Poly%array%. (%%Function%%) Poly)
(declare-fun %Poly%array%. (Poly) %%Function%%)
(declare-fun Poly%vstd.multiset.Multiset<int.>. (vstd.multiset.Multiset<int.>.) Poly)
(declare-fun %Poly%vstd.multiset.Multiset<int.>. (Poly) vstd.multiset.Multiset<int.>.)
(declare-fun Poly%vstd.raw_ptr.DynMetadata. (vstd.raw_ptr.DynMetadata.) Poly)
(declare-fun %Poly%vstd.raw_ptr.DynMetadata. (Poly) vstd.raw_ptr.DynMetadata.)
(declare-fun Poly%vstd.raw_ptr.Provenance. (vstd.raw_ptr.Provenance.) Poly)
(declare-fun %Poly%vstd.raw_ptr.Provenance. (Poly) vstd.raw_ptr.Provenance.)
(declare-fun Poly%vstd.seq.Seq<int.>. (vstd.seq.Seq<int.>.) Poly)
(declare-fun %Poly%vstd.seq.Seq<int.>. (Poly) vstd.seq.Seq<int.>.)
(declare-fun Poly%vstd.seq.Seq<u8.>. (vstd.seq.Seq<u8.>.) Poly)
(declare-fun %Poly%vstd.seq.Seq<u8.>. (Poly) vstd.seq.Seq<u8.>.)
(declare-fun Poly%vstd.set.Set<int.>. (vstd.set.Set<int.>.) Poly)
(declare-fun %Poly%vstd.set.Set<int.>. (Poly) vstd.set.Set<int.>.)
(declare-fun Poly%slice%<u8.>. (slice%<u8.>.) Poly)
(declare-fun %Poly%slice%<u8.>. (Poly) slice%<u8.>.)
(declare-fun Poly%ptr_mut%<u8.>. (ptr_mut%<u8.>.) Poly)
(declare-fun %Poly%ptr_mut%<u8.>. (Poly) ptr_mut%<u8.>.)
(declare-fun Poly%ptr_mut%<u16.>. (ptr_mut%<u16.>.) Poly)
(declare-fun %Poly%ptr_mut%<u16.>. (Poly) ptr_mut%<u16.>.)
(declare-fun Poly%ptr_mut%<slice%<u8.>.>. (ptr_mut%<slice%<u8.>.>.) Poly)
(declare-fun %Poly%ptr_mut%<slice%<u8.>.>. (Poly) ptr_mut%<slice%<u8.>.>.)
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
 (forall ((x vstd.multiset.Multiset<int.>.)) (!
   (= x (%Poly%vstd.multiset.Multiset<int.>. (Poly%vstd.multiset.Multiset<int.>. x)))
   :pattern ((Poly%vstd.multiset.Multiset<int.>. x))
   :qid internal_crate__vstd__multiset__Multiset<int.>_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__multiset__Multiset<int.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.multiset.Multiset. $ INT))
    (= x (Poly%vstd.multiset.Multiset<int.>. (%Poly%vstd.multiset.Multiset<int.>. x)))
   )
   :pattern ((has_type x (TYPE%vstd.multiset.Multiset. $ INT)))
   :qid internal_crate__vstd__multiset__Multiset<int.>_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__multiset__Multiset<int.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.multiset.Multiset<int.>.)) (!
   (has_type (Poly%vstd.multiset.Multiset<int.>. x) (TYPE%vstd.multiset.Multiset. $ INT))
   :pattern ((has_type (Poly%vstd.multiset.Multiset<int.>. x) (TYPE%vstd.multiset.Multiset.
      $ INT
   )))
   :qid internal_crate__vstd__multiset__Multiset<int.>_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__multiset__Multiset<int.>_has_type_always_definition
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
 (forall ((x vstd.seq.Seq<int.>.)) (!
   (= x (%Poly%vstd.seq.Seq<int.>. (Poly%vstd.seq.Seq<int.>. x)))
   :pattern ((Poly%vstd.seq.Seq<int.>. x))
   :qid internal_crate__vstd__seq__Seq<int.>_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__seq__Seq<int.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.seq.Seq. $ INT))
    (= x (Poly%vstd.seq.Seq<int.>. (%Poly%vstd.seq.Seq<int.>. x)))
   )
   :pattern ((has_type x (TYPE%vstd.seq.Seq. $ INT)))
   :qid internal_crate__vstd__seq__Seq<int.>_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__seq__Seq<int.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.seq.Seq<int.>.)) (!
   (has_type (Poly%vstd.seq.Seq<int.>. x) (TYPE%vstd.seq.Seq. $ INT))
   :pattern ((has_type (Poly%vstd.seq.Seq<int.>. x) (TYPE%vstd.seq.Seq. $ INT)))
   :qid internal_crate__vstd__seq__Seq<int.>_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__seq__Seq<int.>_has_type_always_definition
)))
(assert
 (forall ((x vstd.seq.Seq<u8.>.)) (!
   (= x (%Poly%vstd.seq.Seq<u8.>. (Poly%vstd.seq.Seq<u8.>. x)))
   :pattern ((Poly%vstd.seq.Seq<u8.>. x))
   :qid internal_crate__vstd__seq__Seq<u8.>_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__seq__Seq<u8.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.seq.Seq. $ (UINT 8)))
    (= x (Poly%vstd.seq.Seq<u8.>. (%Poly%vstd.seq.Seq<u8.>. x)))
   )
   :pattern ((has_type x (TYPE%vstd.seq.Seq. $ (UINT 8))))
   :qid internal_crate__vstd__seq__Seq<u8.>_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__seq__Seq<u8.>_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.seq.Seq<u8.>.)) (!
   (has_type (Poly%vstd.seq.Seq<u8.>. x) (TYPE%vstd.seq.Seq. $ (UINT 8)))
   :pattern ((has_type (Poly%vstd.seq.Seq<u8.>. x) (TYPE%vstd.seq.Seq. $ (UINT 8))))
   :qid internal_crate__vstd__seq__Seq<u8.>_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__seq__Seq<u8.>_has_type_always_definition
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
 (forall ((x slice%<u8.>.)) (!
   (= x (%Poly%slice%<u8.>. (Poly%slice%<u8.>. x)))
   :pattern ((Poly%slice%<u8.>. x))
   :qid internal_crate__slice__<u8.>_box_axiom_definition
   :skolemid skolem_internal_crate__slice__<u8.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (SLICE $ (UINT 8)))
    (= x (Poly%slice%<u8.>. (%Poly%slice%<u8.>. x)))
   )
   :pattern ((has_type x (SLICE $ (UINT 8))))
   :qid internal_crate__slice__<u8.>_unbox_axiom_definition
   :skolemid skolem_internal_crate__slice__<u8.>_unbox_axiom_definition
)))
(assert
 (forall ((x slice%<u8.>.)) (!
   (has_type (Poly%slice%<u8.>. x) (SLICE $ (UINT 8)))
   :pattern ((has_type (Poly%slice%<u8.>. x) (SLICE $ (UINT 8))))
   :qid internal_crate__slice__<u8.>_has_type_always_definition
   :skolemid skolem_internal_crate__slice__<u8.>_has_type_always_definition
)))
(assert
 (forall ((x ptr_mut%<u8.>.)) (!
   (= x (%Poly%ptr_mut%<u8.>. (Poly%ptr_mut%<u8.>. x)))
   :pattern ((Poly%ptr_mut%<u8.>. x))
   :qid internal_crate__ptr_mut__<u8.>_box_axiom_definition
   :skolemid skolem_internal_crate__ptr_mut__<u8.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (PTR $ (UINT 8)))
    (= x (Poly%ptr_mut%<u8.>. (%Poly%ptr_mut%<u8.>. x)))
   )
   :pattern ((has_type x (PTR $ (UINT 8))))
   :qid internal_crate__ptr_mut__<u8.>_unbox_axiom_definition
   :skolemid skolem_internal_crate__ptr_mut__<u8.>_unbox_axiom_definition
)))
(assert
 (forall ((x ptr_mut%<u8.>.)) (!
   (has_type (Poly%ptr_mut%<u8.>. x) (PTR $ (UINT 8)))
   :pattern ((has_type (Poly%ptr_mut%<u8.>. x) (PTR $ (UINT 8))))
   :qid internal_crate__ptr_mut__<u8.>_has_type_always_definition
   :skolemid skolem_internal_crate__ptr_mut__<u8.>_has_type_always_definition
)))
(assert
 (forall ((x ptr_mut%<u16.>.)) (!
   (= x (%Poly%ptr_mut%<u16.>. (Poly%ptr_mut%<u16.>. x)))
   :pattern ((Poly%ptr_mut%<u16.>. x))
   :qid internal_crate__ptr_mut__<u16.>_box_axiom_definition
   :skolemid skolem_internal_crate__ptr_mut__<u16.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (PTR $ (UINT 16)))
    (= x (Poly%ptr_mut%<u16.>. (%Poly%ptr_mut%<u16.>. x)))
   )
   :pattern ((has_type x (PTR $ (UINT 16))))
   :qid internal_crate__ptr_mut__<u16.>_unbox_axiom_definition
   :skolemid skolem_internal_crate__ptr_mut__<u16.>_unbox_axiom_definition
)))
(assert
 (forall ((x ptr_mut%<u16.>.)) (!
   (has_type (Poly%ptr_mut%<u16.>. x) (PTR $ (UINT 16)))
   :pattern ((has_type (Poly%ptr_mut%<u16.>. x) (PTR $ (UINT 16))))
   :qid internal_crate__ptr_mut__<u16.>_has_type_always_definition
   :skolemid skolem_internal_crate__ptr_mut__<u16.>_has_type_always_definition
)))
(assert
 (forall ((x ptr_mut%<slice%<u8.>.>.)) (!
   (= x (%Poly%ptr_mut%<slice%<u8.>.>. (Poly%ptr_mut%<slice%<u8.>.>. x)))
   :pattern ((Poly%ptr_mut%<slice%<u8.>.>. x))
   :qid internal_crate__ptr_mut__<slice__<u8.>.>_box_axiom_definition
   :skolemid skolem_internal_crate__ptr_mut__<slice__<u8.>.>_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x (PTR $ (SLICE $ (UINT 8))))
    (= x (Poly%ptr_mut%<slice%<u8.>.>. (%Poly%ptr_mut%<slice%<u8.>.>. x)))
   )
   :pattern ((has_type x (PTR $ (SLICE $ (UINT 8)))))
   :qid internal_crate__ptr_mut__<slice__<u8.>.>_unbox_axiom_definition
   :skolemid skolem_internal_crate__ptr_mut__<slice__<u8.>.>_unbox_axiom_definition
)))
(assert
 (forall ((x ptr_mut%<slice%<u8.>.>.)) (!
   (has_type (Poly%ptr_mut%<slice%<u8.>.>. x) (PTR $ (SLICE $ (UINT 8))))
   :pattern ((has_type (Poly%ptr_mut%<slice%<u8.>.>. x) (PTR $ (SLICE $ (UINT 8)))))
   :qid internal_crate__ptr_mut__<slice__<u8.>.>_has_type_always_definition
   :skolemid skolem_internal_crate__ptr_mut__<slice__<u8.>.>_has_type_always_definition
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
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%vstd.view.View. Self%&. Self%&))
   :qid internal_crate__vstd__view__View_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__view__View_trait_type_bounds_definition
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
 (= (proj%%vstd.view.View./V $ (UINT SZ)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (UINT SZ)) (UINT SZ))
)

;; Function-Decl crate::vstd::view::View::view
(declare-fun vstd.view.View.view.? (Dcr Type Poly) Poly)
(declare-fun vstd.view.View.view%default%.? (Dcr Type Poly) Poly)

;; Function-Decl vstd::seq::Seq::len
(declare-fun vstd!seq.Seq.len.? (Dcr Type Poly) Int)

;; Function-Decl crate::vstd::set::Set::contains
(declare-fun vstd.set.impl&%0.contains.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::multiset::Multiset::count
(declare-fun vstd.multiset.impl&%0.count.? (Dcr Type Poly Poly) Int)

;; Function-Decl crate::vstd::raw_ptr::ptr_mut_from_data
(declare-fun vstd.raw_ptr.ptr_mut_from_data.? (Dcr Type Poly) Poly)

;; Function-Decl vstd::seq::Seq::new
(declare-fun vstd!seq.Seq.new.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::array::array_view
(declare-fun vstd.array.array_view.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl vstd::seq::Seq::index
(declare-fun vstd!seq.Seq.index.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::raw_ptr::spec_cast_ptr_to_thin_ptr
(declare-fun vstd.raw_ptr.spec_cast_ptr_to_thin_ptr.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::raw_ptr::spec_cast_array_ptr_to_slice_ptr
(declare-fun vstd.raw_ptr.spec_cast_array_ptr_to_slice_ptr.? (Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::seq_lib::check_argument_is_seq
(declare-fun vstd.seq_lib.check_argument_is_seq.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::set_lib::check_argument_is_set
(declare-fun vstd.set_lib.check_argument_is_set.? (Dcr Type Poly) Poly)

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

;; Function-Axioms crate::vstd::multiset::Multiset::count
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (value! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.multiset.Multiset. V&. V&))
     (has_type value! V&)
    )
    (<= 0 (vstd.multiset.impl&%0.count.? V&. V& self! value!))
   )
   :pattern ((vstd.multiset.impl&%0.count.? V&. V& self! value!))
   :qid internal_vstd.multiset.impl&__0.count.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.count.?_pre_post_definition
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

;; Function-Specs vstd::seq::Seq::index
(declare-fun req%vstd!seq.Seq.index. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
   (= (req%vstd!seq.Seq.index. A&. A& self! i!) (=>
     %%global_location_label%%0
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

;; Function-Specs vstd::slice::slice_index_get
(declare-fun req%vstd!slice.slice_index_get. (Dcr Type Poly Int) Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (slice! Poly) (i! Int)) (!
   (= (req%vstd!slice.slice_index_get. T&. T& slice! i!) (=>
     %%global_location_label%%1
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

;; Function-Axioms crate::vstd::seq_lib::check_argument_is_seq
(assert
 (fuel_bool_default fuel%vstd.seq_lib.check_argument_is_seq.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.check_argument_is_seq.)
  (forall ((A&. Dcr) (A& Type) (s! Poly)) (!
    (= (vstd.seq_lib.check_argument_is_seq.? A&. A& s!) s!)
    :pattern ((vstd.seq_lib.check_argument_is_seq.? A&. A& s!))
    :qid internal_vstd.seq_lib.check_argument_is_seq.?_definition
    :skolemid skolem_internal_vstd.seq_lib.check_argument_is_seq.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly)) (!
   (=>
    (has_type s! (TYPE%vstd.seq.Seq. A&. A&))
    (has_type (vstd.seq_lib.check_argument_is_seq.? A&. A& s!) (TYPE%vstd.seq.Seq. A&.
      A&
   )))
   :pattern ((vstd.seq_lib.check_argument_is_seq.? A&. A& s!))
   :qid internal_vstd.seq_lib.check_argument_is_seq.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.check_argument_is_seq.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::set_lib::check_argument_is_set
(assert
 (fuel_bool_default fuel%vstd.set_lib.check_argument_is_set.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.set_lib.check_argument_is_set.)
  (forall ((A&. Dcr) (A& Type) (s! Poly)) (!
    (= (vstd.set_lib.check_argument_is_set.? A&. A& s!) s!)
    :pattern ((vstd.set_lib.check_argument_is_set.? A&. A& s!))
    :qid internal_vstd.set_lib.check_argument_is_set.?_definition
    :skolemid skolem_internal_vstd.set_lib.check_argument_is_set.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly)) (!
   (=>
    (has_type s! (TYPE%vstd.set.Set. A&. A&))
    (has_type (vstd.set_lib.check_argument_is_set.? A&. A& s!) (TYPE%vstd.set.Set. A&.
      A&
   )))
   :pattern ((vstd.set_lib.check_argument_is_set.? A&. A& s!))
   :qid internal_vstd.set_lib.check_argument_is_set.?_pre_post_definition
   :skolemid skolem_internal_vstd.set_lib.check_argument_is_set.?_pre_post_definition
)))

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
 (tr_bound%vstd.view.View. $ (UINT SZ))
)

;; Function-Specs crate::test::test_seqs
(declare-fun req%test.test_seqs. (vstd.seq.Seq<int.>. vstd.seq.Seq<int.>.) Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((a! vstd.seq.Seq<int.>.) (b! vstd.seq.Seq<int.>.)) (!
   (= (req%test.test_seqs. a! b!) (=>
     %%global_location_label%%2
     (= a! b!)
   ))
   :pattern ((req%test.test_seqs. a! b!))
   :qid internal_req__test.test_seqs._definition
   :skolemid skolem_internal_req__test.test_seqs._definition
)))

;; Function-Def crate::test::test_seqs
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/test.rs:33:11: 33:49 (#0)
(get-info :all-statistics)
(push)
 (declare-const a! vstd.seq.Seq<int.>.)
 (declare-const b! vstd.seq.Seq<int.>.)
 (declare-const tmp%1 Bool)
 (declare-const idx@ Poly)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const idx$1@ Poly)
 (declare-const tmp%4 Bool)
 (declare-const s1@ vstd.seq.Seq<int.>.)
 (declare-const s2@ vstd.seq.Seq<int.>.)
 (declare-const s1$1@ vstd.seq.Seq<int.>.)
 (declare-const s2$1@ vstd.seq.Seq<int.>.)
 (assert
  fuel_defaults
 )
 (assert
  (= a! b!)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 ;; assertion failed
 (declare-const %%location_label%%6 Bool)
 ;; assertion failed
 (declare-const %%location_label%%7 Bool)
 (assert
  (not (=>
    (= s1@ a!)
    (=>
     (= s2@ b!)
     (and
      (=>
       (= tmp%1 (= (vstd!seq.Seq.len.? $ INT (Poly%vstd.seq.Seq<int.>. s1@)) (vstd!seq.Seq.len.?
          $ INT (Poly%vstd.seq.Seq<int.>. s2@)
       )))
       (and
        (=>
         %%location_label%%0
         tmp%1
        )
        (=>
         tmp%1
         (and
          (=>
           (has_type idx@ INT)
           (=>
            (and
             (<= 0 (%I idx@))
             (< (%I idx@) (vstd!seq.Seq.len.? $ INT (Poly%vstd.seq.Seq<int.>. s1@)))
            )
            (=>
             %%location_label%%1
             (= (vstd!seq.Seq.index.? $ INT (Poly%vstd.seq.Seq<int.>. s1@) idx@) (vstd!seq.Seq.index.?
               $ INT (Poly%vstd.seq.Seq<int.>. s2@) idx@
          )))))
          (=>
           (forall ((idx$ Poly)) (!
             (=>
              (has_type idx$ INT)
              (=>
               (and
                (<= 0 (%I idx$))
                (< (%I idx$) (vstd!seq.Seq.len.? $ INT (Poly%vstd.seq.Seq<int.>. s1@)))
               )
               (= (vstd!seq.Seq.index.? $ INT (Poly%vstd.seq.Seq<int.>. s1@) idx$) (vstd!seq.Seq.index.?
                 $ INT (Poly%vstd.seq.Seq<int.>. s2@) idx$
             ))))
             :pattern ((vstd!seq.Seq.index.? $ INT (Poly%vstd.seq.Seq<int.>. s1@) idx$))
             :pattern ((vstd!seq.Seq.index.? $ INT (Poly%vstd.seq.Seq<int.>. s2@) idx$))
             :qid user_crate__test__test_seqs_0
             :skolemid skolem_user_crate__test__test_seqs_0
           ))
           (=>
            (= tmp%2 (ext_eq false (TYPE%vstd.seq.Seq. $ INT) (Poly%vstd.seq.Seq<int.>. s1@) (Poly%vstd.seq.Seq<int.>.
               s2@
            )))
            (and
             (=>
              %%location_label%%2
              tmp%2
             )
             (=>
              tmp%2
              (=>
               %%location_label%%3
               (= s1@ s2@)
      )))))))))
      (=>
       (= s1@ s2@)
       (=>
        (= s1$1@ a!)
        (=>
         (= s2$1@ b!)
         (=>
          (= tmp%3 (= (vstd!seq.Seq.len.? $ INT (Poly%vstd.seq.Seq<int.>. s1$1@)) (vstd!seq.Seq.len.?
             $ INT (Poly%vstd.seq.Seq<int.>. s2$1@)
          )))
          (and
           (=>
            %%location_label%%4
            tmp%3
           )
           (=>
            tmp%3
            (and
             (=>
              (has_type idx$1@ INT)
              (=>
               (and
                (<= 0 (%I idx$1@))
                (< (%I idx$1@) (vstd!seq.Seq.len.? $ INT (Poly%vstd.seq.Seq<int.>. s1$1@)))
               )
               (=>
                %%location_label%%5
                (= (vstd!seq.Seq.index.? $ INT (Poly%vstd.seq.Seq<int.>. s1$1@) idx$1@) (vstd!seq.Seq.index.?
                  $ INT (Poly%vstd.seq.Seq<int.>. s2$1@) idx$1@
             )))))
             (=>
              (forall ((idx$ Poly)) (!
                (=>
                 (has_type idx$ INT)
                 (=>
                  (and
                   (<= 0 (%I idx$))
                   (< (%I idx$) (vstd!seq.Seq.len.? $ INT (Poly%vstd.seq.Seq<int.>. s1$1@)))
                  )
                  (= (vstd!seq.Seq.index.? $ INT (Poly%vstd.seq.Seq<int.>. s1$1@) idx$) (vstd!seq.Seq.index.?
                    $ INT (Poly%vstd.seq.Seq<int.>. s2$1@) idx$
                ))))
                :pattern ((vstd!seq.Seq.index.? $ INT (Poly%vstd.seq.Seq<int.>. s1$1@) idx$))
                :pattern ((vstd!seq.Seq.index.? $ INT (Poly%vstd.seq.Seq<int.>. s2$1@) idx$))
                :qid user_crate__test__test_seqs_2
                :skolemid skolem_user_crate__test__test_seqs_2
              ))
              (=>
               (= tmp%4 (ext_eq false (TYPE%vstd.seq.Seq. $ INT) (Poly%vstd.seq.Seq<int.>. s1$1@)
                 (Poly%vstd.seq.Seq<int.>. s2$1@)
               ))
               (and
                (=>
                 %%location_label%%6
                 tmp%4
                )
                (=>
                 tmp%4
                 (=>
                  %%location_label%%7
                  (= s1$1@ s2$1@)
 )))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::test::test_sets
(declare-fun req%test.test_sets. (vstd.set.Set<int.>. vstd.set.Set<int.>.) Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((a! vstd.set.Set<int.>.) (b! vstd.set.Set<int.>.)) (!
   (= (req%test.test_sets. a! b!) (=>
     %%global_location_label%%3
     (= a! b!)
   ))
   :pattern ((req%test.test_sets. a! b!))
   :qid internal_req__test.test_sets._definition
   :skolemid skolem_internal_req__test.test_sets._definition
)))

;; Function-Def crate::test::test_sets
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/test.rs:40:11: 40:49 (#0)
(get-info :all-statistics)
(push)
 (declare-const a! vstd.set.Set<int.>.)
 (declare-const b! vstd.set.Set<int.>.)
 (declare-const elem@ Poly)
 (declare-const tmp%1 Bool)
 (declare-const elem$1@ Poly)
 (declare-const tmp%2 Bool)
 (declare-const s1@ vstd.set.Set<int.>.)
 (declare-const s2@ vstd.set.Set<int.>.)
 (declare-const s1$1@ vstd.set.Set<int.>.)
 (declare-const s2$1@ vstd.set.Set<int.>.)
 (assert
  fuel_defaults
 )
 (assert
  (= a! b!)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 (assert
  (not (=>
    (= s1@ a!)
    (=>
     (= s2@ b!)
     (and
      (and
       (=>
        (has_type elem@ INT)
        (=>
         %%location_label%%0
         (and
          (=>
           (vstd.set.impl&%0.contains.? $ INT (Poly%vstd.set.Set<int.>. s1@) elem@)
           (vstd.set.impl&%0.contains.? $ INT (Poly%vstd.set.Set<int.>. s2@) elem@)
          )
          (=>
           (vstd.set.impl&%0.contains.? $ INT (Poly%vstd.set.Set<int.>. s2@) elem@)
           (vstd.set.impl&%0.contains.? $ INT (Poly%vstd.set.Set<int.>. s1@) elem@)
       ))))
       (=>
        (forall ((elem$ Poly)) (!
          (=>
           (has_type elem$ INT)
           (and
            (=>
             (vstd.set.impl&%0.contains.? $ INT (Poly%vstd.set.Set<int.>. s1@) elem$)
             (vstd.set.impl&%0.contains.? $ INT (Poly%vstd.set.Set<int.>. s2@) elem$)
            )
            (=>
             (vstd.set.impl&%0.contains.? $ INT (Poly%vstd.set.Set<int.>. s2@) elem$)
             (vstd.set.impl&%0.contains.? $ INT (Poly%vstd.set.Set<int.>. s1@) elem$)
          )))
          :pattern ((vstd.set.impl&%0.contains.? $ INT (Poly%vstd.set.Set<int.>. s1@) elem$))
          :pattern ((vstd.set.impl&%0.contains.? $ INT (Poly%vstd.set.Set<int.>. s2@) elem$))
          :qid user_crate__test__test_sets_4
          :skolemid skolem_user_crate__test__test_sets_4
        ))
        (=>
         (= tmp%1 (ext_eq false (TYPE%vstd.set.Set. $ INT) (Poly%vstd.set.Set<int.>. s1@) (Poly%vstd.set.Set<int.>.
            s2@
         )))
         (and
          (=>
           %%location_label%%1
           tmp%1
          )
          (=>
           tmp%1
           (=>
            %%location_label%%2
            (= s1@ s2@)
      ))))))
      (=>
       (= s1@ s2@)
       (=>
        (= s1$1@ a!)
        (=>
         (= s2$1@ b!)
         (and
          (=>
           (has_type elem$1@ INT)
           (=>
            %%location_label%%3
            (and
             (=>
              (vstd.set.impl&%0.contains.? $ INT (Poly%vstd.set.Set<int.>. s1$1@) elem$1@)
              (vstd.set.impl&%0.contains.? $ INT (Poly%vstd.set.Set<int.>. s2$1@) elem$1@)
             )
             (=>
              (vstd.set.impl&%0.contains.? $ INT (Poly%vstd.set.Set<int.>. s2$1@) elem$1@)
              (vstd.set.impl&%0.contains.? $ INT (Poly%vstd.set.Set<int.>. s1$1@) elem$1@)
          ))))
          (=>
           (forall ((elem$ Poly)) (!
             (=>
              (has_type elem$ INT)
              (and
               (=>
                (vstd.set.impl&%0.contains.? $ INT (Poly%vstd.set.Set<int.>. s1$1@) elem$)
                (vstd.set.impl&%0.contains.? $ INT (Poly%vstd.set.Set<int.>. s2$1@) elem$)
               )
               (=>
                (vstd.set.impl&%0.contains.? $ INT (Poly%vstd.set.Set<int.>. s2$1@) elem$)
                (vstd.set.impl&%0.contains.? $ INT (Poly%vstd.set.Set<int.>. s1$1@) elem$)
             )))
             :pattern ((vstd.set.impl&%0.contains.? $ INT (Poly%vstd.set.Set<int.>. s1$1@) elem$))
             :pattern ((vstd.set.impl&%0.contains.? $ INT (Poly%vstd.set.Set<int.>. s2$1@) elem$))
             :qid user_crate__test__test_sets_6
             :skolemid skolem_user_crate__test__test_sets_6
           ))
           (=>
            (= tmp%2 (ext_eq false (TYPE%vstd.set.Set. $ INT) (Poly%vstd.set.Set<int.>. s1$1@)
              (Poly%vstd.set.Set<int.>. s2$1@)
            ))
            (and
             (=>
              %%location_label%%4
              tmp%2
             )
             (=>
              tmp%2
              (=>
               %%location_label%%5
               (= s1$1@ s2$1@)
 ))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::test::test_multisets
(declare-fun req%test.test_multisets. (vstd.multiset.Multiset<int.>. vstd.multiset.Multiset<int.>.)
 Bool
)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((a! vstd.multiset.Multiset<int.>.) (b! vstd.multiset.Multiset<int.>.)) (!
   (= (req%test.test_multisets. a! b!) (=>
     %%global_location_label%%4
     (= a! b!)
   ))
   :pattern ((req%test.test_multisets. a! b!))
   :qid internal_req__test.test_multisets._definition
   :skolemid skolem_internal_req__test.test_multisets._definition
)))

;; Function-Def crate::test::test_multisets
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/test.rs:47:11: 47:64 (#0)
(get-info :all-statistics)
(push)
 (declare-const a! vstd.multiset.Multiset<int.>.)
 (declare-const b! vstd.multiset.Multiset<int.>.)
 (declare-const key@ Poly)
 (declare-const tmp%1 Bool)
 (declare-const key$1@ Poly)
 (declare-const tmp%2 Bool)
 (declare-const m1@ vstd.multiset.Multiset<int.>.)
 (declare-const m2@ vstd.multiset.Multiset<int.>.)
 (declare-const m1$1@ vstd.multiset.Multiset<int.>.)
 (declare-const m2$1@ vstd.multiset.Multiset<int.>.)
 (assert
  fuel_defaults
 )
 (assert
  (= a! b!)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 (assert
  (not (=>
    (= m1@ a!)
    (=>
     (= m2@ b!)
     (and
      (and
       (=>
        (has_type key@ INT)
        (=>
         %%location_label%%0
         (= (vstd.multiset.impl&%0.count.? $ INT (Poly%vstd.multiset.Multiset<int.>. m1@) key@)
          (vstd.multiset.impl&%0.count.? $ INT (Poly%vstd.multiset.Multiset<int.>. m2@) key@)
       )))
       (=>
        (forall ((key$ Poly)) (!
          (=>
           (has_type key$ INT)
           (= (vstd.multiset.impl&%0.count.? $ INT (Poly%vstd.multiset.Multiset<int.>. m1@) key$)
            (vstd.multiset.impl&%0.count.? $ INT (Poly%vstd.multiset.Multiset<int.>. m2@) key$)
          ))
          :pattern ((vstd.multiset.impl&%0.count.? $ INT (Poly%vstd.multiset.Multiset<int.>. m1@)
            key$
          ))
          :pattern ((vstd.multiset.impl&%0.count.? $ INT (Poly%vstd.multiset.Multiset<int.>. m2@)
            key$
          ))
          :qid user_crate__test__test_multisets_8
          :skolemid skolem_user_crate__test__test_multisets_8
        ))
        (=>
         (= tmp%1 (ext_eq false (TYPE%vstd.multiset.Multiset. $ INT) (Poly%vstd.multiset.Multiset<int.>.
            m1@
           ) (Poly%vstd.multiset.Multiset<int.>. m2@)
         ))
         (and
          (=>
           %%location_label%%1
           tmp%1
          )
          (=>
           tmp%1
           (=>
            %%location_label%%2
            (= m1@ m2@)
      ))))))
      (=>
       (= m1@ m2@)
       (=>
        (= m1$1@ a!)
        (=>
         (= m2$1@ b!)
         (and
          (=>
           (has_type key$1@ INT)
           (=>
            %%location_label%%3
            (= (vstd.multiset.impl&%0.count.? $ INT (Poly%vstd.multiset.Multiset<int.>. m1$1@)
              key$1@
             ) (vstd.multiset.impl&%0.count.? $ INT (Poly%vstd.multiset.Multiset<int.>. m2$1@)
              key$1@
          ))))
          (=>
           (forall ((key$ Poly)) (!
             (=>
              (has_type key$ INT)
              (= (vstd.multiset.impl&%0.count.? $ INT (Poly%vstd.multiset.Multiset<int.>. m1$1@)
                key$
               ) (vstd.multiset.impl&%0.count.? $ INT (Poly%vstd.multiset.Multiset<int.>. m2$1@)
                key$
             )))
             :pattern ((vstd.multiset.impl&%0.count.? $ INT (Poly%vstd.multiset.Multiset<int.>. m1$1@)
               key$
             ))
             :pattern ((vstd.multiset.impl&%0.count.? $ INT (Poly%vstd.multiset.Multiset<int.>. m2$1@)
               key$
             ))
             :qid user_crate__test__test_multisets_10
             :skolemid skolem_user_crate__test__test_multisets_10
           ))
           (=>
            (= tmp%2 (ext_eq false (TYPE%vstd.multiset.Multiset. $ INT) (Poly%vstd.multiset.Multiset<int.>.
               m1$1@
              ) (Poly%vstd.multiset.Multiset<int.>. m2$1@)
            ))
            (and
             (=>
              %%location_label%%4
              tmp%2
             )
             (=>
              tmp%2
              (=>
               %%location_label%%5
               (= m1$1@ m2$1@)
 ))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::test::test_slice_index
(declare-fun req%test.test_slice_index. (slice%<u8.>.) Bool)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((x! slice%<u8.>.)) (!
   (= (req%test.test_slice_index. x!) (=>
     %%global_location_label%%5
     (> (vstd!seq.Seq.len.? $ (UINT 8) (vstd.view.View.view.? $ (SLICE $ (UINT 8)) (Poly%slice%<u8.>.
         x!
       ))
      ) 0
   )))
   :pattern ((req%test.test_slice_index. x!))
   :qid internal_req__test.test_slice_index._definition
   :skolemid skolem_internal_req__test.test_slice_index._definition
)))
(declare-fun ens%test.test_slice_index. (slice%<u8.>. Int) Bool)
(assert
 (forall ((x! slice%<u8.>.) (%return! Int)) (!
   (= (ens%test.test_slice_index. x! %return!) (uInv 8 %return!))
   :pattern ((ens%test.test_slice_index. x! %return!))
   :qid internal_ens__test.test_slice_index._definition
   :skolemid skolem_internal_ens__test.test_slice_index._definition
)))

;; Function-Def crate::test::test_slice_index
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/test.rs:54:5: 54:40 (#0)
(get-info :all-statistics)
(push)
 (declare-const %return! Int)
 (declare-const x! slice%<u8.>.)
 (declare-const tmp%1 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (> (vstd!seq.Seq.len.? $ (UINT 8) (vstd.view.View.view.? $ (SLICE $ (UINT 8)) (Poly%slice%<u8.>.
      x!
    ))
   ) 0
 ))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (req%vstd!slice.slice_index_get. $ (UINT 8) (Poly%slice%<u8.>. x!) 0)
 )))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::test::test_ptr_stuff
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/test.rs:60:5: 60:51 (#0)
(get-info :all-statistics)
(push)
 (declare-const a! ptr_mut%<u8.>.)
 (declare-const b! Poly)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Poly)
 (declare-const t@ ptr_mut%<u16.>.)
 (declare-const s@ ptr_mut%<slice%<u8.>.>.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type b! (PTR $ (ARRAY $ (UINT 8) $ (CONST_INT 2))))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
