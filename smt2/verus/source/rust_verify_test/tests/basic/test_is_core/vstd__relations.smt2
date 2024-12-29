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

;; MODULE 'module vstd::relations'

;; Fuel
(declare-const fuel%vstd.seq.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_index_decreases. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_empty. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_push_len. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_push_index_same. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_push_index_different. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_ext_equal. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_ext_equal_deep. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_add_len. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_add_index1. FuelId)
(declare-const fuel%vstd.seq.axiom_seq_add_index2. FuelId)
(declare-const fuel%vstd.relations.injective. FuelId)
(declare-const fuel%vstd.relations.commutative. FuelId)
(declare-const fuel%vstd.relations.associative. FuelId)
(declare-const fuel%vstd.relations.reflexive. FuelId)
(declare-const fuel%vstd.relations.irreflexive. FuelId)
(declare-const fuel%vstd.relations.antisymmetric. FuelId)
(declare-const fuel%vstd.relations.asymmetric. FuelId)
(declare-const fuel%vstd.relations.symmetric. FuelId)
(declare-const fuel%vstd.relations.connected. FuelId)
(declare-const fuel%vstd.relations.strongly_connected. FuelId)
(declare-const fuel%vstd.relations.transitive. FuelId)
(declare-const fuel%vstd.relations.total_ordering. FuelId)
(declare-const fuel%vstd.relations.strict_total_ordering. FuelId)
(declare-const fuel%vstd.relations.pre_ordering. FuelId)
(declare-const fuel%vstd.relations.partial_ordering. FuelId)
(declare-const fuel%vstd.relations.equivalence_relation. FuelId)
(declare-const fuel%vstd.relations.sorted_by. FuelId)
(declare-const fuel%vstd.relations.is_least. FuelId)
(declare-const fuel%vstd.relations.is_minimal. FuelId)
(declare-const fuel%vstd.relations.is_greatest. FuelId)
(declare-const fuel%vstd.relations.is_maximal. FuelId)
(declare-const fuel%vstd.seq.group_seq_axioms. FuelId)
(assert
 (distinct fuel%vstd.seq.impl&%0.spec_index. fuel%vstd.seq.axiom_seq_index_decreases.
  fuel%vstd.seq.axiom_seq_empty. fuel%vstd.seq.axiom_seq_push_len. fuel%vstd.seq.axiom_seq_push_index_same.
  fuel%vstd.seq.axiom_seq_push_index_different. fuel%vstd.seq.axiom_seq_ext_equal.
  fuel%vstd.seq.axiom_seq_ext_equal_deep. fuel%vstd.seq.axiom_seq_add_len. fuel%vstd.seq.axiom_seq_add_index1.
  fuel%vstd.seq.axiom_seq_add_index2. fuel%vstd.relations.injective. fuel%vstd.relations.commutative.
  fuel%vstd.relations.associative. fuel%vstd.relations.reflexive. fuel%vstd.relations.irreflexive.
  fuel%vstd.relations.antisymmetric. fuel%vstd.relations.asymmetric. fuel%vstd.relations.symmetric.
  fuel%vstd.relations.connected. fuel%vstd.relations.strongly_connected. fuel%vstd.relations.transitive.
  fuel%vstd.relations.total_ordering. fuel%vstd.relations.strict_total_ordering. fuel%vstd.relations.pre_ordering.
  fuel%vstd.relations.partial_ordering. fuel%vstd.relations.equivalence_relation. fuel%vstd.relations.sorted_by.
  fuel%vstd.relations.is_least. fuel%vstd.relations.is_minimal. fuel%vstd.relations.is_greatest.
  fuel%vstd.relations.is_maximal. fuel%vstd.seq.group_seq_axioms.
))
(assert
 (=>
  (fuel_bool_default fuel%vstd.seq.group_seq_axioms.)
  (and
   (fuel_bool_default fuel%vstd.seq.axiom_seq_index_decreases.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_empty.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_push_len.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_push_index_same.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_push_index_different.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_ext_equal.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_ext_equal_deep.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_add_len.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_add_index1.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_add_index2.)
)))

