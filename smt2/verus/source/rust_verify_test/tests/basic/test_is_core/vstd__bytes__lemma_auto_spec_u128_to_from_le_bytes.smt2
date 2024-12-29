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

;; MODULE 'module vstd::bytes, function crate::vstd::bytes::lemma_auto_spec_u128_to_from_le_bytes'

;; Fuel
(declare-const fuel%vstd.array.array_view. FuelId)
(declare-const fuel%vstd.array.impl&%0.view. FuelId)
(declare-const fuel%vstd.bytes.spec_u128_to_le_bytes. FuelId)
(declare-const fuel%vstd.bytes.spec_u128_from_le_bytes. FuelId)
(declare-const fuel%vstd.seq.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_index_decreases. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_new_len. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_new_index. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_ext_equal. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_ext_equal_deep. FuelId)
(declare-const fuel%vstd.seq_lib.check_argument_is_seq. FuelId)
(declare-const fuel%vstd.view.impl&%0.view. FuelId)
(declare-const fuel%vstd.view.impl&%2.view. FuelId)
(declare-const fuel%vstd.view.impl&%4.view. FuelId)
(declare-const fuel%vstd.view.impl&%6.view. FuelId)
(declare-const fuel%vstd.view.impl&%14.view. FuelId)
(declare-const fuel%vstd.view.impl&%16.view. FuelId)
(declare-const fuel%vstd.view.impl&%22.view. FuelId)
(declare-const fuel%vstd.seq.group_seq_axioms. FuelId)
(assert
 (distinct fuel%vstd.array.array_view. fuel%vstd.array.impl&%0.view. fuel%vstd.bytes.spec_u128_to_le_bytes.
  fuel%vstd.bytes.spec_u128_from_le_bytes. fuel%vstd.seq.impl&%0.spec_index. fuel%vstd.seq.axiom_seq_index_decreases.
  fuel%vstd.seq.axiom_seq_new_len. fuel%vstd.seq.axiom_seq_new_index. fuel%vstd.seq.axiom_seq_ext_equal.
  fuel%vstd.seq.axiom_seq_ext_equal_deep. fuel%vstd.seq_lib.check_argument_is_seq.
  fuel%vstd.view.impl&%0.view. fuel%vstd.view.impl&%2.view. fuel%vstd.view.impl&%4.view.
  fuel%vstd.view.impl&%6.view. fuel%vstd.view.impl&%14.view. fuel%vstd.view.impl&%16.view.
  fuel%vstd.view.impl&%22.view. fuel%vstd.seq.group_seq_axioms.
))
(assert
 (=>
  (fuel_bool_default fuel%vstd.seq.group_seq_axioms.)
  (and
   (fuel_bool_default fuel%vstd.seq.axiom_seq_index_decreases.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_new_len.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_new_index.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_ext_equal.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_ext_equal_deep.)
)))
(assert
 (fuel_bool_default fuel%vstd.seq.group_seq_axioms.)
)

;; Associated-Type-Decls
(declare-fun proj%%vstd.view.View./V (Dcr Type) Dcr)
(declare-fun proj%vstd.view.View./V (Dcr Type) Type)

;; Datatypes
(declare-sort vstd.seq.Seq<u8.>. 0)
(declare-datatypes ((tuple%0. 0)) (((tuple%0./tuple%0))))
(declare-fun TYPE%fun%1. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.seq.Seq. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%fun%1. (%%Function%%) Poly)
(declare-fun %Poly%fun%1. (Poly) %%Function%%)
(declare-fun Poly%array%. (%%Function%%) Poly)
(declare-fun %Poly%array%. (Poly) %%Function%%)
(declare-fun Poly%vstd.seq.Seq<u8.>. (vstd.seq.Seq<u8.>.) Poly)
(declare-fun %Poly%vstd.seq.Seq<u8.>. (Poly) vstd.seq.Seq<u8.>.)
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
 (= (proj%%vstd.view.View./V $ (SINT 32)) $)
)
(assert
 (= (proj%vstd.view.View./V $ (SINT 32)) (SINT 32))
)

;; Function-Decl crate::vstd::view::View::view
(declare-fun vstd.view.View.view.? (Dcr Type Poly) Poly)
(declare-fun vstd.view.View.view%default%.? (Dcr Type Poly) Poly)

;; Function-Decl vstd::seq::Seq::len
(declare-fun vstd!seq.Seq.len.? (Dcr Type Poly) Int)

