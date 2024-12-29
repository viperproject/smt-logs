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

;; MODULE 'module vstd::seq_lib'
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/seq_lib.rs:1053:13: 1053:19 (#0)

;; query spun off because: nonlinear

;; Fuel
(declare-const fuel%vstd.std_specs.option.impl&%0.is_Some. FuelId)
(declare-const fuel%vstd.std_specs.option.impl&%0.get_Some_0. FuelId)
(declare-const fuel%vstd.std_specs.option.spec_unwrap. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.insert. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.remove. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.subset_of. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.contains. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_empty. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_singleton. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_singleton_different. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_add. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_sub. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_ext_equal. FuelId)
(declare-const fuel%vstd.multiset.axiom_multiset_ext_equal_deep. FuelId)
(declare-const fuel%vstd.multiset.axiom_len_empty. FuelId)
(declare-const fuel%vstd.multiset.axiom_len_singleton. FuelId)
(declare-const fuel%vstd.multiset.axiom_len_add. FuelId)
(declare-const fuel%vstd.multiset.axiom_len_sub. FuelId)
(declare-const fuel%vstd.multiset.axiom_count_le_len. FuelId)
(declare-const fuel%vstd.seq.impl&%0.spec_index. FuelId)
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
(declare-const fuel%vstd.seq_lib.impl&%0.map. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.map_values. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.is_prefix_of. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.is_suffix_of. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.sort_by. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.filter. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.filter_lemma. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.filter_distributes_over_add. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.add_empty_left. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.add_empty_right. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.push_distributes_over_add. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.max_via. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.min_via. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.contains. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.index_of. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.index_of_first. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.first_index_helper. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.index_of_last. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.last_index_helper. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.drop_last. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.drop_first. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.no_duplicates. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.disjoint. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.to_set. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.to_multiset. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.insert. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.remove. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.remove_value. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.reverse. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.zip_with. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.fold_left. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.fold_left_alt. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.fold_right. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%0.fold_right_alt. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%1.unzip. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%2.flatten. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%2.flatten_alt. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%3.max. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%3.min. FuelId)
(declare-const fuel%vstd.seq_lib.impl&%3.sort. FuelId)
(declare-const fuel%vstd.seq_lib.merge_sorted_with. FuelId)
(declare-const fuel%vstd.seq_lib.seq_to_set_rec. FuelId)
(declare-const fuel%vstd.seq_lib.seq_to_set_is_finite. FuelId)
(declare-const fuel%vstd.seq_lib.commutative_foldr. FuelId)
(declare-const fuel%vstd.seq_lib.check_argument_is_seq. FuelId)
(declare-const fuel%vstd.set.impl&%0.spec_add. FuelId)
(declare-const fuel%vstd.set.impl&%0.disjoint. FuelId)
(declare-const fuel%vstd.set.axiom_set_empty. FuelId)
(declare-const fuel%vstd.set.axiom_set_new. FuelId)
(declare-const fuel%vstd.set.axiom_set_insert_same. FuelId)
(declare-const fuel%vstd.set.axiom_set_insert_different. FuelId)
(declare-const fuel%vstd.set.axiom_set_remove_same. FuelId)
(declare-const fuel%vstd.set.axiom_set_remove_insert. FuelId)
(declare-const fuel%vstd.set.axiom_set_remove_different. FuelId)
(declare-const fuel%vstd.set.axiom_set_union. FuelId)
(declare-const fuel%vstd.set.axiom_set_intersect. FuelId)
(declare-const fuel%vstd.set.axiom_set_difference. FuelId)
(declare-const fuel%vstd.set.axiom_set_ext_equal. FuelId)
(declare-const fuel%vstd.set.axiom_set_ext_equal_deep. FuelId)
(declare-const fuel%vstd.set.axiom_set_empty_finite. FuelId)
(declare-const fuel%vstd.set.axiom_set_insert_finite. FuelId)
(declare-const fuel%vstd.set.axiom_set_remove_finite. FuelId)
(declare-const fuel%vstd.set.axiom_set_union_finite. FuelId)
(declare-const fuel%vstd.set.axiom_set_intersect_finite. FuelId)
(declare-const fuel%vstd.set.axiom_set_difference_finite. FuelId)
(declare-const fuel%vstd.set.axiom_set_empty_len. FuelId)
(declare-const fuel%vstd.set.axiom_set_insert_len. FuelId)
(declare-const fuel%vstd.set.axiom_set_remove_len. FuelId)
(declare-const fuel%vstd.set.axiom_set_contains_len. FuelId)
(declare-const fuel%vstd.relations.reflexive. FuelId)
(declare-const fuel%vstd.relations.antisymmetric. FuelId)
(declare-const fuel%vstd.relations.strongly_connected. FuelId)
(declare-const fuel%vstd.relations.transitive. FuelId)
(declare-const fuel%vstd.relations.total_ordering. FuelId)
(declare-const fuel%vstd.relations.sorted_by. FuelId)
(declare-const fuel%vstd.multiset.group_multiset_axioms. FuelId)
(declare-const fuel%vstd.seq.group_seq_axioms. FuelId)
(declare-const fuel%vstd.set.group_set_axioms. FuelId)
(assert
 (distinct fuel%vstd.std_specs.option.impl&%0.is_Some. fuel%vstd.std_specs.option.impl&%0.get_Some_0.
  fuel%vstd.std_specs.option.spec_unwrap. fuel%vstd.multiset.impl&%0.insert. fuel%vstd.multiset.impl&%0.remove.
  fuel%vstd.multiset.impl&%0.subset_of. fuel%vstd.multiset.impl&%0.contains. fuel%vstd.multiset.axiom_multiset_empty.
  fuel%vstd.multiset.axiom_multiset_singleton. fuel%vstd.multiset.axiom_multiset_singleton_different.
  fuel%vstd.multiset.axiom_multiset_add. fuel%vstd.multiset.axiom_multiset_sub. fuel%vstd.multiset.axiom_multiset_ext_equal.
  fuel%vstd.multiset.axiom_multiset_ext_equal_deep. fuel%vstd.multiset.axiom_len_empty.
  fuel%vstd.multiset.axiom_len_singleton. fuel%vstd.multiset.axiom_len_add. fuel%vstd.multiset.axiom_len_sub.
  fuel%vstd.multiset.axiom_count_le_len. fuel%vstd.seq.impl&%0.spec_index. fuel%vstd.seq.impl&%0.take.
  fuel%vstd.seq.impl&%0.skip. fuel%vstd.seq.impl&%0.spec_add. fuel%vstd!seq.Seq.last.
  fuel%vstd.seq.impl&%0.first. fuel%vstd.seq.axiom_seq_index_decreases. fuel%vstd.seq.axiom_seq_subrange_decreases.
  fuel%vstd.seq.axiom_seq_empty. fuel%vstd.seq.axiom_seq_new_len. fuel%vstd.seq.axiom_seq_new_index.
  fuel%vstd.seq.axiom_seq_push_len. fuel%vstd.seq.axiom_seq_push_index_same. fuel%vstd.seq.axiom_seq_push_index_different.
  fuel%vstd.seq.axiom_seq_update_len. fuel%vstd.seq.axiom_seq_update_same. fuel%vstd.seq.axiom_seq_update_different.
  fuel%vstd.seq.axiom_seq_ext_equal. fuel%vstd.seq.axiom_seq_ext_equal_deep. fuel%vstd.seq.axiom_seq_subrange_len.
  fuel%vstd.seq.axiom_seq_subrange_index. fuel%vstd.seq.axiom_seq_add_len. fuel%vstd.seq.axiom_seq_add_index1.
  fuel%vstd.seq.axiom_seq_add_index2. fuel%vstd.seq_lib.impl&%0.map. fuel%vstd.seq_lib.impl&%0.map_values.
  fuel%vstd.seq_lib.impl&%0.is_prefix_of. fuel%vstd.seq_lib.impl&%0.is_suffix_of. fuel%vstd.seq_lib.impl&%0.sort_by.
  fuel%vstd.seq_lib.impl&%0.filter. fuel%vstd.seq_lib.impl&%0.filter_lemma. fuel%vstd.seq_lib.impl&%0.filter_distributes_over_add.
  fuel%vstd.seq_lib.impl&%0.add_empty_left. fuel%vstd.seq_lib.impl&%0.add_empty_right.
  fuel%vstd.seq_lib.impl&%0.push_distributes_over_add. fuel%vstd.seq_lib.impl&%0.max_via.
  fuel%vstd.seq_lib.impl&%0.min_via. fuel%vstd.seq_lib.impl&%0.contains. fuel%vstd.seq_lib.impl&%0.index_of.
  fuel%vstd.seq_lib.impl&%0.index_of_first. fuel%vstd.seq_lib.impl&%0.first_index_helper.
  fuel%vstd.seq_lib.impl&%0.index_of_last. fuel%vstd.seq_lib.impl&%0.last_index_helper.
  fuel%vstd.seq_lib.impl&%0.drop_last. fuel%vstd.seq_lib.impl&%0.drop_first. fuel%vstd.seq_lib.impl&%0.no_duplicates.
  fuel%vstd.seq_lib.impl&%0.disjoint. fuel%vstd.seq_lib.impl&%0.to_set. fuel%vstd.seq_lib.impl&%0.to_multiset.
  fuel%vstd.seq_lib.impl&%0.insert. fuel%vstd.seq_lib.impl&%0.remove. fuel%vstd.seq_lib.impl&%0.remove_value.
  fuel%vstd.seq_lib.impl&%0.reverse. fuel%vstd.seq_lib.impl&%0.zip_with. fuel%vstd.seq_lib.impl&%0.fold_left.
  fuel%vstd.seq_lib.impl&%0.fold_left_alt. fuel%vstd.seq_lib.impl&%0.fold_right. fuel%vstd.seq_lib.impl&%0.fold_right_alt.
  fuel%vstd.seq_lib.impl&%1.unzip. fuel%vstd.seq_lib.impl&%2.flatten. fuel%vstd.seq_lib.impl&%2.flatten_alt.
  fuel%vstd.seq_lib.impl&%3.max. fuel%vstd.seq_lib.impl&%3.min. fuel%vstd.seq_lib.impl&%3.sort.
  fuel%vstd.seq_lib.merge_sorted_with. fuel%vstd.seq_lib.seq_to_set_rec. fuel%vstd.seq_lib.seq_to_set_is_finite.
  fuel%vstd.seq_lib.commutative_foldr. fuel%vstd.seq_lib.check_argument_is_seq. fuel%vstd.set.impl&%0.spec_add.
  fuel%vstd.set.impl&%0.disjoint. fuel%vstd.set.axiom_set_empty. fuel%vstd.set.axiom_set_new.
  fuel%vstd.set.axiom_set_insert_same. fuel%vstd.set.axiom_set_insert_different. fuel%vstd.set.axiom_set_remove_same.
  fuel%vstd.set.axiom_set_remove_insert. fuel%vstd.set.axiom_set_remove_different.
  fuel%vstd.set.axiom_set_union. fuel%vstd.set.axiom_set_intersect. fuel%vstd.set.axiom_set_difference.
  fuel%vstd.set.axiom_set_ext_equal. fuel%vstd.set.axiom_set_ext_equal_deep. fuel%vstd.set.axiom_set_empty_finite.
  fuel%vstd.set.axiom_set_insert_finite. fuel%vstd.set.axiom_set_remove_finite. fuel%vstd.set.axiom_set_union_finite.
  fuel%vstd.set.axiom_set_intersect_finite. fuel%vstd.set.axiom_set_difference_finite.
  fuel%vstd.set.axiom_set_empty_len. fuel%vstd.set.axiom_set_insert_len. fuel%vstd.set.axiom_set_remove_len.
  fuel%vstd.set.axiom_set_contains_len. fuel%vstd.relations.reflexive. fuel%vstd.relations.antisymmetric.
  fuel%vstd.relations.strongly_connected. fuel%vstd.relations.transitive. fuel%vstd.relations.total_ordering.
  fuel%vstd.relations.sorted_by. fuel%vstd.multiset.group_multiset_axioms. fuel%vstd.seq.group_seq_axioms.
  fuel%vstd.set.group_set_axioms.
))
(assert
 (=>
  (fuel_bool_default fuel%vstd.multiset.group_multiset_axioms.)
  (and
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_empty.)
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_singleton.)
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_singleton_different.)
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_add.)
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_sub.)
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_ext_equal.)
   (fuel_bool_default fuel%vstd.multiset.axiom_multiset_ext_equal_deep.)
   (fuel_bool_default fuel%vstd.multiset.axiom_len_empty.)
   (fuel_bool_default fuel%vstd.multiset.axiom_len_singleton.)
   (fuel_bool_default fuel%vstd.multiset.axiom_len_add.)
   (fuel_bool_default fuel%vstd.multiset.axiom_len_sub.)
   (fuel_bool_default fuel%vstd.multiset.axiom_count_le_len.)
)))
(assert
 (=>
  (fuel_bool_default fuel%vstd.seq.group_seq_axioms.)
  (and
   (fuel_bool_default fuel%vstd.seq.axiom_seq_index_decreases.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_subrange_decreases.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_empty.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_new_len.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_new_index.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_push_len.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_push_index_same.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_push_index_different.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_update_len.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_update_same.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_update_different.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_ext_equal.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_ext_equal_deep.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_subrange_len.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_subrange_index.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_add_len.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_add_index1.)
   (fuel_bool_default fuel%vstd.seq.axiom_seq_add_index2.)
)))
(assert
 (=>
  (fuel_bool_default fuel%vstd.set.group_set_axioms.)
  (and
   (fuel_bool_default fuel%vstd.set.axiom_set_empty.)
   (fuel_bool_default fuel%vstd.set.axiom_set_new.)
   (fuel_bool_default fuel%vstd.set.axiom_set_insert_same.)
   (fuel_bool_default fuel%vstd.set.axiom_set_insert_different.)
   (fuel_bool_default fuel%vstd.set.axiom_set_remove_same.)
   (fuel_bool_default fuel%vstd.set.axiom_set_remove_insert.)
   (fuel_bool_default fuel%vstd.set.axiom_set_remove_different.)
   (fuel_bool_default fuel%vstd.set.axiom_set_union.)
   (fuel_bool_default fuel%vstd.set.axiom_set_intersect.)
   (fuel_bool_default fuel%vstd.set.axiom_set_difference.)
   (fuel_bool_default fuel%vstd.set.axiom_set_ext_equal.)
   (fuel_bool_default fuel%vstd.set.axiom_set_ext_equal_deep.)
   (fuel_bool_default fuel%vstd.set.axiom_set_empty_finite.)
   (fuel_bool_default fuel%vstd.set.axiom_set_insert_finite.)
   (fuel_bool_default fuel%vstd.set.axiom_set_remove_finite.)
   (fuel_bool_default fuel%vstd.set.axiom_set_union_finite.)
   (fuel_bool_default fuel%vstd.set.axiom_set_intersect_finite.)
   (fuel_bool_default fuel%vstd.set.axiom_set_difference_finite.)
   (fuel_bool_default fuel%vstd.set.axiom_set_empty_len.)
   (fuel_bool_default fuel%vstd.set.axiom_set_insert_len.)
   (fuel_bool_default fuel%vstd.set.axiom_set_remove_len.)
   (fuel_bool_default fuel%vstd.set.axiom_set_contains_len.)
)))
(assert
 (fuel_bool_default fuel%vstd.seq.group_seq_axioms.)
)

;; Datatypes
(declare-sort vstd.multiset.Multiset<int.>. 0)
(declare-sort vstd.seq.Seq<int.>. 0)
(declare-datatypes ((core!option.Option. 0) (tuple%0. 0) (tuple%2. 0)) (((core!option.Option./None)
   (core!option.Option./Some (core!option.Option./Some/?0 Poly))
  ) ((tuple%0./tuple%0)) ((tuple%2./tuple%2 (tuple%2./tuple%2/?0 Poly) (tuple%2./tuple%2/?1
     Poly
)))))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-fun TYPE%fun%1. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%fun%2. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-fun TYPE%vstd.multiset.Multiset. (Dcr Type) Type)
(declare-fun TYPE%vstd.seq.Seq. (Dcr Type) Type)
(declare-fun TYPE%vstd.set.Set. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%2. (Dcr Type Dcr Type) Type)
(declare-fun Poly%fun%1. (%%Function%%) Poly)
(declare-fun %Poly%fun%1. (Poly) %%Function%%)
(declare-fun Poly%fun%2. (%%Function%%) Poly)
(declare-fun %Poly%fun%2. (Poly) %%Function%%)
(declare-fun Poly%vstd.multiset.Multiset<int.>. (vstd.multiset.Multiset<int.>.) Poly)
(declare-fun %Poly%vstd.multiset.Multiset<int.>. (Poly) vstd.multiset.Multiset<int.>.)
(declare-fun Poly%vstd.seq.Seq<int.>. (vstd.seq.Seq<int.>.) Poly)
(declare-fun %Poly%vstd.seq.Seq<int.>. (Poly) vstd.seq.Seq<int.>.)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(declare-fun Poly%tuple%2. (tuple%2.) Poly)
(declare-fun %Poly%tuple%2. (Poly) tuple%2.)
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
 (forall ((x core!option.Option.)) (!
   (= x (%Poly%core!option.Option. (Poly%core!option.Option. x)))
   :pattern ((Poly%core!option.Option. x))
   :qid internal_core__option__Option_box_axiom_definition
   :skolemid skolem_internal_core__option__Option_box_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!option.Option. V&. V&))
    (= x (Poly%core!option.Option. (%Poly%core!option.Option. x)))
   )
   :pattern ((has_type x (TYPE%core!option.Option. V&. V&)))
   :qid internal_core__option__Option_unbox_axiom_definition
   :skolemid skolem_internal_core__option__Option_unbox_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type)) (!
   (has_type (Poly%core!option.Option. core!option.Option./None) (TYPE%core!option.Option.
     V&. V&
   ))
   :pattern ((has_type (Poly%core!option.Option. core!option.Option./None) (TYPE%core!option.Option.
      V&. V&
   )))
   :qid internal_core!option.Option./None_constructor_definition
   :skolemid skolem_internal_core!option.Option./None_constructor_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (_0! Poly)) (!
   (=>
    (has_type _0! V&)
    (has_type (Poly%core!option.Option. (core!option.Option./Some _0!)) (TYPE%core!option.Option.
      V&. V&
   )))
   :pattern ((has_type (Poly%core!option.Option. (core!option.Option./Some _0!)) (TYPE%core!option.Option.
      V&. V&
   )))
   :qid internal_core!option.Option./Some_constructor_definition
   :skolemid skolem_internal_core!option.Option./Some_constructor_definition
)))
(assert
 (forall ((x core!option.Option.)) (!
   (= (core!option.Option./Some/0 x) (core!option.Option./Some/?0 x))
   :pattern ((core!option.Option./Some/0 x))
   :qid internal_core!option.Option./Some/0_accessor_definition
   :skolemid skolem_internal_core!option.Option./Some/0_accessor_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!option.Option. V&. V&))
    (has_type (core!option.Option./Some/0 (%Poly%core!option.Option. x)) V&)
   )
   :pattern ((core!option.Option./Some/0 (%Poly%core!option.Option. x)) (has_type x (TYPE%core!option.Option.
      V&. V&
   )))
   :qid internal_core!option.Option./Some/0_invariant_definition
   :skolemid skolem_internal_core!option.Option./Some/0_invariant_definition
)))
(assert
 (forall ((x core!option.Option.)) (!
   (=>
    (is-core!option.Option./Some x)
    (height_lt (height (core!option.Option./Some/0 x)) (height (Poly%core!option.Option.
       x
   ))))
   :pattern ((height (core!option.Option./Some/0 x)))
   :qid prelude_datatype_height_core!option.Option./Some/0
   :skolemid skolem_prelude_datatype_height_core!option.Option./Some/0
)))
(assert
 (forall ((V&. Dcr) (V& Type) (deep Bool) (x Poly) (y Poly)) (!
   (=>
    (and
     (has_type x (TYPE%core!option.Option. V&. V&))
     (has_type y (TYPE%core!option.Option. V&. V&))
     (is-core!option.Option./None (%Poly%core!option.Option. x))
     (is-core!option.Option./None (%Poly%core!option.Option. y))
    )
    (ext_eq deep (TYPE%core!option.Option. V&. V&) x y)
   )
   :pattern ((ext_eq deep (TYPE%core!option.Option. V&. V&) x y))
   :qid internal_core!option.Option./None_ext_equal_definition
   :skolemid skolem_internal_core!option.Option./None_ext_equal_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (deep Bool) (x Poly) (y Poly)) (!
   (=>
    (and
     (has_type x (TYPE%core!option.Option. V&. V&))
     (has_type y (TYPE%core!option.Option. V&. V&))
     (is-core!option.Option./Some (%Poly%core!option.Option. x))
     (is-core!option.Option./Some (%Poly%core!option.Option. y))
     (ext_eq deep V& (core!option.Option./Some/0 (%Poly%core!option.Option. x)) (core!option.Option./Some/0
       (%Poly%core!option.Option. y)
    )))
    (ext_eq deep (TYPE%core!option.Option. V&. V&) x y)
   )
   :pattern ((ext_eq deep (TYPE%core!option.Option. V&. V&) x y))
   :qid internal_core!option.Option./Some_ext_equal_definition
   :skolemid skolem_internal_core!option.Option./Some_ext_equal_definition
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
(declare-fun tr_bound%vstd.std_specs.option.OptionAdditionalFns. (Dcr Type Dcr Type)
 Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type)) (!
   true
   :pattern ((tr_bound%vstd.std_specs.option.OptionAdditionalFns. Self%&. Self%& T&. T&))
   :qid internal_crate__vstd__std_specs__option__OptionAdditionalFns_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__std_specs__option__OptionAdditionalFns_trait_type_bounds_definition
)))

;; Function-Decl vstd::seq::Seq::len
(declare-fun vstd!seq.Seq.len.? (Dcr Type Poly) Int)

;; Function-Decl crate::vstd::set::Set::finite
(declare-fun vstd.set.impl&%0.finite.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::set::Set::len
(declare-fun vstd.set.impl&%0.len.? (Dcr Type Poly) Int)

;; Function-Decl crate::vstd::set::Set::contains
(declare-fun vstd.set.impl&%0.contains.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::set::Set::empty
(declare-fun vstd.set.impl&%0.empty.? (Dcr Type) Poly)

;; Function-Decl crate::vstd::set::Set::new
(declare-fun vstd.set.impl&%0.new.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::set::Set::insert
(declare-fun vstd.set.impl&%0.insert.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::set::Set::remove
(declare-fun vstd.set.impl&%0.remove.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::set::Set::union
(declare-fun vstd.set.impl&%0.union.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::set::Set::intersect
(declare-fun vstd.set.impl&%0.intersect.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::set::Set::difference
(declare-fun vstd.set.impl&%0.difference.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::add
(declare-fun vstd.multiset.impl&%0.add.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::singleton
(declare-fun vstd.multiset.impl&%0.singleton.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::insert
(declare-fun vstd.multiset.impl&%0.insert.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::count
(declare-fun vstd.multiset.impl&%0.count.? (Dcr Type Poly Poly) Int)

;; Function-Decl crate::vstd::multiset::Multiset::sub
(declare-fun vstd.multiset.impl&%0.sub.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::remove
(declare-fun vstd.multiset.impl&%0.remove.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::std_specs::option::OptionAdditionalFns::is_Some
(declare-fun vstd.std_specs.option.OptionAdditionalFns.is_Some.? (Dcr Type Dcr Type
  Poly
 ) Poly
)
(declare-fun vstd.std_specs.option.OptionAdditionalFns.is_Some%default%.? (Dcr Type
  Dcr Type Poly
 ) Poly
)

;; Function-Decl crate::vstd::std_specs::option::OptionAdditionalFns::get_Some_0
(declare-fun vstd.std_specs.option.OptionAdditionalFns.get_Some_0.? (Dcr Type Dcr Type
  Poly
 ) Poly
)
(declare-fun vstd.std_specs.option.OptionAdditionalFns.get_Some_0%default%.? (Dcr Type
  Dcr Type Poly
 ) Poly
)

;; Function-Decl crate::vstd::multiset::Multiset::empty
(declare-fun vstd.multiset.impl&%0.empty.? (Dcr Type) Poly)

;; Function-Decl crate::vstd::std_specs::option::spec_unwrap
(declare-fun vstd.std_specs.option.spec_unwrap.? (Dcr Type Poly) Poly)

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

;; Function-Decl vstd::seq::Seq::empty
(declare-fun vstd!seq.Seq.empty.? (Dcr Type) Poly)

;; Function-Decl vstd::seq::Seq::push
(declare-fun vstd!seq.Seq.push.? (Dcr Type Poly Poly) Poly)

;; Function-Decl vstd::seq::Seq::add
(declare-fun vstd!seq.Seq.add.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::multiset::Multiset::len
(declare-fun vstd.multiset.impl&%0.len.? (Dcr Type Poly) Int)

;; Function-Decl crate::vstd::set::Set::spec_add
(declare-fun vstd.set.impl&%0.spec_add.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::set::Set::disjoint
(declare-fun vstd.set.impl&%0.disjoint.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::multiset::Multiset::contains
(declare-fun vstd.multiset.impl&%0.contains.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::multiset::Multiset::subset_of
(declare-fun vstd.multiset.impl&%0.subset_of.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::seq::Seq::skip
(declare-fun vstd.seq.impl&%0.skip.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::seq::Seq::drop_last
(declare-fun vstd.seq_lib.impl&%0.drop_last.? (Dcr Type Poly) Poly)

;; Function-Decl vstd::seq::Seq::last
(declare-fun vstd!seq.Seq.last.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::seq::Seq::filter
(declare-fun vstd.seq_lib.impl&%0.filter.? (Dcr Type Poly Poly) Poly)
(declare-fun vstd.seq_lib.impl&%0.rec%filter.? (Dcr Type Poly Poly Fuel) Poly)

;; Function-Decl crate::vstd::seq::Seq::contains
(declare-fun vstd.seq_lib.impl&%0.contains.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::seq::Seq::spec_add
(declare-fun vstd.seq.impl&%0.spec_add.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::seq_lib::check_argument_is_seq
(declare-fun vstd.seq_lib.check_argument_is_seq.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::seq::Seq::to_set
(declare-fun vstd.seq_lib.impl&%0.to_set.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::seq_lib::seq_to_set_rec
(declare-fun vstd.seq_lib.seq_to_set_rec.? (Dcr Type Poly) Poly)
(declare-fun vstd.seq_lib.rec%seq_to_set_rec.? (Dcr Type Poly Fuel) Poly)

;; Function-Decl crate::vstd::seq::Seq::take
(declare-fun vstd.seq.impl&%0.take.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::seq::Seq::first
(declare-fun vstd.seq.impl&%0.first.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::seq::Seq::map
(declare-fun vstd.seq_lib.impl&%0.map.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::seq::Seq::map_values
(declare-fun vstd.seq_lib.impl&%0.map_values.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::seq::Seq::is_prefix_of
(declare-fun vstd.seq_lib.impl&%0.is_prefix_of.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::seq::Seq::is_suffix_of
(declare-fun vstd.seq_lib.impl&%0.is_suffix_of.? (Dcr Type Poly Poly) Bool)

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

;; Function-Decl crate::vstd::seq::Seq::drop_first
(declare-fun vstd.seq_lib.impl&%0.drop_first.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::seq_lib::merge_sorted_with
(declare-fun vstd.seq_lib.merge_sorted_with.? (Dcr Type Poly Poly Poly) Poly)
(declare-fun vstd.seq_lib.rec%merge_sorted_with.? (Dcr Type Poly Poly Poly Fuel) Poly)

;; Function-Decl crate::vstd::seq::Seq::sort_by
(declare-fun vstd.seq_lib.impl&%0.sort_by.? (Dcr Type Poly Poly) Poly)
(declare-fun vstd.seq_lib.impl&%0.rec%sort_by.? (Dcr Type Poly Poly Fuel) Poly)

;; Function-Decl crate::vstd::seq::Seq::max_via
(declare-fun vstd.seq_lib.impl&%0.max_via.? (Dcr Type Poly Poly) Poly)
(declare-fun vstd.seq_lib.impl&%0.rec%max_via.? (Dcr Type Poly Poly Fuel) Poly)

;; Function-Decl crate::vstd::seq::Seq::min_via
(declare-fun vstd.seq_lib.impl&%0.min_via.? (Dcr Type Poly Poly) Poly)
(declare-fun vstd.seq_lib.impl&%0.rec%min_via.? (Dcr Type Poly Poly Fuel) Poly)

;; Function-Decl crate::vstd::seq::Seq::index_of
(declare-fun vstd.seq_lib.impl&%0.index_of.? (Dcr Type Poly Poly) Int)

;; Function-Decl crate::vstd::seq::Seq::first_index_helper
(declare-fun vstd.seq_lib.impl&%0.first_index_helper.? (Dcr Type Poly Poly) Int)
(declare-fun vstd.seq_lib.impl&%0.rec%first_index_helper.? (Dcr Type Poly Poly Fuel)
 Int
)

;; Function-Decl crate::vstd::seq::Seq::index_of_first
(declare-fun vstd.seq_lib.impl&%0.index_of_first.? (Dcr Type Poly Poly) core!option.Option.)

;; Function-Decl crate::vstd::seq::Seq::last_index_helper
(declare-fun vstd.seq_lib.impl&%0.last_index_helper.? (Dcr Type Poly Poly) Int)
(declare-fun vstd.seq_lib.impl&%0.rec%last_index_helper.? (Dcr Type Poly Poly Fuel)
 Int
)

;; Function-Decl crate::vstd::seq::Seq::index_of_last
(declare-fun vstd.seq_lib.impl&%0.index_of_last.? (Dcr Type Poly Poly) core!option.Option.)

;; Function-Decl crate::vstd::seq::Seq::no_duplicates
(declare-fun vstd.seq_lib.impl&%0.no_duplicates.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::seq::Seq::disjoint
(declare-fun vstd.seq_lib.impl&%0.disjoint.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::seq::Seq::to_multiset
(declare-fun vstd.seq_lib.impl&%0.to_multiset.? (Dcr Type Poly) Poly)
(declare-fun vstd.seq_lib.impl&%0.rec%to_multiset.? (Dcr Type Poly Fuel) Poly)

;; Function-Decl crate::vstd::seq::Seq::insert
(declare-fun vstd.seq_lib.impl&%0.insert.? (Dcr Type Poly Poly Poly) Poly)

;; Function-Decl crate::vstd::seq::Seq::remove
(declare-fun vstd.seq_lib.impl&%0.remove.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::seq::Seq::remove_value
(declare-fun vstd.seq_lib.impl&%0.remove_value.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::seq::Seq::reverse
(declare-fun vstd.seq_lib.impl&%0.reverse.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::seq::Seq::zip_with
(declare-fun vstd.seq_lib.impl&%0.zip_with.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::seq::Seq::fold_left
(declare-fun vstd.seq_lib.impl&%0.fold_left.? (Dcr Type Dcr Type Poly Poly Poly) Poly)
(declare-fun vstd.seq_lib.impl&%0.rec%fold_left.? (Dcr Type Dcr Type Poly Poly Poly
  Fuel
 ) Poly
)

;; Function-Decl crate::vstd::seq::Seq::fold_left_alt
(declare-fun vstd.seq_lib.impl&%0.fold_left_alt.? (Dcr Type Dcr Type Poly Poly Poly)
 Poly
)
(declare-fun vstd.seq_lib.impl&%0.rec%fold_left_alt.? (Dcr Type Dcr Type Poly Poly
  Poly Fuel
 ) Poly
)

;; Function-Decl crate::vstd::seq::Seq::fold_right
(declare-fun vstd.seq_lib.impl&%0.fold_right.? (Dcr Type Dcr Type Poly Poly Poly)
 Poly
)
(declare-fun vstd.seq_lib.impl&%0.rec%fold_right.? (Dcr Type Dcr Type Poly Poly Poly
  Fuel
 ) Poly
)

;; Function-Decl crate::vstd::seq::Seq::fold_right_alt
(declare-fun vstd.seq_lib.impl&%0.fold_right_alt.? (Dcr Type Dcr Type Poly Poly Poly)
 Poly
)
(declare-fun vstd.seq_lib.impl&%0.rec%fold_right_alt.? (Dcr Type Dcr Type Poly Poly
  Poly Fuel
 ) Poly
)

;; Function-Decl crate::vstd::seq::Seq::unzip
(declare-fun vstd.seq_lib.impl&%1.unzip.? (Dcr Type Dcr Type Poly) tuple%2.)

;; Function-Decl crate::vstd::seq::Seq::flatten
(declare-fun vstd.seq_lib.impl&%2.flatten.? (Dcr Type Poly) Poly)
(declare-fun vstd.seq_lib.impl&%2.rec%flatten.? (Dcr Type Poly Fuel) Poly)

;; Function-Decl crate::vstd::seq::Seq::flatten_alt
(declare-fun vstd.seq_lib.impl&%2.flatten_alt.? (Dcr Type Poly) Poly)
(declare-fun vstd.seq_lib.impl&%2.rec%flatten_alt.? (Dcr Type Poly Fuel) Poly)

;; Function-Decl crate::vstd::seq::Seq::max
(declare-fun vstd.seq_lib.impl&%3.max.? (Poly) Int)
(declare-fun vstd.seq_lib.impl&%3.rec%max.? (Poly Fuel) Int)

;; Function-Decl crate::vstd::seq::Seq::min
(declare-fun vstd.seq_lib.impl&%3.min.? (Poly) Int)
(declare-fun vstd.seq_lib.impl&%3.rec%min.? (Poly Fuel) Int)

;; Function-Decl crate::vstd::seq::Seq::sort
(declare-fun vstd.seq_lib.impl&%3.sort.? (Poly) vstd.seq.Seq<int.>.)

;; Function-Decl crate::vstd::seq_lib::commutative_foldr
(declare-fun vstd.seq_lib.commutative_foldr.? (Dcr Type Dcr Type Poly) Bool)

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

;; Function-Axioms crate::vstd::set::Set::len
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.set.Set. A&. A&))
    (<= 0 (vstd.set.impl&%0.len.? A&. A& self!))
   )
   :pattern ((vstd.set.impl&%0.len.? A&. A& self!))
   :qid internal_vstd.set.impl&__0.len.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.len.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::set::Set::empty
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (has_type (vstd.set.impl&%0.empty.? A&. A&) (TYPE%vstd.set.Set. A&. A&))
   :pattern ((vstd.set.impl&%0.empty.? A&. A&))
   :qid internal_vstd.set.impl&__0.empty.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.empty.?_pre_post_definition
)))

;; Broadcast crate::vstd::set::axiom_set_empty
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_empty.)
  (forall ((A&. Dcr) (A& Type) (a! Poly)) (!
    (=>
     (has_type a! A&)
     (not (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.empty.? A&. A&) a!))
    )
    :pattern ((vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.empty.? A&. A&) a!))
    :qid user_crate__vstd__set__axiom_set_empty_0
    :skolemid skolem_user_crate__vstd__set__axiom_set_empty_0
))))

;; Function-Axioms crate::vstd::set::Set::new
(assert
 (forall ((A&. Dcr) (A& Type) (F&. Dcr) (F& Type) (f! Poly)) (!
   (=>
    (has_type f! F&)
    (has_type (vstd.set.impl&%0.new.? A&. A& F&. F& f!) (TYPE%vstd.set.Set. A&. A&))
   )
   :pattern ((vstd.set.impl&%0.new.? A&. A& F&. F& f!))
   :qid internal_vstd.set.impl&__0.new.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.new.?_pre_post_definition
)))

;; Broadcast crate::vstd::set::axiom_set_new
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_new.)
  (forall ((A&. Dcr) (A& Type) (f! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type f! (TYPE%fun%1. A&. A& $ BOOL))
      (has_type a! A&)
     )
     (= (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.new.? A&. A& $ (TYPE%fun%1.
         A&. A& $ BOOL
        ) f!
       ) a!
      ) (%B (%%apply%%0 (%Poly%fun%1. f!) a!))
    ))
    :pattern ((vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.new.? A&. A& $ (TYPE%fun%1.
        A&. A& $ BOOL
       ) f!
      ) a!
    ))
    :qid user_crate__vstd__set__axiom_set_new_1
    :skolemid skolem_user_crate__vstd__set__axiom_set_new_1
))))

;; Function-Axioms crate::vstd::set::Set::insert
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (a! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type a! A&)
    )
    (has_type (vstd.set.impl&%0.insert.? A&. A& self! a!) (TYPE%vstd.set.Set. A&. A&))
   )
   :pattern ((vstd.set.impl&%0.insert.? A&. A& self! a!))
   :qid internal_vstd.set.impl&__0.insert.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.insert.?_pre_post_definition
)))

;; Broadcast crate::vstd::set::axiom_set_insert_same
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_insert_same.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.insert.? A&. A& s! a!) a!)
    )
    :pattern ((vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.insert.? A&. A& s! a!)
      a!
    ))
    :qid user_crate__vstd__set__axiom_set_insert_same_2
    :skolemid skolem_user_crate__vstd__set__axiom_set_insert_same_2
))))

;; Broadcast crate::vstd::set::axiom_set_insert_different
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_insert_different.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a1! Poly) (a2! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a1! A&)
      (has_type a2! A&)
     )
     (=>
      (not (= a1! a2!))
      (= (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.insert.? A&. A& s! a2!) a1!)
       (vstd.set.impl&%0.contains.? A&. A& s! a1!)
    )))
    :pattern ((vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.insert.? A&. A& s! a2!)
      a1!
    ))
    :qid user_crate__vstd__set__axiom_set_insert_different_3
    :skolemid skolem_user_crate__vstd__set__axiom_set_insert_different_3
))))

