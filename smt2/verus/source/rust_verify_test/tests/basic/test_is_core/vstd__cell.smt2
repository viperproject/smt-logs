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

;; MODULE 'module vstd::cell'

;; Fuel
(declare-const fuel%vstd.std_specs.option.impl&%0.is_Some. FuelId)
(declare-const fuel%vstd.std_specs.option.impl&%0.get_Some_0. FuelId)
(declare-const fuel%vstd.std_specs.option.is_some. FuelId)
(declare-const fuel%vstd.std_specs.option.is_none. FuelId)
(declare-const fuel%vstd.std_specs.option.spec_unwrap. FuelId)
(declare-const fuel%vstd.cell.impl&%2.id. FuelId)
(declare-const fuel%vstd.cell.impl&%2.opt_value. FuelId)
(declare-const fuel%vstd.cell.impl&%2.is_init. FuelId)
(declare-const fuel%vstd.cell.impl&%2.is_uninit. FuelId)
(declare-const fuel%vstd.cell.impl&%2.value. FuelId)
(declare-const fuel%vstd.cell.impl&%5.inv. FuelId)
(declare-const fuel%vstd.cell.impl&%6.wf. FuelId)
(declare-const fuel%vstd.cell.impl&%6.inv. FuelId)
(declare-const fuel%vstd!invariant.LocalInvariant.inv. FuelId)
(declare-const fuel%vstd.set.axiom_set_new. FuelId)
(declare-const fuel%vstd.set.axiom_set_ext_equal. FuelId)
(declare-const fuel%vstd.set.axiom_set_ext_equal_deep. FuelId)
(declare-const fuel%vstd.map.group_map_axioms. FuelId)
(declare-const fuel%vstd.set.group_set_axioms. FuelId)
(assert
 (distinct fuel%vstd.std_specs.option.impl&%0.is_Some. fuel%vstd.std_specs.option.impl&%0.get_Some_0.
  fuel%vstd.std_specs.option.is_some. fuel%vstd.std_specs.option.is_none. fuel%vstd.std_specs.option.spec_unwrap.
  fuel%vstd.cell.impl&%2.id. fuel%vstd.cell.impl&%2.opt_value. fuel%vstd.cell.impl&%2.is_init.
  fuel%vstd.cell.impl&%2.is_uninit. fuel%vstd.cell.impl&%2.value. fuel%vstd.cell.impl&%5.inv.
  fuel%vstd.cell.impl&%6.wf. fuel%vstd.cell.impl&%6.inv. fuel%vstd!invariant.LocalInvariant.inv.
  fuel%vstd.set.axiom_set_new. fuel%vstd.set.axiom_set_ext_equal. fuel%vstd.set.axiom_set_ext_equal_deep.
  fuel%vstd.map.group_map_axioms. fuel%vstd.set.group_set_axioms.
))
(assert
 (=>
  (fuel_bool_default fuel%vstd.set.group_set_axioms.)
  (and
   (fuel_bool_default fuel%vstd.set.axiom_set_new.)
   (fuel_bool_default fuel%vstd.set.axiom_set_ext_equal.)
   (fuel_bool_default fuel%vstd.set.axiom_set_ext_equal_deep.)
)))
(assert
 (and
  (fuel_bool_default fuel%vstd.map.group_map_axioms.)
  (fuel_bool_default fuel%vstd.set.group_set_axioms.)
))

