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

;; MODULE 'module vstd::seq'

;; Fuel
(declare-const fuel%vstd.pervasive.trigger. FuelId)
(declare-const fuel%vstd.seq.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd!seq.Seq.ext_equal. FuelId)
(declare-const fuel%vstd.seq.impl&%0.take. FuelId)
(declare-const fuel%vstd.seq.impl&%0.skip. FuelId)
(declare-const fuel%vstd.seq.impl&%0.spec_add. FuelId)
(declare-const fuel%vstd!seq.Seq.last. FuelId)
(declare-const fuel%vstd.seq.impl&%0.first. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_index_decreases. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_subrange_decreases. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_empty. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_new_len. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_new_index. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_push_len. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_push_index_same. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_push_index_different. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_update_len. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_update_same. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_update_different. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_ext_equal. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_ext_equal_deep. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_subrange_len. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_subrange_index. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_add_len. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_add_index1. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_add_index2. FuelId)
(assert
 (distinct fuel%vstd.pervasive.trigger. fuel%vstd.seq.impl&%0.spec_index. fuel%vstd!seq.Seq.ext_equal.
  fuel%vstd.seq.impl&%0.take. fuel%vstd.seq.impl&%0.skip. fuel%vstd.seq.impl&%0.spec_add.
  fuel%vstd!seq.Seq.last. fuel%vstd.seq.impl&%0.first. fuel%vstd.seq.axiom_seq_index_decreases.
  fuel%vstd.seq.axiom_seq_subrange_decreases. fuel%vstd.seq.axiom_seq_empty. fuel%vstd.seq.axiom_seq_new_len.
  fuel%vstd.seq.axiom_seq_new_index. fuel%vstd.seq.axiom_seq_push_len. fuel%vstd.seq.axiom_seq_push_index_same.
  fuel%vstd.seq.axiom_seq_push_index_different. fuel%vstd.seq.axiom_seq_update_len.
  fuel%vstd.seq.axiom_seq_update_same. fuel%vstd.seq.axiom_seq_update_different. fuel%vstd.seq.axiom_seq_ext_equal.
  fuel%vstd.seq.axiom_seq_ext_equal_deep. fuel%vstd.seq.axiom_seq_subrange_len. fuel%vstd.seq.axiom_seq_subrange_index.
  fuel%vstd.seq.axiom_seq_add_len. fuel%vstd.seq.axiom_seq_add_index1. fuel%vstd.seq.axiom_seq_add_index2.
))

;; Datatypes
(declare-datatypes ((tuple%0. 0)) (((tuple%0./tuple%0))))
(declare-fun TYPE%fun%1. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.seq.Seq. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%fun%1. (%%Function%%) Poly)
(declare-fun %Poly%fun%1. (Poly) %%Function%%)
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

;; Function-Decl vstd::seq::Seq::len
(declare-fun vstd!seq.Seq.len.? (Dcr Type Poly) Int)

;; Function-Decl vstd::seq::Seq::new
(declare-fun vstd!seq.Seq.new.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::seq::Seq::update
(declare-fun vstd!seq.Seq.update.? (Dcr Type Poly Poly Poly) Poly)

;; Function-Decl vstd::seq::Seq::index
(declare-fun vstd!seq.Seq.index.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::seq::Seq::spec_index
(declare-fun vstd.seq.impl&%0.spec_index.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::seq::Seq::subrange
(declare-fun vstd!seq.Seq.subrange.? (Dcr Type Poly Poly Poly) Poly)

;; Function-Decl crate::vstd::pervasive::trigger
(declare-fun vstd.pervasive.trigger.? (Dcr Type Poly) Bool)

;; Function-Decl vstd::seq::Seq::empty
(declare-fun vstd!seq.Seq.empty.? (Dcr Type) Poly)

;; Function-Decl vstd::seq::Seq::push
(declare-fun vstd!seq.Seq.push.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::seq::Seq::add
(declare-fun vstd!seq.Seq.add.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::seq::Seq::skip
(declare-fun vstd.seq.impl&%0.skip.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::seq::Seq::last
(declare-fun vstd!seq.Seq.last.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::seq::Seq::spec_add
(declare-fun vstd.seq.impl&%0.spec_add.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::seq::Seq::ext_equal
(declare-fun vstd!seq.Seq.ext_equal.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::seq::Seq::take
(declare-fun vstd.seq.impl&%0.take.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::seq::Seq::first
(declare-fun vstd.seq.impl&%0.first.? (Dcr Type Poly) Poly)

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

;; Function-Specs vstd::seq::Seq::update
(declare-fun req%vstd!seq.Seq.update. (Dcr Type Poly Poly Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly) (a! Poly)) (!
   (= (req%vstd!seq.Seq.update. A&. A& self! i! a!) (=>
     %%global_location_label%%0
     (and
      (<= 0 (%I i!))
      (< (%I i!) (vstd!seq.Seq.len.? A&. A& self!))
   )))
   :pattern ((req%vstd!seq.Seq.update. A&. A& self! i! a!))
   :qid internal_req__vstd!seq.Seq.update._definition
   :skolemid skolem_internal_req__vstd!seq.Seq.update._definition
)))

;; Function-Axioms vstd::seq::Seq::update
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly) (a! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type i! INT)
     (has_type a! A&)
    )
    (has_type (vstd!seq.Seq.update.? A&. A& self! i! a!) (TYPE%vstd.seq.Seq. A&. A&))
   )
   :pattern ((vstd!seq.Seq.update.? A&. A& self! i! a!))
   :qid internal_vstd!seq.Seq.update.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.update.?_pre_post_definition
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

;; Function-Def crate::vstd::seq::axiom_seq_index_decreases
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/seq.rs:186:1: 186:71 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s! Poly)
 (declare-const i! Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.seq.Seq. A&. A&))
 )
 (assert
  (and
   (<= 0 i!)
   (< i! (vstd!seq.Seq.len.? A&. A& s!))
 ))
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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

;; Function-Specs crate::vstd::seq::axiom_seq_subrange_len
(declare-fun req%vstd.seq.axiom_seq_subrange_len. (Dcr Type Poly Int Int) Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (j! Int) (k! Int)) (!
   (= (req%vstd.seq.axiom_seq_subrange_len. A&. A& s! j! k!) (=>
     %%global_location_label%%4
     (and
      (and
       (<= 0 j!)
       (<= j! k!)
      )
      (<= k! (vstd!seq.Seq.len.? A&. A& s!))
   )))
   :pattern ((req%vstd.seq.axiom_seq_subrange_len. A&. A& s! j! k!))
   :qid internal_req__vstd.seq.axiom_seq_subrange_len._definition
   :skolemid skolem_internal_req__vstd.seq.axiom_seq_subrange_len._definition
)))
(declare-fun ens%vstd.seq.axiom_seq_subrange_len. (Dcr Type Poly Int Int) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (j! Int) (k! Int)) (!
   (= (ens%vstd.seq.axiom_seq_subrange_len. A&. A& s! j! k!) (= (vstd!seq.Seq.len.? A&.
      A& (vstd!seq.Seq.subrange.? A&. A& s! (I j!) (I k!))
     ) (Sub k! j!)
   ))
   :pattern ((ens%vstd.seq.axiom_seq_subrange_len. A&. A& s! j! k!))
   :qid internal_ens__vstd.seq.axiom_seq_subrange_len._definition
   :skolemid skolem_internal_ens__vstd.seq.axiom_seq_subrange_len._definition
)))

