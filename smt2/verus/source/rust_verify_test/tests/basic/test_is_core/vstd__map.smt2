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

;; MODULE 'module vstd::map'

;; Fuel
(declare-const fuel%vstd.map.impl&%0.total. FuelId)
(declare-const fuel%vstd.map.impl&%0.new. FuelId)
(declare-const fuel%vstd.map.impl&%0.spec_index. FuelId)
(declare-const fuel%vstd.map.impl&%0.len. FuelId)
(declare-const fuel%vstd.map.impl&%0.ext_equal. FuelId)
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
(declare-const fuel%vstd.map.check_argument_is_map. FuelId)
(declare-const fuel%vstd.map_lib.impl&%0.union_prefer_right. FuelId)
(declare-const fuel%vstd.map_lib.impl&%0.remove_keys. FuelId)
(declare-const fuel%vstd.map_lib.impl&%0.restrict. FuelId)
(declare-const fuel%vstd.set.impl&%0.full. FuelId)
(declare-const fuel%vstd.set.impl&%0.subset_of. FuelId)
(assert
 (distinct fuel%vstd.map.impl&%0.total. fuel%vstd.map.impl&%0.new. fuel%vstd.map.impl&%0.spec_index.
  fuel%vstd.map.impl&%0.len. fuel%vstd.map.impl&%0.ext_equal. fuel%vstd.map.axiom_map_index_decreases_finite.
  fuel%vstd.map.axiom_map_index_decreases_infinite. fuel%vstd.map.axiom_map_empty.
  fuel%vstd.map.axiom_map_insert_domain. fuel%vstd.map.axiom_map_insert_same. fuel%vstd.map.axiom_map_insert_different.
  fuel%vstd.map.axiom_map_remove_domain. fuel%vstd.map.axiom_map_remove_different.
  fuel%vstd.map.axiom_map_ext_equal. fuel%vstd.map.axiom_map_ext_equal_deep. fuel%vstd.map.check_argument_is_map.
  fuel%vstd.map_lib.impl&%0.union_prefer_right. fuel%vstd.map_lib.impl&%0.remove_keys.
  fuel%vstd.map_lib.impl&%0.restrict. fuel%vstd.set.impl&%0.full. fuel%vstd.set.impl&%0.subset_of.
))

;; Datatypes
(declare-datatypes ((tuple%0. 0)) (((tuple%0./tuple%0))))
(declare-fun TYPE%fun%1. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.map.Map. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%vstd.set.Set. (Dcr Type) Type)
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

;; Function-Decl crate::vstd::set::Set::complement
(declare-fun vstd.set.impl&%0.complement.? (Dcr Type Poly) Poly)

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

;; Function-Decl crate::vstd::map::Map::insert
(declare-fun vstd.map.impl&%0.insert.? (Dcr Type Dcr Type Poly Poly Poly) Poly)

;; Function-Decl crate::vstd::map::Map::remove
(declare-fun vstd.map.impl&%0.remove.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::set::Set::subset_of
(declare-fun vstd.set.impl&%0.subset_of.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::map::Map::new
(declare-fun vstd.map.impl&%0.new.? (Dcr Type Dcr Type Dcr Type Dcr Type Poly Poly)
 Poly
)

;; Function-Decl crate::vstd::map::Map::remove_keys
(declare-fun vstd.map_lib.impl&%0.remove_keys.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::map::Map::restrict
(declare-fun vstd.map_lib.impl&%0.restrict.? (Dcr Type Dcr Type Poly Poly) Poly)

;; Function-Decl crate::vstd::map::Map::union_prefer_right
(declare-fun vstd.map_lib.impl&%0.union_prefer_right.? (Dcr Type Dcr Type Poly Poly)
 Poly
)

;; Function-Decl crate::vstd::set::Set::full
(declare-fun vstd.set.impl&%0.full.? (Dcr Type) Poly)

;; Function-Decl crate::vstd::map::Map::total
(declare-fun vstd.map.impl&%0.total.? (Dcr Type Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::map::Map::len
(declare-fun vstd.map.impl&%0.len.? (Dcr Type Dcr Type Poly) Int)

;; Function-Decl crate::vstd::map::Map::ext_equal
(declare-fun vstd.map.impl&%0.ext_equal.? (Dcr Type Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::map::check_argument_is_map
(declare-fun vstd.map.check_argument_is_map.? (Dcr Type Dcr Type Poly) Poly)

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

;; Function-Axioms crate::vstd::set::Set::complement
(assert
 (forall ((A&. Dcr) (A& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.set.Set. A&. A&))
    (has_type (vstd.set.impl&%0.complement.? A&. A& self!) (TYPE%vstd.set.Set. A&. A&))
   )
   :pattern ((vstd.set.impl&%0.complement.? A&. A& self!))
   :qid internal_vstd.set.impl&__0.complement.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.complement.?_pre_post_definition
)))

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

;; Function-Def crate::vstd::map::axiom_map_index_decreases_finite
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/map.rs:199:1: 199:84 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m! Poly)
 (declare-const key! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (has_type key! K&)
 )
 (assert
  (vstd.set.impl&%0.finite.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!))
 )
 (assert
  (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!) key!)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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
    :qid user_crate__vstd__map__axiom_map_index_decreases_finite_0
    :skolemid skolem_user_crate__vstd__map__axiom_map_index_decreases_finite_0
))))

;; Function-Def crate::vstd::map::axiom_map_index_decreases_infinite
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/map.rs:211:1: 211:86 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m! Poly)
 (declare-const key! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (has_type key! K&)
 )
 (assert
  (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!) key!)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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
    :qid user_crate__vstd__map__axiom_map_index_decreases_infinite_1
    :skolemid skolem_user_crate__vstd__map__axiom_map_index_decreases_infinite_1
))))