;; Function-Decl vstd::seq::Seq::new
(declare-fun vstd!seq.Seq.new.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::array::array_view
(declare-fun vstd.array.array_view.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl vstd::seq::Seq::index
(declare-fun vstd!seq.Seq.index.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::seq::Seq::spec_index
(declare-fun vstd.seq.impl&%0.spec_index.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::bytes::spec_u128_from_le_bytes
(declare-fun vstd.bytes.spec_u128_from_le_bytes.? (Poly) Int)

;; Function-Decl crate::vstd::bytes::spec_u128_to_le_bytes
(declare-fun vstd.bytes.spec_u128_to_le_bytes.? (Poly) vstd.seq.Seq<u8.>.)

;; Function-Decl crate::vstd::seq_lib::check_argument_is_seq
(declare-fun vstd.seq_lib.check_argument_is_seq.? (Dcr Type Poly) Poly)

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

;; Function-Specs crate::vstd::seq::Seq::spec_index
(declare-fun req%vstd.seq.impl&%0.spec_index. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
   (= (req%vstd.seq.impl&%0.spec_index. A&. A& self! i!) (=>
     %%global_location_label%%1
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

;; Broadcast crate::vstd::seq::axiom_seq_index_decreases
(assert
 (=>
  (fuel_bool fuel%vstd.seq.axiom_seq_index_decreases.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (i! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type i! INT)
     )
     (=>
      (and
       (<= 0 (%I i!))
       (< (%I i!) (vstd!seq.Seq.len.? A&. A& s!))
      )
      (height_lt (height (vstd!seq.Seq.index.? A&. A& s! i!)) (height s!))
    ))
    :pattern ((height (vstd!seq.Seq.index.? A&. A& s! i!)))
    :qid user_crate__vstd__seq__axiom_seq_index_decreases_0
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_index_decreases_0
))))

;; Broadcast crate::vstd::seq::axiom_seq_new_len
(assert
 (=>
  (fuel_bool fuel%vstd.seq.axiom_seq_new_len.)
  (forall ((A&. Dcr) (A& Type) (len! Poly) (f! Poly)) (!
    (=>
     (and
      (has_type len! NAT)
      (has_type f! (TYPE%fun%1. $ INT A&. A&))
     )
     (= (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.new.? A&. A& $ (TYPE%fun%1. $ INT A&. A&)
        len! f!
       )
      ) (%I len!)
    ))
    :pattern ((vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.new.? A&. A& $ (TYPE%fun%1. $ INT
        A&. A&
       ) len! f!
    )))
    :qid user_crate__vstd__seq__axiom_seq_new_len_1
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_new_len_1
))))

;; Broadcast crate::vstd::seq::axiom_seq_new_index
(assert
 (=>
  (fuel_bool fuel%vstd.seq.axiom_seq_new_index.)
  (forall ((A&. Dcr) (A& Type) (len! Poly) (f! Poly) (i! Poly)) (!
    (=>
     (and
      (has_type len! NAT)
      (has_type f! (TYPE%fun%1. $ INT A&. A&))
      (has_type i! INT)
     )
     (=>
      (and
       (<= 0 (%I i!))
       (< (%I i!) (%I len!))
      )
      (= (vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.new.? A&. A& $ (TYPE%fun%1. $ INT A&. A&)
         len! f!
        ) i!
       ) (%%apply%%0 (%Poly%fun%1. f!) i!)
    )))
    :pattern ((vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.new.? A&. A& $ (TYPE%fun%1. $ INT
        A&. A&
       ) len! f!
      ) i!
    ))
    :qid user_crate__vstd__seq__axiom_seq_new_index_2
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_new_index_2
))))

;; Broadcast crate::vstd::seq::axiom_seq_ext_equal
(assert
 (=>
  (fuel_bool fuel%vstd.seq.axiom_seq_ext_equal.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type s2! (TYPE%vstd.seq.Seq. A&. A&))
     )
     (= (ext_eq false (TYPE%vstd.seq.Seq. A&. A&) s1! s2!) (and
       (= (vstd!seq.Seq.len.? A&. A& s1!) (vstd!seq.Seq.len.? A&. A& s2!))
       (forall ((i$ Poly)) (!
         (=>
          (has_type i$ INT)
          (=>
           (and
            (<= 0 (%I i$))
            (< (%I i$) (vstd!seq.Seq.len.? A&. A& s1!))
           )
           (= (vstd!seq.Seq.index.? A&. A& s1! i$) (vstd!seq.Seq.index.? A&. A& s2! i$))
         ))
         :pattern ((vstd!seq.Seq.index.? A&. A& s1! i$))
         :pattern ((vstd!seq.Seq.index.? A&. A& s2! i$))
         :qid user_crate__vstd__seq__axiom_seq_ext_equal_3
         :skolemid skolem_user_crate__vstd__seq__axiom_seq_ext_equal_3
    )))))
    :pattern ((ext_eq false (TYPE%vstd.seq.Seq. A&. A&) s1! s2!))
    :qid user_crate__vstd__seq__axiom_seq_ext_equal_4
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_ext_equal_4
))))

;; Broadcast crate::vstd::seq::axiom_seq_ext_equal_deep
(assert
 (=>
  (fuel_bool fuel%vstd.seq.axiom_seq_ext_equal_deep.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type s2! (TYPE%vstd.seq.Seq. A&. A&))
     )
     (= (ext_eq true (TYPE%vstd.seq.Seq. A&. A&) s1! s2!) (and
       (= (vstd!seq.Seq.len.? A&. A& s1!) (vstd!seq.Seq.len.? A&. A& s2!))
       (forall ((i$ Poly)) (!
         (=>
          (has_type i$ INT)
          (=>
           (and
            (<= 0 (%I i$))
            (< (%I i$) (vstd!seq.Seq.len.? A&. A& s1!))
           )
           (ext_eq true A& (vstd!seq.Seq.index.? A&. A& s1! i$) (vstd!seq.Seq.index.? A&. A& s2!
             i$
         ))))
         :pattern ((vstd!seq.Seq.index.? A&. A& s1! i$))
         :pattern ((vstd!seq.Seq.index.? A&. A& s2! i$))
         :qid user_crate__vstd__seq__axiom_seq_ext_equal_deep_5
         :skolemid skolem_user_crate__vstd__seq__axiom_seq_ext_equal_deep_5
    )))))
    :pattern ((ext_eq true (TYPE%vstd.seq.Seq. A&. A&) s1! s2!))
    :qid user_crate__vstd__seq__axiom_seq_ext_equal_deep_6
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_ext_equal_deep_6
))))