;; Datatypes
(declare-sort vstd.cell.CellId. 0)
(declare-sort vstd.invariant.OpenInvariantCredit. 0)
(declare-datatypes ((core!option.Option. 0) (vstd.cell.PointsToData. 0) (vstd.cell.InvCellPred.
   0
  ) (vstd.cell.InvCell. 0) (tuple%0. 0) (tuple%2. 0)
 ) (((core!option.Option./None) (core!option.Option./Some (core!option.Option./Some/?0
     Poly
   ))
  ) ((vstd.cell.PointsToData./PointsToData (vstd.cell.PointsToData./PointsToData/?pcell
     vstd.cell.CellId.
    ) (vstd.cell.PointsToData./PointsToData/?value core!option.Option.)
   )
  ) ((vstd.cell.InvCellPred./InvCellPred)) ((vstd.cell.InvCell./InvCell (vstd.cell.InvCell./InvCell/?possible_values
     Poly
    ) (vstd.cell.InvCell./InvCell/?pcell Poly) (vstd.cell.InvCell./InvCell/?perm_inv Poly)
   )
  ) ((tuple%0./tuple%0)) ((tuple%2./tuple%2 (tuple%2./tuple%2/?0 Poly) (tuple%2./tuple%2/?1
     Poly
)))))
(declare-fun core!option.Option./Some/0 (core!option.Option.) Poly)
(declare-fun vstd.cell.PointsToData./PointsToData/pcell (vstd.cell.PointsToData.)
 vstd.cell.CellId.
)
(declare-fun vstd.cell.PointsToData./PointsToData/value (vstd.cell.PointsToData.)
 core!option.Option.
)
(declare-fun vstd.cell.InvCell./InvCell/possible_values (vstd.cell.InvCell.) Poly)
(declare-fun vstd.cell.InvCell./InvCell/pcell (vstd.cell.InvCell.) Poly)
(declare-fun vstd.cell.InvCell./InvCell/perm_inv (vstd.cell.InvCell.) Poly)
(declare-fun tuple%2./tuple%2/0 (tuple%2.) Poly)
(declare-fun tuple%2./tuple%2/1 (tuple%2.) Poly)
(declare-fun TYPE%fun%1. (Dcr Type Dcr Type) Type)
(declare-fun TYPE%core!option.Option. (Dcr Type) Type)
(declare-fun TYPE%vstd.cell.PCell. (Dcr Type) Type)
(declare-fun TYPE%vstd.cell.PointsTo. (Dcr Type) Type)
(declare-fun TYPE%vstd.cell.PointsToData. (Dcr Type) Type)
(declare-const TYPE%vstd.cell.CellId. Type)
(declare-const TYPE%vstd.cell.InvCellPred. Type)
(declare-fun TYPE%vstd.cell.InvCell. (Dcr Type) Type)
(declare-fun TYPE%vstd.invariant.LocalInvariant. (Dcr Type Dcr Type Dcr Type) Type)
(declare-const TYPE%vstd.invariant.OpenInvariantCredit. Type)
(declare-fun TYPE%vstd.set.Set. (Dcr Type) Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun TYPE%tuple%2. (Dcr Type Dcr Type) Type)
(declare-fun Poly%fun%1. (%%Function%%) Poly)
(declare-fun %Poly%fun%1. (Poly) %%Function%%)
(declare-fun Poly%vstd.cell.CellId. (vstd.cell.CellId.) Poly)
(declare-fun %Poly%vstd.cell.CellId. (Poly) vstd.cell.CellId.)
(declare-fun Poly%vstd.invariant.OpenInvariantCredit. (vstd.invariant.OpenInvariantCredit.)
 Poly
)
(declare-fun %Poly%vstd.invariant.OpenInvariantCredit. (Poly) vstd.invariant.OpenInvariantCredit.)
(declare-fun Poly%core!option.Option. (core!option.Option.) Poly)
(declare-fun %Poly%core!option.Option. (Poly) core!option.Option.)
(declare-fun Poly%vstd.cell.PointsToData. (vstd.cell.PointsToData.) Poly)
(declare-fun %Poly%vstd.cell.PointsToData. (Poly) vstd.cell.PointsToData.)
(declare-fun Poly%vstd.cell.InvCellPred. (vstd.cell.InvCellPred.) Poly)
(declare-fun %Poly%vstd.cell.InvCellPred. (Poly) vstd.cell.InvCellPred.)
(declare-fun Poly%vstd.cell.InvCell. (vstd.cell.InvCell.) Poly)
(declare-fun %Poly%vstd.cell.InvCell. (Poly) vstd.cell.InvCell.)
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
 (forall ((x vstd.cell.CellId.)) (!
   (= x (%Poly%vstd.cell.CellId. (Poly%vstd.cell.CellId. x)))
   :pattern ((Poly%vstd.cell.CellId. x))
   :qid internal_crate__vstd__cell__CellId_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__cell__CellId_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.cell.CellId.)
    (= x (Poly%vstd.cell.CellId. (%Poly%vstd.cell.CellId. x)))
   )
   :pattern ((has_type x TYPE%vstd.cell.CellId.))
   :qid internal_crate__vstd__cell__CellId_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__cell__CellId_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.cell.CellId.)) (!
   (has_type (Poly%vstd.cell.CellId. x) TYPE%vstd.cell.CellId.)
   :pattern ((has_type (Poly%vstd.cell.CellId. x) TYPE%vstd.cell.CellId.))
   :qid internal_crate__vstd__cell__CellId_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__cell__CellId_has_type_always_definition
)))
(assert
 (forall ((x vstd.invariant.OpenInvariantCredit.)) (!
   (= x (%Poly%vstd.invariant.OpenInvariantCredit. (Poly%vstd.invariant.OpenInvariantCredit.
      x
   )))
   :pattern ((Poly%vstd.invariant.OpenInvariantCredit. x))
   :qid internal_crate__vstd__invariant__OpenInvariantCredit_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__invariant__OpenInvariantCredit_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.invariant.OpenInvariantCredit.)
    (= x (Poly%vstd.invariant.OpenInvariantCredit. (%Poly%vstd.invariant.OpenInvariantCredit.
       x
   ))))
   :pattern ((has_type x TYPE%vstd.invariant.OpenInvariantCredit.))
   :qid internal_crate__vstd__invariant__OpenInvariantCredit_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__invariant__OpenInvariantCredit_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.invariant.OpenInvariantCredit.)) (!
   (has_type (Poly%vstd.invariant.OpenInvariantCredit. x) TYPE%vstd.invariant.OpenInvariantCredit.)
   :pattern ((has_type (Poly%vstd.invariant.OpenInvariantCredit. x) TYPE%vstd.invariant.OpenInvariantCredit.))
   :qid internal_crate__vstd__invariant__OpenInvariantCredit_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__invariant__OpenInvariantCredit_has_type_always_definition
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
 (forall ((x vstd.cell.PointsToData.)) (!
   (= x (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData. x)))
   :pattern ((Poly%vstd.cell.PointsToData. x))
   :qid internal_crate__vstd__cell__PointsToData_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__cell__PointsToData_box_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.cell.PointsToData. V&. V&))
    (= x (Poly%vstd.cell.PointsToData. (%Poly%vstd.cell.PointsToData. x)))
   )
   :pattern ((has_type x (TYPE%vstd.cell.PointsToData. V&. V&)))
   :qid internal_crate__vstd__cell__PointsToData_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__cell__PointsToData_unbox_axiom_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (_pcell! vstd.cell.CellId.) (_value! core!option.Option.))
  (!
   (=>
    (has_type (Poly%core!option.Option. _value!) (TYPE%core!option.Option. V&. V&))
    (has_type (Poly%vstd.cell.PointsToData. (vstd.cell.PointsToData./PointsToData _pcell!
       _value!
      )
     ) (TYPE%vstd.cell.PointsToData. V&. V&)
   ))
   :pattern ((has_type (Poly%vstd.cell.PointsToData. (vstd.cell.PointsToData./PointsToData
       _pcell! _value!
      )
     ) (TYPE%vstd.cell.PointsToData. V&. V&)
   ))
   :qid internal_vstd.cell.PointsToData./PointsToData_constructor_definition
   :skolemid skolem_internal_vstd.cell.PointsToData./PointsToData_constructor_definition
)))
(assert
 (forall ((x vstd.cell.PointsToData.)) (!
   (= (vstd.cell.PointsToData./PointsToData/pcell x) (vstd.cell.PointsToData./PointsToData/?pcell
     x
   ))
   :pattern ((vstd.cell.PointsToData./PointsToData/pcell x))
   :qid internal_vstd.cell.PointsToData./PointsToData/pcell_accessor_definition
   :skolemid skolem_internal_vstd.cell.PointsToData./PointsToData/pcell_accessor_definition
)))
(assert
 (forall ((x vstd.cell.PointsToData.)) (!
   (= (vstd.cell.PointsToData./PointsToData/value x) (vstd.cell.PointsToData./PointsToData/?value
     x
   ))
   :pattern ((vstd.cell.PointsToData./PointsToData/value x))
   :qid internal_vstd.cell.PointsToData./PointsToData/value_accessor_definition
   :skolemid skolem_internal_vstd.cell.PointsToData./PointsToData/value_accessor_definition
)))
(assert
 (forall ((V&. Dcr) (V& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.cell.PointsToData. V&. V&))
    (has_type (Poly%core!option.Option. (vstd.cell.PointsToData./PointsToData/value (%Poly%vstd.cell.PointsToData.
        x
      ))
     ) (TYPE%core!option.Option. V&. V&)
   ))
   :pattern ((vstd.cell.PointsToData./PointsToData/value (%Poly%vstd.cell.PointsToData.
      x
     )
    ) (has_type x (TYPE%vstd.cell.PointsToData. V&. V&))
   )
   :qid internal_vstd.cell.PointsToData./PointsToData/value_invariant_definition
   :skolemid skolem_internal_vstd.cell.PointsToData./PointsToData/value_invariant_definition
)))
(assert
 (forall ((x vstd.cell.PointsToData.)) (!
   (=>
    (is-vstd.cell.PointsToData./PointsToData x)
    (height_lt (height (Poly%core!option.Option. (vstd.cell.PointsToData./PointsToData/value
        x
      ))
     ) (height (Poly%vstd.cell.PointsToData. x))
   ))
   :pattern ((height (Poly%core!option.Option. (vstd.cell.PointsToData./PointsToData/value
       x
   ))))
   :qid prelude_datatype_height_vstd.cell.PointsToData./PointsToData/value
   :skolemid skolem_prelude_datatype_height_vstd.cell.PointsToData./PointsToData/value
)))
(assert
 (forall ((x vstd.cell.InvCellPred.)) (!
   (= x (%Poly%vstd.cell.InvCellPred. (Poly%vstd.cell.InvCellPred. x)))
   :pattern ((Poly%vstd.cell.InvCellPred. x))
   :qid internal_crate__vstd__cell__InvCellPred_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__cell__InvCellPred_box_axiom_definition
)))
(assert
 (forall ((x Poly)) (!
   (=>
    (has_type x TYPE%vstd.cell.InvCellPred.)
    (= x (Poly%vstd.cell.InvCellPred. (%Poly%vstd.cell.InvCellPred. x)))
   )
   :pattern ((has_type x TYPE%vstd.cell.InvCellPred.))
   :qid internal_crate__vstd__cell__InvCellPred_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__cell__InvCellPred_unbox_axiom_definition
)))
(assert
 (forall ((x vstd.cell.InvCellPred.)) (!
   (has_type (Poly%vstd.cell.InvCellPred. x) TYPE%vstd.cell.InvCellPred.)
   :pattern ((has_type (Poly%vstd.cell.InvCellPred. x) TYPE%vstd.cell.InvCellPred.))
   :qid internal_crate__vstd__cell__InvCellPred_has_type_always_definition
   :skolemid skolem_internal_crate__vstd__cell__InvCellPred_has_type_always_definition
)))
(assert
 (forall ((x vstd.cell.InvCell.)) (!
   (= x (%Poly%vstd.cell.InvCell. (Poly%vstd.cell.InvCell. x)))
   :pattern ((Poly%vstd.cell.InvCell. x))
   :qid internal_crate__vstd__cell__InvCell_box_axiom_definition
   :skolemid skolem_internal_crate__vstd__cell__InvCell_box_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.cell.InvCell. T&. T&))
    (= x (Poly%vstd.cell.InvCell. (%Poly%vstd.cell.InvCell. x)))
   )
   :pattern ((has_type x (TYPE%vstd.cell.InvCell. T&. T&)))
   :qid internal_crate__vstd__cell__InvCell_unbox_axiom_definition
   :skolemid skolem_internal_crate__vstd__cell__InvCell_unbox_axiom_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (_possible_values! Poly) (_pcell! Poly) (_perm_inv! Poly))
  (!
   (=>
    (and
     (has_type _possible_values! (TYPE%vstd.set.Set. T&. T&))
     (has_type _pcell! (TYPE%vstd.cell.PCell. T&. T&))
     (has_type _perm_inv! (TYPE%vstd.invariant.LocalInvariant. $ (TYPE%tuple%2. $ (TYPE%vstd.set.Set.
         T&. T&
        ) $ (TYPE%vstd.cell.PCell. T&. T&)
       ) $ (TYPE%vstd.cell.PointsTo. T&. T&) $ TYPE%vstd.cell.InvCellPred.
    )))
    (has_type (Poly%vstd.cell.InvCell. (vstd.cell.InvCell./InvCell _possible_values! _pcell!
       _perm_inv!
      )
     ) (TYPE%vstd.cell.InvCell. T&. T&)
   ))
   :pattern ((has_type (Poly%vstd.cell.InvCell. (vstd.cell.InvCell./InvCell _possible_values!
       _pcell! _perm_inv!
      )
     ) (TYPE%vstd.cell.InvCell. T&. T&)
   ))
   :qid internal_vstd.cell.InvCell./InvCell_constructor_definition
   :skolemid skolem_internal_vstd.cell.InvCell./InvCell_constructor_definition
)))
(assert
 (forall ((x vstd.cell.InvCell.)) (!
   (= (vstd.cell.InvCell./InvCell/possible_values x) (vstd.cell.InvCell./InvCell/?possible_values
     x
   ))
   :pattern ((vstd.cell.InvCell./InvCell/possible_values x))
   :qid internal_vstd.cell.InvCell./InvCell/possible_values_accessor_definition
   :skolemid skolem_internal_vstd.cell.InvCell./InvCell/possible_values_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.cell.InvCell. T&. T&))
    (has_type (vstd.cell.InvCell./InvCell/possible_values (%Poly%vstd.cell.InvCell. x))
     (TYPE%vstd.set.Set. T&. T&)
   ))
   :pattern ((vstd.cell.InvCell./InvCell/possible_values (%Poly%vstd.cell.InvCell. x))
    (has_type x (TYPE%vstd.cell.InvCell. T&. T&))
   )
   :qid internal_vstd.cell.InvCell./InvCell/possible_values_invariant_definition
   :skolemid skolem_internal_vstd.cell.InvCell./InvCell/possible_values_invariant_definition
)))
(assert
 (forall ((x vstd.cell.InvCell.)) (!
   (= (vstd.cell.InvCell./InvCell/pcell x) (vstd.cell.InvCell./InvCell/?pcell x))
   :pattern ((vstd.cell.InvCell./InvCell/pcell x))
   :qid internal_vstd.cell.InvCell./InvCell/pcell_accessor_definition
   :skolemid skolem_internal_vstd.cell.InvCell./InvCell/pcell_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.cell.InvCell. T&. T&))
    (has_type (vstd.cell.InvCell./InvCell/pcell (%Poly%vstd.cell.InvCell. x)) (TYPE%vstd.cell.PCell.
      T&. T&
   )))
   :pattern ((vstd.cell.InvCell./InvCell/pcell (%Poly%vstd.cell.InvCell. x)) (has_type
     x (TYPE%vstd.cell.InvCell. T&. T&)
   ))
   :qid internal_vstd.cell.InvCell./InvCell/pcell_invariant_definition
   :skolemid skolem_internal_vstd.cell.InvCell./InvCell/pcell_invariant_definition
)))
(assert
 (forall ((x vstd.cell.InvCell.)) (!
   (= (vstd.cell.InvCell./InvCell/perm_inv x) (vstd.cell.InvCell./InvCell/?perm_inv x))
   :pattern ((vstd.cell.InvCell./InvCell/perm_inv x))
   :qid internal_vstd.cell.InvCell./InvCell/perm_inv_accessor_definition
   :skolemid skolem_internal_vstd.cell.InvCell./InvCell/perm_inv_accessor_definition
)))
(assert
 (forall ((T&. Dcr) (T& Type) (x Poly)) (!
   (=>
    (has_type x (TYPE%vstd.cell.InvCell. T&. T&))
    (has_type (vstd.cell.InvCell./InvCell/perm_inv (%Poly%vstd.cell.InvCell. x)) (TYPE%vstd.invariant.LocalInvariant.
      $ (TYPE%tuple%2. $ (TYPE%vstd.set.Set. T&. T&) $ (TYPE%vstd.cell.PCell. T&. T&))
      $ (TYPE%vstd.cell.PointsTo. T&. T&) $ TYPE%vstd.cell.InvCellPred.
   )))
   :pattern ((vstd.cell.InvCell./InvCell/perm_inv (%Poly%vstd.cell.InvCell. x)) (has_type
     x (TYPE%vstd.cell.InvCell. T&. T&)
   ))
   :qid internal_vstd.cell.InvCell./InvCell/perm_inv_invariant_definition
   :skolemid skolem_internal_vstd.cell.InvCell./InvCell/perm_inv_invariant_definition
)))
(assert
 (forall ((x vstd.cell.InvCell.)) (!
   (=>
    (is-vstd.cell.InvCell./InvCell x)
    (height_lt (height (vstd.cell.InvCell./InvCell/possible_values x)) (height (Poly%vstd.cell.InvCell.
       x
   ))))
   :pattern ((height (vstd.cell.InvCell./InvCell/possible_values x)))
   :qid prelude_datatype_height_vstd.cell.InvCell./InvCell/possible_values
   :skolemid skolem_prelude_datatype_height_vstd.cell.InvCell./InvCell/possible_values
)))
(assert
 (forall ((x vstd.cell.InvCell.)) (!
   (=>
    (is-vstd.cell.InvCell./InvCell x)
    (height_lt (height (vstd.cell.InvCell./InvCell/pcell x)) (height (Poly%vstd.cell.InvCell.
       x
   ))))
   :pattern ((height (vstd.cell.InvCell./InvCell/pcell x)))
   :qid prelude_datatype_height_vstd.cell.InvCell./InvCell/pcell
   :skolemid skolem_prelude_datatype_height_vstd.cell.InvCell./InvCell/pcell
)))
(assert
 (forall ((x vstd.cell.InvCell.)) (!
   (=>
    (is-vstd.cell.InvCell./InvCell x)
    (height_lt (height (vstd.cell.InvCell./InvCell/perm_inv x)) (height (Poly%vstd.cell.InvCell.
       x
   ))))
   :pattern ((height (vstd.cell.InvCell./InvCell/perm_inv x)))
   :qid prelude_datatype_height_vstd.cell.InvCell./InvCell/perm_inv
   :skolemid skolem_prelude_datatype_height_vstd.cell.InvCell./InvCell/perm_inv
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
(declare-fun tr_bound%vstd.invariant.InvariantPredicate. (Dcr Type Dcr Type Dcr Type)
 Bool
)
(declare-fun tr_bound%vstd.std_specs.option.OptionAdditionalFns. (Dcr Type Dcr Type)
 Bool
)
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (K&. Dcr) (K& Type) (V&. Dcr) (V& Type)) (!
   true
   :pattern ((tr_bound%vstd.invariant.InvariantPredicate. Self%&. Self%& K&. K& V&. V&))
   :qid internal_crate__vstd__invariant__InvariantPredicate_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__invariant__InvariantPredicate_trait_type_bounds_definition
)))
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (T&. Dcr) (T& Type)) (!
   true
   :pattern ((tr_bound%vstd.std_specs.option.OptionAdditionalFns. Self%&. Self%& T&. T&))
   :qid internal_crate__vstd__std_specs__option__OptionAdditionalFns_trait_type_bounds_definition
   :skolemid skolem_internal_crate__vstd__std_specs__option__OptionAdditionalFns_trait_type_bounds_definition
)))

