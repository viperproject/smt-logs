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

;; MODULE 'module vstd::tokens'

;; Fuel
(declare-const fuel%vstd.std_specs.option.impl&%0.is_Some. FuelId)
(declare-const fuel%vstd.std_specs.option.impl&%0.get_Some_0. FuelId)
(declare-const fuel%vstd.std_specs.option.is_some. FuelId)
(declare-const fuel%vstd.std_specs.option.is_none. FuelId)
(declare-const fuel%vstd.std_specs.option.spec_unwrap. FuelId)
(declare-const fuel%vstd.map.impl&%0.new. FuelId)
(declare-const fuel%vstd.map.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd.map.axiom_map_index_decreases_finite. FuelId)
(declare-const fuel%vstd.map.axiom_map_index_decreases_infinite. FuelId)
(declare-const fuel%vstd.map.axiom_map_empty. FuelId)
(declare-const fuel%vstd.map.axiom_map_insert_domain. FuelId)
(declare-const fuel%vstd.map.axiom_map_insert_same. FuelId)
(declare-const fuel%vstd.map.axiom_map_insert_different. FuelId)
(declare-const fuel%vstd.map.axiom_map_remove_domain. FuelId)
(declare-const fuel%vstd.map.axiom_map_remove_different. FuelId)
(declare-const fuel%vstd.map.axiom_map_ext_equal. FuelId)
(declare-const fuel%vstd.map.axiom_map_ext_equal_deep. FuelId)
(declare-const fuel%vstd.map_lib.impl&%0.contains_key. FuelId)
(declare-const fuel%vstd.map_lib.impl&%0.map_values. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.insert. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.remove. FuelId)
(declare-const fuel%vstd.multiset.impl&%0.contains. FuelId)
(declare-const fuel%vstd.set.impl&%0.choose. FuelId)
(declare-const fuel%vstd.set.axiom_set_empty. FuelId)
(declare-const fuel%vstd.set.axiom_set_new. FuelId)
(declare-const fuel%vstd.set.axiom_set_insert_same. FuelId)
(declare-const fuel%vstd.set.axiom_set_insert_different. FuelId)
(declare-const fuel%vstd.set.axiom_set_remove_same. FuelId)
(declare-const fuel%vstd.set.axiom_set_remove_insert. FuelId)
(declare-const fuel%vstd.set.axiom_set_remove_different. FuelId)
(declare-const fuel%vstd.set.axiom_set_ext_equal. FuelId)
(declare-const fuel%vstd.set.axiom_set_ext_equal_deep. FuelId)
(declare-const fuel%vstd.set.axiom_mk_map_domain. FuelId)
(declare-const fuel%vstd.set.axiom_mk_map_index. FuelId)
(declare-const fuel%vstd.set.axiom_set_empty_finite. FuelId)
(declare-const fuel%vstd.set.axiom_set_insert_finite. FuelId)
(declare-const fuel%vstd.set.axiom_set_remove_finite. FuelId)
(declare-const fuel%vstd.set.axiom_set_choose_finite. FuelId)
(declare-const fuel%vstd.set.axiom_set_empty_len. FuelId)
(declare-const fuel%vstd.set.axiom_set_insert_len. FuelId)
(declare-const fuel%vstd.set.axiom_set_remove_len. FuelId)
(declare-const fuel%vstd.set.axiom_set_contains_len. FuelId)
(declare-const fuel%vstd.set.axiom_set_choose_len. FuelId)
(declare-const fuel%vstd.set_lib.impl&%0.fold. FuelId)
(declare-const fuel%vstd.relations.reflexive. FuelId)
(declare-const fuel%vstd.relations.antisymmetric. FuelId)
(declare-const fuel%vstd.relations.strongly_connected. FuelId)
(declare-const fuel%vstd.relations.transitive. FuelId)
(declare-const fuel%vstd.relations.total_ordering. FuelId)
(declare-const fuel%vstd.tokens.impl&%0.wf. FuelId)
(declare-const fuel%vstd.tokens.impl&%0.instance_id. FuelId)
(declare-const fuel%vstd.tokens.impl&%0.map. FuelId)
(declare-const fuel%vstd.tokens.impl&%0.dom. FuelId)
(declare-const fuel%vstd.tokens.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd.tokens.impl&%0.index. FuelId)
(declare-const fuel%vstd.tokens.impl&%1.wf. FuelId)
(declare-const fuel%vstd.tokens.impl&%1.instance_id. FuelId)
(declare-const fuel%vstd.tokens.impl&%1.set. FuelId)
(declare-const fuel%vstd.tokens.impl&%1.contains. FuelId)
(declare-const fuel%vstd.tokens.map_values. FuelId)
(declare-const fuel%vstd.tokens.fresh. FuelId)
(declare-const fuel%vstd.tokens.impl&%2.wf. FuelId)
(declare-const fuel%vstd.tokens.impl&%2.instance_id. FuelId)
(declare-const fuel%vstd.tokens.impl&%2.map_elems. FuelId)
(declare-const fuel%vstd.tokens.impl&%2.multiset. FuelId)
(declare-const fuel%vstd.tokens.option_value_eq_option_token. FuelId)
(declare-const fuel%vstd.tokens.option_value_le_option_token. FuelId)
(declare-const fuel%vstd.tokens.bool_value_eq_option_token. FuelId)
(declare-const fuel%vstd.tokens.bool_value_le_option_token. FuelId)
(declare-const fuel%vstd.map.group_map_axioms. FuelId)
(declare-const fuel%vstd.set.group_set_axioms. FuelId)
(declare-const fuel%vstd.set_lib.group_set_lib_axioms. FuelId)
(assert
 (distinct fuel%vstd.std_specs.option.impl&%0.is_Some. fuel%vstd.std_specs.option.impl&%0.get_Some_0.
  fuel%vstd.std_specs.option.is_some. fuel%vstd.std_specs.option.is_none. fuel%vstd.std_specs.option.spec_unwrap.
  fuel%vstd.map.impl&%0.new. fuel%vstd.map.impl&%0.spec_index. fuel%vstd.map.axiom_map_index_decreases_finite.
  fuel%vstd.map.axiom_map_index_decreases_infinite. fuel%vstd.map.axiom_map_empty.
  fuel%vstd.map.axiom_map_insert_domain. fuel%vstd.map.axiom_map_insert_same. fuel%vstd.map.axiom_map_insert_different.
  fuel%vstd.map.axiom_map_remove_domain. fuel%vstd.map.axiom_map_remove_different.
  fuel%vstd.map.axiom_map_ext_equal. fuel%vstd.map.axiom_map_ext_equal_deep. fuel%vstd.map_lib.impl&%0.contains_key.
  fuel%vstd.map_lib.impl&%0.map_values. fuel%vstd.multiset.impl&%0.insert. fuel%vstd.multiset.impl&%0.remove.
  fuel%vstd.multiset.impl&%0.contains. fuel%vstd.set.impl&%0.choose. fuel%vstd.set.axiom_set_empty.
  fuel%vstd.set.axiom_set_new. fuel%vstd.set.axiom_set_insert_same. fuel%vstd.set.axiom_set_insert_different.
  fuel%vstd.set.axiom_set_remove_same. fuel%vstd.set.axiom_set_remove_insert. fuel%vstd.set.axiom_set_remove_different.
  fuel%vstd.set.axiom_set_ext_equal. fuel%vstd.set.axiom_set_ext_equal_deep. fuel%vstd.set.axiom_mk_map_domain.
  fuel%vstd.set.axiom_mk_map_index. fuel%vstd.set.axiom_set_empty_finite. fuel%vstd.set.axiom_set_insert_finite.
  fuel%vstd.set.axiom_set_remove_finite. fuel%vstd.set.axiom_set_choose_finite. fuel%vstd.set.axiom_set_empty_len.
  fuel%vstd.set.axiom_set_insert_len. fuel%vstd.set.axiom_set_remove_len. fuel%vstd.set.axiom_set_contains_len.
  fuel%vstd.set.axiom_set_choose_len. fuel%vstd.set_lib.impl&%0.fold. fuel%vstd.relations.reflexive.
  fuel%vstd.relations.antisymmetric. fuel%vstd.relations.strongly_connected. fuel%vstd.relations.transitive.
  fuel%vstd.relations.total_ordering. fuel%vstd.tokens.impl&%0.wf. fuel%vstd.tokens.impl&%0.instance_id.
  fuel%vstd.tokens.impl&%0.map. fuel%vstd.tokens.impl&%0.dom. fuel%vstd.tokens.impl&%0.spec_index.
  fuel%vstd.tokens.impl&%0.index. fuel%vstd.tokens.impl&%1.wf. fuel%vstd.tokens.impl&%1.instance_id.
  fuel%vstd.tokens.impl&%1.set. fuel%vstd.tokens.impl&%1.contains. fuel%vstd.tokens.map_values.
  fuel%vstd.tokens.fresh. fuel%vstd.tokens.impl&%2.wf. fuel%vstd.tokens.impl&%2.instance_id.
  fuel%vstd.tokens.impl&%2.map_elems. fuel%vstd.tokens.impl&%2.multiset. fuel%vstd.tokens.option_value_eq_option_token.
  fuel%vstd.tokens.option_value_le_option_token. fuel%vstd.tokens.bool_value_eq_option_token.
  fuel%vstd.tokens.bool_value_le_option_token. fuel%vstd.map.group_map_axioms. fuel%vstd.set.group_set_axioms.
  fuel%vstd.set_lib.group_set_lib_axioms.
))
(assert
 (=>
  (fuel_bool_default fuel%vstd.map.group_map_axioms.)
  (and
   (fuel_bool_default fuel%vstd.map.axiom_map_index_decreases_finite.)
   (fuel_bool_default fuel%vstd.map.axiom_map_index_decreases_infinite.)
   (fuel_bool_default fuel%vstd.map.axiom_map_empty.)
   (fuel_bool_default fuel%vstd.map.axiom_map_insert_domain.)
   (fuel_bool_default fuel%vstd.map.axiom_map_insert_same.)
   (fuel_bool_default fuel%vstd.map.axiom_map_insert_different.)
   (fuel_bool_default fuel%vstd.map.axiom_map_remove_domain.)
   (fuel_bool_default fuel%vstd.map.axiom_map_remove_different.)
   (fuel_bool_default fuel%vstd.map.axiom_map_ext_equal.)
   (fuel_bool_default fuel%vstd.map.axiom_map_ext_equal_deep.)
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
   (fuel_bool_default fuel%vstd.set.axiom_set_ext_equal.)
   (fuel_bool_default fuel%vstd.set.axiom_set_ext_equal_deep.)
   (fuel_bool_default fuel%vstd.set.axiom_mk_map_domain.)
   (fuel_bool_default fuel%vstd.set.axiom_mk_map_index.)
   (fuel_bool_default fuel%vstd.set.axiom_set_empty_finite.)
   (fuel_bool_default fuel%vstd.set.axiom_set_insert_finite.)
   (fuel_bool_default fuel%vstd.set.axiom_set_remove_finite.)
   (fuel_bool_default fuel%vstd.set.axiom_set_choose_finite.)
   (fuel_bool_default fuel%vstd.set.axiom_set_empty_len.)
   (fuel_bool_default fuel%vstd.set.axiom_set_insert_len.)
   (fuel_bool_default fuel%vstd.set.axiom_set_remove_len.)
   (fuel_bool_default fuel%vstd.set.axiom_set_contains_len.)
   (fuel_bool_default fuel%vstd.set.axiom_set_choose_len.)
)))
(assert
 (and
  (fuel_bool_default fuel%vstd.set_lib.group_set_lib_axioms.)
  (fuel_bool_default fuel%vstd.set.group_set_axioms.)
  (fuel_bool_default fuel%vstd.map.group_map_axioms.)
))

;; Datatypes
(declare-sort vstd.set.Set<int.>. 0)
(declare-datatypes ((core!option.Option. 0) (core!marker.PhantomData. 0) (vstd.tokens.InstanceId.
   0
  ) (vstd.tokens.MapToken. 0) (vstd.tokens.SetToken. 0) (vstd.tokens.MultisetToken.
   0
  ) (tuple%0. 0)
 ) (((core!option.Option./None) (core!option.Option./Some (core!option.Option./Some/?0
     Poly
   ))
  ) ((core!marker.PhantomData./PhantomData)) ((vstd.tokens.InstanceId./InstanceId (vstd.tokens.InstanceId./InstanceId/?0
     Int
   ))
  ) ((vstd.tokens.MapToken./MapToken (vstd.tokens.MapToken./MapToken/?_v core!marker.PhantomData.)
    (vstd.tokens.MapToken./MapToken/?inst vstd.tokens.InstanceId.) (vstd.tokens.MapToken./MapToken/?m
     Poly
   ))
  ) ((vstd.tokens.SetToken./SetToken (vstd.tokens.SetToken./SetToken/?inst vstd.tokens.InstanceId.)
    (vstd.tokens.SetToken./SetToken/?m Poly)
   )
  ) ((vstd.tokens.MultisetToken./MultisetToken (vstd.tokens.MultisetToken./MultisetToken/?_v
     core!marker.PhantomData.
    ) (vstd.tokens.MultisetToken./MultisetToken/?inst vstd.tokens.InstanceId.) (vstd.tokens.MultisetToken./MultisetToken/?m
     Poly
   ))
  ) ((tuple%0./tuple%0))
))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun vstd.tokens.InstanceId./InstanceId/0 (vstd.tokens.InstanceId.) Int)
(declare-fun vstd.tokens.MapToken./MapToken/_v (vstd.tokens.MapToken.) core!marker.PhantomData.)
(declare-fun vstd.tokens.MapToken./MapToken/inst (vstd.tokens.MapToken.) vstd.tokens.InstanceId.)
(declare-fun vstd.tokens.MapToken./MapToken/m (vstd.tokens.MapToken.) Poly)
(declare-fun vstd.tokens.SetToken./SetToken/inst (vstd.tokens.SetToken.) vstd.tokens.InstanceId.)
(declare-fun vstd.tokens.SetToken./SetToken/m (vstd.tokens.SetToken.) Poly)
(declare-fun vstd.tokens.MultisetToken./MultisetToken/_v (vstd.tokens.MultisetToken.)
 core!marker.PhantomData.
)
(declare-fun vstd.tokens.MultisetToken./MultisetToken/inst (vstd.tokens.MultisetToken.)
 vstd.tokens.InstanceId.
)
(declare-fun vstd.tokens.MultisetToken./MultisetToken/m (vstd.tokens.MultisetToken.)
 Poly
)
(declare-fun TYPE%fun%1. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%fun%2. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-fun TYPE%core!marker.PhantomData. (Dcr Type) Type)
(declare-fun TYPE%vstd.map.Map. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.multiset.Multiset. (Dcr Type) Type)
(declare-fun TYPE%vstd.set.Set. (Dcr Type) Type)
(declare-const TYPE%vstd.tokens.InstanceId. Type)
(declare-fun TYPE%vstd.tokens.MapToken. (Dcr Type Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.tokens.SetToken. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.tokens.MultisetToken. (Dcr Type Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%fun%1. (%%Function%%) Poly)
(declare-fun %Poly%fun%1. (Poly) %%Function%%)
(declare-fun Poly%fun%2. (%%Function%%) Poly)
(declare-fun %Poly%fun%2. (Poly) %%Function%%)
(declare-fun Poly%vstd.set.Set<int.>. (vstd.set.Set<int.>.) Poly)
(declare-fun %Poly%vstd.set.Set<int.>. (Poly) vstd.set.Set<int.>.)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
(declare-fun Poly%core!marker.PhantomData. (core!marker.PhantomData.) Poly)
(declare-fun %Poly%core!marker.PhantomData. (Poly) core!marker.PhantomData.)
(declare-fun Poly%vstd.tokens.InstanceId. (vstd.tokens.InstanceId.) Poly)
(declare-fun %Poly%vstd.tokens.InstanceId. (Poly) vstd.tokens.InstanceId.)
(declare-fun Poly%vstd.tokens.MapToken. (vstd.tokens.MapToken.) Poly)
(declare-fun %Poly%vstd.tokens.MapToken. (Poly) vstd.tokens.MapToken.)
(declare-fun Poly%vstd.tokens.SetToken. (vstd.tokens.SetToken.) Poly)
(declare-fun %Poly%vstd.tokens.SetToken. (Poly) vstd.tokens.SetToken.)
(declare-fun Poly%vstd.tokens.MultisetToken. (vstd.tokens.MultisetToken.) Poly)
(declare-fun %Poly%vstd.tokens.MultisetToken. (Poly) vstd.tokens.MultisetToken.)
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
 (forall ((x core!marker.PhantomData.)) (!
   (= x (%Poly%core!marker.PhantomData. (Poly%core!marker.PhantomData. x)))
   :pattern ((Poly%core!marker.PhantomData. x))
   :qid internal_core__marker__PhantomData_box_axiom_definition
   :skolemid skolem_internal_core__marker__PhantomData_box_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%core!marker.PhantomData. V&. V&))
    (= x (Poly%core!marker.PhantomData. (%Poly%core!marker.PhantomData. x)))
   )
   :pattern ((has_type x (TYPE%core!marker.PhantomData. V&. V&)))
   :qid internal_core__marker__PhantomData_unbox_axiom_definition
   :skolemid skolem_internal_core__marker__PhantomData_unbox_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (x core!marker.PhantomData.)) (!
   (has_type (Poly%core!marker.PhantomData. x) (TYPE%core!marker.PhantomData. V&. V&))
   :pattern ((has_type (Poly%core!marker.PhantomData. x) (TYPE%core!marker.PhantomData.
      V&. V&
   )))
   :qid internal_core__marker__PhantomData_has_type_always_definition
   :skolemid skolem_internal_core__marker__PhantomData_has_type_always_definition
)))
(assert
 (forall ((x vstd.tokens.InstanceId.)) (!
   (= x (%Poly%vstd.tokens.InstanceId. (Poly%vstd.tokens.InstanceId. x)))
   :pattern ((Poly%vstd.tokens.InstanceId. x))
   :qid internal_crate__vstd__tokens__InstanceId_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__tokens__InstanceId_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.tokens.InstanceId.)
    (= x (Poly%vstd.tokens.InstanceId. (%Poly%vstd.tokens.InstanceId. x)))
   )
   :pattern ((has_type x TYPE%vstd.tokens.InstanceId.))
   :qid internal_crate__vstd__tokens__InstanceId_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__tokens__InstanceId_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.tokens.InstanceId.)) (!
   (= (vstd.tokens.InstanceId./InstanceId/0 x) (vstd.tokens.InstanceId./InstanceId/?0
     x
   ))
   :pattern ((vstd.tokens.InstanceId./InstanceId/0 x))
   :qid internal_vstd.tokens.InstanceId./InstanceId/0_accessor_definition
   :skolemid skolem_internal_vstd.tokens.InstanceId./InstanceId/0_accessor_definition
)))
(assert
 (forall ((x vstd.tokens.InstanceId.)) (!
   (has_type (Poly%vstd.tokens.InstanceId. x) TYPE%vstd.tokens.InstanceId.)
   :pattern ((has_type (Poly%vstd.tokens.InstanceId. x) TYPE%vstd.tokens.InstanceId.))
   :qid internal_crate__vstd__tokens__InstanceId_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__tokens__InstanceId_has_type_always_definition
)))
(assert
 (forall ((x vstd.tokens.MapToken.)) (!
   (= x (%Poly%vstd.tokens.MapToken. (Poly%vstd.tokens.MapToken. x)))
   :pattern ((Poly%vstd.tokens.MapToken. x))
   :qid internal_crate__vstd__tokens__MapToken_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__tokens__MapToken_box_axiom_definition
)))
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type)
   (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%vstd.tokens.MapToken. Key&. Key& Value&. Value& Token&. Token&))
    (= x (Poly%vstd.tokens.MapToken. (%Poly%vstd.tokens.MapToken. x)))
   )
   :pattern ((has_type x (TYPE%vstd.tokens.MapToken. Key&. Key& Value&. Value& Token&.
      Token&
   )))
   :qid internal_crate__vstd__tokens__MapToken_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__tokens__MapToken_unbox_axiom_definition
)))
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type)
   (__v! core!marker.PhantomData.) (_inst! vstd.tokens.InstanceId.) (_m! Poly)
  ) (!
   (=>
    (has_type _m! (TYPE%vstd.map.Map. Key&. Key& Token&. Token&))
    (has_type (Poly%vstd.tokens.MapToken. (vstd.tokens.MapToken./MapToken __v! _inst! _m!))
     (TYPE%vstd.tokens.MapToken. Key&. Key& Value&. Value& Token&. Token&)
   ))
   :pattern ((has_type (Poly%vstd.tokens.MapToken. (vstd.tokens.MapToken./MapToken __v!
       _inst! _m!
      )
     ) (TYPE%vstd.tokens.MapToken. Key&. Key& Value&. Value& Token&. Token&)
   ))
   :qid internal_vstd.tokens.MapToken./MapToken_constructor_definition
   :skolemid skolem_internal_vstd.tokens.MapToken./MapToken_constructor_definition
)))
(assert
 (forall ((x vstd.tokens.MapToken.)) (!
   (= (vstd.tokens.MapToken./MapToken/_v x) (vstd.tokens.MapToken./MapToken/?_v x))
   :pattern ((vstd.tokens.MapToken./MapToken/_v x))
   :qid internal_vstd.tokens.MapToken./MapToken/_v_accessor_definition
   :skolemid skolem_internal_vstd.tokens.MapToken./MapToken/_v_accessor_definition
)))
(assert
 (forall ((x vstd.tokens.MapToken.)) (!
   (= (vstd.tokens.MapToken./MapToken/inst x) (vstd.tokens.MapToken./MapToken/?inst x))
   :pattern ((vstd.tokens.MapToken./MapToken/inst x))
   :qid internal_vstd.tokens.MapToken./MapToken/inst_accessor_definition
   :skolemid skolem_internal_vstd.tokens.MapToken./MapToken/inst_accessor_definition
)))
(assert
 (forall ((x vstd.tokens.MapToken.)) (!
   (= (vstd.tokens.MapToken./MapToken/m x) (vstd.tokens.MapToken./MapToken/?m x))
   :pattern ((vstd.tokens.MapToken./MapToken/m x))
   :qid internal_vstd.tokens.MapToken./MapToken/m_accessor_definition
   :skolemid skolem_internal_vstd.tokens.MapToken./MapToken/m_accessor_definition
)))
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type)
   (x Poly)
  ) (!
   (=>
    (has_type x (TYPE%vstd.tokens.MapToken. Key&. Key& Value&. Value& Token&. Token&))
    (has_type (vstd.tokens.MapToken./MapToken/m (%Poly%vstd.tokens.MapToken. x)) (TYPE%vstd.map.Map.
      Key&. Key& Token&. Token&
   )))
   :pattern ((vstd.tokens.MapToken./MapToken/m (%Poly%vstd.tokens.MapToken. x)) (has_type
     x (TYPE%vstd.tokens.MapToken. Key&. Key& Value&. Value& Token&. Token&)
   ))
   :qid internal_vstd.tokens.MapToken./MapToken/m_invariant_definition
   :skolemid skolem_internal_vstd.tokens.MapToken./MapToken/m_invariant_definition
)))
(assert
 (forall ((x vstd.tokens.MapToken.)) (!
   (=>
    (is-vstd.tokens.MapToken./MapToken x)
    (height_lt (height (Poly%core!marker.PhantomData. (vstd.tokens.MapToken./MapToken/_v
        x
      ))
     ) (height (Poly%vstd.tokens.MapToken. x))
   ))
   :pattern ((height (Poly%core!marker.PhantomData. (vstd.tokens.MapToken./MapToken/_v x))))
   :qid prelude_datatype_height_vstd.tokens.MapToken./MapToken/_v
   :skolemid skolem_prelude_datatype_height_vstd.tokens.MapToken./MapToken/_v
)))
(assert
 (forall ((x vstd.tokens.MapToken.)) (!
   (=>
    (is-vstd.tokens.MapToken./MapToken x)
    (height_lt (height (vstd.tokens.MapToken./MapToken/m x)) (height (Poly%vstd.tokens.MapToken.
       x
   ))))
   :pattern ((height (vstd.tokens.MapToken./MapToken/m x)))
   :qid prelude_datatype_height_vstd.tokens.MapToken./MapToken/m
   :skolemid skolem_prelude_datatype_height_vstd.tokens.MapToken./MapToken/m
)))
(assert
 (forall ((x vstd.tokens.SetToken.)) (!
   (= x (%Poly%vstd.tokens.SetToken. (Poly%vstd.tokens.SetToken. x)))
   :pattern ((Poly%vstd.tokens.SetToken. x))
   :qid internal_crate__vstd__tokens__SetToken_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__tokens__SetToken_box_axiom_definition
)))
(assert
 (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.tokens.SetToken. Element&. Element& Token&. Token&))
    (= x (Poly%vstd.tokens.SetToken. (%Poly%vstd.tokens.SetToken. x)))
   )
   :pattern ((has_type x (TYPE%vstd.tokens.SetToken. Element&. Element& Token&. Token&)))
   :qid internal_crate__vstd__tokens__SetToken_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__tokens__SetToken_unbox_axiom_definition
)))
(assert
 (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (_inst! vstd.tokens.InstanceId.)
   (_m! Poly)
  ) (!
   (=>
    (has_type _m! (TYPE%vstd.map.Map. Element&. Element& Token&. Token&))
    (has_type (Poly%vstd.tokens.SetToken. (vstd.tokens.SetToken./SetToken _inst! _m!))
     (TYPE%vstd.tokens.SetToken. Element&. Element& Token&. Token&)
   ))
   :pattern ((has_type (Poly%vstd.tokens.SetToken. (vstd.tokens.SetToken./SetToken _inst!
       _m!
      )
     ) (TYPE%vstd.tokens.SetToken. Element&. Element& Token&. Token&)
   ))
   :qid internal_vstd.tokens.SetToken./SetToken_constructor_definition
   :skolemid skolem_internal_vstd.tokens.SetToken./SetToken_constructor_definition
)))
(assert
 (forall ((x vstd.tokens.SetToken.)) (!
   (= (vstd.tokens.SetToken./SetToken/inst x) (vstd.tokens.SetToken./SetToken/?inst x))
   :pattern ((vstd.tokens.SetToken./SetToken/inst x))
   :qid internal_vstd.tokens.SetToken./SetToken/inst_accessor_definition
   :skolemid skolem_internal_vstd.tokens.SetToken./SetToken/inst_accessor_definition
)))
(assert
 (forall ((x vstd.tokens.SetToken.)) (!
   (= (vstd.tokens.SetToken./SetToken/m x) (vstd.tokens.SetToken./SetToken/?m x))
   :pattern ((vstd.tokens.SetToken./SetToken/m x))
   :qid internal_vstd.tokens.SetToken./SetToken/m_accessor_definition
   :skolemid skolem_internal_vstd.tokens.SetToken./SetToken/m_accessor_definition
)))
(assert
 (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.tokens.SetToken. Element&. Element& Token&. Token&))
    (has_type (vstd.tokens.SetToken./SetToken/m (%Poly%vstd.tokens.SetToken. x)) (TYPE%vstd.map.Map.
      Element&. Element& Token&. Token&
   )))
   :pattern ((vstd.tokens.SetToken./SetToken/m (%Poly%vstd.tokens.SetToken. x)) (has_type
     x (TYPE%vstd.tokens.SetToken. Element&. Element& Token&. Token&)
   ))
   :qid internal_vstd.tokens.SetToken./SetToken/m_invariant_definition
   :skolemid skolem_internal_vstd.tokens.SetToken./SetToken/m_invariant_definition
)))
(assert
 (forall ((x vstd.tokens.SetToken.)) (!
   (=>
    (is-vstd.tokens.SetToken./SetToken x)
    (height_lt (height (vstd.tokens.SetToken./SetToken/m x)) (height (Poly%vstd.tokens.SetToken.
       x
   ))))
   :pattern ((height (vstd.tokens.SetToken./SetToken/m x)))
   :qid prelude_datatype_height_vstd.tokens.SetToken./SetToken/m
   :skolemid skolem_prelude_datatype_height_vstd.tokens.SetToken./SetToken/m
)))
(assert
 (forall ((x vstd.tokens.MultisetToken.)) (!
   (= x (%Poly%vstd.tokens.MultisetToken. (Poly%vstd.tokens.MultisetToken. x)))
   :pattern ((Poly%vstd.tokens.MultisetToken. x))
   :qid internal_crate__vstd__tokens__MultisetToken_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__tokens__MultisetToken_box_axiom_definition
)))
(assert
 (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.tokens.MultisetToken. Element&. Element& Token&. Token&))
    (= x (Poly%vstd.tokens.MultisetToken. (%Poly%vstd.tokens.MultisetToken. x)))
   )
   :pattern ((has_type x (TYPE%vstd.tokens.MultisetToken. Element&. Element& Token&. Token&)))
   :qid internal_crate__vstd__tokens__MultisetToken_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__tokens__MultisetToken_unbox_axiom_definition
)))
(assert
 (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (__v! core!marker.PhantomData.)
   (_inst! vstd.tokens.InstanceId.) (_m! Poly)
  ) (!
   (=>
    (has_type _m! (TYPE%vstd.map.Map. $ INT Token&. Token&))
    (has_type (Poly%vstd.tokens.MultisetToken. (vstd.tokens.MultisetToken./MultisetToken
       __v! _inst! _m!
      )
     ) (TYPE%vstd.tokens.MultisetToken. Element&. Element& Token&. Token&)
   ))
   :pattern ((has_type (Poly%vstd.tokens.MultisetToken. (vstd.tokens.MultisetToken./MultisetToken
       __v! _inst! _m!
      )
     ) (TYPE%vstd.tokens.MultisetToken. Element&. Element& Token&. Token&)
   ))
   :qid internal_vstd.tokens.MultisetToken./MultisetToken_constructor_definition
   :skolemid skolem_internal_vstd.tokens.MultisetToken./MultisetToken_constructor_definition
)))
(assert
 (forall ((x vstd.tokens.MultisetToken.)) (!
   (= (vstd.tokens.MultisetToken./MultisetToken/_v x) (vstd.tokens.MultisetToken./MultisetToken/?_v
     x
   ))
   :pattern ((vstd.tokens.MultisetToken./MultisetToken/_v x))
   :qid internal_vstd.tokens.MultisetToken./MultisetToken/_v_accessor_definition
   :skolemid skolem_internal_vstd.tokens.MultisetToken./MultisetToken/_v_accessor_definition
)))
(assert
 (forall ((x vstd.tokens.MultisetToken.)) (!
   (= (vstd.tokens.MultisetToken./MultisetToken/inst x) (vstd.tokens.MultisetToken./MultisetToken/?inst
     x
   ))
   :pattern ((vstd.tokens.MultisetToken./MultisetToken/inst x))
   :qid internal_vstd.tokens.MultisetToken./MultisetToken/inst_accessor_definition
   :skolemid skolem_internal_vstd.tokens.MultisetToken./MultisetToken/inst_accessor_definition
)))
(assert
 (forall ((x vstd.tokens.MultisetToken.)) (!
   (= (vstd.tokens.MultisetToken./MultisetToken/m x) (vstd.tokens.MultisetToken./MultisetToken/?m
     x
   ))
   :pattern ((vstd.tokens.MultisetToken./MultisetToken/m x))
   :qid internal_vstd.tokens.MultisetToken./MultisetToken/m_accessor_definition
   :skolemid skolem_internal_vstd.tokens.MultisetToken./MultisetToken/m_accessor_definition
)))
(assert
 (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.tokens.MultisetToken. Element&. Element& Token&. Token&))
    (has_type (vstd.tokens.MultisetToken./MultisetToken/m (%Poly%vstd.tokens.MultisetToken.
       x
      )
     ) (TYPE%vstd.map.Map. $ INT Token&. Token&)
   ))
   :pattern ((vstd.tokens.MultisetToken./MultisetToken/m (%Poly%vstd.tokens.MultisetToken.
      x
     )
    ) (has_type x (TYPE%vstd.tokens.MultisetToken. Element&. Element& Token&. Token&))
   )
   :qid internal_vstd.tokens.MultisetToken./MultisetToken/m_invariant_definition
   :skolemid skolem_internal_vstd.tokens.MultisetToken./MultisetToken/m_invariant_definition
)))
(assert
 (forall ((x vstd.tokens.MultisetToken.)) (!
   (=>
    (is-vstd.tokens.MultisetToken./MultisetToken x)
    (height_lt (height (Poly%core!marker.PhantomData. (vstd.tokens.MultisetToken./MultisetToken/_v
        x
      ))
     ) (height (Poly%vstd.tokens.MultisetToken. x))
   ))
   :pattern ((height (Poly%core!marker.PhantomData. (vstd.tokens.MultisetToken./MultisetToken/_v
       x
   ))))
   :qid prelude_datatype_height_vstd.tokens.MultisetToken./MultisetToken/_v
   :skolemid skolem_prelude_datatype_height_vstd.tokens.MultisetToken./MultisetToken/_v
)))
(assert
 (forall ((x vstd.tokens.MultisetToken.)) (!
   (=>
    (is-vstd.tokens.MultisetToken./MultisetToken x)
    (height_lt (height (vstd.tokens.MultisetToken./MultisetToken/m x)) (height (Poly%vstd.tokens.MultisetToken.
       x
   ))))
   :pattern ((height (vstd.tokens.MultisetToken./MultisetToken/m x)))
   :qid prelude_datatype_height_vstd.tokens.MultisetToken./MultisetToken/m
   :skolemid skolem_prelude_datatype_height_vstd.tokens.MultisetToken./MultisetToken/m
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
(declare-fun tr_bound%vstd.std_specs.option.OptionAdditionalFns. (Dcr Type Dcr Type)
 Bool
)
(declare-fun tr_bound%vstd.tokens.ValueToken. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%vstd.tokens.UniqueValueToken. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%vstd.tokens.KeyValueToken. (Dcr Type Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%vstd.tokens.UniqueKeyValueToken. (Dcr Type Dcr Type Dcr Type)
 Bool
)
(declare-fun tr_bound%vstd.tokens.CountToken. (Dcr Type) Bool)
(declare-fun tr_bound%vstd.tokens.MonotonicCountToken. (Dcr Type) Bool)
(declare-fun tr_bound%vstd.tokens.ElementToken. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%vstd.tokens.UniqueElementToken. (Dcr Type Dcr Type) Bool)
(declare-fun tr_bound%vstd.tokens.SimpleToken. (Dcr Type) Bool)
(declare-fun tr_bound%vstd.tokens.UniqueSimpleToken. (Dcr Type) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type)) (!
   true
   :pattern ((tr_bound%vstd.std_specs.option.OptionAdditionalFns. Self%&. Self%& T&. T&))
   :qid internal_crate__vstd__std_specs__option__OptionAdditionalFns_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__std_specs__option__OptionAdditionalFns_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type)) (!
   true
   :pattern ((tr_bound%vstd.tokens.ValueToken. Self%&. Self%& Value&. Value&))
   :qid internal_crate__vstd__tokens__ValueToken_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__tokens__ValueToken_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type)) (!
   (=>
    (tr_bound%vstd.tokens.UniqueValueToken. Self%&. Self%& Value&. Value&)
    (tr_bound%vstd.tokens.ValueToken. Self%&. Self%& Value&. Value&)
   )
   :pattern ((tr_bound%vstd.tokens.UniqueValueToken. Self%&. Self%& Value&. Value&))
   :qid internal_crate__vstd__tokens__UniqueValueToken_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__tokens__UniqueValueToken_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type))
  (!
   true
   :pattern ((tr_bound%vstd.tokens.KeyValueToken. Self%&. Self%& Key&. Key& Value&. Value&))
   :qid internal_crate__vstd__tokens__KeyValueToken_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__tokens__KeyValueToken_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type))
  (!
   (=>
    (tr_bound%vstd.tokens.UniqueKeyValueToken. Self%&. Self%& Key&. Key& Value&. Value&)
    (tr_bound%vstd.tokens.KeyValueToken. Self%&. Self%& Key&. Key& Value&. Value&)
   )
   :pattern ((tr_bound%vstd.tokens.UniqueKeyValueToken. Self%&. Self%& Key&. Key& Value&.
     Value&
   ))
   :qid internal_crate__vstd__tokens__UniqueKeyValueToken_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__tokens__UniqueKeyValueToken_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%vstd.tokens.CountToken. Self%&. Self%&))
   :qid internal_crate__vstd__tokens__CountToken_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__tokens__CountToken_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%vstd.tokens.MonotonicCountToken. Self%&. Self%&))
   :qid internal_crate__vstd__tokens__MonotonicCountToken_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__tokens__MonotonicCountToken_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Element&. Dcr) (Element& Type)) (!
   true
   :pattern ((tr_bound%vstd.tokens.ElementToken. Self%&. Self%& Element&. Element&))
   :qid internal_crate__vstd__tokens__ElementToken_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__tokens__ElementToken_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Element&. Dcr) (Element& Type)) (!
   (=>
    (tr_bound%vstd.tokens.UniqueElementToken. Self%&. Self%& Element&. Element&)
    (tr_bound%vstd.tokens.ElementToken. Self%&. Self%& Element&. Element&)
   )
   :pattern ((tr_bound%vstd.tokens.UniqueElementToken. Self%&. Self%& Element&. Element&))
   :qid internal_crate__vstd__tokens__UniqueElementToken_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__tokens__UniqueElementToken_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   true
   :pattern ((tr_bound%vstd.tokens.SimpleToken. Self%&. Self%&))
   :qid internal_crate__vstd__tokens__SimpleToken_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__tokens__SimpleToken_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type)) (!
   (=>
    (tr_bound%vstd.tokens.UniqueSimpleToken. Self%&. Self%&)
    (tr_bound%vstd.tokens.SimpleToken. Self%&. Self%&)
   )
   :pattern ((tr_bound%vstd.tokens.UniqueSimpleToken. Self%&. Self%&))
   :qid internal_crate__vstd__tokens__UniqueSimpleToken_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__tokens__UniqueSimpleToken_trait_type_bounds_definition
)))

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