;; Function-Axioms crate::vstd::set::Set::remove
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (a! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type a! A&)
    )
    (has_type (vstd.set.impl&%0.remove.? A&. A& self! a!) (TYPE%vstd.set.Set. A&. A&))
   )
   :pattern ((vstd.set.impl&%0.remove.? A&. A& self! a!))
   :qid internal_vstd.set.impl&__0.remove.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.remove.?_pre_post_definition
)))

;; Broadcast crate::vstd::set::axiom_set_remove_same
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_remove_same.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (not (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s! a!) a!))
    )
    :pattern ((vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s! a!)
      a!
    ))
    :qid user_crate__vstd__set__axiom_set_remove_same_4
    :skolemid skolem_user_crate__vstd__set__axiom_set_remove_same_4
))))

;; Broadcast crate::vstd::set::axiom_set_remove_insert
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_remove_insert.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (=>
      (vstd.set.impl&%0.contains.? A&. A& s! a!)
      (= (vstd.set.impl&%0.insert.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s! a!) a!)
       s!
    )))
    :pattern ((vstd.set.impl&%0.remove.? A&. A& s! a!))
    :qid user_crate__vstd__set__axiom_set_remove_insert_5
    :skolemid skolem_user_crate__vstd__set__axiom_set_remove_insert_5
))))

;; Broadcast crate::vstd::set::axiom_set_remove_different
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_remove_different.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a1! Poly) (a2! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a1! A&)
      (has_type a2! A&)
     )
     (=>
      (not (= a1! a2!))
      (= (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s! a2!) a1!)
       (vstd.set.impl&%0.contains.? A&. A& s! a1!)
    )))
    :pattern ((vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s! a2!)
      a1!
    ))
    :qid user_crate__vstd__set__axiom_set_remove_different_6
    :skolemid skolem_user_crate__vstd__set__axiom_set_remove_different_6
))))

;; Function-Axioms crate::vstd::set::Set::union
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type s2! (TYPE%vstd.set.Set. A&. A&))
    )
    (has_type (vstd.set.impl&%0.union.? A&. A& self! s2!) (TYPE%vstd.set.Set. A&. A&))
   )
   :pattern ((vstd.set.impl&%0.union.? A&. A& self! s2!))
   :qid internal_vstd.set.impl&__0.union.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.union.?_pre_post_definition
)))

;; Broadcast crate::vstd::set::axiom_set_union
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_union.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd.set.Set. A&. A&))
      (has_type s2! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (= (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.union.? A&. A& s1! s2!) a!)
      (or
       (vstd.set.impl&%0.contains.? A&. A& s1! a!)
       (vstd.set.impl&%0.contains.? A&. A& s2! a!)
    )))
    :pattern ((vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.union.? A&. A& s1! s2!)
      a!
    ))
    :qid user_crate__vstd__set__axiom_set_union_7
    :skolemid skolem_user_crate__vstd__set__axiom_set_union_7
))))

;; Function-Axioms crate::vstd::set::Set::intersect
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type s2! (TYPE%vstd.set.Set. A&. A&))
    )
    (has_type (vstd.set.impl&%0.intersect.? A&. A& self! s2!) (TYPE%vstd.set.Set. A&. A&))
   )
   :pattern ((vstd.set.impl&%0.intersect.? A&. A& self! s2!))
   :qid internal_vstd.set.impl&__0.intersect.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.intersect.?_pre_post_definition
)))

;; Broadcast crate::vstd::set::axiom_set_intersect
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_intersect.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd.set.Set. A&. A&))
      (has_type s2! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (= (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& s1! s2!)
       a!
      ) (and
       (vstd.set.impl&%0.contains.? A&. A& s1! a!)
       (vstd.set.impl&%0.contains.? A&. A& s2! a!)
    )))
    :pattern ((vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& s1!
       s2!
      ) a!
    ))
    :qid user_crate__vstd__set__axiom_set_intersect_8
    :skolemid skolem_user_crate__vstd__set__axiom_set_intersect_8
))))

;; Function-Axioms crate::vstd::set::Set::difference
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type s2! (TYPE%vstd.set.Set. A&. A&))
    )
    (has_type (vstd.set.impl&%0.difference.? A&. A& self! s2!) (TYPE%vstd.set.Set. A&.
      A&
   )))
   :pattern ((vstd.set.impl&%0.difference.? A&. A& self! s2!))
   :qid internal_vstd.set.impl&__0.difference.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.difference.?_pre_post_definition
)))

;; Broadcast crate::vstd::set::axiom_set_difference
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_difference.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd.set.Set. A&. A&))
      (has_type s2! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (= (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.difference.? A&. A& s1! s2!)
       a!
      ) (and
       (vstd.set.impl&%0.contains.? A&. A& s1! a!)
       (not (vstd.set.impl&%0.contains.? A&. A& s2! a!))
    )))
    :pattern ((vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.difference.? A&. A&
       s1! s2!
      ) a!
    ))
    :qid user_crate__vstd__set__axiom_set_difference_9
    :skolemid skolem_user_crate__vstd__set__axiom_set_difference_9
))))

;; Broadcast crate::vstd::set::axiom_set_ext_equal
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_ext_equal.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd.set.Set. A&. A&))
      (has_type s2! (TYPE%vstd.set.Set. A&. A&))
     )
     (= (ext_eq false (TYPE%vstd.set.Set. A&. A&) s1! s2!) (forall ((a$ Poly)) (!
        (=>
         (has_type a$ A&)
         (= (vstd.set.impl&%0.contains.? A&. A& s1! a$) (vstd.set.impl&%0.contains.? A&. A&
           s2! a$
        )))
        :pattern ((vstd.set.impl&%0.contains.? A&. A& s1! a$))
        :pattern ((vstd.set.impl&%0.contains.? A&. A& s2! a$))
        :qid user_crate__vstd__set__axiom_set_ext_equal_10
        :skolemid skolem_user_crate__vstd__set__axiom_set_ext_equal_10
    ))))
    :pattern ((ext_eq false (TYPE%vstd.set.Set. A&. A&) s1! s2!))
    :qid user_crate__vstd__set__axiom_set_ext_equal_11
    :skolemid skolem_user_crate__vstd__set__axiom_set_ext_equal_11
))))

;; Broadcast crate::vstd::set::axiom_set_ext_equal_deep
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_ext_equal_deep.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd.set.Set. A&. A&))
      (has_type s2! (TYPE%vstd.set.Set. A&. A&))
     )
     (= (ext_eq true (TYPE%vstd.set.Set. A&. A&) s1! s2!) (ext_eq false (TYPE%vstd.set.Set.
        A&. A&
       ) s1! s2!
    )))
    :pattern ((ext_eq true (TYPE%vstd.set.Set. A&. A&) s1! s2!))
    :qid user_crate__vstd__set__axiom_set_ext_equal_deep_12
    :skolemid skolem_user_crate__vstd__set__axiom_set_ext_equal_deep_12
))))

;; Broadcast crate::vstd::set::axiom_set_empty_finite
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_empty_finite.)
  (forall ((A&. Dcr) (A& Type)) (!
    (vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.empty.? A&. A&))
    :pattern ((vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.empty.? A&. A&)))
    :qid user_crate__vstd__set__axiom_set_empty_finite_13
    :skolemid skolem_user_crate__vstd__set__axiom_set_empty_finite_13
))))

;; Broadcast crate::vstd::set::axiom_set_insert_finite
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_insert_finite.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (=>
      (vstd.set.impl&%0.finite.? A&. A& s!)
      (vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.insert.? A&. A& s! a!))
    ))
    :pattern ((vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.insert.? A&. A& s! a!)))
    :qid user_crate__vstd__set__axiom_set_insert_finite_14
    :skolemid skolem_user_crate__vstd__set__axiom_set_insert_finite_14
))))

;; Broadcast crate::vstd::set::axiom_set_remove_finite
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_remove_finite.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (=>
      (vstd.set.impl&%0.finite.? A&. A& s!)
      (vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s! a!))
    ))
    :pattern ((vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s! a!)))
    :qid user_crate__vstd__set__axiom_set_remove_finite_15
    :skolemid skolem_user_crate__vstd__set__axiom_set_remove_finite_15
))))

;; Broadcast crate::vstd::set::axiom_set_union_finite
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_union_finite.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd.set.Set. A&. A&))
      (has_type s2! (TYPE%vstd.set.Set. A&. A&))
     )
     (=>
      (and
       (vstd.set.impl&%0.finite.? A&. A& s1!)
       (vstd.set.impl&%0.finite.? A&. A& s2!)
      )
      (vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.union.? A&. A& s1! s2!))
    ))
    :pattern ((vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.union.? A&. A& s1! s2!)))
    :qid user_crate__vstd__set__axiom_set_union_finite_16
    :skolemid skolem_user_crate__vstd__set__axiom_set_union_finite_16
))))

;; Broadcast crate::vstd::set::axiom_set_intersect_finite
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_intersect_finite.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd.set.Set. A&. A&))
      (has_type s2! (TYPE%vstd.set.Set. A&. A&))
     )
     (=>
      (or
       (vstd.set.impl&%0.finite.? A&. A& s1!)
       (vstd.set.impl&%0.finite.? A&. A& s2!)
      )
      (vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& s1! s2!))
    ))
    :pattern ((vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& s1!
       s2!
    )))
    :qid user_crate__vstd__set__axiom_set_intersect_finite_17
    :skolemid skolem_user_crate__vstd__set__axiom_set_intersect_finite_17
))))

;; Broadcast crate::vstd::set::axiom_set_difference_finite
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_difference_finite.)
  (forall ((A&. Dcr) (A& Type) (s1! Poly) (s2! Poly)) (!
    (=>
     (and
      (has_type s1! (TYPE%vstd.set.Set. A&. A&))
      (has_type s2! (TYPE%vstd.set.Set. A&. A&))
     )
     (=>
      (vstd.set.impl&%0.finite.? A&. A& s1!)
      (vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.difference.? A&. A& s1! s2!))
    ))
    :pattern ((vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.difference.? A&. A& s1!
       s2!
    )))
    :qid user_crate__vstd__set__axiom_set_difference_finite_18
    :skolemid skolem_user_crate__vstd__set__axiom_set_difference_finite_18
))))

;; Broadcast crate::vstd::set::axiom_set_empty_len
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_empty_len.)
  (forall ((A&. Dcr) (A& Type)) (!
    (= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.empty.? A&. A&)) 0)
    :pattern ((vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.empty.? A&. A&)))
    :qid user_crate__vstd__set__axiom_set_empty_len_19
    :skolemid skolem_user_crate__vstd__set__axiom_set_empty_len_19
))))

;; Broadcast crate::vstd::set::axiom_set_insert_len
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_insert_len.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (=>
      (vstd.set.impl&%0.finite.? A&. A& s!)
      (= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.insert.? A&. A& s! a!)) (Add (vstd.set.impl&%0.len.?
         A&. A& s!
        ) (ite
         (vstd.set.impl&%0.contains.? A&. A& s! a!)
         0
         1
    )))))
    :pattern ((vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.insert.? A&. A& s! a!)))
    :qid user_crate__vstd__set__axiom_set_insert_len_20
    :skolemid skolem_user_crate__vstd__set__axiom_set_insert_len_20
))))

;; Broadcast crate::vstd::set::axiom_set_remove_len
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_remove_len.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (=>
      (vstd.set.impl&%0.finite.? A&. A& s!)
      (= (vstd.set.impl&%0.len.? A&. A& s!) (Add (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.remove.?
          A&. A& s! a!
         )
        ) (ite
         (vstd.set.impl&%0.contains.? A&. A& s! a!)
         1
         0
    )))))
    :pattern ((vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.remove.? A&. A& s! a!)))
    :qid user_crate__vstd__set__axiom_set_remove_len_21
    :skolemid skolem_user_crate__vstd__set__axiom_set_remove_len_21
))))

;; Broadcast crate::vstd::set::axiom_set_contains_len
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_contains_len.)
  (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. A&. A&))
      (has_type a! A&)
     )
     (=>
      (and
       (vstd.set.impl&%0.finite.? A&. A& s!)
       (vstd.set.impl&%0.contains.? A&. A& s! a!)
      )
      (not (= (vstd.set.impl&%0.len.? A&. A& s!) 0))
    ))
    :pattern ((vstd.set.impl&%0.contains.? A&. A& s! a!) (vstd.set.impl&%0.len.? A&. A&
      s!
    ))
    :qid user_crate__vstd__set__axiom_set_contains_len_22
    :skolemid skolem_user_crate__vstd__set__axiom_set_contains_len_22
))))

;; Function-Axioms crate::vstd::multiset::Multiset::add
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.multiset.Multiset. V&. V&))
     (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
    )
    (has_type (vstd.multiset.impl&%0.add.? V&. V& self! m2!) (TYPE%vstd.multiset.Multiset.
      V&. V&
   )))
   :pattern ((vstd.multiset.impl&%0.add.? V&. V& self! m2!))
   :qid internal_vstd.multiset.impl&__0.add.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.add.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::multiset::Multiset::singleton
(assert
 (forall ((V&. Dcr) (V& Type) (v! Poly)) (!
   (=>
    (has_type v! V&)
    (has_type (vstd.multiset.impl&%0.singleton.? V&. V& v!) (TYPE%vstd.multiset.Multiset.
      V&. V&
   )))
   :pattern ((vstd.multiset.impl&%0.singleton.? V&. V& v!))
   :qid internal_vstd.multiset.impl&__0.singleton.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.singleton.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::multiset::Multiset::insert
(assert
 (fuel_bool_default fuel%vstd.multiset.impl&%0.insert.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.impl&%0.insert.)
  (forall ((V&. Dcr) (V& Type) (self! Poly) (v! Poly)) (!
    (= (vstd.multiset.impl&%0.insert.? V&. V& self! v!) (vstd.multiset.impl&%0.add.? V&.
      V& self! (vstd.multiset.impl&%0.singleton.? V&. V& v!)
    ))
    :pattern ((vstd.multiset.impl&%0.insert.? V&. V& self! v!))
    :qid internal_vstd.multiset.impl&__0.insert.?_definition
    :skolemid skolem_internal_vstd.multiset.impl&__0.insert.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (v! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.multiset.Multiset. V&. V&))
     (has_type v! V&)
    )
    (has_type (vstd.multiset.impl&%0.insert.? V&. V& self! v!) (TYPE%vstd.multiset.Multiset.
      V&. V&
   )))
   :pattern ((vstd.multiset.impl&%0.insert.? V&. V& self! v!))
   :qid internal_vstd.multiset.impl&__0.insert.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.insert.?_pre_post_definition
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

;; Function-Axioms crate::vstd::multiset::Multiset::sub
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.multiset.Multiset. V&. V&))
     (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
    )
    (has_type (vstd.multiset.impl&%0.sub.? V&. V& self! m2!) (TYPE%vstd.multiset.Multiset.
      V&. V&
   )))
   :pattern ((vstd.multiset.impl&%0.sub.? V&. V& self! m2!))
   :qid internal_vstd.multiset.impl&__0.sub.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.sub.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::multiset::Multiset::remove
(assert
 (fuel_bool_default fuel%vstd.multiset.impl&%0.remove.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.impl&%0.remove.)
  (forall ((V&. Dcr) (V& Type) (self! Poly) (v! Poly)) (!
    (= (vstd.multiset.impl&%0.remove.? V&. V& self! v!) (vstd.multiset.impl&%0.sub.? V&.
      V& self! (vstd.multiset.impl&%0.singleton.? V&. V& v!)
    ))
    :pattern ((vstd.multiset.impl&%0.remove.? V&. V& self! v!))
    :qid internal_vstd.multiset.impl&__0.remove.?_definition
    :skolemid skolem_internal_vstd.multiset.impl&__0.remove.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (v! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.multiset.Multiset. V&. V&))
     (has_type v! V&)
    )
    (has_type (vstd.multiset.impl&%0.remove.? V&. V& self! v!) (TYPE%vstd.multiset.Multiset.
      V&. V&
   )))
   :pattern ((vstd.multiset.impl&%0.remove.? V&. V& self! v!))
   :qid internal_vstd.multiset.impl&__0.remove.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.remove.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::std_specs::option::OptionAdditionalFns::is_Some
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.std_specs.option.OptionAdditionalFns.is_Some.? Self%&. Self%& T&. T&
      self!
     ) BOOL
   ))
   :pattern ((vstd.std_specs.option.OptionAdditionalFns.is_Some.? Self%&. Self%& T&. T&
     self!
   ))
   :qid internal_vstd.std_specs.option.OptionAdditionalFns.is_Some.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.option.OptionAdditionalFns.is_Some.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::std_specs::option::OptionAdditionalFns::get_Some_0
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.std_specs.option.OptionAdditionalFns.get_Some_0.? Self%&. Self%& T&.
      T& self!
     ) T&
   ))
   :pattern ((vstd.std_specs.option.OptionAdditionalFns.get_Some_0.? Self%&. Self%& T&.
     T& self!
   ))
   :qid internal_vstd.std_specs.option.OptionAdditionalFns.get_Some_0.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.option.OptionAdditionalFns.get_Some_0.?_pre_post_definition
)))

;; Function-Axioms core::option::Option::get_Some_0
(assert
 (fuel_bool_default fuel%vstd.std_specs.option.impl&%0.get_Some_0.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.option.impl&%0.get_Some_0.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.std_specs.option.OptionAdditionalFns.get_Some_0.? $ (TYPE%core!option.Option.
       T&. T&
      ) T&. T& self!
     ) (core!option.Option./Some/0 (%Poly%core!option.Option. self!))
    )
    :pattern ((vstd.std_specs.option.OptionAdditionalFns.get_Some_0.? $ (TYPE%core!option.Option.
       T&. T&
      ) T&. T& self!
    ))
    :qid internal_vstd.std_specs.option.OptionAdditionalFns.get_Some_0.?_definition
    :skolemid skolem_internal_vstd.std_specs.option.OptionAdditionalFns.get_Some_0.?_definition
))))

;; Function-Axioms crate::vstd::multiset::Multiset::empty
(assert
 (forall ((V&. Dcr) (V& Type)) (!
   (has_type (vstd.multiset.impl&%0.empty.? V&. V&) (TYPE%vstd.multiset.Multiset. V&.
     V&
   ))
   :pattern ((vstd.multiset.impl&%0.empty.? V&. V&))
   :qid internal_vstd.multiset.impl&__0.empty.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.empty.?_pre_post_definition
)))

;; Function-Axioms core::option::Option::is_Some
(assert
 (fuel_bool_default fuel%vstd.std_specs.option.impl&%0.is_Some.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.option.impl&%0.is_Some.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.std_specs.option.OptionAdditionalFns.is_Some.? $ (TYPE%core!option.Option.
       T&. T&
      ) T&. T& self!
     ) (B (is-core!option.Option./Some (%Poly%core!option.Option. self!)))
    )
    :pattern ((vstd.std_specs.option.OptionAdditionalFns.is_Some.? $ (TYPE%core!option.Option.
       T&. T&
      ) T&. T& self!
    ))
    :qid internal_vstd.std_specs.option.OptionAdditionalFns.is_Some.?_definition
    :skolemid skolem_internal_vstd.std_specs.option.OptionAdditionalFns.is_Some.?_definition
))))

;; Function-Specs crate::vstd::std_specs::option::spec_unwrap
(declare-fun req%vstd.std_specs.option.spec_unwrap. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
   (= (req%vstd.std_specs.option.spec_unwrap. T&. T& option!) (=>
     %%global_location_label%%0
     (is-core!option.Option./Some (%Poly%core!option.Option. option!))
   ))
   :pattern ((req%vstd.std_specs.option.spec_unwrap. T&. T& option!))
   :qid internal_req__vstd.std_specs.option.spec_unwrap._definition
   :skolemid skolem_internal_req__vstd.std_specs.option.spec_unwrap._definition
)))

;; Function-Axioms crate::vstd::std_specs::option::spec_unwrap
(assert
 (fuel_bool_default fuel%vstd.std_specs.option.spec_unwrap.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.option.spec_unwrap.)
  (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
    (= (vstd.std_specs.option.spec_unwrap.? T&. T& option!) (core!option.Option./Some/0
      (%Poly%core!option.Option. option!)
    ))
    :pattern ((vstd.std_specs.option.spec_unwrap.? T&. T& option!))
    :qid internal_vstd.std_specs.option.spec_unwrap.?_definition
    :skolemid skolem_internal_vstd.std_specs.option.spec_unwrap.?_definition
))))
(assert
 (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
   (=>
    (has_type option! (TYPE%core!option.Option. T&. T&))
    (has_type (vstd.std_specs.option.spec_unwrap.? T&. T& option!) T&)
   )
   :pattern ((vstd.std_specs.option.spec_unwrap.? T&. T& option!))
   :qid internal_vstd.std_specs.option.spec_unwrap.?_pre_post_definition
   :skolemid skolem_internal_vstd.std_specs.option.spec_unwrap.?_pre_post_definition
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
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly) (a! Poly)) (!
   (= (req%vstd!seq.Seq.update. A&. A& self! i! a!) (=>
     %%global_location_label%%1
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
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
   (= (req%vstd!seq.Seq.index. A&. A& self! i!) (=>
     %%global_location_label%%2
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
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
   (= (req%vstd.seq.impl&%0.spec_index. A&. A& self! i!) (=>
     %%global_location_label%%3
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
    :qid user_crate__vstd__seq__axiom_seq_index_decreases_23
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_index_decreases_23
))))

;; Function-Specs vstd::seq::Seq::subrange
(declare-fun req%vstd!seq.Seq.subrange. (Dcr Type Poly Poly Poly) Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (start_inclusive! Poly) (end_exclusive! Poly))
  (!
   (= (req%vstd!seq.Seq.subrange. A&. A& self! start_inclusive! end_exclusive!) (=>
     %%global_location_label%%4
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
    :qid user_crate__vstd__seq__axiom_seq_subrange_len_24
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_subrange_len_24
))))

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
    :qid user_crate__vstd__seq__axiom_seq_subrange_index_25
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_subrange_index_25
))))

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
    :qid user_crate__vstd__seq__axiom_seq_subrange_decreases_26
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_subrange_decreases_26
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
    :qid user_crate__vstd__seq__axiom_seq_empty_27
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_empty_27
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
    :qid user_crate__vstd__seq__axiom_seq_new_len_28
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_new_len_28
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
    :qid user_crate__vstd__seq__axiom_seq_new_index_29
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_new_index_29
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
    :qid user_crate__vstd__seq__axiom_seq_push_len_30
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_push_len_30
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
    :qid user_crate__vstd__seq__axiom_seq_push_index_same_31
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_push_index_same_31
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
    :qid user_crate__vstd__seq__axiom_seq_push_index_different_32
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_push_index_different_32
))))

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
    :qid user_crate__vstd__seq__axiom_seq_update_len_33
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_update_len_33
))))

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
    :qid user_crate__vstd__seq__axiom_seq_update_same_34
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_update_same_34
))))

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
    :qid user_crate__vstd__seq__axiom_seq_update_different_35
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_update_different_35
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
         :qid user_crate__vstd__seq__axiom_seq_ext_equal_36
         :skolemid skolem_user_crate__vstd__seq__axiom_seq_ext_equal_36
    )))))
    :pattern ((ext_eq false (TYPE%vstd.seq.Seq. A&. A&) s1! s2!))
    :qid user_crate__vstd__seq__axiom_seq_ext_equal_37
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_ext_equal_37
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
         :qid user_crate__vstd__seq__axiom_seq_ext_equal_deep_38
         :skolemid skolem_user_crate__vstd__seq__axiom_seq_ext_equal_deep_38
    )))))
    :pattern ((ext_eq true (TYPE%vstd.seq.Seq. A&. A&) s1! s2!))
    :qid user_crate__vstd__seq__axiom_seq_ext_equal_deep_39
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_ext_equal_deep_39
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
    :qid user_crate__vstd__seq__axiom_seq_add_len_40
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_add_len_40
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
    :qid user_crate__vstd__seq__axiom_seq_add_index1_41
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_add_index1_41
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
    :qid user_crate__vstd__seq__axiom_seq_add_index2_42
    :skolemid skolem_user_crate__vstd__seq__axiom_seq_add_index2_42
))))

;; Function-Axioms crate::vstd::multiset::Multiset::len
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.multiset.Multiset. V&. V&))
    (<= 0 (vstd.multiset.impl&%0.len.? V&. V& self!))
   )
   :pattern ((vstd.multiset.impl&%0.len.? V&. V& self!))
   :qid internal_vstd.multiset.impl&__0.len.?_pre_post_definition
   :skolemid skolem_internal_vstd.multiset.impl&__0.len.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::set::Set::spec_add
(assert
 (fuel_bool_default fuel%vstd.set.impl&%0.spec_add.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.set.impl&%0.spec_add.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
    (= (vstd.set.impl&%0.spec_add.? A&. A& self! s2!) (vstd.set.impl&%0.union.? A&. A&
      self! s2!
    ))
    :pattern ((vstd.set.impl&%0.spec_add.? A&. A& self! s2!))
    :qid internal_vstd.set.impl&__0.spec_add.?_definition
    :skolemid skolem_internal_vstd.set.impl&__0.spec_add.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type s2! (TYPE%vstd.set.Set. A&. A&))
    )
    (has_type (vstd.set.impl&%0.spec_add.? A&. A& self! s2!) (TYPE%vstd.set.Set. A&. A&))
   )
   :pattern ((vstd.set.impl&%0.spec_add.? A&. A& self! s2!))
   :qid internal_vstd.set.impl&__0.spec_add.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.spec_add.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::set::Set::disjoint
(assert
 (fuel_bool_default fuel%vstd.set.impl&%0.disjoint.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.set.impl&%0.disjoint.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
    (= (vstd.set.impl&%0.disjoint.? A&. A& self! s2!) (forall ((a$ Poly)) (!
       (=>
        (has_type a$ A&)
        (=>
         (vstd.set.impl&%0.contains.? A&. A& self! a$)
         (not (vstd.set.impl&%0.contains.? A&. A& s2! a$))
       ))
       :pattern ((vstd.set.impl&%0.contains.? A&. A& self! a$))
       :pattern ((vstd.set.impl&%0.contains.? A&. A& s2! a$))
       :qid user_crate__vstd__set__Set__disjoint_43
       :skolemid skolem_user_crate__vstd__set__Set__disjoint_43
    )))
    :pattern ((vstd.set.impl&%0.disjoint.? A&. A& self! s2!))
    :qid internal_vstd.set.impl&__0.disjoint.?_definition
    :skolemid skolem_internal_vstd.set.impl&__0.disjoint.?_definition
))))

;; Function-Axioms crate::vstd::multiset::Multiset::contains
(assert
 (fuel_bool_default fuel%vstd.multiset.impl&%0.contains.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.impl&%0.contains.)
  (forall ((V&. Dcr) (V& Type) (self! Poly) (v! Poly)) (!
    (= (vstd.multiset.impl&%0.contains.? V&. V& self! v!) (> (vstd.multiset.impl&%0.count.?
       V&. V& self! v!
      ) 0
    ))
    :pattern ((vstd.multiset.impl&%0.contains.? V&. V& self! v!))
    :qid internal_vstd.multiset.impl&__0.contains.?_definition
    :skolemid skolem_internal_vstd.multiset.impl&__0.contains.?_definition
))))

;; Function-Axioms crate::vstd::multiset::Multiset::subset_of
(assert
 (fuel_bool_default fuel%vstd.multiset.impl&%0.subset_of.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.impl&%0.subset_of.)
  (forall ((V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
    (= (vstd.multiset.impl&%0.subset_of.? V&. V& self! m2!) (forall ((v$ Poly)) (!
       (=>
        (has_type v$ V&)
        (<= (vstd.multiset.impl&%0.count.? V&. V& self! v$) (vstd.multiset.impl&%0.count.?
          V&. V& m2! v$
       )))
       :pattern ((vstd.multiset.impl&%0.count.? V&. V& self! v$))
       :pattern ((vstd.multiset.impl&%0.count.? V&. V& m2! v$))
       :qid user_crate__vstd__multiset__Multiset__subset_of_44
       :skolemid skolem_user_crate__vstd__multiset__Multiset__subset_of_44
    )))
    :pattern ((vstd.multiset.impl&%0.subset_of.? V&. V& self! m2!))
    :qid internal_vstd.multiset.impl&__0.subset_of.?_definition
    :skolemid skolem_internal_vstd.multiset.impl&__0.subset_of.?_definition
))))

;; Broadcast crate::vstd::multiset::axiom_multiset_empty
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_multiset_empty.)
  (forall ((V&. Dcr) (V& Type) (v! Poly)) (!
    (=>
     (has_type v! V&)
     (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.empty.? V&. V&) v!)
      0
    ))
    :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.empty.? V&. V&)
      v!
    ))
    :qid user_crate__vstd__multiset__axiom_multiset_empty_45
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_empty_45
))))

;; Broadcast crate::vstd::multiset::axiom_multiset_singleton
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_multiset_singleton.)
  (forall ((V&. Dcr) (V& Type) (v! Poly)) (!
    (=>
     (has_type v! V&)
     (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.singleton.? V&. V& v!)
       v!
      ) 1
    ))
    :pattern ((vstd.multiset.impl&%0.singleton.? V&. V& v!))
    :qid user_crate__vstd__multiset__axiom_multiset_singleton_46
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_singleton_46
))))

;; Broadcast crate::vstd::multiset::axiom_multiset_singleton_different
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_multiset_singleton_different.)
  (forall ((V&. Dcr) (V& Type) (v! Poly) (w! Poly)) (!
    (=>
     (and
      (has_type v! V&)
      (has_type w! V&)
     )
     (=>
      (not (= v! w!))
      (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.singleton.? V&. V& v!)
        w!
       ) 0
    )))
    :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.singleton.? V&.
       V& v!
      ) w!
    ))
    :qid user_crate__vstd__multiset__axiom_multiset_singleton_different_47
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_singleton_different_47
))))

;; Broadcast crate::vstd::multiset::axiom_multiset_add
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_multiset_add.)
  (forall ((V&. Dcr) (V& Type) (m1! Poly) (m2! Poly) (v! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd.multiset.Multiset. V&. V&))
      (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
      (has_type v! V&)
     )
     (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.add.? V&. V& m1! m2!)
       v!
      ) (nClip (Add (vstd.multiset.impl&%0.count.? V&. V& m1! v!) (vstd.multiset.impl&%0.count.?
         V&. V& m2! v!
    )))))
    :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.add.? V&. V&
       m1! m2!
      ) v!
    ))
    :qid user_crate__vstd__multiset__axiom_multiset_add_48
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_add_48
))))

;; Broadcast crate::vstd::multiset::axiom_multiset_sub
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_multiset_sub.)
  (forall ((V&. Dcr) (V& Type) (m1! Poly) (m2! Poly) (v! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd.multiset.Multiset. V&. V&))
      (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
      (has_type v! V&)
     )
     (= (vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.sub.? V&. V& m1! m2!)
       v!
      ) (ite
       (>= (vstd.multiset.impl&%0.count.? V&. V& m1! v!) (vstd.multiset.impl&%0.count.? V&.
         V& m2! v!
       ))
       (Sub (vstd.multiset.impl&%0.count.? V&. V& m1! v!) (vstd.multiset.impl&%0.count.? V&.
         V& m2! v!
       ))
       0
    )))
    :pattern ((vstd.multiset.impl&%0.count.? V&. V& (vstd.multiset.impl&%0.sub.? V&. V&
       m1! m2!
      ) v!
    ))
    :qid user_crate__vstd__multiset__axiom_multiset_sub_49
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_sub_49
))))

;; Broadcast crate::vstd::multiset::axiom_multiset_ext_equal
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_multiset_ext_equal.)
  (forall ((V&. Dcr) (V& Type) (m1! Poly) (m2! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd.multiset.Multiset. V&. V&))
      (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
     )
     (= (ext_eq false (TYPE%vstd.multiset.Multiset. V&. V&) m1! m2!) (forall ((v$ Poly))
       (!
        (=>
         (has_type v$ V&)
         (= (vstd.multiset.impl&%0.count.? V&. V& m1! v$) (vstd.multiset.impl&%0.count.? V&.
           V& m2! v$
        )))
        :pattern ((vstd.multiset.impl&%0.count.? V&. V& m1! v$))
        :pattern ((vstd.multiset.impl&%0.count.? V&. V& m2! v$))
        :qid user_crate__vstd__multiset__axiom_multiset_ext_equal_50
        :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_ext_equal_50
    ))))
    :pattern ((ext_eq false (TYPE%vstd.multiset.Multiset. V&. V&) m1! m2!))
    :qid user_crate__vstd__multiset__axiom_multiset_ext_equal_51
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_ext_equal_51
))))

;; Broadcast crate::vstd::multiset::axiom_multiset_ext_equal_deep
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_multiset_ext_equal_deep.)
  (forall ((V&. Dcr) (V& Type) (m1! Poly) (m2! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd.multiset.Multiset. V&. V&))
      (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
     )
     (= (ext_eq true (TYPE%vstd.multiset.Multiset. V&. V&) m1! m2!) (ext_eq false (TYPE%vstd.multiset.Multiset.
        V&. V&
       ) m1! m2!
    )))
    :pattern ((ext_eq true (TYPE%vstd.multiset.Multiset. V&. V&) m1! m2!))
    :qid user_crate__vstd__multiset__axiom_multiset_ext_equal_deep_52
    :skolemid skolem_user_crate__vstd__multiset__axiom_multiset_ext_equal_deep_52
))))

;; Broadcast crate::vstd::multiset::axiom_len_empty
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_len_empty.)
  (forall ((V&. Dcr) (V& Type)) (!
    (= (vstd.multiset.impl&%0.len.? V&. V& (vstd.multiset.impl&%0.empty.? V&. V&)) 0)
    :pattern ((vstd.multiset.impl&%0.len.? V&. V& (vstd.multiset.impl&%0.empty.? V&. V&)))
    :qid user_crate__vstd__multiset__axiom_len_empty_53
    :skolemid skolem_user_crate__vstd__multiset__axiom_len_empty_53
))))

;; Broadcast crate::vstd::multiset::axiom_len_singleton
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_len_singleton.)
  (forall ((V&. Dcr) (V& Type) (v! Poly)) (!
    (=>
     (has_type v! V&)
     (= (vstd.multiset.impl&%0.len.? V&. V& (vstd.multiset.impl&%0.singleton.? V&. V& v!))
      1
    ))
    :pattern ((vstd.multiset.impl&%0.len.? V&. V& (vstd.multiset.impl&%0.singleton.? V&.
       V& v!
    )))
    :qid user_crate__vstd__multiset__axiom_len_singleton_54
    :skolemid skolem_user_crate__vstd__multiset__axiom_len_singleton_54
))))

;; Broadcast crate::vstd::multiset::axiom_len_add
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_len_add.)
  (forall ((V&. Dcr) (V& Type) (m1! Poly) (m2! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd.multiset.Multiset. V&. V&))
      (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
     )
     (= (vstd.multiset.impl&%0.len.? V&. V& (vstd.multiset.impl&%0.add.? V&. V& m1! m2!))
      (nClip (Add (vstd.multiset.impl&%0.len.? V&. V& m1!) (vstd.multiset.impl&%0.len.? V&.
         V& m2!
    )))))
    :pattern ((vstd.multiset.impl&%0.len.? V&. V& (vstd.multiset.impl&%0.add.? V&. V& m1!
       m2!
    )))
    :qid user_crate__vstd__multiset__axiom_len_add_55
    :skolemid skolem_user_crate__vstd__multiset__axiom_len_add_55
))))

;; Broadcast crate::vstd::multiset::axiom_len_sub
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_len_sub.)
  (forall ((V&. Dcr) (V& Type) (m1! Poly) (m2! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd.multiset.Multiset. V&. V&))
      (has_type m2! (TYPE%vstd.multiset.Multiset. V&. V&))
     )
     (=>
      (vstd.multiset.impl&%0.subset_of.? V&. V& m2! m1!)
      (= (vstd.multiset.impl&%0.len.? V&. V& (vstd.multiset.impl&%0.sub.? V&. V& m1! m2!))
       (Sub (vstd.multiset.impl&%0.len.? V&. V& m1!) (vstd.multiset.impl&%0.len.? V&. V& m2!))
    )))
    :pattern ((vstd.multiset.impl&%0.len.? V&. V& (vstd.multiset.impl&%0.sub.? V&. V& m1!
       m2!
    )))
    :qid user_crate__vstd__multiset__axiom_len_sub_56
    :skolemid skolem_user_crate__vstd__multiset__axiom_len_sub_56
))))