;; Function-Def crate::vstd::seq::axiom_seq_subrange_len
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/seq.rs:321:1: 321:76 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s! Poly)
 (declare-const j! Int)
 (declare-const k! Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.seq.Seq. A&. A&))
 )
 (assert
  (and
   (and
    (<= 0 j!)
    (<= j! k!)
   )
   (<= k! (vstd!seq.Seq.len.? A&. A& s!))
 ))
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::seq::axiom_seq_subrange_len
(assert
 (=>
  (fuel_bool fuel%vstd.seq.axiom_seq_subrange_len.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (j! Poly) (k! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type j! INT)
      (has_type k! INT)
     )
     (=>
      (and
       (and
        (<= 0 (%I j!))
        (<= (%I j!) (%I k!))
       )
       (<= (%I k!) (vstd!seq.Seq.len.? A&. A& s!))
      )
      (= (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s! j! k!)) (Sub (%I k!)
        (%I j!)
    ))))
    :pattern ((vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s! j! k!)))
    :qid user_crate__vstd__seq__axiom_seq_subrange_len_1
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_subrange_len_1
))))

;; Function-Specs crate::vstd::seq::axiom_seq_subrange_index
(declare-fun req%vstd.seq.axiom_seq_subrange_index. (Dcr Type Poly Int Int Int) Bool)
(declare-const %%global_location_label%%5 Bool)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (j! Int) (k! Int) (i! Int)) (!
   (= (req%vstd.seq.axiom_seq_subrange_index. A&. A& s! j! k! i!) (and
     (=>
      %%global_location_label%%5
      (and
       (and
        (<= 0 j!)
        (<= j! k!)
       )
       (<= k! (vstd!seq.Seq.len.? A&. A& s!))
     ))
     (=>
      %%global_location_label%%6
      (and
       (<= 0 i!)
       (< i! (Sub k! j!))
   ))))
   :pattern ((req%vstd.seq.axiom_seq_subrange_index. A&. A& s! j! k! i!))
   :qid internal_req__vstd.seq.axiom_seq_subrange_index._definition
   :skolemid skolem_internal_req__vstd.seq.axiom_seq_subrange_index._definition
)))
(declare-fun ens%vstd.seq.axiom_seq_subrange_index. (Dcr Type Poly Int Int Int) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (j! Int) (k! Int) (i! Int)) (!
   (= (ens%vstd.seq.axiom_seq_subrange_index. A&. A& s! j! k! i!) (= (vstd!seq.Seq.index.?
      A&. A& (vstd!seq.Seq.subrange.? A&. A& s! (I j!) (I k!)) (I i!)
     ) (vstd!seq.Seq.index.? A&. A& s! (I (Add i! j!)))
   ))
   :pattern ((ens%vstd.seq.axiom_seq_subrange_index. A&. A& s! j! k! i!))
   :qid internal_ens__vstd.seq.axiom_seq_subrange_index._definition
   :skolemid skolem_internal_ens__vstd.seq.axiom_seq_subrange_index._definition
)))

