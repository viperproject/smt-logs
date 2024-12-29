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

;; MODULE 'module vstd::storage_protocol'

;; Fuel
(declare-const fuel%vstd.map.impl&%0.new. FuelId)
(declare-const fuel%vstd.map.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd.map.axiom_map_index_decreases_finite. FuelId)
(declare-const fuel%vstd.map.axiom_map_index_decreases_infinite. FuelId)
(declare-const fuel%vstd.map.axiom_map_empty. FuelId)
(declare-const fuel%vstd.map.axiom_map_ext_equal. FuelId)
(declare-const fuel%vstd.map.axiom_map_ext_equal_deep. FuelId)
(declare-const fuel%vstd.map_lib.impl&%0.submap_of. FuelId)
(declare-const fuel%vstd.map_lib.impl&%0.union_prefer_right. FuelId)
(declare-const fuel%vstd.set.impl&%0.disjoint. FuelId)
(declare-const fuel%vstd.set.axiom_set_empty. FuelId)
(declare-const fuel%vstd.set.axiom_set_new. FuelId)
(declare-const fuel%vstd.set.axiom_set_insert_same. FuelId)
(declare-const fuel%vstd.set.axiom_set_insert_different. FuelId)
(declare-const fuel%vstd.set.axiom_set_ext_equal. FuelId)
(declare-const fuel%vstd.set.axiom_set_ext_equal_deep. FuelId)
(declare-const fuel%vstd.set.axiom_mk_map_domain. FuelId)
(declare-const fuel%vstd.set.axiom_mk_map_index. FuelId)
(declare-const fuel%vstd.set.axiom_set_empty_finite. FuelId)
(declare-const fuel%vstd.set.axiom_set_insert_finite. FuelId)
(declare-const fuel%vstd.set_lib.check_argument_is_set. FuelId)
(declare-const fuel%vstd.storage_protocol.incl. FuelId)
(declare-const fuel%vstd.storage_protocol.guards. FuelId)
(declare-const fuel%vstd.storage_protocol.exchanges. FuelId)
(declare-const fuel%vstd.storage_protocol.exchanges_nondeterministic. FuelId)
(declare-const fuel%vstd.storage_protocol.deposits. FuelId)
(declare-const fuel%vstd.storage_protocol.withdraws. FuelId)
(declare-const fuel%vstd.storage_protocol.updates. FuelId)
(declare-const fuel%vstd.storage_protocol.set_op. FuelId)
(declare-const fuel%vstd.map.group_map_axioms. FuelId)
(declare-const fuel%vstd.set.group_set_axioms. FuelId)
(assert
 (distinct fuel%vstd.map.impl&%0.new. fuel%vstd.map.impl&%0.spec_index. fuel%vstd.map.axiom_map_index_decreases_finite.
  fuel%vstd.map.axiom_map_index_decreases_infinite. fuel%vstd.map.axiom_map_empty.
  fuel%vstd.map.axiom_map_ext_equal. fuel%vstd.map.axiom_map_ext_equal_deep. fuel%vstd.map_lib.impl&%0.submap_of.
  fuel%vstd.map_lib.impl&%0.union_prefer_right. fuel%vstd.set.impl&%0.disjoint. fuel%vstd.set.axiom_set_empty.
  fuel%vstd.set.axiom_set_new. fuel%vstd.set.axiom_set_insert_same. fuel%vstd.set.axiom_set_insert_different.
  fuel%vstd.set.axiom_set_ext_equal. fuel%vstd.set.axiom_set_ext_equal_deep. fuel%vstd.set.axiom_mk_map_domain.
  fuel%vstd.set.axiom_mk_map_index. fuel%vstd.set.axiom_set_empty_finite. fuel%vstd.set.axiom_set_insert_finite.
  fuel%vstd.set_lib.check_argument_is_set. fuel%vstd.storage_protocol.incl. fuel%vstd.storage_protocol.guards.
  fuel%vstd.storage_protocol.exchanges. fuel%vstd.storage_protocol.exchanges_nondeterministic.
  fuel%vstd.storage_protocol.deposits. fuel%vstd.storage_protocol.withdraws. fuel%vstd.storage_protocol.updates.
  fuel%vstd.storage_protocol.set_op. fuel%vstd.map.group_map_axioms. fuel%vstd.set.group_set_axioms.
))
(assert
 (=>
  (fuel_bool_default fuel%vstd.map.group_map_axioms.)
  (and
   (fuel_bool_default fuel%vstd.map.axiom_map_index_decreases_finite.)
   (fuel_bool_default fuel%vstd.map.axiom_map_index_decreases_infinite.)
   (fuel_bool_default fuel%vstd.map.axiom_map_empty.)
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
   (fuel_bool_default fuel%vstd.set.axiom_set_ext_equal.)
   (fuel_bool_default fuel%vstd.set.axiom_set_ext_equal_deep.)
   (fuel_bool_default fuel%vstd.set.axiom_mk_map_domain.)
   (fuel_bool_default fuel%vstd.set.axiom_mk_map_index.)
   (fuel_bool_default fuel%vstd.set.axiom_set_empty_finite.)
   (fuel_bool_default fuel%vstd.set.axiom_set_insert_finite.)
)))
(assert
 (and
  (fuel_bool_default fuel%vstd.set.group_set_axioms.)
  (fuel_bool_default fuel%vstd.map.group_map_axioms.)
))

;; Datatypes
(declare-datatypes ((tuple%0. 0) (tuple%2. 0)) (((tuple%0./tuple%0)) ((tuple%2./tuple%2
    (tuple%2./tuple%2/?0 Poly) (tuple%2./tuple%2/?1 Poly)
))))
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-fun TYPE%fun%1. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.map.Map. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.set.Set. (Dcr Type) Type)
(declare-fun TYPE%vstd.storage_protocol.StorageResource. (Dcr Type Dcr Type Dcr Type)
 Type
)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%2. (Dcr Type Dcr Type) Type)
(declare-fun Poly%fun%1. (%%Function%%) Poly)
(declare-fun %Poly%fun%1. (Poly) %%Function%%)
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
(declare-fun tr_bound%vstd.storage_protocol.Protocol. (Dcr Type Dcr Type Dcr Type)
 Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (K&. Dcr) (K& Type) (V&. Dcr) (V& Type)) (!
   true
   :pattern ((tr_bound%vstd.storage_protocol.Protocol. Self%&. Self%& K&. K& V&. V&))
   :qid internal_crate__vstd__storage_protocol__Protocol_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__storage_protocol__Protocol_trait_type_bounds_definition
)))

;; Function-Decl crate::vstd::set::Set::finite
(declare-fun vstd.set.impl&%0.finite.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::set::Set::contains
(declare-fun vstd.set.impl&%0.contains.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::set::Set::empty
(declare-fun vstd.set.impl&%0.empty.? (Dcr Type) Poly)

;; Function-Decl crate::vstd::set::Set::new
(declare-fun vstd.set.impl&%0.new.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::set::Set::insert
(declare-fun vstd.set.impl&%0.insert.? (Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::map::Map::dom
(declare-fun vstd.map.impl&%0.dom.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::set::Set::mk_map
(declare-fun vstd.set.impl&%0.mk_map.? (Dcr Type Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::map::Map::index
(declare-fun vstd.map.impl&%0.index.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::map::Map::spec_index
(declare-fun vstd.map.impl&%0.spec_index.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::map::Map::empty
(declare-fun vstd.map.impl&%0.empty.? (Dcr Type Dcr Type) Poly)

;; Function-Decl crate::vstd::map::Map::new
(declare-fun vstd.map.impl&%0.new.? (Dcr Type Dcr Type Dcr Type Dcr Type Poly Poly)
 Poly
)

;; Function-Decl crate::vstd::map::Map::union_prefer_right
(declare-fun vstd.map_lib.impl&%0.union_prefer_right.? (Dcr Type Dcr Type Poly Poly)
 Poly
)

;; Function-Decl crate::vstd::storage_protocol::Protocol::op
(declare-fun vstd.storage_protocol.Protocol.op.? (Dcr Type Dcr Type Dcr Type Poly Poly)
 Poly
)
(declare-fun vstd.storage_protocol.Protocol.op%default%.? (Dcr Type Dcr Type Dcr Type
  Poly Poly
 ) Poly
)

;; Function-Decl crate::vstd::storage_protocol::Protocol::rel
(declare-fun vstd.storage_protocol.Protocol.rel.? (Dcr Type Dcr Type Dcr Type Poly
  Poly
 ) Poly
)
(declare-fun vstd.storage_protocol.Protocol.rel%default%.? (Dcr Type Dcr Type Dcr Type
  Poly Poly
 ) Poly
)

;; Function-Decl crate::vstd::storage_protocol::Protocol::unit
(declare-fun vstd.storage_protocol.Protocol.unit.? (Dcr Type Dcr Type Dcr Type) Poly)
(declare-fun vstd.storage_protocol.Protocol.unit%default%.? (Dcr Type Dcr Type Dcr
  Type
 ) Poly
)

;; Function-Decl crate::vstd::storage_protocol::StorageResource::value
(declare-fun vstd.storage_protocol.impl&%0.value.? (Dcr Type Dcr Type Dcr Type Poly)
 Poly
)

;; Function-Decl crate::vstd::storage_protocol::StorageResource::loc
(declare-fun vstd.storage_protocol.impl&%0.loc.? (Dcr Type Dcr Type Dcr Type Poly)
 Int
)

;; Function-Decl crate::vstd::map::Map::submap_of
(declare-fun vstd.map_lib.impl&%0.submap_of.? (Dcr Type Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::storage_protocol::guards
(declare-fun vstd.storage_protocol.guards.? (Dcr Type Dcr Type Dcr Type Poly Poly)
 Bool
)

;; Function-Decl crate::vstd::storage_protocol::incl
(declare-fun vstd.storage_protocol.incl.? (Dcr Type Dcr Type Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::set::Set::disjoint
(declare-fun vstd.set.impl&%0.disjoint.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::storage_protocol::exchanges_nondeterministic
(declare-fun vstd.storage_protocol.exchanges_nondeterministic.? (Dcr Type Dcr Type
  Dcr Type Poly Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::storage_protocol::set_op
(declare-fun vstd.storage_protocol.set_op.? (Dcr Type Dcr Type Dcr Type Poly Poly)
 Poly
)

;; Function-Decl crate::vstd::set_lib::check_argument_is_set
(declare-fun vstd.set_lib.check_argument_is_set.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::storage_protocol::exchanges
(declare-fun vstd.storage_protocol.exchanges.? (Dcr Type Dcr Type Dcr Type Poly Poly
  Poly Poly
 ) Bool
)

;; Function-Decl crate::vstd::storage_protocol::deposits
(declare-fun vstd.storage_protocol.deposits.? (Dcr Type Dcr Type Dcr Type Poly Poly
  Poly
 ) Bool
)

;; Function-Decl crate::vstd::storage_protocol::withdraws
(declare-fun vstd.storage_protocol.withdraws.? (Dcr Type Dcr Type Dcr Type Poly Poly
  Poly
 ) Bool
)

;; Function-Decl crate::vstd::storage_protocol::updates
(declare-fun vstd.storage_protocol.updates.? (Dcr Type Dcr Type Dcr Type Poly Poly)
 Bool
)

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
        :qid user_crate__vstd__set__axiom_set_ext_equal_4
        :skolemid skolem_user_crate__vstd__set__axiom_set_ext_equal_4
    ))))
    :pattern ((ext_eq false (TYPE%vstd.set.Set. A&. A&) s1! s2!))
    :qid user_crate__vstd__set__axiom_set_ext_equal_5
    :skolemid skolem_user_crate__vstd__set__axiom_set_ext_equal_5
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
    :qid user_crate__vstd__set__axiom_set_ext_equal_deep_6
    :skolemid skolem_user_crate__vstd__set__axiom_set_ext_equal_deep_6
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
    :qid user_crate__vstd__set__axiom_mk_map_domain_7
    :skolemid skolem_user_crate__vstd__set__axiom_mk_map_domain_7
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
    :qid user_crate__vstd__set__axiom_mk_map_index_8
    :skolemid skolem_user_crate__vstd__set__axiom_mk_map_index_8
))))

;; Broadcast crate::vstd::set::axiom_set_empty_finite
(assert
 (=>
  (fuel_bool fuel%vstd.set.axiom_set_empty_finite.)
  (forall ((A&. Dcr) (A& Type)) (!
    (vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.empty.? A&. A&))
    :pattern ((vstd.set.impl&%0.finite.? A&. A& (vstd.set.impl&%0.empty.? A&. A&)))
    :qid user_crate__vstd__set__axiom_set_empty_finite_9
    :skolemid skolem_user_crate__vstd__set__axiom_set_empty_finite_9
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
    :qid user_crate__vstd__set__axiom_set_insert_finite_10
    :skolemid skolem_user_crate__vstd__set__axiom_set_insert_finite_10
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
    :qid user_crate__vstd__map__axiom_map_index_decreases_finite_11
    :skolemid skolem_user_crate__vstd__map__axiom_map_index_decreases_finite_11
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
    :qid user_crate__vstd__map__axiom_map_index_decreases_infinite_12
    :skolemid skolem_user_crate__vstd__map__axiom_map_index_decreases_infinite_12
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
    :qid user_crate__vstd__map__axiom_map_empty_13
    :skolemid skolem_user_crate__vstd__map__axiom_map_empty_13
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
         :qid user_crate__vstd__map__axiom_map_ext_equal_14
         :skolemid skolem_user_crate__vstd__map__axiom_map_ext_equal_14
    )))))
    :pattern ((ext_eq false (TYPE%vstd.map.Map. K&. K& V&. V&) m1! m2!))
    :qid user_crate__vstd__map__axiom_map_ext_equal_15
    :skolemid skolem_user_crate__vstd__map__axiom_map_ext_equal_15
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
         :qid user_crate__vstd__map__axiom_map_ext_equal_deep_16
         :skolemid skolem_user_crate__vstd__map__axiom_map_ext_equal_deep_16
    )))))
    :pattern ((ext_eq true (TYPE%vstd.map.Map. K&. K& V&. V&) m1! m2!))
    :qid user_crate__vstd__map__axiom_map_ext_equal_deep_17
    :skolemid skolem_user_crate__vstd__map__axiom_map_ext_equal_deep_17
))))

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