;; Function-Specs crate::vstd::bytes::spec_u128_from_le_bytes
(declare-fun req%vstd.bytes.spec_u128_from_le_bytes. (Poly) Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((s! Poly)) (!
   (= (req%vstd.bytes.spec_u128_from_le_bytes. s!) (=>
     %%global_location_label%%2
     (= (vstd!seq.Seq.len.? $ (UINT 8) s!) 16)
   ))
   :pattern ((req%vstd.bytes.spec_u128_from_le_bytes. s!))
   :qid internal_req__vstd.bytes.spec_u128_from_le_bytes._definition
   :skolemid skolem_internal_req__vstd.bytes.spec_u128_from_le_bytes._definition
)))

;; Function-Axioms crate::vstd::bytes::spec_u128_from_le_bytes
(assert
 (fuel_bool_default fuel%vstd.bytes.spec_u128_from_le_bytes.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.bytes.spec_u128_from_le_bytes.)
  (forall ((s! Poly)) (!
    (= (vstd.bytes.spec_u128_from_le_bytes.? s!) (uClip 128 (bitor (I (uClip 128 (bitor (I (
            uClip 128 (bitor (I (uClip 128 (bitor (I (uClip 128 (bitor (I (uClip 128 (bitor (I (uClip 128
                        (bitor (I (uClip 128 (bitor (I (uClip 128 (bitor (I (uClip 128 (bitor (I (uClip 128 (bitor (I (
                                       uClip 128 (bitor (I (uClip 128 (bitor (I (uClip 128 (bitor (I (uClip 128 (bitor (I (uClip 128
                                                   (%I (vstd!seq.Seq.index.? $ (UINT 8) s! (I 0)))
                                                  )
                                                 ) (I (uClip 128 (bitshl (I (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s! (I 1)))))
                                                    (I 8)
                                               )))))
                                              ) (I (uClip 128 (bitshl (I (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s! (I 2)))))
                                                 (I 16)
                                            )))))
                                           ) (I (uClip 128 (bitshl (I (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s! (I 3)))))
                                              (I 24)
                                         )))))
                                        ) (I (uClip 128 (bitshl (I (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s! (I 4)))))
                                           (I 32)
                                      )))))
                                     ) (I (uClip 128 (bitshl (I (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s! (I 5)))))
                                        (I 40)
                                   )))))
                                  ) (I (uClip 128 (bitshl (I (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s! (I 6)))))
                                     (I 48)
                                )))))
                               ) (I (uClip 128 (bitshl (I (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s! (I 7)))))
                                  (I 56)
                             )))))
                            ) (I (uClip 128 (bitshl (I (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s! (I 8)))))
                               (I 64)
                          )))))
                         ) (I (uClip 128 (bitshl (I (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s! (I 9)))))
                            (I 72)
                       )))))
                      ) (I (uClip 128 (bitshl (I (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s! (I 10)))))
                         (I 80)
                    )))))
                   ) (I (uClip 128 (bitshl (I (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s! (I 11)))))
                      (I 88)
                 )))))
                ) (I (uClip 128 (bitshl (I (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s! (I 12)))))
                   (I 96)
              )))))
             ) (I (uClip 128 (bitshl (I (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s! (I 13)))))
                (I 104)
           )))))
          ) (I (uClip 128 (bitshl (I (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s! (I 14)))))
             (I 112)
        )))))
       ) (I (uClip 128 (bitshl (I (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s! (I 15)))))
          (I 120)
    ))))))
    :pattern ((vstd.bytes.spec_u128_from_le_bytes.? s!))
    :qid internal_vstd.bytes.spec_u128_from_le_bytes.?_definition
    :skolemid skolem_internal_vstd.bytes.spec_u128_from_le_bytes.?_definition
))))
(assert
 (forall ((s! Poly)) (!
   (=>
    (has_type s! (TYPE%vstd.seq.Seq. $ (UINT 8)))
    (uInv 128 (vstd.bytes.spec_u128_from_le_bytes.? s!))
   )
   :pattern ((vstd.bytes.spec_u128_from_le_bytes.? s!))
   :qid internal_vstd.bytes.spec_u128_from_le_bytes.?_pre_post_definition
   :skolemid skolem_internal_vstd.bytes.spec_u128_from_le_bytes.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::bytes::spec_u128_to_le_bytes
(assert
 (fuel_bool_default fuel%vstd.bytes.spec_u128_to_le_bytes.)
)
(declare-fun %%array%%0 (Poly Poly Poly Poly Poly Poly Poly Poly Poly Poly Poly Poly
  Poly Poly Poly Poly
 ) %%Function%%
)
(assert
 (forall ((%%hole%%0 Poly) (%%hole%%1 Poly) (%%hole%%2 Poly) (%%hole%%3 Poly) (%%hole%%4
    Poly
   ) (%%hole%%5 Poly) (%%hole%%6 Poly) (%%hole%%7 Poly) (%%hole%%8 Poly) (%%hole%%9 Poly)
   (%%hole%%10 Poly) (%%hole%%11 Poly) (%%hole%%12 Poly) (%%hole%%13 Poly) (%%hole%%14
    Poly
   ) (%%hole%%15 Poly)
  ) (!
   (let
    ((%%x%% (%%array%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5 %%hole%%6
       %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12 %%hole%%13 %%hole%%14
       %%hole%%15
    )))
    (and
     (= (%%apply%%1 %%x%% 0) %%hole%%0)
     (= (%%apply%%1 %%x%% 1) %%hole%%1)
     (= (%%apply%%1 %%x%% 2) %%hole%%2)
     (= (%%apply%%1 %%x%% 3) %%hole%%3)
     (= (%%apply%%1 %%x%% 4) %%hole%%4)
     (= (%%apply%%1 %%x%% 5) %%hole%%5)
     (= (%%apply%%1 %%x%% 6) %%hole%%6)
     (= (%%apply%%1 %%x%% 7) %%hole%%7)
     (= (%%apply%%1 %%x%% 8) %%hole%%8)
     (= (%%apply%%1 %%x%% 9) %%hole%%9)
     (= (%%apply%%1 %%x%% 10) %%hole%%10)
     (= (%%apply%%1 %%x%% 11) %%hole%%11)
     (= (%%apply%%1 %%x%% 12) %%hole%%12)
     (= (%%apply%%1 %%x%% 13) %%hole%%13)
     (= (%%apply%%1 %%x%% 14) %%hole%%14)
     (= (%%apply%%1 %%x%% 15) %%hole%%15)
   ))
   :pattern ((%%array%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5 %%hole%%6
     %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12 %%hole%%13 %%hole%%14
     %%hole%%15
   ))
   :qid __AIR_ARRAY_QID__
   :skolemid skolem___AIR_ARRAY_QID__
)))
(assert
 (=>
  (fuel_bool fuel%vstd.bytes.spec_u128_to_le_bytes.)
  (forall ((x! Poly)) (!
    (= (vstd.bytes.spec_u128_to_le_bytes.? x!) (%Poly%vstd.seq.Seq<u8.>. (vstd.view.View.view.?
       $ (ARRAY $ (UINT 8) $ (CONST_INT 16)) (array_new $ (UINT 8) 16 (%%array%%0 (I (uClip
           8 (uClip 128 (bitand (I (%I x!)) (I 255)))
          )
         ) (I (uClip 8 (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x!)) (I 8)))) (I 255)))))
         (I (uClip 8 (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x!)) (I 16)))) (I 255)))))
         (I (uClip 8 (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x!)) (I 24)))) (I 255)))))
         (I (uClip 8 (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x!)) (I 32)))) (I 255)))))
         (I (uClip 8 (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x!)) (I 40)))) (I 255)))))
         (I (uClip 8 (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x!)) (I 48)))) (I 255)))))
         (I (uClip 8 (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x!)) (I 56)))) (I 255)))))
         (I (uClip 8 (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x!)) (I 64)))) (I 255)))))
         (I (uClip 8 (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x!)) (I 72)))) (I 255)))))
         (I (uClip 8 (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x!)) (I 80)))) (I 255)))))
         (I (uClip 8 (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x!)) (I 88)))) (I 255)))))
         (I (uClip 8 (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x!)) (I 96)))) (I 255)))))
         (I (uClip 8 (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x!)) (I 104)))) (I 255)))))
         (I (uClip 8 (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x!)) (I 112)))) (I 255)))))
         (I (uClip 8 (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x!)) (I 120)))) (I 255)))))
    )))))
    :pattern ((vstd.bytes.spec_u128_to_le_bytes.? x!))
    :qid internal_vstd.bytes.spec_u128_to_le_bytes.?_definition
    :skolemid skolem_internal_vstd.bytes.spec_u128_to_le_bytes.?_definition
))))

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
 (tr_bound%vstd.view.View. $ (UINT 128))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (UINT SZ))
)