;; Function-Def crate::vstd::seq::axiom_seq_subrange_index
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/seq.rs:330:1: 330:86 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s! Poly)
 (declare-const j! Int)
 (declare-const k! Int)
 (declare-const i! Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.seq.Seq. A&. A&))
 )
 (assert
  (and
   (and
    (<= 0 j!)
    (<= j! k!)
   )
   (<= k! (vstd!seq.Seq.len.? A&. A& s!))
 ))
 (assert
  (and
   (<= 0 i!)
   (< i! (Sub k! j!))
 ))
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::seq::axiom_seq_subrange_index
(assert
 (=>
  (fuel_bool fuel%vstd.seq.axiom_seq_subrange_index.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (j! Poly) (k! Poly) (i! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type j! INT)
      (has_type k! INT)
      (has_type i! INT)
     )
     (=>
      (and
       (and
        (and
         (<= 0 (%I j!))
         (<= (%I j!) (%I k!))
        )
        (<= (%I k!) (vstd!seq.Seq.len.? A&. A& s!))
       )
       (and
        (<= 0 (%I i!))
        (< (%I i!) (Sub (%I k!) (%I j!)))
      ))
      (= (vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s! j! k!) i!) (vstd!seq.Seq.index.?
        A&. A& s! (I (Add (%I i!) (%I j!)))
    ))))
    :pattern ((vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s! j! k!) i!))
    :qid user_crate__vstd__seq__axiom_seq_subrange_index_2
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_subrange_index_2
))))

;; Function-Axioms crate::vstd::pervasive::trigger
(assert
 (fuel_bool_default fuel%vstd.pervasive.trigger.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.pervasive.trigger.)
  (forall ((A&. Dcr) (A& Type) (a! Poly)) (!
    (= (vstd.pervasive.trigger.? A&. A& a!) true)
    :pattern ((vstd.pervasive.trigger.? A&. A& a!))
    :qid internal_vstd.pervasive.trigger.?_definition
    :skolemid skolem_internal_vstd.pervasive.trigger.?_definition
))))

;; Function-Specs crate::vstd::seq::axiom_seq_len_decreases
(declare-fun req%vstd.seq.axiom_seq_len_decreases. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%7 Bool)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
   (= (req%vstd.seq.axiom_seq_len_decreases. A&. A& s1! s2!) (and
     (=>
      %%global_location_label%%7
      (< (vstd!seq.Seq.len.? A&. A& s2!) (vstd!seq.Seq.len.? A&. A& s1!))
     )
     (=>
      %%global_location_label%%8
      (forall ((i2$ Poly)) (!
        (=>
         (has_type i2$ INT)
         (=>
          (and
           (and
            (<= 0 (%I i2$))
            (< (%I i2$) (vstd!seq.Seq.len.? A&. A& s2!))
           )
           (vstd.pervasive.trigger.? A&. A& (vstd!seq.Seq.index.? A&. A& s2! i2$))
          )
          (exists ((i1$ Poly)) (!
            (and
             (has_type i1$ INT)
             (and
              (and
               (<= 0 (%I i1$))
               (< (%I i1$) (vstd!seq.Seq.len.? A&. A& s1!))
              )
              (= (vstd!seq.Seq.index.? A&. A& s1! i1$) (vstd!seq.Seq.index.? A&. A& s2! i2$))
            ))
            :pattern ((vstd!seq.Seq.index.? A&. A& s1! i1$))
            :qid user_crate__vstd__seq__axiom_seq_len_decreases_3
            :skolemid skolem_user_crate__vstd__seq__axiom_seq_len_decreases_3
        ))))
        :pattern ((vstd.pervasive.trigger.? A&. A& (vstd!seq.Seq.index.? A&. A& s2! i2$)))
        :qid user_crate__vstd__seq__axiom_seq_len_decreases_4
        :skolemid skolem_user_crate__vstd__seq__axiom_seq_len_decreases_4
   )))))
   :pattern ((req%vstd.seq.axiom_seq_len_decreases. A&. A& s1! s2!))
   :qid internal_req__vstd.seq.axiom_seq_len_decreases._definition
   :skolemid skolem_internal_req__vstd.seq.axiom_seq_len_decreases._definition
)))
(declare-fun ens%vstd.seq.axiom_seq_len_decreases. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
   (= (ens%vstd.seq.axiom_seq_len_decreases. A&. A& s1! s2!) (height_lt (height s2!) (
      height s1!
   )))
   :pattern ((ens%vstd.seq.axiom_seq_len_decreases. A&. A& s1! s2!))
   :qid internal_ens__vstd.seq.axiom_seq_len_decreases._definition
   :skolemid skolem_internal_ens__vstd.seq.axiom_seq_len_decreases._definition
)))