;; Function-Decl crate::vstd::map::Map::dom
(declare-fun vstd.map.impl&%0.dom.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::set::Set::mk_map
(declare-fun vstd.set.impl&%0.mk_map.? (Dcr Type Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::map::Map::index
(declare-fun vstd.map.impl&%0.index.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::map::Map::spec_index
(declare-fun vstd.map.impl&%0.spec_index.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::set::Set::choose
(declare-fun vstd.set.impl&%0.choose.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::map::Map::empty
(declare-fun vstd.map.impl&%0.empty.? (Dcr Type Dcr Type) Poly)

;; Function-Decl crate::vstd::map::Map::insert
(declare-fun vstd.map.impl&%0.insert.? (Dcr Type Dcr Type Poly Poly Poly) Poly)

;; Function-Decl crate::vstd::map::Map::remove
(declare-fun vstd.map.impl&%0.remove.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::tokens::ValueToken::instance_id
(declare-fun vstd.tokens.ValueToken.instance_id.? (Dcr Type Dcr Type Poly) Poly)
(declare-fun vstd.tokens.ValueToken.instance_id%default%.? (Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::tokens::ValueToken::value
(declare-fun vstd.tokens.ValueToken.value.? (Dcr Type Dcr Type Poly) Poly)
(declare-fun vstd.tokens.ValueToken.value%default%.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::tokens::KeyValueToken::instance_id
(declare-fun vstd.tokens.KeyValueToken.instance_id.? (Dcr Type Dcr Type Dcr Type Poly)
 Poly
)
(declare-fun vstd.tokens.KeyValueToken.instance_id%default%.? (Dcr Type Dcr Type Dcr
  Type Poly
 ) Poly
)

;; Function-Decl crate::vstd::tokens::KeyValueToken::key
(declare-fun vstd.tokens.KeyValueToken.key.? (Dcr Type Dcr Type Dcr Type Poly) Poly)
(declare-fun vstd.tokens.KeyValueToken.key%default%.? (Dcr Type Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::tokens::KeyValueToken::value
(declare-fun vstd.tokens.KeyValueToken.value.? (Dcr Type Dcr Type Dcr Type Poly) Poly)
(declare-fun vstd.tokens.KeyValueToken.value%default%.? (Dcr Type Dcr Type Dcr Type
  Poly
 ) Poly
)

;; Function-Decl crate::vstd::tokens::ElementToken::instance_id
(declare-fun vstd.tokens.ElementToken.instance_id.? (Dcr Type Dcr Type Poly) Poly)
(declare-fun vstd.tokens.ElementToken.instance_id%default%.? (Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::tokens::ElementToken::element
(declare-fun vstd.tokens.ElementToken.element.? (Dcr Type Dcr Type Poly) Poly)
(declare-fun vstd.tokens.ElementToken.element%default%.? (Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::tokens::SimpleToken::instance_id
(declare-fun vstd.tokens.SimpleToken.instance_id.? (Dcr Type Poly) Poly)
(declare-fun vstd.tokens.SimpleToken.instance_id%default%.? (Dcr Type Poly) Poly)

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

;; Function-Decl crate::vstd::std_specs::option::is_none
(declare-fun vstd.std_specs.option.is_none.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::std_specs::option::is_some
(declare-fun vstd.std_specs.option.is_some.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::std_specs::option::spec_unwrap
(declare-fun vstd.std_specs.option.spec_unwrap.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::map::Map::new
(declare-fun vstd.map.impl&%0.new.? (Dcr Type Dcr Type Dcr Type Dcr Type Poly Poly)
 Poly
)

;; Function-Decl crate::vstd::pervasive::arbitrary
(declare-fun vstd.pervasive.arbitrary.? (Dcr Type) Poly)

;; Function-Decl crate::vstd::tokens::CountToken::instance_id
(declare-fun vstd.tokens.CountToken.instance_id.? (Dcr Type Poly) Poly)
(declare-fun vstd.tokens.CountToken.instance_id%default%.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::tokens::CountToken::count
(declare-fun vstd.tokens.CountToken.count.? (Dcr Type Poly) Poly)
(declare-fun vstd.tokens.CountToken.count%default%.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::tokens::MonotonicCountToken::instance_id
(declare-fun vstd.tokens.MonotonicCountToken.instance_id.? (Dcr Type Poly) Poly)
(declare-fun vstd.tokens.MonotonicCountToken.instance_id%default%.? (Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::tokens::MonotonicCountToken::count
(declare-fun vstd.tokens.MonotonicCountToken.count.? (Dcr Type Poly) Poly)
(declare-fun vstd.tokens.MonotonicCountToken.count%default%.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::map::Map::contains_key
(declare-fun vstd.map_lib.impl&%0.contains_key.? (Dcr Type Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::map::Map::map_values
(declare-fun vstd.map_lib.impl&%0.map_values.? (Dcr Type Dcr Type Dcr Type Poly Poly)
 Poly
)

;; Function-Decl crate::vstd::multiset::Multiset::contains
(declare-fun vstd.multiset.impl&%0.contains.? (Dcr Type Poly Poly) Bool)

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

;; Function-Decl crate::vstd::set::Set::fold
(declare-fun vstd.set_lib.impl&%0.fold.? (Dcr Type Dcr Type Poly Poly Poly) Poly)
(declare-fun vstd.set_lib.impl&%0.rec%fold.? (Dcr Type Dcr Type Poly Poly Poly Fuel)
 Poly
)

;; Function-Decl crate::vstd::set::Set::find_unique_maximal
(declare-fun vstd.set_lib.impl&%0.find_unique_maximal.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::tokens::MapToken::wf
(declare-fun vstd.tokens.impl&%0.wf.? (Dcr Type Dcr Type Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::tokens::MapToken::instance_id
(declare-fun vstd.tokens.impl&%0.instance_id.? (Dcr Type Dcr Type Dcr Type Poly) vstd.tokens.InstanceId.)

;; Function-Decl crate::vstd::tokens::MapToken::map
(declare-fun vstd.tokens.impl&%0.map.? (Dcr Type Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::tokens::MapToken::dom
(declare-fun vstd.tokens.impl&%0.dom.? (Dcr Type Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::tokens::MapToken::spec_index
(declare-fun vstd.tokens.impl&%0.spec_index.? (Dcr Type Dcr Type Dcr Type Poly Poly)
 Poly
)

;; Function-Decl crate::vstd::tokens::MapToken::index
(declare-fun vstd.tokens.impl&%0.index.? (Dcr Type Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::tokens::SetToken::wf
(declare-fun vstd.tokens.impl&%1.wf.? (Dcr Type Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::tokens::SetToken::instance_id
(declare-fun vstd.tokens.impl&%1.instance_id.? (Dcr Type Dcr Type Poly) vstd.tokens.InstanceId.)

;; Function-Decl crate::vstd::tokens::SetToken::set
(declare-fun vstd.tokens.impl&%1.set.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::tokens::SetToken::contains
(declare-fun vstd.tokens.impl&%1.contains.? (Dcr Type Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::tokens::map_values
(declare-fun vstd.tokens.map_values.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::tokens::fresh
(declare-fun vstd.tokens.fresh.? (Poly) Int)

;; Function-Decl crate::vstd::tokens::MultisetToken::wf
(declare-fun vstd.tokens.impl&%2.wf.? (Dcr Type Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::tokens::MultisetToken::instance_id
(declare-fun vstd.tokens.impl&%2.instance_id.? (Dcr Type Dcr Type Poly) vstd.tokens.InstanceId.)

;; Function-Decl crate::vstd::tokens::MultisetToken::map_elems
(declare-fun vstd.tokens.impl&%2.map_elems.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::tokens::MultisetToken::multiset
(declare-fun vstd.tokens.impl&%2.multiset.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::tokens::option_value_eq_option_token
(declare-fun vstd.tokens.option_value_eq_option_token.? (Dcr Type Dcr Type Poly Poly
  Poly
 ) Bool
)

;; Function-Decl crate::vstd::tokens::option_value_le_option_token
(declare-fun vstd.tokens.option_value_le_option_token.? (Dcr Type Dcr Type Poly Poly
  Poly
 ) Bool
)

;; Function-Decl crate::vstd::tokens::bool_value_eq_option_token
(declare-fun vstd.tokens.bool_value_eq_option_token.? (Dcr Type Poly Poly Poly) Bool)

;; Function-Decl crate::vstd::tokens::bool_value_le_option_token
(declare-fun vstd.tokens.bool_value_le_option_token.? (Dcr Type Poly Poly Poly) Bool)

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
        :qid user_crate__vstd__set__axiom_set_ext_equal_7
        :skolemid skolem_user_crate__vstd__set__axiom_set_ext_equal_7
    ))))
    :pattern ((ext_eq false (TYPE%vstd.set.Set. A&. A&) s1! s2!))
    :qid user_crate__vstd__set__axiom_set_ext_equal_8
    :skolemid skolem_user_crate__vstd__set__axiom_set_ext_equal_8
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
    :qid user_crate__vstd__set__axiom_set_ext_equal_deep_9
    :skolemid skolem_user_crate__vstd__set__axiom_set_ext_equal_deep_9
))))

;; Function-Axioms crate::vstd::map::Map::dom
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
    (has_type (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) (TYPE%vstd.set.Set. K&. K&))
   )
   :pattern ((vstd.map.impl&%0.dom.? K&. K& V&. V& self!))
   :qid internal_vstd.map.impl&__0.dom.?_pre_post_definition
   :skolemid skolem_internal_vstd.map.impl&__0.dom.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::set::Set::mk_map
(assert
 (forall ((A&. Dcr) (A& Type) (V&. Dcr) (V& Type) (F&. Dcr) (F& Type) (self! Poly) (
    f! Poly
   )
  ) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type f! F&)
    )
    (has_type (vstd.set.impl&%0.mk_map.? A&. A& V&. V& F&. F& self! f!) (TYPE%vstd.map.Map.
      A&. A& V&. V&
   )))
   :pattern ((vstd.set.impl&%0.mk_map.? A&. A& V&. V& F&. F& self! f!))
   :qid internal_vstd.set.impl&__0.mk_map.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.mk_map.?_pre_post_definition
)))

;; Broadcast crate::vstd::set::axiom_mk_map_domain
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_mk_map_domain.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (s! Poly) (f! Poly)) (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. K&. K&))
      (has_type f! (TYPE%fun%1. K&. K& V&. V&))
     )
     (= (vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.set.impl&%0.mk_map.? K&. K& V&. V& $
        (TYPE%fun%1. K&. K& V&. V&) s! f!
       )
      ) s!
    ))
    :pattern ((vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.set.impl&%0.mk_map.? K&. K& V&.
       V& $ (TYPE%fun%1. K&. K& V&. V&) s! f!
    )))
    :qid user_crate__vstd__set__axiom_mk_map_domain_10
    :skolemid skolem_user_crate__vstd__set__axiom_mk_map_domain_10
))))

;; Function-Specs crate::vstd::map::Map::index
(declare-fun req%vstd.map.impl&%0.index. (Dcr Type Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (= (req%vstd.map.impl&%0.index. K&. K& V&. V& self! key!) (=>
     %%global_location_label%%0
     (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) key!)
   ))
   :pattern ((req%vstd.map.impl&%0.index. K&. K& V&. V& self! key!))
   :qid internal_req__vstd.map.impl&__0.index._definition
   :skolemid skolem_internal_req__vstd.map.impl&__0.index._definition
)))

;; Function-Axioms crate::vstd::map::Map::index
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (has_type key! K&)
    )
    (has_type (vstd.map.impl&%0.index.? K&. K& V&. V& self! key!) V&)
   )
   :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& self! key!))
   :qid internal_vstd.map.impl&__0.index.?_pre_post_definition
   :skolemid skolem_internal_vstd.map.impl&__0.index.?_pre_post_definition
)))

;; Function-Specs crate::vstd::map::Map::spec_index
(declare-fun req%vstd.map.impl&%0.spec_index. (Dcr Type Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (= (req%vstd.map.impl&%0.spec_index. K&. K& V&. V& self! key!) (=>
     %%global_location_label%%1
     (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) key!)
   ))
   :pattern ((req%vstd.map.impl&%0.spec_index. K&. K& V&. V& self! key!))
   :qid internal_req__vstd.map.impl&__0.spec_index._definition
   :skolemid skolem_internal_req__vstd.map.impl&__0.spec_index._definition
)))

;; Function-Axioms crate::vstd::map::Map::spec_index
(assert
 (fuel_bool_default fuel%vstd.map.impl&%0.spec_index.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.map.impl&%0.spec_index.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
    (= (vstd.map.impl&%0.spec_index.? K&. K& V&. V& self! key!) (vstd.map.impl&%0.index.?
      K&. K& V&. V& self! key!
    ))
    :pattern ((vstd.map.impl&%0.spec_index.? K&. K& V&. V& self! key!))
    :qid internal_vstd.map.impl&__0.spec_index.?_definition
    :skolemid skolem_internal_vstd.map.impl&__0.spec_index.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (has_type key! K&)
    )
    (has_type (vstd.map.impl&%0.spec_index.? K&. K& V&. V& self! key!) V&)
   )
   :pattern ((vstd.map.impl&%0.spec_index.? K&. K& V&. V& self! key!))
   :qid internal_vstd.map.impl&__0.spec_index.?_pre_post_definition
   :skolemid skolem_internal_vstd.map.impl&__0.spec_index.?_pre_post_definition
)))

;; Broadcast crate::vstd::set::axiom_mk_map_index
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_mk_map_index.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (s! Poly) (f! Poly) (key! Poly))
   (!
    (=>
     (and
      (has_type s! (TYPE%vstd.set.Set. K&. K&))
      (has_type f! (TYPE%fun%1. K&. K& V&. V&))
      (has_type key! K&)
     )
     (=>
      (vstd.set.impl&%0.contains.? K&. K& s! key!)
      (= (vstd.map.impl&%0.index.? K&. K& V&. V& (vstd.set.impl&%0.mk_map.? K&. K& V&. V&
         $ (TYPE%fun%1. K&. K& V&. V&) s! f!
        ) key!
       ) (%%apply%%0 (%Poly%fun%1. f!) key!)
    )))
    :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& (vstd.set.impl&%0.mk_map.? K&. K&
       V&. V& $ (TYPE%fun%1. K&. K& V&. V&) s! f!
      ) key!
    ))
    :qid user_crate__vstd__set__axiom_mk_map_index_11
    :skolemid skolem_user_crate__vstd__set__axiom_mk_map_index_11
))))

;; Broadcast crate::vstd::set::axiom_set_empty_finite
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_empty_finite.)
  (forall ((A&. Dcr) (A& Type)) (!
    (vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.empty.? A&. A&))
    :pattern ((vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.empty.? A&. A&)))
    :qid user_crate__vstd__set__axiom_set_empty_finite_12
    :skolemid skolem_user_crate__vstd__set__axiom_set_empty_finite_12
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
    :qid user_crate__vstd__set__axiom_set_insert_finite_13
    :skolemid skolem_user_crate__vstd__set__axiom_set_insert_finite_13
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
    :qid user_crate__vstd__set__axiom_set_remove_finite_14
    :skolemid skolem_user_crate__vstd__set__axiom_set_remove_finite_14
))))

;; Function-Axioms crate::vstd::set::Set::choose
(assert
 (fuel_bool_default fuel%vstd.set.impl&%0.choose.)
)
(declare-fun %%choose%%0 (Type Dcr Type Poly Dcr Type Poly) Poly)
(assert
 (forall ((%%hole%%0 Type) (%%hole%%1 Dcr) (%%hole%%2 Type) (%%hole%%3 Poly) (%%hole%%4
    Dcr
   ) (%%hole%%5 Type) (%%hole%%6 Poly)
  ) (!
   (=>
    (exists ((a$ Poly)) (!
      (and
       (has_type a$ %%hole%%0)
       (vstd.set.impl&%0.contains.? %%hole%%1 %%hole%%2 %%hole%%3 a$)
      )
      :pattern ((vstd.set.impl&%0.contains.? %%hole%%4 %%hole%%5 %%hole%%6 a$))
      :qid user_crate__vstd__set__Set__choose_15
      :skolemid skolem_user_crate__vstd__set__Set__choose_15
    ))
    (exists ((a$ Poly)) (!
      (and
       (and
        (has_type a$ %%hole%%0)
        (vstd.set.impl&%0.contains.? %%hole%%1 %%hole%%2 %%hole%%3 a$)
       )
       (= (%%choose%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5 %%hole%%6)
        a$
      ))
      :pattern ((vstd.set.impl&%0.contains.? %%hole%%4 %%hole%%5 %%hole%%6 a$))
   )))
   :pattern ((%%choose%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
     %%hole%%6
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.set.impl&%0.choose.)
  (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
    (= (vstd.set.impl&%0.choose.? A&. A& self!) (as_type (%%choose%%0 A& A&. A& self! A&.
       A& self!
      ) A&
    ))
    :pattern ((vstd.set.impl&%0.choose.? A&. A& self!))
    :qid internal_vstd.set.impl&__0.choose.?_definition
    :skolemid skolem_internal_vstd.set.impl&__0.choose.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.set.Set. A&. A&))
    (has_type (vstd.set.impl&%0.choose.? A&. A& self!) A&)
   )
   :pattern ((vstd.set.impl&%0.choose.? A&. A& self!))
   :qid internal_vstd.set.impl&__0.choose.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.choose.?_pre_post_definition
)))

;; Broadcast crate::vstd::set::axiom_set_choose_finite
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_choose_finite.)
  (forall ((A&. Dcr) (A& Type) (s! Poly)) (!
    (=>
     (has_type s! (TYPE%vstd.set.Set. A&. A&))
     (=>
      (not (vstd.set.impl&%0.finite.? A&. A& s!))
      (vstd.set.impl&%0.contains.? A&. A& s! (vstd.set.impl&%0.choose.? A&. A& s!))
    ))
    :pattern ((vstd.set.impl&%0.contains.? A&. A& s! (vstd.set.impl&%0.choose.? A&. A& s!)))
    :qid user_crate__vstd__set__axiom_set_choose_finite_16
    :skolemid skolem_user_crate__vstd__set__axiom_set_choose_finite_16
))))

;; Broadcast crate::vstd::set::axiom_set_empty_len
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_empty_len.)
  (forall ((A&. Dcr) (A& Type)) (!
    (= (vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.empty.? A&. A&)) 0)
    :pattern ((vstd.set.impl&%0.len.? A&. A& (vstd.set.impl&%0.empty.? A&. A&)))
    :qid user_crate__vstd__set__axiom_set_empty_len_17
    :skolemid skolem_user_crate__vstd__set__axiom_set_empty_len_17
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
    :qid user_crate__vstd__set__axiom_set_insert_len_18
    :skolemid skolem_user_crate__vstd__set__axiom_set_insert_len_18
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
    :qid user_crate__vstd__set__axiom_set_remove_len_19
    :skolemid skolem_user_crate__vstd__set__axiom_set_remove_len_19
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
    :qid user_crate__vstd__set__axiom_set_contains_len_20
    :skolemid skolem_user_crate__vstd__set__axiom_set_contains_len_20
))))

;; Broadcast crate::vstd::set::axiom_set_choose_len
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_choose_len.)
  (forall ((A&. Dcr) (A& Type) (s! Poly)) (!
    (=>
     (has_type s! (TYPE%vstd.set.Set. A&. A&))
     (=>
      (and
       (vstd.set.impl&%0.finite.? A&. A& s!)
       (not (= (vstd.set.impl&%0.len.? A&. A& s!) 0))
      )
      (vstd.set.impl&%0.contains.? A&. A& s! (vstd.set.impl&%0.choose.? A&. A& s!))
    ))
    :pattern ((vstd.set.impl&%0.len.? A&. A& s!) (vstd.set.impl&%0.contains.? A&. A& s!
      (vstd.set.impl&%0.choose.? A&. A& s!)
    ))
    :qid user_crate__vstd__set__axiom_set_choose_len_21
    :skolemid skolem_user_crate__vstd__set__axiom_set_choose_len_21
))))

;; Broadcast crate::vstd::map::axiom_map_index_decreases_finite
(assert
 (=>
  (fuel_bool fuel%vstd.map.axiom_map_index_decreases_finite.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (key! Poly)) (!
    (=>
     (and
      (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
      (has_type key! K&)
     )
     (=>
      (and
       (vstd.set.impl&%0.finite.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!))
       (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!) key!)
      )
      (height_lt (height (vstd.map.impl&%0.index.? K&. K& V&. V& m! key!)) (height m!))
    ))
    :pattern ((height (vstd.map.impl&%0.index.? K&. K& V&. V& m! key!)))
    :qid user_crate__vstd__map__axiom_map_index_decreases_finite_22
    :skolemid skolem_user_crate__vstd__map__axiom_map_index_decreases_finite_22
))))

;; Broadcast crate::vstd::map::axiom_map_index_decreases_infinite
(assert
 (=>
  (fuel_bool fuel%vstd.map.axiom_map_index_decreases_infinite.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (key! Poly)) (!
    (=>
     (and
      (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
      (has_type key! K&)
     )
     (=>
      (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!) key!)
      (height_lt (height (vstd.map.impl&%0.index.? K&. K& V&. V& m! key!)) (height (fun_from_recursive_field
         m!
    )))))
    :pattern ((height (vstd.map.impl&%0.index.? K&. K& V&. V& m! key!)))
    :qid user_crate__vstd__map__axiom_map_index_decreases_infinite_23
    :skolemid skolem_user_crate__vstd__map__axiom_map_index_decreases_infinite_23
))))