;; Datatypes
(declare-datatypes ((tuple%0. 0)) (((tuple%0./tuple%0))))
(declare-fun TYPE%fun%1. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%fun%2. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.seq.Seq. (Dcr Type) Type)
(declare-fun TYPE%vstd.set.Set. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%fun%1. (%%Function%%) Poly)
(declare-fun %Poly%fun%1. (Poly) %%Function%%)
(declare-fun Poly%fun%2. (%%Function%%) Poly)
(declare-fun %Poly%fun%2. (Poly) %%Function%%)
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
   (= x (%Poly%fun%2. (Poly%fun%2. x)))
   :pattern ((Poly%fun%2. x))
   :qid internal_crate__fun__2_box_axiom_definition
   :skolemid skolem_internal_crate__fun__2_box_axiom_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (x
    Poly
   )
  ) (!
   (=>
    (has_type x (TYPE%fun%2. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
    (= x (Poly%fun%2. (%Poly%fun%2. x)))
   )
   :pattern ((has_type x (TYPE%fun%2. T%0&. T%0& T%1&. T%1& T%2&. T%2&)))
   :qid internal_crate__fun__2_unbox_axiom_definition
   :skolemid skolem_internal_crate__fun__2_unbox_axiom_definition
)))
(declare-fun %%apply%%1 (%%Function%% Poly Poly) Poly)
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (x
    %%Function%%
   )
  ) (!
   (=>
    (forall ((T%0 Poly) (T%1 Poly)) (!
      (=>
       (and
        (has_type T%0 T%0&)
        (has_type T%1 T%1&)
       )
       (has_type (%%apply%%1 x T%0 T%1) T%2&)
      )
      :pattern ((has_type (%%apply%%1 x T%0 T%1) T%2&))
      :qid internal_crate__fun__2_constructor_inner_definition
      :skolemid skolem_internal_crate__fun__2_constructor_inner_definition
    ))
    (has_type (Poly%fun%2. (mk_fun x)) (TYPE%fun%2. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
   )
   :pattern ((has_type (Poly%fun%2. (mk_fun x)) (TYPE%fun%2. T%0&. T%0& T%1&. T%1& T%2&.
      T%2&
   )))
   :qid internal_crate__fun__2_constructor_definition
   :skolemid skolem_internal_crate__fun__2_constructor_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%0
    Poly
   ) (T%1 Poly) (x %%Function%%)
  ) (!
   (=>
    (and
     (has_type (Poly%fun%2. x) (TYPE%fun%2. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
     (has_type T%0 T%0&)
     (has_type T%1 T%1&)
    )
    (has_type (%%apply%%1 x T%0 T%1) T%2&)
   )
   :pattern ((%%apply%%1 x T%0 T%1) (has_type (Poly%fun%2. x) (TYPE%fun%2. T%0&. T%0& T%1&.
      T%1& T%2&. T%2&
   )))
   :qid internal_crate__fun__2_apply_definition
   :skolemid skolem_internal_crate__fun__2_apply_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (T%0
    Poly
   ) (T%1 Poly) (x %%Function%%)
  ) (!
   (=>
    (and
     (has_type (Poly%fun%2. x) (TYPE%fun%2. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
     (has_type T%0 T%0&)
     (has_type T%1 T%1&)
    )
    (height_lt (height (%%apply%%1 x T%0 T%1)) (height (fun_from_recursive_field (Poly%fun%2.
        (mk_fun x)
   )))))
   :pattern ((height (%%apply%%1 x T%0 T%1)) (has_type (Poly%fun%2. x) (TYPE%fun%2. T%0&.
      T%0& T%1&. T%1& T%2&. T%2&
   )))
   :qid internal_crate__fun__2_height_apply_definition
   :skolemid skolem_internal_crate__fun__2_height_apply_definition
)))
(assert
 (forall ((T%0&. Dcr) (T%0& Type) (T%1&. Dcr) (T%1& Type) (T%2&. Dcr) (T%2& Type) (deep
    Bool
   ) (x Poly) (y Poly)
  ) (!
   (=>
    (and
     (has_type x (TYPE%fun%2. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
     (has_type y (TYPE%fun%2. T%0&. T%0& T%1&. T%1& T%2&. T%2&))
     (forall ((T%0 Poly) (T%1 Poly)) (!
       (=>
        (and
         (has_type T%0 T%0&)
         (has_type T%1 T%1&)
        )
        (ext_eq deep T%2& (%%apply%%1 (%Poly%fun%2. x) T%0 T%1) (%%apply%%1 (%Poly%fun%2. y)
          T%0 T%1
       )))
       :pattern ((ext_eq deep T%2& (%%apply%%1 (%Poly%fun%2. x) T%0 T%1) (%%apply%%1 (%Poly%fun%2.
           y
          ) T%0 T%1
       )))
       :qid internal_crate__fun__2_inner_ext_equal_definition
       :skolemid skolem_internal_crate__fun__2_inner_ext_equal_definition
    )))
    (ext_eq deep (TYPE%fun%2. T%0&. T%0& T%1&. T%1& T%2&. T%2&) x y)
   )
   :pattern ((ext_eq deep (TYPE%fun%2. T%0&. T%0& T%1&. T%1& T%2&. T%2&) x y))
   :qid internal_crate__fun__2_ext_equal_definition
   :skolemid skolem_internal_crate__fun__2_ext_equal_definition
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

;; Function-Decl crate::vstd::set::Set::contains
(declare-fun vstd.set.impl&%0.contains.? (Dcr Type Poly Poly) Bool)

;; Function-Decl vstd::seq::Seq::index
(declare-fun vstd!seq.Seq.index.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::seq::Seq::spec_index
(declare-fun vstd.seq.impl&%0.spec_index.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::seq::Seq::empty
(declare-fun vstd!seq.Seq.empty.? (Dcr Type) Poly)

;; Function-Decl vstd::seq::Seq::push
(declare-fun vstd!seq.Seq.push.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::seq::Seq::add
(declare-fun vstd!seq.Seq.add.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::relations::reflexive
(declare-fun vstd.relations.reflexive.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::relations::antisymmetric
(declare-fun vstd.relations.antisymmetric.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::relations::transitive
(declare-fun vstd.relations.transitive.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::relations::strongly_connected
(declare-fun vstd.relations.strongly_connected.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::relations::total_ordering
(declare-fun vstd.relations.total_ordering.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::relations::sorted_by
(declare-fun vstd.relations.sorted_by.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::relations::injective
(declare-fun vstd.relations.injective.? (Dcr Type Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::relations::commutative
(declare-fun vstd.relations.commutative.? (Dcr Type Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::relations::associative
(declare-fun vstd.relations.associative.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::relations::irreflexive
(declare-fun vstd.relations.irreflexive.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::relations::asymmetric
(declare-fun vstd.relations.asymmetric.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::relations::symmetric
(declare-fun vstd.relations.symmetric.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::relations::connected
(declare-fun vstd.relations.connected.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::relations::strict_total_ordering
(declare-fun vstd.relations.strict_total_ordering.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::relations::pre_ordering
(declare-fun vstd.relations.pre_ordering.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::relations::partial_ordering
(declare-fun vstd.relations.partial_ordering.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::relations::equivalence_relation
(declare-fun vstd.relations.equivalence_relation.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::relations::is_least
(declare-fun vstd.relations.is_least.? (Dcr Type Poly Poly Poly) Bool)

;; Function-Decl crate::vstd::relations::is_minimal
(declare-fun vstd.relations.is_minimal.? (Dcr Type Poly Poly Poly) Bool)

;; Function-Decl crate::vstd::relations::is_greatest
(declare-fun vstd.relations.is_greatest.? (Dcr Type Poly Poly Poly) Bool)

;; Function-Decl crate::vstd::relations::is_maximal
(declare-fun vstd.relations.is_maximal.? (Dcr Type Poly Poly Poly) Bool)

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

;; Function-Axioms vstd::seq::Seq::empty
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (has_type (vstd!seq.Seq.empty.? A&. A&) (TYPE%vstd.seq.Seq. A&. A&))
   :pattern ((vstd!seq.Seq.empty.? A&. A&))
   :qid internal_vstd!seq.Seq.empty.?_pre_post_definition
   :skolemid skolem_internal_vstd!seq.Seq.empty.?_pre_post_definition
)))

;; Broadcast crate::vstd::seq::axiom_seq_empty
(assert
 (=>
  (fuel_bool fuel%vstd.seq.axiom_seq_empty.)
  (forall ((A&. Dcr) (A& Type)) (!
    (= (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.empty.? A&. A&)) 0)
    :pattern ((vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.empty.? A&. A&)))
    :qid user_crate__vstd__seq__axiom_seq_empty_1
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_empty_1
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
    :qid user_crate__vstd__seq__axiom_seq_push_len_2
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_push_len_2
))))

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
    :qid user_crate__vstd__seq__axiom_seq_push_index_same_3
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_push_index_same_3
))))

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
    :qid user_crate__vstd__seq__axiom_seq_push_index_different_4
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_push_index_different_4
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
         :qid user_crate__vstd__seq__axiom_seq_ext_equal_5
         :skolemid skolem_user_crate__vstd__seq__axiom_seq_ext_equal_5
    )))))
    :pattern ((ext_eq false (TYPE%vstd.seq.Seq. A&. A&) s1! s2!))
    :qid user_crate__vstd__seq__axiom_seq_ext_equal_6
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_ext_equal_6
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
         :qid user_crate__vstd__seq__axiom_seq_ext_equal_deep_7
         :skolemid skolem_user_crate__vstd__seq__axiom_seq_ext_equal_deep_7
    )))))
    :pattern ((ext_eq true (TYPE%vstd.seq.Seq. A&. A&) s1! s2!))
    :qid user_crate__vstd__seq__axiom_seq_ext_equal_deep_8
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_ext_equal_deep_8
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
    :qid user_crate__vstd__seq__axiom_seq_add_len_9
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_add_len_9
))))

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
    :qid user_crate__vstd__seq__axiom_seq_add_index1_10
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_add_index1_10
))))

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
    :qid user_crate__vstd__seq__axiom_seq_add_index2_11
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_add_index2_11
))))