;; Broadcast crate::vstd::multiset::axiom_count_le_len
(assert
 (=>
  (fuel_bool fuel%vstd.multiset.axiom_count_le_len.)
  (forall ((V&. Dcr) (V& Type) (m! Poly) (v! Poly)) (!
    (=>
     (and
      (has_type m! (TYPE%vstd.multiset.Multiset. V&. V&))
      (has_type v! V&)
     )
     (<= (vstd.multiset.impl&%0.count.? V&. V& m! v!) (vstd.multiset.impl&%0.len.? V&. V&
       m!
    )))
    :pattern ((vstd.multiset.impl&%0.count.? V&. V& m! v!) (vstd.multiset.impl&%0.len.?
      V&. V& m!
    ))
    :qid user_crate__vstd__multiset__axiom_count_le_len_57
    :skolemid skolem_user_crate__vstd__multiset__axiom_count_le_len_57
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

;; Function-Specs crate::vstd::seq::Seq::drop_last
(declare-fun req%vstd.seq_lib.impl&%0.drop_last. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (req%vstd.seq_lib.impl&%0.drop_last. A&. A& self!) (=>
     %%global_location_label%%5
     (>= (vstd!seq.Seq.len.? A&. A& self!) 1)
   ))
   :pattern ((req%vstd.seq_lib.impl&%0.drop_last. A&. A& self!))
   :qid internal_req__vstd.seq_lib.impl&__0.drop_last._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.drop_last._definition
)))

;; Function-Axioms crate::vstd::seq::Seq::drop_last
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.drop_last.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.drop_last.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (= (vstd.seq_lib.impl&%0.drop_last.? A&. A& self!) (vstd!seq.Seq.subrange.? A&. A&
      self! (I 0) (I (Sub (vstd!seq.Seq.len.? A&. A& self!) 1))
    ))
    :pattern ((vstd.seq_lib.impl&%0.drop_last.? A&. A& self!))
    :qid internal_vstd.seq_lib.impl&__0.drop_last.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.drop_last.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
    (has_type (vstd.seq_lib.impl&%0.drop_last.? A&. A& self!) (TYPE%vstd.seq.Seq. A&. A&))
   )
   :pattern ((vstd.seq_lib.impl&%0.drop_last.? A&. A& self!))
   :qid internal_vstd.seq_lib.impl&__0.drop_last.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.drop_last.?_pre_post_definition
)))

;; Function-Specs vstd::seq::Seq::last
(declare-fun req%vstd!seq.Seq.last. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (req%vstd!seq.Seq.last. A&. A& self!) (=>
     %%global_location_label%%6
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

;; Function-Axioms crate::vstd::seq::Seq::filter
(declare-const fuel_nat%vstd.seq_lib.impl&%0.filter. Fuel)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (pred! Poly) (fuel% Fuel)) (!
   (= (vstd.seq_lib.impl&%0.rec%filter.? A&. A& self! pred! fuel%) (vstd.seq_lib.impl&%0.rec%filter.?
     A&. A& self! pred! zero
   ))
   :pattern ((vstd.seq_lib.impl&%0.rec%filter.? A&. A& self! pred! fuel%))
   :qid internal_vstd.seq_lib.impl&__0.filter._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.filter._fuel_to_zero_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (pred! Poly) (fuel% Fuel)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type pred! (TYPE%fun%1. A&. A& $ BOOL))
    )
    (= (vstd.seq_lib.impl&%0.rec%filter.? A&. A& self! pred! (succ fuel%)) (ite
      (= (vstd!seq.Seq.len.? A&. A& self!) 0)
      self!
      (let
       ((subseq$ (vstd.seq_lib.impl&%0.rec%filter.? A&. A& (vstd.seq_lib.impl&%0.drop_last.?
           A&. A& self!
          ) pred! fuel%
       )))
       (ite
        (%B (%%apply%%0 (%Poly%fun%1. pred!) (vstd!seq.Seq.last.? A&. A& self!)))
        (vstd!seq.Seq.push.? A&. A& subseq$ (vstd!seq.Seq.last.? A&. A& self!))
        subseq$
   )))))
   :pattern ((vstd.seq_lib.impl&%0.rec%filter.? A&. A& self! pred! (succ fuel%)))
   :qid internal_vstd.seq_lib.impl&__0.filter._fuel_to_body_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.filter._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.filter.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (pred! Poly)) (!
    (=>
     (and
      (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type pred! (TYPE%fun%1. A&. A& $ BOOL))
     )
     (= (vstd.seq_lib.impl&%0.filter.? A&. A& self! pred!) (vstd.seq_lib.impl&%0.rec%filter.?
       A&. A& self! pred! (succ fuel_nat%vstd.seq_lib.impl&%0.filter.)
    )))
    :pattern ((vstd.seq_lib.impl&%0.filter.? A&. A& self! pred!))
    :qid internal_vstd.seq_lib.impl&__0.filter.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.filter.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (pred! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type pred! (TYPE%fun%1. A&. A& $ BOOL))
    )
    (has_type (vstd.seq_lib.impl&%0.filter.? A&. A& self! pred!) (TYPE%vstd.seq.Seq. A&.
      A&
   )))
   :pattern ((vstd.seq_lib.impl&%0.filter.? A&. A& self! pred!))
   :qid internal_vstd.seq_lib.impl&__0.filter.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.filter.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::seq::Seq::contains
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.contains.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.contains.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (needle! Poly)) (!
    (= (vstd.seq_lib.impl&%0.contains.? A&. A& self! needle!) (exists ((i$ Poly)) (!
       (and
        (has_type i$ INT)
        (and
         (and
          (<= 0 (%I i$))
          (< (%I i$) (vstd!seq.Seq.len.? A&. A& self!))
         )
         (= (vstd!seq.Seq.index.? A&. A& self! i$) needle!)
       ))
       :pattern ((vstd!seq.Seq.index.? A&. A& self! i$))
       :qid user_crate__vstd__seq__Seq__contains_58
       :skolemid skolem_user_crate__vstd__seq__Seq__contains_58
    )))
    :pattern ((vstd.seq_lib.impl&%0.contains.? A&. A& self! needle!))
    :qid internal_vstd.seq_lib.impl&__0.contains.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.contains.?_definition
))))

;; Function-Specs crate::vstd::seq::Seq::filter_lemma
(declare-fun ens%vstd.seq_lib.impl&%0.filter_lemma. (Dcr Type Poly %%Function%%) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (pred! %%Function%%)) (!
   (= (ens%vstd.seq_lib.impl&%0.filter_lemma. A&. A& self! pred!) (and
     (forall ((i$ Poly)) (!
       (=>
        (has_type i$ INT)
        (=>
         (and
          (<= 0 (%I i$))
          (< (%I i$) (vstd!seq.Seq.len.? A&. A& (vstd.seq_lib.impl&%0.filter.? A&. A& self! (Poly%fun%1.
              pred!
         )))))
         (%B (%%apply%%0 pred! (vstd!seq.Seq.index.? A&. A& (vstd.seq_lib.impl&%0.filter.? A&.
             A& self! (Poly%fun%1. pred!)
            ) i$
       )))))
       :pattern ((vstd!seq.Seq.index.? A&. A& (vstd.seq_lib.impl&%0.filter.? A&. A& self! (
           Poly%fun%1. pred!
          )
         ) i$
       ))
       :qid user_crate__vstd__seq__Seq__filter_lemma_59
       :skolemid skolem_user_crate__vstd__seq__Seq__filter_lemma_59
     ))
     (forall ((i$ Poly)) (!
       (=>
        (has_type i$ INT)
        (=>
         (and
          (and
           (<= 0 (%I i$))
           (< (%I i$) (vstd!seq.Seq.len.? A&. A& self!))
          )
          (%B (%%apply%%0 pred! (vstd!seq.Seq.index.? A&. A& self! i$)))
         )
         (vstd.seq_lib.impl&%0.contains.? A&. A& (vstd.seq_lib.impl&%0.filter.? A&. A& self!
           (Poly%fun%1. pred!)
          ) (vstd!seq.Seq.index.? A&. A& self! i$)
       )))
       :pattern ((vstd.seq_lib.impl&%0.contains.? A&. A& (vstd.seq_lib.impl&%0.filter.? A&.
          A& self! (Poly%fun%1. pred!)
         ) (vstd!seq.Seq.index.? A&. A& self! i$)
       ))
       :qid user_crate__vstd__seq__Seq__filter_lemma_60
       :skolemid skolem_user_crate__vstd__seq__Seq__filter_lemma_60
     ))
     (<= (vstd!seq.Seq.len.? A&. A& (vstd.seq_lib.impl&%0.filter.? A&. A& self! (Poly%fun%1.
         pred!
       ))
      ) (vstd!seq.Seq.len.? A&. A& self!)
   )))
   :pattern ((ens%vstd.seq_lib.impl&%0.filter_lemma. A&. A& self! pred!))
   :qid internal_ens__vstd.seq_lib.impl&__0.filter_lemma._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.filter_lemma._definition
)))

;; Broadcast crate::vstd::seq::Seq::filter_lemma
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.filter_lemma.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (pred! Poly)) (!
    (=>
     (and
      (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type pred! (TYPE%fun%1. A&. A& $ BOOL))
     )
     (and
      (and
       (forall ((i$ Poly)) (!
         (=>
          (has_type i$ INT)
          (=>
           (and
            (<= 0 (%I i$))
            (< (%I i$) (vstd!seq.Seq.len.? A&. A& (vstd.seq_lib.impl&%0.filter.? A&. A& self! pred!)))
           )
           (%B (%%apply%%0 (%Poly%fun%1. pred!) (vstd!seq.Seq.index.? A&. A& (vstd.seq_lib.impl&%0.filter.?
               A&. A& self! pred!
              ) i$
         )))))
         :pattern ((vstd!seq.Seq.index.? A&. A& (vstd.seq_lib.impl&%0.filter.? A&. A& self! pred!)
           i$
         ))
         :qid user_crate__vstd__seq__Seq__filter_lemma_61
         :skolemid skolem_user_crate__vstd__seq__Seq__filter_lemma_61
       ))
       (forall ((i$ Poly)) (!
         (=>
          (has_type i$ INT)
          (=>
           (and
            (and
             (<= 0 (%I i$))
             (< (%I i$) (vstd!seq.Seq.len.? A&. A& self!))
            )
            (%B (%%apply%%0 (%Poly%fun%1. pred!) (vstd!seq.Seq.index.? A&. A& self! i$)))
           )
           (vstd.seq_lib.impl&%0.contains.? A&. A& (vstd.seq_lib.impl&%0.filter.? A&. A& self!
             pred!
            ) (vstd!seq.Seq.index.? A&. A& self! i$)
         )))
         :pattern ((vstd.seq_lib.impl&%0.contains.? A&. A& (vstd.seq_lib.impl&%0.filter.? A&.
            A& self! pred!
           ) (vstd!seq.Seq.index.? A&. A& self! i$)
         ))
         :qid user_crate__vstd__seq__Seq__filter_lemma_62
         :skolemid skolem_user_crate__vstd__seq__Seq__filter_lemma_62
      )))
      (<= (vstd!seq.Seq.len.? A&. A& (vstd.seq_lib.impl&%0.filter.? A&. A& self! pred!))
       (vstd!seq.Seq.len.? A&. A& self!)
    )))
    :pattern ((vstd!seq.Seq.len.? A&. A& (vstd.seq_lib.impl&%0.filter.? A&. A& self! pred!)))
    :qid user_crate__vstd__seq__Seq__filter_lemma_63
    :skolemid skolem_user_crate__vstd__seq__Seq__filter_lemma_63
))))

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

;; Broadcast crate::vstd::seq::Seq::add_empty_left
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.add_empty_left.)
  (forall ((A&. Dcr) (A& Type) (a! Poly) (b! Poly)) (!
    (=>
     (and
      (has_type a! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type b! (TYPE%vstd.seq.Seq. A&. A&))
     )
     (=>
      (= (vstd!seq.Seq.len.? A&. A& a!) 0)
      (= (vstd!seq.Seq.add.? A&. A& a! b!) b!)
    ))
    :pattern ((vstd!seq.Seq.add.? A&. A& a! b!))
    :qid user_crate__vstd__seq__Seq__add_empty_left_69
    :skolemid skolem_user_crate__vstd__seq__Seq__add_empty_left_69
))))

;; Function-Specs crate::vstd::seq::Seq::add_empty_right
(declare-fun req%vstd.seq_lib.impl&%0.add_empty_right. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%7 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (a! Poly) (b! Poly)) (!
   (= (req%vstd.seq_lib.impl&%0.add_empty_right. A&. A& a! b!) (=>
     %%global_location_label%%7
     (= (vstd!seq.Seq.len.? A&. A& b!) 0)
   ))
   :pattern ((req%vstd.seq_lib.impl&%0.add_empty_right. A&. A& a! b!))
   :qid internal_req__vstd.seq_lib.impl&__0.add_empty_right._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.add_empty_right._definition
)))
(declare-fun ens%vstd.seq_lib.impl&%0.add_empty_right. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (a! Poly) (b! Poly)) (!
   (= (ens%vstd.seq_lib.impl&%0.add_empty_right. A&. A& a! b!) (= (vstd!seq.Seq.add.? A&.
      A& a! b!
     ) a!
   ))
   :pattern ((ens%vstd.seq_lib.impl&%0.add_empty_right. A&. A& a! b!))
   :qid internal_ens__vstd.seq_lib.impl&__0.add_empty_right._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.add_empty_right._definition
)))

;; Broadcast crate::vstd::seq::Seq::add_empty_right
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.add_empty_right.)
  (forall ((A&. Dcr) (A& Type) (a! Poly) (b! Poly)) (!
    (=>
     (and
      (has_type a! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type b! (TYPE%vstd.seq.Seq. A&. A&))
     )
     (=>
      (= (vstd!seq.Seq.len.? A&. A& b!) 0)
      (= (vstd!seq.Seq.add.? A&. A& a! b!) a!)
    ))
    :pattern ((vstd!seq.Seq.add.? A&. A& a! b!))
    :qid user_crate__vstd__seq__Seq__add_empty_right_70
    :skolemid skolem_user_crate__vstd__seq__Seq__add_empty_right_70
))))

;; Function-Specs crate::vstd::seq::Seq::push_distributes_over_add
(declare-fun ens%vstd.seq_lib.impl&%0.push_distributes_over_add. (Dcr Type Poly Poly
  Poly
 ) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (a! Poly) (b! Poly) (elt! Poly)) (!
   (= (ens%vstd.seq_lib.impl&%0.push_distributes_over_add. A&. A& a! b! elt!) (= (vstd!seq.Seq.push.?
      A&. A& (vstd!seq.Seq.add.? A&. A& a! b!) elt!
     ) (vstd!seq.Seq.add.? A&. A& a! (vstd!seq.Seq.push.? A&. A& b! elt!))
   ))
   :pattern ((ens%vstd.seq_lib.impl&%0.push_distributes_over_add. A&. A& a! b! elt!))
   :qid internal_ens__vstd.seq_lib.impl&__0.push_distributes_over_add._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.push_distributes_over_add._definition
)))

;; Broadcast crate::vstd::seq::Seq::push_distributes_over_add
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.push_distributes_over_add.)
  (forall ((A&. Dcr) (A& Type) (a! Poly) (b! Poly) (elt! Poly)) (!
    (=>
     (and
      (has_type a! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type b! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type elt! A&)
     )
     (= (vstd!seq.Seq.push.? A&. A& (vstd!seq.Seq.add.? A&. A& a! b!) elt!) (vstd!seq.Seq.add.?
       A&. A& a! (vstd!seq.Seq.push.? A&. A& b! elt!)
    )))
    :pattern ((vstd!seq.Seq.push.? A&. A& (vstd!seq.Seq.add.? A&. A& a! b!) elt!))
    :qid user_crate__vstd__seq__Seq__push_distributes_over_add_71
    :skolemid skolem_user_crate__vstd__seq__Seq__push_distributes_over_add_71
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

;; Function-Specs crate::vstd::seq::Seq::drop_last_distributes_over_add
(declare-fun req%vstd.seq_lib.impl&%0.drop_last_distributes_over_add. (Dcr Type Poly
  Poly
 ) Bool
)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (a! Poly) (b! Poly)) (!
   (= (req%vstd.seq_lib.impl&%0.drop_last_distributes_over_add. A&. A& a! b!) (=>
     %%global_location_label%%8
     (< 0 (vstd!seq.Seq.len.? A&. A& b!))
   ))
   :pattern ((req%vstd.seq_lib.impl&%0.drop_last_distributes_over_add. A&. A& a! b!))
   :qid internal_req__vstd.seq_lib.impl&__0.drop_last_distributes_over_add._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.drop_last_distributes_over_add._definition
)))
(declare-fun ens%vstd.seq_lib.impl&%0.drop_last_distributes_over_add. (Dcr Type Poly
  Poly
 ) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (a! Poly) (b! Poly)) (!
   (= (ens%vstd.seq_lib.impl&%0.drop_last_distributes_over_add. A&. A& a! b!) (= (vstd.seq_lib.impl&%0.drop_last.?
      A&. A& (vstd!seq.Seq.add.? A&. A& a! b!)
     ) (vstd!seq.Seq.add.? A&. A& a! (vstd.seq_lib.impl&%0.drop_last.? A&. A& b!))
   ))
   :pattern ((ens%vstd.seq_lib.impl&%0.drop_last_distributes_over_add. A&. A& a! b!))
   :qid internal_ens__vstd.seq_lib.impl&__0.drop_last_distributes_over_add._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.drop_last_distributes_over_add._definition
)))

;; Function-Specs crate::vstd::seq::Seq::filter_distributes_over_add
(declare-fun ens%vstd.seq_lib.impl&%0.filter_distributes_over_add. (Dcr Type Poly Poly
  %%Function%%
 ) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (a! Poly) (b! Poly) (pred! %%Function%%)) (!
   (= (ens%vstd.seq_lib.impl&%0.filter_distributes_over_add. A&. A& a! b! pred!) (= (vstd.seq_lib.impl&%0.filter.?
      A&. A& (vstd!seq.Seq.add.? A&. A& a! b!) (Poly%fun%1. pred!)
     ) (vstd!seq.Seq.add.? A&. A& (vstd.seq_lib.impl&%0.filter.? A&. A& a! (Poly%fun%1. pred!))
      (vstd.seq_lib.impl&%0.filter.? A&. A& b! (Poly%fun%1. pred!))
   )))
   :pattern ((ens%vstd.seq_lib.impl&%0.filter_distributes_over_add. A&. A& a! b! pred!))
   :qid internal_ens__vstd.seq_lib.impl&__0.filter_distributes_over_add._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.filter_distributes_over_add._definition
)))

;; Broadcast crate::vstd::seq::Seq::filter_distributes_over_add
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.filter_distributes_over_add.)
  (forall ((A&. Dcr) (A& Type) (a! Poly) (b! Poly) (pred! Poly)) (!
    (=>
     (and
      (has_type a! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type b! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type pred! (TYPE%fun%1. A&. A& $ BOOL))
     )
     (= (vstd.seq_lib.impl&%0.filter.? A&. A& (vstd!seq.Seq.add.? A&. A& a! b!) pred!)
      (vstd!seq.Seq.add.? A&. A& (vstd.seq_lib.impl&%0.filter.? A&. A& a! pred!) (vstd.seq_lib.impl&%0.filter.?
        A&. A& b! pred!
    ))))
    :pattern ((vstd.seq_lib.impl&%0.filter.? A&. A& (vstd!seq.Seq.add.? A&. A& a! b!) pred!))
    :qid user_crate__vstd__seq__Seq__filter_distributes_over_add_74
    :skolemid skolem_user_crate__vstd__seq__Seq__filter_distributes_over_add_74
))))

;; Function-Axioms crate::vstd::seq::Seq::to_set
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.to_set.)
)
(declare-fun %%lambda%%0 (Dcr Type Poly) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (a$ Poly)) (!
   (= (%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2) a$) (B (vstd.seq_lib.impl&%0.contains.?
      %%hole%%0 %%hole%%1 %%hole%%2 a$
   )))
   :pattern ((%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2) a$))
)))
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.to_set.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (= (vstd.seq_lib.impl&%0.to_set.? A&. A& self!) (vstd.set.impl&%0.new.? A&. A& $ (TYPE%fun%1.
       A&. A& $ BOOL
      ) (Poly%fun%1. (mk_fun (%%lambda%%0 A&. A& self!)))
    ))
    :pattern ((vstd.seq_lib.impl&%0.to_set.? A&. A& self!))
    :qid internal_vstd.seq_lib.impl&__0.to_set.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.to_set.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
    (has_type (vstd.seq_lib.impl&%0.to_set.? A&. A& self!) (TYPE%vstd.set.Set. A&. A&))
   )
   :pattern ((vstd.seq_lib.impl&%0.to_set.? A&. A& self!))
   :qid internal_vstd.seq_lib.impl&__0.to_set.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.to_set.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::seq_lib::seq_to_set_rec
(assert
 (fuel_bool_default fuel%vstd.seq_lib.seq_to_set_rec.)
)
(declare-const fuel_nat%vstd.seq_lib.seq_to_set_rec. Fuel)
(assert
 (forall ((A&. Dcr) (A& Type) (seq! Poly) (fuel% Fuel)) (!
   (= (vstd.seq_lib.rec%seq_to_set_rec.? A&. A& seq! fuel%) (vstd.seq_lib.rec%seq_to_set_rec.?
     A&. A& seq! zero
   ))
   :pattern ((vstd.seq_lib.rec%seq_to_set_rec.? A&. A& seq! fuel%))
   :qid internal_vstd.seq_lib.seq_to_set_rec._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.seq_lib.seq_to_set_rec._fuel_to_zero_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (seq! Poly) (fuel% Fuel)) (!
   (=>
    (has_type seq! (TYPE%vstd.seq.Seq. A&. A&))
    (= (vstd.seq_lib.rec%seq_to_set_rec.? A&. A& seq! (succ fuel%)) (ite
      (= (vstd!seq.Seq.len.? A&. A& seq!) 0)
      (vstd.set.impl&%0.empty.? A&. A&)
      (vstd.set.impl&%0.insert.? A&. A& (vstd.seq_lib.rec%seq_to_set_rec.? A&. A& (vstd.seq_lib.impl&%0.drop_last.?
         A&. A& seq!
        ) fuel%
       ) (vstd!seq.Seq.last.? A&. A& seq!)
   ))))
   :pattern ((vstd.seq_lib.rec%seq_to_set_rec.? A&. A& seq! (succ fuel%)))
   :qid internal_vstd.seq_lib.seq_to_set_rec._fuel_to_body_definition
   :skolemid skolem_internal_vstd.seq_lib.seq_to_set_rec._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.seq_to_set_rec.)
  (forall ((A&. Dcr) (A& Type) (seq! Poly)) (!
    (=>
     (has_type seq! (TYPE%vstd.seq.Seq. A&. A&))
     (= (vstd.seq_lib.seq_to_set_rec.? A&. A& seq!) (vstd.seq_lib.rec%seq_to_set_rec.? A&.
       A& seq! (succ fuel_nat%vstd.seq_lib.seq_to_set_rec.)
    )))
    :pattern ((vstd.seq_lib.seq_to_set_rec.? A&. A& seq!))
    :qid internal_vstd.seq_lib.seq_to_set_rec.?_definition
    :skolemid skolem_internal_vstd.seq_lib.seq_to_set_rec.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (seq! Poly)) (!
   (=>
    (has_type seq! (TYPE%vstd.seq.Seq. A&. A&))
    (has_type (vstd.seq_lib.seq_to_set_rec.? A&. A& seq!) (TYPE%vstd.set.Set. A&. A&))
   )
   :pattern ((vstd.seq_lib.seq_to_set_rec.? A&. A& seq!))
   :qid internal_vstd.seq_lib.seq_to_set_rec.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.seq_to_set_rec.?_pre_post_definition
)))

;; Function-Specs crate::vstd::seq_lib::seq_to_set_rec_contains
(declare-fun ens%vstd.seq_lib.seq_to_set_rec_contains. (Dcr Type Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (seq! Poly)) (!
   (= (ens%vstd.seq_lib.seq_to_set_rec_contains. A&. A& seq!) (forall ((a$ Poly)) (!
      (=>
       (has_type a$ A&)
       (= (vstd.seq_lib.impl&%0.contains.? A&. A& seq! a$) (vstd.set.impl&%0.contains.? A&.
         A& (vstd.seq_lib.seq_to_set_rec.? A&. A& seq!) a$
      )))
      :pattern ((vstd.seq_lib.impl&%0.contains.? A&. A& seq! a$))
      :qid user_crate__vstd__seq_lib__seq_to_set_rec_contains_75
      :skolemid skolem_user_crate__vstd__seq_lib__seq_to_set_rec_contains_75
   )))
   :pattern ((ens%vstd.seq_lib.seq_to_set_rec_contains. A&. A& seq!))
   :qid internal_ens__vstd.seq_lib.seq_to_set_rec_contains._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.seq_to_set_rec_contains._definition
)))

;; Function-Specs crate::vstd::seq_lib::seq_to_set_equal_rec
(declare-fun ens%vstd.seq_lib.seq_to_set_equal_rec. (Dcr Type Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (seq! Poly)) (!
   (= (ens%vstd.seq_lib.seq_to_set_equal_rec. A&. A& seq!) (= (vstd.seq_lib.impl&%0.to_set.?
      A&. A& seq!
     ) (vstd.seq_lib.seq_to_set_rec.? A&. A& seq!)
   ))
   :pattern ((ens%vstd.seq_lib.seq_to_set_equal_rec. A&. A& seq!))
   :qid internal_ens__vstd.seq_lib.seq_to_set_equal_rec._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.seq_to_set_equal_rec._definition
)))

;; Function-Specs crate::vstd::seq_lib::seq_to_set_rec_is_finite
(declare-fun ens%vstd.seq_lib.seq_to_set_rec_is_finite. (Dcr Type Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (seq! Poly)) (!
   (= (ens%vstd.seq_lib.seq_to_set_rec_is_finite. A&. A& seq!) (vstd.set.impl&%0.finite.?
     A&. A& (vstd.seq_lib.seq_to_set_rec.? A&. A& seq!)
   ))
   :pattern ((ens%vstd.seq_lib.seq_to_set_rec_is_finite. A&. A& seq!))
   :qid internal_ens__vstd.seq_lib.seq_to_set_rec_is_finite._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.seq_to_set_rec_is_finite._definition
)))

;; Function-Specs crate::vstd::seq_lib::seq_to_set_is_finite
(declare-fun ens%vstd.seq_lib.seq_to_set_is_finite. (Dcr Type Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (seq! Poly)) (!
   (= (ens%vstd.seq_lib.seq_to_set_is_finite. A&. A& seq!) (vstd.set.impl&%0.finite.?
     A&. A& (vstd.seq_lib.impl&%0.to_set.? A&. A& seq!)
   ))
   :pattern ((ens%vstd.seq_lib.seq_to_set_is_finite. A&. A& seq!))
   :qid internal_ens__vstd.seq_lib.seq_to_set_is_finite._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.seq_to_set_is_finite._definition
)))

;; Broadcast crate::vstd::seq_lib::seq_to_set_is_finite
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.seq_to_set_is_finite.)
  (forall ((A&. Dcr) (A& Type) (seq! Poly)) (!
    (=>
     (has_type seq! (TYPE%vstd.seq.Seq. A&. A&))
     (vstd.set.impl&%0.finite.? A&. A& (vstd.seq_lib.impl&%0.to_set.? A&. A& seq!))
    )
    :pattern ((vstd.set.impl&%0.finite.? A&. A& (vstd.seq_lib.impl&%0.to_set.? A&. A& seq!)))
    :qid user_crate__vstd__seq_lib__seq_to_set_is_finite_86
    :skolemid skolem_user_crate__vstd__seq_lib__seq_to_set_is_finite_86
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
(declare-const %%global_location_label%%9 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (req%vstd.seq.impl&%0.first. A&. A& self!) (=>
     %%global_location_label%%9
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

;; Function-Axioms crate::vstd::seq::Seq::map
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.map.)
)
(declare-fun %%lambda%%1 (Dcr Type Poly %%Function%%) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 %%Function%%)
   (i$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) i$) (%%apply%%1
     %%hole%%3 i$ (vstd!seq.Seq.index.? %%hole%%0 %%hole%%1 %%hole%%2 i$)
   ))
   :pattern ((%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) i$))
)))
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.map.)
  (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (f! Poly)) (!
    (= (vstd.seq_lib.impl&%0.map.? A&. A& B&. B& self! f!) (vstd!seq.Seq.new.? B&. B& $
      (TYPE%fun%1. $ INT B&. B&) (I (vstd!seq.Seq.len.? A&. A& self!)) (Poly%fun%1. (mk_fun
        (%%lambda%%1 A&. A& self! (%Poly%fun%2. f!))
    ))))
    :pattern ((vstd.seq_lib.impl&%0.map.? A&. A& B&. B& self! f!))
    :qid internal_vstd.seq_lib.impl&__0.map.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.map.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (f! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type f! (TYPE%fun%2. $ INT A&. A& B&. B&))
    )
    (has_type (vstd.seq_lib.impl&%0.map.? A&. A& B&. B& self! f!) (TYPE%vstd.seq.Seq. B&.
      B&
   )))
   :pattern ((vstd.seq_lib.impl&%0.map.? A&. A& B&. B& self! f!))
   :qid internal_vstd.seq_lib.impl&__0.map.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.map.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::seq::Seq::map_values
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.map_values.)
)
(declare-fun %%lambda%%2 (Dcr Type Poly %%Function%%) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 %%Function%%)
   (i$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%2 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) i$) (%%apply%%0
     %%hole%%3 (vstd!seq.Seq.index.? %%hole%%0 %%hole%%1 %%hole%%2 i$)
   ))
   :pattern ((%%apply%%0 (%%lambda%%2 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) i$))
)))
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.map_values.)
  (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (f! Poly)) (!
    (= (vstd.seq_lib.impl&%0.map_values.? A&. A& B&. B& self! f!) (vstd!seq.Seq.new.? B&.
      B& $ (TYPE%fun%1. $ INT B&. B&) (I (vstd!seq.Seq.len.? A&. A& self!)) (Poly%fun%1.
       (mk_fun (%%lambda%%2 A&. A& self! (%Poly%fun%1. f!)))
    )))
    :pattern ((vstd.seq_lib.impl&%0.map_values.? A&. A& B&. B& self! f!))
    :qid internal_vstd.seq_lib.impl&__0.map_values.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.map_values.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (f! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type f! (TYPE%fun%1. A&. A& B&. B&))
    )
    (has_type (vstd.seq_lib.impl&%0.map_values.? A&. A& B&. B& self! f!) (TYPE%vstd.seq.Seq.
      B&. B&
   )))
   :pattern ((vstd.seq_lib.impl&%0.map_values.? A&. A& B&. B& self! f!))
   :qid internal_vstd.seq_lib.impl&__0.map_values.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.map_values.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::seq::Seq::is_prefix_of
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.is_prefix_of.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.is_prefix_of.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (other! Poly)) (!
    (= (vstd.seq_lib.impl&%0.is_prefix_of.? A&. A& self! other!) (and
      (<= (vstd!seq.Seq.len.? A&. A& self!) (vstd!seq.Seq.len.? A&. A& other!))
      (ext_eq false (TYPE%vstd.seq.Seq. A&. A&) self! (vstd!seq.Seq.subrange.? A&. A& other!
        (I 0) (I (vstd!seq.Seq.len.? A&. A& self!))
    ))))
    :pattern ((vstd.seq_lib.impl&%0.is_prefix_of.? A&. A& self! other!))
    :qid internal_vstd.seq_lib.impl&__0.is_prefix_of.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.is_prefix_of.?_definition
))))

;; Function-Axioms crate::vstd::seq::Seq::is_suffix_of
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.is_suffix_of.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.is_suffix_of.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (other! Poly)) (!
    (= (vstd.seq_lib.impl&%0.is_suffix_of.? A&. A& self! other!) (and
      (<= (vstd!seq.Seq.len.? A&. A& self!) (vstd!seq.Seq.len.? A&. A& other!))
      (ext_eq false (TYPE%vstd.seq.Seq. A&. A&) self! (vstd!seq.Seq.subrange.? A&. A& other!
        (I (Sub (vstd!seq.Seq.len.? A&. A& other!) (vstd!seq.Seq.len.? A&. A& self!))) (I
         (vstd!seq.Seq.len.? A&. A& other!)
    )))))
    :pattern ((vstd.seq_lib.impl&%0.is_suffix_of.? A&. A& self! other!))
    :qid internal_vstd.seq_lib.impl&__0.is_suffix_of.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.is_suffix_of.?_definition
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
       :qid user_crate__vstd__relations__reflexive_88
       :skolemid skolem_user_crate__vstd__relations__reflexive_88
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
       :qid user_crate__vstd__relations__antisymmetric_89
       :skolemid skolem_user_crate__vstd__relations__antisymmetric_89
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
       :qid user_crate__vstd__relations__transitive_90
       :skolemid skolem_user_crate__vstd__relations__transitive_90
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
       :qid user_crate__vstd__relations__strongly_connected_91
       :skolemid skolem_user_crate__vstd__relations__strongly_connected_91
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
       :qid user_crate__vstd__relations__sorted_by_92
       :skolemid skolem_user_crate__vstd__relations__sorted_by_92
    )))
    :pattern ((vstd.relations.sorted_by.? T&. T& a! less_than!))
    :qid internal_vstd.relations.sorted_by.?_definition
    :skolemid skolem_internal_vstd.relations.sorted_by.?_definition
))))

;; Function-Specs crate::vstd::seq::Seq::drop_first
(declare-fun req%vstd.seq_lib.impl&%0.drop_first. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%10 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (req%vstd.seq_lib.impl&%0.drop_first. A&. A& self!) (=>
     %%global_location_label%%10
     (>= (vstd!seq.Seq.len.? A&. A& self!) 1)
   ))
   :pattern ((req%vstd.seq_lib.impl&%0.drop_first. A&. A& self!))
   :qid internal_req__vstd.seq_lib.impl&__0.drop_first._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.drop_first._definition
)))

;; Function-Axioms crate::vstd::seq::Seq::drop_first
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.drop_first.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.drop_first.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (= (vstd.seq_lib.impl&%0.drop_first.? A&. A& self!) (vstd!seq.Seq.subrange.? A&. A&
      self! (I 1) (I (vstd!seq.Seq.len.? A&. A& self!))
    ))
    :pattern ((vstd.seq_lib.impl&%0.drop_first.? A&. A& self!))
    :qid internal_vstd.seq_lib.impl&__0.drop_first.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.drop_first.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
    (has_type (vstd.seq_lib.impl&%0.drop_first.? A&. A& self!) (TYPE%vstd.seq.Seq. A&.
      A&
   )))
   :pattern ((vstd.seq_lib.impl&%0.drop_first.? A&. A& self!))
   :qid internal_vstd.seq_lib.impl&__0.drop_first.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.drop_first.?_pre_post_definition
)))

;; Function-Specs crate::vstd::seq_lib::merge_sorted_with
(declare-fun req%vstd.seq_lib.merge_sorted_with. (Dcr Type Poly Poly Poly) Bool)
(declare-const %%global_location_label%%11 Bool)
(declare-const %%global_location_label%%12 Bool)
(declare-const %%global_location_label%%13 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (left! Poly) (right! Poly) (leq! Poly)) (!
   (= (req%vstd.seq_lib.merge_sorted_with. A&. A& left! right! leq!) (and
     (=>
      %%global_location_label%%11
      (vstd.relations.sorted_by.? A&. A& left! leq!)
     )
     (=>
      %%global_location_label%%12
      (vstd.relations.sorted_by.? A&. A& right! leq!)
     )
     (=>
      %%global_location_label%%13
      (vstd.relations.total_ordering.? A&. A& leq!)
   )))
   :pattern ((req%vstd.seq_lib.merge_sorted_with. A&. A& left! right! leq!))
   :qid internal_req__vstd.seq_lib.merge_sorted_with._definition
   :skolemid skolem_internal_req__vstd.seq_lib.merge_sorted_with._definition
)))