;; Function-Def crate::vstd::seq::axiom_seq_len_decreases
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/seq.rs:195:1: 195:64 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s1! Poly)
 (declare-const s2! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s1! (TYPE%vstd.seq.Seq. A&. A&))
 )
 (assert
  (has_type s2! (TYPE%vstd.seq.Seq. A&. A&))
 )
 (assert
  (< (vstd!seq.Seq.len.? A&. A& s2!) (vstd!seq.Seq.len.? A&. A& s1!))
 )
 (assert
  (forall ((i2$ Poly)) (!
    (=>
     (has_type i2$ INT)
     (=>
      (and
       (and
        (<= 0 (%I i2$))
        (< (%I i2$) (vstd!seq.Seq.len.? A&. A& s2!))
       )
       (vstd.pervasive.trigger.? A&. A& (vstd!seq.Seq.index.? A&. A& s2! i2$))
      )
      (exists ((i1$ Poly)) (!
        (and
         (has_type i1$ INT)
         (and
          (and
           (<= 0 (%I i1$))
           (< (%I i1$) (vstd!seq.Seq.len.? A&. A& s1!))
          )
          (= (vstd!seq.Seq.index.? A&. A& s1! i1$) (vstd!seq.Seq.index.? A&. A& s2! i2$))
        ))
        :pattern ((vstd!seq.Seq.index.? A&. A& s1! i1$))
        :qid user_crate__vstd__seq__axiom_seq_len_decreases_5
        :skolemid skolem_user_crate__vstd__seq__axiom_seq_len_decreases_5
    ))))
    :pattern ((vstd.pervasive.trigger.? A&. A& (vstd!seq.Seq.index.? A&. A& s2! i2$)))
    :qid user_crate__vstd__seq__axiom_seq_len_decreases_6
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_len_decreases_6
 )))
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Def crate::vstd::seq::axiom_seq_subrange_decreases
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/seq.rs:207:1: 207:82 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s! Poly)
 (declare-const i! Int)
 (declare-const j! Int)
 (declare-const i2@ Poly)
 (declare-const tmp%1 Bool)
 (declare-const s2@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.seq.Seq. A&. A&))
 )
 (assert
  (and
   (and
    (<= 0 i!)
    (<= i! j!)
   )
   (<= j! (vstd!seq.Seq.len.? A&. A& s!))
 ))
 (assert
  (< (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s! (I i!) (I j!))) (
    vstd!seq.Seq.len.? A&. A& s!
 )))
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.seq.axiom_seq_subrange_len.)
    (=>
     (fuel_bool fuel%vstd.seq.axiom_seq_subrange_index.)
     (=>
      (= s2@ (vstd!seq.Seq.subrange.? A&. A& s! (I i!) (I j!)))
      (and
       (=>
        (has_type i2@ INT)
        (=>
         (and
          (and
           (<= 0 (%I i2@))
           (< (%I i2@) (vstd!seq.Seq.len.? A&. A& s2@))
          )
          (vstd.pervasive.trigger.? A&. A& (vstd!seq.Seq.index.? A&. A& s2@ i2@))
         )
         (=>
          (= tmp%1 (= (vstd!seq.Seq.index.? A&. A& s! (I (Add i! (%I i2@)))) (vstd!seq.Seq.index.?
             A&. A& s2@ i2@
          )))
          (and
           (=>
            %%location_label%%0
            tmp%1
           )
           (=>
            tmp%1
            (=>
             %%location_label%%1
             (exists ((i1$ Poly)) (!
               (and
                (has_type i1$ INT)
                (and
                 (and
                  (<= 0 (%I i1$))
                  (< (%I i1$) (vstd!seq.Seq.len.? A&. A& s!))
                 )
                 (= (vstd!seq.Seq.index.? A&. A& s! i1$) (vstd!seq.Seq.index.? A&. A& s2@ i2@))
               ))
               :pattern ((vstd!seq.Seq.index.? A&. A& s! i1$))
               :qid user_crate__vstd__seq__axiom_seq_subrange_decreases_8
               :skolemid skolem_user_crate__vstd__seq__axiom_seq_subrange_decreases_8
       ))))))))
       (=>
        (forall ((i2$ Poly)) (!
          (=>
           (has_type i2$ INT)
           (=>
            (and
             (and
              (<= 0 (%I i2$))
              (< (%I i2$) (vstd!seq.Seq.len.? A&. A& s2@))
             )
             (vstd.pervasive.trigger.? A&. A& (vstd!seq.Seq.index.? A&. A& s2@ i2$))
            )
            (exists ((i1$ Poly)) (!
              (and
               (has_type i1$ INT)
               (and
                (and
                 (<= 0 (%I i1$))
                 (< (%I i1$) (vstd!seq.Seq.len.? A&. A& s!))
                )
                (= (vstd!seq.Seq.index.? A&. A& s! i1$) (vstd!seq.Seq.index.? A&. A& s2@ i2$))
              ))
              :pattern ((vstd!seq.Seq.index.? A&. A& s! i1$))
              :qid user_crate__vstd__seq__axiom_seq_subrange_decreases_9
              :skolemid skolem_user_crate__vstd__seq__axiom_seq_subrange_decreases_9
          ))))
          :pattern ((vstd.pervasive.trigger.? A&. A& (vstd!seq.Seq.index.? A&. A& s2@ i2$)))
          :qid user_crate__vstd__seq__axiom_seq_subrange_decreases_10
          :skolemid skolem_user_crate__vstd__seq__axiom_seq_subrange_decreases_10
        ))
        (and
         (=>
          %%location_label%%2
          (req%vstd.seq.axiom_seq_len_decreases. A&. A& s! s2@)
         )
         (=>
          (ens%vstd.seq.axiom_seq_len_decreases. A&. A& s! s2@)
          (=>
           %%location_label%%3
           (height_lt (height (vstd!seq.Seq.subrange.? A&. A& s! (I i!) (I j!))) (height s!))
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::seq::axiom_seq_subrange_decreases
(assert
 (=>
  (fuel_bool fuel%vstd.seq.axiom_seq_subrange_decreases.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (i! Poly) (j! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type i! INT)
      (has_type j! INT)
     )
     (=>
      (and
       (and
        (and
         (<= 0 (%I i!))
         (<= (%I i!) (%I j!))
        )
        (<= (%I j!) (vstd!seq.Seq.len.? A&. A& s!))
       )
       (< (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s! i! j!)) (vstd!seq.Seq.len.?
         A&. A& s!
      )))
      (height_lt (height (vstd!seq.Seq.subrange.? A&. A& s! i! j!)) (height s!))
    ))
    :pattern ((height (vstd!seq.Seq.subrange.? A&. A& s! i! j!)))
    :qid user_crate__vstd__seq__axiom_seq_subrange_decreases_7
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_subrange_decreases_7
))))

;; Function-Axioms vstd::seq::Seq::empty
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (has_type (vstd!seq.Seq.empty.? A&. A&) (TYPE%vstd.seq.Seq. A&. A&))
   :pattern ((vstd!seq.Seq.empty.? A&. A&))
   :qid internal_vstd!seq.Seq.empty.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.empty.?_pre_post_definition
)))