;; Function-Axioms crate::vstd::relations::reflexive
(assert
 (fuel_bool_default fuel%vstd.relations.reflexive.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.reflexive.)
  (forall ((T&. Dcr) (T& Type) (r! Poly)) (!
    (= (vstd.relations.reflexive.? T&. T& r!) (forall ((x$ Poly)) (!
       (=>
        (has_type x$ T&)
        (%B (%%apply%%1 (%Poly%fun%2. r!) x$ x$))
       )
       :pattern ((%%apply%%1 (%Poly%fun%2. r!) x$ x$))
       :qid user_crate__vstd__relations__reflexive_12
       :skolemid skolem_user_crate__vstd__relations__reflexive_12
    )))
    :pattern ((vstd.relations.reflexive.? T&. T& r!))
    :qid internal_vstd.relations.reflexive.?_definition
    :skolemid skolem_internal_vstd.relations.reflexive.?_definition
))))

;; Function-Axioms crate::vstd::relations::antisymmetric
(assert
 (fuel_bool_default fuel%vstd.relations.antisymmetric.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.antisymmetric.)
  (forall ((T&. Dcr) (T& Type) (r! Poly)) (!
    (= (vstd.relations.antisymmetric.? T&. T& r!) (forall ((x$ Poly) (y$ Poly)) (!
       (=>
        (and
         (has_type x$ T&)
         (has_type y$ T&)
        )
        (=>
         (and
          (%B (%%apply%%1 (%Poly%fun%2. r!) x$ y$))
          (%B (%%apply%%1 (%Poly%fun%2. r!) y$ x$))
         )
         (= x$ y$)
       ))
       :pattern ((%%apply%%1 (%Poly%fun%2. r!) x$ y$) (%%apply%%1 (%Poly%fun%2. r!) y$ x$))
       :qid user_crate__vstd__relations__antisymmetric_13
       :skolemid skolem_user_crate__vstd__relations__antisymmetric_13
    )))
    :pattern ((vstd.relations.antisymmetric.? T&. T& r!))
    :qid internal_vstd.relations.antisymmetric.?_definition
    :skolemid skolem_internal_vstd.relations.antisymmetric.?_definition
))))