;; Function-Axioms crate::vstd::map::Map::union_prefer_right
(assert
 (fuel_bool_default fuel%vstd.map_lib.impl&%0.union_prefer_right.)
)
(declare-fun %%lambda%%0 (Dcr Type Poly Dcr Type Poly) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 Dcr) (%%hole%%4
    Type
   ) (%%hole%%5 Poly) (k$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5)
     k$
    ) (B (or
      (vstd.set.impl&%0.contains.? %%hole%%0 %%hole%%1 %%hole%%2 k$)
      (vstd.set.impl&%0.contains.? %%hole%%3 %%hole%%4 %%hole%%5 k$)
   )))
   :pattern ((%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      %%hole%%5
     ) k$
)))))
(declare-fun %%lambda%%1 (Dcr Type Poly Dcr Type Dcr Type Poly Dcr Type Dcr Type Poly)
 %%Function%%
)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 Dcr) (%%hole%%4
    Type
   ) (%%hole%%5 Dcr) (%%hole%%6 Type) (%%hole%%7 Poly) (%%hole%%8 Dcr) (%%hole%%9 Type)
   (%%hole%%10 Dcr) (%%hole%%11 Type) (%%hole%%12 Poly) (k$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
      %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12
     ) k$
    ) (ite
     (vstd.set.impl&%0.contains.? %%hole%%0 %%hole%%1 %%hole%%2 k$)
     (vstd.map.impl&%0.index.? %%hole%%3 %%hole%%4 %%hole%%5 %%hole%%6 %%hole%%7 k$)
     (vstd.map.impl&%0.index.? %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12 k$)
   ))
   :pattern ((%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      %%hole%%5 %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12
     ) k$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.map_lib.impl&%0.union_prefer_right.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
    (= (vstd.map_lib.impl&%0.union_prefer_right.? K&. K& V&. V& self! m2!) (vstd.map.impl&%0.new.?
      K&. K& V&. V& $ (TYPE%fun%1. K&. K& $ BOOL) $ (TYPE%fun%1. K&. K& V&. V&) (Poly%fun%1.
       (mk_fun (%%lambda%%0 K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) K&. K& (vstd.map.impl&%0.dom.?
          K&. K& V&. V& m2!
       )))
      ) (Poly%fun%1. (mk_fun (%%lambda%%1 K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m2!)
         K&. K& V&. V& m2! K&. K& V&. V& self!
    )))))
    :pattern ((vstd.map_lib.impl&%0.union_prefer_right.? K&. K& V&. V& self! m2!))
    :qid internal_vstd.map_lib.impl&__0.union_prefer_right.?_definition
    :skolemid skolem_internal_vstd.map_lib.impl&__0.union_prefer_right.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (has_type m2! (TYPE%vstd.map.Map. K&. K& V&. V&))
    )
    (has_type (vstd.map_lib.impl&%0.union_prefer_right.? K&. K& V&. V& self! m2!) (TYPE%vstd.map.Map.
      K&. K& V&. V&
   )))
   :pattern ((vstd.map_lib.impl&%0.union_prefer_right.? K&. K& V&. V& self! m2!))
   :qid internal_vstd.map_lib.impl&__0.union_prefer_right.?_pre_post_definition
   :skolemid skolem_internal_vstd.map_lib.impl&__0.union_prefer_right.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::storage_protocol::Protocol::op
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self!
    Poly
   ) (other! Poly)
  ) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type other! Self%&)
    )
    (has_type (vstd.storage_protocol.Protocol.op.? Self%&. Self%& K&. K& V&. V& self! other!)
     Self%&
   ))
   :pattern ((vstd.storage_protocol.Protocol.op.? Self%&. Self%& K&. K& V&. V& self! other!))
   :qid internal_vstd.storage_protocol.Protocol.op.?_pre_post_definition
   :skolemid skolem_internal_vstd.storage_protocol.Protocol.op.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::storage_protocol::Protocol::rel
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self!
    Poly
   ) (s! Poly)
  ) (!
   (=>
    (and
     (has_type self! Self%&)
     (has_type s! (TYPE%vstd.map.Map. K&. K& V&. V&))
    )
    (has_type (vstd.storage_protocol.Protocol.rel.? Self%&. Self%& K&. K& V&. V& self!
      s!
     ) BOOL
   ))
   :pattern ((vstd.storage_protocol.Protocol.rel.? Self%&. Self%& K&. K& V&. V& self!
     s!
   ))
   :qid internal_vstd.storage_protocol.Protocol.rel.?_pre_post_definition
   :skolemid skolem_internal_vstd.storage_protocol.Protocol.rel.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::storage_protocol::Protocol::unit
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (K&. Dcr) (K& Type) (V&. Dcr) (V& Type)) (!
   (has_type (vstd.storage_protocol.Protocol.unit.? Self%&. Self%& K&. K& V&. V&) Self%&)
   :pattern ((vstd.storage_protocol.Protocol.unit.? Self%&. Self%& K&. K& V&. V&))
   :qid internal_vstd.storage_protocol.Protocol.unit.?_pre_post_definition
   :skolemid skolem_internal_vstd.storage_protocol.Protocol.unit.?_pre_post_definition
)))

;; Function-Specs crate::vstd::storage_protocol::Protocol::commutative
(declare-fun ens%vstd.storage_protocol.Protocol.commutative. (Dcr Type Dcr Type Dcr
  Type Poly Poly
 ) Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (a! Poly)
   (b! Poly)
  ) (!
   (= (ens%vstd.storage_protocol.Protocol.commutative. Self%&. Self%& K&. K& V&. V& a!
     b!
    ) (= (vstd.storage_protocol.Protocol.op.? Self%&. Self%& K&. K& V&. V& a! b!) (vstd.storage_protocol.Protocol.op.?
      Self%&. Self%& K&. K& V&. V& b! a!
   )))
   :pattern ((ens%vstd.storage_protocol.Protocol.commutative. Self%&. Self%& K&. K& V&.
     V& a! b!
   ))
   :qid internal_ens__vstd.storage_protocol.Protocol.commutative._definition
   :skolemid skolem_internal_ens__vstd.storage_protocol.Protocol.commutative._definition
)))

;; Function-Specs crate::vstd::storage_protocol::Protocol::associative
(declare-fun ens%vstd.storage_protocol.Protocol.associative. (Dcr Type Dcr Type Dcr
  Type Poly Poly Poly
 ) Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (a! Poly)
   (b! Poly) (c! Poly)
  ) (!
   (= (ens%vstd.storage_protocol.Protocol.associative. Self%&. Self%& K&. K& V&. V& a!
     b! c!
    ) (= (vstd.storage_protocol.Protocol.op.? Self%&. Self%& K&. K& V&. V& a! (vstd.storage_protocol.Protocol.op.?
       Self%&. Self%& K&. K& V&. V& b! c!
      )
     ) (vstd.storage_protocol.Protocol.op.? Self%&. Self%& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
       Self%&. Self%& K&. K& V&. V& a! b!
      ) c!
   )))
   :pattern ((ens%vstd.storage_protocol.Protocol.associative. Self%&. Self%& K&. K& V&.
     V& a! b! c!
   ))
   :qid internal_ens__vstd.storage_protocol.Protocol.associative._definition
   :skolemid skolem_internal_ens__vstd.storage_protocol.Protocol.associative._definition
)))

;; Function-Specs crate::vstd::storage_protocol::Protocol::op_unit
(declare-fun ens%vstd.storage_protocol.Protocol.op_unit. (Dcr Type Dcr Type Dcr Type
  Poly
 ) Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (a! Poly))
  (!
   (= (ens%vstd.storage_protocol.Protocol.op_unit. Self%&. Self%& K&. K& V&. V& a!) (
     = (vstd.storage_protocol.Protocol.op.? Self%&. Self%& K&. K& V&. V& a! (vstd.storage_protocol.Protocol.unit.?
       Self%&. Self%& K&. K& V&. V&
      )
     ) a!
   ))
   :pattern ((ens%vstd.storage_protocol.Protocol.op_unit. Self%&. Self%& K&. K& V&. V&
     a!
   ))
   :qid internal_ens__vstd.storage_protocol.Protocol.op_unit._definition
   :skolemid skolem_internal_ens__vstd.storage_protocol.Protocol.op_unit._definition
)))

;; Function-Axioms crate::vstd::storage_protocol::StorageResource::value
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.storage_protocol.StorageResource. K&. K& V&. V& P&. P&))
    (has_type (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& self!) P&)
   )
   :pattern ((vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& self!))
   :qid internal_vstd.storage_protocol.impl&__0.value.?_pre_post_definition
   :skolemid skolem_internal_vstd.storage_protocol.impl&__0.value.?_pre_post_definition
)))

;; Function-Specs crate::vstd::storage_protocol::StorageResource::alloc
(declare-fun req%vstd.storage_protocol.impl&%0.alloc. (Dcr Type Dcr Type Dcr Type Poly
  Poly
 ) Bool
)
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (p! Poly) (s! Poly))
  (!
   (= (req%vstd.storage_protocol.impl&%0.alloc. K&. K& V&. V& P&. P& p! s!) (=>
     %%global_location_label%%2
     (%B (vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& p! s!))
   ))
   :pattern ((req%vstd.storage_protocol.impl&%0.alloc. K&. K& V&. V& P&. P& p! s!))
   :qid internal_req__vstd.storage_protocol.impl&__0.alloc._definition
   :skolemid skolem_internal_req__vstd.storage_protocol.impl&__0.alloc._definition
)))
(declare-fun ens%vstd.storage_protocol.impl&%0.alloc. (Dcr Type Dcr Type Dcr Type Poly
  Poly Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (p! Poly) (s! Poly)
   (out! Poly)
  ) (!
   (= (ens%vstd.storage_protocol.impl&%0.alloc. K&. K& V&. V& P&. P& p! s! out!) (and
     (has_type out! (TYPE%vstd.storage_protocol.StorageResource. K&. K& V&. V& P&. P&))
     (= (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& out!) p!)
   ))
   :pattern ((ens%vstd.storage_protocol.impl&%0.alloc. K&. K& V&. V& P&. P& p! s! out!))
   :qid internal_ens__vstd.storage_protocol.impl&__0.alloc._definition
   :skolemid skolem_internal_ens__vstd.storage_protocol.impl&__0.alloc._definition
)))

;; Function-Specs crate::vstd::storage_protocol::StorageResource::join
(declare-fun req%vstd.storage_protocol.impl&%0.join. (Dcr Type Dcr Type Dcr Type Poly
  Poly
 ) Bool
)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (a! Poly) (b! Poly))
  (!
   (= (req%vstd.storage_protocol.impl&%0.join. K&. K& V&. V& P&. P& a! b!) (=>
     %%global_location_label%%3
     (= (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& a!) (vstd.storage_protocol.impl&%0.loc.?
       K&. K& V&. V& P&. P& b!
   ))))
   :pattern ((req%vstd.storage_protocol.impl&%0.join. K&. K& V&. V& P&. P& a! b!))
   :qid internal_req__vstd.storage_protocol.impl&__0.join._definition
   :skolemid skolem_internal_req__vstd.storage_protocol.impl&__0.join._definition
)))
(declare-fun ens%vstd.storage_protocol.impl&%0.join. (Dcr Type Dcr Type Dcr Type Poly
  Poly Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (a! Poly) (b! Poly)
   (out! Poly)
  ) (!
   (= (ens%vstd.storage_protocol.impl&%0.join. K&. K& V&. V& P&. P& a! b! out!) (and
     (has_type out! (TYPE%vstd.storage_protocol.StorageResource. K&. K& V&. V& P&. P&))
     (= (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& out!) (vstd.storage_protocol.impl&%0.loc.?
       K&. K& V&. V& P&. P& a!
     ))
     (= (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& out!) (vstd.storage_protocol.Protocol.op.?
       P&. P& K&. K& V&. V& (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& a!)
       (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& b!)
   ))))
   :pattern ((ens%vstd.storage_protocol.impl&%0.join. K&. K& V&. V& P&. P& a! b! out!))
   :qid internal_ens__vstd.storage_protocol.impl&__0.join._definition
   :skolemid skolem_internal_ens__vstd.storage_protocol.impl&__0.join._definition
)))