;; Function-Def crate::vstd::seq::axiom_seq_empty
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/seq.rs:224:1: 224:44 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
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

;; Broadcast crate::vstd::seq::axiom_seq_empty
(assert
 (=>
  (fuel_bool fuel%vstd.seq.axiom_seq_empty.)
  (forall ((A&. Dcr) (A& Type)) (!
    (= (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.empty.? A&. A&)) 0)
    :pattern ((vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.empty.? A&. A&)))
    :qid user_crate__vstd__seq__axiom_seq_empty_11
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_empty_11
))))

;; Function-Def crate::vstd::seq::axiom_seq_new_len
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/seq.rs:231:1: 231:76 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const len! Int)
 (declare-const f! %%Function%%)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 len!)
 )
 (assert
  (has_type (Poly%fun%1. f!) (TYPE%fun%1. $ INT A&. A&))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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
    :qid user_crate__vstd__seq__axiom_seq_new_len_12
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_new_len_12
))))

;; Function-Def crate::vstd::seq::axiom_seq_new_index
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/seq.rs:238:1: 238:86 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const len! Int)
 (declare-const f! %%Function%%)
 (declare-const i! Int)
 (assert
  fuel_defaults
 )
 (assert
  (<= 0 len!)
 )
 (assert
  (has_type (Poly%fun%1. f!) (TYPE%fun%1. $ INT A&. A&))
 )
 (assert
  (and
   (<= 0 i!)
   (< i! len!)
 ))
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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
    :qid user_crate__vstd__seq__axiom_seq_new_index_13
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_new_index_13
))))

;; Function-Axioms vstd::seq::Seq::push
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (a! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type a! A&)
    )
    (has_type (vstd!seq.Seq.push.? A&. A& self! a!) (TYPE%vstd.seq.Seq. A&. A&))
   )
   :pattern ((vstd!seq.Seq.push.? A&. A& self! a!))
   :qid internal_vstd!seq.Seq.push.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.push.?_pre_post_definition
)))

;; Function-Def crate::vstd::seq::axiom_seq_push_len
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/seq.rs:247:1: 247:62 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s! Poly)
 (declare-const a! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.seq.Seq. A&. A&))
 )
 (assert
  (has_type a! A&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::seq::axiom_seq_push_len
(assert
 (=>
  (fuel_bool fuel%vstd.seq.axiom_seq_push_len.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type a! A&)
     )
     (= (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.push.? A&. A& s! a!)) (nClip (Add (vstd!seq.Seq.len.?
         A&. A& s!
        ) 1
    ))))
    :pattern ((vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.push.? A&. A& s! a!)))
    :qid user_crate__vstd__seq__axiom_seq_push_len_14
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_push_len_14
))))

;; Function-Def crate::vstd::seq::axiom_seq_push_index_same
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/seq.rs:254:1: 254:77 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s! Poly)
 (declare-const a! Poly)
 (declare-const i! Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.seq.Seq. A&. A&))
 )
 (assert
  (has_type a! A&)
 )
 (assert
  (= i! (vstd!seq.Seq.len.? A&. A& s!))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::seq::axiom_seq_push_index_same
(assert
 (=>
  (fuel_bool fuel%vstd.seq.axiom_seq_push_index_same.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly) (i! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type a! A&)
      (has_type i! INT)
     )
     (=>
      (= (%I i!) (vstd!seq.Seq.len.? A&. A& s!))
      (= (vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.push.? A&. A& s! a!) i!) a!)
    ))
    :pattern ((vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.push.? A&. A& s! a!) i!))
    :qid user_crate__vstd__seq__axiom_seq_push_index_same_15
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_push_index_same_15
))))

;; Function-Def crate::vstd::seq::axiom_seq_push_index_different
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/seq.rs:263:1: 263:82 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s! Poly)
 (declare-const a! Poly)
 (declare-const i! Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.seq.Seq. A&. A&))
 )
 (assert
  (has_type a! A&)
 )
 (assert
  (and
   (<= 0 i!)
   (< i! (vstd!seq.Seq.len.? A&. A& s!))
 ))
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::seq::axiom_seq_push_index_different
(assert
 (=>
  (fuel_bool fuel%vstd.seq.axiom_seq_push_index_different.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly) (i! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type a! A&)
      (has_type i! INT)
     )
     (=>
      (and
       (<= 0 (%I i!))
       (< (%I i!) (vstd!seq.Seq.len.? A&. A& s!))
      )
      (= (vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.push.? A&. A& s! a!) i!) (vstd!seq.Seq.index.?
        A&. A& s! i!
    ))))
    :pattern ((vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.push.? A&. A& s! a!) i!))
    :qid user_crate__vstd__seq__axiom_seq_push_index_different_16
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_push_index_different_16
))))