;; Function-Axioms crate::vstd::map::Map::empty
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type)) (!
   (has_type (vstd.map.impl&%0.empty.? K&. K& V&. V&) (TYPE%vstd.map.Map. K&. K& V&. V&))
   :pattern ((vstd.map.impl&%0.empty.? K&. K& V&. V&))
   :qid internal_vstd.map.impl&__0.empty.?_pre_post_definition
   :skolemid skolem_internal_vstd.map.impl&__0.empty.?_pre_post_definition
)))

;; Broadcast crate::vstd::map::axiom_map_empty
(assert
 (=>
  (fuel_bool fuel%vstd.map.axiom_map_empty.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type)) (!
    (= (vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map.impl&%0.empty.? K&. K& V&. V&))
     (vstd.set.impl&%0.empty.? K&. K&)
    )
    :pattern ((vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map.impl&%0.empty.? K&. K& V&.
       V&
    )))
    :qid user_crate__vstd__map__axiom_map_empty_24
    :skolemid skolem_user_crate__vstd__map__axiom_map_empty_24
))))

;; Function-Axioms crate::vstd::map::Map::insert
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly) (value! Poly))
  (!
   (=>
    (and
     (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (has_type key! K&)
     (has_type value! V&)
    )
    (has_type (vstd.map.impl&%0.insert.? K&. K& V&. V& self! key! value!) (TYPE%vstd.map.Map.
      K&. K& V&. V&
   )))
   :pattern ((vstd.map.impl&%0.insert.? K&. K& V&. V& self! key! value!))
   :qid internal_vstd.map.impl&__0.insert.?_pre_post_definition
   :skolemid skolem_internal_vstd.map.impl&__0.insert.?_pre_post_definition
)))

;; Broadcast crate::vstd::map::axiom_map_insert_domain
(assert
 (=>
  (fuel_bool fuel%vstd.map.axiom_map_insert_domain.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (key! Poly) (value! Poly))
   (!
    (=>
     (and
      (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
      (has_type key! K&)
      (has_type value! V&)
     )
     (= (vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map.impl&%0.insert.? K&. K& V&. V& m!
        key! value!
       )
      ) (vstd.set.impl&%0.insert.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!) key!)
    ))
    :pattern ((vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map.impl&%0.insert.? K&. K& V&.
       V& m! key! value!
    )))
    :qid user_crate__vstd__map__axiom_map_insert_domain_25
    :skolemid skolem_user_crate__vstd__map__axiom_map_insert_domain_25
))))

;; Broadcast crate::vstd::map::axiom_map_insert_same
(assert
 (=>
  (fuel_bool fuel%vstd.map.axiom_map_insert_same.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (key! Poly) (value! Poly))
   (!
    (=>
     (and
      (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
      (has_type key! K&)
      (has_type value! V&)
     )
     (= (vstd.map.impl&%0.index.? K&. K& V&. V& (vstd.map.impl&%0.insert.? K&. K& V&. V&
        m! key! value!
       ) key!
      ) value!
    ))
    :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& (vstd.map.impl&%0.insert.? K&. K&
       V&. V& m! key! value!
      ) key!
    ))
    :qid user_crate__vstd__map__axiom_map_insert_same_26
    :skolemid skolem_user_crate__vstd__map__axiom_map_insert_same_26
))))

;; Broadcast crate::vstd::map::axiom_map_insert_different
(assert
 (=>
  (fuel_bool fuel%vstd.map.axiom_map_insert_different.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (key1! Poly) (key2! Poly)
    (value! Poly)
   ) (!
    (=>
     (and
      (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
      (has_type key1! K&)
      (has_type key2! K&)
      (has_type value! V&)
     )
     (=>
      (and
       (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!) key1!)
       (not (= key1! key2!))
      )
      (= (vstd.map.impl&%0.index.? K&. K& V&. V& (vstd.map.impl&%0.insert.? K&. K& V&. V&
         m! key2! value!
        ) key1!
       ) (vstd.map.impl&%0.index.? K&. K& V&. V& m! key1!)
    )))
    :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& (vstd.map.impl&%0.insert.? K&. K&
       V&. V& m! key2! value!
      ) key1!
    ))
    :qid user_crate__vstd__map__axiom_map_insert_different_27
    :skolemid skolem_user_crate__vstd__map__axiom_map_insert_different_27
))))

;; Function-Axioms crate::vstd::map::Map::remove
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (has_type key! K&)
    )
    (has_type (vstd.map.impl&%0.remove.? K&. K& V&. V& self! key!) (TYPE%vstd.map.Map.
      K&. K& V&. V&
   )))
   :pattern ((vstd.map.impl&%0.remove.? K&. K& V&. V& self! key!))
   :qid internal_vstd.map.impl&__0.remove.?_pre_post_definition
   :skolemid skolem_internal_vstd.map.impl&__0.remove.?_pre_post_definition
)))

;; Broadcast crate::vstd::map::axiom_map_remove_domain
(assert
 (=>
  (fuel_bool fuel%vstd.map.axiom_map_remove_domain.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (key! Poly)) (!
    (=>
     (and
      (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
      (has_type key! K&)
     )
     (= (vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map.impl&%0.remove.? K&. K& V&. V& m!
        key!
       )
      ) (vstd.set.impl&%0.remove.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!) key!)
    ))
    :pattern ((vstd.map.impl&%0.dom.? K&. K& V&. V& (vstd.map.impl&%0.remove.? K&. K& V&.
       V& m! key!
    )))
    :qid user_crate__vstd__map__axiom_map_remove_domain_28
    :skolemid skolem_user_crate__vstd__map__axiom_map_remove_domain_28
))))

;; Broadcast crate::vstd::map::axiom_map_remove_different
(assert
 (=>
  (fuel_bool fuel%vstd.map.axiom_map_remove_different.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (key1! Poly) (key2! Poly))
   (!
    (=>
     (and
      (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
      (has_type key1! K&)
      (has_type key2! K&)
     )
     (=>
      (and
       (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!) key1!)
       (not (= key1! key2!))
      )
      (= (vstd.map.impl&%0.index.? K&. K& V&. V& (vstd.map.impl&%0.remove.? K&. K& V&. V&
         m! key2!
        ) key1!
       ) (vstd.map.impl&%0.index.? K&. K& V&. V& m! key1!)
    )))
    :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& (vstd.map.impl&%0.remove.? K&. K&
       V&. V& m! key2!
      ) key1!
    ))
    :qid user_crate__vstd__map__axiom_map_remove_different_29
    :skolemid skolem_user_crate__vstd__map__axiom_map_remove_different_29
))))

;; Broadcast crate::vstd::map::axiom_map_ext_equal
(assert
 (=>
  (fuel_bool fuel%vstd.map.axiom_map_ext_equal.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m1! Poly) (m2! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd.map.Map. K&. K& V&. V&))
      (has_type m2! (TYPE%vstd.map.Map. K&. K& V&. V&))
     )
     (= (ext_eq false (TYPE%vstd.map.Map. K&. K& V&. V&) m1! m2!) (and
       (ext_eq false (TYPE%vstd.set.Set. K&. K&) (vstd.map.impl&%0.dom.? K&. K& V&. V& m1!)
        (vstd.map.impl&%0.dom.? K&. K& V&. V& m2!)
       )
       (forall ((k$ Poly)) (!
         (=>
          (has_type k$ K&)
          (=>
           (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m1!) k$)
           (= (vstd.map.impl&%0.index.? K&. K& V&. V& m1! k$) (vstd.map.impl&%0.index.? K&. K&
             V&. V& m2! k$
         ))))
         :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& m1! k$))
         :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& m2! k$))
         :qid user_crate__vstd__map__axiom_map_ext_equal_30
         :skolemid skolem_user_crate__vstd__map__axiom_map_ext_equal_30
    )))))
    :pattern ((ext_eq false (TYPE%vstd.map.Map. K&. K& V&. V&) m1! m2!))
    :qid user_crate__vstd__map__axiom_map_ext_equal_31
    :skolemid skolem_user_crate__vstd__map__axiom_map_ext_equal_31
))))

;; Broadcast crate::vstd::map::axiom_map_ext_equal_deep
(assert
 (=>
  (fuel_bool fuel%vstd.map.axiom_map_ext_equal_deep.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m1! Poly) (m2! Poly)) (!
    (=>
     (and
      (has_type m1! (TYPE%vstd.map.Map. K&. K& V&. V&))
      (has_type m2! (TYPE%vstd.map.Map. K&. K& V&. V&))
     )
     (= (ext_eq true (TYPE%vstd.map.Map. K&. K& V&. V&) m1! m2!) (and
       (ext_eq true (TYPE%vstd.set.Set. K&. K&) (vstd.map.impl&%0.dom.? K&. K& V&. V& m1!)
        (vstd.map.impl&%0.dom.? K&. K& V&. V& m2!)
       )
       (forall ((k$ Poly)) (!
         (=>
          (has_type k$ K&)
          (=>
           (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m1!) k$)
           (ext_eq true V& (vstd.map.impl&%0.index.? K&. K& V&. V& m1! k$) (vstd.map.impl&%0.index.?
             K&. K& V&. V& m2! k$
         ))))
         :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& m1! k$))
         :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& m2! k$))
         :qid user_crate__vstd__map__axiom_map_ext_equal_deep_32
         :skolemid skolem_user_crate__vstd__map__axiom_map_ext_equal_deep_32
    )))))
    :pattern ((ext_eq true (TYPE%vstd.map.Map. K&. K& V&. V&) m1! m2!))
    :qid user_crate__vstd__map__axiom_map_ext_equal_deep_33
    :skolemid skolem_user_crate__vstd__map__axiom_map_ext_equal_deep_33
))))

;; Function-Axioms crate::vstd::tokens::ValueToken::instance_id
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.tokens.ValueToken.instance_id.? Self%&. Self%& Value&. Value& self!)
     TYPE%vstd.tokens.InstanceId.
   ))
   :pattern ((vstd.tokens.ValueToken.instance_id.? Self%&. Self%& Value&. Value& self!))
   :qid internal_vstd.tokens.ValueToken.instance_id.?_pre_post_definition
   :skolemid skolem_internal_vstd.tokens.ValueToken.instance_id.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::tokens::ValueToken::value
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.tokens.ValueToken.value.? Self%&. Self%& Value&. Value& self!) Value&)
   )
   :pattern ((vstd.tokens.ValueToken.value.? Self%&. Self%& Value&. Value& self!))
   :qid internal_vstd.tokens.ValueToken.value.?_pre_post_definition
   :skolemid skolem_internal_vstd.tokens.ValueToken.value.?_pre_post_definition
)))

;; Function-Specs crate::vstd::tokens::ValueToken::agree
(declare-fun req%vstd.tokens.ValueToken.agree. (Dcr Type Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type) (self! Poly) (other!
    Poly
   )
  ) (!
   (= (req%vstd.tokens.ValueToken.agree. Self%&. Self%& Value&. Value& self! other!)
    (=>
     %%global_location_label%%2
     (= (vstd.tokens.ValueToken.instance_id.? Self%&. Self%& Value&. Value& self!) (vstd.tokens.ValueToken.instance_id.?
       Self%&. Self%& Value&. Value& other!
   ))))
   :pattern ((req%vstd.tokens.ValueToken.agree. Self%&. Self%& Value&. Value& self! other!))
   :qid internal_req__vstd.tokens.ValueToken.agree._definition
   :skolemid skolem_internal_req__vstd.tokens.ValueToken.agree._definition
)))
(declare-fun ens%vstd.tokens.ValueToken.agree. (Dcr Type Dcr Type Poly Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type) (self! Poly) (other!
    Poly
   )
  ) (!
   (= (ens%vstd.tokens.ValueToken.agree. Self%&. Self%& Value&. Value& self! other!)
    (= (vstd.tokens.ValueToken.value.? Self%&. Self%& Value&. Value& self!) (vstd.tokens.ValueToken.value.?
      Self%&. Self%& Value&. Value& other!
   )))
   :pattern ((ens%vstd.tokens.ValueToken.agree. Self%&. Self%& Value&. Value& self! other!))
   :qid internal_ens__vstd.tokens.ValueToken.agree._definition
   :skolemid skolem_internal_ens__vstd.tokens.ValueToken.agree._definition
)))

;; Function-Specs crate::vstd::tokens::ValueToken::arbitrary
(declare-fun ens%vstd.tokens.ValueToken.arbitrary. (Dcr Type Dcr Type Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type) (%return! Poly))
  (!
   (= (ens%vstd.tokens.ValueToken.arbitrary. Self%&. Self%& Value&. Value& %return!)
    (has_type %return! Self%&)
   )
   :pattern ((ens%vstd.tokens.ValueToken.arbitrary. Self%&. Self%& Value&. Value& %return!))
   :qid internal_ens__vstd.tokens.ValueToken.arbitrary._definition
   :skolemid skolem_internal_ens__vstd.tokens.ValueToken.arbitrary._definition
)))

;; Function-Specs crate::vstd::tokens::UniqueValueToken::unique
(declare-fun ens%vstd.tokens.UniqueValueToken.unique. (Dcr Type Dcr Type Poly Poly
  Poly
 ) Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Value&. Dcr) (Value& Type) (pre%self! Poly) (
    self! Poly
   ) (other! Poly)
  ) (!
   (= (ens%vstd.tokens.UniqueValueToken.unique. Self%&. Self%& Value&. Value& pre%self!
     self! other!
    ) (and
     (has_type self! Self%&)
     (not (= (vstd.tokens.ValueToken.instance_id.? Self%&. Self%& Value&. Value& self!)
       (vstd.tokens.ValueToken.instance_id.? Self%&. Self%& Value&. Value& other!)
     ))
     (= self! pre%self!)
   ))
   :pattern ((ens%vstd.tokens.UniqueValueToken.unique. Self%&. Self%& Value&. Value& pre%self!
     self! other!
   ))
   :qid internal_ens__vstd.tokens.UniqueValueToken.unique._definition
   :skolemid skolem_internal_ens__vstd.tokens.UniqueValueToken.unique._definition
)))

;; Function-Axioms crate::vstd::tokens::KeyValueToken::instance_id
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type)
   (self! Poly)
  ) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.tokens.KeyValueToken.instance_id.? Self%&. Self%& Key&. Key& Value&.
      Value& self!
     ) TYPE%vstd.tokens.InstanceId.
   ))
   :pattern ((vstd.tokens.KeyValueToken.instance_id.? Self%&. Self%& Key&. Key& Value&.
     Value& self!
   ))
   :qid internal_vstd.tokens.KeyValueToken.instance_id.?_pre_post_definition
   :skolemid skolem_internal_vstd.tokens.KeyValueToken.instance_id.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::tokens::KeyValueToken::key
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type)
   (self! Poly)
  ) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.tokens.KeyValueToken.key.? Self%&. Self%& Key&. Key& Value&. Value&
      self!
     ) Key&
   ))
   :pattern ((vstd.tokens.KeyValueToken.key.? Self%&. Self%& Key&. Key& Value&. Value&
     self!
   ))
   :qid internal_vstd.tokens.KeyValueToken.key.?_pre_post_definition
   :skolemid skolem_internal_vstd.tokens.KeyValueToken.key.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::tokens::KeyValueToken::value
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type)
   (self! Poly)
  ) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.tokens.KeyValueToken.value.? Self%&. Self%& Key&. Key& Value&. Value&
      self!
     ) Value&
   ))
   :pattern ((vstd.tokens.KeyValueToken.value.? Self%&. Self%& Key&. Key& Value&. Value&
     self!
   ))
   :qid internal_vstd.tokens.KeyValueToken.value.?_pre_post_definition
   :skolemid skolem_internal_vstd.tokens.KeyValueToken.value.?_pre_post_definition
)))

;; Function-Specs crate::vstd::tokens::KeyValueToken::agree
(declare-fun req%vstd.tokens.KeyValueToken.agree. (Dcr Type Dcr Type Dcr Type Poly
  Poly
 ) Bool
)
(declare-const %%global_location_label%%3 Bool)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type)
   (self! Poly) (other! Poly)
  ) (!
   (= (req%vstd.tokens.KeyValueToken.agree. Self%&. Self%& Key&. Key& Value&. Value& self!
     other!
    ) (and
     (=>
      %%global_location_label%%3
      (= (vstd.tokens.KeyValueToken.instance_id.? Self%&. Self%& Key&. Key& Value&. Value&
        self!
       ) (vstd.tokens.KeyValueToken.instance_id.? Self%&. Self%& Key&. Key& Value&. Value&
        other!
     )))
     (=>
      %%global_location_label%%4
      (= (vstd.tokens.KeyValueToken.key.? Self%&. Self%& Key&. Key& Value&. Value& self!)
       (vstd.tokens.KeyValueToken.key.? Self%&. Self%& Key&. Key& Value&. Value& other!)
   ))))
   :pattern ((req%vstd.tokens.KeyValueToken.agree. Self%&. Self%& Key&. Key& Value&. Value&
     self! other!
   ))
   :qid internal_req__vstd.tokens.KeyValueToken.agree._definition
   :skolemid skolem_internal_req__vstd.tokens.KeyValueToken.agree._definition
)))
(declare-fun ens%vstd.tokens.KeyValueToken.agree. (Dcr Type Dcr Type Dcr Type Poly
  Poly
 ) Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type)
   (self! Poly) (other! Poly)
  ) (!
   (= (ens%vstd.tokens.KeyValueToken.agree. Self%&. Self%& Key&. Key& Value&. Value& self!
     other!
    ) (= (vstd.tokens.KeyValueToken.value.? Self%&. Self%& Key&. Key& Value&. Value& self!)
     (vstd.tokens.KeyValueToken.value.? Self%&. Self%& Key&. Key& Value&. Value& other!)
   ))
   :pattern ((ens%vstd.tokens.KeyValueToken.agree. Self%&. Self%& Key&. Key& Value&. Value&
     self! other!
   ))
   :qid internal_ens__vstd.tokens.KeyValueToken.agree._definition
   :skolemid skolem_internal_ens__vstd.tokens.KeyValueToken.agree._definition
)))

;; Function-Specs crate::vstd::tokens::KeyValueToken::arbitrary
(declare-fun ens%vstd.tokens.KeyValueToken.arbitrary. (Dcr Type Dcr Type Dcr Type Poly)
 Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type)
   (%return! Poly)
  ) (!
   (= (ens%vstd.tokens.KeyValueToken.arbitrary. Self%&. Self%& Key&. Key& Value&. Value&
     %return!
    ) (has_type %return! Self%&)
   )
   :pattern ((ens%vstd.tokens.KeyValueToken.arbitrary. Self%&. Self%& Key&. Key& Value&.
     Value& %return!
   ))
   :qid internal_ens__vstd.tokens.KeyValueToken.arbitrary._definition
   :skolemid skolem_internal_ens__vstd.tokens.KeyValueToken.arbitrary._definition
)))

;; Function-Specs crate::vstd::tokens::UniqueKeyValueToken::unique
(declare-fun ens%vstd.tokens.UniqueKeyValueToken.unique. (Dcr Type Dcr Type Dcr Type
  Poly Poly Poly
 ) Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type)
   (pre%self! Poly) (self! Poly) (other! Poly)
  ) (!
   (= (ens%vstd.tokens.UniqueKeyValueToken.unique. Self%&. Self%& Key&. Key& Value&. Value&
     pre%self! self! other!
    ) (and
     (has_type self! Self%&)
     (or
      (not (= (vstd.tokens.KeyValueToken.instance_id.? Self%&. Self%& Key&. Key& Value&. Value&
         self!
        ) (vstd.tokens.KeyValueToken.instance_id.? Self%&. Self%& Key&. Key& Value&. Value&
         other!
      )))
      (not (= (vstd.tokens.KeyValueToken.key.? Self%&. Self%& Key&. Key& Value&. Value& self!)
        (vstd.tokens.KeyValueToken.key.? Self%&. Self%& Key&. Key& Value&. Value& other!)
     )))
     (= self! pre%self!)
   ))
   :pattern ((ens%vstd.tokens.UniqueKeyValueToken.unique. Self%&. Self%& Key&. Key& Value&.
     Value& pre%self! self! other!
   ))
   :qid internal_ens__vstd.tokens.UniqueKeyValueToken.unique._definition
   :skolemid skolem_internal_ens__vstd.tokens.UniqueKeyValueToken.unique._definition
)))

;; Function-Axioms crate::vstd::tokens::ElementToken::instance_id
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Element&. Dcr) (Element& Type) (self! Poly))
  (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.tokens.ElementToken.instance_id.? Self%&. Self%& Element&. Element&
      self!
     ) TYPE%vstd.tokens.InstanceId.
   ))
   :pattern ((vstd.tokens.ElementToken.instance_id.? Self%&. Self%& Element&. Element&
     self!
   ))
   :qid internal_vstd.tokens.ElementToken.instance_id.?_pre_post_definition
   :skolemid skolem_internal_vstd.tokens.ElementToken.instance_id.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::tokens::ElementToken::element
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Element&. Dcr) (Element& Type) (self! Poly))
  (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.tokens.ElementToken.element.? Self%&. Self%& Element&. Element& self!)
     Element&
   ))
   :pattern ((vstd.tokens.ElementToken.element.? Self%&. Self%& Element&. Element& self!))
   :qid internal_vstd.tokens.ElementToken.element.?_pre_post_definition
   :skolemid skolem_internal_vstd.tokens.ElementToken.element.?_pre_post_definition
)))

;; Function-Specs crate::vstd::tokens::ElementToken::arbitrary
(declare-fun ens%vstd.tokens.ElementToken.arbitrary. (Dcr Type Dcr Type Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Element&. Dcr) (Element& Type) (%return! Poly))
  (!
   (= (ens%vstd.tokens.ElementToken.arbitrary. Self%&. Self%& Element&. Element& %return!)
    (has_type %return! Self%&)
   )
   :pattern ((ens%vstd.tokens.ElementToken.arbitrary. Self%&. Self%& Element&. Element&
     %return!
   ))
   :qid internal_ens__vstd.tokens.ElementToken.arbitrary._definition
   :skolemid skolem_internal_ens__vstd.tokens.ElementToken.arbitrary._definition
)))

;; Function-Specs crate::vstd::tokens::UniqueElementToken::unique
(declare-fun ens%vstd.tokens.UniqueElementToken.unique. (Dcr Type Dcr Type Poly Poly
  Poly
 ) Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (Element&. Dcr) (Element& Type) (pre%self! Poly)
   (self! Poly) (other! Poly)
  ) (!
   (= (ens%vstd.tokens.UniqueElementToken.unique. Self%&. Self%& Element&. Element& pre%self!
     self! other!
    ) (and
     (has_type self! Self%&)
     (=>
      (= (vstd.tokens.ElementToken.instance_id.? Self%&. Self%& Element&. Element& self!)
       (vstd.tokens.ElementToken.instance_id.? Self%&. Self%& Element&. Element& other!)
      )
      (not (= (vstd.tokens.ElementToken.element.? Self%&. Self%& Element&. Element& self!)
        (vstd.tokens.ElementToken.element.? Self%&. Self%& Element&. Element& other!)
     )))
     (= self! pre%self!)
   ))
   :pattern ((ens%vstd.tokens.UniqueElementToken.unique. Self%&. Self%& Element&. Element&
     pre%self! self! other!
   ))
   :qid internal_ens__vstd.tokens.UniqueElementToken.unique._definition
   :skolemid skolem_internal_ens__vstd.tokens.UniqueElementToken.unique._definition
)))

;; Function-Axioms crate::vstd::tokens::SimpleToken::instance_id
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.tokens.SimpleToken.instance_id.? Self%&. Self%& self!) TYPE%vstd.tokens.InstanceId.)
   )
   :pattern ((vstd.tokens.SimpleToken.instance_id.? Self%&. Self%& self!))
   :qid internal_vstd.tokens.SimpleToken.instance_id.?_pre_post_definition
   :skolemid skolem_internal_vstd.tokens.SimpleToken.instance_id.?_pre_post_definition
)))

;; Function-Specs crate::vstd::tokens::SimpleToken::arbitrary
(declare-fun ens%vstd.tokens.SimpleToken.arbitrary. (Dcr Type Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (%return! Poly)) (!
   (= (ens%vstd.tokens.SimpleToken.arbitrary. Self%&. Self%& %return!) (has_type %return!
     Self%&
   ))
   :pattern ((ens%vstd.tokens.SimpleToken.arbitrary. Self%&. Self%& %return!))
   :qid internal_ens__vstd.tokens.SimpleToken.arbitrary._definition
   :skolemid skolem_internal_ens__vstd.tokens.SimpleToken.arbitrary._definition
)))

;; Function-Specs crate::vstd::tokens::UniqueSimpleToken::unique
(declare-fun ens%vstd.tokens.UniqueSimpleToken.unique. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (pre%self! Poly) (self! Poly) (other! Poly))
  (!
   (= (ens%vstd.tokens.UniqueSimpleToken.unique. Self%&. Self%& pre%self! self! other!)
    (and
     (has_type self! Self%&)
     (not (= (vstd.tokens.SimpleToken.instance_id.? Self%&. Self%& self!) (vstd.tokens.SimpleToken.instance_id.?
        Self%&. Self%& other!
     )))
     (= self! pre%self!)
   ))
   :pattern ((ens%vstd.tokens.UniqueSimpleToken.unique. Self%&. Self%& pre%self! self!
     other!
   ))
   :qid internal_ens__vstd.tokens.UniqueSimpleToken.unique._definition
   :skolemid skolem_internal_ens__vstd.tokens.UniqueSimpleToken.unique._definition
)))

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

;; Function-Axioms crate::vstd::std_specs::option::is_none
(assert
 (fuel_bool_default fuel%vstd.std_specs.option.is_none.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.option.is_none.)
  (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
    (= (vstd.std_specs.option.is_none.? T&. T& option!) (is-core!option.Option./None (%Poly%core!option.Option.
       option!
    )))
    :pattern ((vstd.std_specs.option.is_none.? T&. T& option!))
    :qid internal_vstd.std_specs.option.is_none.?_definition
    :skolemid skolem_internal_vstd.std_specs.option.is_none.?_definition
))))

;; Function-Axioms crate::vstd::std_specs::option::is_some
(assert
 (fuel_bool_default fuel%vstd.std_specs.option.is_some.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.std_specs.option.is_some.)
  (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
    (= (vstd.std_specs.option.is_some.? T&. T& option!) (is-core!option.Option./Some (%Poly%core!option.Option.
       option!
    )))
    :pattern ((vstd.std_specs.option.is_some.? T&. T& option!))
    :qid internal_vstd.std_specs.option.is_some.?_definition
    :skolemid skolem_internal_vstd.std_specs.option.is_some.?_definition
))))

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
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (option! Poly)) (!
   (= (req%vstd.std_specs.option.spec_unwrap. T&. T& option!) (=>
     %%global_location_label%%5
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

;; Function-Specs crate::vstd::map::Map::tracked_empty
(declare-fun ens%vstd.map.impl&%0.tracked_empty. (Dcr Type Dcr Type Poly) Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (out_v! Poly)) (!
   (= (ens%vstd.map.impl&%0.tracked_empty. K&. K& V&. V& out_v!) (and
     (has_type out_v! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (= out_v! (vstd.map.impl&%0.empty.? K&. K& V&. V&))
   ))
   :pattern ((ens%vstd.map.impl&%0.tracked_empty. K&. K& V&. V& out_v!))
   :qid internal_ens__vstd.map.impl&__0.tracked_empty._definition
   :skolemid skolem_internal_ens__vstd.map.impl&__0.tracked_empty._definition
)))

;; Function-Specs crate::vstd::map::Map::tracked_insert
(declare-fun ens%vstd.map.impl&%0.tracked_insert. (Dcr Type Dcr Type Poly Poly Poly
  Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (pre%self! Poly) (self! Poly) (key!
    Poly
   ) (value! Poly)
  ) (!
   (= (ens%vstd.map.impl&%0.tracked_insert. K&. K& V&. V& pre%self! self! key! value!)
    (and
     (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (= self! (vstd.map.impl&%0.insert.? K&. K& V&. V& pre%self! key! value!))
   ))
   :pattern ((ens%vstd.map.impl&%0.tracked_insert. K&. K& V&. V& pre%self! self! key!
     value!
   ))
   :qid internal_ens__vstd.map.impl&__0.tracked_insert._definition
   :skolemid skolem_internal_ens__vstd.map.impl&__0.tracked_insert._definition
)))

;; Function-Specs crate::vstd::map::Map::tracked_remove
(declare-fun req%vstd.map.impl&%0.tracked_remove. (Dcr Type Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (pre%self! Poly) (key! Poly)) (!
   (= (req%vstd.map.impl&%0.tracked_remove. K&. K& V&. V& pre%self! key!) (=>
     %%global_location_label%%6
     (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& pre%self!)
      key!
   )))
   :pattern ((req%vstd.map.impl&%0.tracked_remove. K&. K& V&. V& pre%self! key!))
   :qid internal_req__vstd.map.impl&__0.tracked_remove._definition
   :skolemid skolem_internal_req__vstd.map.impl&__0.tracked_remove._definition
)))
(declare-fun ens%vstd.map.impl&%0.tracked_remove. (Dcr Type Dcr Type Poly Poly Poly
  Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (pre%self! Poly) (self! Poly) (key!
    Poly
   ) (v! Poly)
  ) (!
   (= (ens%vstd.map.impl&%0.tracked_remove. K&. K& V&. V& pre%self! self! key! v!) (and
     (has_type v! V&)
     (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (= self! (vstd.map.impl&%0.remove.? K&. K& V&. V& pre%self! key!))
     (= v! (vstd.map.impl&%0.index.? K&. K& V&. V& pre%self! key!))
   ))
   :pattern ((ens%vstd.map.impl&%0.tracked_remove. K&. K& V&. V& pre%self! self! key!
     v!
   ))
   :qid internal_ens__vstd.map.impl&__0.tracked_remove._definition
   :skolemid skolem_internal_ens__vstd.map.impl&__0.tracked_remove._definition
)))