;; Function-Axioms crate::vstd::map::Map::empty
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type)) (!
   (has_type (vstd.map.impl&%0.empty.? K&. K& V&. V&) (TYPE%vstd.map.Map. K&. K& V&. V&))
   :pattern ((vstd.map.impl&%0.empty.? K&. K& V&. V&))
   :qid internal_vstd.map.impl&__0.empty.?_pre_post_definition
   :skolemid skolem_internal_vstd.map.impl&__0.empty.?_pre_post_definition
)))

;; Function-Def crate::vstd::map::axiom_map_empty
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/map.rs:221:1: 221:47 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
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
    :qid user_crate__vstd__map__axiom_map_empty_2
    :skolemid skolem_user_crate__vstd__map__axiom_map_empty_2
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

;; Function-Def crate::vstd::map::axiom_map_insert_domain
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/map.rs:230:1: 230:85 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m! Poly)
 (declare-const key! Poly)
 (declare-const value! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (has_type key! K&)
 )
 (assert
  (has_type value! V&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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
    :qid user_crate__vstd__map__axiom_map_insert_domain_3
    :skolemid skolem_user_crate__vstd__map__axiom_map_insert_domain_3
))))

;; Function-Def crate::vstd::map::axiom_map_insert_same
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/map.rs:238:1: 238:83 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m! Poly)
 (declare-const key! Poly)
 (declare-const value! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (has_type key! K&)
 )
 (assert
  (has_type value! V&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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
    :qid user_crate__vstd__map__axiom_map_insert_same_4
    :skolemid skolem_user_crate__vstd__map__axiom_map_insert_same_4
))))

;; Function-Def crate::vstd::map::axiom_map_insert_different
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/map.rs:246:1: 246:98 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m! Poly)
 (declare-const key1! Poly)
 (declare-const key2! Poly)
 (declare-const value! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (has_type key1! K&)
 )
 (assert
  (has_type key2! K&)
 )
 (assert
  (has_type value! V&)
 )
 (assert
  (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!) key1!)
 )
 (assert
  (not (= key1! key2!))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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
    :qid user_crate__vstd__map__axiom_map_insert_different_5
    :skolemid skolem_user_crate__vstd__map__axiom_map_insert_different_5
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

;; Function-Def crate::vstd::map::axiom_map_remove_domain
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/map.rs:258:1: 258:75 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m! Poly)
 (declare-const key! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (has_type key! K&)
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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
    :qid user_crate__vstd__map__axiom_map_remove_domain_6
    :skolemid skolem_user_crate__vstd__map__axiom_map_remove_domain_6
))))

;; Function-Def crate::vstd::map::axiom_map_remove_different
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/map.rs:267:1: 267:88 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m! Poly)
 (declare-const key1! Poly)
 (declare-const key2! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (has_type key1! K&)
 )
 (assert
  (has_type key2! K&)
 )
 (assert
  (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m!) key1!)
 )
 (assert
  (not (= key1! key2!))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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
    :qid user_crate__vstd__map__axiom_map_remove_different_7
    :skolemid skolem_user_crate__vstd__map__axiom_map_remove_different_7
))))

;; Function-Def crate::vstd::map::axiom_map_ext_equal
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/map.rs:278:1: 278:79 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m1! Poly)
 (declare-const m2! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m1! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (has_type m2! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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
         :qid user_crate__vstd__map__axiom_map_ext_equal_8
         :skolemid skolem_user_crate__vstd__map__axiom_map_ext_equal_8
    )))))
    :pattern ((ext_eq false (TYPE%vstd.map.Map. K&. K& V&. V&) m1! m2!))
    :qid user_crate__vstd__map__axiom_map_ext_equal_9
    :skolemid skolem_user_crate__vstd__map__axiom_map_ext_equal_9
))))

;; Function-Def crate::vstd::map::axiom_map_ext_equal_deep
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/map.rs:288:1: 288:84 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const m1! Poly)
 (declare-const m2! Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type m1! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (has_type m2! (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (not true)
 )
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

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
         :qid user_crate__vstd__map__axiom_map_ext_equal_deep_11
         :skolemid skolem_user_crate__vstd__map__axiom_map_ext_equal_deep_11
    )))))
    :pattern ((ext_eq true (TYPE%vstd.map.Map. K&. K& V&. V&) m1! m2!))
    :qid user_crate__vstd__map__axiom_map_ext_equal_deep_12
    :skolemid skolem_user_crate__vstd__map__axiom_map_ext_equal_deep_12
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
(declare-const %%global_location_label%%2 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (pre%self! Poly) (key! Poly)) (!
   (= (req%vstd.map.impl&%0.tracked_remove. K&. K& V&. V& pre%self! key!) (=>
     %%global_location_label%%2
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

;; Function-Specs crate::vstd::map::Map::tracked_borrow
(declare-fun req%vstd.map.impl&%0.tracked_borrow. (Dcr Type Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly)) (!
   (= (req%vstd.map.impl&%0.tracked_borrow. K&. K& V&. V& self! key!) (=>
     %%global_location_label%%3
     (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) key!)
   ))
   :pattern ((req%vstd.map.impl&%0.tracked_borrow. K&. K& V&. V& self! key!))
   :qid internal_req__vstd.map.impl&__0.tracked_borrow._definition
   :skolemid skolem_internal_req__vstd.map.impl&__0.tracked_borrow._definition
)))
(declare-fun ens%vstd.map.impl&%0.tracked_borrow. (Dcr Type Dcr Type Poly Poly Poly)
 Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (key! Poly) (v! Poly))
  (!
   (= (ens%vstd.map.impl&%0.tracked_borrow. K&. K& V&. V& self! key! v!) (and
     (has_type v! V&)
     (= v! (vstd.map.impl&%0.index.? K&. K& V&. V& self! key!))
   ))
   :pattern ((ens%vstd.map.impl&%0.tracked_borrow. K&. K& V&. V& self! key! v!))
   :qid internal_ens__vstd.map.impl&__0.tracked_borrow._definition
   :skolemid skolem_internal_ens__vstd.map.impl&__0.tracked_borrow._definition
)))