;; Function-Specs crate::vstd::storage_protocol::StorageResource::split
(declare-fun req%vstd.storage_protocol.impl&%0.split. (Dcr Type Dcr Type Dcr Type Poly
  Poly Poly
 ) Bool
)
(declare-const %%global_location_label%%4 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (self! Poly) (
    a_value! Poly
   ) (b_value! Poly)
  ) (!
   (= (req%vstd.storage_protocol.impl&%0.split. K&. K& V&. V& P&. P& self! a_value! b_value!)
    (=>
     %%global_location_label%%4
     (= (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& self!) (vstd.storage_protocol.Protocol.op.?
       P&. P& K&. K& V&. V& a_value! b_value!
   ))))
   :pattern ((req%vstd.storage_protocol.impl&%0.split. K&. K& V&. V& P&. P& self! a_value!
     b_value!
   ))
   :qid internal_req__vstd.storage_protocol.impl&__0.split._definition
   :skolemid skolem_internal_req__vstd.storage_protocol.impl&__0.split._definition
)))
(declare-fun ens%vstd.storage_protocol.impl&%0.split. (Dcr Type Dcr Type Dcr Type Poly
  Poly Poly tuple%2.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (self! Poly) (
    a_value! Poly
   ) (b_value! Poly) (out! tuple%2.)
  ) (!
   (= (ens%vstd.storage_protocol.impl&%0.split. K&. K& V&. V& P&. P& self! a_value! b_value!
     out!
    ) (and
     (has_type (Poly%tuple%2. out!) (TYPE%tuple%2. $ (TYPE%vstd.storage_protocol.StorageResource.
        K&. K& V&. V& P&. P&
       ) $ (TYPE%vstd.storage_protocol.StorageResource. K&. K& V&. V& P&. P&)
     ))
     (= (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& (tuple%2./tuple%2/0 (%Poly%tuple%2.
         (Poly%tuple%2. out!)
       ))
      ) (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& self!)
     )
     (= (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& (tuple%2./tuple%2/1 (%Poly%tuple%2.
         (Poly%tuple%2. out!)
       ))
      ) (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& self!)
     )
     (= (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& (tuple%2./tuple%2/0 (
         %Poly%tuple%2. (Poly%tuple%2. out!)
       ))
      ) a_value!
     )
     (= (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& (tuple%2./tuple%2/1 (
         %Poly%tuple%2. (Poly%tuple%2. out!)
       ))
      ) b_value!
   )))
   :pattern ((ens%vstd.storage_protocol.impl&%0.split. K&. K& V&. V& P&. P& self! a_value!
     b_value! out!
   ))
   :qid internal_ens__vstd.storage_protocol.impl&__0.split._definition
   :skolemid skolem_internal_ens__vstd.storage_protocol.impl&__0.split._definition
)))

;; Function-Specs crate::vstd::storage_protocol::StorageResource::validate
(declare-fun ens%vstd.storage_protocol.impl&%0.validate. (Dcr Type Dcr Type Dcr Type
  Poly tuple%2.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (a! Poly) (out!
    tuple%2.
   )
  ) (!
   (= (ens%vstd.storage_protocol.impl&%0.validate. K&. K& V&. V& P&. P& a! out!) (and
     (has_type (Poly%tuple%2. out!) (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&. K& V&.
        V&
     )))
     (%B (let
       ((q$ (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. out!)))))
       (let
        ((t$ (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. out!)))))
        (vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
          P&. P& K&. K& V&. V& (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& a!)
          q$
         ) t$
   ))))))
   :pattern ((ens%vstd.storage_protocol.impl&%0.validate. K&. K& V&. V& P&. P& a! out!))
   :qid internal_ens__vstd.storage_protocol.impl&__0.validate._definition
   :skolemid skolem_internal_ens__vstd.storage_protocol.impl&__0.validate._definition
)))

;; Function-Axioms crate::vstd::map::Map::submap_of
(assert
 (fuel_bool_default fuel%vstd.map_lib.impl&%0.submap_of.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.map_lib.impl&%0.submap_of.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
    (= (vstd.map_lib.impl&%0.submap_of.? K&. K& V&. V& self! m2!) (forall ((k$ Poly)) (
       !
       (=>
        (has_type k$ K&)
        (=>
         (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) k$)
         (and
          (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m2!) k$)
          (= (vstd.map.impl&%0.index.? K&. K& V&. V& self! k$) (vstd.map.impl&%0.index.? K&.
            K& V&. V& m2! k$
       )))))
       :pattern ((vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V&
          self!
         ) k$
        ) (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m2!) k$)
       )
       :qid user_crate__vstd__map__Map__submap_of_18
       :skolemid skolem_user_crate__vstd__map__Map__submap_of_18
    )))
    :pattern ((vstd.map_lib.impl&%0.submap_of.? K&. K& V&. V& self! m2!))
    :qid internal_vstd.map_lib.impl&__0.submap_of.?_definition
    :skolemid skolem_internal_vstd.map_lib.impl&__0.submap_of.?_definition
))))

;; Function-Axioms crate::vstd::storage_protocol::guards
(assert
 (fuel_bool_default fuel%vstd.storage_protocol.guards.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.storage_protocol.guards.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (p! Poly) (b! Poly))
   (!
    (= (vstd.storage_protocol.guards.? K&. K& V&. V& P&. P& p! b!) (forall ((q$ Poly) (t$
        Poly
       )
      ) (!
       (=>
        (and
         (has_type q$ P&)
         (has_type t$ (TYPE%vstd.map.Map. K&. K& V&. V&))
        )
        (=>
         (%B (vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
            P&. P& K&. K& V&. V& p! q$
           ) t$
         ))
         (vstd.map_lib.impl&%0.submap_of.? K&. K& V&. V& b! t$)
       ))
       :pattern ((vstd.storage_protocol.Protocol.op.? P&. P& K&. K& V&. V& p! q$) (vstd.map_lib.impl&%0.submap_of.?
         K&. K& V&. V& b! t$
       ))
       :pattern ((vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
          P&. P& K&. K& V&. V& p! q$
         ) t$
       ))
       :qid user_crate__vstd__storage_protocol__guards_19
       :skolemid skolem_user_crate__vstd__storage_protocol__guards_19
    )))
    :pattern ((vstd.storage_protocol.guards.? K&. K& V&. V& P&. P& p! b!))
    :qid internal_vstd.storage_protocol.guards.?_definition
    :skolemid skolem_internal_vstd.storage_protocol.guards.?_definition
))))

;; Function-Specs crate::vstd::storage_protocol::StorageResource::guard
(declare-fun req%vstd.storage_protocol.impl&%0.guard. (Dcr Type Dcr Type Dcr Type Poly
  Poly
 ) Bool
)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (p! Poly) (s_value!
    Poly
   )
  ) (!
   (= (req%vstd.storage_protocol.impl&%0.guard. K&. K& V&. V& P&. P& p! s_value!) (=>
     %%global_location_label%%5
     (vstd.storage_protocol.guards.? K&. K& V&. V& P&. P& (vstd.storage_protocol.impl&%0.value.?
       K&. K& V&. V& P&. P& p!
      ) s_value!
   )))
   :pattern ((req%vstd.storage_protocol.impl&%0.guard. K&. K& V&. V& P&. P& p! s_value!))
   :qid internal_req__vstd.storage_protocol.impl&__0.guard._definition
   :skolemid skolem_internal_req__vstd.storage_protocol.impl&__0.guard._definition
)))
(declare-fun ens%vstd.storage_protocol.impl&%0.guard. (Dcr Type Dcr Type Dcr Type Poly
  Poly Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (p! Poly) (s_value!
    Poly
   ) (s! Poly)
  ) (!
   (= (ens%vstd.storage_protocol.impl&%0.guard. K&. K& V&. V& P&. P& p! s_value! s!)
    (and
     (has_type s! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (= s! s_value!)
   ))
   :pattern ((ens%vstd.storage_protocol.impl&%0.guard. K&. K& V&. V& P&. P& p! s_value!
     s!
   ))
   :qid internal_ens__vstd.storage_protocol.impl&__0.guard._definition
   :skolemid skolem_internal_ens__vstd.storage_protocol.impl&__0.guard._definition
)))

;; Function-Axioms crate::vstd::storage_protocol::incl
(assert
 (fuel_bool_default fuel%vstd.storage_protocol.incl.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.storage_protocol.incl.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (a! Poly) (b! Poly))
   (!
    (= (vstd.storage_protocol.incl.? K&. K& V&. V& P&. P& a! b!) (exists ((c$ Poly)) (!
       (and
        (has_type c$ P&)
        (= (vstd.storage_protocol.Protocol.op.? P&. P& K&. K& V&. V& a! c$) b!)
       )
       :pattern ((vstd.storage_protocol.Protocol.op.? P&. P& K&. K& V&. V& a! c$))
       :qid user_crate__vstd__storage_protocol__incl_20
       :skolemid skolem_user_crate__vstd__storage_protocol__incl_20
    )))
    :pattern ((vstd.storage_protocol.incl.? K&. K& V&. V& P&. P& a! b!))
    :qid internal_vstd.storage_protocol.incl.?_definition
    :skolemid skolem_internal_vstd.storage_protocol.incl.?_definition
))))

;; Function-Specs crate::vstd::storage_protocol::StorageResource::join_shared
(declare-fun req%vstd.storage_protocol.impl&%0.join_shared. (Dcr Type Dcr Type Dcr
  Type Poly Poly
 ) Bool
)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (self! Poly) (
    other! Poly
   )
  ) (!
   (= (req%vstd.storage_protocol.impl&%0.join_shared. K&. K& V&. V& P&. P& self! other!)
    (=>
     %%global_location_label%%6
     (= (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& self!) (vstd.storage_protocol.impl&%0.loc.?
       K&. K& V&. V& P&. P& other!
   ))))
   :pattern ((req%vstd.storage_protocol.impl&%0.join_shared. K&. K& V&. V& P&. P& self!
     other!
   ))
   :qid internal_req__vstd.storage_protocol.impl&__0.join_shared._definition
   :skolemid skolem_internal_req__vstd.storage_protocol.impl&__0.join_shared._definition
)))
(declare-fun ens%vstd.storage_protocol.impl&%0.join_shared. (Dcr Type Dcr Type Dcr
  Type Poly Poly Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (self! Poly) (
    other! Poly
   ) (out! Poly)
  ) (!
   (= (ens%vstd.storage_protocol.impl&%0.join_shared. K&. K& V&. V& P&. P& self! other!
     out!
    ) (and
     (has_type out! (TYPE%vstd.storage_protocol.StorageResource. K&. K& V&. V& P&. P&))
     (= (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& out!) (vstd.storage_protocol.impl&%0.loc.?
       K&. K& V&. V& P&. P& self!
     ))
     (vstd.storage_protocol.incl.? K&. K& V&. V& P&. P& (vstd.storage_protocol.impl&%0.value.?
       K&. K& V&. V& P&. P& self!
      ) (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& out!)
     )
     (vstd.storage_protocol.incl.? K&. K& V&. V& P&. P& (vstd.storage_protocol.impl&%0.value.?
       K&. K& V&. V& P&. P& other!
      ) (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& out!)
   )))
   :pattern ((ens%vstd.storage_protocol.impl&%0.join_shared. K&. K& V&. V& P&. P& self!
     other! out!
   ))
   :qid internal_ens__vstd.storage_protocol.impl&__0.join_shared._definition
   :skolemid skolem_internal_ens__vstd.storage_protocol.impl&__0.join_shared._definition
)))