;; Function-Axioms crate::vstd::seq_lib::merge_sorted_with
(assert
 (fuel_bool_default fuel%vstd.seq_lib.merge_sorted_with.)
)
(declare-const fuel_nat%vstd.seq_lib.merge_sorted_with. Fuel)
(assert
 (forall ((A&. Dcr) (A& Type) (left! Poly) (right! Poly) (leq! Poly) (fuel% Fuel))
  (!
   (= (vstd.seq_lib.rec%merge_sorted_with.? A&. A& left! right! leq! fuel%) (vstd.seq_lib.rec%merge_sorted_with.?
     A&. A& left! right! leq! zero
   ))
   :pattern ((vstd.seq_lib.rec%merge_sorted_with.? A&. A& left! right! leq! fuel%))
   :qid internal_vstd.seq_lib.merge_sorted_with._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.seq_lib.merge_sorted_with._fuel_to_zero_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (left! Poly) (right! Poly) (leq! Poly) (fuel% Fuel))
  (!
   (=>
    (and
     (has_type left! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type right! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type leq! (TYPE%fun%2. A&. A& A&. A& $ BOOL))
    )
    (= (vstd.seq_lib.rec%merge_sorted_with.? A&. A& left! right! leq! (succ fuel%)) (ite
      (= (vstd!seq.Seq.len.? A&. A& left!) 0)
      right!
      (ite
       (= (vstd!seq.Seq.len.? A&. A& right!) 0)
       left!
       (ite
        (%B (%%apply%%1 (%Poly%fun%2. leq!) (vstd.seq.impl&%0.first.? A&. A& left!) (vstd.seq.impl&%0.first.?
           A&. A& right!
        )))
        (vstd!seq.Seq.add.? A&. A& (vstd!seq.Seq.push.? A&. A& (vstd!seq.Seq.empty.? A&. A&)
          (vstd.seq.impl&%0.first.? A&. A& left!)
         ) (vstd.seq_lib.rec%merge_sorted_with.? A&. A& (vstd.seq_lib.impl&%0.drop_first.? A&.
           A& left!
          ) right! leq! fuel%
        ))
        (vstd!seq.Seq.add.? A&. A& (vstd!seq.Seq.push.? A&. A& (vstd!seq.Seq.empty.? A&. A&)
          (vstd.seq.impl&%0.first.? A&. A& right!)
         ) (vstd.seq_lib.rec%merge_sorted_with.? A&. A& left! (vstd.seq_lib.impl&%0.drop_first.?
           A&. A& right!
          ) leq! fuel%
   )))))))
   :pattern ((vstd.seq_lib.rec%merge_sorted_with.? A&. A& left! right! leq! (succ fuel%)))
   :qid internal_vstd.seq_lib.merge_sorted_with._fuel_to_body_definition
   :skolemid skolem_internal_vstd.seq_lib.merge_sorted_with._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.merge_sorted_with.)
  (forall ((A&. Dcr) (A& Type) (left! Poly) (right! Poly) (leq! Poly)) (!
    (=>
     (and
      (has_type left! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type right! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type leq! (TYPE%fun%2. A&. A& A&. A& $ BOOL))
     )
     (= (vstd.seq_lib.merge_sorted_with.? A&. A& left! right! leq!) (vstd.seq_lib.rec%merge_sorted_with.?
       A&. A& left! right! leq! (succ fuel_nat%vstd.seq_lib.merge_sorted_with.)
    )))
    :pattern ((vstd.seq_lib.merge_sorted_with.? A&. A& left! right! leq!))
    :qid internal_vstd.seq_lib.merge_sorted_with.?_definition
    :skolemid skolem_internal_vstd.seq_lib.merge_sorted_with.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (left! Poly) (right! Poly) (leq! Poly)) (!
   (=>
    (and
     (has_type left! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type right! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type leq! (TYPE%fun%2. A&. A& A&. A& $ BOOL))
    )
    (has_type (vstd.seq_lib.merge_sorted_with.? A&. A& left! right! leq!) (TYPE%vstd.seq.Seq.
      A&. A&
   )))
   :pattern ((vstd.seq_lib.merge_sorted_with.? A&. A& left! right! leq!))
   :qid internal_vstd.seq_lib.merge_sorted_with.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.merge_sorted_with.?_pre_post_definition
)))

;; Function-Specs crate::vstd::seq::Seq::sort_by
(declare-fun req%vstd.seq_lib.impl&%0.sort_by. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%14 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (leq! Poly)) (!
   (= (req%vstd.seq_lib.impl&%0.sort_by. A&. A& self! leq!) (=>
     %%global_location_label%%14
     (vstd.relations.total_ordering.? A&. A& leq!)
   ))
   :pattern ((req%vstd.seq_lib.impl&%0.sort_by. A&. A& self! leq!))
   :qid internal_req__vstd.seq_lib.impl&__0.sort_by._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.sort_by._definition
)))

;; Function-Axioms crate::vstd::seq::Seq::sort_by
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.sort_by.)
)
(declare-const fuel_nat%vstd.seq_lib.impl&%0.sort_by. Fuel)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (leq! Poly) (fuel% Fuel)) (!
   (= (vstd.seq_lib.impl&%0.rec%sort_by.? A&. A& self! leq! fuel%) (vstd.seq_lib.impl&%0.rec%sort_by.?
     A&. A& self! leq! zero
   ))
   :pattern ((vstd.seq_lib.impl&%0.rec%sort_by.? A&. A& self! leq! fuel%))
   :qid internal_vstd.seq_lib.impl&__0.sort_by._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.sort_by._fuel_to_zero_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (leq! Poly) (fuel% Fuel)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type leq! (TYPE%fun%2. A&. A& A&. A& $ BOOL))
    )
    (= (vstd.seq_lib.impl&%0.rec%sort_by.? A&. A& self! leq! (succ fuel%)) (ite
      (<= (vstd!seq.Seq.len.? A&. A& self!) 1)
      self!
      (let
       ((split_index$ (nClip (EucDiv (vstd!seq.Seq.len.? A&. A& self!) 2))))
       (let
        ((left$ (vstd!seq.Seq.subrange.? A&. A& self! (I 0) (I split_index$))))
        (let
         ((right$ (vstd!seq.Seq.subrange.? A&. A& self! (I split_index$) (I (vstd!seq.Seq.len.?
              A&. A& self!
         )))))
         (let
          ((left_sorted$ (vstd.seq_lib.impl&%0.rec%sort_by.? A&. A& left$ leq! fuel%)))
          (let
           ((right_sorted$ (vstd.seq_lib.impl&%0.rec%sort_by.? A&. A& right$ leq! fuel%)))
           (vstd.seq_lib.merge_sorted_with.? A&. A& left_sorted$ right_sorted$ leq!)
   ))))))))
   :pattern ((vstd.seq_lib.impl&%0.rec%sort_by.? A&. A& self! leq! (succ fuel%)))
   :qid internal_vstd.seq_lib.impl&__0.sort_by._fuel_to_body_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.sort_by._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.sort_by.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (leq! Poly)) (!
    (=>
     (and
      (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type leq! (TYPE%fun%2. A&. A& A&. A& $ BOOL))
     )
     (= (vstd.seq_lib.impl&%0.sort_by.? A&. A& self! leq!) (vstd.seq_lib.impl&%0.rec%sort_by.?
       A&. A& self! leq! (succ fuel_nat%vstd.seq_lib.impl&%0.sort_by.)
    )))
    :pattern ((vstd.seq_lib.impl&%0.sort_by.? A&. A& self! leq!))
    :qid internal_vstd.seq_lib.impl&__0.sort_by.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.sort_by.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (leq! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type leq! (TYPE%fun%2. A&. A& A&. A& $ BOOL))
    )
    (has_type (vstd.seq_lib.impl&%0.sort_by.? A&. A& self! leq!) (TYPE%vstd.seq.Seq. A&.
      A&
   )))
   :pattern ((vstd.seq_lib.impl&%0.sort_by.? A&. A& self! leq!))
   :qid internal_vstd.seq_lib.impl&__0.sort_by.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.sort_by.?_pre_post_definition
)))

;; Function-Specs crate::vstd::seq::Seq::max_via
(declare-fun req%vstd.seq_lib.impl&%0.max_via. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%15 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (leq! Poly)) (!
   (= (req%vstd.seq_lib.impl&%0.max_via. A&. A& self! leq!) (=>
     %%global_location_label%%15
     (> (vstd!seq.Seq.len.? A&. A& self!) 0)
   ))
   :pattern ((req%vstd.seq_lib.impl&%0.max_via. A&. A& self! leq!))
   :qid internal_req__vstd.seq_lib.impl&__0.max_via._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.max_via._definition
)))

;; Function-Axioms crate::vstd::seq::Seq::max_via
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.max_via.)
)
(declare-const fuel_nat%vstd.seq_lib.impl&%0.max_via. Fuel)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (leq! Poly) (fuel% Fuel)) (!
   (= (vstd.seq_lib.impl&%0.rec%max_via.? A&. A& self! leq! fuel%) (vstd.seq_lib.impl&%0.rec%max_via.?
     A&. A& self! leq! zero
   ))
   :pattern ((vstd.seq_lib.impl&%0.rec%max_via.? A&. A& self! leq! fuel%))
   :qid internal_vstd.seq_lib.impl&__0.max_via._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.max_via._fuel_to_zero_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (leq! Poly) (fuel% Fuel)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type leq! (TYPE%fun%2. A&. A& A&. A& $ BOOL))
    )
    (= (vstd.seq_lib.impl&%0.rec%max_via.? A&. A& self! leq! (succ fuel%)) (ite
      (> (vstd!seq.Seq.len.? A&. A& self!) 1)
      (ite
       (%B (%%apply%%1 (%Poly%fun%2. leq!) (vstd!seq.Seq.index.? A&. A& self! (I 0)) (vstd.seq_lib.impl&%0.rec%max_via.?
          A&. A& (vstd!seq.Seq.subrange.? A&. A& self! (I 1) (I (vstd!seq.Seq.len.? A&. A& self!)))
          leq! fuel%
       )))
       (vstd.seq_lib.impl&%0.rec%max_via.? A&. A& (vstd!seq.Seq.subrange.? A&. A& self! (I
          1
         ) (I (vstd!seq.Seq.len.? A&. A& self!))
        ) leq! fuel%
       )
       (vstd!seq.Seq.index.? A&. A& self! (I 0))
      )
      (vstd!seq.Seq.index.? A&. A& self! (I 0))
   )))
   :pattern ((vstd.seq_lib.impl&%0.rec%max_via.? A&. A& self! leq! (succ fuel%)))
   :qid internal_vstd.seq_lib.impl&__0.max_via._fuel_to_body_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.max_via._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.max_via.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (leq! Poly)) (!
    (=>
     (and
      (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type leq! (TYPE%fun%2. A&. A& A&. A& $ BOOL))
     )
     (= (vstd.seq_lib.impl&%0.max_via.? A&. A& self! leq!) (vstd.seq_lib.impl&%0.rec%max_via.?
       A&. A& self! leq! (succ fuel_nat%vstd.seq_lib.impl&%0.max_via.)
    )))
    :pattern ((vstd.seq_lib.impl&%0.max_via.? A&. A& self! leq!))
    :qid internal_vstd.seq_lib.impl&__0.max_via.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.max_via.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (leq! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type leq! (TYPE%fun%2. A&. A& A&. A& $ BOOL))
    )
    (has_type (vstd.seq_lib.impl&%0.max_via.? A&. A& self! leq!) A&)
   )
   :pattern ((vstd.seq_lib.impl&%0.max_via.? A&. A& self! leq!))
   :qid internal_vstd.seq_lib.impl&__0.max_via.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.max_via.?_pre_post_definition
)))

;; Function-Specs crate::vstd::seq::Seq::min_via
(declare-fun req%vstd.seq_lib.impl&%0.min_via. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%16 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (leq! Poly)) (!
   (= (req%vstd.seq_lib.impl&%0.min_via. A&. A& self! leq!) (=>
     %%global_location_label%%16
     (> (vstd!seq.Seq.len.? A&. A& self!) 0)
   ))
   :pattern ((req%vstd.seq_lib.impl&%0.min_via. A&. A& self! leq!))
   :qid internal_req__vstd.seq_lib.impl&__0.min_via._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.min_via._definition
)))

;; Function-Axioms crate::vstd::seq::Seq::min_via
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.min_via.)
)
(declare-const fuel_nat%vstd.seq_lib.impl&%0.min_via. Fuel)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (leq! Poly) (fuel% Fuel)) (!
   (= (vstd.seq_lib.impl&%0.rec%min_via.? A&. A& self! leq! fuel%) (vstd.seq_lib.impl&%0.rec%min_via.?
     A&. A& self! leq! zero
   ))
   :pattern ((vstd.seq_lib.impl&%0.rec%min_via.? A&. A& self! leq! fuel%))
   :qid internal_vstd.seq_lib.impl&__0.min_via._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.min_via._fuel_to_zero_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (leq! Poly) (fuel% Fuel)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type leq! (TYPE%fun%2. A&. A& A&. A& $ BOOL))
    )
    (= (vstd.seq_lib.impl&%0.rec%min_via.? A&. A& self! leq! (succ fuel%)) (ite
      (> (vstd!seq.Seq.len.? A&. A& self!) 1)
      (let
       ((subseq$ (vstd!seq.Seq.subrange.? A&. A& self! (I 1) (I (vstd!seq.Seq.len.? A&. A& self!)))))
       (let
        ((elt$ (vstd.seq_lib.impl&%0.rec%min_via.? A&. A& subseq$ leq! fuel%)))
        (ite
         (%B (%%apply%%1 (%Poly%fun%2. leq!) elt$ (vstd!seq.Seq.index.? A&. A& self! (I 0))))
         elt$
         (vstd!seq.Seq.index.? A&. A& self! (I 0))
      )))
      (vstd!seq.Seq.index.? A&. A& self! (I 0))
   )))
   :pattern ((vstd.seq_lib.impl&%0.rec%min_via.? A&. A& self! leq! (succ fuel%)))
   :qid internal_vstd.seq_lib.impl&__0.min_via._fuel_to_body_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.min_via._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.min_via.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (leq! Poly)) (!
    (=>
     (and
      (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type leq! (TYPE%fun%2. A&. A& A&. A& $ BOOL))
     )
     (= (vstd.seq_lib.impl&%0.min_via.? A&. A& self! leq!) (vstd.seq_lib.impl&%0.rec%min_via.?
       A&. A& self! leq! (succ fuel_nat%vstd.seq_lib.impl&%0.min_via.)
    )))
    :pattern ((vstd.seq_lib.impl&%0.min_via.? A&. A& self! leq!))
    :qid internal_vstd.seq_lib.impl&__0.min_via.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.min_via.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (leq! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type leq! (TYPE%fun%2. A&. A& A&. A& $ BOOL))
    )
    (has_type (vstd.seq_lib.impl&%0.min_via.? A&. A& self! leq!) A&)
   )
   :pattern ((vstd.seq_lib.impl&%0.min_via.? A&. A& self! leq!))
   :qid internal_vstd.seq_lib.impl&__0.min_via.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.min_via.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::seq::Seq::index_of
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.index_of.)
)
(declare-fun %%choose%%0 (Type Int Int Dcr Type Poly Poly Dcr Type Poly) Poly)
(assert
 (forall ((%%hole%%0 Type) (%%hole%%1 Int) (%%hole%%2 Int) (%%hole%%3 Dcr) (%%hole%%4
    Type
   ) (%%hole%%5 Poly) (%%hole%%6 Poly) (%%hole%%7 Dcr) (%%hole%%8 Type) (%%hole%%9 Poly)
  ) (!
   (=>
    (exists ((i$ Poly)) (!
      (and
       (has_type i$ %%hole%%0)
       (and
        (and
         (<= %%hole%%1 (%I i$))
         (< (%I i$) %%hole%%2)
        )
        (= (vstd!seq.Seq.index.? %%hole%%3 %%hole%%4 %%hole%%5 i$) %%hole%%6)
      ))
      :pattern ((vstd!seq.Seq.index.? %%hole%%7 %%hole%%8 %%hole%%9 i$))
      :qid user_crate__vstd__seq__Seq__index_of_93
      :skolemid skolem_user_crate__vstd__seq__Seq__index_of_93
    ))
    (exists ((i$ Poly)) (!
      (and
       (and
        (has_type i$ %%hole%%0)
        (and
         (and
          (<= %%hole%%1 (%I i$))
          (< (%I i$) %%hole%%2)
         )
         (= (vstd!seq.Seq.index.? %%hole%%3 %%hole%%4 %%hole%%5 i$) %%hole%%6)
       ))
       (= (%%choose%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5 %%hole%%6
         %%hole%%7 %%hole%%8 %%hole%%9
        ) i$
      ))
      :pattern ((vstd!seq.Seq.index.? %%hole%%7 %%hole%%8 %%hole%%9 i$))
   )))
   :pattern ((%%choose%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
     %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.index_of.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (needle! Poly)) (!
    (= (vstd.seq_lib.impl&%0.index_of.? A&. A& self! needle!) (%I (as_type (%%choose%%0 INT
        0 (vstd!seq.Seq.len.? A&. A& self!) A&. A& self! needle! A&. A& self!
       ) INT
    )))
    :pattern ((vstd.seq_lib.impl&%0.index_of.? A&. A& self! needle!))
    :qid internal_vstd.seq_lib.impl&__0.index_of.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.index_of.?_definition
))))

;; Function-Specs crate::vstd::seq::Seq::first_index_helper
(declare-fun req%vstd.seq_lib.impl&%0.first_index_helper. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%17 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (needle! Poly)) (!
   (= (req%vstd.seq_lib.impl&%0.first_index_helper. A&. A& self! needle!) (=>
     %%global_location_label%%17
     (vstd.seq_lib.impl&%0.contains.? A&. A& self! needle!)
   ))
   :pattern ((req%vstd.seq_lib.impl&%0.first_index_helper. A&. A& self! needle!))
   :qid internal_req__vstd.seq_lib.impl&__0.first_index_helper._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.first_index_helper._definition
)))

;; Function-Axioms crate::vstd::seq::Seq::first_index_helper
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.first_index_helper.)
)
(declare-const fuel_nat%vstd.seq_lib.impl&%0.first_index_helper. Fuel)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (needle! Poly) (fuel% Fuel)) (!
   (= (vstd.seq_lib.impl&%0.rec%first_index_helper.? A&. A& self! needle! fuel%) (vstd.seq_lib.impl&%0.rec%first_index_helper.?
     A&. A& self! needle! zero
   ))
   :pattern ((vstd.seq_lib.impl&%0.rec%first_index_helper.? A&. A& self! needle! fuel%))
   :qid internal_vstd.seq_lib.impl&__0.first_index_helper._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.first_index_helper._fuel_to_zero_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (needle! Poly) (fuel% Fuel)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type needle! A&)
    )
    (= (vstd.seq_lib.impl&%0.rec%first_index_helper.? A&. A& self! needle! (succ fuel%))
     (ite
      (<= (vstd!seq.Seq.len.? A&. A& self!) 0)
      (Sub 0 1)
      (ite
       (= (vstd!seq.Seq.index.? A&. A& self! (I 0)) needle!)
       0
       (Add 1 (vstd.seq_lib.impl&%0.rec%first_index_helper.? A&. A& (vstd!seq.Seq.subrange.?
          A&. A& self! (I 1) (I (vstd!seq.Seq.len.? A&. A& self!))
         ) needle! fuel%
   ))))))
   :pattern ((vstd.seq_lib.impl&%0.rec%first_index_helper.? A&. A& self! needle! (succ
      fuel%
   )))
   :qid internal_vstd.seq_lib.impl&__0.first_index_helper._fuel_to_body_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.first_index_helper._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.first_index_helper.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (needle! Poly)) (!
    (=>
     (and
      (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type needle! A&)
     )
     (= (vstd.seq_lib.impl&%0.first_index_helper.? A&. A& self! needle!) (vstd.seq_lib.impl&%0.rec%first_index_helper.?
       A&. A& self! needle! (succ fuel_nat%vstd.seq_lib.impl&%0.first_index_helper.)
    )))
    :pattern ((vstd.seq_lib.impl&%0.first_index_helper.? A&. A& self! needle!))
    :qid internal_vstd.seq_lib.impl&__0.first_index_helper.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.first_index_helper.?_definition
))))

;; Function-Axioms crate::vstd::seq::Seq::index_of_first
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.index_of_first.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.index_of_first.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (needle! Poly)) (!
    (= (vstd.seq_lib.impl&%0.index_of_first.? A&. A& self! needle!) (ite
      (vstd.seq_lib.impl&%0.contains.? A&. A& self! needle!)
      (core!option.Option./Some (I (vstd.seq_lib.impl&%0.first_index_helper.? A&. A& self!
         needle!
      )))
      core!option.Option./None
    ))
    :pattern ((vstd.seq_lib.impl&%0.index_of_first.? A&. A& self! needle!))
    :qid internal_vstd.seq_lib.impl&__0.index_of_first.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.index_of_first.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (needle! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type needle! A&)
    )
    (has_type (Poly%core!option.Option. (vstd.seq_lib.impl&%0.index_of_first.? A&. A& self!
       needle!
      )
     ) (TYPE%core!option.Option. $ INT)
   ))
   :pattern ((vstd.seq_lib.impl&%0.index_of_first.? A&. A& self! needle!))
   :qid internal_vstd.seq_lib.impl&__0.index_of_first.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.index_of_first.?_pre_post_definition
)))

;; Function-Specs crate::vstd::seq::Seq::last_index_helper
(declare-fun req%vstd.seq_lib.impl&%0.last_index_helper. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%18 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (needle! Poly)) (!
   (= (req%vstd.seq_lib.impl&%0.last_index_helper. A&. A& self! needle!) (=>
     %%global_location_label%%18
     (vstd.seq_lib.impl&%0.contains.? A&. A& self! needle!)
   ))
   :pattern ((req%vstd.seq_lib.impl&%0.last_index_helper. A&. A& self! needle!))
   :qid internal_req__vstd.seq_lib.impl&__0.last_index_helper._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.last_index_helper._definition
)))

;; Function-Axioms crate::vstd::seq::Seq::last_index_helper
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.last_index_helper.)
)
(declare-const fuel_nat%vstd.seq_lib.impl&%0.last_index_helper. Fuel)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (needle! Poly) (fuel% Fuel)) (!
   (= (vstd.seq_lib.impl&%0.rec%last_index_helper.? A&. A& self! needle! fuel%) (vstd.seq_lib.impl&%0.rec%last_index_helper.?
     A&. A& self! needle! zero
   ))
   :pattern ((vstd.seq_lib.impl&%0.rec%last_index_helper.? A&. A& self! needle! fuel%))
   :qid internal_vstd.seq_lib.impl&__0.last_index_helper._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.last_index_helper._fuel_to_zero_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (needle! Poly) (fuel% Fuel)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type needle! A&)
    )
    (= (vstd.seq_lib.impl&%0.rec%last_index_helper.? A&. A& self! needle! (succ fuel%))
     (ite
      (<= (vstd!seq.Seq.len.? A&. A& self!) 0)
      (Sub 0 1)
      (ite
       (= (vstd!seq.Seq.last.? A&. A& self!) needle!)
       (Sub (vstd!seq.Seq.len.? A&. A& self!) 1)
       (vstd.seq_lib.impl&%0.rec%last_index_helper.? A&. A& (vstd.seq_lib.impl&%0.drop_last.?
         A&. A& self!
        ) needle! fuel%
   )))))
   :pattern ((vstd.seq_lib.impl&%0.rec%last_index_helper.? A&. A& self! needle! (succ fuel%)))
   :qid internal_vstd.seq_lib.impl&__0.last_index_helper._fuel_to_body_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.last_index_helper._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.last_index_helper.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (needle! Poly)) (!
    (=>
     (and
      (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type needle! A&)
     )
     (= (vstd.seq_lib.impl&%0.last_index_helper.? A&. A& self! needle!) (vstd.seq_lib.impl&%0.rec%last_index_helper.?
       A&. A& self! needle! (succ fuel_nat%vstd.seq_lib.impl&%0.last_index_helper.)
    )))
    :pattern ((vstd.seq_lib.impl&%0.last_index_helper.? A&. A& self! needle!))
    :qid internal_vstd.seq_lib.impl&__0.last_index_helper.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.last_index_helper.?_definition
))))

;; Function-Axioms crate::vstd::seq::Seq::index_of_last
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.index_of_last.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.index_of_last.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (needle! Poly)) (!
    (= (vstd.seq_lib.impl&%0.index_of_last.? A&. A& self! needle!) (ite
      (vstd.seq_lib.impl&%0.contains.? A&. A& self! needle!)
      (core!option.Option./Some (I (vstd.seq_lib.impl&%0.last_index_helper.? A&. A& self!
         needle!
      )))
      core!option.Option./None
    ))
    :pattern ((vstd.seq_lib.impl&%0.index_of_last.? A&. A& self! needle!))
    :qid internal_vstd.seq_lib.impl&__0.index_of_last.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.index_of_last.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (needle! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type needle! A&)
    )
    (has_type (Poly%core!option.Option. (vstd.seq_lib.impl&%0.index_of_last.? A&. A& self!
       needle!
      )
     ) (TYPE%core!option.Option. $ INT)
   ))
   :pattern ((vstd.seq_lib.impl&%0.index_of_last.? A&. A& self! needle!))
   :qid internal_vstd.seq_lib.impl&__0.index_of_last.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.index_of_last.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::seq::Seq::no_duplicates
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.no_duplicates.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.no_duplicates.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (= (vstd.seq_lib.impl&%0.no_duplicates.? A&. A& self!) (forall ((i$ Poly) (j$ Poly))
      (!
       (=>
        (and
         (has_type i$ INT)
         (has_type j$ INT)
        )
        (=>
         (and
          (and
           (and
            (<= 0 (%I i$))
            (< (%I i$) (vstd!seq.Seq.len.? A&. A& self!))
           )
           (and
            (<= 0 (%I j$))
            (< (%I j$) (vstd!seq.Seq.len.? A&. A& self!))
          ))
          (not (= i$ j$))
         )
         (not (= (vstd!seq.Seq.index.? A&. A& self! i$) (vstd!seq.Seq.index.? A&. A& self! j$)))
       ))
       :pattern ((vstd!seq.Seq.index.? A&. A& self! i$) (vstd!seq.Seq.index.? A&. A& self!
         j$
       ))
       :qid user_crate__vstd__seq__Seq__no_duplicates_94
       :skolemid skolem_user_crate__vstd__seq__Seq__no_duplicates_94
    )))
    :pattern ((vstd.seq_lib.impl&%0.no_duplicates.? A&. A& self!))
    :qid internal_vstd.seq_lib.impl&__0.no_duplicates.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.no_duplicates.?_definition
))))

;; Function-Axioms crate::vstd::seq::Seq::disjoint
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.disjoint.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.disjoint.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (other! Poly)) (!
    (= (vstd.seq_lib.impl&%0.disjoint.? A&. A& self! other!) (forall ((i$ Poly) (j$ Poly))
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
           (< (%I i$) (vstd!seq.Seq.len.? A&. A& self!))
          )
          (and
           (<= 0 (%I j$))
           (< (%I j$) (vstd!seq.Seq.len.? A&. A& other!))
         ))
         (not (= (vstd!seq.Seq.index.? A&. A& self! i$) (vstd!seq.Seq.index.? A&. A& other! j$)))
       ))
       :pattern ((vstd!seq.Seq.index.? A&. A& self! i$) (vstd!seq.Seq.index.? A&. A& other!
         j$
       ))
       :qid user_crate__vstd__seq__Seq__disjoint_95
       :skolemid skolem_user_crate__vstd__seq__Seq__disjoint_95
    )))
    :pattern ((vstd.seq_lib.impl&%0.disjoint.? A&. A& self! other!))
    :qid internal_vstd.seq_lib.impl&__0.disjoint.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.disjoint.?_definition
))))

;; Function-Axioms crate::vstd::seq::Seq::to_multiset
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.to_multiset.)
)
(declare-const fuel_nat%vstd.seq_lib.impl&%0.to_multiset. Fuel)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (fuel% Fuel)) (!
   (= (vstd.seq_lib.impl&%0.rec%to_multiset.? A&. A& self! fuel%) (vstd.seq_lib.impl&%0.rec%to_multiset.?
     A&. A& self! zero
   ))
   :pattern ((vstd.seq_lib.impl&%0.rec%to_multiset.? A&. A& self! fuel%))
   :qid internal_vstd.seq_lib.impl&__0.to_multiset._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.to_multiset._fuel_to_zero_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (fuel% Fuel)) (!
   (=>
    (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
    (= (vstd.seq_lib.impl&%0.rec%to_multiset.? A&. A& self! (succ fuel%)) (ite
      (= (vstd!seq.Seq.len.? A&. A& self!) 0)
      (vstd.multiset.impl&%0.empty.? A&. A&)
      (vstd.multiset.impl&%0.add.? A&. A& (vstd.multiset.impl&%0.insert.? A&. A& (vstd.multiset.impl&%0.empty.?
         A&. A&
        ) (vstd.seq.impl&%0.first.? A&. A& self!)
       ) (vstd.seq_lib.impl&%0.rec%to_multiset.? A&. A& (vstd.seq_lib.impl&%0.drop_first.?
         A&. A& self!
        ) fuel%
   )))))
   :pattern ((vstd.seq_lib.impl&%0.rec%to_multiset.? A&. A& self! (succ fuel%)))
   :qid internal_vstd.seq_lib.impl&__0.to_multiset._fuel_to_body_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.to_multiset._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.to_multiset.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (=>
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (= (vstd.seq_lib.impl&%0.to_multiset.? A&. A& self!) (vstd.seq_lib.impl&%0.rec%to_multiset.?
       A&. A& self! (succ fuel_nat%vstd.seq_lib.impl&%0.to_multiset.)
    )))
    :pattern ((vstd.seq_lib.impl&%0.to_multiset.? A&. A& self!))
    :qid internal_vstd.seq_lib.impl&__0.to_multiset.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.to_multiset.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
    (has_type (vstd.seq_lib.impl&%0.to_multiset.? A&. A& self!) (TYPE%vstd.multiset.Multiset.
      A&. A&
   )))
   :pattern ((vstd.seq_lib.impl&%0.to_multiset.? A&. A& self!))
   :qid internal_vstd.seq_lib.impl&__0.to_multiset.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.to_multiset.?_pre_post_definition
)))

;; Function-Specs crate::vstd::seq::Seq::insert
(declare-fun req%vstd.seq_lib.impl&%0.insert. (Dcr Type Poly Poly Poly) Bool)
(declare-const %%global_location_label%%19 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly) (a! Poly)) (!
   (= (req%vstd.seq_lib.impl&%0.insert. A&. A& self! i! a!) (=>
     %%global_location_label%%19
     (and
      (<= 0 (%I i!))
      (<= (%I i!) (vstd!seq.Seq.len.? A&. A& self!))
   )))
   :pattern ((req%vstd.seq_lib.impl&%0.insert. A&. A& self! i! a!))
   :qid internal_req__vstd.seq_lib.impl&__0.insert._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.insert._definition
)))

;; Function-Axioms crate::vstd::seq::Seq::insert
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.insert.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.insert.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly) (a! Poly)) (!
    (= (vstd.seq_lib.impl&%0.insert.? A&. A& self! i! a!) (vstd!seq.Seq.add.? A&. A& (vstd!seq.Seq.push.?
       A&. A& (vstd!seq.Seq.subrange.? A&. A& self! (I 0) i!) a!
      ) (vstd!seq.Seq.subrange.? A&. A& self! i! (I (vstd!seq.Seq.len.? A&. A& self!)))
    ))
    :pattern ((vstd.seq_lib.impl&%0.insert.? A&. A& self! i! a!))
    :qid internal_vstd.seq_lib.impl&__0.insert.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.insert.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly) (a! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type i! INT)
     (has_type a! A&)
    )
    (has_type (vstd.seq_lib.impl&%0.insert.? A&. A& self! i! a!) (TYPE%vstd.seq.Seq. A&.
      A&
   )))
   :pattern ((vstd.seq_lib.impl&%0.insert.? A&. A& self! i! a!))
   :qid internal_vstd.seq_lib.impl&__0.insert.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.insert.?_pre_post_definition
)))

;; Function-Specs crate::vstd::seq::Seq::remove
(declare-fun req%vstd.seq_lib.impl&%0.remove. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%20 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
   (= (req%vstd.seq_lib.impl&%0.remove. A&. A& self! i!) (=>
     %%global_location_label%%20
     (and
      (<= 0 (%I i!))
      (< (%I i!) (vstd!seq.Seq.len.? A&. A& self!))
   )))
   :pattern ((req%vstd.seq_lib.impl&%0.remove. A&. A& self! i!))
   :qid internal_req__vstd.seq_lib.impl&__0.remove._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.remove._definition
)))

;; Function-Axioms crate::vstd::seq::Seq::remove
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.remove.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.remove.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
    (= (vstd.seq_lib.impl&%0.remove.? A&. A& self! i!) (vstd!seq.Seq.add.? A&. A& (vstd!seq.Seq.subrange.?
       A&. A& self! (I 0) i!
      ) (vstd!seq.Seq.subrange.? A&. A& self! (I (Add (%I i!) 1)) (I (vstd!seq.Seq.len.? A&.
         A& self!
    )))))
    :pattern ((vstd.seq_lib.impl&%0.remove.? A&. A& self! i!))
    :qid internal_vstd.seq_lib.impl&__0.remove.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.remove.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type i! INT)
    )
    (has_type (vstd.seq_lib.impl&%0.remove.? A&. A& self! i!) (TYPE%vstd.seq.Seq. A&. A&))
   )
   :pattern ((vstd.seq_lib.impl&%0.remove.? A&. A& self! i!))
   :qid internal_vstd.seq_lib.impl&__0.remove.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.remove.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::seq::Seq::remove_value
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.remove_value.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.remove_value.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (val! Poly)) (!
    (= (vstd.seq_lib.impl&%0.remove_value.? A&. A& self! val!) (let
      ((index$ (vstd.seq_lib.impl&%0.index_of_first.? A&. A& self! val!)))
      (ite
       (is-core!option.Option./Some index$)
       (let
        ((i$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
              index$
        ))))))
        (vstd.seq_lib.impl&%0.remove.? A&. A& self! (I i$))
       )
       self!
    )))
    :pattern ((vstd.seq_lib.impl&%0.remove_value.? A&. A& self! val!))
    :qid internal_vstd.seq_lib.impl&__0.remove_value.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.remove_value.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (val! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type val! A&)
    )
    (has_type (vstd.seq_lib.impl&%0.remove_value.? A&. A& self! val!) (TYPE%vstd.seq.Seq.
      A&. A&
   )))
   :pattern ((vstd.seq_lib.impl&%0.remove_value.? A&. A& self! val!))
   :qid internal_vstd.seq_lib.impl&__0.remove_value.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.remove_value.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::seq::Seq::reverse
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.reverse.)
)
(declare-fun %%lambda%%3 (Int Dcr Type Poly) %%Function%%)
(assert
 (forall ((%%hole%%0 Int) (%%hole%%1 Dcr) (%%hole%%2 Type) (%%hole%%3 Poly) (i$ Poly))
  (!
   (= (%%apply%%0 (%%lambda%%3 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) i$) (vstd!seq.Seq.index.?
     %%hole%%1 %%hole%%2 %%hole%%3 (I (Sub %%hole%%0 (%I i$)))
   ))
   :pattern ((%%apply%%0 (%%lambda%%3 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) i$))
)))
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.reverse.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (=>
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (= (vstd.seq_lib.impl&%0.reverse.? A&. A& self!) (ite
       (= (vstd!seq.Seq.len.? A&. A& self!) 0)
       (vstd!seq.Seq.empty.? A&. A&)
       (vstd!seq.Seq.new.? A&. A& $ (TYPE%fun%1. $ INT A&. A&) (I (vstd!seq.Seq.len.? A&. A&
          self!
         )
        ) (Poly%fun%1. (mk_fun (%%lambda%%3 (Sub (vstd!seq.Seq.len.? A&. A& self!) 1) A&. A&
           self!
    )))))))
    :pattern ((vstd.seq_lib.impl&%0.reverse.? A&. A& self!))
    :qid internal_vstd.seq_lib.impl&__0.reverse.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.reverse.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
    (has_type (vstd.seq_lib.impl&%0.reverse.? A&. A& self!) (TYPE%vstd.seq.Seq. A&. A&))
   )
   :pattern ((vstd.seq_lib.impl&%0.reverse.? A&. A& self!))
   :qid internal_vstd.seq_lib.impl&__0.reverse.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.reverse.?_pre_post_definition
)))

;; Function-Specs crate::vstd::seq::Seq::zip_with
(declare-fun req%vstd.seq_lib.impl&%0.zip_with. (Dcr Type Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%21 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (other! Poly)) (!
   (= (req%vstd.seq_lib.impl&%0.zip_with. A&. A& B&. B& self! other!) (=>
     %%global_location_label%%21
     (= (vstd!seq.Seq.len.? A&. A& self!) (vstd!seq.Seq.len.? B&. B& other!))
   ))
   :pattern ((req%vstd.seq_lib.impl&%0.zip_with. A&. A& B&. B& self! other!))
   :qid internal_req__vstd.seq_lib.impl&__0.zip_with._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.zip_with._definition
)))