;; Function-Specs crate::vstd::map::Map::tracked_map_keys
(declare-fun req%vstd.map.impl&%0.tracked_map_keys. (Dcr Type Dcr Type Dcr Type Poly
  Poly
 ) Bool
)
(declare-const %%global_location_label%%4 Bool)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (J&. Dcr) (J& Type) (old_map! Poly)
   (key_map! Poly)
  ) (!
   (= (req%vstd.map.impl&%0.tracked_map_keys. K&. K& V&. V& J&. J& old_map! key_map!)
    (and
     (=>
      %%global_location_label%%4
      (forall ((j$ Poly)) (!
        (=>
         (has_type j$ J&)
         (=>
          (vstd.set.impl&%0.contains.? J&. J& (vstd.map.impl&%0.dom.? J&. J& K&. K& key_map!)
           j$
          )
          (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& old_map!)
           (vstd.map.impl&%0.index.? J&. J& K&. K& key_map! j$)
        )))
        :pattern ((vstd.set.impl&%0.contains.? J&. J& (vstd.map.impl&%0.dom.? J&. J& K&. K&
           key_map!
          ) j$
        ))
        :qid user_crate__vstd__map__Map__tracked_map_keys_14
        :skolemid skolem_user_crate__vstd__map__Map__tracked_map_keys_14
     )))
     (=>
      %%global_location_label%%5
      (forall ((j1$ Poly) (j2$ Poly)) (!
        (=>
         (and
          (has_type j1$ J&)
          (has_type j2$ J&)
         )
         (=>
          (and
           (and
            (not (= j1$ j2$))
            (vstd.set.impl&%0.contains.? J&. J& (vstd.map.impl&%0.dom.? J&. J& K&. K& key_map!)
             j1$
           ))
           (vstd.set.impl&%0.contains.? J&. J& (vstd.map.impl&%0.dom.? J&. J& K&. K& key_map!)
            j2$
          ))
          (not (= (vstd.map.impl&%0.index.? J&. J& K&. K& key_map! j1$) (vstd.map.impl&%0.index.?
             J&. J& K&. K& key_map! j2$
        )))))
        :pattern ((vstd.map.impl&%0.index.? J&. J& K&. K& key_map! j1$) (vstd.map.impl&%0.index.?
          J&. J& K&. K& key_map! j2$
        ))
        :qid user_crate__vstd__map__Map__tracked_map_keys_15
        :skolemid skolem_user_crate__vstd__map__Map__tracked_map_keys_15
   )))))
   :pattern ((req%vstd.map.impl&%0.tracked_map_keys. K&. K& V&. V& J&. J& old_map! key_map!))
   :qid internal_req__vstd.map.impl&__0.tracked_map_keys._definition
   :skolemid skolem_internal_req__vstd.map.impl&__0.tracked_map_keys._definition
)))
(declare-fun ens%vstd.map.impl&%0.tracked_map_keys. (Dcr Type Dcr Type Dcr Type Poly
  Poly Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (J&. Dcr) (J& Type) (old_map! Poly)
   (key_map! Poly) (new_map! Poly)
  ) (!
   (= (ens%vstd.map.impl&%0.tracked_map_keys. K&. K& V&. V& J&. J& old_map! key_map! new_map!)
    (and
     (has_type new_map! (TYPE%vstd.map.Map. J&. J& V&. V&))
     (forall ((j$ Poly)) (!
       (=>
        (has_type j$ J&)
        (= (vstd.set.impl&%0.contains.? J&. J& (vstd.map.impl&%0.dom.? J&. J& V&. V& new_map!)
          j$
         ) (vstd.set.impl&%0.contains.? J&. J& (vstd.map.impl&%0.dom.? J&. J& K&. K& key_map!)
          j$
       )))
       :pattern ((vstd.set.impl&%0.contains.? J&. J& (vstd.map.impl&%0.dom.? J&. J& V&. V&
          new_map!
         ) j$
       ))
       :qid user_crate__vstd__map__Map__tracked_map_keys_16
       :skolemid skolem_user_crate__vstd__map__Map__tracked_map_keys_16
     ))
     (forall ((j$ Poly)) (!
       (=>
        (has_type j$ J&)
        (=>
         (vstd.set.impl&%0.contains.? J&. J& (vstd.map.impl&%0.dom.? J&. J& K&. K& key_map!)
          j$
         )
         (and
          (vstd.set.impl&%0.contains.? J&. J& (vstd.map.impl&%0.dom.? J&. J& V&. V& new_map!)
           j$
          )
          (= (vstd.map.impl&%0.index.? J&. J& V&. V& new_map! j$) (vstd.map.impl&%0.index.? K&.
            K& V&. V& old_map! (vstd.map.impl&%0.index.? J&. J& K&. K& key_map! j$)
       )))))
       :pattern ((vstd.map.impl&%0.index.? J&. J& V&. V& new_map! j$))
       :qid user_crate__vstd__map__Map__tracked_map_keys_17
       :skolemid skolem_user_crate__vstd__map__Map__tracked_map_keys_17
   ))))
   :pattern ((ens%vstd.map.impl&%0.tracked_map_keys. K&. K& V&. V& J&. J& old_map! key_map!
     new_map!
   ))
   :qid internal_ens__vstd.map.impl&__0.tracked_map_keys._definition
   :skolemid skolem_internal_ens__vstd.map.impl&__0.tracked_map_keys._definition
)))