;; Function-Specs crate::vstd::storage_protocol::StorageResource::weaken
(declare-fun req%vstd.storage_protocol.impl&%0.weaken. (Dcr Type Dcr Type Dcr Type
  Poly Poly
 ) Bool
)
(declare-const %%global_location_label%%7 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (self! Poly) (
    target! Poly
   )
  ) (!
   (= (req%vstd.storage_protocol.impl&%0.weaken. K&. K& V&. V& P&. P& self! target!)
    (=>
     %%global_location_label%%7
     (vstd.storage_protocol.incl.? K&. K& V&. V& P&. P& target! (vstd.storage_protocol.impl&%0.value.?
       K&. K& V&. V& P&. P& self!
   ))))
   :pattern ((req%vstd.storage_protocol.impl&%0.weaken. K&. K& V&. V& P&. P& self! target!))
   :qid internal_req__vstd.storage_protocol.impl&__0.weaken._definition
   :skolemid skolem_internal_req__vstd.storage_protocol.impl&__0.weaken._definition
)))
(declare-fun ens%vstd.storage_protocol.impl&%0.weaken. (Dcr Type Dcr Type Dcr Type
  Poly Poly Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (self! Poly) (
    target! Poly
   ) (out! Poly)
  ) (!
   (= (ens%vstd.storage_protocol.impl&%0.weaken. K&. K& V&. V& P&. P& self! target! out!)
    (and
     (has_type out! (TYPE%vstd.storage_protocol.StorageResource. K&. K& V&. V& P&. P&))
     (= (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& out!) (vstd.storage_protocol.impl&%0.loc.?
       K&. K& V&. V& P&. P& self!
     ))
     (= (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& out!) target!)
   ))
   :pattern ((ens%vstd.storage_protocol.impl&%0.weaken. K&. K& V&. V& P&. P& self! target!
     out!
   ))
   :qid internal_ens__vstd.storage_protocol.impl&__0.weaken._definition
   :skolemid skolem_internal_ens__vstd.storage_protocol.impl&__0.weaken._definition
)))

;; Function-Specs crate::vstd::storage_protocol::StorageResource::validate_with_shared
(declare-fun req%vstd.storage_protocol.impl&%0.validate_with_shared. (Dcr Type Dcr
  Type Dcr Type Poly Poly
 ) Bool
)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (pre%p! Poly)
   (x! Poly)
  ) (!
   (= (req%vstd.storage_protocol.impl&%0.validate_with_shared. K&. K& V&. V& P&. P& pre%p!
     x!
    ) (=>
     %%global_location_label%%8
     (= (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& pre%p!) (vstd.storage_protocol.impl&%0.loc.?
       K&. K& V&. V& P&. P& x!
   ))))
   :pattern ((req%vstd.storage_protocol.impl&%0.validate_with_shared. K&. K& V&. V& P&.
     P& pre%p! x!
   ))
   :qid internal_req__vstd.storage_protocol.impl&__0.validate_with_shared._definition
   :skolemid skolem_internal_req__vstd.storage_protocol.impl&__0.validate_with_shared._definition
)))
(declare-fun ens%vstd.storage_protocol.impl&%0.validate_with_shared. (Dcr Type Dcr
  Type Dcr Type Poly Poly Poly tuple%2.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (pre%p! Poly)
   (p! Poly) (x! Poly) (res! tuple%2.)
  ) (!
   (= (ens%vstd.storage_protocol.impl&%0.validate_with_shared. K&. K& V&. V& P&. P& pre%p!
     p! x! res!
    ) (and
     (has_type (Poly%tuple%2. res!) (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&. K& V&.
        V&
     )))
     (has_type p! (TYPE%vstd.storage_protocol.StorageResource. K&. K& V&. V& P&. P&))
     (= p! pre%p!)
     (%B (let
       ((q$ (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. res!)))))
       (let
        ((t$ (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. res!)))))
        (vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
          P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.? P&. P& K&. K& V&. V& (vstd.storage_protocol.impl&%0.value.?
            K&. K& V&. V& P&. P& p!
           ) (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& x!)
          ) q$
         ) t$
   ))))))
   :pattern ((ens%vstd.storage_protocol.impl&%0.validate_with_shared. K&. K& V&. V& P&.
     P& pre%p! p! x! res!
   ))
   :qid internal_ens__vstd.storage_protocol.impl&__0.validate_with_shared._definition
   :skolemid skolem_internal_ens__vstd.storage_protocol.impl&__0.validate_with_shared._definition
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
       :qid user_crate__vstd__set__Set__disjoint_21
       :skolemid skolem_user_crate__vstd__set__Set__disjoint_21
    )))
    :pattern ((vstd.set.impl&%0.disjoint.? A&. A& self! s2!))
    :qid internal_vstd.set.impl&__0.disjoint.?_definition
    :skolemid skolem_internal_vstd.set.impl&__0.disjoint.?_definition
))))

;; Function-Axioms crate::vstd::storage_protocol::exchanges_nondeterministic
(assert
 (fuel_bool_default fuel%vstd.storage_protocol.exchanges_nondeterministic.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.storage_protocol.exchanges_nondeterministic.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (p1! Poly) (s1!
     Poly
    ) (new_values! Poly)
   ) (!
    (= (vstd.storage_protocol.exchanges_nondeterministic.? K&. K& V&. V& P&. P& p1! s1!
      new_values!
     ) (forall ((q$ Poly) (t1$ Poly)) (!
       (=>
        (and
         (has_type q$ P&)
         (has_type t1$ (TYPE%vstd.map.Map. K&. K& V&. V&))
        )
        (=>
         (%B (vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
            P&. P& K&. K& V&. V& p1! q$
           ) t1$
         ))
         (exists ((p2$ Poly) (s2$ Poly) (t2$ Poly)) (!
           (and
            (and
             (has_type p2$ P&)
             (has_type s2$ (TYPE%vstd.map.Map. K&. K& V&. V&))
             (has_type t2$ (TYPE%vstd.map.Map. K&. K& V&. V&))
            )
            (and
             (and
              (and
               (and
                (vstd.set.impl&%0.contains.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&. K& V&.
                   V&
                  )
                 ) new_values! (Poly%tuple%2. (tuple%2./tuple%2 p2$ s2$))
                )
                (%B (vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
                   P&. P& K&. K& V&. V& p2$ q$
                  ) t2$
               )))
               (vstd.set.impl&%0.disjoint.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& t1$) (vstd.map.impl&%0.dom.?
                 K&. K& V&. V& s1!
              )))
              (vstd.set.impl&%0.disjoint.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& t2$) (vstd.map.impl&%0.dom.?
                K&. K& V&. V& s2$
             )))
             (ext_eq false (TYPE%vstd.map.Map. K&. K& V&. V&) (vstd.map_lib.impl&%0.union_prefer_right.?
               K&. K& V&. V& t1$ s1!
              ) (vstd.map_lib.impl&%0.union_prefer_right.? K&. K& V&. V& t2$ s2$)
           )))
           :pattern ((tuple%2./tuple%2 p2$ s2$) (vstd.storage_protocol.Protocol.rel.? P&. P& K&.
             K& V&. V& (vstd.storage_protocol.Protocol.op.? P&. P& K&. K& V&. V& p2$ q$) t2$
           ))
           :pattern ((tuple%2./tuple%2 p2$ s2$) (vstd.map.impl&%0.dom.? K&. K& V&. V& t2$))
           :pattern ((tuple%2./tuple%2 p2$ s2$) (vstd.set.impl&%0.disjoint.? K&. K& (vstd.map.impl&%0.dom.?
              K&. K& V&. V& t2$
             ) (vstd.map.impl&%0.dom.? K&. K& V&. V& s2$)
           ))
           :pattern ((tuple%2./tuple%2 p2$ s2$) (vstd.map_lib.impl&%0.union_prefer_right.? K&.
             K& V&. V& t2$ s2$
           ))
           :pattern ((vstd.set.impl&%0.contains.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map.
               K&. K& V&. V&
              )
             ) new_values! (Poly%tuple%2. (tuple%2./tuple%2 p2$ s2$))
            ) (vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
              P&. P& K&. K& V&. V& p2$ q$
             ) t2$
           ))
           :pattern ((vstd.set.impl&%0.contains.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map.
               K&. K& V&. V&
              )
             ) new_values! (Poly%tuple%2. (tuple%2./tuple%2 p2$ s2$))
            ) (vstd.map.impl&%0.dom.? K&. K& V&. V& t2$)
           )
           :pattern ((vstd.set.impl&%0.contains.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map.
               K&. K& V&. V&
              )
             ) new_values! (Poly%tuple%2. (tuple%2./tuple%2 p2$ s2$))
            ) (vstd.set.impl&%0.disjoint.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& t2$) (
              vstd.map.impl&%0.dom.? K&. K& V&. V& s2$
           )))
           :pattern ((vstd.set.impl&%0.contains.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map.
               K&. K& V&. V&
              )
             ) new_values! (Poly%tuple%2. (tuple%2./tuple%2 p2$ s2$))
            ) (vstd.map_lib.impl&%0.union_prefer_right.? K&. K& V&. V& t2$ s2$)
           )
           :pattern ((vstd.storage_protocol.Protocol.op.? P&. P& K&. K& V&. V& p2$ q$) (vstd.map.impl&%0.dom.?
             K&. K& V&. V& t2$
            ) (vstd.map.impl&%0.dom.? K&. K& V&. V& s2$)
           )
           :pattern ((vstd.storage_protocol.Protocol.op.? P&. P& K&. K& V&. V& p2$ q$) (vstd.set.impl&%0.disjoint.?
             K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& t2$) (vstd.map.impl&%0.dom.? K&. K& V&.
              V& s2$
           )))
           :pattern ((vstd.storage_protocol.Protocol.op.? P&. P& K&. K& V&. V& p2$ q$) (vstd.map_lib.impl&%0.union_prefer_right.?
             K&. K& V&. V& t2$ s2$
           ))
           :pattern ((vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
              P&. P& K&. K& V&. V& p2$ q$
             ) t2$
            ) (vstd.map.impl&%0.dom.? K&. K& V&. V& s2$)
           )
           :pattern ((vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
              P&. P& K&. K& V&. V& p2$ q$
             ) t2$
            ) (vstd.set.impl&%0.disjoint.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& t2$) (
              vstd.map.impl&%0.dom.? K&. K& V&. V& s2$
           )))
           :pattern ((vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
              P&. P& K&. K& V&. V& p2$ q$
             ) t2$
            ) (vstd.map_lib.impl&%0.union_prefer_right.? K&. K& V&. V& t2$ s2$)
           )
           :qid user_crate__vstd__storage_protocol__exchanges_nondeterministic_22
           :skolemid skolem_user_crate__vstd__storage_protocol__exchanges_nondeterministic_22
       ))))
       :pattern ((vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
          P&. P& K&. K& V&. V& p1! q$
         ) t1$
       ))
       :qid user_crate__vstd__storage_protocol__exchanges_nondeterministic_23
       :skolemid skolem_user_crate__vstd__storage_protocol__exchanges_nondeterministic_23
    )))
    :pattern ((vstd.storage_protocol.exchanges_nondeterministic.? K&. K& V&. V& P&. P&
      p1! s1! new_values!
    ))
    :qid internal_vstd.storage_protocol.exchanges_nondeterministic.?_definition
    :skolemid skolem_internal_vstd.storage_protocol.exchanges_nondeterministic.?_definition
))))

;; Function-Axioms crate::vstd::storage_protocol::set_op
(assert
 (fuel_bool_default fuel%vstd.storage_protocol.set_op.)
)
(declare-fun %%lambda%%2 (Dcr Type Dcr Type Dcr Type Poly Type Dcr Type Poly Dcr Type
  Dcr Type Dcr Type Poly
 ) %%Function%%
)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Dcr) (%%hole%%3 Type) (%%hole%%4
    Dcr
   ) (%%hole%%5 Type) (%%hole%%6 Poly) (%%hole%%7 Type) (%%hole%%8 Dcr) (%%hole%%9 Type)
   (%%hole%%10 Poly) (%%hole%%11 Dcr) (%%hole%%12 Type) (%%hole%%13 Dcr) (%%hole%%14
    Type
   ) (%%hole%%15 Dcr) (%%hole%%16 Type) (%%hole%%17 Poly) (v$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%2 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
      %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12 %%hole%%13
      %%hole%%14 %%hole%%15 %%hole%%16 %%hole%%17
     ) v$
    ) (B (exists ((q$ Poly)) (!
       (and
        (has_type q$ %%hole%%7)
        (and
         (vstd.set.impl&%0.contains.? %%hole%%8 %%hole%%9 %%hole%%10 (Poly%tuple%2. (tuple%2./tuple%2
            q$ (tuple%2./tuple%2/1 (%Poly%tuple%2. v$))
         )))
         (= (tuple%2./tuple%2/0 (%Poly%tuple%2. v$)) (vstd.storage_protocol.Protocol.op.? %%hole%%11
           %%hole%%12 %%hole%%13 %%hole%%14 %%hole%%15 %%hole%%16 q$ %%hole%%17
       ))))
       :pattern ((vstd.storage_protocol.Protocol.op.? %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3
         %%hole%%4 %%hole%%5 q$ %%hole%%6
       ))
       :qid user_crate__vstd__storage_protocol__set_op_24
       :skolemid skolem_user_crate__vstd__storage_protocol__set_op_24
   ))))
   :pattern ((%%apply%%0 (%%lambda%%2 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      %%hole%%5 %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12
      %%hole%%13 %%hole%%14 %%hole%%15 %%hole%%16 %%hole%%17
     ) v$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.storage_protocol.set_op.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (s! Poly) (t! Poly))
   (!
    (= (vstd.storage_protocol.set_op.? K&. K& V&. V& P&. P& s! t!) (vstd.set.impl&%0.new.?
      $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&. K& V&. V&)) $ (TYPE%fun%1. $ (TYPE%tuple%2.
        P&. P& $ (TYPE%vstd.map.Map. K&. K& V&. V&)
       ) $ BOOL
      ) (Poly%fun%1. (mk_fun (%%lambda%%2 P&. P& K&. K& V&. V& t! P& $ (TYPE%tuple%2. P&. P&
          $ (TYPE%vstd.map.Map. K&. K& V&. V&)
         ) s! P&. P& K&. K& V&. V& t!
    )))))
    :pattern ((vstd.storage_protocol.set_op.? K&. K& V&. V& P&. P& s! t!))
    :qid internal_vstd.storage_protocol.set_op.?_definition
    :skolemid skolem_internal_vstd.storage_protocol.set_op.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (s! Poly) (t! Poly))
  (!
   (=>
    (and
     (has_type s! (TYPE%vstd.set.Set. $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&. K&
         V&. V&
     ))))
     (has_type t! P&)
    )
    (has_type (vstd.storage_protocol.set_op.? K&. K& V&. V& P&. P& s! t!) (TYPE%vstd.set.Set.
      $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&. K& V&. V&))
   )))
   :pattern ((vstd.storage_protocol.set_op.? K&. K& V&. V& P&. P& s! t!))
   :qid internal_vstd.storage_protocol.set_op.?_pre_post_definition
   :skolemid skolem_internal_vstd.storage_protocol.set_op.?_pre_post_definition
)))