;; Function-Decl crate::vstd::set::Set::contains
(declare-fun vstd.set.impl&%0.contains.? (Dcr Type Poly Poly) Bool)

;; Function-Decl crate::vstd::set::Set::new
(declare-fun vstd.set.impl&%0.new.? (Dcr Type Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::invariant::InvariantPredicate::inv
(declare-fun vstd.invariant.InvariantPredicate.inv.? (Dcr Type Dcr Type Dcr Type Poly
  Poly
 ) Poly
)
(declare-fun vstd.invariant.InvariantPredicate.inv%default%.? (Dcr Type Dcr Type Dcr
  Type Poly Poly
 ) Poly
)

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

;; Function-Decl crate::vstd::std_specs::option::is_none
(declare-fun vstd.std_specs.option.is_none.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::std_specs::option::is_some
(declare-fun vstd.std_specs.option.is_some.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::std_specs::option::spec_unwrap
(declare-fun vstd.std_specs.option.spec_unwrap.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::cell::PointsTo::view
(declare-fun vstd.cell.impl&%2.view.? (Dcr Type Poly) vstd.cell.PointsToData.)

;; Function-Decl crate::vstd::cell::PCell::id
(declare-fun vstd.cell.impl&%3.id.? (Dcr Type Poly) vstd.cell.CellId.)

;; Function-Decl crate::vstd::invariant::LocalInvariant::constant
(declare-fun vstd.invariant.impl&%1.constant.? (Dcr Type Dcr Type Dcr Type Poly) Poly)

;; Function-Decl vstd::invariant::LocalInvariant::namespace
(declare-fun vstd!invariant.LocalInvariant.namespace.? (Dcr Type Dcr Type Dcr Type
  Poly
 ) Int
)

;; Function-Decl vstd::invariant::LocalInvariant::inv
(declare-fun vstd!invariant.LocalInvariant.inv.? (Dcr Type Dcr Type Dcr Type Poly Poly)
 Bool
)

;; Function-Decl crate::vstd::cell::PointsTo::id
(declare-fun vstd.cell.impl&%2.id.? (Dcr Type Poly) vstd.cell.CellId.)

;; Function-Decl crate::vstd::cell::PointsTo::opt_value
(declare-fun vstd.cell.impl&%2.opt_value.? (Dcr Type Poly) core!option.Option.)

;; Function-Decl crate::vstd::cell::PointsTo::is_init
(declare-fun vstd.cell.impl&%2.is_init.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::cell::PointsTo::is_uninit
(declare-fun vstd.cell.impl&%2.is_uninit.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::cell::PointsTo::value
(declare-fun vstd.cell.impl&%2.value.? (Dcr Type Poly) Poly)

;; Function-Decl crate::vstd::cell::InvCell::wf
(declare-fun vstd.cell.impl&%6.wf.? (Dcr Type Poly) Bool)

;; Function-Decl crate::vstd::cell::InvCell::inv
(declare-fun vstd.cell.impl&%6.inv.? (Dcr Type Poly Poly) Bool)

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
    :qid user_crate__vstd__set__axiom_set_new_0
    :skolemid skolem_user_crate__vstd__set__axiom_set_new_0
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
        :qid user_crate__vstd__set__axiom_set_ext_equal_1
        :skolemid skolem_user_crate__vstd__set__axiom_set_ext_equal_1
    ))))
    :pattern ((ext_eq false (TYPE%vstd.set.Set. A&. A&) s1! s2!))
    :qid user_crate__vstd__set__axiom_set_ext_equal_2
    :skolemid skolem_user_crate__vstd__set__axiom_set_ext_equal_2
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
    :qid user_crate__vstd__set__axiom_set_ext_equal_deep_3
    :skolemid skolem_user_crate__vstd__set__axiom_set_ext_equal_deep_3
))))

;; Function-Axioms crate::vstd::invariant::InvariantPredicate::inv
(assert
 (forall ((Self%&. Dcr) (Self%& Type) (K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (k! Poly)
   (v! Poly)
  ) (!
   (=>
    (and
     (has_type k! K&)
     (has_type v! V&)
    )
    (has_type (vstd.invariant.InvariantPredicate.inv.? Self%&. Self%& K&. K& V&. V& k!
      v!
     ) BOOL
   ))
   :pattern ((vstd.invariant.InvariantPredicate.inv.? Self%&. Self%& K&. K& V&. V& k!
     v!
   ))
   :qid internal_vstd.invariant.InvariantPredicate.inv.?_pre_post_definition
   :skolemid skolem_internal_vstd.invariant.InvariantPredicate.inv.?_pre_post_definition
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

;; Function-Axioms crate::vstd::cell::PointsTo::view
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.cell.PointsTo. V&. V&))
    (has_type (Poly%vstd.cell.PointsToData. (vstd.cell.impl&%2.view.? V&. V& self!)) (
      TYPE%vstd.cell.PointsToData. V&. V&
   )))
   :pattern ((vstd.cell.impl&%2.view.? V&. V& self!))
   :qid internal_vstd.cell.impl&__2.view.?_pre_post_definition
   :skolemid skolem_internal_vstd.cell.impl&__2.view.?_pre_post_definition
)))