;; Function-Axioms crate::vstd::set::Set::subset_of
(assert
 (fuel_bool_default fuel%vstd.set.impl&%0.subset_of.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.set.impl&%0.subset_of.)
  (forall ((A&. Dcr) (A& Type) (self! Poly) (s2! Poly)) (!
    (= (vstd.set.impl&%0.subset_of.? A&. A& self! s2!) (forall ((a$ Poly)) (!
       (=>
        (has_type a$ A&)
        (=>
         (vstd.set.impl&%0.contains.? A&. A& self! a$)
         (vstd.set.impl&%0.contains.? A&. A& s2! a$)
       ))
       :pattern ((vstd.set.impl&%0.contains.? A&. A& self! a$))
       :pattern ((vstd.set.impl&%0.contains.? A&. A& s2! a$))
       :qid user_crate__vstd__set__Set__subset_of_18
       :skolemid skolem_user_crate__vstd__set__Set__subset_of_18
    )))
    :pattern ((vstd.set.impl&%0.subset_of.? A&. A& self! s2!))
    :qid internal_vstd.set.impl&__0.subset_of.?_definition
    :skolemid skolem_internal_vstd.set.impl&__0.subset_of.?_definition
))))

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

;; Function-Axioms crate::vstd::map::Map::remove_keys
(assert
 (fuel_bool_default fuel%vstd.map_lib.impl&%0.remove_keys.)
)
(declare-fun %%lambda%%0 (Dcr Type Poly Dcr Type Poly) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 Dcr) (%%hole%%4
    Type
   ) (%%hole%%5 Poly) (k$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5)
     k$
    ) (B (and
      (vstd.set.impl&%0.contains.? %%hole%%0 %%hole%%1 %%hole%%2 k$)
      (not (vstd.set.impl&%0.contains.? %%hole%%3 %%hole%%4 %%hole%%5 k$))
   )))
   :pattern ((%%apply%%0 (%%lambda%%0 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      %%hole%%5
     ) k$
)))))
(declare-fun %%lambda%%1 (Dcr Type Dcr Type Poly) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Dcr) (%%hole%%3 Type) (%%hole%%4
    Poly
   ) (k$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4) k$)
    (vstd.map.impl&%0.index.? %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 k$)
   )
   :pattern ((%%apply%%0 (%%lambda%%1 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4)
     k$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.map_lib.impl&%0.remove_keys.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (keys! Poly)) (!
    (= (vstd.map_lib.impl&%0.remove_keys.? K&. K& V&. V& self! keys!) (vstd.map.impl&%0.new.?
      K&. K& V&. V& $ (TYPE%fun%1. K&. K& $ BOOL) $ (TYPE%fun%1. K&. K& V&. V&) (Poly%fun%1.
       (mk_fun (%%lambda%%0 K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) K&. K& keys!))
      ) (Poly%fun%1. (mk_fun (%%lambda%%1 K&. K& V&. V& self!)))
    ))
    :pattern ((vstd.map_lib.impl&%0.remove_keys.? K&. K& V&. V& self! keys!))
    :qid internal_vstd.map_lib.impl&__0.remove_keys.?_definition
    :skolemid skolem_internal_vstd.map_lib.impl&__0.remove_keys.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (keys! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (has_type keys! (TYPE%vstd.set.Set. K&. K&))
    )
    (has_type (vstd.map_lib.impl&%0.remove_keys.? K&. K& V&. V& self! keys!) (TYPE%vstd.map.Map.
      K&. K& V&. V&
   )))
   :pattern ((vstd.map_lib.impl&%0.remove_keys.? K&. K& V&. V& self! keys!))
   :qid internal_vstd.map_lib.impl&__0.remove_keys.?_pre_post_definition
   :skolemid skolem_internal_vstd.map_lib.impl&__0.remove_keys.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::map::Map::restrict
(assert
 (fuel_bool_default fuel%vstd.map_lib.impl&%0.restrict.)
)
(declare-fun %%lambda%%2 (Dcr Type Poly Dcr Type Poly) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 Dcr) (%%hole%%4
    Type
   ) (%%hole%%5 Poly) (k$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%2 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5)
     k$
    ) (B (and
      (vstd.set.impl&%0.contains.? %%hole%%0 %%hole%%1 %%hole%%2 k$)
      (vstd.set.impl&%0.contains.? %%hole%%3 %%hole%%4 %%hole%%5 k$)
   )))
   :pattern ((%%apply%%0 (%%lambda%%2 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      %%hole%%5
     ) k$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.map_lib.impl&%0.restrict.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (keys! Poly)) (!
    (= (vstd.map_lib.impl&%0.restrict.? K&. K& V&. V& self! keys!) (vstd.map.impl&%0.new.?
      K&. K& V&. V& $ (TYPE%fun%1. K&. K& $ BOOL) $ (TYPE%fun%1. K&. K& V&. V&) (Poly%fun%1.
       (mk_fun (%%lambda%%2 K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) K&. K& keys!))
      ) (Poly%fun%1. (mk_fun (%%lambda%%1 K&. K& V&. V& self!)))
    ))
    :pattern ((vstd.map_lib.impl&%0.restrict.? K&. K& V&. V& self! keys!))
    :qid internal_vstd.map_lib.impl&__0.restrict.?_definition
    :skolemid skolem_internal_vstd.map_lib.impl&__0.restrict.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (keys! Poly)) (!
   (=>
    (and
     (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (has_type keys! (TYPE%vstd.set.Set. K&. K&))
    )
    (has_type (vstd.map_lib.impl&%0.restrict.? K&. K& V&. V& self! keys!) (TYPE%vstd.map.Map.
      K&. K& V&. V&
   )))
   :pattern ((vstd.map_lib.impl&%0.restrict.? K&. K& V&. V& self! keys!))
   :qid internal_vstd.map_lib.impl&__0.restrict.?_pre_post_definition
   :skolemid skolem_internal_vstd.map_lib.impl&__0.restrict.?_pre_post_definition
)))