;; Function-Axioms crate::vstd::relations::transitive
(assert
 (fuel_bool_default fuel%vstd.relations.transitive.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.transitive.)
  (forall ((T&. Dcr) (T& Type) (r! Poly)) (!
    (= (vstd.relations.transitive.? T&. T& r!) (forall ((x$ Poly) (y$ Poly) (z$ Poly))
      (!
       (=>
        (and
         (has_type x$ T&)
         (has_type y$ T&)
         (has_type z$ T&)
        )
        (=>
         (and
          (%B (%%apply%%1 (%Poly%fun%2. r!) x$ y$))
          (%B (%%apply%%1 (%Poly%fun%2. r!) y$ z$))
         )
         (%B (%%apply%%1 (%Poly%fun%2. r!) x$ z$))
       ))
       :pattern ((%%apply%%1 (%Poly%fun%2. r!) x$ y$) (%%apply%%1 (%Poly%fun%2. r!) y$ z$))
       :qid user_crate__vstd__relations__transitive_14
       :skolemid skolem_user_crate__vstd__relations__transitive_14
    )))
    :pattern ((vstd.relations.transitive.? T&. T& r!))
    :qid internal_vstd.relations.transitive.?_definition
    :skolemid skolem_internal_vstd.relations.transitive.?_definition
))))

;; Function-Axioms crate::vstd::relations::strongly_connected
(assert
 (fuel_bool_default fuel%vstd.relations.strongly_connected.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.strongly_connected.)
  (forall ((T&. Dcr) (T& Type) (r! Poly)) (!
    (= (vstd.relations.strongly_connected.? T&. T& r!) (forall ((x$ Poly) (y$ Poly)) (!
       (=>
        (and
         (has_type x$ T&)
         (has_type y$ T&)
        )
        (or
         (%B (%%apply%%1 (%Poly%fun%2. r!) x$ y$))
         (%B (%%apply%%1 (%Poly%fun%2. r!) y$ x$))
       ))
       :pattern ((%%apply%%1 (%Poly%fun%2. r!) x$ y$) (%%apply%%1 (%Poly%fun%2. r!) y$ x$))
       :qid user_crate__vstd__relations__strongly_connected_15
       :skolemid skolem_user_crate__vstd__relations__strongly_connected_15
    )))
    :pattern ((vstd.relations.strongly_connected.? T&. T& r!))
    :qid internal_vstd.relations.strongly_connected.?_definition
    :skolemid skolem_internal_vstd.relations.strongly_connected.?_definition
))))

;; Function-Axioms crate::vstd::relations::total_ordering
(assert
 (fuel_bool_default fuel%vstd.relations.total_ordering.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.total_ordering.)
  (forall ((T&. Dcr) (T& Type) (r! Poly)) (!
    (= (vstd.relations.total_ordering.? T&. T& r!) (and
      (and
       (and
        (vstd.relations.reflexive.? T&. T& r!)
        (vstd.relations.antisymmetric.? T&. T& r!)
       )
       (vstd.relations.transitive.? T&. T& r!)
      )
      (vstd.relations.strongly_connected.? T&. T& r!)
    ))
    :pattern ((vstd.relations.total_ordering.? T&. T& r!))
    :qid internal_vstd.relations.total_ordering.?_definition
    :skolemid skolem_internal_vstd.relations.total_ordering.?_definition
))))

;; Function-Axioms crate::vstd::relations::sorted_by
(assert
 (fuel_bool_default fuel%vstd.relations.sorted_by.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.sorted_by.)
  (forall ((T&. Dcr) (T& Type) (a! Poly) (less_than! Poly)) (!
    (= (vstd.relations.sorted_by.? T&. T& a! less_than!) (forall ((i$ Poly) (j$ Poly))
      (!
       (=>
        (and
         (has_type i$ INT)
         (has_type j$ INT)
        )
        (=>
         (and
          (and
           (<= 0 (%I i$))
           (< (%I i$) (%I j$))
          )
          (< (%I j$) (vstd!seq.Seq.len.? T&. T& a!))
         )
         (%B (%%apply%%1 (%Poly%fun%2. less_than!) (vstd!seq.Seq.index.? T&. T& a! i$) (vstd!seq.Seq.index.?
            T&. T& a! j$
       )))))
       :pattern ((%%apply%%1 (%Poly%fun%2. less_than!) (vstd!seq.Seq.index.? T&. T& a! i$)
         (vstd!seq.Seq.index.? T&. T& a! j$)
       ))
       :qid user_crate__vstd__relations__sorted_by_16
       :skolemid skolem_user_crate__vstd__relations__sorted_by_16
    )))
    :pattern ((vstd.relations.sorted_by.? T&. T& a! less_than!))
    :qid internal_vstd.relations.sorted_by.?_definition
    :skolemid skolem_internal_vstd.relations.sorted_by.?_definition
))))