;; Function-Specs crate::vstd::storage_protocol::StorageResource::exchange_nondeterministic_with_shared
(declare-fun req%vstd.storage_protocol.impl&%0.exchange_nondeterministic_with_shared.
 (Dcr Type Dcr Type Dcr Type Poly Poly Poly Poly) Bool
)
(declare-const %%global_location_label%%9 Bool)
(declare-const %%global_location_label%%10 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (p! Poly) (x! Poly)
   (s! Poly) (new_values! Poly)
  ) (!
   (= (req%vstd.storage_protocol.impl&%0.exchange_nondeterministic_with_shared. K&. K&
     V&. V& P&. P& p! x! s! new_values!
    ) (and
     (=>
      %%global_location_label%%9
      (= (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& p!) (vstd.storage_protocol.impl&%0.loc.?
        K&. K& V&. V& P&. P& x!
     )))
     (=>
      %%global_location_label%%10
      (vstd.storage_protocol.exchanges_nondeterministic.? K&. K& V&. V& P&. P& (vstd.storage_protocol.Protocol.op.?
        P&. P& K&. K& V&. V& (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& p!)
        (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& x!)
       ) s! (vstd.storage_protocol.set_op.? K&. K& V&. V& P&. P& new_values! (vstd.storage_protocol.impl&%0.value.?
         K&. K& V&. V& P&. P& x!
   ))))))
   :pattern ((req%vstd.storage_protocol.impl&%0.exchange_nondeterministic_with_shared.
     K&. K& V&. V& P&. P& p! x! s! new_values!
   ))
   :qid internal_req__vstd.storage_protocol.impl&__0.exchange_nondeterministic_with_shared._definition
   :skolemid skolem_internal_req__vstd.storage_protocol.impl&__0.exchange_nondeterministic_with_shared._definition
)))
(declare-fun ens%vstd.storage_protocol.impl&%0.exchange_nondeterministic_with_shared.
 (Dcr Type Dcr Type Dcr Type Poly Poly Poly Poly tuple%2.) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (p! Poly) (x! Poly)
   (s! Poly) (new_values! Poly) (out! tuple%2.)
  ) (!
   (= (ens%vstd.storage_protocol.impl&%0.exchange_nondeterministic_with_shared. K&. K&
     V&. V& P&. P& p! x! s! new_values! out!
    ) (and
     (has_type (Poly%tuple%2. out!) (TYPE%tuple%2. $ (TYPE%vstd.storage_protocol.StorageResource.
        K&. K& V&. V& P&. P&
       ) $ (TYPE%vstd.map.Map. K&. K& V&. V&)
     ))
     (let
      ((new_p$ (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. out!)))))
      (let
       ((new_s$ (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. out!)))))
       (and
        (= (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& new_p$) (vstd.storage_protocol.impl&%0.loc.?
          K&. K& V&. V& P&. P& p!
        ))
        (vstd.set.impl&%0.contains.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&. K& V&.
           V&
          )
         ) new_values! (Poly%tuple%2. (tuple%2./tuple%2 (vstd.storage_protocol.impl&%0.value.?
            K&. K& V&. V& P&. P& new_p$
           ) new_s$
   ))))))))
   :pattern ((ens%vstd.storage_protocol.impl&%0.exchange_nondeterministic_with_shared.
     K&. K& V&. V& P&. P& p! x! s! new_values! out!
   ))
   :qid internal_ens__vstd.storage_protocol.impl&__0.exchange_nondeterministic_with_shared._definition
   :skolemid skolem_internal_ens__vstd.storage_protocol.impl&__0.exchange_nondeterministic_with_shared._definition
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

;; Function-Axioms crate::vstd::storage_protocol::exchanges
(assert
 (fuel_bool_default fuel%vstd.storage_protocol.exchanges.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.storage_protocol.exchanges.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (p1! Poly) (b1!
     Poly
    ) (p2! Poly) (b2! Poly)
   ) (!
    (= (vstd.storage_protocol.exchanges.? K&. K& V&. V& P&. P& p1! b1! p2! b2!) (forall
      ((q$ Poly) (t1$ Poly)) (!
       (=>
        (and
         (has_type q$ P&)
         (has_type t1$ (TYPE%vstd.map.Map. K&. K& V&. V&))
        )
        (=>
         (%B (vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
            P&. P& K&. K& V&. V& p1! q$
           ) t1$
         ))
         (exists ((t2$ Poly)) (!
           (and
            (has_type t2$ (TYPE%vstd.map.Map. K&. K& V&. V&))
            (and
             (and
              (and
               (%B (vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
                  P&. P& K&. K& V&. V& p2! q$
                 ) t2$
               ))
               (vstd.set.impl&%0.disjoint.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& t1$) (vstd.map.impl&%0.dom.?
                 K&. K& V&. V& b1!
              )))
              (vstd.set.impl&%0.disjoint.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& t2$) (vstd.map.impl&%0.dom.?
                K&. K& V&. V& b2!
             )))
             (ext_eq false (TYPE%vstd.map.Map. K&. K& V&. V&) (vstd.map_lib.impl&%0.union_prefer_right.?
               K&. K& V&. V& t1$ b1!
              ) (vstd.map_lib.impl&%0.union_prefer_right.? K&. K& V&. V& t2$ b2!)
           )))
           :pattern ((vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
              P&. P& K&. K& V&. V& p2! q$
             ) t2$
           ))
           :pattern ((vstd.map.impl&%0.dom.? K&. K& V&. V& t2$))
           :pattern ((vstd.set.impl&%0.disjoint.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V&
              t2$
             ) (vstd.map.impl&%0.dom.? K&. K& V&. V& b2!)
           ))
           :pattern ((vstd.map_lib.impl&%0.union_prefer_right.? K&. K& V&. V& t2$ b2!))
           :qid user_crate__vstd__storage_protocol__exchanges_25
           :skolemid skolem_user_crate__vstd__storage_protocol__exchanges_25
       ))))
       :pattern ((vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
          P&. P& K&. K& V&. V& p1! q$
         ) t1$
       ))
       :qid user_crate__vstd__storage_protocol__exchanges_26
       :skolemid skolem_user_crate__vstd__storage_protocol__exchanges_26
    )))
    :pattern ((vstd.storage_protocol.exchanges.? K&. K& V&. V& P&. P& p1! b1! p2! b2!))
    :qid internal_vstd.storage_protocol.exchanges.?_definition
    :skolemid skolem_internal_vstd.storage_protocol.exchanges.?_definition
))))

;; Function-Axioms crate::vstd::storage_protocol::deposits
(assert
 (fuel_bool_default fuel%vstd.storage_protocol.deposits.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.storage_protocol.deposits.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (p1! Poly) (b1!
     Poly
    ) (p2! Poly)
   ) (!
    (= (vstd.storage_protocol.deposits.? K&. K& V&. V& P&. P& p1! b1! p2!) (forall ((q$ Poly)
       (t1$ Poly)
      ) (!
       (=>
        (and
         (has_type q$ P&)
         (has_type t1$ (TYPE%vstd.map.Map. K&. K& V&. V&))
        )
        (=>
         (%B (vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
            P&. P& K&. K& V&. V& p1! q$
           ) t1$
         ))
         (exists ((t2$ Poly)) (!
           (and
            (has_type t2$ (TYPE%vstd.map.Map. K&. K& V&. V&))
            (and
             (and
              (%B (vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
                 P&. P& K&. K& V&. V& p2! q$
                ) t2$
              ))
              (vstd.set.impl&%0.disjoint.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& t1$) (vstd.map.impl&%0.dom.?
                K&. K& V&. V& b1!
             )))
             (ext_eq false (TYPE%vstd.map.Map. K&. K& V&. V&) (vstd.map_lib.impl&%0.union_prefer_right.?
               K&. K& V&. V& t1$ b1!
              ) t2$
           )))
           :pattern ((vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
              P&. P& K&. K& V&. V& p2! q$
             ) t2$
           ))
           :qid user_crate__vstd__storage_protocol__deposits_27
           :skolemid skolem_user_crate__vstd__storage_protocol__deposits_27
       ))))
       :pattern ((vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
          P&. P& K&. K& V&. V& p1! q$
         ) t1$
       ))
       :qid user_crate__vstd__storage_protocol__deposits_28
       :skolemid skolem_user_crate__vstd__storage_protocol__deposits_28
    )))
    :pattern ((vstd.storage_protocol.deposits.? K&. K& V&. V& P&. P& p1! b1! p2!))
    :qid internal_vstd.storage_protocol.deposits.?_definition
    :skolemid skolem_internal_vstd.storage_protocol.deposits.?_definition
))))

;; Function-Axioms crate::vstd::storage_protocol::withdraws
(assert
 (fuel_bool_default fuel%vstd.storage_protocol.withdraws.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.storage_protocol.withdraws.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (p1! Poly) (p2!
     Poly
    ) (b2! Poly)
   ) (!
    (= (vstd.storage_protocol.withdraws.? K&. K& V&. V& P&. P& p1! p2! b2!) (forall ((q$
        Poly
       ) (t1$ Poly)
      ) (!
       (=>
        (and
         (has_type q$ P&)
         (has_type t1$ (TYPE%vstd.map.Map. K&. K& V&. V&))
        )
        (=>
         (%B (vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
            P&. P& K&. K& V&. V& p1! q$
           ) t1$
         ))
         (exists ((t2$ Poly)) (!
           (and
            (has_type t2$ (TYPE%vstd.map.Map. K&. K& V&. V&))
            (and
             (and
              (%B (vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
                 P&. P& K&. K& V&. V& p2! q$
                ) t2$
              ))
              (vstd.set.impl&%0.disjoint.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& t2$) (vstd.map.impl&%0.dom.?
                K&. K& V&. V& b2!
             )))
             (ext_eq false (TYPE%vstd.map.Map. K&. K& V&. V&) t1$ (vstd.map_lib.impl&%0.union_prefer_right.?
               K&. K& V&. V& t2$ b2!
           ))))
           :pattern ((vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
              P&. P& K&. K& V&. V& p2! q$
             ) t2$
           ))
           :pattern ((vstd.map.impl&%0.dom.? K&. K& V&. V& t2$))
           :pattern ((vstd.set.impl&%0.disjoint.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V&
              t2$
             ) (vstd.map.impl&%0.dom.? K&. K& V&. V& b2!)
           ))
           :pattern ((vstd.map_lib.impl&%0.union_prefer_right.? K&. K& V&. V& t2$ b2!))
           :qid user_crate__vstd__storage_protocol__withdraws_29
           :skolemid skolem_user_crate__vstd__storage_protocol__withdraws_29
       ))))
       :pattern ((vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
          P&. P& K&. K& V&. V& p1! q$
         ) t1$
       ))
       :qid user_crate__vstd__storage_protocol__withdraws_30
       :skolemid skolem_user_crate__vstd__storage_protocol__withdraws_30
    )))
    :pattern ((vstd.storage_protocol.withdraws.? K&. K& V&. V& P&. P& p1! p2! b2!))
    :qid internal_vstd.storage_protocol.withdraws.?_definition
    :skolemid skolem_internal_vstd.storage_protocol.withdraws.?_definition
))))