;; Function-Specs crate::vstd::cell::PCell::empty
(declare-fun ens%vstd.cell.impl&%3.empty. (Dcr Type tuple%2.) Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (pt! tuple%2.)) (!
   (= (ens%vstd.cell.impl&%3.empty. V&. V& pt!) (and
     (has_type (Poly%tuple%2. pt!) (TYPE%tuple%2. $ (TYPE%vstd.cell.PCell. V&. V&) (TRACKED
        $
       ) (TYPE%vstd.cell.PointsTo. V&. V&)
     ))
     (= (vstd.cell.impl&%2.view.? V&. V& (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2.
          pt!
       )))
      ) (vstd.cell.PointsToData./PointsToData (%Poly%vstd.cell.CellId. (Poly%vstd.cell.CellId.
         (vstd.cell.impl&%3.id.? V&. V& (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. pt!))))
        )
       ) (%Poly%core!option.Option. (Poly%core!option.Option. core!option.Option./None))
   ))))
   :pattern ((ens%vstd.cell.impl&%3.empty. V&. V& pt!))
   :qid internal_ens__vstd.cell.impl&__3.empty._definition
   :skolemid skolem_internal_ens__vstd.cell.impl&__3.empty._definition
)))

;; Function-Specs crate::vstd::cell::PCell::new
(declare-fun ens%vstd.cell.impl&%3.new. (Dcr Type Poly tuple%2.) Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (v! Poly) (pt! tuple%2.)) (!
   (= (ens%vstd.cell.impl&%3.new. V&. V& v! pt!) (and
     (has_type (Poly%tuple%2. pt!) (TYPE%tuple%2. $ (TYPE%vstd.cell.PCell. V&. V&) (TRACKED
        $
       ) (TYPE%vstd.cell.PointsTo. V&. V&)
     ))
     (= (vstd.cell.impl&%2.view.? V&. V& (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2.
          pt!
       )))
      ) (vstd.cell.PointsToData./PointsToData (%Poly%vstd.cell.CellId. (Poly%vstd.cell.CellId.
         (vstd.cell.impl&%3.id.? V&. V& (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. pt!))))
        )
       ) (%Poly%core!option.Option. (Poly%core!option.Option. (core!option.Option./Some v!)))
   ))))
   :pattern ((ens%vstd.cell.impl&%3.new. V&. V& v! pt!))
   :qid internal_ens__vstd.cell.impl&__3.new._definition
   :skolemid skolem_internal_ens__vstd.cell.impl&__3.new._definition
)))

;; Function-Specs crate::vstd::cell::PCell::put
(declare-fun req%vstd.cell.impl&%3.put. (Dcr Type Poly Poly Poly) Bool)
(declare-const %%global_location_label%%1 Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (pre%perm! Poly) (v! Poly)) (!
   (= (req%vstd.cell.impl&%3.put. V&. V& self! pre%perm! v!) (=>
     %%global_location_label%%1
     (= (vstd.cell.impl&%2.view.? V&. V& pre%perm!) (vstd.cell.PointsToData./PointsToData
       (%Poly%vstd.cell.CellId. (Poly%vstd.cell.CellId. (vstd.cell.impl&%3.id.? V&. V& self!)))
       (%Poly%core!option.Option. (Poly%core!option.Option. core!option.Option./None))
   ))))
   :pattern ((req%vstd.cell.impl&%3.put. V&. V& self! pre%perm! v!))
   :qid internal_req__vstd.cell.impl&__3.put._definition
   :skolemid skolem_internal_req__vstd.cell.impl&__3.put._definition
)))
(declare-fun ens%vstd.cell.impl&%3.put. (Dcr Type Poly Poly Poly Poly) Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (pre%perm! Poly) (perm! Poly) (v! Poly))
  (!
   (= (ens%vstd.cell.impl&%3.put. V&. V& self! pre%perm! perm! v!) (and
     (has_type perm! (TYPE%vstd.cell.PointsTo. V&. V&))
     (= (vstd.cell.impl&%2.view.? V&. V& perm!) (vstd.cell.PointsToData./PointsToData (%Poly%vstd.cell.CellId.
        (Poly%vstd.cell.CellId. (vstd.cell.impl&%3.id.? V&. V& self!))
       ) (%Poly%core!option.Option. (Poly%core!option.Option. (core!option.Option./Some v!)))
   ))))
   :pattern ((ens%vstd.cell.impl&%3.put. V&. V& self! pre%perm! perm! v!))
   :qid internal_ens__vstd.cell.impl&__3.put._definition
   :skolemid skolem_internal_ens__vstd.cell.impl&__3.put._definition
)))

;; Function-Specs crate::vstd::cell::PCell::take
(declare-fun req%vstd.cell.impl&%3.take. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%2 Bool)
(declare-const %%global_location_label%%3 Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (pre%perm! Poly)) (!
   (= (req%vstd.cell.impl&%3.take. V&. V& self! pre%perm!) (and
     (=>
      %%global_location_label%%2
      (= (vstd.cell.impl&%3.id.? V&. V& self!) (vstd.cell.PointsToData./PointsToData/pcell
        (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData. (vstd.cell.impl&%2.view.?
           V&. V& pre%perm!
     ))))))
     (=>
      %%global_location_label%%3
      (is-core!option.Option./Some (vstd.cell.PointsToData./PointsToData/value (%Poly%vstd.cell.PointsToData.
         (Poly%vstd.cell.PointsToData. (vstd.cell.impl&%2.view.? V&. V& pre%perm!))
   ))))))
   :pattern ((req%vstd.cell.impl&%3.take. V&. V& self! pre%perm!))
   :qid internal_req__vstd.cell.impl&__3.take._definition
   :skolemid skolem_internal_req__vstd.cell.impl&__3.take._definition
)))
(declare-fun ens%vstd.cell.impl&%3.take. (Dcr Type Poly Poly Poly Poly) Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (pre%perm! Poly) (perm! Poly) (v! Poly))
  (!
   (= (ens%vstd.cell.impl&%3.take. V&. V& self! pre%perm! perm! v!) (and
     (has_type v! V&)
     (has_type perm! (TYPE%vstd.cell.PointsTo. V&. V&))
     (= (vstd.cell.PointsToData./PointsToData/pcell (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData.
         (vstd.cell.impl&%2.view.? V&. V& perm!)
       ))
      ) (vstd.cell.PointsToData./PointsToData/pcell (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData.
         (vstd.cell.impl&%2.view.? V&. V& pre%perm!)
     ))))
     (= (vstd.cell.PointsToData./PointsToData/value (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData.
         (vstd.cell.impl&%2.view.? V&. V& perm!)
       ))
      ) core!option.Option./None
     )
     (= v! (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
         (vstd.cell.PointsToData./PointsToData/value (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData.
            (vstd.cell.impl&%2.view.? V&. V& pre%perm!)
   )))))))))
   :pattern ((ens%vstd.cell.impl&%3.take. V&. V& self! pre%perm! perm! v!))
   :qid internal_ens__vstd.cell.impl&__3.take._definition
   :skolemid skolem_internal_ens__vstd.cell.impl&__3.take._definition
)))

;; Function-Specs crate::vstd::cell::PCell::replace
(declare-fun req%vstd.cell.impl&%3.replace. (Dcr Type Poly Poly Poly) Bool)
(declare-const %%global_location_label%%4 Bool)
(declare-const %%global_location_label%%5 Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (pre%perm! Poly) (in_v! Poly)) (!
   (= (req%vstd.cell.impl&%3.replace. V&. V& self! pre%perm! in_v!) (and
     (=>
      %%global_location_label%%4
      (= (vstd.cell.impl&%3.id.? V&. V& self!) (vstd.cell.PointsToData./PointsToData/pcell
        (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData. (vstd.cell.impl&%2.view.?
           V&. V& pre%perm!
     ))))))
     (=>
      %%global_location_label%%5
      (is-core!option.Option./Some (vstd.cell.PointsToData./PointsToData/value (%Poly%vstd.cell.PointsToData.
         (Poly%vstd.cell.PointsToData. (vstd.cell.impl&%2.view.? V&. V& pre%perm!))
   ))))))
   :pattern ((req%vstd.cell.impl&%3.replace. V&. V& self! pre%perm! in_v!))
   :qid internal_req__vstd.cell.impl&__3.replace._definition
   :skolemid skolem_internal_req__vstd.cell.impl&__3.replace._definition
)))
(declare-fun ens%vstd.cell.impl&%3.replace. (Dcr Type Poly Poly Poly Poly Poly) Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (pre%perm! Poly) (perm! Poly) (in_v! Poly)
   (out_v! Poly)
  ) (!
   (= (ens%vstd.cell.impl&%3.replace. V&. V& self! pre%perm! perm! in_v! out_v!) (and
     (has_type out_v! V&)
     (has_type perm! (TYPE%vstd.cell.PointsTo. V&. V&))
     (= (vstd.cell.PointsToData./PointsToData/pcell (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData.
         (vstd.cell.impl&%2.view.? V&. V& perm!)
       ))
      ) (vstd.cell.PointsToData./PointsToData/pcell (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData.
         (vstd.cell.impl&%2.view.? V&. V& pre%perm!)
     ))))
     (= (vstd.cell.PointsToData./PointsToData/value (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData.
         (vstd.cell.impl&%2.view.? V&. V& perm!)
       ))
      ) (core!option.Option./Some in_v!)
     )
     (= out_v! (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
         (vstd.cell.PointsToData./PointsToData/value (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData.
            (vstd.cell.impl&%2.view.? V&. V& pre%perm!)
   )))))))))
   :pattern ((ens%vstd.cell.impl&%3.replace. V&. V& self! pre%perm! perm! in_v! out_v!))
   :qid internal_ens__vstd.cell.impl&__3.replace._definition
   :skolemid skolem_internal_ens__vstd.cell.impl&__3.replace._definition
)))