;; Function-Axioms crate::vstd::map::Map::new
(assert
 (fuel_bool_default fuel%vstd.map.impl&%0.new.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.map.impl&%0.new.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (impl%2&. Dcr) (impl%2& Type) (impl%3&.
     Dcr
    ) (impl%3& Type) (fk! Poly) (fv! Poly)
   ) (!
    (= (vstd.map.impl&%0.new.? K&. K& V&. V& impl%2&. impl%2& impl%3&. impl%3& fk! fv!)
     (vstd.set.impl&%0.mk_map.? K&. K& V&. V& impl%3&. impl%3& (vstd.set.impl&%0.new.? K&.
       K& impl%2&. impl%2& fk!
      ) fv!
    ))
    :pattern ((vstd.map.impl&%0.new.? K&. K& V&. V& impl%2&. impl%2& impl%3&. impl%3& fk!
      fv!
    ))
    :qid internal_vstd.map.impl&__0.new.?_definition
    :skolemid skolem_internal_vstd.map.impl&__0.new.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (impl%2&. Dcr) (impl%2& Type) (impl%3&.
    Dcr
   ) (impl%3& Type) (fk! Poly) (fv! Poly)
  ) (!
   (=>
    (and
     (has_type fk! impl%2&)
     (has_type fv! impl%3&)
    )
    (has_type (vstd.map.impl&%0.new.? K&. K& V&. V& impl%2&. impl%2& impl%3&. impl%3& fk!
      fv!
     ) (TYPE%vstd.map.Map. K&. K& V&. V&)
   ))
   :pattern ((vstd.map.impl&%0.new.? K&. K& V&. V& impl%2&. impl%2& impl%3&. impl%3& fk!
     fv!
   ))
   :qid internal_vstd.map.impl&__0.new.?_pre_post_definition
   :skolemid skolem_internal_vstd.map.impl&__0.new.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::pervasive::arbitrary
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (has_type (vstd.pervasive.arbitrary.? A&. A&) A&)
   :pattern ((vstd.pervasive.arbitrary.? A&. A&))
   :qid internal_vstd.pervasive.arbitrary.?_pre_post_definition
   :skolemid skolem_internal_vstd.pervasive.arbitrary.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::tokens::CountToken::instance_id
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.tokens.CountToken.instance_id.? Self%&. Self%& self!) TYPE%vstd.tokens.InstanceId.)
   )
   :pattern ((vstd.tokens.CountToken.instance_id.? Self%&. Self%& self!))
   :qid internal_vstd.tokens.CountToken.instance_id.?_pre_post_definition
   :skolemid skolem_internal_vstd.tokens.CountToken.instance_id.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::tokens::CountToken::count
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.tokens.CountToken.count.? Self%&. Self%& self!) NAT)
   )
   :pattern ((vstd.tokens.CountToken.count.? Self%&. Self%& self!))
   :qid internal_vstd.tokens.CountToken.count.?_pre_post_definition
   :skolemid skolem_internal_vstd.tokens.CountToken.count.?_pre_post_definition
)))

;; Function-Specs crate::vstd::tokens::CountToken::join
(declare-fun req%vstd.tokens.CountToken.join. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%7 Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (pre%self! Poly) (other! Poly)) (!
   (= (req%vstd.tokens.CountToken.join. Self%&. Self%& pre%self! other!) (=>
     %%global_location_label%%7
     (= (vstd.tokens.CountToken.instance_id.? Self%&. Self%& pre%self!) (vstd.tokens.CountToken.instance_id.?
       Self%&. Self%& other!
   ))))
   :pattern ((req%vstd.tokens.CountToken.join. Self%&. Self%& pre%self! other!))
   :qid internal_req__vstd.tokens.CountToken.join._definition
   :skolemid skolem_internal_req__vstd.tokens.CountToken.join._definition
)))
(declare-fun ens%vstd.tokens.CountToken.join. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (pre%self! Poly) (self! Poly) (other! Poly))
  (!
   (= (ens%vstd.tokens.CountToken.join. Self%&. Self%& pre%self! self! other!) (and
     (has_type self! Self%&)
     (= (vstd.tokens.CountToken.instance_id.? Self%&. Self%& self!) (vstd.tokens.CountToken.instance_id.?
       Self%&. Self%& pre%self!
     ))
     (= (%I (vstd.tokens.CountToken.count.? Self%&. Self%& self!)) (nClip (Add (%I (vstd.tokens.CountToken.count.?
          Self%&. Self%& pre%self!
         )
        ) (%I (vstd.tokens.CountToken.count.? Self%&. Self%& other!))
   )))))
   :pattern ((ens%vstd.tokens.CountToken.join. Self%&. Self%& pre%self! self! other!))
   :qid internal_ens__vstd.tokens.CountToken.join._definition
   :skolemid skolem_internal_ens__vstd.tokens.CountToken.join._definition
)))

;; Function-Specs crate::vstd::tokens::CountToken::split
(declare-fun req%vstd.tokens.CountToken.split. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (pre%self! Poly) (count! Poly)) (!
   (= (req%vstd.tokens.CountToken.split. Self%&. Self%& pre%self! count!) (=>
     %%global_location_label%%8
     (<= (%I count!) (%I (vstd.tokens.CountToken.count.? Self%&. Self%& pre%self!)))
   ))
   :pattern ((req%vstd.tokens.CountToken.split. Self%&. Self%& pre%self! count!))
   :qid internal_req__vstd.tokens.CountToken.split._definition
   :skolemid skolem_internal_req__vstd.tokens.CountToken.split._definition
)))
(declare-fun ens%vstd.tokens.CountToken.split. (Dcr Type Poly Poly Poly Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (pre%self! Poly) (self! Poly) (count! Poly) (token!
    Poly
   )
  ) (!
   (= (ens%vstd.tokens.CountToken.split. Self%&. Self%& pre%self! self! count! token!)
    (and
     (has_type token! Self%&)
     (has_type self! Self%&)
     (= (vstd.tokens.CountToken.instance_id.? Self%&. Self%& self!) (vstd.tokens.CountToken.instance_id.?
       Self%&. Self%& pre%self!
     ))
     (= (%I (vstd.tokens.CountToken.count.? Self%&. Self%& self!)) (Sub (%I (vstd.tokens.CountToken.count.?
         Self%&. Self%& pre%self!
        )
       ) (%I count!)
     ))
     (= (vstd.tokens.CountToken.instance_id.? Self%&. Self%& token!) (vstd.tokens.CountToken.instance_id.?
       Self%&. Self%& pre%self!
     ))
     (= (vstd.tokens.CountToken.count.? Self%&. Self%& token!) count!)
   ))
   :pattern ((ens%vstd.tokens.CountToken.split. Self%&. Self%& pre%self! self! count!
     token!
   ))
   :qid internal_ens__vstd.tokens.CountToken.split._definition
   :skolemid skolem_internal_ens__vstd.tokens.CountToken.split._definition
)))

;; Function-Specs crate::vstd::tokens::CountToken::weaken_shared
(declare-fun req%vstd.tokens.CountToken.weaken_shared. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%9 Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (count! Poly)) (!
   (= (req%vstd.tokens.CountToken.weaken_shared. Self%&. Self%& self! count!) (=>
     %%global_location_label%%9
     (<= (%I count!) (%I (vstd.tokens.CountToken.count.? Self%&. Self%& self!)))
   ))
   :pattern ((req%vstd.tokens.CountToken.weaken_shared. Self%&. Self%& self! count!))
   :qid internal_req__vstd.tokens.CountToken.weaken_shared._definition
   :skolemid skolem_internal_req__vstd.tokens.CountToken.weaken_shared._definition
)))
(declare-fun ens%vstd.tokens.CountToken.weaken_shared. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (count! Poly) (s! Poly)) (!
   (= (ens%vstd.tokens.CountToken.weaken_shared. Self%&. Self%& self! count! s!) (and
     (has_type s! Self%&)
     (= (vstd.tokens.CountToken.instance_id.? Self%&. Self%& s!) (vstd.tokens.CountToken.instance_id.?
       Self%&. Self%& self!
     ))
     (= (vstd.tokens.CountToken.count.? Self%&. Self%& s!) count!)
   ))
   :pattern ((ens%vstd.tokens.CountToken.weaken_shared. Self%&. Self%& self! count! s!))
   :qid internal_ens__vstd.tokens.CountToken.weaken_shared._definition
   :skolemid skolem_internal_ens__vstd.tokens.CountToken.weaken_shared._definition
)))

;; Function-Specs crate::vstd::tokens::CountToken::arbitrary
(declare-fun ens%vstd.tokens.CountToken.arbitrary. (Dcr Type Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (%return! Poly)) (!
   (= (ens%vstd.tokens.CountToken.arbitrary. Self%&. Self%& %return!) (has_type %return!
     Self%&
   ))
   :pattern ((ens%vstd.tokens.CountToken.arbitrary. Self%&. Self%& %return!))
   :qid internal_ens__vstd.tokens.CountToken.arbitrary._definition
   :skolemid skolem_internal_ens__vstd.tokens.CountToken.arbitrary._definition
)))

;; Function-Axioms crate::vstd::tokens::MonotonicCountToken::instance_id
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.tokens.MonotonicCountToken.instance_id.? Self%&. Self%& self!) TYPE%vstd.tokens.InstanceId.)
   )
   :pattern ((vstd.tokens.MonotonicCountToken.instance_id.? Self%&. Self%& self!))
   :qid internal_vstd.tokens.MonotonicCountToken.instance_id.?_pre_post_definition
   :skolemid skolem_internal_vstd.tokens.MonotonicCountToken.instance_id.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::tokens::MonotonicCountToken::count
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly)) (!
   (=>
    (has_type self! Self%&)
    (has_type (vstd.tokens.MonotonicCountToken.count.? Self%&. Self%& self!) NAT)
   )
   :pattern ((vstd.tokens.MonotonicCountToken.count.? Self%&. Self%& self!))
   :qid internal_vstd.tokens.MonotonicCountToken.count.?_pre_post_definition
   :skolemid skolem_internal_vstd.tokens.MonotonicCountToken.count.?_pre_post_definition
)))

;; Function-Specs crate::vstd::tokens::MonotonicCountToken::weaken
(declare-fun req%vstd.tokens.MonotonicCountToken.weaken. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%10 Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (count! Poly)) (!
   (= (req%vstd.tokens.MonotonicCountToken.weaken. Self%&. Self%& self! count!) (=>
     %%global_location_label%%10
     (<= (%I count!) (%I (vstd.tokens.MonotonicCountToken.count.? Self%&. Self%& self!)))
   ))
   :pattern ((req%vstd.tokens.MonotonicCountToken.weaken. Self%&. Self%& self! count!))
   :qid internal_req__vstd.tokens.MonotonicCountToken.weaken._definition
   :skolemid skolem_internal_req__vstd.tokens.MonotonicCountToken.weaken._definition
)))
(declare-fun ens%vstd.tokens.MonotonicCountToken.weaken. (Dcr Type Poly Poly Poly)
 Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (self! Poly) (count! Poly) (s! Poly)) (!
   (= (ens%vstd.tokens.MonotonicCountToken.weaken. Self%&. Self%& self! count! s!) (and
     (has_type s! Self%&)
     (= (vstd.tokens.MonotonicCountToken.instance_id.? Self%&. Self%& s!) (vstd.tokens.MonotonicCountToken.instance_id.?
       Self%&. Self%& self!
     ))
     (= (vstd.tokens.MonotonicCountToken.count.? Self%&. Self%& s!) count!)
   ))
   :pattern ((ens%vstd.tokens.MonotonicCountToken.weaken. Self%&. Self%& self! count!
     s!
   ))
   :qid internal_ens__vstd.tokens.MonotonicCountToken.weaken._definition
   :skolemid skolem_internal_ens__vstd.tokens.MonotonicCountToken.weaken._definition
)))

;; Function-Specs crate::vstd::tokens::MonotonicCountToken::arbitrary
(declare-fun ens%vstd.tokens.MonotonicCountToken.arbitrary. (Dcr Type Poly) Bool)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (%return! Poly)) (!
   (= (ens%vstd.tokens.MonotonicCountToken.arbitrary. Self%&. Self%& %return!) (has_type
     %return! Self%&
   ))
   :pattern ((ens%vstd.tokens.MonotonicCountToken.arbitrary. Self%&. Self%& %return!))
   :qid internal_ens__vstd.tokens.MonotonicCountToken.arbitrary._definition
   :skolemid skolem_internal_ens__vstd.tokens.MonotonicCountToken.arbitrary._definition
)))

;; Function-Axioms crate::vstd::map::Map::contains_key
(assert
 (fuel_bool_default fuel%vstd.map_lib.impl&%0.contains_key.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.map_lib.impl&%0.contains_key.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (k! Poly)) (!
    (= (vstd.map_lib.impl&%0.contains_key.? K&. K& V&. V& self! k!) (vstd.set.impl&%0.contains.?
      K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) k!
    ))
    :pattern ((vstd.map_lib.impl&%0.contains_key.? K&. K& V&. V& self! k!))
    :qid internal_vstd.map_lib.impl&__0.contains_key.?_definition
    :skolemid skolem_internal_vstd.map_lib.impl&__0.contains_key.?_definition
))))

;; Function-Axioms crate::vstd::map::Map::map_values
(assert
 (fuel_bool_default fuel%vstd.map_lib.impl&%0.map_values.)
)
(declare-fun %%lambda%%0 (Dcr Type Poly) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (k$ Poly)) (!
   (= (%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2) k$) (B (vstd.set.impl&%0.contains.?
      %%hole%%0 %%hole%%1 %%hole%%2 k$
   )))
   :pattern ((%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2) k$))
)))
(declare-fun %%lambda%%1 (Dcr Type Dcr Type Poly %%Function%%) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Dcr) (%%hole%%3 Type) (%%hole%%4
    Poly
   ) (%%hole%%5 %%Function%%) (k$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5)
     k$
    ) (%%apply%%0 %%hole%%5 (vstd.map.impl&%0.index.? %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3
      %%hole%%4 k$
   )))
   :pattern ((%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      %%hole%%5
     ) k$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.map_lib.impl&%0.map_values.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (W&. Dcr) (W& Type) (self! Poly) (
     f! Poly
    )
   ) (!
    (= (vstd.map_lib.impl&%0.map_values.? K&. K& V&. V& W&. W& self! f!) (vstd.map.impl&%0.new.?
      K&. K& W&. W& $ (TYPE%fun%1. K&. K& $ BOOL) $ (TYPE%fun%1. K&. K& W&. W&) (Poly%fun%1.
       (mk_fun (%%lambda%%0 K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!)))
      ) (Poly%fun%1. (mk_fun (%%lambda%%1 K&. K& V&. V& self! (%Poly%fun%1. f!))))
    ))
    :pattern ((vstd.map_lib.impl&%0.map_values.? K&. K& V&. V& W&. W& self! f!))
    :qid internal_vstd.map_lib.impl&__0.map_values.?_definition
    :skolemid skolem_internal_vstd.map_lib.impl&__0.map_values.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (W&. Dcr) (W& Type) (self! Poly) (
    f! Poly
   )
  ) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (has_type f! (TYPE%fun%1. V&. V& W&. W&))
    )
    (has_type (vstd.map_lib.impl&%0.map_values.? K&. K& V&. V& W&. W& self! f!) (TYPE%vstd.map.Map.
      K&. K& W&. W&
   )))
   :pattern ((vstd.map_lib.impl&%0.map_values.? K&. K& V&. V& W&. W& self! f!))
   :qid internal_vstd.map_lib.impl&__0.map_values.?_pre_post_definition
   :skolemid skolem_internal_vstd.map_lib.impl&__0.map_values.?_pre_post_definition
)))

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
       :qid user_crate__vstd__relations__reflexive_34
       :skolemid skolem_user_crate__vstd__relations__reflexive_34
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
       :qid user_crate__vstd__relations__antisymmetric_35
       :skolemid skolem_user_crate__vstd__relations__antisymmetric_35
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
       :qid user_crate__vstd__relations__transitive_36
       :skolemid skolem_user_crate__vstd__relations__transitive_36
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
       :qid user_crate__vstd__relations__strongly_connected_37
       :skolemid skolem_user_crate__vstd__relations__strongly_connected_37
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

;; Function-Axioms crate::vstd::set::Set::fold
(assert
 (fuel_bool_default fuel%vstd.set_lib.impl&%0.fold.)
)
(declare-const fuel_nat%vstd.set_lib.impl&%0.fold. Fuel)
(assert
 (forall ((A&. Dcr) (A& Type) (E&. Dcr) (E& Type) (self! Poly) (init! Poly) (f! Poly)
   (fuel% Fuel)
  ) (!
   (= (vstd.set_lib.impl&%0.rec%fold.? A&. A& E&. E& self! init! f! fuel%) (vstd.set_lib.impl&%0.rec%fold.?
     A&. A& E&. E& self! init! f! zero
   ))
   :pattern ((vstd.set_lib.impl&%0.rec%fold.? A&. A& E&. E& self! init! f! fuel%))
   :qid internal_vstd.set_lib.impl&__0.fold._fuel_to_zero_definition
   :skolemid skolem_internal_vstd.set_lib.impl&__0.fold._fuel_to_zero_definition
)))
(assert
 (forall ((A&. Dcr) (A& Type) (E&. Dcr) (E& Type) (self! Poly) (init! Poly) (f! Poly)
   (fuel% Fuel)
  ) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type init! E&)
     (has_type f! (TYPE%fun%2. E&. E& A&. A& E&. E&))
    )
    (= (vstd.set_lib.impl&%0.rec%fold.? A&. A& E&. E& self! init! f! (succ fuel%)) (ite
      (vstd.set.impl&%0.finite.? A&. A& self!)
      (ite
       (= (vstd.set.impl&%0.len.? A&. A& self!) 0)
       init!
       (let
        ((a$ (vstd.set.impl&%0.choose.? A&. A& self!)))
        (vstd.set_lib.impl&%0.rec%fold.? A&. A& E&. E& (vstd.set.impl&%0.remove.? A&. A& self!
          a$
         ) (%%apply%%1 (%Poly%fun%2. f!) init! a$) f! fuel%
      )))
      (vstd.pervasive.arbitrary.? E&. E&)
   )))
   :pattern ((vstd.set_lib.impl&%0.rec%fold.? A&. A& E&. E& self! init! f! (succ fuel%)))
   :qid internal_vstd.set_lib.impl&__0.fold._fuel_to_body_definition
   :skolemid skolem_internal_vstd.set_lib.impl&__0.fold._fuel_to_body_definition
)))
(assert
 (=>
  (fuel_bool fuel%vstd.set_lib.impl&%0.fold.)
  (forall ((A&. Dcr) (A& Type) (E&. Dcr) (E& Type) (self! Poly) (init! Poly) (f! Poly))
   (!
    (=>
     (and
      (has_type self! (TYPE%vstd.set.Set. A&. A&))
      (has_type init! E&)
      (has_type f! (TYPE%fun%2. E&. E& A&. A& E&. E&))
     )
     (= (vstd.set_lib.impl&%0.fold.? A&. A& E&. E& self! init! f!) (vstd.set_lib.impl&%0.rec%fold.?
       A&. A& E&. E& self! init! f! (succ fuel_nat%vstd.set_lib.impl&%0.fold.)
    )))
    :pattern ((vstd.set_lib.impl&%0.fold.? A&. A& E&. E& self! init! f!))
    :qid internal_vstd.set_lib.impl&__0.fold.?_definition
    :skolemid skolem_internal_vstd.set_lib.impl&__0.fold.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type) (E&. Dcr) (E& Type) (self! Poly) (init! Poly) (f! Poly))
  (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type init! E&)
     (has_type f! (TYPE%fun%2. E&. E& A&. A& E&. E&))
    )
    (has_type (vstd.set_lib.impl&%0.fold.? A&. A& E&. E& self! init! f!) E&)
   )
   :pattern ((vstd.set_lib.impl&%0.fold.? A&. A& E&. E& self! init! f!))
   :qid internal_vstd.set_lib.impl&__0.fold.?_pre_post_definition
   :skolemid skolem_internal_vstd.set_lib.impl&__0.fold.?_pre_post_definition
)))

;; Function-Specs crate::vstd::set::Set::find_unique_maximal
(declare-fun req%vstd.set_lib.impl&%0.find_unique_maximal. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%11 Bool)
(declare-const %%global_location_label%%12 Bool)
(declare-const %%global_location_label%%13 Bool)
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! Poly)) (!
   (= (req%vstd.set_lib.impl&%0.find_unique_maximal. A&. A& self! r!) (and
     (=>
      %%global_location_label%%11
      (vstd.relations.total_ordering.? A&. A& r!)
     )
     (=>
      %%global_location_label%%12
      (> (vstd.set.impl&%0.len.? A&. A& self!) 0)
     )
     (=>
      %%global_location_label%%13
      (vstd.set.impl&%0.finite.? A&. A& self!)
   )))
   :pattern ((req%vstd.set_lib.impl&%0.find_unique_maximal. A&. A& self! r!))
   :qid internal_req__vstd.set_lib.impl&__0.find_unique_maximal._definition
   :skolemid skolem_internal_req__vstd.set_lib.impl&__0.find_unique_maximal._definition
)))

;; Function-Axioms crate::vstd::set::Set::find_unique_maximal
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly) (r! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.set.Set. A&. A&))
     (has_type r! (TYPE%fun%2. A&. A& A&. A& $ BOOL))
    )
    (has_type (vstd.set_lib.impl&%0.find_unique_maximal.? A&. A& self! r!) A&)
   )
   :pattern ((vstd.set_lib.impl&%0.find_unique_maximal.? A&. A& self! r!))
   :qid internal_vstd.set_lib.impl&__0.find_unique_maximal.?_pre_post_definition
   :skolemid skolem_internal_vstd.set_lib.impl&__0.find_unique_maximal.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::tokens::MapToken::wf
(assert
 (fuel_bool_default fuel%vstd.tokens.impl&%0.wf.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.tokens.impl&%0.wf.)
  (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type)
    (self! Poly)
   ) (!
    (= (vstd.tokens.impl&%0.wf.? Key&. Key& Value&. Value& Token&. Token& self!) (forall
      ((k$ Poly)) (!
       (=>
        (has_type k$ Key&)
        (=>
         (vstd.set.impl&%0.contains.? Key&. Key& (vstd.map.impl&%0.dom.? Key&. Key& Token&.
           Token& (vstd.tokens.MapToken./MapToken/m (%Poly%vstd.tokens.MapToken. self!))
          ) k$
         )
         (and
          (= (vstd.tokens.KeyValueToken.key.? Token&. Token& Key&. Key& Value&. Value& (vstd.map.impl&%0.index.?
             Key&. Key& Token&. Token& (vstd.tokens.MapToken./MapToken/m (%Poly%vstd.tokens.MapToken.
               self!
              )
             ) k$
            )
           ) k$
          )
          (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.KeyValueToken.instance_id.? Token&. Token&
             Key&. Key& Value&. Value& (vstd.map.impl&%0.index.? Key&. Key& Token&. Token& (vstd.tokens.MapToken./MapToken/m
               (%Poly%vstd.tokens.MapToken. self!)
              ) k$
            ))
           ) (vstd.tokens.MapToken./MapToken/inst (%Poly%vstd.tokens.MapToken. self!))
       ))))
       :pattern ((vstd.set.impl&%0.contains.? Key&. Key& (vstd.map.impl&%0.dom.? Key&. Key&
          Token&. Token& (vstd.tokens.MapToken./MapToken/m (%Poly%vstd.tokens.MapToken. self!))
         ) k$
       ))
       :qid user_crate__vstd__tokens__MapToken__wf_38
       :skolemid skolem_user_crate__vstd__tokens__MapToken__wf_38
    )))
    :pattern ((vstd.tokens.impl&%0.wf.? Key&. Key& Value&. Value& Token&. Token& self!))
    :qid internal_vstd.tokens.impl&__0.wf.?_definition
    :skolemid skolem_internal_vstd.tokens.impl&__0.wf.?_definition
))))

;; Function-Axioms crate::vstd::tokens::MapToken::instance_id
(assert
 (fuel_bool_default fuel%vstd.tokens.impl&%0.instance_id.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.tokens.impl&%0.instance_id.)
  (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type)
    (self! Poly)
   ) (!
    (= (vstd.tokens.impl&%0.instance_id.? Key&. Key& Value&. Value& Token&. Token& self!)
     (vstd.tokens.MapToken./MapToken/inst (%Poly%vstd.tokens.MapToken. self!))
    )
    :pattern ((vstd.tokens.impl&%0.instance_id.? Key&. Key& Value&. Value& Token&. Token&
      self!
    ))
    :qid internal_vstd.tokens.impl&__0.instance_id.?_definition
    :skolemid skolem_internal_vstd.tokens.impl&__0.instance_id.?_definition
))))

;; Function-Axioms crate::vstd::tokens::MapToken::map
(assert
 (fuel_bool_default fuel%vstd.tokens.impl&%0.map.)
)
(declare-fun %%lambda%%2 (Dcr Type Dcr Type Poly Dcr Type Dcr Type Dcr Type) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Dcr) (%%hole%%3 Type) (%%hole%%4
    Poly
   ) (%%hole%%5 Dcr) (%%hole%%6 Type) (%%hole%%7 Dcr) (%%hole%%8 Type) (%%hole%%9 Dcr)
   (%%hole%%10 Type) (k$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%2 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
      %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10
     ) k$
    ) (vstd.tokens.KeyValueToken.value.? %%hole%%5 %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9
     %%hole%%10 (vstd.map.impl&%0.index.? %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      k$
   )))
   :pattern ((%%apply%%0 (%%lambda%%2 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      %%hole%%5 %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10
     ) k$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.tokens.impl&%0.map.)
  (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type)
    (self! Poly)
   ) (!
    (= (vstd.tokens.impl&%0.map.? Key&. Key& Value&. Value& Token&. Token& self!) (vstd.map.impl&%0.new.?
      Key&. Key& Value&. Value& $ (TYPE%fun%1. Key&. Key& $ BOOL) $ (TYPE%fun%1. Key&. Key&
       Value&. Value&
      ) (Poly%fun%1. (mk_fun (%%lambda%%0 Key&. Key& (vstd.map.impl&%0.dom.? Key&. Key& Token&.
          Token& (vstd.tokens.MapToken./MapToken/m (%Poly%vstd.tokens.MapToken. self!))
       )))
      ) (Poly%fun%1. (mk_fun (%%lambda%%2 Key&. Key& Token&. Token& (vstd.tokens.MapToken./MapToken/m
          (%Poly%vstd.tokens.MapToken. self!)
         ) Token&. Token& Key&. Key& Value&. Value&
    )))))
    :pattern ((vstd.tokens.impl&%0.map.? Key&. Key& Value&. Value& Token&. Token& self!))
    :qid internal_vstd.tokens.impl&__0.map.?_definition
    :skolemid skolem_internal_vstd.tokens.impl&__0.map.?_definition
))))
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type)
   (self! Poly)
  ) (!
   (=>
    (has_type self! (TYPE%vstd.tokens.MapToken. Key&. Key& Value&. Value& Token&. Token&))
    (has_type (vstd.tokens.impl&%0.map.? Key&. Key& Value&. Value& Token&. Token& self!)
     (TYPE%vstd.map.Map. Key&. Key& Value&. Value&)
   ))
   :pattern ((vstd.tokens.impl&%0.map.? Key&. Key& Value&. Value& Token&. Token& self!))
   :qid internal_vstd.tokens.impl&__0.map.?_pre_post_definition
   :skolemid skolem_internal_vstd.tokens.impl&__0.map.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::tokens::MapToken::dom
(assert
 (fuel_bool_default fuel%vstd.tokens.impl&%0.dom.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.tokens.impl&%0.dom.)
  (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type)
    (self! Poly)
   ) (!
    (= (vstd.tokens.impl&%0.dom.? Key&. Key& Value&. Value& Token&. Token& self!) (vstd.map.impl&%0.dom.?
      Key&. Key& Value&. Value& (vstd.tokens.impl&%0.map.? Key&. Key& Value&. Value& Token&.
       Token& self!
    )))
    :pattern ((vstd.tokens.impl&%0.dom.? Key&. Key& Value&. Value& Token&. Token& self!))
    :qid internal_vstd.tokens.impl&__0.dom.?_definition
    :skolemid skolem_internal_vstd.tokens.impl&__0.dom.?_definition
))))
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type)
   (self! Poly)
  ) (!
   (=>
    (has_type self! (TYPE%vstd.tokens.MapToken. Key&. Key& Value&. Value& Token&. Token&))
    (has_type (vstd.tokens.impl&%0.dom.? Key&. Key& Value&. Value& Token&. Token& self!)
     (TYPE%vstd.set.Set. Key&. Key&)
   ))
   :pattern ((vstd.tokens.impl&%0.dom.? Key&. Key& Value&. Value& Token&. Token& self!))
   :qid internal_vstd.tokens.impl&__0.dom.?_pre_post_definition
   :skolemid skolem_internal_vstd.tokens.impl&__0.dom.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::tokens::MapToken::spec_index
(assert
 (fuel_bool_default fuel%vstd.tokens.impl&%0.spec_index.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.tokens.impl&%0.spec_index.)
  (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type)
    (self! Poly) (k! Poly)
   ) (!
    (= (vstd.tokens.impl&%0.spec_index.? Key&. Key& Value&. Value& Token&. Token& self!
      k!
     ) (vstd.map.impl&%0.index.? Key&. Key& Value&. Value& (vstd.tokens.impl&%0.map.? Key&.
       Key& Value&. Value& Token&. Token& self!
      ) k!
    ))
    :pattern ((vstd.tokens.impl&%0.spec_index.? Key&. Key& Value&. Value& Token&. Token&
      self! k!
    ))
    :qid internal_vstd.tokens.impl&__0.spec_index.?_definition
    :skolemid skolem_internal_vstd.tokens.impl&__0.spec_index.?_definition
))))
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type)
   (self! Poly) (k! Poly)
  ) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.tokens.MapToken. Key&. Key& Value&. Value& Token&. Token&))
     (has_type k! Key&)
    )
    (has_type (vstd.tokens.impl&%0.spec_index.? Key&. Key& Value&. Value& Token&. Token&
      self! k!
     ) Value&
   ))
   :pattern ((vstd.tokens.impl&%0.spec_index.? Key&. Key& Value&. Value& Token&. Token&
     self! k!
   ))
   :qid internal_vstd.tokens.impl&__0.spec_index.?_pre_post_definition
   :skolemid skolem_internal_vstd.tokens.impl&__0.spec_index.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::tokens::MapToken::index