;; Function-Axioms crate::vstd::seq::Seq::zip_with
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.zip_with.)
)
(declare-fun %%lambda%%4 (Dcr Type Poly Dcr Type Poly) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 Dcr) (%%hole%%4
    Type
   ) (%%hole%%5 Poly) (i$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%4 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5)
     i$
    ) (Poly%tuple%2. (tuple%2./tuple%2 (vstd!seq.Seq.index.? %%hole%%0 %%hole%%1 %%hole%%2
       i$
      ) (vstd!seq.Seq.index.? %%hole%%3 %%hole%%4 %%hole%%5 i$)
   )))
   :pattern ((%%apply%%0 (%%lambda%%4 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      %%hole%%5
     ) i$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.zip_with.)
  (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (other! Poly)) (!
    (=>
     (and
      (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type other! (TYPE%vstd.seq.Seq. B&. B&))
     )
     (= (vstd.seq_lib.impl&%0.zip_with.? A&. A& B&. B& self! other!) (ite
       (not (= (vstd!seq.Seq.len.? A&. A& self!) (vstd!seq.Seq.len.? B&. B& other!)))
       (vstd!seq.Seq.empty.? $ (TYPE%tuple%2. A&. A& B&. B&))
       (ite
        (= (vstd!seq.Seq.len.? A&. A& self!) 0)
        (vstd!seq.Seq.empty.? $ (TYPE%tuple%2. A&. A& B&. B&))
        (vstd!seq.Seq.new.? $ (TYPE%tuple%2. A&. A& B&. B&) $ (TYPE%fun%1. $ INT $ (TYPE%tuple%2.
           A&. A& B&. B&
          )
         ) (I (vstd!seq.Seq.len.? A&. A& self!)) (Poly%fun%1. (mk_fun (%%lambda%%4 A&. A& self!
            B&. B& other!
    ))))))))
    :pattern ((vstd.seq_lib.impl&%0.zip_with.? A&. A& B&. B& self! other!))
    :qid internal_vstd.seq_lib.impl&__0.zip_with.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.zip_with.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (other! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type other! (TYPE%vstd.seq.Seq. B&. B&))
    )
    (has_type (vstd.seq_lib.impl&%0.zip_with.? A&. A& B&. B& self! other!) (TYPE%vstd.seq.Seq.
      $ (TYPE%tuple%2. A&. A& B&. B&)
   )))
   :pattern ((vstd.seq_lib.impl&%0.zip_with.? A&. A& B&. B& self! other!))
   :qid internal_vstd.seq_lib.impl&__0.zip_with.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.zip_with.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::seq::Seq::fold_left
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.fold_left.)
)
(declare-const fuel_nat%vstd.seq_lib.impl&%0.fold_left. Fuel)
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (b! Poly) (f! Poly) (
    fuel% Fuel
   )
  ) (!
   (= (vstd.seq_lib.impl&%0.rec%fold_left.? A&. A& B&. B& self! b! f! fuel%) (vstd.seq_lib.impl&%0.rec%fold_left.?
     A&. A& B&. B& self! b! f! zero
   ))
   :pattern ((vstd.seq_lib.impl&%0.rec%fold_left.? A&. A& B&. B& self! b! f! fuel%))
   :qid internal_vstd.seq_lib.impl&__0.fold_left._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.fold_left._fuel_to_zero_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (b! Poly) (f! Poly) (
    fuel% Fuel
   )
  ) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type b! B&)
     (has_type f! (TYPE%fun%2. B&. B& A&. A& B&. B&))
    )
    (= (vstd.seq_lib.impl&%0.rec%fold_left.? A&. A& B&. B& self! b! f! (succ fuel%)) (
      ite
      (= (vstd!seq.Seq.len.? A&. A& self!) 0)
      b!
      (%%apply%%1 (%Poly%fun%2. f!) (vstd.seq_lib.impl&%0.rec%fold_left.? A&. A& B&. B& (
         vstd.seq_lib.impl&%0.drop_last.? A&. A& self!
        ) b! f! fuel%
       ) (vstd!seq.Seq.last.? A&. A& self!)
   ))))
   :pattern ((vstd.seq_lib.impl&%0.rec%fold_left.? A&. A& B&. B& self! b! f! (succ fuel%)))
   :qid internal_vstd.seq_lib.impl&__0.fold_left._fuel_to_body_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.fold_left._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.fold_left.)
  (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (b! Poly) (f! Poly))
   (!
    (=>
     (and
      (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type b! B&)
      (has_type f! (TYPE%fun%2. B&. B& A&. A& B&. B&))
     )
     (= (vstd.seq_lib.impl&%0.fold_left.? A&. A& B&. B& self! b! f!) (vstd.seq_lib.impl&%0.rec%fold_left.?
       A&. A& B&. B& self! b! f! (succ fuel_nat%vstd.seq_lib.impl&%0.fold_left.)
    )))
    :pattern ((vstd.seq_lib.impl&%0.fold_left.? A&. A& B&. B& self! b! f!))
    :qid internal_vstd.seq_lib.impl&__0.fold_left.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.fold_left.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (b! Poly) (f! Poly))
  (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type b! B&)
     (has_type f! (TYPE%fun%2. B&. B& A&. A& B&. B&))
    )
    (has_type (vstd.seq_lib.impl&%0.fold_left.? A&. A& B&. B& self! b! f!) B&)
   )
   :pattern ((vstd.seq_lib.impl&%0.fold_left.? A&. A& B&. B& self! b! f!))
   :qid internal_vstd.seq_lib.impl&__0.fold_left.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.fold_left.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::seq::Seq::fold_left_alt
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.fold_left_alt.)
)
(declare-const fuel_nat%vstd.seq_lib.impl&%0.fold_left_alt. Fuel)
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (b! Poly) (f! Poly) (
    fuel% Fuel
   )
  ) (!
   (= (vstd.seq_lib.impl&%0.rec%fold_left_alt.? A&. A& B&. B& self! b! f! fuel%) (vstd.seq_lib.impl&%0.rec%fold_left_alt.?
     A&. A& B&. B& self! b! f! zero
   ))
   :pattern ((vstd.seq_lib.impl&%0.rec%fold_left_alt.? A&. A& B&. B& self! b! f! fuel%))
   :qid internal_vstd.seq_lib.impl&__0.fold_left_alt._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.fold_left_alt._fuel_to_zero_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (b! Poly) (f! Poly) (
    fuel% Fuel
   )
  ) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type b! B&)
     (has_type f! (TYPE%fun%2. B&. B& A&. A& B&. B&))
    )
    (= (vstd.seq_lib.impl&%0.rec%fold_left_alt.? A&. A& B&. B& self! b! f! (succ fuel%))
     (ite
      (= (vstd!seq.Seq.len.? A&. A& self!) 0)
      b!
      (vstd.seq_lib.impl&%0.rec%fold_left_alt.? A&. A& B&. B& (vstd!seq.Seq.subrange.? A&.
        A& self! (I 1) (I (vstd!seq.Seq.len.? A&. A& self!))
       ) (%%apply%%1 (%Poly%fun%2. f!) b! (vstd!seq.Seq.index.? A&. A& self! (I 0))) f!
       fuel%
   ))))
   :pattern ((vstd.seq_lib.impl&%0.rec%fold_left_alt.? A&. A& B&. B& self! b! f! (succ
      fuel%
   )))
   :qid internal_vstd.seq_lib.impl&__0.fold_left_alt._fuel_to_body_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.fold_left_alt._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.fold_left_alt.)
  (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (b! Poly) (f! Poly))
   (!
    (=>
     (and
      (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type b! B&)
      (has_type f! (TYPE%fun%2. B&. B& A&. A& B&. B&))
     )
     (= (vstd.seq_lib.impl&%0.fold_left_alt.? A&. A& B&. B& self! b! f!) (vstd.seq_lib.impl&%0.rec%fold_left_alt.?
       A&. A& B&. B& self! b! f! (succ fuel_nat%vstd.seq_lib.impl&%0.fold_left_alt.)
    )))
    :pattern ((vstd.seq_lib.impl&%0.fold_left_alt.? A&. A& B&. B& self! b! f!))
    :qid internal_vstd.seq_lib.impl&__0.fold_left_alt.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.fold_left_alt.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (b! Poly) (f! Poly))
  (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type b! B&)
     (has_type f! (TYPE%fun%2. B&. B& A&. A& B&. B&))
    )
    (has_type (vstd.seq_lib.impl&%0.fold_left_alt.? A&. A& B&. B& self! b! f!) B&)
   )
   :pattern ((vstd.seq_lib.impl&%0.fold_left_alt.? A&. A& B&. B& self! b! f!))
   :qid internal_vstd.seq_lib.impl&__0.fold_left_alt.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.fold_left_alt.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::seq::Seq::fold_right
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.fold_right.)
)
(declare-const fuel_nat%vstd.seq_lib.impl&%0.fold_right. Fuel)
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (f! Poly) (b! Poly) (
    fuel% Fuel
   )
  ) (!
   (= (vstd.seq_lib.impl&%0.rec%fold_right.? A&. A& B&. B& self! f! b! fuel%) (vstd.seq_lib.impl&%0.rec%fold_right.?
     A&. A& B&. B& self! f! b! zero
   ))
   :pattern ((vstd.seq_lib.impl&%0.rec%fold_right.? A&. A& B&. B& self! f! b! fuel%))
   :qid internal_vstd.seq_lib.impl&__0.fold_right._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.fold_right._fuel_to_zero_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (f! Poly) (b! Poly) (
    fuel% Fuel
   )
  ) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type f! (TYPE%fun%2. A&. A& B&. B& B&. B&))
     (has_type b! B&)
    )
    (= (vstd.seq_lib.impl&%0.rec%fold_right.? A&. A& B&. B& self! f! b! (succ fuel%))
     (ite
      (= (vstd!seq.Seq.len.? A&. A& self!) 0)
      b!
      (vstd.seq_lib.impl&%0.rec%fold_right.? A&. A& B&. B& (vstd.seq_lib.impl&%0.drop_last.?
        A&. A& self!
       ) f! (%%apply%%1 (%Poly%fun%2. f!) (vstd!seq.Seq.last.? A&. A& self!) b!) fuel%
   ))))
   :pattern ((vstd.seq_lib.impl&%0.rec%fold_right.? A&. A& B&. B& self! f! b! (succ fuel%)))
   :qid internal_vstd.seq_lib.impl&__0.fold_right._fuel_to_body_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.fold_right._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.fold_right.)
  (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (f! Poly) (b! Poly))
   (!
    (=>
     (and
      (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type f! (TYPE%fun%2. A&. A& B&. B& B&. B&))
      (has_type b! B&)
     )
     (= (vstd.seq_lib.impl&%0.fold_right.? A&. A& B&. B& self! f! b!) (vstd.seq_lib.impl&%0.rec%fold_right.?
       A&. A& B&. B& self! f! b! (succ fuel_nat%vstd.seq_lib.impl&%0.fold_right.)
    )))
    :pattern ((vstd.seq_lib.impl&%0.fold_right.? A&. A& B&. B& self! f! b!))
    :qid internal_vstd.seq_lib.impl&__0.fold_right.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.fold_right.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (f! Poly) (b! Poly))
  (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type f! (TYPE%fun%2. A&. A& B&. B& B&. B&))
     (has_type b! B&)
    )
    (has_type (vstd.seq_lib.impl&%0.fold_right.? A&. A& B&. B& self! f! b!) B&)
   )
   :pattern ((vstd.seq_lib.impl&%0.fold_right.? A&. A& B&. B& self! f! b!))
   :qid internal_vstd.seq_lib.impl&__0.fold_right.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.fold_right.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::seq::Seq::fold_right_alt
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%0.fold_right_alt.)
)
(declare-const fuel_nat%vstd.seq_lib.impl&%0.fold_right_alt. Fuel)
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (f! Poly) (b! Poly) (
    fuel% Fuel
   )
  ) (!
   (= (vstd.seq_lib.impl&%0.rec%fold_right_alt.? A&. A& B&. B& self! f! b! fuel%) (vstd.seq_lib.impl&%0.rec%fold_right_alt.?
     A&. A& B&. B& self! f! b! zero
   ))
   :pattern ((vstd.seq_lib.impl&%0.rec%fold_right_alt.? A&. A& B&. B& self! f! b! fuel%))
   :qid internal_vstd.seq_lib.impl&__0.fold_right_alt._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.fold_right_alt._fuel_to_zero_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (f! Poly) (b! Poly) (
    fuel% Fuel
   )
  ) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type f! (TYPE%fun%2. A&. A& B&. B& B&. B&))
     (has_type b! B&)
    )
    (= (vstd.seq_lib.impl&%0.rec%fold_right_alt.? A&. A& B&. B& self! f! b! (succ fuel%))
     (ite
      (= (vstd!seq.Seq.len.? A&. A& self!) 0)
      b!
      (%%apply%%1 (%Poly%fun%2. f!) (vstd!seq.Seq.index.? A&. A& self! (I 0)) (vstd.seq_lib.impl&%0.rec%fold_right_alt.?
        A&. A& B&. B& (vstd!seq.Seq.subrange.? A&. A& self! (I 1) (I (vstd!seq.Seq.len.? A&.
           A& self!
         ))
        ) f! b! fuel%
   )))))
   :pattern ((vstd.seq_lib.impl&%0.rec%fold_right_alt.? A&. A& B&. B& self! f! b! (succ
      fuel%
   )))
   :qid internal_vstd.seq_lib.impl&__0.fold_right_alt._fuel_to_body_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.fold_right_alt._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%0.fold_right_alt.)
  (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (f! Poly) (b! Poly))
   (!
    (=>
     (and
      (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
      (has_type f! (TYPE%fun%2. A&. A& B&. B& B&. B&))
      (has_type b! B&)
     )
     (= (vstd.seq_lib.impl&%0.fold_right_alt.? A&. A& B&. B& self! f! b!) (vstd.seq_lib.impl&%0.rec%fold_right_alt.?
       A&. A& B&. B& self! f! b! (succ fuel_nat%vstd.seq_lib.impl&%0.fold_right_alt.)
    )))
    :pattern ((vstd.seq_lib.impl&%0.fold_right_alt.? A&. A& B&. B& self! f! b!))
    :qid internal_vstd.seq_lib.impl&__0.fold_right_alt.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__0.fold_right_alt.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (f! Poly) (b! Poly))
  (!
   (=>
    (and
     (has_type self! (TYPE%vstd.seq.Seq. A&. A&))
     (has_type f! (TYPE%fun%2. A&. A& B&. B& B&. B&))
     (has_type b! B&)
    )
    (has_type (vstd.seq_lib.impl&%0.fold_right_alt.? A&. A& B&. B& self! f! b!) B&)
   )
   :pattern ((vstd.seq_lib.impl&%0.fold_right_alt.? A&. A& B&. B& self! f! b!))
   :qid internal_vstd.seq_lib.impl&__0.fold_right_alt.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__0.fold_right_alt.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::seq::Seq::unzip
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%1.unzip.)
)
(declare-fun %%lambda%%5 (Dcr Type Poly) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (i$ Poly)) (!
   (= (%%apply%%0 (%%lambda%%5 %%hole%%0 %%hole%%1 %%hole%%2) i$) (tuple%2./tuple%2/0
     (%Poly%tuple%2. (vstd!seq.Seq.index.? %%hole%%0 %%hole%%1 %%hole%%2 i$))
   ))
   :pattern ((%%apply%%0 (%%lambda%%5 %%hole%%0 %%hole%%1 %%hole%%2) i$))
)))
(declare-fun %%lambda%%6 (Dcr Type Poly) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (i$ Poly)) (!
   (= (%%apply%%0 (%%lambda%%6 %%hole%%0 %%hole%%1 %%hole%%2) i$) (tuple%2./tuple%2/1
     (%Poly%tuple%2. (vstd!seq.Seq.index.? %%hole%%0 %%hole%%1 %%hole%%2 i$))
   ))
   :pattern ((%%apply%%0 (%%lambda%%6 %%hole%%0 %%hole%%1 %%hole%%2) i$))
)))
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%1.unzip.)
  (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly)) (!
    (= (vstd.seq_lib.impl&%1.unzip.? A&. A& B&. B& self!) (tuple%2./tuple%2 (vstd!seq.Seq.new.?
       A&. A& $ (TYPE%fun%1. $ INT A&. A&) (I (vstd!seq.Seq.len.? $ (TYPE%tuple%2. A&. A& B&.
          B&
         ) self!
        )
       ) (Poly%fun%1. (mk_fun (%%lambda%%5 $ (TYPE%tuple%2. A&. A& B&. B&) self!)))
      ) (vstd!seq.Seq.new.? B&. B& $ (TYPE%fun%1. $ INT B&. B&) (I (vstd!seq.Seq.len.? $ (
          TYPE%tuple%2. A&. A& B&. B&
         ) self!
        )
       ) (Poly%fun%1. (mk_fun (%%lambda%%6 $ (TYPE%tuple%2. A&. A& B&. B&) self!)))
    )))
    :pattern ((vstd.seq_lib.impl&%1.unzip.? A&. A& B&. B& self!))
    :qid internal_vstd.seq_lib.impl&__1.unzip.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__1.unzip.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.seq.Seq. $ (TYPE%tuple%2. A&. A& B&. B&)))
    (has_type (Poly%tuple%2. (vstd.seq_lib.impl&%1.unzip.? A&. A& B&. B& self!)) (TYPE%tuple%2.
      $ (TYPE%vstd.seq.Seq. A&. A&) $ (TYPE%vstd.seq.Seq. B&. B&)
   )))
   :pattern ((vstd.seq_lib.impl&%1.unzip.? A&. A& B&. B& self!))
   :qid internal_vstd.seq_lib.impl&__1.unzip.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__1.unzip.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::seq::Seq::flatten
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%2.flatten.)
)
(declare-const fuel_nat%vstd.seq_lib.impl&%2.flatten. Fuel)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (fuel% Fuel)) (!
   (= (vstd.seq_lib.impl&%2.rec%flatten.? A&. A& self! fuel%) (vstd.seq_lib.impl&%2.rec%flatten.?
     A&. A& self! zero
   ))
   :pattern ((vstd.seq_lib.impl&%2.rec%flatten.? A&. A& self! fuel%))
   :qid internal_vstd.seq_lib.impl&__2.flatten._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__2.flatten._fuel_to_zero_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (fuel% Fuel)) (!
   (=>
    (has_type self! (TYPE%vstd.seq.Seq. $ (TYPE%vstd.seq.Seq. A&. A&)))
    (= (vstd.seq_lib.impl&%2.rec%flatten.? A&. A& self! (succ fuel%)) (ite
      (= (vstd!seq.Seq.len.? $ (TYPE%vstd.seq.Seq. A&. A&) self!) 0)
      (vstd!seq.Seq.empty.? A&. A&)
      (vstd!seq.Seq.add.? A&. A& (vstd.seq.impl&%0.first.? $ (TYPE%vstd.seq.Seq. A&. A&)
        self!
       ) (vstd.seq_lib.impl&%2.rec%flatten.? A&. A& (vstd.seq_lib.impl&%0.drop_first.? $ (
          TYPE%vstd.seq.Seq. A&. A&
         ) self!
        ) fuel%
   )))))
   :pattern ((vstd.seq_lib.impl&%2.rec%flatten.? A&. A& self! (succ fuel%)))
   :qid internal_vstd.seq_lib.impl&__2.flatten._fuel_to_body_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__2.flatten._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%2.flatten.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (=>
     (has_type self! (TYPE%vstd.seq.Seq. $ (TYPE%vstd.seq.Seq. A&. A&)))
     (= (vstd.seq_lib.impl&%2.flatten.? A&. A& self!) (vstd.seq_lib.impl&%2.rec%flatten.?
       A&. A& self! (succ fuel_nat%vstd.seq_lib.impl&%2.flatten.)
    )))
    :pattern ((vstd.seq_lib.impl&%2.flatten.? A&. A& self!))
    :qid internal_vstd.seq_lib.impl&__2.flatten.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__2.flatten.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.seq.Seq. $ (TYPE%vstd.seq.Seq. A&. A&)))
    (has_type (vstd.seq_lib.impl&%2.flatten.? A&. A& self!) (TYPE%vstd.seq.Seq. A&. A&))
   )
   :pattern ((vstd.seq_lib.impl&%2.flatten.? A&. A& self!))
   :qid internal_vstd.seq_lib.impl&__2.flatten.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__2.flatten.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::seq::Seq::flatten_alt
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%2.flatten_alt.)
)
(declare-const fuel_nat%vstd.seq_lib.impl&%2.flatten_alt. Fuel)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (fuel% Fuel)) (!
   (= (vstd.seq_lib.impl&%2.rec%flatten_alt.? A&. A& self! fuel%) (vstd.seq_lib.impl&%2.rec%flatten_alt.?
     A&. A& self! zero
   ))
   :pattern ((vstd.seq_lib.impl&%2.rec%flatten_alt.? A&. A& self! fuel%))
   :qid internal_vstd.seq_lib.impl&__2.flatten_alt._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__2.flatten_alt._fuel_to_zero_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (fuel% Fuel)) (!
   (=>
    (has_type self! (TYPE%vstd.seq.Seq. $ (TYPE%vstd.seq.Seq. A&. A&)))
    (= (vstd.seq_lib.impl&%2.rec%flatten_alt.? A&. A& self! (succ fuel%)) (ite
      (= (vstd!seq.Seq.len.? $ (TYPE%vstd.seq.Seq. A&. A&) self!) 0)
      (vstd!seq.Seq.empty.? A&. A&)
      (vstd!seq.Seq.add.? A&. A& (vstd.seq_lib.impl&%2.rec%flatten_alt.? A&. A& (vstd.seq_lib.impl&%0.drop_last.?
         $ (TYPE%vstd.seq.Seq. A&. A&) self!
        ) fuel%
       ) (vstd!seq.Seq.last.? $ (TYPE%vstd.seq.Seq. A&. A&) self!)
   ))))
   :pattern ((vstd.seq_lib.impl&%2.rec%flatten_alt.? A&. A& self! (succ fuel%)))
   :qid internal_vstd.seq_lib.impl&__2.flatten_alt._fuel_to_body_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__2.flatten_alt._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%2.flatten_alt.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (=>
     (has_type self! (TYPE%vstd.seq.Seq. $ (TYPE%vstd.seq.Seq. A&. A&)))
     (= (vstd.seq_lib.impl&%2.flatten_alt.? A&. A& self!) (vstd.seq_lib.impl&%2.rec%flatten_alt.?
       A&. A& self! (succ fuel_nat%vstd.seq_lib.impl&%2.flatten_alt.)
    )))
    :pattern ((vstd.seq_lib.impl&%2.flatten_alt.? A&. A& self!))
    :qid internal_vstd.seq_lib.impl&__2.flatten_alt.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__2.flatten_alt.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.seq.Seq. $ (TYPE%vstd.seq.Seq. A&. A&)))
    (has_type (vstd.seq_lib.impl&%2.flatten_alt.? A&. A& self!) (TYPE%vstd.seq.Seq. A&.
      A&
   )))
   :pattern ((vstd.seq_lib.impl&%2.flatten_alt.? A&. A& self!))
   :qid internal_vstd.seq_lib.impl&__2.flatten_alt.?_pre_post_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__2.flatten_alt.?_pre_post_definition
)))

;; Function-Specs crate::vstd::seq::Seq::max
(declare-fun req%vstd.seq_lib.impl&%3.max. (Poly) Bool)
(declare-const %%global_location_label%%22 Bool)
(assert
 (forall ((self! Poly)) (!
   (= (req%vstd.seq_lib.impl&%3.max. self!) (=>
     %%global_location_label%%22
     (< 0 (vstd!seq.Seq.len.? $ INT self!))
   ))
   :pattern ((req%vstd.seq_lib.impl&%3.max. self!))
   :qid internal_req__vstd.seq_lib.impl&__3.max._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__3.max._definition
)))

;; Function-Axioms crate::vstd::seq::Seq::max
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%3.max.)
)
(declare-const fuel_nat%vstd.seq_lib.impl&%3.max. Fuel)
(assert
 (forall ((self! Poly) (fuel% Fuel)) (!
   (= (vstd.seq_lib.impl&%3.rec%max.? self! fuel%) (vstd.seq_lib.impl&%3.rec%max.? self!
     zero
   ))
   :pattern ((vstd.seq_lib.impl&%3.rec%max.? self! fuel%))
   :qid internal_vstd.seq_lib.impl&__3.max._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__3.max._fuel_to_zero_definition
)))
(assert
 (forall ((self! Poly) (fuel% Fuel)) (!
   (=>
    (has_type self! (TYPE%vstd.seq.Seq. $ INT))
    (= (vstd.seq_lib.impl&%3.rec%max.? self! (succ fuel%)) (ite
      (= (vstd!seq.Seq.len.? $ INT self!) 1)
      (%I (vstd!seq.Seq.index.? $ INT self! (I 0)))
      (ite
       (= (vstd!seq.Seq.len.? $ INT self!) 0)
       0
       (let
        ((later_max$ (vstd.seq_lib.impl&%3.rec%max.? (vstd.seq_lib.impl&%0.drop_first.? $ INT
            self!
           ) fuel%
        )))
        (ite
         (>= (%I (vstd!seq.Seq.index.? $ INT self! (I 0))) later_max$)
         (%I (vstd!seq.Seq.index.? $ INT self! (I 0)))
         later_max$
   ))))))
   :pattern ((vstd.seq_lib.impl&%3.rec%max.? self! (succ fuel%)))
   :qid internal_vstd.seq_lib.impl&__3.max._fuel_to_body_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__3.max._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%3.max.)
  (forall ((self! Poly)) (!
    (=>
     (has_type self! (TYPE%vstd.seq.Seq. $ INT))
     (= (vstd.seq_lib.impl&%3.max.? self!) (vstd.seq_lib.impl&%3.rec%max.? self! (succ fuel_nat%vstd.seq_lib.impl&%3.max.)))
    )
    :pattern ((vstd.seq_lib.impl&%3.max.? self!))
    :qid internal_vstd.seq_lib.impl&__3.max.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__3.max.?_definition
))))

;; Function-Specs crate::vstd::seq::Seq::min
(declare-fun req%vstd.seq_lib.impl&%3.min. (Poly) Bool)
(declare-const %%global_location_label%%23 Bool)
(assert
 (forall ((self! Poly)) (!
   (= (req%vstd.seq_lib.impl&%3.min. self!) (=>
     %%global_location_label%%23
     (< 0 (vstd!seq.Seq.len.? $ INT self!))
   ))
   :pattern ((req%vstd.seq_lib.impl&%3.min. self!))
   :qid internal_req__vstd.seq_lib.impl&__3.min._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__3.min._definition
)))

;; Function-Axioms crate::vstd::seq::Seq::min
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%3.min.)
)
(declare-const fuel_nat%vstd.seq_lib.impl&%3.min. Fuel)
(assert
 (forall ((self! Poly) (fuel% Fuel)) (!
   (= (vstd.seq_lib.impl&%3.rec%min.? self! fuel%) (vstd.seq_lib.impl&%3.rec%min.? self!
     zero
   ))
   :pattern ((vstd.seq_lib.impl&%3.rec%min.? self! fuel%))
   :qid internal_vstd.seq_lib.impl&__3.min._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__3.min._fuel_to_zero_definition
)))
(assert
 (forall ((self! Poly) (fuel% Fuel)) (!
   (=>
    (has_type self! (TYPE%vstd.seq.Seq. $ INT))
    (= (vstd.seq_lib.impl&%3.rec%min.? self! (succ fuel%)) (ite
      (= (vstd!seq.Seq.len.? $ INT self!) 1)
      (%I (vstd!seq.Seq.index.? $ INT self! (I 0)))
      (ite
       (= (vstd!seq.Seq.len.? $ INT self!) 0)
       0
       (let
        ((later_min$ (vstd.seq_lib.impl&%3.rec%min.? (vstd.seq_lib.impl&%0.drop_first.? $ INT
            self!
           ) fuel%
        )))
        (ite
         (<= (%I (vstd!seq.Seq.index.? $ INT self! (I 0))) later_min$)
         (%I (vstd!seq.Seq.index.? $ INT self! (I 0)))
         later_min$
   ))))))
   :pattern ((vstd.seq_lib.impl&%3.rec%min.? self! (succ fuel%)))
   :qid internal_vstd.seq_lib.impl&__3.min._fuel_to_body_definition
   :skolemid skolem_internal_vstd.seq_lib.impl&__3.min._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%3.min.)
  (forall ((self! Poly)) (!
    (=>
     (has_type self! (TYPE%vstd.seq.Seq. $ INT))
     (= (vstd.seq_lib.impl&%3.min.? self!) (vstd.seq_lib.impl&%3.rec%min.? self! (succ fuel_nat%vstd.seq_lib.impl&%3.min.)))
    )
    :pattern ((vstd.seq_lib.impl&%3.min.? self!))
    :qid internal_vstd.seq_lib.impl&__3.min.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__3.min.?_definition
))))

;; Function-Axioms crate::vstd::seq::Seq::sort
(assert
 (fuel_bool_default fuel%vstd.seq_lib.impl&%3.sort.)
)
(declare-fun %%lambda%%7 () %%Function%%)
(assert
 (forall ((x$ Poly) (y$ Poly)) (!
   (= (%%apply%%1 %%lambda%%7 x$ y$) (B (<= (%I x$) (%I y$))))
   :pattern ((%%apply%%1 %%lambda%%7 x$ y$))
)))
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.impl&%3.sort.)
  (forall ((self! Poly)) (!
    (= (vstd.seq_lib.impl&%3.sort.? self!) (%Poly%vstd.seq.Seq<int.>. (vstd.seq_lib.impl&%0.sort_by.?
       $ INT self! (Poly%fun%2. (mk_fun %%lambda%%7))
    )))
    :pattern ((vstd.seq_lib.impl&%3.sort.? self!))
    :qid internal_vstd.seq_lib.impl&__3.sort.?_definition
    :skolemid skolem_internal_vstd.seq_lib.impl&__3.sort.?_definition
))))

;; Function-Axioms crate::vstd::seq_lib::commutative_foldr
(assert
 (fuel_bool_default fuel%vstd.seq_lib.commutative_foldr.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.seq_lib.commutative_foldr.)
  (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (f! Poly)) (!
    (= (vstd.seq_lib.commutative_foldr.? A&. A& B&. B& f!) (forall ((x$ Poly) (y$ Poly)
       (v$ Poly)
      ) (!
       (=>
        (and
         (has_type x$ A&)
         (has_type y$ A&)
         (has_type v$ B&)
        )
        (= (%%apply%%1 (%Poly%fun%2. f!) x$ (%%apply%%1 (%Poly%fun%2. f!) y$ v$)) (%%apply%%1
          (%Poly%fun%2. f!) y$ (%%apply%%1 (%Poly%fun%2. f!) x$ v$)
       )))
       :pattern ((%%apply%%1 (%Poly%fun%2. f!) x$ (%%apply%%1 (%Poly%fun%2. f!) y$ v$)))
       :qid user_crate__vstd__seq_lib__commutative_foldr_96
       :skolemid skolem_user_crate__vstd__seq_lib__commutative_foldr_96
    )))
    :pattern ((vstd.seq_lib.commutative_foldr.? A&. A& B&. B& f!))
    :qid internal_vstd.seq_lib.commutative_foldr.?_definition
    :skolemid skolem_internal_vstd.seq_lib.commutative_foldr.?_definition
))))

;; Function-Specs crate::vstd::set_lib::lemma_set_properties
(declare-fun ens%vstd.set_lib.lemma_set_properties. (Dcr Type) Bool)
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (ens%vstd.set_lib.lemma_set_properties. A&. A&) (and
     (forall ((a$ Poly) (b$ Poly)) (!
       (=>
        (and
         (has_type a$ (TYPE%vstd.set.Set. A&. A&))
         (has_type b$ (TYPE%vstd.set.Set. A&. A&))
        )
        (= (vstd.set.impl&%0.union.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$ b$) b$) (vstd.set.impl&%0.union.?
          A&. A& a$ b$
       )))
       :pattern ((vstd.set.impl&%0.union.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$ b$)
         b$
       ))
       :qid user_crate__vstd__set_lib__lemma_set_properties_97
       :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_97
     ))
     (forall ((a$ Poly) (b$ Poly)) (!
       (=>
        (and
         (has_type a$ (TYPE%vstd.set.Set. A&. A&))
         (has_type b$ (TYPE%vstd.set.Set. A&. A&))
        )
        (= (vstd.set.impl&%0.union.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$ b$) a$) (vstd.set.impl&%0.union.?
          A&. A& a$ b$
       )))
       :pattern ((vstd.set.impl&%0.union.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$ b$)
         a$
       ))
       :qid user_crate__vstd__set_lib__lemma_set_properties_98
       :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_98
     ))
     (forall ((a$ Poly) (b$ Poly)) (!
       (=>
        (and
         (has_type a$ (TYPE%vstd.set.Set. A&. A&))
         (has_type b$ (TYPE%vstd.set.Set. A&. A&))
        )
        (= (vstd.set.impl&%0.intersect.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& a$ b$)
          b$
         ) (vstd.set.impl&%0.intersect.? A&. A& a$ b$)
       ))
       :pattern ((vstd.set.impl&%0.intersect.? A&. A& (vstd.set.impl&%0.intersect.? A&. A&
          a$ b$
         ) b$
       ))
       :qid user_crate__vstd__set_lib__lemma_set_properties_99
       :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_99
     ))
     (forall ((a$ Poly) (b$ Poly)) (!
       (=>
        (and
         (has_type a$ (TYPE%vstd.set.Set. A&. A&))
         (has_type b$ (TYPE%vstd.set.Set. A&. A&))
        )
        (= (vstd.set.impl&%0.intersect.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& a$ b$)
          a$
         ) (vstd.set.impl&%0.intersect.? A&. A& a$ b$)
       ))
       :pattern ((vstd.set.impl&%0.intersect.? A&. A& (vstd.set.impl&%0.intersect.? A&. A&
          a$ b$
         ) a$
       ))
       :qid user_crate__vstd__set_lib__lemma_set_properties_100
       :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_100
     ))
     (forall ((s1$ Poly) (s2$ Poly) (a$ Poly)) (!
       (=>
        (and
         (has_type s1$ (TYPE%vstd.set.Set. A&. A&))
         (has_type s2$ (TYPE%vstd.set.Set. A&. A&))
         (has_type a$ A&)
        )
        (=>
         (vstd.set.impl&%0.contains.? A&. A& s2$ a$)
         (not (vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.difference.? A&. A& s1$ s2$)
           a$
       ))))
       :pattern ((vstd.set.impl&%0.contains.? A&. A& (vstd.set.impl&%0.difference.? A&. A&
          s1$ s2$
         ) a$
       ))
       :qid user_crate__vstd__set_lib__lemma_set_properties_101
       :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_101
     ))
     (forall ((a$ Poly) (b$ Poly)) (!
       (=>
        (and
         (has_type a$ (TYPE%vstd.set.Set. A&. A&))
         (has_type b$ (TYPE%vstd.set.Set. A&. A&))
        )
        (=>
         (vstd.set.impl&%0.disjoint.? A&. A& a$ b$)
         (and
          (= (vstd.set.impl&%0.difference.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$ b$) a$)
           b$
          )
          (= (vstd.set.impl&%0.difference.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$ b$) b$)
           a$
       ))))
       :pattern ((vstd.set.impl&%0.union.? A&. A& a$ b$))
       :qid user_crate__vstd__set_lib__lemma_set_properties_102
       :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_102
     ))
     (forall ((s$ Poly)) (!
       (=>
        (has_type s$ (TYPE%vstd.set.Set. A&. A&))
        (=>
         (and
          (not (= (vstd.set.impl&%0.len.? A&. A& s$) 0))
          (vstd.set.impl&%0.finite.? A&. A& s$)
         )
         (exists ((a$ Poly)) (!
           (and
            (has_type a$ A&)
            (vstd.set.impl&%0.contains.? A&. A& s$ a$)
           )
           :pattern ((vstd.set.impl&%0.contains.? A&. A& s$ a$))
           :qid user_crate__vstd__set_lib__lemma_set_properties_103
           :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_103
       ))))
       :pattern ((vstd.set.impl&%0.len.? A&. A& s$))
       :qid user_crate__vstd__set_lib__lemma_set_properties_104
       :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_104
     ))
     (forall ((a$ Poly) (b$ Poly)) (!
       (=>
        (and
         (has_type a$ (TYPE%vstd.set.Set. A&. A&))
         (has_type b$ (TYPE%vstd.set.Set. A&. A&))
        )
        (=>
         (and
          (and
           (vstd.set.impl&%0.finite.? A&. A& a$)
           (vstd.set.impl&%0.finite.? A&. A& b$)
          )
          (vstd.set.impl&%0.disjoint.? A&. A& a$ b$)
         )
         (= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$ b$)) (nClip (
            Add (vstd.set.impl&%0.len.? A&. A& a$) (vstd.set.impl&%0.len.? A&. A& b$)
       )))))
       :pattern ((vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$ b$)))
       :qid user_crate__vstd__set_lib__lemma_set_properties_105
       :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_105
     ))
     (forall ((a$ Poly) (b$ Poly)) (!
       (=>
        (and
         (has_type a$ (TYPE%vstd.set.Set. A&. A&))
         (has_type b$ (TYPE%vstd.set.Set. A&. A&))
        )
        (=>
         (and
          (vstd.set.impl&%0.finite.? A&. A& a$)
          (vstd.set.impl&%0.finite.? A&. A& b$)
         )
         (= (nClip (Add (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$ b$))
            (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& a$ b$))
           )
          ) (nClip (Add (vstd.set.impl&%0.len.? A&. A& a$) (vstd.set.impl&%0.len.? A&. A& b$)))
       )))
       :pattern ((vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$ b$))
        (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& a$ b$))
       )
       :qid user_crate__vstd__set_lib__lemma_set_properties_106
       :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_106
     ))
     (forall ((a$ Poly) (b$ Poly)) (!
       (=>
        (and
         (has_type a$ (TYPE%vstd.set.Set. A&. A&))
         (has_type b$ (TYPE%vstd.set.Set. A&. A&))
        )
        (=>
         (and
          (vstd.set.impl&%0.finite.? A&. A& a$)
          (vstd.set.impl&%0.finite.? A&. A& b$)
         )
         (and
          (= (nClip (Add (nClip (Add (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.difference.?
                 A&. A& a$ b$
                )
               ) (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.difference.? A&. A& b$ a$))
              )
             ) (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.intersect.? A&. A& a$ b$))
            )
           ) (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.union.? A&. A& a$ b$))
          )
          (= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.difference.? A&. A& a$ b$)) (Sub
            (vstd.set.impl&%0.len.? A&. A& a$) (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.intersect.?
              A&. A& a$ b$
       )))))))
       :pattern ((vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.difference.? A&. A& a$ b$)))
       :qid user_crate__vstd__set_lib__lemma_set_properties_107
       :skolemid skolem_user_crate__vstd__set_lib__lemma_set_properties_107
   ))))
   :pattern ((ens%vstd.set_lib.lemma_set_properties. A&. A&))
   :qid internal_ens__vstd.set_lib.lemma_set_properties._definition
   :skolemid skolem_internal_ens__vstd.set_lib.lemma_set_properties._definition
)))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%vstd.std_specs.option.OptionAdditionalFns. $ (TYPE%core!option.Option. T&.
     T&
    ) T&. T&
   )
   :pattern ((tr_bound%vstd.std_specs.option.OptionAdditionalFns. $ (TYPE%core!option.Option.
      T&. T&
     ) T&. T&
   ))
   :qid internal_crate__vstd__std_specs__option__impl&__0_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__std_specs__option__impl&__0_trait_impl_definition
)))