;; Function-Specs crate::vstd::cell::PCell::borrow
(declare-fun req%vstd.cell.impl&%3.borrow. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%6 Bool)
(declare-const %%global_location_label%%7 Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (perm! Poly)) (!
   (= (req%vstd.cell.impl&%3.borrow. V&. V& self! perm!) (and
     (=>
      %%global_location_label%%6
      (= (vstd.cell.impl&%3.id.? V&. V& self!) (vstd.cell.PointsToData./PointsToData/pcell
        (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData. (vstd.cell.impl&%2.view.?
           V&. V& perm!
     ))))))
     (=>
      %%global_location_label%%7
      (is-core!option.Option./Some (vstd.cell.PointsToData./PointsToData/value (%Poly%vstd.cell.PointsToData.
         (Poly%vstd.cell.PointsToData. (vstd.cell.impl&%2.view.? V&. V& perm!))
   ))))))
   :pattern ((req%vstd.cell.impl&%3.borrow. V&. V& self! perm!))
   :qid internal_req__vstd.cell.impl&__3.borrow._definition
   :skolemid skolem_internal_req__vstd.cell.impl&__3.borrow._definition
)))
(declare-fun ens%vstd.cell.impl&%3.borrow. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (perm! Poly) (v! Poly)) (!
   (= (ens%vstd.cell.impl&%3.borrow. V&. V& self! perm! v!) (and
     (has_type v! V&)
     (= v! (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
         (vstd.cell.PointsToData./PointsToData/value (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData.
            (vstd.cell.impl&%2.view.? V&. V& perm!)
   )))))))))
   :pattern ((ens%vstd.cell.impl&%3.borrow. V&. V& self! perm! v!))
   :qid internal_ens__vstd.cell.impl&__3.borrow._definition
   :skolemid skolem_internal_ens__vstd.cell.impl&__3.borrow._definition
)))

;; Function-Specs crate::vstd::cell::PCell::write
(declare-fun req%vstd.cell.impl&%4.write. (Dcr Type Poly Poly Poly) Bool)
(declare-const %%global_location_label%%8 Bool)
(declare-const %%global_location_label%%9 Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (pre%perm! Poly) (in_v! Poly)) (!
   (= (req%vstd.cell.impl&%4.write. V&. V& self! pre%perm! in_v!) (and
     (=>
      %%global_location_label%%8
      (= (vstd.cell.impl&%3.id.? V&. V& self!) (vstd.cell.PointsToData./PointsToData/pcell
        (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData. (vstd.cell.impl&%2.view.?
           V&. V& pre%perm!
     ))))))
     (=>
      %%global_location_label%%9
      (is-core!option.Option./Some (vstd.cell.PointsToData./PointsToData/value (%Poly%vstd.cell.PointsToData.
         (Poly%vstd.cell.PointsToData. (vstd.cell.impl&%2.view.? V&. V& pre%perm!))
   ))))))
   :pattern ((req%vstd.cell.impl&%4.write. V&. V& self! pre%perm! in_v!))
   :qid internal_req__vstd.cell.impl&__4.write._definition
   :skolemid skolem_internal_req__vstd.cell.impl&__4.write._definition
)))
(declare-fun ens%vstd.cell.impl&%4.write. (Dcr Type Poly Poly Poly Poly) Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (pre%perm! Poly) (perm! Poly) (in_v! Poly))
  (!
   (= (ens%vstd.cell.impl&%4.write. V&. V& self! pre%perm! perm! in_v!) (and
     (has_type perm! (TYPE%vstd.cell.PointsTo. V&. V&))
     (= (vstd.cell.PointsToData./PointsToData/pcell (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData.
         (vstd.cell.impl&%2.view.? V&. V& perm!)
       ))
      ) (vstd.cell.PointsToData./PointsToData/pcell (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData.
         (vstd.cell.impl&%2.view.? V&. V& pre%perm!)
     ))))
     (= (vstd.cell.PointsToData./PointsToData/value (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData.
         (vstd.cell.impl&%2.view.? V&. V& perm!)
       ))
      ) (core!option.Option./Some in_v!)
   )))
   :pattern ((ens%vstd.cell.impl&%4.write. V&. V& self! pre%perm! perm! in_v!))
   :qid internal_ens__vstd.cell.impl&__4.write._definition
   :skolemid skolem_internal_ens__vstd.cell.impl&__4.write._definition
)))

;; Function-Axioms crate::vstd::invariant::LocalInvariant::constant
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly))
  (!
   (=>
    (has_type self! (TYPE%vstd.invariant.LocalInvariant. K&. K& V&. V& Pred&. Pred&))
    (has_type (vstd.invariant.impl&%1.constant.? K&. K& V&. V& Pred&. Pred& self!) K&)
   )
   :pattern ((vstd.invariant.impl&%1.constant.? K&. K& V&. V& Pred&. Pred& self!))
   :qid internal_vstd.invariant.impl&__1.constant.?_pre_post_definition
   :skolemid skolem_internal_vstd.invariant.impl&__1.constant.?_pre_post_definition
)))

;; Function-Specs crate::vstd::invariant::LocalInvariant::new
(declare-fun req%vstd.invariant.impl&%1.new. (Dcr Type Dcr Type Dcr Type Poly Poly
  Int
 ) Bool
)
(declare-const %%global_location_label%%10 Bool)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (v! Poly) (ns! Int)
  ) (!
   (= (req%vstd.invariant.impl&%1.new. K&. K& V&. V& Pred&. Pred& k! v! ns!) (=>
     %%global_location_label%%10
     (%B (vstd.invariant.InvariantPredicate.inv.? Pred&. Pred& K&. K& V&. V& k! v!))
   ))
   :pattern ((req%vstd.invariant.impl&%1.new. K&. K& V&. V& Pred&. Pred& k! v! ns!))
   :qid internal_req__vstd.invariant.impl&__1.new._definition
   :skolemid skolem_internal_req__vstd.invariant.impl&__1.new._definition
)))
(declare-fun ens%vstd.invariant.impl&%1.new. (Dcr Type Dcr Type Dcr Type Poly Poly
  Int Poly
 ) Bool
)
(assert
 (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (k! Poly)
   (v! Poly) (ns! Int) (i! Poly)
  ) (!
   (= (ens%vstd.invariant.impl&%1.new. K&. K& V&. V& Pred&. Pred& k! v! ns! i!) (and
     (has_type i! (TYPE%vstd.invariant.LocalInvariant. K&. K& V&. V& Pred&. Pred&))
     (= (vstd.invariant.impl&%1.constant.? K&. K& V&. V& Pred&. Pred& i!) k!)
     (= (vstd!invariant.LocalInvariant.namespace.? K&. K& V&. V& Pred&. Pred& i!) ns!)
   ))
   :pattern ((ens%vstd.invariant.impl&%1.new. K&. K& V&. V& Pred&. Pred& k! v! ns! i!))
   :qid internal_ens__vstd.invariant.impl&__1.new._definition
   :skolemid skolem_internal_ens__vstd.invariant.impl&__1.new._definition
)))

;; Function-Axioms vstd::invariant::LocalInvariant::inv
(assert
 (fuel_bool_default fuel%vstd!invariant.LocalInvariant.inv.)
)
(assert
 (=>
  (fuel_bool fuel%vstd!invariant.LocalInvariant.inv.)
  (forall ((K&. Dcr) (K& Type) (V&. Dcr) (V& Type) (Pred&. Dcr) (Pred& Type) (self! Poly)
    (v! Poly)
   ) (!
    (= (vstd!invariant.LocalInvariant.inv.? K&. K& V&. V& Pred&. Pred& self! v!) (%B (vstd.invariant.InvariantPredicate.inv.?
       Pred&. Pred& K&. K& V&. V& (vstd.invariant.impl&%1.constant.? K&. K& V&. V& Pred&.
        Pred& self!
       ) v!
    )))
    :pattern ((vstd!invariant.LocalInvariant.inv.? K&. K& V&. V& Pred&. Pred& self! v!))
    :qid internal_vstd!invariant.LocalInvariant.inv.?_definition
    :skolemid skolem_internal_vstd!invariant.LocalInvariant.inv.?_definition
))))

;; Function-Axioms crate::vstd::cell::PointsTo::id
(assert
 (fuel_bool_default fuel%vstd.cell.impl&%2.id.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.cell.impl&%2.id.)
  (forall ((V&. Dcr) (V& Type) (self! Poly)) (!
    (= (vstd.cell.impl&%2.id.? V&. V& self!) (vstd.cell.PointsToData./PointsToData/pcell
      (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData. (vstd.cell.impl&%2.view.?
         V&. V& self!
    )))))
    :pattern ((vstd.cell.impl&%2.id.? V&. V& self!))
    :qid internal_vstd.cell.impl&__2.id.?_definition
    :skolemid skolem_internal_vstd.cell.impl&__2.id.?_definition
))))