(assert
 (fuel_bool_default fuel%vstd.tokens.impl&%0.index.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.tokens.impl&%0.index.)
  (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type)
    (self! Poly) (k! Poly)
   ) (!
    (= (vstd.tokens.impl&%0.index.? Key&. Key& Value&. Value& Token&. Token& self! k!)
     (vstd.map.impl&%0.index.? Key&. Key& Value&. Value& (vstd.tokens.impl&%0.map.? Key&.
       Key& Value&. Value& Token&. Token& self!
      ) k!
    ))
    :pattern ((vstd.tokens.impl&%0.index.? Key&. Key& Value&. Value& Token&. Token& self!
      k!
    ))
    :qid internal_vstd.tokens.impl&__0.index.?_definition
    :skolemid skolem_internal_vstd.tokens.impl&__0.index.?_definition
))))
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type)
   (self! Poly) (k! Poly)
  ) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.tokens.MapToken. Key&. Key& Value&. Value& Token&. Token&))
     (has_type k! Key&)
    )
    (has_type (vstd.tokens.impl&%0.index.? Key&. Key& Value&. Value& Token&. Token& self!
      k!
     ) Value&
   ))
   :pattern ((vstd.tokens.impl&%0.index.? Key&. Key& Value&. Value& Token&. Token& self!
     k!
   ))
   :qid internal_vstd.tokens.impl&__0.index.?_pre_post_definition
   :skolemid skolem_internal_vstd.tokens.impl&__0.index.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::tokens::SetToken::wf
(assert
 (fuel_bool_default fuel%vstd.tokens.impl&%1.wf.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.tokens.impl&%1.wf.)
  (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (self! Poly))
   (!
    (= (vstd.tokens.impl&%1.wf.? Element&. Element& Token&. Token& self!) (forall ((k$ Poly))
      (!
       (=>
        (has_type k$ Element&)
        (=>
         (vstd.set.impl&%0.contains.? Element&. Element& (vstd.map.impl&%0.dom.? Element&. Element&
           Token&. Token& (vstd.tokens.SetToken./SetToken/m (%Poly%vstd.tokens.SetToken. self!))
          ) k$
         )
         (and
          (= (vstd.tokens.ElementToken.element.? Token&. Token& Element&. Element& (vstd.map.impl&%0.index.?
             Element&. Element& Token&. Token& (vstd.tokens.SetToken./SetToken/m (%Poly%vstd.tokens.SetToken.
               self!
              )
             ) k$
            )
           ) k$
          )
          (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? Token&. Token&
             Element&. Element& (vstd.map.impl&%0.index.? Element&. Element& Token&. Token& (vstd.tokens.SetToken./SetToken/m
               (%Poly%vstd.tokens.SetToken. self!)
              ) k$
            ))
           ) (vstd.tokens.SetToken./SetToken/inst (%Poly%vstd.tokens.SetToken. self!))
       ))))
       :pattern ((vstd.set.impl&%0.contains.? Element&. Element& (vstd.map.impl&%0.dom.? Element&.
          Element& Token&. Token& (vstd.tokens.SetToken./SetToken/m (%Poly%vstd.tokens.SetToken.
            self!
          ))
         ) k$
       ))
       :qid user_crate__vstd__tokens__SetToken__wf_39
       :skolemid skolem_user_crate__vstd__tokens__SetToken__wf_39
    )))
    :pattern ((vstd.tokens.impl&%1.wf.? Element&. Element& Token&. Token& self!))
    :qid internal_vstd.tokens.impl&__1.wf.?_definition
    :skolemid skolem_internal_vstd.tokens.impl&__1.wf.?_definition
))))

;; Function-Axioms crate::vstd::tokens::SetToken::instance_id
(assert
 (fuel_bool_default fuel%vstd.tokens.impl&%1.instance_id.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.tokens.impl&%1.instance_id.)
  (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (self! Poly))
   (!
    (= (vstd.tokens.impl&%1.instance_id.? Element&. Element& Token&. Token& self!) (vstd.tokens.SetToken./SetToken/inst
      (%Poly%vstd.tokens.SetToken. self!)
    ))
    :pattern ((vstd.tokens.impl&%1.instance_id.? Element&. Element& Token&. Token& self!))
    :qid internal_vstd.tokens.impl&__1.instance_id.?_definition
    :skolemid skolem_internal_vstd.tokens.impl&__1.instance_id.?_definition
))))

;; Function-Axioms crate::vstd::tokens::SetToken::set
(assert
 (fuel_bool_default fuel%vstd.tokens.impl&%1.set.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.tokens.impl&%1.set.)
  (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (self! Poly))
   (!
    (= (vstd.tokens.impl&%1.set.? Element&. Element& Token&. Token& self!) (vstd.set.impl&%0.new.?
      Element&. Element& $ (TYPE%fun%1. Element&. Element& $ BOOL) (Poly%fun%1. (mk_fun (
         %%lambda%%0 Element&. Element& (vstd.map.impl&%0.dom.? Element&. Element& Token&.
          Token& (vstd.tokens.SetToken./SetToken/m (%Poly%vstd.tokens.SetToken. self!))
    ))))))
    :pattern ((vstd.tokens.impl&%1.set.? Element&. Element& Token&. Token& self!))
    :qid internal_vstd.tokens.impl&__1.set.?_definition
    :skolemid skolem_internal_vstd.tokens.impl&__1.set.?_definition
))))
(assert
 (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.tokens.SetToken. Element&. Element& Token&. Token&))
    (has_type (vstd.tokens.impl&%1.set.? Element&. Element& Token&. Token& self!) (TYPE%vstd.set.Set.
      Element&. Element&
   )))
   :pattern ((vstd.tokens.impl&%1.set.? Element&. Element& Token&. Token& self!))
   :qid internal_vstd.tokens.impl&__1.set.?_pre_post_definition
   :skolemid skolem_internal_vstd.tokens.impl&__1.set.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::tokens::SetToken::contains
(assert
 (fuel_bool_default fuel%vstd.tokens.impl&%1.contains.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.tokens.impl&%1.contains.)
  (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (self! Poly) (
     element! Poly
    )
   ) (!
    (= (vstd.tokens.impl&%1.contains.? Element&. Element& Token&. Token& self! element!)
     (vstd.set.impl&%0.contains.? Element&. Element& (vstd.tokens.impl&%1.set.? Element&.
       Element& Token&. Token& self!
      ) element!
    ))
    :pattern ((vstd.tokens.impl&%1.contains.? Element&. Element& Token&. Token& self! element!))
    :qid internal_vstd.tokens.impl&__1.contains.?_definition
    :skolemid skolem_internal_vstd.tokens.impl&__1.contains.?_definition
))))

;; Function-Axioms crate::vstd::tokens::map_values
(assert
 (fuel_bool_default fuel%vstd.tokens.map_values.)
)
(declare-fun %%lambda%%3 (Dcr Type Dcr Type Poly Dcr Type) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Dcr) (%%hole%%3 Type) (%%hole%%4
    Poly
   ) (%%hole%%5 Dcr) (%%hole%%6 Type) (multiset$ Poly) (k$ Poly)
  ) (!
   (= (%%apply%%1 (%%lambda%%3 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
      %%hole%%6
     ) multiset$ k$
    ) (vstd.multiset.impl&%0.insert.? %%hole%%5 %%hole%%6 multiset$ (vstd.map.impl&%0.index.?
      %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 k$
   )))
   :pattern ((%%apply%%1 (%%lambda%%3 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      %%hole%%5 %%hole%%6
     ) multiset$ k$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.tokens.map_values.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly)) (!
    (= (vstd.tokens.map_values.? K&. K& V&. V& m!) (vstd.set_lib.impl&%0.fold.? K&. K&
      $ (TYPE%vstd.multiset.Multiset. V&. V&) (vstd.map.impl&%0.dom.? K&. K& V&. V& m!)
      (vstd.multiset.impl&%0.empty.? V&. V&) (Poly%fun%2. (mk_fun (%%lambda%%3 K&. K& V&.
         V& m! V&. V&
    )))))
    :pattern ((vstd.tokens.map_values.? K&. K& V&. V& m!))
    :qid internal_vstd.tokens.map_values.?_definition
    :skolemid skolem_internal_vstd.tokens.map_values.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly)) (!
   (=>
    (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
    (has_type (vstd.tokens.map_values.? K&. K& V&. V& m!) (TYPE%vstd.multiset.Multiset.
      V&. V&
   )))
   :pattern ((vstd.tokens.map_values.? K&. K& V&. V& m!))
   :qid internal_vstd.tokens.map_values.?_pre_post_definition
   :skolemid skolem_internal_vstd.tokens.map_values.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::tokens::fresh
(assert
 (fuel_bool_default fuel%vstd.tokens.fresh.)
)
(declare-fun %%lambda%%4 () %%Function%%)
(assert
 (forall ((a$ Poly) (b$ Poly)) (!
   (= (%%apply%%1 %%lambda%%4 a$ b$) (B (<= (%I a$) (%I b$))))
   :pattern ((%%apply%%1 %%lambda%%4 a$ b$))
)))
(assert
 (=>
  (fuel_bool fuel%vstd.tokens.fresh.)
  (forall ((m! Poly)) (!
    (= (vstd.tokens.fresh.? m!) (Add (%I (vstd.set_lib.impl&%0.find_unique_maximal.? $ INT
        m! (Poly%fun%2. (mk_fun %%lambda%%4))
       )
      ) 1
    ))
    :pattern ((vstd.tokens.fresh.? m!))
    :qid internal_vstd.tokens.fresh.?_definition
    :skolemid skolem_internal_vstd.tokens.fresh.?_definition
))))

;; Function-Axioms crate::vstd::tokens::MultisetToken::wf
(assert
 (fuel_bool_default fuel%vstd.tokens.impl&%2.wf.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.tokens.impl&%2.wf.)
  (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (self! Poly))
   (!
    (= (vstd.tokens.impl&%2.wf.? Element&. Element& Token&. Token& self!) (and
      (vstd.set.impl&%0.finite.? $ INT (vstd.map.impl&%0.dom.? $ INT Token&. Token& (vstd.tokens.MultisetToken./MultisetToken/m
         (%Poly%vstd.tokens.MultisetToken. self!)
      )))
      (forall ((k$ Poly)) (!
        (=>
         (has_type k$ INT)
         (=>
          (vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT Token&. Token& (vstd.tokens.MultisetToken./MultisetToken/m
             (%Poly%vstd.tokens.MultisetToken. self!)
            )
           ) k$
          )
          (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? Token&. Token&
             Element&. Element& (vstd.map.impl&%0.index.? $ INT Token&. Token& (vstd.tokens.MultisetToken./MultisetToken/m
               (%Poly%vstd.tokens.MultisetToken. self!)
              ) k$
            ))
           ) (vstd.tokens.MultisetToken./MultisetToken/inst (%Poly%vstd.tokens.MultisetToken.
             self!
        )))))
        :pattern ((vstd.set.impl&%0.contains.? $ INT (vstd.map.impl&%0.dom.? $ INT Token&. Token&
           (vstd.tokens.MultisetToken./MultisetToken/m (%Poly%vstd.tokens.MultisetToken. self!))
          ) k$
        ))
        :qid user_crate__vstd__tokens__MultisetToken__wf_40
        :skolemid skolem_user_crate__vstd__tokens__MultisetToken__wf_40
    ))))
    :pattern ((vstd.tokens.impl&%2.wf.? Element&. Element& Token&. Token& self!))
    :qid internal_vstd.tokens.impl&__2.wf.?_definition
    :skolemid skolem_internal_vstd.tokens.impl&__2.wf.?_definition
))))

;; Function-Axioms crate::vstd::tokens::MultisetToken::instance_id
(assert
 (fuel_bool_default fuel%vstd.tokens.impl&%2.instance_id.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.tokens.impl&%2.instance_id.)
  (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (self! Poly))
   (!
    (= (vstd.tokens.impl&%2.instance_id.? Element&. Element& Token&. Token& self!) (vstd.tokens.MultisetToken./MultisetToken/inst
      (%Poly%vstd.tokens.MultisetToken. self!)
    ))
    :pattern ((vstd.tokens.impl&%2.instance_id.? Element&. Element& Token&. Token& self!))
    :qid internal_vstd.tokens.impl&__2.instance_id.?_definition
    :skolemid skolem_internal_vstd.tokens.impl&__2.instance_id.?_definition
))))

;; Function-Axioms crate::vstd::tokens::MultisetToken::map_elems
(assert
 (fuel_bool_default fuel%vstd.tokens.impl&%2.map_elems.)
)
(declare-fun %%lambda%%5 (Dcr Type Dcr Type) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Dcr) (%%hole%%3 Type) (t$ Poly))
  (!
   (= (%%apply%%0 (%%lambda%%5 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) t$) (vstd.tokens.ElementToken.element.?
     %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 t$
   ))
   :pattern ((%%apply%%0 (%%lambda%%5 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3) t$))
)))
(assert
 (=>
  (fuel_bool fuel%vstd.tokens.impl&%2.map_elems.)
  (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (m! Poly)) (!
    (= (vstd.tokens.impl&%2.map_elems.? Element&. Element& Token&. Token& m!) (vstd.map_lib.impl&%0.map_values.?
      $ INT Token&. Token& Element&. Element& m! (Poly%fun%1. (mk_fun (%%lambda%%5 Token&.
         Token& Element&. Element&
    )))))
    :pattern ((vstd.tokens.impl&%2.map_elems.? Element&. Element& Token&. Token& m!))
    :qid internal_vstd.tokens.impl&__2.map_elems.?_definition
    :skolemid skolem_internal_vstd.tokens.impl&__2.map_elems.?_definition
))))
(assert
 (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (m! Poly)) (!
   (=>
    (has_type m! (TYPE%vstd.map.Map. $ INT Token&. Token&))
    (has_type (vstd.tokens.impl&%2.map_elems.? Element&. Element& Token&. Token& m!) (
      TYPE%vstd.map.Map. $ INT Element&. Element&
   )))
   :pattern ((vstd.tokens.impl&%2.map_elems.? Element&. Element& Token&. Token& m!))
   :qid internal_vstd.tokens.impl&__2.map_elems.?_pre_post_definition
   :skolemid skolem_internal_vstd.tokens.impl&__2.map_elems.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::tokens::MultisetToken::multiset
(assert
 (fuel_bool_default fuel%vstd.tokens.impl&%2.multiset.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.tokens.impl&%2.multiset.)
  (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (self! Poly))
   (!
    (= (vstd.tokens.impl&%2.multiset.? Element&. Element& Token&. Token& self!) (vstd.tokens.map_values.?
      $ INT Element&. Element& (vstd.tokens.impl&%2.map_elems.? Element&. Element& Token&.
       Token& (vstd.tokens.MultisetToken./MultisetToken/m (%Poly%vstd.tokens.MultisetToken.
         self!
    )))))
    :pattern ((vstd.tokens.impl&%2.multiset.? Element&. Element& Token&. Token& self!))
    :qid internal_vstd.tokens.impl&__2.multiset.?_definition
    :skolemid skolem_internal_vstd.tokens.impl&__2.multiset.?_definition
))))
(assert
 (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.tokens.MultisetToken. Element&. Element& Token&. Token&))
    (has_type (vstd.tokens.impl&%2.multiset.? Element&. Element& Token&. Token& self!)
     (TYPE%vstd.multiset.Multiset. Element&. Element&)
   ))
   :pattern ((vstd.tokens.impl&%2.multiset.? Element&. Element& Token&. Token& self!))
   :qid internal_vstd.tokens.impl&__2.multiset.?_pre_post_definition
   :skolemid skolem_internal_vstd.tokens.impl&__2.multiset.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::tokens::option_value_eq_option_token
(assert
 (fuel_bool_default fuel%vstd.tokens.option_value_eq_option_token.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.tokens.option_value_eq_option_token.)
  (forall ((Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type) (opt_value! Poly)
    (opt_token! Poly) (instance_id! Poly)
   ) (!
    (= (vstd.tokens.option_value_eq_option_token.? Value&. Value& Token&. Token& opt_value!
      opt_token! instance_id!
     ) (ite
      (is-core!option.Option./Some (%Poly%core!option.Option. opt_value!))
      (let
       ((val$ (core!option.Option./Some/0 (%Poly%core!option.Option. opt_value!))))
       (and
        (and
         (is-core!option.Option./Some (%Poly%core!option.Option. opt_token!))
         (= (vstd.tokens.ValueToken.value.? Token&. Token& Value&. Value& (core!option.Option./Some/0
            (%Poly%core!option.Option. opt_token!)
           )
          ) val$
        ))
        (= (vstd.tokens.ValueToken.instance_id.? Token&. Token& Value&. Value& (core!option.Option./Some/0
           (%Poly%core!option.Option. opt_token!)
          )
         ) instance_id!
      )))
      (is-core!option.Option./None (%Poly%core!option.Option. opt_token!))
    ))
    :pattern ((vstd.tokens.option_value_eq_option_token.? Value&. Value& Token&. Token&
      opt_value! opt_token! instance_id!
    ))
    :qid internal_vstd.tokens.option_value_eq_option_token.?_definition
    :skolemid skolem_internal_vstd.tokens.option_value_eq_option_token.?_definition
))))

;; Function-Axioms crate::vstd::tokens::option_value_le_option_token
(assert
 (fuel_bool_default fuel%vstd.tokens.option_value_le_option_token.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.tokens.option_value_le_option_token.)
  (forall ((Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type) (opt_value! Poly)
    (opt_token! Poly) (instance_id! Poly)
   ) (!
    (= (vstd.tokens.option_value_le_option_token.? Value&. Value& Token&. Token& opt_value!
      opt_token! instance_id!
     ) (=>
      (is-core!option.Option./Some (%Poly%core!option.Option. opt_value!))
      (let
       ((val$ (core!option.Option./Some/0 (%Poly%core!option.Option. opt_value!))))
       (and
        (and
         (is-core!option.Option./Some (%Poly%core!option.Option. opt_token!))
         (= (vstd.tokens.ValueToken.value.? Token&. Token& Value&. Value& (core!option.Option./Some/0
            (%Poly%core!option.Option. opt_token!)
           )
          ) val$
        ))
        (= (vstd.tokens.ValueToken.instance_id.? Token&. Token& Value&. Value& (core!option.Option./Some/0
           (%Poly%core!option.Option. opt_token!)
          )
         ) instance_id!
    )))))
    :pattern ((vstd.tokens.option_value_le_option_token.? Value&. Value& Token&. Token&
      opt_value! opt_token! instance_id!
    ))
    :qid internal_vstd.tokens.option_value_le_option_token.?_definition
    :skolemid skolem_internal_vstd.tokens.option_value_le_option_token.?_definition
))))

;; Function-Axioms crate::vstd::tokens::bool_value_eq_option_token
(assert
 (fuel_bool_default fuel%vstd.tokens.bool_value_eq_option_token.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.tokens.bool_value_eq_option_token.)
  (forall ((Token&. Dcr) (Token& Type) (b! Poly) (opt_token! Poly) (instance_id! Poly))
   (!
    (= (vstd.tokens.bool_value_eq_option_token.? Token&. Token& b! opt_token! instance_id!)
     (ite
      (%B b!)
      (and
       (is-core!option.Option./Some (%Poly%core!option.Option. opt_token!))
       (= (vstd.tokens.SimpleToken.instance_id.? Token&. Token& (core!option.Option./Some/0
          (%Poly%core!option.Option. opt_token!)
         )
        ) instance_id!
      ))
      (is-core!option.Option./None (%Poly%core!option.Option. opt_token!))
    ))
    :pattern ((vstd.tokens.bool_value_eq_option_token.? Token&. Token& b! opt_token! instance_id!))
    :qid internal_vstd.tokens.bool_value_eq_option_token.?_definition
    :skolemid skolem_internal_vstd.tokens.bool_value_eq_option_token.?_definition
))))

;; Function-Axioms crate::vstd::tokens::bool_value_le_option_token
(assert
 (fuel_bool_default fuel%vstd.tokens.bool_value_le_option_token.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.tokens.bool_value_le_option_token.)
  (forall ((Token&. Dcr) (Token& Type) (b! Poly) (opt_token! Poly) (instance_id! Poly))
   (!
    (= (vstd.tokens.bool_value_le_option_token.? Token&. Token& b! opt_token! instance_id!)
     (=>
      (%B b!)
      (and
       (is-core!option.Option./Some (%Poly%core!option.Option. opt_token!))
       (= (vstd.tokens.SimpleToken.instance_id.? Token&. Token& (core!option.Option./Some/0
          (%Poly%core!option.Option. opt_token!)
         )
        ) instance_id!
    ))))
    :pattern ((vstd.tokens.bool_value_le_option_token.? Token&. Token& b! opt_token! instance_id!))
    :qid internal_vstd.tokens.bool_value_le_option_token.?_definition
    :skolemid skolem_internal_vstd.tokens.bool_value_le_option_token.?_definition
))))

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

;; Function-Specs crate::vstd::tokens::MapToken::empty
(declare-fun ens%vstd.tokens.impl&%0.empty. (Dcr Type Dcr Type Dcr Type vstd.tokens.InstanceId.
  vstd.tokens.MapToken.
 ) Bool
)
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type)
   (instance_id! vstd.tokens.InstanceId.) (s! vstd.tokens.MapToken.)
  ) (!
   (= (ens%vstd.tokens.impl&%0.empty. Key&. Key& Value&. Value& Token&. Token& instance_id!
     s!
    ) (and
     (has_type (Poly%vstd.tokens.MapToken. s!) (TYPE%vstd.tokens.MapToken. Key&. Key& Value&.
       Value& Token&. Token&
     ))
     (= (vstd.tokens.impl&%0.instance_id.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
        s!
       )
      ) instance_id!
     )
     (= (vstd.tokens.impl&%0.map.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
        s!
       )
      ) (vstd.map.impl&%0.empty.? Key&. Key& Value&. Value&)
   )))
   :pattern ((ens%vstd.tokens.impl&%0.empty. Key&. Key& Value&. Value& Token&. Token&
     instance_id! s!
   ))
   :qid internal_ens__vstd.tokens.impl&__0.empty._definition
   :skolemid skolem_internal_ens__vstd.tokens.impl&__0.empty._definition
)))

;; Function-Def crate::vstd::tokens::MapToken::empty
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/tokens.rs:289:5: 289:68 (#0)
(get-info :all-statistics)
(push)
 (declare-const Key&. Dcr)
 (declare-const Key& Type)
 (declare-const Value&. Dcr)
 (declare-const Value& Type)
 (declare-const Token&. Dcr)
 (declare-const Token& Type)
 (declare-const s! vstd.tokens.MapToken.)
 (declare-const instance_id! vstd.tokens.InstanceId.)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 vstd.tokens.MapToken.)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const s@ vstd.tokens.MapToken.)
 (assert
  fuel_defaults
 )
 (assert
  (tr_bound%vstd.tokens.KeyValueToken. Token&. Token& Key&. Key& Value&. Value&)
 )
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (ens%vstd.map.impl&%0.tracked_empty. Key&. Key& Token&. Token& tmp%1)
    (=>
     (= tmp%2 (vstd.tokens.MapToken./MapToken (%Poly%core!marker.PhantomData. (Poly%core!marker.PhantomData.
         core!marker.PhantomData./PhantomData
        )
       ) (%Poly%vstd.tokens.InstanceId. (Poly%vstd.tokens.InstanceId. instance_id!)) tmp%1
     ))
     (=>
      (= tmp%3 (vstd.tokens.impl&%0.wf.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
         tmp%2
      )))
      (and
       (=>
        %%location_label%%0
        tmp%3
       )
       (=>
        tmp%3
        (=>
         (= s@ tmp%2)
         (=>
          (= tmp%4 (ext_eq false (TYPE%vstd.map.Map. Key&. Key& Value&. Value&) (vstd.tokens.impl&%0.map.?
             Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken. s@)
            ) (vstd.map.impl&%0.empty.? Key&. Key& Value&. Value&)
          ))
          (and
           (=>
            %%location_label%%1
            tmp%4
           )
           (=>
            tmp%4
            (=>
             (= s! s@)
             (and
              (=>
               %%location_label%%2
               (= (vstd.tokens.impl&%0.instance_id.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
                  s!
                 )
                ) instance_id!
              ))
              (=>
               %%location_label%%3
               (= (vstd.tokens.impl&%0.map.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
                  s!
                 )
                ) (vstd.map.impl&%0.empty.? Key&. Key& Value&. Value&)
 )))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::tokens::MapToken::insert
(declare-fun req%vstd.tokens.impl&%0.insert. (Dcr Type Dcr Type Dcr Type vstd.tokens.MapToken.
  Poly
 ) Bool
)
(declare-const %%global_location_label%%14 Bool)
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type)
   (pre%self! vstd.tokens.MapToken.) (token! Poly)
  ) (!
   (= (req%vstd.tokens.impl&%0.insert. Key&. Key& Value&. Value& Token&. Token& pre%self!
     token!
    ) (=>
     %%global_location_label%%14
     (= (vstd.tokens.impl&%0.instance_id.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
        pre%self!
       )
      ) (%Poly%vstd.tokens.InstanceId. (vstd.tokens.KeyValueToken.instance_id.? Token&. Token&
        Key&. Key& Value&. Value& token!
   )))))
   :pattern ((req%vstd.tokens.impl&%0.insert. Key&. Key& Value&. Value& Token&. Token&
     pre%self! token!
   ))
   :qid internal_req__vstd.tokens.impl&__0.insert._definition
   :skolemid skolem_internal_req__vstd.tokens.impl&__0.insert._definition
)))
(declare-fun ens%vstd.tokens.impl&%0.insert. (Dcr Type Dcr Type Dcr Type vstd.tokens.MapToken.
  vstd.tokens.MapToken. Poly
 ) Bool
)
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type)
   (pre%self! vstd.tokens.MapToken.) (self! vstd.tokens.MapToken.) (token! Poly)
  ) (!
   (= (ens%vstd.tokens.impl&%0.insert. Key&. Key& Value&. Value& Token&. Token& pre%self!
     self! token!
    ) (and
     (has_type (Poly%vstd.tokens.MapToken. self!) (TYPE%vstd.tokens.MapToken. Key&. Key&
       Value&. Value& Token&. Token&
     ))
     (= (vstd.tokens.impl&%0.instance_id.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
        self!
       )
      ) (vstd.tokens.impl&%0.instance_id.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
        pre%self!
     )))
     (= (vstd.tokens.impl&%0.map.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
        self!
       )
      ) (vstd.map.impl&%0.insert.? Key&. Key& Value&. Value& (vstd.tokens.impl&%0.map.? Key&.
        Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken. pre%self!)
       ) (vstd.tokens.KeyValueToken.key.? Token&. Token& Key&. Key& Value&. Value& token!)
       (vstd.tokens.KeyValueToken.value.? Token&. Token& Key&. Key& Value&. Value& token!)
   ))))
   :pattern ((ens%vstd.tokens.impl&%0.insert. Key&. Key& Value&. Value& Token&. Token&
     pre%self! self! token!
   ))
   :qid internal_ens__vstd.tokens.impl&__0.insert._definition
   :skolemid skolem_internal_ens__vstd.tokens.impl&__0.insert._definition
)))