;; Trait-Impl-Axiom
(assert
 (tr_bound%vstd.view.View. $ (SINT 32))
)

;; Function-Specs crate::vstd::bytes::lemma_auto_spec_u128_to_from_le_bytes
(declare-fun ens%vstd.bytes.lemma_auto_spec_u128_to_from_le_bytes. (Int) Bool)
(assert
 (forall ((no%param Int)) (!
   (= (ens%vstd.bytes.lemma_auto_spec_u128_to_from_le_bytes. no%param) (and
     (forall ((x$ Poly)) (!
       (=>
        (has_type x$ (UINT 128))
        (and
         (= (vstd!seq.Seq.len.? $ (UINT 8) (Poly%vstd.seq.Seq<u8.>. (vstd.bytes.spec_u128_to_le_bytes.?
             x$
           ))
          ) 16
         )
         (= (vstd.bytes.spec_u128_from_le_bytes.? (Poly%vstd.seq.Seq<u8.>. (vstd.bytes.spec_u128_to_le_bytes.?
             x$
           ))
          ) (%I x$)
       )))
       :pattern ((vstd!seq.Seq.len.? $ (UINT 8) (Poly%vstd.seq.Seq<u8.>. (vstd.bytes.spec_u128_to_le_bytes.?
           x$
       ))))
       :qid user_crate__vstd__bytes__lemma_auto_spec_u128_to_from_le_bytes_7
       :skolemid skolem_user_crate__vstd__bytes__lemma_auto_spec_u128_to_from_le_bytes_7
     ))
     (forall ((s$ Poly)) (!
       (=>
        (has_type s$ (TYPE%vstd.seq.Seq. $ (UINT 8)))
        (=>
         (= (vstd!seq.Seq.len.? $ (UINT 8) s$) 16)
         (= (vstd.bytes.spec_u128_to_le_bytes.? (I (vstd.bytes.spec_u128_from_le_bytes.? s$)))
          (%Poly%vstd.seq.Seq<u8.>. s$)
       )))
       :pattern ((vstd.bytes.spec_u128_to_le_bytes.? (I (vstd.bytes.spec_u128_from_le_bytes.?
           s$
       ))))
       :qid user_crate__vstd__bytes__lemma_auto_spec_u128_to_from_le_bytes_8
       :skolemid skolem_user_crate__vstd__bytes__lemma_auto_spec_u128_to_from_le_bytes_8
   ))))
   :pattern ((ens%vstd.bytes.lemma_auto_spec_u128_to_from_le_bytes. no%param))
   :qid internal_ens__vstd.bytes.lemma_auto_spec_u128_to_from_le_bytes._definition
   :skolemid skolem_internal_ens__vstd.bytes.lemma_auto_spec_u128_to_from_le_bytes._definition
)))