;; Function-Def crate::vstd::seq::axiom_seq_update_len
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/seq.rs:272:1: 272:72 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s! Poly)
 (declare-const i! Int)
 (declare-const a! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.seq.Seq. A&. A&))
 )
 (assert
  (has_type a! A&)
 )
 (assert
  (and
   (<= 0 i!)
   (< i! (vstd!seq.Seq.len.? A&. A& s!))
 ))
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::seq::axiom_seq_update_len
(assert
 (=>
  (fuel_bool fuel%vstd.seq.axiom_seq_update_len.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (i! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type i! INT)
      (has_type a! A&)
     )
     (=>
      (and
       (<= 0 (%I i!))
       (< (%I i!) (vstd!seq.Seq.len.? A&. A& s!))
      )
      (= (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.update.? A&. A& s! i! a!)) (vstd!seq.Seq.len.?
        A&. A& s!
    ))))
    :pattern ((vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.update.? A&. A& s! i! a!)))
    :qid user_crate__vstd__seq__axiom_seq_update_len_17
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_update_len_17
))))

;; Function-Def crate::vstd::seq::axiom_seq_update_same
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/seq.rs:281:1: 281:73 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s! Poly)
 (declare-const i! Int)
 (declare-const a! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.seq.Seq. A&. A&))
 )
 (assert
  (has_type a! A&)
 )
 (assert
  (and
   (<= 0 i!)
   (< i! (vstd!seq.Seq.len.? A&. A& s!))
 ))
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::seq::axiom_seq_update_same
(assert
 (=>
  (fuel_bool fuel%vstd.seq.axiom_seq_update_same.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (i! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type i! INT)
      (has_type a! A&)
     )
     (=>
      (and
       (<= 0 (%I i!))
       (< (%I i!) (vstd!seq.Seq.len.? A&. A& s!))
      )
      (= (vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.update.? A&. A& s! i! a!) i!) a!)
    ))
    :pattern ((vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.update.? A&. A& s! i! a!) i!))
    :qid user_crate__vstd__seq__axiom_seq_update_same_18
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_update_same_18
))))

;; Function-Def crate::vstd::seq::axiom_seq_update_different
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/seq.rs:290:1: 290:88 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s! Poly)
 (declare-const i1! Int)
 (declare-const i2! Int)
 (declare-const a! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s! (TYPE%vstd.seq.Seq. A&. A&))
 )
 (assert
  (has_type a! A&)
 )
 (assert
  (and
   (<= 0 i1!)
   (< i1! (vstd!seq.Seq.len.? A&. A& s!))
 ))
 (assert
  (and
   (<= 0 i2!)
   (< i2! (vstd!seq.Seq.len.? A&. A& s!))
 ))
 (assert
  (not (= i1! i2!))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::seq::axiom_seq_update_different
(assert
 (=>
  (fuel_bool fuel%vstd.seq.axiom_seq_update_different.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (i1! Poly) (i2! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type i1! INT)
      (has_type i2! INT)
      (has_type a! A&)
     )
     (=>
      (and
       (and
        (and
         (<= 0 (%I i1!))
         (< (%I i1!) (vstd!seq.Seq.len.? A&. A& s!))
        )
        (and
         (<= 0 (%I i2!))
         (< (%I i2!) (vstd!seq.Seq.len.? A&. A& s!))
       ))
       (not (= i1! i2!))
      )
      (= (vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.update.? A&. A& s! i2! a!) i1!) (vstd!seq.Seq.index.?
        A&. A& s! i1!
    ))))
    :pattern ((vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.update.? A&. A& s! i2! a!) i1!))
    :qid user_crate__vstd__seq__axiom_seq_update_different_19
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_update_different_19
))))

;; Function-Def crate::vstd::seq::axiom_seq_ext_equal
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/seq.rs:301:1: 301:70 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s1! Poly)
 (declare-const s2! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s1! (TYPE%vstd.seq.Seq. A&. A&))
 )
 (assert
  (has_type s2! (TYPE%vstd.seq.Seq. A&. A&))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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
         :qid user_crate__vstd__seq__axiom_seq_ext_equal_20
         :skolemid skolem_user_crate__vstd__seq__axiom_seq_ext_equal_20
    )))))
    :pattern ((ext_eq false (TYPE%vstd.seq.Seq. A&. A&) s1! s2!))
    :qid user_crate__vstd__seq__axiom_seq_ext_equal_21
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_ext_equal_21
))))

;; Function-Def crate::vstd::seq::axiom_seq_ext_equal_deep
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/seq.rs:311:1: 311:75 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s1! Poly)
 (declare-const s2! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s1! (TYPE%vstd.seq.Seq. A&. A&))
 )
 (assert
  (has_type s2! (TYPE%vstd.seq.Seq. A&. A&))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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
         :qid user_crate__vstd__seq__axiom_seq_ext_equal_deep_23
         :skolemid skolem_user_crate__vstd__seq__axiom_seq_ext_equal_deep_23
    )))))
    :pattern ((ext_eq true (TYPE%vstd.seq.Seq. A&. A&) s1! s2!))
    :qid user_crate__vstd__seq__axiom_seq_ext_equal_deep_24
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_ext_equal_deep_24
))))