;; Function-Axioms crate::vstd::relations::injective
(assert
 (fuel_bool_default fuel%vstd.relations.injective.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.injective.)
  (forall ((X&. Dcr) (X& Type) (Y&. Dcr) (Y& Type) (r! Poly)) (!
    (= (vstd.relations.injective.? X&. X& Y&. Y& r!) (forall ((x1$ Poly) (x2$ Poly)) (!
       (=>
        (and
         (has_type x1$ X&)
         (has_type x2$ X&)
        )
        (=>
         (= (%%apply%%0 (%Poly%fun%1. r!) x1$) (%%apply%%0 (%Poly%fun%1. r!) x2$))
         (= x1$ x2$)
       ))
       :pattern ((%%apply%%0 (%Poly%fun%1. r!) x1$) (%%apply%%0 (%Poly%fun%1. r!) x2$))
       :qid user_crate__vstd__relations__injective_17
       :skolemid skolem_user_crate__vstd__relations__injective_17
    )))
    :pattern ((vstd.relations.injective.? X&. X& Y&. Y& r!))
    :qid internal_vstd.relations.injective.?_definition
    :skolemid skolem_internal_vstd.relations.injective.?_definition
))))

;; Function-Axioms crate::vstd::relations::commutative
(assert
 (fuel_bool_default fuel%vstd.relations.commutative.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.commutative.)
  (forall ((T&. Dcr) (T& Type) (U&. Dcr) (U& Type) (r! Poly)) (!
    (= (vstd.relations.commutative.? T&. T& U&. U& r!) (forall ((x$ Poly) (y$ Poly)) (!
       (=>
        (and
         (has_type x$ T&)
         (has_type y$ T&)
        )
        (= (%%apply%%1 (%Poly%fun%2. r!) x$ y$) (%%apply%%1 (%Poly%fun%2. r!) y$ x$))
       )
       :pattern ((%%apply%%1 (%Poly%fun%2. r!) x$ y$) (%%apply%%1 (%Poly%fun%2. r!) y$ x$))
       :qid user_crate__vstd__relations__commutative_18
       :skolemid skolem_user_crate__vstd__relations__commutative_18
    )))
    :pattern ((vstd.relations.commutative.? T&. T& U&. U& r!))
    :qid internal_vstd.relations.commutative.?_definition
    :skolemid skolem_internal_vstd.relations.commutative.?_definition
))))

;; Function-Axioms crate::vstd::relations::associative
(assert
 (fuel_bool_default fuel%vstd.relations.associative.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.associative.)
  (forall ((T&. Dcr) (T& Type) (r! Poly)) (!
    (= (vstd.relations.associative.? T&. T& r!) (forall ((x$ Poly) (y$ Poly) (z$ Poly))
      (!
       (=>
        (and
         (has_type x$ T&)
         (has_type y$ T&)
         (has_type z$ T&)
        )
        (= (%%apply%%1 (%Poly%fun%2. r!) x$ (%%apply%%1 (%Poly%fun%2. r!) y$ z$)) (%%apply%%1
          (%Poly%fun%2. r!) (%%apply%%1 (%Poly%fun%2. r!) x$ y$) z$
       )))
       :pattern ((%%apply%%1 (%Poly%fun%2. r!) x$ (%%apply%%1 (%Poly%fun%2. r!) y$ z$)) (
         %%apply%%1 (%Poly%fun%2. r!) (%%apply%%1 (%Poly%fun%2. r!) x$ y$) z$
       ))
       :qid user_crate__vstd__relations__associative_19
       :skolemid skolem_user_crate__vstd__relations__associative_19
    )))
    :pattern ((vstd.relations.associative.? T&. T& r!))
    :qid internal_vstd.relations.associative.?_definition
    :skolemid skolem_internal_vstd.relations.associative.?_definition
))))

;; Function-Axioms crate::vstd::relations::irreflexive
(assert
 (fuel_bool_default fuel%vstd.relations.irreflexive.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.irreflexive.)
  (forall ((T&. Dcr) (T& Type) (r! Poly)) (!
    (= (vstd.relations.irreflexive.? T&. T& r!) (forall ((x$ Poly)) (!
       (=>
        (has_type x$ T&)
        (= (%B (%%apply%%1 (%Poly%fun%2. r!) x$ x$)) false)
       )
       :pattern ((%%apply%%1 (%Poly%fun%2. r!) x$ x$))
       :qid user_crate__vstd__relations__irreflexive_20
       :skolemid skolem_user_crate__vstd__relations__irreflexive_20
    )))
    :pattern ((vstd.relations.irreflexive.? T&. T& r!))
    :qid internal_vstd.relations.irreflexive.?_definition
    :skolemid skolem_internal_vstd.relations.irreflexive.?_definition
))))

;; Function-Axioms crate::vstd::relations::asymmetric
(assert
 (fuel_bool_default fuel%vstd.relations.asymmetric.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.asymmetric.)
  (forall ((T&. Dcr) (T& Type) (r! Poly)) (!
    (= (vstd.relations.asymmetric.? T&. T& r!) (forall ((x$ Poly) (y$ Poly)) (!
       (=>
        (and
         (has_type x$ T&)
         (has_type y$ T&)
        )
        (=>
         (%B (%%apply%%1 (%Poly%fun%2. r!) x$ y$))
         (= (%B (%%apply%%1 (%Poly%fun%2. r!) y$ x$)) false)
       ))
       :pattern ((%%apply%%1 (%Poly%fun%2. r!) x$ y$) (%%apply%%1 (%Poly%fun%2. r!) y$ x$))
       :qid user_crate__vstd__relations__asymmetric_21
       :skolemid skolem_user_crate__vstd__relations__asymmetric_21
    )))
    :pattern ((vstd.relations.asymmetric.? T&. T& r!))
    :qid internal_vstd.relations.asymmetric.?_definition
    :skolemid skolem_internal_vstd.relations.asymmetric.?_definition
))))