;; Function-Specs crate::vstd::seq_lib::lemma_seq_concat_contains_all_elements
(declare-fun ens%vstd.seq_lib.lemma_seq_concat_contains_all_elements. (Dcr Type Poly
  Poly Poly
 ) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (x! Poly) (y! Poly) (elt! Poly)) (!
   (= (ens%vstd.seq_lib.lemma_seq_concat_contains_all_elements. A&. A& x! y! elt!) (=
     (vstd.seq_lib.impl&%0.contains.? A&. A& (vstd!seq.Seq.add.? A&. A& x! y!) elt!) (
      or
      (vstd.seq_lib.impl&%0.contains.? A&. A& x! elt!)
      (vstd.seq_lib.impl&%0.contains.? A&. A& y! elt!)
   )))
   :pattern ((ens%vstd.seq_lib.lemma_seq_concat_contains_all_elements. A&. A& x! y! elt!))
   :qid internal_ens__vstd.seq_lib.lemma_seq_concat_contains_all_elements._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.lemma_seq_concat_contains_all_elements._definition
)))

;; Function-Specs crate::vstd::seq_lib::lemma_seq_contains_after_push
(declare-fun ens%vstd.seq_lib.lemma_seq_contains_after_push. (Dcr Type Poly Poly Poly)
 Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (v! Poly) (x! Poly)) (!
   (= (ens%vstd.seq_lib.lemma_seq_contains_after_push. A&. A& s! v! x!) (and
     (= (vstd.seq_lib.impl&%0.contains.? A&. A& (vstd!seq.Seq.push.? A&. A& s! v!) x!)
      (or
       (= v! x!)
       (vstd.seq_lib.impl&%0.contains.? A&. A& s! x!)
     ))
     (vstd.seq_lib.impl&%0.contains.? A&. A& (vstd!seq.Seq.push.? A&. A& s! v!) v!)
   ))
   :pattern ((ens%vstd.seq_lib.lemma_seq_contains_after_push. A&. A& s! v! x!))
   :qid internal_ens__vstd.seq_lib.lemma_seq_contains_after_push._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.lemma_seq_contains_after_push._definition
)))

;; Function-Specs crate::vstd::seq_lib::lemma_seq_subrange_elements
(declare-fun req%vstd.seq_lib.lemma_seq_subrange_elements. (Dcr Type Poly Int Int Poly)
 Bool
)
(declare-const %%global_location_label%%24 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (start! Int) (stop! Int) (x! Poly)) (!
   (= (req%vstd.seq_lib.lemma_seq_subrange_elements. A&. A& s! start! stop! x!) (=>
     %%global_location_label%%24
     (and
      (and
       (<= 0 start!)
       (<= start! stop!)
      )
      (<= stop! (vstd!seq.Seq.len.? A&. A& s!))
   )))
   :pattern ((req%vstd.seq_lib.lemma_seq_subrange_elements. A&. A& s! start! stop! x!))
   :qid internal_req__vstd.seq_lib.lemma_seq_subrange_elements._definition
   :skolemid skolem_internal_req__vstd.seq_lib.lemma_seq_subrange_elements._definition
)))
(declare-fun ens%vstd.seq_lib.lemma_seq_subrange_elements. (Dcr Type Poly Int Int Poly)
 Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (start! Int) (stop! Int) (x! Poly)) (!
   (= (ens%vstd.seq_lib.lemma_seq_subrange_elements. A&. A& s! start! stop! x!) (= (vstd.seq_lib.impl&%0.contains.?
      A&. A& (vstd!seq.Seq.subrange.? A&. A& s! (I start!) (I stop!)) x!
     ) (exists ((i$ Poly)) (!
       (and
        (has_type i$ INT)
        (and
         (and
          (and
           (and
            (<= 0 start!)
            (<= start! (%I i$))
           )
           (< (%I i$) stop!)
          )
          (<= stop! (vstd!seq.Seq.len.? A&. A& s!))
         )
         (= (vstd!seq.Seq.index.? A&. A& s! i$) x!)
       ))
       :pattern ((vstd!seq.Seq.index.? A&. A& s! i$))
       :qid user_crate__vstd__seq_lib__lemma_seq_subrange_elements_114
       :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_subrange_elements_114
   ))))
   :pattern ((ens%vstd.seq_lib.lemma_seq_subrange_elements. A&. A& s! start! stop! x!))
   :qid internal_ens__vstd.seq_lib.lemma_seq_subrange_elements._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.lemma_seq_subrange_elements._definition
)))

;; Function-Specs crate::vstd::seq_lib::lemma_seq_take_contains
(declare-fun req%vstd.seq_lib.lemma_seq_take_contains. (Dcr Type Poly Int Poly) Bool)
(declare-const %%global_location_label%%25 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (n! Int) (x! Poly)) (!
   (= (req%vstd.seq_lib.lemma_seq_take_contains. A&. A& s! n! x!) (=>
     %%global_location_label%%25
     (and
      (<= 0 n!)
      (<= n! (vstd!seq.Seq.len.? A&. A& s!))
   )))
   :pattern ((req%vstd.seq_lib.lemma_seq_take_contains. A&. A& s! n! x!))
   :qid internal_req__vstd.seq_lib.lemma_seq_take_contains._definition
   :skolemid skolem_internal_req__vstd.seq_lib.lemma_seq_take_contains._definition
)))
(declare-fun ens%vstd.seq_lib.lemma_seq_take_contains. (Dcr Type Poly Int Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (n! Int) (x! Poly)) (!
   (= (ens%vstd.seq_lib.lemma_seq_take_contains. A&. A& s! n! x!) (= (vstd.seq_lib.impl&%0.contains.?
      A&. A& (vstd!seq.Seq.subrange.? A&. A& s! (I 0) (I n!)) x!
     ) (exists ((i$ Poly)) (!
       (and
        (has_type i$ INT)
        (and
         (and
          (and
           (<= 0 (%I i$))
           (< (%I i$) n!)
          )
          (<= n! (vstd!seq.Seq.len.? A&. A& s!))
         )
         (= (vstd!seq.Seq.index.? A&. A& s! i$) x!)
       ))
       :pattern ((vstd!seq.Seq.index.? A&. A& s! i$))
       :qid user_crate__vstd__seq_lib__lemma_seq_take_contains_121
       :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_take_contains_121
   ))))
   :pattern ((ens%vstd.seq_lib.lemma_seq_take_contains. A&. A& s! n! x!))
   :qid internal_ens__vstd.seq_lib.lemma_seq_take_contains._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.lemma_seq_take_contains._definition
)))

;; Function-Specs crate::vstd::seq_lib::lemma_seq_take_len
(declare-fun ens%vstd.seq_lib.lemma_seq_take_len. (Dcr Type Poly Int) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (n! Int)) (!
   (= (ens%vstd.seq_lib.lemma_seq_take_len. A&. A& s! n!) (=>
     (and
      (<= 0 n!)
      (<= n! (vstd!seq.Seq.len.? A&. A& s!))
     )
     (= (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s! (I 0) (I n!))) n!)
   ))
   :pattern ((ens%vstd.seq_lib.lemma_seq_take_len. A&. A& s! n!))
   :qid internal_ens__vstd.seq_lib.lemma_seq_take_len._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.lemma_seq_take_len._definition
)))

;; Function-Specs crate::vstd::seq_lib::lemma_seq_take_index
(declare-fun ens%vstd.seq_lib.lemma_seq_take_index. (Dcr Type Poly Int Int) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (n! Int) (j! Int)) (!
   (= (ens%vstd.seq_lib.lemma_seq_take_index. A&. A& s! n! j!) (=>
     (and
      (and
       (<= 0 j!)
       (< j! n!)
      )
      (<= n! (vstd!seq.Seq.len.? A&. A& s!))
     )
     (= (vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s! (I 0) (I n!)) (I
        j!
       )
      ) (vstd!seq.Seq.index.? A&. A& s! (I j!))
   )))
   :pattern ((ens%vstd.seq_lib.lemma_seq_take_index. A&. A& s! n! j!))
   :qid internal_ens__vstd.seq_lib.lemma_seq_take_index._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.lemma_seq_take_index._definition
)))

;; Function-Specs crate::vstd::seq_lib::lemma_seq_skip_index
(declare-fun ens%vstd.seq_lib.lemma_seq_skip_index. (Dcr Type Poly Int Int) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (n! Int) (j! Int)) (!
   (= (ens%vstd.seq_lib.lemma_seq_skip_index. A&. A& s! n! j!) (=>
     (and
      (<= 0 n!)
      (and
       (<= 0 j!)
       (< j! (Sub (vstd!seq.Seq.len.? A&. A& s!) n!))
     ))
     (= (vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s! (I n!) (I (vstd!seq.Seq.len.?
          A&. A& s!
        ))
       ) (I j!)
      ) (vstd!seq.Seq.index.? A&. A& s! (I (Add j! n!)))
   )))
   :pattern ((ens%vstd.seq_lib.lemma_seq_skip_index. A&. A& s! n! j!))
   :qid internal_ens__vstd.seq_lib.lemma_seq_skip_index._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.lemma_seq_skip_index._definition
)))

;; Function-Specs crate::vstd::seq_lib::lemma_seq_skip_contains
(declare-fun req%vstd.seq_lib.lemma_seq_skip_contains. (Dcr Type Poly Int Poly) Bool)
(declare-const %%global_location_label%%26 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (n! Int) (x! Poly)) (!
   (= (req%vstd.seq_lib.lemma_seq_skip_contains. A&. A& s! n! x!) (=>
     %%global_location_label%%26
     (and
      (<= 0 n!)
      (<= n! (vstd!seq.Seq.len.? A&. A& s!))
   )))
   :pattern ((req%vstd.seq_lib.lemma_seq_skip_contains. A&. A& s! n! x!))
   :qid internal_req__vstd.seq_lib.lemma_seq_skip_contains._definition
   :skolemid skolem_internal_req__vstd.seq_lib.lemma_seq_skip_contains._definition
)))
(declare-fun ens%vstd.seq_lib.lemma_seq_skip_contains. (Dcr Type Poly Int Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (n! Int) (x! Poly)) (!
   (= (ens%vstd.seq_lib.lemma_seq_skip_contains. A&. A& s! n! x!) (= (vstd.seq_lib.impl&%0.contains.?
      A&. A& (vstd!seq.Seq.subrange.? A&. A& s! (I n!) (I (vstd!seq.Seq.len.? A&. A& s!)))
      x!
     ) (exists ((i$ Poly)) (!
       (and
        (has_type i$ INT)
        (and
         (and
          (and
           (<= 0 n!)
           (<= n! (%I i$))
          )
          (< (%I i$) (vstd!seq.Seq.len.? A&. A& s!))
         )
         (= (vstd!seq.Seq.index.? A&. A& s! i$) x!)
       ))
       :pattern ((vstd!seq.Seq.index.? A&. A& s! i$))
       :qid user_crate__vstd__seq_lib__lemma_seq_skip_contains_128
       :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_skip_contains_128
   ))))
   :pattern ((ens%vstd.seq_lib.lemma_seq_skip_contains. A&. A& s! n! x!))
   :qid internal_ens__vstd.seq_lib.lemma_seq_skip_contains._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.lemma_seq_skip_contains._definition
)))

;; Function-Specs crate::vstd::seq_lib::lemma_seq_take_update_commut1
(declare-fun ens%vstd.seq_lib.lemma_seq_take_update_commut1. (Dcr Type Poly Int Poly
  Int
 ) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (i! Int) (v! Poly) (n! Int)) (!
   (= (ens%vstd.seq_lib.lemma_seq_take_update_commut1. A&. A& s! i! v! n!) (=>
     (and
      (and
       (<= 0 i!)
       (< i! n!)
      )
      (<= n! (vstd!seq.Seq.len.? A&. A& s!))
     )
     (ext_eq false (TYPE%vstd.seq.Seq. A&. A&) (vstd!seq.Seq.subrange.? A&. A& (vstd!seq.Seq.update.?
        A&. A& s! (I i!) v!
       ) (I 0) (I n!)
      ) (vstd!seq.Seq.update.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s! (I 0) (I n!)) (
        I i!
       ) v!
   ))))
   :pattern ((ens%vstd.seq_lib.lemma_seq_take_update_commut1. A&. A& s! i! v! n!))
   :qid internal_ens__vstd.seq_lib.lemma_seq_take_update_commut1._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.lemma_seq_take_update_commut1._definition
)))

;; Function-Specs crate::vstd::seq_lib::lemma_seq_take_update_commut2
(declare-fun ens%vstd.seq_lib.lemma_seq_take_update_commut2. (Dcr Type Poly Int Poly
  Int
 ) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (i! Int) (v! Poly) (n! Int)) (!
   (= (ens%vstd.seq_lib.lemma_seq_take_update_commut2. A&. A& s! i! v! n!) (=>
     (and
      (and
       (<= 0 n!)
       (<= n! i!)
      )
      (< i! (vstd!seq.Seq.len.? A&. A& s!))
     )
     (ext_eq false (TYPE%vstd.seq.Seq. A&. A&) (vstd!seq.Seq.subrange.? A&. A& (vstd!seq.Seq.update.?
        A&. A& s! (I i!) v!
       ) (I 0) (I n!)
      ) (vstd!seq.Seq.subrange.? A&. A& s! (I 0) (I n!))
   )))
   :pattern ((ens%vstd.seq_lib.lemma_seq_take_update_commut2. A&. A& s! i! v! n!))
   :qid internal_ens__vstd.seq_lib.lemma_seq_take_update_commut2._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.lemma_seq_take_update_commut2._definition
)))

;; Function-Specs crate::vstd::seq_lib::lemma_seq_skip_update_commut1
(declare-fun ens%vstd.seq_lib.lemma_seq_skip_update_commut1. (Dcr Type Poly Int Poly
  Int
 ) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (i! Int) (v! Poly) (n! Int)) (!
   (= (ens%vstd.seq_lib.lemma_seq_skip_update_commut1. A&. A& s! i! v! n!) (=>
     (and
      (and
       (<= 0 n!)
       (<= n! i!)
      )
      (< i! (vstd!seq.Seq.len.? A&. A& s!))
     )
     (ext_eq false (TYPE%vstd.seq.Seq. A&. A&) (vstd!seq.Seq.subrange.? A&. A& (vstd!seq.Seq.update.?
        A&. A& s! (I i!) v!
       ) (I n!) (I (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.update.? A&. A& s! (I i!) v!)))
      ) (vstd!seq.Seq.update.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s! (I n!) (I (vstd!seq.Seq.len.?
          A&. A& s!
        ))
       ) (I (Sub i! n!)) v!
   ))))
   :pattern ((ens%vstd.seq_lib.lemma_seq_skip_update_commut1. A&. A& s! i! v! n!))
   :qid internal_ens__vstd.seq_lib.lemma_seq_skip_update_commut1._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.lemma_seq_skip_update_commut1._definition
)))

;; Function-Specs crate::vstd::seq_lib::lemma_seq_skip_update_commut2
(declare-fun ens%vstd.seq_lib.lemma_seq_skip_update_commut2. (Dcr Type Poly Int Poly
  Int
 ) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (i! Int) (v! Poly) (n! Int)) (!
   (= (ens%vstd.seq_lib.lemma_seq_skip_update_commut2. A&. A& s! i! v! n!) (=>
     (and
      (and
       (<= 0 i!)
       (< i! n!)
      )
      (<= n! (vstd!seq.Seq.len.? A&. A& s!))
     )
     (ext_eq false (TYPE%vstd.seq.Seq. A&. A&) (vstd!seq.Seq.subrange.? A&. A& (vstd!seq.Seq.update.?
        A&. A& s! (I i!) v!
       ) (I n!) (I (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.update.? A&. A& s! (I i!) v!)))
      ) (vstd!seq.Seq.subrange.? A&. A& s! (I n!) (I (vstd!seq.Seq.len.? A&. A& s!)))
   )))
   :pattern ((ens%vstd.seq_lib.lemma_seq_skip_update_commut2. A&. A& s! i! v! n!))
   :qid internal_ens__vstd.seq_lib.lemma_seq_skip_update_commut2._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.lemma_seq_skip_update_commut2._definition
)))

;; Function-Specs crate::vstd::seq_lib::lemma_seq_skip_build_commut
(declare-fun ens%vstd.seq_lib.lemma_seq_skip_build_commut. (Dcr Type Poly Poly Int)
 Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (v! Poly) (n! Int)) (!
   (= (ens%vstd.seq_lib.lemma_seq_skip_build_commut. A&. A& s! v! n!) (=>
     (and
      (<= 0 n!)
      (<= n! (vstd!seq.Seq.len.? A&. A& s!))
     )
     (ext_eq false (TYPE%vstd.seq.Seq. A&. A&) (vstd!seq.Seq.subrange.? A&. A& (vstd!seq.Seq.push.?
        A&. A& s! v!
       ) (I n!) (I (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.push.? A&. A& s! v!)))
      ) (vstd!seq.Seq.push.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s! (I n!) (I (vstd!seq.Seq.len.?
          A&. A& s!
        ))
       ) v!
   ))))
   :pattern ((ens%vstd.seq_lib.lemma_seq_skip_build_commut. A&. A& s! v! n!))
   :qid internal_ens__vstd.seq_lib.lemma_seq_skip_build_commut._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.lemma_seq_skip_build_commut._definition
)))

;; Function-Specs crate::vstd::seq_lib::lemma_seq_skip_nothing
(declare-fun ens%vstd.seq_lib.lemma_seq_skip_nothing. (Dcr Type Poly Int) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (n! Int)) (!
   (= (ens%vstd.seq_lib.lemma_seq_skip_nothing. A&. A& s! n!) (=>
     (= n! 0)
     (ext_eq false (TYPE%vstd.seq.Seq. A&. A&) (vstd!seq.Seq.subrange.? A&. A& s! (I n!)
       (I (vstd!seq.Seq.len.? A&. A& s!))
      ) s!
   )))
   :pattern ((ens%vstd.seq_lib.lemma_seq_skip_nothing. A&. A& s! n!))
   :qid internal_ens__vstd.seq_lib.lemma_seq_skip_nothing._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.lemma_seq_skip_nothing._definition
)))

;; Function-Specs crate::vstd::seq_lib::lemma_seq_take_nothing
(declare-fun ens%vstd.seq_lib.lemma_seq_take_nothing. (Dcr Type Poly Int) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (n! Int)) (!
   (= (ens%vstd.seq_lib.lemma_seq_take_nothing. A&. A& s! n!) (=>
     (= n! 0)
     (ext_eq false (TYPE%vstd.seq.Seq. A&. A&) (vstd!seq.Seq.subrange.? A&. A& s! (I 0)
       (I n!)
      ) (vstd!seq.Seq.empty.? A&. A&)
   )))
   :pattern ((ens%vstd.seq_lib.lemma_seq_take_nothing. A&. A& s! n!))
   :qid internal_ens__vstd.seq_lib.lemma_seq_take_nothing._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.lemma_seq_take_nothing._definition
)))

;; Function-Specs crate::vstd::seq_lib::lemma_seq_skip_of_skip
(declare-fun ens%vstd.seq_lib.lemma_seq_skip_of_skip. (Dcr Type Poly Int Int) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (m! Int) (n! Int)) (!
   (= (ens%vstd.seq_lib.lemma_seq_skip_of_skip. A&. A& s! m! n!) (=>
     (and
      (and
       (<= 0 m!)
       (<= 0 n!)
      )
      (<= (Add m! n!) (vstd!seq.Seq.len.? A&. A& s!))
     )
     (ext_eq false (TYPE%vstd.seq.Seq. A&. A&) (vstd!seq.Seq.subrange.? A&. A& (vstd!seq.Seq.subrange.?
        A&. A& s! (I m!) (I (vstd!seq.Seq.len.? A&. A& s!))
       ) (I n!) (I (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s! (I m!) (I (
            vstd!seq.Seq.len.? A&. A& s!
       )))))
      ) (vstd!seq.Seq.subrange.? A&. A& s! (I (Add m! n!)) (I (vstd!seq.Seq.len.? A&. A& s!)))
   )))
   :pattern ((ens%vstd.seq_lib.lemma_seq_skip_of_skip. A&. A& s! m! n!))
   :qid internal_ens__vstd.seq_lib.lemma_seq_skip_of_skip._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.lemma_seq_skip_of_skip._definition
)))

;; Function-Specs crate::vstd::seq_lib::to_multiset_build
(declare-fun ens%vstd.seq_lib.to_multiset_build. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
   (= (ens%vstd.seq_lib.to_multiset_build. A&. A& s! a!) (ext_eq false (TYPE%vstd.multiset.Multiset.
      A&. A&
     ) (vstd.seq_lib.impl&%0.to_multiset.? A&. A& (vstd!seq.Seq.push.? A&. A& s! a!))
     (vstd.multiset.impl&%0.insert.? A&. A& (vstd.seq_lib.impl&%0.to_multiset.? A&. A& s!)
      a!
   )))
   :pattern ((ens%vstd.seq_lib.to_multiset_build. A&. A& s! a!))
   :qid internal_ens__vstd.seq_lib.to_multiset_build._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.to_multiset_build._definition
)))

;; Function-Specs crate::vstd::seq_lib::lemma_multiset_commutative
(declare-fun ens%vstd.seq_lib.lemma_multiset_commutative. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (a! Poly) (b! Poly)) (!
   (= (ens%vstd.seq_lib.lemma_multiset_commutative. A&. A& a! b!) (ext_eq false (TYPE%vstd.multiset.Multiset.
      A&. A&
     ) (vstd.seq_lib.impl&%0.to_multiset.? A&. A& (vstd!seq.Seq.add.? A&. A& a! b!)) (
      vstd.multiset.impl&%0.add.? A&. A& (vstd.seq_lib.impl&%0.to_multiset.? A&. A& a!)
      (vstd.seq_lib.impl&%0.to_multiset.? A&. A& b!)
   )))
   :pattern ((ens%vstd.seq_lib.lemma_multiset_commutative. A&. A& a! b!))
   :qid internal_ens__vstd.seq_lib.lemma_multiset_commutative._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.lemma_multiset_commutative._definition
)))

;; Function-Specs crate::vstd::seq_lib::lemma_seq_union_to_multiset_commutative
(declare-fun ens%vstd.seq_lib.lemma_seq_union_to_multiset_commutative. (Dcr Type Poly
  Poly
 ) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (a! Poly) (b! Poly)) (!
   (= (ens%vstd.seq_lib.lemma_seq_union_to_multiset_commutative. A&. A& a! b!) (ext_eq
     false (TYPE%vstd.multiset.Multiset. A&. A&) (vstd.seq_lib.impl&%0.to_multiset.? A&.
      A& (vstd!seq.Seq.add.? A&. A& a! b!)
     ) (vstd.seq_lib.impl&%0.to_multiset.? A&. A& (vstd!seq.Seq.add.? A&. A& b! a!))
   ))
   :pattern ((ens%vstd.seq_lib.lemma_seq_union_to_multiset_commutative. A&. A& a! b!))
   :qid internal_ens__vstd.seq_lib.lemma_seq_union_to_multiset_commutative._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.lemma_seq_union_to_multiset_commutative._definition
)))

;; Function-Specs crate::vstd::seq_lib::to_multiset_remove
(declare-fun req%vstd.seq_lib.to_multiset_remove. (Dcr Type Poly Int) Bool)
(declare-const %%global_location_label%%27 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (i! Int)) (!
   (= (req%vstd.seq_lib.to_multiset_remove. A&. A& s! i!) (=>
     %%global_location_label%%27
     (and
      (<= 0 i!)
      (< i! (vstd!seq.Seq.len.? A&. A& s!))
   )))
   :pattern ((req%vstd.seq_lib.to_multiset_remove. A&. A& s! i!))
   :qid internal_req__vstd.seq_lib.to_multiset_remove._definition
   :skolemid skolem_internal_req__vstd.seq_lib.to_multiset_remove._definition
)))
(declare-fun ens%vstd.seq_lib.to_multiset_remove. (Dcr Type Poly Int) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (i! Int)) (!
   (= (ens%vstd.seq_lib.to_multiset_remove. A&. A& s! i!) (ext_eq false (TYPE%vstd.multiset.Multiset.
      A&. A&
     ) (vstd.seq_lib.impl&%0.to_multiset.? A&. A& (vstd.seq_lib.impl&%0.remove.? A&. A&
       s! (I i!)
      )
     ) (vstd.multiset.impl&%0.remove.? A&. A& (vstd.seq_lib.impl&%0.to_multiset.? A&. A&
       s!
      ) (vstd!seq.Seq.index.? A&. A& s! (I i!))
   )))
   :pattern ((ens%vstd.seq_lib.to_multiset_remove. A&. A& s! i!))
   :qid internal_ens__vstd.seq_lib.to_multiset_remove._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.to_multiset_remove._definition
)))

;; Function-Specs crate::vstd::seq_lib::to_multiset_len
(declare-fun ens%vstd.seq_lib.to_multiset_len. (Dcr Type Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly)) (!
   (= (ens%vstd.seq_lib.to_multiset_len. A&. A& s!) (= (vstd!seq.Seq.len.? A&. A& s!)
     (vstd.multiset.impl&%0.len.? A&. A& (vstd.seq_lib.impl&%0.to_multiset.? A&. A& s!))
   ))
   :pattern ((ens%vstd.seq_lib.to_multiset_len. A&. A& s!))
   :qid internal_ens__vstd.seq_lib.to_multiset_len._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.to_multiset_len._definition
)))

;; Function-Specs crate::vstd::seq_lib::to_multiset_contains
(declare-fun ens%vstd.seq_lib.to_multiset_contains. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (s! Poly) (a! Poly)) (!
   (= (ens%vstd.seq_lib.to_multiset_contains. A&. A& s! a!) (= (vstd.seq_lib.impl&%0.contains.?
      A&. A& s! a!
     ) (> (vstd.multiset.impl&%0.count.? A&. A& (vstd.seq_lib.impl&%0.to_multiset.? A&. A&
        s!
       ) a!
      ) 0
   )))
   :pattern ((ens%vstd.seq_lib.to_multiset_contains. A&. A& s! a!))
   :qid internal_ens__vstd.seq_lib.to_multiset_contains._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.to_multiset_contains._definition
)))

;; Function-Specs crate::vstd::seq::Seq::to_multiset_ensures
(declare-fun ens%vstd.seq_lib.impl&%0.to_multiset_ensures. (Dcr Type Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (ens%vstd.seq_lib.impl&%0.to_multiset_ensures. A&. A& self!) (and
     (forall ((a$ Poly)) (!
       (=>
        (has_type a$ A&)
        (ext_eq false (TYPE%vstd.multiset.Multiset. A&. A&) (vstd.seq_lib.impl&%0.to_multiset.?
          A&. A& (vstd!seq.Seq.push.? A&. A& self! a$)
         ) (vstd.multiset.impl&%0.insert.? A&. A& (vstd.seq_lib.impl&%0.to_multiset.? A&. A&
           self!
          ) a$
       )))
       :pattern ((vstd.seq_lib.impl&%0.to_multiset.? A&. A& (vstd!seq.Seq.push.? A&. A& self!
          a$
       )))
       :qid user_crate__vstd__seq__Seq__to_multiset_ensures_134
       :skolemid skolem_user_crate__vstd__seq__Seq__to_multiset_ensures_134
     ))
     (forall ((i$ Poly)) (!
       (=>
        (has_type i$ INT)
        (=>
         (and
          (<= 0 (%I i$))
          (< (%I i$) (vstd!seq.Seq.len.? A&. A& self!))
         )
         (ext_eq false (TYPE%vstd.multiset.Multiset. A&. A&) (vstd.seq_lib.impl&%0.to_multiset.?
           A&. A& (vstd.seq_lib.impl&%0.remove.? A&. A& self! i$)
          ) (vstd.multiset.impl&%0.remove.? A&. A& (vstd.seq_lib.impl&%0.to_multiset.? A&. A&
            self!
           ) (vstd!seq.Seq.index.? A&. A& self! i$)
       ))))
       :pattern ((vstd.seq_lib.impl&%0.to_multiset.? A&. A& (vstd.seq_lib.impl&%0.remove.?
          A&. A& self! i$
       )))
       :qid user_crate__vstd__seq__Seq__to_multiset_ensures_135
       :skolemid skolem_user_crate__vstd__seq__Seq__to_multiset_ensures_135
     ))
     (= (vstd!seq.Seq.len.? A&. A& self!) (vstd.multiset.impl&%0.len.? A&. A& (vstd.seq_lib.impl&%0.to_multiset.?
        A&. A& self!
     )))
     (forall ((a$ Poly)) (!
       (=>
        (has_type a$ A&)
        (= (vstd.seq_lib.impl&%0.contains.? A&. A& self! a$) (> (vstd.multiset.impl&%0.count.?
           A&. A& (vstd.seq_lib.impl&%0.to_multiset.? A&. A& self!) a$
          ) 0
       )))
       :pattern ((vstd.multiset.impl&%0.count.? A&. A& (vstd.seq_lib.impl&%0.to_multiset.?
          A&. A& self!
         ) a$
       ))
       :qid user_crate__vstd__seq__Seq__to_multiset_ensures_136
       :skolemid skolem_user_crate__vstd__seq__Seq__to_multiset_ensures_136
   ))))
   :pattern ((ens%vstd.seq_lib.impl&%0.to_multiset_ensures. A&. A& self!))
   :qid internal_ens__vstd.seq_lib.impl&__0.to_multiset_ensures._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.to_multiset_ensures._definition
)))