;; Function-Specs crate::vstd::map::Map::tracked_remove_keys
(declare-fun req%vstd.map.impl&%0.tracked_remove_keys. (Dcr Type Dcr Type Poly Poly)
 Bool
)
(declare-const %%global_location_label%%6 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (pre%self! Poly) (keys! Poly)) (!
   (= (req%vstd.map.impl&%0.tracked_remove_keys. K&. K& V&. V& pre%self! keys!) (=>
     %%global_location_label%%6
     (vstd.set.impl&%0.subset_of.? K&. K& keys! (vstd.map.impl&%0.dom.? K&. K& V&. V& pre%self!))
   ))
   :pattern ((req%vstd.map.impl&%0.tracked_remove_keys. K&. K& V&. V& pre%self! keys!))
   :qid internal_req__vstd.map.impl&__0.tracked_remove_keys._definition
   :skolemid skolem_internal_req__vstd.map.impl&__0.tracked_remove_keys._definition
)))
(declare-fun ens%vstd.map.impl&%0.tracked_remove_keys. (Dcr Type Dcr Type Poly Poly
  Poly Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (pre%self! Poly) (self! Poly) (keys!
    Poly
   ) (out_map! Poly)
  ) (!
   (= (ens%vstd.map.impl&%0.tracked_remove_keys. K&. K& V&. V& pre%self! self! keys! out_map!)
    (and
     (has_type out_map! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (= self! (vstd.map_lib.impl&%0.remove_keys.? K&. K& V&. V& pre%self! keys!))
     (= out_map! (vstd.map_lib.impl&%0.restrict.? K&. K& V&. V& pre%self! keys!))
   ))
   :pattern ((ens%vstd.map.impl&%0.tracked_remove_keys. K&. K& V&. V& pre%self! self!
     keys! out_map!
   ))
   :qid internal_ens__vstd.map.impl&__0.tracked_remove_keys._definition
   :skolemid skolem_internal_ens__vstd.map.impl&__0.tracked_remove_keys._definition
)))