;; Function-Axioms crate::vstd::relations::symmetric
(assert
 (fuel_bool_default fuel%vstd.relations.symmetric.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.symmetric.)
  (forall ((T&. Dcr) (T& Type) (r! Poly)) (!
    (= (vstd.relations.symmetric.? T&. T& r!) (forall ((x$ Poly) (y$ Poly)) (!
       (=>
        (and
         (has_type x$ T&)
         (has_type y$ T&)
        )
        (= (%%apply%%1 (%Poly%fun%2. r!) x$ y$) (%%apply%%1 (%Poly%fun%2. r!) y$ x$))
       )
       :pattern ((%%apply%%1 (%Poly%fun%2. r!) x$ y$) (%%apply%%1 (%Poly%fun%2. r!) y$ x$))
       :qid user_crate__vstd__relations__symmetric_22
       :skolemid skolem_user_crate__vstd__relations__symmetric_22
    )))
    :pattern ((vstd.relations.symmetric.? T&. T& r!))
    :qid internal_vstd.relations.symmetric.?_definition
    :skolemid skolem_internal_vstd.relations.symmetric.?_definition
))))

;; Function-Axioms crate::vstd::relations::connected
(assert
 (fuel_bool_default fuel%vstd.relations.connected.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.connected.)
  (forall ((T&. Dcr) (T& Type) (r! Poly)) (!
    (= (vstd.relations.connected.? T&. T& r!) (forall ((x$ Poly) (y$ Poly)) (!
       (=>
        (and
         (has_type x$ T&)
         (has_type y$ T&)
        )
        (=>
         (not (= x$ y$))
         (or
          (%B (%%apply%%1 (%Poly%fun%2. r!) x$ y$))
          (%B (%%apply%%1 (%Poly%fun%2. r!) y$ x$))
       )))
       :pattern ((%%apply%%1 (%Poly%fun%2. r!) x$ y$) (%%apply%%1 (%Poly%fun%2. r!) y$ x$))
       :qid user_crate__vstd__relations__connected_23
       :skolemid skolem_user_crate__vstd__relations__connected_23
    )))
    :pattern ((vstd.relations.connected.? T&. T& r!))
    :qid internal_vstd.relations.connected.?_definition
    :skolemid skolem_internal_vstd.relations.connected.?_definition
))))

;; Function-Axioms crate::vstd::relations::strict_total_ordering
(assert
 (fuel_bool_default fuel%vstd.relations.strict_total_ordering.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.strict_total_ordering.)
  (forall ((T&. Dcr) (T& Type) (r! Poly)) (!
    (= (vstd.relations.strict_total_ordering.? T&. T& r!) (and
      (and
       (and
        (vstd.relations.irreflexive.? T&. T& r!)
        (vstd.relations.antisymmetric.? T&. T& r!)
       )
       (vstd.relations.transitive.? T&. T& r!)
      )
      (vstd.relations.connected.? T&. T& r!)
    ))
    :pattern ((vstd.relations.strict_total_ordering.? T&. T& r!))
    :qid internal_vstd.relations.strict_total_ordering.?_definition
    :skolemid skolem_internal_vstd.relations.strict_total_ordering.?_definition
))))

;; Function-Axioms crate::vstd::relations::pre_ordering
(assert
 (fuel_bool_default fuel%vstd.relations.pre_ordering.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.pre_ordering.)
  (forall ((T&. Dcr) (T& Type) (r! Poly)) (!
    (= (vstd.relations.pre_ordering.? T&. T& r!) (and
      (vstd.relations.reflexive.? T&. T& r!)
      (vstd.relations.transitive.? T&. T& r!)
    ))
    :pattern ((vstd.relations.pre_ordering.? T&. T& r!))
    :qid internal_vstd.relations.pre_ordering.?_definition
    :skolemid skolem_internal_vstd.relations.pre_ordering.?_definition
))))

;; Function-Axioms crate::vstd::relations::partial_ordering
(assert
 (fuel_bool_default fuel%vstd.relations.partial_ordering.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.partial_ordering.)
  (forall ((T&. Dcr) (T& Type) (r! Poly)) (!
    (= (vstd.relations.partial_ordering.? T&. T& r!) (and
      (and
       (vstd.relations.reflexive.? T&. T& r!)
       (vstd.relations.transitive.? T&. T& r!)
      )
      (vstd.relations.antisymmetric.? T&. T& r!)
    ))
    :pattern ((vstd.relations.partial_ordering.? T&. T& r!))
    :qid internal_vstd.relations.partial_ordering.?_definition
    :skolemid skolem_internal_vstd.relations.partial_ordering.?_definition
))))

;; Function-Axioms crate::vstd::relations::equivalence_relation
(assert
 (fuel_bool_default fuel%vstd.relations.equivalence_relation.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.equivalence_relation.)
  (forall ((T&. Dcr) (T& Type) (r! Poly)) (!
    (= (vstd.relations.equivalence_relation.? T&. T& r!) (and
      (and
       (vstd.relations.reflexive.? T&. T& r!)
       (vstd.relations.symmetric.? T&. T& r!)
      )
      (vstd.relations.transitive.? T&. T& r!)
    ))
    :pattern ((vstd.relations.equivalence_relation.? T&. T& r!))
    :qid internal_vstd.relations.equivalence_relation.?_definition
    :skolemid skolem_internal_vstd.relations.equivalence_relation.?_definition
))))