;; Function-Axioms vstd::seq::Seq::add
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (rhs! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type rhs! (TYPE%vstd.seq.Seq. A&. A&))
    )
    (has_type (vstd!seq.Seq.add.? A&. A& self! rhs!) (TYPE%vstd.seq.Seq. A&. A&))
   )
   :pattern ((vstd!seq.Seq.add.? A&. A& self! rhs!))
   :qid internal_vstd!seq.Seq.add.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.add.?_pre_post_definition
)))

;; Function-Def crate::vstd::seq::axiom_seq_add_len
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/seq.rs:340:1: 340:68 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s1! Poly)
 (declare-const s2! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s1! (TYPE%vstd.seq.Seq. A&. A&))
 )
 (assert
  (has_type s2! (TYPE%vstd.seq.Seq. A&. A&))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::seq::axiom_seq_add_len
(assert
 (=>
  (fuel_bool fuel%vstd.seq.axiom_seq_add_len.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type s2! (TYPE%vstd.seq.Seq. A&. A&))
     )
     (= (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.add.? A&. A& s1! s2!)) (nClip (Add (vstd!seq.Seq.len.?
         A&. A& s1!
        ) (vstd!seq.Seq.len.? A&. A& s2!)
    ))))
    :pattern ((vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.add.? A&. A& s1! s2!)))
    :qid user_crate__vstd__seq__axiom_seq_add_len_26
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_add_len_26
))))

;; Function-Def crate::vstd::seq::axiom_seq_add_index1
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/seq.rs:347:1: 347:79 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s1! Poly)
 (declare-const s2! Poly)
 (declare-const i! Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s1! (TYPE%vstd.seq.Seq. A&. A&))
 )
 (assert
  (has_type s2! (TYPE%vstd.seq.Seq. A&. A&))
 )
 (assert
  (and
   (<= 0 i!)
   (< i! (vstd!seq.Seq.len.? A&. A& s1!))
 ))
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::seq::axiom_seq_add_index1
(assert
 (=>
  (fuel_bool fuel%vstd.seq.axiom_seq_add_index1.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly) (i! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type s2! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type i! INT)
     )
     (=>
      (and
       (<= 0 (%I i!))
       (< (%I i!) (vstd!seq.Seq.len.? A&. A& s1!))
      )
      (= (vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.add.? A&. A& s1! s2!) i!) (vstd!seq.Seq.index.?
        A&. A& s1! i!
    ))))
    :pattern ((vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.add.? A&. A& s1! s2!) i!))
    :qid user_crate__vstd__seq__axiom_seq_add_index1_27
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_add_index1_27
))))

;; Function-Def crate::vstd::seq::axiom_seq_add_index2
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/seq.rs:356:1: 356:79 (#0)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const s1! Poly)
 (declare-const s2! Poly)
 (declare-const i! Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type s1! (TYPE%vstd.seq.Seq. A&. A&))
 )
 (assert
  (has_type s2! (TYPE%vstd.seq.Seq. A&. A&))
 )
 (assert
  (and
   (<= (vstd!seq.Seq.len.? A&. A& s1!) i!)
   (< i! (nClip (Add (vstd!seq.Seq.len.? A&. A& s1!) (vstd!seq.Seq.len.? A&. A& s2!))))
 ))
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Broadcast crate::vstd::seq::axiom_seq_add_index2
(assert
 (=>
  (fuel_bool fuel%vstd.seq.axiom_seq_add_index2.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly) (i! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type s2! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type i! INT)
     )
     (=>
      (and
       (<= (vstd!seq.Seq.len.? A&. A& s1!) (%I i!))
       (< (%I i!) (nClip (Add (vstd!seq.Seq.len.? A&. A& s1!) (vstd!seq.Seq.len.? A&. A& s2!))))
      )
      (= (vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.add.? A&. A& s1! s2!) i!) (vstd!seq.Seq.index.?
        A&. A& s2! (I (Sub (%I i!) (vstd!seq.Seq.len.? A&. A& s1!)))
    ))))
    :pattern ((vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.add.? A&. A& s1! s2!) i!))
    :qid user_crate__vstd__seq__axiom_seq_add_index2_28
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_add_index2_28
))))

;; Function-Axioms crate::vstd::seq::Seq::skip
(assert
 (fuel_bool_default fuel%vstd.seq.impl&%0.skip.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.seq.impl&%0.skip.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (n! Poly)) (!
    (= (vstd.seq.impl&%0.skip.? A&. A& self! n!) (vstd!seq.Seq.subrange.? A&. A& self!
      n! (I (vstd!seq.Seq.len.? A&. A& self!))
    ))
    :pattern ((vstd.seq.impl&%0.skip.? A&. A& self! n!))
    :qid internal_vstd.seq.impl&__0.skip.?_definition
    :skolemid skolem_internal_vstd.seq.impl&__0.skip.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (n! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type n! INT)
    )
    (has_type (vstd.seq.impl&%0.skip.? A&. A& self! n!) (TYPE%vstd.seq.Seq. A&. A&))
   )
   :pattern ((vstd.seq.impl&%0.skip.? A&. A& self! n!))
   :qid internal_vstd.seq.impl&__0.skip.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq.impl&__0.skip.?_pre_post_definition
)))