;; Function-Axioms crate::vstd::map::Map::union_prefer_right
(assert
 (fuel_bool_default fuel%vstd.map_lib.impl&%0.union_prefer_right.)
)
(declare-fun %%lambda%%3 (Dcr Type Poly Dcr Type Poly) %%Function%%)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 Dcr) (%%hole%%4
    Type
   ) (%%hole%%5 Poly) (k$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%3 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5)
     k$
    ) (B (or
      (vstd.set.impl&%0.contains.? %%hole%%0 %%hole%%1 %%hole%%2 k$)
      (vstd.set.impl&%0.contains.? %%hole%%3 %%hole%%4 %%hole%%5 k$)
   )))
   :pattern ((%%apply%%0 (%%lambda%%3 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      %%hole%%5
     ) k$
)))))
(declare-fun %%lambda%%4 (Dcr Type Poly Dcr Type Dcr Type Poly Dcr Type Dcr Type Poly)
 %%Function%%
)
(assert
 (forall ((%%hole%%0 Dcr) (%%hole%%1 Type) (%%hole%%2 Poly) (%%hole%%3 Dcr) (%%hole%%4
    Type
   ) (%%hole%%5 Dcr) (%%hole%%6 Type) (%%hole%%7 Poly) (%%hole%%8 Dcr) (%%hole%%9 Type)
   (%%hole%%10 Dcr) (%%hole%%11 Type) (%%hole%%12 Poly) (k$ Poly)
  ) (!
   (= (%%apply%%0 (%%lambda%%4 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4 %%hole%%5
      %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12
     ) k$
    ) (ite
     (vstd.set.impl&%0.contains.? %%hole%%0 %%hole%%1 %%hole%%2 k$)
     (vstd.map.impl&%0.index.? %%hole%%3 %%hole%%4 %%hole%%5 %%hole%%6 %%hole%%7 k$)
     (vstd.map.impl&%0.index.? %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12 k$)
   ))
   :pattern ((%%apply%%0 (%%lambda%%4 %%hole%%0 %%hole%%1 %%hole%%2 %%hole%%3 %%hole%%4
      %%hole%%5 %%hole%%6 %%hole%%7 %%hole%%8 %%hole%%9 %%hole%%10 %%hole%%11 %%hole%%12
     ) k$
)))))
(assert
 (=>
  (fuel_bool fuel%vstd.map_lib.impl&%0.union_prefer_right.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
    (= (vstd.map_lib.impl&%0.union_prefer_right.? K&. K& V&. V& self! m2!) (vstd.map.impl&%0.new.?
      K&. K& V&. V& $ (TYPE%fun%1. K&. K& $ BOOL) $ (TYPE%fun%1. K&. K& V&. V&) (Poly%fun%1.
       (mk_fun (%%lambda%%3 K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) K&. K& (vstd.map.impl&%0.dom.?
          K&. K& V&. V& m2!
       )))
      ) (Poly%fun%1. (mk_fun (%%lambda%%4 K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& m2!)
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

;; Function-Specs crate::vstd::map::Map::tracked_union_prefer_right
(declare-fun ens%vstd.map.impl&%0.tracked_union_prefer_right. (Dcr Type Dcr Type Poly
  Poly Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (pre%self! Poly) (self! Poly) (right!
    Poly
   )
  ) (!
   (= (ens%vstd.map.impl&%0.tracked_union_prefer_right. K&. K& V&. V& pre%self! self!
     right!
    ) (and
     (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (= self! (vstd.map_lib.impl&%0.union_prefer_right.? K&. K& V&. V& pre%self! right!))
   ))
   :pattern ((ens%vstd.map.impl&%0.tracked_union_prefer_right. K&. K& V&. V& pre%self!
     self! right!
   ))
   :qid internal_ens__vstd.map.impl&__0.tracked_union_prefer_right._definition
   :skolemid skolem_internal_ens__vstd.map.impl&__0.tracked_union_prefer_right._definition
)))

;; Function-Specs crate::vstd::modes::tracked_swap
(declare-fun ens%vstd.modes.tracked_swap. (Dcr Type Poly Poly Poly Poly) Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (pre%a! Poly) (a! Poly) (pre%b! Poly) (b! Poly)) (!
   (= (ens%vstd.modes.tracked_swap. V&. V& pre%a! a! pre%b! b!) (and
     (has_type a! V&)
     (has_type b! V&)
     (= a! pre%b!)
     (= b! pre%a!)
   ))
   :pattern ((ens%vstd.modes.tracked_swap. V&. V& pre%a! a! pre%b! b!))
   :qid internal_ens__vstd.modes.tracked_swap._definition
   :skolemid skolem_internal_ens__vstd.modes.tracked_swap._definition
)))

;; Function-Axioms crate::vstd::set::Set::full
(assert
 (fuel_bool_default fuel%vstd.set.impl&%0.full.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.set.impl&%0.full.)
  (forall ((A&. Dcr) (A& Type)) (!
    (= (vstd.set.impl&%0.full.? A&. A&) (vstd.set.impl&%0.complement.? A&. A& (vstd.set.impl&%0.empty.?
       A&. A&
    )))
    :pattern ((vstd.set.impl&%0.full.? A&. A&))
    :qid internal_vstd.set.impl&__0.full.?_definition
    :skolemid skolem_internal_vstd.set.impl&__0.full.?_definition
))))
(assert
 (forall ((A&. Dcr) (A& Type)) (!
   (has_type (vstd.set.impl&%0.full.? A&. A&) (TYPE%vstd.set.Set. A&. A&))
   :pattern ((vstd.set.impl&%0.full.? A&. A&))
   :qid internal_vstd.set.impl&__0.full.?_pre_post_definition
   :skolemid skolem_internal_vstd.set.impl&__0.full.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::map::Map::total
(assert
 (fuel_bool_default fuel%vstd.map.impl&%0.total.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.map.impl&%0.total.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (impl%2&. Dcr) (impl%2& Type) (fv!
     Poly
    )
   ) (!
    (= (vstd.map.impl&%0.total.? K&. K& V&. V& impl%2&. impl%2& fv!) (vstd.set.impl&%0.mk_map.?
      K&. K& V&. V& impl%2&. impl%2& (vstd.set.impl&%0.full.? K&. K&) fv!
    ))
    :pattern ((vstd.map.impl&%0.total.? K&. K& V&. V& impl%2&. impl%2& fv!))
    :qid internal_vstd.map.impl&__0.total.?_definition
    :skolemid skolem_internal_vstd.map.impl&__0.total.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (impl%2&. Dcr) (impl%2& Type) (fv!
    Poly
   )
  ) (!
   (=>
    (has_type fv! impl%2&)
    (has_type (vstd.map.impl&%0.total.? K&. K& V&. V& impl%2&. impl%2& fv!) (TYPE%vstd.map.Map.
      K&. K& V&. V&
   )))
   :pattern ((vstd.map.impl&%0.total.? K&. K& V&. V& impl%2&. impl%2& fv!))
   :qid internal_vstd.map.impl&__0.total.?_pre_post_definition
   :skolemid skolem_internal_vstd.map.impl&__0.total.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::map::Map::len
(assert
 (fuel_bool_default fuel%vstd.map.impl&%0.len.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.map.impl&%0.len.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly)) (!
    (= (vstd.map.impl&%0.len.? K&. K& V&. V& self!) (vstd.set.impl&%0.len.? K&. K& (vstd.map.impl&%0.dom.?
       K&. K& V&. V& self!
    )))
    :pattern ((vstd.map.impl&%0.len.? K&. K& V&. V& self!))
    :qid internal_vstd.map.impl&__0.len.?_definition
    :skolemid skolem_internal_vstd.map.impl&__0.len.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
    (<= 0 (vstd.map.impl&%0.len.? K&. K& V&. V& self!))
   )
   :pattern ((vstd.map.impl&%0.len.? K&. K& V&. V& self!))
   :qid internal_vstd.map.impl&__0.len.?_pre_post_definition
   :skolemid skolem_internal_vstd.map.impl&__0.len.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::map::Map::ext_equal
(assert
 (fuel_bool_default fuel%vstd.map.impl&%0.ext_equal.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.map.impl&%0.ext_equal.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (self! Poly) (m2! Poly)) (!
    (= (vstd.map.impl&%0.ext_equal.? K&. K& V&. V& self! m2!) (ext_eq false (TYPE%vstd.map.Map.
       K&. K& V&. V&
      ) self! m2!
    ))
    :pattern ((vstd.map.impl&%0.ext_equal.? K&. K& V&. V& self! m2!))
    :qid internal_vstd.map.impl&__0.ext_equal.?_definition
    :skolemid skolem_internal_vstd.map.impl&__0.ext_equal.?_definition
))))

;; Function-Axioms crate::vstd::map::check_argument_is_map
(assert
 (fuel_bool_default fuel%vstd.map.check_argument_is_map.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.map.check_argument_is_map.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly)) (!
    (= (vstd.map.check_argument_is_map.? K&. K& V&. V& m!) m!)
    :pattern ((vstd.map.check_argument_is_map.? K&. K& V&. V& m!))
    :qid internal_vstd.map.check_argument_is_map.?_definition
    :skolemid skolem_internal_vstd.map.check_argument_is_map.?_definition
))))
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (m! Poly)) (!
   (=>
    (has_type m! (TYPE%vstd.map.Map. K&. K& V&. V&))
    (has_type (vstd.map.check_argument_is_map.? K&. K& V&. V& m!) (TYPE%vstd.map.Map. K&.
      K& V&. V&
   )))
   :pattern ((vstd.map.check_argument_is_map.? K&. K& V&. V& m!))
   :qid internal_vstd.map.check_argument_is_map.?_pre_post_definition
   :skolemid skolem_internal_vstd.map.check_argument_is_map.?_pre_post_definition
)))