;; Function-Def crate::vstd::tokens::MapToken::insert
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/tokens.rs:299:5: 299:65 (#0)
(get-info :all-statistics)
(push)
 (declare-const Key&. Dcr)
 (declare-const Key& Type)
 (declare-const Value&. Dcr)
 (declare-const Value& Type)
 (declare-const Token&. Dcr)
 (declare-const Token& Type)
 (declare-const self!@0 vstd.tokens.MapToken.)
 (declare-const token! Poly)
 (declare-const tmp%1 vstd.tokens.MapToken.)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Poly)
 (declare-const tmp%4 vstd.tokens.MapToken.)
 (declare-const tmp%5 Bool)
 (declare-const tmp%6 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.tokens.MapToken. self!@0) (TYPE%vstd.tokens.MapToken. Key&. Key&
    Value&. Value& Token&. Token&
 )))
 (assert
  (has_type token! Token&)
 )
 (assert
  (tr_bound%vstd.tokens.KeyValueToken. Token&. Token& Key&. Key& Value&. Value&)
 )
 (assert
  (= (vstd.tokens.impl&%0.instance_id.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
     self!@0
    )
   ) (%Poly%vstd.tokens.InstanceId. (vstd.tokens.KeyValueToken.instance_id.? Token&. Token&
     Key&. Key& Value&. Value& token!
 ))))
 (declare-const self!@1 vstd.tokens.MapToken.)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (= tmp%1 self!@0)
    (=>
     (= tmp%2 (vstd.tokens.impl&%0.wf.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
        tmp%1
     )))
     (=>
      tmp%2
      (=>
       (= tmp%3 (vstd.tokens.KeyValueToken.key.? Token&. Token& Key&. Key& Value&. Value&
         token!
       ))
       (=>
        (and
         (= (vstd.tokens.MapToken./MapToken/_v self!@0) (vstd.tokens.MapToken./MapToken/_v self!@1))
         (= (vstd.tokens.MapToken./MapToken/inst self!@0) (vstd.tokens.MapToken./MapToken/inst
           self!@1
        )))
        (=>
         (has_type (Poly%vstd.tokens.MapToken. self!@1) (TYPE%vstd.tokens.MapToken. Key&. Key&
           Value&. Value& Token&. Token&
         ))
         (=>
          (ens%vstd.map.impl&%0.tracked_insert. Key&. Key& Token&. Token& (vstd.tokens.MapToken./MapToken/m
            (%Poly%vstd.tokens.MapToken. (Poly%vstd.tokens.MapToken. self!@0))
           ) (vstd.tokens.MapToken./MapToken/m (%Poly%vstd.tokens.MapToken. (Poly%vstd.tokens.MapToken.
              self!@1
            ))
           ) tmp%3 token!
          )
          (=>
           (= tmp%4 self!@1)
           (=>
            (= tmp%5 (vstd.tokens.impl&%0.wf.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
               tmp%4
            )))
            (and
             (=>
              %%location_label%%0
              tmp%5
             )
             (=>
              tmp%5
              (=>
               (= tmp%6 (ext_eq false (TYPE%vstd.map.Map. Key&. Key& Value&. Value&) (vstd.tokens.impl&%0.map.?
                  Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken. self!@1)
                 ) (vstd.map.impl&%0.insert.? Key&. Key& Value&. Value& (vstd.tokens.impl&%0.map.? Key&.
                   Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken. self!@0)
                  ) (vstd.tokens.KeyValueToken.key.? Token&. Token& Key&. Key& Value&. Value& token!)
                  (vstd.tokens.KeyValueToken.value.? Token&. Token& Key&. Key& Value&. Value& token!)
               )))
               (and
                (=>
                 %%location_label%%1
                 tmp%6
                )
                (=>
                 tmp%6
                 (and
                  (=>
                   %%location_label%%2
                   (= (vstd.tokens.impl&%0.instance_id.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
                      self!@1
                     )
                    ) (vstd.tokens.impl&%0.instance_id.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
                      self!@0
                  ))))
                  (=>
                   %%location_label%%3
                   (= (vstd.tokens.impl&%0.map.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
                      self!@1
                     )
                    ) (vstd.map.impl&%0.insert.? Key&. Key& Value&. Value& (vstd.tokens.impl&%0.map.? Key&.
                      Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken. self!@0)
                     ) (vstd.tokens.KeyValueToken.key.? Token&. Token& Key&. Key& Value&. Value& token!)
                     (vstd.tokens.KeyValueToken.value.? Token&. Token& Key&. Key& Value&. Value& token!)
 ))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::tokens::MapToken::remove
(declare-fun req%vstd.tokens.impl&%0.remove. (Dcr Type Dcr Type Dcr Type vstd.tokens.MapToken.
  Poly
 ) Bool
)
(declare-const %%global_location_label%%15 Bool)
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type)
   (pre%self! vstd.tokens.MapToken.) (key! Poly)
  ) (!
   (= (req%vstd.tokens.impl&%0.remove. Key&. Key& Value&. Value& Token&. Token& pre%self!
     key!
    ) (=>
     %%global_location_label%%15
     (vstd.set.impl&%0.contains.? Key&. Key& (vstd.map.impl&%0.dom.? Key&. Key& Value&.
       Value& (vstd.tokens.impl&%0.map.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
         pre%self!
       ))
      ) key!
   )))
   :pattern ((req%vstd.tokens.impl&%0.remove. Key&. Key& Value&. Value& Token&. Token&
     pre%self! key!
   ))
   :qid internal_req__vstd.tokens.impl&__0.remove._definition
   :skolemid skolem_internal_req__vstd.tokens.impl&__0.remove._definition
)))
(declare-fun ens%vstd.tokens.impl&%0.remove. (Dcr Type Dcr Type Dcr Type vstd.tokens.MapToken.
  vstd.tokens.MapToken. Poly Poly
 ) Bool
)
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type)
   (pre%self! vstd.tokens.MapToken.) (self! vstd.tokens.MapToken.) (key! Poly) (token!
    Poly
   )
  ) (!
   (= (ens%vstd.tokens.impl&%0.remove. Key&. Key& Value&. Value& Token&. Token& pre%self!
     self! key! token!
    ) (and
     (has_type token! Token&)
     (has_type (Poly%vstd.tokens.MapToken. self!) (TYPE%vstd.tokens.MapToken. Key&. Key&
       Value&. Value& Token&. Token&
     ))
     (= (vstd.tokens.impl&%0.instance_id.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
        self!
       )
      ) (vstd.tokens.impl&%0.instance_id.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
        pre%self!
     )))
     (= (vstd.tokens.impl&%0.map.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
        self!
       )
      ) (vstd.map.impl&%0.remove.? Key&. Key& Value&. Value& (vstd.tokens.impl&%0.map.? Key&.
        Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken. pre%self!)
       ) key!
     ))
     (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.KeyValueToken.instance_id.? Token&. Token&
        Key&. Key& Value&. Value& token!
       )
      ) (vstd.tokens.impl&%0.instance_id.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
        self!
     )))
     (= (vstd.tokens.KeyValueToken.key.? Token&. Token& Key&. Key& Value&. Value& token!)
      key!
     )
     (= (vstd.tokens.KeyValueToken.value.? Token&. Token& Key&. Key& Value&. Value& token!)
      (vstd.map.impl&%0.index.? Key&. Key& Value&. Value& (vstd.tokens.impl&%0.map.? Key&.
        Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken. pre%self!)
       ) key!
   ))))
   :pattern ((ens%vstd.tokens.impl&%0.remove. Key&. Key& Value&. Value& Token&. Token&
     pre%self! self! key! token!
   ))
   :qid internal_ens__vstd.tokens.impl&__0.remove._definition
   :skolemid skolem_internal_ens__vstd.tokens.impl&__0.remove._definition
)))

;; Function-Def crate::vstd::tokens::MapToken::remove
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/tokens.rs:311:5: 311:78 (#0)
(get-info :all-statistics)
(push)
 (declare-const Key&. Dcr)
 (declare-const Key& Type)
 (declare-const Value&. Dcr)
 (declare-const Value& Type)
 (declare-const Token&. Dcr)
 (declare-const Token& Type)
 (declare-const token! Poly)
 (declare-const self!@0 vstd.tokens.MapToken.)
 (declare-const key! Poly)
 (declare-const tmp%1 vstd.tokens.MapToken.)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 vstd.tokens.MapToken.)
 (declare-const tmp%4 Bool)
 (declare-const tmp@ Poly)
 (declare-const tmp%5 Bool)
 (declare-const t@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.tokens.MapToken. self!@0) (TYPE%vstd.tokens.MapToken. Key&. Key&
    Value&. Value& Token&. Token&
 )))
 (assert
  (has_type key! Key&)
 )
 (assert
  (tr_bound%vstd.tokens.KeyValueToken. Token&. Token& Key&. Key& Value&. Value&)
 )
 (assert
  (vstd.set.impl&%0.contains.? Key&. Key& (vstd.map.impl&%0.dom.? Key&. Key& Value&.
    Value& (vstd.tokens.impl&%0.map.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
      self!@0
    ))
   ) key!
 ))
 (declare-const self!@1 vstd.tokens.MapToken.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%5 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%6 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%7 Bool)
 (assert
  (not (=>
    (= tmp%1 self!@0)
    (=>
     (= tmp%2 (vstd.tokens.impl&%0.wf.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
        tmp%1
     )))
     (=>
      tmp%2
      (and
       (=>
        %%location_label%%0
        (req%vstd.map.impl&%0.tracked_remove. Key&. Key& Token&. Token& (vstd.tokens.MapToken./MapToken/m
          (%Poly%vstd.tokens.MapToken. (Poly%vstd.tokens.MapToken. self!@0))
         ) key!
       ))
       (=>
        (and
         (= (vstd.tokens.MapToken./MapToken/_v self!@0) (vstd.tokens.MapToken./MapToken/_v self!@1))
         (= (vstd.tokens.MapToken./MapToken/inst self!@0) (vstd.tokens.MapToken./MapToken/inst
           self!@1
        )))
        (=>
         (has_type (Poly%vstd.tokens.MapToken. self!@1) (TYPE%vstd.tokens.MapToken. Key&. Key&
           Value&. Value& Token&. Token&
         ))
         (=>
          (ens%vstd.map.impl&%0.tracked_remove. Key&. Key& Token&. Token& (vstd.tokens.MapToken./MapToken/m
            (%Poly%vstd.tokens.MapToken. (Poly%vstd.tokens.MapToken. self!@0))
           ) (vstd.tokens.MapToken./MapToken/m (%Poly%vstd.tokens.MapToken. (Poly%vstd.tokens.MapToken.
              self!@1
            ))
           ) key! tmp@
          )
          (=>
           (= tmp%3 self!@1)
           (=>
            (= tmp%4 (vstd.tokens.impl&%0.wf.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
               tmp%3
            )))
            (and
             (=>
              %%location_label%%1
              tmp%4
             )
             (=>
              tmp%4
              (=>
               (= t@ tmp@)
               (=>
                (= tmp%5 (ext_eq false (TYPE%vstd.map.Map. Key&. Key& Value&. Value&) (vstd.tokens.impl&%0.map.?
                   Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken. self!@1)
                  ) (vstd.map.impl&%0.remove.? Key&. Key& Value&. Value& (vstd.tokens.impl&%0.map.? Key&.
                    Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken. self!@0)
                   ) key!
                )))
                (and
                 (=>
                  %%location_label%%2
                  tmp%5
                 )
                 (=>
                  tmp%5
                  (=>
                   (= token! t@)
                   (and
                    (=>
                     %%location_label%%3
                     (= (vstd.tokens.impl&%0.instance_id.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
                        self!@1
                       )
                      ) (vstd.tokens.impl&%0.instance_id.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
                        self!@0
                    ))))
                    (and
                     (=>
                      %%location_label%%4
                      (= (vstd.tokens.impl&%0.map.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
                         self!@1
                        )
                       ) (vstd.map.impl&%0.remove.? Key&. Key& Value&. Value& (vstd.tokens.impl&%0.map.? Key&.
                         Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken. self!@0)
                        ) key!
                     )))
                     (and
                      (=>
                       %%location_label%%5
                       (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.KeyValueToken.instance_id.? Token&. Token&
                          Key&. Key& Value&. Value& token!
                         )
                        ) (vstd.tokens.impl&%0.instance_id.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
                          self!@1
                      ))))
                      (and
                       (=>
                        %%location_label%%6
                        (= (vstd.tokens.KeyValueToken.key.? Token&. Token& Key&. Key& Value&. Value& token!)
                         key!
                       ))
                       (=>
                        %%location_label%%7
                        (= (vstd.tokens.KeyValueToken.value.? Token&. Token& Key&. Key& Value&. Value& token!)
                         (vstd.map.impl&%0.index.? Key&. Key& Value&. Value& (vstd.tokens.impl&%0.map.? Key&.
                           Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken. self!@0)
                          ) key!
 )))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::tokens::MapToken::into_map
(declare-fun ens%vstd.tokens.impl&%0.into_map. (Dcr Type Dcr Type Dcr Type vstd.tokens.MapToken.
  Poly
 ) Bool
)
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type)
   (self! vstd.tokens.MapToken.) (map! Poly)
  ) (!
   (= (ens%vstd.tokens.impl&%0.into_map. Key&. Key& Value&. Value& Token&. Token& self!
     map!
    ) (and
     (has_type map! (TYPE%vstd.map.Map. Key&. Key& Token&. Token&))
     (= (vstd.map.impl&%0.dom.? Key&. Key& Token&. Token& map!) (vstd.map.impl&%0.dom.?
       Key&. Key& Value&. Value& (vstd.tokens.impl&%0.map.? Key&. Key& Value&. Value& Token&.
        Token& (Poly%vstd.tokens.MapToken. self!)
     )))
     (forall ((key$ Poly)) (!
       (=>
        (has_type key$ Key&)
        (=>
         (vstd.set.impl&%0.contains.? Key&. Key& (vstd.map.impl&%0.dom.? Key&. Key& Token&.
           Token& map!
          ) key$
         )
         (and
          (and
           (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.KeyValueToken.instance_id.? Token&. Token&
              Key&. Key& Value&. Value& (vstd.map.impl&%0.index.? Key&. Key& Token&. Token& map!
               key$
             ))
            ) (vstd.tokens.impl&%0.instance_id.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
              self!
           )))
           (= (vstd.tokens.KeyValueToken.key.? Token&. Token& Key&. Key& Value&. Value& (vstd.map.impl&%0.index.?
              Key&. Key& Token&. Token& map! key$
             )
            ) key$
          ))
          (= (vstd.tokens.KeyValueToken.value.? Token&. Token& Key&. Key& Value&. Value& (vstd.map.impl&%0.index.?
             Key&. Key& Token&. Token& map! key$
            )
           ) (vstd.map.impl&%0.index.? Key&. Key& Value&. Value& (vstd.tokens.impl&%0.map.? Key&.
             Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken. self!)
            ) key$
       )))))
       :pattern ((vstd.set.impl&%0.contains.? Key&. Key& (vstd.map.impl&%0.dom.? Key&. Key&
          Token&. Token& map!
         ) key$
       ))
       :pattern ((vstd.map.impl&%0.index.? Key&. Key& Token&. Token& map! key$))
       :qid user_crate__vstd__tokens__MapToken__into_map_41
       :skolemid skolem_user_crate__vstd__tokens__MapToken__into_map_41
   ))))
   :pattern ((ens%vstd.tokens.impl&%0.into_map. Key&. Key& Value&. Value& Token&. Token&
     self! map!
   ))
   :qid internal_ens__vstd.tokens.impl&__0.into_map._definition
   :skolemid skolem_internal_ens__vstd.tokens.impl&__0.into_map._definition
)))

;; Function-Def crate::vstd::tokens::MapToken::into_map
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/tokens.rs:327:5: 327:73 (#0)
(get-info :all-statistics)
(push)
 (declare-const Key&. Dcr)
 (declare-const Key& Type)
 (declare-const Value&. Dcr)
 (declare-const Value& Type)
 (declare-const Token&. Dcr)
 (declare-const Token& Type)
 (declare-const map! Poly)
 (declare-const self! vstd.tokens.MapToken.)
 (declare-const tmp%1 vstd.tokens.MapToken.)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const inst@ vstd.tokens.InstanceId.)
 (declare-const m@ Poly)
 (declare-const _v@ core!marker.PhantomData.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.tokens.MapToken. self!) (TYPE%vstd.tokens.MapToken. Key&. Key&
    Value&. Value& Token&. Token&
 )))
 (assert
  (tr_bound%vstd.tokens.KeyValueToken. Token&. Token& Key&. Key& Value&. Value&)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (= tmp%1 self!)
    (=>
     (= tmp%2 (vstd.tokens.impl&%0.wf.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
        tmp%1
     )))
     (=>
      tmp%2
      (=>
       (= inst@ (vstd.tokens.MapToken./MapToken/inst (%Poly%vstd.tokens.MapToken. (Poly%vstd.tokens.MapToken.
           self!
       ))))
       (=>
        (= m@ (vstd.tokens.MapToken./MapToken/m (%Poly%vstd.tokens.MapToken. (Poly%vstd.tokens.MapToken.
            self!
        ))))
        (=>
         (= _v@ (vstd.tokens.MapToken./MapToken/_v (%Poly%vstd.tokens.MapToken. (Poly%vstd.tokens.MapToken.
             self!
         ))))
         (=>
          (= tmp%3 (ext_eq false (TYPE%vstd.set.Set. Key&. Key&) (vstd.map.impl&%0.dom.? Key&.
             Key& Token&. Token& m@
            ) (vstd.map.impl&%0.dom.? Key&. Key& Value&. Value& (vstd.tokens.impl&%0.map.? Key&.
              Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken. self!)
          ))))
          (and
           (=>
            %%location_label%%0
            tmp%3
           )
           (=>
            tmp%3
            (=>
             (= map! m@)
             (and
              (=>
               %%location_label%%1
               (= (vstd.map.impl&%0.dom.? Key&. Key& Token&. Token& map!) (vstd.map.impl&%0.dom.?
                 Key&. Key& Value&. Value& (vstd.tokens.impl&%0.map.? Key&. Key& Value&. Value& Token&.
                  Token& (Poly%vstd.tokens.MapToken. self!)
              ))))
              (=>
               %%location_label%%2
               (forall ((key$ Poly)) (!
                 (=>
                  (has_type key$ Key&)
                  (=>
                   (vstd.set.impl&%0.contains.? Key&. Key& (vstd.map.impl&%0.dom.? Key&. Key& Token&.
                     Token& map!
                    ) key$
                   )
                   (and
                    (and
                     (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.KeyValueToken.instance_id.? Token&. Token&
                        Key&. Key& Value&. Value& (vstd.map.impl&%0.index.? Key&. Key& Token&. Token& map!
                         key$
                       ))
                      ) (vstd.tokens.impl&%0.instance_id.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
                        self!
                     )))
                     (= (vstd.tokens.KeyValueToken.key.? Token&. Token& Key&. Key& Value&. Value& (vstd.map.impl&%0.index.?
                        Key&. Key& Token&. Token& map! key$
                       )
                      ) key$
                    ))
                    (= (vstd.tokens.KeyValueToken.value.? Token&. Token& Key&. Key& Value&. Value& (vstd.map.impl&%0.index.?
                       Key&. Key& Token&. Token& map! key$
                      )
                     ) (vstd.map.impl&%0.index.? Key&. Key& Value&. Value& (vstd.tokens.impl&%0.map.? Key&.
                       Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken. self!)
                      ) key$
                 )))))
                 :pattern ((vstd.set.impl&%0.contains.? Key&. Key& (vstd.map.impl&%0.dom.? Key&. Key&
                    Token&. Token& map!
                   ) key$
                 ))
                 :pattern ((vstd.map.impl&%0.index.? Key&. Key& Token&. Token& map! key$))
                 :qid user_crate__vstd__tokens__MapToken__into_map_42
                 :skolemid skolem_user_crate__vstd__tokens__MapToken__into_map_42
 ))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::tokens::MapToken::from_map
(declare-fun req%vstd.tokens.impl&%0.from_map. (Dcr Type Dcr Type Dcr Type vstd.tokens.InstanceId.
  Poly
 ) Bool
)
(declare-const %%global_location_label%%16 Bool)
(declare-const %%global_location_label%%17 Bool)
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type)
   (instance_id! vstd.tokens.InstanceId.) (map! Poly)
  ) (!
   (= (req%vstd.tokens.impl&%0.from_map. Key&. Key& Value&. Value& Token&. Token& instance_id!
     map!
    ) (and
     (=>
      %%global_location_label%%16
      (forall ((key$ Poly)) (!
        (=>
         (has_type key$ Key&)
         (=>
          (vstd.set.impl&%0.contains.? Key&. Key& (vstd.map.impl&%0.dom.? Key&. Key& Token&.
            Token& map!
           ) key$
          )
          (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.KeyValueToken.instance_id.? Token&. Token&
             Key&. Key& Value&. Value& (vstd.map.impl&%0.index.? Key&. Key& Token&. Token& map!
              key$
            ))
           ) instance_id!
        )))
        :pattern ((vstd.set.impl&%0.contains.? Key&. Key& (vstd.map.impl&%0.dom.? Key&. Key&
           Token&. Token& map!
          ) key$
        ))
        :qid user_crate__vstd__tokens__MapToken__from_map_43
        :skolemid skolem_user_crate__vstd__tokens__MapToken__from_map_43
     )))
     (=>
      %%global_location_label%%17
      (forall ((key$ Poly)) (!
        (=>
         (has_type key$ Key&)
         (=>
          (vstd.set.impl&%0.contains.? Key&. Key& (vstd.map.impl&%0.dom.? Key&. Key& Token&.
            Token& map!
           ) key$
          )
          (= (vstd.tokens.KeyValueToken.key.? Token&. Token& Key&. Key& Value&. Value& (vstd.map.impl&%0.index.?
             Key&. Key& Token&. Token& map! key$
            )
           ) key$
        )))
        :pattern ((vstd.set.impl&%0.contains.? Key&. Key& (vstd.map.impl&%0.dom.? Key&. Key&
           Token&. Token& map!
          ) key$
        ))
        :qid user_crate__vstd__tokens__MapToken__from_map_44
        :skolemid skolem_user_crate__vstd__tokens__MapToken__from_map_44
   )))))
   :pattern ((req%vstd.tokens.impl&%0.from_map. Key&. Key& Value&. Value& Token&. Token&
     instance_id! map!
   ))
   :qid internal_req__vstd.tokens.impl&__0.from_map._definition
   :skolemid skolem_internal_req__vstd.tokens.impl&__0.from_map._definition
)))
(declare-fun ens%vstd.tokens.impl&%0.from_map. (Dcr Type Dcr Type Dcr Type vstd.tokens.InstanceId.
  Poly vstd.tokens.MapToken.
 ) Bool
)
(assert
 (forall ((Key&. Dcr) (Key& Type) (Value&. Dcr) (Value& Type) (Token&. Dcr) (Token& Type)
   (instance_id! vstd.tokens.InstanceId.) (map! Poly) (s! vstd.tokens.MapToken.)
  ) (!
   (= (ens%vstd.tokens.impl&%0.from_map. Key&. Key& Value&. Value& Token&. Token& instance_id!
     map! s!
    ) (and
     (has_type (Poly%vstd.tokens.MapToken. s!) (TYPE%vstd.tokens.MapToken. Key&. Key& Value&.
       Value& Token&. Token&
     ))
     (= (vstd.tokens.impl&%0.instance_id.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
        s!
       )
      ) instance_id!
     )
     (= (vstd.map.impl&%0.dom.? Key&. Key& Value&. Value& (vstd.tokens.impl&%0.map.? Key&.
        Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken. s!)
       )
      ) (vstd.map.impl&%0.dom.? Key&. Key& Token&. Token& map!)
     )
     (forall ((key$ Poly)) (!
       (=>
        (has_type key$ Key&)
        (=>
         (vstd.set.impl&%0.contains.? Key&. Key& (vstd.map.impl&%0.dom.? Key&. Key& Token&.
           Token& map!
          ) key$
         )
         (= (vstd.map.impl&%0.index.? Key&. Key& Value&. Value& (vstd.tokens.impl&%0.map.? Key&.
            Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken. s!)
           ) key$
          ) (vstd.tokens.KeyValueToken.value.? Token&. Token& Key&. Key& Value&. Value& (vstd.map.impl&%0.index.?
            Key&. Key& Token&. Token& map! key$
       )))))
       :pattern ((vstd.set.impl&%0.contains.? Key&. Key& (vstd.map.impl&%0.dom.? Key&. Key&
          Token&. Token& map!
         ) key$
       ))
       :qid user_crate__vstd__tokens__MapToken__from_map_45
       :skolemid skolem_user_crate__vstd__tokens__MapToken__from_map_45
   ))))
   :pattern ((ens%vstd.tokens.impl&%0.from_map. Key&. Key& Value&. Value& Token&. Token&
     instance_id! map! s!
   ))
   :qid internal_ens__vstd.tokens.impl&__0.from_map._definition
   :skolemid skolem_internal_ens__vstd.tokens.impl&__0.from_map._definition
)))