;; Function-Axioms crate::vstd::cell::PointsTo::opt_value
(assert
 (fuel_bool_default fuel%vstd.cell.impl&%2.opt_value.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.cell.impl&%2.opt_value.)
  (forall ((V&. Dcr) (V& Type) (self! Poly)) (!
    (= (vstd.cell.impl&%2.opt_value.? V&. V& self!) (vstd.cell.PointsToData./PointsToData/value
      (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData. (vstd.cell.impl&%2.view.?
         V&. V& self!
    )))))
    :pattern ((vstd.cell.impl&%2.opt_value.? V&. V& self!))
    :qid internal_vstd.cell.impl&__2.opt_value.?_definition
    :skolemid skolem_internal_vstd.cell.impl&__2.opt_value.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.cell.PointsTo. V&. V&))
    (has_type (Poly%core!option.Option. (vstd.cell.impl&%2.opt_value.? V&. V& self!))
     (TYPE%core!option.Option. V&. V&)
   ))
   :pattern ((vstd.cell.impl&%2.opt_value.? V&. V& self!))
   :qid internal_vstd.cell.impl&__2.opt_value.?_pre_post_definition
   :skolemid skolem_internal_vstd.cell.impl&__2.opt_value.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::cell::PointsTo::is_init
(assert
 (fuel_bool_default fuel%vstd.cell.impl&%2.is_init.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.cell.impl&%2.is_init.)
  (forall ((V&. Dcr) (V& Type) (self! Poly)) (!
    (= (vstd.cell.impl&%2.is_init.? V&. V& self!) (is-core!option.Option./Some (vstd.cell.PointsToData./PointsToData/value
       (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData. (vstd.cell.impl&%2.view.?
          V&. V& self!
    ))))))
    :pattern ((vstd.cell.impl&%2.is_init.? V&. V& self!))
    :qid internal_vstd.cell.impl&__2.is_init.?_definition
    :skolemid skolem_internal_vstd.cell.impl&__2.is_init.?_definition
))))

;; Function-Axioms crate::vstd::cell::PointsTo::is_uninit
(assert
 (fuel_bool_default fuel%vstd.cell.impl&%2.is_uninit.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.cell.impl&%2.is_uninit.)
  (forall ((V&. Dcr) (V& Type) (self! Poly)) (!
    (= (vstd.cell.impl&%2.is_uninit.? V&. V& self!) (is-core!option.Option./None (vstd.cell.PointsToData./PointsToData/value
       (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData. (vstd.cell.impl&%2.view.?
          V&. V& self!
    ))))))
    :pattern ((vstd.cell.impl&%2.is_uninit.? V&. V& self!))
    :qid internal_vstd.cell.impl&__2.is_uninit.?_definition
    :skolemid skolem_internal_vstd.cell.impl&__2.is_uninit.?_definition
))))

;; Function-Axioms crate::vstd::cell::PointsTo::value
(assert
 (fuel_bool_default fuel%vstd.cell.impl&%2.value.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.cell.impl&%2.value.)
  (forall ((V&. Dcr) (V& Type) (self! Poly)) (!
    (= (vstd.cell.impl&%2.value.? V&. V& self!) (core!option.Option./Some/0 (%Poly%core!option.Option.
       (Poly%core!option.Option. (vstd.cell.PointsToData./PointsToData/value (%Poly%vstd.cell.PointsToData.
          (Poly%vstd.cell.PointsToData. (vstd.cell.impl&%2.view.? V&. V& self!))
    ))))))
    :pattern ((vstd.cell.impl&%2.value.? V&. V& self!))
    :qid internal_vstd.cell.impl&__2.value.?_definition
    :skolemid skolem_internal_vstd.cell.impl&__2.value.?_definition
))))
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly)) (!
   (=>
    (has_type self! (TYPE%vstd.cell.PointsTo. V&. V&))
    (has_type (vstd.cell.impl&%2.value.? V&. V& self!) V&)
   )
   :pattern ((vstd.cell.impl&%2.value.? V&. V& self!))
   :qid internal_vstd.cell.impl&__2.value.?_pre_post_definition
   :skolemid skolem_internal_vstd.cell.impl&__2.value.?_pre_post_definition
)))

;; Function-Axioms crate::vstd::cell::InvCellPred::inv
(assert
 (fuel_bool_default fuel%vstd.cell.impl&%5.inv.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.cell.impl&%5.inv.)
  (forall ((T&. Dcr) (T& Type) (k! Poly) (perm! Poly)) (!
    (= (vstd.invariant.InvariantPredicate.inv.? $ TYPE%vstd.cell.InvCellPred. $ (TYPE%tuple%2.
       $ (TYPE%vstd.set.Set. T&. T&) $ (TYPE%vstd.cell.PCell. T&. T&)
      ) $ (TYPE%vstd.cell.PointsTo. T&. T&) k! perm!
     ) (B (let
       ((possible_values$ (tuple%2./tuple%2/0 (%Poly%tuple%2. k!))))
       (let
        ((pcell$ (tuple%2./tuple%2/1 (%Poly%tuple%2. k!))))
        (and
         (and
          (is-core!option.Option./Some (vstd.cell.PointsToData./PointsToData/value (%Poly%vstd.cell.PointsToData.
             (Poly%vstd.cell.PointsToData. (vstd.cell.impl&%2.view.? T&. T& perm!))
          )))
          (vstd.set.impl&%0.contains.? T&. T& possible_values$ (core!option.Option./Some/0 (%Poly%core!option.Option.
             (Poly%core!option.Option. (vstd.cell.PointsToData./PointsToData/value (%Poly%vstd.cell.PointsToData.
                (Poly%vstd.cell.PointsToData. (vstd.cell.impl&%2.view.? T&. T& perm!))
         )))))))
         (= (vstd.cell.impl&%3.id.? T&. T& pcell$) (vstd.cell.PointsToData./PointsToData/pcell
           (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData. (vstd.cell.impl&%2.view.?
              T&. T& perm!
    ))))))))))
    :pattern ((vstd.invariant.InvariantPredicate.inv.? $ TYPE%vstd.cell.InvCellPred. $
      (TYPE%tuple%2. $ (TYPE%vstd.set.Set. T&. T&) $ (TYPE%vstd.cell.PCell. T&. T&)) $
      (TYPE%vstd.cell.PointsTo. T&. T&) k! perm!
    ))
    :qid internal_vstd.invariant.InvariantPredicate.inv.?_definition
    :skolemid skolem_internal_vstd.invariant.InvariantPredicate.inv.?_definition
))))

;; Trait-Impl-Axiom
(assert
 (forall ((T&. Dcr) (T& Type)) (!
   (tr_bound%vstd.invariant.InvariantPredicate. $ TYPE%vstd.cell.InvCellPred. $ (TYPE%tuple%2.
     $ (TYPE%vstd.set.Set. T&. T&) $ (TYPE%vstd.cell.PCell. T&. T&)
    ) $ (TYPE%vstd.cell.PointsTo. T&. T&)
   )
   :pattern ((tr_bound%vstd.invariant.InvariantPredicate. $ TYPE%vstd.cell.InvCellPred.
     $ (TYPE%tuple%2. $ (TYPE%vstd.set.Set. T&. T&) $ (TYPE%vstd.cell.PCell. T&. T&))
     $ (TYPE%vstd.cell.PointsTo. T&. T&)
   ))
   :qid internal_crate__vstd__cell__impl&__5_trait_impl_definition
   :skolemid skolem_internal_crate__vstd__cell__impl&__5_trait_impl_definition
)))

;; Function-Axioms crate::vstd::cell::InvCell::wf
(assert
 (fuel_bool_default fuel%vstd.cell.impl&%6.wf.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.cell.impl&%6.wf.)
  (forall ((T&. Dcr) (T& Type) (self! Poly)) (!
    (= (vstd.cell.impl&%6.wf.? T&. T& self!) (= (%Poly%tuple%2. (vstd.invariant.impl&%1.constant.?
        $ (TYPE%tuple%2. $ (TYPE%vstd.set.Set. T&. T&) $ (TYPE%vstd.cell.PCell. T&. T&))
        $ (TYPE%vstd.cell.PointsTo. T&. T&) $ TYPE%vstd.cell.InvCellPred. (vstd.cell.InvCell./InvCell/perm_inv
         (%Poly%vstd.cell.InvCell. self!)
       ))
      ) (tuple%2./tuple%2 (vstd.cell.InvCell./InvCell/possible_values (%Poly%vstd.cell.InvCell.
         self!
        )
       ) (vstd.cell.InvCell./InvCell/pcell (%Poly%vstd.cell.InvCell. self!))
    )))
    :pattern ((vstd.cell.impl&%6.wf.? T&. T& self!))
    :qid internal_vstd.cell.impl&__6.wf.?_definition
    :skolemid skolem_internal_vstd.cell.impl&__6.wf.?_definition
))))