;; Function-Axioms crate::vstd::storage_protocol::updates
(assert
 (fuel_bool_default fuel%vstd.storage_protocol.updates.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.storage_protocol.updates.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (p1! Poly) (p2!
     Poly
    )
   ) (!
    (= (vstd.storage_protocol.updates.? K&. K& V&. V& P&. P& p1! p2!) (forall ((q$ Poly)
       (t1$ Poly)
      ) (!
       (=>
        (and
         (has_type q$ P&)
         (has_type t1$ (TYPE%vstd.map.Map. K&. K& V&. V&))
        )
        (=>
         (%B (vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
            P&. P& K&. K& V&. V& p1! q$
           ) t1$
         ))
         (%B (vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
            P&. P& K&. K& V&. V& p2! q$
           ) t1$
       ))))
       :pattern ((vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
          P&. P& K&. K& V&. V& p1! q$
         ) t1$
       ))
       :pattern ((vstd.storage_protocol.Protocol.rel.? P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.op.?
          P&. P& K&. K& V&. V& p2! q$
         ) t1$
       ))
       :qid user_crate__vstd__storage_protocol__updates_31
       :skolemid skolem_user_crate__vstd__storage_protocol__updates_31
    )))
    :pattern ((vstd.storage_protocol.updates.? K&. K& V&. V& P&. P& p1! p2!))
    :qid internal_vstd.storage_protocol.updates.?_definition
    :skolemid skolem_internal_vstd.storage_protocol.updates.?_definition
))))

;; Function-Specs crate::vstd::storage_protocol::StorageResource::exchange_nondeterministic
(declare-fun req%vstd.storage_protocol.impl&%0.exchange_nondeterministic. (Dcr Type
  Dcr Type Dcr Type Poly Poly Poly
 ) Bool
)
(declare-const %%global_location_label%%11 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (p! Poly) (s! Poly)
   (new_values! Poly)
  ) (!
   (= (req%vstd.storage_protocol.impl&%0.exchange_nondeterministic. K&. K& V&. V& P&.
     P& p! s! new_values!
    ) (=>
     %%global_location_label%%11
     (vstd.storage_protocol.exchanges_nondeterministic.? K&. K& V&. V& P&. P& (vstd.storage_protocol.impl&%0.value.?
       K&. K& V&. V& P&. P& p!
      ) s! new_values!
   )))
   :pattern ((req%vstd.storage_protocol.impl&%0.exchange_nondeterministic. K&. K& V&.
     V& P&. P& p! s! new_values!
   ))
   :qid internal_req__vstd.storage_protocol.impl&__0.exchange_nondeterministic._definition
   :skolemid skolem_internal_req__vstd.storage_protocol.impl&__0.exchange_nondeterministic._definition
)))
(declare-fun ens%vstd.storage_protocol.impl&%0.exchange_nondeterministic. (Dcr Type
  Dcr Type Dcr Type Poly Poly Poly tuple%2.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (p! Poly) (s! Poly)
   (new_values! Poly) (out! tuple%2.)
  ) (!
   (= (ens%vstd.storage_protocol.impl&%0.exchange_nondeterministic. K&. K& V&. V& P&.
     P& p! s! new_values! out!
    ) (and
     (has_type (Poly%tuple%2. out!) (TYPE%tuple%2. $ (TYPE%vstd.storage_protocol.StorageResource.
        K&. K& V&. V& P&. P&
       ) $ (TYPE%vstd.map.Map. K&. K& V&. V&)
     ))
     (let
      ((new_p$ (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. out!)))))
      (let
       ((new_s$ (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. out!)))))
       (and
        (= (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& new_p$) (vstd.storage_protocol.impl&%0.loc.?
          K&. K& V&. V& P&. P& p!
        ))
        (vstd.set.impl&%0.contains.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&. K& V&.
           V&
          )
         ) new_values! (Poly%tuple%2. (tuple%2./tuple%2 (vstd.storage_protocol.impl&%0.value.?
            K&. K& V&. V& P&. P& new_p$
           ) new_s$
   ))))))))
   :pattern ((ens%vstd.storage_protocol.impl&%0.exchange_nondeterministic. K&. K& V&.
     V& P&. P& p! s! new_values! out!
   ))
   :qid internal_ens__vstd.storage_protocol.impl&__0.exchange_nondeterministic._definition
   :skolemid skolem_internal_ens__vstd.storage_protocol.impl&__0.exchange_nondeterministic._definition
)))

;; Function-Def crate::vstd::storage_protocol::StorageResource::exchange_nondeterministic
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/storage_protocol.rs:240:5: 244:41 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const P&. Dcr)
 (declare-const P& Type)
 (declare-const out! tuple%2.)
 (declare-const p! Poly)
 (declare-const s! Poly)
 (declare-const new_values! Poly)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 Poly)
 (declare-const tmp%3 Poly)
 (declare-const v@ Poly)
 (declare-const tmp%4 Poly)
 (declare-const tmp%5 Bool)
 (declare-const tmp%6 Bool)
 (declare-const q@ Poly)
 (declare-const tmp%7 Bool)
 (declare-const tmp%8 tuple%2.)
 (declare-const tmp%%@ tuple%2.)
 (declare-const selff@ Poly)
 (declare-const unit@ Poly)
 (declare-const new_values0@ Poly)
 (declare-const s1@ Poly)
 (declare-const s2@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type p! (TYPE%vstd.storage_protocol.StorageResource. K&. K& V&. V& P&. P&))
 )
 (assert
  (has_type s! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (has_type new_values! (TYPE%vstd.set.Set. $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map.
      K&. K& V&. V&
 )))))
 (assert
  (tr_bound%vstd.storage_protocol.Protocol. P&. P& K&. K& V&. V&)
 )
 (assert
  (vstd.storage_protocol.exchanges_nondeterministic.? K&. K& V&. V& P&. P& (vstd.storage_protocol.impl&%0.value.?
    K&. K& V&. V& P&. P& p!
   ) s! new_values!
 ))
 (declare-fun %%choose%%0 (Type Poly Dcr Type Poly Dcr Type Dcr Type Dcr Type Poly Poly
   Dcr Type Dcr Type Dcr Type Poly
  ) Poly
 )
 (assert
  (forall ((%%hole%%0 Type) (%%hole%%1 Poly) (%%hole%%2 Dcr) (%%hole%%3 Type) (%%hole%%4
     Poly
    ) (%%hole%%5 Dcr) (%%hole%%6 Type) (%%hole%%7 Dcr) (%%hole%%8 Type) (%%hole%%9 Dcr)
    (%%hole%%10 Type) (%%hole%%11 Poly) (%%hole%%12 Poly) (%%hole%%13 Dcr) (%%hole%%14
     Type
    ) (%%hole%%15 Dcr) (%%hole%%16 Type) (%%hole%%17 Dcr) (%%hole%%18 Type) (%%hole%%19
     Poly
    )
   ) (!
    (=>
     (exists ((q$1 Poly)) (!
       (and
        (has_type q$1 %%hole%%0)
        (and
         (vstd.set.impl&%0.contains.? %%hole%%2 %%hole%%3 %%hole%%4 (Poly%tuple%2. (tuple%2./tuple%2
            q$1 %%hole%%1
         )))
         (= %%hole%%12 (vstd.storage_protocol.Protocol.op.? %%hole%%5 %%hole%%6 %%hole%%7 %%hole%%8
           %%hole%%9 %%hole%%10 q$1 %%hole%%11
       ))))
       :pattern ((vstd.storage_protocol.Protocol.op.? %%hole%%13 %%hole%%14 %%hole%%15 %%hole%%16
         %%hole%%17 %%hole%%18 q$1 %%hole%%19
       ))
       :qid user_crate__vstd__storage_protocol__StorageResource__exchange_nondeterministic_32
       :skolemid skolem_user_crate__vstd__storage_protocol__StorageResource__exchange_nondeterministic_32
     ))
     (exists ((q$1 Poly)) (!
       (and
        (and
         (has_type q$1 %%hole%%0)
         (and
          (vstd.set.impl&%0.contains.? %%hole%%2 %%hole%%3 %%hole%%4 (Poly%tuple%2. (tuple%2./tuple%2
             q$1 %%hole%%1
          )))
          (= %%hole%%12 (vstd.storage_protocol.Protocol.op.? %%hole%%5 %%hole%%6 %%hole%%7 %%hole%%8
            %%hole%%9 %%hole%%10 q$1 %%hole%%11
        ))))
        (= (%%choose%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5 %%hole%%6
          %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12 %%hole%%13 %%hole%%14
          %%hole%%15 %%hole%%16 %%hole%%17 %%hole%%18 %%hole%%19
         ) q$1
       ))
       :pattern ((vstd.storage_protocol.Protocol.op.? %%hole%%13 %%hole%%14 %%hole%%15 %%hole%%16
         %%hole%%17 %%hole%%18 q$1 %%hole%%19
    )))))
    :pattern ((%%choose%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
      %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12 %%hole%%13
      %%hole%%14 %%hole%%15 %%hole%%16 %%hole%%17 %%hole%%18 %%hole%%19
 )))))
 (declare-const %%switch_label%%0 Bool)
 (declare-const %%switch_label%%1 Bool)
 ;; precondition not satisfied
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
 ;; precondition not satisfied
 (declare-const %%location_label%%6 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%7 Bool)
 (assert
  (not (=>
    (= tmp%1 (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& p!))
    (=>
     (ens%vstd.storage_protocol.Protocol.op_unit. P&. P& K&. K& V&. V& tmp%1)
     (=>
      (= tmp%2 (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& p!))
      (=>
       (= tmp%3 (vstd.storage_protocol.Protocol.unit.? P&. P& K&. K& V&. V&))
       (and
        (=>
         %%location_label%%0
         (req%vstd.storage_protocol.impl&%0.split. K&. K& V&. V& P&. P& p! tmp%2 tmp%3)
        )
        (=>
         (ens%vstd.storage_protocol.impl&%0.split. K&. K& V&. V& P&. P& p! tmp%2 tmp%3 tmp%%@)
         (=>
          (= selff@ (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%@))))
          (=>
           (= unit@ (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%@))))
           (=>
            (= new_values0@ (vstd.storage_protocol.set_op.? K&. K& V&. V& P&. P& new_values! (vstd.storage_protocol.Protocol.unit.?
               P&. P& K&. K& V&. V&
            )))
            (=>
             (= s1@ new_values0@)
             (=>
              (= s2@ new_values!)
              (and
               (and
                (=>
                 (has_type v@ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&. K& V&. V&)))
                 (=>
                  (= tmp%4 (tuple%2./tuple%2/0 (%Poly%tuple%2. v@)))
                  (=>
                   (ens%vstd.storage_protocol.Protocol.op_unit. P&. P& K&. K& V&. V& tmp%4)
                   (or
                    (and
                     (=>
                      (vstd.set.impl&%0.contains.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&. K& V&.
                         V&
                        )
                       ) new_values! v@
                      )
                      (=>
                       (= tmp%5 (vstd.set.impl&%0.contains.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&.
                           K& V&. V&
                          )
                         ) new_values0@ v@
                       ))
                       (and
                        (=>
                         %%location_label%%1
                         tmp%5
                        )
                        (=>
                         tmp%5
                         %%switch_label%%1
                     ))))
                     (=>
                      (not (vstd.set.impl&%0.contains.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&. K&
                          V&. V&
                         )
                        ) new_values! v@
                      ))
                      %%switch_label%%1
                    ))
                    (and
                     (not %%switch_label%%1)
                     (or
                      (and
                       (=>
                        (vstd.set.impl&%0.contains.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&. K& V&.
                           V&
                          )
                         ) new_values0@ v@
                        )
                        (=>
                         (= q@ (as_type (%%choose%%0 P& (tuple%2./tuple%2/1 (%Poly%tuple%2. v@)) $ (TYPE%tuple%2.
                             P&. P& $ (TYPE%vstd.map.Map. K&. K& V&. V&)
                            ) new_values! P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.unit.? P&. P& K&.
                             K& V&. V&
                            ) (tuple%2./tuple%2/0 (%Poly%tuple%2. v@)) P&. P& K&. K& V&. V& (vstd.storage_protocol.Protocol.unit.?
                             P&. P& K&. K& V&. V&
                            )
                           ) P&
                         ))
                         (=>
                          (ens%vstd.storage_protocol.Protocol.op_unit. P&. P& K&. K& V&. V& q@)
                          (=>
                           (= tmp%6 (vstd.set.impl&%0.contains.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&.
                               K& V&. V&
                              )
                             ) new_values! v@
                           ))
                           (and
                            (=>
                             %%location_label%%2
                             tmp%6
                            )
                            (=>
                             tmp%6
                             %%switch_label%%0
                       ))))))
                       (=>
                        (not (vstd.set.impl&%0.contains.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&. K&
                            V&. V&
                           )
                          ) new_values0@ v@
                        ))
                        %%switch_label%%0
                      ))
                      (and
                       (not %%switch_label%%0)
                       (=>
                        %%location_label%%3
                        (and
                         (=>
                          (vstd.set.impl&%0.contains.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&. K& V&.
                             V&
                            )
                           ) s1@ v@
                          )
                          (vstd.set.impl&%0.contains.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&. K& V&.
                             V&
                            )
                           ) s2@ v@
                         ))
                         (=>
                          (vstd.set.impl&%0.contains.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&. K& V&.
                             V&
                            )
                           ) s2@ v@
                          )
                          (vstd.set.impl&%0.contains.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&. K& V&.
                             V&
                            )
                           ) s1@ v@
                )))))))))))
                (=>
                 (forall ((v$ Poly)) (!
                   (=>
                    (has_type v$ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&. K& V&. V&)))
                    (and
                     (=>
                      (vstd.set.impl&%0.contains.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&. K& V&.
                         V&
                        )
                       ) s1@ v$
                      )
                      (vstd.set.impl&%0.contains.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&. K& V&.
                         V&
                        )
                       ) s2@ v$
                     ))
                     (=>
                      (vstd.set.impl&%0.contains.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&. K& V&.
                         V&
                        )
                       ) s2@ v$
                      )
                      (vstd.set.impl&%0.contains.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&. K& V&.
                         V&
                        )
                       ) s1@ v$
                   ))))
                   :pattern ((vstd.set.impl&%0.contains.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map.
                       K&. K& V&. V&
                      )
                     ) s1@ v$
                   ))
                   :pattern ((vstd.set.impl&%0.contains.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map.
                       K&. K& V&. V&
                      )
                     ) s2@ v$
                   ))
                   :qid user_crate__vstd__storage_protocol__StorageResource__exchange_nondeterministic_33
                   :skolemid skolem_user_crate__vstd__storage_protocol__StorageResource__exchange_nondeterministic_33
                 ))
                 (=>
                  (= tmp%7 (ext_eq false (TYPE%vstd.set.Set. $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map.
                       K&. K& V&. V&
                     ))
                    ) s1@ s2@
                  ))
                  (and
                   (=>
                    %%location_label%%4
                    tmp%7
                   )
                   (=>
                    tmp%7
                    (=>
                     %%location_label%%5
                     (= s1@ s2@)
               ))))))
               (=>
                (= s1@ s2@)
                (and
                 (=>
                  %%location_label%%6
                  (req%vstd.storage_protocol.impl&%0.exchange_nondeterministic_with_shared. K&. K& V&.
                   V& P&. P& selff@ unit@ s! new_values!
                 ))
                 (=>
                  (ens%vstd.storage_protocol.impl&%0.exchange_nondeterministic_with_shared. K&. K& V&.
                   V& P&. P& selff@ unit@ s! new_values! tmp%8
                  )
                  (=>
                   (= out! tmp%8)
                   (=>
                    %%location_label%%7
                    (let
                     ((new_p$ (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. out!)))))
                     (let
                      ((new_s$ (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. out!)))))
                      (and
                       (= (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& new_p$) (vstd.storage_protocol.impl&%0.loc.?
                         K&. K& V&. V& P&. P& p!
                       ))
                       (vstd.set.impl&%0.contains.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&. K& V&.
                          V&
                         )
                        ) new_values! (Poly%tuple%2. (tuple%2./tuple%2 (vstd.storage_protocol.impl&%0.value.?
                           K&. K& V&. V& P&. P& new_p$
                          ) new_s$
 )))))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::storage_protocol::StorageResource::exchange