;; Function-Def crate::vstd::tokens::MapToken::from_map
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/tokens.rs:344:5: 344:101 (#0)
(get-info :all-statistics)
(push)
 (declare-const Key&. Dcr)
 (declare-const Key& Type)
 (declare-const Value&. Dcr)
 (declare-const Value& Type)
 (declare-const Token&. Dcr)
 (declare-const Token& Type)
 (declare-const s! vstd.tokens.MapToken.)
 (declare-const instance_id! vstd.tokens.InstanceId.)
 (declare-const map! Poly)
 (declare-const tmp%1 vstd.tokens.MapToken.)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const s@ vstd.tokens.MapToken.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type map! (TYPE%vstd.map.Map. Key&. Key& Token&. Token&))
 )
 (assert
  (tr_bound%vstd.tokens.KeyValueToken. Token&. Token& Key&. Key& Value&. Value&)
 )
 (assert
  (forall ((key$ Poly)) (!
    (=>
     (has_type key$ Key&)
     (=>
      (vstd.set.impl&%0.contains.? Key&. Key& (vstd.map.impl&%0.dom.? Key&. Key& Token&.
        Token& map!
       ) key$
      )
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.KeyValueToken.instance_id.? Token&. Token&
         Key&. Key& Value&. Value& (vstd.map.impl&%0.index.? Key&. Key& Token&. Token& map!
          key$
        ))
       ) instance_id!
    )))
    :pattern ((vstd.set.impl&%0.contains.? Key&. Key& (vstd.map.impl&%0.dom.? Key&. Key&
       Token&. Token& map!
      ) key$
    ))
    :qid user_crate__vstd__tokens__MapToken__from_map_47
    :skolemid skolem_user_crate__vstd__tokens__MapToken__from_map_47
 )))
 (assert
  (forall ((key$ Poly)) (!
    (=>
     (has_type key$ Key&)
     (=>
      (vstd.set.impl&%0.contains.? Key&. Key& (vstd.map.impl&%0.dom.? Key&. Key& Token&.
        Token& map!
       ) key$
      )
      (= (vstd.tokens.KeyValueToken.key.? Token&. Token& Key&. Key& Value&. Value& (vstd.map.impl&%0.index.?
         Key&. Key& Token&. Token& map! key$
        )
       ) key$
    )))
    :pattern ((vstd.set.impl&%0.contains.? Key&. Key& (vstd.map.impl&%0.dom.? Key&. Key&
       Token&. Token& map!
      ) key$
    ))
    :qid user_crate__vstd__tokens__MapToken__from_map_48
    :skolemid skolem_user_crate__vstd__tokens__MapToken__from_map_48
 )))
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 (assert
  (not (=>
    (= tmp%1 (vstd.tokens.MapToken./MapToken (%Poly%core!marker.PhantomData. (Poly%core!marker.PhantomData.
        core!marker.PhantomData./PhantomData
       )
      ) (%Poly%vstd.tokens.InstanceId. (Poly%vstd.tokens.InstanceId. instance_id!)) map!
    ))
    (=>
     (= tmp%2 (vstd.tokens.impl&%0.wf.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
        tmp%1
     )))
     (and
      (=>
       %%location_label%%0
       tmp%2
      )
      (=>
       tmp%2
       (=>
        (= s@ tmp%1)
        (=>
         (= tmp%3 (ext_eq false (TYPE%vstd.set.Set. Key&. Key&) (vstd.map.impl&%0.dom.? Key&.
            Key& Token&. Token& map!
           ) (vstd.map.impl&%0.dom.? Key&. Key& Value&. Value& (vstd.tokens.impl&%0.map.? Key&.
             Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken. s@)
         ))))
         (and
          (=>
           %%location_label%%1
           tmp%3
          )
          (=>
           tmp%3
           (=>
            (= s! s@)
            (and
             (=>
              %%location_label%%2
              (= (vstd.tokens.impl&%0.instance_id.? Key&. Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken.
                 s!
                )
               ) instance_id!
             ))
             (and
              (=>
               %%location_label%%3
               (= (vstd.map.impl&%0.dom.? Key&. Key& Value&. Value& (vstd.tokens.impl&%0.map.? Key&.
                  Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken. s!)
                 )
                ) (vstd.map.impl&%0.dom.? Key&. Key& Token&. Token& map!)
              ))
              (=>
               %%location_label%%4
               (forall ((key$ Poly)) (!
                 (=>
                  (has_type key$ Key&)
                  (=>
                   (vstd.set.impl&%0.contains.? Key&. Key& (vstd.map.impl&%0.dom.? Key&. Key& Token&.
                     Token& map!
                    ) key$
                   )
                   (= (vstd.map.impl&%0.index.? Key&. Key& Value&. Value& (vstd.tokens.impl&%0.map.? Key&.
                      Key& Value&. Value& Token&. Token& (Poly%vstd.tokens.MapToken. s!)
                     ) key$
                    ) (vstd.tokens.KeyValueToken.value.? Token&. Token& Key&. Key& Value&. Value& (vstd.map.impl&%0.index.?
                      Key&. Key& Token&. Token& map! key$
                 )))))
                 :pattern ((vstd.set.impl&%0.contains.? Key&. Key& (vstd.map.impl&%0.dom.? Key&. Key&
                    Token&. Token& map!
                   ) key$
                 ))
                 :qid user_crate__vstd__tokens__MapToken__from_map_46
                 :skolemid skolem_user_crate__vstd__tokens__MapToken__from_map_46
 ))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::tokens::SetToken::empty
(declare-fun ens%vstd.tokens.impl&%1.empty. (Dcr Type Dcr Type vstd.tokens.InstanceId.
  vstd.tokens.SetToken.
 ) Bool
)
(assert
 (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (instance_id! vstd.tokens.InstanceId.)
   (s! vstd.tokens.SetToken.)
  ) (!
   (= (ens%vstd.tokens.impl&%1.empty. Element&. Element& Token&. Token& instance_id! s!)
    (and
     (has_type (Poly%vstd.tokens.SetToken. s!) (TYPE%vstd.tokens.SetToken. Element&. Element&
       Token&. Token&
     ))
     (= (vstd.tokens.impl&%1.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
        s!
       )
      ) instance_id!
     )
     (= (vstd.tokens.impl&%1.set.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
        s!
       )
      ) (vstd.set.impl&%0.empty.? Element&. Element&)
   )))
   :pattern ((ens%vstd.tokens.impl&%1.empty. Element&. Element& Token&. Token& instance_id!
     s!
   ))
   :qid internal_ens__vstd.tokens.impl&__1.empty._definition
   :skolemid skolem_internal_ens__vstd.tokens.impl&__1.empty._definition
)))

;; Function-Def crate::vstd::tokens::SetToken::empty
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/tokens.rs:392:5: 392:68 (#0)
(get-info :all-statistics)
(push)
 (declare-const Element&. Dcr)
 (declare-const Element& Type)
 (declare-const Token&. Dcr)
 (declare-const Token& Type)
 (declare-const s! vstd.tokens.SetToken.)
 (declare-const instance_id! vstd.tokens.InstanceId.)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 vstd.tokens.SetToken.)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const s@ vstd.tokens.SetToken.)
 (assert
  fuel_defaults
 )
 (assert
  (tr_bound%vstd.tokens.ElementToken. Token&. Token& Element&. Element&)
 )
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (ens%vstd.map.impl&%0.tracked_empty. Element&. Element& Token&. Token& tmp%1)
    (=>
     (= tmp%2 (vstd.tokens.SetToken./SetToken (%Poly%vstd.tokens.InstanceId. (Poly%vstd.tokens.InstanceId.
         instance_id!
        )
       ) tmp%1
     ))
     (=>
      (= tmp%3 (vstd.tokens.impl&%1.wf.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
         tmp%2
      )))
      (and
       (=>
        %%location_label%%0
        tmp%3
       )
       (=>
        tmp%3
        (=>
         (= s@ tmp%2)
         (=>
          (= tmp%4 (ext_eq false (TYPE%vstd.set.Set. Element&. Element&) (vstd.tokens.impl&%1.set.?
             Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken. s@)
            ) (vstd.set.impl&%0.empty.? Element&. Element&)
          ))
          (and
           (=>
            %%location_label%%1
            tmp%4
           )
           (=>
            tmp%4
            (=>
             (= s! s@)
             (and
              (=>
               %%location_label%%2
               (= (vstd.tokens.impl&%1.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
                  s!
                 )
                ) instance_id!
              ))
              (=>
               %%location_label%%3
               (= (vstd.tokens.impl&%1.set.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
                  s!
                 )
                ) (vstd.set.impl&%0.empty.? Element&. Element&)
 )))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::tokens::SetToken::insert
(declare-fun req%vstd.tokens.impl&%1.insert. (Dcr Type Dcr Type vstd.tokens.SetToken.
  Poly
 ) Bool
)
(declare-const %%global_location_label%%18 Bool)
(assert
 (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (pre%self! vstd.tokens.SetToken.)
   (token! Poly)
  ) (!
   (= (req%vstd.tokens.impl&%1.insert. Element&. Element& Token&. Token& pre%self! token!)
    (=>
     %%global_location_label%%18
     (= (vstd.tokens.impl&%1.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
        pre%self!
       )
      ) (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? Token&. Token&
        Element&. Element& token!
   )))))
   :pattern ((req%vstd.tokens.impl&%1.insert. Element&. Element& Token&. Token& pre%self!
     token!
   ))
   :qid internal_req__vstd.tokens.impl&__1.insert._definition
   :skolemid skolem_internal_req__vstd.tokens.impl&__1.insert._definition
)))
(declare-fun ens%vstd.tokens.impl&%1.insert. (Dcr Type Dcr Type vstd.tokens.SetToken.
  vstd.tokens.SetToken. Poly
 ) Bool
)
(assert
 (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (pre%self! vstd.tokens.SetToken.)
   (self! vstd.tokens.SetToken.) (token! Poly)
  ) (!
   (= (ens%vstd.tokens.impl&%1.insert. Element&. Element& Token&. Token& pre%self! self!
     token!
    ) (and
     (has_type (Poly%vstd.tokens.SetToken. self!) (TYPE%vstd.tokens.SetToken. Element&.
       Element& Token&. Token&
     ))
     (= (vstd.tokens.impl&%1.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
        self!
       )
      ) (vstd.tokens.impl&%1.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
        pre%self!
     )))
     (= (vstd.tokens.impl&%1.set.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
        self!
       )
      ) (vstd.set.impl&%0.insert.? Element&. Element& (vstd.tokens.impl&%1.set.? Element&.
        Element& Token&. Token& (Poly%vstd.tokens.SetToken. pre%self!)
       ) (vstd.tokens.ElementToken.element.? Token&. Token& Element&. Element& token!)
   ))))
   :pattern ((ens%vstd.tokens.impl&%1.insert. Element&. Element& Token&. Token& pre%self!
     self! token!
   ))
   :qid internal_ens__vstd.tokens.impl&__1.insert._definition
   :skolemid skolem_internal_ens__vstd.tokens.impl&__1.insert._definition
)))

;; Function-Def crate::vstd::tokens::SetToken::insert
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/tokens.rs:402:5: 402:65 (#0)
(get-info :all-statistics)
(push)
 (declare-const Element&. Dcr)
 (declare-const Element& Type)
 (declare-const Token&. Dcr)
 (declare-const Token& Type)
 (declare-const self!@0 vstd.tokens.SetToken.)
 (declare-const token! Poly)
 (declare-const tmp%1 vstd.tokens.SetToken.)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Poly)
 (declare-const tmp%4 vstd.tokens.SetToken.)
 (declare-const tmp%5 Bool)
 (declare-const tmp%6 Bool)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.tokens.SetToken. self!@0) (TYPE%vstd.tokens.SetToken. Element&.
    Element& Token&. Token&
 )))
 (assert
  (has_type token! Token&)
 )
 (assert
  (tr_bound%vstd.tokens.ElementToken. Token&. Token& Element&. Element&)
 )
 (assert
  (= (vstd.tokens.impl&%1.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
     self!@0
    )
   ) (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? Token&. Token&
     Element&. Element& token!
 ))))
 (declare-const self!@1 vstd.tokens.SetToken.)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (= tmp%1 self!@0)
    (=>
     (= tmp%2 (vstd.tokens.impl&%1.wf.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
        tmp%1
     )))
     (=>
      tmp%2
      (=>
       (= tmp%3 (vstd.tokens.ElementToken.element.? Token&. Token& Element&. Element& token!))
       (=>
        (and
         (= (vstd.tokens.SetToken./SetToken/inst self!@0) (vstd.tokens.SetToken./SetToken/inst
           self!@1
        )))
        (=>
         (has_type (Poly%vstd.tokens.SetToken. self!@1) (TYPE%vstd.tokens.SetToken. Element&.
           Element& Token&. Token&
         ))
         (=>
          (ens%vstd.map.impl&%0.tracked_insert. Element&. Element& Token&. Token& (vstd.tokens.SetToken./SetToken/m
            (%Poly%vstd.tokens.SetToken. (Poly%vstd.tokens.SetToken. self!@0))
           ) (vstd.tokens.SetToken./SetToken/m (%Poly%vstd.tokens.SetToken. (Poly%vstd.tokens.SetToken.
              self!@1
            ))
           ) tmp%3 token!
          )
          (=>
           (= tmp%4 self!@1)
           (=>
            (= tmp%5 (vstd.tokens.impl&%1.wf.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
               tmp%4
            )))
            (and
             (=>
              %%location_label%%0
              tmp%5
             )
             (=>
              tmp%5
              (=>
               (= tmp%6 (ext_eq false (TYPE%vstd.set.Set. Element&. Element&) (vstd.tokens.impl&%1.set.?
                  Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken. self!@1)
                 ) (vstd.set.impl&%0.insert.? Element&. Element& (vstd.tokens.impl&%1.set.? Element&.
                   Element& Token&. Token& (Poly%vstd.tokens.SetToken. self!@0)
                  ) (vstd.tokens.ElementToken.element.? Token&. Token& Element&. Element& token!)
               )))
               (and
                (=>
                 %%location_label%%1
                 tmp%6
                )
                (=>
                 tmp%6
                 (and
                  (=>
                   %%location_label%%2
                   (= (vstd.tokens.impl&%1.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
                      self!@1
                     )
                    ) (vstd.tokens.impl&%1.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
                      self!@0
                  ))))
                  (=>
                   %%location_label%%3
                   (= (vstd.tokens.impl&%1.set.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
                      self!@1
                     )
                    ) (vstd.set.impl&%0.insert.? Element&. Element& (vstd.tokens.impl&%1.set.? Element&.
                      Element& Token&. Token& (Poly%vstd.tokens.SetToken. self!@0)
                     ) (vstd.tokens.ElementToken.element.? Token&. Token& Element&. Element& token!)
 ))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::tokens::SetToken::remove
(declare-fun req%vstd.tokens.impl&%1.remove. (Dcr Type Dcr Type vstd.tokens.SetToken.
  Poly
 ) Bool
)
(declare-const %%global_location_label%%19 Bool)
(assert
 (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (pre%self! vstd.tokens.SetToken.)
   (element! Poly)
  ) (!
   (= (req%vstd.tokens.impl&%1.remove. Element&. Element& Token&. Token& pre%self! element!)
    (=>
     %%global_location_label%%19
     (vstd.set.impl&%0.contains.? Element&. Element& (vstd.tokens.impl&%1.set.? Element&.
       Element& Token&. Token& (Poly%vstd.tokens.SetToken. pre%self!)
      ) element!
   )))
   :pattern ((req%vstd.tokens.impl&%1.remove. Element&. Element& Token&. Token& pre%self!
     element!
   ))
   :qid internal_req__vstd.tokens.impl&__1.remove._definition
   :skolemid skolem_internal_req__vstd.tokens.impl&__1.remove._definition
)))
(declare-fun ens%vstd.tokens.impl&%1.remove. (Dcr Type Dcr Type vstd.tokens.SetToken.
  vstd.tokens.SetToken. Poly Poly
 ) Bool
)
(assert
 (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (pre%self! vstd.tokens.SetToken.)
   (self! vstd.tokens.SetToken.) (element! Poly) (token! Poly)
  ) (!
   (= (ens%vstd.tokens.impl&%1.remove. Element&. Element& Token&. Token& pre%self! self!
     element! token!
    ) (and
     (has_type token! Token&)
     (has_type (Poly%vstd.tokens.SetToken. self!) (TYPE%vstd.tokens.SetToken. Element&.
       Element& Token&. Token&
     ))
     (= (vstd.tokens.impl&%1.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
        self!
       )
      ) (vstd.tokens.impl&%1.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
        pre%self!
     )))
     (= (vstd.tokens.impl&%1.set.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
        self!
       )
      ) (vstd.set.impl&%0.remove.? Element&. Element& (vstd.tokens.impl&%1.set.? Element&.
        Element& Token&. Token& (Poly%vstd.tokens.SetToken. pre%self!)
       ) element!
     ))
     (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? Token&. Token&
        Element&. Element& token!
       )
      ) (vstd.tokens.impl&%1.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
        self!
     )))
     (= (vstd.tokens.ElementToken.element.? Token&. Token& Element&. Element& token!) element!)
   ))
   :pattern ((ens%vstd.tokens.impl&%1.remove. Element&. Element& Token&. Token& pre%self!
     self! element! token!
   ))
   :qid internal_ens__vstd.tokens.impl&__1.remove._definition
   :skolemid skolem_internal_ens__vstd.tokens.impl&__1.remove._definition
)))

;; Function-Def crate::vstd::tokens::SetToken::remove
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/tokens.rs:414:5: 414:86 (#0)
(get-info :all-statistics)
(push)
 (declare-const Element&. Dcr)
 (declare-const Element& Type)
 (declare-const Token&. Dcr)
 (declare-const Token& Type)
 (declare-const token! Poly)
 (declare-const self!@0 vstd.tokens.SetToken.)
 (declare-const element! Poly)
 (declare-const tmp%1 vstd.tokens.SetToken.)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 vstd.tokens.SetToken.)
 (declare-const tmp%4 Bool)
 (declare-const tmp@ Poly)
 (declare-const tmp%5 Bool)
 (declare-const t@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.tokens.SetToken. self!@0) (TYPE%vstd.tokens.SetToken. Element&.
    Element& Token&. Token&
 )))
 (assert
  (has_type element! Element&)
 )
 (assert
  (tr_bound%vstd.tokens.ElementToken. Token&. Token& Element&. Element&)
 )
 (assert
  (vstd.set.impl&%0.contains.? Element&. Element& (vstd.tokens.impl&%1.set.? Element&.
    Element& Token&. Token& (Poly%vstd.tokens.SetToken. self!@0)
   ) element!
 ))
 (declare-const self!@1 vstd.tokens.SetToken.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%1 Bool)
 ;; assertion failed
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%4 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%5 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%6 Bool)
 (assert
  (not (=>
    (= tmp%1 self!@0)
    (=>
     (= tmp%2 (vstd.tokens.impl&%1.wf.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
        tmp%1
     )))
     (=>
      tmp%2
      (and
       (=>
        %%location_label%%0
        (req%vstd.map.impl&%0.tracked_remove. Element&. Element& Token&. Token& (vstd.tokens.SetToken./SetToken/m
          (%Poly%vstd.tokens.SetToken. (Poly%vstd.tokens.SetToken. self!@0))
         ) element!
       ))
       (=>
        (and
         (= (vstd.tokens.SetToken./SetToken/inst self!@0) (vstd.tokens.SetToken./SetToken/inst
           self!@1
        )))
        (=>
         (has_type (Poly%vstd.tokens.SetToken. self!@1) (TYPE%vstd.tokens.SetToken. Element&.
           Element& Token&. Token&
         ))
         (=>
          (ens%vstd.map.impl&%0.tracked_remove. Element&. Element& Token&. Token& (vstd.tokens.SetToken./SetToken/m
            (%Poly%vstd.tokens.SetToken. (Poly%vstd.tokens.SetToken. self!@0))
           ) (vstd.tokens.SetToken./SetToken/m (%Poly%vstd.tokens.SetToken. (Poly%vstd.tokens.SetToken.
              self!@1
            ))
           ) element! tmp@
          )
          (=>
           (= tmp%3 self!@1)
           (=>
            (= tmp%4 (vstd.tokens.impl&%1.wf.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
               tmp%3
            )))
            (and
             (=>
              %%location_label%%1
              tmp%4
             )
             (=>
              tmp%4
              (=>
               (= t@ tmp@)
               (=>
                (= tmp%5 (ext_eq false (TYPE%vstd.set.Set. Element&. Element&) (vstd.tokens.impl&%1.set.?
                   Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken. self!@1)
                  ) (vstd.set.impl&%0.remove.? Element&. Element& (vstd.tokens.impl&%1.set.? Element&.
                    Element& Token&. Token& (Poly%vstd.tokens.SetToken. self!@0)
                   ) element!
                )))
                (and
                 (=>
                  %%location_label%%2
                  tmp%5
                 )
                 (=>
                  tmp%5
                  (=>
                   (= token! t@)
                   (and
                    (=>
                     %%location_label%%3
                     (= (vstd.tokens.impl&%1.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
                        self!@1
                       )
                      ) (vstd.tokens.impl&%1.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
                        self!@0
                    ))))
                    (and
                     (=>
                      %%location_label%%4
                      (= (vstd.tokens.impl&%1.set.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
                         self!@1
                        )
                       ) (vstd.set.impl&%0.remove.? Element&. Element& (vstd.tokens.impl&%1.set.? Element&.
                         Element& Token&. Token& (Poly%vstd.tokens.SetToken. self!@0)
                        ) element!
                     )))
                     (and
                      (=>
                       %%location_label%%5
                       (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? Token&. Token&
                          Element&. Element& token!
                         )
                        ) (vstd.tokens.impl&%1.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
                          self!@1
                      ))))
                      (=>
                       %%location_label%%6
                       (= (vstd.tokens.ElementToken.element.? Token&. Token& Element&. Element& token!) element!)
 ))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::tokens::SetToken::into_map
(declare-fun ens%vstd.tokens.impl&%1.into_map. (Dcr Type Dcr Type vstd.tokens.SetToken.
  Poly
 ) Bool
)
(assert
 (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (self! vstd.tokens.SetToken.)
   (map! Poly)
  ) (!
   (= (ens%vstd.tokens.impl&%1.into_map. Element&. Element& Token&. Token& self! map!)
    (and
     (has_type map! (TYPE%vstd.map.Map. Element&. Element& Token&. Token&))
     (= (vstd.map.impl&%0.dom.? Element&. Element& Token&. Token& map!) (vstd.tokens.impl&%1.set.?
       Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken. self!)
     ))
     (forall ((key$ Poly)) (!
       (=>
        (has_type key$ Element&)
        (=>
         (vstd.set.impl&%0.contains.? Element&. Element& (vstd.map.impl&%0.dom.? Element&. Element&
           Token&. Token& map!
          ) key$
         )
         (and
          (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? Token&. Token&
             Element&. Element& (vstd.map.impl&%0.index.? Element&. Element& Token&. Token& map!
              key$
            ))
           ) (vstd.tokens.impl&%1.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
             self!
          )))
          (= (vstd.tokens.ElementToken.element.? Token&. Token& Element&. Element& (vstd.map.impl&%0.index.?
             Element&. Element& Token&. Token& map! key$
            )
           ) key$
       ))))
       :pattern ((vstd.set.impl&%0.contains.? Element&. Element& (vstd.map.impl&%0.dom.? Element&.
          Element& Token&. Token& map!
         ) key$
       ))
       :pattern ((vstd.map.impl&%0.index.? Element&. Element& Token&. Token& map! key$))
       :qid user_crate__vstd__tokens__SetToken__into_map_49
       :skolemid skolem_user_crate__vstd__tokens__SetToken__into_map_49
   ))))
   :pattern ((ens%vstd.tokens.impl&%1.into_map. Element&. Element& Token&. Token& self!
     map!
   ))
   :qid internal_ens__vstd.tokens.impl&__1.into_map._definition
   :skolemid skolem_internal_ens__vstd.tokens.impl&__1.into_map._definition
)))

;; Function-Def crate::vstd::tokens::SetToken::into_map
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/tokens.rs:429:5: 429:77 (#0)
(get-info :all-statistics)
(push)
 (declare-const Element&. Dcr)
 (declare-const Element& Type)
 (declare-const Token&. Dcr)
 (declare-const Token& Type)
 (declare-const map! Poly)
 (declare-const self! vstd.tokens.SetToken.)
 (declare-const tmp%1 vstd.tokens.SetToken.)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const inst@ vstd.tokens.InstanceId.)
 (declare-const m@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.tokens.SetToken. self!) (TYPE%vstd.tokens.SetToken. Element&.
    Element& Token&. Token&
 )))
 (assert
  (tr_bound%vstd.tokens.ElementToken. Token&. Token& Element&. Element&)
 )
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (= tmp%1 self!)
    (=>
     (= tmp%2 (vstd.tokens.impl&%1.wf.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
        tmp%1
     )))
     (=>
      tmp%2
      (=>
       (= inst@ (vstd.tokens.SetToken./SetToken/inst (%Poly%vstd.tokens.SetToken. (Poly%vstd.tokens.SetToken.
           self!
       ))))
       (=>
        (= m@ (vstd.tokens.SetToken./SetToken/m (%Poly%vstd.tokens.SetToken. (Poly%vstd.tokens.SetToken.
            self!
        ))))
        (=>
         (= tmp%3 (ext_eq false (TYPE%vstd.set.Set. Element&. Element&) (vstd.map.impl&%0.dom.?
            Element&. Element& Token&. Token& m@
           ) (vstd.tokens.impl&%1.set.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
             self!
         ))))
         (and
          (=>
           %%location_label%%0
           tmp%3
          )
          (=>
           tmp%3
           (=>
            (= map! m@)
            (and
             (=>
              %%location_label%%1
              (= (vstd.map.impl&%0.dom.? Element&. Element& Token&. Token& map!) (vstd.tokens.impl&%1.set.?
                Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken. self!)
             )))
             (=>
              %%location_label%%2
              (forall ((key$ Poly)) (!
                (=>
                 (has_type key$ Element&)
                 (=>
                  (vstd.set.impl&%0.contains.? Element&. Element& (vstd.map.impl&%0.dom.? Element&. Element&
                    Token&. Token& map!
                   ) key$
                  )
                  (and
                   (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? Token&. Token&
                      Element&. Element& (vstd.map.impl&%0.index.? Element&. Element& Token&. Token& map!
                       key$
                     ))
                    ) (vstd.tokens.impl&%1.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
                      self!
                   )))
                   (= (vstd.tokens.ElementToken.element.? Token&. Token& Element&. Element& (vstd.map.impl&%0.index.?
                      Element&. Element& Token&. Token& map! key$
                     )
                    ) key$
                ))))
                :pattern ((vstd.set.impl&%0.contains.? Element&. Element& (vstd.map.impl&%0.dom.? Element&.
                   Element& Token&. Token& map!
                  ) key$
                ))
                :pattern ((vstd.map.impl&%0.index.? Element&. Element& Token&. Token& map! key$))
                :qid user_crate__vstd__tokens__SetToken__into_map_50
                :skolemid skolem_user_crate__vstd__tokens__SetToken__into_map_50
 )))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::tokens::SetToken::from_map
(declare-fun req%vstd.tokens.impl&%1.from_map. (Dcr Type Dcr Type vstd.tokens.InstanceId.
  Poly
 ) Bool
)
(declare-const %%global_location_label%%20 Bool)
(declare-const %%global_location_label%%21 Bool)
(assert
 (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (instance_id! vstd.tokens.InstanceId.)
   (map! Poly)
  ) (!
   (= (req%vstd.tokens.impl&%1.from_map. Element&. Element& Token&. Token& instance_id!
     map!
    ) (and
     (=>
      %%global_location_label%%20
      (forall ((key$ Poly)) (!
        (=>
         (has_type key$ Element&)
         (=>
          (vstd.set.impl&%0.contains.? Element&. Element& (vstd.map.impl&%0.dom.? Element&. Element&
            Token&. Token& map!
           ) key$
          )
          (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? Token&. Token&
             Element&. Element& (vstd.map.impl&%0.index.? Element&. Element& Token&. Token& map!
              key$
            ))
           ) instance_id!
        )))
        :pattern ((vstd.set.impl&%0.contains.? Element&. Element& (vstd.map.impl&%0.dom.? Element&.
           Element& Token&. Token& map!
          ) key$
        ))
        :qid user_crate__vstd__tokens__SetToken__from_map_51
        :skolemid skolem_user_crate__vstd__tokens__SetToken__from_map_51
     )))
     (=>
      %%global_location_label%%21
      (forall ((key$ Poly)) (!
        (=>
         (has_type key$ Element&)
         (=>
          (vstd.set.impl&%0.contains.? Element&. Element& (vstd.map.impl&%0.dom.? Element&. Element&
            Token&. Token& map!
           ) key$
          )
          (= (vstd.tokens.ElementToken.element.? Token&. Token& Element&. Element& (vstd.map.impl&%0.index.?
             Element&. Element& Token&. Token& map! key$
            )
           ) key$
        )))
        :pattern ((vstd.set.impl&%0.contains.? Element&. Element& (vstd.map.impl&%0.dom.? Element&.
           Element& Token&. Token& map!
          ) key$
        ))
        :qid user_crate__vstd__tokens__SetToken__from_map_52
        :skolemid skolem_user_crate__vstd__tokens__SetToken__from_map_52
   )))))
   :pattern ((req%vstd.tokens.impl&%1.from_map. Element&. Element& Token&. Token& instance_id!
     map!
   ))
   :qid internal_req__vstd.tokens.impl&__1.from_map._definition
   :skolemid skolem_internal_req__vstd.tokens.impl&__1.from_map._definition
)))
(declare-fun ens%vstd.tokens.impl&%1.from_map. (Dcr Type Dcr Type vstd.tokens.InstanceId.
  Poly vstd.tokens.SetToken.
 ) Bool
)
(assert
 (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (instance_id! vstd.tokens.InstanceId.)
   (map! Poly) (s! vstd.tokens.SetToken.)
  ) (!
   (= (ens%vstd.tokens.impl&%1.from_map. Element&. Element& Token&. Token& instance_id!
     map! s!
    ) (and
     (has_type (Poly%vstd.tokens.SetToken. s!) (TYPE%vstd.tokens.SetToken. Element&. Element&
       Token&. Token&
     ))
     (= (vstd.tokens.impl&%1.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
        s!
       )
      ) instance_id!
     )
     (= (vstd.tokens.impl&%1.set.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
        s!
       )
      ) (vstd.map.impl&%0.dom.? Element&. Element& Token&. Token& map!)
   )))
   :pattern ((ens%vstd.tokens.impl&%1.from_map. Element&. Element& Token&. Token& instance_id!
     map! s!
   ))
   :qid internal_ens__vstd.tokens.impl&__1.from_map._definition
   :skolemid skolem_internal_ens__vstd.tokens.impl&__1.from_map._definition
)))

;; Function-Def crate::vstd::tokens::SetToken::from_map
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/tokens.rs:445:5: 445:105 (#0)
(get-info :all-statistics)
(push)
 (declare-const Element&. Dcr)
 (declare-const Element& Type)
 (declare-const Token&. Dcr)
 (declare-const Token& Type)
 (declare-const s! vstd.tokens.SetToken.)
 (declare-const instance_id! vstd.tokens.InstanceId.)
 (declare-const map! Poly)
 (declare-const tmp%1 vstd.tokens.SetToken.)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const s@ vstd.tokens.SetToken.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type map! (TYPE%vstd.map.Map. Element&. Element& Token&. Token&))
 )
 (assert
  (tr_bound%vstd.tokens.ElementToken. Token&. Token& Element&. Element&)
 )
 (assert
  (forall ((key$ Poly)) (!
    (=>
     (has_type key$ Element&)
     (=>
      (vstd.set.impl&%0.contains.? Element&. Element& (vstd.map.impl&%0.dom.? Element&. Element&
        Token&. Token& map!
       ) key$
      )
      (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? Token&. Token&
         Element&. Element& (vstd.map.impl&%0.index.? Element&. Element& Token&. Token& map!
          key$
        ))
       ) instance_id!
    )))
    :pattern ((vstd.set.impl&%0.contains.? Element&. Element& (vstd.map.impl&%0.dom.? Element&.
       Element& Token&. Token& map!
      ) key$
    ))
    :qid user_crate__vstd__tokens__SetToken__from_map_53
    :skolemid skolem_user_crate__vstd__tokens__SetToken__from_map_53
 )))
 (assert
  (forall ((key$ Poly)) (!
    (=>
     (has_type key$ Element&)
     (=>
      (vstd.set.impl&%0.contains.? Element&. Element& (vstd.map.impl&%0.dom.? Element&. Element&
        Token&. Token& map!
       ) key$
      )
      (= (vstd.tokens.ElementToken.element.? Token&. Token& Element&. Element& (vstd.map.impl&%0.index.?
         Element&. Element& Token&. Token& map! key$
        )
       ) key$
    )))
    :pattern ((vstd.set.impl&%0.contains.? Element&. Element& (vstd.map.impl&%0.dom.? Element&.
       Element& Token&. Token& map!
      ) key$
    ))
    :qid user_crate__vstd__tokens__SetToken__from_map_54
    :skolemid skolem_user_crate__vstd__tokens__SetToken__from_map_54
 )))
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (= tmp%1 (vstd.tokens.SetToken./SetToken (%Poly%vstd.tokens.InstanceId. (Poly%vstd.tokens.InstanceId.
        instance_id!
       )
      ) map!
    ))
    (=>
     (= tmp%2 (vstd.tokens.impl&%1.wf.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
        tmp%1
     )))
     (and
      (=>
       %%location_label%%0
       tmp%2
      )
      (=>
       tmp%2
       (=>
        (= s@ tmp%1)
        (=>
         (= tmp%3 (ext_eq false (TYPE%vstd.set.Set. Element&. Element&) (vstd.tokens.impl&%1.set.?
            Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken. s@)
           ) (vstd.map.impl&%0.dom.? Element&. Element& Token&. Token& map!)
         ))
         (and
          (=>
           %%location_label%%1
           tmp%3
          )
          (=>
           tmp%3
           (=>
            (= s! s@)
            (and
             (=>
              %%location_label%%2
              (= (vstd.tokens.impl&%1.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
                 s!
                )
               ) instance_id!
             ))
             (=>
              %%location_label%%3
              (= (vstd.tokens.impl&%1.set.? Element&. Element& Token&. Token& (Poly%vstd.tokens.SetToken.
                 s!
                )
               ) (vstd.map.impl&%0.dom.? Element&. Element& Token&. Token& map!)
 ))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::tokens::map_values_insert_not_in
(declare-fun req%vstd.tokens.map_values_insert_not_in. (Dcr Type Dcr Type Poly Poly
  Poly
 ) Bool
)
(declare-const %%global_location_label%%22 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (k! Poly) (v! Poly)) (!
   (= (req%vstd.tokens.map_values_insert_not_in. K&. K& V&. V& m! k! v!) (=>
     %%global_location_label%%22
     (not (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!)
       k!
   ))))
   :pattern ((req%vstd.tokens.map_values_insert_not_in. K&. K& V&. V& m! k! v!))
   :qid internal_req__vstd.tokens.map_values_insert_not_in._definition
   :skolemid skolem_internal_req__vstd.tokens.map_values_insert_not_in._definition
)))
(declare-fun ens%vstd.tokens.map_values_insert_not_in. (Dcr Type Dcr Type Poly Poly
  Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (k! Poly) (v! Poly)) (!
   (= (ens%vstd.tokens.map_values_insert_not_in. K&. K& V&. V& m! k! v!) (= (vstd.tokens.map_values.?
      K&. K& V&. V& (vstd.map.impl&%0.insert.? K&. K& V&. V& m! k! v!)
     ) (vstd.multiset.impl&%0.insert.? V&. V& (vstd.tokens.map_values.? K&. K& V&. V& m!)
      v!
   )))
   :pattern ((ens%vstd.tokens.map_values_insert_not_in. K&. K& V&. V& m! k! v!))
   :qid internal_ens__vstd.tokens.map_values_insert_not_in._definition
   :skolemid skolem_internal_ens__vstd.tokens.map_values_insert_not_in._definition
)))

;; Function-Def crate::vstd::tokens::map_values_insert_not_in
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/tokens.rs:471:7: 471:66 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m! Poly)
 (declare-const k! Poly)
 (declare-const v! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (has_type k! K&)
 )
 (assert
  (has_type v! V&)
 )
 (assert
  (not (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!)
    k!
 )))
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::tokens::map_values_remove
(declare-fun req%vstd.tokens.map_values_remove. (Dcr Type Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%23 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (k! Poly)) (!
   (= (req%vstd.tokens.map_values_remove. K&. K& V&. V& m! k!) (=>
     %%global_location_label%%23
     (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!) k!)
   ))
   :pattern ((req%vstd.tokens.map_values_remove. K&. K& V&. V& m! k!))
   :qid internal_req__vstd.tokens.map_values_remove._definition
   :skolemid skolem_internal_req__vstd.tokens.map_values_remove._definition
)))
(declare-fun ens%vstd.tokens.map_values_remove. (Dcr Type Dcr Type Poly Poly) Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (k! Poly)) (!
   (= (ens%vstd.tokens.map_values_remove. K&. K& V&. V& m! k!) (= (vstd.tokens.map_values.?
      K&. K& V&. V& (vstd.map.impl&%0.remove.? K&. K& V&. V& m! k!)
     ) (vstd.multiset.impl&%0.remove.? V&. V& (vstd.tokens.map_values.? K&. K& V&. V& m!)
      (vstd.map.impl&%0.index.? K&. K& V&. V& m! k!)
   )))
   :pattern ((ens%vstd.tokens.map_values_remove. K&. K& V&. V& m! k!))
   :qid internal_ens__vstd.tokens.map_values_remove._definition
   :skolemid skolem_internal_ens__vstd.tokens.map_values_remove._definition
)))