;; Function-Specs vstd::seq::Seq::last
(declare-fun req%vstd!seq.Seq.last. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%9 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (req%vstd!seq.Seq.last. A&. A& self!) (=>
     %%global_location_label%%9
     (< 0 (vstd!seq.Seq.len.? A&. A& self!))
   ))
   :pattern ((req%vstd!seq.Seq.last. A&. A& self!))
   :qid internal_req__vstd!seq.Seq.last._definition
   :skolemid skolem_internal_req__vstd!seq.Seq.last._definition
)))

;; Function-Axioms vstd::seq::Seq::last
(assert
 (fuel_bool_default fuel%vstd!seq.Seq.last.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!seq.Seq.last.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (= (vstd!seq.Seq.last.? A&. A& self!) (vstd!seq.Seq.index.? A&. A& self! (I (Sub (vstd!seq.Seq.len.?
         A&. A& self!
        ) 1
    ))))
    :pattern ((vstd!seq.Seq.last.? A&. A& self!))
    :qid internal_vstd!seq.Seq.last.?_definition
    :skolemid skolem_internal_vstd!seq.Seq.last.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
    (has_type (vstd!seq.Seq.last.? A&. A& self!) A&)
   )
   :pattern ((vstd!seq.Seq.last.? A&. A& self!))
   :qid internal_vstd!seq.Seq.last.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.last.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::seq::Seq::spec_add
(assert
 (fuel_bool_default fuel%vstd.seq.impl&%0.spec_add.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.seq.impl&%0.spec_add.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (rhs! Poly)) (!
    (= (vstd.seq.impl&%0.spec_add.? A&. A& self! rhs!) (vstd!seq.Seq.add.? A&. A& self!
      rhs!
    ))
    :pattern ((vstd.seq.impl&%0.spec_add.? A&. A& self! rhs!))
    :qid internal_vstd.seq.impl&__0.spec_add.?_definition
    :skolemid skolem_internal_vstd.seq.impl&__0.spec_add.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (rhs! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type rhs! (TYPE%vstd.seq.Seq. A&. A&))
    )
    (has_type (vstd.seq.impl&%0.spec_add.? A&. A& self! rhs!) (TYPE%vstd.seq.Seq. A&. A&))
   )
   :pattern ((vstd.seq.impl&%0.spec_add.? A&. A& self! rhs!))
   :qid internal_vstd.seq.impl&__0.spec_add.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq.impl&__0.spec_add.?_pre_post_definition
)))

;; Function-Axioms vstd::seq::Seq::ext_equal
(assert
 (fuel_bool_default fuel%vstd!seq.Seq.ext_equal.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!seq.Seq.ext_equal.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
    (= (vstd!seq.Seq.ext_equal.? A&. A& self! s2!) (ext_eq false (TYPE%vstd.seq.Seq. A&.
       A&
      ) self! s2!
    ))
    :pattern ((vstd!seq.Seq.ext_equal.? A&. A& self! s2!))
    :qid internal_vstd!seq.Seq.ext_equal.?_definition
    :skolemid skolem_internal_vstd!seq.Seq.ext_equal.?_definition
))))

;; Function-Axioms crate::vstd::seq::Seq::take
(assert
 (fuel_bool_default fuel%vstd.seq.impl&%0.take.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.seq.impl&%0.take.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (n! Poly)) (!
    (= (vstd.seq.impl&%0.take.? A&. A& self! n!) (vstd!seq.Seq.subrange.? A&. A& self!
      (I 0) n!
    ))
    :pattern ((vstd.seq.impl&%0.take.? A&. A& self! n!))
    :qid internal_vstd.seq.impl&__0.take.?_definition
    :skolemid skolem_internal_vstd.seq.impl&__0.take.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (n! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type n! INT)
    )
    (has_type (vstd.seq.impl&%0.take.? A&. A& self! n!) (TYPE%vstd.seq.Seq. A&. A&))
   )
   :pattern ((vstd.seq.impl&%0.take.? A&. A& self! n!))
   :qid internal_vstd.seq.impl&__0.take.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq.impl&__0.take.?_pre_post_definition
)))

;; Function-Specs crate::vstd::seq::Seq::first
(declare-fun req%vstd.seq.impl&%0.first. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%10 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (req%vstd.seq.impl&%0.first. A&. A& self!) (=>
     %%global_location_label%%10
     (< 0 (vstd!seq.Seq.len.? A&. A& self!))
   ))
   :pattern ((req%vstd.seq.impl&%0.first. A&. A& self!))
   :qid internal_req__vstd.seq.impl&__0.first._definition
   :skolemid skolem_internal_req__vstd.seq.impl&__0.first._definition
)))

;; Function-Axioms crate::vstd::seq::Seq::first
(assert
 (fuel_bool_default fuel%vstd.seq.impl&%0.first.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.seq.impl&%0.first.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (= (vstd.seq.impl&%0.first.? A&. A& self!) (vstd!seq.Seq.index.? A&. A& self! (I 0)))
    :pattern ((vstd.seq.impl&%0.first.? A&. A& self!))
    :qid internal_vstd.seq.impl&__0.first.?_definition
    :skolemid skolem_internal_vstd.seq.impl&__0.first.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
    (has_type (vstd.seq.impl&%0.first.? A&. A& self!) A&)
   )
   :pattern ((vstd.seq.impl&%0.first.? A&. A& self!))
   :qid internal_vstd.seq.impl&__0.first.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq.impl&__0.first.?_pre_post_definition
)))