(declare-fun req%vstd.storage_protocol.impl&%0.exchange. (Dcr Type Dcr Type Dcr Type
  Poly Poly Poly Poly
 ) Bool
)
(declare-const %%global_location_label%%12 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (p! Poly) (s! Poly)
   (new_p_value! Poly) (new_s_value! Poly)
  ) (!
   (= (req%vstd.storage_protocol.impl&%0.exchange. K&. K& V&. V& P&. P& p! s! new_p_value!
     new_s_value!
    ) (=>
     %%global_location_label%%12
     (vstd.storage_protocol.exchanges.? K&. K& V&. V& P&. P& (vstd.storage_protocol.impl&%0.value.?
       K&. K& V&. V& P&. P& p!
      ) s! new_p_value! new_s_value!
   )))
   :pattern ((req%vstd.storage_protocol.impl&%0.exchange. K&. K& V&. V& P&. P& p! s! new_p_value!
     new_s_value!
   ))
   :qid internal_req__vstd.storage_protocol.impl&__0.exchange._definition
   :skolemid skolem_internal_req__vstd.storage_protocol.impl&__0.exchange._definition
)))
(declare-fun ens%vstd.storage_protocol.impl&%0.exchange. (Dcr Type Dcr Type Dcr Type
  Poly Poly Poly Poly tuple%2.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (p! Poly) (s! Poly)
   (new_p_value! Poly) (new_s_value! Poly) (out! tuple%2.)
  ) (!
   (= (ens%vstd.storage_protocol.impl&%0.exchange. K&. K& V&. V& P&. P& p! s! new_p_value!
     new_s_value! out!
    ) (and
     (has_type (Poly%tuple%2. out!) (TYPE%tuple%2. $ (TYPE%vstd.storage_protocol.StorageResource.
        K&. K& V&. V& P&. P&
       ) $ (TYPE%vstd.map.Map. K&. K& V&. V&)
     ))
     (let
      ((new_p$ (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. out!)))))
      (let
       ((new_s$ (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. out!)))))
       (and
        (and
         (= (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& new_p$) (vstd.storage_protocol.impl&%0.loc.?
           K&. K& V&. V& P&. P& p!
         ))
         (= (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& new_p$) new_p_value!)
        )
        (= new_s$ new_s_value!)
   )))))
   :pattern ((ens%vstd.storage_protocol.impl&%0.exchange. K&. K& V&. V& P&. P& p! s! new_p_value!
     new_s_value! out!
   ))
   :qid internal_ens__vstd.storage_protocol.impl&__0.exchange._definition
   :skolemid skolem_internal_ens__vstd.storage_protocol.impl&__0.exchange._definition
)))

;; Function-Def crate::vstd::storage_protocol::StorageResource::exchange
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/storage_protocol.rs:187:5: 192:41 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const P&. Dcr)
 (declare-const P& Type)
 (declare-const out! tuple%2.)
 (declare-const p! Poly)
 (declare-const s! Poly)
 (declare-const new_p_value! Poly)
 (declare-const new_s_value! Poly)
 (declare-const tmp%1 tuple%2.)
 (declare-const se@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type p! (TYPE%vstd.storage_protocol.StorageResource. K&. K& V&. V& P&. P&))
 )
 (assert
  (has_type s! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (has_type new_p_value! P&)
 )
 (assert
  (has_type new_s_value! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (tr_bound%vstd.storage_protocol.Protocol. P&. P& K&. K& V&. V&)
 )
 (assert
  (vstd.storage_protocol.exchanges.? K&. K& V&. V& P&. P& (vstd.storage_protocol.impl&%0.value.?
    K&. K& V&. V& P&. P& p!
   ) s! new_p_value! new_s_value!
 ))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= se@ (vstd.set.impl&%0.insert.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&. K&
        V&. V&
       )
      ) (vstd.set.impl&%0.empty.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&. K& V&.
         V&
       ))
      ) (Poly%tuple%2. (tuple%2./tuple%2 new_p_value! new_s_value!))
    ))
    (and
     (=>
      %%location_label%%0
      (req%vstd.storage_protocol.impl&%0.exchange_nondeterministic. K&. K& V&. V& P&. P&
       p! s! se@
     ))
     (=>
      (ens%vstd.storage_protocol.impl&%0.exchange_nondeterministic. K&. K& V&. V& P&. P&
       p! s! se@ tmp%1
      )
      (=>
       (= out! tmp%1)
       (=>
        %%location_label%%1
        (let
         ((new_p$ (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. out!)))))
         (let
          ((new_s$ (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. out!)))))
          (and
           (and
            (= (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& new_p$) (vstd.storage_protocol.impl&%0.loc.?
              K&. K& V&. V& P&. P& p!
            ))
            (= (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& new_p$) new_p_value!)
           )
           (= new_s$ new_s_value!)
 ))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::storage_protocol::StorageResource::deposit
(declare-fun req%vstd.storage_protocol.impl&%0.deposit. (Dcr Type Dcr Type Dcr Type
  Poly Poly Poly
 ) Bool
)
(declare-const %%global_location_label%%13 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (self! Poly) (
    base! Poly
   ) (new_value! Poly)
  ) (!
   (= (req%vstd.storage_protocol.impl&%0.deposit. K&. K& V&. V& P&. P& self! base! new_value!)
    (=>
     %%global_location_label%%13
     (vstd.storage_protocol.deposits.? K&. K& V&. V& P&. P& (vstd.storage_protocol.impl&%0.value.?
       K&. K& V&. V& P&. P& self!
      ) base! new_value!
   )))
   :pattern ((req%vstd.storage_protocol.impl&%0.deposit. K&. K& V&. V& P&. P& self! base!
     new_value!
   ))
   :qid internal_req__vstd.storage_protocol.impl&__0.deposit._definition
   :skolemid skolem_internal_req__vstd.storage_protocol.impl&__0.deposit._definition
)))
(declare-fun ens%vstd.storage_protocol.impl&%0.deposit. (Dcr Type Dcr Type Dcr Type
  Poly Poly Poly Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (self! Poly) (
    base! Poly
   ) (new_value! Poly) (out! Poly)
  ) (!
   (= (ens%vstd.storage_protocol.impl&%0.deposit. K&. K& V&. V& P&. P& self! base! new_value!
     out!
    ) (and
     (has_type out! (TYPE%vstd.storage_protocol.StorageResource. K&. K& V&. V& P&. P&))
     (= (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& out!) (vstd.storage_protocol.impl&%0.loc.?
       K&. K& V&. V& P&. P& self!
     ))
     (= (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& out!) new_value!)
   ))
   :pattern ((ens%vstd.storage_protocol.impl&%0.deposit. K&. K& V&. V& P&. P& self! base!
     new_value! out!
   ))
   :qid internal_ens__vstd.storage_protocol.impl&__0.deposit._definition
   :skolemid skolem_internal_ens__vstd.storage_protocol.impl&__0.deposit._definition
)))

;; Function-Def crate::vstd::storage_protocol::StorageResource::deposit
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/storage_protocol.rs:205:5: 205:100 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const P&. Dcr)
 (declare-const P& Type)
 (declare-const out! Poly)
 (declare-const self! Poly)
 (declare-const base! Poly)
 (declare-const new_value! Poly)
 (declare-const tmp%1 tuple%2.)
 (declare-const tmp%2 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.storage_protocol.StorageResource. K&. K& V&. V& P&. P&))
 )
 (assert
  (has_type base! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (has_type new_value! P&)
 )
 (assert
  (tr_bound%vstd.storage_protocol.Protocol. P&. P& K&. K& V&. V&)
 )
 (assert
  (vstd.storage_protocol.deposits.? K&. K& V&. V& P&. P& (vstd.storage_protocol.impl&%0.value.?
    K&. K& V&. V& P&. P& self!
   ) base! new_value!
 ))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (= tmp%2 (vstd.map.impl&%0.empty.? K&. K& V&. V&))
    (and
     (=>
      %%location_label%%0
      (req%vstd.storage_protocol.impl&%0.exchange. K&. K& V&. V& P&. P& self! base! new_value!
       tmp%2
     ))
     (=>
      (ens%vstd.storage_protocol.impl&%0.exchange. K&. K& V&. V& P&. P& self! base! new_value!
       tmp%2 tmp%1
      )
      (=>
       (= out! (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%1))))
       (and
        (=>
         %%location_label%%1
         (= (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& out!) (vstd.storage_protocol.impl&%0.loc.?
           K&. K& V&. V& P&. P& self!
        )))
        (=>
         %%location_label%%2
         (= (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& out!) new_value!)
 ))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::storage_protocol::StorageResource::withdraw
(declare-fun req%vstd.storage_protocol.impl&%0.withdraw. (Dcr Type Dcr Type Dcr Type
  Poly Poly Poly
 ) Bool
)
(declare-const %%global_location_label%%14 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (self! Poly) (
    new_value! Poly
   ) (new_base! Poly)
  ) (!
   (= (req%vstd.storage_protocol.impl&%0.withdraw. K&. K& V&. V& P&. P& self! new_value!
     new_base!
    ) (=>
     %%global_location_label%%14
     (vstd.storage_protocol.withdraws.? K&. K& V&. V& P&. P& (vstd.storage_protocol.impl&%0.value.?
       K&. K& V&. V& P&. P& self!
      ) new_value! new_base!
   )))
   :pattern ((req%vstd.storage_protocol.impl&%0.withdraw. K&. K& V&. V& P&. P& self! new_value!
     new_base!
   ))
   :qid internal_req__vstd.storage_protocol.impl&__0.withdraw._definition
   :skolemid skolem_internal_req__vstd.storage_protocol.impl&__0.withdraw._definition
)))
(declare-fun ens%vstd.storage_protocol.impl&%0.withdraw. (Dcr Type Dcr Type Dcr Type
  Poly Poly Poly tuple%2.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (self! Poly) (
    new_value! Poly
   ) (new_base! Poly) (out! tuple%2.)
  ) (!
   (= (ens%vstd.storage_protocol.impl&%0.withdraw. K&. K& V&. V& P&. P& self! new_value!
     new_base! out!
    ) (and
     (has_type (Poly%tuple%2. out!) (TYPE%tuple%2. $ (TYPE%vstd.storage_protocol.StorageResource.
        K&. K& V&. V& P&. P&
       ) $ (TYPE%vstd.map.Map. K&. K& V&. V&)
     ))
     (= (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& (tuple%2./tuple%2/0 (%Poly%tuple%2.
         (Poly%tuple%2. out!)
       ))
      ) (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& self!)
     )
     (= (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& (tuple%2./tuple%2/0 (
         %Poly%tuple%2. (Poly%tuple%2. out!)
       ))
      ) new_value!
     )
     (= (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. out!))) new_base!)
   ))
   :pattern ((ens%vstd.storage_protocol.impl&%0.withdraw. K&. K& V&. V& P&. P& self! new_value!
     new_base! out!
   ))
   :qid internal_ens__vstd.storage_protocol.impl&__0.withdraw._definition
   :skolemid skolem_internal_ens__vstd.storage_protocol.impl&__0.withdraw._definition
)))