;; Function-Specs crate::vstd::seq_lib::lemma_seq_properties
(declare-fun ens%vstd.seq_lib.lemma_seq_properties. (Dcr Type) Bool)
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (= (ens%vstd.seq_lib.lemma_seq_properties. A&. A&) (and
     (forall ((s$ Poly) (x$ Poly)) (!
       (=>
        (and
         (has_type s$ (TYPE%vstd.seq.Seq. A&. A&))
         (has_type x$ A&)
        )
        (= (vstd.seq_lib.impl&%0.contains.? A&. A& s$ x$) (exists ((i$ Poly)) (!
           (and
            (has_type i$ INT)
            (and
             (and
              (<= 0 (%I i$))
              (< (%I i$) (vstd!seq.Seq.len.? A&. A& s$))
             )
             (= (vstd!seq.Seq.index.? A&. A& s$ i$) x$)
           ))
           :pattern ((vstd!seq.Seq.index.? A&. A& s$ i$))
           :qid user_crate__vstd__seq_lib__lemma_seq_properties_143
           :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_143
       ))))
       :pattern ((vstd.seq_lib.impl&%0.contains.? A&. A& s$ x$))
       :qid user_crate__vstd__seq_lib__lemma_seq_properties_144
       :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_144
     ))
     (forall ((x$ Poly)) (!
       (=>
        (has_type x$ A&)
        (not (vstd.seq_lib.impl&%0.contains.? A&. A& (vstd!seq.Seq.empty.? A&. A&) x$))
       )
       :pattern ((vstd.seq_lib.impl&%0.contains.? A&. A& (vstd!seq.Seq.empty.? A&. A&) x$))
       :qid user_crate__vstd__seq_lib__lemma_seq_properties_145
       :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_145
     ))
     (forall ((s$ Poly)) (!
       (=>
        (has_type s$ (TYPE%vstd.seq.Seq. A&. A&))
        (=>
         (= (vstd!seq.Seq.len.? A&. A& s$) 0)
         (ext_eq false (TYPE%vstd.seq.Seq. A&. A&) s$ (vstd!seq.Seq.empty.? A&. A&))
       ))
       :pattern ((vstd!seq.Seq.len.? A&. A& s$))
       :qid user_crate__vstd__seq_lib__lemma_seq_properties_146
       :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_146
     ))
     (forall ((x$ Poly) (y$ Poly) (elt$ Poly)) (!
       (=>
        (and
         (has_type x$ (TYPE%vstd.seq.Seq. A&. A&))
         (has_type y$ (TYPE%vstd.seq.Seq. A&. A&))
         (has_type elt$ A&)
        )
        (= (vstd.seq_lib.impl&%0.contains.? A&. A& (vstd!seq.Seq.add.? A&. A& x$ y$) elt$)
         (or
          (vstd.seq_lib.impl&%0.contains.? A&. A& x$ elt$)
          (vstd.seq_lib.impl&%0.contains.? A&. A& y$ elt$)
       )))
       :pattern ((vstd.seq_lib.impl&%0.contains.? A&. A& (vstd!seq.Seq.add.? A&. A& x$ y$)
         elt$
       ))
       :qid user_crate__vstd__seq_lib__lemma_seq_properties_147
       :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_147
     ))
     (forall ((s$ Poly) (v$ Poly) (x$ Poly)) (!
       (=>
        (and
         (has_type s$ (TYPE%vstd.seq.Seq. A&. A&))
         (has_type v$ A&)
         (has_type x$ A&)
        )
        (and
         (= (vstd.seq_lib.impl&%0.contains.? A&. A& (vstd!seq.Seq.push.? A&. A& s$ v$) x$)
          (or
           (= v$ x$)
           (vstd.seq_lib.impl&%0.contains.? A&. A& s$ x$)
         ))
         (vstd.seq_lib.impl&%0.contains.? A&. A& (vstd!seq.Seq.push.? A&. A& s$ v$) v$)
       ))
       :pattern ((vstd.seq_lib.impl&%0.contains.? A&. A& (vstd!seq.Seq.push.? A&. A& s$ v$)
         x$
        ) (vstd.seq_lib.impl&%0.contains.? A&. A& (vstd!seq.Seq.push.? A&. A& s$ v$) v$)
       )
       :qid user_crate__vstd__seq_lib__lemma_seq_properties_148
       :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_148
     ))
     (forall ((s$ Poly) (start$ Poly) (stop$ Poly) (x$ Poly)) (!
       (=>
        (and
         (has_type s$ (TYPE%vstd.seq.Seq. A&. A&))
         (has_type start$ INT)
         (has_type stop$ INT)
         (has_type x$ A&)
        )
        (= (and
          (and
           (and
            (<= 0 (%I start$))
            (<= (%I start$) (%I stop$))
           )
           (<= (%I stop$) (vstd!seq.Seq.len.? A&. A& s$))
          )
          (vstd.seq_lib.impl&%0.contains.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s$ start$ stop$)
           x$
          )
         ) (exists ((i$ Poly)) (!
           (and
            (has_type i$ INT)
            (and
             (and
              (and
               (and
                (<= 0 (%I start$))
                (<= (%I start$) (%I i$))
               )
               (< (%I i$) (%I stop$))
              )
              (<= (%I stop$) (vstd!seq.Seq.len.? A&. A& s$))
             )
             (= (vstd!seq.Seq.index.? A&. A& s$ i$) x$)
           ))
           :pattern ((vstd!seq.Seq.index.? A&. A& s$ i$))
           :qid user_crate__vstd__seq_lib__lemma_seq_properties_149
           :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_149
       ))))
       :pattern ((vstd.seq_lib.impl&%0.contains.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s$
          start$ stop$
         ) x$
       ))
       :qid user_crate__vstd__seq_lib__lemma_seq_properties_150
       :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_150
     ))
     (forall ((s$ Poly) (n$ Poly)) (!
       (=>
        (and
         (has_type s$ (TYPE%vstd.seq.Seq. A&. A&))
         (has_type n$ INT)
        )
        (=>
         (and
          (<= 0 (%I n$))
          (<= (%I n$) (vstd!seq.Seq.len.? A&. A& s$))
         )
         (= (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s$ (I 0) n$)) (%I n$))
       ))
       :pattern ((vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s$ (I 0) n$)))
       :qid user_crate__vstd__seq_lib__lemma_seq_properties_151
       :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_151
     ))
     (forall ((s$ Poly) (n$ Poly) (x$ Poly)) (!
       (=>
        (and
         (has_type s$ (TYPE%vstd.seq.Seq. A&. A&))
         (has_type n$ INT)
         (has_type x$ A&)
        )
        (= (and
          (vstd.seq_lib.impl&%0.contains.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s$ (I 0) n$)
           x$
          )
          (and
           (<= 0 (%I n$))
           (<= (%I n$) (vstd!seq.Seq.len.? A&. A& s$))
          )
         ) (exists ((i$ Poly)) (!
           (and
            (has_type i$ INT)
            (and
             (and
              (and
               (<= 0 (%I i$))
               (< (%I i$) (%I n$))
              )
              (<= (%I n$) (vstd!seq.Seq.len.? A&. A& s$))
             )
             (= (vstd!seq.Seq.index.? A&. A& s$ i$) x$)
           ))
           :pattern ((vstd!seq.Seq.index.? A&. A& s$ i$))
           :qid user_crate__vstd__seq_lib__lemma_seq_properties_152
           :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_152
       ))))
       :pattern ((vstd.seq_lib.impl&%0.contains.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s$
          (I 0) n$
         ) x$
       ))
       :qid user_crate__vstd__seq_lib__lemma_seq_properties_153
       :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_153
     ))
     (forall ((s$ Poly) (n$ Poly) (j$ Poly)) (!
       (=>
        (and
         (has_type s$ (TYPE%vstd.seq.Seq. A&. A&))
         (has_type n$ INT)
         (has_type j$ INT)
        )
        (=>
         (and
          (and
           (<= 0 (%I j$))
           (< (%I j$) (%I n$))
          )
          (<= (%I n$) (vstd!seq.Seq.len.? A&. A& s$))
         )
         (= (vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s$ (I 0) n$) j$) (
           vstd!seq.Seq.index.? A&. A& s$ j$
       ))))
       :pattern ((vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s$ (I 0) n$)
         j$
       ))
       :qid user_crate__vstd__seq_lib__lemma_seq_properties_154
       :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_154
     ))
     (forall ((s$ Poly) (n$ Poly)) (!
       (=>
        (and
         (has_type s$ (TYPE%vstd.seq.Seq. A&. A&))
         (has_type n$ INT)
        )
        (=>
         (and
          (<= 0 (%I n$))
          (<= (%I n$) (vstd!seq.Seq.len.? A&. A& s$))
         )
         (= (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s$ n$ (I (vstd!seq.Seq.len.?
              A&. A& s$
           )))
          ) (Sub (vstd!seq.Seq.len.? A&. A& s$) (%I n$))
       )))
       :pattern ((vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s$ n$ (I (vstd!seq.Seq.len.?
            A&. A& s$
       )))))
       :qid user_crate__vstd__seq_lib__lemma_seq_properties_155
       :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_155
     ))
     (forall ((s$ Poly) (n$ Poly) (x$ Poly)) (!
       (=>
        (and
         (has_type s$ (TYPE%vstd.seq.Seq. A&. A&))
         (has_type n$ INT)
         (has_type x$ A&)
        )
        (= (and
          (vstd.seq_lib.impl&%0.contains.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s$ n$ (I (vstd!seq.Seq.len.?
              A&. A& s$
            ))
           ) x$
          )
          (and
           (<= 0 (%I n$))
           (<= (%I n$) (vstd!seq.Seq.len.? A&. A& s$))
          )
         ) (exists ((i$ Poly)) (!
           (and
            (has_type i$ INT)
            (and
             (and
              (and
               (<= 0 (%I n$))
               (<= (%I n$) (%I i$))
              )
              (< (%I i$) (vstd!seq.Seq.len.? A&. A& s$))
             )
             (= (vstd!seq.Seq.index.? A&. A& s$ i$) x$)
           ))
           :pattern ((vstd!seq.Seq.index.? A&. A& s$ i$))
           :qid user_crate__vstd__seq_lib__lemma_seq_properties_156
           :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_156
       ))))
       :pattern ((vstd.seq_lib.impl&%0.contains.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s$
          n$ (I (vstd!seq.Seq.len.? A&. A& s$))
         ) x$
       ))
       :qid user_crate__vstd__seq_lib__lemma_seq_properties_157
       :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_157
     ))
     (forall ((s$ Poly) (n$ Poly) (j$ Poly)) (!
       (=>
        (and
         (has_type s$ (TYPE%vstd.seq.Seq. A&. A&))
         (has_type n$ INT)
         (has_type j$ INT)
        )
        (=>
         (and
          (<= 0 (%I n$))
          (and
           (<= 0 (%I j$))
           (< (%I j$) (Sub (vstd!seq.Seq.len.? A&. A& s$) (%I n$)))
         ))
         (= (vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s$ n$ (I (vstd!seq.Seq.len.?
              A&. A& s$
            ))
           ) j$
          ) (vstd!seq.Seq.index.? A&. A& s$ (I (Add (%I j$) (%I n$))))
       )))
       :pattern ((vstd!seq.Seq.index.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s$ n$ (I (vstd!seq.Seq.len.?
            A&. A& s$
          ))
         ) j$
       ))
       :qid user_crate__vstd__seq_lib__lemma_seq_properties_158
       :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_158
     ))
     (forall ((a$ Poly) (b$ Poly) (n$ Poly)) (!
       (=>
        (and
         (has_type a$ (TYPE%vstd.seq.Seq. A&. A&))
         (has_type b$ (TYPE%vstd.seq.Seq. A&. A&))
         (has_type n$ INT)
        )
        (=>
         (= (%I n$) (vstd!seq.Seq.len.? A&. A& a$))
         (and
          (ext_eq false (TYPE%vstd.seq.Seq. A&. A&) (vstd!seq.Seq.subrange.? A&. A& (vstd!seq.Seq.add.?
             A&. A& a$ b$
            ) (I 0) n$
           ) a$
          )
          (ext_eq false (TYPE%vstd.seq.Seq. A&. A&) (vstd!seq.Seq.subrange.? A&. A& (vstd!seq.Seq.add.?
             A&. A& a$ b$
            ) n$ (I (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.add.? A&. A& a$ b$)))
           ) b$
       ))))
       :pattern ((vstd!seq.Seq.subrange.? A&. A& (vstd!seq.Seq.add.? A&. A& a$ b$) (I 0) n$))
       :pattern ((vstd!seq.Seq.subrange.? A&. A& (vstd!seq.Seq.add.? A&. A& a$ b$) n$ (I (vstd!seq.Seq.len.?
           A&. A& (vstd!seq.Seq.add.? A&. A& a$ b$)
       ))))
       :qid user_crate__vstd__seq_lib__lemma_seq_properties_159
       :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_159
     ))
     (forall ((s$ Poly) (i$ Poly) (v$ Poly) (n$ Poly)) (!
       (=>
        (and
         (has_type s$ (TYPE%vstd.seq.Seq. A&. A&))
         (has_type i$ INT)
         (has_type v$ A&)
         (has_type n$ INT)
        )
        (=>
         (and
          (and
           (<= 0 (%I i$))
           (< (%I i$) (%I n$))
          )
          (<= (%I n$) (vstd!seq.Seq.len.? A&. A& s$))
         )
         (= (vstd!seq.Seq.subrange.? A&. A& (vstd!seq.Seq.update.? A&. A& s$ i$ v$) (I 0) n$)
          (vstd!seq.Seq.update.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s$ (I 0) n$) i$ v$)
       )))
       :pattern ((vstd!seq.Seq.subrange.? A&. A& (vstd!seq.Seq.update.? A&. A& s$ i$ v$) (
          I 0
         ) n$
       ))
       :qid user_crate__vstd__seq_lib__lemma_seq_properties_160
       :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_160
     ))
     (forall ((s$ Poly) (i$ Poly) (v$ Poly) (n$ Poly)) (!
       (=>
        (and
         (has_type s$ (TYPE%vstd.seq.Seq. A&. A&))
         (has_type i$ INT)
         (has_type v$ A&)
         (has_type n$ INT)
        )
        (=>
         (and
          (and
           (<= 0 (%I n$))
           (<= (%I n$) (%I i$))
          )
          (< (%I i$) (vstd!seq.Seq.len.? A&. A& s$))
         )
         (= (vstd!seq.Seq.subrange.? A&. A& (vstd!seq.Seq.update.? A&. A& s$ i$ v$) (I 0) n$)
          (vstd!seq.Seq.subrange.? A&. A& s$ (I 0) n$)
       )))
       :pattern ((vstd!seq.Seq.subrange.? A&. A& (vstd!seq.Seq.update.? A&. A& s$ i$ v$) (
          I 0
         ) n$
       ))
       :qid user_crate__vstd__seq_lib__lemma_seq_properties_161
       :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_161
     ))
     (forall ((s$ Poly) (i$ Poly) (v$ Poly) (n$ Poly)) (!
       (=>
        (and
         (has_type s$ (TYPE%vstd.seq.Seq. A&. A&))
         (has_type i$ INT)
         (has_type v$ A&)
         (has_type n$ INT)
        )
        (=>
         (and
          (and
           (<= 0 (%I n$))
           (<= (%I n$) (%I i$))
          )
          (< (%I i$) (vstd!seq.Seq.len.? A&. A& s$))
         )
         (= (vstd!seq.Seq.subrange.? A&. A& (vstd!seq.Seq.update.? A&. A& s$ i$ v$) n$ (I (vstd!seq.Seq.len.?
             A&. A& (vstd!seq.Seq.update.? A&. A& s$ i$ v$)
           ))
          ) (vstd!seq.Seq.update.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s$ n$ (I (vstd!seq.Seq.len.?
              A&. A& s$
            ))
           ) (I (Sub (%I i$) (%I n$))) v$
       ))))
       :pattern ((vstd!seq.Seq.subrange.? A&. A& (vstd!seq.Seq.update.? A&. A& s$ i$ v$) n$
         (I (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.update.? A&. A& s$ i$ v$)))
       ))
       :qid user_crate__vstd__seq_lib__lemma_seq_properties_162
       :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_162
     ))
     (forall ((s$ Poly) (i$ Poly) (v$ Poly) (n$ Poly)) (!
       (=>
        (and
         (has_type s$ (TYPE%vstd.seq.Seq. A&. A&))
         (has_type i$ INT)
         (has_type v$ A&)
         (has_type n$ INT)
        )
        (=>
         (and
          (and
           (<= 0 (%I i$))
           (< (%I i$) (%I n$))
          )
          (<= (%I n$) (vstd!seq.Seq.len.? A&. A& s$))
         )
         (= (vstd!seq.Seq.subrange.? A&. A& (vstd!seq.Seq.update.? A&. A& s$ i$ v$) n$ (I (vstd!seq.Seq.len.?
             A&. A& (vstd!seq.Seq.update.? A&. A& s$ i$ v$)
           ))
          ) (vstd!seq.Seq.subrange.? A&. A& s$ n$ (I (vstd!seq.Seq.len.? A&. A& s$)))
       )))
       :pattern ((vstd!seq.Seq.subrange.? A&. A& (vstd!seq.Seq.update.? A&. A& s$ i$ v$) n$
         (I (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.update.? A&. A& s$ i$ v$)))
       ))
       :qid user_crate__vstd__seq_lib__lemma_seq_properties_163
       :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_163
     ))
     (forall ((s$ Poly) (v$ Poly) (n$ Poly)) (!
       (=>
        (and
         (has_type s$ (TYPE%vstd.seq.Seq. A&. A&))
         (has_type v$ A&)
         (has_type n$ INT)
        )
        (=>
         (and
          (<= 0 (%I n$))
          (<= (%I n$) (vstd!seq.Seq.len.? A&. A& s$))
         )
         (= (vstd!seq.Seq.subrange.? A&. A& (vstd!seq.Seq.push.? A&. A& s$ v$) n$ (I (vstd!seq.Seq.len.?
             A&. A& (vstd!seq.Seq.push.? A&. A& s$ v$)
           ))
          ) (vstd!seq.Seq.push.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s$ n$ (I (vstd!seq.Seq.len.?
              A&. A& s$
            ))
           ) v$
       ))))
       :pattern ((vstd!seq.Seq.subrange.? A&. A& (vstd!seq.Seq.push.? A&. A& s$ v$) n$ (I (
           vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.push.? A&. A& s$ v$)
       ))))
       :qid user_crate__vstd__seq_lib__lemma_seq_properties_164
       :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_164
     ))
     (forall ((s$ Poly) (n$ Poly)) (!
       (=>
        (and
         (has_type s$ (TYPE%vstd.seq.Seq. A&. A&))
         (has_type n$ INT)
        )
        (=>
         (= (%I n$) 0)
         (= (vstd!seq.Seq.subrange.? A&. A& s$ n$ (I (vstd!seq.Seq.len.? A&. A& s$))) s$)
       ))
       :pattern ((vstd!seq.Seq.subrange.? A&. A& s$ n$ (I (vstd!seq.Seq.len.? A&. A& s$))))
       :qid user_crate__vstd__seq_lib__lemma_seq_properties_165
       :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_165
     ))
     (forall ((s$ Poly) (n$ Poly)) (!
       (=>
        (and
         (has_type s$ (TYPE%vstd.seq.Seq. A&. A&))
         (has_type n$ INT)
        )
        (=>
         (= (%I n$) 0)
         (= (vstd!seq.Seq.subrange.? A&. A& s$ (I 0) n$) (vstd!seq.Seq.empty.? A&. A&))
       ))
       :pattern ((vstd!seq.Seq.subrange.? A&. A& s$ (I 0) n$))
       :qid user_crate__vstd__seq_lib__lemma_seq_properties_166
       :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_166
     ))
     (forall ((s$ Poly) (m$ Poly) (n$ Poly)) (!
       (=>
        (and
         (has_type s$ (TYPE%vstd.seq.Seq. A&. A&))
         (has_type m$ INT)
         (has_type n$ INT)
        )
        (=>
         (and
          (and
           (<= 0 (%I m$))
           (<= 0 (%I n$))
          )
          (<= (Add (%I m$) (%I n$)) (vstd!seq.Seq.len.? A&. A& s$))
         )
         (= (vstd!seq.Seq.subrange.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s$ m$ (I (vstd!seq.Seq.len.?
              A&. A& s$
            ))
           ) n$ (I (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s$ m$ (I (vstd!seq.Seq.len.?
                A&. A& s$
           )))))
          ) (vstd!seq.Seq.subrange.? A&. A& s$ (I (Add (%I m$) (%I n$))) (I (vstd!seq.Seq.len.?
             A&. A& s$
       ))))))
       :pattern ((vstd!seq.Seq.subrange.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s$ m$ (I (vstd!seq.Seq.len.?
            A&. A& s$
          ))
         ) n$ (I (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.subrange.? A&. A& s$ m$ (I (vstd!seq.Seq.len.?
              A&. A& s$
       )))))))
       :qid user_crate__vstd__seq_lib__lemma_seq_properties_167
       :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_167
     ))
     (forall ((s$ Poly) (a$ Poly)) (!
       (=>
        (and
         (has_type s$ (TYPE%vstd.seq.Seq. A&. A&))
         (has_type a$ A&)
        )
        (ext_eq false (TYPE%vstd.multiset.Multiset. A&. A&) (vstd.seq_lib.impl&%0.to_multiset.?
          A&. A& (vstd!seq.Seq.push.? A&. A& s$ a$)
         ) (vstd.multiset.impl&%0.insert.? A&. A& (vstd.seq_lib.impl&%0.to_multiset.? A&. A&
           s$
          ) a$
       )))
       :pattern ((vstd.seq_lib.impl&%0.to_multiset.? A&. A& (vstd!seq.Seq.push.? A&. A& s$
          a$
       )))
       :qid user_crate__vstd__seq_lib__lemma_seq_properties_168
       :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_168
     ))
     (forall ((s$ Poly)) (!
       (=>
        (has_type s$ (TYPE%vstd.seq.Seq. A&. A&))
        (= (vstd!seq.Seq.len.? A&. A& s$) (vstd.multiset.impl&%0.len.? A&. A& (vstd.seq_lib.impl&%0.to_multiset.?
           A&. A& s$
       ))))
       :pattern ((vstd.multiset.impl&%0.len.? A&. A& (vstd.seq_lib.impl&%0.to_multiset.? A&.
          A& s$
       )))
       :qid user_crate__vstd__seq_lib__lemma_seq_properties_169
       :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_169
     ))
     (forall ((s$ Poly) (a$ Poly)) (!
       (=>
        (and
         (has_type s$ (TYPE%vstd.seq.Seq. A&. A&))
         (has_type a$ A&)
        )
        (= (vstd.seq_lib.impl&%0.contains.? A&. A& s$ a$) (> (vstd.multiset.impl&%0.count.?
           A&. A& (vstd.seq_lib.impl&%0.to_multiset.? A&. A& s$) a$
          ) 0
       )))
       :pattern ((vstd.multiset.impl&%0.count.? A&. A& (vstd.seq_lib.impl&%0.to_multiset.?
          A&. A& s$
         ) a$
       ))
       :qid user_crate__vstd__seq_lib__lemma_seq_properties_170
       :skolemid skolem_user_crate__vstd__seq_lib__lemma_seq_properties_170
   ))))
   :pattern ((ens%vstd.seq_lib.lemma_seq_properties. A&. A&))
   :qid internal_ens__vstd.seq_lib.lemma_seq_properties._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.lemma_seq_properties._definition
)))

;; Function-Specs crate::vstd::relations::lemma_new_first_element_still_sorted_by
(declare-fun req%vstd.relations.lemma_new_first_element_still_sorted_by. (Dcr Type
  Poly Poly %%Function%%
 ) Bool
)
(declare-const %%global_location_label%%28 Bool)
(declare-const %%global_location_label%%29 Bool)
(declare-const %%global_location_label%%30 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (x! Poly) (s! Poly) (less_than! %%Function%%)) (!
   (= (req%vstd.relations.lemma_new_first_element_still_sorted_by. T&. T& x! s! less_than!)
    (and
     (=>
      %%global_location_label%%28
      (vstd.relations.sorted_by.? T&. T& s! (Poly%fun%2. less_than!))
     )
     (=>
      %%global_location_label%%29
      (or
       (= (vstd!seq.Seq.len.? T&. T& s!) 0)
       (%B (%%apply%%1 less_than! x! (vstd!seq.Seq.index.? T&. T& s! (I 0))))
     ))
     (=>
      %%global_location_label%%30
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

;; Function-Specs crate::vstd::seq_lib::lemma_merge_sorted_with_ensures
(declare-fun req%vstd.seq_lib.lemma_merge_sorted_with_ensures. (Dcr Type Poly Poly
  %%Function%%
 ) Bool
)
(declare-const %%global_location_label%%31 Bool)
(declare-const %%global_location_label%%32 Bool)
(declare-const %%global_location_label%%33 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (left! Poly) (right! Poly) (leq! %%Function%%)) (!
   (= (req%vstd.seq_lib.lemma_merge_sorted_with_ensures. A&. A& left! right! leq!) (and
     (=>
      %%global_location_label%%31
      (vstd.relations.sorted_by.? A&. A& left! (Poly%fun%2. leq!))
     )
     (=>
      %%global_location_label%%32
      (vstd.relations.sorted_by.? A&. A& right! (Poly%fun%2. leq!))
     )
     (=>
      %%global_location_label%%33
      (vstd.relations.total_ordering.? A&. A& (Poly%fun%2. leq!))
   )))
   :pattern ((req%vstd.seq_lib.lemma_merge_sorted_with_ensures. A&. A& left! right! leq!))
   :qid internal_req__vstd.seq_lib.lemma_merge_sorted_with_ensures._definition
   :skolemid skolem_internal_req__vstd.seq_lib.lemma_merge_sorted_with_ensures._definition
)))
(declare-fun ens%vstd.seq_lib.lemma_merge_sorted_with_ensures. (Dcr Type Poly Poly
  %%Function%%
 ) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (left! Poly) (right! Poly) (leq! %%Function%%)) (!
   (= (ens%vstd.seq_lib.lemma_merge_sorted_with_ensures. A&. A& left! right! leq!) (and
     (ext_eq false (TYPE%vstd.multiset.Multiset. A&. A&) (vstd.seq_lib.impl&%0.to_multiset.?
       A&. A& (vstd!seq.Seq.add.? A&. A& left! right!)
      ) (vstd.seq_lib.impl&%0.to_multiset.? A&. A& (vstd.seq_lib.merge_sorted_with.? A&.
        A& left! right! (Poly%fun%2. leq!)
     )))
     (vstd.relations.sorted_by.? A&. A& (vstd.seq_lib.merge_sorted_with.? A&. A& left! right!
       (Poly%fun%2. leq!)
      ) (Poly%fun%2. leq!)
   )))
   :pattern ((ens%vstd.seq_lib.lemma_merge_sorted_with_ensures. A&. A& left! right! leq!))
   :qid internal_ens__vstd.seq_lib.lemma_merge_sorted_with_ensures._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.lemma_merge_sorted_with_ensures._definition
)))

;; Function-Specs crate::vstd::seq::Seq::lemma_sort_by_ensures
(declare-fun req%vstd.seq_lib.impl&%0.lemma_sort_by_ensures. (Dcr Type Poly %%Function%%)
 Bool
)
(declare-const %%global_location_label%%34 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (leq! %%Function%%)) (!
   (= (req%vstd.seq_lib.impl&%0.lemma_sort_by_ensures. A&. A& self! leq!) (=>
     %%global_location_label%%34
     (vstd.relations.total_ordering.? A&. A& (Poly%fun%2. leq!))
   ))
   :pattern ((req%vstd.seq_lib.impl&%0.lemma_sort_by_ensures. A&. A& self! leq!))
   :qid internal_req__vstd.seq_lib.impl&__0.lemma_sort_by_ensures._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.lemma_sort_by_ensures._definition
)))
(declare-fun ens%vstd.seq_lib.impl&%0.lemma_sort_by_ensures. (Dcr Type Poly %%Function%%)
 Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (leq! %%Function%%)) (!
   (= (ens%vstd.seq_lib.impl&%0.lemma_sort_by_ensures. A&. A& self! leq!) (and
     (ext_eq false (TYPE%vstd.multiset.Multiset. A&. A&) (vstd.seq_lib.impl&%0.to_multiset.?
       A&. A& self!
      ) (vstd.seq_lib.impl&%0.to_multiset.? A&. A& (vstd.seq_lib.impl&%0.sort_by.? A&. A&
        self! (Poly%fun%2. leq!)
     )))
     (vstd.relations.sorted_by.? A&. A& (vstd.seq_lib.impl&%0.sort_by.? A&. A& self! (Poly%fun%2.
        leq!
       )
      ) (Poly%fun%2. leq!)
     )
     (forall ((x$ Poly)) (!
       (=>
        (has_type x$ A&)
        (=>
         (not (vstd.seq_lib.impl&%0.contains.? A&. A& self! x$))
         (not (vstd.seq_lib.impl&%0.contains.? A&. A& (vstd.seq_lib.impl&%0.sort_by.? A&. A&
            self! (Poly%fun%2. leq!)
           ) x$
       ))))
       :pattern ((vstd.seq_lib.impl&%0.contains.? A&. A& (vstd.seq_lib.impl&%0.sort_by.? A&.
          A& self! (Poly%fun%2. leq!)
         ) x$
       ))
       :qid user_crate__vstd__seq__Seq__lemma_sort_by_ensures_236
       :skolemid skolem_user_crate__vstd__seq__Seq__lemma_sort_by_ensures_236
   ))))
   :pattern ((ens%vstd.seq_lib.impl&%0.lemma_sort_by_ensures. A&. A& self! leq!))
   :qid internal_ens__vstd.seq_lib.impl&__0.lemma_sort_by_ensures._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.lemma_sort_by_ensures._definition
)))

;; Function-Specs crate::vstd::seq::Seq::index_of_first_ensures
(declare-fun ens%vstd.seq_lib.impl&%0.index_of_first_ensures. (Dcr Type Poly Poly)
 Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (needle! Poly)) (!
   (= (ens%vstd.seq_lib.impl&%0.index_of_first_ensures. A&. A& self! needle!) (let
     ((tmp%%$ (vstd.seq_lib.impl&%0.index_of_first.? A&. A& self! needle!)))
     (ite
      (is-core!option.Option./Some tmp%%$)
      (let
       ((index$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
             tmp%%$
       ))))))
       (and
        (and
         (and
          (vstd.seq_lib.impl&%0.contains.? A&. A& self! needle!)
          (and
           (<= 0 index$)
           (< index$ (vstd!seq.Seq.len.? A&. A& self!))
         ))
         (= (vstd!seq.Seq.index.? A&. A& self! (I index$)) needle!)
        )
        (forall ((j$ Poly)) (!
          (=>
           (has_type j$ INT)
           (=>
            (and
             (and
              (<= 0 (%I j$))
              (< (%I j$) index$)
             )
             (< index$ (vstd!seq.Seq.len.? A&. A& self!))
            )
            (not (= (vstd!seq.Seq.index.? A&. A& self! j$) needle!))
          ))
          :pattern ((vstd!seq.Seq.index.? A&. A& self! j$))
          :qid user_crate__vstd__seq__Seq__index_of_first_ensures_239
          :skolemid skolem_user_crate__vstd__seq__Seq__index_of_first_ensures_239
      ))))
      (not (vstd.seq_lib.impl&%0.contains.? A&. A& self! needle!))
   )))
   :pattern ((ens%vstd.seq_lib.impl&%0.index_of_first_ensures. A&. A& self! needle!))
   :qid internal_ens__vstd.seq_lib.impl&__0.index_of_first_ensures._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.index_of_first_ensures._definition
)))

;; Function-Specs crate::vstd::seq::Seq::index_of_last_ensures
(declare-fun ens%vstd.seq_lib.impl&%0.index_of_last_ensures. (Dcr Type Poly Poly)
 Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (needle! Poly)) (!
   (= (ens%vstd.seq_lib.impl&%0.index_of_last_ensures. A&. A& self! needle!) (let
     ((tmp%%$ (vstd.seq_lib.impl&%0.index_of_last.? A&. A& self! needle!)))
     (ite
      (is-core!option.Option./Some tmp%%$)
      (let
       ((index$ (%I (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
             tmp%%$
       ))))))
       (and
        (and
         (and
          (vstd.seq_lib.impl&%0.contains.? A&. A& self! needle!)
          (and
           (<= 0 index$)
           (< index$ (vstd!seq.Seq.len.? A&. A& self!))
         ))
         (= (vstd!seq.Seq.index.? A&. A& self! (I index$)) needle!)
        )
        (forall ((j$ Poly)) (!
          (=>
           (has_type j$ INT)
           (=>
            (and
             (and
              (<= 0 index$)
              (< index$ (%I j$))
             )
             (< (%I j$) (vstd!seq.Seq.len.? A&. A& self!))
            )
            (not (= (vstd!seq.Seq.index.? A&. A& self! j$) needle!))
          ))
          :pattern ((vstd!seq.Seq.index.? A&. A& self! j$))
          :qid user_crate__vstd__seq__Seq__index_of_last_ensures_241
          :skolemid skolem_user_crate__vstd__seq__Seq__index_of_last_ensures_241
      ))))
      (not (vstd.seq_lib.impl&%0.contains.? A&. A& self! needle!))
   )))
   :pattern ((ens%vstd.seq_lib.impl&%0.index_of_last_ensures. A&. A& self! needle!))
   :qid internal_ens__vstd.seq_lib.impl&__0.index_of_last_ensures._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.index_of_last_ensures._definition
)))

;; Function-Specs crate::vstd::seq::Seq::insert_ensures
(declare-fun req%vstd.seq_lib.impl&%0.insert_ensures. (Dcr Type Poly Int Poly) Bool)
(declare-const %%global_location_label%%35 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (pos! Int) (elt! Poly)) (!
   (= (req%vstd.seq_lib.impl&%0.insert_ensures. A&. A& self! pos! elt!) (=>
     %%global_location_label%%35
     (and
      (<= 0 pos!)
      (<= pos! (vstd!seq.Seq.len.? A&. A& self!))
   )))
   :pattern ((req%vstd.seq_lib.impl&%0.insert_ensures. A&. A& self! pos! elt!))
   :qid internal_req__vstd.seq_lib.impl&__0.insert_ensures._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.insert_ensures._definition
)))
(declare-fun ens%vstd.seq_lib.impl&%0.insert_ensures. (Dcr Type Poly Int Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (pos! Int) (elt! Poly)) (!
   (= (ens%vstd.seq_lib.impl&%0.insert_ensures. A&. A& self! pos! elt!) (and
     (= (vstd!seq.Seq.len.? A&. A& (vstd.seq_lib.impl&%0.insert.? A&. A& self! (I pos!) elt!))
      (nClip (Add (vstd!seq.Seq.len.? A&. A& self!) 1))
     )
     (forall ((i$ Poly)) (!
       (=>
        (has_type i$ INT)
        (=>
         (and
          (<= 0 (%I i$))
          (< (%I i$) pos!)
         )
         (= (vstd!seq.Seq.index.? A&. A& (vstd.seq_lib.impl&%0.insert.? A&. A& self! (I pos!)
            elt!
           ) i$
          ) (vstd!seq.Seq.index.? A&. A& self! i$)
       )))
       :pattern ((vstd!seq.Seq.index.? A&. A& (vstd.seq_lib.impl&%0.insert.? A&. A& self! (
           I pos!
          ) elt!
         ) i$
       ))
       :qid user_crate__vstd__seq__Seq__insert_ensures_243
       :skolemid skolem_user_crate__vstd__seq__Seq__insert_ensures_243
     ))
     (forall ((i$ Poly)) (!
       (=>
        (has_type i$ INT)
        (=>
         (and
          (<= pos! (%I i$))
          (< (%I i$) (vstd!seq.Seq.len.? A&. A& self!))
         )
         (= (vstd!seq.Seq.index.? A&. A& (vstd.seq_lib.impl&%0.insert.? A&. A& self! (I pos!)
            elt!
           ) (I (Add (%I i$) 1))
          ) (vstd!seq.Seq.index.? A&. A& self! i$)
       )))
       :pattern ((vstd!seq.Seq.index.? A&. A& self! i$))
       :qid user_crate__vstd__seq__Seq__insert_ensures_244
       :skolemid skolem_user_crate__vstd__seq__Seq__insert_ensures_244
     ))
     (= (vstd!seq.Seq.index.? A&. A& (vstd.seq_lib.impl&%0.insert.? A&. A& self! (I pos!)
        elt!
       ) (I pos!)
      ) elt!
   )))
   :pattern ((ens%vstd.seq_lib.impl&%0.insert_ensures. A&. A& self! pos! elt!))
   :qid internal_ens__vstd.seq_lib.impl&__0.insert_ensures._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.insert_ensures._definition
)))

;; Function-Specs crate::vstd::seq::Seq::remove_ensures
(declare-fun req%vstd.seq_lib.impl&%0.remove_ensures. (Dcr Type Poly Int) Bool)
(declare-const %%global_location_label%%36 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Int)) (!
   (= (req%vstd.seq_lib.impl&%0.remove_ensures. A&. A& self! i!) (=>
     %%global_location_label%%36
     (and
      (<= 0 i!)
      (< i! (vstd!seq.Seq.len.? A&. A& self!))
   )))
   :pattern ((req%vstd.seq_lib.impl&%0.remove_ensures. A&. A& self! i!))
   :qid internal_req__vstd.seq_lib.impl&__0.remove_ensures._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.remove_ensures._definition
)))
(declare-fun ens%vstd.seq_lib.impl&%0.remove_ensures. (Dcr Type Poly Int) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Int)) (!
   (= (ens%vstd.seq_lib.impl&%0.remove_ensures. A&. A& self! i!) (and
     (= (vstd!seq.Seq.len.? A&. A& (vstd.seq_lib.impl&%0.remove.? A&. A& self! (I i!)))
      (Sub (vstd!seq.Seq.len.? A&. A& self!) 1)
     )
     (forall ((index$ Poly)) (!
       (=>
        (has_type index$ INT)
        (=>
         (and
          (<= 0 (%I index$))
          (< (%I index$) i!)
         )
         (= (vstd!seq.Seq.index.? A&. A& (vstd.seq_lib.impl&%0.remove.? A&. A& self! (I i!))
           index$
          ) (vstd!seq.Seq.index.? A&. A& self! index$)
       )))
       :pattern ((vstd!seq.Seq.index.? A&. A& (vstd.seq_lib.impl&%0.remove.? A&. A& self! (
           I i!
          )
         ) index$
       ))
       :qid user_crate__vstd__seq__Seq__remove_ensures_247
       :skolemid skolem_user_crate__vstd__seq__Seq__remove_ensures_247
     ))
     (forall ((index$ Poly)) (!
       (=>
        (has_type index$ INT)
        (=>
         (and
          (<= i! (%I index$))
          (< (%I index$) (Sub (vstd!seq.Seq.len.? A&. A& self!) 1))
         )
         (= (vstd!seq.Seq.index.? A&. A& (vstd.seq_lib.impl&%0.remove.? A&. A& self! (I i!))
           index$
          ) (vstd!seq.Seq.index.? A&. A& self! (I (Add (%I index$) 1)))
       )))
       :pattern ((vstd!seq.Seq.index.? A&. A& (vstd.seq_lib.impl&%0.remove.? A&. A& self! (
           I i!
          )
         ) index$
       ))
       :qid user_crate__vstd__seq__Seq__remove_ensures_248
       :skolemid skolem_user_crate__vstd__seq__Seq__remove_ensures_248
   ))))
   :pattern ((ens%vstd.seq_lib.impl&%0.remove_ensures. A&. A& self! i!))
   :qid internal_ens__vstd.seq_lib.impl&__0.remove_ensures._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.remove_ensures._definition
)))

;; Function-Specs crate::vstd::seq::Seq::aux_lemma_fold_left_alt
(declare-fun req%vstd.seq_lib.impl&%0.aux_lemma_fold_left_alt. (Dcr Type Dcr Type Poly
  Poly %%Function%% Int
 ) Bool
)
(declare-const %%global_location_label%%37 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (b! Poly) (f! %%Function%%)
   (k! Int)
  ) (!
   (= (req%vstd.seq_lib.impl&%0.aux_lemma_fold_left_alt. A&. A& B&. B& self! b! f! k!)
    (=>
     %%global_location_label%%37
     (and
      (< 0 k!)
      (<= k! (vstd!seq.Seq.len.? A&. A& self!))
   )))
   :pattern ((req%vstd.seq_lib.impl&%0.aux_lemma_fold_left_alt. A&. A& B&. B& self! b!
     f! k!
   ))
   :qid internal_req__vstd.seq_lib.impl&__0.aux_lemma_fold_left_alt._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.aux_lemma_fold_left_alt._definition
)))
(declare-fun ens%vstd.seq_lib.impl&%0.aux_lemma_fold_left_alt. (Dcr Type Dcr Type Poly
  Poly %%Function%% Int
 ) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (b! Poly) (f! %%Function%%)
   (k! Int)
  ) (!
   (= (ens%vstd.seq_lib.impl&%0.aux_lemma_fold_left_alt. A&. A& B&. B& self! b! f! k!)
    (= (vstd.seq_lib.impl&%0.fold_left_alt.? A&. A& B&. B& (vstd!seq.Seq.subrange.? A&.
       A& self! (I k!) (I (vstd!seq.Seq.len.? A&. A& self!))
      ) (vstd.seq_lib.impl&%0.fold_left_alt.? A&. A& B&. B& (vstd!seq.Seq.subrange.? A&.
        A& self! (I 0) (I k!)
       ) b! (Poly%fun%2. f!)
      ) (Poly%fun%2. f!)
     ) (vstd.seq_lib.impl&%0.fold_left_alt.? A&. A& B&. B& self! b! (Poly%fun%2. f!))
   ))
   :pattern ((ens%vstd.seq_lib.impl&%0.aux_lemma_fold_left_alt. A&. A& B&. B& self! b!
     f! k!
   ))
   :qid internal_ens__vstd.seq_lib.impl&__0.aux_lemma_fold_left_alt._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.aux_lemma_fold_left_alt._definition
)))

;; Function-Specs crate::vstd::seq::Seq::lemma_fold_left_alt
(declare-fun ens%vstd.seq_lib.impl&%0.lemma_fold_left_alt. (Dcr Type Dcr Type Poly
  Poly %%Function%%
 ) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (b! Poly) (f! %%Function%%))
  (!
   (= (ens%vstd.seq_lib.impl&%0.lemma_fold_left_alt. A&. A& B&. B& self! b! f!) (= (vstd.seq_lib.impl&%0.fold_left.?
      A&. A& B&. B& self! b! (Poly%fun%2. f!)
     ) (vstd.seq_lib.impl&%0.fold_left_alt.? A&. A& B&. B& self! b! (Poly%fun%2. f!))
   ))
   :pattern ((ens%vstd.seq_lib.impl&%0.lemma_fold_left_alt. A&. A& B&. B& self! b! f!))
   :qid internal_ens__vstd.seq_lib.impl&__0.lemma_fold_left_alt._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.lemma_fold_left_alt._definition
)))

;; Function-Specs crate::vstd::seq::Seq::lemma_fold_right_split
(declare-fun req%vstd.seq_lib.impl&%0.lemma_fold_right_split. (Dcr Type Dcr Type Poly
  %%Function%% Poly Int
 ) Bool
)
(declare-const %%global_location_label%%38 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (f! %%Function%%) (b!
    Poly
   ) (k! Int)
  ) (!
   (= (req%vstd.seq_lib.impl&%0.lemma_fold_right_split. A&. A& B&. B& self! f! b! k!)
    (=>
     %%global_location_label%%38
     (and
      (<= 0 k!)
      (<= k! (vstd!seq.Seq.len.? A&. A& self!))
   )))
   :pattern ((req%vstd.seq_lib.impl&%0.lemma_fold_right_split. A&. A& B&. B& self! f!
     b! k!
   ))
   :qid internal_req__vstd.seq_lib.impl&__0.lemma_fold_right_split._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.lemma_fold_right_split._definition
)))
(declare-fun ens%vstd.seq_lib.impl&%0.lemma_fold_right_split. (Dcr Type Dcr Type Poly
  %%Function%% Poly Int
 ) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (f! %%Function%%) (b!
    Poly
   ) (k! Int)
  ) (!
   (= (ens%vstd.seq_lib.impl&%0.lemma_fold_right_split. A&. A& B&. B& self! f! b! k!)
    (= (vstd.seq_lib.impl&%0.fold_right.? A&. A& B&. B& (vstd!seq.Seq.subrange.? A&. A&
       self! (I 0) (I k!)
      ) (Poly%fun%2. f!) (vstd.seq_lib.impl&%0.fold_right.? A&. A& B&. B& (vstd!seq.Seq.subrange.?
        A&. A& self! (I k!) (I (vstd!seq.Seq.len.? A&. A& self!))
       ) (Poly%fun%2. f!) b!
      )
     ) (vstd.seq_lib.impl&%0.fold_right.? A&. A& B&. B& self! (Poly%fun%2. f!) b!)
   ))
   :pattern ((ens%vstd.seq_lib.impl&%0.lemma_fold_right_split. A&. A& B&. B& self! f!
     b! k!
   ))
   :qid internal_ens__vstd.seq_lib.impl&__0.lemma_fold_right_split._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.lemma_fold_right_split._definition
)))