;; Function-Axioms crate::vstd::relations::is_least
(assert
 (fuel_bool_default fuel%vstd.relations.is_least.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.is_least.)
  (forall ((T&. Dcr) (T& Type) (leq! Poly) (min! Poly) (s! Poly)) (!
    (= (vstd.relations.is_least.? T&. T& leq! min! s!) (and
      (vstd.set.impl&%0.contains.? T&. T& s! min!)
      (forall ((x$ Poly)) (!
        (=>
         (has_type x$ T&)
         (=>
          (vstd.set.impl&%0.contains.? T&. T& s! x$)
          (%B (%%apply%%1 (%Poly%fun%2. leq!) min! x$))
        ))
        :pattern ((%%apply%%1 (%Poly%fun%2. leq!) min! x$))
        :qid user_crate__vstd__relations__is_least_24
        :skolemid skolem_user_crate__vstd__relations__is_least_24
    ))))
    :pattern ((vstd.relations.is_least.? T&. T& leq! min! s!))
    :qid internal_vstd.relations.is_least.?_definition
    :skolemid skolem_internal_vstd.relations.is_least.?_definition
))))

;; Function-Axioms crate::vstd::relations::is_minimal
(assert
 (fuel_bool_default fuel%vstd.relations.is_minimal.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.is_minimal.)
  (forall ((T&. Dcr) (T& Type) (leq! Poly) (min! Poly) (s! Poly)) (!
    (= (vstd.relations.is_minimal.? T&. T& leq! min! s!) (and
      (vstd.set.impl&%0.contains.? T&. T& s! min!)
      (forall ((x$ Poly)) (!
        (=>
         (has_type x$ T&)
         (=>
          (and
           (vstd.set.impl&%0.contains.? T&. T& s! x$)
           (%B (%%apply%%1 (%Poly%fun%2. leq!) x$ min!))
          )
          (%B (%%apply%%1 (%Poly%fun%2. leq!) min! x$))
        ))
        :pattern ((%%apply%%1 (%Poly%fun%2. leq!) x$ min!) (%%apply%%1 (%Poly%fun%2. leq!)
          min! x$
        ))
        :qid user_crate__vstd__relations__is_minimal_25
        :skolemid skolem_user_crate__vstd__relations__is_minimal_25
    ))))
    :pattern ((vstd.relations.is_minimal.? T&. T& leq! min! s!))
    :qid internal_vstd.relations.is_minimal.?_definition
    :skolemid skolem_internal_vstd.relations.is_minimal.?_definition
))))

;; Function-Axioms crate::vstd::relations::is_greatest
(assert
 (fuel_bool_default fuel%vstd.relations.is_greatest.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.is_greatest.)
  (forall ((T&. Dcr) (T& Type) (leq! Poly) (max! Poly) (s! Poly)) (!
    (= (vstd.relations.is_greatest.? T&. T& leq! max! s!) (and
      (vstd.set.impl&%0.contains.? T&. T& s! max!)
      (forall ((x$ Poly)) (!
        (=>
         (has_type x$ T&)
         (=>
          (vstd.set.impl&%0.contains.? T&. T& s! x$)
          (%B (%%apply%%1 (%Poly%fun%2. leq!) x$ max!))
        ))
        :pattern ((%%apply%%1 (%Poly%fun%2. leq!) x$ max!))
        :qid user_crate__vstd__relations__is_greatest_26
        :skolemid skolem_user_crate__vstd__relations__is_greatest_26
    ))))
    :pattern ((vstd.relations.is_greatest.? T&. T& leq! max! s!))
    :qid internal_vstd.relations.is_greatest.?_definition
    :skolemid skolem_internal_vstd.relations.is_greatest.?_definition
))))

;; Function-Axioms crate::vstd::relations::is_maximal
(assert
 (fuel_bool_default fuel%vstd.relations.is_maximal.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.relations.is_maximal.)
  (forall ((T&. Dcr) (T& Type) (leq! Poly) (max! Poly) (s! Poly)) (!
    (= (vstd.relations.is_maximal.? T&. T& leq! max! s!) (and
      (vstd.set.impl&%0.contains.? T&. T& s! max!)
      (forall ((x$ Poly)) (!
        (=>
         (has_type x$ T&)
         (=>
          (and
           (vstd.set.impl&%0.contains.? T&. T& s! x$)
           (%B (%%apply%%1 (%Poly%fun%2. leq!) max! x$))
          )
          (%B (%%apply%%1 (%Poly%fun%2. leq!) x$ max!))
        ))
        :pattern ((%%apply%%1 (%Poly%fun%2. leq!) max! x$) (%%apply%%1 (%Poly%fun%2. leq!)
          x$ max!
        ))
        :qid user_crate__vstd__relations__is_maximal_27
        :skolemid skolem_user_crate__vstd__relations__is_maximal_27
    ))))
    :pattern ((vstd.relations.is_maximal.? T&. T& leq! max! s!))
    :qid internal_vstd.relations.is_maximal.?_definition
    :skolemid skolem_internal_vstd.relations.is_maximal.?_definition
))))