;; Function-Axioms crate::vstd::cell::InvCell::inv
(assert
 (fuel_bool_default fuel%vstd.cell.impl&%6.inv.)
)
(assert
 (=>
  (fuel_bool fuel%vstd.cell.impl&%6.inv.)
  (forall ((T&. Dcr) (T& Type) (self! Poly) (val! Poly)) (!
    (= (vstd.cell.impl&%6.inv.? T&. T& self! val!) (vstd.set.impl&%0.contains.? T&. T&
      (vstd.cell.InvCell./InvCell/possible_values (%Poly%vstd.cell.InvCell. self!)) val!
    ))
    :pattern ((vstd.cell.impl&%6.inv.? T&. T& self! val!))
    :qid internal_vstd.cell.impl&__6.inv.?_definition
    :skolemid skolem_internal_vstd.cell.impl&__6.inv.?_definition
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

;; Function-Specs crate::vstd::cell::PCell::into_inner
(declare-fun req%vstd.cell.impl&%3.into_inner. (Dcr Type Poly Poly) Bool)
(declare-const %%global_location_label%%11 Bool)
(declare-const %%global_location_label%%12 Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (perm! Poly)) (!
   (= (req%vstd.cell.impl&%3.into_inner. V&. V& self! perm!) (and
     (=>
      %%global_location_label%%11
      (= (vstd.cell.impl&%3.id.? V&. V& self!) (vstd.cell.PointsToData./PointsToData/pcell
        (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData. (vstd.cell.impl&%2.view.?
           V&. V& perm!
     ))))))
     (=>
      %%global_location_label%%12
      (is-core!option.Option./Some (vstd.cell.PointsToData./PointsToData/value (%Poly%vstd.cell.PointsToData.
         (Poly%vstd.cell.PointsToData. (vstd.cell.impl&%2.view.? V&. V& perm!))
   ))))))
   :pattern ((req%vstd.cell.impl&%3.into_inner. V&. V& self! perm!))
   :qid internal_req__vstd.cell.impl&__3.into_inner._definition
   :skolemid skolem_internal_req__vstd.cell.impl&__3.into_inner._definition
)))
(declare-fun ens%vstd.cell.impl&%3.into_inner. (Dcr Type Poly Poly Poly) Bool)
(assert
 (forall ((V&. Dcr) (V& Type) (self! Poly) (perm! Poly) (v! Poly)) (!
   (= (ens%vstd.cell.impl&%3.into_inner. V&. V& self! perm! v!) (and
     (has_type v! V&)
     (= v! (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
         (vstd.cell.PointsToData./PointsToData/value (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData.
            (vstd.cell.impl&%2.view.? V&. V& perm!)
   )))))))))
   :pattern ((ens%vstd.cell.impl&%3.into_inner. V&. V& self! perm! v!))
   :qid internal_ens__vstd.cell.impl&__3.into_inner._definition
   :skolemid skolem_internal_ens__vstd.cell.impl&__3.into_inner._definition
)))