;; Function-Specs crate::vstd::seq::Seq::lemma_fold_right_commute_one
(declare-fun req%vstd.seq_lib.impl&%0.lemma_fold_right_commute_one. (Dcr Type Dcr Type
  Poly Poly %%Function%% Poly
 ) Bool
)
(declare-const %%global_location_label%%39 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (a! Poly) (f! %%Function%%)
   (v! Poly)
  ) (!
   (= (req%vstd.seq_lib.impl&%0.lemma_fold_right_commute_one. A&. A& B&. B& self! a! f!
     v!
    ) (=>
     %%global_location_label%%39
     (vstd.seq_lib.commutative_foldr.? A&. A& B&. B& (Poly%fun%2. f!))
   ))
   :pattern ((req%vstd.seq_lib.impl&%0.lemma_fold_right_commute_one. A&. A& B&. B& self!
     a! f! v!
   ))
   :qid internal_req__vstd.seq_lib.impl&__0.lemma_fold_right_commute_one._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.lemma_fold_right_commute_one._definition
)))
(declare-fun ens%vstd.seq_lib.impl&%0.lemma_fold_right_commute_one. (Dcr Type Dcr Type
  Poly Poly %%Function%% Poly
 ) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (a! Poly) (f! %%Function%%)
   (v! Poly)
  ) (!
   (= (ens%vstd.seq_lib.impl&%0.lemma_fold_right_commute_one. A&. A& B&. B& self! a! f!
     v!
    ) (= (vstd.seq_lib.impl&%0.fold_right.? A&. A& B&. B& self! (Poly%fun%2. f!) (%%apply%%1
       f! a! v!
      )
     ) (%%apply%%1 f! a! (vstd.seq_lib.impl&%0.fold_right.? A&. A& B&. B& self! (Poly%fun%2.
        f!
       ) v!
   ))))
   :pattern ((ens%vstd.seq_lib.impl&%0.lemma_fold_right_commute_one. A&. A& B&. B& self!
     a! f! v!
   ))
   :qid internal_ens__vstd.seq_lib.impl&__0.lemma_fold_right_commute_one._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.lemma_fold_right_commute_one._definition
)))

;; Function-Specs crate::vstd::seq::Seq::lemma_fold_right_alt
(declare-fun ens%vstd.seq_lib.impl&%0.lemma_fold_right_alt. (Dcr Type Dcr Type Poly
  %%Function%% Poly
 ) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly) (f! %%Function%%) (b!
    Poly
   )
  ) (!
   (= (ens%vstd.seq_lib.impl&%0.lemma_fold_right_alt. A&. A& B&. B& self! f! b!) (= (vstd.seq_lib.impl&%0.fold_right.?
      A&. A& B&. B& self! (Poly%fun%2. f!) b!
     ) (vstd.seq_lib.impl&%0.fold_right_alt.? A&. A& B&. B& self! (Poly%fun%2. f!) b!)
   ))
   :pattern ((ens%vstd.seq_lib.impl&%0.lemma_fold_right_alt. A&. A& B&. B& self! f! b!))
   :qid internal_ens__vstd.seq_lib.impl&__0.lemma_fold_right_alt._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.lemma_fold_right_alt._definition
)))

;; Function-Specs crate::vstd::seq::Seq::lemma_multiset_has_no_duplicates
(declare-fun req%vstd.seq_lib.impl&%0.lemma_multiset_has_no_duplicates. (Dcr Type Poly)
 Bool
)
(declare-const %%global_location_label%%40 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (req%vstd.seq_lib.impl&%0.lemma_multiset_has_no_duplicates. A&. A& self!) (=>
     %%global_location_label%%40
     (vstd.seq_lib.impl&%0.no_duplicates.? A&. A& self!)
   ))
   :pattern ((req%vstd.seq_lib.impl&%0.lemma_multiset_has_no_duplicates. A&. A& self!))
   :qid internal_req__vstd.seq_lib.impl&__0.lemma_multiset_has_no_duplicates._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.lemma_multiset_has_no_duplicates._definition
)))
(declare-fun ens%vstd.seq_lib.impl&%0.lemma_multiset_has_no_duplicates. (Dcr Type Poly)
 Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (ens%vstd.seq_lib.impl&%0.lemma_multiset_has_no_duplicates. A&. A& self!) (forall
     ((x$ Poly)) (!
      (=>
       (has_type x$ A&)
       (=>
        (vstd.multiset.impl&%0.contains.? A&. A& (vstd.seq_lib.impl&%0.to_multiset.? A&. A&
          self!
         ) x$
        )
        (= (vstd.multiset.impl&%0.count.? A&. A& (vstd.seq_lib.impl&%0.to_multiset.? A&. A&
           self!
          ) x$
         ) 1
      )))
      :pattern ((vstd.multiset.impl&%0.contains.? A&. A& (vstd.seq_lib.impl&%0.to_multiset.?
         A&. A& self!
        ) x$
      ))
      :pattern ((vstd.multiset.impl&%0.count.? A&. A& (vstd.seq_lib.impl&%0.to_multiset.?
         A&. A& self!
        ) x$
      ))
      :qid user_crate__vstd__seq__Seq__lemma_multiset_has_no_duplicates_263
      :skolemid skolem_user_crate__vstd__seq__Seq__lemma_multiset_has_no_duplicates_263
   )))
   :pattern ((ens%vstd.seq_lib.impl&%0.lemma_multiset_has_no_duplicates. A&. A& self!))
   :qid internal_ens__vstd.seq_lib.impl&__0.lemma_multiset_has_no_duplicates._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.lemma_multiset_has_no_duplicates._definition
)))

;; Function-Specs crate::vstd::seq::Seq::lemma_multiset_has_no_duplicates_conv
(declare-fun req%vstd.seq_lib.impl&%0.lemma_multiset_has_no_duplicates_conv. (Dcr Type
  Poly
 ) Bool
)
(declare-const %%global_location_label%%41 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (req%vstd.seq_lib.impl&%0.lemma_multiset_has_no_duplicates_conv. A&. A& self!)
    (=>
     %%global_location_label%%41
     (forall ((x$ Poly)) (!
       (=>
        (has_type x$ A&)
        (=>
         (vstd.multiset.impl&%0.contains.? A&. A& (vstd.seq_lib.impl&%0.to_multiset.? A&. A&
           self!
          ) x$
         )
         (= (vstd.multiset.impl&%0.count.? A&. A& (vstd.seq_lib.impl&%0.to_multiset.? A&. A&
            self!
           ) x$
          ) 1
       )))
       :pattern ((vstd.multiset.impl&%0.contains.? A&. A& (vstd.seq_lib.impl&%0.to_multiset.?
          A&. A& self!
         ) x$
       ))
       :pattern ((vstd.multiset.impl&%0.count.? A&. A& (vstd.seq_lib.impl&%0.to_multiset.?
          A&. A& self!
         ) x$
       ))
       :qid user_crate__vstd__seq__Seq__lemma_multiset_has_no_duplicates_conv_266
       :skolemid skolem_user_crate__vstd__seq__Seq__lemma_multiset_has_no_duplicates_conv_266
   ))))
   :pattern ((req%vstd.seq_lib.impl&%0.lemma_multiset_has_no_duplicates_conv. A&. A& self!))
   :qid internal_req__vstd.seq_lib.impl&__0.lemma_multiset_has_no_duplicates_conv._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.lemma_multiset_has_no_duplicates_conv._definition
)))
(declare-fun ens%vstd.seq_lib.impl&%0.lemma_multiset_has_no_duplicates_conv. (Dcr Type
  Poly
 ) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (ens%vstd.seq_lib.impl&%0.lemma_multiset_has_no_duplicates_conv. A&. A& self!)
    (vstd.seq_lib.impl&%0.no_duplicates.? A&. A& self!)
   )
   :pattern ((ens%vstd.seq_lib.impl&%0.lemma_multiset_has_no_duplicates_conv. A&. A& self!))
   :qid internal_ens__vstd.seq_lib.impl&__0.lemma_multiset_has_no_duplicates_conv._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.lemma_multiset_has_no_duplicates_conv._definition
)))

;; Function-Specs crate::vstd::seq::Seq::lemma_add_last_back
(declare-fun req%vstd.seq_lib.impl&%0.lemma_add_last_back. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%42 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (req%vstd.seq_lib.impl&%0.lemma_add_last_back. A&. A& self!) (=>
     %%global_location_label%%42
     (< 0 (vstd!seq.Seq.len.? A&. A& self!))
   ))
   :pattern ((req%vstd.seq_lib.impl&%0.lemma_add_last_back. A&. A& self!))
   :qid internal_req__vstd.seq_lib.impl&__0.lemma_add_last_back._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.lemma_add_last_back._definition
)))
(declare-fun ens%vstd.seq_lib.impl&%0.lemma_add_last_back. (Dcr Type Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (ens%vstd.seq_lib.impl&%0.lemma_add_last_back. A&. A& self!) (ext_eq false (TYPE%vstd.seq.Seq.
      A&. A&
     ) (vstd!seq.Seq.push.? A&. A& (vstd.seq_lib.impl&%0.drop_last.? A&. A& self!) (vstd!seq.Seq.last.?
       A&. A& self!
      )
     ) self!
   ))
   :pattern ((ens%vstd.seq_lib.impl&%0.lemma_add_last_back. A&. A& self!))
   :qid internal_ens__vstd.seq_lib.impl&__0.lemma_add_last_back._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.lemma_add_last_back._definition
)))

;; Function-Specs crate::vstd::seq::Seq::lemma_indexing_implies_membership
(declare-fun req%vstd.seq_lib.impl&%0.lemma_indexing_implies_membership. (Dcr Type
  Poly %%Function%%
 ) Bool
)
(declare-const %%global_location_label%%43 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (f! %%Function%%)) (!
   (= (req%vstd.seq_lib.impl&%0.lemma_indexing_implies_membership. A&. A& self! f!) (
     =>
     %%global_location_label%%43
     (forall ((i$ Poly)) (!
       (=>
        (has_type i$ INT)
        (=>
         (and
          (<= 0 (%I i$))
          (< (%I i$) (vstd!seq.Seq.len.? A&. A& self!))
         )
         (%B (%%apply%%0 f! (vstd!seq.Seq.index.? A&. A& self! i$)))
       ))
       :pattern ((%%apply%%0 f! (vstd!seq.Seq.index.? A&. A& self! i$)) (vstd!seq.Seq.index.?
         A&. A& self! i$
       ))
       :qid user_crate__vstd__seq__Seq__lemma_indexing_implies_membership_269
       :skolemid skolem_user_crate__vstd__seq__Seq__lemma_indexing_implies_membership_269
   ))))
   :pattern ((req%vstd.seq_lib.impl&%0.lemma_indexing_implies_membership. A&. A& self!
     f!
   ))
   :qid internal_req__vstd.seq_lib.impl&__0.lemma_indexing_implies_membership._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.lemma_indexing_implies_membership._definition
)))
(declare-fun ens%vstd.seq_lib.impl&%0.lemma_indexing_implies_membership. (Dcr Type
  Poly %%Function%%
 ) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (f! %%Function%%)) (!
   (= (ens%vstd.seq_lib.impl&%0.lemma_indexing_implies_membership. A&. A& self! f!) (
     forall ((x$ Poly)) (!
      (=>
       (has_type x$ A&)
       (=>
        (vstd.seq_lib.impl&%0.contains.? A&. A& self! x$)
        (%B (%%apply%%0 f! x$))
      ))
      :pattern ((vstd.seq_lib.impl&%0.contains.? A&. A& self! x$) (%%apply%%0 f! x$))
      :qid user_crate__vstd__seq__Seq__lemma_indexing_implies_membership_270
      :skolemid skolem_user_crate__vstd__seq__Seq__lemma_indexing_implies_membership_270
   )))
   :pattern ((ens%vstd.seq_lib.impl&%0.lemma_indexing_implies_membership. A&. A& self!
     f!
   ))
   :qid internal_ens__vstd.seq_lib.impl&__0.lemma_indexing_implies_membership._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.lemma_indexing_implies_membership._definition
)))

;; Function-Specs crate::vstd::seq::Seq::lemma_membership_implies_indexing
(declare-fun req%vstd.seq_lib.impl&%0.lemma_membership_implies_indexing. (Dcr Type
  Poly %%Function%%
 ) Bool
)
(declare-const %%global_location_label%%44 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (f! %%Function%%)) (!
   (= (req%vstd.seq_lib.impl&%0.lemma_membership_implies_indexing. A&. A& self! f!) (
     =>
     %%global_location_label%%44
     (forall ((x$ Poly)) (!
       (=>
        (has_type x$ A&)
        (=>
         (vstd.seq_lib.impl&%0.contains.? A&. A& self! x$)
         (%B (%%apply%%0 f! x$))
       ))
       :pattern ((vstd.seq_lib.impl&%0.contains.? A&. A& self! x$) (%%apply%%0 f! x$))
       :qid user_crate__vstd__seq__Seq__lemma_membership_implies_indexing_274
       :skolemid skolem_user_crate__vstd__seq__Seq__lemma_membership_implies_indexing_274
   ))))
   :pattern ((req%vstd.seq_lib.impl&%0.lemma_membership_implies_indexing. A&. A& self!
     f!
   ))
   :qid internal_req__vstd.seq_lib.impl&__0.lemma_membership_implies_indexing._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.lemma_membership_implies_indexing._definition
)))
(declare-fun ens%vstd.seq_lib.impl&%0.lemma_membership_implies_indexing. (Dcr Type
  Poly %%Function%%
 ) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (f! %%Function%%)) (!
   (= (ens%vstd.seq_lib.impl&%0.lemma_membership_implies_indexing. A&. A& self! f!) (
     forall ((i$ Poly)) (!
      (=>
       (has_type i$ INT)
       (=>
        (and
         (<= 0 (%I i$))
         (< (%I i$) (vstd!seq.Seq.len.? A&. A& self!))
        )
        (%B (%%apply%%0 f! (vstd!seq.Seq.index.? A&. A& self! i$)))
      ))
      :pattern ((%%apply%%0 f! (vstd!seq.Seq.index.? A&. A& self! i$)))
      :qid user_crate__vstd__seq__Seq__lemma_membership_implies_indexing_275
      :skolemid skolem_user_crate__vstd__seq__Seq__lemma_membership_implies_indexing_275
   )))
   :pattern ((ens%vstd.seq_lib.impl&%0.lemma_membership_implies_indexing. A&. A& self!
     f!
   ))
   :qid internal_ens__vstd.seq_lib.impl&__0.lemma_membership_implies_indexing._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.lemma_membership_implies_indexing._definition
)))

;; Function-Specs crate::vstd::seq::Seq::lemma_split_at
(declare-fun req%vstd.seq_lib.impl&%0.lemma_split_at. (Dcr Type Poly Int) Bool)
(declare-const %%global_location_label%%45 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (pos! Int)) (!
   (= (req%vstd.seq_lib.impl&%0.lemma_split_at. A&. A& self! pos!) (=>
     %%global_location_label%%45
     (and
      (<= 0 pos!)
      (<= pos! (vstd!seq.Seq.len.? A&. A& self!))
   )))
   :pattern ((req%vstd.seq_lib.impl&%0.lemma_split_at. A&. A& self! pos!))
   :qid internal_req__vstd.seq_lib.impl&__0.lemma_split_at._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.lemma_split_at._definition
)))
(declare-fun ens%vstd.seq_lib.impl&%0.lemma_split_at. (Dcr Type Poly Int) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (pos! Int)) (!
   (= (ens%vstd.seq_lib.impl&%0.lemma_split_at. A&. A& self! pos!) (ext_eq false (TYPE%vstd.seq.Seq.
      A&. A&
     ) (vstd!seq.Seq.add.? A&. A& (vstd!seq.Seq.subrange.? A&. A& self! (I 0) (I pos!))
      (vstd!seq.Seq.subrange.? A&. A& self! (I pos!) (I (vstd!seq.Seq.len.? A&. A& self!)))
     ) self!
   ))
   :pattern ((ens%vstd.seq_lib.impl&%0.lemma_split_at. A&. A& self! pos!))
   :qid internal_ens__vstd.seq_lib.impl&__0.lemma_split_at._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.lemma_split_at._definition
)))

;; Function-Specs crate::vstd::seq::Seq::lemma_element_from_slice
(declare-fun req%vstd.seq_lib.impl&%0.lemma_element_from_slice. (Dcr Type Poly Poly
  Int Int Int
 ) Bool
)
(declare-const %%global_location_label%%46 Bool)
(declare-const %%global_location_label%%47 Bool)
(declare-const %%global_location_label%%48 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (new! Poly) (a! Int) (b! Int) (pos! Int))
  (!
   (= (req%vstd.seq_lib.impl&%0.lemma_element_from_slice. A&. A& self! new! a! b! pos!)
    (and
     (=>
      %%global_location_label%%46
      (and
       (and
        (<= 0 a!)
        (<= a! b!)
       )
       (<= b! (vstd!seq.Seq.len.? A&. A& self!))
     ))
     (=>
      %%global_location_label%%47
      (= new! (vstd!seq.Seq.subrange.? A&. A& self! (I a!) (I b!)))
     )
     (=>
      %%global_location_label%%48
      (and
       (<= a! pos!)
       (< pos! b!)
   ))))
   :pattern ((req%vstd.seq_lib.impl&%0.lemma_element_from_slice. A&. A& self! new! a!
     b! pos!
   ))
   :qid internal_req__vstd.seq_lib.impl&__0.lemma_element_from_slice._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.lemma_element_from_slice._definition
)))
(declare-fun ens%vstd.seq_lib.impl&%0.lemma_element_from_slice. (Dcr Type Poly Poly
  Int Int Int
 ) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (new! Poly) (a! Int) (b! Int) (pos! Int))
  (!
   (= (ens%vstd.seq_lib.impl&%0.lemma_element_from_slice. A&. A& self! new! a! b! pos!)
    (and
     (< (Sub pos! a!) (vstd!seq.Seq.len.? A&. A& new!))
     (= (vstd!seq.Seq.index.? A&. A& new! (I (Sub pos! a!))) (vstd!seq.Seq.index.? A&. A&
       self! (I pos!)
   ))))
   :pattern ((ens%vstd.seq_lib.impl&%0.lemma_element_from_slice. A&. A& self! new! a!
     b! pos!
   ))
   :qid internal_ens__vstd.seq_lib.impl&__0.lemma_element_from_slice._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.lemma_element_from_slice._definition
)))

;; Function-Specs crate::vstd::seq::Seq::lemma_slice_of_slice
(declare-fun req%vstd.seq_lib.impl&%0.lemma_slice_of_slice. (Dcr Type Poly Int Int
  Int Int
 ) Bool
)
(declare-const %%global_location_label%%49 Bool)
(declare-const %%global_location_label%%50 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (s1! Int) (e1! Int) (s2! Int) (e2! Int))
  (!
   (= (req%vstd.seq_lib.impl&%0.lemma_slice_of_slice. A&. A& self! s1! e1! s2! e2!) (
     and
     (=>
      %%global_location_label%%49
      (and
       (and
        (<= 0 s1!)
        (<= s1! e1!)
       )
       (<= e1! (vstd!seq.Seq.len.? A&. A& self!))
     ))
     (=>
      %%global_location_label%%50
      (and
       (and
        (<= 0 s2!)
        (<= s2! e2!)
       )
       (<= e2! (Sub e1! s1!))
   ))))
   :pattern ((req%vstd.seq_lib.impl&%0.lemma_slice_of_slice. A&. A& self! s1! e1! s2!
     e2!
   ))
   :qid internal_req__vstd.seq_lib.impl&__0.lemma_slice_of_slice._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.lemma_slice_of_slice._definition
)))
(declare-fun ens%vstd.seq_lib.impl&%0.lemma_slice_of_slice. (Dcr Type Poly Int Int
  Int Int
 ) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (s1! Int) (e1! Int) (s2! Int) (e2! Int))
  (!
   (= (ens%vstd.seq_lib.impl&%0.lemma_slice_of_slice. A&. A& self! s1! e1! s2! e2!) (
     ext_eq false (TYPE%vstd.seq.Seq. A&. A&) (vstd!seq.Seq.subrange.? A&. A& (vstd!seq.Seq.subrange.?
       A&. A& self! (I s1!) (I e1!)
      ) (I s2!) (I e2!)
     ) (vstd!seq.Seq.subrange.? A&. A& self! (I (Add s1! s2!)) (I (Add s1! e2!)))
   ))
   :pattern ((ens%vstd.seq_lib.impl&%0.lemma_slice_of_slice. A&. A& self! s1! e1! s2!
     e2!
   ))
   :qid internal_ens__vstd.seq_lib.impl&__0.lemma_slice_of_slice._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.lemma_slice_of_slice._definition
)))

;; Function-Specs crate::vstd::seq::Seq::unique_seq_to_set
(declare-fun req%vstd.seq_lib.impl&%0.unique_seq_to_set. (Dcr Type Poly) Bool)
(declare-const %%global_location_label%%51 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (req%vstd.seq_lib.impl&%0.unique_seq_to_set. A&. A& self!) (=>
     %%global_location_label%%51
     (vstd.seq_lib.impl&%0.no_duplicates.? A&. A& self!)
   ))
   :pattern ((req%vstd.seq_lib.impl&%0.unique_seq_to_set. A&. A& self!))
   :qid internal_req__vstd.seq_lib.impl&__0.unique_seq_to_set._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.unique_seq_to_set._definition
)))
(declare-fun ens%vstd.seq_lib.impl&%0.unique_seq_to_set. (Dcr Type Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (ens%vstd.seq_lib.impl&%0.unique_seq_to_set. A&. A& self!) (= (vstd!seq.Seq.len.?
      A&. A& self!
     ) (vstd.set.impl&%0.len.? A&. A& (vstd.seq_lib.impl&%0.to_set.? A&. A& self!))
   ))
   :pattern ((ens%vstd.seq_lib.impl&%0.unique_seq_to_set. A&. A& self!))
   :qid internal_ens__vstd.seq_lib.impl&__0.unique_seq_to_set._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.unique_seq_to_set._definition
)))

;; Function-Specs crate::vstd::seq::Seq::lemma_cardinality_of_set
(declare-fun ens%vstd.seq_lib.impl&%0.lemma_cardinality_of_set. (Dcr Type Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (ens%vstd.seq_lib.impl&%0.lemma_cardinality_of_set. A&. A& self!) (<= (vstd.set.impl&%0.len.?
      A&. A& (vstd.seq_lib.impl&%0.to_set.? A&. A& self!)
     ) (vstd!seq.Seq.len.? A&. A& self!)
   ))
   :pattern ((ens%vstd.seq_lib.impl&%0.lemma_cardinality_of_set. A&. A& self!))
   :qid internal_ens__vstd.seq_lib.impl&__0.lemma_cardinality_of_set._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.lemma_cardinality_of_set._definition
)))

;; Function-Specs crate::vstd::seq::Seq::lemma_cardinality_of_empty_set_is_0
(declare-fun ens%vstd.seq_lib.impl&%0.lemma_cardinality_of_empty_set_is_0. (Dcr Type
  Poly
 ) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (ens%vstd.seq_lib.impl&%0.lemma_cardinality_of_empty_set_is_0. A&. A& self!) (=
     (= (vstd.set.impl&%0.len.? A&. A& (vstd.seq_lib.impl&%0.to_set.? A&. A& self!)) 0)
     (= (vstd!seq.Seq.len.? A&. A& self!) 0)
   ))
   :pattern ((ens%vstd.seq_lib.impl&%0.lemma_cardinality_of_empty_set_is_0. A&. A& self!))
   :qid internal_ens__vstd.seq_lib.impl&__0.lemma_cardinality_of_empty_set_is_0._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.lemma_cardinality_of_empty_set_is_0._definition
)))

;; Function-Specs crate::vstd::seq::Seq::lemma_no_dup_set_cardinality
(declare-fun req%vstd.seq_lib.impl&%0.lemma_no_dup_set_cardinality. (Dcr Type Poly)
 Bool
)
(declare-const %%global_location_label%%52 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (req%vstd.seq_lib.impl&%0.lemma_no_dup_set_cardinality. A&. A& self!) (=>
     %%global_location_label%%52
     (= (vstd.set.impl&%0.len.? A&. A& (vstd.seq_lib.impl&%0.to_set.? A&. A& self!)) (vstd!seq.Seq.len.?
       A&. A& self!
   ))))
   :pattern ((req%vstd.seq_lib.impl&%0.lemma_no_dup_set_cardinality. A&. A& self!))
   :qid internal_req__vstd.seq_lib.impl&__0.lemma_no_dup_set_cardinality._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__0.lemma_no_dup_set_cardinality._definition
)))
(declare-fun ens%vstd.seq_lib.impl&%0.lemma_no_dup_set_cardinality. (Dcr Type Poly)
 Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (ens%vstd.seq_lib.impl&%0.lemma_no_dup_set_cardinality. A&. A& self!) (vstd.seq_lib.impl&%0.no_duplicates.?
     A&. A& self!
   ))
   :pattern ((ens%vstd.seq_lib.impl&%0.lemma_no_dup_set_cardinality. A&. A& self!))
   :qid internal_ens__vstd.seq_lib.impl&__0.lemma_no_dup_set_cardinality._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__0.lemma_no_dup_set_cardinality._definition
)))

;; Function-Specs crate::vstd::seq::Seq::unzip_ensures
(declare-fun ens%vstd.seq_lib.impl&%1.unzip_ensures. (Dcr Type Dcr Type Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly)) (!
   (= (ens%vstd.seq_lib.impl&%1.unzip_ensures. A&. A& B&. B& self!) (and
     (= (vstd!seq.Seq.len.? A&. A& (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. (vstd.seq_lib.impl&%1.unzip.?
           A&. A& B&. B& self!
       ))))
      ) (vstd!seq.Seq.len.? B&. B& (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. (vstd.seq_lib.impl&%1.unzip.?
           A&. A& B&. B& self!
     ))))))
     (= (vstd!seq.Seq.len.? A&. A& (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. (vstd.seq_lib.impl&%1.unzip.?
           A&. A& B&. B& self!
       ))))
      ) (vstd!seq.Seq.len.? $ (TYPE%tuple%2. A&. A& B&. B&) self!)
     )
     (= (vstd!seq.Seq.len.? B&. B& (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. (vstd.seq_lib.impl&%1.unzip.?
           A&. A& B&. B& self!
       ))))
      ) (vstd!seq.Seq.len.? $ (TYPE%tuple%2. A&. A& B&. B&) self!)
     )
     (forall ((i$ Poly)) (!
       (=>
        (has_type i$ INT)
        (=>
         (and
          (<= 0 (%I i$))
          (< (%I i$) (vstd!seq.Seq.len.? $ (TYPE%tuple%2. A&. A& B&. B&) self!))
         )
         (= (tuple%2./tuple%2 (vstd!seq.Seq.index.? A&. A& (tuple%2./tuple%2/0 (%Poly%tuple%2.
              (Poly%tuple%2. (vstd.seq_lib.impl&%1.unzip.? A&. A& B&. B& self!))
             )
            ) i$
           ) (vstd!seq.Seq.index.? B&. B& (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. (vstd.seq_lib.impl&%1.unzip.?
                A&. A& B&. B& self!
             )))
            ) i$
           )
          ) (%Poly%tuple%2. (vstd!seq.Seq.index.? $ (TYPE%tuple%2. A&. A& B&. B&) self! i$))
       )))
       :pattern ((vstd!seq.Seq.index.? A&. A& (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2.
            (vstd.seq_lib.impl&%1.unzip.? A&. A& B&. B& self!)
          ))
         ) i$
        ) (vstd!seq.Seq.index.? B&. B& (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. (vstd.seq_lib.impl&%1.unzip.?
             A&. A& B&. B& self!
          )))
         ) i$
       ))
       :qid user_crate__vstd__seq__Seq__unzip_ensures_283
       :skolemid skolem_user_crate__vstd__seq__Seq__unzip_ensures_283
   ))))
   :pattern ((ens%vstd.seq_lib.impl&%1.unzip_ensures. A&. A& B&. B& self!))
   :qid internal_ens__vstd.seq_lib.impl&__1.unzip_ensures._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__1.unzip_ensures._definition
)))

;; Function-Specs crate::vstd::seq::Seq::lemma_zip_of_unzip
(declare-fun ens%vstd.seq_lib.impl&%1.lemma_zip_of_unzip. (Dcr Type Dcr Type Poly)
 Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (B&. Dcr) (B& Type) (self! Poly)) (!
   (= (ens%vstd.seq_lib.impl&%1.lemma_zip_of_unzip. A&. A& B&. B& self!) (ext_eq false
     (TYPE%vstd.seq.Seq. $ (TYPE%tuple%2. A&. A& B&. B&)) (vstd.seq_lib.impl&%0.zip_with.?
      A&. A& B&. B& (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. (vstd.seq_lib.impl&%1.unzip.?
          A&. A& B&. B& self!
       )))
      ) (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. (vstd.seq_lib.impl&%1.unzip.? A&.
          A& B&. B& self!
      ))))
     ) self!
   ))
   :pattern ((ens%vstd.seq_lib.impl&%1.lemma_zip_of_unzip. A&. A& B&. B& self!))
   :qid internal_ens__vstd.seq_lib.impl&__1.lemma_zip_of_unzip._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__1.lemma_zip_of_unzip._definition
)))

;; Function-Specs crate::vstd::seq::Seq::lemma_flatten_one_element
(declare-fun ens%vstd.seq_lib.impl&%2.lemma_flatten_one_element. (Dcr Type Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (ens%vstd.seq_lib.impl&%2.lemma_flatten_one_element. A&. A& self!) (=>
     (= (vstd!seq.Seq.len.? $ (TYPE%vstd.seq.Seq. A&. A&) self!) 1)
     (= (vstd.seq_lib.impl&%2.flatten.? A&. A& self!) (vstd.seq.impl&%0.first.? $ (TYPE%vstd.seq.Seq.
        A&. A&
       ) self!
   ))))
   :pattern ((ens%vstd.seq_lib.impl&%2.lemma_flatten_one_element. A&. A& self!))
   :qid internal_ens__vstd.seq_lib.impl&__2.lemma_flatten_one_element._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__2.lemma_flatten_one_element._definition
)))

;; Function-Specs crate::vstd::seq_lib::lemma_flatten_concat
(declare-fun ens%vstd.seq_lib.lemma_flatten_concat. (Dcr Type Poly Poly) Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (x! Poly) (y! Poly)) (!
   (= (ens%vstd.seq_lib.lemma_flatten_concat. A&. A& x! y!) (ext_eq false (TYPE%vstd.seq.Seq.
      A&. A&
     ) (vstd.seq_lib.impl&%2.flatten.? A&. A& (vstd!seq.Seq.add.? $ (TYPE%vstd.seq.Seq. A&.
        A&
       ) x! y!
      )
     ) (vstd!seq.Seq.add.? A&. A& (vstd.seq_lib.impl&%2.flatten.? A&. A& x!) (vstd.seq_lib.impl&%2.flatten.?
       A&. A& y!
   ))))
   :pattern ((ens%vstd.seq_lib.lemma_flatten_concat. A&. A& x! y!))
   :qid internal_ens__vstd.seq_lib.lemma_flatten_concat._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.lemma_flatten_concat._definition
)))

;; Function-Specs crate::vstd::seq::Seq::lemma_flatten_and_flatten_alt_are_equivalent
(declare-fun ens%vstd.seq_lib.impl&%2.lemma_flatten_and_flatten_alt_are_equivalent.
 (Dcr Type Poly) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (= (ens%vstd.seq_lib.impl&%2.lemma_flatten_and_flatten_alt_are_equivalent. A&. A& self!)
    (ext_eq false (TYPE%vstd.seq.Seq. A&. A&) (vstd.seq_lib.impl&%2.flatten.? A&. A& self!)
     (vstd.seq_lib.impl&%2.flatten_alt.? A&. A& self!)
   ))
   :pattern ((ens%vstd.seq_lib.impl&%2.lemma_flatten_and_flatten_alt_are_equivalent. A&.
     A& self!
   ))
   :qid internal_ens__vstd.seq_lib.impl&__2.lemma_flatten_and_flatten_alt_are_equivalent._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__2.lemma_flatten_and_flatten_alt_are_equivalent._definition
)))

;; Function-Specs crate::vstd::seq::Seq::lemma_flatten_length_ge_single_element_length
(declare-fun req%vstd.seq_lib.impl&%2.lemma_flatten_length_ge_single_element_length.
 (Dcr Type Poly Int) Bool
)
(declare-const %%global_location_label%%53 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Int)) (!
   (= (req%vstd.seq_lib.impl&%2.lemma_flatten_length_ge_single_element_length. A&. A&
     self! i!
    ) (=>
     %%global_location_label%%53
     (and
      (<= 0 i!)
      (< i! (vstd!seq.Seq.len.? $ (TYPE%vstd.seq.Seq. A&. A&) self!))
   )))
   :pattern ((req%vstd.seq_lib.impl&%2.lemma_flatten_length_ge_single_element_length.
     A&. A& self! i!
   ))
   :qid internal_req__vstd.seq_lib.impl&__2.lemma_flatten_length_ge_single_element_length._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__2.lemma_flatten_length_ge_single_element_length._definition
)))
(declare-fun ens%vstd.seq_lib.impl&%2.lemma_flatten_length_ge_single_element_length.
 (Dcr Type Poly Int) Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (i! Int)) (!
   (= (ens%vstd.seq_lib.impl&%2.lemma_flatten_length_ge_single_element_length. A&. A&
     self! i!
    ) (>= (vstd!seq.Seq.len.? A&. A& (vstd.seq_lib.impl&%2.flatten_alt.? A&. A& self!))
     (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.index.? $ (TYPE%vstd.seq.Seq. A&. A&) self!
       (I i!)
   ))))
   :pattern ((ens%vstd.seq_lib.impl&%2.lemma_flatten_length_ge_single_element_length.
     A&. A& self! i!
   ))
   :qid internal_ens__vstd.seq_lib.impl&__2.lemma_flatten_length_ge_single_element_length._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__2.lemma_flatten_length_ge_single_element_length._definition
)))

;; Function-Specs crate::vstd::seq::Seq::lemma_flatten_length_le_mul
(declare-fun req%vstd.seq_lib.impl&%2.lemma_flatten_length_le_mul. (Dcr Type Poly Int)
 Bool
)
(declare-const %%global_location_label%%54 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (j! Int)) (!
   (= (req%vstd.seq_lib.impl&%2.lemma_flatten_length_le_mul. A&. A& self! j!) (=>
     %%global_location_label%%54
     (forall ((i$ Poly)) (!
       (=>
        (has_type i$ INT)
        (=>
         (and
          (<= 0 (%I i$))
          (< (%I i$) (vstd!seq.Seq.len.? $ (TYPE%vstd.seq.Seq. A&. A&) self!))
         )
         (<= (vstd!seq.Seq.len.? A&. A& (vstd!seq.Seq.index.? $ (TYPE%vstd.seq.Seq. A&. A&) self!
            i$
           )
          ) j!
       )))
       :pattern ((vstd!seq.Seq.index.? $ (TYPE%vstd.seq.Seq. A&. A&) self! i$))
       :qid user_crate__vstd__seq__Seq__lemma_flatten_length_le_mul_286
       :skolemid skolem_user_crate__vstd__seq__Seq__lemma_flatten_length_le_mul_286
   ))))
   :pattern ((req%vstd.seq_lib.impl&%2.lemma_flatten_length_le_mul. A&. A& self! j!))
   :qid internal_req__vstd.seq_lib.impl&__2.lemma_flatten_length_le_mul._definition
   :skolemid skolem_internal_req__vstd.seq_lib.impl&__2.lemma_flatten_length_le_mul._definition
)))
(declare-fun ens%vstd.seq_lib.impl&%2.lemma_flatten_length_le_mul. (Dcr Type Poly Int)
 Bool
)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (j! Int)) (!
   (= (ens%vstd.seq_lib.impl&%2.lemma_flatten_length_le_mul. A&. A& self! j!) (<= (vstd!seq.Seq.len.?
      A&. A& (vstd.seq_lib.impl&%2.flatten_alt.? A&. A& self!)
     ) (Mul (vstd!seq.Seq.len.? $ (TYPE%vstd.seq.Seq. A&. A&) self!) j!)
   ))
   :pattern ((ens%vstd.seq_lib.impl&%2.lemma_flatten_length_le_mul. A&. A& self! j!))
   :qid internal_ens__vstd.seq_lib.impl&__2.lemma_flatten_length_le_mul._definition
   :skolemid skolem_internal_ens__vstd.seq_lib.impl&__2.lemma_flatten_length_le_mul._definition
)))

;; Function-Def crate::vstd::seq::Seq::lemma_flatten_length_le_mul
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/seq_lib.rs:1053:13: 1053:19 (#0)
(set-option :smt.arith.solver 6)
(get-info :all-statistics)
(push)
 (declare-const A&. Dcr)
 (declare-const A& Type)
 (declare-const self! Poly)
 (declare-const j! Int)
 (declare-const tmp%1 Poly)
 (declare-const decrease%init0 Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.seq.Seq. $ (TYPE%vstd.seq.Seq. A&. A&)))
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 (assert
  (not (=>
    %%location_label%%0
    (= (Mul (Sub (vstd!seq.Seq.len.? $ (TYPE%vstd.seq.Seq. A&. A&) self!) 1) j!) (Sub (
       Mul (vstd!seq.Seq.len.? $ (TYPE%vstd.seq.Seq. A&. A&) self!) j!
      ) (Mul 1 j!)
 )))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