;; Function-Specs crate::vstd::map::Map::tracked_map_keys_in_place
(declare-fun req%vstd.map.impl&%1.tracked_map_keys_in_place. (Dcr Type Dcr Type Poly
  Poly
 ) Bool
)
(declare-const %%global_location_label%%7 Bool)
(declare-const %%global_location_label%%8 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (pre%self! Poly) (key_map! Poly))
  (!
   (= (req%vstd.map.impl&%1.tracked_map_keys_in_place. K&. K& V&. V& pre%self! key_map!)
    (and
     (=>
      %%global_location_label%%7
      (forall ((j$ Poly)) (!
        (=>
         (has_type j$ K&)
         (=>
          (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& K&. K& key_map!)
           j$
          )
          (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& pre%self!)
           (vstd.map.impl&%0.index.? K&. K& K&. K& key_map! j$)
        )))
        :pattern ((vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& K&. K&
           key_map!
          ) j$
        ))
        :qid user_crate__vstd__map__Map__tracked_map_keys_in_place_19
        :skolemid skolem_user_crate__vstd__map__Map__tracked_map_keys_in_place_19
     )))
     (=>
      %%global_location_label%%8
      (forall ((j1$ Poly) (j2$ Poly)) (!
        (=>
         (and
          (has_type j1$ K&)
          (has_type j2$ K&)
         )
         (=>
          (and
           (and
            (not (= j1$ j2$))
            (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& K&. K& key_map!)
             j1$
           ))
           (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& K&. K& key_map!)
            j2$
          ))
          (not (= (vstd.map.impl&%0.index.? K&. K& K&. K& key_map! j1$) (vstd.map.impl&%0.index.?
             K&. K& K&. K& key_map! j2$
        )))))
        :pattern ((vstd.map.impl&%0.index.? K&. K& K&. K& key_map! j1$) (vstd.map.impl&%0.index.?
          K&. K& K&. K& key_map! j2$
        ))
        :qid user_crate__vstd__map__Map__tracked_map_keys_in_place_20
        :skolemid skolem_user_crate__vstd__map__Map__tracked_map_keys_in_place_20
   )))))
   :pattern ((req%vstd.map.impl&%1.tracked_map_keys_in_place. K&. K& V&. V& pre%self!
     key_map!
   ))
   :qid internal_req__vstd.map.impl&__1.tracked_map_keys_in_place._definition
   :skolemid skolem_internal_req__vstd.map.impl&__1.tracked_map_keys_in_place._definition
)))
(declare-fun ens%vstd.map.impl&%1.tracked_map_keys_in_place. (Dcr Type Dcr Type Poly
  Poly Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (pre%self! Poly) (self! Poly) (key_map!
    Poly
   )
  ) (!
   (= (ens%vstd.map.impl&%1.tracked_map_keys_in_place. K&. K& V&. V& pre%self! self! key_map!)
    (and
     (has_type self! (TYPE%vstd.map.Map. K&. K& V&. V&))
     (forall ((j$ Poly)) (!
       (=>
        (has_type j$ K&)
        (= (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!)
          j$
         ) (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& K&. K& key_map!)
          j$
       )))
       :pattern ((vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V&
          self!
         ) j$
       ))
       :qid user_crate__vstd__map__Map__tracked_map_keys_in_place_21
       :skolemid skolem_user_crate__vstd__map__Map__tracked_map_keys_in_place_21
     ))
     (forall ((j$ Poly)) (!
       (=>
        (has_type j$ K&)
        (=>
         (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& K&. K& key_map!)
          j$
         )
         (and
          (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!) j$)
          (= (vstd.map.impl&%0.index.? K&. K& V&. V& self! j$) (vstd.map.impl&%0.index.? K&.
            K& V&. V& pre%self! (vstd.map.impl&%0.index.? K&. K& K&. K& key_map! j$)
       )))))
       :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& self! j$))
       :qid user_crate__vstd__map__Map__tracked_map_keys_in_place_22
       :skolemid skolem_user_crate__vstd__map__Map__tracked_map_keys_in_place_22
   ))))
   :pattern ((ens%vstd.map.impl&%1.tracked_map_keys_in_place. K&. K& V&. V& pre%self!
     self! key_map!
   ))
   :qid internal_ens__vstd.map.impl&__1.tracked_map_keys_in_place._definition
   :skolemid skolem_internal_ens__vstd.map.impl&__1.tracked_map_keys_in_place._definition
)))