;; Function-Def crate::vstd::cell::PCell::into_inner
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/cell.rs:249:5: 249:74 (#0)
(get-info :all-statistics)
(push)
 (declare-const V&. Dcr)
 (declare-const V& Type)
 (declare-const v! Poly)
 (declare-const self! Poly)
 (declare-const perm! Poly)
 (declare-const verus_tmp_perm@0 Poly)
 (declare-const tmp%1 Poly)
 (declare-const verus_tmp@ Poly)
 (declare-const perm@0 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type self! (TYPE%vstd.cell.PCell. V&. V&))
 )
 (assert
  (has_type perm! (TYPE%vstd.cell.PointsTo. V&. V&))
 )
 (assert
  (= (vstd.cell.impl&%3.id.? V&. V& self!) (vstd.cell.PointsToData./PointsToData/pcell
    (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData. (vstd.cell.impl&%2.view.?
       V&. V& perm!
 ))))))
 (assert
  (is-core!option.Option./Some (vstd.cell.PointsToData./PointsToData/value (%Poly%vstd.cell.PointsToData.
     (Poly%vstd.cell.PointsToData. (vstd.cell.impl&%2.view.? V&. V& perm!))
 ))))
 (declare-const perm@1 Poly)
 (declare-const perm@2 Poly)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%1 Bool)
 (assert
  (not (=>
    (= verus_tmp@ perm!)
    (=>
     (= verus_tmp_perm@0 verus_tmp@)
     (=>
      (= perm@1 verus_tmp_perm@0)
      (and
       (=>
        %%location_label%%0
        (req%vstd.cell.impl&%3.take. V&. V& self! perm@1)
       )
       (=>
        (has_type perm@2 (TYPE%vstd.cell.PointsTo. V&. V&))
        (=>
         (ens%vstd.cell.impl&%3.take. V&. V& self! perm@1 perm@2 tmp%1)
         (=>
          (= v! tmp%1)
          (=>
           %%location_label%%1
           (= v! (core!option.Option./Some/0 (%Poly%core!option.Option. (Poly%core!option.Option.
               (vstd.cell.PointsToData./PointsToData/value (%Poly%vstd.cell.PointsToData. (Poly%vstd.cell.PointsToData.
                  (vstd.cell.impl&%2.view.? V&. V& perm!)
 )))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::cell::InvCell::new
(declare-fun req%vstd.cell.impl&%6.new. (Dcr Type Poly %%Function%%) Bool)
(declare-const %%global_location_label%%13 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (val! Poly) (f! %%Function%%)) (!
   (= (req%vstd.cell.impl&%6.new. T&. T& val! f!) (=>
     %%global_location_label%%13
     (%B (%%apply%%0 f! val!))
   ))
   :pattern ((req%vstd.cell.impl&%6.new. T&. T& val! f!))
   :qid internal_req__vstd.cell.impl&__6.new._definition
   :skolemid skolem_internal_req__vstd.cell.impl&__6.new._definition
)))
(declare-fun ens%vstd.cell.impl&%6.new. (Dcr Type Poly %%Function%% vstd.cell.InvCell.)
 Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (val! Poly) (f! %%Function%%) (cell! vstd.cell.InvCell.))
  (!
   (= (ens%vstd.cell.impl&%6.new. T&. T& val! f! cell!) (and
     (has_type (Poly%vstd.cell.InvCell. cell!) (TYPE%vstd.cell.InvCell. T&. T&))
     (forall ((v$ Poly)) (!
       (=>
        (has_type v$ T&)
        (= (%B (%%apply%%0 f! v$)) (vstd.cell.impl&%6.inv.? T&. T& (Poly%vstd.cell.InvCell.
           cell!
          ) v$
       )))
       :pattern ((vstd.cell.impl&%6.inv.? T&. T& (Poly%vstd.cell.InvCell. cell!) v$))
       :qid user_crate__vstd__cell__InvCell__new_4
       :skolemid skolem_user_crate__vstd__cell__InvCell__new_4
   ))))
   :pattern ((ens%vstd.cell.impl&%6.new. T&. T& val! f! cell!))
   :qid internal_ens__vstd.cell.impl&__6.new._definition
   :skolemid skolem_internal_ens__vstd.cell.impl&__6.new._definition
)))

;; Function-Def crate::vstd::cell::InvCell::new
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/cell.rs:321:5: 321:75 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const cell! vstd.cell.InvCell.)
 (declare-const val! Poly)
 (declare-const f! %%Function%%)
 (declare-const verus_tmp_possible_values@ Poly)
 (declare-const tmp%1 tuple%2.)
 (declare-const verus_tmp_perm_inv@ Poly)
 (declare-const tmp%2 vstd.cell.InvCell.)
 (declare-const tmp%3 Bool)
 (declare-const tmp%%@ tuple%2.)
 (declare-const pcell@ Poly)
 (declare-const verus_tmp_perm@ Poly)
 (declare-const perm@0 Poly)
 (declare-const verus_tmp@0 Poly)
 (declare-const possible_values@0 Poly)
 (declare-const verus_tmp$1@ Poly)
 (declare-const perm_inv@0 Poly)
 (assert
  fuel_defaults
 )
 (assert
  (has_type val! T&)
 )
 (assert
  (has_type (Poly%fun%1. f!) (TYPE%fun%1. T&. T& $ BOOL))
 )
 (assert
  (%B (%%apply%%0 f! val!))
 )
 (declare-const perm@1 Poly)
 (declare-const verus_tmp@1 Poly)
 (declare-const possible_values@1 Poly)
 (declare-const perm_inv@1 Poly)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; constructed value may fail to meet its declared type invariant
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (ens%vstd.cell.impl&%3.new. T&. T& val! tmp%%@)
    (=>
     (= pcell@ (tuple%2./tuple%2/0 (%Poly%tuple%2. (Poly%tuple%2. tmp%%@))))
     (=>
      (= verus_tmp_perm@ (tuple%2./tuple%2/1 (%Poly%tuple%2. (Poly%tuple%2. tmp%%@))))
      (=>
       (= perm@1 verus_tmp_perm@)
       (=>
        (= verus_tmp@1 (vstd.set.impl&%0.new.? T&. T& $ (TYPE%fun%1. T&. T& $ BOOL) (Poly%fun%1.
           f!
        )))
        (=>
         (= verus_tmp_possible_values@ verus_tmp@1)
         (=>
          (= possible_values@1 verus_tmp_possible_values@)
          (=>
           (= tmp%1 (tuple%2./tuple%2 possible_values@1 pcell@))
           (and
            (=>
             %%location_label%%0
             (req%vstd.invariant.impl&%1.new. $ (TYPE%tuple%2. $ (TYPE%vstd.set.Set. T&. T&) $ (
                TYPE%vstd.cell.PCell. T&. T&
               )
              ) $ (TYPE%vstd.cell.PointsTo. T&. T&) $ TYPE%vstd.cell.InvCellPred. (Poly%tuple%2.
               tmp%1
              ) perm@1 0
            ))
            (=>
             (ens%vstd.invariant.impl&%1.new. $ (TYPE%tuple%2. $ (TYPE%vstd.set.Set. T&. T&) $ (
                TYPE%vstd.cell.PCell. T&. T&
               )
              ) $ (TYPE%vstd.cell.PointsTo. T&. T&) $ TYPE%vstd.cell.InvCellPred. (Poly%tuple%2.
               tmp%1
              ) perm@1 0 verus_tmp$1@
             )
             (=>
              (= verus_tmp_perm_inv@ verus_tmp$1@)
              (=>
               (= perm_inv@1 verus_tmp_perm_inv@)
               (=>
                (= tmp%2 (vstd.cell.InvCell./InvCell possible_values@1 pcell@ perm_inv@1))
                (=>
                 (= tmp%3 (vstd.cell.impl&%6.wf.? T&. T& (Poly%vstd.cell.InvCell. tmp%2)))
                 (and
                  (=>
                   %%location_label%%1
                   tmp%3
                  )
                  (=>
                   tmp%3
                   (=>
                    (= cell! tmp%2)
                    (=>
                     %%location_label%%2
                     (forall ((v$ Poly)) (!
                       (=>
                        (has_type v$ T&)
                        (= (%B (%%apply%%0 f! v$)) (vstd.cell.impl&%6.inv.? T&. T& (Poly%vstd.cell.InvCell.
                           cell!
                          ) v$
                       )))
                       :pattern ((vstd.cell.impl&%6.inv.? T&. T& (Poly%vstd.cell.InvCell. cell!) v$))
                       :qid user_crate__vstd__cell__InvCell__new_5
                       :skolemid skolem_user_crate__vstd__cell__InvCell__new_5
 ))))))))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::cell::InvCell::replace
(declare-fun req%vstd.cell.impl&%7.replace. (Dcr Type vstd.cell.InvCell. Poly) Bool)
(declare-const %%global_location_label%%14 Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (self! vstd.cell.InvCell.) (val! Poly)) (!
   (= (req%vstd.cell.impl&%7.replace. T&. T& self! val!) (=>
     %%global_location_label%%14
     (vstd.cell.impl&%6.inv.? T&. T& (Poly%vstd.cell.InvCell. self!) val!)
   ))
   :pattern ((req%vstd.cell.impl&%7.replace. T&. T& self! val!))
   :qid internal_req__vstd.cell.impl&__7.replace._definition
   :skolemid skolem_internal_req__vstd.cell.impl&__7.replace._definition
)))
(declare-fun ens%vstd.cell.impl&%7.replace. (Dcr Type vstd.cell.InvCell. Poly Poly)
 Bool
)
(assert
 (forall ((T&. Dcr) (T& Type) (self! vstd.cell.InvCell.) (val! Poly) (old_val! Poly))
  (!
   (= (ens%vstd.cell.impl&%7.replace. T&. T& self! val! old_val!) (and
     (has_type old_val! T&)
     (vstd.cell.impl&%6.inv.? T&. T& (Poly%vstd.cell.InvCell. self!) old_val!)
   ))
   :pattern ((ens%vstd.cell.impl&%7.replace. T&. T& self! val! old_val!))
   :qid internal_ens__vstd.cell.impl&__7.replace._definition
   :skolemid skolem_internal_ens__vstd.cell.impl&__7.replace._definition
)))

;; Function-Def crate::vstd::cell::InvCell::replace
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/cell.rs:335:5: 335:49 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const old_val! Poly)
 (declare-const self! vstd.cell.InvCell.)
 (declare-const val! Poly)
 (declare-const tmp%1 vstd.cell.InvCell.)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Poly)
 (declare-const tmp%4@0 Poly)
 (declare-const perm~81@0 Poly)
 (declare-const tmp%5 Poly)
 (declare-const r@ Poly)
 (declare-const credit@ vstd.invariant.OpenInvariantCredit.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.cell.InvCell. self!) (TYPE%vstd.cell.InvCell. T&. T&))
 )
 (assert
  (has_type val! T&)
 )
 (assert
  (vstd.cell.impl&%6.inv.? T&. T& (Poly%vstd.cell.InvCell. self!) val!)
 )
 (declare-const perm~81@1 Poly)
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; Cannot show invariant holds at end of block
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (= tmp%1 self!)
    (=>
     (= tmp%2 (vstd.cell.impl&%6.wf.? T&. T& (Poly%vstd.cell.InvCell. tmp%1)))
     (=>
      tmp%2
      (=>
       (= tmp%3 (vstd.cell.InvCell./InvCell/perm_inv (%Poly%vstd.cell.InvCell. (Poly%vstd.cell.InvCell.
           self!
       ))))
       (=>
        (has_type tmp%4@0 (TYPE%vstd.cell.PointsTo. T&. T&))
        (=>
         (= perm~81@0 tmp%4@0)
         (=>
          (vstd!invariant.LocalInvariant.inv.? $ (TYPE%tuple%2. $ (TYPE%vstd.set.Set. T&. T&)
            $ (TYPE%vstd.cell.PCell. T&. T&)
           ) $ (TYPE%vstd.cell.PointsTo. T&. T&) $ TYPE%vstd.cell.InvCellPred. tmp%3 perm~81@0
          )
          (=>
           (= tmp%5 (vstd.cell.InvCell./InvCell/pcell (%Poly%vstd.cell.InvCell. (Poly%vstd.cell.InvCell.
               self!
           ))))
           (and
            (=>
             %%location_label%%0
             (req%vstd.cell.impl&%3.replace. T&. T& tmp%5 perm~81@0 val!)
            )
            (=>
             (has_type perm~81@1 (TYPE%vstd.cell.PointsTo. T&. T&))
             (=>
              (ens%vstd.cell.impl&%3.replace. T&. T& tmp%5 perm~81@0 perm~81@1 val! r@)
              (and
               (=>
                %%location_label%%1
                (vstd!invariant.LocalInvariant.inv.? $ (TYPE%tuple%2. $ (TYPE%vstd.set.Set. T&. T&)
                  $ (TYPE%vstd.cell.PCell. T&. T&)
                 ) $ (TYPE%vstd.cell.PointsTo. T&. T&) $ TYPE%vstd.cell.InvCellPred. tmp%3 perm~81@1
               ))
               (=>
                (= old_val! r@)
                (=>
                 %%location_label%%2
                 (vstd.cell.impl&%6.inv.? T&. T& (Poly%vstd.cell.InvCell. self!) old_val!)
 ))))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)

;; Function-Specs crate::vstd::cell::InvCell::get
(declare-fun ens%vstd.cell.impl&%8.get. (Dcr Type vstd.cell.InvCell. Poly) Bool)
(assert
 (forall ((T&. Dcr) (T& Type) (self! vstd.cell.InvCell.) (val! Poly)) (!
   (= (ens%vstd.cell.impl&%8.get. T&. T& self! val!) (and
     (has_type val! T&)
     (vstd.cell.impl&%6.inv.? T&. T& (Poly%vstd.cell.InvCell. self!) val!)
   ))
   :pattern ((ens%vstd.cell.impl&%8.get. T&. T& self! val!))
   :qid internal_ens__vstd.cell.impl&__8.get._definition
   :skolemid skolem_internal_ens__vstd.cell.impl&__8.get._definition
)))

;; Function-Def crate::vstd::cell::InvCell::get
;; /home/runner/work/smt-logs/smt-logs/verus/verus/source/target/release/test_inputs/basic-cf562145df495703-test_is_core/../../../../vstd/cell.rs:353:5: 353:33 (#0)
(get-info :all-statistics)
(push)
 (declare-const T&. Dcr)
 (declare-const T& Type)
 (declare-const val! Poly)
 (declare-const self! vstd.cell.InvCell.)
 (declare-const tmp%1 vstd.cell.InvCell.)
 (declare-const tmp%2 Bool)
 (declare-const tmp%3 Poly)
 (declare-const tmp%4@0 Poly)
 (declare-const perm~66@0 Poly)
 (declare-const tmp%5 Poly)
 (declare-const r@ Poly)
 (declare-const credit@ vstd.invariant.OpenInvariantCredit.)
 (assert
  fuel_defaults
 )
 (assert
  (has_type (Poly%vstd.cell.InvCell. self!) (TYPE%vstd.cell.InvCell. T&. T&))
 )
 ;; precondition not satisfied
 (declare-const %%location_label%%0 Bool)
 ;; Cannot show invariant holds at end of block
 (declare-const %%location_label%%1 Bool)
 ;; postcondition not satisfied
 (declare-const %%location_label%%2 Bool)
 (assert
  (not (=>
    (= tmp%1 self!)
    (=>
     (= tmp%2 (vstd.cell.impl&%6.wf.? T&. T& (Poly%vstd.cell.InvCell. tmp%1)))
     (=>
      tmp%2
      (=>
       (= tmp%3 (vstd.cell.InvCell./InvCell/perm_inv (%Poly%vstd.cell.InvCell. (Poly%vstd.cell.InvCell.
           self!
       ))))
       (=>
        (has_type tmp%4@0 (TYPE%vstd.cell.PointsTo. T&. T&))
        (=>
         (= perm~66@0 tmp%4@0)
         (=>
          (vstd!invariant.LocalInvariant.inv.? $ (TYPE%tuple%2. $ (TYPE%vstd.set.Set. T&. T&)
            $ (TYPE%vstd.cell.PCell. T&. T&)
           ) $ (TYPE%vstd.cell.PointsTo. T&. T&) $ TYPE%vstd.cell.InvCellPred. tmp%3 perm~66@0
          )
          (=>
           (= tmp%5 (vstd.cell.InvCell./InvCell/pcell (%Poly%vstd.cell.InvCell. (Poly%vstd.cell.InvCell.
               self!
           ))))
           (and
            (=>
             %%location_label%%0
             (req%vstd.cell.impl&%3.borrow. T&. T& tmp%5 perm~66@0)
            )
            (=>
             (ens%vstd.cell.impl&%3.borrow. T&. T& tmp%5 perm~66@0 r@)
             (and
              (=>
               %%location_label%%1
               (vstd!invariant.LocalInvariant.inv.? $ (TYPE%tuple%2. $ (TYPE%vstd.set.Set. T&. T&)
                 $ (TYPE%vstd.cell.PCell. T&. T&)
                ) $ (TYPE%vstd.cell.PointsTo. T&. T&) $ TYPE%vstd.cell.InvCellPred. tmp%3 perm~66@0
              ))
              (=>
               (= val! r@)
               (=>
                %%location_label%%2
                (vstd.cell.impl&%6.inv.? T&. T& (Poly%vstd.cell.InvCell. self!) val!)
 )))))))))))))))
 (get-info :version)
 (set-option :rlimit 30000000)
 (check-sat)
 (set-option :rlimit 0)
(pop)