;; Function-Def crate::vstd::bytes::lemma_auto_spec_u128_to_from_le_bytes
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/bytes.rs:371:1: 371:53 (#0)
(get-info :all-statistics)
(push)
 (declare-const no%param Int)
 (declare-const x@ Poly)
 (declare-const s@ vstd.seq.Seq<u8.>.)
 (declare-const s$1@ Poly)
 (declare-const tmp%1 Bool)
 (declare-const idx@ Poly)
 (declare-const tmp%2 Bool)
 (declare-const x$1@ Int)
 (declare-const s0@ Int)
 (declare-const s1@ Int)
 (declare-const s2@ Int)
 (declare-const s3@ Int)
 (declare-const s4@ Int)
 (declare-const s5@ Int)
 (declare-const s6@ Int)
 (declare-const s7@ Int)
 (declare-const s8@ Int)
 (declare-const s9@ Int)
 (declare-const s10@ Int)
 (declare-const s11@ Int)
 (declare-const s12@ Int)
 (declare-const s13@ Int)
 (declare-const s14@ Int)
 (declare-const s15@ Int)
 (declare-const s1$1@ vstd.seq.Seq<u8.>.)
 (declare-const s2$1@ vstd.seq.Seq<u8.>.)
 (assert
  fuel_defaults
 )
 ;; requires not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; requires not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; requires not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 ;; assertion failed
 (declare-const %%location_label%%6 Bool)
 ;; assertion failed
 (declare-const %%location_label%%7 Bool)
 ;; assertion failed
 (declare-const %%location_label%%8 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%9 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%10 Bool)
 (assert
  (not (and
    (=>
     (has_type x@ (UINT 128))
     (=>
      (= s@ (vstd.bytes.spec_u128_to_le_bytes.? x@))
      (and
       (=>
        %%location_label%%0
        true
       )
       (=>
        (and
         (and
          (and
           (and
            (and
             (and
              (and
               (and
                (and
                 (and
                  (and
                   (and
                    (and
                     (and
                      (and
                       (< (uClip 128 (bitand (I (%I x@)) (I 255))) 256)
                       (< (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 8)))) (I 255))) 256)
                      )
                      (< (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 16)))) (I 255))) 256)
                     )
                     (< (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 24)))) (I 255))) 256)
                    )
                    (< (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 32)))) (I 255))) 256)
                   )
                   (< (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 40)))) (I 255))) 256)
                  )
                  (< (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 48)))) (I 255))) 256)
                 )
                 (< (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 56)))) (I 255))) 256)
                )
                (< (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 64)))) (I 255))) 256)
               )
               (< (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 72)))) (I 255))) 256)
              )
              (< (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 80)))) (I 255))) 256)
             )
             (< (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 88)))) (I 255))) 256)
            )
            (< (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 96)))) (I 255))) 256)
           )
           (< (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 104)))) (I 255))) 256)
          )
          (< (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 112)))) (I 255))) 256)
         )
         (< (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 120)))) (I 255))) 256)
        )
        (and
         (=>
          %%location_label%%1
          true
         )
         (=>
          (= (%I x@) (uClip 128 (bitor (I (uClip 128 (bitor (I (uClip 128 (bitor (I (uClip 128 (bitor (
                       I (uClip 128 (bitor (I (uClip 128 (bitor (I (uClip 128 (bitor (I (uClip 128 (bitor (I (uClip 128
                                    (bitor (I (uClip 128 (bitor (I (uClip 128 (bitor (I (uClip 128 (bitor (I (uClip 128 (bitor (I (
                                                   uClip 128 (bitor (I (uClip 128 (bitor (I (uClip 128 (bitand (I (%I x@)) (I 255)))) (I
                                                        (uClip 128 (bitshl (I (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 8)))) (I
                                                              255
                                                           )))
                                                          ) (I 8)
                                                     )))))
                                                    ) (I (uClip 128 (bitshl (I (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 16))))
                                                          (I 255)
                                                        ))
                                                       ) (I 16)
                                                  )))))
                                                 ) (I (uClip 128 (bitshl (I (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 24))))
                                                       (I 255)
                                                     ))
                                                    ) (I 24)
                                               )))))
                                              ) (I (uClip 128 (bitshl (I (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 32))))
                                                    (I 255)
                                                  ))
                                                 ) (I 32)
                                            )))))
                                           ) (I (uClip 128 (bitshl (I (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 40))))
                                                 (I 255)
                                               ))
                                              ) (I 40)
                                         )))))
                                        ) (I (uClip 128 (bitshl (I (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 48))))
                                              (I 255)
                                            ))
                                           ) (I 48)
                                      )))))
                                     ) (I (uClip 128 (bitshl (I (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 56))))
                                           (I 255)
                                         ))
                                        ) (I 56)
                                   )))))
                                  ) (I (uClip 128 (bitshl (I (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 64))))
                                        (I 255)
                                      ))
                                     ) (I 64)
                                )))))
                               ) (I (uClip 128 (bitshl (I (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 72))))
                                     (I 255)
                                   ))
                                  ) (I 72)
                             )))))
                            ) (I (uClip 128 (bitshl (I (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 80))))
                                  (I 255)
                                ))
                               ) (I 80)
                          )))))
                         ) (I (uClip 128 (bitshl (I (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 88))))
                               (I 255)
                             ))
                            ) (I 88)
                       )))))
                      ) (I (uClip 128 (bitshl (I (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 96))))
                            (I 255)
                          ))
                         ) (I 96)
                    )))))
                   ) (I (uClip 128 (bitshl (I (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 104))))
                         (I 255)
                       ))
                      ) (I 104)
                 )))))
                ) (I (uClip 128 (bitshl (I (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 112))))
                      (I 255)
                    ))
                   ) (I 112)
              )))))
             ) (I (uClip 128 (bitshl (I (uClip 128 (bitand (I (uClip 128 (bitshr (I (%I x@)) (I 120))))
                   (I 255)
                 ))
                ) (I 120)
          ))))))
          (=>
           %%location_label%%2
           (and
            (= (vstd!seq.Seq.len.? $ (UINT 8) (Poly%vstd.seq.Seq<u8.>. (vstd.bytes.spec_u128_to_le_bytes.?
                x@
              ))
             ) 16
            )
            (= (vstd.bytes.spec_u128_from_le_bytes.? (Poly%vstd.seq.Seq<u8.>. (vstd.bytes.spec_u128_to_le_bytes.?
                x@
              ))
             ) (%I x@)
    )))))))))
    (=>
     (forall ((x$ Poly)) (!
       (=>
        (has_type x$ (UINT 128))
        (and
         (= (vstd!seq.Seq.len.? $ (UINT 8) (Poly%vstd.seq.Seq<u8.>. (vstd.bytes.spec_u128_to_le_bytes.?
             x$
           ))
          ) 16
         )
         (= (vstd.bytes.spec_u128_from_le_bytes.? (Poly%vstd.seq.Seq<u8.>. (vstd.bytes.spec_u128_to_le_bytes.?
             x$
           ))
          ) (%I x$)
       )))
       :pattern ((vstd!seq.Seq.len.? $ (UINT 8) (Poly%vstd.seq.Seq<u8.>. (vstd.bytes.spec_u128_to_le_bytes.?
           x$
       ))))
       :qid user_crate__vstd__bytes__lemma_auto_spec_u128_to_from_le_bytes_11
       :skolemid skolem_user_crate__vstd__bytes__lemma_auto_spec_u128_to_from_le_bytes_11
     ))
     (and
      (=>
       (has_type s$1@ (TYPE%vstd.seq.Seq. $ (UINT 8)))
       (=>
        (= (vstd!seq.Seq.len.? $ (UINT 8) s$1@) 16)
        (=>
         (= x$1@ (vstd.bytes.spec_u128_from_le_bytes.? s$1@))
         (=>
          (= s0@ (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s$1@ (I 0)))))
          (=>
           (= s1@ (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s$1@ (I 1)))))
           (=>
            (= s2@ (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s$1@ (I 2)))))
            (=>
             (= s3@ (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s$1@ (I 3)))))
             (=>
              (= s4@ (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s$1@ (I 4)))))
              (=>
               (= s5@ (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s$1@ (I 5)))))
               (=>
                (= s6@ (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s$1@ (I 6)))))
                (=>
                 (= s7@ (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s$1@ (I 7)))))
                 (=>
                  (= s8@ (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s$1@ (I 8)))))
                  (=>
                   (= s9@ (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s$1@ (I 9)))))
                   (=>
                    (= s10@ (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s$1@ (I 10)))))
                    (=>
                     (= s11@ (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s$1@ (I 11)))))
                     (=>
                      (= s12@ (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s$1@ (I 12)))))
                      (=>
                       (= s13@ (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s$1@ (I 13)))))
                       (=>
                        (= s14@ (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s$1@ (I 14)))))
                        (=>
                         (= s15@ (uClip 128 (%I (vstd!seq.Seq.index.? $ (UINT 8) s$1@ (I 15)))))
                         (and
                          (=>
                           %%location_label%%3
                           true
                          )
                          (=>
                           (=>
                            (and
                             (and
                              (and
                               (and
                                (and
                                 (and
                                  (and
                                   (and
                                    (and
                                     (and
                                      (and
                                       (and
                                        (and
                                         (and
                                          (and
                                           (and
                                            (= x$1@ (uClip 128 (bitor (I (uClip 128 (bitor (I (uClip 128 (bitor (I (uClip 128 (bitor (I (uClip
                                                          128 (bitor (I (uClip 128 (bitor (I (uClip 128 (bitor (I (uClip 128 (bitor (I (uClip 128 (bitor
                                                                       (I (uClip 128 (bitor (I (uClip 128 (bitor (I (uClip 128 (bitor (I (uClip 128 (bitor (I (uClip 128
                                                                                     (bitor (I (uClip 128 (bitor (I s0@) (I (uClip 128 (bitshl (I s1@) (I 8))))))) (I (uClip
                                                                                        128 (bitshl (I s2@) (I 16))
                                                                                    ))))
                                                                                   ) (I (uClip 128 (bitshl (I s3@) (I 24))))
                                                                                 ))
                                                                                ) (I (uClip 128 (bitshl (I s4@) (I 32))))
                                                                              ))
                                                                             ) (I (uClip 128 (bitshl (I s5@) (I 40))))
                                                                           ))
                                                                          ) (I (uClip 128 (bitshl (I s6@) (I 48))))
                                                                        ))
                                                                       ) (I (uClip 128 (bitshl (I s7@) (I 56))))
                                                                     ))
                                                                    ) (I (uClip 128 (bitshl (I s8@) (I 64))))
                                                                  ))
                                                                 ) (I (uClip 128 (bitshl (I s9@) (I 72))))
                                                               ))
                                                              ) (I (uClip 128 (bitshl (I s10@) (I 80))))
                                                            ))
                                                           ) (I (uClip 128 (bitshl (I s11@) (I 88))))
                                                         ))
                                                        ) (I (uClip 128 (bitshl (I s12@) (I 96))))
                                                      ))
                                                     ) (I (uClip 128 (bitshl (I s13@) (I 104))))
                                                   ))
                                                  ) (I (uClip 128 (bitshl (I s14@) (I 112))))
                                                ))
                                               ) (I (uClip 128 (bitshl (I s15@) (I 120))))
                                            )))
                                            (< s0@ 256)
                                           )
                                           (< s1@ 256)
                                          )
                                          (< s2@ 256)
                                         )
                                         (< s3@ 256)
                                        )
                                        (< s4@ 256)
                                       )
                                       (< s5@ 256)
                                      )
                                      (< s6@ 256)
                                     )
                                     (< s7@ 256)
                                    )
                                    (< s8@ 256)
                                   )
                                   (< s9@ 256)
                                  )
                                  (< s10@ 256)
                                 )
                                 (< s11@ 256)
                                )
                                (< s12@ 256)
                               )
                               (< s13@ 256)
                              )
                              (< s14@ 256)
                             )
                             (< s15@ 256)
                            )
                            (and
                             (and
                              (and
                               (and
                                (and
                                 (and
                                  (and
                                   (and
                                    (and
                                     (and
                                      (and
                                       (and
                                        (and
                                         (and
                                          (and
                                           (= s0@ (uClip 128 (bitand (I x$1@) (I 255))))
                                           (= s1@ (uClip 128 (bitand (I (uClip 128 (bitshr (I x$1@) (I 8)))) (I 255))))
                                          )
                                          (= s2@ (uClip 128 (bitand (I (uClip 128 (bitshr (I x$1@) (I 16)))) (I 255))))
                                         )
                                         (= s3@ (uClip 128 (bitand (I (uClip 128 (bitshr (I x$1@) (I 24)))) (I 255))))
                                        )
                                        (= s4@ (uClip 128 (bitand (I (uClip 128 (bitshr (I x$1@) (I 32)))) (I 255))))
                                       )
                                       (= s5@ (uClip 128 (bitand (I (uClip 128 (bitshr (I x$1@) (I 40)))) (I 255))))
                                      )
                                      (= s6@ (uClip 128 (bitand (I (uClip 128 (bitshr (I x$1@) (I 48)))) (I 255))))
                                     )
                                     (= s7@ (uClip 128 (bitand (I (uClip 128 (bitshr (I x$1@) (I 56)))) (I 255))))
                                    )
                                    (= s8@ (uClip 128 (bitand (I (uClip 128 (bitshr (I x$1@) (I 64)))) (I 255))))
                                   )
                                   (= s9@ (uClip 128 (bitand (I (uClip 128 (bitshr (I x$1@) (I 72)))) (I 255))))
                                  )
                                  (= s10@ (uClip 128 (bitand (I (uClip 128 (bitshr (I x$1@) (I 80)))) (I 255))))
                                 )
                                 (= s11@ (uClip 128 (bitand (I (uClip 128 (bitshr (I x$1@) (I 88)))) (I 255))))
                                )
                                (= s12@ (uClip 128 (bitand (I (uClip 128 (bitshr (I x$1@) (I 96)))) (I 255))))
                               )
                               (= s13@ (uClip 128 (bitand (I (uClip 128 (bitshr (I x$1@) (I 104)))) (I 255))))
                              )
                              (= s14@ (uClip 128 (bitand (I (uClip 128 (bitshr (I x$1@) (I 112)))) (I 255))))
                             )
                             (= s15@ (uClip 128 (bitand (I (uClip 128 (bitshr (I x$1@) (I 120)))) (I 255))))
                           ))
                           (=>
                            (= s1$1@ (vstd.bytes.spec_u128_to_le_bytes.? (I (vstd.bytes.spec_u128_from_le_bytes.?
                                s$1@
                            ))))
                            (=>
                             (= s2$1@ (%Poly%vstd.seq.Seq<u8.>. s$1@))
                             (and
                              (=>
                               (= tmp%1 (= (vstd!seq.Seq.len.? $ (UINT 8) (Poly%vstd.seq.Seq<u8.>. s1$1@)) (vstd!seq.Seq.len.?
                                  $ (UINT 8) (Poly%vstd.seq.Seq<u8.>. s2$1@)
                               )))
                               (and
                                (=>
                                 %%location_label%%4
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
                                     (< (%I idx@) (vstd!seq.Seq.len.? $ (UINT 8) (Poly%vstd.seq.Seq<u8.>. s1$1@)))
                                    )
                                    (=>
                                     %%location_label%%5
                                     (= (vstd!seq.Seq.index.? $ (UINT 8) (Poly%vstd.seq.Seq<u8.>. s1$1@) idx@) (vstd!seq.Seq.index.?
                                       $ (UINT 8) (Poly%vstd.seq.Seq<u8.>. s2$1@) idx@
                                  )))))
                                  (=>
                                   (forall ((idx$ Poly)) (!
                                     (=>
                                      (has_type idx$ INT)
                                      (=>
                                       (and
                                        (<= 0 (%I idx$))
                                        (< (%I idx$) (vstd!seq.Seq.len.? $ (UINT 8) (Poly%vstd.seq.Seq<u8.>. s1$1@)))
                                       )
                                       (= (vstd!seq.Seq.index.? $ (UINT 8) (Poly%vstd.seq.Seq<u8.>. s1$1@) idx$) (vstd!seq.Seq.index.?
                                         $ (UINT 8) (Poly%vstd.seq.Seq<u8.>. s2$1@) idx$
                                     ))))
                                     :pattern ((vstd!seq.Seq.index.? $ (UINT 8) (Poly%vstd.seq.Seq<u8.>. s1$1@) idx$))
                                     :pattern ((vstd!seq.Seq.index.? $ (UINT 8) (Poly%vstd.seq.Seq<u8.>. s2$1@) idx$))
                                     :qid user_crate__vstd__bytes__lemma_auto_spec_u128_to_from_le_bytes_12
                                     :skolemid skolem_user_crate__vstd__bytes__lemma_auto_spec_u128_to_from_le_bytes_12
                                   ))
                                   (=>
                                    (= tmp%2 (ext_eq false (TYPE%vstd.seq.Seq. $ (UINT 8)) (Poly%vstd.seq.Seq<u8.>. s1$1@)
                                      (Poly%vstd.seq.Seq<u8.>. s2$1@)
                                    ))
                                    (and
                                     (=>
                                      %%location_label%%6
                                      tmp%2
                                     )
                                     (=>
                                      tmp%2
                                      (=>
                                       %%location_label%%7
                                       (= s1$1@ s2$1@)
                              )))))))))
                              (=>
                               (= s1$1@ s2$1@)
                               (=>
                                %%location_label%%8
                                (= (vstd.bytes.spec_u128_to_le_bytes.? (I (vstd.bytes.spec_u128_from_le_bytes.? s$1@)))
                                 (%Poly%vstd.seq.Seq<u8.>. s$1@)
      )))))))))))))))))))))))))))
      (=>
       (forall ((s$ Poly)) (!
         (=>
          (has_type s$ (TYPE%vstd.seq.Seq. $ (UINT 8)))
          (=>
           (= (vstd!seq.Seq.len.? $ (UINT 8) s$) 16)
           (= (vstd.bytes.spec_u128_to_le_bytes.? (I (vstd.bytes.spec_u128_from_le_bytes.? s$)))
            (%Poly%vstd.seq.Seq<u8.>. s$)
         )))
         :pattern ((vstd.bytes.spec_u128_to_le_bytes.? (I (vstd.bytes.spec_u128_from_le_bytes.?
             s$
         ))))
         :qid user_crate__vstd__bytes__lemma_auto_spec_u128_to_from_le_bytes_14
         :skolemid skolem_user_crate__vstd__bytes__lemma_auto_spec_u128_to_from_le_bytes_14
       ))
       (and
        (=>
         %%location_label%%9
         (forall ((x$ Poly)) (!
           (=>
            (has_type x$ (UINT 128))
            (and
             (= (vstd!seq.Seq.len.? $ (UINT 8) (Poly%vstd.seq.Seq<u8.>. (vstd.bytes.spec_u128_to_le_bytes.?
                 x$
               ))
              ) 16
             )
             (= (vstd.bytes.spec_u128_from_le_bytes.? (Poly%vstd.seq.Seq<u8.>. (vstd.bytes.spec_u128_to_le_bytes.?
                 x$
               ))
              ) (%I x$)
           )))
           :pattern ((vstd!seq.Seq.len.? $ (UINT 8) (Poly%vstd.seq.Seq<u8.>. (vstd.bytes.spec_u128_to_le_bytes.?
               x$
           ))))
           :qid user_crate__vstd__bytes__lemma_auto_spec_u128_to_from_le_bytes_9
           :skolemid skolem_user_crate__vstd__bytes__lemma_auto_spec_u128_to_from_le_bytes_9
        )))
        (=>
         %%location_label%%10
         (forall ((s$ Poly)) (!
           (=>
            (has_type s$ (TYPE%vstd.seq.Seq. $ (UINT 8)))
            (=>
             (= (vstd!seq.Seq.len.? $ (UINT 8) s$) 16)
             (= (vstd.bytes.spec_u128_to_le_bytes.? (I (vstd.bytes.spec_u128_from_le_bytes.? s$)))
              (%Poly%vstd.seq.Seq<u8.>. s$)
           )))
           :pattern ((vstd.bytes.spec_u128_to_le_bytes.? (I (vstd.bytes.spec_u128_from_le_bytes.?
               s$
           ))))
           :qid user_crate__vstd__bytes__lemma_auto_spec_u128_to_from_le_bytes_10
           :skolemid skolem_user_crate__vstd__bytes__lemma_auto_spec_u128_to_from_le_bytes_10
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