;; Function-Specs crate::vstd::relations::lemma_new_first_element_still_sorted_by
(declare-fun req%vstd.relations.lemma_new_first_element_still_sorted_by. (Dcr Type
  Poly Poly %%Function%%
 ) Bool
)
(declare-const %%global_location_label%%2 Bool)
(declare-const %%global_location_label%%3 Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (x! Poly) (s! Poly) (less_than! %%Function%%)) (!
   (= (req%vstd.relations.lemma_new_first_element_still_sorted_by. T&. T& x! s! less_than!)
    (and
     (=>
      %%global_location_label%%2
      (vstd.relations.sorted_by.? T&. T& s! (Poly%fun%2. less_than!))
     )
     (=>
      %%global_location_label%%3
      (or
       (= (vstd!seq.Seq.len.? T&. T& s!) 0)
       (%B (%%apply%%1 less_than! x! (vstd!seq.Seq.index.? T&. T& s! (I 0))))
     ))
     (=>
      %%global_location_label%%4
      (vstd.relations.total_ordering.? T&. T& (Poly%fun%2. less_than!))
   )))
   :pattern ((req%vstd.relations.lemma_new_first_element_still_sorted_by. T&. T& x! s!
     less_than!
   ))
   :qid internal_req__vstd.relations.lemma_new_first_element_still_sorted_by._definition
   :skolemid skolem_internal_req__vstd.relations.lemma_new_first_element_still_sorted_by._definition
)))
(declare-fun ens%vstd.relations.lemma_new_first_element_still_sorted_by. (Dcr Type
  Poly Poly %%Function%%
 ) Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (x! Poly) (s! Poly) (less_than! %%Function%%)) (!
   (= (ens%vstd.relations.lemma_new_first_element_still_sorted_by. T&. T& x! s! less_than!)
    (vstd.relations.sorted_by.? T&. T& (vstd!seq.Seq.add.? T&. T& (vstd!seq.Seq.push.? T&.
       T& (vstd!seq.Seq.empty.? T&. T&) x!
      ) s!
     ) (Poly%fun%2. less_than!)
   ))
   :pattern ((ens%vstd.relations.lemma_new_first_element_still_sorted_by. T&. T& x! s!
     less_than!
   ))
   :qid internal_ens__vstd.relations.lemma_new_first_element_still_sorted_by._definition
   :skolemid skolem_internal_ens__vstd.relations.lemma_new_first_element_still_sorted_by._definition
)))

;; Function-Def crate::vstd::relations::lemma_new_first_element_still_sorted_by
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/relations.rs:120:1: 124:2 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const x! Poly)
 (declare-const s! Poly)
 (declare-const less_than! %%Function%%)
 (declare-const index@ Poly)
 (declare-const tmp%1 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type x! T&)
 )
 (assert
  (has_type s! (TYPE%vstd.seq.Seq. T&. T&))
 )
 (assert
  (has_type (Poly%fun%2. less_than!) (TYPE%fun%2. T&. T& T&. T& $ BOOL))
 )
 (assert
  (vstd.relations.sorted_by.? T&. T& s! (Poly%fun%2. less_than!))
 )
 (assert
  (or
   (= (vstd!seq.Seq.len.? T&. T& s!) 0)
   (%B (%%apply%%1 less_than! x! (vstd!seq.Seq.index.? T&. T& s! (I 0))))
 ))
 (assert
  (vstd.relations.total_ordering.? T&. T& (Poly%fun%2. less_than!))
 )
 (declare-const %%switch_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (fuel_bool fuel%vstd.seq.group_seq_axioms.)
    (or
     (and
      (=>
       (> (vstd!seq.Seq.len.? T&. T& s!) 1)
       (and
        (=>
         (has_type index@ INT)
         (=>
          (and
           (< 0 (%I index@))
           (< (%I index@) (vstd!seq.Seq.len.? T&. T& s!))
          )
          (=>
           (= tmp%1 (%B (%%apply%%1 less_than! (vstd!seq.Seq.index.? T&. T& s! (I 0)) (vstd!seq.Seq.index.?
               T&. T& s! index@
           ))))
           (and
            (=>
             %%location_label%%0
             tmp%1
            )
            (=>
             tmp%1
             (=>
              %%location_label%%1
              (%B (%%apply%%1 less_than! x! (vstd!seq.Seq.index.? T&. T& s! index@)))
        ))))))
        (=>
         (forall ((index$ Poly)) (!
           (=>
            (has_type index$ INT)
            (=>
             (and
              (< 0 (%I index$))
              (< (%I index$) (vstd!seq.Seq.len.? T&. T& s!))
             )
             (%B (%%apply%%1 less_than! x! (vstd!seq.Seq.index.? T&. T& s! index$)))
           ))
           :pattern ((%%apply%%1 less_than! x! (vstd!seq.Seq.index.? T&. T& s! index$)))
           :qid user_crate__vstd__relations__lemma_new_first_element_still_sorted_by_28
           :skolemid skolem_user_crate__vstd__relations__lemma_new_first_element_still_sorted_by_28
         ))
         %%switch_label%%0
      )))
      (=>
       (not (> (vstd!seq.Seq.len.? T&. T& s!) 1))
       %%switch_label%%0
     ))
     (and
      (not %%switch_label%%0)
      (=>
       %%location_label%%2
       (vstd.relations.sorted_by.? T&. T& (vstd!seq.Seq.add.? T&. T& (vstd!seq.Seq.push.? T&.
          T& (vstd!seq.Seq.empty.? T&. T&) x!
         ) s!
        ) (Poly%fun%2. less_than!)
 )))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