;; Function-Def crate::vstd::map::Map::tracked_map_keys_in_place
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/map.rs:433:5: 437:6 (#0)
(get-info :all-statistics)
(push)
 (declare-const K&. Dcr)
 (declare-const K& Type)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const self!@0 Poly)
 (declare-const key_map! Poly)
 (declare-const tmp@0 Poly)
 (declare-const tmp$1@0 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self!@0 (TYPE%vstd.map.Map. K&. K& V&. V&))
 )
 (assert
  (has_type key_map! (TYPE%vstd.map.Map. K&. K& K&. K&))
 )
 (assert
  (forall ((j$ Poly)) (!
    (=>
     (has_type j$ K&)
     (=>
      (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& K&. K& key_map!)
       j$
      )
      (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!@0)
       (vstd.map.impl&%0.index.? K&. K& K&. K& key_map! j$)
    )))
    :pattern ((vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& K&. K&
       key_map!
      ) j$
    ))
    :qid user_crate__vstd__map__Map__tracked_map_keys_in_place_25
    :skolemid skolem_user_crate__vstd__map__Map__tracked_map_keys_in_place_25
 )))
 (assert
  (forall ((j1$ Poly) (j2$ Poly)) (!
    (=>
     (and
      (has_type j1$ K&)
      (has_type j2$ K&)
     )
     (=>
      (and
       (and
        (not (= j1$ j2$))
        (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& K&. K& key_map!)
         j1$
       ))
       (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& K&. K& key_map!)
        j2$
      ))
      (not (= (vstd.map.impl&%0.index.? K&. K& K&. K& key_map! j1$) (vstd.map.impl&%0.index.?
         K&. K& K&. K& key_map! j2$
    )))))
    :pattern ((vstd.map.impl&%0.index.? K&. K& K&. K& key_map! j1$) (vstd.map.impl&%0.index.?
      K&. K& K&. K& key_map! j2$
    ))
    :qid user_crate__vstd__map__Map__tracked_map_keys_in_place_26
    :skolemid skolem_user_crate__vstd__map__Map__tracked_map_keys_in_place_26
 )))
 (declare-const self!@1 Poly)
 (declare-const tmp@1 Poly)
 (declare-const self!@2 Poly)
 (declare-const tmp$1@1 Poly)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (ens%vstd.map.impl&%0.tracked_empty. K&. K& V&. V& tmp@0)
    (=>
     (has_type self!@1 (TYPE%vstd.map.Map. K&. K& V&. V&))
     (=>
      (has_type tmp@1 (TYPE%vstd.map.Map. K&. K& V&. V&))
      (=>
       (ens%vstd.modes.tracked_swap. $ (TYPE%vstd.map.Map. K&. K& V&. V&) tmp@0 tmp@1 self!@0
        self!@1
       )
       (and
        (=>
         %%location_label%%0
         (req%vstd.map.impl&%0.tracked_map_keys. K&. K& V&. V& K&. K& tmp@1 key_map!)
        )
        (=>
         (ens%vstd.map.impl&%0.tracked_map_keys. K&. K& V&. V& K&. K& tmp@1 key_map! tmp$1@0)
         (=>
          (has_type self!@2 (TYPE%vstd.map.Map. K&. K& V&. V&))
          (=>
           (has_type tmp$1@1 (TYPE%vstd.map.Map. K&. K& V&. V&))
           (=>
            (ens%vstd.modes.tracked_swap. $ (TYPE%vstd.map.Map. K&. K& V&. V&) tmp$1@0 tmp$1@1
             self!@1 self!@2
            )
            (and
             (=>
              %%location_label%%1
              (forall ((j$ Poly)) (!
                (=>
                 (has_type j$ K&)
                 (= (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!@2)
                   j$
                  ) (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& K&. K& key_map!)
                   j$
                )))
                :pattern ((vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V&
                   self!@2
                  ) j$
                ))
                :qid user_crate__vstd__map__Map__tracked_map_keys_in_place_23
                :skolemid skolem_user_crate__vstd__map__Map__tracked_map_keys_in_place_23
             )))
             (=>
              %%location_label%%2
              (forall ((j$ Poly)) (!
                (=>
                 (has_type j$ K&)
                 (=>
                  (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& K&. K& key_map!)
                   j$
                  )
                  (and
                   (vstd.set.impl&%0.contains.? K&. K& (vstd.map.impl&%0.dom.? K&. K& V&. V& self!@2)
                    j$
                   )
                   (= (vstd.map.impl&%0.index.? K&. K& V&. V& self!@2 j$) (vstd.map.impl&%0.index.? K&.
                     K& V&. V& self!@0 (vstd.map.impl&%0.index.? K&. K& K&. K& key_map! j$)
                )))))
                :pattern ((vstd.map.impl&%0.index.? K&. K& V&. V& self!@2 j$))
                :qid user_crate__vstd__map__Map__tracked_map_keys_in_place_24
                :skolemid skolem_user_crate__vstd__map__Map__tracked_map_keys_in_place_24
 )))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