;; Function-Def crate::vstd::tokens::map_values_remove
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/tokens.rs:480:7: 480:53 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m! Poly)
 (declare-const k! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (has_type k! K&)
 )
 (assert
  (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!) k!)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::tokens::fresh_is_fresh
(declare-fun req%vstd.tokens.fresh_is_fresh. (vstd.set.Set<int.>.) Bool)
(declare-const %%global_location_label%%24 Bool)
(assert
 (forall ((s! vstd.set.Set<int.>.)) (!
   (= (req%vstd.tokens.fresh_is_fresh. s!) (=>
     %%global_location_label%%24
     (vstd.set.impl&%0.finite.? $ INT (Poly%vstd.set.Set<int.>. s!))
   ))
   :pattern ((req%vstd.tokens.fresh_is_fresh. s!))
   :qid internal_req__vstd.tokens.fresh_is_fresh._definition
   :skolemid skolem_internal_req__vstd.tokens.fresh_is_fresh._definition
)))
(declare-fun ens%vstd.tokens.fresh_is_fresh. (vstd.set.Set<int.>.) Bool)
(assert
 (forall ((s! vstd.set.Set<int.>.)) (!
   (= (ens%vstd.tokens.fresh_is_fresh. s!) (not (vstd.set.impl&%0.contains.? $ INT (Poly%vstd.set.Set<int.>.
       s!
      ) (I (vstd.tokens.fresh.? (Poly%vstd.set.Set<int.>. s!)))
   )))
   :pattern ((ens%vstd.tokens.fresh_is_fresh. s!))
   :qid internal_ens__vstd.tokens.fresh_is_fresh._definition
   :skolemid skolem_internal_ens__vstd.tokens.fresh_is_fresh._definition
)))

;; Function-Def crate::vstd::tokens::fresh_is_fresh
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/tokens.rs:496:7: 496:37 (#0)
(get-info :all-statistics)
(push)
 (declare-const s! vstd.set.Set<int.>.)
 (assert
  fuel_defaults
 )
 (assert
  (vstd.set.impl&%0.finite.? $ INT (Poly%vstd.set.Set<int.>. s!))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::tokens::get_key_for_value
(declare-fun req%vstd.tokens.get_key_for_value. (Dcr Type Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%25 Bool)
(declare-const %%global_location_label%%26 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (value! Poly)) (!
   (= (req%vstd.tokens.get_key_for_value. K&. K& V&. V& m! value!) (and
     (=>
      %%global_location_label%%25
      (vstd.multiset.impl&%0.contains.? V&. V& (vstd.tokens.map_values.? K&. K& V&. V& m!)
       value!
     ))
     (=>
      %%global_location_label%%26
      (vstd.set.impl&%0.finite.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!))
   )))
   :pattern ((req%vstd.tokens.get_key_for_value. K&. K& V&. V& m! value!))
   :qid internal_req__vstd.tokens.get_key_for_value._definition
   :skolemid skolem_internal_req__vstd.tokens.get_key_for_value._definition
)))
(declare-fun ens%vstd.tokens.get_key_for_value. (Dcr Type Dcr Type Poly Poly Poly)
 Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly) (value! Poly) (k! Poly))
  (!
   (= (ens%vstd.tokens.get_key_for_value. K&. K& V&. V& m! value! k!) (and
     (has_type k! K&)
     (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!) k!)
     (= (vstd.map.impl&%0.index.? K&. K& V&. V& m! k!) value!)
   ))
   :pattern ((ens%vstd.tokens.get_key_for_value. K&. K& V&. V& m! value! k!))
   :qid internal_ens__vstd.tokens.get_key_for_value._definition
   :skolemid skolem_internal_ens__vstd.tokens.get_key_for_value._definition
)))

;; Function-Def crate::vstd::tokens::get_key_for_value
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/tokens.rs:503:7: 503:66 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const k! Poly)
 (declare-const m! Poly)
 (declare-const value! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (has_type value! V&)
 )
 (assert
  (vstd.multiset.impl&%0.contains.? V&. V& (vstd.tokens.map_values.? K&. K& V&. V& m!)
   value!
 ))
 (assert
  (vstd.set.impl&%0.finite.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::tokens::MultisetToken::empty
(declare-fun ens%vstd.tokens.impl&%2.empty. (Dcr Type Dcr Type vstd.tokens.InstanceId.
  vstd.tokens.MultisetToken.
 ) Bool
)
(assert
 (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (instance_id! vstd.tokens.InstanceId.)
   (s! vstd.tokens.MultisetToken.)
  ) (!
   (= (ens%vstd.tokens.impl&%2.empty. Element&. Element& Token&. Token& instance_id! s!)
    (and
     (has_type (Poly%vstd.tokens.MultisetToken. s!) (TYPE%vstd.tokens.MultisetToken. Element&.
       Element& Token&. Token&
     ))
     (= (vstd.tokens.impl&%2.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken.
        s!
       )
      ) instance_id!
     )
     (= (vstd.tokens.impl&%2.multiset.? Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken.
        s!
       )
      ) (vstd.multiset.impl&%0.empty.? Element&. Element&)
   )))
   :pattern ((ens%vstd.tokens.impl&%2.empty. Element&. Element& Token&. Token& instance_id!
     s!
   ))
   :qid internal_ens__vstd.tokens.impl&__2.empty._definition
   :skolemid skolem_internal_ens__vstd.tokens.impl&__2.empty._definition
)))

;; Function-Def crate::vstd::tokens::MultisetToken::empty
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/tokens.rs:533:5: 533:68 (#0)
(get-info :all-statistics)
(push)
 (declare-const Element&. Dcr)
 (declare-const Element& Type)
 (declare-const Token&. Dcr)
 (declare-const Token& Type)
 (declare-const s! vstd.tokens.MultisetToken.)
 (declare-const instance_id! vstd.tokens.InstanceId.)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 vstd.tokens.MultisetToken.)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Bool)
 (declare-const s@ vstd.tokens.MultisetToken.)
 (assert
  fuel_defaults
 )
 (assert
  (tr_bound%vstd.tokens.ElementToken. Token&. Token& Element&. Element&)
 )
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%0 Bool)
 ;; assertion failed
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (ens%vstd.map.impl&%0.tracked_empty. $ INT Token&. Token& tmp%1)
    (=>
     (= tmp%2 (vstd.tokens.MultisetToken./MultisetToken (%Poly%core!marker.PhantomData. (
         Poly%core!marker.PhantomData. core!marker.PhantomData./PhantomData
        )
       ) (%Poly%vstd.tokens.InstanceId. (Poly%vstd.tokens.InstanceId. instance_id!)) tmp%1
     ))
     (=>
      (= tmp%3 (vstd.tokens.impl&%2.wf.? Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken.
         tmp%2
      )))
      (and
       (=>
        %%location_label%%0
        tmp%3
       )
       (=>
        tmp%3
        (=>
         (= s@ tmp%2)
         (=>
          (= tmp%4 (ext_eq false (TYPE%vstd.map.Map. $ INT Element&. Element&) (vstd.tokens.impl&%2.map_elems.?
             Element&. Element& Token&. Token& (vstd.map.impl&%0.empty.? $ INT Token&. Token&)
            ) (vstd.map.impl&%0.empty.? $ INT Element&. Element&)
          ))
          (and
           (=>
            %%location_label%%1
            tmp%4
           )
           (=>
            tmp%4
            (=>
             (= s! s@)
             (and
              (=>
               %%location_label%%2
               (= (vstd.tokens.impl&%2.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken.
                  s!
                 )
                ) instance_id!
              ))
              (=>
               %%location_label%%3
               (= (vstd.tokens.impl&%2.multiset.? Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken.
                  s!
                 )
                ) (vstd.multiset.impl&%0.empty.? Element&. Element&)
 )))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::tokens::MultisetToken::insert
(declare-fun req%vstd.tokens.impl&%2.insert. (Dcr Type Dcr Type vstd.tokens.MultisetToken.
  Poly
 ) Bool
)
(declare-const %%global_location_label%%27 Bool)
(assert
 (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (pre%self! vstd.tokens.MultisetToken.)
   (token! Poly)
  ) (!
   (= (req%vstd.tokens.impl&%2.insert. Element&. Element& Token&. Token& pre%self! token!)
    (=>
     %%global_location_label%%27
     (= (vstd.tokens.impl&%2.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken.
        pre%self!
       )
      ) (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? Token&. Token&
        Element&. Element& token!
   )))))
   :pattern ((req%vstd.tokens.impl&%2.insert. Element&. Element& Token&. Token& pre%self!
     token!
   ))
   :qid internal_req__vstd.tokens.impl&__2.insert._definition
   :skolemid skolem_internal_req__vstd.tokens.impl&__2.insert._definition
)))
(declare-fun ens%vstd.tokens.impl&%2.insert. (Dcr Type Dcr Type vstd.tokens.MultisetToken.
  vstd.tokens.MultisetToken. Poly
 ) Bool
)
(assert
 (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (pre%self! vstd.tokens.MultisetToken.)
   (self! vstd.tokens.MultisetToken.) (token! Poly)
  ) (!
   (= (ens%vstd.tokens.impl&%2.insert. Element&. Element& Token&. Token& pre%self! self!
     token!
    ) (and
     (has_type (Poly%vstd.tokens.MultisetToken. self!) (TYPE%vstd.tokens.MultisetToken.
       Element&. Element& Token&. Token&
     ))
     (= (vstd.tokens.impl&%2.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken.
        self!
       )
      ) (vstd.tokens.impl&%2.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken.
        pre%self!
     )))
     (= (vstd.tokens.impl&%2.multiset.? Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken.
        self!
       )
      ) (vstd.multiset.impl&%0.insert.? Element&. Element& (vstd.tokens.impl&%2.multiset.?
        Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken. pre%self!)
       ) (vstd.tokens.ElementToken.element.? Token&. Token& Element&. Element& token!)
   ))))
   :pattern ((ens%vstd.tokens.impl&%2.insert. Element&. Element& Token&. Token& pre%self!
     self! token!
   ))
   :qid internal_ens__vstd.tokens.impl&__2.insert._definition
   :skolemid skolem_internal_ens__vstd.tokens.impl&__2.insert._definition
)))

;; Function-Def crate::vstd::tokens::MultisetToken::insert
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/tokens.rs:543:5: 543:65 (#0)
(get-info :all-statistics)
(push)
 (declare-const Element&. Dcr)
 (declare-const Element& Type)
 (declare-const Token&. Dcr)
 (declare-const Token& Type)
 (declare-const self!@0 vstd.tokens.MultisetToken.)
 (declare-const token! Poly)
 (declare-const tmp%1 vstd.tokens.MultisetToken.)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 vstd.set.Set<int.>.)
 (declare-const tmp%4 Poly)
 (declare-const tmp%5 Poly)
 (declare-const tmp%6 vstd.tokens.MultisetToken.)
 (declare-const tmp%7 Bool)
 (declare-const tmp%8 Bool)
 (declare-const tmp%9 Bool)
 (declare-const f@ Int)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.tokens.MultisetToken. self!@0) (TYPE%vstd.tokens.MultisetToken.
    Element&. Element& Token&. Token&
 )))
 (assert
  (has_type token! Token&)
 )
 (assert
  (tr_bound%vstd.tokens.ElementToken. Token&. Token& Element&. Element&)
 )
 (assert
  (= (vstd.tokens.impl&%2.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken.
     self!@0
    )
   ) (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? Token&. Token&
     Element&. Element& token!
 ))))
 (declare-const self!@1 vstd.tokens.MultisetToken.)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%2 Bool)
 ;; assertion failed
 (declare-const %%location_label%%3 Bool)
 ;; assertion failed
 (declare-const %%location_label%%4 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%5 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%6 Bool)
 (assert
  (not (=>
    (= tmp%1 self!@0)
    (=>
     (= tmp%2 (vstd.tokens.impl&%2.wf.? Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken.
        tmp%1
     )))
     (=>
      tmp%2
      (=>
       (= f@ (vstd.tokens.fresh.? (vstd.map.impl&%0.dom.? $ INT Token&. Token& (vstd.tokens.MultisetToken./MultisetToken/m
           (%Poly%vstd.tokens.MultisetToken. (Poly%vstd.tokens.MultisetToken. self!@0))
       ))))
       (=>
        (= tmp%3 (%Poly%vstd.set.Set<int.>. (vstd.map.impl&%0.dom.? $ INT Token&. Token& (vstd.tokens.MultisetToken./MultisetToken/m
            (%Poly%vstd.tokens.MultisetToken. (Poly%vstd.tokens.MultisetToken. self!@0))
        ))))
        (and
         (=>
          %%location_label%%0
          (req%vstd.tokens.fresh_is_fresh. tmp%3)
         )
         (=>
          (ens%vstd.tokens.fresh_is_fresh. tmp%3)
          (=>
           (= tmp%4 (vstd.tokens.impl&%2.map_elems.? Element&. Element& Token&. Token& (vstd.tokens.MultisetToken./MultisetToken/m
              (%Poly%vstd.tokens.MultisetToken. (Poly%vstd.tokens.MultisetToken. self!@0))
           )))
           (=>
            (= tmp%5 (vstd.tokens.ElementToken.element.? Token&. Token& Element&. Element& token!))
            (and
             (=>
              %%location_label%%1
              (req%vstd.tokens.map_values_insert_not_in. $ INT Element&. Element& tmp%4 (I f@) tmp%5)
             )
             (=>
              (ens%vstd.tokens.map_values_insert_not_in. $ INT Element&. Element& tmp%4 (I f@) tmp%5)
              (=>
               (and
                (= (vstd.tokens.MultisetToken./MultisetToken/_v self!@0) (vstd.tokens.MultisetToken./MultisetToken/_v
                  self!@1
                ))
                (= (vstd.tokens.MultisetToken./MultisetToken/inst self!@0) (vstd.tokens.MultisetToken./MultisetToken/inst
                  self!@1
               )))
               (=>
                (has_type (Poly%vstd.tokens.MultisetToken. self!@1) (TYPE%vstd.tokens.MultisetToken.
                  Element&. Element& Token&. Token&
                ))
                (=>
                 (ens%vstd.map.impl&%0.tracked_insert. $ INT Token&. Token& (vstd.tokens.MultisetToken./MultisetToken/m
                   (%Poly%vstd.tokens.MultisetToken. (Poly%vstd.tokens.MultisetToken. self!@0))
                  ) (vstd.tokens.MultisetToken./MultisetToken/m (%Poly%vstd.tokens.MultisetToken. (Poly%vstd.tokens.MultisetToken.
                     self!@1
                   ))
                  ) (I f@) token!
                 )
                 (=>
                  (= tmp%6 self!@1)
                  (=>
                   (= tmp%7 (vstd.tokens.impl&%2.wf.? Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken.
                      tmp%6
                   )))
                   (and
                    (=>
                     %%location_label%%2
                     tmp%7
                    )
                    (=>
                     tmp%7
                     (=>
                      (= tmp%8 (ext_eq false (TYPE%vstd.map.Map. $ INT Element&. Element&) (vstd.tokens.impl&%2.map_elems.?
                         Element&. Element& Token&. Token& (vstd.tokens.MultisetToken./MultisetToken/m (%Poly%vstd.tokens.MultisetToken.
                           (Poly%vstd.tokens.MultisetToken. self!@1)
                         ))
                        ) (vstd.map.impl&%0.insert.? $ INT Element&. Element& (vstd.tokens.impl&%2.map_elems.?
                          Element&. Element& Token&. Token& (vstd.tokens.MultisetToken./MultisetToken/m (%Poly%vstd.tokens.MultisetToken.
                            (Poly%vstd.tokens.MultisetToken. self!@0)
                          ))
                         ) (I f@) (vstd.tokens.ElementToken.element.? Token&. Token& Element&. Element& token!)
                      )))
                      (and
                       (=>
                        %%location_label%%3
                        tmp%8
                       )
                       (=>
                        tmp%8
                        (=>
                         (= tmp%9 (ext_eq false (TYPE%vstd.multiset.Multiset. Element&. Element&) (vstd.tokens.impl&%2.multiset.?
                            Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken. self!@1)
                           ) (vstd.multiset.impl&%0.insert.? Element&. Element& (vstd.tokens.impl&%2.multiset.?
                             Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken. self!@0)
                            ) (vstd.tokens.ElementToken.element.? Token&. Token& Element&. Element& token!)
                         )))
                         (and
                          (=>
                           %%location_label%%4
                           tmp%9
                          )
                          (=>
                           tmp%9
                           (and
                            (=>
                             %%location_label%%5
                             (= (vstd.tokens.impl&%2.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken.
                                self!@1
                               )
                              ) (vstd.tokens.impl&%2.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken.
                                self!@0
                            ))))
                            (=>
                             %%location_label%%6
                             (= (vstd.tokens.impl&%2.multiset.? Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken.
                                self!@1
                               )
                              ) (vstd.multiset.impl&%0.insert.? Element&. Element& (vstd.tokens.impl&%2.multiset.?
                                Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken. self!@0)
                               ) (vstd.tokens.ElementToken.element.? Token&. Token& Element&. Element& token!)
 ))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::tokens::MultisetToken::remove
(declare-fun req%vstd.tokens.impl&%2.remove. (Dcr Type Dcr Type vstd.tokens.MultisetToken.
  Poly
 ) Bool
)
(declare-const %%global_location_label%%28 Bool)
(assert
 (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (pre%self! vstd.tokens.MultisetToken.)
   (element! Poly)
  ) (!
   (= (req%vstd.tokens.impl&%2.remove. Element&. Element& Token&. Token& pre%self! element!)
    (=>
     %%global_location_label%%28
     (vstd.multiset.impl&%0.contains.? Element&. Element& (vstd.tokens.impl&%2.multiset.?
       Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken. pre%self!)
      ) element!
   )))
   :pattern ((req%vstd.tokens.impl&%2.remove. Element&. Element& Token&. Token& pre%self!
     element!
   ))
   :qid internal_req__vstd.tokens.impl&__2.remove._definition
   :skolemid skolem_internal_req__vstd.tokens.impl&__2.remove._definition
)))
(declare-fun ens%vstd.tokens.impl&%2.remove. (Dcr Type Dcr Type vstd.tokens.MultisetToken.
  vstd.tokens.MultisetToken. Poly Poly
 ) Bool
)
(assert
 (forall ((Element&. Dcr) (Element& Type) (Token&. Dcr) (Token& Type) (pre%self! vstd.tokens.MultisetToken.)
   (self! vstd.tokens.MultisetToken.) (element! Poly) (token! Poly)
  ) (!
   (= (ens%vstd.tokens.impl&%2.remove. Element&. Element& Token&. Token& pre%self! self!
     element! token!
    ) (and
     (has_type token! Token&)
     (has_type (Poly%vstd.tokens.MultisetToken. self!) (TYPE%vstd.tokens.MultisetToken.
       Element&. Element& Token&. Token&
     ))
     (= (vstd.tokens.impl&%2.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken.
        self!
       )
      ) (vstd.tokens.impl&%2.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken.
        pre%self!
     )))
     (= (vstd.tokens.impl&%2.multiset.? Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken.
        self!
       )
      ) (vstd.multiset.impl&%0.remove.? Element&. Element& (vstd.tokens.impl&%2.multiset.?
        Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken. pre%self!)
       ) element!
     ))
     (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? Token&. Token&
        Element&. Element& token!
       )
      ) (vstd.tokens.impl&%2.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken.
        self!
     )))
     (= (vstd.tokens.ElementToken.element.? Token&. Token& Element&. Element& token!) element!)
   ))
   :pattern ((ens%vstd.tokens.impl&%2.remove. Element&. Element& Token&. Token& pre%self!
     self! element! token!
   ))
   :qid internal_ens__vstd.tokens.impl&__2.remove._definition
   :skolemid skolem_internal_ens__vstd.tokens.impl&__2.remove._definition
)))

;; Function-Def crate::vstd::tokens::MultisetToken::remove
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/tokens.rs:563:5: 563:86 (#0)
(get-info :all-statistics)
(push)
 (declare-const Element&. Dcr)
 (declare-const Element& Type)
 (declare-const Token&. Dcr)
 (declare-const Token& Type)
 (declare-const token! Poly)
 (declare-const self!@0 vstd.tokens.MultisetToken.)
 (declare-const element! Poly)
 (declare-const tmp%1 vstd.tokens.MultisetToken.)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Bool)
 (declare-const tmp%4 Poly)
 (declare-const tmp%5 Poly)
 (declare-const tmp%6 Poly)
 (declare-const tmp%7 vstd.tokens.MultisetToken.)
 (declare-const tmp%8 Bool)
 (declare-const tmp@ Poly)
 (declare-const tmp%9 Bool)
 (declare-const tmp%10 Bool)
 (declare-const k@ Int)
 (declare-const t@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.tokens.MultisetToken. self!@0) (TYPE%vstd.tokens.MultisetToken.
    Element&. Element& Token&. Token&
 )))
 (assert
  (has_type element! Element&)
 )
 (assert
  (tr_bound%vstd.tokens.ElementToken. Token&. Token& Element&. Element&)
 )
 (assert
  (vstd.multiset.impl&%0.contains.? Element&. Element& (vstd.tokens.impl&%2.multiset.?
    Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken. self!@0)
   ) element!
 ))
 (declare-const self!@1 vstd.tokens.MultisetToken.)
 ;; assertion failed
 (declare-const %%location_label%%0 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; precondition not satisfied
 (declare-const %%location_label%%3 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%4 Bool)
 ;; assertion failed
 (declare-const %%location_label%%5 Bool)
 ;; assertion failed
 (declare-const %%location_label%%6 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%7 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%8 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%9 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%10 Bool)
 (assert
  (not (=>
    (= tmp%1 self!@0)
    (=>
     (= tmp%2 (vstd.tokens.impl&%2.wf.? Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken.
        tmp%1
     )))
     (=>
      tmp%2
      (=>
       (= tmp%3 (ext_eq false (TYPE%vstd.set.Set. $ INT) (vstd.map.impl&%0.dom.? $ INT Element&.
          Element& (vstd.tokens.impl&%2.map_elems.? Element&. Element& Token&. Token& (vstd.tokens.MultisetToken./MultisetToken/m
            (%Poly%vstd.tokens.MultisetToken. (Poly%vstd.tokens.MultisetToken. self!@0))
          ))
         ) (vstd.map.impl&%0.dom.? $ INT Token&. Token& (vstd.tokens.MultisetToken./MultisetToken/m
           (%Poly%vstd.tokens.MultisetToken. (Poly%vstd.tokens.MultisetToken. self!@0))
       ))))
       (and
        (=>
         %%location_label%%0
         tmp%3
        )
        (=>
         tmp%3
         (=>
          (= tmp%5 (vstd.tokens.impl&%2.map_elems.? Element&. Element& Token&. Token& (vstd.tokens.MultisetToken./MultisetToken/m
             (%Poly%vstd.tokens.MultisetToken. (Poly%vstd.tokens.MultisetToken. self!@0))
          )))
          (and
           (=>
            %%location_label%%1
            (req%vstd.tokens.get_key_for_value. $ INT Element&. Element& tmp%5 element!)
           )
           (=>
            (ens%vstd.tokens.get_key_for_value. $ INT Element&. Element& tmp%5 element! tmp%4)
            (=>
             (= k@ (%I tmp%4))
             (=>
              (= tmp%6 (vstd.tokens.impl&%2.map_elems.? Element&. Element& Token&. Token& (vstd.tokens.MultisetToken./MultisetToken/m
                 (%Poly%vstd.tokens.MultisetToken. (Poly%vstd.tokens.MultisetToken. self!@0))
              )))
              (and
               (=>
                %%location_label%%2
                (req%vstd.tokens.map_values_remove. $ INT Element&. Element& tmp%6 (I k@))
               )
               (=>
                (ens%vstd.tokens.map_values_remove. $ INT Element&. Element& tmp%6 (I k@))
                (and
                 (=>
                  %%location_label%%3
                  (req%vstd.map.impl&%0.tracked_remove. $ INT Token&. Token& (vstd.tokens.MultisetToken./MultisetToken/m
                    (%Poly%vstd.tokens.MultisetToken. (Poly%vstd.tokens.MultisetToken. self!@0))
                   ) (I k@)
                 ))
                 (=>
                  (and
                   (= (vstd.tokens.MultisetToken./MultisetToken/_v self!@0) (vstd.tokens.MultisetToken./MultisetToken/_v
                     self!@1
                   ))
                   (= (vstd.tokens.MultisetToken./MultisetToken/inst self!@0) (vstd.tokens.MultisetToken./MultisetToken/inst
                     self!@1
                  )))
                  (=>
                   (has_type (Poly%vstd.tokens.MultisetToken. self!@1) (TYPE%vstd.tokens.MultisetToken.
                     Element&. Element& Token&. Token&
                   ))
                   (=>
                    (ens%vstd.map.impl&%0.tracked_remove. $ INT Token&. Token& (vstd.tokens.MultisetToken./MultisetToken/m
                      (%Poly%vstd.tokens.MultisetToken. (Poly%vstd.tokens.MultisetToken. self!@0))
                     ) (vstd.tokens.MultisetToken./MultisetToken/m (%Poly%vstd.tokens.MultisetToken. (Poly%vstd.tokens.MultisetToken.
                        self!@1
                      ))
                     ) (I k@) tmp@
                    )
                    (=>
                     (= tmp%7 self!@1)
                     (=>
                      (= tmp%8 (vstd.tokens.impl&%2.wf.? Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken.
                         tmp%7
                      )))
                      (and
                       (=>
                        %%location_label%%4
                        tmp%8
                       )
                       (=>
                        tmp%8
                        (=>
                         (= t@ tmp@)
                         (=>
                          (= tmp%9 (ext_eq false (TYPE%vstd.map.Map. $ INT Element&. Element&) (vstd.tokens.impl&%2.map_elems.?
                             Element&. Element& Token&. Token& (vstd.tokens.MultisetToken./MultisetToken/m (%Poly%vstd.tokens.MultisetToken.
                               (Poly%vstd.tokens.MultisetToken. self!@1)
                             ))
                            ) (vstd.map.impl&%0.remove.? $ INT Element&. Element& (vstd.tokens.impl&%2.map_elems.?
                              Element&. Element& Token&. Token& (vstd.tokens.MultisetToken./MultisetToken/m (%Poly%vstd.tokens.MultisetToken.
                                (Poly%vstd.tokens.MultisetToken. self!@0)
                              ))
                             ) (I k@)
                          )))
                          (and
                           (=>
                            %%location_label%%5
                            tmp%9
                           )
                           (=>
                            tmp%9
                            (=>
                             (= tmp%10 (ext_eq false (TYPE%vstd.multiset.Multiset. Element&. Element&) (vstd.tokens.impl&%2.multiset.?
                                Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken. self!@1)
                               ) (vstd.multiset.impl&%0.remove.? Element&. Element& (vstd.tokens.impl&%2.multiset.?
                                 Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken. self!@0)
                                ) element!
                             )))
                             (and
                              (=>
                               %%location_label%%6
                               tmp%10
                              )
                              (=>
                               tmp%10
                               (=>
                                (= token! t@)
                                (and
                                 (=>
                                  %%location_label%%7
                                  (= (vstd.tokens.impl&%2.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken.
                                     self!@1
                                    )
                                   ) (vstd.tokens.impl&%2.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken.
                                     self!@0
                                 ))))
                                 (and
                                  (=>
                                   %%location_label%%8
                                   (= (vstd.tokens.impl&%2.multiset.? Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken.
                                      self!@1
                                     )
                                    ) (vstd.multiset.impl&%0.remove.? Element&. Element& (vstd.tokens.impl&%2.multiset.?
                                      Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken. self!@0)
                                     ) element!
                                  )))
                                  (and
                                   (=>
                                    %%location_label%%9
                                    (= (%Poly%vstd.tokens.InstanceId. (vstd.tokens.ElementToken.instance_id.? Token&. Token&
                                       Element&. Element& token!
                                      )
                                     ) (vstd.tokens.impl&%2.instance_id.? Element&. Element& Token&. Token& (Poly%vstd.tokens.MultisetToken.
                                       self!@1
                                   ))))
                                   (=>
                                    %%location_label%%10
                                    (= (vstd.tokens.ElementToken.element.? Token&. Token& Element&. Element& token!) element!)
 )))))))))))))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