;; Function-Def crate::vstd::storage_protocol::StorageResource::withdraw
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/storage_protocol.rs:215:5: 218:6 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const P&. Dcr)
 (declare-const P& Type)
 (declare-const out! tuple%2.)
 (declare-const self! Poly)
 (declare-const new_value! Poly)
 (declare-const new_base! Poly)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 tuple%2.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.storage_protocol.StorageResource. K&. K& V&. V& P&. P&))
 )
 (assert
  (has_type new_value! P&)
 )
 (assert
  (has_type new_base! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (tr_bound%vstd.storage_protocol.Protocol. P&. P& K&. K& V&. V&)
 )
 (assert
  (vstd.storage_protocol.withdraws.? K&. K& V&. V& P&. P& (vstd.storage_protocol.impl&%0.value.?
    K&. K& V&. V& P&. P& self!
   ) new_value! new_base!
 ))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (ens%vstd.map.impl&%0.tracked_empty. K&. K& V&. V& tmp%1)
    (and
     (=>
      %%location_label%%0
      (req%vstd.storage_protocol.impl&%0.exchange. K&. K& V&. V& P&. P& self! tmp%1 new_value!
       new_base!
     ))
     (=>
      (ens%vstd.storage_protocol.impl&%0.exchange. K&. K& V&. V& P&. P& self! tmp%1 new_value!
       new_base! tmp%2
      )
      (=>
       (= out! tmp%2)
       (and
        (=>
         %%location_label%%1
         (= (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& (tuple%2./tuple%2/0 (%Poly%tuple%2.
             (Poly%tuple%2. out!)
           ))
          ) (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& self!)
        ))
        (and
         (=>
          %%location_label%%2
          (= (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& (tuple%2./tuple%2/0 (
              %Poly%tuple%2. (Poly%tuple%2. out!)
            ))
           ) new_value!
         ))
         (=>
          %%location_label%%3
          (= (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. out!))) new_base!)
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::storage_protocol::StorageResource::update
(declare-fun req%vstd.storage_protocol.impl&%0.update. (Dcr Type Dcr Type Dcr Type
  Poly Poly
 ) Bool
)
(declare-const %%global_location_label%%15 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (self! Poly) (
    new_value! Poly
   )
  ) (!
   (= (req%vstd.storage_protocol.impl&%0.update. K&. K& V&. V& P&. P& self! new_value!)
    (=>
     %%global_location_label%%15
     (vstd.storage_protocol.updates.? K&. K& V&. V& P&. P& (vstd.storage_protocol.impl&%0.value.?
       K&. K& V&. V& P&. P& self!
      ) new_value!
   )))
   :pattern ((req%vstd.storage_protocol.impl&%0.update. K&. K& V&. V& P&. P& self! new_value!))
   :qid internal_req__vstd.storage_protocol.impl&__0.update._definition
   :skolemid skolem_internal_req__vstd.storage_protocol.impl&__0.update._definition
)))
(declare-fun ens%vstd.storage_protocol.impl&%0.update. (Dcr Type Dcr Type Dcr Type
  Poly Poly Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (self! Poly) (
    new_value! Poly
   ) (out! Poly)
  ) (!
   (= (ens%vstd.storage_protocol.impl&%0.update. K&. K& V&. V& P&. P& self! new_value!
     out!
    ) (and
     (has_type out! (TYPE%vstd.storage_protocol.StorageResource. K&. K& V&. V& P&. P&))
     (= (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& out!) (vstd.storage_protocol.impl&%0.loc.?
       K&. K& V&. V& P&. P& self!
     ))
     (= (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& out!) new_value!)
   ))
   :pattern ((ens%vstd.storage_protocol.impl&%0.update. K&. K& V&. V& P&. P& self! new_value!
     out!
   ))
   :qid internal_ens__vstd.storage_protocol.impl&__0.update._definition
   :skolemid skolem_internal_ens__vstd.storage_protocol.impl&__0.update._definition
)))

;; Function-Def crate::vstd::storage_protocol::StorageResource::update
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/storage_protocol.rs:230:5: 230:74 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const P&. Dcr)
 (declare-const P& Type)
 (declare-const out! Poly)
 (declare-const self! Poly)
 (declare-const new_value! Poly)
 (declare-const tmp%1 Poly)
 (declare-const tmp%2 tuple%2.)
 (declare-const tmp%3 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.storage_protocol.StorageResource. K&. K& V&. V& P&. P&))
 )
 (assert
  (has_type new_value! P&)
 )
 (assert
  (tr_bound%vstd.storage_protocol.Protocol. P&. P& K&. K& V&. V&)
 )
 (assert
  (vstd.storage_protocol.updates.? K&. K& V&. V& P&. P& (vstd.storage_protocol.impl&%0.value.?
    K&. K& V&. V& P&. P& self!
   ) new_value!
 ))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (ens%vstd.map.impl&%0.tracked_empty. K&. K& V&. V& tmp%1)
    (=>
     (= tmp%3 (vstd.map.impl&%0.empty.? K&. K& V&. V&))
     (and
      (=>
       %%location_label%%0
       (req%vstd.storage_protocol.impl&%0.exchange. K&. K& V&. V& P&. P& self! tmp%1 new_value!
        tmp%3
      ))
      (=>
       (ens%vstd.storage_protocol.impl&%0.exchange. K&. K& V&. V& P&. P& self! tmp%1 new_value!
        tmp%3 tmp%2
       )
       (=>
        (= out! (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%2))))
        (and
         (=>
          %%location_label%%1
          (= (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& out!) (vstd.storage_protocol.impl&%0.loc.?
            K&. K& V&. V& P&. P& self!
         )))
         (=>
          %%location_label%%2
          (= (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& out!) new_value!)
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::storage_protocol::StorageResource::exchange_with_shared
(declare-fun req%vstd.storage_protocol.impl&%0.exchange_with_shared. (Dcr Type Dcr
  Type Dcr Type Poly Poly Poly Poly Poly
 ) Bool
)
(declare-const %%global_location_label%%16 Bool)
(declare-const %%global_location_label%%17 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (p! Poly) (x! Poly)
   (s! Poly) (new_p_value! Poly) (new_s_value! Poly)
  ) (!
   (= (req%vstd.storage_protocol.impl&%0.exchange_with_shared. K&. K& V&. V& P&. P& p!
     x! s! new_p_value! new_s_value!
    ) (and
     (=>
      %%global_location_label%%16
      (= (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& p!) (vstd.storage_protocol.impl&%0.loc.?
        K&. K& V&. V& P&. P& x!
     )))
     (=>
      %%global_location_label%%17
      (vstd.storage_protocol.exchanges.? K&. K& V&. V& P&. P& (vstd.storage_protocol.Protocol.op.?
        P&. P& K&. K& V&. V& (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& p!)
        (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& x!)
       ) s! (vstd.storage_protocol.Protocol.op.? P&. P& K&. K& V&. V& new_p_value! (vstd.storage_protocol.impl&%0.value.?
         K&. K& V&. V& P&. P& x!
        )
       ) new_s_value!
   ))))
   :pattern ((req%vstd.storage_protocol.impl&%0.exchange_with_shared. K&. K& V&. V& P&.
     P& p! x! s! new_p_value! new_s_value!
   ))
   :qid internal_req__vstd.storage_protocol.impl&__0.exchange_with_shared._definition
   :skolemid skolem_internal_req__vstd.storage_protocol.impl&__0.exchange_with_shared._definition
)))
(declare-fun ens%vstd.storage_protocol.impl&%0.exchange_with_shared. (Dcr Type Dcr
  Type Dcr Type Poly Poly Poly Poly Poly tuple%2.
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (P&. Dcr) (P& Type) (p! Poly) (x! Poly)
   (s! Poly) (new_p_value! Poly) (new_s_value! Poly) (out! tuple%2.)
  ) (!
   (= (ens%vstd.storage_protocol.impl&%0.exchange_with_shared. K&. K& V&. V& P&. P& p!
     x! s! new_p_value! new_s_value! out!
    ) (and
     (has_type (Poly%tuple%2. out!) (TYPE%tuple%2. $ (TYPE%vstd.storage_protocol.StorageResource.
        K&. K& V&. V& P&. P&
       ) $ (TYPE%vstd.map.Map. K&. K& V&. V&)
     ))
     (= (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& (tuple%2./tuple%2/0 (%Poly%tuple%2.
         (Poly%tuple%2. out!)
       ))
      ) (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& p!)
     )
     (= (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& (tuple%2./tuple%2/0 (
         %Poly%tuple%2. (Poly%tuple%2. out!)
       ))
      ) new_p_value!
     )
     (= (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. out!))) new_s_value!)
   ))
   :pattern ((ens%vstd.storage_protocol.impl&%0.exchange_with_shared. K&. K& V&. V& P&.
     P& p! x! s! new_p_value! new_s_value! out!
   ))
   :qid internal_ens__vstd.storage_protocol.impl&__0.exchange_with_shared._definition
   :skolemid skolem_internal_ens__vstd.storage_protocol.impl&__0.exchange_with_shared._definition
)))

;; Function-Def crate::vstd::storage_protocol::StorageResource::exchange_with_shared
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/storage_protocol.rs:324:5: 330:41 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const P&. Dcr)
 (declare-const P& Type)
 (declare-const out! tuple%2.)
 (declare-const p! Poly)
 (declare-const x! Poly)
 (declare-const s! Poly)
 (declare-const new_p_value! Poly)
 (declare-const new_s_value! Poly)
 (declare-const tmp%1 tuple%2.)
 (declare-const se@ Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type p! (TYPE%vstd.storage_protocol.StorageResource. K&. K& V&. V& P&. P&))
 )
 (assert
  (has_type x! (TYPE%vstd.storage_protocol.StorageResource. K&. K& V&. V& P&. P&))
 )
 (assert
  (has_type s! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (has_type new_p_value! P&)
 )
 (assert
  (has_type new_s_value! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (tr_bound%vstd.storage_protocol.Protocol. P&. P& K&. K& V&. V&)
 )
 (assert
  (= (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& p!) (vstd.storage_protocol.impl&%0.loc.?
    K&. K& V&. V& P&. P& x!
 )))
 (assert
  (vstd.storage_protocol.exchanges.? K&. K& V&. V& P&. P& (vstd.storage_protocol.Protocol.op.?
    P&. P& K&. K& V&. V& (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& p!)
    (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& x!)
   ) s! (vstd.storage_protocol.Protocol.op.? P&. P& K&. K& V&. V& new_p_value! (vstd.storage_protocol.impl&%0.value.?
     K&. K& V&. V& P&. P& x!
    )
   ) new_s_value!
 ))
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%3 Bool)
 (assert
  (not (=>
    (= se@ (vstd.set.impl&%0.insert.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&. K&
        V&. V&
       )
      ) (vstd.set.impl&%0.empty.? $ (TYPE%tuple%2. P&. P& $ (TYPE%vstd.map.Map. K&. K& V&.
         V&
       ))
      ) (Poly%tuple%2. (tuple%2./tuple%2 new_p_value! new_s_value!))
    ))
    (and
     (=>
      %%location_label%%0
      (req%vstd.storage_protocol.impl&%0.exchange_nondeterministic_with_shared. K&. K& V&.
       V& P&. P& p! x! s! se@
     ))
     (=>
      (ens%vstd.storage_protocol.impl&%0.exchange_nondeterministic_with_shared. K&. K& V&.
       V& P&. P& p! x! s! se@ tmp%1
      )
      (=>
       (= out! tmp%1)
       (and
        (=>
         %%location_label%%1
         (= (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& (tuple%2./tuple%2/0 (%Poly%tuple%2.
             (Poly%tuple%2. out!)
           ))
          ) (vstd.storage_protocol.impl&%0.loc.? K&. K& V&. V& P&. P& p!)
        ))
        (and
         (=>
          %%location_label%%2
          (= (vstd.storage_protocol.impl&%0.value.? K&. K& V&. V& P&. P& (tuple%2./tuple%2/0 (
              %Poly%tuple%2. (Poly%tuple%2. out!)
            ))
           ) new_p_value!
         ))
         (=>
          %%location_label%%3
          (= (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. out!))) new_s_value!)
 )))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
